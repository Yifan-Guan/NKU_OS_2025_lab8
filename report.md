# ucore Lab8 实验报告

**课程**：操作系统原理与设计  
**实验名称**：实验8 文件系统  
**姓名**：  
**学号**：
**实验日期**：2026年1月3日  
**实验环境**：ucore（基于实验2~7完成）  

## 实验目标

1. 理解 ucore 中文件系统（SFS）的整体架构与实现原理
2. 完成简单文件系统（SFS）的读操作核心代码实现
3. 实现基于文件系统的用户程序加载与执行机制
4. 理解 UNIX 经典机制（管道、硬链接/软链接）的设计思路，并给出概要设计方案

## 练习1：完成读文件操作的实现

### 实现位置
`kern/fs/sfs/sfs_inode.c` 中的 `sfs_io_nolock()` 函数

### 设计思路
`sfs_io_nolock()` 是 SFS 文件系统读写操作的核心底层函数，负责处理任意偏移、任意长度的读/写请求。  
主要处理逻辑分为三段：

1. **头部非整块**（offset 不是块对齐）
2. **中间整块**（每次处理完整的一个 SFS_BLKSIZE 大小的块）
3. **尾部非整块**（最后剩余不足一块的字节）

关键处理：
- 使用 `sfs_bmap_load_nolock()` 将文件逻辑块号映射为磁盘物理块号
- 读操作：块未分配（ino==0）时返回全零填充
- 写操作：自动分配新块，并更新文件大小 `din->size`
- 写操作后标记 inode dirty 标志
- 函数在不持有 inode 锁的情况下完成（上层已加锁保护）

### 实现代码

```c
static int
sfs_io_nolock(struct sfs_fs *sfs, struct sfs_inode *sin, void *buf, off_t offset, size_t *alenp, bool write) {
    struct sfs_disk_inode *din = sin->din;
    assert(din->type != SFS_TYPE_DIR);

    off_t endpos = offset + *alenp;
    *alenp = 0;

    if (offset < 0 || offset >= SFS_MAX_FILE_SIZE || offset > endpos) {
        return -E_INVAL;
    }
    if (offset == endpos) {
        return 0;
    }

    if (!write) {
        if (offset >= din->size) {
            return 0;
        }
        if (endpos > din->size) {
            endpos = din->size;
        }
    } else {
        if (endpos > SFS_MAX_FILE_SIZE) {
            endpos = SFS_MAX_FILE_SIZE;
        }
    }

    // 1. 开头非整块部分
    off_t blkoff;
    if ((blkoff = offset % SFS_BLKSIZE) != 0) {
        size_t alen = MIN(SFS_BLKSIZE - blkoff, endpos - offset);
        uint32_t blkno = offset / SFS_BLKSIZE;
        uint32_t ino;
        int ret;

        if ((ret = sfs_bmap_load_nolock(sfs, sin, blkno, write, &ino)) != 0) {
            return ret;
        }

        if (write) {
            ret = sfs_wbuf(sfs, buf, alen, ino, blkoff);
        } else {
            if (ino != 0) {
                ret = sfs_rbuf(sfs, buf, alen, ino, blkoff);
            } else {
                ret = 0;
                memset(buf, 0, alen);
            }
        }
        if (ret != 0) return ret;

        *alenp += alen;
        offset += alen;
        buf = (char *)buf + alen;
        if (offset >= endpos) goto out;
    }

    // 2. 中间完整块部分
    while (offset + SFS_BLKSIZE <= endpos) {
        uint32_t blkno = offset / SFS_BLKSIZE;
        uint32_t ino;
        int ret;

        if ((ret = sfs_bmap_load_nolock(sfs, sin, blkno, write, &ino)) != 0) {
            return ret;
        }

        if (write) {
            ret = sfs_wblock(sfs, buf, ino, 1);
        } else {
            if (ino != 0) {
                ret = sfs_rblock(sfs, buf, ino, 1);
            } else {
                ret = 0;
                memset(buf, 0, SFS_BLKSIZE);
            }
        }
        if (ret != 0) return ret;

        *alenp += SFS_BLKSIZE;
        offset += SFS_BLKSIZE;
        buf = (char *)buf + SFS_BLKSIZE;
    }

    // 3. 结尾非整块部分
    if ((blkoff = endpos % SFS_BLKSIZE) != 0) {
        size_t alen = blkoff;
        uint32_t blkno = offset / SFS_BLKSIZE;
        uint32_t ino;
        int ret;

        if ((ret = sfs_bmap_load_nolock(sfs, sin, blkno, write, &ino)) != 0) {
            return ret;
        }

        if (write) {
            ret = sfs_wbuf(sfs, buf, alen, ino, 0);
        } else {
            if (ino != 0) {
                ret = sfs_rbuf(sfs, buf, alen, ino, 0);
            } else {
                ret = 0;
                memset(buf, 0, alen);
            }
        }
        if (ret != 0) return ret;

        *alenp += alen;
    }

out:
    if (write && offset > din->size) {
        din->size = offset;
        sin->dirty = true;
    }

    return 0;
}
```

## 练习2：完成基于文件系统的执行程序机制的实现

### 实现位置
`kern/process/proc.c` 中的 `load_icode()` 函数（主要改写部分）

### 设计思路

- **原版**：从内存加载二进制程序
- **本实验**：改为从文件系统读取 ELF 可执行文件
- **主要流程**：
    1. 使用 `vfs_open()` 打开可执行文件
    2. 读取并校验 ELF 头部
    3. 遍历 Program Header，加载 PT_LOAD 段到用户虚拟地址空间
    4. 建立对应 vma 映射
    5. 将文件内容读入虚拟内存
    6. 设置用户栈、参数、入口点、当前工作目录等

