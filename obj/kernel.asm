
bin/kernel:     file format elf64-littleriscv


Disassembly of section .text:

ffffffffc0200000 <kern_entry>:
ffffffffc0200000:	00014297          	auipc	t0,0x14
ffffffffc0200004:	00028293          	mv	t0,t0
ffffffffc0200008:	00a2b023          	sd	a0,0(t0) # ffffffffc0214000 <boot_hartid>
ffffffffc020000c:	00014297          	auipc	t0,0x14
ffffffffc0200010:	ffc28293          	addi	t0,t0,-4 # ffffffffc0214008 <boot_dtb>
ffffffffc0200014:	00b2b023          	sd	a1,0(t0)
ffffffffc0200018:	c02132b7          	lui	t0,0xc0213
ffffffffc020001c:	ffd0031b          	addiw	t1,zero,-3
ffffffffc0200020:	037a                	slli	t1,t1,0x1e
ffffffffc0200022:	406282b3          	sub	t0,t0,t1
ffffffffc0200026:	00c2d293          	srli	t0,t0,0xc
ffffffffc020002a:	fff0031b          	addiw	t1,zero,-1
ffffffffc020002e:	137e                	slli	t1,t1,0x3f
ffffffffc0200030:	0062e2b3          	or	t0,t0,t1
ffffffffc0200034:	18029073          	csrw	satp,t0
ffffffffc0200038:	12000073          	sfence.vma
ffffffffc020003c:	c0213137          	lui	sp,0xc0213
ffffffffc0200040:	c02002b7          	lui	t0,0xc0200
ffffffffc0200044:	04a28293          	addi	t0,t0,74 # ffffffffc020004a <kern_init>
ffffffffc0200048:	8282                	jr	t0

ffffffffc020004a <kern_init>:
ffffffffc020004a:	00091517          	auipc	a0,0x91
ffffffffc020004e:	01650513          	addi	a0,a0,22 # ffffffffc0291060 <buf>
ffffffffc0200052:	00097617          	auipc	a2,0x97
ffffffffc0200056:	8be60613          	addi	a2,a2,-1858 # ffffffffc0296910 <end>
ffffffffc020005a:	1141                	addi	sp,sp,-16
ffffffffc020005c:	8e09                	sub	a2,a2,a0
ffffffffc020005e:	4581                	li	a1,0
ffffffffc0200060:	e406                	sd	ra,8(sp)
ffffffffc0200062:	4720b0ef          	jal	ra,ffffffffc020b4d4 <memset>
ffffffffc0200066:	52c000ef          	jal	ra,ffffffffc0200592 <cons_init>
ffffffffc020006a:	0000b597          	auipc	a1,0xb
ffffffffc020006e:	4d658593          	addi	a1,a1,1238 # ffffffffc020b540 <etext+0x2>
ffffffffc0200072:	0000b517          	auipc	a0,0xb
ffffffffc0200076:	4ee50513          	addi	a0,a0,1262 # ffffffffc020b560 <etext+0x22>
ffffffffc020007a:	12c000ef          	jal	ra,ffffffffc02001a6 <cprintf>
ffffffffc020007e:	1ae000ef          	jal	ra,ffffffffc020022c <print_kerninfo>
ffffffffc0200082:	62a000ef          	jal	ra,ffffffffc02006ac <dtb_init>
ffffffffc0200086:	24b020ef          	jal	ra,ffffffffc0202ad0 <pmm_init>
ffffffffc020008a:	3ef000ef          	jal	ra,ffffffffc0200c78 <pic_init>
ffffffffc020008e:	515000ef          	jal	ra,ffffffffc0200da2 <idt_init>
ffffffffc0200092:	6d7030ef          	jal	ra,ffffffffc0203f68 <vmm_init>
ffffffffc0200096:	156070ef          	jal	ra,ffffffffc02071ec <sched_init>
ffffffffc020009a:	55d060ef          	jal	ra,ffffffffc0206df6 <proc_init>
ffffffffc020009e:	1bf000ef          	jal	ra,ffffffffc0200a5c <ide_init>
ffffffffc02000a2:	108050ef          	jal	ra,ffffffffc02051aa <fs_init>
ffffffffc02000a6:	4a4000ef          	jal	ra,ffffffffc020054a <clock_init>
ffffffffc02000aa:	3c3000ef          	jal	ra,ffffffffc0200c6c <intr_enable>
ffffffffc02000ae:	715060ef          	jal	ra,ffffffffc0206fc2 <cpu_idle>

ffffffffc02000b2 <readline>:
ffffffffc02000b2:	715d                	addi	sp,sp,-80
ffffffffc02000b4:	e486                	sd	ra,72(sp)
ffffffffc02000b6:	e0a6                	sd	s1,64(sp)
ffffffffc02000b8:	fc4a                	sd	s2,56(sp)
ffffffffc02000ba:	f84e                	sd	s3,48(sp)
ffffffffc02000bc:	f452                	sd	s4,40(sp)
ffffffffc02000be:	f056                	sd	s5,32(sp)
ffffffffc02000c0:	ec5a                	sd	s6,24(sp)
ffffffffc02000c2:	e85e                	sd	s7,16(sp)
ffffffffc02000c4:	c901                	beqz	a0,ffffffffc02000d4 <readline+0x22>
ffffffffc02000c6:	85aa                	mv	a1,a0
ffffffffc02000c8:	0000b517          	auipc	a0,0xb
ffffffffc02000cc:	4a050513          	addi	a0,a0,1184 # ffffffffc020b568 <etext+0x2a>
ffffffffc02000d0:	0d6000ef          	jal	ra,ffffffffc02001a6 <cprintf>
ffffffffc02000d4:	4481                	li	s1,0
ffffffffc02000d6:	497d                	li	s2,31
ffffffffc02000d8:	49a1                	li	s3,8
ffffffffc02000da:	4aa9                	li	s5,10
ffffffffc02000dc:	4b35                	li	s6,13
ffffffffc02000de:	00091b97          	auipc	s7,0x91
ffffffffc02000e2:	f82b8b93          	addi	s7,s7,-126 # ffffffffc0291060 <buf>
ffffffffc02000e6:	3fe00a13          	li	s4,1022
ffffffffc02000ea:	0fa000ef          	jal	ra,ffffffffc02001e4 <getchar>
ffffffffc02000ee:	00054a63          	bltz	a0,ffffffffc0200102 <readline+0x50>
ffffffffc02000f2:	00a95a63          	bge	s2,a0,ffffffffc0200106 <readline+0x54>
ffffffffc02000f6:	029a5263          	bge	s4,s1,ffffffffc020011a <readline+0x68>
ffffffffc02000fa:	0ea000ef          	jal	ra,ffffffffc02001e4 <getchar>
ffffffffc02000fe:	fe055ae3          	bgez	a0,ffffffffc02000f2 <readline+0x40>
ffffffffc0200102:	4501                	li	a0,0
ffffffffc0200104:	a091                	j	ffffffffc0200148 <readline+0x96>
ffffffffc0200106:	03351463          	bne	a0,s3,ffffffffc020012e <readline+0x7c>
ffffffffc020010a:	e8a9                	bnez	s1,ffffffffc020015c <readline+0xaa>
ffffffffc020010c:	0d8000ef          	jal	ra,ffffffffc02001e4 <getchar>
ffffffffc0200110:	fe0549e3          	bltz	a0,ffffffffc0200102 <readline+0x50>
ffffffffc0200114:	fea959e3          	bge	s2,a0,ffffffffc0200106 <readline+0x54>
ffffffffc0200118:	4481                	li	s1,0
ffffffffc020011a:	e42a                	sd	a0,8(sp)
ffffffffc020011c:	0c6000ef          	jal	ra,ffffffffc02001e2 <cputchar>
ffffffffc0200120:	6522                	ld	a0,8(sp)
ffffffffc0200122:	009b87b3          	add	a5,s7,s1
ffffffffc0200126:	2485                	addiw	s1,s1,1
ffffffffc0200128:	00a78023          	sb	a0,0(a5)
ffffffffc020012c:	bf7d                	j	ffffffffc02000ea <readline+0x38>
ffffffffc020012e:	01550463          	beq	a0,s5,ffffffffc0200136 <readline+0x84>
ffffffffc0200132:	fb651ce3          	bne	a0,s6,ffffffffc02000ea <readline+0x38>
ffffffffc0200136:	0ac000ef          	jal	ra,ffffffffc02001e2 <cputchar>
ffffffffc020013a:	00091517          	auipc	a0,0x91
ffffffffc020013e:	f2650513          	addi	a0,a0,-218 # ffffffffc0291060 <buf>
ffffffffc0200142:	94aa                	add	s1,s1,a0
ffffffffc0200144:	00048023          	sb	zero,0(s1)
ffffffffc0200148:	60a6                	ld	ra,72(sp)
ffffffffc020014a:	6486                	ld	s1,64(sp)
ffffffffc020014c:	7962                	ld	s2,56(sp)
ffffffffc020014e:	79c2                	ld	s3,48(sp)
ffffffffc0200150:	7a22                	ld	s4,40(sp)
ffffffffc0200152:	7a82                	ld	s5,32(sp)
ffffffffc0200154:	6b62                	ld	s6,24(sp)
ffffffffc0200156:	6bc2                	ld	s7,16(sp)
ffffffffc0200158:	6161                	addi	sp,sp,80
ffffffffc020015a:	8082                	ret
ffffffffc020015c:	4521                	li	a0,8
ffffffffc020015e:	084000ef          	jal	ra,ffffffffc02001e2 <cputchar>
ffffffffc0200162:	34fd                	addiw	s1,s1,-1
ffffffffc0200164:	b759                	j	ffffffffc02000ea <readline+0x38>

ffffffffc0200166 <cputch>:
ffffffffc0200166:	1141                	addi	sp,sp,-16
ffffffffc0200168:	e022                	sd	s0,0(sp)
ffffffffc020016a:	e406                	sd	ra,8(sp)
ffffffffc020016c:	842e                	mv	s0,a1
ffffffffc020016e:	432000ef          	jal	ra,ffffffffc02005a0 <cons_putc>
ffffffffc0200172:	401c                	lw	a5,0(s0)
ffffffffc0200174:	60a2                	ld	ra,8(sp)
ffffffffc0200176:	2785                	addiw	a5,a5,1
ffffffffc0200178:	c01c                	sw	a5,0(s0)
ffffffffc020017a:	6402                	ld	s0,0(sp)
ffffffffc020017c:	0141                	addi	sp,sp,16
ffffffffc020017e:	8082                	ret

ffffffffc0200180 <vcprintf>:
ffffffffc0200180:	1101                	addi	sp,sp,-32
ffffffffc0200182:	872e                	mv	a4,a1
ffffffffc0200184:	75dd                	lui	a1,0xffff7
ffffffffc0200186:	86aa                	mv	a3,a0
ffffffffc0200188:	0070                	addi	a2,sp,12
ffffffffc020018a:	00000517          	auipc	a0,0x0
ffffffffc020018e:	fdc50513          	addi	a0,a0,-36 # ffffffffc0200166 <cputch>
ffffffffc0200192:	ad958593          	addi	a1,a1,-1319 # ffffffffffff6ad9 <end+0x3fd601c9>
ffffffffc0200196:	ec06                	sd	ra,24(sp)
ffffffffc0200198:	c602                	sw	zero,12(sp)
ffffffffc020019a:	6ad0a0ef          	jal	ra,ffffffffc020b046 <vprintfmt>
ffffffffc020019e:	60e2                	ld	ra,24(sp)
ffffffffc02001a0:	4532                	lw	a0,12(sp)
ffffffffc02001a2:	6105                	addi	sp,sp,32
ffffffffc02001a4:	8082                	ret

ffffffffc02001a6 <cprintf>:
ffffffffc02001a6:	711d                	addi	sp,sp,-96
ffffffffc02001a8:	02810313          	addi	t1,sp,40 # ffffffffc0213028 <boot_page_table_sv39+0x28>
ffffffffc02001ac:	8e2a                	mv	t3,a0
ffffffffc02001ae:	f42e                	sd	a1,40(sp)
ffffffffc02001b0:	75dd                	lui	a1,0xffff7
ffffffffc02001b2:	f832                	sd	a2,48(sp)
ffffffffc02001b4:	fc36                	sd	a3,56(sp)
ffffffffc02001b6:	e0ba                	sd	a4,64(sp)
ffffffffc02001b8:	00000517          	auipc	a0,0x0
ffffffffc02001bc:	fae50513          	addi	a0,a0,-82 # ffffffffc0200166 <cputch>
ffffffffc02001c0:	0050                	addi	a2,sp,4
ffffffffc02001c2:	871a                	mv	a4,t1
ffffffffc02001c4:	86f2                	mv	a3,t3
ffffffffc02001c6:	ad958593          	addi	a1,a1,-1319 # ffffffffffff6ad9 <end+0x3fd601c9>
ffffffffc02001ca:	ec06                	sd	ra,24(sp)
ffffffffc02001cc:	e4be                	sd	a5,72(sp)
ffffffffc02001ce:	e8c2                	sd	a6,80(sp)
ffffffffc02001d0:	ecc6                	sd	a7,88(sp)
ffffffffc02001d2:	e41a                	sd	t1,8(sp)
ffffffffc02001d4:	c202                	sw	zero,4(sp)
ffffffffc02001d6:	6710a0ef          	jal	ra,ffffffffc020b046 <vprintfmt>
ffffffffc02001da:	60e2                	ld	ra,24(sp)
ffffffffc02001dc:	4512                	lw	a0,4(sp)
ffffffffc02001de:	6125                	addi	sp,sp,96
ffffffffc02001e0:	8082                	ret

ffffffffc02001e2 <cputchar>:
ffffffffc02001e2:	ae7d                	j	ffffffffc02005a0 <cons_putc>

ffffffffc02001e4 <getchar>:
ffffffffc02001e4:	1141                	addi	sp,sp,-16
ffffffffc02001e6:	e406                	sd	ra,8(sp)
ffffffffc02001e8:	40c000ef          	jal	ra,ffffffffc02005f4 <cons_getc>
ffffffffc02001ec:	dd75                	beqz	a0,ffffffffc02001e8 <getchar+0x4>
ffffffffc02001ee:	60a2                	ld	ra,8(sp)
ffffffffc02001f0:	0141                	addi	sp,sp,16
ffffffffc02001f2:	8082                	ret

ffffffffc02001f4 <strdup>:
ffffffffc02001f4:	1101                	addi	sp,sp,-32
ffffffffc02001f6:	ec06                	sd	ra,24(sp)
ffffffffc02001f8:	e822                	sd	s0,16(sp)
ffffffffc02001fa:	e426                	sd	s1,8(sp)
ffffffffc02001fc:	e04a                	sd	s2,0(sp)
ffffffffc02001fe:	892a                	mv	s2,a0
ffffffffc0200200:	2320b0ef          	jal	ra,ffffffffc020b432 <strlen>
ffffffffc0200204:	842a                	mv	s0,a0
ffffffffc0200206:	0505                	addi	a0,a0,1
ffffffffc0200208:	587010ef          	jal	ra,ffffffffc0201f8e <kmalloc>
ffffffffc020020c:	84aa                	mv	s1,a0
ffffffffc020020e:	c901                	beqz	a0,ffffffffc020021e <strdup+0x2a>
ffffffffc0200210:	8622                	mv	a2,s0
ffffffffc0200212:	85ca                	mv	a1,s2
ffffffffc0200214:	9426                	add	s0,s0,s1
ffffffffc0200216:	3100b0ef          	jal	ra,ffffffffc020b526 <memcpy>
ffffffffc020021a:	00040023          	sb	zero,0(s0)
ffffffffc020021e:	60e2                	ld	ra,24(sp)
ffffffffc0200220:	6442                	ld	s0,16(sp)
ffffffffc0200222:	6902                	ld	s2,0(sp)
ffffffffc0200224:	8526                	mv	a0,s1
ffffffffc0200226:	64a2                	ld	s1,8(sp)
ffffffffc0200228:	6105                	addi	sp,sp,32
ffffffffc020022a:	8082                	ret

ffffffffc020022c <print_kerninfo>:
ffffffffc020022c:	1141                	addi	sp,sp,-16
ffffffffc020022e:	0000b517          	auipc	a0,0xb
ffffffffc0200232:	34250513          	addi	a0,a0,834 # ffffffffc020b570 <etext+0x32>
ffffffffc0200236:	e406                	sd	ra,8(sp)
ffffffffc0200238:	f6fff0ef          	jal	ra,ffffffffc02001a6 <cprintf>
ffffffffc020023c:	00000597          	auipc	a1,0x0
ffffffffc0200240:	e0e58593          	addi	a1,a1,-498 # ffffffffc020004a <kern_init>
ffffffffc0200244:	0000b517          	auipc	a0,0xb
ffffffffc0200248:	34c50513          	addi	a0,a0,844 # ffffffffc020b590 <etext+0x52>
ffffffffc020024c:	f5bff0ef          	jal	ra,ffffffffc02001a6 <cprintf>
ffffffffc0200250:	0000b597          	auipc	a1,0xb
ffffffffc0200254:	2ee58593          	addi	a1,a1,750 # ffffffffc020b53e <etext>
ffffffffc0200258:	0000b517          	auipc	a0,0xb
ffffffffc020025c:	35850513          	addi	a0,a0,856 # ffffffffc020b5b0 <etext+0x72>
ffffffffc0200260:	f47ff0ef          	jal	ra,ffffffffc02001a6 <cprintf>
ffffffffc0200264:	00091597          	auipc	a1,0x91
ffffffffc0200268:	dfc58593          	addi	a1,a1,-516 # ffffffffc0291060 <buf>
ffffffffc020026c:	0000b517          	auipc	a0,0xb
ffffffffc0200270:	36450513          	addi	a0,a0,868 # ffffffffc020b5d0 <etext+0x92>
ffffffffc0200274:	f33ff0ef          	jal	ra,ffffffffc02001a6 <cprintf>
ffffffffc0200278:	00096597          	auipc	a1,0x96
ffffffffc020027c:	69858593          	addi	a1,a1,1688 # ffffffffc0296910 <end>
ffffffffc0200280:	0000b517          	auipc	a0,0xb
ffffffffc0200284:	37050513          	addi	a0,a0,880 # ffffffffc020b5f0 <etext+0xb2>
ffffffffc0200288:	f1fff0ef          	jal	ra,ffffffffc02001a6 <cprintf>
ffffffffc020028c:	00097597          	auipc	a1,0x97
ffffffffc0200290:	a8358593          	addi	a1,a1,-1405 # ffffffffc0296d0f <end+0x3ff>
ffffffffc0200294:	00000797          	auipc	a5,0x0
ffffffffc0200298:	db678793          	addi	a5,a5,-586 # ffffffffc020004a <kern_init>
ffffffffc020029c:	40f587b3          	sub	a5,a1,a5
ffffffffc02002a0:	43f7d593          	srai	a1,a5,0x3f
ffffffffc02002a4:	60a2                	ld	ra,8(sp)
ffffffffc02002a6:	3ff5f593          	andi	a1,a1,1023
ffffffffc02002aa:	95be                	add	a1,a1,a5
ffffffffc02002ac:	85a9                	srai	a1,a1,0xa
ffffffffc02002ae:	0000b517          	auipc	a0,0xb
ffffffffc02002b2:	36250513          	addi	a0,a0,866 # ffffffffc020b610 <etext+0xd2>
ffffffffc02002b6:	0141                	addi	sp,sp,16
ffffffffc02002b8:	b5fd                	j	ffffffffc02001a6 <cprintf>

ffffffffc02002ba <print_stackframe>:
ffffffffc02002ba:	1141                	addi	sp,sp,-16
ffffffffc02002bc:	0000b617          	auipc	a2,0xb
ffffffffc02002c0:	38460613          	addi	a2,a2,900 # ffffffffc020b640 <etext+0x102>
ffffffffc02002c4:	04e00593          	li	a1,78
ffffffffc02002c8:	0000b517          	auipc	a0,0xb
ffffffffc02002cc:	39050513          	addi	a0,a0,912 # ffffffffc020b658 <etext+0x11a>
ffffffffc02002d0:	e406                	sd	ra,8(sp)
ffffffffc02002d2:	1cc000ef          	jal	ra,ffffffffc020049e <__panic>

ffffffffc02002d6 <mon_help>:
ffffffffc02002d6:	1141                	addi	sp,sp,-16
ffffffffc02002d8:	0000b617          	auipc	a2,0xb
ffffffffc02002dc:	39860613          	addi	a2,a2,920 # ffffffffc020b670 <etext+0x132>
ffffffffc02002e0:	0000b597          	auipc	a1,0xb
ffffffffc02002e4:	3b058593          	addi	a1,a1,944 # ffffffffc020b690 <etext+0x152>
ffffffffc02002e8:	0000b517          	auipc	a0,0xb
ffffffffc02002ec:	3b050513          	addi	a0,a0,944 # ffffffffc020b698 <etext+0x15a>
ffffffffc02002f0:	e406                	sd	ra,8(sp)
ffffffffc02002f2:	eb5ff0ef          	jal	ra,ffffffffc02001a6 <cprintf>
ffffffffc02002f6:	0000b617          	auipc	a2,0xb
ffffffffc02002fa:	3b260613          	addi	a2,a2,946 # ffffffffc020b6a8 <etext+0x16a>
ffffffffc02002fe:	0000b597          	auipc	a1,0xb
ffffffffc0200302:	3d258593          	addi	a1,a1,978 # ffffffffc020b6d0 <etext+0x192>
ffffffffc0200306:	0000b517          	auipc	a0,0xb
ffffffffc020030a:	39250513          	addi	a0,a0,914 # ffffffffc020b698 <etext+0x15a>
ffffffffc020030e:	e99ff0ef          	jal	ra,ffffffffc02001a6 <cprintf>
ffffffffc0200312:	0000b617          	auipc	a2,0xb
ffffffffc0200316:	3ce60613          	addi	a2,a2,974 # ffffffffc020b6e0 <etext+0x1a2>
ffffffffc020031a:	0000b597          	auipc	a1,0xb
ffffffffc020031e:	3e658593          	addi	a1,a1,998 # ffffffffc020b700 <etext+0x1c2>
ffffffffc0200322:	0000b517          	auipc	a0,0xb
ffffffffc0200326:	37650513          	addi	a0,a0,886 # ffffffffc020b698 <etext+0x15a>
ffffffffc020032a:	e7dff0ef          	jal	ra,ffffffffc02001a6 <cprintf>
ffffffffc020032e:	60a2                	ld	ra,8(sp)
ffffffffc0200330:	4501                	li	a0,0
ffffffffc0200332:	0141                	addi	sp,sp,16
ffffffffc0200334:	8082                	ret

ffffffffc0200336 <mon_kerninfo>:
ffffffffc0200336:	1141                	addi	sp,sp,-16
ffffffffc0200338:	e406                	sd	ra,8(sp)
ffffffffc020033a:	ef3ff0ef          	jal	ra,ffffffffc020022c <print_kerninfo>
ffffffffc020033e:	60a2                	ld	ra,8(sp)
ffffffffc0200340:	4501                	li	a0,0
ffffffffc0200342:	0141                	addi	sp,sp,16
ffffffffc0200344:	8082                	ret

ffffffffc0200346 <mon_backtrace>:
ffffffffc0200346:	1141                	addi	sp,sp,-16
ffffffffc0200348:	e406                	sd	ra,8(sp)
ffffffffc020034a:	f71ff0ef          	jal	ra,ffffffffc02002ba <print_stackframe>
ffffffffc020034e:	60a2                	ld	ra,8(sp)
ffffffffc0200350:	4501                	li	a0,0
ffffffffc0200352:	0141                	addi	sp,sp,16
ffffffffc0200354:	8082                	ret

ffffffffc0200356 <kmonitor>:
ffffffffc0200356:	7115                	addi	sp,sp,-224
ffffffffc0200358:	ed5e                	sd	s7,152(sp)
ffffffffc020035a:	8baa                	mv	s7,a0
ffffffffc020035c:	0000b517          	auipc	a0,0xb
ffffffffc0200360:	3b450513          	addi	a0,a0,948 # ffffffffc020b710 <etext+0x1d2>
ffffffffc0200364:	ed86                	sd	ra,216(sp)
ffffffffc0200366:	e9a2                	sd	s0,208(sp)
ffffffffc0200368:	e5a6                	sd	s1,200(sp)
ffffffffc020036a:	e1ca                	sd	s2,192(sp)
ffffffffc020036c:	fd4e                	sd	s3,184(sp)
ffffffffc020036e:	f952                	sd	s4,176(sp)
ffffffffc0200370:	f556                	sd	s5,168(sp)
ffffffffc0200372:	f15a                	sd	s6,160(sp)
ffffffffc0200374:	e962                	sd	s8,144(sp)
ffffffffc0200376:	e566                	sd	s9,136(sp)
ffffffffc0200378:	e16a                	sd	s10,128(sp)
ffffffffc020037a:	e2dff0ef          	jal	ra,ffffffffc02001a6 <cprintf>
ffffffffc020037e:	0000b517          	auipc	a0,0xb
ffffffffc0200382:	3ba50513          	addi	a0,a0,954 # ffffffffc020b738 <etext+0x1fa>
ffffffffc0200386:	e21ff0ef          	jal	ra,ffffffffc02001a6 <cprintf>
ffffffffc020038a:	000b8563          	beqz	s7,ffffffffc0200394 <kmonitor+0x3e>
ffffffffc020038e:	855e                	mv	a0,s7
ffffffffc0200390:	3fb000ef          	jal	ra,ffffffffc0200f8a <print_trapframe>
ffffffffc0200394:	0000bc17          	auipc	s8,0xb
ffffffffc0200398:	414c0c13          	addi	s8,s8,1044 # ffffffffc020b7a8 <commands>
ffffffffc020039c:	0000b917          	auipc	s2,0xb
ffffffffc02003a0:	3c490913          	addi	s2,s2,964 # ffffffffc020b760 <etext+0x222>
ffffffffc02003a4:	0000b497          	auipc	s1,0xb
ffffffffc02003a8:	3c448493          	addi	s1,s1,964 # ffffffffc020b768 <etext+0x22a>
ffffffffc02003ac:	49bd                	li	s3,15
ffffffffc02003ae:	0000bb17          	auipc	s6,0xb
ffffffffc02003b2:	3c2b0b13          	addi	s6,s6,962 # ffffffffc020b770 <etext+0x232>
ffffffffc02003b6:	0000ba17          	auipc	s4,0xb
ffffffffc02003ba:	2daa0a13          	addi	s4,s4,730 # ffffffffc020b690 <etext+0x152>
ffffffffc02003be:	4a8d                	li	s5,3
ffffffffc02003c0:	854a                	mv	a0,s2
ffffffffc02003c2:	cf1ff0ef          	jal	ra,ffffffffc02000b2 <readline>
ffffffffc02003c6:	842a                	mv	s0,a0
ffffffffc02003c8:	dd65                	beqz	a0,ffffffffc02003c0 <kmonitor+0x6a>
ffffffffc02003ca:	00054583          	lbu	a1,0(a0)
ffffffffc02003ce:	4c81                	li	s9,0
ffffffffc02003d0:	e1bd                	bnez	a1,ffffffffc0200436 <kmonitor+0xe0>
ffffffffc02003d2:	fe0c87e3          	beqz	s9,ffffffffc02003c0 <kmonitor+0x6a>
ffffffffc02003d6:	6582                	ld	a1,0(sp)
ffffffffc02003d8:	0000bd17          	auipc	s10,0xb
ffffffffc02003dc:	3d0d0d13          	addi	s10,s10,976 # ffffffffc020b7a8 <commands>
ffffffffc02003e0:	8552                	mv	a0,s4
ffffffffc02003e2:	4401                	li	s0,0
ffffffffc02003e4:	0d61                	addi	s10,s10,24
ffffffffc02003e6:	0940b0ef          	jal	ra,ffffffffc020b47a <strcmp>
ffffffffc02003ea:	c919                	beqz	a0,ffffffffc0200400 <kmonitor+0xaa>
ffffffffc02003ec:	2405                	addiw	s0,s0,1
ffffffffc02003ee:	0b540063          	beq	s0,s5,ffffffffc020048e <kmonitor+0x138>
ffffffffc02003f2:	000d3503          	ld	a0,0(s10)
ffffffffc02003f6:	6582                	ld	a1,0(sp)
ffffffffc02003f8:	0d61                	addi	s10,s10,24
ffffffffc02003fa:	0800b0ef          	jal	ra,ffffffffc020b47a <strcmp>
ffffffffc02003fe:	f57d                	bnez	a0,ffffffffc02003ec <kmonitor+0x96>
ffffffffc0200400:	00141793          	slli	a5,s0,0x1
ffffffffc0200404:	97a2                	add	a5,a5,s0
ffffffffc0200406:	078e                	slli	a5,a5,0x3
ffffffffc0200408:	97e2                	add	a5,a5,s8
ffffffffc020040a:	6b9c                	ld	a5,16(a5)
ffffffffc020040c:	865e                	mv	a2,s7
ffffffffc020040e:	002c                	addi	a1,sp,8
ffffffffc0200410:	fffc851b          	addiw	a0,s9,-1
ffffffffc0200414:	9782                	jalr	a5
ffffffffc0200416:	fa0555e3          	bgez	a0,ffffffffc02003c0 <kmonitor+0x6a>
ffffffffc020041a:	60ee                	ld	ra,216(sp)
ffffffffc020041c:	644e                	ld	s0,208(sp)
ffffffffc020041e:	64ae                	ld	s1,200(sp)
ffffffffc0200420:	690e                	ld	s2,192(sp)
ffffffffc0200422:	79ea                	ld	s3,184(sp)
ffffffffc0200424:	7a4a                	ld	s4,176(sp)
ffffffffc0200426:	7aaa                	ld	s5,168(sp)
ffffffffc0200428:	7b0a                	ld	s6,160(sp)
ffffffffc020042a:	6bea                	ld	s7,152(sp)
ffffffffc020042c:	6c4a                	ld	s8,144(sp)
ffffffffc020042e:	6caa                	ld	s9,136(sp)
ffffffffc0200430:	6d0a                	ld	s10,128(sp)
ffffffffc0200432:	612d                	addi	sp,sp,224
ffffffffc0200434:	8082                	ret
ffffffffc0200436:	8526                	mv	a0,s1
ffffffffc0200438:	0860b0ef          	jal	ra,ffffffffc020b4be <strchr>
ffffffffc020043c:	c901                	beqz	a0,ffffffffc020044c <kmonitor+0xf6>
ffffffffc020043e:	00144583          	lbu	a1,1(s0)
ffffffffc0200442:	00040023          	sb	zero,0(s0)
ffffffffc0200446:	0405                	addi	s0,s0,1
ffffffffc0200448:	d5c9                	beqz	a1,ffffffffc02003d2 <kmonitor+0x7c>
ffffffffc020044a:	b7f5                	j	ffffffffc0200436 <kmonitor+0xe0>
ffffffffc020044c:	00044783          	lbu	a5,0(s0)
ffffffffc0200450:	d3c9                	beqz	a5,ffffffffc02003d2 <kmonitor+0x7c>
ffffffffc0200452:	033c8963          	beq	s9,s3,ffffffffc0200484 <kmonitor+0x12e>
ffffffffc0200456:	003c9793          	slli	a5,s9,0x3
ffffffffc020045a:	0118                	addi	a4,sp,128
ffffffffc020045c:	97ba                	add	a5,a5,a4
ffffffffc020045e:	f887b023          	sd	s0,-128(a5)
ffffffffc0200462:	00044583          	lbu	a1,0(s0)
ffffffffc0200466:	2c85                	addiw	s9,s9,1
ffffffffc0200468:	e591                	bnez	a1,ffffffffc0200474 <kmonitor+0x11e>
ffffffffc020046a:	b7b5                	j	ffffffffc02003d6 <kmonitor+0x80>
ffffffffc020046c:	00144583          	lbu	a1,1(s0)
ffffffffc0200470:	0405                	addi	s0,s0,1
ffffffffc0200472:	d1a5                	beqz	a1,ffffffffc02003d2 <kmonitor+0x7c>
ffffffffc0200474:	8526                	mv	a0,s1
ffffffffc0200476:	0480b0ef          	jal	ra,ffffffffc020b4be <strchr>
ffffffffc020047a:	d96d                	beqz	a0,ffffffffc020046c <kmonitor+0x116>
ffffffffc020047c:	00044583          	lbu	a1,0(s0)
ffffffffc0200480:	d9a9                	beqz	a1,ffffffffc02003d2 <kmonitor+0x7c>
ffffffffc0200482:	bf55                	j	ffffffffc0200436 <kmonitor+0xe0>
ffffffffc0200484:	45c1                	li	a1,16
ffffffffc0200486:	855a                	mv	a0,s6
ffffffffc0200488:	d1fff0ef          	jal	ra,ffffffffc02001a6 <cprintf>
ffffffffc020048c:	b7e9                	j	ffffffffc0200456 <kmonitor+0x100>
ffffffffc020048e:	6582                	ld	a1,0(sp)
ffffffffc0200490:	0000b517          	auipc	a0,0xb
ffffffffc0200494:	30050513          	addi	a0,a0,768 # ffffffffc020b790 <etext+0x252>
ffffffffc0200498:	d0fff0ef          	jal	ra,ffffffffc02001a6 <cprintf>
ffffffffc020049c:	b715                	j	ffffffffc02003c0 <kmonitor+0x6a>

ffffffffc020049e <__panic>:
ffffffffc020049e:	00096317          	auipc	t1,0x96
ffffffffc02004a2:	3ca30313          	addi	t1,t1,970 # ffffffffc0296868 <is_panic>
ffffffffc02004a6:	00033e03          	ld	t3,0(t1)
ffffffffc02004aa:	715d                	addi	sp,sp,-80
ffffffffc02004ac:	ec06                	sd	ra,24(sp)
ffffffffc02004ae:	e822                	sd	s0,16(sp)
ffffffffc02004b0:	f436                	sd	a3,40(sp)
ffffffffc02004b2:	f83a                	sd	a4,48(sp)
ffffffffc02004b4:	fc3e                	sd	a5,56(sp)
ffffffffc02004b6:	e0c2                	sd	a6,64(sp)
ffffffffc02004b8:	e4c6                	sd	a7,72(sp)
ffffffffc02004ba:	020e1a63          	bnez	t3,ffffffffc02004ee <__panic+0x50>
ffffffffc02004be:	4785                	li	a5,1
ffffffffc02004c0:	00f33023          	sd	a5,0(t1)
ffffffffc02004c4:	8432                	mv	s0,a2
ffffffffc02004c6:	103c                	addi	a5,sp,40
ffffffffc02004c8:	862e                	mv	a2,a1
ffffffffc02004ca:	85aa                	mv	a1,a0
ffffffffc02004cc:	0000b517          	auipc	a0,0xb
ffffffffc02004d0:	32450513          	addi	a0,a0,804 # ffffffffc020b7f0 <commands+0x48>
ffffffffc02004d4:	e43e                	sd	a5,8(sp)
ffffffffc02004d6:	cd1ff0ef          	jal	ra,ffffffffc02001a6 <cprintf>
ffffffffc02004da:	65a2                	ld	a1,8(sp)
ffffffffc02004dc:	8522                	mv	a0,s0
ffffffffc02004de:	ca3ff0ef          	jal	ra,ffffffffc0200180 <vcprintf>
ffffffffc02004e2:	0000c517          	auipc	a0,0xc
ffffffffc02004e6:	5ce50513          	addi	a0,a0,1486 # ffffffffc020cab0 <default_pmm_manager+0x610>
ffffffffc02004ea:	cbdff0ef          	jal	ra,ffffffffc02001a6 <cprintf>
ffffffffc02004ee:	4501                	li	a0,0
ffffffffc02004f0:	4581                	li	a1,0
ffffffffc02004f2:	4601                	li	a2,0
ffffffffc02004f4:	48a1                	li	a7,8
ffffffffc02004f6:	00000073          	ecall
ffffffffc02004fa:	778000ef          	jal	ra,ffffffffc0200c72 <intr_disable>
ffffffffc02004fe:	4501                	li	a0,0
ffffffffc0200500:	e57ff0ef          	jal	ra,ffffffffc0200356 <kmonitor>
ffffffffc0200504:	bfed                	j	ffffffffc02004fe <__panic+0x60>

ffffffffc0200506 <__warn>:
ffffffffc0200506:	715d                	addi	sp,sp,-80
ffffffffc0200508:	832e                	mv	t1,a1
ffffffffc020050a:	e822                	sd	s0,16(sp)
ffffffffc020050c:	85aa                	mv	a1,a0
ffffffffc020050e:	8432                	mv	s0,a2
ffffffffc0200510:	fc3e                	sd	a5,56(sp)
ffffffffc0200512:	861a                	mv	a2,t1
ffffffffc0200514:	103c                	addi	a5,sp,40
ffffffffc0200516:	0000b517          	auipc	a0,0xb
ffffffffc020051a:	2fa50513          	addi	a0,a0,762 # ffffffffc020b810 <commands+0x68>
ffffffffc020051e:	ec06                	sd	ra,24(sp)
ffffffffc0200520:	f436                	sd	a3,40(sp)
ffffffffc0200522:	f83a                	sd	a4,48(sp)
ffffffffc0200524:	e0c2                	sd	a6,64(sp)
ffffffffc0200526:	e4c6                	sd	a7,72(sp)
ffffffffc0200528:	e43e                	sd	a5,8(sp)
ffffffffc020052a:	c7dff0ef          	jal	ra,ffffffffc02001a6 <cprintf>
ffffffffc020052e:	65a2                	ld	a1,8(sp)
ffffffffc0200530:	8522                	mv	a0,s0
ffffffffc0200532:	c4fff0ef          	jal	ra,ffffffffc0200180 <vcprintf>
ffffffffc0200536:	0000c517          	auipc	a0,0xc
ffffffffc020053a:	57a50513          	addi	a0,a0,1402 # ffffffffc020cab0 <default_pmm_manager+0x610>
ffffffffc020053e:	c69ff0ef          	jal	ra,ffffffffc02001a6 <cprintf>
ffffffffc0200542:	60e2                	ld	ra,24(sp)
ffffffffc0200544:	6442                	ld	s0,16(sp)
ffffffffc0200546:	6161                	addi	sp,sp,80
ffffffffc0200548:	8082                	ret

ffffffffc020054a <clock_init>:
ffffffffc020054a:	02000793          	li	a5,32
ffffffffc020054e:	1047a7f3          	csrrs	a5,sie,a5
ffffffffc0200552:	c0102573          	rdtime	a0
ffffffffc0200556:	67e1                	lui	a5,0x18
ffffffffc0200558:	6a078793          	addi	a5,a5,1696 # 186a0 <_binary_bin_swap_img_size+0x109a0>
ffffffffc020055c:	953e                	add	a0,a0,a5
ffffffffc020055e:	4581                	li	a1,0
ffffffffc0200560:	4601                	li	a2,0
ffffffffc0200562:	4881                	li	a7,0
ffffffffc0200564:	00000073          	ecall
ffffffffc0200568:	0000b517          	auipc	a0,0xb
ffffffffc020056c:	2c850513          	addi	a0,a0,712 # ffffffffc020b830 <commands+0x88>
ffffffffc0200570:	00096797          	auipc	a5,0x96
ffffffffc0200574:	3007b023          	sd	zero,768(a5) # ffffffffc0296870 <ticks>
ffffffffc0200578:	b13d                	j	ffffffffc02001a6 <cprintf>

ffffffffc020057a <clock_set_next_event>:
ffffffffc020057a:	c0102573          	rdtime	a0
ffffffffc020057e:	67e1                	lui	a5,0x18
ffffffffc0200580:	6a078793          	addi	a5,a5,1696 # 186a0 <_binary_bin_swap_img_size+0x109a0>
ffffffffc0200584:	953e                	add	a0,a0,a5
ffffffffc0200586:	4581                	li	a1,0
ffffffffc0200588:	4601                	li	a2,0
ffffffffc020058a:	4881                	li	a7,0
ffffffffc020058c:	00000073          	ecall
ffffffffc0200590:	8082                	ret

ffffffffc0200592 <cons_init>:
ffffffffc0200592:	4501                	li	a0,0
ffffffffc0200594:	4581                	li	a1,0
ffffffffc0200596:	4601                	li	a2,0
ffffffffc0200598:	4889                	li	a7,2
ffffffffc020059a:	00000073          	ecall
ffffffffc020059e:	8082                	ret

ffffffffc02005a0 <cons_putc>:
ffffffffc02005a0:	1101                	addi	sp,sp,-32
ffffffffc02005a2:	ec06                	sd	ra,24(sp)
ffffffffc02005a4:	100027f3          	csrr	a5,sstatus
ffffffffc02005a8:	8b89                	andi	a5,a5,2
ffffffffc02005aa:	4701                	li	a4,0
ffffffffc02005ac:	ef95                	bnez	a5,ffffffffc02005e8 <cons_putc+0x48>
ffffffffc02005ae:	47a1                	li	a5,8
ffffffffc02005b0:	00f50b63          	beq	a0,a5,ffffffffc02005c6 <cons_putc+0x26>
ffffffffc02005b4:	4581                	li	a1,0
ffffffffc02005b6:	4601                	li	a2,0
ffffffffc02005b8:	4885                	li	a7,1
ffffffffc02005ba:	00000073          	ecall
ffffffffc02005be:	e315                	bnez	a4,ffffffffc02005e2 <cons_putc+0x42>
ffffffffc02005c0:	60e2                	ld	ra,24(sp)
ffffffffc02005c2:	6105                	addi	sp,sp,32
ffffffffc02005c4:	8082                	ret
ffffffffc02005c6:	4521                	li	a0,8
ffffffffc02005c8:	4581                	li	a1,0
ffffffffc02005ca:	4601                	li	a2,0
ffffffffc02005cc:	4885                	li	a7,1
ffffffffc02005ce:	00000073          	ecall
ffffffffc02005d2:	02000513          	li	a0,32
ffffffffc02005d6:	00000073          	ecall
ffffffffc02005da:	4521                	li	a0,8
ffffffffc02005dc:	00000073          	ecall
ffffffffc02005e0:	d365                	beqz	a4,ffffffffc02005c0 <cons_putc+0x20>
ffffffffc02005e2:	60e2                	ld	ra,24(sp)
ffffffffc02005e4:	6105                	addi	sp,sp,32
ffffffffc02005e6:	a559                	j	ffffffffc0200c6c <intr_enable>
ffffffffc02005e8:	e42a                	sd	a0,8(sp)
ffffffffc02005ea:	688000ef          	jal	ra,ffffffffc0200c72 <intr_disable>
ffffffffc02005ee:	6522                	ld	a0,8(sp)
ffffffffc02005f0:	4705                	li	a4,1
ffffffffc02005f2:	bf75                	j	ffffffffc02005ae <cons_putc+0xe>

ffffffffc02005f4 <cons_getc>:
ffffffffc02005f4:	1101                	addi	sp,sp,-32
ffffffffc02005f6:	ec06                	sd	ra,24(sp)
ffffffffc02005f8:	100027f3          	csrr	a5,sstatus
ffffffffc02005fc:	8b89                	andi	a5,a5,2
ffffffffc02005fe:	4801                	li	a6,0
ffffffffc0200600:	e3d5                	bnez	a5,ffffffffc02006a4 <cons_getc+0xb0>
ffffffffc0200602:	00091697          	auipc	a3,0x91
ffffffffc0200606:	e5e68693          	addi	a3,a3,-418 # ffffffffc0291460 <cons>
ffffffffc020060a:	07f00713          	li	a4,127
ffffffffc020060e:	20000313          	li	t1,512
ffffffffc0200612:	a021                	j	ffffffffc020061a <cons_getc+0x26>
ffffffffc0200614:	0ff57513          	zext.b	a0,a0
ffffffffc0200618:	ef91                	bnez	a5,ffffffffc0200634 <cons_getc+0x40>
ffffffffc020061a:	4501                	li	a0,0
ffffffffc020061c:	4581                	li	a1,0
ffffffffc020061e:	4601                	li	a2,0
ffffffffc0200620:	4889                	li	a7,2
ffffffffc0200622:	00000073          	ecall
ffffffffc0200626:	0005079b          	sext.w	a5,a0
ffffffffc020062a:	0207c763          	bltz	a5,ffffffffc0200658 <cons_getc+0x64>
ffffffffc020062e:	fee793e3          	bne	a5,a4,ffffffffc0200614 <cons_getc+0x20>
ffffffffc0200632:	4521                	li	a0,8
ffffffffc0200634:	2046a783          	lw	a5,516(a3)
ffffffffc0200638:	02079613          	slli	a2,a5,0x20
ffffffffc020063c:	9201                	srli	a2,a2,0x20
ffffffffc020063e:	2785                	addiw	a5,a5,1
ffffffffc0200640:	9636                	add	a2,a2,a3
ffffffffc0200642:	20f6a223          	sw	a5,516(a3)
ffffffffc0200646:	00a60023          	sb	a0,0(a2)
ffffffffc020064a:	fc6798e3          	bne	a5,t1,ffffffffc020061a <cons_getc+0x26>
ffffffffc020064e:	00091797          	auipc	a5,0x91
ffffffffc0200652:	0007ab23          	sw	zero,22(a5) # ffffffffc0291664 <cons+0x204>
ffffffffc0200656:	b7d1                	j	ffffffffc020061a <cons_getc+0x26>
ffffffffc0200658:	2006a783          	lw	a5,512(a3)
ffffffffc020065c:	2046a703          	lw	a4,516(a3)
ffffffffc0200660:	4501                	li	a0,0
ffffffffc0200662:	00f70f63          	beq	a4,a5,ffffffffc0200680 <cons_getc+0x8c>
ffffffffc0200666:	0017861b          	addiw	a2,a5,1
ffffffffc020066a:	1782                	slli	a5,a5,0x20
ffffffffc020066c:	9381                	srli	a5,a5,0x20
ffffffffc020066e:	97b6                	add	a5,a5,a3
ffffffffc0200670:	20c6a023          	sw	a2,512(a3)
ffffffffc0200674:	20000713          	li	a4,512
ffffffffc0200678:	0007c503          	lbu	a0,0(a5)
ffffffffc020067c:	00e60763          	beq	a2,a4,ffffffffc020068a <cons_getc+0x96>
ffffffffc0200680:	00081b63          	bnez	a6,ffffffffc0200696 <cons_getc+0xa2>
ffffffffc0200684:	60e2                	ld	ra,24(sp)
ffffffffc0200686:	6105                	addi	sp,sp,32
ffffffffc0200688:	8082                	ret
ffffffffc020068a:	00091797          	auipc	a5,0x91
ffffffffc020068e:	fc07ab23          	sw	zero,-42(a5) # ffffffffc0291660 <cons+0x200>
ffffffffc0200692:	fe0809e3          	beqz	a6,ffffffffc0200684 <cons_getc+0x90>
ffffffffc0200696:	e42a                	sd	a0,8(sp)
ffffffffc0200698:	5d4000ef          	jal	ra,ffffffffc0200c6c <intr_enable>
ffffffffc020069c:	60e2                	ld	ra,24(sp)
ffffffffc020069e:	6522                	ld	a0,8(sp)
ffffffffc02006a0:	6105                	addi	sp,sp,32
ffffffffc02006a2:	8082                	ret
ffffffffc02006a4:	5ce000ef          	jal	ra,ffffffffc0200c72 <intr_disable>
ffffffffc02006a8:	4805                	li	a6,1
ffffffffc02006aa:	bfa1                	j	ffffffffc0200602 <cons_getc+0xe>

ffffffffc02006ac <dtb_init>:
ffffffffc02006ac:	7119                	addi	sp,sp,-128
ffffffffc02006ae:	0000b517          	auipc	a0,0xb
ffffffffc02006b2:	1a250513          	addi	a0,a0,418 # ffffffffc020b850 <commands+0xa8>
ffffffffc02006b6:	fc86                	sd	ra,120(sp)
ffffffffc02006b8:	f8a2                	sd	s0,112(sp)
ffffffffc02006ba:	e8d2                	sd	s4,80(sp)
ffffffffc02006bc:	f4a6                	sd	s1,104(sp)
ffffffffc02006be:	f0ca                	sd	s2,96(sp)
ffffffffc02006c0:	ecce                	sd	s3,88(sp)
ffffffffc02006c2:	e4d6                	sd	s5,72(sp)
ffffffffc02006c4:	e0da                	sd	s6,64(sp)
ffffffffc02006c6:	fc5e                	sd	s7,56(sp)
ffffffffc02006c8:	f862                	sd	s8,48(sp)
ffffffffc02006ca:	f466                	sd	s9,40(sp)
ffffffffc02006cc:	f06a                	sd	s10,32(sp)
ffffffffc02006ce:	ec6e                	sd	s11,24(sp)
ffffffffc02006d0:	ad7ff0ef          	jal	ra,ffffffffc02001a6 <cprintf>
ffffffffc02006d4:	00014597          	auipc	a1,0x14
ffffffffc02006d8:	92c5b583          	ld	a1,-1748(a1) # ffffffffc0214000 <boot_hartid>
ffffffffc02006dc:	0000b517          	auipc	a0,0xb
ffffffffc02006e0:	18450513          	addi	a0,a0,388 # ffffffffc020b860 <commands+0xb8>
ffffffffc02006e4:	ac3ff0ef          	jal	ra,ffffffffc02001a6 <cprintf>
ffffffffc02006e8:	00014417          	auipc	s0,0x14
ffffffffc02006ec:	92040413          	addi	s0,s0,-1760 # ffffffffc0214008 <boot_dtb>
ffffffffc02006f0:	600c                	ld	a1,0(s0)
ffffffffc02006f2:	0000b517          	auipc	a0,0xb
ffffffffc02006f6:	17e50513          	addi	a0,a0,382 # ffffffffc020b870 <commands+0xc8>
ffffffffc02006fa:	aadff0ef          	jal	ra,ffffffffc02001a6 <cprintf>
ffffffffc02006fe:	00043a03          	ld	s4,0(s0)
ffffffffc0200702:	0000b517          	auipc	a0,0xb
ffffffffc0200706:	18650513          	addi	a0,a0,390 # ffffffffc020b888 <commands+0xe0>
ffffffffc020070a:	120a0463          	beqz	s4,ffffffffc0200832 <dtb_init+0x186>
ffffffffc020070e:	57f5                	li	a5,-3
ffffffffc0200710:	07fa                	slli	a5,a5,0x1e
ffffffffc0200712:	00fa0733          	add	a4,s4,a5
ffffffffc0200716:	431c                	lw	a5,0(a4)
ffffffffc0200718:	00ff0637          	lui	a2,0xff0
ffffffffc020071c:	6b41                	lui	s6,0x10
ffffffffc020071e:	0087d59b          	srliw	a1,a5,0x8
ffffffffc0200722:	0187969b          	slliw	a3,a5,0x18
ffffffffc0200726:	0187d51b          	srliw	a0,a5,0x18
ffffffffc020072a:	0105959b          	slliw	a1,a1,0x10
ffffffffc020072e:	0107d79b          	srliw	a5,a5,0x10
ffffffffc0200732:	8df1                	and	a1,a1,a2
ffffffffc0200734:	8ec9                	or	a3,a3,a0
ffffffffc0200736:	0087979b          	slliw	a5,a5,0x8
ffffffffc020073a:	1b7d                	addi	s6,s6,-1
ffffffffc020073c:	0167f7b3          	and	a5,a5,s6
ffffffffc0200740:	8dd5                	or	a1,a1,a3
ffffffffc0200742:	8ddd                	or	a1,a1,a5
ffffffffc0200744:	d00e07b7          	lui	a5,0xd00e0
ffffffffc0200748:	2581                	sext.w	a1,a1
ffffffffc020074a:	eed78793          	addi	a5,a5,-275 # ffffffffd00dfeed <end+0xfe495dd>
ffffffffc020074e:	10f59163          	bne	a1,a5,ffffffffc0200850 <dtb_init+0x1a4>
ffffffffc0200752:	471c                	lw	a5,8(a4)
ffffffffc0200754:	4754                	lw	a3,12(a4)
ffffffffc0200756:	4c81                	li	s9,0
ffffffffc0200758:	0087d59b          	srliw	a1,a5,0x8
ffffffffc020075c:	0086d51b          	srliw	a0,a3,0x8
ffffffffc0200760:	0186941b          	slliw	s0,a3,0x18
ffffffffc0200764:	0186d89b          	srliw	a7,a3,0x18
ffffffffc0200768:	01879a1b          	slliw	s4,a5,0x18
ffffffffc020076c:	0187d81b          	srliw	a6,a5,0x18
ffffffffc0200770:	0105151b          	slliw	a0,a0,0x10
ffffffffc0200774:	0106d69b          	srliw	a3,a3,0x10
ffffffffc0200778:	0105959b          	slliw	a1,a1,0x10
ffffffffc020077c:	0107d79b          	srliw	a5,a5,0x10
ffffffffc0200780:	8d71                	and	a0,a0,a2
ffffffffc0200782:	01146433          	or	s0,s0,a7
ffffffffc0200786:	0086969b          	slliw	a3,a3,0x8
ffffffffc020078a:	010a6a33          	or	s4,s4,a6
ffffffffc020078e:	8e6d                	and	a2,a2,a1
ffffffffc0200790:	0087979b          	slliw	a5,a5,0x8
ffffffffc0200794:	8c49                	or	s0,s0,a0
ffffffffc0200796:	0166f6b3          	and	a3,a3,s6
ffffffffc020079a:	00ca6a33          	or	s4,s4,a2
ffffffffc020079e:	0167f7b3          	and	a5,a5,s6
ffffffffc02007a2:	8c55                	or	s0,s0,a3
ffffffffc02007a4:	00fa6a33          	or	s4,s4,a5
ffffffffc02007a8:	1402                	slli	s0,s0,0x20
ffffffffc02007aa:	1a02                	slli	s4,s4,0x20
ffffffffc02007ac:	9001                	srli	s0,s0,0x20
ffffffffc02007ae:	020a5a13          	srli	s4,s4,0x20
ffffffffc02007b2:	943a                	add	s0,s0,a4
ffffffffc02007b4:	9a3a                	add	s4,s4,a4
ffffffffc02007b6:	00ff0c37          	lui	s8,0xff0
ffffffffc02007ba:	4b8d                	li	s7,3
ffffffffc02007bc:	0000b917          	auipc	s2,0xb
ffffffffc02007c0:	11c90913          	addi	s2,s2,284 # ffffffffc020b8d8 <commands+0x130>
ffffffffc02007c4:	49bd                	li	s3,15
ffffffffc02007c6:	4d91                	li	s11,4
ffffffffc02007c8:	4d05                	li	s10,1
ffffffffc02007ca:	0000b497          	auipc	s1,0xb
ffffffffc02007ce:	10648493          	addi	s1,s1,262 # ffffffffc020b8d0 <commands+0x128>
ffffffffc02007d2:	000a2703          	lw	a4,0(s4)
ffffffffc02007d6:	004a0a93          	addi	s5,s4,4
ffffffffc02007da:	0087569b          	srliw	a3,a4,0x8
ffffffffc02007de:	0187179b          	slliw	a5,a4,0x18
ffffffffc02007e2:	0187561b          	srliw	a2,a4,0x18
ffffffffc02007e6:	0106969b          	slliw	a3,a3,0x10
ffffffffc02007ea:	0107571b          	srliw	a4,a4,0x10
ffffffffc02007ee:	8fd1                	or	a5,a5,a2
ffffffffc02007f0:	0186f6b3          	and	a3,a3,s8
ffffffffc02007f4:	0087171b          	slliw	a4,a4,0x8
ffffffffc02007f8:	8fd5                	or	a5,a5,a3
ffffffffc02007fa:	00eb7733          	and	a4,s6,a4
ffffffffc02007fe:	8fd9                	or	a5,a5,a4
ffffffffc0200800:	2781                	sext.w	a5,a5
ffffffffc0200802:	09778c63          	beq	a5,s7,ffffffffc020089a <dtb_init+0x1ee>
ffffffffc0200806:	00fbea63          	bltu	s7,a5,ffffffffc020081a <dtb_init+0x16e>
ffffffffc020080a:	07a78663          	beq	a5,s10,ffffffffc0200876 <dtb_init+0x1ca>
ffffffffc020080e:	4709                	li	a4,2
ffffffffc0200810:	00e79763          	bne	a5,a4,ffffffffc020081e <dtb_init+0x172>
ffffffffc0200814:	4c81                	li	s9,0
ffffffffc0200816:	8a56                	mv	s4,s5
ffffffffc0200818:	bf6d                	j	ffffffffc02007d2 <dtb_init+0x126>
ffffffffc020081a:	ffb78ee3          	beq	a5,s11,ffffffffc0200816 <dtb_init+0x16a>
ffffffffc020081e:	0000b517          	auipc	a0,0xb
ffffffffc0200822:	13250513          	addi	a0,a0,306 # ffffffffc020b950 <commands+0x1a8>
ffffffffc0200826:	981ff0ef          	jal	ra,ffffffffc02001a6 <cprintf>
ffffffffc020082a:	0000b517          	auipc	a0,0xb
ffffffffc020082e:	15e50513          	addi	a0,a0,350 # ffffffffc020b988 <commands+0x1e0>
ffffffffc0200832:	7446                	ld	s0,112(sp)
ffffffffc0200834:	70e6                	ld	ra,120(sp)
ffffffffc0200836:	74a6                	ld	s1,104(sp)
ffffffffc0200838:	7906                	ld	s2,96(sp)
ffffffffc020083a:	69e6                	ld	s3,88(sp)
ffffffffc020083c:	6a46                	ld	s4,80(sp)
ffffffffc020083e:	6aa6                	ld	s5,72(sp)
ffffffffc0200840:	6b06                	ld	s6,64(sp)
ffffffffc0200842:	7be2                	ld	s7,56(sp)
ffffffffc0200844:	7c42                	ld	s8,48(sp)
ffffffffc0200846:	7ca2                	ld	s9,40(sp)
ffffffffc0200848:	7d02                	ld	s10,32(sp)
ffffffffc020084a:	6de2                	ld	s11,24(sp)
ffffffffc020084c:	6109                	addi	sp,sp,128
ffffffffc020084e:	baa1                	j	ffffffffc02001a6 <cprintf>
ffffffffc0200850:	7446                	ld	s0,112(sp)
ffffffffc0200852:	70e6                	ld	ra,120(sp)
ffffffffc0200854:	74a6                	ld	s1,104(sp)
ffffffffc0200856:	7906                	ld	s2,96(sp)
ffffffffc0200858:	69e6                	ld	s3,88(sp)
ffffffffc020085a:	6a46                	ld	s4,80(sp)
ffffffffc020085c:	6aa6                	ld	s5,72(sp)
ffffffffc020085e:	6b06                	ld	s6,64(sp)
ffffffffc0200860:	7be2                	ld	s7,56(sp)
ffffffffc0200862:	7c42                	ld	s8,48(sp)
ffffffffc0200864:	7ca2                	ld	s9,40(sp)
ffffffffc0200866:	7d02                	ld	s10,32(sp)
ffffffffc0200868:	6de2                	ld	s11,24(sp)
ffffffffc020086a:	0000b517          	auipc	a0,0xb
ffffffffc020086e:	03e50513          	addi	a0,a0,62 # ffffffffc020b8a8 <commands+0x100>
ffffffffc0200872:	6109                	addi	sp,sp,128
ffffffffc0200874:	ba0d                	j	ffffffffc02001a6 <cprintf>
ffffffffc0200876:	8556                	mv	a0,s5
ffffffffc0200878:	3bb0a0ef          	jal	ra,ffffffffc020b432 <strlen>
ffffffffc020087c:	8a2a                	mv	s4,a0
ffffffffc020087e:	4619                	li	a2,6
ffffffffc0200880:	85a6                	mv	a1,s1
ffffffffc0200882:	8556                	mv	a0,s5
ffffffffc0200884:	2a01                	sext.w	s4,s4
ffffffffc0200886:	4130a0ef          	jal	ra,ffffffffc020b498 <strncmp>
ffffffffc020088a:	e111                	bnez	a0,ffffffffc020088e <dtb_init+0x1e2>
ffffffffc020088c:	4c85                	li	s9,1
ffffffffc020088e:	0a91                	addi	s5,s5,4
ffffffffc0200890:	9ad2                	add	s5,s5,s4
ffffffffc0200892:	ffcafa93          	andi	s5,s5,-4
ffffffffc0200896:	8a56                	mv	s4,s5
ffffffffc0200898:	bf2d                	j	ffffffffc02007d2 <dtb_init+0x126>
ffffffffc020089a:	004a2783          	lw	a5,4(s4)
ffffffffc020089e:	00ca0693          	addi	a3,s4,12
ffffffffc02008a2:	0087d71b          	srliw	a4,a5,0x8
ffffffffc02008a6:	01879a9b          	slliw	s5,a5,0x18
ffffffffc02008aa:	0187d61b          	srliw	a2,a5,0x18
ffffffffc02008ae:	0107171b          	slliw	a4,a4,0x10
ffffffffc02008b2:	0107d79b          	srliw	a5,a5,0x10
ffffffffc02008b6:	00caeab3          	or	s5,s5,a2
ffffffffc02008ba:	01877733          	and	a4,a4,s8
ffffffffc02008be:	0087979b          	slliw	a5,a5,0x8
ffffffffc02008c2:	00eaeab3          	or	s5,s5,a4
ffffffffc02008c6:	00fb77b3          	and	a5,s6,a5
ffffffffc02008ca:	00faeab3          	or	s5,s5,a5
ffffffffc02008ce:	2a81                	sext.w	s5,s5
ffffffffc02008d0:	000c9c63          	bnez	s9,ffffffffc02008e8 <dtb_init+0x23c>
ffffffffc02008d4:	1a82                	slli	s5,s5,0x20
ffffffffc02008d6:	00368793          	addi	a5,a3,3
ffffffffc02008da:	020ada93          	srli	s5,s5,0x20
ffffffffc02008de:	9abe                	add	s5,s5,a5
ffffffffc02008e0:	ffcafa93          	andi	s5,s5,-4
ffffffffc02008e4:	8a56                	mv	s4,s5
ffffffffc02008e6:	b5f5                	j	ffffffffc02007d2 <dtb_init+0x126>
ffffffffc02008e8:	008a2783          	lw	a5,8(s4)
ffffffffc02008ec:	85ca                	mv	a1,s2
ffffffffc02008ee:	e436                	sd	a3,8(sp)
ffffffffc02008f0:	0087d51b          	srliw	a0,a5,0x8
ffffffffc02008f4:	0187d61b          	srliw	a2,a5,0x18
ffffffffc02008f8:	0187971b          	slliw	a4,a5,0x18
ffffffffc02008fc:	0105151b          	slliw	a0,a0,0x10
ffffffffc0200900:	0107d79b          	srliw	a5,a5,0x10
ffffffffc0200904:	8f51                	or	a4,a4,a2
ffffffffc0200906:	01857533          	and	a0,a0,s8
ffffffffc020090a:	0087979b          	slliw	a5,a5,0x8
ffffffffc020090e:	8d59                	or	a0,a0,a4
ffffffffc0200910:	00fb77b3          	and	a5,s6,a5
ffffffffc0200914:	8d5d                	or	a0,a0,a5
ffffffffc0200916:	1502                	slli	a0,a0,0x20
ffffffffc0200918:	9101                	srli	a0,a0,0x20
ffffffffc020091a:	9522                	add	a0,a0,s0
ffffffffc020091c:	35f0a0ef          	jal	ra,ffffffffc020b47a <strcmp>
ffffffffc0200920:	66a2                	ld	a3,8(sp)
ffffffffc0200922:	f94d                	bnez	a0,ffffffffc02008d4 <dtb_init+0x228>
ffffffffc0200924:	fb59f8e3          	bgeu	s3,s5,ffffffffc02008d4 <dtb_init+0x228>
ffffffffc0200928:	00ca3783          	ld	a5,12(s4)
ffffffffc020092c:	014a3703          	ld	a4,20(s4)
ffffffffc0200930:	0000b517          	auipc	a0,0xb
ffffffffc0200934:	fb050513          	addi	a0,a0,-80 # ffffffffc020b8e0 <commands+0x138>
ffffffffc0200938:	4207d613          	srai	a2,a5,0x20
ffffffffc020093c:	0087d31b          	srliw	t1,a5,0x8
ffffffffc0200940:	42075593          	srai	a1,a4,0x20
ffffffffc0200944:	0187de1b          	srliw	t3,a5,0x18
ffffffffc0200948:	0186581b          	srliw	a6,a2,0x18
ffffffffc020094c:	0187941b          	slliw	s0,a5,0x18
ffffffffc0200950:	0107d89b          	srliw	a7,a5,0x10
ffffffffc0200954:	0187d693          	srli	a3,a5,0x18
ffffffffc0200958:	01861f1b          	slliw	t5,a2,0x18
ffffffffc020095c:	0087579b          	srliw	a5,a4,0x8
ffffffffc0200960:	0103131b          	slliw	t1,t1,0x10
ffffffffc0200964:	0106561b          	srliw	a2,a2,0x10
ffffffffc0200968:	010f6f33          	or	t5,t5,a6
ffffffffc020096c:	0187529b          	srliw	t0,a4,0x18
ffffffffc0200970:	0185df9b          	srliw	t6,a1,0x18
ffffffffc0200974:	01837333          	and	t1,t1,s8
ffffffffc0200978:	01c46433          	or	s0,s0,t3
ffffffffc020097c:	0186f6b3          	and	a3,a3,s8
ffffffffc0200980:	01859e1b          	slliw	t3,a1,0x18
ffffffffc0200984:	01871e9b          	slliw	t4,a4,0x18
ffffffffc0200988:	0107581b          	srliw	a6,a4,0x10
ffffffffc020098c:	0086161b          	slliw	a2,a2,0x8
ffffffffc0200990:	8361                	srli	a4,a4,0x18
ffffffffc0200992:	0107979b          	slliw	a5,a5,0x10
ffffffffc0200996:	0105d59b          	srliw	a1,a1,0x10
ffffffffc020099a:	01e6e6b3          	or	a3,a3,t5
ffffffffc020099e:	00cb7633          	and	a2,s6,a2
ffffffffc02009a2:	0088181b          	slliw	a6,a6,0x8
ffffffffc02009a6:	0085959b          	slliw	a1,a1,0x8
ffffffffc02009aa:	00646433          	or	s0,s0,t1
ffffffffc02009ae:	0187f7b3          	and	a5,a5,s8
ffffffffc02009b2:	01fe6333          	or	t1,t3,t6
ffffffffc02009b6:	01877c33          	and	s8,a4,s8
ffffffffc02009ba:	0088989b          	slliw	a7,a7,0x8
ffffffffc02009be:	011b78b3          	and	a7,s6,a7
ffffffffc02009c2:	005eeeb3          	or	t4,t4,t0
ffffffffc02009c6:	00c6e733          	or	a4,a3,a2
ffffffffc02009ca:	006c6c33          	or	s8,s8,t1
ffffffffc02009ce:	010b76b3          	and	a3,s6,a6
ffffffffc02009d2:	00bb7b33          	and	s6,s6,a1
ffffffffc02009d6:	01d7e7b3          	or	a5,a5,t4
ffffffffc02009da:	016c6b33          	or	s6,s8,s6
ffffffffc02009de:	01146433          	or	s0,s0,a7
ffffffffc02009e2:	8fd5                	or	a5,a5,a3
ffffffffc02009e4:	1702                	slli	a4,a4,0x20
ffffffffc02009e6:	1b02                	slli	s6,s6,0x20
ffffffffc02009e8:	1782                	slli	a5,a5,0x20
ffffffffc02009ea:	9301                	srli	a4,a4,0x20
ffffffffc02009ec:	1402                	slli	s0,s0,0x20
ffffffffc02009ee:	020b5b13          	srli	s6,s6,0x20
ffffffffc02009f2:	0167eb33          	or	s6,a5,s6
ffffffffc02009f6:	8c59                	or	s0,s0,a4
ffffffffc02009f8:	faeff0ef          	jal	ra,ffffffffc02001a6 <cprintf>
ffffffffc02009fc:	85a2                	mv	a1,s0
ffffffffc02009fe:	0000b517          	auipc	a0,0xb
ffffffffc0200a02:	f0250513          	addi	a0,a0,-254 # ffffffffc020b900 <commands+0x158>
ffffffffc0200a06:	fa0ff0ef          	jal	ra,ffffffffc02001a6 <cprintf>
ffffffffc0200a0a:	014b5613          	srli	a2,s6,0x14
ffffffffc0200a0e:	85da                	mv	a1,s6
ffffffffc0200a10:	0000b517          	auipc	a0,0xb
ffffffffc0200a14:	f0850513          	addi	a0,a0,-248 # ffffffffc020b918 <commands+0x170>
ffffffffc0200a18:	f8eff0ef          	jal	ra,ffffffffc02001a6 <cprintf>
ffffffffc0200a1c:	008b05b3          	add	a1,s6,s0
ffffffffc0200a20:	15fd                	addi	a1,a1,-1
ffffffffc0200a22:	0000b517          	auipc	a0,0xb
ffffffffc0200a26:	f1650513          	addi	a0,a0,-234 # ffffffffc020b938 <commands+0x190>
ffffffffc0200a2a:	f7cff0ef          	jal	ra,ffffffffc02001a6 <cprintf>
ffffffffc0200a2e:	0000b517          	auipc	a0,0xb
ffffffffc0200a32:	f5a50513          	addi	a0,a0,-166 # ffffffffc020b988 <commands+0x1e0>
ffffffffc0200a36:	00096797          	auipc	a5,0x96
ffffffffc0200a3a:	e487b123          	sd	s0,-446(a5) # ffffffffc0296878 <memory_base>
ffffffffc0200a3e:	00096797          	auipc	a5,0x96
ffffffffc0200a42:	e567b123          	sd	s6,-446(a5) # ffffffffc0296880 <memory_size>
ffffffffc0200a46:	b3f5                	j	ffffffffc0200832 <dtb_init+0x186>

ffffffffc0200a48 <get_memory_base>:
ffffffffc0200a48:	00096517          	auipc	a0,0x96
ffffffffc0200a4c:	e3053503          	ld	a0,-464(a0) # ffffffffc0296878 <memory_base>
ffffffffc0200a50:	8082                	ret

ffffffffc0200a52 <get_memory_size>:
ffffffffc0200a52:	00096517          	auipc	a0,0x96
ffffffffc0200a56:	e2e53503          	ld	a0,-466(a0) # ffffffffc0296880 <memory_size>
ffffffffc0200a5a:	8082                	ret

ffffffffc0200a5c <ide_init>:
ffffffffc0200a5c:	1141                	addi	sp,sp,-16
ffffffffc0200a5e:	00091597          	auipc	a1,0x91
ffffffffc0200a62:	c5a58593          	addi	a1,a1,-934 # ffffffffc02916b8 <ide_devices+0x50>
ffffffffc0200a66:	4505                	li	a0,1
ffffffffc0200a68:	e022                	sd	s0,0(sp)
ffffffffc0200a6a:	00091797          	auipc	a5,0x91
ffffffffc0200a6e:	be07af23          	sw	zero,-1026(a5) # ffffffffc0291668 <ide_devices>
ffffffffc0200a72:	00091797          	auipc	a5,0x91
ffffffffc0200a76:	c407a323          	sw	zero,-954(a5) # ffffffffc02916b8 <ide_devices+0x50>
ffffffffc0200a7a:	00091797          	auipc	a5,0x91
ffffffffc0200a7e:	c807a723          	sw	zero,-882(a5) # ffffffffc0291708 <ide_devices+0xa0>
ffffffffc0200a82:	00091797          	auipc	a5,0x91
ffffffffc0200a86:	cc07ab23          	sw	zero,-810(a5) # ffffffffc0291758 <ide_devices+0xf0>
ffffffffc0200a8a:	e406                	sd	ra,8(sp)
ffffffffc0200a8c:	00091417          	auipc	s0,0x91
ffffffffc0200a90:	bdc40413          	addi	s0,s0,-1060 # ffffffffc0291668 <ide_devices>
ffffffffc0200a94:	23a000ef          	jal	ra,ffffffffc0200cce <ramdisk_init>
ffffffffc0200a98:	483c                	lw	a5,80(s0)
ffffffffc0200a9a:	cf99                	beqz	a5,ffffffffc0200ab8 <ide_init+0x5c>
ffffffffc0200a9c:	00091597          	auipc	a1,0x91
ffffffffc0200aa0:	c6c58593          	addi	a1,a1,-916 # ffffffffc0291708 <ide_devices+0xa0>
ffffffffc0200aa4:	4509                	li	a0,2
ffffffffc0200aa6:	228000ef          	jal	ra,ffffffffc0200cce <ramdisk_init>
ffffffffc0200aaa:	0a042783          	lw	a5,160(s0)
ffffffffc0200aae:	c785                	beqz	a5,ffffffffc0200ad6 <ide_init+0x7a>
ffffffffc0200ab0:	60a2                	ld	ra,8(sp)
ffffffffc0200ab2:	6402                	ld	s0,0(sp)
ffffffffc0200ab4:	0141                	addi	sp,sp,16
ffffffffc0200ab6:	8082                	ret
ffffffffc0200ab8:	0000b697          	auipc	a3,0xb
ffffffffc0200abc:	ee868693          	addi	a3,a3,-280 # ffffffffc020b9a0 <commands+0x1f8>
ffffffffc0200ac0:	0000b617          	auipc	a2,0xb
ffffffffc0200ac4:	ef860613          	addi	a2,a2,-264 # ffffffffc020b9b8 <commands+0x210>
ffffffffc0200ac8:	45c5                	li	a1,17
ffffffffc0200aca:	0000b517          	auipc	a0,0xb
ffffffffc0200ace:	f0650513          	addi	a0,a0,-250 # ffffffffc020b9d0 <commands+0x228>
ffffffffc0200ad2:	9cdff0ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc0200ad6:	0000b697          	auipc	a3,0xb
ffffffffc0200ada:	f1268693          	addi	a3,a3,-238 # ffffffffc020b9e8 <commands+0x240>
ffffffffc0200ade:	0000b617          	auipc	a2,0xb
ffffffffc0200ae2:	eda60613          	addi	a2,a2,-294 # ffffffffc020b9b8 <commands+0x210>
ffffffffc0200ae6:	45d1                	li	a1,20
ffffffffc0200ae8:	0000b517          	auipc	a0,0xb
ffffffffc0200aec:	ee850513          	addi	a0,a0,-280 # ffffffffc020b9d0 <commands+0x228>
ffffffffc0200af0:	9afff0ef          	jal	ra,ffffffffc020049e <__panic>

ffffffffc0200af4 <ide_device_valid>:
ffffffffc0200af4:	478d                	li	a5,3
ffffffffc0200af6:	00a7ef63          	bltu	a5,a0,ffffffffc0200b14 <ide_device_valid+0x20>
ffffffffc0200afa:	00251793          	slli	a5,a0,0x2
ffffffffc0200afe:	953e                	add	a0,a0,a5
ffffffffc0200b00:	0512                	slli	a0,a0,0x4
ffffffffc0200b02:	00091797          	auipc	a5,0x91
ffffffffc0200b06:	b6678793          	addi	a5,a5,-1178 # ffffffffc0291668 <ide_devices>
ffffffffc0200b0a:	953e                	add	a0,a0,a5
ffffffffc0200b0c:	4108                	lw	a0,0(a0)
ffffffffc0200b0e:	00a03533          	snez	a0,a0
ffffffffc0200b12:	8082                	ret
ffffffffc0200b14:	4501                	li	a0,0
ffffffffc0200b16:	8082                	ret

ffffffffc0200b18 <ide_device_size>:
ffffffffc0200b18:	478d                	li	a5,3
ffffffffc0200b1a:	02a7e163          	bltu	a5,a0,ffffffffc0200b3c <ide_device_size+0x24>
ffffffffc0200b1e:	00251793          	slli	a5,a0,0x2
ffffffffc0200b22:	953e                	add	a0,a0,a5
ffffffffc0200b24:	0512                	slli	a0,a0,0x4
ffffffffc0200b26:	00091797          	auipc	a5,0x91
ffffffffc0200b2a:	b4278793          	addi	a5,a5,-1214 # ffffffffc0291668 <ide_devices>
ffffffffc0200b2e:	97aa                	add	a5,a5,a0
ffffffffc0200b30:	4398                	lw	a4,0(a5)
ffffffffc0200b32:	4501                	li	a0,0
ffffffffc0200b34:	c709                	beqz	a4,ffffffffc0200b3e <ide_device_size+0x26>
ffffffffc0200b36:	0087e503          	lwu	a0,8(a5)
ffffffffc0200b3a:	8082                	ret
ffffffffc0200b3c:	4501                	li	a0,0
ffffffffc0200b3e:	8082                	ret

ffffffffc0200b40 <ide_read_secs>:
ffffffffc0200b40:	1141                	addi	sp,sp,-16
ffffffffc0200b42:	e406                	sd	ra,8(sp)
ffffffffc0200b44:	08000793          	li	a5,128
ffffffffc0200b48:	04d7e763          	bltu	a5,a3,ffffffffc0200b96 <ide_read_secs+0x56>
ffffffffc0200b4c:	478d                	li	a5,3
ffffffffc0200b4e:	0005081b          	sext.w	a6,a0
ffffffffc0200b52:	04a7e263          	bltu	a5,a0,ffffffffc0200b96 <ide_read_secs+0x56>
ffffffffc0200b56:	00281793          	slli	a5,a6,0x2
ffffffffc0200b5a:	97c2                	add	a5,a5,a6
ffffffffc0200b5c:	0792                	slli	a5,a5,0x4
ffffffffc0200b5e:	00091817          	auipc	a6,0x91
ffffffffc0200b62:	b0a80813          	addi	a6,a6,-1270 # ffffffffc0291668 <ide_devices>
ffffffffc0200b66:	97c2                	add	a5,a5,a6
ffffffffc0200b68:	0007a883          	lw	a7,0(a5)
ffffffffc0200b6c:	02088563          	beqz	a7,ffffffffc0200b96 <ide_read_secs+0x56>
ffffffffc0200b70:	100008b7          	lui	a7,0x10000
ffffffffc0200b74:	0515f163          	bgeu	a1,a7,ffffffffc0200bb6 <ide_read_secs+0x76>
ffffffffc0200b78:	1582                	slli	a1,a1,0x20
ffffffffc0200b7a:	9181                	srli	a1,a1,0x20
ffffffffc0200b7c:	00d58733          	add	a4,a1,a3
ffffffffc0200b80:	02e8eb63          	bltu	a7,a4,ffffffffc0200bb6 <ide_read_secs+0x76>
ffffffffc0200b84:	00251713          	slli	a4,a0,0x2
ffffffffc0200b88:	60a2                	ld	ra,8(sp)
ffffffffc0200b8a:	63bc                	ld	a5,64(a5)
ffffffffc0200b8c:	953a                	add	a0,a0,a4
ffffffffc0200b8e:	0512                	slli	a0,a0,0x4
ffffffffc0200b90:	9542                	add	a0,a0,a6
ffffffffc0200b92:	0141                	addi	sp,sp,16
ffffffffc0200b94:	8782                	jr	a5
ffffffffc0200b96:	0000b697          	auipc	a3,0xb
ffffffffc0200b9a:	e6a68693          	addi	a3,a3,-406 # ffffffffc020ba00 <commands+0x258>
ffffffffc0200b9e:	0000b617          	auipc	a2,0xb
ffffffffc0200ba2:	e1a60613          	addi	a2,a2,-486 # ffffffffc020b9b8 <commands+0x210>
ffffffffc0200ba6:	02200593          	li	a1,34
ffffffffc0200baa:	0000b517          	auipc	a0,0xb
ffffffffc0200bae:	e2650513          	addi	a0,a0,-474 # ffffffffc020b9d0 <commands+0x228>
ffffffffc0200bb2:	8edff0ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc0200bb6:	0000b697          	auipc	a3,0xb
ffffffffc0200bba:	e7268693          	addi	a3,a3,-398 # ffffffffc020ba28 <commands+0x280>
ffffffffc0200bbe:	0000b617          	auipc	a2,0xb
ffffffffc0200bc2:	dfa60613          	addi	a2,a2,-518 # ffffffffc020b9b8 <commands+0x210>
ffffffffc0200bc6:	02300593          	li	a1,35
ffffffffc0200bca:	0000b517          	auipc	a0,0xb
ffffffffc0200bce:	e0650513          	addi	a0,a0,-506 # ffffffffc020b9d0 <commands+0x228>
ffffffffc0200bd2:	8cdff0ef          	jal	ra,ffffffffc020049e <__panic>

ffffffffc0200bd6 <ide_write_secs>:
ffffffffc0200bd6:	1141                	addi	sp,sp,-16
ffffffffc0200bd8:	e406                	sd	ra,8(sp)
ffffffffc0200bda:	08000793          	li	a5,128
ffffffffc0200bde:	04d7e763          	bltu	a5,a3,ffffffffc0200c2c <ide_write_secs+0x56>
ffffffffc0200be2:	478d                	li	a5,3
ffffffffc0200be4:	0005081b          	sext.w	a6,a0
ffffffffc0200be8:	04a7e263          	bltu	a5,a0,ffffffffc0200c2c <ide_write_secs+0x56>
ffffffffc0200bec:	00281793          	slli	a5,a6,0x2
ffffffffc0200bf0:	97c2                	add	a5,a5,a6
ffffffffc0200bf2:	0792                	slli	a5,a5,0x4
ffffffffc0200bf4:	00091817          	auipc	a6,0x91
ffffffffc0200bf8:	a7480813          	addi	a6,a6,-1420 # ffffffffc0291668 <ide_devices>
ffffffffc0200bfc:	97c2                	add	a5,a5,a6
ffffffffc0200bfe:	0007a883          	lw	a7,0(a5)
ffffffffc0200c02:	02088563          	beqz	a7,ffffffffc0200c2c <ide_write_secs+0x56>
ffffffffc0200c06:	100008b7          	lui	a7,0x10000
ffffffffc0200c0a:	0515f163          	bgeu	a1,a7,ffffffffc0200c4c <ide_write_secs+0x76>
ffffffffc0200c0e:	1582                	slli	a1,a1,0x20
ffffffffc0200c10:	9181                	srli	a1,a1,0x20
ffffffffc0200c12:	00d58733          	add	a4,a1,a3
ffffffffc0200c16:	02e8eb63          	bltu	a7,a4,ffffffffc0200c4c <ide_write_secs+0x76>
ffffffffc0200c1a:	00251713          	slli	a4,a0,0x2
ffffffffc0200c1e:	60a2                	ld	ra,8(sp)
ffffffffc0200c20:	67bc                	ld	a5,72(a5)
ffffffffc0200c22:	953a                	add	a0,a0,a4
ffffffffc0200c24:	0512                	slli	a0,a0,0x4
ffffffffc0200c26:	9542                	add	a0,a0,a6
ffffffffc0200c28:	0141                	addi	sp,sp,16
ffffffffc0200c2a:	8782                	jr	a5
ffffffffc0200c2c:	0000b697          	auipc	a3,0xb
ffffffffc0200c30:	dd468693          	addi	a3,a3,-556 # ffffffffc020ba00 <commands+0x258>
ffffffffc0200c34:	0000b617          	auipc	a2,0xb
ffffffffc0200c38:	d8460613          	addi	a2,a2,-636 # ffffffffc020b9b8 <commands+0x210>
ffffffffc0200c3c:	02900593          	li	a1,41
ffffffffc0200c40:	0000b517          	auipc	a0,0xb
ffffffffc0200c44:	d9050513          	addi	a0,a0,-624 # ffffffffc020b9d0 <commands+0x228>
ffffffffc0200c48:	857ff0ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc0200c4c:	0000b697          	auipc	a3,0xb
ffffffffc0200c50:	ddc68693          	addi	a3,a3,-548 # ffffffffc020ba28 <commands+0x280>
ffffffffc0200c54:	0000b617          	auipc	a2,0xb
ffffffffc0200c58:	d6460613          	addi	a2,a2,-668 # ffffffffc020b9b8 <commands+0x210>
ffffffffc0200c5c:	02a00593          	li	a1,42
ffffffffc0200c60:	0000b517          	auipc	a0,0xb
ffffffffc0200c64:	d7050513          	addi	a0,a0,-656 # ffffffffc020b9d0 <commands+0x228>
ffffffffc0200c68:	837ff0ef          	jal	ra,ffffffffc020049e <__panic>

ffffffffc0200c6c <intr_enable>:
ffffffffc0200c6c:	100167f3          	csrrsi	a5,sstatus,2
ffffffffc0200c70:	8082                	ret

ffffffffc0200c72 <intr_disable>:
ffffffffc0200c72:	100177f3          	csrrci	a5,sstatus,2
ffffffffc0200c76:	8082                	ret

ffffffffc0200c78 <pic_init>:
ffffffffc0200c78:	8082                	ret

ffffffffc0200c7a <ramdisk_write>:
ffffffffc0200c7a:	00856703          	lwu	a4,8(a0)
ffffffffc0200c7e:	1141                	addi	sp,sp,-16
ffffffffc0200c80:	e406                	sd	ra,8(sp)
ffffffffc0200c82:	8f0d                	sub	a4,a4,a1
ffffffffc0200c84:	87ae                	mv	a5,a1
ffffffffc0200c86:	85b2                	mv	a1,a2
ffffffffc0200c88:	00e6f363          	bgeu	a3,a4,ffffffffc0200c8e <ramdisk_write+0x14>
ffffffffc0200c8c:	8736                	mv	a4,a3
ffffffffc0200c8e:	6908                	ld	a0,16(a0)
ffffffffc0200c90:	07a6                	slli	a5,a5,0x9
ffffffffc0200c92:	00971613          	slli	a2,a4,0x9
ffffffffc0200c96:	953e                	add	a0,a0,a5
ffffffffc0200c98:	08f0a0ef          	jal	ra,ffffffffc020b526 <memcpy>
ffffffffc0200c9c:	60a2                	ld	ra,8(sp)
ffffffffc0200c9e:	4501                	li	a0,0
ffffffffc0200ca0:	0141                	addi	sp,sp,16
ffffffffc0200ca2:	8082                	ret

ffffffffc0200ca4 <ramdisk_read>:
ffffffffc0200ca4:	00856783          	lwu	a5,8(a0)
ffffffffc0200ca8:	1141                	addi	sp,sp,-16
ffffffffc0200caa:	e406                	sd	ra,8(sp)
ffffffffc0200cac:	8f8d                	sub	a5,a5,a1
ffffffffc0200cae:	872a                	mv	a4,a0
ffffffffc0200cb0:	8532                	mv	a0,a2
ffffffffc0200cb2:	00f6f363          	bgeu	a3,a5,ffffffffc0200cb8 <ramdisk_read+0x14>
ffffffffc0200cb6:	87b6                	mv	a5,a3
ffffffffc0200cb8:	6b18                	ld	a4,16(a4)
ffffffffc0200cba:	05a6                	slli	a1,a1,0x9
ffffffffc0200cbc:	00979613          	slli	a2,a5,0x9
ffffffffc0200cc0:	95ba                	add	a1,a1,a4
ffffffffc0200cc2:	0650a0ef          	jal	ra,ffffffffc020b526 <memcpy>
ffffffffc0200cc6:	60a2                	ld	ra,8(sp)
ffffffffc0200cc8:	4501                	li	a0,0
ffffffffc0200cca:	0141                	addi	sp,sp,16
ffffffffc0200ccc:	8082                	ret

ffffffffc0200cce <ramdisk_init>:
ffffffffc0200cce:	1101                	addi	sp,sp,-32
ffffffffc0200cd0:	e822                	sd	s0,16(sp)
ffffffffc0200cd2:	842e                	mv	s0,a1
ffffffffc0200cd4:	e426                	sd	s1,8(sp)
ffffffffc0200cd6:	05000613          	li	a2,80
ffffffffc0200cda:	84aa                	mv	s1,a0
ffffffffc0200cdc:	4581                	li	a1,0
ffffffffc0200cde:	8522                	mv	a0,s0
ffffffffc0200ce0:	ec06                	sd	ra,24(sp)
ffffffffc0200ce2:	e04a                	sd	s2,0(sp)
ffffffffc0200ce4:	7f00a0ef          	jal	ra,ffffffffc020b4d4 <memset>
ffffffffc0200ce8:	4785                	li	a5,1
ffffffffc0200cea:	06f48b63          	beq	s1,a5,ffffffffc0200d60 <ramdisk_init+0x92>
ffffffffc0200cee:	4789                	li	a5,2
ffffffffc0200cf0:	00090617          	auipc	a2,0x90
ffffffffc0200cf4:	32060613          	addi	a2,a2,800 # ffffffffc0291010 <arena>
ffffffffc0200cf8:	0001b917          	auipc	s2,0x1b
ffffffffc0200cfc:	01890913          	addi	s2,s2,24 # ffffffffc021bd10 <_binary_bin_sfs_img_start>
ffffffffc0200d00:	08f49563          	bne	s1,a5,ffffffffc0200d8a <ramdisk_init+0xbc>
ffffffffc0200d04:	06c90863          	beq	s2,a2,ffffffffc0200d74 <ramdisk_init+0xa6>
ffffffffc0200d08:	412604b3          	sub	s1,a2,s2
ffffffffc0200d0c:	86a6                	mv	a3,s1
ffffffffc0200d0e:	85ca                	mv	a1,s2
ffffffffc0200d10:	167d                	addi	a2,a2,-1
ffffffffc0200d12:	0000b517          	auipc	a0,0xb
ffffffffc0200d16:	d6e50513          	addi	a0,a0,-658 # ffffffffc020ba80 <commands+0x2d8>
ffffffffc0200d1a:	c8cff0ef          	jal	ra,ffffffffc02001a6 <cprintf>
ffffffffc0200d1e:	57fd                	li	a5,-1
ffffffffc0200d20:	1782                	slli	a5,a5,0x20
ffffffffc0200d22:	0785                	addi	a5,a5,1
ffffffffc0200d24:	0094d49b          	srliw	s1,s1,0x9
ffffffffc0200d28:	e01c                	sd	a5,0(s0)
ffffffffc0200d2a:	c404                	sw	s1,8(s0)
ffffffffc0200d2c:	01243823          	sd	s2,16(s0)
ffffffffc0200d30:	02040513          	addi	a0,s0,32
ffffffffc0200d34:	0000b597          	auipc	a1,0xb
ffffffffc0200d38:	da458593          	addi	a1,a1,-604 # ffffffffc020bad8 <commands+0x330>
ffffffffc0200d3c:	72c0a0ef          	jal	ra,ffffffffc020b468 <strcpy>
ffffffffc0200d40:	00000797          	auipc	a5,0x0
ffffffffc0200d44:	f6478793          	addi	a5,a5,-156 # ffffffffc0200ca4 <ramdisk_read>
ffffffffc0200d48:	e03c                	sd	a5,64(s0)
ffffffffc0200d4a:	00000797          	auipc	a5,0x0
ffffffffc0200d4e:	f3078793          	addi	a5,a5,-208 # ffffffffc0200c7a <ramdisk_write>
ffffffffc0200d52:	60e2                	ld	ra,24(sp)
ffffffffc0200d54:	e43c                	sd	a5,72(s0)
ffffffffc0200d56:	6442                	ld	s0,16(sp)
ffffffffc0200d58:	64a2                	ld	s1,8(sp)
ffffffffc0200d5a:	6902                	ld	s2,0(sp)
ffffffffc0200d5c:	6105                	addi	sp,sp,32
ffffffffc0200d5e:	8082                	ret
ffffffffc0200d60:	0001b617          	auipc	a2,0x1b
ffffffffc0200d64:	fb060613          	addi	a2,a2,-80 # ffffffffc021bd10 <_binary_bin_sfs_img_start>
ffffffffc0200d68:	00013917          	auipc	s2,0x13
ffffffffc0200d6c:	2a890913          	addi	s2,s2,680 # ffffffffc0214010 <_binary_bin_swap_img_start>
ffffffffc0200d70:	f8c91ce3          	bne	s2,a2,ffffffffc0200d08 <ramdisk_init+0x3a>
ffffffffc0200d74:	6442                	ld	s0,16(sp)
ffffffffc0200d76:	60e2                	ld	ra,24(sp)
ffffffffc0200d78:	64a2                	ld	s1,8(sp)
ffffffffc0200d7a:	6902                	ld	s2,0(sp)
ffffffffc0200d7c:	0000b517          	auipc	a0,0xb
ffffffffc0200d80:	cec50513          	addi	a0,a0,-788 # ffffffffc020ba68 <commands+0x2c0>
ffffffffc0200d84:	6105                	addi	sp,sp,32
ffffffffc0200d86:	c20ff06f          	j	ffffffffc02001a6 <cprintf>
ffffffffc0200d8a:	0000b617          	auipc	a2,0xb
ffffffffc0200d8e:	d1e60613          	addi	a2,a2,-738 # ffffffffc020baa8 <commands+0x300>
ffffffffc0200d92:	03200593          	li	a1,50
ffffffffc0200d96:	0000b517          	auipc	a0,0xb
ffffffffc0200d9a:	d2a50513          	addi	a0,a0,-726 # ffffffffc020bac0 <commands+0x318>
ffffffffc0200d9e:	f00ff0ef          	jal	ra,ffffffffc020049e <__panic>

ffffffffc0200da2 <idt_init>:
ffffffffc0200da2:	14005073          	csrwi	sscratch,0
ffffffffc0200da6:	00000797          	auipc	a5,0x0
ffffffffc0200daa:	43a78793          	addi	a5,a5,1082 # ffffffffc02011e0 <__alltraps>
ffffffffc0200dae:	10579073          	csrw	stvec,a5
ffffffffc0200db2:	000407b7          	lui	a5,0x40
ffffffffc0200db6:	1007a7f3          	csrrs	a5,sstatus,a5
ffffffffc0200dba:	8082                	ret

ffffffffc0200dbc <print_regs>:
ffffffffc0200dbc:	610c                	ld	a1,0(a0)
ffffffffc0200dbe:	1141                	addi	sp,sp,-16
ffffffffc0200dc0:	e022                	sd	s0,0(sp)
ffffffffc0200dc2:	842a                	mv	s0,a0
ffffffffc0200dc4:	0000b517          	auipc	a0,0xb
ffffffffc0200dc8:	d2450513          	addi	a0,a0,-732 # ffffffffc020bae8 <commands+0x340>
ffffffffc0200dcc:	e406                	sd	ra,8(sp)
ffffffffc0200dce:	bd8ff0ef          	jal	ra,ffffffffc02001a6 <cprintf>
ffffffffc0200dd2:	640c                	ld	a1,8(s0)
ffffffffc0200dd4:	0000b517          	auipc	a0,0xb
ffffffffc0200dd8:	d2c50513          	addi	a0,a0,-724 # ffffffffc020bb00 <commands+0x358>
ffffffffc0200ddc:	bcaff0ef          	jal	ra,ffffffffc02001a6 <cprintf>
ffffffffc0200de0:	680c                	ld	a1,16(s0)
ffffffffc0200de2:	0000b517          	auipc	a0,0xb
ffffffffc0200de6:	d3650513          	addi	a0,a0,-714 # ffffffffc020bb18 <commands+0x370>
ffffffffc0200dea:	bbcff0ef          	jal	ra,ffffffffc02001a6 <cprintf>
ffffffffc0200dee:	6c0c                	ld	a1,24(s0)
ffffffffc0200df0:	0000b517          	auipc	a0,0xb
ffffffffc0200df4:	d4050513          	addi	a0,a0,-704 # ffffffffc020bb30 <commands+0x388>
ffffffffc0200df8:	baeff0ef          	jal	ra,ffffffffc02001a6 <cprintf>
ffffffffc0200dfc:	700c                	ld	a1,32(s0)
ffffffffc0200dfe:	0000b517          	auipc	a0,0xb
ffffffffc0200e02:	d4a50513          	addi	a0,a0,-694 # ffffffffc020bb48 <commands+0x3a0>
ffffffffc0200e06:	ba0ff0ef          	jal	ra,ffffffffc02001a6 <cprintf>
ffffffffc0200e0a:	740c                	ld	a1,40(s0)
ffffffffc0200e0c:	0000b517          	auipc	a0,0xb
ffffffffc0200e10:	d5450513          	addi	a0,a0,-684 # ffffffffc020bb60 <commands+0x3b8>
ffffffffc0200e14:	b92ff0ef          	jal	ra,ffffffffc02001a6 <cprintf>
ffffffffc0200e18:	780c                	ld	a1,48(s0)
ffffffffc0200e1a:	0000b517          	auipc	a0,0xb
ffffffffc0200e1e:	d5e50513          	addi	a0,a0,-674 # ffffffffc020bb78 <commands+0x3d0>
ffffffffc0200e22:	b84ff0ef          	jal	ra,ffffffffc02001a6 <cprintf>
ffffffffc0200e26:	7c0c                	ld	a1,56(s0)
ffffffffc0200e28:	0000b517          	auipc	a0,0xb
ffffffffc0200e2c:	d6850513          	addi	a0,a0,-664 # ffffffffc020bb90 <commands+0x3e8>
ffffffffc0200e30:	b76ff0ef          	jal	ra,ffffffffc02001a6 <cprintf>
ffffffffc0200e34:	602c                	ld	a1,64(s0)
ffffffffc0200e36:	0000b517          	auipc	a0,0xb
ffffffffc0200e3a:	d7250513          	addi	a0,a0,-654 # ffffffffc020bba8 <commands+0x400>
ffffffffc0200e3e:	b68ff0ef          	jal	ra,ffffffffc02001a6 <cprintf>
ffffffffc0200e42:	642c                	ld	a1,72(s0)
ffffffffc0200e44:	0000b517          	auipc	a0,0xb
ffffffffc0200e48:	d7c50513          	addi	a0,a0,-644 # ffffffffc020bbc0 <commands+0x418>
ffffffffc0200e4c:	b5aff0ef          	jal	ra,ffffffffc02001a6 <cprintf>
ffffffffc0200e50:	682c                	ld	a1,80(s0)
ffffffffc0200e52:	0000b517          	auipc	a0,0xb
ffffffffc0200e56:	d8650513          	addi	a0,a0,-634 # ffffffffc020bbd8 <commands+0x430>
ffffffffc0200e5a:	b4cff0ef          	jal	ra,ffffffffc02001a6 <cprintf>
ffffffffc0200e5e:	6c2c                	ld	a1,88(s0)
ffffffffc0200e60:	0000b517          	auipc	a0,0xb
ffffffffc0200e64:	d9050513          	addi	a0,a0,-624 # ffffffffc020bbf0 <commands+0x448>
ffffffffc0200e68:	b3eff0ef          	jal	ra,ffffffffc02001a6 <cprintf>
ffffffffc0200e6c:	702c                	ld	a1,96(s0)
ffffffffc0200e6e:	0000b517          	auipc	a0,0xb
ffffffffc0200e72:	d9a50513          	addi	a0,a0,-614 # ffffffffc020bc08 <commands+0x460>
ffffffffc0200e76:	b30ff0ef          	jal	ra,ffffffffc02001a6 <cprintf>
ffffffffc0200e7a:	742c                	ld	a1,104(s0)
ffffffffc0200e7c:	0000b517          	auipc	a0,0xb
ffffffffc0200e80:	da450513          	addi	a0,a0,-604 # ffffffffc020bc20 <commands+0x478>
ffffffffc0200e84:	b22ff0ef          	jal	ra,ffffffffc02001a6 <cprintf>
ffffffffc0200e88:	782c                	ld	a1,112(s0)
ffffffffc0200e8a:	0000b517          	auipc	a0,0xb
ffffffffc0200e8e:	dae50513          	addi	a0,a0,-594 # ffffffffc020bc38 <commands+0x490>
ffffffffc0200e92:	b14ff0ef          	jal	ra,ffffffffc02001a6 <cprintf>
ffffffffc0200e96:	7c2c                	ld	a1,120(s0)
ffffffffc0200e98:	0000b517          	auipc	a0,0xb
ffffffffc0200e9c:	db850513          	addi	a0,a0,-584 # ffffffffc020bc50 <commands+0x4a8>
ffffffffc0200ea0:	b06ff0ef          	jal	ra,ffffffffc02001a6 <cprintf>
ffffffffc0200ea4:	604c                	ld	a1,128(s0)
ffffffffc0200ea6:	0000b517          	auipc	a0,0xb
ffffffffc0200eaa:	dc250513          	addi	a0,a0,-574 # ffffffffc020bc68 <commands+0x4c0>
ffffffffc0200eae:	af8ff0ef          	jal	ra,ffffffffc02001a6 <cprintf>
ffffffffc0200eb2:	644c                	ld	a1,136(s0)
ffffffffc0200eb4:	0000b517          	auipc	a0,0xb
ffffffffc0200eb8:	dcc50513          	addi	a0,a0,-564 # ffffffffc020bc80 <commands+0x4d8>
ffffffffc0200ebc:	aeaff0ef          	jal	ra,ffffffffc02001a6 <cprintf>
ffffffffc0200ec0:	684c                	ld	a1,144(s0)
ffffffffc0200ec2:	0000b517          	auipc	a0,0xb
ffffffffc0200ec6:	dd650513          	addi	a0,a0,-554 # ffffffffc020bc98 <commands+0x4f0>
ffffffffc0200eca:	adcff0ef          	jal	ra,ffffffffc02001a6 <cprintf>
ffffffffc0200ece:	6c4c                	ld	a1,152(s0)
ffffffffc0200ed0:	0000b517          	auipc	a0,0xb
ffffffffc0200ed4:	de050513          	addi	a0,a0,-544 # ffffffffc020bcb0 <commands+0x508>
ffffffffc0200ed8:	aceff0ef          	jal	ra,ffffffffc02001a6 <cprintf>
ffffffffc0200edc:	704c                	ld	a1,160(s0)
ffffffffc0200ede:	0000b517          	auipc	a0,0xb
ffffffffc0200ee2:	dea50513          	addi	a0,a0,-534 # ffffffffc020bcc8 <commands+0x520>
ffffffffc0200ee6:	ac0ff0ef          	jal	ra,ffffffffc02001a6 <cprintf>
ffffffffc0200eea:	744c                	ld	a1,168(s0)
ffffffffc0200eec:	0000b517          	auipc	a0,0xb
ffffffffc0200ef0:	df450513          	addi	a0,a0,-524 # ffffffffc020bce0 <commands+0x538>
ffffffffc0200ef4:	ab2ff0ef          	jal	ra,ffffffffc02001a6 <cprintf>
ffffffffc0200ef8:	784c                	ld	a1,176(s0)
ffffffffc0200efa:	0000b517          	auipc	a0,0xb
ffffffffc0200efe:	dfe50513          	addi	a0,a0,-514 # ffffffffc020bcf8 <commands+0x550>
ffffffffc0200f02:	aa4ff0ef          	jal	ra,ffffffffc02001a6 <cprintf>
ffffffffc0200f06:	7c4c                	ld	a1,184(s0)
ffffffffc0200f08:	0000b517          	auipc	a0,0xb
ffffffffc0200f0c:	e0850513          	addi	a0,a0,-504 # ffffffffc020bd10 <commands+0x568>
ffffffffc0200f10:	a96ff0ef          	jal	ra,ffffffffc02001a6 <cprintf>
ffffffffc0200f14:	606c                	ld	a1,192(s0)
ffffffffc0200f16:	0000b517          	auipc	a0,0xb
ffffffffc0200f1a:	e1250513          	addi	a0,a0,-494 # ffffffffc020bd28 <commands+0x580>
ffffffffc0200f1e:	a88ff0ef          	jal	ra,ffffffffc02001a6 <cprintf>
ffffffffc0200f22:	646c                	ld	a1,200(s0)
ffffffffc0200f24:	0000b517          	auipc	a0,0xb
ffffffffc0200f28:	e1c50513          	addi	a0,a0,-484 # ffffffffc020bd40 <commands+0x598>
ffffffffc0200f2c:	a7aff0ef          	jal	ra,ffffffffc02001a6 <cprintf>
ffffffffc0200f30:	686c                	ld	a1,208(s0)
ffffffffc0200f32:	0000b517          	auipc	a0,0xb
ffffffffc0200f36:	e2650513          	addi	a0,a0,-474 # ffffffffc020bd58 <commands+0x5b0>
ffffffffc0200f3a:	a6cff0ef          	jal	ra,ffffffffc02001a6 <cprintf>
ffffffffc0200f3e:	6c6c                	ld	a1,216(s0)
ffffffffc0200f40:	0000b517          	auipc	a0,0xb
ffffffffc0200f44:	e3050513          	addi	a0,a0,-464 # ffffffffc020bd70 <commands+0x5c8>
ffffffffc0200f48:	a5eff0ef          	jal	ra,ffffffffc02001a6 <cprintf>
ffffffffc0200f4c:	706c                	ld	a1,224(s0)
ffffffffc0200f4e:	0000b517          	auipc	a0,0xb
ffffffffc0200f52:	e3a50513          	addi	a0,a0,-454 # ffffffffc020bd88 <commands+0x5e0>
ffffffffc0200f56:	a50ff0ef          	jal	ra,ffffffffc02001a6 <cprintf>
ffffffffc0200f5a:	746c                	ld	a1,232(s0)
ffffffffc0200f5c:	0000b517          	auipc	a0,0xb
ffffffffc0200f60:	e4450513          	addi	a0,a0,-444 # ffffffffc020bda0 <commands+0x5f8>
ffffffffc0200f64:	a42ff0ef          	jal	ra,ffffffffc02001a6 <cprintf>
ffffffffc0200f68:	786c                	ld	a1,240(s0)
ffffffffc0200f6a:	0000b517          	auipc	a0,0xb
ffffffffc0200f6e:	e4e50513          	addi	a0,a0,-434 # ffffffffc020bdb8 <commands+0x610>
ffffffffc0200f72:	a34ff0ef          	jal	ra,ffffffffc02001a6 <cprintf>
ffffffffc0200f76:	7c6c                	ld	a1,248(s0)
ffffffffc0200f78:	6402                	ld	s0,0(sp)
ffffffffc0200f7a:	60a2                	ld	ra,8(sp)
ffffffffc0200f7c:	0000b517          	auipc	a0,0xb
ffffffffc0200f80:	e5450513          	addi	a0,a0,-428 # ffffffffc020bdd0 <commands+0x628>
ffffffffc0200f84:	0141                	addi	sp,sp,16
ffffffffc0200f86:	a20ff06f          	j	ffffffffc02001a6 <cprintf>

ffffffffc0200f8a <print_trapframe>:
ffffffffc0200f8a:	1141                	addi	sp,sp,-16
ffffffffc0200f8c:	e022                	sd	s0,0(sp)
ffffffffc0200f8e:	85aa                	mv	a1,a0
ffffffffc0200f90:	842a                	mv	s0,a0
ffffffffc0200f92:	0000b517          	auipc	a0,0xb
ffffffffc0200f96:	e5650513          	addi	a0,a0,-426 # ffffffffc020bde8 <commands+0x640>
ffffffffc0200f9a:	e406                	sd	ra,8(sp)
ffffffffc0200f9c:	a0aff0ef          	jal	ra,ffffffffc02001a6 <cprintf>
ffffffffc0200fa0:	8522                	mv	a0,s0
ffffffffc0200fa2:	e1bff0ef          	jal	ra,ffffffffc0200dbc <print_regs>
ffffffffc0200fa6:	10043583          	ld	a1,256(s0)
ffffffffc0200faa:	0000b517          	auipc	a0,0xb
ffffffffc0200fae:	e5650513          	addi	a0,a0,-426 # ffffffffc020be00 <commands+0x658>
ffffffffc0200fb2:	9f4ff0ef          	jal	ra,ffffffffc02001a6 <cprintf>
ffffffffc0200fb6:	10843583          	ld	a1,264(s0)
ffffffffc0200fba:	0000b517          	auipc	a0,0xb
ffffffffc0200fbe:	e5e50513          	addi	a0,a0,-418 # ffffffffc020be18 <commands+0x670>
ffffffffc0200fc2:	9e4ff0ef          	jal	ra,ffffffffc02001a6 <cprintf>
ffffffffc0200fc6:	11043583          	ld	a1,272(s0)
ffffffffc0200fca:	0000b517          	auipc	a0,0xb
ffffffffc0200fce:	e6650513          	addi	a0,a0,-410 # ffffffffc020be30 <commands+0x688>
ffffffffc0200fd2:	9d4ff0ef          	jal	ra,ffffffffc02001a6 <cprintf>
ffffffffc0200fd6:	11843583          	ld	a1,280(s0)
ffffffffc0200fda:	6402                	ld	s0,0(sp)
ffffffffc0200fdc:	60a2                	ld	ra,8(sp)
ffffffffc0200fde:	0000b517          	auipc	a0,0xb
ffffffffc0200fe2:	e6250513          	addi	a0,a0,-414 # ffffffffc020be40 <commands+0x698>
ffffffffc0200fe6:	0141                	addi	sp,sp,16
ffffffffc0200fe8:	9beff06f          	j	ffffffffc02001a6 <cprintf>

ffffffffc0200fec <interrupt_handler>:
ffffffffc0200fec:	11853783          	ld	a5,280(a0)
ffffffffc0200ff0:	472d                	li	a4,11
ffffffffc0200ff2:	0786                	slli	a5,a5,0x1
ffffffffc0200ff4:	8385                	srli	a5,a5,0x1
ffffffffc0200ff6:	06f76c63          	bltu	a4,a5,ffffffffc020106e <interrupt_handler+0x82>
ffffffffc0200ffa:	0000b717          	auipc	a4,0xb
ffffffffc0200ffe:	efe70713          	addi	a4,a4,-258 # ffffffffc020bef8 <commands+0x750>
ffffffffc0201002:	078a                	slli	a5,a5,0x2
ffffffffc0201004:	97ba                	add	a5,a5,a4
ffffffffc0201006:	439c                	lw	a5,0(a5)
ffffffffc0201008:	97ba                	add	a5,a5,a4
ffffffffc020100a:	8782                	jr	a5
ffffffffc020100c:	0000b517          	auipc	a0,0xb
ffffffffc0201010:	eac50513          	addi	a0,a0,-340 # ffffffffc020beb8 <commands+0x710>
ffffffffc0201014:	992ff06f          	j	ffffffffc02001a6 <cprintf>
ffffffffc0201018:	0000b517          	auipc	a0,0xb
ffffffffc020101c:	e8050513          	addi	a0,a0,-384 # ffffffffc020be98 <commands+0x6f0>
ffffffffc0201020:	986ff06f          	j	ffffffffc02001a6 <cprintf>
ffffffffc0201024:	0000b517          	auipc	a0,0xb
ffffffffc0201028:	e3450513          	addi	a0,a0,-460 # ffffffffc020be58 <commands+0x6b0>
ffffffffc020102c:	97aff06f          	j	ffffffffc02001a6 <cprintf>
ffffffffc0201030:	0000b517          	auipc	a0,0xb
ffffffffc0201034:	e4850513          	addi	a0,a0,-440 # ffffffffc020be78 <commands+0x6d0>
ffffffffc0201038:	96eff06f          	j	ffffffffc02001a6 <cprintf>
ffffffffc020103c:	1141                	addi	sp,sp,-16
ffffffffc020103e:	e406                	sd	ra,8(sp)
ffffffffc0201040:	d3aff0ef          	jal	ra,ffffffffc020057a <clock_set_next_event>
ffffffffc0201044:	00096717          	auipc	a4,0x96
ffffffffc0201048:	82c70713          	addi	a4,a4,-2004 # ffffffffc0296870 <ticks>
ffffffffc020104c:	631c                	ld	a5,0(a4)
ffffffffc020104e:	0785                	addi	a5,a5,1
ffffffffc0201050:	e31c                	sd	a5,0(a4)
ffffffffc0201052:	4aa060ef          	jal	ra,ffffffffc02074fc <run_timer_list>
ffffffffc0201056:	d9eff0ef          	jal	ra,ffffffffc02005f4 <cons_getc>
ffffffffc020105a:	60a2                	ld	ra,8(sp)
ffffffffc020105c:	0141                	addi	sp,sp,16
ffffffffc020105e:	36f0706f          	j	ffffffffc0208bcc <dev_stdin_write>
ffffffffc0201062:	0000b517          	auipc	a0,0xb
ffffffffc0201066:	e7650513          	addi	a0,a0,-394 # ffffffffc020bed8 <commands+0x730>
ffffffffc020106a:	93cff06f          	j	ffffffffc02001a6 <cprintf>
ffffffffc020106e:	bf31                	j	ffffffffc0200f8a <print_trapframe>

ffffffffc0201070 <exception_handler>:
ffffffffc0201070:	11853783          	ld	a5,280(a0)
ffffffffc0201074:	1141                	addi	sp,sp,-16
ffffffffc0201076:	e022                	sd	s0,0(sp)
ffffffffc0201078:	e406                	sd	ra,8(sp)
ffffffffc020107a:	473d                	li	a4,15
ffffffffc020107c:	842a                	mv	s0,a0
ffffffffc020107e:	0af76b63          	bltu	a4,a5,ffffffffc0201134 <exception_handler+0xc4>
ffffffffc0201082:	0000b717          	auipc	a4,0xb
ffffffffc0201086:	03670713          	addi	a4,a4,54 # ffffffffc020c0b8 <commands+0x910>
ffffffffc020108a:	078a                	slli	a5,a5,0x2
ffffffffc020108c:	97ba                	add	a5,a5,a4
ffffffffc020108e:	439c                	lw	a5,0(a5)
ffffffffc0201090:	97ba                	add	a5,a5,a4
ffffffffc0201092:	8782                	jr	a5
ffffffffc0201094:	0000b517          	auipc	a0,0xb
ffffffffc0201098:	f7c50513          	addi	a0,a0,-132 # ffffffffc020c010 <commands+0x868>
ffffffffc020109c:	90aff0ef          	jal	ra,ffffffffc02001a6 <cprintf>
ffffffffc02010a0:	10843783          	ld	a5,264(s0)
ffffffffc02010a4:	60a2                	ld	ra,8(sp)
ffffffffc02010a6:	0791                	addi	a5,a5,4
ffffffffc02010a8:	10f43423          	sd	a5,264(s0)
ffffffffc02010ac:	6402                	ld	s0,0(sp)
ffffffffc02010ae:	0141                	addi	sp,sp,16
ffffffffc02010b0:	6620606f          	j	ffffffffc0207712 <syscall>
ffffffffc02010b4:	0000b517          	auipc	a0,0xb
ffffffffc02010b8:	f7c50513          	addi	a0,a0,-132 # ffffffffc020c030 <commands+0x888>
ffffffffc02010bc:	6402                	ld	s0,0(sp)
ffffffffc02010be:	60a2                	ld	ra,8(sp)
ffffffffc02010c0:	0141                	addi	sp,sp,16
ffffffffc02010c2:	8e4ff06f          	j	ffffffffc02001a6 <cprintf>
ffffffffc02010c6:	0000b517          	auipc	a0,0xb
ffffffffc02010ca:	f8a50513          	addi	a0,a0,-118 # ffffffffc020c050 <commands+0x8a8>
ffffffffc02010ce:	b7fd                	j	ffffffffc02010bc <exception_handler+0x4c>
ffffffffc02010d0:	0000b517          	auipc	a0,0xb
ffffffffc02010d4:	fa050513          	addi	a0,a0,-96 # ffffffffc020c070 <commands+0x8c8>
ffffffffc02010d8:	b7d5                	j	ffffffffc02010bc <exception_handler+0x4c>
ffffffffc02010da:	0000b517          	auipc	a0,0xb
ffffffffc02010de:	fae50513          	addi	a0,a0,-82 # ffffffffc020c088 <commands+0x8e0>
ffffffffc02010e2:	bfe9                	j	ffffffffc02010bc <exception_handler+0x4c>
ffffffffc02010e4:	0000b517          	auipc	a0,0xb
ffffffffc02010e8:	fbc50513          	addi	a0,a0,-68 # ffffffffc020c0a0 <commands+0x8f8>
ffffffffc02010ec:	bfc1                	j	ffffffffc02010bc <exception_handler+0x4c>
ffffffffc02010ee:	0000b517          	auipc	a0,0xb
ffffffffc02010f2:	e3a50513          	addi	a0,a0,-454 # ffffffffc020bf28 <commands+0x780>
ffffffffc02010f6:	b7d9                	j	ffffffffc02010bc <exception_handler+0x4c>
ffffffffc02010f8:	0000b517          	auipc	a0,0xb
ffffffffc02010fc:	e5050513          	addi	a0,a0,-432 # ffffffffc020bf48 <commands+0x7a0>
ffffffffc0201100:	bf75                	j	ffffffffc02010bc <exception_handler+0x4c>
ffffffffc0201102:	0000b517          	auipc	a0,0xb
ffffffffc0201106:	e6650513          	addi	a0,a0,-410 # ffffffffc020bf68 <commands+0x7c0>
ffffffffc020110a:	bf4d                	j	ffffffffc02010bc <exception_handler+0x4c>
ffffffffc020110c:	0000b517          	auipc	a0,0xb
ffffffffc0201110:	e7450513          	addi	a0,a0,-396 # ffffffffc020bf80 <commands+0x7d8>
ffffffffc0201114:	b765                	j	ffffffffc02010bc <exception_handler+0x4c>
ffffffffc0201116:	0000b517          	auipc	a0,0xb
ffffffffc020111a:	e7a50513          	addi	a0,a0,-390 # ffffffffc020bf90 <commands+0x7e8>
ffffffffc020111e:	bf79                	j	ffffffffc02010bc <exception_handler+0x4c>
ffffffffc0201120:	0000b517          	auipc	a0,0xb
ffffffffc0201124:	e9050513          	addi	a0,a0,-368 # ffffffffc020bfb0 <commands+0x808>
ffffffffc0201128:	bf51                	j	ffffffffc02010bc <exception_handler+0x4c>
ffffffffc020112a:	0000b517          	auipc	a0,0xb
ffffffffc020112e:	ece50513          	addi	a0,a0,-306 # ffffffffc020bff8 <commands+0x850>
ffffffffc0201132:	b769                	j	ffffffffc02010bc <exception_handler+0x4c>
ffffffffc0201134:	8522                	mv	a0,s0
ffffffffc0201136:	6402                	ld	s0,0(sp)
ffffffffc0201138:	60a2                	ld	ra,8(sp)
ffffffffc020113a:	0141                	addi	sp,sp,16
ffffffffc020113c:	b5b9                	j	ffffffffc0200f8a <print_trapframe>
ffffffffc020113e:	0000b617          	auipc	a2,0xb
ffffffffc0201142:	e8a60613          	addi	a2,a2,-374 # ffffffffc020bfc8 <commands+0x820>
ffffffffc0201146:	0b100593          	li	a1,177
ffffffffc020114a:	0000b517          	auipc	a0,0xb
ffffffffc020114e:	e9650513          	addi	a0,a0,-362 # ffffffffc020bfe0 <commands+0x838>
ffffffffc0201152:	b4cff0ef          	jal	ra,ffffffffc020049e <__panic>

ffffffffc0201156 <trap>:
ffffffffc0201156:	1101                	addi	sp,sp,-32
ffffffffc0201158:	e822                	sd	s0,16(sp)
ffffffffc020115a:	00095417          	auipc	s0,0x95
ffffffffc020115e:	76640413          	addi	s0,s0,1894 # ffffffffc02968c0 <current>
ffffffffc0201162:	6018                	ld	a4,0(s0)
ffffffffc0201164:	ec06                	sd	ra,24(sp)
ffffffffc0201166:	e426                	sd	s1,8(sp)
ffffffffc0201168:	e04a                	sd	s2,0(sp)
ffffffffc020116a:	11853683          	ld	a3,280(a0)
ffffffffc020116e:	cf1d                	beqz	a4,ffffffffc02011ac <trap+0x56>
ffffffffc0201170:	10053483          	ld	s1,256(a0)
ffffffffc0201174:	0a073903          	ld	s2,160(a4)
ffffffffc0201178:	f348                	sd	a0,160(a4)
ffffffffc020117a:	1004f493          	andi	s1,s1,256
ffffffffc020117e:	0206c463          	bltz	a3,ffffffffc02011a6 <trap+0x50>
ffffffffc0201182:	eefff0ef          	jal	ra,ffffffffc0201070 <exception_handler>
ffffffffc0201186:	601c                	ld	a5,0(s0)
ffffffffc0201188:	0b27b023          	sd	s2,160(a5) # 400a0 <_binary_bin_swap_img_size+0x383a0>
ffffffffc020118c:	e499                	bnez	s1,ffffffffc020119a <trap+0x44>
ffffffffc020118e:	0b07a703          	lw	a4,176(a5)
ffffffffc0201192:	8b05                	andi	a4,a4,1
ffffffffc0201194:	e329                	bnez	a4,ffffffffc02011d6 <trap+0x80>
ffffffffc0201196:	6f9c                	ld	a5,24(a5)
ffffffffc0201198:	eb85                	bnez	a5,ffffffffc02011c8 <trap+0x72>
ffffffffc020119a:	60e2                	ld	ra,24(sp)
ffffffffc020119c:	6442                	ld	s0,16(sp)
ffffffffc020119e:	64a2                	ld	s1,8(sp)
ffffffffc02011a0:	6902                	ld	s2,0(sp)
ffffffffc02011a2:	6105                	addi	sp,sp,32
ffffffffc02011a4:	8082                	ret
ffffffffc02011a6:	e47ff0ef          	jal	ra,ffffffffc0200fec <interrupt_handler>
ffffffffc02011aa:	bff1                	j	ffffffffc0201186 <trap+0x30>
ffffffffc02011ac:	0006c863          	bltz	a3,ffffffffc02011bc <trap+0x66>
ffffffffc02011b0:	6442                	ld	s0,16(sp)
ffffffffc02011b2:	60e2                	ld	ra,24(sp)
ffffffffc02011b4:	64a2                	ld	s1,8(sp)
ffffffffc02011b6:	6902                	ld	s2,0(sp)
ffffffffc02011b8:	6105                	addi	sp,sp,32
ffffffffc02011ba:	bd5d                	j	ffffffffc0201070 <exception_handler>
ffffffffc02011bc:	6442                	ld	s0,16(sp)
ffffffffc02011be:	60e2                	ld	ra,24(sp)
ffffffffc02011c0:	64a2                	ld	s1,8(sp)
ffffffffc02011c2:	6902                	ld	s2,0(sp)
ffffffffc02011c4:	6105                	addi	sp,sp,32
ffffffffc02011c6:	b51d                	j	ffffffffc0200fec <interrupt_handler>
ffffffffc02011c8:	6442                	ld	s0,16(sp)
ffffffffc02011ca:	60e2                	ld	ra,24(sp)
ffffffffc02011cc:	64a2                	ld	s1,8(sp)
ffffffffc02011ce:	6902                	ld	s2,0(sp)
ffffffffc02011d0:	6105                	addi	sp,sp,32
ffffffffc02011d2:	11e0606f          	j	ffffffffc02072f0 <schedule>
ffffffffc02011d6:	555d                	li	a0,-9
ffffffffc02011d8:	645040ef          	jal	ra,ffffffffc020601c <do_exit>
ffffffffc02011dc:	601c                	ld	a5,0(s0)
ffffffffc02011de:	bf65                	j	ffffffffc0201196 <trap+0x40>

ffffffffc02011e0 <__alltraps>:
ffffffffc02011e0:	14011173          	csrrw	sp,sscratch,sp
ffffffffc02011e4:	00011463          	bnez	sp,ffffffffc02011ec <__alltraps+0xc>
ffffffffc02011e8:	14002173          	csrr	sp,sscratch
ffffffffc02011ec:	712d                	addi	sp,sp,-288
ffffffffc02011ee:	e002                	sd	zero,0(sp)
ffffffffc02011f0:	e406                	sd	ra,8(sp)
ffffffffc02011f2:	ec0e                	sd	gp,24(sp)
ffffffffc02011f4:	f012                	sd	tp,32(sp)
ffffffffc02011f6:	f416                	sd	t0,40(sp)
ffffffffc02011f8:	f81a                	sd	t1,48(sp)
ffffffffc02011fa:	fc1e                	sd	t2,56(sp)
ffffffffc02011fc:	e0a2                	sd	s0,64(sp)
ffffffffc02011fe:	e4a6                	sd	s1,72(sp)
ffffffffc0201200:	e8aa                	sd	a0,80(sp)
ffffffffc0201202:	ecae                	sd	a1,88(sp)
ffffffffc0201204:	f0b2                	sd	a2,96(sp)
ffffffffc0201206:	f4b6                	sd	a3,104(sp)
ffffffffc0201208:	f8ba                	sd	a4,112(sp)
ffffffffc020120a:	fcbe                	sd	a5,120(sp)
ffffffffc020120c:	e142                	sd	a6,128(sp)
ffffffffc020120e:	e546                	sd	a7,136(sp)
ffffffffc0201210:	e94a                	sd	s2,144(sp)
ffffffffc0201212:	ed4e                	sd	s3,152(sp)
ffffffffc0201214:	f152                	sd	s4,160(sp)
ffffffffc0201216:	f556                	sd	s5,168(sp)
ffffffffc0201218:	f95a                	sd	s6,176(sp)
ffffffffc020121a:	fd5e                	sd	s7,184(sp)
ffffffffc020121c:	e1e2                	sd	s8,192(sp)
ffffffffc020121e:	e5e6                	sd	s9,200(sp)
ffffffffc0201220:	e9ea                	sd	s10,208(sp)
ffffffffc0201222:	edee                	sd	s11,216(sp)
ffffffffc0201224:	f1f2                	sd	t3,224(sp)
ffffffffc0201226:	f5f6                	sd	t4,232(sp)
ffffffffc0201228:	f9fa                	sd	t5,240(sp)
ffffffffc020122a:	fdfe                	sd	t6,248(sp)
ffffffffc020122c:	14001473          	csrrw	s0,sscratch,zero
ffffffffc0201230:	100024f3          	csrr	s1,sstatus
ffffffffc0201234:	14102973          	csrr	s2,sepc
ffffffffc0201238:	143029f3          	csrr	s3,stval
ffffffffc020123c:	14202a73          	csrr	s4,scause
ffffffffc0201240:	e822                	sd	s0,16(sp)
ffffffffc0201242:	e226                	sd	s1,256(sp)
ffffffffc0201244:	e64a                	sd	s2,264(sp)
ffffffffc0201246:	ea4e                	sd	s3,272(sp)
ffffffffc0201248:	ee52                	sd	s4,280(sp)
ffffffffc020124a:	850a                	mv	a0,sp
ffffffffc020124c:	f0bff0ef          	jal	ra,ffffffffc0201156 <trap>

ffffffffc0201250 <__trapret>:
ffffffffc0201250:	6492                	ld	s1,256(sp)
ffffffffc0201252:	6932                	ld	s2,264(sp)
ffffffffc0201254:	1004f413          	andi	s0,s1,256
ffffffffc0201258:	e401                	bnez	s0,ffffffffc0201260 <__trapret+0x10>
ffffffffc020125a:	1200                	addi	s0,sp,288
ffffffffc020125c:	14041073          	csrw	sscratch,s0
ffffffffc0201260:	10049073          	csrw	sstatus,s1
ffffffffc0201264:	14191073          	csrw	sepc,s2
ffffffffc0201268:	60a2                	ld	ra,8(sp)
ffffffffc020126a:	61e2                	ld	gp,24(sp)
ffffffffc020126c:	7202                	ld	tp,32(sp)
ffffffffc020126e:	72a2                	ld	t0,40(sp)
ffffffffc0201270:	7342                	ld	t1,48(sp)
ffffffffc0201272:	73e2                	ld	t2,56(sp)
ffffffffc0201274:	6406                	ld	s0,64(sp)
ffffffffc0201276:	64a6                	ld	s1,72(sp)
ffffffffc0201278:	6546                	ld	a0,80(sp)
ffffffffc020127a:	65e6                	ld	a1,88(sp)
ffffffffc020127c:	7606                	ld	a2,96(sp)
ffffffffc020127e:	76a6                	ld	a3,104(sp)
ffffffffc0201280:	7746                	ld	a4,112(sp)
ffffffffc0201282:	77e6                	ld	a5,120(sp)
ffffffffc0201284:	680a                	ld	a6,128(sp)
ffffffffc0201286:	68aa                	ld	a7,136(sp)
ffffffffc0201288:	694a                	ld	s2,144(sp)
ffffffffc020128a:	69ea                	ld	s3,152(sp)
ffffffffc020128c:	7a0a                	ld	s4,160(sp)
ffffffffc020128e:	7aaa                	ld	s5,168(sp)
ffffffffc0201290:	7b4a                	ld	s6,176(sp)
ffffffffc0201292:	7bea                	ld	s7,184(sp)
ffffffffc0201294:	6c0e                	ld	s8,192(sp)
ffffffffc0201296:	6cae                	ld	s9,200(sp)
ffffffffc0201298:	6d4e                	ld	s10,208(sp)
ffffffffc020129a:	6dee                	ld	s11,216(sp)
ffffffffc020129c:	7e0e                	ld	t3,224(sp)
ffffffffc020129e:	7eae                	ld	t4,232(sp)
ffffffffc02012a0:	7f4e                	ld	t5,240(sp)
ffffffffc02012a2:	7fee                	ld	t6,248(sp)
ffffffffc02012a4:	6142                	ld	sp,16(sp)
ffffffffc02012a6:	10200073          	sret

ffffffffc02012aa <forkrets>:
ffffffffc02012aa:	812a                	mv	sp,a0
ffffffffc02012ac:	b755                	j	ffffffffc0201250 <__trapret>

ffffffffc02012ae <default_init>:
ffffffffc02012ae:	00090797          	auipc	a5,0x90
ffffffffc02012b2:	4fa78793          	addi	a5,a5,1274 # ffffffffc02917a8 <free_area>
ffffffffc02012b6:	e79c                	sd	a5,8(a5)
ffffffffc02012b8:	e39c                	sd	a5,0(a5)
ffffffffc02012ba:	0007a823          	sw	zero,16(a5)
ffffffffc02012be:	8082                	ret

ffffffffc02012c0 <default_nr_free_pages>:
ffffffffc02012c0:	00090517          	auipc	a0,0x90
ffffffffc02012c4:	4f856503          	lwu	a0,1272(a0) # ffffffffc02917b8 <free_area+0x10>
ffffffffc02012c8:	8082                	ret

ffffffffc02012ca <default_check>:
ffffffffc02012ca:	715d                	addi	sp,sp,-80
ffffffffc02012cc:	e0a2                	sd	s0,64(sp)
ffffffffc02012ce:	00090417          	auipc	s0,0x90
ffffffffc02012d2:	4da40413          	addi	s0,s0,1242 # ffffffffc02917a8 <free_area>
ffffffffc02012d6:	641c                	ld	a5,8(s0)
ffffffffc02012d8:	e486                	sd	ra,72(sp)
ffffffffc02012da:	fc26                	sd	s1,56(sp)
ffffffffc02012dc:	f84a                	sd	s2,48(sp)
ffffffffc02012de:	f44e                	sd	s3,40(sp)
ffffffffc02012e0:	f052                	sd	s4,32(sp)
ffffffffc02012e2:	ec56                	sd	s5,24(sp)
ffffffffc02012e4:	e85a                	sd	s6,16(sp)
ffffffffc02012e6:	e45e                	sd	s7,8(sp)
ffffffffc02012e8:	e062                	sd	s8,0(sp)
ffffffffc02012ea:	2a878d63          	beq	a5,s0,ffffffffc02015a4 <default_check+0x2da>
ffffffffc02012ee:	4481                	li	s1,0
ffffffffc02012f0:	4901                	li	s2,0
ffffffffc02012f2:	ff07b703          	ld	a4,-16(a5)
ffffffffc02012f6:	8b09                	andi	a4,a4,2
ffffffffc02012f8:	2a070a63          	beqz	a4,ffffffffc02015ac <default_check+0x2e2>
ffffffffc02012fc:	ff87a703          	lw	a4,-8(a5)
ffffffffc0201300:	679c                	ld	a5,8(a5)
ffffffffc0201302:	2905                	addiw	s2,s2,1
ffffffffc0201304:	9cb9                	addw	s1,s1,a4
ffffffffc0201306:	fe8796e3          	bne	a5,s0,ffffffffc02012f2 <default_check+0x28>
ffffffffc020130a:	89a6                	mv	s3,s1
ffffffffc020130c:	6df000ef          	jal	ra,ffffffffc02021ea <nr_free_pages>
ffffffffc0201310:	6f351e63          	bne	a0,s3,ffffffffc0201a0c <default_check+0x742>
ffffffffc0201314:	4505                	li	a0,1
ffffffffc0201316:	657000ef          	jal	ra,ffffffffc020216c <alloc_pages>
ffffffffc020131a:	8aaa                	mv	s5,a0
ffffffffc020131c:	42050863          	beqz	a0,ffffffffc020174c <default_check+0x482>
ffffffffc0201320:	4505                	li	a0,1
ffffffffc0201322:	64b000ef          	jal	ra,ffffffffc020216c <alloc_pages>
ffffffffc0201326:	89aa                	mv	s3,a0
ffffffffc0201328:	70050263          	beqz	a0,ffffffffc0201a2c <default_check+0x762>
ffffffffc020132c:	4505                	li	a0,1
ffffffffc020132e:	63f000ef          	jal	ra,ffffffffc020216c <alloc_pages>
ffffffffc0201332:	8a2a                	mv	s4,a0
ffffffffc0201334:	48050c63          	beqz	a0,ffffffffc02017cc <default_check+0x502>
ffffffffc0201338:	293a8a63          	beq	s5,s3,ffffffffc02015cc <default_check+0x302>
ffffffffc020133c:	28aa8863          	beq	s5,a0,ffffffffc02015cc <default_check+0x302>
ffffffffc0201340:	28a98663          	beq	s3,a0,ffffffffc02015cc <default_check+0x302>
ffffffffc0201344:	000aa783          	lw	a5,0(s5)
ffffffffc0201348:	2a079263          	bnez	a5,ffffffffc02015ec <default_check+0x322>
ffffffffc020134c:	0009a783          	lw	a5,0(s3)
ffffffffc0201350:	28079e63          	bnez	a5,ffffffffc02015ec <default_check+0x322>
ffffffffc0201354:	411c                	lw	a5,0(a0)
ffffffffc0201356:	28079b63          	bnez	a5,ffffffffc02015ec <default_check+0x322>
ffffffffc020135a:	00095797          	auipc	a5,0x95
ffffffffc020135e:	54e7b783          	ld	a5,1358(a5) # ffffffffc02968a8 <pages>
ffffffffc0201362:	40fa8733          	sub	a4,s5,a5
ffffffffc0201366:	0000e617          	auipc	a2,0xe
ffffffffc020136a:	4a263603          	ld	a2,1186(a2) # ffffffffc020f808 <nbase>
ffffffffc020136e:	8719                	srai	a4,a4,0x6
ffffffffc0201370:	9732                	add	a4,a4,a2
ffffffffc0201372:	00095697          	auipc	a3,0x95
ffffffffc0201376:	52e6b683          	ld	a3,1326(a3) # ffffffffc02968a0 <npage>
ffffffffc020137a:	06b2                	slli	a3,a3,0xc
ffffffffc020137c:	0732                	slli	a4,a4,0xc
ffffffffc020137e:	28d77763          	bgeu	a4,a3,ffffffffc020160c <default_check+0x342>
ffffffffc0201382:	40f98733          	sub	a4,s3,a5
ffffffffc0201386:	8719                	srai	a4,a4,0x6
ffffffffc0201388:	9732                	add	a4,a4,a2
ffffffffc020138a:	0732                	slli	a4,a4,0xc
ffffffffc020138c:	4cd77063          	bgeu	a4,a3,ffffffffc020184c <default_check+0x582>
ffffffffc0201390:	40f507b3          	sub	a5,a0,a5
ffffffffc0201394:	8799                	srai	a5,a5,0x6
ffffffffc0201396:	97b2                	add	a5,a5,a2
ffffffffc0201398:	07b2                	slli	a5,a5,0xc
ffffffffc020139a:	30d7f963          	bgeu	a5,a3,ffffffffc02016ac <default_check+0x3e2>
ffffffffc020139e:	4505                	li	a0,1
ffffffffc02013a0:	00043c03          	ld	s8,0(s0)
ffffffffc02013a4:	00843b83          	ld	s7,8(s0)
ffffffffc02013a8:	01042b03          	lw	s6,16(s0)
ffffffffc02013ac:	e400                	sd	s0,8(s0)
ffffffffc02013ae:	e000                	sd	s0,0(s0)
ffffffffc02013b0:	00090797          	auipc	a5,0x90
ffffffffc02013b4:	4007a423          	sw	zero,1032(a5) # ffffffffc02917b8 <free_area+0x10>
ffffffffc02013b8:	5b5000ef          	jal	ra,ffffffffc020216c <alloc_pages>
ffffffffc02013bc:	2c051863          	bnez	a0,ffffffffc020168c <default_check+0x3c2>
ffffffffc02013c0:	4585                	li	a1,1
ffffffffc02013c2:	8556                	mv	a0,s5
ffffffffc02013c4:	5e7000ef          	jal	ra,ffffffffc02021aa <free_pages>
ffffffffc02013c8:	4585                	li	a1,1
ffffffffc02013ca:	854e                	mv	a0,s3
ffffffffc02013cc:	5df000ef          	jal	ra,ffffffffc02021aa <free_pages>
ffffffffc02013d0:	4585                	li	a1,1
ffffffffc02013d2:	8552                	mv	a0,s4
ffffffffc02013d4:	5d7000ef          	jal	ra,ffffffffc02021aa <free_pages>
ffffffffc02013d8:	4818                	lw	a4,16(s0)
ffffffffc02013da:	478d                	li	a5,3
ffffffffc02013dc:	28f71863          	bne	a4,a5,ffffffffc020166c <default_check+0x3a2>
ffffffffc02013e0:	4505                	li	a0,1
ffffffffc02013e2:	58b000ef          	jal	ra,ffffffffc020216c <alloc_pages>
ffffffffc02013e6:	89aa                	mv	s3,a0
ffffffffc02013e8:	26050263          	beqz	a0,ffffffffc020164c <default_check+0x382>
ffffffffc02013ec:	4505                	li	a0,1
ffffffffc02013ee:	57f000ef          	jal	ra,ffffffffc020216c <alloc_pages>
ffffffffc02013f2:	8aaa                	mv	s5,a0
ffffffffc02013f4:	3a050c63          	beqz	a0,ffffffffc02017ac <default_check+0x4e2>
ffffffffc02013f8:	4505                	li	a0,1
ffffffffc02013fa:	573000ef          	jal	ra,ffffffffc020216c <alloc_pages>
ffffffffc02013fe:	8a2a                	mv	s4,a0
ffffffffc0201400:	38050663          	beqz	a0,ffffffffc020178c <default_check+0x4c2>
ffffffffc0201404:	4505                	li	a0,1
ffffffffc0201406:	567000ef          	jal	ra,ffffffffc020216c <alloc_pages>
ffffffffc020140a:	36051163          	bnez	a0,ffffffffc020176c <default_check+0x4a2>
ffffffffc020140e:	4585                	li	a1,1
ffffffffc0201410:	854e                	mv	a0,s3
ffffffffc0201412:	599000ef          	jal	ra,ffffffffc02021aa <free_pages>
ffffffffc0201416:	641c                	ld	a5,8(s0)
ffffffffc0201418:	20878a63          	beq	a5,s0,ffffffffc020162c <default_check+0x362>
ffffffffc020141c:	4505                	li	a0,1
ffffffffc020141e:	54f000ef          	jal	ra,ffffffffc020216c <alloc_pages>
ffffffffc0201422:	30a99563          	bne	s3,a0,ffffffffc020172c <default_check+0x462>
ffffffffc0201426:	4505                	li	a0,1
ffffffffc0201428:	545000ef          	jal	ra,ffffffffc020216c <alloc_pages>
ffffffffc020142c:	2e051063          	bnez	a0,ffffffffc020170c <default_check+0x442>
ffffffffc0201430:	481c                	lw	a5,16(s0)
ffffffffc0201432:	2a079d63          	bnez	a5,ffffffffc02016ec <default_check+0x422>
ffffffffc0201436:	854e                	mv	a0,s3
ffffffffc0201438:	4585                	li	a1,1
ffffffffc020143a:	01843023          	sd	s8,0(s0)
ffffffffc020143e:	01743423          	sd	s7,8(s0)
ffffffffc0201442:	01642823          	sw	s6,16(s0)
ffffffffc0201446:	565000ef          	jal	ra,ffffffffc02021aa <free_pages>
ffffffffc020144a:	4585                	li	a1,1
ffffffffc020144c:	8556                	mv	a0,s5
ffffffffc020144e:	55d000ef          	jal	ra,ffffffffc02021aa <free_pages>
ffffffffc0201452:	4585                	li	a1,1
ffffffffc0201454:	8552                	mv	a0,s4
ffffffffc0201456:	555000ef          	jal	ra,ffffffffc02021aa <free_pages>
ffffffffc020145a:	4515                	li	a0,5
ffffffffc020145c:	511000ef          	jal	ra,ffffffffc020216c <alloc_pages>
ffffffffc0201460:	89aa                	mv	s3,a0
ffffffffc0201462:	26050563          	beqz	a0,ffffffffc02016cc <default_check+0x402>
ffffffffc0201466:	651c                	ld	a5,8(a0)
ffffffffc0201468:	8385                	srli	a5,a5,0x1
ffffffffc020146a:	8b85                	andi	a5,a5,1
ffffffffc020146c:	54079063          	bnez	a5,ffffffffc02019ac <default_check+0x6e2>
ffffffffc0201470:	4505                	li	a0,1
ffffffffc0201472:	00043b03          	ld	s6,0(s0)
ffffffffc0201476:	00843a83          	ld	s5,8(s0)
ffffffffc020147a:	e000                	sd	s0,0(s0)
ffffffffc020147c:	e400                	sd	s0,8(s0)
ffffffffc020147e:	4ef000ef          	jal	ra,ffffffffc020216c <alloc_pages>
ffffffffc0201482:	50051563          	bnez	a0,ffffffffc020198c <default_check+0x6c2>
ffffffffc0201486:	08098a13          	addi	s4,s3,128
ffffffffc020148a:	8552                	mv	a0,s4
ffffffffc020148c:	458d                	li	a1,3
ffffffffc020148e:	01042b83          	lw	s7,16(s0)
ffffffffc0201492:	00090797          	auipc	a5,0x90
ffffffffc0201496:	3207a323          	sw	zero,806(a5) # ffffffffc02917b8 <free_area+0x10>
ffffffffc020149a:	511000ef          	jal	ra,ffffffffc02021aa <free_pages>
ffffffffc020149e:	4511                	li	a0,4
ffffffffc02014a0:	4cd000ef          	jal	ra,ffffffffc020216c <alloc_pages>
ffffffffc02014a4:	4c051463          	bnez	a0,ffffffffc020196c <default_check+0x6a2>
ffffffffc02014a8:	0889b783          	ld	a5,136(s3)
ffffffffc02014ac:	8385                	srli	a5,a5,0x1
ffffffffc02014ae:	8b85                	andi	a5,a5,1
ffffffffc02014b0:	48078e63          	beqz	a5,ffffffffc020194c <default_check+0x682>
ffffffffc02014b4:	0909a703          	lw	a4,144(s3)
ffffffffc02014b8:	478d                	li	a5,3
ffffffffc02014ba:	48f71963          	bne	a4,a5,ffffffffc020194c <default_check+0x682>
ffffffffc02014be:	450d                	li	a0,3
ffffffffc02014c0:	4ad000ef          	jal	ra,ffffffffc020216c <alloc_pages>
ffffffffc02014c4:	8c2a                	mv	s8,a0
ffffffffc02014c6:	46050363          	beqz	a0,ffffffffc020192c <default_check+0x662>
ffffffffc02014ca:	4505                	li	a0,1
ffffffffc02014cc:	4a1000ef          	jal	ra,ffffffffc020216c <alloc_pages>
ffffffffc02014d0:	42051e63          	bnez	a0,ffffffffc020190c <default_check+0x642>
ffffffffc02014d4:	418a1c63          	bne	s4,s8,ffffffffc02018ec <default_check+0x622>
ffffffffc02014d8:	4585                	li	a1,1
ffffffffc02014da:	854e                	mv	a0,s3
ffffffffc02014dc:	4cf000ef          	jal	ra,ffffffffc02021aa <free_pages>
ffffffffc02014e0:	458d                	li	a1,3
ffffffffc02014e2:	8552                	mv	a0,s4
ffffffffc02014e4:	4c7000ef          	jal	ra,ffffffffc02021aa <free_pages>
ffffffffc02014e8:	0089b783          	ld	a5,8(s3)
ffffffffc02014ec:	04098c13          	addi	s8,s3,64
ffffffffc02014f0:	8385                	srli	a5,a5,0x1
ffffffffc02014f2:	8b85                	andi	a5,a5,1
ffffffffc02014f4:	3c078c63          	beqz	a5,ffffffffc02018cc <default_check+0x602>
ffffffffc02014f8:	0109a703          	lw	a4,16(s3)
ffffffffc02014fc:	4785                	li	a5,1
ffffffffc02014fe:	3cf71763          	bne	a4,a5,ffffffffc02018cc <default_check+0x602>
ffffffffc0201502:	008a3783          	ld	a5,8(s4)
ffffffffc0201506:	8385                	srli	a5,a5,0x1
ffffffffc0201508:	8b85                	andi	a5,a5,1
ffffffffc020150a:	3a078163          	beqz	a5,ffffffffc02018ac <default_check+0x5e2>
ffffffffc020150e:	010a2703          	lw	a4,16(s4)
ffffffffc0201512:	478d                	li	a5,3
ffffffffc0201514:	38f71c63          	bne	a4,a5,ffffffffc02018ac <default_check+0x5e2>
ffffffffc0201518:	4505                	li	a0,1
ffffffffc020151a:	453000ef          	jal	ra,ffffffffc020216c <alloc_pages>
ffffffffc020151e:	36a99763          	bne	s3,a0,ffffffffc020188c <default_check+0x5c2>
ffffffffc0201522:	4585                	li	a1,1
ffffffffc0201524:	487000ef          	jal	ra,ffffffffc02021aa <free_pages>
ffffffffc0201528:	4509                	li	a0,2
ffffffffc020152a:	443000ef          	jal	ra,ffffffffc020216c <alloc_pages>
ffffffffc020152e:	32aa1f63          	bne	s4,a0,ffffffffc020186c <default_check+0x5a2>
ffffffffc0201532:	4589                	li	a1,2
ffffffffc0201534:	477000ef          	jal	ra,ffffffffc02021aa <free_pages>
ffffffffc0201538:	4585                	li	a1,1
ffffffffc020153a:	8562                	mv	a0,s8
ffffffffc020153c:	46f000ef          	jal	ra,ffffffffc02021aa <free_pages>
ffffffffc0201540:	4515                	li	a0,5
ffffffffc0201542:	42b000ef          	jal	ra,ffffffffc020216c <alloc_pages>
ffffffffc0201546:	89aa                	mv	s3,a0
ffffffffc0201548:	48050263          	beqz	a0,ffffffffc02019cc <default_check+0x702>
ffffffffc020154c:	4505                	li	a0,1
ffffffffc020154e:	41f000ef          	jal	ra,ffffffffc020216c <alloc_pages>
ffffffffc0201552:	2c051d63          	bnez	a0,ffffffffc020182c <default_check+0x562>
ffffffffc0201556:	481c                	lw	a5,16(s0)
ffffffffc0201558:	2a079a63          	bnez	a5,ffffffffc020180c <default_check+0x542>
ffffffffc020155c:	4595                	li	a1,5
ffffffffc020155e:	854e                	mv	a0,s3
ffffffffc0201560:	01742823          	sw	s7,16(s0)
ffffffffc0201564:	01643023          	sd	s6,0(s0)
ffffffffc0201568:	01543423          	sd	s5,8(s0)
ffffffffc020156c:	43f000ef          	jal	ra,ffffffffc02021aa <free_pages>
ffffffffc0201570:	641c                	ld	a5,8(s0)
ffffffffc0201572:	00878963          	beq	a5,s0,ffffffffc0201584 <default_check+0x2ba>
ffffffffc0201576:	ff87a703          	lw	a4,-8(a5)
ffffffffc020157a:	679c                	ld	a5,8(a5)
ffffffffc020157c:	397d                	addiw	s2,s2,-1
ffffffffc020157e:	9c99                	subw	s1,s1,a4
ffffffffc0201580:	fe879be3          	bne	a5,s0,ffffffffc0201576 <default_check+0x2ac>
ffffffffc0201584:	26091463          	bnez	s2,ffffffffc02017ec <default_check+0x522>
ffffffffc0201588:	46049263          	bnez	s1,ffffffffc02019ec <default_check+0x722>
ffffffffc020158c:	60a6                	ld	ra,72(sp)
ffffffffc020158e:	6406                	ld	s0,64(sp)
ffffffffc0201590:	74e2                	ld	s1,56(sp)
ffffffffc0201592:	7942                	ld	s2,48(sp)
ffffffffc0201594:	79a2                	ld	s3,40(sp)
ffffffffc0201596:	7a02                	ld	s4,32(sp)
ffffffffc0201598:	6ae2                	ld	s5,24(sp)
ffffffffc020159a:	6b42                	ld	s6,16(sp)
ffffffffc020159c:	6ba2                	ld	s7,8(sp)
ffffffffc020159e:	6c02                	ld	s8,0(sp)
ffffffffc02015a0:	6161                	addi	sp,sp,80
ffffffffc02015a2:	8082                	ret
ffffffffc02015a4:	4981                	li	s3,0
ffffffffc02015a6:	4481                	li	s1,0
ffffffffc02015a8:	4901                	li	s2,0
ffffffffc02015aa:	b38d                	j	ffffffffc020130c <default_check+0x42>
ffffffffc02015ac:	0000b697          	auipc	a3,0xb
ffffffffc02015b0:	b4c68693          	addi	a3,a3,-1204 # ffffffffc020c0f8 <commands+0x950>
ffffffffc02015b4:	0000a617          	auipc	a2,0xa
ffffffffc02015b8:	40460613          	addi	a2,a2,1028 # ffffffffc020b9b8 <commands+0x210>
ffffffffc02015bc:	0ef00593          	li	a1,239
ffffffffc02015c0:	0000b517          	auipc	a0,0xb
ffffffffc02015c4:	b4850513          	addi	a0,a0,-1208 # ffffffffc020c108 <commands+0x960>
ffffffffc02015c8:	ed7fe0ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc02015cc:	0000b697          	auipc	a3,0xb
ffffffffc02015d0:	bd468693          	addi	a3,a3,-1068 # ffffffffc020c1a0 <commands+0x9f8>
ffffffffc02015d4:	0000a617          	auipc	a2,0xa
ffffffffc02015d8:	3e460613          	addi	a2,a2,996 # ffffffffc020b9b8 <commands+0x210>
ffffffffc02015dc:	0bc00593          	li	a1,188
ffffffffc02015e0:	0000b517          	auipc	a0,0xb
ffffffffc02015e4:	b2850513          	addi	a0,a0,-1240 # ffffffffc020c108 <commands+0x960>
ffffffffc02015e8:	eb7fe0ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc02015ec:	0000b697          	auipc	a3,0xb
ffffffffc02015f0:	bdc68693          	addi	a3,a3,-1060 # ffffffffc020c1c8 <commands+0xa20>
ffffffffc02015f4:	0000a617          	auipc	a2,0xa
ffffffffc02015f8:	3c460613          	addi	a2,a2,964 # ffffffffc020b9b8 <commands+0x210>
ffffffffc02015fc:	0bd00593          	li	a1,189
ffffffffc0201600:	0000b517          	auipc	a0,0xb
ffffffffc0201604:	b0850513          	addi	a0,a0,-1272 # ffffffffc020c108 <commands+0x960>
ffffffffc0201608:	e97fe0ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc020160c:	0000b697          	auipc	a3,0xb
ffffffffc0201610:	bfc68693          	addi	a3,a3,-1028 # ffffffffc020c208 <commands+0xa60>
ffffffffc0201614:	0000a617          	auipc	a2,0xa
ffffffffc0201618:	3a460613          	addi	a2,a2,932 # ffffffffc020b9b8 <commands+0x210>
ffffffffc020161c:	0bf00593          	li	a1,191
ffffffffc0201620:	0000b517          	auipc	a0,0xb
ffffffffc0201624:	ae850513          	addi	a0,a0,-1304 # ffffffffc020c108 <commands+0x960>
ffffffffc0201628:	e77fe0ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc020162c:	0000b697          	auipc	a3,0xb
ffffffffc0201630:	c6468693          	addi	a3,a3,-924 # ffffffffc020c290 <commands+0xae8>
ffffffffc0201634:	0000a617          	auipc	a2,0xa
ffffffffc0201638:	38460613          	addi	a2,a2,900 # ffffffffc020b9b8 <commands+0x210>
ffffffffc020163c:	0d800593          	li	a1,216
ffffffffc0201640:	0000b517          	auipc	a0,0xb
ffffffffc0201644:	ac850513          	addi	a0,a0,-1336 # ffffffffc020c108 <commands+0x960>
ffffffffc0201648:	e57fe0ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc020164c:	0000b697          	auipc	a3,0xb
ffffffffc0201650:	af468693          	addi	a3,a3,-1292 # ffffffffc020c140 <commands+0x998>
ffffffffc0201654:	0000a617          	auipc	a2,0xa
ffffffffc0201658:	36460613          	addi	a2,a2,868 # ffffffffc020b9b8 <commands+0x210>
ffffffffc020165c:	0d100593          	li	a1,209
ffffffffc0201660:	0000b517          	auipc	a0,0xb
ffffffffc0201664:	aa850513          	addi	a0,a0,-1368 # ffffffffc020c108 <commands+0x960>
ffffffffc0201668:	e37fe0ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc020166c:	0000b697          	auipc	a3,0xb
ffffffffc0201670:	c1468693          	addi	a3,a3,-1004 # ffffffffc020c280 <commands+0xad8>
ffffffffc0201674:	0000a617          	auipc	a2,0xa
ffffffffc0201678:	34460613          	addi	a2,a2,836 # ffffffffc020b9b8 <commands+0x210>
ffffffffc020167c:	0cf00593          	li	a1,207
ffffffffc0201680:	0000b517          	auipc	a0,0xb
ffffffffc0201684:	a8850513          	addi	a0,a0,-1400 # ffffffffc020c108 <commands+0x960>
ffffffffc0201688:	e17fe0ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc020168c:	0000b697          	auipc	a3,0xb
ffffffffc0201690:	bdc68693          	addi	a3,a3,-1060 # ffffffffc020c268 <commands+0xac0>
ffffffffc0201694:	0000a617          	auipc	a2,0xa
ffffffffc0201698:	32460613          	addi	a2,a2,804 # ffffffffc020b9b8 <commands+0x210>
ffffffffc020169c:	0ca00593          	li	a1,202
ffffffffc02016a0:	0000b517          	auipc	a0,0xb
ffffffffc02016a4:	a6850513          	addi	a0,a0,-1432 # ffffffffc020c108 <commands+0x960>
ffffffffc02016a8:	df7fe0ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc02016ac:	0000b697          	auipc	a3,0xb
ffffffffc02016b0:	b9c68693          	addi	a3,a3,-1124 # ffffffffc020c248 <commands+0xaa0>
ffffffffc02016b4:	0000a617          	auipc	a2,0xa
ffffffffc02016b8:	30460613          	addi	a2,a2,772 # ffffffffc020b9b8 <commands+0x210>
ffffffffc02016bc:	0c100593          	li	a1,193
ffffffffc02016c0:	0000b517          	auipc	a0,0xb
ffffffffc02016c4:	a4850513          	addi	a0,a0,-1464 # ffffffffc020c108 <commands+0x960>
ffffffffc02016c8:	dd7fe0ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc02016cc:	0000b697          	auipc	a3,0xb
ffffffffc02016d0:	c0c68693          	addi	a3,a3,-1012 # ffffffffc020c2d8 <commands+0xb30>
ffffffffc02016d4:	0000a617          	auipc	a2,0xa
ffffffffc02016d8:	2e460613          	addi	a2,a2,740 # ffffffffc020b9b8 <commands+0x210>
ffffffffc02016dc:	0f700593          	li	a1,247
ffffffffc02016e0:	0000b517          	auipc	a0,0xb
ffffffffc02016e4:	a2850513          	addi	a0,a0,-1496 # ffffffffc020c108 <commands+0x960>
ffffffffc02016e8:	db7fe0ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc02016ec:	0000b697          	auipc	a3,0xb
ffffffffc02016f0:	bdc68693          	addi	a3,a3,-1060 # ffffffffc020c2c8 <commands+0xb20>
ffffffffc02016f4:	0000a617          	auipc	a2,0xa
ffffffffc02016f8:	2c460613          	addi	a2,a2,708 # ffffffffc020b9b8 <commands+0x210>
ffffffffc02016fc:	0de00593          	li	a1,222
ffffffffc0201700:	0000b517          	auipc	a0,0xb
ffffffffc0201704:	a0850513          	addi	a0,a0,-1528 # ffffffffc020c108 <commands+0x960>
ffffffffc0201708:	d97fe0ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc020170c:	0000b697          	auipc	a3,0xb
ffffffffc0201710:	b5c68693          	addi	a3,a3,-1188 # ffffffffc020c268 <commands+0xac0>
ffffffffc0201714:	0000a617          	auipc	a2,0xa
ffffffffc0201718:	2a460613          	addi	a2,a2,676 # ffffffffc020b9b8 <commands+0x210>
ffffffffc020171c:	0dc00593          	li	a1,220
ffffffffc0201720:	0000b517          	auipc	a0,0xb
ffffffffc0201724:	9e850513          	addi	a0,a0,-1560 # ffffffffc020c108 <commands+0x960>
ffffffffc0201728:	d77fe0ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc020172c:	0000b697          	auipc	a3,0xb
ffffffffc0201730:	b7c68693          	addi	a3,a3,-1156 # ffffffffc020c2a8 <commands+0xb00>
ffffffffc0201734:	0000a617          	auipc	a2,0xa
ffffffffc0201738:	28460613          	addi	a2,a2,644 # ffffffffc020b9b8 <commands+0x210>
ffffffffc020173c:	0db00593          	li	a1,219
ffffffffc0201740:	0000b517          	auipc	a0,0xb
ffffffffc0201744:	9c850513          	addi	a0,a0,-1592 # ffffffffc020c108 <commands+0x960>
ffffffffc0201748:	d57fe0ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc020174c:	0000b697          	auipc	a3,0xb
ffffffffc0201750:	9f468693          	addi	a3,a3,-1548 # ffffffffc020c140 <commands+0x998>
ffffffffc0201754:	0000a617          	auipc	a2,0xa
ffffffffc0201758:	26460613          	addi	a2,a2,612 # ffffffffc020b9b8 <commands+0x210>
ffffffffc020175c:	0b800593          	li	a1,184
ffffffffc0201760:	0000b517          	auipc	a0,0xb
ffffffffc0201764:	9a850513          	addi	a0,a0,-1624 # ffffffffc020c108 <commands+0x960>
ffffffffc0201768:	d37fe0ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc020176c:	0000b697          	auipc	a3,0xb
ffffffffc0201770:	afc68693          	addi	a3,a3,-1284 # ffffffffc020c268 <commands+0xac0>
ffffffffc0201774:	0000a617          	auipc	a2,0xa
ffffffffc0201778:	24460613          	addi	a2,a2,580 # ffffffffc020b9b8 <commands+0x210>
ffffffffc020177c:	0d500593          	li	a1,213
ffffffffc0201780:	0000b517          	auipc	a0,0xb
ffffffffc0201784:	98850513          	addi	a0,a0,-1656 # ffffffffc020c108 <commands+0x960>
ffffffffc0201788:	d17fe0ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc020178c:	0000b697          	auipc	a3,0xb
ffffffffc0201790:	9f468693          	addi	a3,a3,-1548 # ffffffffc020c180 <commands+0x9d8>
ffffffffc0201794:	0000a617          	auipc	a2,0xa
ffffffffc0201798:	22460613          	addi	a2,a2,548 # ffffffffc020b9b8 <commands+0x210>
ffffffffc020179c:	0d300593          	li	a1,211
ffffffffc02017a0:	0000b517          	auipc	a0,0xb
ffffffffc02017a4:	96850513          	addi	a0,a0,-1688 # ffffffffc020c108 <commands+0x960>
ffffffffc02017a8:	cf7fe0ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc02017ac:	0000b697          	auipc	a3,0xb
ffffffffc02017b0:	9b468693          	addi	a3,a3,-1612 # ffffffffc020c160 <commands+0x9b8>
ffffffffc02017b4:	0000a617          	auipc	a2,0xa
ffffffffc02017b8:	20460613          	addi	a2,a2,516 # ffffffffc020b9b8 <commands+0x210>
ffffffffc02017bc:	0d200593          	li	a1,210
ffffffffc02017c0:	0000b517          	auipc	a0,0xb
ffffffffc02017c4:	94850513          	addi	a0,a0,-1720 # ffffffffc020c108 <commands+0x960>
ffffffffc02017c8:	cd7fe0ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc02017cc:	0000b697          	auipc	a3,0xb
ffffffffc02017d0:	9b468693          	addi	a3,a3,-1612 # ffffffffc020c180 <commands+0x9d8>
ffffffffc02017d4:	0000a617          	auipc	a2,0xa
ffffffffc02017d8:	1e460613          	addi	a2,a2,484 # ffffffffc020b9b8 <commands+0x210>
ffffffffc02017dc:	0ba00593          	li	a1,186
ffffffffc02017e0:	0000b517          	auipc	a0,0xb
ffffffffc02017e4:	92850513          	addi	a0,a0,-1752 # ffffffffc020c108 <commands+0x960>
ffffffffc02017e8:	cb7fe0ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc02017ec:	0000b697          	auipc	a3,0xb
ffffffffc02017f0:	c3c68693          	addi	a3,a3,-964 # ffffffffc020c428 <commands+0xc80>
ffffffffc02017f4:	0000a617          	auipc	a2,0xa
ffffffffc02017f8:	1c460613          	addi	a2,a2,452 # ffffffffc020b9b8 <commands+0x210>
ffffffffc02017fc:	12400593          	li	a1,292
ffffffffc0201800:	0000b517          	auipc	a0,0xb
ffffffffc0201804:	90850513          	addi	a0,a0,-1784 # ffffffffc020c108 <commands+0x960>
ffffffffc0201808:	c97fe0ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc020180c:	0000b697          	auipc	a3,0xb
ffffffffc0201810:	abc68693          	addi	a3,a3,-1348 # ffffffffc020c2c8 <commands+0xb20>
ffffffffc0201814:	0000a617          	auipc	a2,0xa
ffffffffc0201818:	1a460613          	addi	a2,a2,420 # ffffffffc020b9b8 <commands+0x210>
ffffffffc020181c:	11900593          	li	a1,281
ffffffffc0201820:	0000b517          	auipc	a0,0xb
ffffffffc0201824:	8e850513          	addi	a0,a0,-1816 # ffffffffc020c108 <commands+0x960>
ffffffffc0201828:	c77fe0ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc020182c:	0000b697          	auipc	a3,0xb
ffffffffc0201830:	a3c68693          	addi	a3,a3,-1476 # ffffffffc020c268 <commands+0xac0>
ffffffffc0201834:	0000a617          	auipc	a2,0xa
ffffffffc0201838:	18460613          	addi	a2,a2,388 # ffffffffc020b9b8 <commands+0x210>
ffffffffc020183c:	11700593          	li	a1,279
ffffffffc0201840:	0000b517          	auipc	a0,0xb
ffffffffc0201844:	8c850513          	addi	a0,a0,-1848 # ffffffffc020c108 <commands+0x960>
ffffffffc0201848:	c57fe0ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc020184c:	0000b697          	auipc	a3,0xb
ffffffffc0201850:	9dc68693          	addi	a3,a3,-1572 # ffffffffc020c228 <commands+0xa80>
ffffffffc0201854:	0000a617          	auipc	a2,0xa
ffffffffc0201858:	16460613          	addi	a2,a2,356 # ffffffffc020b9b8 <commands+0x210>
ffffffffc020185c:	0c000593          	li	a1,192
ffffffffc0201860:	0000b517          	auipc	a0,0xb
ffffffffc0201864:	8a850513          	addi	a0,a0,-1880 # ffffffffc020c108 <commands+0x960>
ffffffffc0201868:	c37fe0ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc020186c:	0000b697          	auipc	a3,0xb
ffffffffc0201870:	b7c68693          	addi	a3,a3,-1156 # ffffffffc020c3e8 <commands+0xc40>
ffffffffc0201874:	0000a617          	auipc	a2,0xa
ffffffffc0201878:	14460613          	addi	a2,a2,324 # ffffffffc020b9b8 <commands+0x210>
ffffffffc020187c:	11100593          	li	a1,273
ffffffffc0201880:	0000b517          	auipc	a0,0xb
ffffffffc0201884:	88850513          	addi	a0,a0,-1912 # ffffffffc020c108 <commands+0x960>
ffffffffc0201888:	c17fe0ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc020188c:	0000b697          	auipc	a3,0xb
ffffffffc0201890:	b3c68693          	addi	a3,a3,-1220 # ffffffffc020c3c8 <commands+0xc20>
ffffffffc0201894:	0000a617          	auipc	a2,0xa
ffffffffc0201898:	12460613          	addi	a2,a2,292 # ffffffffc020b9b8 <commands+0x210>
ffffffffc020189c:	10f00593          	li	a1,271
ffffffffc02018a0:	0000b517          	auipc	a0,0xb
ffffffffc02018a4:	86850513          	addi	a0,a0,-1944 # ffffffffc020c108 <commands+0x960>
ffffffffc02018a8:	bf7fe0ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc02018ac:	0000b697          	auipc	a3,0xb
ffffffffc02018b0:	af468693          	addi	a3,a3,-1292 # ffffffffc020c3a0 <commands+0xbf8>
ffffffffc02018b4:	0000a617          	auipc	a2,0xa
ffffffffc02018b8:	10460613          	addi	a2,a2,260 # ffffffffc020b9b8 <commands+0x210>
ffffffffc02018bc:	10d00593          	li	a1,269
ffffffffc02018c0:	0000b517          	auipc	a0,0xb
ffffffffc02018c4:	84850513          	addi	a0,a0,-1976 # ffffffffc020c108 <commands+0x960>
ffffffffc02018c8:	bd7fe0ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc02018cc:	0000b697          	auipc	a3,0xb
ffffffffc02018d0:	aac68693          	addi	a3,a3,-1364 # ffffffffc020c378 <commands+0xbd0>
ffffffffc02018d4:	0000a617          	auipc	a2,0xa
ffffffffc02018d8:	0e460613          	addi	a2,a2,228 # ffffffffc020b9b8 <commands+0x210>
ffffffffc02018dc:	10c00593          	li	a1,268
ffffffffc02018e0:	0000b517          	auipc	a0,0xb
ffffffffc02018e4:	82850513          	addi	a0,a0,-2008 # ffffffffc020c108 <commands+0x960>
ffffffffc02018e8:	bb7fe0ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc02018ec:	0000b697          	auipc	a3,0xb
ffffffffc02018f0:	a7c68693          	addi	a3,a3,-1412 # ffffffffc020c368 <commands+0xbc0>
ffffffffc02018f4:	0000a617          	auipc	a2,0xa
ffffffffc02018f8:	0c460613          	addi	a2,a2,196 # ffffffffc020b9b8 <commands+0x210>
ffffffffc02018fc:	10700593          	li	a1,263
ffffffffc0201900:	0000b517          	auipc	a0,0xb
ffffffffc0201904:	80850513          	addi	a0,a0,-2040 # ffffffffc020c108 <commands+0x960>
ffffffffc0201908:	b97fe0ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc020190c:	0000b697          	auipc	a3,0xb
ffffffffc0201910:	95c68693          	addi	a3,a3,-1700 # ffffffffc020c268 <commands+0xac0>
ffffffffc0201914:	0000a617          	auipc	a2,0xa
ffffffffc0201918:	0a460613          	addi	a2,a2,164 # ffffffffc020b9b8 <commands+0x210>
ffffffffc020191c:	10600593          	li	a1,262
ffffffffc0201920:	0000a517          	auipc	a0,0xa
ffffffffc0201924:	7e850513          	addi	a0,a0,2024 # ffffffffc020c108 <commands+0x960>
ffffffffc0201928:	b77fe0ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc020192c:	0000b697          	auipc	a3,0xb
ffffffffc0201930:	a1c68693          	addi	a3,a3,-1508 # ffffffffc020c348 <commands+0xba0>
ffffffffc0201934:	0000a617          	auipc	a2,0xa
ffffffffc0201938:	08460613          	addi	a2,a2,132 # ffffffffc020b9b8 <commands+0x210>
ffffffffc020193c:	10500593          	li	a1,261
ffffffffc0201940:	0000a517          	auipc	a0,0xa
ffffffffc0201944:	7c850513          	addi	a0,a0,1992 # ffffffffc020c108 <commands+0x960>
ffffffffc0201948:	b57fe0ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc020194c:	0000b697          	auipc	a3,0xb
ffffffffc0201950:	9cc68693          	addi	a3,a3,-1588 # ffffffffc020c318 <commands+0xb70>
ffffffffc0201954:	0000a617          	auipc	a2,0xa
ffffffffc0201958:	06460613          	addi	a2,a2,100 # ffffffffc020b9b8 <commands+0x210>
ffffffffc020195c:	10400593          	li	a1,260
ffffffffc0201960:	0000a517          	auipc	a0,0xa
ffffffffc0201964:	7a850513          	addi	a0,a0,1960 # ffffffffc020c108 <commands+0x960>
ffffffffc0201968:	b37fe0ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc020196c:	0000b697          	auipc	a3,0xb
ffffffffc0201970:	99468693          	addi	a3,a3,-1644 # ffffffffc020c300 <commands+0xb58>
ffffffffc0201974:	0000a617          	auipc	a2,0xa
ffffffffc0201978:	04460613          	addi	a2,a2,68 # ffffffffc020b9b8 <commands+0x210>
ffffffffc020197c:	10300593          	li	a1,259
ffffffffc0201980:	0000a517          	auipc	a0,0xa
ffffffffc0201984:	78850513          	addi	a0,a0,1928 # ffffffffc020c108 <commands+0x960>
ffffffffc0201988:	b17fe0ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc020198c:	0000b697          	auipc	a3,0xb
ffffffffc0201990:	8dc68693          	addi	a3,a3,-1828 # ffffffffc020c268 <commands+0xac0>
ffffffffc0201994:	0000a617          	auipc	a2,0xa
ffffffffc0201998:	02460613          	addi	a2,a2,36 # ffffffffc020b9b8 <commands+0x210>
ffffffffc020199c:	0fd00593          	li	a1,253
ffffffffc02019a0:	0000a517          	auipc	a0,0xa
ffffffffc02019a4:	76850513          	addi	a0,a0,1896 # ffffffffc020c108 <commands+0x960>
ffffffffc02019a8:	af7fe0ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc02019ac:	0000b697          	auipc	a3,0xb
ffffffffc02019b0:	93c68693          	addi	a3,a3,-1732 # ffffffffc020c2e8 <commands+0xb40>
ffffffffc02019b4:	0000a617          	auipc	a2,0xa
ffffffffc02019b8:	00460613          	addi	a2,a2,4 # ffffffffc020b9b8 <commands+0x210>
ffffffffc02019bc:	0f800593          	li	a1,248
ffffffffc02019c0:	0000a517          	auipc	a0,0xa
ffffffffc02019c4:	74850513          	addi	a0,a0,1864 # ffffffffc020c108 <commands+0x960>
ffffffffc02019c8:	ad7fe0ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc02019cc:	0000b697          	auipc	a3,0xb
ffffffffc02019d0:	a3c68693          	addi	a3,a3,-1476 # ffffffffc020c408 <commands+0xc60>
ffffffffc02019d4:	0000a617          	auipc	a2,0xa
ffffffffc02019d8:	fe460613          	addi	a2,a2,-28 # ffffffffc020b9b8 <commands+0x210>
ffffffffc02019dc:	11600593          	li	a1,278
ffffffffc02019e0:	0000a517          	auipc	a0,0xa
ffffffffc02019e4:	72850513          	addi	a0,a0,1832 # ffffffffc020c108 <commands+0x960>
ffffffffc02019e8:	ab7fe0ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc02019ec:	0000b697          	auipc	a3,0xb
ffffffffc02019f0:	a4c68693          	addi	a3,a3,-1460 # ffffffffc020c438 <commands+0xc90>
ffffffffc02019f4:	0000a617          	auipc	a2,0xa
ffffffffc02019f8:	fc460613          	addi	a2,a2,-60 # ffffffffc020b9b8 <commands+0x210>
ffffffffc02019fc:	12500593          	li	a1,293
ffffffffc0201a00:	0000a517          	auipc	a0,0xa
ffffffffc0201a04:	70850513          	addi	a0,a0,1800 # ffffffffc020c108 <commands+0x960>
ffffffffc0201a08:	a97fe0ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc0201a0c:	0000a697          	auipc	a3,0xa
ffffffffc0201a10:	71468693          	addi	a3,a3,1812 # ffffffffc020c120 <commands+0x978>
ffffffffc0201a14:	0000a617          	auipc	a2,0xa
ffffffffc0201a18:	fa460613          	addi	a2,a2,-92 # ffffffffc020b9b8 <commands+0x210>
ffffffffc0201a1c:	0f200593          	li	a1,242
ffffffffc0201a20:	0000a517          	auipc	a0,0xa
ffffffffc0201a24:	6e850513          	addi	a0,a0,1768 # ffffffffc020c108 <commands+0x960>
ffffffffc0201a28:	a77fe0ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc0201a2c:	0000a697          	auipc	a3,0xa
ffffffffc0201a30:	73468693          	addi	a3,a3,1844 # ffffffffc020c160 <commands+0x9b8>
ffffffffc0201a34:	0000a617          	auipc	a2,0xa
ffffffffc0201a38:	f8460613          	addi	a2,a2,-124 # ffffffffc020b9b8 <commands+0x210>
ffffffffc0201a3c:	0b900593          	li	a1,185
ffffffffc0201a40:	0000a517          	auipc	a0,0xa
ffffffffc0201a44:	6c850513          	addi	a0,a0,1736 # ffffffffc020c108 <commands+0x960>
ffffffffc0201a48:	a57fe0ef          	jal	ra,ffffffffc020049e <__panic>

ffffffffc0201a4c <default_free_pages>:
ffffffffc0201a4c:	1141                	addi	sp,sp,-16
ffffffffc0201a4e:	e406                	sd	ra,8(sp)
ffffffffc0201a50:	14058463          	beqz	a1,ffffffffc0201b98 <default_free_pages+0x14c>
ffffffffc0201a54:	00659693          	slli	a3,a1,0x6
ffffffffc0201a58:	96aa                	add	a3,a3,a0
ffffffffc0201a5a:	87aa                	mv	a5,a0
ffffffffc0201a5c:	02d50263          	beq	a0,a3,ffffffffc0201a80 <default_free_pages+0x34>
ffffffffc0201a60:	6798                	ld	a4,8(a5)
ffffffffc0201a62:	8b05                	andi	a4,a4,1
ffffffffc0201a64:	10071a63          	bnez	a4,ffffffffc0201b78 <default_free_pages+0x12c>
ffffffffc0201a68:	6798                	ld	a4,8(a5)
ffffffffc0201a6a:	8b09                	andi	a4,a4,2
ffffffffc0201a6c:	10071663          	bnez	a4,ffffffffc0201b78 <default_free_pages+0x12c>
ffffffffc0201a70:	0007b423          	sd	zero,8(a5)
ffffffffc0201a74:	0007a023          	sw	zero,0(a5)
ffffffffc0201a78:	04078793          	addi	a5,a5,64
ffffffffc0201a7c:	fed792e3          	bne	a5,a3,ffffffffc0201a60 <default_free_pages+0x14>
ffffffffc0201a80:	2581                	sext.w	a1,a1
ffffffffc0201a82:	c90c                	sw	a1,16(a0)
ffffffffc0201a84:	00850893          	addi	a7,a0,8
ffffffffc0201a88:	4789                	li	a5,2
ffffffffc0201a8a:	40f8b02f          	amoor.d	zero,a5,(a7)
ffffffffc0201a8e:	00090697          	auipc	a3,0x90
ffffffffc0201a92:	d1a68693          	addi	a3,a3,-742 # ffffffffc02917a8 <free_area>
ffffffffc0201a96:	4a98                	lw	a4,16(a3)
ffffffffc0201a98:	669c                	ld	a5,8(a3)
ffffffffc0201a9a:	01850613          	addi	a2,a0,24
ffffffffc0201a9e:	9db9                	addw	a1,a1,a4
ffffffffc0201aa0:	ca8c                	sw	a1,16(a3)
ffffffffc0201aa2:	0ad78463          	beq	a5,a3,ffffffffc0201b4a <default_free_pages+0xfe>
ffffffffc0201aa6:	fe878713          	addi	a4,a5,-24
ffffffffc0201aaa:	0006b803          	ld	a6,0(a3)
ffffffffc0201aae:	4581                	li	a1,0
ffffffffc0201ab0:	00e56a63          	bltu	a0,a4,ffffffffc0201ac4 <default_free_pages+0x78>
ffffffffc0201ab4:	6798                	ld	a4,8(a5)
ffffffffc0201ab6:	04d70c63          	beq	a4,a3,ffffffffc0201b0e <default_free_pages+0xc2>
ffffffffc0201aba:	87ba                	mv	a5,a4
ffffffffc0201abc:	fe878713          	addi	a4,a5,-24
ffffffffc0201ac0:	fee57ae3          	bgeu	a0,a4,ffffffffc0201ab4 <default_free_pages+0x68>
ffffffffc0201ac4:	c199                	beqz	a1,ffffffffc0201aca <default_free_pages+0x7e>
ffffffffc0201ac6:	0106b023          	sd	a6,0(a3)
ffffffffc0201aca:	6398                	ld	a4,0(a5)
ffffffffc0201acc:	e390                	sd	a2,0(a5)
ffffffffc0201ace:	e710                	sd	a2,8(a4)
ffffffffc0201ad0:	f11c                	sd	a5,32(a0)
ffffffffc0201ad2:	ed18                	sd	a4,24(a0)
ffffffffc0201ad4:	00d70d63          	beq	a4,a3,ffffffffc0201aee <default_free_pages+0xa2>
ffffffffc0201ad8:	ff872583          	lw	a1,-8(a4)
ffffffffc0201adc:	fe870613          	addi	a2,a4,-24
ffffffffc0201ae0:	02059813          	slli	a6,a1,0x20
ffffffffc0201ae4:	01a85793          	srli	a5,a6,0x1a
ffffffffc0201ae8:	97b2                	add	a5,a5,a2
ffffffffc0201aea:	02f50c63          	beq	a0,a5,ffffffffc0201b22 <default_free_pages+0xd6>
ffffffffc0201aee:	711c                	ld	a5,32(a0)
ffffffffc0201af0:	00d78c63          	beq	a5,a3,ffffffffc0201b08 <default_free_pages+0xbc>
ffffffffc0201af4:	4910                	lw	a2,16(a0)
ffffffffc0201af6:	fe878693          	addi	a3,a5,-24
ffffffffc0201afa:	02061593          	slli	a1,a2,0x20
ffffffffc0201afe:	01a5d713          	srli	a4,a1,0x1a
ffffffffc0201b02:	972a                	add	a4,a4,a0
ffffffffc0201b04:	04e68a63          	beq	a3,a4,ffffffffc0201b58 <default_free_pages+0x10c>
ffffffffc0201b08:	60a2                	ld	ra,8(sp)
ffffffffc0201b0a:	0141                	addi	sp,sp,16
ffffffffc0201b0c:	8082                	ret
ffffffffc0201b0e:	e790                	sd	a2,8(a5)
ffffffffc0201b10:	f114                	sd	a3,32(a0)
ffffffffc0201b12:	6798                	ld	a4,8(a5)
ffffffffc0201b14:	ed1c                	sd	a5,24(a0)
ffffffffc0201b16:	02d70763          	beq	a4,a3,ffffffffc0201b44 <default_free_pages+0xf8>
ffffffffc0201b1a:	8832                	mv	a6,a2
ffffffffc0201b1c:	4585                	li	a1,1
ffffffffc0201b1e:	87ba                	mv	a5,a4
ffffffffc0201b20:	bf71                	j	ffffffffc0201abc <default_free_pages+0x70>
ffffffffc0201b22:	491c                	lw	a5,16(a0)
ffffffffc0201b24:	9dbd                	addw	a1,a1,a5
ffffffffc0201b26:	feb72c23          	sw	a1,-8(a4)
ffffffffc0201b2a:	57f5                	li	a5,-3
ffffffffc0201b2c:	60f8b02f          	amoand.d	zero,a5,(a7)
ffffffffc0201b30:	01853803          	ld	a6,24(a0)
ffffffffc0201b34:	710c                	ld	a1,32(a0)
ffffffffc0201b36:	8532                	mv	a0,a2
ffffffffc0201b38:	00b83423          	sd	a1,8(a6)
ffffffffc0201b3c:	671c                	ld	a5,8(a4)
ffffffffc0201b3e:	0105b023          	sd	a6,0(a1)
ffffffffc0201b42:	b77d                	j	ffffffffc0201af0 <default_free_pages+0xa4>
ffffffffc0201b44:	e290                	sd	a2,0(a3)
ffffffffc0201b46:	873e                	mv	a4,a5
ffffffffc0201b48:	bf41                	j	ffffffffc0201ad8 <default_free_pages+0x8c>
ffffffffc0201b4a:	60a2                	ld	ra,8(sp)
ffffffffc0201b4c:	e390                	sd	a2,0(a5)
ffffffffc0201b4e:	e790                	sd	a2,8(a5)
ffffffffc0201b50:	f11c                	sd	a5,32(a0)
ffffffffc0201b52:	ed1c                	sd	a5,24(a0)
ffffffffc0201b54:	0141                	addi	sp,sp,16
ffffffffc0201b56:	8082                	ret
ffffffffc0201b58:	ff87a703          	lw	a4,-8(a5)
ffffffffc0201b5c:	ff078693          	addi	a3,a5,-16
ffffffffc0201b60:	9e39                	addw	a2,a2,a4
ffffffffc0201b62:	c910                	sw	a2,16(a0)
ffffffffc0201b64:	5775                	li	a4,-3
ffffffffc0201b66:	60e6b02f          	amoand.d	zero,a4,(a3)
ffffffffc0201b6a:	6398                	ld	a4,0(a5)
ffffffffc0201b6c:	679c                	ld	a5,8(a5)
ffffffffc0201b6e:	60a2                	ld	ra,8(sp)
ffffffffc0201b70:	e71c                	sd	a5,8(a4)
ffffffffc0201b72:	e398                	sd	a4,0(a5)
ffffffffc0201b74:	0141                	addi	sp,sp,16
ffffffffc0201b76:	8082                	ret
ffffffffc0201b78:	0000b697          	auipc	a3,0xb
ffffffffc0201b7c:	8d868693          	addi	a3,a3,-1832 # ffffffffc020c450 <commands+0xca8>
ffffffffc0201b80:	0000a617          	auipc	a2,0xa
ffffffffc0201b84:	e3860613          	addi	a2,a2,-456 # ffffffffc020b9b8 <commands+0x210>
ffffffffc0201b88:	08200593          	li	a1,130
ffffffffc0201b8c:	0000a517          	auipc	a0,0xa
ffffffffc0201b90:	57c50513          	addi	a0,a0,1404 # ffffffffc020c108 <commands+0x960>
ffffffffc0201b94:	90bfe0ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc0201b98:	0000b697          	auipc	a3,0xb
ffffffffc0201b9c:	8b068693          	addi	a3,a3,-1872 # ffffffffc020c448 <commands+0xca0>
ffffffffc0201ba0:	0000a617          	auipc	a2,0xa
ffffffffc0201ba4:	e1860613          	addi	a2,a2,-488 # ffffffffc020b9b8 <commands+0x210>
ffffffffc0201ba8:	07f00593          	li	a1,127
ffffffffc0201bac:	0000a517          	auipc	a0,0xa
ffffffffc0201bb0:	55c50513          	addi	a0,a0,1372 # ffffffffc020c108 <commands+0x960>
ffffffffc0201bb4:	8ebfe0ef          	jal	ra,ffffffffc020049e <__panic>

ffffffffc0201bb8 <default_alloc_pages>:
ffffffffc0201bb8:	c941                	beqz	a0,ffffffffc0201c48 <default_alloc_pages+0x90>
ffffffffc0201bba:	00090597          	auipc	a1,0x90
ffffffffc0201bbe:	bee58593          	addi	a1,a1,-1042 # ffffffffc02917a8 <free_area>
ffffffffc0201bc2:	0105a803          	lw	a6,16(a1)
ffffffffc0201bc6:	872a                	mv	a4,a0
ffffffffc0201bc8:	02081793          	slli	a5,a6,0x20
ffffffffc0201bcc:	9381                	srli	a5,a5,0x20
ffffffffc0201bce:	00a7ee63          	bltu	a5,a0,ffffffffc0201bea <default_alloc_pages+0x32>
ffffffffc0201bd2:	87ae                	mv	a5,a1
ffffffffc0201bd4:	a801                	j	ffffffffc0201be4 <default_alloc_pages+0x2c>
ffffffffc0201bd6:	ff87a683          	lw	a3,-8(a5)
ffffffffc0201bda:	02069613          	slli	a2,a3,0x20
ffffffffc0201bde:	9201                	srli	a2,a2,0x20
ffffffffc0201be0:	00e67763          	bgeu	a2,a4,ffffffffc0201bee <default_alloc_pages+0x36>
ffffffffc0201be4:	679c                	ld	a5,8(a5)
ffffffffc0201be6:	feb798e3          	bne	a5,a1,ffffffffc0201bd6 <default_alloc_pages+0x1e>
ffffffffc0201bea:	4501                	li	a0,0
ffffffffc0201bec:	8082                	ret
ffffffffc0201bee:	0007b883          	ld	a7,0(a5)
ffffffffc0201bf2:	0087b303          	ld	t1,8(a5)
ffffffffc0201bf6:	fe878513          	addi	a0,a5,-24
ffffffffc0201bfa:	00070e1b          	sext.w	t3,a4
ffffffffc0201bfe:	0068b423          	sd	t1,8(a7) # 10000008 <_binary_bin_sfs_img_size+0xff8ad08>
ffffffffc0201c02:	01133023          	sd	a7,0(t1)
ffffffffc0201c06:	02c77863          	bgeu	a4,a2,ffffffffc0201c36 <default_alloc_pages+0x7e>
ffffffffc0201c0a:	071a                	slli	a4,a4,0x6
ffffffffc0201c0c:	972a                	add	a4,a4,a0
ffffffffc0201c0e:	41c686bb          	subw	a3,a3,t3
ffffffffc0201c12:	cb14                	sw	a3,16(a4)
ffffffffc0201c14:	00870613          	addi	a2,a4,8
ffffffffc0201c18:	4689                	li	a3,2
ffffffffc0201c1a:	40d6302f          	amoor.d	zero,a3,(a2)
ffffffffc0201c1e:	0088b683          	ld	a3,8(a7)
ffffffffc0201c22:	01870613          	addi	a2,a4,24
ffffffffc0201c26:	0105a803          	lw	a6,16(a1)
ffffffffc0201c2a:	e290                	sd	a2,0(a3)
ffffffffc0201c2c:	00c8b423          	sd	a2,8(a7)
ffffffffc0201c30:	f314                	sd	a3,32(a4)
ffffffffc0201c32:	01173c23          	sd	a7,24(a4)
ffffffffc0201c36:	41c8083b          	subw	a6,a6,t3
ffffffffc0201c3a:	0105a823          	sw	a6,16(a1)
ffffffffc0201c3e:	5775                	li	a4,-3
ffffffffc0201c40:	17c1                	addi	a5,a5,-16
ffffffffc0201c42:	60e7b02f          	amoand.d	zero,a4,(a5)
ffffffffc0201c46:	8082                	ret
ffffffffc0201c48:	1141                	addi	sp,sp,-16
ffffffffc0201c4a:	0000a697          	auipc	a3,0xa
ffffffffc0201c4e:	7fe68693          	addi	a3,a3,2046 # ffffffffc020c448 <commands+0xca0>
ffffffffc0201c52:	0000a617          	auipc	a2,0xa
ffffffffc0201c56:	d6660613          	addi	a2,a2,-666 # ffffffffc020b9b8 <commands+0x210>
ffffffffc0201c5a:	06100593          	li	a1,97
ffffffffc0201c5e:	0000a517          	auipc	a0,0xa
ffffffffc0201c62:	4aa50513          	addi	a0,a0,1194 # ffffffffc020c108 <commands+0x960>
ffffffffc0201c66:	e406                	sd	ra,8(sp)
ffffffffc0201c68:	837fe0ef          	jal	ra,ffffffffc020049e <__panic>

ffffffffc0201c6c <default_init_memmap>:
ffffffffc0201c6c:	1141                	addi	sp,sp,-16
ffffffffc0201c6e:	e406                	sd	ra,8(sp)
ffffffffc0201c70:	c5f1                	beqz	a1,ffffffffc0201d3c <default_init_memmap+0xd0>
ffffffffc0201c72:	00659693          	slli	a3,a1,0x6
ffffffffc0201c76:	96aa                	add	a3,a3,a0
ffffffffc0201c78:	87aa                	mv	a5,a0
ffffffffc0201c7a:	00d50f63          	beq	a0,a3,ffffffffc0201c98 <default_init_memmap+0x2c>
ffffffffc0201c7e:	6798                	ld	a4,8(a5)
ffffffffc0201c80:	8b05                	andi	a4,a4,1
ffffffffc0201c82:	cf49                	beqz	a4,ffffffffc0201d1c <default_init_memmap+0xb0>
ffffffffc0201c84:	0007a823          	sw	zero,16(a5)
ffffffffc0201c88:	0007b423          	sd	zero,8(a5)
ffffffffc0201c8c:	0007a023          	sw	zero,0(a5)
ffffffffc0201c90:	04078793          	addi	a5,a5,64
ffffffffc0201c94:	fed795e3          	bne	a5,a3,ffffffffc0201c7e <default_init_memmap+0x12>
ffffffffc0201c98:	2581                	sext.w	a1,a1
ffffffffc0201c9a:	c90c                	sw	a1,16(a0)
ffffffffc0201c9c:	4789                	li	a5,2
ffffffffc0201c9e:	00850713          	addi	a4,a0,8
ffffffffc0201ca2:	40f7302f          	amoor.d	zero,a5,(a4)
ffffffffc0201ca6:	00090697          	auipc	a3,0x90
ffffffffc0201caa:	b0268693          	addi	a3,a3,-1278 # ffffffffc02917a8 <free_area>
ffffffffc0201cae:	4a98                	lw	a4,16(a3)
ffffffffc0201cb0:	669c                	ld	a5,8(a3)
ffffffffc0201cb2:	01850613          	addi	a2,a0,24
ffffffffc0201cb6:	9db9                	addw	a1,a1,a4
ffffffffc0201cb8:	ca8c                	sw	a1,16(a3)
ffffffffc0201cba:	04d78a63          	beq	a5,a3,ffffffffc0201d0e <default_init_memmap+0xa2>
ffffffffc0201cbe:	fe878713          	addi	a4,a5,-24
ffffffffc0201cc2:	0006b803          	ld	a6,0(a3)
ffffffffc0201cc6:	4581                	li	a1,0
ffffffffc0201cc8:	00e56a63          	bltu	a0,a4,ffffffffc0201cdc <default_init_memmap+0x70>
ffffffffc0201ccc:	6798                	ld	a4,8(a5)
ffffffffc0201cce:	02d70263          	beq	a4,a3,ffffffffc0201cf2 <default_init_memmap+0x86>
ffffffffc0201cd2:	87ba                	mv	a5,a4
ffffffffc0201cd4:	fe878713          	addi	a4,a5,-24
ffffffffc0201cd8:	fee57ae3          	bgeu	a0,a4,ffffffffc0201ccc <default_init_memmap+0x60>
ffffffffc0201cdc:	c199                	beqz	a1,ffffffffc0201ce2 <default_init_memmap+0x76>
ffffffffc0201cde:	0106b023          	sd	a6,0(a3)
ffffffffc0201ce2:	6398                	ld	a4,0(a5)
ffffffffc0201ce4:	60a2                	ld	ra,8(sp)
ffffffffc0201ce6:	e390                	sd	a2,0(a5)
ffffffffc0201ce8:	e710                	sd	a2,8(a4)
ffffffffc0201cea:	f11c                	sd	a5,32(a0)
ffffffffc0201cec:	ed18                	sd	a4,24(a0)
ffffffffc0201cee:	0141                	addi	sp,sp,16
ffffffffc0201cf0:	8082                	ret
ffffffffc0201cf2:	e790                	sd	a2,8(a5)
ffffffffc0201cf4:	f114                	sd	a3,32(a0)
ffffffffc0201cf6:	6798                	ld	a4,8(a5)
ffffffffc0201cf8:	ed1c                	sd	a5,24(a0)
ffffffffc0201cfa:	00d70663          	beq	a4,a3,ffffffffc0201d06 <default_init_memmap+0x9a>
ffffffffc0201cfe:	8832                	mv	a6,a2
ffffffffc0201d00:	4585                	li	a1,1
ffffffffc0201d02:	87ba                	mv	a5,a4
ffffffffc0201d04:	bfc1                	j	ffffffffc0201cd4 <default_init_memmap+0x68>
ffffffffc0201d06:	60a2                	ld	ra,8(sp)
ffffffffc0201d08:	e290                	sd	a2,0(a3)
ffffffffc0201d0a:	0141                	addi	sp,sp,16
ffffffffc0201d0c:	8082                	ret
ffffffffc0201d0e:	60a2                	ld	ra,8(sp)
ffffffffc0201d10:	e390                	sd	a2,0(a5)
ffffffffc0201d12:	e790                	sd	a2,8(a5)
ffffffffc0201d14:	f11c                	sd	a5,32(a0)
ffffffffc0201d16:	ed1c                	sd	a5,24(a0)
ffffffffc0201d18:	0141                	addi	sp,sp,16
ffffffffc0201d1a:	8082                	ret
ffffffffc0201d1c:	0000a697          	auipc	a3,0xa
ffffffffc0201d20:	75c68693          	addi	a3,a3,1884 # ffffffffc020c478 <commands+0xcd0>
ffffffffc0201d24:	0000a617          	auipc	a2,0xa
ffffffffc0201d28:	c9460613          	addi	a2,a2,-876 # ffffffffc020b9b8 <commands+0x210>
ffffffffc0201d2c:	04800593          	li	a1,72
ffffffffc0201d30:	0000a517          	auipc	a0,0xa
ffffffffc0201d34:	3d850513          	addi	a0,a0,984 # ffffffffc020c108 <commands+0x960>
ffffffffc0201d38:	f66fe0ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc0201d3c:	0000a697          	auipc	a3,0xa
ffffffffc0201d40:	70c68693          	addi	a3,a3,1804 # ffffffffc020c448 <commands+0xca0>
ffffffffc0201d44:	0000a617          	auipc	a2,0xa
ffffffffc0201d48:	c7460613          	addi	a2,a2,-908 # ffffffffc020b9b8 <commands+0x210>
ffffffffc0201d4c:	04500593          	li	a1,69
ffffffffc0201d50:	0000a517          	auipc	a0,0xa
ffffffffc0201d54:	3b850513          	addi	a0,a0,952 # ffffffffc020c108 <commands+0x960>
ffffffffc0201d58:	f46fe0ef          	jal	ra,ffffffffc020049e <__panic>

ffffffffc0201d5c <slob_free>:
ffffffffc0201d5c:	c94d                	beqz	a0,ffffffffc0201e0e <slob_free+0xb2>
ffffffffc0201d5e:	1141                	addi	sp,sp,-16
ffffffffc0201d60:	e022                	sd	s0,0(sp)
ffffffffc0201d62:	e406                	sd	ra,8(sp)
ffffffffc0201d64:	842a                	mv	s0,a0
ffffffffc0201d66:	e9c1                	bnez	a1,ffffffffc0201df6 <slob_free+0x9a>
ffffffffc0201d68:	100027f3          	csrr	a5,sstatus
ffffffffc0201d6c:	8b89                	andi	a5,a5,2
ffffffffc0201d6e:	4501                	li	a0,0
ffffffffc0201d70:	ebd9                	bnez	a5,ffffffffc0201e06 <slob_free+0xaa>
ffffffffc0201d72:	0008f617          	auipc	a2,0x8f
ffffffffc0201d76:	2de60613          	addi	a2,a2,734 # ffffffffc0291050 <slobfree>
ffffffffc0201d7a:	621c                	ld	a5,0(a2)
ffffffffc0201d7c:	873e                	mv	a4,a5
ffffffffc0201d7e:	679c                	ld	a5,8(a5)
ffffffffc0201d80:	02877a63          	bgeu	a4,s0,ffffffffc0201db4 <slob_free+0x58>
ffffffffc0201d84:	00f46463          	bltu	s0,a5,ffffffffc0201d8c <slob_free+0x30>
ffffffffc0201d88:	fef76ae3          	bltu	a4,a5,ffffffffc0201d7c <slob_free+0x20>
ffffffffc0201d8c:	400c                	lw	a1,0(s0)
ffffffffc0201d8e:	00459693          	slli	a3,a1,0x4
ffffffffc0201d92:	96a2                	add	a3,a3,s0
ffffffffc0201d94:	02d78a63          	beq	a5,a3,ffffffffc0201dc8 <slob_free+0x6c>
ffffffffc0201d98:	4314                	lw	a3,0(a4)
ffffffffc0201d9a:	e41c                	sd	a5,8(s0)
ffffffffc0201d9c:	00469793          	slli	a5,a3,0x4
ffffffffc0201da0:	97ba                	add	a5,a5,a4
ffffffffc0201da2:	02f40e63          	beq	s0,a5,ffffffffc0201dde <slob_free+0x82>
ffffffffc0201da6:	e700                	sd	s0,8(a4)
ffffffffc0201da8:	e218                	sd	a4,0(a2)
ffffffffc0201daa:	e129                	bnez	a0,ffffffffc0201dec <slob_free+0x90>
ffffffffc0201dac:	60a2                	ld	ra,8(sp)
ffffffffc0201dae:	6402                	ld	s0,0(sp)
ffffffffc0201db0:	0141                	addi	sp,sp,16
ffffffffc0201db2:	8082                	ret
ffffffffc0201db4:	fcf764e3          	bltu	a4,a5,ffffffffc0201d7c <slob_free+0x20>
ffffffffc0201db8:	fcf472e3          	bgeu	s0,a5,ffffffffc0201d7c <slob_free+0x20>
ffffffffc0201dbc:	400c                	lw	a1,0(s0)
ffffffffc0201dbe:	00459693          	slli	a3,a1,0x4
ffffffffc0201dc2:	96a2                	add	a3,a3,s0
ffffffffc0201dc4:	fcd79ae3          	bne	a5,a3,ffffffffc0201d98 <slob_free+0x3c>
ffffffffc0201dc8:	4394                	lw	a3,0(a5)
ffffffffc0201dca:	679c                	ld	a5,8(a5)
ffffffffc0201dcc:	9db5                	addw	a1,a1,a3
ffffffffc0201dce:	c00c                	sw	a1,0(s0)
ffffffffc0201dd0:	4314                	lw	a3,0(a4)
ffffffffc0201dd2:	e41c                	sd	a5,8(s0)
ffffffffc0201dd4:	00469793          	slli	a5,a3,0x4
ffffffffc0201dd8:	97ba                	add	a5,a5,a4
ffffffffc0201dda:	fcf416e3          	bne	s0,a5,ffffffffc0201da6 <slob_free+0x4a>
ffffffffc0201dde:	401c                	lw	a5,0(s0)
ffffffffc0201de0:	640c                	ld	a1,8(s0)
ffffffffc0201de2:	e218                	sd	a4,0(a2)
ffffffffc0201de4:	9ebd                	addw	a3,a3,a5
ffffffffc0201de6:	c314                	sw	a3,0(a4)
ffffffffc0201de8:	e70c                	sd	a1,8(a4)
ffffffffc0201dea:	d169                	beqz	a0,ffffffffc0201dac <slob_free+0x50>
ffffffffc0201dec:	6402                	ld	s0,0(sp)
ffffffffc0201dee:	60a2                	ld	ra,8(sp)
ffffffffc0201df0:	0141                	addi	sp,sp,16
ffffffffc0201df2:	e7bfe06f          	j	ffffffffc0200c6c <intr_enable>
ffffffffc0201df6:	25bd                	addiw	a1,a1,15
ffffffffc0201df8:	8191                	srli	a1,a1,0x4
ffffffffc0201dfa:	c10c                	sw	a1,0(a0)
ffffffffc0201dfc:	100027f3          	csrr	a5,sstatus
ffffffffc0201e00:	8b89                	andi	a5,a5,2
ffffffffc0201e02:	4501                	li	a0,0
ffffffffc0201e04:	d7bd                	beqz	a5,ffffffffc0201d72 <slob_free+0x16>
ffffffffc0201e06:	e6dfe0ef          	jal	ra,ffffffffc0200c72 <intr_disable>
ffffffffc0201e0a:	4505                	li	a0,1
ffffffffc0201e0c:	b79d                	j	ffffffffc0201d72 <slob_free+0x16>
ffffffffc0201e0e:	8082                	ret

ffffffffc0201e10 <__slob_get_free_pages.constprop.0>:
ffffffffc0201e10:	4785                	li	a5,1
ffffffffc0201e12:	1141                	addi	sp,sp,-16
ffffffffc0201e14:	00a7953b          	sllw	a0,a5,a0
ffffffffc0201e18:	e406                	sd	ra,8(sp)
ffffffffc0201e1a:	352000ef          	jal	ra,ffffffffc020216c <alloc_pages>
ffffffffc0201e1e:	c91d                	beqz	a0,ffffffffc0201e54 <__slob_get_free_pages.constprop.0+0x44>
ffffffffc0201e20:	00095697          	auipc	a3,0x95
ffffffffc0201e24:	a886b683          	ld	a3,-1400(a3) # ffffffffc02968a8 <pages>
ffffffffc0201e28:	8d15                	sub	a0,a0,a3
ffffffffc0201e2a:	8519                	srai	a0,a0,0x6
ffffffffc0201e2c:	0000e697          	auipc	a3,0xe
ffffffffc0201e30:	9dc6b683          	ld	a3,-1572(a3) # ffffffffc020f808 <nbase>
ffffffffc0201e34:	9536                	add	a0,a0,a3
ffffffffc0201e36:	00c51793          	slli	a5,a0,0xc
ffffffffc0201e3a:	83b1                	srli	a5,a5,0xc
ffffffffc0201e3c:	00095717          	auipc	a4,0x95
ffffffffc0201e40:	a6473703          	ld	a4,-1436(a4) # ffffffffc02968a0 <npage>
ffffffffc0201e44:	0532                	slli	a0,a0,0xc
ffffffffc0201e46:	00e7fa63          	bgeu	a5,a4,ffffffffc0201e5a <__slob_get_free_pages.constprop.0+0x4a>
ffffffffc0201e4a:	00095697          	auipc	a3,0x95
ffffffffc0201e4e:	a6e6b683          	ld	a3,-1426(a3) # ffffffffc02968b8 <va_pa_offset>
ffffffffc0201e52:	9536                	add	a0,a0,a3
ffffffffc0201e54:	60a2                	ld	ra,8(sp)
ffffffffc0201e56:	0141                	addi	sp,sp,16
ffffffffc0201e58:	8082                	ret
ffffffffc0201e5a:	86aa                	mv	a3,a0
ffffffffc0201e5c:	0000a617          	auipc	a2,0xa
ffffffffc0201e60:	67c60613          	addi	a2,a2,1660 # ffffffffc020c4d8 <default_pmm_manager+0x38>
ffffffffc0201e64:	07100593          	li	a1,113
ffffffffc0201e68:	0000a517          	auipc	a0,0xa
ffffffffc0201e6c:	69850513          	addi	a0,a0,1688 # ffffffffc020c500 <default_pmm_manager+0x60>
ffffffffc0201e70:	e2efe0ef          	jal	ra,ffffffffc020049e <__panic>

ffffffffc0201e74 <slob_alloc.constprop.0>:
ffffffffc0201e74:	1101                	addi	sp,sp,-32
ffffffffc0201e76:	ec06                	sd	ra,24(sp)
ffffffffc0201e78:	e822                	sd	s0,16(sp)
ffffffffc0201e7a:	e426                	sd	s1,8(sp)
ffffffffc0201e7c:	e04a                	sd	s2,0(sp)
ffffffffc0201e7e:	01050713          	addi	a4,a0,16
ffffffffc0201e82:	6785                	lui	a5,0x1
ffffffffc0201e84:	0cf77363          	bgeu	a4,a5,ffffffffc0201f4a <slob_alloc.constprop.0+0xd6>
ffffffffc0201e88:	00f50493          	addi	s1,a0,15
ffffffffc0201e8c:	8091                	srli	s1,s1,0x4
ffffffffc0201e8e:	2481                	sext.w	s1,s1
ffffffffc0201e90:	10002673          	csrr	a2,sstatus
ffffffffc0201e94:	8a09                	andi	a2,a2,2
ffffffffc0201e96:	e25d                	bnez	a2,ffffffffc0201f3c <slob_alloc.constprop.0+0xc8>
ffffffffc0201e98:	0008f917          	auipc	s2,0x8f
ffffffffc0201e9c:	1b890913          	addi	s2,s2,440 # ffffffffc0291050 <slobfree>
ffffffffc0201ea0:	00093683          	ld	a3,0(s2)
ffffffffc0201ea4:	669c                	ld	a5,8(a3)
ffffffffc0201ea6:	4398                	lw	a4,0(a5)
ffffffffc0201ea8:	08975e63          	bge	a4,s1,ffffffffc0201f44 <slob_alloc.constprop.0+0xd0>
ffffffffc0201eac:	00f68b63          	beq	a3,a5,ffffffffc0201ec2 <slob_alloc.constprop.0+0x4e>
ffffffffc0201eb0:	6780                	ld	s0,8(a5)
ffffffffc0201eb2:	4018                	lw	a4,0(s0)
ffffffffc0201eb4:	02975a63          	bge	a4,s1,ffffffffc0201ee8 <slob_alloc.constprop.0+0x74>
ffffffffc0201eb8:	00093683          	ld	a3,0(s2)
ffffffffc0201ebc:	87a2                	mv	a5,s0
ffffffffc0201ebe:	fef699e3          	bne	a3,a5,ffffffffc0201eb0 <slob_alloc.constprop.0+0x3c>
ffffffffc0201ec2:	ee31                	bnez	a2,ffffffffc0201f1e <slob_alloc.constprop.0+0xaa>
ffffffffc0201ec4:	4501                	li	a0,0
ffffffffc0201ec6:	f4bff0ef          	jal	ra,ffffffffc0201e10 <__slob_get_free_pages.constprop.0>
ffffffffc0201eca:	842a                	mv	s0,a0
ffffffffc0201ecc:	cd05                	beqz	a0,ffffffffc0201f04 <slob_alloc.constprop.0+0x90>
ffffffffc0201ece:	6585                	lui	a1,0x1
ffffffffc0201ed0:	e8dff0ef          	jal	ra,ffffffffc0201d5c <slob_free>
ffffffffc0201ed4:	10002673          	csrr	a2,sstatus
ffffffffc0201ed8:	8a09                	andi	a2,a2,2
ffffffffc0201eda:	ee05                	bnez	a2,ffffffffc0201f12 <slob_alloc.constprop.0+0x9e>
ffffffffc0201edc:	00093783          	ld	a5,0(s2)
ffffffffc0201ee0:	6780                	ld	s0,8(a5)
ffffffffc0201ee2:	4018                	lw	a4,0(s0)
ffffffffc0201ee4:	fc974ae3          	blt	a4,s1,ffffffffc0201eb8 <slob_alloc.constprop.0+0x44>
ffffffffc0201ee8:	04e48763          	beq	s1,a4,ffffffffc0201f36 <slob_alloc.constprop.0+0xc2>
ffffffffc0201eec:	00449693          	slli	a3,s1,0x4
ffffffffc0201ef0:	96a2                	add	a3,a3,s0
ffffffffc0201ef2:	e794                	sd	a3,8(a5)
ffffffffc0201ef4:	640c                	ld	a1,8(s0)
ffffffffc0201ef6:	9f05                	subw	a4,a4,s1
ffffffffc0201ef8:	c298                	sw	a4,0(a3)
ffffffffc0201efa:	e68c                	sd	a1,8(a3)
ffffffffc0201efc:	c004                	sw	s1,0(s0)
ffffffffc0201efe:	00f93023          	sd	a5,0(s2)
ffffffffc0201f02:	e20d                	bnez	a2,ffffffffc0201f24 <slob_alloc.constprop.0+0xb0>
ffffffffc0201f04:	60e2                	ld	ra,24(sp)
ffffffffc0201f06:	8522                	mv	a0,s0
ffffffffc0201f08:	6442                	ld	s0,16(sp)
ffffffffc0201f0a:	64a2                	ld	s1,8(sp)
ffffffffc0201f0c:	6902                	ld	s2,0(sp)
ffffffffc0201f0e:	6105                	addi	sp,sp,32
ffffffffc0201f10:	8082                	ret
ffffffffc0201f12:	d61fe0ef          	jal	ra,ffffffffc0200c72 <intr_disable>
ffffffffc0201f16:	00093783          	ld	a5,0(s2)
ffffffffc0201f1a:	4605                	li	a2,1
ffffffffc0201f1c:	b7d1                	j	ffffffffc0201ee0 <slob_alloc.constprop.0+0x6c>
ffffffffc0201f1e:	d4ffe0ef          	jal	ra,ffffffffc0200c6c <intr_enable>
ffffffffc0201f22:	b74d                	j	ffffffffc0201ec4 <slob_alloc.constprop.0+0x50>
ffffffffc0201f24:	d49fe0ef          	jal	ra,ffffffffc0200c6c <intr_enable>
ffffffffc0201f28:	60e2                	ld	ra,24(sp)
ffffffffc0201f2a:	8522                	mv	a0,s0
ffffffffc0201f2c:	6442                	ld	s0,16(sp)
ffffffffc0201f2e:	64a2                	ld	s1,8(sp)
ffffffffc0201f30:	6902                	ld	s2,0(sp)
ffffffffc0201f32:	6105                	addi	sp,sp,32
ffffffffc0201f34:	8082                	ret
ffffffffc0201f36:	6418                	ld	a4,8(s0)
ffffffffc0201f38:	e798                	sd	a4,8(a5)
ffffffffc0201f3a:	b7d1                	j	ffffffffc0201efe <slob_alloc.constprop.0+0x8a>
ffffffffc0201f3c:	d37fe0ef          	jal	ra,ffffffffc0200c72 <intr_disable>
ffffffffc0201f40:	4605                	li	a2,1
ffffffffc0201f42:	bf99                	j	ffffffffc0201e98 <slob_alloc.constprop.0+0x24>
ffffffffc0201f44:	843e                	mv	s0,a5
ffffffffc0201f46:	87b6                	mv	a5,a3
ffffffffc0201f48:	b745                	j	ffffffffc0201ee8 <slob_alloc.constprop.0+0x74>
ffffffffc0201f4a:	0000a697          	auipc	a3,0xa
ffffffffc0201f4e:	5c668693          	addi	a3,a3,1478 # ffffffffc020c510 <default_pmm_manager+0x70>
ffffffffc0201f52:	0000a617          	auipc	a2,0xa
ffffffffc0201f56:	a6660613          	addi	a2,a2,-1434 # ffffffffc020b9b8 <commands+0x210>
ffffffffc0201f5a:	06300593          	li	a1,99
ffffffffc0201f5e:	0000a517          	auipc	a0,0xa
ffffffffc0201f62:	5d250513          	addi	a0,a0,1490 # ffffffffc020c530 <default_pmm_manager+0x90>
ffffffffc0201f66:	d38fe0ef          	jal	ra,ffffffffc020049e <__panic>

ffffffffc0201f6a <kmalloc_init>:
ffffffffc0201f6a:	1141                	addi	sp,sp,-16
ffffffffc0201f6c:	0000a517          	auipc	a0,0xa
ffffffffc0201f70:	5dc50513          	addi	a0,a0,1500 # ffffffffc020c548 <default_pmm_manager+0xa8>
ffffffffc0201f74:	e406                	sd	ra,8(sp)
ffffffffc0201f76:	a30fe0ef          	jal	ra,ffffffffc02001a6 <cprintf>
ffffffffc0201f7a:	60a2                	ld	ra,8(sp)
ffffffffc0201f7c:	0000a517          	auipc	a0,0xa
ffffffffc0201f80:	5e450513          	addi	a0,a0,1508 # ffffffffc020c560 <default_pmm_manager+0xc0>
ffffffffc0201f84:	0141                	addi	sp,sp,16
ffffffffc0201f86:	a20fe06f          	j	ffffffffc02001a6 <cprintf>

ffffffffc0201f8a <kallocated>:
ffffffffc0201f8a:	4501                	li	a0,0
ffffffffc0201f8c:	8082                	ret

ffffffffc0201f8e <kmalloc>:
ffffffffc0201f8e:	1101                	addi	sp,sp,-32
ffffffffc0201f90:	e04a                	sd	s2,0(sp)
ffffffffc0201f92:	6905                	lui	s2,0x1
ffffffffc0201f94:	e822                	sd	s0,16(sp)
ffffffffc0201f96:	ec06                	sd	ra,24(sp)
ffffffffc0201f98:	e426                	sd	s1,8(sp)
ffffffffc0201f9a:	fef90793          	addi	a5,s2,-17 # fef <_binary_bin_swap_img_size-0x6d11>
ffffffffc0201f9e:	842a                	mv	s0,a0
ffffffffc0201fa0:	04a7f963          	bgeu	a5,a0,ffffffffc0201ff2 <kmalloc+0x64>
ffffffffc0201fa4:	4561                	li	a0,24
ffffffffc0201fa6:	ecfff0ef          	jal	ra,ffffffffc0201e74 <slob_alloc.constprop.0>
ffffffffc0201faa:	84aa                	mv	s1,a0
ffffffffc0201fac:	c929                	beqz	a0,ffffffffc0201ffe <kmalloc+0x70>
ffffffffc0201fae:	0004079b          	sext.w	a5,s0
ffffffffc0201fb2:	4501                	li	a0,0
ffffffffc0201fb4:	00f95763          	bge	s2,a5,ffffffffc0201fc2 <kmalloc+0x34>
ffffffffc0201fb8:	6705                	lui	a4,0x1
ffffffffc0201fba:	8785                	srai	a5,a5,0x1
ffffffffc0201fbc:	2505                	addiw	a0,a0,1
ffffffffc0201fbe:	fef74ee3          	blt	a4,a5,ffffffffc0201fba <kmalloc+0x2c>
ffffffffc0201fc2:	c088                	sw	a0,0(s1)
ffffffffc0201fc4:	e4dff0ef          	jal	ra,ffffffffc0201e10 <__slob_get_free_pages.constprop.0>
ffffffffc0201fc8:	e488                	sd	a0,8(s1)
ffffffffc0201fca:	842a                	mv	s0,a0
ffffffffc0201fcc:	c525                	beqz	a0,ffffffffc0202034 <kmalloc+0xa6>
ffffffffc0201fce:	100027f3          	csrr	a5,sstatus
ffffffffc0201fd2:	8b89                	andi	a5,a5,2
ffffffffc0201fd4:	ef8d                	bnez	a5,ffffffffc020200e <kmalloc+0x80>
ffffffffc0201fd6:	00095797          	auipc	a5,0x95
ffffffffc0201fda:	8b278793          	addi	a5,a5,-1870 # ffffffffc0296888 <bigblocks>
ffffffffc0201fde:	6398                	ld	a4,0(a5)
ffffffffc0201fe0:	e384                	sd	s1,0(a5)
ffffffffc0201fe2:	e898                	sd	a4,16(s1)
ffffffffc0201fe4:	60e2                	ld	ra,24(sp)
ffffffffc0201fe6:	8522                	mv	a0,s0
ffffffffc0201fe8:	6442                	ld	s0,16(sp)
ffffffffc0201fea:	64a2                	ld	s1,8(sp)
ffffffffc0201fec:	6902                	ld	s2,0(sp)
ffffffffc0201fee:	6105                	addi	sp,sp,32
ffffffffc0201ff0:	8082                	ret
ffffffffc0201ff2:	0541                	addi	a0,a0,16
ffffffffc0201ff4:	e81ff0ef          	jal	ra,ffffffffc0201e74 <slob_alloc.constprop.0>
ffffffffc0201ff8:	01050413          	addi	s0,a0,16
ffffffffc0201ffc:	f565                	bnez	a0,ffffffffc0201fe4 <kmalloc+0x56>
ffffffffc0201ffe:	4401                	li	s0,0
ffffffffc0202000:	60e2                	ld	ra,24(sp)
ffffffffc0202002:	8522                	mv	a0,s0
ffffffffc0202004:	6442                	ld	s0,16(sp)
ffffffffc0202006:	64a2                	ld	s1,8(sp)
ffffffffc0202008:	6902                	ld	s2,0(sp)
ffffffffc020200a:	6105                	addi	sp,sp,32
ffffffffc020200c:	8082                	ret
ffffffffc020200e:	c65fe0ef          	jal	ra,ffffffffc0200c72 <intr_disable>
ffffffffc0202012:	00095797          	auipc	a5,0x95
ffffffffc0202016:	87678793          	addi	a5,a5,-1930 # ffffffffc0296888 <bigblocks>
ffffffffc020201a:	6398                	ld	a4,0(a5)
ffffffffc020201c:	e384                	sd	s1,0(a5)
ffffffffc020201e:	e898                	sd	a4,16(s1)
ffffffffc0202020:	c4dfe0ef          	jal	ra,ffffffffc0200c6c <intr_enable>
ffffffffc0202024:	6480                	ld	s0,8(s1)
ffffffffc0202026:	60e2                	ld	ra,24(sp)
ffffffffc0202028:	64a2                	ld	s1,8(sp)
ffffffffc020202a:	8522                	mv	a0,s0
ffffffffc020202c:	6442                	ld	s0,16(sp)
ffffffffc020202e:	6902                	ld	s2,0(sp)
ffffffffc0202030:	6105                	addi	sp,sp,32
ffffffffc0202032:	8082                	ret
ffffffffc0202034:	45e1                	li	a1,24
ffffffffc0202036:	8526                	mv	a0,s1
ffffffffc0202038:	d25ff0ef          	jal	ra,ffffffffc0201d5c <slob_free>
ffffffffc020203c:	b765                	j	ffffffffc0201fe4 <kmalloc+0x56>

ffffffffc020203e <kfree>:
ffffffffc020203e:	c169                	beqz	a0,ffffffffc0202100 <kfree+0xc2>
ffffffffc0202040:	1101                	addi	sp,sp,-32
ffffffffc0202042:	e822                	sd	s0,16(sp)
ffffffffc0202044:	ec06                	sd	ra,24(sp)
ffffffffc0202046:	e426                	sd	s1,8(sp)
ffffffffc0202048:	03451793          	slli	a5,a0,0x34
ffffffffc020204c:	842a                	mv	s0,a0
ffffffffc020204e:	e3d9                	bnez	a5,ffffffffc02020d4 <kfree+0x96>
ffffffffc0202050:	100027f3          	csrr	a5,sstatus
ffffffffc0202054:	8b89                	andi	a5,a5,2
ffffffffc0202056:	e7d9                	bnez	a5,ffffffffc02020e4 <kfree+0xa6>
ffffffffc0202058:	00095797          	auipc	a5,0x95
ffffffffc020205c:	8307b783          	ld	a5,-2000(a5) # ffffffffc0296888 <bigblocks>
ffffffffc0202060:	4601                	li	a2,0
ffffffffc0202062:	cbad                	beqz	a5,ffffffffc02020d4 <kfree+0x96>
ffffffffc0202064:	00095697          	auipc	a3,0x95
ffffffffc0202068:	82468693          	addi	a3,a3,-2012 # ffffffffc0296888 <bigblocks>
ffffffffc020206c:	a021                	j	ffffffffc0202074 <kfree+0x36>
ffffffffc020206e:	01048693          	addi	a3,s1,16
ffffffffc0202072:	c3a5                	beqz	a5,ffffffffc02020d2 <kfree+0x94>
ffffffffc0202074:	6798                	ld	a4,8(a5)
ffffffffc0202076:	84be                	mv	s1,a5
ffffffffc0202078:	6b9c                	ld	a5,16(a5)
ffffffffc020207a:	fe871ae3          	bne	a4,s0,ffffffffc020206e <kfree+0x30>
ffffffffc020207e:	e29c                	sd	a5,0(a3)
ffffffffc0202080:	ee2d                	bnez	a2,ffffffffc02020fa <kfree+0xbc>
ffffffffc0202082:	c02007b7          	lui	a5,0xc0200
ffffffffc0202086:	4098                	lw	a4,0(s1)
ffffffffc0202088:	08f46963          	bltu	s0,a5,ffffffffc020211a <kfree+0xdc>
ffffffffc020208c:	00095697          	auipc	a3,0x95
ffffffffc0202090:	82c6b683          	ld	a3,-2004(a3) # ffffffffc02968b8 <va_pa_offset>
ffffffffc0202094:	8c15                	sub	s0,s0,a3
ffffffffc0202096:	8031                	srli	s0,s0,0xc
ffffffffc0202098:	00095797          	auipc	a5,0x95
ffffffffc020209c:	8087b783          	ld	a5,-2040(a5) # ffffffffc02968a0 <npage>
ffffffffc02020a0:	06f47163          	bgeu	s0,a5,ffffffffc0202102 <kfree+0xc4>
ffffffffc02020a4:	0000d517          	auipc	a0,0xd
ffffffffc02020a8:	76453503          	ld	a0,1892(a0) # ffffffffc020f808 <nbase>
ffffffffc02020ac:	8c09                	sub	s0,s0,a0
ffffffffc02020ae:	041a                	slli	s0,s0,0x6
ffffffffc02020b0:	00094517          	auipc	a0,0x94
ffffffffc02020b4:	7f853503          	ld	a0,2040(a0) # ffffffffc02968a8 <pages>
ffffffffc02020b8:	4585                	li	a1,1
ffffffffc02020ba:	9522                	add	a0,a0,s0
ffffffffc02020bc:	00e595bb          	sllw	a1,a1,a4
ffffffffc02020c0:	0ea000ef          	jal	ra,ffffffffc02021aa <free_pages>
ffffffffc02020c4:	6442                	ld	s0,16(sp)
ffffffffc02020c6:	60e2                	ld	ra,24(sp)
ffffffffc02020c8:	8526                	mv	a0,s1
ffffffffc02020ca:	64a2                	ld	s1,8(sp)
ffffffffc02020cc:	45e1                	li	a1,24
ffffffffc02020ce:	6105                	addi	sp,sp,32
ffffffffc02020d0:	b171                	j	ffffffffc0201d5c <slob_free>
ffffffffc02020d2:	e20d                	bnez	a2,ffffffffc02020f4 <kfree+0xb6>
ffffffffc02020d4:	ff040513          	addi	a0,s0,-16
ffffffffc02020d8:	6442                	ld	s0,16(sp)
ffffffffc02020da:	60e2                	ld	ra,24(sp)
ffffffffc02020dc:	64a2                	ld	s1,8(sp)
ffffffffc02020de:	4581                	li	a1,0
ffffffffc02020e0:	6105                	addi	sp,sp,32
ffffffffc02020e2:	b9ad                	j	ffffffffc0201d5c <slob_free>
ffffffffc02020e4:	b8ffe0ef          	jal	ra,ffffffffc0200c72 <intr_disable>
ffffffffc02020e8:	00094797          	auipc	a5,0x94
ffffffffc02020ec:	7a07b783          	ld	a5,1952(a5) # ffffffffc0296888 <bigblocks>
ffffffffc02020f0:	4605                	li	a2,1
ffffffffc02020f2:	fbad                	bnez	a5,ffffffffc0202064 <kfree+0x26>
ffffffffc02020f4:	b79fe0ef          	jal	ra,ffffffffc0200c6c <intr_enable>
ffffffffc02020f8:	bff1                	j	ffffffffc02020d4 <kfree+0x96>
ffffffffc02020fa:	b73fe0ef          	jal	ra,ffffffffc0200c6c <intr_enable>
ffffffffc02020fe:	b751                	j	ffffffffc0202082 <kfree+0x44>
ffffffffc0202100:	8082                	ret
ffffffffc0202102:	0000a617          	auipc	a2,0xa
ffffffffc0202106:	4a660613          	addi	a2,a2,1190 # ffffffffc020c5a8 <default_pmm_manager+0x108>
ffffffffc020210a:	06900593          	li	a1,105
ffffffffc020210e:	0000a517          	auipc	a0,0xa
ffffffffc0202112:	3f250513          	addi	a0,a0,1010 # ffffffffc020c500 <default_pmm_manager+0x60>
ffffffffc0202116:	b88fe0ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc020211a:	86a2                	mv	a3,s0
ffffffffc020211c:	0000a617          	auipc	a2,0xa
ffffffffc0202120:	46460613          	addi	a2,a2,1124 # ffffffffc020c580 <default_pmm_manager+0xe0>
ffffffffc0202124:	07700593          	li	a1,119
ffffffffc0202128:	0000a517          	auipc	a0,0xa
ffffffffc020212c:	3d850513          	addi	a0,a0,984 # ffffffffc020c500 <default_pmm_manager+0x60>
ffffffffc0202130:	b6efe0ef          	jal	ra,ffffffffc020049e <__panic>

ffffffffc0202134 <pa2page.part.0>:
ffffffffc0202134:	1141                	addi	sp,sp,-16
ffffffffc0202136:	0000a617          	auipc	a2,0xa
ffffffffc020213a:	47260613          	addi	a2,a2,1138 # ffffffffc020c5a8 <default_pmm_manager+0x108>
ffffffffc020213e:	06900593          	li	a1,105
ffffffffc0202142:	0000a517          	auipc	a0,0xa
ffffffffc0202146:	3be50513          	addi	a0,a0,958 # ffffffffc020c500 <default_pmm_manager+0x60>
ffffffffc020214a:	e406                	sd	ra,8(sp)
ffffffffc020214c:	b52fe0ef          	jal	ra,ffffffffc020049e <__panic>

ffffffffc0202150 <pte2page.part.0>:
ffffffffc0202150:	1141                	addi	sp,sp,-16
ffffffffc0202152:	0000a617          	auipc	a2,0xa
ffffffffc0202156:	47660613          	addi	a2,a2,1142 # ffffffffc020c5c8 <default_pmm_manager+0x128>
ffffffffc020215a:	07f00593          	li	a1,127
ffffffffc020215e:	0000a517          	auipc	a0,0xa
ffffffffc0202162:	3a250513          	addi	a0,a0,930 # ffffffffc020c500 <default_pmm_manager+0x60>
ffffffffc0202166:	e406                	sd	ra,8(sp)
ffffffffc0202168:	b36fe0ef          	jal	ra,ffffffffc020049e <__panic>

ffffffffc020216c <alloc_pages>:
ffffffffc020216c:	100027f3          	csrr	a5,sstatus
ffffffffc0202170:	8b89                	andi	a5,a5,2
ffffffffc0202172:	e799                	bnez	a5,ffffffffc0202180 <alloc_pages+0x14>
ffffffffc0202174:	00094797          	auipc	a5,0x94
ffffffffc0202178:	73c7b783          	ld	a5,1852(a5) # ffffffffc02968b0 <pmm_manager>
ffffffffc020217c:	6f9c                	ld	a5,24(a5)
ffffffffc020217e:	8782                	jr	a5
ffffffffc0202180:	1141                	addi	sp,sp,-16
ffffffffc0202182:	e406                	sd	ra,8(sp)
ffffffffc0202184:	e022                	sd	s0,0(sp)
ffffffffc0202186:	842a                	mv	s0,a0
ffffffffc0202188:	aebfe0ef          	jal	ra,ffffffffc0200c72 <intr_disable>
ffffffffc020218c:	00094797          	auipc	a5,0x94
ffffffffc0202190:	7247b783          	ld	a5,1828(a5) # ffffffffc02968b0 <pmm_manager>
ffffffffc0202194:	6f9c                	ld	a5,24(a5)
ffffffffc0202196:	8522                	mv	a0,s0
ffffffffc0202198:	9782                	jalr	a5
ffffffffc020219a:	842a                	mv	s0,a0
ffffffffc020219c:	ad1fe0ef          	jal	ra,ffffffffc0200c6c <intr_enable>
ffffffffc02021a0:	60a2                	ld	ra,8(sp)
ffffffffc02021a2:	8522                	mv	a0,s0
ffffffffc02021a4:	6402                	ld	s0,0(sp)
ffffffffc02021a6:	0141                	addi	sp,sp,16
ffffffffc02021a8:	8082                	ret

ffffffffc02021aa <free_pages>:
ffffffffc02021aa:	100027f3          	csrr	a5,sstatus
ffffffffc02021ae:	8b89                	andi	a5,a5,2
ffffffffc02021b0:	e799                	bnez	a5,ffffffffc02021be <free_pages+0x14>
ffffffffc02021b2:	00094797          	auipc	a5,0x94
ffffffffc02021b6:	6fe7b783          	ld	a5,1790(a5) # ffffffffc02968b0 <pmm_manager>
ffffffffc02021ba:	739c                	ld	a5,32(a5)
ffffffffc02021bc:	8782                	jr	a5
ffffffffc02021be:	1101                	addi	sp,sp,-32
ffffffffc02021c0:	ec06                	sd	ra,24(sp)
ffffffffc02021c2:	e822                	sd	s0,16(sp)
ffffffffc02021c4:	e426                	sd	s1,8(sp)
ffffffffc02021c6:	842a                	mv	s0,a0
ffffffffc02021c8:	84ae                	mv	s1,a1
ffffffffc02021ca:	aa9fe0ef          	jal	ra,ffffffffc0200c72 <intr_disable>
ffffffffc02021ce:	00094797          	auipc	a5,0x94
ffffffffc02021d2:	6e27b783          	ld	a5,1762(a5) # ffffffffc02968b0 <pmm_manager>
ffffffffc02021d6:	739c                	ld	a5,32(a5)
ffffffffc02021d8:	85a6                	mv	a1,s1
ffffffffc02021da:	8522                	mv	a0,s0
ffffffffc02021dc:	9782                	jalr	a5
ffffffffc02021de:	6442                	ld	s0,16(sp)
ffffffffc02021e0:	60e2                	ld	ra,24(sp)
ffffffffc02021e2:	64a2                	ld	s1,8(sp)
ffffffffc02021e4:	6105                	addi	sp,sp,32
ffffffffc02021e6:	a87fe06f          	j	ffffffffc0200c6c <intr_enable>

ffffffffc02021ea <nr_free_pages>:
ffffffffc02021ea:	100027f3          	csrr	a5,sstatus
ffffffffc02021ee:	8b89                	andi	a5,a5,2
ffffffffc02021f0:	e799                	bnez	a5,ffffffffc02021fe <nr_free_pages+0x14>
ffffffffc02021f2:	00094797          	auipc	a5,0x94
ffffffffc02021f6:	6be7b783          	ld	a5,1726(a5) # ffffffffc02968b0 <pmm_manager>
ffffffffc02021fa:	779c                	ld	a5,40(a5)
ffffffffc02021fc:	8782                	jr	a5
ffffffffc02021fe:	1141                	addi	sp,sp,-16
ffffffffc0202200:	e406                	sd	ra,8(sp)
ffffffffc0202202:	e022                	sd	s0,0(sp)
ffffffffc0202204:	a6ffe0ef          	jal	ra,ffffffffc0200c72 <intr_disable>
ffffffffc0202208:	00094797          	auipc	a5,0x94
ffffffffc020220c:	6a87b783          	ld	a5,1704(a5) # ffffffffc02968b0 <pmm_manager>
ffffffffc0202210:	779c                	ld	a5,40(a5)
ffffffffc0202212:	9782                	jalr	a5
ffffffffc0202214:	842a                	mv	s0,a0
ffffffffc0202216:	a57fe0ef          	jal	ra,ffffffffc0200c6c <intr_enable>
ffffffffc020221a:	60a2                	ld	ra,8(sp)
ffffffffc020221c:	8522                	mv	a0,s0
ffffffffc020221e:	6402                	ld	s0,0(sp)
ffffffffc0202220:	0141                	addi	sp,sp,16
ffffffffc0202222:	8082                	ret

ffffffffc0202224 <get_pte>:
ffffffffc0202224:	01e5d793          	srli	a5,a1,0x1e
ffffffffc0202228:	1ff7f793          	andi	a5,a5,511
ffffffffc020222c:	7139                	addi	sp,sp,-64
ffffffffc020222e:	078e                	slli	a5,a5,0x3
ffffffffc0202230:	f426                	sd	s1,40(sp)
ffffffffc0202232:	00f504b3          	add	s1,a0,a5
ffffffffc0202236:	6094                	ld	a3,0(s1)
ffffffffc0202238:	f04a                	sd	s2,32(sp)
ffffffffc020223a:	ec4e                	sd	s3,24(sp)
ffffffffc020223c:	e852                	sd	s4,16(sp)
ffffffffc020223e:	fc06                	sd	ra,56(sp)
ffffffffc0202240:	f822                	sd	s0,48(sp)
ffffffffc0202242:	e456                	sd	s5,8(sp)
ffffffffc0202244:	e05a                	sd	s6,0(sp)
ffffffffc0202246:	0016f793          	andi	a5,a3,1
ffffffffc020224a:	892e                	mv	s2,a1
ffffffffc020224c:	8a32                	mv	s4,a2
ffffffffc020224e:	00094997          	auipc	s3,0x94
ffffffffc0202252:	65298993          	addi	s3,s3,1618 # ffffffffc02968a0 <npage>
ffffffffc0202256:	efbd                	bnez	a5,ffffffffc02022d4 <get_pte+0xb0>
ffffffffc0202258:	14060c63          	beqz	a2,ffffffffc02023b0 <get_pte+0x18c>
ffffffffc020225c:	100027f3          	csrr	a5,sstatus
ffffffffc0202260:	8b89                	andi	a5,a5,2
ffffffffc0202262:	14079963          	bnez	a5,ffffffffc02023b4 <get_pte+0x190>
ffffffffc0202266:	00094797          	auipc	a5,0x94
ffffffffc020226a:	64a7b783          	ld	a5,1610(a5) # ffffffffc02968b0 <pmm_manager>
ffffffffc020226e:	6f9c                	ld	a5,24(a5)
ffffffffc0202270:	4505                	li	a0,1
ffffffffc0202272:	9782                	jalr	a5
ffffffffc0202274:	842a                	mv	s0,a0
ffffffffc0202276:	12040d63          	beqz	s0,ffffffffc02023b0 <get_pte+0x18c>
ffffffffc020227a:	00094b17          	auipc	s6,0x94
ffffffffc020227e:	62eb0b13          	addi	s6,s6,1582 # ffffffffc02968a8 <pages>
ffffffffc0202282:	000b3503          	ld	a0,0(s6)
ffffffffc0202286:	00080ab7          	lui	s5,0x80
ffffffffc020228a:	00094997          	auipc	s3,0x94
ffffffffc020228e:	61698993          	addi	s3,s3,1558 # ffffffffc02968a0 <npage>
ffffffffc0202292:	40a40533          	sub	a0,s0,a0
ffffffffc0202296:	8519                	srai	a0,a0,0x6
ffffffffc0202298:	9556                	add	a0,a0,s5
ffffffffc020229a:	0009b703          	ld	a4,0(s3)
ffffffffc020229e:	00c51793          	slli	a5,a0,0xc
ffffffffc02022a2:	4685                	li	a3,1
ffffffffc02022a4:	c014                	sw	a3,0(s0)
ffffffffc02022a6:	83b1                	srli	a5,a5,0xc
ffffffffc02022a8:	0532                	slli	a0,a0,0xc
ffffffffc02022aa:	16e7f763          	bgeu	a5,a4,ffffffffc0202418 <get_pte+0x1f4>
ffffffffc02022ae:	00094797          	auipc	a5,0x94
ffffffffc02022b2:	60a7b783          	ld	a5,1546(a5) # ffffffffc02968b8 <va_pa_offset>
ffffffffc02022b6:	6605                	lui	a2,0x1
ffffffffc02022b8:	4581                	li	a1,0
ffffffffc02022ba:	953e                	add	a0,a0,a5
ffffffffc02022bc:	218090ef          	jal	ra,ffffffffc020b4d4 <memset>
ffffffffc02022c0:	000b3683          	ld	a3,0(s6)
ffffffffc02022c4:	40d406b3          	sub	a3,s0,a3
ffffffffc02022c8:	8699                	srai	a3,a3,0x6
ffffffffc02022ca:	96d6                	add	a3,a3,s5
ffffffffc02022cc:	06aa                	slli	a3,a3,0xa
ffffffffc02022ce:	0116e693          	ori	a3,a3,17
ffffffffc02022d2:	e094                	sd	a3,0(s1)
ffffffffc02022d4:	77fd                	lui	a5,0xfffff
ffffffffc02022d6:	068a                	slli	a3,a3,0x2
ffffffffc02022d8:	0009b703          	ld	a4,0(s3)
ffffffffc02022dc:	8efd                	and	a3,a3,a5
ffffffffc02022de:	00c6d793          	srli	a5,a3,0xc
ffffffffc02022e2:	10e7ff63          	bgeu	a5,a4,ffffffffc0202400 <get_pte+0x1dc>
ffffffffc02022e6:	00094a97          	auipc	s5,0x94
ffffffffc02022ea:	5d2a8a93          	addi	s5,s5,1490 # ffffffffc02968b8 <va_pa_offset>
ffffffffc02022ee:	000ab403          	ld	s0,0(s5)
ffffffffc02022f2:	01595793          	srli	a5,s2,0x15
ffffffffc02022f6:	1ff7f793          	andi	a5,a5,511
ffffffffc02022fa:	96a2                	add	a3,a3,s0
ffffffffc02022fc:	00379413          	slli	s0,a5,0x3
ffffffffc0202300:	9436                	add	s0,s0,a3
ffffffffc0202302:	6014                	ld	a3,0(s0)
ffffffffc0202304:	0016f793          	andi	a5,a3,1
ffffffffc0202308:	ebad                	bnez	a5,ffffffffc020237a <get_pte+0x156>
ffffffffc020230a:	0a0a0363          	beqz	s4,ffffffffc02023b0 <get_pte+0x18c>
ffffffffc020230e:	100027f3          	csrr	a5,sstatus
ffffffffc0202312:	8b89                	andi	a5,a5,2
ffffffffc0202314:	efcd                	bnez	a5,ffffffffc02023ce <get_pte+0x1aa>
ffffffffc0202316:	00094797          	auipc	a5,0x94
ffffffffc020231a:	59a7b783          	ld	a5,1434(a5) # ffffffffc02968b0 <pmm_manager>
ffffffffc020231e:	6f9c                	ld	a5,24(a5)
ffffffffc0202320:	4505                	li	a0,1
ffffffffc0202322:	9782                	jalr	a5
ffffffffc0202324:	84aa                	mv	s1,a0
ffffffffc0202326:	c4c9                	beqz	s1,ffffffffc02023b0 <get_pte+0x18c>
ffffffffc0202328:	00094b17          	auipc	s6,0x94
ffffffffc020232c:	580b0b13          	addi	s6,s6,1408 # ffffffffc02968a8 <pages>
ffffffffc0202330:	000b3503          	ld	a0,0(s6)
ffffffffc0202334:	00080a37          	lui	s4,0x80
ffffffffc0202338:	0009b703          	ld	a4,0(s3)
ffffffffc020233c:	40a48533          	sub	a0,s1,a0
ffffffffc0202340:	8519                	srai	a0,a0,0x6
ffffffffc0202342:	9552                	add	a0,a0,s4
ffffffffc0202344:	00c51793          	slli	a5,a0,0xc
ffffffffc0202348:	4685                	li	a3,1
ffffffffc020234a:	c094                	sw	a3,0(s1)
ffffffffc020234c:	83b1                	srli	a5,a5,0xc
ffffffffc020234e:	0532                	slli	a0,a0,0xc
ffffffffc0202350:	0ee7f163          	bgeu	a5,a4,ffffffffc0202432 <get_pte+0x20e>
ffffffffc0202354:	000ab783          	ld	a5,0(s5)
ffffffffc0202358:	6605                	lui	a2,0x1
ffffffffc020235a:	4581                	li	a1,0
ffffffffc020235c:	953e                	add	a0,a0,a5
ffffffffc020235e:	176090ef          	jal	ra,ffffffffc020b4d4 <memset>
ffffffffc0202362:	000b3683          	ld	a3,0(s6)
ffffffffc0202366:	40d486b3          	sub	a3,s1,a3
ffffffffc020236a:	8699                	srai	a3,a3,0x6
ffffffffc020236c:	96d2                	add	a3,a3,s4
ffffffffc020236e:	06aa                	slli	a3,a3,0xa
ffffffffc0202370:	0116e693          	ori	a3,a3,17
ffffffffc0202374:	e014                	sd	a3,0(s0)
ffffffffc0202376:	0009b703          	ld	a4,0(s3)
ffffffffc020237a:	068a                	slli	a3,a3,0x2
ffffffffc020237c:	757d                	lui	a0,0xfffff
ffffffffc020237e:	8ee9                	and	a3,a3,a0
ffffffffc0202380:	00c6d793          	srli	a5,a3,0xc
ffffffffc0202384:	06e7f263          	bgeu	a5,a4,ffffffffc02023e8 <get_pte+0x1c4>
ffffffffc0202388:	000ab503          	ld	a0,0(s5)
ffffffffc020238c:	00c95913          	srli	s2,s2,0xc
ffffffffc0202390:	1ff97913          	andi	s2,s2,511
ffffffffc0202394:	96aa                	add	a3,a3,a0
ffffffffc0202396:	00391513          	slli	a0,s2,0x3
ffffffffc020239a:	9536                	add	a0,a0,a3
ffffffffc020239c:	70e2                	ld	ra,56(sp)
ffffffffc020239e:	7442                	ld	s0,48(sp)
ffffffffc02023a0:	74a2                	ld	s1,40(sp)
ffffffffc02023a2:	7902                	ld	s2,32(sp)
ffffffffc02023a4:	69e2                	ld	s3,24(sp)
ffffffffc02023a6:	6a42                	ld	s4,16(sp)
ffffffffc02023a8:	6aa2                	ld	s5,8(sp)
ffffffffc02023aa:	6b02                	ld	s6,0(sp)
ffffffffc02023ac:	6121                	addi	sp,sp,64
ffffffffc02023ae:	8082                	ret
ffffffffc02023b0:	4501                	li	a0,0
ffffffffc02023b2:	b7ed                	j	ffffffffc020239c <get_pte+0x178>
ffffffffc02023b4:	8bffe0ef          	jal	ra,ffffffffc0200c72 <intr_disable>
ffffffffc02023b8:	00094797          	auipc	a5,0x94
ffffffffc02023bc:	4f87b783          	ld	a5,1272(a5) # ffffffffc02968b0 <pmm_manager>
ffffffffc02023c0:	6f9c                	ld	a5,24(a5)
ffffffffc02023c2:	4505                	li	a0,1
ffffffffc02023c4:	9782                	jalr	a5
ffffffffc02023c6:	842a                	mv	s0,a0
ffffffffc02023c8:	8a5fe0ef          	jal	ra,ffffffffc0200c6c <intr_enable>
ffffffffc02023cc:	b56d                	j	ffffffffc0202276 <get_pte+0x52>
ffffffffc02023ce:	8a5fe0ef          	jal	ra,ffffffffc0200c72 <intr_disable>
ffffffffc02023d2:	00094797          	auipc	a5,0x94
ffffffffc02023d6:	4de7b783          	ld	a5,1246(a5) # ffffffffc02968b0 <pmm_manager>
ffffffffc02023da:	6f9c                	ld	a5,24(a5)
ffffffffc02023dc:	4505                	li	a0,1
ffffffffc02023de:	9782                	jalr	a5
ffffffffc02023e0:	84aa                	mv	s1,a0
ffffffffc02023e2:	88bfe0ef          	jal	ra,ffffffffc0200c6c <intr_enable>
ffffffffc02023e6:	b781                	j	ffffffffc0202326 <get_pte+0x102>
ffffffffc02023e8:	0000a617          	auipc	a2,0xa
ffffffffc02023ec:	0f060613          	addi	a2,a2,240 # ffffffffc020c4d8 <default_pmm_manager+0x38>
ffffffffc02023f0:	13200593          	li	a1,306
ffffffffc02023f4:	0000a517          	auipc	a0,0xa
ffffffffc02023f8:	1fc50513          	addi	a0,a0,508 # ffffffffc020c5f0 <default_pmm_manager+0x150>
ffffffffc02023fc:	8a2fe0ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc0202400:	0000a617          	auipc	a2,0xa
ffffffffc0202404:	0d860613          	addi	a2,a2,216 # ffffffffc020c4d8 <default_pmm_manager+0x38>
ffffffffc0202408:	12500593          	li	a1,293
ffffffffc020240c:	0000a517          	auipc	a0,0xa
ffffffffc0202410:	1e450513          	addi	a0,a0,484 # ffffffffc020c5f0 <default_pmm_manager+0x150>
ffffffffc0202414:	88afe0ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc0202418:	86aa                	mv	a3,a0
ffffffffc020241a:	0000a617          	auipc	a2,0xa
ffffffffc020241e:	0be60613          	addi	a2,a2,190 # ffffffffc020c4d8 <default_pmm_manager+0x38>
ffffffffc0202422:	12100593          	li	a1,289
ffffffffc0202426:	0000a517          	auipc	a0,0xa
ffffffffc020242a:	1ca50513          	addi	a0,a0,458 # ffffffffc020c5f0 <default_pmm_manager+0x150>
ffffffffc020242e:	870fe0ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc0202432:	86aa                	mv	a3,a0
ffffffffc0202434:	0000a617          	auipc	a2,0xa
ffffffffc0202438:	0a460613          	addi	a2,a2,164 # ffffffffc020c4d8 <default_pmm_manager+0x38>
ffffffffc020243c:	12f00593          	li	a1,303
ffffffffc0202440:	0000a517          	auipc	a0,0xa
ffffffffc0202444:	1b050513          	addi	a0,a0,432 # ffffffffc020c5f0 <default_pmm_manager+0x150>
ffffffffc0202448:	856fe0ef          	jal	ra,ffffffffc020049e <__panic>

ffffffffc020244c <boot_map_segment>:
ffffffffc020244c:	6785                	lui	a5,0x1
ffffffffc020244e:	7139                	addi	sp,sp,-64
ffffffffc0202450:	00d5c833          	xor	a6,a1,a3
ffffffffc0202454:	17fd                	addi	a5,a5,-1
ffffffffc0202456:	fc06                	sd	ra,56(sp)
ffffffffc0202458:	f822                	sd	s0,48(sp)
ffffffffc020245a:	f426                	sd	s1,40(sp)
ffffffffc020245c:	f04a                	sd	s2,32(sp)
ffffffffc020245e:	ec4e                	sd	s3,24(sp)
ffffffffc0202460:	e852                	sd	s4,16(sp)
ffffffffc0202462:	e456                	sd	s5,8(sp)
ffffffffc0202464:	00f87833          	and	a6,a6,a5
ffffffffc0202468:	08081563          	bnez	a6,ffffffffc02024f2 <boot_map_segment+0xa6>
ffffffffc020246c:	00f5f4b3          	and	s1,a1,a5
ffffffffc0202470:	963e                	add	a2,a2,a5
ffffffffc0202472:	94b2                	add	s1,s1,a2
ffffffffc0202474:	797d                	lui	s2,0xfffff
ffffffffc0202476:	80b1                	srli	s1,s1,0xc
ffffffffc0202478:	0125f5b3          	and	a1,a1,s2
ffffffffc020247c:	0126f6b3          	and	a3,a3,s2
ffffffffc0202480:	c0a1                	beqz	s1,ffffffffc02024c0 <boot_map_segment+0x74>
ffffffffc0202482:	00176713          	ori	a4,a4,1
ffffffffc0202486:	04b2                	slli	s1,s1,0xc
ffffffffc0202488:	02071993          	slli	s3,a4,0x20
ffffffffc020248c:	8a2a                	mv	s4,a0
ffffffffc020248e:	842e                	mv	s0,a1
ffffffffc0202490:	94ae                	add	s1,s1,a1
ffffffffc0202492:	40b68933          	sub	s2,a3,a1
ffffffffc0202496:	0209d993          	srli	s3,s3,0x20
ffffffffc020249a:	6a85                	lui	s5,0x1
ffffffffc020249c:	4605                	li	a2,1
ffffffffc020249e:	85a2                	mv	a1,s0
ffffffffc02024a0:	8552                	mv	a0,s4
ffffffffc02024a2:	d83ff0ef          	jal	ra,ffffffffc0202224 <get_pte>
ffffffffc02024a6:	008907b3          	add	a5,s2,s0
ffffffffc02024aa:	c505                	beqz	a0,ffffffffc02024d2 <boot_map_segment+0x86>
ffffffffc02024ac:	83b1                	srli	a5,a5,0xc
ffffffffc02024ae:	07aa                	slli	a5,a5,0xa
ffffffffc02024b0:	0137e7b3          	or	a5,a5,s3
ffffffffc02024b4:	0017e793          	ori	a5,a5,1
ffffffffc02024b8:	e11c                	sd	a5,0(a0)
ffffffffc02024ba:	9456                	add	s0,s0,s5
ffffffffc02024bc:	fe8490e3          	bne	s1,s0,ffffffffc020249c <boot_map_segment+0x50>
ffffffffc02024c0:	70e2                	ld	ra,56(sp)
ffffffffc02024c2:	7442                	ld	s0,48(sp)
ffffffffc02024c4:	74a2                	ld	s1,40(sp)
ffffffffc02024c6:	7902                	ld	s2,32(sp)
ffffffffc02024c8:	69e2                	ld	s3,24(sp)
ffffffffc02024ca:	6a42                	ld	s4,16(sp)
ffffffffc02024cc:	6aa2                	ld	s5,8(sp)
ffffffffc02024ce:	6121                	addi	sp,sp,64
ffffffffc02024d0:	8082                	ret
ffffffffc02024d2:	0000a697          	auipc	a3,0xa
ffffffffc02024d6:	14668693          	addi	a3,a3,326 # ffffffffc020c618 <default_pmm_manager+0x178>
ffffffffc02024da:	00009617          	auipc	a2,0x9
ffffffffc02024de:	4de60613          	addi	a2,a2,1246 # ffffffffc020b9b8 <commands+0x210>
ffffffffc02024e2:	09c00593          	li	a1,156
ffffffffc02024e6:	0000a517          	auipc	a0,0xa
ffffffffc02024ea:	10a50513          	addi	a0,a0,266 # ffffffffc020c5f0 <default_pmm_manager+0x150>
ffffffffc02024ee:	fb1fd0ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc02024f2:	0000a697          	auipc	a3,0xa
ffffffffc02024f6:	10e68693          	addi	a3,a3,270 # ffffffffc020c600 <default_pmm_manager+0x160>
ffffffffc02024fa:	00009617          	auipc	a2,0x9
ffffffffc02024fe:	4be60613          	addi	a2,a2,1214 # ffffffffc020b9b8 <commands+0x210>
ffffffffc0202502:	09500593          	li	a1,149
ffffffffc0202506:	0000a517          	auipc	a0,0xa
ffffffffc020250a:	0ea50513          	addi	a0,a0,234 # ffffffffc020c5f0 <default_pmm_manager+0x150>
ffffffffc020250e:	f91fd0ef          	jal	ra,ffffffffc020049e <__panic>

ffffffffc0202512 <get_page>:
ffffffffc0202512:	1141                	addi	sp,sp,-16
ffffffffc0202514:	e022                	sd	s0,0(sp)
ffffffffc0202516:	8432                	mv	s0,a2
ffffffffc0202518:	4601                	li	a2,0
ffffffffc020251a:	e406                	sd	ra,8(sp)
ffffffffc020251c:	d09ff0ef          	jal	ra,ffffffffc0202224 <get_pte>
ffffffffc0202520:	c011                	beqz	s0,ffffffffc0202524 <get_page+0x12>
ffffffffc0202522:	e008                	sd	a0,0(s0)
ffffffffc0202524:	c511                	beqz	a0,ffffffffc0202530 <get_page+0x1e>
ffffffffc0202526:	611c                	ld	a5,0(a0)
ffffffffc0202528:	4501                	li	a0,0
ffffffffc020252a:	0017f713          	andi	a4,a5,1
ffffffffc020252e:	e709                	bnez	a4,ffffffffc0202538 <get_page+0x26>
ffffffffc0202530:	60a2                	ld	ra,8(sp)
ffffffffc0202532:	6402                	ld	s0,0(sp)
ffffffffc0202534:	0141                	addi	sp,sp,16
ffffffffc0202536:	8082                	ret
ffffffffc0202538:	078a                	slli	a5,a5,0x2
ffffffffc020253a:	83b1                	srli	a5,a5,0xc
ffffffffc020253c:	00094717          	auipc	a4,0x94
ffffffffc0202540:	36473703          	ld	a4,868(a4) # ffffffffc02968a0 <npage>
ffffffffc0202544:	00e7ff63          	bgeu	a5,a4,ffffffffc0202562 <get_page+0x50>
ffffffffc0202548:	60a2                	ld	ra,8(sp)
ffffffffc020254a:	6402                	ld	s0,0(sp)
ffffffffc020254c:	fff80537          	lui	a0,0xfff80
ffffffffc0202550:	97aa                	add	a5,a5,a0
ffffffffc0202552:	079a                	slli	a5,a5,0x6
ffffffffc0202554:	00094517          	auipc	a0,0x94
ffffffffc0202558:	35453503          	ld	a0,852(a0) # ffffffffc02968a8 <pages>
ffffffffc020255c:	953e                	add	a0,a0,a5
ffffffffc020255e:	0141                	addi	sp,sp,16
ffffffffc0202560:	8082                	ret
ffffffffc0202562:	bd3ff0ef          	jal	ra,ffffffffc0202134 <pa2page.part.0>

ffffffffc0202566 <unmap_range>:
ffffffffc0202566:	7159                	addi	sp,sp,-112
ffffffffc0202568:	00c5e7b3          	or	a5,a1,a2
ffffffffc020256c:	f486                	sd	ra,104(sp)
ffffffffc020256e:	f0a2                	sd	s0,96(sp)
ffffffffc0202570:	eca6                	sd	s1,88(sp)
ffffffffc0202572:	e8ca                	sd	s2,80(sp)
ffffffffc0202574:	e4ce                	sd	s3,72(sp)
ffffffffc0202576:	e0d2                	sd	s4,64(sp)
ffffffffc0202578:	fc56                	sd	s5,56(sp)
ffffffffc020257a:	f85a                	sd	s6,48(sp)
ffffffffc020257c:	f45e                	sd	s7,40(sp)
ffffffffc020257e:	f062                	sd	s8,32(sp)
ffffffffc0202580:	ec66                	sd	s9,24(sp)
ffffffffc0202582:	e86a                	sd	s10,16(sp)
ffffffffc0202584:	17d2                	slli	a5,a5,0x34
ffffffffc0202586:	e3ed                	bnez	a5,ffffffffc0202668 <unmap_range+0x102>
ffffffffc0202588:	002007b7          	lui	a5,0x200
ffffffffc020258c:	842e                	mv	s0,a1
ffffffffc020258e:	0ef5ed63          	bltu	a1,a5,ffffffffc0202688 <unmap_range+0x122>
ffffffffc0202592:	8932                	mv	s2,a2
ffffffffc0202594:	0ec5fa63          	bgeu	a1,a2,ffffffffc0202688 <unmap_range+0x122>
ffffffffc0202598:	4785                	li	a5,1
ffffffffc020259a:	07fe                	slli	a5,a5,0x1f
ffffffffc020259c:	0ec7e663          	bltu	a5,a2,ffffffffc0202688 <unmap_range+0x122>
ffffffffc02025a0:	89aa                	mv	s3,a0
ffffffffc02025a2:	6a05                	lui	s4,0x1
ffffffffc02025a4:	00094c97          	auipc	s9,0x94
ffffffffc02025a8:	2fcc8c93          	addi	s9,s9,764 # ffffffffc02968a0 <npage>
ffffffffc02025ac:	00094c17          	auipc	s8,0x94
ffffffffc02025b0:	2fcc0c13          	addi	s8,s8,764 # ffffffffc02968a8 <pages>
ffffffffc02025b4:	fff80bb7          	lui	s7,0xfff80
ffffffffc02025b8:	00094d17          	auipc	s10,0x94
ffffffffc02025bc:	2f8d0d13          	addi	s10,s10,760 # ffffffffc02968b0 <pmm_manager>
ffffffffc02025c0:	00200b37          	lui	s6,0x200
ffffffffc02025c4:	ffe00ab7          	lui	s5,0xffe00
ffffffffc02025c8:	4601                	li	a2,0
ffffffffc02025ca:	85a2                	mv	a1,s0
ffffffffc02025cc:	854e                	mv	a0,s3
ffffffffc02025ce:	c57ff0ef          	jal	ra,ffffffffc0202224 <get_pte>
ffffffffc02025d2:	84aa                	mv	s1,a0
ffffffffc02025d4:	cd29                	beqz	a0,ffffffffc020262e <unmap_range+0xc8>
ffffffffc02025d6:	611c                	ld	a5,0(a0)
ffffffffc02025d8:	e395                	bnez	a5,ffffffffc02025fc <unmap_range+0x96>
ffffffffc02025da:	9452                	add	s0,s0,s4
ffffffffc02025dc:	ff2466e3          	bltu	s0,s2,ffffffffc02025c8 <unmap_range+0x62>
ffffffffc02025e0:	70a6                	ld	ra,104(sp)
ffffffffc02025e2:	7406                	ld	s0,96(sp)
ffffffffc02025e4:	64e6                	ld	s1,88(sp)
ffffffffc02025e6:	6946                	ld	s2,80(sp)
ffffffffc02025e8:	69a6                	ld	s3,72(sp)
ffffffffc02025ea:	6a06                	ld	s4,64(sp)
ffffffffc02025ec:	7ae2                	ld	s5,56(sp)
ffffffffc02025ee:	7b42                	ld	s6,48(sp)
ffffffffc02025f0:	7ba2                	ld	s7,40(sp)
ffffffffc02025f2:	7c02                	ld	s8,32(sp)
ffffffffc02025f4:	6ce2                	ld	s9,24(sp)
ffffffffc02025f6:	6d42                	ld	s10,16(sp)
ffffffffc02025f8:	6165                	addi	sp,sp,112
ffffffffc02025fa:	8082                	ret
ffffffffc02025fc:	0017f713          	andi	a4,a5,1
ffffffffc0202600:	df69                	beqz	a4,ffffffffc02025da <unmap_range+0x74>
ffffffffc0202602:	000cb703          	ld	a4,0(s9)
ffffffffc0202606:	078a                	slli	a5,a5,0x2
ffffffffc0202608:	83b1                	srli	a5,a5,0xc
ffffffffc020260a:	08e7ff63          	bgeu	a5,a4,ffffffffc02026a8 <unmap_range+0x142>
ffffffffc020260e:	000c3503          	ld	a0,0(s8)
ffffffffc0202612:	97de                	add	a5,a5,s7
ffffffffc0202614:	079a                	slli	a5,a5,0x6
ffffffffc0202616:	953e                	add	a0,a0,a5
ffffffffc0202618:	411c                	lw	a5,0(a0)
ffffffffc020261a:	fff7871b          	addiw	a4,a5,-1
ffffffffc020261e:	c118                	sw	a4,0(a0)
ffffffffc0202620:	cf11                	beqz	a4,ffffffffc020263c <unmap_range+0xd6>
ffffffffc0202622:	0004b023          	sd	zero,0(s1)
ffffffffc0202626:	12040073          	sfence.vma	s0
ffffffffc020262a:	9452                	add	s0,s0,s4
ffffffffc020262c:	bf45                	j	ffffffffc02025dc <unmap_range+0x76>
ffffffffc020262e:	945a                	add	s0,s0,s6
ffffffffc0202630:	01547433          	and	s0,s0,s5
ffffffffc0202634:	d455                	beqz	s0,ffffffffc02025e0 <unmap_range+0x7a>
ffffffffc0202636:	f92469e3          	bltu	s0,s2,ffffffffc02025c8 <unmap_range+0x62>
ffffffffc020263a:	b75d                	j	ffffffffc02025e0 <unmap_range+0x7a>
ffffffffc020263c:	100027f3          	csrr	a5,sstatus
ffffffffc0202640:	8b89                	andi	a5,a5,2
ffffffffc0202642:	e799                	bnez	a5,ffffffffc0202650 <unmap_range+0xea>
ffffffffc0202644:	000d3783          	ld	a5,0(s10)
ffffffffc0202648:	4585                	li	a1,1
ffffffffc020264a:	739c                	ld	a5,32(a5)
ffffffffc020264c:	9782                	jalr	a5
ffffffffc020264e:	bfd1                	j	ffffffffc0202622 <unmap_range+0xbc>
ffffffffc0202650:	e42a                	sd	a0,8(sp)
ffffffffc0202652:	e20fe0ef          	jal	ra,ffffffffc0200c72 <intr_disable>
ffffffffc0202656:	000d3783          	ld	a5,0(s10)
ffffffffc020265a:	6522                	ld	a0,8(sp)
ffffffffc020265c:	4585                	li	a1,1
ffffffffc020265e:	739c                	ld	a5,32(a5)
ffffffffc0202660:	9782                	jalr	a5
ffffffffc0202662:	e0afe0ef          	jal	ra,ffffffffc0200c6c <intr_enable>
ffffffffc0202666:	bf75                	j	ffffffffc0202622 <unmap_range+0xbc>
ffffffffc0202668:	0000a697          	auipc	a3,0xa
ffffffffc020266c:	fc068693          	addi	a3,a3,-64 # ffffffffc020c628 <default_pmm_manager+0x188>
ffffffffc0202670:	00009617          	auipc	a2,0x9
ffffffffc0202674:	34860613          	addi	a2,a2,840 # ffffffffc020b9b8 <commands+0x210>
ffffffffc0202678:	15a00593          	li	a1,346
ffffffffc020267c:	0000a517          	auipc	a0,0xa
ffffffffc0202680:	f7450513          	addi	a0,a0,-140 # ffffffffc020c5f0 <default_pmm_manager+0x150>
ffffffffc0202684:	e1bfd0ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc0202688:	0000a697          	auipc	a3,0xa
ffffffffc020268c:	fd068693          	addi	a3,a3,-48 # ffffffffc020c658 <default_pmm_manager+0x1b8>
ffffffffc0202690:	00009617          	auipc	a2,0x9
ffffffffc0202694:	32860613          	addi	a2,a2,808 # ffffffffc020b9b8 <commands+0x210>
ffffffffc0202698:	15b00593          	li	a1,347
ffffffffc020269c:	0000a517          	auipc	a0,0xa
ffffffffc02026a0:	f5450513          	addi	a0,a0,-172 # ffffffffc020c5f0 <default_pmm_manager+0x150>
ffffffffc02026a4:	dfbfd0ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc02026a8:	a8dff0ef          	jal	ra,ffffffffc0202134 <pa2page.part.0>

ffffffffc02026ac <exit_range>:
ffffffffc02026ac:	7119                	addi	sp,sp,-128
ffffffffc02026ae:	00c5e7b3          	or	a5,a1,a2
ffffffffc02026b2:	fc86                	sd	ra,120(sp)
ffffffffc02026b4:	f8a2                	sd	s0,112(sp)
ffffffffc02026b6:	f4a6                	sd	s1,104(sp)
ffffffffc02026b8:	f0ca                	sd	s2,96(sp)
ffffffffc02026ba:	ecce                	sd	s3,88(sp)
ffffffffc02026bc:	e8d2                	sd	s4,80(sp)
ffffffffc02026be:	e4d6                	sd	s5,72(sp)
ffffffffc02026c0:	e0da                	sd	s6,64(sp)
ffffffffc02026c2:	fc5e                	sd	s7,56(sp)
ffffffffc02026c4:	f862                	sd	s8,48(sp)
ffffffffc02026c6:	f466                	sd	s9,40(sp)
ffffffffc02026c8:	f06a                	sd	s10,32(sp)
ffffffffc02026ca:	ec6e                	sd	s11,24(sp)
ffffffffc02026cc:	17d2                	slli	a5,a5,0x34
ffffffffc02026ce:	20079a63          	bnez	a5,ffffffffc02028e2 <exit_range+0x236>
ffffffffc02026d2:	002007b7          	lui	a5,0x200
ffffffffc02026d6:	24f5e463          	bltu	a1,a5,ffffffffc020291e <exit_range+0x272>
ffffffffc02026da:	8ab2                	mv	s5,a2
ffffffffc02026dc:	24c5f163          	bgeu	a1,a2,ffffffffc020291e <exit_range+0x272>
ffffffffc02026e0:	4785                	li	a5,1
ffffffffc02026e2:	07fe                	slli	a5,a5,0x1f
ffffffffc02026e4:	22c7ed63          	bltu	a5,a2,ffffffffc020291e <exit_range+0x272>
ffffffffc02026e8:	c00009b7          	lui	s3,0xc0000
ffffffffc02026ec:	0135f9b3          	and	s3,a1,s3
ffffffffc02026f0:	ffe00937          	lui	s2,0xffe00
ffffffffc02026f4:	400007b7          	lui	a5,0x40000
ffffffffc02026f8:	5cfd                	li	s9,-1
ffffffffc02026fa:	8c2a                	mv	s8,a0
ffffffffc02026fc:	0125f933          	and	s2,a1,s2
ffffffffc0202700:	99be                	add	s3,s3,a5
ffffffffc0202702:	00094d17          	auipc	s10,0x94
ffffffffc0202706:	19ed0d13          	addi	s10,s10,414 # ffffffffc02968a0 <npage>
ffffffffc020270a:	00ccdc93          	srli	s9,s9,0xc
ffffffffc020270e:	00094717          	auipc	a4,0x94
ffffffffc0202712:	19a70713          	addi	a4,a4,410 # ffffffffc02968a8 <pages>
ffffffffc0202716:	00094d97          	auipc	s11,0x94
ffffffffc020271a:	19ad8d93          	addi	s11,s11,410 # ffffffffc02968b0 <pmm_manager>
ffffffffc020271e:	c0000437          	lui	s0,0xc0000
ffffffffc0202722:	944e                	add	s0,s0,s3
ffffffffc0202724:	8079                	srli	s0,s0,0x1e
ffffffffc0202726:	1ff47413          	andi	s0,s0,511
ffffffffc020272a:	040e                	slli	s0,s0,0x3
ffffffffc020272c:	9462                	add	s0,s0,s8
ffffffffc020272e:	00043a03          	ld	s4,0(s0) # ffffffffc0000000 <_binary_bin_sfs_img_size+0xffffffffbff8ad00>
ffffffffc0202732:	001a7793          	andi	a5,s4,1
ffffffffc0202736:	eb99                	bnez	a5,ffffffffc020274c <exit_range+0xa0>
ffffffffc0202738:	12098463          	beqz	s3,ffffffffc0202860 <exit_range+0x1b4>
ffffffffc020273c:	400007b7          	lui	a5,0x40000
ffffffffc0202740:	97ce                	add	a5,a5,s3
ffffffffc0202742:	894e                	mv	s2,s3
ffffffffc0202744:	1159fe63          	bgeu	s3,s5,ffffffffc0202860 <exit_range+0x1b4>
ffffffffc0202748:	89be                	mv	s3,a5
ffffffffc020274a:	bfd1                	j	ffffffffc020271e <exit_range+0x72>
ffffffffc020274c:	000d3783          	ld	a5,0(s10)
ffffffffc0202750:	0a0a                	slli	s4,s4,0x2
ffffffffc0202752:	00ca5a13          	srli	s4,s4,0xc
ffffffffc0202756:	1cfa7263          	bgeu	s4,a5,ffffffffc020291a <exit_range+0x26e>
ffffffffc020275a:	fff80637          	lui	a2,0xfff80
ffffffffc020275e:	9652                	add	a2,a2,s4
ffffffffc0202760:	000806b7          	lui	a3,0x80
ffffffffc0202764:	96b2                	add	a3,a3,a2
ffffffffc0202766:	0196f5b3          	and	a1,a3,s9
ffffffffc020276a:	061a                	slli	a2,a2,0x6
ffffffffc020276c:	06b2                	slli	a3,a3,0xc
ffffffffc020276e:	18f5fa63          	bgeu	a1,a5,ffffffffc0202902 <exit_range+0x256>
ffffffffc0202772:	00094817          	auipc	a6,0x94
ffffffffc0202776:	14680813          	addi	a6,a6,326 # ffffffffc02968b8 <va_pa_offset>
ffffffffc020277a:	00083b03          	ld	s6,0(a6)
ffffffffc020277e:	4b85                	li	s7,1
ffffffffc0202780:	fff80e37          	lui	t3,0xfff80
ffffffffc0202784:	9b36                	add	s6,s6,a3
ffffffffc0202786:	00080337          	lui	t1,0x80
ffffffffc020278a:	6885                	lui	a7,0x1
ffffffffc020278c:	a819                	j	ffffffffc02027a2 <exit_range+0xf6>
ffffffffc020278e:	4b81                	li	s7,0
ffffffffc0202790:	002007b7          	lui	a5,0x200
ffffffffc0202794:	993e                	add	s2,s2,a5
ffffffffc0202796:	08090c63          	beqz	s2,ffffffffc020282e <exit_range+0x182>
ffffffffc020279a:	09397a63          	bgeu	s2,s3,ffffffffc020282e <exit_range+0x182>
ffffffffc020279e:	0f597063          	bgeu	s2,s5,ffffffffc020287e <exit_range+0x1d2>
ffffffffc02027a2:	01595493          	srli	s1,s2,0x15
ffffffffc02027a6:	1ff4f493          	andi	s1,s1,511
ffffffffc02027aa:	048e                	slli	s1,s1,0x3
ffffffffc02027ac:	94da                	add	s1,s1,s6
ffffffffc02027ae:	609c                	ld	a5,0(s1)
ffffffffc02027b0:	0017f693          	andi	a3,a5,1
ffffffffc02027b4:	dee9                	beqz	a3,ffffffffc020278e <exit_range+0xe2>
ffffffffc02027b6:	000d3583          	ld	a1,0(s10)
ffffffffc02027ba:	078a                	slli	a5,a5,0x2
ffffffffc02027bc:	83b1                	srli	a5,a5,0xc
ffffffffc02027be:	14b7fe63          	bgeu	a5,a1,ffffffffc020291a <exit_range+0x26e>
ffffffffc02027c2:	97f2                	add	a5,a5,t3
ffffffffc02027c4:	006786b3          	add	a3,a5,t1
ffffffffc02027c8:	0196feb3          	and	t4,a3,s9
ffffffffc02027cc:	00679513          	slli	a0,a5,0x6
ffffffffc02027d0:	06b2                	slli	a3,a3,0xc
ffffffffc02027d2:	12bef863          	bgeu	t4,a1,ffffffffc0202902 <exit_range+0x256>
ffffffffc02027d6:	00083783          	ld	a5,0(a6)
ffffffffc02027da:	96be                	add	a3,a3,a5
ffffffffc02027dc:	011685b3          	add	a1,a3,a7
ffffffffc02027e0:	629c                	ld	a5,0(a3)
ffffffffc02027e2:	8b85                	andi	a5,a5,1
ffffffffc02027e4:	f7d5                	bnez	a5,ffffffffc0202790 <exit_range+0xe4>
ffffffffc02027e6:	06a1                	addi	a3,a3,8
ffffffffc02027e8:	fed59ce3          	bne	a1,a3,ffffffffc02027e0 <exit_range+0x134>
ffffffffc02027ec:	631c                	ld	a5,0(a4)
ffffffffc02027ee:	953e                	add	a0,a0,a5
ffffffffc02027f0:	100027f3          	csrr	a5,sstatus
ffffffffc02027f4:	8b89                	andi	a5,a5,2
ffffffffc02027f6:	e7d9                	bnez	a5,ffffffffc0202884 <exit_range+0x1d8>
ffffffffc02027f8:	000db783          	ld	a5,0(s11)
ffffffffc02027fc:	4585                	li	a1,1
ffffffffc02027fe:	e032                	sd	a2,0(sp)
ffffffffc0202800:	739c                	ld	a5,32(a5)
ffffffffc0202802:	9782                	jalr	a5
ffffffffc0202804:	6602                	ld	a2,0(sp)
ffffffffc0202806:	00094817          	auipc	a6,0x94
ffffffffc020280a:	0b280813          	addi	a6,a6,178 # ffffffffc02968b8 <va_pa_offset>
ffffffffc020280e:	fff80e37          	lui	t3,0xfff80
ffffffffc0202812:	00080337          	lui	t1,0x80
ffffffffc0202816:	6885                	lui	a7,0x1
ffffffffc0202818:	00094717          	auipc	a4,0x94
ffffffffc020281c:	09070713          	addi	a4,a4,144 # ffffffffc02968a8 <pages>
ffffffffc0202820:	0004b023          	sd	zero,0(s1)
ffffffffc0202824:	002007b7          	lui	a5,0x200
ffffffffc0202828:	993e                	add	s2,s2,a5
ffffffffc020282a:	f60918e3          	bnez	s2,ffffffffc020279a <exit_range+0xee>
ffffffffc020282e:	f00b85e3          	beqz	s7,ffffffffc0202738 <exit_range+0x8c>
ffffffffc0202832:	000d3783          	ld	a5,0(s10)
ffffffffc0202836:	0efa7263          	bgeu	s4,a5,ffffffffc020291a <exit_range+0x26e>
ffffffffc020283a:	6308                	ld	a0,0(a4)
ffffffffc020283c:	9532                	add	a0,a0,a2
ffffffffc020283e:	100027f3          	csrr	a5,sstatus
ffffffffc0202842:	8b89                	andi	a5,a5,2
ffffffffc0202844:	efad                	bnez	a5,ffffffffc02028be <exit_range+0x212>
ffffffffc0202846:	000db783          	ld	a5,0(s11)
ffffffffc020284a:	4585                	li	a1,1
ffffffffc020284c:	739c                	ld	a5,32(a5)
ffffffffc020284e:	9782                	jalr	a5
ffffffffc0202850:	00094717          	auipc	a4,0x94
ffffffffc0202854:	05870713          	addi	a4,a4,88 # ffffffffc02968a8 <pages>
ffffffffc0202858:	00043023          	sd	zero,0(s0)
ffffffffc020285c:	ee0990e3          	bnez	s3,ffffffffc020273c <exit_range+0x90>
ffffffffc0202860:	70e6                	ld	ra,120(sp)
ffffffffc0202862:	7446                	ld	s0,112(sp)
ffffffffc0202864:	74a6                	ld	s1,104(sp)
ffffffffc0202866:	7906                	ld	s2,96(sp)
ffffffffc0202868:	69e6                	ld	s3,88(sp)
ffffffffc020286a:	6a46                	ld	s4,80(sp)
ffffffffc020286c:	6aa6                	ld	s5,72(sp)
ffffffffc020286e:	6b06                	ld	s6,64(sp)
ffffffffc0202870:	7be2                	ld	s7,56(sp)
ffffffffc0202872:	7c42                	ld	s8,48(sp)
ffffffffc0202874:	7ca2                	ld	s9,40(sp)
ffffffffc0202876:	7d02                	ld	s10,32(sp)
ffffffffc0202878:	6de2                	ld	s11,24(sp)
ffffffffc020287a:	6109                	addi	sp,sp,128
ffffffffc020287c:	8082                	ret
ffffffffc020287e:	ea0b8fe3          	beqz	s7,ffffffffc020273c <exit_range+0x90>
ffffffffc0202882:	bf45                	j	ffffffffc0202832 <exit_range+0x186>
ffffffffc0202884:	e032                	sd	a2,0(sp)
ffffffffc0202886:	e42a                	sd	a0,8(sp)
ffffffffc0202888:	beafe0ef          	jal	ra,ffffffffc0200c72 <intr_disable>
ffffffffc020288c:	000db783          	ld	a5,0(s11)
ffffffffc0202890:	6522                	ld	a0,8(sp)
ffffffffc0202892:	4585                	li	a1,1
ffffffffc0202894:	739c                	ld	a5,32(a5)
ffffffffc0202896:	9782                	jalr	a5
ffffffffc0202898:	bd4fe0ef          	jal	ra,ffffffffc0200c6c <intr_enable>
ffffffffc020289c:	6602                	ld	a2,0(sp)
ffffffffc020289e:	00094717          	auipc	a4,0x94
ffffffffc02028a2:	00a70713          	addi	a4,a4,10 # ffffffffc02968a8 <pages>
ffffffffc02028a6:	6885                	lui	a7,0x1
ffffffffc02028a8:	00080337          	lui	t1,0x80
ffffffffc02028ac:	fff80e37          	lui	t3,0xfff80
ffffffffc02028b0:	00094817          	auipc	a6,0x94
ffffffffc02028b4:	00880813          	addi	a6,a6,8 # ffffffffc02968b8 <va_pa_offset>
ffffffffc02028b8:	0004b023          	sd	zero,0(s1)
ffffffffc02028bc:	b7a5                	j	ffffffffc0202824 <exit_range+0x178>
ffffffffc02028be:	e02a                	sd	a0,0(sp)
ffffffffc02028c0:	bb2fe0ef          	jal	ra,ffffffffc0200c72 <intr_disable>
ffffffffc02028c4:	000db783          	ld	a5,0(s11)
ffffffffc02028c8:	6502                	ld	a0,0(sp)
ffffffffc02028ca:	4585                	li	a1,1
ffffffffc02028cc:	739c                	ld	a5,32(a5)
ffffffffc02028ce:	9782                	jalr	a5
ffffffffc02028d0:	b9cfe0ef          	jal	ra,ffffffffc0200c6c <intr_enable>
ffffffffc02028d4:	00094717          	auipc	a4,0x94
ffffffffc02028d8:	fd470713          	addi	a4,a4,-44 # ffffffffc02968a8 <pages>
ffffffffc02028dc:	00043023          	sd	zero,0(s0)
ffffffffc02028e0:	bfb5                	j	ffffffffc020285c <exit_range+0x1b0>
ffffffffc02028e2:	0000a697          	auipc	a3,0xa
ffffffffc02028e6:	d4668693          	addi	a3,a3,-698 # ffffffffc020c628 <default_pmm_manager+0x188>
ffffffffc02028ea:	00009617          	auipc	a2,0x9
ffffffffc02028ee:	0ce60613          	addi	a2,a2,206 # ffffffffc020b9b8 <commands+0x210>
ffffffffc02028f2:	16f00593          	li	a1,367
ffffffffc02028f6:	0000a517          	auipc	a0,0xa
ffffffffc02028fa:	cfa50513          	addi	a0,a0,-774 # ffffffffc020c5f0 <default_pmm_manager+0x150>
ffffffffc02028fe:	ba1fd0ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc0202902:	0000a617          	auipc	a2,0xa
ffffffffc0202906:	bd660613          	addi	a2,a2,-1066 # ffffffffc020c4d8 <default_pmm_manager+0x38>
ffffffffc020290a:	07100593          	li	a1,113
ffffffffc020290e:	0000a517          	auipc	a0,0xa
ffffffffc0202912:	bf250513          	addi	a0,a0,-1038 # ffffffffc020c500 <default_pmm_manager+0x60>
ffffffffc0202916:	b89fd0ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc020291a:	81bff0ef          	jal	ra,ffffffffc0202134 <pa2page.part.0>
ffffffffc020291e:	0000a697          	auipc	a3,0xa
ffffffffc0202922:	d3a68693          	addi	a3,a3,-710 # ffffffffc020c658 <default_pmm_manager+0x1b8>
ffffffffc0202926:	00009617          	auipc	a2,0x9
ffffffffc020292a:	09260613          	addi	a2,a2,146 # ffffffffc020b9b8 <commands+0x210>
ffffffffc020292e:	17000593          	li	a1,368
ffffffffc0202932:	0000a517          	auipc	a0,0xa
ffffffffc0202936:	cbe50513          	addi	a0,a0,-834 # ffffffffc020c5f0 <default_pmm_manager+0x150>
ffffffffc020293a:	b65fd0ef          	jal	ra,ffffffffc020049e <__panic>

ffffffffc020293e <page_remove>:
ffffffffc020293e:	7179                	addi	sp,sp,-48
ffffffffc0202940:	4601                	li	a2,0
ffffffffc0202942:	ec26                	sd	s1,24(sp)
ffffffffc0202944:	f406                	sd	ra,40(sp)
ffffffffc0202946:	f022                	sd	s0,32(sp)
ffffffffc0202948:	84ae                	mv	s1,a1
ffffffffc020294a:	8dbff0ef          	jal	ra,ffffffffc0202224 <get_pte>
ffffffffc020294e:	c511                	beqz	a0,ffffffffc020295a <page_remove+0x1c>
ffffffffc0202950:	611c                	ld	a5,0(a0)
ffffffffc0202952:	842a                	mv	s0,a0
ffffffffc0202954:	0017f713          	andi	a4,a5,1
ffffffffc0202958:	e711                	bnez	a4,ffffffffc0202964 <page_remove+0x26>
ffffffffc020295a:	70a2                	ld	ra,40(sp)
ffffffffc020295c:	7402                	ld	s0,32(sp)
ffffffffc020295e:	64e2                	ld	s1,24(sp)
ffffffffc0202960:	6145                	addi	sp,sp,48
ffffffffc0202962:	8082                	ret
ffffffffc0202964:	078a                	slli	a5,a5,0x2
ffffffffc0202966:	83b1                	srli	a5,a5,0xc
ffffffffc0202968:	00094717          	auipc	a4,0x94
ffffffffc020296c:	f3873703          	ld	a4,-200(a4) # ffffffffc02968a0 <npage>
ffffffffc0202970:	06e7f363          	bgeu	a5,a4,ffffffffc02029d6 <page_remove+0x98>
ffffffffc0202974:	fff80537          	lui	a0,0xfff80
ffffffffc0202978:	97aa                	add	a5,a5,a0
ffffffffc020297a:	079a                	slli	a5,a5,0x6
ffffffffc020297c:	00094517          	auipc	a0,0x94
ffffffffc0202980:	f2c53503          	ld	a0,-212(a0) # ffffffffc02968a8 <pages>
ffffffffc0202984:	953e                	add	a0,a0,a5
ffffffffc0202986:	411c                	lw	a5,0(a0)
ffffffffc0202988:	fff7871b          	addiw	a4,a5,-1
ffffffffc020298c:	c118                	sw	a4,0(a0)
ffffffffc020298e:	cb11                	beqz	a4,ffffffffc02029a2 <page_remove+0x64>
ffffffffc0202990:	00043023          	sd	zero,0(s0)
ffffffffc0202994:	12048073          	sfence.vma	s1
ffffffffc0202998:	70a2                	ld	ra,40(sp)
ffffffffc020299a:	7402                	ld	s0,32(sp)
ffffffffc020299c:	64e2                	ld	s1,24(sp)
ffffffffc020299e:	6145                	addi	sp,sp,48
ffffffffc02029a0:	8082                	ret
ffffffffc02029a2:	100027f3          	csrr	a5,sstatus
ffffffffc02029a6:	8b89                	andi	a5,a5,2
ffffffffc02029a8:	eb89                	bnez	a5,ffffffffc02029ba <page_remove+0x7c>
ffffffffc02029aa:	00094797          	auipc	a5,0x94
ffffffffc02029ae:	f067b783          	ld	a5,-250(a5) # ffffffffc02968b0 <pmm_manager>
ffffffffc02029b2:	739c                	ld	a5,32(a5)
ffffffffc02029b4:	4585                	li	a1,1
ffffffffc02029b6:	9782                	jalr	a5
ffffffffc02029b8:	bfe1                	j	ffffffffc0202990 <page_remove+0x52>
ffffffffc02029ba:	e42a                	sd	a0,8(sp)
ffffffffc02029bc:	ab6fe0ef          	jal	ra,ffffffffc0200c72 <intr_disable>
ffffffffc02029c0:	00094797          	auipc	a5,0x94
ffffffffc02029c4:	ef07b783          	ld	a5,-272(a5) # ffffffffc02968b0 <pmm_manager>
ffffffffc02029c8:	739c                	ld	a5,32(a5)
ffffffffc02029ca:	6522                	ld	a0,8(sp)
ffffffffc02029cc:	4585                	li	a1,1
ffffffffc02029ce:	9782                	jalr	a5
ffffffffc02029d0:	a9cfe0ef          	jal	ra,ffffffffc0200c6c <intr_enable>
ffffffffc02029d4:	bf75                	j	ffffffffc0202990 <page_remove+0x52>
ffffffffc02029d6:	f5eff0ef          	jal	ra,ffffffffc0202134 <pa2page.part.0>

ffffffffc02029da <page_insert>:
ffffffffc02029da:	7139                	addi	sp,sp,-64
ffffffffc02029dc:	e852                	sd	s4,16(sp)
ffffffffc02029de:	8a32                	mv	s4,a2
ffffffffc02029e0:	f822                	sd	s0,48(sp)
ffffffffc02029e2:	4605                	li	a2,1
ffffffffc02029e4:	842e                	mv	s0,a1
ffffffffc02029e6:	85d2                	mv	a1,s4
ffffffffc02029e8:	f426                	sd	s1,40(sp)
ffffffffc02029ea:	fc06                	sd	ra,56(sp)
ffffffffc02029ec:	f04a                	sd	s2,32(sp)
ffffffffc02029ee:	ec4e                	sd	s3,24(sp)
ffffffffc02029f0:	e456                	sd	s5,8(sp)
ffffffffc02029f2:	84b6                	mv	s1,a3
ffffffffc02029f4:	831ff0ef          	jal	ra,ffffffffc0202224 <get_pte>
ffffffffc02029f8:	c961                	beqz	a0,ffffffffc0202ac8 <page_insert+0xee>
ffffffffc02029fa:	4014                	lw	a3,0(s0)
ffffffffc02029fc:	611c                	ld	a5,0(a0)
ffffffffc02029fe:	89aa                	mv	s3,a0
ffffffffc0202a00:	0016871b          	addiw	a4,a3,1
ffffffffc0202a04:	c018                	sw	a4,0(s0)
ffffffffc0202a06:	0017f713          	andi	a4,a5,1
ffffffffc0202a0a:	ef05                	bnez	a4,ffffffffc0202a42 <page_insert+0x68>
ffffffffc0202a0c:	00094717          	auipc	a4,0x94
ffffffffc0202a10:	e9c73703          	ld	a4,-356(a4) # ffffffffc02968a8 <pages>
ffffffffc0202a14:	8c19                	sub	s0,s0,a4
ffffffffc0202a16:	000807b7          	lui	a5,0x80
ffffffffc0202a1a:	8419                	srai	s0,s0,0x6
ffffffffc0202a1c:	943e                	add	s0,s0,a5
ffffffffc0202a1e:	042a                	slli	s0,s0,0xa
ffffffffc0202a20:	8cc1                	or	s1,s1,s0
ffffffffc0202a22:	0014e493          	ori	s1,s1,1
ffffffffc0202a26:	0099b023          	sd	s1,0(s3) # ffffffffc0000000 <_binary_bin_sfs_img_size+0xffffffffbff8ad00>
ffffffffc0202a2a:	120a0073          	sfence.vma	s4
ffffffffc0202a2e:	4501                	li	a0,0
ffffffffc0202a30:	70e2                	ld	ra,56(sp)
ffffffffc0202a32:	7442                	ld	s0,48(sp)
ffffffffc0202a34:	74a2                	ld	s1,40(sp)
ffffffffc0202a36:	7902                	ld	s2,32(sp)
ffffffffc0202a38:	69e2                	ld	s3,24(sp)
ffffffffc0202a3a:	6a42                	ld	s4,16(sp)
ffffffffc0202a3c:	6aa2                	ld	s5,8(sp)
ffffffffc0202a3e:	6121                	addi	sp,sp,64
ffffffffc0202a40:	8082                	ret
ffffffffc0202a42:	078a                	slli	a5,a5,0x2
ffffffffc0202a44:	83b1                	srli	a5,a5,0xc
ffffffffc0202a46:	00094717          	auipc	a4,0x94
ffffffffc0202a4a:	e5a73703          	ld	a4,-422(a4) # ffffffffc02968a0 <npage>
ffffffffc0202a4e:	06e7ff63          	bgeu	a5,a4,ffffffffc0202acc <page_insert+0xf2>
ffffffffc0202a52:	00094a97          	auipc	s5,0x94
ffffffffc0202a56:	e56a8a93          	addi	s5,s5,-426 # ffffffffc02968a8 <pages>
ffffffffc0202a5a:	000ab703          	ld	a4,0(s5)
ffffffffc0202a5e:	fff80937          	lui	s2,0xfff80
ffffffffc0202a62:	993e                	add	s2,s2,a5
ffffffffc0202a64:	091a                	slli	s2,s2,0x6
ffffffffc0202a66:	993a                	add	s2,s2,a4
ffffffffc0202a68:	01240c63          	beq	s0,s2,ffffffffc0202a80 <page_insert+0xa6>
ffffffffc0202a6c:	00092783          	lw	a5,0(s2) # fffffffffff80000 <end+0x3fce96f0>
ffffffffc0202a70:	fff7869b          	addiw	a3,a5,-1
ffffffffc0202a74:	00d92023          	sw	a3,0(s2)
ffffffffc0202a78:	c691                	beqz	a3,ffffffffc0202a84 <page_insert+0xaa>
ffffffffc0202a7a:	120a0073          	sfence.vma	s4
ffffffffc0202a7e:	bf59                	j	ffffffffc0202a14 <page_insert+0x3a>
ffffffffc0202a80:	c014                	sw	a3,0(s0)
ffffffffc0202a82:	bf49                	j	ffffffffc0202a14 <page_insert+0x3a>
ffffffffc0202a84:	100027f3          	csrr	a5,sstatus
ffffffffc0202a88:	8b89                	andi	a5,a5,2
ffffffffc0202a8a:	ef91                	bnez	a5,ffffffffc0202aa6 <page_insert+0xcc>
ffffffffc0202a8c:	00094797          	auipc	a5,0x94
ffffffffc0202a90:	e247b783          	ld	a5,-476(a5) # ffffffffc02968b0 <pmm_manager>
ffffffffc0202a94:	739c                	ld	a5,32(a5)
ffffffffc0202a96:	4585                	li	a1,1
ffffffffc0202a98:	854a                	mv	a0,s2
ffffffffc0202a9a:	9782                	jalr	a5
ffffffffc0202a9c:	000ab703          	ld	a4,0(s5)
ffffffffc0202aa0:	120a0073          	sfence.vma	s4
ffffffffc0202aa4:	bf85                	j	ffffffffc0202a14 <page_insert+0x3a>
ffffffffc0202aa6:	9ccfe0ef          	jal	ra,ffffffffc0200c72 <intr_disable>
ffffffffc0202aaa:	00094797          	auipc	a5,0x94
ffffffffc0202aae:	e067b783          	ld	a5,-506(a5) # ffffffffc02968b0 <pmm_manager>
ffffffffc0202ab2:	739c                	ld	a5,32(a5)
ffffffffc0202ab4:	4585                	li	a1,1
ffffffffc0202ab6:	854a                	mv	a0,s2
ffffffffc0202ab8:	9782                	jalr	a5
ffffffffc0202aba:	9b2fe0ef          	jal	ra,ffffffffc0200c6c <intr_enable>
ffffffffc0202abe:	000ab703          	ld	a4,0(s5)
ffffffffc0202ac2:	120a0073          	sfence.vma	s4
ffffffffc0202ac6:	b7b9                	j	ffffffffc0202a14 <page_insert+0x3a>
ffffffffc0202ac8:	5571                	li	a0,-4
ffffffffc0202aca:	b79d                	j	ffffffffc0202a30 <page_insert+0x56>
ffffffffc0202acc:	e68ff0ef          	jal	ra,ffffffffc0202134 <pa2page.part.0>

ffffffffc0202ad0 <pmm_init>:
ffffffffc0202ad0:	0000a797          	auipc	a5,0xa
ffffffffc0202ad4:	9d078793          	addi	a5,a5,-1584 # ffffffffc020c4a0 <default_pmm_manager>
ffffffffc0202ad8:	638c                	ld	a1,0(a5)
ffffffffc0202ada:	7159                	addi	sp,sp,-112
ffffffffc0202adc:	f85a                	sd	s6,48(sp)
ffffffffc0202ade:	0000a517          	auipc	a0,0xa
ffffffffc0202ae2:	b9250513          	addi	a0,a0,-1134 # ffffffffc020c670 <default_pmm_manager+0x1d0>
ffffffffc0202ae6:	00094b17          	auipc	s6,0x94
ffffffffc0202aea:	dcab0b13          	addi	s6,s6,-566 # ffffffffc02968b0 <pmm_manager>
ffffffffc0202aee:	f486                	sd	ra,104(sp)
ffffffffc0202af0:	e8ca                	sd	s2,80(sp)
ffffffffc0202af2:	e4ce                	sd	s3,72(sp)
ffffffffc0202af4:	f0a2                	sd	s0,96(sp)
ffffffffc0202af6:	eca6                	sd	s1,88(sp)
ffffffffc0202af8:	e0d2                	sd	s4,64(sp)
ffffffffc0202afa:	fc56                	sd	s5,56(sp)
ffffffffc0202afc:	f45e                	sd	s7,40(sp)
ffffffffc0202afe:	f062                	sd	s8,32(sp)
ffffffffc0202b00:	ec66                	sd	s9,24(sp)
ffffffffc0202b02:	00fb3023          	sd	a5,0(s6)
ffffffffc0202b06:	ea0fd0ef          	jal	ra,ffffffffc02001a6 <cprintf>
ffffffffc0202b0a:	000b3783          	ld	a5,0(s6)
ffffffffc0202b0e:	00094997          	auipc	s3,0x94
ffffffffc0202b12:	daa98993          	addi	s3,s3,-598 # ffffffffc02968b8 <va_pa_offset>
ffffffffc0202b16:	679c                	ld	a5,8(a5)
ffffffffc0202b18:	9782                	jalr	a5
ffffffffc0202b1a:	57f5                	li	a5,-3
ffffffffc0202b1c:	07fa                	slli	a5,a5,0x1e
ffffffffc0202b1e:	00f9b023          	sd	a5,0(s3)
ffffffffc0202b22:	f27fd0ef          	jal	ra,ffffffffc0200a48 <get_memory_base>
ffffffffc0202b26:	892a                	mv	s2,a0
ffffffffc0202b28:	f2bfd0ef          	jal	ra,ffffffffc0200a52 <get_memory_size>
ffffffffc0202b2c:	280502e3          	beqz	a0,ffffffffc02035b0 <pmm_init+0xae0>
ffffffffc0202b30:	84aa                	mv	s1,a0
ffffffffc0202b32:	0000a517          	auipc	a0,0xa
ffffffffc0202b36:	b7650513          	addi	a0,a0,-1162 # ffffffffc020c6a8 <default_pmm_manager+0x208>
ffffffffc0202b3a:	e6cfd0ef          	jal	ra,ffffffffc02001a6 <cprintf>
ffffffffc0202b3e:	00990433          	add	s0,s2,s1
ffffffffc0202b42:	fff40693          	addi	a3,s0,-1
ffffffffc0202b46:	864a                	mv	a2,s2
ffffffffc0202b48:	85a6                	mv	a1,s1
ffffffffc0202b4a:	0000a517          	auipc	a0,0xa
ffffffffc0202b4e:	b7650513          	addi	a0,a0,-1162 # ffffffffc020c6c0 <default_pmm_manager+0x220>
ffffffffc0202b52:	e54fd0ef          	jal	ra,ffffffffc02001a6 <cprintf>
ffffffffc0202b56:	c8000737          	lui	a4,0xc8000
ffffffffc0202b5a:	87a2                	mv	a5,s0
ffffffffc0202b5c:	5e876e63          	bltu	a4,s0,ffffffffc0203158 <pmm_init+0x688>
ffffffffc0202b60:	757d                	lui	a0,0xfffff
ffffffffc0202b62:	00095617          	auipc	a2,0x95
ffffffffc0202b66:	dad60613          	addi	a2,a2,-595 # ffffffffc029790f <end+0xfff>
ffffffffc0202b6a:	8e69                	and	a2,a2,a0
ffffffffc0202b6c:	00094497          	auipc	s1,0x94
ffffffffc0202b70:	d3448493          	addi	s1,s1,-716 # ffffffffc02968a0 <npage>
ffffffffc0202b74:	00c7d513          	srli	a0,a5,0xc
ffffffffc0202b78:	00094b97          	auipc	s7,0x94
ffffffffc0202b7c:	d30b8b93          	addi	s7,s7,-720 # ffffffffc02968a8 <pages>
ffffffffc0202b80:	e088                	sd	a0,0(s1)
ffffffffc0202b82:	00cbb023          	sd	a2,0(s7)
ffffffffc0202b86:	000807b7          	lui	a5,0x80
ffffffffc0202b8a:	86b2                	mv	a3,a2
ffffffffc0202b8c:	02f50863          	beq	a0,a5,ffffffffc0202bbc <pmm_init+0xec>
ffffffffc0202b90:	4781                	li	a5,0
ffffffffc0202b92:	4585                	li	a1,1
ffffffffc0202b94:	fff806b7          	lui	a3,0xfff80
ffffffffc0202b98:	00679513          	slli	a0,a5,0x6
ffffffffc0202b9c:	9532                	add	a0,a0,a2
ffffffffc0202b9e:	00850713          	addi	a4,a0,8 # fffffffffffff008 <end+0x3fd686f8>
ffffffffc0202ba2:	40b7302f          	amoor.d	zero,a1,(a4)
ffffffffc0202ba6:	6088                	ld	a0,0(s1)
ffffffffc0202ba8:	0785                	addi	a5,a5,1
ffffffffc0202baa:	000bb603          	ld	a2,0(s7)
ffffffffc0202bae:	00d50733          	add	a4,a0,a3
ffffffffc0202bb2:	fee7e3e3          	bltu	a5,a4,ffffffffc0202b98 <pmm_init+0xc8>
ffffffffc0202bb6:	071a                	slli	a4,a4,0x6
ffffffffc0202bb8:	00e606b3          	add	a3,a2,a4
ffffffffc0202bbc:	c02007b7          	lui	a5,0xc0200
ffffffffc0202bc0:	3af6eae3          	bltu	a3,a5,ffffffffc0203774 <pmm_init+0xca4>
ffffffffc0202bc4:	0009b583          	ld	a1,0(s3)
ffffffffc0202bc8:	77fd                	lui	a5,0xfffff
ffffffffc0202bca:	8c7d                	and	s0,s0,a5
ffffffffc0202bcc:	8e8d                	sub	a3,a3,a1
ffffffffc0202bce:	5e86e363          	bltu	a3,s0,ffffffffc02031b4 <pmm_init+0x6e4>
ffffffffc0202bd2:	0000a517          	auipc	a0,0xa
ffffffffc0202bd6:	b1650513          	addi	a0,a0,-1258 # ffffffffc020c6e8 <default_pmm_manager+0x248>
ffffffffc0202bda:	dccfd0ef          	jal	ra,ffffffffc02001a6 <cprintf>
ffffffffc0202bde:	000b3783          	ld	a5,0(s6)
ffffffffc0202be2:	7b9c                	ld	a5,48(a5)
ffffffffc0202be4:	9782                	jalr	a5
ffffffffc0202be6:	0000a517          	auipc	a0,0xa
ffffffffc0202bea:	b1a50513          	addi	a0,a0,-1254 # ffffffffc020c700 <default_pmm_manager+0x260>
ffffffffc0202bee:	db8fd0ef          	jal	ra,ffffffffc02001a6 <cprintf>
ffffffffc0202bf2:	100027f3          	csrr	a5,sstatus
ffffffffc0202bf6:	8b89                	andi	a5,a5,2
ffffffffc0202bf8:	5a079363          	bnez	a5,ffffffffc020319e <pmm_init+0x6ce>
ffffffffc0202bfc:	000b3783          	ld	a5,0(s6)
ffffffffc0202c00:	4505                	li	a0,1
ffffffffc0202c02:	6f9c                	ld	a5,24(a5)
ffffffffc0202c04:	9782                	jalr	a5
ffffffffc0202c06:	842a                	mv	s0,a0
ffffffffc0202c08:	180408e3          	beqz	s0,ffffffffc0203598 <pmm_init+0xac8>
ffffffffc0202c0c:	000bb683          	ld	a3,0(s7)
ffffffffc0202c10:	5a7d                	li	s4,-1
ffffffffc0202c12:	6098                	ld	a4,0(s1)
ffffffffc0202c14:	40d406b3          	sub	a3,s0,a3
ffffffffc0202c18:	8699                	srai	a3,a3,0x6
ffffffffc0202c1a:	00080437          	lui	s0,0x80
ffffffffc0202c1e:	96a2                	add	a3,a3,s0
ffffffffc0202c20:	00ca5793          	srli	a5,s4,0xc
ffffffffc0202c24:	8ff5                	and	a5,a5,a3
ffffffffc0202c26:	06b2                	slli	a3,a3,0xc
ffffffffc0202c28:	30e7fde3          	bgeu	a5,a4,ffffffffc0203742 <pmm_init+0xc72>
ffffffffc0202c2c:	0009b403          	ld	s0,0(s3)
ffffffffc0202c30:	6605                	lui	a2,0x1
ffffffffc0202c32:	4581                	li	a1,0
ffffffffc0202c34:	9436                	add	s0,s0,a3
ffffffffc0202c36:	8522                	mv	a0,s0
ffffffffc0202c38:	09d080ef          	jal	ra,ffffffffc020b4d4 <memset>
ffffffffc0202c3c:	0009b683          	ld	a3,0(s3)
ffffffffc0202c40:	77fd                	lui	a5,0xfffff
ffffffffc0202c42:	0000a917          	auipc	s2,0xa
ffffffffc0202c46:	8fb90913          	addi	s2,s2,-1797 # ffffffffc020c53d <default_pmm_manager+0x9d>
ffffffffc0202c4a:	00f97933          	and	s2,s2,a5
ffffffffc0202c4e:	c0200ab7          	lui	s5,0xc0200
ffffffffc0202c52:	3fe00637          	lui	a2,0x3fe00
ffffffffc0202c56:	964a                	add	a2,a2,s2
ffffffffc0202c58:	4729                	li	a4,10
ffffffffc0202c5a:	40da86b3          	sub	a3,s5,a3
ffffffffc0202c5e:	c02005b7          	lui	a1,0xc0200
ffffffffc0202c62:	8522                	mv	a0,s0
ffffffffc0202c64:	fe8ff0ef          	jal	ra,ffffffffc020244c <boot_map_segment>
ffffffffc0202c68:	c8000637          	lui	a2,0xc8000
ffffffffc0202c6c:	41260633          	sub	a2,a2,s2
ffffffffc0202c70:	3f596ce3          	bltu	s2,s5,ffffffffc0203868 <pmm_init+0xd98>
ffffffffc0202c74:	0009b683          	ld	a3,0(s3)
ffffffffc0202c78:	85ca                	mv	a1,s2
ffffffffc0202c7a:	4719                	li	a4,6
ffffffffc0202c7c:	40d906b3          	sub	a3,s2,a3
ffffffffc0202c80:	8522                	mv	a0,s0
ffffffffc0202c82:	00094917          	auipc	s2,0x94
ffffffffc0202c86:	c1690913          	addi	s2,s2,-1002 # ffffffffc0296898 <boot_pgdir_va>
ffffffffc0202c8a:	fc2ff0ef          	jal	ra,ffffffffc020244c <boot_map_segment>
ffffffffc0202c8e:	00893023          	sd	s0,0(s2)
ffffffffc0202c92:	2d5464e3          	bltu	s0,s5,ffffffffc020375a <pmm_init+0xc8a>
ffffffffc0202c96:	0009b783          	ld	a5,0(s3)
ffffffffc0202c9a:	1a7e                	slli	s4,s4,0x3f
ffffffffc0202c9c:	8c1d                	sub	s0,s0,a5
ffffffffc0202c9e:	00c45793          	srli	a5,s0,0xc
ffffffffc0202ca2:	00094717          	auipc	a4,0x94
ffffffffc0202ca6:	be873723          	sd	s0,-1042(a4) # ffffffffc0296890 <boot_pgdir_pa>
ffffffffc0202caa:	0147ea33          	or	s4,a5,s4
ffffffffc0202cae:	180a1073          	csrw	satp,s4
ffffffffc0202cb2:	12000073          	sfence.vma
ffffffffc0202cb6:	0000a517          	auipc	a0,0xa
ffffffffc0202cba:	a8a50513          	addi	a0,a0,-1398 # ffffffffc020c740 <default_pmm_manager+0x2a0>
ffffffffc0202cbe:	ce8fd0ef          	jal	ra,ffffffffc02001a6 <cprintf>
ffffffffc0202cc2:	0000e717          	auipc	a4,0xe
ffffffffc0202cc6:	33e70713          	addi	a4,a4,830 # ffffffffc0211000 <bootstack>
ffffffffc0202cca:	0000e797          	auipc	a5,0xe
ffffffffc0202cce:	33678793          	addi	a5,a5,822 # ffffffffc0211000 <bootstack>
ffffffffc0202cd2:	5cf70d63          	beq	a4,a5,ffffffffc02032ac <pmm_init+0x7dc>
ffffffffc0202cd6:	100027f3          	csrr	a5,sstatus
ffffffffc0202cda:	8b89                	andi	a5,a5,2
ffffffffc0202cdc:	4a079763          	bnez	a5,ffffffffc020318a <pmm_init+0x6ba>
ffffffffc0202ce0:	000b3783          	ld	a5,0(s6)
ffffffffc0202ce4:	779c                	ld	a5,40(a5)
ffffffffc0202ce6:	9782                	jalr	a5
ffffffffc0202ce8:	842a                	mv	s0,a0
ffffffffc0202cea:	6098                	ld	a4,0(s1)
ffffffffc0202cec:	c80007b7          	lui	a5,0xc8000
ffffffffc0202cf0:	83b1                	srli	a5,a5,0xc
ffffffffc0202cf2:	08e7e3e3          	bltu	a5,a4,ffffffffc0203578 <pmm_init+0xaa8>
ffffffffc0202cf6:	00093503          	ld	a0,0(s2)
ffffffffc0202cfa:	04050fe3          	beqz	a0,ffffffffc0203558 <pmm_init+0xa88>
ffffffffc0202cfe:	03451793          	slli	a5,a0,0x34
ffffffffc0202d02:	04079be3          	bnez	a5,ffffffffc0203558 <pmm_init+0xa88>
ffffffffc0202d06:	4601                	li	a2,0
ffffffffc0202d08:	4581                	li	a1,0
ffffffffc0202d0a:	809ff0ef          	jal	ra,ffffffffc0202512 <get_page>
ffffffffc0202d0e:	2e0511e3          	bnez	a0,ffffffffc02037f0 <pmm_init+0xd20>
ffffffffc0202d12:	100027f3          	csrr	a5,sstatus
ffffffffc0202d16:	8b89                	andi	a5,a5,2
ffffffffc0202d18:	44079e63          	bnez	a5,ffffffffc0203174 <pmm_init+0x6a4>
ffffffffc0202d1c:	000b3783          	ld	a5,0(s6)
ffffffffc0202d20:	4505                	li	a0,1
ffffffffc0202d22:	6f9c                	ld	a5,24(a5)
ffffffffc0202d24:	9782                	jalr	a5
ffffffffc0202d26:	8a2a                	mv	s4,a0
ffffffffc0202d28:	00093503          	ld	a0,0(s2)
ffffffffc0202d2c:	4681                	li	a3,0
ffffffffc0202d2e:	4601                	li	a2,0
ffffffffc0202d30:	85d2                	mv	a1,s4
ffffffffc0202d32:	ca9ff0ef          	jal	ra,ffffffffc02029da <page_insert>
ffffffffc0202d36:	26051be3          	bnez	a0,ffffffffc02037ac <pmm_init+0xcdc>
ffffffffc0202d3a:	00093503          	ld	a0,0(s2)
ffffffffc0202d3e:	4601                	li	a2,0
ffffffffc0202d40:	4581                	li	a1,0
ffffffffc0202d42:	ce2ff0ef          	jal	ra,ffffffffc0202224 <get_pte>
ffffffffc0202d46:	280505e3          	beqz	a0,ffffffffc02037d0 <pmm_init+0xd00>
ffffffffc0202d4a:	611c                	ld	a5,0(a0)
ffffffffc0202d4c:	0017f713          	andi	a4,a5,1
ffffffffc0202d50:	26070ee3          	beqz	a4,ffffffffc02037cc <pmm_init+0xcfc>
ffffffffc0202d54:	6098                	ld	a4,0(s1)
ffffffffc0202d56:	078a                	slli	a5,a5,0x2
ffffffffc0202d58:	83b1                	srli	a5,a5,0xc
ffffffffc0202d5a:	62e7f363          	bgeu	a5,a4,ffffffffc0203380 <pmm_init+0x8b0>
ffffffffc0202d5e:	000bb683          	ld	a3,0(s7)
ffffffffc0202d62:	fff80637          	lui	a2,0xfff80
ffffffffc0202d66:	97b2                	add	a5,a5,a2
ffffffffc0202d68:	079a                	slli	a5,a5,0x6
ffffffffc0202d6a:	97b6                	add	a5,a5,a3
ffffffffc0202d6c:	2afa12e3          	bne	s4,a5,ffffffffc0203810 <pmm_init+0xd40>
ffffffffc0202d70:	000a2683          	lw	a3,0(s4) # 1000 <_binary_bin_swap_img_size-0x6d00>
ffffffffc0202d74:	4785                	li	a5,1
ffffffffc0202d76:	2cf699e3          	bne	a3,a5,ffffffffc0203848 <pmm_init+0xd78>
ffffffffc0202d7a:	00093503          	ld	a0,0(s2)
ffffffffc0202d7e:	77fd                	lui	a5,0xfffff
ffffffffc0202d80:	6114                	ld	a3,0(a0)
ffffffffc0202d82:	068a                	slli	a3,a3,0x2
ffffffffc0202d84:	8efd                	and	a3,a3,a5
ffffffffc0202d86:	00c6d613          	srli	a2,a3,0xc
ffffffffc0202d8a:	2ae673e3          	bgeu	a2,a4,ffffffffc0203830 <pmm_init+0xd60>
ffffffffc0202d8e:	0009bc03          	ld	s8,0(s3)
ffffffffc0202d92:	96e2                	add	a3,a3,s8
ffffffffc0202d94:	0006ba83          	ld	s5,0(a3) # fffffffffff80000 <end+0x3fce96f0>
ffffffffc0202d98:	0a8a                	slli	s5,s5,0x2
ffffffffc0202d9a:	00fafab3          	and	s5,s5,a5
ffffffffc0202d9e:	00cad793          	srli	a5,s5,0xc
ffffffffc0202da2:	06e7f3e3          	bgeu	a5,a4,ffffffffc0203608 <pmm_init+0xb38>
ffffffffc0202da6:	4601                	li	a2,0
ffffffffc0202da8:	6585                	lui	a1,0x1
ffffffffc0202daa:	9ae2                	add	s5,s5,s8
ffffffffc0202dac:	c78ff0ef          	jal	ra,ffffffffc0202224 <get_pte>
ffffffffc0202db0:	0aa1                	addi	s5,s5,8
ffffffffc0202db2:	03551be3          	bne	a0,s5,ffffffffc02035e8 <pmm_init+0xb18>
ffffffffc0202db6:	100027f3          	csrr	a5,sstatus
ffffffffc0202dba:	8b89                	andi	a5,a5,2
ffffffffc0202dbc:	3a079163          	bnez	a5,ffffffffc020315e <pmm_init+0x68e>
ffffffffc0202dc0:	000b3783          	ld	a5,0(s6)
ffffffffc0202dc4:	4505                	li	a0,1
ffffffffc0202dc6:	6f9c                	ld	a5,24(a5)
ffffffffc0202dc8:	9782                	jalr	a5
ffffffffc0202dca:	8c2a                	mv	s8,a0
ffffffffc0202dcc:	00093503          	ld	a0,0(s2)
ffffffffc0202dd0:	46d1                	li	a3,20
ffffffffc0202dd2:	6605                	lui	a2,0x1
ffffffffc0202dd4:	85e2                	mv	a1,s8
ffffffffc0202dd6:	c05ff0ef          	jal	ra,ffffffffc02029da <page_insert>
ffffffffc0202dda:	1a0519e3          	bnez	a0,ffffffffc020378c <pmm_init+0xcbc>
ffffffffc0202dde:	00093503          	ld	a0,0(s2)
ffffffffc0202de2:	4601                	li	a2,0
ffffffffc0202de4:	6585                	lui	a1,0x1
ffffffffc0202de6:	c3eff0ef          	jal	ra,ffffffffc0202224 <get_pte>
ffffffffc0202dea:	10050ce3          	beqz	a0,ffffffffc0203702 <pmm_init+0xc32>
ffffffffc0202dee:	611c                	ld	a5,0(a0)
ffffffffc0202df0:	0107f713          	andi	a4,a5,16
ffffffffc0202df4:	0e0707e3          	beqz	a4,ffffffffc02036e2 <pmm_init+0xc12>
ffffffffc0202df8:	8b91                	andi	a5,a5,4
ffffffffc0202dfa:	0c0784e3          	beqz	a5,ffffffffc02036c2 <pmm_init+0xbf2>
ffffffffc0202dfe:	00093503          	ld	a0,0(s2)
ffffffffc0202e02:	611c                	ld	a5,0(a0)
ffffffffc0202e04:	8bc1                	andi	a5,a5,16
ffffffffc0202e06:	08078ee3          	beqz	a5,ffffffffc02036a2 <pmm_init+0xbd2>
ffffffffc0202e0a:	000c2703          	lw	a4,0(s8)
ffffffffc0202e0e:	4785                	li	a5,1
ffffffffc0202e10:	06f719e3          	bne	a4,a5,ffffffffc0203682 <pmm_init+0xbb2>
ffffffffc0202e14:	4681                	li	a3,0
ffffffffc0202e16:	6605                	lui	a2,0x1
ffffffffc0202e18:	85d2                	mv	a1,s4
ffffffffc0202e1a:	bc1ff0ef          	jal	ra,ffffffffc02029da <page_insert>
ffffffffc0202e1e:	040512e3          	bnez	a0,ffffffffc0203662 <pmm_init+0xb92>
ffffffffc0202e22:	000a2703          	lw	a4,0(s4)
ffffffffc0202e26:	4789                	li	a5,2
ffffffffc0202e28:	00f71de3          	bne	a4,a5,ffffffffc0203642 <pmm_init+0xb72>
ffffffffc0202e2c:	000c2783          	lw	a5,0(s8)
ffffffffc0202e30:	7e079963          	bnez	a5,ffffffffc0203622 <pmm_init+0xb52>
ffffffffc0202e34:	00093503          	ld	a0,0(s2)
ffffffffc0202e38:	4601                	li	a2,0
ffffffffc0202e3a:	6585                	lui	a1,0x1
ffffffffc0202e3c:	be8ff0ef          	jal	ra,ffffffffc0202224 <get_pte>
ffffffffc0202e40:	54050263          	beqz	a0,ffffffffc0203384 <pmm_init+0x8b4>
ffffffffc0202e44:	6118                	ld	a4,0(a0)
ffffffffc0202e46:	00177793          	andi	a5,a4,1
ffffffffc0202e4a:	180781e3          	beqz	a5,ffffffffc02037cc <pmm_init+0xcfc>
ffffffffc0202e4e:	6094                	ld	a3,0(s1)
ffffffffc0202e50:	00271793          	slli	a5,a4,0x2
ffffffffc0202e54:	83b1                	srli	a5,a5,0xc
ffffffffc0202e56:	52d7f563          	bgeu	a5,a3,ffffffffc0203380 <pmm_init+0x8b0>
ffffffffc0202e5a:	000bb683          	ld	a3,0(s7)
ffffffffc0202e5e:	fff80ab7          	lui	s5,0xfff80
ffffffffc0202e62:	97d6                	add	a5,a5,s5
ffffffffc0202e64:	079a                	slli	a5,a5,0x6
ffffffffc0202e66:	97b6                	add	a5,a5,a3
ffffffffc0202e68:	58fa1e63          	bne	s4,a5,ffffffffc0203404 <pmm_init+0x934>
ffffffffc0202e6c:	8b41                	andi	a4,a4,16
ffffffffc0202e6e:	56071b63          	bnez	a4,ffffffffc02033e4 <pmm_init+0x914>
ffffffffc0202e72:	00093503          	ld	a0,0(s2)
ffffffffc0202e76:	4581                	li	a1,0
ffffffffc0202e78:	ac7ff0ef          	jal	ra,ffffffffc020293e <page_remove>
ffffffffc0202e7c:	000a2c83          	lw	s9,0(s4)
ffffffffc0202e80:	4785                	li	a5,1
ffffffffc0202e82:	5cfc9163          	bne	s9,a5,ffffffffc0203444 <pmm_init+0x974>
ffffffffc0202e86:	000c2783          	lw	a5,0(s8)
ffffffffc0202e8a:	58079d63          	bnez	a5,ffffffffc0203424 <pmm_init+0x954>
ffffffffc0202e8e:	00093503          	ld	a0,0(s2)
ffffffffc0202e92:	6585                	lui	a1,0x1
ffffffffc0202e94:	aabff0ef          	jal	ra,ffffffffc020293e <page_remove>
ffffffffc0202e98:	000a2783          	lw	a5,0(s4)
ffffffffc0202e9c:	200793e3          	bnez	a5,ffffffffc02038a2 <pmm_init+0xdd2>
ffffffffc0202ea0:	000c2783          	lw	a5,0(s8)
ffffffffc0202ea4:	1c079fe3          	bnez	a5,ffffffffc0203882 <pmm_init+0xdb2>
ffffffffc0202ea8:	00093a03          	ld	s4,0(s2)
ffffffffc0202eac:	608c                	ld	a1,0(s1)
ffffffffc0202eae:	000a3683          	ld	a3,0(s4)
ffffffffc0202eb2:	068a                	slli	a3,a3,0x2
ffffffffc0202eb4:	82b1                	srli	a3,a3,0xc
ffffffffc0202eb6:	4cb6f563          	bgeu	a3,a1,ffffffffc0203380 <pmm_init+0x8b0>
ffffffffc0202eba:	000bb503          	ld	a0,0(s7)
ffffffffc0202ebe:	96d6                	add	a3,a3,s5
ffffffffc0202ec0:	069a                	slli	a3,a3,0x6
ffffffffc0202ec2:	00d507b3          	add	a5,a0,a3
ffffffffc0202ec6:	439c                	lw	a5,0(a5)
ffffffffc0202ec8:	4f979e63          	bne	a5,s9,ffffffffc02033c4 <pmm_init+0x8f4>
ffffffffc0202ecc:	8699                	srai	a3,a3,0x6
ffffffffc0202ece:	00080637          	lui	a2,0x80
ffffffffc0202ed2:	96b2                	add	a3,a3,a2
ffffffffc0202ed4:	00c69713          	slli	a4,a3,0xc
ffffffffc0202ed8:	8331                	srli	a4,a4,0xc
ffffffffc0202eda:	06b2                	slli	a3,a3,0xc
ffffffffc0202edc:	06b773e3          	bgeu	a4,a1,ffffffffc0203742 <pmm_init+0xc72>
ffffffffc0202ee0:	0009b703          	ld	a4,0(s3)
ffffffffc0202ee4:	96ba                	add	a3,a3,a4
ffffffffc0202ee6:	629c                	ld	a5,0(a3)
ffffffffc0202ee8:	078a                	slli	a5,a5,0x2
ffffffffc0202eea:	83b1                	srli	a5,a5,0xc
ffffffffc0202eec:	48b7fa63          	bgeu	a5,a1,ffffffffc0203380 <pmm_init+0x8b0>
ffffffffc0202ef0:	8f91                	sub	a5,a5,a2
ffffffffc0202ef2:	079a                	slli	a5,a5,0x6
ffffffffc0202ef4:	953e                	add	a0,a0,a5
ffffffffc0202ef6:	100027f3          	csrr	a5,sstatus
ffffffffc0202efa:	8b89                	andi	a5,a5,2
ffffffffc0202efc:	32079463          	bnez	a5,ffffffffc0203224 <pmm_init+0x754>
ffffffffc0202f00:	000b3783          	ld	a5,0(s6)
ffffffffc0202f04:	4585                	li	a1,1
ffffffffc0202f06:	739c                	ld	a5,32(a5)
ffffffffc0202f08:	9782                	jalr	a5
ffffffffc0202f0a:	000a3783          	ld	a5,0(s4)
ffffffffc0202f0e:	6098                	ld	a4,0(s1)
ffffffffc0202f10:	078a                	slli	a5,a5,0x2
ffffffffc0202f12:	83b1                	srli	a5,a5,0xc
ffffffffc0202f14:	46e7f663          	bgeu	a5,a4,ffffffffc0203380 <pmm_init+0x8b0>
ffffffffc0202f18:	000bb503          	ld	a0,0(s7)
ffffffffc0202f1c:	fff80737          	lui	a4,0xfff80
ffffffffc0202f20:	97ba                	add	a5,a5,a4
ffffffffc0202f22:	079a                	slli	a5,a5,0x6
ffffffffc0202f24:	953e                	add	a0,a0,a5
ffffffffc0202f26:	100027f3          	csrr	a5,sstatus
ffffffffc0202f2a:	8b89                	andi	a5,a5,2
ffffffffc0202f2c:	2e079063          	bnez	a5,ffffffffc020320c <pmm_init+0x73c>
ffffffffc0202f30:	000b3783          	ld	a5,0(s6)
ffffffffc0202f34:	4585                	li	a1,1
ffffffffc0202f36:	739c                	ld	a5,32(a5)
ffffffffc0202f38:	9782                	jalr	a5
ffffffffc0202f3a:	00093783          	ld	a5,0(s2)
ffffffffc0202f3e:	0007b023          	sd	zero,0(a5) # fffffffffffff000 <end+0x3fd686f0>
ffffffffc0202f42:	12000073          	sfence.vma
ffffffffc0202f46:	100027f3          	csrr	a5,sstatus
ffffffffc0202f4a:	8b89                	andi	a5,a5,2
ffffffffc0202f4c:	2a079663          	bnez	a5,ffffffffc02031f8 <pmm_init+0x728>
ffffffffc0202f50:	000b3783          	ld	a5,0(s6)
ffffffffc0202f54:	779c                	ld	a5,40(a5)
ffffffffc0202f56:	9782                	jalr	a5
ffffffffc0202f58:	8a2a                	mv	s4,a0
ffffffffc0202f5a:	7d441463          	bne	s0,s4,ffffffffc0203722 <pmm_init+0xc52>
ffffffffc0202f5e:	0000a517          	auipc	a0,0xa
ffffffffc0202f62:	b3a50513          	addi	a0,a0,-1222 # ffffffffc020ca98 <default_pmm_manager+0x5f8>
ffffffffc0202f66:	a40fd0ef          	jal	ra,ffffffffc02001a6 <cprintf>
ffffffffc0202f6a:	100027f3          	csrr	a5,sstatus
ffffffffc0202f6e:	8b89                	andi	a5,a5,2
ffffffffc0202f70:	26079a63          	bnez	a5,ffffffffc02031e4 <pmm_init+0x714>
ffffffffc0202f74:	000b3783          	ld	a5,0(s6)
ffffffffc0202f78:	779c                	ld	a5,40(a5)
ffffffffc0202f7a:	9782                	jalr	a5
ffffffffc0202f7c:	8c2a                	mv	s8,a0
ffffffffc0202f7e:	6098                	ld	a4,0(s1)
ffffffffc0202f80:	c0200437          	lui	s0,0xc0200
ffffffffc0202f84:	7afd                	lui	s5,0xfffff
ffffffffc0202f86:	00c71793          	slli	a5,a4,0xc
ffffffffc0202f8a:	6a05                	lui	s4,0x1
ffffffffc0202f8c:	02f47c63          	bgeu	s0,a5,ffffffffc0202fc4 <pmm_init+0x4f4>
ffffffffc0202f90:	00c45793          	srli	a5,s0,0xc
ffffffffc0202f94:	00093503          	ld	a0,0(s2)
ffffffffc0202f98:	3ae7f763          	bgeu	a5,a4,ffffffffc0203346 <pmm_init+0x876>
ffffffffc0202f9c:	0009b583          	ld	a1,0(s3)
ffffffffc0202fa0:	4601                	li	a2,0
ffffffffc0202fa2:	95a2                	add	a1,a1,s0
ffffffffc0202fa4:	a80ff0ef          	jal	ra,ffffffffc0202224 <get_pte>
ffffffffc0202fa8:	36050f63          	beqz	a0,ffffffffc0203326 <pmm_init+0x856>
ffffffffc0202fac:	611c                	ld	a5,0(a0)
ffffffffc0202fae:	078a                	slli	a5,a5,0x2
ffffffffc0202fb0:	0157f7b3          	and	a5,a5,s5
ffffffffc0202fb4:	3a879663          	bne	a5,s0,ffffffffc0203360 <pmm_init+0x890>
ffffffffc0202fb8:	6098                	ld	a4,0(s1)
ffffffffc0202fba:	9452                	add	s0,s0,s4
ffffffffc0202fbc:	00c71793          	slli	a5,a4,0xc
ffffffffc0202fc0:	fcf468e3          	bltu	s0,a5,ffffffffc0202f90 <pmm_init+0x4c0>
ffffffffc0202fc4:	00093783          	ld	a5,0(s2)
ffffffffc0202fc8:	639c                	ld	a5,0(a5)
ffffffffc0202fca:	48079d63          	bnez	a5,ffffffffc0203464 <pmm_init+0x994>
ffffffffc0202fce:	100027f3          	csrr	a5,sstatus
ffffffffc0202fd2:	8b89                	andi	a5,a5,2
ffffffffc0202fd4:	26079463          	bnez	a5,ffffffffc020323c <pmm_init+0x76c>
ffffffffc0202fd8:	000b3783          	ld	a5,0(s6)
ffffffffc0202fdc:	4505                	li	a0,1
ffffffffc0202fde:	6f9c                	ld	a5,24(a5)
ffffffffc0202fe0:	9782                	jalr	a5
ffffffffc0202fe2:	8a2a                	mv	s4,a0
ffffffffc0202fe4:	00093503          	ld	a0,0(s2)
ffffffffc0202fe8:	4699                	li	a3,6
ffffffffc0202fea:	10000613          	li	a2,256
ffffffffc0202fee:	85d2                	mv	a1,s4
ffffffffc0202ff0:	9ebff0ef          	jal	ra,ffffffffc02029da <page_insert>
ffffffffc0202ff4:	4a051863          	bnez	a0,ffffffffc02034a4 <pmm_init+0x9d4>
ffffffffc0202ff8:	000a2703          	lw	a4,0(s4) # 1000 <_binary_bin_swap_img_size-0x6d00>
ffffffffc0202ffc:	4785                	li	a5,1
ffffffffc0202ffe:	48f71363          	bne	a4,a5,ffffffffc0203484 <pmm_init+0x9b4>
ffffffffc0203002:	00093503          	ld	a0,0(s2)
ffffffffc0203006:	6405                	lui	s0,0x1
ffffffffc0203008:	4699                	li	a3,6
ffffffffc020300a:	10040613          	addi	a2,s0,256 # 1100 <_binary_bin_swap_img_size-0x6c00>
ffffffffc020300e:	85d2                	mv	a1,s4
ffffffffc0203010:	9cbff0ef          	jal	ra,ffffffffc02029da <page_insert>
ffffffffc0203014:	38051863          	bnez	a0,ffffffffc02033a4 <pmm_init+0x8d4>
ffffffffc0203018:	000a2703          	lw	a4,0(s4)
ffffffffc020301c:	4789                	li	a5,2
ffffffffc020301e:	4ef71363          	bne	a4,a5,ffffffffc0203504 <pmm_init+0xa34>
ffffffffc0203022:	0000a597          	auipc	a1,0xa
ffffffffc0203026:	bbe58593          	addi	a1,a1,-1090 # ffffffffc020cbe0 <default_pmm_manager+0x740>
ffffffffc020302a:	10000513          	li	a0,256
ffffffffc020302e:	43a080ef          	jal	ra,ffffffffc020b468 <strcpy>
ffffffffc0203032:	10040593          	addi	a1,s0,256
ffffffffc0203036:	10000513          	li	a0,256
ffffffffc020303a:	440080ef          	jal	ra,ffffffffc020b47a <strcmp>
ffffffffc020303e:	4a051363          	bnez	a0,ffffffffc02034e4 <pmm_init+0xa14>
ffffffffc0203042:	000bb683          	ld	a3,0(s7)
ffffffffc0203046:	00080737          	lui	a4,0x80
ffffffffc020304a:	547d                	li	s0,-1
ffffffffc020304c:	40da06b3          	sub	a3,s4,a3
ffffffffc0203050:	8699                	srai	a3,a3,0x6
ffffffffc0203052:	609c                	ld	a5,0(s1)
ffffffffc0203054:	96ba                	add	a3,a3,a4
ffffffffc0203056:	8031                	srli	s0,s0,0xc
ffffffffc0203058:	0086f733          	and	a4,a3,s0
ffffffffc020305c:	06b2                	slli	a3,a3,0xc
ffffffffc020305e:	6ef77263          	bgeu	a4,a5,ffffffffc0203742 <pmm_init+0xc72>
ffffffffc0203062:	0009b783          	ld	a5,0(s3)
ffffffffc0203066:	10000513          	li	a0,256
ffffffffc020306a:	96be                	add	a3,a3,a5
ffffffffc020306c:	10068023          	sb	zero,256(a3)
ffffffffc0203070:	3c2080ef          	jal	ra,ffffffffc020b432 <strlen>
ffffffffc0203074:	44051863          	bnez	a0,ffffffffc02034c4 <pmm_init+0x9f4>
ffffffffc0203078:	00093a83          	ld	s5,0(s2)
ffffffffc020307c:	609c                	ld	a5,0(s1)
ffffffffc020307e:	000ab683          	ld	a3,0(s5) # fffffffffffff000 <end+0x3fd686f0>
ffffffffc0203082:	068a                	slli	a3,a3,0x2
ffffffffc0203084:	82b1                	srli	a3,a3,0xc
ffffffffc0203086:	2ef6fd63          	bgeu	a3,a5,ffffffffc0203380 <pmm_init+0x8b0>
ffffffffc020308a:	8c75                	and	s0,s0,a3
ffffffffc020308c:	06b2                	slli	a3,a3,0xc
ffffffffc020308e:	6af47a63          	bgeu	s0,a5,ffffffffc0203742 <pmm_init+0xc72>
ffffffffc0203092:	0009b403          	ld	s0,0(s3)
ffffffffc0203096:	9436                	add	s0,s0,a3
ffffffffc0203098:	100027f3          	csrr	a5,sstatus
ffffffffc020309c:	8b89                	andi	a5,a5,2
ffffffffc020309e:	1e079c63          	bnez	a5,ffffffffc0203296 <pmm_init+0x7c6>
ffffffffc02030a2:	000b3783          	ld	a5,0(s6)
ffffffffc02030a6:	4585                	li	a1,1
ffffffffc02030a8:	8552                	mv	a0,s4
ffffffffc02030aa:	739c                	ld	a5,32(a5)
ffffffffc02030ac:	9782                	jalr	a5
ffffffffc02030ae:	601c                	ld	a5,0(s0)
ffffffffc02030b0:	6098                	ld	a4,0(s1)
ffffffffc02030b2:	078a                	slli	a5,a5,0x2
ffffffffc02030b4:	83b1                	srli	a5,a5,0xc
ffffffffc02030b6:	2ce7f563          	bgeu	a5,a4,ffffffffc0203380 <pmm_init+0x8b0>
ffffffffc02030ba:	000bb503          	ld	a0,0(s7)
ffffffffc02030be:	fff80737          	lui	a4,0xfff80
ffffffffc02030c2:	97ba                	add	a5,a5,a4
ffffffffc02030c4:	079a                	slli	a5,a5,0x6
ffffffffc02030c6:	953e                	add	a0,a0,a5
ffffffffc02030c8:	100027f3          	csrr	a5,sstatus
ffffffffc02030cc:	8b89                	andi	a5,a5,2
ffffffffc02030ce:	1a079863          	bnez	a5,ffffffffc020327e <pmm_init+0x7ae>
ffffffffc02030d2:	000b3783          	ld	a5,0(s6)
ffffffffc02030d6:	4585                	li	a1,1
ffffffffc02030d8:	739c                	ld	a5,32(a5)
ffffffffc02030da:	9782                	jalr	a5
ffffffffc02030dc:	000ab783          	ld	a5,0(s5)
ffffffffc02030e0:	6098                	ld	a4,0(s1)
ffffffffc02030e2:	078a                	slli	a5,a5,0x2
ffffffffc02030e4:	83b1                	srli	a5,a5,0xc
ffffffffc02030e6:	28e7fd63          	bgeu	a5,a4,ffffffffc0203380 <pmm_init+0x8b0>
ffffffffc02030ea:	000bb503          	ld	a0,0(s7)
ffffffffc02030ee:	fff80737          	lui	a4,0xfff80
ffffffffc02030f2:	97ba                	add	a5,a5,a4
ffffffffc02030f4:	079a                	slli	a5,a5,0x6
ffffffffc02030f6:	953e                	add	a0,a0,a5
ffffffffc02030f8:	100027f3          	csrr	a5,sstatus
ffffffffc02030fc:	8b89                	andi	a5,a5,2
ffffffffc02030fe:	16079463          	bnez	a5,ffffffffc0203266 <pmm_init+0x796>
ffffffffc0203102:	000b3783          	ld	a5,0(s6)
ffffffffc0203106:	4585                	li	a1,1
ffffffffc0203108:	739c                	ld	a5,32(a5)
ffffffffc020310a:	9782                	jalr	a5
ffffffffc020310c:	00093783          	ld	a5,0(s2)
ffffffffc0203110:	0007b023          	sd	zero,0(a5)
ffffffffc0203114:	12000073          	sfence.vma
ffffffffc0203118:	100027f3          	csrr	a5,sstatus
ffffffffc020311c:	8b89                	andi	a5,a5,2
ffffffffc020311e:	12079a63          	bnez	a5,ffffffffc0203252 <pmm_init+0x782>
ffffffffc0203122:	000b3783          	ld	a5,0(s6)
ffffffffc0203126:	779c                	ld	a5,40(a5)
ffffffffc0203128:	9782                	jalr	a5
ffffffffc020312a:	842a                	mv	s0,a0
ffffffffc020312c:	488c1e63          	bne	s8,s0,ffffffffc02035c8 <pmm_init+0xaf8>
ffffffffc0203130:	0000a517          	auipc	a0,0xa
ffffffffc0203134:	b2850513          	addi	a0,a0,-1240 # ffffffffc020cc58 <default_pmm_manager+0x7b8>
ffffffffc0203138:	86efd0ef          	jal	ra,ffffffffc02001a6 <cprintf>
ffffffffc020313c:	7406                	ld	s0,96(sp)
ffffffffc020313e:	70a6                	ld	ra,104(sp)
ffffffffc0203140:	64e6                	ld	s1,88(sp)
ffffffffc0203142:	6946                	ld	s2,80(sp)
ffffffffc0203144:	69a6                	ld	s3,72(sp)
ffffffffc0203146:	6a06                	ld	s4,64(sp)
ffffffffc0203148:	7ae2                	ld	s5,56(sp)
ffffffffc020314a:	7b42                	ld	s6,48(sp)
ffffffffc020314c:	7ba2                	ld	s7,40(sp)
ffffffffc020314e:	7c02                	ld	s8,32(sp)
ffffffffc0203150:	6ce2                	ld	s9,24(sp)
ffffffffc0203152:	6165                	addi	sp,sp,112
ffffffffc0203154:	e17fe06f          	j	ffffffffc0201f6a <kmalloc_init>
ffffffffc0203158:	c80007b7          	lui	a5,0xc8000
ffffffffc020315c:	b411                	j	ffffffffc0202b60 <pmm_init+0x90>
ffffffffc020315e:	b15fd0ef          	jal	ra,ffffffffc0200c72 <intr_disable>
ffffffffc0203162:	000b3783          	ld	a5,0(s6)
ffffffffc0203166:	4505                	li	a0,1
ffffffffc0203168:	6f9c                	ld	a5,24(a5)
ffffffffc020316a:	9782                	jalr	a5
ffffffffc020316c:	8c2a                	mv	s8,a0
ffffffffc020316e:	afffd0ef          	jal	ra,ffffffffc0200c6c <intr_enable>
ffffffffc0203172:	b9a9                	j	ffffffffc0202dcc <pmm_init+0x2fc>
ffffffffc0203174:	afffd0ef          	jal	ra,ffffffffc0200c72 <intr_disable>
ffffffffc0203178:	000b3783          	ld	a5,0(s6)
ffffffffc020317c:	4505                	li	a0,1
ffffffffc020317e:	6f9c                	ld	a5,24(a5)
ffffffffc0203180:	9782                	jalr	a5
ffffffffc0203182:	8a2a                	mv	s4,a0
ffffffffc0203184:	ae9fd0ef          	jal	ra,ffffffffc0200c6c <intr_enable>
ffffffffc0203188:	b645                	j	ffffffffc0202d28 <pmm_init+0x258>
ffffffffc020318a:	ae9fd0ef          	jal	ra,ffffffffc0200c72 <intr_disable>
ffffffffc020318e:	000b3783          	ld	a5,0(s6)
ffffffffc0203192:	779c                	ld	a5,40(a5)
ffffffffc0203194:	9782                	jalr	a5
ffffffffc0203196:	842a                	mv	s0,a0
ffffffffc0203198:	ad5fd0ef          	jal	ra,ffffffffc0200c6c <intr_enable>
ffffffffc020319c:	b6b9                	j	ffffffffc0202cea <pmm_init+0x21a>
ffffffffc020319e:	ad5fd0ef          	jal	ra,ffffffffc0200c72 <intr_disable>
ffffffffc02031a2:	000b3783          	ld	a5,0(s6)
ffffffffc02031a6:	4505                	li	a0,1
ffffffffc02031a8:	6f9c                	ld	a5,24(a5)
ffffffffc02031aa:	9782                	jalr	a5
ffffffffc02031ac:	842a                	mv	s0,a0
ffffffffc02031ae:	abffd0ef          	jal	ra,ffffffffc0200c6c <intr_enable>
ffffffffc02031b2:	bc99                	j	ffffffffc0202c08 <pmm_init+0x138>
ffffffffc02031b4:	6705                	lui	a4,0x1
ffffffffc02031b6:	177d                	addi	a4,a4,-1
ffffffffc02031b8:	96ba                	add	a3,a3,a4
ffffffffc02031ba:	8ff5                	and	a5,a5,a3
ffffffffc02031bc:	00c7d713          	srli	a4,a5,0xc
ffffffffc02031c0:	1ca77063          	bgeu	a4,a0,ffffffffc0203380 <pmm_init+0x8b0>
ffffffffc02031c4:	000b3683          	ld	a3,0(s6)
ffffffffc02031c8:	fff80537          	lui	a0,0xfff80
ffffffffc02031cc:	972a                	add	a4,a4,a0
ffffffffc02031ce:	6a94                	ld	a3,16(a3)
ffffffffc02031d0:	8c1d                	sub	s0,s0,a5
ffffffffc02031d2:	00671513          	slli	a0,a4,0x6
ffffffffc02031d6:	00c45593          	srli	a1,s0,0xc
ffffffffc02031da:	9532                	add	a0,a0,a2
ffffffffc02031dc:	9682                	jalr	a3
ffffffffc02031de:	0009b583          	ld	a1,0(s3)
ffffffffc02031e2:	bac5                	j	ffffffffc0202bd2 <pmm_init+0x102>
ffffffffc02031e4:	a8ffd0ef          	jal	ra,ffffffffc0200c72 <intr_disable>
ffffffffc02031e8:	000b3783          	ld	a5,0(s6)
ffffffffc02031ec:	779c                	ld	a5,40(a5)
ffffffffc02031ee:	9782                	jalr	a5
ffffffffc02031f0:	8c2a                	mv	s8,a0
ffffffffc02031f2:	a7bfd0ef          	jal	ra,ffffffffc0200c6c <intr_enable>
ffffffffc02031f6:	b361                	j	ffffffffc0202f7e <pmm_init+0x4ae>
ffffffffc02031f8:	a7bfd0ef          	jal	ra,ffffffffc0200c72 <intr_disable>
ffffffffc02031fc:	000b3783          	ld	a5,0(s6)
ffffffffc0203200:	779c                	ld	a5,40(a5)
ffffffffc0203202:	9782                	jalr	a5
ffffffffc0203204:	8a2a                	mv	s4,a0
ffffffffc0203206:	a67fd0ef          	jal	ra,ffffffffc0200c6c <intr_enable>
ffffffffc020320a:	bb81                	j	ffffffffc0202f5a <pmm_init+0x48a>
ffffffffc020320c:	e42a                	sd	a0,8(sp)
ffffffffc020320e:	a65fd0ef          	jal	ra,ffffffffc0200c72 <intr_disable>
ffffffffc0203212:	000b3783          	ld	a5,0(s6)
ffffffffc0203216:	6522                	ld	a0,8(sp)
ffffffffc0203218:	4585                	li	a1,1
ffffffffc020321a:	739c                	ld	a5,32(a5)
ffffffffc020321c:	9782                	jalr	a5
ffffffffc020321e:	a4ffd0ef          	jal	ra,ffffffffc0200c6c <intr_enable>
ffffffffc0203222:	bb21                	j	ffffffffc0202f3a <pmm_init+0x46a>
ffffffffc0203224:	e42a                	sd	a0,8(sp)
ffffffffc0203226:	a4dfd0ef          	jal	ra,ffffffffc0200c72 <intr_disable>
ffffffffc020322a:	000b3783          	ld	a5,0(s6)
ffffffffc020322e:	6522                	ld	a0,8(sp)
ffffffffc0203230:	4585                	li	a1,1
ffffffffc0203232:	739c                	ld	a5,32(a5)
ffffffffc0203234:	9782                	jalr	a5
ffffffffc0203236:	a37fd0ef          	jal	ra,ffffffffc0200c6c <intr_enable>
ffffffffc020323a:	b9c1                	j	ffffffffc0202f0a <pmm_init+0x43a>
ffffffffc020323c:	a37fd0ef          	jal	ra,ffffffffc0200c72 <intr_disable>
ffffffffc0203240:	000b3783          	ld	a5,0(s6)
ffffffffc0203244:	4505                	li	a0,1
ffffffffc0203246:	6f9c                	ld	a5,24(a5)
ffffffffc0203248:	9782                	jalr	a5
ffffffffc020324a:	8a2a                	mv	s4,a0
ffffffffc020324c:	a21fd0ef          	jal	ra,ffffffffc0200c6c <intr_enable>
ffffffffc0203250:	bb51                	j	ffffffffc0202fe4 <pmm_init+0x514>
ffffffffc0203252:	a21fd0ef          	jal	ra,ffffffffc0200c72 <intr_disable>
ffffffffc0203256:	000b3783          	ld	a5,0(s6)
ffffffffc020325a:	779c                	ld	a5,40(a5)
ffffffffc020325c:	9782                	jalr	a5
ffffffffc020325e:	842a                	mv	s0,a0
ffffffffc0203260:	a0dfd0ef          	jal	ra,ffffffffc0200c6c <intr_enable>
ffffffffc0203264:	b5e1                	j	ffffffffc020312c <pmm_init+0x65c>
ffffffffc0203266:	e42a                	sd	a0,8(sp)
ffffffffc0203268:	a0bfd0ef          	jal	ra,ffffffffc0200c72 <intr_disable>
ffffffffc020326c:	000b3783          	ld	a5,0(s6)
ffffffffc0203270:	6522                	ld	a0,8(sp)
ffffffffc0203272:	4585                	li	a1,1
ffffffffc0203274:	739c                	ld	a5,32(a5)
ffffffffc0203276:	9782                	jalr	a5
ffffffffc0203278:	9f5fd0ef          	jal	ra,ffffffffc0200c6c <intr_enable>
ffffffffc020327c:	bd41                	j	ffffffffc020310c <pmm_init+0x63c>
ffffffffc020327e:	e42a                	sd	a0,8(sp)
ffffffffc0203280:	9f3fd0ef          	jal	ra,ffffffffc0200c72 <intr_disable>
ffffffffc0203284:	000b3783          	ld	a5,0(s6)
ffffffffc0203288:	6522                	ld	a0,8(sp)
ffffffffc020328a:	4585                	li	a1,1
ffffffffc020328c:	739c                	ld	a5,32(a5)
ffffffffc020328e:	9782                	jalr	a5
ffffffffc0203290:	9ddfd0ef          	jal	ra,ffffffffc0200c6c <intr_enable>
ffffffffc0203294:	b5a1                	j	ffffffffc02030dc <pmm_init+0x60c>
ffffffffc0203296:	9ddfd0ef          	jal	ra,ffffffffc0200c72 <intr_disable>
ffffffffc020329a:	000b3783          	ld	a5,0(s6)
ffffffffc020329e:	4585                	li	a1,1
ffffffffc02032a0:	8552                	mv	a0,s4
ffffffffc02032a2:	739c                	ld	a5,32(a5)
ffffffffc02032a4:	9782                	jalr	a5
ffffffffc02032a6:	9c7fd0ef          	jal	ra,ffffffffc0200c6c <intr_enable>
ffffffffc02032aa:	b511                	j	ffffffffc02030ae <pmm_init+0x5de>
ffffffffc02032ac:	00010417          	auipc	s0,0x10
ffffffffc02032b0:	d5440413          	addi	s0,s0,-684 # ffffffffc0213000 <boot_page_table_sv39>
ffffffffc02032b4:	00010797          	auipc	a5,0x10
ffffffffc02032b8:	d4c78793          	addi	a5,a5,-692 # ffffffffc0213000 <boot_page_table_sv39>
ffffffffc02032bc:	a0f41de3          	bne	s0,a5,ffffffffc0202cd6 <pmm_init+0x206>
ffffffffc02032c0:	4581                	li	a1,0
ffffffffc02032c2:	6605                	lui	a2,0x1
ffffffffc02032c4:	8522                	mv	a0,s0
ffffffffc02032c6:	20e080ef          	jal	ra,ffffffffc020b4d4 <memset>
ffffffffc02032ca:	0000d597          	auipc	a1,0xd
ffffffffc02032ce:	d3658593          	addi	a1,a1,-714 # ffffffffc0210000 <bootstackguard>
ffffffffc02032d2:	0000e797          	auipc	a5,0xe
ffffffffc02032d6:	d20786a3          	sb	zero,-723(a5) # ffffffffc0210fff <bootstackguard+0xfff>
ffffffffc02032da:	0000d797          	auipc	a5,0xd
ffffffffc02032de:	d2078323          	sb	zero,-730(a5) # ffffffffc0210000 <bootstackguard>
ffffffffc02032e2:	00093503          	ld	a0,0(s2)
ffffffffc02032e6:	2555ec63          	bltu	a1,s5,ffffffffc020353e <pmm_init+0xa6e>
ffffffffc02032ea:	0009b683          	ld	a3,0(s3)
ffffffffc02032ee:	4701                	li	a4,0
ffffffffc02032f0:	6605                	lui	a2,0x1
ffffffffc02032f2:	40d586b3          	sub	a3,a1,a3
ffffffffc02032f6:	956ff0ef          	jal	ra,ffffffffc020244c <boot_map_segment>
ffffffffc02032fa:	00093503          	ld	a0,0(s2)
ffffffffc02032fe:	23546363          	bltu	s0,s5,ffffffffc0203524 <pmm_init+0xa54>
ffffffffc0203302:	0009b683          	ld	a3,0(s3)
ffffffffc0203306:	4701                	li	a4,0
ffffffffc0203308:	6605                	lui	a2,0x1
ffffffffc020330a:	40d406b3          	sub	a3,s0,a3
ffffffffc020330e:	85a2                	mv	a1,s0
ffffffffc0203310:	93cff0ef          	jal	ra,ffffffffc020244c <boot_map_segment>
ffffffffc0203314:	12000073          	sfence.vma
ffffffffc0203318:	00009517          	auipc	a0,0x9
ffffffffc020331c:	45050513          	addi	a0,a0,1104 # ffffffffc020c768 <default_pmm_manager+0x2c8>
ffffffffc0203320:	e87fc0ef          	jal	ra,ffffffffc02001a6 <cprintf>
ffffffffc0203324:	ba4d                	j	ffffffffc0202cd6 <pmm_init+0x206>
ffffffffc0203326:	00009697          	auipc	a3,0x9
ffffffffc020332a:	79268693          	addi	a3,a3,1938 # ffffffffc020cab8 <default_pmm_manager+0x618>
ffffffffc020332e:	00008617          	auipc	a2,0x8
ffffffffc0203332:	68a60613          	addi	a2,a2,1674 # ffffffffc020b9b8 <commands+0x210>
ffffffffc0203336:	28d00593          	li	a1,653
ffffffffc020333a:	00009517          	auipc	a0,0x9
ffffffffc020333e:	2b650513          	addi	a0,a0,694 # ffffffffc020c5f0 <default_pmm_manager+0x150>
ffffffffc0203342:	95cfd0ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc0203346:	86a2                	mv	a3,s0
ffffffffc0203348:	00009617          	auipc	a2,0x9
ffffffffc020334c:	19060613          	addi	a2,a2,400 # ffffffffc020c4d8 <default_pmm_manager+0x38>
ffffffffc0203350:	28d00593          	li	a1,653
ffffffffc0203354:	00009517          	auipc	a0,0x9
ffffffffc0203358:	29c50513          	addi	a0,a0,668 # ffffffffc020c5f0 <default_pmm_manager+0x150>
ffffffffc020335c:	942fd0ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc0203360:	00009697          	auipc	a3,0x9
ffffffffc0203364:	79868693          	addi	a3,a3,1944 # ffffffffc020caf8 <default_pmm_manager+0x658>
ffffffffc0203368:	00008617          	auipc	a2,0x8
ffffffffc020336c:	65060613          	addi	a2,a2,1616 # ffffffffc020b9b8 <commands+0x210>
ffffffffc0203370:	28e00593          	li	a1,654
ffffffffc0203374:	00009517          	auipc	a0,0x9
ffffffffc0203378:	27c50513          	addi	a0,a0,636 # ffffffffc020c5f0 <default_pmm_manager+0x150>
ffffffffc020337c:	922fd0ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc0203380:	db5fe0ef          	jal	ra,ffffffffc0202134 <pa2page.part.0>
ffffffffc0203384:	00009697          	auipc	a3,0x9
ffffffffc0203388:	59c68693          	addi	a3,a3,1436 # ffffffffc020c920 <default_pmm_manager+0x480>
ffffffffc020338c:	00008617          	auipc	a2,0x8
ffffffffc0203390:	62c60613          	addi	a2,a2,1580 # ffffffffc020b9b8 <commands+0x210>
ffffffffc0203394:	26a00593          	li	a1,618
ffffffffc0203398:	00009517          	auipc	a0,0x9
ffffffffc020339c:	25850513          	addi	a0,a0,600 # ffffffffc020c5f0 <default_pmm_manager+0x150>
ffffffffc02033a0:	8fefd0ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc02033a4:	00009697          	auipc	a3,0x9
ffffffffc02033a8:	7dc68693          	addi	a3,a3,2012 # ffffffffc020cb80 <default_pmm_manager+0x6e0>
ffffffffc02033ac:	00008617          	auipc	a2,0x8
ffffffffc02033b0:	60c60613          	addi	a2,a2,1548 # ffffffffc020b9b8 <commands+0x210>
ffffffffc02033b4:	29700593          	li	a1,663
ffffffffc02033b8:	00009517          	auipc	a0,0x9
ffffffffc02033bc:	23850513          	addi	a0,a0,568 # ffffffffc020c5f0 <default_pmm_manager+0x150>
ffffffffc02033c0:	8defd0ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc02033c4:	00009697          	auipc	a3,0x9
ffffffffc02033c8:	67c68693          	addi	a3,a3,1660 # ffffffffc020ca40 <default_pmm_manager+0x5a0>
ffffffffc02033cc:	00008617          	auipc	a2,0x8
ffffffffc02033d0:	5ec60613          	addi	a2,a2,1516 # ffffffffc020b9b8 <commands+0x210>
ffffffffc02033d4:	27600593          	li	a1,630
ffffffffc02033d8:	00009517          	auipc	a0,0x9
ffffffffc02033dc:	21850513          	addi	a0,a0,536 # ffffffffc020c5f0 <default_pmm_manager+0x150>
ffffffffc02033e0:	8befd0ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc02033e4:	00009697          	auipc	a3,0x9
ffffffffc02033e8:	62c68693          	addi	a3,a3,1580 # ffffffffc020ca10 <default_pmm_manager+0x570>
ffffffffc02033ec:	00008617          	auipc	a2,0x8
ffffffffc02033f0:	5cc60613          	addi	a2,a2,1484 # ffffffffc020b9b8 <commands+0x210>
ffffffffc02033f4:	26c00593          	li	a1,620
ffffffffc02033f8:	00009517          	auipc	a0,0x9
ffffffffc02033fc:	1f850513          	addi	a0,a0,504 # ffffffffc020c5f0 <default_pmm_manager+0x150>
ffffffffc0203400:	89efd0ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc0203404:	00009697          	auipc	a3,0x9
ffffffffc0203408:	47c68693          	addi	a3,a3,1148 # ffffffffc020c880 <default_pmm_manager+0x3e0>
ffffffffc020340c:	00008617          	auipc	a2,0x8
ffffffffc0203410:	5ac60613          	addi	a2,a2,1452 # ffffffffc020b9b8 <commands+0x210>
ffffffffc0203414:	26b00593          	li	a1,619
ffffffffc0203418:	00009517          	auipc	a0,0x9
ffffffffc020341c:	1d850513          	addi	a0,a0,472 # ffffffffc020c5f0 <default_pmm_manager+0x150>
ffffffffc0203420:	87efd0ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc0203424:	00009697          	auipc	a3,0x9
ffffffffc0203428:	5d468693          	addi	a3,a3,1492 # ffffffffc020c9f8 <default_pmm_manager+0x558>
ffffffffc020342c:	00008617          	auipc	a2,0x8
ffffffffc0203430:	58c60613          	addi	a2,a2,1420 # ffffffffc020b9b8 <commands+0x210>
ffffffffc0203434:	27000593          	li	a1,624
ffffffffc0203438:	00009517          	auipc	a0,0x9
ffffffffc020343c:	1b850513          	addi	a0,a0,440 # ffffffffc020c5f0 <default_pmm_manager+0x150>
ffffffffc0203440:	85efd0ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc0203444:	00009697          	auipc	a3,0x9
ffffffffc0203448:	45468693          	addi	a3,a3,1108 # ffffffffc020c898 <default_pmm_manager+0x3f8>
ffffffffc020344c:	00008617          	auipc	a2,0x8
ffffffffc0203450:	56c60613          	addi	a2,a2,1388 # ffffffffc020b9b8 <commands+0x210>
ffffffffc0203454:	26f00593          	li	a1,623
ffffffffc0203458:	00009517          	auipc	a0,0x9
ffffffffc020345c:	19850513          	addi	a0,a0,408 # ffffffffc020c5f0 <default_pmm_manager+0x150>
ffffffffc0203460:	83efd0ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc0203464:	00009697          	auipc	a3,0x9
ffffffffc0203468:	6ac68693          	addi	a3,a3,1708 # ffffffffc020cb10 <default_pmm_manager+0x670>
ffffffffc020346c:	00008617          	auipc	a2,0x8
ffffffffc0203470:	54c60613          	addi	a2,a2,1356 # ffffffffc020b9b8 <commands+0x210>
ffffffffc0203474:	29100593          	li	a1,657
ffffffffc0203478:	00009517          	auipc	a0,0x9
ffffffffc020347c:	17850513          	addi	a0,a0,376 # ffffffffc020c5f0 <default_pmm_manager+0x150>
ffffffffc0203480:	81efd0ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc0203484:	00009697          	auipc	a3,0x9
ffffffffc0203488:	6e468693          	addi	a3,a3,1764 # ffffffffc020cb68 <default_pmm_manager+0x6c8>
ffffffffc020348c:	00008617          	auipc	a2,0x8
ffffffffc0203490:	52c60613          	addi	a2,a2,1324 # ffffffffc020b9b8 <commands+0x210>
ffffffffc0203494:	29600593          	li	a1,662
ffffffffc0203498:	00009517          	auipc	a0,0x9
ffffffffc020349c:	15850513          	addi	a0,a0,344 # ffffffffc020c5f0 <default_pmm_manager+0x150>
ffffffffc02034a0:	ffffc0ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc02034a4:	00009697          	auipc	a3,0x9
ffffffffc02034a8:	68468693          	addi	a3,a3,1668 # ffffffffc020cb28 <default_pmm_manager+0x688>
ffffffffc02034ac:	00008617          	auipc	a2,0x8
ffffffffc02034b0:	50c60613          	addi	a2,a2,1292 # ffffffffc020b9b8 <commands+0x210>
ffffffffc02034b4:	29500593          	li	a1,661
ffffffffc02034b8:	00009517          	auipc	a0,0x9
ffffffffc02034bc:	13850513          	addi	a0,a0,312 # ffffffffc020c5f0 <default_pmm_manager+0x150>
ffffffffc02034c0:	fdffc0ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc02034c4:	00009697          	auipc	a3,0x9
ffffffffc02034c8:	76c68693          	addi	a3,a3,1900 # ffffffffc020cc30 <default_pmm_manager+0x790>
ffffffffc02034cc:	00008617          	auipc	a2,0x8
ffffffffc02034d0:	4ec60613          	addi	a2,a2,1260 # ffffffffc020b9b8 <commands+0x210>
ffffffffc02034d4:	29f00593          	li	a1,671
ffffffffc02034d8:	00009517          	auipc	a0,0x9
ffffffffc02034dc:	11850513          	addi	a0,a0,280 # ffffffffc020c5f0 <default_pmm_manager+0x150>
ffffffffc02034e0:	fbffc0ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc02034e4:	00009697          	auipc	a3,0x9
ffffffffc02034e8:	71468693          	addi	a3,a3,1812 # ffffffffc020cbf8 <default_pmm_manager+0x758>
ffffffffc02034ec:	00008617          	auipc	a2,0x8
ffffffffc02034f0:	4cc60613          	addi	a2,a2,1228 # ffffffffc020b9b8 <commands+0x210>
ffffffffc02034f4:	29c00593          	li	a1,668
ffffffffc02034f8:	00009517          	auipc	a0,0x9
ffffffffc02034fc:	0f850513          	addi	a0,a0,248 # ffffffffc020c5f0 <default_pmm_manager+0x150>
ffffffffc0203500:	f9ffc0ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc0203504:	00009697          	auipc	a3,0x9
ffffffffc0203508:	6c468693          	addi	a3,a3,1732 # ffffffffc020cbc8 <default_pmm_manager+0x728>
ffffffffc020350c:	00008617          	auipc	a2,0x8
ffffffffc0203510:	4ac60613          	addi	a2,a2,1196 # ffffffffc020b9b8 <commands+0x210>
ffffffffc0203514:	29800593          	li	a1,664
ffffffffc0203518:	00009517          	auipc	a0,0x9
ffffffffc020351c:	0d850513          	addi	a0,a0,216 # ffffffffc020c5f0 <default_pmm_manager+0x150>
ffffffffc0203520:	f7ffc0ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc0203524:	86a2                	mv	a3,s0
ffffffffc0203526:	00009617          	auipc	a2,0x9
ffffffffc020352a:	05a60613          	addi	a2,a2,90 # ffffffffc020c580 <default_pmm_manager+0xe0>
ffffffffc020352e:	0dc00593          	li	a1,220
ffffffffc0203532:	00009517          	auipc	a0,0x9
ffffffffc0203536:	0be50513          	addi	a0,a0,190 # ffffffffc020c5f0 <default_pmm_manager+0x150>
ffffffffc020353a:	f65fc0ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc020353e:	86ae                	mv	a3,a1
ffffffffc0203540:	00009617          	auipc	a2,0x9
ffffffffc0203544:	04060613          	addi	a2,a2,64 # ffffffffc020c580 <default_pmm_manager+0xe0>
ffffffffc0203548:	0db00593          	li	a1,219
ffffffffc020354c:	00009517          	auipc	a0,0x9
ffffffffc0203550:	0a450513          	addi	a0,a0,164 # ffffffffc020c5f0 <default_pmm_manager+0x150>
ffffffffc0203554:	f4bfc0ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc0203558:	00009697          	auipc	a3,0x9
ffffffffc020355c:	25868693          	addi	a3,a3,600 # ffffffffc020c7b0 <default_pmm_manager+0x310>
ffffffffc0203560:	00008617          	auipc	a2,0x8
ffffffffc0203564:	45860613          	addi	a2,a2,1112 # ffffffffc020b9b8 <commands+0x210>
ffffffffc0203568:	24f00593          	li	a1,591
ffffffffc020356c:	00009517          	auipc	a0,0x9
ffffffffc0203570:	08450513          	addi	a0,a0,132 # ffffffffc020c5f0 <default_pmm_manager+0x150>
ffffffffc0203574:	f2bfc0ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc0203578:	00009697          	auipc	a3,0x9
ffffffffc020357c:	21868693          	addi	a3,a3,536 # ffffffffc020c790 <default_pmm_manager+0x2f0>
ffffffffc0203580:	00008617          	auipc	a2,0x8
ffffffffc0203584:	43860613          	addi	a2,a2,1080 # ffffffffc020b9b8 <commands+0x210>
ffffffffc0203588:	24e00593          	li	a1,590
ffffffffc020358c:	00009517          	auipc	a0,0x9
ffffffffc0203590:	06450513          	addi	a0,a0,100 # ffffffffc020c5f0 <default_pmm_manager+0x150>
ffffffffc0203594:	f0bfc0ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc0203598:	00009617          	auipc	a2,0x9
ffffffffc020359c:	18860613          	addi	a2,a2,392 # ffffffffc020c720 <default_pmm_manager+0x280>
ffffffffc02035a0:	0aa00593          	li	a1,170
ffffffffc02035a4:	00009517          	auipc	a0,0x9
ffffffffc02035a8:	04c50513          	addi	a0,a0,76 # ffffffffc020c5f0 <default_pmm_manager+0x150>
ffffffffc02035ac:	ef3fc0ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc02035b0:	00009617          	auipc	a2,0x9
ffffffffc02035b4:	0d860613          	addi	a2,a2,216 # ffffffffc020c688 <default_pmm_manager+0x1e8>
ffffffffc02035b8:	06500593          	li	a1,101
ffffffffc02035bc:	00009517          	auipc	a0,0x9
ffffffffc02035c0:	03450513          	addi	a0,a0,52 # ffffffffc020c5f0 <default_pmm_manager+0x150>
ffffffffc02035c4:	edbfc0ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc02035c8:	00009697          	auipc	a3,0x9
ffffffffc02035cc:	4a868693          	addi	a3,a3,1192 # ffffffffc020ca70 <default_pmm_manager+0x5d0>
ffffffffc02035d0:	00008617          	auipc	a2,0x8
ffffffffc02035d4:	3e860613          	addi	a2,a2,1000 # ffffffffc020b9b8 <commands+0x210>
ffffffffc02035d8:	2a800593          	li	a1,680
ffffffffc02035dc:	00009517          	auipc	a0,0x9
ffffffffc02035e0:	01450513          	addi	a0,a0,20 # ffffffffc020c5f0 <default_pmm_manager+0x150>
ffffffffc02035e4:	ebbfc0ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc02035e8:	00009697          	auipc	a3,0x9
ffffffffc02035ec:	2c868693          	addi	a3,a3,712 # ffffffffc020c8b0 <default_pmm_manager+0x410>
ffffffffc02035f0:	00008617          	auipc	a2,0x8
ffffffffc02035f4:	3c860613          	addi	a2,a2,968 # ffffffffc020b9b8 <commands+0x210>
ffffffffc02035f8:	25d00593          	li	a1,605
ffffffffc02035fc:	00009517          	auipc	a0,0x9
ffffffffc0203600:	ff450513          	addi	a0,a0,-12 # ffffffffc020c5f0 <default_pmm_manager+0x150>
ffffffffc0203604:	e9bfc0ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc0203608:	86d6                	mv	a3,s5
ffffffffc020360a:	00009617          	auipc	a2,0x9
ffffffffc020360e:	ece60613          	addi	a2,a2,-306 # ffffffffc020c4d8 <default_pmm_manager+0x38>
ffffffffc0203612:	25c00593          	li	a1,604
ffffffffc0203616:	00009517          	auipc	a0,0x9
ffffffffc020361a:	fda50513          	addi	a0,a0,-38 # ffffffffc020c5f0 <default_pmm_manager+0x150>
ffffffffc020361e:	e81fc0ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc0203622:	00009697          	auipc	a3,0x9
ffffffffc0203626:	3d668693          	addi	a3,a3,982 # ffffffffc020c9f8 <default_pmm_manager+0x558>
ffffffffc020362a:	00008617          	auipc	a2,0x8
ffffffffc020362e:	38e60613          	addi	a2,a2,910 # ffffffffc020b9b8 <commands+0x210>
ffffffffc0203632:	26900593          	li	a1,617
ffffffffc0203636:	00009517          	auipc	a0,0x9
ffffffffc020363a:	fba50513          	addi	a0,a0,-70 # ffffffffc020c5f0 <default_pmm_manager+0x150>
ffffffffc020363e:	e61fc0ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc0203642:	00009697          	auipc	a3,0x9
ffffffffc0203646:	39e68693          	addi	a3,a3,926 # ffffffffc020c9e0 <default_pmm_manager+0x540>
ffffffffc020364a:	00008617          	auipc	a2,0x8
ffffffffc020364e:	36e60613          	addi	a2,a2,878 # ffffffffc020b9b8 <commands+0x210>
ffffffffc0203652:	26800593          	li	a1,616
ffffffffc0203656:	00009517          	auipc	a0,0x9
ffffffffc020365a:	f9a50513          	addi	a0,a0,-102 # ffffffffc020c5f0 <default_pmm_manager+0x150>
ffffffffc020365e:	e41fc0ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc0203662:	00009697          	auipc	a3,0x9
ffffffffc0203666:	34e68693          	addi	a3,a3,846 # ffffffffc020c9b0 <default_pmm_manager+0x510>
ffffffffc020366a:	00008617          	auipc	a2,0x8
ffffffffc020366e:	34e60613          	addi	a2,a2,846 # ffffffffc020b9b8 <commands+0x210>
ffffffffc0203672:	26700593          	li	a1,615
ffffffffc0203676:	00009517          	auipc	a0,0x9
ffffffffc020367a:	f7a50513          	addi	a0,a0,-134 # ffffffffc020c5f0 <default_pmm_manager+0x150>
ffffffffc020367e:	e21fc0ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc0203682:	00009697          	auipc	a3,0x9
ffffffffc0203686:	31668693          	addi	a3,a3,790 # ffffffffc020c998 <default_pmm_manager+0x4f8>
ffffffffc020368a:	00008617          	auipc	a2,0x8
ffffffffc020368e:	32e60613          	addi	a2,a2,814 # ffffffffc020b9b8 <commands+0x210>
ffffffffc0203692:	26500593          	li	a1,613
ffffffffc0203696:	00009517          	auipc	a0,0x9
ffffffffc020369a:	f5a50513          	addi	a0,a0,-166 # ffffffffc020c5f0 <default_pmm_manager+0x150>
ffffffffc020369e:	e01fc0ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc02036a2:	00009697          	auipc	a3,0x9
ffffffffc02036a6:	2d668693          	addi	a3,a3,726 # ffffffffc020c978 <default_pmm_manager+0x4d8>
ffffffffc02036aa:	00008617          	auipc	a2,0x8
ffffffffc02036ae:	30e60613          	addi	a2,a2,782 # ffffffffc020b9b8 <commands+0x210>
ffffffffc02036b2:	26400593          	li	a1,612
ffffffffc02036b6:	00009517          	auipc	a0,0x9
ffffffffc02036ba:	f3a50513          	addi	a0,a0,-198 # ffffffffc020c5f0 <default_pmm_manager+0x150>
ffffffffc02036be:	de1fc0ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc02036c2:	00009697          	auipc	a3,0x9
ffffffffc02036c6:	2a668693          	addi	a3,a3,678 # ffffffffc020c968 <default_pmm_manager+0x4c8>
ffffffffc02036ca:	00008617          	auipc	a2,0x8
ffffffffc02036ce:	2ee60613          	addi	a2,a2,750 # ffffffffc020b9b8 <commands+0x210>
ffffffffc02036d2:	26300593          	li	a1,611
ffffffffc02036d6:	00009517          	auipc	a0,0x9
ffffffffc02036da:	f1a50513          	addi	a0,a0,-230 # ffffffffc020c5f0 <default_pmm_manager+0x150>
ffffffffc02036de:	dc1fc0ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc02036e2:	00009697          	auipc	a3,0x9
ffffffffc02036e6:	27668693          	addi	a3,a3,630 # ffffffffc020c958 <default_pmm_manager+0x4b8>
ffffffffc02036ea:	00008617          	auipc	a2,0x8
ffffffffc02036ee:	2ce60613          	addi	a2,a2,718 # ffffffffc020b9b8 <commands+0x210>
ffffffffc02036f2:	26200593          	li	a1,610
ffffffffc02036f6:	00009517          	auipc	a0,0x9
ffffffffc02036fa:	efa50513          	addi	a0,a0,-262 # ffffffffc020c5f0 <default_pmm_manager+0x150>
ffffffffc02036fe:	da1fc0ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc0203702:	00009697          	auipc	a3,0x9
ffffffffc0203706:	21e68693          	addi	a3,a3,542 # ffffffffc020c920 <default_pmm_manager+0x480>
ffffffffc020370a:	00008617          	auipc	a2,0x8
ffffffffc020370e:	2ae60613          	addi	a2,a2,686 # ffffffffc020b9b8 <commands+0x210>
ffffffffc0203712:	26100593          	li	a1,609
ffffffffc0203716:	00009517          	auipc	a0,0x9
ffffffffc020371a:	eda50513          	addi	a0,a0,-294 # ffffffffc020c5f0 <default_pmm_manager+0x150>
ffffffffc020371e:	d81fc0ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc0203722:	00009697          	auipc	a3,0x9
ffffffffc0203726:	34e68693          	addi	a3,a3,846 # ffffffffc020ca70 <default_pmm_manager+0x5d0>
ffffffffc020372a:	00008617          	auipc	a2,0x8
ffffffffc020372e:	28e60613          	addi	a2,a2,654 # ffffffffc020b9b8 <commands+0x210>
ffffffffc0203732:	27e00593          	li	a1,638
ffffffffc0203736:	00009517          	auipc	a0,0x9
ffffffffc020373a:	eba50513          	addi	a0,a0,-326 # ffffffffc020c5f0 <default_pmm_manager+0x150>
ffffffffc020373e:	d61fc0ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc0203742:	00009617          	auipc	a2,0x9
ffffffffc0203746:	d9660613          	addi	a2,a2,-618 # ffffffffc020c4d8 <default_pmm_manager+0x38>
ffffffffc020374a:	07100593          	li	a1,113
ffffffffc020374e:	00009517          	auipc	a0,0x9
ffffffffc0203752:	db250513          	addi	a0,a0,-590 # ffffffffc020c500 <default_pmm_manager+0x60>
ffffffffc0203756:	d49fc0ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc020375a:	86a2                	mv	a3,s0
ffffffffc020375c:	00009617          	auipc	a2,0x9
ffffffffc0203760:	e2460613          	addi	a2,a2,-476 # ffffffffc020c580 <default_pmm_manager+0xe0>
ffffffffc0203764:	0ca00593          	li	a1,202
ffffffffc0203768:	00009517          	auipc	a0,0x9
ffffffffc020376c:	e8850513          	addi	a0,a0,-376 # ffffffffc020c5f0 <default_pmm_manager+0x150>
ffffffffc0203770:	d2ffc0ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc0203774:	00009617          	auipc	a2,0x9
ffffffffc0203778:	e0c60613          	addi	a2,a2,-500 # ffffffffc020c580 <default_pmm_manager+0xe0>
ffffffffc020377c:	08100593          	li	a1,129
ffffffffc0203780:	00009517          	auipc	a0,0x9
ffffffffc0203784:	e7050513          	addi	a0,a0,-400 # ffffffffc020c5f0 <default_pmm_manager+0x150>
ffffffffc0203788:	d17fc0ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc020378c:	00009697          	auipc	a3,0x9
ffffffffc0203790:	15468693          	addi	a3,a3,340 # ffffffffc020c8e0 <default_pmm_manager+0x440>
ffffffffc0203794:	00008617          	auipc	a2,0x8
ffffffffc0203798:	22460613          	addi	a2,a2,548 # ffffffffc020b9b8 <commands+0x210>
ffffffffc020379c:	26000593          	li	a1,608
ffffffffc02037a0:	00009517          	auipc	a0,0x9
ffffffffc02037a4:	e5050513          	addi	a0,a0,-432 # ffffffffc020c5f0 <default_pmm_manager+0x150>
ffffffffc02037a8:	cf7fc0ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc02037ac:	00009697          	auipc	a3,0x9
ffffffffc02037b0:	07468693          	addi	a3,a3,116 # ffffffffc020c820 <default_pmm_manager+0x380>
ffffffffc02037b4:	00008617          	auipc	a2,0x8
ffffffffc02037b8:	20460613          	addi	a2,a2,516 # ffffffffc020b9b8 <commands+0x210>
ffffffffc02037bc:	25400593          	li	a1,596
ffffffffc02037c0:	00009517          	auipc	a0,0x9
ffffffffc02037c4:	e3050513          	addi	a0,a0,-464 # ffffffffc020c5f0 <default_pmm_manager+0x150>
ffffffffc02037c8:	cd7fc0ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc02037cc:	985fe0ef          	jal	ra,ffffffffc0202150 <pte2page.part.0>
ffffffffc02037d0:	00009697          	auipc	a3,0x9
ffffffffc02037d4:	08068693          	addi	a3,a3,128 # ffffffffc020c850 <default_pmm_manager+0x3b0>
ffffffffc02037d8:	00008617          	auipc	a2,0x8
ffffffffc02037dc:	1e060613          	addi	a2,a2,480 # ffffffffc020b9b8 <commands+0x210>
ffffffffc02037e0:	25700593          	li	a1,599
ffffffffc02037e4:	00009517          	auipc	a0,0x9
ffffffffc02037e8:	e0c50513          	addi	a0,a0,-500 # ffffffffc020c5f0 <default_pmm_manager+0x150>
ffffffffc02037ec:	cb3fc0ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc02037f0:	00009697          	auipc	a3,0x9
ffffffffc02037f4:	00068693          	mv	a3,a3
ffffffffc02037f8:	00008617          	auipc	a2,0x8
ffffffffc02037fc:	1c060613          	addi	a2,a2,448 # ffffffffc020b9b8 <commands+0x210>
ffffffffc0203800:	25000593          	li	a1,592
ffffffffc0203804:	00009517          	auipc	a0,0x9
ffffffffc0203808:	dec50513          	addi	a0,a0,-532 # ffffffffc020c5f0 <default_pmm_manager+0x150>
ffffffffc020380c:	c93fc0ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc0203810:	00009697          	auipc	a3,0x9
ffffffffc0203814:	07068693          	addi	a3,a3,112 # ffffffffc020c880 <default_pmm_manager+0x3e0>
ffffffffc0203818:	00008617          	auipc	a2,0x8
ffffffffc020381c:	1a060613          	addi	a2,a2,416 # ffffffffc020b9b8 <commands+0x210>
ffffffffc0203820:	25800593          	li	a1,600
ffffffffc0203824:	00009517          	auipc	a0,0x9
ffffffffc0203828:	dcc50513          	addi	a0,a0,-564 # ffffffffc020c5f0 <default_pmm_manager+0x150>
ffffffffc020382c:	c73fc0ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc0203830:	00009617          	auipc	a2,0x9
ffffffffc0203834:	ca860613          	addi	a2,a2,-856 # ffffffffc020c4d8 <default_pmm_manager+0x38>
ffffffffc0203838:	25b00593          	li	a1,603
ffffffffc020383c:	00009517          	auipc	a0,0x9
ffffffffc0203840:	db450513          	addi	a0,a0,-588 # ffffffffc020c5f0 <default_pmm_manager+0x150>
ffffffffc0203844:	c5bfc0ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc0203848:	00009697          	auipc	a3,0x9
ffffffffc020384c:	05068693          	addi	a3,a3,80 # ffffffffc020c898 <default_pmm_manager+0x3f8>
ffffffffc0203850:	00008617          	auipc	a2,0x8
ffffffffc0203854:	16860613          	addi	a2,a2,360 # ffffffffc020b9b8 <commands+0x210>
ffffffffc0203858:	25900593          	li	a1,601
ffffffffc020385c:	00009517          	auipc	a0,0x9
ffffffffc0203860:	d9450513          	addi	a0,a0,-620 # ffffffffc020c5f0 <default_pmm_manager+0x150>
ffffffffc0203864:	c3bfc0ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc0203868:	86ca                	mv	a3,s2
ffffffffc020386a:	00009617          	auipc	a2,0x9
ffffffffc020386e:	d1660613          	addi	a2,a2,-746 # ffffffffc020c580 <default_pmm_manager+0xe0>
ffffffffc0203872:	0c600593          	li	a1,198
ffffffffc0203876:	00009517          	auipc	a0,0x9
ffffffffc020387a:	d7a50513          	addi	a0,a0,-646 # ffffffffc020c5f0 <default_pmm_manager+0x150>
ffffffffc020387e:	c21fc0ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc0203882:	00009697          	auipc	a3,0x9
ffffffffc0203886:	17668693          	addi	a3,a3,374 # ffffffffc020c9f8 <default_pmm_manager+0x558>
ffffffffc020388a:	00008617          	auipc	a2,0x8
ffffffffc020388e:	12e60613          	addi	a2,a2,302 # ffffffffc020b9b8 <commands+0x210>
ffffffffc0203892:	27400593          	li	a1,628
ffffffffc0203896:	00009517          	auipc	a0,0x9
ffffffffc020389a:	d5a50513          	addi	a0,a0,-678 # ffffffffc020c5f0 <default_pmm_manager+0x150>
ffffffffc020389e:	c01fc0ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc02038a2:	00009697          	auipc	a3,0x9
ffffffffc02038a6:	18668693          	addi	a3,a3,390 # ffffffffc020ca28 <default_pmm_manager+0x588>
ffffffffc02038aa:	00008617          	auipc	a2,0x8
ffffffffc02038ae:	10e60613          	addi	a2,a2,270 # ffffffffc020b9b8 <commands+0x210>
ffffffffc02038b2:	27300593          	li	a1,627
ffffffffc02038b6:	00009517          	auipc	a0,0x9
ffffffffc02038ba:	d3a50513          	addi	a0,a0,-710 # ffffffffc020c5f0 <default_pmm_manager+0x150>
ffffffffc02038be:	be1fc0ef          	jal	ra,ffffffffc020049e <__panic>

ffffffffc02038c2 <copy_range>:
ffffffffc02038c2:	7159                	addi	sp,sp,-112
ffffffffc02038c4:	00d667b3          	or	a5,a2,a3
ffffffffc02038c8:	f486                	sd	ra,104(sp)
ffffffffc02038ca:	f0a2                	sd	s0,96(sp)
ffffffffc02038cc:	eca6                	sd	s1,88(sp)
ffffffffc02038ce:	e8ca                	sd	s2,80(sp)
ffffffffc02038d0:	e4ce                	sd	s3,72(sp)
ffffffffc02038d2:	e0d2                	sd	s4,64(sp)
ffffffffc02038d4:	fc56                	sd	s5,56(sp)
ffffffffc02038d6:	f85a                	sd	s6,48(sp)
ffffffffc02038d8:	f45e                	sd	s7,40(sp)
ffffffffc02038da:	f062                	sd	s8,32(sp)
ffffffffc02038dc:	ec66                	sd	s9,24(sp)
ffffffffc02038de:	e86a                	sd	s10,16(sp)
ffffffffc02038e0:	e46e                	sd	s11,8(sp)
ffffffffc02038e2:	17d2                	slli	a5,a5,0x34
ffffffffc02038e4:	20079f63          	bnez	a5,ffffffffc0203b02 <copy_range+0x240>
ffffffffc02038e8:	002007b7          	lui	a5,0x200
ffffffffc02038ec:	8432                	mv	s0,a2
ffffffffc02038ee:	1af66263          	bltu	a2,a5,ffffffffc0203a92 <copy_range+0x1d0>
ffffffffc02038f2:	8936                	mv	s2,a3
ffffffffc02038f4:	18d67f63          	bgeu	a2,a3,ffffffffc0203a92 <copy_range+0x1d0>
ffffffffc02038f8:	4785                	li	a5,1
ffffffffc02038fa:	07fe                	slli	a5,a5,0x1f
ffffffffc02038fc:	18d7eb63          	bltu	a5,a3,ffffffffc0203a92 <copy_range+0x1d0>
ffffffffc0203900:	5b7d                	li	s6,-1
ffffffffc0203902:	8aaa                	mv	s5,a0
ffffffffc0203904:	89ae                	mv	s3,a1
ffffffffc0203906:	6a05                	lui	s4,0x1
ffffffffc0203908:	00093c17          	auipc	s8,0x93
ffffffffc020390c:	f98c0c13          	addi	s8,s8,-104 # ffffffffc02968a0 <npage>
ffffffffc0203910:	00093b97          	auipc	s7,0x93
ffffffffc0203914:	f98b8b93          	addi	s7,s7,-104 # ffffffffc02968a8 <pages>
ffffffffc0203918:	00cb5b13          	srli	s6,s6,0xc
ffffffffc020391c:	00093c97          	auipc	s9,0x93
ffffffffc0203920:	f94c8c93          	addi	s9,s9,-108 # ffffffffc02968b0 <pmm_manager>
ffffffffc0203924:	4601                	li	a2,0
ffffffffc0203926:	85a2                	mv	a1,s0
ffffffffc0203928:	854e                	mv	a0,s3
ffffffffc020392a:	8fbfe0ef          	jal	ra,ffffffffc0202224 <get_pte>
ffffffffc020392e:	84aa                	mv	s1,a0
ffffffffc0203930:	0e050c63          	beqz	a0,ffffffffc0203a28 <copy_range+0x166>
ffffffffc0203934:	611c                	ld	a5,0(a0)
ffffffffc0203936:	8b85                	andi	a5,a5,1
ffffffffc0203938:	e785                	bnez	a5,ffffffffc0203960 <copy_range+0x9e>
ffffffffc020393a:	9452                	add	s0,s0,s4
ffffffffc020393c:	ff2464e3          	bltu	s0,s2,ffffffffc0203924 <copy_range+0x62>
ffffffffc0203940:	4501                	li	a0,0
ffffffffc0203942:	70a6                	ld	ra,104(sp)
ffffffffc0203944:	7406                	ld	s0,96(sp)
ffffffffc0203946:	64e6                	ld	s1,88(sp)
ffffffffc0203948:	6946                	ld	s2,80(sp)
ffffffffc020394a:	69a6                	ld	s3,72(sp)
ffffffffc020394c:	6a06                	ld	s4,64(sp)
ffffffffc020394e:	7ae2                	ld	s5,56(sp)
ffffffffc0203950:	7b42                	ld	s6,48(sp)
ffffffffc0203952:	7ba2                	ld	s7,40(sp)
ffffffffc0203954:	7c02                	ld	s8,32(sp)
ffffffffc0203956:	6ce2                	ld	s9,24(sp)
ffffffffc0203958:	6d42                	ld	s10,16(sp)
ffffffffc020395a:	6da2                	ld	s11,8(sp)
ffffffffc020395c:	6165                	addi	sp,sp,112
ffffffffc020395e:	8082                	ret
ffffffffc0203960:	4605                	li	a2,1
ffffffffc0203962:	85a2                	mv	a1,s0
ffffffffc0203964:	8556                	mv	a0,s5
ffffffffc0203966:	8bffe0ef          	jal	ra,ffffffffc0202224 <get_pte>
ffffffffc020396a:	c56d                	beqz	a0,ffffffffc0203a54 <copy_range+0x192>
ffffffffc020396c:	609c                	ld	a5,0(s1)
ffffffffc020396e:	0017f713          	andi	a4,a5,1
ffffffffc0203972:	01f7f493          	andi	s1,a5,31
ffffffffc0203976:	16070a63          	beqz	a4,ffffffffc0203aea <copy_range+0x228>
ffffffffc020397a:	000c3683          	ld	a3,0(s8)
ffffffffc020397e:	078a                	slli	a5,a5,0x2
ffffffffc0203980:	00c7d713          	srli	a4,a5,0xc
ffffffffc0203984:	14d77763          	bgeu	a4,a3,ffffffffc0203ad2 <copy_range+0x210>
ffffffffc0203988:	000bb783          	ld	a5,0(s7)
ffffffffc020398c:	fff806b7          	lui	a3,0xfff80
ffffffffc0203990:	9736                	add	a4,a4,a3
ffffffffc0203992:	071a                	slli	a4,a4,0x6
ffffffffc0203994:	00e78db3          	add	s11,a5,a4
ffffffffc0203998:	10002773          	csrr	a4,sstatus
ffffffffc020399c:	8b09                	andi	a4,a4,2
ffffffffc020399e:	e345                	bnez	a4,ffffffffc0203a3e <copy_range+0x17c>
ffffffffc02039a0:	000cb703          	ld	a4,0(s9)
ffffffffc02039a4:	4505                	li	a0,1
ffffffffc02039a6:	6f18                	ld	a4,24(a4)
ffffffffc02039a8:	9702                	jalr	a4
ffffffffc02039aa:	8d2a                	mv	s10,a0
ffffffffc02039ac:	0c0d8363          	beqz	s11,ffffffffc0203a72 <copy_range+0x1b0>
ffffffffc02039b0:	100d0163          	beqz	s10,ffffffffc0203ab2 <copy_range+0x1f0>
ffffffffc02039b4:	000bb703          	ld	a4,0(s7)
ffffffffc02039b8:	000805b7          	lui	a1,0x80
ffffffffc02039bc:	000c3603          	ld	a2,0(s8)
ffffffffc02039c0:	40ed86b3          	sub	a3,s11,a4
ffffffffc02039c4:	8699                	srai	a3,a3,0x6
ffffffffc02039c6:	96ae                	add	a3,a3,a1
ffffffffc02039c8:	0166f7b3          	and	a5,a3,s6
ffffffffc02039cc:	06b2                	slli	a3,a3,0xc
ffffffffc02039ce:	08c7f663          	bgeu	a5,a2,ffffffffc0203a5a <copy_range+0x198>
ffffffffc02039d2:	40ed07b3          	sub	a5,s10,a4
ffffffffc02039d6:	00093717          	auipc	a4,0x93
ffffffffc02039da:	ee270713          	addi	a4,a4,-286 # ffffffffc02968b8 <va_pa_offset>
ffffffffc02039de:	6308                	ld	a0,0(a4)
ffffffffc02039e0:	8799                	srai	a5,a5,0x6
ffffffffc02039e2:	97ae                	add	a5,a5,a1
ffffffffc02039e4:	0167f733          	and	a4,a5,s6
ffffffffc02039e8:	00a685b3          	add	a1,a3,a0
ffffffffc02039ec:	07b2                	slli	a5,a5,0xc
ffffffffc02039ee:	06c77563          	bgeu	a4,a2,ffffffffc0203a58 <copy_range+0x196>
ffffffffc02039f2:	6605                	lui	a2,0x1
ffffffffc02039f4:	953e                	add	a0,a0,a5
ffffffffc02039f6:	331070ef          	jal	ra,ffffffffc020b526 <memcpy>
ffffffffc02039fa:	86a6                	mv	a3,s1
ffffffffc02039fc:	8622                	mv	a2,s0
ffffffffc02039fe:	85ea                	mv	a1,s10
ffffffffc0203a00:	8556                	mv	a0,s5
ffffffffc0203a02:	fd9fe0ef          	jal	ra,ffffffffc02029da <page_insert>
ffffffffc0203a06:	d915                	beqz	a0,ffffffffc020393a <copy_range+0x78>
ffffffffc0203a08:	00009697          	auipc	a3,0x9
ffffffffc0203a0c:	29068693          	addi	a3,a3,656 # ffffffffc020cc98 <default_pmm_manager+0x7f8>
ffffffffc0203a10:	00008617          	auipc	a2,0x8
ffffffffc0203a14:	fa860613          	addi	a2,a2,-88 # ffffffffc020b9b8 <commands+0x210>
ffffffffc0203a18:	1ec00593          	li	a1,492
ffffffffc0203a1c:	00009517          	auipc	a0,0x9
ffffffffc0203a20:	bd450513          	addi	a0,a0,-1068 # ffffffffc020c5f0 <default_pmm_manager+0x150>
ffffffffc0203a24:	a7bfc0ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc0203a28:	00200637          	lui	a2,0x200
ffffffffc0203a2c:	9432                	add	s0,s0,a2
ffffffffc0203a2e:	ffe00637          	lui	a2,0xffe00
ffffffffc0203a32:	8c71                	and	s0,s0,a2
ffffffffc0203a34:	f00406e3          	beqz	s0,ffffffffc0203940 <copy_range+0x7e>
ffffffffc0203a38:	ef2466e3          	bltu	s0,s2,ffffffffc0203924 <copy_range+0x62>
ffffffffc0203a3c:	b711                	j	ffffffffc0203940 <copy_range+0x7e>
ffffffffc0203a3e:	a34fd0ef          	jal	ra,ffffffffc0200c72 <intr_disable>
ffffffffc0203a42:	000cb703          	ld	a4,0(s9)
ffffffffc0203a46:	4505                	li	a0,1
ffffffffc0203a48:	6f18                	ld	a4,24(a4)
ffffffffc0203a4a:	9702                	jalr	a4
ffffffffc0203a4c:	8d2a                	mv	s10,a0
ffffffffc0203a4e:	a1efd0ef          	jal	ra,ffffffffc0200c6c <intr_enable>
ffffffffc0203a52:	bfa9                	j	ffffffffc02039ac <copy_range+0xea>
ffffffffc0203a54:	5571                	li	a0,-4
ffffffffc0203a56:	b5f5                	j	ffffffffc0203942 <copy_range+0x80>
ffffffffc0203a58:	86be                	mv	a3,a5
ffffffffc0203a5a:	00009617          	auipc	a2,0x9
ffffffffc0203a5e:	a7e60613          	addi	a2,a2,-1410 # ffffffffc020c4d8 <default_pmm_manager+0x38>
ffffffffc0203a62:	07100593          	li	a1,113
ffffffffc0203a66:	00009517          	auipc	a0,0x9
ffffffffc0203a6a:	a9a50513          	addi	a0,a0,-1382 # ffffffffc020c500 <default_pmm_manager+0x60>
ffffffffc0203a6e:	a31fc0ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc0203a72:	00009697          	auipc	a3,0x9
ffffffffc0203a76:	20668693          	addi	a3,a3,518 # ffffffffc020cc78 <default_pmm_manager+0x7d8>
ffffffffc0203a7a:	00008617          	auipc	a2,0x8
ffffffffc0203a7e:	f3e60613          	addi	a2,a2,-194 # ffffffffc020b9b8 <commands+0x210>
ffffffffc0203a82:	1ce00593          	li	a1,462
ffffffffc0203a86:	00009517          	auipc	a0,0x9
ffffffffc0203a8a:	b6a50513          	addi	a0,a0,-1174 # ffffffffc020c5f0 <default_pmm_manager+0x150>
ffffffffc0203a8e:	a11fc0ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc0203a92:	00009697          	auipc	a3,0x9
ffffffffc0203a96:	bc668693          	addi	a3,a3,-1082 # ffffffffc020c658 <default_pmm_manager+0x1b8>
ffffffffc0203a9a:	00008617          	auipc	a2,0x8
ffffffffc0203a9e:	f1e60613          	addi	a2,a2,-226 # ffffffffc020b9b8 <commands+0x210>
ffffffffc0203aa2:	1b600593          	li	a1,438
ffffffffc0203aa6:	00009517          	auipc	a0,0x9
ffffffffc0203aaa:	b4a50513          	addi	a0,a0,-1206 # ffffffffc020c5f0 <default_pmm_manager+0x150>
ffffffffc0203aae:	9f1fc0ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc0203ab2:	00009697          	auipc	a3,0x9
ffffffffc0203ab6:	1d668693          	addi	a3,a3,470 # ffffffffc020cc88 <default_pmm_manager+0x7e8>
ffffffffc0203aba:	00008617          	auipc	a2,0x8
ffffffffc0203abe:	efe60613          	addi	a2,a2,-258 # ffffffffc020b9b8 <commands+0x210>
ffffffffc0203ac2:	1cf00593          	li	a1,463
ffffffffc0203ac6:	00009517          	auipc	a0,0x9
ffffffffc0203aca:	b2a50513          	addi	a0,a0,-1238 # ffffffffc020c5f0 <default_pmm_manager+0x150>
ffffffffc0203ace:	9d1fc0ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc0203ad2:	00009617          	auipc	a2,0x9
ffffffffc0203ad6:	ad660613          	addi	a2,a2,-1322 # ffffffffc020c5a8 <default_pmm_manager+0x108>
ffffffffc0203ada:	06900593          	li	a1,105
ffffffffc0203ade:	00009517          	auipc	a0,0x9
ffffffffc0203ae2:	a2250513          	addi	a0,a0,-1502 # ffffffffc020c500 <default_pmm_manager+0x60>
ffffffffc0203ae6:	9b9fc0ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc0203aea:	00009617          	auipc	a2,0x9
ffffffffc0203aee:	ade60613          	addi	a2,a2,-1314 # ffffffffc020c5c8 <default_pmm_manager+0x128>
ffffffffc0203af2:	07f00593          	li	a1,127
ffffffffc0203af6:	00009517          	auipc	a0,0x9
ffffffffc0203afa:	a0a50513          	addi	a0,a0,-1526 # ffffffffc020c500 <default_pmm_manager+0x60>
ffffffffc0203afe:	9a1fc0ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc0203b02:	00009697          	auipc	a3,0x9
ffffffffc0203b06:	b2668693          	addi	a3,a3,-1242 # ffffffffc020c628 <default_pmm_manager+0x188>
ffffffffc0203b0a:	00008617          	auipc	a2,0x8
ffffffffc0203b0e:	eae60613          	addi	a2,a2,-338 # ffffffffc020b9b8 <commands+0x210>
ffffffffc0203b12:	1b500593          	li	a1,437
ffffffffc0203b16:	00009517          	auipc	a0,0x9
ffffffffc0203b1a:	ada50513          	addi	a0,a0,-1318 # ffffffffc020c5f0 <default_pmm_manager+0x150>
ffffffffc0203b1e:	981fc0ef          	jal	ra,ffffffffc020049e <__panic>

ffffffffc0203b22 <pgdir_alloc_page>:
ffffffffc0203b22:	7179                	addi	sp,sp,-48
ffffffffc0203b24:	ec26                	sd	s1,24(sp)
ffffffffc0203b26:	e84a                	sd	s2,16(sp)
ffffffffc0203b28:	e052                	sd	s4,0(sp)
ffffffffc0203b2a:	f406                	sd	ra,40(sp)
ffffffffc0203b2c:	f022                	sd	s0,32(sp)
ffffffffc0203b2e:	e44e                	sd	s3,8(sp)
ffffffffc0203b30:	8a2a                	mv	s4,a0
ffffffffc0203b32:	84ae                	mv	s1,a1
ffffffffc0203b34:	8932                	mv	s2,a2
ffffffffc0203b36:	100027f3          	csrr	a5,sstatus
ffffffffc0203b3a:	8b89                	andi	a5,a5,2
ffffffffc0203b3c:	00093997          	auipc	s3,0x93
ffffffffc0203b40:	d7498993          	addi	s3,s3,-652 # ffffffffc02968b0 <pmm_manager>
ffffffffc0203b44:	ef8d                	bnez	a5,ffffffffc0203b7e <pgdir_alloc_page+0x5c>
ffffffffc0203b46:	0009b783          	ld	a5,0(s3)
ffffffffc0203b4a:	4505                	li	a0,1
ffffffffc0203b4c:	6f9c                	ld	a5,24(a5)
ffffffffc0203b4e:	9782                	jalr	a5
ffffffffc0203b50:	842a                	mv	s0,a0
ffffffffc0203b52:	cc09                	beqz	s0,ffffffffc0203b6c <pgdir_alloc_page+0x4a>
ffffffffc0203b54:	86ca                	mv	a3,s2
ffffffffc0203b56:	8626                	mv	a2,s1
ffffffffc0203b58:	85a2                	mv	a1,s0
ffffffffc0203b5a:	8552                	mv	a0,s4
ffffffffc0203b5c:	e7ffe0ef          	jal	ra,ffffffffc02029da <page_insert>
ffffffffc0203b60:	e915                	bnez	a0,ffffffffc0203b94 <pgdir_alloc_page+0x72>
ffffffffc0203b62:	4018                	lw	a4,0(s0)
ffffffffc0203b64:	fc04                	sd	s1,56(s0)
ffffffffc0203b66:	4785                	li	a5,1
ffffffffc0203b68:	04f71e63          	bne	a4,a5,ffffffffc0203bc4 <pgdir_alloc_page+0xa2>
ffffffffc0203b6c:	70a2                	ld	ra,40(sp)
ffffffffc0203b6e:	8522                	mv	a0,s0
ffffffffc0203b70:	7402                	ld	s0,32(sp)
ffffffffc0203b72:	64e2                	ld	s1,24(sp)
ffffffffc0203b74:	6942                	ld	s2,16(sp)
ffffffffc0203b76:	69a2                	ld	s3,8(sp)
ffffffffc0203b78:	6a02                	ld	s4,0(sp)
ffffffffc0203b7a:	6145                	addi	sp,sp,48
ffffffffc0203b7c:	8082                	ret
ffffffffc0203b7e:	8f4fd0ef          	jal	ra,ffffffffc0200c72 <intr_disable>
ffffffffc0203b82:	0009b783          	ld	a5,0(s3)
ffffffffc0203b86:	4505                	li	a0,1
ffffffffc0203b88:	6f9c                	ld	a5,24(a5)
ffffffffc0203b8a:	9782                	jalr	a5
ffffffffc0203b8c:	842a                	mv	s0,a0
ffffffffc0203b8e:	8defd0ef          	jal	ra,ffffffffc0200c6c <intr_enable>
ffffffffc0203b92:	b7c1                	j	ffffffffc0203b52 <pgdir_alloc_page+0x30>
ffffffffc0203b94:	100027f3          	csrr	a5,sstatus
ffffffffc0203b98:	8b89                	andi	a5,a5,2
ffffffffc0203b9a:	eb89                	bnez	a5,ffffffffc0203bac <pgdir_alloc_page+0x8a>
ffffffffc0203b9c:	0009b783          	ld	a5,0(s3)
ffffffffc0203ba0:	8522                	mv	a0,s0
ffffffffc0203ba2:	4585                	li	a1,1
ffffffffc0203ba4:	739c                	ld	a5,32(a5)
ffffffffc0203ba6:	4401                	li	s0,0
ffffffffc0203ba8:	9782                	jalr	a5
ffffffffc0203baa:	b7c9                	j	ffffffffc0203b6c <pgdir_alloc_page+0x4a>
ffffffffc0203bac:	8c6fd0ef          	jal	ra,ffffffffc0200c72 <intr_disable>
ffffffffc0203bb0:	0009b783          	ld	a5,0(s3)
ffffffffc0203bb4:	8522                	mv	a0,s0
ffffffffc0203bb6:	4585                	li	a1,1
ffffffffc0203bb8:	739c                	ld	a5,32(a5)
ffffffffc0203bba:	4401                	li	s0,0
ffffffffc0203bbc:	9782                	jalr	a5
ffffffffc0203bbe:	8aefd0ef          	jal	ra,ffffffffc0200c6c <intr_enable>
ffffffffc0203bc2:	b76d                	j	ffffffffc0203b6c <pgdir_alloc_page+0x4a>
ffffffffc0203bc4:	00009697          	auipc	a3,0x9
ffffffffc0203bc8:	0e468693          	addi	a3,a3,228 # ffffffffc020cca8 <default_pmm_manager+0x808>
ffffffffc0203bcc:	00008617          	auipc	a2,0x8
ffffffffc0203bd0:	dec60613          	addi	a2,a2,-532 # ffffffffc020b9b8 <commands+0x210>
ffffffffc0203bd4:	23500593          	li	a1,565
ffffffffc0203bd8:	00009517          	auipc	a0,0x9
ffffffffc0203bdc:	a1850513          	addi	a0,a0,-1512 # ffffffffc020c5f0 <default_pmm_manager+0x150>
ffffffffc0203be0:	8bffc0ef          	jal	ra,ffffffffc020049e <__panic>

ffffffffc0203be4 <check_vma_overlap.part.0>:
ffffffffc0203be4:	1141                	addi	sp,sp,-16
ffffffffc0203be6:	00009697          	auipc	a3,0x9
ffffffffc0203bea:	0da68693          	addi	a3,a3,218 # ffffffffc020ccc0 <default_pmm_manager+0x820>
ffffffffc0203bee:	00008617          	auipc	a2,0x8
ffffffffc0203bf2:	dca60613          	addi	a2,a2,-566 # ffffffffc020b9b8 <commands+0x210>
ffffffffc0203bf6:	07400593          	li	a1,116
ffffffffc0203bfa:	00009517          	auipc	a0,0x9
ffffffffc0203bfe:	0e650513          	addi	a0,a0,230 # ffffffffc020cce0 <default_pmm_manager+0x840>
ffffffffc0203c02:	e406                	sd	ra,8(sp)
ffffffffc0203c04:	89bfc0ef          	jal	ra,ffffffffc020049e <__panic>

ffffffffc0203c08 <mm_create>:
ffffffffc0203c08:	1141                	addi	sp,sp,-16
ffffffffc0203c0a:	05800513          	li	a0,88
ffffffffc0203c0e:	e022                	sd	s0,0(sp)
ffffffffc0203c10:	e406                	sd	ra,8(sp)
ffffffffc0203c12:	b7cfe0ef          	jal	ra,ffffffffc0201f8e <kmalloc>
ffffffffc0203c16:	842a                	mv	s0,a0
ffffffffc0203c18:	c115                	beqz	a0,ffffffffc0203c3c <mm_create+0x34>
ffffffffc0203c1a:	e408                	sd	a0,8(s0)
ffffffffc0203c1c:	e008                	sd	a0,0(s0)
ffffffffc0203c1e:	00053823          	sd	zero,16(a0)
ffffffffc0203c22:	00053c23          	sd	zero,24(a0)
ffffffffc0203c26:	02052023          	sw	zero,32(a0)
ffffffffc0203c2a:	02053423          	sd	zero,40(a0)
ffffffffc0203c2e:	02052823          	sw	zero,48(a0)
ffffffffc0203c32:	4585                	li	a1,1
ffffffffc0203c34:	03850513          	addi	a0,a0,56
ffffffffc0203c38:	123000ef          	jal	ra,ffffffffc020455a <sem_init>
ffffffffc0203c3c:	60a2                	ld	ra,8(sp)
ffffffffc0203c3e:	8522                	mv	a0,s0
ffffffffc0203c40:	6402                	ld	s0,0(sp)
ffffffffc0203c42:	0141                	addi	sp,sp,16
ffffffffc0203c44:	8082                	ret

ffffffffc0203c46 <find_vma>:
ffffffffc0203c46:	86aa                	mv	a3,a0
ffffffffc0203c48:	c505                	beqz	a0,ffffffffc0203c70 <find_vma+0x2a>
ffffffffc0203c4a:	6908                	ld	a0,16(a0)
ffffffffc0203c4c:	c501                	beqz	a0,ffffffffc0203c54 <find_vma+0xe>
ffffffffc0203c4e:	651c                	ld	a5,8(a0)
ffffffffc0203c50:	02f5f263          	bgeu	a1,a5,ffffffffc0203c74 <find_vma+0x2e>
ffffffffc0203c54:	669c                	ld	a5,8(a3)
ffffffffc0203c56:	00f68d63          	beq	a3,a5,ffffffffc0203c70 <find_vma+0x2a>
ffffffffc0203c5a:	fe87b703          	ld	a4,-24(a5) # 1fffe8 <_binary_bin_sfs_img_size+0x18ace8>
ffffffffc0203c5e:	00e5e663          	bltu	a1,a4,ffffffffc0203c6a <find_vma+0x24>
ffffffffc0203c62:	ff07b703          	ld	a4,-16(a5)
ffffffffc0203c66:	00e5ec63          	bltu	a1,a4,ffffffffc0203c7e <find_vma+0x38>
ffffffffc0203c6a:	679c                	ld	a5,8(a5)
ffffffffc0203c6c:	fef697e3          	bne	a3,a5,ffffffffc0203c5a <find_vma+0x14>
ffffffffc0203c70:	4501                	li	a0,0
ffffffffc0203c72:	8082                	ret
ffffffffc0203c74:	691c                	ld	a5,16(a0)
ffffffffc0203c76:	fcf5ffe3          	bgeu	a1,a5,ffffffffc0203c54 <find_vma+0xe>
ffffffffc0203c7a:	ea88                	sd	a0,16(a3)
ffffffffc0203c7c:	8082                	ret
ffffffffc0203c7e:	fe078513          	addi	a0,a5,-32
ffffffffc0203c82:	ea88                	sd	a0,16(a3)
ffffffffc0203c84:	8082                	ret

ffffffffc0203c86 <insert_vma_struct>:
ffffffffc0203c86:	6590                	ld	a2,8(a1)
ffffffffc0203c88:	0105b803          	ld	a6,16(a1) # 80010 <_binary_bin_sfs_img_size+0xad10>
ffffffffc0203c8c:	1141                	addi	sp,sp,-16
ffffffffc0203c8e:	e406                	sd	ra,8(sp)
ffffffffc0203c90:	87aa                	mv	a5,a0
ffffffffc0203c92:	01066763          	bltu	a2,a6,ffffffffc0203ca0 <insert_vma_struct+0x1a>
ffffffffc0203c96:	a085                	j	ffffffffc0203cf6 <insert_vma_struct+0x70>
ffffffffc0203c98:	fe87b703          	ld	a4,-24(a5)
ffffffffc0203c9c:	04e66863          	bltu	a2,a4,ffffffffc0203cec <insert_vma_struct+0x66>
ffffffffc0203ca0:	86be                	mv	a3,a5
ffffffffc0203ca2:	679c                	ld	a5,8(a5)
ffffffffc0203ca4:	fef51ae3          	bne	a0,a5,ffffffffc0203c98 <insert_vma_struct+0x12>
ffffffffc0203ca8:	02a68463          	beq	a3,a0,ffffffffc0203cd0 <insert_vma_struct+0x4a>
ffffffffc0203cac:	ff06b703          	ld	a4,-16(a3)
ffffffffc0203cb0:	fe86b883          	ld	a7,-24(a3)
ffffffffc0203cb4:	08e8f163          	bgeu	a7,a4,ffffffffc0203d36 <insert_vma_struct+0xb0>
ffffffffc0203cb8:	04e66f63          	bltu	a2,a4,ffffffffc0203d16 <insert_vma_struct+0x90>
ffffffffc0203cbc:	00f50a63          	beq	a0,a5,ffffffffc0203cd0 <insert_vma_struct+0x4a>
ffffffffc0203cc0:	fe87b703          	ld	a4,-24(a5)
ffffffffc0203cc4:	05076963          	bltu	a4,a6,ffffffffc0203d16 <insert_vma_struct+0x90>
ffffffffc0203cc8:	ff07b603          	ld	a2,-16(a5)
ffffffffc0203ccc:	02c77363          	bgeu	a4,a2,ffffffffc0203cf2 <insert_vma_struct+0x6c>
ffffffffc0203cd0:	5118                	lw	a4,32(a0)
ffffffffc0203cd2:	e188                	sd	a0,0(a1)
ffffffffc0203cd4:	02058613          	addi	a2,a1,32
ffffffffc0203cd8:	e390                	sd	a2,0(a5)
ffffffffc0203cda:	e690                	sd	a2,8(a3)
ffffffffc0203cdc:	60a2                	ld	ra,8(sp)
ffffffffc0203cde:	f59c                	sd	a5,40(a1)
ffffffffc0203ce0:	f194                	sd	a3,32(a1)
ffffffffc0203ce2:	0017079b          	addiw	a5,a4,1
ffffffffc0203ce6:	d11c                	sw	a5,32(a0)
ffffffffc0203ce8:	0141                	addi	sp,sp,16
ffffffffc0203cea:	8082                	ret
ffffffffc0203cec:	fca690e3          	bne	a3,a0,ffffffffc0203cac <insert_vma_struct+0x26>
ffffffffc0203cf0:	bfd1                	j	ffffffffc0203cc4 <insert_vma_struct+0x3e>
ffffffffc0203cf2:	ef3ff0ef          	jal	ra,ffffffffc0203be4 <check_vma_overlap.part.0>
ffffffffc0203cf6:	00009697          	auipc	a3,0x9
ffffffffc0203cfa:	ffa68693          	addi	a3,a3,-6 # ffffffffc020ccf0 <default_pmm_manager+0x850>
ffffffffc0203cfe:	00008617          	auipc	a2,0x8
ffffffffc0203d02:	cba60613          	addi	a2,a2,-838 # ffffffffc020b9b8 <commands+0x210>
ffffffffc0203d06:	07a00593          	li	a1,122
ffffffffc0203d0a:	00009517          	auipc	a0,0x9
ffffffffc0203d0e:	fd650513          	addi	a0,a0,-42 # ffffffffc020cce0 <default_pmm_manager+0x840>
ffffffffc0203d12:	f8cfc0ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc0203d16:	00009697          	auipc	a3,0x9
ffffffffc0203d1a:	01a68693          	addi	a3,a3,26 # ffffffffc020cd30 <default_pmm_manager+0x890>
ffffffffc0203d1e:	00008617          	auipc	a2,0x8
ffffffffc0203d22:	c9a60613          	addi	a2,a2,-870 # ffffffffc020b9b8 <commands+0x210>
ffffffffc0203d26:	07300593          	li	a1,115
ffffffffc0203d2a:	00009517          	auipc	a0,0x9
ffffffffc0203d2e:	fb650513          	addi	a0,a0,-74 # ffffffffc020cce0 <default_pmm_manager+0x840>
ffffffffc0203d32:	f6cfc0ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc0203d36:	00009697          	auipc	a3,0x9
ffffffffc0203d3a:	fda68693          	addi	a3,a3,-38 # ffffffffc020cd10 <default_pmm_manager+0x870>
ffffffffc0203d3e:	00008617          	auipc	a2,0x8
ffffffffc0203d42:	c7a60613          	addi	a2,a2,-902 # ffffffffc020b9b8 <commands+0x210>
ffffffffc0203d46:	07200593          	li	a1,114
ffffffffc0203d4a:	00009517          	auipc	a0,0x9
ffffffffc0203d4e:	f9650513          	addi	a0,a0,-106 # ffffffffc020cce0 <default_pmm_manager+0x840>
ffffffffc0203d52:	f4cfc0ef          	jal	ra,ffffffffc020049e <__panic>

ffffffffc0203d56 <mm_destroy>:
ffffffffc0203d56:	591c                	lw	a5,48(a0)
ffffffffc0203d58:	1141                	addi	sp,sp,-16
ffffffffc0203d5a:	e406                	sd	ra,8(sp)
ffffffffc0203d5c:	e022                	sd	s0,0(sp)
ffffffffc0203d5e:	e78d                	bnez	a5,ffffffffc0203d88 <mm_destroy+0x32>
ffffffffc0203d60:	842a                	mv	s0,a0
ffffffffc0203d62:	6508                	ld	a0,8(a0)
ffffffffc0203d64:	00a40c63          	beq	s0,a0,ffffffffc0203d7c <mm_destroy+0x26>
ffffffffc0203d68:	6118                	ld	a4,0(a0)
ffffffffc0203d6a:	651c                	ld	a5,8(a0)
ffffffffc0203d6c:	1501                	addi	a0,a0,-32
ffffffffc0203d6e:	e71c                	sd	a5,8(a4)
ffffffffc0203d70:	e398                	sd	a4,0(a5)
ffffffffc0203d72:	accfe0ef          	jal	ra,ffffffffc020203e <kfree>
ffffffffc0203d76:	6408                	ld	a0,8(s0)
ffffffffc0203d78:	fea418e3          	bne	s0,a0,ffffffffc0203d68 <mm_destroy+0x12>
ffffffffc0203d7c:	8522                	mv	a0,s0
ffffffffc0203d7e:	6402                	ld	s0,0(sp)
ffffffffc0203d80:	60a2                	ld	ra,8(sp)
ffffffffc0203d82:	0141                	addi	sp,sp,16
ffffffffc0203d84:	abafe06f          	j	ffffffffc020203e <kfree>
ffffffffc0203d88:	00009697          	auipc	a3,0x9
ffffffffc0203d8c:	fc868693          	addi	a3,a3,-56 # ffffffffc020cd50 <default_pmm_manager+0x8b0>
ffffffffc0203d90:	00008617          	auipc	a2,0x8
ffffffffc0203d94:	c2860613          	addi	a2,a2,-984 # ffffffffc020b9b8 <commands+0x210>
ffffffffc0203d98:	09e00593          	li	a1,158
ffffffffc0203d9c:	00009517          	auipc	a0,0x9
ffffffffc0203da0:	f4450513          	addi	a0,a0,-188 # ffffffffc020cce0 <default_pmm_manager+0x840>
ffffffffc0203da4:	efafc0ef          	jal	ra,ffffffffc020049e <__panic>

ffffffffc0203da8 <mm_map>:
ffffffffc0203da8:	7139                	addi	sp,sp,-64
ffffffffc0203daa:	f822                	sd	s0,48(sp)
ffffffffc0203dac:	6405                	lui	s0,0x1
ffffffffc0203dae:	147d                	addi	s0,s0,-1
ffffffffc0203db0:	77fd                	lui	a5,0xfffff
ffffffffc0203db2:	9622                	add	a2,a2,s0
ffffffffc0203db4:	962e                	add	a2,a2,a1
ffffffffc0203db6:	f426                	sd	s1,40(sp)
ffffffffc0203db8:	fc06                	sd	ra,56(sp)
ffffffffc0203dba:	00f5f4b3          	and	s1,a1,a5
ffffffffc0203dbe:	f04a                	sd	s2,32(sp)
ffffffffc0203dc0:	ec4e                	sd	s3,24(sp)
ffffffffc0203dc2:	e852                	sd	s4,16(sp)
ffffffffc0203dc4:	e456                	sd	s5,8(sp)
ffffffffc0203dc6:	002005b7          	lui	a1,0x200
ffffffffc0203dca:	00f67433          	and	s0,a2,a5
ffffffffc0203dce:	06b4e363          	bltu	s1,a1,ffffffffc0203e34 <mm_map+0x8c>
ffffffffc0203dd2:	0684f163          	bgeu	s1,s0,ffffffffc0203e34 <mm_map+0x8c>
ffffffffc0203dd6:	4785                	li	a5,1
ffffffffc0203dd8:	07fe                	slli	a5,a5,0x1f
ffffffffc0203dda:	0487ed63          	bltu	a5,s0,ffffffffc0203e34 <mm_map+0x8c>
ffffffffc0203dde:	89aa                	mv	s3,a0
ffffffffc0203de0:	cd21                	beqz	a0,ffffffffc0203e38 <mm_map+0x90>
ffffffffc0203de2:	85a6                	mv	a1,s1
ffffffffc0203de4:	8ab6                	mv	s5,a3
ffffffffc0203de6:	8a3a                	mv	s4,a4
ffffffffc0203de8:	e5fff0ef          	jal	ra,ffffffffc0203c46 <find_vma>
ffffffffc0203dec:	c501                	beqz	a0,ffffffffc0203df4 <mm_map+0x4c>
ffffffffc0203dee:	651c                	ld	a5,8(a0)
ffffffffc0203df0:	0487e263          	bltu	a5,s0,ffffffffc0203e34 <mm_map+0x8c>
ffffffffc0203df4:	03000513          	li	a0,48
ffffffffc0203df8:	996fe0ef          	jal	ra,ffffffffc0201f8e <kmalloc>
ffffffffc0203dfc:	892a                	mv	s2,a0
ffffffffc0203dfe:	5571                	li	a0,-4
ffffffffc0203e00:	02090163          	beqz	s2,ffffffffc0203e22 <mm_map+0x7a>
ffffffffc0203e04:	854e                	mv	a0,s3
ffffffffc0203e06:	00993423          	sd	s1,8(s2)
ffffffffc0203e0a:	00893823          	sd	s0,16(s2)
ffffffffc0203e0e:	01592c23          	sw	s5,24(s2)
ffffffffc0203e12:	85ca                	mv	a1,s2
ffffffffc0203e14:	e73ff0ef          	jal	ra,ffffffffc0203c86 <insert_vma_struct>
ffffffffc0203e18:	4501                	li	a0,0
ffffffffc0203e1a:	000a0463          	beqz	s4,ffffffffc0203e22 <mm_map+0x7a>
ffffffffc0203e1e:	012a3023          	sd	s2,0(s4) # 1000 <_binary_bin_swap_img_size-0x6d00>
ffffffffc0203e22:	70e2                	ld	ra,56(sp)
ffffffffc0203e24:	7442                	ld	s0,48(sp)
ffffffffc0203e26:	74a2                	ld	s1,40(sp)
ffffffffc0203e28:	7902                	ld	s2,32(sp)
ffffffffc0203e2a:	69e2                	ld	s3,24(sp)
ffffffffc0203e2c:	6a42                	ld	s4,16(sp)
ffffffffc0203e2e:	6aa2                	ld	s5,8(sp)
ffffffffc0203e30:	6121                	addi	sp,sp,64
ffffffffc0203e32:	8082                	ret
ffffffffc0203e34:	5575                	li	a0,-3
ffffffffc0203e36:	b7f5                	j	ffffffffc0203e22 <mm_map+0x7a>
ffffffffc0203e38:	00009697          	auipc	a3,0x9
ffffffffc0203e3c:	f3068693          	addi	a3,a3,-208 # ffffffffc020cd68 <default_pmm_manager+0x8c8>
ffffffffc0203e40:	00008617          	auipc	a2,0x8
ffffffffc0203e44:	b7860613          	addi	a2,a2,-1160 # ffffffffc020b9b8 <commands+0x210>
ffffffffc0203e48:	0b300593          	li	a1,179
ffffffffc0203e4c:	00009517          	auipc	a0,0x9
ffffffffc0203e50:	e9450513          	addi	a0,a0,-364 # ffffffffc020cce0 <default_pmm_manager+0x840>
ffffffffc0203e54:	e4afc0ef          	jal	ra,ffffffffc020049e <__panic>

ffffffffc0203e58 <dup_mmap>:
ffffffffc0203e58:	7139                	addi	sp,sp,-64
ffffffffc0203e5a:	fc06                	sd	ra,56(sp)
ffffffffc0203e5c:	f822                	sd	s0,48(sp)
ffffffffc0203e5e:	f426                	sd	s1,40(sp)
ffffffffc0203e60:	f04a                	sd	s2,32(sp)
ffffffffc0203e62:	ec4e                	sd	s3,24(sp)
ffffffffc0203e64:	e852                	sd	s4,16(sp)
ffffffffc0203e66:	e456                	sd	s5,8(sp)
ffffffffc0203e68:	c52d                	beqz	a0,ffffffffc0203ed2 <dup_mmap+0x7a>
ffffffffc0203e6a:	892a                	mv	s2,a0
ffffffffc0203e6c:	84ae                	mv	s1,a1
ffffffffc0203e6e:	842e                	mv	s0,a1
ffffffffc0203e70:	e595                	bnez	a1,ffffffffc0203e9c <dup_mmap+0x44>
ffffffffc0203e72:	a085                	j	ffffffffc0203ed2 <dup_mmap+0x7a>
ffffffffc0203e74:	854a                	mv	a0,s2
ffffffffc0203e76:	0155b423          	sd	s5,8(a1) # 200008 <_binary_bin_sfs_img_size+0x18ad08>
ffffffffc0203e7a:	0145b823          	sd	s4,16(a1)
ffffffffc0203e7e:	0135ac23          	sw	s3,24(a1)
ffffffffc0203e82:	e05ff0ef          	jal	ra,ffffffffc0203c86 <insert_vma_struct>
ffffffffc0203e86:	ff043683          	ld	a3,-16(s0) # ff0 <_binary_bin_swap_img_size-0x6d10>
ffffffffc0203e8a:	fe843603          	ld	a2,-24(s0)
ffffffffc0203e8e:	6c8c                	ld	a1,24(s1)
ffffffffc0203e90:	01893503          	ld	a0,24(s2)
ffffffffc0203e94:	4701                	li	a4,0
ffffffffc0203e96:	a2dff0ef          	jal	ra,ffffffffc02038c2 <copy_range>
ffffffffc0203e9a:	e105                	bnez	a0,ffffffffc0203eba <dup_mmap+0x62>
ffffffffc0203e9c:	6000                	ld	s0,0(s0)
ffffffffc0203e9e:	02848863          	beq	s1,s0,ffffffffc0203ece <dup_mmap+0x76>
ffffffffc0203ea2:	03000513          	li	a0,48
ffffffffc0203ea6:	fe843a83          	ld	s5,-24(s0)
ffffffffc0203eaa:	ff043a03          	ld	s4,-16(s0)
ffffffffc0203eae:	ff842983          	lw	s3,-8(s0)
ffffffffc0203eb2:	8dcfe0ef          	jal	ra,ffffffffc0201f8e <kmalloc>
ffffffffc0203eb6:	85aa                	mv	a1,a0
ffffffffc0203eb8:	fd55                	bnez	a0,ffffffffc0203e74 <dup_mmap+0x1c>
ffffffffc0203eba:	5571                	li	a0,-4
ffffffffc0203ebc:	70e2                	ld	ra,56(sp)
ffffffffc0203ebe:	7442                	ld	s0,48(sp)
ffffffffc0203ec0:	74a2                	ld	s1,40(sp)
ffffffffc0203ec2:	7902                	ld	s2,32(sp)
ffffffffc0203ec4:	69e2                	ld	s3,24(sp)
ffffffffc0203ec6:	6a42                	ld	s4,16(sp)
ffffffffc0203ec8:	6aa2                	ld	s5,8(sp)
ffffffffc0203eca:	6121                	addi	sp,sp,64
ffffffffc0203ecc:	8082                	ret
ffffffffc0203ece:	4501                	li	a0,0
ffffffffc0203ed0:	b7f5                	j	ffffffffc0203ebc <dup_mmap+0x64>
ffffffffc0203ed2:	00009697          	auipc	a3,0x9
ffffffffc0203ed6:	ea668693          	addi	a3,a3,-346 # ffffffffc020cd78 <default_pmm_manager+0x8d8>
ffffffffc0203eda:	00008617          	auipc	a2,0x8
ffffffffc0203ede:	ade60613          	addi	a2,a2,-1314 # ffffffffc020b9b8 <commands+0x210>
ffffffffc0203ee2:	0cf00593          	li	a1,207
ffffffffc0203ee6:	00009517          	auipc	a0,0x9
ffffffffc0203eea:	dfa50513          	addi	a0,a0,-518 # ffffffffc020cce0 <default_pmm_manager+0x840>
ffffffffc0203eee:	db0fc0ef          	jal	ra,ffffffffc020049e <__panic>

ffffffffc0203ef2 <exit_mmap>:
ffffffffc0203ef2:	1101                	addi	sp,sp,-32
ffffffffc0203ef4:	ec06                	sd	ra,24(sp)
ffffffffc0203ef6:	e822                	sd	s0,16(sp)
ffffffffc0203ef8:	e426                	sd	s1,8(sp)
ffffffffc0203efa:	e04a                	sd	s2,0(sp)
ffffffffc0203efc:	c531                	beqz	a0,ffffffffc0203f48 <exit_mmap+0x56>
ffffffffc0203efe:	591c                	lw	a5,48(a0)
ffffffffc0203f00:	84aa                	mv	s1,a0
ffffffffc0203f02:	e3b9                	bnez	a5,ffffffffc0203f48 <exit_mmap+0x56>
ffffffffc0203f04:	6500                	ld	s0,8(a0)
ffffffffc0203f06:	01853903          	ld	s2,24(a0)
ffffffffc0203f0a:	02850663          	beq	a0,s0,ffffffffc0203f36 <exit_mmap+0x44>
ffffffffc0203f0e:	ff043603          	ld	a2,-16(s0)
ffffffffc0203f12:	fe843583          	ld	a1,-24(s0)
ffffffffc0203f16:	854a                	mv	a0,s2
ffffffffc0203f18:	e4efe0ef          	jal	ra,ffffffffc0202566 <unmap_range>
ffffffffc0203f1c:	6400                	ld	s0,8(s0)
ffffffffc0203f1e:	fe8498e3          	bne	s1,s0,ffffffffc0203f0e <exit_mmap+0x1c>
ffffffffc0203f22:	6400                	ld	s0,8(s0)
ffffffffc0203f24:	00848c63          	beq	s1,s0,ffffffffc0203f3c <exit_mmap+0x4a>
ffffffffc0203f28:	ff043603          	ld	a2,-16(s0)
ffffffffc0203f2c:	fe843583          	ld	a1,-24(s0)
ffffffffc0203f30:	854a                	mv	a0,s2
ffffffffc0203f32:	f7afe0ef          	jal	ra,ffffffffc02026ac <exit_range>
ffffffffc0203f36:	6400                	ld	s0,8(s0)
ffffffffc0203f38:	fe8498e3          	bne	s1,s0,ffffffffc0203f28 <exit_mmap+0x36>
ffffffffc0203f3c:	60e2                	ld	ra,24(sp)
ffffffffc0203f3e:	6442                	ld	s0,16(sp)
ffffffffc0203f40:	64a2                	ld	s1,8(sp)
ffffffffc0203f42:	6902                	ld	s2,0(sp)
ffffffffc0203f44:	6105                	addi	sp,sp,32
ffffffffc0203f46:	8082                	ret
ffffffffc0203f48:	00009697          	auipc	a3,0x9
ffffffffc0203f4c:	e5068693          	addi	a3,a3,-432 # ffffffffc020cd98 <default_pmm_manager+0x8f8>
ffffffffc0203f50:	00008617          	auipc	a2,0x8
ffffffffc0203f54:	a6860613          	addi	a2,a2,-1432 # ffffffffc020b9b8 <commands+0x210>
ffffffffc0203f58:	0e800593          	li	a1,232
ffffffffc0203f5c:	00009517          	auipc	a0,0x9
ffffffffc0203f60:	d8450513          	addi	a0,a0,-636 # ffffffffc020cce0 <default_pmm_manager+0x840>
ffffffffc0203f64:	d3afc0ef          	jal	ra,ffffffffc020049e <__panic>

ffffffffc0203f68 <vmm_init>:
ffffffffc0203f68:	7139                	addi	sp,sp,-64
ffffffffc0203f6a:	05800513          	li	a0,88
ffffffffc0203f6e:	fc06                	sd	ra,56(sp)
ffffffffc0203f70:	f822                	sd	s0,48(sp)
ffffffffc0203f72:	f426                	sd	s1,40(sp)
ffffffffc0203f74:	f04a                	sd	s2,32(sp)
ffffffffc0203f76:	ec4e                	sd	s3,24(sp)
ffffffffc0203f78:	e852                	sd	s4,16(sp)
ffffffffc0203f7a:	e456                	sd	s5,8(sp)
ffffffffc0203f7c:	812fe0ef          	jal	ra,ffffffffc0201f8e <kmalloc>
ffffffffc0203f80:	2e050963          	beqz	a0,ffffffffc0204272 <vmm_init+0x30a>
ffffffffc0203f84:	e508                	sd	a0,8(a0)
ffffffffc0203f86:	e108                	sd	a0,0(a0)
ffffffffc0203f88:	00053823          	sd	zero,16(a0)
ffffffffc0203f8c:	00053c23          	sd	zero,24(a0)
ffffffffc0203f90:	02052023          	sw	zero,32(a0)
ffffffffc0203f94:	02053423          	sd	zero,40(a0)
ffffffffc0203f98:	02052823          	sw	zero,48(a0)
ffffffffc0203f9c:	84aa                	mv	s1,a0
ffffffffc0203f9e:	4585                	li	a1,1
ffffffffc0203fa0:	03850513          	addi	a0,a0,56
ffffffffc0203fa4:	5b6000ef          	jal	ra,ffffffffc020455a <sem_init>
ffffffffc0203fa8:	03200413          	li	s0,50
ffffffffc0203fac:	a811                	j	ffffffffc0203fc0 <vmm_init+0x58>
ffffffffc0203fae:	e500                	sd	s0,8(a0)
ffffffffc0203fb0:	e91c                	sd	a5,16(a0)
ffffffffc0203fb2:	00052c23          	sw	zero,24(a0)
ffffffffc0203fb6:	146d                	addi	s0,s0,-5
ffffffffc0203fb8:	8526                	mv	a0,s1
ffffffffc0203fba:	ccdff0ef          	jal	ra,ffffffffc0203c86 <insert_vma_struct>
ffffffffc0203fbe:	c80d                	beqz	s0,ffffffffc0203ff0 <vmm_init+0x88>
ffffffffc0203fc0:	03000513          	li	a0,48
ffffffffc0203fc4:	fcbfd0ef          	jal	ra,ffffffffc0201f8e <kmalloc>
ffffffffc0203fc8:	85aa                	mv	a1,a0
ffffffffc0203fca:	00240793          	addi	a5,s0,2
ffffffffc0203fce:	f165                	bnez	a0,ffffffffc0203fae <vmm_init+0x46>
ffffffffc0203fd0:	00009697          	auipc	a3,0x9
ffffffffc0203fd4:	f6068693          	addi	a3,a3,-160 # ffffffffc020cf30 <default_pmm_manager+0xa90>
ffffffffc0203fd8:	00008617          	auipc	a2,0x8
ffffffffc0203fdc:	9e060613          	addi	a2,a2,-1568 # ffffffffc020b9b8 <commands+0x210>
ffffffffc0203fe0:	12c00593          	li	a1,300
ffffffffc0203fe4:	00009517          	auipc	a0,0x9
ffffffffc0203fe8:	cfc50513          	addi	a0,a0,-772 # ffffffffc020cce0 <default_pmm_manager+0x840>
ffffffffc0203fec:	cb2fc0ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc0203ff0:	03700413          	li	s0,55
ffffffffc0203ff4:	1f900913          	li	s2,505
ffffffffc0203ff8:	a819                	j	ffffffffc020400e <vmm_init+0xa6>
ffffffffc0203ffa:	e500                	sd	s0,8(a0)
ffffffffc0203ffc:	e91c                	sd	a5,16(a0)
ffffffffc0203ffe:	00052c23          	sw	zero,24(a0)
ffffffffc0204002:	0415                	addi	s0,s0,5
ffffffffc0204004:	8526                	mv	a0,s1
ffffffffc0204006:	c81ff0ef          	jal	ra,ffffffffc0203c86 <insert_vma_struct>
ffffffffc020400a:	03240a63          	beq	s0,s2,ffffffffc020403e <vmm_init+0xd6>
ffffffffc020400e:	03000513          	li	a0,48
ffffffffc0204012:	f7dfd0ef          	jal	ra,ffffffffc0201f8e <kmalloc>
ffffffffc0204016:	85aa                	mv	a1,a0
ffffffffc0204018:	00240793          	addi	a5,s0,2
ffffffffc020401c:	fd79                	bnez	a0,ffffffffc0203ffa <vmm_init+0x92>
ffffffffc020401e:	00009697          	auipc	a3,0x9
ffffffffc0204022:	f1268693          	addi	a3,a3,-238 # ffffffffc020cf30 <default_pmm_manager+0xa90>
ffffffffc0204026:	00008617          	auipc	a2,0x8
ffffffffc020402a:	99260613          	addi	a2,a2,-1646 # ffffffffc020b9b8 <commands+0x210>
ffffffffc020402e:	13300593          	li	a1,307
ffffffffc0204032:	00009517          	auipc	a0,0x9
ffffffffc0204036:	cae50513          	addi	a0,a0,-850 # ffffffffc020cce0 <default_pmm_manager+0x840>
ffffffffc020403a:	c64fc0ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc020403e:	649c                	ld	a5,8(s1)
ffffffffc0204040:	471d                	li	a4,7
ffffffffc0204042:	1fb00593          	li	a1,507
ffffffffc0204046:	16f48663          	beq	s1,a5,ffffffffc02041b2 <vmm_init+0x24a>
ffffffffc020404a:	fe87b603          	ld	a2,-24(a5) # ffffffffffffefe8 <end+0x3fd686d8>
ffffffffc020404e:	ffe70693          	addi	a3,a4,-2
ffffffffc0204052:	10d61063          	bne	a2,a3,ffffffffc0204152 <vmm_init+0x1ea>
ffffffffc0204056:	ff07b683          	ld	a3,-16(a5)
ffffffffc020405a:	0ed71c63          	bne	a4,a3,ffffffffc0204152 <vmm_init+0x1ea>
ffffffffc020405e:	0715                	addi	a4,a4,5
ffffffffc0204060:	679c                	ld	a5,8(a5)
ffffffffc0204062:	feb712e3          	bne	a4,a1,ffffffffc0204046 <vmm_init+0xde>
ffffffffc0204066:	4a1d                	li	s4,7
ffffffffc0204068:	4415                	li	s0,5
ffffffffc020406a:	1f900a93          	li	s5,505
ffffffffc020406e:	85a2                	mv	a1,s0
ffffffffc0204070:	8526                	mv	a0,s1
ffffffffc0204072:	bd5ff0ef          	jal	ra,ffffffffc0203c46 <find_vma>
ffffffffc0204076:	892a                	mv	s2,a0
ffffffffc0204078:	16050d63          	beqz	a0,ffffffffc02041f2 <vmm_init+0x28a>
ffffffffc020407c:	00140593          	addi	a1,s0,1
ffffffffc0204080:	8526                	mv	a0,s1
ffffffffc0204082:	bc5ff0ef          	jal	ra,ffffffffc0203c46 <find_vma>
ffffffffc0204086:	89aa                	mv	s3,a0
ffffffffc0204088:	14050563          	beqz	a0,ffffffffc02041d2 <vmm_init+0x26a>
ffffffffc020408c:	85d2                	mv	a1,s4
ffffffffc020408e:	8526                	mv	a0,s1
ffffffffc0204090:	bb7ff0ef          	jal	ra,ffffffffc0203c46 <find_vma>
ffffffffc0204094:	16051f63          	bnez	a0,ffffffffc0204212 <vmm_init+0x2aa>
ffffffffc0204098:	00340593          	addi	a1,s0,3
ffffffffc020409c:	8526                	mv	a0,s1
ffffffffc020409e:	ba9ff0ef          	jal	ra,ffffffffc0203c46 <find_vma>
ffffffffc02040a2:	1a051863          	bnez	a0,ffffffffc0204252 <vmm_init+0x2ea>
ffffffffc02040a6:	00440593          	addi	a1,s0,4
ffffffffc02040aa:	8526                	mv	a0,s1
ffffffffc02040ac:	b9bff0ef          	jal	ra,ffffffffc0203c46 <find_vma>
ffffffffc02040b0:	18051163          	bnez	a0,ffffffffc0204232 <vmm_init+0x2ca>
ffffffffc02040b4:	00893783          	ld	a5,8(s2)
ffffffffc02040b8:	0a879d63          	bne	a5,s0,ffffffffc0204172 <vmm_init+0x20a>
ffffffffc02040bc:	01093783          	ld	a5,16(s2)
ffffffffc02040c0:	0b479963          	bne	a5,s4,ffffffffc0204172 <vmm_init+0x20a>
ffffffffc02040c4:	0089b783          	ld	a5,8(s3)
ffffffffc02040c8:	0c879563          	bne	a5,s0,ffffffffc0204192 <vmm_init+0x22a>
ffffffffc02040cc:	0109b783          	ld	a5,16(s3)
ffffffffc02040d0:	0d479163          	bne	a5,s4,ffffffffc0204192 <vmm_init+0x22a>
ffffffffc02040d4:	0415                	addi	s0,s0,5
ffffffffc02040d6:	0a15                	addi	s4,s4,5
ffffffffc02040d8:	f9541be3          	bne	s0,s5,ffffffffc020406e <vmm_init+0x106>
ffffffffc02040dc:	4411                	li	s0,4
ffffffffc02040de:	597d                	li	s2,-1
ffffffffc02040e0:	85a2                	mv	a1,s0
ffffffffc02040e2:	8526                	mv	a0,s1
ffffffffc02040e4:	b63ff0ef          	jal	ra,ffffffffc0203c46 <find_vma>
ffffffffc02040e8:	0004059b          	sext.w	a1,s0
ffffffffc02040ec:	c90d                	beqz	a0,ffffffffc020411e <vmm_init+0x1b6>
ffffffffc02040ee:	6914                	ld	a3,16(a0)
ffffffffc02040f0:	6510                	ld	a2,8(a0)
ffffffffc02040f2:	00009517          	auipc	a0,0x9
ffffffffc02040f6:	dc650513          	addi	a0,a0,-570 # ffffffffc020ceb8 <default_pmm_manager+0xa18>
ffffffffc02040fa:	8acfc0ef          	jal	ra,ffffffffc02001a6 <cprintf>
ffffffffc02040fe:	00009697          	auipc	a3,0x9
ffffffffc0204102:	de268693          	addi	a3,a3,-542 # ffffffffc020cee0 <default_pmm_manager+0xa40>
ffffffffc0204106:	00008617          	auipc	a2,0x8
ffffffffc020410a:	8b260613          	addi	a2,a2,-1870 # ffffffffc020b9b8 <commands+0x210>
ffffffffc020410e:	15900593          	li	a1,345
ffffffffc0204112:	00009517          	auipc	a0,0x9
ffffffffc0204116:	bce50513          	addi	a0,a0,-1074 # ffffffffc020cce0 <default_pmm_manager+0x840>
ffffffffc020411a:	b84fc0ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc020411e:	147d                	addi	s0,s0,-1
ffffffffc0204120:	fd2410e3          	bne	s0,s2,ffffffffc02040e0 <vmm_init+0x178>
ffffffffc0204124:	8526                	mv	a0,s1
ffffffffc0204126:	c31ff0ef          	jal	ra,ffffffffc0203d56 <mm_destroy>
ffffffffc020412a:	00009517          	auipc	a0,0x9
ffffffffc020412e:	dce50513          	addi	a0,a0,-562 # ffffffffc020cef8 <default_pmm_manager+0xa58>
ffffffffc0204132:	874fc0ef          	jal	ra,ffffffffc02001a6 <cprintf>
ffffffffc0204136:	7442                	ld	s0,48(sp)
ffffffffc0204138:	70e2                	ld	ra,56(sp)
ffffffffc020413a:	74a2                	ld	s1,40(sp)
ffffffffc020413c:	7902                	ld	s2,32(sp)
ffffffffc020413e:	69e2                	ld	s3,24(sp)
ffffffffc0204140:	6a42                	ld	s4,16(sp)
ffffffffc0204142:	6aa2                	ld	s5,8(sp)
ffffffffc0204144:	00009517          	auipc	a0,0x9
ffffffffc0204148:	dd450513          	addi	a0,a0,-556 # ffffffffc020cf18 <default_pmm_manager+0xa78>
ffffffffc020414c:	6121                	addi	sp,sp,64
ffffffffc020414e:	858fc06f          	j	ffffffffc02001a6 <cprintf>
ffffffffc0204152:	00009697          	auipc	a3,0x9
ffffffffc0204156:	c7e68693          	addi	a3,a3,-898 # ffffffffc020cdd0 <default_pmm_manager+0x930>
ffffffffc020415a:	00008617          	auipc	a2,0x8
ffffffffc020415e:	85e60613          	addi	a2,a2,-1954 # ffffffffc020b9b8 <commands+0x210>
ffffffffc0204162:	13d00593          	li	a1,317
ffffffffc0204166:	00009517          	auipc	a0,0x9
ffffffffc020416a:	b7a50513          	addi	a0,a0,-1158 # ffffffffc020cce0 <default_pmm_manager+0x840>
ffffffffc020416e:	b30fc0ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc0204172:	00009697          	auipc	a3,0x9
ffffffffc0204176:	ce668693          	addi	a3,a3,-794 # ffffffffc020ce58 <default_pmm_manager+0x9b8>
ffffffffc020417a:	00008617          	auipc	a2,0x8
ffffffffc020417e:	83e60613          	addi	a2,a2,-1986 # ffffffffc020b9b8 <commands+0x210>
ffffffffc0204182:	14e00593          	li	a1,334
ffffffffc0204186:	00009517          	auipc	a0,0x9
ffffffffc020418a:	b5a50513          	addi	a0,a0,-1190 # ffffffffc020cce0 <default_pmm_manager+0x840>
ffffffffc020418e:	b10fc0ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc0204192:	00009697          	auipc	a3,0x9
ffffffffc0204196:	cf668693          	addi	a3,a3,-778 # ffffffffc020ce88 <default_pmm_manager+0x9e8>
ffffffffc020419a:	00008617          	auipc	a2,0x8
ffffffffc020419e:	81e60613          	addi	a2,a2,-2018 # ffffffffc020b9b8 <commands+0x210>
ffffffffc02041a2:	14f00593          	li	a1,335
ffffffffc02041a6:	00009517          	auipc	a0,0x9
ffffffffc02041aa:	b3a50513          	addi	a0,a0,-1222 # ffffffffc020cce0 <default_pmm_manager+0x840>
ffffffffc02041ae:	af0fc0ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc02041b2:	00009697          	auipc	a3,0x9
ffffffffc02041b6:	c0668693          	addi	a3,a3,-1018 # ffffffffc020cdb8 <default_pmm_manager+0x918>
ffffffffc02041ba:	00007617          	auipc	a2,0x7
ffffffffc02041be:	7fe60613          	addi	a2,a2,2046 # ffffffffc020b9b8 <commands+0x210>
ffffffffc02041c2:	13b00593          	li	a1,315
ffffffffc02041c6:	00009517          	auipc	a0,0x9
ffffffffc02041ca:	b1a50513          	addi	a0,a0,-1254 # ffffffffc020cce0 <default_pmm_manager+0x840>
ffffffffc02041ce:	ad0fc0ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc02041d2:	00009697          	auipc	a3,0x9
ffffffffc02041d6:	c4668693          	addi	a3,a3,-954 # ffffffffc020ce18 <default_pmm_manager+0x978>
ffffffffc02041da:	00007617          	auipc	a2,0x7
ffffffffc02041de:	7de60613          	addi	a2,a2,2014 # ffffffffc020b9b8 <commands+0x210>
ffffffffc02041e2:	14600593          	li	a1,326
ffffffffc02041e6:	00009517          	auipc	a0,0x9
ffffffffc02041ea:	afa50513          	addi	a0,a0,-1286 # ffffffffc020cce0 <default_pmm_manager+0x840>
ffffffffc02041ee:	ab0fc0ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc02041f2:	00009697          	auipc	a3,0x9
ffffffffc02041f6:	c1668693          	addi	a3,a3,-1002 # ffffffffc020ce08 <default_pmm_manager+0x968>
ffffffffc02041fa:	00007617          	auipc	a2,0x7
ffffffffc02041fe:	7be60613          	addi	a2,a2,1982 # ffffffffc020b9b8 <commands+0x210>
ffffffffc0204202:	14400593          	li	a1,324
ffffffffc0204206:	00009517          	auipc	a0,0x9
ffffffffc020420a:	ada50513          	addi	a0,a0,-1318 # ffffffffc020cce0 <default_pmm_manager+0x840>
ffffffffc020420e:	a90fc0ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc0204212:	00009697          	auipc	a3,0x9
ffffffffc0204216:	c1668693          	addi	a3,a3,-1002 # ffffffffc020ce28 <default_pmm_manager+0x988>
ffffffffc020421a:	00007617          	auipc	a2,0x7
ffffffffc020421e:	79e60613          	addi	a2,a2,1950 # ffffffffc020b9b8 <commands+0x210>
ffffffffc0204222:	14800593          	li	a1,328
ffffffffc0204226:	00009517          	auipc	a0,0x9
ffffffffc020422a:	aba50513          	addi	a0,a0,-1350 # ffffffffc020cce0 <default_pmm_manager+0x840>
ffffffffc020422e:	a70fc0ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc0204232:	00009697          	auipc	a3,0x9
ffffffffc0204236:	c1668693          	addi	a3,a3,-1002 # ffffffffc020ce48 <default_pmm_manager+0x9a8>
ffffffffc020423a:	00007617          	auipc	a2,0x7
ffffffffc020423e:	77e60613          	addi	a2,a2,1918 # ffffffffc020b9b8 <commands+0x210>
ffffffffc0204242:	14c00593          	li	a1,332
ffffffffc0204246:	00009517          	auipc	a0,0x9
ffffffffc020424a:	a9a50513          	addi	a0,a0,-1382 # ffffffffc020cce0 <default_pmm_manager+0x840>
ffffffffc020424e:	a50fc0ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc0204252:	00009697          	auipc	a3,0x9
ffffffffc0204256:	be668693          	addi	a3,a3,-1050 # ffffffffc020ce38 <default_pmm_manager+0x998>
ffffffffc020425a:	00007617          	auipc	a2,0x7
ffffffffc020425e:	75e60613          	addi	a2,a2,1886 # ffffffffc020b9b8 <commands+0x210>
ffffffffc0204262:	14a00593          	li	a1,330
ffffffffc0204266:	00009517          	auipc	a0,0x9
ffffffffc020426a:	a7a50513          	addi	a0,a0,-1414 # ffffffffc020cce0 <default_pmm_manager+0x840>
ffffffffc020426e:	a30fc0ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc0204272:	00009697          	auipc	a3,0x9
ffffffffc0204276:	af668693          	addi	a3,a3,-1290 # ffffffffc020cd68 <default_pmm_manager+0x8c8>
ffffffffc020427a:	00007617          	auipc	a2,0x7
ffffffffc020427e:	73e60613          	addi	a2,a2,1854 # ffffffffc020b9b8 <commands+0x210>
ffffffffc0204282:	12400593          	li	a1,292
ffffffffc0204286:	00009517          	auipc	a0,0x9
ffffffffc020428a:	a5a50513          	addi	a0,a0,-1446 # ffffffffc020cce0 <default_pmm_manager+0x840>
ffffffffc020428e:	a10fc0ef          	jal	ra,ffffffffc020049e <__panic>

ffffffffc0204292 <user_mem_check>:
ffffffffc0204292:	7179                	addi	sp,sp,-48
ffffffffc0204294:	f022                	sd	s0,32(sp)
ffffffffc0204296:	f406                	sd	ra,40(sp)
ffffffffc0204298:	ec26                	sd	s1,24(sp)
ffffffffc020429a:	e84a                	sd	s2,16(sp)
ffffffffc020429c:	e44e                	sd	s3,8(sp)
ffffffffc020429e:	e052                	sd	s4,0(sp)
ffffffffc02042a0:	842e                	mv	s0,a1
ffffffffc02042a2:	c135                	beqz	a0,ffffffffc0204306 <user_mem_check+0x74>
ffffffffc02042a4:	002007b7          	lui	a5,0x200
ffffffffc02042a8:	04f5e663          	bltu	a1,a5,ffffffffc02042f4 <user_mem_check+0x62>
ffffffffc02042ac:	00c584b3          	add	s1,a1,a2
ffffffffc02042b0:	0495f263          	bgeu	a1,s1,ffffffffc02042f4 <user_mem_check+0x62>
ffffffffc02042b4:	4785                	li	a5,1
ffffffffc02042b6:	07fe                	slli	a5,a5,0x1f
ffffffffc02042b8:	0297ee63          	bltu	a5,s1,ffffffffc02042f4 <user_mem_check+0x62>
ffffffffc02042bc:	892a                	mv	s2,a0
ffffffffc02042be:	89b6                	mv	s3,a3
ffffffffc02042c0:	6a05                	lui	s4,0x1
ffffffffc02042c2:	a821                	j	ffffffffc02042da <user_mem_check+0x48>
ffffffffc02042c4:	0027f693          	andi	a3,a5,2
ffffffffc02042c8:	9752                	add	a4,a4,s4
ffffffffc02042ca:	8ba1                	andi	a5,a5,8
ffffffffc02042cc:	c685                	beqz	a3,ffffffffc02042f4 <user_mem_check+0x62>
ffffffffc02042ce:	c399                	beqz	a5,ffffffffc02042d4 <user_mem_check+0x42>
ffffffffc02042d0:	02e46263          	bltu	s0,a4,ffffffffc02042f4 <user_mem_check+0x62>
ffffffffc02042d4:	6900                	ld	s0,16(a0)
ffffffffc02042d6:	04947663          	bgeu	s0,s1,ffffffffc0204322 <user_mem_check+0x90>
ffffffffc02042da:	85a2                	mv	a1,s0
ffffffffc02042dc:	854a                	mv	a0,s2
ffffffffc02042de:	969ff0ef          	jal	ra,ffffffffc0203c46 <find_vma>
ffffffffc02042e2:	c909                	beqz	a0,ffffffffc02042f4 <user_mem_check+0x62>
ffffffffc02042e4:	6518                	ld	a4,8(a0)
ffffffffc02042e6:	00e46763          	bltu	s0,a4,ffffffffc02042f4 <user_mem_check+0x62>
ffffffffc02042ea:	4d1c                	lw	a5,24(a0)
ffffffffc02042ec:	fc099ce3          	bnez	s3,ffffffffc02042c4 <user_mem_check+0x32>
ffffffffc02042f0:	8b85                	andi	a5,a5,1
ffffffffc02042f2:	f3ed                	bnez	a5,ffffffffc02042d4 <user_mem_check+0x42>
ffffffffc02042f4:	4501                	li	a0,0
ffffffffc02042f6:	70a2                	ld	ra,40(sp)
ffffffffc02042f8:	7402                	ld	s0,32(sp)
ffffffffc02042fa:	64e2                	ld	s1,24(sp)
ffffffffc02042fc:	6942                	ld	s2,16(sp)
ffffffffc02042fe:	69a2                	ld	s3,8(sp)
ffffffffc0204300:	6a02                	ld	s4,0(sp)
ffffffffc0204302:	6145                	addi	sp,sp,48
ffffffffc0204304:	8082                	ret
ffffffffc0204306:	c02007b7          	lui	a5,0xc0200
ffffffffc020430a:	4501                	li	a0,0
ffffffffc020430c:	fef5e5e3          	bltu	a1,a5,ffffffffc02042f6 <user_mem_check+0x64>
ffffffffc0204310:	962e                	add	a2,a2,a1
ffffffffc0204312:	fec5f2e3          	bgeu	a1,a2,ffffffffc02042f6 <user_mem_check+0x64>
ffffffffc0204316:	c8000537          	lui	a0,0xc8000
ffffffffc020431a:	0505                	addi	a0,a0,1
ffffffffc020431c:	00a63533          	sltu	a0,a2,a0
ffffffffc0204320:	bfd9                	j	ffffffffc02042f6 <user_mem_check+0x64>
ffffffffc0204322:	4505                	li	a0,1
ffffffffc0204324:	bfc9                	j	ffffffffc02042f6 <user_mem_check+0x64>

ffffffffc0204326 <copy_from_user>:
ffffffffc0204326:	1101                	addi	sp,sp,-32
ffffffffc0204328:	e822                	sd	s0,16(sp)
ffffffffc020432a:	e426                	sd	s1,8(sp)
ffffffffc020432c:	8432                	mv	s0,a2
ffffffffc020432e:	84b6                	mv	s1,a3
ffffffffc0204330:	e04a                	sd	s2,0(sp)
ffffffffc0204332:	86ba                	mv	a3,a4
ffffffffc0204334:	892e                	mv	s2,a1
ffffffffc0204336:	8626                	mv	a2,s1
ffffffffc0204338:	85a2                	mv	a1,s0
ffffffffc020433a:	ec06                	sd	ra,24(sp)
ffffffffc020433c:	f57ff0ef          	jal	ra,ffffffffc0204292 <user_mem_check>
ffffffffc0204340:	c519                	beqz	a0,ffffffffc020434e <copy_from_user+0x28>
ffffffffc0204342:	8626                	mv	a2,s1
ffffffffc0204344:	85a2                	mv	a1,s0
ffffffffc0204346:	854a                	mv	a0,s2
ffffffffc0204348:	1de070ef          	jal	ra,ffffffffc020b526 <memcpy>
ffffffffc020434c:	4505                	li	a0,1
ffffffffc020434e:	60e2                	ld	ra,24(sp)
ffffffffc0204350:	6442                	ld	s0,16(sp)
ffffffffc0204352:	64a2                	ld	s1,8(sp)
ffffffffc0204354:	6902                	ld	s2,0(sp)
ffffffffc0204356:	6105                	addi	sp,sp,32
ffffffffc0204358:	8082                	ret

ffffffffc020435a <copy_to_user>:
ffffffffc020435a:	1101                	addi	sp,sp,-32
ffffffffc020435c:	e822                	sd	s0,16(sp)
ffffffffc020435e:	8436                	mv	s0,a3
ffffffffc0204360:	e04a                	sd	s2,0(sp)
ffffffffc0204362:	4685                	li	a3,1
ffffffffc0204364:	8932                	mv	s2,a2
ffffffffc0204366:	8622                	mv	a2,s0
ffffffffc0204368:	e426                	sd	s1,8(sp)
ffffffffc020436a:	ec06                	sd	ra,24(sp)
ffffffffc020436c:	84ae                	mv	s1,a1
ffffffffc020436e:	f25ff0ef          	jal	ra,ffffffffc0204292 <user_mem_check>
ffffffffc0204372:	c519                	beqz	a0,ffffffffc0204380 <copy_to_user+0x26>
ffffffffc0204374:	8622                	mv	a2,s0
ffffffffc0204376:	85ca                	mv	a1,s2
ffffffffc0204378:	8526                	mv	a0,s1
ffffffffc020437a:	1ac070ef          	jal	ra,ffffffffc020b526 <memcpy>
ffffffffc020437e:	4505                	li	a0,1
ffffffffc0204380:	60e2                	ld	ra,24(sp)
ffffffffc0204382:	6442                	ld	s0,16(sp)
ffffffffc0204384:	64a2                	ld	s1,8(sp)
ffffffffc0204386:	6902                	ld	s2,0(sp)
ffffffffc0204388:	6105                	addi	sp,sp,32
ffffffffc020438a:	8082                	ret

ffffffffc020438c <copy_string>:
ffffffffc020438c:	7139                	addi	sp,sp,-64
ffffffffc020438e:	ec4e                	sd	s3,24(sp)
ffffffffc0204390:	6985                	lui	s3,0x1
ffffffffc0204392:	99b2                	add	s3,s3,a2
ffffffffc0204394:	77fd                	lui	a5,0xfffff
ffffffffc0204396:	00f9f9b3          	and	s3,s3,a5
ffffffffc020439a:	f426                	sd	s1,40(sp)
ffffffffc020439c:	f04a                	sd	s2,32(sp)
ffffffffc020439e:	e852                	sd	s4,16(sp)
ffffffffc02043a0:	e456                	sd	s5,8(sp)
ffffffffc02043a2:	fc06                	sd	ra,56(sp)
ffffffffc02043a4:	f822                	sd	s0,48(sp)
ffffffffc02043a6:	84b2                	mv	s1,a2
ffffffffc02043a8:	8aaa                	mv	s5,a0
ffffffffc02043aa:	8a2e                	mv	s4,a1
ffffffffc02043ac:	8936                	mv	s2,a3
ffffffffc02043ae:	40c989b3          	sub	s3,s3,a2
ffffffffc02043b2:	a015                	j	ffffffffc02043d6 <copy_string+0x4a>
ffffffffc02043b4:	098070ef          	jal	ra,ffffffffc020b44c <strnlen>
ffffffffc02043b8:	87aa                	mv	a5,a0
ffffffffc02043ba:	85a6                	mv	a1,s1
ffffffffc02043bc:	8552                	mv	a0,s4
ffffffffc02043be:	8622                	mv	a2,s0
ffffffffc02043c0:	0487e363          	bltu	a5,s0,ffffffffc0204406 <copy_string+0x7a>
ffffffffc02043c4:	0329f763          	bgeu	s3,s2,ffffffffc02043f2 <copy_string+0x66>
ffffffffc02043c8:	15e070ef          	jal	ra,ffffffffc020b526 <memcpy>
ffffffffc02043cc:	9a22                	add	s4,s4,s0
ffffffffc02043ce:	94a2                	add	s1,s1,s0
ffffffffc02043d0:	40890933          	sub	s2,s2,s0
ffffffffc02043d4:	6985                	lui	s3,0x1
ffffffffc02043d6:	4681                	li	a3,0
ffffffffc02043d8:	85a6                	mv	a1,s1
ffffffffc02043da:	8556                	mv	a0,s5
ffffffffc02043dc:	844a                	mv	s0,s2
ffffffffc02043de:	0129f363          	bgeu	s3,s2,ffffffffc02043e4 <copy_string+0x58>
ffffffffc02043e2:	844e                	mv	s0,s3
ffffffffc02043e4:	8622                	mv	a2,s0
ffffffffc02043e6:	eadff0ef          	jal	ra,ffffffffc0204292 <user_mem_check>
ffffffffc02043ea:	87aa                	mv	a5,a0
ffffffffc02043ec:	85a2                	mv	a1,s0
ffffffffc02043ee:	8526                	mv	a0,s1
ffffffffc02043f0:	f3f1                	bnez	a5,ffffffffc02043b4 <copy_string+0x28>
ffffffffc02043f2:	4501                	li	a0,0
ffffffffc02043f4:	70e2                	ld	ra,56(sp)
ffffffffc02043f6:	7442                	ld	s0,48(sp)
ffffffffc02043f8:	74a2                	ld	s1,40(sp)
ffffffffc02043fa:	7902                	ld	s2,32(sp)
ffffffffc02043fc:	69e2                	ld	s3,24(sp)
ffffffffc02043fe:	6a42                	ld	s4,16(sp)
ffffffffc0204400:	6aa2                	ld	s5,8(sp)
ffffffffc0204402:	6121                	addi	sp,sp,64
ffffffffc0204404:	8082                	ret
ffffffffc0204406:	00178613          	addi	a2,a5,1 # fffffffffffff001 <end+0x3fd686f1>
ffffffffc020440a:	11c070ef          	jal	ra,ffffffffc020b526 <memcpy>
ffffffffc020440e:	4505                	li	a0,1
ffffffffc0204410:	b7d5                	j	ffffffffc02043f4 <copy_string+0x68>

ffffffffc0204412 <__down.constprop.0>:
ffffffffc0204412:	715d                	addi	sp,sp,-80
ffffffffc0204414:	e0a2                	sd	s0,64(sp)
ffffffffc0204416:	e486                	sd	ra,72(sp)
ffffffffc0204418:	fc26                	sd	s1,56(sp)
ffffffffc020441a:	842a                	mv	s0,a0
ffffffffc020441c:	100027f3          	csrr	a5,sstatus
ffffffffc0204420:	8b89                	andi	a5,a5,2
ffffffffc0204422:	ebb1                	bnez	a5,ffffffffc0204476 <__down.constprop.0+0x64>
ffffffffc0204424:	411c                	lw	a5,0(a0)
ffffffffc0204426:	00f05a63          	blez	a5,ffffffffc020443a <__down.constprop.0+0x28>
ffffffffc020442a:	37fd                	addiw	a5,a5,-1
ffffffffc020442c:	c11c                	sw	a5,0(a0)
ffffffffc020442e:	4501                	li	a0,0
ffffffffc0204430:	60a6                	ld	ra,72(sp)
ffffffffc0204432:	6406                	ld	s0,64(sp)
ffffffffc0204434:	74e2                	ld	s1,56(sp)
ffffffffc0204436:	6161                	addi	sp,sp,80
ffffffffc0204438:	8082                	ret
ffffffffc020443a:	00850413          	addi	s0,a0,8 # ffffffffc8000008 <end+0x7d696f8>
ffffffffc020443e:	0024                	addi	s1,sp,8
ffffffffc0204440:	10000613          	li	a2,256
ffffffffc0204444:	85a6                	mv	a1,s1
ffffffffc0204446:	8522                	mv	a0,s0
ffffffffc0204448:	2d8000ef          	jal	ra,ffffffffc0204720 <wait_current_set>
ffffffffc020444c:	6a5020ef          	jal	ra,ffffffffc02072f0 <schedule>
ffffffffc0204450:	100027f3          	csrr	a5,sstatus
ffffffffc0204454:	8b89                	andi	a5,a5,2
ffffffffc0204456:	efb9                	bnez	a5,ffffffffc02044b4 <__down.constprop.0+0xa2>
ffffffffc0204458:	8526                	mv	a0,s1
ffffffffc020445a:	19c000ef          	jal	ra,ffffffffc02045f6 <wait_in_queue>
ffffffffc020445e:	e531                	bnez	a0,ffffffffc02044aa <__down.constprop.0+0x98>
ffffffffc0204460:	4542                	lw	a0,16(sp)
ffffffffc0204462:	10000793          	li	a5,256
ffffffffc0204466:	fcf515e3          	bne	a0,a5,ffffffffc0204430 <__down.constprop.0+0x1e>
ffffffffc020446a:	60a6                	ld	ra,72(sp)
ffffffffc020446c:	6406                	ld	s0,64(sp)
ffffffffc020446e:	74e2                	ld	s1,56(sp)
ffffffffc0204470:	4501                	li	a0,0
ffffffffc0204472:	6161                	addi	sp,sp,80
ffffffffc0204474:	8082                	ret
ffffffffc0204476:	ffcfc0ef          	jal	ra,ffffffffc0200c72 <intr_disable>
ffffffffc020447a:	401c                	lw	a5,0(s0)
ffffffffc020447c:	00f05c63          	blez	a5,ffffffffc0204494 <__down.constprop.0+0x82>
ffffffffc0204480:	37fd                	addiw	a5,a5,-1
ffffffffc0204482:	c01c                	sw	a5,0(s0)
ffffffffc0204484:	fe8fc0ef          	jal	ra,ffffffffc0200c6c <intr_enable>
ffffffffc0204488:	60a6                	ld	ra,72(sp)
ffffffffc020448a:	6406                	ld	s0,64(sp)
ffffffffc020448c:	74e2                	ld	s1,56(sp)
ffffffffc020448e:	4501                	li	a0,0
ffffffffc0204490:	6161                	addi	sp,sp,80
ffffffffc0204492:	8082                	ret
ffffffffc0204494:	0421                	addi	s0,s0,8
ffffffffc0204496:	0024                	addi	s1,sp,8
ffffffffc0204498:	10000613          	li	a2,256
ffffffffc020449c:	85a6                	mv	a1,s1
ffffffffc020449e:	8522                	mv	a0,s0
ffffffffc02044a0:	280000ef          	jal	ra,ffffffffc0204720 <wait_current_set>
ffffffffc02044a4:	fc8fc0ef          	jal	ra,ffffffffc0200c6c <intr_enable>
ffffffffc02044a8:	b755                	j	ffffffffc020444c <__down.constprop.0+0x3a>
ffffffffc02044aa:	85a6                	mv	a1,s1
ffffffffc02044ac:	8522                	mv	a0,s0
ffffffffc02044ae:	0ee000ef          	jal	ra,ffffffffc020459c <wait_queue_del>
ffffffffc02044b2:	b77d                	j	ffffffffc0204460 <__down.constprop.0+0x4e>
ffffffffc02044b4:	fbefc0ef          	jal	ra,ffffffffc0200c72 <intr_disable>
ffffffffc02044b8:	8526                	mv	a0,s1
ffffffffc02044ba:	13c000ef          	jal	ra,ffffffffc02045f6 <wait_in_queue>
ffffffffc02044be:	e501                	bnez	a0,ffffffffc02044c6 <__down.constprop.0+0xb4>
ffffffffc02044c0:	facfc0ef          	jal	ra,ffffffffc0200c6c <intr_enable>
ffffffffc02044c4:	bf71                	j	ffffffffc0204460 <__down.constprop.0+0x4e>
ffffffffc02044c6:	85a6                	mv	a1,s1
ffffffffc02044c8:	8522                	mv	a0,s0
ffffffffc02044ca:	0d2000ef          	jal	ra,ffffffffc020459c <wait_queue_del>
ffffffffc02044ce:	bfcd                	j	ffffffffc02044c0 <__down.constprop.0+0xae>

ffffffffc02044d0 <__up.constprop.0>:
ffffffffc02044d0:	1101                	addi	sp,sp,-32
ffffffffc02044d2:	e822                	sd	s0,16(sp)
ffffffffc02044d4:	ec06                	sd	ra,24(sp)
ffffffffc02044d6:	e426                	sd	s1,8(sp)
ffffffffc02044d8:	e04a                	sd	s2,0(sp)
ffffffffc02044da:	842a                	mv	s0,a0
ffffffffc02044dc:	100027f3          	csrr	a5,sstatus
ffffffffc02044e0:	8b89                	andi	a5,a5,2
ffffffffc02044e2:	4901                	li	s2,0
ffffffffc02044e4:	eba1                	bnez	a5,ffffffffc0204534 <__up.constprop.0+0x64>
ffffffffc02044e6:	00840493          	addi	s1,s0,8
ffffffffc02044ea:	8526                	mv	a0,s1
ffffffffc02044ec:	0ee000ef          	jal	ra,ffffffffc02045da <wait_queue_first>
ffffffffc02044f0:	85aa                	mv	a1,a0
ffffffffc02044f2:	cd0d                	beqz	a0,ffffffffc020452c <__up.constprop.0+0x5c>
ffffffffc02044f4:	6118                	ld	a4,0(a0)
ffffffffc02044f6:	10000793          	li	a5,256
ffffffffc02044fa:	0ec72703          	lw	a4,236(a4)
ffffffffc02044fe:	02f71f63          	bne	a4,a5,ffffffffc020453c <__up.constprop.0+0x6c>
ffffffffc0204502:	4685                	li	a3,1
ffffffffc0204504:	10000613          	li	a2,256
ffffffffc0204508:	8526                	mv	a0,s1
ffffffffc020450a:	0fa000ef          	jal	ra,ffffffffc0204604 <wakeup_wait>
ffffffffc020450e:	00091863          	bnez	s2,ffffffffc020451e <__up.constprop.0+0x4e>
ffffffffc0204512:	60e2                	ld	ra,24(sp)
ffffffffc0204514:	6442                	ld	s0,16(sp)
ffffffffc0204516:	64a2                	ld	s1,8(sp)
ffffffffc0204518:	6902                	ld	s2,0(sp)
ffffffffc020451a:	6105                	addi	sp,sp,32
ffffffffc020451c:	8082                	ret
ffffffffc020451e:	6442                	ld	s0,16(sp)
ffffffffc0204520:	60e2                	ld	ra,24(sp)
ffffffffc0204522:	64a2                	ld	s1,8(sp)
ffffffffc0204524:	6902                	ld	s2,0(sp)
ffffffffc0204526:	6105                	addi	sp,sp,32
ffffffffc0204528:	f44fc06f          	j	ffffffffc0200c6c <intr_enable>
ffffffffc020452c:	401c                	lw	a5,0(s0)
ffffffffc020452e:	2785                	addiw	a5,a5,1
ffffffffc0204530:	c01c                	sw	a5,0(s0)
ffffffffc0204532:	bff1                	j	ffffffffc020450e <__up.constprop.0+0x3e>
ffffffffc0204534:	f3efc0ef          	jal	ra,ffffffffc0200c72 <intr_disable>
ffffffffc0204538:	4905                	li	s2,1
ffffffffc020453a:	b775                	j	ffffffffc02044e6 <__up.constprop.0+0x16>
ffffffffc020453c:	00009697          	auipc	a3,0x9
ffffffffc0204540:	a0468693          	addi	a3,a3,-1532 # ffffffffc020cf40 <default_pmm_manager+0xaa0>
ffffffffc0204544:	00007617          	auipc	a2,0x7
ffffffffc0204548:	47460613          	addi	a2,a2,1140 # ffffffffc020b9b8 <commands+0x210>
ffffffffc020454c:	45e5                	li	a1,25
ffffffffc020454e:	00009517          	auipc	a0,0x9
ffffffffc0204552:	a1a50513          	addi	a0,a0,-1510 # ffffffffc020cf68 <default_pmm_manager+0xac8>
ffffffffc0204556:	f49fb0ef          	jal	ra,ffffffffc020049e <__panic>

ffffffffc020455a <sem_init>:
ffffffffc020455a:	c10c                	sw	a1,0(a0)
ffffffffc020455c:	0521                	addi	a0,a0,8
ffffffffc020455e:	a825                	j	ffffffffc0204596 <wait_queue_init>

ffffffffc0204560 <up>:
ffffffffc0204560:	f71ff06f          	j	ffffffffc02044d0 <__up.constprop.0>

ffffffffc0204564 <down>:
ffffffffc0204564:	1141                	addi	sp,sp,-16
ffffffffc0204566:	e406                	sd	ra,8(sp)
ffffffffc0204568:	eabff0ef          	jal	ra,ffffffffc0204412 <__down.constprop.0>
ffffffffc020456c:	2501                	sext.w	a0,a0
ffffffffc020456e:	e501                	bnez	a0,ffffffffc0204576 <down+0x12>
ffffffffc0204570:	60a2                	ld	ra,8(sp)
ffffffffc0204572:	0141                	addi	sp,sp,16
ffffffffc0204574:	8082                	ret
ffffffffc0204576:	00009697          	auipc	a3,0x9
ffffffffc020457a:	a0268693          	addi	a3,a3,-1534 # ffffffffc020cf78 <default_pmm_manager+0xad8>
ffffffffc020457e:	00007617          	auipc	a2,0x7
ffffffffc0204582:	43a60613          	addi	a2,a2,1082 # ffffffffc020b9b8 <commands+0x210>
ffffffffc0204586:	04000593          	li	a1,64
ffffffffc020458a:	00009517          	auipc	a0,0x9
ffffffffc020458e:	9de50513          	addi	a0,a0,-1570 # ffffffffc020cf68 <default_pmm_manager+0xac8>
ffffffffc0204592:	f0dfb0ef          	jal	ra,ffffffffc020049e <__panic>

ffffffffc0204596 <wait_queue_init>:
ffffffffc0204596:	e508                	sd	a0,8(a0)
ffffffffc0204598:	e108                	sd	a0,0(a0)
ffffffffc020459a:	8082                	ret

ffffffffc020459c <wait_queue_del>:
ffffffffc020459c:	7198                	ld	a4,32(a1)
ffffffffc020459e:	01858793          	addi	a5,a1,24
ffffffffc02045a2:	00e78b63          	beq	a5,a4,ffffffffc02045b8 <wait_queue_del+0x1c>
ffffffffc02045a6:	6994                	ld	a3,16(a1)
ffffffffc02045a8:	00a69863          	bne	a3,a0,ffffffffc02045b8 <wait_queue_del+0x1c>
ffffffffc02045ac:	6d94                	ld	a3,24(a1)
ffffffffc02045ae:	e698                	sd	a4,8(a3)
ffffffffc02045b0:	e314                	sd	a3,0(a4)
ffffffffc02045b2:	f19c                	sd	a5,32(a1)
ffffffffc02045b4:	ed9c                	sd	a5,24(a1)
ffffffffc02045b6:	8082                	ret
ffffffffc02045b8:	1141                	addi	sp,sp,-16
ffffffffc02045ba:	00009697          	auipc	a3,0x9
ffffffffc02045be:	a1e68693          	addi	a3,a3,-1506 # ffffffffc020cfd8 <default_pmm_manager+0xb38>
ffffffffc02045c2:	00007617          	auipc	a2,0x7
ffffffffc02045c6:	3f660613          	addi	a2,a2,1014 # ffffffffc020b9b8 <commands+0x210>
ffffffffc02045ca:	45f1                	li	a1,28
ffffffffc02045cc:	00009517          	auipc	a0,0x9
ffffffffc02045d0:	9f450513          	addi	a0,a0,-1548 # ffffffffc020cfc0 <default_pmm_manager+0xb20>
ffffffffc02045d4:	e406                	sd	ra,8(sp)
ffffffffc02045d6:	ec9fb0ef          	jal	ra,ffffffffc020049e <__panic>

ffffffffc02045da <wait_queue_first>:
ffffffffc02045da:	651c                	ld	a5,8(a0)
ffffffffc02045dc:	00f50563          	beq	a0,a5,ffffffffc02045e6 <wait_queue_first+0xc>
ffffffffc02045e0:	fe878513          	addi	a0,a5,-24
ffffffffc02045e4:	8082                	ret
ffffffffc02045e6:	4501                	li	a0,0
ffffffffc02045e8:	8082                	ret

ffffffffc02045ea <wait_queue_empty>:
ffffffffc02045ea:	651c                	ld	a5,8(a0)
ffffffffc02045ec:	40a78533          	sub	a0,a5,a0
ffffffffc02045f0:	00153513          	seqz	a0,a0
ffffffffc02045f4:	8082                	ret

ffffffffc02045f6 <wait_in_queue>:
ffffffffc02045f6:	711c                	ld	a5,32(a0)
ffffffffc02045f8:	0561                	addi	a0,a0,24
ffffffffc02045fa:	40a78533          	sub	a0,a5,a0
ffffffffc02045fe:	00a03533          	snez	a0,a0
ffffffffc0204602:	8082                	ret

ffffffffc0204604 <wakeup_wait>:
ffffffffc0204604:	e689                	bnez	a3,ffffffffc020460e <wakeup_wait+0xa>
ffffffffc0204606:	6188                	ld	a0,0(a1)
ffffffffc0204608:	c590                	sw	a2,8(a1)
ffffffffc020460a:	4350206f          	j	ffffffffc020723e <wakeup_proc>
ffffffffc020460e:	7198                	ld	a4,32(a1)
ffffffffc0204610:	01858793          	addi	a5,a1,24
ffffffffc0204614:	00e78e63          	beq	a5,a4,ffffffffc0204630 <wakeup_wait+0x2c>
ffffffffc0204618:	6994                	ld	a3,16(a1)
ffffffffc020461a:	00d51b63          	bne	a0,a3,ffffffffc0204630 <wakeup_wait+0x2c>
ffffffffc020461e:	6d94                	ld	a3,24(a1)
ffffffffc0204620:	6188                	ld	a0,0(a1)
ffffffffc0204622:	e698                	sd	a4,8(a3)
ffffffffc0204624:	e314                	sd	a3,0(a4)
ffffffffc0204626:	f19c                	sd	a5,32(a1)
ffffffffc0204628:	ed9c                	sd	a5,24(a1)
ffffffffc020462a:	c590                	sw	a2,8(a1)
ffffffffc020462c:	4130206f          	j	ffffffffc020723e <wakeup_proc>
ffffffffc0204630:	1141                	addi	sp,sp,-16
ffffffffc0204632:	00009697          	auipc	a3,0x9
ffffffffc0204636:	9a668693          	addi	a3,a3,-1626 # ffffffffc020cfd8 <default_pmm_manager+0xb38>
ffffffffc020463a:	00007617          	auipc	a2,0x7
ffffffffc020463e:	37e60613          	addi	a2,a2,894 # ffffffffc020b9b8 <commands+0x210>
ffffffffc0204642:	45f1                	li	a1,28
ffffffffc0204644:	00009517          	auipc	a0,0x9
ffffffffc0204648:	97c50513          	addi	a0,a0,-1668 # ffffffffc020cfc0 <default_pmm_manager+0xb20>
ffffffffc020464c:	e406                	sd	ra,8(sp)
ffffffffc020464e:	e51fb0ef          	jal	ra,ffffffffc020049e <__panic>

ffffffffc0204652 <wakeup_queue>:
ffffffffc0204652:	651c                	ld	a5,8(a0)
ffffffffc0204654:	0ca78563          	beq	a5,a0,ffffffffc020471e <wakeup_queue+0xcc>
ffffffffc0204658:	1101                	addi	sp,sp,-32
ffffffffc020465a:	e822                	sd	s0,16(sp)
ffffffffc020465c:	e426                	sd	s1,8(sp)
ffffffffc020465e:	e04a                	sd	s2,0(sp)
ffffffffc0204660:	ec06                	sd	ra,24(sp)
ffffffffc0204662:	84aa                	mv	s1,a0
ffffffffc0204664:	892e                	mv	s2,a1
ffffffffc0204666:	fe878413          	addi	s0,a5,-24
ffffffffc020466a:	e23d                	bnez	a2,ffffffffc02046d0 <wakeup_queue+0x7e>
ffffffffc020466c:	6008                	ld	a0,0(s0)
ffffffffc020466e:	01242423          	sw	s2,8(s0)
ffffffffc0204672:	3cd020ef          	jal	ra,ffffffffc020723e <wakeup_proc>
ffffffffc0204676:	701c                	ld	a5,32(s0)
ffffffffc0204678:	01840713          	addi	a4,s0,24
ffffffffc020467c:	02e78463          	beq	a5,a4,ffffffffc02046a4 <wakeup_queue+0x52>
ffffffffc0204680:	6818                	ld	a4,16(s0)
ffffffffc0204682:	02e49163          	bne	s1,a4,ffffffffc02046a4 <wakeup_queue+0x52>
ffffffffc0204686:	02f48f63          	beq	s1,a5,ffffffffc02046c4 <wakeup_queue+0x72>
ffffffffc020468a:	fe87b503          	ld	a0,-24(a5)
ffffffffc020468e:	ff27a823          	sw	s2,-16(a5)
ffffffffc0204692:	fe878413          	addi	s0,a5,-24
ffffffffc0204696:	3a9020ef          	jal	ra,ffffffffc020723e <wakeup_proc>
ffffffffc020469a:	701c                	ld	a5,32(s0)
ffffffffc020469c:	01840713          	addi	a4,s0,24
ffffffffc02046a0:	fee790e3          	bne	a5,a4,ffffffffc0204680 <wakeup_queue+0x2e>
ffffffffc02046a4:	00009697          	auipc	a3,0x9
ffffffffc02046a8:	93468693          	addi	a3,a3,-1740 # ffffffffc020cfd8 <default_pmm_manager+0xb38>
ffffffffc02046ac:	00007617          	auipc	a2,0x7
ffffffffc02046b0:	30c60613          	addi	a2,a2,780 # ffffffffc020b9b8 <commands+0x210>
ffffffffc02046b4:	02200593          	li	a1,34
ffffffffc02046b8:	00009517          	auipc	a0,0x9
ffffffffc02046bc:	90850513          	addi	a0,a0,-1784 # ffffffffc020cfc0 <default_pmm_manager+0xb20>
ffffffffc02046c0:	ddffb0ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc02046c4:	60e2                	ld	ra,24(sp)
ffffffffc02046c6:	6442                	ld	s0,16(sp)
ffffffffc02046c8:	64a2                	ld	s1,8(sp)
ffffffffc02046ca:	6902                	ld	s2,0(sp)
ffffffffc02046cc:	6105                	addi	sp,sp,32
ffffffffc02046ce:	8082                	ret
ffffffffc02046d0:	6798                	ld	a4,8(a5)
ffffffffc02046d2:	02f70763          	beq	a4,a5,ffffffffc0204700 <wakeup_queue+0xae>
ffffffffc02046d6:	6814                	ld	a3,16(s0)
ffffffffc02046d8:	02d49463          	bne	s1,a3,ffffffffc0204700 <wakeup_queue+0xae>
ffffffffc02046dc:	6c14                	ld	a3,24(s0)
ffffffffc02046de:	6008                	ld	a0,0(s0)
ffffffffc02046e0:	e698                	sd	a4,8(a3)
ffffffffc02046e2:	e314                	sd	a3,0(a4)
ffffffffc02046e4:	f01c                	sd	a5,32(s0)
ffffffffc02046e6:	ec1c                	sd	a5,24(s0)
ffffffffc02046e8:	01242423          	sw	s2,8(s0)
ffffffffc02046ec:	353020ef          	jal	ra,ffffffffc020723e <wakeup_proc>
ffffffffc02046f0:	6480                	ld	s0,8(s1)
ffffffffc02046f2:	fc8489e3          	beq	s1,s0,ffffffffc02046c4 <wakeup_queue+0x72>
ffffffffc02046f6:	6418                	ld	a4,8(s0)
ffffffffc02046f8:	87a2                	mv	a5,s0
ffffffffc02046fa:	1421                	addi	s0,s0,-24
ffffffffc02046fc:	fce79de3          	bne	a5,a4,ffffffffc02046d6 <wakeup_queue+0x84>
ffffffffc0204700:	00009697          	auipc	a3,0x9
ffffffffc0204704:	8d868693          	addi	a3,a3,-1832 # ffffffffc020cfd8 <default_pmm_manager+0xb38>
ffffffffc0204708:	00007617          	auipc	a2,0x7
ffffffffc020470c:	2b060613          	addi	a2,a2,688 # ffffffffc020b9b8 <commands+0x210>
ffffffffc0204710:	45f1                	li	a1,28
ffffffffc0204712:	00009517          	auipc	a0,0x9
ffffffffc0204716:	8ae50513          	addi	a0,a0,-1874 # ffffffffc020cfc0 <default_pmm_manager+0xb20>
ffffffffc020471a:	d85fb0ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc020471e:	8082                	ret

ffffffffc0204720 <wait_current_set>:
ffffffffc0204720:	00092797          	auipc	a5,0x92
ffffffffc0204724:	1a07b783          	ld	a5,416(a5) # ffffffffc02968c0 <current>
ffffffffc0204728:	c39d                	beqz	a5,ffffffffc020474e <wait_current_set+0x2e>
ffffffffc020472a:	01858713          	addi	a4,a1,24
ffffffffc020472e:	800006b7          	lui	a3,0x80000
ffffffffc0204732:	ed98                	sd	a4,24(a1)
ffffffffc0204734:	e19c                	sd	a5,0(a1)
ffffffffc0204736:	c594                	sw	a3,8(a1)
ffffffffc0204738:	4685                	li	a3,1
ffffffffc020473a:	c394                	sw	a3,0(a5)
ffffffffc020473c:	0ec7a623          	sw	a2,236(a5)
ffffffffc0204740:	611c                	ld	a5,0(a0)
ffffffffc0204742:	e988                	sd	a0,16(a1)
ffffffffc0204744:	e118                	sd	a4,0(a0)
ffffffffc0204746:	e798                	sd	a4,8(a5)
ffffffffc0204748:	f188                	sd	a0,32(a1)
ffffffffc020474a:	ed9c                	sd	a5,24(a1)
ffffffffc020474c:	8082                	ret
ffffffffc020474e:	1141                	addi	sp,sp,-16
ffffffffc0204750:	00009697          	auipc	a3,0x9
ffffffffc0204754:	8c868693          	addi	a3,a3,-1848 # ffffffffc020d018 <default_pmm_manager+0xb78>
ffffffffc0204758:	00007617          	auipc	a2,0x7
ffffffffc020475c:	26060613          	addi	a2,a2,608 # ffffffffc020b9b8 <commands+0x210>
ffffffffc0204760:	07400593          	li	a1,116
ffffffffc0204764:	00009517          	auipc	a0,0x9
ffffffffc0204768:	85c50513          	addi	a0,a0,-1956 # ffffffffc020cfc0 <default_pmm_manager+0xb20>
ffffffffc020476c:	e406                	sd	ra,8(sp)
ffffffffc020476e:	d31fb0ef          	jal	ra,ffffffffc020049e <__panic>

ffffffffc0204772 <get_fd_array.part.0>:
ffffffffc0204772:	1141                	addi	sp,sp,-16
ffffffffc0204774:	00009697          	auipc	a3,0x9
ffffffffc0204778:	8b468693          	addi	a3,a3,-1868 # ffffffffc020d028 <default_pmm_manager+0xb88>
ffffffffc020477c:	00007617          	auipc	a2,0x7
ffffffffc0204780:	23c60613          	addi	a2,a2,572 # ffffffffc020b9b8 <commands+0x210>
ffffffffc0204784:	45d1                	li	a1,20
ffffffffc0204786:	00009517          	auipc	a0,0x9
ffffffffc020478a:	8d250513          	addi	a0,a0,-1838 # ffffffffc020d058 <default_pmm_manager+0xbb8>
ffffffffc020478e:	e406                	sd	ra,8(sp)
ffffffffc0204790:	d0ffb0ef          	jal	ra,ffffffffc020049e <__panic>

ffffffffc0204794 <fd_array_alloc>:
ffffffffc0204794:	00092797          	auipc	a5,0x92
ffffffffc0204798:	12c7b783          	ld	a5,300(a5) # ffffffffc02968c0 <current>
ffffffffc020479c:	1487b783          	ld	a5,328(a5)
ffffffffc02047a0:	1141                	addi	sp,sp,-16
ffffffffc02047a2:	e406                	sd	ra,8(sp)
ffffffffc02047a4:	c3a5                	beqz	a5,ffffffffc0204804 <fd_array_alloc+0x70>
ffffffffc02047a6:	4b98                	lw	a4,16(a5)
ffffffffc02047a8:	04e05e63          	blez	a4,ffffffffc0204804 <fd_array_alloc+0x70>
ffffffffc02047ac:	775d                	lui	a4,0xffff7
ffffffffc02047ae:	ad970713          	addi	a4,a4,-1319 # ffffffffffff6ad9 <end+0x3fd601c9>
ffffffffc02047b2:	679c                	ld	a5,8(a5)
ffffffffc02047b4:	02e50863          	beq	a0,a4,ffffffffc02047e4 <fd_array_alloc+0x50>
ffffffffc02047b8:	04700713          	li	a4,71
ffffffffc02047bc:	04a76263          	bltu	a4,a0,ffffffffc0204800 <fd_array_alloc+0x6c>
ffffffffc02047c0:	00351713          	slli	a4,a0,0x3
ffffffffc02047c4:	40a70533          	sub	a0,a4,a0
ffffffffc02047c8:	050e                	slli	a0,a0,0x3
ffffffffc02047ca:	97aa                	add	a5,a5,a0
ffffffffc02047cc:	4398                	lw	a4,0(a5)
ffffffffc02047ce:	e71d                	bnez	a4,ffffffffc02047fc <fd_array_alloc+0x68>
ffffffffc02047d0:	5b88                	lw	a0,48(a5)
ffffffffc02047d2:	e91d                	bnez	a0,ffffffffc0204808 <fd_array_alloc+0x74>
ffffffffc02047d4:	4705                	li	a4,1
ffffffffc02047d6:	c398                	sw	a4,0(a5)
ffffffffc02047d8:	0207b423          	sd	zero,40(a5)
ffffffffc02047dc:	e19c                	sd	a5,0(a1)
ffffffffc02047de:	60a2                	ld	ra,8(sp)
ffffffffc02047e0:	0141                	addi	sp,sp,16
ffffffffc02047e2:	8082                	ret
ffffffffc02047e4:	6685                	lui	a3,0x1
ffffffffc02047e6:	fc068693          	addi	a3,a3,-64 # fc0 <_binary_bin_swap_img_size-0x6d40>
ffffffffc02047ea:	96be                	add	a3,a3,a5
ffffffffc02047ec:	4398                	lw	a4,0(a5)
ffffffffc02047ee:	d36d                	beqz	a4,ffffffffc02047d0 <fd_array_alloc+0x3c>
ffffffffc02047f0:	03878793          	addi	a5,a5,56
ffffffffc02047f4:	fef69ce3          	bne	a3,a5,ffffffffc02047ec <fd_array_alloc+0x58>
ffffffffc02047f8:	5529                	li	a0,-22
ffffffffc02047fa:	b7d5                	j	ffffffffc02047de <fd_array_alloc+0x4a>
ffffffffc02047fc:	5545                	li	a0,-15
ffffffffc02047fe:	b7c5                	j	ffffffffc02047de <fd_array_alloc+0x4a>
ffffffffc0204800:	5575                	li	a0,-3
ffffffffc0204802:	bff1                	j	ffffffffc02047de <fd_array_alloc+0x4a>
ffffffffc0204804:	f6fff0ef          	jal	ra,ffffffffc0204772 <get_fd_array.part.0>
ffffffffc0204808:	00009697          	auipc	a3,0x9
ffffffffc020480c:	86068693          	addi	a3,a3,-1952 # ffffffffc020d068 <default_pmm_manager+0xbc8>
ffffffffc0204810:	00007617          	auipc	a2,0x7
ffffffffc0204814:	1a860613          	addi	a2,a2,424 # ffffffffc020b9b8 <commands+0x210>
ffffffffc0204818:	03b00593          	li	a1,59
ffffffffc020481c:	00009517          	auipc	a0,0x9
ffffffffc0204820:	83c50513          	addi	a0,a0,-1988 # ffffffffc020d058 <default_pmm_manager+0xbb8>
ffffffffc0204824:	c7bfb0ef          	jal	ra,ffffffffc020049e <__panic>

ffffffffc0204828 <fd_array_free>:
ffffffffc0204828:	411c                	lw	a5,0(a0)
ffffffffc020482a:	1141                	addi	sp,sp,-16
ffffffffc020482c:	e022                	sd	s0,0(sp)
ffffffffc020482e:	e406                	sd	ra,8(sp)
ffffffffc0204830:	4705                	li	a4,1
ffffffffc0204832:	842a                	mv	s0,a0
ffffffffc0204834:	04e78063          	beq	a5,a4,ffffffffc0204874 <fd_array_free+0x4c>
ffffffffc0204838:	470d                	li	a4,3
ffffffffc020483a:	04e79563          	bne	a5,a4,ffffffffc0204884 <fd_array_free+0x5c>
ffffffffc020483e:	591c                	lw	a5,48(a0)
ffffffffc0204840:	c38d                	beqz	a5,ffffffffc0204862 <fd_array_free+0x3a>
ffffffffc0204842:	00009697          	auipc	a3,0x9
ffffffffc0204846:	82668693          	addi	a3,a3,-2010 # ffffffffc020d068 <default_pmm_manager+0xbc8>
ffffffffc020484a:	00007617          	auipc	a2,0x7
ffffffffc020484e:	16e60613          	addi	a2,a2,366 # ffffffffc020b9b8 <commands+0x210>
ffffffffc0204852:	04500593          	li	a1,69
ffffffffc0204856:	00009517          	auipc	a0,0x9
ffffffffc020485a:	80250513          	addi	a0,a0,-2046 # ffffffffc020d058 <default_pmm_manager+0xbb8>
ffffffffc020485e:	c41fb0ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc0204862:	7408                	ld	a0,40(s0)
ffffffffc0204864:	051030ef          	jal	ra,ffffffffc02080b4 <vfs_close>
ffffffffc0204868:	60a2                	ld	ra,8(sp)
ffffffffc020486a:	00042023          	sw	zero,0(s0)
ffffffffc020486e:	6402                	ld	s0,0(sp)
ffffffffc0204870:	0141                	addi	sp,sp,16
ffffffffc0204872:	8082                	ret
ffffffffc0204874:	591c                	lw	a5,48(a0)
ffffffffc0204876:	f7f1                	bnez	a5,ffffffffc0204842 <fd_array_free+0x1a>
ffffffffc0204878:	60a2                	ld	ra,8(sp)
ffffffffc020487a:	00042023          	sw	zero,0(s0)
ffffffffc020487e:	6402                	ld	s0,0(sp)
ffffffffc0204880:	0141                	addi	sp,sp,16
ffffffffc0204882:	8082                	ret
ffffffffc0204884:	00009697          	auipc	a3,0x9
ffffffffc0204888:	81c68693          	addi	a3,a3,-2020 # ffffffffc020d0a0 <default_pmm_manager+0xc00>
ffffffffc020488c:	00007617          	auipc	a2,0x7
ffffffffc0204890:	12c60613          	addi	a2,a2,300 # ffffffffc020b9b8 <commands+0x210>
ffffffffc0204894:	04400593          	li	a1,68
ffffffffc0204898:	00008517          	auipc	a0,0x8
ffffffffc020489c:	7c050513          	addi	a0,a0,1984 # ffffffffc020d058 <default_pmm_manager+0xbb8>
ffffffffc02048a0:	bfffb0ef          	jal	ra,ffffffffc020049e <__panic>

ffffffffc02048a4 <fd_array_release>:
ffffffffc02048a4:	4118                	lw	a4,0(a0)
ffffffffc02048a6:	1141                	addi	sp,sp,-16
ffffffffc02048a8:	e406                	sd	ra,8(sp)
ffffffffc02048aa:	4685                	li	a3,1
ffffffffc02048ac:	3779                	addiw	a4,a4,-2
ffffffffc02048ae:	04e6e063          	bltu	a3,a4,ffffffffc02048ee <fd_array_release+0x4a>
ffffffffc02048b2:	5918                	lw	a4,48(a0)
ffffffffc02048b4:	00e05d63          	blez	a4,ffffffffc02048ce <fd_array_release+0x2a>
ffffffffc02048b8:	fff7069b          	addiw	a3,a4,-1
ffffffffc02048bc:	d914                	sw	a3,48(a0)
ffffffffc02048be:	c681                	beqz	a3,ffffffffc02048c6 <fd_array_release+0x22>
ffffffffc02048c0:	60a2                	ld	ra,8(sp)
ffffffffc02048c2:	0141                	addi	sp,sp,16
ffffffffc02048c4:	8082                	ret
ffffffffc02048c6:	60a2                	ld	ra,8(sp)
ffffffffc02048c8:	0141                	addi	sp,sp,16
ffffffffc02048ca:	f5fff06f          	j	ffffffffc0204828 <fd_array_free>
ffffffffc02048ce:	00009697          	auipc	a3,0x9
ffffffffc02048d2:	84268693          	addi	a3,a3,-1982 # ffffffffc020d110 <default_pmm_manager+0xc70>
ffffffffc02048d6:	00007617          	auipc	a2,0x7
ffffffffc02048da:	0e260613          	addi	a2,a2,226 # ffffffffc020b9b8 <commands+0x210>
ffffffffc02048de:	05600593          	li	a1,86
ffffffffc02048e2:	00008517          	auipc	a0,0x8
ffffffffc02048e6:	77650513          	addi	a0,a0,1910 # ffffffffc020d058 <default_pmm_manager+0xbb8>
ffffffffc02048ea:	bb5fb0ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc02048ee:	00008697          	auipc	a3,0x8
ffffffffc02048f2:	7ea68693          	addi	a3,a3,2026 # ffffffffc020d0d8 <default_pmm_manager+0xc38>
ffffffffc02048f6:	00007617          	auipc	a2,0x7
ffffffffc02048fa:	0c260613          	addi	a2,a2,194 # ffffffffc020b9b8 <commands+0x210>
ffffffffc02048fe:	05500593          	li	a1,85
ffffffffc0204902:	00008517          	auipc	a0,0x8
ffffffffc0204906:	75650513          	addi	a0,a0,1878 # ffffffffc020d058 <default_pmm_manager+0xbb8>
ffffffffc020490a:	b95fb0ef          	jal	ra,ffffffffc020049e <__panic>

ffffffffc020490e <fd_array_open.part.0>:
ffffffffc020490e:	1141                	addi	sp,sp,-16
ffffffffc0204910:	00009697          	auipc	a3,0x9
ffffffffc0204914:	81868693          	addi	a3,a3,-2024 # ffffffffc020d128 <default_pmm_manager+0xc88>
ffffffffc0204918:	00007617          	auipc	a2,0x7
ffffffffc020491c:	0a060613          	addi	a2,a2,160 # ffffffffc020b9b8 <commands+0x210>
ffffffffc0204920:	05f00593          	li	a1,95
ffffffffc0204924:	00008517          	auipc	a0,0x8
ffffffffc0204928:	73450513          	addi	a0,a0,1844 # ffffffffc020d058 <default_pmm_manager+0xbb8>
ffffffffc020492c:	e406                	sd	ra,8(sp)
ffffffffc020492e:	b71fb0ef          	jal	ra,ffffffffc020049e <__panic>

ffffffffc0204932 <fd_array_init>:
ffffffffc0204932:	4781                	li	a5,0
ffffffffc0204934:	04800713          	li	a4,72
ffffffffc0204938:	cd1c                	sw	a5,24(a0)
ffffffffc020493a:	02052823          	sw	zero,48(a0)
ffffffffc020493e:	00052023          	sw	zero,0(a0)
ffffffffc0204942:	2785                	addiw	a5,a5,1
ffffffffc0204944:	03850513          	addi	a0,a0,56
ffffffffc0204948:	fee798e3          	bne	a5,a4,ffffffffc0204938 <fd_array_init+0x6>
ffffffffc020494c:	8082                	ret

ffffffffc020494e <fd_array_close>:
ffffffffc020494e:	4118                	lw	a4,0(a0)
ffffffffc0204950:	1141                	addi	sp,sp,-16
ffffffffc0204952:	e406                	sd	ra,8(sp)
ffffffffc0204954:	e022                	sd	s0,0(sp)
ffffffffc0204956:	4789                	li	a5,2
ffffffffc0204958:	04f71a63          	bne	a4,a5,ffffffffc02049ac <fd_array_close+0x5e>
ffffffffc020495c:	591c                	lw	a5,48(a0)
ffffffffc020495e:	842a                	mv	s0,a0
ffffffffc0204960:	02f05663          	blez	a5,ffffffffc020498c <fd_array_close+0x3e>
ffffffffc0204964:	37fd                	addiw	a5,a5,-1
ffffffffc0204966:	470d                	li	a4,3
ffffffffc0204968:	c118                	sw	a4,0(a0)
ffffffffc020496a:	d91c                	sw	a5,48(a0)
ffffffffc020496c:	0007871b          	sext.w	a4,a5
ffffffffc0204970:	c709                	beqz	a4,ffffffffc020497a <fd_array_close+0x2c>
ffffffffc0204972:	60a2                	ld	ra,8(sp)
ffffffffc0204974:	6402                	ld	s0,0(sp)
ffffffffc0204976:	0141                	addi	sp,sp,16
ffffffffc0204978:	8082                	ret
ffffffffc020497a:	7508                	ld	a0,40(a0)
ffffffffc020497c:	738030ef          	jal	ra,ffffffffc02080b4 <vfs_close>
ffffffffc0204980:	60a2                	ld	ra,8(sp)
ffffffffc0204982:	00042023          	sw	zero,0(s0)
ffffffffc0204986:	6402                	ld	s0,0(sp)
ffffffffc0204988:	0141                	addi	sp,sp,16
ffffffffc020498a:	8082                	ret
ffffffffc020498c:	00008697          	auipc	a3,0x8
ffffffffc0204990:	78468693          	addi	a3,a3,1924 # ffffffffc020d110 <default_pmm_manager+0xc70>
ffffffffc0204994:	00007617          	auipc	a2,0x7
ffffffffc0204998:	02460613          	addi	a2,a2,36 # ffffffffc020b9b8 <commands+0x210>
ffffffffc020499c:	06800593          	li	a1,104
ffffffffc02049a0:	00008517          	auipc	a0,0x8
ffffffffc02049a4:	6b850513          	addi	a0,a0,1720 # ffffffffc020d058 <default_pmm_manager+0xbb8>
ffffffffc02049a8:	af7fb0ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc02049ac:	00008697          	auipc	a3,0x8
ffffffffc02049b0:	6d468693          	addi	a3,a3,1748 # ffffffffc020d080 <default_pmm_manager+0xbe0>
ffffffffc02049b4:	00007617          	auipc	a2,0x7
ffffffffc02049b8:	00460613          	addi	a2,a2,4 # ffffffffc020b9b8 <commands+0x210>
ffffffffc02049bc:	06700593          	li	a1,103
ffffffffc02049c0:	00008517          	auipc	a0,0x8
ffffffffc02049c4:	69850513          	addi	a0,a0,1688 # ffffffffc020d058 <default_pmm_manager+0xbb8>
ffffffffc02049c8:	ad7fb0ef          	jal	ra,ffffffffc020049e <__panic>

ffffffffc02049cc <fd_array_dup>:
ffffffffc02049cc:	7179                	addi	sp,sp,-48
ffffffffc02049ce:	e84a                	sd	s2,16(sp)
ffffffffc02049d0:	00052903          	lw	s2,0(a0)
ffffffffc02049d4:	f406                	sd	ra,40(sp)
ffffffffc02049d6:	f022                	sd	s0,32(sp)
ffffffffc02049d8:	ec26                	sd	s1,24(sp)
ffffffffc02049da:	e44e                	sd	s3,8(sp)
ffffffffc02049dc:	4785                	li	a5,1
ffffffffc02049de:	04f91663          	bne	s2,a5,ffffffffc0204a2a <fd_array_dup+0x5e>
ffffffffc02049e2:	0005a983          	lw	s3,0(a1)
ffffffffc02049e6:	4789                	li	a5,2
ffffffffc02049e8:	04f99163          	bne	s3,a5,ffffffffc0204a2a <fd_array_dup+0x5e>
ffffffffc02049ec:	7584                	ld	s1,40(a1)
ffffffffc02049ee:	699c                	ld	a5,16(a1)
ffffffffc02049f0:	7194                	ld	a3,32(a1)
ffffffffc02049f2:	6598                	ld	a4,8(a1)
ffffffffc02049f4:	842a                	mv	s0,a0
ffffffffc02049f6:	e91c                	sd	a5,16(a0)
ffffffffc02049f8:	f114                	sd	a3,32(a0)
ffffffffc02049fa:	e518                	sd	a4,8(a0)
ffffffffc02049fc:	8526                	mv	a0,s1
ffffffffc02049fe:	615020ef          	jal	ra,ffffffffc0207812 <inode_ref_inc>
ffffffffc0204a02:	8526                	mv	a0,s1
ffffffffc0204a04:	61b020ef          	jal	ra,ffffffffc020781e <inode_open_inc>
ffffffffc0204a08:	401c                	lw	a5,0(s0)
ffffffffc0204a0a:	f404                	sd	s1,40(s0)
ffffffffc0204a0c:	03279f63          	bne	a5,s2,ffffffffc0204a4a <fd_array_dup+0x7e>
ffffffffc0204a10:	cc8d                	beqz	s1,ffffffffc0204a4a <fd_array_dup+0x7e>
ffffffffc0204a12:	581c                	lw	a5,48(s0)
ffffffffc0204a14:	01342023          	sw	s3,0(s0)
ffffffffc0204a18:	70a2                	ld	ra,40(sp)
ffffffffc0204a1a:	2785                	addiw	a5,a5,1
ffffffffc0204a1c:	d81c                	sw	a5,48(s0)
ffffffffc0204a1e:	7402                	ld	s0,32(sp)
ffffffffc0204a20:	64e2                	ld	s1,24(sp)
ffffffffc0204a22:	6942                	ld	s2,16(sp)
ffffffffc0204a24:	69a2                	ld	s3,8(sp)
ffffffffc0204a26:	6145                	addi	sp,sp,48
ffffffffc0204a28:	8082                	ret
ffffffffc0204a2a:	00008697          	auipc	a3,0x8
ffffffffc0204a2e:	72e68693          	addi	a3,a3,1838 # ffffffffc020d158 <default_pmm_manager+0xcb8>
ffffffffc0204a32:	00007617          	auipc	a2,0x7
ffffffffc0204a36:	f8660613          	addi	a2,a2,-122 # ffffffffc020b9b8 <commands+0x210>
ffffffffc0204a3a:	07300593          	li	a1,115
ffffffffc0204a3e:	00008517          	auipc	a0,0x8
ffffffffc0204a42:	61a50513          	addi	a0,a0,1562 # ffffffffc020d058 <default_pmm_manager+0xbb8>
ffffffffc0204a46:	a59fb0ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc0204a4a:	ec5ff0ef          	jal	ra,ffffffffc020490e <fd_array_open.part.0>

ffffffffc0204a4e <file_testfd>:
ffffffffc0204a4e:	04700793          	li	a5,71
ffffffffc0204a52:	04a7e263          	bltu	a5,a0,ffffffffc0204a96 <file_testfd+0x48>
ffffffffc0204a56:	00092797          	auipc	a5,0x92
ffffffffc0204a5a:	e6a7b783          	ld	a5,-406(a5) # ffffffffc02968c0 <current>
ffffffffc0204a5e:	1487b783          	ld	a5,328(a5)
ffffffffc0204a62:	cf85                	beqz	a5,ffffffffc0204a9a <file_testfd+0x4c>
ffffffffc0204a64:	4b98                	lw	a4,16(a5)
ffffffffc0204a66:	02e05a63          	blez	a4,ffffffffc0204a9a <file_testfd+0x4c>
ffffffffc0204a6a:	6798                	ld	a4,8(a5)
ffffffffc0204a6c:	00351793          	slli	a5,a0,0x3
ffffffffc0204a70:	8f89                	sub	a5,a5,a0
ffffffffc0204a72:	078e                	slli	a5,a5,0x3
ffffffffc0204a74:	97ba                	add	a5,a5,a4
ffffffffc0204a76:	4394                	lw	a3,0(a5)
ffffffffc0204a78:	4709                	li	a4,2
ffffffffc0204a7a:	00e69e63          	bne	a3,a4,ffffffffc0204a96 <file_testfd+0x48>
ffffffffc0204a7e:	4f98                	lw	a4,24(a5)
ffffffffc0204a80:	00a71b63          	bne	a4,a0,ffffffffc0204a96 <file_testfd+0x48>
ffffffffc0204a84:	c199                	beqz	a1,ffffffffc0204a8a <file_testfd+0x3c>
ffffffffc0204a86:	6788                	ld	a0,8(a5)
ffffffffc0204a88:	c901                	beqz	a0,ffffffffc0204a98 <file_testfd+0x4a>
ffffffffc0204a8a:	4505                	li	a0,1
ffffffffc0204a8c:	c611                	beqz	a2,ffffffffc0204a98 <file_testfd+0x4a>
ffffffffc0204a8e:	6b88                	ld	a0,16(a5)
ffffffffc0204a90:	00a03533          	snez	a0,a0
ffffffffc0204a94:	8082                	ret
ffffffffc0204a96:	4501                	li	a0,0
ffffffffc0204a98:	8082                	ret
ffffffffc0204a9a:	1141                	addi	sp,sp,-16
ffffffffc0204a9c:	e406                	sd	ra,8(sp)
ffffffffc0204a9e:	cd5ff0ef          	jal	ra,ffffffffc0204772 <get_fd_array.part.0>

ffffffffc0204aa2 <file_open>:
ffffffffc0204aa2:	711d                	addi	sp,sp,-96
ffffffffc0204aa4:	ec86                	sd	ra,88(sp)
ffffffffc0204aa6:	e8a2                	sd	s0,80(sp)
ffffffffc0204aa8:	e4a6                	sd	s1,72(sp)
ffffffffc0204aaa:	e0ca                	sd	s2,64(sp)
ffffffffc0204aac:	fc4e                	sd	s3,56(sp)
ffffffffc0204aae:	f852                	sd	s4,48(sp)
ffffffffc0204ab0:	0035f793          	andi	a5,a1,3
ffffffffc0204ab4:	470d                	li	a4,3
ffffffffc0204ab6:	0ce78163          	beq	a5,a4,ffffffffc0204b78 <file_open+0xd6>
ffffffffc0204aba:	078e                	slli	a5,a5,0x3
ffffffffc0204abc:	00009717          	auipc	a4,0x9
ffffffffc0204ac0:	90c70713          	addi	a4,a4,-1780 # ffffffffc020d3c8 <CSWTCH.79>
ffffffffc0204ac4:	892a                	mv	s2,a0
ffffffffc0204ac6:	00009697          	auipc	a3,0x9
ffffffffc0204aca:	8ea68693          	addi	a3,a3,-1814 # ffffffffc020d3b0 <CSWTCH.78>
ffffffffc0204ace:	755d                	lui	a0,0xffff7
ffffffffc0204ad0:	96be                	add	a3,a3,a5
ffffffffc0204ad2:	84ae                	mv	s1,a1
ffffffffc0204ad4:	97ba                	add	a5,a5,a4
ffffffffc0204ad6:	858a                	mv	a1,sp
ffffffffc0204ad8:	ad950513          	addi	a0,a0,-1319 # ffffffffffff6ad9 <end+0x3fd601c9>
ffffffffc0204adc:	0006ba03          	ld	s4,0(a3)
ffffffffc0204ae0:	0007b983          	ld	s3,0(a5)
ffffffffc0204ae4:	cb1ff0ef          	jal	ra,ffffffffc0204794 <fd_array_alloc>
ffffffffc0204ae8:	842a                	mv	s0,a0
ffffffffc0204aea:	c911                	beqz	a0,ffffffffc0204afe <file_open+0x5c>
ffffffffc0204aec:	60e6                	ld	ra,88(sp)
ffffffffc0204aee:	8522                	mv	a0,s0
ffffffffc0204af0:	6446                	ld	s0,80(sp)
ffffffffc0204af2:	64a6                	ld	s1,72(sp)
ffffffffc0204af4:	6906                	ld	s2,64(sp)
ffffffffc0204af6:	79e2                	ld	s3,56(sp)
ffffffffc0204af8:	7a42                	ld	s4,48(sp)
ffffffffc0204afa:	6125                	addi	sp,sp,96
ffffffffc0204afc:	8082                	ret
ffffffffc0204afe:	0030                	addi	a2,sp,8
ffffffffc0204b00:	85a6                	mv	a1,s1
ffffffffc0204b02:	854a                	mv	a0,s2
ffffffffc0204b04:	40a030ef          	jal	ra,ffffffffc0207f0e <vfs_open>
ffffffffc0204b08:	842a                	mv	s0,a0
ffffffffc0204b0a:	e13d                	bnez	a0,ffffffffc0204b70 <file_open+0xce>
ffffffffc0204b0c:	6782                	ld	a5,0(sp)
ffffffffc0204b0e:	0204f493          	andi	s1,s1,32
ffffffffc0204b12:	6422                	ld	s0,8(sp)
ffffffffc0204b14:	0207b023          	sd	zero,32(a5)
ffffffffc0204b18:	c885                	beqz	s1,ffffffffc0204b48 <file_open+0xa6>
ffffffffc0204b1a:	c03d                	beqz	s0,ffffffffc0204b80 <file_open+0xde>
ffffffffc0204b1c:	783c                	ld	a5,112(s0)
ffffffffc0204b1e:	c3ad                	beqz	a5,ffffffffc0204b80 <file_open+0xde>
ffffffffc0204b20:	779c                	ld	a5,40(a5)
ffffffffc0204b22:	cfb9                	beqz	a5,ffffffffc0204b80 <file_open+0xde>
ffffffffc0204b24:	8522                	mv	a0,s0
ffffffffc0204b26:	00008597          	auipc	a1,0x8
ffffffffc0204b2a:	6ba58593          	addi	a1,a1,1722 # ffffffffc020d1e0 <default_pmm_manager+0xd40>
ffffffffc0204b2e:	4fd020ef          	jal	ra,ffffffffc020782a <inode_check>
ffffffffc0204b32:	783c                	ld	a5,112(s0)
ffffffffc0204b34:	6522                	ld	a0,8(sp)
ffffffffc0204b36:	080c                	addi	a1,sp,16
ffffffffc0204b38:	779c                	ld	a5,40(a5)
ffffffffc0204b3a:	9782                	jalr	a5
ffffffffc0204b3c:	842a                	mv	s0,a0
ffffffffc0204b3e:	e515                	bnez	a0,ffffffffc0204b6a <file_open+0xc8>
ffffffffc0204b40:	6782                	ld	a5,0(sp)
ffffffffc0204b42:	7722                	ld	a4,40(sp)
ffffffffc0204b44:	6422                	ld	s0,8(sp)
ffffffffc0204b46:	f398                	sd	a4,32(a5)
ffffffffc0204b48:	4394                	lw	a3,0(a5)
ffffffffc0204b4a:	f780                	sd	s0,40(a5)
ffffffffc0204b4c:	0147b423          	sd	s4,8(a5)
ffffffffc0204b50:	0137b823          	sd	s3,16(a5)
ffffffffc0204b54:	4705                	li	a4,1
ffffffffc0204b56:	02e69363          	bne	a3,a4,ffffffffc0204b7c <file_open+0xda>
ffffffffc0204b5a:	c00d                	beqz	s0,ffffffffc0204b7c <file_open+0xda>
ffffffffc0204b5c:	5b98                	lw	a4,48(a5)
ffffffffc0204b5e:	4689                	li	a3,2
ffffffffc0204b60:	4f80                	lw	s0,24(a5)
ffffffffc0204b62:	2705                	addiw	a4,a4,1
ffffffffc0204b64:	c394                	sw	a3,0(a5)
ffffffffc0204b66:	db98                	sw	a4,48(a5)
ffffffffc0204b68:	b751                	j	ffffffffc0204aec <file_open+0x4a>
ffffffffc0204b6a:	6522                	ld	a0,8(sp)
ffffffffc0204b6c:	548030ef          	jal	ra,ffffffffc02080b4 <vfs_close>
ffffffffc0204b70:	6502                	ld	a0,0(sp)
ffffffffc0204b72:	cb7ff0ef          	jal	ra,ffffffffc0204828 <fd_array_free>
ffffffffc0204b76:	bf9d                	j	ffffffffc0204aec <file_open+0x4a>
ffffffffc0204b78:	5475                	li	s0,-3
ffffffffc0204b7a:	bf8d                	j	ffffffffc0204aec <file_open+0x4a>
ffffffffc0204b7c:	d93ff0ef          	jal	ra,ffffffffc020490e <fd_array_open.part.0>
ffffffffc0204b80:	00008697          	auipc	a3,0x8
ffffffffc0204b84:	61068693          	addi	a3,a3,1552 # ffffffffc020d190 <default_pmm_manager+0xcf0>
ffffffffc0204b88:	00007617          	auipc	a2,0x7
ffffffffc0204b8c:	e3060613          	addi	a2,a2,-464 # ffffffffc020b9b8 <commands+0x210>
ffffffffc0204b90:	0b500593          	li	a1,181
ffffffffc0204b94:	00008517          	auipc	a0,0x8
ffffffffc0204b98:	4c450513          	addi	a0,a0,1220 # ffffffffc020d058 <default_pmm_manager+0xbb8>
ffffffffc0204b9c:	903fb0ef          	jal	ra,ffffffffc020049e <__panic>

ffffffffc0204ba0 <file_close>:
ffffffffc0204ba0:	04700713          	li	a4,71
ffffffffc0204ba4:	04a76563          	bltu	a4,a0,ffffffffc0204bee <file_close+0x4e>
ffffffffc0204ba8:	00092717          	auipc	a4,0x92
ffffffffc0204bac:	d1873703          	ld	a4,-744(a4) # ffffffffc02968c0 <current>
ffffffffc0204bb0:	14873703          	ld	a4,328(a4)
ffffffffc0204bb4:	1141                	addi	sp,sp,-16
ffffffffc0204bb6:	e406                	sd	ra,8(sp)
ffffffffc0204bb8:	cf0d                	beqz	a4,ffffffffc0204bf2 <file_close+0x52>
ffffffffc0204bba:	4b14                	lw	a3,16(a4)
ffffffffc0204bbc:	02d05b63          	blez	a3,ffffffffc0204bf2 <file_close+0x52>
ffffffffc0204bc0:	6718                	ld	a4,8(a4)
ffffffffc0204bc2:	87aa                	mv	a5,a0
ffffffffc0204bc4:	050e                	slli	a0,a0,0x3
ffffffffc0204bc6:	8d1d                	sub	a0,a0,a5
ffffffffc0204bc8:	050e                	slli	a0,a0,0x3
ffffffffc0204bca:	953a                	add	a0,a0,a4
ffffffffc0204bcc:	4114                	lw	a3,0(a0)
ffffffffc0204bce:	4709                	li	a4,2
ffffffffc0204bd0:	00e69b63          	bne	a3,a4,ffffffffc0204be6 <file_close+0x46>
ffffffffc0204bd4:	4d18                	lw	a4,24(a0)
ffffffffc0204bd6:	00f71863          	bne	a4,a5,ffffffffc0204be6 <file_close+0x46>
ffffffffc0204bda:	d75ff0ef          	jal	ra,ffffffffc020494e <fd_array_close>
ffffffffc0204bde:	60a2                	ld	ra,8(sp)
ffffffffc0204be0:	4501                	li	a0,0
ffffffffc0204be2:	0141                	addi	sp,sp,16
ffffffffc0204be4:	8082                	ret
ffffffffc0204be6:	60a2                	ld	ra,8(sp)
ffffffffc0204be8:	5575                	li	a0,-3
ffffffffc0204bea:	0141                	addi	sp,sp,16
ffffffffc0204bec:	8082                	ret
ffffffffc0204bee:	5575                	li	a0,-3
ffffffffc0204bf0:	8082                	ret
ffffffffc0204bf2:	b81ff0ef          	jal	ra,ffffffffc0204772 <get_fd_array.part.0>

ffffffffc0204bf6 <file_read>:
ffffffffc0204bf6:	715d                	addi	sp,sp,-80
ffffffffc0204bf8:	e486                	sd	ra,72(sp)
ffffffffc0204bfa:	e0a2                	sd	s0,64(sp)
ffffffffc0204bfc:	fc26                	sd	s1,56(sp)
ffffffffc0204bfe:	f84a                	sd	s2,48(sp)
ffffffffc0204c00:	f44e                	sd	s3,40(sp)
ffffffffc0204c02:	f052                	sd	s4,32(sp)
ffffffffc0204c04:	0006b023          	sd	zero,0(a3)
ffffffffc0204c08:	04700793          	li	a5,71
ffffffffc0204c0c:	0aa7e463          	bltu	a5,a0,ffffffffc0204cb4 <file_read+0xbe>
ffffffffc0204c10:	00092797          	auipc	a5,0x92
ffffffffc0204c14:	cb07b783          	ld	a5,-848(a5) # ffffffffc02968c0 <current>
ffffffffc0204c18:	1487b783          	ld	a5,328(a5)
ffffffffc0204c1c:	cfd1                	beqz	a5,ffffffffc0204cb8 <file_read+0xc2>
ffffffffc0204c1e:	4b98                	lw	a4,16(a5)
ffffffffc0204c20:	08e05c63          	blez	a4,ffffffffc0204cb8 <file_read+0xc2>
ffffffffc0204c24:	6780                	ld	s0,8(a5)
ffffffffc0204c26:	00351793          	slli	a5,a0,0x3
ffffffffc0204c2a:	8f89                	sub	a5,a5,a0
ffffffffc0204c2c:	078e                	slli	a5,a5,0x3
ffffffffc0204c2e:	943e                	add	s0,s0,a5
ffffffffc0204c30:	00042983          	lw	s3,0(s0)
ffffffffc0204c34:	4789                	li	a5,2
ffffffffc0204c36:	06f99f63          	bne	s3,a5,ffffffffc0204cb4 <file_read+0xbe>
ffffffffc0204c3a:	4c1c                	lw	a5,24(s0)
ffffffffc0204c3c:	06a79c63          	bne	a5,a0,ffffffffc0204cb4 <file_read+0xbe>
ffffffffc0204c40:	641c                	ld	a5,8(s0)
ffffffffc0204c42:	cbad                	beqz	a5,ffffffffc0204cb4 <file_read+0xbe>
ffffffffc0204c44:	581c                	lw	a5,48(s0)
ffffffffc0204c46:	8a36                	mv	s4,a3
ffffffffc0204c48:	7014                	ld	a3,32(s0)
ffffffffc0204c4a:	2785                	addiw	a5,a5,1
ffffffffc0204c4c:	850a                	mv	a0,sp
ffffffffc0204c4e:	d81c                	sw	a5,48(s0)
ffffffffc0204c50:	792000ef          	jal	ra,ffffffffc02053e2 <iobuf_init>
ffffffffc0204c54:	02843903          	ld	s2,40(s0)
ffffffffc0204c58:	84aa                	mv	s1,a0
ffffffffc0204c5a:	06090163          	beqz	s2,ffffffffc0204cbc <file_read+0xc6>
ffffffffc0204c5e:	07093783          	ld	a5,112(s2)
ffffffffc0204c62:	cfa9                	beqz	a5,ffffffffc0204cbc <file_read+0xc6>
ffffffffc0204c64:	6f9c                	ld	a5,24(a5)
ffffffffc0204c66:	cbb9                	beqz	a5,ffffffffc0204cbc <file_read+0xc6>
ffffffffc0204c68:	00008597          	auipc	a1,0x8
ffffffffc0204c6c:	5d058593          	addi	a1,a1,1488 # ffffffffc020d238 <default_pmm_manager+0xd98>
ffffffffc0204c70:	854a                	mv	a0,s2
ffffffffc0204c72:	3b9020ef          	jal	ra,ffffffffc020782a <inode_check>
ffffffffc0204c76:	07093783          	ld	a5,112(s2)
ffffffffc0204c7a:	7408                	ld	a0,40(s0)
ffffffffc0204c7c:	85a6                	mv	a1,s1
ffffffffc0204c7e:	6f9c                	ld	a5,24(a5)
ffffffffc0204c80:	9782                	jalr	a5
ffffffffc0204c82:	689c                	ld	a5,16(s1)
ffffffffc0204c84:	6c94                	ld	a3,24(s1)
ffffffffc0204c86:	4018                	lw	a4,0(s0)
ffffffffc0204c88:	84aa                	mv	s1,a0
ffffffffc0204c8a:	8f95                	sub	a5,a5,a3
ffffffffc0204c8c:	03370063          	beq	a4,s3,ffffffffc0204cac <file_read+0xb6>
ffffffffc0204c90:	00fa3023          	sd	a5,0(s4) # 1000 <_binary_bin_swap_img_size-0x6d00>
ffffffffc0204c94:	8522                	mv	a0,s0
ffffffffc0204c96:	c0fff0ef          	jal	ra,ffffffffc02048a4 <fd_array_release>
ffffffffc0204c9a:	60a6                	ld	ra,72(sp)
ffffffffc0204c9c:	6406                	ld	s0,64(sp)
ffffffffc0204c9e:	7942                	ld	s2,48(sp)
ffffffffc0204ca0:	79a2                	ld	s3,40(sp)
ffffffffc0204ca2:	7a02                	ld	s4,32(sp)
ffffffffc0204ca4:	8526                	mv	a0,s1
ffffffffc0204ca6:	74e2                	ld	s1,56(sp)
ffffffffc0204ca8:	6161                	addi	sp,sp,80
ffffffffc0204caa:	8082                	ret
ffffffffc0204cac:	7018                	ld	a4,32(s0)
ffffffffc0204cae:	973e                	add	a4,a4,a5
ffffffffc0204cb0:	f018                	sd	a4,32(s0)
ffffffffc0204cb2:	bff9                	j	ffffffffc0204c90 <file_read+0x9a>
ffffffffc0204cb4:	54f5                	li	s1,-3
ffffffffc0204cb6:	b7d5                	j	ffffffffc0204c9a <file_read+0xa4>
ffffffffc0204cb8:	abbff0ef          	jal	ra,ffffffffc0204772 <get_fd_array.part.0>
ffffffffc0204cbc:	00008697          	auipc	a3,0x8
ffffffffc0204cc0:	52c68693          	addi	a3,a3,1324 # ffffffffc020d1e8 <default_pmm_manager+0xd48>
ffffffffc0204cc4:	00007617          	auipc	a2,0x7
ffffffffc0204cc8:	cf460613          	addi	a2,a2,-780 # ffffffffc020b9b8 <commands+0x210>
ffffffffc0204ccc:	0de00593          	li	a1,222
ffffffffc0204cd0:	00008517          	auipc	a0,0x8
ffffffffc0204cd4:	38850513          	addi	a0,a0,904 # ffffffffc020d058 <default_pmm_manager+0xbb8>
ffffffffc0204cd8:	fc6fb0ef          	jal	ra,ffffffffc020049e <__panic>

ffffffffc0204cdc <file_write>:
ffffffffc0204cdc:	715d                	addi	sp,sp,-80
ffffffffc0204cde:	e486                	sd	ra,72(sp)
ffffffffc0204ce0:	e0a2                	sd	s0,64(sp)
ffffffffc0204ce2:	fc26                	sd	s1,56(sp)
ffffffffc0204ce4:	f84a                	sd	s2,48(sp)
ffffffffc0204ce6:	f44e                	sd	s3,40(sp)
ffffffffc0204ce8:	f052                	sd	s4,32(sp)
ffffffffc0204cea:	0006b023          	sd	zero,0(a3)
ffffffffc0204cee:	04700793          	li	a5,71
ffffffffc0204cf2:	0aa7e463          	bltu	a5,a0,ffffffffc0204d9a <file_write+0xbe>
ffffffffc0204cf6:	00092797          	auipc	a5,0x92
ffffffffc0204cfa:	bca7b783          	ld	a5,-1078(a5) # ffffffffc02968c0 <current>
ffffffffc0204cfe:	1487b783          	ld	a5,328(a5)
ffffffffc0204d02:	cfd1                	beqz	a5,ffffffffc0204d9e <file_write+0xc2>
ffffffffc0204d04:	4b98                	lw	a4,16(a5)
ffffffffc0204d06:	08e05c63          	blez	a4,ffffffffc0204d9e <file_write+0xc2>
ffffffffc0204d0a:	6780                	ld	s0,8(a5)
ffffffffc0204d0c:	00351793          	slli	a5,a0,0x3
ffffffffc0204d10:	8f89                	sub	a5,a5,a0
ffffffffc0204d12:	078e                	slli	a5,a5,0x3
ffffffffc0204d14:	943e                	add	s0,s0,a5
ffffffffc0204d16:	00042983          	lw	s3,0(s0)
ffffffffc0204d1a:	4789                	li	a5,2
ffffffffc0204d1c:	06f99f63          	bne	s3,a5,ffffffffc0204d9a <file_write+0xbe>
ffffffffc0204d20:	4c1c                	lw	a5,24(s0)
ffffffffc0204d22:	06a79c63          	bne	a5,a0,ffffffffc0204d9a <file_write+0xbe>
ffffffffc0204d26:	681c                	ld	a5,16(s0)
ffffffffc0204d28:	cbad                	beqz	a5,ffffffffc0204d9a <file_write+0xbe>
ffffffffc0204d2a:	581c                	lw	a5,48(s0)
ffffffffc0204d2c:	8a36                	mv	s4,a3
ffffffffc0204d2e:	7014                	ld	a3,32(s0)
ffffffffc0204d30:	2785                	addiw	a5,a5,1
ffffffffc0204d32:	850a                	mv	a0,sp
ffffffffc0204d34:	d81c                	sw	a5,48(s0)
ffffffffc0204d36:	6ac000ef          	jal	ra,ffffffffc02053e2 <iobuf_init>
ffffffffc0204d3a:	02843903          	ld	s2,40(s0)
ffffffffc0204d3e:	84aa                	mv	s1,a0
ffffffffc0204d40:	06090163          	beqz	s2,ffffffffc0204da2 <file_write+0xc6>
ffffffffc0204d44:	07093783          	ld	a5,112(s2)
ffffffffc0204d48:	cfa9                	beqz	a5,ffffffffc0204da2 <file_write+0xc6>
ffffffffc0204d4a:	739c                	ld	a5,32(a5)
ffffffffc0204d4c:	cbb9                	beqz	a5,ffffffffc0204da2 <file_write+0xc6>
ffffffffc0204d4e:	00008597          	auipc	a1,0x8
ffffffffc0204d52:	54258593          	addi	a1,a1,1346 # ffffffffc020d290 <default_pmm_manager+0xdf0>
ffffffffc0204d56:	854a                	mv	a0,s2
ffffffffc0204d58:	2d3020ef          	jal	ra,ffffffffc020782a <inode_check>
ffffffffc0204d5c:	07093783          	ld	a5,112(s2)
ffffffffc0204d60:	7408                	ld	a0,40(s0)
ffffffffc0204d62:	85a6                	mv	a1,s1
ffffffffc0204d64:	739c                	ld	a5,32(a5)
ffffffffc0204d66:	9782                	jalr	a5
ffffffffc0204d68:	689c                	ld	a5,16(s1)
ffffffffc0204d6a:	6c94                	ld	a3,24(s1)
ffffffffc0204d6c:	4018                	lw	a4,0(s0)
ffffffffc0204d6e:	84aa                	mv	s1,a0
ffffffffc0204d70:	8f95                	sub	a5,a5,a3
ffffffffc0204d72:	03370063          	beq	a4,s3,ffffffffc0204d92 <file_write+0xb6>
ffffffffc0204d76:	00fa3023          	sd	a5,0(s4)
ffffffffc0204d7a:	8522                	mv	a0,s0
ffffffffc0204d7c:	b29ff0ef          	jal	ra,ffffffffc02048a4 <fd_array_release>
ffffffffc0204d80:	60a6                	ld	ra,72(sp)
ffffffffc0204d82:	6406                	ld	s0,64(sp)
ffffffffc0204d84:	7942                	ld	s2,48(sp)
ffffffffc0204d86:	79a2                	ld	s3,40(sp)
ffffffffc0204d88:	7a02                	ld	s4,32(sp)
ffffffffc0204d8a:	8526                	mv	a0,s1
ffffffffc0204d8c:	74e2                	ld	s1,56(sp)
ffffffffc0204d8e:	6161                	addi	sp,sp,80
ffffffffc0204d90:	8082                	ret
ffffffffc0204d92:	7018                	ld	a4,32(s0)
ffffffffc0204d94:	973e                	add	a4,a4,a5
ffffffffc0204d96:	f018                	sd	a4,32(s0)
ffffffffc0204d98:	bff9                	j	ffffffffc0204d76 <file_write+0x9a>
ffffffffc0204d9a:	54f5                	li	s1,-3
ffffffffc0204d9c:	b7d5                	j	ffffffffc0204d80 <file_write+0xa4>
ffffffffc0204d9e:	9d5ff0ef          	jal	ra,ffffffffc0204772 <get_fd_array.part.0>
ffffffffc0204da2:	00008697          	auipc	a3,0x8
ffffffffc0204da6:	49e68693          	addi	a3,a3,1182 # ffffffffc020d240 <default_pmm_manager+0xda0>
ffffffffc0204daa:	00007617          	auipc	a2,0x7
ffffffffc0204dae:	c0e60613          	addi	a2,a2,-1010 # ffffffffc020b9b8 <commands+0x210>
ffffffffc0204db2:	0f800593          	li	a1,248
ffffffffc0204db6:	00008517          	auipc	a0,0x8
ffffffffc0204dba:	2a250513          	addi	a0,a0,674 # ffffffffc020d058 <default_pmm_manager+0xbb8>
ffffffffc0204dbe:	ee0fb0ef          	jal	ra,ffffffffc020049e <__panic>

ffffffffc0204dc2 <file_seek>:
ffffffffc0204dc2:	7139                	addi	sp,sp,-64
ffffffffc0204dc4:	fc06                	sd	ra,56(sp)
ffffffffc0204dc6:	f822                	sd	s0,48(sp)
ffffffffc0204dc8:	f426                	sd	s1,40(sp)
ffffffffc0204dca:	f04a                	sd	s2,32(sp)
ffffffffc0204dcc:	04700793          	li	a5,71
ffffffffc0204dd0:	08a7e863          	bltu	a5,a0,ffffffffc0204e60 <file_seek+0x9e>
ffffffffc0204dd4:	00092797          	auipc	a5,0x92
ffffffffc0204dd8:	aec7b783          	ld	a5,-1300(a5) # ffffffffc02968c0 <current>
ffffffffc0204ddc:	1487b783          	ld	a5,328(a5)
ffffffffc0204de0:	cfdd                	beqz	a5,ffffffffc0204e9e <file_seek+0xdc>
ffffffffc0204de2:	4b98                	lw	a4,16(a5)
ffffffffc0204de4:	0ae05d63          	blez	a4,ffffffffc0204e9e <file_seek+0xdc>
ffffffffc0204de8:	6780                	ld	s0,8(a5)
ffffffffc0204dea:	00351793          	slli	a5,a0,0x3
ffffffffc0204dee:	8f89                	sub	a5,a5,a0
ffffffffc0204df0:	078e                	slli	a5,a5,0x3
ffffffffc0204df2:	943e                	add	s0,s0,a5
ffffffffc0204df4:	4018                	lw	a4,0(s0)
ffffffffc0204df6:	4789                	li	a5,2
ffffffffc0204df8:	06f71463          	bne	a4,a5,ffffffffc0204e60 <file_seek+0x9e>
ffffffffc0204dfc:	4c1c                	lw	a5,24(s0)
ffffffffc0204dfe:	06a79163          	bne	a5,a0,ffffffffc0204e60 <file_seek+0x9e>
ffffffffc0204e02:	581c                	lw	a5,48(s0)
ffffffffc0204e04:	4685                	li	a3,1
ffffffffc0204e06:	892e                	mv	s2,a1
ffffffffc0204e08:	2785                	addiw	a5,a5,1
ffffffffc0204e0a:	d81c                	sw	a5,48(s0)
ffffffffc0204e0c:	02d60063          	beq	a2,a3,ffffffffc0204e2c <file_seek+0x6a>
ffffffffc0204e10:	06e60063          	beq	a2,a4,ffffffffc0204e70 <file_seek+0xae>
ffffffffc0204e14:	54f5                	li	s1,-3
ffffffffc0204e16:	ce11                	beqz	a2,ffffffffc0204e32 <file_seek+0x70>
ffffffffc0204e18:	8522                	mv	a0,s0
ffffffffc0204e1a:	a8bff0ef          	jal	ra,ffffffffc02048a4 <fd_array_release>
ffffffffc0204e1e:	70e2                	ld	ra,56(sp)
ffffffffc0204e20:	7442                	ld	s0,48(sp)
ffffffffc0204e22:	7902                	ld	s2,32(sp)
ffffffffc0204e24:	8526                	mv	a0,s1
ffffffffc0204e26:	74a2                	ld	s1,40(sp)
ffffffffc0204e28:	6121                	addi	sp,sp,64
ffffffffc0204e2a:	8082                	ret
ffffffffc0204e2c:	701c                	ld	a5,32(s0)
ffffffffc0204e2e:	00f58933          	add	s2,a1,a5
ffffffffc0204e32:	7404                	ld	s1,40(s0)
ffffffffc0204e34:	c4bd                	beqz	s1,ffffffffc0204ea2 <file_seek+0xe0>
ffffffffc0204e36:	78bc                	ld	a5,112(s1)
ffffffffc0204e38:	c7ad                	beqz	a5,ffffffffc0204ea2 <file_seek+0xe0>
ffffffffc0204e3a:	6fbc                	ld	a5,88(a5)
ffffffffc0204e3c:	c3bd                	beqz	a5,ffffffffc0204ea2 <file_seek+0xe0>
ffffffffc0204e3e:	8526                	mv	a0,s1
ffffffffc0204e40:	00008597          	auipc	a1,0x8
ffffffffc0204e44:	4a858593          	addi	a1,a1,1192 # ffffffffc020d2e8 <default_pmm_manager+0xe48>
ffffffffc0204e48:	1e3020ef          	jal	ra,ffffffffc020782a <inode_check>
ffffffffc0204e4c:	78bc                	ld	a5,112(s1)
ffffffffc0204e4e:	7408                	ld	a0,40(s0)
ffffffffc0204e50:	85ca                	mv	a1,s2
ffffffffc0204e52:	6fbc                	ld	a5,88(a5)
ffffffffc0204e54:	9782                	jalr	a5
ffffffffc0204e56:	84aa                	mv	s1,a0
ffffffffc0204e58:	f161                	bnez	a0,ffffffffc0204e18 <file_seek+0x56>
ffffffffc0204e5a:	03243023          	sd	s2,32(s0)
ffffffffc0204e5e:	bf6d                	j	ffffffffc0204e18 <file_seek+0x56>
ffffffffc0204e60:	70e2                	ld	ra,56(sp)
ffffffffc0204e62:	7442                	ld	s0,48(sp)
ffffffffc0204e64:	54f5                	li	s1,-3
ffffffffc0204e66:	7902                	ld	s2,32(sp)
ffffffffc0204e68:	8526                	mv	a0,s1
ffffffffc0204e6a:	74a2                	ld	s1,40(sp)
ffffffffc0204e6c:	6121                	addi	sp,sp,64
ffffffffc0204e6e:	8082                	ret
ffffffffc0204e70:	7404                	ld	s1,40(s0)
ffffffffc0204e72:	c8a1                	beqz	s1,ffffffffc0204ec2 <file_seek+0x100>
ffffffffc0204e74:	78bc                	ld	a5,112(s1)
ffffffffc0204e76:	c7b1                	beqz	a5,ffffffffc0204ec2 <file_seek+0x100>
ffffffffc0204e78:	779c                	ld	a5,40(a5)
ffffffffc0204e7a:	c7a1                	beqz	a5,ffffffffc0204ec2 <file_seek+0x100>
ffffffffc0204e7c:	8526                	mv	a0,s1
ffffffffc0204e7e:	00008597          	auipc	a1,0x8
ffffffffc0204e82:	36258593          	addi	a1,a1,866 # ffffffffc020d1e0 <default_pmm_manager+0xd40>
ffffffffc0204e86:	1a5020ef          	jal	ra,ffffffffc020782a <inode_check>
ffffffffc0204e8a:	78bc                	ld	a5,112(s1)
ffffffffc0204e8c:	7408                	ld	a0,40(s0)
ffffffffc0204e8e:	858a                	mv	a1,sp
ffffffffc0204e90:	779c                	ld	a5,40(a5)
ffffffffc0204e92:	9782                	jalr	a5
ffffffffc0204e94:	84aa                	mv	s1,a0
ffffffffc0204e96:	f149                	bnez	a0,ffffffffc0204e18 <file_seek+0x56>
ffffffffc0204e98:	67e2                	ld	a5,24(sp)
ffffffffc0204e9a:	993e                	add	s2,s2,a5
ffffffffc0204e9c:	bf59                	j	ffffffffc0204e32 <file_seek+0x70>
ffffffffc0204e9e:	8d5ff0ef          	jal	ra,ffffffffc0204772 <get_fd_array.part.0>
ffffffffc0204ea2:	00008697          	auipc	a3,0x8
ffffffffc0204ea6:	3f668693          	addi	a3,a3,1014 # ffffffffc020d298 <default_pmm_manager+0xdf8>
ffffffffc0204eaa:	00007617          	auipc	a2,0x7
ffffffffc0204eae:	b0e60613          	addi	a2,a2,-1266 # ffffffffc020b9b8 <commands+0x210>
ffffffffc0204eb2:	11a00593          	li	a1,282
ffffffffc0204eb6:	00008517          	auipc	a0,0x8
ffffffffc0204eba:	1a250513          	addi	a0,a0,418 # ffffffffc020d058 <default_pmm_manager+0xbb8>
ffffffffc0204ebe:	de0fb0ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc0204ec2:	00008697          	auipc	a3,0x8
ffffffffc0204ec6:	2ce68693          	addi	a3,a3,718 # ffffffffc020d190 <default_pmm_manager+0xcf0>
ffffffffc0204eca:	00007617          	auipc	a2,0x7
ffffffffc0204ece:	aee60613          	addi	a2,a2,-1298 # ffffffffc020b9b8 <commands+0x210>
ffffffffc0204ed2:	11200593          	li	a1,274
ffffffffc0204ed6:	00008517          	auipc	a0,0x8
ffffffffc0204eda:	18250513          	addi	a0,a0,386 # ffffffffc020d058 <default_pmm_manager+0xbb8>
ffffffffc0204ede:	dc0fb0ef          	jal	ra,ffffffffc020049e <__panic>

ffffffffc0204ee2 <file_fstat>:
ffffffffc0204ee2:	1101                	addi	sp,sp,-32
ffffffffc0204ee4:	ec06                	sd	ra,24(sp)
ffffffffc0204ee6:	e822                	sd	s0,16(sp)
ffffffffc0204ee8:	e426                	sd	s1,8(sp)
ffffffffc0204eea:	e04a                	sd	s2,0(sp)
ffffffffc0204eec:	04700793          	li	a5,71
ffffffffc0204ef0:	06a7ef63          	bltu	a5,a0,ffffffffc0204f6e <file_fstat+0x8c>
ffffffffc0204ef4:	00092797          	auipc	a5,0x92
ffffffffc0204ef8:	9cc7b783          	ld	a5,-1588(a5) # ffffffffc02968c0 <current>
ffffffffc0204efc:	1487b783          	ld	a5,328(a5)
ffffffffc0204f00:	cfd9                	beqz	a5,ffffffffc0204f9e <file_fstat+0xbc>
ffffffffc0204f02:	4b98                	lw	a4,16(a5)
ffffffffc0204f04:	08e05d63          	blez	a4,ffffffffc0204f9e <file_fstat+0xbc>
ffffffffc0204f08:	6780                	ld	s0,8(a5)
ffffffffc0204f0a:	00351793          	slli	a5,a0,0x3
ffffffffc0204f0e:	8f89                	sub	a5,a5,a0
ffffffffc0204f10:	078e                	slli	a5,a5,0x3
ffffffffc0204f12:	943e                	add	s0,s0,a5
ffffffffc0204f14:	4018                	lw	a4,0(s0)
ffffffffc0204f16:	4789                	li	a5,2
ffffffffc0204f18:	04f71b63          	bne	a4,a5,ffffffffc0204f6e <file_fstat+0x8c>
ffffffffc0204f1c:	4c1c                	lw	a5,24(s0)
ffffffffc0204f1e:	04a79863          	bne	a5,a0,ffffffffc0204f6e <file_fstat+0x8c>
ffffffffc0204f22:	581c                	lw	a5,48(s0)
ffffffffc0204f24:	02843903          	ld	s2,40(s0)
ffffffffc0204f28:	2785                	addiw	a5,a5,1
ffffffffc0204f2a:	d81c                	sw	a5,48(s0)
ffffffffc0204f2c:	04090963          	beqz	s2,ffffffffc0204f7e <file_fstat+0x9c>
ffffffffc0204f30:	07093783          	ld	a5,112(s2)
ffffffffc0204f34:	c7a9                	beqz	a5,ffffffffc0204f7e <file_fstat+0x9c>
ffffffffc0204f36:	779c                	ld	a5,40(a5)
ffffffffc0204f38:	c3b9                	beqz	a5,ffffffffc0204f7e <file_fstat+0x9c>
ffffffffc0204f3a:	84ae                	mv	s1,a1
ffffffffc0204f3c:	854a                	mv	a0,s2
ffffffffc0204f3e:	00008597          	auipc	a1,0x8
ffffffffc0204f42:	2a258593          	addi	a1,a1,674 # ffffffffc020d1e0 <default_pmm_manager+0xd40>
ffffffffc0204f46:	0e5020ef          	jal	ra,ffffffffc020782a <inode_check>
ffffffffc0204f4a:	07093783          	ld	a5,112(s2)
ffffffffc0204f4e:	7408                	ld	a0,40(s0)
ffffffffc0204f50:	85a6                	mv	a1,s1
ffffffffc0204f52:	779c                	ld	a5,40(a5)
ffffffffc0204f54:	9782                	jalr	a5
ffffffffc0204f56:	87aa                	mv	a5,a0
ffffffffc0204f58:	8522                	mv	a0,s0
ffffffffc0204f5a:	843e                	mv	s0,a5
ffffffffc0204f5c:	949ff0ef          	jal	ra,ffffffffc02048a4 <fd_array_release>
ffffffffc0204f60:	60e2                	ld	ra,24(sp)
ffffffffc0204f62:	8522                	mv	a0,s0
ffffffffc0204f64:	6442                	ld	s0,16(sp)
ffffffffc0204f66:	64a2                	ld	s1,8(sp)
ffffffffc0204f68:	6902                	ld	s2,0(sp)
ffffffffc0204f6a:	6105                	addi	sp,sp,32
ffffffffc0204f6c:	8082                	ret
ffffffffc0204f6e:	5475                	li	s0,-3
ffffffffc0204f70:	60e2                	ld	ra,24(sp)
ffffffffc0204f72:	8522                	mv	a0,s0
ffffffffc0204f74:	6442                	ld	s0,16(sp)
ffffffffc0204f76:	64a2                	ld	s1,8(sp)
ffffffffc0204f78:	6902                	ld	s2,0(sp)
ffffffffc0204f7a:	6105                	addi	sp,sp,32
ffffffffc0204f7c:	8082                	ret
ffffffffc0204f7e:	00008697          	auipc	a3,0x8
ffffffffc0204f82:	21268693          	addi	a3,a3,530 # ffffffffc020d190 <default_pmm_manager+0xcf0>
ffffffffc0204f86:	00007617          	auipc	a2,0x7
ffffffffc0204f8a:	a3260613          	addi	a2,a2,-1486 # ffffffffc020b9b8 <commands+0x210>
ffffffffc0204f8e:	12c00593          	li	a1,300
ffffffffc0204f92:	00008517          	auipc	a0,0x8
ffffffffc0204f96:	0c650513          	addi	a0,a0,198 # ffffffffc020d058 <default_pmm_manager+0xbb8>
ffffffffc0204f9a:	d04fb0ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc0204f9e:	fd4ff0ef          	jal	ra,ffffffffc0204772 <get_fd_array.part.0>

ffffffffc0204fa2 <file_fsync>:
ffffffffc0204fa2:	1101                	addi	sp,sp,-32
ffffffffc0204fa4:	ec06                	sd	ra,24(sp)
ffffffffc0204fa6:	e822                	sd	s0,16(sp)
ffffffffc0204fa8:	e426                	sd	s1,8(sp)
ffffffffc0204faa:	04700793          	li	a5,71
ffffffffc0204fae:	06a7e863          	bltu	a5,a0,ffffffffc020501e <file_fsync+0x7c>
ffffffffc0204fb2:	00092797          	auipc	a5,0x92
ffffffffc0204fb6:	90e7b783          	ld	a5,-1778(a5) # ffffffffc02968c0 <current>
ffffffffc0204fba:	1487b783          	ld	a5,328(a5)
ffffffffc0204fbe:	c7d9                	beqz	a5,ffffffffc020504c <file_fsync+0xaa>
ffffffffc0204fc0:	4b98                	lw	a4,16(a5)
ffffffffc0204fc2:	08e05563          	blez	a4,ffffffffc020504c <file_fsync+0xaa>
ffffffffc0204fc6:	6780                	ld	s0,8(a5)
ffffffffc0204fc8:	00351793          	slli	a5,a0,0x3
ffffffffc0204fcc:	8f89                	sub	a5,a5,a0
ffffffffc0204fce:	078e                	slli	a5,a5,0x3
ffffffffc0204fd0:	943e                	add	s0,s0,a5
ffffffffc0204fd2:	4018                	lw	a4,0(s0)
ffffffffc0204fd4:	4789                	li	a5,2
ffffffffc0204fd6:	04f71463          	bne	a4,a5,ffffffffc020501e <file_fsync+0x7c>
ffffffffc0204fda:	4c1c                	lw	a5,24(s0)
ffffffffc0204fdc:	04a79163          	bne	a5,a0,ffffffffc020501e <file_fsync+0x7c>
ffffffffc0204fe0:	581c                	lw	a5,48(s0)
ffffffffc0204fe2:	7404                	ld	s1,40(s0)
ffffffffc0204fe4:	2785                	addiw	a5,a5,1
ffffffffc0204fe6:	d81c                	sw	a5,48(s0)
ffffffffc0204fe8:	c0b1                	beqz	s1,ffffffffc020502c <file_fsync+0x8a>
ffffffffc0204fea:	78bc                	ld	a5,112(s1)
ffffffffc0204fec:	c3a1                	beqz	a5,ffffffffc020502c <file_fsync+0x8a>
ffffffffc0204fee:	7b9c                	ld	a5,48(a5)
ffffffffc0204ff0:	cf95                	beqz	a5,ffffffffc020502c <file_fsync+0x8a>
ffffffffc0204ff2:	00008597          	auipc	a1,0x8
ffffffffc0204ff6:	34e58593          	addi	a1,a1,846 # ffffffffc020d340 <default_pmm_manager+0xea0>
ffffffffc0204ffa:	8526                	mv	a0,s1
ffffffffc0204ffc:	02f020ef          	jal	ra,ffffffffc020782a <inode_check>
ffffffffc0205000:	78bc                	ld	a5,112(s1)
ffffffffc0205002:	7408                	ld	a0,40(s0)
ffffffffc0205004:	7b9c                	ld	a5,48(a5)
ffffffffc0205006:	9782                	jalr	a5
ffffffffc0205008:	87aa                	mv	a5,a0
ffffffffc020500a:	8522                	mv	a0,s0
ffffffffc020500c:	843e                	mv	s0,a5
ffffffffc020500e:	897ff0ef          	jal	ra,ffffffffc02048a4 <fd_array_release>
ffffffffc0205012:	60e2                	ld	ra,24(sp)
ffffffffc0205014:	8522                	mv	a0,s0
ffffffffc0205016:	6442                	ld	s0,16(sp)
ffffffffc0205018:	64a2                	ld	s1,8(sp)
ffffffffc020501a:	6105                	addi	sp,sp,32
ffffffffc020501c:	8082                	ret
ffffffffc020501e:	5475                	li	s0,-3
ffffffffc0205020:	60e2                	ld	ra,24(sp)
ffffffffc0205022:	8522                	mv	a0,s0
ffffffffc0205024:	6442                	ld	s0,16(sp)
ffffffffc0205026:	64a2                	ld	s1,8(sp)
ffffffffc0205028:	6105                	addi	sp,sp,32
ffffffffc020502a:	8082                	ret
ffffffffc020502c:	00008697          	auipc	a3,0x8
ffffffffc0205030:	2c468693          	addi	a3,a3,708 # ffffffffc020d2f0 <default_pmm_manager+0xe50>
ffffffffc0205034:	00007617          	auipc	a2,0x7
ffffffffc0205038:	98460613          	addi	a2,a2,-1660 # ffffffffc020b9b8 <commands+0x210>
ffffffffc020503c:	13a00593          	li	a1,314
ffffffffc0205040:	00008517          	auipc	a0,0x8
ffffffffc0205044:	01850513          	addi	a0,a0,24 # ffffffffc020d058 <default_pmm_manager+0xbb8>
ffffffffc0205048:	c56fb0ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc020504c:	f26ff0ef          	jal	ra,ffffffffc0204772 <get_fd_array.part.0>

ffffffffc0205050 <file_getdirentry>:
ffffffffc0205050:	715d                	addi	sp,sp,-80
ffffffffc0205052:	e486                	sd	ra,72(sp)
ffffffffc0205054:	e0a2                	sd	s0,64(sp)
ffffffffc0205056:	fc26                	sd	s1,56(sp)
ffffffffc0205058:	f84a                	sd	s2,48(sp)
ffffffffc020505a:	f44e                	sd	s3,40(sp)
ffffffffc020505c:	04700793          	li	a5,71
ffffffffc0205060:	0aa7e063          	bltu	a5,a0,ffffffffc0205100 <file_getdirentry+0xb0>
ffffffffc0205064:	00092797          	auipc	a5,0x92
ffffffffc0205068:	85c7b783          	ld	a5,-1956(a5) # ffffffffc02968c0 <current>
ffffffffc020506c:	1487b783          	ld	a5,328(a5)
ffffffffc0205070:	c3e9                	beqz	a5,ffffffffc0205132 <file_getdirentry+0xe2>
ffffffffc0205072:	4b98                	lw	a4,16(a5)
ffffffffc0205074:	0ae05f63          	blez	a4,ffffffffc0205132 <file_getdirentry+0xe2>
ffffffffc0205078:	6780                	ld	s0,8(a5)
ffffffffc020507a:	00351793          	slli	a5,a0,0x3
ffffffffc020507e:	8f89                	sub	a5,a5,a0
ffffffffc0205080:	078e                	slli	a5,a5,0x3
ffffffffc0205082:	943e                	add	s0,s0,a5
ffffffffc0205084:	4018                	lw	a4,0(s0)
ffffffffc0205086:	4789                	li	a5,2
ffffffffc0205088:	06f71c63          	bne	a4,a5,ffffffffc0205100 <file_getdirentry+0xb0>
ffffffffc020508c:	4c1c                	lw	a5,24(s0)
ffffffffc020508e:	06a79963          	bne	a5,a0,ffffffffc0205100 <file_getdirentry+0xb0>
ffffffffc0205092:	581c                	lw	a5,48(s0)
ffffffffc0205094:	6194                	ld	a3,0(a1)
ffffffffc0205096:	84ae                	mv	s1,a1
ffffffffc0205098:	2785                	addiw	a5,a5,1
ffffffffc020509a:	10000613          	li	a2,256
ffffffffc020509e:	d81c                	sw	a5,48(s0)
ffffffffc02050a0:	05a1                	addi	a1,a1,8
ffffffffc02050a2:	850a                	mv	a0,sp
ffffffffc02050a4:	33e000ef          	jal	ra,ffffffffc02053e2 <iobuf_init>
ffffffffc02050a8:	02843983          	ld	s3,40(s0)
ffffffffc02050ac:	892a                	mv	s2,a0
ffffffffc02050ae:	06098263          	beqz	s3,ffffffffc0205112 <file_getdirentry+0xc2>
ffffffffc02050b2:	0709b783          	ld	a5,112(s3) # 1070 <_binary_bin_swap_img_size-0x6c90>
ffffffffc02050b6:	cfb1                	beqz	a5,ffffffffc0205112 <file_getdirentry+0xc2>
ffffffffc02050b8:	63bc                	ld	a5,64(a5)
ffffffffc02050ba:	cfa1                	beqz	a5,ffffffffc0205112 <file_getdirentry+0xc2>
ffffffffc02050bc:	854e                	mv	a0,s3
ffffffffc02050be:	00008597          	auipc	a1,0x8
ffffffffc02050c2:	2e258593          	addi	a1,a1,738 # ffffffffc020d3a0 <default_pmm_manager+0xf00>
ffffffffc02050c6:	764020ef          	jal	ra,ffffffffc020782a <inode_check>
ffffffffc02050ca:	0709b783          	ld	a5,112(s3)
ffffffffc02050ce:	7408                	ld	a0,40(s0)
ffffffffc02050d0:	85ca                	mv	a1,s2
ffffffffc02050d2:	63bc                	ld	a5,64(a5)
ffffffffc02050d4:	9782                	jalr	a5
ffffffffc02050d6:	89aa                	mv	s3,a0
ffffffffc02050d8:	e909                	bnez	a0,ffffffffc02050ea <file_getdirentry+0x9a>
ffffffffc02050da:	609c                	ld	a5,0(s1)
ffffffffc02050dc:	01093683          	ld	a3,16(s2)
ffffffffc02050e0:	01893703          	ld	a4,24(s2)
ffffffffc02050e4:	97b6                	add	a5,a5,a3
ffffffffc02050e6:	8f99                	sub	a5,a5,a4
ffffffffc02050e8:	e09c                	sd	a5,0(s1)
ffffffffc02050ea:	8522                	mv	a0,s0
ffffffffc02050ec:	fb8ff0ef          	jal	ra,ffffffffc02048a4 <fd_array_release>
ffffffffc02050f0:	60a6                	ld	ra,72(sp)
ffffffffc02050f2:	6406                	ld	s0,64(sp)
ffffffffc02050f4:	74e2                	ld	s1,56(sp)
ffffffffc02050f6:	7942                	ld	s2,48(sp)
ffffffffc02050f8:	854e                	mv	a0,s3
ffffffffc02050fa:	79a2                	ld	s3,40(sp)
ffffffffc02050fc:	6161                	addi	sp,sp,80
ffffffffc02050fe:	8082                	ret
ffffffffc0205100:	60a6                	ld	ra,72(sp)
ffffffffc0205102:	6406                	ld	s0,64(sp)
ffffffffc0205104:	59f5                	li	s3,-3
ffffffffc0205106:	74e2                	ld	s1,56(sp)
ffffffffc0205108:	7942                	ld	s2,48(sp)
ffffffffc020510a:	854e                	mv	a0,s3
ffffffffc020510c:	79a2                	ld	s3,40(sp)
ffffffffc020510e:	6161                	addi	sp,sp,80
ffffffffc0205110:	8082                	ret
ffffffffc0205112:	00008697          	auipc	a3,0x8
ffffffffc0205116:	23668693          	addi	a3,a3,566 # ffffffffc020d348 <default_pmm_manager+0xea8>
ffffffffc020511a:	00007617          	auipc	a2,0x7
ffffffffc020511e:	89e60613          	addi	a2,a2,-1890 # ffffffffc020b9b8 <commands+0x210>
ffffffffc0205122:	14a00593          	li	a1,330
ffffffffc0205126:	00008517          	auipc	a0,0x8
ffffffffc020512a:	f3250513          	addi	a0,a0,-206 # ffffffffc020d058 <default_pmm_manager+0xbb8>
ffffffffc020512e:	b70fb0ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc0205132:	e40ff0ef          	jal	ra,ffffffffc0204772 <get_fd_array.part.0>

ffffffffc0205136 <file_dup>:
ffffffffc0205136:	04700713          	li	a4,71
ffffffffc020513a:	06a76463          	bltu	a4,a0,ffffffffc02051a2 <file_dup+0x6c>
ffffffffc020513e:	00091717          	auipc	a4,0x91
ffffffffc0205142:	78273703          	ld	a4,1922(a4) # ffffffffc02968c0 <current>
ffffffffc0205146:	14873703          	ld	a4,328(a4)
ffffffffc020514a:	1101                	addi	sp,sp,-32
ffffffffc020514c:	ec06                	sd	ra,24(sp)
ffffffffc020514e:	e822                	sd	s0,16(sp)
ffffffffc0205150:	cb39                	beqz	a4,ffffffffc02051a6 <file_dup+0x70>
ffffffffc0205152:	4b14                	lw	a3,16(a4)
ffffffffc0205154:	04d05963          	blez	a3,ffffffffc02051a6 <file_dup+0x70>
ffffffffc0205158:	6700                	ld	s0,8(a4)
ffffffffc020515a:	00351713          	slli	a4,a0,0x3
ffffffffc020515e:	8f09                	sub	a4,a4,a0
ffffffffc0205160:	070e                	slli	a4,a4,0x3
ffffffffc0205162:	943a                	add	s0,s0,a4
ffffffffc0205164:	4014                	lw	a3,0(s0)
ffffffffc0205166:	4709                	li	a4,2
ffffffffc0205168:	02e69863          	bne	a3,a4,ffffffffc0205198 <file_dup+0x62>
ffffffffc020516c:	4c18                	lw	a4,24(s0)
ffffffffc020516e:	02a71563          	bne	a4,a0,ffffffffc0205198 <file_dup+0x62>
ffffffffc0205172:	852e                	mv	a0,a1
ffffffffc0205174:	002c                	addi	a1,sp,8
ffffffffc0205176:	e1eff0ef          	jal	ra,ffffffffc0204794 <fd_array_alloc>
ffffffffc020517a:	c509                	beqz	a0,ffffffffc0205184 <file_dup+0x4e>
ffffffffc020517c:	60e2                	ld	ra,24(sp)
ffffffffc020517e:	6442                	ld	s0,16(sp)
ffffffffc0205180:	6105                	addi	sp,sp,32
ffffffffc0205182:	8082                	ret
ffffffffc0205184:	6522                	ld	a0,8(sp)
ffffffffc0205186:	85a2                	mv	a1,s0
ffffffffc0205188:	845ff0ef          	jal	ra,ffffffffc02049cc <fd_array_dup>
ffffffffc020518c:	67a2                	ld	a5,8(sp)
ffffffffc020518e:	60e2                	ld	ra,24(sp)
ffffffffc0205190:	6442                	ld	s0,16(sp)
ffffffffc0205192:	4f88                	lw	a0,24(a5)
ffffffffc0205194:	6105                	addi	sp,sp,32
ffffffffc0205196:	8082                	ret
ffffffffc0205198:	60e2                	ld	ra,24(sp)
ffffffffc020519a:	6442                	ld	s0,16(sp)
ffffffffc020519c:	5575                	li	a0,-3
ffffffffc020519e:	6105                	addi	sp,sp,32
ffffffffc02051a0:	8082                	ret
ffffffffc02051a2:	5575                	li	a0,-3
ffffffffc02051a4:	8082                	ret
ffffffffc02051a6:	dccff0ef          	jal	ra,ffffffffc0204772 <get_fd_array.part.0>

ffffffffc02051aa <fs_init>:
ffffffffc02051aa:	1141                	addi	sp,sp,-16
ffffffffc02051ac:	e406                	sd	ra,8(sp)
ffffffffc02051ae:	09b020ef          	jal	ra,ffffffffc0207a48 <vfs_init>
ffffffffc02051b2:	572030ef          	jal	ra,ffffffffc0208724 <dev_init>
ffffffffc02051b6:	60a2                	ld	ra,8(sp)
ffffffffc02051b8:	0141                	addi	sp,sp,16
ffffffffc02051ba:	6c30306f          	j	ffffffffc020907c <sfs_init>

ffffffffc02051be <fs_cleanup>:
ffffffffc02051be:	2dd0206f          	j	ffffffffc0207c9a <vfs_cleanup>

ffffffffc02051c2 <lock_files>:
ffffffffc02051c2:	0561                	addi	a0,a0,24
ffffffffc02051c4:	ba0ff06f          	j	ffffffffc0204564 <down>

ffffffffc02051c8 <unlock_files>:
ffffffffc02051c8:	0561                	addi	a0,a0,24
ffffffffc02051ca:	b96ff06f          	j	ffffffffc0204560 <up>

ffffffffc02051ce <files_create>:
ffffffffc02051ce:	1141                	addi	sp,sp,-16
ffffffffc02051d0:	6505                	lui	a0,0x1
ffffffffc02051d2:	e022                	sd	s0,0(sp)
ffffffffc02051d4:	e406                	sd	ra,8(sp)
ffffffffc02051d6:	db9fc0ef          	jal	ra,ffffffffc0201f8e <kmalloc>
ffffffffc02051da:	842a                	mv	s0,a0
ffffffffc02051dc:	cd19                	beqz	a0,ffffffffc02051fa <files_create+0x2c>
ffffffffc02051de:	03050793          	addi	a5,a0,48 # 1030 <_binary_bin_swap_img_size-0x6cd0>
ffffffffc02051e2:	00043023          	sd	zero,0(s0)
ffffffffc02051e6:	0561                	addi	a0,a0,24
ffffffffc02051e8:	e41c                	sd	a5,8(s0)
ffffffffc02051ea:	00042823          	sw	zero,16(s0)
ffffffffc02051ee:	4585                	li	a1,1
ffffffffc02051f0:	b6aff0ef          	jal	ra,ffffffffc020455a <sem_init>
ffffffffc02051f4:	6408                	ld	a0,8(s0)
ffffffffc02051f6:	f3cff0ef          	jal	ra,ffffffffc0204932 <fd_array_init>
ffffffffc02051fa:	60a2                	ld	ra,8(sp)
ffffffffc02051fc:	8522                	mv	a0,s0
ffffffffc02051fe:	6402                	ld	s0,0(sp)
ffffffffc0205200:	0141                	addi	sp,sp,16
ffffffffc0205202:	8082                	ret

ffffffffc0205204 <files_destroy>:
ffffffffc0205204:	7179                	addi	sp,sp,-48
ffffffffc0205206:	f406                	sd	ra,40(sp)
ffffffffc0205208:	f022                	sd	s0,32(sp)
ffffffffc020520a:	ec26                	sd	s1,24(sp)
ffffffffc020520c:	e84a                	sd	s2,16(sp)
ffffffffc020520e:	e44e                	sd	s3,8(sp)
ffffffffc0205210:	c52d                	beqz	a0,ffffffffc020527a <files_destroy+0x76>
ffffffffc0205212:	491c                	lw	a5,16(a0)
ffffffffc0205214:	89aa                	mv	s3,a0
ffffffffc0205216:	e3b5                	bnez	a5,ffffffffc020527a <files_destroy+0x76>
ffffffffc0205218:	6108                	ld	a0,0(a0)
ffffffffc020521a:	c119                	beqz	a0,ffffffffc0205220 <files_destroy+0x1c>
ffffffffc020521c:	6c4020ef          	jal	ra,ffffffffc02078e0 <inode_ref_dec>
ffffffffc0205220:	0089b403          	ld	s0,8(s3)
ffffffffc0205224:	6485                	lui	s1,0x1
ffffffffc0205226:	fc048493          	addi	s1,s1,-64 # fc0 <_binary_bin_swap_img_size-0x6d40>
ffffffffc020522a:	94a2                	add	s1,s1,s0
ffffffffc020522c:	4909                	li	s2,2
ffffffffc020522e:	401c                	lw	a5,0(s0)
ffffffffc0205230:	03278063          	beq	a5,s2,ffffffffc0205250 <files_destroy+0x4c>
ffffffffc0205234:	e39d                	bnez	a5,ffffffffc020525a <files_destroy+0x56>
ffffffffc0205236:	03840413          	addi	s0,s0,56
ffffffffc020523a:	fe849ae3          	bne	s1,s0,ffffffffc020522e <files_destroy+0x2a>
ffffffffc020523e:	7402                	ld	s0,32(sp)
ffffffffc0205240:	70a2                	ld	ra,40(sp)
ffffffffc0205242:	64e2                	ld	s1,24(sp)
ffffffffc0205244:	6942                	ld	s2,16(sp)
ffffffffc0205246:	854e                	mv	a0,s3
ffffffffc0205248:	69a2                	ld	s3,8(sp)
ffffffffc020524a:	6145                	addi	sp,sp,48
ffffffffc020524c:	df3fc06f          	j	ffffffffc020203e <kfree>
ffffffffc0205250:	8522                	mv	a0,s0
ffffffffc0205252:	efcff0ef          	jal	ra,ffffffffc020494e <fd_array_close>
ffffffffc0205256:	401c                	lw	a5,0(s0)
ffffffffc0205258:	bff1                	j	ffffffffc0205234 <files_destroy+0x30>
ffffffffc020525a:	00008697          	auipc	a3,0x8
ffffffffc020525e:	1c668693          	addi	a3,a3,454 # ffffffffc020d420 <CSWTCH.79+0x58>
ffffffffc0205262:	00006617          	auipc	a2,0x6
ffffffffc0205266:	75660613          	addi	a2,a2,1878 # ffffffffc020b9b8 <commands+0x210>
ffffffffc020526a:	03d00593          	li	a1,61
ffffffffc020526e:	00008517          	auipc	a0,0x8
ffffffffc0205272:	1a250513          	addi	a0,a0,418 # ffffffffc020d410 <CSWTCH.79+0x48>
ffffffffc0205276:	a28fb0ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc020527a:	00008697          	auipc	a3,0x8
ffffffffc020527e:	16668693          	addi	a3,a3,358 # ffffffffc020d3e0 <CSWTCH.79+0x18>
ffffffffc0205282:	00006617          	auipc	a2,0x6
ffffffffc0205286:	73660613          	addi	a2,a2,1846 # ffffffffc020b9b8 <commands+0x210>
ffffffffc020528a:	03300593          	li	a1,51
ffffffffc020528e:	00008517          	auipc	a0,0x8
ffffffffc0205292:	18250513          	addi	a0,a0,386 # ffffffffc020d410 <CSWTCH.79+0x48>
ffffffffc0205296:	a08fb0ef          	jal	ra,ffffffffc020049e <__panic>

ffffffffc020529a <files_closeall>:
ffffffffc020529a:	1101                	addi	sp,sp,-32
ffffffffc020529c:	ec06                	sd	ra,24(sp)
ffffffffc020529e:	e822                	sd	s0,16(sp)
ffffffffc02052a0:	e426                	sd	s1,8(sp)
ffffffffc02052a2:	e04a                	sd	s2,0(sp)
ffffffffc02052a4:	c129                	beqz	a0,ffffffffc02052e6 <files_closeall+0x4c>
ffffffffc02052a6:	491c                	lw	a5,16(a0)
ffffffffc02052a8:	02f05f63          	blez	a5,ffffffffc02052e6 <files_closeall+0x4c>
ffffffffc02052ac:	6504                	ld	s1,8(a0)
ffffffffc02052ae:	6785                	lui	a5,0x1
ffffffffc02052b0:	fc078793          	addi	a5,a5,-64 # fc0 <_binary_bin_swap_img_size-0x6d40>
ffffffffc02052b4:	07048413          	addi	s0,s1,112
ffffffffc02052b8:	4909                	li	s2,2
ffffffffc02052ba:	94be                	add	s1,s1,a5
ffffffffc02052bc:	a029                	j	ffffffffc02052c6 <files_closeall+0x2c>
ffffffffc02052be:	03840413          	addi	s0,s0,56
ffffffffc02052c2:	00848c63          	beq	s1,s0,ffffffffc02052da <files_closeall+0x40>
ffffffffc02052c6:	401c                	lw	a5,0(s0)
ffffffffc02052c8:	ff279be3          	bne	a5,s2,ffffffffc02052be <files_closeall+0x24>
ffffffffc02052cc:	8522                	mv	a0,s0
ffffffffc02052ce:	03840413          	addi	s0,s0,56
ffffffffc02052d2:	e7cff0ef          	jal	ra,ffffffffc020494e <fd_array_close>
ffffffffc02052d6:	fe8498e3          	bne	s1,s0,ffffffffc02052c6 <files_closeall+0x2c>
ffffffffc02052da:	60e2                	ld	ra,24(sp)
ffffffffc02052dc:	6442                	ld	s0,16(sp)
ffffffffc02052de:	64a2                	ld	s1,8(sp)
ffffffffc02052e0:	6902                	ld	s2,0(sp)
ffffffffc02052e2:	6105                	addi	sp,sp,32
ffffffffc02052e4:	8082                	ret
ffffffffc02052e6:	00008697          	auipc	a3,0x8
ffffffffc02052ea:	d4268693          	addi	a3,a3,-702 # ffffffffc020d028 <default_pmm_manager+0xb88>
ffffffffc02052ee:	00006617          	auipc	a2,0x6
ffffffffc02052f2:	6ca60613          	addi	a2,a2,1738 # ffffffffc020b9b8 <commands+0x210>
ffffffffc02052f6:	04500593          	li	a1,69
ffffffffc02052fa:	00008517          	auipc	a0,0x8
ffffffffc02052fe:	11650513          	addi	a0,a0,278 # ffffffffc020d410 <CSWTCH.79+0x48>
ffffffffc0205302:	99cfb0ef          	jal	ra,ffffffffc020049e <__panic>

ffffffffc0205306 <dup_files>:
ffffffffc0205306:	7179                	addi	sp,sp,-48
ffffffffc0205308:	f406                	sd	ra,40(sp)
ffffffffc020530a:	f022                	sd	s0,32(sp)
ffffffffc020530c:	ec26                	sd	s1,24(sp)
ffffffffc020530e:	e84a                	sd	s2,16(sp)
ffffffffc0205310:	e44e                	sd	s3,8(sp)
ffffffffc0205312:	e052                	sd	s4,0(sp)
ffffffffc0205314:	c52d                	beqz	a0,ffffffffc020537e <dup_files+0x78>
ffffffffc0205316:	842e                	mv	s0,a1
ffffffffc0205318:	c1bd                	beqz	a1,ffffffffc020537e <dup_files+0x78>
ffffffffc020531a:	491c                	lw	a5,16(a0)
ffffffffc020531c:	84aa                	mv	s1,a0
ffffffffc020531e:	e3c1                	bnez	a5,ffffffffc020539e <dup_files+0x98>
ffffffffc0205320:	499c                	lw	a5,16(a1)
ffffffffc0205322:	06f05e63          	blez	a5,ffffffffc020539e <dup_files+0x98>
ffffffffc0205326:	6188                	ld	a0,0(a1)
ffffffffc0205328:	e088                	sd	a0,0(s1)
ffffffffc020532a:	c119                	beqz	a0,ffffffffc0205330 <dup_files+0x2a>
ffffffffc020532c:	4e6020ef          	jal	ra,ffffffffc0207812 <inode_ref_inc>
ffffffffc0205330:	6400                	ld	s0,8(s0)
ffffffffc0205332:	6905                	lui	s2,0x1
ffffffffc0205334:	fc090913          	addi	s2,s2,-64 # fc0 <_binary_bin_swap_img_size-0x6d40>
ffffffffc0205338:	6484                	ld	s1,8(s1)
ffffffffc020533a:	9922                	add	s2,s2,s0
ffffffffc020533c:	4989                	li	s3,2
ffffffffc020533e:	4a05                	li	s4,1
ffffffffc0205340:	a039                	j	ffffffffc020534e <dup_files+0x48>
ffffffffc0205342:	03840413          	addi	s0,s0,56
ffffffffc0205346:	03848493          	addi	s1,s1,56
ffffffffc020534a:	02890163          	beq	s2,s0,ffffffffc020536c <dup_files+0x66>
ffffffffc020534e:	401c                	lw	a5,0(s0)
ffffffffc0205350:	ff3799e3          	bne	a5,s3,ffffffffc0205342 <dup_files+0x3c>
ffffffffc0205354:	0144a023          	sw	s4,0(s1)
ffffffffc0205358:	85a2                	mv	a1,s0
ffffffffc020535a:	8526                	mv	a0,s1
ffffffffc020535c:	03840413          	addi	s0,s0,56
ffffffffc0205360:	e6cff0ef          	jal	ra,ffffffffc02049cc <fd_array_dup>
ffffffffc0205364:	03848493          	addi	s1,s1,56
ffffffffc0205368:	fe8913e3          	bne	s2,s0,ffffffffc020534e <dup_files+0x48>
ffffffffc020536c:	70a2                	ld	ra,40(sp)
ffffffffc020536e:	7402                	ld	s0,32(sp)
ffffffffc0205370:	64e2                	ld	s1,24(sp)
ffffffffc0205372:	6942                	ld	s2,16(sp)
ffffffffc0205374:	69a2                	ld	s3,8(sp)
ffffffffc0205376:	6a02                	ld	s4,0(sp)
ffffffffc0205378:	4501                	li	a0,0
ffffffffc020537a:	6145                	addi	sp,sp,48
ffffffffc020537c:	8082                	ret
ffffffffc020537e:	00008697          	auipc	a3,0x8
ffffffffc0205382:	9fa68693          	addi	a3,a3,-1542 # ffffffffc020cd78 <default_pmm_manager+0x8d8>
ffffffffc0205386:	00006617          	auipc	a2,0x6
ffffffffc020538a:	63260613          	addi	a2,a2,1586 # ffffffffc020b9b8 <commands+0x210>
ffffffffc020538e:	05300593          	li	a1,83
ffffffffc0205392:	00008517          	auipc	a0,0x8
ffffffffc0205396:	07e50513          	addi	a0,a0,126 # ffffffffc020d410 <CSWTCH.79+0x48>
ffffffffc020539a:	904fb0ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc020539e:	00008697          	auipc	a3,0x8
ffffffffc02053a2:	09a68693          	addi	a3,a3,154 # ffffffffc020d438 <CSWTCH.79+0x70>
ffffffffc02053a6:	00006617          	auipc	a2,0x6
ffffffffc02053aa:	61260613          	addi	a2,a2,1554 # ffffffffc020b9b8 <commands+0x210>
ffffffffc02053ae:	05400593          	li	a1,84
ffffffffc02053b2:	00008517          	auipc	a0,0x8
ffffffffc02053b6:	05e50513          	addi	a0,a0,94 # ffffffffc020d410 <CSWTCH.79+0x48>
ffffffffc02053ba:	8e4fb0ef          	jal	ra,ffffffffc020049e <__panic>

ffffffffc02053be <iobuf_skip.part.0>:
ffffffffc02053be:	1141                	addi	sp,sp,-16
ffffffffc02053c0:	00008697          	auipc	a3,0x8
ffffffffc02053c4:	0a868693          	addi	a3,a3,168 # ffffffffc020d468 <CSWTCH.79+0xa0>
ffffffffc02053c8:	00006617          	auipc	a2,0x6
ffffffffc02053cc:	5f060613          	addi	a2,a2,1520 # ffffffffc020b9b8 <commands+0x210>
ffffffffc02053d0:	04a00593          	li	a1,74
ffffffffc02053d4:	00008517          	auipc	a0,0x8
ffffffffc02053d8:	0ac50513          	addi	a0,a0,172 # ffffffffc020d480 <CSWTCH.79+0xb8>
ffffffffc02053dc:	e406                	sd	ra,8(sp)
ffffffffc02053de:	8c0fb0ef          	jal	ra,ffffffffc020049e <__panic>

ffffffffc02053e2 <iobuf_init>:
ffffffffc02053e2:	e10c                	sd	a1,0(a0)
ffffffffc02053e4:	e514                	sd	a3,8(a0)
ffffffffc02053e6:	ed10                	sd	a2,24(a0)
ffffffffc02053e8:	e910                	sd	a2,16(a0)
ffffffffc02053ea:	8082                	ret

ffffffffc02053ec <iobuf_move>:
ffffffffc02053ec:	7179                	addi	sp,sp,-48
ffffffffc02053ee:	ec26                	sd	s1,24(sp)
ffffffffc02053f0:	6d04                	ld	s1,24(a0)
ffffffffc02053f2:	f022                	sd	s0,32(sp)
ffffffffc02053f4:	e84a                	sd	s2,16(sp)
ffffffffc02053f6:	e44e                	sd	s3,8(sp)
ffffffffc02053f8:	f406                	sd	ra,40(sp)
ffffffffc02053fa:	842a                	mv	s0,a0
ffffffffc02053fc:	8932                	mv	s2,a2
ffffffffc02053fe:	852e                	mv	a0,a1
ffffffffc0205400:	89ba                	mv	s3,a4
ffffffffc0205402:	00967363          	bgeu	a2,s1,ffffffffc0205408 <iobuf_move+0x1c>
ffffffffc0205406:	84b2                	mv	s1,a2
ffffffffc0205408:	c495                	beqz	s1,ffffffffc0205434 <iobuf_move+0x48>
ffffffffc020540a:	600c                	ld	a1,0(s0)
ffffffffc020540c:	c681                	beqz	a3,ffffffffc0205414 <iobuf_move+0x28>
ffffffffc020540e:	87ae                	mv	a5,a1
ffffffffc0205410:	85aa                	mv	a1,a0
ffffffffc0205412:	853e                	mv	a0,a5
ffffffffc0205414:	8626                	mv	a2,s1
ffffffffc0205416:	0d0060ef          	jal	ra,ffffffffc020b4e6 <memmove>
ffffffffc020541a:	6c1c                	ld	a5,24(s0)
ffffffffc020541c:	0297ea63          	bltu	a5,s1,ffffffffc0205450 <iobuf_move+0x64>
ffffffffc0205420:	6014                	ld	a3,0(s0)
ffffffffc0205422:	6418                	ld	a4,8(s0)
ffffffffc0205424:	8f85                	sub	a5,a5,s1
ffffffffc0205426:	96a6                	add	a3,a3,s1
ffffffffc0205428:	9726                	add	a4,a4,s1
ffffffffc020542a:	e014                	sd	a3,0(s0)
ffffffffc020542c:	e418                	sd	a4,8(s0)
ffffffffc020542e:	ec1c                	sd	a5,24(s0)
ffffffffc0205430:	40990933          	sub	s2,s2,s1
ffffffffc0205434:	00098463          	beqz	s3,ffffffffc020543c <iobuf_move+0x50>
ffffffffc0205438:	0099b023          	sd	s1,0(s3)
ffffffffc020543c:	4501                	li	a0,0
ffffffffc020543e:	00091b63          	bnez	s2,ffffffffc0205454 <iobuf_move+0x68>
ffffffffc0205442:	70a2                	ld	ra,40(sp)
ffffffffc0205444:	7402                	ld	s0,32(sp)
ffffffffc0205446:	64e2                	ld	s1,24(sp)
ffffffffc0205448:	6942                	ld	s2,16(sp)
ffffffffc020544a:	69a2                	ld	s3,8(sp)
ffffffffc020544c:	6145                	addi	sp,sp,48
ffffffffc020544e:	8082                	ret
ffffffffc0205450:	f6fff0ef          	jal	ra,ffffffffc02053be <iobuf_skip.part.0>
ffffffffc0205454:	5571                	li	a0,-4
ffffffffc0205456:	b7f5                	j	ffffffffc0205442 <iobuf_move+0x56>

ffffffffc0205458 <iobuf_skip>:
ffffffffc0205458:	6d1c                	ld	a5,24(a0)
ffffffffc020545a:	00b7eb63          	bltu	a5,a1,ffffffffc0205470 <iobuf_skip+0x18>
ffffffffc020545e:	6114                	ld	a3,0(a0)
ffffffffc0205460:	6518                	ld	a4,8(a0)
ffffffffc0205462:	8f8d                	sub	a5,a5,a1
ffffffffc0205464:	96ae                	add	a3,a3,a1
ffffffffc0205466:	95ba                	add	a1,a1,a4
ffffffffc0205468:	e114                	sd	a3,0(a0)
ffffffffc020546a:	e50c                	sd	a1,8(a0)
ffffffffc020546c:	ed1c                	sd	a5,24(a0)
ffffffffc020546e:	8082                	ret
ffffffffc0205470:	1141                	addi	sp,sp,-16
ffffffffc0205472:	e406                	sd	ra,8(sp)
ffffffffc0205474:	f4bff0ef          	jal	ra,ffffffffc02053be <iobuf_skip.part.0>

ffffffffc0205478 <copy_path>:
ffffffffc0205478:	7139                	addi	sp,sp,-64
ffffffffc020547a:	f04a                	sd	s2,32(sp)
ffffffffc020547c:	00091917          	auipc	s2,0x91
ffffffffc0205480:	44490913          	addi	s2,s2,1092 # ffffffffc02968c0 <current>
ffffffffc0205484:	00093703          	ld	a4,0(s2)
ffffffffc0205488:	ec4e                	sd	s3,24(sp)
ffffffffc020548a:	89aa                	mv	s3,a0
ffffffffc020548c:	6505                	lui	a0,0x1
ffffffffc020548e:	f426                	sd	s1,40(sp)
ffffffffc0205490:	e852                	sd	s4,16(sp)
ffffffffc0205492:	fc06                	sd	ra,56(sp)
ffffffffc0205494:	f822                	sd	s0,48(sp)
ffffffffc0205496:	e456                	sd	s5,8(sp)
ffffffffc0205498:	02873a03          	ld	s4,40(a4)
ffffffffc020549c:	84ae                	mv	s1,a1
ffffffffc020549e:	af1fc0ef          	jal	ra,ffffffffc0201f8e <kmalloc>
ffffffffc02054a2:	c141                	beqz	a0,ffffffffc0205522 <copy_path+0xaa>
ffffffffc02054a4:	842a                	mv	s0,a0
ffffffffc02054a6:	040a0563          	beqz	s4,ffffffffc02054f0 <copy_path+0x78>
ffffffffc02054aa:	038a0a93          	addi	s5,s4,56
ffffffffc02054ae:	8556                	mv	a0,s5
ffffffffc02054b0:	8b4ff0ef          	jal	ra,ffffffffc0204564 <down>
ffffffffc02054b4:	00093783          	ld	a5,0(s2)
ffffffffc02054b8:	cba1                	beqz	a5,ffffffffc0205508 <copy_path+0x90>
ffffffffc02054ba:	43dc                	lw	a5,4(a5)
ffffffffc02054bc:	6685                	lui	a3,0x1
ffffffffc02054be:	8626                	mv	a2,s1
ffffffffc02054c0:	04fa2823          	sw	a5,80(s4)
ffffffffc02054c4:	85a2                	mv	a1,s0
ffffffffc02054c6:	8552                	mv	a0,s4
ffffffffc02054c8:	ec5fe0ef          	jal	ra,ffffffffc020438c <copy_string>
ffffffffc02054cc:	c529                	beqz	a0,ffffffffc0205516 <copy_path+0x9e>
ffffffffc02054ce:	8556                	mv	a0,s5
ffffffffc02054d0:	890ff0ef          	jal	ra,ffffffffc0204560 <up>
ffffffffc02054d4:	040a2823          	sw	zero,80(s4)
ffffffffc02054d8:	0089b023          	sd	s0,0(s3)
ffffffffc02054dc:	4501                	li	a0,0
ffffffffc02054de:	70e2                	ld	ra,56(sp)
ffffffffc02054e0:	7442                	ld	s0,48(sp)
ffffffffc02054e2:	74a2                	ld	s1,40(sp)
ffffffffc02054e4:	7902                	ld	s2,32(sp)
ffffffffc02054e6:	69e2                	ld	s3,24(sp)
ffffffffc02054e8:	6a42                	ld	s4,16(sp)
ffffffffc02054ea:	6aa2                	ld	s5,8(sp)
ffffffffc02054ec:	6121                	addi	sp,sp,64
ffffffffc02054ee:	8082                	ret
ffffffffc02054f0:	85aa                	mv	a1,a0
ffffffffc02054f2:	6685                	lui	a3,0x1
ffffffffc02054f4:	8626                	mv	a2,s1
ffffffffc02054f6:	4501                	li	a0,0
ffffffffc02054f8:	e95fe0ef          	jal	ra,ffffffffc020438c <copy_string>
ffffffffc02054fc:	fd71                	bnez	a0,ffffffffc02054d8 <copy_path+0x60>
ffffffffc02054fe:	8522                	mv	a0,s0
ffffffffc0205500:	b3ffc0ef          	jal	ra,ffffffffc020203e <kfree>
ffffffffc0205504:	5575                	li	a0,-3
ffffffffc0205506:	bfe1                	j	ffffffffc02054de <copy_path+0x66>
ffffffffc0205508:	6685                	lui	a3,0x1
ffffffffc020550a:	8626                	mv	a2,s1
ffffffffc020550c:	85a2                	mv	a1,s0
ffffffffc020550e:	8552                	mv	a0,s4
ffffffffc0205510:	e7dfe0ef          	jal	ra,ffffffffc020438c <copy_string>
ffffffffc0205514:	fd4d                	bnez	a0,ffffffffc02054ce <copy_path+0x56>
ffffffffc0205516:	8556                	mv	a0,s5
ffffffffc0205518:	848ff0ef          	jal	ra,ffffffffc0204560 <up>
ffffffffc020551c:	040a2823          	sw	zero,80(s4)
ffffffffc0205520:	bff9                	j	ffffffffc02054fe <copy_path+0x86>
ffffffffc0205522:	5571                	li	a0,-4
ffffffffc0205524:	bf6d                	j	ffffffffc02054de <copy_path+0x66>

ffffffffc0205526 <sysfile_open>:
ffffffffc0205526:	7179                	addi	sp,sp,-48
ffffffffc0205528:	872a                	mv	a4,a0
ffffffffc020552a:	ec26                	sd	s1,24(sp)
ffffffffc020552c:	0028                	addi	a0,sp,8
ffffffffc020552e:	84ae                	mv	s1,a1
ffffffffc0205530:	85ba                	mv	a1,a4
ffffffffc0205532:	f022                	sd	s0,32(sp)
ffffffffc0205534:	f406                	sd	ra,40(sp)
ffffffffc0205536:	f43ff0ef          	jal	ra,ffffffffc0205478 <copy_path>
ffffffffc020553a:	842a                	mv	s0,a0
ffffffffc020553c:	e909                	bnez	a0,ffffffffc020554e <sysfile_open+0x28>
ffffffffc020553e:	6522                	ld	a0,8(sp)
ffffffffc0205540:	85a6                	mv	a1,s1
ffffffffc0205542:	d60ff0ef          	jal	ra,ffffffffc0204aa2 <file_open>
ffffffffc0205546:	842a                	mv	s0,a0
ffffffffc0205548:	6522                	ld	a0,8(sp)
ffffffffc020554a:	af5fc0ef          	jal	ra,ffffffffc020203e <kfree>
ffffffffc020554e:	70a2                	ld	ra,40(sp)
ffffffffc0205550:	8522                	mv	a0,s0
ffffffffc0205552:	7402                	ld	s0,32(sp)
ffffffffc0205554:	64e2                	ld	s1,24(sp)
ffffffffc0205556:	6145                	addi	sp,sp,48
ffffffffc0205558:	8082                	ret

ffffffffc020555a <sysfile_close>:
ffffffffc020555a:	e46ff06f          	j	ffffffffc0204ba0 <file_close>

ffffffffc020555e <sysfile_read>:
ffffffffc020555e:	7159                	addi	sp,sp,-112
ffffffffc0205560:	f0a2                	sd	s0,96(sp)
ffffffffc0205562:	f486                	sd	ra,104(sp)
ffffffffc0205564:	eca6                	sd	s1,88(sp)
ffffffffc0205566:	e8ca                	sd	s2,80(sp)
ffffffffc0205568:	e4ce                	sd	s3,72(sp)
ffffffffc020556a:	e0d2                	sd	s4,64(sp)
ffffffffc020556c:	fc56                	sd	s5,56(sp)
ffffffffc020556e:	f85a                	sd	s6,48(sp)
ffffffffc0205570:	f45e                	sd	s7,40(sp)
ffffffffc0205572:	f062                	sd	s8,32(sp)
ffffffffc0205574:	ec66                	sd	s9,24(sp)
ffffffffc0205576:	4401                	li	s0,0
ffffffffc0205578:	ee19                	bnez	a2,ffffffffc0205596 <sysfile_read+0x38>
ffffffffc020557a:	70a6                	ld	ra,104(sp)
ffffffffc020557c:	8522                	mv	a0,s0
ffffffffc020557e:	7406                	ld	s0,96(sp)
ffffffffc0205580:	64e6                	ld	s1,88(sp)
ffffffffc0205582:	6946                	ld	s2,80(sp)
ffffffffc0205584:	69a6                	ld	s3,72(sp)
ffffffffc0205586:	6a06                	ld	s4,64(sp)
ffffffffc0205588:	7ae2                	ld	s5,56(sp)
ffffffffc020558a:	7b42                	ld	s6,48(sp)
ffffffffc020558c:	7ba2                	ld	s7,40(sp)
ffffffffc020558e:	7c02                	ld	s8,32(sp)
ffffffffc0205590:	6ce2                	ld	s9,24(sp)
ffffffffc0205592:	6165                	addi	sp,sp,112
ffffffffc0205594:	8082                	ret
ffffffffc0205596:	00091c97          	auipc	s9,0x91
ffffffffc020559a:	32ac8c93          	addi	s9,s9,810 # ffffffffc02968c0 <current>
ffffffffc020559e:	000cb783          	ld	a5,0(s9)
ffffffffc02055a2:	84b2                	mv	s1,a2
ffffffffc02055a4:	8b2e                	mv	s6,a1
ffffffffc02055a6:	4601                	li	a2,0
ffffffffc02055a8:	4585                	li	a1,1
ffffffffc02055aa:	0287b903          	ld	s2,40(a5)
ffffffffc02055ae:	8aaa                	mv	s5,a0
ffffffffc02055b0:	c9eff0ef          	jal	ra,ffffffffc0204a4e <file_testfd>
ffffffffc02055b4:	c959                	beqz	a0,ffffffffc020564a <sysfile_read+0xec>
ffffffffc02055b6:	6505                	lui	a0,0x1
ffffffffc02055b8:	9d7fc0ef          	jal	ra,ffffffffc0201f8e <kmalloc>
ffffffffc02055bc:	89aa                	mv	s3,a0
ffffffffc02055be:	c941                	beqz	a0,ffffffffc020564e <sysfile_read+0xf0>
ffffffffc02055c0:	4b81                	li	s7,0
ffffffffc02055c2:	6a05                	lui	s4,0x1
ffffffffc02055c4:	03890c13          	addi	s8,s2,56
ffffffffc02055c8:	0744ec63          	bltu	s1,s4,ffffffffc0205640 <sysfile_read+0xe2>
ffffffffc02055cc:	e452                	sd	s4,8(sp)
ffffffffc02055ce:	6605                	lui	a2,0x1
ffffffffc02055d0:	0034                	addi	a3,sp,8
ffffffffc02055d2:	85ce                	mv	a1,s3
ffffffffc02055d4:	8556                	mv	a0,s5
ffffffffc02055d6:	e20ff0ef          	jal	ra,ffffffffc0204bf6 <file_read>
ffffffffc02055da:	66a2                	ld	a3,8(sp)
ffffffffc02055dc:	842a                	mv	s0,a0
ffffffffc02055de:	ca9d                	beqz	a3,ffffffffc0205614 <sysfile_read+0xb6>
ffffffffc02055e0:	00090c63          	beqz	s2,ffffffffc02055f8 <sysfile_read+0x9a>
ffffffffc02055e4:	8562                	mv	a0,s8
ffffffffc02055e6:	f7ffe0ef          	jal	ra,ffffffffc0204564 <down>
ffffffffc02055ea:	000cb783          	ld	a5,0(s9)
ffffffffc02055ee:	cfa1                	beqz	a5,ffffffffc0205646 <sysfile_read+0xe8>
ffffffffc02055f0:	43dc                	lw	a5,4(a5)
ffffffffc02055f2:	66a2                	ld	a3,8(sp)
ffffffffc02055f4:	04f92823          	sw	a5,80(s2)
ffffffffc02055f8:	864e                	mv	a2,s3
ffffffffc02055fa:	85da                	mv	a1,s6
ffffffffc02055fc:	854a                	mv	a0,s2
ffffffffc02055fe:	d5dfe0ef          	jal	ra,ffffffffc020435a <copy_to_user>
ffffffffc0205602:	c50d                	beqz	a0,ffffffffc020562c <sysfile_read+0xce>
ffffffffc0205604:	67a2                	ld	a5,8(sp)
ffffffffc0205606:	04f4e663          	bltu	s1,a5,ffffffffc0205652 <sysfile_read+0xf4>
ffffffffc020560a:	9b3e                	add	s6,s6,a5
ffffffffc020560c:	8c9d                	sub	s1,s1,a5
ffffffffc020560e:	9bbe                	add	s7,s7,a5
ffffffffc0205610:	02091263          	bnez	s2,ffffffffc0205634 <sysfile_read+0xd6>
ffffffffc0205614:	e401                	bnez	s0,ffffffffc020561c <sysfile_read+0xbe>
ffffffffc0205616:	67a2                	ld	a5,8(sp)
ffffffffc0205618:	c391                	beqz	a5,ffffffffc020561c <sysfile_read+0xbe>
ffffffffc020561a:	f4dd                	bnez	s1,ffffffffc02055c8 <sysfile_read+0x6a>
ffffffffc020561c:	854e                	mv	a0,s3
ffffffffc020561e:	a21fc0ef          	jal	ra,ffffffffc020203e <kfree>
ffffffffc0205622:	f40b8ce3          	beqz	s7,ffffffffc020557a <sysfile_read+0x1c>
ffffffffc0205626:	000b841b          	sext.w	s0,s7
ffffffffc020562a:	bf81                	j	ffffffffc020557a <sysfile_read+0x1c>
ffffffffc020562c:	e011                	bnez	s0,ffffffffc0205630 <sysfile_read+0xd2>
ffffffffc020562e:	5475                	li	s0,-3
ffffffffc0205630:	fe0906e3          	beqz	s2,ffffffffc020561c <sysfile_read+0xbe>
ffffffffc0205634:	8562                	mv	a0,s8
ffffffffc0205636:	f2bfe0ef          	jal	ra,ffffffffc0204560 <up>
ffffffffc020563a:	04092823          	sw	zero,80(s2)
ffffffffc020563e:	bfd9                	j	ffffffffc0205614 <sysfile_read+0xb6>
ffffffffc0205640:	e426                	sd	s1,8(sp)
ffffffffc0205642:	8626                	mv	a2,s1
ffffffffc0205644:	b771                	j	ffffffffc02055d0 <sysfile_read+0x72>
ffffffffc0205646:	66a2                	ld	a3,8(sp)
ffffffffc0205648:	bf45                	j	ffffffffc02055f8 <sysfile_read+0x9a>
ffffffffc020564a:	5475                	li	s0,-3
ffffffffc020564c:	b73d                	j	ffffffffc020557a <sysfile_read+0x1c>
ffffffffc020564e:	5471                	li	s0,-4
ffffffffc0205650:	b72d                	j	ffffffffc020557a <sysfile_read+0x1c>
ffffffffc0205652:	00008697          	auipc	a3,0x8
ffffffffc0205656:	e3e68693          	addi	a3,a3,-450 # ffffffffc020d490 <CSWTCH.79+0xc8>
ffffffffc020565a:	00006617          	auipc	a2,0x6
ffffffffc020565e:	35e60613          	addi	a2,a2,862 # ffffffffc020b9b8 <commands+0x210>
ffffffffc0205662:	05500593          	li	a1,85
ffffffffc0205666:	00008517          	auipc	a0,0x8
ffffffffc020566a:	e3a50513          	addi	a0,a0,-454 # ffffffffc020d4a0 <CSWTCH.79+0xd8>
ffffffffc020566e:	e31fa0ef          	jal	ra,ffffffffc020049e <__panic>

ffffffffc0205672 <sysfile_write>:
ffffffffc0205672:	7159                	addi	sp,sp,-112
ffffffffc0205674:	e8ca                	sd	s2,80(sp)
ffffffffc0205676:	f486                	sd	ra,104(sp)
ffffffffc0205678:	f0a2                	sd	s0,96(sp)
ffffffffc020567a:	eca6                	sd	s1,88(sp)
ffffffffc020567c:	e4ce                	sd	s3,72(sp)
ffffffffc020567e:	e0d2                	sd	s4,64(sp)
ffffffffc0205680:	fc56                	sd	s5,56(sp)
ffffffffc0205682:	f85a                	sd	s6,48(sp)
ffffffffc0205684:	f45e                	sd	s7,40(sp)
ffffffffc0205686:	f062                	sd	s8,32(sp)
ffffffffc0205688:	ec66                	sd	s9,24(sp)
ffffffffc020568a:	4901                	li	s2,0
ffffffffc020568c:	ee19                	bnez	a2,ffffffffc02056aa <sysfile_write+0x38>
ffffffffc020568e:	70a6                	ld	ra,104(sp)
ffffffffc0205690:	7406                	ld	s0,96(sp)
ffffffffc0205692:	64e6                	ld	s1,88(sp)
ffffffffc0205694:	69a6                	ld	s3,72(sp)
ffffffffc0205696:	6a06                	ld	s4,64(sp)
ffffffffc0205698:	7ae2                	ld	s5,56(sp)
ffffffffc020569a:	7b42                	ld	s6,48(sp)
ffffffffc020569c:	7ba2                	ld	s7,40(sp)
ffffffffc020569e:	7c02                	ld	s8,32(sp)
ffffffffc02056a0:	6ce2                	ld	s9,24(sp)
ffffffffc02056a2:	854a                	mv	a0,s2
ffffffffc02056a4:	6946                	ld	s2,80(sp)
ffffffffc02056a6:	6165                	addi	sp,sp,112
ffffffffc02056a8:	8082                	ret
ffffffffc02056aa:	00091c17          	auipc	s8,0x91
ffffffffc02056ae:	216c0c13          	addi	s8,s8,534 # ffffffffc02968c0 <current>
ffffffffc02056b2:	000c3783          	ld	a5,0(s8)
ffffffffc02056b6:	8432                	mv	s0,a2
ffffffffc02056b8:	89ae                	mv	s3,a1
ffffffffc02056ba:	4605                	li	a2,1
ffffffffc02056bc:	4581                	li	a1,0
ffffffffc02056be:	7784                	ld	s1,40(a5)
ffffffffc02056c0:	8baa                	mv	s7,a0
ffffffffc02056c2:	b8cff0ef          	jal	ra,ffffffffc0204a4e <file_testfd>
ffffffffc02056c6:	cd59                	beqz	a0,ffffffffc0205764 <sysfile_write+0xf2>
ffffffffc02056c8:	6505                	lui	a0,0x1
ffffffffc02056ca:	8c5fc0ef          	jal	ra,ffffffffc0201f8e <kmalloc>
ffffffffc02056ce:	8a2a                	mv	s4,a0
ffffffffc02056d0:	cd41                	beqz	a0,ffffffffc0205768 <sysfile_write+0xf6>
ffffffffc02056d2:	4c81                	li	s9,0
ffffffffc02056d4:	6a85                	lui	s5,0x1
ffffffffc02056d6:	03848b13          	addi	s6,s1,56
ffffffffc02056da:	05546a63          	bltu	s0,s5,ffffffffc020572e <sysfile_write+0xbc>
ffffffffc02056de:	e456                	sd	s5,8(sp)
ffffffffc02056e0:	c8a9                	beqz	s1,ffffffffc0205732 <sysfile_write+0xc0>
ffffffffc02056e2:	855a                	mv	a0,s6
ffffffffc02056e4:	e81fe0ef          	jal	ra,ffffffffc0204564 <down>
ffffffffc02056e8:	000c3783          	ld	a5,0(s8)
ffffffffc02056ec:	c399                	beqz	a5,ffffffffc02056f2 <sysfile_write+0x80>
ffffffffc02056ee:	43dc                	lw	a5,4(a5)
ffffffffc02056f0:	c8bc                	sw	a5,80(s1)
ffffffffc02056f2:	66a2                	ld	a3,8(sp)
ffffffffc02056f4:	4701                	li	a4,0
ffffffffc02056f6:	864e                	mv	a2,s3
ffffffffc02056f8:	85d2                	mv	a1,s4
ffffffffc02056fa:	8526                	mv	a0,s1
ffffffffc02056fc:	c2bfe0ef          	jal	ra,ffffffffc0204326 <copy_from_user>
ffffffffc0205700:	c139                	beqz	a0,ffffffffc0205746 <sysfile_write+0xd4>
ffffffffc0205702:	855a                	mv	a0,s6
ffffffffc0205704:	e5dfe0ef          	jal	ra,ffffffffc0204560 <up>
ffffffffc0205708:	0404a823          	sw	zero,80(s1)
ffffffffc020570c:	6622                	ld	a2,8(sp)
ffffffffc020570e:	0034                	addi	a3,sp,8
ffffffffc0205710:	85d2                	mv	a1,s4
ffffffffc0205712:	855e                	mv	a0,s7
ffffffffc0205714:	dc8ff0ef          	jal	ra,ffffffffc0204cdc <file_write>
ffffffffc0205718:	67a2                	ld	a5,8(sp)
ffffffffc020571a:	892a                	mv	s2,a0
ffffffffc020571c:	ef85                	bnez	a5,ffffffffc0205754 <sysfile_write+0xe2>
ffffffffc020571e:	8552                	mv	a0,s4
ffffffffc0205720:	91ffc0ef          	jal	ra,ffffffffc020203e <kfree>
ffffffffc0205724:	f60c85e3          	beqz	s9,ffffffffc020568e <sysfile_write+0x1c>
ffffffffc0205728:	000c891b          	sext.w	s2,s9
ffffffffc020572c:	b78d                	j	ffffffffc020568e <sysfile_write+0x1c>
ffffffffc020572e:	e422                	sd	s0,8(sp)
ffffffffc0205730:	f8cd                	bnez	s1,ffffffffc02056e2 <sysfile_write+0x70>
ffffffffc0205732:	66a2                	ld	a3,8(sp)
ffffffffc0205734:	4701                	li	a4,0
ffffffffc0205736:	864e                	mv	a2,s3
ffffffffc0205738:	85d2                	mv	a1,s4
ffffffffc020573a:	4501                	li	a0,0
ffffffffc020573c:	bebfe0ef          	jal	ra,ffffffffc0204326 <copy_from_user>
ffffffffc0205740:	f571                	bnez	a0,ffffffffc020570c <sysfile_write+0x9a>
ffffffffc0205742:	5975                	li	s2,-3
ffffffffc0205744:	bfe9                	j	ffffffffc020571e <sysfile_write+0xac>
ffffffffc0205746:	855a                	mv	a0,s6
ffffffffc0205748:	e19fe0ef          	jal	ra,ffffffffc0204560 <up>
ffffffffc020574c:	5975                	li	s2,-3
ffffffffc020574e:	0404a823          	sw	zero,80(s1)
ffffffffc0205752:	b7f1                	j	ffffffffc020571e <sysfile_write+0xac>
ffffffffc0205754:	00f46c63          	bltu	s0,a5,ffffffffc020576c <sysfile_write+0xfa>
ffffffffc0205758:	99be                	add	s3,s3,a5
ffffffffc020575a:	8c1d                	sub	s0,s0,a5
ffffffffc020575c:	9cbe                	add	s9,s9,a5
ffffffffc020575e:	f161                	bnez	a0,ffffffffc020571e <sysfile_write+0xac>
ffffffffc0205760:	fc2d                	bnez	s0,ffffffffc02056da <sysfile_write+0x68>
ffffffffc0205762:	bf75                	j	ffffffffc020571e <sysfile_write+0xac>
ffffffffc0205764:	5975                	li	s2,-3
ffffffffc0205766:	b725                	j	ffffffffc020568e <sysfile_write+0x1c>
ffffffffc0205768:	5971                	li	s2,-4
ffffffffc020576a:	b715                	j	ffffffffc020568e <sysfile_write+0x1c>
ffffffffc020576c:	00008697          	auipc	a3,0x8
ffffffffc0205770:	d2468693          	addi	a3,a3,-732 # ffffffffc020d490 <CSWTCH.79+0xc8>
ffffffffc0205774:	00006617          	auipc	a2,0x6
ffffffffc0205778:	24460613          	addi	a2,a2,580 # ffffffffc020b9b8 <commands+0x210>
ffffffffc020577c:	08a00593          	li	a1,138
ffffffffc0205780:	00008517          	auipc	a0,0x8
ffffffffc0205784:	d2050513          	addi	a0,a0,-736 # ffffffffc020d4a0 <CSWTCH.79+0xd8>
ffffffffc0205788:	d17fa0ef          	jal	ra,ffffffffc020049e <__panic>

ffffffffc020578c <sysfile_seek>:
ffffffffc020578c:	e36ff06f          	j	ffffffffc0204dc2 <file_seek>

ffffffffc0205790 <sysfile_fstat>:
ffffffffc0205790:	715d                	addi	sp,sp,-80
ffffffffc0205792:	f44e                	sd	s3,40(sp)
ffffffffc0205794:	00091997          	auipc	s3,0x91
ffffffffc0205798:	12c98993          	addi	s3,s3,300 # ffffffffc02968c0 <current>
ffffffffc020579c:	0009b703          	ld	a4,0(s3)
ffffffffc02057a0:	fc26                	sd	s1,56(sp)
ffffffffc02057a2:	84ae                	mv	s1,a1
ffffffffc02057a4:	858a                	mv	a1,sp
ffffffffc02057a6:	e0a2                	sd	s0,64(sp)
ffffffffc02057a8:	f84a                	sd	s2,48(sp)
ffffffffc02057aa:	e486                	sd	ra,72(sp)
ffffffffc02057ac:	02873903          	ld	s2,40(a4)
ffffffffc02057b0:	f052                	sd	s4,32(sp)
ffffffffc02057b2:	f30ff0ef          	jal	ra,ffffffffc0204ee2 <file_fstat>
ffffffffc02057b6:	842a                	mv	s0,a0
ffffffffc02057b8:	e91d                	bnez	a0,ffffffffc02057ee <sysfile_fstat+0x5e>
ffffffffc02057ba:	04090363          	beqz	s2,ffffffffc0205800 <sysfile_fstat+0x70>
ffffffffc02057be:	03890a13          	addi	s4,s2,56
ffffffffc02057c2:	8552                	mv	a0,s4
ffffffffc02057c4:	da1fe0ef          	jal	ra,ffffffffc0204564 <down>
ffffffffc02057c8:	0009b783          	ld	a5,0(s3)
ffffffffc02057cc:	c3b9                	beqz	a5,ffffffffc0205812 <sysfile_fstat+0x82>
ffffffffc02057ce:	43dc                	lw	a5,4(a5)
ffffffffc02057d0:	02000693          	li	a3,32
ffffffffc02057d4:	860a                	mv	a2,sp
ffffffffc02057d6:	04f92823          	sw	a5,80(s2)
ffffffffc02057da:	85a6                	mv	a1,s1
ffffffffc02057dc:	854a                	mv	a0,s2
ffffffffc02057de:	b7dfe0ef          	jal	ra,ffffffffc020435a <copy_to_user>
ffffffffc02057e2:	c121                	beqz	a0,ffffffffc0205822 <sysfile_fstat+0x92>
ffffffffc02057e4:	8552                	mv	a0,s4
ffffffffc02057e6:	d7bfe0ef          	jal	ra,ffffffffc0204560 <up>
ffffffffc02057ea:	04092823          	sw	zero,80(s2)
ffffffffc02057ee:	60a6                	ld	ra,72(sp)
ffffffffc02057f0:	8522                	mv	a0,s0
ffffffffc02057f2:	6406                	ld	s0,64(sp)
ffffffffc02057f4:	74e2                	ld	s1,56(sp)
ffffffffc02057f6:	7942                	ld	s2,48(sp)
ffffffffc02057f8:	79a2                	ld	s3,40(sp)
ffffffffc02057fa:	7a02                	ld	s4,32(sp)
ffffffffc02057fc:	6161                	addi	sp,sp,80
ffffffffc02057fe:	8082                	ret
ffffffffc0205800:	02000693          	li	a3,32
ffffffffc0205804:	860a                	mv	a2,sp
ffffffffc0205806:	85a6                	mv	a1,s1
ffffffffc0205808:	b53fe0ef          	jal	ra,ffffffffc020435a <copy_to_user>
ffffffffc020580c:	f16d                	bnez	a0,ffffffffc02057ee <sysfile_fstat+0x5e>
ffffffffc020580e:	5475                	li	s0,-3
ffffffffc0205810:	bff9                	j	ffffffffc02057ee <sysfile_fstat+0x5e>
ffffffffc0205812:	02000693          	li	a3,32
ffffffffc0205816:	860a                	mv	a2,sp
ffffffffc0205818:	85a6                	mv	a1,s1
ffffffffc020581a:	854a                	mv	a0,s2
ffffffffc020581c:	b3ffe0ef          	jal	ra,ffffffffc020435a <copy_to_user>
ffffffffc0205820:	f171                	bnez	a0,ffffffffc02057e4 <sysfile_fstat+0x54>
ffffffffc0205822:	8552                	mv	a0,s4
ffffffffc0205824:	d3dfe0ef          	jal	ra,ffffffffc0204560 <up>
ffffffffc0205828:	5475                	li	s0,-3
ffffffffc020582a:	04092823          	sw	zero,80(s2)
ffffffffc020582e:	b7c1                	j	ffffffffc02057ee <sysfile_fstat+0x5e>

ffffffffc0205830 <sysfile_fsync>:
ffffffffc0205830:	f72ff06f          	j	ffffffffc0204fa2 <file_fsync>

ffffffffc0205834 <sysfile_getcwd>:
ffffffffc0205834:	715d                	addi	sp,sp,-80
ffffffffc0205836:	f44e                	sd	s3,40(sp)
ffffffffc0205838:	00091997          	auipc	s3,0x91
ffffffffc020583c:	08898993          	addi	s3,s3,136 # ffffffffc02968c0 <current>
ffffffffc0205840:	0009b783          	ld	a5,0(s3)
ffffffffc0205844:	f84a                	sd	s2,48(sp)
ffffffffc0205846:	e486                	sd	ra,72(sp)
ffffffffc0205848:	e0a2                	sd	s0,64(sp)
ffffffffc020584a:	fc26                	sd	s1,56(sp)
ffffffffc020584c:	f052                	sd	s4,32(sp)
ffffffffc020584e:	0287b903          	ld	s2,40(a5)
ffffffffc0205852:	cda9                	beqz	a1,ffffffffc02058ac <sysfile_getcwd+0x78>
ffffffffc0205854:	842e                	mv	s0,a1
ffffffffc0205856:	84aa                	mv	s1,a0
ffffffffc0205858:	04090363          	beqz	s2,ffffffffc020589e <sysfile_getcwd+0x6a>
ffffffffc020585c:	03890a13          	addi	s4,s2,56
ffffffffc0205860:	8552                	mv	a0,s4
ffffffffc0205862:	d03fe0ef          	jal	ra,ffffffffc0204564 <down>
ffffffffc0205866:	0009b783          	ld	a5,0(s3)
ffffffffc020586a:	c781                	beqz	a5,ffffffffc0205872 <sysfile_getcwd+0x3e>
ffffffffc020586c:	43dc                	lw	a5,4(a5)
ffffffffc020586e:	04f92823          	sw	a5,80(s2)
ffffffffc0205872:	4685                	li	a3,1
ffffffffc0205874:	8622                	mv	a2,s0
ffffffffc0205876:	85a6                	mv	a1,s1
ffffffffc0205878:	854a                	mv	a0,s2
ffffffffc020587a:	a19fe0ef          	jal	ra,ffffffffc0204292 <user_mem_check>
ffffffffc020587e:	e90d                	bnez	a0,ffffffffc02058b0 <sysfile_getcwd+0x7c>
ffffffffc0205880:	5475                	li	s0,-3
ffffffffc0205882:	8552                	mv	a0,s4
ffffffffc0205884:	cddfe0ef          	jal	ra,ffffffffc0204560 <up>
ffffffffc0205888:	04092823          	sw	zero,80(s2)
ffffffffc020588c:	60a6                	ld	ra,72(sp)
ffffffffc020588e:	8522                	mv	a0,s0
ffffffffc0205890:	6406                	ld	s0,64(sp)
ffffffffc0205892:	74e2                	ld	s1,56(sp)
ffffffffc0205894:	7942                	ld	s2,48(sp)
ffffffffc0205896:	79a2                	ld	s3,40(sp)
ffffffffc0205898:	7a02                	ld	s4,32(sp)
ffffffffc020589a:	6161                	addi	sp,sp,80
ffffffffc020589c:	8082                	ret
ffffffffc020589e:	862e                	mv	a2,a1
ffffffffc02058a0:	4685                	li	a3,1
ffffffffc02058a2:	85aa                	mv	a1,a0
ffffffffc02058a4:	4501                	li	a0,0
ffffffffc02058a6:	9edfe0ef          	jal	ra,ffffffffc0204292 <user_mem_check>
ffffffffc02058aa:	ed09                	bnez	a0,ffffffffc02058c4 <sysfile_getcwd+0x90>
ffffffffc02058ac:	5475                	li	s0,-3
ffffffffc02058ae:	bff9                	j	ffffffffc020588c <sysfile_getcwd+0x58>
ffffffffc02058b0:	8622                	mv	a2,s0
ffffffffc02058b2:	4681                	li	a3,0
ffffffffc02058b4:	85a6                	mv	a1,s1
ffffffffc02058b6:	850a                	mv	a0,sp
ffffffffc02058b8:	b2bff0ef          	jal	ra,ffffffffc02053e2 <iobuf_init>
ffffffffc02058bc:	315020ef          	jal	ra,ffffffffc02083d0 <vfs_getcwd>
ffffffffc02058c0:	842a                	mv	s0,a0
ffffffffc02058c2:	b7c1                	j	ffffffffc0205882 <sysfile_getcwd+0x4e>
ffffffffc02058c4:	8622                	mv	a2,s0
ffffffffc02058c6:	4681                	li	a3,0
ffffffffc02058c8:	85a6                	mv	a1,s1
ffffffffc02058ca:	850a                	mv	a0,sp
ffffffffc02058cc:	b17ff0ef          	jal	ra,ffffffffc02053e2 <iobuf_init>
ffffffffc02058d0:	301020ef          	jal	ra,ffffffffc02083d0 <vfs_getcwd>
ffffffffc02058d4:	842a                	mv	s0,a0
ffffffffc02058d6:	bf5d                	j	ffffffffc020588c <sysfile_getcwd+0x58>

ffffffffc02058d8 <sysfile_getdirentry>:
ffffffffc02058d8:	7139                	addi	sp,sp,-64
ffffffffc02058da:	e852                	sd	s4,16(sp)
ffffffffc02058dc:	00091a17          	auipc	s4,0x91
ffffffffc02058e0:	fe4a0a13          	addi	s4,s4,-28 # ffffffffc02968c0 <current>
ffffffffc02058e4:	000a3703          	ld	a4,0(s4)
ffffffffc02058e8:	ec4e                	sd	s3,24(sp)
ffffffffc02058ea:	89aa                	mv	s3,a0
ffffffffc02058ec:	10800513          	li	a0,264
ffffffffc02058f0:	f426                	sd	s1,40(sp)
ffffffffc02058f2:	f04a                	sd	s2,32(sp)
ffffffffc02058f4:	fc06                	sd	ra,56(sp)
ffffffffc02058f6:	f822                	sd	s0,48(sp)
ffffffffc02058f8:	e456                	sd	s5,8(sp)
ffffffffc02058fa:	7704                	ld	s1,40(a4)
ffffffffc02058fc:	892e                	mv	s2,a1
ffffffffc02058fe:	e90fc0ef          	jal	ra,ffffffffc0201f8e <kmalloc>
ffffffffc0205902:	c169                	beqz	a0,ffffffffc02059c4 <sysfile_getdirentry+0xec>
ffffffffc0205904:	842a                	mv	s0,a0
ffffffffc0205906:	c8c1                	beqz	s1,ffffffffc0205996 <sysfile_getdirentry+0xbe>
ffffffffc0205908:	03848a93          	addi	s5,s1,56
ffffffffc020590c:	8556                	mv	a0,s5
ffffffffc020590e:	c57fe0ef          	jal	ra,ffffffffc0204564 <down>
ffffffffc0205912:	000a3783          	ld	a5,0(s4)
ffffffffc0205916:	c399                	beqz	a5,ffffffffc020591c <sysfile_getdirentry+0x44>
ffffffffc0205918:	43dc                	lw	a5,4(a5)
ffffffffc020591a:	c8bc                	sw	a5,80(s1)
ffffffffc020591c:	4705                	li	a4,1
ffffffffc020591e:	46a1                	li	a3,8
ffffffffc0205920:	864a                	mv	a2,s2
ffffffffc0205922:	85a2                	mv	a1,s0
ffffffffc0205924:	8526                	mv	a0,s1
ffffffffc0205926:	a01fe0ef          	jal	ra,ffffffffc0204326 <copy_from_user>
ffffffffc020592a:	e505                	bnez	a0,ffffffffc0205952 <sysfile_getdirentry+0x7a>
ffffffffc020592c:	8556                	mv	a0,s5
ffffffffc020592e:	c33fe0ef          	jal	ra,ffffffffc0204560 <up>
ffffffffc0205932:	59f5                	li	s3,-3
ffffffffc0205934:	0404a823          	sw	zero,80(s1)
ffffffffc0205938:	8522                	mv	a0,s0
ffffffffc020593a:	f04fc0ef          	jal	ra,ffffffffc020203e <kfree>
ffffffffc020593e:	70e2                	ld	ra,56(sp)
ffffffffc0205940:	7442                	ld	s0,48(sp)
ffffffffc0205942:	74a2                	ld	s1,40(sp)
ffffffffc0205944:	7902                	ld	s2,32(sp)
ffffffffc0205946:	6a42                	ld	s4,16(sp)
ffffffffc0205948:	6aa2                	ld	s5,8(sp)
ffffffffc020594a:	854e                	mv	a0,s3
ffffffffc020594c:	69e2                	ld	s3,24(sp)
ffffffffc020594e:	6121                	addi	sp,sp,64
ffffffffc0205950:	8082                	ret
ffffffffc0205952:	8556                	mv	a0,s5
ffffffffc0205954:	c0dfe0ef          	jal	ra,ffffffffc0204560 <up>
ffffffffc0205958:	854e                	mv	a0,s3
ffffffffc020595a:	85a2                	mv	a1,s0
ffffffffc020595c:	0404a823          	sw	zero,80(s1)
ffffffffc0205960:	ef0ff0ef          	jal	ra,ffffffffc0205050 <file_getdirentry>
ffffffffc0205964:	89aa                	mv	s3,a0
ffffffffc0205966:	f969                	bnez	a0,ffffffffc0205938 <sysfile_getdirentry+0x60>
ffffffffc0205968:	8556                	mv	a0,s5
ffffffffc020596a:	bfbfe0ef          	jal	ra,ffffffffc0204564 <down>
ffffffffc020596e:	000a3783          	ld	a5,0(s4)
ffffffffc0205972:	c399                	beqz	a5,ffffffffc0205978 <sysfile_getdirentry+0xa0>
ffffffffc0205974:	43dc                	lw	a5,4(a5)
ffffffffc0205976:	c8bc                	sw	a5,80(s1)
ffffffffc0205978:	10800693          	li	a3,264
ffffffffc020597c:	8622                	mv	a2,s0
ffffffffc020597e:	85ca                	mv	a1,s2
ffffffffc0205980:	8526                	mv	a0,s1
ffffffffc0205982:	9d9fe0ef          	jal	ra,ffffffffc020435a <copy_to_user>
ffffffffc0205986:	e111                	bnez	a0,ffffffffc020598a <sysfile_getdirentry+0xb2>
ffffffffc0205988:	59f5                	li	s3,-3
ffffffffc020598a:	8556                	mv	a0,s5
ffffffffc020598c:	bd5fe0ef          	jal	ra,ffffffffc0204560 <up>
ffffffffc0205990:	0404a823          	sw	zero,80(s1)
ffffffffc0205994:	b755                	j	ffffffffc0205938 <sysfile_getdirentry+0x60>
ffffffffc0205996:	85aa                	mv	a1,a0
ffffffffc0205998:	4705                	li	a4,1
ffffffffc020599a:	46a1                	li	a3,8
ffffffffc020599c:	864a                	mv	a2,s2
ffffffffc020599e:	4501                	li	a0,0
ffffffffc02059a0:	987fe0ef          	jal	ra,ffffffffc0204326 <copy_from_user>
ffffffffc02059a4:	cd11                	beqz	a0,ffffffffc02059c0 <sysfile_getdirentry+0xe8>
ffffffffc02059a6:	854e                	mv	a0,s3
ffffffffc02059a8:	85a2                	mv	a1,s0
ffffffffc02059aa:	ea6ff0ef          	jal	ra,ffffffffc0205050 <file_getdirentry>
ffffffffc02059ae:	89aa                	mv	s3,a0
ffffffffc02059b0:	f541                	bnez	a0,ffffffffc0205938 <sysfile_getdirentry+0x60>
ffffffffc02059b2:	10800693          	li	a3,264
ffffffffc02059b6:	8622                	mv	a2,s0
ffffffffc02059b8:	85ca                	mv	a1,s2
ffffffffc02059ba:	9a1fe0ef          	jal	ra,ffffffffc020435a <copy_to_user>
ffffffffc02059be:	fd2d                	bnez	a0,ffffffffc0205938 <sysfile_getdirentry+0x60>
ffffffffc02059c0:	59f5                	li	s3,-3
ffffffffc02059c2:	bf9d                	j	ffffffffc0205938 <sysfile_getdirentry+0x60>
ffffffffc02059c4:	59f1                	li	s3,-4
ffffffffc02059c6:	bfa5                	j	ffffffffc020593e <sysfile_getdirentry+0x66>

ffffffffc02059c8 <sysfile_dup>:
ffffffffc02059c8:	f6eff06f          	j	ffffffffc0205136 <file_dup>

ffffffffc02059cc <kernel_thread_entry>:
ffffffffc02059cc:	8526                	mv	a0,s1
ffffffffc02059ce:	9402                	jalr	s0
ffffffffc02059d0:	64c000ef          	jal	ra,ffffffffc020601c <do_exit>

ffffffffc02059d4 <alloc_proc>:
ffffffffc02059d4:	1141                	addi	sp,sp,-16
ffffffffc02059d6:	15000513          	li	a0,336
ffffffffc02059da:	e022                	sd	s0,0(sp)
ffffffffc02059dc:	e406                	sd	ra,8(sp)
ffffffffc02059de:	db0fc0ef          	jal	ra,ffffffffc0201f8e <kmalloc>
ffffffffc02059e2:	842a                	mv	s0,a0
ffffffffc02059e4:	c141                	beqz	a0,ffffffffc0205a64 <alloc_proc+0x90>
ffffffffc02059e6:	57fd                	li	a5,-1
ffffffffc02059e8:	1782                	slli	a5,a5,0x20
ffffffffc02059ea:	e11c                	sd	a5,0(a0)
ffffffffc02059ec:	07000613          	li	a2,112
ffffffffc02059f0:	4581                	li	a1,0
ffffffffc02059f2:	00052423          	sw	zero,8(a0)
ffffffffc02059f6:	00053823          	sd	zero,16(a0)
ffffffffc02059fa:	00053c23          	sd	zero,24(a0)
ffffffffc02059fe:	02053023          	sd	zero,32(a0)
ffffffffc0205a02:	02053423          	sd	zero,40(a0)
ffffffffc0205a06:	03050513          	addi	a0,a0,48
ffffffffc0205a0a:	2cb050ef          	jal	ra,ffffffffc020b4d4 <memset>
ffffffffc0205a0e:	00091797          	auipc	a5,0x91
ffffffffc0205a12:	e827b783          	ld	a5,-382(a5) # ffffffffc0296890 <boot_pgdir_pa>
ffffffffc0205a16:	f45c                	sd	a5,168(s0)
ffffffffc0205a18:	0a043023          	sd	zero,160(s0)
ffffffffc0205a1c:	0a042823          	sw	zero,176(s0)
ffffffffc0205a20:	463d                	li	a2,15
ffffffffc0205a22:	4581                	li	a1,0
ffffffffc0205a24:	0b440513          	addi	a0,s0,180
ffffffffc0205a28:	2ad050ef          	jal	ra,ffffffffc020b4d4 <memset>
ffffffffc0205a2c:	11040793          	addi	a5,s0,272
ffffffffc0205a30:	0e042623          	sw	zero,236(s0)
ffffffffc0205a34:	0e043c23          	sd	zero,248(s0)
ffffffffc0205a38:	10043023          	sd	zero,256(s0)
ffffffffc0205a3c:	0e043823          	sd	zero,240(s0)
ffffffffc0205a40:	10043423          	sd	zero,264(s0)
ffffffffc0205a44:	10f43c23          	sd	a5,280(s0)
ffffffffc0205a48:	10f43823          	sd	a5,272(s0)
ffffffffc0205a4c:	12042023          	sw	zero,288(s0)
ffffffffc0205a50:	12043423          	sd	zero,296(s0)
ffffffffc0205a54:	12043823          	sd	zero,304(s0)
ffffffffc0205a58:	12043c23          	sd	zero,312(s0)
ffffffffc0205a5c:	14043023          	sd	zero,320(s0)
ffffffffc0205a60:	14043423          	sd	zero,328(s0)
ffffffffc0205a64:	60a2                	ld	ra,8(sp)
ffffffffc0205a66:	8522                	mv	a0,s0
ffffffffc0205a68:	6402                	ld	s0,0(sp)
ffffffffc0205a6a:	0141                	addi	sp,sp,16
ffffffffc0205a6c:	8082                	ret

ffffffffc0205a6e <forkret>:
ffffffffc0205a6e:	00091797          	auipc	a5,0x91
ffffffffc0205a72:	e527b783          	ld	a5,-430(a5) # ffffffffc02968c0 <current>
ffffffffc0205a76:	73c8                	ld	a0,160(a5)
ffffffffc0205a78:	833fb06f          	j	ffffffffc02012aa <forkrets>

ffffffffc0205a7c <put_pgdir.isra.0>:
ffffffffc0205a7c:	1141                	addi	sp,sp,-16
ffffffffc0205a7e:	e406                	sd	ra,8(sp)
ffffffffc0205a80:	c02007b7          	lui	a5,0xc0200
ffffffffc0205a84:	02f56e63          	bltu	a0,a5,ffffffffc0205ac0 <put_pgdir.isra.0+0x44>
ffffffffc0205a88:	00091697          	auipc	a3,0x91
ffffffffc0205a8c:	e306b683          	ld	a3,-464(a3) # ffffffffc02968b8 <va_pa_offset>
ffffffffc0205a90:	8d15                	sub	a0,a0,a3
ffffffffc0205a92:	8131                	srli	a0,a0,0xc
ffffffffc0205a94:	00091797          	auipc	a5,0x91
ffffffffc0205a98:	e0c7b783          	ld	a5,-500(a5) # ffffffffc02968a0 <npage>
ffffffffc0205a9c:	02f57f63          	bgeu	a0,a5,ffffffffc0205ada <put_pgdir.isra.0+0x5e>
ffffffffc0205aa0:	0000a697          	auipc	a3,0xa
ffffffffc0205aa4:	d686b683          	ld	a3,-664(a3) # ffffffffc020f808 <nbase>
ffffffffc0205aa8:	60a2                	ld	ra,8(sp)
ffffffffc0205aaa:	8d15                	sub	a0,a0,a3
ffffffffc0205aac:	00091797          	auipc	a5,0x91
ffffffffc0205ab0:	dfc7b783          	ld	a5,-516(a5) # ffffffffc02968a8 <pages>
ffffffffc0205ab4:	051a                	slli	a0,a0,0x6
ffffffffc0205ab6:	4585                	li	a1,1
ffffffffc0205ab8:	953e                	add	a0,a0,a5
ffffffffc0205aba:	0141                	addi	sp,sp,16
ffffffffc0205abc:	eeefc06f          	j	ffffffffc02021aa <free_pages>
ffffffffc0205ac0:	86aa                	mv	a3,a0
ffffffffc0205ac2:	00007617          	auipc	a2,0x7
ffffffffc0205ac6:	abe60613          	addi	a2,a2,-1346 # ffffffffc020c580 <default_pmm_manager+0xe0>
ffffffffc0205aca:	07700593          	li	a1,119
ffffffffc0205ace:	00007517          	auipc	a0,0x7
ffffffffc0205ad2:	a3250513          	addi	a0,a0,-1486 # ffffffffc020c500 <default_pmm_manager+0x60>
ffffffffc0205ad6:	9c9fa0ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc0205ada:	00007617          	auipc	a2,0x7
ffffffffc0205ade:	ace60613          	addi	a2,a2,-1330 # ffffffffc020c5a8 <default_pmm_manager+0x108>
ffffffffc0205ae2:	06900593          	li	a1,105
ffffffffc0205ae6:	00007517          	auipc	a0,0x7
ffffffffc0205aea:	a1a50513          	addi	a0,a0,-1510 # ffffffffc020c500 <default_pmm_manager+0x60>
ffffffffc0205aee:	9b1fa0ef          	jal	ra,ffffffffc020049e <__panic>

ffffffffc0205af2 <setup_pgdir>:
ffffffffc0205af2:	1101                	addi	sp,sp,-32
ffffffffc0205af4:	e426                	sd	s1,8(sp)
ffffffffc0205af6:	84aa                	mv	s1,a0
ffffffffc0205af8:	4505                	li	a0,1
ffffffffc0205afa:	ec06                	sd	ra,24(sp)
ffffffffc0205afc:	e822                	sd	s0,16(sp)
ffffffffc0205afe:	e6efc0ef          	jal	ra,ffffffffc020216c <alloc_pages>
ffffffffc0205b02:	c939                	beqz	a0,ffffffffc0205b58 <setup_pgdir+0x66>
ffffffffc0205b04:	00091697          	auipc	a3,0x91
ffffffffc0205b08:	da46b683          	ld	a3,-604(a3) # ffffffffc02968a8 <pages>
ffffffffc0205b0c:	40d506b3          	sub	a3,a0,a3
ffffffffc0205b10:	8699                	srai	a3,a3,0x6
ffffffffc0205b12:	0000a417          	auipc	s0,0xa
ffffffffc0205b16:	cf643403          	ld	s0,-778(s0) # ffffffffc020f808 <nbase>
ffffffffc0205b1a:	96a2                	add	a3,a3,s0
ffffffffc0205b1c:	00c69793          	slli	a5,a3,0xc
ffffffffc0205b20:	83b1                	srli	a5,a5,0xc
ffffffffc0205b22:	00091717          	auipc	a4,0x91
ffffffffc0205b26:	d7e73703          	ld	a4,-642(a4) # ffffffffc02968a0 <npage>
ffffffffc0205b2a:	06b2                	slli	a3,a3,0xc
ffffffffc0205b2c:	02e7f863          	bgeu	a5,a4,ffffffffc0205b5c <setup_pgdir+0x6a>
ffffffffc0205b30:	00091417          	auipc	s0,0x91
ffffffffc0205b34:	d8843403          	ld	s0,-632(s0) # ffffffffc02968b8 <va_pa_offset>
ffffffffc0205b38:	9436                	add	s0,s0,a3
ffffffffc0205b3a:	6605                	lui	a2,0x1
ffffffffc0205b3c:	00091597          	auipc	a1,0x91
ffffffffc0205b40:	d5c5b583          	ld	a1,-676(a1) # ffffffffc0296898 <boot_pgdir_va>
ffffffffc0205b44:	8522                	mv	a0,s0
ffffffffc0205b46:	1e1050ef          	jal	ra,ffffffffc020b526 <memcpy>
ffffffffc0205b4a:	4501                	li	a0,0
ffffffffc0205b4c:	ec80                	sd	s0,24(s1)
ffffffffc0205b4e:	60e2                	ld	ra,24(sp)
ffffffffc0205b50:	6442                	ld	s0,16(sp)
ffffffffc0205b52:	64a2                	ld	s1,8(sp)
ffffffffc0205b54:	6105                	addi	sp,sp,32
ffffffffc0205b56:	8082                	ret
ffffffffc0205b58:	5571                	li	a0,-4
ffffffffc0205b5a:	bfd5                	j	ffffffffc0205b4e <setup_pgdir+0x5c>
ffffffffc0205b5c:	00007617          	auipc	a2,0x7
ffffffffc0205b60:	97c60613          	addi	a2,a2,-1668 # ffffffffc020c4d8 <default_pmm_manager+0x38>
ffffffffc0205b64:	07100593          	li	a1,113
ffffffffc0205b68:	00007517          	auipc	a0,0x7
ffffffffc0205b6c:	99850513          	addi	a0,a0,-1640 # ffffffffc020c500 <default_pmm_manager+0x60>
ffffffffc0205b70:	92ffa0ef          	jal	ra,ffffffffc020049e <__panic>

ffffffffc0205b74 <proc_run>:
ffffffffc0205b74:	7179                	addi	sp,sp,-48
ffffffffc0205b76:	f026                	sd	s1,32(sp)
ffffffffc0205b78:	00091497          	auipc	s1,0x91
ffffffffc0205b7c:	d4848493          	addi	s1,s1,-696 # ffffffffc02968c0 <current>
ffffffffc0205b80:	6098                	ld	a4,0(s1)
ffffffffc0205b82:	f406                	sd	ra,40(sp)
ffffffffc0205b84:	ec4a                	sd	s2,24(sp)
ffffffffc0205b86:	02a70a63          	beq	a4,a0,ffffffffc0205bba <proc_run+0x46>
ffffffffc0205b8a:	100027f3          	csrr	a5,sstatus
ffffffffc0205b8e:	8b89                	andi	a5,a5,2
ffffffffc0205b90:	4901                	li	s2,0
ffffffffc0205b92:	ef9d                	bnez	a5,ffffffffc0205bd0 <proc_run+0x5c>
ffffffffc0205b94:	755c                	ld	a5,168(a0)
ffffffffc0205b96:	56fd                	li	a3,-1
ffffffffc0205b98:	16fe                	slli	a3,a3,0x3f
ffffffffc0205b9a:	83b1                	srli	a5,a5,0xc
ffffffffc0205b9c:	e088                	sd	a0,0(s1)
ffffffffc0205b9e:	8fd5                	or	a5,a5,a3
ffffffffc0205ba0:	18079073          	csrw	satp,a5
ffffffffc0205ba4:	12000073          	sfence.vma
ffffffffc0205ba8:	608c                	ld	a1,0(s1)
ffffffffc0205baa:	03070513          	addi	a0,a4,48
ffffffffc0205bae:	03058593          	addi	a1,a1,48
ffffffffc0205bb2:	4e8010ef          	jal	ra,ffffffffc020709a <switch_to>
ffffffffc0205bb6:	00091763          	bnez	s2,ffffffffc0205bc4 <proc_run+0x50>
ffffffffc0205bba:	70a2                	ld	ra,40(sp)
ffffffffc0205bbc:	7482                	ld	s1,32(sp)
ffffffffc0205bbe:	6962                	ld	s2,24(sp)
ffffffffc0205bc0:	6145                	addi	sp,sp,48
ffffffffc0205bc2:	8082                	ret
ffffffffc0205bc4:	70a2                	ld	ra,40(sp)
ffffffffc0205bc6:	7482                	ld	s1,32(sp)
ffffffffc0205bc8:	6962                	ld	s2,24(sp)
ffffffffc0205bca:	6145                	addi	sp,sp,48
ffffffffc0205bcc:	8a0fb06f          	j	ffffffffc0200c6c <intr_enable>
ffffffffc0205bd0:	e42a                	sd	a0,8(sp)
ffffffffc0205bd2:	8a0fb0ef          	jal	ra,ffffffffc0200c72 <intr_disable>
ffffffffc0205bd6:	6098                	ld	a4,0(s1)
ffffffffc0205bd8:	6522                	ld	a0,8(sp)
ffffffffc0205bda:	4905                	li	s2,1
ffffffffc0205bdc:	bf65                	j	ffffffffc0205b94 <proc_run+0x20>

ffffffffc0205bde <do_fork>:
ffffffffc0205bde:	7119                	addi	sp,sp,-128
ffffffffc0205be0:	f0ca                	sd	s2,96(sp)
ffffffffc0205be2:	00091917          	auipc	s2,0x91
ffffffffc0205be6:	cf690913          	addi	s2,s2,-778 # ffffffffc02968d8 <nr_process>
ffffffffc0205bea:	00092703          	lw	a4,0(s2)
ffffffffc0205bee:	fc86                	sd	ra,120(sp)
ffffffffc0205bf0:	f8a2                	sd	s0,112(sp)
ffffffffc0205bf2:	f4a6                	sd	s1,104(sp)
ffffffffc0205bf4:	ecce                	sd	s3,88(sp)
ffffffffc0205bf6:	e8d2                	sd	s4,80(sp)
ffffffffc0205bf8:	e4d6                	sd	s5,72(sp)
ffffffffc0205bfa:	e0da                	sd	s6,64(sp)
ffffffffc0205bfc:	fc5e                	sd	s7,56(sp)
ffffffffc0205bfe:	f862                	sd	s8,48(sp)
ffffffffc0205c00:	f466                	sd	s9,40(sp)
ffffffffc0205c02:	f06a                	sd	s10,32(sp)
ffffffffc0205c04:	ec6e                	sd	s11,24(sp)
ffffffffc0205c06:	6785                	lui	a5,0x1
ffffffffc0205c08:	32f75563          	bge	a4,a5,ffffffffc0205f32 <do_fork+0x354>
ffffffffc0205c0c:	89aa                	mv	s3,a0
ffffffffc0205c0e:	8a2e                	mv	s4,a1
ffffffffc0205c10:	84b2                	mv	s1,a2
ffffffffc0205c12:	dc3ff0ef          	jal	ra,ffffffffc02059d4 <alloc_proc>
ffffffffc0205c16:	842a                	mv	s0,a0
ffffffffc0205c18:	2c050063          	beqz	a0,ffffffffc0205ed8 <do_fork+0x2fa>
ffffffffc0205c1c:	00091d17          	auipc	s10,0x91
ffffffffc0205c20:	ca4d0d13          	addi	s10,s10,-860 # ffffffffc02968c0 <current>
ffffffffc0205c24:	000d3783          	ld	a5,0(s10)
ffffffffc0205c28:	4509                	li	a0,2
ffffffffc0205c2a:	f01c                	sd	a5,32(s0)
ffffffffc0205c2c:	0e07a623          	sw	zero,236(a5) # 10ec <_binary_bin_swap_img_size-0x6c14>
ffffffffc0205c30:	d3cfc0ef          	jal	ra,ffffffffc020216c <alloc_pages>
ffffffffc0205c34:	28050f63          	beqz	a0,ffffffffc0205ed2 <do_fork+0x2f4>
ffffffffc0205c38:	00091b17          	auipc	s6,0x91
ffffffffc0205c3c:	c70b0b13          	addi	s6,s6,-912 # ffffffffc02968a8 <pages>
ffffffffc0205c40:	000b3683          	ld	a3,0(s6)
ffffffffc0205c44:	0000aa97          	auipc	s5,0xa
ffffffffc0205c48:	bc4aba83          	ld	s5,-1084(s5) # ffffffffc020f808 <nbase>
ffffffffc0205c4c:	00091b97          	auipc	s7,0x91
ffffffffc0205c50:	c54b8b93          	addi	s7,s7,-940 # ffffffffc02968a0 <npage>
ffffffffc0205c54:	40d506b3          	sub	a3,a0,a3
ffffffffc0205c58:	8699                	srai	a3,a3,0x6
ffffffffc0205c5a:	96d6                	add	a3,a3,s5
ffffffffc0205c5c:	000bb703          	ld	a4,0(s7)
ffffffffc0205c60:	00c69793          	slli	a5,a3,0xc
ffffffffc0205c64:	83b1                	srli	a5,a5,0xc
ffffffffc0205c66:	06b2                	slli	a3,a3,0xc
ffffffffc0205c68:	34e7f663          	bgeu	a5,a4,ffffffffc0205fb4 <do_fork+0x3d6>
ffffffffc0205c6c:	000d3703          	ld	a4,0(s10)
ffffffffc0205c70:	00091c97          	auipc	s9,0x91
ffffffffc0205c74:	c48c8c93          	addi	s9,s9,-952 # ffffffffc02968b8 <va_pa_offset>
ffffffffc0205c78:	000cb783          	ld	a5,0(s9)
ffffffffc0205c7c:	02873c03          	ld	s8,40(a4)
ffffffffc0205c80:	96be                	add	a3,a3,a5
ffffffffc0205c82:	e814                	sd	a3,16(s0)
ffffffffc0205c84:	020c0963          	beqz	s8,ffffffffc0205cb6 <do_fork+0xd8>
ffffffffc0205c88:	1009f793          	andi	a5,s3,256
ffffffffc0205c8c:	20078263          	beqz	a5,ffffffffc0205e90 <do_fork+0x2b2>
ffffffffc0205c90:	030c2783          	lw	a5,48(s8)
ffffffffc0205c94:	018c3683          	ld	a3,24(s8)
ffffffffc0205c98:	c0200737          	lui	a4,0xc0200
ffffffffc0205c9c:	2785                	addiw	a5,a5,1
ffffffffc0205c9e:	02fc2823          	sw	a5,48(s8)
ffffffffc0205ca2:	03843423          	sd	s8,40(s0)
ffffffffc0205ca6:	2ce6ef63          	bltu	a3,a4,ffffffffc0205f84 <do_fork+0x3a6>
ffffffffc0205caa:	000cb783          	ld	a5,0(s9)
ffffffffc0205cae:	000d3703          	ld	a4,0(s10)
ffffffffc0205cb2:	8e9d                	sub	a3,a3,a5
ffffffffc0205cb4:	f454                	sd	a3,168(s0)
ffffffffc0205cb6:	14873c03          	ld	s8,328(a4) # ffffffffc0200148 <readline+0x96>
ffffffffc0205cba:	2a0c0563          	beqz	s8,ffffffffc0205f64 <do_fork+0x386>
ffffffffc0205cbe:	00b9d993          	srli	s3,s3,0xb
ffffffffc0205cc2:	0019f993          	andi	s3,s3,1
ffffffffc0205cc6:	1a098763          	beqz	s3,ffffffffc0205e74 <do_fork+0x296>
ffffffffc0205cca:	010c2783          	lw	a5,16(s8)
ffffffffc0205cce:	6818                	ld	a4,16(s0)
ffffffffc0205cd0:	8626                	mv	a2,s1
ffffffffc0205cd2:	2785                	addiw	a5,a5,1
ffffffffc0205cd4:	00fc2823          	sw	a5,16(s8)
ffffffffc0205cd8:	6789                	lui	a5,0x2
ffffffffc0205cda:	ee078793          	addi	a5,a5,-288 # 1ee0 <_binary_bin_swap_img_size-0x5e20>
ffffffffc0205cde:	973e                	add	a4,a4,a5
ffffffffc0205ce0:	15843423          	sd	s8,328(s0)
ffffffffc0205ce4:	f058                	sd	a4,160(s0)
ffffffffc0205ce6:	87ba                	mv	a5,a4
ffffffffc0205ce8:	12048893          	addi	a7,s1,288
ffffffffc0205cec:	00063803          	ld	a6,0(a2)
ffffffffc0205cf0:	6608                	ld	a0,8(a2)
ffffffffc0205cf2:	6a0c                	ld	a1,16(a2)
ffffffffc0205cf4:	6e14                	ld	a3,24(a2)
ffffffffc0205cf6:	0107b023          	sd	a6,0(a5)
ffffffffc0205cfa:	e788                	sd	a0,8(a5)
ffffffffc0205cfc:	eb8c                	sd	a1,16(a5)
ffffffffc0205cfe:	ef94                	sd	a3,24(a5)
ffffffffc0205d00:	02060613          	addi	a2,a2,32
ffffffffc0205d04:	02078793          	addi	a5,a5,32
ffffffffc0205d08:	ff1612e3          	bne	a2,a7,ffffffffc0205cec <do_fork+0x10e>
ffffffffc0205d0c:	04073823          	sd	zero,80(a4)
ffffffffc0205d10:	120a0f63          	beqz	s4,ffffffffc0205e4e <do_fork+0x270>
ffffffffc0205d14:	01473823          	sd	s4,16(a4)
ffffffffc0205d18:	00000797          	auipc	a5,0x0
ffffffffc0205d1c:	d5678793          	addi	a5,a5,-682 # ffffffffc0205a6e <forkret>
ffffffffc0205d20:	f81c                	sd	a5,48(s0)
ffffffffc0205d22:	fc18                	sd	a4,56(s0)
ffffffffc0205d24:	100027f3          	csrr	a5,sstatus
ffffffffc0205d28:	8b89                	andi	a5,a5,2
ffffffffc0205d2a:	4981                	li	s3,0
ffffffffc0205d2c:	14079063          	bnez	a5,ffffffffc0205e6c <do_fork+0x28e>
ffffffffc0205d30:	0008b817          	auipc	a6,0x8b
ffffffffc0205d34:	32880813          	addi	a6,a6,808 # ffffffffc0291058 <last_pid.1>
ffffffffc0205d38:	00082783          	lw	a5,0(a6)
ffffffffc0205d3c:	6709                	lui	a4,0x2
ffffffffc0205d3e:	0017851b          	addiw	a0,a5,1
ffffffffc0205d42:	00a82023          	sw	a0,0(a6)
ffffffffc0205d46:	08e55d63          	bge	a0,a4,ffffffffc0205de0 <do_fork+0x202>
ffffffffc0205d4a:	0008b317          	auipc	t1,0x8b
ffffffffc0205d4e:	31230313          	addi	t1,t1,786 # ffffffffc029105c <next_safe.0>
ffffffffc0205d52:	00032783          	lw	a5,0(t1)
ffffffffc0205d56:	00090497          	auipc	s1,0x90
ffffffffc0205d5a:	a6a48493          	addi	s1,s1,-1430 # ffffffffc02957c0 <proc_list>
ffffffffc0205d5e:	08f55963          	bge	a0,a5,ffffffffc0205df0 <do_fork+0x212>
ffffffffc0205d62:	c048                	sw	a0,4(s0)
ffffffffc0205d64:	45a9                	li	a1,10
ffffffffc0205d66:	2501                	sext.w	a0,a0
ffffffffc0205d68:	238050ef          	jal	ra,ffffffffc020afa0 <hash32>
ffffffffc0205d6c:	02051793          	slli	a5,a0,0x20
ffffffffc0205d70:	01c7d513          	srli	a0,a5,0x1c
ffffffffc0205d74:	0008c797          	auipc	a5,0x8c
ffffffffc0205d78:	a4c78793          	addi	a5,a5,-1460 # ffffffffc02917c0 <hash_list>
ffffffffc0205d7c:	953e                	add	a0,a0,a5
ffffffffc0205d7e:	650c                	ld	a1,8(a0)
ffffffffc0205d80:	7014                	ld	a3,32(s0)
ffffffffc0205d82:	0d840793          	addi	a5,s0,216
ffffffffc0205d86:	e19c                	sd	a5,0(a1)
ffffffffc0205d88:	6490                	ld	a2,8(s1)
ffffffffc0205d8a:	e51c                	sd	a5,8(a0)
ffffffffc0205d8c:	7af8                	ld	a4,240(a3)
ffffffffc0205d8e:	0c840793          	addi	a5,s0,200
ffffffffc0205d92:	f06c                	sd	a1,224(s0)
ffffffffc0205d94:	ec68                	sd	a0,216(s0)
ffffffffc0205d96:	e21c                	sd	a5,0(a2)
ffffffffc0205d98:	e49c                	sd	a5,8(s1)
ffffffffc0205d9a:	e870                	sd	a2,208(s0)
ffffffffc0205d9c:	e464                	sd	s1,200(s0)
ffffffffc0205d9e:	0e043c23          	sd	zero,248(s0)
ffffffffc0205da2:	10e43023          	sd	a4,256(s0)
ffffffffc0205da6:	c311                	beqz	a4,ffffffffc0205daa <do_fork+0x1cc>
ffffffffc0205da8:	ff60                	sd	s0,248(a4)
ffffffffc0205daa:	00092783          	lw	a5,0(s2)
ffffffffc0205dae:	fae0                	sd	s0,240(a3)
ffffffffc0205db0:	2785                	addiw	a5,a5,1
ffffffffc0205db2:	00f92023          	sw	a5,0(s2)
ffffffffc0205db6:	12099363          	bnez	s3,ffffffffc0205edc <do_fork+0x2fe>
ffffffffc0205dba:	8522                	mv	a0,s0
ffffffffc0205dbc:	482010ef          	jal	ra,ffffffffc020723e <wakeup_proc>
ffffffffc0205dc0:	4048                	lw	a0,4(s0)
ffffffffc0205dc2:	70e6                	ld	ra,120(sp)
ffffffffc0205dc4:	7446                	ld	s0,112(sp)
ffffffffc0205dc6:	74a6                	ld	s1,104(sp)
ffffffffc0205dc8:	7906                	ld	s2,96(sp)
ffffffffc0205dca:	69e6                	ld	s3,88(sp)
ffffffffc0205dcc:	6a46                	ld	s4,80(sp)
ffffffffc0205dce:	6aa6                	ld	s5,72(sp)
ffffffffc0205dd0:	6b06                	ld	s6,64(sp)
ffffffffc0205dd2:	7be2                	ld	s7,56(sp)
ffffffffc0205dd4:	7c42                	ld	s8,48(sp)
ffffffffc0205dd6:	7ca2                	ld	s9,40(sp)
ffffffffc0205dd8:	7d02                	ld	s10,32(sp)
ffffffffc0205dda:	6de2                	ld	s11,24(sp)
ffffffffc0205ddc:	6109                	addi	sp,sp,128
ffffffffc0205dde:	8082                	ret
ffffffffc0205de0:	4785                	li	a5,1
ffffffffc0205de2:	00f82023          	sw	a5,0(a6)
ffffffffc0205de6:	4505                	li	a0,1
ffffffffc0205de8:	0008b317          	auipc	t1,0x8b
ffffffffc0205dec:	27430313          	addi	t1,t1,628 # ffffffffc029105c <next_safe.0>
ffffffffc0205df0:	00090497          	auipc	s1,0x90
ffffffffc0205df4:	9d048493          	addi	s1,s1,-1584 # ffffffffc02957c0 <proc_list>
ffffffffc0205df8:	0084be03          	ld	t3,8(s1)
ffffffffc0205dfc:	6789                	lui	a5,0x2
ffffffffc0205dfe:	00f32023          	sw	a5,0(t1)
ffffffffc0205e02:	86aa                	mv	a3,a0
ffffffffc0205e04:	4581                	li	a1,0
ffffffffc0205e06:	6e89                	lui	t4,0x2
ffffffffc0205e08:	129e0063          	beq	t3,s1,ffffffffc0205f28 <do_fork+0x34a>
ffffffffc0205e0c:	88ae                	mv	a7,a1
ffffffffc0205e0e:	87f2                	mv	a5,t3
ffffffffc0205e10:	6609                	lui	a2,0x2
ffffffffc0205e12:	a811                	j	ffffffffc0205e26 <do_fork+0x248>
ffffffffc0205e14:	00e6d663          	bge	a3,a4,ffffffffc0205e20 <do_fork+0x242>
ffffffffc0205e18:	00c75463          	bge	a4,a2,ffffffffc0205e20 <do_fork+0x242>
ffffffffc0205e1c:	863a                	mv	a2,a4
ffffffffc0205e1e:	4885                	li	a7,1
ffffffffc0205e20:	679c                	ld	a5,8(a5)
ffffffffc0205e22:	00978d63          	beq	a5,s1,ffffffffc0205e3c <do_fork+0x25e>
ffffffffc0205e26:	f3c7a703          	lw	a4,-196(a5) # 1f3c <_binary_bin_swap_img_size-0x5dc4>
ffffffffc0205e2a:	fed715e3          	bne	a4,a3,ffffffffc0205e14 <do_fork+0x236>
ffffffffc0205e2e:	2685                	addiw	a3,a3,1
ffffffffc0205e30:	0ec6d763          	bge	a3,a2,ffffffffc0205f1e <do_fork+0x340>
ffffffffc0205e34:	679c                	ld	a5,8(a5)
ffffffffc0205e36:	4585                	li	a1,1
ffffffffc0205e38:	fe9797e3          	bne	a5,s1,ffffffffc0205e26 <do_fork+0x248>
ffffffffc0205e3c:	c581                	beqz	a1,ffffffffc0205e44 <do_fork+0x266>
ffffffffc0205e3e:	00d82023          	sw	a3,0(a6)
ffffffffc0205e42:	8536                	mv	a0,a3
ffffffffc0205e44:	f0088fe3          	beqz	a7,ffffffffc0205d62 <do_fork+0x184>
ffffffffc0205e48:	00c32023          	sw	a2,0(t1)
ffffffffc0205e4c:	bf19                	j	ffffffffc0205d62 <do_fork+0x184>
ffffffffc0205e4e:	8a3a                	mv	s4,a4
ffffffffc0205e50:	01473823          	sd	s4,16(a4) # 2010 <_binary_bin_swap_img_size-0x5cf0>
ffffffffc0205e54:	00000797          	auipc	a5,0x0
ffffffffc0205e58:	c1a78793          	addi	a5,a5,-998 # ffffffffc0205a6e <forkret>
ffffffffc0205e5c:	f81c                	sd	a5,48(s0)
ffffffffc0205e5e:	fc18                	sd	a4,56(s0)
ffffffffc0205e60:	100027f3          	csrr	a5,sstatus
ffffffffc0205e64:	8b89                	andi	a5,a5,2
ffffffffc0205e66:	4981                	li	s3,0
ffffffffc0205e68:	ec0784e3          	beqz	a5,ffffffffc0205d30 <do_fork+0x152>
ffffffffc0205e6c:	e07fa0ef          	jal	ra,ffffffffc0200c72 <intr_disable>
ffffffffc0205e70:	4985                	li	s3,1
ffffffffc0205e72:	bd7d                	j	ffffffffc0205d30 <do_fork+0x152>
ffffffffc0205e74:	b5aff0ef          	jal	ra,ffffffffc02051ce <files_create>
ffffffffc0205e78:	89aa                	mv	s3,a0
ffffffffc0205e7a:	c50d                	beqz	a0,ffffffffc0205ea4 <do_fork+0x2c6>
ffffffffc0205e7c:	85e2                	mv	a1,s8
ffffffffc0205e7e:	c88ff0ef          	jal	ra,ffffffffc0205306 <dup_files>
ffffffffc0205e82:	8c4e                	mv	s8,s3
ffffffffc0205e84:	e40503e3          	beqz	a0,ffffffffc0205cca <do_fork+0xec>
ffffffffc0205e88:	854e                	mv	a0,s3
ffffffffc0205e8a:	b7aff0ef          	jal	ra,ffffffffc0205204 <files_destroy>
ffffffffc0205e8e:	a819                	j	ffffffffc0205ea4 <do_fork+0x2c6>
ffffffffc0205e90:	d79fd0ef          	jal	ra,ffffffffc0203c08 <mm_create>
ffffffffc0205e94:	8daa                	mv	s11,a0
ffffffffc0205e96:	c519                	beqz	a0,ffffffffc0205ea4 <do_fork+0x2c6>
ffffffffc0205e98:	c5bff0ef          	jal	ra,ffffffffc0205af2 <setup_pgdir>
ffffffffc0205e9c:	c139                	beqz	a0,ffffffffc0205ee2 <do_fork+0x304>
ffffffffc0205e9e:	856e                	mv	a0,s11
ffffffffc0205ea0:	eb7fd0ef          	jal	ra,ffffffffc0203d56 <mm_destroy>
ffffffffc0205ea4:	6814                	ld	a3,16(s0)
ffffffffc0205ea6:	c02007b7          	lui	a5,0xc0200
ffffffffc0205eaa:	0ef6e963          	bltu	a3,a5,ffffffffc0205f9c <do_fork+0x3be>
ffffffffc0205eae:	000cb783          	ld	a5,0(s9)
ffffffffc0205eb2:	000bb703          	ld	a4,0(s7)
ffffffffc0205eb6:	40f687b3          	sub	a5,a3,a5
ffffffffc0205eba:	83b1                	srli	a5,a5,0xc
ffffffffc0205ebc:	08e7f863          	bgeu	a5,a4,ffffffffc0205f4c <do_fork+0x36e>
ffffffffc0205ec0:	000b3503          	ld	a0,0(s6)
ffffffffc0205ec4:	415787b3          	sub	a5,a5,s5
ffffffffc0205ec8:	079a                	slli	a5,a5,0x6
ffffffffc0205eca:	4589                	li	a1,2
ffffffffc0205ecc:	953e                	add	a0,a0,a5
ffffffffc0205ece:	adcfc0ef          	jal	ra,ffffffffc02021aa <free_pages>
ffffffffc0205ed2:	8522                	mv	a0,s0
ffffffffc0205ed4:	96afc0ef          	jal	ra,ffffffffc020203e <kfree>
ffffffffc0205ed8:	5571                	li	a0,-4
ffffffffc0205eda:	b5e5                	j	ffffffffc0205dc2 <do_fork+0x1e4>
ffffffffc0205edc:	d91fa0ef          	jal	ra,ffffffffc0200c6c <intr_enable>
ffffffffc0205ee0:	bde9                	j	ffffffffc0205dba <do_fork+0x1dc>
ffffffffc0205ee2:	038c0713          	addi	a4,s8,56
ffffffffc0205ee6:	853a                	mv	a0,a4
ffffffffc0205ee8:	e43a                	sd	a4,8(sp)
ffffffffc0205eea:	e7afe0ef          	jal	ra,ffffffffc0204564 <down>
ffffffffc0205eee:	000d3783          	ld	a5,0(s10)
ffffffffc0205ef2:	6722                	ld	a4,8(sp)
ffffffffc0205ef4:	c781                	beqz	a5,ffffffffc0205efc <do_fork+0x31e>
ffffffffc0205ef6:	43dc                	lw	a5,4(a5)
ffffffffc0205ef8:	04fc2823          	sw	a5,80(s8)
ffffffffc0205efc:	85e2                	mv	a1,s8
ffffffffc0205efe:	856e                	mv	a0,s11
ffffffffc0205f00:	e43a                	sd	a4,8(sp)
ffffffffc0205f02:	f57fd0ef          	jal	ra,ffffffffc0203e58 <dup_mmap>
ffffffffc0205f06:	6722                	ld	a4,8(sp)
ffffffffc0205f08:	87aa                	mv	a5,a0
ffffffffc0205f0a:	e43e                	sd	a5,8(sp)
ffffffffc0205f0c:	853a                	mv	a0,a4
ffffffffc0205f0e:	e52fe0ef          	jal	ra,ffffffffc0204560 <up>
ffffffffc0205f12:	67a2                	ld	a5,8(sp)
ffffffffc0205f14:	040c2823          	sw	zero,80(s8)
ffffffffc0205f18:	e395                	bnez	a5,ffffffffc0205f3c <do_fork+0x35e>
ffffffffc0205f1a:	8c6e                	mv	s8,s11
ffffffffc0205f1c:	bb95                	j	ffffffffc0205c90 <do_fork+0xb2>
ffffffffc0205f1e:	01d6c363          	blt	a3,t4,ffffffffc0205f24 <do_fork+0x346>
ffffffffc0205f22:	4685                	li	a3,1
ffffffffc0205f24:	4585                	li	a1,1
ffffffffc0205f26:	b5cd                	j	ffffffffc0205e08 <do_fork+0x22a>
ffffffffc0205f28:	c599                	beqz	a1,ffffffffc0205f36 <do_fork+0x358>
ffffffffc0205f2a:	00d82023          	sw	a3,0(a6)
ffffffffc0205f2e:	8536                	mv	a0,a3
ffffffffc0205f30:	bd0d                	j	ffffffffc0205d62 <do_fork+0x184>
ffffffffc0205f32:	556d                	li	a0,-5
ffffffffc0205f34:	b579                	j	ffffffffc0205dc2 <do_fork+0x1e4>
ffffffffc0205f36:	00082503          	lw	a0,0(a6)
ffffffffc0205f3a:	b525                	j	ffffffffc0205d62 <do_fork+0x184>
ffffffffc0205f3c:	856e                	mv	a0,s11
ffffffffc0205f3e:	fb5fd0ef          	jal	ra,ffffffffc0203ef2 <exit_mmap>
ffffffffc0205f42:	018db503          	ld	a0,24(s11)
ffffffffc0205f46:	b37ff0ef          	jal	ra,ffffffffc0205a7c <put_pgdir.isra.0>
ffffffffc0205f4a:	bf91                	j	ffffffffc0205e9e <do_fork+0x2c0>
ffffffffc0205f4c:	00006617          	auipc	a2,0x6
ffffffffc0205f50:	65c60613          	addi	a2,a2,1628 # ffffffffc020c5a8 <default_pmm_manager+0x108>
ffffffffc0205f54:	06900593          	li	a1,105
ffffffffc0205f58:	00006517          	auipc	a0,0x6
ffffffffc0205f5c:	5a850513          	addi	a0,a0,1448 # ffffffffc020c500 <default_pmm_manager+0x60>
ffffffffc0205f60:	d3efa0ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc0205f64:	00007697          	auipc	a3,0x7
ffffffffc0205f68:	56c68693          	addi	a3,a3,1388 # ffffffffc020d4d0 <CSWTCH.79+0x108>
ffffffffc0205f6c:	00006617          	auipc	a2,0x6
ffffffffc0205f70:	a4c60613          	addi	a2,a2,-1460 # ffffffffc020b9b8 <commands+0x210>
ffffffffc0205f74:	1d100593          	li	a1,465
ffffffffc0205f78:	00007517          	auipc	a0,0x7
ffffffffc0205f7c:	54050513          	addi	a0,a0,1344 # ffffffffc020d4b8 <CSWTCH.79+0xf0>
ffffffffc0205f80:	d1efa0ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc0205f84:	00006617          	auipc	a2,0x6
ffffffffc0205f88:	5fc60613          	addi	a2,a2,1532 # ffffffffc020c580 <default_pmm_manager+0xe0>
ffffffffc0205f8c:	1b100593          	li	a1,433
ffffffffc0205f90:	00007517          	auipc	a0,0x7
ffffffffc0205f94:	52850513          	addi	a0,a0,1320 # ffffffffc020d4b8 <CSWTCH.79+0xf0>
ffffffffc0205f98:	d06fa0ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc0205f9c:	00006617          	auipc	a2,0x6
ffffffffc0205fa0:	5e460613          	addi	a2,a2,1508 # ffffffffc020c580 <default_pmm_manager+0xe0>
ffffffffc0205fa4:	07700593          	li	a1,119
ffffffffc0205fa8:	00006517          	auipc	a0,0x6
ffffffffc0205fac:	55850513          	addi	a0,a0,1368 # ffffffffc020c500 <default_pmm_manager+0x60>
ffffffffc0205fb0:	ceefa0ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc0205fb4:	00006617          	auipc	a2,0x6
ffffffffc0205fb8:	52460613          	addi	a2,a2,1316 # ffffffffc020c4d8 <default_pmm_manager+0x38>
ffffffffc0205fbc:	07100593          	li	a1,113
ffffffffc0205fc0:	00006517          	auipc	a0,0x6
ffffffffc0205fc4:	54050513          	addi	a0,a0,1344 # ffffffffc020c500 <default_pmm_manager+0x60>
ffffffffc0205fc8:	cd6fa0ef          	jal	ra,ffffffffc020049e <__panic>

ffffffffc0205fcc <kernel_thread>:
ffffffffc0205fcc:	7129                	addi	sp,sp,-320
ffffffffc0205fce:	fa22                	sd	s0,304(sp)
ffffffffc0205fd0:	f626                	sd	s1,296(sp)
ffffffffc0205fd2:	f24a                	sd	s2,288(sp)
ffffffffc0205fd4:	84ae                	mv	s1,a1
ffffffffc0205fd6:	892a                	mv	s2,a0
ffffffffc0205fd8:	8432                	mv	s0,a2
ffffffffc0205fda:	4581                	li	a1,0
ffffffffc0205fdc:	12000613          	li	a2,288
ffffffffc0205fe0:	850a                	mv	a0,sp
ffffffffc0205fe2:	fe06                	sd	ra,312(sp)
ffffffffc0205fe4:	4f0050ef          	jal	ra,ffffffffc020b4d4 <memset>
ffffffffc0205fe8:	e0ca                	sd	s2,64(sp)
ffffffffc0205fea:	e4a6                	sd	s1,72(sp)
ffffffffc0205fec:	100027f3          	csrr	a5,sstatus
ffffffffc0205ff0:	edd7f793          	andi	a5,a5,-291
ffffffffc0205ff4:	1207e793          	ori	a5,a5,288
ffffffffc0205ff8:	e23e                	sd	a5,256(sp)
ffffffffc0205ffa:	860a                	mv	a2,sp
ffffffffc0205ffc:	10046513          	ori	a0,s0,256
ffffffffc0206000:	00000797          	auipc	a5,0x0
ffffffffc0206004:	9cc78793          	addi	a5,a5,-1588 # ffffffffc02059cc <kernel_thread_entry>
ffffffffc0206008:	4581                	li	a1,0
ffffffffc020600a:	e63e                	sd	a5,264(sp)
ffffffffc020600c:	bd3ff0ef          	jal	ra,ffffffffc0205bde <do_fork>
ffffffffc0206010:	70f2                	ld	ra,312(sp)
ffffffffc0206012:	7452                	ld	s0,304(sp)
ffffffffc0206014:	74b2                	ld	s1,296(sp)
ffffffffc0206016:	7912                	ld	s2,288(sp)
ffffffffc0206018:	6131                	addi	sp,sp,320
ffffffffc020601a:	8082                	ret

ffffffffc020601c <do_exit>:
ffffffffc020601c:	7179                	addi	sp,sp,-48
ffffffffc020601e:	f022                	sd	s0,32(sp)
ffffffffc0206020:	00091417          	auipc	s0,0x91
ffffffffc0206024:	8a040413          	addi	s0,s0,-1888 # ffffffffc02968c0 <current>
ffffffffc0206028:	601c                	ld	a5,0(s0)
ffffffffc020602a:	f406                	sd	ra,40(sp)
ffffffffc020602c:	ec26                	sd	s1,24(sp)
ffffffffc020602e:	e84a                	sd	s2,16(sp)
ffffffffc0206030:	e44e                	sd	s3,8(sp)
ffffffffc0206032:	e052                	sd	s4,0(sp)
ffffffffc0206034:	00091717          	auipc	a4,0x91
ffffffffc0206038:	89473703          	ld	a4,-1900(a4) # ffffffffc02968c8 <idleproc>
ffffffffc020603c:	0ee78763          	beq	a5,a4,ffffffffc020612a <do_exit+0x10e>
ffffffffc0206040:	00091497          	auipc	s1,0x91
ffffffffc0206044:	89048493          	addi	s1,s1,-1904 # ffffffffc02968d0 <initproc>
ffffffffc0206048:	6098                	ld	a4,0(s1)
ffffffffc020604a:	10e78763          	beq	a5,a4,ffffffffc0206158 <do_exit+0x13c>
ffffffffc020604e:	0287b983          	ld	s3,40(a5)
ffffffffc0206052:	892a                	mv	s2,a0
ffffffffc0206054:	02098e63          	beqz	s3,ffffffffc0206090 <do_exit+0x74>
ffffffffc0206058:	00091797          	auipc	a5,0x91
ffffffffc020605c:	8387b783          	ld	a5,-1992(a5) # ffffffffc0296890 <boot_pgdir_pa>
ffffffffc0206060:	577d                	li	a4,-1
ffffffffc0206062:	177e                	slli	a4,a4,0x3f
ffffffffc0206064:	83b1                	srli	a5,a5,0xc
ffffffffc0206066:	8fd9                	or	a5,a5,a4
ffffffffc0206068:	18079073          	csrw	satp,a5
ffffffffc020606c:	0309a783          	lw	a5,48(s3)
ffffffffc0206070:	fff7871b          	addiw	a4,a5,-1
ffffffffc0206074:	02e9a823          	sw	a4,48(s3)
ffffffffc0206078:	c769                	beqz	a4,ffffffffc0206142 <do_exit+0x126>
ffffffffc020607a:	601c                	ld	a5,0(s0)
ffffffffc020607c:	1487b503          	ld	a0,328(a5)
ffffffffc0206080:	0207b423          	sd	zero,40(a5)
ffffffffc0206084:	c511                	beqz	a0,ffffffffc0206090 <do_exit+0x74>
ffffffffc0206086:	491c                	lw	a5,16(a0)
ffffffffc0206088:	fff7871b          	addiw	a4,a5,-1
ffffffffc020608c:	c918                	sw	a4,16(a0)
ffffffffc020608e:	cb59                	beqz	a4,ffffffffc0206124 <do_exit+0x108>
ffffffffc0206090:	601c                	ld	a5,0(s0)
ffffffffc0206092:	470d                	li	a4,3
ffffffffc0206094:	c398                	sw	a4,0(a5)
ffffffffc0206096:	0f27a423          	sw	s2,232(a5)
ffffffffc020609a:	100027f3          	csrr	a5,sstatus
ffffffffc020609e:	8b89                	andi	a5,a5,2
ffffffffc02060a0:	4a01                	li	s4,0
ffffffffc02060a2:	e7f9                	bnez	a5,ffffffffc0206170 <do_exit+0x154>
ffffffffc02060a4:	6018                	ld	a4,0(s0)
ffffffffc02060a6:	800007b7          	lui	a5,0x80000
ffffffffc02060aa:	0785                	addi	a5,a5,1
ffffffffc02060ac:	7308                	ld	a0,32(a4)
ffffffffc02060ae:	0ec52703          	lw	a4,236(a0)
ffffffffc02060b2:	0cf70363          	beq	a4,a5,ffffffffc0206178 <do_exit+0x15c>
ffffffffc02060b6:	6018                	ld	a4,0(s0)
ffffffffc02060b8:	7b7c                	ld	a5,240(a4)
ffffffffc02060ba:	c3a1                	beqz	a5,ffffffffc02060fa <do_exit+0xde>
ffffffffc02060bc:	800009b7          	lui	s3,0x80000
ffffffffc02060c0:	490d                	li	s2,3
ffffffffc02060c2:	0985                	addi	s3,s3,1
ffffffffc02060c4:	a021                	j	ffffffffc02060cc <do_exit+0xb0>
ffffffffc02060c6:	6018                	ld	a4,0(s0)
ffffffffc02060c8:	7b7c                	ld	a5,240(a4)
ffffffffc02060ca:	cb85                	beqz	a5,ffffffffc02060fa <do_exit+0xde>
ffffffffc02060cc:	1007b683          	ld	a3,256(a5) # ffffffff80000100 <_binary_bin_sfs_img_size+0xffffffff7ff8ae00>
ffffffffc02060d0:	6088                	ld	a0,0(s1)
ffffffffc02060d2:	fb74                	sd	a3,240(a4)
ffffffffc02060d4:	7978                	ld	a4,240(a0)
ffffffffc02060d6:	0e07bc23          	sd	zero,248(a5)
ffffffffc02060da:	10e7b023          	sd	a4,256(a5)
ffffffffc02060de:	c311                	beqz	a4,ffffffffc02060e2 <do_exit+0xc6>
ffffffffc02060e0:	ff7c                	sd	a5,248(a4)
ffffffffc02060e2:	4398                	lw	a4,0(a5)
ffffffffc02060e4:	f388                	sd	a0,32(a5)
ffffffffc02060e6:	f97c                	sd	a5,240(a0)
ffffffffc02060e8:	fd271fe3          	bne	a4,s2,ffffffffc02060c6 <do_exit+0xaa>
ffffffffc02060ec:	0ec52783          	lw	a5,236(a0)
ffffffffc02060f0:	fd379be3          	bne	a5,s3,ffffffffc02060c6 <do_exit+0xaa>
ffffffffc02060f4:	14a010ef          	jal	ra,ffffffffc020723e <wakeup_proc>
ffffffffc02060f8:	b7f9                	j	ffffffffc02060c6 <do_exit+0xaa>
ffffffffc02060fa:	020a1263          	bnez	s4,ffffffffc020611e <do_exit+0x102>
ffffffffc02060fe:	1f2010ef          	jal	ra,ffffffffc02072f0 <schedule>
ffffffffc0206102:	601c                	ld	a5,0(s0)
ffffffffc0206104:	00007617          	auipc	a2,0x7
ffffffffc0206108:	40460613          	addi	a2,a2,1028 # ffffffffc020d508 <CSWTCH.79+0x140>
ffffffffc020610c:	29100593          	li	a1,657
ffffffffc0206110:	43d4                	lw	a3,4(a5)
ffffffffc0206112:	00007517          	auipc	a0,0x7
ffffffffc0206116:	3a650513          	addi	a0,a0,934 # ffffffffc020d4b8 <CSWTCH.79+0xf0>
ffffffffc020611a:	b84fa0ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc020611e:	b4ffa0ef          	jal	ra,ffffffffc0200c6c <intr_enable>
ffffffffc0206122:	bff1                	j	ffffffffc02060fe <do_exit+0xe2>
ffffffffc0206124:	8e0ff0ef          	jal	ra,ffffffffc0205204 <files_destroy>
ffffffffc0206128:	b7a5                	j	ffffffffc0206090 <do_exit+0x74>
ffffffffc020612a:	00007617          	auipc	a2,0x7
ffffffffc020612e:	3be60613          	addi	a2,a2,958 # ffffffffc020d4e8 <CSWTCH.79+0x120>
ffffffffc0206132:	25c00593          	li	a1,604
ffffffffc0206136:	00007517          	auipc	a0,0x7
ffffffffc020613a:	38250513          	addi	a0,a0,898 # ffffffffc020d4b8 <CSWTCH.79+0xf0>
ffffffffc020613e:	b60fa0ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc0206142:	854e                	mv	a0,s3
ffffffffc0206144:	daffd0ef          	jal	ra,ffffffffc0203ef2 <exit_mmap>
ffffffffc0206148:	0189b503          	ld	a0,24(s3) # ffffffff80000018 <_binary_bin_sfs_img_size+0xffffffff7ff8ad18>
ffffffffc020614c:	931ff0ef          	jal	ra,ffffffffc0205a7c <put_pgdir.isra.0>
ffffffffc0206150:	854e                	mv	a0,s3
ffffffffc0206152:	c05fd0ef          	jal	ra,ffffffffc0203d56 <mm_destroy>
ffffffffc0206156:	b715                	j	ffffffffc020607a <do_exit+0x5e>
ffffffffc0206158:	00007617          	auipc	a2,0x7
ffffffffc020615c:	3a060613          	addi	a2,a2,928 # ffffffffc020d4f8 <CSWTCH.79+0x130>
ffffffffc0206160:	26000593          	li	a1,608
ffffffffc0206164:	00007517          	auipc	a0,0x7
ffffffffc0206168:	35450513          	addi	a0,a0,852 # ffffffffc020d4b8 <CSWTCH.79+0xf0>
ffffffffc020616c:	b32fa0ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc0206170:	b03fa0ef          	jal	ra,ffffffffc0200c72 <intr_disable>
ffffffffc0206174:	4a05                	li	s4,1
ffffffffc0206176:	b73d                	j	ffffffffc02060a4 <do_exit+0x88>
ffffffffc0206178:	0c6010ef          	jal	ra,ffffffffc020723e <wakeup_proc>
ffffffffc020617c:	bf2d                	j	ffffffffc02060b6 <do_exit+0x9a>

ffffffffc020617e <do_wait.part.0>:
ffffffffc020617e:	715d                	addi	sp,sp,-80
ffffffffc0206180:	f84a                	sd	s2,48(sp)
ffffffffc0206182:	f44e                	sd	s3,40(sp)
ffffffffc0206184:	80000937          	lui	s2,0x80000
ffffffffc0206188:	6989                	lui	s3,0x2
ffffffffc020618a:	fc26                	sd	s1,56(sp)
ffffffffc020618c:	f052                	sd	s4,32(sp)
ffffffffc020618e:	ec56                	sd	s5,24(sp)
ffffffffc0206190:	e85a                	sd	s6,16(sp)
ffffffffc0206192:	e45e                	sd	s7,8(sp)
ffffffffc0206194:	e486                	sd	ra,72(sp)
ffffffffc0206196:	e0a2                	sd	s0,64(sp)
ffffffffc0206198:	84aa                	mv	s1,a0
ffffffffc020619a:	8a2e                	mv	s4,a1
ffffffffc020619c:	00090b97          	auipc	s7,0x90
ffffffffc02061a0:	724b8b93          	addi	s7,s7,1828 # ffffffffc02968c0 <current>
ffffffffc02061a4:	00050b1b          	sext.w	s6,a0
ffffffffc02061a8:	fff50a9b          	addiw	s5,a0,-1
ffffffffc02061ac:	19f9                	addi	s3,s3,-2
ffffffffc02061ae:	0905                	addi	s2,s2,1
ffffffffc02061b0:	ccbd                	beqz	s1,ffffffffc020622e <do_wait.part.0+0xb0>
ffffffffc02061b2:	0359e863          	bltu	s3,s5,ffffffffc02061e2 <do_wait.part.0+0x64>
ffffffffc02061b6:	45a9                	li	a1,10
ffffffffc02061b8:	855a                	mv	a0,s6
ffffffffc02061ba:	5e7040ef          	jal	ra,ffffffffc020afa0 <hash32>
ffffffffc02061be:	02051793          	slli	a5,a0,0x20
ffffffffc02061c2:	01c7d513          	srli	a0,a5,0x1c
ffffffffc02061c6:	0008b797          	auipc	a5,0x8b
ffffffffc02061ca:	5fa78793          	addi	a5,a5,1530 # ffffffffc02917c0 <hash_list>
ffffffffc02061ce:	953e                	add	a0,a0,a5
ffffffffc02061d0:	842a                	mv	s0,a0
ffffffffc02061d2:	a029                	j	ffffffffc02061dc <do_wait.part.0+0x5e>
ffffffffc02061d4:	f2c42783          	lw	a5,-212(s0)
ffffffffc02061d8:	02978163          	beq	a5,s1,ffffffffc02061fa <do_wait.part.0+0x7c>
ffffffffc02061dc:	6400                	ld	s0,8(s0)
ffffffffc02061de:	fe851be3          	bne	a0,s0,ffffffffc02061d4 <do_wait.part.0+0x56>
ffffffffc02061e2:	5579                	li	a0,-2
ffffffffc02061e4:	60a6                	ld	ra,72(sp)
ffffffffc02061e6:	6406                	ld	s0,64(sp)
ffffffffc02061e8:	74e2                	ld	s1,56(sp)
ffffffffc02061ea:	7942                	ld	s2,48(sp)
ffffffffc02061ec:	79a2                	ld	s3,40(sp)
ffffffffc02061ee:	7a02                	ld	s4,32(sp)
ffffffffc02061f0:	6ae2                	ld	s5,24(sp)
ffffffffc02061f2:	6b42                	ld	s6,16(sp)
ffffffffc02061f4:	6ba2                	ld	s7,8(sp)
ffffffffc02061f6:	6161                	addi	sp,sp,80
ffffffffc02061f8:	8082                	ret
ffffffffc02061fa:	000bb683          	ld	a3,0(s7)
ffffffffc02061fe:	f4843783          	ld	a5,-184(s0)
ffffffffc0206202:	fed790e3          	bne	a5,a3,ffffffffc02061e2 <do_wait.part.0+0x64>
ffffffffc0206206:	f2842703          	lw	a4,-216(s0)
ffffffffc020620a:	478d                	li	a5,3
ffffffffc020620c:	0ef70b63          	beq	a4,a5,ffffffffc0206302 <do_wait.part.0+0x184>
ffffffffc0206210:	4785                	li	a5,1
ffffffffc0206212:	c29c                	sw	a5,0(a3)
ffffffffc0206214:	0f26a623          	sw	s2,236(a3)
ffffffffc0206218:	0d8010ef          	jal	ra,ffffffffc02072f0 <schedule>
ffffffffc020621c:	000bb783          	ld	a5,0(s7)
ffffffffc0206220:	0b07a783          	lw	a5,176(a5)
ffffffffc0206224:	8b85                	andi	a5,a5,1
ffffffffc0206226:	d7c9                	beqz	a5,ffffffffc02061b0 <do_wait.part.0+0x32>
ffffffffc0206228:	555d                	li	a0,-9
ffffffffc020622a:	df3ff0ef          	jal	ra,ffffffffc020601c <do_exit>
ffffffffc020622e:	000bb683          	ld	a3,0(s7)
ffffffffc0206232:	7ae0                	ld	s0,240(a3)
ffffffffc0206234:	d45d                	beqz	s0,ffffffffc02061e2 <do_wait.part.0+0x64>
ffffffffc0206236:	470d                	li	a4,3
ffffffffc0206238:	a021                	j	ffffffffc0206240 <do_wait.part.0+0xc2>
ffffffffc020623a:	10043403          	ld	s0,256(s0)
ffffffffc020623e:	d869                	beqz	s0,ffffffffc0206210 <do_wait.part.0+0x92>
ffffffffc0206240:	401c                	lw	a5,0(s0)
ffffffffc0206242:	fee79ce3          	bne	a5,a4,ffffffffc020623a <do_wait.part.0+0xbc>
ffffffffc0206246:	00090797          	auipc	a5,0x90
ffffffffc020624a:	6827b783          	ld	a5,1666(a5) # ffffffffc02968c8 <idleproc>
ffffffffc020624e:	0c878963          	beq	a5,s0,ffffffffc0206320 <do_wait.part.0+0x1a2>
ffffffffc0206252:	00090797          	auipc	a5,0x90
ffffffffc0206256:	67e7b783          	ld	a5,1662(a5) # ffffffffc02968d0 <initproc>
ffffffffc020625a:	0cf40363          	beq	s0,a5,ffffffffc0206320 <do_wait.part.0+0x1a2>
ffffffffc020625e:	000a0663          	beqz	s4,ffffffffc020626a <do_wait.part.0+0xec>
ffffffffc0206262:	0e842783          	lw	a5,232(s0)
ffffffffc0206266:	00fa2023          	sw	a5,0(s4)
ffffffffc020626a:	100027f3          	csrr	a5,sstatus
ffffffffc020626e:	8b89                	andi	a5,a5,2
ffffffffc0206270:	4581                	li	a1,0
ffffffffc0206272:	e7c1                	bnez	a5,ffffffffc02062fa <do_wait.part.0+0x17c>
ffffffffc0206274:	6c70                	ld	a2,216(s0)
ffffffffc0206276:	7074                	ld	a3,224(s0)
ffffffffc0206278:	10043703          	ld	a4,256(s0)
ffffffffc020627c:	7c7c                	ld	a5,248(s0)
ffffffffc020627e:	e614                	sd	a3,8(a2)
ffffffffc0206280:	e290                	sd	a2,0(a3)
ffffffffc0206282:	6470                	ld	a2,200(s0)
ffffffffc0206284:	6874                	ld	a3,208(s0)
ffffffffc0206286:	e614                	sd	a3,8(a2)
ffffffffc0206288:	e290                	sd	a2,0(a3)
ffffffffc020628a:	c319                	beqz	a4,ffffffffc0206290 <do_wait.part.0+0x112>
ffffffffc020628c:	ff7c                	sd	a5,248(a4)
ffffffffc020628e:	7c7c                	ld	a5,248(s0)
ffffffffc0206290:	c3b5                	beqz	a5,ffffffffc02062f4 <do_wait.part.0+0x176>
ffffffffc0206292:	10e7b023          	sd	a4,256(a5)
ffffffffc0206296:	00090717          	auipc	a4,0x90
ffffffffc020629a:	64270713          	addi	a4,a4,1602 # ffffffffc02968d8 <nr_process>
ffffffffc020629e:	431c                	lw	a5,0(a4)
ffffffffc02062a0:	37fd                	addiw	a5,a5,-1
ffffffffc02062a2:	c31c                	sw	a5,0(a4)
ffffffffc02062a4:	e5a9                	bnez	a1,ffffffffc02062ee <do_wait.part.0+0x170>
ffffffffc02062a6:	6814                	ld	a3,16(s0)
ffffffffc02062a8:	c02007b7          	lui	a5,0xc0200
ffffffffc02062ac:	04f6ee63          	bltu	a3,a5,ffffffffc0206308 <do_wait.part.0+0x18a>
ffffffffc02062b0:	00090797          	auipc	a5,0x90
ffffffffc02062b4:	6087b783          	ld	a5,1544(a5) # ffffffffc02968b8 <va_pa_offset>
ffffffffc02062b8:	8e9d                	sub	a3,a3,a5
ffffffffc02062ba:	82b1                	srli	a3,a3,0xc
ffffffffc02062bc:	00090797          	auipc	a5,0x90
ffffffffc02062c0:	5e47b783          	ld	a5,1508(a5) # ffffffffc02968a0 <npage>
ffffffffc02062c4:	06f6fa63          	bgeu	a3,a5,ffffffffc0206338 <do_wait.part.0+0x1ba>
ffffffffc02062c8:	00009517          	auipc	a0,0x9
ffffffffc02062cc:	54053503          	ld	a0,1344(a0) # ffffffffc020f808 <nbase>
ffffffffc02062d0:	8e89                	sub	a3,a3,a0
ffffffffc02062d2:	069a                	slli	a3,a3,0x6
ffffffffc02062d4:	00090517          	auipc	a0,0x90
ffffffffc02062d8:	5d453503          	ld	a0,1492(a0) # ffffffffc02968a8 <pages>
ffffffffc02062dc:	9536                	add	a0,a0,a3
ffffffffc02062de:	4589                	li	a1,2
ffffffffc02062e0:	ecbfb0ef          	jal	ra,ffffffffc02021aa <free_pages>
ffffffffc02062e4:	8522                	mv	a0,s0
ffffffffc02062e6:	d59fb0ef          	jal	ra,ffffffffc020203e <kfree>
ffffffffc02062ea:	4501                	li	a0,0
ffffffffc02062ec:	bde5                	j	ffffffffc02061e4 <do_wait.part.0+0x66>
ffffffffc02062ee:	97ffa0ef          	jal	ra,ffffffffc0200c6c <intr_enable>
ffffffffc02062f2:	bf55                	j	ffffffffc02062a6 <do_wait.part.0+0x128>
ffffffffc02062f4:	701c                	ld	a5,32(s0)
ffffffffc02062f6:	fbf8                	sd	a4,240(a5)
ffffffffc02062f8:	bf79                	j	ffffffffc0206296 <do_wait.part.0+0x118>
ffffffffc02062fa:	979fa0ef          	jal	ra,ffffffffc0200c72 <intr_disable>
ffffffffc02062fe:	4585                	li	a1,1
ffffffffc0206300:	bf95                	j	ffffffffc0206274 <do_wait.part.0+0xf6>
ffffffffc0206302:	f2840413          	addi	s0,s0,-216
ffffffffc0206306:	b781                	j	ffffffffc0206246 <do_wait.part.0+0xc8>
ffffffffc0206308:	00006617          	auipc	a2,0x6
ffffffffc020630c:	27860613          	addi	a2,a2,632 # ffffffffc020c580 <default_pmm_manager+0xe0>
ffffffffc0206310:	07700593          	li	a1,119
ffffffffc0206314:	00006517          	auipc	a0,0x6
ffffffffc0206318:	1ec50513          	addi	a0,a0,492 # ffffffffc020c500 <default_pmm_manager+0x60>
ffffffffc020631c:	982fa0ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc0206320:	00007617          	auipc	a2,0x7
ffffffffc0206324:	20860613          	addi	a2,a2,520 # ffffffffc020d528 <CSWTCH.79+0x160>
ffffffffc0206328:	43a00593          	li	a1,1082
ffffffffc020632c:	00007517          	auipc	a0,0x7
ffffffffc0206330:	18c50513          	addi	a0,a0,396 # ffffffffc020d4b8 <CSWTCH.79+0xf0>
ffffffffc0206334:	96afa0ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc0206338:	00006617          	auipc	a2,0x6
ffffffffc020633c:	27060613          	addi	a2,a2,624 # ffffffffc020c5a8 <default_pmm_manager+0x108>
ffffffffc0206340:	06900593          	li	a1,105
ffffffffc0206344:	00006517          	auipc	a0,0x6
ffffffffc0206348:	1bc50513          	addi	a0,a0,444 # ffffffffc020c500 <default_pmm_manager+0x60>
ffffffffc020634c:	952fa0ef          	jal	ra,ffffffffc020049e <__panic>

ffffffffc0206350 <init_main>:
ffffffffc0206350:	1141                	addi	sp,sp,-16
ffffffffc0206352:	00007517          	auipc	a0,0x7
ffffffffc0206356:	1f650513          	addi	a0,a0,502 # ffffffffc020d548 <CSWTCH.79+0x180>
ffffffffc020635a:	e406                	sd	ra,8(sp)
ffffffffc020635c:	704010ef          	jal	ra,ffffffffc0207a60 <vfs_set_bootfs>
ffffffffc0206360:	e179                	bnez	a0,ffffffffc0206426 <init_main+0xd6>
ffffffffc0206362:	e89fb0ef          	jal	ra,ffffffffc02021ea <nr_free_pages>
ffffffffc0206366:	c25fb0ef          	jal	ra,ffffffffc0201f8a <kallocated>
ffffffffc020636a:	4601                	li	a2,0
ffffffffc020636c:	4581                	li	a1,0
ffffffffc020636e:	00001517          	auipc	a0,0x1
ffffffffc0206372:	92a50513          	addi	a0,a0,-1750 # ffffffffc0206c98 <user_main>
ffffffffc0206376:	c57ff0ef          	jal	ra,ffffffffc0205fcc <kernel_thread>
ffffffffc020637a:	00a04563          	bgtz	a0,ffffffffc0206384 <init_main+0x34>
ffffffffc020637e:	a841                	j	ffffffffc020640e <init_main+0xbe>
ffffffffc0206380:	771000ef          	jal	ra,ffffffffc02072f0 <schedule>
ffffffffc0206384:	4581                	li	a1,0
ffffffffc0206386:	4501                	li	a0,0
ffffffffc0206388:	df7ff0ef          	jal	ra,ffffffffc020617e <do_wait.part.0>
ffffffffc020638c:	d975                	beqz	a0,ffffffffc0206380 <init_main+0x30>
ffffffffc020638e:	e31fe0ef          	jal	ra,ffffffffc02051be <fs_cleanup>
ffffffffc0206392:	00007517          	auipc	a0,0x7
ffffffffc0206396:	1fe50513          	addi	a0,a0,510 # ffffffffc020d590 <CSWTCH.79+0x1c8>
ffffffffc020639a:	e0df90ef          	jal	ra,ffffffffc02001a6 <cprintf>
ffffffffc020639e:	00090797          	auipc	a5,0x90
ffffffffc02063a2:	5327b783          	ld	a5,1330(a5) # ffffffffc02968d0 <initproc>
ffffffffc02063a6:	7bf8                	ld	a4,240(a5)
ffffffffc02063a8:	e339                	bnez	a4,ffffffffc02063ee <init_main+0x9e>
ffffffffc02063aa:	7ff8                	ld	a4,248(a5)
ffffffffc02063ac:	e329                	bnez	a4,ffffffffc02063ee <init_main+0x9e>
ffffffffc02063ae:	1007b703          	ld	a4,256(a5)
ffffffffc02063b2:	ef15                	bnez	a4,ffffffffc02063ee <init_main+0x9e>
ffffffffc02063b4:	00090697          	auipc	a3,0x90
ffffffffc02063b8:	5246a683          	lw	a3,1316(a3) # ffffffffc02968d8 <nr_process>
ffffffffc02063bc:	4709                	li	a4,2
ffffffffc02063be:	0ce69163          	bne	a3,a4,ffffffffc0206480 <init_main+0x130>
ffffffffc02063c2:	0008f717          	auipc	a4,0x8f
ffffffffc02063c6:	3fe70713          	addi	a4,a4,1022 # ffffffffc02957c0 <proc_list>
ffffffffc02063ca:	6714                	ld	a3,8(a4)
ffffffffc02063cc:	0c878793          	addi	a5,a5,200
ffffffffc02063d0:	08d79863          	bne	a5,a3,ffffffffc0206460 <init_main+0x110>
ffffffffc02063d4:	6318                	ld	a4,0(a4)
ffffffffc02063d6:	06e79563          	bne	a5,a4,ffffffffc0206440 <init_main+0xf0>
ffffffffc02063da:	00007517          	auipc	a0,0x7
ffffffffc02063de:	29e50513          	addi	a0,a0,670 # ffffffffc020d678 <CSWTCH.79+0x2b0>
ffffffffc02063e2:	dc5f90ef          	jal	ra,ffffffffc02001a6 <cprintf>
ffffffffc02063e6:	60a2                	ld	ra,8(sp)
ffffffffc02063e8:	4501                	li	a0,0
ffffffffc02063ea:	0141                	addi	sp,sp,16
ffffffffc02063ec:	8082                	ret
ffffffffc02063ee:	00007697          	auipc	a3,0x7
ffffffffc02063f2:	1ca68693          	addi	a3,a3,458 # ffffffffc020d5b8 <CSWTCH.79+0x1f0>
ffffffffc02063f6:	00005617          	auipc	a2,0x5
ffffffffc02063fa:	5c260613          	addi	a2,a2,1474 # ffffffffc020b9b8 <commands+0x210>
ffffffffc02063fe:	4b000593          	li	a1,1200
ffffffffc0206402:	00007517          	auipc	a0,0x7
ffffffffc0206406:	0b650513          	addi	a0,a0,182 # ffffffffc020d4b8 <CSWTCH.79+0xf0>
ffffffffc020640a:	894fa0ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc020640e:	00007617          	auipc	a2,0x7
ffffffffc0206412:	16260613          	addi	a2,a2,354 # ffffffffc020d570 <CSWTCH.79+0x1a8>
ffffffffc0206416:	4a300593          	li	a1,1187
ffffffffc020641a:	00007517          	auipc	a0,0x7
ffffffffc020641e:	09e50513          	addi	a0,a0,158 # ffffffffc020d4b8 <CSWTCH.79+0xf0>
ffffffffc0206422:	87cfa0ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc0206426:	86aa                	mv	a3,a0
ffffffffc0206428:	00007617          	auipc	a2,0x7
ffffffffc020642c:	12860613          	addi	a2,a2,296 # ffffffffc020d550 <CSWTCH.79+0x188>
ffffffffc0206430:	49b00593          	li	a1,1179
ffffffffc0206434:	00007517          	auipc	a0,0x7
ffffffffc0206438:	08450513          	addi	a0,a0,132 # ffffffffc020d4b8 <CSWTCH.79+0xf0>
ffffffffc020643c:	862fa0ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc0206440:	00007697          	auipc	a3,0x7
ffffffffc0206444:	20868693          	addi	a3,a3,520 # ffffffffc020d648 <CSWTCH.79+0x280>
ffffffffc0206448:	00005617          	auipc	a2,0x5
ffffffffc020644c:	57060613          	addi	a2,a2,1392 # ffffffffc020b9b8 <commands+0x210>
ffffffffc0206450:	4b300593          	li	a1,1203
ffffffffc0206454:	00007517          	auipc	a0,0x7
ffffffffc0206458:	06450513          	addi	a0,a0,100 # ffffffffc020d4b8 <CSWTCH.79+0xf0>
ffffffffc020645c:	842fa0ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc0206460:	00007697          	auipc	a3,0x7
ffffffffc0206464:	1b868693          	addi	a3,a3,440 # ffffffffc020d618 <CSWTCH.79+0x250>
ffffffffc0206468:	00005617          	auipc	a2,0x5
ffffffffc020646c:	55060613          	addi	a2,a2,1360 # ffffffffc020b9b8 <commands+0x210>
ffffffffc0206470:	4b200593          	li	a1,1202
ffffffffc0206474:	00007517          	auipc	a0,0x7
ffffffffc0206478:	04450513          	addi	a0,a0,68 # ffffffffc020d4b8 <CSWTCH.79+0xf0>
ffffffffc020647c:	822fa0ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc0206480:	00007697          	auipc	a3,0x7
ffffffffc0206484:	18868693          	addi	a3,a3,392 # ffffffffc020d608 <CSWTCH.79+0x240>
ffffffffc0206488:	00005617          	auipc	a2,0x5
ffffffffc020648c:	53060613          	addi	a2,a2,1328 # ffffffffc020b9b8 <commands+0x210>
ffffffffc0206490:	4b100593          	li	a1,1201
ffffffffc0206494:	00007517          	auipc	a0,0x7
ffffffffc0206498:	02450513          	addi	a0,a0,36 # ffffffffc020d4b8 <CSWTCH.79+0xf0>
ffffffffc020649c:	802fa0ef          	jal	ra,ffffffffc020049e <__panic>

ffffffffc02064a0 <do_execve>:
ffffffffc02064a0:	db010113          	addi	sp,sp,-592
ffffffffc02064a4:	23313423          	sd	s3,552(sp)
ffffffffc02064a8:	00090997          	auipc	s3,0x90
ffffffffc02064ac:	41898993          	addi	s3,s3,1048 # ffffffffc02968c0 <current>
ffffffffc02064b0:	0009b683          	ld	a3,0(s3)
ffffffffc02064b4:	ffe6                	sd	s9,504(sp)
ffffffffc02064b6:	fff58c9b          	addiw	s9,a1,-1
ffffffffc02064ba:	21613823          	sd	s6,528(sp)
ffffffffc02064be:	24113423          	sd	ra,584(sp)
ffffffffc02064c2:	24813023          	sd	s0,576(sp)
ffffffffc02064c6:	22913c23          	sd	s1,568(sp)
ffffffffc02064ca:	23213823          	sd	s2,560(sp)
ffffffffc02064ce:	23413023          	sd	s4,544(sp)
ffffffffc02064d2:	21513c23          	sd	s5,536(sp)
ffffffffc02064d6:	21713423          	sd	s7,520(sp)
ffffffffc02064da:	21813023          	sd	s8,512(sp)
ffffffffc02064de:	fbea                	sd	s10,496(sp)
ffffffffc02064e0:	f7ee                	sd	s11,488(sp)
ffffffffc02064e2:	000c871b          	sext.w	a4,s9
ffffffffc02064e6:	47fd                	li	a5,31
ffffffffc02064e8:	0286bb03          	ld	s6,40(a3)
ffffffffc02064ec:	62e7e863          	bltu	a5,a4,ffffffffc0206b1c <do_execve+0x67c>
ffffffffc02064f0:	84ae                	mv	s1,a1
ffffffffc02064f2:	842a                	mv	s0,a0
ffffffffc02064f4:	8c32                	mv	s8,a2
ffffffffc02064f6:	4581                	li	a1,0
ffffffffc02064f8:	4641                	li	a2,16
ffffffffc02064fa:	08a8                	addi	a0,sp,88
ffffffffc02064fc:	7d9040ef          	jal	ra,ffffffffc020b4d4 <memset>
ffffffffc0206500:	000b0c63          	beqz	s6,ffffffffc0206518 <do_execve+0x78>
ffffffffc0206504:	038b0513          	addi	a0,s6,56
ffffffffc0206508:	85cfe0ef          	jal	ra,ffffffffc0204564 <down>
ffffffffc020650c:	0009b783          	ld	a5,0(s3)
ffffffffc0206510:	c781                	beqz	a5,ffffffffc0206518 <do_execve+0x78>
ffffffffc0206512:	43dc                	lw	a5,4(a5)
ffffffffc0206514:	04fb2823          	sw	a5,80(s6)
ffffffffc0206518:	1a040f63          	beqz	s0,ffffffffc02066d6 <do_execve+0x236>
ffffffffc020651c:	46c1                	li	a3,16
ffffffffc020651e:	8622                	mv	a2,s0
ffffffffc0206520:	08ac                	addi	a1,sp,88
ffffffffc0206522:	855a                	mv	a0,s6
ffffffffc0206524:	e69fd0ef          	jal	ra,ffffffffc020438c <copy_string>
ffffffffc0206528:	68050d63          	beqz	a0,ffffffffc0206bc2 <do_execve+0x722>
ffffffffc020652c:	00349d93          	slli	s11,s1,0x3
ffffffffc0206530:	4681                	li	a3,0
ffffffffc0206532:	866e                	mv	a2,s11
ffffffffc0206534:	85e2                	mv	a1,s8
ffffffffc0206536:	855a                	mv	a0,s6
ffffffffc0206538:	d5bfd0ef          	jal	ra,ffffffffc0204292 <user_mem_check>
ffffffffc020653c:	8a62                	mv	s4,s8
ffffffffc020653e:	66050e63          	beqz	a0,ffffffffc0206bba <do_execve+0x71a>
ffffffffc0206542:	0e010a93          	addi	s5,sp,224
ffffffffc0206546:	8bd6                	mv	s7,s5
ffffffffc0206548:	4401                	li	s0,0
ffffffffc020654a:	a011                	j	ffffffffc020654e <do_execve+0xae>
ffffffffc020654c:	846a                	mv	s0,s10
ffffffffc020654e:	6505                	lui	a0,0x1
ffffffffc0206550:	a3ffb0ef          	jal	ra,ffffffffc0201f8e <kmalloc>
ffffffffc0206554:	892a                	mv	s2,a0
ffffffffc0206556:	0e050f63          	beqz	a0,ffffffffc0206654 <do_execve+0x1b4>
ffffffffc020655a:	000a3603          	ld	a2,0(s4)
ffffffffc020655e:	85aa                	mv	a1,a0
ffffffffc0206560:	6685                	lui	a3,0x1
ffffffffc0206562:	855a                	mv	a0,s6
ffffffffc0206564:	e29fd0ef          	jal	ra,ffffffffc020438c <copy_string>
ffffffffc0206568:	16050263          	beqz	a0,ffffffffc02066cc <do_execve+0x22c>
ffffffffc020656c:	012bb023          	sd	s2,0(s7)
ffffffffc0206570:	00140d1b          	addiw	s10,s0,1
ffffffffc0206574:	0ba1                	addi	s7,s7,8
ffffffffc0206576:	0a21                	addi	s4,s4,8
ffffffffc0206578:	fda49ae3          	bne	s1,s10,ffffffffc020654c <do_execve+0xac>
ffffffffc020657c:	000c3903          	ld	s2,0(s8)
ffffffffc0206580:	080b0d63          	beqz	s6,ffffffffc020661a <do_execve+0x17a>
ffffffffc0206584:	038b0513          	addi	a0,s6,56
ffffffffc0206588:	fd9fd0ef          	jal	ra,ffffffffc0204560 <up>
ffffffffc020658c:	0009b703          	ld	a4,0(s3)
ffffffffc0206590:	040b2823          	sw	zero,80(s6)
ffffffffc0206594:	14873503          	ld	a0,328(a4)
ffffffffc0206598:	d03fe0ef          	jal	ra,ffffffffc020529a <files_closeall>
ffffffffc020659c:	4581                	li	a1,0
ffffffffc020659e:	854a                	mv	a0,s2
ffffffffc02065a0:	f87fe0ef          	jal	ra,ffffffffc0205526 <sysfile_open>
ffffffffc02065a4:	8a2a                	mv	s4,a0
ffffffffc02065a6:	04054463          	bltz	a0,ffffffffc02065ee <do_execve+0x14e>
ffffffffc02065aa:	00090717          	auipc	a4,0x90
ffffffffc02065ae:	2e673703          	ld	a4,742(a4) # ffffffffc0296890 <boot_pgdir_pa>
ffffffffc02065b2:	56fd                	li	a3,-1
ffffffffc02065b4:	16fe                	slli	a3,a3,0x3f
ffffffffc02065b6:	8331                	srli	a4,a4,0xc
ffffffffc02065b8:	8f55                	or	a4,a4,a3
ffffffffc02065ba:	18071073          	csrw	satp,a4
ffffffffc02065be:	030b2703          	lw	a4,48(s6)
ffffffffc02065c2:	fff7069b          	addiw	a3,a4,-1
ffffffffc02065c6:	02db2823          	sw	a3,48(s6)
ffffffffc02065ca:	14068963          	beqz	a3,ffffffffc020671c <do_execve+0x27c>
ffffffffc02065ce:	0009b703          	ld	a4,0(s3)
ffffffffc02065d2:	02073423          	sd	zero,40(a4)
ffffffffc02065d6:	e32fd0ef          	jal	ra,ffffffffc0203c08 <mm_create>
ffffffffc02065da:	8c2a                	mv	s8,a0
ffffffffc02065dc:	c901                	beqz	a0,ffffffffc02065ec <do_execve+0x14c>
ffffffffc02065de:	d14ff0ef          	jal	ra,ffffffffc0205af2 <setup_pgdir>
ffffffffc02065e2:	10050663          	beqz	a0,ffffffffc02066ee <do_execve+0x24e>
ffffffffc02065e6:	8562                	mv	a0,s8
ffffffffc02065e8:	f6efd0ef          	jal	ra,ffffffffc0203d56 <mm_destroy>
ffffffffc02065ec:	5a71                	li	s4,-4
ffffffffc02065ee:	ff0a8413          	addi	s0,s5,-16
ffffffffc02065f2:	fff48793          	addi	a5,s1,-1
ffffffffc02065f6:	020c9693          	slli	a3,s9,0x20
ffffffffc02065fa:	078e                	slli	a5,a5,0x3
ffffffffc02065fc:	946e                	add	s0,s0,s11
ffffffffc02065fe:	01d6d713          	srli	a4,a3,0x1d
ffffffffc0206602:	9abe                	add	s5,s5,a5
ffffffffc0206604:	8c19                	sub	s0,s0,a4
ffffffffc0206606:	000ab503          	ld	a0,0(s5)
ffffffffc020660a:	1ae1                	addi	s5,s5,-8
ffffffffc020660c:	a33fb0ef          	jal	ra,ffffffffc020203e <kfree>
ffffffffc0206610:	fe8a9be3          	bne	s5,s0,ffffffffc0206606 <do_execve+0x166>
ffffffffc0206614:	8552                	mv	a0,s4
ffffffffc0206616:	a07ff0ef          	jal	ra,ffffffffc020601c <do_exit>
ffffffffc020661a:	0009b703          	ld	a4,0(s3)
ffffffffc020661e:	14873503          	ld	a0,328(a4)
ffffffffc0206622:	c79fe0ef          	jal	ra,ffffffffc020529a <files_closeall>
ffffffffc0206626:	4581                	li	a1,0
ffffffffc0206628:	854a                	mv	a0,s2
ffffffffc020662a:	efdfe0ef          	jal	ra,ffffffffc0205526 <sysfile_open>
ffffffffc020662e:	8a2a                	mv	s4,a0
ffffffffc0206630:	fa054fe3          	bltz	a0,ffffffffc02065ee <do_execve+0x14e>
ffffffffc0206634:	0009b703          	ld	a4,0(s3)
ffffffffc0206638:	7718                	ld	a4,40(a4)
ffffffffc020663a:	df51                	beqz	a4,ffffffffc02065d6 <do_execve+0x136>
ffffffffc020663c:	00007617          	auipc	a2,0x7
ffffffffc0206640:	06c60613          	addi	a2,a2,108 # ffffffffc020d6a8 <CSWTCH.79+0x2e0>
ffffffffc0206644:	2c400593          	li	a1,708
ffffffffc0206648:	00007517          	auipc	a0,0x7
ffffffffc020664c:	e7050513          	addi	a0,a0,-400 # ffffffffc020d4b8 <CSWTCH.79+0xf0>
ffffffffc0206650:	e4ff90ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc0206654:	5971                	li	s2,-4
ffffffffc0206656:	c805                	beqz	s0,ffffffffc0206686 <do_execve+0x1e6>
ffffffffc0206658:	00341693          	slli	a3,s0,0x3
ffffffffc020665c:	fff40793          	addi	a5,s0,-1
ffffffffc0206660:	ff0a8713          	addi	a4,s5,-16
ffffffffc0206664:	347d                	addiw	s0,s0,-1
ffffffffc0206666:	9736                	add	a4,a4,a3
ffffffffc0206668:	02041693          	slli	a3,s0,0x20
ffffffffc020666c:	078e                	slli	a5,a5,0x3
ffffffffc020666e:	01d6d413          	srli	s0,a3,0x1d
ffffffffc0206672:	9abe                	add	s5,s5,a5
ffffffffc0206674:	40870433          	sub	s0,a4,s0
ffffffffc0206678:	000ab503          	ld	a0,0(s5)
ffffffffc020667c:	1ae1                	addi	s5,s5,-8
ffffffffc020667e:	9c1fb0ef          	jal	ra,ffffffffc020203e <kfree>
ffffffffc0206682:	ff541be3          	bne	s0,s5,ffffffffc0206678 <do_execve+0x1d8>
ffffffffc0206686:	000b0863          	beqz	s6,ffffffffc0206696 <do_execve+0x1f6>
ffffffffc020668a:	038b0513          	addi	a0,s6,56
ffffffffc020668e:	ed3fd0ef          	jal	ra,ffffffffc0204560 <up>
ffffffffc0206692:	040b2823          	sw	zero,80(s6)
ffffffffc0206696:	24813083          	ld	ra,584(sp)
ffffffffc020669a:	24013403          	ld	s0,576(sp)
ffffffffc020669e:	23813483          	ld	s1,568(sp)
ffffffffc02066a2:	22813983          	ld	s3,552(sp)
ffffffffc02066a6:	22013a03          	ld	s4,544(sp)
ffffffffc02066aa:	21813a83          	ld	s5,536(sp)
ffffffffc02066ae:	21013b03          	ld	s6,528(sp)
ffffffffc02066b2:	20813b83          	ld	s7,520(sp)
ffffffffc02066b6:	20013c03          	ld	s8,512(sp)
ffffffffc02066ba:	7cfe                	ld	s9,504(sp)
ffffffffc02066bc:	7d5e                	ld	s10,496(sp)
ffffffffc02066be:	7dbe                	ld	s11,488(sp)
ffffffffc02066c0:	854a                	mv	a0,s2
ffffffffc02066c2:	23013903          	ld	s2,560(sp)
ffffffffc02066c6:	25010113          	addi	sp,sp,592
ffffffffc02066ca:	8082                	ret
ffffffffc02066cc:	854a                	mv	a0,s2
ffffffffc02066ce:	971fb0ef          	jal	ra,ffffffffc020203e <kfree>
ffffffffc02066d2:	5975                	li	s2,-3
ffffffffc02066d4:	b749                	j	ffffffffc0206656 <do_execve+0x1b6>
ffffffffc02066d6:	0009b783          	ld	a5,0(s3)
ffffffffc02066da:	00007617          	auipc	a2,0x7
ffffffffc02066de:	fbe60613          	addi	a2,a2,-66 # ffffffffc020d698 <CSWTCH.79+0x2d0>
ffffffffc02066e2:	45c1                	li	a1,16
ffffffffc02066e4:	43d4                	lw	a3,4(a5)
ffffffffc02066e6:	08a8                	addi	a0,sp,88
ffffffffc02066e8:	4fd040ef          	jal	ra,ffffffffc020b3e4 <snprintf>
ffffffffc02066ec:	b581                	j	ffffffffc020652c <do_execve+0x8c>
ffffffffc02066ee:	4601                	li	a2,0
ffffffffc02066f0:	4581                	li	a1,0
ffffffffc02066f2:	8552                	mv	a0,s4
ffffffffc02066f4:	898ff0ef          	jal	ra,ffffffffc020578c <sysfile_seek>
ffffffffc02066f8:	892a                	mv	s2,a0
ffffffffc02066fa:	e145                	bnez	a0,ffffffffc020679a <do_execve+0x2fa>
ffffffffc02066fc:	04000613          	li	a2,64
ffffffffc0206700:	110c                	addi	a1,sp,160
ffffffffc0206702:	8552                	mv	a0,s4
ffffffffc0206704:	e5bfe0ef          	jal	ra,ffffffffc020555e <sysfile_read>
ffffffffc0206708:	04000713          	li	a4,64
ffffffffc020670c:	02e50363          	beq	a0,a4,ffffffffc0206732 <do_execve+0x292>
ffffffffc0206710:	0005091b          	sext.w	s2,a0
ffffffffc0206714:	08054363          	bltz	a0,ffffffffc020679a <do_execve+0x2fa>
ffffffffc0206718:	597d                	li	s2,-1
ffffffffc020671a:	a041                	j	ffffffffc020679a <do_execve+0x2fa>
ffffffffc020671c:	855a                	mv	a0,s6
ffffffffc020671e:	fd4fd0ef          	jal	ra,ffffffffc0203ef2 <exit_mmap>
ffffffffc0206722:	018b3503          	ld	a0,24(s6)
ffffffffc0206726:	b56ff0ef          	jal	ra,ffffffffc0205a7c <put_pgdir.isra.0>
ffffffffc020672a:	855a                	mv	a0,s6
ffffffffc020672c:	e2afd0ef          	jal	ra,ffffffffc0203d56 <mm_destroy>
ffffffffc0206730:	bd79                	j	ffffffffc02065ce <do_execve+0x12e>
ffffffffc0206732:	568a                	lw	a3,160(sp)
ffffffffc0206734:	464c4737          	lui	a4,0x464c4
ffffffffc0206738:	57f70713          	addi	a4,a4,1407 # 464c457f <_binary_bin_sfs_img_size+0x4644f27f>
ffffffffc020673c:	32e69c63          	bne	a3,a4,ffffffffc0206a74 <do_execve+0x5d4>
ffffffffc0206740:	0d815703          	lhu	a4,216(sp)
ffffffffc0206744:	f802                	sd	zero,48(sp)
ffffffffc0206746:	fc02                	sd	zero,56(sp)
ffffffffc0206748:	18070463          	beqz	a4,ffffffffc02068d0 <do_execve+0x430>
ffffffffc020674c:	577d                	li	a4,-1
ffffffffc020674e:	00c75793          	srli	a5,a4,0xc
ffffffffc0206752:	e83e                	sd	a5,16(sp)
ffffffffc0206754:	ec6e                	sd	s11,24(sp)
ffffffffc0206756:	e0ea                	sd	s10,64(sp)
ffffffffc0206758:	e4a2                	sd	s0,72(sp)
ffffffffc020675a:	f026                	sd	s1,32(sp)
ffffffffc020675c:	d666                	sw	s9,44(sp)
ffffffffc020675e:	658e                	ld	a1,192(sp)
ffffffffc0206760:	77c2                	ld	a5,48(sp)
ffffffffc0206762:	4601                	li	a2,0
ffffffffc0206764:	8552                	mv	a0,s4
ffffffffc0206766:	95be                	add	a1,a1,a5
ffffffffc0206768:	824ff0ef          	jal	ra,ffffffffc020578c <sysfile_seek>
ffffffffc020676c:	12051263          	bnez	a0,ffffffffc0206890 <do_execve+0x3f0>
ffffffffc0206770:	03800613          	li	a2,56
ffffffffc0206774:	10ac                	addi	a1,sp,104
ffffffffc0206776:	8552                	mv	a0,s4
ffffffffc0206778:	de7fe0ef          	jal	ra,ffffffffc020555e <sysfile_read>
ffffffffc020677c:	03800793          	li	a5,56
ffffffffc0206780:	10f50d63          	beq	a0,a5,ffffffffc020689a <do_execve+0x3fa>
ffffffffc0206784:	6de2                	ld	s11,24(sp)
ffffffffc0206786:	7482                	ld	s1,32(sp)
ffffffffc0206788:	5cb2                	lw	s9,44(sp)
ffffffffc020678a:	0005091b          	sext.w	s2,a0
ffffffffc020678e:	00054363          	bltz	a0,ffffffffc0206794 <do_execve+0x2f4>
ffffffffc0206792:	597d                	li	s2,-1
ffffffffc0206794:	8562                	mv	a0,s8
ffffffffc0206796:	f5cfd0ef          	jal	ra,ffffffffc0203ef2 <exit_mmap>
ffffffffc020679a:	018c3503          	ld	a0,24(s8)
ffffffffc020679e:	8a4a                	mv	s4,s2
ffffffffc02067a0:	adcff0ef          	jal	ra,ffffffffc0205a7c <put_pgdir.isra.0>
ffffffffc02067a4:	8562                	mv	a0,s8
ffffffffc02067a6:	db0fd0ef          	jal	ra,ffffffffc0203d56 <mm_destroy>
ffffffffc02067aa:	b591                	j	ffffffffc02065ee <do_execve+0x14e>
ffffffffc02067ac:	57b6                	lw	a5,108(sp)
ffffffffc02067ae:	0017f693          	andi	a3,a5,1
ffffffffc02067b2:	c291                	beqz	a3,ffffffffc02067b6 <do_execve+0x316>
ffffffffc02067b4:	4691                	li	a3,4
ffffffffc02067b6:	0027f713          	andi	a4,a5,2
ffffffffc02067ba:	8b91                	andi	a5,a5,4
ffffffffc02067bc:	2c071563          	bnez	a4,ffffffffc0206a86 <do_execve+0x5e6>
ffffffffc02067c0:	4945                	li	s2,17
ffffffffc02067c2:	c781                	beqz	a5,ffffffffc02067ca <do_execve+0x32a>
ffffffffc02067c4:	0016e693          	ori	a3,a3,1
ffffffffc02067c8:	494d                	li	s2,19
ffffffffc02067ca:	0026f793          	andi	a5,a3,2
ffffffffc02067ce:	2c079163          	bnez	a5,ffffffffc0206a90 <do_execve+0x5f0>
ffffffffc02067d2:	0046f793          	andi	a5,a3,4
ffffffffc02067d6:	c399                	beqz	a5,ffffffffc02067dc <do_execve+0x33c>
ffffffffc02067d8:	00896913          	ori	s2,s2,8
ffffffffc02067dc:	75e6                	ld	a1,120(sp)
ffffffffc02067de:	4701                	li	a4,0
ffffffffc02067e0:	8562                	mv	a0,s8
ffffffffc02067e2:	dc6fd0ef          	jal	ra,ffffffffc0203da8 <mm_map>
ffffffffc02067e6:	e54d                	bnez	a0,ffffffffc0206890 <do_execve+0x3f0>
ffffffffc02067e8:	7ce6                	ld	s9,120(sp)
ffffffffc02067ea:	6baa                	ld	s7,136(sp)
ffffffffc02067ec:	76fd                	lui	a3,0xfffff
ffffffffc02067ee:	7b46                	ld	s6,112(sp)
ffffffffc02067f0:	9be6                	add	s7,s7,s9
ffffffffc02067f2:	00dcf4b3          	and	s1,s9,a3
ffffffffc02067f6:	037ce463          	bltu	s9,s7,ffffffffc020681e <do_execve+0x37e>
ffffffffc02067fa:	aef1                	j	ffffffffc0206bd6 <do_execve+0x736>
ffffffffc02067fc:	6702                	ld	a4,0(sp)
ffffffffc02067fe:	67a2                	ld	a5,8(sp)
ffffffffc0206800:	41ac8d33          	sub	s10,s9,s10
ffffffffc0206804:	866e                	mv	a2,s11
ffffffffc0206806:	00f705b3          	add	a1,a4,a5
ffffffffc020680a:	95ea                	add	a1,a1,s10
ffffffffc020680c:	8552                	mv	a0,s4
ffffffffc020680e:	d51fe0ef          	jal	ra,ffffffffc020555e <sysfile_read>
ffffffffc0206812:	f6ad99e3          	bne	s11,a0,ffffffffc0206784 <do_execve+0x2e4>
ffffffffc0206816:	9cee                	add	s9,s9,s11
ffffffffc0206818:	9b6e                	add	s6,s6,s11
ffffffffc020681a:	317cf363          	bgeu	s9,s7,ffffffffc0206b20 <do_execve+0x680>
ffffffffc020681e:	018c3503          	ld	a0,24(s8)
ffffffffc0206822:	864a                	mv	a2,s2
ffffffffc0206824:	85a6                	mv	a1,s1
ffffffffc0206826:	afcfd0ef          	jal	ra,ffffffffc0203b22 <pgdir_alloc_page>
ffffffffc020682a:	8d26                	mv	s10,s1
ffffffffc020682c:	842a                	mv	s0,a0
ffffffffc020682e:	2e050263          	beqz	a0,ffffffffc0206b12 <do_execve+0x672>
ffffffffc0206832:	6785                	lui	a5,0x1
ffffffffc0206834:	94be                	add	s1,s1,a5
ffffffffc0206836:	41948db3          	sub	s11,s1,s9
ffffffffc020683a:	009bf463          	bgeu	s7,s1,ffffffffc0206842 <do_execve+0x3a2>
ffffffffc020683e:	419b8db3          	sub	s11,s7,s9
ffffffffc0206842:	00090797          	auipc	a5,0x90
ffffffffc0206846:	06678793          	addi	a5,a5,102 # ffffffffc02968a8 <pages>
ffffffffc020684a:	638c                	ld	a1,0(a5)
ffffffffc020684c:	00009797          	auipc	a5,0x9
ffffffffc0206850:	fbc78793          	addi	a5,a5,-68 # ffffffffc020f808 <nbase>
ffffffffc0206854:	6390                	ld	a2,0(a5)
ffffffffc0206856:	00090797          	auipc	a5,0x90
ffffffffc020685a:	04a78793          	addi	a5,a5,74 # ffffffffc02968a0 <npage>
ffffffffc020685e:	6394                	ld	a3,0(a5)
ffffffffc0206860:	40b405b3          	sub	a1,s0,a1
ffffffffc0206864:	67c2                	ld	a5,16(sp)
ffffffffc0206866:	8599                	srai	a1,a1,0x6
ffffffffc0206868:	95b2                	add	a1,a1,a2
ffffffffc020686a:	00f5f633          	and	a2,a1,a5
ffffffffc020686e:	00c59793          	slli	a5,a1,0xc
ffffffffc0206872:	e03e                	sd	a5,0(sp)
ffffffffc0206874:	36d67963          	bgeu	a2,a3,ffffffffc0206be6 <do_execve+0x746>
ffffffffc0206878:	00090797          	auipc	a5,0x90
ffffffffc020687c:	04078793          	addi	a5,a5,64 # ffffffffc02968b8 <va_pa_offset>
ffffffffc0206880:	639c                	ld	a5,0(a5)
ffffffffc0206882:	4601                	li	a2,0
ffffffffc0206884:	85da                	mv	a1,s6
ffffffffc0206886:	8552                	mv	a0,s4
ffffffffc0206888:	e43e                	sd	a5,8(sp)
ffffffffc020688a:	f03fe0ef          	jal	ra,ffffffffc020578c <sysfile_seek>
ffffffffc020688e:	d53d                	beqz	a0,ffffffffc02067fc <do_execve+0x35c>
ffffffffc0206890:	6de2                	ld	s11,24(sp)
ffffffffc0206892:	7482                	ld	s1,32(sp)
ffffffffc0206894:	5cb2                	lw	s9,44(sp)
ffffffffc0206896:	892a                	mv	s2,a0
ffffffffc0206898:	bdf5                	j	ffffffffc0206794 <do_execve+0x2f4>
ffffffffc020689a:	5726                	lw	a4,104(sp)
ffffffffc020689c:	4785                	li	a5,1
ffffffffc020689e:	00f71963          	bne	a4,a5,ffffffffc02068b0 <do_execve+0x410>
ffffffffc02068a2:	67aa                	ld	a5,136(sp)
ffffffffc02068a4:	664a                	ld	a2,144(sp)
ffffffffc02068a6:	32f66b63          	bltu	a2,a5,ffffffffc0206bdc <do_execve+0x73c>
ffffffffc02068aa:	8fd1                	or	a5,a5,a2
ffffffffc02068ac:	f00790e3          	bnez	a5,ffffffffc02067ac <do_execve+0x30c>
ffffffffc02068b0:	7762                	ld	a4,56(sp)
ffffffffc02068b2:	76c2                	ld	a3,48(sp)
ffffffffc02068b4:	0d815783          	lhu	a5,216(sp)
ffffffffc02068b8:	2705                	addiw	a4,a4,1
ffffffffc02068ba:	03868693          	addi	a3,a3,56 # fffffffffffff038 <end+0x3fd68728>
ffffffffc02068be:	fc3a                	sd	a4,56(sp)
ffffffffc02068c0:	f836                	sd	a3,48(sp)
ffffffffc02068c2:	e8f76ee3          	bltu	a4,a5,ffffffffc020675e <do_execve+0x2be>
ffffffffc02068c6:	6de2                	ld	s11,24(sp)
ffffffffc02068c8:	6d06                	ld	s10,64(sp)
ffffffffc02068ca:	6426                	ld	s0,72(sp)
ffffffffc02068cc:	7482                	ld	s1,32(sp)
ffffffffc02068ce:	5cb2                	lw	s9,44(sp)
ffffffffc02068d0:	8552                	mv	a0,s4
ffffffffc02068d2:	c89fe0ef          	jal	ra,ffffffffc020555a <sysfile_close>
ffffffffc02068d6:	4701                	li	a4,0
ffffffffc02068d8:	46ad                	li	a3,11
ffffffffc02068da:	00100637          	lui	a2,0x100
ffffffffc02068de:	7ff005b7          	lui	a1,0x7ff00
ffffffffc02068e2:	8562                	mv	a0,s8
ffffffffc02068e4:	cc4fd0ef          	jal	ra,ffffffffc0203da8 <mm_map>
ffffffffc02068e8:	892a                	mv	s2,a0
ffffffffc02068ea:	ea0515e3          	bnez	a0,ffffffffc0206794 <do_execve+0x2f4>
ffffffffc02068ee:	018c3503          	ld	a0,24(s8)
ffffffffc02068f2:	467d                	li	a2,31
ffffffffc02068f4:	7ffff5b7          	lui	a1,0x7ffff
ffffffffc02068f8:	a2afd0ef          	jal	ra,ffffffffc0203b22 <pgdir_alloc_page>
ffffffffc02068fc:	36050e63          	beqz	a0,ffffffffc0206c78 <do_execve+0x7d8>
ffffffffc0206900:	018c3503          	ld	a0,24(s8)
ffffffffc0206904:	467d                	li	a2,31
ffffffffc0206906:	7fffe5b7          	lui	a1,0x7fffe
ffffffffc020690a:	a18fd0ef          	jal	ra,ffffffffc0203b22 <pgdir_alloc_page>
ffffffffc020690e:	34050563          	beqz	a0,ffffffffc0206c58 <do_execve+0x7b8>
ffffffffc0206912:	018c3503          	ld	a0,24(s8)
ffffffffc0206916:	467d                	li	a2,31
ffffffffc0206918:	7fffd5b7          	lui	a1,0x7fffd
ffffffffc020691c:	a06fd0ef          	jal	ra,ffffffffc0203b22 <pgdir_alloc_page>
ffffffffc0206920:	30050c63          	beqz	a0,ffffffffc0206c38 <do_execve+0x798>
ffffffffc0206924:	018c3503          	ld	a0,24(s8)
ffffffffc0206928:	467d                	li	a2,31
ffffffffc020692a:	7fffc5b7          	lui	a1,0x7fffc
ffffffffc020692e:	9f4fd0ef          	jal	ra,ffffffffc0203b22 <pgdir_alloc_page>
ffffffffc0206932:	2e050363          	beqz	a0,ffffffffc0206c18 <do_execve+0x778>
ffffffffc0206936:	030c2703          	lw	a4,48(s8)
ffffffffc020693a:	0009b603          	ld	a2,0(s3)
ffffffffc020693e:	018c3683          	ld	a3,24(s8)
ffffffffc0206942:	2705                	addiw	a4,a4,1
ffffffffc0206944:	02ec2823          	sw	a4,48(s8)
ffffffffc0206948:	03863423          	sd	s8,40(a2) # 100028 <_binary_bin_sfs_img_size+0x8ad28>
ffffffffc020694c:	c0200737          	lui	a4,0xc0200
ffffffffc0206950:	2ae6e863          	bltu	a3,a4,ffffffffc0206c00 <do_execve+0x760>
ffffffffc0206954:	00090717          	auipc	a4,0x90
ffffffffc0206958:	f6473703          	ld	a4,-156(a4) # ffffffffc02968b8 <va_pa_offset>
ffffffffc020695c:	8e99                	sub	a3,a3,a4
ffffffffc020695e:	00c6d713          	srli	a4,a3,0xc
ffffffffc0206962:	f654                	sd	a3,168(a2)
ffffffffc0206964:	56fd                	li	a3,-1
ffffffffc0206966:	16fe                	slli	a3,a3,0x3f
ffffffffc0206968:	8f55                	or	a4,a4,a3
ffffffffc020696a:	18071073          	csrw	satp,a4
ffffffffc020696e:	4b81                	li	s7,0
ffffffffc0206970:	8b56                	mv	s6,s5
ffffffffc0206972:	4a01                	li	s4,0
ffffffffc0206974:	000b3503          	ld	a0,0(s6)
ffffffffc0206978:	6585                	lui	a1,0x1
ffffffffc020697a:	0b21                	addi	s6,s6,8
ffffffffc020697c:	2d1040ef          	jal	ra,ffffffffc020b44c <strnlen>
ffffffffc0206980:	00150793          	addi	a5,a0,1
ffffffffc0206984:	875e                	mv	a4,s7
ffffffffc0206986:	01478a3b          	addw	s4,a5,s4
ffffffffc020698a:	2b85                	addiw	s7,s7,1
ffffffffc020698c:	fe8744e3          	blt	a4,s0,ffffffffc0206974 <do_execve+0x4d4>
ffffffffc0206990:	003a571b          	srliw	a4,s4,0x3
ffffffffc0206994:	10000a37          	lui	s4,0x10000
ffffffffc0206998:	1a7d                	addi	s4,s4,-1
ffffffffc020699a:	40ea0a33          	sub	s4,s4,a4
ffffffffc020699e:	0a0e                	slli	s4,s4,0x3
ffffffffc02069a0:	41ba0b33          	sub	s6,s4,s11
ffffffffc02069a4:	4781                	li	a5,0
ffffffffc02069a6:	415b0733          	sub	a4,s6,s5
ffffffffc02069aa:	e04a                	sd	s2,0(sp)
ffffffffc02069ac:	e426                	sd	s1,8(sp)
ffffffffc02069ae:	8922                	mv	s2,s0
ffffffffc02069b0:	8bd6                	mv	s7,s5
ffffffffc02069b2:	4c01                	li	s8,0
ffffffffc02069b4:	e83a                	sd	a4,16(sp)
ffffffffc02069b6:	843e                	mv	s0,a5
ffffffffc02069b8:	84d2                	mv	s1,s4
ffffffffc02069ba:	000bba03          	ld	s4,0(s7)
ffffffffc02069be:	020c1513          	slli	a0,s8,0x20
ffffffffc02069c2:	9101                	srli	a0,a0,0x20
ffffffffc02069c4:	85d2                	mv	a1,s4
ffffffffc02069c6:	9526                	add	a0,a0,s1
ffffffffc02069c8:	2a1040ef          	jal	ra,ffffffffc020b468 <strcpy>
ffffffffc02069cc:	67c2                	ld	a5,16(sp)
ffffffffc02069ce:	872a                	mv	a4,a0
ffffffffc02069d0:	6585                	lui	a1,0x1
ffffffffc02069d2:	97de                	add	a5,a5,s7
ffffffffc02069d4:	e398                	sd	a4,0(a5)
ffffffffc02069d6:	8552                	mv	a0,s4
ffffffffc02069d8:	275040ef          	jal	ra,ffffffffc020b44c <strnlen>
ffffffffc02069dc:	00150713          	addi	a4,a0,1
ffffffffc02069e0:	87a2                	mv	a5,s0
ffffffffc02069e2:	01870c3b          	addw	s8,a4,s8
ffffffffc02069e6:	2405                	addiw	s0,s0,1
ffffffffc02069e8:	0ba1                	addi	s7,s7,8
ffffffffc02069ea:	fd27c8e3          	blt	a5,s2,ffffffffc02069ba <do_execve+0x51a>
ffffffffc02069ee:	0009b703          	ld	a4,0(s3)
ffffffffc02069f2:	64a2                	ld	s1,8(sp)
ffffffffc02069f4:	12000613          	li	a2,288
ffffffffc02069f8:	0a073a03          	ld	s4,160(a4)
ffffffffc02069fc:	4581                	li	a1,0
ffffffffc02069fe:	ffab2e23          	sw	s10,-4(s6)
ffffffffc0206a02:	100a3403          	ld	s0,256(s4) # 10000100 <_binary_bin_sfs_img_size+0xff8ae00>
ffffffffc0206a06:	8552                	mv	a0,s4
ffffffffc0206a08:	6902                	ld	s2,0(sp)
ffffffffc0206a0a:	2cb040ef          	jal	ra,ffffffffc020b4d4 <memset>
ffffffffc0206a0e:	766a                	ld	a2,184(sp)
ffffffffc0206a10:	edf47713          	andi	a4,s0,-289
ffffffffc0206a14:	fff48793          	addi	a5,s1,-1
ffffffffc0206a18:	ff0a8413          	addi	s0,s5,-16
ffffffffc0206a1c:	020c9593          	slli	a1,s9,0x20
ffffffffc0206a20:	ffcb0b93          	addi	s7,s6,-4
ffffffffc0206a24:	02076713          	ori	a4,a4,32
ffffffffc0206a28:	078e                	slli	a5,a5,0x3
ffffffffc0206a2a:	946e                	add	s0,s0,s11
ffffffffc0206a2c:	01d5d693          	srli	a3,a1,0x1d
ffffffffc0206a30:	017a3823          	sd	s7,16(s4)
ffffffffc0206a34:	10ca3423          	sd	a2,264(s4)
ffffffffc0206a38:	10ea3023          	sd	a4,256(s4)
ffffffffc0206a3c:	049a3823          	sd	s1,80(s4)
ffffffffc0206a40:	056a3c23          	sd	s6,88(s4)
ffffffffc0206a44:	9abe                	add	s5,s5,a5
ffffffffc0206a46:	8c15                	sub	s0,s0,a3
ffffffffc0206a48:	000ab503          	ld	a0,0(s5)
ffffffffc0206a4c:	1ae1                	addi	s5,s5,-8
ffffffffc0206a4e:	df0fb0ef          	jal	ra,ffffffffc020203e <kfree>
ffffffffc0206a52:	fe8a9be3          	bne	s5,s0,ffffffffc0206a48 <do_execve+0x5a8>
ffffffffc0206a56:	0009b403          	ld	s0,0(s3)
ffffffffc0206a5a:	4641                	li	a2,16
ffffffffc0206a5c:	4581                	li	a1,0
ffffffffc0206a5e:	0b440413          	addi	s0,s0,180
ffffffffc0206a62:	8522                	mv	a0,s0
ffffffffc0206a64:	271040ef          	jal	ra,ffffffffc020b4d4 <memset>
ffffffffc0206a68:	463d                	li	a2,15
ffffffffc0206a6a:	08ac                	addi	a1,sp,88
ffffffffc0206a6c:	8522                	mv	a0,s0
ffffffffc0206a6e:	2b9040ef          	jal	ra,ffffffffc020b526 <memcpy>
ffffffffc0206a72:	b115                	j	ffffffffc0206696 <do_execve+0x1f6>
ffffffffc0206a74:	018c3503          	ld	a0,24(s8)
ffffffffc0206a78:	5a61                	li	s4,-8
ffffffffc0206a7a:	802ff0ef          	jal	ra,ffffffffc0205a7c <put_pgdir.isra.0>
ffffffffc0206a7e:	8562                	mv	a0,s8
ffffffffc0206a80:	ad6fd0ef          	jal	ra,ffffffffc0203d56 <mm_destroy>
ffffffffc0206a84:	b6ad                	j	ffffffffc02065ee <do_execve+0x14e>
ffffffffc0206a86:	0026e693          	ori	a3,a3,2
ffffffffc0206a8a:	4945                	li	s2,17
ffffffffc0206a8c:	d2079ce3          	bnez	a5,ffffffffc02067c4 <do_execve+0x324>
ffffffffc0206a90:	00496913          	ori	s2,s2,4
ffffffffc0206a94:	bb3d                	j	ffffffffc02067d2 <do_execve+0x332>
ffffffffc0206a96:	119d9063          	bne	s11,s9,ffffffffc0206b96 <do_execve+0x6f6>
ffffffffc0206a9a:	e16cfbe3          	bgeu	s9,s6,ffffffffc02068b0 <do_execve+0x410>
ffffffffc0206a9e:	6485                	lui	s1,0x1
ffffffffc0206aa0:	00090d17          	auipc	s10,0x90
ffffffffc0206aa4:	e00d0d13          	addi	s10,s10,-512 # ffffffffc02968a0 <npage>
ffffffffc0206aa8:	00090b97          	auipc	s7,0x90
ffffffffc0206aac:	e10b8b93          	addi	s7,s7,-496 # ffffffffc02968b8 <va_pa_offset>
ffffffffc0206ab0:	a889                	j	ffffffffc0206b02 <do_execve+0x662>
ffffffffc0206ab2:	41bc8533          	sub	a0,s9,s11
ffffffffc0206ab6:	9da6                	add	s11,s11,s1
ffffffffc0206ab8:	419d8633          	sub	a2,s11,s9
ffffffffc0206abc:	01bb7463          	bgeu	s6,s11,ffffffffc0206ac4 <do_execve+0x624>
ffffffffc0206ac0:	419b0633          	sub	a2,s6,s9
ffffffffc0206ac4:	00090797          	auipc	a5,0x90
ffffffffc0206ac8:	de478793          	addi	a5,a5,-540 # ffffffffc02968a8 <pages>
ffffffffc0206acc:	639c                	ld	a5,0(a5)
ffffffffc0206ace:	00009717          	auipc	a4,0x9
ffffffffc0206ad2:	d3a70713          	addi	a4,a4,-710 # ffffffffc020f808 <nbase>
ffffffffc0206ad6:	6314                	ld	a3,0(a4)
ffffffffc0206ad8:	40f407b3          	sub	a5,s0,a5
ffffffffc0206adc:	8799                	srai	a5,a5,0x6
ffffffffc0206ade:	97b6                	add	a5,a5,a3
ffffffffc0206ae0:	66c2                	ld	a3,16(sp)
ffffffffc0206ae2:	000d3703          	ld	a4,0(s10)
ffffffffc0206ae6:	8efd                	and	a3,a3,a5
ffffffffc0206ae8:	07b2                	slli	a5,a5,0xc
ffffffffc0206aea:	0ee6fe63          	bgeu	a3,a4,ffffffffc0206be6 <do_execve+0x746>
ffffffffc0206aee:	000bb703          	ld	a4,0(s7)
ffffffffc0206af2:	9cb2                	add	s9,s9,a2
ffffffffc0206af4:	4581                	li	a1,0
ffffffffc0206af6:	97ba                	add	a5,a5,a4
ffffffffc0206af8:	953e                	add	a0,a0,a5
ffffffffc0206afa:	1db040ef          	jal	ra,ffffffffc020b4d4 <memset>
ffffffffc0206afe:	0b6cfc63          	bgeu	s9,s6,ffffffffc0206bb6 <do_execve+0x716>
ffffffffc0206b02:	018c3503          	ld	a0,24(s8)
ffffffffc0206b06:	864a                	mv	a2,s2
ffffffffc0206b08:	85ee                	mv	a1,s11
ffffffffc0206b0a:	818fd0ef          	jal	ra,ffffffffc0203b22 <pgdir_alloc_page>
ffffffffc0206b0e:	842a                	mv	s0,a0
ffffffffc0206b10:	f14d                	bnez	a0,ffffffffc0206ab2 <do_execve+0x612>
ffffffffc0206b12:	6de2                	ld	s11,24(sp)
ffffffffc0206b14:	7482                	ld	s1,32(sp)
ffffffffc0206b16:	5cb2                	lw	s9,44(sp)
ffffffffc0206b18:	5971                	li	s2,-4
ffffffffc0206b1a:	b9ad                	j	ffffffffc0206794 <do_execve+0x2f4>
ffffffffc0206b1c:	5975                	li	s2,-3
ffffffffc0206b1e:	bea5                	j	ffffffffc0206696 <do_execve+0x1f6>
ffffffffc0206b20:	7b66                	ld	s6,120(sp)
ffffffffc0206b22:	8da6                	mv	s11,s1
ffffffffc0206b24:	e022                	sd	s0,0(sp)
ffffffffc0206b26:	66ca                	ld	a3,144(sp)
ffffffffc0206b28:	9b36                	add	s6,s6,a3
ffffffffc0206b2a:	f7bcf8e3          	bgeu	s9,s11,ffffffffc0206a9a <do_execve+0x5fa>
ffffffffc0206b2e:	d99b01e3          	beq	s6,s9,ffffffffc02068b0 <do_execve+0x410>
ffffffffc0206b32:	6505                	lui	a0,0x1
ffffffffc0206b34:	9566                	add	a0,a0,s9
ffffffffc0206b36:	41b50533          	sub	a0,a0,s11
ffffffffc0206b3a:	419b0bb3          	sub	s7,s6,s9
ffffffffc0206b3e:	01bb6463          	bltu	s6,s11,ffffffffc0206b46 <do_execve+0x6a6>
ffffffffc0206b42:	419d8bb3          	sub	s7,s11,s9
ffffffffc0206b46:	00090797          	auipc	a5,0x90
ffffffffc0206b4a:	d6278793          	addi	a5,a5,-670 # ffffffffc02968a8 <pages>
ffffffffc0206b4e:	6394                	ld	a3,0(a5)
ffffffffc0206b50:	00009797          	auipc	a5,0x9
ffffffffc0206b54:	cb878793          	addi	a5,a5,-840 # ffffffffc020f808 <nbase>
ffffffffc0206b58:	638c                	ld	a1,0(a5)
ffffffffc0206b5a:	6782                	ld	a5,0(sp)
ffffffffc0206b5c:	00090617          	auipc	a2,0x90
ffffffffc0206b60:	d4463603          	ld	a2,-700(a2) # ffffffffc02968a0 <npage>
ffffffffc0206b64:	40d786b3          	sub	a3,a5,a3
ffffffffc0206b68:	67c2                	ld	a5,16(sp)
ffffffffc0206b6a:	8699                	srai	a3,a3,0x6
ffffffffc0206b6c:	96ae                	add	a3,a3,a1
ffffffffc0206b6e:	00f6f5b3          	and	a1,a3,a5
ffffffffc0206b72:	06b2                	slli	a3,a3,0xc
ffffffffc0206b74:	06c5fa63          	bgeu	a1,a2,ffffffffc0206be8 <do_execve+0x748>
ffffffffc0206b78:	00090617          	auipc	a2,0x90
ffffffffc0206b7c:	d4063603          	ld	a2,-704(a2) # ffffffffc02968b8 <va_pa_offset>
ffffffffc0206b80:	96b2                	add	a3,a3,a2
ffffffffc0206b82:	4581                	li	a1,0
ffffffffc0206b84:	865e                	mv	a2,s7
ffffffffc0206b86:	9536                	add	a0,a0,a3
ffffffffc0206b88:	14d040ef          	jal	ra,ffffffffc020b4d4 <memset>
ffffffffc0206b8c:	9cde                	add	s9,s9,s7
ffffffffc0206b8e:	f1bb74e3          	bgeu	s6,s11,ffffffffc0206a96 <do_execve+0x5f6>
ffffffffc0206b92:	d19b0fe3          	beq	s6,s9,ffffffffc02068b0 <do_execve+0x410>
ffffffffc0206b96:	00007697          	auipc	a3,0x7
ffffffffc0206b9a:	b3a68693          	addi	a3,a3,-1222 # ffffffffc020d6d0 <CSWTCH.79+0x308>
ffffffffc0206b9e:	00005617          	auipc	a2,0x5
ffffffffc0206ba2:	e1a60613          	addi	a2,a2,-486 # ffffffffc020b9b8 <commands+0x210>
ffffffffc0206ba6:	32f00593          	li	a1,815
ffffffffc0206baa:	00007517          	auipc	a0,0x7
ffffffffc0206bae:	90e50513          	addi	a0,a0,-1778 # ffffffffc020d4b8 <CSWTCH.79+0xf0>
ffffffffc0206bb2:	8edf90ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc0206bb6:	e022                	sd	s0,0(sp)
ffffffffc0206bb8:	b9e5                	j	ffffffffc02068b0 <do_execve+0x410>
ffffffffc0206bba:	5975                	li	s2,-3
ffffffffc0206bbc:	ac0b17e3          	bnez	s6,ffffffffc020668a <do_execve+0x1ea>
ffffffffc0206bc0:	bcd9                	j	ffffffffc0206696 <do_execve+0x1f6>
ffffffffc0206bc2:	f40b0de3          	beqz	s6,ffffffffc0206b1c <do_execve+0x67c>
ffffffffc0206bc6:	038b0513          	addi	a0,s6,56
ffffffffc0206bca:	997fd0ef          	jal	ra,ffffffffc0204560 <up>
ffffffffc0206bce:	5975                	li	s2,-3
ffffffffc0206bd0:	040b2823          	sw	zero,80(s6)
ffffffffc0206bd4:	b4c9                	j	ffffffffc0206696 <do_execve+0x1f6>
ffffffffc0206bd6:	8b66                	mv	s6,s9
ffffffffc0206bd8:	8da6                	mv	s11,s1
ffffffffc0206bda:	b7b1                	j	ffffffffc0206b26 <do_execve+0x686>
ffffffffc0206bdc:	6de2                	ld	s11,24(sp)
ffffffffc0206bde:	7482                	ld	s1,32(sp)
ffffffffc0206be0:	5cb2                	lw	s9,44(sp)
ffffffffc0206be2:	5961                	li	s2,-8
ffffffffc0206be4:	be45                	j	ffffffffc0206794 <do_execve+0x2f4>
ffffffffc0206be6:	86be                	mv	a3,a5
ffffffffc0206be8:	00006617          	auipc	a2,0x6
ffffffffc0206bec:	8f060613          	addi	a2,a2,-1808 # ffffffffc020c4d8 <default_pmm_manager+0x38>
ffffffffc0206bf0:	07100593          	li	a1,113
ffffffffc0206bf4:	00006517          	auipc	a0,0x6
ffffffffc0206bf8:	90c50513          	addi	a0,a0,-1780 # ffffffffc020c500 <default_pmm_manager+0x60>
ffffffffc0206bfc:	8a3f90ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc0206c00:	00006617          	auipc	a2,0x6
ffffffffc0206c04:	98060613          	addi	a2,a2,-1664 # ffffffffc020c580 <default_pmm_manager+0xe0>
ffffffffc0206c08:	35100593          	li	a1,849
ffffffffc0206c0c:	00007517          	auipc	a0,0x7
ffffffffc0206c10:	8ac50513          	addi	a0,a0,-1876 # ffffffffc020d4b8 <CSWTCH.79+0xf0>
ffffffffc0206c14:	88bf90ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc0206c18:	00007697          	auipc	a3,0x7
ffffffffc0206c1c:	bd068693          	addi	a3,a3,-1072 # ffffffffc020d7e8 <CSWTCH.79+0x420>
ffffffffc0206c20:	00005617          	auipc	a2,0x5
ffffffffc0206c24:	d9860613          	addi	a2,a2,-616 # ffffffffc020b9b8 <commands+0x210>
ffffffffc0206c28:	34c00593          	li	a1,844
ffffffffc0206c2c:	00007517          	auipc	a0,0x7
ffffffffc0206c30:	88c50513          	addi	a0,a0,-1908 # ffffffffc020d4b8 <CSWTCH.79+0xf0>
ffffffffc0206c34:	86bf90ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc0206c38:	00007697          	auipc	a3,0x7
ffffffffc0206c3c:	b6868693          	addi	a3,a3,-1176 # ffffffffc020d7a0 <CSWTCH.79+0x3d8>
ffffffffc0206c40:	00005617          	auipc	a2,0x5
ffffffffc0206c44:	d7860613          	addi	a2,a2,-648 # ffffffffc020b9b8 <commands+0x210>
ffffffffc0206c48:	34b00593          	li	a1,843
ffffffffc0206c4c:	00007517          	auipc	a0,0x7
ffffffffc0206c50:	86c50513          	addi	a0,a0,-1940 # ffffffffc020d4b8 <CSWTCH.79+0xf0>
ffffffffc0206c54:	84bf90ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc0206c58:	00007697          	auipc	a3,0x7
ffffffffc0206c5c:	b0068693          	addi	a3,a3,-1280 # ffffffffc020d758 <CSWTCH.79+0x390>
ffffffffc0206c60:	00005617          	auipc	a2,0x5
ffffffffc0206c64:	d5860613          	addi	a2,a2,-680 # ffffffffc020b9b8 <commands+0x210>
ffffffffc0206c68:	34a00593          	li	a1,842
ffffffffc0206c6c:	00007517          	auipc	a0,0x7
ffffffffc0206c70:	84c50513          	addi	a0,a0,-1972 # ffffffffc020d4b8 <CSWTCH.79+0xf0>
ffffffffc0206c74:	82bf90ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc0206c78:	00007697          	auipc	a3,0x7
ffffffffc0206c7c:	a9868693          	addi	a3,a3,-1384 # ffffffffc020d710 <CSWTCH.79+0x348>
ffffffffc0206c80:	00005617          	auipc	a2,0x5
ffffffffc0206c84:	d3860613          	addi	a2,a2,-712 # ffffffffc020b9b8 <commands+0x210>
ffffffffc0206c88:	34900593          	li	a1,841
ffffffffc0206c8c:	00007517          	auipc	a0,0x7
ffffffffc0206c90:	82c50513          	addi	a0,a0,-2004 # ffffffffc020d4b8 <CSWTCH.79+0xf0>
ffffffffc0206c94:	80bf90ef          	jal	ra,ffffffffc020049e <__panic>

ffffffffc0206c98 <user_main>:
ffffffffc0206c98:	7179                	addi	sp,sp,-48
ffffffffc0206c9a:	e84a                	sd	s2,16(sp)
ffffffffc0206c9c:	00090917          	auipc	s2,0x90
ffffffffc0206ca0:	c2490913          	addi	s2,s2,-988 # ffffffffc02968c0 <current>
ffffffffc0206ca4:	00093783          	ld	a5,0(s2)
ffffffffc0206ca8:	00007617          	auipc	a2,0x7
ffffffffc0206cac:	b8860613          	addi	a2,a2,-1144 # ffffffffc020d830 <CSWTCH.79+0x468>
ffffffffc0206cb0:	00007517          	auipc	a0,0x7
ffffffffc0206cb4:	b8850513          	addi	a0,a0,-1144 # ffffffffc020d838 <CSWTCH.79+0x470>
ffffffffc0206cb8:	43cc                	lw	a1,4(a5)
ffffffffc0206cba:	f406                	sd	ra,40(sp)
ffffffffc0206cbc:	f022                	sd	s0,32(sp)
ffffffffc0206cbe:	ec26                	sd	s1,24(sp)
ffffffffc0206cc0:	e032                	sd	a2,0(sp)
ffffffffc0206cc2:	e402                	sd	zero,8(sp)
ffffffffc0206cc4:	ce2f90ef          	jal	ra,ffffffffc02001a6 <cprintf>
ffffffffc0206cc8:	6782                	ld	a5,0(sp)
ffffffffc0206cca:	cfb9                	beqz	a5,ffffffffc0206d28 <user_main+0x90>
ffffffffc0206ccc:	003c                	addi	a5,sp,8
ffffffffc0206cce:	4401                	li	s0,0
ffffffffc0206cd0:	6398                	ld	a4,0(a5)
ffffffffc0206cd2:	0405                	addi	s0,s0,1
ffffffffc0206cd4:	07a1                	addi	a5,a5,8
ffffffffc0206cd6:	ff6d                	bnez	a4,ffffffffc0206cd0 <user_main+0x38>
ffffffffc0206cd8:	00093783          	ld	a5,0(s2)
ffffffffc0206cdc:	12000613          	li	a2,288
ffffffffc0206ce0:	6b84                	ld	s1,16(a5)
ffffffffc0206ce2:	73cc                	ld	a1,160(a5)
ffffffffc0206ce4:	6789                	lui	a5,0x2
ffffffffc0206ce6:	ee078793          	addi	a5,a5,-288 # 1ee0 <_binary_bin_swap_img_size-0x5e20>
ffffffffc0206cea:	94be                	add	s1,s1,a5
ffffffffc0206cec:	8526                	mv	a0,s1
ffffffffc0206cee:	039040ef          	jal	ra,ffffffffc020b526 <memcpy>
ffffffffc0206cf2:	00093783          	ld	a5,0(s2)
ffffffffc0206cf6:	860a                	mv	a2,sp
ffffffffc0206cf8:	0004059b          	sext.w	a1,s0
ffffffffc0206cfc:	f3c4                	sd	s1,160(a5)
ffffffffc0206cfe:	00007517          	auipc	a0,0x7
ffffffffc0206d02:	b3250513          	addi	a0,a0,-1230 # ffffffffc020d830 <CSWTCH.79+0x468>
ffffffffc0206d06:	f9aff0ef          	jal	ra,ffffffffc02064a0 <do_execve>
ffffffffc0206d0a:	8126                	mv	sp,s1
ffffffffc0206d0c:	d44fa06f          	j	ffffffffc0201250 <__trapret>
ffffffffc0206d10:	00007617          	auipc	a2,0x7
ffffffffc0206d14:	b5060613          	addi	a2,a2,-1200 # ffffffffc020d860 <CSWTCH.79+0x498>
ffffffffc0206d18:	49100593          	li	a1,1169
ffffffffc0206d1c:	00006517          	auipc	a0,0x6
ffffffffc0206d20:	79c50513          	addi	a0,a0,1948 # ffffffffc020d4b8 <CSWTCH.79+0xf0>
ffffffffc0206d24:	f7af90ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc0206d28:	4401                	li	s0,0
ffffffffc0206d2a:	b77d                	j	ffffffffc0206cd8 <user_main+0x40>

ffffffffc0206d2c <do_yield>:
ffffffffc0206d2c:	00090797          	auipc	a5,0x90
ffffffffc0206d30:	b947b783          	ld	a5,-1132(a5) # ffffffffc02968c0 <current>
ffffffffc0206d34:	4705                	li	a4,1
ffffffffc0206d36:	ef98                	sd	a4,24(a5)
ffffffffc0206d38:	4501                	li	a0,0
ffffffffc0206d3a:	8082                	ret

ffffffffc0206d3c <do_wait>:
ffffffffc0206d3c:	1101                	addi	sp,sp,-32
ffffffffc0206d3e:	e822                	sd	s0,16(sp)
ffffffffc0206d40:	e426                	sd	s1,8(sp)
ffffffffc0206d42:	ec06                	sd	ra,24(sp)
ffffffffc0206d44:	842e                	mv	s0,a1
ffffffffc0206d46:	84aa                	mv	s1,a0
ffffffffc0206d48:	c999                	beqz	a1,ffffffffc0206d5e <do_wait+0x22>
ffffffffc0206d4a:	00090797          	auipc	a5,0x90
ffffffffc0206d4e:	b767b783          	ld	a5,-1162(a5) # ffffffffc02968c0 <current>
ffffffffc0206d52:	7788                	ld	a0,40(a5)
ffffffffc0206d54:	4685                	li	a3,1
ffffffffc0206d56:	4611                	li	a2,4
ffffffffc0206d58:	d3afd0ef          	jal	ra,ffffffffc0204292 <user_mem_check>
ffffffffc0206d5c:	c909                	beqz	a0,ffffffffc0206d6e <do_wait+0x32>
ffffffffc0206d5e:	85a2                	mv	a1,s0
ffffffffc0206d60:	6442                	ld	s0,16(sp)
ffffffffc0206d62:	60e2                	ld	ra,24(sp)
ffffffffc0206d64:	8526                	mv	a0,s1
ffffffffc0206d66:	64a2                	ld	s1,8(sp)
ffffffffc0206d68:	6105                	addi	sp,sp,32
ffffffffc0206d6a:	c14ff06f          	j	ffffffffc020617e <do_wait.part.0>
ffffffffc0206d6e:	60e2                	ld	ra,24(sp)
ffffffffc0206d70:	6442                	ld	s0,16(sp)
ffffffffc0206d72:	64a2                	ld	s1,8(sp)
ffffffffc0206d74:	5575                	li	a0,-3
ffffffffc0206d76:	6105                	addi	sp,sp,32
ffffffffc0206d78:	8082                	ret

ffffffffc0206d7a <do_kill>:
ffffffffc0206d7a:	1141                	addi	sp,sp,-16
ffffffffc0206d7c:	6789                	lui	a5,0x2
ffffffffc0206d7e:	e406                	sd	ra,8(sp)
ffffffffc0206d80:	e022                	sd	s0,0(sp)
ffffffffc0206d82:	fff5071b          	addiw	a4,a0,-1
ffffffffc0206d86:	17f9                	addi	a5,a5,-2
ffffffffc0206d88:	02e7e963          	bltu	a5,a4,ffffffffc0206dba <do_kill+0x40>
ffffffffc0206d8c:	842a                	mv	s0,a0
ffffffffc0206d8e:	45a9                	li	a1,10
ffffffffc0206d90:	2501                	sext.w	a0,a0
ffffffffc0206d92:	20e040ef          	jal	ra,ffffffffc020afa0 <hash32>
ffffffffc0206d96:	02051793          	slli	a5,a0,0x20
ffffffffc0206d9a:	01c7d513          	srli	a0,a5,0x1c
ffffffffc0206d9e:	0008b797          	auipc	a5,0x8b
ffffffffc0206da2:	a2278793          	addi	a5,a5,-1502 # ffffffffc02917c0 <hash_list>
ffffffffc0206da6:	953e                	add	a0,a0,a5
ffffffffc0206da8:	87aa                	mv	a5,a0
ffffffffc0206daa:	a029                	j	ffffffffc0206db4 <do_kill+0x3a>
ffffffffc0206dac:	f2c7a703          	lw	a4,-212(a5)
ffffffffc0206db0:	00870b63          	beq	a4,s0,ffffffffc0206dc6 <do_kill+0x4c>
ffffffffc0206db4:	679c                	ld	a5,8(a5)
ffffffffc0206db6:	fef51be3          	bne	a0,a5,ffffffffc0206dac <do_kill+0x32>
ffffffffc0206dba:	5475                	li	s0,-3
ffffffffc0206dbc:	60a2                	ld	ra,8(sp)
ffffffffc0206dbe:	8522                	mv	a0,s0
ffffffffc0206dc0:	6402                	ld	s0,0(sp)
ffffffffc0206dc2:	0141                	addi	sp,sp,16
ffffffffc0206dc4:	8082                	ret
ffffffffc0206dc6:	fd87a703          	lw	a4,-40(a5)
ffffffffc0206dca:	00177693          	andi	a3,a4,1
ffffffffc0206dce:	e295                	bnez	a3,ffffffffc0206df2 <do_kill+0x78>
ffffffffc0206dd0:	4bd4                	lw	a3,20(a5)
ffffffffc0206dd2:	00176713          	ori	a4,a4,1
ffffffffc0206dd6:	fce7ac23          	sw	a4,-40(a5)
ffffffffc0206dda:	4401                	li	s0,0
ffffffffc0206ddc:	fe06d0e3          	bgez	a3,ffffffffc0206dbc <do_kill+0x42>
ffffffffc0206de0:	f2878513          	addi	a0,a5,-216
ffffffffc0206de4:	45a000ef          	jal	ra,ffffffffc020723e <wakeup_proc>
ffffffffc0206de8:	60a2                	ld	ra,8(sp)
ffffffffc0206dea:	8522                	mv	a0,s0
ffffffffc0206dec:	6402                	ld	s0,0(sp)
ffffffffc0206dee:	0141                	addi	sp,sp,16
ffffffffc0206df0:	8082                	ret
ffffffffc0206df2:	545d                	li	s0,-9
ffffffffc0206df4:	b7e1                	j	ffffffffc0206dbc <do_kill+0x42>

ffffffffc0206df6 <proc_init>:
ffffffffc0206df6:	1101                	addi	sp,sp,-32
ffffffffc0206df8:	e426                	sd	s1,8(sp)
ffffffffc0206dfa:	0008f797          	auipc	a5,0x8f
ffffffffc0206dfe:	9c678793          	addi	a5,a5,-1594 # ffffffffc02957c0 <proc_list>
ffffffffc0206e02:	ec06                	sd	ra,24(sp)
ffffffffc0206e04:	e822                	sd	s0,16(sp)
ffffffffc0206e06:	e04a                	sd	s2,0(sp)
ffffffffc0206e08:	0008b497          	auipc	s1,0x8b
ffffffffc0206e0c:	9b848493          	addi	s1,s1,-1608 # ffffffffc02917c0 <hash_list>
ffffffffc0206e10:	e79c                	sd	a5,8(a5)
ffffffffc0206e12:	e39c                	sd	a5,0(a5)
ffffffffc0206e14:	0008f717          	auipc	a4,0x8f
ffffffffc0206e18:	9ac70713          	addi	a4,a4,-1620 # ffffffffc02957c0 <proc_list>
ffffffffc0206e1c:	87a6                	mv	a5,s1
ffffffffc0206e1e:	e79c                	sd	a5,8(a5)
ffffffffc0206e20:	e39c                	sd	a5,0(a5)
ffffffffc0206e22:	07c1                	addi	a5,a5,16
ffffffffc0206e24:	fef71de3          	bne	a4,a5,ffffffffc0206e1e <proc_init+0x28>
ffffffffc0206e28:	badfe0ef          	jal	ra,ffffffffc02059d4 <alloc_proc>
ffffffffc0206e2c:	00090917          	auipc	s2,0x90
ffffffffc0206e30:	a9c90913          	addi	s2,s2,-1380 # ffffffffc02968c8 <idleproc>
ffffffffc0206e34:	00a93023          	sd	a0,0(s2)
ffffffffc0206e38:	842a                	mv	s0,a0
ffffffffc0206e3a:	12050863          	beqz	a0,ffffffffc0206f6a <proc_init+0x174>
ffffffffc0206e3e:	4789                	li	a5,2
ffffffffc0206e40:	e11c                	sd	a5,0(a0)
ffffffffc0206e42:	0000a797          	auipc	a5,0xa
ffffffffc0206e46:	1be78793          	addi	a5,a5,446 # ffffffffc0211000 <bootstack>
ffffffffc0206e4a:	e91c                	sd	a5,16(a0)
ffffffffc0206e4c:	4785                	li	a5,1
ffffffffc0206e4e:	ed1c                	sd	a5,24(a0)
ffffffffc0206e50:	b7efe0ef          	jal	ra,ffffffffc02051ce <files_create>
ffffffffc0206e54:	14a43423          	sd	a0,328(s0)
ffffffffc0206e58:	0e050d63          	beqz	a0,ffffffffc0206f52 <proc_init+0x15c>
ffffffffc0206e5c:	00093403          	ld	s0,0(s2)
ffffffffc0206e60:	4641                	li	a2,16
ffffffffc0206e62:	4581                	li	a1,0
ffffffffc0206e64:	14843703          	ld	a4,328(s0)
ffffffffc0206e68:	0b440413          	addi	s0,s0,180
ffffffffc0206e6c:	8522                	mv	a0,s0
ffffffffc0206e6e:	4b1c                	lw	a5,16(a4)
ffffffffc0206e70:	2785                	addiw	a5,a5,1
ffffffffc0206e72:	cb1c                	sw	a5,16(a4)
ffffffffc0206e74:	660040ef          	jal	ra,ffffffffc020b4d4 <memset>
ffffffffc0206e78:	463d                	li	a2,15
ffffffffc0206e7a:	00007597          	auipc	a1,0x7
ffffffffc0206e7e:	a4658593          	addi	a1,a1,-1466 # ffffffffc020d8c0 <CSWTCH.79+0x4f8>
ffffffffc0206e82:	8522                	mv	a0,s0
ffffffffc0206e84:	6a2040ef          	jal	ra,ffffffffc020b526 <memcpy>
ffffffffc0206e88:	00090717          	auipc	a4,0x90
ffffffffc0206e8c:	a5070713          	addi	a4,a4,-1456 # ffffffffc02968d8 <nr_process>
ffffffffc0206e90:	431c                	lw	a5,0(a4)
ffffffffc0206e92:	00093683          	ld	a3,0(s2)
ffffffffc0206e96:	4601                	li	a2,0
ffffffffc0206e98:	2785                	addiw	a5,a5,1
ffffffffc0206e9a:	4581                	li	a1,0
ffffffffc0206e9c:	fffff517          	auipc	a0,0xfffff
ffffffffc0206ea0:	4b450513          	addi	a0,a0,1204 # ffffffffc0206350 <init_main>
ffffffffc0206ea4:	c31c                	sw	a5,0(a4)
ffffffffc0206ea6:	00090797          	auipc	a5,0x90
ffffffffc0206eaa:	a0d7bd23          	sd	a3,-1510(a5) # ffffffffc02968c0 <current>
ffffffffc0206eae:	91eff0ef          	jal	ra,ffffffffc0205fcc <kernel_thread>
ffffffffc0206eb2:	842a                	mv	s0,a0
ffffffffc0206eb4:	08a05363          	blez	a0,ffffffffc0206f3a <proc_init+0x144>
ffffffffc0206eb8:	6789                	lui	a5,0x2
ffffffffc0206eba:	fff5071b          	addiw	a4,a0,-1
ffffffffc0206ebe:	17f9                	addi	a5,a5,-2
ffffffffc0206ec0:	2501                	sext.w	a0,a0
ffffffffc0206ec2:	02e7e363          	bltu	a5,a4,ffffffffc0206ee8 <proc_init+0xf2>
ffffffffc0206ec6:	45a9                	li	a1,10
ffffffffc0206ec8:	0d8040ef          	jal	ra,ffffffffc020afa0 <hash32>
ffffffffc0206ecc:	02051793          	slli	a5,a0,0x20
ffffffffc0206ed0:	01c7d693          	srli	a3,a5,0x1c
ffffffffc0206ed4:	96a6                	add	a3,a3,s1
ffffffffc0206ed6:	87b6                	mv	a5,a3
ffffffffc0206ed8:	a029                	j	ffffffffc0206ee2 <proc_init+0xec>
ffffffffc0206eda:	f2c7a703          	lw	a4,-212(a5) # 1f2c <_binary_bin_swap_img_size-0x5dd4>
ffffffffc0206ede:	04870b63          	beq	a4,s0,ffffffffc0206f34 <proc_init+0x13e>
ffffffffc0206ee2:	679c                	ld	a5,8(a5)
ffffffffc0206ee4:	fef69be3          	bne	a3,a5,ffffffffc0206eda <proc_init+0xe4>
ffffffffc0206ee8:	4781                	li	a5,0
ffffffffc0206eea:	0b478493          	addi	s1,a5,180
ffffffffc0206eee:	4641                	li	a2,16
ffffffffc0206ef0:	4581                	li	a1,0
ffffffffc0206ef2:	00090417          	auipc	s0,0x90
ffffffffc0206ef6:	9de40413          	addi	s0,s0,-1570 # ffffffffc02968d0 <initproc>
ffffffffc0206efa:	8526                	mv	a0,s1
ffffffffc0206efc:	e01c                	sd	a5,0(s0)
ffffffffc0206efe:	5d6040ef          	jal	ra,ffffffffc020b4d4 <memset>
ffffffffc0206f02:	463d                	li	a2,15
ffffffffc0206f04:	00007597          	auipc	a1,0x7
ffffffffc0206f08:	9e458593          	addi	a1,a1,-1564 # ffffffffc020d8e8 <CSWTCH.79+0x520>
ffffffffc0206f0c:	8526                	mv	a0,s1
ffffffffc0206f0e:	618040ef          	jal	ra,ffffffffc020b526 <memcpy>
ffffffffc0206f12:	00093783          	ld	a5,0(s2)
ffffffffc0206f16:	c7d1                	beqz	a5,ffffffffc0206fa2 <proc_init+0x1ac>
ffffffffc0206f18:	43dc                	lw	a5,4(a5)
ffffffffc0206f1a:	e7c1                	bnez	a5,ffffffffc0206fa2 <proc_init+0x1ac>
ffffffffc0206f1c:	601c                	ld	a5,0(s0)
ffffffffc0206f1e:	c3b5                	beqz	a5,ffffffffc0206f82 <proc_init+0x18c>
ffffffffc0206f20:	43d8                	lw	a4,4(a5)
ffffffffc0206f22:	4785                	li	a5,1
ffffffffc0206f24:	04f71f63          	bne	a4,a5,ffffffffc0206f82 <proc_init+0x18c>
ffffffffc0206f28:	60e2                	ld	ra,24(sp)
ffffffffc0206f2a:	6442                	ld	s0,16(sp)
ffffffffc0206f2c:	64a2                	ld	s1,8(sp)
ffffffffc0206f2e:	6902                	ld	s2,0(sp)
ffffffffc0206f30:	6105                	addi	sp,sp,32
ffffffffc0206f32:	8082                	ret
ffffffffc0206f34:	f2878793          	addi	a5,a5,-216
ffffffffc0206f38:	bf4d                	j	ffffffffc0206eea <proc_init+0xf4>
ffffffffc0206f3a:	00007617          	auipc	a2,0x7
ffffffffc0206f3e:	98e60613          	addi	a2,a2,-1650 # ffffffffc020d8c8 <CSWTCH.79+0x500>
ffffffffc0206f42:	4dd00593          	li	a1,1245
ffffffffc0206f46:	00006517          	auipc	a0,0x6
ffffffffc0206f4a:	57250513          	addi	a0,a0,1394 # ffffffffc020d4b8 <CSWTCH.79+0xf0>
ffffffffc0206f4e:	d50f90ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc0206f52:	00007617          	auipc	a2,0x7
ffffffffc0206f56:	94660613          	addi	a2,a2,-1722 # ffffffffc020d898 <CSWTCH.79+0x4d0>
ffffffffc0206f5a:	4d100593          	li	a1,1233
ffffffffc0206f5e:	00006517          	auipc	a0,0x6
ffffffffc0206f62:	55a50513          	addi	a0,a0,1370 # ffffffffc020d4b8 <CSWTCH.79+0xf0>
ffffffffc0206f66:	d38f90ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc0206f6a:	00007617          	auipc	a2,0x7
ffffffffc0206f6e:	91660613          	addi	a2,a2,-1770 # ffffffffc020d880 <CSWTCH.79+0x4b8>
ffffffffc0206f72:	4c700593          	li	a1,1223
ffffffffc0206f76:	00006517          	auipc	a0,0x6
ffffffffc0206f7a:	54250513          	addi	a0,a0,1346 # ffffffffc020d4b8 <CSWTCH.79+0xf0>
ffffffffc0206f7e:	d20f90ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc0206f82:	00007697          	auipc	a3,0x7
ffffffffc0206f86:	99668693          	addi	a3,a3,-1642 # ffffffffc020d918 <CSWTCH.79+0x550>
ffffffffc0206f8a:	00005617          	auipc	a2,0x5
ffffffffc0206f8e:	a2e60613          	addi	a2,a2,-1490 # ffffffffc020b9b8 <commands+0x210>
ffffffffc0206f92:	4e400593          	li	a1,1252
ffffffffc0206f96:	00006517          	auipc	a0,0x6
ffffffffc0206f9a:	52250513          	addi	a0,a0,1314 # ffffffffc020d4b8 <CSWTCH.79+0xf0>
ffffffffc0206f9e:	d00f90ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc0206fa2:	00007697          	auipc	a3,0x7
ffffffffc0206fa6:	94e68693          	addi	a3,a3,-1714 # ffffffffc020d8f0 <CSWTCH.79+0x528>
ffffffffc0206faa:	00005617          	auipc	a2,0x5
ffffffffc0206fae:	a0e60613          	addi	a2,a2,-1522 # ffffffffc020b9b8 <commands+0x210>
ffffffffc0206fb2:	4e300593          	li	a1,1251
ffffffffc0206fb6:	00006517          	auipc	a0,0x6
ffffffffc0206fba:	50250513          	addi	a0,a0,1282 # ffffffffc020d4b8 <CSWTCH.79+0xf0>
ffffffffc0206fbe:	ce0f90ef          	jal	ra,ffffffffc020049e <__panic>

ffffffffc0206fc2 <cpu_idle>:
ffffffffc0206fc2:	1141                	addi	sp,sp,-16
ffffffffc0206fc4:	e022                	sd	s0,0(sp)
ffffffffc0206fc6:	e406                	sd	ra,8(sp)
ffffffffc0206fc8:	00090417          	auipc	s0,0x90
ffffffffc0206fcc:	8f840413          	addi	s0,s0,-1800 # ffffffffc02968c0 <current>
ffffffffc0206fd0:	6018                	ld	a4,0(s0)
ffffffffc0206fd2:	6f1c                	ld	a5,24(a4)
ffffffffc0206fd4:	dffd                	beqz	a5,ffffffffc0206fd2 <cpu_idle+0x10>
ffffffffc0206fd6:	31a000ef          	jal	ra,ffffffffc02072f0 <schedule>
ffffffffc0206fda:	bfdd                	j	ffffffffc0206fd0 <cpu_idle+0xe>

ffffffffc0206fdc <lab6_set_priority>:
ffffffffc0206fdc:	1141                	addi	sp,sp,-16
ffffffffc0206fde:	e022                	sd	s0,0(sp)
ffffffffc0206fe0:	85aa                	mv	a1,a0
ffffffffc0206fe2:	842a                	mv	s0,a0
ffffffffc0206fe4:	00007517          	auipc	a0,0x7
ffffffffc0206fe8:	95c50513          	addi	a0,a0,-1700 # ffffffffc020d940 <CSWTCH.79+0x578>
ffffffffc0206fec:	e406                	sd	ra,8(sp)
ffffffffc0206fee:	9b8f90ef          	jal	ra,ffffffffc02001a6 <cprintf>
ffffffffc0206ff2:	00090797          	auipc	a5,0x90
ffffffffc0206ff6:	8ce7b783          	ld	a5,-1842(a5) # ffffffffc02968c0 <current>
ffffffffc0206ffa:	e801                	bnez	s0,ffffffffc020700a <lab6_set_priority+0x2e>
ffffffffc0206ffc:	60a2                	ld	ra,8(sp)
ffffffffc0206ffe:	6402                	ld	s0,0(sp)
ffffffffc0207000:	4705                	li	a4,1
ffffffffc0207002:	14e7a223          	sw	a4,324(a5)
ffffffffc0207006:	0141                	addi	sp,sp,16
ffffffffc0207008:	8082                	ret
ffffffffc020700a:	60a2                	ld	ra,8(sp)
ffffffffc020700c:	1487a223          	sw	s0,324(a5)
ffffffffc0207010:	6402                	ld	s0,0(sp)
ffffffffc0207012:	0141                	addi	sp,sp,16
ffffffffc0207014:	8082                	ret

ffffffffc0207016 <do_sleep>:
ffffffffc0207016:	c539                	beqz	a0,ffffffffc0207064 <do_sleep+0x4e>
ffffffffc0207018:	7179                	addi	sp,sp,-48
ffffffffc020701a:	f022                	sd	s0,32(sp)
ffffffffc020701c:	f406                	sd	ra,40(sp)
ffffffffc020701e:	842a                	mv	s0,a0
ffffffffc0207020:	100027f3          	csrr	a5,sstatus
ffffffffc0207024:	8b89                	andi	a5,a5,2
ffffffffc0207026:	e3a9                	bnez	a5,ffffffffc0207068 <do_sleep+0x52>
ffffffffc0207028:	00090797          	auipc	a5,0x90
ffffffffc020702c:	8987b783          	ld	a5,-1896(a5) # ffffffffc02968c0 <current>
ffffffffc0207030:	0818                	addi	a4,sp,16
ffffffffc0207032:	c02a                	sw	a0,0(sp)
ffffffffc0207034:	ec3a                	sd	a4,24(sp)
ffffffffc0207036:	e83a                	sd	a4,16(sp)
ffffffffc0207038:	e43e                	sd	a5,8(sp)
ffffffffc020703a:	4705                	li	a4,1
ffffffffc020703c:	c398                	sw	a4,0(a5)
ffffffffc020703e:	80000737          	lui	a4,0x80000
ffffffffc0207042:	840a                	mv	s0,sp
ffffffffc0207044:	0709                	addi	a4,a4,2
ffffffffc0207046:	0ee7a623          	sw	a4,236(a5)
ffffffffc020704a:	8522                	mv	a0,s0
ffffffffc020704c:	364000ef          	jal	ra,ffffffffc02073b0 <add_timer>
ffffffffc0207050:	2a0000ef          	jal	ra,ffffffffc02072f0 <schedule>
ffffffffc0207054:	8522                	mv	a0,s0
ffffffffc0207056:	422000ef          	jal	ra,ffffffffc0207478 <del_timer>
ffffffffc020705a:	70a2                	ld	ra,40(sp)
ffffffffc020705c:	7402                	ld	s0,32(sp)
ffffffffc020705e:	4501                	li	a0,0
ffffffffc0207060:	6145                	addi	sp,sp,48
ffffffffc0207062:	8082                	ret
ffffffffc0207064:	4501                	li	a0,0
ffffffffc0207066:	8082                	ret
ffffffffc0207068:	c0bf90ef          	jal	ra,ffffffffc0200c72 <intr_disable>
ffffffffc020706c:	00090797          	auipc	a5,0x90
ffffffffc0207070:	8547b783          	ld	a5,-1964(a5) # ffffffffc02968c0 <current>
ffffffffc0207074:	0818                	addi	a4,sp,16
ffffffffc0207076:	c022                	sw	s0,0(sp)
ffffffffc0207078:	e43e                	sd	a5,8(sp)
ffffffffc020707a:	ec3a                	sd	a4,24(sp)
ffffffffc020707c:	e83a                	sd	a4,16(sp)
ffffffffc020707e:	4705                	li	a4,1
ffffffffc0207080:	c398                	sw	a4,0(a5)
ffffffffc0207082:	80000737          	lui	a4,0x80000
ffffffffc0207086:	0709                	addi	a4,a4,2
ffffffffc0207088:	840a                	mv	s0,sp
ffffffffc020708a:	8522                	mv	a0,s0
ffffffffc020708c:	0ee7a623          	sw	a4,236(a5)
ffffffffc0207090:	320000ef          	jal	ra,ffffffffc02073b0 <add_timer>
ffffffffc0207094:	bd9f90ef          	jal	ra,ffffffffc0200c6c <intr_enable>
ffffffffc0207098:	bf65                	j	ffffffffc0207050 <do_sleep+0x3a>

ffffffffc020709a <switch_to>:
ffffffffc020709a:	00153023          	sd	ra,0(a0)
ffffffffc020709e:	00253423          	sd	sp,8(a0)
ffffffffc02070a2:	e900                	sd	s0,16(a0)
ffffffffc02070a4:	ed04                	sd	s1,24(a0)
ffffffffc02070a6:	03253023          	sd	s2,32(a0)
ffffffffc02070aa:	03353423          	sd	s3,40(a0)
ffffffffc02070ae:	03453823          	sd	s4,48(a0)
ffffffffc02070b2:	03553c23          	sd	s5,56(a0)
ffffffffc02070b6:	05653023          	sd	s6,64(a0)
ffffffffc02070ba:	05753423          	sd	s7,72(a0)
ffffffffc02070be:	05853823          	sd	s8,80(a0)
ffffffffc02070c2:	05953c23          	sd	s9,88(a0)
ffffffffc02070c6:	07a53023          	sd	s10,96(a0)
ffffffffc02070ca:	07b53423          	sd	s11,104(a0)
ffffffffc02070ce:	0005b083          	ld	ra,0(a1)
ffffffffc02070d2:	0085b103          	ld	sp,8(a1)
ffffffffc02070d6:	6980                	ld	s0,16(a1)
ffffffffc02070d8:	6d84                	ld	s1,24(a1)
ffffffffc02070da:	0205b903          	ld	s2,32(a1)
ffffffffc02070de:	0285b983          	ld	s3,40(a1)
ffffffffc02070e2:	0305ba03          	ld	s4,48(a1)
ffffffffc02070e6:	0385ba83          	ld	s5,56(a1)
ffffffffc02070ea:	0405bb03          	ld	s6,64(a1)
ffffffffc02070ee:	0485bb83          	ld	s7,72(a1)
ffffffffc02070f2:	0505bc03          	ld	s8,80(a1)
ffffffffc02070f6:	0585bc83          	ld	s9,88(a1)
ffffffffc02070fa:	0605bd03          	ld	s10,96(a1)
ffffffffc02070fe:	0685bd83          	ld	s11,104(a1)
ffffffffc0207102:	8082                	ret

ffffffffc0207104 <RR_init>:
ffffffffc0207104:	e508                	sd	a0,8(a0)
ffffffffc0207106:	e108                	sd	a0,0(a0)
ffffffffc0207108:	00052823          	sw	zero,16(a0)
ffffffffc020710c:	8082                	ret

ffffffffc020710e <RR_pick_next>:
ffffffffc020710e:	651c                	ld	a5,8(a0)
ffffffffc0207110:	00f50563          	beq	a0,a5,ffffffffc020711a <RR_pick_next+0xc>
ffffffffc0207114:	ef078513          	addi	a0,a5,-272
ffffffffc0207118:	8082                	ret
ffffffffc020711a:	4501                	li	a0,0
ffffffffc020711c:	8082                	ret

ffffffffc020711e <RR_proc_tick>:
ffffffffc020711e:	1205a783          	lw	a5,288(a1)
ffffffffc0207122:	00f05563          	blez	a5,ffffffffc020712c <RR_proc_tick+0xe>
ffffffffc0207126:	37fd                	addiw	a5,a5,-1
ffffffffc0207128:	12f5a023          	sw	a5,288(a1)
ffffffffc020712c:	e399                	bnez	a5,ffffffffc0207132 <RR_proc_tick+0x14>
ffffffffc020712e:	4785                	li	a5,1
ffffffffc0207130:	ed9c                	sd	a5,24(a1)
ffffffffc0207132:	8082                	ret

ffffffffc0207134 <RR_dequeue>:
ffffffffc0207134:	1185b703          	ld	a4,280(a1)
ffffffffc0207138:	11058793          	addi	a5,a1,272
ffffffffc020713c:	02e78363          	beq	a5,a4,ffffffffc0207162 <RR_dequeue+0x2e>
ffffffffc0207140:	1085b683          	ld	a3,264(a1)
ffffffffc0207144:	00a69f63          	bne	a3,a0,ffffffffc0207162 <RR_dequeue+0x2e>
ffffffffc0207148:	1105b503          	ld	a0,272(a1)
ffffffffc020714c:	4a90                	lw	a2,16(a3)
ffffffffc020714e:	e518                	sd	a4,8(a0)
ffffffffc0207150:	e308                	sd	a0,0(a4)
ffffffffc0207152:	10f5bc23          	sd	a5,280(a1)
ffffffffc0207156:	10f5b823          	sd	a5,272(a1)
ffffffffc020715a:	fff6079b          	addiw	a5,a2,-1
ffffffffc020715e:	ca9c                	sw	a5,16(a3)
ffffffffc0207160:	8082                	ret
ffffffffc0207162:	1141                	addi	sp,sp,-16
ffffffffc0207164:	00006697          	auipc	a3,0x6
ffffffffc0207168:	7f468693          	addi	a3,a3,2036 # ffffffffc020d958 <CSWTCH.79+0x590>
ffffffffc020716c:	00005617          	auipc	a2,0x5
ffffffffc0207170:	84c60613          	addi	a2,a2,-1972 # ffffffffc020b9b8 <commands+0x210>
ffffffffc0207174:	03c00593          	li	a1,60
ffffffffc0207178:	00007517          	auipc	a0,0x7
ffffffffc020717c:	81850513          	addi	a0,a0,-2024 # ffffffffc020d990 <CSWTCH.79+0x5c8>
ffffffffc0207180:	e406                	sd	ra,8(sp)
ffffffffc0207182:	b1cf90ef          	jal	ra,ffffffffc020049e <__panic>

ffffffffc0207186 <RR_enqueue>:
ffffffffc0207186:	1185b703          	ld	a4,280(a1)
ffffffffc020718a:	11058793          	addi	a5,a1,272
ffffffffc020718e:	02e79d63          	bne	a5,a4,ffffffffc02071c8 <RR_enqueue+0x42>
ffffffffc0207192:	6118                	ld	a4,0(a0)
ffffffffc0207194:	1205a683          	lw	a3,288(a1)
ffffffffc0207198:	e11c                	sd	a5,0(a0)
ffffffffc020719a:	e71c                	sd	a5,8(a4)
ffffffffc020719c:	10a5bc23          	sd	a0,280(a1)
ffffffffc02071a0:	10e5b823          	sd	a4,272(a1)
ffffffffc02071a4:	495c                	lw	a5,20(a0)
ffffffffc02071a6:	ea89                	bnez	a3,ffffffffc02071b8 <RR_enqueue+0x32>
ffffffffc02071a8:	12f5a023          	sw	a5,288(a1)
ffffffffc02071ac:	491c                	lw	a5,16(a0)
ffffffffc02071ae:	10a5b423          	sd	a0,264(a1)
ffffffffc02071b2:	2785                	addiw	a5,a5,1
ffffffffc02071b4:	c91c                	sw	a5,16(a0)
ffffffffc02071b6:	8082                	ret
ffffffffc02071b8:	fed7c8e3          	blt	a5,a3,ffffffffc02071a8 <RR_enqueue+0x22>
ffffffffc02071bc:	491c                	lw	a5,16(a0)
ffffffffc02071be:	10a5b423          	sd	a0,264(a1)
ffffffffc02071c2:	2785                	addiw	a5,a5,1
ffffffffc02071c4:	c91c                	sw	a5,16(a0)
ffffffffc02071c6:	8082                	ret
ffffffffc02071c8:	1141                	addi	sp,sp,-16
ffffffffc02071ca:	00006697          	auipc	a3,0x6
ffffffffc02071ce:	7e668693          	addi	a3,a3,2022 # ffffffffc020d9b0 <CSWTCH.79+0x5e8>
ffffffffc02071d2:	00004617          	auipc	a2,0x4
ffffffffc02071d6:	7e660613          	addi	a2,a2,2022 # ffffffffc020b9b8 <commands+0x210>
ffffffffc02071da:	02800593          	li	a1,40
ffffffffc02071de:	00006517          	auipc	a0,0x6
ffffffffc02071e2:	7b250513          	addi	a0,a0,1970 # ffffffffc020d990 <CSWTCH.79+0x5c8>
ffffffffc02071e6:	e406                	sd	ra,8(sp)
ffffffffc02071e8:	ab6f90ef          	jal	ra,ffffffffc020049e <__panic>

ffffffffc02071ec <sched_init>:
ffffffffc02071ec:	1141                	addi	sp,sp,-16
ffffffffc02071ee:	0008a717          	auipc	a4,0x8a
ffffffffc02071f2:	e3270713          	addi	a4,a4,-462 # ffffffffc0291020 <default_sched_class>
ffffffffc02071f6:	e022                	sd	s0,0(sp)
ffffffffc02071f8:	e406                	sd	ra,8(sp)
ffffffffc02071fa:	0008e797          	auipc	a5,0x8e
ffffffffc02071fe:	5f678793          	addi	a5,a5,1526 # ffffffffc02957f0 <timer_list>
ffffffffc0207202:	6714                	ld	a3,8(a4)
ffffffffc0207204:	0008e517          	auipc	a0,0x8e
ffffffffc0207208:	5cc50513          	addi	a0,a0,1484 # ffffffffc02957d0 <__rq>
ffffffffc020720c:	e79c                	sd	a5,8(a5)
ffffffffc020720e:	e39c                	sd	a5,0(a5)
ffffffffc0207210:	4795                	li	a5,5
ffffffffc0207212:	c95c                	sw	a5,20(a0)
ffffffffc0207214:	0008f417          	auipc	s0,0x8f
ffffffffc0207218:	6d440413          	addi	s0,s0,1748 # ffffffffc02968e8 <sched_class>
ffffffffc020721c:	0008f797          	auipc	a5,0x8f
ffffffffc0207220:	6ca7b223          	sd	a0,1732(a5) # ffffffffc02968e0 <rq>
ffffffffc0207224:	e018                	sd	a4,0(s0)
ffffffffc0207226:	9682                	jalr	a3
ffffffffc0207228:	601c                	ld	a5,0(s0)
ffffffffc020722a:	6402                	ld	s0,0(sp)
ffffffffc020722c:	60a2                	ld	ra,8(sp)
ffffffffc020722e:	638c                	ld	a1,0(a5)
ffffffffc0207230:	00006517          	auipc	a0,0x6
ffffffffc0207234:	7b050513          	addi	a0,a0,1968 # ffffffffc020d9e0 <CSWTCH.79+0x618>
ffffffffc0207238:	0141                	addi	sp,sp,16
ffffffffc020723a:	f6df806f          	j	ffffffffc02001a6 <cprintf>

ffffffffc020723e <wakeup_proc>:
ffffffffc020723e:	4118                	lw	a4,0(a0)
ffffffffc0207240:	1101                	addi	sp,sp,-32
ffffffffc0207242:	ec06                	sd	ra,24(sp)
ffffffffc0207244:	e822                	sd	s0,16(sp)
ffffffffc0207246:	e426                	sd	s1,8(sp)
ffffffffc0207248:	478d                	li	a5,3
ffffffffc020724a:	08f70363          	beq	a4,a5,ffffffffc02072d0 <wakeup_proc+0x92>
ffffffffc020724e:	842a                	mv	s0,a0
ffffffffc0207250:	100027f3          	csrr	a5,sstatus
ffffffffc0207254:	8b89                	andi	a5,a5,2
ffffffffc0207256:	4481                	li	s1,0
ffffffffc0207258:	e7bd                	bnez	a5,ffffffffc02072c6 <wakeup_proc+0x88>
ffffffffc020725a:	4789                	li	a5,2
ffffffffc020725c:	04f70863          	beq	a4,a5,ffffffffc02072ac <wakeup_proc+0x6e>
ffffffffc0207260:	c01c                	sw	a5,0(s0)
ffffffffc0207262:	0e042623          	sw	zero,236(s0)
ffffffffc0207266:	0008f797          	auipc	a5,0x8f
ffffffffc020726a:	65a7b783          	ld	a5,1626(a5) # ffffffffc02968c0 <current>
ffffffffc020726e:	02878363          	beq	a5,s0,ffffffffc0207294 <wakeup_proc+0x56>
ffffffffc0207272:	0008f797          	auipc	a5,0x8f
ffffffffc0207276:	6567b783          	ld	a5,1622(a5) # ffffffffc02968c8 <idleproc>
ffffffffc020727a:	00f40d63          	beq	s0,a5,ffffffffc0207294 <wakeup_proc+0x56>
ffffffffc020727e:	0008f797          	auipc	a5,0x8f
ffffffffc0207282:	66a7b783          	ld	a5,1642(a5) # ffffffffc02968e8 <sched_class>
ffffffffc0207286:	6b9c                	ld	a5,16(a5)
ffffffffc0207288:	85a2                	mv	a1,s0
ffffffffc020728a:	0008f517          	auipc	a0,0x8f
ffffffffc020728e:	65653503          	ld	a0,1622(a0) # ffffffffc02968e0 <rq>
ffffffffc0207292:	9782                	jalr	a5
ffffffffc0207294:	e491                	bnez	s1,ffffffffc02072a0 <wakeup_proc+0x62>
ffffffffc0207296:	60e2                	ld	ra,24(sp)
ffffffffc0207298:	6442                	ld	s0,16(sp)
ffffffffc020729a:	64a2                	ld	s1,8(sp)
ffffffffc020729c:	6105                	addi	sp,sp,32
ffffffffc020729e:	8082                	ret
ffffffffc02072a0:	6442                	ld	s0,16(sp)
ffffffffc02072a2:	60e2                	ld	ra,24(sp)
ffffffffc02072a4:	64a2                	ld	s1,8(sp)
ffffffffc02072a6:	6105                	addi	sp,sp,32
ffffffffc02072a8:	9c5f906f          	j	ffffffffc0200c6c <intr_enable>
ffffffffc02072ac:	00006617          	auipc	a2,0x6
ffffffffc02072b0:	78460613          	addi	a2,a2,1924 # ffffffffc020da30 <CSWTCH.79+0x668>
ffffffffc02072b4:	05200593          	li	a1,82
ffffffffc02072b8:	00006517          	auipc	a0,0x6
ffffffffc02072bc:	76050513          	addi	a0,a0,1888 # ffffffffc020da18 <CSWTCH.79+0x650>
ffffffffc02072c0:	a46f90ef          	jal	ra,ffffffffc0200506 <__warn>
ffffffffc02072c4:	bfc1                	j	ffffffffc0207294 <wakeup_proc+0x56>
ffffffffc02072c6:	9adf90ef          	jal	ra,ffffffffc0200c72 <intr_disable>
ffffffffc02072ca:	4018                	lw	a4,0(s0)
ffffffffc02072cc:	4485                	li	s1,1
ffffffffc02072ce:	b771                	j	ffffffffc020725a <wakeup_proc+0x1c>
ffffffffc02072d0:	00006697          	auipc	a3,0x6
ffffffffc02072d4:	72868693          	addi	a3,a3,1832 # ffffffffc020d9f8 <CSWTCH.79+0x630>
ffffffffc02072d8:	00004617          	auipc	a2,0x4
ffffffffc02072dc:	6e060613          	addi	a2,a2,1760 # ffffffffc020b9b8 <commands+0x210>
ffffffffc02072e0:	04300593          	li	a1,67
ffffffffc02072e4:	00006517          	auipc	a0,0x6
ffffffffc02072e8:	73450513          	addi	a0,a0,1844 # ffffffffc020da18 <CSWTCH.79+0x650>
ffffffffc02072ec:	9b2f90ef          	jal	ra,ffffffffc020049e <__panic>

ffffffffc02072f0 <schedule>:
ffffffffc02072f0:	7179                	addi	sp,sp,-48
ffffffffc02072f2:	f406                	sd	ra,40(sp)
ffffffffc02072f4:	f022                	sd	s0,32(sp)
ffffffffc02072f6:	ec26                	sd	s1,24(sp)
ffffffffc02072f8:	e84a                	sd	s2,16(sp)
ffffffffc02072fa:	e44e                	sd	s3,8(sp)
ffffffffc02072fc:	e052                	sd	s4,0(sp)
ffffffffc02072fe:	100027f3          	csrr	a5,sstatus
ffffffffc0207302:	8b89                	andi	a5,a5,2
ffffffffc0207304:	4a01                	li	s4,0
ffffffffc0207306:	e3cd                	bnez	a5,ffffffffc02073a8 <schedule+0xb8>
ffffffffc0207308:	0008f497          	auipc	s1,0x8f
ffffffffc020730c:	5b848493          	addi	s1,s1,1464 # ffffffffc02968c0 <current>
ffffffffc0207310:	608c                	ld	a1,0(s1)
ffffffffc0207312:	0008f997          	auipc	s3,0x8f
ffffffffc0207316:	5d698993          	addi	s3,s3,1494 # ffffffffc02968e8 <sched_class>
ffffffffc020731a:	0008f917          	auipc	s2,0x8f
ffffffffc020731e:	5c690913          	addi	s2,s2,1478 # ffffffffc02968e0 <rq>
ffffffffc0207322:	4194                	lw	a3,0(a1)
ffffffffc0207324:	0005bc23          	sd	zero,24(a1)
ffffffffc0207328:	4709                	li	a4,2
ffffffffc020732a:	0009b783          	ld	a5,0(s3)
ffffffffc020732e:	00093503          	ld	a0,0(s2)
ffffffffc0207332:	04e68e63          	beq	a3,a4,ffffffffc020738e <schedule+0x9e>
ffffffffc0207336:	739c                	ld	a5,32(a5)
ffffffffc0207338:	9782                	jalr	a5
ffffffffc020733a:	842a                	mv	s0,a0
ffffffffc020733c:	c521                	beqz	a0,ffffffffc0207384 <schedule+0x94>
ffffffffc020733e:	0009b783          	ld	a5,0(s3)
ffffffffc0207342:	00093503          	ld	a0,0(s2)
ffffffffc0207346:	85a2                	mv	a1,s0
ffffffffc0207348:	6f9c                	ld	a5,24(a5)
ffffffffc020734a:	9782                	jalr	a5
ffffffffc020734c:	441c                	lw	a5,8(s0)
ffffffffc020734e:	6098                	ld	a4,0(s1)
ffffffffc0207350:	2785                	addiw	a5,a5,1
ffffffffc0207352:	c41c                	sw	a5,8(s0)
ffffffffc0207354:	00870563          	beq	a4,s0,ffffffffc020735e <schedule+0x6e>
ffffffffc0207358:	8522                	mv	a0,s0
ffffffffc020735a:	81bfe0ef          	jal	ra,ffffffffc0205b74 <proc_run>
ffffffffc020735e:	000a1a63          	bnez	s4,ffffffffc0207372 <schedule+0x82>
ffffffffc0207362:	70a2                	ld	ra,40(sp)
ffffffffc0207364:	7402                	ld	s0,32(sp)
ffffffffc0207366:	64e2                	ld	s1,24(sp)
ffffffffc0207368:	6942                	ld	s2,16(sp)
ffffffffc020736a:	69a2                	ld	s3,8(sp)
ffffffffc020736c:	6a02                	ld	s4,0(sp)
ffffffffc020736e:	6145                	addi	sp,sp,48
ffffffffc0207370:	8082                	ret
ffffffffc0207372:	7402                	ld	s0,32(sp)
ffffffffc0207374:	70a2                	ld	ra,40(sp)
ffffffffc0207376:	64e2                	ld	s1,24(sp)
ffffffffc0207378:	6942                	ld	s2,16(sp)
ffffffffc020737a:	69a2                	ld	s3,8(sp)
ffffffffc020737c:	6a02                	ld	s4,0(sp)
ffffffffc020737e:	6145                	addi	sp,sp,48
ffffffffc0207380:	8edf906f          	j	ffffffffc0200c6c <intr_enable>
ffffffffc0207384:	0008f417          	auipc	s0,0x8f
ffffffffc0207388:	54443403          	ld	s0,1348(s0) # ffffffffc02968c8 <idleproc>
ffffffffc020738c:	b7c1                	j	ffffffffc020734c <schedule+0x5c>
ffffffffc020738e:	0008f717          	auipc	a4,0x8f
ffffffffc0207392:	53a73703          	ld	a4,1338(a4) # ffffffffc02968c8 <idleproc>
ffffffffc0207396:	fae580e3          	beq	a1,a4,ffffffffc0207336 <schedule+0x46>
ffffffffc020739a:	6b9c                	ld	a5,16(a5)
ffffffffc020739c:	9782                	jalr	a5
ffffffffc020739e:	0009b783          	ld	a5,0(s3)
ffffffffc02073a2:	00093503          	ld	a0,0(s2)
ffffffffc02073a6:	bf41                	j	ffffffffc0207336 <schedule+0x46>
ffffffffc02073a8:	8cbf90ef          	jal	ra,ffffffffc0200c72 <intr_disable>
ffffffffc02073ac:	4a05                	li	s4,1
ffffffffc02073ae:	bfa9                	j	ffffffffc0207308 <schedule+0x18>

ffffffffc02073b0 <add_timer>:
ffffffffc02073b0:	1141                	addi	sp,sp,-16
ffffffffc02073b2:	e022                	sd	s0,0(sp)
ffffffffc02073b4:	e406                	sd	ra,8(sp)
ffffffffc02073b6:	842a                	mv	s0,a0
ffffffffc02073b8:	100027f3          	csrr	a5,sstatus
ffffffffc02073bc:	8b89                	andi	a5,a5,2
ffffffffc02073be:	4501                	li	a0,0
ffffffffc02073c0:	eba5                	bnez	a5,ffffffffc0207430 <add_timer+0x80>
ffffffffc02073c2:	401c                	lw	a5,0(s0)
ffffffffc02073c4:	cbb5                	beqz	a5,ffffffffc0207438 <add_timer+0x88>
ffffffffc02073c6:	6418                	ld	a4,8(s0)
ffffffffc02073c8:	cb25                	beqz	a4,ffffffffc0207438 <add_timer+0x88>
ffffffffc02073ca:	6c18                	ld	a4,24(s0)
ffffffffc02073cc:	01040593          	addi	a1,s0,16
ffffffffc02073d0:	08e59463          	bne	a1,a4,ffffffffc0207458 <add_timer+0xa8>
ffffffffc02073d4:	0008e617          	auipc	a2,0x8e
ffffffffc02073d8:	41c60613          	addi	a2,a2,1052 # ffffffffc02957f0 <timer_list>
ffffffffc02073dc:	6618                	ld	a4,8(a2)
ffffffffc02073de:	00c71863          	bne	a4,a2,ffffffffc02073ee <add_timer+0x3e>
ffffffffc02073e2:	a80d                	j	ffffffffc0207414 <add_timer+0x64>
ffffffffc02073e4:	6718                	ld	a4,8(a4)
ffffffffc02073e6:	9f95                	subw	a5,a5,a3
ffffffffc02073e8:	c01c                	sw	a5,0(s0)
ffffffffc02073ea:	02c70563          	beq	a4,a2,ffffffffc0207414 <add_timer+0x64>
ffffffffc02073ee:	ff072683          	lw	a3,-16(a4)
ffffffffc02073f2:	fed7f9e3          	bgeu	a5,a3,ffffffffc02073e4 <add_timer+0x34>
ffffffffc02073f6:	40f687bb          	subw	a5,a3,a5
ffffffffc02073fa:	fef72823          	sw	a5,-16(a4)
ffffffffc02073fe:	631c                	ld	a5,0(a4)
ffffffffc0207400:	e30c                	sd	a1,0(a4)
ffffffffc0207402:	e78c                	sd	a1,8(a5)
ffffffffc0207404:	ec18                	sd	a4,24(s0)
ffffffffc0207406:	e81c                	sd	a5,16(s0)
ffffffffc0207408:	c105                	beqz	a0,ffffffffc0207428 <add_timer+0x78>
ffffffffc020740a:	6402                	ld	s0,0(sp)
ffffffffc020740c:	60a2                	ld	ra,8(sp)
ffffffffc020740e:	0141                	addi	sp,sp,16
ffffffffc0207410:	85df906f          	j	ffffffffc0200c6c <intr_enable>
ffffffffc0207414:	0008e717          	auipc	a4,0x8e
ffffffffc0207418:	3dc70713          	addi	a4,a4,988 # ffffffffc02957f0 <timer_list>
ffffffffc020741c:	631c                	ld	a5,0(a4)
ffffffffc020741e:	e30c                	sd	a1,0(a4)
ffffffffc0207420:	e78c                	sd	a1,8(a5)
ffffffffc0207422:	ec18                	sd	a4,24(s0)
ffffffffc0207424:	e81c                	sd	a5,16(s0)
ffffffffc0207426:	f175                	bnez	a0,ffffffffc020740a <add_timer+0x5a>
ffffffffc0207428:	60a2                	ld	ra,8(sp)
ffffffffc020742a:	6402                	ld	s0,0(sp)
ffffffffc020742c:	0141                	addi	sp,sp,16
ffffffffc020742e:	8082                	ret
ffffffffc0207430:	843f90ef          	jal	ra,ffffffffc0200c72 <intr_disable>
ffffffffc0207434:	4505                	li	a0,1
ffffffffc0207436:	b771                	j	ffffffffc02073c2 <add_timer+0x12>
ffffffffc0207438:	00006697          	auipc	a3,0x6
ffffffffc020743c:	61868693          	addi	a3,a3,1560 # ffffffffc020da50 <CSWTCH.79+0x688>
ffffffffc0207440:	00004617          	auipc	a2,0x4
ffffffffc0207444:	57860613          	addi	a2,a2,1400 # ffffffffc020b9b8 <commands+0x210>
ffffffffc0207448:	07a00593          	li	a1,122
ffffffffc020744c:	00006517          	auipc	a0,0x6
ffffffffc0207450:	5cc50513          	addi	a0,a0,1484 # ffffffffc020da18 <CSWTCH.79+0x650>
ffffffffc0207454:	84af90ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc0207458:	00006697          	auipc	a3,0x6
ffffffffc020745c:	62868693          	addi	a3,a3,1576 # ffffffffc020da80 <CSWTCH.79+0x6b8>
ffffffffc0207460:	00004617          	auipc	a2,0x4
ffffffffc0207464:	55860613          	addi	a2,a2,1368 # ffffffffc020b9b8 <commands+0x210>
ffffffffc0207468:	07b00593          	li	a1,123
ffffffffc020746c:	00006517          	auipc	a0,0x6
ffffffffc0207470:	5ac50513          	addi	a0,a0,1452 # ffffffffc020da18 <CSWTCH.79+0x650>
ffffffffc0207474:	82af90ef          	jal	ra,ffffffffc020049e <__panic>

ffffffffc0207478 <del_timer>:
ffffffffc0207478:	1101                	addi	sp,sp,-32
ffffffffc020747a:	e822                	sd	s0,16(sp)
ffffffffc020747c:	ec06                	sd	ra,24(sp)
ffffffffc020747e:	e426                	sd	s1,8(sp)
ffffffffc0207480:	842a                	mv	s0,a0
ffffffffc0207482:	100027f3          	csrr	a5,sstatus
ffffffffc0207486:	8b89                	andi	a5,a5,2
ffffffffc0207488:	01050493          	addi	s1,a0,16
ffffffffc020748c:	eb9d                	bnez	a5,ffffffffc02074c2 <del_timer+0x4a>
ffffffffc020748e:	6d1c                	ld	a5,24(a0)
ffffffffc0207490:	02978463          	beq	a5,s1,ffffffffc02074b8 <del_timer+0x40>
ffffffffc0207494:	4114                	lw	a3,0(a0)
ffffffffc0207496:	6918                	ld	a4,16(a0)
ffffffffc0207498:	ce81                	beqz	a3,ffffffffc02074b0 <del_timer+0x38>
ffffffffc020749a:	0008e617          	auipc	a2,0x8e
ffffffffc020749e:	35660613          	addi	a2,a2,854 # ffffffffc02957f0 <timer_list>
ffffffffc02074a2:	00c78763          	beq	a5,a2,ffffffffc02074b0 <del_timer+0x38>
ffffffffc02074a6:	ff07a603          	lw	a2,-16(a5)
ffffffffc02074aa:	9eb1                	addw	a3,a3,a2
ffffffffc02074ac:	fed7a823          	sw	a3,-16(a5)
ffffffffc02074b0:	e71c                	sd	a5,8(a4)
ffffffffc02074b2:	e398                	sd	a4,0(a5)
ffffffffc02074b4:	ec04                	sd	s1,24(s0)
ffffffffc02074b6:	e804                	sd	s1,16(s0)
ffffffffc02074b8:	60e2                	ld	ra,24(sp)
ffffffffc02074ba:	6442                	ld	s0,16(sp)
ffffffffc02074bc:	64a2                	ld	s1,8(sp)
ffffffffc02074be:	6105                	addi	sp,sp,32
ffffffffc02074c0:	8082                	ret
ffffffffc02074c2:	fb0f90ef          	jal	ra,ffffffffc0200c72 <intr_disable>
ffffffffc02074c6:	6c1c                	ld	a5,24(s0)
ffffffffc02074c8:	02978463          	beq	a5,s1,ffffffffc02074f0 <del_timer+0x78>
ffffffffc02074cc:	4014                	lw	a3,0(s0)
ffffffffc02074ce:	6818                	ld	a4,16(s0)
ffffffffc02074d0:	ce81                	beqz	a3,ffffffffc02074e8 <del_timer+0x70>
ffffffffc02074d2:	0008e617          	auipc	a2,0x8e
ffffffffc02074d6:	31e60613          	addi	a2,a2,798 # ffffffffc02957f0 <timer_list>
ffffffffc02074da:	00c78763          	beq	a5,a2,ffffffffc02074e8 <del_timer+0x70>
ffffffffc02074de:	ff07a603          	lw	a2,-16(a5)
ffffffffc02074e2:	9eb1                	addw	a3,a3,a2
ffffffffc02074e4:	fed7a823          	sw	a3,-16(a5)
ffffffffc02074e8:	e71c                	sd	a5,8(a4)
ffffffffc02074ea:	e398                	sd	a4,0(a5)
ffffffffc02074ec:	ec04                	sd	s1,24(s0)
ffffffffc02074ee:	e804                	sd	s1,16(s0)
ffffffffc02074f0:	6442                	ld	s0,16(sp)
ffffffffc02074f2:	60e2                	ld	ra,24(sp)
ffffffffc02074f4:	64a2                	ld	s1,8(sp)
ffffffffc02074f6:	6105                	addi	sp,sp,32
ffffffffc02074f8:	f74f906f          	j	ffffffffc0200c6c <intr_enable>

ffffffffc02074fc <run_timer_list>:
ffffffffc02074fc:	7139                	addi	sp,sp,-64
ffffffffc02074fe:	fc06                	sd	ra,56(sp)
ffffffffc0207500:	f822                	sd	s0,48(sp)
ffffffffc0207502:	f426                	sd	s1,40(sp)
ffffffffc0207504:	f04a                	sd	s2,32(sp)
ffffffffc0207506:	ec4e                	sd	s3,24(sp)
ffffffffc0207508:	e852                	sd	s4,16(sp)
ffffffffc020750a:	e456                	sd	s5,8(sp)
ffffffffc020750c:	e05a                	sd	s6,0(sp)
ffffffffc020750e:	100027f3          	csrr	a5,sstatus
ffffffffc0207512:	8b89                	andi	a5,a5,2
ffffffffc0207514:	4b01                	li	s6,0
ffffffffc0207516:	efe9                	bnez	a5,ffffffffc02075f0 <run_timer_list+0xf4>
ffffffffc0207518:	0008e997          	auipc	s3,0x8e
ffffffffc020751c:	2d898993          	addi	s3,s3,728 # ffffffffc02957f0 <timer_list>
ffffffffc0207520:	0089b403          	ld	s0,8(s3)
ffffffffc0207524:	07340a63          	beq	s0,s3,ffffffffc0207598 <run_timer_list+0x9c>
ffffffffc0207528:	ff042783          	lw	a5,-16(s0)
ffffffffc020752c:	ff040913          	addi	s2,s0,-16
ffffffffc0207530:	0e078763          	beqz	a5,ffffffffc020761e <run_timer_list+0x122>
ffffffffc0207534:	fff7871b          	addiw	a4,a5,-1
ffffffffc0207538:	fee42823          	sw	a4,-16(s0)
ffffffffc020753c:	ef31                	bnez	a4,ffffffffc0207598 <run_timer_list+0x9c>
ffffffffc020753e:	00006a97          	auipc	s5,0x6
ffffffffc0207542:	5aaa8a93          	addi	s5,s5,1450 # ffffffffc020dae8 <CSWTCH.79+0x720>
ffffffffc0207546:	00006a17          	auipc	s4,0x6
ffffffffc020754a:	4d2a0a13          	addi	s4,s4,1234 # ffffffffc020da18 <CSWTCH.79+0x650>
ffffffffc020754e:	a005                	j	ffffffffc020756e <run_timer_list+0x72>
ffffffffc0207550:	0a07d763          	bgez	a5,ffffffffc02075fe <run_timer_list+0x102>
ffffffffc0207554:	8526                	mv	a0,s1
ffffffffc0207556:	ce9ff0ef          	jal	ra,ffffffffc020723e <wakeup_proc>
ffffffffc020755a:	854a                	mv	a0,s2
ffffffffc020755c:	f1dff0ef          	jal	ra,ffffffffc0207478 <del_timer>
ffffffffc0207560:	03340c63          	beq	s0,s3,ffffffffc0207598 <run_timer_list+0x9c>
ffffffffc0207564:	ff042783          	lw	a5,-16(s0)
ffffffffc0207568:	ff040913          	addi	s2,s0,-16
ffffffffc020756c:	e795                	bnez	a5,ffffffffc0207598 <run_timer_list+0x9c>
ffffffffc020756e:	00893483          	ld	s1,8(s2)
ffffffffc0207572:	6400                	ld	s0,8(s0)
ffffffffc0207574:	0ec4a783          	lw	a5,236(s1)
ffffffffc0207578:	ffe1                	bnez	a5,ffffffffc0207550 <run_timer_list+0x54>
ffffffffc020757a:	40d4                	lw	a3,4(s1)
ffffffffc020757c:	8656                	mv	a2,s5
ffffffffc020757e:	0ba00593          	li	a1,186
ffffffffc0207582:	8552                	mv	a0,s4
ffffffffc0207584:	f83f80ef          	jal	ra,ffffffffc0200506 <__warn>
ffffffffc0207588:	8526                	mv	a0,s1
ffffffffc020758a:	cb5ff0ef          	jal	ra,ffffffffc020723e <wakeup_proc>
ffffffffc020758e:	854a                	mv	a0,s2
ffffffffc0207590:	ee9ff0ef          	jal	ra,ffffffffc0207478 <del_timer>
ffffffffc0207594:	fd3418e3          	bne	s0,s3,ffffffffc0207564 <run_timer_list+0x68>
ffffffffc0207598:	0008f597          	auipc	a1,0x8f
ffffffffc020759c:	3285b583          	ld	a1,808(a1) # ffffffffc02968c0 <current>
ffffffffc02075a0:	c18d                	beqz	a1,ffffffffc02075c2 <run_timer_list+0xc6>
ffffffffc02075a2:	0008f797          	auipc	a5,0x8f
ffffffffc02075a6:	3267b783          	ld	a5,806(a5) # ffffffffc02968c8 <idleproc>
ffffffffc02075aa:	04f58763          	beq	a1,a5,ffffffffc02075f8 <run_timer_list+0xfc>
ffffffffc02075ae:	0008f797          	auipc	a5,0x8f
ffffffffc02075b2:	33a7b783          	ld	a5,826(a5) # ffffffffc02968e8 <sched_class>
ffffffffc02075b6:	779c                	ld	a5,40(a5)
ffffffffc02075b8:	0008f517          	auipc	a0,0x8f
ffffffffc02075bc:	32853503          	ld	a0,808(a0) # ffffffffc02968e0 <rq>
ffffffffc02075c0:	9782                	jalr	a5
ffffffffc02075c2:	000b1c63          	bnez	s6,ffffffffc02075da <run_timer_list+0xde>
ffffffffc02075c6:	70e2                	ld	ra,56(sp)
ffffffffc02075c8:	7442                	ld	s0,48(sp)
ffffffffc02075ca:	74a2                	ld	s1,40(sp)
ffffffffc02075cc:	7902                	ld	s2,32(sp)
ffffffffc02075ce:	69e2                	ld	s3,24(sp)
ffffffffc02075d0:	6a42                	ld	s4,16(sp)
ffffffffc02075d2:	6aa2                	ld	s5,8(sp)
ffffffffc02075d4:	6b02                	ld	s6,0(sp)
ffffffffc02075d6:	6121                	addi	sp,sp,64
ffffffffc02075d8:	8082                	ret
ffffffffc02075da:	7442                	ld	s0,48(sp)
ffffffffc02075dc:	70e2                	ld	ra,56(sp)
ffffffffc02075de:	74a2                	ld	s1,40(sp)
ffffffffc02075e0:	7902                	ld	s2,32(sp)
ffffffffc02075e2:	69e2                	ld	s3,24(sp)
ffffffffc02075e4:	6a42                	ld	s4,16(sp)
ffffffffc02075e6:	6aa2                	ld	s5,8(sp)
ffffffffc02075e8:	6b02                	ld	s6,0(sp)
ffffffffc02075ea:	6121                	addi	sp,sp,64
ffffffffc02075ec:	e80f906f          	j	ffffffffc0200c6c <intr_enable>
ffffffffc02075f0:	e82f90ef          	jal	ra,ffffffffc0200c72 <intr_disable>
ffffffffc02075f4:	4b05                	li	s6,1
ffffffffc02075f6:	b70d                	j	ffffffffc0207518 <run_timer_list+0x1c>
ffffffffc02075f8:	4785                	li	a5,1
ffffffffc02075fa:	ed9c                	sd	a5,24(a1)
ffffffffc02075fc:	b7d9                	j	ffffffffc02075c2 <run_timer_list+0xc6>
ffffffffc02075fe:	00006697          	auipc	a3,0x6
ffffffffc0207602:	4c268693          	addi	a3,a3,1218 # ffffffffc020dac0 <CSWTCH.79+0x6f8>
ffffffffc0207606:	00004617          	auipc	a2,0x4
ffffffffc020760a:	3b260613          	addi	a2,a2,946 # ffffffffc020b9b8 <commands+0x210>
ffffffffc020760e:	0b600593          	li	a1,182
ffffffffc0207612:	00006517          	auipc	a0,0x6
ffffffffc0207616:	40650513          	addi	a0,a0,1030 # ffffffffc020da18 <CSWTCH.79+0x650>
ffffffffc020761a:	e85f80ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc020761e:	00006697          	auipc	a3,0x6
ffffffffc0207622:	48a68693          	addi	a3,a3,1162 # ffffffffc020daa8 <CSWTCH.79+0x6e0>
ffffffffc0207626:	00004617          	auipc	a2,0x4
ffffffffc020762a:	39260613          	addi	a2,a2,914 # ffffffffc020b9b8 <commands+0x210>
ffffffffc020762e:	0ae00593          	li	a1,174
ffffffffc0207632:	00006517          	auipc	a0,0x6
ffffffffc0207636:	3e650513          	addi	a0,a0,998 # ffffffffc020da18 <CSWTCH.79+0x650>
ffffffffc020763a:	e65f80ef          	jal	ra,ffffffffc020049e <__panic>

ffffffffc020763e <sys_getpid>:
ffffffffc020763e:	0008f797          	auipc	a5,0x8f
ffffffffc0207642:	2827b783          	ld	a5,642(a5) # ffffffffc02968c0 <current>
ffffffffc0207646:	43c8                	lw	a0,4(a5)
ffffffffc0207648:	8082                	ret

ffffffffc020764a <sys_pgdir>:
ffffffffc020764a:	4501                	li	a0,0
ffffffffc020764c:	8082                	ret

ffffffffc020764e <sys_gettime>:
ffffffffc020764e:	0008f797          	auipc	a5,0x8f
ffffffffc0207652:	2227b783          	ld	a5,546(a5) # ffffffffc0296870 <ticks>
ffffffffc0207656:	0027951b          	slliw	a0,a5,0x2
ffffffffc020765a:	9d3d                	addw	a0,a0,a5
ffffffffc020765c:	0015151b          	slliw	a0,a0,0x1
ffffffffc0207660:	8082                	ret

ffffffffc0207662 <sys_lab6_set_priority>:
ffffffffc0207662:	4108                	lw	a0,0(a0)
ffffffffc0207664:	1141                	addi	sp,sp,-16
ffffffffc0207666:	e406                	sd	ra,8(sp)
ffffffffc0207668:	975ff0ef          	jal	ra,ffffffffc0206fdc <lab6_set_priority>
ffffffffc020766c:	60a2                	ld	ra,8(sp)
ffffffffc020766e:	4501                	li	a0,0
ffffffffc0207670:	0141                	addi	sp,sp,16
ffffffffc0207672:	8082                	ret

ffffffffc0207674 <sys_dup>:
ffffffffc0207674:	450c                	lw	a1,8(a0)
ffffffffc0207676:	4108                	lw	a0,0(a0)
ffffffffc0207678:	b50fe06f          	j	ffffffffc02059c8 <sysfile_dup>

ffffffffc020767c <sys_getdirentry>:
ffffffffc020767c:	650c                	ld	a1,8(a0)
ffffffffc020767e:	4108                	lw	a0,0(a0)
ffffffffc0207680:	a58fe06f          	j	ffffffffc02058d8 <sysfile_getdirentry>

ffffffffc0207684 <sys_getcwd>:
ffffffffc0207684:	650c                	ld	a1,8(a0)
ffffffffc0207686:	6108                	ld	a0,0(a0)
ffffffffc0207688:	9acfe06f          	j	ffffffffc0205834 <sysfile_getcwd>

ffffffffc020768c <sys_fsync>:
ffffffffc020768c:	4108                	lw	a0,0(a0)
ffffffffc020768e:	9a2fe06f          	j	ffffffffc0205830 <sysfile_fsync>

ffffffffc0207692 <sys_fstat>:
ffffffffc0207692:	650c                	ld	a1,8(a0)
ffffffffc0207694:	4108                	lw	a0,0(a0)
ffffffffc0207696:	8fafe06f          	j	ffffffffc0205790 <sysfile_fstat>

ffffffffc020769a <sys_seek>:
ffffffffc020769a:	4910                	lw	a2,16(a0)
ffffffffc020769c:	650c                	ld	a1,8(a0)
ffffffffc020769e:	4108                	lw	a0,0(a0)
ffffffffc02076a0:	8ecfe06f          	j	ffffffffc020578c <sysfile_seek>

ffffffffc02076a4 <sys_write>:
ffffffffc02076a4:	6910                	ld	a2,16(a0)
ffffffffc02076a6:	650c                	ld	a1,8(a0)
ffffffffc02076a8:	4108                	lw	a0,0(a0)
ffffffffc02076aa:	fc9fd06f          	j	ffffffffc0205672 <sysfile_write>

ffffffffc02076ae <sys_read>:
ffffffffc02076ae:	6910                	ld	a2,16(a0)
ffffffffc02076b0:	650c                	ld	a1,8(a0)
ffffffffc02076b2:	4108                	lw	a0,0(a0)
ffffffffc02076b4:	eabfd06f          	j	ffffffffc020555e <sysfile_read>

ffffffffc02076b8 <sys_close>:
ffffffffc02076b8:	4108                	lw	a0,0(a0)
ffffffffc02076ba:	ea1fd06f          	j	ffffffffc020555a <sysfile_close>

ffffffffc02076be <sys_open>:
ffffffffc02076be:	450c                	lw	a1,8(a0)
ffffffffc02076c0:	6108                	ld	a0,0(a0)
ffffffffc02076c2:	e65fd06f          	j	ffffffffc0205526 <sysfile_open>

ffffffffc02076c6 <sys_putc>:
ffffffffc02076c6:	4108                	lw	a0,0(a0)
ffffffffc02076c8:	1141                	addi	sp,sp,-16
ffffffffc02076ca:	e406                	sd	ra,8(sp)
ffffffffc02076cc:	b17f80ef          	jal	ra,ffffffffc02001e2 <cputchar>
ffffffffc02076d0:	60a2                	ld	ra,8(sp)
ffffffffc02076d2:	4501                	li	a0,0
ffffffffc02076d4:	0141                	addi	sp,sp,16
ffffffffc02076d6:	8082                	ret

ffffffffc02076d8 <sys_kill>:
ffffffffc02076d8:	4108                	lw	a0,0(a0)
ffffffffc02076da:	ea0ff06f          	j	ffffffffc0206d7a <do_kill>

ffffffffc02076de <sys_sleep>:
ffffffffc02076de:	4108                	lw	a0,0(a0)
ffffffffc02076e0:	937ff06f          	j	ffffffffc0207016 <do_sleep>

ffffffffc02076e4 <sys_yield>:
ffffffffc02076e4:	e48ff06f          	j	ffffffffc0206d2c <do_yield>

ffffffffc02076e8 <sys_exec>:
ffffffffc02076e8:	6910                	ld	a2,16(a0)
ffffffffc02076ea:	450c                	lw	a1,8(a0)
ffffffffc02076ec:	6108                	ld	a0,0(a0)
ffffffffc02076ee:	db3fe06f          	j	ffffffffc02064a0 <do_execve>

ffffffffc02076f2 <sys_wait>:
ffffffffc02076f2:	650c                	ld	a1,8(a0)
ffffffffc02076f4:	4108                	lw	a0,0(a0)
ffffffffc02076f6:	e46ff06f          	j	ffffffffc0206d3c <do_wait>

ffffffffc02076fa <sys_fork>:
ffffffffc02076fa:	0008f797          	auipc	a5,0x8f
ffffffffc02076fe:	1c67b783          	ld	a5,454(a5) # ffffffffc02968c0 <current>
ffffffffc0207702:	73d0                	ld	a2,160(a5)
ffffffffc0207704:	4501                	li	a0,0
ffffffffc0207706:	6a0c                	ld	a1,16(a2)
ffffffffc0207708:	cd6fe06f          	j	ffffffffc0205bde <do_fork>

ffffffffc020770c <sys_exit>:
ffffffffc020770c:	4108                	lw	a0,0(a0)
ffffffffc020770e:	90ffe06f          	j	ffffffffc020601c <do_exit>

ffffffffc0207712 <syscall>:
ffffffffc0207712:	715d                	addi	sp,sp,-80
ffffffffc0207714:	fc26                	sd	s1,56(sp)
ffffffffc0207716:	0008f497          	auipc	s1,0x8f
ffffffffc020771a:	1aa48493          	addi	s1,s1,426 # ffffffffc02968c0 <current>
ffffffffc020771e:	6098                	ld	a4,0(s1)
ffffffffc0207720:	e0a2                	sd	s0,64(sp)
ffffffffc0207722:	f84a                	sd	s2,48(sp)
ffffffffc0207724:	7340                	ld	s0,160(a4)
ffffffffc0207726:	e486                	sd	ra,72(sp)
ffffffffc0207728:	0ff00793          	li	a5,255
ffffffffc020772c:	05042903          	lw	s2,80(s0)
ffffffffc0207730:	0327ee63          	bltu	a5,s2,ffffffffc020776c <syscall+0x5a>
ffffffffc0207734:	00391713          	slli	a4,s2,0x3
ffffffffc0207738:	00006797          	auipc	a5,0x6
ffffffffc020773c:	41878793          	addi	a5,a5,1048 # ffffffffc020db50 <syscalls>
ffffffffc0207740:	97ba                	add	a5,a5,a4
ffffffffc0207742:	639c                	ld	a5,0(a5)
ffffffffc0207744:	c785                	beqz	a5,ffffffffc020776c <syscall+0x5a>
ffffffffc0207746:	6c28                	ld	a0,88(s0)
ffffffffc0207748:	702c                	ld	a1,96(s0)
ffffffffc020774a:	7430                	ld	a2,104(s0)
ffffffffc020774c:	7834                	ld	a3,112(s0)
ffffffffc020774e:	7c38                	ld	a4,120(s0)
ffffffffc0207750:	e42a                	sd	a0,8(sp)
ffffffffc0207752:	e82e                	sd	a1,16(sp)
ffffffffc0207754:	ec32                	sd	a2,24(sp)
ffffffffc0207756:	f036                	sd	a3,32(sp)
ffffffffc0207758:	f43a                	sd	a4,40(sp)
ffffffffc020775a:	0028                	addi	a0,sp,8
ffffffffc020775c:	9782                	jalr	a5
ffffffffc020775e:	60a6                	ld	ra,72(sp)
ffffffffc0207760:	e828                	sd	a0,80(s0)
ffffffffc0207762:	6406                	ld	s0,64(sp)
ffffffffc0207764:	74e2                	ld	s1,56(sp)
ffffffffc0207766:	7942                	ld	s2,48(sp)
ffffffffc0207768:	6161                	addi	sp,sp,80
ffffffffc020776a:	8082                	ret
ffffffffc020776c:	8522                	mv	a0,s0
ffffffffc020776e:	81df90ef          	jal	ra,ffffffffc0200f8a <print_trapframe>
ffffffffc0207772:	609c                	ld	a5,0(s1)
ffffffffc0207774:	86ca                	mv	a3,s2
ffffffffc0207776:	00006617          	auipc	a2,0x6
ffffffffc020777a:	39260613          	addi	a2,a2,914 # ffffffffc020db08 <CSWTCH.79+0x740>
ffffffffc020777e:	43d8                	lw	a4,4(a5)
ffffffffc0207780:	0d800593          	li	a1,216
ffffffffc0207784:	0b478793          	addi	a5,a5,180
ffffffffc0207788:	00006517          	auipc	a0,0x6
ffffffffc020778c:	3b050513          	addi	a0,a0,944 # ffffffffc020db38 <CSWTCH.79+0x770>
ffffffffc0207790:	d0ff80ef          	jal	ra,ffffffffc020049e <__panic>

ffffffffc0207794 <__alloc_inode>:
ffffffffc0207794:	1141                	addi	sp,sp,-16
ffffffffc0207796:	e022                	sd	s0,0(sp)
ffffffffc0207798:	842a                	mv	s0,a0
ffffffffc020779a:	07800513          	li	a0,120
ffffffffc020779e:	e406                	sd	ra,8(sp)
ffffffffc02077a0:	feefa0ef          	jal	ra,ffffffffc0201f8e <kmalloc>
ffffffffc02077a4:	c111                	beqz	a0,ffffffffc02077a8 <__alloc_inode+0x14>
ffffffffc02077a6:	cd20                	sw	s0,88(a0)
ffffffffc02077a8:	60a2                	ld	ra,8(sp)
ffffffffc02077aa:	6402                	ld	s0,0(sp)
ffffffffc02077ac:	0141                	addi	sp,sp,16
ffffffffc02077ae:	8082                	ret

ffffffffc02077b0 <inode_init>:
ffffffffc02077b0:	4785                	li	a5,1
ffffffffc02077b2:	06052023          	sw	zero,96(a0)
ffffffffc02077b6:	f92c                	sd	a1,112(a0)
ffffffffc02077b8:	f530                	sd	a2,104(a0)
ffffffffc02077ba:	cd7c                	sw	a5,92(a0)
ffffffffc02077bc:	8082                	ret

ffffffffc02077be <inode_kill>:
ffffffffc02077be:	4d78                	lw	a4,92(a0)
ffffffffc02077c0:	1141                	addi	sp,sp,-16
ffffffffc02077c2:	e406                	sd	ra,8(sp)
ffffffffc02077c4:	e719                	bnez	a4,ffffffffc02077d2 <inode_kill+0x14>
ffffffffc02077c6:	513c                	lw	a5,96(a0)
ffffffffc02077c8:	e78d                	bnez	a5,ffffffffc02077f2 <inode_kill+0x34>
ffffffffc02077ca:	60a2                	ld	ra,8(sp)
ffffffffc02077cc:	0141                	addi	sp,sp,16
ffffffffc02077ce:	871fa06f          	j	ffffffffc020203e <kfree>
ffffffffc02077d2:	00007697          	auipc	a3,0x7
ffffffffc02077d6:	b7e68693          	addi	a3,a3,-1154 # ffffffffc020e350 <syscalls+0x800>
ffffffffc02077da:	00004617          	auipc	a2,0x4
ffffffffc02077de:	1de60613          	addi	a2,a2,478 # ffffffffc020b9b8 <commands+0x210>
ffffffffc02077e2:	02900593          	li	a1,41
ffffffffc02077e6:	00007517          	auipc	a0,0x7
ffffffffc02077ea:	b8a50513          	addi	a0,a0,-1142 # ffffffffc020e370 <syscalls+0x820>
ffffffffc02077ee:	cb1f80ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc02077f2:	00007697          	auipc	a3,0x7
ffffffffc02077f6:	b9668693          	addi	a3,a3,-1130 # ffffffffc020e388 <syscalls+0x838>
ffffffffc02077fa:	00004617          	auipc	a2,0x4
ffffffffc02077fe:	1be60613          	addi	a2,a2,446 # ffffffffc020b9b8 <commands+0x210>
ffffffffc0207802:	02a00593          	li	a1,42
ffffffffc0207806:	00007517          	auipc	a0,0x7
ffffffffc020780a:	b6a50513          	addi	a0,a0,-1174 # ffffffffc020e370 <syscalls+0x820>
ffffffffc020780e:	c91f80ef          	jal	ra,ffffffffc020049e <__panic>

ffffffffc0207812 <inode_ref_inc>:
ffffffffc0207812:	4d7c                	lw	a5,92(a0)
ffffffffc0207814:	2785                	addiw	a5,a5,1
ffffffffc0207816:	cd7c                	sw	a5,92(a0)
ffffffffc0207818:	0007851b          	sext.w	a0,a5
ffffffffc020781c:	8082                	ret

ffffffffc020781e <inode_open_inc>:
ffffffffc020781e:	513c                	lw	a5,96(a0)
ffffffffc0207820:	2785                	addiw	a5,a5,1
ffffffffc0207822:	d13c                	sw	a5,96(a0)
ffffffffc0207824:	0007851b          	sext.w	a0,a5
ffffffffc0207828:	8082                	ret

ffffffffc020782a <inode_check>:
ffffffffc020782a:	1141                	addi	sp,sp,-16
ffffffffc020782c:	e406                	sd	ra,8(sp)
ffffffffc020782e:	c90d                	beqz	a0,ffffffffc0207860 <inode_check+0x36>
ffffffffc0207830:	793c                	ld	a5,112(a0)
ffffffffc0207832:	c79d                	beqz	a5,ffffffffc0207860 <inode_check+0x36>
ffffffffc0207834:	6398                	ld	a4,0(a5)
ffffffffc0207836:	4625d7b7          	lui	a5,0x4625d
ffffffffc020783a:	0786                	slli	a5,a5,0x1
ffffffffc020783c:	47678793          	addi	a5,a5,1142 # 4625d476 <_binary_bin_sfs_img_size+0x461e8176>
ffffffffc0207840:	08f71063          	bne	a4,a5,ffffffffc02078c0 <inode_check+0x96>
ffffffffc0207844:	4d78                	lw	a4,92(a0)
ffffffffc0207846:	513c                	lw	a5,96(a0)
ffffffffc0207848:	04f74c63          	blt	a4,a5,ffffffffc02078a0 <inode_check+0x76>
ffffffffc020784c:	0407ca63          	bltz	a5,ffffffffc02078a0 <inode_check+0x76>
ffffffffc0207850:	66c1                	lui	a3,0x10
ffffffffc0207852:	02d75763          	bge	a4,a3,ffffffffc0207880 <inode_check+0x56>
ffffffffc0207856:	02d7d563          	bge	a5,a3,ffffffffc0207880 <inode_check+0x56>
ffffffffc020785a:	60a2                	ld	ra,8(sp)
ffffffffc020785c:	0141                	addi	sp,sp,16
ffffffffc020785e:	8082                	ret
ffffffffc0207860:	00007697          	auipc	a3,0x7
ffffffffc0207864:	b4868693          	addi	a3,a3,-1208 # ffffffffc020e3a8 <syscalls+0x858>
ffffffffc0207868:	00004617          	auipc	a2,0x4
ffffffffc020786c:	15060613          	addi	a2,a2,336 # ffffffffc020b9b8 <commands+0x210>
ffffffffc0207870:	06e00593          	li	a1,110
ffffffffc0207874:	00007517          	auipc	a0,0x7
ffffffffc0207878:	afc50513          	addi	a0,a0,-1284 # ffffffffc020e370 <syscalls+0x820>
ffffffffc020787c:	c23f80ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc0207880:	00007697          	auipc	a3,0x7
ffffffffc0207884:	ba868693          	addi	a3,a3,-1112 # ffffffffc020e428 <syscalls+0x8d8>
ffffffffc0207888:	00004617          	auipc	a2,0x4
ffffffffc020788c:	13060613          	addi	a2,a2,304 # ffffffffc020b9b8 <commands+0x210>
ffffffffc0207890:	07200593          	li	a1,114
ffffffffc0207894:	00007517          	auipc	a0,0x7
ffffffffc0207898:	adc50513          	addi	a0,a0,-1316 # ffffffffc020e370 <syscalls+0x820>
ffffffffc020789c:	c03f80ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc02078a0:	00007697          	auipc	a3,0x7
ffffffffc02078a4:	b5868693          	addi	a3,a3,-1192 # ffffffffc020e3f8 <syscalls+0x8a8>
ffffffffc02078a8:	00004617          	auipc	a2,0x4
ffffffffc02078ac:	11060613          	addi	a2,a2,272 # ffffffffc020b9b8 <commands+0x210>
ffffffffc02078b0:	07100593          	li	a1,113
ffffffffc02078b4:	00007517          	auipc	a0,0x7
ffffffffc02078b8:	abc50513          	addi	a0,a0,-1348 # ffffffffc020e370 <syscalls+0x820>
ffffffffc02078bc:	be3f80ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc02078c0:	00007697          	auipc	a3,0x7
ffffffffc02078c4:	b1068693          	addi	a3,a3,-1264 # ffffffffc020e3d0 <syscalls+0x880>
ffffffffc02078c8:	00004617          	auipc	a2,0x4
ffffffffc02078cc:	0f060613          	addi	a2,a2,240 # ffffffffc020b9b8 <commands+0x210>
ffffffffc02078d0:	06f00593          	li	a1,111
ffffffffc02078d4:	00007517          	auipc	a0,0x7
ffffffffc02078d8:	a9c50513          	addi	a0,a0,-1380 # ffffffffc020e370 <syscalls+0x820>
ffffffffc02078dc:	bc3f80ef          	jal	ra,ffffffffc020049e <__panic>

ffffffffc02078e0 <inode_ref_dec>:
ffffffffc02078e0:	4d7c                	lw	a5,92(a0)
ffffffffc02078e2:	1101                	addi	sp,sp,-32
ffffffffc02078e4:	ec06                	sd	ra,24(sp)
ffffffffc02078e6:	e822                	sd	s0,16(sp)
ffffffffc02078e8:	e426                	sd	s1,8(sp)
ffffffffc02078ea:	e04a                	sd	s2,0(sp)
ffffffffc02078ec:	06f05e63          	blez	a5,ffffffffc0207968 <inode_ref_dec+0x88>
ffffffffc02078f0:	fff7849b          	addiw	s1,a5,-1
ffffffffc02078f4:	cd64                	sw	s1,92(a0)
ffffffffc02078f6:	842a                	mv	s0,a0
ffffffffc02078f8:	e09d                	bnez	s1,ffffffffc020791e <inode_ref_dec+0x3e>
ffffffffc02078fa:	793c                	ld	a5,112(a0)
ffffffffc02078fc:	c7b1                	beqz	a5,ffffffffc0207948 <inode_ref_dec+0x68>
ffffffffc02078fe:	0487b903          	ld	s2,72(a5)
ffffffffc0207902:	04090363          	beqz	s2,ffffffffc0207948 <inode_ref_dec+0x68>
ffffffffc0207906:	00007597          	auipc	a1,0x7
ffffffffc020790a:	bd258593          	addi	a1,a1,-1070 # ffffffffc020e4d8 <syscalls+0x988>
ffffffffc020790e:	f1dff0ef          	jal	ra,ffffffffc020782a <inode_check>
ffffffffc0207912:	8522                	mv	a0,s0
ffffffffc0207914:	9902                	jalr	s2
ffffffffc0207916:	c501                	beqz	a0,ffffffffc020791e <inode_ref_dec+0x3e>
ffffffffc0207918:	57c5                	li	a5,-15
ffffffffc020791a:	00f51963          	bne	a0,a5,ffffffffc020792c <inode_ref_dec+0x4c>
ffffffffc020791e:	60e2                	ld	ra,24(sp)
ffffffffc0207920:	6442                	ld	s0,16(sp)
ffffffffc0207922:	6902                	ld	s2,0(sp)
ffffffffc0207924:	8526                	mv	a0,s1
ffffffffc0207926:	64a2                	ld	s1,8(sp)
ffffffffc0207928:	6105                	addi	sp,sp,32
ffffffffc020792a:	8082                	ret
ffffffffc020792c:	85aa                	mv	a1,a0
ffffffffc020792e:	00007517          	auipc	a0,0x7
ffffffffc0207932:	bb250513          	addi	a0,a0,-1102 # ffffffffc020e4e0 <syscalls+0x990>
ffffffffc0207936:	871f80ef          	jal	ra,ffffffffc02001a6 <cprintf>
ffffffffc020793a:	60e2                	ld	ra,24(sp)
ffffffffc020793c:	6442                	ld	s0,16(sp)
ffffffffc020793e:	6902                	ld	s2,0(sp)
ffffffffc0207940:	8526                	mv	a0,s1
ffffffffc0207942:	64a2                	ld	s1,8(sp)
ffffffffc0207944:	6105                	addi	sp,sp,32
ffffffffc0207946:	8082                	ret
ffffffffc0207948:	00007697          	auipc	a3,0x7
ffffffffc020794c:	b4068693          	addi	a3,a3,-1216 # ffffffffc020e488 <syscalls+0x938>
ffffffffc0207950:	00004617          	auipc	a2,0x4
ffffffffc0207954:	06860613          	addi	a2,a2,104 # ffffffffc020b9b8 <commands+0x210>
ffffffffc0207958:	04400593          	li	a1,68
ffffffffc020795c:	00007517          	auipc	a0,0x7
ffffffffc0207960:	a1450513          	addi	a0,a0,-1516 # ffffffffc020e370 <syscalls+0x820>
ffffffffc0207964:	b3bf80ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc0207968:	00007697          	auipc	a3,0x7
ffffffffc020796c:	b0068693          	addi	a3,a3,-1280 # ffffffffc020e468 <syscalls+0x918>
ffffffffc0207970:	00004617          	auipc	a2,0x4
ffffffffc0207974:	04860613          	addi	a2,a2,72 # ffffffffc020b9b8 <commands+0x210>
ffffffffc0207978:	03f00593          	li	a1,63
ffffffffc020797c:	00007517          	auipc	a0,0x7
ffffffffc0207980:	9f450513          	addi	a0,a0,-1548 # ffffffffc020e370 <syscalls+0x820>
ffffffffc0207984:	b1bf80ef          	jal	ra,ffffffffc020049e <__panic>

ffffffffc0207988 <inode_open_dec>:
ffffffffc0207988:	513c                	lw	a5,96(a0)
ffffffffc020798a:	1101                	addi	sp,sp,-32
ffffffffc020798c:	ec06                	sd	ra,24(sp)
ffffffffc020798e:	e822                	sd	s0,16(sp)
ffffffffc0207990:	e426                	sd	s1,8(sp)
ffffffffc0207992:	e04a                	sd	s2,0(sp)
ffffffffc0207994:	06f05b63          	blez	a5,ffffffffc0207a0a <inode_open_dec+0x82>
ffffffffc0207998:	fff7849b          	addiw	s1,a5,-1
ffffffffc020799c:	d124                	sw	s1,96(a0)
ffffffffc020799e:	842a                	mv	s0,a0
ffffffffc02079a0:	e085                	bnez	s1,ffffffffc02079c0 <inode_open_dec+0x38>
ffffffffc02079a2:	793c                	ld	a5,112(a0)
ffffffffc02079a4:	c3b9                	beqz	a5,ffffffffc02079ea <inode_open_dec+0x62>
ffffffffc02079a6:	0107b903          	ld	s2,16(a5)
ffffffffc02079aa:	04090063          	beqz	s2,ffffffffc02079ea <inode_open_dec+0x62>
ffffffffc02079ae:	00007597          	auipc	a1,0x7
ffffffffc02079b2:	bc258593          	addi	a1,a1,-1086 # ffffffffc020e570 <syscalls+0xa20>
ffffffffc02079b6:	e75ff0ef          	jal	ra,ffffffffc020782a <inode_check>
ffffffffc02079ba:	8522                	mv	a0,s0
ffffffffc02079bc:	9902                	jalr	s2
ffffffffc02079be:	e901                	bnez	a0,ffffffffc02079ce <inode_open_dec+0x46>
ffffffffc02079c0:	60e2                	ld	ra,24(sp)
ffffffffc02079c2:	6442                	ld	s0,16(sp)
ffffffffc02079c4:	6902                	ld	s2,0(sp)
ffffffffc02079c6:	8526                	mv	a0,s1
ffffffffc02079c8:	64a2                	ld	s1,8(sp)
ffffffffc02079ca:	6105                	addi	sp,sp,32
ffffffffc02079cc:	8082                	ret
ffffffffc02079ce:	85aa                	mv	a1,a0
ffffffffc02079d0:	00007517          	auipc	a0,0x7
ffffffffc02079d4:	ba850513          	addi	a0,a0,-1112 # ffffffffc020e578 <syscalls+0xa28>
ffffffffc02079d8:	fcef80ef          	jal	ra,ffffffffc02001a6 <cprintf>
ffffffffc02079dc:	60e2                	ld	ra,24(sp)
ffffffffc02079de:	6442                	ld	s0,16(sp)
ffffffffc02079e0:	6902                	ld	s2,0(sp)
ffffffffc02079e2:	8526                	mv	a0,s1
ffffffffc02079e4:	64a2                	ld	s1,8(sp)
ffffffffc02079e6:	6105                	addi	sp,sp,32
ffffffffc02079e8:	8082                	ret
ffffffffc02079ea:	00007697          	auipc	a3,0x7
ffffffffc02079ee:	b3668693          	addi	a3,a3,-1226 # ffffffffc020e520 <syscalls+0x9d0>
ffffffffc02079f2:	00004617          	auipc	a2,0x4
ffffffffc02079f6:	fc660613          	addi	a2,a2,-58 # ffffffffc020b9b8 <commands+0x210>
ffffffffc02079fa:	06100593          	li	a1,97
ffffffffc02079fe:	00007517          	auipc	a0,0x7
ffffffffc0207a02:	97250513          	addi	a0,a0,-1678 # ffffffffc020e370 <syscalls+0x820>
ffffffffc0207a06:	a99f80ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc0207a0a:	00007697          	auipc	a3,0x7
ffffffffc0207a0e:	af668693          	addi	a3,a3,-1290 # ffffffffc020e500 <syscalls+0x9b0>
ffffffffc0207a12:	00004617          	auipc	a2,0x4
ffffffffc0207a16:	fa660613          	addi	a2,a2,-90 # ffffffffc020b9b8 <commands+0x210>
ffffffffc0207a1a:	05c00593          	li	a1,92
ffffffffc0207a1e:	00007517          	auipc	a0,0x7
ffffffffc0207a22:	95250513          	addi	a0,a0,-1710 # ffffffffc020e370 <syscalls+0x820>
ffffffffc0207a26:	a79f80ef          	jal	ra,ffffffffc020049e <__panic>

ffffffffc0207a2a <__alloc_fs>:
ffffffffc0207a2a:	1141                	addi	sp,sp,-16
ffffffffc0207a2c:	e022                	sd	s0,0(sp)
ffffffffc0207a2e:	842a                	mv	s0,a0
ffffffffc0207a30:	0d800513          	li	a0,216
ffffffffc0207a34:	e406                	sd	ra,8(sp)
ffffffffc0207a36:	d58fa0ef          	jal	ra,ffffffffc0201f8e <kmalloc>
ffffffffc0207a3a:	c119                	beqz	a0,ffffffffc0207a40 <__alloc_fs+0x16>
ffffffffc0207a3c:	0a852823          	sw	s0,176(a0)
ffffffffc0207a40:	60a2                	ld	ra,8(sp)
ffffffffc0207a42:	6402                	ld	s0,0(sp)
ffffffffc0207a44:	0141                	addi	sp,sp,16
ffffffffc0207a46:	8082                	ret

ffffffffc0207a48 <vfs_init>:
ffffffffc0207a48:	1141                	addi	sp,sp,-16
ffffffffc0207a4a:	4585                	li	a1,1
ffffffffc0207a4c:	0008e517          	auipc	a0,0x8e
ffffffffc0207a50:	db450513          	addi	a0,a0,-588 # ffffffffc0295800 <bootfs_sem>
ffffffffc0207a54:	e406                	sd	ra,8(sp)
ffffffffc0207a56:	b05fc0ef          	jal	ra,ffffffffc020455a <sem_init>
ffffffffc0207a5a:	60a2                	ld	ra,8(sp)
ffffffffc0207a5c:	0141                	addi	sp,sp,16
ffffffffc0207a5e:	a40d                	j	ffffffffc0207c80 <vfs_devlist_init>

ffffffffc0207a60 <vfs_set_bootfs>:
ffffffffc0207a60:	7179                	addi	sp,sp,-48
ffffffffc0207a62:	f022                	sd	s0,32(sp)
ffffffffc0207a64:	f406                	sd	ra,40(sp)
ffffffffc0207a66:	ec26                	sd	s1,24(sp)
ffffffffc0207a68:	e402                	sd	zero,8(sp)
ffffffffc0207a6a:	842a                	mv	s0,a0
ffffffffc0207a6c:	c915                	beqz	a0,ffffffffc0207aa0 <vfs_set_bootfs+0x40>
ffffffffc0207a6e:	03a00593          	li	a1,58
ffffffffc0207a72:	24d030ef          	jal	ra,ffffffffc020b4be <strchr>
ffffffffc0207a76:	c135                	beqz	a0,ffffffffc0207ada <vfs_set_bootfs+0x7a>
ffffffffc0207a78:	00154783          	lbu	a5,1(a0)
ffffffffc0207a7c:	efb9                	bnez	a5,ffffffffc0207ada <vfs_set_bootfs+0x7a>
ffffffffc0207a7e:	8522                	mv	a0,s0
ffffffffc0207a80:	11f000ef          	jal	ra,ffffffffc020839e <vfs_chdir>
ffffffffc0207a84:	842a                	mv	s0,a0
ffffffffc0207a86:	c519                	beqz	a0,ffffffffc0207a94 <vfs_set_bootfs+0x34>
ffffffffc0207a88:	70a2                	ld	ra,40(sp)
ffffffffc0207a8a:	8522                	mv	a0,s0
ffffffffc0207a8c:	7402                	ld	s0,32(sp)
ffffffffc0207a8e:	64e2                	ld	s1,24(sp)
ffffffffc0207a90:	6145                	addi	sp,sp,48
ffffffffc0207a92:	8082                	ret
ffffffffc0207a94:	0028                	addi	a0,sp,8
ffffffffc0207a96:	013000ef          	jal	ra,ffffffffc02082a8 <vfs_get_curdir>
ffffffffc0207a9a:	842a                	mv	s0,a0
ffffffffc0207a9c:	f575                	bnez	a0,ffffffffc0207a88 <vfs_set_bootfs+0x28>
ffffffffc0207a9e:	6422                	ld	s0,8(sp)
ffffffffc0207aa0:	0008e517          	auipc	a0,0x8e
ffffffffc0207aa4:	d6050513          	addi	a0,a0,-672 # ffffffffc0295800 <bootfs_sem>
ffffffffc0207aa8:	abdfc0ef          	jal	ra,ffffffffc0204564 <down>
ffffffffc0207aac:	0008f797          	auipc	a5,0x8f
ffffffffc0207ab0:	e4478793          	addi	a5,a5,-444 # ffffffffc02968f0 <bootfs_node>
ffffffffc0207ab4:	6384                	ld	s1,0(a5)
ffffffffc0207ab6:	0008e517          	auipc	a0,0x8e
ffffffffc0207aba:	d4a50513          	addi	a0,a0,-694 # ffffffffc0295800 <bootfs_sem>
ffffffffc0207abe:	e380                	sd	s0,0(a5)
ffffffffc0207ac0:	4401                	li	s0,0
ffffffffc0207ac2:	a9ffc0ef          	jal	ra,ffffffffc0204560 <up>
ffffffffc0207ac6:	d0e9                	beqz	s1,ffffffffc0207a88 <vfs_set_bootfs+0x28>
ffffffffc0207ac8:	8526                	mv	a0,s1
ffffffffc0207aca:	e17ff0ef          	jal	ra,ffffffffc02078e0 <inode_ref_dec>
ffffffffc0207ace:	70a2                	ld	ra,40(sp)
ffffffffc0207ad0:	8522                	mv	a0,s0
ffffffffc0207ad2:	7402                	ld	s0,32(sp)
ffffffffc0207ad4:	64e2                	ld	s1,24(sp)
ffffffffc0207ad6:	6145                	addi	sp,sp,48
ffffffffc0207ad8:	8082                	ret
ffffffffc0207ada:	5475                	li	s0,-3
ffffffffc0207adc:	b775                	j	ffffffffc0207a88 <vfs_set_bootfs+0x28>

ffffffffc0207ade <vfs_get_bootfs>:
ffffffffc0207ade:	1101                	addi	sp,sp,-32
ffffffffc0207ae0:	e426                	sd	s1,8(sp)
ffffffffc0207ae2:	0008f497          	auipc	s1,0x8f
ffffffffc0207ae6:	e0e48493          	addi	s1,s1,-498 # ffffffffc02968f0 <bootfs_node>
ffffffffc0207aea:	609c                	ld	a5,0(s1)
ffffffffc0207aec:	ec06                	sd	ra,24(sp)
ffffffffc0207aee:	e822                	sd	s0,16(sp)
ffffffffc0207af0:	c3a1                	beqz	a5,ffffffffc0207b30 <vfs_get_bootfs+0x52>
ffffffffc0207af2:	842a                	mv	s0,a0
ffffffffc0207af4:	0008e517          	auipc	a0,0x8e
ffffffffc0207af8:	d0c50513          	addi	a0,a0,-756 # ffffffffc0295800 <bootfs_sem>
ffffffffc0207afc:	a69fc0ef          	jal	ra,ffffffffc0204564 <down>
ffffffffc0207b00:	6084                	ld	s1,0(s1)
ffffffffc0207b02:	c08d                	beqz	s1,ffffffffc0207b24 <vfs_get_bootfs+0x46>
ffffffffc0207b04:	8526                	mv	a0,s1
ffffffffc0207b06:	d0dff0ef          	jal	ra,ffffffffc0207812 <inode_ref_inc>
ffffffffc0207b0a:	0008e517          	auipc	a0,0x8e
ffffffffc0207b0e:	cf650513          	addi	a0,a0,-778 # ffffffffc0295800 <bootfs_sem>
ffffffffc0207b12:	a4ffc0ef          	jal	ra,ffffffffc0204560 <up>
ffffffffc0207b16:	4501                	li	a0,0
ffffffffc0207b18:	e004                	sd	s1,0(s0)
ffffffffc0207b1a:	60e2                	ld	ra,24(sp)
ffffffffc0207b1c:	6442                	ld	s0,16(sp)
ffffffffc0207b1e:	64a2                	ld	s1,8(sp)
ffffffffc0207b20:	6105                	addi	sp,sp,32
ffffffffc0207b22:	8082                	ret
ffffffffc0207b24:	0008e517          	auipc	a0,0x8e
ffffffffc0207b28:	cdc50513          	addi	a0,a0,-804 # ffffffffc0295800 <bootfs_sem>
ffffffffc0207b2c:	a35fc0ef          	jal	ra,ffffffffc0204560 <up>
ffffffffc0207b30:	5541                	li	a0,-16
ffffffffc0207b32:	b7e5                	j	ffffffffc0207b1a <vfs_get_bootfs+0x3c>

ffffffffc0207b34 <vfs_do_add>:
ffffffffc0207b34:	7139                	addi	sp,sp,-64
ffffffffc0207b36:	fc06                	sd	ra,56(sp)
ffffffffc0207b38:	f822                	sd	s0,48(sp)
ffffffffc0207b3a:	f426                	sd	s1,40(sp)
ffffffffc0207b3c:	f04a                	sd	s2,32(sp)
ffffffffc0207b3e:	ec4e                	sd	s3,24(sp)
ffffffffc0207b40:	e852                	sd	s4,16(sp)
ffffffffc0207b42:	e456                	sd	s5,8(sp)
ffffffffc0207b44:	e05a                	sd	s6,0(sp)
ffffffffc0207b46:	0e050b63          	beqz	a0,ffffffffc0207c3c <vfs_do_add+0x108>
ffffffffc0207b4a:	842a                	mv	s0,a0
ffffffffc0207b4c:	8a2e                	mv	s4,a1
ffffffffc0207b4e:	8b32                	mv	s6,a2
ffffffffc0207b50:	8ab6                	mv	s5,a3
ffffffffc0207b52:	c5cd                	beqz	a1,ffffffffc0207bfc <vfs_do_add+0xc8>
ffffffffc0207b54:	4db8                	lw	a4,88(a1)
ffffffffc0207b56:	6785                	lui	a5,0x1
ffffffffc0207b58:	23478793          	addi	a5,a5,564 # 1234 <_binary_bin_swap_img_size-0x6acc>
ffffffffc0207b5c:	0af71163          	bne	a4,a5,ffffffffc0207bfe <vfs_do_add+0xca>
ffffffffc0207b60:	8522                	mv	a0,s0
ffffffffc0207b62:	0d1030ef          	jal	ra,ffffffffc020b432 <strlen>
ffffffffc0207b66:	47fd                	li	a5,31
ffffffffc0207b68:	0ca7e663          	bltu	a5,a0,ffffffffc0207c34 <vfs_do_add+0x100>
ffffffffc0207b6c:	8522                	mv	a0,s0
ffffffffc0207b6e:	e86f80ef          	jal	ra,ffffffffc02001f4 <strdup>
ffffffffc0207b72:	84aa                	mv	s1,a0
ffffffffc0207b74:	c171                	beqz	a0,ffffffffc0207c38 <vfs_do_add+0x104>
ffffffffc0207b76:	03000513          	li	a0,48
ffffffffc0207b7a:	c14fa0ef          	jal	ra,ffffffffc0201f8e <kmalloc>
ffffffffc0207b7e:	89aa                	mv	s3,a0
ffffffffc0207b80:	c92d                	beqz	a0,ffffffffc0207bf2 <vfs_do_add+0xbe>
ffffffffc0207b82:	0008e517          	auipc	a0,0x8e
ffffffffc0207b86:	ca650513          	addi	a0,a0,-858 # ffffffffc0295828 <vdev_list_sem>
ffffffffc0207b8a:	0008e917          	auipc	s2,0x8e
ffffffffc0207b8e:	c8e90913          	addi	s2,s2,-882 # ffffffffc0295818 <vdev_list>
ffffffffc0207b92:	9d3fc0ef          	jal	ra,ffffffffc0204564 <down>
ffffffffc0207b96:	844a                	mv	s0,s2
ffffffffc0207b98:	a039                	j	ffffffffc0207ba6 <vfs_do_add+0x72>
ffffffffc0207b9a:	fe043503          	ld	a0,-32(s0)
ffffffffc0207b9e:	85a6                	mv	a1,s1
ffffffffc0207ba0:	0db030ef          	jal	ra,ffffffffc020b47a <strcmp>
ffffffffc0207ba4:	cd2d                	beqz	a0,ffffffffc0207c1e <vfs_do_add+0xea>
ffffffffc0207ba6:	6400                	ld	s0,8(s0)
ffffffffc0207ba8:	ff2419e3          	bne	s0,s2,ffffffffc0207b9a <vfs_do_add+0x66>
ffffffffc0207bac:	6418                	ld	a4,8(s0)
ffffffffc0207bae:	02098793          	addi	a5,s3,32
ffffffffc0207bb2:	0099b023          	sd	s1,0(s3)
ffffffffc0207bb6:	0149b423          	sd	s4,8(s3)
ffffffffc0207bba:	0159bc23          	sd	s5,24(s3)
ffffffffc0207bbe:	0169b823          	sd	s6,16(s3)
ffffffffc0207bc2:	e31c                	sd	a5,0(a4)
ffffffffc0207bc4:	0289b023          	sd	s0,32(s3)
ffffffffc0207bc8:	02e9b423          	sd	a4,40(s3)
ffffffffc0207bcc:	0008e517          	auipc	a0,0x8e
ffffffffc0207bd0:	c5c50513          	addi	a0,a0,-932 # ffffffffc0295828 <vdev_list_sem>
ffffffffc0207bd4:	e41c                	sd	a5,8(s0)
ffffffffc0207bd6:	4401                	li	s0,0
ffffffffc0207bd8:	989fc0ef          	jal	ra,ffffffffc0204560 <up>
ffffffffc0207bdc:	70e2                	ld	ra,56(sp)
ffffffffc0207bde:	8522                	mv	a0,s0
ffffffffc0207be0:	7442                	ld	s0,48(sp)
ffffffffc0207be2:	74a2                	ld	s1,40(sp)
ffffffffc0207be4:	7902                	ld	s2,32(sp)
ffffffffc0207be6:	69e2                	ld	s3,24(sp)
ffffffffc0207be8:	6a42                	ld	s4,16(sp)
ffffffffc0207bea:	6aa2                	ld	s5,8(sp)
ffffffffc0207bec:	6b02                	ld	s6,0(sp)
ffffffffc0207bee:	6121                	addi	sp,sp,64
ffffffffc0207bf0:	8082                	ret
ffffffffc0207bf2:	5471                	li	s0,-4
ffffffffc0207bf4:	8526                	mv	a0,s1
ffffffffc0207bf6:	c48fa0ef          	jal	ra,ffffffffc020203e <kfree>
ffffffffc0207bfa:	b7cd                	j	ffffffffc0207bdc <vfs_do_add+0xa8>
ffffffffc0207bfc:	d2b5                	beqz	a3,ffffffffc0207b60 <vfs_do_add+0x2c>
ffffffffc0207bfe:	00007697          	auipc	a3,0x7
ffffffffc0207c02:	9c268693          	addi	a3,a3,-1598 # ffffffffc020e5c0 <syscalls+0xa70>
ffffffffc0207c06:	00004617          	auipc	a2,0x4
ffffffffc0207c0a:	db260613          	addi	a2,a2,-590 # ffffffffc020b9b8 <commands+0x210>
ffffffffc0207c0e:	08f00593          	li	a1,143
ffffffffc0207c12:	00007517          	auipc	a0,0x7
ffffffffc0207c16:	99650513          	addi	a0,a0,-1642 # ffffffffc020e5a8 <syscalls+0xa58>
ffffffffc0207c1a:	885f80ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc0207c1e:	0008e517          	auipc	a0,0x8e
ffffffffc0207c22:	c0a50513          	addi	a0,a0,-1014 # ffffffffc0295828 <vdev_list_sem>
ffffffffc0207c26:	93bfc0ef          	jal	ra,ffffffffc0204560 <up>
ffffffffc0207c2a:	854e                	mv	a0,s3
ffffffffc0207c2c:	c12fa0ef          	jal	ra,ffffffffc020203e <kfree>
ffffffffc0207c30:	5425                	li	s0,-23
ffffffffc0207c32:	b7c9                	j	ffffffffc0207bf4 <vfs_do_add+0xc0>
ffffffffc0207c34:	5451                	li	s0,-12
ffffffffc0207c36:	b75d                	j	ffffffffc0207bdc <vfs_do_add+0xa8>
ffffffffc0207c38:	5471                	li	s0,-4
ffffffffc0207c3a:	b74d                	j	ffffffffc0207bdc <vfs_do_add+0xa8>
ffffffffc0207c3c:	00007697          	auipc	a3,0x7
ffffffffc0207c40:	95c68693          	addi	a3,a3,-1700 # ffffffffc020e598 <syscalls+0xa48>
ffffffffc0207c44:	00004617          	auipc	a2,0x4
ffffffffc0207c48:	d7460613          	addi	a2,a2,-652 # ffffffffc020b9b8 <commands+0x210>
ffffffffc0207c4c:	08e00593          	li	a1,142
ffffffffc0207c50:	00007517          	auipc	a0,0x7
ffffffffc0207c54:	95850513          	addi	a0,a0,-1704 # ffffffffc020e5a8 <syscalls+0xa58>
ffffffffc0207c58:	847f80ef          	jal	ra,ffffffffc020049e <__panic>

ffffffffc0207c5c <find_mount.part.0>:
ffffffffc0207c5c:	1141                	addi	sp,sp,-16
ffffffffc0207c5e:	00007697          	auipc	a3,0x7
ffffffffc0207c62:	93a68693          	addi	a3,a3,-1734 # ffffffffc020e598 <syscalls+0xa48>
ffffffffc0207c66:	00004617          	auipc	a2,0x4
ffffffffc0207c6a:	d5260613          	addi	a2,a2,-686 # ffffffffc020b9b8 <commands+0x210>
ffffffffc0207c6e:	0cd00593          	li	a1,205
ffffffffc0207c72:	00007517          	auipc	a0,0x7
ffffffffc0207c76:	93650513          	addi	a0,a0,-1738 # ffffffffc020e5a8 <syscalls+0xa58>
ffffffffc0207c7a:	e406                	sd	ra,8(sp)
ffffffffc0207c7c:	823f80ef          	jal	ra,ffffffffc020049e <__panic>

ffffffffc0207c80 <vfs_devlist_init>:
ffffffffc0207c80:	0008e797          	auipc	a5,0x8e
ffffffffc0207c84:	b9878793          	addi	a5,a5,-1128 # ffffffffc0295818 <vdev_list>
ffffffffc0207c88:	4585                	li	a1,1
ffffffffc0207c8a:	0008e517          	auipc	a0,0x8e
ffffffffc0207c8e:	b9e50513          	addi	a0,a0,-1122 # ffffffffc0295828 <vdev_list_sem>
ffffffffc0207c92:	e79c                	sd	a5,8(a5)
ffffffffc0207c94:	e39c                	sd	a5,0(a5)
ffffffffc0207c96:	8c5fc06f          	j	ffffffffc020455a <sem_init>

ffffffffc0207c9a <vfs_cleanup>:
ffffffffc0207c9a:	1101                	addi	sp,sp,-32
ffffffffc0207c9c:	e426                	sd	s1,8(sp)
ffffffffc0207c9e:	0008e497          	auipc	s1,0x8e
ffffffffc0207ca2:	b7a48493          	addi	s1,s1,-1158 # ffffffffc0295818 <vdev_list>
ffffffffc0207ca6:	649c                	ld	a5,8(s1)
ffffffffc0207ca8:	ec06                	sd	ra,24(sp)
ffffffffc0207caa:	e822                	sd	s0,16(sp)
ffffffffc0207cac:	02978e63          	beq	a5,s1,ffffffffc0207ce8 <vfs_cleanup+0x4e>
ffffffffc0207cb0:	0008e517          	auipc	a0,0x8e
ffffffffc0207cb4:	b7850513          	addi	a0,a0,-1160 # ffffffffc0295828 <vdev_list_sem>
ffffffffc0207cb8:	8adfc0ef          	jal	ra,ffffffffc0204564 <down>
ffffffffc0207cbc:	6480                	ld	s0,8(s1)
ffffffffc0207cbe:	00940b63          	beq	s0,s1,ffffffffc0207cd4 <vfs_cleanup+0x3a>
ffffffffc0207cc2:	ff043783          	ld	a5,-16(s0)
ffffffffc0207cc6:	853e                	mv	a0,a5
ffffffffc0207cc8:	c399                	beqz	a5,ffffffffc0207cce <vfs_cleanup+0x34>
ffffffffc0207cca:	6bfc                	ld	a5,208(a5)
ffffffffc0207ccc:	9782                	jalr	a5
ffffffffc0207cce:	6400                	ld	s0,8(s0)
ffffffffc0207cd0:	fe9419e3          	bne	s0,s1,ffffffffc0207cc2 <vfs_cleanup+0x28>
ffffffffc0207cd4:	6442                	ld	s0,16(sp)
ffffffffc0207cd6:	60e2                	ld	ra,24(sp)
ffffffffc0207cd8:	64a2                	ld	s1,8(sp)
ffffffffc0207cda:	0008e517          	auipc	a0,0x8e
ffffffffc0207cde:	b4e50513          	addi	a0,a0,-1202 # ffffffffc0295828 <vdev_list_sem>
ffffffffc0207ce2:	6105                	addi	sp,sp,32
ffffffffc0207ce4:	87dfc06f          	j	ffffffffc0204560 <up>
ffffffffc0207ce8:	60e2                	ld	ra,24(sp)
ffffffffc0207cea:	6442                	ld	s0,16(sp)
ffffffffc0207cec:	64a2                	ld	s1,8(sp)
ffffffffc0207cee:	6105                	addi	sp,sp,32
ffffffffc0207cf0:	8082                	ret

ffffffffc0207cf2 <vfs_get_root>:
ffffffffc0207cf2:	7179                	addi	sp,sp,-48
ffffffffc0207cf4:	f406                	sd	ra,40(sp)
ffffffffc0207cf6:	f022                	sd	s0,32(sp)
ffffffffc0207cf8:	ec26                	sd	s1,24(sp)
ffffffffc0207cfa:	e84a                	sd	s2,16(sp)
ffffffffc0207cfc:	e44e                	sd	s3,8(sp)
ffffffffc0207cfe:	e052                	sd	s4,0(sp)
ffffffffc0207d00:	c541                	beqz	a0,ffffffffc0207d88 <vfs_get_root+0x96>
ffffffffc0207d02:	0008e917          	auipc	s2,0x8e
ffffffffc0207d06:	b1690913          	addi	s2,s2,-1258 # ffffffffc0295818 <vdev_list>
ffffffffc0207d0a:	00893783          	ld	a5,8(s2)
ffffffffc0207d0e:	07278b63          	beq	a5,s2,ffffffffc0207d84 <vfs_get_root+0x92>
ffffffffc0207d12:	89aa                	mv	s3,a0
ffffffffc0207d14:	0008e517          	auipc	a0,0x8e
ffffffffc0207d18:	b1450513          	addi	a0,a0,-1260 # ffffffffc0295828 <vdev_list_sem>
ffffffffc0207d1c:	8a2e                	mv	s4,a1
ffffffffc0207d1e:	844a                	mv	s0,s2
ffffffffc0207d20:	845fc0ef          	jal	ra,ffffffffc0204564 <down>
ffffffffc0207d24:	a801                	j	ffffffffc0207d34 <vfs_get_root+0x42>
ffffffffc0207d26:	fe043583          	ld	a1,-32(s0)
ffffffffc0207d2a:	854e                	mv	a0,s3
ffffffffc0207d2c:	74e030ef          	jal	ra,ffffffffc020b47a <strcmp>
ffffffffc0207d30:	84aa                	mv	s1,a0
ffffffffc0207d32:	c505                	beqz	a0,ffffffffc0207d5a <vfs_get_root+0x68>
ffffffffc0207d34:	6400                	ld	s0,8(s0)
ffffffffc0207d36:	ff2418e3          	bne	s0,s2,ffffffffc0207d26 <vfs_get_root+0x34>
ffffffffc0207d3a:	54cd                	li	s1,-13
ffffffffc0207d3c:	0008e517          	auipc	a0,0x8e
ffffffffc0207d40:	aec50513          	addi	a0,a0,-1300 # ffffffffc0295828 <vdev_list_sem>
ffffffffc0207d44:	81dfc0ef          	jal	ra,ffffffffc0204560 <up>
ffffffffc0207d48:	70a2                	ld	ra,40(sp)
ffffffffc0207d4a:	7402                	ld	s0,32(sp)
ffffffffc0207d4c:	6942                	ld	s2,16(sp)
ffffffffc0207d4e:	69a2                	ld	s3,8(sp)
ffffffffc0207d50:	6a02                	ld	s4,0(sp)
ffffffffc0207d52:	8526                	mv	a0,s1
ffffffffc0207d54:	64e2                	ld	s1,24(sp)
ffffffffc0207d56:	6145                	addi	sp,sp,48
ffffffffc0207d58:	8082                	ret
ffffffffc0207d5a:	ff043503          	ld	a0,-16(s0)
ffffffffc0207d5e:	c519                	beqz	a0,ffffffffc0207d6c <vfs_get_root+0x7a>
ffffffffc0207d60:	617c                	ld	a5,192(a0)
ffffffffc0207d62:	9782                	jalr	a5
ffffffffc0207d64:	c519                	beqz	a0,ffffffffc0207d72 <vfs_get_root+0x80>
ffffffffc0207d66:	00aa3023          	sd	a0,0(s4)
ffffffffc0207d6a:	bfc9                	j	ffffffffc0207d3c <vfs_get_root+0x4a>
ffffffffc0207d6c:	ff843783          	ld	a5,-8(s0)
ffffffffc0207d70:	c399                	beqz	a5,ffffffffc0207d76 <vfs_get_root+0x84>
ffffffffc0207d72:	54c9                	li	s1,-14
ffffffffc0207d74:	b7e1                	j	ffffffffc0207d3c <vfs_get_root+0x4a>
ffffffffc0207d76:	fe843503          	ld	a0,-24(s0)
ffffffffc0207d7a:	a99ff0ef          	jal	ra,ffffffffc0207812 <inode_ref_inc>
ffffffffc0207d7e:	fe843503          	ld	a0,-24(s0)
ffffffffc0207d82:	b7cd                	j	ffffffffc0207d64 <vfs_get_root+0x72>
ffffffffc0207d84:	54cd                	li	s1,-13
ffffffffc0207d86:	b7c9                	j	ffffffffc0207d48 <vfs_get_root+0x56>
ffffffffc0207d88:	00007697          	auipc	a3,0x7
ffffffffc0207d8c:	81068693          	addi	a3,a3,-2032 # ffffffffc020e598 <syscalls+0xa48>
ffffffffc0207d90:	00004617          	auipc	a2,0x4
ffffffffc0207d94:	c2860613          	addi	a2,a2,-984 # ffffffffc020b9b8 <commands+0x210>
ffffffffc0207d98:	04500593          	li	a1,69
ffffffffc0207d9c:	00007517          	auipc	a0,0x7
ffffffffc0207da0:	80c50513          	addi	a0,a0,-2036 # ffffffffc020e5a8 <syscalls+0xa58>
ffffffffc0207da4:	efaf80ef          	jal	ra,ffffffffc020049e <__panic>

ffffffffc0207da8 <vfs_get_devname>:
ffffffffc0207da8:	0008e697          	auipc	a3,0x8e
ffffffffc0207dac:	a7068693          	addi	a3,a3,-1424 # ffffffffc0295818 <vdev_list>
ffffffffc0207db0:	87b6                	mv	a5,a3
ffffffffc0207db2:	e511                	bnez	a0,ffffffffc0207dbe <vfs_get_devname+0x16>
ffffffffc0207db4:	a829                	j	ffffffffc0207dce <vfs_get_devname+0x26>
ffffffffc0207db6:	ff07b703          	ld	a4,-16(a5)
ffffffffc0207dba:	00a70763          	beq	a4,a0,ffffffffc0207dc8 <vfs_get_devname+0x20>
ffffffffc0207dbe:	679c                	ld	a5,8(a5)
ffffffffc0207dc0:	fed79be3          	bne	a5,a3,ffffffffc0207db6 <vfs_get_devname+0xe>
ffffffffc0207dc4:	4501                	li	a0,0
ffffffffc0207dc6:	8082                	ret
ffffffffc0207dc8:	fe07b503          	ld	a0,-32(a5)
ffffffffc0207dcc:	8082                	ret
ffffffffc0207dce:	1141                	addi	sp,sp,-16
ffffffffc0207dd0:	00007697          	auipc	a3,0x7
ffffffffc0207dd4:	85068693          	addi	a3,a3,-1968 # ffffffffc020e620 <syscalls+0xad0>
ffffffffc0207dd8:	00004617          	auipc	a2,0x4
ffffffffc0207ddc:	be060613          	addi	a2,a2,-1056 # ffffffffc020b9b8 <commands+0x210>
ffffffffc0207de0:	06a00593          	li	a1,106
ffffffffc0207de4:	00006517          	auipc	a0,0x6
ffffffffc0207de8:	7c450513          	addi	a0,a0,1988 # ffffffffc020e5a8 <syscalls+0xa58>
ffffffffc0207dec:	e406                	sd	ra,8(sp)
ffffffffc0207dee:	eb0f80ef          	jal	ra,ffffffffc020049e <__panic>

ffffffffc0207df2 <vfs_add_dev>:
ffffffffc0207df2:	86b2                	mv	a3,a2
ffffffffc0207df4:	4601                	li	a2,0
ffffffffc0207df6:	d3fff06f          	j	ffffffffc0207b34 <vfs_do_add>

ffffffffc0207dfa <vfs_mount>:
ffffffffc0207dfa:	7179                	addi	sp,sp,-48
ffffffffc0207dfc:	e84a                	sd	s2,16(sp)
ffffffffc0207dfe:	892a                	mv	s2,a0
ffffffffc0207e00:	0008e517          	auipc	a0,0x8e
ffffffffc0207e04:	a2850513          	addi	a0,a0,-1496 # ffffffffc0295828 <vdev_list_sem>
ffffffffc0207e08:	e44e                	sd	s3,8(sp)
ffffffffc0207e0a:	f406                	sd	ra,40(sp)
ffffffffc0207e0c:	f022                	sd	s0,32(sp)
ffffffffc0207e0e:	ec26                	sd	s1,24(sp)
ffffffffc0207e10:	89ae                	mv	s3,a1
ffffffffc0207e12:	f52fc0ef          	jal	ra,ffffffffc0204564 <down>
ffffffffc0207e16:	08090a63          	beqz	s2,ffffffffc0207eaa <vfs_mount+0xb0>
ffffffffc0207e1a:	0008e497          	auipc	s1,0x8e
ffffffffc0207e1e:	9fe48493          	addi	s1,s1,-1538 # ffffffffc0295818 <vdev_list>
ffffffffc0207e22:	6480                	ld	s0,8(s1)
ffffffffc0207e24:	00941663          	bne	s0,s1,ffffffffc0207e30 <vfs_mount+0x36>
ffffffffc0207e28:	a8ad                	j	ffffffffc0207ea2 <vfs_mount+0xa8>
ffffffffc0207e2a:	6400                	ld	s0,8(s0)
ffffffffc0207e2c:	06940b63          	beq	s0,s1,ffffffffc0207ea2 <vfs_mount+0xa8>
ffffffffc0207e30:	ff843783          	ld	a5,-8(s0)
ffffffffc0207e34:	dbfd                	beqz	a5,ffffffffc0207e2a <vfs_mount+0x30>
ffffffffc0207e36:	fe043503          	ld	a0,-32(s0)
ffffffffc0207e3a:	85ca                	mv	a1,s2
ffffffffc0207e3c:	63e030ef          	jal	ra,ffffffffc020b47a <strcmp>
ffffffffc0207e40:	f56d                	bnez	a0,ffffffffc0207e2a <vfs_mount+0x30>
ffffffffc0207e42:	ff043783          	ld	a5,-16(s0)
ffffffffc0207e46:	e3a5                	bnez	a5,ffffffffc0207ea6 <vfs_mount+0xac>
ffffffffc0207e48:	fe043783          	ld	a5,-32(s0)
ffffffffc0207e4c:	c3c9                	beqz	a5,ffffffffc0207ece <vfs_mount+0xd4>
ffffffffc0207e4e:	ff843783          	ld	a5,-8(s0)
ffffffffc0207e52:	cfb5                	beqz	a5,ffffffffc0207ece <vfs_mount+0xd4>
ffffffffc0207e54:	fe843503          	ld	a0,-24(s0)
ffffffffc0207e58:	c939                	beqz	a0,ffffffffc0207eae <vfs_mount+0xb4>
ffffffffc0207e5a:	4d38                	lw	a4,88(a0)
ffffffffc0207e5c:	6785                	lui	a5,0x1
ffffffffc0207e5e:	23478793          	addi	a5,a5,564 # 1234 <_binary_bin_swap_img_size-0x6acc>
ffffffffc0207e62:	04f71663          	bne	a4,a5,ffffffffc0207eae <vfs_mount+0xb4>
ffffffffc0207e66:	ff040593          	addi	a1,s0,-16
ffffffffc0207e6a:	9982                	jalr	s3
ffffffffc0207e6c:	84aa                	mv	s1,a0
ffffffffc0207e6e:	ed01                	bnez	a0,ffffffffc0207e86 <vfs_mount+0x8c>
ffffffffc0207e70:	ff043783          	ld	a5,-16(s0)
ffffffffc0207e74:	cfad                	beqz	a5,ffffffffc0207eee <vfs_mount+0xf4>
ffffffffc0207e76:	fe043583          	ld	a1,-32(s0)
ffffffffc0207e7a:	00007517          	auipc	a0,0x7
ffffffffc0207e7e:	83650513          	addi	a0,a0,-1994 # ffffffffc020e6b0 <syscalls+0xb60>
ffffffffc0207e82:	b24f80ef          	jal	ra,ffffffffc02001a6 <cprintf>
ffffffffc0207e86:	0008e517          	auipc	a0,0x8e
ffffffffc0207e8a:	9a250513          	addi	a0,a0,-1630 # ffffffffc0295828 <vdev_list_sem>
ffffffffc0207e8e:	ed2fc0ef          	jal	ra,ffffffffc0204560 <up>
ffffffffc0207e92:	70a2                	ld	ra,40(sp)
ffffffffc0207e94:	7402                	ld	s0,32(sp)
ffffffffc0207e96:	6942                	ld	s2,16(sp)
ffffffffc0207e98:	69a2                	ld	s3,8(sp)
ffffffffc0207e9a:	8526                	mv	a0,s1
ffffffffc0207e9c:	64e2                	ld	s1,24(sp)
ffffffffc0207e9e:	6145                	addi	sp,sp,48
ffffffffc0207ea0:	8082                	ret
ffffffffc0207ea2:	54cd                	li	s1,-13
ffffffffc0207ea4:	b7cd                	j	ffffffffc0207e86 <vfs_mount+0x8c>
ffffffffc0207ea6:	54c5                	li	s1,-15
ffffffffc0207ea8:	bff9                	j	ffffffffc0207e86 <vfs_mount+0x8c>
ffffffffc0207eaa:	db3ff0ef          	jal	ra,ffffffffc0207c5c <find_mount.part.0>
ffffffffc0207eae:	00006697          	auipc	a3,0x6
ffffffffc0207eb2:	7b268693          	addi	a3,a3,1970 # ffffffffc020e660 <syscalls+0xb10>
ffffffffc0207eb6:	00004617          	auipc	a2,0x4
ffffffffc0207eba:	b0260613          	addi	a2,a2,-1278 # ffffffffc020b9b8 <commands+0x210>
ffffffffc0207ebe:	0ed00593          	li	a1,237
ffffffffc0207ec2:	00006517          	auipc	a0,0x6
ffffffffc0207ec6:	6e650513          	addi	a0,a0,1766 # ffffffffc020e5a8 <syscalls+0xa58>
ffffffffc0207eca:	dd4f80ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc0207ece:	00006697          	auipc	a3,0x6
ffffffffc0207ed2:	76268693          	addi	a3,a3,1890 # ffffffffc020e630 <syscalls+0xae0>
ffffffffc0207ed6:	00004617          	auipc	a2,0x4
ffffffffc0207eda:	ae260613          	addi	a2,a2,-1310 # ffffffffc020b9b8 <commands+0x210>
ffffffffc0207ede:	0eb00593          	li	a1,235
ffffffffc0207ee2:	00006517          	auipc	a0,0x6
ffffffffc0207ee6:	6c650513          	addi	a0,a0,1734 # ffffffffc020e5a8 <syscalls+0xa58>
ffffffffc0207eea:	db4f80ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc0207eee:	00006697          	auipc	a3,0x6
ffffffffc0207ef2:	7aa68693          	addi	a3,a3,1962 # ffffffffc020e698 <syscalls+0xb48>
ffffffffc0207ef6:	00004617          	auipc	a2,0x4
ffffffffc0207efa:	ac260613          	addi	a2,a2,-1342 # ffffffffc020b9b8 <commands+0x210>
ffffffffc0207efe:	0ef00593          	li	a1,239
ffffffffc0207f02:	00006517          	auipc	a0,0x6
ffffffffc0207f06:	6a650513          	addi	a0,a0,1702 # ffffffffc020e5a8 <syscalls+0xa58>
ffffffffc0207f0a:	d94f80ef          	jal	ra,ffffffffc020049e <__panic>

ffffffffc0207f0e <vfs_open>:
ffffffffc0207f0e:	711d                	addi	sp,sp,-96
ffffffffc0207f10:	e4a6                	sd	s1,72(sp)
ffffffffc0207f12:	e0ca                	sd	s2,64(sp)
ffffffffc0207f14:	fc4e                	sd	s3,56(sp)
ffffffffc0207f16:	ec86                	sd	ra,88(sp)
ffffffffc0207f18:	e8a2                	sd	s0,80(sp)
ffffffffc0207f1a:	f852                	sd	s4,48(sp)
ffffffffc0207f1c:	f456                	sd	s5,40(sp)
ffffffffc0207f1e:	0035f793          	andi	a5,a1,3
ffffffffc0207f22:	84ae                	mv	s1,a1
ffffffffc0207f24:	892a                	mv	s2,a0
ffffffffc0207f26:	89b2                	mv	s3,a2
ffffffffc0207f28:	0e078663          	beqz	a5,ffffffffc0208014 <vfs_open+0x106>
ffffffffc0207f2c:	470d                	li	a4,3
ffffffffc0207f2e:	0105fa93          	andi	s5,a1,16
ffffffffc0207f32:	0ce78f63          	beq	a5,a4,ffffffffc0208010 <vfs_open+0x102>
ffffffffc0207f36:	002c                	addi	a1,sp,8
ffffffffc0207f38:	854a                	mv	a0,s2
ffffffffc0207f3a:	2ae000ef          	jal	ra,ffffffffc02081e8 <vfs_lookup>
ffffffffc0207f3e:	842a                	mv	s0,a0
ffffffffc0207f40:	0044fa13          	andi	s4,s1,4
ffffffffc0207f44:	e159                	bnez	a0,ffffffffc0207fca <vfs_open+0xbc>
ffffffffc0207f46:	00c4f793          	andi	a5,s1,12
ffffffffc0207f4a:	4731                	li	a4,12
ffffffffc0207f4c:	0ee78263          	beq	a5,a4,ffffffffc0208030 <vfs_open+0x122>
ffffffffc0207f50:	6422                	ld	s0,8(sp)
ffffffffc0207f52:	12040163          	beqz	s0,ffffffffc0208074 <vfs_open+0x166>
ffffffffc0207f56:	783c                	ld	a5,112(s0)
ffffffffc0207f58:	cff1                	beqz	a5,ffffffffc0208034 <vfs_open+0x126>
ffffffffc0207f5a:	679c                	ld	a5,8(a5)
ffffffffc0207f5c:	cfe1                	beqz	a5,ffffffffc0208034 <vfs_open+0x126>
ffffffffc0207f5e:	8522                	mv	a0,s0
ffffffffc0207f60:	00007597          	auipc	a1,0x7
ffffffffc0207f64:	83058593          	addi	a1,a1,-2000 # ffffffffc020e790 <syscalls+0xc40>
ffffffffc0207f68:	8c3ff0ef          	jal	ra,ffffffffc020782a <inode_check>
ffffffffc0207f6c:	783c                	ld	a5,112(s0)
ffffffffc0207f6e:	6522                	ld	a0,8(sp)
ffffffffc0207f70:	85a6                	mv	a1,s1
ffffffffc0207f72:	679c                	ld	a5,8(a5)
ffffffffc0207f74:	9782                	jalr	a5
ffffffffc0207f76:	842a                	mv	s0,a0
ffffffffc0207f78:	6522                	ld	a0,8(sp)
ffffffffc0207f7a:	e845                	bnez	s0,ffffffffc020802a <vfs_open+0x11c>
ffffffffc0207f7c:	015a6a33          	or	s4,s4,s5
ffffffffc0207f80:	89fff0ef          	jal	ra,ffffffffc020781e <inode_open_inc>
ffffffffc0207f84:	020a0663          	beqz	s4,ffffffffc0207fb0 <vfs_open+0xa2>
ffffffffc0207f88:	64a2                	ld	s1,8(sp)
ffffffffc0207f8a:	c4e9                	beqz	s1,ffffffffc0208054 <vfs_open+0x146>
ffffffffc0207f8c:	78bc                	ld	a5,112(s1)
ffffffffc0207f8e:	c3f9                	beqz	a5,ffffffffc0208054 <vfs_open+0x146>
ffffffffc0207f90:	73bc                	ld	a5,96(a5)
ffffffffc0207f92:	c3e9                	beqz	a5,ffffffffc0208054 <vfs_open+0x146>
ffffffffc0207f94:	00007597          	auipc	a1,0x7
ffffffffc0207f98:	85c58593          	addi	a1,a1,-1956 # ffffffffc020e7f0 <syscalls+0xca0>
ffffffffc0207f9c:	8526                	mv	a0,s1
ffffffffc0207f9e:	88dff0ef          	jal	ra,ffffffffc020782a <inode_check>
ffffffffc0207fa2:	78bc                	ld	a5,112(s1)
ffffffffc0207fa4:	6522                	ld	a0,8(sp)
ffffffffc0207fa6:	4581                	li	a1,0
ffffffffc0207fa8:	73bc                	ld	a5,96(a5)
ffffffffc0207faa:	9782                	jalr	a5
ffffffffc0207fac:	87aa                	mv	a5,a0
ffffffffc0207fae:	e92d                	bnez	a0,ffffffffc0208020 <vfs_open+0x112>
ffffffffc0207fb0:	67a2                	ld	a5,8(sp)
ffffffffc0207fb2:	00f9b023          	sd	a5,0(s3)
ffffffffc0207fb6:	60e6                	ld	ra,88(sp)
ffffffffc0207fb8:	8522                	mv	a0,s0
ffffffffc0207fba:	6446                	ld	s0,80(sp)
ffffffffc0207fbc:	64a6                	ld	s1,72(sp)
ffffffffc0207fbe:	6906                	ld	s2,64(sp)
ffffffffc0207fc0:	79e2                	ld	s3,56(sp)
ffffffffc0207fc2:	7a42                	ld	s4,48(sp)
ffffffffc0207fc4:	7aa2                	ld	s5,40(sp)
ffffffffc0207fc6:	6125                	addi	sp,sp,96
ffffffffc0207fc8:	8082                	ret
ffffffffc0207fca:	57c1                	li	a5,-16
ffffffffc0207fcc:	fef515e3          	bne	a0,a5,ffffffffc0207fb6 <vfs_open+0xa8>
ffffffffc0207fd0:	fe0a03e3          	beqz	s4,ffffffffc0207fb6 <vfs_open+0xa8>
ffffffffc0207fd4:	0810                	addi	a2,sp,16
ffffffffc0207fd6:	082c                	addi	a1,sp,24
ffffffffc0207fd8:	854a                	mv	a0,s2
ffffffffc0207fda:	2a4000ef          	jal	ra,ffffffffc020827e <vfs_lookup_parent>
ffffffffc0207fde:	842a                	mv	s0,a0
ffffffffc0207fe0:	f979                	bnez	a0,ffffffffc0207fb6 <vfs_open+0xa8>
ffffffffc0207fe2:	6462                	ld	s0,24(sp)
ffffffffc0207fe4:	c845                	beqz	s0,ffffffffc0208094 <vfs_open+0x186>
ffffffffc0207fe6:	783c                	ld	a5,112(s0)
ffffffffc0207fe8:	c7d5                	beqz	a5,ffffffffc0208094 <vfs_open+0x186>
ffffffffc0207fea:	77bc                	ld	a5,104(a5)
ffffffffc0207fec:	c7c5                	beqz	a5,ffffffffc0208094 <vfs_open+0x186>
ffffffffc0207fee:	8522                	mv	a0,s0
ffffffffc0207ff0:	00006597          	auipc	a1,0x6
ffffffffc0207ff4:	73858593          	addi	a1,a1,1848 # ffffffffc020e728 <syscalls+0xbd8>
ffffffffc0207ff8:	833ff0ef          	jal	ra,ffffffffc020782a <inode_check>
ffffffffc0207ffc:	783c                	ld	a5,112(s0)
ffffffffc0207ffe:	65c2                	ld	a1,16(sp)
ffffffffc0208000:	6562                	ld	a0,24(sp)
ffffffffc0208002:	77bc                	ld	a5,104(a5)
ffffffffc0208004:	4034d613          	srai	a2,s1,0x3
ffffffffc0208008:	0034                	addi	a3,sp,8
ffffffffc020800a:	8a05                	andi	a2,a2,1
ffffffffc020800c:	9782                	jalr	a5
ffffffffc020800e:	b789                	j	ffffffffc0207f50 <vfs_open+0x42>
ffffffffc0208010:	5475                	li	s0,-3
ffffffffc0208012:	b755                	j	ffffffffc0207fb6 <vfs_open+0xa8>
ffffffffc0208014:	0105fa93          	andi	s5,a1,16
ffffffffc0208018:	5475                	li	s0,-3
ffffffffc020801a:	f80a9ee3          	bnez	s5,ffffffffc0207fb6 <vfs_open+0xa8>
ffffffffc020801e:	bf21                	j	ffffffffc0207f36 <vfs_open+0x28>
ffffffffc0208020:	6522                	ld	a0,8(sp)
ffffffffc0208022:	843e                	mv	s0,a5
ffffffffc0208024:	965ff0ef          	jal	ra,ffffffffc0207988 <inode_open_dec>
ffffffffc0208028:	6522                	ld	a0,8(sp)
ffffffffc020802a:	8b7ff0ef          	jal	ra,ffffffffc02078e0 <inode_ref_dec>
ffffffffc020802e:	b761                	j	ffffffffc0207fb6 <vfs_open+0xa8>
ffffffffc0208030:	5425                	li	s0,-23
ffffffffc0208032:	b751                	j	ffffffffc0207fb6 <vfs_open+0xa8>
ffffffffc0208034:	00006697          	auipc	a3,0x6
ffffffffc0208038:	70c68693          	addi	a3,a3,1804 # ffffffffc020e740 <syscalls+0xbf0>
ffffffffc020803c:	00004617          	auipc	a2,0x4
ffffffffc0208040:	97c60613          	addi	a2,a2,-1668 # ffffffffc020b9b8 <commands+0x210>
ffffffffc0208044:	03300593          	li	a1,51
ffffffffc0208048:	00006517          	auipc	a0,0x6
ffffffffc020804c:	6c850513          	addi	a0,a0,1736 # ffffffffc020e710 <syscalls+0xbc0>
ffffffffc0208050:	c4ef80ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc0208054:	00006697          	auipc	a3,0x6
ffffffffc0208058:	74468693          	addi	a3,a3,1860 # ffffffffc020e798 <syscalls+0xc48>
ffffffffc020805c:	00004617          	auipc	a2,0x4
ffffffffc0208060:	95c60613          	addi	a2,a2,-1700 # ffffffffc020b9b8 <commands+0x210>
ffffffffc0208064:	03a00593          	li	a1,58
ffffffffc0208068:	00006517          	auipc	a0,0x6
ffffffffc020806c:	6a850513          	addi	a0,a0,1704 # ffffffffc020e710 <syscalls+0xbc0>
ffffffffc0208070:	c2ef80ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc0208074:	00006697          	auipc	a3,0x6
ffffffffc0208078:	6bc68693          	addi	a3,a3,1724 # ffffffffc020e730 <syscalls+0xbe0>
ffffffffc020807c:	00004617          	auipc	a2,0x4
ffffffffc0208080:	93c60613          	addi	a2,a2,-1732 # ffffffffc020b9b8 <commands+0x210>
ffffffffc0208084:	03100593          	li	a1,49
ffffffffc0208088:	00006517          	auipc	a0,0x6
ffffffffc020808c:	68850513          	addi	a0,a0,1672 # ffffffffc020e710 <syscalls+0xbc0>
ffffffffc0208090:	c0ef80ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc0208094:	00006697          	auipc	a3,0x6
ffffffffc0208098:	62c68693          	addi	a3,a3,1580 # ffffffffc020e6c0 <syscalls+0xb70>
ffffffffc020809c:	00004617          	auipc	a2,0x4
ffffffffc02080a0:	91c60613          	addi	a2,a2,-1764 # ffffffffc020b9b8 <commands+0x210>
ffffffffc02080a4:	02c00593          	li	a1,44
ffffffffc02080a8:	00006517          	auipc	a0,0x6
ffffffffc02080ac:	66850513          	addi	a0,a0,1640 # ffffffffc020e710 <syscalls+0xbc0>
ffffffffc02080b0:	beef80ef          	jal	ra,ffffffffc020049e <__panic>

ffffffffc02080b4 <vfs_close>:
ffffffffc02080b4:	1141                	addi	sp,sp,-16
ffffffffc02080b6:	e406                	sd	ra,8(sp)
ffffffffc02080b8:	e022                	sd	s0,0(sp)
ffffffffc02080ba:	842a                	mv	s0,a0
ffffffffc02080bc:	8cdff0ef          	jal	ra,ffffffffc0207988 <inode_open_dec>
ffffffffc02080c0:	8522                	mv	a0,s0
ffffffffc02080c2:	81fff0ef          	jal	ra,ffffffffc02078e0 <inode_ref_dec>
ffffffffc02080c6:	60a2                	ld	ra,8(sp)
ffffffffc02080c8:	6402                	ld	s0,0(sp)
ffffffffc02080ca:	4501                	li	a0,0
ffffffffc02080cc:	0141                	addi	sp,sp,16
ffffffffc02080ce:	8082                	ret

ffffffffc02080d0 <get_device>:
ffffffffc02080d0:	7179                	addi	sp,sp,-48
ffffffffc02080d2:	ec26                	sd	s1,24(sp)
ffffffffc02080d4:	e84a                	sd	s2,16(sp)
ffffffffc02080d6:	f406                	sd	ra,40(sp)
ffffffffc02080d8:	f022                	sd	s0,32(sp)
ffffffffc02080da:	00054303          	lbu	t1,0(a0)
ffffffffc02080de:	892e                	mv	s2,a1
ffffffffc02080e0:	84b2                	mv	s1,a2
ffffffffc02080e2:	02030463          	beqz	t1,ffffffffc020810a <get_device+0x3a>
ffffffffc02080e6:	00150413          	addi	s0,a0,1
ffffffffc02080ea:	86a2                	mv	a3,s0
ffffffffc02080ec:	879a                	mv	a5,t1
ffffffffc02080ee:	4701                	li	a4,0
ffffffffc02080f0:	03a00813          	li	a6,58
ffffffffc02080f4:	02f00893          	li	a7,47
ffffffffc02080f8:	03078263          	beq	a5,a6,ffffffffc020811c <get_device+0x4c>
ffffffffc02080fc:	05178963          	beq	a5,a7,ffffffffc020814e <get_device+0x7e>
ffffffffc0208100:	0006c783          	lbu	a5,0(a3)
ffffffffc0208104:	2705                	addiw	a4,a4,1
ffffffffc0208106:	0685                	addi	a3,a3,1
ffffffffc0208108:	fbe5                	bnez	a5,ffffffffc02080f8 <get_device+0x28>
ffffffffc020810a:	7402                	ld	s0,32(sp)
ffffffffc020810c:	00a93023          	sd	a0,0(s2)
ffffffffc0208110:	70a2                	ld	ra,40(sp)
ffffffffc0208112:	6942                	ld	s2,16(sp)
ffffffffc0208114:	8526                	mv	a0,s1
ffffffffc0208116:	64e2                	ld	s1,24(sp)
ffffffffc0208118:	6145                	addi	sp,sp,48
ffffffffc020811a:	a279                	j	ffffffffc02082a8 <vfs_get_curdir>
ffffffffc020811c:	cb15                	beqz	a4,ffffffffc0208150 <get_device+0x80>
ffffffffc020811e:	00e507b3          	add	a5,a0,a4
ffffffffc0208122:	0705                	addi	a4,a4,1
ffffffffc0208124:	00078023          	sb	zero,0(a5)
ffffffffc0208128:	972a                	add	a4,a4,a0
ffffffffc020812a:	02f00613          	li	a2,47
ffffffffc020812e:	00074783          	lbu	a5,0(a4)
ffffffffc0208132:	86ba                	mv	a3,a4
ffffffffc0208134:	0705                	addi	a4,a4,1
ffffffffc0208136:	fec78ce3          	beq	a5,a2,ffffffffc020812e <get_device+0x5e>
ffffffffc020813a:	7402                	ld	s0,32(sp)
ffffffffc020813c:	70a2                	ld	ra,40(sp)
ffffffffc020813e:	00d93023          	sd	a3,0(s2)
ffffffffc0208142:	85a6                	mv	a1,s1
ffffffffc0208144:	6942                	ld	s2,16(sp)
ffffffffc0208146:	64e2                	ld	s1,24(sp)
ffffffffc0208148:	6145                	addi	sp,sp,48
ffffffffc020814a:	ba9ff06f          	j	ffffffffc0207cf2 <vfs_get_root>
ffffffffc020814e:	ff55                	bnez	a4,ffffffffc020810a <get_device+0x3a>
ffffffffc0208150:	02f00793          	li	a5,47
ffffffffc0208154:	04f30563          	beq	t1,a5,ffffffffc020819e <get_device+0xce>
ffffffffc0208158:	03a00793          	li	a5,58
ffffffffc020815c:	06f31663          	bne	t1,a5,ffffffffc02081c8 <get_device+0xf8>
ffffffffc0208160:	0028                	addi	a0,sp,8
ffffffffc0208162:	146000ef          	jal	ra,ffffffffc02082a8 <vfs_get_curdir>
ffffffffc0208166:	e515                	bnez	a0,ffffffffc0208192 <get_device+0xc2>
ffffffffc0208168:	67a2                	ld	a5,8(sp)
ffffffffc020816a:	77a8                	ld	a0,104(a5)
ffffffffc020816c:	cd15                	beqz	a0,ffffffffc02081a8 <get_device+0xd8>
ffffffffc020816e:	617c                	ld	a5,192(a0)
ffffffffc0208170:	9782                	jalr	a5
ffffffffc0208172:	87aa                	mv	a5,a0
ffffffffc0208174:	6522                	ld	a0,8(sp)
ffffffffc0208176:	e09c                	sd	a5,0(s1)
ffffffffc0208178:	f68ff0ef          	jal	ra,ffffffffc02078e0 <inode_ref_dec>
ffffffffc020817c:	02f00713          	li	a4,47
ffffffffc0208180:	a011                	j	ffffffffc0208184 <get_device+0xb4>
ffffffffc0208182:	0405                	addi	s0,s0,1
ffffffffc0208184:	00044783          	lbu	a5,0(s0)
ffffffffc0208188:	fee78de3          	beq	a5,a4,ffffffffc0208182 <get_device+0xb2>
ffffffffc020818c:	00893023          	sd	s0,0(s2)
ffffffffc0208190:	4501                	li	a0,0
ffffffffc0208192:	70a2                	ld	ra,40(sp)
ffffffffc0208194:	7402                	ld	s0,32(sp)
ffffffffc0208196:	64e2                	ld	s1,24(sp)
ffffffffc0208198:	6942                	ld	s2,16(sp)
ffffffffc020819a:	6145                	addi	sp,sp,48
ffffffffc020819c:	8082                	ret
ffffffffc020819e:	8526                	mv	a0,s1
ffffffffc02081a0:	93fff0ef          	jal	ra,ffffffffc0207ade <vfs_get_bootfs>
ffffffffc02081a4:	dd61                	beqz	a0,ffffffffc020817c <get_device+0xac>
ffffffffc02081a6:	b7f5                	j	ffffffffc0208192 <get_device+0xc2>
ffffffffc02081a8:	00006697          	auipc	a3,0x6
ffffffffc02081ac:	68068693          	addi	a3,a3,1664 # ffffffffc020e828 <syscalls+0xcd8>
ffffffffc02081b0:	00004617          	auipc	a2,0x4
ffffffffc02081b4:	80860613          	addi	a2,a2,-2040 # ffffffffc020b9b8 <commands+0x210>
ffffffffc02081b8:	03900593          	li	a1,57
ffffffffc02081bc:	00006517          	auipc	a0,0x6
ffffffffc02081c0:	65450513          	addi	a0,a0,1620 # ffffffffc020e810 <syscalls+0xcc0>
ffffffffc02081c4:	adaf80ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc02081c8:	00006697          	auipc	a3,0x6
ffffffffc02081cc:	63868693          	addi	a3,a3,1592 # ffffffffc020e800 <syscalls+0xcb0>
ffffffffc02081d0:	00003617          	auipc	a2,0x3
ffffffffc02081d4:	7e860613          	addi	a2,a2,2024 # ffffffffc020b9b8 <commands+0x210>
ffffffffc02081d8:	03300593          	li	a1,51
ffffffffc02081dc:	00006517          	auipc	a0,0x6
ffffffffc02081e0:	63450513          	addi	a0,a0,1588 # ffffffffc020e810 <syscalls+0xcc0>
ffffffffc02081e4:	abaf80ef          	jal	ra,ffffffffc020049e <__panic>

ffffffffc02081e8 <vfs_lookup>:
ffffffffc02081e8:	7139                	addi	sp,sp,-64
ffffffffc02081ea:	f426                	sd	s1,40(sp)
ffffffffc02081ec:	0830                	addi	a2,sp,24
ffffffffc02081ee:	84ae                	mv	s1,a1
ffffffffc02081f0:	002c                	addi	a1,sp,8
ffffffffc02081f2:	f822                	sd	s0,48(sp)
ffffffffc02081f4:	fc06                	sd	ra,56(sp)
ffffffffc02081f6:	f04a                	sd	s2,32(sp)
ffffffffc02081f8:	e42a                	sd	a0,8(sp)
ffffffffc02081fa:	ed7ff0ef          	jal	ra,ffffffffc02080d0 <get_device>
ffffffffc02081fe:	842a                	mv	s0,a0
ffffffffc0208200:	ed1d                	bnez	a0,ffffffffc020823e <vfs_lookup+0x56>
ffffffffc0208202:	67a2                	ld	a5,8(sp)
ffffffffc0208204:	6962                	ld	s2,24(sp)
ffffffffc0208206:	0007c783          	lbu	a5,0(a5)
ffffffffc020820a:	c3a9                	beqz	a5,ffffffffc020824c <vfs_lookup+0x64>
ffffffffc020820c:	04090963          	beqz	s2,ffffffffc020825e <vfs_lookup+0x76>
ffffffffc0208210:	07093783          	ld	a5,112(s2)
ffffffffc0208214:	c7a9                	beqz	a5,ffffffffc020825e <vfs_lookup+0x76>
ffffffffc0208216:	7bbc                	ld	a5,112(a5)
ffffffffc0208218:	c3b9                	beqz	a5,ffffffffc020825e <vfs_lookup+0x76>
ffffffffc020821a:	854a                	mv	a0,s2
ffffffffc020821c:	00006597          	auipc	a1,0x6
ffffffffc0208220:	67458593          	addi	a1,a1,1652 # ffffffffc020e890 <syscalls+0xd40>
ffffffffc0208224:	e06ff0ef          	jal	ra,ffffffffc020782a <inode_check>
ffffffffc0208228:	07093783          	ld	a5,112(s2)
ffffffffc020822c:	65a2                	ld	a1,8(sp)
ffffffffc020822e:	6562                	ld	a0,24(sp)
ffffffffc0208230:	7bbc                	ld	a5,112(a5)
ffffffffc0208232:	8626                	mv	a2,s1
ffffffffc0208234:	9782                	jalr	a5
ffffffffc0208236:	842a                	mv	s0,a0
ffffffffc0208238:	6562                	ld	a0,24(sp)
ffffffffc020823a:	ea6ff0ef          	jal	ra,ffffffffc02078e0 <inode_ref_dec>
ffffffffc020823e:	70e2                	ld	ra,56(sp)
ffffffffc0208240:	8522                	mv	a0,s0
ffffffffc0208242:	7442                	ld	s0,48(sp)
ffffffffc0208244:	74a2                	ld	s1,40(sp)
ffffffffc0208246:	7902                	ld	s2,32(sp)
ffffffffc0208248:	6121                	addi	sp,sp,64
ffffffffc020824a:	8082                	ret
ffffffffc020824c:	70e2                	ld	ra,56(sp)
ffffffffc020824e:	8522                	mv	a0,s0
ffffffffc0208250:	7442                	ld	s0,48(sp)
ffffffffc0208252:	0124b023          	sd	s2,0(s1)
ffffffffc0208256:	74a2                	ld	s1,40(sp)
ffffffffc0208258:	7902                	ld	s2,32(sp)
ffffffffc020825a:	6121                	addi	sp,sp,64
ffffffffc020825c:	8082                	ret
ffffffffc020825e:	00006697          	auipc	a3,0x6
ffffffffc0208262:	5e268693          	addi	a3,a3,1506 # ffffffffc020e840 <syscalls+0xcf0>
ffffffffc0208266:	00003617          	auipc	a2,0x3
ffffffffc020826a:	75260613          	addi	a2,a2,1874 # ffffffffc020b9b8 <commands+0x210>
ffffffffc020826e:	04f00593          	li	a1,79
ffffffffc0208272:	00006517          	auipc	a0,0x6
ffffffffc0208276:	59e50513          	addi	a0,a0,1438 # ffffffffc020e810 <syscalls+0xcc0>
ffffffffc020827a:	a24f80ef          	jal	ra,ffffffffc020049e <__panic>

ffffffffc020827e <vfs_lookup_parent>:
ffffffffc020827e:	7139                	addi	sp,sp,-64
ffffffffc0208280:	f822                	sd	s0,48(sp)
ffffffffc0208282:	f426                	sd	s1,40(sp)
ffffffffc0208284:	842e                	mv	s0,a1
ffffffffc0208286:	84b2                	mv	s1,a2
ffffffffc0208288:	002c                	addi	a1,sp,8
ffffffffc020828a:	0830                	addi	a2,sp,24
ffffffffc020828c:	fc06                	sd	ra,56(sp)
ffffffffc020828e:	e42a                	sd	a0,8(sp)
ffffffffc0208290:	e41ff0ef          	jal	ra,ffffffffc02080d0 <get_device>
ffffffffc0208294:	e509                	bnez	a0,ffffffffc020829e <vfs_lookup_parent+0x20>
ffffffffc0208296:	67a2                	ld	a5,8(sp)
ffffffffc0208298:	e09c                	sd	a5,0(s1)
ffffffffc020829a:	67e2                	ld	a5,24(sp)
ffffffffc020829c:	e01c                	sd	a5,0(s0)
ffffffffc020829e:	70e2                	ld	ra,56(sp)
ffffffffc02082a0:	7442                	ld	s0,48(sp)
ffffffffc02082a2:	74a2                	ld	s1,40(sp)
ffffffffc02082a4:	6121                	addi	sp,sp,64
ffffffffc02082a6:	8082                	ret

ffffffffc02082a8 <vfs_get_curdir>:
ffffffffc02082a8:	0008e797          	auipc	a5,0x8e
ffffffffc02082ac:	6187b783          	ld	a5,1560(a5) # ffffffffc02968c0 <current>
ffffffffc02082b0:	1487b783          	ld	a5,328(a5)
ffffffffc02082b4:	1101                	addi	sp,sp,-32
ffffffffc02082b6:	e426                	sd	s1,8(sp)
ffffffffc02082b8:	6384                	ld	s1,0(a5)
ffffffffc02082ba:	ec06                	sd	ra,24(sp)
ffffffffc02082bc:	e822                	sd	s0,16(sp)
ffffffffc02082be:	cc81                	beqz	s1,ffffffffc02082d6 <vfs_get_curdir+0x2e>
ffffffffc02082c0:	842a                	mv	s0,a0
ffffffffc02082c2:	8526                	mv	a0,s1
ffffffffc02082c4:	d4eff0ef          	jal	ra,ffffffffc0207812 <inode_ref_inc>
ffffffffc02082c8:	4501                	li	a0,0
ffffffffc02082ca:	e004                	sd	s1,0(s0)
ffffffffc02082cc:	60e2                	ld	ra,24(sp)
ffffffffc02082ce:	6442                	ld	s0,16(sp)
ffffffffc02082d0:	64a2                	ld	s1,8(sp)
ffffffffc02082d2:	6105                	addi	sp,sp,32
ffffffffc02082d4:	8082                	ret
ffffffffc02082d6:	5541                	li	a0,-16
ffffffffc02082d8:	bfd5                	j	ffffffffc02082cc <vfs_get_curdir+0x24>

ffffffffc02082da <vfs_set_curdir>:
ffffffffc02082da:	7139                	addi	sp,sp,-64
ffffffffc02082dc:	f04a                	sd	s2,32(sp)
ffffffffc02082de:	0008e917          	auipc	s2,0x8e
ffffffffc02082e2:	5e290913          	addi	s2,s2,1506 # ffffffffc02968c0 <current>
ffffffffc02082e6:	00093783          	ld	a5,0(s2)
ffffffffc02082ea:	f822                	sd	s0,48(sp)
ffffffffc02082ec:	842a                	mv	s0,a0
ffffffffc02082ee:	1487b503          	ld	a0,328(a5)
ffffffffc02082f2:	ec4e                	sd	s3,24(sp)
ffffffffc02082f4:	fc06                	sd	ra,56(sp)
ffffffffc02082f6:	f426                	sd	s1,40(sp)
ffffffffc02082f8:	ecbfc0ef          	jal	ra,ffffffffc02051c2 <lock_files>
ffffffffc02082fc:	00093783          	ld	a5,0(s2)
ffffffffc0208300:	1487b503          	ld	a0,328(a5)
ffffffffc0208304:	00053983          	ld	s3,0(a0)
ffffffffc0208308:	07340963          	beq	s0,s3,ffffffffc020837a <vfs_set_curdir+0xa0>
ffffffffc020830c:	cc39                	beqz	s0,ffffffffc020836a <vfs_set_curdir+0x90>
ffffffffc020830e:	783c                	ld	a5,112(s0)
ffffffffc0208310:	c7bd                	beqz	a5,ffffffffc020837e <vfs_set_curdir+0xa4>
ffffffffc0208312:	6bbc                	ld	a5,80(a5)
ffffffffc0208314:	c7ad                	beqz	a5,ffffffffc020837e <vfs_set_curdir+0xa4>
ffffffffc0208316:	00006597          	auipc	a1,0x6
ffffffffc020831a:	5ea58593          	addi	a1,a1,1514 # ffffffffc020e900 <syscalls+0xdb0>
ffffffffc020831e:	8522                	mv	a0,s0
ffffffffc0208320:	d0aff0ef          	jal	ra,ffffffffc020782a <inode_check>
ffffffffc0208324:	783c                	ld	a5,112(s0)
ffffffffc0208326:	006c                	addi	a1,sp,12
ffffffffc0208328:	8522                	mv	a0,s0
ffffffffc020832a:	6bbc                	ld	a5,80(a5)
ffffffffc020832c:	9782                	jalr	a5
ffffffffc020832e:	84aa                	mv	s1,a0
ffffffffc0208330:	e901                	bnez	a0,ffffffffc0208340 <vfs_set_curdir+0x66>
ffffffffc0208332:	47b2                	lw	a5,12(sp)
ffffffffc0208334:	669d                	lui	a3,0x7
ffffffffc0208336:	6709                	lui	a4,0x2
ffffffffc0208338:	8ff5                	and	a5,a5,a3
ffffffffc020833a:	54b9                	li	s1,-18
ffffffffc020833c:	02e78063          	beq	a5,a4,ffffffffc020835c <vfs_set_curdir+0x82>
ffffffffc0208340:	00093783          	ld	a5,0(s2)
ffffffffc0208344:	1487b503          	ld	a0,328(a5)
ffffffffc0208348:	e81fc0ef          	jal	ra,ffffffffc02051c8 <unlock_files>
ffffffffc020834c:	70e2                	ld	ra,56(sp)
ffffffffc020834e:	7442                	ld	s0,48(sp)
ffffffffc0208350:	7902                	ld	s2,32(sp)
ffffffffc0208352:	69e2                	ld	s3,24(sp)
ffffffffc0208354:	8526                	mv	a0,s1
ffffffffc0208356:	74a2                	ld	s1,40(sp)
ffffffffc0208358:	6121                	addi	sp,sp,64
ffffffffc020835a:	8082                	ret
ffffffffc020835c:	8522                	mv	a0,s0
ffffffffc020835e:	cb4ff0ef          	jal	ra,ffffffffc0207812 <inode_ref_inc>
ffffffffc0208362:	00093783          	ld	a5,0(s2)
ffffffffc0208366:	1487b503          	ld	a0,328(a5)
ffffffffc020836a:	e100                	sd	s0,0(a0)
ffffffffc020836c:	4481                	li	s1,0
ffffffffc020836e:	fc098de3          	beqz	s3,ffffffffc0208348 <vfs_set_curdir+0x6e>
ffffffffc0208372:	854e                	mv	a0,s3
ffffffffc0208374:	d6cff0ef          	jal	ra,ffffffffc02078e0 <inode_ref_dec>
ffffffffc0208378:	b7e1                	j	ffffffffc0208340 <vfs_set_curdir+0x66>
ffffffffc020837a:	4481                	li	s1,0
ffffffffc020837c:	b7f1                	j	ffffffffc0208348 <vfs_set_curdir+0x6e>
ffffffffc020837e:	00006697          	auipc	a3,0x6
ffffffffc0208382:	51a68693          	addi	a3,a3,1306 # ffffffffc020e898 <syscalls+0xd48>
ffffffffc0208386:	00003617          	auipc	a2,0x3
ffffffffc020838a:	63260613          	addi	a2,a2,1586 # ffffffffc020b9b8 <commands+0x210>
ffffffffc020838e:	04300593          	li	a1,67
ffffffffc0208392:	00006517          	auipc	a0,0x6
ffffffffc0208396:	55650513          	addi	a0,a0,1366 # ffffffffc020e8e8 <syscalls+0xd98>
ffffffffc020839a:	904f80ef          	jal	ra,ffffffffc020049e <__panic>

ffffffffc020839e <vfs_chdir>:
ffffffffc020839e:	1101                	addi	sp,sp,-32
ffffffffc02083a0:	002c                	addi	a1,sp,8
ffffffffc02083a2:	e822                	sd	s0,16(sp)
ffffffffc02083a4:	ec06                	sd	ra,24(sp)
ffffffffc02083a6:	e43ff0ef          	jal	ra,ffffffffc02081e8 <vfs_lookup>
ffffffffc02083aa:	842a                	mv	s0,a0
ffffffffc02083ac:	c511                	beqz	a0,ffffffffc02083b8 <vfs_chdir+0x1a>
ffffffffc02083ae:	60e2                	ld	ra,24(sp)
ffffffffc02083b0:	8522                	mv	a0,s0
ffffffffc02083b2:	6442                	ld	s0,16(sp)
ffffffffc02083b4:	6105                	addi	sp,sp,32
ffffffffc02083b6:	8082                	ret
ffffffffc02083b8:	6522                	ld	a0,8(sp)
ffffffffc02083ba:	f21ff0ef          	jal	ra,ffffffffc02082da <vfs_set_curdir>
ffffffffc02083be:	842a                	mv	s0,a0
ffffffffc02083c0:	6522                	ld	a0,8(sp)
ffffffffc02083c2:	d1eff0ef          	jal	ra,ffffffffc02078e0 <inode_ref_dec>
ffffffffc02083c6:	60e2                	ld	ra,24(sp)
ffffffffc02083c8:	8522                	mv	a0,s0
ffffffffc02083ca:	6442                	ld	s0,16(sp)
ffffffffc02083cc:	6105                	addi	sp,sp,32
ffffffffc02083ce:	8082                	ret

ffffffffc02083d0 <vfs_getcwd>:
ffffffffc02083d0:	0008e797          	auipc	a5,0x8e
ffffffffc02083d4:	4f07b783          	ld	a5,1264(a5) # ffffffffc02968c0 <current>
ffffffffc02083d8:	1487b783          	ld	a5,328(a5)
ffffffffc02083dc:	7179                	addi	sp,sp,-48
ffffffffc02083de:	ec26                	sd	s1,24(sp)
ffffffffc02083e0:	6384                	ld	s1,0(a5)
ffffffffc02083e2:	f406                	sd	ra,40(sp)
ffffffffc02083e4:	f022                	sd	s0,32(sp)
ffffffffc02083e6:	e84a                	sd	s2,16(sp)
ffffffffc02083e8:	ccbd                	beqz	s1,ffffffffc0208466 <vfs_getcwd+0x96>
ffffffffc02083ea:	892a                	mv	s2,a0
ffffffffc02083ec:	8526                	mv	a0,s1
ffffffffc02083ee:	c24ff0ef          	jal	ra,ffffffffc0207812 <inode_ref_inc>
ffffffffc02083f2:	74a8                	ld	a0,104(s1)
ffffffffc02083f4:	c93d                	beqz	a0,ffffffffc020846a <vfs_getcwd+0x9a>
ffffffffc02083f6:	9b3ff0ef          	jal	ra,ffffffffc0207da8 <vfs_get_devname>
ffffffffc02083fa:	842a                	mv	s0,a0
ffffffffc02083fc:	036030ef          	jal	ra,ffffffffc020b432 <strlen>
ffffffffc0208400:	862a                	mv	a2,a0
ffffffffc0208402:	85a2                	mv	a1,s0
ffffffffc0208404:	4701                	li	a4,0
ffffffffc0208406:	4685                	li	a3,1
ffffffffc0208408:	854a                	mv	a0,s2
ffffffffc020840a:	fe3fc0ef          	jal	ra,ffffffffc02053ec <iobuf_move>
ffffffffc020840e:	842a                	mv	s0,a0
ffffffffc0208410:	c919                	beqz	a0,ffffffffc0208426 <vfs_getcwd+0x56>
ffffffffc0208412:	8526                	mv	a0,s1
ffffffffc0208414:	cccff0ef          	jal	ra,ffffffffc02078e0 <inode_ref_dec>
ffffffffc0208418:	70a2                	ld	ra,40(sp)
ffffffffc020841a:	8522                	mv	a0,s0
ffffffffc020841c:	7402                	ld	s0,32(sp)
ffffffffc020841e:	64e2                	ld	s1,24(sp)
ffffffffc0208420:	6942                	ld	s2,16(sp)
ffffffffc0208422:	6145                	addi	sp,sp,48
ffffffffc0208424:	8082                	ret
ffffffffc0208426:	03a00793          	li	a5,58
ffffffffc020842a:	4701                	li	a4,0
ffffffffc020842c:	4685                	li	a3,1
ffffffffc020842e:	4605                	li	a2,1
ffffffffc0208430:	00f10593          	addi	a1,sp,15
ffffffffc0208434:	854a                	mv	a0,s2
ffffffffc0208436:	00f107a3          	sb	a5,15(sp)
ffffffffc020843a:	fb3fc0ef          	jal	ra,ffffffffc02053ec <iobuf_move>
ffffffffc020843e:	842a                	mv	s0,a0
ffffffffc0208440:	f969                	bnez	a0,ffffffffc0208412 <vfs_getcwd+0x42>
ffffffffc0208442:	78bc                	ld	a5,112(s1)
ffffffffc0208444:	c3b9                	beqz	a5,ffffffffc020848a <vfs_getcwd+0xba>
ffffffffc0208446:	7f9c                	ld	a5,56(a5)
ffffffffc0208448:	c3a9                	beqz	a5,ffffffffc020848a <vfs_getcwd+0xba>
ffffffffc020844a:	00006597          	auipc	a1,0x6
ffffffffc020844e:	51658593          	addi	a1,a1,1302 # ffffffffc020e960 <syscalls+0xe10>
ffffffffc0208452:	8526                	mv	a0,s1
ffffffffc0208454:	bd6ff0ef          	jal	ra,ffffffffc020782a <inode_check>
ffffffffc0208458:	78bc                	ld	a5,112(s1)
ffffffffc020845a:	85ca                	mv	a1,s2
ffffffffc020845c:	8526                	mv	a0,s1
ffffffffc020845e:	7f9c                	ld	a5,56(a5)
ffffffffc0208460:	9782                	jalr	a5
ffffffffc0208462:	842a                	mv	s0,a0
ffffffffc0208464:	b77d                	j	ffffffffc0208412 <vfs_getcwd+0x42>
ffffffffc0208466:	5441                	li	s0,-16
ffffffffc0208468:	bf45                	j	ffffffffc0208418 <vfs_getcwd+0x48>
ffffffffc020846a:	00006697          	auipc	a3,0x6
ffffffffc020846e:	3be68693          	addi	a3,a3,958 # ffffffffc020e828 <syscalls+0xcd8>
ffffffffc0208472:	00003617          	auipc	a2,0x3
ffffffffc0208476:	54660613          	addi	a2,a2,1350 # ffffffffc020b9b8 <commands+0x210>
ffffffffc020847a:	06e00593          	li	a1,110
ffffffffc020847e:	00006517          	auipc	a0,0x6
ffffffffc0208482:	46a50513          	addi	a0,a0,1130 # ffffffffc020e8e8 <syscalls+0xd98>
ffffffffc0208486:	818f80ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc020848a:	00006697          	auipc	a3,0x6
ffffffffc020848e:	47e68693          	addi	a3,a3,1150 # ffffffffc020e908 <syscalls+0xdb8>
ffffffffc0208492:	00003617          	auipc	a2,0x3
ffffffffc0208496:	52660613          	addi	a2,a2,1318 # ffffffffc020b9b8 <commands+0x210>
ffffffffc020849a:	07800593          	li	a1,120
ffffffffc020849e:	00006517          	auipc	a0,0x6
ffffffffc02084a2:	44a50513          	addi	a0,a0,1098 # ffffffffc020e8e8 <syscalls+0xd98>
ffffffffc02084a6:	ff9f70ef          	jal	ra,ffffffffc020049e <__panic>

ffffffffc02084aa <dev_lookup>:
ffffffffc02084aa:	0005c783          	lbu	a5,0(a1)
ffffffffc02084ae:	e385                	bnez	a5,ffffffffc02084ce <dev_lookup+0x24>
ffffffffc02084b0:	1101                	addi	sp,sp,-32
ffffffffc02084b2:	e822                	sd	s0,16(sp)
ffffffffc02084b4:	e426                	sd	s1,8(sp)
ffffffffc02084b6:	ec06                	sd	ra,24(sp)
ffffffffc02084b8:	84aa                	mv	s1,a0
ffffffffc02084ba:	8432                	mv	s0,a2
ffffffffc02084bc:	b56ff0ef          	jal	ra,ffffffffc0207812 <inode_ref_inc>
ffffffffc02084c0:	60e2                	ld	ra,24(sp)
ffffffffc02084c2:	e004                	sd	s1,0(s0)
ffffffffc02084c4:	6442                	ld	s0,16(sp)
ffffffffc02084c6:	64a2                	ld	s1,8(sp)
ffffffffc02084c8:	4501                	li	a0,0
ffffffffc02084ca:	6105                	addi	sp,sp,32
ffffffffc02084cc:	8082                	ret
ffffffffc02084ce:	5541                	li	a0,-16
ffffffffc02084d0:	8082                	ret

ffffffffc02084d2 <dev_fstat>:
ffffffffc02084d2:	1101                	addi	sp,sp,-32
ffffffffc02084d4:	e426                	sd	s1,8(sp)
ffffffffc02084d6:	84ae                	mv	s1,a1
ffffffffc02084d8:	e822                	sd	s0,16(sp)
ffffffffc02084da:	02000613          	li	a2,32
ffffffffc02084de:	842a                	mv	s0,a0
ffffffffc02084e0:	4581                	li	a1,0
ffffffffc02084e2:	8526                	mv	a0,s1
ffffffffc02084e4:	ec06                	sd	ra,24(sp)
ffffffffc02084e6:	7ef020ef          	jal	ra,ffffffffc020b4d4 <memset>
ffffffffc02084ea:	c429                	beqz	s0,ffffffffc0208534 <dev_fstat+0x62>
ffffffffc02084ec:	783c                	ld	a5,112(s0)
ffffffffc02084ee:	c3b9                	beqz	a5,ffffffffc0208534 <dev_fstat+0x62>
ffffffffc02084f0:	6bbc                	ld	a5,80(a5)
ffffffffc02084f2:	c3a9                	beqz	a5,ffffffffc0208534 <dev_fstat+0x62>
ffffffffc02084f4:	00006597          	auipc	a1,0x6
ffffffffc02084f8:	40c58593          	addi	a1,a1,1036 # ffffffffc020e900 <syscalls+0xdb0>
ffffffffc02084fc:	8522                	mv	a0,s0
ffffffffc02084fe:	b2cff0ef          	jal	ra,ffffffffc020782a <inode_check>
ffffffffc0208502:	783c                	ld	a5,112(s0)
ffffffffc0208504:	85a6                	mv	a1,s1
ffffffffc0208506:	8522                	mv	a0,s0
ffffffffc0208508:	6bbc                	ld	a5,80(a5)
ffffffffc020850a:	9782                	jalr	a5
ffffffffc020850c:	ed19                	bnez	a0,ffffffffc020852a <dev_fstat+0x58>
ffffffffc020850e:	4c38                	lw	a4,88(s0)
ffffffffc0208510:	6785                	lui	a5,0x1
ffffffffc0208512:	23478793          	addi	a5,a5,564 # 1234 <_binary_bin_swap_img_size-0x6acc>
ffffffffc0208516:	02f71f63          	bne	a4,a5,ffffffffc0208554 <dev_fstat+0x82>
ffffffffc020851a:	6018                	ld	a4,0(s0)
ffffffffc020851c:	641c                	ld	a5,8(s0)
ffffffffc020851e:	4685                	li	a3,1
ffffffffc0208520:	e494                	sd	a3,8(s1)
ffffffffc0208522:	02e787b3          	mul	a5,a5,a4
ffffffffc0208526:	e898                	sd	a4,16(s1)
ffffffffc0208528:	ec9c                	sd	a5,24(s1)
ffffffffc020852a:	60e2                	ld	ra,24(sp)
ffffffffc020852c:	6442                	ld	s0,16(sp)
ffffffffc020852e:	64a2                	ld	s1,8(sp)
ffffffffc0208530:	6105                	addi	sp,sp,32
ffffffffc0208532:	8082                	ret
ffffffffc0208534:	00006697          	auipc	a3,0x6
ffffffffc0208538:	36468693          	addi	a3,a3,868 # ffffffffc020e898 <syscalls+0xd48>
ffffffffc020853c:	00003617          	auipc	a2,0x3
ffffffffc0208540:	47c60613          	addi	a2,a2,1148 # ffffffffc020b9b8 <commands+0x210>
ffffffffc0208544:	04200593          	li	a1,66
ffffffffc0208548:	00006517          	auipc	a0,0x6
ffffffffc020854c:	42850513          	addi	a0,a0,1064 # ffffffffc020e970 <syscalls+0xe20>
ffffffffc0208550:	f4ff70ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc0208554:	00006697          	auipc	a3,0x6
ffffffffc0208558:	10c68693          	addi	a3,a3,268 # ffffffffc020e660 <syscalls+0xb10>
ffffffffc020855c:	00003617          	auipc	a2,0x3
ffffffffc0208560:	45c60613          	addi	a2,a2,1116 # ffffffffc020b9b8 <commands+0x210>
ffffffffc0208564:	04500593          	li	a1,69
ffffffffc0208568:	00006517          	auipc	a0,0x6
ffffffffc020856c:	40850513          	addi	a0,a0,1032 # ffffffffc020e970 <syscalls+0xe20>
ffffffffc0208570:	f2ff70ef          	jal	ra,ffffffffc020049e <__panic>

ffffffffc0208574 <dev_ioctl>:
ffffffffc0208574:	c909                	beqz	a0,ffffffffc0208586 <dev_ioctl+0x12>
ffffffffc0208576:	4d34                	lw	a3,88(a0)
ffffffffc0208578:	6705                	lui	a4,0x1
ffffffffc020857a:	23470713          	addi	a4,a4,564 # 1234 <_binary_bin_swap_img_size-0x6acc>
ffffffffc020857e:	00e69463          	bne	a3,a4,ffffffffc0208586 <dev_ioctl+0x12>
ffffffffc0208582:	751c                	ld	a5,40(a0)
ffffffffc0208584:	8782                	jr	a5
ffffffffc0208586:	1141                	addi	sp,sp,-16
ffffffffc0208588:	00006697          	auipc	a3,0x6
ffffffffc020858c:	0d868693          	addi	a3,a3,216 # ffffffffc020e660 <syscalls+0xb10>
ffffffffc0208590:	00003617          	auipc	a2,0x3
ffffffffc0208594:	42860613          	addi	a2,a2,1064 # ffffffffc020b9b8 <commands+0x210>
ffffffffc0208598:	03500593          	li	a1,53
ffffffffc020859c:	00006517          	auipc	a0,0x6
ffffffffc02085a0:	3d450513          	addi	a0,a0,980 # ffffffffc020e970 <syscalls+0xe20>
ffffffffc02085a4:	e406                	sd	ra,8(sp)
ffffffffc02085a6:	ef9f70ef          	jal	ra,ffffffffc020049e <__panic>

ffffffffc02085aa <dev_tryseek>:
ffffffffc02085aa:	c51d                	beqz	a0,ffffffffc02085d8 <dev_tryseek+0x2e>
ffffffffc02085ac:	4d38                	lw	a4,88(a0)
ffffffffc02085ae:	6785                	lui	a5,0x1
ffffffffc02085b0:	23478793          	addi	a5,a5,564 # 1234 <_binary_bin_swap_img_size-0x6acc>
ffffffffc02085b4:	02f71263          	bne	a4,a5,ffffffffc02085d8 <dev_tryseek+0x2e>
ffffffffc02085b8:	611c                	ld	a5,0(a0)
ffffffffc02085ba:	cf89                	beqz	a5,ffffffffc02085d4 <dev_tryseek+0x2a>
ffffffffc02085bc:	6518                	ld	a4,8(a0)
ffffffffc02085be:	02e5f6b3          	remu	a3,a1,a4
ffffffffc02085c2:	ea89                	bnez	a3,ffffffffc02085d4 <dev_tryseek+0x2a>
ffffffffc02085c4:	0005c863          	bltz	a1,ffffffffc02085d4 <dev_tryseek+0x2a>
ffffffffc02085c8:	02e787b3          	mul	a5,a5,a4
ffffffffc02085cc:	00f5f463          	bgeu	a1,a5,ffffffffc02085d4 <dev_tryseek+0x2a>
ffffffffc02085d0:	4501                	li	a0,0
ffffffffc02085d2:	8082                	ret
ffffffffc02085d4:	5575                	li	a0,-3
ffffffffc02085d6:	8082                	ret
ffffffffc02085d8:	1141                	addi	sp,sp,-16
ffffffffc02085da:	00006697          	auipc	a3,0x6
ffffffffc02085de:	08668693          	addi	a3,a3,134 # ffffffffc020e660 <syscalls+0xb10>
ffffffffc02085e2:	00003617          	auipc	a2,0x3
ffffffffc02085e6:	3d660613          	addi	a2,a2,982 # ffffffffc020b9b8 <commands+0x210>
ffffffffc02085ea:	05f00593          	li	a1,95
ffffffffc02085ee:	00006517          	auipc	a0,0x6
ffffffffc02085f2:	38250513          	addi	a0,a0,898 # ffffffffc020e970 <syscalls+0xe20>
ffffffffc02085f6:	e406                	sd	ra,8(sp)
ffffffffc02085f8:	ea7f70ef          	jal	ra,ffffffffc020049e <__panic>

ffffffffc02085fc <dev_gettype>:
ffffffffc02085fc:	c10d                	beqz	a0,ffffffffc020861e <dev_gettype+0x22>
ffffffffc02085fe:	4d38                	lw	a4,88(a0)
ffffffffc0208600:	6785                	lui	a5,0x1
ffffffffc0208602:	23478793          	addi	a5,a5,564 # 1234 <_binary_bin_swap_img_size-0x6acc>
ffffffffc0208606:	00f71c63          	bne	a4,a5,ffffffffc020861e <dev_gettype+0x22>
ffffffffc020860a:	6118                	ld	a4,0(a0)
ffffffffc020860c:	6795                	lui	a5,0x5
ffffffffc020860e:	c701                	beqz	a4,ffffffffc0208616 <dev_gettype+0x1a>
ffffffffc0208610:	c19c                	sw	a5,0(a1)
ffffffffc0208612:	4501                	li	a0,0
ffffffffc0208614:	8082                	ret
ffffffffc0208616:	6791                	lui	a5,0x4
ffffffffc0208618:	c19c                	sw	a5,0(a1)
ffffffffc020861a:	4501                	li	a0,0
ffffffffc020861c:	8082                	ret
ffffffffc020861e:	1141                	addi	sp,sp,-16
ffffffffc0208620:	00006697          	auipc	a3,0x6
ffffffffc0208624:	04068693          	addi	a3,a3,64 # ffffffffc020e660 <syscalls+0xb10>
ffffffffc0208628:	00003617          	auipc	a2,0x3
ffffffffc020862c:	39060613          	addi	a2,a2,912 # ffffffffc020b9b8 <commands+0x210>
ffffffffc0208630:	05300593          	li	a1,83
ffffffffc0208634:	00006517          	auipc	a0,0x6
ffffffffc0208638:	33c50513          	addi	a0,a0,828 # ffffffffc020e970 <syscalls+0xe20>
ffffffffc020863c:	e406                	sd	ra,8(sp)
ffffffffc020863e:	e61f70ef          	jal	ra,ffffffffc020049e <__panic>

ffffffffc0208642 <dev_write>:
ffffffffc0208642:	c911                	beqz	a0,ffffffffc0208656 <dev_write+0x14>
ffffffffc0208644:	4d34                	lw	a3,88(a0)
ffffffffc0208646:	6705                	lui	a4,0x1
ffffffffc0208648:	23470713          	addi	a4,a4,564 # 1234 <_binary_bin_swap_img_size-0x6acc>
ffffffffc020864c:	00e69563          	bne	a3,a4,ffffffffc0208656 <dev_write+0x14>
ffffffffc0208650:	711c                	ld	a5,32(a0)
ffffffffc0208652:	4605                	li	a2,1
ffffffffc0208654:	8782                	jr	a5
ffffffffc0208656:	1141                	addi	sp,sp,-16
ffffffffc0208658:	00006697          	auipc	a3,0x6
ffffffffc020865c:	00868693          	addi	a3,a3,8 # ffffffffc020e660 <syscalls+0xb10>
ffffffffc0208660:	00003617          	auipc	a2,0x3
ffffffffc0208664:	35860613          	addi	a2,a2,856 # ffffffffc020b9b8 <commands+0x210>
ffffffffc0208668:	02c00593          	li	a1,44
ffffffffc020866c:	00006517          	auipc	a0,0x6
ffffffffc0208670:	30450513          	addi	a0,a0,772 # ffffffffc020e970 <syscalls+0xe20>
ffffffffc0208674:	e406                	sd	ra,8(sp)
ffffffffc0208676:	e29f70ef          	jal	ra,ffffffffc020049e <__panic>

ffffffffc020867a <dev_read>:
ffffffffc020867a:	c911                	beqz	a0,ffffffffc020868e <dev_read+0x14>
ffffffffc020867c:	4d34                	lw	a3,88(a0)
ffffffffc020867e:	6705                	lui	a4,0x1
ffffffffc0208680:	23470713          	addi	a4,a4,564 # 1234 <_binary_bin_swap_img_size-0x6acc>
ffffffffc0208684:	00e69563          	bne	a3,a4,ffffffffc020868e <dev_read+0x14>
ffffffffc0208688:	711c                	ld	a5,32(a0)
ffffffffc020868a:	4601                	li	a2,0
ffffffffc020868c:	8782                	jr	a5
ffffffffc020868e:	1141                	addi	sp,sp,-16
ffffffffc0208690:	00006697          	auipc	a3,0x6
ffffffffc0208694:	fd068693          	addi	a3,a3,-48 # ffffffffc020e660 <syscalls+0xb10>
ffffffffc0208698:	00003617          	auipc	a2,0x3
ffffffffc020869c:	32060613          	addi	a2,a2,800 # ffffffffc020b9b8 <commands+0x210>
ffffffffc02086a0:	02300593          	li	a1,35
ffffffffc02086a4:	00006517          	auipc	a0,0x6
ffffffffc02086a8:	2cc50513          	addi	a0,a0,716 # ffffffffc020e970 <syscalls+0xe20>
ffffffffc02086ac:	e406                	sd	ra,8(sp)
ffffffffc02086ae:	df1f70ef          	jal	ra,ffffffffc020049e <__panic>

ffffffffc02086b2 <dev_close>:
ffffffffc02086b2:	c909                	beqz	a0,ffffffffc02086c4 <dev_close+0x12>
ffffffffc02086b4:	4d34                	lw	a3,88(a0)
ffffffffc02086b6:	6705                	lui	a4,0x1
ffffffffc02086b8:	23470713          	addi	a4,a4,564 # 1234 <_binary_bin_swap_img_size-0x6acc>
ffffffffc02086bc:	00e69463          	bne	a3,a4,ffffffffc02086c4 <dev_close+0x12>
ffffffffc02086c0:	6d1c                	ld	a5,24(a0)
ffffffffc02086c2:	8782                	jr	a5
ffffffffc02086c4:	1141                	addi	sp,sp,-16
ffffffffc02086c6:	00006697          	auipc	a3,0x6
ffffffffc02086ca:	f9a68693          	addi	a3,a3,-102 # ffffffffc020e660 <syscalls+0xb10>
ffffffffc02086ce:	00003617          	auipc	a2,0x3
ffffffffc02086d2:	2ea60613          	addi	a2,a2,746 # ffffffffc020b9b8 <commands+0x210>
ffffffffc02086d6:	45e9                	li	a1,26
ffffffffc02086d8:	00006517          	auipc	a0,0x6
ffffffffc02086dc:	29850513          	addi	a0,a0,664 # ffffffffc020e970 <syscalls+0xe20>
ffffffffc02086e0:	e406                	sd	ra,8(sp)
ffffffffc02086e2:	dbdf70ef          	jal	ra,ffffffffc020049e <__panic>

ffffffffc02086e6 <dev_open>:
ffffffffc02086e6:	03c5f713          	andi	a4,a1,60
ffffffffc02086ea:	eb11                	bnez	a4,ffffffffc02086fe <dev_open+0x18>
ffffffffc02086ec:	c919                	beqz	a0,ffffffffc0208702 <dev_open+0x1c>
ffffffffc02086ee:	4d34                	lw	a3,88(a0)
ffffffffc02086f0:	6705                	lui	a4,0x1
ffffffffc02086f2:	23470713          	addi	a4,a4,564 # 1234 <_binary_bin_swap_img_size-0x6acc>
ffffffffc02086f6:	00e69663          	bne	a3,a4,ffffffffc0208702 <dev_open+0x1c>
ffffffffc02086fa:	691c                	ld	a5,16(a0)
ffffffffc02086fc:	8782                	jr	a5
ffffffffc02086fe:	5575                	li	a0,-3
ffffffffc0208700:	8082                	ret
ffffffffc0208702:	1141                	addi	sp,sp,-16
ffffffffc0208704:	00006697          	auipc	a3,0x6
ffffffffc0208708:	f5c68693          	addi	a3,a3,-164 # ffffffffc020e660 <syscalls+0xb10>
ffffffffc020870c:	00003617          	auipc	a2,0x3
ffffffffc0208710:	2ac60613          	addi	a2,a2,684 # ffffffffc020b9b8 <commands+0x210>
ffffffffc0208714:	45c5                	li	a1,17
ffffffffc0208716:	00006517          	auipc	a0,0x6
ffffffffc020871a:	25a50513          	addi	a0,a0,602 # ffffffffc020e970 <syscalls+0xe20>
ffffffffc020871e:	e406                	sd	ra,8(sp)
ffffffffc0208720:	d7ff70ef          	jal	ra,ffffffffc020049e <__panic>

ffffffffc0208724 <dev_init>:
ffffffffc0208724:	1141                	addi	sp,sp,-16
ffffffffc0208726:	e406                	sd	ra,8(sp)
ffffffffc0208728:	542000ef          	jal	ra,ffffffffc0208c6a <dev_init_stdin>
ffffffffc020872c:	65a000ef          	jal	ra,ffffffffc0208d86 <dev_init_stdout>
ffffffffc0208730:	60a2                	ld	ra,8(sp)
ffffffffc0208732:	0141                	addi	sp,sp,16
ffffffffc0208734:	a439                	j	ffffffffc0208942 <dev_init_disk0>

ffffffffc0208736 <dev_create_inode>:
ffffffffc0208736:	6505                	lui	a0,0x1
ffffffffc0208738:	1141                	addi	sp,sp,-16
ffffffffc020873a:	23450513          	addi	a0,a0,564 # 1234 <_binary_bin_swap_img_size-0x6acc>
ffffffffc020873e:	e022                	sd	s0,0(sp)
ffffffffc0208740:	e406                	sd	ra,8(sp)
ffffffffc0208742:	852ff0ef          	jal	ra,ffffffffc0207794 <__alloc_inode>
ffffffffc0208746:	842a                	mv	s0,a0
ffffffffc0208748:	c901                	beqz	a0,ffffffffc0208758 <dev_create_inode+0x22>
ffffffffc020874a:	4601                	li	a2,0
ffffffffc020874c:	00006597          	auipc	a1,0x6
ffffffffc0208750:	23c58593          	addi	a1,a1,572 # ffffffffc020e988 <dev_node_ops>
ffffffffc0208754:	85cff0ef          	jal	ra,ffffffffc02077b0 <inode_init>
ffffffffc0208758:	60a2                	ld	ra,8(sp)
ffffffffc020875a:	8522                	mv	a0,s0
ffffffffc020875c:	6402                	ld	s0,0(sp)
ffffffffc020875e:	0141                	addi	sp,sp,16
ffffffffc0208760:	8082                	ret

ffffffffc0208762 <disk0_open>:
ffffffffc0208762:	4501                	li	a0,0
ffffffffc0208764:	8082                	ret

ffffffffc0208766 <disk0_close>:
ffffffffc0208766:	4501                	li	a0,0
ffffffffc0208768:	8082                	ret

ffffffffc020876a <disk0_ioctl>:
ffffffffc020876a:	5531                	li	a0,-20
ffffffffc020876c:	8082                	ret

ffffffffc020876e <disk0_io>:
ffffffffc020876e:	659c                	ld	a5,8(a1)
ffffffffc0208770:	7159                	addi	sp,sp,-112
ffffffffc0208772:	eca6                	sd	s1,88(sp)
ffffffffc0208774:	f45e                	sd	s7,40(sp)
ffffffffc0208776:	6d84                	ld	s1,24(a1)
ffffffffc0208778:	6b85                	lui	s7,0x1
ffffffffc020877a:	1bfd                	addi	s7,s7,-1
ffffffffc020877c:	e4ce                	sd	s3,72(sp)
ffffffffc020877e:	43f7d993          	srai	s3,a5,0x3f
ffffffffc0208782:	0179f9b3          	and	s3,s3,s7
ffffffffc0208786:	99be                	add	s3,s3,a5
ffffffffc0208788:	8fc5                	or	a5,a5,s1
ffffffffc020878a:	f486                	sd	ra,104(sp)
ffffffffc020878c:	f0a2                	sd	s0,96(sp)
ffffffffc020878e:	e8ca                	sd	s2,80(sp)
ffffffffc0208790:	e0d2                	sd	s4,64(sp)
ffffffffc0208792:	fc56                	sd	s5,56(sp)
ffffffffc0208794:	f85a                	sd	s6,48(sp)
ffffffffc0208796:	f062                	sd	s8,32(sp)
ffffffffc0208798:	ec66                	sd	s9,24(sp)
ffffffffc020879a:	e86a                	sd	s10,16(sp)
ffffffffc020879c:	0177f7b3          	and	a5,a5,s7
ffffffffc02087a0:	10079d63          	bnez	a5,ffffffffc02088ba <disk0_io+0x14c>
ffffffffc02087a4:	40c9d993          	srai	s3,s3,0xc
ffffffffc02087a8:	00c4d713          	srli	a4,s1,0xc
ffffffffc02087ac:	2981                	sext.w	s3,s3
ffffffffc02087ae:	2701                	sext.w	a4,a4
ffffffffc02087b0:	00e987bb          	addw	a5,s3,a4
ffffffffc02087b4:	6114                	ld	a3,0(a0)
ffffffffc02087b6:	1782                	slli	a5,a5,0x20
ffffffffc02087b8:	9381                	srli	a5,a5,0x20
ffffffffc02087ba:	10f6e063          	bltu	a3,a5,ffffffffc02088ba <disk0_io+0x14c>
ffffffffc02087be:	4501                	li	a0,0
ffffffffc02087c0:	ef19                	bnez	a4,ffffffffc02087de <disk0_io+0x70>
ffffffffc02087c2:	70a6                	ld	ra,104(sp)
ffffffffc02087c4:	7406                	ld	s0,96(sp)
ffffffffc02087c6:	64e6                	ld	s1,88(sp)
ffffffffc02087c8:	6946                	ld	s2,80(sp)
ffffffffc02087ca:	69a6                	ld	s3,72(sp)
ffffffffc02087cc:	6a06                	ld	s4,64(sp)
ffffffffc02087ce:	7ae2                	ld	s5,56(sp)
ffffffffc02087d0:	7b42                	ld	s6,48(sp)
ffffffffc02087d2:	7ba2                	ld	s7,40(sp)
ffffffffc02087d4:	7c02                	ld	s8,32(sp)
ffffffffc02087d6:	6ce2                	ld	s9,24(sp)
ffffffffc02087d8:	6d42                	ld	s10,16(sp)
ffffffffc02087da:	6165                	addi	sp,sp,112
ffffffffc02087dc:	8082                	ret
ffffffffc02087de:	0008d517          	auipc	a0,0x8d
ffffffffc02087e2:	06250513          	addi	a0,a0,98 # ffffffffc0295840 <disk0_sem>
ffffffffc02087e6:	8b2e                	mv	s6,a1
ffffffffc02087e8:	8c32                	mv	s8,a2
ffffffffc02087ea:	0008ea97          	auipc	s5,0x8e
ffffffffc02087ee:	10ea8a93          	addi	s5,s5,270 # ffffffffc02968f8 <disk0_buffer>
ffffffffc02087f2:	d73fb0ef          	jal	ra,ffffffffc0204564 <down>
ffffffffc02087f6:	6c91                	lui	s9,0x4
ffffffffc02087f8:	e4b9                	bnez	s1,ffffffffc0208846 <disk0_io+0xd8>
ffffffffc02087fa:	a845                	j	ffffffffc02088aa <disk0_io+0x13c>
ffffffffc02087fc:	00c4d413          	srli	s0,s1,0xc
ffffffffc0208800:	0034169b          	slliw	a3,s0,0x3
ffffffffc0208804:	00068d1b          	sext.w	s10,a3
ffffffffc0208808:	1682                	slli	a3,a3,0x20
ffffffffc020880a:	2401                	sext.w	s0,s0
ffffffffc020880c:	9281                	srli	a3,a3,0x20
ffffffffc020880e:	8926                	mv	s2,s1
ffffffffc0208810:	00399a1b          	slliw	s4,s3,0x3
ffffffffc0208814:	862e                	mv	a2,a1
ffffffffc0208816:	4509                	li	a0,2
ffffffffc0208818:	85d2                	mv	a1,s4
ffffffffc020881a:	b26f80ef          	jal	ra,ffffffffc0200b40 <ide_read_secs>
ffffffffc020881e:	e165                	bnez	a0,ffffffffc02088fe <disk0_io+0x190>
ffffffffc0208820:	000ab583          	ld	a1,0(s5)
ffffffffc0208824:	0038                	addi	a4,sp,8
ffffffffc0208826:	4685                	li	a3,1
ffffffffc0208828:	864a                	mv	a2,s2
ffffffffc020882a:	855a                	mv	a0,s6
ffffffffc020882c:	bc1fc0ef          	jal	ra,ffffffffc02053ec <iobuf_move>
ffffffffc0208830:	67a2                	ld	a5,8(sp)
ffffffffc0208832:	09279663          	bne	a5,s2,ffffffffc02088be <disk0_io+0x150>
ffffffffc0208836:	017977b3          	and	a5,s2,s7
ffffffffc020883a:	e3d1                	bnez	a5,ffffffffc02088be <disk0_io+0x150>
ffffffffc020883c:	412484b3          	sub	s1,s1,s2
ffffffffc0208840:	013409bb          	addw	s3,s0,s3
ffffffffc0208844:	c0bd                	beqz	s1,ffffffffc02088aa <disk0_io+0x13c>
ffffffffc0208846:	000ab583          	ld	a1,0(s5)
ffffffffc020884a:	000c1b63          	bnez	s8,ffffffffc0208860 <disk0_io+0xf2>
ffffffffc020884e:	fb94e7e3          	bltu	s1,s9,ffffffffc02087fc <disk0_io+0x8e>
ffffffffc0208852:	02000693          	li	a3,32
ffffffffc0208856:	02000d13          	li	s10,32
ffffffffc020885a:	4411                	li	s0,4
ffffffffc020885c:	6911                	lui	s2,0x4
ffffffffc020885e:	bf4d                	j	ffffffffc0208810 <disk0_io+0xa2>
ffffffffc0208860:	0038                	addi	a4,sp,8
ffffffffc0208862:	4681                	li	a3,0
ffffffffc0208864:	6611                	lui	a2,0x4
ffffffffc0208866:	855a                	mv	a0,s6
ffffffffc0208868:	b85fc0ef          	jal	ra,ffffffffc02053ec <iobuf_move>
ffffffffc020886c:	6422                	ld	s0,8(sp)
ffffffffc020886e:	c825                	beqz	s0,ffffffffc02088de <disk0_io+0x170>
ffffffffc0208870:	0684e763          	bltu	s1,s0,ffffffffc02088de <disk0_io+0x170>
ffffffffc0208874:	017477b3          	and	a5,s0,s7
ffffffffc0208878:	e3bd                	bnez	a5,ffffffffc02088de <disk0_io+0x170>
ffffffffc020887a:	8031                	srli	s0,s0,0xc
ffffffffc020887c:	0034179b          	slliw	a5,s0,0x3
ffffffffc0208880:	000ab603          	ld	a2,0(s5)
ffffffffc0208884:	0039991b          	slliw	s2,s3,0x3
ffffffffc0208888:	02079693          	slli	a3,a5,0x20
ffffffffc020888c:	9281                	srli	a3,a3,0x20
ffffffffc020888e:	85ca                	mv	a1,s2
ffffffffc0208890:	4509                	li	a0,2
ffffffffc0208892:	2401                	sext.w	s0,s0
ffffffffc0208894:	00078a1b          	sext.w	s4,a5
ffffffffc0208898:	b3ef80ef          	jal	ra,ffffffffc0200bd6 <ide_write_secs>
ffffffffc020889c:	e151                	bnez	a0,ffffffffc0208920 <disk0_io+0x1b2>
ffffffffc020889e:	6922                	ld	s2,8(sp)
ffffffffc02088a0:	013409bb          	addw	s3,s0,s3
ffffffffc02088a4:	412484b3          	sub	s1,s1,s2
ffffffffc02088a8:	fcd9                	bnez	s1,ffffffffc0208846 <disk0_io+0xd8>
ffffffffc02088aa:	0008d517          	auipc	a0,0x8d
ffffffffc02088ae:	f9650513          	addi	a0,a0,-106 # ffffffffc0295840 <disk0_sem>
ffffffffc02088b2:	caffb0ef          	jal	ra,ffffffffc0204560 <up>
ffffffffc02088b6:	4501                	li	a0,0
ffffffffc02088b8:	b729                	j	ffffffffc02087c2 <disk0_io+0x54>
ffffffffc02088ba:	5575                	li	a0,-3
ffffffffc02088bc:	b719                	j	ffffffffc02087c2 <disk0_io+0x54>
ffffffffc02088be:	00006697          	auipc	a3,0x6
ffffffffc02088c2:	24268693          	addi	a3,a3,578 # ffffffffc020eb00 <dev_node_ops+0x178>
ffffffffc02088c6:	00003617          	auipc	a2,0x3
ffffffffc02088ca:	0f260613          	addi	a2,a2,242 # ffffffffc020b9b8 <commands+0x210>
ffffffffc02088ce:	06200593          	li	a1,98
ffffffffc02088d2:	00006517          	auipc	a0,0x6
ffffffffc02088d6:	17650513          	addi	a0,a0,374 # ffffffffc020ea48 <dev_node_ops+0xc0>
ffffffffc02088da:	bc5f70ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc02088de:	00006697          	auipc	a3,0x6
ffffffffc02088e2:	12a68693          	addi	a3,a3,298 # ffffffffc020ea08 <dev_node_ops+0x80>
ffffffffc02088e6:	00003617          	auipc	a2,0x3
ffffffffc02088ea:	0d260613          	addi	a2,a2,210 # ffffffffc020b9b8 <commands+0x210>
ffffffffc02088ee:	05700593          	li	a1,87
ffffffffc02088f2:	00006517          	auipc	a0,0x6
ffffffffc02088f6:	15650513          	addi	a0,a0,342 # ffffffffc020ea48 <dev_node_ops+0xc0>
ffffffffc02088fa:	ba5f70ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc02088fe:	88aa                	mv	a7,a0
ffffffffc0208900:	886a                	mv	a6,s10
ffffffffc0208902:	87a2                	mv	a5,s0
ffffffffc0208904:	8752                	mv	a4,s4
ffffffffc0208906:	86ce                	mv	a3,s3
ffffffffc0208908:	00006617          	auipc	a2,0x6
ffffffffc020890c:	1b060613          	addi	a2,a2,432 # ffffffffc020eab8 <dev_node_ops+0x130>
ffffffffc0208910:	02d00593          	li	a1,45
ffffffffc0208914:	00006517          	auipc	a0,0x6
ffffffffc0208918:	13450513          	addi	a0,a0,308 # ffffffffc020ea48 <dev_node_ops+0xc0>
ffffffffc020891c:	b83f70ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc0208920:	88aa                	mv	a7,a0
ffffffffc0208922:	8852                	mv	a6,s4
ffffffffc0208924:	87a2                	mv	a5,s0
ffffffffc0208926:	874a                	mv	a4,s2
ffffffffc0208928:	86ce                	mv	a3,s3
ffffffffc020892a:	00006617          	auipc	a2,0x6
ffffffffc020892e:	13e60613          	addi	a2,a2,318 # ffffffffc020ea68 <dev_node_ops+0xe0>
ffffffffc0208932:	03700593          	li	a1,55
ffffffffc0208936:	00006517          	auipc	a0,0x6
ffffffffc020893a:	11250513          	addi	a0,a0,274 # ffffffffc020ea48 <dev_node_ops+0xc0>
ffffffffc020893e:	b61f70ef          	jal	ra,ffffffffc020049e <__panic>

ffffffffc0208942 <dev_init_disk0>:
ffffffffc0208942:	1101                	addi	sp,sp,-32
ffffffffc0208944:	ec06                	sd	ra,24(sp)
ffffffffc0208946:	e822                	sd	s0,16(sp)
ffffffffc0208948:	e426                	sd	s1,8(sp)
ffffffffc020894a:	dedff0ef          	jal	ra,ffffffffc0208736 <dev_create_inode>
ffffffffc020894e:	c541                	beqz	a0,ffffffffc02089d6 <dev_init_disk0+0x94>
ffffffffc0208950:	4d38                	lw	a4,88(a0)
ffffffffc0208952:	6485                	lui	s1,0x1
ffffffffc0208954:	23448793          	addi	a5,s1,564 # 1234 <_binary_bin_swap_img_size-0x6acc>
ffffffffc0208958:	842a                	mv	s0,a0
ffffffffc020895a:	0cf71f63          	bne	a4,a5,ffffffffc0208a38 <dev_init_disk0+0xf6>
ffffffffc020895e:	4509                	li	a0,2
ffffffffc0208960:	994f80ef          	jal	ra,ffffffffc0200af4 <ide_device_valid>
ffffffffc0208964:	cd55                	beqz	a0,ffffffffc0208a20 <dev_init_disk0+0xde>
ffffffffc0208966:	4509                	li	a0,2
ffffffffc0208968:	9b0f80ef          	jal	ra,ffffffffc0200b18 <ide_device_size>
ffffffffc020896c:	00355793          	srli	a5,a0,0x3
ffffffffc0208970:	e01c                	sd	a5,0(s0)
ffffffffc0208972:	00000797          	auipc	a5,0x0
ffffffffc0208976:	df078793          	addi	a5,a5,-528 # ffffffffc0208762 <disk0_open>
ffffffffc020897a:	e81c                	sd	a5,16(s0)
ffffffffc020897c:	00000797          	auipc	a5,0x0
ffffffffc0208980:	dea78793          	addi	a5,a5,-534 # ffffffffc0208766 <disk0_close>
ffffffffc0208984:	ec1c                	sd	a5,24(s0)
ffffffffc0208986:	00000797          	auipc	a5,0x0
ffffffffc020898a:	de878793          	addi	a5,a5,-536 # ffffffffc020876e <disk0_io>
ffffffffc020898e:	f01c                	sd	a5,32(s0)
ffffffffc0208990:	00000797          	auipc	a5,0x0
ffffffffc0208994:	dda78793          	addi	a5,a5,-550 # ffffffffc020876a <disk0_ioctl>
ffffffffc0208998:	f41c                	sd	a5,40(s0)
ffffffffc020899a:	4585                	li	a1,1
ffffffffc020899c:	0008d517          	auipc	a0,0x8d
ffffffffc02089a0:	ea450513          	addi	a0,a0,-348 # ffffffffc0295840 <disk0_sem>
ffffffffc02089a4:	e404                	sd	s1,8(s0)
ffffffffc02089a6:	bb5fb0ef          	jal	ra,ffffffffc020455a <sem_init>
ffffffffc02089aa:	6511                	lui	a0,0x4
ffffffffc02089ac:	de2f90ef          	jal	ra,ffffffffc0201f8e <kmalloc>
ffffffffc02089b0:	0008e797          	auipc	a5,0x8e
ffffffffc02089b4:	f4a7b423          	sd	a0,-184(a5) # ffffffffc02968f8 <disk0_buffer>
ffffffffc02089b8:	c921                	beqz	a0,ffffffffc0208a08 <dev_init_disk0+0xc6>
ffffffffc02089ba:	4605                	li	a2,1
ffffffffc02089bc:	85a2                	mv	a1,s0
ffffffffc02089be:	00006517          	auipc	a0,0x6
ffffffffc02089c2:	1d250513          	addi	a0,a0,466 # ffffffffc020eb90 <dev_node_ops+0x208>
ffffffffc02089c6:	c2cff0ef          	jal	ra,ffffffffc0207df2 <vfs_add_dev>
ffffffffc02089ca:	e115                	bnez	a0,ffffffffc02089ee <dev_init_disk0+0xac>
ffffffffc02089cc:	60e2                	ld	ra,24(sp)
ffffffffc02089ce:	6442                	ld	s0,16(sp)
ffffffffc02089d0:	64a2                	ld	s1,8(sp)
ffffffffc02089d2:	6105                	addi	sp,sp,32
ffffffffc02089d4:	8082                	ret
ffffffffc02089d6:	00006617          	auipc	a2,0x6
ffffffffc02089da:	15a60613          	addi	a2,a2,346 # ffffffffc020eb30 <dev_node_ops+0x1a8>
ffffffffc02089de:	08700593          	li	a1,135
ffffffffc02089e2:	00006517          	auipc	a0,0x6
ffffffffc02089e6:	06650513          	addi	a0,a0,102 # ffffffffc020ea48 <dev_node_ops+0xc0>
ffffffffc02089ea:	ab5f70ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc02089ee:	86aa                	mv	a3,a0
ffffffffc02089f0:	00006617          	auipc	a2,0x6
ffffffffc02089f4:	1a860613          	addi	a2,a2,424 # ffffffffc020eb98 <dev_node_ops+0x210>
ffffffffc02089f8:	08d00593          	li	a1,141
ffffffffc02089fc:	00006517          	auipc	a0,0x6
ffffffffc0208a00:	04c50513          	addi	a0,a0,76 # ffffffffc020ea48 <dev_node_ops+0xc0>
ffffffffc0208a04:	a9bf70ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc0208a08:	00006617          	auipc	a2,0x6
ffffffffc0208a0c:	16860613          	addi	a2,a2,360 # ffffffffc020eb70 <dev_node_ops+0x1e8>
ffffffffc0208a10:	07f00593          	li	a1,127
ffffffffc0208a14:	00006517          	auipc	a0,0x6
ffffffffc0208a18:	03450513          	addi	a0,a0,52 # ffffffffc020ea48 <dev_node_ops+0xc0>
ffffffffc0208a1c:	a83f70ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc0208a20:	00006617          	auipc	a2,0x6
ffffffffc0208a24:	13060613          	addi	a2,a2,304 # ffffffffc020eb50 <dev_node_ops+0x1c8>
ffffffffc0208a28:	07300593          	li	a1,115
ffffffffc0208a2c:	00006517          	auipc	a0,0x6
ffffffffc0208a30:	01c50513          	addi	a0,a0,28 # ffffffffc020ea48 <dev_node_ops+0xc0>
ffffffffc0208a34:	a6bf70ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc0208a38:	00006697          	auipc	a3,0x6
ffffffffc0208a3c:	c2868693          	addi	a3,a3,-984 # ffffffffc020e660 <syscalls+0xb10>
ffffffffc0208a40:	00003617          	auipc	a2,0x3
ffffffffc0208a44:	f7860613          	addi	a2,a2,-136 # ffffffffc020b9b8 <commands+0x210>
ffffffffc0208a48:	08900593          	li	a1,137
ffffffffc0208a4c:	00006517          	auipc	a0,0x6
ffffffffc0208a50:	ffc50513          	addi	a0,a0,-4 # ffffffffc020ea48 <dev_node_ops+0xc0>
ffffffffc0208a54:	a4bf70ef          	jal	ra,ffffffffc020049e <__panic>

ffffffffc0208a58 <stdin_open>:
ffffffffc0208a58:	4501                	li	a0,0
ffffffffc0208a5a:	e191                	bnez	a1,ffffffffc0208a5e <stdin_open+0x6>
ffffffffc0208a5c:	8082                	ret
ffffffffc0208a5e:	5575                	li	a0,-3
ffffffffc0208a60:	8082                	ret

ffffffffc0208a62 <stdin_close>:
ffffffffc0208a62:	4501                	li	a0,0
ffffffffc0208a64:	8082                	ret

ffffffffc0208a66 <stdin_ioctl>:
ffffffffc0208a66:	5575                	li	a0,-3
ffffffffc0208a68:	8082                	ret

ffffffffc0208a6a <stdin_io>:
ffffffffc0208a6a:	7135                	addi	sp,sp,-160
ffffffffc0208a6c:	ed06                	sd	ra,152(sp)
ffffffffc0208a6e:	e922                	sd	s0,144(sp)
ffffffffc0208a70:	e526                	sd	s1,136(sp)
ffffffffc0208a72:	e14a                	sd	s2,128(sp)
ffffffffc0208a74:	fcce                	sd	s3,120(sp)
ffffffffc0208a76:	f8d2                	sd	s4,112(sp)
ffffffffc0208a78:	f4d6                	sd	s5,104(sp)
ffffffffc0208a7a:	f0da                	sd	s6,96(sp)
ffffffffc0208a7c:	ecde                	sd	s7,88(sp)
ffffffffc0208a7e:	e8e2                	sd	s8,80(sp)
ffffffffc0208a80:	e4e6                	sd	s9,72(sp)
ffffffffc0208a82:	e0ea                	sd	s10,64(sp)
ffffffffc0208a84:	fc6e                	sd	s11,56(sp)
ffffffffc0208a86:	14061163          	bnez	a2,ffffffffc0208bc8 <stdin_io+0x15e>
ffffffffc0208a8a:	0005bd83          	ld	s11,0(a1)
ffffffffc0208a8e:	0185bd03          	ld	s10,24(a1)
ffffffffc0208a92:	8b2e                	mv	s6,a1
ffffffffc0208a94:	100027f3          	csrr	a5,sstatus
ffffffffc0208a98:	8b89                	andi	a5,a5,2
ffffffffc0208a9a:	10079e63          	bnez	a5,ffffffffc0208bb6 <stdin_io+0x14c>
ffffffffc0208a9e:	4401                	li	s0,0
ffffffffc0208aa0:	100d0963          	beqz	s10,ffffffffc0208bb2 <stdin_io+0x148>
ffffffffc0208aa4:	0008e997          	auipc	s3,0x8e
ffffffffc0208aa8:	e5c98993          	addi	s3,s3,-420 # ffffffffc0296900 <p_rpos>
ffffffffc0208aac:	0009b783          	ld	a5,0(s3)
ffffffffc0208ab0:	800004b7          	lui	s1,0x80000
ffffffffc0208ab4:	6c85                	lui	s9,0x1
ffffffffc0208ab6:	4a81                	li	s5,0
ffffffffc0208ab8:	0008ea17          	auipc	s4,0x8e
ffffffffc0208abc:	e50a0a13          	addi	s4,s4,-432 # ffffffffc0296908 <p_wpos>
ffffffffc0208ac0:	0491                	addi	s1,s1,4
ffffffffc0208ac2:	0008d917          	auipc	s2,0x8d
ffffffffc0208ac6:	d9690913          	addi	s2,s2,-618 # ffffffffc0295858 <__wait_queue>
ffffffffc0208aca:	1cfd                	addi	s9,s9,-1
ffffffffc0208acc:	000a3703          	ld	a4,0(s4)
ffffffffc0208ad0:	000a8c1b          	sext.w	s8,s5
ffffffffc0208ad4:	8be2                	mv	s7,s8
ffffffffc0208ad6:	02e7d763          	bge	a5,a4,ffffffffc0208b04 <stdin_io+0x9a>
ffffffffc0208ada:	a859                	j	ffffffffc0208b70 <stdin_io+0x106>
ffffffffc0208adc:	815fe0ef          	jal	ra,ffffffffc02072f0 <schedule>
ffffffffc0208ae0:	100027f3          	csrr	a5,sstatus
ffffffffc0208ae4:	8b89                	andi	a5,a5,2
ffffffffc0208ae6:	4401                	li	s0,0
ffffffffc0208ae8:	ef8d                	bnez	a5,ffffffffc0208b22 <stdin_io+0xb8>
ffffffffc0208aea:	0028                	addi	a0,sp,8
ffffffffc0208aec:	b0bfb0ef          	jal	ra,ffffffffc02045f6 <wait_in_queue>
ffffffffc0208af0:	e121                	bnez	a0,ffffffffc0208b30 <stdin_io+0xc6>
ffffffffc0208af2:	47c2                	lw	a5,16(sp)
ffffffffc0208af4:	04979563          	bne	a5,s1,ffffffffc0208b3e <stdin_io+0xd4>
ffffffffc0208af8:	0009b783          	ld	a5,0(s3)
ffffffffc0208afc:	000a3703          	ld	a4,0(s4)
ffffffffc0208b00:	06e7c863          	blt	a5,a4,ffffffffc0208b70 <stdin_io+0x106>
ffffffffc0208b04:	8626                	mv	a2,s1
ffffffffc0208b06:	002c                	addi	a1,sp,8
ffffffffc0208b08:	854a                	mv	a0,s2
ffffffffc0208b0a:	c17fb0ef          	jal	ra,ffffffffc0204720 <wait_current_set>
ffffffffc0208b0e:	d479                	beqz	s0,ffffffffc0208adc <stdin_io+0x72>
ffffffffc0208b10:	95cf80ef          	jal	ra,ffffffffc0200c6c <intr_enable>
ffffffffc0208b14:	fdcfe0ef          	jal	ra,ffffffffc02072f0 <schedule>
ffffffffc0208b18:	100027f3          	csrr	a5,sstatus
ffffffffc0208b1c:	8b89                	andi	a5,a5,2
ffffffffc0208b1e:	4401                	li	s0,0
ffffffffc0208b20:	d7e9                	beqz	a5,ffffffffc0208aea <stdin_io+0x80>
ffffffffc0208b22:	950f80ef          	jal	ra,ffffffffc0200c72 <intr_disable>
ffffffffc0208b26:	0028                	addi	a0,sp,8
ffffffffc0208b28:	4405                	li	s0,1
ffffffffc0208b2a:	acdfb0ef          	jal	ra,ffffffffc02045f6 <wait_in_queue>
ffffffffc0208b2e:	d171                	beqz	a0,ffffffffc0208af2 <stdin_io+0x88>
ffffffffc0208b30:	002c                	addi	a1,sp,8
ffffffffc0208b32:	854a                	mv	a0,s2
ffffffffc0208b34:	a69fb0ef          	jal	ra,ffffffffc020459c <wait_queue_del>
ffffffffc0208b38:	47c2                	lw	a5,16(sp)
ffffffffc0208b3a:	fa978fe3          	beq	a5,s1,ffffffffc0208af8 <stdin_io+0x8e>
ffffffffc0208b3e:	e435                	bnez	s0,ffffffffc0208baa <stdin_io+0x140>
ffffffffc0208b40:	060b8963          	beqz	s7,ffffffffc0208bb2 <stdin_io+0x148>
ffffffffc0208b44:	018b3783          	ld	a5,24(s6)
ffffffffc0208b48:	41578ab3          	sub	s5,a5,s5
ffffffffc0208b4c:	015b3c23          	sd	s5,24(s6)
ffffffffc0208b50:	60ea                	ld	ra,152(sp)
ffffffffc0208b52:	644a                	ld	s0,144(sp)
ffffffffc0208b54:	64aa                	ld	s1,136(sp)
ffffffffc0208b56:	690a                	ld	s2,128(sp)
ffffffffc0208b58:	79e6                	ld	s3,120(sp)
ffffffffc0208b5a:	7a46                	ld	s4,112(sp)
ffffffffc0208b5c:	7aa6                	ld	s5,104(sp)
ffffffffc0208b5e:	7b06                	ld	s6,96(sp)
ffffffffc0208b60:	6c46                	ld	s8,80(sp)
ffffffffc0208b62:	6ca6                	ld	s9,72(sp)
ffffffffc0208b64:	6d06                	ld	s10,64(sp)
ffffffffc0208b66:	7de2                	ld	s11,56(sp)
ffffffffc0208b68:	855e                	mv	a0,s7
ffffffffc0208b6a:	6be6                	ld	s7,88(sp)
ffffffffc0208b6c:	610d                	addi	sp,sp,160
ffffffffc0208b6e:	8082                	ret
ffffffffc0208b70:	43f7d713          	srai	a4,a5,0x3f
ffffffffc0208b74:	03475693          	srli	a3,a4,0x34
ffffffffc0208b78:	00d78733          	add	a4,a5,a3
ffffffffc0208b7c:	01977733          	and	a4,a4,s9
ffffffffc0208b80:	8f15                	sub	a4,a4,a3
ffffffffc0208b82:	0008d697          	auipc	a3,0x8d
ffffffffc0208b86:	ce668693          	addi	a3,a3,-794 # ffffffffc0295868 <stdin_buffer>
ffffffffc0208b8a:	9736                	add	a4,a4,a3
ffffffffc0208b8c:	00074683          	lbu	a3,0(a4)
ffffffffc0208b90:	0785                	addi	a5,a5,1
ffffffffc0208b92:	015d8733          	add	a4,s11,s5
ffffffffc0208b96:	00d70023          	sb	a3,0(a4)
ffffffffc0208b9a:	00f9b023          	sd	a5,0(s3)
ffffffffc0208b9e:	0a85                	addi	s5,s5,1
ffffffffc0208ba0:	001c0b9b          	addiw	s7,s8,1
ffffffffc0208ba4:	f3aae4e3          	bltu	s5,s10,ffffffffc0208acc <stdin_io+0x62>
ffffffffc0208ba8:	dc51                	beqz	s0,ffffffffc0208b44 <stdin_io+0xda>
ffffffffc0208baa:	8c2f80ef          	jal	ra,ffffffffc0200c6c <intr_enable>
ffffffffc0208bae:	f80b9be3          	bnez	s7,ffffffffc0208b44 <stdin_io+0xda>
ffffffffc0208bb2:	4b81                	li	s7,0
ffffffffc0208bb4:	bf71                	j	ffffffffc0208b50 <stdin_io+0xe6>
ffffffffc0208bb6:	8bcf80ef          	jal	ra,ffffffffc0200c72 <intr_disable>
ffffffffc0208bba:	4405                	li	s0,1
ffffffffc0208bbc:	ee0d14e3          	bnez	s10,ffffffffc0208aa4 <stdin_io+0x3a>
ffffffffc0208bc0:	8acf80ef          	jal	ra,ffffffffc0200c6c <intr_enable>
ffffffffc0208bc4:	4b81                	li	s7,0
ffffffffc0208bc6:	b769                	j	ffffffffc0208b50 <stdin_io+0xe6>
ffffffffc0208bc8:	5bf5                	li	s7,-3
ffffffffc0208bca:	b759                	j	ffffffffc0208b50 <stdin_io+0xe6>

ffffffffc0208bcc <dev_stdin_write>:
ffffffffc0208bcc:	e111                	bnez	a0,ffffffffc0208bd0 <dev_stdin_write+0x4>
ffffffffc0208bce:	8082                	ret
ffffffffc0208bd0:	1101                	addi	sp,sp,-32
ffffffffc0208bd2:	e822                	sd	s0,16(sp)
ffffffffc0208bd4:	ec06                	sd	ra,24(sp)
ffffffffc0208bd6:	e426                	sd	s1,8(sp)
ffffffffc0208bd8:	842a                	mv	s0,a0
ffffffffc0208bda:	100027f3          	csrr	a5,sstatus
ffffffffc0208bde:	8b89                	andi	a5,a5,2
ffffffffc0208be0:	4481                	li	s1,0
ffffffffc0208be2:	e3c1                	bnez	a5,ffffffffc0208c62 <dev_stdin_write+0x96>
ffffffffc0208be4:	0008e597          	auipc	a1,0x8e
ffffffffc0208be8:	d2458593          	addi	a1,a1,-732 # ffffffffc0296908 <p_wpos>
ffffffffc0208bec:	6198                	ld	a4,0(a1)
ffffffffc0208bee:	6605                	lui	a2,0x1
ffffffffc0208bf0:	fff60513          	addi	a0,a2,-1 # fff <_binary_bin_swap_img_size-0x6d01>
ffffffffc0208bf4:	43f75693          	srai	a3,a4,0x3f
ffffffffc0208bf8:	92d1                	srli	a3,a3,0x34
ffffffffc0208bfa:	00d707b3          	add	a5,a4,a3
ffffffffc0208bfe:	8fe9                	and	a5,a5,a0
ffffffffc0208c00:	8f95                	sub	a5,a5,a3
ffffffffc0208c02:	0008d697          	auipc	a3,0x8d
ffffffffc0208c06:	c6668693          	addi	a3,a3,-922 # ffffffffc0295868 <stdin_buffer>
ffffffffc0208c0a:	97b6                	add	a5,a5,a3
ffffffffc0208c0c:	00878023          	sb	s0,0(a5)
ffffffffc0208c10:	0008e797          	auipc	a5,0x8e
ffffffffc0208c14:	cf07b783          	ld	a5,-784(a5) # ffffffffc0296900 <p_rpos>
ffffffffc0208c18:	40f707b3          	sub	a5,a4,a5
ffffffffc0208c1c:	00c7d463          	bge	a5,a2,ffffffffc0208c24 <dev_stdin_write+0x58>
ffffffffc0208c20:	0705                	addi	a4,a4,1
ffffffffc0208c22:	e198                	sd	a4,0(a1)
ffffffffc0208c24:	0008d517          	auipc	a0,0x8d
ffffffffc0208c28:	c3450513          	addi	a0,a0,-972 # ffffffffc0295858 <__wait_queue>
ffffffffc0208c2c:	9bffb0ef          	jal	ra,ffffffffc02045ea <wait_queue_empty>
ffffffffc0208c30:	cd09                	beqz	a0,ffffffffc0208c4a <dev_stdin_write+0x7e>
ffffffffc0208c32:	e491                	bnez	s1,ffffffffc0208c3e <dev_stdin_write+0x72>
ffffffffc0208c34:	60e2                	ld	ra,24(sp)
ffffffffc0208c36:	6442                	ld	s0,16(sp)
ffffffffc0208c38:	64a2                	ld	s1,8(sp)
ffffffffc0208c3a:	6105                	addi	sp,sp,32
ffffffffc0208c3c:	8082                	ret
ffffffffc0208c3e:	6442                	ld	s0,16(sp)
ffffffffc0208c40:	60e2                	ld	ra,24(sp)
ffffffffc0208c42:	64a2                	ld	s1,8(sp)
ffffffffc0208c44:	6105                	addi	sp,sp,32
ffffffffc0208c46:	826f806f          	j	ffffffffc0200c6c <intr_enable>
ffffffffc0208c4a:	800005b7          	lui	a1,0x80000
ffffffffc0208c4e:	4605                	li	a2,1
ffffffffc0208c50:	0591                	addi	a1,a1,4
ffffffffc0208c52:	0008d517          	auipc	a0,0x8d
ffffffffc0208c56:	c0650513          	addi	a0,a0,-1018 # ffffffffc0295858 <__wait_queue>
ffffffffc0208c5a:	9f9fb0ef          	jal	ra,ffffffffc0204652 <wakeup_queue>
ffffffffc0208c5e:	d8f9                	beqz	s1,ffffffffc0208c34 <dev_stdin_write+0x68>
ffffffffc0208c60:	bff9                	j	ffffffffc0208c3e <dev_stdin_write+0x72>
ffffffffc0208c62:	810f80ef          	jal	ra,ffffffffc0200c72 <intr_disable>
ffffffffc0208c66:	4485                	li	s1,1
ffffffffc0208c68:	bfb5                	j	ffffffffc0208be4 <dev_stdin_write+0x18>

ffffffffc0208c6a <dev_init_stdin>:
ffffffffc0208c6a:	1141                	addi	sp,sp,-16
ffffffffc0208c6c:	e406                	sd	ra,8(sp)
ffffffffc0208c6e:	e022                	sd	s0,0(sp)
ffffffffc0208c70:	ac7ff0ef          	jal	ra,ffffffffc0208736 <dev_create_inode>
ffffffffc0208c74:	c93d                	beqz	a0,ffffffffc0208cea <dev_init_stdin+0x80>
ffffffffc0208c76:	4d38                	lw	a4,88(a0)
ffffffffc0208c78:	6785                	lui	a5,0x1
ffffffffc0208c7a:	23478793          	addi	a5,a5,564 # 1234 <_binary_bin_swap_img_size-0x6acc>
ffffffffc0208c7e:	842a                	mv	s0,a0
ffffffffc0208c80:	08f71e63          	bne	a4,a5,ffffffffc0208d1c <dev_init_stdin+0xb2>
ffffffffc0208c84:	4785                	li	a5,1
ffffffffc0208c86:	e41c                	sd	a5,8(s0)
ffffffffc0208c88:	00000797          	auipc	a5,0x0
ffffffffc0208c8c:	dd078793          	addi	a5,a5,-560 # ffffffffc0208a58 <stdin_open>
ffffffffc0208c90:	e81c                	sd	a5,16(s0)
ffffffffc0208c92:	00000797          	auipc	a5,0x0
ffffffffc0208c96:	dd078793          	addi	a5,a5,-560 # ffffffffc0208a62 <stdin_close>
ffffffffc0208c9a:	ec1c                	sd	a5,24(s0)
ffffffffc0208c9c:	00000797          	auipc	a5,0x0
ffffffffc0208ca0:	dce78793          	addi	a5,a5,-562 # ffffffffc0208a6a <stdin_io>
ffffffffc0208ca4:	f01c                	sd	a5,32(s0)
ffffffffc0208ca6:	00000797          	auipc	a5,0x0
ffffffffc0208caa:	dc078793          	addi	a5,a5,-576 # ffffffffc0208a66 <stdin_ioctl>
ffffffffc0208cae:	f41c                	sd	a5,40(s0)
ffffffffc0208cb0:	0008d517          	auipc	a0,0x8d
ffffffffc0208cb4:	ba850513          	addi	a0,a0,-1112 # ffffffffc0295858 <__wait_queue>
ffffffffc0208cb8:	00043023          	sd	zero,0(s0)
ffffffffc0208cbc:	0008e797          	auipc	a5,0x8e
ffffffffc0208cc0:	c407b623          	sd	zero,-948(a5) # ffffffffc0296908 <p_wpos>
ffffffffc0208cc4:	0008e797          	auipc	a5,0x8e
ffffffffc0208cc8:	c207be23          	sd	zero,-964(a5) # ffffffffc0296900 <p_rpos>
ffffffffc0208ccc:	8cbfb0ef          	jal	ra,ffffffffc0204596 <wait_queue_init>
ffffffffc0208cd0:	4601                	li	a2,0
ffffffffc0208cd2:	85a2                	mv	a1,s0
ffffffffc0208cd4:	00006517          	auipc	a0,0x6
ffffffffc0208cd8:	f2450513          	addi	a0,a0,-220 # ffffffffc020ebf8 <dev_node_ops+0x270>
ffffffffc0208cdc:	916ff0ef          	jal	ra,ffffffffc0207df2 <vfs_add_dev>
ffffffffc0208ce0:	e10d                	bnez	a0,ffffffffc0208d02 <dev_init_stdin+0x98>
ffffffffc0208ce2:	60a2                	ld	ra,8(sp)
ffffffffc0208ce4:	6402                	ld	s0,0(sp)
ffffffffc0208ce6:	0141                	addi	sp,sp,16
ffffffffc0208ce8:	8082                	ret
ffffffffc0208cea:	00006617          	auipc	a2,0x6
ffffffffc0208cee:	ece60613          	addi	a2,a2,-306 # ffffffffc020ebb8 <dev_node_ops+0x230>
ffffffffc0208cf2:	07500593          	li	a1,117
ffffffffc0208cf6:	00006517          	auipc	a0,0x6
ffffffffc0208cfa:	ee250513          	addi	a0,a0,-286 # ffffffffc020ebd8 <dev_node_ops+0x250>
ffffffffc0208cfe:	fa0f70ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc0208d02:	86aa                	mv	a3,a0
ffffffffc0208d04:	00006617          	auipc	a2,0x6
ffffffffc0208d08:	efc60613          	addi	a2,a2,-260 # ffffffffc020ec00 <dev_node_ops+0x278>
ffffffffc0208d0c:	07b00593          	li	a1,123
ffffffffc0208d10:	00006517          	auipc	a0,0x6
ffffffffc0208d14:	ec850513          	addi	a0,a0,-312 # ffffffffc020ebd8 <dev_node_ops+0x250>
ffffffffc0208d18:	f86f70ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc0208d1c:	00006697          	auipc	a3,0x6
ffffffffc0208d20:	94468693          	addi	a3,a3,-1724 # ffffffffc020e660 <syscalls+0xb10>
ffffffffc0208d24:	00003617          	auipc	a2,0x3
ffffffffc0208d28:	c9460613          	addi	a2,a2,-876 # ffffffffc020b9b8 <commands+0x210>
ffffffffc0208d2c:	07700593          	li	a1,119
ffffffffc0208d30:	00006517          	auipc	a0,0x6
ffffffffc0208d34:	ea850513          	addi	a0,a0,-344 # ffffffffc020ebd8 <dev_node_ops+0x250>
ffffffffc0208d38:	f66f70ef          	jal	ra,ffffffffc020049e <__panic>

ffffffffc0208d3c <stdout_open>:
ffffffffc0208d3c:	4785                	li	a5,1
ffffffffc0208d3e:	4501                	li	a0,0
ffffffffc0208d40:	00f59363          	bne	a1,a5,ffffffffc0208d46 <stdout_open+0xa>
ffffffffc0208d44:	8082                	ret
ffffffffc0208d46:	5575                	li	a0,-3
ffffffffc0208d48:	8082                	ret

ffffffffc0208d4a <stdout_close>:
ffffffffc0208d4a:	4501                	li	a0,0
ffffffffc0208d4c:	8082                	ret

ffffffffc0208d4e <stdout_ioctl>:
ffffffffc0208d4e:	5575                	li	a0,-3
ffffffffc0208d50:	8082                	ret

ffffffffc0208d52 <stdout_io>:
ffffffffc0208d52:	ca05                	beqz	a2,ffffffffc0208d82 <stdout_io+0x30>
ffffffffc0208d54:	6d9c                	ld	a5,24(a1)
ffffffffc0208d56:	1101                	addi	sp,sp,-32
ffffffffc0208d58:	e822                	sd	s0,16(sp)
ffffffffc0208d5a:	e426                	sd	s1,8(sp)
ffffffffc0208d5c:	ec06                	sd	ra,24(sp)
ffffffffc0208d5e:	6180                	ld	s0,0(a1)
ffffffffc0208d60:	84ae                	mv	s1,a1
ffffffffc0208d62:	cb91                	beqz	a5,ffffffffc0208d76 <stdout_io+0x24>
ffffffffc0208d64:	00044503          	lbu	a0,0(s0)
ffffffffc0208d68:	0405                	addi	s0,s0,1
ffffffffc0208d6a:	c78f70ef          	jal	ra,ffffffffc02001e2 <cputchar>
ffffffffc0208d6e:	6c9c                	ld	a5,24(s1)
ffffffffc0208d70:	17fd                	addi	a5,a5,-1
ffffffffc0208d72:	ec9c                	sd	a5,24(s1)
ffffffffc0208d74:	fbe5                	bnez	a5,ffffffffc0208d64 <stdout_io+0x12>
ffffffffc0208d76:	60e2                	ld	ra,24(sp)
ffffffffc0208d78:	6442                	ld	s0,16(sp)
ffffffffc0208d7a:	64a2                	ld	s1,8(sp)
ffffffffc0208d7c:	4501                	li	a0,0
ffffffffc0208d7e:	6105                	addi	sp,sp,32
ffffffffc0208d80:	8082                	ret
ffffffffc0208d82:	5575                	li	a0,-3
ffffffffc0208d84:	8082                	ret

ffffffffc0208d86 <dev_init_stdout>:
ffffffffc0208d86:	1141                	addi	sp,sp,-16
ffffffffc0208d88:	e406                	sd	ra,8(sp)
ffffffffc0208d8a:	9adff0ef          	jal	ra,ffffffffc0208736 <dev_create_inode>
ffffffffc0208d8e:	c939                	beqz	a0,ffffffffc0208de4 <dev_init_stdout+0x5e>
ffffffffc0208d90:	4d38                	lw	a4,88(a0)
ffffffffc0208d92:	6785                	lui	a5,0x1
ffffffffc0208d94:	23478793          	addi	a5,a5,564 # 1234 <_binary_bin_swap_img_size-0x6acc>
ffffffffc0208d98:	85aa                	mv	a1,a0
ffffffffc0208d9a:	06f71e63          	bne	a4,a5,ffffffffc0208e16 <dev_init_stdout+0x90>
ffffffffc0208d9e:	4785                	li	a5,1
ffffffffc0208da0:	e51c                	sd	a5,8(a0)
ffffffffc0208da2:	00000797          	auipc	a5,0x0
ffffffffc0208da6:	f9a78793          	addi	a5,a5,-102 # ffffffffc0208d3c <stdout_open>
ffffffffc0208daa:	e91c                	sd	a5,16(a0)
ffffffffc0208dac:	00000797          	auipc	a5,0x0
ffffffffc0208db0:	f9e78793          	addi	a5,a5,-98 # ffffffffc0208d4a <stdout_close>
ffffffffc0208db4:	ed1c                	sd	a5,24(a0)
ffffffffc0208db6:	00000797          	auipc	a5,0x0
ffffffffc0208dba:	f9c78793          	addi	a5,a5,-100 # ffffffffc0208d52 <stdout_io>
ffffffffc0208dbe:	f11c                	sd	a5,32(a0)
ffffffffc0208dc0:	00000797          	auipc	a5,0x0
ffffffffc0208dc4:	f8e78793          	addi	a5,a5,-114 # ffffffffc0208d4e <stdout_ioctl>
ffffffffc0208dc8:	00053023          	sd	zero,0(a0)
ffffffffc0208dcc:	f51c                	sd	a5,40(a0)
ffffffffc0208dce:	4601                	li	a2,0
ffffffffc0208dd0:	00006517          	auipc	a0,0x6
ffffffffc0208dd4:	e9050513          	addi	a0,a0,-368 # ffffffffc020ec60 <dev_node_ops+0x2d8>
ffffffffc0208dd8:	81aff0ef          	jal	ra,ffffffffc0207df2 <vfs_add_dev>
ffffffffc0208ddc:	e105                	bnez	a0,ffffffffc0208dfc <dev_init_stdout+0x76>
ffffffffc0208dde:	60a2                	ld	ra,8(sp)
ffffffffc0208de0:	0141                	addi	sp,sp,16
ffffffffc0208de2:	8082                	ret
ffffffffc0208de4:	00006617          	auipc	a2,0x6
ffffffffc0208de8:	e3c60613          	addi	a2,a2,-452 # ffffffffc020ec20 <dev_node_ops+0x298>
ffffffffc0208dec:	03700593          	li	a1,55
ffffffffc0208df0:	00006517          	auipc	a0,0x6
ffffffffc0208df4:	e5050513          	addi	a0,a0,-432 # ffffffffc020ec40 <dev_node_ops+0x2b8>
ffffffffc0208df8:	ea6f70ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc0208dfc:	86aa                	mv	a3,a0
ffffffffc0208dfe:	00006617          	auipc	a2,0x6
ffffffffc0208e02:	e6a60613          	addi	a2,a2,-406 # ffffffffc020ec68 <dev_node_ops+0x2e0>
ffffffffc0208e06:	03d00593          	li	a1,61
ffffffffc0208e0a:	00006517          	auipc	a0,0x6
ffffffffc0208e0e:	e3650513          	addi	a0,a0,-458 # ffffffffc020ec40 <dev_node_ops+0x2b8>
ffffffffc0208e12:	e8cf70ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc0208e16:	00006697          	auipc	a3,0x6
ffffffffc0208e1a:	84a68693          	addi	a3,a3,-1974 # ffffffffc020e660 <syscalls+0xb10>
ffffffffc0208e1e:	00003617          	auipc	a2,0x3
ffffffffc0208e22:	b9a60613          	addi	a2,a2,-1126 # ffffffffc020b9b8 <commands+0x210>
ffffffffc0208e26:	03900593          	li	a1,57
ffffffffc0208e2a:	00006517          	auipc	a0,0x6
ffffffffc0208e2e:	e1650513          	addi	a0,a0,-490 # ffffffffc020ec40 <dev_node_ops+0x2b8>
ffffffffc0208e32:	e6cf70ef          	jal	ra,ffffffffc020049e <__panic>

ffffffffc0208e36 <bitmap_translate.part.0>:
ffffffffc0208e36:	1141                	addi	sp,sp,-16
ffffffffc0208e38:	00006697          	auipc	a3,0x6
ffffffffc0208e3c:	e5068693          	addi	a3,a3,-432 # ffffffffc020ec88 <dev_node_ops+0x300>
ffffffffc0208e40:	00003617          	auipc	a2,0x3
ffffffffc0208e44:	b7860613          	addi	a2,a2,-1160 # ffffffffc020b9b8 <commands+0x210>
ffffffffc0208e48:	04c00593          	li	a1,76
ffffffffc0208e4c:	00006517          	auipc	a0,0x6
ffffffffc0208e50:	e5450513          	addi	a0,a0,-428 # ffffffffc020eca0 <dev_node_ops+0x318>
ffffffffc0208e54:	e406                	sd	ra,8(sp)
ffffffffc0208e56:	e48f70ef          	jal	ra,ffffffffc020049e <__panic>

ffffffffc0208e5a <bitmap_create>:
ffffffffc0208e5a:	7139                	addi	sp,sp,-64
ffffffffc0208e5c:	fc06                	sd	ra,56(sp)
ffffffffc0208e5e:	f822                	sd	s0,48(sp)
ffffffffc0208e60:	f426                	sd	s1,40(sp)
ffffffffc0208e62:	f04a                	sd	s2,32(sp)
ffffffffc0208e64:	ec4e                	sd	s3,24(sp)
ffffffffc0208e66:	e852                	sd	s4,16(sp)
ffffffffc0208e68:	e456                	sd	s5,8(sp)
ffffffffc0208e6a:	c14d                	beqz	a0,ffffffffc0208f0c <bitmap_create+0xb2>
ffffffffc0208e6c:	842a                	mv	s0,a0
ffffffffc0208e6e:	4541                	li	a0,16
ffffffffc0208e70:	91ef90ef          	jal	ra,ffffffffc0201f8e <kmalloc>
ffffffffc0208e74:	84aa                	mv	s1,a0
ffffffffc0208e76:	cd25                	beqz	a0,ffffffffc0208eee <bitmap_create+0x94>
ffffffffc0208e78:	02041a13          	slli	s4,s0,0x20
ffffffffc0208e7c:	020a5a13          	srli	s4,s4,0x20
ffffffffc0208e80:	01fa0793          	addi	a5,s4,31
ffffffffc0208e84:	0057d993          	srli	s3,a5,0x5
ffffffffc0208e88:	00299a93          	slli	s5,s3,0x2
ffffffffc0208e8c:	8556                	mv	a0,s5
ffffffffc0208e8e:	894e                	mv	s2,s3
ffffffffc0208e90:	8fef90ef          	jal	ra,ffffffffc0201f8e <kmalloc>
ffffffffc0208e94:	c53d                	beqz	a0,ffffffffc0208f02 <bitmap_create+0xa8>
ffffffffc0208e96:	0134a223          	sw	s3,4(s1) # ffffffff80000004 <_binary_bin_sfs_img_size+0xffffffff7ff8ad04>
ffffffffc0208e9a:	c080                	sw	s0,0(s1)
ffffffffc0208e9c:	8656                	mv	a2,s5
ffffffffc0208e9e:	0ff00593          	li	a1,255
ffffffffc0208ea2:	632020ef          	jal	ra,ffffffffc020b4d4 <memset>
ffffffffc0208ea6:	e488                	sd	a0,8(s1)
ffffffffc0208ea8:	0996                	slli	s3,s3,0x5
ffffffffc0208eaa:	053a0263          	beq	s4,s3,ffffffffc0208eee <bitmap_create+0x94>
ffffffffc0208eae:	fff9079b          	addiw	a5,s2,-1
ffffffffc0208eb2:	0057969b          	slliw	a3,a5,0x5
ffffffffc0208eb6:	0054561b          	srliw	a2,s0,0x5
ffffffffc0208eba:	40d4073b          	subw	a4,s0,a3
ffffffffc0208ebe:	0054541b          	srliw	s0,s0,0x5
ffffffffc0208ec2:	08f61463          	bne	a2,a5,ffffffffc0208f4a <bitmap_create+0xf0>
ffffffffc0208ec6:	fff7069b          	addiw	a3,a4,-1
ffffffffc0208eca:	47f9                	li	a5,30
ffffffffc0208ecc:	04d7ef63          	bltu	a5,a3,ffffffffc0208f2a <bitmap_create+0xd0>
ffffffffc0208ed0:	1402                	slli	s0,s0,0x20
ffffffffc0208ed2:	8079                	srli	s0,s0,0x1e
ffffffffc0208ed4:	9522                	add	a0,a0,s0
ffffffffc0208ed6:	411c                	lw	a5,0(a0)
ffffffffc0208ed8:	4585                	li	a1,1
ffffffffc0208eda:	02000613          	li	a2,32
ffffffffc0208ede:	00e596bb          	sllw	a3,a1,a4
ffffffffc0208ee2:	8fb5                	xor	a5,a5,a3
ffffffffc0208ee4:	2705                	addiw	a4,a4,1
ffffffffc0208ee6:	2781                	sext.w	a5,a5
ffffffffc0208ee8:	fec71be3          	bne	a4,a2,ffffffffc0208ede <bitmap_create+0x84>
ffffffffc0208eec:	c11c                	sw	a5,0(a0)
ffffffffc0208eee:	70e2                	ld	ra,56(sp)
ffffffffc0208ef0:	7442                	ld	s0,48(sp)
ffffffffc0208ef2:	7902                	ld	s2,32(sp)
ffffffffc0208ef4:	69e2                	ld	s3,24(sp)
ffffffffc0208ef6:	6a42                	ld	s4,16(sp)
ffffffffc0208ef8:	6aa2                	ld	s5,8(sp)
ffffffffc0208efa:	8526                	mv	a0,s1
ffffffffc0208efc:	74a2                	ld	s1,40(sp)
ffffffffc0208efe:	6121                	addi	sp,sp,64
ffffffffc0208f00:	8082                	ret
ffffffffc0208f02:	8526                	mv	a0,s1
ffffffffc0208f04:	93af90ef          	jal	ra,ffffffffc020203e <kfree>
ffffffffc0208f08:	4481                	li	s1,0
ffffffffc0208f0a:	b7d5                	j	ffffffffc0208eee <bitmap_create+0x94>
ffffffffc0208f0c:	00006697          	auipc	a3,0x6
ffffffffc0208f10:	dac68693          	addi	a3,a3,-596 # ffffffffc020ecb8 <dev_node_ops+0x330>
ffffffffc0208f14:	00003617          	auipc	a2,0x3
ffffffffc0208f18:	aa460613          	addi	a2,a2,-1372 # ffffffffc020b9b8 <commands+0x210>
ffffffffc0208f1c:	45d5                	li	a1,21
ffffffffc0208f1e:	00006517          	auipc	a0,0x6
ffffffffc0208f22:	d8250513          	addi	a0,a0,-638 # ffffffffc020eca0 <dev_node_ops+0x318>
ffffffffc0208f26:	d78f70ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc0208f2a:	00006697          	auipc	a3,0x6
ffffffffc0208f2e:	dce68693          	addi	a3,a3,-562 # ffffffffc020ecf8 <dev_node_ops+0x370>
ffffffffc0208f32:	00003617          	auipc	a2,0x3
ffffffffc0208f36:	a8660613          	addi	a2,a2,-1402 # ffffffffc020b9b8 <commands+0x210>
ffffffffc0208f3a:	02b00593          	li	a1,43
ffffffffc0208f3e:	00006517          	auipc	a0,0x6
ffffffffc0208f42:	d6250513          	addi	a0,a0,-670 # ffffffffc020eca0 <dev_node_ops+0x318>
ffffffffc0208f46:	d58f70ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc0208f4a:	00006697          	auipc	a3,0x6
ffffffffc0208f4e:	d9668693          	addi	a3,a3,-618 # ffffffffc020ece0 <dev_node_ops+0x358>
ffffffffc0208f52:	00003617          	auipc	a2,0x3
ffffffffc0208f56:	a6660613          	addi	a2,a2,-1434 # ffffffffc020b9b8 <commands+0x210>
ffffffffc0208f5a:	02a00593          	li	a1,42
ffffffffc0208f5e:	00006517          	auipc	a0,0x6
ffffffffc0208f62:	d4250513          	addi	a0,a0,-702 # ffffffffc020eca0 <dev_node_ops+0x318>
ffffffffc0208f66:	d38f70ef          	jal	ra,ffffffffc020049e <__panic>

ffffffffc0208f6a <bitmap_alloc>:
ffffffffc0208f6a:	4150                	lw	a2,4(a0)
ffffffffc0208f6c:	651c                	ld	a5,8(a0)
ffffffffc0208f6e:	c231                	beqz	a2,ffffffffc0208fb2 <bitmap_alloc+0x48>
ffffffffc0208f70:	4701                	li	a4,0
ffffffffc0208f72:	a029                	j	ffffffffc0208f7c <bitmap_alloc+0x12>
ffffffffc0208f74:	2705                	addiw	a4,a4,1
ffffffffc0208f76:	0791                	addi	a5,a5,4
ffffffffc0208f78:	02e60d63          	beq	a2,a4,ffffffffc0208fb2 <bitmap_alloc+0x48>
ffffffffc0208f7c:	4394                	lw	a3,0(a5)
ffffffffc0208f7e:	dafd                	beqz	a3,ffffffffc0208f74 <bitmap_alloc+0xa>
ffffffffc0208f80:	4501                	li	a0,0
ffffffffc0208f82:	4885                	li	a7,1
ffffffffc0208f84:	8e36                	mv	t3,a3
ffffffffc0208f86:	02000313          	li	t1,32
ffffffffc0208f8a:	a021                	j	ffffffffc0208f92 <bitmap_alloc+0x28>
ffffffffc0208f8c:	2505                	addiw	a0,a0,1
ffffffffc0208f8e:	02650463          	beq	a0,t1,ffffffffc0208fb6 <bitmap_alloc+0x4c>
ffffffffc0208f92:	00a8983b          	sllw	a6,a7,a0
ffffffffc0208f96:	0106f633          	and	a2,a3,a6
ffffffffc0208f9a:	2601                	sext.w	a2,a2
ffffffffc0208f9c:	da65                	beqz	a2,ffffffffc0208f8c <bitmap_alloc+0x22>
ffffffffc0208f9e:	010e4833          	xor	a6,t3,a6
ffffffffc0208fa2:	0057171b          	slliw	a4,a4,0x5
ffffffffc0208fa6:	9f29                	addw	a4,a4,a0
ffffffffc0208fa8:	0107a023          	sw	a6,0(a5)
ffffffffc0208fac:	c198                	sw	a4,0(a1)
ffffffffc0208fae:	4501                	li	a0,0
ffffffffc0208fb0:	8082                	ret
ffffffffc0208fb2:	5571                	li	a0,-4
ffffffffc0208fb4:	8082                	ret
ffffffffc0208fb6:	1141                	addi	sp,sp,-16
ffffffffc0208fb8:	00004697          	auipc	a3,0x4
ffffffffc0208fbc:	a8068693          	addi	a3,a3,-1408 # ffffffffc020ca38 <default_pmm_manager+0x598>
ffffffffc0208fc0:	00003617          	auipc	a2,0x3
ffffffffc0208fc4:	9f860613          	addi	a2,a2,-1544 # ffffffffc020b9b8 <commands+0x210>
ffffffffc0208fc8:	04300593          	li	a1,67
ffffffffc0208fcc:	00006517          	auipc	a0,0x6
ffffffffc0208fd0:	cd450513          	addi	a0,a0,-812 # ffffffffc020eca0 <dev_node_ops+0x318>
ffffffffc0208fd4:	e406                	sd	ra,8(sp)
ffffffffc0208fd6:	cc8f70ef          	jal	ra,ffffffffc020049e <__panic>

ffffffffc0208fda <bitmap_test>:
ffffffffc0208fda:	411c                	lw	a5,0(a0)
ffffffffc0208fdc:	00f5ff63          	bgeu	a1,a5,ffffffffc0208ffa <bitmap_test+0x20>
ffffffffc0208fe0:	651c                	ld	a5,8(a0)
ffffffffc0208fe2:	0055d71b          	srliw	a4,a1,0x5
ffffffffc0208fe6:	070a                	slli	a4,a4,0x2
ffffffffc0208fe8:	97ba                	add	a5,a5,a4
ffffffffc0208fea:	4388                	lw	a0,0(a5)
ffffffffc0208fec:	4785                	li	a5,1
ffffffffc0208fee:	00b795bb          	sllw	a1,a5,a1
ffffffffc0208ff2:	8d6d                	and	a0,a0,a1
ffffffffc0208ff4:	1502                	slli	a0,a0,0x20
ffffffffc0208ff6:	9101                	srli	a0,a0,0x20
ffffffffc0208ff8:	8082                	ret
ffffffffc0208ffa:	1141                	addi	sp,sp,-16
ffffffffc0208ffc:	e406                	sd	ra,8(sp)
ffffffffc0208ffe:	e39ff0ef          	jal	ra,ffffffffc0208e36 <bitmap_translate.part.0>

ffffffffc0209002 <bitmap_free>:
ffffffffc0209002:	411c                	lw	a5,0(a0)
ffffffffc0209004:	1141                	addi	sp,sp,-16
ffffffffc0209006:	e406                	sd	ra,8(sp)
ffffffffc0209008:	02f5f463          	bgeu	a1,a5,ffffffffc0209030 <bitmap_free+0x2e>
ffffffffc020900c:	651c                	ld	a5,8(a0)
ffffffffc020900e:	0055d71b          	srliw	a4,a1,0x5
ffffffffc0209012:	070a                	slli	a4,a4,0x2
ffffffffc0209014:	97ba                	add	a5,a5,a4
ffffffffc0209016:	4398                	lw	a4,0(a5)
ffffffffc0209018:	4685                	li	a3,1
ffffffffc020901a:	00b695bb          	sllw	a1,a3,a1
ffffffffc020901e:	00b776b3          	and	a3,a4,a1
ffffffffc0209022:	2681                	sext.w	a3,a3
ffffffffc0209024:	ea81                	bnez	a3,ffffffffc0209034 <bitmap_free+0x32>
ffffffffc0209026:	60a2                	ld	ra,8(sp)
ffffffffc0209028:	8f4d                	or	a4,a4,a1
ffffffffc020902a:	c398                	sw	a4,0(a5)
ffffffffc020902c:	0141                	addi	sp,sp,16
ffffffffc020902e:	8082                	ret
ffffffffc0209030:	e07ff0ef          	jal	ra,ffffffffc0208e36 <bitmap_translate.part.0>
ffffffffc0209034:	00006697          	auipc	a3,0x6
ffffffffc0209038:	cec68693          	addi	a3,a3,-788 # ffffffffc020ed20 <dev_node_ops+0x398>
ffffffffc020903c:	00003617          	auipc	a2,0x3
ffffffffc0209040:	97c60613          	addi	a2,a2,-1668 # ffffffffc020b9b8 <commands+0x210>
ffffffffc0209044:	05f00593          	li	a1,95
ffffffffc0209048:	00006517          	auipc	a0,0x6
ffffffffc020904c:	c5850513          	addi	a0,a0,-936 # ffffffffc020eca0 <dev_node_ops+0x318>
ffffffffc0209050:	c4ef70ef          	jal	ra,ffffffffc020049e <__panic>

ffffffffc0209054 <bitmap_destroy>:
ffffffffc0209054:	1141                	addi	sp,sp,-16
ffffffffc0209056:	e022                	sd	s0,0(sp)
ffffffffc0209058:	842a                	mv	s0,a0
ffffffffc020905a:	6508                	ld	a0,8(a0)
ffffffffc020905c:	e406                	sd	ra,8(sp)
ffffffffc020905e:	fe1f80ef          	jal	ra,ffffffffc020203e <kfree>
ffffffffc0209062:	8522                	mv	a0,s0
ffffffffc0209064:	6402                	ld	s0,0(sp)
ffffffffc0209066:	60a2                	ld	ra,8(sp)
ffffffffc0209068:	0141                	addi	sp,sp,16
ffffffffc020906a:	fd5f806f          	j	ffffffffc020203e <kfree>

ffffffffc020906e <bitmap_getdata>:
ffffffffc020906e:	c589                	beqz	a1,ffffffffc0209078 <bitmap_getdata+0xa>
ffffffffc0209070:	00456783          	lwu	a5,4(a0)
ffffffffc0209074:	078a                	slli	a5,a5,0x2
ffffffffc0209076:	e19c                	sd	a5,0(a1)
ffffffffc0209078:	6508                	ld	a0,8(a0)
ffffffffc020907a:	8082                	ret

ffffffffc020907c <sfs_init>:
ffffffffc020907c:	1141                	addi	sp,sp,-16
ffffffffc020907e:	00006517          	auipc	a0,0x6
ffffffffc0209082:	b1250513          	addi	a0,a0,-1262 # ffffffffc020eb90 <dev_node_ops+0x208>
ffffffffc0209086:	e406                	sd	ra,8(sp)
ffffffffc0209088:	554000ef          	jal	ra,ffffffffc02095dc <sfs_mount>
ffffffffc020908c:	e501                	bnez	a0,ffffffffc0209094 <sfs_init+0x18>
ffffffffc020908e:	60a2                	ld	ra,8(sp)
ffffffffc0209090:	0141                	addi	sp,sp,16
ffffffffc0209092:	8082                	ret
ffffffffc0209094:	86aa                	mv	a3,a0
ffffffffc0209096:	00006617          	auipc	a2,0x6
ffffffffc020909a:	c9a60613          	addi	a2,a2,-870 # ffffffffc020ed30 <dev_node_ops+0x3a8>
ffffffffc020909e:	45c1                	li	a1,16
ffffffffc02090a0:	00006517          	auipc	a0,0x6
ffffffffc02090a4:	cb050513          	addi	a0,a0,-848 # ffffffffc020ed50 <dev_node_ops+0x3c8>
ffffffffc02090a8:	bf6f70ef          	jal	ra,ffffffffc020049e <__panic>

ffffffffc02090ac <sfs_unmount>:
ffffffffc02090ac:	1141                	addi	sp,sp,-16
ffffffffc02090ae:	e406                	sd	ra,8(sp)
ffffffffc02090b0:	e022                	sd	s0,0(sp)
ffffffffc02090b2:	cd1d                	beqz	a0,ffffffffc02090f0 <sfs_unmount+0x44>
ffffffffc02090b4:	0b052783          	lw	a5,176(a0)
ffffffffc02090b8:	842a                	mv	s0,a0
ffffffffc02090ba:	eb9d                	bnez	a5,ffffffffc02090f0 <sfs_unmount+0x44>
ffffffffc02090bc:	7158                	ld	a4,160(a0)
ffffffffc02090be:	09850793          	addi	a5,a0,152
ffffffffc02090c2:	02f71563          	bne	a4,a5,ffffffffc02090ec <sfs_unmount+0x40>
ffffffffc02090c6:	613c                	ld	a5,64(a0)
ffffffffc02090c8:	e7a1                	bnez	a5,ffffffffc0209110 <sfs_unmount+0x64>
ffffffffc02090ca:	7d08                	ld	a0,56(a0)
ffffffffc02090cc:	f89ff0ef          	jal	ra,ffffffffc0209054 <bitmap_destroy>
ffffffffc02090d0:	6428                	ld	a0,72(s0)
ffffffffc02090d2:	f6df80ef          	jal	ra,ffffffffc020203e <kfree>
ffffffffc02090d6:	7448                	ld	a0,168(s0)
ffffffffc02090d8:	f67f80ef          	jal	ra,ffffffffc020203e <kfree>
ffffffffc02090dc:	8522                	mv	a0,s0
ffffffffc02090de:	f61f80ef          	jal	ra,ffffffffc020203e <kfree>
ffffffffc02090e2:	4501                	li	a0,0
ffffffffc02090e4:	60a2                	ld	ra,8(sp)
ffffffffc02090e6:	6402                	ld	s0,0(sp)
ffffffffc02090e8:	0141                	addi	sp,sp,16
ffffffffc02090ea:	8082                	ret
ffffffffc02090ec:	5545                	li	a0,-15
ffffffffc02090ee:	bfdd                	j	ffffffffc02090e4 <sfs_unmount+0x38>
ffffffffc02090f0:	00006697          	auipc	a3,0x6
ffffffffc02090f4:	c7868693          	addi	a3,a3,-904 # ffffffffc020ed68 <dev_node_ops+0x3e0>
ffffffffc02090f8:	00003617          	auipc	a2,0x3
ffffffffc02090fc:	8c060613          	addi	a2,a2,-1856 # ffffffffc020b9b8 <commands+0x210>
ffffffffc0209100:	04100593          	li	a1,65
ffffffffc0209104:	00006517          	auipc	a0,0x6
ffffffffc0209108:	c9450513          	addi	a0,a0,-876 # ffffffffc020ed98 <dev_node_ops+0x410>
ffffffffc020910c:	b92f70ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc0209110:	00006697          	auipc	a3,0x6
ffffffffc0209114:	ca068693          	addi	a3,a3,-864 # ffffffffc020edb0 <dev_node_ops+0x428>
ffffffffc0209118:	00003617          	auipc	a2,0x3
ffffffffc020911c:	8a060613          	addi	a2,a2,-1888 # ffffffffc020b9b8 <commands+0x210>
ffffffffc0209120:	04500593          	li	a1,69
ffffffffc0209124:	00006517          	auipc	a0,0x6
ffffffffc0209128:	c7450513          	addi	a0,a0,-908 # ffffffffc020ed98 <dev_node_ops+0x410>
ffffffffc020912c:	b72f70ef          	jal	ra,ffffffffc020049e <__panic>

ffffffffc0209130 <sfs_cleanup>:
ffffffffc0209130:	1101                	addi	sp,sp,-32
ffffffffc0209132:	ec06                	sd	ra,24(sp)
ffffffffc0209134:	e822                	sd	s0,16(sp)
ffffffffc0209136:	e426                	sd	s1,8(sp)
ffffffffc0209138:	e04a                	sd	s2,0(sp)
ffffffffc020913a:	c525                	beqz	a0,ffffffffc02091a2 <sfs_cleanup+0x72>
ffffffffc020913c:	0b052783          	lw	a5,176(a0)
ffffffffc0209140:	84aa                	mv	s1,a0
ffffffffc0209142:	e3a5                	bnez	a5,ffffffffc02091a2 <sfs_cleanup+0x72>
ffffffffc0209144:	4158                	lw	a4,4(a0)
ffffffffc0209146:	4514                	lw	a3,8(a0)
ffffffffc0209148:	00c50913          	addi	s2,a0,12
ffffffffc020914c:	85ca                	mv	a1,s2
ffffffffc020914e:	40d7063b          	subw	a2,a4,a3
ffffffffc0209152:	00006517          	auipc	a0,0x6
ffffffffc0209156:	c7650513          	addi	a0,a0,-906 # ffffffffc020edc8 <dev_node_ops+0x440>
ffffffffc020915a:	84cf70ef          	jal	ra,ffffffffc02001a6 <cprintf>
ffffffffc020915e:	02000413          	li	s0,32
ffffffffc0209162:	a019                	j	ffffffffc0209168 <sfs_cleanup+0x38>
ffffffffc0209164:	347d                	addiw	s0,s0,-1
ffffffffc0209166:	c819                	beqz	s0,ffffffffc020917c <sfs_cleanup+0x4c>
ffffffffc0209168:	7cdc                	ld	a5,184(s1)
ffffffffc020916a:	8526                	mv	a0,s1
ffffffffc020916c:	9782                	jalr	a5
ffffffffc020916e:	f97d                	bnez	a0,ffffffffc0209164 <sfs_cleanup+0x34>
ffffffffc0209170:	60e2                	ld	ra,24(sp)
ffffffffc0209172:	6442                	ld	s0,16(sp)
ffffffffc0209174:	64a2                	ld	s1,8(sp)
ffffffffc0209176:	6902                	ld	s2,0(sp)
ffffffffc0209178:	6105                	addi	sp,sp,32
ffffffffc020917a:	8082                	ret
ffffffffc020917c:	6442                	ld	s0,16(sp)
ffffffffc020917e:	60e2                	ld	ra,24(sp)
ffffffffc0209180:	64a2                	ld	s1,8(sp)
ffffffffc0209182:	86ca                	mv	a3,s2
ffffffffc0209184:	6902                	ld	s2,0(sp)
ffffffffc0209186:	872a                	mv	a4,a0
ffffffffc0209188:	00006617          	auipc	a2,0x6
ffffffffc020918c:	c6060613          	addi	a2,a2,-928 # ffffffffc020ede8 <dev_node_ops+0x460>
ffffffffc0209190:	05f00593          	li	a1,95
ffffffffc0209194:	00006517          	auipc	a0,0x6
ffffffffc0209198:	c0450513          	addi	a0,a0,-1020 # ffffffffc020ed98 <dev_node_ops+0x410>
ffffffffc020919c:	6105                	addi	sp,sp,32
ffffffffc020919e:	b68f706f          	j	ffffffffc0200506 <__warn>
ffffffffc02091a2:	00006697          	auipc	a3,0x6
ffffffffc02091a6:	bc668693          	addi	a3,a3,-1082 # ffffffffc020ed68 <dev_node_ops+0x3e0>
ffffffffc02091aa:	00003617          	auipc	a2,0x3
ffffffffc02091ae:	80e60613          	addi	a2,a2,-2034 # ffffffffc020b9b8 <commands+0x210>
ffffffffc02091b2:	05400593          	li	a1,84
ffffffffc02091b6:	00006517          	auipc	a0,0x6
ffffffffc02091ba:	be250513          	addi	a0,a0,-1054 # ffffffffc020ed98 <dev_node_ops+0x410>
ffffffffc02091be:	ae0f70ef          	jal	ra,ffffffffc020049e <__panic>

ffffffffc02091c2 <sfs_sync>:
ffffffffc02091c2:	7179                	addi	sp,sp,-48
ffffffffc02091c4:	f406                	sd	ra,40(sp)
ffffffffc02091c6:	f022                	sd	s0,32(sp)
ffffffffc02091c8:	ec26                	sd	s1,24(sp)
ffffffffc02091ca:	e84a                	sd	s2,16(sp)
ffffffffc02091cc:	e44e                	sd	s3,8(sp)
ffffffffc02091ce:	e052                	sd	s4,0(sp)
ffffffffc02091d0:	cd4d                	beqz	a0,ffffffffc020928a <sfs_sync+0xc8>
ffffffffc02091d2:	0b052783          	lw	a5,176(a0)
ffffffffc02091d6:	8a2a                	mv	s4,a0
ffffffffc02091d8:	ebcd                	bnez	a5,ffffffffc020928a <sfs_sync+0xc8>
ffffffffc02091da:	5a7010ef          	jal	ra,ffffffffc020af80 <lock_sfs_fs>
ffffffffc02091de:	0a0a3403          	ld	s0,160(s4)
ffffffffc02091e2:	098a0913          	addi	s2,s4,152
ffffffffc02091e6:	02890763          	beq	s2,s0,ffffffffc0209214 <sfs_sync+0x52>
ffffffffc02091ea:	00004997          	auipc	s3,0x4
ffffffffc02091ee:	15698993          	addi	s3,s3,342 # ffffffffc020d340 <default_pmm_manager+0xea0>
ffffffffc02091f2:	7c1c                	ld	a5,56(s0)
ffffffffc02091f4:	fc840493          	addi	s1,s0,-56
ffffffffc02091f8:	cbb5                	beqz	a5,ffffffffc020926c <sfs_sync+0xaa>
ffffffffc02091fa:	7b9c                	ld	a5,48(a5)
ffffffffc02091fc:	cba5                	beqz	a5,ffffffffc020926c <sfs_sync+0xaa>
ffffffffc02091fe:	85ce                	mv	a1,s3
ffffffffc0209200:	8526                	mv	a0,s1
ffffffffc0209202:	e28fe0ef          	jal	ra,ffffffffc020782a <inode_check>
ffffffffc0209206:	7c1c                	ld	a5,56(s0)
ffffffffc0209208:	8526                	mv	a0,s1
ffffffffc020920a:	7b9c                	ld	a5,48(a5)
ffffffffc020920c:	9782                	jalr	a5
ffffffffc020920e:	6400                	ld	s0,8(s0)
ffffffffc0209210:	fe8911e3          	bne	s2,s0,ffffffffc02091f2 <sfs_sync+0x30>
ffffffffc0209214:	8552                	mv	a0,s4
ffffffffc0209216:	57b010ef          	jal	ra,ffffffffc020af90 <unlock_sfs_fs>
ffffffffc020921a:	040a3783          	ld	a5,64(s4)
ffffffffc020921e:	4501                	li	a0,0
ffffffffc0209220:	eb89                	bnez	a5,ffffffffc0209232 <sfs_sync+0x70>
ffffffffc0209222:	70a2                	ld	ra,40(sp)
ffffffffc0209224:	7402                	ld	s0,32(sp)
ffffffffc0209226:	64e2                	ld	s1,24(sp)
ffffffffc0209228:	6942                	ld	s2,16(sp)
ffffffffc020922a:	69a2                	ld	s3,8(sp)
ffffffffc020922c:	6a02                	ld	s4,0(sp)
ffffffffc020922e:	6145                	addi	sp,sp,48
ffffffffc0209230:	8082                	ret
ffffffffc0209232:	040a3023          	sd	zero,64(s4)
ffffffffc0209236:	8552                	mv	a0,s4
ffffffffc0209238:	42d010ef          	jal	ra,ffffffffc020ae64 <sfs_sync_super>
ffffffffc020923c:	cd01                	beqz	a0,ffffffffc0209254 <sfs_sync+0x92>
ffffffffc020923e:	70a2                	ld	ra,40(sp)
ffffffffc0209240:	7402                	ld	s0,32(sp)
ffffffffc0209242:	4785                	li	a5,1
ffffffffc0209244:	04fa3023          	sd	a5,64(s4)
ffffffffc0209248:	64e2                	ld	s1,24(sp)
ffffffffc020924a:	6942                	ld	s2,16(sp)
ffffffffc020924c:	69a2                	ld	s3,8(sp)
ffffffffc020924e:	6a02                	ld	s4,0(sp)
ffffffffc0209250:	6145                	addi	sp,sp,48
ffffffffc0209252:	8082                	ret
ffffffffc0209254:	8552                	mv	a0,s4
ffffffffc0209256:	455010ef          	jal	ra,ffffffffc020aeaa <sfs_sync_freemap>
ffffffffc020925a:	f175                	bnez	a0,ffffffffc020923e <sfs_sync+0x7c>
ffffffffc020925c:	70a2                	ld	ra,40(sp)
ffffffffc020925e:	7402                	ld	s0,32(sp)
ffffffffc0209260:	64e2                	ld	s1,24(sp)
ffffffffc0209262:	6942                	ld	s2,16(sp)
ffffffffc0209264:	69a2                	ld	s3,8(sp)
ffffffffc0209266:	6a02                	ld	s4,0(sp)
ffffffffc0209268:	6145                	addi	sp,sp,48
ffffffffc020926a:	8082                	ret
ffffffffc020926c:	00004697          	auipc	a3,0x4
ffffffffc0209270:	08468693          	addi	a3,a3,132 # ffffffffc020d2f0 <default_pmm_manager+0xe50>
ffffffffc0209274:	00002617          	auipc	a2,0x2
ffffffffc0209278:	74460613          	addi	a2,a2,1860 # ffffffffc020b9b8 <commands+0x210>
ffffffffc020927c:	45ed                	li	a1,27
ffffffffc020927e:	00006517          	auipc	a0,0x6
ffffffffc0209282:	b1a50513          	addi	a0,a0,-1254 # ffffffffc020ed98 <dev_node_ops+0x410>
ffffffffc0209286:	a18f70ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc020928a:	00006697          	auipc	a3,0x6
ffffffffc020928e:	ade68693          	addi	a3,a3,-1314 # ffffffffc020ed68 <dev_node_ops+0x3e0>
ffffffffc0209292:	00002617          	auipc	a2,0x2
ffffffffc0209296:	72660613          	addi	a2,a2,1830 # ffffffffc020b9b8 <commands+0x210>
ffffffffc020929a:	45d5                	li	a1,21
ffffffffc020929c:	00006517          	auipc	a0,0x6
ffffffffc02092a0:	afc50513          	addi	a0,a0,-1284 # ffffffffc020ed98 <dev_node_ops+0x410>
ffffffffc02092a4:	9faf70ef          	jal	ra,ffffffffc020049e <__panic>

ffffffffc02092a8 <sfs_get_root>:
ffffffffc02092a8:	1101                	addi	sp,sp,-32
ffffffffc02092aa:	ec06                	sd	ra,24(sp)
ffffffffc02092ac:	cd09                	beqz	a0,ffffffffc02092c6 <sfs_get_root+0x1e>
ffffffffc02092ae:	0b052783          	lw	a5,176(a0)
ffffffffc02092b2:	eb91                	bnez	a5,ffffffffc02092c6 <sfs_get_root+0x1e>
ffffffffc02092b4:	4605                	li	a2,1
ffffffffc02092b6:	002c                	addi	a1,sp,8
ffffffffc02092b8:	3de010ef          	jal	ra,ffffffffc020a696 <sfs_load_inode>
ffffffffc02092bc:	e50d                	bnez	a0,ffffffffc02092e6 <sfs_get_root+0x3e>
ffffffffc02092be:	60e2                	ld	ra,24(sp)
ffffffffc02092c0:	6522                	ld	a0,8(sp)
ffffffffc02092c2:	6105                	addi	sp,sp,32
ffffffffc02092c4:	8082                	ret
ffffffffc02092c6:	00006697          	auipc	a3,0x6
ffffffffc02092ca:	aa268693          	addi	a3,a3,-1374 # ffffffffc020ed68 <dev_node_ops+0x3e0>
ffffffffc02092ce:	00002617          	auipc	a2,0x2
ffffffffc02092d2:	6ea60613          	addi	a2,a2,1770 # ffffffffc020b9b8 <commands+0x210>
ffffffffc02092d6:	03600593          	li	a1,54
ffffffffc02092da:	00006517          	auipc	a0,0x6
ffffffffc02092de:	abe50513          	addi	a0,a0,-1346 # ffffffffc020ed98 <dev_node_ops+0x410>
ffffffffc02092e2:	9bcf70ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc02092e6:	86aa                	mv	a3,a0
ffffffffc02092e8:	00006617          	auipc	a2,0x6
ffffffffc02092ec:	b2060613          	addi	a2,a2,-1248 # ffffffffc020ee08 <dev_node_ops+0x480>
ffffffffc02092f0:	03700593          	li	a1,55
ffffffffc02092f4:	00006517          	auipc	a0,0x6
ffffffffc02092f8:	aa450513          	addi	a0,a0,-1372 # ffffffffc020ed98 <dev_node_ops+0x410>
ffffffffc02092fc:	9a2f70ef          	jal	ra,ffffffffc020049e <__panic>

ffffffffc0209300 <sfs_do_mount>:
ffffffffc0209300:	6518                	ld	a4,8(a0)
ffffffffc0209302:	7171                	addi	sp,sp,-176
ffffffffc0209304:	f506                	sd	ra,168(sp)
ffffffffc0209306:	f122                	sd	s0,160(sp)
ffffffffc0209308:	ed26                	sd	s1,152(sp)
ffffffffc020930a:	e94a                	sd	s2,144(sp)
ffffffffc020930c:	e54e                	sd	s3,136(sp)
ffffffffc020930e:	e152                	sd	s4,128(sp)
ffffffffc0209310:	fcd6                	sd	s5,120(sp)
ffffffffc0209312:	f8da                	sd	s6,112(sp)
ffffffffc0209314:	f4de                	sd	s7,104(sp)
ffffffffc0209316:	f0e2                	sd	s8,96(sp)
ffffffffc0209318:	ece6                	sd	s9,88(sp)
ffffffffc020931a:	e8ea                	sd	s10,80(sp)
ffffffffc020931c:	e4ee                	sd	s11,72(sp)
ffffffffc020931e:	6785                	lui	a5,0x1
ffffffffc0209320:	24f71663          	bne	a4,a5,ffffffffc020956c <sfs_do_mount+0x26c>
ffffffffc0209324:	892a                	mv	s2,a0
ffffffffc0209326:	4501                	li	a0,0
ffffffffc0209328:	8aae                	mv	s5,a1
ffffffffc020932a:	f00fe0ef          	jal	ra,ffffffffc0207a2a <__alloc_fs>
ffffffffc020932e:	842a                	mv	s0,a0
ffffffffc0209330:	24050463          	beqz	a0,ffffffffc0209578 <sfs_do_mount+0x278>
ffffffffc0209334:	0b052b03          	lw	s6,176(a0)
ffffffffc0209338:	260b1263          	bnez	s6,ffffffffc020959c <sfs_do_mount+0x29c>
ffffffffc020933c:	03253823          	sd	s2,48(a0)
ffffffffc0209340:	6505                	lui	a0,0x1
ffffffffc0209342:	c4df80ef          	jal	ra,ffffffffc0201f8e <kmalloc>
ffffffffc0209346:	e428                	sd	a0,72(s0)
ffffffffc0209348:	84aa                	mv	s1,a0
ffffffffc020934a:	16050363          	beqz	a0,ffffffffc02094b0 <sfs_do_mount+0x1b0>
ffffffffc020934e:	85aa                	mv	a1,a0
ffffffffc0209350:	4681                	li	a3,0
ffffffffc0209352:	6605                	lui	a2,0x1
ffffffffc0209354:	1008                	addi	a0,sp,32
ffffffffc0209356:	88cfc0ef          	jal	ra,ffffffffc02053e2 <iobuf_init>
ffffffffc020935a:	02093783          	ld	a5,32(s2)
ffffffffc020935e:	85aa                	mv	a1,a0
ffffffffc0209360:	4601                	li	a2,0
ffffffffc0209362:	854a                	mv	a0,s2
ffffffffc0209364:	9782                	jalr	a5
ffffffffc0209366:	8a2a                	mv	s4,a0
ffffffffc0209368:	10051e63          	bnez	a0,ffffffffc0209484 <sfs_do_mount+0x184>
ffffffffc020936c:	408c                	lw	a1,0(s1)
ffffffffc020936e:	2f8dc637          	lui	a2,0x2f8dc
ffffffffc0209372:	e2a60613          	addi	a2,a2,-470 # 2f8dbe2a <_binary_bin_sfs_img_size+0x2f866b2a>
ffffffffc0209376:	14c59863          	bne	a1,a2,ffffffffc02094c6 <sfs_do_mount+0x1c6>
ffffffffc020937a:	40dc                	lw	a5,4(s1)
ffffffffc020937c:	00093603          	ld	a2,0(s2)
ffffffffc0209380:	02079713          	slli	a4,a5,0x20
ffffffffc0209384:	9301                	srli	a4,a4,0x20
ffffffffc0209386:	12e66763          	bltu	a2,a4,ffffffffc02094b4 <sfs_do_mount+0x1b4>
ffffffffc020938a:	020485a3          	sb	zero,43(s1)
ffffffffc020938e:	0084af03          	lw	t5,8(s1)
ffffffffc0209392:	00c4ae83          	lw	t4,12(s1)
ffffffffc0209396:	0104ae03          	lw	t3,16(s1)
ffffffffc020939a:	0144a303          	lw	t1,20(s1)
ffffffffc020939e:	0184a883          	lw	a7,24(s1)
ffffffffc02093a2:	01c4a803          	lw	a6,28(s1)
ffffffffc02093a6:	5090                	lw	a2,32(s1)
ffffffffc02093a8:	50d4                	lw	a3,36(s1)
ffffffffc02093aa:	5498                	lw	a4,40(s1)
ffffffffc02093ac:	6511                	lui	a0,0x4
ffffffffc02093ae:	c00c                	sw	a1,0(s0)
ffffffffc02093b0:	c05c                	sw	a5,4(s0)
ffffffffc02093b2:	01e42423          	sw	t5,8(s0)
ffffffffc02093b6:	01d42623          	sw	t4,12(s0)
ffffffffc02093ba:	01c42823          	sw	t3,16(s0)
ffffffffc02093be:	00642a23          	sw	t1,20(s0)
ffffffffc02093c2:	01142c23          	sw	a7,24(s0)
ffffffffc02093c6:	01042e23          	sw	a6,28(s0)
ffffffffc02093ca:	d010                	sw	a2,32(s0)
ffffffffc02093cc:	d054                	sw	a3,36(s0)
ffffffffc02093ce:	d418                	sw	a4,40(s0)
ffffffffc02093d0:	bbff80ef          	jal	ra,ffffffffc0201f8e <kmalloc>
ffffffffc02093d4:	f448                	sd	a0,168(s0)
ffffffffc02093d6:	8c2a                	mv	s8,a0
ffffffffc02093d8:	18050c63          	beqz	a0,ffffffffc0209570 <sfs_do_mount+0x270>
ffffffffc02093dc:	6711                	lui	a4,0x4
ffffffffc02093de:	87aa                	mv	a5,a0
ffffffffc02093e0:	972a                	add	a4,a4,a0
ffffffffc02093e2:	e79c                	sd	a5,8(a5)
ffffffffc02093e4:	e39c                	sd	a5,0(a5)
ffffffffc02093e6:	07c1                	addi	a5,a5,16
ffffffffc02093e8:	fee79de3          	bne	a5,a4,ffffffffc02093e2 <sfs_do_mount+0xe2>
ffffffffc02093ec:	0044eb83          	lwu	s7,4(s1)
ffffffffc02093f0:	67a1                	lui	a5,0x8
ffffffffc02093f2:	fff78993          	addi	s3,a5,-1 # 7fff <_binary_bin_swap_img_size+0x2ff>
ffffffffc02093f6:	9bce                	add	s7,s7,s3
ffffffffc02093f8:	77e1                	lui	a5,0xffff8
ffffffffc02093fa:	00fbfbb3          	and	s7,s7,a5
ffffffffc02093fe:	2b81                	sext.w	s7,s7
ffffffffc0209400:	855e                	mv	a0,s7
ffffffffc0209402:	a59ff0ef          	jal	ra,ffffffffc0208e5a <bitmap_create>
ffffffffc0209406:	fc08                	sd	a0,56(s0)
ffffffffc0209408:	8d2a                	mv	s10,a0
ffffffffc020940a:	14050f63          	beqz	a0,ffffffffc0209568 <sfs_do_mount+0x268>
ffffffffc020940e:	0044e783          	lwu	a5,4(s1)
ffffffffc0209412:	082c                	addi	a1,sp,24
ffffffffc0209414:	97ce                	add	a5,a5,s3
ffffffffc0209416:	00f7d713          	srli	a4,a5,0xf
ffffffffc020941a:	e43a                	sd	a4,8(sp)
ffffffffc020941c:	40f7d993          	srai	s3,a5,0xf
ffffffffc0209420:	c4fff0ef          	jal	ra,ffffffffc020906e <bitmap_getdata>
ffffffffc0209424:	14050c63          	beqz	a0,ffffffffc020957c <sfs_do_mount+0x27c>
ffffffffc0209428:	00c9979b          	slliw	a5,s3,0xc
ffffffffc020942c:	66e2                	ld	a3,24(sp)
ffffffffc020942e:	1782                	slli	a5,a5,0x20
ffffffffc0209430:	9381                	srli	a5,a5,0x20
ffffffffc0209432:	14d79563          	bne	a5,a3,ffffffffc020957c <sfs_do_mount+0x27c>
ffffffffc0209436:	6722                	ld	a4,8(sp)
ffffffffc0209438:	6d89                	lui	s11,0x2
ffffffffc020943a:	89aa                	mv	s3,a0
ffffffffc020943c:	00c71c93          	slli	s9,a4,0xc
ffffffffc0209440:	9caa                	add	s9,s9,a0
ffffffffc0209442:	40ad8dbb          	subw	s11,s11,a0
ffffffffc0209446:	e711                	bnez	a4,ffffffffc0209452 <sfs_do_mount+0x152>
ffffffffc0209448:	a079                	j	ffffffffc02094d6 <sfs_do_mount+0x1d6>
ffffffffc020944a:	6785                	lui	a5,0x1
ffffffffc020944c:	99be                	add	s3,s3,a5
ffffffffc020944e:	093c8463          	beq	s9,s3,ffffffffc02094d6 <sfs_do_mount+0x1d6>
ffffffffc0209452:	013d86bb          	addw	a3,s11,s3
ffffffffc0209456:	1682                	slli	a3,a3,0x20
ffffffffc0209458:	6605                	lui	a2,0x1
ffffffffc020945a:	85ce                	mv	a1,s3
ffffffffc020945c:	9281                	srli	a3,a3,0x20
ffffffffc020945e:	1008                	addi	a0,sp,32
ffffffffc0209460:	f83fb0ef          	jal	ra,ffffffffc02053e2 <iobuf_init>
ffffffffc0209464:	02093783          	ld	a5,32(s2)
ffffffffc0209468:	85aa                	mv	a1,a0
ffffffffc020946a:	4601                	li	a2,0
ffffffffc020946c:	854a                	mv	a0,s2
ffffffffc020946e:	9782                	jalr	a5
ffffffffc0209470:	dd69                	beqz	a0,ffffffffc020944a <sfs_do_mount+0x14a>
ffffffffc0209472:	e42a                	sd	a0,8(sp)
ffffffffc0209474:	856a                	mv	a0,s10
ffffffffc0209476:	bdfff0ef          	jal	ra,ffffffffc0209054 <bitmap_destroy>
ffffffffc020947a:	67a2                	ld	a5,8(sp)
ffffffffc020947c:	8a3e                	mv	s4,a5
ffffffffc020947e:	8562                	mv	a0,s8
ffffffffc0209480:	bbff80ef          	jal	ra,ffffffffc020203e <kfree>
ffffffffc0209484:	8526                	mv	a0,s1
ffffffffc0209486:	bb9f80ef          	jal	ra,ffffffffc020203e <kfree>
ffffffffc020948a:	8522                	mv	a0,s0
ffffffffc020948c:	bb3f80ef          	jal	ra,ffffffffc020203e <kfree>
ffffffffc0209490:	70aa                	ld	ra,168(sp)
ffffffffc0209492:	740a                	ld	s0,160(sp)
ffffffffc0209494:	64ea                	ld	s1,152(sp)
ffffffffc0209496:	694a                	ld	s2,144(sp)
ffffffffc0209498:	69aa                	ld	s3,136(sp)
ffffffffc020949a:	7ae6                	ld	s5,120(sp)
ffffffffc020949c:	7b46                	ld	s6,112(sp)
ffffffffc020949e:	7ba6                	ld	s7,104(sp)
ffffffffc02094a0:	7c06                	ld	s8,96(sp)
ffffffffc02094a2:	6ce6                	ld	s9,88(sp)
ffffffffc02094a4:	6d46                	ld	s10,80(sp)
ffffffffc02094a6:	6da6                	ld	s11,72(sp)
ffffffffc02094a8:	8552                	mv	a0,s4
ffffffffc02094aa:	6a0a                	ld	s4,128(sp)
ffffffffc02094ac:	614d                	addi	sp,sp,176
ffffffffc02094ae:	8082                	ret
ffffffffc02094b0:	5a71                	li	s4,-4
ffffffffc02094b2:	bfe1                	j	ffffffffc020948a <sfs_do_mount+0x18a>
ffffffffc02094b4:	85be                	mv	a1,a5
ffffffffc02094b6:	00006517          	auipc	a0,0x6
ffffffffc02094ba:	9aa50513          	addi	a0,a0,-1622 # ffffffffc020ee60 <dev_node_ops+0x4d8>
ffffffffc02094be:	ce9f60ef          	jal	ra,ffffffffc02001a6 <cprintf>
ffffffffc02094c2:	5a75                	li	s4,-3
ffffffffc02094c4:	b7c1                	j	ffffffffc0209484 <sfs_do_mount+0x184>
ffffffffc02094c6:	00006517          	auipc	a0,0x6
ffffffffc02094ca:	96250513          	addi	a0,a0,-1694 # ffffffffc020ee28 <dev_node_ops+0x4a0>
ffffffffc02094ce:	cd9f60ef          	jal	ra,ffffffffc02001a6 <cprintf>
ffffffffc02094d2:	5a75                	li	s4,-3
ffffffffc02094d4:	bf45                	j	ffffffffc0209484 <sfs_do_mount+0x184>
ffffffffc02094d6:	00442903          	lw	s2,4(s0)
ffffffffc02094da:	4481                	li	s1,0
ffffffffc02094dc:	080b8c63          	beqz	s7,ffffffffc0209574 <sfs_do_mount+0x274>
ffffffffc02094e0:	85a6                	mv	a1,s1
ffffffffc02094e2:	856a                	mv	a0,s10
ffffffffc02094e4:	af7ff0ef          	jal	ra,ffffffffc0208fda <bitmap_test>
ffffffffc02094e8:	c111                	beqz	a0,ffffffffc02094ec <sfs_do_mount+0x1ec>
ffffffffc02094ea:	2b05                	addiw	s6,s6,1
ffffffffc02094ec:	2485                	addiw	s1,s1,1
ffffffffc02094ee:	fe9b99e3          	bne	s7,s1,ffffffffc02094e0 <sfs_do_mount+0x1e0>
ffffffffc02094f2:	441c                	lw	a5,8(s0)
ffffffffc02094f4:	0d679463          	bne	a5,s6,ffffffffc02095bc <sfs_do_mount+0x2bc>
ffffffffc02094f8:	4585                	li	a1,1
ffffffffc02094fa:	05040513          	addi	a0,s0,80
ffffffffc02094fe:	04043023          	sd	zero,64(s0)
ffffffffc0209502:	858fb0ef          	jal	ra,ffffffffc020455a <sem_init>
ffffffffc0209506:	4585                	li	a1,1
ffffffffc0209508:	06840513          	addi	a0,s0,104
ffffffffc020950c:	84efb0ef          	jal	ra,ffffffffc020455a <sem_init>
ffffffffc0209510:	4585                	li	a1,1
ffffffffc0209512:	08040513          	addi	a0,s0,128
ffffffffc0209516:	844fb0ef          	jal	ra,ffffffffc020455a <sem_init>
ffffffffc020951a:	09840793          	addi	a5,s0,152
ffffffffc020951e:	f05c                	sd	a5,160(s0)
ffffffffc0209520:	ec5c                	sd	a5,152(s0)
ffffffffc0209522:	874a                	mv	a4,s2
ffffffffc0209524:	86da                	mv	a3,s6
ffffffffc0209526:	4169063b          	subw	a2,s2,s6
ffffffffc020952a:	00c40593          	addi	a1,s0,12
ffffffffc020952e:	00006517          	auipc	a0,0x6
ffffffffc0209532:	9c250513          	addi	a0,a0,-1598 # ffffffffc020eef0 <dev_node_ops+0x568>
ffffffffc0209536:	c71f60ef          	jal	ra,ffffffffc02001a6 <cprintf>
ffffffffc020953a:	00000797          	auipc	a5,0x0
ffffffffc020953e:	c8878793          	addi	a5,a5,-888 # ffffffffc02091c2 <sfs_sync>
ffffffffc0209542:	fc5c                	sd	a5,184(s0)
ffffffffc0209544:	00000797          	auipc	a5,0x0
ffffffffc0209548:	d6478793          	addi	a5,a5,-668 # ffffffffc02092a8 <sfs_get_root>
ffffffffc020954c:	e07c                	sd	a5,192(s0)
ffffffffc020954e:	00000797          	auipc	a5,0x0
ffffffffc0209552:	b5e78793          	addi	a5,a5,-1186 # ffffffffc02090ac <sfs_unmount>
ffffffffc0209556:	e47c                	sd	a5,200(s0)
ffffffffc0209558:	00000797          	auipc	a5,0x0
ffffffffc020955c:	bd878793          	addi	a5,a5,-1064 # ffffffffc0209130 <sfs_cleanup>
ffffffffc0209560:	e87c                	sd	a5,208(s0)
ffffffffc0209562:	008ab023          	sd	s0,0(s5)
ffffffffc0209566:	b72d                	j	ffffffffc0209490 <sfs_do_mount+0x190>
ffffffffc0209568:	5a71                	li	s4,-4
ffffffffc020956a:	bf11                	j	ffffffffc020947e <sfs_do_mount+0x17e>
ffffffffc020956c:	5a49                	li	s4,-14
ffffffffc020956e:	b70d                	j	ffffffffc0209490 <sfs_do_mount+0x190>
ffffffffc0209570:	5a71                	li	s4,-4
ffffffffc0209572:	bf09                	j	ffffffffc0209484 <sfs_do_mount+0x184>
ffffffffc0209574:	4b01                	li	s6,0
ffffffffc0209576:	bfb5                	j	ffffffffc02094f2 <sfs_do_mount+0x1f2>
ffffffffc0209578:	5a71                	li	s4,-4
ffffffffc020957a:	bf19                	j	ffffffffc0209490 <sfs_do_mount+0x190>
ffffffffc020957c:	00006697          	auipc	a3,0x6
ffffffffc0209580:	91468693          	addi	a3,a3,-1772 # ffffffffc020ee90 <dev_node_ops+0x508>
ffffffffc0209584:	00002617          	auipc	a2,0x2
ffffffffc0209588:	43460613          	addi	a2,a2,1076 # ffffffffc020b9b8 <commands+0x210>
ffffffffc020958c:	08300593          	li	a1,131
ffffffffc0209590:	00006517          	auipc	a0,0x6
ffffffffc0209594:	80850513          	addi	a0,a0,-2040 # ffffffffc020ed98 <dev_node_ops+0x410>
ffffffffc0209598:	f07f60ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc020959c:	00005697          	auipc	a3,0x5
ffffffffc02095a0:	7cc68693          	addi	a3,a3,1996 # ffffffffc020ed68 <dev_node_ops+0x3e0>
ffffffffc02095a4:	00002617          	auipc	a2,0x2
ffffffffc02095a8:	41460613          	addi	a2,a2,1044 # ffffffffc020b9b8 <commands+0x210>
ffffffffc02095ac:	0a300593          	li	a1,163
ffffffffc02095b0:	00005517          	auipc	a0,0x5
ffffffffc02095b4:	7e850513          	addi	a0,a0,2024 # ffffffffc020ed98 <dev_node_ops+0x410>
ffffffffc02095b8:	ee7f60ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc02095bc:	00006697          	auipc	a3,0x6
ffffffffc02095c0:	90468693          	addi	a3,a3,-1788 # ffffffffc020eec0 <dev_node_ops+0x538>
ffffffffc02095c4:	00002617          	auipc	a2,0x2
ffffffffc02095c8:	3f460613          	addi	a2,a2,1012 # ffffffffc020b9b8 <commands+0x210>
ffffffffc02095cc:	0e000593          	li	a1,224
ffffffffc02095d0:	00005517          	auipc	a0,0x5
ffffffffc02095d4:	7c850513          	addi	a0,a0,1992 # ffffffffc020ed98 <dev_node_ops+0x410>
ffffffffc02095d8:	ec7f60ef          	jal	ra,ffffffffc020049e <__panic>

ffffffffc02095dc <sfs_mount>:
ffffffffc02095dc:	00000597          	auipc	a1,0x0
ffffffffc02095e0:	d2458593          	addi	a1,a1,-732 # ffffffffc0209300 <sfs_do_mount>
ffffffffc02095e4:	817fe06f          	j	ffffffffc0207dfa <vfs_mount>

ffffffffc02095e8 <sfs_opendir>:
ffffffffc02095e8:	0235f593          	andi	a1,a1,35
ffffffffc02095ec:	4501                	li	a0,0
ffffffffc02095ee:	e191                	bnez	a1,ffffffffc02095f2 <sfs_opendir+0xa>
ffffffffc02095f0:	8082                	ret
ffffffffc02095f2:	553d                	li	a0,-17
ffffffffc02095f4:	8082                	ret

ffffffffc02095f6 <sfs_openfile>:
ffffffffc02095f6:	4501                	li	a0,0
ffffffffc02095f8:	8082                	ret

ffffffffc02095fa <sfs_gettype>:
ffffffffc02095fa:	1141                	addi	sp,sp,-16
ffffffffc02095fc:	e406                	sd	ra,8(sp)
ffffffffc02095fe:	c939                	beqz	a0,ffffffffc0209654 <sfs_gettype+0x5a>
ffffffffc0209600:	4d34                	lw	a3,88(a0)
ffffffffc0209602:	6785                	lui	a5,0x1
ffffffffc0209604:	23578713          	addi	a4,a5,565 # 1235 <_binary_bin_swap_img_size-0x6acb>
ffffffffc0209608:	04e69663          	bne	a3,a4,ffffffffc0209654 <sfs_gettype+0x5a>
ffffffffc020960c:	6114                	ld	a3,0(a0)
ffffffffc020960e:	4709                	li	a4,2
ffffffffc0209610:	0046d683          	lhu	a3,4(a3)
ffffffffc0209614:	02e68a63          	beq	a3,a4,ffffffffc0209648 <sfs_gettype+0x4e>
ffffffffc0209618:	470d                	li	a4,3
ffffffffc020961a:	02e68163          	beq	a3,a4,ffffffffc020963c <sfs_gettype+0x42>
ffffffffc020961e:	4705                	li	a4,1
ffffffffc0209620:	00e68f63          	beq	a3,a4,ffffffffc020963e <sfs_gettype+0x44>
ffffffffc0209624:	00006617          	auipc	a2,0x6
ffffffffc0209628:	93c60613          	addi	a2,a2,-1732 # ffffffffc020ef60 <dev_node_ops+0x5d8>
ffffffffc020962c:	38a00593          	li	a1,906
ffffffffc0209630:	00006517          	auipc	a0,0x6
ffffffffc0209634:	91850513          	addi	a0,a0,-1768 # ffffffffc020ef48 <dev_node_ops+0x5c0>
ffffffffc0209638:	e67f60ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc020963c:	678d                	lui	a5,0x3
ffffffffc020963e:	60a2                	ld	ra,8(sp)
ffffffffc0209640:	c19c                	sw	a5,0(a1)
ffffffffc0209642:	4501                	li	a0,0
ffffffffc0209644:	0141                	addi	sp,sp,16
ffffffffc0209646:	8082                	ret
ffffffffc0209648:	60a2                	ld	ra,8(sp)
ffffffffc020964a:	6789                	lui	a5,0x2
ffffffffc020964c:	c19c                	sw	a5,0(a1)
ffffffffc020964e:	4501                	li	a0,0
ffffffffc0209650:	0141                	addi	sp,sp,16
ffffffffc0209652:	8082                	ret
ffffffffc0209654:	00006697          	auipc	a3,0x6
ffffffffc0209658:	8bc68693          	addi	a3,a3,-1860 # ffffffffc020ef10 <dev_node_ops+0x588>
ffffffffc020965c:	00002617          	auipc	a2,0x2
ffffffffc0209660:	35c60613          	addi	a2,a2,860 # ffffffffc020b9b8 <commands+0x210>
ffffffffc0209664:	37e00593          	li	a1,894
ffffffffc0209668:	00006517          	auipc	a0,0x6
ffffffffc020966c:	8e050513          	addi	a0,a0,-1824 # ffffffffc020ef48 <dev_node_ops+0x5c0>
ffffffffc0209670:	e2ff60ef          	jal	ra,ffffffffc020049e <__panic>

ffffffffc0209674 <sfs_fsync>:
ffffffffc0209674:	7179                	addi	sp,sp,-48
ffffffffc0209676:	ec26                	sd	s1,24(sp)
ffffffffc0209678:	7524                	ld	s1,104(a0)
ffffffffc020967a:	f406                	sd	ra,40(sp)
ffffffffc020967c:	f022                	sd	s0,32(sp)
ffffffffc020967e:	e84a                	sd	s2,16(sp)
ffffffffc0209680:	e44e                	sd	s3,8(sp)
ffffffffc0209682:	c4bd                	beqz	s1,ffffffffc02096f0 <sfs_fsync+0x7c>
ffffffffc0209684:	0b04a783          	lw	a5,176(s1)
ffffffffc0209688:	e7a5                	bnez	a5,ffffffffc02096f0 <sfs_fsync+0x7c>
ffffffffc020968a:	4d38                	lw	a4,88(a0)
ffffffffc020968c:	6785                	lui	a5,0x1
ffffffffc020968e:	23578793          	addi	a5,a5,565 # 1235 <_binary_bin_swap_img_size-0x6acb>
ffffffffc0209692:	842a                	mv	s0,a0
ffffffffc0209694:	06f71e63          	bne	a4,a5,ffffffffc0209710 <sfs_fsync+0x9c>
ffffffffc0209698:	691c                	ld	a5,16(a0)
ffffffffc020969a:	4901                	li	s2,0
ffffffffc020969c:	eb89                	bnez	a5,ffffffffc02096ae <sfs_fsync+0x3a>
ffffffffc020969e:	70a2                	ld	ra,40(sp)
ffffffffc02096a0:	7402                	ld	s0,32(sp)
ffffffffc02096a2:	64e2                	ld	s1,24(sp)
ffffffffc02096a4:	69a2                	ld	s3,8(sp)
ffffffffc02096a6:	854a                	mv	a0,s2
ffffffffc02096a8:	6942                	ld	s2,16(sp)
ffffffffc02096aa:	6145                	addi	sp,sp,48
ffffffffc02096ac:	8082                	ret
ffffffffc02096ae:	02050993          	addi	s3,a0,32
ffffffffc02096b2:	854e                	mv	a0,s3
ffffffffc02096b4:	eb1fa0ef          	jal	ra,ffffffffc0204564 <down>
ffffffffc02096b8:	681c                	ld	a5,16(s0)
ffffffffc02096ba:	ef81                	bnez	a5,ffffffffc02096d2 <sfs_fsync+0x5e>
ffffffffc02096bc:	854e                	mv	a0,s3
ffffffffc02096be:	ea3fa0ef          	jal	ra,ffffffffc0204560 <up>
ffffffffc02096c2:	70a2                	ld	ra,40(sp)
ffffffffc02096c4:	7402                	ld	s0,32(sp)
ffffffffc02096c6:	64e2                	ld	s1,24(sp)
ffffffffc02096c8:	69a2                	ld	s3,8(sp)
ffffffffc02096ca:	854a                	mv	a0,s2
ffffffffc02096cc:	6942                	ld	s2,16(sp)
ffffffffc02096ce:	6145                	addi	sp,sp,48
ffffffffc02096d0:	8082                	ret
ffffffffc02096d2:	4414                	lw	a3,8(s0)
ffffffffc02096d4:	600c                	ld	a1,0(s0)
ffffffffc02096d6:	00043823          	sd	zero,16(s0)
ffffffffc02096da:	4701                	li	a4,0
ffffffffc02096dc:	04000613          	li	a2,64
ffffffffc02096e0:	8526                	mv	a0,s1
ffffffffc02096e2:	6ee010ef          	jal	ra,ffffffffc020add0 <sfs_wbuf>
ffffffffc02096e6:	892a                	mv	s2,a0
ffffffffc02096e8:	d971                	beqz	a0,ffffffffc02096bc <sfs_fsync+0x48>
ffffffffc02096ea:	4785                	li	a5,1
ffffffffc02096ec:	e81c                	sd	a5,16(s0)
ffffffffc02096ee:	b7f9                	j	ffffffffc02096bc <sfs_fsync+0x48>
ffffffffc02096f0:	00005697          	auipc	a3,0x5
ffffffffc02096f4:	67868693          	addi	a3,a3,1656 # ffffffffc020ed68 <dev_node_ops+0x3e0>
ffffffffc02096f8:	00002617          	auipc	a2,0x2
ffffffffc02096fc:	2c060613          	addi	a2,a2,704 # ffffffffc020b9b8 <commands+0x210>
ffffffffc0209700:	2c200593          	li	a1,706
ffffffffc0209704:	00006517          	auipc	a0,0x6
ffffffffc0209708:	84450513          	addi	a0,a0,-1980 # ffffffffc020ef48 <dev_node_ops+0x5c0>
ffffffffc020970c:	d93f60ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc0209710:	00006697          	auipc	a3,0x6
ffffffffc0209714:	80068693          	addi	a3,a3,-2048 # ffffffffc020ef10 <dev_node_ops+0x588>
ffffffffc0209718:	00002617          	auipc	a2,0x2
ffffffffc020971c:	2a060613          	addi	a2,a2,672 # ffffffffc020b9b8 <commands+0x210>
ffffffffc0209720:	2c300593          	li	a1,707
ffffffffc0209724:	00006517          	auipc	a0,0x6
ffffffffc0209728:	82450513          	addi	a0,a0,-2012 # ffffffffc020ef48 <dev_node_ops+0x5c0>
ffffffffc020972c:	d73f60ef          	jal	ra,ffffffffc020049e <__panic>

ffffffffc0209730 <sfs_fstat>:
ffffffffc0209730:	1101                	addi	sp,sp,-32
ffffffffc0209732:	e426                	sd	s1,8(sp)
ffffffffc0209734:	84ae                	mv	s1,a1
ffffffffc0209736:	e822                	sd	s0,16(sp)
ffffffffc0209738:	02000613          	li	a2,32
ffffffffc020973c:	842a                	mv	s0,a0
ffffffffc020973e:	4581                	li	a1,0
ffffffffc0209740:	8526                	mv	a0,s1
ffffffffc0209742:	ec06                	sd	ra,24(sp)
ffffffffc0209744:	591010ef          	jal	ra,ffffffffc020b4d4 <memset>
ffffffffc0209748:	c439                	beqz	s0,ffffffffc0209796 <sfs_fstat+0x66>
ffffffffc020974a:	783c                	ld	a5,112(s0)
ffffffffc020974c:	c7a9                	beqz	a5,ffffffffc0209796 <sfs_fstat+0x66>
ffffffffc020974e:	6bbc                	ld	a5,80(a5)
ffffffffc0209750:	c3b9                	beqz	a5,ffffffffc0209796 <sfs_fstat+0x66>
ffffffffc0209752:	00005597          	auipc	a1,0x5
ffffffffc0209756:	1ae58593          	addi	a1,a1,430 # ffffffffc020e900 <syscalls+0xdb0>
ffffffffc020975a:	8522                	mv	a0,s0
ffffffffc020975c:	8cefe0ef          	jal	ra,ffffffffc020782a <inode_check>
ffffffffc0209760:	783c                	ld	a5,112(s0)
ffffffffc0209762:	85a6                	mv	a1,s1
ffffffffc0209764:	8522                	mv	a0,s0
ffffffffc0209766:	6bbc                	ld	a5,80(a5)
ffffffffc0209768:	9782                	jalr	a5
ffffffffc020976a:	e10d                	bnez	a0,ffffffffc020978c <sfs_fstat+0x5c>
ffffffffc020976c:	4c38                	lw	a4,88(s0)
ffffffffc020976e:	6785                	lui	a5,0x1
ffffffffc0209770:	23578793          	addi	a5,a5,565 # 1235 <_binary_bin_swap_img_size-0x6acb>
ffffffffc0209774:	04f71163          	bne	a4,a5,ffffffffc02097b6 <sfs_fstat+0x86>
ffffffffc0209778:	601c                	ld	a5,0(s0)
ffffffffc020977a:	0067d683          	lhu	a3,6(a5)
ffffffffc020977e:	0087e703          	lwu	a4,8(a5)
ffffffffc0209782:	0007e783          	lwu	a5,0(a5)
ffffffffc0209786:	e494                	sd	a3,8(s1)
ffffffffc0209788:	e898                	sd	a4,16(s1)
ffffffffc020978a:	ec9c                	sd	a5,24(s1)
ffffffffc020978c:	60e2                	ld	ra,24(sp)
ffffffffc020978e:	6442                	ld	s0,16(sp)
ffffffffc0209790:	64a2                	ld	s1,8(sp)
ffffffffc0209792:	6105                	addi	sp,sp,32
ffffffffc0209794:	8082                	ret
ffffffffc0209796:	00005697          	auipc	a3,0x5
ffffffffc020979a:	10268693          	addi	a3,a3,258 # ffffffffc020e898 <syscalls+0xd48>
ffffffffc020979e:	00002617          	auipc	a2,0x2
ffffffffc02097a2:	21a60613          	addi	a2,a2,538 # ffffffffc020b9b8 <commands+0x210>
ffffffffc02097a6:	2b300593          	li	a1,691
ffffffffc02097aa:	00005517          	auipc	a0,0x5
ffffffffc02097ae:	79e50513          	addi	a0,a0,1950 # ffffffffc020ef48 <dev_node_ops+0x5c0>
ffffffffc02097b2:	cedf60ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc02097b6:	00005697          	auipc	a3,0x5
ffffffffc02097ba:	75a68693          	addi	a3,a3,1882 # ffffffffc020ef10 <dev_node_ops+0x588>
ffffffffc02097be:	00002617          	auipc	a2,0x2
ffffffffc02097c2:	1fa60613          	addi	a2,a2,506 # ffffffffc020b9b8 <commands+0x210>
ffffffffc02097c6:	2b600593          	li	a1,694
ffffffffc02097ca:	00005517          	auipc	a0,0x5
ffffffffc02097ce:	77e50513          	addi	a0,a0,1918 # ffffffffc020ef48 <dev_node_ops+0x5c0>
ffffffffc02097d2:	ccdf60ef          	jal	ra,ffffffffc020049e <__panic>

ffffffffc02097d6 <sfs_tryseek>:
ffffffffc02097d6:	080007b7          	lui	a5,0x8000
ffffffffc02097da:	04f5fd63          	bgeu	a1,a5,ffffffffc0209834 <sfs_tryseek+0x5e>
ffffffffc02097de:	1101                	addi	sp,sp,-32
ffffffffc02097e0:	e822                	sd	s0,16(sp)
ffffffffc02097e2:	ec06                	sd	ra,24(sp)
ffffffffc02097e4:	e426                	sd	s1,8(sp)
ffffffffc02097e6:	842a                	mv	s0,a0
ffffffffc02097e8:	c921                	beqz	a0,ffffffffc0209838 <sfs_tryseek+0x62>
ffffffffc02097ea:	4d38                	lw	a4,88(a0)
ffffffffc02097ec:	6785                	lui	a5,0x1
ffffffffc02097ee:	23578793          	addi	a5,a5,565 # 1235 <_binary_bin_swap_img_size-0x6acb>
ffffffffc02097f2:	04f71363          	bne	a4,a5,ffffffffc0209838 <sfs_tryseek+0x62>
ffffffffc02097f6:	611c                	ld	a5,0(a0)
ffffffffc02097f8:	84ae                	mv	s1,a1
ffffffffc02097fa:	0007e783          	lwu	a5,0(a5)
ffffffffc02097fe:	02b7d563          	bge	a5,a1,ffffffffc0209828 <sfs_tryseek+0x52>
ffffffffc0209802:	793c                	ld	a5,112(a0)
ffffffffc0209804:	cbb1                	beqz	a5,ffffffffc0209858 <sfs_tryseek+0x82>
ffffffffc0209806:	73bc                	ld	a5,96(a5)
ffffffffc0209808:	cba1                	beqz	a5,ffffffffc0209858 <sfs_tryseek+0x82>
ffffffffc020980a:	00005597          	auipc	a1,0x5
ffffffffc020980e:	fe658593          	addi	a1,a1,-26 # ffffffffc020e7f0 <syscalls+0xca0>
ffffffffc0209812:	818fe0ef          	jal	ra,ffffffffc020782a <inode_check>
ffffffffc0209816:	783c                	ld	a5,112(s0)
ffffffffc0209818:	8522                	mv	a0,s0
ffffffffc020981a:	6442                	ld	s0,16(sp)
ffffffffc020981c:	60e2                	ld	ra,24(sp)
ffffffffc020981e:	73bc                	ld	a5,96(a5)
ffffffffc0209820:	85a6                	mv	a1,s1
ffffffffc0209822:	64a2                	ld	s1,8(sp)
ffffffffc0209824:	6105                	addi	sp,sp,32
ffffffffc0209826:	8782                	jr	a5
ffffffffc0209828:	60e2                	ld	ra,24(sp)
ffffffffc020982a:	6442                	ld	s0,16(sp)
ffffffffc020982c:	64a2                	ld	s1,8(sp)
ffffffffc020982e:	4501                	li	a0,0
ffffffffc0209830:	6105                	addi	sp,sp,32
ffffffffc0209832:	8082                	ret
ffffffffc0209834:	5575                	li	a0,-3
ffffffffc0209836:	8082                	ret
ffffffffc0209838:	00005697          	auipc	a3,0x5
ffffffffc020983c:	6d868693          	addi	a3,a3,1752 # ffffffffc020ef10 <dev_node_ops+0x588>
ffffffffc0209840:	00002617          	auipc	a2,0x2
ffffffffc0209844:	17860613          	addi	a2,a2,376 # ffffffffc020b9b8 <commands+0x210>
ffffffffc0209848:	39500593          	li	a1,917
ffffffffc020984c:	00005517          	auipc	a0,0x5
ffffffffc0209850:	6fc50513          	addi	a0,a0,1788 # ffffffffc020ef48 <dev_node_ops+0x5c0>
ffffffffc0209854:	c4bf60ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc0209858:	00005697          	auipc	a3,0x5
ffffffffc020985c:	f4068693          	addi	a3,a3,-192 # ffffffffc020e798 <syscalls+0xc48>
ffffffffc0209860:	00002617          	auipc	a2,0x2
ffffffffc0209864:	15860613          	addi	a2,a2,344 # ffffffffc020b9b8 <commands+0x210>
ffffffffc0209868:	39700593          	li	a1,919
ffffffffc020986c:	00005517          	auipc	a0,0x5
ffffffffc0209870:	6dc50513          	addi	a0,a0,1756 # ffffffffc020ef48 <dev_node_ops+0x5c0>
ffffffffc0209874:	c2bf60ef          	jal	ra,ffffffffc020049e <__panic>

ffffffffc0209878 <sfs_close>:
ffffffffc0209878:	1141                	addi	sp,sp,-16
ffffffffc020987a:	e406                	sd	ra,8(sp)
ffffffffc020987c:	e022                	sd	s0,0(sp)
ffffffffc020987e:	c11d                	beqz	a0,ffffffffc02098a4 <sfs_close+0x2c>
ffffffffc0209880:	793c                	ld	a5,112(a0)
ffffffffc0209882:	842a                	mv	s0,a0
ffffffffc0209884:	c385                	beqz	a5,ffffffffc02098a4 <sfs_close+0x2c>
ffffffffc0209886:	7b9c                	ld	a5,48(a5)
ffffffffc0209888:	cf91                	beqz	a5,ffffffffc02098a4 <sfs_close+0x2c>
ffffffffc020988a:	00004597          	auipc	a1,0x4
ffffffffc020988e:	ab658593          	addi	a1,a1,-1354 # ffffffffc020d340 <default_pmm_manager+0xea0>
ffffffffc0209892:	f99fd0ef          	jal	ra,ffffffffc020782a <inode_check>
ffffffffc0209896:	783c                	ld	a5,112(s0)
ffffffffc0209898:	8522                	mv	a0,s0
ffffffffc020989a:	6402                	ld	s0,0(sp)
ffffffffc020989c:	60a2                	ld	ra,8(sp)
ffffffffc020989e:	7b9c                	ld	a5,48(a5)
ffffffffc02098a0:	0141                	addi	sp,sp,16
ffffffffc02098a2:	8782                	jr	a5
ffffffffc02098a4:	00004697          	auipc	a3,0x4
ffffffffc02098a8:	a4c68693          	addi	a3,a3,-1460 # ffffffffc020d2f0 <default_pmm_manager+0xe50>
ffffffffc02098ac:	00002617          	auipc	a2,0x2
ffffffffc02098b0:	10c60613          	addi	a2,a2,268 # ffffffffc020b9b8 <commands+0x210>
ffffffffc02098b4:	22000593          	li	a1,544
ffffffffc02098b8:	00005517          	auipc	a0,0x5
ffffffffc02098bc:	69050513          	addi	a0,a0,1680 # ffffffffc020ef48 <dev_node_ops+0x5c0>
ffffffffc02098c0:	bdff60ef          	jal	ra,ffffffffc020049e <__panic>

ffffffffc02098c4 <sfs_io.part.0>:
ffffffffc02098c4:	1141                	addi	sp,sp,-16
ffffffffc02098c6:	00005697          	auipc	a3,0x5
ffffffffc02098ca:	64a68693          	addi	a3,a3,1610 # ffffffffc020ef10 <dev_node_ops+0x588>
ffffffffc02098ce:	00002617          	auipc	a2,0x2
ffffffffc02098d2:	0ea60613          	addi	a2,a2,234 # ffffffffc020b9b8 <commands+0x210>
ffffffffc02098d6:	29200593          	li	a1,658
ffffffffc02098da:	00005517          	auipc	a0,0x5
ffffffffc02098de:	66e50513          	addi	a0,a0,1646 # ffffffffc020ef48 <dev_node_ops+0x5c0>
ffffffffc02098e2:	e406                	sd	ra,8(sp)
ffffffffc02098e4:	bbbf60ef          	jal	ra,ffffffffc020049e <__panic>

ffffffffc02098e8 <sfs_block_free>:
ffffffffc02098e8:	1101                	addi	sp,sp,-32
ffffffffc02098ea:	e426                	sd	s1,8(sp)
ffffffffc02098ec:	ec06                	sd	ra,24(sp)
ffffffffc02098ee:	e822                	sd	s0,16(sp)
ffffffffc02098f0:	4154                	lw	a3,4(a0)
ffffffffc02098f2:	84ae                	mv	s1,a1
ffffffffc02098f4:	c595                	beqz	a1,ffffffffc0209920 <sfs_block_free+0x38>
ffffffffc02098f6:	02d5f563          	bgeu	a1,a3,ffffffffc0209920 <sfs_block_free+0x38>
ffffffffc02098fa:	842a                	mv	s0,a0
ffffffffc02098fc:	7d08                	ld	a0,56(a0)
ffffffffc02098fe:	edcff0ef          	jal	ra,ffffffffc0208fda <bitmap_test>
ffffffffc0209902:	ed05                	bnez	a0,ffffffffc020993a <sfs_block_free+0x52>
ffffffffc0209904:	7c08                	ld	a0,56(s0)
ffffffffc0209906:	85a6                	mv	a1,s1
ffffffffc0209908:	efaff0ef          	jal	ra,ffffffffc0209002 <bitmap_free>
ffffffffc020990c:	441c                	lw	a5,8(s0)
ffffffffc020990e:	4705                	li	a4,1
ffffffffc0209910:	60e2                	ld	ra,24(sp)
ffffffffc0209912:	2785                	addiw	a5,a5,1
ffffffffc0209914:	e038                	sd	a4,64(s0)
ffffffffc0209916:	c41c                	sw	a5,8(s0)
ffffffffc0209918:	6442                	ld	s0,16(sp)
ffffffffc020991a:	64a2                	ld	s1,8(sp)
ffffffffc020991c:	6105                	addi	sp,sp,32
ffffffffc020991e:	8082                	ret
ffffffffc0209920:	8726                	mv	a4,s1
ffffffffc0209922:	00005617          	auipc	a2,0x5
ffffffffc0209926:	65660613          	addi	a2,a2,1622 # ffffffffc020ef78 <dev_node_ops+0x5f0>
ffffffffc020992a:	05700593          	li	a1,87
ffffffffc020992e:	00005517          	auipc	a0,0x5
ffffffffc0209932:	61a50513          	addi	a0,a0,1562 # ffffffffc020ef48 <dev_node_ops+0x5c0>
ffffffffc0209936:	b69f60ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc020993a:	00005697          	auipc	a3,0x5
ffffffffc020993e:	67668693          	addi	a3,a3,1654 # ffffffffc020efb0 <dev_node_ops+0x628>
ffffffffc0209942:	00002617          	auipc	a2,0x2
ffffffffc0209946:	07660613          	addi	a2,a2,118 # ffffffffc020b9b8 <commands+0x210>
ffffffffc020994a:	06e00593          	li	a1,110
ffffffffc020994e:	00005517          	auipc	a0,0x5
ffffffffc0209952:	5fa50513          	addi	a0,a0,1530 # ffffffffc020ef48 <dev_node_ops+0x5c0>
ffffffffc0209956:	b49f60ef          	jal	ra,ffffffffc020049e <__panic>

ffffffffc020995a <sfs_reclaim>:
ffffffffc020995a:	1101                	addi	sp,sp,-32
ffffffffc020995c:	e426                	sd	s1,8(sp)
ffffffffc020995e:	7524                	ld	s1,104(a0)
ffffffffc0209960:	ec06                	sd	ra,24(sp)
ffffffffc0209962:	e822                	sd	s0,16(sp)
ffffffffc0209964:	e04a                	sd	s2,0(sp)
ffffffffc0209966:	0e048a63          	beqz	s1,ffffffffc0209a5a <sfs_reclaim+0x100>
ffffffffc020996a:	0b04a783          	lw	a5,176(s1)
ffffffffc020996e:	0e079663          	bnez	a5,ffffffffc0209a5a <sfs_reclaim+0x100>
ffffffffc0209972:	4d38                	lw	a4,88(a0)
ffffffffc0209974:	6785                	lui	a5,0x1
ffffffffc0209976:	23578793          	addi	a5,a5,565 # 1235 <_binary_bin_swap_img_size-0x6acb>
ffffffffc020997a:	842a                	mv	s0,a0
ffffffffc020997c:	10f71f63          	bne	a4,a5,ffffffffc0209a9a <sfs_reclaim+0x140>
ffffffffc0209980:	8526                	mv	a0,s1
ffffffffc0209982:	5fe010ef          	jal	ra,ffffffffc020af80 <lock_sfs_fs>
ffffffffc0209986:	4c1c                	lw	a5,24(s0)
ffffffffc0209988:	0ef05963          	blez	a5,ffffffffc0209a7a <sfs_reclaim+0x120>
ffffffffc020998c:	fff7871b          	addiw	a4,a5,-1
ffffffffc0209990:	cc18                	sw	a4,24(s0)
ffffffffc0209992:	eb59                	bnez	a4,ffffffffc0209a28 <sfs_reclaim+0xce>
ffffffffc0209994:	05c42903          	lw	s2,92(s0)
ffffffffc0209998:	08091863          	bnez	s2,ffffffffc0209a28 <sfs_reclaim+0xce>
ffffffffc020999c:	601c                	ld	a5,0(s0)
ffffffffc020999e:	0067d783          	lhu	a5,6(a5)
ffffffffc02099a2:	e785                	bnez	a5,ffffffffc02099ca <sfs_reclaim+0x70>
ffffffffc02099a4:	783c                	ld	a5,112(s0)
ffffffffc02099a6:	10078a63          	beqz	a5,ffffffffc0209aba <sfs_reclaim+0x160>
ffffffffc02099aa:	73bc                	ld	a5,96(a5)
ffffffffc02099ac:	10078763          	beqz	a5,ffffffffc0209aba <sfs_reclaim+0x160>
ffffffffc02099b0:	00005597          	auipc	a1,0x5
ffffffffc02099b4:	e4058593          	addi	a1,a1,-448 # ffffffffc020e7f0 <syscalls+0xca0>
ffffffffc02099b8:	8522                	mv	a0,s0
ffffffffc02099ba:	e71fd0ef          	jal	ra,ffffffffc020782a <inode_check>
ffffffffc02099be:	783c                	ld	a5,112(s0)
ffffffffc02099c0:	4581                	li	a1,0
ffffffffc02099c2:	8522                	mv	a0,s0
ffffffffc02099c4:	73bc                	ld	a5,96(a5)
ffffffffc02099c6:	9782                	jalr	a5
ffffffffc02099c8:	e559                	bnez	a0,ffffffffc0209a56 <sfs_reclaim+0xfc>
ffffffffc02099ca:	681c                	ld	a5,16(s0)
ffffffffc02099cc:	c39d                	beqz	a5,ffffffffc02099f2 <sfs_reclaim+0x98>
ffffffffc02099ce:	783c                	ld	a5,112(s0)
ffffffffc02099d0:	10078563          	beqz	a5,ffffffffc0209ada <sfs_reclaim+0x180>
ffffffffc02099d4:	7b9c                	ld	a5,48(a5)
ffffffffc02099d6:	10078263          	beqz	a5,ffffffffc0209ada <sfs_reclaim+0x180>
ffffffffc02099da:	8522                	mv	a0,s0
ffffffffc02099dc:	00004597          	auipc	a1,0x4
ffffffffc02099e0:	96458593          	addi	a1,a1,-1692 # ffffffffc020d340 <default_pmm_manager+0xea0>
ffffffffc02099e4:	e47fd0ef          	jal	ra,ffffffffc020782a <inode_check>
ffffffffc02099e8:	783c                	ld	a5,112(s0)
ffffffffc02099ea:	8522                	mv	a0,s0
ffffffffc02099ec:	7b9c                	ld	a5,48(a5)
ffffffffc02099ee:	9782                	jalr	a5
ffffffffc02099f0:	e13d                	bnez	a0,ffffffffc0209a56 <sfs_reclaim+0xfc>
ffffffffc02099f2:	7c18                	ld	a4,56(s0)
ffffffffc02099f4:	603c                	ld	a5,64(s0)
ffffffffc02099f6:	8526                	mv	a0,s1
ffffffffc02099f8:	e71c                	sd	a5,8(a4)
ffffffffc02099fa:	e398                	sd	a4,0(a5)
ffffffffc02099fc:	6438                	ld	a4,72(s0)
ffffffffc02099fe:	683c                	ld	a5,80(s0)
ffffffffc0209a00:	e71c                	sd	a5,8(a4)
ffffffffc0209a02:	e398                	sd	a4,0(a5)
ffffffffc0209a04:	58c010ef          	jal	ra,ffffffffc020af90 <unlock_sfs_fs>
ffffffffc0209a08:	6008                	ld	a0,0(s0)
ffffffffc0209a0a:	00655783          	lhu	a5,6(a0)
ffffffffc0209a0e:	cb85                	beqz	a5,ffffffffc0209a3e <sfs_reclaim+0xe4>
ffffffffc0209a10:	e2ef80ef          	jal	ra,ffffffffc020203e <kfree>
ffffffffc0209a14:	8522                	mv	a0,s0
ffffffffc0209a16:	da9fd0ef          	jal	ra,ffffffffc02077be <inode_kill>
ffffffffc0209a1a:	60e2                	ld	ra,24(sp)
ffffffffc0209a1c:	6442                	ld	s0,16(sp)
ffffffffc0209a1e:	64a2                	ld	s1,8(sp)
ffffffffc0209a20:	854a                	mv	a0,s2
ffffffffc0209a22:	6902                	ld	s2,0(sp)
ffffffffc0209a24:	6105                	addi	sp,sp,32
ffffffffc0209a26:	8082                	ret
ffffffffc0209a28:	5945                	li	s2,-15
ffffffffc0209a2a:	8526                	mv	a0,s1
ffffffffc0209a2c:	564010ef          	jal	ra,ffffffffc020af90 <unlock_sfs_fs>
ffffffffc0209a30:	60e2                	ld	ra,24(sp)
ffffffffc0209a32:	6442                	ld	s0,16(sp)
ffffffffc0209a34:	64a2                	ld	s1,8(sp)
ffffffffc0209a36:	854a                	mv	a0,s2
ffffffffc0209a38:	6902                	ld	s2,0(sp)
ffffffffc0209a3a:	6105                	addi	sp,sp,32
ffffffffc0209a3c:	8082                	ret
ffffffffc0209a3e:	440c                	lw	a1,8(s0)
ffffffffc0209a40:	8526                	mv	a0,s1
ffffffffc0209a42:	ea7ff0ef          	jal	ra,ffffffffc02098e8 <sfs_block_free>
ffffffffc0209a46:	6008                	ld	a0,0(s0)
ffffffffc0209a48:	5d4c                	lw	a1,60(a0)
ffffffffc0209a4a:	d1f9                	beqz	a1,ffffffffc0209a10 <sfs_reclaim+0xb6>
ffffffffc0209a4c:	8526                	mv	a0,s1
ffffffffc0209a4e:	e9bff0ef          	jal	ra,ffffffffc02098e8 <sfs_block_free>
ffffffffc0209a52:	6008                	ld	a0,0(s0)
ffffffffc0209a54:	bf75                	j	ffffffffc0209a10 <sfs_reclaim+0xb6>
ffffffffc0209a56:	892a                	mv	s2,a0
ffffffffc0209a58:	bfc9                	j	ffffffffc0209a2a <sfs_reclaim+0xd0>
ffffffffc0209a5a:	00005697          	auipc	a3,0x5
ffffffffc0209a5e:	30e68693          	addi	a3,a3,782 # ffffffffc020ed68 <dev_node_ops+0x3e0>
ffffffffc0209a62:	00002617          	auipc	a2,0x2
ffffffffc0209a66:	f5660613          	addi	a2,a2,-170 # ffffffffc020b9b8 <commands+0x210>
ffffffffc0209a6a:	35300593          	li	a1,851
ffffffffc0209a6e:	00005517          	auipc	a0,0x5
ffffffffc0209a72:	4da50513          	addi	a0,a0,1242 # ffffffffc020ef48 <dev_node_ops+0x5c0>
ffffffffc0209a76:	a29f60ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc0209a7a:	00005697          	auipc	a3,0x5
ffffffffc0209a7e:	55668693          	addi	a3,a3,1366 # ffffffffc020efd0 <dev_node_ops+0x648>
ffffffffc0209a82:	00002617          	auipc	a2,0x2
ffffffffc0209a86:	f3660613          	addi	a2,a2,-202 # ffffffffc020b9b8 <commands+0x210>
ffffffffc0209a8a:	35900593          	li	a1,857
ffffffffc0209a8e:	00005517          	auipc	a0,0x5
ffffffffc0209a92:	4ba50513          	addi	a0,a0,1210 # ffffffffc020ef48 <dev_node_ops+0x5c0>
ffffffffc0209a96:	a09f60ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc0209a9a:	00005697          	auipc	a3,0x5
ffffffffc0209a9e:	47668693          	addi	a3,a3,1142 # ffffffffc020ef10 <dev_node_ops+0x588>
ffffffffc0209aa2:	00002617          	auipc	a2,0x2
ffffffffc0209aa6:	f1660613          	addi	a2,a2,-234 # ffffffffc020b9b8 <commands+0x210>
ffffffffc0209aaa:	35400593          	li	a1,852
ffffffffc0209aae:	00005517          	auipc	a0,0x5
ffffffffc0209ab2:	49a50513          	addi	a0,a0,1178 # ffffffffc020ef48 <dev_node_ops+0x5c0>
ffffffffc0209ab6:	9e9f60ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc0209aba:	00005697          	auipc	a3,0x5
ffffffffc0209abe:	cde68693          	addi	a3,a3,-802 # ffffffffc020e798 <syscalls+0xc48>
ffffffffc0209ac2:	00002617          	auipc	a2,0x2
ffffffffc0209ac6:	ef660613          	addi	a2,a2,-266 # ffffffffc020b9b8 <commands+0x210>
ffffffffc0209aca:	35e00593          	li	a1,862
ffffffffc0209ace:	00005517          	auipc	a0,0x5
ffffffffc0209ad2:	47a50513          	addi	a0,a0,1146 # ffffffffc020ef48 <dev_node_ops+0x5c0>
ffffffffc0209ad6:	9c9f60ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc0209ada:	00004697          	auipc	a3,0x4
ffffffffc0209ade:	81668693          	addi	a3,a3,-2026 # ffffffffc020d2f0 <default_pmm_manager+0xe50>
ffffffffc0209ae2:	00002617          	auipc	a2,0x2
ffffffffc0209ae6:	ed660613          	addi	a2,a2,-298 # ffffffffc020b9b8 <commands+0x210>
ffffffffc0209aea:	36300593          	li	a1,867
ffffffffc0209aee:	00005517          	auipc	a0,0x5
ffffffffc0209af2:	45a50513          	addi	a0,a0,1114 # ffffffffc020ef48 <dev_node_ops+0x5c0>
ffffffffc0209af6:	9a9f60ef          	jal	ra,ffffffffc020049e <__panic>

ffffffffc0209afa <sfs_block_alloc>:
ffffffffc0209afa:	1101                	addi	sp,sp,-32
ffffffffc0209afc:	e822                	sd	s0,16(sp)
ffffffffc0209afe:	842a                	mv	s0,a0
ffffffffc0209b00:	7d08                	ld	a0,56(a0)
ffffffffc0209b02:	e426                	sd	s1,8(sp)
ffffffffc0209b04:	ec06                	sd	ra,24(sp)
ffffffffc0209b06:	84ae                	mv	s1,a1
ffffffffc0209b08:	c62ff0ef          	jal	ra,ffffffffc0208f6a <bitmap_alloc>
ffffffffc0209b0c:	e90d                	bnez	a0,ffffffffc0209b3e <sfs_block_alloc+0x44>
ffffffffc0209b0e:	441c                	lw	a5,8(s0)
ffffffffc0209b10:	cbad                	beqz	a5,ffffffffc0209b82 <sfs_block_alloc+0x88>
ffffffffc0209b12:	37fd                	addiw	a5,a5,-1
ffffffffc0209b14:	c41c                	sw	a5,8(s0)
ffffffffc0209b16:	408c                	lw	a1,0(s1)
ffffffffc0209b18:	4785                	li	a5,1
ffffffffc0209b1a:	e03c                	sd	a5,64(s0)
ffffffffc0209b1c:	4054                	lw	a3,4(s0)
ffffffffc0209b1e:	c58d                	beqz	a1,ffffffffc0209b48 <sfs_block_alloc+0x4e>
ffffffffc0209b20:	02d5f463          	bgeu	a1,a3,ffffffffc0209b48 <sfs_block_alloc+0x4e>
ffffffffc0209b24:	7c08                	ld	a0,56(s0)
ffffffffc0209b26:	cb4ff0ef          	jal	ra,ffffffffc0208fda <bitmap_test>
ffffffffc0209b2a:	ed05                	bnez	a0,ffffffffc0209b62 <sfs_block_alloc+0x68>
ffffffffc0209b2c:	8522                	mv	a0,s0
ffffffffc0209b2e:	6442                	ld	s0,16(sp)
ffffffffc0209b30:	408c                	lw	a1,0(s1)
ffffffffc0209b32:	60e2                	ld	ra,24(sp)
ffffffffc0209b34:	64a2                	ld	s1,8(sp)
ffffffffc0209b36:	4605                	li	a2,1
ffffffffc0209b38:	6105                	addi	sp,sp,32
ffffffffc0209b3a:	3e60106f          	j	ffffffffc020af20 <sfs_clear_block>
ffffffffc0209b3e:	60e2                	ld	ra,24(sp)
ffffffffc0209b40:	6442                	ld	s0,16(sp)
ffffffffc0209b42:	64a2                	ld	s1,8(sp)
ffffffffc0209b44:	6105                	addi	sp,sp,32
ffffffffc0209b46:	8082                	ret
ffffffffc0209b48:	872e                	mv	a4,a1
ffffffffc0209b4a:	00005617          	auipc	a2,0x5
ffffffffc0209b4e:	42e60613          	addi	a2,a2,1070 # ffffffffc020ef78 <dev_node_ops+0x5f0>
ffffffffc0209b52:	05700593          	li	a1,87
ffffffffc0209b56:	00005517          	auipc	a0,0x5
ffffffffc0209b5a:	3f250513          	addi	a0,a0,1010 # ffffffffc020ef48 <dev_node_ops+0x5c0>
ffffffffc0209b5e:	941f60ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc0209b62:	00005697          	auipc	a3,0x5
ffffffffc0209b66:	4a668693          	addi	a3,a3,1190 # ffffffffc020f008 <dev_node_ops+0x680>
ffffffffc0209b6a:	00002617          	auipc	a2,0x2
ffffffffc0209b6e:	e4e60613          	addi	a2,a2,-434 # ffffffffc020b9b8 <commands+0x210>
ffffffffc0209b72:	06500593          	li	a1,101
ffffffffc0209b76:	00005517          	auipc	a0,0x5
ffffffffc0209b7a:	3d250513          	addi	a0,a0,978 # ffffffffc020ef48 <dev_node_ops+0x5c0>
ffffffffc0209b7e:	921f60ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc0209b82:	00005697          	auipc	a3,0x5
ffffffffc0209b86:	46668693          	addi	a3,a3,1126 # ffffffffc020efe8 <dev_node_ops+0x660>
ffffffffc0209b8a:	00002617          	auipc	a2,0x2
ffffffffc0209b8e:	e2e60613          	addi	a2,a2,-466 # ffffffffc020b9b8 <commands+0x210>
ffffffffc0209b92:	06300593          	li	a1,99
ffffffffc0209b96:	00005517          	auipc	a0,0x5
ffffffffc0209b9a:	3b250513          	addi	a0,a0,946 # ffffffffc020ef48 <dev_node_ops+0x5c0>
ffffffffc0209b9e:	901f60ef          	jal	ra,ffffffffc020049e <__panic>

ffffffffc0209ba2 <sfs_bmap_load_nolock>:
ffffffffc0209ba2:	7159                	addi	sp,sp,-112
ffffffffc0209ba4:	f85a                	sd	s6,48(sp)
ffffffffc0209ba6:	0005bb03          	ld	s6,0(a1)
ffffffffc0209baa:	f45e                	sd	s7,40(sp)
ffffffffc0209bac:	f486                	sd	ra,104(sp)
ffffffffc0209bae:	008b2b83          	lw	s7,8(s6)
ffffffffc0209bb2:	f0a2                	sd	s0,96(sp)
ffffffffc0209bb4:	eca6                	sd	s1,88(sp)
ffffffffc0209bb6:	e8ca                	sd	s2,80(sp)
ffffffffc0209bb8:	e4ce                	sd	s3,72(sp)
ffffffffc0209bba:	e0d2                	sd	s4,64(sp)
ffffffffc0209bbc:	fc56                	sd	s5,56(sp)
ffffffffc0209bbe:	f062                	sd	s8,32(sp)
ffffffffc0209bc0:	ec66                	sd	s9,24(sp)
ffffffffc0209bc2:	18cbe363          	bltu	s7,a2,ffffffffc0209d48 <sfs_bmap_load_nolock+0x1a6>
ffffffffc0209bc6:	47ad                	li	a5,11
ffffffffc0209bc8:	8aae                	mv	s5,a1
ffffffffc0209bca:	8432                	mv	s0,a2
ffffffffc0209bcc:	84aa                	mv	s1,a0
ffffffffc0209bce:	89b6                	mv	s3,a3
ffffffffc0209bd0:	04c7f563          	bgeu	a5,a2,ffffffffc0209c1a <sfs_bmap_load_nolock+0x78>
ffffffffc0209bd4:	ff46071b          	addiw	a4,a2,-12
ffffffffc0209bd8:	0007069b          	sext.w	a3,a4
ffffffffc0209bdc:	3ff00793          	li	a5,1023
ffffffffc0209be0:	1ad7e163          	bltu	a5,a3,ffffffffc0209d82 <sfs_bmap_load_nolock+0x1e0>
ffffffffc0209be4:	03cb2a03          	lw	s4,60(s6)
ffffffffc0209be8:	02071793          	slli	a5,a4,0x20
ffffffffc0209bec:	c602                	sw	zero,12(sp)
ffffffffc0209bee:	c452                	sw	s4,8(sp)
ffffffffc0209bf0:	01e7dc13          	srli	s8,a5,0x1e
ffffffffc0209bf4:	0e0a1e63          	bnez	s4,ffffffffc0209cf0 <sfs_bmap_load_nolock+0x14e>
ffffffffc0209bf8:	0acb8663          	beq	s7,a2,ffffffffc0209ca4 <sfs_bmap_load_nolock+0x102>
ffffffffc0209bfc:	4a01                	li	s4,0
ffffffffc0209bfe:	40d4                	lw	a3,4(s1)
ffffffffc0209c00:	8752                	mv	a4,s4
ffffffffc0209c02:	00005617          	auipc	a2,0x5
ffffffffc0209c06:	37660613          	addi	a2,a2,886 # ffffffffc020ef78 <dev_node_ops+0x5f0>
ffffffffc0209c0a:	05700593          	li	a1,87
ffffffffc0209c0e:	00005517          	auipc	a0,0x5
ffffffffc0209c12:	33a50513          	addi	a0,a0,826 # ffffffffc020ef48 <dev_node_ops+0x5c0>
ffffffffc0209c16:	889f60ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc0209c1a:	02061793          	slli	a5,a2,0x20
ffffffffc0209c1e:	01e7da13          	srli	s4,a5,0x1e
ffffffffc0209c22:	9a5a                	add	s4,s4,s6
ffffffffc0209c24:	00ca2583          	lw	a1,12(s4)
ffffffffc0209c28:	c22e                	sw	a1,4(sp)
ffffffffc0209c2a:	ed99                	bnez	a1,ffffffffc0209c48 <sfs_bmap_load_nolock+0xa6>
ffffffffc0209c2c:	fccb98e3          	bne	s7,a2,ffffffffc0209bfc <sfs_bmap_load_nolock+0x5a>
ffffffffc0209c30:	004c                	addi	a1,sp,4
ffffffffc0209c32:	ec9ff0ef          	jal	ra,ffffffffc0209afa <sfs_block_alloc>
ffffffffc0209c36:	892a                	mv	s2,a0
ffffffffc0209c38:	e921                	bnez	a0,ffffffffc0209c88 <sfs_bmap_load_nolock+0xe6>
ffffffffc0209c3a:	4592                	lw	a1,4(sp)
ffffffffc0209c3c:	4705                	li	a4,1
ffffffffc0209c3e:	00ba2623          	sw	a1,12(s4)
ffffffffc0209c42:	00eab823          	sd	a4,16(s5)
ffffffffc0209c46:	d9dd                	beqz	a1,ffffffffc0209bfc <sfs_bmap_load_nolock+0x5a>
ffffffffc0209c48:	40d4                	lw	a3,4(s1)
ffffffffc0209c4a:	10d5ff63          	bgeu	a1,a3,ffffffffc0209d68 <sfs_bmap_load_nolock+0x1c6>
ffffffffc0209c4e:	7c88                	ld	a0,56(s1)
ffffffffc0209c50:	b8aff0ef          	jal	ra,ffffffffc0208fda <bitmap_test>
ffffffffc0209c54:	18051363          	bnez	a0,ffffffffc0209dda <sfs_bmap_load_nolock+0x238>
ffffffffc0209c58:	4a12                	lw	s4,4(sp)
ffffffffc0209c5a:	fa0a02e3          	beqz	s4,ffffffffc0209bfe <sfs_bmap_load_nolock+0x5c>
ffffffffc0209c5e:	40dc                	lw	a5,4(s1)
ffffffffc0209c60:	f8fa7fe3          	bgeu	s4,a5,ffffffffc0209bfe <sfs_bmap_load_nolock+0x5c>
ffffffffc0209c64:	7c88                	ld	a0,56(s1)
ffffffffc0209c66:	85d2                	mv	a1,s4
ffffffffc0209c68:	b72ff0ef          	jal	ra,ffffffffc0208fda <bitmap_test>
ffffffffc0209c6c:	12051763          	bnez	a0,ffffffffc0209d9a <sfs_bmap_load_nolock+0x1f8>
ffffffffc0209c70:	008b9763          	bne	s7,s0,ffffffffc0209c7e <sfs_bmap_load_nolock+0xdc>
ffffffffc0209c74:	008b2783          	lw	a5,8(s6)
ffffffffc0209c78:	2785                	addiw	a5,a5,1
ffffffffc0209c7a:	00fb2423          	sw	a5,8(s6)
ffffffffc0209c7e:	4901                	li	s2,0
ffffffffc0209c80:	00098463          	beqz	s3,ffffffffc0209c88 <sfs_bmap_load_nolock+0xe6>
ffffffffc0209c84:	0149a023          	sw	s4,0(s3)
ffffffffc0209c88:	70a6                	ld	ra,104(sp)
ffffffffc0209c8a:	7406                	ld	s0,96(sp)
ffffffffc0209c8c:	64e6                	ld	s1,88(sp)
ffffffffc0209c8e:	69a6                	ld	s3,72(sp)
ffffffffc0209c90:	6a06                	ld	s4,64(sp)
ffffffffc0209c92:	7ae2                	ld	s5,56(sp)
ffffffffc0209c94:	7b42                	ld	s6,48(sp)
ffffffffc0209c96:	7ba2                	ld	s7,40(sp)
ffffffffc0209c98:	7c02                	ld	s8,32(sp)
ffffffffc0209c9a:	6ce2                	ld	s9,24(sp)
ffffffffc0209c9c:	854a                	mv	a0,s2
ffffffffc0209c9e:	6946                	ld	s2,80(sp)
ffffffffc0209ca0:	6165                	addi	sp,sp,112
ffffffffc0209ca2:	8082                	ret
ffffffffc0209ca4:	002c                	addi	a1,sp,8
ffffffffc0209ca6:	e55ff0ef          	jal	ra,ffffffffc0209afa <sfs_block_alloc>
ffffffffc0209caa:	892a                	mv	s2,a0
ffffffffc0209cac:	00c10c93          	addi	s9,sp,12
ffffffffc0209cb0:	fd61                	bnez	a0,ffffffffc0209c88 <sfs_bmap_load_nolock+0xe6>
ffffffffc0209cb2:	85e6                	mv	a1,s9
ffffffffc0209cb4:	8526                	mv	a0,s1
ffffffffc0209cb6:	e45ff0ef          	jal	ra,ffffffffc0209afa <sfs_block_alloc>
ffffffffc0209cba:	892a                	mv	s2,a0
ffffffffc0209cbc:	e925                	bnez	a0,ffffffffc0209d2c <sfs_bmap_load_nolock+0x18a>
ffffffffc0209cbe:	46a2                	lw	a3,8(sp)
ffffffffc0209cc0:	85e6                	mv	a1,s9
ffffffffc0209cc2:	8762                	mv	a4,s8
ffffffffc0209cc4:	4611                	li	a2,4
ffffffffc0209cc6:	8526                	mv	a0,s1
ffffffffc0209cc8:	108010ef          	jal	ra,ffffffffc020add0 <sfs_wbuf>
ffffffffc0209ccc:	45b2                	lw	a1,12(sp)
ffffffffc0209cce:	892a                	mv	s2,a0
ffffffffc0209cd0:	e939                	bnez	a0,ffffffffc0209d26 <sfs_bmap_load_nolock+0x184>
ffffffffc0209cd2:	03cb2683          	lw	a3,60(s6)
ffffffffc0209cd6:	4722                	lw	a4,8(sp)
ffffffffc0209cd8:	c22e                	sw	a1,4(sp)
ffffffffc0209cda:	f6d706e3          	beq	a4,a3,ffffffffc0209c46 <sfs_bmap_load_nolock+0xa4>
ffffffffc0209cde:	eef1                	bnez	a3,ffffffffc0209dba <sfs_bmap_load_nolock+0x218>
ffffffffc0209ce0:	02eb2e23          	sw	a4,60(s6)
ffffffffc0209ce4:	4705                	li	a4,1
ffffffffc0209ce6:	00eab823          	sd	a4,16(s5)
ffffffffc0209cea:	f00589e3          	beqz	a1,ffffffffc0209bfc <sfs_bmap_load_nolock+0x5a>
ffffffffc0209cee:	bfa9                	j	ffffffffc0209c48 <sfs_bmap_load_nolock+0xa6>
ffffffffc0209cf0:	00c10c93          	addi	s9,sp,12
ffffffffc0209cf4:	8762                	mv	a4,s8
ffffffffc0209cf6:	86d2                	mv	a3,s4
ffffffffc0209cf8:	4611                	li	a2,4
ffffffffc0209cfa:	85e6                	mv	a1,s9
ffffffffc0209cfc:	054010ef          	jal	ra,ffffffffc020ad50 <sfs_rbuf>
ffffffffc0209d00:	892a                	mv	s2,a0
ffffffffc0209d02:	f159                	bnez	a0,ffffffffc0209c88 <sfs_bmap_load_nolock+0xe6>
ffffffffc0209d04:	45b2                	lw	a1,12(sp)
ffffffffc0209d06:	e995                	bnez	a1,ffffffffc0209d3a <sfs_bmap_load_nolock+0x198>
ffffffffc0209d08:	fa8b85e3          	beq	s7,s0,ffffffffc0209cb2 <sfs_bmap_load_nolock+0x110>
ffffffffc0209d0c:	03cb2703          	lw	a4,60(s6)
ffffffffc0209d10:	47a2                	lw	a5,8(sp)
ffffffffc0209d12:	c202                	sw	zero,4(sp)
ffffffffc0209d14:	eee784e3          	beq	a5,a4,ffffffffc0209bfc <sfs_bmap_load_nolock+0x5a>
ffffffffc0209d18:	e34d                	bnez	a4,ffffffffc0209dba <sfs_bmap_load_nolock+0x218>
ffffffffc0209d1a:	02fb2e23          	sw	a5,60(s6)
ffffffffc0209d1e:	4785                	li	a5,1
ffffffffc0209d20:	00fab823          	sd	a5,16(s5)
ffffffffc0209d24:	bde1                	j	ffffffffc0209bfc <sfs_bmap_load_nolock+0x5a>
ffffffffc0209d26:	8526                	mv	a0,s1
ffffffffc0209d28:	bc1ff0ef          	jal	ra,ffffffffc02098e8 <sfs_block_free>
ffffffffc0209d2c:	45a2                	lw	a1,8(sp)
ffffffffc0209d2e:	f4ba0de3          	beq	s4,a1,ffffffffc0209c88 <sfs_bmap_load_nolock+0xe6>
ffffffffc0209d32:	8526                	mv	a0,s1
ffffffffc0209d34:	bb5ff0ef          	jal	ra,ffffffffc02098e8 <sfs_block_free>
ffffffffc0209d38:	bf81                	j	ffffffffc0209c88 <sfs_bmap_load_nolock+0xe6>
ffffffffc0209d3a:	03cb2683          	lw	a3,60(s6)
ffffffffc0209d3e:	4722                	lw	a4,8(sp)
ffffffffc0209d40:	c22e                	sw	a1,4(sp)
ffffffffc0209d42:	f8e69ee3          	bne	a3,a4,ffffffffc0209cde <sfs_bmap_load_nolock+0x13c>
ffffffffc0209d46:	b709                	j	ffffffffc0209c48 <sfs_bmap_load_nolock+0xa6>
ffffffffc0209d48:	00005697          	auipc	a3,0x5
ffffffffc0209d4c:	2e868693          	addi	a3,a3,744 # ffffffffc020f030 <dev_node_ops+0x6a8>
ffffffffc0209d50:	00002617          	auipc	a2,0x2
ffffffffc0209d54:	c6860613          	addi	a2,a2,-920 # ffffffffc020b9b8 <commands+0x210>
ffffffffc0209d58:	16800593          	li	a1,360
ffffffffc0209d5c:	00005517          	auipc	a0,0x5
ffffffffc0209d60:	1ec50513          	addi	a0,a0,492 # ffffffffc020ef48 <dev_node_ops+0x5c0>
ffffffffc0209d64:	f3af60ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc0209d68:	872e                	mv	a4,a1
ffffffffc0209d6a:	00005617          	auipc	a2,0x5
ffffffffc0209d6e:	20e60613          	addi	a2,a2,526 # ffffffffc020ef78 <dev_node_ops+0x5f0>
ffffffffc0209d72:	05700593          	li	a1,87
ffffffffc0209d76:	00005517          	auipc	a0,0x5
ffffffffc0209d7a:	1d250513          	addi	a0,a0,466 # ffffffffc020ef48 <dev_node_ops+0x5c0>
ffffffffc0209d7e:	f20f60ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc0209d82:	00005617          	auipc	a2,0x5
ffffffffc0209d86:	2de60613          	addi	a2,a2,734 # ffffffffc020f060 <dev_node_ops+0x6d8>
ffffffffc0209d8a:	12200593          	li	a1,290
ffffffffc0209d8e:	00005517          	auipc	a0,0x5
ffffffffc0209d92:	1ba50513          	addi	a0,a0,442 # ffffffffc020ef48 <dev_node_ops+0x5c0>
ffffffffc0209d96:	f08f60ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc0209d9a:	00005697          	auipc	a3,0x5
ffffffffc0209d9e:	21668693          	addi	a3,a3,534 # ffffffffc020efb0 <dev_node_ops+0x628>
ffffffffc0209da2:	00002617          	auipc	a2,0x2
ffffffffc0209da6:	c1660613          	addi	a2,a2,-1002 # ffffffffc020b9b8 <commands+0x210>
ffffffffc0209daa:	16f00593          	li	a1,367
ffffffffc0209dae:	00005517          	auipc	a0,0x5
ffffffffc0209db2:	19a50513          	addi	a0,a0,410 # ffffffffc020ef48 <dev_node_ops+0x5c0>
ffffffffc0209db6:	ee8f60ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc0209dba:	00005697          	auipc	a3,0x5
ffffffffc0209dbe:	28e68693          	addi	a3,a3,654 # ffffffffc020f048 <dev_node_ops+0x6c0>
ffffffffc0209dc2:	00002617          	auipc	a2,0x2
ffffffffc0209dc6:	bf660613          	addi	a2,a2,-1034 # ffffffffc020b9b8 <commands+0x210>
ffffffffc0209dca:	11c00593          	li	a1,284
ffffffffc0209dce:	00005517          	auipc	a0,0x5
ffffffffc0209dd2:	17a50513          	addi	a0,a0,378 # ffffffffc020ef48 <dev_node_ops+0x5c0>
ffffffffc0209dd6:	ec8f60ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc0209dda:	00005697          	auipc	a3,0x5
ffffffffc0209dde:	2b668693          	addi	a3,a3,694 # ffffffffc020f090 <dev_node_ops+0x708>
ffffffffc0209de2:	00002617          	auipc	a2,0x2
ffffffffc0209de6:	bd660613          	addi	a2,a2,-1066 # ffffffffc020b9b8 <commands+0x210>
ffffffffc0209dea:	12500593          	li	a1,293
ffffffffc0209dee:	00005517          	auipc	a0,0x5
ffffffffc0209df2:	15a50513          	addi	a0,a0,346 # ffffffffc020ef48 <dev_node_ops+0x5c0>
ffffffffc0209df6:	ea8f60ef          	jal	ra,ffffffffc020049e <__panic>

ffffffffc0209dfa <sfs_dirent_read_nolock>:
ffffffffc0209dfa:	6198                	ld	a4,0(a1)
ffffffffc0209dfc:	7179                	addi	sp,sp,-48
ffffffffc0209dfe:	f406                	sd	ra,40(sp)
ffffffffc0209e00:	00475883          	lhu	a7,4(a4) # 4004 <_binary_bin_swap_img_size-0x3cfc>
ffffffffc0209e04:	f022                	sd	s0,32(sp)
ffffffffc0209e06:	ec26                	sd	s1,24(sp)
ffffffffc0209e08:	4809                	li	a6,2
ffffffffc0209e0a:	05089b63          	bne	a7,a6,ffffffffc0209e60 <sfs_dirent_read_nolock+0x66>
ffffffffc0209e0e:	4718                	lw	a4,8(a4)
ffffffffc0209e10:	87b2                	mv	a5,a2
ffffffffc0209e12:	2601                	sext.w	a2,a2
ffffffffc0209e14:	04e7f663          	bgeu	a5,a4,ffffffffc0209e60 <sfs_dirent_read_nolock+0x66>
ffffffffc0209e18:	84b6                	mv	s1,a3
ffffffffc0209e1a:	0074                	addi	a3,sp,12
ffffffffc0209e1c:	842a                	mv	s0,a0
ffffffffc0209e1e:	d85ff0ef          	jal	ra,ffffffffc0209ba2 <sfs_bmap_load_nolock>
ffffffffc0209e22:	c511                	beqz	a0,ffffffffc0209e2e <sfs_dirent_read_nolock+0x34>
ffffffffc0209e24:	70a2                	ld	ra,40(sp)
ffffffffc0209e26:	7402                	ld	s0,32(sp)
ffffffffc0209e28:	64e2                	ld	s1,24(sp)
ffffffffc0209e2a:	6145                	addi	sp,sp,48
ffffffffc0209e2c:	8082                	ret
ffffffffc0209e2e:	45b2                	lw	a1,12(sp)
ffffffffc0209e30:	4054                	lw	a3,4(s0)
ffffffffc0209e32:	c5b9                	beqz	a1,ffffffffc0209e80 <sfs_dirent_read_nolock+0x86>
ffffffffc0209e34:	04d5f663          	bgeu	a1,a3,ffffffffc0209e80 <sfs_dirent_read_nolock+0x86>
ffffffffc0209e38:	7c08                	ld	a0,56(s0)
ffffffffc0209e3a:	9a0ff0ef          	jal	ra,ffffffffc0208fda <bitmap_test>
ffffffffc0209e3e:	ed31                	bnez	a0,ffffffffc0209e9a <sfs_dirent_read_nolock+0xa0>
ffffffffc0209e40:	46b2                	lw	a3,12(sp)
ffffffffc0209e42:	4701                	li	a4,0
ffffffffc0209e44:	10400613          	li	a2,260
ffffffffc0209e48:	85a6                	mv	a1,s1
ffffffffc0209e4a:	8522                	mv	a0,s0
ffffffffc0209e4c:	705000ef          	jal	ra,ffffffffc020ad50 <sfs_rbuf>
ffffffffc0209e50:	f971                	bnez	a0,ffffffffc0209e24 <sfs_dirent_read_nolock+0x2a>
ffffffffc0209e52:	100481a3          	sb	zero,259(s1)
ffffffffc0209e56:	70a2                	ld	ra,40(sp)
ffffffffc0209e58:	7402                	ld	s0,32(sp)
ffffffffc0209e5a:	64e2                	ld	s1,24(sp)
ffffffffc0209e5c:	6145                	addi	sp,sp,48
ffffffffc0209e5e:	8082                	ret
ffffffffc0209e60:	00005697          	auipc	a3,0x5
ffffffffc0209e64:	25868693          	addi	a3,a3,600 # ffffffffc020f0b8 <dev_node_ops+0x730>
ffffffffc0209e68:	00002617          	auipc	a2,0x2
ffffffffc0209e6c:	b5060613          	addi	a2,a2,-1200 # ffffffffc020b9b8 <commands+0x210>
ffffffffc0209e70:	19200593          	li	a1,402
ffffffffc0209e74:	00005517          	auipc	a0,0x5
ffffffffc0209e78:	0d450513          	addi	a0,a0,212 # ffffffffc020ef48 <dev_node_ops+0x5c0>
ffffffffc0209e7c:	e22f60ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc0209e80:	872e                	mv	a4,a1
ffffffffc0209e82:	00005617          	auipc	a2,0x5
ffffffffc0209e86:	0f660613          	addi	a2,a2,246 # ffffffffc020ef78 <dev_node_ops+0x5f0>
ffffffffc0209e8a:	05700593          	li	a1,87
ffffffffc0209e8e:	00005517          	auipc	a0,0x5
ffffffffc0209e92:	0ba50513          	addi	a0,a0,186 # ffffffffc020ef48 <dev_node_ops+0x5c0>
ffffffffc0209e96:	e08f60ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc0209e9a:	00005697          	auipc	a3,0x5
ffffffffc0209e9e:	11668693          	addi	a3,a3,278 # ffffffffc020efb0 <dev_node_ops+0x628>
ffffffffc0209ea2:	00002617          	auipc	a2,0x2
ffffffffc0209ea6:	b1660613          	addi	a2,a2,-1258 # ffffffffc020b9b8 <commands+0x210>
ffffffffc0209eaa:	19900593          	li	a1,409
ffffffffc0209eae:	00005517          	auipc	a0,0x5
ffffffffc0209eb2:	09a50513          	addi	a0,a0,154 # ffffffffc020ef48 <dev_node_ops+0x5c0>
ffffffffc0209eb6:	de8f60ef          	jal	ra,ffffffffc020049e <__panic>

ffffffffc0209eba <sfs_getdirentry>:
ffffffffc0209eba:	715d                	addi	sp,sp,-80
ffffffffc0209ebc:	ec56                	sd	s5,24(sp)
ffffffffc0209ebe:	8aaa                	mv	s5,a0
ffffffffc0209ec0:	10400513          	li	a0,260
ffffffffc0209ec4:	e85a                	sd	s6,16(sp)
ffffffffc0209ec6:	e486                	sd	ra,72(sp)
ffffffffc0209ec8:	e0a2                	sd	s0,64(sp)
ffffffffc0209eca:	fc26                	sd	s1,56(sp)
ffffffffc0209ecc:	f84a                	sd	s2,48(sp)
ffffffffc0209ece:	f44e                	sd	s3,40(sp)
ffffffffc0209ed0:	f052                	sd	s4,32(sp)
ffffffffc0209ed2:	e45e                	sd	s7,8(sp)
ffffffffc0209ed4:	e062                	sd	s8,0(sp)
ffffffffc0209ed6:	8b2e                	mv	s6,a1
ffffffffc0209ed8:	8b6f80ef          	jal	ra,ffffffffc0201f8e <kmalloc>
ffffffffc0209edc:	cd61                	beqz	a0,ffffffffc0209fb4 <sfs_getdirentry+0xfa>
ffffffffc0209ede:	068abb83          	ld	s7,104(s5)
ffffffffc0209ee2:	0c0b8b63          	beqz	s7,ffffffffc0209fb8 <sfs_getdirentry+0xfe>
ffffffffc0209ee6:	0b0ba783          	lw	a5,176(s7) # 10b0 <_binary_bin_swap_img_size-0x6c50>
ffffffffc0209eea:	e7f9                	bnez	a5,ffffffffc0209fb8 <sfs_getdirentry+0xfe>
ffffffffc0209eec:	058aa703          	lw	a4,88(s5)
ffffffffc0209ef0:	6785                	lui	a5,0x1
ffffffffc0209ef2:	23578793          	addi	a5,a5,565 # 1235 <_binary_bin_swap_img_size-0x6acb>
ffffffffc0209ef6:	0ef71163          	bne	a4,a5,ffffffffc0209fd8 <sfs_getdirentry+0x11e>
ffffffffc0209efa:	008b3983          	ld	s3,8(s6)
ffffffffc0209efe:	892a                	mv	s2,a0
ffffffffc0209f00:	0a09c163          	bltz	s3,ffffffffc0209fa2 <sfs_getdirentry+0xe8>
ffffffffc0209f04:	0ff9f793          	zext.b	a5,s3
ffffffffc0209f08:	efc9                	bnez	a5,ffffffffc0209fa2 <sfs_getdirentry+0xe8>
ffffffffc0209f0a:	000ab783          	ld	a5,0(s5)
ffffffffc0209f0e:	0089d993          	srli	s3,s3,0x8
ffffffffc0209f12:	2981                	sext.w	s3,s3
ffffffffc0209f14:	479c                	lw	a5,8(a5)
ffffffffc0209f16:	0937eb63          	bltu	a5,s3,ffffffffc0209fac <sfs_getdirentry+0xf2>
ffffffffc0209f1a:	020a8c13          	addi	s8,s5,32
ffffffffc0209f1e:	8562                	mv	a0,s8
ffffffffc0209f20:	e44fa0ef          	jal	ra,ffffffffc0204564 <down>
ffffffffc0209f24:	000ab783          	ld	a5,0(s5)
ffffffffc0209f28:	0087aa03          	lw	s4,8(a5)
ffffffffc0209f2c:	07405663          	blez	s4,ffffffffc0209f98 <sfs_getdirentry+0xde>
ffffffffc0209f30:	4481                	li	s1,0
ffffffffc0209f32:	a811                	j	ffffffffc0209f46 <sfs_getdirentry+0x8c>
ffffffffc0209f34:	00092783          	lw	a5,0(s2)
ffffffffc0209f38:	c781                	beqz	a5,ffffffffc0209f40 <sfs_getdirentry+0x86>
ffffffffc0209f3a:	02098263          	beqz	s3,ffffffffc0209f5e <sfs_getdirentry+0xa4>
ffffffffc0209f3e:	39fd                	addiw	s3,s3,-1
ffffffffc0209f40:	2485                	addiw	s1,s1,1
ffffffffc0209f42:	049a0b63          	beq	s4,s1,ffffffffc0209f98 <sfs_getdirentry+0xde>
ffffffffc0209f46:	86ca                	mv	a3,s2
ffffffffc0209f48:	8626                	mv	a2,s1
ffffffffc0209f4a:	85d6                	mv	a1,s5
ffffffffc0209f4c:	855e                	mv	a0,s7
ffffffffc0209f4e:	eadff0ef          	jal	ra,ffffffffc0209dfa <sfs_dirent_read_nolock>
ffffffffc0209f52:	842a                	mv	s0,a0
ffffffffc0209f54:	d165                	beqz	a0,ffffffffc0209f34 <sfs_getdirentry+0x7a>
ffffffffc0209f56:	8562                	mv	a0,s8
ffffffffc0209f58:	e08fa0ef          	jal	ra,ffffffffc0204560 <up>
ffffffffc0209f5c:	a831                	j	ffffffffc0209f78 <sfs_getdirentry+0xbe>
ffffffffc0209f5e:	8562                	mv	a0,s8
ffffffffc0209f60:	e00fa0ef          	jal	ra,ffffffffc0204560 <up>
ffffffffc0209f64:	4701                	li	a4,0
ffffffffc0209f66:	4685                	li	a3,1
ffffffffc0209f68:	10000613          	li	a2,256
ffffffffc0209f6c:	00490593          	addi	a1,s2,4
ffffffffc0209f70:	855a                	mv	a0,s6
ffffffffc0209f72:	c7afb0ef          	jal	ra,ffffffffc02053ec <iobuf_move>
ffffffffc0209f76:	842a                	mv	s0,a0
ffffffffc0209f78:	854a                	mv	a0,s2
ffffffffc0209f7a:	8c4f80ef          	jal	ra,ffffffffc020203e <kfree>
ffffffffc0209f7e:	60a6                	ld	ra,72(sp)
ffffffffc0209f80:	8522                	mv	a0,s0
ffffffffc0209f82:	6406                	ld	s0,64(sp)
ffffffffc0209f84:	74e2                	ld	s1,56(sp)
ffffffffc0209f86:	7942                	ld	s2,48(sp)
ffffffffc0209f88:	79a2                	ld	s3,40(sp)
ffffffffc0209f8a:	7a02                	ld	s4,32(sp)
ffffffffc0209f8c:	6ae2                	ld	s5,24(sp)
ffffffffc0209f8e:	6b42                	ld	s6,16(sp)
ffffffffc0209f90:	6ba2                	ld	s7,8(sp)
ffffffffc0209f92:	6c02                	ld	s8,0(sp)
ffffffffc0209f94:	6161                	addi	sp,sp,80
ffffffffc0209f96:	8082                	ret
ffffffffc0209f98:	8562                	mv	a0,s8
ffffffffc0209f9a:	5441                	li	s0,-16
ffffffffc0209f9c:	dc4fa0ef          	jal	ra,ffffffffc0204560 <up>
ffffffffc0209fa0:	bfe1                	j	ffffffffc0209f78 <sfs_getdirentry+0xbe>
ffffffffc0209fa2:	854a                	mv	a0,s2
ffffffffc0209fa4:	89af80ef          	jal	ra,ffffffffc020203e <kfree>
ffffffffc0209fa8:	5475                	li	s0,-3
ffffffffc0209faa:	bfd1                	j	ffffffffc0209f7e <sfs_getdirentry+0xc4>
ffffffffc0209fac:	892f80ef          	jal	ra,ffffffffc020203e <kfree>
ffffffffc0209fb0:	5441                	li	s0,-16
ffffffffc0209fb2:	b7f1                	j	ffffffffc0209f7e <sfs_getdirentry+0xc4>
ffffffffc0209fb4:	5471                	li	s0,-4
ffffffffc0209fb6:	b7e1                	j	ffffffffc0209f7e <sfs_getdirentry+0xc4>
ffffffffc0209fb8:	00005697          	auipc	a3,0x5
ffffffffc0209fbc:	db068693          	addi	a3,a3,-592 # ffffffffc020ed68 <dev_node_ops+0x3e0>
ffffffffc0209fc0:	00002617          	auipc	a2,0x2
ffffffffc0209fc4:	9f860613          	addi	a2,a2,-1544 # ffffffffc020b9b8 <commands+0x210>
ffffffffc0209fc8:	33500593          	li	a1,821
ffffffffc0209fcc:	00005517          	auipc	a0,0x5
ffffffffc0209fd0:	f7c50513          	addi	a0,a0,-132 # ffffffffc020ef48 <dev_node_ops+0x5c0>
ffffffffc0209fd4:	ccaf60ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc0209fd8:	00005697          	auipc	a3,0x5
ffffffffc0209fdc:	f3868693          	addi	a3,a3,-200 # ffffffffc020ef10 <dev_node_ops+0x588>
ffffffffc0209fe0:	00002617          	auipc	a2,0x2
ffffffffc0209fe4:	9d860613          	addi	a2,a2,-1576 # ffffffffc020b9b8 <commands+0x210>
ffffffffc0209fe8:	33600593          	li	a1,822
ffffffffc0209fec:	00005517          	auipc	a0,0x5
ffffffffc0209ff0:	f5c50513          	addi	a0,a0,-164 # ffffffffc020ef48 <dev_node_ops+0x5c0>
ffffffffc0209ff4:	caaf60ef          	jal	ra,ffffffffc020049e <__panic>

ffffffffc0209ff8 <sfs_dirent_search_nolock.constprop.0>:
ffffffffc0209ff8:	715d                	addi	sp,sp,-80
ffffffffc0209ffa:	f052                	sd	s4,32(sp)
ffffffffc0209ffc:	8a2a                	mv	s4,a0
ffffffffc0209ffe:	8532                	mv	a0,a2
ffffffffc020a000:	f44e                	sd	s3,40(sp)
ffffffffc020a002:	e85a                	sd	s6,16(sp)
ffffffffc020a004:	e45e                	sd	s7,8(sp)
ffffffffc020a006:	e486                	sd	ra,72(sp)
ffffffffc020a008:	e0a2                	sd	s0,64(sp)
ffffffffc020a00a:	fc26                	sd	s1,56(sp)
ffffffffc020a00c:	f84a                	sd	s2,48(sp)
ffffffffc020a00e:	ec56                	sd	s5,24(sp)
ffffffffc020a010:	e062                	sd	s8,0(sp)
ffffffffc020a012:	8b32                	mv	s6,a2
ffffffffc020a014:	89ae                	mv	s3,a1
ffffffffc020a016:	8bb6                	mv	s7,a3
ffffffffc020a018:	41a010ef          	jal	ra,ffffffffc020b432 <strlen>
ffffffffc020a01c:	0ff00793          	li	a5,255
ffffffffc020a020:	06a7ef63          	bltu	a5,a0,ffffffffc020a09e <sfs_dirent_search_nolock.constprop.0+0xa6>
ffffffffc020a024:	10400513          	li	a0,260
ffffffffc020a028:	f67f70ef          	jal	ra,ffffffffc0201f8e <kmalloc>
ffffffffc020a02c:	892a                	mv	s2,a0
ffffffffc020a02e:	c535                	beqz	a0,ffffffffc020a09a <sfs_dirent_search_nolock.constprop.0+0xa2>
ffffffffc020a030:	0009b783          	ld	a5,0(s3)
ffffffffc020a034:	0087aa83          	lw	s5,8(a5)
ffffffffc020a038:	05505a63          	blez	s5,ffffffffc020a08c <sfs_dirent_search_nolock.constprop.0+0x94>
ffffffffc020a03c:	4481                	li	s1,0
ffffffffc020a03e:	00450c13          	addi	s8,a0,4
ffffffffc020a042:	a829                	j	ffffffffc020a05c <sfs_dirent_search_nolock.constprop.0+0x64>
ffffffffc020a044:	00092783          	lw	a5,0(s2)
ffffffffc020a048:	c799                	beqz	a5,ffffffffc020a056 <sfs_dirent_search_nolock.constprop.0+0x5e>
ffffffffc020a04a:	85e2                	mv	a1,s8
ffffffffc020a04c:	855a                	mv	a0,s6
ffffffffc020a04e:	42c010ef          	jal	ra,ffffffffc020b47a <strcmp>
ffffffffc020a052:	842a                	mv	s0,a0
ffffffffc020a054:	cd15                	beqz	a0,ffffffffc020a090 <sfs_dirent_search_nolock.constprop.0+0x98>
ffffffffc020a056:	2485                	addiw	s1,s1,1
ffffffffc020a058:	029a8a63          	beq	s5,s1,ffffffffc020a08c <sfs_dirent_search_nolock.constprop.0+0x94>
ffffffffc020a05c:	86ca                	mv	a3,s2
ffffffffc020a05e:	8626                	mv	a2,s1
ffffffffc020a060:	85ce                	mv	a1,s3
ffffffffc020a062:	8552                	mv	a0,s4
ffffffffc020a064:	d97ff0ef          	jal	ra,ffffffffc0209dfa <sfs_dirent_read_nolock>
ffffffffc020a068:	842a                	mv	s0,a0
ffffffffc020a06a:	dd69                	beqz	a0,ffffffffc020a044 <sfs_dirent_search_nolock.constprop.0+0x4c>
ffffffffc020a06c:	854a                	mv	a0,s2
ffffffffc020a06e:	fd1f70ef          	jal	ra,ffffffffc020203e <kfree>
ffffffffc020a072:	60a6                	ld	ra,72(sp)
ffffffffc020a074:	8522                	mv	a0,s0
ffffffffc020a076:	6406                	ld	s0,64(sp)
ffffffffc020a078:	74e2                	ld	s1,56(sp)
ffffffffc020a07a:	7942                	ld	s2,48(sp)
ffffffffc020a07c:	79a2                	ld	s3,40(sp)
ffffffffc020a07e:	7a02                	ld	s4,32(sp)
ffffffffc020a080:	6ae2                	ld	s5,24(sp)
ffffffffc020a082:	6b42                	ld	s6,16(sp)
ffffffffc020a084:	6ba2                	ld	s7,8(sp)
ffffffffc020a086:	6c02                	ld	s8,0(sp)
ffffffffc020a088:	6161                	addi	sp,sp,80
ffffffffc020a08a:	8082                	ret
ffffffffc020a08c:	5441                	li	s0,-16
ffffffffc020a08e:	bff9                	j	ffffffffc020a06c <sfs_dirent_search_nolock.constprop.0+0x74>
ffffffffc020a090:	00092783          	lw	a5,0(s2)
ffffffffc020a094:	00fba023          	sw	a5,0(s7)
ffffffffc020a098:	bfd1                	j	ffffffffc020a06c <sfs_dirent_search_nolock.constprop.0+0x74>
ffffffffc020a09a:	5471                	li	s0,-4
ffffffffc020a09c:	bfd9                	j	ffffffffc020a072 <sfs_dirent_search_nolock.constprop.0+0x7a>
ffffffffc020a09e:	00005697          	auipc	a3,0x5
ffffffffc020a0a2:	06a68693          	addi	a3,a3,106 # ffffffffc020f108 <dev_node_ops+0x780>
ffffffffc020a0a6:	00002617          	auipc	a2,0x2
ffffffffc020a0aa:	91260613          	addi	a2,a2,-1774 # ffffffffc020b9b8 <commands+0x210>
ffffffffc020a0ae:	1be00593          	li	a1,446
ffffffffc020a0b2:	00005517          	auipc	a0,0x5
ffffffffc020a0b6:	e9650513          	addi	a0,a0,-362 # ffffffffc020ef48 <dev_node_ops+0x5c0>
ffffffffc020a0ba:	be4f60ef          	jal	ra,ffffffffc020049e <__panic>

ffffffffc020a0be <sfs_io_nolock>:
ffffffffc020a0be:	7159                	addi	sp,sp,-112
ffffffffc020a0c0:	ec66                	sd	s9,24(sp)
ffffffffc020a0c2:	0005bc83          	ld	s9,0(a1)
ffffffffc020a0c6:	fc56                	sd	s5,56(sp)
ffffffffc020a0c8:	f486                	sd	ra,104(sp)
ffffffffc020a0ca:	004cd803          	lhu	a6,4(s9) # 1004 <_binary_bin_swap_img_size-0x6cfc>
ffffffffc020a0ce:	8aae                	mv	s5,a1
ffffffffc020a0d0:	f0a2                	sd	s0,96(sp)
ffffffffc020a0d2:	eca6                	sd	s1,88(sp)
ffffffffc020a0d4:	e8ca                	sd	s2,80(sp)
ffffffffc020a0d6:	e4ce                	sd	s3,72(sp)
ffffffffc020a0d8:	e0d2                	sd	s4,64(sp)
ffffffffc020a0da:	f85a                	sd	s6,48(sp)
ffffffffc020a0dc:	f45e                	sd	s7,40(sp)
ffffffffc020a0de:	f062                	sd	s8,32(sp)
ffffffffc020a0e0:	e86a                	sd	s10,16(sp)
ffffffffc020a0e2:	4589                	li	a1,2
ffffffffc020a0e4:	20b80363          	beq	a6,a1,ffffffffc020a2ea <sfs_io_nolock+0x22c>
ffffffffc020a0e8:	00073983          	ld	s3,0(a4)
ffffffffc020a0ec:	8b3e                	mv	s6,a5
ffffffffc020a0ee:	00073023          	sd	zero,0(a4)
ffffffffc020a0f2:	080007b7          	lui	a5,0x8000
ffffffffc020a0f6:	8d36                	mv	s10,a3
ffffffffc020a0f8:	893a                	mv	s2,a4
ffffffffc020a0fa:	99b6                	add	s3,s3,a3
ffffffffc020a0fc:	1cf6f263          	bgeu	a3,a5,ffffffffc020a2c0 <sfs_io_nolock+0x202>
ffffffffc020a100:	1cd9c063          	blt	s3,a3,ffffffffc020a2c0 <sfs_io_nolock+0x202>
ffffffffc020a104:	0d368163          	beq	a3,s3,ffffffffc020a1c6 <sfs_io_nolock+0x108>
ffffffffc020a108:	8a2a                	mv	s4,a0
ffffffffc020a10a:	8432                	mv	s0,a2
ffffffffc020a10c:	0c0b1c63          	bnez	s6,ffffffffc020a1e4 <sfs_io_nolock+0x126>
ffffffffc020a110:	000ce783          	lwu	a5,0(s9)
ffffffffc020a114:	0af6d963          	bge	a3,a5,ffffffffc020a1c6 <sfs_io_nolock+0x108>
ffffffffc020a118:	1337ce63          	blt	a5,s3,ffffffffc020a254 <sfs_io_nolock+0x196>
ffffffffc020a11c:	6b85                	lui	s7,0x1
ffffffffc020a11e:	fffb8493          	addi	s1,s7,-1 # fff <_binary_bin_swap_img_size-0x6d01>
ffffffffc020a122:	009d74b3          	and	s1,s10,s1
ffffffffc020a126:	e8e9                	bnez	s1,ffffffffc020a1f8 <sfs_io_nolock+0x13a>
ffffffffc020a128:	6785                	lui	a5,0x1
ffffffffc020a12a:	fff78c13          	addi	s8,a5,-1 # fff <_binary_bin_swap_img_size-0x6d01>
ffffffffc020a12e:	018d0733          	add	a4,s10,s8
ffffffffc020a132:	8bea                	mv	s7,s10
ffffffffc020a134:	13375263          	bge	a4,s3,ffffffffc020a258 <sfs_io_nolock+0x19a>
ffffffffc020a138:	40f98bb3          	sub	s7,s3,a5
ffffffffc020a13c:	41ab8bb3          	sub	s7,s7,s10
ffffffffc020a140:	777d                	lui	a4,0xfffff
ffffffffc020a142:	00ebfbb3          	and	s7,s7,a4
ffffffffc020a146:	97ea                	add	a5,a5,s10
ffffffffc020a148:	9bbe                	add	s7,s7,a5
ffffffffc020a14a:	6485                	lui	s1,0x1
ffffffffc020a14c:	a01d                	j	ffffffffc020a172 <sfs_io_nolock+0xb4>
ffffffffc020a14e:	0e061963          	bnez	a2,ffffffffc020a240 <sfs_io_nolock+0x182>
ffffffffc020a152:	6605                	lui	a2,0x1
ffffffffc020a154:	4581                	li	a1,0
ffffffffc020a156:	8522                	mv	a0,s0
ffffffffc020a158:	37c010ef          	jal	ra,ffffffffc020b4d4 <memset>
ffffffffc020a15c:	00093783          	ld	a5,0(s2)
ffffffffc020a160:	9d26                	add	s10,s10,s1
ffffffffc020a162:	97a6                	add	a5,a5,s1
ffffffffc020a164:	00f93023          	sd	a5,0(s2)
ffffffffc020a168:	053d5363          	bge	s10,s3,ffffffffc020a1ae <sfs_io_nolock+0xf0>
ffffffffc020a16c:	9426                	add	s0,s0,s1
ffffffffc020a16e:	0fab8563          	beq	s7,s10,ffffffffc020a258 <sfs_io_nolock+0x19a>
ffffffffc020a172:	43fd5613          	srai	a2,s10,0x3f
ffffffffc020a176:	01867633          	and	a2,a2,s8
ffffffffc020a17a:	966a                	add	a2,a2,s10
ffffffffc020a17c:	8631                	srai	a2,a2,0xc
ffffffffc020a17e:	0074                	addi	a3,sp,12
ffffffffc020a180:	2601                	sext.w	a2,a2
ffffffffc020a182:	85d6                	mv	a1,s5
ffffffffc020a184:	8552                	mv	a0,s4
ffffffffc020a186:	a1dff0ef          	jal	ra,ffffffffc0209ba2 <sfs_bmap_load_nolock>
ffffffffc020a18a:	ed1d                	bnez	a0,ffffffffc020a1c8 <sfs_io_nolock+0x10a>
ffffffffc020a18c:	4632                	lw	a2,12(sp)
ffffffffc020a18e:	fc0b00e3          	beqz	s6,ffffffffc020a14e <sfs_io_nolock+0x90>
ffffffffc020a192:	4685                	li	a3,1
ffffffffc020a194:	85a2                	mv	a1,s0
ffffffffc020a196:	8552                	mv	a0,s4
ffffffffc020a198:	359000ef          	jal	ra,ffffffffc020acf0 <sfs_wblock>
ffffffffc020a19c:	e515                	bnez	a0,ffffffffc020a1c8 <sfs_io_nolock+0x10a>
ffffffffc020a19e:	00093783          	ld	a5,0(s2)
ffffffffc020a1a2:	9d26                	add	s10,s10,s1
ffffffffc020a1a4:	97a6                	add	a5,a5,s1
ffffffffc020a1a6:	00f93023          	sd	a5,0(s2)
ffffffffc020a1aa:	fd3d41e3          	blt	s10,s3,ffffffffc020a16c <sfs_io_nolock+0xae>
ffffffffc020a1ae:	8bea                	mv	s7,s10
ffffffffc020a1b0:	000b0b63          	beqz	s6,ffffffffc020a1c6 <sfs_io_nolock+0x108>
ffffffffc020a1b4:	000ce783          	lwu	a5,0(s9)
ffffffffc020a1b8:	0177d763          	bge	a5,s7,ffffffffc020a1c6 <sfs_io_nolock+0x108>
ffffffffc020a1bc:	017ca023          	sw	s7,0(s9)
ffffffffc020a1c0:	4785                	li	a5,1
ffffffffc020a1c2:	00fab823          	sd	a5,16(s5)
ffffffffc020a1c6:	4501                	li	a0,0
ffffffffc020a1c8:	70a6                	ld	ra,104(sp)
ffffffffc020a1ca:	7406                	ld	s0,96(sp)
ffffffffc020a1cc:	64e6                	ld	s1,88(sp)
ffffffffc020a1ce:	6946                	ld	s2,80(sp)
ffffffffc020a1d0:	69a6                	ld	s3,72(sp)
ffffffffc020a1d2:	6a06                	ld	s4,64(sp)
ffffffffc020a1d4:	7ae2                	ld	s5,56(sp)
ffffffffc020a1d6:	7b42                	ld	s6,48(sp)
ffffffffc020a1d8:	7ba2                	ld	s7,40(sp)
ffffffffc020a1da:	7c02                	ld	s8,32(sp)
ffffffffc020a1dc:	6ce2                	ld	s9,24(sp)
ffffffffc020a1de:	6d42                	ld	s10,16(sp)
ffffffffc020a1e0:	6165                	addi	sp,sp,112
ffffffffc020a1e2:	8082                	ret
ffffffffc020a1e4:	f337fce3          	bgeu	a5,s3,ffffffffc020a11c <sfs_io_nolock+0x5e>
ffffffffc020a1e8:	6b85                	lui	s7,0x1
ffffffffc020a1ea:	fffb8493          	addi	s1,s7,-1 # fff <_binary_bin_swap_img_size-0x6d01>
ffffffffc020a1ee:	009d74b3          	and	s1,s10,s1
ffffffffc020a1f2:	080009b7          	lui	s3,0x8000
ffffffffc020a1f6:	d88d                	beqz	s1,ffffffffc020a128 <sfs_io_nolock+0x6a>
ffffffffc020a1f8:	40cd5613          	srai	a2,s10,0xc
ffffffffc020a1fc:	0074                	addi	a3,sp,12
ffffffffc020a1fe:	2601                	sext.w	a2,a2
ffffffffc020a200:	85d6                	mv	a1,s5
ffffffffc020a202:	8552                	mv	a0,s4
ffffffffc020a204:	99fff0ef          	jal	ra,ffffffffc0209ba2 <sfs_bmap_load_nolock>
ffffffffc020a208:	f161                	bnez	a0,ffffffffc020a1c8 <sfs_io_nolock+0x10a>
ffffffffc020a20a:	409b8bb3          	sub	s7,s7,s1
ffffffffc020a20e:	41a98c33          	sub	s8,s3,s10
ffffffffc020a212:	018bd363          	bge	s7,s8,ffffffffc020a218 <sfs_io_nolock+0x15a>
ffffffffc020a216:	8c5e                	mv	s8,s7
ffffffffc020a218:	46b2                	lw	a3,12(sp)
ffffffffc020a21a:	080b1063          	bnez	s6,ffffffffc020a29a <sfs_io_nolock+0x1dc>
ffffffffc020a21e:	e6d1                	bnez	a3,ffffffffc020a2aa <sfs_io_nolock+0x1ec>
ffffffffc020a220:	8662                	mv	a2,s8
ffffffffc020a222:	4581                	li	a1,0
ffffffffc020a224:	8522                	mv	a0,s0
ffffffffc020a226:	2ae010ef          	jal	ra,ffffffffc020b4d4 <memset>
ffffffffc020a22a:	00093783          	ld	a5,0(s2)
ffffffffc020a22e:	9d62                	add	s10,s10,s8
ffffffffc020a230:	9462                	add	s0,s0,s8
ffffffffc020a232:	97e2                	add	a5,a5,s8
ffffffffc020a234:	00f93023          	sd	a5,0(s2)
ffffffffc020a238:	ef3d48e3          	blt	s10,s3,ffffffffc020a128 <sfs_io_nolock+0x6a>
ffffffffc020a23c:	8bea                	mv	s7,s10
ffffffffc020a23e:	bf8d                	j	ffffffffc020a1b0 <sfs_io_nolock+0xf2>
ffffffffc020a240:	4685                	li	a3,1
ffffffffc020a242:	85a2                	mv	a1,s0
ffffffffc020a244:	8552                	mv	a0,s4
ffffffffc020a246:	24b000ef          	jal	ra,ffffffffc020ac90 <sfs_rblock>
ffffffffc020a24a:	fd3d                	bnez	a0,ffffffffc020a1c8 <sfs_io_nolock+0x10a>
ffffffffc020a24c:	47b2                	lw	a5,12(sp)
ffffffffc020a24e:	f00797e3          	bnez	a5,ffffffffc020a15c <sfs_io_nolock+0x9e>
ffffffffc020a252:	b701                	j	ffffffffc020a152 <sfs_io_nolock+0x94>
ffffffffc020a254:	89be                	mv	s3,a5
ffffffffc020a256:	b5d9                	j	ffffffffc020a11c <sfs_io_nolock+0x5e>
ffffffffc020a258:	6785                	lui	a5,0x1
ffffffffc020a25a:	17fd                	addi	a5,a5,-1
ffffffffc020a25c:	00f9f9b3          	and	s3,s3,a5
ffffffffc020a260:	f40988e3          	beqz	s3,ffffffffc020a1b0 <sfs_io_nolock+0xf2>
ffffffffc020a264:	43fbd613          	srai	a2,s7,0x3f
ffffffffc020a268:	8e7d                	and	a2,a2,a5
ffffffffc020a26a:	965e                	add	a2,a2,s7
ffffffffc020a26c:	8631                	srai	a2,a2,0xc
ffffffffc020a26e:	0074                	addi	a3,sp,12
ffffffffc020a270:	2601                	sext.w	a2,a2
ffffffffc020a272:	85d6                	mv	a1,s5
ffffffffc020a274:	8552                	mv	a0,s4
ffffffffc020a276:	92dff0ef          	jal	ra,ffffffffc0209ba2 <sfs_bmap_load_nolock>
ffffffffc020a27a:	f539                	bnez	a0,ffffffffc020a1c8 <sfs_io_nolock+0x10a>
ffffffffc020a27c:	46b2                	lw	a3,12(sp)
ffffffffc020a27e:	040b1363          	bnez	s6,ffffffffc020a2c4 <sfs_io_nolock+0x206>
ffffffffc020a282:	eaa9                	bnez	a3,ffffffffc020a2d4 <sfs_io_nolock+0x216>
ffffffffc020a284:	864e                	mv	a2,s3
ffffffffc020a286:	4581                	li	a1,0
ffffffffc020a288:	8522                	mv	a0,s0
ffffffffc020a28a:	24a010ef          	jal	ra,ffffffffc020b4d4 <memset>
ffffffffc020a28e:	00093783          	ld	a5,0(s2)
ffffffffc020a292:	99be                	add	s3,s3,a5
ffffffffc020a294:	01393023          	sd	s3,0(s2)
ffffffffc020a298:	bf21                	j	ffffffffc020a1b0 <sfs_io_nolock+0xf2>
ffffffffc020a29a:	8726                	mv	a4,s1
ffffffffc020a29c:	8662                	mv	a2,s8
ffffffffc020a29e:	85a2                	mv	a1,s0
ffffffffc020a2a0:	8552                	mv	a0,s4
ffffffffc020a2a2:	32f000ef          	jal	ra,ffffffffc020add0 <sfs_wbuf>
ffffffffc020a2a6:	d151                	beqz	a0,ffffffffc020a22a <sfs_io_nolock+0x16c>
ffffffffc020a2a8:	b705                	j	ffffffffc020a1c8 <sfs_io_nolock+0x10a>
ffffffffc020a2aa:	8726                	mv	a4,s1
ffffffffc020a2ac:	8662                	mv	a2,s8
ffffffffc020a2ae:	85a2                	mv	a1,s0
ffffffffc020a2b0:	8552                	mv	a0,s4
ffffffffc020a2b2:	29f000ef          	jal	ra,ffffffffc020ad50 <sfs_rbuf>
ffffffffc020a2b6:	f00519e3          	bnez	a0,ffffffffc020a1c8 <sfs_io_nolock+0x10a>
ffffffffc020a2ba:	47b2                	lw	a5,12(sp)
ffffffffc020a2bc:	f7bd                	bnez	a5,ffffffffc020a22a <sfs_io_nolock+0x16c>
ffffffffc020a2be:	b78d                	j	ffffffffc020a220 <sfs_io_nolock+0x162>
ffffffffc020a2c0:	5575                	li	a0,-3
ffffffffc020a2c2:	b719                	j	ffffffffc020a1c8 <sfs_io_nolock+0x10a>
ffffffffc020a2c4:	4701                	li	a4,0
ffffffffc020a2c6:	864e                	mv	a2,s3
ffffffffc020a2c8:	85a2                	mv	a1,s0
ffffffffc020a2ca:	8552                	mv	a0,s4
ffffffffc020a2cc:	305000ef          	jal	ra,ffffffffc020add0 <sfs_wbuf>
ffffffffc020a2d0:	dd5d                	beqz	a0,ffffffffc020a28e <sfs_io_nolock+0x1d0>
ffffffffc020a2d2:	bddd                	j	ffffffffc020a1c8 <sfs_io_nolock+0x10a>
ffffffffc020a2d4:	4701                	li	a4,0
ffffffffc020a2d6:	864e                	mv	a2,s3
ffffffffc020a2d8:	85a2                	mv	a1,s0
ffffffffc020a2da:	8552                	mv	a0,s4
ffffffffc020a2dc:	275000ef          	jal	ra,ffffffffc020ad50 <sfs_rbuf>
ffffffffc020a2e0:	ee0514e3          	bnez	a0,ffffffffc020a1c8 <sfs_io_nolock+0x10a>
ffffffffc020a2e4:	47b2                	lw	a5,12(sp)
ffffffffc020a2e6:	f7c5                	bnez	a5,ffffffffc020a28e <sfs_io_nolock+0x1d0>
ffffffffc020a2e8:	bf71                	j	ffffffffc020a284 <sfs_io_nolock+0x1c6>
ffffffffc020a2ea:	00005697          	auipc	a3,0x5
ffffffffc020a2ee:	e4668693          	addi	a3,a3,-442 # ffffffffc020f130 <dev_node_ops+0x7a8>
ffffffffc020a2f2:	00001617          	auipc	a2,0x1
ffffffffc020a2f6:	6c660613          	addi	a2,a2,1734 # ffffffffc020b9b8 <commands+0x210>
ffffffffc020a2fa:	22f00593          	li	a1,559
ffffffffc020a2fe:	00005517          	auipc	a0,0x5
ffffffffc020a302:	c4a50513          	addi	a0,a0,-950 # ffffffffc020ef48 <dev_node_ops+0x5c0>
ffffffffc020a306:	998f60ef          	jal	ra,ffffffffc020049e <__panic>

ffffffffc020a30a <sfs_read>:
ffffffffc020a30a:	7139                	addi	sp,sp,-64
ffffffffc020a30c:	f04a                	sd	s2,32(sp)
ffffffffc020a30e:	06853903          	ld	s2,104(a0)
ffffffffc020a312:	fc06                	sd	ra,56(sp)
ffffffffc020a314:	f822                	sd	s0,48(sp)
ffffffffc020a316:	f426                	sd	s1,40(sp)
ffffffffc020a318:	ec4e                	sd	s3,24(sp)
ffffffffc020a31a:	04090f63          	beqz	s2,ffffffffc020a378 <sfs_read+0x6e>
ffffffffc020a31e:	0b092783          	lw	a5,176(s2)
ffffffffc020a322:	ebb9                	bnez	a5,ffffffffc020a378 <sfs_read+0x6e>
ffffffffc020a324:	4d38                	lw	a4,88(a0)
ffffffffc020a326:	6785                	lui	a5,0x1
ffffffffc020a328:	23578793          	addi	a5,a5,565 # 1235 <_binary_bin_swap_img_size-0x6acb>
ffffffffc020a32c:	842a                	mv	s0,a0
ffffffffc020a32e:	06f71563          	bne	a4,a5,ffffffffc020a398 <sfs_read+0x8e>
ffffffffc020a332:	02050993          	addi	s3,a0,32
ffffffffc020a336:	854e                	mv	a0,s3
ffffffffc020a338:	84ae                	mv	s1,a1
ffffffffc020a33a:	a2afa0ef          	jal	ra,ffffffffc0204564 <down>
ffffffffc020a33e:	0184b803          	ld	a6,24(s1) # 1018 <_binary_bin_swap_img_size-0x6ce8>
ffffffffc020a342:	6494                	ld	a3,8(s1)
ffffffffc020a344:	6090                	ld	a2,0(s1)
ffffffffc020a346:	85a2                	mv	a1,s0
ffffffffc020a348:	4781                	li	a5,0
ffffffffc020a34a:	0038                	addi	a4,sp,8
ffffffffc020a34c:	854a                	mv	a0,s2
ffffffffc020a34e:	e442                	sd	a6,8(sp)
ffffffffc020a350:	d6fff0ef          	jal	ra,ffffffffc020a0be <sfs_io_nolock>
ffffffffc020a354:	65a2                	ld	a1,8(sp)
ffffffffc020a356:	842a                	mv	s0,a0
ffffffffc020a358:	ed81                	bnez	a1,ffffffffc020a370 <sfs_read+0x66>
ffffffffc020a35a:	854e                	mv	a0,s3
ffffffffc020a35c:	a04fa0ef          	jal	ra,ffffffffc0204560 <up>
ffffffffc020a360:	70e2                	ld	ra,56(sp)
ffffffffc020a362:	8522                	mv	a0,s0
ffffffffc020a364:	7442                	ld	s0,48(sp)
ffffffffc020a366:	74a2                	ld	s1,40(sp)
ffffffffc020a368:	7902                	ld	s2,32(sp)
ffffffffc020a36a:	69e2                	ld	s3,24(sp)
ffffffffc020a36c:	6121                	addi	sp,sp,64
ffffffffc020a36e:	8082                	ret
ffffffffc020a370:	8526                	mv	a0,s1
ffffffffc020a372:	8e6fb0ef          	jal	ra,ffffffffc0205458 <iobuf_skip>
ffffffffc020a376:	b7d5                	j	ffffffffc020a35a <sfs_read+0x50>
ffffffffc020a378:	00005697          	auipc	a3,0x5
ffffffffc020a37c:	9f068693          	addi	a3,a3,-1552 # ffffffffc020ed68 <dev_node_ops+0x3e0>
ffffffffc020a380:	00001617          	auipc	a2,0x1
ffffffffc020a384:	63860613          	addi	a2,a2,1592 # ffffffffc020b9b8 <commands+0x210>
ffffffffc020a388:	29100593          	li	a1,657
ffffffffc020a38c:	00005517          	auipc	a0,0x5
ffffffffc020a390:	bbc50513          	addi	a0,a0,-1092 # ffffffffc020ef48 <dev_node_ops+0x5c0>
ffffffffc020a394:	90af60ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc020a398:	d2cff0ef          	jal	ra,ffffffffc02098c4 <sfs_io.part.0>

ffffffffc020a39c <sfs_write>:
ffffffffc020a39c:	7139                	addi	sp,sp,-64
ffffffffc020a39e:	f04a                	sd	s2,32(sp)
ffffffffc020a3a0:	06853903          	ld	s2,104(a0)
ffffffffc020a3a4:	fc06                	sd	ra,56(sp)
ffffffffc020a3a6:	f822                	sd	s0,48(sp)
ffffffffc020a3a8:	f426                	sd	s1,40(sp)
ffffffffc020a3aa:	ec4e                	sd	s3,24(sp)
ffffffffc020a3ac:	04090f63          	beqz	s2,ffffffffc020a40a <sfs_write+0x6e>
ffffffffc020a3b0:	0b092783          	lw	a5,176(s2)
ffffffffc020a3b4:	ebb9                	bnez	a5,ffffffffc020a40a <sfs_write+0x6e>
ffffffffc020a3b6:	4d38                	lw	a4,88(a0)
ffffffffc020a3b8:	6785                	lui	a5,0x1
ffffffffc020a3ba:	23578793          	addi	a5,a5,565 # 1235 <_binary_bin_swap_img_size-0x6acb>
ffffffffc020a3be:	842a                	mv	s0,a0
ffffffffc020a3c0:	06f71563          	bne	a4,a5,ffffffffc020a42a <sfs_write+0x8e>
ffffffffc020a3c4:	02050993          	addi	s3,a0,32
ffffffffc020a3c8:	854e                	mv	a0,s3
ffffffffc020a3ca:	84ae                	mv	s1,a1
ffffffffc020a3cc:	998fa0ef          	jal	ra,ffffffffc0204564 <down>
ffffffffc020a3d0:	0184b803          	ld	a6,24(s1)
ffffffffc020a3d4:	6494                	ld	a3,8(s1)
ffffffffc020a3d6:	6090                	ld	a2,0(s1)
ffffffffc020a3d8:	85a2                	mv	a1,s0
ffffffffc020a3da:	4785                	li	a5,1
ffffffffc020a3dc:	0038                	addi	a4,sp,8
ffffffffc020a3de:	854a                	mv	a0,s2
ffffffffc020a3e0:	e442                	sd	a6,8(sp)
ffffffffc020a3e2:	cddff0ef          	jal	ra,ffffffffc020a0be <sfs_io_nolock>
ffffffffc020a3e6:	65a2                	ld	a1,8(sp)
ffffffffc020a3e8:	842a                	mv	s0,a0
ffffffffc020a3ea:	ed81                	bnez	a1,ffffffffc020a402 <sfs_write+0x66>
ffffffffc020a3ec:	854e                	mv	a0,s3
ffffffffc020a3ee:	972fa0ef          	jal	ra,ffffffffc0204560 <up>
ffffffffc020a3f2:	70e2                	ld	ra,56(sp)
ffffffffc020a3f4:	8522                	mv	a0,s0
ffffffffc020a3f6:	7442                	ld	s0,48(sp)
ffffffffc020a3f8:	74a2                	ld	s1,40(sp)
ffffffffc020a3fa:	7902                	ld	s2,32(sp)
ffffffffc020a3fc:	69e2                	ld	s3,24(sp)
ffffffffc020a3fe:	6121                	addi	sp,sp,64
ffffffffc020a400:	8082                	ret
ffffffffc020a402:	8526                	mv	a0,s1
ffffffffc020a404:	854fb0ef          	jal	ra,ffffffffc0205458 <iobuf_skip>
ffffffffc020a408:	b7d5                	j	ffffffffc020a3ec <sfs_write+0x50>
ffffffffc020a40a:	00005697          	auipc	a3,0x5
ffffffffc020a40e:	95e68693          	addi	a3,a3,-1698 # ffffffffc020ed68 <dev_node_ops+0x3e0>
ffffffffc020a412:	00001617          	auipc	a2,0x1
ffffffffc020a416:	5a660613          	addi	a2,a2,1446 # ffffffffc020b9b8 <commands+0x210>
ffffffffc020a41a:	29100593          	li	a1,657
ffffffffc020a41e:	00005517          	auipc	a0,0x5
ffffffffc020a422:	b2a50513          	addi	a0,a0,-1238 # ffffffffc020ef48 <dev_node_ops+0x5c0>
ffffffffc020a426:	878f60ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc020a42a:	c9aff0ef          	jal	ra,ffffffffc02098c4 <sfs_io.part.0>

ffffffffc020a42e <sfs_truncfile>:
ffffffffc020a42e:	7175                	addi	sp,sp,-144
ffffffffc020a430:	e506                	sd	ra,136(sp)
ffffffffc020a432:	e122                	sd	s0,128(sp)
ffffffffc020a434:	fca6                	sd	s1,120(sp)
ffffffffc020a436:	f8ca                	sd	s2,112(sp)
ffffffffc020a438:	f4ce                	sd	s3,104(sp)
ffffffffc020a43a:	f0d2                	sd	s4,96(sp)
ffffffffc020a43c:	ecd6                	sd	s5,88(sp)
ffffffffc020a43e:	e8da                	sd	s6,80(sp)
ffffffffc020a440:	e4de                	sd	s7,72(sp)
ffffffffc020a442:	e0e2                	sd	s8,64(sp)
ffffffffc020a444:	fc66                	sd	s9,56(sp)
ffffffffc020a446:	f86a                	sd	s10,48(sp)
ffffffffc020a448:	f46e                	sd	s11,40(sp)
ffffffffc020a44a:	080007b7          	lui	a5,0x8000
ffffffffc020a44e:	16b7e463          	bltu	a5,a1,ffffffffc020a5b6 <sfs_truncfile+0x188>
ffffffffc020a452:	06853c83          	ld	s9,104(a0)
ffffffffc020a456:	89aa                	mv	s3,a0
ffffffffc020a458:	160c8163          	beqz	s9,ffffffffc020a5ba <sfs_truncfile+0x18c>
ffffffffc020a45c:	0b0ca783          	lw	a5,176(s9)
ffffffffc020a460:	14079d63          	bnez	a5,ffffffffc020a5ba <sfs_truncfile+0x18c>
ffffffffc020a464:	4d38                	lw	a4,88(a0)
ffffffffc020a466:	6405                	lui	s0,0x1
ffffffffc020a468:	23540793          	addi	a5,s0,565 # 1235 <_binary_bin_swap_img_size-0x6acb>
ffffffffc020a46c:	16f71763          	bne	a4,a5,ffffffffc020a5da <sfs_truncfile+0x1ac>
ffffffffc020a470:	00053a83          	ld	s5,0(a0)
ffffffffc020a474:	147d                	addi	s0,s0,-1
ffffffffc020a476:	942e                	add	s0,s0,a1
ffffffffc020a478:	000ae783          	lwu	a5,0(s5)
ffffffffc020a47c:	8031                	srli	s0,s0,0xc
ffffffffc020a47e:	8a2e                	mv	s4,a1
ffffffffc020a480:	2401                	sext.w	s0,s0
ffffffffc020a482:	02b79763          	bne	a5,a1,ffffffffc020a4b0 <sfs_truncfile+0x82>
ffffffffc020a486:	008aa783          	lw	a5,8(s5)
ffffffffc020a48a:	4901                	li	s2,0
ffffffffc020a48c:	18879763          	bne	a5,s0,ffffffffc020a61a <sfs_truncfile+0x1ec>
ffffffffc020a490:	60aa                	ld	ra,136(sp)
ffffffffc020a492:	640a                	ld	s0,128(sp)
ffffffffc020a494:	74e6                	ld	s1,120(sp)
ffffffffc020a496:	79a6                	ld	s3,104(sp)
ffffffffc020a498:	7a06                	ld	s4,96(sp)
ffffffffc020a49a:	6ae6                	ld	s5,88(sp)
ffffffffc020a49c:	6b46                	ld	s6,80(sp)
ffffffffc020a49e:	6ba6                	ld	s7,72(sp)
ffffffffc020a4a0:	6c06                	ld	s8,64(sp)
ffffffffc020a4a2:	7ce2                	ld	s9,56(sp)
ffffffffc020a4a4:	7d42                	ld	s10,48(sp)
ffffffffc020a4a6:	7da2                	ld	s11,40(sp)
ffffffffc020a4a8:	854a                	mv	a0,s2
ffffffffc020a4aa:	7946                	ld	s2,112(sp)
ffffffffc020a4ac:	6149                	addi	sp,sp,144
ffffffffc020a4ae:	8082                	ret
ffffffffc020a4b0:	02050b13          	addi	s6,a0,32
ffffffffc020a4b4:	855a                	mv	a0,s6
ffffffffc020a4b6:	8aefa0ef          	jal	ra,ffffffffc0204564 <down>
ffffffffc020a4ba:	008aa483          	lw	s1,8(s5)
ffffffffc020a4be:	0a84e663          	bltu	s1,s0,ffffffffc020a56a <sfs_truncfile+0x13c>
ffffffffc020a4c2:	0c947163          	bgeu	s0,s1,ffffffffc020a584 <sfs_truncfile+0x156>
ffffffffc020a4c6:	4dad                	li	s11,11
ffffffffc020a4c8:	4b85                	li	s7,1
ffffffffc020a4ca:	a09d                	j	ffffffffc020a530 <sfs_truncfile+0x102>
ffffffffc020a4cc:	ff37091b          	addiw	s2,a4,-13
ffffffffc020a4d0:	0009079b          	sext.w	a5,s2
ffffffffc020a4d4:	3ff00713          	li	a4,1023
ffffffffc020a4d8:	04f76563          	bltu	a4,a5,ffffffffc020a522 <sfs_truncfile+0xf4>
ffffffffc020a4dc:	03cd2c03          	lw	s8,60(s10)
ffffffffc020a4e0:	040c0163          	beqz	s8,ffffffffc020a522 <sfs_truncfile+0xf4>
ffffffffc020a4e4:	004ca783          	lw	a5,4(s9)
ffffffffc020a4e8:	18fc7963          	bgeu	s8,a5,ffffffffc020a67a <sfs_truncfile+0x24c>
ffffffffc020a4ec:	038cb503          	ld	a0,56(s9)
ffffffffc020a4f0:	85e2                	mv	a1,s8
ffffffffc020a4f2:	ae9fe0ef          	jal	ra,ffffffffc0208fda <bitmap_test>
ffffffffc020a4f6:	16051263          	bnez	a0,ffffffffc020a65a <sfs_truncfile+0x22c>
ffffffffc020a4fa:	02091793          	slli	a5,s2,0x20
ffffffffc020a4fe:	01e7d713          	srli	a4,a5,0x1e
ffffffffc020a502:	86e2                	mv	a3,s8
ffffffffc020a504:	4611                	li	a2,4
ffffffffc020a506:	082c                	addi	a1,sp,24
ffffffffc020a508:	8566                	mv	a0,s9
ffffffffc020a50a:	e43a                	sd	a4,8(sp)
ffffffffc020a50c:	ce02                	sw	zero,28(sp)
ffffffffc020a50e:	043000ef          	jal	ra,ffffffffc020ad50 <sfs_rbuf>
ffffffffc020a512:	892a                	mv	s2,a0
ffffffffc020a514:	e141                	bnez	a0,ffffffffc020a594 <sfs_truncfile+0x166>
ffffffffc020a516:	47e2                	lw	a5,24(sp)
ffffffffc020a518:	6722                	ld	a4,8(sp)
ffffffffc020a51a:	e3c9                	bnez	a5,ffffffffc020a59c <sfs_truncfile+0x16e>
ffffffffc020a51c:	008d2603          	lw	a2,8(s10)
ffffffffc020a520:	367d                	addiw	a2,a2,-1
ffffffffc020a522:	00cd2423          	sw	a2,8(s10)
ffffffffc020a526:	0179b823          	sd	s7,16(s3) # 8000010 <_binary_bin_sfs_img_size+0x7f8ad10>
ffffffffc020a52a:	34fd                	addiw	s1,s1,-1
ffffffffc020a52c:	04940a63          	beq	s0,s1,ffffffffc020a580 <sfs_truncfile+0x152>
ffffffffc020a530:	0009bd03          	ld	s10,0(s3)
ffffffffc020a534:	008d2703          	lw	a4,8(s10)
ffffffffc020a538:	c369                	beqz	a4,ffffffffc020a5fa <sfs_truncfile+0x1cc>
ffffffffc020a53a:	fff7079b          	addiw	a5,a4,-1
ffffffffc020a53e:	0007861b          	sext.w	a2,a5
ffffffffc020a542:	f8cde5e3          	bltu	s11,a2,ffffffffc020a4cc <sfs_truncfile+0x9e>
ffffffffc020a546:	02079713          	slli	a4,a5,0x20
ffffffffc020a54a:	01e75793          	srli	a5,a4,0x1e
ffffffffc020a54e:	00fd0933          	add	s2,s10,a5
ffffffffc020a552:	00c92583          	lw	a1,12(s2)
ffffffffc020a556:	d5f1                	beqz	a1,ffffffffc020a522 <sfs_truncfile+0xf4>
ffffffffc020a558:	8566                	mv	a0,s9
ffffffffc020a55a:	b8eff0ef          	jal	ra,ffffffffc02098e8 <sfs_block_free>
ffffffffc020a55e:	00092623          	sw	zero,12(s2)
ffffffffc020a562:	008d2603          	lw	a2,8(s10)
ffffffffc020a566:	367d                	addiw	a2,a2,-1
ffffffffc020a568:	bf6d                	j	ffffffffc020a522 <sfs_truncfile+0xf4>
ffffffffc020a56a:	4681                	li	a3,0
ffffffffc020a56c:	8626                	mv	a2,s1
ffffffffc020a56e:	85ce                	mv	a1,s3
ffffffffc020a570:	8566                	mv	a0,s9
ffffffffc020a572:	e30ff0ef          	jal	ra,ffffffffc0209ba2 <sfs_bmap_load_nolock>
ffffffffc020a576:	892a                	mv	s2,a0
ffffffffc020a578:	ed11                	bnez	a0,ffffffffc020a594 <sfs_truncfile+0x166>
ffffffffc020a57a:	2485                	addiw	s1,s1,1
ffffffffc020a57c:	fe9417e3          	bne	s0,s1,ffffffffc020a56a <sfs_truncfile+0x13c>
ffffffffc020a580:	008aa483          	lw	s1,8(s5)
ffffffffc020a584:	0a941b63          	bne	s0,s1,ffffffffc020a63a <sfs_truncfile+0x20c>
ffffffffc020a588:	014aa023          	sw	s4,0(s5)
ffffffffc020a58c:	4785                	li	a5,1
ffffffffc020a58e:	00f9b823          	sd	a5,16(s3)
ffffffffc020a592:	4901                	li	s2,0
ffffffffc020a594:	855a                	mv	a0,s6
ffffffffc020a596:	fcbf90ef          	jal	ra,ffffffffc0204560 <up>
ffffffffc020a59a:	bddd                	j	ffffffffc020a490 <sfs_truncfile+0x62>
ffffffffc020a59c:	86e2                	mv	a3,s8
ffffffffc020a59e:	4611                	li	a2,4
ffffffffc020a5a0:	086c                	addi	a1,sp,28
ffffffffc020a5a2:	8566                	mv	a0,s9
ffffffffc020a5a4:	02d000ef          	jal	ra,ffffffffc020add0 <sfs_wbuf>
ffffffffc020a5a8:	892a                	mv	s2,a0
ffffffffc020a5aa:	f56d                	bnez	a0,ffffffffc020a594 <sfs_truncfile+0x166>
ffffffffc020a5ac:	45e2                	lw	a1,24(sp)
ffffffffc020a5ae:	8566                	mv	a0,s9
ffffffffc020a5b0:	b38ff0ef          	jal	ra,ffffffffc02098e8 <sfs_block_free>
ffffffffc020a5b4:	b7a5                	j	ffffffffc020a51c <sfs_truncfile+0xee>
ffffffffc020a5b6:	5975                	li	s2,-3
ffffffffc020a5b8:	bde1                	j	ffffffffc020a490 <sfs_truncfile+0x62>
ffffffffc020a5ba:	00004697          	auipc	a3,0x4
ffffffffc020a5be:	7ae68693          	addi	a3,a3,1966 # ffffffffc020ed68 <dev_node_ops+0x3e0>
ffffffffc020a5c2:	00001617          	auipc	a2,0x1
ffffffffc020a5c6:	3f660613          	addi	a2,a2,1014 # ffffffffc020b9b8 <commands+0x210>
ffffffffc020a5ca:	3a400593          	li	a1,932
ffffffffc020a5ce:	00005517          	auipc	a0,0x5
ffffffffc020a5d2:	97a50513          	addi	a0,a0,-1670 # ffffffffc020ef48 <dev_node_ops+0x5c0>
ffffffffc020a5d6:	ec9f50ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc020a5da:	00005697          	auipc	a3,0x5
ffffffffc020a5de:	93668693          	addi	a3,a3,-1738 # ffffffffc020ef10 <dev_node_ops+0x588>
ffffffffc020a5e2:	00001617          	auipc	a2,0x1
ffffffffc020a5e6:	3d660613          	addi	a2,a2,982 # ffffffffc020b9b8 <commands+0x210>
ffffffffc020a5ea:	3a500593          	li	a1,933
ffffffffc020a5ee:	00005517          	auipc	a0,0x5
ffffffffc020a5f2:	95a50513          	addi	a0,a0,-1702 # ffffffffc020ef48 <dev_node_ops+0x5c0>
ffffffffc020a5f6:	ea9f50ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc020a5fa:	00005697          	auipc	a3,0x5
ffffffffc020a5fe:	b6e68693          	addi	a3,a3,-1170 # ffffffffc020f168 <dev_node_ops+0x7e0>
ffffffffc020a602:	00001617          	auipc	a2,0x1
ffffffffc020a606:	3b660613          	addi	a2,a2,950 # ffffffffc020b9b8 <commands+0x210>
ffffffffc020a60a:	17f00593          	li	a1,383
ffffffffc020a60e:	00005517          	auipc	a0,0x5
ffffffffc020a612:	93a50513          	addi	a0,a0,-1734 # ffffffffc020ef48 <dev_node_ops+0x5c0>
ffffffffc020a616:	e89f50ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc020a61a:	00005697          	auipc	a3,0x5
ffffffffc020a61e:	b3668693          	addi	a3,a3,-1226 # ffffffffc020f150 <dev_node_ops+0x7c8>
ffffffffc020a622:	00001617          	auipc	a2,0x1
ffffffffc020a626:	39660613          	addi	a2,a2,918 # ffffffffc020b9b8 <commands+0x210>
ffffffffc020a62a:	3ac00593          	li	a1,940
ffffffffc020a62e:	00005517          	auipc	a0,0x5
ffffffffc020a632:	91a50513          	addi	a0,a0,-1766 # ffffffffc020ef48 <dev_node_ops+0x5c0>
ffffffffc020a636:	e69f50ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc020a63a:	00005697          	auipc	a3,0x5
ffffffffc020a63e:	b7e68693          	addi	a3,a3,-1154 # ffffffffc020f1b8 <dev_node_ops+0x830>
ffffffffc020a642:	00001617          	auipc	a2,0x1
ffffffffc020a646:	37660613          	addi	a2,a2,886 # ffffffffc020b9b8 <commands+0x210>
ffffffffc020a64a:	3c500593          	li	a1,965
ffffffffc020a64e:	00005517          	auipc	a0,0x5
ffffffffc020a652:	8fa50513          	addi	a0,a0,-1798 # ffffffffc020ef48 <dev_node_ops+0x5c0>
ffffffffc020a656:	e49f50ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc020a65a:	00005697          	auipc	a3,0x5
ffffffffc020a65e:	b2668693          	addi	a3,a3,-1242 # ffffffffc020f180 <dev_node_ops+0x7f8>
ffffffffc020a662:	00001617          	auipc	a2,0x1
ffffffffc020a666:	35660613          	addi	a2,a2,854 # ffffffffc020b9b8 <commands+0x210>
ffffffffc020a66a:	12f00593          	li	a1,303
ffffffffc020a66e:	00005517          	auipc	a0,0x5
ffffffffc020a672:	8da50513          	addi	a0,a0,-1830 # ffffffffc020ef48 <dev_node_ops+0x5c0>
ffffffffc020a676:	e29f50ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc020a67a:	8762                	mv	a4,s8
ffffffffc020a67c:	86be                	mv	a3,a5
ffffffffc020a67e:	00005617          	auipc	a2,0x5
ffffffffc020a682:	8fa60613          	addi	a2,a2,-1798 # ffffffffc020ef78 <dev_node_ops+0x5f0>
ffffffffc020a686:	05700593          	li	a1,87
ffffffffc020a68a:	00005517          	auipc	a0,0x5
ffffffffc020a68e:	8be50513          	addi	a0,a0,-1858 # ffffffffc020ef48 <dev_node_ops+0x5c0>
ffffffffc020a692:	e0df50ef          	jal	ra,ffffffffc020049e <__panic>

ffffffffc020a696 <sfs_load_inode>:
ffffffffc020a696:	7139                	addi	sp,sp,-64
ffffffffc020a698:	fc06                	sd	ra,56(sp)
ffffffffc020a69a:	f822                	sd	s0,48(sp)
ffffffffc020a69c:	f426                	sd	s1,40(sp)
ffffffffc020a69e:	f04a                	sd	s2,32(sp)
ffffffffc020a6a0:	84b2                	mv	s1,a2
ffffffffc020a6a2:	892a                	mv	s2,a0
ffffffffc020a6a4:	ec4e                	sd	s3,24(sp)
ffffffffc020a6a6:	e852                	sd	s4,16(sp)
ffffffffc020a6a8:	89ae                	mv	s3,a1
ffffffffc020a6aa:	e456                	sd	s5,8(sp)
ffffffffc020a6ac:	0d5000ef          	jal	ra,ffffffffc020af80 <lock_sfs_fs>
ffffffffc020a6b0:	45a9                	li	a1,10
ffffffffc020a6b2:	8526                	mv	a0,s1
ffffffffc020a6b4:	0a893403          	ld	s0,168(s2)
ffffffffc020a6b8:	0e9000ef          	jal	ra,ffffffffc020afa0 <hash32>
ffffffffc020a6bc:	02051793          	slli	a5,a0,0x20
ffffffffc020a6c0:	01c7d713          	srli	a4,a5,0x1c
ffffffffc020a6c4:	9722                	add	a4,a4,s0
ffffffffc020a6c6:	843a                	mv	s0,a4
ffffffffc020a6c8:	a029                	j	ffffffffc020a6d2 <sfs_load_inode+0x3c>
ffffffffc020a6ca:	fc042783          	lw	a5,-64(s0)
ffffffffc020a6ce:	10978863          	beq	a5,s1,ffffffffc020a7de <sfs_load_inode+0x148>
ffffffffc020a6d2:	6400                	ld	s0,8(s0)
ffffffffc020a6d4:	fe871be3          	bne	a4,s0,ffffffffc020a6ca <sfs_load_inode+0x34>
ffffffffc020a6d8:	04000513          	li	a0,64
ffffffffc020a6dc:	8b3f70ef          	jal	ra,ffffffffc0201f8e <kmalloc>
ffffffffc020a6e0:	8aaa                	mv	s5,a0
ffffffffc020a6e2:	16050563          	beqz	a0,ffffffffc020a84c <sfs_load_inode+0x1b6>
ffffffffc020a6e6:	00492683          	lw	a3,4(s2)
ffffffffc020a6ea:	18048363          	beqz	s1,ffffffffc020a870 <sfs_load_inode+0x1da>
ffffffffc020a6ee:	18d4f163          	bgeu	s1,a3,ffffffffc020a870 <sfs_load_inode+0x1da>
ffffffffc020a6f2:	03893503          	ld	a0,56(s2)
ffffffffc020a6f6:	85a6                	mv	a1,s1
ffffffffc020a6f8:	8e3fe0ef          	jal	ra,ffffffffc0208fda <bitmap_test>
ffffffffc020a6fc:	18051763          	bnez	a0,ffffffffc020a88a <sfs_load_inode+0x1f4>
ffffffffc020a700:	4701                	li	a4,0
ffffffffc020a702:	86a6                	mv	a3,s1
ffffffffc020a704:	04000613          	li	a2,64
ffffffffc020a708:	85d6                	mv	a1,s5
ffffffffc020a70a:	854a                	mv	a0,s2
ffffffffc020a70c:	644000ef          	jal	ra,ffffffffc020ad50 <sfs_rbuf>
ffffffffc020a710:	842a                	mv	s0,a0
ffffffffc020a712:	0e051563          	bnez	a0,ffffffffc020a7fc <sfs_load_inode+0x166>
ffffffffc020a716:	006ad783          	lhu	a5,6(s5)
ffffffffc020a71a:	12078b63          	beqz	a5,ffffffffc020a850 <sfs_load_inode+0x1ba>
ffffffffc020a71e:	6405                	lui	s0,0x1
ffffffffc020a720:	23540513          	addi	a0,s0,565 # 1235 <_binary_bin_swap_img_size-0x6acb>
ffffffffc020a724:	870fd0ef          	jal	ra,ffffffffc0207794 <__alloc_inode>
ffffffffc020a728:	8a2a                	mv	s4,a0
ffffffffc020a72a:	c961                	beqz	a0,ffffffffc020a7fa <sfs_load_inode+0x164>
ffffffffc020a72c:	004ad683          	lhu	a3,4(s5)
ffffffffc020a730:	4785                	li	a5,1
ffffffffc020a732:	0cf69c63          	bne	a3,a5,ffffffffc020a80a <sfs_load_inode+0x174>
ffffffffc020a736:	864a                	mv	a2,s2
ffffffffc020a738:	00005597          	auipc	a1,0x5
ffffffffc020a73c:	b9058593          	addi	a1,a1,-1136 # ffffffffc020f2c8 <sfs_node_fileops>
ffffffffc020a740:	870fd0ef          	jal	ra,ffffffffc02077b0 <inode_init>
ffffffffc020a744:	058a2783          	lw	a5,88(s4)
ffffffffc020a748:	23540413          	addi	s0,s0,565
ffffffffc020a74c:	0e879063          	bne	a5,s0,ffffffffc020a82c <sfs_load_inode+0x196>
ffffffffc020a750:	4785                	li	a5,1
ffffffffc020a752:	00fa2c23          	sw	a5,24(s4)
ffffffffc020a756:	015a3023          	sd	s5,0(s4)
ffffffffc020a75a:	009a2423          	sw	s1,8(s4)
ffffffffc020a75e:	000a3823          	sd	zero,16(s4)
ffffffffc020a762:	4585                	li	a1,1
ffffffffc020a764:	020a0513          	addi	a0,s4,32
ffffffffc020a768:	df3f90ef          	jal	ra,ffffffffc020455a <sem_init>
ffffffffc020a76c:	058a2703          	lw	a4,88(s4)
ffffffffc020a770:	6785                	lui	a5,0x1
ffffffffc020a772:	23578793          	addi	a5,a5,565 # 1235 <_binary_bin_swap_img_size-0x6acb>
ffffffffc020a776:	14f71663          	bne	a4,a5,ffffffffc020a8c2 <sfs_load_inode+0x22c>
ffffffffc020a77a:	0a093703          	ld	a4,160(s2)
ffffffffc020a77e:	038a0793          	addi	a5,s4,56
ffffffffc020a782:	008a2503          	lw	a0,8(s4)
ffffffffc020a786:	e31c                	sd	a5,0(a4)
ffffffffc020a788:	0af93023          	sd	a5,160(s2)
ffffffffc020a78c:	09890793          	addi	a5,s2,152
ffffffffc020a790:	0a893403          	ld	s0,168(s2)
ffffffffc020a794:	45a9                	li	a1,10
ffffffffc020a796:	04ea3023          	sd	a4,64(s4)
ffffffffc020a79a:	02fa3c23          	sd	a5,56(s4)
ffffffffc020a79e:	003000ef          	jal	ra,ffffffffc020afa0 <hash32>
ffffffffc020a7a2:	02051713          	slli	a4,a0,0x20
ffffffffc020a7a6:	01c75793          	srli	a5,a4,0x1c
ffffffffc020a7aa:	97a2                	add	a5,a5,s0
ffffffffc020a7ac:	6798                	ld	a4,8(a5)
ffffffffc020a7ae:	048a0693          	addi	a3,s4,72
ffffffffc020a7b2:	e314                	sd	a3,0(a4)
ffffffffc020a7b4:	e794                	sd	a3,8(a5)
ffffffffc020a7b6:	04ea3823          	sd	a4,80(s4)
ffffffffc020a7ba:	04fa3423          	sd	a5,72(s4)
ffffffffc020a7be:	854a                	mv	a0,s2
ffffffffc020a7c0:	7d0000ef          	jal	ra,ffffffffc020af90 <unlock_sfs_fs>
ffffffffc020a7c4:	4401                	li	s0,0
ffffffffc020a7c6:	0149b023          	sd	s4,0(s3)
ffffffffc020a7ca:	70e2                	ld	ra,56(sp)
ffffffffc020a7cc:	8522                	mv	a0,s0
ffffffffc020a7ce:	7442                	ld	s0,48(sp)
ffffffffc020a7d0:	74a2                	ld	s1,40(sp)
ffffffffc020a7d2:	7902                	ld	s2,32(sp)
ffffffffc020a7d4:	69e2                	ld	s3,24(sp)
ffffffffc020a7d6:	6a42                	ld	s4,16(sp)
ffffffffc020a7d8:	6aa2                	ld	s5,8(sp)
ffffffffc020a7da:	6121                	addi	sp,sp,64
ffffffffc020a7dc:	8082                	ret
ffffffffc020a7de:	fb840a13          	addi	s4,s0,-72
ffffffffc020a7e2:	8552                	mv	a0,s4
ffffffffc020a7e4:	82efd0ef          	jal	ra,ffffffffc0207812 <inode_ref_inc>
ffffffffc020a7e8:	4785                	li	a5,1
ffffffffc020a7ea:	fcf51ae3          	bne	a0,a5,ffffffffc020a7be <sfs_load_inode+0x128>
ffffffffc020a7ee:	fd042783          	lw	a5,-48(s0)
ffffffffc020a7f2:	2785                	addiw	a5,a5,1
ffffffffc020a7f4:	fcf42823          	sw	a5,-48(s0)
ffffffffc020a7f8:	b7d9                	j	ffffffffc020a7be <sfs_load_inode+0x128>
ffffffffc020a7fa:	5471                	li	s0,-4
ffffffffc020a7fc:	8556                	mv	a0,s5
ffffffffc020a7fe:	841f70ef          	jal	ra,ffffffffc020203e <kfree>
ffffffffc020a802:	854a                	mv	a0,s2
ffffffffc020a804:	78c000ef          	jal	ra,ffffffffc020af90 <unlock_sfs_fs>
ffffffffc020a808:	b7c9                	j	ffffffffc020a7ca <sfs_load_inode+0x134>
ffffffffc020a80a:	4789                	li	a5,2
ffffffffc020a80c:	08f69f63          	bne	a3,a5,ffffffffc020a8aa <sfs_load_inode+0x214>
ffffffffc020a810:	864a                	mv	a2,s2
ffffffffc020a812:	00005597          	auipc	a1,0x5
ffffffffc020a816:	a3658593          	addi	a1,a1,-1482 # ffffffffc020f248 <sfs_node_dirops>
ffffffffc020a81a:	f97fc0ef          	jal	ra,ffffffffc02077b0 <inode_init>
ffffffffc020a81e:	058a2703          	lw	a4,88(s4)
ffffffffc020a822:	6785                	lui	a5,0x1
ffffffffc020a824:	23578793          	addi	a5,a5,565 # 1235 <_binary_bin_swap_img_size-0x6acb>
ffffffffc020a828:	f2f704e3          	beq	a4,a5,ffffffffc020a750 <sfs_load_inode+0xba>
ffffffffc020a82c:	00004697          	auipc	a3,0x4
ffffffffc020a830:	6e468693          	addi	a3,a3,1764 # ffffffffc020ef10 <dev_node_ops+0x588>
ffffffffc020a834:	00001617          	auipc	a2,0x1
ffffffffc020a838:	18460613          	addi	a2,a2,388 # ffffffffc020b9b8 <commands+0x210>
ffffffffc020a83c:	07b00593          	li	a1,123
ffffffffc020a840:	00004517          	auipc	a0,0x4
ffffffffc020a844:	70850513          	addi	a0,a0,1800 # ffffffffc020ef48 <dev_node_ops+0x5c0>
ffffffffc020a848:	c57f50ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc020a84c:	5471                	li	s0,-4
ffffffffc020a84e:	bf55                	j	ffffffffc020a802 <sfs_load_inode+0x16c>
ffffffffc020a850:	00005697          	auipc	a3,0x5
ffffffffc020a854:	98068693          	addi	a3,a3,-1664 # ffffffffc020f1d0 <dev_node_ops+0x848>
ffffffffc020a858:	00001617          	auipc	a2,0x1
ffffffffc020a85c:	16060613          	addi	a2,a2,352 # ffffffffc020b9b8 <commands+0x210>
ffffffffc020a860:	0b100593          	li	a1,177
ffffffffc020a864:	00004517          	auipc	a0,0x4
ffffffffc020a868:	6e450513          	addi	a0,a0,1764 # ffffffffc020ef48 <dev_node_ops+0x5c0>
ffffffffc020a86c:	c33f50ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc020a870:	8726                	mv	a4,s1
ffffffffc020a872:	00004617          	auipc	a2,0x4
ffffffffc020a876:	70660613          	addi	a2,a2,1798 # ffffffffc020ef78 <dev_node_ops+0x5f0>
ffffffffc020a87a:	05700593          	li	a1,87
ffffffffc020a87e:	00004517          	auipc	a0,0x4
ffffffffc020a882:	6ca50513          	addi	a0,a0,1738 # ffffffffc020ef48 <dev_node_ops+0x5c0>
ffffffffc020a886:	c19f50ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc020a88a:	00004697          	auipc	a3,0x4
ffffffffc020a88e:	72668693          	addi	a3,a3,1830 # ffffffffc020efb0 <dev_node_ops+0x628>
ffffffffc020a892:	00001617          	auipc	a2,0x1
ffffffffc020a896:	12660613          	addi	a2,a2,294 # ffffffffc020b9b8 <commands+0x210>
ffffffffc020a89a:	0ac00593          	li	a1,172
ffffffffc020a89e:	00004517          	auipc	a0,0x4
ffffffffc020a8a2:	6aa50513          	addi	a0,a0,1706 # ffffffffc020ef48 <dev_node_ops+0x5c0>
ffffffffc020a8a6:	bf9f50ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc020a8aa:	00004617          	auipc	a2,0x4
ffffffffc020a8ae:	6b660613          	addi	a2,a2,1718 # ffffffffc020ef60 <dev_node_ops+0x5d8>
ffffffffc020a8b2:	03200593          	li	a1,50
ffffffffc020a8b6:	00004517          	auipc	a0,0x4
ffffffffc020a8ba:	69250513          	addi	a0,a0,1682 # ffffffffc020ef48 <dev_node_ops+0x5c0>
ffffffffc020a8be:	be1f50ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc020a8c2:	00004697          	auipc	a3,0x4
ffffffffc020a8c6:	64e68693          	addi	a3,a3,1614 # ffffffffc020ef10 <dev_node_ops+0x588>
ffffffffc020a8ca:	00001617          	auipc	a2,0x1
ffffffffc020a8ce:	0ee60613          	addi	a2,a2,238 # ffffffffc020b9b8 <commands+0x210>
ffffffffc020a8d2:	0b500593          	li	a1,181
ffffffffc020a8d6:	00004517          	auipc	a0,0x4
ffffffffc020a8da:	67250513          	addi	a0,a0,1650 # ffffffffc020ef48 <dev_node_ops+0x5c0>
ffffffffc020a8de:	bc1f50ef          	jal	ra,ffffffffc020049e <__panic>

ffffffffc020a8e2 <sfs_lookup>:
ffffffffc020a8e2:	7139                	addi	sp,sp,-64
ffffffffc020a8e4:	ec4e                	sd	s3,24(sp)
ffffffffc020a8e6:	06853983          	ld	s3,104(a0)
ffffffffc020a8ea:	fc06                	sd	ra,56(sp)
ffffffffc020a8ec:	f822                	sd	s0,48(sp)
ffffffffc020a8ee:	f426                	sd	s1,40(sp)
ffffffffc020a8f0:	f04a                	sd	s2,32(sp)
ffffffffc020a8f2:	e852                	sd	s4,16(sp)
ffffffffc020a8f4:	0a098c63          	beqz	s3,ffffffffc020a9ac <sfs_lookup+0xca>
ffffffffc020a8f8:	0b09a783          	lw	a5,176(s3)
ffffffffc020a8fc:	ebc5                	bnez	a5,ffffffffc020a9ac <sfs_lookup+0xca>
ffffffffc020a8fe:	0005c783          	lbu	a5,0(a1)
ffffffffc020a902:	84ae                	mv	s1,a1
ffffffffc020a904:	c7c1                	beqz	a5,ffffffffc020a98c <sfs_lookup+0xaa>
ffffffffc020a906:	02f00713          	li	a4,47
ffffffffc020a90a:	08e78163          	beq	a5,a4,ffffffffc020a98c <sfs_lookup+0xaa>
ffffffffc020a90e:	842a                	mv	s0,a0
ffffffffc020a910:	8a32                	mv	s4,a2
ffffffffc020a912:	f01fc0ef          	jal	ra,ffffffffc0207812 <inode_ref_inc>
ffffffffc020a916:	4c38                	lw	a4,88(s0)
ffffffffc020a918:	6785                	lui	a5,0x1
ffffffffc020a91a:	23578793          	addi	a5,a5,565 # 1235 <_binary_bin_swap_img_size-0x6acb>
ffffffffc020a91e:	0af71763          	bne	a4,a5,ffffffffc020a9cc <sfs_lookup+0xea>
ffffffffc020a922:	6018                	ld	a4,0(s0)
ffffffffc020a924:	4789                	li	a5,2
ffffffffc020a926:	00475703          	lhu	a4,4(a4) # fffffffffffff004 <end+0x3fd686f4>
ffffffffc020a92a:	04f71c63          	bne	a4,a5,ffffffffc020a982 <sfs_lookup+0xa0>
ffffffffc020a92e:	02040913          	addi	s2,s0,32
ffffffffc020a932:	854a                	mv	a0,s2
ffffffffc020a934:	c31f90ef          	jal	ra,ffffffffc0204564 <down>
ffffffffc020a938:	8626                	mv	a2,s1
ffffffffc020a93a:	0054                	addi	a3,sp,4
ffffffffc020a93c:	85a2                	mv	a1,s0
ffffffffc020a93e:	854e                	mv	a0,s3
ffffffffc020a940:	eb8ff0ef          	jal	ra,ffffffffc0209ff8 <sfs_dirent_search_nolock.constprop.0>
ffffffffc020a944:	84aa                	mv	s1,a0
ffffffffc020a946:	854a                	mv	a0,s2
ffffffffc020a948:	c19f90ef          	jal	ra,ffffffffc0204560 <up>
ffffffffc020a94c:	cc89                	beqz	s1,ffffffffc020a966 <sfs_lookup+0x84>
ffffffffc020a94e:	8522                	mv	a0,s0
ffffffffc020a950:	f91fc0ef          	jal	ra,ffffffffc02078e0 <inode_ref_dec>
ffffffffc020a954:	70e2                	ld	ra,56(sp)
ffffffffc020a956:	7442                	ld	s0,48(sp)
ffffffffc020a958:	7902                	ld	s2,32(sp)
ffffffffc020a95a:	69e2                	ld	s3,24(sp)
ffffffffc020a95c:	6a42                	ld	s4,16(sp)
ffffffffc020a95e:	8526                	mv	a0,s1
ffffffffc020a960:	74a2                	ld	s1,40(sp)
ffffffffc020a962:	6121                	addi	sp,sp,64
ffffffffc020a964:	8082                	ret
ffffffffc020a966:	4612                	lw	a2,4(sp)
ffffffffc020a968:	002c                	addi	a1,sp,8
ffffffffc020a96a:	854e                	mv	a0,s3
ffffffffc020a96c:	d2bff0ef          	jal	ra,ffffffffc020a696 <sfs_load_inode>
ffffffffc020a970:	84aa                	mv	s1,a0
ffffffffc020a972:	8522                	mv	a0,s0
ffffffffc020a974:	f6dfc0ef          	jal	ra,ffffffffc02078e0 <inode_ref_dec>
ffffffffc020a978:	fcf1                	bnez	s1,ffffffffc020a954 <sfs_lookup+0x72>
ffffffffc020a97a:	67a2                	ld	a5,8(sp)
ffffffffc020a97c:	00fa3023          	sd	a5,0(s4)
ffffffffc020a980:	bfd1                	j	ffffffffc020a954 <sfs_lookup+0x72>
ffffffffc020a982:	8522                	mv	a0,s0
ffffffffc020a984:	f5dfc0ef          	jal	ra,ffffffffc02078e0 <inode_ref_dec>
ffffffffc020a988:	54b9                	li	s1,-18
ffffffffc020a98a:	b7e9                	j	ffffffffc020a954 <sfs_lookup+0x72>
ffffffffc020a98c:	00005697          	auipc	a3,0x5
ffffffffc020a990:	85c68693          	addi	a3,a3,-1956 # ffffffffc020f1e8 <dev_node_ops+0x860>
ffffffffc020a994:	00001617          	auipc	a2,0x1
ffffffffc020a998:	02460613          	addi	a2,a2,36 # ffffffffc020b9b8 <commands+0x210>
ffffffffc020a99c:	3d600593          	li	a1,982
ffffffffc020a9a0:	00004517          	auipc	a0,0x4
ffffffffc020a9a4:	5a850513          	addi	a0,a0,1448 # ffffffffc020ef48 <dev_node_ops+0x5c0>
ffffffffc020a9a8:	af7f50ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc020a9ac:	00004697          	auipc	a3,0x4
ffffffffc020a9b0:	3bc68693          	addi	a3,a3,956 # ffffffffc020ed68 <dev_node_ops+0x3e0>
ffffffffc020a9b4:	00001617          	auipc	a2,0x1
ffffffffc020a9b8:	00460613          	addi	a2,a2,4 # ffffffffc020b9b8 <commands+0x210>
ffffffffc020a9bc:	3d500593          	li	a1,981
ffffffffc020a9c0:	00004517          	auipc	a0,0x4
ffffffffc020a9c4:	58850513          	addi	a0,a0,1416 # ffffffffc020ef48 <dev_node_ops+0x5c0>
ffffffffc020a9c8:	ad7f50ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc020a9cc:	00004697          	auipc	a3,0x4
ffffffffc020a9d0:	54468693          	addi	a3,a3,1348 # ffffffffc020ef10 <dev_node_ops+0x588>
ffffffffc020a9d4:	00001617          	auipc	a2,0x1
ffffffffc020a9d8:	fe460613          	addi	a2,a2,-28 # ffffffffc020b9b8 <commands+0x210>
ffffffffc020a9dc:	3d800593          	li	a1,984
ffffffffc020a9e0:	00004517          	auipc	a0,0x4
ffffffffc020a9e4:	56850513          	addi	a0,a0,1384 # ffffffffc020ef48 <dev_node_ops+0x5c0>
ffffffffc020a9e8:	ab7f50ef          	jal	ra,ffffffffc020049e <__panic>

ffffffffc020a9ec <sfs_namefile>:
ffffffffc020a9ec:	6d98                	ld	a4,24(a1)
ffffffffc020a9ee:	7175                	addi	sp,sp,-144
ffffffffc020a9f0:	e506                	sd	ra,136(sp)
ffffffffc020a9f2:	e122                	sd	s0,128(sp)
ffffffffc020a9f4:	fca6                	sd	s1,120(sp)
ffffffffc020a9f6:	f8ca                	sd	s2,112(sp)
ffffffffc020a9f8:	f4ce                	sd	s3,104(sp)
ffffffffc020a9fa:	f0d2                	sd	s4,96(sp)
ffffffffc020a9fc:	ecd6                	sd	s5,88(sp)
ffffffffc020a9fe:	e8da                	sd	s6,80(sp)
ffffffffc020aa00:	e4de                	sd	s7,72(sp)
ffffffffc020aa02:	e0e2                	sd	s8,64(sp)
ffffffffc020aa04:	fc66                	sd	s9,56(sp)
ffffffffc020aa06:	f86a                	sd	s10,48(sp)
ffffffffc020aa08:	f46e                	sd	s11,40(sp)
ffffffffc020aa0a:	e42e                	sd	a1,8(sp)
ffffffffc020aa0c:	4789                	li	a5,2
ffffffffc020aa0e:	1ae7f363          	bgeu	a5,a4,ffffffffc020abb4 <sfs_namefile+0x1c8>
ffffffffc020aa12:	89aa                	mv	s3,a0
ffffffffc020aa14:	10400513          	li	a0,260
ffffffffc020aa18:	d76f70ef          	jal	ra,ffffffffc0201f8e <kmalloc>
ffffffffc020aa1c:	842a                	mv	s0,a0
ffffffffc020aa1e:	18050b63          	beqz	a0,ffffffffc020abb4 <sfs_namefile+0x1c8>
ffffffffc020aa22:	0689b483          	ld	s1,104(s3)
ffffffffc020aa26:	1e048963          	beqz	s1,ffffffffc020ac18 <sfs_namefile+0x22c>
ffffffffc020aa2a:	0b04a783          	lw	a5,176(s1)
ffffffffc020aa2e:	1e079563          	bnez	a5,ffffffffc020ac18 <sfs_namefile+0x22c>
ffffffffc020aa32:	0589ac83          	lw	s9,88(s3)
ffffffffc020aa36:	6785                	lui	a5,0x1
ffffffffc020aa38:	23578793          	addi	a5,a5,565 # 1235 <_binary_bin_swap_img_size-0x6acb>
ffffffffc020aa3c:	1afc9e63          	bne	s9,a5,ffffffffc020abf8 <sfs_namefile+0x20c>
ffffffffc020aa40:	6722                	ld	a4,8(sp)
ffffffffc020aa42:	854e                	mv	a0,s3
ffffffffc020aa44:	8ace                	mv	s5,s3
ffffffffc020aa46:	6f1c                	ld	a5,24(a4)
ffffffffc020aa48:	00073b03          	ld	s6,0(a4)
ffffffffc020aa4c:	02098a13          	addi	s4,s3,32
ffffffffc020aa50:	ffe78b93          	addi	s7,a5,-2
ffffffffc020aa54:	9b3e                	add	s6,s6,a5
ffffffffc020aa56:	00004d17          	auipc	s10,0x4
ffffffffc020aa5a:	7b2d0d13          	addi	s10,s10,1970 # ffffffffc020f208 <dev_node_ops+0x880>
ffffffffc020aa5e:	db5fc0ef          	jal	ra,ffffffffc0207812 <inode_ref_inc>
ffffffffc020aa62:	00440c13          	addi	s8,s0,4
ffffffffc020aa66:	e066                	sd	s9,0(sp)
ffffffffc020aa68:	8552                	mv	a0,s4
ffffffffc020aa6a:	afbf90ef          	jal	ra,ffffffffc0204564 <down>
ffffffffc020aa6e:	0854                	addi	a3,sp,20
ffffffffc020aa70:	866a                	mv	a2,s10
ffffffffc020aa72:	85d6                	mv	a1,s5
ffffffffc020aa74:	8526                	mv	a0,s1
ffffffffc020aa76:	d82ff0ef          	jal	ra,ffffffffc0209ff8 <sfs_dirent_search_nolock.constprop.0>
ffffffffc020aa7a:	8daa                	mv	s11,a0
ffffffffc020aa7c:	8552                	mv	a0,s4
ffffffffc020aa7e:	ae3f90ef          	jal	ra,ffffffffc0204560 <up>
ffffffffc020aa82:	020d8863          	beqz	s11,ffffffffc020aab2 <sfs_namefile+0xc6>
ffffffffc020aa86:	854e                	mv	a0,s3
ffffffffc020aa88:	e59fc0ef          	jal	ra,ffffffffc02078e0 <inode_ref_dec>
ffffffffc020aa8c:	8522                	mv	a0,s0
ffffffffc020aa8e:	db0f70ef          	jal	ra,ffffffffc020203e <kfree>
ffffffffc020aa92:	60aa                	ld	ra,136(sp)
ffffffffc020aa94:	640a                	ld	s0,128(sp)
ffffffffc020aa96:	74e6                	ld	s1,120(sp)
ffffffffc020aa98:	7946                	ld	s2,112(sp)
ffffffffc020aa9a:	79a6                	ld	s3,104(sp)
ffffffffc020aa9c:	7a06                	ld	s4,96(sp)
ffffffffc020aa9e:	6ae6                	ld	s5,88(sp)
ffffffffc020aaa0:	6b46                	ld	s6,80(sp)
ffffffffc020aaa2:	6ba6                	ld	s7,72(sp)
ffffffffc020aaa4:	6c06                	ld	s8,64(sp)
ffffffffc020aaa6:	7ce2                	ld	s9,56(sp)
ffffffffc020aaa8:	7d42                	ld	s10,48(sp)
ffffffffc020aaaa:	856e                	mv	a0,s11
ffffffffc020aaac:	7da2                	ld	s11,40(sp)
ffffffffc020aaae:	6149                	addi	sp,sp,144
ffffffffc020aab0:	8082                	ret
ffffffffc020aab2:	4652                	lw	a2,20(sp)
ffffffffc020aab4:	082c                	addi	a1,sp,24
ffffffffc020aab6:	8526                	mv	a0,s1
ffffffffc020aab8:	bdfff0ef          	jal	ra,ffffffffc020a696 <sfs_load_inode>
ffffffffc020aabc:	8daa                	mv	s11,a0
ffffffffc020aabe:	f561                	bnez	a0,ffffffffc020aa86 <sfs_namefile+0x9a>
ffffffffc020aac0:	854e                	mv	a0,s3
ffffffffc020aac2:	008aa903          	lw	s2,8(s5)
ffffffffc020aac6:	e1bfc0ef          	jal	ra,ffffffffc02078e0 <inode_ref_dec>
ffffffffc020aaca:	6ce2                	ld	s9,24(sp)
ffffffffc020aacc:	0b3c8463          	beq	s9,s3,ffffffffc020ab74 <sfs_namefile+0x188>
ffffffffc020aad0:	100c8463          	beqz	s9,ffffffffc020abd8 <sfs_namefile+0x1ec>
ffffffffc020aad4:	058ca703          	lw	a4,88(s9)
ffffffffc020aad8:	6782                	ld	a5,0(sp)
ffffffffc020aada:	0ef71f63          	bne	a4,a5,ffffffffc020abd8 <sfs_namefile+0x1ec>
ffffffffc020aade:	008ca703          	lw	a4,8(s9)
ffffffffc020aae2:	8ae6                	mv	s5,s9
ffffffffc020aae4:	0d270a63          	beq	a4,s2,ffffffffc020abb8 <sfs_namefile+0x1cc>
ffffffffc020aae8:	000cb703          	ld	a4,0(s9)
ffffffffc020aaec:	4789                	li	a5,2
ffffffffc020aaee:	00475703          	lhu	a4,4(a4)
ffffffffc020aaf2:	0cf71363          	bne	a4,a5,ffffffffc020abb8 <sfs_namefile+0x1cc>
ffffffffc020aaf6:	020c8a13          	addi	s4,s9,32
ffffffffc020aafa:	8552                	mv	a0,s4
ffffffffc020aafc:	a69f90ef          	jal	ra,ffffffffc0204564 <down>
ffffffffc020ab00:	000cb703          	ld	a4,0(s9)
ffffffffc020ab04:	00872983          	lw	s3,8(a4)
ffffffffc020ab08:	01304963          	bgtz	s3,ffffffffc020ab1a <sfs_namefile+0x12e>
ffffffffc020ab0c:	a899                	j	ffffffffc020ab62 <sfs_namefile+0x176>
ffffffffc020ab0e:	4018                	lw	a4,0(s0)
ffffffffc020ab10:	01270e63          	beq	a4,s2,ffffffffc020ab2c <sfs_namefile+0x140>
ffffffffc020ab14:	2d85                	addiw	s11,s11,1
ffffffffc020ab16:	05b98663          	beq	s3,s11,ffffffffc020ab62 <sfs_namefile+0x176>
ffffffffc020ab1a:	86a2                	mv	a3,s0
ffffffffc020ab1c:	866e                	mv	a2,s11
ffffffffc020ab1e:	85e6                	mv	a1,s9
ffffffffc020ab20:	8526                	mv	a0,s1
ffffffffc020ab22:	ad8ff0ef          	jal	ra,ffffffffc0209dfa <sfs_dirent_read_nolock>
ffffffffc020ab26:	872a                	mv	a4,a0
ffffffffc020ab28:	d17d                	beqz	a0,ffffffffc020ab0e <sfs_namefile+0x122>
ffffffffc020ab2a:	a82d                	j	ffffffffc020ab64 <sfs_namefile+0x178>
ffffffffc020ab2c:	8552                	mv	a0,s4
ffffffffc020ab2e:	a33f90ef          	jal	ra,ffffffffc0204560 <up>
ffffffffc020ab32:	8562                	mv	a0,s8
ffffffffc020ab34:	0ff000ef          	jal	ra,ffffffffc020b432 <strlen>
ffffffffc020ab38:	00150793          	addi	a5,a0,1
ffffffffc020ab3c:	862a                	mv	a2,a0
ffffffffc020ab3e:	06fbe863          	bltu	s7,a5,ffffffffc020abae <sfs_namefile+0x1c2>
ffffffffc020ab42:	fff64913          	not	s2,a2
ffffffffc020ab46:	995a                	add	s2,s2,s6
ffffffffc020ab48:	85e2                	mv	a1,s8
ffffffffc020ab4a:	854a                	mv	a0,s2
ffffffffc020ab4c:	40fb8bb3          	sub	s7,s7,a5
ffffffffc020ab50:	1d7000ef          	jal	ra,ffffffffc020b526 <memcpy>
ffffffffc020ab54:	02f00793          	li	a5,47
ffffffffc020ab58:	fefb0fa3          	sb	a5,-1(s6)
ffffffffc020ab5c:	89e6                	mv	s3,s9
ffffffffc020ab5e:	8b4a                	mv	s6,s2
ffffffffc020ab60:	b721                	j	ffffffffc020aa68 <sfs_namefile+0x7c>
ffffffffc020ab62:	5741                	li	a4,-16
ffffffffc020ab64:	8552                	mv	a0,s4
ffffffffc020ab66:	e03a                	sd	a4,0(sp)
ffffffffc020ab68:	9f9f90ef          	jal	ra,ffffffffc0204560 <up>
ffffffffc020ab6c:	6702                	ld	a4,0(sp)
ffffffffc020ab6e:	89e6                	mv	s3,s9
ffffffffc020ab70:	8dba                	mv	s11,a4
ffffffffc020ab72:	bf11                	j	ffffffffc020aa86 <sfs_namefile+0x9a>
ffffffffc020ab74:	854e                	mv	a0,s3
ffffffffc020ab76:	d6bfc0ef          	jal	ra,ffffffffc02078e0 <inode_ref_dec>
ffffffffc020ab7a:	64a2                	ld	s1,8(sp)
ffffffffc020ab7c:	85da                	mv	a1,s6
ffffffffc020ab7e:	6c98                	ld	a4,24(s1)
ffffffffc020ab80:	6088                	ld	a0,0(s1)
ffffffffc020ab82:	1779                	addi	a4,a4,-2
ffffffffc020ab84:	41770bb3          	sub	s7,a4,s7
ffffffffc020ab88:	865e                	mv	a2,s7
ffffffffc020ab8a:	0505                	addi	a0,a0,1
ffffffffc020ab8c:	15b000ef          	jal	ra,ffffffffc020b4e6 <memmove>
ffffffffc020ab90:	02f00713          	li	a4,47
ffffffffc020ab94:	fee50fa3          	sb	a4,-1(a0)
ffffffffc020ab98:	955e                	add	a0,a0,s7
ffffffffc020ab9a:	00050023          	sb	zero,0(a0)
ffffffffc020ab9e:	85de                	mv	a1,s7
ffffffffc020aba0:	8526                	mv	a0,s1
ffffffffc020aba2:	8b7fa0ef          	jal	ra,ffffffffc0205458 <iobuf_skip>
ffffffffc020aba6:	8522                	mv	a0,s0
ffffffffc020aba8:	c96f70ef          	jal	ra,ffffffffc020203e <kfree>
ffffffffc020abac:	b5dd                	j	ffffffffc020aa92 <sfs_namefile+0xa6>
ffffffffc020abae:	89e6                	mv	s3,s9
ffffffffc020abb0:	5df1                	li	s11,-4
ffffffffc020abb2:	bdd1                	j	ffffffffc020aa86 <sfs_namefile+0x9a>
ffffffffc020abb4:	5df1                	li	s11,-4
ffffffffc020abb6:	bdf1                	j	ffffffffc020aa92 <sfs_namefile+0xa6>
ffffffffc020abb8:	00004697          	auipc	a3,0x4
ffffffffc020abbc:	65868693          	addi	a3,a3,1624 # ffffffffc020f210 <dev_node_ops+0x888>
ffffffffc020abc0:	00001617          	auipc	a2,0x1
ffffffffc020abc4:	df860613          	addi	a2,a2,-520 # ffffffffc020b9b8 <commands+0x210>
ffffffffc020abc8:	2f400593          	li	a1,756
ffffffffc020abcc:	00004517          	auipc	a0,0x4
ffffffffc020abd0:	37c50513          	addi	a0,a0,892 # ffffffffc020ef48 <dev_node_ops+0x5c0>
ffffffffc020abd4:	8cbf50ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc020abd8:	00004697          	auipc	a3,0x4
ffffffffc020abdc:	33868693          	addi	a3,a3,824 # ffffffffc020ef10 <dev_node_ops+0x588>
ffffffffc020abe0:	00001617          	auipc	a2,0x1
ffffffffc020abe4:	dd860613          	addi	a2,a2,-552 # ffffffffc020b9b8 <commands+0x210>
ffffffffc020abe8:	2f300593          	li	a1,755
ffffffffc020abec:	00004517          	auipc	a0,0x4
ffffffffc020abf0:	35c50513          	addi	a0,a0,860 # ffffffffc020ef48 <dev_node_ops+0x5c0>
ffffffffc020abf4:	8abf50ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc020abf8:	00004697          	auipc	a3,0x4
ffffffffc020abfc:	31868693          	addi	a3,a3,792 # ffffffffc020ef10 <dev_node_ops+0x588>
ffffffffc020ac00:	00001617          	auipc	a2,0x1
ffffffffc020ac04:	db860613          	addi	a2,a2,-584 # ffffffffc020b9b8 <commands+0x210>
ffffffffc020ac08:	2e000593          	li	a1,736
ffffffffc020ac0c:	00004517          	auipc	a0,0x4
ffffffffc020ac10:	33c50513          	addi	a0,a0,828 # ffffffffc020ef48 <dev_node_ops+0x5c0>
ffffffffc020ac14:	88bf50ef          	jal	ra,ffffffffc020049e <__panic>
ffffffffc020ac18:	00004697          	auipc	a3,0x4
ffffffffc020ac1c:	15068693          	addi	a3,a3,336 # ffffffffc020ed68 <dev_node_ops+0x3e0>
ffffffffc020ac20:	00001617          	auipc	a2,0x1
ffffffffc020ac24:	d9860613          	addi	a2,a2,-616 # ffffffffc020b9b8 <commands+0x210>
ffffffffc020ac28:	2df00593          	li	a1,735
ffffffffc020ac2c:	00004517          	auipc	a0,0x4
ffffffffc020ac30:	31c50513          	addi	a0,a0,796 # ffffffffc020ef48 <dev_node_ops+0x5c0>
ffffffffc020ac34:	86bf50ef          	jal	ra,ffffffffc020049e <__panic>

ffffffffc020ac38 <sfs_rwblock_nolock>:
ffffffffc020ac38:	7139                	addi	sp,sp,-64
ffffffffc020ac3a:	f822                	sd	s0,48(sp)
ffffffffc020ac3c:	f426                	sd	s1,40(sp)
ffffffffc020ac3e:	fc06                	sd	ra,56(sp)
ffffffffc020ac40:	842a                	mv	s0,a0
ffffffffc020ac42:	84b6                	mv	s1,a3
ffffffffc020ac44:	e211                	bnez	a2,ffffffffc020ac48 <sfs_rwblock_nolock+0x10>
ffffffffc020ac46:	e715                	bnez	a4,ffffffffc020ac72 <sfs_rwblock_nolock+0x3a>
ffffffffc020ac48:	405c                	lw	a5,4(s0)
ffffffffc020ac4a:	02f67463          	bgeu	a2,a5,ffffffffc020ac72 <sfs_rwblock_nolock+0x3a>
ffffffffc020ac4e:	00c6169b          	slliw	a3,a2,0xc
ffffffffc020ac52:	1682                	slli	a3,a3,0x20
ffffffffc020ac54:	6605                	lui	a2,0x1
ffffffffc020ac56:	9281                	srli	a3,a3,0x20
ffffffffc020ac58:	850a                	mv	a0,sp
ffffffffc020ac5a:	f88fa0ef          	jal	ra,ffffffffc02053e2 <iobuf_init>
ffffffffc020ac5e:	85aa                	mv	a1,a0
ffffffffc020ac60:	7808                	ld	a0,48(s0)
ffffffffc020ac62:	8626                	mv	a2,s1
ffffffffc020ac64:	7118                	ld	a4,32(a0)
ffffffffc020ac66:	9702                	jalr	a4
ffffffffc020ac68:	70e2                	ld	ra,56(sp)
ffffffffc020ac6a:	7442                	ld	s0,48(sp)
ffffffffc020ac6c:	74a2                	ld	s1,40(sp)
ffffffffc020ac6e:	6121                	addi	sp,sp,64
ffffffffc020ac70:	8082                	ret
ffffffffc020ac72:	00004697          	auipc	a3,0x4
ffffffffc020ac76:	6d668693          	addi	a3,a3,1750 # ffffffffc020f348 <sfs_node_fileops+0x80>
ffffffffc020ac7a:	00001617          	auipc	a2,0x1
ffffffffc020ac7e:	d3e60613          	addi	a2,a2,-706 # ffffffffc020b9b8 <commands+0x210>
ffffffffc020ac82:	45d5                	li	a1,21
ffffffffc020ac84:	00004517          	auipc	a0,0x4
ffffffffc020ac88:	6fc50513          	addi	a0,a0,1788 # ffffffffc020f380 <sfs_node_fileops+0xb8>
ffffffffc020ac8c:	813f50ef          	jal	ra,ffffffffc020049e <__panic>

ffffffffc020ac90 <sfs_rblock>:
ffffffffc020ac90:	7139                	addi	sp,sp,-64
ffffffffc020ac92:	ec4e                	sd	s3,24(sp)
ffffffffc020ac94:	89b6                	mv	s3,a3
ffffffffc020ac96:	f822                	sd	s0,48(sp)
ffffffffc020ac98:	f04a                	sd	s2,32(sp)
ffffffffc020ac9a:	e852                	sd	s4,16(sp)
ffffffffc020ac9c:	fc06                	sd	ra,56(sp)
ffffffffc020ac9e:	f426                	sd	s1,40(sp)
ffffffffc020aca0:	e456                	sd	s5,8(sp)
ffffffffc020aca2:	8a2a                	mv	s4,a0
ffffffffc020aca4:	892e                	mv	s2,a1
ffffffffc020aca6:	8432                	mv	s0,a2
ffffffffc020aca8:	2e0000ef          	jal	ra,ffffffffc020af88 <lock_sfs_io>
ffffffffc020acac:	04098063          	beqz	s3,ffffffffc020acec <sfs_rblock+0x5c>
ffffffffc020acb0:	013409bb          	addw	s3,s0,s3
ffffffffc020acb4:	6a85                	lui	s5,0x1
ffffffffc020acb6:	a021                	j	ffffffffc020acbe <sfs_rblock+0x2e>
ffffffffc020acb8:	9956                	add	s2,s2,s5
ffffffffc020acba:	02898963          	beq	s3,s0,ffffffffc020acec <sfs_rblock+0x5c>
ffffffffc020acbe:	8622                	mv	a2,s0
ffffffffc020acc0:	85ca                	mv	a1,s2
ffffffffc020acc2:	4705                	li	a4,1
ffffffffc020acc4:	4681                	li	a3,0
ffffffffc020acc6:	8552                	mv	a0,s4
ffffffffc020acc8:	f71ff0ef          	jal	ra,ffffffffc020ac38 <sfs_rwblock_nolock>
ffffffffc020accc:	84aa                	mv	s1,a0
ffffffffc020acce:	2405                	addiw	s0,s0,1
ffffffffc020acd0:	d565                	beqz	a0,ffffffffc020acb8 <sfs_rblock+0x28>
ffffffffc020acd2:	8552                	mv	a0,s4
ffffffffc020acd4:	2c4000ef          	jal	ra,ffffffffc020af98 <unlock_sfs_io>
ffffffffc020acd8:	70e2                	ld	ra,56(sp)
ffffffffc020acda:	7442                	ld	s0,48(sp)
ffffffffc020acdc:	7902                	ld	s2,32(sp)
ffffffffc020acde:	69e2                	ld	s3,24(sp)
ffffffffc020ace0:	6a42                	ld	s4,16(sp)
ffffffffc020ace2:	6aa2                	ld	s5,8(sp)
ffffffffc020ace4:	8526                	mv	a0,s1
ffffffffc020ace6:	74a2                	ld	s1,40(sp)
ffffffffc020ace8:	6121                	addi	sp,sp,64
ffffffffc020acea:	8082                	ret
ffffffffc020acec:	4481                	li	s1,0
ffffffffc020acee:	b7d5                	j	ffffffffc020acd2 <sfs_rblock+0x42>

ffffffffc020acf0 <sfs_wblock>:
ffffffffc020acf0:	7139                	addi	sp,sp,-64
ffffffffc020acf2:	ec4e                	sd	s3,24(sp)
ffffffffc020acf4:	89b6                	mv	s3,a3
ffffffffc020acf6:	f822                	sd	s0,48(sp)
ffffffffc020acf8:	f04a                	sd	s2,32(sp)
ffffffffc020acfa:	e852                	sd	s4,16(sp)
ffffffffc020acfc:	fc06                	sd	ra,56(sp)
ffffffffc020acfe:	f426                	sd	s1,40(sp)
ffffffffc020ad00:	e456                	sd	s5,8(sp)
ffffffffc020ad02:	8a2a                	mv	s4,a0
ffffffffc020ad04:	892e                	mv	s2,a1
ffffffffc020ad06:	8432                	mv	s0,a2
ffffffffc020ad08:	280000ef          	jal	ra,ffffffffc020af88 <lock_sfs_io>
ffffffffc020ad0c:	04098063          	beqz	s3,ffffffffc020ad4c <sfs_wblock+0x5c>
ffffffffc020ad10:	013409bb          	addw	s3,s0,s3
ffffffffc020ad14:	6a85                	lui	s5,0x1
ffffffffc020ad16:	a021                	j	ffffffffc020ad1e <sfs_wblock+0x2e>
ffffffffc020ad18:	9956                	add	s2,s2,s5
ffffffffc020ad1a:	02898963          	beq	s3,s0,ffffffffc020ad4c <sfs_wblock+0x5c>
ffffffffc020ad1e:	8622                	mv	a2,s0
ffffffffc020ad20:	85ca                	mv	a1,s2
ffffffffc020ad22:	4705                	li	a4,1
ffffffffc020ad24:	4685                	li	a3,1
ffffffffc020ad26:	8552                	mv	a0,s4
ffffffffc020ad28:	f11ff0ef          	jal	ra,ffffffffc020ac38 <sfs_rwblock_nolock>
ffffffffc020ad2c:	84aa                	mv	s1,a0
ffffffffc020ad2e:	2405                	addiw	s0,s0,1
ffffffffc020ad30:	d565                	beqz	a0,ffffffffc020ad18 <sfs_wblock+0x28>
ffffffffc020ad32:	8552                	mv	a0,s4
ffffffffc020ad34:	264000ef          	jal	ra,ffffffffc020af98 <unlock_sfs_io>
ffffffffc020ad38:	70e2                	ld	ra,56(sp)
ffffffffc020ad3a:	7442                	ld	s0,48(sp)
ffffffffc020ad3c:	7902                	ld	s2,32(sp)
ffffffffc020ad3e:	69e2                	ld	s3,24(sp)
ffffffffc020ad40:	6a42                	ld	s4,16(sp)
ffffffffc020ad42:	6aa2                	ld	s5,8(sp)
ffffffffc020ad44:	8526                	mv	a0,s1
ffffffffc020ad46:	74a2                	ld	s1,40(sp)
ffffffffc020ad48:	6121                	addi	sp,sp,64
ffffffffc020ad4a:	8082                	ret
ffffffffc020ad4c:	4481                	li	s1,0
ffffffffc020ad4e:	b7d5                	j	ffffffffc020ad32 <sfs_wblock+0x42>

ffffffffc020ad50 <sfs_rbuf>:
ffffffffc020ad50:	7179                	addi	sp,sp,-48
ffffffffc020ad52:	f406                	sd	ra,40(sp)
ffffffffc020ad54:	f022                	sd	s0,32(sp)
ffffffffc020ad56:	ec26                	sd	s1,24(sp)
ffffffffc020ad58:	e84a                	sd	s2,16(sp)
ffffffffc020ad5a:	e44e                	sd	s3,8(sp)
ffffffffc020ad5c:	e052                	sd	s4,0(sp)
ffffffffc020ad5e:	6785                	lui	a5,0x1
ffffffffc020ad60:	04f77863          	bgeu	a4,a5,ffffffffc020adb0 <sfs_rbuf+0x60>
ffffffffc020ad64:	84ba                	mv	s1,a4
ffffffffc020ad66:	9732                	add	a4,a4,a2
ffffffffc020ad68:	89b2                	mv	s3,a2
ffffffffc020ad6a:	04e7e363          	bltu	a5,a4,ffffffffc020adb0 <sfs_rbuf+0x60>
ffffffffc020ad6e:	8936                	mv	s2,a3
ffffffffc020ad70:	842a                	mv	s0,a0
ffffffffc020ad72:	8a2e                	mv	s4,a1
ffffffffc020ad74:	214000ef          	jal	ra,ffffffffc020af88 <lock_sfs_io>
ffffffffc020ad78:	642c                	ld	a1,72(s0)
ffffffffc020ad7a:	864a                	mv	a2,s2
ffffffffc020ad7c:	4705                	li	a4,1
ffffffffc020ad7e:	4681                	li	a3,0
ffffffffc020ad80:	8522                	mv	a0,s0
ffffffffc020ad82:	eb7ff0ef          	jal	ra,ffffffffc020ac38 <sfs_rwblock_nolock>
ffffffffc020ad86:	892a                	mv	s2,a0
ffffffffc020ad88:	cd09                	beqz	a0,ffffffffc020ada2 <sfs_rbuf+0x52>
ffffffffc020ad8a:	8522                	mv	a0,s0
ffffffffc020ad8c:	20c000ef          	jal	ra,ffffffffc020af98 <unlock_sfs_io>
ffffffffc020ad90:	70a2                	ld	ra,40(sp)
ffffffffc020ad92:	7402                	ld	s0,32(sp)
ffffffffc020ad94:	64e2                	ld	s1,24(sp)
ffffffffc020ad96:	69a2                	ld	s3,8(sp)
ffffffffc020ad98:	6a02                	ld	s4,0(sp)
ffffffffc020ad9a:	854a                	mv	a0,s2
ffffffffc020ad9c:	6942                	ld	s2,16(sp)
ffffffffc020ad9e:	6145                	addi	sp,sp,48
ffffffffc020ada0:	8082                	ret
ffffffffc020ada2:	642c                	ld	a1,72(s0)
ffffffffc020ada4:	864e                	mv	a2,s3
ffffffffc020ada6:	8552                	mv	a0,s4
ffffffffc020ada8:	95a6                	add	a1,a1,s1
ffffffffc020adaa:	77c000ef          	jal	ra,ffffffffc020b526 <memcpy>
ffffffffc020adae:	bff1                	j	ffffffffc020ad8a <sfs_rbuf+0x3a>
ffffffffc020adb0:	00004697          	auipc	a3,0x4
ffffffffc020adb4:	5e868693          	addi	a3,a3,1512 # ffffffffc020f398 <sfs_node_fileops+0xd0>
ffffffffc020adb8:	00001617          	auipc	a2,0x1
ffffffffc020adbc:	c0060613          	addi	a2,a2,-1024 # ffffffffc020b9b8 <commands+0x210>
ffffffffc020adc0:	05500593          	li	a1,85
ffffffffc020adc4:	00004517          	auipc	a0,0x4
ffffffffc020adc8:	5bc50513          	addi	a0,a0,1468 # ffffffffc020f380 <sfs_node_fileops+0xb8>
ffffffffc020adcc:	ed2f50ef          	jal	ra,ffffffffc020049e <__panic>

ffffffffc020add0 <sfs_wbuf>:
ffffffffc020add0:	7139                	addi	sp,sp,-64
ffffffffc020add2:	fc06                	sd	ra,56(sp)
ffffffffc020add4:	f822                	sd	s0,48(sp)
ffffffffc020add6:	f426                	sd	s1,40(sp)
ffffffffc020add8:	f04a                	sd	s2,32(sp)
ffffffffc020adda:	ec4e                	sd	s3,24(sp)
ffffffffc020addc:	e852                	sd	s4,16(sp)
ffffffffc020adde:	e456                	sd	s5,8(sp)
ffffffffc020ade0:	6785                	lui	a5,0x1
ffffffffc020ade2:	06f77163          	bgeu	a4,a5,ffffffffc020ae44 <sfs_wbuf+0x74>
ffffffffc020ade6:	893a                	mv	s2,a4
ffffffffc020ade8:	9732                	add	a4,a4,a2
ffffffffc020adea:	8a32                	mv	s4,a2
ffffffffc020adec:	04e7ec63          	bltu	a5,a4,ffffffffc020ae44 <sfs_wbuf+0x74>
ffffffffc020adf0:	842a                	mv	s0,a0
ffffffffc020adf2:	89b6                	mv	s3,a3
ffffffffc020adf4:	8aae                	mv	s5,a1
ffffffffc020adf6:	192000ef          	jal	ra,ffffffffc020af88 <lock_sfs_io>
ffffffffc020adfa:	642c                	ld	a1,72(s0)
ffffffffc020adfc:	4705                	li	a4,1
ffffffffc020adfe:	4681                	li	a3,0
ffffffffc020ae00:	864e                	mv	a2,s3
ffffffffc020ae02:	8522                	mv	a0,s0
ffffffffc020ae04:	e35ff0ef          	jal	ra,ffffffffc020ac38 <sfs_rwblock_nolock>
ffffffffc020ae08:	84aa                	mv	s1,a0
ffffffffc020ae0a:	cd11                	beqz	a0,ffffffffc020ae26 <sfs_wbuf+0x56>
ffffffffc020ae0c:	8522                	mv	a0,s0
ffffffffc020ae0e:	18a000ef          	jal	ra,ffffffffc020af98 <unlock_sfs_io>
ffffffffc020ae12:	70e2                	ld	ra,56(sp)
ffffffffc020ae14:	7442                	ld	s0,48(sp)
ffffffffc020ae16:	7902                	ld	s2,32(sp)
ffffffffc020ae18:	69e2                	ld	s3,24(sp)
ffffffffc020ae1a:	6a42                	ld	s4,16(sp)
ffffffffc020ae1c:	6aa2                	ld	s5,8(sp)
ffffffffc020ae1e:	8526                	mv	a0,s1
ffffffffc020ae20:	74a2                	ld	s1,40(sp)
ffffffffc020ae22:	6121                	addi	sp,sp,64
ffffffffc020ae24:	8082                	ret
ffffffffc020ae26:	6428                	ld	a0,72(s0)
ffffffffc020ae28:	8652                	mv	a2,s4
ffffffffc020ae2a:	85d6                	mv	a1,s5
ffffffffc020ae2c:	954a                	add	a0,a0,s2
ffffffffc020ae2e:	6f8000ef          	jal	ra,ffffffffc020b526 <memcpy>
ffffffffc020ae32:	642c                	ld	a1,72(s0)
ffffffffc020ae34:	4705                	li	a4,1
ffffffffc020ae36:	4685                	li	a3,1
ffffffffc020ae38:	864e                	mv	a2,s3
ffffffffc020ae3a:	8522                	mv	a0,s0
ffffffffc020ae3c:	dfdff0ef          	jal	ra,ffffffffc020ac38 <sfs_rwblock_nolock>
ffffffffc020ae40:	84aa                	mv	s1,a0
ffffffffc020ae42:	b7e9                	j	ffffffffc020ae0c <sfs_wbuf+0x3c>
ffffffffc020ae44:	00004697          	auipc	a3,0x4
ffffffffc020ae48:	55468693          	addi	a3,a3,1364 # ffffffffc020f398 <sfs_node_fileops+0xd0>
ffffffffc020ae4c:	00001617          	auipc	a2,0x1
ffffffffc020ae50:	b6c60613          	addi	a2,a2,-1172 # ffffffffc020b9b8 <commands+0x210>
ffffffffc020ae54:	06b00593          	li	a1,107
ffffffffc020ae58:	00004517          	auipc	a0,0x4
ffffffffc020ae5c:	52850513          	addi	a0,a0,1320 # ffffffffc020f380 <sfs_node_fileops+0xb8>
ffffffffc020ae60:	e3ef50ef          	jal	ra,ffffffffc020049e <__panic>

ffffffffc020ae64 <sfs_sync_super>:
ffffffffc020ae64:	1101                	addi	sp,sp,-32
ffffffffc020ae66:	ec06                	sd	ra,24(sp)
ffffffffc020ae68:	e822                	sd	s0,16(sp)
ffffffffc020ae6a:	e426                	sd	s1,8(sp)
ffffffffc020ae6c:	842a                	mv	s0,a0
ffffffffc020ae6e:	11a000ef          	jal	ra,ffffffffc020af88 <lock_sfs_io>
ffffffffc020ae72:	6428                	ld	a0,72(s0)
ffffffffc020ae74:	6605                	lui	a2,0x1
ffffffffc020ae76:	4581                	li	a1,0
ffffffffc020ae78:	65c000ef          	jal	ra,ffffffffc020b4d4 <memset>
ffffffffc020ae7c:	6428                	ld	a0,72(s0)
ffffffffc020ae7e:	85a2                	mv	a1,s0
ffffffffc020ae80:	02c00613          	li	a2,44
ffffffffc020ae84:	6a2000ef          	jal	ra,ffffffffc020b526 <memcpy>
ffffffffc020ae88:	642c                	ld	a1,72(s0)
ffffffffc020ae8a:	4701                	li	a4,0
ffffffffc020ae8c:	4685                	li	a3,1
ffffffffc020ae8e:	4601                	li	a2,0
ffffffffc020ae90:	8522                	mv	a0,s0
ffffffffc020ae92:	da7ff0ef          	jal	ra,ffffffffc020ac38 <sfs_rwblock_nolock>
ffffffffc020ae96:	84aa                	mv	s1,a0
ffffffffc020ae98:	8522                	mv	a0,s0
ffffffffc020ae9a:	0fe000ef          	jal	ra,ffffffffc020af98 <unlock_sfs_io>
ffffffffc020ae9e:	60e2                	ld	ra,24(sp)
ffffffffc020aea0:	6442                	ld	s0,16(sp)
ffffffffc020aea2:	8526                	mv	a0,s1
ffffffffc020aea4:	64a2                	ld	s1,8(sp)
ffffffffc020aea6:	6105                	addi	sp,sp,32
ffffffffc020aea8:	8082                	ret

ffffffffc020aeaa <sfs_sync_freemap>:
ffffffffc020aeaa:	7139                	addi	sp,sp,-64
ffffffffc020aeac:	ec4e                	sd	s3,24(sp)
ffffffffc020aeae:	e852                	sd	s4,16(sp)
ffffffffc020aeb0:	00456983          	lwu	s3,4(a0)
ffffffffc020aeb4:	8a2a                	mv	s4,a0
ffffffffc020aeb6:	7d08                	ld	a0,56(a0)
ffffffffc020aeb8:	67a1                	lui	a5,0x8
ffffffffc020aeba:	17fd                	addi	a5,a5,-1
ffffffffc020aebc:	4581                	li	a1,0
ffffffffc020aebe:	f822                	sd	s0,48(sp)
ffffffffc020aec0:	fc06                	sd	ra,56(sp)
ffffffffc020aec2:	f426                	sd	s1,40(sp)
ffffffffc020aec4:	f04a                	sd	s2,32(sp)
ffffffffc020aec6:	e456                	sd	s5,8(sp)
ffffffffc020aec8:	99be                	add	s3,s3,a5
ffffffffc020aeca:	9a4fe0ef          	jal	ra,ffffffffc020906e <bitmap_getdata>
ffffffffc020aece:	00f9d993          	srli	s3,s3,0xf
ffffffffc020aed2:	842a                	mv	s0,a0
ffffffffc020aed4:	8552                	mv	a0,s4
ffffffffc020aed6:	0b2000ef          	jal	ra,ffffffffc020af88 <lock_sfs_io>
ffffffffc020aeda:	04098163          	beqz	s3,ffffffffc020af1c <sfs_sync_freemap+0x72>
ffffffffc020aede:	09b2                	slli	s3,s3,0xc
ffffffffc020aee0:	99a2                	add	s3,s3,s0
ffffffffc020aee2:	4909                	li	s2,2
ffffffffc020aee4:	6a85                	lui	s5,0x1
ffffffffc020aee6:	a021                	j	ffffffffc020aeee <sfs_sync_freemap+0x44>
ffffffffc020aee8:	2905                	addiw	s2,s2,1
ffffffffc020aeea:	02898963          	beq	s3,s0,ffffffffc020af1c <sfs_sync_freemap+0x72>
ffffffffc020aeee:	85a2                	mv	a1,s0
ffffffffc020aef0:	864a                	mv	a2,s2
ffffffffc020aef2:	4705                	li	a4,1
ffffffffc020aef4:	4685                	li	a3,1
ffffffffc020aef6:	8552                	mv	a0,s4
ffffffffc020aef8:	d41ff0ef          	jal	ra,ffffffffc020ac38 <sfs_rwblock_nolock>
ffffffffc020aefc:	84aa                	mv	s1,a0
ffffffffc020aefe:	9456                	add	s0,s0,s5
ffffffffc020af00:	d565                	beqz	a0,ffffffffc020aee8 <sfs_sync_freemap+0x3e>
ffffffffc020af02:	8552                	mv	a0,s4
ffffffffc020af04:	094000ef          	jal	ra,ffffffffc020af98 <unlock_sfs_io>
ffffffffc020af08:	70e2                	ld	ra,56(sp)
ffffffffc020af0a:	7442                	ld	s0,48(sp)
ffffffffc020af0c:	7902                	ld	s2,32(sp)
ffffffffc020af0e:	69e2                	ld	s3,24(sp)
ffffffffc020af10:	6a42                	ld	s4,16(sp)
ffffffffc020af12:	6aa2                	ld	s5,8(sp)
ffffffffc020af14:	8526                	mv	a0,s1
ffffffffc020af16:	74a2                	ld	s1,40(sp)
ffffffffc020af18:	6121                	addi	sp,sp,64
ffffffffc020af1a:	8082                	ret
ffffffffc020af1c:	4481                	li	s1,0
ffffffffc020af1e:	b7d5                	j	ffffffffc020af02 <sfs_sync_freemap+0x58>

ffffffffc020af20 <sfs_clear_block>:
ffffffffc020af20:	7179                	addi	sp,sp,-48
ffffffffc020af22:	f022                	sd	s0,32(sp)
ffffffffc020af24:	e84a                	sd	s2,16(sp)
ffffffffc020af26:	e44e                	sd	s3,8(sp)
ffffffffc020af28:	f406                	sd	ra,40(sp)
ffffffffc020af2a:	89b2                	mv	s3,a2
ffffffffc020af2c:	ec26                	sd	s1,24(sp)
ffffffffc020af2e:	892a                	mv	s2,a0
ffffffffc020af30:	842e                	mv	s0,a1
ffffffffc020af32:	056000ef          	jal	ra,ffffffffc020af88 <lock_sfs_io>
ffffffffc020af36:	04893503          	ld	a0,72(s2)
ffffffffc020af3a:	6605                	lui	a2,0x1
ffffffffc020af3c:	4581                	li	a1,0
ffffffffc020af3e:	596000ef          	jal	ra,ffffffffc020b4d4 <memset>
ffffffffc020af42:	02098d63          	beqz	s3,ffffffffc020af7c <sfs_clear_block+0x5c>
ffffffffc020af46:	013409bb          	addw	s3,s0,s3
ffffffffc020af4a:	a019                	j	ffffffffc020af50 <sfs_clear_block+0x30>
ffffffffc020af4c:	02898863          	beq	s3,s0,ffffffffc020af7c <sfs_clear_block+0x5c>
ffffffffc020af50:	04893583          	ld	a1,72(s2)
ffffffffc020af54:	8622                	mv	a2,s0
ffffffffc020af56:	4705                	li	a4,1
ffffffffc020af58:	4685                	li	a3,1
ffffffffc020af5a:	854a                	mv	a0,s2
ffffffffc020af5c:	cddff0ef          	jal	ra,ffffffffc020ac38 <sfs_rwblock_nolock>
ffffffffc020af60:	84aa                	mv	s1,a0
ffffffffc020af62:	2405                	addiw	s0,s0,1
ffffffffc020af64:	d565                	beqz	a0,ffffffffc020af4c <sfs_clear_block+0x2c>
ffffffffc020af66:	854a                	mv	a0,s2
ffffffffc020af68:	030000ef          	jal	ra,ffffffffc020af98 <unlock_sfs_io>
ffffffffc020af6c:	70a2                	ld	ra,40(sp)
ffffffffc020af6e:	7402                	ld	s0,32(sp)
ffffffffc020af70:	6942                	ld	s2,16(sp)
ffffffffc020af72:	69a2                	ld	s3,8(sp)
ffffffffc020af74:	8526                	mv	a0,s1
ffffffffc020af76:	64e2                	ld	s1,24(sp)
ffffffffc020af78:	6145                	addi	sp,sp,48
ffffffffc020af7a:	8082                	ret
ffffffffc020af7c:	4481                	li	s1,0
ffffffffc020af7e:	b7e5                	j	ffffffffc020af66 <sfs_clear_block+0x46>

ffffffffc020af80 <lock_sfs_fs>:
ffffffffc020af80:	05050513          	addi	a0,a0,80
ffffffffc020af84:	de0f906f          	j	ffffffffc0204564 <down>

ffffffffc020af88 <lock_sfs_io>:
ffffffffc020af88:	06850513          	addi	a0,a0,104
ffffffffc020af8c:	dd8f906f          	j	ffffffffc0204564 <down>

ffffffffc020af90 <unlock_sfs_fs>:
ffffffffc020af90:	05050513          	addi	a0,a0,80
ffffffffc020af94:	dccf906f          	j	ffffffffc0204560 <up>

ffffffffc020af98 <unlock_sfs_io>:
ffffffffc020af98:	06850513          	addi	a0,a0,104
ffffffffc020af9c:	dc4f906f          	j	ffffffffc0204560 <up>

ffffffffc020afa0 <hash32>:
ffffffffc020afa0:	9e3707b7          	lui	a5,0x9e370
ffffffffc020afa4:	2785                	addiw	a5,a5,1
ffffffffc020afa6:	02a7853b          	mulw	a0,a5,a0
ffffffffc020afaa:	02000793          	li	a5,32
ffffffffc020afae:	9f8d                	subw	a5,a5,a1
ffffffffc020afb0:	00f5553b          	srlw	a0,a0,a5
ffffffffc020afb4:	8082                	ret

ffffffffc020afb6 <printnum>:
ffffffffc020afb6:	02071893          	slli	a7,a4,0x20
ffffffffc020afba:	7139                	addi	sp,sp,-64
ffffffffc020afbc:	0208d893          	srli	a7,a7,0x20
ffffffffc020afc0:	e456                	sd	s5,8(sp)
ffffffffc020afc2:	0316fab3          	remu	s5,a3,a7
ffffffffc020afc6:	f822                	sd	s0,48(sp)
ffffffffc020afc8:	f426                	sd	s1,40(sp)
ffffffffc020afca:	f04a                	sd	s2,32(sp)
ffffffffc020afcc:	ec4e                	sd	s3,24(sp)
ffffffffc020afce:	fc06                	sd	ra,56(sp)
ffffffffc020afd0:	e852                	sd	s4,16(sp)
ffffffffc020afd2:	84aa                	mv	s1,a0
ffffffffc020afd4:	89ae                	mv	s3,a1
ffffffffc020afd6:	8932                	mv	s2,a2
ffffffffc020afd8:	fff7841b          	addiw	s0,a5,-1
ffffffffc020afdc:	2a81                	sext.w	s5,s5
ffffffffc020afde:	0516f163          	bgeu	a3,a7,ffffffffc020b020 <printnum+0x6a>
ffffffffc020afe2:	8a42                	mv	s4,a6
ffffffffc020afe4:	00805863          	blez	s0,ffffffffc020aff4 <printnum+0x3e>
ffffffffc020afe8:	347d                	addiw	s0,s0,-1
ffffffffc020afea:	864e                	mv	a2,s3
ffffffffc020afec:	85ca                	mv	a1,s2
ffffffffc020afee:	8552                	mv	a0,s4
ffffffffc020aff0:	9482                	jalr	s1
ffffffffc020aff2:	f87d                	bnez	s0,ffffffffc020afe8 <printnum+0x32>
ffffffffc020aff4:	1a82                	slli	s5,s5,0x20
ffffffffc020aff6:	00004797          	auipc	a5,0x4
ffffffffc020affa:	3ea78793          	addi	a5,a5,1002 # ffffffffc020f3e0 <sfs_node_fileops+0x118>
ffffffffc020affe:	020ada93          	srli	s5,s5,0x20
ffffffffc020b002:	9abe                	add	s5,s5,a5
ffffffffc020b004:	7442                	ld	s0,48(sp)
ffffffffc020b006:	000ac503          	lbu	a0,0(s5) # 1000 <_binary_bin_swap_img_size-0x6d00>
ffffffffc020b00a:	70e2                	ld	ra,56(sp)
ffffffffc020b00c:	6a42                	ld	s4,16(sp)
ffffffffc020b00e:	6aa2                	ld	s5,8(sp)
ffffffffc020b010:	864e                	mv	a2,s3
ffffffffc020b012:	85ca                	mv	a1,s2
ffffffffc020b014:	69e2                	ld	s3,24(sp)
ffffffffc020b016:	7902                	ld	s2,32(sp)
ffffffffc020b018:	87a6                	mv	a5,s1
ffffffffc020b01a:	74a2                	ld	s1,40(sp)
ffffffffc020b01c:	6121                	addi	sp,sp,64
ffffffffc020b01e:	8782                	jr	a5
ffffffffc020b020:	0316d6b3          	divu	a3,a3,a7
ffffffffc020b024:	87a2                	mv	a5,s0
ffffffffc020b026:	f91ff0ef          	jal	ra,ffffffffc020afb6 <printnum>
ffffffffc020b02a:	b7e9                	j	ffffffffc020aff4 <printnum+0x3e>

ffffffffc020b02c <sprintputch>:
ffffffffc020b02c:	499c                	lw	a5,16(a1)
ffffffffc020b02e:	6198                	ld	a4,0(a1)
ffffffffc020b030:	6594                	ld	a3,8(a1)
ffffffffc020b032:	2785                	addiw	a5,a5,1
ffffffffc020b034:	c99c                	sw	a5,16(a1)
ffffffffc020b036:	00d77763          	bgeu	a4,a3,ffffffffc020b044 <sprintputch+0x18>
ffffffffc020b03a:	00170793          	addi	a5,a4,1
ffffffffc020b03e:	e19c                	sd	a5,0(a1)
ffffffffc020b040:	00a70023          	sb	a0,0(a4)
ffffffffc020b044:	8082                	ret

ffffffffc020b046 <vprintfmt>:
ffffffffc020b046:	7119                	addi	sp,sp,-128
ffffffffc020b048:	f4a6                	sd	s1,104(sp)
ffffffffc020b04a:	f0ca                	sd	s2,96(sp)
ffffffffc020b04c:	ecce                	sd	s3,88(sp)
ffffffffc020b04e:	e8d2                	sd	s4,80(sp)
ffffffffc020b050:	e4d6                	sd	s5,72(sp)
ffffffffc020b052:	e0da                	sd	s6,64(sp)
ffffffffc020b054:	fc5e                	sd	s7,56(sp)
ffffffffc020b056:	ec6e                	sd	s11,24(sp)
ffffffffc020b058:	fc86                	sd	ra,120(sp)
ffffffffc020b05a:	f8a2                	sd	s0,112(sp)
ffffffffc020b05c:	f862                	sd	s8,48(sp)
ffffffffc020b05e:	f466                	sd	s9,40(sp)
ffffffffc020b060:	f06a                	sd	s10,32(sp)
ffffffffc020b062:	89aa                	mv	s3,a0
ffffffffc020b064:	892e                	mv	s2,a1
ffffffffc020b066:	84b2                	mv	s1,a2
ffffffffc020b068:	8db6                	mv	s11,a3
ffffffffc020b06a:	8aba                	mv	s5,a4
ffffffffc020b06c:	02500a13          	li	s4,37
ffffffffc020b070:	5bfd                	li	s7,-1
ffffffffc020b072:	00004b17          	auipc	s6,0x4
ffffffffc020b076:	39ab0b13          	addi	s6,s6,922 # ffffffffc020f40c <sfs_node_fileops+0x144>
ffffffffc020b07a:	000dc503          	lbu	a0,0(s11) # 2000 <_binary_bin_swap_img_size-0x5d00>
ffffffffc020b07e:	001d8413          	addi	s0,s11,1
ffffffffc020b082:	01450b63          	beq	a0,s4,ffffffffc020b098 <vprintfmt+0x52>
ffffffffc020b086:	c129                	beqz	a0,ffffffffc020b0c8 <vprintfmt+0x82>
ffffffffc020b088:	864a                	mv	a2,s2
ffffffffc020b08a:	85a6                	mv	a1,s1
ffffffffc020b08c:	0405                	addi	s0,s0,1
ffffffffc020b08e:	9982                	jalr	s3
ffffffffc020b090:	fff44503          	lbu	a0,-1(s0)
ffffffffc020b094:	ff4519e3          	bne	a0,s4,ffffffffc020b086 <vprintfmt+0x40>
ffffffffc020b098:	00044583          	lbu	a1,0(s0)
ffffffffc020b09c:	02000813          	li	a6,32
ffffffffc020b0a0:	4d01                	li	s10,0
ffffffffc020b0a2:	4301                	li	t1,0
ffffffffc020b0a4:	5cfd                	li	s9,-1
ffffffffc020b0a6:	5c7d                	li	s8,-1
ffffffffc020b0a8:	05500513          	li	a0,85
ffffffffc020b0ac:	48a5                	li	a7,9
ffffffffc020b0ae:	fdd5861b          	addiw	a2,a1,-35
ffffffffc020b0b2:	0ff67613          	zext.b	a2,a2
ffffffffc020b0b6:	00140d93          	addi	s11,s0,1
ffffffffc020b0ba:	04c56263          	bltu	a0,a2,ffffffffc020b0fe <vprintfmt+0xb8>
ffffffffc020b0be:	060a                	slli	a2,a2,0x2
ffffffffc020b0c0:	965a                	add	a2,a2,s6
ffffffffc020b0c2:	4214                	lw	a3,0(a2)
ffffffffc020b0c4:	96da                	add	a3,a3,s6
ffffffffc020b0c6:	8682                	jr	a3
ffffffffc020b0c8:	70e6                	ld	ra,120(sp)
ffffffffc020b0ca:	7446                	ld	s0,112(sp)
ffffffffc020b0cc:	74a6                	ld	s1,104(sp)
ffffffffc020b0ce:	7906                	ld	s2,96(sp)
ffffffffc020b0d0:	69e6                	ld	s3,88(sp)
ffffffffc020b0d2:	6a46                	ld	s4,80(sp)
ffffffffc020b0d4:	6aa6                	ld	s5,72(sp)
ffffffffc020b0d6:	6b06                	ld	s6,64(sp)
ffffffffc020b0d8:	7be2                	ld	s7,56(sp)
ffffffffc020b0da:	7c42                	ld	s8,48(sp)
ffffffffc020b0dc:	7ca2                	ld	s9,40(sp)
ffffffffc020b0de:	7d02                	ld	s10,32(sp)
ffffffffc020b0e0:	6de2                	ld	s11,24(sp)
ffffffffc020b0e2:	6109                	addi	sp,sp,128
ffffffffc020b0e4:	8082                	ret
ffffffffc020b0e6:	882e                	mv	a6,a1
ffffffffc020b0e8:	00144583          	lbu	a1,1(s0)
ffffffffc020b0ec:	846e                	mv	s0,s11
ffffffffc020b0ee:	00140d93          	addi	s11,s0,1
ffffffffc020b0f2:	fdd5861b          	addiw	a2,a1,-35
ffffffffc020b0f6:	0ff67613          	zext.b	a2,a2
ffffffffc020b0fa:	fcc572e3          	bgeu	a0,a2,ffffffffc020b0be <vprintfmt+0x78>
ffffffffc020b0fe:	864a                	mv	a2,s2
ffffffffc020b100:	85a6                	mv	a1,s1
ffffffffc020b102:	02500513          	li	a0,37
ffffffffc020b106:	9982                	jalr	s3
ffffffffc020b108:	fff44783          	lbu	a5,-1(s0)
ffffffffc020b10c:	8da2                	mv	s11,s0
ffffffffc020b10e:	f74786e3          	beq	a5,s4,ffffffffc020b07a <vprintfmt+0x34>
ffffffffc020b112:	ffedc783          	lbu	a5,-2(s11)
ffffffffc020b116:	1dfd                	addi	s11,s11,-1
ffffffffc020b118:	ff479de3          	bne	a5,s4,ffffffffc020b112 <vprintfmt+0xcc>
ffffffffc020b11c:	bfb9                	j	ffffffffc020b07a <vprintfmt+0x34>
ffffffffc020b11e:	fd058c9b          	addiw	s9,a1,-48
ffffffffc020b122:	00144583          	lbu	a1,1(s0)
ffffffffc020b126:	846e                	mv	s0,s11
ffffffffc020b128:	fd05869b          	addiw	a3,a1,-48
ffffffffc020b12c:	0005861b          	sext.w	a2,a1
ffffffffc020b130:	02d8e463          	bltu	a7,a3,ffffffffc020b158 <vprintfmt+0x112>
ffffffffc020b134:	00144583          	lbu	a1,1(s0)
ffffffffc020b138:	002c969b          	slliw	a3,s9,0x2
ffffffffc020b13c:	0196873b          	addw	a4,a3,s9
ffffffffc020b140:	0017171b          	slliw	a4,a4,0x1
ffffffffc020b144:	9f31                	addw	a4,a4,a2
ffffffffc020b146:	fd05869b          	addiw	a3,a1,-48
ffffffffc020b14a:	0405                	addi	s0,s0,1
ffffffffc020b14c:	fd070c9b          	addiw	s9,a4,-48
ffffffffc020b150:	0005861b          	sext.w	a2,a1
ffffffffc020b154:	fed8f0e3          	bgeu	a7,a3,ffffffffc020b134 <vprintfmt+0xee>
ffffffffc020b158:	f40c5be3          	bgez	s8,ffffffffc020b0ae <vprintfmt+0x68>
ffffffffc020b15c:	8c66                	mv	s8,s9
ffffffffc020b15e:	5cfd                	li	s9,-1
ffffffffc020b160:	b7b9                	j	ffffffffc020b0ae <vprintfmt+0x68>
ffffffffc020b162:	fffc4693          	not	a3,s8
ffffffffc020b166:	96fd                	srai	a3,a3,0x3f
ffffffffc020b168:	00dc77b3          	and	a5,s8,a3
ffffffffc020b16c:	00144583          	lbu	a1,1(s0)
ffffffffc020b170:	00078c1b          	sext.w	s8,a5
ffffffffc020b174:	846e                	mv	s0,s11
ffffffffc020b176:	bf25                	j	ffffffffc020b0ae <vprintfmt+0x68>
ffffffffc020b178:	000aac83          	lw	s9,0(s5)
ffffffffc020b17c:	00144583          	lbu	a1,1(s0)
ffffffffc020b180:	0aa1                	addi	s5,s5,8
ffffffffc020b182:	846e                	mv	s0,s11
ffffffffc020b184:	bfd1                	j	ffffffffc020b158 <vprintfmt+0x112>
ffffffffc020b186:	4705                	li	a4,1
ffffffffc020b188:	008a8613          	addi	a2,s5,8
ffffffffc020b18c:	00674463          	blt	a4,t1,ffffffffc020b194 <vprintfmt+0x14e>
ffffffffc020b190:	1c030c63          	beqz	t1,ffffffffc020b368 <vprintfmt+0x322>
ffffffffc020b194:	000ab683          	ld	a3,0(s5)
ffffffffc020b198:	4741                	li	a4,16
ffffffffc020b19a:	8ab2                	mv	s5,a2
ffffffffc020b19c:	2801                	sext.w	a6,a6
ffffffffc020b19e:	87e2                	mv	a5,s8
ffffffffc020b1a0:	8626                	mv	a2,s1
ffffffffc020b1a2:	85ca                	mv	a1,s2
ffffffffc020b1a4:	854e                	mv	a0,s3
ffffffffc020b1a6:	e11ff0ef          	jal	ra,ffffffffc020afb6 <printnum>
ffffffffc020b1aa:	bdc1                	j	ffffffffc020b07a <vprintfmt+0x34>
ffffffffc020b1ac:	000aa503          	lw	a0,0(s5)
ffffffffc020b1b0:	864a                	mv	a2,s2
ffffffffc020b1b2:	85a6                	mv	a1,s1
ffffffffc020b1b4:	0aa1                	addi	s5,s5,8
ffffffffc020b1b6:	9982                	jalr	s3
ffffffffc020b1b8:	b5c9                	j	ffffffffc020b07a <vprintfmt+0x34>
ffffffffc020b1ba:	4705                	li	a4,1
ffffffffc020b1bc:	008a8613          	addi	a2,s5,8
ffffffffc020b1c0:	00674463          	blt	a4,t1,ffffffffc020b1c8 <vprintfmt+0x182>
ffffffffc020b1c4:	18030d63          	beqz	t1,ffffffffc020b35e <vprintfmt+0x318>
ffffffffc020b1c8:	000ab683          	ld	a3,0(s5)
ffffffffc020b1cc:	4729                	li	a4,10
ffffffffc020b1ce:	8ab2                	mv	s5,a2
ffffffffc020b1d0:	b7f1                	j	ffffffffc020b19c <vprintfmt+0x156>
ffffffffc020b1d2:	00144583          	lbu	a1,1(s0)
ffffffffc020b1d6:	4d05                	li	s10,1
ffffffffc020b1d8:	846e                	mv	s0,s11
ffffffffc020b1da:	bdd1                	j	ffffffffc020b0ae <vprintfmt+0x68>
ffffffffc020b1dc:	864a                	mv	a2,s2
ffffffffc020b1de:	85a6                	mv	a1,s1
ffffffffc020b1e0:	02500513          	li	a0,37
ffffffffc020b1e4:	9982                	jalr	s3
ffffffffc020b1e6:	bd51                	j	ffffffffc020b07a <vprintfmt+0x34>
ffffffffc020b1e8:	00144583          	lbu	a1,1(s0)
ffffffffc020b1ec:	2305                	addiw	t1,t1,1
ffffffffc020b1ee:	846e                	mv	s0,s11
ffffffffc020b1f0:	bd7d                	j	ffffffffc020b0ae <vprintfmt+0x68>
ffffffffc020b1f2:	4705                	li	a4,1
ffffffffc020b1f4:	008a8613          	addi	a2,s5,8
ffffffffc020b1f8:	00674463          	blt	a4,t1,ffffffffc020b200 <vprintfmt+0x1ba>
ffffffffc020b1fc:	14030c63          	beqz	t1,ffffffffc020b354 <vprintfmt+0x30e>
ffffffffc020b200:	000ab683          	ld	a3,0(s5)
ffffffffc020b204:	4721                	li	a4,8
ffffffffc020b206:	8ab2                	mv	s5,a2
ffffffffc020b208:	bf51                	j	ffffffffc020b19c <vprintfmt+0x156>
ffffffffc020b20a:	03000513          	li	a0,48
ffffffffc020b20e:	864a                	mv	a2,s2
ffffffffc020b210:	85a6                	mv	a1,s1
ffffffffc020b212:	e042                	sd	a6,0(sp)
ffffffffc020b214:	9982                	jalr	s3
ffffffffc020b216:	864a                	mv	a2,s2
ffffffffc020b218:	85a6                	mv	a1,s1
ffffffffc020b21a:	07800513          	li	a0,120
ffffffffc020b21e:	9982                	jalr	s3
ffffffffc020b220:	0aa1                	addi	s5,s5,8
ffffffffc020b222:	6802                	ld	a6,0(sp)
ffffffffc020b224:	4741                	li	a4,16
ffffffffc020b226:	ff8ab683          	ld	a3,-8(s5)
ffffffffc020b22a:	bf8d                	j	ffffffffc020b19c <vprintfmt+0x156>
ffffffffc020b22c:	000ab403          	ld	s0,0(s5)
ffffffffc020b230:	008a8793          	addi	a5,s5,8
ffffffffc020b234:	e03e                	sd	a5,0(sp)
ffffffffc020b236:	14040c63          	beqz	s0,ffffffffc020b38e <vprintfmt+0x348>
ffffffffc020b23a:	11805063          	blez	s8,ffffffffc020b33a <vprintfmt+0x2f4>
ffffffffc020b23e:	02d00693          	li	a3,45
ffffffffc020b242:	0cd81963          	bne	a6,a3,ffffffffc020b314 <vprintfmt+0x2ce>
ffffffffc020b246:	00044683          	lbu	a3,0(s0)
ffffffffc020b24a:	0006851b          	sext.w	a0,a3
ffffffffc020b24e:	ce8d                	beqz	a3,ffffffffc020b288 <vprintfmt+0x242>
ffffffffc020b250:	00140a93          	addi	s5,s0,1
ffffffffc020b254:	05e00413          	li	s0,94
ffffffffc020b258:	000cc563          	bltz	s9,ffffffffc020b262 <vprintfmt+0x21c>
ffffffffc020b25c:	3cfd                	addiw	s9,s9,-1
ffffffffc020b25e:	037c8363          	beq	s9,s7,ffffffffc020b284 <vprintfmt+0x23e>
ffffffffc020b262:	864a                	mv	a2,s2
ffffffffc020b264:	85a6                	mv	a1,s1
ffffffffc020b266:	100d0663          	beqz	s10,ffffffffc020b372 <vprintfmt+0x32c>
ffffffffc020b26a:	3681                	addiw	a3,a3,-32
ffffffffc020b26c:	10d47363          	bgeu	s0,a3,ffffffffc020b372 <vprintfmt+0x32c>
ffffffffc020b270:	03f00513          	li	a0,63
ffffffffc020b274:	9982                	jalr	s3
ffffffffc020b276:	000ac683          	lbu	a3,0(s5)
ffffffffc020b27a:	3c7d                	addiw	s8,s8,-1
ffffffffc020b27c:	0a85                	addi	s5,s5,1
ffffffffc020b27e:	0006851b          	sext.w	a0,a3
ffffffffc020b282:	faf9                	bnez	a3,ffffffffc020b258 <vprintfmt+0x212>
ffffffffc020b284:	01805a63          	blez	s8,ffffffffc020b298 <vprintfmt+0x252>
ffffffffc020b288:	3c7d                	addiw	s8,s8,-1
ffffffffc020b28a:	864a                	mv	a2,s2
ffffffffc020b28c:	85a6                	mv	a1,s1
ffffffffc020b28e:	02000513          	li	a0,32
ffffffffc020b292:	9982                	jalr	s3
ffffffffc020b294:	fe0c1ae3          	bnez	s8,ffffffffc020b288 <vprintfmt+0x242>
ffffffffc020b298:	6a82                	ld	s5,0(sp)
ffffffffc020b29a:	b3c5                	j	ffffffffc020b07a <vprintfmt+0x34>
ffffffffc020b29c:	4705                	li	a4,1
ffffffffc020b29e:	008a8d13          	addi	s10,s5,8
ffffffffc020b2a2:	00674463          	blt	a4,t1,ffffffffc020b2aa <vprintfmt+0x264>
ffffffffc020b2a6:	0a030463          	beqz	t1,ffffffffc020b34e <vprintfmt+0x308>
ffffffffc020b2aa:	000ab403          	ld	s0,0(s5)
ffffffffc020b2ae:	0c044463          	bltz	s0,ffffffffc020b376 <vprintfmt+0x330>
ffffffffc020b2b2:	86a2                	mv	a3,s0
ffffffffc020b2b4:	8aea                	mv	s5,s10
ffffffffc020b2b6:	4729                	li	a4,10
ffffffffc020b2b8:	b5d5                	j	ffffffffc020b19c <vprintfmt+0x156>
ffffffffc020b2ba:	000aa783          	lw	a5,0(s5)
ffffffffc020b2be:	46e1                	li	a3,24
ffffffffc020b2c0:	0aa1                	addi	s5,s5,8
ffffffffc020b2c2:	41f7d71b          	sraiw	a4,a5,0x1f
ffffffffc020b2c6:	8fb9                	xor	a5,a5,a4
ffffffffc020b2c8:	40e7873b          	subw	a4,a5,a4
ffffffffc020b2cc:	02e6c663          	blt	a3,a4,ffffffffc020b2f8 <vprintfmt+0x2b2>
ffffffffc020b2d0:	00371793          	slli	a5,a4,0x3
ffffffffc020b2d4:	00004697          	auipc	a3,0x4
ffffffffc020b2d8:	46c68693          	addi	a3,a3,1132 # ffffffffc020f740 <error_string>
ffffffffc020b2dc:	97b6                	add	a5,a5,a3
ffffffffc020b2de:	639c                	ld	a5,0(a5)
ffffffffc020b2e0:	cf81                	beqz	a5,ffffffffc020b2f8 <vprintfmt+0x2b2>
ffffffffc020b2e2:	873e                	mv	a4,a5
ffffffffc020b2e4:	00000697          	auipc	a3,0x0
ffffffffc020b2e8:	28468693          	addi	a3,a3,644 # ffffffffc020b568 <etext+0x2a>
ffffffffc020b2ec:	8626                	mv	a2,s1
ffffffffc020b2ee:	85ca                	mv	a1,s2
ffffffffc020b2f0:	854e                	mv	a0,s3
ffffffffc020b2f2:	0d4000ef          	jal	ra,ffffffffc020b3c6 <printfmt>
ffffffffc020b2f6:	b351                	j	ffffffffc020b07a <vprintfmt+0x34>
ffffffffc020b2f8:	00004697          	auipc	a3,0x4
ffffffffc020b2fc:	10868693          	addi	a3,a3,264 # ffffffffc020f400 <sfs_node_fileops+0x138>
ffffffffc020b300:	8626                	mv	a2,s1
ffffffffc020b302:	85ca                	mv	a1,s2
ffffffffc020b304:	854e                	mv	a0,s3
ffffffffc020b306:	0c0000ef          	jal	ra,ffffffffc020b3c6 <printfmt>
ffffffffc020b30a:	bb85                	j	ffffffffc020b07a <vprintfmt+0x34>
ffffffffc020b30c:	00004417          	auipc	s0,0x4
ffffffffc020b310:	0ec40413          	addi	s0,s0,236 # ffffffffc020f3f8 <sfs_node_fileops+0x130>
ffffffffc020b314:	85e6                	mv	a1,s9
ffffffffc020b316:	8522                	mv	a0,s0
ffffffffc020b318:	e442                	sd	a6,8(sp)
ffffffffc020b31a:	132000ef          	jal	ra,ffffffffc020b44c <strnlen>
ffffffffc020b31e:	40ac0c3b          	subw	s8,s8,a0
ffffffffc020b322:	01805c63          	blez	s8,ffffffffc020b33a <vprintfmt+0x2f4>
ffffffffc020b326:	6822                	ld	a6,8(sp)
ffffffffc020b328:	00080a9b          	sext.w	s5,a6
ffffffffc020b32c:	3c7d                	addiw	s8,s8,-1
ffffffffc020b32e:	864a                	mv	a2,s2
ffffffffc020b330:	85a6                	mv	a1,s1
ffffffffc020b332:	8556                	mv	a0,s5
ffffffffc020b334:	9982                	jalr	s3
ffffffffc020b336:	fe0c1be3          	bnez	s8,ffffffffc020b32c <vprintfmt+0x2e6>
ffffffffc020b33a:	00044683          	lbu	a3,0(s0)
ffffffffc020b33e:	00140a93          	addi	s5,s0,1
ffffffffc020b342:	0006851b          	sext.w	a0,a3
ffffffffc020b346:	daa9                	beqz	a3,ffffffffc020b298 <vprintfmt+0x252>
ffffffffc020b348:	05e00413          	li	s0,94
ffffffffc020b34c:	b731                	j	ffffffffc020b258 <vprintfmt+0x212>
ffffffffc020b34e:	000aa403          	lw	s0,0(s5)
ffffffffc020b352:	bfb1                	j	ffffffffc020b2ae <vprintfmt+0x268>
ffffffffc020b354:	000ae683          	lwu	a3,0(s5)
ffffffffc020b358:	4721                	li	a4,8
ffffffffc020b35a:	8ab2                	mv	s5,a2
ffffffffc020b35c:	b581                	j	ffffffffc020b19c <vprintfmt+0x156>
ffffffffc020b35e:	000ae683          	lwu	a3,0(s5)
ffffffffc020b362:	4729                	li	a4,10
ffffffffc020b364:	8ab2                	mv	s5,a2
ffffffffc020b366:	bd1d                	j	ffffffffc020b19c <vprintfmt+0x156>
ffffffffc020b368:	000ae683          	lwu	a3,0(s5)
ffffffffc020b36c:	4741                	li	a4,16
ffffffffc020b36e:	8ab2                	mv	s5,a2
ffffffffc020b370:	b535                	j	ffffffffc020b19c <vprintfmt+0x156>
ffffffffc020b372:	9982                	jalr	s3
ffffffffc020b374:	b709                	j	ffffffffc020b276 <vprintfmt+0x230>
ffffffffc020b376:	864a                	mv	a2,s2
ffffffffc020b378:	85a6                	mv	a1,s1
ffffffffc020b37a:	02d00513          	li	a0,45
ffffffffc020b37e:	e042                	sd	a6,0(sp)
ffffffffc020b380:	9982                	jalr	s3
ffffffffc020b382:	6802                	ld	a6,0(sp)
ffffffffc020b384:	8aea                	mv	s5,s10
ffffffffc020b386:	408006b3          	neg	a3,s0
ffffffffc020b38a:	4729                	li	a4,10
ffffffffc020b38c:	bd01                	j	ffffffffc020b19c <vprintfmt+0x156>
ffffffffc020b38e:	03805163          	blez	s8,ffffffffc020b3b0 <vprintfmt+0x36a>
ffffffffc020b392:	02d00693          	li	a3,45
ffffffffc020b396:	f6d81be3          	bne	a6,a3,ffffffffc020b30c <vprintfmt+0x2c6>
ffffffffc020b39a:	00004417          	auipc	s0,0x4
ffffffffc020b39e:	05e40413          	addi	s0,s0,94 # ffffffffc020f3f8 <sfs_node_fileops+0x130>
ffffffffc020b3a2:	02800693          	li	a3,40
ffffffffc020b3a6:	02800513          	li	a0,40
ffffffffc020b3aa:	00140a93          	addi	s5,s0,1
ffffffffc020b3ae:	b55d                	j	ffffffffc020b254 <vprintfmt+0x20e>
ffffffffc020b3b0:	00004a97          	auipc	s5,0x4
ffffffffc020b3b4:	049a8a93          	addi	s5,s5,73 # ffffffffc020f3f9 <sfs_node_fileops+0x131>
ffffffffc020b3b8:	02800513          	li	a0,40
ffffffffc020b3bc:	02800693          	li	a3,40
ffffffffc020b3c0:	05e00413          	li	s0,94
ffffffffc020b3c4:	bd51                	j	ffffffffc020b258 <vprintfmt+0x212>

ffffffffc020b3c6 <printfmt>:
ffffffffc020b3c6:	7139                	addi	sp,sp,-64
ffffffffc020b3c8:	02010313          	addi	t1,sp,32
ffffffffc020b3cc:	f03a                	sd	a4,32(sp)
ffffffffc020b3ce:	871a                	mv	a4,t1
ffffffffc020b3d0:	ec06                	sd	ra,24(sp)
ffffffffc020b3d2:	f43e                	sd	a5,40(sp)
ffffffffc020b3d4:	f842                	sd	a6,48(sp)
ffffffffc020b3d6:	fc46                	sd	a7,56(sp)
ffffffffc020b3d8:	e41a                	sd	t1,8(sp)
ffffffffc020b3da:	c6dff0ef          	jal	ra,ffffffffc020b046 <vprintfmt>
ffffffffc020b3de:	60e2                	ld	ra,24(sp)
ffffffffc020b3e0:	6121                	addi	sp,sp,64
ffffffffc020b3e2:	8082                	ret

ffffffffc020b3e4 <snprintf>:
ffffffffc020b3e4:	711d                	addi	sp,sp,-96
ffffffffc020b3e6:	15fd                	addi	a1,a1,-1
ffffffffc020b3e8:	03810313          	addi	t1,sp,56
ffffffffc020b3ec:	95aa                	add	a1,a1,a0
ffffffffc020b3ee:	f406                	sd	ra,40(sp)
ffffffffc020b3f0:	fc36                	sd	a3,56(sp)
ffffffffc020b3f2:	e0ba                	sd	a4,64(sp)
ffffffffc020b3f4:	e4be                	sd	a5,72(sp)
ffffffffc020b3f6:	e8c2                	sd	a6,80(sp)
ffffffffc020b3f8:	ecc6                	sd	a7,88(sp)
ffffffffc020b3fa:	e01a                	sd	t1,0(sp)
ffffffffc020b3fc:	e42a                	sd	a0,8(sp)
ffffffffc020b3fe:	e82e                	sd	a1,16(sp)
ffffffffc020b400:	cc02                	sw	zero,24(sp)
ffffffffc020b402:	c515                	beqz	a0,ffffffffc020b42e <snprintf+0x4a>
ffffffffc020b404:	02a5e563          	bltu	a1,a0,ffffffffc020b42e <snprintf+0x4a>
ffffffffc020b408:	75dd                	lui	a1,0xffff7
ffffffffc020b40a:	86b2                	mv	a3,a2
ffffffffc020b40c:	00000517          	auipc	a0,0x0
ffffffffc020b410:	c2050513          	addi	a0,a0,-992 # ffffffffc020b02c <sprintputch>
ffffffffc020b414:	871a                	mv	a4,t1
ffffffffc020b416:	0030                	addi	a2,sp,8
ffffffffc020b418:	ad958593          	addi	a1,a1,-1319 # ffffffffffff6ad9 <end+0x3fd601c9>
ffffffffc020b41c:	c2bff0ef          	jal	ra,ffffffffc020b046 <vprintfmt>
ffffffffc020b420:	67a2                	ld	a5,8(sp)
ffffffffc020b422:	00078023          	sb	zero,0(a5)
ffffffffc020b426:	4562                	lw	a0,24(sp)
ffffffffc020b428:	70a2                	ld	ra,40(sp)
ffffffffc020b42a:	6125                	addi	sp,sp,96
ffffffffc020b42c:	8082                	ret
ffffffffc020b42e:	5575                	li	a0,-3
ffffffffc020b430:	bfe5                	j	ffffffffc020b428 <snprintf+0x44>

ffffffffc020b432 <strlen>:
ffffffffc020b432:	00054783          	lbu	a5,0(a0)
ffffffffc020b436:	872a                	mv	a4,a0
ffffffffc020b438:	4501                	li	a0,0
ffffffffc020b43a:	cb81                	beqz	a5,ffffffffc020b44a <strlen+0x18>
ffffffffc020b43c:	0505                	addi	a0,a0,1
ffffffffc020b43e:	00a707b3          	add	a5,a4,a0
ffffffffc020b442:	0007c783          	lbu	a5,0(a5)
ffffffffc020b446:	fbfd                	bnez	a5,ffffffffc020b43c <strlen+0xa>
ffffffffc020b448:	8082                	ret
ffffffffc020b44a:	8082                	ret

ffffffffc020b44c <strnlen>:
ffffffffc020b44c:	4781                	li	a5,0
ffffffffc020b44e:	e589                	bnez	a1,ffffffffc020b458 <strnlen+0xc>
ffffffffc020b450:	a811                	j	ffffffffc020b464 <strnlen+0x18>
ffffffffc020b452:	0785                	addi	a5,a5,1
ffffffffc020b454:	00f58863          	beq	a1,a5,ffffffffc020b464 <strnlen+0x18>
ffffffffc020b458:	00f50733          	add	a4,a0,a5
ffffffffc020b45c:	00074703          	lbu	a4,0(a4)
ffffffffc020b460:	fb6d                	bnez	a4,ffffffffc020b452 <strnlen+0x6>
ffffffffc020b462:	85be                	mv	a1,a5
ffffffffc020b464:	852e                	mv	a0,a1
ffffffffc020b466:	8082                	ret

ffffffffc020b468 <strcpy>:
ffffffffc020b468:	87aa                	mv	a5,a0
ffffffffc020b46a:	0005c703          	lbu	a4,0(a1)
ffffffffc020b46e:	0785                	addi	a5,a5,1
ffffffffc020b470:	0585                	addi	a1,a1,1
ffffffffc020b472:	fee78fa3          	sb	a4,-1(a5)
ffffffffc020b476:	fb75                	bnez	a4,ffffffffc020b46a <strcpy+0x2>
ffffffffc020b478:	8082                	ret

ffffffffc020b47a <strcmp>:
ffffffffc020b47a:	00054783          	lbu	a5,0(a0)
ffffffffc020b47e:	0005c703          	lbu	a4,0(a1)
ffffffffc020b482:	cb89                	beqz	a5,ffffffffc020b494 <strcmp+0x1a>
ffffffffc020b484:	0505                	addi	a0,a0,1
ffffffffc020b486:	0585                	addi	a1,a1,1
ffffffffc020b488:	fee789e3          	beq	a5,a4,ffffffffc020b47a <strcmp>
ffffffffc020b48c:	0007851b          	sext.w	a0,a5
ffffffffc020b490:	9d19                	subw	a0,a0,a4
ffffffffc020b492:	8082                	ret
ffffffffc020b494:	4501                	li	a0,0
ffffffffc020b496:	bfed                	j	ffffffffc020b490 <strcmp+0x16>

ffffffffc020b498 <strncmp>:
ffffffffc020b498:	c20d                	beqz	a2,ffffffffc020b4ba <strncmp+0x22>
ffffffffc020b49a:	962e                	add	a2,a2,a1
ffffffffc020b49c:	a031                	j	ffffffffc020b4a8 <strncmp+0x10>
ffffffffc020b49e:	0505                	addi	a0,a0,1
ffffffffc020b4a0:	00e79a63          	bne	a5,a4,ffffffffc020b4b4 <strncmp+0x1c>
ffffffffc020b4a4:	00b60b63          	beq	a2,a1,ffffffffc020b4ba <strncmp+0x22>
ffffffffc020b4a8:	00054783          	lbu	a5,0(a0)
ffffffffc020b4ac:	0585                	addi	a1,a1,1
ffffffffc020b4ae:	fff5c703          	lbu	a4,-1(a1)
ffffffffc020b4b2:	f7f5                	bnez	a5,ffffffffc020b49e <strncmp+0x6>
ffffffffc020b4b4:	40e7853b          	subw	a0,a5,a4
ffffffffc020b4b8:	8082                	ret
ffffffffc020b4ba:	4501                	li	a0,0
ffffffffc020b4bc:	8082                	ret

ffffffffc020b4be <strchr>:
ffffffffc020b4be:	00054783          	lbu	a5,0(a0)
ffffffffc020b4c2:	c799                	beqz	a5,ffffffffc020b4d0 <strchr+0x12>
ffffffffc020b4c4:	00f58763          	beq	a1,a5,ffffffffc020b4d2 <strchr+0x14>
ffffffffc020b4c8:	00154783          	lbu	a5,1(a0)
ffffffffc020b4cc:	0505                	addi	a0,a0,1
ffffffffc020b4ce:	fbfd                	bnez	a5,ffffffffc020b4c4 <strchr+0x6>
ffffffffc020b4d0:	4501                	li	a0,0
ffffffffc020b4d2:	8082                	ret

ffffffffc020b4d4 <memset>:
ffffffffc020b4d4:	ca01                	beqz	a2,ffffffffc020b4e4 <memset+0x10>
ffffffffc020b4d6:	962a                	add	a2,a2,a0
ffffffffc020b4d8:	87aa                	mv	a5,a0
ffffffffc020b4da:	0785                	addi	a5,a5,1
ffffffffc020b4dc:	feb78fa3          	sb	a1,-1(a5)
ffffffffc020b4e0:	fec79de3          	bne	a5,a2,ffffffffc020b4da <memset+0x6>
ffffffffc020b4e4:	8082                	ret

ffffffffc020b4e6 <memmove>:
ffffffffc020b4e6:	02a5f263          	bgeu	a1,a0,ffffffffc020b50a <memmove+0x24>
ffffffffc020b4ea:	00c587b3          	add	a5,a1,a2
ffffffffc020b4ee:	00f57e63          	bgeu	a0,a5,ffffffffc020b50a <memmove+0x24>
ffffffffc020b4f2:	00c50733          	add	a4,a0,a2
ffffffffc020b4f6:	c615                	beqz	a2,ffffffffc020b522 <memmove+0x3c>
ffffffffc020b4f8:	fff7c683          	lbu	a3,-1(a5)
ffffffffc020b4fc:	17fd                	addi	a5,a5,-1
ffffffffc020b4fe:	177d                	addi	a4,a4,-1
ffffffffc020b500:	00d70023          	sb	a3,0(a4)
ffffffffc020b504:	fef59ae3          	bne	a1,a5,ffffffffc020b4f8 <memmove+0x12>
ffffffffc020b508:	8082                	ret
ffffffffc020b50a:	00c586b3          	add	a3,a1,a2
ffffffffc020b50e:	87aa                	mv	a5,a0
ffffffffc020b510:	ca11                	beqz	a2,ffffffffc020b524 <memmove+0x3e>
ffffffffc020b512:	0005c703          	lbu	a4,0(a1)
ffffffffc020b516:	0585                	addi	a1,a1,1
ffffffffc020b518:	0785                	addi	a5,a5,1
ffffffffc020b51a:	fee78fa3          	sb	a4,-1(a5)
ffffffffc020b51e:	fed59ae3          	bne	a1,a3,ffffffffc020b512 <memmove+0x2c>
ffffffffc020b522:	8082                	ret
ffffffffc020b524:	8082                	ret

ffffffffc020b526 <memcpy>:
ffffffffc020b526:	ca19                	beqz	a2,ffffffffc020b53c <memcpy+0x16>
ffffffffc020b528:	962e                	add	a2,a2,a1
ffffffffc020b52a:	87aa                	mv	a5,a0
ffffffffc020b52c:	0005c703          	lbu	a4,0(a1)
ffffffffc020b530:	0585                	addi	a1,a1,1
ffffffffc020b532:	0785                	addi	a5,a5,1
ffffffffc020b534:	fee78fa3          	sb	a4,-1(a5)
ffffffffc020b538:	fec59ae3          	bne	a1,a2,ffffffffc020b52c <memcpy+0x6>
ffffffffc020b53c:	8082                	ret
