
division_sparc.out:     file format elf32-sparc

Disassembly of section .init:

00010368 <_init>:
   10368:	9d e3 bf a0 	save  %sp, -96, %sp
   1036c:	40 00 00 2a 	call  10414 <frame_dummy>
   10370:	01 00 00 00 	nop 
   10374:	40 00 00 ce 	call  106ac <__do_global_ctors_aux>
   10378:	01 00 00 00 	nop 
   1037c:	81 c7 e0 08 	ret 
   10380:	81 e8 00 00 	restore 
Disassembly of section .text:

00010384 <_start>:
   10384:	bc 10 00 00 	mov  %g0, %fp
   10388:	9c 23 a0 18 	sub  %sp, 0x18, %sp
   1038c:	d2 03 a0 58 	ld  [ %sp + 0x58 ], %o1
   10390:	94 03 a0 5c 	add  %sp, 0x5c, %o2
   10394:	11 00 00 41 	sethi  %hi(0x10400), %o0
   10398:	17 00 00 41 	sethi  %hi(0x10400), %o3
   1039c:	19 00 00 41 	sethi  %hi(0x10400), %o4
   103a0:	90 12 20 b8 	or  %o0, 0xb8, %o0
   103a4:	96 12 e2 2c 	or  %o3, 0x22c, %o3
   103a8:	98 13 22 a4 	or  %o4, 0x2a4, %o4
   103ac:	9a 10 00 01 	mov  %g1, %o5
   103b0:	40 00 41 3c 	call  208a0 <__libc_start_main@plt>
   103b4:	01 00 00 00 	nop 
   103b8:	00 00 00 00 	unimp  0

000103bc <__do_global_dtors_aux>:
   103bc:	9d e3 bf 98 	save  %sp, -104, %sp
   103c0:	23 00 00 82 	sethi  %hi(0x20800), %l1
   103c4:	c2 0c 60 e8 	ldub  [ %l1 + 0xe8 ], %g1	! 208e8 <__bss_start>
   103c8:	80 a0 60 00 	cmp  %g1, 0
   103cc:	12 80 00 0d 	bne  10400 <__do_global_dtors_aux+0x44>
   103d0:	21 00 00 82 	sethi  %hi(0x20800), %l0
   103d4:	10 80 00 05 	b  103e8 <__do_global_dtors_aux+0x2c>
   103d8:	c2 04 20 e4 	ld  [ %l0 + 0xe4 ], %g1	! 208e4 <p.0>
   103dc:	9f c0 80 00 	call  %g2
   103e0:	c2 24 20 e4 	st  %g1, [ %l0 + 0xe4 ]
   103e4:	c2 04 20 e4 	ld  [ %l0 + 0xe4 ], %g1
   103e8:	c4 00 40 00 	ld  [ %g1 ], %g2
   103ec:	80 a0 a0 00 	cmp  %g2, 0
   103f0:	12 bf ff fb 	bne  103dc <__do_global_dtors_aux+0x20>
   103f4:	82 00 60 04 	add  %g1, 4, %g1
   103f8:	82 10 20 01 	mov  1, %g1
   103fc:	c2 2c 60 e8 	stb  %g1, [ %l1 + 0xe8 ]
   10400:	81 c7 e0 08 	ret 
   10404:	81 e8 00 00 	restore 

00010408 <call___do_global_dtors_aux>:
   10408:	9d e3 bf 98 	save  %sp, -104, %sp
   1040c:	81 c7 e0 08 	ret 
   10410:	81 e8 00 00 	restore 

00010414 <frame_dummy>:
   10414:	05 00 00 81 	sethi  %hi(0x20400), %g2
   10418:	c2 00 a3 98 	ld  [ %g2 + 0x398 ], %g1	! 20798 <__JCR_END__>
   1041c:	80 a0 60 00 	cmp  %g1, 0
   10420:	02 80 00 0a 	be  10448 <frame_dummy+0x34>
   10424:	90 10 a3 98 	or  %g2, 0x398, %o0
   10428:	03 00 00 00 	sethi  %hi(0), %g1
   1042c:	82 10 60 00 	mov  %g1, %g1	! 0 <_init-0x10368>
   10430:	80 a0 60 00 	cmp  %g1, 0
   10434:	02 80 00 05 	be  10448 <frame_dummy+0x34>
   10438:	01 00 00 00 	nop 
   1043c:	82 13 c0 00 	mov  %o7, %g1
   10440:	10 bf be f0 	b  0 <_init-0x10368>
   10444:	01 00 00 00 	nop 
   10448:	01 00 00 00 	nop 
   1044c:	81 c3 e0 08 	retl 
   10450:	01 00 00 00 	nop 

00010454 <call_frame_dummy>:
   10454:	9d e3 bf 98 	save  %sp, -104, %sp
   10458:	81 c7 e0 08 	ret 
   1045c:	81 e8 00 00 	restore 

