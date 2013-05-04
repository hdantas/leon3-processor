
stanford_SPARC.out:     file format elf32-sparc

Disassembly of section .init:

00010348 <_init>:
   10348:	9d e3 bf a0 	save  %sp, -96, %sp
   1034c:	40 00 00 2a 	call  103f4 <frame_dummy>
   10350:	01 00 00 00 	nop 
   10354:	40 00 19 89 	call  16978 <__do_global_ctors_aux>
   10358:	01 00 00 00 	nop 
   1035c:	81 c7 e0 08 	ret 
   10360:	81 e8 00 00 	restore 
Disassembly of section .text:

00010364 <_start>:
   10364:	bc 10 00 00 	mov  %g0, %fp
   10368:	9c 23 a0 18 	sub  %sp, 0x18, %sp
   1036c:	d2 03 a0 58 	ld  [ %sp + 0x58 ], %o1
   10370:	94 03 a0 5c 	add  %sp, 0x5c, %o2
   10374:	11 00 00 4f 	sethi  %hi(0x13c00), %o0
   10378:	17 00 00 5a 	sethi  %hi(0x16800), %o3
   1037c:	19 00 00 5a 	sethi  %hi(0x16800), %o4
   10380:	90 12 23 9c 	or  %o0, 0x39c, %o0
   10384:	96 12 e0 f8 	or  %o3, 0xf8, %o3
   10388:	98 13 21 70 	or  %o4, 0x170, %o4
   1038c:	9a 10 00 01 	mov  %g1, %o5
   10390:	40 00 5f 69 	call  28134 <__libc_start_main@plt>
   10394:	01 00 00 00 	nop 
   10398:	00 00 00 00 	unimp  0

0001039c <__do_global_dtors_aux>:
   1039c:	9d e3 bf 98 	save  %sp, -104, %sp
   103a0:	23 00 00 a0 	sethi  %hi(0x28000), %l1
   103a4:	c2 0c 61 64 	ldub  [ %l1 + 0x164 ], %g1	! 28164 <__bss_start>
   103a8:	80 a0 60 00 	cmp  %g1, 0
   103ac:	12 80 00 0d 	bne  103e0 <__do_global_dtors_aux+0x44>
   103b0:	21 00 00 a0 	sethi  %hi(0x28000), %l0
   103b4:	10 80 00 05 	b  103c8 <__do_global_dtors_aux+0x2c>
   103b8:	c2 04 21 60 	ld  [ %l0 + 0x160 ], %g1	! 28160 <p.0>
   103bc:	9f c0 80 00 	call  %g2
   103c0:	c2 24 21 60 	st  %g1, [ %l0 + 0x160 ]
   103c4:	c2 04 21 60 	ld  [ %l0 + 0x160 ], %g1
   103c8:	c4 00 40 00 	ld  [ %g1 ], %g2
   103cc:	80 a0 a0 00 	cmp  %g2, 0
   103d0:	12 bf ff fb 	bne  103bc <__do_global_dtors_aux+0x20>
   103d4:	82 00 60 04 	add  %g1, 4, %g1
   103d8:	82 10 20 01 	mov  1, %g1
   103dc:	c2 2c 61 64 	stb  %g1, [ %l1 + 0x164 ]
   103e0:	81 c7 e0 08 	ret 
   103e4:	81 e8 00 00 	restore 

000103e8 <call___do_global_dtors_aux>:
   103e8:	9d e3 bf 98 	save  %sp, -104, %sp
   103ec:	81 c7 e0 08 	ret 
   103f0:	81 e8 00 00 	restore 

000103f4 <frame_dummy>:
   103f4:	05 00 00 a0 	sethi  %hi(0x28000), %g2
   103f8:	c2 00 a0 10 	ld  [ %g2 + 0x10 ], %g1	! 28010 <__JCR_END__>
   103fc:	80 a0 60 00 	cmp  %g1, 0
   10400:	02 80 00 0a 	be  10428 <frame_dummy+0x34>
   10404:	90 10 a0 10 	or  %g2, 0x10, %o0
   10408:	03 00 00 00 	sethi  %hi(0), %g1
   1040c:	82 10 60 00 	mov  %g1, %g1	! 0 <_init-0x10348>
   10410:	80 a0 60 00 	cmp  %g1, 0
   10414:	02 80 00 05 	be  10428 <frame_dummy+0x34>
   10418:	01 00 00 00 	nop 
   1041c:	82 13 c0 00 	mov  %o7, %g1
   10420:	10 bf be f8 	b  0 <_init-0x10348>
   10424:	01 00 00 00 	nop 
   10428:	01 00 00 00 	nop 
   1042c:	81 c3 e0 08 	retl 
   10430:	01 00 00 00 	nop 

00010434 <call_frame_dummy>:
   10434:	9d e3 bf 98 	save  %sp, -104, %sp
   10438:	81 c7 e0 08 	ret 
   1043c:	81 e8 00 00 	restore 

00010440 <Getclock>:
   10440:	9d e3 bf 88 	save  %sp, -120, %sp
   10444:	82 07 bf e8 	add  %fp, -24, %g1
   10448:	90 10 00 01 	mov  %g1, %o0
   1044c:	40 00 5f 3d 	call  28140 <times@plt>
   10450:	01 00 00 00 	nop 
   10454:	c2 07 bf e8 	ld  [ %fp + -24 ], %g1
   10458:	86 58 60 32 	smul  %g1, 0x32, %g3
   1045c:	03 15 55 55 	sethi  %hi(0x55555400), %g1
   10460:	82 10 61 56 	or  %g1, 0x156, %g1	! 55555556 <_end+0x55516256>
   10464:	80 58 c0 01 	smul  %g3, %g1, %g0
   10468:	85 40 00 00 	rd  %y, %g2
   1046c:	83 38 e0 1f 	sra  %g3, 0x1f, %g1
   10470:	82 20 80 01 	sub  %g2, %g1, %g1
   10474:	b0 10 00 01 	mov  %g1, %i0
   10478:	81 c7 e0 08 	ret 
   1047c:	81 e8 00 00 	restore 

00010480 <Initrand>:
   10480:	9d e3 bf 98 	save  %sp, -104, %sp
   10484:	03 00 00 df 	sethi  %hi(0x37c00), %g1
   10488:	84 10 61 90 	or  %g1, 0x190, %g2	! 37d90 <seed>
   1048c:	03 00 00 49 	sethi  %hi(0x12400), %g1
   10490:	82 10 60 03 	or  %g1, 3, %g1	! 12403 <Puzzle+0xadf>
   10494:	c2 20 80 00 	st  %g1, [ %g2 ]
   10498:	b0 10 00 01 	mov  %g1, %i0
   1049c:	81 c7 e0 08 	ret 
   104a0:	81 e8 00 00 	restore 

000104a4 <Rand>:
   104a4:	9d e3 bf 98 	save  %sp, -104, %sp
   104a8:	03 00 00 df 	sethi  %hi(0x37c00), %g1
   104ac:	86 10 61 90 	or  %g1, 0x190, %g3	! 37d90 <seed>
   104b0:	03 00 00 df 	sethi  %hi(0x37c00), %g1
   104b4:	82 10 61 90 	or  %g1, 0x190, %g1	! 37d90 <seed>
   104b8:	c2 00 40 00 	ld  [ %g1 ], %g1
   104bc:	84 58 65 1d 	smul  %g1, 0x51d, %g2
   104c0:	03 00 00 0d 	sethi  %hi(0x3400), %g1
   104c4:	82 10 62 19 	or  %g1, 0x219, %g1	! 3619 <_init-0xcd2f>
   104c8:	84 00 80 01 	add  %g2, %g1, %g2
   104cc:	03 00 00 3f 	sethi  %hi(0xfc00), %g1
   104d0:	82 10 63 ff 	or  %g1, 0x3ff, %g1	! ffff <_init-0x349>
   104d4:	82 08 80 01 	and  %g2, %g1, %g1
   104d8:	c2 20 c0 00 	st  %g1, [ %g3 ]
   104dc:	03 00 00 df 	sethi  %hi(0x37c00), %g1
   104e0:	82 10 61 90 	or  %g1, 0x190, %g1	! 37d90 <seed>
   104e4:	c2 00 40 00 	ld  [ %g1 ], %g1
   104e8:	b0 10 00 01 	mov  %g1, %i0
   104ec:	81 c7 e0 08 	ret 
   104f0:	81 e8 00 00 	restore 

000104f4 <Swap>:
   104f4:	9d e3 bf 90 	save  %sp, -112, %sp
   104f8:	f0 27 a0 44 	st  %i0, [ %fp + 0x44 ]
   104fc:	f2 27 a0 48 	st  %i1, [ %fp + 0x48 ]
   10500:	c2 07 a0 44 	ld  [ %fp + 0x44 ], %g1
   10504:	c2 00 40 00 	ld  [ %g1 ], %g1
   10508:	c2 27 bf f4 	st  %g1, [ %fp + -12 ]
   1050c:	c4 07 a0 44 	ld  [ %fp + 0x44 ], %g2
   10510:	c2 07 a0 48 	ld  [ %fp + 0x48 ], %g1
   10514:	c2 00 40 00 	ld  [ %g1 ], %g1
   10518:	c2 20 80 00 	st  %g1, [ %g2 ]
   1051c:	c4 07 a0 48 	ld  [ %fp + 0x48 ], %g2
   10520:	c2 07 bf f4 	ld  [ %fp + -12 ], %g1
   10524:	c2 20 80 00 	st  %g1, [ %g2 ]
   10528:	b0 10 00 01 	mov  %g1, %i0
   1052c:	81 c7 e0 08 	ret 
   10530:	81 e8 00 00 	restore 

00010534 <Initialize>:
   10534:	9d e3 bf 90 	save  %sp, -112, %sp
   10538:	82 10 20 01 	mov  1, %g1
   1053c:	c2 27 bf f4 	st  %g1, [ %fp + -12 ]
   10540:	c2 07 bf f4 	ld  [ %fp + -12 ], %g1
   10544:	80 a0 60 07 	cmp  %g1, 7
   10548:	14 80 00 0e 	bg  10580 <Initialize+0x4c>
   1054c:	01 00 00 00 	nop 
   10550:	03 00 00 c9 	sethi  %hi(0x32400), %g1
   10554:	86 10 62 80 	or  %g1, 0x280, %g3	! 32680 <permarray>
   10558:	c2 07 bf f4 	ld  [ %fp + -12 ], %g1
   1055c:	85 28 60 02 	sll  %g1, 2, %g2
   10560:	c2 07 bf f4 	ld  [ %fp + -12 ], %g1
   10564:	82 00 7f ff 	add  %g1, -1, %g1
   10568:	c2 20 c0 02 	st  %g1, [ %g3 + %g2 ]
   1056c:	c2 07 bf f4 	ld  [ %fp + -12 ], %g1
   10570:	82 00 60 01 	inc  %g1
   10574:	c2 27 bf f4 	st  %g1, [ %fp + -12 ]
   10578:	10 bf ff f2 	b  10540 <Initialize+0xc>
   1057c:	01 00 00 00 	nop 
   10580:	b0 10 00 01 	mov  %g1, %i0
   10584:	81 c7 e0 08 	ret 
   10588:	81 e8 00 00 	restore 

0001058c <Permute>:
   1058c:	9d e3 bf 90 	save  %sp, -112, %sp
   10590:	f0 27 a0 44 	st  %i0, [ %fp + 0x44 ]
   10594:	03 00 00 c1 	sethi  %hi(0x30400), %g1
   10598:	84 10 60 20 	or  %g1, 0x20, %g2	! 30420 <pctr>
   1059c:	03 00 00 c1 	sethi  %hi(0x30400), %g1
   105a0:	82 10 60 20 	or  %g1, 0x20, %g1	! 30420 <pctr>
   105a4:	c2 00 40 00 	ld  [ %g1 ], %g1
   105a8:	82 00 60 01 	inc  %g1
   105ac:	c2 20 80 00 	st  %g1, [ %g2 ]
   105b0:	c2 07 a0 44 	ld  [ %fp + 0x44 ], %g1
   105b4:	80 a0 60 01 	cmp  %g1, 1
   105b8:	02 80 00 34 	be  10688 <Permute+0xfc>
   105bc:	01 00 00 00 	nop 
   105c0:	c2 07 a0 44 	ld  [ %fp + 0x44 ], %g1
   105c4:	82 00 7f ff 	add  %g1, -1, %g1
   105c8:	90 10 00 01 	mov  %g1, %o0
   105cc:	7f ff ff f0 	call  1058c <Permute>
   105d0:	01 00 00 00 	nop 
   105d4:	c2 07 a0 44 	ld  [ %fp + 0x44 ], %g1
   105d8:	82 00 7f ff 	add  %g1, -1, %g1
   105dc:	c2 27 bf f4 	st  %g1, [ %fp + -12 ]
   105e0:	c2 07 bf f4 	ld  [ %fp + -12 ], %g1
   105e4:	80 a0 60 00 	cmp  %g1, 0
   105e8:	04 80 00 28 	ble  10688 <Permute+0xfc>
   105ec:	01 00 00 00 	nop 
   105f0:	c2 07 a0 44 	ld  [ %fp + 0x44 ], %g1
   105f4:	85 28 60 02 	sll  %g1, 2, %g2
   105f8:	03 00 00 c9 	sethi  %hi(0x32400), %g1
   105fc:	82 10 62 80 	or  %g1, 0x280, %g1	! 32680 <permarray>
   10600:	86 00 80 01 	add  %g2, %g1, %g3
   10604:	c2 07 bf f4 	ld  [ %fp + -12 ], %g1
   10608:	85 28 60 02 	sll  %g1, 2, %g2
   1060c:	03 00 00 c9 	sethi  %hi(0x32400), %g1
   10610:	82 10 62 80 	or  %g1, 0x280, %g1	! 32680 <permarray>
   10614:	82 00 80 01 	add  %g2, %g1, %g1
   10618:	90 10 00 03 	mov  %g3, %o0
   1061c:	92 10 00 01 	mov  %g1, %o1
   10620:	7f ff ff b5 	call  104f4 <Swap>
   10624:	01 00 00 00 	nop 
   10628:	c2 07 a0 44 	ld  [ %fp + 0x44 ], %g1
   1062c:	82 00 7f ff 	add  %g1, -1, %g1
   10630:	90 10 00 01 	mov  %g1, %o0
   10634:	7f ff ff d6 	call  1058c <Permute>
   10638:	01 00 00 00 	nop 
   1063c:	c2 07 a0 44 	ld  [ %fp + 0x44 ], %g1
   10640:	85 28 60 02 	sll  %g1, 2, %g2
   10644:	03 00 00 c9 	sethi  %hi(0x32400), %g1
   10648:	82 10 62 80 	or  %g1, 0x280, %g1	! 32680 <permarray>
   1064c:	86 00 80 01 	add  %g2, %g1, %g3
   10650:	c2 07 bf f4 	ld  [ %fp + -12 ], %g1
   10654:	85 28 60 02 	sll  %g1, 2, %g2
   10658:	03 00 00 c9 	sethi  %hi(0x32400), %g1
   1065c:	82 10 62 80 	or  %g1, 0x280, %g1	! 32680 <permarray>
   10660:	82 00 80 01 	add  %g2, %g1, %g1
   10664:	90 10 00 03 	mov  %g3, %o0
   10668:	92 10 00 01 	mov  %g1, %o1
   1066c:	7f ff ff a2 	call  104f4 <Swap>
   10670:	01 00 00 00 	nop 
   10674:	c2 07 bf f4 	ld  [ %fp + -12 ], %g1
   10678:	82 00 7f ff 	add  %g1, -1, %g1
   1067c:	c2 27 bf f4 	st  %g1, [ %fp + -12 ]
   10680:	10 bf ff d8 	b  105e0 <Permute+0x54>
   10684:	01 00 00 00 	nop 
   10688:	b0 10 00 01 	mov  %g1, %i0
   1068c:	81 c7 e0 08 	ret 
   10690:	81 e8 00 00 	restore 

00010694 <Perm>:
   10694:	9d e3 bf 90 	save  %sp, -112, %sp
   10698:	03 00 00 c1 	sethi  %hi(0x30400), %g1
   1069c:	82 10 60 20 	or  %g1, 0x20, %g1	! 30420 <pctr>
   106a0:	c0 20 40 00 	clr  [ %g1 ]
   106a4:	82 10 20 01 	mov  1, %g1
   106a8:	c2 27 bf f4 	st  %g1, [ %fp + -12 ]
   106ac:	c2 07 bf f4 	ld  [ %fp + -12 ], %g1
   106b0:	80 a0 60 05 	cmp  %g1, 5
   106b4:	14 80 00 0c 	bg  106e4 <Perm+0x50>
   106b8:	01 00 00 00 	nop 
   106bc:	7f ff ff 9e 	call  10534 <Initialize>
   106c0:	01 00 00 00 	nop 
   106c4:	90 10 20 07 	mov  7, %o0	! 7 <_init-0x10341>
   106c8:	7f ff ff b1 	call  1058c <Permute>
   106cc:	01 00 00 00 	nop 
   106d0:	c2 07 bf f4 	ld  [ %fp + -12 ], %g1
   106d4:	82 00 60 01 	inc  %g1
   106d8:	c2 27 bf f4 	st  %g1, [ %fp + -12 ]
   106dc:	10 bf ff f4 	b  106ac <Perm+0x18>
   106e0:	01 00 00 00 	nop 
   106e4:	03 00 00 c1 	sethi  %hi(0x30400), %g1
   106e8:	82 10 60 20 	or  %g1, 0x20, %g1	! 30420 <pctr>
   106ec:	c4 00 40 00 	ld  [ %g1 ], %g2
   106f0:	03 00 00 2a 	sethi  %hi(0xa800), %g1
   106f4:	82 10 61 24 	or  %g1, 0x124, %g1	! a924 <_init-0x5a24>
   106f8:	80 a0 80 01 	cmp  %g2, %g1
   106fc:	02 80 00 06 	be  10714 <Perm+0x80>
   10700:	01 00 00 00 	nop 
   10704:	03 00 00 5a 	sethi  %hi(0x16800), %g1
   10708:	90 10 61 e0 	or  %g1, 0x1e0, %o0	! 169e0 <_IO_stdin_used+0x8>
   1070c:	40 00 5e 90 	call  2814c <printf@plt>
   10710:	01 00 00 00 	nop 
   10714:	b0 10 00 01 	mov  %g1, %i0
   10718:	81 c7 e0 08 	ret 
   1071c:	81 e8 00 00 	restore 

00010720 <Error>:
   10720:	9d e3 bf 98 	save  %sp, -104, %sp
   10724:	f0 27 a0 44 	st  %i0, [ %fp + 0x44 ]
   10728:	03 00 00 5a 	sethi  %hi(0x16800), %g1
   1072c:	90 10 61 f8 	or  %g1, 0x1f8, %o0	! 169f8 <_IO_stdin_used+0x20>
   10730:	d2 07 a0 44 	ld  [ %fp + 0x44 ], %o1
   10734:	40 00 5e 86 	call  2814c <printf@plt>
   10738:	01 00 00 00 	nop 
   1073c:	b0 10 00 01 	mov  %g1, %i0
   10740:	81 c7 e0 08 	ret 
   10744:	81 e8 00 00 	restore 

00010748 <Makenull>:
   10748:	9d e3 bf 98 	save  %sp, -104, %sp
   1074c:	f0 27 a0 44 	st  %i0, [ %fp + 0x44 ]
   10750:	03 00 00 c9 	sethi  %hi(0x32400), %g1
   10754:	84 10 63 44 	or  %g1, 0x344, %g2	! 32744 <stack>
   10758:	c2 07 a0 44 	ld  [ %fp + 0x44 ], %g1
   1075c:	83 28 60 02 	sll  %g1, 2, %g1
   10760:	c0 20 80 01 	clr  [ %g2 + %g1 ]
   10764:	b0 10 00 01 	mov  %g1, %i0
   10768:	81 c7 e0 08 	ret 
   1076c:	81 e8 00 00 	restore 

00010770 <Getelement>:
   10770:	9d e3 bf 90 	save  %sp, -112, %sp
   10774:	03 00 00 fc 	sethi  %hi(0x3f000), %g1
   10778:	82 10 62 f4 	or  %g1, 0x2f4, %g1	! 3f2f4 <freelist>
   1077c:	c2 00 40 00 	ld  [ %g1 ], %g1
   10780:	80 a0 60 00 	cmp  %g1, 0
   10784:	04 80 00 13 	ble  107d0 <Getelement+0x60>
   10788:	01 00 00 00 	nop 
   1078c:	03 00 00 fc 	sethi  %hi(0x3f000), %g1
   10790:	82 10 62 f4 	or  %g1, 0x2f4, %g1	! 3f2f4 <freelist>
   10794:	c2 00 40 00 	ld  [ %g1 ], %g1
   10798:	c2 27 bf f4 	st  %g1, [ %fp + -12 ]
   1079c:	03 00 00 fc 	sethi  %hi(0x3f000), %g1
   107a0:	84 10 62 f4 	or  %g1, 0x2f4, %g2	! 3f2f4 <freelist>
   107a4:	03 00 00 c9 	sethi  %hi(0x32400), %g1
   107a8:	86 10 62 ac 	or  %g1, 0x2ac, %g3	! 326ac <cellspace>
   107ac:	03 00 00 fc 	sethi  %hi(0x3f000), %g1
   107b0:	82 10 62 f4 	or  %g1, 0x2f4, %g1	! 3f2f4 <freelist>
   107b4:	c2 00 40 00 	ld  [ %g1 ], %g1
   107b8:	83 28 60 03 	sll  %g1, 3, %g1
   107bc:	82 00 40 03 	add  %g1, %g3, %g1
   107c0:	c2 00 60 04 	ld  [ %g1 + 4 ], %g1
   107c4:	c2 20 80 00 	st  %g1, [ %g2 ]
   107c8:	10 80 00 06 	b  107e0 <Getelement+0x70>
   107cc:	01 00 00 00 	nop 
   107d0:	03 00 00 5a 	sethi  %hi(0x16800), %g1
   107d4:	90 10 62 10 	or  %g1, 0x210, %o0	! 16a10 <_IO_stdin_used+0x38>
   107d8:	7f ff ff d2 	call  10720 <Error>
   107dc:	01 00 00 00 	nop 
   107e0:	c2 07 bf f4 	ld  [ %fp + -12 ], %g1
   107e4:	b0 10 00 01 	mov  %g1, %i0
   107e8:	81 c7 e0 08 	ret 
   107ec:	81 e8 00 00 	restore 

000107f0 <Push>:
   107f0:	9d e3 bf 90 	save  %sp, -112, %sp
   107f4:	f0 27 a0 44 	st  %i0, [ %fp + 0x44 ]
   107f8:	f2 27 a0 48 	st  %i1, [ %fp + 0x48 ]
   107fc:	c0 27 bf f4 	clr  [ %fp + -12 ]
   10800:	03 00 00 c9 	sethi  %hi(0x32400), %g1
   10804:	84 10 63 44 	or  %g1, 0x344, %g2	! 32744 <stack>
   10808:	c2 07 a0 48 	ld  [ %fp + 0x48 ], %g1
   1080c:	83 28 60 02 	sll  %g1, 2, %g1
   10810:	c2 00 80 01 	ld  [ %g2 + %g1 ], %g1
   10814:	80 a0 60 00 	cmp  %g1, 0
   10818:	04 80 00 15 	ble  1086c <Push+0x7c>
   1081c:	01 00 00 00 	nop 
   10820:	03 00 00 c9 	sethi  %hi(0x32400), %g1
   10824:	86 10 62 ac 	or  %g1, 0x2ac, %g3	! 326ac <cellspace>
   10828:	03 00 00 c9 	sethi  %hi(0x32400), %g1
   1082c:	84 10 63 44 	or  %g1, 0x344, %g2	! 32744 <stack>
   10830:	c2 07 a0 48 	ld  [ %fp + 0x48 ], %g1
   10834:	83 28 60 02 	sll  %g1, 2, %g1
   10838:	c2 00 80 01 	ld  [ %g2 + %g1 ], %g1
   1083c:	83 28 60 03 	sll  %g1, 3, %g1
   10840:	c4 00 c0 01 	ld  [ %g3 + %g1 ], %g2
   10844:	c2 07 a0 44 	ld  [ %fp + 0x44 ], %g1
   10848:	80 a0 80 01 	cmp  %g2, %g1
   1084c:	14 80 00 08 	bg  1086c <Push+0x7c>
   10850:	01 00 00 00 	nop 
   10854:	82 10 20 01 	mov  1, %g1	! 1 <_init-0x10347>
   10858:	c2 27 bf f4 	st  %g1, [ %fp + -12 ]
   1085c:	03 00 00 5a 	sethi  %hi(0x16800), %g1
   10860:	90 10 62 20 	or  %g1, 0x220, %o0	! 16a20 <_IO_stdin_used+0x48>
   10864:	7f ff ff af 	call  10720 <Error>
   10868:	01 00 00 00 	nop 
   1086c:	c2 07 bf f4 	ld  [ %fp + -12 ], %g1
   10870:	80 a0 60 00 	cmp  %g1, 0
   10874:	12 80 00 1d 	bne  108e8 <Push+0xf8>
   10878:	01 00 00 00 	nop 
   1087c:	7f ff ff bd 	call  10770 <Getelement>
   10880:	01 00 00 00 	nop 
   10884:	82 10 00 08 	mov  %o0, %g1
   10888:	c2 27 bf f0 	st  %g1, [ %fp + -16 ]
   1088c:	03 00 00 c9 	sethi  %hi(0x32400), %g1
   10890:	84 10 62 ac 	or  %g1, 0x2ac, %g2	! 326ac <cellspace>
   10894:	c2 07 bf f0 	ld  [ %fp + -16 ], %g1
   10898:	83 28 60 03 	sll  %g1, 3, %g1
   1089c:	86 00 40 02 	add  %g1, %g2, %g3
   108a0:	03 00 00 c9 	sethi  %hi(0x32400), %g1
   108a4:	84 10 63 44 	or  %g1, 0x344, %g2	! 32744 <stack>
   108a8:	c2 07 a0 48 	ld  [ %fp + 0x48 ], %g1
   108ac:	83 28 60 02 	sll  %g1, 2, %g1
   108b0:	c2 00 80 01 	ld  [ %g2 + %g1 ], %g1
   108b4:	c2 20 e0 04 	st  %g1, [ %g3 + 4 ]
   108b8:	03 00 00 c9 	sethi  %hi(0x32400), %g1
   108bc:	86 10 63 44 	or  %g1, 0x344, %g3	! 32744 <stack>
   108c0:	c2 07 a0 48 	ld  [ %fp + 0x48 ], %g1
   108c4:	85 28 60 02 	sll  %g1, 2, %g2
   108c8:	c2 07 bf f0 	ld  [ %fp + -16 ], %g1
   108cc:	c2 20 c0 02 	st  %g1, [ %g3 + %g2 ]
   108d0:	03 00 00 c9 	sethi  %hi(0x32400), %g1
   108d4:	86 10 62 ac 	or  %g1, 0x2ac, %g3	! 326ac <cellspace>
   108d8:	c2 07 bf f0 	ld  [ %fp + -16 ], %g1
   108dc:	85 28 60 03 	sll  %g1, 3, %g2
   108e0:	c2 07 a0 44 	ld  [ %fp + 0x44 ], %g1
   108e4:	c2 20 c0 02 	st  %g1, [ %g3 + %g2 ]
   108e8:	b0 10 00 01 	mov  %g1, %i0
   108ec:	81 c7 e0 08 	ret 
   108f0:	81 e8 00 00 	restore 

000108f4 <Init>:
   108f4:	9d e3 bf 90 	save  %sp, -112, %sp
   108f8:	f0 27 a0 44 	st  %i0, [ %fp + 0x44 ]
   108fc:	f2 27 a0 48 	st  %i1, [ %fp + 0x48 ]
   10900:	d0 07 a0 44 	ld  [ %fp + 0x44 ], %o0
   10904:	7f ff ff 91 	call  10748 <Makenull>
   10908:	01 00 00 00 	nop 
   1090c:	c2 07 a0 48 	ld  [ %fp + 0x48 ], %g1
   10910:	c2 27 bf f4 	st  %g1, [ %fp + -12 ]
   10914:	c2 07 bf f4 	ld  [ %fp + -12 ], %g1
   10918:	80 a0 60 00 	cmp  %g1, 0
   1091c:	04 80 00 0b 	ble  10948 <Init+0x54>
   10920:	01 00 00 00 	nop 
   10924:	d0 07 bf f4 	ld  [ %fp + -12 ], %o0
   10928:	d2 07 a0 44 	ld  [ %fp + 0x44 ], %o1
   1092c:	7f ff ff b1 	call  107f0 <Push>
   10930:	01 00 00 00 	nop 
   10934:	c2 07 bf f4 	ld  [ %fp + -12 ], %g1
   10938:	82 00 7f ff 	add  %g1, -1, %g1
   1093c:	c2 27 bf f4 	st  %g1, [ %fp + -12 ]
   10940:	10 bf ff f5 	b  10914 <Init+0x20>
   10944:	01 00 00 00 	nop 
   10948:	b0 10 00 01 	mov  %g1, %i0
   1094c:	81 c7 e0 08 	ret 
   10950:	81 e8 00 00 	restore 

00010954 <Pop>:
   10954:	9d e3 bf 88 	save  %sp, -120, %sp
   10958:	f0 27 a0 44 	st  %i0, [ %fp + 0x44 ]
   1095c:	03 00 00 c9 	sethi  %hi(0x32400), %g1
   10960:	84 10 63 44 	or  %g1, 0x344, %g2	! 32744 <stack>
   10964:	c2 07 a0 44 	ld  [ %fp + 0x44 ], %g1
   10968:	83 28 60 02 	sll  %g1, 2, %g1
   1096c:	c2 00 80 01 	ld  [ %g2 + %g1 ], %g1
   10970:	80 a0 60 00 	cmp  %g1, 0
   10974:	04 80 00 36 	ble  10a4c <Pop+0xf8>
   10978:	01 00 00 00 	nop 
   1097c:	03 00 00 c9 	sethi  %hi(0x32400), %g1
   10980:	86 10 62 ac 	or  %g1, 0x2ac, %g3	! 326ac <cellspace>
   10984:	03 00 00 c9 	sethi  %hi(0x32400), %g1
   10988:	84 10 63 44 	or  %g1, 0x344, %g2	! 32744 <stack>
   1098c:	c2 07 a0 44 	ld  [ %fp + 0x44 ], %g1
   10990:	83 28 60 02 	sll  %g1, 2, %g1
   10994:	c2 00 80 01 	ld  [ %g2 + %g1 ], %g1
   10998:	83 28 60 03 	sll  %g1, 3, %g1
   1099c:	c2 00 c0 01 	ld  [ %g3 + %g1 ], %g1
   109a0:	c2 27 bf f0 	st  %g1, [ %fp + -16 ]
   109a4:	03 00 00 c9 	sethi  %hi(0x32400), %g1
   109a8:	86 10 62 ac 	or  %g1, 0x2ac, %g3	! 326ac <cellspace>
   109ac:	03 00 00 c9 	sethi  %hi(0x32400), %g1
   109b0:	84 10 63 44 	or  %g1, 0x344, %g2	! 32744 <stack>
   109b4:	c2 07 a0 44 	ld  [ %fp + 0x44 ], %g1
   109b8:	83 28 60 02 	sll  %g1, 2, %g1
   109bc:	c2 00 80 01 	ld  [ %g2 + %g1 ], %g1
   109c0:	83 28 60 03 	sll  %g1, 3, %g1
   109c4:	82 00 40 03 	add  %g1, %g3, %g1
   109c8:	c2 00 60 04 	ld  [ %g1 + 4 ], %g1
   109cc:	c2 27 bf f4 	st  %g1, [ %fp + -12 ]
   109d0:	03 00 00 c9 	sethi  %hi(0x32400), %g1
   109d4:	86 10 62 ac 	or  %g1, 0x2ac, %g3	! 326ac <cellspace>
   109d8:	03 00 00 c9 	sethi  %hi(0x32400), %g1
   109dc:	84 10 63 44 	or  %g1, 0x344, %g2	! 32744 <stack>
   109e0:	c2 07 a0 44 	ld  [ %fp + 0x44 ], %g1
   109e4:	83 28 60 02 	sll  %g1, 2, %g1
   109e8:	c2 00 80 01 	ld  [ %g2 + %g1 ], %g1
   109ec:	83 28 60 03 	sll  %g1, 3, %g1
   109f0:	84 00 40 03 	add  %g1, %g3, %g2
   109f4:	03 00 00 fc 	sethi  %hi(0x3f000), %g1
   109f8:	82 10 62 f4 	or  %g1, 0x2f4, %g1	! 3f2f4 <freelist>
   109fc:	c2 00 40 00 	ld  [ %g1 ], %g1
   10a00:	c2 20 a0 04 	st  %g1, [ %g2 + 4 ]
   10a04:	03 00 00 fc 	sethi  %hi(0x3f000), %g1
   10a08:	86 10 62 f4 	or  %g1, 0x2f4, %g3	! 3f2f4 <freelist>
   10a0c:	03 00 00 c9 	sethi  %hi(0x32400), %g1
   10a10:	84 10 63 44 	or  %g1, 0x344, %g2	! 32744 <stack>
   10a14:	c2 07 a0 44 	ld  [ %fp + 0x44 ], %g1
   10a18:	83 28 60 02 	sll  %g1, 2, %g1
   10a1c:	c2 00 80 01 	ld  [ %g2 + %g1 ], %g1
   10a20:	c2 20 c0 00 	st  %g1, [ %g3 ]
   10a24:	03 00 00 c9 	sethi  %hi(0x32400), %g1
   10a28:	86 10 63 44 	or  %g1, 0x344, %g3	! 32744 <stack>
   10a2c:	c2 07 a0 44 	ld  [ %fp + 0x44 ], %g1
   10a30:	85 28 60 02 	sll  %g1, 2, %g2
   10a34:	c2 07 bf f4 	ld  [ %fp + -12 ], %g1
   10a38:	c2 20 c0 02 	st  %g1, [ %g3 + %g2 ]
   10a3c:	c2 07 bf f0 	ld  [ %fp + -16 ], %g1
   10a40:	c2 27 bf ec 	st  %g1, [ %fp + -20 ]
   10a44:	10 80 00 06 	b  10a5c <Pop+0x108>
   10a48:	01 00 00 00 	nop 
   10a4c:	03 00 00 5a 	sethi  %hi(0x16800), %g1
   10a50:	90 10 62 30 	or  %g1, 0x230, %o0	! 16a30 <_IO_stdin_used+0x58>
   10a54:	7f ff ff 33 	call  10720 <Error>
   10a58:	01 00 00 00 	nop 
   10a5c:	f0 07 bf ec 	ld  [ %fp + -20 ], %i0
   10a60:	81 c7 e0 08 	ret 
   10a64:	81 e8 00 00 	restore 

00010a68 <Move>:
   10a68:	9d e3 bf 98 	save  %sp, -104, %sp
   10a6c:	f0 27 a0 44 	st  %i0, [ %fp + 0x44 ]
   10a70:	f2 27 a0 48 	st  %i1, [ %fp + 0x48 ]
   10a74:	d0 07 a0 44 	ld  [ %fp + 0x44 ], %o0
   10a78:	7f ff ff b7 	call  10954 <Pop>
   10a7c:	01 00 00 00 	nop 
   10a80:	82 10 00 08 	mov  %o0, %g1
   10a84:	90 10 00 01 	mov  %g1, %o0
   10a88:	d2 07 a0 48 	ld  [ %fp + 0x48 ], %o1
   10a8c:	7f ff ff 59 	call  107f0 <Push>
   10a90:	01 00 00 00 	nop 
   10a94:	03 00 00 c0 	sethi  %hi(0x30000), %g1
   10a98:	84 10 63 ec 	or  %g1, 0x3ec, %g2	! 303ec <movesdone>
   10a9c:	03 00 00 c0 	sethi  %hi(0x30000), %g1
   10aa0:	82 10 63 ec 	or  %g1, 0x3ec, %g1	! 303ec <movesdone>
   10aa4:	c2 00 40 00 	ld  [ %g1 ], %g1
   10aa8:	82 00 60 01 	inc  %g1
   10aac:	c2 20 80 00 	st  %g1, [ %g2 ]
   10ab0:	b0 10 00 01 	mov  %g1, %i0
   10ab4:	81 c7 e0 08 	ret 
   10ab8:	81 e8 00 00 	restore 

00010abc <tower>:
   10abc:	9d e3 bf 90 	save  %sp, -112, %sp
   10ac0:	f0 27 a0 44 	st  %i0, [ %fp + 0x44 ]
   10ac4:	f2 27 a0 48 	st  %i1, [ %fp + 0x48 ]
   10ac8:	f4 27 a0 4c 	st  %i2, [ %fp + 0x4c ]
   10acc:	c2 07 a0 4c 	ld  [ %fp + 0x4c ], %g1
   10ad0:	80 a0 60 01 	cmp  %g1, 1
   10ad4:	12 80 00 08 	bne  10af4 <tower+0x38>
   10ad8:	01 00 00 00 	nop 
   10adc:	d0 07 a0 44 	ld  [ %fp + 0x44 ], %o0
   10ae0:	d2 07 a0 48 	ld  [ %fp + 0x48 ], %o1
   10ae4:	7f ff ff e1 	call  10a68 <Move>
   10ae8:	01 00 00 00 	nop 
   10aec:	10 80 00 1a 	b  10b54 <tower+0x98>
   10af0:	01 00 00 00 	nop 
   10af4:	c2 07 a0 44 	ld  [ %fp + 0x44 ], %g1
   10af8:	84 20 00 01 	neg  %g1, %g2
   10afc:	c2 07 a0 48 	ld  [ %fp + 0x48 ], %g1
   10b00:	82 20 80 01 	sub  %g2, %g1, %g1
   10b04:	82 00 60 06 	add  %g1, 6, %g1
   10b08:	c2 27 bf f4 	st  %g1, [ %fp + -12 ]
   10b0c:	c2 07 a0 4c 	ld  [ %fp + 0x4c ], %g1
   10b10:	82 00 7f ff 	add  %g1, -1, %g1
   10b14:	d0 07 a0 44 	ld  [ %fp + 0x44 ], %o0
   10b18:	d2 07 bf f4 	ld  [ %fp + -12 ], %o1
   10b1c:	94 10 00 01 	mov  %g1, %o2
   10b20:	7f ff ff e7 	call  10abc <tower>
   10b24:	01 00 00 00 	nop 
   10b28:	d0 07 a0 44 	ld  [ %fp + 0x44 ], %o0
   10b2c:	d2 07 a0 48 	ld  [ %fp + 0x48 ], %o1
   10b30:	7f ff ff ce 	call  10a68 <Move>
   10b34:	01 00 00 00 	nop 
   10b38:	c2 07 a0 4c 	ld  [ %fp + 0x4c ], %g1
   10b3c:	82 00 7f ff 	add  %g1, -1, %g1
   10b40:	d0 07 bf f4 	ld  [ %fp + -12 ], %o0
   10b44:	d2 07 a0 48 	ld  [ %fp + 0x48 ], %o1
   10b48:	94 10 00 01 	mov  %g1, %o2
   10b4c:	7f ff ff dc 	call  10abc <tower>
   10b50:	01 00 00 00 	nop 
   10b54:	b0 10 00 01 	mov  %g1, %i0
   10b58:	81 c7 e0 08 	ret 
   10b5c:	81 e8 00 00 	restore 

00010b60 <Towers>:
   10b60:	9d e3 bf 90 	save  %sp, -112, %sp
   10b64:	82 10 20 01 	mov  1, %g1
   10b68:	c2 27 bf f4 	st  %g1, [ %fp + -12 ]
   10b6c:	c2 07 bf f4 	ld  [ %fp + -12 ], %g1
   10b70:	80 a0 60 12 	cmp  %g1, 0x12
   10b74:	14 80 00 0f 	bg  10bb0 <Towers+0x50>
   10b78:	01 00 00 00 	nop 
   10b7c:	03 00 00 c9 	sethi  %hi(0x32400), %g1
   10b80:	84 10 62 ac 	or  %g1, 0x2ac, %g2	! 326ac <cellspace>
   10b84:	c2 07 bf f4 	ld  [ %fp + -12 ], %g1
   10b88:	83 28 60 03 	sll  %g1, 3, %g1
   10b8c:	84 00 40 02 	add  %g1, %g2, %g2
   10b90:	c2 07 bf f4 	ld  [ %fp + -12 ], %g1
   10b94:	82 00 7f ff 	add  %g1, -1, %g1
   10b98:	c2 20 a0 04 	st  %g1, [ %g2 + 4 ]
   10b9c:	c2 07 bf f4 	ld  [ %fp + -12 ], %g1
   10ba0:	82 00 60 01 	inc  %g1
   10ba4:	c2 27 bf f4 	st  %g1, [ %fp + -12 ]
   10ba8:	10 bf ff f1 	b  10b6c <Towers+0xc>
   10bac:	01 00 00 00 	nop 
   10bb0:	03 00 00 fc 	sethi  %hi(0x3f000), %g1
   10bb4:	84 10 62 f4 	or  %g1, 0x2f4, %g2	! 3f2f4 <freelist>
   10bb8:	82 10 20 12 	mov  0x12, %g1
   10bbc:	c2 20 80 00 	st  %g1, [ %g2 ]
   10bc0:	90 10 20 01 	mov  1, %o0
   10bc4:	92 10 20 0e 	mov  0xe, %o1
   10bc8:	7f ff ff 4b 	call  108f4 <Init>
   10bcc:	01 00 00 00 	nop 
   10bd0:	90 10 20 02 	mov  2, %o0	! 2 <_init-0x10346>
   10bd4:	7f ff fe dd 	call  10748 <Makenull>
   10bd8:	01 00 00 00 	nop 
   10bdc:	90 10 20 03 	mov  3, %o0	! 3 <_init-0x10345>
   10be0:	7f ff fe da 	call  10748 <Makenull>
   10be4:	01 00 00 00 	nop 
   10be8:	03 00 00 c0 	sethi  %hi(0x30000), %g1
   10bec:	82 10 63 ec 	or  %g1, 0x3ec, %g1	! 303ec <movesdone>
   10bf0:	c0 20 40 00 	clr  [ %g1 ]
   10bf4:	90 10 20 01 	mov  1, %o0
   10bf8:	92 10 20 02 	mov  2, %o1
   10bfc:	94 10 20 0e 	mov  0xe, %o2
   10c00:	7f ff ff af 	call  10abc <tower>
   10c04:	01 00 00 00 	nop 
   10c08:	03 00 00 c0 	sethi  %hi(0x30000), %g1
   10c0c:	82 10 63 ec 	or  %g1, 0x3ec, %g1	! 303ec <movesdone>
   10c10:	c4 00 40 00 	ld  [ %g1 ], %g2
   10c14:	03 00 00 0f 	sethi  %hi(0x3c00), %g1
   10c18:	82 10 63 ff 	or  %g1, 0x3ff, %g1	! 3fff <_init-0xc349>
   10c1c:	80 a0 80 01 	cmp  %g2, %g1
   10c20:	02 80 00 06 	be  10c38 <Towers+0xd8>
   10c24:	01 00 00 00 	nop 
   10c28:	03 00 00 5a 	sethi  %hi(0x16800), %g1
   10c2c:	90 10 62 40 	or  %g1, 0x240, %o0	! 16a40 <_IO_stdin_used+0x68>
   10c30:	40 00 5d 47 	call  2814c <printf@plt>
   10c34:	01 00 00 00 	nop 
   10c38:	b0 10 00 01 	mov  %g1, %i0
   10c3c:	81 c7 e0 08 	ret 
   10c40:	81 e8 00 00 	restore 

00010c44 <Try>:
   10c44:	9d e3 bf 90 	save  %sp, -112, %sp
   10c48:	f0 27 a0 44 	st  %i0, [ %fp + 0x44 ]
   10c4c:	f2 27 a0 48 	st  %i1, [ %fp + 0x48 ]
   10c50:	f4 27 a0 4c 	st  %i2, [ %fp + 0x4c ]
   10c54:	f6 27 a0 50 	st  %i3, [ %fp + 0x50 ]
   10c58:	f8 27 a0 54 	st  %i4, [ %fp + 0x54 ]
   10c5c:	fa 27 a0 58 	st  %i5, [ %fp + 0x58 ]
   10c60:	c0 27 bf f4 	clr  [ %fp + -12 ]
   10c64:	c2 07 a0 48 	ld  [ %fp + 0x48 ], %g1
   10c68:	c0 20 40 00 	clr  [ %g1 ]
   10c6c:	c2 07 a0 48 	ld  [ %fp + 0x48 ], %g1
   10c70:	c2 00 40 00 	ld  [ %g1 ], %g1
   10c74:	80 a0 60 00 	cmp  %g1, 0
   10c78:	12 80 00 70 	bne  10e38 <Try+0x1f4>
   10c7c:	01 00 00 00 	nop 
   10c80:	c2 07 bf f4 	ld  [ %fp + -12 ], %g1
   10c84:	80 a0 60 08 	cmp  %g1, 8
   10c88:	02 80 00 6c 	be  10e38 <Try+0x1f4>
   10c8c:	01 00 00 00 	nop 
   10c90:	c2 07 bf f4 	ld  [ %fp + -12 ], %g1
   10c94:	82 00 60 01 	inc  %g1
   10c98:	c2 27 bf f4 	st  %g1, [ %fp + -12 ]
   10c9c:	c2 07 a0 48 	ld  [ %fp + 0x48 ], %g1
   10ca0:	c0 20 40 00 	clr  [ %g1 ]
   10ca4:	c2 07 bf f4 	ld  [ %fp + -12 ], %g1
   10ca8:	85 28 60 02 	sll  %g1, 2, %g2
   10cac:	c2 07 a0 50 	ld  [ %fp + 0x50 ], %g1
   10cb0:	82 00 80 01 	add  %g2, %g1, %g1
   10cb4:	c2 00 40 00 	ld  [ %g1 ], %g1
   10cb8:	80 a0 60 00 	cmp  %g1, 0
   10cbc:	02 bf ff ec 	be  10c6c <Try+0x28>
   10cc0:	01 00 00 00 	nop 
   10cc4:	c4 07 a0 44 	ld  [ %fp + 0x44 ], %g2
   10cc8:	c2 07 bf f4 	ld  [ %fp + -12 ], %g1
   10ccc:	82 00 80 01 	add  %g2, %g1, %g1
   10cd0:	85 28 60 02 	sll  %g1, 2, %g2
   10cd4:	c2 07 a0 4c 	ld  [ %fp + 0x4c ], %g1
   10cd8:	82 00 80 01 	add  %g2, %g1, %g1
   10cdc:	c2 00 40 00 	ld  [ %g1 ], %g1
   10ce0:	80 a0 60 00 	cmp  %g1, 0
   10ce4:	02 bf ff e2 	be  10c6c <Try+0x28>
   10ce8:	01 00 00 00 	nop 
   10cec:	c4 07 a0 44 	ld  [ %fp + 0x44 ], %g2
   10cf0:	c2 07 bf f4 	ld  [ %fp + -12 ], %g1
   10cf4:	82 20 80 01 	sub  %g2, %g1, %g1
   10cf8:	85 28 60 02 	sll  %g1, 2, %g2
   10cfc:	c2 07 a0 54 	ld  [ %fp + 0x54 ], %g1
   10d00:	82 00 80 01 	add  %g2, %g1, %g1
   10d04:	c2 00 60 1c 	ld  [ %g1 + 0x1c ], %g1
   10d08:	80 a0 60 00 	cmp  %g1, 0
   10d0c:	02 bf ff d8 	be  10c6c <Try+0x28>
   10d10:	01 00 00 00 	nop 
   10d14:	c2 07 a0 44 	ld  [ %fp + 0x44 ], %g1
   10d18:	85 28 60 02 	sll  %g1, 2, %g2
   10d1c:	c2 07 a0 58 	ld  [ %fp + 0x58 ], %g1
   10d20:	84 00 80 01 	add  %g2, %g1, %g2
   10d24:	c2 07 bf f4 	ld  [ %fp + -12 ], %g1
   10d28:	c2 20 80 00 	st  %g1, [ %g2 ]
   10d2c:	c2 07 bf f4 	ld  [ %fp + -12 ], %g1
   10d30:	85 28 60 02 	sll  %g1, 2, %g2
   10d34:	c2 07 a0 50 	ld  [ %fp + 0x50 ], %g1
   10d38:	82 00 80 01 	add  %g2, %g1, %g1
   10d3c:	c0 20 40 00 	clr  [ %g1 ]
   10d40:	c4 07 a0 44 	ld  [ %fp + 0x44 ], %g2
   10d44:	c2 07 bf f4 	ld  [ %fp + -12 ], %g1
   10d48:	82 00 80 01 	add  %g2, %g1, %g1
   10d4c:	85 28 60 02 	sll  %g1, 2, %g2
   10d50:	c2 07 a0 4c 	ld  [ %fp + 0x4c ], %g1
   10d54:	82 00 80 01 	add  %g2, %g1, %g1
   10d58:	c0 20 40 00 	clr  [ %g1 ]
   10d5c:	c4 07 a0 44 	ld  [ %fp + 0x44 ], %g2
   10d60:	c2 07 bf f4 	ld  [ %fp + -12 ], %g1
   10d64:	82 20 80 01 	sub  %g2, %g1, %g1
   10d68:	85 28 60 02 	sll  %g1, 2, %g2
   10d6c:	c2 07 a0 54 	ld  [ %fp + 0x54 ], %g1
   10d70:	82 00 80 01 	add  %g2, %g1, %g1
   10d74:	c0 20 60 1c 	clr  [ %g1 + 0x1c ]
   10d78:	c2 07 a0 44 	ld  [ %fp + 0x44 ], %g1
   10d7c:	80 a0 60 07 	cmp  %g1, 7
   10d80:	14 80 00 29 	bg  10e24 <Try+0x1e0>
   10d84:	01 00 00 00 	nop 
   10d88:	c2 07 a0 44 	ld  [ %fp + 0x44 ], %g1
   10d8c:	82 00 60 01 	inc  %g1
   10d90:	90 10 00 01 	mov  %g1, %o0
   10d94:	d2 07 a0 48 	ld  [ %fp + 0x48 ], %o1
   10d98:	d4 07 a0 4c 	ld  [ %fp + 0x4c ], %o2
   10d9c:	d6 07 a0 50 	ld  [ %fp + 0x50 ], %o3
   10da0:	d8 07 a0 54 	ld  [ %fp + 0x54 ], %o4
   10da4:	da 07 a0 58 	ld  [ %fp + 0x58 ], %o5
   10da8:	7f ff ff a7 	call  10c44 <Try>
   10dac:	01 00 00 00 	nop 
   10db0:	c2 07 a0 48 	ld  [ %fp + 0x48 ], %g1
   10db4:	c2 00 40 00 	ld  [ %g1 ], %g1
   10db8:	80 a0 60 00 	cmp  %g1, 0
   10dbc:	12 bf ff ac 	bne  10c6c <Try+0x28>
   10dc0:	01 00 00 00 	nop 
   10dc4:	c2 07 bf f4 	ld  [ %fp + -12 ], %g1
   10dc8:	85 28 60 02 	sll  %g1, 2, %g2
   10dcc:	c2 07 a0 50 	ld  [ %fp + 0x50 ], %g1
   10dd0:	84 00 80 01 	add  %g2, %g1, %g2
   10dd4:	82 10 20 01 	mov  1, %g1
   10dd8:	c2 20 80 00 	st  %g1, [ %g2 ]
   10ddc:	c4 07 a0 44 	ld  [ %fp + 0x44 ], %g2
   10de0:	c2 07 bf f4 	ld  [ %fp + -12 ], %g1
   10de4:	82 00 80 01 	add  %g2, %g1, %g1
   10de8:	85 28 60 02 	sll  %g1, 2, %g2
   10dec:	c2 07 a0 4c 	ld  [ %fp + 0x4c ], %g1
   10df0:	84 00 80 01 	add  %g2, %g1, %g2
   10df4:	82 10 20 01 	mov  1, %g1
   10df8:	c2 20 80 00 	st  %g1, [ %g2 ]
   10dfc:	c4 07 a0 44 	ld  [ %fp + 0x44 ], %g2
   10e00:	c2 07 bf f4 	ld  [ %fp + -12 ], %g1
   10e04:	82 20 80 01 	sub  %g2, %g1, %g1
   10e08:	85 28 60 02 	sll  %g1, 2, %g2
   10e0c:	c2 07 a0 54 	ld  [ %fp + 0x54 ], %g1
   10e10:	84 00 80 01 	add  %g2, %g1, %g2
   10e14:	82 10 20 01 	mov  1, %g1
   10e18:	c2 20 a0 1c 	st  %g1, [ %g2 + 0x1c ]
   10e1c:	10 bf ff 94 	b  10c6c <Try+0x28>
   10e20:	01 00 00 00 	nop 
   10e24:	c4 07 a0 48 	ld  [ %fp + 0x48 ], %g2
   10e28:	82 10 20 01 	mov  1, %g1
   10e2c:	c2 20 80 00 	st  %g1, [ %g2 ]
   10e30:	10 bf ff 8f 	b  10c6c <Try+0x28>
   10e34:	01 00 00 00 	nop 
   10e38:	b0 10 00 01 	mov  %g1, %i0
   10e3c:	81 c7 e0 08 	ret 
   10e40:	81 e8 00 00 	restore 

00010e44 <Doit>:
   10e44:	9d e3 be b8 	save  %sp, -328, %sp
   10e48:	82 10 3f f9 	mov  -7, %g1
   10e4c:	c2 27 bf f4 	st  %g1, [ %fp + -12 ]
   10e50:	c2 07 bf f4 	ld  [ %fp + -12 ], %g1
   10e54:	80 a0 60 10 	cmp  %g1, 0x10
   10e58:	14 80 00 29 	bg  10efc <Doit+0xb8>
   10e5c:	01 00 00 00 	nop 
   10e60:	c2 07 bf f4 	ld  [ %fp + -12 ], %g1
   10e64:	80 a0 60 00 	cmp  %g1, 0
   10e68:	04 80 00 0c 	ble  10e98 <Doit+0x54>
   10e6c:	01 00 00 00 	nop 
   10e70:	c2 07 bf f4 	ld  [ %fp + -12 ], %g1
   10e74:	80 a0 60 08 	cmp  %g1, 8
   10e78:	14 80 00 08 	bg  10e98 <Doit+0x54>
   10e7c:	01 00 00 00 	nop 
   10e80:	c2 07 bf f4 	ld  [ %fp + -12 ], %g1
   10e84:	85 28 60 02 	sll  %g1, 2, %g2
   10e88:	82 07 bf f8 	add  %fp, -8, %g1
   10e8c:	84 00 80 01 	add  %g2, %g1, %g2
   10e90:	82 10 20 01 	mov  1, %g1
   10e94:	c2 20 bf d0 	st  %g1, [ %g2 + -48 ]
   10e98:	c2 07 bf f4 	ld  [ %fp + -12 ], %g1
   10e9c:	80 a0 60 01 	cmp  %g1, 1
   10ea0:	04 80 00 08 	ble  10ec0 <Doit+0x7c>
   10ea4:	01 00 00 00 	nop 
   10ea8:	c2 07 bf f4 	ld  [ %fp + -12 ], %g1
   10eac:	85 28 60 02 	sll  %g1, 2, %g2
   10eb0:	82 07 bf f8 	add  %fp, -8, %g1
   10eb4:	84 00 80 01 	add  %g2, %g1, %g2
   10eb8:	82 10 20 01 	mov  1, %g1
   10ebc:	c2 20 bf 88 	st  %g1, [ %g2 + -120 ]
   10ec0:	c2 07 bf f4 	ld  [ %fp + -12 ], %g1
   10ec4:	80 a0 60 07 	cmp  %g1, 7
   10ec8:	14 80 00 08 	bg  10ee8 <Doit+0xa4>
   10ecc:	01 00 00 00 	nop 
   10ed0:	c2 07 bf f4 	ld  [ %fp + -12 ], %g1
   10ed4:	85 28 60 02 	sll  %g1, 2, %g2
   10ed8:	82 07 bf f8 	add  %fp, -8, %g1
   10edc:	84 00 80 01 	add  %g2, %g1, %g2
   10ee0:	82 10 20 01 	mov  1, %g1
   10ee4:	c2 20 bf 64 	st  %g1, [ %g2 + -156 ]
   10ee8:	c2 07 bf f4 	ld  [ %fp + -12 ], %g1
   10eec:	82 00 60 01 	inc  %g1
   10ef0:	c2 27 bf f4 	st  %g1, [ %fp + -12 ]
   10ef4:	10 bf ff d7 	b  10e50 <Doit+0xc>
   10ef8:	01 00 00 00 	nop 
   10efc:	82 07 bf f0 	add  %fp, -16, %g1
   10f00:	84 07 bf 80 	add  %fp, -128, %g2
   10f04:	86 07 bf c8 	add  %fp, -56, %g3
   10f08:	88 07 bf 40 	add  %fp, -192, %g4
   10f0c:	9a 07 bf 18 	add  %fp, -232, %o5
   10f10:	90 10 20 01 	mov  1, %o0
   10f14:	92 10 00 01 	mov  %g1, %o1
   10f18:	94 10 00 02 	mov  %g2, %o2
   10f1c:	96 10 00 03 	mov  %g3, %o3
   10f20:	98 10 00 04 	mov  %g4, %o4
   10f24:	7f ff ff 48 	call  10c44 <Try>
   10f28:	01 00 00 00 	nop 
   10f2c:	c2 07 bf f0 	ld  [ %fp + -16 ], %g1
   10f30:	80 a0 60 00 	cmp  %g1, 0
   10f34:	12 80 00 06 	bne  10f4c <Doit+0x108>
   10f38:	01 00 00 00 	nop 
   10f3c:	03 00 00 5a 	sethi  %hi(0x16800), %g1
   10f40:	90 10 62 58 	or  %g1, 0x258, %o0	! 16a58 <_IO_stdin_used+0x80>
   10f44:	40 00 5c 82 	call  2814c <printf@plt>
   10f48:	01 00 00 00 	nop 
   10f4c:	b0 10 00 01 	mov  %g1, %i0
   10f50:	81 c7 e0 08 	ret 
   10f54:	81 e8 00 00 	restore 

00010f58 <Queens>:
   10f58:	9d e3 bf 90 	save  %sp, -112, %sp
   10f5c:	82 10 20 01 	mov  1, %g1
   10f60:	c2 27 bf f4 	st  %g1, [ %fp + -12 ]
   10f64:	c2 07 bf f4 	ld  [ %fp + -12 ], %g1
   10f68:	80 a0 60 32 	cmp  %g1, 0x32
   10f6c:	14 80 00 09 	bg  10f90 <Queens+0x38>
   10f70:	01 00 00 00 	nop 
   10f74:	7f ff ff b4 	call  10e44 <Doit>
   10f78:	01 00 00 00 	nop 
   10f7c:	c2 07 bf f4 	ld  [ %fp + -12 ], %g1
   10f80:	82 00 60 01 	inc  %g1
   10f84:	c2 27 bf f4 	st  %g1, [ %fp + -12 ]
   10f88:	10 bf ff f7 	b  10f64 <Queens+0xc>
   10f8c:	01 00 00 00 	nop 
   10f90:	b0 10 00 01 	mov  %g1, %i0
   10f94:	81 c7 e0 08 	ret 
   10f98:	81 e8 00 00 	restore 

00010f9c <Initmatrix>:
   10f9c:	9d e3 bf 88 	save  %sp, -120, %sp
   10fa0:	f0 27 a0 44 	st  %i0, [ %fp + 0x44 ]
   10fa4:	82 10 20 01 	mov  1, %g1
   10fa8:	c2 27 bf f0 	st  %g1, [ %fp + -16 ]
   10fac:	c2 07 bf f0 	ld  [ %fp + -16 ], %g1
   10fb0:	80 a0 60 28 	cmp  %g1, 0x28
   10fb4:	14 80 00 32 	bg  1107c <Initmatrix+0xe0>
   10fb8:	01 00 00 00 	nop 
   10fbc:	82 10 20 01 	mov  1, %g1	! 1 <_init-0x10347>
   10fc0:	c2 27 bf ec 	st  %g1, [ %fp + -20 ]
   10fc4:	c2 07 bf ec 	ld  [ %fp + -20 ], %g1
   10fc8:	80 a0 60 28 	cmp  %g1, 0x28
   10fcc:	14 80 00 27 	bg  11068 <Initmatrix+0xcc>
   10fd0:	01 00 00 00 	nop 
   10fd4:	7f ff fd 34 	call  104a4 <Rand>
   10fd8:	01 00 00 00 	nop 
   10fdc:	82 10 00 08 	mov  %o0, %g1
   10fe0:	c2 27 bf f4 	st  %g1, [ %fp + -12 ]
   10fe4:	c4 07 bf f0 	ld  [ %fp + -16 ], %g2
   10fe8:	82 10 00 02 	mov  %g2, %g1
   10fec:	83 28 60 02 	sll  %g1, 2, %g1
   10ff0:	82 00 40 02 	add  %g1, %g2, %g1
   10ff4:	83 28 60 03 	sll  %g1, 3, %g1
   10ff8:	82 00 40 02 	add  %g1, %g2, %g1
   10ffc:	c4 07 bf ec 	ld  [ %fp + -20 ], %g2
   11000:	82 00 40 02 	add  %g1, %g2, %g1
   11004:	85 28 60 02 	sll  %g1, 2, %g2
   11008:	c2 07 a0 44 	ld  [ %fp + 0x44 ], %g1
   1100c:	88 00 80 01 	add  %g2, %g1, %g4
   11010:	c4 07 bf f4 	ld  [ %fp + -12 ], %g2
   11014:	03 22 22 22 	sethi  %hi(0x88888800), %g1
   11018:	82 10 60 89 	or  %g1, 0x89, %g1	! 88888889 <_end+0x88849589>
   1101c:	80 58 80 01 	smul  %g2, %g1, %g0
   11020:	83 40 00 00 	rd  %y, %g1
   11024:	82 00 40 02 	add  %g1, %g2, %g1
   11028:	87 38 60 06 	sra  %g1, 6, %g3
   1102c:	83 38 a0 1f 	sra  %g2, 0x1f, %g1
   11030:	84 20 c0 01 	sub  %g3, %g1, %g2
   11034:	82 10 00 02 	mov  %g2, %g1
   11038:	83 28 60 04 	sll  %g1, 4, %g1
   1103c:	82 20 40 02 	sub  %g1, %g2, %g1
   11040:	85 28 60 03 	sll  %g1, 3, %g2
   11044:	c2 07 bf f4 	ld  [ %fp + -12 ], %g1
   11048:	82 20 40 02 	sub  %g1, %g2, %g1
   1104c:	82 00 7f c4 	add  %g1, -60, %g1
   11050:	c2 21 00 00 	st  %g1, [ %g4 ]
   11054:	c2 07 bf ec 	ld  [ %fp + -20 ], %g1
   11058:	82 00 60 01 	inc  %g1
   1105c:	c2 27 bf ec 	st  %g1, [ %fp + -20 ]
   11060:	10 bf ff d9 	b  10fc4 <Initmatrix+0x28>
   11064:	01 00 00 00 	nop 
   11068:	c2 07 bf f0 	ld  [ %fp + -16 ], %g1
   1106c:	82 00 60 01 	inc  %g1
   11070:	c2 27 bf f0 	st  %g1, [ %fp + -16 ]
   11074:	10 bf ff ce 	b  10fac <Initmatrix+0x10>
   11078:	01 00 00 00 	nop 
   1107c:	b0 10 00 01 	mov  %g1, %i0
   11080:	81 c7 e0 08 	ret 
   11084:	81 e8 00 00 	restore 

00011088 <Innerproduct>:
   11088:	9d e3 bf 90 	save  %sp, -112, %sp
   1108c:	f0 27 a0 44 	st  %i0, [ %fp + 0x44 ]
   11090:	f2 27 a0 48 	st  %i1, [ %fp + 0x48 ]
   11094:	f4 27 a0 4c 	st  %i2, [ %fp + 0x4c ]
   11098:	f6 27 a0 50 	st  %i3, [ %fp + 0x50 ]
   1109c:	f8 27 a0 54 	st  %i4, [ %fp + 0x54 ]
   110a0:	c2 07 a0 44 	ld  [ %fp + 0x44 ], %g1
   110a4:	c0 20 40 00 	clr  [ %g1 ]
   110a8:	82 10 20 01 	mov  1, %g1
   110ac:	c2 27 bf f4 	st  %g1, [ %fp + -12 ]
   110b0:	c2 07 bf f4 	ld  [ %fp + -12 ], %g1
   110b4:	80 a0 60 28 	cmp  %g1, 0x28
   110b8:	14 80 00 25 	bg  1114c <Innerproduct+0xc4>
   110bc:	01 00 00 00 	nop 
   110c0:	c6 07 a0 44 	ld  [ %fp + 0x44 ], %g3
   110c4:	c8 07 a0 44 	ld  [ %fp + 0x44 ], %g4
   110c8:	c4 07 a0 50 	ld  [ %fp + 0x50 ], %g2
   110cc:	82 10 00 02 	mov  %g2, %g1
   110d0:	83 28 60 02 	sll  %g1, 2, %g1
   110d4:	82 00 40 02 	add  %g1, %g2, %g1
   110d8:	83 28 60 03 	sll  %g1, 3, %g1
   110dc:	82 00 40 02 	add  %g1, %g2, %g1
   110e0:	c4 07 bf f4 	ld  [ %fp + -12 ], %g2
   110e4:	82 00 40 02 	add  %g1, %g2, %g1
   110e8:	85 28 60 02 	sll  %g1, 2, %g2
   110ec:	c2 07 a0 48 	ld  [ %fp + 0x48 ], %g1
   110f0:	ba 00 80 01 	add  %g2, %g1, %i5
   110f4:	c4 07 bf f4 	ld  [ %fp + -12 ], %g2
   110f8:	82 10 00 02 	mov  %g2, %g1
   110fc:	83 28 60 02 	sll  %g1, 2, %g1
   11100:	82 00 40 02 	add  %g1, %g2, %g1
   11104:	83 28 60 03 	sll  %g1, 3, %g1
   11108:	82 00 40 02 	add  %g1, %g2, %g1
   1110c:	c4 07 a0 54 	ld  [ %fp + 0x54 ], %g2
   11110:	82 00 40 02 	add  %g1, %g2, %g1
   11114:	85 28 60 02 	sll  %g1, 2, %g2
   11118:	c2 07 a0 4c 	ld  [ %fp + 0x4c ], %g1
   1111c:	82 00 80 01 	add  %g2, %g1, %g1
   11120:	c4 07 40 00 	ld  [ %i5 ], %g2
   11124:	c2 00 40 00 	ld  [ %g1 ], %g1
   11128:	84 58 80 01 	smul  %g2, %g1, %g2
   1112c:	c2 01 00 00 	ld  [ %g4 ], %g1
   11130:	82 00 40 02 	add  %g1, %g2, %g1
   11134:	c2 20 c0 00 	st  %g1, [ %g3 ]
   11138:	c2 07 bf f4 	ld  [ %fp + -12 ], %g1
   1113c:	82 00 60 01 	inc  %g1
   11140:	c2 27 bf f4 	st  %g1, [ %fp + -12 ]
   11144:	10 bf ff db 	b  110b0 <Innerproduct+0x28>
   11148:	01 00 00 00 	nop 
   1114c:	b0 10 00 01 	mov  %g1, %i0
   11150:	81 c7 e0 08 	ret 
   11154:	81 e8 00 00 	restore 

00011158 <Intmm>:
   11158:	9d e3 bf 90 	save  %sp, -112, %sp
   1115c:	7f ff fc c9 	call  10480 <Initrand>
   11160:	01 00 00 00 	nop 
   11164:	03 00 00 df 	sethi  %hi(0x37c00), %g1
   11168:	90 10 61 94 	or  %g1, 0x194, %o0	! 37d94 <ima>
   1116c:	7f ff ff 8c 	call  10f9c <Initmatrix>
   11170:	01 00 00 00 	nop 
   11174:	03 00 00 e5 	sethi  %hi(0x39400), %g1
   11178:	90 10 63 d8 	or  %g1, 0x3d8, %o0	! 397d8 <imb>
   1117c:	7f ff ff 88 	call  10f9c <Initmatrix>
   11180:	01 00 00 00 	nop 
   11184:	82 10 20 01 	mov  1, %g1	! 1 <_init-0x10347>
   11188:	c2 27 bf f4 	st  %g1, [ %fp + -12 ]
   1118c:	c2 07 bf f4 	ld  [ %fp + -12 ], %g1
   11190:	80 a0 60 28 	cmp  %g1, 0x28
   11194:	14 80 00 27 	bg  11230 <Intmm+0xd8>
   11198:	01 00 00 00 	nop 
   1119c:	82 10 20 01 	mov  1, %g1	! 1 <_init-0x10347>
   111a0:	c2 27 bf f0 	st  %g1, [ %fp + -16 ]
   111a4:	c2 07 bf f0 	ld  [ %fp + -16 ], %g1
   111a8:	80 a0 60 28 	cmp  %g1, 0x28
   111ac:	14 80 00 1c 	bg  1121c <Intmm+0xc4>
   111b0:	01 00 00 00 	nop 
   111b4:	c4 07 bf f4 	ld  [ %fp + -12 ], %g2
   111b8:	82 10 00 02 	mov  %g2, %g1
   111bc:	83 28 60 02 	sll  %g1, 2, %g1
   111c0:	82 00 40 02 	add  %g1, %g2, %g1
   111c4:	83 28 60 03 	sll  %g1, 3, %g1
   111c8:	82 00 40 02 	add  %g1, %g2, %g1
   111cc:	c4 07 bf f0 	ld  [ %fp + -16 ], %g2
   111d0:	82 00 40 02 	add  %g1, %g2, %g1
   111d4:	85 28 60 02 	sll  %g1, 2, %g2
   111d8:	03 00 00 ee 	sethi  %hi(0x3b800), %g1
   111dc:	82 10 62 58 	or  %g1, 0x258, %g1	! 3ba58 <imr>
   111e0:	82 00 80 01 	add  %g2, %g1, %g1
   111e4:	90 10 00 01 	mov  %g1, %o0
   111e8:	03 00 00 df 	sethi  %hi(0x37c00), %g1
   111ec:	92 10 61 94 	or  %g1, 0x194, %o1	! 37d94 <ima>
   111f0:	03 00 00 e5 	sethi  %hi(0x39400), %g1
   111f4:	94 10 63 d8 	or  %g1, 0x3d8, %o2	! 397d8 <imb>
   111f8:	d6 07 bf f4 	ld  [ %fp + -12 ], %o3
   111fc:	d8 07 bf f0 	ld  [ %fp + -16 ], %o4
   11200:	7f ff ff a2 	call  11088 <Innerproduct>
   11204:	01 00 00 00 	nop 
   11208:	c2 07 bf f0 	ld  [ %fp + -16 ], %g1
   1120c:	82 00 60 01 	inc  %g1
   11210:	c2 27 bf f0 	st  %g1, [ %fp + -16 ]
   11214:	10 bf ff e4 	b  111a4 <Intmm+0x4c>
   11218:	01 00 00 00 	nop 
   1121c:	c2 07 bf f4 	ld  [ %fp + -12 ], %g1
   11220:	82 00 60 01 	inc  %g1
   11224:	c2 27 bf f4 	st  %g1, [ %fp + -12 ]
   11228:	10 bf ff d9 	b  1118c <Intmm+0x34>
   1122c:	01 00 00 00 	nop 
   11230:	b0 10 00 01 	mov  %g1, %i0
   11234:	81 c7 e0 08 	ret 
   11238:	81 e8 00 00 	restore 

0001123c <rInitmatrix>:
   1123c:	9d e3 bf 88 	save  %sp, -120, %sp
   11240:	f0 27 a0 44 	st  %i0, [ %fp + 0x44 ]
   11244:	82 10 20 01 	mov  1, %g1
   11248:	c2 27 bf f0 	st  %g1, [ %fp + -16 ]
   1124c:	c2 07 bf f0 	ld  [ %fp + -16 ], %g1
   11250:	80 a0 60 28 	cmp  %g1, 0x28
   11254:	14 80 00 3c 	bg  11344 <rInitmatrix+0x108>
   11258:	01 00 00 00 	nop 
   1125c:	82 10 20 01 	mov  1, %g1	! 1 <_init-0x10347>
   11260:	c2 27 bf ec 	st  %g1, [ %fp + -20 ]
   11264:	c2 07 bf ec 	ld  [ %fp + -20 ], %g1
   11268:	80 a0 60 28 	cmp  %g1, 0x28
   1126c:	14 80 00 31 	bg  11330 <rInitmatrix+0xf4>
   11270:	01 00 00 00 	nop 
   11274:	7f ff fc 8c 	call  104a4 <Rand>
   11278:	01 00 00 00 	nop 
   1127c:	82 10 00 08 	mov  %o0, %g1
   11280:	c2 27 bf f4 	st  %g1, [ %fp + -12 ]
   11284:	c4 07 bf f0 	ld  [ %fp + -16 ], %g2
   11288:	82 10 00 02 	mov  %g2, %g1
   1128c:	83 28 60 02 	sll  %g1, 2, %g1
   11290:	82 00 40 02 	add  %g1, %g2, %g1
   11294:	83 28 60 03 	sll  %g1, 3, %g1
   11298:	82 00 40 02 	add  %g1, %g2, %g1
   1129c:	c4 07 bf ec 	ld  [ %fp + -20 ], %g2
   112a0:	82 00 40 02 	add  %g1, %g2, %g1
   112a4:	85 28 60 02 	sll  %g1, 2, %g2
   112a8:	c2 07 a0 44 	ld  [ %fp + 0x44 ], %g1
   112ac:	a0 00 80 01 	add  %g2, %g1, %l0
   112b0:	c4 07 bf f4 	ld  [ %fp + -12 ], %g2
   112b4:	03 22 22 22 	sethi  %hi(0x88888800), %g1
   112b8:	82 10 60 89 	or  %g1, 0x89, %g1	! 88888889 <_end+0x88849589>
   112bc:	80 58 80 01 	smul  %g2, %g1, %g0
   112c0:	83 40 00 00 	rd  %y, %g1
   112c4:	82 00 40 02 	add  %g1, %g2, %g1
   112c8:	87 38 60 06 	sra  %g1, 6, %g3
   112cc:	83 38 a0 1f 	sra  %g2, 0x1f, %g1
   112d0:	84 20 c0 01 	sub  %g3, %g1, %g2
   112d4:	82 10 00 02 	mov  %g2, %g1
   112d8:	83 28 60 04 	sll  %g1, 4, %g1
   112dc:	82 20 40 02 	sub  %g1, %g2, %g1
   112e0:	85 28 60 03 	sll  %g1, 3, %g2
   112e4:	c2 07 bf f4 	ld  [ %fp + -12 ], %g1
   112e8:	82 20 40 02 	sub  %g1, %g2, %g1
   112ec:	86 00 7f c4 	add  %g1, -60, %g3
   112f0:	03 15 55 55 	sethi  %hi(0x55555400), %g1
   112f4:	82 10 61 56 	or  %g1, 0x156, %g1	! 55555556 <_end+0x55516256>
   112f8:	80 58 c0 01 	smul  %g3, %g1, %g0
   112fc:	85 40 00 00 	rd  %y, %g2
   11300:	83 38 e0 1f 	sra  %g3, 0x1f, %g1
   11304:	82 20 80 01 	sub  %g2, %g1, %g1
   11308:	90 10 00 01 	mov  %g1, %o0
   1130c:	40 00 11 19 	call  15770 <__floatsisf>
   11310:	01 00 00 00 	nop 
   11314:	82 10 00 08 	mov  %o0, %g1
   11318:	c2 24 00 00 	st  %g1, [ %l0 ]
   1131c:	c2 07 bf ec 	ld  [ %fp + -20 ], %g1
   11320:	82 00 60 01 	inc  %g1
   11324:	c2 27 bf ec 	st  %g1, [ %fp + -20 ]
   11328:	10 bf ff cf 	b  11264 <rInitmatrix+0x28>
   1132c:	01 00 00 00 	nop 
   11330:	c2 07 bf f0 	ld  [ %fp + -16 ], %g1
   11334:	82 00 60 01 	inc  %g1
   11338:	c2 27 bf f0 	st  %g1, [ %fp + -16 ]
   1133c:	10 bf ff c4 	b  1124c <rInitmatrix+0x10>
   11340:	01 00 00 00 	nop 
   11344:	b0 10 00 01 	mov  %g1, %i0
   11348:	81 c7 e0 08 	ret 
   1134c:	81 e8 00 00 	restore 

00011350 <rInnerproduct>:
   11350:	9d e3 bf 90 	save  %sp, -112, %sp
   11354:	f0 27 a0 44 	st  %i0, [ %fp + 0x44 ]
   11358:	f2 27 a0 48 	st  %i1, [ %fp + 0x48 ]
   1135c:	f4 27 a0 4c 	st  %i2, [ %fp + 0x4c ]
   11360:	f6 27 a0 50 	st  %i3, [ %fp + 0x50 ]
   11364:	f8 27 a0 54 	st  %i4, [ %fp + 0x54 ]
   11368:	c4 07 a0 44 	ld  [ %fp + 0x44 ], %g2
   1136c:	03 00 00 5a 	sethi  %hi(0x16800), %g1
   11370:	82 10 62 6c 	or  %g1, 0x26c, %g1	! 16a6c <_IO_stdin_used+0x94>
   11374:	c2 00 40 00 	ld  [ %g1 ], %g1
   11378:	c2 20 80 00 	st  %g1, [ %g2 ]
   1137c:	82 10 20 01 	mov  1, %g1
   11380:	c2 27 bf f4 	st  %g1, [ %fp + -12 ]
   11384:	c2 07 bf f4 	ld  [ %fp + -12 ], %g1
   11388:	80 a0 60 28 	cmp  %g1, 0x28
   1138c:	14 80 00 2a 	bg  11434 <rInnerproduct+0xe4>
   11390:	01 00 00 00 	nop 
   11394:	e0 07 a0 44 	ld  [ %fp + 0x44 ], %l0
   11398:	e2 07 a0 44 	ld  [ %fp + 0x44 ], %l1
   1139c:	c4 07 a0 50 	ld  [ %fp + 0x50 ], %g2
   113a0:	82 10 00 02 	mov  %g2, %g1
   113a4:	83 28 60 02 	sll  %g1, 2, %g1
   113a8:	82 00 40 02 	add  %g1, %g2, %g1
   113ac:	83 28 60 03 	sll  %g1, 3, %g1
   113b0:	82 00 40 02 	add  %g1, %g2, %g1
   113b4:	c4 07 bf f4 	ld  [ %fp + -12 ], %g2
   113b8:	82 00 40 02 	add  %g1, %g2, %g1
   113bc:	85 28 60 02 	sll  %g1, 2, %g2
   113c0:	c2 07 a0 48 	ld  [ %fp + 0x48 ], %g1
   113c4:	86 00 80 01 	add  %g2, %g1, %g3
   113c8:	c4 07 bf f4 	ld  [ %fp + -12 ], %g2
   113cc:	82 10 00 02 	mov  %g2, %g1
   113d0:	83 28 60 02 	sll  %g1, 2, %g1
   113d4:	82 00 40 02 	add  %g1, %g2, %g1
   113d8:	83 28 60 03 	sll  %g1, 3, %g1
   113dc:	82 00 40 02 	add  %g1, %g2, %g1
   113e0:	c4 07 a0 54 	ld  [ %fp + 0x54 ], %g2
   113e4:	82 00 40 02 	add  %g1, %g2, %g1
   113e8:	85 28 60 02 	sll  %g1, 2, %g2
   113ec:	c2 07 a0 4c 	ld  [ %fp + 0x4c ], %g1
   113f0:	82 00 80 01 	add  %g2, %g1, %g1
   113f4:	d0 00 c0 00 	ld  [ %g3 ], %o0
   113f8:	d2 00 40 00 	ld  [ %g1 ], %o1
   113fc:	40 00 10 03 	call  15408 <__mulsf3>
   11400:	01 00 00 00 	nop 
   11404:	82 10 00 08 	mov  %o0, %g1
   11408:	d0 04 40 00 	ld  [ %l1 ], %o0
   1140c:	92 10 00 01 	mov  %g1, %o1
   11410:	40 00 0f d3 	call  1535c <__addsf3>
   11414:	01 00 00 00 	nop 
   11418:	82 10 00 08 	mov  %o0, %g1
   1141c:	c2 24 00 00 	st  %g1, [ %l0 ]
   11420:	c2 07 bf f4 	ld  [ %fp + -12 ], %g1
   11424:	82 00 60 01 	inc  %g1
   11428:	c2 27 bf f4 	st  %g1, [ %fp + -12 ]
   1142c:	10 bf ff d6 	b  11384 <rInnerproduct+0x34>
   11430:	01 00 00 00 	nop 
   11434:	b0 10 00 01 	mov  %g1, %i0
   11438:	81 c7 e0 08 	ret 
   1143c:	81 e8 00 00 	restore 

00011440 <Mm>:
   11440:	9d e3 bf 90 	save  %sp, -112, %sp
   11444:	7f ff fc 0f 	call  10480 <Initrand>
   11448:	01 00 00 00 	nop 
   1144c:	03 00 00 ba 	sethi  %hi(0x2e800), %g1
   11450:	90 10 61 a0 	or  %g1, 0x1a0, %o0	! 2e9a0 <rma>
   11454:	7f ff ff 7a 	call  1123c <rInitmatrix>
   11458:	01 00 00 00 	nop 
   1145c:	03 00 00 c1 	sethi  %hi(0x30400), %g1
   11460:	90 10 60 24 	or  %g1, 0x24, %o0	! 30424 <rmb>
   11464:	7f ff ff 76 	call  1123c <rInitmatrix>
   11468:	01 00 00 00 	nop 
   1146c:	82 10 20 01 	mov  1, %g1	! 1 <_init-0x10347>
   11470:	c2 27 bf f4 	st  %g1, [ %fp + -12 ]
   11474:	c2 07 bf f4 	ld  [ %fp + -12 ], %g1
   11478:	80 a0 60 28 	cmp  %g1, 0x28
   1147c:	14 80 00 27 	bg  11518 <Mm+0xd8>
   11480:	01 00 00 00 	nop 
   11484:	82 10 20 01 	mov  1, %g1	! 1 <_init-0x10347>
   11488:	c2 27 bf f0 	st  %g1, [ %fp + -16 ]
   1148c:	c2 07 bf f0 	ld  [ %fp + -16 ], %g1
   11490:	80 a0 60 28 	cmp  %g1, 0x28
   11494:	14 80 00 1c 	bg  11504 <Mm+0xc4>
   11498:	01 00 00 00 	nop 
   1149c:	c4 07 bf f4 	ld  [ %fp + -12 ], %g2
   114a0:	82 10 00 02 	mov  %g2, %g1
   114a4:	83 28 60 02 	sll  %g1, 2, %g1
   114a8:	82 00 40 02 	add  %g1, %g2, %g1
   114ac:	83 28 60 03 	sll  %g1, 3, %g1
   114b0:	82 00 40 02 	add  %g1, %g2, %g1
   114b4:	c4 07 bf f0 	ld  [ %fp + -16 ], %g2
   114b8:	82 00 40 02 	add  %g1, %g2, %g1
   114bc:	85 28 60 02 	sll  %g1, 2, %g2
   114c0:	03 00 00 f6 	sethi  %hi(0x3d800), %g1
   114c4:	82 10 60 ac 	or  %g1, 0xac, %g1	! 3d8ac <rmr>
   114c8:	82 00 80 01 	add  %g2, %g1, %g1
   114cc:	90 10 00 01 	mov  %g1, %o0
   114d0:	03 00 00 ba 	sethi  %hi(0x2e800), %g1
   114d4:	92 10 61 a0 	or  %g1, 0x1a0, %o1	! 2e9a0 <rma>
   114d8:	03 00 00 c1 	sethi  %hi(0x30400), %g1
   114dc:	94 10 60 24 	or  %g1, 0x24, %o2	! 30424 <rmb>
   114e0:	d6 07 bf f4 	ld  [ %fp + -12 ], %o3
   114e4:	d8 07 bf f0 	ld  [ %fp + -16 ], %o4
   114e8:	7f ff ff 9a 	call  11350 <rInnerproduct>
   114ec:	01 00 00 00 	nop 
   114f0:	c2 07 bf f0 	ld  [ %fp + -16 ], %g1
   114f4:	82 00 60 01 	inc  %g1
   114f8:	c2 27 bf f0 	st  %g1, [ %fp + -16 ]
   114fc:	10 bf ff e4 	b  1148c <Mm+0x4c>
   11500:	01 00 00 00 	nop 
   11504:	c2 07 bf f4 	ld  [ %fp + -12 ], %g1
   11508:	82 00 60 01 	inc  %g1
   1150c:	c2 27 bf f4 	st  %g1, [ %fp + -12 ]
   11510:	10 bf ff d9 	b  11474 <Mm+0x34>
   11514:	01 00 00 00 	nop 
   11518:	b0 10 00 01 	mov  %g1, %i0
   1151c:	81 c7 e0 08 	ret 
   11520:	81 e8 00 00 	restore 

00011524 <Fit>:
   11524:	9d e3 bf 90 	save  %sp, -112, %sp
   11528:	f0 27 a0 44 	st  %i0, [ %fp + 0x44 ]
   1152c:	f2 27 a0 48 	st  %i1, [ %fp + 0x48 ]
   11530:	c0 27 bf f4 	clr  [ %fp + -12 ]
   11534:	03 00 00 a0 	sethi  %hi(0x28000), %g1
   11538:	84 10 61 68 	or  %g1, 0x168, %g2	! 28168 <piecemax>
   1153c:	c2 07 a0 44 	ld  [ %fp + 0x44 ], %g1
   11540:	83 28 60 02 	sll  %g1, 2, %g1
   11544:	c4 00 80 01 	ld  [ %g2 + %g1 ], %g2
   11548:	c2 07 bf f4 	ld  [ %fp + -12 ], %g1
   1154c:	80 a0 80 01 	cmp  %g2, %g1
   11550:	06 80 00 1f 	bl  115cc <Fit+0xa8>
   11554:	01 00 00 00 	nop 
   11558:	03 00 00 a0 	sethi  %hi(0x28000), %g1
   1155c:	86 10 61 a0 	or  %g1, 0x1a0, %g3	! 281a0 <p>
   11560:	c2 07 a0 44 	ld  [ %fp + 0x44 ], %g1
   11564:	85 28 60 09 	sll  %g1, 9, %g2
   11568:	c2 07 bf f4 	ld  [ %fp + -12 ], %g1
   1156c:	82 00 80 01 	add  %g2, %g1, %g1
   11570:	83 28 60 02 	sll  %g1, 2, %g1
   11574:	c2 00 c0 01 	ld  [ %g3 + %g1 ], %g1
   11578:	80 a0 60 00 	cmp  %g1, 0
   1157c:	02 80 00 0f 	be  115b8 <Fit+0x94>
   11580:	01 00 00 00 	nop 
   11584:	03 00 00 ec 	sethi  %hi(0x3b000), %g1
   11588:	86 10 62 54 	or  %g1, 0x254, %g3	! 3b254 <puzzl>
   1158c:	c4 07 a0 48 	ld  [ %fp + 0x48 ], %g2
   11590:	c2 07 bf f4 	ld  [ %fp + -12 ], %g1
   11594:	82 00 80 01 	add  %g2, %g1, %g1
   11598:	83 28 60 02 	sll  %g1, 2, %g1
   1159c:	c2 00 c0 01 	ld  [ %g3 + %g1 ], %g1
   115a0:	80 a0 60 00 	cmp  %g1, 0
   115a4:	02 80 00 05 	be  115b8 <Fit+0x94>
   115a8:	01 00 00 00 	nop 
   115ac:	c0 27 bf f0 	clr  [ %fp + -16 ]
   115b0:	10 80 00 09 	b  115d4 <Fit+0xb0>
   115b4:	01 00 00 00 	nop 
   115b8:	c2 07 bf f4 	ld  [ %fp + -12 ], %g1
   115bc:	82 00 60 01 	inc  %g1
   115c0:	c2 27 bf f4 	st  %g1, [ %fp + -12 ]
   115c4:	10 bf ff dc 	b  11534 <Fit+0x10>
   115c8:	01 00 00 00 	nop 
   115cc:	82 10 20 01 	mov  1, %g1	! 1 <_init-0x10347>
   115d0:	c2 27 bf f0 	st  %g1, [ %fp + -16 ]
   115d4:	f0 07 bf f0 	ld  [ %fp + -16 ], %i0
   115d8:	81 c7 e0 08 	ret 
   115dc:	81 e8 00 00 	restore 

000115e0 <Place>:
   115e0:	9d e3 bf 90 	save  %sp, -112, %sp
   115e4:	f0 27 a0 44 	st  %i0, [ %fp + 0x44 ]
   115e8:	f2 27 a0 48 	st  %i1, [ %fp + 0x48 ]
   115ec:	c0 27 bf f4 	clr  [ %fp + -12 ]
   115f0:	03 00 00 a0 	sethi  %hi(0x28000), %g1
   115f4:	84 10 61 68 	or  %g1, 0x168, %g2	! 28168 <piecemax>
   115f8:	c2 07 a0 44 	ld  [ %fp + 0x44 ], %g1
   115fc:	83 28 60 02 	sll  %g1, 2, %g1
   11600:	c4 00 80 01 	ld  [ %g2 + %g1 ], %g2
   11604:	c2 07 bf f4 	ld  [ %fp + -12 ], %g1
   11608:	80 a0 80 01 	cmp  %g2, %g1
   1160c:	06 80 00 1a 	bl  11674 <Place+0x94>
   11610:	01 00 00 00 	nop 
   11614:	03 00 00 a0 	sethi  %hi(0x28000), %g1
   11618:	86 10 61 a0 	or  %g1, 0x1a0, %g3	! 281a0 <p>
   1161c:	c2 07 a0 44 	ld  [ %fp + 0x44 ], %g1
   11620:	85 28 60 09 	sll  %g1, 9, %g2
   11624:	c2 07 bf f4 	ld  [ %fp + -12 ], %g1
   11628:	82 00 80 01 	add  %g2, %g1, %g1
   1162c:	83 28 60 02 	sll  %g1, 2, %g1
   11630:	c2 00 c0 01 	ld  [ %g3 + %g1 ], %g1
   11634:	80 a0 60 00 	cmp  %g1, 0
   11638:	02 80 00 0a 	be  11660 <Place+0x80>
   1163c:	01 00 00 00 	nop 
   11640:	03 00 00 ec 	sethi  %hi(0x3b000), %g1
   11644:	86 10 62 54 	or  %g1, 0x254, %g3	! 3b254 <puzzl>
   11648:	c4 07 a0 48 	ld  [ %fp + 0x48 ], %g2
   1164c:	c2 07 bf f4 	ld  [ %fp + -12 ], %g1
   11650:	82 00 80 01 	add  %g2, %g1, %g1
   11654:	85 28 60 02 	sll  %g1, 2, %g2
   11658:	82 10 20 01 	mov  1, %g1
   1165c:	c2 20 c0 02 	st  %g1, [ %g3 + %g2 ]
   11660:	c2 07 bf f4 	ld  [ %fp + -12 ], %g1
   11664:	82 00 60 01 	inc  %g1
   11668:	c2 27 bf f4 	st  %g1, [ %fp + -12 ]
   1166c:	10 bf ff e1 	b  115f0 <Place+0x10>
   11670:	01 00 00 00 	nop 
   11674:	03 00 00 c9 	sethi  %hi(0x32400), %g1
   11678:	88 10 62 70 	or  %g1, 0x270, %g4	! 32670 <piececount>
   1167c:	03 00 00 ec 	sethi  %hi(0x3b000), %g1
   11680:	84 10 62 20 	or  %g1, 0x220, %g2	! 3b220 <class>
   11684:	c2 07 a0 44 	ld  [ %fp + 0x44 ], %g1
   11688:	83 28 60 02 	sll  %g1, 2, %g1
   1168c:	c2 00 80 01 	ld  [ %g2 + %g1 ], %g1
   11690:	bb 28 60 02 	sll  %g1, 2, %i5
   11694:	03 00 00 c9 	sethi  %hi(0x32400), %g1
   11698:	86 10 62 70 	or  %g1, 0x270, %g3	! 32670 <piececount>
   1169c:	03 00 00 ec 	sethi  %hi(0x3b000), %g1
   116a0:	84 10 62 20 	or  %g1, 0x220, %g2	! 3b220 <class>
   116a4:	c2 07 a0 44 	ld  [ %fp + 0x44 ], %g1
   116a8:	83 28 60 02 	sll  %g1, 2, %g1
   116ac:	c2 00 80 01 	ld  [ %g2 + %g1 ], %g1
   116b0:	83 28 60 02 	sll  %g1, 2, %g1
   116b4:	c2 00 c0 01 	ld  [ %g3 + %g1 ], %g1
   116b8:	82 00 7f ff 	add  %g1, -1, %g1
   116bc:	c2 21 00 1d 	st  %g1, [ %g4 + %i5 ]
   116c0:	c2 07 a0 48 	ld  [ %fp + 0x48 ], %g1
   116c4:	c2 27 bf f4 	st  %g1, [ %fp + -12 ]
   116c8:	c2 07 bf f4 	ld  [ %fp + -12 ], %g1
   116cc:	80 a0 61 ff 	cmp  %g1, 0x1ff
   116d0:	14 80 00 13 	bg  1171c <Place+0x13c>
   116d4:	01 00 00 00 	nop 
   116d8:	03 00 00 ec 	sethi  %hi(0x3b000), %g1
   116dc:	84 10 62 54 	or  %g1, 0x254, %g2	! 3b254 <puzzl>
   116e0:	c2 07 bf f4 	ld  [ %fp + -12 ], %g1
   116e4:	83 28 60 02 	sll  %g1, 2, %g1
   116e8:	c2 00 80 01 	ld  [ %g2 + %g1 ], %g1
   116ec:	80 a0 60 00 	cmp  %g1, 0
   116f0:	12 80 00 06 	bne  11708 <Place+0x128>
   116f4:	01 00 00 00 	nop 
   116f8:	c2 07 bf f4 	ld  [ %fp + -12 ], %g1
   116fc:	c2 27 bf f0 	st  %g1, [ %fp + -16 ]
   11700:	10 80 00 08 	b  11720 <Place+0x140>
   11704:	01 00 00 00 	nop 
   11708:	c2 07 bf f4 	ld  [ %fp + -12 ], %g1
   1170c:	82 00 60 01 	inc  %g1
   11710:	c2 27 bf f4 	st  %g1, [ %fp + -12 ]
   11714:	10 bf ff ed 	b  116c8 <Place+0xe8>
   11718:	01 00 00 00 	nop 
   1171c:	c0 27 bf f0 	clr  [ %fp + -16 ]
   11720:	f0 07 bf f0 	ld  [ %fp + -16 ], %i0
   11724:	81 c7 e0 08 	ret 
   11728:	81 e8 00 00 	restore 

0001172c <Remove>:
   1172c:	9d e3 bf 90 	save  %sp, -112, %sp
   11730:	f0 27 a0 44 	st  %i0, [ %fp + 0x44 ]
   11734:	f2 27 a0 48 	st  %i1, [ %fp + 0x48 ]
   11738:	c0 27 bf f4 	clr  [ %fp + -12 ]
   1173c:	03 00 00 a0 	sethi  %hi(0x28000), %g1
   11740:	84 10 61 68 	or  %g1, 0x168, %g2	! 28168 <piecemax>
   11744:	c2 07 a0 44 	ld  [ %fp + 0x44 ], %g1
   11748:	83 28 60 02 	sll  %g1, 2, %g1
   1174c:	c4 00 80 01 	ld  [ %g2 + %g1 ], %g2
   11750:	c2 07 bf f4 	ld  [ %fp + -12 ], %g1
   11754:	80 a0 80 01 	cmp  %g2, %g1
   11758:	06 80 00 19 	bl  117bc <Remove+0x90>
   1175c:	01 00 00 00 	nop 
   11760:	03 00 00 a0 	sethi  %hi(0x28000), %g1
   11764:	86 10 61 a0 	or  %g1, 0x1a0, %g3	! 281a0 <p>
   11768:	c2 07 a0 44 	ld  [ %fp + 0x44 ], %g1
   1176c:	85 28 60 09 	sll  %g1, 9, %g2
   11770:	c2 07 bf f4 	ld  [ %fp + -12 ], %g1
   11774:	82 00 80 01 	add  %g2, %g1, %g1
   11778:	83 28 60 02 	sll  %g1, 2, %g1
   1177c:	c2 00 c0 01 	ld  [ %g3 + %g1 ], %g1
   11780:	80 a0 60 00 	cmp  %g1, 0
   11784:	02 80 00 09 	be  117a8 <Remove+0x7c>
   11788:	01 00 00 00 	nop 
   1178c:	03 00 00 ec 	sethi  %hi(0x3b000), %g1
   11790:	86 10 62 54 	or  %g1, 0x254, %g3	! 3b254 <puzzl>
   11794:	c4 07 a0 48 	ld  [ %fp + 0x48 ], %g2
   11798:	c2 07 bf f4 	ld  [ %fp + -12 ], %g1
   1179c:	82 00 80 01 	add  %g2, %g1, %g1
   117a0:	83 28 60 02 	sll  %g1, 2, %g1
   117a4:	c0 20 c0 01 	clr  [ %g3 + %g1 ]
   117a8:	c2 07 bf f4 	ld  [ %fp + -12 ], %g1
   117ac:	82 00 60 01 	inc  %g1
   117b0:	c2 27 bf f4 	st  %g1, [ %fp + -12 ]
   117b4:	10 bf ff e2 	b  1173c <Remove+0x10>
   117b8:	01 00 00 00 	nop 
   117bc:	03 00 00 c9 	sethi  %hi(0x32400), %g1
   117c0:	88 10 62 70 	or  %g1, 0x270, %g4	! 32670 <piececount>
   117c4:	03 00 00 ec 	sethi  %hi(0x3b000), %g1
   117c8:	84 10 62 20 	or  %g1, 0x220, %g2	! 3b220 <class>
   117cc:	c2 07 a0 44 	ld  [ %fp + 0x44 ], %g1
   117d0:	83 28 60 02 	sll  %g1, 2, %g1
   117d4:	c2 00 80 01 	ld  [ %g2 + %g1 ], %g1
   117d8:	bb 28 60 02 	sll  %g1, 2, %i5
   117dc:	03 00 00 c9 	sethi  %hi(0x32400), %g1
   117e0:	86 10 62 70 	or  %g1, 0x270, %g3	! 32670 <piececount>
   117e4:	03 00 00 ec 	sethi  %hi(0x3b000), %g1
   117e8:	84 10 62 20 	or  %g1, 0x220, %g2	! 3b220 <class>
   117ec:	c2 07 a0 44 	ld  [ %fp + 0x44 ], %g1
   117f0:	83 28 60 02 	sll  %g1, 2, %g1
   117f4:	c2 00 80 01 	ld  [ %g2 + %g1 ], %g1
   117f8:	83 28 60 02 	sll  %g1, 2, %g1
   117fc:	c2 00 c0 01 	ld  [ %g3 + %g1 ], %g1
   11800:	82 00 60 01 	inc  %g1
   11804:	c2 21 00 1d 	st  %g1, [ %g4 + %i5 ]
   11808:	b0 10 00 01 	mov  %g1, %i0
   1180c:	81 c7 e0 08 	ret 
   11810:	81 e8 00 00 	restore 

00011814 <Trial>:
   11814:	9d e3 bf 88 	save  %sp, -120, %sp
   11818:	f0 27 a0 44 	st  %i0, [ %fp + 0x44 ]
   1181c:	03 00 00 ec 	sethi  %hi(0x3b000), %g1
   11820:	84 10 62 1c 	or  %g1, 0x21c, %g2	! 3b21c <kount>
   11824:	03 00 00 ec 	sethi  %hi(0x3b000), %g1
   11828:	82 10 62 1c 	or  %g1, 0x21c, %g1	! 3b21c <kount>
   1182c:	c2 00 40 00 	ld  [ %g1 ], %g1
   11830:	82 00 60 01 	inc  %g1
   11834:	c2 20 80 00 	st  %g1, [ %g2 ]
   11838:	c0 27 bf f4 	clr  [ %fp + -12 ]
   1183c:	c2 07 bf f4 	ld  [ %fp + -12 ], %g1
   11840:	80 a0 60 0c 	cmp  %g1, 0xc
   11844:	14 80 00 34 	bg  11914 <Trial+0x100>
   11848:	01 00 00 00 	nop 
   1184c:	03 00 00 c9 	sethi  %hi(0x32400), %g1
   11850:	86 10 62 70 	or  %g1, 0x270, %g3	! 32670 <piececount>
   11854:	03 00 00 ec 	sethi  %hi(0x3b000), %g1
   11858:	84 10 62 20 	or  %g1, 0x220, %g2	! 3b220 <class>
   1185c:	c2 07 bf f4 	ld  [ %fp + -12 ], %g1
   11860:	83 28 60 02 	sll  %g1, 2, %g1
   11864:	c2 00 80 01 	ld  [ %g2 + %g1 ], %g1
   11868:	83 28 60 02 	sll  %g1, 2, %g1
   1186c:	c2 00 c0 01 	ld  [ %g3 + %g1 ], %g1
   11870:	80 a0 60 00 	cmp  %g1, 0
   11874:	02 80 00 23 	be  11900 <Trial+0xec>
   11878:	01 00 00 00 	nop 
   1187c:	d0 07 bf f4 	ld  [ %fp + -12 ], %o0
   11880:	d2 07 a0 44 	ld  [ %fp + 0x44 ], %o1
   11884:	7f ff ff 28 	call  11524 <Fit>
   11888:	01 00 00 00 	nop 
   1188c:	82 10 00 08 	mov  %o0, %g1
   11890:	80 a0 60 00 	cmp  %g1, 0
   11894:	02 80 00 1b 	be  11900 <Trial+0xec>
   11898:	01 00 00 00 	nop 
   1189c:	d0 07 bf f4 	ld  [ %fp + -12 ], %o0
   118a0:	d2 07 a0 44 	ld  [ %fp + 0x44 ], %o1
   118a4:	7f ff ff 4f 	call  115e0 <Place>
   118a8:	01 00 00 00 	nop 
   118ac:	82 10 00 08 	mov  %o0, %g1
   118b0:	c2 27 bf f0 	st  %g1, [ %fp + -16 ]
   118b4:	d0 07 bf f0 	ld  [ %fp + -16 ], %o0
   118b8:	7f ff ff d7 	call  11814 <Trial>
   118bc:	01 00 00 00 	nop 
   118c0:	82 10 00 08 	mov  %o0, %g1
   118c4:	80 a0 60 00 	cmp  %g1, 0
   118c8:	12 80 00 06 	bne  118e0 <Trial+0xcc>
   118cc:	01 00 00 00 	nop 
   118d0:	c2 07 bf f0 	ld  [ %fp + -16 ], %g1
   118d4:	80 a0 60 00 	cmp  %g1, 0
   118d8:	12 80 00 06 	bne  118f0 <Trial+0xdc>
   118dc:	01 00 00 00 	nop 
   118e0:	82 10 20 01 	mov  1, %g1	! 1 <_init-0x10347>
   118e4:	c2 27 bf ec 	st  %g1, [ %fp + -20 ]
   118e8:	10 80 00 0c 	b  11918 <Trial+0x104>
   118ec:	01 00 00 00 	nop 
   118f0:	d0 07 bf f4 	ld  [ %fp + -12 ], %o0
   118f4:	d2 07 a0 44 	ld  [ %fp + 0x44 ], %o1
   118f8:	7f ff ff 8d 	call  1172c <Remove>
   118fc:	01 00 00 00 	nop 
   11900:	c2 07 bf f4 	ld  [ %fp + -12 ], %g1
   11904:	82 00 60 01 	inc  %g1
   11908:	c2 27 bf f4 	st  %g1, [ %fp + -12 ]
   1190c:	10 bf ff cc 	b  1183c <Trial+0x28>
   11910:	01 00 00 00 	nop 
   11914:	c0 27 bf ec 	clr  [ %fp + -20 ]
   11918:	f0 07 bf ec 	ld  [ %fp + -20 ], %i0
   1191c:	81 c7 e0 08 	ret 
   11920:	81 e8 00 00 	restore 

00011924 <Puzzle>:
   11924:	9d e3 bf 88 	save  %sp, -120, %sp
   11928:	c0 27 bf e8 	clr  [ %fp + -24 ]
   1192c:	c2 07 bf e8 	ld  [ %fp + -24 ], %g1
   11930:	80 a0 61 ff 	cmp  %g1, 0x1ff
   11934:	14 80 00 0d 	bg  11968 <Puzzle+0x44>
   11938:	01 00 00 00 	nop 
   1193c:	03 00 00 ec 	sethi  %hi(0x3b000), %g1
   11940:	86 10 62 54 	or  %g1, 0x254, %g3	! 3b254 <puzzl>
   11944:	c2 07 bf e8 	ld  [ %fp + -24 ], %g1
   11948:	85 28 60 02 	sll  %g1, 2, %g2
   1194c:	82 10 20 01 	mov  1, %g1
   11950:	c2 20 c0 02 	st  %g1, [ %g3 + %g2 ]
   11954:	c2 07 bf e8 	ld  [ %fp + -24 ], %g1
   11958:	82 00 60 01 	inc  %g1
   1195c:	c2 27 bf e8 	st  %g1, [ %fp + -24 ]
   11960:	10 bf ff f3 	b  1192c <Puzzle+0x8>
   11964:	01 00 00 00 	nop 
   11968:	82 10 20 01 	mov  1, %g1	! 1 <_init-0x10347>
   1196c:	c2 27 bf f4 	st  %g1, [ %fp + -12 ]
   11970:	c2 07 bf f4 	ld  [ %fp + -12 ], %g1
   11974:	80 a0 60 05 	cmp  %g1, 5
   11978:	14 80 00 28 	bg  11a18 <Puzzle+0xf4>
   1197c:	01 00 00 00 	nop 
   11980:	82 10 20 01 	mov  1, %g1	! 1 <_init-0x10347>
   11984:	c2 27 bf f0 	st  %g1, [ %fp + -16 ]
   11988:	c2 07 bf f0 	ld  [ %fp + -16 ], %g1
   1198c:	80 a0 60 05 	cmp  %g1, 5
   11990:	14 80 00 1d 	bg  11a04 <Puzzle+0xe0>
   11994:	01 00 00 00 	nop 
   11998:	82 10 20 01 	mov  1, %g1	! 1 <_init-0x10347>
   1199c:	c2 27 bf ec 	st  %g1, [ %fp + -20 ]
   119a0:	c2 07 bf ec 	ld  [ %fp + -20 ], %g1
   119a4:	80 a0 60 05 	cmp  %g1, 5
   119a8:	14 80 00 12 	bg  119f0 <Puzzle+0xcc>
   119ac:	01 00 00 00 	nop 
   119b0:	03 00 00 ec 	sethi  %hi(0x3b000), %g1
   119b4:	86 10 62 54 	or  %g1, 0x254, %g3	! 3b254 <puzzl>
   119b8:	c2 07 bf ec 	ld  [ %fp + -20 ], %g1
   119bc:	85 28 60 03 	sll  %g1, 3, %g2
   119c0:	c2 07 bf f0 	ld  [ %fp + -16 ], %g1
   119c4:	82 00 80 01 	add  %g2, %g1, %g1
   119c8:	85 28 60 03 	sll  %g1, 3, %g2
   119cc:	c2 07 bf f4 	ld  [ %fp + -12 ], %g1
   119d0:	82 00 80 01 	add  %g2, %g1, %g1
   119d4:	83 28 60 02 	sll  %g1, 2, %g1
   119d8:	c0 20 c0 01 	clr  [ %g3 + %g1 ]
   119dc:	c2 07 bf ec 	ld  [ %fp + -20 ], %g1
   119e0:	82 00 60 01 	inc  %g1
   119e4:	c2 27 bf ec 	st  %g1, [ %fp + -20 ]
   119e8:	10 bf ff ee 	b  119a0 <Puzzle+0x7c>
   119ec:	01 00 00 00 	nop 
   119f0:	c2 07 bf f0 	ld  [ %fp + -16 ], %g1
   119f4:	82 00 60 01 	inc  %g1
   119f8:	c2 27 bf f0 	st  %g1, [ %fp + -16 ]
   119fc:	10 bf ff e3 	b  11988 <Puzzle+0x64>
   11a00:	01 00 00 00 	nop 
   11a04:	c2 07 bf f4 	ld  [ %fp + -12 ], %g1
   11a08:	82 00 60 01 	inc  %g1
   11a0c:	c2 27 bf f4 	st  %g1, [ %fp + -12 ]
   11a10:	10 bf ff d8 	b  11970 <Puzzle+0x4c>
   11a14:	01 00 00 00 	nop 
   11a18:	c0 27 bf f4 	clr  [ %fp + -12 ]
   11a1c:	c2 07 bf f4 	ld  [ %fp + -12 ], %g1
   11a20:	80 a0 60 0c 	cmp  %g1, 0xc
   11a24:	14 80 00 19 	bg  11a88 <Puzzle+0x164>
   11a28:	01 00 00 00 	nop 
   11a2c:	c0 27 bf e8 	clr  [ %fp + -24 ]
   11a30:	c2 07 bf e8 	ld  [ %fp + -24 ], %g1
   11a34:	80 a0 61 ff 	cmp  %g1, 0x1ff
   11a38:	14 80 00 0f 	bg  11a74 <Puzzle+0x150>
   11a3c:	01 00 00 00 	nop 
   11a40:	03 00 00 a0 	sethi  %hi(0x28000), %g1
   11a44:	86 10 61 a0 	or  %g1, 0x1a0, %g3	! 281a0 <p>
   11a48:	c2 07 bf f4 	ld  [ %fp + -12 ], %g1
   11a4c:	85 28 60 09 	sll  %g1, 9, %g2
   11a50:	c2 07 bf e8 	ld  [ %fp + -24 ], %g1
   11a54:	82 00 80 01 	add  %g2, %g1, %g1
   11a58:	83 28 60 02 	sll  %g1, 2, %g1
   11a5c:	c0 20 c0 01 	clr  [ %g3 + %g1 ]
   11a60:	c2 07 bf e8 	ld  [ %fp + -24 ], %g1
   11a64:	82 00 60 01 	inc  %g1
   11a68:	c2 27 bf e8 	st  %g1, [ %fp + -24 ]
   11a6c:	10 bf ff f1 	b  11a30 <Puzzle+0x10c>
   11a70:	01 00 00 00 	nop 
   11a74:	c2 07 bf f4 	ld  [ %fp + -12 ], %g1
   11a78:	82 00 60 01 	inc  %g1
   11a7c:	c2 27 bf f4 	st  %g1, [ %fp + -12 ]
   11a80:	10 bf ff e7 	b  11a1c <Puzzle+0xf8>
   11a84:	01 00 00 00 	nop 
   11a88:	c0 27 bf f4 	clr  [ %fp + -12 ]
   11a8c:	c2 07 bf f4 	ld  [ %fp + -12 ], %g1
   11a90:	80 a0 60 03 	cmp  %g1, 3
   11a94:	14 80 00 27 	bg  11b30 <Puzzle+0x20c>
   11a98:	01 00 00 00 	nop 
   11a9c:	c0 27 bf f0 	clr  [ %fp + -16 ]
   11aa0:	c2 07 bf f0 	ld  [ %fp + -16 ], %g1
   11aa4:	80 a0 60 01 	cmp  %g1, 1
   11aa8:	14 80 00 1d 	bg  11b1c <Puzzle+0x1f8>
   11aac:	01 00 00 00 	nop 
   11ab0:	c0 27 bf ec 	clr  [ %fp + -20 ]
   11ab4:	c2 07 bf ec 	ld  [ %fp + -20 ], %g1
   11ab8:	80 a0 60 00 	cmp  %g1, 0
   11abc:	14 80 00 13 	bg  11b08 <Puzzle+0x1e4>
   11ac0:	01 00 00 00 	nop 
   11ac4:	03 00 00 a0 	sethi  %hi(0x28000), %g1
   11ac8:	86 10 61 a0 	or  %g1, 0x1a0, %g3	! 281a0 <p>
   11acc:	c2 07 bf ec 	ld  [ %fp + -20 ], %g1
   11ad0:	85 28 60 03 	sll  %g1, 3, %g2
   11ad4:	c2 07 bf f0 	ld  [ %fp + -16 ], %g1
   11ad8:	82 00 80 01 	add  %g2, %g1, %g1
   11adc:	85 28 60 03 	sll  %g1, 3, %g2
   11ae0:	c2 07 bf f4 	ld  [ %fp + -12 ], %g1
   11ae4:	82 00 80 01 	add  %g2, %g1, %g1
   11ae8:	85 28 60 02 	sll  %g1, 2, %g2
   11aec:	82 10 20 01 	mov  1, %g1
   11af0:	c2 20 c0 02 	st  %g1, [ %g3 + %g2 ]
   11af4:	c2 07 bf ec 	ld  [ %fp + -20 ], %g1
   11af8:	82 00 60 01 	inc  %g1
   11afc:	c2 27 bf ec 	st  %g1, [ %fp + -20 ]
   11b00:	10 bf ff ed 	b  11ab4 <Puzzle+0x190>
   11b04:	01 00 00 00 	nop 
   11b08:	c2 07 bf f0 	ld  [ %fp + -16 ], %g1
   11b0c:	82 00 60 01 	inc  %g1
   11b10:	c2 27 bf f0 	st  %g1, [ %fp + -16 ]
   11b14:	10 bf ff e3 	b  11aa0 <Puzzle+0x17c>
   11b18:	01 00 00 00 	nop 
   11b1c:	c2 07 bf f4 	ld  [ %fp + -12 ], %g1
   11b20:	82 00 60 01 	inc  %g1
   11b24:	c2 27 bf f4 	st  %g1, [ %fp + -12 ]
   11b28:	10 bf ff d9 	b  11a8c <Puzzle+0x168>
   11b2c:	01 00 00 00 	nop 
   11b30:	03 00 00 ec 	sethi  %hi(0x3b000), %g1
   11b34:	82 10 62 20 	or  %g1, 0x220, %g1	! 3b220 <class>
   11b38:	c0 20 40 00 	clr  [ %g1 ]
   11b3c:	03 00 00 a0 	sethi  %hi(0x28000), %g1
   11b40:	84 10 61 68 	or  %g1, 0x168, %g2	! 28168 <piecemax>
   11b44:	82 10 20 0b 	mov  0xb, %g1
   11b48:	c2 20 80 00 	st  %g1, [ %g2 ]
   11b4c:	c0 27 bf f4 	clr  [ %fp + -12 ]
   11b50:	c2 07 bf f4 	ld  [ %fp + -12 ], %g1
   11b54:	80 a0 60 01 	cmp  %g1, 1
   11b58:	14 80 00 28 	bg  11bf8 <Puzzle+0x2d4>
   11b5c:	01 00 00 00 	nop 
   11b60:	c0 27 bf f0 	clr  [ %fp + -16 ]
   11b64:	c2 07 bf f0 	ld  [ %fp + -16 ], %g1
   11b68:	80 a0 60 00 	cmp  %g1, 0
   11b6c:	14 80 00 1e 	bg  11be4 <Puzzle+0x2c0>
   11b70:	01 00 00 00 	nop 
   11b74:	c0 27 bf ec 	clr  [ %fp + -20 ]
   11b78:	c2 07 bf ec 	ld  [ %fp + -20 ], %g1
   11b7c:	80 a0 60 03 	cmp  %g1, 3
   11b80:	14 80 00 14 	bg  11bd0 <Puzzle+0x2ac>
   11b84:	01 00 00 00 	nop 
   11b88:	03 00 00 a0 	sethi  %hi(0x28000), %g1
   11b8c:	86 10 61 a0 	or  %g1, 0x1a0, %g3	! 281a0 <p>
   11b90:	c2 07 bf ec 	ld  [ %fp + -20 ], %g1
   11b94:	85 28 60 03 	sll  %g1, 3, %g2
   11b98:	c2 07 bf f0 	ld  [ %fp + -16 ], %g1
   11b9c:	82 00 80 01 	add  %g2, %g1, %g1
   11ba0:	85 28 60 03 	sll  %g1, 3, %g2
   11ba4:	c2 07 bf f4 	ld  [ %fp + -12 ], %g1
   11ba8:	82 00 80 01 	add  %g2, %g1, %g1
   11bac:	83 28 60 02 	sll  %g1, 2, %g1
   11bb0:	84 00 40 03 	add  %g1, %g3, %g2
   11bb4:	82 10 20 01 	mov  1, %g1
   11bb8:	c2 20 a8 00 	st  %g1, [ %g2 + 0x800 ]
   11bbc:	c2 07 bf ec 	ld  [ %fp + -20 ], %g1
   11bc0:	82 00 60 01 	inc  %g1
   11bc4:	c2 27 bf ec 	st  %g1, [ %fp + -20 ]
   11bc8:	10 bf ff ec 	b  11b78 <Puzzle+0x254>
   11bcc:	01 00 00 00 	nop 
   11bd0:	c2 07 bf f0 	ld  [ %fp + -16 ], %g1
   11bd4:	82 00 60 01 	inc  %g1
   11bd8:	c2 27 bf f0 	st  %g1, [ %fp + -16 ]
   11bdc:	10 bf ff e2 	b  11b64 <Puzzle+0x240>
   11be0:	01 00 00 00 	nop 
   11be4:	c2 07 bf f4 	ld  [ %fp + -12 ], %g1
   11be8:	82 00 60 01 	inc  %g1
   11bec:	c2 27 bf f4 	st  %g1, [ %fp + -12 ]
   11bf0:	10 bf ff d8 	b  11b50 <Puzzle+0x22c>
   11bf4:	01 00 00 00 	nop 
   11bf8:	03 00 00 ec 	sethi  %hi(0x3b000), %g1
   11bfc:	82 10 62 20 	or  %g1, 0x220, %g1	! 3b220 <class>
   11c00:	c0 20 60 04 	clr  [ %g1 + 4 ]
   11c04:	03 00 00 a0 	sethi  %hi(0x28000), %g1
   11c08:	84 10 61 68 	or  %g1, 0x168, %g2	! 28168 <piecemax>
   11c0c:	82 10 20 c1 	mov  0xc1, %g1
   11c10:	c2 20 a0 04 	st  %g1, [ %g2 + 4 ]
   11c14:	c0 27 bf f4 	clr  [ %fp + -12 ]
   11c18:	c2 07 bf f4 	ld  [ %fp + -12 ], %g1
   11c1c:	80 a0 60 00 	cmp  %g1, 0
   11c20:	14 80 00 29 	bg  11cc4 <Puzzle+0x3a0>
   11c24:	01 00 00 00 	nop 
   11c28:	c0 27 bf f0 	clr  [ %fp + -16 ]
   11c2c:	c2 07 bf f0 	ld  [ %fp + -16 ], %g1
   11c30:	80 a0 60 03 	cmp  %g1, 3
   11c34:	14 80 00 1f 	bg  11cb0 <Puzzle+0x38c>
   11c38:	01 00 00 00 	nop 
   11c3c:	c0 27 bf ec 	clr  [ %fp + -20 ]
   11c40:	c2 07 bf ec 	ld  [ %fp + -20 ], %g1
   11c44:	80 a0 60 01 	cmp  %g1, 1
   11c48:	14 80 00 15 	bg  11c9c <Puzzle+0x378>
   11c4c:	01 00 00 00 	nop 
   11c50:	03 00 00 a0 	sethi  %hi(0x28000), %g1
   11c54:	86 10 61 a0 	or  %g1, 0x1a0, %g3	! 281a0 <p>
   11c58:	c2 07 bf ec 	ld  [ %fp + -20 ], %g1
   11c5c:	85 28 60 03 	sll  %g1, 3, %g2
   11c60:	c2 07 bf f0 	ld  [ %fp + -16 ], %g1
   11c64:	82 00 80 01 	add  %g2, %g1, %g1
   11c68:	85 28 60 03 	sll  %g1, 3, %g2
   11c6c:	c2 07 bf f4 	ld  [ %fp + -12 ], %g1
   11c70:	82 00 80 01 	add  %g2, %g1, %g1
   11c74:	83 28 60 02 	sll  %g1, 2, %g1
   11c78:	86 00 40 03 	add  %g1, %g3, %g3
   11c7c:	05 00 00 04 	sethi  %hi(0x1000), %g2
   11c80:	82 10 20 01 	mov  1, %g1
   11c84:	c2 20 c0 02 	st  %g1, [ %g3 + %g2 ]
   11c88:	c2 07 bf ec 	ld  [ %fp + -20 ], %g1
   11c8c:	82 00 60 01 	inc  %g1
   11c90:	c2 27 bf ec 	st  %g1, [ %fp + -20 ]
   11c94:	10 bf ff eb 	b  11c40 <Puzzle+0x31c>
   11c98:	01 00 00 00 	nop 
   11c9c:	c2 07 bf f0 	ld  [ %fp + -16 ], %g1
   11ca0:	82 00 60 01 	inc  %g1
   11ca4:	c2 27 bf f0 	st  %g1, [ %fp + -16 ]
   11ca8:	10 bf ff e1 	b  11c2c <Puzzle+0x308>
   11cac:	01 00 00 00 	nop 
   11cb0:	c2 07 bf f4 	ld  [ %fp + -12 ], %g1
   11cb4:	82 00 60 01 	inc  %g1
   11cb8:	c2 27 bf f4 	st  %g1, [ %fp + -12 ]
   11cbc:	10 bf ff d7 	b  11c18 <Puzzle+0x2f4>
   11cc0:	01 00 00 00 	nop 
   11cc4:	03 00 00 ec 	sethi  %hi(0x3b000), %g1
   11cc8:	82 10 62 20 	or  %g1, 0x220, %g1	! 3b220 <class>
   11ccc:	c0 20 60 08 	clr  [ %g1 + 8 ]
   11cd0:	03 00 00 a0 	sethi  %hi(0x28000), %g1
   11cd4:	84 10 61 68 	or  %g1, 0x168, %g2	! 28168 <piecemax>
   11cd8:	82 10 20 58 	mov  0x58, %g1
   11cdc:	c2 20 a0 08 	st  %g1, [ %g2 + 8 ]
   11ce0:	c0 27 bf f4 	clr  [ %fp + -12 ]
   11ce4:	c2 07 bf f4 	ld  [ %fp + -12 ], %g1
   11ce8:	80 a0 60 01 	cmp  %g1, 1
   11cec:	14 80 00 29 	bg  11d90 <Puzzle+0x46c>
   11cf0:	01 00 00 00 	nop 
   11cf4:	c0 27 bf f0 	clr  [ %fp + -16 ]
   11cf8:	c2 07 bf f0 	ld  [ %fp + -16 ], %g1
   11cfc:	80 a0 60 03 	cmp  %g1, 3
   11d00:	14 80 00 1f 	bg  11d7c <Puzzle+0x458>
   11d04:	01 00 00 00 	nop 
   11d08:	c0 27 bf ec 	clr  [ %fp + -20 ]
   11d0c:	c2 07 bf ec 	ld  [ %fp + -20 ], %g1
   11d10:	80 a0 60 00 	cmp  %g1, 0
   11d14:	14 80 00 15 	bg  11d68 <Puzzle+0x444>
   11d18:	01 00 00 00 	nop 
   11d1c:	03 00 00 a0 	sethi  %hi(0x28000), %g1
   11d20:	86 10 61 a0 	or  %g1, 0x1a0, %g3	! 281a0 <p>
   11d24:	c2 07 bf ec 	ld  [ %fp + -20 ], %g1
   11d28:	85 28 60 03 	sll  %g1, 3, %g2
   11d2c:	c2 07 bf f0 	ld  [ %fp + -16 ], %g1
   11d30:	82 00 80 01 	add  %g2, %g1, %g1
   11d34:	85 28 60 03 	sll  %g1, 3, %g2
   11d38:	c2 07 bf f4 	ld  [ %fp + -12 ], %g1
   11d3c:	82 00 80 01 	add  %g2, %g1, %g1
   11d40:	83 28 60 02 	sll  %g1, 2, %g1
   11d44:	86 00 40 03 	add  %g1, %g3, %g3
   11d48:	05 00 00 06 	sethi  %hi(0x1800), %g2
   11d4c:	82 10 20 01 	mov  1, %g1
   11d50:	c2 20 c0 02 	st  %g1, [ %g3 + %g2 ]
   11d54:	c2 07 bf ec 	ld  [ %fp + -20 ], %g1
   11d58:	82 00 60 01 	inc  %g1
   11d5c:	c2 27 bf ec 	st  %g1, [ %fp + -20 ]
   11d60:	10 bf ff eb 	b  11d0c <Puzzle+0x3e8>
   11d64:	01 00 00 00 	nop 
   11d68:	c2 07 bf f0 	ld  [ %fp + -16 ], %g1
   11d6c:	82 00 60 01 	inc  %g1
   11d70:	c2 27 bf f0 	st  %g1, [ %fp + -16 ]
   11d74:	10 bf ff e1 	b  11cf8 <Puzzle+0x3d4>
   11d78:	01 00 00 00 	nop 
   11d7c:	c2 07 bf f4 	ld  [ %fp + -12 ], %g1
   11d80:	82 00 60 01 	inc  %g1
   11d84:	c2 27 bf f4 	st  %g1, [ %fp + -12 ]
   11d88:	10 bf ff d7 	b  11ce4 <Puzzle+0x3c0>
   11d8c:	01 00 00 00 	nop 
   11d90:	03 00 00 ec 	sethi  %hi(0x3b000), %g1
   11d94:	82 10 62 20 	or  %g1, 0x220, %g1	! 3b220 <class>
   11d98:	c0 20 60 0c 	clr  [ %g1 + 0xc ]
   11d9c:	03 00 00 a0 	sethi  %hi(0x28000), %g1
   11da0:	84 10 61 68 	or  %g1, 0x168, %g2	! 28168 <piecemax>
   11da4:	82 10 20 19 	mov  0x19, %g1
   11da8:	c2 20 a0 0c 	st  %g1, [ %g2 + 0xc ]
   11dac:	c0 27 bf f4 	clr  [ %fp + -12 ]
   11db0:	c2 07 bf f4 	ld  [ %fp + -12 ], %g1
   11db4:	80 a0 60 03 	cmp  %g1, 3
   11db8:	14 80 00 29 	bg  11e5c <Puzzle+0x538>
   11dbc:	01 00 00 00 	nop 
   11dc0:	c0 27 bf f0 	clr  [ %fp + -16 ]
   11dc4:	c2 07 bf f0 	ld  [ %fp + -16 ], %g1
   11dc8:	80 a0 60 00 	cmp  %g1, 0
   11dcc:	14 80 00 1f 	bg  11e48 <Puzzle+0x524>
   11dd0:	01 00 00 00 	nop 
   11dd4:	c0 27 bf ec 	clr  [ %fp + -20 ]
   11dd8:	c2 07 bf ec 	ld  [ %fp + -20 ], %g1
   11ddc:	80 a0 60 01 	cmp  %g1, 1
   11de0:	14 80 00 15 	bg  11e34 <Puzzle+0x510>
   11de4:	01 00 00 00 	nop 
   11de8:	03 00 00 a0 	sethi  %hi(0x28000), %g1
   11dec:	86 10 61 a0 	or  %g1, 0x1a0, %g3	! 281a0 <p>
   11df0:	c2 07 bf ec 	ld  [ %fp + -20 ], %g1
   11df4:	85 28 60 03 	sll  %g1, 3, %g2
   11df8:	c2 07 bf f0 	ld  [ %fp + -16 ], %g1
   11dfc:	82 00 80 01 	add  %g2, %g1, %g1
   11e00:	85 28 60 03 	sll  %g1, 3, %g2
   11e04:	c2 07 bf f4 	ld  [ %fp + -12 ], %g1
   11e08:	82 00 80 01 	add  %g2, %g1, %g1
   11e0c:	83 28 60 02 	sll  %g1, 2, %g1
   11e10:	86 00 40 03 	add  %g1, %g3, %g3
   11e14:	05 00 00 08 	sethi  %hi(0x2000), %g2
   11e18:	82 10 20 01 	mov  1, %g1
   11e1c:	c2 20 c0 02 	st  %g1, [ %g3 + %g2 ]
   11e20:	c2 07 bf ec 	ld  [ %fp + -20 ], %g1
   11e24:	82 00 60 01 	inc  %g1
   11e28:	c2 27 bf ec 	st  %g1, [ %fp + -20 ]
   11e2c:	10 bf ff eb 	b  11dd8 <Puzzle+0x4b4>
   11e30:	01 00 00 00 	nop 
   11e34:	c2 07 bf f0 	ld  [ %fp + -16 ], %g1
   11e38:	82 00 60 01 	inc  %g1
   11e3c:	c2 27 bf f0 	st  %g1, [ %fp + -16 ]
   11e40:	10 bf ff e1 	b  11dc4 <Puzzle+0x4a0>
   11e44:	01 00 00 00 	nop 
   11e48:	c2 07 bf f4 	ld  [ %fp + -12 ], %g1
   11e4c:	82 00 60 01 	inc  %g1
   11e50:	c2 27 bf f4 	st  %g1, [ %fp + -12 ]
   11e54:	10 bf ff d7 	b  11db0 <Puzzle+0x48c>
   11e58:	01 00 00 00 	nop 
   11e5c:	03 00 00 ec 	sethi  %hi(0x3b000), %g1
   11e60:	82 10 62 20 	or  %g1, 0x220, %g1	! 3b220 <class>
   11e64:	c0 20 60 10 	clr  [ %g1 + 0x10 ]
   11e68:	03 00 00 a0 	sethi  %hi(0x28000), %g1
   11e6c:	84 10 61 68 	or  %g1, 0x168, %g2	! 28168 <piecemax>
   11e70:	82 10 20 43 	mov  0x43, %g1
   11e74:	c2 20 a0 10 	st  %g1, [ %g2 + 0x10 ]
   11e78:	c0 27 bf f4 	clr  [ %fp + -12 ]
   11e7c:	c2 07 bf f4 	ld  [ %fp + -12 ], %g1
   11e80:	80 a0 60 00 	cmp  %g1, 0
   11e84:	14 80 00 29 	bg  11f28 <Puzzle+0x604>
   11e88:	01 00 00 00 	nop 
   11e8c:	c0 27 bf f0 	clr  [ %fp + -16 ]
   11e90:	c2 07 bf f0 	ld  [ %fp + -16 ], %g1
   11e94:	80 a0 60 01 	cmp  %g1, 1
   11e98:	14 80 00 1f 	bg  11f14 <Puzzle+0x5f0>
   11e9c:	01 00 00 00 	nop 
   11ea0:	c0 27 bf ec 	clr  [ %fp + -20 ]
   11ea4:	c2 07 bf ec 	ld  [ %fp + -20 ], %g1
   11ea8:	80 a0 60 03 	cmp  %g1, 3
   11eac:	14 80 00 15 	bg  11f00 <Puzzle+0x5dc>
   11eb0:	01 00 00 00 	nop 
   11eb4:	03 00 00 a0 	sethi  %hi(0x28000), %g1
   11eb8:	86 10 61 a0 	or  %g1, 0x1a0, %g3	! 281a0 <p>
   11ebc:	c2 07 bf ec 	ld  [ %fp + -20 ], %g1
   11ec0:	85 28 60 03 	sll  %g1, 3, %g2
   11ec4:	c2 07 bf f0 	ld  [ %fp + -16 ], %g1
   11ec8:	82 00 80 01 	add  %g2, %g1, %g1
   11ecc:	85 28 60 03 	sll  %g1, 3, %g2
   11ed0:	c2 07 bf f4 	ld  [ %fp + -12 ], %g1
   11ed4:	82 00 80 01 	add  %g2, %g1, %g1
   11ed8:	83 28 60 02 	sll  %g1, 2, %g1
   11edc:	86 00 40 03 	add  %g1, %g3, %g3
   11ee0:	05 00 00 0a 	sethi  %hi(0x2800), %g2
   11ee4:	82 10 20 01 	mov  1, %g1
   11ee8:	c2 20 c0 02 	st  %g1, [ %g3 + %g2 ]
   11eec:	c2 07 bf ec 	ld  [ %fp + -20 ], %g1
   11ef0:	82 00 60 01 	inc  %g1
   11ef4:	c2 27 bf ec 	st  %g1, [ %fp + -20 ]
   11ef8:	10 bf ff eb 	b  11ea4 <Puzzle+0x580>
   11efc:	01 00 00 00 	nop 
   11f00:	c2 07 bf f0 	ld  [ %fp + -16 ], %g1
   11f04:	82 00 60 01 	inc  %g1
   11f08:	c2 27 bf f0 	st  %g1, [ %fp + -16 ]
   11f0c:	10 bf ff e1 	b  11e90 <Puzzle+0x56c>
   11f10:	01 00 00 00 	nop 
   11f14:	c2 07 bf f4 	ld  [ %fp + -12 ], %g1
   11f18:	82 00 60 01 	inc  %g1
   11f1c:	c2 27 bf f4 	st  %g1, [ %fp + -12 ]
   11f20:	10 bf ff d7 	b  11e7c <Puzzle+0x558>
   11f24:	01 00 00 00 	nop 
   11f28:	03 00 00 ec 	sethi  %hi(0x3b000), %g1
   11f2c:	82 10 62 20 	or  %g1, 0x220, %g1	! 3b220 <class>
   11f30:	c0 20 60 14 	clr  [ %g1 + 0x14 ]
   11f34:	03 00 00 a0 	sethi  %hi(0x28000), %g1
   11f38:	84 10 61 68 	or  %g1, 0x168, %g2	! 28168 <piecemax>
   11f3c:	82 10 20 c8 	mov  0xc8, %g1
   11f40:	c2 20 a0 14 	st  %g1, [ %g2 + 0x14 ]
   11f44:	c0 27 bf f4 	clr  [ %fp + -12 ]
   11f48:	c2 07 bf f4 	ld  [ %fp + -12 ], %g1
   11f4c:	80 a0 60 02 	cmp  %g1, 2
   11f50:	14 80 00 29 	bg  11ff4 <Puzzle+0x6d0>
   11f54:	01 00 00 00 	nop 
   11f58:	c0 27 bf f0 	clr  [ %fp + -16 ]
   11f5c:	c2 07 bf f0 	ld  [ %fp + -16 ], %g1
   11f60:	80 a0 60 00 	cmp  %g1, 0
   11f64:	14 80 00 1f 	bg  11fe0 <Puzzle+0x6bc>
   11f68:	01 00 00 00 	nop 
   11f6c:	c0 27 bf ec 	clr  [ %fp + -20 ]
   11f70:	c2 07 bf ec 	ld  [ %fp + -20 ], %g1
   11f74:	80 a0 60 00 	cmp  %g1, 0
   11f78:	14 80 00 15 	bg  11fcc <Puzzle+0x6a8>
   11f7c:	01 00 00 00 	nop 
   11f80:	03 00 00 a0 	sethi  %hi(0x28000), %g1
   11f84:	86 10 61 a0 	or  %g1, 0x1a0, %g3	! 281a0 <p>
   11f88:	c2 07 bf ec 	ld  [ %fp + -20 ], %g1
   11f8c:	85 28 60 03 	sll  %g1, 3, %g2
   11f90:	c2 07 bf f0 	ld  [ %fp + -16 ], %g1
   11f94:	82 00 80 01 	add  %g2, %g1, %g1
   11f98:	85 28 60 03 	sll  %g1, 3, %g2
   11f9c:	c2 07 bf f4 	ld  [ %fp + -12 ], %g1
   11fa0:	82 00 80 01 	add  %g2, %g1, %g1
   11fa4:	83 28 60 02 	sll  %g1, 2, %g1
   11fa8:	86 00 40 03 	add  %g1, %g3, %g3
   11fac:	05 00 00 0c 	sethi  %hi(0x3000), %g2
   11fb0:	82 10 20 01 	mov  1, %g1
   11fb4:	c2 20 c0 02 	st  %g1, [ %g3 + %g2 ]
   11fb8:	c2 07 bf ec 	ld  [ %fp + -20 ], %g1
   11fbc:	82 00 60 01 	inc  %g1
   11fc0:	c2 27 bf ec 	st  %g1, [ %fp + -20 ]
   11fc4:	10 bf ff eb 	b  11f70 <Puzzle+0x64c>
   11fc8:	01 00 00 00 	nop 
   11fcc:	c2 07 bf f0 	ld  [ %fp + -16 ], %g1
   11fd0:	82 00 60 01 	inc  %g1
   11fd4:	c2 27 bf f0 	st  %g1, [ %fp + -16 ]
   11fd8:	10 bf ff e1 	b  11f5c <Puzzle+0x638>
   11fdc:	01 00 00 00 	nop 
   11fe0:	c2 07 bf f4 	ld  [ %fp + -12 ], %g1
   11fe4:	82 00 60 01 	inc  %g1
   11fe8:	c2 27 bf f4 	st  %g1, [ %fp + -12 ]
   11fec:	10 bf ff d7 	b  11f48 <Puzzle+0x624>
   11ff0:	01 00 00 00 	nop 
   11ff4:	03 00 00 ec 	sethi  %hi(0x3b000), %g1
   11ff8:	84 10 62 20 	or  %g1, 0x220, %g2	! 3b220 <class>
   11ffc:	82 10 20 01 	mov  1, %g1
   12000:	c2 20 a0 18 	st  %g1, [ %g2 + 0x18 ]
   12004:	03 00 00 a0 	sethi  %hi(0x28000), %g1
   12008:	84 10 61 68 	or  %g1, 0x168, %g2	! 28168 <piecemax>
   1200c:	82 10 20 02 	mov  2, %g1
   12010:	c2 20 a0 18 	st  %g1, [ %g2 + 0x18 ]
   12014:	c0 27 bf f4 	clr  [ %fp + -12 ]
   12018:	c2 07 bf f4 	ld  [ %fp + -12 ], %g1
   1201c:	80 a0 60 00 	cmp  %g1, 0
   12020:	14 80 00 29 	bg  120c4 <Puzzle+0x7a0>
   12024:	01 00 00 00 	nop 
   12028:	c0 27 bf f0 	clr  [ %fp + -16 ]
   1202c:	c2 07 bf f0 	ld  [ %fp + -16 ], %g1
   12030:	80 a0 60 02 	cmp  %g1, 2
   12034:	14 80 00 1f 	bg  120b0 <Puzzle+0x78c>
   12038:	01 00 00 00 	nop 
   1203c:	c0 27 bf ec 	clr  [ %fp + -20 ]
   12040:	c2 07 bf ec 	ld  [ %fp + -20 ], %g1
   12044:	80 a0 60 00 	cmp  %g1, 0
   12048:	14 80 00 15 	bg  1209c <Puzzle+0x778>
   1204c:	01 00 00 00 	nop 
   12050:	03 00 00 a0 	sethi  %hi(0x28000), %g1
   12054:	86 10 61 a0 	or  %g1, 0x1a0, %g3	! 281a0 <p>
   12058:	c2 07 bf ec 	ld  [ %fp + -20 ], %g1
   1205c:	85 28 60 03 	sll  %g1, 3, %g2
   12060:	c2 07 bf f0 	ld  [ %fp + -16 ], %g1
   12064:	82 00 80 01 	add  %g2, %g1, %g1
   12068:	85 28 60 03 	sll  %g1, 3, %g2
   1206c:	c2 07 bf f4 	ld  [ %fp + -12 ], %g1
   12070:	82 00 80 01 	add  %g2, %g1, %g1
   12074:	83 28 60 02 	sll  %g1, 2, %g1
   12078:	86 00 40 03 	add  %g1, %g3, %g3
   1207c:	05 00 00 0e 	sethi  %hi(0x3800), %g2
   12080:	82 10 20 01 	mov  1, %g1
   12084:	c2 20 c0 02 	st  %g1, [ %g3 + %g2 ]
   12088:	c2 07 bf ec 	ld  [ %fp + -20 ], %g1
   1208c:	82 00 60 01 	inc  %g1
   12090:	c2 27 bf ec 	st  %g1, [ %fp + -20 ]
   12094:	10 bf ff eb 	b  12040 <Puzzle+0x71c>
   12098:	01 00 00 00 	nop 
   1209c:	c2 07 bf f0 	ld  [ %fp + -16 ], %g1
   120a0:	82 00 60 01 	inc  %g1
   120a4:	c2 27 bf f0 	st  %g1, [ %fp + -16 ]
   120a8:	10 bf ff e1 	b  1202c <Puzzle+0x708>
   120ac:	01 00 00 00 	nop 
   120b0:	c2 07 bf f4 	ld  [ %fp + -12 ], %g1
   120b4:	82 00 60 01 	inc  %g1
   120b8:	c2 27 bf f4 	st  %g1, [ %fp + -12 ]
   120bc:	10 bf ff d7 	b  12018 <Puzzle+0x6f4>
   120c0:	01 00 00 00 	nop 
   120c4:	03 00 00 ec 	sethi  %hi(0x3b000), %g1
   120c8:	84 10 62 20 	or  %g1, 0x220, %g2	! 3b220 <class>
   120cc:	82 10 20 01 	mov  1, %g1
   120d0:	c2 20 a0 1c 	st  %g1, [ %g2 + 0x1c ]
   120d4:	03 00 00 a0 	sethi  %hi(0x28000), %g1
   120d8:	84 10 61 68 	or  %g1, 0x168, %g2	! 28168 <piecemax>
   120dc:	82 10 20 10 	mov  0x10, %g1
   120e0:	c2 20 a0 1c 	st  %g1, [ %g2 + 0x1c ]
   120e4:	c0 27 bf f4 	clr  [ %fp + -12 ]
   120e8:	c2 07 bf f4 	ld  [ %fp + -12 ], %g1
   120ec:	80 a0 60 00 	cmp  %g1, 0
   120f0:	14 80 00 29 	bg  12194 <Puzzle+0x870>
   120f4:	01 00 00 00 	nop 
   120f8:	c0 27 bf f0 	clr  [ %fp + -16 ]
   120fc:	c2 07 bf f0 	ld  [ %fp + -16 ], %g1
   12100:	80 a0 60 00 	cmp  %g1, 0
   12104:	14 80 00 1f 	bg  12180 <Puzzle+0x85c>
   12108:	01 00 00 00 	nop 
   1210c:	c0 27 bf ec 	clr  [ %fp + -20 ]
   12110:	c2 07 bf ec 	ld  [ %fp + -20 ], %g1
   12114:	80 a0 60 02 	cmp  %g1, 2
   12118:	14 80 00 15 	bg  1216c <Puzzle+0x848>
   1211c:	01 00 00 00 	nop 
   12120:	03 00 00 a0 	sethi  %hi(0x28000), %g1
   12124:	86 10 61 a0 	or  %g1, 0x1a0, %g3	! 281a0 <p>
   12128:	c2 07 bf ec 	ld  [ %fp + -20 ], %g1
   1212c:	85 28 60 03 	sll  %g1, 3, %g2
   12130:	c2 07 bf f0 	ld  [ %fp + -16 ], %g1
   12134:	82 00 80 01 	add  %g2, %g1, %g1
   12138:	85 28 60 03 	sll  %g1, 3, %g2
   1213c:	c2 07 bf f4 	ld  [ %fp + -12 ], %g1
   12140:	82 00 80 01 	add  %g2, %g1, %g1
   12144:	83 28 60 02 	sll  %g1, 2, %g1
   12148:	86 00 40 03 	add  %g1, %g3, %g3
   1214c:	05 00 00 10 	sethi  %hi(0x4000), %g2
   12150:	82 10 20 01 	mov  1, %g1
   12154:	c2 20 c0 02 	st  %g1, [ %g3 + %g2 ]
   12158:	c2 07 bf ec 	ld  [ %fp + -20 ], %g1
   1215c:	82 00 60 01 	inc  %g1
   12160:	c2 27 bf ec 	st  %g1, [ %fp + -20 ]
   12164:	10 bf ff eb 	b  12110 <Puzzle+0x7ec>
   12168:	01 00 00 00 	nop 
   1216c:	c2 07 bf f0 	ld  [ %fp + -16 ], %g1
   12170:	82 00 60 01 	inc  %g1
   12174:	c2 27 bf f0 	st  %g1, [ %fp + -16 ]
   12178:	10 bf ff e1 	b  120fc <Puzzle+0x7d8>
   1217c:	01 00 00 00 	nop 
   12180:	c2 07 bf f4 	ld  [ %fp + -12 ], %g1
   12184:	82 00 60 01 	inc  %g1
   12188:	c2 27 bf f4 	st  %g1, [ %fp + -12 ]
   1218c:	10 bf ff d7 	b  120e8 <Puzzle+0x7c4>
   12190:	01 00 00 00 	nop 
   12194:	03 00 00 ec 	sethi  %hi(0x3b000), %g1
   12198:	84 10 62 20 	or  %g1, 0x220, %g2	! 3b220 <class>
   1219c:	82 10 20 01 	mov  1, %g1
   121a0:	c2 20 a0 20 	st  %g1, [ %g2 + 0x20 ]
   121a4:	03 00 00 a0 	sethi  %hi(0x28000), %g1
   121a8:	84 10 61 68 	or  %g1, 0x168, %g2	! 28168 <piecemax>
   121ac:	82 10 20 80 	mov  0x80, %g1
   121b0:	c2 20 a0 20 	st  %g1, [ %g2 + 0x20 ]
   121b4:	c0 27 bf f4 	clr  [ %fp + -12 ]
   121b8:	c2 07 bf f4 	ld  [ %fp + -12 ], %g1
   121bc:	80 a0 60 01 	cmp  %g1, 1
   121c0:	14 80 00 29 	bg  12264 <Puzzle+0x940>
   121c4:	01 00 00 00 	nop 
   121c8:	c0 27 bf f0 	clr  [ %fp + -16 ]
   121cc:	c2 07 bf f0 	ld  [ %fp + -16 ], %g1
   121d0:	80 a0 60 01 	cmp  %g1, 1
   121d4:	14 80 00 1f 	bg  12250 <Puzzle+0x92c>
   121d8:	01 00 00 00 	nop 
   121dc:	c0 27 bf ec 	clr  [ %fp + -20 ]
   121e0:	c2 07 bf ec 	ld  [ %fp + -20 ], %g1
   121e4:	80 a0 60 00 	cmp  %g1, 0
   121e8:	14 80 00 15 	bg  1223c <Puzzle+0x918>
   121ec:	01 00 00 00 	nop 
   121f0:	03 00 00 a0 	sethi  %hi(0x28000), %g1
   121f4:	86 10 61 a0 	or  %g1, 0x1a0, %g3	! 281a0 <p>
   121f8:	c2 07 bf ec 	ld  [ %fp + -20 ], %g1
   121fc:	85 28 60 03 	sll  %g1, 3, %g2
   12200:	c2 07 bf f0 	ld  [ %fp + -16 ], %g1
   12204:	82 00 80 01 	add  %g2, %g1, %g1
   12208:	85 28 60 03 	sll  %g1, 3, %g2
   1220c:	c2 07 bf f4 	ld  [ %fp + -12 ], %g1
   12210:	82 00 80 01 	add  %g2, %g1, %g1
   12214:	83 28 60 02 	sll  %g1, 2, %g1
   12218:	86 00 40 03 	add  %g1, %g3, %g3
   1221c:	05 00 00 12 	sethi  %hi(0x4800), %g2
   12220:	82 10 20 01 	mov  1, %g1
   12224:	c2 20 c0 02 	st  %g1, [ %g3 + %g2 ]
   12228:	c2 07 bf ec 	ld  [ %fp + -20 ], %g1
   1222c:	82 00 60 01 	inc  %g1
   12230:	c2 27 bf ec 	st  %g1, [ %fp + -20 ]
   12234:	10 bf ff eb 	b  121e0 <Puzzle+0x8bc>
   12238:	01 00 00 00 	nop 
   1223c:	c2 07 bf f0 	ld  [ %fp + -16 ], %g1
   12240:	82 00 60 01 	inc  %g1
   12244:	c2 27 bf f0 	st  %g1, [ %fp + -16 ]
   12248:	10 bf ff e1 	b  121cc <Puzzle+0x8a8>
   1224c:	01 00 00 00 	nop 
   12250:	c2 07 bf f4 	ld  [ %fp + -12 ], %g1
   12254:	82 00 60 01 	inc  %g1
   12258:	c2 27 bf f4 	st  %g1, [ %fp + -12 ]
   1225c:	10 bf ff d7 	b  121b8 <Puzzle+0x894>
   12260:	01 00 00 00 	nop 
   12264:	03 00 00 ec 	sethi  %hi(0x3b000), %g1
   12268:	84 10 62 20 	or  %g1, 0x220, %g2	! 3b220 <class>
   1226c:	82 10 20 02 	mov  2, %g1
   12270:	c2 20 a0 24 	st  %g1, [ %g2 + 0x24 ]
   12274:	03 00 00 a0 	sethi  %hi(0x28000), %g1
   12278:	84 10 61 68 	or  %g1, 0x168, %g2	! 28168 <piecemax>
   1227c:	82 10 20 09 	mov  9, %g1
   12280:	c2 20 a0 24 	st  %g1, [ %g2 + 0x24 ]
   12284:	c0 27 bf f4 	clr  [ %fp + -12 ]
   12288:	c2 07 bf f4 	ld  [ %fp + -12 ], %g1
   1228c:	80 a0 60 01 	cmp  %g1, 1
   12290:	14 80 00 29 	bg  12334 <Puzzle+0xa10>
   12294:	01 00 00 00 	nop 
   12298:	c0 27 bf f0 	clr  [ %fp + -16 ]
   1229c:	c2 07 bf f0 	ld  [ %fp + -16 ], %g1
   122a0:	80 a0 60 00 	cmp  %g1, 0
   122a4:	14 80 00 1f 	bg  12320 <Puzzle+0x9fc>
   122a8:	01 00 00 00 	nop 
   122ac:	c0 27 bf ec 	clr  [ %fp + -20 ]
   122b0:	c2 07 bf ec 	ld  [ %fp + -20 ], %g1
   122b4:	80 a0 60 01 	cmp  %g1, 1
   122b8:	14 80 00 15 	bg  1230c <Puzzle+0x9e8>
   122bc:	01 00 00 00 	nop 
   122c0:	03 00 00 a0 	sethi  %hi(0x28000), %g1
   122c4:	86 10 61 a0 	or  %g1, 0x1a0, %g3	! 281a0 <p>
   122c8:	c2 07 bf ec 	ld  [ %fp + -20 ], %g1
   122cc:	85 28 60 03 	sll  %g1, 3, %g2
   122d0:	c2 07 bf f0 	ld  [ %fp + -16 ], %g1
   122d4:	82 00 80 01 	add  %g2, %g1, %g1
   122d8:	85 28 60 03 	sll  %g1, 3, %g2
   122dc:	c2 07 bf f4 	ld  [ %fp + -12 ], %g1
   122e0:	82 00 80 01 	add  %g2, %g1, %g1
   122e4:	83 28 60 02 	sll  %g1, 2, %g1
   122e8:	86 00 40 03 	add  %g1, %g3, %g3
   122ec:	05 00 00 14 	sethi  %hi(0x5000), %g2
   122f0:	82 10 20 01 	mov  1, %g1
   122f4:	c2 20 c0 02 	st  %g1, [ %g3 + %g2 ]
   122f8:	c2 07 bf ec 	ld  [ %fp + -20 ], %g1
   122fc:	82 00 60 01 	inc  %g1
   12300:	c2 27 bf ec 	st  %g1, [ %fp + -20 ]
   12304:	10 bf ff eb 	b  122b0 <Puzzle+0x98c>
   12308:	01 00 00 00 	nop 
   1230c:	c2 07 bf f0 	ld  [ %fp + -16 ], %g1
   12310:	82 00 60 01 	inc  %g1
   12314:	c2 27 bf f0 	st  %g1, [ %fp + -16 ]
   12318:	10 bf ff e1 	b  1229c <Puzzle+0x978>
   1231c:	01 00 00 00 	nop 
   12320:	c2 07 bf f4 	ld  [ %fp + -12 ], %g1
   12324:	82 00 60 01 	inc  %g1
   12328:	c2 27 bf f4 	st  %g1, [ %fp + -12 ]
   1232c:	10 bf ff d7 	b  12288 <Puzzle+0x964>
   12330:	01 00 00 00 	nop 
   12334:	03 00 00 ec 	sethi  %hi(0x3b000), %g1
   12338:	84 10 62 20 	or  %g1, 0x220, %g2	! 3b220 <class>
   1233c:	82 10 20 02 	mov  2, %g1
   12340:	c2 20 a0 28 	st  %g1, [ %g2 + 0x28 ]
   12344:	03 00 00 a0 	sethi  %hi(0x28000), %g1
   12348:	84 10 61 68 	or  %g1, 0x168, %g2	! 28168 <piecemax>
   1234c:	82 10 20 41 	mov  0x41, %g1
   12350:	c2 20 a0 28 	st  %g1, [ %g2 + 0x28 ]
   12354:	c0 27 bf f4 	clr  [ %fp + -12 ]
   12358:	c2 07 bf f4 	ld  [ %fp + -12 ], %g1
   1235c:	80 a0 60 00 	cmp  %g1, 0
   12360:	14 80 00 29 	bg  12404 <Puzzle+0xae0>
   12364:	01 00 00 00 	nop 
   12368:	c0 27 bf f0 	clr  [ %fp + -16 ]
   1236c:	c2 07 bf f0 	ld  [ %fp + -16 ], %g1
   12370:	80 a0 60 01 	cmp  %g1, 1
   12374:	14 80 00 1f 	bg  123f0 <Puzzle+0xacc>
   12378:	01 00 00 00 	nop 
   1237c:	c0 27 bf ec 	clr  [ %fp + -20 ]
   12380:	c2 07 bf ec 	ld  [ %fp + -20 ], %g1
   12384:	80 a0 60 01 	cmp  %g1, 1
   12388:	14 80 00 15 	bg  123dc <Puzzle+0xab8>
   1238c:	01 00 00 00 	nop 
   12390:	03 00 00 a0 	sethi  %hi(0x28000), %g1
   12394:	86 10 61 a0 	or  %g1, 0x1a0, %g3	! 281a0 <p>
   12398:	c2 07 bf ec 	ld  [ %fp + -20 ], %g1
   1239c:	85 28 60 03 	sll  %g1, 3, %g2
   123a0:	c2 07 bf f0 	ld  [ %fp + -16 ], %g1
   123a4:	82 00 80 01 	add  %g2, %g1, %g1
   123a8:	85 28 60 03 	sll  %g1, 3, %g2
   123ac:	c2 07 bf f4 	ld  [ %fp + -12 ], %g1
   123b0:	82 00 80 01 	add  %g2, %g1, %g1
   123b4:	83 28 60 02 	sll  %g1, 2, %g1
   123b8:	86 00 40 03 	add  %g1, %g3, %g3
   123bc:	05 00 00 16 	sethi  %hi(0x5800), %g2
   123c0:	82 10 20 01 	mov  1, %g1
   123c4:	c2 20 c0 02 	st  %g1, [ %g3 + %g2 ]
   123c8:	c2 07 bf ec 	ld  [ %fp + -20 ], %g1
   123cc:	82 00 60 01 	inc  %g1
   123d0:	c2 27 bf ec 	st  %g1, [ %fp + -20 ]
   123d4:	10 bf ff eb 	b  12380 <Puzzle+0xa5c>
   123d8:	01 00 00 00 	nop 
   123dc:	c2 07 bf f0 	ld  [ %fp + -16 ], %g1
   123e0:	82 00 60 01 	inc  %g1
   123e4:	c2 27 bf f0 	st  %g1, [ %fp + -16 ]
   123e8:	10 bf ff e1 	b  1236c <Puzzle+0xa48>
   123ec:	01 00 00 00 	nop 
   123f0:	c2 07 bf f4 	ld  [ %fp + -12 ], %g1
   123f4:	82 00 60 01 	inc  %g1
   123f8:	c2 27 bf f4 	st  %g1, [ %fp + -12 ]
   123fc:	10 bf ff d7 	b  12358 <Puzzle+0xa34>
   12400:	01 00 00 00 	nop 
   12404:	03 00 00 ec 	sethi  %hi(0x3b000), %g1
   12408:	84 10 62 20 	or  %g1, 0x220, %g2	! 3b220 <class>
   1240c:	82 10 20 02 	mov  2, %g1
   12410:	c2 20 a0 2c 	st  %g1, [ %g2 + 0x2c ]
   12414:	03 00 00 a0 	sethi  %hi(0x28000), %g1
   12418:	84 10 61 68 	or  %g1, 0x168, %g2	! 28168 <piecemax>
   1241c:	82 10 20 48 	mov  0x48, %g1
   12420:	c2 20 a0 2c 	st  %g1, [ %g2 + 0x2c ]
   12424:	c0 27 bf f4 	clr  [ %fp + -12 ]
   12428:	c2 07 bf f4 	ld  [ %fp + -12 ], %g1
   1242c:	80 a0 60 01 	cmp  %g1, 1
   12430:	14 80 00 29 	bg  124d4 <Puzzle+0xbb0>
   12434:	01 00 00 00 	nop 
   12438:	c0 27 bf f0 	clr  [ %fp + -16 ]
   1243c:	c2 07 bf f0 	ld  [ %fp + -16 ], %g1
   12440:	80 a0 60 01 	cmp  %g1, 1
   12444:	14 80 00 1f 	bg  124c0 <Puzzle+0xb9c>
   12448:	01 00 00 00 	nop 
   1244c:	c0 27 bf ec 	clr  [ %fp + -20 ]
   12450:	c2 07 bf ec 	ld  [ %fp + -20 ], %g1
   12454:	80 a0 60 01 	cmp  %g1, 1
   12458:	14 80 00 15 	bg  124ac <Puzzle+0xb88>
   1245c:	01 00 00 00 	nop 
   12460:	03 00 00 a0 	sethi  %hi(0x28000), %g1
   12464:	86 10 61 a0 	or  %g1, 0x1a0, %g3	! 281a0 <p>
   12468:	c2 07 bf ec 	ld  [ %fp + -20 ], %g1
   1246c:	85 28 60 03 	sll  %g1, 3, %g2
   12470:	c2 07 bf f0 	ld  [ %fp + -16 ], %g1
   12474:	82 00 80 01 	add  %g2, %g1, %g1
   12478:	85 28 60 03 	sll  %g1, 3, %g2
   1247c:	c2 07 bf f4 	ld  [ %fp + -12 ], %g1
   12480:	82 00 80 01 	add  %g2, %g1, %g1
   12484:	83 28 60 02 	sll  %g1, 2, %g1
   12488:	86 00 40 03 	add  %g1, %g3, %g3
   1248c:	05 00 00 18 	sethi  %hi(0x6000), %g2
   12490:	82 10 20 01 	mov  1, %g1
   12494:	c2 20 c0 02 	st  %g1, [ %g3 + %g2 ]
   12498:	c2 07 bf ec 	ld  [ %fp + -20 ], %g1
   1249c:	82 00 60 01 	inc  %g1
   124a0:	c2 27 bf ec 	st  %g1, [ %fp + -20 ]
   124a4:	10 bf ff eb 	b  12450 <Puzzle+0xb2c>
   124a8:	01 00 00 00 	nop 
   124ac:	c2 07 bf f0 	ld  [ %fp + -16 ], %g1
   124b0:	82 00 60 01 	inc  %g1
   124b4:	c2 27 bf f0 	st  %g1, [ %fp + -16 ]
   124b8:	10 bf ff e1 	b  1243c <Puzzle+0xb18>
   124bc:	01 00 00 00 	nop 
   124c0:	c2 07 bf f4 	ld  [ %fp + -12 ], %g1
   124c4:	82 00 60 01 	inc  %g1
   124c8:	c2 27 bf f4 	st  %g1, [ %fp + -12 ]
   124cc:	10 bf ff d7 	b  12428 <Puzzle+0xb04>
   124d0:	01 00 00 00 	nop 
   124d4:	03 00 00 ec 	sethi  %hi(0x3b000), %g1
   124d8:	84 10 62 20 	or  %g1, 0x220, %g2	! 3b220 <class>
   124dc:	82 10 20 03 	mov  3, %g1
   124e0:	c2 20 a0 30 	st  %g1, [ %g2 + 0x30 ]
   124e4:	03 00 00 a0 	sethi  %hi(0x28000), %g1
   124e8:	84 10 61 68 	or  %g1, 0x168, %g2	! 28168 <piecemax>
   124ec:	82 10 20 49 	mov  0x49, %g1
   124f0:	c2 20 a0 30 	st  %g1, [ %g2 + 0x30 ]
   124f4:	03 00 00 c9 	sethi  %hi(0x32400), %g1
   124f8:	84 10 62 70 	or  %g1, 0x270, %g2	! 32670 <piececount>
   124fc:	82 10 20 0d 	mov  0xd, %g1
   12500:	c2 20 80 00 	st  %g1, [ %g2 ]
   12504:	03 00 00 c9 	sethi  %hi(0x32400), %g1
   12508:	84 10 62 70 	or  %g1, 0x270, %g2	! 32670 <piececount>
   1250c:	82 10 20 03 	mov  3, %g1
   12510:	c2 20 a0 04 	st  %g1, [ %g2 + 4 ]
   12514:	03 00 00 c9 	sethi  %hi(0x32400), %g1
   12518:	84 10 62 70 	or  %g1, 0x270, %g2	! 32670 <piececount>
   1251c:	82 10 20 01 	mov  1, %g1
   12520:	c2 20 a0 08 	st  %g1, [ %g2 + 8 ]
   12524:	03 00 00 c9 	sethi  %hi(0x32400), %g1
   12528:	84 10 62 70 	or  %g1, 0x270, %g2	! 32670 <piececount>
   1252c:	82 10 20 01 	mov  1, %g1
   12530:	c2 20 a0 0c 	st  %g1, [ %g2 + 0xc ]
   12534:	82 10 20 49 	mov  0x49, %g1
   12538:	c2 27 bf e8 	st  %g1, [ %fp + -24 ]
   1253c:	03 00 00 ec 	sethi  %hi(0x3b000), %g1
   12540:	82 10 62 1c 	or  %g1, 0x21c, %g1	! 3b21c <kount>
   12544:	c0 20 40 00 	clr  [ %g1 ]
   12548:	90 10 20 00 	clr  %o0
   1254c:	d2 07 bf e8 	ld  [ %fp + -24 ], %o1
   12550:	7f ff fb f5 	call  11524 <Fit>
   12554:	01 00 00 00 	nop 
   12558:	82 10 00 08 	mov  %o0, %g1
   1255c:	80 a0 60 00 	cmp  %g1, 0
   12560:	02 80 00 0c 	be  12590 <Puzzle+0xc6c>
   12564:	01 00 00 00 	nop 
   12568:	90 10 20 00 	clr  %o0	! 0 <_init-0x10348>
   1256c:	d2 07 bf e8 	ld  [ %fp + -24 ], %o1
   12570:	7f ff fc 1c 	call  115e0 <Place>
   12574:	01 00 00 00 	nop 
   12578:	82 10 00 08 	mov  %o0, %g1
   1257c:	05 00 00 c0 	sethi  %hi(0x30000), %g2
   12580:	84 10 a3 e8 	or  %g2, 0x3e8, %g2	! 303e8 <n>
   12584:	c2 20 80 00 	st  %g1, [ %g2 ]
   12588:	10 80 00 06 	b  125a0 <Puzzle+0xc7c>
   1258c:	01 00 00 00 	nop 
   12590:	03 00 00 5a 	sethi  %hi(0x16800), %g1
   12594:	90 10 62 70 	or  %g1, 0x270, %o0	! 16a70 <_IO_stdin_used+0x98>
   12598:	40 00 56 ed 	call  2814c <printf@plt>
   1259c:	01 00 00 00 	nop 
   125a0:	03 00 00 c0 	sethi  %hi(0x30000), %g1
   125a4:	82 10 63 e8 	or  %g1, 0x3e8, %g1	! 303e8 <n>
   125a8:	d0 00 40 00 	ld  [ %g1 ], %o0
   125ac:	7f ff fc 9a 	call  11814 <Trial>
   125b0:	01 00 00 00 	nop 
   125b4:	82 10 00 08 	mov  %o0, %g1
   125b8:	80 a0 60 00 	cmp  %g1, 0
   125bc:	12 80 00 08 	bne  125dc <Puzzle+0xcb8>
   125c0:	01 00 00 00 	nop 
   125c4:	03 00 00 5a 	sethi  %hi(0x16800), %g1
   125c8:	90 10 62 88 	or  %g1, 0x288, %o0	! 16a88 <_IO_stdin_used+0xb0>
   125cc:	40 00 56 e0 	call  2814c <printf@plt>
   125d0:	01 00 00 00 	nop 
   125d4:	10 80 00 0c 	b  12604 <Puzzle+0xce0>
   125d8:	01 00 00 00 	nop 
   125dc:	03 00 00 ec 	sethi  %hi(0x3b000), %g1
   125e0:	82 10 62 1c 	or  %g1, 0x21c, %g1	! 3b21c <kount>
   125e4:	c2 00 40 00 	ld  [ %g1 ], %g1
   125e8:	80 a0 67 d5 	cmp  %g1, 0x7d5
   125ec:	02 80 00 06 	be  12604 <Puzzle+0xce0>
   125f0:	01 00 00 00 	nop 
   125f4:	03 00 00 5a 	sethi  %hi(0x16800), %g1
   125f8:	90 10 62 a0 	or  %g1, 0x2a0, %o0	! 16aa0 <_IO_stdin_used+0xc8>
   125fc:	40 00 56 d4 	call  2814c <printf@plt>
   12600:	01 00 00 00 	nop 
   12604:	b0 10 00 01 	mov  %g1, %i0
   12608:	81 c7 e0 08 	ret 
   1260c:	81 e8 00 00 	restore 

00012610 <Initarr>:
   12610:	9d e3 bf 90 	save  %sp, -112, %sp
   12614:	7f ff f7 9b 	call  10480 <Initrand>
   12618:	01 00 00 00 	nop 
   1261c:	03 00 00 df 	sethi  %hi(0x37c00), %g1
   12620:	82 10 61 8c 	or  %g1, 0x18c, %g1	! 37d8c <biggest>
   12624:	c0 20 40 00 	clr  [ %g1 ]
   12628:	03 00 00 cb 	sethi  %hi(0x32c00), %g1
   1262c:	82 10 63 64 	or  %g1, 0x364, %g1	! 32f64 <littlest>
   12630:	c0 20 40 00 	clr  [ %g1 ]
   12634:	82 10 20 01 	mov  1, %g1
   12638:	c2 27 bf f4 	st  %g1, [ %fp + -12 ]
   1263c:	c2 07 bf f4 	ld  [ %fp + -12 ], %g1
   12640:	05 00 00 04 	sethi  %hi(0x1000), %g2
   12644:	84 10 a3 88 	or  %g2, 0x388, %g2	! 1388 <_init-0xefc0>
   12648:	80 a0 40 02 	cmp  %g1, %g2
   1264c:	14 80 00 48 	bg  1276c <Initarr+0x15c>
   12650:	01 00 00 00 	nop 
   12654:	7f ff f7 94 	call  104a4 <Rand>
   12658:	01 00 00 00 	nop 
   1265c:	82 10 00 08 	mov  %o0, %g1
   12660:	c2 27 bf f0 	st  %g1, [ %fp + -16 ]
   12664:	03 00 00 cb 	sethi  %hi(0x32c00), %g1
   12668:	88 10 63 68 	or  %g1, 0x368, %g4	! 32f68 <sortlist>
   1266c:	c2 07 bf f4 	ld  [ %fp + -12 ], %g1
   12670:	9b 28 60 02 	sll  %g1, 2, %o5
   12674:	c6 07 bf f0 	ld  [ %fp + -16 ], %g3
   12678:	03 05 3e 2d 	sethi  %hi(0x14f8b400), %g1
   1267c:	82 10 61 89 	or  %g1, 0x189, %g1	! 14f8b589 <_end+0x14f4c289>
   12680:	80 58 c0 01 	smul  %g3, %g1, %g0
   12684:	83 40 00 00 	rd  %y, %g1
   12688:	85 38 60 0d 	sra  %g1, 0xd, %g2
   1268c:	83 38 e0 1f 	sra  %g3, 0x1f, %g1
   12690:	84 20 80 01 	sub  %g2, %g1, %g2
   12694:	03 00 00 61 	sethi  %hi(0x18400), %g1
   12698:	82 10 62 a0 	or  %g1, 0x2a0, %g1	! 186a0 <__FRAME_END__+0x1974>
   1269c:	84 58 80 01 	smul  %g2, %g1, %g2
   126a0:	c2 07 bf f0 	ld  [ %fp + -16 ], %g1
   126a4:	84 20 40 02 	sub  %g1, %g2, %g2
   126a8:	03 3f ff cf 	sethi  %hi(0xffff3c00), %g1
   126ac:	82 10 60 b0 	or  %g1, 0xb0, %g1	! ffff3cb0 <_end+0xfffb49b0>
   126b0:	82 00 80 01 	add  %g2, %g1, %g1
   126b4:	c2 21 00 0d 	st  %g1, [ %g4 + %o5 ]
   126b8:	03 00 00 cb 	sethi  %hi(0x32c00), %g1
   126bc:	86 10 63 68 	or  %g1, 0x368, %g3	! 32f68 <sortlist>
   126c0:	c2 07 bf f4 	ld  [ %fp + -12 ], %g1
   126c4:	85 28 60 02 	sll  %g1, 2, %g2
   126c8:	03 00 00 df 	sethi  %hi(0x37c00), %g1
   126cc:	82 10 61 8c 	or  %g1, 0x18c, %g1	! 37d8c <biggest>
   126d0:	c4 00 c0 02 	ld  [ %g3 + %g2 ], %g2
   126d4:	c2 00 40 00 	ld  [ %g1 ], %g1
   126d8:	80 a0 80 01 	cmp  %g2, %g1
   126dc:	04 80 00 0c 	ble  1270c <Initarr+0xfc>
   126e0:	01 00 00 00 	nop 
   126e4:	03 00 00 df 	sethi  %hi(0x37c00), %g1
   126e8:	86 10 61 8c 	or  %g1, 0x18c, %g3	! 37d8c <biggest>
   126ec:	03 00 00 cb 	sethi  %hi(0x32c00), %g1
   126f0:	84 10 63 68 	or  %g1, 0x368, %g2	! 32f68 <sortlist>
   126f4:	c2 07 bf f4 	ld  [ %fp + -12 ], %g1
   126f8:	83 28 60 02 	sll  %g1, 2, %g1
   126fc:	c2 00 80 01 	ld  [ %g2 + %g1 ], %g1
   12700:	c2 20 c0 00 	st  %g1, [ %g3 ]
   12704:	10 80 00 15 	b  12758 <Initarr+0x148>
   12708:	01 00 00 00 	nop 
   1270c:	03 00 00 cb 	sethi  %hi(0x32c00), %g1
   12710:	86 10 63 68 	or  %g1, 0x368, %g3	! 32f68 <sortlist>
   12714:	c2 07 bf f4 	ld  [ %fp + -12 ], %g1
   12718:	85 28 60 02 	sll  %g1, 2, %g2
   1271c:	03 00 00 cb 	sethi  %hi(0x32c00), %g1
   12720:	82 10 63 64 	or  %g1, 0x364, %g1	! 32f64 <littlest>
   12724:	c4 00 c0 02 	ld  [ %g3 + %g2 ], %g2
   12728:	c2 00 40 00 	ld  [ %g1 ], %g1
   1272c:	80 a0 80 01 	cmp  %g2, %g1
   12730:	16 80 00 0a 	bge  12758 <Initarr+0x148>
   12734:	01 00 00 00 	nop 
   12738:	03 00 00 cb 	sethi  %hi(0x32c00), %g1
   1273c:	86 10 63 64 	or  %g1, 0x364, %g3	! 32f64 <littlest>
   12740:	03 00 00 cb 	sethi  %hi(0x32c00), %g1
   12744:	84 10 63 68 	or  %g1, 0x368, %g2	! 32f68 <sortlist>
   12748:	c2 07 bf f4 	ld  [ %fp + -12 ], %g1
   1274c:	83 28 60 02 	sll  %g1, 2, %g1
   12750:	c2 00 80 01 	ld  [ %g2 + %g1 ], %g1
   12754:	c2 20 c0 00 	st  %g1, [ %g3 ]
   12758:	c2 07 bf f4 	ld  [ %fp + -12 ], %g1
   1275c:	82 00 60 01 	inc  %g1
   12760:	c2 27 bf f4 	st  %g1, [ %fp + -12 ]
   12764:	10 bf ff b6 	b  1263c <Initarr+0x2c>
   12768:	01 00 00 00 	nop 
   1276c:	b0 10 00 01 	mov  %g1, %i0
   12770:	81 c7 e0 08 	ret 
   12774:	81 e8 00 00 	restore 

00012778 <Quicksort>:
   12778:	9d e3 bf 88 	save  %sp, -120, %sp
   1277c:	f0 27 a0 44 	st  %i0, [ %fp + 0x44 ]
   12780:	f2 27 a0 48 	st  %i1, [ %fp + 0x48 ]
   12784:	f4 27 a0 4c 	st  %i2, [ %fp + 0x4c ]
   12788:	c2 07 a0 48 	ld  [ %fp + 0x48 ], %g1
   1278c:	c2 27 bf f4 	st  %g1, [ %fp + -12 ]
   12790:	c2 07 a0 4c 	ld  [ %fp + 0x4c ], %g1
   12794:	c2 27 bf f0 	st  %g1, [ %fp + -16 ]
   12798:	c4 07 a0 48 	ld  [ %fp + 0x48 ], %g2
   1279c:	c2 07 a0 4c 	ld  [ %fp + 0x4c ], %g1
   127a0:	84 00 80 01 	add  %g2, %g1, %g2
   127a4:	83 38 a0 1f 	sra  %g2, 0x1f, %g1
   127a8:	83 30 60 1f 	srl  %g1, 0x1f, %g1
   127ac:	82 00 80 01 	add  %g2, %g1, %g1
   127b0:	83 38 60 01 	sra  %g1, 1, %g1
   127b4:	85 28 60 02 	sll  %g1, 2, %g2
   127b8:	c2 07 a0 44 	ld  [ %fp + 0x44 ], %g1
   127bc:	82 00 80 01 	add  %g2, %g1, %g1
   127c0:	c2 00 40 00 	ld  [ %g1 ], %g1
   127c4:	c2 27 bf ec 	st  %g1, [ %fp + -20 ]
   127c8:	c2 07 bf f4 	ld  [ %fp + -12 ], %g1
   127cc:	85 28 60 02 	sll  %g1, 2, %g2
   127d0:	c2 07 a0 44 	ld  [ %fp + 0x44 ], %g1
   127d4:	82 00 80 01 	add  %g2, %g1, %g1
   127d8:	c4 00 40 00 	ld  [ %g1 ], %g2
   127dc:	c2 07 bf ec 	ld  [ %fp + -20 ], %g1
   127e0:	80 a0 80 01 	cmp  %g2, %g1
   127e4:	16 80 00 07 	bge  12800 <Quicksort+0x88>
   127e8:	01 00 00 00 	nop 
   127ec:	c2 07 bf f4 	ld  [ %fp + -12 ], %g1
   127f0:	82 00 60 01 	inc  %g1
   127f4:	c2 27 bf f4 	st  %g1, [ %fp + -12 ]
   127f8:	10 bf ff f4 	b  127c8 <Quicksort+0x50>
   127fc:	01 00 00 00 	nop 
   12800:	c2 07 bf f0 	ld  [ %fp + -16 ], %g1
   12804:	85 28 60 02 	sll  %g1, 2, %g2
   12808:	c2 07 a0 44 	ld  [ %fp + 0x44 ], %g1
   1280c:	82 00 80 01 	add  %g2, %g1, %g1
   12810:	c4 00 40 00 	ld  [ %g1 ], %g2
   12814:	c2 07 bf ec 	ld  [ %fp + -20 ], %g1
   12818:	80 a0 80 01 	cmp  %g2, %g1
   1281c:	04 80 00 07 	ble  12838 <Quicksort+0xc0>
   12820:	01 00 00 00 	nop 
   12824:	c2 07 bf f0 	ld  [ %fp + -16 ], %g1
   12828:	82 00 7f ff 	add  %g1, -1, %g1
   1282c:	c2 27 bf f0 	st  %g1, [ %fp + -16 ]
   12830:	10 bf ff f4 	b  12800 <Quicksort+0x88>
   12834:	01 00 00 00 	nop 
   12838:	c4 07 bf f4 	ld  [ %fp + -12 ], %g2
   1283c:	c2 07 bf f0 	ld  [ %fp + -16 ], %g1
   12840:	80 a0 80 01 	cmp  %g2, %g1
   12844:	14 80 00 1e 	bg  128bc <Quicksort+0x144>
   12848:	01 00 00 00 	nop 
   1284c:	c2 07 bf f4 	ld  [ %fp + -12 ], %g1
   12850:	85 28 60 02 	sll  %g1, 2, %g2
   12854:	c2 07 a0 44 	ld  [ %fp + 0x44 ], %g1
   12858:	82 00 80 01 	add  %g2, %g1, %g1
   1285c:	c2 00 40 00 	ld  [ %g1 ], %g1
   12860:	c2 27 bf e8 	st  %g1, [ %fp + -24 ]
   12864:	c2 07 bf f4 	ld  [ %fp + -12 ], %g1
   12868:	85 28 60 02 	sll  %g1, 2, %g2
   1286c:	c2 07 a0 44 	ld  [ %fp + 0x44 ], %g1
   12870:	86 00 80 01 	add  %g2, %g1, %g3
   12874:	c2 07 bf f0 	ld  [ %fp + -16 ], %g1
   12878:	85 28 60 02 	sll  %g1, 2, %g2
   1287c:	c2 07 a0 44 	ld  [ %fp + 0x44 ], %g1
   12880:	82 00 80 01 	add  %g2, %g1, %g1
   12884:	c2 00 40 00 	ld  [ %g1 ], %g1
   12888:	c2 20 c0 00 	st  %g1, [ %g3 ]
   1288c:	c2 07 bf f0 	ld  [ %fp + -16 ], %g1
   12890:	85 28 60 02 	sll  %g1, 2, %g2
   12894:	c2 07 a0 44 	ld  [ %fp + 0x44 ], %g1
   12898:	84 00 80 01 	add  %g2, %g1, %g2
   1289c:	c2 07 bf e8 	ld  [ %fp + -24 ], %g1
   128a0:	c2 20 80 00 	st  %g1, [ %g2 ]
   128a4:	c2 07 bf f4 	ld  [ %fp + -12 ], %g1
   128a8:	82 00 60 01 	inc  %g1
   128ac:	c2 27 bf f4 	st  %g1, [ %fp + -12 ]
   128b0:	c2 07 bf f0 	ld  [ %fp + -16 ], %g1
   128b4:	82 00 7f ff 	add  %g1, -1, %g1
   128b8:	c2 27 bf f0 	st  %g1, [ %fp + -16 ]
   128bc:	c4 07 bf f4 	ld  [ %fp + -12 ], %g2
   128c0:	c2 07 bf f0 	ld  [ %fp + -16 ], %g1
   128c4:	80 a0 80 01 	cmp  %g2, %g1
   128c8:	14 80 00 04 	bg  128d8 <Quicksort+0x160>
   128cc:	01 00 00 00 	nop 
   128d0:	10 bf ff be 	b  127c8 <Quicksort+0x50>
   128d4:	01 00 00 00 	nop 
   128d8:	c4 07 a0 48 	ld  [ %fp + 0x48 ], %g2
   128dc:	c2 07 bf f0 	ld  [ %fp + -16 ], %g1
   128e0:	80 a0 80 01 	cmp  %g2, %g1
   128e4:	16 80 00 07 	bge  12900 <Quicksort+0x188>
   128e8:	01 00 00 00 	nop 
   128ec:	d0 07 a0 44 	ld  [ %fp + 0x44 ], %o0
   128f0:	d2 07 a0 48 	ld  [ %fp + 0x48 ], %o1
   128f4:	d4 07 bf f0 	ld  [ %fp + -16 ], %o2
   128f8:	7f ff ff a0 	call  12778 <Quicksort>
   128fc:	01 00 00 00 	nop 
   12900:	c4 07 bf f4 	ld  [ %fp + -12 ], %g2
   12904:	c2 07 a0 4c 	ld  [ %fp + 0x4c ], %g1
   12908:	80 a0 80 01 	cmp  %g2, %g1
   1290c:	16 80 00 07 	bge  12928 <Quicksort+0x1b0>
   12910:	01 00 00 00 	nop 
   12914:	d0 07 a0 44 	ld  [ %fp + 0x44 ], %o0
   12918:	d2 07 bf f4 	ld  [ %fp + -12 ], %o1
   1291c:	d4 07 a0 4c 	ld  [ %fp + 0x4c ], %o2
   12920:	7f ff ff 96 	call  12778 <Quicksort>
   12924:	01 00 00 00 	nop 
   12928:	b0 10 00 01 	mov  %g1, %i0
   1292c:	81 c7 e0 08 	ret 
   12930:	81 e8 00 00 	restore 

00012934 <Quick>:
   12934:	9d e3 bf 98 	save  %sp, -104, %sp
   12938:	7f ff ff 36 	call  12610 <Initarr>
   1293c:	01 00 00 00 	nop 
   12940:	03 00 00 cb 	sethi  %hi(0x32c00), %g1
   12944:	90 10 63 68 	or  %g1, 0x368, %o0	! 32f68 <sortlist>
   12948:	92 10 20 01 	mov  1, %o1
   1294c:	03 00 00 04 	sethi  %hi(0x1000), %g1
   12950:	94 10 63 88 	or  %g1, 0x388, %o2	! 1388 <_init-0xefc0>
   12954:	7f ff ff 89 	call  12778 <Quicksort>
   12958:	01 00 00 00 	nop 
   1295c:	03 00 00 cb 	sethi  %hi(0x32c00), %g1
   12960:	84 10 63 68 	or  %g1, 0x368, %g2	! 32f68 <sortlist>
   12964:	03 00 00 cb 	sethi  %hi(0x32c00), %g1
   12968:	82 10 63 64 	or  %g1, 0x364, %g1	! 32f64 <littlest>
   1296c:	c4 00 a0 04 	ld  [ %g2 + 4 ], %g2
   12970:	c2 00 40 00 	ld  [ %g1 ], %g1
   12974:	80 a0 80 01 	cmp  %g2, %g1
   12978:	12 80 00 0f 	bne  129b4 <Quick+0x80>
   1297c:	01 00 00 00 	nop 
   12980:	03 00 00 cb 	sethi  %hi(0x32c00), %g1
   12984:	86 10 63 68 	or  %g1, 0x368, %g3	! 32f68 <sortlist>
   12988:	03 00 00 13 	sethi  %hi(0x4c00), %g1
   1298c:	84 10 62 20 	or  %g1, 0x220, %g2	! 4e20 <_init-0xb528>
   12990:	03 00 00 df 	sethi  %hi(0x37c00), %g1
   12994:	82 10 61 8c 	or  %g1, 0x18c, %g1	! 37d8c <biggest>
   12998:	c4 00 c0 02 	ld  [ %g3 + %g2 ], %g2
   1299c:	c2 00 40 00 	ld  [ %g1 ], %g1
   129a0:	80 a0 80 01 	cmp  %g2, %g1
   129a4:	12 80 00 04 	bne  129b4 <Quick+0x80>
   129a8:	01 00 00 00 	nop 
   129ac:	10 80 00 06 	b  129c4 <Quick+0x90>
   129b0:	01 00 00 00 	nop 
   129b4:	03 00 00 5a 	sethi  %hi(0x16800), %g1
   129b8:	90 10 62 b8 	or  %g1, 0x2b8, %o0	! 16ab8 <_IO_stdin_used+0xe0>
   129bc:	40 00 55 e4 	call  2814c <printf@plt>
   129c0:	01 00 00 00 	nop 
   129c4:	b0 10 00 01 	mov  %g1, %i0
   129c8:	81 c7 e0 08 	ret 
   129cc:	81 e8 00 00 	restore 

000129d0 <tInitarr>:
   129d0:	9d e3 bf 90 	save  %sp, -112, %sp
   129d4:	7f ff f6 ab 	call  10480 <Initrand>
   129d8:	01 00 00 00 	nop 
   129dc:	03 00 00 df 	sethi  %hi(0x37c00), %g1
   129e0:	82 10 61 8c 	or  %g1, 0x18c, %g1	! 37d8c <biggest>
   129e4:	c0 20 40 00 	clr  [ %g1 ]
   129e8:	03 00 00 cb 	sethi  %hi(0x32c00), %g1
   129ec:	82 10 63 64 	or  %g1, 0x364, %g1	! 32f64 <littlest>
   129f0:	c0 20 40 00 	clr  [ %g1 ]
   129f4:	82 10 20 01 	mov  1, %g1
   129f8:	c2 27 bf f4 	st  %g1, [ %fp + -12 ]
   129fc:	c2 07 bf f4 	ld  [ %fp + -12 ], %g1
   12a00:	05 00 00 04 	sethi  %hi(0x1000), %g2
   12a04:	84 10 a3 88 	or  %g2, 0x388, %g2	! 1388 <_init-0xefc0>
   12a08:	80 a0 40 02 	cmp  %g1, %g2
   12a0c:	14 80 00 48 	bg  12b2c <tInitarr+0x15c>
   12a10:	01 00 00 00 	nop 
   12a14:	7f ff f6 a4 	call  104a4 <Rand>
   12a18:	01 00 00 00 	nop 
   12a1c:	82 10 00 08 	mov  %o0, %g1
   12a20:	c2 27 bf f0 	st  %g1, [ %fp + -16 ]
   12a24:	03 00 00 cb 	sethi  %hi(0x32c00), %g1
   12a28:	88 10 63 68 	or  %g1, 0x368, %g4	! 32f68 <sortlist>
   12a2c:	c2 07 bf f4 	ld  [ %fp + -12 ], %g1
   12a30:	9b 28 60 02 	sll  %g1, 2, %o5
   12a34:	c6 07 bf f0 	ld  [ %fp + -16 ], %g3
   12a38:	03 05 3e 2d 	sethi  %hi(0x14f8b400), %g1
   12a3c:	82 10 61 89 	or  %g1, 0x189, %g1	! 14f8b589 <_end+0x14f4c289>
   12a40:	80 58 c0 01 	smul  %g3, %g1, %g0
   12a44:	83 40 00 00 	rd  %y, %g1
   12a48:	85 38 60 0d 	sra  %g1, 0xd, %g2
   12a4c:	83 38 e0 1f 	sra  %g3, 0x1f, %g1
   12a50:	84 20 80 01 	sub  %g2, %g1, %g2
   12a54:	03 00 00 61 	sethi  %hi(0x18400), %g1
   12a58:	82 10 62 a0 	or  %g1, 0x2a0, %g1	! 186a0 <__FRAME_END__+0x1974>
   12a5c:	84 58 80 01 	smul  %g2, %g1, %g2
   12a60:	c2 07 bf f0 	ld  [ %fp + -16 ], %g1
   12a64:	84 20 40 02 	sub  %g1, %g2, %g2
   12a68:	03 3f ff cf 	sethi  %hi(0xffff3c00), %g1
   12a6c:	82 10 60 b0 	or  %g1, 0xb0, %g1	! ffff3cb0 <_end+0xfffb49b0>
   12a70:	82 00 80 01 	add  %g2, %g1, %g1
   12a74:	c2 21 00 0d 	st  %g1, [ %g4 + %o5 ]
   12a78:	03 00 00 cb 	sethi  %hi(0x32c00), %g1
   12a7c:	86 10 63 68 	or  %g1, 0x368, %g3	! 32f68 <sortlist>
   12a80:	c2 07 bf f4 	ld  [ %fp + -12 ], %g1
   12a84:	85 28 60 02 	sll  %g1, 2, %g2
   12a88:	03 00 00 df 	sethi  %hi(0x37c00), %g1
   12a8c:	82 10 61 8c 	or  %g1, 0x18c, %g1	! 37d8c <biggest>
   12a90:	c4 00 c0 02 	ld  [ %g3 + %g2 ], %g2
   12a94:	c2 00 40 00 	ld  [ %g1 ], %g1
   12a98:	80 a0 80 01 	cmp  %g2, %g1
   12a9c:	04 80 00 0c 	ble  12acc <tInitarr+0xfc>
   12aa0:	01 00 00 00 	nop 
   12aa4:	03 00 00 df 	sethi  %hi(0x37c00), %g1
   12aa8:	86 10 61 8c 	or  %g1, 0x18c, %g3	! 37d8c <biggest>
   12aac:	03 00 00 cb 	sethi  %hi(0x32c00), %g1
   12ab0:	84 10 63 68 	or  %g1, 0x368, %g2	! 32f68 <sortlist>
   12ab4:	c2 07 bf f4 	ld  [ %fp + -12 ], %g1
   12ab8:	83 28 60 02 	sll  %g1, 2, %g1
   12abc:	c2 00 80 01 	ld  [ %g2 + %g1 ], %g1
   12ac0:	c2 20 c0 00 	st  %g1, [ %g3 ]
   12ac4:	10 80 00 15 	b  12b18 <tInitarr+0x148>
   12ac8:	01 00 00 00 	nop 
   12acc:	03 00 00 cb 	sethi  %hi(0x32c00), %g1
   12ad0:	86 10 63 68 	or  %g1, 0x368, %g3	! 32f68 <sortlist>
   12ad4:	c2 07 bf f4 	ld  [ %fp + -12 ], %g1
   12ad8:	85 28 60 02 	sll  %g1, 2, %g2
   12adc:	03 00 00 cb 	sethi  %hi(0x32c00), %g1
   12ae0:	82 10 63 64 	or  %g1, 0x364, %g1	! 32f64 <littlest>
   12ae4:	c4 00 c0 02 	ld  [ %g3 + %g2 ], %g2
   12ae8:	c2 00 40 00 	ld  [ %g1 ], %g1
   12aec:	80 a0 80 01 	cmp  %g2, %g1
   12af0:	16 80 00 0a 	bge  12b18 <tInitarr+0x148>
   12af4:	01 00 00 00 	nop 
   12af8:	03 00 00 cb 	sethi  %hi(0x32c00), %g1
   12afc:	86 10 63 64 	or  %g1, 0x364, %g3	! 32f64 <littlest>
   12b00:	03 00 00 cb 	sethi  %hi(0x32c00), %g1
   12b04:	84 10 63 68 	or  %g1, 0x368, %g2	! 32f68 <sortlist>
   12b08:	c2 07 bf f4 	ld  [ %fp + -12 ], %g1
   12b0c:	83 28 60 02 	sll  %g1, 2, %g1
   12b10:	c2 00 80 01 	ld  [ %g2 + %g1 ], %g1
   12b14:	c2 20 c0 00 	st  %g1, [ %g3 ]
   12b18:	c2 07 bf f4 	ld  [ %fp + -12 ], %g1
   12b1c:	82 00 60 01 	inc  %g1
   12b20:	c2 27 bf f4 	st  %g1, [ %fp + -12 ]
   12b24:	10 bf ff b6 	b  129fc <tInitarr+0x2c>
   12b28:	01 00 00 00 	nop 
   12b2c:	b0 10 00 01 	mov  %g1, %i0
   12b30:	81 c7 e0 08 	ret 
   12b34:	81 e8 00 00 	restore 

00012b38 <CreateNode>:
   12b38:	9d e3 bf 98 	save  %sp, -104, %sp
   12b3c:	f0 27 a0 44 	st  %i0, [ %fp + 0x44 ]
   12b40:	f2 27 a0 48 	st  %i1, [ %fp + 0x48 ]
   12b44:	e0 07 a0 44 	ld  [ %fp + 0x44 ], %l0
   12b48:	90 10 20 0c 	mov  0xc, %o0
   12b4c:	40 00 55 77 	call  28128 <malloc@plt>
   12b50:	01 00 00 00 	nop 
   12b54:	82 10 00 08 	mov  %o0, %g1
   12b58:	c2 24 00 00 	st  %g1, [ %l0 ]
   12b5c:	c2 07 a0 44 	ld  [ %fp + 0x44 ], %g1
   12b60:	c2 00 40 00 	ld  [ %g1 ], %g1
   12b64:	c0 20 40 00 	clr  [ %g1 ]
   12b68:	c2 07 a0 44 	ld  [ %fp + 0x44 ], %g1
   12b6c:	c2 00 40 00 	ld  [ %g1 ], %g1
   12b70:	c0 20 60 04 	clr  [ %g1 + 4 ]
   12b74:	c2 07 a0 44 	ld  [ %fp + 0x44 ], %g1
   12b78:	c4 00 40 00 	ld  [ %g1 ], %g2
   12b7c:	c2 07 a0 48 	ld  [ %fp + 0x48 ], %g1
   12b80:	c2 20 a0 08 	st  %g1, [ %g2 + 8 ]
   12b84:	b0 10 00 01 	mov  %g1, %i0
   12b88:	81 c7 e0 08 	ret 
   12b8c:	81 e8 00 00 	restore 

00012b90 <Insert>:
   12b90:	9d e3 bf 98 	save  %sp, -104, %sp
   12b94:	f0 27 a0 44 	st  %i0, [ %fp + 0x44 ]
   12b98:	f2 27 a0 48 	st  %i1, [ %fp + 0x48 ]
   12b9c:	c2 07 a0 48 	ld  [ %fp + 0x48 ], %g1
   12ba0:	c4 00 60 08 	ld  [ %g1 + 8 ], %g2
   12ba4:	c2 07 a0 44 	ld  [ %fp + 0x44 ], %g1
   12ba8:	80 a0 80 01 	cmp  %g2, %g1
   12bac:	16 80 00 14 	bge  12bfc <Insert+0x6c>
   12bb0:	01 00 00 00 	nop 
   12bb4:	c2 07 a0 48 	ld  [ %fp + 0x48 ], %g1
   12bb8:	c2 00 40 00 	ld  [ %g1 ], %g1
   12bbc:	80 a0 60 00 	cmp  %g1, 0
   12bc0:	12 80 00 08 	bne  12be0 <Insert+0x50>
   12bc4:	01 00 00 00 	nop 
   12bc8:	d0 07 a0 48 	ld  [ %fp + 0x48 ], %o0
   12bcc:	d2 07 a0 44 	ld  [ %fp + 0x44 ], %o1
   12bd0:	7f ff ff da 	call  12b38 <CreateNode>
   12bd4:	01 00 00 00 	nop 
   12bd8:	10 80 00 21 	b  12c5c <Insert+0xcc>
   12bdc:	01 00 00 00 	nop 
   12be0:	c2 07 a0 48 	ld  [ %fp + 0x48 ], %g1
   12be4:	d0 07 a0 44 	ld  [ %fp + 0x44 ], %o0
   12be8:	d2 00 40 00 	ld  [ %g1 ], %o1
   12bec:	7f ff ff e9 	call  12b90 <Insert>
   12bf0:	01 00 00 00 	nop 
   12bf4:	10 80 00 1a 	b  12c5c <Insert+0xcc>
   12bf8:	01 00 00 00 	nop 
   12bfc:	c2 07 a0 48 	ld  [ %fp + 0x48 ], %g1
   12c00:	c4 00 60 08 	ld  [ %g1 + 8 ], %g2
   12c04:	c2 07 a0 44 	ld  [ %fp + 0x44 ], %g1
   12c08:	80 a0 80 01 	cmp  %g2, %g1
   12c0c:	04 80 00 14 	ble  12c5c <Insert+0xcc>
   12c10:	01 00 00 00 	nop 
   12c14:	c2 07 a0 48 	ld  [ %fp + 0x48 ], %g1
   12c18:	c2 00 60 04 	ld  [ %g1 + 4 ], %g1
   12c1c:	80 a0 60 00 	cmp  %g1, 0
   12c20:	12 80 00 0a 	bne  12c48 <Insert+0xb8>
   12c24:	01 00 00 00 	nop 
   12c28:	c2 07 a0 48 	ld  [ %fp + 0x48 ], %g1
   12c2c:	82 00 60 04 	add  %g1, 4, %g1
   12c30:	90 10 00 01 	mov  %g1, %o0
   12c34:	d2 07 a0 44 	ld  [ %fp + 0x44 ], %o1
   12c38:	7f ff ff c0 	call  12b38 <CreateNode>
   12c3c:	01 00 00 00 	nop 
   12c40:	10 80 00 07 	b  12c5c <Insert+0xcc>
   12c44:	01 00 00 00 	nop 
   12c48:	c2 07 a0 48 	ld  [ %fp + 0x48 ], %g1
   12c4c:	d0 07 a0 44 	ld  [ %fp + 0x44 ], %o0
   12c50:	d2 00 60 04 	ld  [ %g1 + 4 ], %o1
   12c54:	7f ff ff cf 	call  12b90 <Insert>
   12c58:	01 00 00 00 	nop 
   12c5c:	b0 10 00 01 	mov  %g1, %i0
   12c60:	81 c7 e0 08 	ret 
   12c64:	81 e8 00 00 	restore 

00012c68 <Checktree>:
   12c68:	9d e3 bf 88 	save  %sp, -120, %sp
   12c6c:	f0 27 a0 44 	st  %i0, [ %fp + 0x44 ]
   12c70:	82 10 20 01 	mov  1, %g1
   12c74:	c2 27 bf f4 	st  %g1, [ %fp + -12 ]
   12c78:	c2 07 a0 44 	ld  [ %fp + 0x44 ], %g1
   12c7c:	c2 00 40 00 	ld  [ %g1 ], %g1
   12c80:	80 a0 60 00 	cmp  %g1, 0
   12c84:	02 80 00 1e 	be  12cfc <Checktree+0x94>
   12c88:	01 00 00 00 	nop 
   12c8c:	c2 07 a0 44 	ld  [ %fp + 0x44 ], %g1
   12c90:	c2 00 40 00 	ld  [ %g1 ], %g1
   12c94:	c4 07 a0 44 	ld  [ %fp + 0x44 ], %g2
   12c98:	c6 00 60 08 	ld  [ %g1 + 8 ], %g3
   12c9c:	c2 00 a0 08 	ld  [ %g2 + 8 ], %g1
   12ca0:	80 a0 c0 01 	cmp  %g3, %g1
   12ca4:	14 80 00 05 	bg  12cb8 <Checktree+0x50>
   12ca8:	01 00 00 00 	nop 
   12cac:	c0 27 bf f4 	clr  [ %fp + -12 ]
   12cb0:	10 80 00 13 	b  12cfc <Checktree+0x94>
   12cb4:	01 00 00 00 	nop 
   12cb8:	c0 27 bf f0 	clr  [ %fp + -16 ]
   12cbc:	c2 07 a0 44 	ld  [ %fp + 0x44 ], %g1
   12cc0:	d0 00 40 00 	ld  [ %g1 ], %o0
   12cc4:	7f ff ff e9 	call  12c68 <Checktree>
   12cc8:	01 00 00 00 	nop 
   12ccc:	82 10 00 08 	mov  %o0, %g1
   12cd0:	80 a0 60 00 	cmp  %g1, 0
   12cd4:	02 80 00 08 	be  12cf4 <Checktree+0x8c>
   12cd8:	01 00 00 00 	nop 
   12cdc:	c2 07 bf f4 	ld  [ %fp + -12 ], %g1
   12ce0:	80 a0 60 00 	cmp  %g1, 0
   12ce4:	02 80 00 04 	be  12cf4 <Checktree+0x8c>
   12ce8:	01 00 00 00 	nop 
   12cec:	82 10 20 01 	mov  1, %g1	! 1 <_init-0x10347>
   12cf0:	c2 27 bf f0 	st  %g1, [ %fp + -16 ]
   12cf4:	c2 07 bf f0 	ld  [ %fp + -16 ], %g1
   12cf8:	c2 27 bf f4 	st  %g1, [ %fp + -12 ]
   12cfc:	c2 07 a0 44 	ld  [ %fp + 0x44 ], %g1
   12d00:	c2 00 60 04 	ld  [ %g1 + 4 ], %g1
   12d04:	80 a0 60 00 	cmp  %g1, 0
   12d08:	02 80 00 1e 	be  12d80 <Checktree+0x118>
   12d0c:	01 00 00 00 	nop 
   12d10:	c2 07 a0 44 	ld  [ %fp + 0x44 ], %g1
   12d14:	c2 00 60 04 	ld  [ %g1 + 4 ], %g1
   12d18:	c4 07 a0 44 	ld  [ %fp + 0x44 ], %g2
   12d1c:	c6 00 60 08 	ld  [ %g1 + 8 ], %g3
   12d20:	c2 00 a0 08 	ld  [ %g2 + 8 ], %g1
   12d24:	80 a0 c0 01 	cmp  %g3, %g1
   12d28:	06 80 00 05 	bl  12d3c <Checktree+0xd4>
   12d2c:	01 00 00 00 	nop 
   12d30:	c0 27 bf f4 	clr  [ %fp + -12 ]
   12d34:	10 80 00 13 	b  12d80 <Checktree+0x118>
   12d38:	01 00 00 00 	nop 
   12d3c:	c0 27 bf ec 	clr  [ %fp + -20 ]
   12d40:	c2 07 a0 44 	ld  [ %fp + 0x44 ], %g1
   12d44:	d0 00 60 04 	ld  [ %g1 + 4 ], %o0
   12d48:	7f ff ff c8 	call  12c68 <Checktree>
   12d4c:	01 00 00 00 	nop 
   12d50:	82 10 00 08 	mov  %o0, %g1
   12d54:	80 a0 60 00 	cmp  %g1, 0
   12d58:	02 80 00 08 	be  12d78 <Checktree+0x110>
   12d5c:	01 00 00 00 	nop 
   12d60:	c2 07 bf f4 	ld  [ %fp + -12 ], %g1
   12d64:	80 a0 60 00 	cmp  %g1, 0
   12d68:	02 80 00 04 	be  12d78 <Checktree+0x110>
   12d6c:	01 00 00 00 	nop 
   12d70:	82 10 20 01 	mov  1, %g1	! 1 <_init-0x10347>
   12d74:	c2 27 bf ec 	st  %g1, [ %fp + -20 ]
   12d78:	c2 07 bf ec 	ld  [ %fp + -20 ], %g1
   12d7c:	c2 27 bf f4 	st  %g1, [ %fp + -12 ]
   12d80:	c2 07 bf f4 	ld  [ %fp + -12 ], %g1
   12d84:	b0 10 00 01 	mov  %g1, %i0
   12d88:	81 c7 e0 08 	ret 
   12d8c:	81 e8 00 00 	restore 

00012d90 <Trees>:
   12d90:	9d e3 bf 90 	save  %sp, -112, %sp
   12d94:	7f ff ff 0f 	call  129d0 <tInitarr>
   12d98:	01 00 00 00 	nop 
   12d9c:	03 00 00 fc 	sethi  %hi(0x3f000), %g1
   12da0:	a0 10 62 f0 	or  %g1, 0x2f0, %l0	! 3f2f0 <tree>
   12da4:	90 10 20 0c 	mov  0xc, %o0
   12da8:	40 00 54 e0 	call  28128 <malloc@plt>
   12dac:	01 00 00 00 	nop 
   12db0:	82 10 00 08 	mov  %o0, %g1
   12db4:	c2 24 00 00 	st  %g1, [ %l0 ]
   12db8:	03 00 00 fc 	sethi  %hi(0x3f000), %g1
   12dbc:	82 10 62 f0 	or  %g1, 0x2f0, %g1	! 3f2f0 <tree>
   12dc0:	c2 00 40 00 	ld  [ %g1 ], %g1
   12dc4:	c0 20 40 00 	clr  [ %g1 ]
   12dc8:	03 00 00 fc 	sethi  %hi(0x3f000), %g1
   12dcc:	82 10 62 f0 	or  %g1, 0x2f0, %g1	! 3f2f0 <tree>
   12dd0:	c2 00 40 00 	ld  [ %g1 ], %g1
   12dd4:	c0 20 60 04 	clr  [ %g1 + 4 ]
   12dd8:	03 00 00 fc 	sethi  %hi(0x3f000), %g1
   12ddc:	82 10 62 f0 	or  %g1, 0x2f0, %g1	! 3f2f0 <tree>
   12de0:	c4 00 40 00 	ld  [ %g1 ], %g2
   12de4:	03 00 00 cb 	sethi  %hi(0x32c00), %g1
   12de8:	82 10 63 68 	or  %g1, 0x368, %g1	! 32f68 <sortlist>
   12dec:	c2 00 60 04 	ld  [ %g1 + 4 ], %g1
   12df0:	c2 20 a0 08 	st  %g1, [ %g2 + 8 ]
   12df4:	82 10 20 02 	mov  2, %g1
   12df8:	c2 27 bf f4 	st  %g1, [ %fp + -12 ]
   12dfc:	c2 07 bf f4 	ld  [ %fp + -12 ], %g1
   12e00:	05 00 00 04 	sethi  %hi(0x1000), %g2
   12e04:	84 10 a3 88 	or  %g2, 0x388, %g2	! 1388 <_init-0xefc0>
   12e08:	80 a0 40 02 	cmp  %g1, %g2
   12e0c:	14 80 00 11 	bg  12e50 <Trees+0xc0>
   12e10:	01 00 00 00 	nop 
   12e14:	03 00 00 cb 	sethi  %hi(0x32c00), %g1
   12e18:	86 10 63 68 	or  %g1, 0x368, %g3	! 32f68 <sortlist>
   12e1c:	c2 07 bf f4 	ld  [ %fp + -12 ], %g1
   12e20:	85 28 60 02 	sll  %g1, 2, %g2
   12e24:	03 00 00 fc 	sethi  %hi(0x3f000), %g1
   12e28:	82 10 62 f0 	or  %g1, 0x2f0, %g1	! 3f2f0 <tree>
   12e2c:	d0 00 c0 02 	ld  [ %g3 + %g2 ], %o0
   12e30:	d2 00 40 00 	ld  [ %g1 ], %o1
   12e34:	7f ff ff 57 	call  12b90 <Insert>
   12e38:	01 00 00 00 	nop 
   12e3c:	c2 07 bf f4 	ld  [ %fp + -12 ], %g1
   12e40:	82 00 60 01 	inc  %g1
   12e44:	c2 27 bf f4 	st  %g1, [ %fp + -12 ]
   12e48:	10 bf ff ed 	b  12dfc <Trees+0x6c>
   12e4c:	01 00 00 00 	nop 
   12e50:	03 00 00 fc 	sethi  %hi(0x3f000), %g1
   12e54:	82 10 62 f0 	or  %g1, 0x2f0, %g1	! 3f2f0 <tree>
   12e58:	d0 00 40 00 	ld  [ %g1 ], %o0
   12e5c:	7f ff ff 83 	call  12c68 <Checktree>
   12e60:	01 00 00 00 	nop 
   12e64:	82 10 00 08 	mov  %o0, %g1
   12e68:	80 a0 60 00 	cmp  %g1, 0
   12e6c:	12 80 00 06 	bne  12e84 <Trees+0xf4>
   12e70:	01 00 00 00 	nop 
   12e74:	03 00 00 5a 	sethi  %hi(0x16800), %g1
   12e78:	90 10 62 d0 	or  %g1, 0x2d0, %o0	! 16ad0 <_IO_stdin_used+0xf8>
   12e7c:	40 00 54 b4 	call  2814c <printf@plt>
   12e80:	01 00 00 00 	nop 
   12e84:	b0 10 00 01 	mov  %g1, %i0
   12e88:	81 c7 e0 08 	ret 
   12e8c:	81 e8 00 00 	restore 

00012e90 <bInitarr>:
   12e90:	9d e3 bf 90 	save  %sp, -112, %sp
   12e94:	7f ff f5 7b 	call  10480 <Initrand>
   12e98:	01 00 00 00 	nop 
   12e9c:	03 00 00 df 	sethi  %hi(0x37c00), %g1
   12ea0:	82 10 61 8c 	or  %g1, 0x18c, %g1	! 37d8c <biggest>
   12ea4:	c0 20 40 00 	clr  [ %g1 ]
   12ea8:	03 00 00 cb 	sethi  %hi(0x32c00), %g1
   12eac:	82 10 63 64 	or  %g1, 0x364, %g1	! 32f64 <littlest>
   12eb0:	c0 20 40 00 	clr  [ %g1 ]
   12eb4:	82 10 20 01 	mov  1, %g1
   12eb8:	c2 27 bf f4 	st  %g1, [ %fp + -12 ]
   12ebc:	c2 07 bf f4 	ld  [ %fp + -12 ], %g1
   12ec0:	80 a0 61 f4 	cmp  %g1, 0x1f4
   12ec4:	14 80 00 48 	bg  12fe4 <bInitarr+0x154>
   12ec8:	01 00 00 00 	nop 
   12ecc:	7f ff f5 76 	call  104a4 <Rand>
   12ed0:	01 00 00 00 	nop 
   12ed4:	82 10 00 08 	mov  %o0, %g1
   12ed8:	c2 27 bf f0 	st  %g1, [ %fp + -16 ]
   12edc:	03 00 00 cb 	sethi  %hi(0x32c00), %g1
   12ee0:	88 10 63 68 	or  %g1, 0x368, %g4	! 32f68 <sortlist>
   12ee4:	c2 07 bf f4 	ld  [ %fp + -12 ], %g1
   12ee8:	9b 28 60 02 	sll  %g1, 2, %o5
   12eec:	c6 07 bf f0 	ld  [ %fp + -16 ], %g3
   12ef0:	03 05 3e 2d 	sethi  %hi(0x14f8b400), %g1
   12ef4:	82 10 61 89 	or  %g1, 0x189, %g1	! 14f8b589 <_end+0x14f4c289>
   12ef8:	80 58 c0 01 	smul  %g3, %g1, %g0
   12efc:	83 40 00 00 	rd  %y, %g1
   12f00:	85 38 60 0d 	sra  %g1, 0xd, %g2
   12f04:	83 38 e0 1f 	sra  %g3, 0x1f, %g1
   12f08:	84 20 80 01 	sub  %g2, %g1, %g2
   12f0c:	03 00 00 61 	sethi  %hi(0x18400), %g1
   12f10:	82 10 62 a0 	or  %g1, 0x2a0, %g1	! 186a0 <__FRAME_END__+0x1974>
   12f14:	84 58 80 01 	smul  %g2, %g1, %g2
   12f18:	c2 07 bf f0 	ld  [ %fp + -16 ], %g1
   12f1c:	84 20 40 02 	sub  %g1, %g2, %g2
   12f20:	03 3f ff cf 	sethi  %hi(0xffff3c00), %g1
   12f24:	82 10 60 b0 	or  %g1, 0xb0, %g1	! ffff3cb0 <_end+0xfffb49b0>
   12f28:	82 00 80 01 	add  %g2, %g1, %g1
   12f2c:	c2 21 00 0d 	st  %g1, [ %g4 + %o5 ]
   12f30:	03 00 00 cb 	sethi  %hi(0x32c00), %g1
   12f34:	86 10 63 68 	or  %g1, 0x368, %g3	! 32f68 <sortlist>
   12f38:	c2 07 bf f4 	ld  [ %fp + -12 ], %g1
   12f3c:	85 28 60 02 	sll  %g1, 2, %g2
   12f40:	03 00 00 df 	sethi  %hi(0x37c00), %g1
   12f44:	82 10 61 8c 	or  %g1, 0x18c, %g1	! 37d8c <biggest>
   12f48:	c4 00 c0 02 	ld  [ %g3 + %g2 ], %g2
   12f4c:	c2 00 40 00 	ld  [ %g1 ], %g1
   12f50:	80 a0 80 01 	cmp  %g2, %g1
   12f54:	04 80 00 0c 	ble  12f84 <bInitarr+0xf4>
   12f58:	01 00 00 00 	nop 
   12f5c:	03 00 00 df 	sethi  %hi(0x37c00), %g1
   12f60:	86 10 61 8c 	or  %g1, 0x18c, %g3	! 37d8c <biggest>
   12f64:	03 00 00 cb 	sethi  %hi(0x32c00), %g1
   12f68:	84 10 63 68 	or  %g1, 0x368, %g2	! 32f68 <sortlist>
   12f6c:	c2 07 bf f4 	ld  [ %fp + -12 ], %g1
   12f70:	83 28 60 02 	sll  %g1, 2, %g1
   12f74:	c2 00 80 01 	ld  [ %g2 + %g1 ], %g1
   12f78:	c2 20 c0 00 	st  %g1, [ %g3 ]
   12f7c:	10 80 00 15 	b  12fd0 <bInitarr+0x140>
   12f80:	01 00 00 00 	nop 
   12f84:	03 00 00 cb 	sethi  %hi(0x32c00), %g1
   12f88:	86 10 63 68 	or  %g1, 0x368, %g3	! 32f68 <sortlist>
   12f8c:	c2 07 bf f4 	ld  [ %fp + -12 ], %g1
   12f90:	85 28 60 02 	sll  %g1, 2, %g2
   12f94:	03 00 00 cb 	sethi  %hi(0x32c00), %g1
   12f98:	82 10 63 64 	or  %g1, 0x364, %g1	! 32f64 <littlest>
   12f9c:	c4 00 c0 02 	ld  [ %g3 + %g2 ], %g2
   12fa0:	c2 00 40 00 	ld  [ %g1 ], %g1
   12fa4:	80 a0 80 01 	cmp  %g2, %g1
   12fa8:	16 80 00 0a 	bge  12fd0 <bInitarr+0x140>
   12fac:	01 00 00 00 	nop 
   12fb0:	03 00 00 cb 	sethi  %hi(0x32c00), %g1
   12fb4:	86 10 63 64 	or  %g1, 0x364, %g3	! 32f64 <littlest>
   12fb8:	03 00 00 cb 	sethi  %hi(0x32c00), %g1
   12fbc:	84 10 63 68 	or  %g1, 0x368, %g2	! 32f68 <sortlist>
   12fc0:	c2 07 bf f4 	ld  [ %fp + -12 ], %g1
   12fc4:	83 28 60 02 	sll  %g1, 2, %g1
   12fc8:	c2 00 80 01 	ld  [ %g2 + %g1 ], %g1
   12fcc:	c2 20 c0 00 	st  %g1, [ %g3 ]
   12fd0:	c2 07 bf f4 	ld  [ %fp + -12 ], %g1
   12fd4:	82 00 60 01 	inc  %g1
   12fd8:	c2 27 bf f4 	st  %g1, [ %fp + -12 ]
   12fdc:	10 bf ff b8 	b  12ebc <bInitarr+0x2c>
   12fe0:	01 00 00 00 	nop 
   12fe4:	b0 10 00 01 	mov  %g1, %i0
   12fe8:	81 c7 e0 08 	ret 
   12fec:	81 e8 00 00 	restore 

00012ff0 <Bubble>:
   12ff0:	9d e3 bf 90 	save  %sp, -112, %sp
   12ff4:	7f ff ff a7 	call  12e90 <bInitarr>
   12ff8:	01 00 00 00 	nop 
   12ffc:	03 00 00 c9 	sethi  %hi(0x32400), %g1
   13000:	84 10 63 54 	or  %g1, 0x354, %g2	! 32754 <top>
   13004:	82 10 21 f4 	mov  0x1f4, %g1
   13008:	c2 20 80 00 	st  %g1, [ %g2 ]
   1300c:	03 00 00 c9 	sethi  %hi(0x32400), %g1
   13010:	82 10 63 54 	or  %g1, 0x354, %g1	! 32754 <top>
   13014:	c2 00 40 00 	ld  [ %g1 ], %g1
   13018:	80 a0 60 01 	cmp  %g1, 1
   1301c:	04 80 00 3f 	ble  13118 <Bubble+0x128>
   13020:	01 00 00 00 	nop 
   13024:	82 10 20 01 	mov  1, %g1	! 1 <_init-0x10347>
   13028:	c2 27 bf f4 	st  %g1, [ %fp + -12 ]
   1302c:	03 00 00 c9 	sethi  %hi(0x32400), %g1
   13030:	82 10 63 54 	or  %g1, 0x354, %g1	! 32754 <top>
   13034:	c4 07 bf f4 	ld  [ %fp + -12 ], %g2
   13038:	c2 00 40 00 	ld  [ %g1 ], %g1
   1303c:	80 a0 80 01 	cmp  %g2, %g1
   13040:	16 80 00 2d 	bge  130f4 <Bubble+0x104>
   13044:	01 00 00 00 	nop 
   13048:	03 00 00 cb 	sethi  %hi(0x32c00), %g1
   1304c:	86 10 63 68 	or  %g1, 0x368, %g3	! 32f68 <sortlist>
   13050:	c2 07 bf f4 	ld  [ %fp + -12 ], %g1
   13054:	89 28 60 02 	sll  %g1, 2, %g4
   13058:	03 00 00 cb 	sethi  %hi(0x32c00), %g1
   1305c:	84 10 63 68 	or  %g1, 0x368, %g2	! 32f68 <sortlist>
   13060:	c2 07 bf f4 	ld  [ %fp + -12 ], %g1
   13064:	83 28 60 02 	sll  %g1, 2, %g1
   13068:	82 00 40 02 	add  %g1, %g2, %g1
   1306c:	c4 00 c0 04 	ld  [ %g3 + %g4 ], %g2
   13070:	c2 00 60 04 	ld  [ %g1 + 4 ], %g1
   13074:	80 a0 80 01 	cmp  %g2, %g1
   13078:	04 80 00 1a 	ble  130e0 <Bubble+0xf0>
   1307c:	01 00 00 00 	nop 
   13080:	03 00 00 cb 	sethi  %hi(0x32c00), %g1
   13084:	84 10 63 68 	or  %g1, 0x368, %g2	! 32f68 <sortlist>
   13088:	c2 07 bf f4 	ld  [ %fp + -12 ], %g1
   1308c:	83 28 60 02 	sll  %g1, 2, %g1
   13090:	c2 00 80 01 	ld  [ %g2 + %g1 ], %g1
   13094:	c2 27 bf f0 	st  %g1, [ %fp + -16 ]
   13098:	03 00 00 cb 	sethi  %hi(0x32c00), %g1
   1309c:	88 10 63 68 	or  %g1, 0x368, %g4	! 32f68 <sortlist>
   130a0:	c2 07 bf f4 	ld  [ %fp + -12 ], %g1
   130a4:	87 28 60 02 	sll  %g1, 2, %g3
   130a8:	03 00 00 cb 	sethi  %hi(0x32c00), %g1
   130ac:	84 10 63 68 	or  %g1, 0x368, %g2	! 32f68 <sortlist>
   130b0:	c2 07 bf f4 	ld  [ %fp + -12 ], %g1
   130b4:	83 28 60 02 	sll  %g1, 2, %g1
   130b8:	82 00 40 02 	add  %g1, %g2, %g1
   130bc:	c2 00 60 04 	ld  [ %g1 + 4 ], %g1
   130c0:	c2 21 00 03 	st  %g1, [ %g4 + %g3 ]
   130c4:	03 00 00 cb 	sethi  %hi(0x32c00), %g1
   130c8:	84 10 63 68 	or  %g1, 0x368, %g2	! 32f68 <sortlist>
   130cc:	c2 07 bf f4 	ld  [ %fp + -12 ], %g1
   130d0:	83 28 60 02 	sll  %g1, 2, %g1
   130d4:	84 00 40 02 	add  %g1, %g2, %g2
   130d8:	c2 07 bf f0 	ld  [ %fp + -16 ], %g1
   130dc:	c2 20 a0 04 	st  %g1, [ %g2 + 4 ]
   130e0:	c2 07 bf f4 	ld  [ %fp + -12 ], %g1
   130e4:	82 00 60 01 	inc  %g1
   130e8:	c2 27 bf f4 	st  %g1, [ %fp + -12 ]
   130ec:	10 bf ff d0 	b  1302c <Bubble+0x3c>
   130f0:	01 00 00 00 	nop 
   130f4:	03 00 00 c9 	sethi  %hi(0x32400), %g1
   130f8:	84 10 63 54 	or  %g1, 0x354, %g2	! 32754 <top>
   130fc:	03 00 00 c9 	sethi  %hi(0x32400), %g1
   13100:	82 10 63 54 	or  %g1, 0x354, %g1	! 32754 <top>
   13104:	c2 00 40 00 	ld  [ %g1 ], %g1
   13108:	82 00 7f ff 	add  %g1, -1, %g1
   1310c:	c2 20 80 00 	st  %g1, [ %g2 ]
   13110:	10 bf ff bf 	b  1300c <Bubble+0x1c>
   13114:	01 00 00 00 	nop 
   13118:	03 00 00 cb 	sethi  %hi(0x32c00), %g1
   1311c:	84 10 63 68 	or  %g1, 0x368, %g2	! 32f68 <sortlist>
   13120:	03 00 00 cb 	sethi  %hi(0x32c00), %g1
   13124:	82 10 63 64 	or  %g1, 0x364, %g1	! 32f64 <littlest>
   13128:	c4 00 a0 04 	ld  [ %g2 + 4 ], %g2
   1312c:	c2 00 40 00 	ld  [ %g1 ], %g1
   13130:	80 a0 80 01 	cmp  %g2, %g1
   13134:	12 80 00 0d 	bne  13168 <Bubble+0x178>
   13138:	01 00 00 00 	nop 
   1313c:	03 00 00 cb 	sethi  %hi(0x32c00), %g1
   13140:	84 10 63 68 	or  %g1, 0x368, %g2	! 32f68 <sortlist>
   13144:	03 00 00 df 	sethi  %hi(0x37c00), %g1
   13148:	82 10 61 8c 	or  %g1, 0x18c, %g1	! 37d8c <biggest>
   1314c:	c4 00 a7 d0 	ld  [ %g2 + 0x7d0 ], %g2
   13150:	c2 00 40 00 	ld  [ %g1 ], %g1
   13154:	80 a0 80 01 	cmp  %g2, %g1
   13158:	12 80 00 04 	bne  13168 <Bubble+0x178>
   1315c:	01 00 00 00 	nop 
   13160:	10 80 00 06 	b  13178 <Bubble+0x188>
   13164:	01 00 00 00 	nop 
   13168:	03 00 00 5a 	sethi  %hi(0x16800), %g1
   1316c:	90 10 62 e8 	or  %g1, 0x2e8, %o0	! 16ae8 <_IO_stdin_used+0x110>
   13170:	40 00 53 f7 	call  2814c <printf@plt>
   13174:	01 00 00 00 	nop 
   13178:	b0 10 00 01 	mov  %g1, %i0
   1317c:	81 c7 e0 08 	ret 
   13180:	81 e8 00 00 	restore 

00013184 <Cos>:
   13184:	9d e3 bf 88 	save  %sp, -120, %sp
   13188:	84 10 00 18 	mov  %i0, %g2
   1318c:	86 10 00 19 	mov  %i1, %g3
   13190:	90 10 00 02 	mov  %g2, %o0
   13194:	92 10 00 03 	mov  %g3, %o1
   13198:	40 00 0c 38 	call  16278 <__truncdfsf2>
   1319c:	01 00 00 00 	nop 
   131a0:	82 10 00 08 	mov  %o0, %g1
   131a4:	c2 27 a0 44 	st  %g1, [ %fp + 0x44 ]
   131a8:	03 00 00 5a 	sethi  %hi(0x16800), %g1
   131ac:	82 10 62 fc 	or  %g1, 0x2fc, %g1	! 16afc <_IO_stdin_used+0x124>
   131b0:	c2 00 40 00 	ld  [ %g1 ], %g1
   131b4:	c2 27 bf ec 	st  %g1, [ %fp + -20 ]
   131b8:	82 10 20 01 	mov  1, %g1
   131bc:	c2 27 bf f0 	st  %g1, [ %fp + -16 ]
   131c0:	c2 07 a0 44 	ld  [ %fp + 0x44 ], %g1
   131c4:	c2 27 bf e8 	st  %g1, [ %fp + -24 ]
   131c8:	82 10 20 02 	mov  2, %g1
   131cc:	c2 27 bf f4 	st  %g1, [ %fp + -12 ]
   131d0:	c2 07 bf f4 	ld  [ %fp + -12 ], %g1
   131d4:	80 a0 60 0a 	cmp  %g1, 0xa
   131d8:	14 80 00 3c 	bg  132c8 <Cos+0x144>
   131dc:	01 00 00 00 	nop 
   131e0:	c4 07 bf f0 	ld  [ %fp + -16 ], %g2
   131e4:	c2 07 bf f4 	ld  [ %fp + -12 ], %g1
   131e8:	82 58 80 01 	smul  %g2, %g1, %g1
   131ec:	c2 27 bf f0 	st  %g1, [ %fp + -16 ]
   131f0:	d0 07 bf e8 	ld  [ %fp + -24 ], %o0
   131f4:	d2 07 a0 44 	ld  [ %fp + 0x44 ], %o1
   131f8:	40 00 08 84 	call  15408 <__mulsf3>
   131fc:	01 00 00 00 	nop 
   13200:	82 10 00 08 	mov  %o0, %g1
   13204:	c2 27 bf e8 	st  %g1, [ %fp + -24 ]
   13208:	c2 07 bf f4 	ld  [ %fp + -12 ], %g1
   1320c:	82 18 60 01 	xor  %g1, 1, %g1
   13210:	82 08 60 01 	and  %g1, 1, %g1
   13214:	80 a0 60 00 	cmp  %g1, 0
   13218:	02 80 00 27 	be  132b4 <Cos+0x130>
   1321c:	01 00 00 00 	nop 
   13220:	c2 07 bf f4 	ld  [ %fp + -12 ], %g1
   13224:	82 08 60 03 	and  %g1, 3, %g1
   13228:	80 a0 60 00 	cmp  %g1, 0
   1322c:	12 80 00 13 	bne  13278 <Cos+0xf4>
   13230:	01 00 00 00 	nop 
   13234:	d0 07 bf f0 	ld  [ %fp + -16 ], %o0
   13238:	40 00 09 4e 	call  15770 <__floatsisf>
   1323c:	01 00 00 00 	nop 
   13240:	82 10 00 08 	mov  %o0, %g1
   13244:	d0 07 bf e8 	ld  [ %fp + -24 ], %o0
   13248:	92 10 00 01 	mov  %g1, %o1
   1324c:	40 00 08 eb 	call  155f8 <__divsf3>
   13250:	01 00 00 00 	nop 
   13254:	82 10 00 08 	mov  %o0, %g1
   13258:	d0 07 bf ec 	ld  [ %fp + -20 ], %o0
   1325c:	92 10 00 01 	mov  %g1, %o1
   13260:	40 00 08 3f 	call  1535c <__addsf3>
   13264:	01 00 00 00 	nop 
   13268:	82 10 00 08 	mov  %o0, %g1
   1326c:	c2 27 bf ec 	st  %g1, [ %fp + -20 ]
   13270:	10 80 00 11 	b  132b4 <Cos+0x130>
   13274:	01 00 00 00 	nop 
   13278:	d0 07 bf f0 	ld  [ %fp + -16 ], %o0
   1327c:	40 00 09 3d 	call  15770 <__floatsisf>
   13280:	01 00 00 00 	nop 
   13284:	82 10 00 08 	mov  %o0, %g1
   13288:	d0 07 bf e8 	ld  [ %fp + -24 ], %o0
   1328c:	92 10 00 01 	mov  %g1, %o1
   13290:	40 00 08 da 	call  155f8 <__divsf3>
   13294:	01 00 00 00 	nop 
   13298:	82 10 00 08 	mov  %o0, %g1
   1329c:	d0 07 bf ec 	ld  [ %fp + -20 ], %o0
   132a0:	92 10 00 01 	mov  %g1, %o1
   132a4:	40 00 08 41 	call  153a8 <__subsf3>
   132a8:	01 00 00 00 	nop 
   132ac:	82 10 00 08 	mov  %o0, %g1
   132b0:	c2 27 bf ec 	st  %g1, [ %fp + -20 ]
   132b4:	c2 07 bf f4 	ld  [ %fp + -12 ], %g1
   132b8:	82 00 60 01 	inc  %g1
   132bc:	c2 27 bf f4 	st  %g1, [ %fp + -12 ]
   132c0:	10 bf ff c4 	b  131d0 <Cos+0x4c>
   132c4:	01 00 00 00 	nop 
   132c8:	c2 07 bf ec 	ld  [ %fp + -20 ], %g1
   132cc:	b0 10 00 01 	mov  %g1, %i0
   132d0:	81 c7 e0 08 	ret 
   132d4:	81 e8 00 00 	restore 

000132d8 <Min0>:
   132d8:	9d e3 bf 90 	save  %sp, -112, %sp
   132dc:	f0 27 a0 44 	st  %i0, [ %fp + 0x44 ]
   132e0:	f2 27 a0 48 	st  %i1, [ %fp + 0x48 ]
   132e4:	c4 07 a0 44 	ld  [ %fp + 0x44 ], %g2
   132e8:	c2 07 a0 48 	ld  [ %fp + 0x48 ], %g1
   132ec:	80 a0 80 01 	cmp  %g2, %g1
   132f0:	16 80 00 06 	bge  13308 <Min0+0x30>
   132f4:	01 00 00 00 	nop 
   132f8:	c2 07 a0 44 	ld  [ %fp + 0x44 ], %g1
   132fc:	c2 27 bf f4 	st  %g1, [ %fp + -12 ]
   13300:	10 80 00 04 	b  13310 <Min0+0x38>
   13304:	01 00 00 00 	nop 
   13308:	c2 07 a0 48 	ld  [ %fp + 0x48 ], %g1
   1330c:	c2 27 bf f4 	st  %g1, [ %fp + -12 ]
   13310:	f0 07 bf f4 	ld  [ %fp + -12 ], %i0
   13314:	81 c7 e0 08 	ret 
   13318:	81 e8 00 00 	restore 

0001331c <Printcomplex>:
   1331c:	9d e3 bf 90 	save  %sp, -112, %sp
   13320:	f0 27 a0 44 	st  %i0, [ %fp + 0x44 ]
   13324:	f2 27 a0 48 	st  %i1, [ %fp + 0x48 ]
   13328:	f4 27 a0 4c 	st  %i2, [ %fp + 0x4c ]
   1332c:	f6 27 a0 50 	st  %i3, [ %fp + 0x50 ]
   13330:	f8 27 a0 54 	st  %i4, [ %fp + 0x54 ]
   13334:	fa 27 a0 58 	st  %i5, [ %fp + 0x58 ]
   13338:	03 00 00 5a 	sethi  %hi(0x16800), %g1
   1333c:	90 10 63 00 	or  %g1, 0x300, %o0	! 16b00 <_IO_stdin_used+0x128>
   13340:	40 00 53 83 	call  2814c <printf@plt>
   13344:	01 00 00 00 	nop 
   13348:	c2 07 a0 50 	ld  [ %fp + 0x50 ], %g1
   1334c:	c2 27 bf f4 	st  %g1, [ %fp + -12 ]
   13350:	c2 07 bf f4 	ld  [ %fp + -12 ], %g1
   13354:	85 28 60 03 	sll  %g1, 3, %g2
   13358:	c2 07 a0 4c 	ld  [ %fp + 0x4c ], %g1
   1335c:	82 00 80 01 	add  %g2, %g1, %g1
   13360:	d0 00 40 00 	ld  [ %g1 ], %o0
   13364:	40 00 09 34 	call  15834 <__extendsfdf2>
   13368:	01 00 00 00 	nop 
   1336c:	a0 10 00 08 	mov  %o0, %l0
   13370:	a2 10 00 09 	mov  %o1, %l1
   13374:	c2 07 bf f4 	ld  [ %fp + -12 ], %g1
   13378:	85 28 60 03 	sll  %g1, 3, %g2
   1337c:	c2 07 a0 4c 	ld  [ %fp + 0x4c ], %g1
   13380:	82 00 80 01 	add  %g2, %g1, %g1
   13384:	d0 00 60 04 	ld  [ %g1 + 4 ], %o0
   13388:	40 00 09 2b 	call  15834 <__extendsfdf2>
   1338c:	01 00 00 00 	nop 
   13390:	84 10 00 08 	mov  %o0, %g2
   13394:	86 10 00 09 	mov  %o1, %g3
   13398:	03 00 00 5a 	sethi  %hi(0x16800), %g1
   1339c:	90 10 63 08 	or  %g1, 0x308, %o0	! 16b08 <_IO_stdin_used+0x130>
   133a0:	92 10 00 10 	mov  %l0, %o1
   133a4:	94 10 00 11 	mov  %l1, %o2
   133a8:	96 10 00 02 	mov  %g2, %o3
   133ac:	98 10 00 03 	mov  %g3, %o4
   133b0:	40 00 53 67 	call  2814c <printf@plt>
   133b4:	01 00 00 00 	nop 
   133b8:	c4 07 bf f4 	ld  [ %fp + -12 ], %g2
   133bc:	c2 07 a0 58 	ld  [ %fp + 0x58 ], %g1
   133c0:	82 00 80 01 	add  %g2, %g1, %g1
   133c4:	c2 27 bf f4 	st  %g1, [ %fp + -12 ]
   133c8:	c2 07 bf f4 	ld  [ %fp + -12 ], %g1
   133cc:	85 28 60 03 	sll  %g1, 3, %g2
   133d0:	c2 07 a0 4c 	ld  [ %fp + 0x4c ], %g1
   133d4:	82 00 80 01 	add  %g2, %g1, %g1
   133d8:	d0 00 40 00 	ld  [ %g1 ], %o0
   133dc:	40 00 09 16 	call  15834 <__extendsfdf2>
   133e0:	01 00 00 00 	nop 
   133e4:	a0 10 00 08 	mov  %o0, %l0
   133e8:	a2 10 00 09 	mov  %o1, %l1
   133ec:	c2 07 bf f4 	ld  [ %fp + -12 ], %g1
   133f0:	85 28 60 03 	sll  %g1, 3, %g2
   133f4:	c2 07 a0 4c 	ld  [ %fp + 0x4c ], %g1
   133f8:	82 00 80 01 	add  %g2, %g1, %g1
   133fc:	d0 00 60 04 	ld  [ %g1 + 4 ], %o0
   13400:	40 00 09 0d 	call  15834 <__extendsfdf2>
   13404:	01 00 00 00 	nop 
   13408:	84 10 00 08 	mov  %o0, %g2
   1340c:	86 10 00 09 	mov  %o1, %g3
   13410:	03 00 00 5a 	sethi  %hi(0x16800), %g1
   13414:	90 10 63 08 	or  %g1, 0x308, %o0	! 16b08 <_IO_stdin_used+0x130>
   13418:	92 10 00 10 	mov  %l0, %o1
   1341c:	94 10 00 11 	mov  %l1, %o2
   13420:	96 10 00 02 	mov  %g2, %o3
   13424:	98 10 00 03 	mov  %g3, %o4
   13428:	40 00 53 49 	call  2814c <printf@plt>
   1342c:	01 00 00 00 	nop 
   13430:	03 00 00 5a 	sethi  %hi(0x16800), %g1
   13434:	90 10 63 00 	or  %g1, 0x300, %o0	! 16b00 <_IO_stdin_used+0x128>
   13438:	40 00 53 45 	call  2814c <printf@plt>
   1343c:	01 00 00 00 	nop 
   13440:	c4 07 bf f4 	ld  [ %fp + -12 ], %g2
   13444:	c2 07 a0 58 	ld  [ %fp + 0x58 ], %g1
   13448:	82 00 80 01 	add  %g2, %g1, %g1
   1344c:	c2 27 bf f4 	st  %g1, [ %fp + -12 ]
   13450:	c4 07 bf f4 	ld  [ %fp + -12 ], %g2
   13454:	c2 07 a0 54 	ld  [ %fp + 0x54 ], %g1
   13458:	80 a0 80 01 	cmp  %g2, %g1
   1345c:	14 80 00 04 	bg  1346c <Printcomplex+0x150>
   13460:	01 00 00 00 	nop 
   13464:	10 bf ff bb 	b  13350 <Printcomplex+0x34>
   13468:	01 00 00 00 	nop 
   1346c:	b0 10 00 01 	mov  %g1, %i0
   13470:	81 c7 e0 08 	ret 
   13474:	81 e8 00 00 	restore 

00013478 <Uniform11>:
   13478:	9d e3 bf 98 	save  %sp, -104, %sp
   1347c:	f0 27 a0 44 	st  %i0, [ %fp + 0x44 ]
   13480:	84 10 00 19 	mov  %i1, %g2
   13484:	86 10 00 1a 	mov  %i2, %g3
   13488:	90 10 00 02 	mov  %g2, %o0
   1348c:	92 10 00 03 	mov  %g3, %o1
   13490:	40 00 0b 7a 	call  16278 <__truncdfsf2>
   13494:	01 00 00 00 	nop 
   13498:	82 10 00 08 	mov  %o0, %g1
   1349c:	c2 27 a0 48 	st  %g1, [ %fp + 0x48 ]
   134a0:	c4 07 a0 44 	ld  [ %fp + 0x44 ], %g2
   134a4:	03 00 00 04 	sethi  %hi(0x1000), %g1
   134a8:	82 10 62 f7 	or  %g1, 0x2f7, %g1	! 12f7 <_init-0xf051>
   134ac:	82 58 80 01 	smul  %g2, %g1, %g1
   134b0:	84 00 66 c3 	add  %g1, 0x6c3, %g2
   134b4:	03 00 00 07 	sethi  %hi(0x1c00), %g1
   134b8:	82 10 63 ff 	or  %g1, 0x3ff, %g1	! 1fff <_init-0xe349>
   134bc:	82 08 80 01 	and  %g2, %g1, %g1
   134c0:	c2 27 a0 44 	st  %g1, [ %fp + 0x44 ]
   134c4:	d0 07 a0 44 	ld  [ %fp + 0x44 ], %o0
   134c8:	40 00 0b 1b 	call  16134 <__floatsidf>
   134cc:	01 00 00 00 	nop 
   134d0:	84 10 00 08 	mov  %o0, %g2
   134d4:	86 10 00 09 	mov  %o1, %g3
   134d8:	03 00 00 5a 	sethi  %hi(0x16800), %g1
   134dc:	82 10 63 18 	or  %g1, 0x318, %g1	! 16b18 <_IO_stdin_used+0x140>
   134e0:	90 10 00 02 	mov  %g2, %o0
   134e4:	92 10 00 03 	mov  %g3, %o1
   134e8:	d4 00 40 00 	ld  [ %g1 ], %o2
   134ec:	d6 00 60 04 	ld  [ %g1 + 4 ], %o3
   134f0:	40 00 0a 8b 	call  15f1c <__divdf3>
   134f4:	01 00 00 00 	nop 
   134f8:	84 10 00 08 	mov  %o0, %g2
   134fc:	86 10 00 09 	mov  %o1, %g3
   13500:	90 10 00 02 	mov  %g2, %o0
   13504:	92 10 00 03 	mov  %g3, %o1
   13508:	40 00 0b 5c 	call  16278 <__truncdfsf2>
   1350c:	01 00 00 00 	nop 
   13510:	82 10 00 08 	mov  %o0, %g1
   13514:	c2 27 a0 48 	st  %g1, [ %fp + 0x48 ]
   13518:	b0 10 00 01 	mov  %g1, %i0
   1351c:	81 c7 e0 08 	ret 
   13520:	81 e8 00 00 	restore 

00013524 <Exptab>:
   13524:	9d e3 bf 10 	save  %sp, -240, %sp
   13528:	f0 27 a0 44 	st  %i0, [ %fp + 0x44 ]
   1352c:	f2 27 a0 48 	st  %i1, [ %fp + 0x48 ]
   13530:	03 00 00 5a 	sethi  %hi(0x16800), %g1
   13534:	82 10 63 20 	or  %g1, 0x320, %g1	! 16b20 <_IO_stdin_used+0x148>
   13538:	c2 00 40 00 	ld  [ %g1 ], %g1
   1353c:	c2 27 bf f4 	st  %g1, [ %fp + -12 ]
   13540:	03 00 00 5a 	sethi  %hi(0x16800), %g1
   13544:	82 10 63 24 	or  %g1, 0x324, %g1	! 16b24 <_IO_stdin_used+0x14c>
   13548:	c2 00 40 00 	ld  [ %g1 ], %g1
   1354c:	c2 27 bf f0 	st  %g1, [ %fp + -16 ]
   13550:	82 10 20 01 	mov  1, %g1
   13554:	c2 27 bf 84 	st  %g1, [ %fp + -124 ]
   13558:	c2 07 bf 84 	ld  [ %fp + -124 ], %g1
   1355c:	80 a0 60 19 	cmp  %g1, 0x19
   13560:	14 80 00 2e 	bg  13618 <Exptab+0xf4>
   13564:	01 00 00 00 	nop 
   13568:	c2 07 bf 84 	ld  [ %fp + -124 ], %g1
   1356c:	85 28 60 02 	sll  %g1, 2, %g2
   13570:	82 07 bf f8 	add  %fp, -8, %g1
   13574:	a0 00 80 01 	add  %g2, %g1, %l0
   13578:	d0 07 bf f4 	ld  [ %fp + -12 ], %o0
   1357c:	d2 07 bf f0 	ld  [ %fp + -16 ], %o1
   13580:	40 00 08 1e 	call  155f8 <__divsf3>
   13584:	01 00 00 00 	nop 
   13588:	82 10 00 08 	mov  %o0, %g1
   1358c:	90 10 00 01 	mov  %g1, %o0
   13590:	40 00 08 a9 	call  15834 <__extendsfdf2>
   13594:	01 00 00 00 	nop 
   13598:	84 10 00 08 	mov  %o0, %g2
   1359c:	86 10 00 09 	mov  %o1, %g3
   135a0:	90 10 00 02 	mov  %g2, %o0
   135a4:	92 10 00 03 	mov  %g3, %o1
   135a8:	7f ff fe f7 	call  13184 <Cos>
   135ac:	01 00 00 00 	nop 
   135b0:	82 10 00 08 	mov  %o0, %g1
   135b4:	90 10 00 01 	mov  %g1, %o0
   135b8:	92 10 00 01 	mov  %g1, %o1
   135bc:	40 00 07 68 	call  1535c <__addsf3>
   135c0:	01 00 00 00 	nop 
   135c4:	84 10 00 08 	mov  %o0, %g2
   135c8:	03 00 00 5a 	sethi  %hi(0x16800), %g1
   135cc:	82 10 63 28 	or  %g1, 0x328, %g1	! 16b28 <_IO_stdin_used+0x150>
   135d0:	d0 00 40 00 	ld  [ %g1 ], %o0
   135d4:	92 10 00 02 	mov  %g2, %o1
   135d8:	40 00 08 08 	call  155f8 <__divsf3>
   135dc:	01 00 00 00 	nop 
   135e0:	82 10 00 08 	mov  %o0, %g1
   135e4:	c2 24 3f 90 	st  %g1, [ %l0 + -112 ]
   135e8:	c2 07 bf f0 	ld  [ %fp + -16 ], %g1
   135ec:	90 10 00 01 	mov  %g1, %o0
   135f0:	92 10 00 01 	mov  %g1, %o1
   135f4:	40 00 07 5a 	call  1535c <__addsf3>
   135f8:	01 00 00 00 	nop 
   135fc:	82 10 00 08 	mov  %o0, %g1
   13600:	c2 27 bf f0 	st  %g1, [ %fp + -16 ]
   13604:	c2 07 bf 84 	ld  [ %fp + -124 ], %g1
   13608:	82 00 60 01 	inc  %g1
   1360c:	c2 27 bf 84 	st  %g1, [ %fp + -124 ]
   13610:	10 bf ff d2 	b  13558 <Exptab+0x34>
   13614:	01 00 00 00 	nop 
   13618:	c4 07 a0 44 	ld  [ %fp + 0x44 ], %g2
   1361c:	83 38 a0 1f 	sra  %g2, 0x1f, %g1
   13620:	83 30 60 1f 	srl  %g1, 0x1f, %g1
   13624:	82 00 80 01 	add  %g2, %g1, %g1
   13628:	83 38 60 01 	sra  %g1, 1, %g1
   1362c:	c2 27 bf 74 	st  %g1, [ %fp + -140 ]
   13630:	c4 07 bf 74 	ld  [ %fp + -140 ], %g2
   13634:	83 38 a0 1f 	sra  %g2, 0x1f, %g1
   13638:	83 30 60 1f 	srl  %g1, 0x1f, %g1
   1363c:	82 00 80 01 	add  %g2, %g1, %g1
   13640:	83 38 60 01 	sra  %g1, 1, %g1
   13644:	c2 27 bf 78 	st  %g1, [ %fp + -136 ]
   13648:	82 10 20 01 	mov  1, %g1
   1364c:	c2 27 bf 80 	st  %g1, [ %fp + -128 ]
   13650:	84 10 20 08 	mov  8, %g2
   13654:	c2 07 a0 48 	ld  [ %fp + 0x48 ], %g1
   13658:	84 00 80 01 	add  %g2, %g1, %g2
   1365c:	03 00 00 5a 	sethi  %hi(0x16800), %g1
   13660:	82 10 63 28 	or  %g1, 0x328, %g1	! 16b28 <_IO_stdin_used+0x150>
   13664:	c2 00 40 00 	ld  [ %g1 ], %g1
   13668:	c2 20 80 00 	st  %g1, [ %g2 ]
   1366c:	84 10 20 08 	mov  8, %g2
   13670:	c2 07 a0 48 	ld  [ %fp + 0x48 ], %g1
   13674:	84 00 80 01 	add  %g2, %g1, %g2
   13678:	03 00 00 5a 	sethi  %hi(0x16800), %g1
   1367c:	82 10 63 2c 	or  %g1, 0x32c, %g1	! 16b2c <_IO_stdin_used+0x154>
   13680:	c2 00 40 00 	ld  [ %g1 ], %g1
   13684:	c2 20 a0 04 	st  %g1, [ %g2 + 4 ]
   13688:	c2 07 bf 78 	ld  [ %fp + -136 ], %g1
   1368c:	85 28 60 03 	sll  %g1, 3, %g2
   13690:	c2 07 a0 48 	ld  [ %fp + 0x48 ], %g1
   13694:	84 00 80 01 	add  %g2, %g1, %g2
   13698:	03 00 00 5a 	sethi  %hi(0x16800), %g1
   1369c:	82 10 63 2c 	or  %g1, 0x32c, %g1	! 16b2c <_IO_stdin_used+0x154>
   136a0:	c2 00 40 00 	ld  [ %g1 ], %g1
   136a4:	c2 20 a0 08 	st  %g1, [ %g2 + 8 ]
   136a8:	c2 07 bf 78 	ld  [ %fp + -136 ], %g1
   136ac:	85 28 60 03 	sll  %g1, 3, %g2
   136b0:	c2 07 a0 48 	ld  [ %fp + 0x48 ], %g1
   136b4:	84 00 80 01 	add  %g2, %g1, %g2
   136b8:	03 00 00 5a 	sethi  %hi(0x16800), %g1
   136bc:	82 10 63 28 	or  %g1, 0x328, %g1	! 16b28 <_IO_stdin_used+0x150>
   136c0:	c2 00 40 00 	ld  [ %g1 ], %g1
   136c4:	c2 20 a0 0c 	st  %g1, [ %g2 + 0xc ]
   136c8:	c2 07 bf 74 	ld  [ %fp + -140 ], %g1
   136cc:	85 28 60 03 	sll  %g1, 3, %g2
   136d0:	c2 07 a0 48 	ld  [ %fp + 0x48 ], %g1
   136d4:	84 00 80 01 	add  %g2, %g1, %g2
   136d8:	03 00 00 5a 	sethi  %hi(0x16800), %g1
   136dc:	82 10 63 30 	or  %g1, 0x330, %g1	! 16b30 <_IO_stdin_used+0x158>
   136e0:	c2 00 40 00 	ld  [ %g1 ], %g1
   136e4:	c2 20 a0 08 	st  %g1, [ %g2 + 8 ]
   136e8:	c2 07 bf 74 	ld  [ %fp + -140 ], %g1
   136ec:	85 28 60 03 	sll  %g1, 3, %g2
   136f0:	c2 07 a0 48 	ld  [ %fp + 0x48 ], %g1
   136f4:	84 00 80 01 	add  %g2, %g1, %g2
   136f8:	03 00 00 5a 	sethi  %hi(0x16800), %g1
   136fc:	82 10 63 2c 	or  %g1, 0x32c, %g1	! 16b2c <_IO_stdin_used+0x154>
   13700:	c2 00 40 00 	ld  [ %g1 ], %g1
   13704:	c2 20 a0 0c 	st  %g1, [ %g2 + 0xc ]
   13708:	c4 07 bf 78 	ld  [ %fp + -136 ], %g2
   1370c:	83 38 a0 1f 	sra  %g2, 0x1f, %g1
   13710:	83 30 60 1f 	srl  %g1, 0x1f, %g1
   13714:	82 00 80 01 	add  %g2, %g1, %g1
   13718:	83 38 60 01 	sra  %g1, 1, %g1
   1371c:	c2 27 bf 84 	st  %g1, [ %fp + -124 ]
   13720:	c2 07 bf 84 	ld  [ %fp + -124 ], %g1
   13724:	c2 27 bf 7c 	st  %g1, [ %fp + -132 ]
   13728:	c2 07 bf 7c 	ld  [ %fp + -132 ], %g1
   1372c:	85 28 60 03 	sll  %g1, 3, %g2
   13730:	c2 07 a0 48 	ld  [ %fp + 0x48 ], %g1
   13734:	a0 00 80 01 	add  %g2, %g1, %l0
   13738:	c2 07 bf 80 	ld  [ %fp + -128 ], %g1
   1373c:	85 28 60 02 	sll  %g1, 2, %g2
   13740:	82 07 bf f8 	add  %fp, -8, %g1
   13744:	a2 00 80 01 	add  %g2, %g1, %l1
   13748:	c4 07 bf 7c 	ld  [ %fp + -132 ], %g2
   1374c:	c2 07 bf 84 	ld  [ %fp + -124 ], %g1
   13750:	82 00 80 01 	add  %g2, %g1, %g1
   13754:	85 28 60 03 	sll  %g1, 3, %g2
   13758:	c2 07 a0 48 	ld  [ %fp + 0x48 ], %g1
   1375c:	86 00 80 01 	add  %g2, %g1, %g3
   13760:	c4 07 bf 7c 	ld  [ %fp + -132 ], %g2
   13764:	c2 07 bf 84 	ld  [ %fp + -124 ], %g1
   13768:	82 20 80 01 	sub  %g2, %g1, %g1
   1376c:	85 28 60 03 	sll  %g1, 3, %g2
   13770:	c2 07 a0 48 	ld  [ %fp + 0x48 ], %g1
   13774:	82 00 80 01 	add  %g2, %g1, %g1
   13778:	d0 00 e0 08 	ld  [ %g3 + 8 ], %o0
   1377c:	d2 00 60 08 	ld  [ %g1 + 8 ], %o1
   13780:	40 00 06 f7 	call  1535c <__addsf3>
   13784:	01 00 00 00 	nop 
   13788:	82 10 00 08 	mov  %o0, %g1
   1378c:	d0 04 7f 90 	ld  [ %l1 + -112 ], %o0
   13790:	92 10 00 01 	mov  %g1, %o1
   13794:	40 00 07 1d 	call  15408 <__mulsf3>
   13798:	01 00 00 00 	nop 
   1379c:	82 10 00 08 	mov  %o0, %g1
   137a0:	c2 24 20 08 	st  %g1, [ %l0 + 8 ]
   137a4:	c2 07 bf 7c 	ld  [ %fp + -132 ], %g1
   137a8:	85 28 60 03 	sll  %g1, 3, %g2
   137ac:	c2 07 a0 48 	ld  [ %fp + 0x48 ], %g1
   137b0:	a0 00 80 01 	add  %g2, %g1, %l0
   137b4:	c2 07 bf 80 	ld  [ %fp + -128 ], %g1
   137b8:	85 28 60 02 	sll  %g1, 2, %g2
   137bc:	82 07 bf f8 	add  %fp, -8, %g1
   137c0:	a2 00 80 01 	add  %g2, %g1, %l1
   137c4:	c4 07 bf 7c 	ld  [ %fp + -132 ], %g2
   137c8:	c2 07 bf 84 	ld  [ %fp + -124 ], %g1
   137cc:	82 00 80 01 	add  %g2, %g1, %g1
   137d0:	85 28 60 03 	sll  %g1, 3, %g2
   137d4:	c2 07 a0 48 	ld  [ %fp + 0x48 ], %g1
   137d8:	86 00 80 01 	add  %g2, %g1, %g3
   137dc:	c4 07 bf 7c 	ld  [ %fp + -132 ], %g2
   137e0:	c2 07 bf 84 	ld  [ %fp + -124 ], %g1
   137e4:	82 20 80 01 	sub  %g2, %g1, %g1
   137e8:	85 28 60 03 	sll  %g1, 3, %g2
   137ec:	c2 07 a0 48 	ld  [ %fp + 0x48 ], %g1
   137f0:	82 00 80 01 	add  %g2, %g1, %g1
   137f4:	d0 00 e0 0c 	ld  [ %g3 + 0xc ], %o0
   137f8:	d2 00 60 0c 	ld  [ %g1 + 0xc ], %o1
   137fc:	40 00 06 d8 	call  1535c <__addsf3>
   13800:	01 00 00 00 	nop 
   13804:	82 10 00 08 	mov  %o0, %g1
   13808:	d0 04 7f 90 	ld  [ %l1 + -112 ], %o0
   1380c:	92 10 00 01 	mov  %g1, %o1
   13810:	40 00 06 fe 	call  15408 <__mulsf3>
   13814:	01 00 00 00 	nop 
   13818:	82 10 00 08 	mov  %o0, %g1
   1381c:	c2 24 20 0c 	st  %g1, [ %l0 + 0xc ]
   13820:	c4 07 bf 7c 	ld  [ %fp + -132 ], %g2
   13824:	c2 07 bf 78 	ld  [ %fp + -136 ], %g1
   13828:	82 00 80 01 	add  %g2, %g1, %g1
   1382c:	c2 27 bf 7c 	st  %g1, [ %fp + -132 ]
   13830:	c4 07 bf 7c 	ld  [ %fp + -132 ], %g2
   13834:	c2 07 bf 74 	ld  [ %fp + -140 ], %g1
   13838:	80 a0 80 01 	cmp  %g2, %g1
   1383c:	14 80 00 04 	bg  1384c <Exptab+0x328>
   13840:	01 00 00 00 	nop 
   13844:	10 bf ff b9 	b  13728 <Exptab+0x204>
   13848:	01 00 00 00 	nop 
   1384c:	c2 07 bf 80 	ld  [ %fp + -128 ], %g1
   13850:	82 00 60 01 	inc  %g1
   13854:	90 10 00 01 	mov  %g1, %o0
   13858:	92 10 20 19 	mov  0x19, %o1
   1385c:	7f ff fe 9f 	call  132d8 <Min0>
   13860:	01 00 00 00 	nop 
   13864:	82 10 00 08 	mov  %o0, %g1
   13868:	c2 27 bf 80 	st  %g1, [ %fp + -128 ]
   1386c:	c2 07 bf 84 	ld  [ %fp + -124 ], %g1
   13870:	c2 27 bf 78 	st  %g1, [ %fp + -136 ]
   13874:	c2 07 bf 78 	ld  [ %fp + -136 ], %g1
   13878:	80 a0 60 01 	cmp  %g1, 1
   1387c:	04 80 00 04 	ble  1388c <Exptab+0x368>
   13880:	01 00 00 00 	nop 
   13884:	10 bf ff a1 	b  13708 <Exptab+0x1e4>
   13888:	01 00 00 00 	nop 
   1388c:	b0 10 00 01 	mov  %g1, %i0
   13890:	81 c7 e0 08 	ret 
   13894:	81 e8 00 00 	restore 

00013898 <Fft>:
   13898:	9d e3 bf 80 	save  %sp, -128, %sp
   1389c:	f0 27 a0 44 	st  %i0, [ %fp + 0x44 ]
   138a0:	f2 27 a0 48 	st  %i1, [ %fp + 0x48 ]
   138a4:	f4 27 a0 4c 	st  %i2, [ %fp + 0x4c ]
   138a8:	f6 27 a0 50 	st  %i3, [ %fp + 0x50 ]
   138ac:	84 10 00 1c 	mov  %i4, %g2
   138b0:	86 10 00 1d 	mov  %i5, %g3
   138b4:	90 10 00 02 	mov  %g2, %o0
   138b8:	92 10 00 03 	mov  %g3, %o1
   138bc:	40 00 0a 6f 	call  16278 <__truncdfsf2>
   138c0:	01 00 00 00 	nop 
   138c4:	82 10 00 08 	mov  %o0, %g1
   138c8:	c2 27 a0 54 	st  %g1, [ %fp + 0x54 ]
   138cc:	c4 07 a0 44 	ld  [ %fp + 0x44 ], %g2
   138d0:	83 38 a0 1f 	sra  %g2, 0x1f, %g1
   138d4:	83 30 60 1f 	srl  %g1, 0x1f, %g1
   138d8:	82 00 80 01 	add  %g2, %g1, %g1
   138dc:	83 38 60 01 	sra  %g1, 1, %g1
   138e0:	c2 27 bf e4 	st  %g1, [ %fp + -28 ]
   138e4:	82 10 20 01 	mov  1, %g1
   138e8:	c2 27 bf e8 	st  %g1, [ %fp + -24 ]
   138ec:	c0 27 bf ec 	clr  [ %fp + -20 ]
   138f0:	c2 07 bf e8 	ld  [ %fp + -24 ], %g1
   138f4:	c2 27 bf f0 	st  %g1, [ %fp + -16 ]
   138f8:	82 10 20 01 	mov  1, %g1
   138fc:	c2 27 bf f4 	st  %g1, [ %fp + -12 ]
   13900:	c4 07 bf f4 	ld  [ %fp + -12 ], %g2
   13904:	c2 07 bf ec 	ld  [ %fp + -20 ], %g1
   13908:	82 00 80 01 	add  %g2, %g1, %g1
   1390c:	85 28 60 03 	sll  %g1, 3, %g2
   13910:	c2 07 a0 4c 	ld  [ %fp + 0x4c ], %g1
   13914:	a0 00 80 01 	add  %g2, %g1, %l0
   13918:	c2 07 bf f4 	ld  [ %fp + -12 ], %g1
   1391c:	85 28 60 03 	sll  %g1, 3, %g2
   13920:	c2 07 a0 48 	ld  [ %fp + 0x48 ], %g1
   13924:	86 00 80 01 	add  %g2, %g1, %g3
   13928:	c4 07 bf e4 	ld  [ %fp + -28 ], %g2
   1392c:	c2 07 bf f4 	ld  [ %fp + -12 ], %g1
   13930:	82 00 80 01 	add  %g2, %g1, %g1
   13934:	85 28 60 03 	sll  %g1, 3, %g2
   13938:	c2 07 a0 48 	ld  [ %fp + 0x48 ], %g1
   1393c:	82 00 80 01 	add  %g2, %g1, %g1
   13940:	d0 00 c0 00 	ld  [ %g3 ], %o0
   13944:	d2 00 40 00 	ld  [ %g1 ], %o1
   13948:	40 00 06 85 	call  1535c <__addsf3>
   1394c:	01 00 00 00 	nop 
   13950:	82 10 00 08 	mov  %o0, %g1
   13954:	c2 24 00 00 	st  %g1, [ %l0 ]
   13958:	c4 07 bf f4 	ld  [ %fp + -12 ], %g2
   1395c:	c2 07 bf ec 	ld  [ %fp + -20 ], %g1
   13960:	82 00 80 01 	add  %g2, %g1, %g1
   13964:	85 28 60 03 	sll  %g1, 3, %g2
   13968:	c2 07 a0 4c 	ld  [ %fp + 0x4c ], %g1
   1396c:	a0 00 80 01 	add  %g2, %g1, %l0
   13970:	c2 07 bf f4 	ld  [ %fp + -12 ], %g1
   13974:	85 28 60 03 	sll  %g1, 3, %g2
   13978:	c2 07 a0 48 	ld  [ %fp + 0x48 ], %g1
   1397c:	86 00 80 01 	add  %g2, %g1, %g3
   13980:	c4 07 bf e4 	ld  [ %fp + -28 ], %g2
   13984:	c2 07 bf f4 	ld  [ %fp + -12 ], %g1
   13988:	82 00 80 01 	add  %g2, %g1, %g1
   1398c:	85 28 60 03 	sll  %g1, 3, %g2
   13990:	c2 07 a0 48 	ld  [ %fp + 0x48 ], %g1
   13994:	82 00 80 01 	add  %g2, %g1, %g1
   13998:	d0 00 e0 04 	ld  [ %g3 + 4 ], %o0
   1399c:	d2 00 60 04 	ld  [ %g1 + 4 ], %o1
   139a0:	40 00 06 6f 	call  1535c <__addsf3>
   139a4:	01 00 00 00 	nop 
   139a8:	82 10 00 08 	mov  %o0, %g1
   139ac:	c2 24 20 04 	st  %g1, [ %l0 + 4 ]
   139b0:	c4 07 bf f4 	ld  [ %fp + -12 ], %g2
   139b4:	c2 07 bf f0 	ld  [ %fp + -16 ], %g1
   139b8:	82 00 80 01 	add  %g2, %g1, %g1
   139bc:	85 28 60 03 	sll  %g1, 3, %g2
   139c0:	c2 07 a0 4c 	ld  [ %fp + 0x4c ], %g1
   139c4:	a0 00 80 01 	add  %g2, %g1, %l0
   139c8:	c2 07 bf ec 	ld  [ %fp + -20 ], %g1
   139cc:	85 28 60 03 	sll  %g1, 3, %g2
   139d0:	c2 07 a0 50 	ld  [ %fp + 0x50 ], %g1
   139d4:	a2 00 80 01 	add  %g2, %g1, %l1
   139d8:	c2 07 bf f4 	ld  [ %fp + -12 ], %g1
   139dc:	85 28 60 03 	sll  %g1, 3, %g2
   139e0:	c2 07 a0 48 	ld  [ %fp + 0x48 ], %g1
   139e4:	86 00 80 01 	add  %g2, %g1, %g3
   139e8:	c4 07 bf f4 	ld  [ %fp + -12 ], %g2
   139ec:	c2 07 bf e4 	ld  [ %fp + -28 ], %g1
   139f0:	82 00 80 01 	add  %g2, %g1, %g1
   139f4:	85 28 60 03 	sll  %g1, 3, %g2
   139f8:	c2 07 a0 48 	ld  [ %fp + 0x48 ], %g1
   139fc:	82 00 80 01 	add  %g2, %g1, %g1
   13a00:	d0 00 c0 00 	ld  [ %g3 ], %o0
   13a04:	d2 00 40 00 	ld  [ %g1 ], %o1
   13a08:	40 00 06 68 	call  153a8 <__subsf3>
   13a0c:	01 00 00 00 	nop 
   13a10:	82 10 00 08 	mov  %o0, %g1
   13a14:	90 10 00 01 	mov  %g1, %o0
   13a18:	d2 04 60 08 	ld  [ %l1 + 8 ], %o1
   13a1c:	40 00 06 7b 	call  15408 <__mulsf3>
   13a20:	01 00 00 00 	nop 
   13a24:	a2 10 00 08 	mov  %o0, %l1
   13a28:	c2 07 bf ec 	ld  [ %fp + -20 ], %g1
   13a2c:	85 28 60 03 	sll  %g1, 3, %g2
   13a30:	c2 07 a0 50 	ld  [ %fp + 0x50 ], %g1
   13a34:	a4 00 80 01 	add  %g2, %g1, %l2
   13a38:	c2 07 bf f4 	ld  [ %fp + -12 ], %g1
   13a3c:	85 28 60 03 	sll  %g1, 3, %g2
   13a40:	c2 07 a0 48 	ld  [ %fp + 0x48 ], %g1
   13a44:	86 00 80 01 	add  %g2, %g1, %g3
   13a48:	c4 07 bf f4 	ld  [ %fp + -12 ], %g2
   13a4c:	c2 07 bf e4 	ld  [ %fp + -28 ], %g1
   13a50:	82 00 80 01 	add  %g2, %g1, %g1
   13a54:	85 28 60 03 	sll  %g1, 3, %g2
   13a58:	c2 07 a0 48 	ld  [ %fp + 0x48 ], %g1
   13a5c:	82 00 80 01 	add  %g2, %g1, %g1
   13a60:	d0 00 e0 04 	ld  [ %g3 + 4 ], %o0
   13a64:	d2 00 60 04 	ld  [ %g1 + 4 ], %o1
   13a68:	40 00 06 50 	call  153a8 <__subsf3>
   13a6c:	01 00 00 00 	nop 
   13a70:	82 10 00 08 	mov  %o0, %g1
   13a74:	90 10 00 01 	mov  %g1, %o0
   13a78:	d2 04 a0 0c 	ld  [ %l2 + 0xc ], %o1
   13a7c:	40 00 06 63 	call  15408 <__mulsf3>
   13a80:	01 00 00 00 	nop 
   13a84:	82 10 00 08 	mov  %o0, %g1
   13a88:	90 10 00 11 	mov  %l1, %o0
   13a8c:	92 10 00 01 	mov  %g1, %o1
   13a90:	40 00 06 46 	call  153a8 <__subsf3>
   13a94:	01 00 00 00 	nop 
   13a98:	82 10 00 08 	mov  %o0, %g1
   13a9c:	c2 24 00 00 	st  %g1, [ %l0 ]
   13aa0:	c4 07 bf f4 	ld  [ %fp + -12 ], %g2
   13aa4:	c2 07 bf f0 	ld  [ %fp + -16 ], %g1
   13aa8:	82 00 80 01 	add  %g2, %g1, %g1
   13aac:	85 28 60 03 	sll  %g1, 3, %g2
   13ab0:	c2 07 a0 4c 	ld  [ %fp + 0x4c ], %g1
   13ab4:	a0 00 80 01 	add  %g2, %g1, %l0
   13ab8:	c2 07 bf ec 	ld  [ %fp + -20 ], %g1
   13abc:	85 28 60 03 	sll  %g1, 3, %g2
   13ac0:	c2 07 a0 50 	ld  [ %fp + 0x50 ], %g1
   13ac4:	a2 00 80 01 	add  %g2, %g1, %l1
   13ac8:	c2 07 bf f4 	ld  [ %fp + -12 ], %g1
   13acc:	85 28 60 03 	sll  %g1, 3, %g2
   13ad0:	c2 07 a0 48 	ld  [ %fp + 0x48 ], %g1
   13ad4:	86 00 80 01 	add  %g2, %g1, %g3
   13ad8:	c4 07 bf f4 	ld  [ %fp + -12 ], %g2
   13adc:	c2 07 bf e4 	ld  [ %fp + -28 ], %g1
   13ae0:	82 00 80 01 	add  %g2, %g1, %g1
   13ae4:	85 28 60 03 	sll  %g1, 3, %g2
   13ae8:	c2 07 a0 48 	ld  [ %fp + 0x48 ], %g1
   13aec:	82 00 80 01 	add  %g2, %g1, %g1
   13af0:	d0 00 e0 04 	ld  [ %g3 + 4 ], %o0
   13af4:	d2 00 60 04 	ld  [ %g1 + 4 ], %o1
   13af8:	40 00 06 2c 	call  153a8 <__subsf3>
   13afc:	01 00 00 00 	nop 
   13b00:	82 10 00 08 	mov  %o0, %g1
   13b04:	90 10 00 01 	mov  %g1, %o0
   13b08:	d2 04 60 08 	ld  [ %l1 + 8 ], %o1
   13b0c:	40 00 06 3f 	call  15408 <__mulsf3>
   13b10:	01 00 00 00 	nop 
   13b14:	a2 10 00 08 	mov  %o0, %l1
   13b18:	c2 07 bf ec 	ld  [ %fp + -20 ], %g1
   13b1c:	85 28 60 03 	sll  %g1, 3, %g2
   13b20:	c2 07 a0 50 	ld  [ %fp + 0x50 ], %g1
   13b24:	a4 00 80 01 	add  %g2, %g1, %l2
   13b28:	c2 07 bf f4 	ld  [ %fp + -12 ], %g1
   13b2c:	85 28 60 03 	sll  %g1, 3, %g2
   13b30:	c2 07 a0 48 	ld  [ %fp + 0x48 ], %g1
   13b34:	86 00 80 01 	add  %g2, %g1, %g3
   13b38:	c4 07 bf f4 	ld  [ %fp + -12 ], %g2
   13b3c:	c2 07 bf e4 	ld  [ %fp + -28 ], %g1
   13b40:	82 00 80 01 	add  %g2, %g1, %g1
   13b44:	85 28 60 03 	sll  %g1, 3, %g2
   13b48:	c2 07 a0 48 	ld  [ %fp + 0x48 ], %g1
   13b4c:	82 00 80 01 	add  %g2, %g1, %g1
   13b50:	d0 00 c0 00 	ld  [ %g3 ], %o0
   13b54:	d2 00 40 00 	ld  [ %g1 ], %o1
   13b58:	40 00 06 14 	call  153a8 <__subsf3>
   13b5c:	01 00 00 00 	nop 
   13b60:	82 10 00 08 	mov  %o0, %g1
   13b64:	90 10 00 01 	mov  %g1, %o0
   13b68:	d2 04 a0 0c 	ld  [ %l2 + 0xc ], %o1
   13b6c:	40 00 06 27 	call  15408 <__mulsf3>
   13b70:	01 00 00 00 	nop 
   13b74:	82 10 00 08 	mov  %o0, %g1
   13b78:	90 10 00 11 	mov  %l1, %o0
   13b7c:	92 10 00 01 	mov  %g1, %o1
   13b80:	40 00 05 f7 	call  1535c <__addsf3>
   13b84:	01 00 00 00 	nop 
   13b88:	82 10 00 08 	mov  %o0, %g1
   13b8c:	c2 24 20 04 	st  %g1, [ %l0 + 4 ]
   13b90:	c2 07 bf f4 	ld  [ %fp + -12 ], %g1
   13b94:	82 00 60 01 	inc  %g1
   13b98:	c2 27 bf f4 	st  %g1, [ %fp + -12 ]
   13b9c:	c4 07 bf f4 	ld  [ %fp + -12 ], %g2
   13ba0:	c2 07 bf f0 	ld  [ %fp + -16 ], %g1
   13ba4:	80 a0 80 01 	cmp  %g2, %g1
   13ba8:	14 80 00 04 	bg  13bb8 <Fft+0x320>
   13bac:	01 00 00 00 	nop 
   13bb0:	10 bf ff 54 	b  13900 <Fft+0x68>
   13bb4:	01 00 00 00 	nop 
   13bb8:	c2 07 bf f0 	ld  [ %fp + -16 ], %g1
   13bbc:	c2 27 bf ec 	st  %g1, [ %fp + -20 ]
   13bc0:	c4 07 bf ec 	ld  [ %fp + -20 ], %g2
   13bc4:	c2 07 bf e8 	ld  [ %fp + -24 ], %g1
   13bc8:	82 00 80 01 	add  %g2, %g1, %g1
   13bcc:	c2 27 bf f0 	st  %g1, [ %fp + -16 ]
   13bd0:	c4 07 bf f0 	ld  [ %fp + -16 ], %g2
   13bd4:	c2 07 bf e4 	ld  [ %fp + -28 ], %g1
   13bd8:	80 a0 80 01 	cmp  %g2, %g1
   13bdc:	14 80 00 04 	bg  13bec <Fft+0x354>
   13be0:	01 00 00 00 	nop 
   13be4:	10 bf ff 47 	b  13900 <Fft+0x68>
   13be8:	01 00 00 00 	nop 
   13bec:	82 10 20 01 	mov  1, %g1	! 1 <_init-0x10347>
   13bf0:	c2 27 bf e0 	st  %g1, [ %fp + -32 ]
   13bf4:	c2 07 bf e0 	ld  [ %fp + -32 ], %g1
   13bf8:	85 28 60 03 	sll  %g1, 3, %g2
   13bfc:	c2 07 a0 48 	ld  [ %fp + 0x48 ], %g1
   13c00:	86 00 80 01 	add  %g2, %g1, %g3
   13c04:	c2 07 bf e0 	ld  [ %fp + -32 ], %g1
   13c08:	85 28 60 03 	sll  %g1, 3, %g2
   13c0c:	c2 07 a0 4c 	ld  [ %fp + 0x4c ], %g1
   13c10:	84 00 80 01 	add  %g2, %g1, %g2
   13c14:	c2 00 80 00 	ld  [ %g2 ], %g1
   13c18:	c2 20 c0 00 	st  %g1, [ %g3 ]
   13c1c:	c2 00 a0 04 	ld  [ %g2 + 4 ], %g1
   13c20:	c2 20 e0 04 	st  %g1, [ %g3 + 4 ]
   13c24:	c2 07 bf e0 	ld  [ %fp + -32 ], %g1
   13c28:	82 00 60 01 	inc  %g1
   13c2c:	c2 27 bf e0 	st  %g1, [ %fp + -32 ]
   13c30:	c4 07 bf e0 	ld  [ %fp + -32 ], %g2
   13c34:	c2 07 a0 44 	ld  [ %fp + 0x44 ], %g1
   13c38:	80 a0 80 01 	cmp  %g2, %g1
   13c3c:	14 80 00 04 	bg  13c4c <Fft+0x3b4>
   13c40:	01 00 00 00 	nop 
   13c44:	10 bf ff ec 	b  13bf4 <Fft+0x35c>
   13c48:	01 00 00 00 	nop 
   13c4c:	c4 07 bf e8 	ld  [ %fp + -24 ], %g2
   13c50:	c2 07 bf e8 	ld  [ %fp + -24 ], %g1
   13c54:	82 00 80 01 	add  %g2, %g1, %g1
   13c58:	c2 27 bf e8 	st  %g1, [ %fp + -24 ]
   13c5c:	c4 07 bf e8 	ld  [ %fp + -24 ], %g2
   13c60:	c2 07 bf e4 	ld  [ %fp + -28 ], %g1
   13c64:	80 a0 80 01 	cmp  %g2, %g1
   13c68:	14 80 00 04 	bg  13c78 <Fft+0x3e0>
   13c6c:	01 00 00 00 	nop 
   13c70:	10 bf ff 1f 	b  138ec <Fft+0x54>
   13c74:	01 00 00 00 	nop 
   13c78:	82 10 20 01 	mov  1, %g1	! 1 <_init-0x10347>
   13c7c:	c2 27 bf f4 	st  %g1, [ %fp + -12 ]
   13c80:	c4 07 bf f4 	ld  [ %fp + -12 ], %g2
   13c84:	c2 07 a0 44 	ld  [ %fp + 0x44 ], %g1
   13c88:	80 a0 80 01 	cmp  %g2, %g1
   13c8c:	14 80 00 27 	bg  13d28 <Fft+0x490>
   13c90:	01 00 00 00 	nop 
   13c94:	c2 07 bf f4 	ld  [ %fp + -12 ], %g1
   13c98:	85 28 60 03 	sll  %g1, 3, %g2
   13c9c:	c2 07 a0 48 	ld  [ %fp + 0x48 ], %g1
   13ca0:	a0 00 80 01 	add  %g2, %g1, %l0
   13ca4:	c2 07 bf f4 	ld  [ %fp + -12 ], %g1
   13ca8:	85 28 60 03 	sll  %g1, 3, %g2
   13cac:	c2 07 a0 48 	ld  [ %fp + 0x48 ], %g1
   13cb0:	82 00 80 01 	add  %g2, %g1, %g1
   13cb4:	d0 00 40 00 	ld  [ %g1 ], %o0
   13cb8:	d2 07 a0 54 	ld  [ %fp + 0x54 ], %o1
   13cbc:	40 00 05 d3 	call  15408 <__mulsf3>
   13cc0:	01 00 00 00 	nop 
   13cc4:	82 10 00 08 	mov  %o0, %g1
   13cc8:	c2 24 00 00 	st  %g1, [ %l0 ]
   13ccc:	c2 07 bf f4 	ld  [ %fp + -12 ], %g1
   13cd0:	85 28 60 03 	sll  %g1, 3, %g2
   13cd4:	c2 07 a0 48 	ld  [ %fp + 0x48 ], %g1
   13cd8:	a0 00 80 01 	add  %g2, %g1, %l0
   13cdc:	c4 07 a0 54 	ld  [ %fp + 0x54 ], %g2
   13ce0:	03 20 00 00 	sethi  %hi(0x80000000), %g1
   13ce4:	82 18 80 01 	xor  %g2, %g1, %g1
   13ce8:	86 10 00 01 	mov  %g1, %g3
   13cec:	c2 07 bf f4 	ld  [ %fp + -12 ], %g1
   13cf0:	85 28 60 03 	sll  %g1, 3, %g2
   13cf4:	c2 07 a0 48 	ld  [ %fp + 0x48 ], %g1
   13cf8:	82 00 80 01 	add  %g2, %g1, %g1
   13cfc:	90 10 00 03 	mov  %g3, %o0
   13d00:	d2 00 60 04 	ld  [ %g1 + 4 ], %o1
   13d04:	40 00 05 c1 	call  15408 <__mulsf3>
   13d08:	01 00 00 00 	nop 
   13d0c:	82 10 00 08 	mov  %o0, %g1
   13d10:	c2 24 20 04 	st  %g1, [ %l0 + 4 ]
   13d14:	c2 07 bf f4 	ld  [ %fp + -12 ], %g1
   13d18:	82 00 60 01 	inc  %g1
   13d1c:	c2 27 bf f4 	st  %g1, [ %fp + -12 ]
   13d20:	10 bf ff d8 	b  13c80 <Fft+0x3e8>
   13d24:	01 00 00 00 	nop 
   13d28:	b0 10 00 01 	mov  %g1, %i0
   13d2c:	81 c7 e0 08 	ret 
   13d30:	81 e8 00 00 	restore 

00013d34 <Oscar>:
   13d34:	9d e3 bf 90 	save  %sp, -112, %sp
   13d38:	90 10 21 00 	mov  0x100, %o0
   13d3c:	03 00 00 f5 	sethi  %hi(0x3d400), %g1
   13d40:	92 10 60 9c 	or  %g1, 0x9c, %o1	! 3d49c <e>
   13d44:	7f ff fd f8 	call  13524 <Exptab>
   13d48:	01 00 00 00 	nop 
   13d4c:	03 00 00 df 	sethi  %hi(0x37c00), %g1
   13d50:	84 10 61 90 	or  %g1, 0x190, %g2	! 37d90 <seed>
   13d54:	03 00 00 05 	sethi  %hi(0x1400), %g1
   13d58:	82 10 62 87 	or  %g1, 0x287, %g1	! 1687 <_init-0xecc1>
   13d5c:	c2 20 80 00 	st  %g1, [ %g2 ]
   13d60:	82 10 20 01 	mov  1, %g1
   13d64:	c2 27 bf f4 	st  %g1, [ %fp + -12 ]
   13d68:	c2 07 bf f4 	ld  [ %fp + -12 ], %g1
   13d6c:	80 a0 61 00 	cmp  %g1, 0x100
   13d70:	14 80 00 6e 	bg  13f28 <Oscar+0x1f4>
   13d74:	01 00 00 00 	nop 
   13d78:	03 00 00 df 	sethi  %hi(0x37c00), %g1
   13d7c:	a0 10 61 90 	or  %g1, 0x190, %l0	! 37d90 <seed>
   13d80:	03 00 00 c9 	sethi  %hi(0x32400), %g1
   13d84:	82 10 63 58 	or  %g1, 0x358, %g1	! 32758 <zr>
   13d88:	d0 00 40 00 	ld  [ %g1 ], %o0
   13d8c:	40 00 06 aa 	call  15834 <__extendsfdf2>
   13d90:	01 00 00 00 	nop 
   13d94:	84 10 00 08 	mov  %o0, %g2
   13d98:	86 10 00 09 	mov  %o1, %g3
   13d9c:	d0 04 00 00 	ld  [ %l0 ], %o0
   13da0:	92 10 00 02 	mov  %g2, %o1
   13da4:	94 10 00 03 	mov  %g3, %o2
   13da8:	7f ff fd b4 	call  13478 <Uniform11>
   13dac:	01 00 00 00 	nop 
   13db0:	03 00 00 df 	sethi  %hi(0x37c00), %g1
   13db4:	a0 10 61 90 	or  %g1, 0x190, %l0	! 37d90 <seed>
   13db8:	03 00 00 c0 	sethi  %hi(0x30000), %g1
   13dbc:	82 10 63 f0 	or  %g1, 0x3f0, %g1	! 303f0 <zi>
   13dc0:	d0 00 40 00 	ld  [ %g1 ], %o0
   13dc4:	40 00 06 9c 	call  15834 <__extendsfdf2>
   13dc8:	01 00 00 00 	nop 
   13dcc:	84 10 00 08 	mov  %o0, %g2
   13dd0:	86 10 00 09 	mov  %o1, %g3
   13dd4:	d0 04 00 00 	ld  [ %l0 ], %o0
   13dd8:	92 10 00 02 	mov  %g2, %o1
   13ddc:	94 10 00 03 	mov  %g3, %o2
   13de0:	7f ff fd a6 	call  13478 <Uniform11>
   13de4:	01 00 00 00 	nop 
   13de8:	03 00 00 c9 	sethi  %hi(0x32400), %g1
   13dec:	a0 10 63 5c 	or  %g1, 0x35c, %l0	! 3275c <z>
   13df0:	c2 07 bf f4 	ld  [ %fp + -12 ], %g1
   13df4:	a3 28 60 03 	sll  %g1, 3, %l1
   13df8:	03 00 00 c9 	sethi  %hi(0x32400), %g1
   13dfc:	82 10 63 58 	or  %g1, 0x358, %g1	! 32758 <zr>
   13e00:	d0 00 40 00 	ld  [ %g1 ], %o0
   13e04:	40 00 06 8c 	call  15834 <__extendsfdf2>
   13e08:	01 00 00 00 	nop 
   13e0c:	84 10 00 08 	mov  %o0, %g2
   13e10:	86 10 00 09 	mov  %o1, %g3
   13e14:	03 00 00 5a 	sethi  %hi(0x16800), %g1
   13e18:	82 10 63 38 	or  %g1, 0x338, %g1	! 16b38 <_IO_stdin_used+0x160>
   13e1c:	90 10 00 02 	mov  %g2, %o0
   13e20:	92 10 00 03 	mov  %g3, %o1
   13e24:	d4 00 40 00 	ld  [ %g1 ], %o2
   13e28:	d6 00 60 04 	ld  [ %g1 + 4 ], %o3
   13e2c:	40 00 07 7a 	call  15c14 <__muldf3>
   13e30:	01 00 00 00 	nop 
   13e34:	84 10 00 08 	mov  %o0, %g2
   13e38:	86 10 00 09 	mov  %o1, %g3
   13e3c:	03 00 00 5a 	sethi  %hi(0x16800), %g1
   13e40:	82 10 63 40 	or  %g1, 0x340, %g1	! 16b40 <_IO_stdin_used+0x168>
   13e44:	90 10 00 02 	mov  %g2, %o0
   13e48:	92 10 00 03 	mov  %g3, %o1
   13e4c:	d4 00 40 00 	ld  [ %g1 ], %o2
   13e50:	d6 00 60 04 	ld  [ %g1 + 4 ], %o3
   13e54:	40 00 07 57 	call  15bb0 <__subdf3>
   13e58:	01 00 00 00 	nop 
   13e5c:	84 10 00 08 	mov  %o0, %g2
   13e60:	86 10 00 09 	mov  %o1, %g3
   13e64:	90 10 00 02 	mov  %g2, %o0
   13e68:	92 10 00 03 	mov  %g3, %o1
   13e6c:	40 00 09 03 	call  16278 <__truncdfsf2>
   13e70:	01 00 00 00 	nop 
   13e74:	82 10 00 08 	mov  %o0, %g1
   13e78:	c2 24 00 11 	st  %g1, [ %l0 + %l1 ]
   13e7c:	03 00 00 c9 	sethi  %hi(0x32400), %g1
   13e80:	84 10 63 5c 	or  %g1, 0x35c, %g2	! 3275c <z>
   13e84:	c2 07 bf f4 	ld  [ %fp + -12 ], %g1
   13e88:	83 28 60 03 	sll  %g1, 3, %g1
   13e8c:	a0 00 40 02 	add  %g1, %g2, %l0
   13e90:	03 00 00 c0 	sethi  %hi(0x30000), %g1
   13e94:	82 10 63 f0 	or  %g1, 0x3f0, %g1	! 303f0 <zi>
   13e98:	d0 00 40 00 	ld  [ %g1 ], %o0
   13e9c:	40 00 06 66 	call  15834 <__extendsfdf2>
   13ea0:	01 00 00 00 	nop 
   13ea4:	84 10 00 08 	mov  %o0, %g2
   13ea8:	86 10 00 09 	mov  %o1, %g3
   13eac:	03 00 00 5a 	sethi  %hi(0x16800), %g1
   13eb0:	82 10 63 38 	or  %g1, 0x338, %g1	! 16b38 <_IO_stdin_used+0x160>
   13eb4:	90 10 00 02 	mov  %g2, %o0
   13eb8:	92 10 00 03 	mov  %g3, %o1
   13ebc:	d4 00 40 00 	ld  [ %g1 ], %o2
   13ec0:	d6 00 60 04 	ld  [ %g1 + 4 ], %o3
   13ec4:	40 00 07 54 	call  15c14 <__muldf3>
   13ec8:	01 00 00 00 	nop 
   13ecc:	84 10 00 08 	mov  %o0, %g2
   13ed0:	86 10 00 09 	mov  %o1, %g3
   13ed4:	03 00 00 5a 	sethi  %hi(0x16800), %g1
   13ed8:	82 10 63 40 	or  %g1, 0x340, %g1	! 16b40 <_IO_stdin_used+0x168>
   13edc:	90 10 00 02 	mov  %g2, %o0
   13ee0:	92 10 00 03 	mov  %g3, %o1
   13ee4:	d4 00 40 00 	ld  [ %g1 ], %o2
   13ee8:	d6 00 60 04 	ld  [ %g1 + 4 ], %o3
   13eec:	40 00 07 31 	call  15bb0 <__subdf3>
   13ef0:	01 00 00 00 	nop 
   13ef4:	84 10 00 08 	mov  %o0, %g2
   13ef8:	86 10 00 09 	mov  %o1, %g3
   13efc:	90 10 00 02 	mov  %g2, %o0
   13f00:	92 10 00 03 	mov  %g3, %o1
   13f04:	40 00 08 dd 	call  16278 <__truncdfsf2>
   13f08:	01 00 00 00 	nop 
   13f0c:	82 10 00 08 	mov  %o0, %g1
   13f10:	c2 24 20 04 	st  %g1, [ %l0 + 4 ]
   13f14:	c2 07 bf f4 	ld  [ %fp + -12 ], %g1
   13f18:	82 00 60 01 	inc  %g1
   13f1c:	c2 27 bf f4 	st  %g1, [ %fp + -12 ]
   13f20:	10 bf ff 92 	b  13d68 <Oscar+0x34>
   13f24:	01 00 00 00 	nop 
   13f28:	82 10 20 01 	mov  1, %g1	! 1 <_init-0x10347>
   13f2c:	c2 27 bf f4 	st  %g1, [ %fp + -12 ]
   13f30:	c2 07 bf f4 	ld  [ %fp + -12 ], %g1
   13f34:	80 a0 60 14 	cmp  %g1, 0x14
   13f38:	14 80 00 16 	bg  13f90 <Oscar+0x25c>
   13f3c:	01 00 00 00 	nop 
   13f40:	03 00 00 5a 	sethi  %hi(0x16800), %g1
   13f44:	82 10 63 48 	or  %g1, 0x348, %g1	! 16b48 <_IO_stdin_used+0x170>
   13f48:	c4 00 40 00 	ld  [ %g1 ], %g2
   13f4c:	c6 00 60 04 	ld  [ %g1 + 4 ], %g3
   13f50:	90 10 21 00 	mov  0x100, %o0
   13f54:	03 00 00 c9 	sethi  %hi(0x32400), %g1
   13f58:	92 10 63 5c 	or  %g1, 0x35c, %o1	! 3275c <z>
   13f5c:	03 00 00 c7 	sethi  %hi(0x31c00), %g1
   13f60:	94 10 62 68 	or  %g1, 0x268, %o2	! 31e68 <w>
   13f64:	03 00 00 f5 	sethi  %hi(0x3d400), %g1
   13f68:	96 10 60 9c 	or  %g1, 0x9c, %o3	! 3d49c <e>
   13f6c:	98 10 00 02 	mov  %g2, %o4
   13f70:	9a 10 00 03 	mov  %g3, %o5
   13f74:	7f ff fe 49 	call  13898 <Fft>
   13f78:	01 00 00 00 	nop 
   13f7c:	c2 07 bf f4 	ld  [ %fp + -12 ], %g1
   13f80:	82 00 60 01 	inc  %g1
   13f84:	c2 27 bf f4 	st  %g1, [ %fp + -12 ]
   13f88:	10 bf ff ea 	b  13f30 <Oscar+0x1fc>
   13f8c:	01 00 00 00 	nop 
   13f90:	b0 10 00 01 	mov  %g1, %i0
   13f94:	81 c7 e0 08 	ret 
   13f98:	81 e8 00 00 	restore 

00013f9c <main>:
   13f9c:	9d e3 bf 90 	save  %sp, -112, %sp
   13fa0:	03 00 00 ee 	sethi  %hi(0x3b800), %g1
   13fa4:	84 10 62 54 	or  %g1, 0x254, %g2	! 3ba54 <fixed>
   13fa8:	03 00 00 5b 	sethi  %hi(0x16c00), %g1
   13fac:	82 10 60 54 	or  %g1, 0x54, %g1	! 16c54 <_IO_stdin_used+0x27c>
   13fb0:	c2 00 40 00 	ld  [ %g1 ], %g1
   13fb4:	c2 20 80 00 	st  %g1, [ %g2 ]
   13fb8:	03 00 00 a0 	sethi  %hi(0x28000), %g1
   13fbc:	84 10 61 9c 	or  %g1, 0x19c, %g2	! 2819c <floated>
   13fc0:	03 00 00 5b 	sethi  %hi(0x16c00), %g1
   13fc4:	82 10 60 54 	or  %g1, 0x54, %g1	! 16c54 <_IO_stdin_used+0x27c>
   13fc8:	c2 00 40 00 	ld  [ %g1 ], %g1
   13fcc:	c2 20 80 00 	st  %g1, [ %g2 ]
   13fd0:	03 00 00 5a 	sethi  %hi(0x16800), %g1
   13fd4:	90 10 63 50 	or  %g1, 0x350, %o0	! 16b50 <_IO_stdin_used+0x178>
   13fd8:	40 00 50 5d 	call  2814c <printf@plt>
   13fdc:	01 00 00 00 	nop 
   13fe0:	03 00 00 5a 	sethi  %hi(0x16800), %g1
   13fe4:	90 10 63 60 	or  %g1, 0x360, %o0	! 16b60 <_IO_stdin_used+0x188>
   13fe8:	40 00 50 59 	call  2814c <printf@plt>
   13fec:	01 00 00 00 	nop 
   13ff0:	7f ff f1 14 	call  10440 <Getclock>
   13ff4:	01 00 00 00 	nop 
   13ff8:	84 10 00 08 	mov  %o0, %g2
   13ffc:	03 00 00 c0 	sethi  %hi(0x30000), %g1
   14000:	82 10 63 e4 	or  %g1, 0x3e4, %g1	! 303e4 <timer>
   14004:	c4 20 40 00 	st  %g2, [ %g1 ]
   14008:	7f ff f1 a3 	call  10694 <Perm>
   1400c:	01 00 00 00 	nop 
   14010:	03 00 00 c0 	sethi  %hi(0x30000), %g1
   14014:	a0 10 63 f4 	or  %g1, 0x3f4, %l0	! 303f4 <xtimes>
   14018:	7f ff f1 0a 	call  10440 <Getclock>
   1401c:	01 00 00 00 	nop 
   14020:	84 10 00 08 	mov  %o0, %g2
   14024:	03 00 00 c0 	sethi  %hi(0x30000), %g1
   14028:	82 10 63 e4 	or  %g1, 0x3e4, %g1	! 303e4 <timer>
   1402c:	c2 00 40 00 	ld  [ %g1 ], %g1
   14030:	82 20 80 01 	sub  %g2, %g1, %g1
   14034:	c2 24 20 04 	st  %g1, [ %l0 + 4 ]
   14038:	03 00 00 ee 	sethi  %hi(0x3b800), %g1
   1403c:	a4 10 62 54 	or  %g1, 0x254, %l2	! 3ba54 <fixed>
   14040:	03 00 00 ee 	sethi  %hi(0x3b800), %g1
   14044:	82 10 62 54 	or  %g1, 0x254, %g1	! 3ba54 <fixed>
   14048:	d0 00 40 00 	ld  [ %g1 ], %o0
   1404c:	40 00 05 fa 	call  15834 <__extendsfdf2>
   14050:	01 00 00 00 	nop 
   14054:	a0 10 00 08 	mov  %o0, %l0
   14058:	a2 10 00 09 	mov  %o1, %l1
   1405c:	03 00 00 c0 	sethi  %hi(0x30000), %g1
   14060:	82 10 63 f4 	or  %g1, 0x3f4, %g1	! 303f4 <xtimes>
   14064:	d0 00 60 04 	ld  [ %g1 + 4 ], %o0
   14068:	40 00 08 33 	call  16134 <__floatsidf>
   1406c:	01 00 00 00 	nop 
   14070:	84 10 00 08 	mov  %o0, %g2
   14074:	86 10 00 09 	mov  %o1, %g3
   14078:	03 00 00 5b 	sethi  %hi(0x16c00), %g1
   1407c:	82 10 60 58 	or  %g1, 0x58, %g1	! 16c58 <_IO_stdin_used+0x280>
   14080:	90 10 00 02 	mov  %g2, %o0
   14084:	92 10 00 03 	mov  %g3, %o1
   14088:	d4 00 40 00 	ld  [ %g1 ], %o2
   1408c:	d6 00 60 04 	ld  [ %g1 + 4 ], %o3
   14090:	40 00 06 e1 	call  15c14 <__muldf3>
   14094:	01 00 00 00 	nop 
   14098:	84 10 00 08 	mov  %o0, %g2
   1409c:	86 10 00 09 	mov  %o1, %g3
   140a0:	90 10 00 10 	mov  %l0, %o0
   140a4:	92 10 00 11 	mov  %l1, %o1
   140a8:	94 10 00 02 	mov  %g2, %o2
   140ac:	96 10 00 03 	mov  %g3, %o3
   140b0:	40 00 06 ac 	call  15b60 <__adddf3>
   140b4:	01 00 00 00 	nop 
   140b8:	84 10 00 08 	mov  %o0, %g2
   140bc:	86 10 00 09 	mov  %o1, %g3
   140c0:	90 10 00 02 	mov  %g2, %o0
   140c4:	92 10 00 03 	mov  %g3, %o1
   140c8:	40 00 08 6c 	call  16278 <__truncdfsf2>
   140cc:	01 00 00 00 	nop 
   140d0:	82 10 00 08 	mov  %o0, %g1
   140d4:	c2 24 80 00 	st  %g1, [ %l2 ]
   140d8:	03 00 00 a0 	sethi  %hi(0x28000), %g1
   140dc:	a4 10 61 9c 	or  %g1, 0x19c, %l2	! 2819c <floated>
   140e0:	03 00 00 a0 	sethi  %hi(0x28000), %g1
   140e4:	82 10 61 9c 	or  %g1, 0x19c, %g1	! 2819c <floated>
   140e8:	d0 00 40 00 	ld  [ %g1 ], %o0
   140ec:	40 00 05 d2 	call  15834 <__extendsfdf2>
   140f0:	01 00 00 00 	nop 
   140f4:	a0 10 00 08 	mov  %o0, %l0
   140f8:	a2 10 00 09 	mov  %o1, %l1
   140fc:	03 00 00 c0 	sethi  %hi(0x30000), %g1
   14100:	82 10 63 f4 	or  %g1, 0x3f4, %g1	! 303f4 <xtimes>
   14104:	d0 00 60 04 	ld  [ %g1 + 4 ], %o0
   14108:	40 00 08 0b 	call  16134 <__floatsidf>
   1410c:	01 00 00 00 	nop 
   14110:	84 10 00 08 	mov  %o0, %g2
   14114:	86 10 00 09 	mov  %o1, %g3
   14118:	03 00 00 5b 	sethi  %hi(0x16c00), %g1
   1411c:	82 10 60 58 	or  %g1, 0x58, %g1	! 16c58 <_IO_stdin_used+0x280>
   14120:	90 10 00 02 	mov  %g2, %o0
   14124:	92 10 00 03 	mov  %g3, %o1
   14128:	d4 00 40 00 	ld  [ %g1 ], %o2
   1412c:	d6 00 60 04 	ld  [ %g1 + 4 ], %o3
   14130:	40 00 06 b9 	call  15c14 <__muldf3>
   14134:	01 00 00 00 	nop 
   14138:	84 10 00 08 	mov  %o0, %g2
   1413c:	86 10 00 09 	mov  %o1, %g3
   14140:	90 10 00 10 	mov  %l0, %o0
   14144:	92 10 00 11 	mov  %l1, %o1
   14148:	94 10 00 02 	mov  %g2, %o2
   1414c:	96 10 00 03 	mov  %g3, %o3
   14150:	40 00 06 84 	call  15b60 <__adddf3>
   14154:	01 00 00 00 	nop 
   14158:	84 10 00 08 	mov  %o0, %g2
   1415c:	86 10 00 09 	mov  %o1, %g3
   14160:	90 10 00 02 	mov  %g2, %o0
   14164:	92 10 00 03 	mov  %g3, %o1
   14168:	40 00 08 44 	call  16278 <__truncdfsf2>
   1416c:	01 00 00 00 	nop 
   14170:	82 10 00 08 	mov  %o0, %g1
   14174:	c2 24 80 00 	st  %g1, [ %l2 ]
   14178:	03 00 00 5a 	sethi  %hi(0x16800), %g1
   1417c:	90 10 63 70 	or  %g1, 0x370, %o0	! 16b70 <_IO_stdin_used+0x198>
   14180:	40 00 4f f3 	call  2814c <printf@plt>
   14184:	01 00 00 00 	nop 
   14188:	7f ff f0 ae 	call  10440 <Getclock>
   1418c:	01 00 00 00 	nop 
   14190:	84 10 00 08 	mov  %o0, %g2
   14194:	03 00 00 c0 	sethi  %hi(0x30000), %g1
   14198:	82 10 63 e4 	or  %g1, 0x3e4, %g1	! 303e4 <timer>
   1419c:	c4 20 40 00 	st  %g2, [ %g1 ]
   141a0:	7f ff f2 70 	call  10b60 <Towers>
   141a4:	01 00 00 00 	nop 
   141a8:	03 00 00 c0 	sethi  %hi(0x30000), %g1
   141ac:	a0 10 63 f4 	or  %g1, 0x3f4, %l0	! 303f4 <xtimes>
   141b0:	7f ff f0 a4 	call  10440 <Getclock>
   141b4:	01 00 00 00 	nop 
   141b8:	84 10 00 08 	mov  %o0, %g2
   141bc:	03 00 00 c0 	sethi  %hi(0x30000), %g1
   141c0:	82 10 63 e4 	or  %g1, 0x3e4, %g1	! 303e4 <timer>
   141c4:	c2 00 40 00 	ld  [ %g1 ], %g1
   141c8:	82 20 80 01 	sub  %g2, %g1, %g1
   141cc:	c2 24 20 08 	st  %g1, [ %l0 + 8 ]
   141d0:	03 00 00 ee 	sethi  %hi(0x3b800), %g1
   141d4:	a4 10 62 54 	or  %g1, 0x254, %l2	! 3ba54 <fixed>
   141d8:	03 00 00 ee 	sethi  %hi(0x3b800), %g1
   141dc:	82 10 62 54 	or  %g1, 0x254, %g1	! 3ba54 <fixed>
   141e0:	d0 00 40 00 	ld  [ %g1 ], %o0
   141e4:	40 00 05 94 	call  15834 <__extendsfdf2>
   141e8:	01 00 00 00 	nop 
   141ec:	a0 10 00 08 	mov  %o0, %l0
   141f0:	a2 10 00 09 	mov  %o1, %l1
   141f4:	03 00 00 c0 	sethi  %hi(0x30000), %g1
   141f8:	82 10 63 f4 	or  %g1, 0x3f4, %g1	! 303f4 <xtimes>
   141fc:	d0 00 60 08 	ld  [ %g1 + 8 ], %o0
   14200:	40 00 07 cd 	call  16134 <__floatsidf>
   14204:	01 00 00 00 	nop 
   14208:	84 10 00 08 	mov  %o0, %g2
   1420c:	86 10 00 09 	mov  %o1, %g3
   14210:	03 00 00 5b 	sethi  %hi(0x16c00), %g1
   14214:	82 10 60 60 	or  %g1, 0x60, %g1	! 16c60 <_IO_stdin_used+0x288>
   14218:	90 10 00 02 	mov  %g2, %o0
   1421c:	92 10 00 03 	mov  %g3, %o1
   14220:	d4 00 40 00 	ld  [ %g1 ], %o2
   14224:	d6 00 60 04 	ld  [ %g1 + 4 ], %o3
   14228:	40 00 06 7b 	call  15c14 <__muldf3>
   1422c:	01 00 00 00 	nop 
   14230:	84 10 00 08 	mov  %o0, %g2
   14234:	86 10 00 09 	mov  %o1, %g3
   14238:	90 10 00 10 	mov  %l0, %o0
   1423c:	92 10 00 11 	mov  %l1, %o1
   14240:	94 10 00 02 	mov  %g2, %o2
   14244:	96 10 00 03 	mov  %g3, %o3
   14248:	40 00 06 46 	call  15b60 <__adddf3>
   1424c:	01 00 00 00 	nop 
   14250:	84 10 00 08 	mov  %o0, %g2
   14254:	86 10 00 09 	mov  %o1, %g3
   14258:	90 10 00 02 	mov  %g2, %o0
   1425c:	92 10 00 03 	mov  %g3, %o1
   14260:	40 00 08 06 	call  16278 <__truncdfsf2>
   14264:	01 00 00 00 	nop 
   14268:	82 10 00 08 	mov  %o0, %g1
   1426c:	c2 24 80 00 	st  %g1, [ %l2 ]
   14270:	03 00 00 a0 	sethi  %hi(0x28000), %g1
   14274:	a4 10 61 9c 	or  %g1, 0x19c, %l2	! 2819c <floated>
   14278:	03 00 00 a0 	sethi  %hi(0x28000), %g1
   1427c:	82 10 61 9c 	or  %g1, 0x19c, %g1	! 2819c <floated>
   14280:	d0 00 40 00 	ld  [ %g1 ], %o0
   14284:	40 00 05 6c 	call  15834 <__extendsfdf2>
   14288:	01 00 00 00 	nop 
   1428c:	a0 10 00 08 	mov  %o0, %l0
   14290:	a2 10 00 09 	mov  %o1, %l1
   14294:	03 00 00 c0 	sethi  %hi(0x30000), %g1
   14298:	82 10 63 f4 	or  %g1, 0x3f4, %g1	! 303f4 <xtimes>
   1429c:	d0 00 60 08 	ld  [ %g1 + 8 ], %o0
   142a0:	40 00 07 a5 	call  16134 <__floatsidf>
   142a4:	01 00 00 00 	nop 
   142a8:	84 10 00 08 	mov  %o0, %g2
   142ac:	86 10 00 09 	mov  %o1, %g3
   142b0:	03 00 00 5b 	sethi  %hi(0x16c00), %g1
   142b4:	82 10 60 60 	or  %g1, 0x60, %g1	! 16c60 <_IO_stdin_used+0x288>
   142b8:	90 10 00 02 	mov  %g2, %o0
   142bc:	92 10 00 03 	mov  %g3, %o1
   142c0:	d4 00 40 00 	ld  [ %g1 ], %o2
   142c4:	d6 00 60 04 	ld  [ %g1 + 4 ], %o3
   142c8:	40 00 06 53 	call  15c14 <__muldf3>
   142cc:	01 00 00 00 	nop 
   142d0:	84 10 00 08 	mov  %o0, %g2
   142d4:	86 10 00 09 	mov  %o1, %g3
   142d8:	90 10 00 10 	mov  %l0, %o0
   142dc:	92 10 00 11 	mov  %l1, %o1
   142e0:	94 10 00 02 	mov  %g2, %o2
   142e4:	96 10 00 03 	mov  %g3, %o3
   142e8:	40 00 06 1e 	call  15b60 <__adddf3>
   142ec:	01 00 00 00 	nop 
   142f0:	84 10 00 08 	mov  %o0, %g2
   142f4:	86 10 00 09 	mov  %o1, %g3
   142f8:	90 10 00 02 	mov  %g2, %o0
   142fc:	92 10 00 03 	mov  %g3, %o1
   14300:	40 00 07 de 	call  16278 <__truncdfsf2>
   14304:	01 00 00 00 	nop 
   14308:	82 10 00 08 	mov  %o0, %g1
   1430c:	c2 24 80 00 	st  %g1, [ %l2 ]
   14310:	03 00 00 5a 	sethi  %hi(0x16800), %g1
   14314:	90 10 63 80 	or  %g1, 0x380, %o0	! 16b80 <_IO_stdin_used+0x1a8>
   14318:	40 00 4f 8d 	call  2814c <printf@plt>
   1431c:	01 00 00 00 	nop 
   14320:	7f ff f0 48 	call  10440 <Getclock>
   14324:	01 00 00 00 	nop 
   14328:	84 10 00 08 	mov  %o0, %g2
   1432c:	03 00 00 c0 	sethi  %hi(0x30000), %g1
   14330:	82 10 63 e4 	or  %g1, 0x3e4, %g1	! 303e4 <timer>
   14334:	c4 20 40 00 	st  %g2, [ %g1 ]
   14338:	7f ff f3 08 	call  10f58 <Queens>
   1433c:	01 00 00 00 	nop 
   14340:	03 00 00 c0 	sethi  %hi(0x30000), %g1
   14344:	a0 10 63 f4 	or  %g1, 0x3f4, %l0	! 303f4 <xtimes>
   14348:	7f ff f0 3e 	call  10440 <Getclock>
   1434c:	01 00 00 00 	nop 
   14350:	84 10 00 08 	mov  %o0, %g2
   14354:	03 00 00 c0 	sethi  %hi(0x30000), %g1
   14358:	82 10 63 e4 	or  %g1, 0x3e4, %g1	! 303e4 <timer>
   1435c:	c2 00 40 00 	ld  [ %g1 ], %g1
   14360:	82 20 80 01 	sub  %g2, %g1, %g1
   14364:	c2 24 20 0c 	st  %g1, [ %l0 + 0xc ]
   14368:	03 00 00 ee 	sethi  %hi(0x3b800), %g1
   1436c:	a4 10 62 54 	or  %g1, 0x254, %l2	! 3ba54 <fixed>
   14370:	03 00 00 ee 	sethi  %hi(0x3b800), %g1
   14374:	82 10 62 54 	or  %g1, 0x254, %g1	! 3ba54 <fixed>
   14378:	d0 00 40 00 	ld  [ %g1 ], %o0
   1437c:	40 00 05 2e 	call  15834 <__extendsfdf2>
   14380:	01 00 00 00 	nop 
   14384:	a0 10 00 08 	mov  %o0, %l0
   14388:	a2 10 00 09 	mov  %o1, %l1
   1438c:	03 00 00 c0 	sethi  %hi(0x30000), %g1
   14390:	82 10 63 f4 	or  %g1, 0x3f4, %g1	! 303f4 <xtimes>
   14394:	d0 00 60 0c 	ld  [ %g1 + 0xc ], %o0
   14398:	40 00 07 67 	call  16134 <__floatsidf>
   1439c:	01 00 00 00 	nop 
   143a0:	84 10 00 08 	mov  %o0, %g2
   143a4:	86 10 00 09 	mov  %o1, %g3
   143a8:	03 00 00 5b 	sethi  %hi(0x16c00), %g1
   143ac:	82 10 60 68 	or  %g1, 0x68, %g1	! 16c68 <_IO_stdin_used+0x290>
   143b0:	90 10 00 02 	mov  %g2, %o0
   143b4:	92 10 00 03 	mov  %g3, %o1
   143b8:	d4 00 40 00 	ld  [ %g1 ], %o2
   143bc:	d6 00 60 04 	ld  [ %g1 + 4 ], %o3
   143c0:	40 00 06 15 	call  15c14 <__muldf3>
   143c4:	01 00 00 00 	nop 
   143c8:	84 10 00 08 	mov  %o0, %g2
   143cc:	86 10 00 09 	mov  %o1, %g3
   143d0:	90 10 00 10 	mov  %l0, %o0
   143d4:	92 10 00 11 	mov  %l1, %o1
   143d8:	94 10 00 02 	mov  %g2, %o2
   143dc:	96 10 00 03 	mov  %g3, %o3
   143e0:	40 00 05 e0 	call  15b60 <__adddf3>
   143e4:	01 00 00 00 	nop 
   143e8:	84 10 00 08 	mov  %o0, %g2
   143ec:	86 10 00 09 	mov  %o1, %g3
   143f0:	90 10 00 02 	mov  %g2, %o0
   143f4:	92 10 00 03 	mov  %g3, %o1
   143f8:	40 00 07 a0 	call  16278 <__truncdfsf2>
   143fc:	01 00 00 00 	nop 
   14400:	82 10 00 08 	mov  %o0, %g1
   14404:	c2 24 80 00 	st  %g1, [ %l2 ]
   14408:	03 00 00 a0 	sethi  %hi(0x28000), %g1
   1440c:	a4 10 61 9c 	or  %g1, 0x19c, %l2	! 2819c <floated>
   14410:	03 00 00 a0 	sethi  %hi(0x28000), %g1
   14414:	82 10 61 9c 	or  %g1, 0x19c, %g1	! 2819c <floated>
   14418:	d0 00 40 00 	ld  [ %g1 ], %o0
   1441c:	40 00 05 06 	call  15834 <__extendsfdf2>
   14420:	01 00 00 00 	nop 
   14424:	a0 10 00 08 	mov  %o0, %l0
   14428:	a2 10 00 09 	mov  %o1, %l1
   1442c:	03 00 00 c0 	sethi  %hi(0x30000), %g1
   14430:	82 10 63 f4 	or  %g1, 0x3f4, %g1	! 303f4 <xtimes>
   14434:	d0 00 60 0c 	ld  [ %g1 + 0xc ], %o0
   14438:	40 00 07 3f 	call  16134 <__floatsidf>
   1443c:	01 00 00 00 	nop 
   14440:	84 10 00 08 	mov  %o0, %g2
   14444:	86 10 00 09 	mov  %o1, %g3
   14448:	03 00 00 5b 	sethi  %hi(0x16c00), %g1
   1444c:	82 10 60 68 	or  %g1, 0x68, %g1	! 16c68 <_IO_stdin_used+0x290>
   14450:	90 10 00 02 	mov  %g2, %o0
   14454:	92 10 00 03 	mov  %g3, %o1
   14458:	d4 00 40 00 	ld  [ %g1 ], %o2
   1445c:	d6 00 60 04 	ld  [ %g1 + 4 ], %o3
   14460:	40 00 05 ed 	call  15c14 <__muldf3>
   14464:	01 00 00 00 	nop 
   14468:	84 10 00 08 	mov  %o0, %g2
   1446c:	86 10 00 09 	mov  %o1, %g3
   14470:	90 10 00 10 	mov  %l0, %o0
   14474:	92 10 00 11 	mov  %l1, %o1
   14478:	94 10 00 02 	mov  %g2, %o2
   1447c:	96 10 00 03 	mov  %g3, %o3
   14480:	40 00 05 b8 	call  15b60 <__adddf3>
   14484:	01 00 00 00 	nop 
   14488:	84 10 00 08 	mov  %o0, %g2
   1448c:	86 10 00 09 	mov  %o1, %g3
   14490:	90 10 00 02 	mov  %g2, %o0
   14494:	92 10 00 03 	mov  %g3, %o1
   14498:	40 00 07 78 	call  16278 <__truncdfsf2>
   1449c:	01 00 00 00 	nop 
   144a0:	82 10 00 08 	mov  %o0, %g1
   144a4:	c2 24 80 00 	st  %g1, [ %l2 ]
   144a8:	03 00 00 5a 	sethi  %hi(0x16800), %g1
   144ac:	90 10 63 90 	or  %g1, 0x390, %o0	! 16b90 <_IO_stdin_used+0x1b8>
   144b0:	40 00 4f 27 	call  2814c <printf@plt>
   144b4:	01 00 00 00 	nop 
   144b8:	7f ff ef e2 	call  10440 <Getclock>
   144bc:	01 00 00 00 	nop 
   144c0:	84 10 00 08 	mov  %o0, %g2
   144c4:	03 00 00 c0 	sethi  %hi(0x30000), %g1
   144c8:	82 10 63 e4 	or  %g1, 0x3e4, %g1	! 303e4 <timer>
   144cc:	c4 20 40 00 	st  %g2, [ %g1 ]
   144d0:	7f ff f3 22 	call  11158 <Intmm>
   144d4:	01 00 00 00 	nop 
   144d8:	03 00 00 c0 	sethi  %hi(0x30000), %g1
   144dc:	a0 10 63 f4 	or  %g1, 0x3f4, %l0	! 303f4 <xtimes>
   144e0:	7f ff ef d8 	call  10440 <Getclock>
   144e4:	01 00 00 00 	nop 
   144e8:	84 10 00 08 	mov  %o0, %g2
   144ec:	03 00 00 c0 	sethi  %hi(0x30000), %g1
   144f0:	82 10 63 e4 	or  %g1, 0x3e4, %g1	! 303e4 <timer>
   144f4:	c2 00 40 00 	ld  [ %g1 ], %g1
   144f8:	82 20 80 01 	sub  %g2, %g1, %g1
   144fc:	c2 24 20 10 	st  %g1, [ %l0 + 0x10 ]
   14500:	03 00 00 ee 	sethi  %hi(0x3b800), %g1
   14504:	a4 10 62 54 	or  %g1, 0x254, %l2	! 3ba54 <fixed>
   14508:	03 00 00 ee 	sethi  %hi(0x3b800), %g1
   1450c:	82 10 62 54 	or  %g1, 0x254, %g1	! 3ba54 <fixed>
   14510:	d0 00 40 00 	ld  [ %g1 ], %o0
   14514:	40 00 04 c8 	call  15834 <__extendsfdf2>
   14518:	01 00 00 00 	nop 
   1451c:	a0 10 00 08 	mov  %o0, %l0
   14520:	a2 10 00 09 	mov  %o1, %l1
   14524:	03 00 00 c0 	sethi  %hi(0x30000), %g1
   14528:	82 10 63 f4 	or  %g1, 0x3f4, %g1	! 303f4 <xtimes>
   1452c:	d0 00 60 10 	ld  [ %g1 + 0x10 ], %o0
   14530:	40 00 07 01 	call  16134 <__floatsidf>
   14534:	01 00 00 00 	nop 
   14538:	84 10 00 08 	mov  %o0, %g2
   1453c:	86 10 00 09 	mov  %o1, %g3
   14540:	03 00 00 5b 	sethi  %hi(0x16c00), %g1
   14544:	82 10 60 70 	or  %g1, 0x70, %g1	! 16c70 <_IO_stdin_used+0x298>
   14548:	90 10 00 02 	mov  %g2, %o0
   1454c:	92 10 00 03 	mov  %g3, %o1
   14550:	d4 00 40 00 	ld  [ %g1 ], %o2
   14554:	d6 00 60 04 	ld  [ %g1 + 4 ], %o3
   14558:	40 00 05 af 	call  15c14 <__muldf3>
   1455c:	01 00 00 00 	nop 
   14560:	84 10 00 08 	mov  %o0, %g2
   14564:	86 10 00 09 	mov  %o1, %g3
   14568:	90 10 00 10 	mov  %l0, %o0
   1456c:	92 10 00 11 	mov  %l1, %o1
   14570:	94 10 00 02 	mov  %g2, %o2
   14574:	96 10 00 03 	mov  %g3, %o3
   14578:	40 00 05 7a 	call  15b60 <__adddf3>
   1457c:	01 00 00 00 	nop 
   14580:	84 10 00 08 	mov  %o0, %g2
   14584:	86 10 00 09 	mov  %o1, %g3
   14588:	90 10 00 02 	mov  %g2, %o0
   1458c:	92 10 00 03 	mov  %g3, %o1
   14590:	40 00 07 3a 	call  16278 <__truncdfsf2>
   14594:	01 00 00 00 	nop 
   14598:	82 10 00 08 	mov  %o0, %g1
   1459c:	c2 24 80 00 	st  %g1, [ %l2 ]
   145a0:	03 00 00 a0 	sethi  %hi(0x28000), %g1
   145a4:	a4 10 61 9c 	or  %g1, 0x19c, %l2	! 2819c <floated>
   145a8:	03 00 00 a0 	sethi  %hi(0x28000), %g1
   145ac:	82 10 61 9c 	or  %g1, 0x19c, %g1	! 2819c <floated>
   145b0:	d0 00 40 00 	ld  [ %g1 ], %o0
   145b4:	40 00 04 a0 	call  15834 <__extendsfdf2>
   145b8:	01 00 00 00 	nop 
   145bc:	a0 10 00 08 	mov  %o0, %l0
   145c0:	a2 10 00 09 	mov  %o1, %l1
   145c4:	03 00 00 c0 	sethi  %hi(0x30000), %g1
   145c8:	82 10 63 f4 	or  %g1, 0x3f4, %g1	! 303f4 <xtimes>
   145cc:	d0 00 60 10 	ld  [ %g1 + 0x10 ], %o0
   145d0:	40 00 06 d9 	call  16134 <__floatsidf>
   145d4:	01 00 00 00 	nop 
   145d8:	84 10 00 08 	mov  %o0, %g2
   145dc:	86 10 00 09 	mov  %o1, %g3
   145e0:	03 00 00 5b 	sethi  %hi(0x16c00), %g1
   145e4:	82 10 60 70 	or  %g1, 0x70, %g1	! 16c70 <_IO_stdin_used+0x298>
   145e8:	90 10 00 02 	mov  %g2, %o0
   145ec:	92 10 00 03 	mov  %g3, %o1
   145f0:	d4 00 40 00 	ld  [ %g1 ], %o2
   145f4:	d6 00 60 04 	ld  [ %g1 + 4 ], %o3
   145f8:	40 00 05 87 	call  15c14 <__muldf3>
   145fc:	01 00 00 00 	nop 
   14600:	84 10 00 08 	mov  %o0, %g2
   14604:	86 10 00 09 	mov  %o1, %g3
   14608:	90 10 00 10 	mov  %l0, %o0
   1460c:	92 10 00 11 	mov  %l1, %o1
   14610:	94 10 00 02 	mov  %g2, %o2
   14614:	96 10 00 03 	mov  %g3, %o3
   14618:	40 00 05 52 	call  15b60 <__adddf3>
   1461c:	01 00 00 00 	nop 
   14620:	84 10 00 08 	mov  %o0, %g2
   14624:	86 10 00 09 	mov  %o1, %g3
   14628:	90 10 00 02 	mov  %g2, %o0
   1462c:	92 10 00 03 	mov  %g3, %o1
   14630:	40 00 07 12 	call  16278 <__truncdfsf2>
   14634:	01 00 00 00 	nop 
   14638:	82 10 00 08 	mov  %o0, %g1
   1463c:	c2 24 80 00 	st  %g1, [ %l2 ]
   14640:	03 00 00 5a 	sethi  %hi(0x16800), %g1
   14644:	90 10 63 a0 	or  %g1, 0x3a0, %o0	! 16ba0 <_IO_stdin_used+0x1c8>
   14648:	40 00 4e c1 	call  2814c <printf@plt>
   1464c:	01 00 00 00 	nop 
   14650:	7f ff ef 7c 	call  10440 <Getclock>
   14654:	01 00 00 00 	nop 
   14658:	84 10 00 08 	mov  %o0, %g2
   1465c:	03 00 00 c0 	sethi  %hi(0x30000), %g1
   14660:	82 10 63 e4 	or  %g1, 0x3e4, %g1	! 303e4 <timer>
   14664:	c4 20 40 00 	st  %g2, [ %g1 ]
   14668:	7f ff f3 76 	call  11440 <Mm>
   1466c:	01 00 00 00 	nop 
   14670:	03 00 00 c0 	sethi  %hi(0x30000), %g1
   14674:	a0 10 63 f4 	or  %g1, 0x3f4, %l0	! 303f4 <xtimes>
   14678:	7f ff ef 72 	call  10440 <Getclock>
   1467c:	01 00 00 00 	nop 
   14680:	84 10 00 08 	mov  %o0, %g2
   14684:	03 00 00 c0 	sethi  %hi(0x30000), %g1
   14688:	82 10 63 e4 	or  %g1, 0x3e4, %g1	! 303e4 <timer>
   1468c:	c2 00 40 00 	ld  [ %g1 ], %g1
   14690:	82 20 80 01 	sub  %g2, %g1, %g1
   14694:	c2 24 20 14 	st  %g1, [ %l0 + 0x14 ]
   14698:	03 00 00 ee 	sethi  %hi(0x3b800), %g1
   1469c:	a4 10 62 54 	or  %g1, 0x254, %l2	! 3ba54 <fixed>
   146a0:	03 00 00 ee 	sethi  %hi(0x3b800), %g1
   146a4:	82 10 62 54 	or  %g1, 0x254, %g1	! 3ba54 <fixed>
   146a8:	d0 00 40 00 	ld  [ %g1 ], %o0
   146ac:	40 00 04 62 	call  15834 <__extendsfdf2>
   146b0:	01 00 00 00 	nop 
   146b4:	a0 10 00 08 	mov  %o0, %l0
   146b8:	a2 10 00 09 	mov  %o1, %l1
   146bc:	03 00 00 c0 	sethi  %hi(0x30000), %g1
   146c0:	82 10 63 f4 	or  %g1, 0x3f4, %g1	! 303f4 <xtimes>
   146c4:	d0 00 60 14 	ld  [ %g1 + 0x14 ], %o0
   146c8:	40 00 06 9b 	call  16134 <__floatsidf>
   146cc:	01 00 00 00 	nop 
   146d0:	84 10 00 08 	mov  %o0, %g2
   146d4:	86 10 00 09 	mov  %o1, %g3
   146d8:	03 00 00 5b 	sethi  %hi(0x16c00), %g1
   146dc:	82 10 60 78 	or  %g1, 0x78, %g1	! 16c78 <_IO_stdin_used+0x2a0>
   146e0:	90 10 00 02 	mov  %g2, %o0
   146e4:	92 10 00 03 	mov  %g3, %o1
   146e8:	d4 00 40 00 	ld  [ %g1 ], %o2
   146ec:	d6 00 60 04 	ld  [ %g1 + 4 ], %o3
   146f0:	40 00 05 49 	call  15c14 <__muldf3>
   146f4:	01 00 00 00 	nop 
   146f8:	84 10 00 08 	mov  %o0, %g2
   146fc:	86 10 00 09 	mov  %o1, %g3
   14700:	90 10 00 10 	mov  %l0, %o0
   14704:	92 10 00 11 	mov  %l1, %o1
   14708:	94 10 00 02 	mov  %g2, %o2
   1470c:	96 10 00 03 	mov  %g3, %o3
   14710:	40 00 05 14 	call  15b60 <__adddf3>
   14714:	01 00 00 00 	nop 
   14718:	84 10 00 08 	mov  %o0, %g2
   1471c:	86 10 00 09 	mov  %o1, %g3
   14720:	90 10 00 02 	mov  %g2, %o0
   14724:	92 10 00 03 	mov  %g3, %o1
   14728:	40 00 06 d4 	call  16278 <__truncdfsf2>
   1472c:	01 00 00 00 	nop 
   14730:	82 10 00 08 	mov  %o0, %g1
   14734:	c2 24 80 00 	st  %g1, [ %l2 ]
   14738:	03 00 00 a0 	sethi  %hi(0x28000), %g1
   1473c:	a4 10 61 9c 	or  %g1, 0x19c, %l2	! 2819c <floated>
   14740:	03 00 00 a0 	sethi  %hi(0x28000), %g1
   14744:	82 10 61 9c 	or  %g1, 0x19c, %g1	! 2819c <floated>
   14748:	d0 00 40 00 	ld  [ %g1 ], %o0
   1474c:	40 00 04 3a 	call  15834 <__extendsfdf2>
   14750:	01 00 00 00 	nop 
   14754:	a0 10 00 08 	mov  %o0, %l0
   14758:	a2 10 00 09 	mov  %o1, %l1
   1475c:	03 00 00 c0 	sethi  %hi(0x30000), %g1
   14760:	82 10 63 f4 	or  %g1, 0x3f4, %g1	! 303f4 <xtimes>
   14764:	d0 00 60 14 	ld  [ %g1 + 0x14 ], %o0
   14768:	40 00 06 73 	call  16134 <__floatsidf>
   1476c:	01 00 00 00 	nop 
   14770:	84 10 00 08 	mov  %o0, %g2
   14774:	86 10 00 09 	mov  %o1, %g3
   14778:	03 00 00 5b 	sethi  %hi(0x16c00), %g1
   1477c:	82 10 60 80 	or  %g1, 0x80, %g1	! 16c80 <_IO_stdin_used+0x2a8>
   14780:	90 10 00 02 	mov  %g2, %o0
   14784:	92 10 00 03 	mov  %g3, %o1
   14788:	d4 00 40 00 	ld  [ %g1 ], %o2
   1478c:	d6 00 60 04 	ld  [ %g1 + 4 ], %o3
   14790:	40 00 05 21 	call  15c14 <__muldf3>
   14794:	01 00 00 00 	nop 
   14798:	84 10 00 08 	mov  %o0, %g2
   1479c:	86 10 00 09 	mov  %o1, %g3
   147a0:	90 10 00 10 	mov  %l0, %o0
   147a4:	92 10 00 11 	mov  %l1, %o1
   147a8:	94 10 00 02 	mov  %g2, %o2
   147ac:	96 10 00 03 	mov  %g3, %o3
   147b0:	40 00 04 ec 	call  15b60 <__adddf3>
   147b4:	01 00 00 00 	nop 
   147b8:	84 10 00 08 	mov  %o0, %g2
   147bc:	86 10 00 09 	mov  %o1, %g3
   147c0:	90 10 00 02 	mov  %g2, %o0
   147c4:	92 10 00 03 	mov  %g3, %o1
   147c8:	40 00 06 ac 	call  16278 <__truncdfsf2>
   147cc:	01 00 00 00 	nop 
   147d0:	82 10 00 08 	mov  %o0, %g1
   147d4:	c2 24 80 00 	st  %g1, [ %l2 ]
   147d8:	03 00 00 5a 	sethi  %hi(0x16800), %g1
   147dc:	90 10 63 b0 	or  %g1, 0x3b0, %o0	! 16bb0 <_IO_stdin_used+0x1d8>
   147e0:	40 00 4e 5b 	call  2814c <printf@plt>
   147e4:	01 00 00 00 	nop 
   147e8:	7f ff ef 16 	call  10440 <Getclock>
   147ec:	01 00 00 00 	nop 
   147f0:	84 10 00 08 	mov  %o0, %g2
   147f4:	03 00 00 c0 	sethi  %hi(0x30000), %g1
   147f8:	82 10 63 e4 	or  %g1, 0x3e4, %g1	! 303e4 <timer>
   147fc:	c4 20 40 00 	st  %g2, [ %g1 ]
   14800:	7f ff f4 49 	call  11924 <Puzzle>
   14804:	01 00 00 00 	nop 
   14808:	03 00 00 c0 	sethi  %hi(0x30000), %g1
   1480c:	a0 10 63 f4 	or  %g1, 0x3f4, %l0	! 303f4 <xtimes>
   14810:	7f ff ef 0c 	call  10440 <Getclock>
   14814:	01 00 00 00 	nop 
   14818:	84 10 00 08 	mov  %o0, %g2
   1481c:	03 00 00 c0 	sethi  %hi(0x30000), %g1
   14820:	82 10 63 e4 	or  %g1, 0x3e4, %g1	! 303e4 <timer>
   14824:	c2 00 40 00 	ld  [ %g1 ], %g1
   14828:	82 20 80 01 	sub  %g2, %g1, %g1
   1482c:	c2 24 20 18 	st  %g1, [ %l0 + 0x18 ]
   14830:	03 00 00 ee 	sethi  %hi(0x3b800), %g1
   14834:	a4 10 62 54 	or  %g1, 0x254, %l2	! 3ba54 <fixed>
   14838:	03 00 00 ee 	sethi  %hi(0x3b800), %g1
   1483c:	82 10 62 54 	or  %g1, 0x254, %g1	! 3ba54 <fixed>
   14840:	d0 00 40 00 	ld  [ %g1 ], %o0
   14844:	40 00 03 fc 	call  15834 <__extendsfdf2>
   14848:	01 00 00 00 	nop 
   1484c:	a0 10 00 08 	mov  %o0, %l0
   14850:	a2 10 00 09 	mov  %o1, %l1
   14854:	03 00 00 c0 	sethi  %hi(0x30000), %g1
   14858:	82 10 63 f4 	or  %g1, 0x3f4, %g1	! 303f4 <xtimes>
   1485c:	d0 00 60 18 	ld  [ %g1 + 0x18 ], %o0
   14860:	40 00 06 35 	call  16134 <__floatsidf>
   14864:	01 00 00 00 	nop 
   14868:	84 10 00 08 	mov  %o0, %g2
   1486c:	86 10 00 09 	mov  %o1, %g3
   14870:	03 00 00 5b 	sethi  %hi(0x16c00), %g1
   14874:	82 10 60 88 	or  %g1, 0x88, %g1	! 16c88 <_IO_stdin_used+0x2b0>
   14878:	90 10 00 02 	mov  %g2, %o0
   1487c:	92 10 00 03 	mov  %g3, %o1
   14880:	d4 00 40 00 	ld  [ %g1 ], %o2
   14884:	d6 00 60 04 	ld  [ %g1 + 4 ], %o3
   14888:	40 00 04 e3 	call  15c14 <__muldf3>
   1488c:	01 00 00 00 	nop 
   14890:	84 10 00 08 	mov  %o0, %g2
   14894:	86 10 00 09 	mov  %o1, %g3
   14898:	90 10 00 10 	mov  %l0, %o0
   1489c:	92 10 00 11 	mov  %l1, %o1
   148a0:	94 10 00 02 	mov  %g2, %o2
   148a4:	96 10 00 03 	mov  %g3, %o3
   148a8:	40 00 04 ae 	call  15b60 <__adddf3>
   148ac:	01 00 00 00 	nop 
   148b0:	84 10 00 08 	mov  %o0, %g2
   148b4:	86 10 00 09 	mov  %o1, %g3
   148b8:	90 10 00 02 	mov  %g2, %o0
   148bc:	92 10 00 03 	mov  %g3, %o1
   148c0:	40 00 06 6e 	call  16278 <__truncdfsf2>
   148c4:	01 00 00 00 	nop 
   148c8:	82 10 00 08 	mov  %o0, %g1
   148cc:	c2 24 80 00 	st  %g1, [ %l2 ]
   148d0:	03 00 00 a0 	sethi  %hi(0x28000), %g1
   148d4:	a4 10 61 9c 	or  %g1, 0x19c, %l2	! 2819c <floated>
   148d8:	03 00 00 a0 	sethi  %hi(0x28000), %g1
   148dc:	82 10 61 9c 	or  %g1, 0x19c, %g1	! 2819c <floated>
   148e0:	d0 00 40 00 	ld  [ %g1 ], %o0
   148e4:	40 00 03 d4 	call  15834 <__extendsfdf2>
   148e8:	01 00 00 00 	nop 
   148ec:	a0 10 00 08 	mov  %o0, %l0
   148f0:	a2 10 00 09 	mov  %o1, %l1
   148f4:	03 00 00 c0 	sethi  %hi(0x30000), %g1
   148f8:	82 10 63 f4 	or  %g1, 0x3f4, %g1	! 303f4 <xtimes>
   148fc:	d0 00 60 18 	ld  [ %g1 + 0x18 ], %o0
   14900:	40 00 06 0d 	call  16134 <__floatsidf>
   14904:	01 00 00 00 	nop 
   14908:	84 10 00 08 	mov  %o0, %g2
   1490c:	86 10 00 09 	mov  %o1, %g3
   14910:	03 00 00 5b 	sethi  %hi(0x16c00), %g1
   14914:	82 10 60 88 	or  %g1, 0x88, %g1	! 16c88 <_IO_stdin_used+0x2b0>
   14918:	90 10 00 02 	mov  %g2, %o0
   1491c:	92 10 00 03 	mov  %g3, %o1
   14920:	d4 00 40 00 	ld  [ %g1 ], %o2
   14924:	d6 00 60 04 	ld  [ %g1 + 4 ], %o3
   14928:	40 00 04 bb 	call  15c14 <__muldf3>
   1492c:	01 00 00 00 	nop 
   14930:	84 10 00 08 	mov  %o0, %g2
   14934:	86 10 00 09 	mov  %o1, %g3
   14938:	90 10 00 10 	mov  %l0, %o0
   1493c:	92 10 00 11 	mov  %l1, %o1
   14940:	94 10 00 02 	mov  %g2, %o2
   14944:	96 10 00 03 	mov  %g3, %o3
   14948:	40 00 04 86 	call  15b60 <__adddf3>
   1494c:	01 00 00 00 	nop 
   14950:	84 10 00 08 	mov  %o0, %g2
   14954:	86 10 00 09 	mov  %o1, %g3
   14958:	90 10 00 02 	mov  %g2, %o0
   1495c:	92 10 00 03 	mov  %g3, %o1
   14960:	40 00 06 46 	call  16278 <__truncdfsf2>
   14964:	01 00 00 00 	nop 
   14968:	82 10 00 08 	mov  %o0, %g1
   1496c:	c2 24 80 00 	st  %g1, [ %l2 ]
   14970:	03 00 00 5a 	sethi  %hi(0x16800), %g1
   14974:	90 10 63 c0 	or  %g1, 0x3c0, %o0	! 16bc0 <_IO_stdin_used+0x1e8>
   14978:	40 00 4d f5 	call  2814c <printf@plt>
   1497c:	01 00 00 00 	nop 
   14980:	7f ff ee b0 	call  10440 <Getclock>
   14984:	01 00 00 00 	nop 
   14988:	84 10 00 08 	mov  %o0, %g2
   1498c:	03 00 00 c0 	sethi  %hi(0x30000), %g1
   14990:	82 10 63 e4 	or  %g1, 0x3e4, %g1	! 303e4 <timer>
   14994:	c4 20 40 00 	st  %g2, [ %g1 ]
   14998:	7f ff f7 e7 	call  12934 <Quick>
   1499c:	01 00 00 00 	nop 
   149a0:	03 00 00 c0 	sethi  %hi(0x30000), %g1
   149a4:	a0 10 63 f4 	or  %g1, 0x3f4, %l0	! 303f4 <xtimes>
   149a8:	7f ff ee a6 	call  10440 <Getclock>
   149ac:	01 00 00 00 	nop 
   149b0:	84 10 00 08 	mov  %o0, %g2
   149b4:	03 00 00 c0 	sethi  %hi(0x30000), %g1
   149b8:	82 10 63 e4 	or  %g1, 0x3e4, %g1	! 303e4 <timer>
   149bc:	c2 00 40 00 	ld  [ %g1 ], %g1
   149c0:	82 20 80 01 	sub  %g2, %g1, %g1
   149c4:	c2 24 20 1c 	st  %g1, [ %l0 + 0x1c ]
   149c8:	03 00 00 ee 	sethi  %hi(0x3b800), %g1
   149cc:	a4 10 62 54 	or  %g1, 0x254, %l2	! 3ba54 <fixed>
   149d0:	03 00 00 ee 	sethi  %hi(0x3b800), %g1
   149d4:	82 10 62 54 	or  %g1, 0x254, %g1	! 3ba54 <fixed>
   149d8:	d0 00 40 00 	ld  [ %g1 ], %o0
   149dc:	40 00 03 96 	call  15834 <__extendsfdf2>
   149e0:	01 00 00 00 	nop 
   149e4:	a0 10 00 08 	mov  %o0, %l0
   149e8:	a2 10 00 09 	mov  %o1, %l1
   149ec:	03 00 00 c0 	sethi  %hi(0x30000), %g1
   149f0:	82 10 63 f4 	or  %g1, 0x3f4, %g1	! 303f4 <xtimes>
   149f4:	d0 00 60 1c 	ld  [ %g1 + 0x1c ], %o0
   149f8:	40 00 05 cf 	call  16134 <__floatsidf>
   149fc:	01 00 00 00 	nop 
   14a00:	84 10 00 08 	mov  %o0, %g2
   14a04:	86 10 00 09 	mov  %o1, %g3
   14a08:	03 00 00 5b 	sethi  %hi(0x16c00), %g1
   14a0c:	82 10 60 90 	or  %g1, 0x90, %g1	! 16c90 <_IO_stdin_used+0x2b8>
   14a10:	90 10 00 02 	mov  %g2, %o0
   14a14:	92 10 00 03 	mov  %g3, %o1
   14a18:	d4 00 40 00 	ld  [ %g1 ], %o2
   14a1c:	d6 00 60 04 	ld  [ %g1 + 4 ], %o3
   14a20:	40 00 04 7d 	call  15c14 <__muldf3>
   14a24:	01 00 00 00 	nop 
   14a28:	84 10 00 08 	mov  %o0, %g2
   14a2c:	86 10 00 09 	mov  %o1, %g3
   14a30:	90 10 00 10 	mov  %l0, %o0
   14a34:	92 10 00 11 	mov  %l1, %o1
   14a38:	94 10 00 02 	mov  %g2, %o2
   14a3c:	96 10 00 03 	mov  %g3, %o3
   14a40:	40 00 04 48 	call  15b60 <__adddf3>
   14a44:	01 00 00 00 	nop 
   14a48:	84 10 00 08 	mov  %o0, %g2
   14a4c:	86 10 00 09 	mov  %o1, %g3
   14a50:	90 10 00 02 	mov  %g2, %o0
   14a54:	92 10 00 03 	mov  %g3, %o1
   14a58:	40 00 06 08 	call  16278 <__truncdfsf2>
   14a5c:	01 00 00 00 	nop 
   14a60:	82 10 00 08 	mov  %o0, %g1
   14a64:	c2 24 80 00 	st  %g1, [ %l2 ]
   14a68:	03 00 00 a0 	sethi  %hi(0x28000), %g1
   14a6c:	a4 10 61 9c 	or  %g1, 0x19c, %l2	! 2819c <floated>
   14a70:	03 00 00 a0 	sethi  %hi(0x28000), %g1
   14a74:	82 10 61 9c 	or  %g1, 0x19c, %g1	! 2819c <floated>
   14a78:	d0 00 40 00 	ld  [ %g1 ], %o0
   14a7c:	40 00 03 6e 	call  15834 <__extendsfdf2>
   14a80:	01 00 00 00 	nop 
   14a84:	a0 10 00 08 	mov  %o0, %l0
   14a88:	a2 10 00 09 	mov  %o1, %l1
   14a8c:	03 00 00 c0 	sethi  %hi(0x30000), %g1
   14a90:	82 10 63 f4 	or  %g1, 0x3f4, %g1	! 303f4 <xtimes>
   14a94:	d0 00 60 1c 	ld  [ %g1 + 0x1c ], %o0
   14a98:	40 00 05 a7 	call  16134 <__floatsidf>
   14a9c:	01 00 00 00 	nop 
   14aa0:	84 10 00 08 	mov  %o0, %g2
   14aa4:	86 10 00 09 	mov  %o1, %g3
   14aa8:	03 00 00 5b 	sethi  %hi(0x16c00), %g1
   14aac:	82 10 60 90 	or  %g1, 0x90, %g1	! 16c90 <_IO_stdin_used+0x2b8>
   14ab0:	90 10 00 02 	mov  %g2, %o0
   14ab4:	92 10 00 03 	mov  %g3, %o1
   14ab8:	d4 00 40 00 	ld  [ %g1 ], %o2
   14abc:	d6 00 60 04 	ld  [ %g1 + 4 ], %o3
   14ac0:	40 00 04 55 	call  15c14 <__muldf3>
   14ac4:	01 00 00 00 	nop 
   14ac8:	84 10 00 08 	mov  %o0, %g2
   14acc:	86 10 00 09 	mov  %o1, %g3
   14ad0:	90 10 00 10 	mov  %l0, %o0
   14ad4:	92 10 00 11 	mov  %l1, %o1
   14ad8:	94 10 00 02 	mov  %g2, %o2
   14adc:	96 10 00 03 	mov  %g3, %o3
   14ae0:	40 00 04 20 	call  15b60 <__adddf3>
   14ae4:	01 00 00 00 	nop 
   14ae8:	84 10 00 08 	mov  %o0, %g2
   14aec:	86 10 00 09 	mov  %o1, %g3
   14af0:	90 10 00 02 	mov  %g2, %o0
   14af4:	92 10 00 03 	mov  %g3, %o1
   14af8:	40 00 05 e0 	call  16278 <__truncdfsf2>
   14afc:	01 00 00 00 	nop 
   14b00:	82 10 00 08 	mov  %o0, %g1
   14b04:	c2 24 80 00 	st  %g1, [ %l2 ]
   14b08:	03 00 00 5a 	sethi  %hi(0x16800), %g1
   14b0c:	90 10 63 d0 	or  %g1, 0x3d0, %o0	! 16bd0 <_IO_stdin_used+0x1f8>
   14b10:	40 00 4d 8f 	call  2814c <printf@plt>
   14b14:	01 00 00 00 	nop 
   14b18:	7f ff ee 4a 	call  10440 <Getclock>
   14b1c:	01 00 00 00 	nop 
   14b20:	84 10 00 08 	mov  %o0, %g2
   14b24:	03 00 00 c0 	sethi  %hi(0x30000), %g1
   14b28:	82 10 63 e4 	or  %g1, 0x3e4, %g1	! 303e4 <timer>
   14b2c:	c4 20 40 00 	st  %g2, [ %g1 ]
   14b30:	7f ff f9 30 	call  12ff0 <Bubble>
   14b34:	01 00 00 00 	nop 
   14b38:	03 00 00 c0 	sethi  %hi(0x30000), %g1
   14b3c:	a0 10 63 f4 	or  %g1, 0x3f4, %l0	! 303f4 <xtimes>
   14b40:	7f ff ee 40 	call  10440 <Getclock>
   14b44:	01 00 00 00 	nop 
   14b48:	84 10 00 08 	mov  %o0, %g2
   14b4c:	03 00 00 c0 	sethi  %hi(0x30000), %g1
   14b50:	82 10 63 e4 	or  %g1, 0x3e4, %g1	! 303e4 <timer>
   14b54:	c2 00 40 00 	ld  [ %g1 ], %g1
   14b58:	82 20 80 01 	sub  %g2, %g1, %g1
   14b5c:	c2 24 20 20 	st  %g1, [ %l0 + 0x20 ]
   14b60:	03 00 00 ee 	sethi  %hi(0x3b800), %g1
   14b64:	a4 10 62 54 	or  %g1, 0x254, %l2	! 3ba54 <fixed>
   14b68:	03 00 00 ee 	sethi  %hi(0x3b800), %g1
   14b6c:	82 10 62 54 	or  %g1, 0x254, %g1	! 3ba54 <fixed>
   14b70:	d0 00 40 00 	ld  [ %g1 ], %o0
   14b74:	40 00 03 30 	call  15834 <__extendsfdf2>
   14b78:	01 00 00 00 	nop 
   14b7c:	a0 10 00 08 	mov  %o0, %l0
   14b80:	a2 10 00 09 	mov  %o1, %l1
   14b84:	03 00 00 c0 	sethi  %hi(0x30000), %g1
   14b88:	82 10 63 f4 	or  %g1, 0x3f4, %g1	! 303f4 <xtimes>
   14b8c:	d0 00 60 20 	ld  [ %g1 + 0x20 ], %o0
   14b90:	40 00 05 69 	call  16134 <__floatsidf>
   14b94:	01 00 00 00 	nop 
   14b98:	84 10 00 08 	mov  %o0, %g2
   14b9c:	86 10 00 09 	mov  %o1, %g3
   14ba0:	03 00 00 5b 	sethi  %hi(0x16c00), %g1
   14ba4:	82 10 60 98 	or  %g1, 0x98, %g1	! 16c98 <_IO_stdin_used+0x2c0>
   14ba8:	90 10 00 02 	mov  %g2, %o0
   14bac:	92 10 00 03 	mov  %g3, %o1
   14bb0:	d4 00 40 00 	ld  [ %g1 ], %o2
   14bb4:	d6 00 60 04 	ld  [ %g1 + 4 ], %o3
   14bb8:	40 00 04 17 	call  15c14 <__muldf3>
   14bbc:	01 00 00 00 	nop 
   14bc0:	84 10 00 08 	mov  %o0, %g2
   14bc4:	86 10 00 09 	mov  %o1, %g3
   14bc8:	90 10 00 10 	mov  %l0, %o0
   14bcc:	92 10 00 11 	mov  %l1, %o1
   14bd0:	94 10 00 02 	mov  %g2, %o2
   14bd4:	96 10 00 03 	mov  %g3, %o3
   14bd8:	40 00 03 e2 	call  15b60 <__adddf3>
   14bdc:	01 00 00 00 	nop 
   14be0:	84 10 00 08 	mov  %o0, %g2
   14be4:	86 10 00 09 	mov  %o1, %g3
   14be8:	90 10 00 02 	mov  %g2, %o0
   14bec:	92 10 00 03 	mov  %g3, %o1
   14bf0:	40 00 05 a2 	call  16278 <__truncdfsf2>
   14bf4:	01 00 00 00 	nop 
   14bf8:	82 10 00 08 	mov  %o0, %g1
   14bfc:	c2 24 80 00 	st  %g1, [ %l2 ]
   14c00:	03 00 00 a0 	sethi  %hi(0x28000), %g1
   14c04:	a4 10 61 9c 	or  %g1, 0x19c, %l2	! 2819c <floated>
   14c08:	03 00 00 a0 	sethi  %hi(0x28000), %g1
   14c0c:	82 10 61 9c 	or  %g1, 0x19c, %g1	! 2819c <floated>
   14c10:	d0 00 40 00 	ld  [ %g1 ], %o0
   14c14:	40 00 03 08 	call  15834 <__extendsfdf2>
   14c18:	01 00 00 00 	nop 
   14c1c:	a0 10 00 08 	mov  %o0, %l0
   14c20:	a2 10 00 09 	mov  %o1, %l1
   14c24:	03 00 00 c0 	sethi  %hi(0x30000), %g1
   14c28:	82 10 63 f4 	or  %g1, 0x3f4, %g1	! 303f4 <xtimes>
   14c2c:	d0 00 60 20 	ld  [ %g1 + 0x20 ], %o0
   14c30:	40 00 05 41 	call  16134 <__floatsidf>
   14c34:	01 00 00 00 	nop 
   14c38:	84 10 00 08 	mov  %o0, %g2
   14c3c:	86 10 00 09 	mov  %o1, %g3
   14c40:	03 00 00 5b 	sethi  %hi(0x16c00), %g1
   14c44:	82 10 60 98 	or  %g1, 0x98, %g1	! 16c98 <_IO_stdin_used+0x2c0>
   14c48:	90 10 00 02 	mov  %g2, %o0
   14c4c:	92 10 00 03 	mov  %g3, %o1
   14c50:	d4 00 40 00 	ld  [ %g1 ], %o2
   14c54:	d6 00 60 04 	ld  [ %g1 + 4 ], %o3
   14c58:	40 00 03 ef 	call  15c14 <__muldf3>
   14c5c:	01 00 00 00 	nop 
   14c60:	84 10 00 08 	mov  %o0, %g2
   14c64:	86 10 00 09 	mov  %o1, %g3
   14c68:	90 10 00 10 	mov  %l0, %o0
   14c6c:	92 10 00 11 	mov  %l1, %o1
   14c70:	94 10 00 02 	mov  %g2, %o2
   14c74:	96 10 00 03 	mov  %g3, %o3
   14c78:	40 00 03 ba 	call  15b60 <__adddf3>
   14c7c:	01 00 00 00 	nop 
   14c80:	84 10 00 08 	mov  %o0, %g2
   14c84:	86 10 00 09 	mov  %o1, %g3
   14c88:	90 10 00 02 	mov  %g2, %o0
   14c8c:	92 10 00 03 	mov  %g3, %o1
   14c90:	40 00 05 7a 	call  16278 <__truncdfsf2>
   14c94:	01 00 00 00 	nop 
   14c98:	82 10 00 08 	mov  %o0, %g1
   14c9c:	c2 24 80 00 	st  %g1, [ %l2 ]
   14ca0:	03 00 00 5a 	sethi  %hi(0x16800), %g1
   14ca4:	90 10 63 e0 	or  %g1, 0x3e0, %o0	! 16be0 <_IO_stdin_used+0x208>
   14ca8:	40 00 4d 29 	call  2814c <printf@plt>
   14cac:	01 00 00 00 	nop 
   14cb0:	7f ff ed e4 	call  10440 <Getclock>
   14cb4:	01 00 00 00 	nop 
   14cb8:	84 10 00 08 	mov  %o0, %g2
   14cbc:	03 00 00 c0 	sethi  %hi(0x30000), %g1
   14cc0:	82 10 63 e4 	or  %g1, 0x3e4, %g1	! 303e4 <timer>
   14cc4:	c4 20 40 00 	st  %g2, [ %g1 ]
   14cc8:	7f ff f8 32 	call  12d90 <Trees>
   14ccc:	01 00 00 00 	nop 
   14cd0:	03 00 00 c0 	sethi  %hi(0x30000), %g1
   14cd4:	a0 10 63 f4 	or  %g1, 0x3f4, %l0	! 303f4 <xtimes>
   14cd8:	7f ff ed da 	call  10440 <Getclock>
   14cdc:	01 00 00 00 	nop 
   14ce0:	84 10 00 08 	mov  %o0, %g2
   14ce4:	03 00 00 c0 	sethi  %hi(0x30000), %g1
   14ce8:	82 10 63 e4 	or  %g1, 0x3e4, %g1	! 303e4 <timer>
   14cec:	c2 00 40 00 	ld  [ %g1 ], %g1
   14cf0:	82 20 80 01 	sub  %g2, %g1, %g1
   14cf4:	c2 24 20 24 	st  %g1, [ %l0 + 0x24 ]
   14cf8:	03 00 00 ee 	sethi  %hi(0x3b800), %g1
   14cfc:	a4 10 62 54 	or  %g1, 0x254, %l2	! 3ba54 <fixed>
   14d00:	03 00 00 ee 	sethi  %hi(0x3b800), %g1
   14d04:	82 10 62 54 	or  %g1, 0x254, %g1	! 3ba54 <fixed>
   14d08:	d0 00 40 00 	ld  [ %g1 ], %o0
   14d0c:	40 00 02 ca 	call  15834 <__extendsfdf2>
   14d10:	01 00 00 00 	nop 
   14d14:	a0 10 00 08 	mov  %o0, %l0
   14d18:	a2 10 00 09 	mov  %o1, %l1
   14d1c:	03 00 00 c0 	sethi  %hi(0x30000), %g1
   14d20:	82 10 63 f4 	or  %g1, 0x3f4, %g1	! 303f4 <xtimes>
   14d24:	d0 00 60 24 	ld  [ %g1 + 0x24 ], %o0
   14d28:	40 00 05 03 	call  16134 <__floatsidf>
   14d2c:	01 00 00 00 	nop 
   14d30:	84 10 00 08 	mov  %o0, %g2
   14d34:	86 10 00 09 	mov  %o1, %g3
   14d38:	03 00 00 5b 	sethi  %hi(0x16c00), %g1
   14d3c:	82 10 60 a0 	or  %g1, 0xa0, %g1	! 16ca0 <_IO_stdin_used+0x2c8>
   14d40:	90 10 00 02 	mov  %g2, %o0
   14d44:	92 10 00 03 	mov  %g3, %o1
   14d48:	d4 00 40 00 	ld  [ %g1 ], %o2
   14d4c:	d6 00 60 04 	ld  [ %g1 + 4 ], %o3
   14d50:	40 00 03 b1 	call  15c14 <__muldf3>
   14d54:	01 00 00 00 	nop 
   14d58:	84 10 00 08 	mov  %o0, %g2
   14d5c:	86 10 00 09 	mov  %o1, %g3
   14d60:	90 10 00 10 	mov  %l0, %o0
   14d64:	92 10 00 11 	mov  %l1, %o1
   14d68:	94 10 00 02 	mov  %g2, %o2
   14d6c:	96 10 00 03 	mov  %g3, %o3
   14d70:	40 00 03 7c 	call  15b60 <__adddf3>
   14d74:	01 00 00 00 	nop 
   14d78:	84 10 00 08 	mov  %o0, %g2
   14d7c:	86 10 00 09 	mov  %o1, %g3
   14d80:	90 10 00 02 	mov  %g2, %o0
   14d84:	92 10 00 03 	mov  %g3, %o1
   14d88:	40 00 05 3c 	call  16278 <__truncdfsf2>
   14d8c:	01 00 00 00 	nop 
   14d90:	82 10 00 08 	mov  %o0, %g1
   14d94:	c2 24 80 00 	st  %g1, [ %l2 ]
   14d98:	03 00 00 a0 	sethi  %hi(0x28000), %g1
   14d9c:	a4 10 61 9c 	or  %g1, 0x19c, %l2	! 2819c <floated>
   14da0:	03 00 00 a0 	sethi  %hi(0x28000), %g1
   14da4:	82 10 61 9c 	or  %g1, 0x19c, %g1	! 2819c <floated>
   14da8:	d0 00 40 00 	ld  [ %g1 ], %o0
   14dac:	40 00 02 a2 	call  15834 <__extendsfdf2>
   14db0:	01 00 00 00 	nop 
   14db4:	a0 10 00 08 	mov  %o0, %l0
   14db8:	a2 10 00 09 	mov  %o1, %l1
   14dbc:	03 00 00 c0 	sethi  %hi(0x30000), %g1
   14dc0:	82 10 63 f4 	or  %g1, 0x3f4, %g1	! 303f4 <xtimes>
   14dc4:	d0 00 60 24 	ld  [ %g1 + 0x24 ], %o0
   14dc8:	40 00 04 db 	call  16134 <__floatsidf>
   14dcc:	01 00 00 00 	nop 
   14dd0:	84 10 00 08 	mov  %o0, %g2
   14dd4:	86 10 00 09 	mov  %o1, %g3
   14dd8:	03 00 00 5b 	sethi  %hi(0x16c00), %g1
   14ddc:	82 10 60 a0 	or  %g1, 0xa0, %g1	! 16ca0 <_IO_stdin_used+0x2c8>
   14de0:	90 10 00 02 	mov  %g2, %o0
   14de4:	92 10 00 03 	mov  %g3, %o1
   14de8:	d4 00 40 00 	ld  [ %g1 ], %o2
   14dec:	d6 00 60 04 	ld  [ %g1 + 4 ], %o3
   14df0:	40 00 03 89 	call  15c14 <__muldf3>
   14df4:	01 00 00 00 	nop 
   14df8:	84 10 00 08 	mov  %o0, %g2
   14dfc:	86 10 00 09 	mov  %o1, %g3
   14e00:	90 10 00 10 	mov  %l0, %o0
   14e04:	92 10 00 11 	mov  %l1, %o1
   14e08:	94 10 00 02 	mov  %g2, %o2
   14e0c:	96 10 00 03 	mov  %g3, %o3
   14e10:	40 00 03 54 	call  15b60 <__adddf3>
   14e14:	01 00 00 00 	nop 
   14e18:	84 10 00 08 	mov  %o0, %g2
   14e1c:	86 10 00 09 	mov  %o1, %g3
   14e20:	90 10 00 02 	mov  %g2, %o0
   14e24:	92 10 00 03 	mov  %g3, %o1
   14e28:	40 00 05 14 	call  16278 <__truncdfsf2>
   14e2c:	01 00 00 00 	nop 
   14e30:	82 10 00 08 	mov  %o0, %g1
   14e34:	c2 24 80 00 	st  %g1, [ %l2 ]
   14e38:	03 00 00 5a 	sethi  %hi(0x16800), %g1
   14e3c:	90 10 63 f0 	or  %g1, 0x3f0, %o0	! 16bf0 <_IO_stdin_used+0x218>
   14e40:	40 00 4c c3 	call  2814c <printf@plt>
   14e44:	01 00 00 00 	nop 
   14e48:	7f ff ed 7e 	call  10440 <Getclock>
   14e4c:	01 00 00 00 	nop 
   14e50:	84 10 00 08 	mov  %o0, %g2
   14e54:	03 00 00 c0 	sethi  %hi(0x30000), %g1
   14e58:	82 10 63 e4 	or  %g1, 0x3e4, %g1	! 303e4 <timer>
   14e5c:	c4 20 40 00 	st  %g2, [ %g1 ]
   14e60:	7f ff fb b5 	call  13d34 <Oscar>
   14e64:	01 00 00 00 	nop 
   14e68:	03 00 00 c0 	sethi  %hi(0x30000), %g1
   14e6c:	a0 10 63 f4 	or  %g1, 0x3f4, %l0	! 303f4 <xtimes>
   14e70:	7f ff ed 74 	call  10440 <Getclock>
   14e74:	01 00 00 00 	nop 
   14e78:	84 10 00 08 	mov  %o0, %g2
   14e7c:	03 00 00 c0 	sethi  %hi(0x30000), %g1
   14e80:	82 10 63 e4 	or  %g1, 0x3e4, %g1	! 303e4 <timer>
   14e84:	c2 00 40 00 	ld  [ %g1 ], %g1
   14e88:	82 20 80 01 	sub  %g2, %g1, %g1
   14e8c:	c2 24 20 28 	st  %g1, [ %l0 + 0x28 ]
   14e90:	03 00 00 ee 	sethi  %hi(0x3b800), %g1
   14e94:	a4 10 62 54 	or  %g1, 0x254, %l2	! 3ba54 <fixed>
   14e98:	03 00 00 ee 	sethi  %hi(0x3b800), %g1
   14e9c:	82 10 62 54 	or  %g1, 0x254, %g1	! 3ba54 <fixed>
   14ea0:	d0 00 40 00 	ld  [ %g1 ], %o0
   14ea4:	40 00 02 64 	call  15834 <__extendsfdf2>
   14ea8:	01 00 00 00 	nop 
   14eac:	a0 10 00 08 	mov  %o0, %l0
   14eb0:	a2 10 00 09 	mov  %o1, %l1
   14eb4:	03 00 00 c0 	sethi  %hi(0x30000), %g1
   14eb8:	82 10 63 f4 	or  %g1, 0x3f4, %g1	! 303f4 <xtimes>
   14ebc:	d0 00 60 28 	ld  [ %g1 + 0x28 ], %o0
   14ec0:	40 00 04 9d 	call  16134 <__floatsidf>
   14ec4:	01 00 00 00 	nop 
   14ec8:	84 10 00 08 	mov  %o0, %g2
   14ecc:	86 10 00 09 	mov  %o1, %g3
   14ed0:	03 00 00 5b 	sethi  %hi(0x16c00), %g1
   14ed4:	82 10 60 78 	or  %g1, 0x78, %g1	! 16c78 <_IO_stdin_used+0x2a0>
   14ed8:	90 10 00 02 	mov  %g2, %o0
   14edc:	92 10 00 03 	mov  %g3, %o1
   14ee0:	d4 00 40 00 	ld  [ %g1 ], %o2
   14ee4:	d6 00 60 04 	ld  [ %g1 + 4 ], %o3
   14ee8:	40 00 03 4b 	call  15c14 <__muldf3>
   14eec:	01 00 00 00 	nop 
   14ef0:	84 10 00 08 	mov  %o0, %g2
   14ef4:	86 10 00 09 	mov  %o1, %g3
   14ef8:	90 10 00 10 	mov  %l0, %o0
   14efc:	92 10 00 11 	mov  %l1, %o1
   14f00:	94 10 00 02 	mov  %g2, %o2
   14f04:	96 10 00 03 	mov  %g3, %o3
   14f08:	40 00 03 16 	call  15b60 <__adddf3>
   14f0c:	01 00 00 00 	nop 
   14f10:	84 10 00 08 	mov  %o0, %g2
   14f14:	86 10 00 09 	mov  %o1, %g3
   14f18:	90 10 00 02 	mov  %g2, %o0
   14f1c:	92 10 00 03 	mov  %g3, %o1
   14f20:	40 00 04 d6 	call  16278 <__truncdfsf2>
   14f24:	01 00 00 00 	nop 
   14f28:	82 10 00 08 	mov  %o0, %g1
   14f2c:	c2 24 80 00 	st  %g1, [ %l2 ]
   14f30:	03 00 00 a0 	sethi  %hi(0x28000), %g1
   14f34:	a4 10 61 9c 	or  %g1, 0x19c, %l2	! 2819c <floated>
   14f38:	03 00 00 a0 	sethi  %hi(0x28000), %g1
   14f3c:	82 10 61 9c 	or  %g1, 0x19c, %g1	! 2819c <floated>
   14f40:	d0 00 40 00 	ld  [ %g1 ], %o0
   14f44:	40 00 02 3c 	call  15834 <__extendsfdf2>
   14f48:	01 00 00 00 	nop 
   14f4c:	a0 10 00 08 	mov  %o0, %l0
   14f50:	a2 10 00 09 	mov  %o1, %l1
   14f54:	03 00 00 c0 	sethi  %hi(0x30000), %g1
   14f58:	82 10 63 f4 	or  %g1, 0x3f4, %g1	! 303f4 <xtimes>
   14f5c:	d0 00 60 28 	ld  [ %g1 + 0x28 ], %o0
   14f60:	40 00 04 75 	call  16134 <__floatsidf>
   14f64:	01 00 00 00 	nop 
   14f68:	84 10 00 08 	mov  %o0, %g2
   14f6c:	86 10 00 09 	mov  %o1, %g3
   14f70:	03 00 00 5b 	sethi  %hi(0x16c00), %g1
   14f74:	82 10 60 a8 	or  %g1, 0xa8, %g1	! 16ca8 <_IO_stdin_used+0x2d0>
   14f78:	90 10 00 02 	mov  %g2, %o0
   14f7c:	92 10 00 03 	mov  %g3, %o1
   14f80:	d4 00 40 00 	ld  [ %g1 ], %o2
   14f84:	d6 00 60 04 	ld  [ %g1 + 4 ], %o3
   14f88:	40 00 03 23 	call  15c14 <__muldf3>
   14f8c:	01 00 00 00 	nop 
   14f90:	84 10 00 08 	mov  %o0, %g2
   14f94:	86 10 00 09 	mov  %o1, %g3
   14f98:	90 10 00 10 	mov  %l0, %o0
   14f9c:	92 10 00 11 	mov  %l1, %o1
   14fa0:	94 10 00 02 	mov  %g2, %o2
   14fa4:	96 10 00 03 	mov  %g3, %o3
   14fa8:	40 00 02 ee 	call  15b60 <__adddf3>
   14fac:	01 00 00 00 	nop 
   14fb0:	84 10 00 08 	mov  %o0, %g2
   14fb4:	86 10 00 09 	mov  %o1, %g3
   14fb8:	90 10 00 02 	mov  %g2, %o0
   14fbc:	92 10 00 03 	mov  %g3, %o1
   14fc0:	40 00 04 ae 	call  16278 <__truncdfsf2>
   14fc4:	01 00 00 00 	nop 
   14fc8:	82 10 00 08 	mov  %o0, %g1
   14fcc:	c2 24 80 00 	st  %g1, [ %l2 ]
   14fd0:	03 00 00 5a 	sethi  %hi(0x16800), %g1
   14fd4:	90 10 63 00 	or  %g1, 0x300, %o0	! 16b00 <_IO_stdin_used+0x128>
   14fd8:	40 00 4c 5d 	call  2814c <printf@plt>
   14fdc:	01 00 00 00 	nop 
   14fe0:	82 10 20 01 	mov  1, %g1	! 1 <_init-0x10347>
   14fe4:	c2 27 bf f4 	st  %g1, [ %fp + -12 ]
   14fe8:	c2 07 bf f4 	ld  [ %fp + -12 ], %g1
   14fec:	80 a0 60 0a 	cmp  %g1, 0xa
   14ff0:	14 80 00 10 	bg  15030 <main+0x1094>
   14ff4:	01 00 00 00 	nop 
   14ff8:	03 00 00 c0 	sethi  %hi(0x30000), %g1
   14ffc:	86 10 63 f4 	or  %g1, 0x3f4, %g3	! 303f4 <xtimes>
   15000:	c2 07 bf f4 	ld  [ %fp + -12 ], %g1
   15004:	85 28 60 02 	sll  %g1, 2, %g2
   15008:	03 00 00 5b 	sethi  %hi(0x16c00), %g1
   1500c:	90 10 60 00 	mov  %g1, %o0	! 16c00 <_IO_stdin_used+0x228>
   15010:	d2 00 c0 02 	ld  [ %g3 + %g2 ], %o1
   15014:	40 00 4c 4e 	call  2814c <printf@plt>
   15018:	01 00 00 00 	nop 
   1501c:	c2 07 bf f4 	ld  [ %fp + -12 ], %g1
   15020:	82 00 60 01 	inc  %g1
   15024:	c2 27 bf f4 	st  %g1, [ %fp + -12 ]
   15028:	10 bf ff f0 	b  14fe8 <main+0x104c>
   1502c:	01 00 00 00 	nop 
   15030:	03 00 00 5a 	sethi  %hi(0x16800), %g1
   15034:	90 10 63 00 	or  %g1, 0x300, %o0	! 16b00 <_IO_stdin_used+0x128>
   15038:	40 00 4c 45 	call  2814c <printf@plt>
   1503c:	01 00 00 00 	nop 
   15040:	03 00 00 5a 	sethi  %hi(0x16800), %g1
   15044:	90 10 63 00 	or  %g1, 0x300, %o0	! 16b00 <_IO_stdin_used+0x128>
   15048:	40 00 4c 41 	call  2814c <printf@plt>
   1504c:	01 00 00 00 	nop 
   15050:	03 00 00 ee 	sethi  %hi(0x3b800), %g1
   15054:	82 10 62 54 	or  %g1, 0x254, %g1	! 3ba54 <fixed>
   15058:	d0 00 40 00 	ld  [ %g1 ], %o0
   1505c:	40 00 01 f6 	call  15834 <__extendsfdf2>
   15060:	01 00 00 00 	nop 
   15064:	84 10 00 08 	mov  %o0, %g2
   15068:	86 10 00 09 	mov  %o1, %g3
   1506c:	03 00 00 5b 	sethi  %hi(0x16c00), %g1
   15070:	82 10 60 b0 	or  %g1, 0xb0, %g1	! 16cb0 <_IO_stdin_used+0x2d8>
   15074:	90 10 00 02 	mov  %g2, %o0
   15078:	92 10 00 03 	mov  %g3, %o1
   1507c:	d4 00 40 00 	ld  [ %g1 ], %o2
   15080:	d6 00 60 04 	ld  [ %g1 + 4 ], %o3
   15084:	40 00 03 a6 	call  15f1c <__divdf3>
   15088:	01 00 00 00 	nop 
   1508c:	84 10 00 08 	mov  %o0, %g2
   15090:	86 10 00 09 	mov  %o1, %g3
   15094:	03 00 00 5b 	sethi  %hi(0x16c00), %g1
   15098:	90 10 60 08 	or  %g1, 8, %o0	! 16c08 <_IO_stdin_used+0x230>
   1509c:	92 10 00 02 	mov  %g2, %o1
   150a0:	94 10 00 03 	mov  %g3, %o2
   150a4:	40 00 4c 2a 	call  2814c <printf@plt>
   150a8:	01 00 00 00 	nop 
   150ac:	03 00 00 5a 	sethi  %hi(0x16800), %g1
   150b0:	90 10 63 00 	or  %g1, 0x300, %o0	! 16b00 <_IO_stdin_used+0x128>
   150b4:	40 00 4c 26 	call  2814c <printf@plt>
   150b8:	01 00 00 00 	nop 
   150bc:	03 00 00 a0 	sethi  %hi(0x28000), %g1
   150c0:	82 10 61 9c 	or  %g1, 0x19c, %g1	! 2819c <floated>
   150c4:	d0 00 40 00 	ld  [ %g1 ], %o0
   150c8:	40 00 01 db 	call  15834 <__extendsfdf2>
   150cc:	01 00 00 00 	nop 
   150d0:	84 10 00 08 	mov  %o0, %g2
   150d4:	86 10 00 09 	mov  %o1, %g3
   150d8:	03 00 00 5b 	sethi  %hi(0x16c00), %g1
   150dc:	82 10 60 b0 	or  %g1, 0xb0, %g1	! 16cb0 <_IO_stdin_used+0x2d8>
   150e0:	90 10 00 02 	mov  %g2, %o0
   150e4:	92 10 00 03 	mov  %g3, %o1
   150e8:	d4 00 40 00 	ld  [ %g1 ], %o2
   150ec:	d6 00 60 04 	ld  [ %g1 + 4 ], %o3
   150f0:	40 00 03 8b 	call  15f1c <__divdf3>
   150f4:	01 00 00 00 	nop 
   150f8:	84 10 00 08 	mov  %o0, %g2
   150fc:	86 10 00 09 	mov  %o1, %g3
   15100:	03 00 00 5b 	sethi  %hi(0x16c00), %g1
   15104:	90 10 60 30 	or  %g1, 0x30, %o0	! 16c30 <_IO_stdin_used+0x258>
   15108:	92 10 00 02 	mov  %g2, %o1
   1510c:	94 10 00 03 	mov  %g3, %o2
   15110:	40 00 4c 0f 	call  2814c <printf@plt>
   15114:	01 00 00 00 	nop 
   15118:	b0 10 00 01 	mov  %g1, %i0
   1511c:	81 c7 e0 08 	ret 
   15120:	81 e8 00 00 	restore 
   15124:	81 c3 e0 08 	retl 
   15128:	ae 03 c0 17 	add  %o7, %l7, %l7

0001512c <_fpadd_parts>:
   1512c:	9d e3 bf 98 	save  %sp, -104, %sp
   15130:	c4 06 00 00 	ld  [ %i0 ], %g2
   15134:	2f 00 00 4b 	sethi  %hi(0x12c00), %l7
   15138:	7f ff ff fb 	call  15124 <main+0x1188>
   1513c:	ae 05 e3 a4 	add  %l7, 0x3a4, %l7	! 12fa4 <bInitarr+0x114>
   15140:	80 a0 a0 01 	cmp  %g2, 1
   15144:	08 80 00 84 	bleu  15354 <_fpadd_parts+0x228>
   15148:	88 10 00 18 	mov  %i0, %g4
   1514c:	c2 06 40 00 	ld  [ %i1 ], %g1
   15150:	80 a0 60 01 	cmp  %g1, 1
   15154:	08 80 00 80 	bleu  15354 <_fpadd_parts+0x228>
   15158:	b0 10 00 19 	mov  %i1, %i0
   1515c:	80 a0 a0 04 	cmp  %g2, 4
   15160:	12 80 00 0c 	bne  15190 <_fpadd_parts+0x64>
   15164:	80 a0 60 04 	cmp  %g1, 4
   15168:	12 80 00 7b 	bne  15354 <_fpadd_parts+0x228>
   1516c:	b0 10 00 04 	mov  %g4, %i0
   15170:	c4 06 60 04 	ld  [ %i1 + 4 ], %g2
   15174:	c2 01 20 04 	ld  [ %g4 + 4 ], %g1
   15178:	80 a0 40 02 	cmp  %g1, %g2
   1517c:	02 80 00 76 	be  15354 <_fpadd_parts+0x228>
   15180:	03 00 00 00 	sethi  %hi(0), %g1
   15184:	82 10 60 0c 	or  %g1, 0xc, %g1	! c <_init-0x1033c>
   15188:	10 80 00 73 	b  15354 <_fpadd_parts+0x228>
   1518c:	f0 05 c0 01 	ld  [ %l7 + %g1 ], %i0
   15190:	02 80 00 71 	be  15354 <_fpadd_parts+0x228>
   15194:	b0 10 00 19 	mov  %i1, %i0
   15198:	80 a0 60 02 	cmp  %g1, 2
   1519c:	02 80 00 48 	be  152bc <_fpadd_parts+0x190>
   151a0:	80 a0 a0 02 	cmp  %g2, 2
   151a4:	02 80 00 6c 	be  15354 <_fpadd_parts+0x228>
   151a8:	01 00 00 00 	nop 
   151ac:	de 01 20 08 	ld  [ %g4 + 8 ], %o7
   151b0:	c6 06 60 08 	ld  [ %i1 + 8 ], %g3
   151b4:	82 23 c0 03 	sub  %o7, %g3, %g1
   151b8:	85 38 60 1f 	sra  %g1, 0x1f, %g2
   151bc:	82 18 40 02 	xor  %g1, %g2, %g1
   151c0:	82 20 40 02 	sub  %g1, %g2, %g1
   151c4:	80 a0 60 1f 	cmp  %g1, 0x1f
   151c8:	da 01 20 0c 	ld  [ %g4 + 0xc ], %o5
   151cc:	14 80 00 4b 	bg  152f8 <_fpadd_parts+0x1cc>
   151d0:	d8 06 60 0c 	ld  [ %i1 + 0xc ], %o4
   151d4:	80 a3 c0 03 	cmp  %o7, %g3
   151d8:	04 80 00 0a 	ble  15200 <_fpadd_parts+0xd4>
   151dc:	80 a0 c0 0f 	cmp  %g3, %o7
   151e0:	86 23 c0 03 	sub  %o7, %g3, %g3
   151e4:	85 33 20 01 	srl  %o4, 1, %g2
   151e8:	82 0b 20 01 	and  %o4, 1, %g1
   151ec:	86 80 ff ff 	addcc  %g3, -1, %g3
   151f0:	12 bf ff fd 	bne  151e4 <_fpadd_parts+0xb8>
   151f4:	98 10 40 02 	or  %g1, %g2, %o4
   151f8:	86 10 00 0f 	mov  %o7, %g3
   151fc:	80 a0 c0 0f 	cmp  %g3, %o7
   15200:	24 80 00 0a 	ble,a   15228 <_fpadd_parts+0xfc>
   15204:	f0 01 20 04 	ld  [ %g4 + 4 ], %i0
   15208:	9e 20 c0 0f 	sub  %g3, %o7, %o7
   1520c:	85 33 60 01 	srl  %o5, 1, %g2
   15210:	82 0b 60 01 	and  %o5, 1, %g1
   15214:	9e 83 ff ff 	addcc  %o7, -1, %o7
   15218:	12 bf ff fd 	bne  1520c <_fpadd_parts+0xe0>
   1521c:	9a 10 40 02 	or  %g1, %g2, %o5
   15220:	9e 10 00 03 	mov  %g3, %o7
   15224:	f0 01 20 04 	ld  [ %g4 + 4 ], %i0
   15228:	c2 06 60 04 	ld  [ %i1 + 4 ], %g1
   1522c:	80 a6 00 01 	cmp  %i0, %g1
   15230:	02 80 00 37 	be  1530c <_fpadd_parts+0x1e0>
   15234:	80 a6 20 00 	cmp  %i0, 0
   15238:	12 80 00 03 	bne  15244 <_fpadd_parts+0x118>
   1523c:	82 23 00 0d 	sub  %o4, %o5, %g1
   15240:	82 23 40 0c 	sub  %o5, %o4, %g1
   15244:	80 a0 60 00 	cmp  %g1, 0
   15248:	06 80 00 40 	bl  15348 <_fpadd_parts+0x21c>
   1524c:	88 20 00 01 	neg  %g1, %g4
   15250:	88 10 00 01 	mov  %g1, %g4
   15254:	c0 26 a0 04 	clr  [ %i2 + 4 ]
   15258:	03 0f ff ff 	sethi  %hi(0x3ffffc00), %g1
   1525c:	84 01 3f ff 	add  %g4, -1, %g2
   15260:	82 10 63 fe 	or  %g1, 0x3fe, %g1
   15264:	80 a0 80 01 	cmp  %g2, %g1
   15268:	86 10 00 0f 	mov  %o7, %g3
   1526c:	b2 10 00 04 	mov  %g4, %i1
   15270:	18 80 00 0b 	bgu  1529c <_fpadd_parts+0x170>
   15274:	84 10 00 04 	mov  %g4, %g2
   15278:	b0 10 00 01 	mov  %g1, %i0
   1527c:	88 00 80 02 	add  %g2, %g2, %g4
   15280:	9e 00 ff ff 	add  %g3, -1, %o7
   15284:	82 01 3f ff 	add  %g4, -1, %g1
   15288:	80 a0 40 18 	cmp  %g1, %i0
   1528c:	b2 10 00 04 	mov  %g4, %i1
   15290:	86 10 00 0f 	mov  %o7, %g3
   15294:	08 bf ff fa 	bleu  1527c <_fpadd_parts+0x150>
   15298:	84 10 00 04 	mov  %g4, %g2
   1529c:	82 10 20 03 	mov  3, %g1
   152a0:	80 a6 60 00 	cmp  %i1, 0
   152a4:	06 80 00 21 	bl  15328 <_fpadd_parts+0x1fc>
   152a8:	c2 26 80 00 	st  %g1, [ %i2 ]
   152ac:	c8 26 a0 0c 	st  %g4, [ %i2 + 0xc ]
   152b0:	de 26 a0 08 	st  %o7, [ %i2 + 8 ]
   152b4:	10 80 00 28 	b  15354 <_fpadd_parts+0x228>
   152b8:	b0 10 00 1a 	mov  %i2, %i0
   152bc:	12 80 00 26 	bne  15354 <_fpadd_parts+0x228>
   152c0:	b0 10 00 04 	mov  %g4, %i0
   152c4:	c4 26 80 00 	st  %g2, [ %i2 ]
   152c8:	c2 01 20 04 	ld  [ %g4 + 4 ], %g1
   152cc:	c2 26 a0 04 	st  %g1, [ %i2 + 4 ]
   152d0:	c4 01 20 08 	ld  [ %g4 + 8 ], %g2
   152d4:	c4 26 a0 08 	st  %g2, [ %i2 + 8 ]
   152d8:	c6 01 20 0c 	ld  [ %g4 + 0xc ], %g3
   152dc:	c6 26 a0 0c 	st  %g3, [ %i2 + 0xc ]
   152e0:	c2 01 20 04 	ld  [ %g4 + 4 ], %g1
   152e4:	c4 06 60 04 	ld  [ %i1 + 4 ], %g2
   152e8:	82 08 40 02 	and  %g1, %g2, %g1
   152ec:	c2 26 a0 04 	st  %g1, [ %i2 + 4 ]
   152f0:	10 80 00 19 	b  15354 <_fpadd_parts+0x228>
   152f4:	b0 10 00 1a 	mov  %i2, %i0
   152f8:	80 a3 c0 03 	cmp  %o7, %g3
   152fc:	24 80 00 09 	ble,a   15320 <_fpadd_parts+0x1f4>
   15300:	9e 10 00 03 	mov  %g3, %o7
   15304:	10 bf ff c8 	b  15224 <_fpadd_parts+0xf8>
   15308:	98 10 20 00 	clr  %o4
   1530c:	88 03 40 0c 	add  %o5, %o4, %g4
   15310:	f0 26 a0 04 	st  %i0, [ %i2 + 4 ]
   15314:	86 10 00 0f 	mov  %o7, %g3
   15318:	10 bf ff e1 	b  1529c <_fpadd_parts+0x170>
   1531c:	b2 10 00 04 	mov  %g4, %i1
   15320:	10 bf ff c1 	b  15224 <_fpadd_parts+0xf8>
   15324:	9a 10 20 00 	clr  %o5
   15328:	83 36 60 01 	srl  %i1, 1, %g1
   1532c:	84 0e 60 01 	and  %i1, 1, %g2
   15330:	84 10 80 01 	or  %g2, %g1, %g2
   15334:	86 00 e0 01 	inc  %g3
   15338:	c4 26 a0 0c 	st  %g2, [ %i2 + 0xc ]
   1533c:	c6 26 a0 08 	st  %g3, [ %i2 + 8 ]
   15340:	10 80 00 05 	b  15354 <_fpadd_parts+0x228>
   15344:	b0 10 00 1a 	mov  %i2, %i0
   15348:	82 10 20 01 	mov  1, %g1
   1534c:	10 bf ff c3 	b  15258 <_fpadd_parts+0x12c>
   15350:	c2 26 a0 04 	st  %g1, [ %i2 + 4 ]
   15354:	81 c7 e0 08 	ret 
   15358:	81 e8 00 00 	restore 

0001535c <__addsf3>:
   1535c:	9d e3 bf 60 	save  %sp, -160, %sp
   15360:	a2 07 bf e8 	add  %fp, -24, %l1
   15364:	f0 27 bf c4 	st  %i0, [ %fp + -60 ]
   15368:	90 07 bf c4 	add  %fp, -60, %o0
   1536c:	92 10 00 11 	mov  %l1, %o1
   15370:	40 00 04 2c 	call  16420 <__unpack_f>
   15374:	f2 27 bf c0 	st  %i1, [ %fp + -64 ]
   15378:	a0 07 bf d8 	add  %fp, -40, %l0
   1537c:	90 07 bf c0 	add  %fp, -64, %o0
   15380:	40 00 04 28 	call  16420 <__unpack_f>
   15384:	92 10 00 10 	mov  %l0, %o1
   15388:	92 10 00 10 	mov  %l0, %o1
   1538c:	94 07 bf c8 	add  %fp, -56, %o2
   15390:	7f ff ff 67 	call  1512c <_fpadd_parts>
   15394:	90 10 00 11 	mov  %l1, %o0
   15398:	40 00 03 d0 	call  162d8 <__pack_f>
   1539c:	01 00 00 00 	nop 
   153a0:	81 c7 e0 08 	ret 
   153a4:	91 e8 00 08 	restore  %g0, %o0, %o0

000153a8 <__subsf3>:
   153a8:	9d e3 bf 60 	save  %sp, -160, %sp
   153ac:	a2 07 bf e8 	add  %fp, -24, %l1
   153b0:	f0 27 bf c4 	st  %i0, [ %fp + -60 ]
   153b4:	90 07 bf c4 	add  %fp, -60, %o0
   153b8:	92 10 00 11 	mov  %l1, %o1
   153bc:	40 00 04 19 	call  16420 <__unpack_f>
   153c0:	f2 27 bf c0 	st  %i1, [ %fp + -64 ]
   153c4:	a0 07 bf d8 	add  %fp, -40, %l0
   153c8:	90 07 bf c0 	add  %fp, -64, %o0
   153cc:	40 00 04 15 	call  16420 <__unpack_f>
   153d0:	92 10 00 10 	mov  %l0, %o1
   153d4:	c2 07 bf dc 	ld  [ %fp + -36 ], %g1
   153d8:	82 18 60 01 	xor  %g1, 1, %g1
   153dc:	c2 27 bf dc 	st  %g1, [ %fp + -36 ]
   153e0:	92 10 00 10 	mov  %l0, %o1
   153e4:	94 07 bf c8 	add  %fp, -56, %o2
   153e8:	7f ff ff 51 	call  1512c <_fpadd_parts>
   153ec:	90 10 00 11 	mov  %l1, %o0
   153f0:	40 00 03 ba 	call  162d8 <__pack_f>
   153f4:	01 00 00 00 	nop 
   153f8:	81 c7 e0 08 	ret 
   153fc:	91 e8 00 08 	restore  %g0, %o0, %o0
   15400:	81 c3 e0 08 	retl 
   15404:	ae 03 c0 17 	add  %o7, %l7, %l7

00015408 <__mulsf3>:
   15408:	9d e3 bf 60 	save  %sp, -160, %sp
   1540c:	a0 07 bf e8 	add  %fp, -24, %l0
   15410:	2f 00 00 4b 	sethi  %hi(0x12c00), %l7
   15414:	7f ff ff fb 	call  15400 <__subsf3+0x58>
   15418:	ae 05 e0 c8 	add  %l7, 0xc8, %l7	! 12cc8 <Checktree+0x60>
   1541c:	f2 27 bf c0 	st  %i1, [ %fp + -64 ]
   15420:	90 07 bf c4 	add  %fp, -60, %o0
   15424:	92 10 00 10 	mov  %l0, %o1
   15428:	40 00 03 fe 	call  16420 <__unpack_f>
   1542c:	f0 27 bf c4 	st  %i0, [ %fp + -60 ]
   15430:	b2 07 bf d8 	add  %fp, -40, %i1
   15434:	90 07 bf c0 	add  %fp, -64, %o0
   15438:	40 00 03 fa 	call  16420 <__unpack_f>
   1543c:	92 10 00 19 	mov  %i1, %o1
   15440:	c2 07 bf e8 	ld  [ %fp + -24 ], %g1
   15444:	80 a0 60 01 	cmp  %g1, 1
   15448:	08 80 00 12 	bleu  15490 <__mulsf3+0x88>
   1544c:	90 07 bf c8 	add  %fp, -56, %o0
   15450:	c4 07 bf d8 	ld  [ %fp + -40 ], %g2
   15454:	80 a0 a0 01 	cmp  %g2, 1
   15458:	28 80 00 1b 	bleu,a   154c4 <__mulsf3+0xbc>
   1545c:	c4 07 bf dc 	ld  [ %fp + -36 ], %g2
   15460:	80 a0 60 04 	cmp  %g1, 4
   15464:	12 80 00 13 	bne  154b0 <__mulsf3+0xa8>
   15468:	80 a0 a0 04 	cmp  %g2, 4
   1546c:	80 a0 a0 02 	cmp  %g2, 2
   15470:	12 80 00 09 	bne  15494 <__mulsf3+0x8c>
   15474:	c2 07 bf ec 	ld  [ %fp + -20 ], %g1
   15478:	03 00 00 00 	sethi  %hi(0), %g1
   1547c:	82 10 60 0c 	or  %g1, 0xc, %g1	! c <_init-0x1033c>
   15480:	10 80 00 58 	b  155e0 <__mulsf3+0x1d8>
   15484:	d0 05 c0 01 	ld  [ %l7 + %g1 ], %o0
   15488:	12 80 00 16 	bne  154e0 <__mulsf3+0xd8>
   1548c:	80 a0 a0 02 	cmp  %g2, 2
   15490:	c2 07 bf ec 	ld  [ %fp + -20 ], %g1
   15494:	c4 07 bf dc 	ld  [ %fp + -36 ], %g2
   15498:	82 18 40 02 	xor  %g1, %g2, %g1
   1549c:	80 a0 00 01 	cmp  %g0, %g1
   154a0:	84 40 20 00 	addx  %g0, 0, %g2
   154a4:	c4 27 bf ec 	st  %g2, [ %fp + -20 ]
   154a8:	10 80 00 4e 	b  155e0 <__mulsf3+0x1d8>
   154ac:	90 10 00 10 	mov  %l0, %o0
   154b0:	12 bf ff f6 	bne  15488 <__mulsf3+0x80>
   154b4:	80 a0 60 02 	cmp  %g1, 2
   154b8:	02 bf ff f1 	be  1547c <__mulsf3+0x74>
   154bc:	03 00 00 00 	sethi  %hi(0), %g1
   154c0:	c4 07 bf dc 	ld  [ %fp + -36 ], %g2
   154c4:	c2 07 bf ec 	ld  [ %fp + -20 ], %g1
   154c8:	82 18 40 02 	xor  %g1, %g2, %g1
   154cc:	80 a0 00 01 	cmp  %g0, %g1
   154d0:	84 40 20 00 	addx  %g0, 0, %g2
   154d4:	c4 27 bf dc 	st  %g2, [ %fp + -36 ]
   154d8:	10 80 00 42 	b  155e0 <__mulsf3+0x1d8>
   154dc:	90 10 00 19 	mov  %i1, %o0
   154e0:	02 bf ff f9 	be  154c4 <__mulsf3+0xbc>
   154e4:	c4 07 bf dc 	ld  [ %fp + -36 ], %g2
   154e8:	c2 07 bf e4 	ld  [ %fp + -28 ], %g1
   154ec:	d8 07 bf f4 	ld  [ %fp + -12 ], %o4
   154f0:	9a 53 00 01 	umul  %o4, %g1, %o5
   154f4:	99 40 00 00 	rd  %y, %o4
   154f8:	c8 07 bf dc 	ld  [ %fp + -36 ], %g4
   154fc:	c2 07 bf ec 	ld  [ %fp + -20 ], %g1
   15500:	82 18 40 04 	xor  %g1, %g4, %g1
   15504:	80 a0 00 01 	cmp  %g0, %g1
   15508:	c8 07 bf f0 	ld  [ %fp + -16 ], %g4
   1550c:	c2 07 bf e0 	ld  [ %fp + -32 ], %g1
   15510:	88 01 00 01 	add  %g4, %g1, %g4
   15514:	86 10 00 0c 	mov  %o4, %g3
   15518:	96 40 20 00 	addx  %g0, 0, %o3
   1551c:	88 01 20 02 	add  %g4, 2, %g4
   15520:	84 10 00 03 	mov  %g3, %g2
   15524:	d6 27 bf cc 	st  %o3, [ %fp + -52 ]
   15528:	98 10 00 0d 	mov  %o5, %o4
   1552c:	80 a0 e0 00 	cmp  %g3, 0
   15530:	06 80 00 1c 	bl  155a0 <__mulsf3+0x198>
   15534:	c8 27 bf d0 	st  %g4, [ %fp + -48 ]
   15538:	03 0f ff ff 	sethi  %hi(0x3ffffc00), %g1
   1553c:	82 10 63 ff 	or  %g1, 0x3ff, %g1	! 3fffffff <_end+0x3ffc0cff>
   15540:	80 a0 80 01 	cmp  %g2, %g1
   15544:	38 80 00 10 	bgu,a   15584 <__mulsf3+0x17c>
   15548:	82 08 a0 7f 	and  %g2, 0x7f, %g1
   1554c:	10 80 00 05 	b  15560 <__mulsf3+0x158>
   15550:	c8 02 20 08 	ld  [ %o0 + 8 ], %g4
   15554:	80 a0 80 01 	cmp  %g2, %g1
   15558:	38 80 00 0a 	bgu,a   15580 <__mulsf3+0x178>
   1555c:	c6 22 20 08 	st  %g3, [ %o0 + 8 ]
   15560:	86 01 3f ff 	add  %g4, -1, %g3
   15564:	80 a3 20 00 	cmp  %o4, 0
   15568:	84 00 80 02 	add  %g2, %g2, %g2
   1556c:	98 03 00 0c 	add  %o4, %o4, %o4
   15570:	16 bf ff f9 	bge  15554 <__mulsf3+0x14c>
   15574:	88 10 00 03 	mov  %g3, %g4
   15578:	10 bf ff f7 	b  15554 <__mulsf3+0x14c>
   1557c:	84 10 a0 01 	or  %g2, 1, %g2
   15580:	82 08 a0 7f 	and  %g2, 0x7f, %g1
   15584:	80 a0 60 40 	cmp  %g1, 0x40
   15588:	02 80 00 0f 	be  155c4 <__mulsf3+0x1bc>
   1558c:	80 88 a0 80 	btst  0x80, %g2
   15590:	82 10 20 03 	mov  3, %g1
   15594:	c4 22 20 0c 	st  %g2, [ %o0 + 0xc ]
   15598:	10 80 00 12 	b  155e0 <__mulsf3+0x1d8>
   1559c:	c2 22 00 00 	st  %g1, [ %o0 ]
   155a0:	80 88 e0 01 	btst  1, %g3
   155a4:	02 80 00 05 	be  155b8 <__mulsf3+0x1b0>
   155a8:	88 01 20 01 	inc  %g4
   155ac:	99 33 60 01 	srl  %o5, 1, %o4
   155b0:	03 20 00 00 	sethi  %hi(0x80000000), %g1
   155b4:	98 13 00 01 	or  %o4, %g1, %o4
   155b8:	85 30 a0 01 	srl  %g2, 1, %g2
   155bc:	10 bf ff df 	b  15538 <__mulsf3+0x130>
   155c0:	c8 22 20 08 	st  %g4, [ %o0 + 8 ]
   155c4:	32 bf ff f3 	bne,a   15590 <__mulsf3+0x188>
   155c8:	84 00 a0 40 	add  %g2, 0x40, %g2
   155cc:	80 a3 20 00 	cmp  %o4, 0
   155d0:	02 bf ff f1 	be  15594 <__mulsf3+0x18c>
   155d4:	82 10 20 03 	mov  3, %g1
   155d8:	10 bf ff ef 	b  15594 <__mulsf3+0x18c>
   155dc:	84 00 a0 40 	add  %g2, 0x40, %g2
   155e0:	40 00 03 3e 	call  162d8 <__pack_f>
   155e4:	01 00 00 00 	nop 
   155e8:	81 c7 e0 08 	ret 
   155ec:	91 e8 00 08 	restore  %g0, %o0, %o0
   155f0:	81 c3 e0 08 	retl 
   155f4:	ae 03 c0 17 	add  %o7, %l7, %l7

000155f8 <__divsf3>:
   155f8:	9d e3 bf 70 	save  %sp, -144, %sp
   155fc:	a0 07 bf e8 	add  %fp, -24, %l0
   15600:	2f 00 00 4a 	sethi  %hi(0x12800), %l7
   15604:	7f ff ff fb 	call  155f0 <__mulsf3+0x1e8>
   15608:	ae 05 e2 d8 	add  %l7, 0x2d8, %l7	! 12ad8 <tInitarr+0x108>
   1560c:	f2 27 bf d0 	st  %i1, [ %fp + -48 ]
   15610:	90 07 bf d4 	add  %fp, -44, %o0
   15614:	92 10 00 10 	mov  %l0, %o1
   15618:	40 00 03 82 	call  16420 <__unpack_f>
   1561c:	f0 27 bf d4 	st  %i0, [ %fp + -44 ]
   15620:	b2 07 bf d8 	add  %fp, -40, %i1
   15624:	90 07 bf d0 	add  %fp, -48, %o0
   15628:	40 00 03 7e 	call  16420 <__unpack_f>
   1562c:	92 10 00 19 	mov  %i1, %o1
   15630:	c6 07 bf e8 	ld  [ %fp + -24 ], %g3
   15634:	80 a0 e0 01 	cmp  %g3, 1
   15638:	08 80 00 48 	bleu  15758 <__divsf3+0x160>
   1563c:	90 10 00 10 	mov  %l0, %o0
   15640:	c8 07 bf d8 	ld  [ %fp + -40 ], %g4
   15644:	80 a1 20 01 	cmp  %g4, 1
   15648:	08 80 00 44 	bleu  15758 <__divsf3+0x160>
   1564c:	90 10 00 19 	mov  %i1, %o0
   15650:	c2 07 bf ec 	ld  [ %fp + -20 ], %g1
   15654:	c4 07 bf dc 	ld  [ %fp + -36 ], %g2
   15658:	82 18 40 02 	xor  %g1, %g2, %g1
   1565c:	80 a0 e0 04 	cmp  %g3, 4
   15660:	02 80 00 0f 	be  1569c <__divsf3+0xa4>
   15664:	c2 27 bf ec 	st  %g1, [ %fp + -20 ]
   15668:	80 a0 e0 02 	cmp  %g3, 2
   1566c:	02 80 00 0d 	be  156a0 <__divsf3+0xa8>
   15670:	80 a0 c0 04 	cmp  %g3, %g4
   15674:	80 a1 20 04 	cmp  %g4, 4
   15678:	22 80 00 10 	be,a   156b8 <__divsf3+0xc0>
   1567c:	c0 27 bf f4 	clr  [ %fp + -12 ]
   15680:	80 a1 20 02 	cmp  %g4, 2
   15684:	12 80 00 10 	bne  156c4 <__divsf3+0xcc>
   15688:	c6 07 bf f4 	ld  [ %fp + -12 ], %g3
   1568c:	82 10 20 04 	mov  4, %g1
   15690:	c2 27 bf e8 	st  %g1, [ %fp + -24 ]
   15694:	10 80 00 31 	b  15758 <__divsf3+0x160>
   15698:	90 10 00 10 	mov  %l0, %o0
   1569c:	80 a0 c0 04 	cmp  %g3, %g4
   156a0:	12 80 00 2e 	bne  15758 <__divsf3+0x160>
   156a4:	90 10 00 10 	mov  %l0, %o0
   156a8:	03 00 00 00 	sethi  %hi(0), %g1
   156ac:	82 10 60 0c 	or  %g1, 0xc, %g1	! c <_init-0x1033c>
   156b0:	10 80 00 2a 	b  15758 <__divsf3+0x160>
   156b4:	d0 05 c0 01 	ld  [ %l7 + %g1 ], %o0
   156b8:	c0 27 bf f0 	clr  [ %fp + -16 ]
   156bc:	10 80 00 27 	b  15758 <__divsf3+0x160>
   156c0:	90 10 00 10 	mov  %l0, %o0
   156c4:	c8 07 bf e4 	ld  [ %fp + -28 ], %g4
   156c8:	c4 07 bf f0 	ld  [ %fp + -16 ], %g2
   156cc:	c2 07 bf e0 	ld  [ %fp + -32 ], %g1
   156d0:	80 a0 c0 04 	cmp  %g3, %g4
   156d4:	1a 80 00 1f 	bcc  15750 <__divsf3+0x158>
   156d8:	82 20 80 01 	sub  %g2, %g1, %g1
   156dc:	82 00 7f ff 	add  %g1, -1, %g1
   156e0:	c2 27 bf f0 	st  %g1, [ %fp + -16 ]
   156e4:	86 00 c0 03 	add  %g3, %g3, %g3
   156e8:	03 10 00 00 	sethi  %hi(0x40000000), %g1
   156ec:	84 10 20 00 	clr  %g2
   156f0:	80 a0 c0 04 	cmp  %g3, %g4
   156f4:	2a 80 00 05 	bcs,a   15708 <__divsf3+0x110>
   156f8:	83 30 60 01 	srl  %g1, 1, %g1
   156fc:	84 10 80 01 	or  %g2, %g1, %g2
   15700:	86 20 c0 04 	sub  %g3, %g4, %g3
   15704:	83 30 60 01 	srl  %g1, 1, %g1
   15708:	80 a0 60 00 	cmp  %g1, 0
   1570c:	12 bf ff f9 	bne  156f0 <__divsf3+0xf8>
   15710:	86 00 c0 03 	add  %g3, %g3, %g3
   15714:	82 08 a0 7f 	and  %g2, 0x7f, %g1
   15718:	80 a0 60 40 	cmp  %g1, 0x40
   1571c:	02 80 00 05 	be  15730 <__divsf3+0x138>
   15720:	80 88 a0 80 	btst  0x80, %g2
   15724:	c4 24 20 0c 	st  %g2, [ %l0 + 0xc ]
   15728:	10 80 00 0c 	b  15758 <__divsf3+0x160>
   1572c:	90 10 00 10 	mov  %l0, %o0
   15730:	32 80 00 06 	bne,a   15748 <__divsf3+0x150>
   15734:	84 00 a0 40 	add  %g2, 0x40, %g2
   15738:	80 a0 e0 00 	cmp  %g3, 0
   1573c:	22 bf ff fb 	be,a   15728 <__divsf3+0x130>
   15740:	c4 24 20 0c 	st  %g2, [ %l0 + 0xc ]
   15744:	84 00 a0 40 	add  %g2, 0x40, %g2
   15748:	10 bf ff f8 	b  15728 <__divsf3+0x130>
   1574c:	c4 24 20 0c 	st  %g2, [ %l0 + 0xc ]
   15750:	10 bf ff e6 	b  156e8 <__divsf3+0xf0>
   15754:	c2 27 bf f0 	st  %g1, [ %fp + -16 ]
   15758:	40 00 02 e0 	call  162d8 <__pack_f>
   1575c:	01 00 00 00 	nop 
   15760:	81 c7 e0 08 	ret 
   15764:	91 e8 00 08 	restore  %g0, %o0, %o0
   15768:	81 c3 e0 08 	retl 
   1576c:	ae 03 c0 17 	add  %o7, %l7, %l7

00015770 <__floatsisf>:
   15770:	9d e3 bf 88 	save  %sp, -120, %sp
   15774:	85 36 20 1f 	srl  %i0, 0x1f, %g2
   15778:	2f 00 00 4a 	sethi  %hi(0x12800), %l7
   1577c:	7f ff ff fb 	call  15768 <__divsf3+0x170>
   15780:	ae 05 e1 60 	add  %l7, 0x160, %l7	! 12960 <Quick+0x2c>
   15784:	80 a6 20 00 	cmp  %i0, 0
   15788:	12 80 00 07 	bne  157a4 <__floatsisf+0x34>
   1578c:	c4 27 bf ec 	st  %g2, [ %fp + -20 ]
   15790:	82 10 20 02 	mov  2, %g1
   15794:	c2 27 bf e8 	st  %g1, [ %fp + -24 ]
   15798:	40 00 02 d0 	call  162d8 <__pack_f>
   1579c:	90 07 bf e8 	add  %fp, -24, %o0
   157a0:	30 80 00 23 	b,a   1582c <__floatsisf+0xbc>
   157a4:	82 10 20 03 	mov  3, %g1
   157a8:	c2 27 bf e8 	st  %g1, [ %fp + -24 ]
   157ac:	86 10 00 18 	mov  %i0, %g3
   157b0:	80 a0 a0 00 	cmp  %g2, 0
   157b4:	88 10 20 1e 	mov  0x1e, %g4
   157b8:	98 10 20 1e 	mov  0x1e, %o4
   157bc:	12 80 00 12 	bne  15804 <__floatsisf+0x94>
   157c0:	82 10 00 18 	mov  %i0, %g1
   157c4:	84 10 00 01 	mov  %g1, %g2
   157c8:	03 0f ff ff 	sethi  %hi(0x3ffffc00), %g1
   157cc:	82 10 63 ff 	or  %g1, 0x3ff, %g1	! 3fffffff <_end+0x3ffc0cff>
   157d0:	80 a0 80 01 	cmp  %g2, %g1
   157d4:	18 80 00 09 	bgu  157f8 <__floatsisf+0x88>
   157d8:	9a 10 00 01 	mov  %g1, %o5
   157dc:	82 01 3f ff 	add  %g4, -1, %g1
   157e0:	86 00 80 02 	add  %g2, %g2, %g3
   157e4:	88 10 00 01 	mov  %g1, %g4
   157e8:	80 a0 c0 0d 	cmp  %g3, %o5
   157ec:	98 10 00 01 	mov  %g1, %o4
   157f0:	08 bf ff fb 	bleu  157dc <__floatsisf+0x6c>
   157f4:	84 10 00 03 	mov  %g3, %g2
   157f8:	c6 27 bf f4 	st  %g3, [ %fp + -12 ]
   157fc:	10 bf ff e7 	b  15798 <__floatsisf+0x28>
   15800:	d8 27 bf f0 	st  %o4, [ %fp + -16 ]
   15804:	03 20 00 00 	sethi  %hi(0x80000000), %g1
   15808:	86 20 00 18 	neg  %i0, %g3
   1580c:	80 a6 00 01 	cmp  %i0, %g1
   15810:	12 bf ff ed 	bne  157c4 <__floatsisf+0x54>
   15814:	82 10 00 03 	mov  %g3, %g1
   15818:	03 00 00 00 	sethi  %hi(0), %g1
   1581c:	82 10 60 04 	or  %g1, 4, %g1	! 4 <_init-0x10344>
   15820:	c4 05 c0 01 	ld  [ %l7 + %g1 ], %g2
   15824:	d8 27 bf f0 	st  %o4, [ %fp + -16 ]
   15828:	d0 00 80 00 	ld  [ %g2 ], %o0
   1582c:	81 c7 e0 08 	ret 
   15830:	91 e8 00 08 	restore  %g0, %o0, %o0

00015834 <__extendsfdf2>:
   15834:	9d e3 bf 80 	save  %sp, -128, %sp
   15838:	f0 27 bf e4 	st  %i0, [ %fp + -28 ]
   1583c:	90 07 bf e4 	add  %fp, -28, %o0
   15840:	40 00 02 f8 	call  16420 <__unpack_f>
   15844:	92 07 bf e8 	add  %fp, -24, %o1
   15848:	c4 07 bf f4 	ld  [ %fp + -12 ], %g2
   1584c:	86 10 00 02 	mov  %g2, %g3
   15850:	84 10 20 00 	clr  %g2
   15854:	89 30 e0 02 	srl  %g3, 2, %g4
   15858:	83 28 a0 1e 	sll  %g2, 0x1e, %g1
   1585c:	84 11 00 01 	or  %g4, %g1, %g2
   15860:	87 28 e0 1e 	sll  %g3, 0x1e, %g3
   15864:	96 10 00 02 	mov  %g2, %o3
   15868:	98 10 00 03 	mov  %g3, %o4
   1586c:	d0 1f bf e8 	ldd  [ %fp + -24 ], %o0
   15870:	40 00 02 77 	call  1624c <__make_dp>
   15874:	d4 07 bf f0 	ld  [ %fp + -16 ], %o2
   15878:	b0 10 00 08 	mov  %o0, %i0
   1587c:	81 c7 e0 08 	ret 
   15880:	93 e8 00 09 	restore  %g0, %o1, %o1
   15884:	81 c3 e0 08 	retl 
   15888:	ae 03 c0 17 	add  %o7, %l7, %l7

0001588c <_fpadd_parts>:
   1588c:	9d e3 bf 98 	save  %sp, -104, %sp
   15890:	2f 00 00 4a 	sethi  %hi(0x12800), %l7
   15894:	7f ff ff fc 	call  15884 <__extendsfdf2+0x50>
   15898:	ae 05 e0 48 	add  %l7, 0x48, %l7	! 12848 <Quicksort+0xd0>
   1589c:	c2 06 00 00 	ld  [ %i0 ], %g1
   158a0:	80 a0 60 01 	cmp  %g1, 1
   158a4:	08 80 00 ad 	bleu  15b58 <_fpadd_parts+0x2cc>
   158a8:	9e 10 00 18 	mov  %i0, %o7
   158ac:	c4 06 40 00 	ld  [ %i1 ], %g2
   158b0:	80 a0 a0 01 	cmp  %g2, 1
   158b4:	08 80 00 a9 	bleu  15b58 <_fpadd_parts+0x2cc>
   158b8:	b0 10 00 19 	mov  %i1, %i0
   158bc:	80 a0 60 04 	cmp  %g1, 4
   158c0:	12 80 00 0c 	bne  158f0 <_fpadd_parts+0x64>
   158c4:	80 a0 a0 04 	cmp  %g2, 4
   158c8:	12 80 00 a4 	bne  15b58 <_fpadd_parts+0x2cc>
   158cc:	b0 10 00 0f 	mov  %o7, %i0
   158d0:	c4 06 60 04 	ld  [ %i1 + 4 ], %g2
   158d4:	c2 03 e0 04 	ld  [ %o7 + 4 ], %g1
   158d8:	80 a0 40 02 	cmp  %g1, %g2
   158dc:	02 80 00 9f 	be  15b58 <_fpadd_parts+0x2cc>
   158e0:	03 00 00 00 	sethi  %hi(0), %g1
   158e4:	82 10 60 14 	or  %g1, 0x14, %g1	! 14 <_init-0x10334>
   158e8:	10 80 00 9c 	b  15b58 <_fpadd_parts+0x2cc>
   158ec:	f0 05 c0 01 	ld  [ %l7 + %g1 ], %i0
   158f0:	02 80 00 9a 	be  15b58 <_fpadd_parts+0x2cc>
   158f4:	b0 10 00 19 	mov  %i1, %i0
   158f8:	80 a0 a0 02 	cmp  %g2, 2
   158fc:	02 80 00 58 	be  15a5c <_fpadd_parts+0x1d0>
   15900:	80 a0 60 02 	cmp  %g1, 2
   15904:	02 80 00 95 	be  15b58 <_fpadd_parts+0x2cc>
   15908:	01 00 00 00 	nop 
   1590c:	d2 03 e0 08 	ld  [ %o7 + 8 ], %o1
   15910:	f0 06 60 08 	ld  [ %i1 + 8 ], %i0
   15914:	82 22 40 18 	sub  %o1, %i0, %g1
   15918:	85 38 60 1f 	sra  %g1, 0x1f, %g2
   1591c:	82 18 40 02 	xor  %g1, %g2, %g1
   15920:	82 20 40 02 	sub  %g1, %g2, %g1
   15924:	80 a0 60 3f 	cmp  %g1, 0x3f
   15928:	d8 1b e0 10 	ldd  [ %o7 + 0x10 ], %o4
   1592c:	14 80 00 67 	bg  15ac8 <_fpadd_parts+0x23c>
   15930:	d4 1e 60 10 	ldd  [ %i1 + 0x10 ], %o2
   15934:	80 a2 40 18 	cmp  %o1, %i0
   15938:	04 80 00 0f 	ble  15974 <_fpadd_parts+0xe8>
   1593c:	80 a6 00 09 	cmp  %i0, %o1
   15940:	b0 22 40 18 	sub  %o1, %i0, %i0
   15944:	89 2a a0 1f 	sll  %o2, 0x1f, %g4
   15948:	83 32 e0 01 	srl  %o3, 1, %g1
   1594c:	86 11 00 01 	or  %g4, %g1, %g3
   15950:	85 32 a0 01 	srl  %o2, 1, %g2
   15954:	b8 0a a0 00 	and  %o2, 0, %i4
   15958:	ba 0a e0 01 	and  %o3, 1, %i5
   1595c:	94 17 00 02 	or  %i4, %g2, %o2
   15960:	b0 86 3f ff 	addcc  %i0, -1, %i0
   15964:	12 bf ff f8 	bne  15944 <_fpadd_parts+0xb8>
   15968:	96 17 40 03 	or  %i5, %g3, %o3
   1596c:	b0 10 00 09 	mov  %o1, %i0
   15970:	80 a6 00 09 	cmp  %i0, %o1
   15974:	24 80 00 0f 	ble,a   159b0 <_fpadd_parts+0x124>
   15978:	c4 03 e0 04 	ld  [ %o7 + 4 ], %g2
   1597c:	92 26 00 09 	sub  %i0, %o1, %o1
   15980:	89 2b 20 1f 	sll  %o4, 0x1f, %g4
   15984:	83 33 60 01 	srl  %o5, 1, %g1
   15988:	86 11 00 01 	or  %g4, %g1, %g3
   1598c:	85 33 20 01 	srl  %o4, 1, %g2
   15990:	b8 0b 20 00 	and  %o4, 0, %i4
   15994:	ba 0b 60 01 	and  %o5, 1, %i5
   15998:	98 17 00 02 	or  %i4, %g2, %o4
   1599c:	92 82 7f ff 	addcc  %o1, -1, %o1
   159a0:	12 bf ff f8 	bne  15980 <_fpadd_parts+0xf4>
   159a4:	9a 17 40 03 	or  %i5, %g3, %o5
   159a8:	92 10 00 18 	mov  %i0, %o1
   159ac:	c4 03 e0 04 	ld  [ %o7 + 4 ], %g2
   159b0:	c2 06 60 04 	ld  [ %i1 + 4 ], %g1
   159b4:	80 a0 80 01 	cmp  %g2, %g1
   159b8:	02 80 00 59 	be  15b1c <_fpadd_parts+0x290>
   159bc:	80 a0 a0 00 	cmp  %g2, 0
   159c0:	02 80 00 55 	be  15b14 <_fpadd_parts+0x288>
   159c4:	86 a3 40 0b 	subcc  %o5, %o3, %g3
   159c8:	86 a2 c0 0d 	subcc  %o3, %o5, %g3
   159cc:	84 62 80 0c 	subx  %o2, %o4, %g2
   159d0:	80 a0 a0 00 	cmp  %g2, 0
   159d4:	06 80 00 5c 	bl  15b44 <_fpadd_parts+0x2b8>
   159d8:	9a a0 00 03 	subcc  %g0, %g3, %o5
   159dc:	9e 10 00 09 	mov  %o1, %o7
   159e0:	98 10 00 02 	mov  %g2, %o4
   159e4:	9a 10 00 03 	mov  %g3, %o5
   159e8:	c0 26 a0 04 	clr  [ %i2 + 4 ]
   159ec:	86 83 7f ff 	addcc  %o5, -1, %g3
   159f0:	03 03 ff ff 	sethi  %hi(0xffffc00), %g1
   159f4:	84 43 3f ff 	addx  %o4, -1, %g2
   159f8:	82 10 63 ff 	or  %g1, 0x3ff, %g1
   159fc:	88 10 00 0f 	mov  %o7, %g4
   15a00:	b0 10 00 0c 	mov  %o4, %i0
   15a04:	b2 10 00 0d 	mov  %o5, %i1
   15a08:	80 a0 80 01 	cmp  %g2, %g1
   15a0c:	18 80 00 24 	bgu  15a9c <_fpadd_parts+0x210>
   15a10:	80 a0 80 01 	cmp  %g2, %g1
   15a14:	22 80 00 20 	be,a   15a94 <_fpadd_parts+0x208>
   15a18:	80 a0 ff fe 	cmp  %g3, -2
   15a1c:	89 33 60 1f 	srl  %o5, 0x1f, %g4
   15a20:	82 03 00 0c 	add  %o4, %o4, %g1
   15a24:	86 03 40 0d 	add  %o5, %o5, %g3
   15a28:	84 11 00 01 	or  %g4, %g1, %g2
   15a2c:	9a 10 00 03 	mov  %g3, %o5
   15a30:	98 10 00 02 	mov  %g2, %o4
   15a34:	86 80 ff ff 	addcc  %g3, -1, %g3
   15a38:	03 03 ff ff 	sethi  %hi(0xffffc00), %g1
   15a3c:	84 40 bf ff 	addx  %g2, -1, %g2
   15a40:	82 10 63 ff 	or  %g1, 0x3ff, %g1
   15a44:	9e 03 ff ff 	add  %o7, -1, %o7
   15a48:	80 a0 80 01 	cmp  %g2, %g1
   15a4c:	b0 10 00 0c 	mov  %o4, %i0
   15a50:	b2 10 00 0d 	mov  %o5, %i1
   15a54:	10 bf ff ee 	b  15a0c <_fpadd_parts+0x180>
   15a58:	88 10 00 0f 	mov  %o7, %g4
   15a5c:	12 80 00 3f 	bne  15b58 <_fpadd_parts+0x2cc>
   15a60:	b0 10 00 0f 	mov  %o7, %i0
   15a64:	c4 1b c0 00 	ldd  [ %o7 ], %g2
   15a68:	c4 3e 80 00 	std  %g2, [ %i2 ]
   15a6c:	f8 1b e0 08 	ldd  [ %o7 + 8 ], %i4
   15a70:	f8 3e a0 08 	std  %i4, [ %i2 + 8 ]
   15a74:	c4 1b e0 10 	ldd  [ %o7 + 0x10 ], %g2
   15a78:	c4 3e a0 10 	std  %g2, [ %i2 + 0x10 ]
   15a7c:	c2 03 e0 04 	ld  [ %o7 + 4 ], %g1
   15a80:	c4 06 60 04 	ld  [ %i1 + 4 ], %g2
   15a84:	82 08 40 02 	and  %g1, %g2, %g1
   15a88:	c2 26 a0 04 	st  %g1, [ %i2 + 4 ]
   15a8c:	10 80 00 33 	b  15b58 <_fpadd_parts+0x2cc>
   15a90:	b0 10 00 1a 	mov  %i2, %i0
   15a94:	28 bf ff e3 	bleu,a   15a20 <_fpadd_parts+0x194>
   15a98:	89 33 60 1f 	srl  %o5, 0x1f, %g4
   15a9c:	f0 3e a0 10 	std  %i0, [ %i2 + 0x10 ]
   15aa0:	05 07 ff ff 	sethi  %hi(0x1ffffc00), %g2
   15aa4:	c2 06 a0 10 	ld  [ %i2 + 0x10 ], %g1
   15aa8:	84 10 a3 ff 	or  %g2, 0x3ff, %g2
   15aac:	86 10 20 03 	mov  3, %g3
   15ab0:	80 a0 40 02 	cmp  %g1, %g2
   15ab4:	18 80 00 0b 	bgu  15ae0 <_fpadd_parts+0x254>
   15ab8:	c6 26 80 00 	st  %g3, [ %i2 ]
   15abc:	c8 26 a0 08 	st  %g4, [ %i2 + 8 ]
   15ac0:	10 80 00 26 	b  15b58 <_fpadd_parts+0x2cc>
   15ac4:	b0 10 00 1a 	mov  %i2, %i0
   15ac8:	80 a2 40 18 	cmp  %o1, %i0
   15acc:	24 80 00 1b 	ble,a   15b38 <_fpadd_parts+0x2ac>
   15ad0:	92 10 00 18 	mov  %i0, %o1
   15ad4:	94 10 20 00 	clr  %o2
   15ad8:	10 bf ff b5 	b  159ac <_fpadd_parts+0x120>
   15adc:	96 10 20 00 	clr  %o3
   15ae0:	83 33 60 01 	srl  %o5, 1, %g1
   15ae4:	89 2b 20 1f 	sll  %o4, 0x1f, %g4
   15ae8:	86 11 00 01 	or  %g4, %g1, %g3
   15aec:	85 33 20 01 	srl  %o4, 1, %g2
   15af0:	b8 0b 20 00 	and  %o4, 0, %i4
   15af4:	ba 0b 60 01 	and  %o5, 1, %i5
   15af8:	b8 17 00 02 	or  %i4, %g2, %i4
   15afc:	ba 17 40 03 	or  %i5, %g3, %i5
   15b00:	82 03 e0 01 	add  %o7, 1, %g1
   15b04:	f8 3e a0 10 	std  %i4, [ %i2 + 0x10 ]
   15b08:	c2 26 a0 08 	st  %g1, [ %i2 + 8 ]
   15b0c:	10 80 00 13 	b  15b58 <_fpadd_parts+0x2cc>
   15b10:	b0 10 00 1a 	mov  %i2, %i0
   15b14:	10 bf ff af 	b  159d0 <_fpadd_parts+0x144>
   15b18:	84 63 00 0a 	subx  %o4, %o2, %g2
   15b1c:	9a 83 40 0b 	addcc  %o5, %o3, %o5
   15b20:	98 43 00 0a 	addx  %o4, %o2, %o4
   15b24:	9e 10 00 09 	mov  %o1, %o7
   15b28:	c4 26 a0 04 	st  %g2, [ %i2 + 4 ]
   15b2c:	d8 3e a0 10 	std  %o4, [ %i2 + 0x10 ]
   15b30:	10 bf ff dc 	b  15aa0 <_fpadd_parts+0x214>
   15b34:	88 10 00 09 	mov  %o1, %g4
   15b38:	98 10 20 00 	clr  %o4
   15b3c:	10 bf ff 9c 	b  159ac <_fpadd_parts+0x120>
   15b40:	9a 10 20 00 	clr  %o5
   15b44:	82 10 20 01 	mov  1, %g1
   15b48:	98 60 00 02 	subx  %g0, %g2, %o4
   15b4c:	9e 10 00 09 	mov  %o1, %o7
   15b50:	10 bf ff a7 	b  159ec <_fpadd_parts+0x160>
   15b54:	c2 26 a0 04 	st  %g1, [ %i2 + 4 ]
   15b58:	81 c7 e0 08 	ret 
   15b5c:	81 e8 00 00 	restore 

00015b60 <__adddf3>:
   15b60:	9d e3 bf 40 	save  %sp, -192, %sp
   15b64:	a2 07 bf e0 	add  %fp, -32, %l1
   15b68:	f0 3f bf a8 	std  %i0, [ %fp + -88 ]
   15b6c:	90 07 bf a8 	add  %fp, -88, %o0
   15b70:	92 10 00 11 	mov  %l1, %o1
   15b74:	40 00 02 e8 	call  16714 <__unpack_d>
   15b78:	f4 3f bf a0 	std  %i2, [ %fp + -96 ]
   15b7c:	a0 07 bf c8 	add  %fp, -56, %l0
   15b80:	90 07 bf a0 	add  %fp, -96, %o0
   15b84:	40 00 02 e4 	call  16714 <__unpack_d>
   15b88:	92 10 00 10 	mov  %l0, %o1
   15b8c:	92 10 00 10 	mov  %l0, %o1
   15b90:	94 07 bf b0 	add  %fp, -80, %o2
   15b94:	7f ff ff 3e 	call  1588c <_fpadd_parts>
   15b98:	90 10 00 11 	mov  %l1, %o0
   15b9c:	40 00 02 5e 	call  16514 <__pack_d>
   15ba0:	01 00 00 00 	nop 
   15ba4:	b0 10 00 08 	mov  %o0, %i0
   15ba8:	81 c7 e0 08 	ret 
   15bac:	93 e8 00 09 	restore  %g0, %o1, %o1

00015bb0 <__subdf3>:
   15bb0:	9d e3 bf 40 	save  %sp, -192, %sp
   15bb4:	a2 07 bf e0 	add  %fp, -32, %l1
   15bb8:	f0 3f bf a8 	std  %i0, [ %fp + -88 ]
   15bbc:	90 07 bf a8 	add  %fp, -88, %o0
   15bc0:	92 10 00 11 	mov  %l1, %o1
   15bc4:	40 00 02 d4 	call  16714 <__unpack_d>
   15bc8:	f4 3f bf a0 	std  %i2, [ %fp + -96 ]
   15bcc:	a0 07 bf c8 	add  %fp, -56, %l0
   15bd0:	90 07 bf a0 	add  %fp, -96, %o0
   15bd4:	40 00 02 d0 	call  16714 <__unpack_d>
   15bd8:	92 10 00 10 	mov  %l0, %o1
   15bdc:	c2 07 bf cc 	ld  [ %fp + -52 ], %g1
   15be0:	82 18 60 01 	xor  %g1, 1, %g1
   15be4:	c2 27 bf cc 	st  %g1, [ %fp + -52 ]
   15be8:	92 10 00 10 	mov  %l0, %o1
   15bec:	94 07 bf b0 	add  %fp, -80, %o2
   15bf0:	7f ff ff 27 	call  1588c <_fpadd_parts>
   15bf4:	90 10 00 11 	mov  %l1, %o0
   15bf8:	40 00 02 47 	call  16514 <__pack_d>
   15bfc:	01 00 00 00 	nop 
   15c00:	b0 10 00 08 	mov  %o0, %i0
   15c04:	81 c7 e0 08 	ret 
   15c08:	93 e8 00 09 	restore  %g0, %o1, %o1
   15c0c:	81 c3 e0 08 	retl 
   15c10:	ae 03 c0 17 	add  %o7, %l7, %l7

00015c14 <__muldf3>:
   15c14:	9d e3 bf 40 	save  %sp, -192, %sp
   15c18:	a0 07 bf e0 	add  %fp, -32, %l0
   15c1c:	2f 00 00 49 	sethi  %hi(0x12400), %l7
   15c20:	7f ff ff fb 	call  15c0c <__subdf3+0x5c>
   15c24:	ae 05 e0 bc 	add  %l7, 0xbc, %l7	! 124bc <Puzzle+0xb98>
   15c28:	f0 3f bf a8 	std  %i0, [ %fp + -88 ]
   15c2c:	90 07 bf a8 	add  %fp, -88, %o0
   15c30:	92 10 00 10 	mov  %l0, %o1
   15c34:	40 00 02 b8 	call  16714 <__unpack_d>
   15c38:	f4 3f bf a0 	std  %i2, [ %fp + -96 ]
   15c3c:	b2 07 bf c8 	add  %fp, -56, %i1
   15c40:	90 07 bf a0 	add  %fp, -96, %o0
   15c44:	40 00 02 b4 	call  16714 <__unpack_d>
   15c48:	92 10 00 19 	mov  %i1, %o1
   15c4c:	c2 07 bf e0 	ld  [ %fp + -32 ], %g1
   15c50:	80 a0 60 01 	cmp  %g1, 1
   15c54:	08 80 00 12 	bleu  15c9c <__muldf3+0x88>
   15c58:	9e 07 bf b0 	add  %fp, -80, %o7
   15c5c:	c4 07 bf c8 	ld  [ %fp + -56 ], %g2
   15c60:	80 a0 a0 01 	cmp  %g2, 1
   15c64:	28 80 00 1b 	bleu,a   15cd0 <__muldf3+0xbc>
   15c68:	c4 07 bf cc 	ld  [ %fp + -52 ], %g2
   15c6c:	80 a0 60 04 	cmp  %g1, 4
   15c70:	12 80 00 13 	bne  15cbc <__muldf3+0xa8>
   15c74:	80 a0 a0 04 	cmp  %g2, 4
   15c78:	80 a0 a0 02 	cmp  %g2, 2
   15c7c:	12 80 00 09 	bne  15ca0 <__muldf3+0x8c>
   15c80:	c2 07 bf e4 	ld  [ %fp + -28 ], %g1
   15c84:	03 00 00 00 	sethi  %hi(0), %g1
   15c88:	82 10 60 14 	or  %g1, 0x14, %g1	! 14 <_init-0x10334>
   15c8c:	10 80 00 9d 	b  15f00 <__muldf3+0x2ec>
   15c90:	d0 05 c0 01 	ld  [ %l7 + %g1 ], %o0
   15c94:	12 80 00 16 	bne  15cec <__muldf3+0xd8>
   15c98:	80 a0 a0 02 	cmp  %g2, 2
   15c9c:	c2 07 bf e4 	ld  [ %fp + -28 ], %g1
   15ca0:	c4 07 bf cc 	ld  [ %fp + -52 ], %g2
   15ca4:	82 18 40 02 	xor  %g1, %g2, %g1
   15ca8:	80 a0 00 01 	cmp  %g0, %g1
   15cac:	84 40 20 00 	addx  %g0, 0, %g2
   15cb0:	c4 27 bf e4 	st  %g2, [ %fp + -28 ]
   15cb4:	10 80 00 93 	b  15f00 <__muldf3+0x2ec>
   15cb8:	90 10 00 10 	mov  %l0, %o0
   15cbc:	12 bf ff f6 	bne  15c94 <__muldf3+0x80>
   15cc0:	80 a0 60 02 	cmp  %g1, 2
   15cc4:	02 bf ff f1 	be  15c88 <__muldf3+0x74>
   15cc8:	03 00 00 00 	sethi  %hi(0), %g1
   15ccc:	c4 07 bf cc 	ld  [ %fp + -52 ], %g2
   15cd0:	c2 07 bf e4 	ld  [ %fp + -28 ], %g1
   15cd4:	82 18 40 02 	xor  %g1, %g2, %g1
   15cd8:	80 a0 00 01 	cmp  %g0, %g1
   15cdc:	84 40 20 00 	addx  %g0, 0, %g2
   15ce0:	c4 27 bf cc 	st  %g2, [ %fp + -52 ]
   15ce4:	10 80 00 87 	b  15f00 <__muldf3+0x2ec>
   15ce8:	90 10 00 19 	mov  %i1, %o0
   15cec:	02 bf ff f9 	be  15cd0 <__muldf3+0xbc>
   15cf0:	c4 07 bf cc 	ld  [ %fp + -52 ], %g2
   15cf4:	da 07 bf f0 	ld  [ %fp + -16 ], %o5
   15cf8:	96 10 00 0d 	mov  %o5, %o3
   15cfc:	c6 07 bf d8 	ld  [ %fp + -40 ], %g3
   15d00:	da 07 bf f4 	ld  [ %fp + -12 ], %o5
   15d04:	b6 50 c0 0d 	umul  %g3, %o5, %i3
   15d08:	b5 40 00 00 	rd  %y, %i2
   15d0c:	82 10 00 03 	mov  %g3, %g1
   15d10:	c8 07 bf dc 	ld  [ %fp + -36 ], %g4
   15d14:	86 51 00 0b 	umul  %g4, %o3, %g3
   15d18:	85 40 00 00 	rd  %y, %g2
   15d1c:	92 86 c0 03 	addcc  %i3, %g3, %o1
   15d20:	90 46 80 02 	addx  %i2, %g2, %o0
   15d24:	aa 50 40 0b 	umul  %g1, %o3, %l5
   15d28:	a9 40 00 00 	rd  %y, %l4
   15d2c:	80 a6 80 08 	cmp  %i2, %o0
   15d30:	9a 51 00 0d 	umul  %g4, %o5, %o5
   15d34:	99 40 00 00 	rd  %y, %o4
   15d38:	a4 10 20 00 	clr  %l2
   15d3c:	18 80 00 65 	bgu  15ed0 <__muldf3+0x2bc>
   15d40:	a6 10 20 00 	clr  %l3
   15d44:	80 a6 80 08 	cmp  %i2, %o0
   15d48:	02 80 00 60 	be  15ec8 <__muldf3+0x2b4>
   15d4c:	80 a6 c0 09 	cmp  %i3, %o1
   15d50:	b6 10 20 00 	clr  %i3
   15d54:	96 83 40 1b 	addcc  %o5, %i3, %o3
   15d58:	94 43 00 09 	addx  %o4, %o1, %o2
   15d5c:	80 a3 00 0a 	cmp  %o4, %o2
   15d60:	38 80 00 58 	bgu,a   15ec0 <__muldf3+0x2ac>
   15d64:	a6 84 e0 01 	inccc  %l3
   15d68:	80 a3 00 0a 	cmp  %o4, %o2
   15d6c:	02 80 00 52 	be  15eb4 <__muldf3+0x2a0>
   15d70:	80 a3 40 0b 	cmp  %o5, %o3
   15d74:	86 82 00 15 	addcc  %o0, %l5, %g3
   15d78:	84 10 20 00 	clr  %g2
   15d7c:	84 40 80 14 	addx  %g2, %l4, %g2
   15d80:	c8 06 60 04 	ld  [ %i1 + 4 ], %g4
   15d84:	b6 84 c0 03 	addcc  %l3, %g3, %i3
   15d88:	c2 04 20 04 	ld  [ %l0 + 4 ], %g1
   15d8c:	b4 44 80 02 	addx  %l2, %g2, %i2
   15d90:	82 18 40 04 	xor  %g1, %g4, %g1
   15d94:	80 a0 00 01 	cmp  %g0, %g1
   15d98:	c6 06 60 08 	ld  [ %i1 + 8 ], %g3
   15d9c:	c4 04 20 08 	ld  [ %l0 + 8 ], %g2
   15da0:	88 40 20 00 	addx  %g0, 0, %g4
   15da4:	84 00 80 03 	add  %g2, %g3, %g2
   15da8:	03 07 ff ff 	sethi  %hi(0x1ffffc00), %g1
   15dac:	90 00 a0 04 	add  %g2, 4, %o0
   15db0:	82 10 63 ff 	or  %g1, 0x3ff, %g1
   15db4:	c8 23 e0 04 	st  %g4, [ %o7 + 4 ]
   15db8:	b0 10 00 0a 	mov  %o2, %i0
   15dbc:	b2 10 00 0b 	mov  %o3, %i1
   15dc0:	80 a6 80 01 	cmp  %i2, %g1
   15dc4:	08 80 00 18 	bleu  15e24 <__muldf3+0x210>
   15dc8:	88 10 00 08 	mov  %o0, %g4
   15dcc:	92 10 00 01 	mov  %g1, %o1
   15dd0:	15 20 00 00 	sethi  %hi(0x80000000), %o2
   15dd4:	96 10 20 00 	clr  %o3
   15dd8:	89 2e a0 1f 	sll  %i2, 0x1f, %g4
   15ddc:	83 36 e0 01 	srl  %i3, 1, %g1
   15de0:	86 11 00 01 	or  %g4, %g1, %g3
   15de4:	89 2e 20 1f 	sll  %i0, 0x1f, %g4
   15de8:	83 36 60 01 	srl  %i1, 1, %g1
   15dec:	85 36 a0 01 	srl  %i2, 1, %g2
   15df0:	9a 11 00 01 	or  %g4, %g1, %o5
   15df4:	90 02 20 01 	inc  %o0
   15df8:	80 8e e0 01 	btst  1, %i3
   15dfc:	99 36 20 01 	srl  %i0, 1, %o4
   15e00:	b4 10 00 02 	mov  %g2, %i2
   15e04:	b6 10 00 03 	mov  %g3, %i3
   15e08:	02 80 00 04 	be  15e18 <__muldf3+0x204>
   15e0c:	88 10 00 08 	mov  %o0, %g4
   15e10:	b0 13 00 0a 	or  %o4, %o2, %i0
   15e14:	b2 13 40 0b 	or  %o5, %o3, %i1
   15e18:	80 a6 80 09 	cmp  %i2, %o1
   15e1c:	38 bf ff f0 	bgu,a   15ddc <__muldf3+0x1c8>
   15e20:	89 2e a0 1f 	sll  %i2, 0x1f, %g4
   15e24:	03 03 ff ff 	sethi  %hi(0xffffc00), %g1
   15e28:	82 10 63 ff 	or  %g1, 0x3ff, %g1	! fffffff <_end+0xffc0cff>
   15e2c:	80 a6 80 01 	cmp  %i2, %g1
   15e30:	18 80 00 14 	bgu  15e80 <__muldf3+0x26c>
   15e34:	85 36 60 1f 	srl  %i1, 0x1f, %g2
   15e38:	82 06 00 18 	add  %i0, %i0, %g1
   15e3c:	95 36 e0 1f 	srl  %i3, 0x1f, %o2
   15e40:	96 06 80 1a 	add  %i2, %i2, %o3
   15e44:	98 10 80 01 	or  %g2, %g1, %o4
   15e48:	88 01 3f ff 	add  %g4, -1, %g4
   15e4c:	9a 06 40 19 	add  %i1, %i1, %o5
   15e50:	84 12 80 0b 	or  %o2, %o3, %g2
   15e54:	86 06 c0 1b 	add  %i3, %i3, %g3
   15e58:	80 a6 20 00 	cmp  %i0, 0
   15e5c:	b4 10 00 02 	mov  %g2, %i2
   15e60:	b6 10 00 03 	mov  %g3, %i3
   15e64:	b0 10 00 0c 	mov  %o4, %i0
   15e68:	b2 10 00 0d 	mov  %o5, %i1
   15e6c:	16 bf ff ee 	bge  15e24 <__muldf3+0x210>
   15e70:	90 10 00 04 	mov  %g4, %o0
   15e74:	b4 10 a0 00 	mov  %g2, %i2
   15e78:	10 bf ff eb 	b  15e24 <__muldf3+0x210>
   15e7c:	b6 10 e0 01 	or  %g3, 1, %i3
   15e80:	84 0e a0 00 	and  %i2, 0, %g2
   15e84:	86 0e e0 ff 	and  %i3, 0xff, %g3
   15e88:	80 a0 a0 00 	cmp  %g2, 0
   15e8c:	12 80 00 05 	bne  15ea0 <__muldf3+0x28c>
   15e90:	d0 23 e0 08 	st  %o0, [ %o7 + 8 ]
   15e94:	80 a0 e0 80 	cmp  %g3, 0x80
   15e98:	02 80 00 11 	be  15edc <__muldf3+0x2c8>
   15e9c:	86 0e e1 00 	and  %i3, 0x100, %g3
   15ea0:	82 10 20 03 	mov  3, %g1
   15ea4:	f4 3b e0 10 	std  %i2, [ %o7 + 0x10 ]
   15ea8:	c2 23 c0 00 	st  %g1, [ %o7 ]
   15eac:	10 80 00 15 	b  15f00 <__muldf3+0x2ec>
   15eb0:	90 10 00 0f 	mov  %o7, %o0
   15eb4:	08 bf ff b1 	bleu  15d78 <__muldf3+0x164>
   15eb8:	86 82 00 15 	addcc  %o0, %l5, %g3
   15ebc:	a6 84 e0 01 	inccc  %l3
   15ec0:	10 bf ff ad 	b  15d74 <__muldf3+0x160>
   15ec4:	a4 44 a0 00 	addx  %l2, 0, %l2
   15ec8:	08 bf ff a3 	bleu  15d54 <__muldf3+0x140>
   15ecc:	b6 10 20 00 	clr  %i3
   15ed0:	a4 10 20 01 	mov  1, %l2
   15ed4:	10 bf ff 9f 	b  15d50 <__muldf3+0x13c>
   15ed8:	a6 10 20 00 	clr  %l3
   15edc:	80 90 80 03 	orcc  %g2, %g3, %g0
   15ee0:	32 80 00 06 	bne,a   15ef8 <__muldf3+0x2e4>
   15ee4:	b6 86 e0 80 	addcc  %i3, 0x80, %i3
   15ee8:	80 96 00 19 	orcc  %i0, %i1, %g0
   15eec:	02 bf ff ee 	be  15ea4 <__muldf3+0x290>
   15ef0:	82 10 20 03 	mov  3, %g1
   15ef4:	b6 86 e0 80 	addcc  %i3, 0x80, %i3
   15ef8:	10 bf ff ea 	b  15ea0 <__muldf3+0x28c>
   15efc:	b4 46 a0 00 	addx  %i2, 0, %i2
   15f00:	40 00 01 85 	call  16514 <__pack_d>
   15f04:	01 00 00 00 	nop 
   15f08:	b0 10 00 08 	mov  %o0, %i0
   15f0c:	81 c7 e0 08 	ret 
   15f10:	93 e8 00 09 	restore  %g0, %o1, %o1
   15f14:	81 c3 e0 08 	retl 
   15f18:	ae 03 c0 17 	add  %o7, %l7, %l7

00015f1c <__divdf3>:
   15f1c:	9d e3 bf 58 	save  %sp, -168, %sp
   15f20:	a0 07 bf e0 	add  %fp, -32, %l0
   15f24:	2f 00 00 48 	sethi  %hi(0x12000), %l7
   15f28:	7f ff ff fb 	call  15f14 <__muldf3+0x300>
   15f2c:	ae 05 e1 b4 	add  %l7, 0x1b4, %l7	! 121b4 <Puzzle+0x890>
   15f30:	f4 3f bf b8 	std  %i2, [ %fp + -72 ]
   15f34:	90 07 bf c0 	add  %fp, -64, %o0
   15f38:	92 10 00 10 	mov  %l0, %o1
   15f3c:	40 00 01 f6 	call  16714 <__unpack_d>
   15f40:	f0 3f bf c0 	std  %i0, [ %fp + -64 ]
   15f44:	b6 07 bf c8 	add  %fp, -56, %i3
   15f48:	90 07 bf b8 	add  %fp, -72, %o0
   15f4c:	40 00 01 f2 	call  16714 <__unpack_d>
   15f50:	92 10 00 1b 	mov  %i3, %o1
   15f54:	c6 07 bf e0 	ld  [ %fp + -32 ], %g3
   15f58:	80 a0 e0 01 	cmp  %g3, 1
   15f5c:	08 80 00 6f 	bleu  16118 <__divdf3+0x1fc>
   15f60:	90 10 00 10 	mov  %l0, %o0
   15f64:	c8 07 bf c8 	ld  [ %fp + -56 ], %g4
   15f68:	80 a1 20 01 	cmp  %g4, 1
   15f6c:	08 80 00 6b 	bleu  16118 <__divdf3+0x1fc>
   15f70:	90 10 00 1b 	mov  %i3, %o0
   15f74:	c2 07 bf e4 	ld  [ %fp + -28 ], %g1
   15f78:	c4 07 bf cc 	ld  [ %fp + -52 ], %g2
   15f7c:	82 18 40 02 	xor  %g1, %g2, %g1
   15f80:	80 a0 e0 04 	cmp  %g3, 4
   15f84:	02 80 00 0f 	be  15fc0 <__divdf3+0xa4>
   15f88:	c2 27 bf e4 	st  %g1, [ %fp + -28 ]
   15f8c:	80 a0 e0 02 	cmp  %g3, 2
   15f90:	02 80 00 0d 	be  15fc4 <__divdf3+0xa8>
   15f94:	80 a0 c0 04 	cmp  %g3, %g4
   15f98:	80 a1 20 04 	cmp  %g4, 4
   15f9c:	02 80 00 10 	be  15fdc <__divdf3+0xc0>
   15fa0:	84 10 20 00 	clr  %g2
   15fa4:	80 a1 20 02 	cmp  %g4, 2
   15fa8:	12 80 00 12 	bne  15ff0 <__divdf3+0xd4>
   15fac:	c4 07 bf e8 	ld  [ %fp + -24 ], %g2
   15fb0:	82 10 20 04 	mov  4, %g1
   15fb4:	c2 27 bf e0 	st  %g1, [ %fp + -32 ]
   15fb8:	10 80 00 58 	b  16118 <__divdf3+0x1fc>
   15fbc:	90 10 00 10 	mov  %l0, %o0
   15fc0:	80 a0 c0 04 	cmp  %g3, %g4
   15fc4:	12 80 00 55 	bne  16118 <__divdf3+0x1fc>
   15fc8:	90 10 00 10 	mov  %l0, %o0
   15fcc:	03 00 00 00 	sethi  %hi(0), %g1
   15fd0:	82 10 60 14 	or  %g1, 0x14, %g1	! 14 <_init-0x10334>
   15fd4:	10 80 00 51 	b  16118 <__divdf3+0x1fc>
   15fd8:	d0 05 c0 01 	ld  [ %l7 + %g1 ], %o0
   15fdc:	86 10 20 00 	clr  %g3
   15fe0:	c4 3f bf f0 	std  %g2, [ %fp + -16 ]
   15fe4:	c0 27 bf e8 	clr  [ %fp + -24 ]
   15fe8:	10 80 00 4c 	b  16118 <__divdf3+0x1fc>
   15fec:	90 10 00 10 	mov  %l0, %o0
   15ff0:	c2 07 bf d0 	ld  [ %fp + -48 ], %g1
   15ff4:	84 20 80 01 	sub  %g2, %g1, %g2
   15ff8:	f4 1f bf f0 	ldd  [ %fp + -16 ], %i2
   15ffc:	f0 1f bf d8 	ldd  [ %fp + -40 ], %i0
   16000:	80 a6 00 1a 	cmp  %i0, %i2
   16004:	18 80 00 3b 	bgu  160f0 <__divdf3+0x1d4>
   16008:	c4 27 bf e8 	st  %g2, [ %fp + -24 ]
   1600c:	80 a6 00 1a 	cmp  %i0, %i2
   16010:	02 80 00 36 	be  160e8 <__divdf3+0x1cc>
   16014:	80 a6 40 1b 	cmp  %i1, %i3
   16018:	19 04 00 00 	sethi  %hi(0x10000000), %o4
   1601c:	9a 10 20 00 	clr  %o5
   16020:	a4 10 20 00 	clr  %l2
   16024:	10 80 00 0f 	b  16060 <__divdf3+0x144>
   16028:	a6 10 20 00 	clr  %l3
   1602c:	b4 66 80 18 	subx  %i2, %i0, %i2
   16030:	a4 14 80 0c 	or  %l2, %o4, %l2
   16034:	a6 14 c0 0d 	or  %l3, %o5, %l3
   16038:	85 36 e0 1f 	srl  %i3, 0x1f, %g2
   1603c:	82 06 80 1a 	add  %i2, %i2, %g1
   16040:	94 10 80 01 	or  %g2, %g1, %o2
   16044:	96 06 c0 1b 	add  %i3, %i3, %o3
   16048:	98 10 00 08 	mov  %o0, %o4
   1604c:	9a 10 00 09 	mov  %o1, %o5
   16050:	b4 10 00 0a 	mov  %o2, %i2
   16054:	80 92 00 09 	orcc  %o0, %o1, %g0
   16058:	02 80 00 10 	be  16098 <__divdf3+0x17c>
   1605c:	b6 10 00 0b 	mov  %o3, %i3
   16060:	85 2b 20 1f 	sll  %o4, 0x1f, %g2
   16064:	83 33 60 01 	srl  %o5, 1, %g1
   16068:	92 10 80 01 	or  %g2, %g1, %o1
   1606c:	80 a6 00 1a 	cmp  %i0, %i2
   16070:	18 bf ff f2 	bgu  16038 <__divdf3+0x11c>
   16074:	91 33 20 01 	srl  %o4, 1, %o0
   16078:	80 a6 00 1a 	cmp  %i0, %i2
   1607c:	32 bf ff ec 	bne,a   1602c <__divdf3+0x110>
   16080:	b6 a6 c0 19 	subcc  %i3, %i1, %i3
   16084:	80 a6 40 1b 	cmp  %i1, %i3
   16088:	18 bf ff ed 	bgu  1603c <__divdf3+0x120>
   1608c:	85 36 e0 1f 	srl  %i3, 0x1f, %g2
   16090:	10 bf ff e7 	b  1602c <__divdf3+0x110>
   16094:	b6 a6 c0 19 	subcc  %i3, %i1, %i3
   16098:	84 0c a0 00 	and  %l2, 0, %g2
   1609c:	80 a0 a0 00 	cmp  %g2, 0
   160a0:	12 80 00 05 	bne  160b4 <__divdf3+0x198>
   160a4:	86 0c e0 ff 	and  %l3, 0xff, %g3
   160a8:	80 a0 e0 80 	cmp  %g3, 0x80
   160ac:	02 80 00 05 	be  160c0 <__divdf3+0x1a4>
   160b0:	86 0c e1 00 	and  %l3, 0x100, %g3
   160b4:	e4 3c 20 10 	std  %l2, [ %l0 + 0x10 ]
   160b8:	10 80 00 18 	b  16118 <__divdf3+0x1fc>
   160bc:	90 10 00 10 	mov  %l0, %o0
   160c0:	80 90 80 03 	orcc  %g2, %g3, %g0
   160c4:	32 80 00 06 	bne,a   160dc <__divdf3+0x1c0>
   160c8:	a6 84 e0 80 	addcc  %l3, 0x80, %l3
   160cc:	80 92 80 0b 	orcc  %o2, %o3, %g0
   160d0:	22 bf ff fa 	be,a   160b8 <__divdf3+0x19c>
   160d4:	e4 3c 20 10 	std  %l2, [ %l0 + 0x10 ]
   160d8:	a6 84 e0 80 	addcc  %l3, 0x80, %l3
   160dc:	a4 44 a0 00 	addx  %l2, 0, %l2
   160e0:	10 bf ff f6 	b  160b8 <__divdf3+0x19c>
   160e4:	e4 3c 20 10 	std  %l2, [ %l0 + 0x10 ]
   160e8:	28 bf ff cd 	bleu,a   1601c <__divdf3+0x100>
   160ec:	19 04 00 00 	sethi  %hi(0x10000000), %o4
   160f0:	9b 36 e0 1f 	srl  %i3, 0x1f, %o5
   160f4:	88 06 80 1a 	add  %i2, %i2, %g4
   160f8:	c2 04 20 08 	ld  [ %l0 + 8 ], %g1
   160fc:	84 13 40 04 	or  %o5, %g4, %g2
   16100:	86 06 c0 1b 	add  %i3, %i3, %g3
   16104:	82 00 7f ff 	add  %g1, -1, %g1
   16108:	c2 24 20 08 	st  %g1, [ %l0 + 8 ]
   1610c:	b4 10 00 02 	mov  %g2, %i2
   16110:	10 bf ff c2 	b  16018 <__divdf3+0xfc>
   16114:	b6 10 00 03 	mov  %g3, %i3
   16118:	40 00 00 ff 	call  16514 <__pack_d>
   1611c:	01 00 00 00 	nop 
   16120:	b0 10 00 08 	mov  %o0, %i0
   16124:	81 c7 e0 08 	ret 
   16128:	93 e8 00 09 	restore  %g0, %o1, %o1
   1612c:	81 c3 e0 08 	retl 
   16130:	ae 03 c0 17 	add  %o7, %l7, %l7

00016134 <__floatsidf>:
   16134:	9d e3 bf 80 	save  %sp, -128, %sp
   16138:	85 36 20 1f 	srl  %i0, 0x1f, %g2
   1613c:	2f 00 00 47 	sethi  %hi(0x11c00), %l7
   16140:	7f ff ff fb 	call  1612c <__divdf3+0x210>
   16144:	ae 05 e3 9c 	add  %l7, 0x39c, %l7	! 11f9c <Puzzle+0x678>
   16148:	80 a6 20 00 	cmp  %i0, 0
   1614c:	12 80 00 08 	bne  1616c <__floatsidf+0x38>
   16150:	c4 27 bf e4 	st  %g2, [ %fp + -28 ]
   16154:	82 10 20 02 	mov  2, %g1
   16158:	c2 27 bf e0 	st  %g1, [ %fp + -32 ]
   1615c:	40 00 00 ee 	call  16514 <__pack_d>
   16160:	90 07 bf e0 	add  %fp, -32, %o0
   16164:	10 80 00 38 	b  16244 <__floatsidf+0x110>
   16168:	b0 10 00 08 	mov  %o0, %i0
   1616c:	82 10 20 03 	mov  3, %g1
   16170:	c2 27 bf e0 	st  %g1, [ %fp + -32 ]
   16174:	80 a0 a0 00 	cmp  %g2, 0
   16178:	96 10 20 3c 	mov  0x3c, %o3
   1617c:	02 80 00 22 	be  16204 <__floatsidf+0xd0>
   16180:	88 10 20 3c 	mov  0x3c, %g4
   16184:	03 20 00 00 	sethi  %hi(0x80000000), %g1
   16188:	80 a6 00 01 	cmp  %i0, %g1
   1618c:	02 80 00 28 	be  1622c <__floatsidf+0xf8>
   16190:	82 20 00 18 	neg  %i0, %g1
   16194:	85 38 60 1f 	sra  %g1, 0x1f, %g2
   16198:	86 10 00 01 	mov  %g1, %g3
   1619c:	98 10 00 02 	mov  %g2, %o4
   161a0:	9a 10 00 03 	mov  %g3, %o5
   161a4:	d8 3f bf f0 	std  %o4, [ %fp + -16 ]
   161a8:	03 03 ff ff 	sethi  %hi(0xffffc00), %g1
   161ac:	c4 07 bf f0 	ld  [ %fp + -16 ], %g2
   161b0:	82 10 63 ff 	or  %g1, 0x3ff, %g1
   161b4:	80 a0 80 01 	cmp  %g2, %g1
   161b8:	38 bf ff e9 	bgu,a   1615c <__floatsidf+0x28>
   161bc:	c8 27 bf e8 	st  %g4, [ %fp + -24 ]
   161c0:	89 33 60 1f 	srl  %o5, 0x1f, %g4
   161c4:	82 03 00 0c 	add  %o4, %o4, %g1
   161c8:	84 11 00 01 	or  %g4, %g1, %g2
   161cc:	82 02 ff ff 	add  %o3, -1, %g1
   161d0:	86 03 40 0d 	add  %o5, %o5, %g3
   161d4:	98 10 00 02 	mov  %g2, %o4
   161d8:	96 10 00 01 	mov  %g1, %o3
   161dc:	9a 10 00 03 	mov  %g3, %o5
   161e0:	d8 3f bf f0 	std  %o4, [ %fp + -16 ]
   161e4:	03 03 ff ff 	sethi  %hi(0xffffc00), %g1
   161e8:	c4 07 bf f0 	ld  [ %fp + -16 ], %g2
   161ec:	82 10 63 ff 	or  %g1, 0x3ff, %g1
   161f0:	80 a0 80 01 	cmp  %g2, %g1
   161f4:	08 bf ff f3 	bleu  161c0 <__floatsidf+0x8c>
   161f8:	88 10 00 0b 	mov  %o3, %g4
   161fc:	10 bf ff d8 	b  1615c <__floatsidf+0x28>
   16200:	c8 27 bf e8 	st  %g4, [ %fp + -24 ]
   16204:	85 3e 20 1f 	sra  %i0, 0x1f, %g2
   16208:	86 10 00 18 	mov  %i0, %g3
   1620c:	98 10 00 02 	mov  %g2, %o4
   16210:	9a 10 00 03 	mov  %g3, %o5
   16214:	d8 3f bf f0 	std  %o4, [ %fp + -16 ]
   16218:	03 03 ff ff 	sethi  %hi(0xffffc00), %g1
   1621c:	c4 07 bf f0 	ld  [ %fp + -16 ], %g2
   16220:	82 10 63 ff 	or  %g1, 0x3ff, %g1
   16224:	10 bf ff e5 	b  161b8 <__floatsidf+0x84>
   16228:	80 a0 80 01 	cmp  %g2, %g1
   1622c:	03 00 00 00 	sethi  %hi(0), %g1
   16230:	82 10 60 08 	or  %g1, 8, %g1	! 8 <_init-0x10340>
   16234:	c4 05 c0 01 	ld  [ %l7 + %g1 ], %g2
   16238:	c8 27 bf e8 	st  %g4, [ %fp + -24 ]
   1623c:	d0 18 80 00 	ldd  [ %g2 ], %o0
   16240:	b0 10 00 08 	mov  %o0, %i0
   16244:	81 c7 e0 08 	ret 
   16248:	93 e8 00 09 	restore  %g0, %o1, %o1

0001624c <__make_dp>:
   1624c:	9d e3 bf 80 	save  %sp, -128, %sp
   16250:	84 10 00 1b 	mov  %i3, %g2
   16254:	86 10 00 1c 	mov  %i4, %g3
   16258:	f0 3f bf e0 	std  %i0, [ %fp + -32 ]
   1625c:	f4 27 bf e8 	st  %i2, [ %fp + -24 ]
   16260:	c4 3f bf f0 	std  %g2, [ %fp + -16 ]
   16264:	40 00 00 ac 	call  16514 <__pack_d>
   16268:	90 07 bf e0 	add  %fp, -32, %o0
   1626c:	b0 10 00 08 	mov  %o0, %i0
   16270:	81 c7 e0 08 	ret 
   16274:	93 e8 00 09 	restore  %g0, %o1, %o1

00016278 <__truncdfsf2>:
   16278:	9d e3 bf 78 	save  %sp, -136, %sp
   1627c:	90 07 bf d8 	add  %fp, -40, %o0
   16280:	92 07 bf e0 	add  %fp, -32, %o1
   16284:	40 00 01 24 	call  16714 <__unpack_d>
   16288:	f0 3f bf d8 	std  %i0, [ %fp + -40 ]
   1628c:	d8 1f bf f0 	ldd  [ %fp + -16 ], %o4
   16290:	17 0f ff ff 	sethi  %hi(0x3ffffc00), %o3
   16294:	89 2b 20 02 	sll  %o4, 2, %g4
   16298:	83 33 60 1e 	srl  %o5, 0x1e, %g1
   1629c:	94 10 20 00 	clr  %o2
   162a0:	96 12 e3 ff 	or  %o3, 0x3ff, %o3
   162a4:	98 0b 00 0a 	and  %o4, %o2, %o4
   162a8:	9a 0b 40 0b 	and  %o5, %o3, %o5
   162ac:	86 11 00 01 	or  %g4, %g1, %g3
   162b0:	d0 1f bf e0 	ldd  [ %fp + -32 ], %o0
   162b4:	d4 07 bf e8 	ld  [ %fp + -24 ], %o2
   162b8:	80 93 00 0d 	orcc  %o4, %o5, %g0
   162bc:	02 80 00 03 	be  162c8 <__truncdfsf2+0x50>
   162c0:	96 10 00 03 	mov  %g3, %o3
   162c4:	96 10 e0 01 	or  %g3, 1, %o3
   162c8:	40 00 00 8c 	call  164f8 <__make_fp>
   162cc:	01 00 00 00 	nop 
   162d0:	81 c7 e0 08 	ret 
   162d4:	91 e8 00 08 	restore  %g0, %o0, %o0

000162d8 <__pack_f>:
   162d8:	c2 02 00 00 	ld  [ %o0 ], %g1
   162dc:	80 a0 60 01 	cmp  %g1, 1
   162e0:	c8 02 20 0c 	ld  [ %o0 + 0xc ], %g4
   162e4:	c6 02 20 04 	ld  [ %o0 + 4 ], %g3
   162e8:	18 80 00 06 	bgu  16300 <__pack_f+0x28>
   162ec:	9a 10 20 00 	clr  %o5
   162f0:	03 00 04 00 	sethi  %hi(0x100000), %g1
   162f4:	88 11 00 01 	or  %g4, %g1, %g4
   162f8:	10 80 00 42 	b  16400 <__pack_f+0x128>
   162fc:	9a 10 20 ff 	mov  0xff, %o5
   16300:	80 a0 60 04 	cmp  %g1, 4
   16304:	12 80 00 05 	bne  16318 <__pack_f+0x40>
   16308:	80 a0 60 02 	cmp  %g1, 2
   1630c:	9a 10 20 ff 	mov  0xff, %o5
   16310:	10 80 00 3c 	b  16400 <__pack_f+0x128>
   16314:	88 10 20 00 	clr  %g4
   16318:	22 80 00 3a 	be,a   16400 <__pack_f+0x128>
   1631c:	88 10 20 00 	clr  %g4
   16320:	80 a1 20 00 	cmp  %g4, 0
   16324:	02 80 00 38 	be  16404 <__pack_f+0x12c>
   16328:	84 0b 60 ff 	and  %o5, 0xff, %g2
   1632c:	d0 02 20 08 	ld  [ %o0 + 8 ], %o0
   16330:	80 a2 3f 82 	cmp  %o0, -126
   16334:	16 80 00 14 	bge  16384 <__pack_f+0xac>
   16338:	80 a2 20 7f 	cmp  %o0, 0x7f
   1633c:	82 10 3f 82 	mov  -126, %g1
   16340:	84 20 40 08 	sub  %g1, %o0, %g2
   16344:	80 a0 a0 19 	cmp  %g2, 0x19
   16348:	04 80 00 1d 	ble  163bc <__pack_f+0xe4>
   1634c:	82 10 20 01 	mov  1, %g1
   16350:	88 10 20 00 	clr  %g4
   16354:	82 09 20 7f 	and  %g4, 0x7f, %g1
   16358:	80 a0 60 40 	cmp  %g1, 0x40
   1635c:	02 80 00 20 	be  163dc <__pack_f+0x104>
   16360:	80 89 20 80 	btst  0x80, %g4
   16364:	88 01 20 3f 	add  %g4, 0x3f, %g4
   16368:	03 0f ff ff 	sethi  %hi(0x3ffffc00), %g1
   1636c:	82 10 63 ff 	or  %g1, 0x3ff, %g1	! 3fffffff <_end+0x3ffc0cff>
   16370:	80 a1 00 01 	cmp  %g4, %g1
   16374:	38 80 00 02 	bgu,a   1637c <__pack_f+0xa4>
   16378:	9a 10 20 01 	mov  1, %o5
   1637c:	10 80 00 21 	b  16400 <__pack_f+0x128>
   16380:	89 31 20 07 	srl  %g4, 7, %g4
   16384:	14 bf ff e3 	bg  16310 <__pack_f+0x38>
   16388:	9a 10 20 ff 	mov  0xff, %o5
   1638c:	82 09 20 7f 	and  %g4, 0x7f, %g1
   16390:	80 a0 60 40 	cmp  %g1, 0x40
   16394:	02 80 00 16 	be  163ec <__pack_f+0x114>
   16398:	9a 02 20 7f 	add  %o0, 0x7f, %o5
   1639c:	88 01 20 3f 	add  %g4, 0x3f, %g4
   163a0:	80 a1 20 00 	cmp  %g4, 0
   163a4:	36 80 00 17 	bge,a   16400 <__pack_f+0x128>
   163a8:	89 31 20 07 	srl  %g4, 7, %g4
   163ac:	89 31 20 01 	srl  %g4, 1, %g4
   163b0:	9a 03 60 01 	inc  %o5
   163b4:	10 80 00 13 	b  16400 <__pack_f+0x128>
   163b8:	89 31 20 07 	srl  %g4, 7, %g4
   163bc:	83 28 40 02 	sll  %g1, %g2, %g1
   163c0:	82 00 7f ff 	add  %g1, -1, %g1
   163c4:	82 08 40 04 	and  %g1, %g4, %g1
   163c8:	80 a0 00 01 	cmp  %g0, %g1
   163cc:	85 31 00 02 	srl  %g4, %g2, %g2
   163d0:	82 40 20 00 	addx  %g0, 0, %g1
   163d4:	10 bf ff e0 	b  16354 <__pack_f+0x7c>
   163d8:	88 10 80 01 	or  %g2, %g1, %g4
   163dc:	32 bf ff e3 	bne,a   16368 <__pack_f+0x90>
   163e0:	88 01 20 40 	add  %g4, 0x40, %g4
   163e4:	10 bf ff e2 	b  1636c <__pack_f+0x94>
   163e8:	03 0f ff ff 	sethi  %hi(0x3ffffc00), %g1
   163ec:	80 89 20 80 	btst  0x80, %g4
   163f0:	32 bf ff ec 	bne,a   163a0 <__pack_f+0xc8>
   163f4:	88 01 20 40 	add  %g4, 0x40, %g4
   163f8:	10 bf ff eb 	b  163a4 <__pack_f+0xcc>
   163fc:	80 a1 20 00 	cmp  %g4, 0
   16400:	84 0b 60 ff 	and  %o5, 0xff, %g2
   16404:	03 3f e0 00 	sethi  %hi(0xff800000), %g1
   16408:	82 29 00 01 	andn  %g4, %g1, %g1
   1640c:	85 28 a0 17 	sll  %g2, 0x17, %g2
   16410:	82 10 40 02 	or  %g1, %g2, %g1
   16414:	87 28 e0 1f 	sll  %g3, 0x1f, %g3
   16418:	81 c3 e0 08 	retl 
   1641c:	90 10 40 03 	or  %g1, %g3, %o0

00016420 <__unpack_f>:
   16420:	c4 02 00 00 	ld  [ %o0 ], %g2
   16424:	87 30 a0 1f 	srl  %g2, 0x1f, %g3
   16428:	89 30 a0 17 	srl  %g2, 0x17, %g4
   1642c:	c6 22 60 04 	st  %g3, [ %o1 + 4 ]
   16430:	03 3f e0 00 	sethi  %hi(0xff800000), %g1
   16434:	86 89 20 ff 	andcc  %g4, 0xff, %g3
   16438:	12 80 00 07 	bne  16454 <__unpack_f+0x34>
   1643c:	9a 28 80 01 	andn  %g2, %g1, %o5
   16440:	80 a3 60 00 	cmp  %o5, 0
   16444:	12 80 00 0e 	bne  1647c <__unpack_f+0x5c>
   16448:	82 10 20 02 	mov  2, %g1
   1644c:	10 80 00 29 	b  164f0 <__unpack_f+0xd0>
   16450:	c2 22 40 00 	st  %g1, [ %o1 ]
   16454:	80 a0 e0 ff 	cmp  %g3, 0xff
   16458:	02 80 00 1a 	be  164c0 <__unpack_f+0xa0>
   1645c:	83 2b 60 07 	sll  %o5, 7, %g1
   16460:	05 10 00 00 	sethi  %hi(0x40000000), %g2
   16464:	82 10 40 02 	or  %g1, %g2, %g1
   16468:	86 00 ff 81 	add  %g3, -127, %g3
   1646c:	c2 22 60 0c 	st  %g1, [ %o1 + 0xc ]
   16470:	c6 22 60 08 	st  %g3, [ %o1 + 8 ]
   16474:	10 bf ff f6 	b  1644c <__unpack_f+0x2c>
   16478:	82 10 20 03 	mov  3, %g1
   1647c:	84 10 20 03 	mov  3, %g2
   16480:	03 0f ff ff 	sethi  %hi(0x3ffffc00), %g1
   16484:	9b 2b 60 07 	sll  %o5, 7, %o5
   16488:	82 10 63 ff 	or  %g1, 0x3ff, %g1
   1648c:	c4 22 40 00 	st  %g2, [ %o1 ]
   16490:	80 a3 40 01 	cmp  %o5, %g1
   16494:	84 10 3f 82 	mov  -126, %g2
   16498:	18 80 00 07 	bgu  164b4 <__unpack_f+0x94>
   1649c:	86 10 3f 82 	mov  -126, %g3
   164a0:	9a 03 40 0d 	add  %o5, %o5, %o5
   164a4:	84 00 bf ff 	add  %g2, -1, %g2
   164a8:	80 a3 40 01 	cmp  %o5, %g1
   164ac:	08 bf ff fd 	bleu  164a0 <__unpack_f+0x80>
   164b0:	86 10 00 02 	mov  %g2, %g3
   164b4:	da 22 60 0c 	st  %o5, [ %o1 + 0xc ]
   164b8:	10 80 00 0e 	b  164f0 <__unpack_f+0xd0>
   164bc:	c6 22 60 08 	st  %g3, [ %o1 + 8 ]
   164c0:	80 a3 60 00 	cmp  %o5, 0
   164c4:	02 bf ff e2 	be  1644c <__unpack_f+0x2c>
   164c8:	82 10 20 04 	mov  4, %g1
   164cc:	03 00 04 00 	sethi  %hi(0x100000), %g1
   164d0:	80 8b 40 01 	btst  %o5, %g1
   164d4:	22 80 00 06 	be,a   164ec <__unpack_f+0xcc>
   164d8:	c0 22 40 00 	clr  [ %o1 ]
   164dc:	82 10 20 01 	mov  1, %g1
   164e0:	c2 22 40 00 	st  %g1, [ %o1 ]
   164e4:	10 80 00 03 	b  164f0 <__unpack_f+0xd0>
   164e8:	da 22 60 0c 	st  %o5, [ %o1 + 0xc ]
   164ec:	da 22 60 0c 	st  %o5, [ %o1 + 0xc ]
   164f0:	81 c3 e0 08 	retl 
   164f4:	01 00 00 00 	nop 

000164f8 <__make_fp>:
   164f8:	9d e3 bf 88 	save  %sp, -120, %sp
   164fc:	f0 3f bf e8 	std  %i0, [ %fp + -24 ]
   16500:	f4 3f bf f0 	std  %i2, [ %fp + -16 ]
   16504:	7f ff ff 75 	call  162d8 <__pack_f>
   16508:	90 07 bf e8 	add  %fp, -24, %o0
   1650c:	81 c7 e0 08 	ret 
   16510:	91 e8 00 08 	restore  %g0, %o0, %o0

00016514 <__pack_d>:
   16514:	9d e3 bf 98 	save  %sp, -104, %sp
   16518:	c2 06 00 00 	ld  [ %i0 ], %g1
   1651c:	80 a0 60 01 	cmp  %g1, 1
   16520:	e0 1e 20 10 	ldd  [ %i0 + 0x10 ], %l0
   16524:	e4 06 20 04 	ld  [ %i0 + 4 ], %l2
   16528:	18 80 00 08 	bgu  16548 <__pack_d+0x34>
   1652c:	b2 10 20 00 	clr  %i1
   16530:	05 00 02 00 	sethi  %hi(0x80000), %g2
   16534:	86 10 20 00 	clr  %g3
   16538:	a0 14 00 02 	or  %l0, %g2, %l0
   1653c:	a2 14 40 03 	or  %l1, %g3, %l1
   16540:	10 80 00 64 	b  166d0 <__pack_d+0x1bc>
   16544:	b2 10 27 ff 	mov  0x7ff, %i1
   16548:	80 a0 60 04 	cmp  %g1, 4
   1654c:	12 80 00 06 	bne  16564 <__pack_d+0x50>
   16550:	80 a0 60 02 	cmp  %g1, 2
   16554:	b2 10 27 ff 	mov  0x7ff, %i1
   16558:	a0 10 20 00 	clr  %l0
   1655c:	10 80 00 5d 	b  166d0 <__pack_d+0x1bc>
   16560:	a2 10 20 00 	clr  %l1
   16564:	22 bf ff fe 	be,a   1655c <__pack_d+0x48>
   16568:	a0 10 20 00 	clr  %l0
   1656c:	80 94 00 11 	orcc  %l0, %l1, %g0
   16570:	02 80 00 59 	be  166d4 <__pack_d+0x1c0>
   16574:	96 0e 67 ff 	and  %i1, 0x7ff, %o3
   16578:	d4 06 20 08 	ld  [ %i0 + 8 ], %o2
   1657c:	80 a2 bc 02 	cmp  %o2, -1022
   16580:	16 80 00 1e 	bge  165f8 <__pack_d+0xe4>
   16584:	80 a2 a3 ff 	cmp  %o2, 0x3ff
   16588:	82 10 3c 02 	mov  -1022, %g1
   1658c:	b0 20 40 0a 	sub  %g1, %o2, %i0
   16590:	80 a6 20 38 	cmp  %i0, 0x38
   16594:	04 80 00 3c 	ble  16684 <__pack_d+0x170>
   16598:	90 10 20 00 	clr  %o0
   1659c:	a0 10 20 00 	clr  %l0
   165a0:	a2 10 20 00 	clr  %l1
   165a4:	84 0c 20 00 	and  %l0, 0, %g2
   165a8:	80 a0 a0 00 	cmp  %g2, 0
   165ac:	12 80 00 05 	bne  165c0 <__pack_d+0xac>
   165b0:	86 0c 60 ff 	and  %l1, 0xff, %g3
   165b4:	80 a0 e0 80 	cmp  %g3, 0x80
   165b8:	02 80 00 29 	be  1665c <__pack_d+0x148>
   165bc:	86 0c 61 00 	and  %l1, 0x100, %g3
   165c0:	a2 84 60 7f 	addcc  %l1, 0x7f, %l1
   165c4:	a0 44 20 00 	addx  %l0, 0, %l0
   165c8:	03 03 ff ff 	sethi  %hi(0xffffc00), %g1
   165cc:	82 10 63 ff 	or  %g1, 0x3ff, %g1	! fffffff <_end+0xffc0cff>
   165d0:	80 a4 00 01 	cmp  %l0, %g1
   165d4:	38 80 00 02 	bgu,a   165dc <__pack_d+0xc8>
   165d8:	b2 10 20 01 	mov  1, %i1
   165dc:	89 2c 20 18 	sll  %l0, 0x18, %g4
   165e0:	83 34 60 08 	srl  %l1, 8, %g1
   165e4:	86 11 00 01 	or  %g4, %g1, %g3
   165e8:	85 34 20 08 	srl  %l0, 8, %g2
   165ec:	a0 10 00 02 	mov  %g2, %l0
   165f0:	10 80 00 38 	b  166d0 <__pack_d+0x1bc>
   165f4:	a2 10 00 03 	mov  %g3, %l1
   165f8:	14 bf ff d8 	bg  16558 <__pack_d+0x44>
   165fc:	b2 10 27 ff 	mov  0x7ff, %i1
   16600:	84 0c 20 00 	and  %l0, 0, %g2
   16604:	86 0c 60 ff 	and  %l1, 0xff, %g3
   16608:	80 a0 a0 00 	cmp  %g2, 0
   1660c:	12 80 00 05 	bne  16620 <__pack_d+0x10c>
   16610:	b2 02 a3 ff 	add  %o2, 0x3ff, %i1
   16614:	80 a0 e0 80 	cmp  %g3, 0x80
   16618:	02 80 00 16 	be  16670 <__pack_d+0x15c>
   1661c:	86 0c 61 00 	and  %l1, 0x100, %g3
   16620:	a2 84 60 7f 	addcc  %l1, 0x7f, %l1
   16624:	a0 44 20 00 	addx  %l0, 0, %l0
   16628:	03 07 ff ff 	sethi  %hi(0x1ffffc00), %g1
   1662c:	82 10 63 ff 	or  %g1, 0x3ff, %g1	! 1fffffff <_end+0x1ffc0cff>
   16630:	80 a4 00 01 	cmp  %l0, %g1
   16634:	08 bf ff eb 	bleu  165e0 <__pack_d+0xcc>
   16638:	89 2c 20 18 	sll  %l0, 0x18, %g4
   1663c:	89 2c 20 1f 	sll  %l0, 0x1f, %g4
   16640:	83 34 60 01 	srl  %l1, 1, %g1
   16644:	86 11 00 01 	or  %g4, %g1, %g3
   16648:	85 34 20 01 	srl  %l0, 1, %g2
   1664c:	a0 10 00 02 	mov  %g2, %l0
   16650:	a2 10 00 03 	mov  %g3, %l1
   16654:	10 bf ff e2 	b  165dc <__pack_d+0xc8>
   16658:	b2 06 60 01 	inc  %i1
   1665c:	80 90 80 03 	orcc  %g2, %g3, %g0
   16660:	02 bf ff db 	be  165cc <__pack_d+0xb8>
   16664:	03 03 ff ff 	sethi  %hi(0xffffc00), %g1
   16668:	10 bf ff d7 	b  165c4 <__pack_d+0xb0>
   1666c:	a2 84 60 80 	addcc  %l1, 0x80, %l1
   16670:	80 90 80 03 	orcc  %g2, %g3, %g0
   16674:	02 bf ff ee 	be  1662c <__pack_d+0x118>
   16678:	03 07 ff ff 	sethi  %hi(0x1ffffc00), %g1
   1667c:	10 bf ff ea 	b  16624 <__pack_d+0x110>
   16680:	a2 84 60 80 	addcc  %l1, 0x80, %l1
   16684:	92 10 20 01 	mov  1, %o1
   16688:	40 00 00 84 	call  16898 <__ashldi3>
   1668c:	94 10 00 18 	mov  %i0, %o2
   16690:	92 82 7f ff 	addcc  %o1, -1, %o1
   16694:	90 42 3f ff 	addx  %o0, -1, %o0
   16698:	90 0a 00 10 	and  %o0, %l0, %o0
   1669c:	92 0a 40 11 	and  %o1, %l1, %o1
   166a0:	80 92 00 09 	orcc  %o0, %o1, %g0
   166a4:	02 80 00 03 	be  166b0 <__pack_d+0x19c>
   166a8:	a6 10 20 00 	clr  %l3
   166ac:	a6 10 20 01 	mov  1, %l3
   166b0:	90 10 00 10 	mov  %l0, %o0
   166b4:	92 10 00 11 	mov  %l1, %o1
   166b8:	40 00 00 62 	call  16840 <__lshrdi3>
   166bc:	94 10 00 18 	mov  %i0, %o2
   166c0:	84 10 20 00 	clr  %g2
   166c4:	a0 12 00 02 	or  %o0, %g2, %l0
   166c8:	10 bf ff b7 	b  165a4 <__pack_d+0x90>
   166cc:	a2 12 40 13 	or  %o1, %l3, %l1
   166d0:	96 0e 67 ff 	and  %i1, 0x7ff, %o3
   166d4:	05 00 03 ff 	sethi  %hi(0xffc00), %g2
   166d8:	9a 0c a0 01 	and  %l2, 1, %o5
   166dc:	95 2a e0 14 	sll  %o3, 0x14, %o2
   166e0:	84 10 a3 ff 	or  %g2, 0x3ff, %g2
   166e4:	86 10 3f ff 	mov  -1, %g3
   166e8:	99 2b 60 1f 	sll  %o5, 0x1f, %o4
   166ec:	96 10 20 00 	clr  %o3
   166f0:	84 0c 00 02 	and  %l0, %g2, %g2
   166f4:	86 0c 40 03 	and  %l1, %g3, %g3
   166f8:	9a 10 20 00 	clr  %o5
   166fc:	84 10 80 0a 	or  %g2, %o2, %g2
   16700:	86 10 c0 0b 	or  %g3, %o3, %g3
   16704:	b0 10 80 0c 	or  %g2, %o4, %i0
   16708:	b2 10 c0 0d 	or  %g3, %o5, %i1
   1670c:	81 c7 e0 08 	ret 
   16710:	81 e8 00 00 	restore 

00016714 <__unpack_d>:
   16714:	d4 1a 00 00 	ldd  [ %o0 ], %o2
   16718:	9b 32 a0 1f 	srl  %o2, 0x1f, %o5
   1671c:	82 0b 60 01 	and  %o5, 1, %g1
   16720:	19 00 03 ff 	sethi  %hi(0xffc00), %o4
   16724:	87 32 a0 14 	srl  %o2, 0x14, %g3
   16728:	98 13 23 ff 	or  %o4, 0x3ff, %o4
   1672c:	9a 10 3f ff 	mov  -1, %o5
   16730:	c2 22 60 04 	st  %g1, [ %o1 + 4 ]
   16734:	94 0a 80 0c 	and  %o2, %o4, %o2
   16738:	90 88 e7 ff 	andcc  %g3, 0x7ff, %o0
   1673c:	12 80 00 07 	bne  16758 <__unpack_d+0x44>
   16740:	96 0a c0 0d 	and  %o3, %o5, %o3
   16744:	80 92 80 0b 	orcc  %o2, %o3, %g0
   16748:	12 80 00 13 	bne  16794 <__unpack_d+0x80>
   1674c:	82 10 20 02 	mov  2, %g1
   16750:	10 80 00 3a 	b  16838 <__unpack_d+0x124>
   16754:	c2 22 40 00 	st  %g1, [ %o1 ]
   16758:	80 a2 27 ff 	cmp  %o0, 0x7ff
   1675c:	02 80 00 2b 	be  16808 <__unpack_d+0xf4>
   16760:	89 32 e0 18 	srl  %o3, 0x18, %g4
   16764:	83 2a a0 08 	sll  %o2, 8, %g1
   16768:	84 11 00 01 	or  %g4, %g1, %g2
   1676c:	87 2a e0 08 	sll  %o3, 8, %g3
   16770:	19 04 00 00 	sethi  %hi(0x10000000), %o4
   16774:	9a 10 20 00 	clr  %o5
   16778:	84 10 80 0c 	or  %g2, %o4, %g2
   1677c:	86 10 c0 0d 	or  %g3, %o5, %g3
   16780:	88 02 3c 01 	add  %o0, -1023, %g4
   16784:	c4 3a 60 10 	std  %g2, [ %o1 + 0x10 ]
   16788:	c8 22 60 08 	st  %g4, [ %o1 + 8 ]
   1678c:	10 bf ff f1 	b  16750 <__unpack_d+0x3c>
   16790:	82 10 20 03 	mov  3, %g1
   16794:	89 32 e0 18 	srl  %o3, 0x18, %g4
   16798:	83 2a a0 08 	sll  %o2, 8, %g1
   1679c:	84 11 00 01 	or  %g4, %g1, %g2
   167a0:	03 03 ff ff 	sethi  %hi(0xffffc00), %g1
   167a4:	82 10 63 ff 	or  %g1, 0x3ff, %g1	! fffffff <_end+0xffc0cff>
   167a8:	87 2a e0 08 	sll  %o3, 8, %g3
   167ac:	88 10 20 03 	mov  3, %g4
   167b0:	80 a0 80 01 	cmp  %g2, %g1
   167b4:	94 10 00 02 	mov  %g2, %o2
   167b8:	96 10 00 03 	mov  %g3, %o3
   167bc:	c8 22 40 00 	st  %g4, [ %o1 ]
   167c0:	9a 10 3c 02 	mov  -1022, %o5
   167c4:	18 80 00 0e 	bgu  167fc <__unpack_d+0xe8>
   167c8:	82 10 3c 02 	mov  -1022, %g1
   167cc:	82 02 80 0a 	add  %o2, %o2, %g1
   167d0:	89 32 e0 1f 	srl  %o3, 0x1f, %g4
   167d4:	84 11 00 01 	or  %g4, %g1, %g2
   167d8:	03 03 ff ff 	sethi  %hi(0xffffc00), %g1
   167dc:	82 10 63 ff 	or  %g1, 0x3ff, %g1	! fffffff <_end+0xffc0cff>
   167e0:	86 02 c0 0b 	add  %o3, %o3, %g3
   167e4:	9a 03 7f ff 	add  %o5, -1, %o5
   167e8:	80 a0 80 01 	cmp  %g2, %g1
   167ec:	94 10 00 02 	mov  %g2, %o2
   167f0:	96 10 00 03 	mov  %g3, %o3
   167f4:	08 bf ff f6 	bleu  167cc <__unpack_d+0xb8>
   167f8:	82 10 00 0d 	mov  %o5, %g1
   167fc:	d4 3a 60 10 	std  %o2, [ %o1 + 0x10 ]
   16800:	10 80 00 0e 	b  16838 <__unpack_d+0x124>
   16804:	c2 22 60 08 	st  %g1, [ %o1 + 8 ]
   16808:	80 92 80 0b 	orcc  %o2, %o3, %g0
   1680c:	02 bf ff d1 	be  16750 <__unpack_d+0x3c>
   16810:	82 10 20 04 	mov  4, %g1
   16814:	87 32 a0 13 	srl  %o2, 0x13, %g3
   16818:	80 88 e0 01 	btst  1, %g3
   1681c:	22 80 00 06 	be,a   16834 <__unpack_d+0x120>
   16820:	c0 22 40 00 	clr  [ %o1 ]
   16824:	82 10 20 01 	mov  1, %g1
   16828:	c2 22 40 00 	st  %g1, [ %o1 ]
   1682c:	10 80 00 03 	b  16838 <__unpack_d+0x124>
   16830:	d4 3a 60 10 	std  %o2, [ %o1 + 0x10 ]
   16834:	d4 3a 60 10 	std  %o2, [ %o1 + 0x10 ]
   16838:	81 c3 e0 08 	retl 
   1683c:	01 00 00 00 	nop 

00016840 <__lshrdi3>:
   16840:	82 10 20 20 	mov  0x20, %g1	! 20 <_init-0x10328>
   16844:	84 10 00 08 	mov  %o0, %g2
   16848:	86 10 00 09 	mov  %o1, %g3
   1684c:	80 a2 a0 00 	cmp  %o2, 0
   16850:	02 80 00 10 	be  16890 <__lshrdi3+0x50>
   16854:	82 20 40 0a 	sub  %g1, %o2, %g1
   16858:	96 20 00 01 	neg  %g1, %o3
   1685c:	80 a0 60 00 	cmp  %g1, 0
   16860:	89 30 c0 0a 	srl  %g3, %o2, %g4
   16864:	04 80 00 07 	ble  16880 <__lshrdi3+0x40>
   16868:	83 28 80 01 	sll  %g2, %g1, %g1
   1686c:	99 30 80 0a 	srl  %g2, %o2, %o4
   16870:	9a 11 00 01 	or  %g4, %g1, %o5
   16874:	90 10 00 0c 	mov  %o4, %o0
   16878:	10 80 00 06 	b  16890 <__lshrdi3+0x50>
   1687c:	92 10 00 0d 	mov  %o5, %o1
   16880:	98 10 20 00 	clr  %o4
   16884:	9b 30 80 0b 	srl  %g2, %o3, %o5
   16888:	90 10 00 0c 	mov  %o4, %o0
   1688c:	92 10 00 0d 	mov  %o5, %o1
   16890:	81 c3 e0 08 	retl 
   16894:	01 00 00 00 	nop 

00016898 <__ashldi3>:
   16898:	82 10 20 20 	mov  0x20, %g1	! 20 <_init-0x10328>
   1689c:	84 10 00 08 	mov  %o0, %g2
   168a0:	86 10 00 09 	mov  %o1, %g3
   168a4:	80 a2 a0 00 	cmp  %o2, 0
   168a8:	02 80 00 10 	be  168e8 <__ashldi3+0x50>
   168ac:	82 20 40 0a 	sub  %g1, %o2, %g1
   168b0:	96 20 00 01 	neg  %g1, %o3
   168b4:	80 a0 60 00 	cmp  %g1, 0
   168b8:	89 28 80 0a 	sll  %g2, %o2, %g4
   168bc:	04 80 00 07 	ble  168d8 <__ashldi3+0x40>
   168c0:	83 30 c0 01 	srl  %g3, %g1, %g1
   168c4:	9b 28 c0 0a 	sll  %g3, %o2, %o5
   168c8:	98 11 00 01 	or  %g4, %g1, %o4
   168cc:	90 10 00 0c 	mov  %o4, %o0
   168d0:	10 80 00 06 	b  168e8 <__ashldi3+0x50>
   168d4:	92 10 00 0d 	mov  %o5, %o1
   168d8:	9a 10 20 00 	clr  %o5
   168dc:	99 28 c0 0b 	sll  %g3, %o3, %o4
   168e0:	90 10 00 0c 	mov  %o4, %o0
   168e4:	92 10 00 0d 	mov  %o5, %o1
   168e8:	81 c3 e0 08 	retl 
   168ec:	01 00 00 00 	nop 
   168f0:	81 c3 e0 08 	retl 
   168f4:	ae 03 c0 17 	add  %o7, %l7, %l7

000168f8 <__libc_csu_init>:
   168f8:	9d e3 bf 90 	save  %sp, -112, %sp
   168fc:	2f 00 00 45 	sethi  %hi(0x11400), %l7
   16900:	7f ff ff fc 	call  168f0 <__ashldi3+0x58>
   16904:	ae 05 e3 dc 	add  %l7, 0x3dc, %l7	! 117dc <Remove+0xb0>
   16908:	7f ff e6 90 	call  10348 <_init>
   1690c:	a0 10 20 00 	clr  %l0
   16910:	03 00 00 00 	sethi  %hi(0), %g1
   16914:	82 10 60 10 	or  %g1, 0x10, %g1	! 10 <_init-0x10338>
   16918:	07 00 00 00 	sethi  %hi(0), %g3
   1691c:	c4 05 c0 01 	ld  [ %l7 + %g1 ], %g2
   16920:	86 10 e0 18 	or  %g3, 0x18, %g3
   16924:	c2 05 c0 03 	ld  [ %l7 + %g3 ], %g1
   16928:	84 20 80 01 	sub  %g2, %g1, %g2
   1692c:	85 38 a0 02 	sra  %g2, 2, %g2
   16930:	80 a4 00 02 	cmp  %l0, %g2
   16934:	1a 80 00 0d 	bcc  16968 <__libc_csu_init+0x70>
   16938:	a4 10 00 01 	mov  %g1, %l2
   1693c:	a2 10 00 02 	mov  %g2, %l1
   16940:	83 2c 20 02 	sll  %l0, 2, %g1
   16944:	c4 04 80 01 	ld  [ %l2 + %g1 ], %g2
   16948:	90 10 00 18 	mov  %i0, %o0
   1694c:	92 10 00 19 	mov  %i1, %o1
   16950:	9f c0 80 00 	call  %g2
   16954:	94 10 00 1a 	mov  %i2, %o2
   16958:	a0 04 20 01 	inc  %l0
   1695c:	80 a4 00 11 	cmp  %l0, %l1
   16960:	0a bf ff f9 	bcs  16944 <__libc_csu_init+0x4c>
   16964:	83 2c 20 02 	sll  %l0, 2, %g1
   16968:	81 c7 e0 08 	ret 
   1696c:	81 e8 00 00 	restore 

00016970 <__libc_csu_fini>:
   16970:	81 c3 e0 08 	retl 
   16974:	01 00 00 00 	nop 

00016978 <__do_global_ctors_aux>:
   16978:	9d e3 bf 98 	save  %sp, -104, %sp
   1697c:	03 00 00 a0 	sethi  %hi(0x28000), %g1
   16980:	82 10 60 04 	or  %g1, 4, %g1	! 28004 <__CTOR_END__>
   16984:	c4 00 7f fc 	ld  [ %g1 + -4 ], %g2
   16988:	80 a0 bf ff 	cmp  %g2, -1
   1698c:	02 80 00 09 	be  169b0 <__do_global_ctors_aux+0x38>
   16990:	a0 00 7f fc 	add  %g1, -4, %l0
   16994:	82 10 00 02 	mov  %g2, %g1
   16998:	9f c0 40 00 	call  %g1
   1699c:	a0 04 3f fc 	add  %l0, -4, %l0
   169a0:	c2 04 00 00 	ld  [ %l0 ], %g1
   169a4:	80 a0 7f ff 	cmp  %g1, -1
   169a8:	12 bf ff fc 	bne  16998 <__do_global_ctors_aux+0x20>
   169ac:	01 00 00 00 	nop 
   169b0:	81 c7 e0 08 	ret 
   169b4:	81 e8 00 00 	restore 

000169b8 <call___do_global_ctors_aux>:
   169b8:	9d e3 bf 98 	save  %sp, -104, %sp
   169bc:	81 c7 e0 08 	ret 
   169c0:	81 e8 00 00 	restore 
Disassembly of section .fini:

000169c4 <_fini>:
   169c4:	9d e3 bf a0 	save  %sp, -96, %sp
   169c8:	7f ff e6 75 	call  1039c <__do_global_dtors_aux>
   169cc:	01 00 00 00 	nop 
   169d0:	81 c7 e0 08 	ret 
   169d4:	81 e8 00 00 	restore 
Disassembly of section .plt:

000280f8 <_PROCEDURE_LINKAGE_TABLE_>:
	...

00028128 <malloc@plt>:
   28128:	03 00 00 30 	sethi  %hi(0xc000), %g1
   2812c:	30 bf ff f3 	b,a   280f8 <_PROCEDURE_LINKAGE_TABLE_>
   28130:	01 00 00 00 	nop 

00028134 <__libc_start_main@plt>:
   28134:	03 00 00 3c 	sethi  %hi(0xf000), %g1
   28138:	30 bf ff f0 	b,a   280f8 <_PROCEDURE_LINKAGE_TABLE_>
   2813c:	01 00 00 00 	nop 

00028140 <times@plt>:
   28140:	03 00 00 48 	sethi  %hi(0x12000), %g1
   28144:	30 bf ff ed 	b,a   280f8 <_PROCEDURE_LINKAGE_TABLE_>
   28148:	01 00 00 00 	nop 

0002814c <printf@plt>:
   2814c:	03 00 00 54 	sethi  %hi(0x15000), %g1
   28150:	30 bf ff ea 	b,a   280f8 <_PROCEDURE_LINKAGE_TABLE_>
   28154:	01 00 00 00 	nop 
   28158:	01 00 00 00 	nop 