### 实现代码（核心片段）

```c
// 打开可执行文件
int ret = -E_NO_MEM;
struct file *file = NULL;
if ((ret = vfs_open(name, &file)) != 0) {
    goto bad_file;
}

// 读取ELF头部
struct elfhdr elf;
memset(&elf, 0, sizeof(elf));
size_t alen = sizeof(elf);
if ((ret = vop_read(file->node, &elf, alen, 0, &alen)) != 0 || alen != sizeof(elf)) {
    goto bad_elf;
}
// 验证ELF魔术数、架构等
if (elf.e_magic != ELF_MAGIC) {
    ret = -E_INVAL_ELF;
    goto bad_elf;
}

// 遍历程序头表
struct proghdr *ph = (struct proghdr *)((uintptr_t)elf.e_phoff);
ret = -E_NO_MEM;
for (int i = 0; i < elf.e_phnum; i ++, ph ++) {
    if (ph->p_type == ELF_PT_LOAD) {
        // 为当前段创建vma映射
        uintptr_t start = ph->p_vaddr, end = ph->p_vaddr + ph->p_memsz;
        uint32_t perm = PTE_U;
        if (ph->p_flags & ELF_PF_X) perm |= PTE_X;
        if (ph->p_flags & ELF_PF_W) perm |= PTE_W;
        if (ph->p_flags & ELF_PF_R) perm |= PTE_R;
        if ((ret = mm_map(mm, start, ph->p_memsz, perm, NULL)) != 0) {
            goto bad_cleanup_mmap;
        }
        // 将文件内容读取到虚拟内存
        alen = ph->p_filesz;
        if ((ret = vop_read(file->node, (void *)start, alen, ph->p_offset, &alen)) != 0 || alen != ph->p_filesz) {
            goto bad_cleanup_mmap;
        }
        // 对于.bss段，清空剩余内存
        if (ph->p_filesz < ph->p_memsz) {
            memset((void *)(start + ph->p_filesz), 0, ph->p_memsz - ph->p_filesz);
        }
    }
}
```

### 测试结果
- `make qemu` 启动后成功进入 sh
- 可正常执行 hello、exit、cat、ls 等用户程序
- 程序从 SFS 文件系统正确加载并运行

## 扩展练习 Challenge1：UNIX PIPE 机制设计方案

### 核心数据结构

```c
struct pipe {
    struct semaphore sem_readable;   // 可读数据信号量
    struct semaphore sem_writable;   // 可写空间信号量
    struct semaphore mutex;          // 缓冲区互斥锁
    char buffer[PIPE_BUFFER_SIZE];   // 环形缓冲区（典型 4KB~64KB）
    size_t rpos;                     // 读指针
    size_t wpos;                     // 写指针
    size_t count;                    // 当前数据字节数
    int read_ref;                    // 读端引用计数
    int write_ref;                   // 写端引用计数
    bool read_closed;                // 读端是否关闭
    bool write_closed;               // 写端是否关闭
};
```

### 主要接口语义

1. **`int pipe(int fd[2])`**  
   创建匿名管道，返回读/写端 fd

2. **`ssize_t read(int fd, void *buf, size_t n)`**  
   从管道读取数据；写端关闭且无数据时返回 0

3. **`ssize_t write(int fd, const void *buf, size_t n)`**  
   向管道写入数据；读端关闭时返回 EPIPE

4. **`int close(int fd)`**  
   关闭一端；两端都关闭时释放 pipe 结构

## 扩展练习 Challenge2：UNIX 软链接与硬链接机制设计方案

### 核心数据结构扩展

```c
// 磁盘 inode 扩展
struct sfs_disk_inode {
    uint32_t size;
    uint16_t type;                  // 新增 SFS_TYPE_SYMLINK
    uint16_t nlinks;                // 硬链接计数
    uint32_t blocks;
    uint32_t direct[SFS_NDIRECT];
    uint32_t indirect;
    char symlink_target[256];       // 软链接目标路径（或变长设计）
};

// 内存 inode 扩展
struct sfs_inode {
    // ... 原有字段 ...
    char *symlink_path;             // 缓存的目标路径（加速解析）
};
```

### 主要接口语义

1. **`int link(const char *old, const char *new)`**  
   硬链接：目标 inode 的 nlinks++

2. **`int symlink(const char *target, const char *linkpath)`**  
   软链接：type = SFS_TYPE_SYMLINK，记录目标路径

3. **`int unlink(const char *pathname)`**  
   删除链接：nlinks--，为0且非目录则释放数据块

4. **`ssize_t readlink(const char *path, char *buf, size_t bufsize)`**  
   读取软链接目标路径

### 同步互斥要点
- 使用 `sfs->mutex_sem` 保护 nlinks 增减
- 目录项修改（link/unlink/symlink）加锁
- 删除文件时检查 nlinks==0 才释放 inode 和数据块
- 软链接解析需防止循环链接（可记录深度或路径集合）

## 实验总结与心得

1. **完成情况**：完成了 SFS 文件读操作的核心实现，支持稀疏文件和边界情况；实现了从文件系统加载 ELF 可执行文件的机制，shell 及用户程序正常运行；对 UNIX 管道、硬/软链接机制有了更深入的理解，并给出了可行的概要设计方案。

2. **实验完成情况**：全部完成