00010460 <div_1>:
   10460:	9d e3 bf 90 	save  %sp, -112, %sp
   10464:	f0 27 a0 44 	st  %i0, [ %fp + 0x44 ]
   10468:	f2 27 a0 48 	st  %i1, [ %fp + 0x48 ]
   1046c:	c0 27 bf f4 	clr  [ %fp + -12 ]
   10470:	c4 07 a0 44 	ld  [ %fp + 0x44 ], %g2
   10474:	c2 07 a0 48 	ld  [ %fp + 0x48 ], %g1
   10478:	80 a0 80 01 	cmp  %g2, %g1
   1047c:	04 80 00 0b 	ble  104a8 <div_1+0x48>
   10480:	01 00 00 00 	nop 
   10484:	c4 07 a0 44 	ld  [ %fp + 0x44 ], %g2
   10488:	c2 07 a0 48 	ld  [ %fp + 0x48 ], %g1
   1048c:	82 20 80 01 	sub  %g2, %g1, %g1
   10490:	c2 27 a0 44 	st  %g1, [ %fp + 0x44 ]
   10494:	c2 07 bf f4 	ld  [ %fp + -12 ], %g1
   10498:	82 00 60 01 	inc  %g1
   1049c:	c2 27 bf f4 	st  %g1, [ %fp + -12 ]
   104a0:	10 bf ff f4 	b  10470 <div_1+0x10>
   104a4:	01 00 00 00 	nop 
   104a8:	c2 07 bf f4 	ld  [ %fp + -12 ], %g1
   104ac:	b0 10 00 01 	mov  %g1, %i0
   104b0:	81 c7 e0 08 	ret 
   104b4:	81 e8 00 00 	restore 

000104b8 <main>:
   104b8:	9d e3 bf 78 	save  %sp, -136, %sp
   104bc:	f0 27 a0 44 	st  %i0, [ %fp + 0x44 ]
   104c0:	f2 27 a0 48 	st  %i1, [ %fp + 0x48 ]
   104c4:	82 10 23 e8 	mov  0x3e8, %g1
   104c8:	c2 27 bf f4 	st  %g1, [ %fp + -12 ]
   104cc:	03 00 00 0d 	sethi  %hi(0x3400), %g1
   104d0:	82 10 61 4d 	or  %g1, 0x14d, %g1	! 354d <_init-0xce1b>
   104d4:	c2 27 bf f0 	st  %g1, [ %fp + -16 ]
   104d8:	82 10 20 86 	mov  0x86, %g1
   104dc:	c2 27 bf ec 	st  %g1, [ %fp + -20 ]
   104e0:	c2 07 a0 44 	ld  [ %fp + 0x44 ], %g1
   104e4:	80 a0 60 02 	cmp  %g1, 2
   104e8:	12 80 00 42 	bne  105f0 <main+0x138>
   104ec:	01 00 00 00 	nop 
   104f0:	84 10 20 04 	mov  4, %g2	! 4 <_init-0x10364>
   104f4:	c2 07 a0 48 	ld  [ %fp + 0x48 ], %g1
   104f8:	82 00 80 01 	add  %g2, %g1, %g1
   104fc:	d0 00 40 00 	ld  [ %g1 ], %o0
   10500:	40 00 40 ee 	call  208b8 <atoi@plt>
   10504:	01 00 00 00 	nop 
   10508:	82 10 00 08 	mov  %o0, %g1
   1050c:	90 10 00 01 	mov  %g1, %o0
   10510:	40 00 40 e7 	call  208ac <srand@plt>
   10514:	01 00 00 00 	nop 
   10518:	c0 27 bf e0 	clr  [ %fp + -32 ]
   1051c:	84 10 20 04 	mov  4, %g2
   10520:	c2 07 a0 48 	ld  [ %fp + 0x48 ], %g1
   10524:	82 00 80 01 	add  %g2, %g1, %g1
   10528:	d0 00 40 00 	ld  [ %g1 ], %o0
   1052c:	40 00 40 e3 	call  208b8 <atoi@plt>
   10530:	01 00 00 00 	nop 
   10534:	82 10 00 08 	mov  %o0, %g1
   10538:	84 10 00 01 	mov  %g1, %g2
   1053c:	c2 07 bf e0 	ld  [ %fp + -32 ], %g1
   10540:	80 a0 80 01 	cmp  %g2, %g1
   10544:	04 80 00 11 	ble  10588 <main+0xd0>
   10548:	01 00 00 00 	nop 
   1054c:	40 00 40 de 	call  208c4 <rand@plt>
   10550:	01 00 00 00 	nop 
   10554:	82 10 00 08 	mov  %o0, %g1
   10558:	85 38 60 1f 	sra  %g1, 0x1f, %g2
   1055c:	81 80 a0 00 	mov  %g2, %y
   10560:	c4 07 bf ec 	ld  [ %fp + -20 ], %g2
   10564:	01 00 00 00 	nop 
   10568:	01 00 00 00 	nop 
   1056c:	82 78 40 02 	sdiv  %g1, %g2, %g1
   10570:	c2 27 bf e8 	st  %g1, [ %fp + -24 ]
   10574:	c2 07 bf e0 	ld  [ %fp + -32 ], %g1
   10578:	82 00 60 01 	inc  %g1
   1057c:	c2 27 bf e0 	st  %g1, [ %fp + -32 ]
   10580:	10 bf ff e7 	b  1051c <main+0x64>
   10584:	01 00 00 00 	nop 
   10588:	c0 27 bf e0 	clr  [ %fp + -32 ]
   1058c:	c2 07 bf e0 	ld  [ %fp + -32 ], %g1
   10590:	80 a0 60 09 	cmp  %g1, 9
   10594:	14 80 00 20 	bg  10614 <main+0x15c>
   10598:	01 00 00 00 	nop 
   1059c:	40 00 40 ca 	call  208c4 <rand@plt>
   105a0:	01 00 00 00 	nop 
   105a4:	82 10 00 08 	mov  %o0, %g1
   105a8:	85 38 60 1f 	sra  %g1, 0x1f, %g2
   105ac:	81 80 a0 00 	mov  %g2, %y
   105b0:	c4 07 bf ec 	ld  [ %fp + -20 ], %g2
   105b4:	01 00 00 00 	nop 
   105b8:	01 00 00 00 	nop 
   105bc:	82 78 40 02 	sdiv  %g1, %g2, %g1
   105c0:	c2 27 bf e8 	st  %g1, [ %fp + -24 ]
   105c4:	03 00 00 41 	sethi  %hi(0x10400), %g1
   105c8:	90 10 63 18 	or  %g1, 0x318, %o0	! 10718 <_IO_stdin_used+0x8>
   105cc:	d2 07 bf e0 	ld  [ %fp + -32 ], %o1
   105d0:	d4 07 bf e8 	ld  [ %fp + -24 ], %o2
   105d4:	40 00 40 bf 	call  208d0 <printf@plt>
   105d8:	01 00 00 00 	nop 
   105dc:	c2 07 bf e0 	ld  [ %fp + -32 ], %g1
   105e0:	82 00 60 01 	inc  %g1
   105e4:	c2 27 bf e0 	st  %g1, [ %fp + -32 ]
   105e8:	10 bf ff e9 	b  1058c <main+0xd4>
   105ec:	01 00 00 00 	nop 
   105f0:	c4 07 a0 48 	ld  [ %fp + 0x48 ], %g2
   105f4:	03 00 00 41 	sethi  %hi(0x10400), %g1
   105f8:	90 10 63 28 	or  %g1, 0x328, %o0	! 10728 <_IO_stdin_used+0x18>
   105fc:	d2 00 80 00 	ld  [ %g2 ], %o1
   10600:	40 00 40 b4 	call  208d0 <printf@plt>
   10604:	01 00 00 00 	nop 
   10608:	c0 27 bf dc 	clr  [ %fp + -36 ]
   1060c:	10 80 00 03 	b  10618 <main+0x160>
   10610:	01 00 00 00 	nop 
   10614:	c0 27 bf dc 	clr  [ %fp + -36 ]
   10618:	f0 07 bf dc 	ld  [ %fp + -36 ], %i0
   1061c:	81 c7 e0 08 	ret 
   10620:	81 e8 00 00 	restore 
   10624:	81 c3 e0 08 	retl 
   10628:	ae 03 c0 17 	add  %o7, %l7, %l7

0001062c <__libc_csu_init>:
   1062c:	9d e3 bf 90 	save  %sp, -112, %sp
   10630:	2f 00 00 40 	sethi  %hi(0x10000), %l7
   10634:	7f ff ff fc 	call  10624 <main+0x16c>
   10638:	ae 05 e2 30 	add  %l7, 0x230, %l7	! 10230 <_init-0x138>
   1063c:	7f ff ff 4b 	call  10368 <_init>
   10640:	a0 10 20 00 	clr  %l0
   10644:	03 00 00 00 	sethi  %hi(0), %g1
   10648:	82 10 60 04 	or  %g1, 4, %g1	! 4 <_init-0x10364>
   1064c:	07 00 00 00 	sethi  %hi(0), %g3
   10650:	c4 05 c0 01 	ld  [ %l7 + %g1 ], %g2
   10654:	86 10 e0 08 	or  %g3, 8, %g3
   10658:	c2 05 c0 03 	ld  [ %l7 + %g3 ], %g1
   1065c:	84 20 80 01 	sub  %g2, %g1, %g2
   10660:	85 38 a0 02 	sra  %g2, 2, %g2
   10664:	80 a4 00 02 	cmp  %l0, %g2
   10668:	1a 80 00 0d 	bcc  1069c <__libc_csu_init+0x70>
   1066c:	a4 10 00 01 	mov  %g1, %l2
   10670:	a2 10 00 02 	mov  %g2, %l1
   10674:	83 2c 20 02 	sll  %l0, 2, %g1
   10678:	c4 04 80 01 	ld  [ %l2 + %g1 ], %g2
   1067c:	90 10 00 18 	mov  %i0, %o0
   10680:	92 10 00 19 	mov  %i1, %o1
   10684:	9f c0 80 00 	call  %g2
   10688:	94 10 00 1a 	mov  %i2, %o2
   1068c:	a0 04 20 01 	inc  %l0
   10690:	80 a4 00 11 	cmp  %l0, %l1
   10694:	0a bf ff f9 	bcs  10678 <__libc_csu_init+0x4c>
   10698:	83 2c 20 02 	sll  %l0, 2, %g1
   1069c:	81 c7 e0 08 	ret 
   106a0:	81 e8 00 00 	restore 

000106a4 <__libc_csu_fini>:
   106a4:	81 c3 e0 08 	retl 
   106a8:	01 00 00 00 	nop 

000106ac <__do_global_ctors_aux>:
   106ac:	9d e3 bf 98 	save  %sp, -104, %sp
   106b0:	03 00 00 81 	sethi  %hi(0x20400), %g1
   106b4:	82 10 63 8c 	or  %g1, 0x38c, %g1	! 2078c <__CTOR_END__>
   106b8:	c4 00 7f fc 	ld  [ %g1 + -4 ], %g2
   106bc:	80 a0 bf ff 	cmp  %g2, -1
   106c0:	02 80 00 09 	be  106e4 <__do_global_ctors_aux+0x38>
   106c4:	a0 00 7f fc 	add  %g1, -4, %l0
   106c8:	82 10 00 02 	mov  %g2, %g1
   106cc:	9f c0 40 00 	call  %g1
   106d0:	a0 04 3f fc 	add  %l0, -4, %l0
   106d4:	c2 04 00 00 	ld  [ %l0 ], %g1
   106d8:	80 a0 7f ff 	cmp  %g1, -1
   106dc:	12 bf ff fc 	bne  106cc <__do_global_ctors_aux+0x20>
   106e0:	01 00 00 00 	nop 
   106e4:	81 c7 e0 08 	ret 
   106e8:	81 e8 00 00 	restore 

000106ec <call___do_global_ctors_aux>:
   106ec:	9d e3 bf 98 	save  %sp, -104, %sp
   106f0:	81 c7 e0 08 	ret 
   106f4:	81 e8 00 00 	restore 
Disassembly of section .fini:

000106f8 <_fini>:
   106f8:	9d e3 bf a0 	save  %sp, -96, %sp
   106fc:	7f ff ff 30 	call  103bc <__do_global_dtors_aux>
   10700:	01 00 00 00 	nop 
   10704:	81 c7 e0 08 	ret 
   10708:	81 e8 00 00 	restore 
Disassembly of section .plt:

00020870 <_PROCEDURE_LINKAGE_TABLE_>:
	...

000208a0 <__libc_start_main@plt>:
   208a0:	03 00 00 30 	sethi  %hi(0xc000), %g1
   208a4:	30 bf ff f3 	b,a   20870 <_PROCEDURE_LINKAGE_TABLE_>
   208a8:	01 00 00 00 	nop 

000208ac <srand@plt>:
   208ac:	03 00 00 3c 	sethi  %hi(0xf000), %g1
   208b0:	30 bf ff f0 	b,a   20870 <_PROCEDURE_LINKAGE_TABLE_>
   208b4:	01 00 00 00 	nop 

000208b8 <atoi@plt>:
   208b8:	03 00 00 48 	sethi  %hi(0x12000), %g1
   208bc:	30 bf ff ed 	b,a   20870 <_PROCEDURE_LINKAGE_TABLE_>
   208c0:	01 00 00 00 	nop 

000208c4 <rand@plt>:
   208c4:	03 00 00 54 	sethi  %hi(0x15000), %g1
   208c8:	30 bf ff ea 	b,a   20870 <_PROCEDURE_LINKAGE_TABLE_>
   208cc:	01 00 00 00 	nop 

000208d0 <printf@plt>:
   208d0:	03 00 00 60 	sethi  %hi(0x18000), %g1
   208d4:	30 bf ff e7 	b,a   20870 <_PROCEDURE_LINKAGE_TABLE_>
   208d8:	01 00 00 00 	nop 
   208dc:	01 00 00 00 	nop 
