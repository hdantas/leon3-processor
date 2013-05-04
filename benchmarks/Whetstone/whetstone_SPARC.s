
whetstone_SPARC.out:     file format elf32-sparc

Disassembly of section .init:

000105c0 <_init>:
   105c0:	9d e3 bf a0 	save  %sp, -96, %sp
   105c4:	40 00 00 2a 	call  1066c <frame_dummy>
   105c8:	01 00 00 00 	nop 
   105cc:	40 00 10 98 	call  1482c <__do_global_ctors_aux>
   105d0:	01 00 00 00 	nop 
   105d4:	81 c7 e0 08 	ret 
   105d8:	81 e8 00 00 	restore 
Disassembly of section .text:

000105dc <_start>:
   105dc:	bc 10 00 00 	mov  %g0, %fp
   105e0:	9c 23 a0 18 	sub  %sp, 0x18, %sp
   105e4:	d2 03 a0 58 	ld  [ %sp + 0x58 ], %o1
   105e8:	94 03 a0 5c 	add  %sp, 0x5c, %o2
   105ec:	11 00 00 41 	sethi  %hi(0x10400), %o0
   105f0:	17 00 00 51 	sethi  %hi(0x14400), %o3
   105f4:	19 00 00 52 	sethi  %hi(0x14800), %o4
   105f8:	90 12 22 b8 	or  %o0, 0x2b8, %o0
   105fc:	96 12 e3 ac 	or  %o3, 0x3ac, %o3
   10600:	98 13 20 24 	or  %o4, 0x24, %o4
   10604:	9a 10 00 01 	mov  %g1, %o5
   10608:	40 00 54 70 	call  257c8 <__libc_start_main@plt>
   1060c:	01 00 00 00 	nop 
   10610:	00 00 00 00 	unimp  0

00010614 <__do_global_dtors_aux>:
   10614:	9d e3 bf 98 	save  %sp, -104, %sp
   10618:	23 00 00 96 	sethi  %hi(0x25800), %l1
   1061c:	c2 0c 60 5c 	ldub  [ %l1 + 0x5c ], %g1	! 2585c <completed.1>
   10620:	80 a0 60 00 	cmp  %g1, 0
   10624:	12 80 00 0d 	bne  10658 <__do_global_dtors_aux+0x44>
   10628:	21 00 00 96 	sethi  %hi(0x25800), %l0
   1062c:	10 80 00 05 	b  10640 <__do_global_dtors_aux+0x2c>
   10630:	c2 04 20 54 	ld  [ %l0 + 0x54 ], %g1	! 25854 <p.0>
   10634:	9f c0 80 00 	call  %g2
   10638:	c2 24 20 54 	st  %g1, [ %l0 + 0x54 ]
   1063c:	c2 04 20 54 	ld  [ %l0 + 0x54 ], %g1
   10640:	c4 00 40 00 	ld  [ %g1 ], %g2
   10644:	80 a0 a0 00 	cmp  %g2, 0
   10648:	12 bf ff fb 	bne  10634 <__do_global_dtors_aux+0x20>
   1064c:	82 00 60 04 	add  %g1, 4, %g1
   10650:	82 10 20 01 	mov  1, %g1
   10654:	c2 2c 60 5c 	stb  %g1, [ %l1 + 0x5c ]
   10658:	81 c7 e0 08 	ret 
   1065c:	81 e8 00 00 	restore 

00010660 <call___do_global_dtors_aux>:
   10660:	9d e3 bf 98 	save  %sp, -104, %sp
   10664:	81 c7 e0 08 	ret 
   10668:	81 e8 00 00 	restore 

0001066c <frame_dummy>:
   1066c:	05 00 00 95 	sethi  %hi(0x25400), %g2
   10670:	c2 00 a2 70 	ld  [ %g2 + 0x270 ], %g1	! 25670 <__JCR_END__>
   10674:	80 a0 60 00 	cmp  %g1, 0
   10678:	02 80 00 0a 	be  106a0 <frame_dummy+0x34>
   1067c:	90 10 a2 70 	or  %g2, 0x270, %o0
   10680:	03 00 00 00 	sethi  %hi(0), %g1
   10684:	82 10 60 00 	mov  %g1, %g1	! 0 <_init-0x105c0>
   10688:	80 a0 60 00 	cmp  %g1, 0
   1068c:	02 80 00 05 	be  106a0 <frame_dummy+0x34>
   10690:	01 00 00 00 	nop 
   10694:	82 13 c0 00 	mov  %o7, %g1
   10698:	10 bf be 5a 	b  0 <_init-0x105c0>
   1069c:	01 00 00 00 	nop 
   106a0:	01 00 00 00 	nop 
   106a4:	81 c3 e0 08 	retl 
   106a8:	01 00 00 00 	nop 

000106ac <call_frame_dummy>:
   106ac:	9d e3 bf 98 	save  %sp, -104, %sp
   106b0:	81 c7 e0 08 	ret 
   106b4:	81 e8 00 00 	restore 

000106b8 <main>:
   106b8:	9d e3 ba f8 	save  %sp, -1288, %sp
   106bc:	82 10 20 0a 	mov  0xa, %g1
   106c0:	c2 27 bf f4 	st  %g1, [ %fp + -12 ]
   106c4:	82 10 20 01 	mov  1, %g1
   106c8:	c2 27 bf f0 	st  %g1, [ %fp + -16 ]
   106cc:	82 10 20 01 	mov  1, %g1
   106d0:	c2 27 bf ec 	st  %g1, [ %fp + -20 ]
   106d4:	82 10 20 64 	mov  0x64, %g1
   106d8:	c2 27 bf e4 	st  %g1, [ %fp + -28 ]
   106dc:	82 10 20 64 	mov  0x64, %g1
   106e0:	c2 27 bf e0 	st  %g1, [ %fp + -32 ]
   106e4:	03 00 00 52 	sethi  %hi(0x14800), %g1
   106e8:	82 10 60 98 	or  %g1, 0x98, %g1	! 14898 <_IO_stdin_used+0x8>
   106ec:	c2 10 40 00 	lduh  [ %g1 ], %g1
   106f0:	c2 37 bf 88 	sth  %g1, [ %fp + -120 ]
   106f4:	82 07 bf 8a 	add  %fp, -118, %g1
   106f8:	84 10 20 4e 	mov  0x4e, %g2
   106fc:	90 10 00 01 	mov  %g1, %o0
   10700:	92 10 20 00 	clr  %o1
   10704:	94 10 00 02 	mov  %g2, %o2
   10708:	40 00 54 42 	call  25810 <memset@plt>
   1070c:	01 00 00 00 	nop 
   10710:	03 00 00 52 	sethi  %hi(0x14800), %g1
   10714:	82 10 60 98 	or  %g1, 0x98, %g1	! 14898 <_IO_stdin_used+0x8>
   10718:	c2 10 40 00 	lduh  [ %g1 ], %g1
   1071c:	c2 37 be 88 	sth  %g1, [ %fp + -376 ]
   10720:	82 07 be 8a 	add  %fp, -374, %g1
   10724:	84 10 20 fe 	mov  0xfe, %g2
   10728:	90 10 00 01 	mov  %g1, %o0
   1072c:	92 10 20 00 	clr  %o1
   10730:	94 10 00 02 	mov  %g2, %o2
   10734:	40 00 54 37 	call  25810 <memset@plt>
   10738:	01 00 00 00 	nop 
   1073c:	03 00 00 52 	sethi  %hi(0x14800), %g1
   10740:	82 10 60 e8 	or  %g1, 0xe8, %g1	! 148e8 <_IO_stdin_used+0x58>
   10744:	84 07 bb 68 	add  %fp, -1176, %g2
   10748:	86 10 23 20 	mov  0x320, %g3
   1074c:	90 10 00 02 	mov  %g2, %o0
   10750:	92 10 00 01 	mov  %g1, %o1
   10754:	94 10 00 03 	mov  %g3, %o2
   10758:	40 00 54 22 	call  257e0 <memcpy@plt>
   1075c:	01 00 00 00 	nop 
   10760:	03 00 00 52 	sethi  %hi(0x14800), %g1
   10764:	82 10 60 98 	or  %g1, 0x98, %g1	! 14898 <_IO_stdin_used+0x8>
   10768:	c2 27 bb 64 	st  %g1, [ %fp + -1180 ]
   1076c:	03 00 00 53 	sethi  %hi(0x14c00), %g1
   10770:	82 10 60 08 	or  %g1, 8, %g1	! 14c08 <_IO_stdin_used+0x378>
   10774:	c2 27 bb 60 	st  %g1, [ %fp + -1184 ]
   10778:	03 00 00 53 	sethi  %hi(0x14c00), %g1
   1077c:	90 10 60 10 	or  %g1, 0x10, %o0	! 14c10 <_IO_stdin_used+0x380>
   10780:	40 00 54 2d 	call  25834 <printf@plt>
   10784:	01 00 00 00 	nop 
   10788:	03 00 00 53 	sethi  %hi(0x14c00), %g1
   1078c:	90 10 60 18 	or  %g1, 0x18, %o0	! 14c18 <_IO_stdin_used+0x388>
   10790:	40 00 54 29 	call  25834 <printf@plt>
   10794:	01 00 00 00 	nop 
   10798:	03 00 00 53 	sethi  %hi(0x14c00), %g1
   1079c:	90 10 60 48 	or  %g1, 0x48, %o0	! 14c48 <_IO_stdin_used+0x3b8>
   107a0:	03 00 00 53 	sethi  %hi(0x14c00), %g1
   107a4:	92 10 60 78 	or  %g1, 0x78, %o1	! 14c78 <_IO_stdin_used+0x3e8>
   107a8:	40 00 54 23 	call  25834 <printf@plt>
   107ac:	01 00 00 00 	nop 
   107b0:	03 00 00 96 	sethi  %hi(0x25800), %g1
   107b4:	82 10 60 58 	or  %g1, 0x58, %g1	! 25858 <__bss_start>
   107b8:	c2 00 40 00 	ld  [ %g1 ], %g1
   107bc:	c2 27 bf dc 	st  %g1, [ %fp + -36 ]
   107c0:	c2 07 bf dc 	ld  [ %fp + -36 ], %g1
   107c4:	80 a0 60 00 	cmp  %g1, 0
   107c8:	12 80 00 10 	bne  10808 <main+0x150>
   107cc:	01 00 00 00 	nop 
   107d0:	03 00 00 53 	sethi  %hi(0x14c00), %g1
   107d4:	90 10 60 80 	or  %g1, 0x80, %o0	! 14c80 <_IO_stdin_used+0x3f0>
   107d8:	40 00 54 17 	call  25834 <printf@plt>
   107dc:	01 00 00 00 	nop 
   107e0:	03 00 00 53 	sethi  %hi(0x14c00), %g1
   107e4:	90 10 60 a0 	or  %g1, 0xa0, %o0	! 14ca0 <_IO_stdin_used+0x410>
   107e8:	40 00 54 13 	call  25834 <printf@plt>
   107ec:	01 00 00 00 	nop 
   107f0:	d0 07 bb 64 	ld  [ %fp + -1180 ], %o0
   107f4:	40 00 53 ef 	call  257b0 <gets@plt>
   107f8:	01 00 00 00 	nop 
   107fc:	90 10 20 00 	clr  %o0	! 0 <_init-0x105c0>
   10800:	40 00 54 01 	call  25804 <exit@plt>
   10804:	01 00 00 00 	nop 
   10808:	03 00 00 53 	sethi  %hi(0x14c00), %g1
   1080c:	90 10 60 b8 	or  %g1, 0xb8, %o0	! 14cb8 <_IO_stdin_used+0x428>
   10810:	40 00 54 09 	call  25834 <printf@plt>
   10814:	01 00 00 00 	nop 
   10818:	03 00 00 96 	sethi  %hi(0x25800), %g1
   1081c:	84 10 60 cc 	or  %g1, 0xcc, %g2	! 258cc <TimeUsed>
   10820:	03 00 00 55 	sethi  %hi(0x15400), %g1
   10824:	82 10 60 a8 	or  %g1, 0xa8, %g1	! 154a8 <_IO_stdin_used+0xc18>
   10828:	c2 00 40 00 	ld  [ %g1 ], %g1
   1082c:	c2 20 80 00 	st  %g1, [ %g2 ]
   10830:	d0 07 bf ec 	ld  [ %fp + -20 ], %o0
   10834:	d2 07 bf e4 	ld  [ %fp + -28 ], %o1
   10838:	d4 07 bf f0 	ld  [ %fp + -16 ], %o2
   1083c:	40 00 03 02 	call  11444 <whetstones>
   10840:	01 00 00 00 	nop 
   10844:	03 00 00 96 	sethi  %hi(0x25800), %g1
   10848:	82 10 60 cc 	or  %g1, 0xcc, %g1	! 258cc <TimeUsed>
   1084c:	d0 00 40 00 	ld  [ %g1 ], %o0
   10850:	40 00 0b a5 	call  136e4 <__extendsfdf2>
   10854:	01 00 00 00 	nop 
   10858:	a0 10 00 08 	mov  %o0, %l0
   1085c:	a2 10 00 09 	mov  %o1, %l1
   10860:	d0 07 bf ec 	ld  [ %fp + -20 ], %o0
   10864:	40 00 0b 46 	call  1357c <__floatsisf>
   10868:	01 00 00 00 	nop 
   1086c:	82 10 00 08 	mov  %o0, %g1
   10870:	90 10 00 01 	mov  %g1, %o0
   10874:	40 00 0b 9c 	call  136e4 <__extendsfdf2>
   10878:	01 00 00 00 	nop 
   1087c:	84 10 00 08 	mov  %o0, %g2
   10880:	86 10 00 09 	mov  %o1, %g3
   10884:	03 00 00 53 	sethi  %hi(0x14c00), %g1
   10888:	90 10 60 c8 	or  %g1, 0xc8, %o0	! 14cc8 <_IO_stdin_used+0x438>
   1088c:	92 10 00 10 	mov  %l0, %o1
   10890:	94 10 00 11 	mov  %l1, %o2
   10894:	96 10 00 02 	mov  %g2, %o3
   10898:	98 10 00 03 	mov  %g3, %o4
   1089c:	40 00 53 e6 	call  25834 <printf@plt>
   108a0:	01 00 00 00 	nop 
   108a4:	c2 07 bf f0 	ld  [ %fp + -16 ], %g1
   108a8:	82 00 60 01 	inc  %g1
   108ac:	c2 27 bf f0 	st  %g1, [ %fp + -16 ]
   108b0:	c2 07 bf f4 	ld  [ %fp + -12 ], %g1
   108b4:	82 00 7f ff 	add  %g1, -1, %g1
   108b8:	c2 27 bf f4 	st  %g1, [ %fp + -12 ]
   108bc:	03 00 00 96 	sethi  %hi(0x25800), %g1
   108c0:	84 10 60 cc 	or  %g1, 0xcc, %g2	! 258cc <TimeUsed>
   108c4:	03 00 00 55 	sethi  %hi(0x15400), %g1
   108c8:	82 10 60 ac 	or  %g1, 0xac, %g1	! 154ac <_IO_stdin_used+0xc1c>
   108cc:	d0 00 80 00 	ld  [ %g2 ], %o0
   108d0:	d2 00 40 00 	ld  [ %g1 ], %o1
   108d4:	40 00 0b 0f 	call  13510 <__gtsf2>
   108d8:	01 00 00 00 	nop 
   108dc:	82 10 00 08 	mov  %o0, %g1
   108e0:	80 a0 60 00 	cmp  %g1, 0
   108e4:	14 80 00 04 	bg  108f4 <main+0x23c>
   108e8:	01 00 00 00 	nop 
   108ec:	10 80 00 05 	b  10900 <main+0x248>
   108f0:	01 00 00 00 	nop 
   108f4:	c0 27 bf f4 	clr  [ %fp + -12 ]
   108f8:	10 80 00 07 	b  10914 <main+0x25c>
   108fc:	01 00 00 00 	nop 
   10900:	c4 07 bf ec 	ld  [ %fp + -20 ], %g2
   10904:	82 10 00 02 	mov  %g2, %g1
   10908:	83 28 60 02 	sll  %g1, 2, %g1
   1090c:	82 00 40 02 	add  %g1, %g2, %g1
   10910:	c2 27 bf ec 	st  %g1, [ %fp + -20 ]
   10914:	c2 07 bf f4 	ld  [ %fp + -12 ], %g1
   10918:	80 a0 60 00 	cmp  %g1, 0
   1091c:	04 80 00 04 	ble  1092c <main+0x274>
   10920:	01 00 00 00 	nop 
   10924:	10 bf ff bd 	b  10818 <main+0x160>
   10928:	01 00 00 00 	nop 
   1092c:	03 00 00 96 	sethi  %hi(0x25800), %g1
   10930:	84 10 60 cc 	or  %g1, 0xcc, %g2	! 258cc <TimeUsed>
   10934:	03 00 00 55 	sethi  %hi(0x15400), %g1
   10938:	82 10 60 a8 	or  %g1, 0xa8, %g1	! 154a8 <_IO_stdin_used+0xc18>
   1093c:	d0 00 80 00 	ld  [ %g2 ], %o0
   10940:	d2 00 40 00 	ld  [ %g1 ], %o1
   10944:	40 00 0a f3 	call  13510 <__gtsf2>
   10948:	01 00 00 00 	nop 
   1094c:	82 10 00 08 	mov  %o0, %g1
   10950:	80 a0 60 00 	cmp  %g1, 0
   10954:	14 80 00 04 	bg  10964 <main+0x2ac>
   10958:	01 00 00 00 	nop 
   1095c:	10 80 00 15 	b  109b0 <main+0x2f8>
   10960:	01 00 00 00 	nop 
   10964:	c4 07 bf e0 	ld  [ %fp + -32 ], %g2
   10968:	c2 07 bf ec 	ld  [ %fp + -20 ], %g1
   1096c:	82 58 80 01 	smul  %g2, %g1, %g1
   10970:	90 10 00 01 	mov  %g1, %o0
   10974:	40 00 0b 02 	call  1357c <__floatsisf>
   10978:	01 00 00 00 	nop 
   1097c:	84 10 00 08 	mov  %o0, %g2
   10980:	03 00 00 96 	sethi  %hi(0x25800), %g1
   10984:	82 10 60 cc 	or  %g1, 0xcc, %g1	! 258cc <TimeUsed>
   10988:	90 10 00 02 	mov  %g2, %o0
   1098c:	d2 00 40 00 	ld  [ %g1 ], %o1
   10990:	40 00 0a 6b 	call  1333c <__divsf3>
   10994:	01 00 00 00 	nop 
   10998:	82 10 00 08 	mov  %o0, %g1
   1099c:	90 10 00 01 	mov  %g1, %o0
   109a0:	40 00 0b 28 	call  13640 <__fixsfsi>
   109a4:	01 00 00 00 	nop 
   109a8:	82 10 00 08 	mov  %o0, %g1
   109ac:	c2 27 bf ec 	st  %g1, [ %fp + -20 ]
   109b0:	c2 07 bf ec 	ld  [ %fp + -20 ], %g1
   109b4:	80 a0 60 00 	cmp  %g1, 0
   109b8:	14 80 00 04 	bg  109c8 <main+0x310>
   109bc:	01 00 00 00 	nop 
   109c0:	82 10 20 01 	mov  1, %g1	! 1 <_init-0x105bf>
   109c4:	c2 27 bf ec 	st  %g1, [ %fp + -20 ]
   109c8:	c0 27 bf f0 	clr  [ %fp + -16 ]
   109cc:	03 00 00 53 	sethi  %hi(0x14c00), %g1
   109d0:	90 10 60 f8 	or  %g1, 0xf8, %o0	! 14cf8 <_IO_stdin_used+0x468>
   109d4:	d2 07 bf ec 	ld  [ %fp + -20 ], %o1
   109d8:	40 00 53 97 	call  25834 <printf@plt>
   109dc:	01 00 00 00 	nop 
   109e0:	03 00 00 53 	sethi  %hi(0x14c00), %g1
   109e4:	90 10 61 18 	or  %g1, 0x118, %o0	! 14d18 <_IO_stdin_used+0x488>
   109e8:	03 00 00 53 	sethi  %hi(0x14c00), %g1
   109ec:	92 10 60 78 	or  %g1, 0x78, %o1	! 14c78 <_IO_stdin_used+0x3e8>
   109f0:	40 00 53 91 	call  25834 <printf@plt>
   109f4:	01 00 00 00 	nop 
   109f8:	03 00 00 53 	sethi  %hi(0x14c00), %g1
   109fc:	90 10 60 10 	or  %g1, 0x10, %o0	! 14c10 <_IO_stdin_used+0x380>
   10a00:	40 00 53 8d 	call  25834 <printf@plt>
   10a04:	01 00 00 00 	nop 
   10a08:	03 00 00 53 	sethi  %hi(0x14c00), %g1
   10a0c:	90 10 61 50 	or  %g1, 0x150, %o0	! 14d50 <_IO_stdin_used+0x4c0>
   10a10:	40 00 53 89 	call  25834 <printf@plt>
   10a14:	01 00 00 00 	nop 
   10a18:	03 00 00 96 	sethi  %hi(0x25800), %g1
   10a1c:	84 10 60 cc 	or  %g1, 0xcc, %g2	! 258cc <TimeUsed>
   10a20:	03 00 00 55 	sethi  %hi(0x15400), %g1
   10a24:	82 10 60 a8 	or  %g1, 0xa8, %g1	! 154a8 <_IO_stdin_used+0xc18>
   10a28:	c2 00 40 00 	ld  [ %g1 ], %g1
   10a2c:	c2 20 80 00 	st  %g1, [ %g2 ]
   10a30:	d0 07 bf ec 	ld  [ %fp + -20 ], %o0
   10a34:	d2 07 bf e4 	ld  [ %fp + -28 ], %o1
   10a38:	d4 07 bf f0 	ld  [ %fp + -16 ], %o2
   10a3c:	40 00 02 82 	call  11444 <whetstones>
   10a40:	01 00 00 00 	nop 
   10a44:	03 00 00 53 	sethi  %hi(0x14c00), %g1
   10a48:	90 10 61 a0 	or  %g1, 0x1a0, %o0	! 14da0 <_IO_stdin_used+0x510>
   10a4c:	40 00 53 7a 	call  25834 <printf@plt>
   10a50:	01 00 00 00 	nop 
   10a54:	03 00 00 96 	sethi  %hi(0x25800), %g1
   10a58:	84 10 60 cc 	or  %g1, 0xcc, %g2	! 258cc <TimeUsed>
   10a5c:	03 00 00 55 	sethi  %hi(0x15400), %g1
   10a60:	82 10 60 a8 	or  %g1, 0xa8, %g1	! 154a8 <_IO_stdin_used+0xc18>
   10a64:	d0 00 80 00 	ld  [ %g2 ], %o0
   10a68:	d2 00 40 00 	ld  [ %g1 ], %o1
   10a6c:	40 00 0a a9 	call  13510 <__gtsf2>
   10a70:	01 00 00 00 	nop 
   10a74:	82 10 00 08 	mov  %o0, %g1
   10a78:	80 a0 60 00 	cmp  %g1, 0
   10a7c:	14 80 00 04 	bg  10a8c <main+0x3d4>
   10a80:	01 00 00 00 	nop 
   10a84:	10 80 00 22 	b  10b0c <main+0x454>
   10a88:	01 00 00 00 	nop 
   10a8c:	03 00 00 96 	sethi  %hi(0x25800), %g1
   10a90:	a2 10 60 d0 	or  %g1, 0xd0, %l1	! 258d0 <mwips>
   10a94:	d0 07 bf ec 	ld  [ %fp + -20 ], %o0
   10a98:	40 00 0a b9 	call  1357c <__floatsisf>
   10a9c:	01 00 00 00 	nop 
   10aa0:	a0 10 00 08 	mov  %o0, %l0
   10aa4:	d0 07 bf e4 	ld  [ %fp + -28 ], %o0
   10aa8:	40 00 0a b5 	call  1357c <__floatsisf>
   10aac:	01 00 00 00 	nop 
   10ab0:	82 10 00 08 	mov  %o0, %g1
   10ab4:	90 10 00 10 	mov  %l0, %o0
   10ab8:	92 10 00 01 	mov  %g1, %o1
   10abc:	40 00 09 a4 	call  1314c <__mulsf3>
   10ac0:	01 00 00 00 	nop 
   10ac4:	a0 10 00 08 	mov  %o0, %l0
   10ac8:	03 00 00 96 	sethi  %hi(0x25800), %g1
   10acc:	84 10 60 cc 	or  %g1, 0xcc, %g2	! 258cc <TimeUsed>
   10ad0:	03 00 00 55 	sethi  %hi(0x15400), %g1
   10ad4:	82 10 60 b0 	or  %g1, 0xb0, %g1	! 154b0 <_IO_stdin_used+0xc20>
   10ad8:	d0 00 80 00 	ld  [ %g2 ], %o0
   10adc:	d2 00 40 00 	ld  [ %g1 ], %o1
   10ae0:	40 00 09 9b 	call  1314c <__mulsf3>
   10ae4:	01 00 00 00 	nop 
   10ae8:	82 10 00 08 	mov  %o0, %g1
   10aec:	90 10 00 10 	mov  %l0, %o0
   10af0:	92 10 00 01 	mov  %g1, %o1
   10af4:	40 00 0a 12 	call  1333c <__divsf3>
   10af8:	01 00 00 00 	nop 
   10afc:	82 10 00 08 	mov  %o0, %g1
   10b00:	c2 24 40 00 	st  %g1, [ %l1 ]
   10b04:	10 80 00 08 	b  10b24 <main+0x46c>
   10b08:	01 00 00 00 	nop 
   10b0c:	03 00 00 96 	sethi  %hi(0x25800), %g1
   10b10:	84 10 60 d0 	or  %g1, 0xd0, %g2	! 258d0 <mwips>
   10b14:	03 00 00 55 	sethi  %hi(0x15400), %g1
   10b18:	82 10 60 a8 	or  %g1, 0xa8, %g1	! 154a8 <_IO_stdin_used+0xc18>
   10b1c:	c2 00 40 00 	ld  [ %g1 ], %g1
   10b20:	c2 20 80 00 	st  %g1, [ %g2 ]
   10b24:	03 00 00 96 	sethi  %hi(0x25800), %g1
   10b28:	82 10 60 d0 	or  %g1, 0xd0, %g1	! 258d0 <mwips>
   10b2c:	d0 00 40 00 	ld  [ %g1 ], %o0
   10b30:	40 00 0a ed 	call  136e4 <__extendsfdf2>
   10b34:	01 00 00 00 	nop 
   10b38:	a0 10 00 08 	mov  %o0, %l0
   10b3c:	a2 10 00 09 	mov  %o1, %l1
   10b40:	03 00 00 96 	sethi  %hi(0x25800), %g1
   10b44:	82 10 60 cc 	or  %g1, 0xcc, %g1	! 258cc <TimeUsed>
   10b48:	d0 00 40 00 	ld  [ %g1 ], %o0
   10b4c:	40 00 0a e6 	call  136e4 <__extendsfdf2>
   10b50:	01 00 00 00 	nop 
   10b54:	84 10 00 08 	mov  %o0, %g2
   10b58:	86 10 00 09 	mov  %o1, %g3
   10b5c:	03 00 00 53 	sethi  %hi(0x14c00), %g1
   10b60:	90 10 61 b8 	or  %g1, 0x1b8, %o0	! 14db8 <_IO_stdin_used+0x528>
   10b64:	92 10 00 10 	mov  %l0, %o1
   10b68:	94 10 00 11 	mov  %l1, %o2
   10b6c:	96 10 00 02 	mov  %g2, %o3
   10b70:	98 10 00 03 	mov  %g3, %o4
   10b74:	40 00 53 30 	call  25834 <printf@plt>
   10b78:	01 00 00 00 	nop 
   10b7c:	03 00 00 96 	sethi  %hi(0x25800), %g1
   10b80:	84 10 61 78 	or  %g1, 0x178, %g2	! 25978 <Check>
   10b84:	03 00 00 55 	sethi  %hi(0x15400), %g1
   10b88:	82 10 60 a8 	or  %g1, 0xa8, %g1	! 154a8 <_IO_stdin_used+0xc18>
   10b8c:	d0 00 80 00 	ld  [ %g2 ], %o0
   10b90:	d2 00 40 00 	ld  [ %g1 ], %o1
   10b94:	40 00 0a 46 	call  134ac <__eqsf2>
   10b98:	01 00 00 00 	nop 
   10b9c:	82 10 00 08 	mov  %o0, %g1
   10ba0:	80 a0 60 00 	cmp  %g1, 0
   10ba4:	02 80 00 04 	be  10bb4 <main+0x4fc>
   10ba8:	01 00 00 00 	nop 
   10bac:	10 80 00 06 	b  10bc4 <main+0x50c>
   10bb0:	01 00 00 00 	nop 
   10bb4:	03 00 00 53 	sethi  %hi(0x14c00), %g1
   10bb8:	90 10 61 c8 	or  %g1, 0x1c8, %o0	! 14dc8 <_IO_stdin_used+0x538>
   10bbc:	40 00 53 1e 	call  25834 <printf@plt>
   10bc0:	01 00 00 00 	nop 
   10bc4:	c2 07 bb 60 	ld  [ %fp + -1184 ], %g1
   10bc8:	05 00 00 53 	sethi  %hi(0x14c00), %g2
   10bcc:	84 10 a1 d8 	or  %g2, 0x1d8, %g2	! 14dd8 <_IO_stdin_used+0x548>
   10bd0:	80 a0 40 02 	cmp  %g1, %g2
   10bd4:	12 80 00 7b 	bne  10dc0 <main+0x708>
   10bd8:	01 00 00 00 	nop 
   10bdc:	03 00 00 53 	sethi  %hi(0x14c00), %g1
   10be0:	90 10 61 e0 	or  %g1, 0x1e0, %o0	! 14de0 <_IO_stdin_used+0x550>
   10be4:	40 00 53 14 	call  25834 <printf@plt>
   10be8:	01 00 00 00 	nop 
   10bec:	03 00 00 53 	sethi  %hi(0x14c00), %g1
   10bf0:	90 10 62 28 	or  %g1, 0x228, %o0	! 14e28 <_IO_stdin_used+0x598>
   10bf4:	40 00 53 10 	call  25834 <printf@plt>
   10bf8:	01 00 00 00 	nop 
   10bfc:	03 00 00 53 	sethi  %hi(0x14c00), %g1
   10c00:	90 10 62 70 	or  %g1, 0x270, %o0	! 14e70 <_IO_stdin_used+0x5e0>
   10c04:	40 00 53 0c 	call  25834 <printf@plt>
   10c08:	01 00 00 00 	nop 
   10c0c:	03 00 00 53 	sethi  %hi(0x14c00), %g1
   10c10:	90 10 62 b8 	or  %g1, 0x2b8, %o0	! 14eb8 <_IO_stdin_used+0x628>
   10c14:	40 00 53 08 	call  25834 <printf@plt>
   10c18:	01 00 00 00 	nop 
   10c1c:	03 00 00 53 	sethi  %hi(0x14c00), %g1
   10c20:	90 10 63 08 	or  %g1, 0x308, %o0	! 14f08 <_IO_stdin_used+0x678>
   10c24:	40 00 53 04 	call  25834 <printf@plt>
   10c28:	01 00 00 00 	nop 
   10c2c:	82 07 bb 68 	add  %fp, -1176, %g1
   10c30:	90 10 00 01 	mov  %g1, %o0
   10c34:	40 00 52 df 	call  257b0 <gets@plt>
   10c38:	01 00 00 00 	nop 
   10c3c:	03 00 00 53 	sethi  %hi(0x14c00), %g1
   10c40:	90 10 63 18 	or  %g1, 0x318, %o0	! 14f18 <_IO_stdin_used+0x688>
   10c44:	40 00 52 fc 	call  25834 <printf@plt>
   10c48:	01 00 00 00 	nop 
   10c4c:	82 07 bb 68 	add  %fp, -1176, %g1
   10c50:	82 00 60 50 	add  %g1, 0x50, %g1
   10c54:	90 10 00 01 	mov  %g1, %o0
   10c58:	40 00 52 d6 	call  257b0 <gets@plt>
   10c5c:	01 00 00 00 	nop 
   10c60:	03 00 00 53 	sethi  %hi(0x14c00), %g1
   10c64:	90 10 63 28 	or  %g1, 0x328, %o0	! 14f28 <_IO_stdin_used+0x698>
   10c68:	40 00 52 f3 	call  25834 <printf@plt>
   10c6c:	01 00 00 00 	nop 
   10c70:	82 07 bb 68 	add  %fp, -1176, %g1
   10c74:	82 00 60 a0 	add  %g1, 0xa0, %g1
   10c78:	90 10 00 01 	mov  %g1, %o0
   10c7c:	40 00 52 cd 	call  257b0 <gets@plt>
   10c80:	01 00 00 00 	nop 
   10c84:	03 00 00 53 	sethi  %hi(0x14c00), %g1
   10c88:	90 10 63 38 	or  %g1, 0x338, %o0	! 14f38 <_IO_stdin_used+0x6a8>
   10c8c:	40 00 52 ea 	call  25834 <printf@plt>
   10c90:	01 00 00 00 	nop 
   10c94:	82 07 bb 68 	add  %fp, -1176, %g1
   10c98:	82 00 60 f0 	add  %g1, 0xf0, %g1
   10c9c:	90 10 00 01 	mov  %g1, %o0
   10ca0:	40 00 52 c4 	call  257b0 <gets@plt>
   10ca4:	01 00 00 00 	nop 
   10ca8:	03 00 00 53 	sethi  %hi(0x14c00), %g1
   10cac:	90 10 63 48 	or  %g1, 0x348, %o0	! 14f48 <_IO_stdin_used+0x6b8>
   10cb0:	40 00 52 e1 	call  25834 <printf@plt>
   10cb4:	01 00 00 00 	nop 
   10cb8:	82 07 bb 68 	add  %fp, -1176, %g1
   10cbc:	82 00 61 40 	add  %g1, 0x140, %g1
   10cc0:	90 10 00 01 	mov  %g1, %o0
   10cc4:	40 00 52 bb 	call  257b0 <gets@plt>
   10cc8:	01 00 00 00 	nop 
   10ccc:	03 00 00 53 	sethi  %hi(0x14c00), %g1
   10cd0:	90 10 63 58 	or  %g1, 0x358, %o0	! 14f58 <_IO_stdin_used+0x6c8>
   10cd4:	40 00 52 d8 	call  25834 <printf@plt>
   10cd8:	01 00 00 00 	nop 
   10cdc:	82 07 bb 68 	add  %fp, -1176, %g1
   10ce0:	82 00 61 90 	add  %g1, 0x190, %g1
   10ce4:	90 10 00 01 	mov  %g1, %o0
   10ce8:	40 00 52 b2 	call  257b0 <gets@plt>
   10cec:	01 00 00 00 	nop 
   10cf0:	03 00 00 53 	sethi  %hi(0x14c00), %g1
   10cf4:	90 10 63 68 	or  %g1, 0x368, %o0	! 14f68 <_IO_stdin_used+0x6d8>
   10cf8:	40 00 52 cf 	call  25834 <printf@plt>
   10cfc:	01 00 00 00 	nop 
   10d00:	82 07 bb 68 	add  %fp, -1176, %g1
   10d04:	82 00 61 e0 	add  %g1, 0x1e0, %g1
   10d08:	90 10 00 01 	mov  %g1, %o0
   10d0c:	40 00 52 a9 	call  257b0 <gets@plt>
   10d10:	01 00 00 00 	nop 
   10d14:	03 00 00 53 	sethi  %hi(0x14c00), %g1
   10d18:	90 10 63 78 	or  %g1, 0x378, %o0	! 14f78 <_IO_stdin_used+0x6e8>
   10d1c:	40 00 52 c6 	call  25834 <printf@plt>
   10d20:	01 00 00 00 	nop 
   10d24:	82 07 bf 88 	add  %fp, -120, %g1
   10d28:	90 10 00 01 	mov  %g1, %o0
   10d2c:	40 00 52 a1 	call  257b0 <gets@plt>
   10d30:	01 00 00 00 	nop 
   10d34:	03 00 00 53 	sethi  %hi(0x14c00), %g1
   10d38:	90 10 63 88 	or  %g1, 0x388, %o0	! 14f88 <_IO_stdin_used+0x6f8>
   10d3c:	40 00 52 be 	call  25834 <printf@plt>
   10d40:	01 00 00 00 	nop 
   10d44:	82 07 be 88 	add  %fp, -376, %g1
   10d48:	90 10 00 01 	mov  %g1, %o0
   10d4c:	40 00 52 99 	call  257b0 <gets@plt>
   10d50:	01 00 00 00 	nop 
   10d54:	03 00 00 53 	sethi  %hi(0x14c00), %g1
   10d58:	90 10 63 98 	or  %g1, 0x398, %o0	! 14f98 <_IO_stdin_used+0x708>
   10d5c:	40 00 52 b6 	call  25834 <printf@plt>
   10d60:	01 00 00 00 	nop 
   10d64:	82 07 bb 68 	add  %fp, -1176, %g1
   10d68:	82 00 62 30 	add  %g1, 0x230, %g1
   10d6c:	90 10 00 01 	mov  %g1, %o0
   10d70:	40 00 52 90 	call  257b0 <gets@plt>
   10d74:	01 00 00 00 	nop 
   10d78:	03 00 00 53 	sethi  %hi(0x14c00), %g1
   10d7c:	90 10 63 a8 	or  %g1, 0x3a8, %o0	! 14fa8 <_IO_stdin_used+0x718>
   10d80:	40 00 52 ad 	call  25834 <printf@plt>
   10d84:	01 00 00 00 	nop 
   10d88:	82 07 bb 68 	add  %fp, -1176, %g1
   10d8c:	82 00 62 80 	add  %g1, 0x280, %g1
   10d90:	90 10 00 01 	mov  %g1, %o0
   10d94:	40 00 52 87 	call  257b0 <gets@plt>
   10d98:	01 00 00 00 	nop 
   10d9c:	03 00 00 53 	sethi  %hi(0x14c00), %g1
   10da0:	90 10 63 b8 	or  %g1, 0x3b8, %o0	! 14fb8 <_IO_stdin_used+0x728>
   10da4:	40 00 52 a4 	call  25834 <printf@plt>
   10da8:	01 00 00 00 	nop 
   10dac:	82 07 bb 68 	add  %fp, -1176, %g1
   10db0:	82 00 62 d0 	add  %g1, 0x2d0, %g1
   10db4:	90 10 00 01 	mov  %g1, %o0
   10db8:	40 00 52 7e 	call  257b0 <gets@plt>
   10dbc:	01 00 00 00 	nop 
   10dc0:	d0 07 bf dc 	ld  [ %fp + -36 ], %o0
   10dc4:	03 00 00 53 	sethi  %hi(0x14c00), %g1
   10dc8:	92 10 60 10 	or  %g1, 0x10, %o1	! 14c10 <_IO_stdin_used+0x380>
   10dcc:	40 00 52 7c 	call  257bc <fprintf@plt>
   10dd0:	01 00 00 00 	nop 
   10dd4:	d0 07 bf dc 	ld  [ %fp + -36 ], %o0
   10dd8:	03 00 00 53 	sethi  %hi(0x14c00), %g1
   10ddc:	92 10 63 c8 	or  %g1, 0x3c8, %o1	! 14fc8 <_IO_stdin_used+0x738>
   10de0:	40 00 52 77 	call  257bc <fprintf@plt>
   10de4:	01 00 00 00 	nop 
   10de8:	d0 07 bf dc 	ld  [ %fp + -36 ], %o0
   10dec:	03 00 00 53 	sethi  %hi(0x14c00), %g1
   10df0:	92 10 63 f8 	or  %g1, 0x3f8, %o1	! 14ff8 <_IO_stdin_used+0x768>
   10df4:	03 00 00 53 	sethi  %hi(0x14c00), %g1
   10df8:	94 10 60 78 	or  %g1, 0x78, %o2	! 14c78 <_IO_stdin_used+0x3e8>
   10dfc:	40 00 52 70 	call  257bc <fprintf@plt>
   10e00:	01 00 00 00 	nop 
   10e04:	84 07 bb 68 	add  %fp, -1176, %g2
   10e08:	d0 07 bf dc 	ld  [ %fp + -36 ], %o0
   10e0c:	03 00 00 54 	sethi  %hi(0x15000), %g1
   10e10:	92 10 60 28 	or  %g1, 0x28, %o1	! 15028 <_IO_stdin_used+0x798>
   10e14:	94 10 00 02 	mov  %g2, %o2
   10e18:	40 00 52 69 	call  257bc <fprintf@plt>
   10e1c:	01 00 00 00 	nop 
   10e20:	82 07 bb 68 	add  %fp, -1176, %g1
   10e24:	84 00 60 50 	add  %g1, 0x50, %g2
   10e28:	d0 07 bf dc 	ld  [ %fp + -36 ], %o0
   10e2c:	03 00 00 54 	sethi  %hi(0x15000), %g1
   10e30:	92 10 60 40 	or  %g1, 0x40, %o1	! 15040 <_IO_stdin_used+0x7b0>
   10e34:	94 10 00 02 	mov  %g2, %o2
   10e38:	40 00 52 61 	call  257bc <fprintf@plt>
   10e3c:	01 00 00 00 	nop 
   10e40:	82 07 bb 68 	add  %fp, -1176, %g1
   10e44:	84 00 60 a0 	add  %g1, 0xa0, %g2
   10e48:	d0 07 bf dc 	ld  [ %fp + -36 ], %o0
   10e4c:	03 00 00 54 	sethi  %hi(0x15000), %g1
   10e50:	92 10 60 58 	or  %g1, 0x58, %o1	! 15058 <_IO_stdin_used+0x7c8>
   10e54:	94 10 00 02 	mov  %g2, %o2
   10e58:	40 00 52 59 	call  257bc <fprintf@plt>
   10e5c:	01 00 00 00 	nop 
   10e60:	82 07 bb 68 	add  %fp, -1176, %g1
   10e64:	84 00 60 f0 	add  %g1, 0xf0, %g2
   10e68:	d0 07 bf dc 	ld  [ %fp + -36 ], %o0
   10e6c:	03 00 00 54 	sethi  %hi(0x15000), %g1
   10e70:	92 10 60 70 	or  %g1, 0x70, %o1	! 15070 <_IO_stdin_used+0x7e0>
   10e74:	94 10 00 02 	mov  %g2, %o2
   10e78:	40 00 52 51 	call  257bc <fprintf@plt>
   10e7c:	01 00 00 00 	nop 
   10e80:	82 07 bb 68 	add  %fp, -1176, %g1
   10e84:	84 00 61 40 	add  %g1, 0x140, %g2
   10e88:	d0 07 bf dc 	ld  [ %fp + -36 ], %o0
   10e8c:	03 00 00 54 	sethi  %hi(0x15000), %g1
   10e90:	92 10 60 88 	or  %g1, 0x88, %o1	! 15088 <_IO_stdin_used+0x7f8>
   10e94:	94 10 00 02 	mov  %g2, %o2
   10e98:	40 00 52 49 	call  257bc <fprintf@plt>
   10e9c:	01 00 00 00 	nop 
   10ea0:	82 07 bb 68 	add  %fp, -1176, %g1
   10ea4:	84 00 61 90 	add  %g1, 0x190, %g2
   10ea8:	d0 07 bf dc 	ld  [ %fp + -36 ], %o0
   10eac:	03 00 00 54 	sethi  %hi(0x15000), %g1
   10eb0:	92 10 60 a0 	or  %g1, 0xa0, %o1	! 150a0 <_IO_stdin_used+0x810>
   10eb4:	94 10 00 02 	mov  %g2, %o2
   10eb8:	40 00 52 41 	call  257bc <fprintf@plt>
   10ebc:	01 00 00 00 	nop 
   10ec0:	82 07 bb 68 	add  %fp, -1176, %g1
   10ec4:	84 00 61 e0 	add  %g1, 0x1e0, %g2
   10ec8:	d0 07 bf dc 	ld  [ %fp + -36 ], %o0
   10ecc:	03 00 00 54 	sethi  %hi(0x15000), %g1
   10ed0:	92 10 60 b8 	or  %g1, 0xb8, %o1	! 150b8 <_IO_stdin_used+0x828>
   10ed4:	94 10 00 02 	mov  %g2, %o2
   10ed8:	40 00 52 39 	call  257bc <fprintf@plt>
   10edc:	01 00 00 00 	nop 
   10ee0:	84 07 bf 88 	add  %fp, -120, %g2
   10ee4:	d0 07 bf dc 	ld  [ %fp + -36 ], %o0
   10ee8:	03 00 00 54 	sethi  %hi(0x15000), %g1
   10eec:	92 10 60 d0 	or  %g1, 0xd0, %o1	! 150d0 <_IO_stdin_used+0x840>
   10ef0:	94 10 00 02 	mov  %g2, %o2
   10ef4:	40 00 52 32 	call  257bc <fprintf@plt>
   10ef8:	01 00 00 00 	nop 
   10efc:	84 07 be 88 	add  %fp, -376, %g2
   10f00:	d0 07 bf dc 	ld  [ %fp + -36 ], %o0
   10f04:	03 00 00 54 	sethi  %hi(0x15000), %g1
   10f08:	92 10 60 e8 	or  %g1, 0xe8, %o1	! 150e8 <_IO_stdin_used+0x858>
   10f0c:	94 10 00 02 	mov  %g2, %o2
   10f10:	40 00 52 2b 	call  257bc <fprintf@plt>
   10f14:	01 00 00 00 	nop 
   10f18:	82 07 bb 68 	add  %fp, -1176, %g1
   10f1c:	84 00 62 30 	add  %g1, 0x230, %g2
   10f20:	d0 07 bf dc 	ld  [ %fp + -36 ], %o0
   10f24:	03 00 00 54 	sethi  %hi(0x15000), %g1
   10f28:	92 10 61 00 	or  %g1, 0x100, %o1	! 15100 <_IO_stdin_used+0x870>
   10f2c:	94 10 00 02 	mov  %g2, %o2
   10f30:	40 00 52 23 	call  257bc <fprintf@plt>
   10f34:	01 00 00 00 	nop 
   10f38:	82 07 bb 68 	add  %fp, -1176, %g1
   10f3c:	84 00 62 80 	add  %g1, 0x280, %g2
   10f40:	d0 07 bf dc 	ld  [ %fp + -36 ], %o0
   10f44:	03 00 00 54 	sethi  %hi(0x15000), %g1
   10f48:	92 10 61 18 	or  %g1, 0x118, %o1	! 15118 <_IO_stdin_used+0x888>
   10f4c:	94 10 00 02 	mov  %g2, %o2
   10f50:	40 00 52 1b 	call  257bc <fprintf@plt>
   10f54:	01 00 00 00 	nop 
   10f58:	82 07 bb 68 	add  %fp, -1176, %g1
   10f5c:	84 00 62 d0 	add  %g1, 0x2d0, %g2
   10f60:	d0 07 bf dc 	ld  [ %fp + -36 ], %o0
   10f64:	03 00 00 54 	sethi  %hi(0x15000), %g1
   10f68:	92 10 61 30 	or  %g1, 0x130, %o1	! 15130 <_IO_stdin_used+0x8a0>
   10f6c:	94 10 00 02 	mov  %g2, %o2
   10f70:	40 00 52 13 	call  257bc <fprintf@plt>
   10f74:	01 00 00 00 	nop 
   10f78:	d0 07 bf dc 	ld  [ %fp + -36 ], %o0
   10f7c:	03 00 00 53 	sethi  %hi(0x14c00), %g1
   10f80:	92 10 60 10 	or  %g1, 0x10, %o1	! 14c10 <_IO_stdin_used+0x380>
   10f84:	40 00 52 0e 	call  257bc <fprintf@plt>
   10f88:	01 00 00 00 	nop 
   10f8c:	d0 07 bf dc 	ld  [ %fp + -36 ], %o0
   10f90:	03 00 00 54 	sethi  %hi(0x15000), %g1
   10f94:	92 10 61 48 	or  %g1, 0x148, %o1	! 15148 <_IO_stdin_used+0x8b8>
   10f98:	40 00 52 09 	call  257bc <fprintf@plt>
   10f9c:	01 00 00 00 	nop 
   10fa0:	82 10 20 01 	mov  1, %g1	! 1 <_init-0x105bf>
   10fa4:	c2 27 bf e8 	st  %g1, [ %fp + -24 ]
   10fa8:	c2 07 bf e8 	ld  [ %fp + -24 ], %g1
   10fac:	80 a0 60 08 	cmp  %g1, 8
   10fb0:	14 80 00 73 	bg  1117c <main+0xac4>
   10fb4:	01 00 00 00 	nop 
   10fb8:	c4 07 bf e8 	ld  [ %fp + -24 ], %g2
   10fbc:	82 10 00 02 	mov  %g2, %g1
   10fc0:	83 28 60 03 	sll  %g1, 3, %g1
   10fc4:	82 00 40 02 	add  %g1, %g2, %g1
   10fc8:	84 00 40 01 	add  %g1, %g1, %g2
   10fcc:	03 00 00 96 	sethi  %hi(0x25800), %g1
   10fd0:	82 10 60 d4 	or  %g1, 0xd4, %g1	! 258d4 <headings>
   10fd4:	a0 00 80 01 	add  %g2, %g1, %l0
   10fd8:	03 00 00 96 	sethi  %hi(0x25800), %g1
   10fdc:	84 10 61 7c 	or  %g1, 0x17c, %g2	! 2597c <results>
   10fe0:	c2 07 bf e8 	ld  [ %fp + -24 ], %g1
   10fe4:	83 28 60 02 	sll  %g1, 2, %g1
   10fe8:	d0 00 80 01 	ld  [ %g2 + %g1 ], %o0
   10fec:	40 00 09 be 	call  136e4 <__extendsfdf2>
   10ff0:	01 00 00 00 	nop 
   10ff4:	84 10 00 08 	mov  %o0, %g2
   10ff8:	86 10 00 09 	mov  %o1, %g3
   10ffc:	d0 07 bf dc 	ld  [ %fp + -36 ], %o0
   11000:	03 00 00 54 	sethi  %hi(0x15000), %g1
   11004:	92 10 61 98 	or  %g1, 0x198, %o1	! 15198 <_IO_stdin_used+0x908>
   11008:	94 10 00 10 	mov  %l0, %o2
   1100c:	96 10 00 02 	mov  %g2, %o3
   11010:	98 10 00 03 	mov  %g3, %o4
   11014:	40 00 51 ea 	call  257bc <fprintf@plt>
   11018:	01 00 00 00 	nop 
   1101c:	03 00 00 96 	sethi  %hi(0x25800), %g1
   11020:	86 10 60 84 	or  %g1, 0x84, %g3	! 25884 <loop_mops>
   11024:	c2 07 bf e8 	ld  [ %fp + -24 ], %g1
   11028:	85 28 60 02 	sll  %g1, 2, %g2
   1102c:	03 00 00 55 	sethi  %hi(0x15400), %g1
   11030:	82 10 60 b4 	or  %g1, 0xb4, %g1	! 154b4 <_IO_stdin_used+0xc24>
   11034:	d0 00 c0 02 	ld  [ %g3 + %g2 ], %o0
   11038:	d2 00 40 00 	ld  [ %g1 ], %o1
   1103c:	40 00 09 1c 	call  134ac <__eqsf2>
   11040:	01 00 00 00 	nop 
   11044:	82 10 00 08 	mov  %o0, %g1
   11048:	80 a0 60 00 	cmp  %g1, 0
   1104c:	02 80 00 04 	be  1105c <main+0x9a4>
   11050:	01 00 00 00 	nop 
   11054:	10 80 00 1f 	b  110d0 <main+0xa18>
   11058:	01 00 00 00 	nop 
   1105c:	03 00 00 96 	sethi  %hi(0x25800), %g1
   11060:	84 10 60 a8 	or  %g1, 0xa8, %g2	! 258a8 <loop_mflops>
   11064:	c2 07 bf e8 	ld  [ %fp + -24 ], %g1
   11068:	83 28 60 02 	sll  %g1, 2, %g1
   1106c:	d0 00 80 01 	ld  [ %g2 + %g1 ], %o0
   11070:	40 00 09 9d 	call  136e4 <__extendsfdf2>
   11074:	01 00 00 00 	nop 
   11078:	a0 10 00 08 	mov  %o0, %l0
   1107c:	a2 10 00 09 	mov  %o1, %l1
   11080:	03 00 00 96 	sethi  %hi(0x25800), %g1
   11084:	84 10 60 60 	or  %g1, 0x60, %g2	! 25860 <loop_time>
   11088:	c2 07 bf e8 	ld  [ %fp + -24 ], %g1
   1108c:	83 28 60 02 	sll  %g1, 2, %g1
   11090:	d0 00 80 01 	ld  [ %g2 + %g1 ], %o0
   11094:	40 00 09 94 	call  136e4 <__extendsfdf2>
   11098:	01 00 00 00 	nop 
   1109c:	84 10 00 08 	mov  %o0, %g2
   110a0:	86 10 00 09 	mov  %o1, %g3
   110a4:	d0 07 bf dc 	ld  [ %fp + -36 ], %o0
   110a8:	03 00 00 54 	sethi  %hi(0x15000), %g1
   110ac:	92 10 61 a8 	or  %g1, 0x1a8, %o1	! 151a8 <_IO_stdin_used+0x918>
   110b0:	94 10 00 10 	mov  %l0, %o2
   110b4:	96 10 00 11 	mov  %l1, %o3
   110b8:	98 10 00 02 	mov  %g2, %o4
   110bc:	9a 10 00 03 	mov  %g3, %o5
   110c0:	40 00 51 bf 	call  257bc <fprintf@plt>
   110c4:	01 00 00 00 	nop 
   110c8:	10 80 00 28 	b  11168 <main+0xab0>
   110cc:	01 00 00 00 	nop 
   110d0:	03 00 00 96 	sethi  %hi(0x25800), %g1
   110d4:	84 10 60 84 	or  %g1, 0x84, %g2	! 25884 <loop_mops>
   110d8:	c2 07 bf e8 	ld  [ %fp + -24 ], %g1
   110dc:	83 28 60 02 	sll  %g1, 2, %g1
   110e0:	d0 00 80 01 	ld  [ %g2 + %g1 ], %o0
   110e4:	40 00 09 80 	call  136e4 <__extendsfdf2>
   110e8:	01 00 00 00 	nop 
   110ec:	a4 10 00 08 	mov  %o0, %l2
   110f0:	a6 10 00 09 	mov  %o1, %l3
   110f4:	03 00 00 96 	sethi  %hi(0x25800), %g1
   110f8:	84 10 60 60 	or  %g1, 0x60, %g2	! 25860 <loop_time>
   110fc:	c2 07 bf e8 	ld  [ %fp + -24 ], %g1
   11100:	83 28 60 02 	sll  %g1, 2, %g1
   11104:	d0 00 80 01 	ld  [ %g2 + %g1 ], %o0
   11108:	40 00 09 77 	call  136e4 <__extendsfdf2>
   1110c:	01 00 00 00 	nop 
   11110:	a0 10 00 08 	mov  %o0, %l0
   11114:	a2 10 00 09 	mov  %o1, %l1
   11118:	03 00 00 96 	sethi  %hi(0x25800), %g1
   1111c:	84 10 61 7c 	or  %g1, 0x17c, %g2	! 2597c <results>
   11120:	c2 07 bf e8 	ld  [ %fp + -24 ], %g1
   11124:	83 28 60 02 	sll  %g1, 2, %g1
   11128:	d0 00 80 01 	ld  [ %g2 + %g1 ], %o0
   1112c:	40 00 09 6e 	call  136e4 <__extendsfdf2>
   11130:	01 00 00 00 	nop 
   11134:	84 10 00 08 	mov  %o0, %g2
   11138:	86 10 00 09 	mov  %o1, %g3
   1113c:	c4 23 a0 5c 	st  %g2, [ %sp + 0x5c ]
   11140:	c6 23 a0 60 	st  %g3, [ %sp + 0x60 ]
   11144:	d0 07 bf dc 	ld  [ %fp + -36 ], %o0
   11148:	03 00 00 54 	sethi  %hi(0x15000), %g1
   1114c:	92 10 61 c8 	or  %g1, 0x1c8, %o1	! 151c8 <_IO_stdin_used+0x938>
   11150:	94 10 00 12 	mov  %l2, %o2
   11154:	96 10 00 13 	mov  %l3, %o3
   11158:	98 10 00 10 	mov  %l0, %o4
   1115c:	9a 10 00 11 	mov  %l1, %o5
   11160:	40 00 51 97 	call  257bc <fprintf@plt>
   11164:	01 00 00 00 	nop 
   11168:	c2 07 bf e8 	ld  [ %fp + -24 ], %g1
   1116c:	82 00 60 01 	inc  %g1
   11170:	c2 27 bf e8 	st  %g1, [ %fp + -24 ]
   11174:	10 bf ff 8d 	b  10fa8 <main+0x8f0>
   11178:	01 00 00 00 	nop 
   1117c:	d0 07 bf dc 	ld  [ %fp + -36 ], %o0
   11180:	03 00 00 54 	sethi  %hi(0x15000), %g1
   11184:	92 10 61 e8 	or  %g1, 0x1e8, %o1	! 151e8 <_IO_stdin_used+0x958>
   11188:	40 00 51 8d 	call  257bc <fprintf@plt>
   1118c:	01 00 00 00 	nop 
   11190:	03 00 00 96 	sethi  %hi(0x25800), %g1
   11194:	82 10 60 d0 	or  %g1, 0xd0, %g1	! 258d0 <mwips>
   11198:	d0 00 40 00 	ld  [ %g1 ], %o0
   1119c:	40 00 09 52 	call  136e4 <__extendsfdf2>
   111a0:	01 00 00 00 	nop 
   111a4:	a0 10 00 08 	mov  %o0, %l0
   111a8:	a2 10 00 09 	mov  %o1, %l1
   111ac:	03 00 00 96 	sethi  %hi(0x25800), %g1
   111b0:	82 10 60 cc 	or  %g1, 0xcc, %g1	! 258cc <TimeUsed>
   111b4:	d0 00 40 00 	ld  [ %g1 ], %o0
   111b8:	40 00 09 4b 	call  136e4 <__extendsfdf2>
   111bc:	01 00 00 00 	nop 
   111c0:	84 10 00 08 	mov  %o0, %g2
   111c4:	86 10 00 09 	mov  %o1, %g3
   111c8:	d0 07 bf dc 	ld  [ %fp + -36 ], %o0
   111cc:	03 00 00 54 	sethi  %hi(0x15000), %g1
   111d0:	92 10 62 00 	or  %g1, 0x200, %o1	! 15200 <_IO_stdin_used+0x970>
   111d4:	94 10 00 10 	mov  %l0, %o2
   111d8:	96 10 00 11 	mov  %l1, %o3
   111dc:	98 10 00 02 	mov  %g2, %o4
   111e0:	9a 10 00 03 	mov  %g3, %o5
   111e4:	40 00 51 76 	call  257bc <fprintf@plt>
   111e8:	01 00 00 00 	nop 
   111ec:	d0 07 bf dc 	ld  [ %fp + -36 ], %o0
   111f0:	03 00 00 54 	sethi  %hi(0x15000), %g1
   111f4:	92 10 62 10 	or  %g1, 0x210, %o1	! 15210 <_IO_stdin_used+0x980>
   111f8:	40 00 51 71 	call  257bc <fprintf@plt>
   111fc:	01 00 00 00 	nop 
   11200:	d0 07 bf dc 	ld  [ %fp + -36 ], %o0
   11204:	03 00 00 54 	sethi  %hi(0x15000), %g1
   11208:	92 10 62 40 	or  %g1, 0x240, %o1	! 15240 <_IO_stdin_used+0x9b0>
   1120c:	40 00 51 6c 	call  257bc <fprintf@plt>
   11210:	01 00 00 00 	nop 
   11214:	d0 07 bf dc 	ld  [ %fp + -36 ], %o0
   11218:	03 00 00 54 	sethi  %hi(0x15000), %g1
   1121c:	92 10 62 10 	or  %g1, 0x210, %o1	! 15210 <_IO_stdin_used+0x980>
   11220:	40 00 51 67 	call  257bc <fprintf@plt>
   11224:	01 00 00 00 	nop 
   11228:	03 00 00 96 	sethi  %hi(0x25800), %g1
   1122c:	82 10 60 d0 	or  %g1, 0xd0, %g1	! 258d0 <mwips>
   11230:	d0 00 40 00 	ld  [ %g1 ], %o0
   11234:	40 00 09 2c 	call  136e4 <__extendsfdf2>
   11238:	01 00 00 00 	nop 
   1123c:	a0 10 00 08 	mov  %o0, %l0
   11240:	a2 10 00 09 	mov  %o1, %l1
   11244:	03 00 00 96 	sethi  %hi(0x25800), %g1
   11248:	82 10 60 a8 	or  %g1, 0xa8, %g1	! 258a8 <loop_mflops>
   1124c:	d0 00 60 04 	ld  [ %g1 + 4 ], %o0
   11250:	40 00 09 25 	call  136e4 <__extendsfdf2>
   11254:	01 00 00 00 	nop 
   11258:	a4 10 00 08 	mov  %o0, %l2
   1125c:	a6 10 00 09 	mov  %o1, %l3
   11260:	03 00 00 96 	sethi  %hi(0x25800), %g1
   11264:	82 10 60 a8 	or  %g1, 0xa8, %g1	! 258a8 <loop_mflops>
   11268:	d0 00 60 08 	ld  [ %g1 + 8 ], %o0
   1126c:	40 00 09 1e 	call  136e4 <__extendsfdf2>
   11270:	01 00 00 00 	nop 
   11274:	84 10 00 08 	mov  %o0, %g2
   11278:	86 10 00 09 	mov  %o1, %g3
   1127c:	c4 23 a0 5c 	st  %g2, [ %sp + 0x5c ]
   11280:	c6 23 a0 60 	st  %g3, [ %sp + 0x60 ]
   11284:	d0 07 bf dc 	ld  [ %fp + -36 ], %o0
   11288:	03 00 00 54 	sethi  %hi(0x15000), %g1
   1128c:	92 10 62 a0 	or  %g1, 0x2a0, %o1	! 152a0 <_IO_stdin_used+0xa10>
   11290:	94 10 00 10 	mov  %l0, %o2
   11294:	96 10 00 11 	mov  %l1, %o3
   11298:	98 10 00 12 	mov  %l2, %o4
   1129c:	9a 10 00 13 	mov  %l3, %o5
   112a0:	40 00 51 47 	call  257bc <fprintf@plt>
   112a4:	01 00 00 00 	nop 
   112a8:	03 00 00 96 	sethi  %hi(0x25800), %g1
   112ac:	82 10 60 a8 	or  %g1, 0xa8, %g1	! 258a8 <loop_mflops>
   112b0:	d0 00 60 18 	ld  [ %g1 + 0x18 ], %o0
   112b4:	40 00 09 0c 	call  136e4 <__extendsfdf2>
   112b8:	01 00 00 00 	nop 
   112bc:	a0 10 00 08 	mov  %o0, %l0
   112c0:	a2 10 00 09 	mov  %o1, %l1
   112c4:	03 00 00 96 	sethi  %hi(0x25800), %g1
   112c8:	82 10 60 84 	or  %g1, 0x84, %g1	! 25884 <loop_mops>
   112cc:	d0 00 60 14 	ld  [ %g1 + 0x14 ], %o0
   112d0:	40 00 09 05 	call  136e4 <__extendsfdf2>
   112d4:	01 00 00 00 	nop 
   112d8:	a4 10 00 08 	mov  %o0, %l2
   112dc:	a6 10 00 09 	mov  %o1, %l3
   112e0:	03 00 00 96 	sethi  %hi(0x25800), %g1
   112e4:	82 10 60 84 	or  %g1, 0x84, %g1	! 25884 <loop_mops>
   112e8:	d0 00 60 20 	ld  [ %g1 + 0x20 ], %o0
   112ec:	40 00 08 fe 	call  136e4 <__extendsfdf2>
   112f0:	01 00 00 00 	nop 
   112f4:	84 10 00 08 	mov  %o0, %g2
   112f8:	86 10 00 09 	mov  %o1, %g3
   112fc:	c4 23 a0 5c 	st  %g2, [ %sp + 0x5c ]
   11300:	c6 23 a0 60 	st  %g3, [ %sp + 0x60 ]
   11304:	d0 07 bf dc 	ld  [ %fp + -36 ], %o0
   11308:	03 00 00 54 	sethi  %hi(0x15000), %g1
   1130c:	92 10 62 a0 	or  %g1, 0x2a0, %o1	! 152a0 <_IO_stdin_used+0xa10>
   11310:	94 10 00 10 	mov  %l0, %o2
   11314:	96 10 00 11 	mov  %l1, %o3
   11318:	98 10 00 12 	mov  %l2, %o4
   1131c:	9a 10 00 13 	mov  %l3, %o5
   11320:	40 00 51 27 	call  257bc <fprintf@plt>
   11324:	01 00 00 00 	nop 
   11328:	03 00 00 96 	sethi  %hi(0x25800), %g1
   1132c:	82 10 60 84 	or  %g1, 0x84, %g1	! 25884 <loop_mops>
   11330:	d0 00 60 10 	ld  [ %g1 + 0x10 ], %o0
   11334:	40 00 08 ec 	call  136e4 <__extendsfdf2>
   11338:	01 00 00 00 	nop 
   1133c:	a0 10 00 08 	mov  %o0, %l0
   11340:	a2 10 00 09 	mov  %o1, %l1
   11344:	03 00 00 96 	sethi  %hi(0x25800), %g1
   11348:	82 10 60 84 	or  %g1, 0x84, %g1	! 25884 <loop_mops>
   1134c:	d0 00 60 0c 	ld  [ %g1 + 0xc ], %o0
   11350:	40 00 08 e5 	call  136e4 <__extendsfdf2>
   11354:	01 00 00 00 	nop 
   11358:	a4 10 00 08 	mov  %o0, %l2
   1135c:	a6 10 00 09 	mov  %o1, %l3
   11360:	03 00 00 96 	sethi  %hi(0x25800), %g1
   11364:	82 10 60 84 	or  %g1, 0x84, %g1	! 25884 <loop_mops>
   11368:	d0 00 60 1c 	ld  [ %g1 + 0x1c ], %o0
   1136c:	40 00 08 de 	call  136e4 <__extendsfdf2>
   11370:	01 00 00 00 	nop 
   11374:	84 10 00 08 	mov  %o0, %g2
   11378:	86 10 00 09 	mov  %o1, %g3
   1137c:	c4 23 a0 5c 	st  %g2, [ %sp + 0x5c ]
   11380:	c6 23 a0 60 	st  %g3, [ %sp + 0x60 ]
   11384:	d0 07 bf dc 	ld  [ %fp + -36 ], %o0
   11388:	03 00 00 54 	sethi  %hi(0x15000), %g1
   1138c:	92 10 62 b8 	or  %g1, 0x2b8, %o1	! 152b8 <_IO_stdin_used+0xa28>
   11390:	94 10 00 10 	mov  %l0, %o2
   11394:	96 10 00 11 	mov  %l1, %o3
   11398:	98 10 00 12 	mov  %l2, %o4
   1139c:	9a 10 00 13 	mov  %l3, %o5
   113a0:	40 00 51 07 	call  257bc <fprintf@plt>
   113a4:	01 00 00 00 	nop 
   113a8:	d0 07 bf dc 	ld  [ %fp + -36 ], %o0
   113ac:	40 00 51 13 	call  257f8 <fclose@plt>
   113b0:	01 00 00 00 	nop 
   113b4:	03 00 00 53 	sethi  %hi(0x14c00), %g1
   113b8:	90 10 60 10 	or  %g1, 0x10, %o0	! 14c10 <_IO_stdin_used+0x380>
   113bc:	40 00 51 1e 	call  25834 <printf@plt>
   113c0:	01 00 00 00 	nop 
   113c4:	03 00 00 54 	sethi  %hi(0x15000), %g1
   113c8:	90 10 62 d0 	or  %g1, 0x2d0, %o0	! 152d0 <_IO_stdin_used+0xa40>
   113cc:	40 00 51 1a 	call  25834 <printf@plt>
   113d0:	01 00 00 00 	nop 
   113d4:	03 00 00 54 	sethi  %hi(0x15000), %g1
   113d8:	90 10 63 18 	or  %g1, 0x318, %o0	! 15318 <_IO_stdin_used+0xa88>
   113dc:	40 00 51 16 	call  25834 <printf@plt>
   113e0:	01 00 00 00 	nop 
   113e4:	03 00 00 54 	sethi  %hi(0x15000), %g1
   113e8:	90 10 63 68 	or  %g1, 0x368, %o0	! 15368 <_IO_stdin_used+0xad8>
   113ec:	40 00 51 12 	call  25834 <printf@plt>
   113f0:	01 00 00 00 	nop 
   113f4:	03 00 00 54 	sethi  %hi(0x15000), %g1
   113f8:	90 10 63 b0 	or  %g1, 0x3b0, %o0	! 153b0 <_IO_stdin_used+0xb20>
   113fc:	40 00 51 0e 	call  25834 <printf@plt>
   11400:	01 00 00 00 	nop 
   11404:	03 00 00 54 	sethi  %hi(0x15000), %g1
   11408:	90 10 63 f8 	or  %g1, 0x3f8, %o0	! 153f8 <_IO_stdin_used+0xb68>
   1140c:	40 00 51 0a 	call  25834 <printf@plt>
   11410:	01 00 00 00 	nop 
   11414:	03 00 00 55 	sethi  %hi(0x15400), %g1
   11418:	90 10 60 40 	or  %g1, 0x40, %o0	! 15440 <_IO_stdin_used+0xbb0>
   1141c:	40 00 51 06 	call  25834 <printf@plt>
   11420:	01 00 00 00 	nop 
   11424:	03 00 00 55 	sethi  %hi(0x15400), %g1
   11428:	90 10 60 88 	or  %g1, 0x88, %o0	! 15488 <_IO_stdin_used+0xbf8>
   1142c:	40 00 51 02 	call  25834 <printf@plt>
   11430:	01 00 00 00 	nop 
   11434:	82 10 20 00 	clr  %g1	! 0 <_init-0x105c0>
   11438:	b0 10 00 01 	mov  %g1, %i0
   1143c:	81 c7 e0 08 	ret 
   11440:	81 e8 00 00 	restore 

00011444 <whetstones>:
   11444:	9d e3 bf 20 	save  %sp, -224, %sp
   11448:	f0 27 a0 44 	st  %i0, [ %fp + 0x44 ]
   1144c:	f2 27 a0 48 	st  %i1, [ %fp + 0x48 ]
   11450:	f4 27 a0 4c 	st  %i2, [ %fp + 0x4c ]
   11454:	03 00 00 55 	sethi  %hi(0x15400), %g1
   11458:	82 10 61 74 	or  %g1, 0x174, %g1	! 15574 <_IO_stdin_used+0xce4>
   1145c:	c2 00 40 00 	ld  [ %g1 ], %g1
   11460:	c2 27 bf 94 	st  %g1, [ %fp + -108 ]
   11464:	c2 07 bf 94 	ld  [ %fp + -108 ], %g1
   11468:	c2 27 bf 90 	st  %g1, [ %fp + -112 ]
   1146c:	03 00 00 55 	sethi  %hi(0x15400), %g1
   11470:	82 10 61 78 	or  %g1, 0x178, %g1	! 15578 <_IO_stdin_used+0xce8>
   11474:	c2 00 40 00 	ld  [ %g1 ], %g1
   11478:	c2 27 bf 8c 	st  %g1, [ %fp + -116 ]
   1147c:	03 00 00 55 	sethi  %hi(0x15400), %g1
   11480:	82 10 61 7c 	or  %g1, 0x17c, %g1	! 1557c <_IO_stdin_used+0xcec>
   11484:	c2 00 40 00 	ld  [ %g1 ], %g1
   11488:	c2 27 bf 88 	st  %g1, [ %fp + -120 ]
   1148c:	03 00 00 96 	sethi  %hi(0x25800), %g1
   11490:	84 10 61 78 	or  %g1, 0x178, %g2	! 25978 <Check>
   11494:	03 00 00 55 	sethi  %hi(0x15400), %g1
   11498:	82 10 61 80 	or  %g1, 0x180, %g1	! 15580 <_IO_stdin_used+0xcf0>
   1149c:	c2 00 40 00 	ld  [ %g1 ], %g1
   114a0:	c2 20 80 00 	st  %g1, [ %g2 ]
   114a4:	c4 07 a0 48 	ld  [ %fp + 0x48 ], %g2
   114a8:	82 10 00 02 	mov  %g2, %g1
   114ac:	82 00 40 01 	add  %g1, %g1, %g1
   114b0:	82 00 40 02 	add  %g1, %g2, %g1
   114b4:	83 28 60 02 	sll  %g1, 2, %g1
   114b8:	c2 27 bf f4 	st  %g1, [ %fp + -12 ]
   114bc:	c4 07 a0 48 	ld  [ %fp + 0x48 ], %g2
   114c0:	82 10 00 02 	mov  %g2, %g1
   114c4:	83 28 60 03 	sll  %g1, 3, %g1
   114c8:	82 20 40 02 	sub  %g1, %g2, %g1
   114cc:	82 00 40 01 	add  %g1, %g1, %g1
   114d0:	c2 27 bf f0 	st  %g1, [ %fp + -16 ]
   114d4:	c2 07 a0 48 	ld  [ %fp + 0x48 ], %g1
   114d8:	82 58 61 59 	smul  %g1, 0x159, %g1
   114dc:	c2 27 bf ec 	st  %g1, [ %fp + -20 ]
   114e0:	c2 07 a0 48 	ld  [ %fp + 0x48 ], %g1
   114e4:	82 58 60 d2 	smul  %g1, 0xd2, %g1
   114e8:	c2 27 bf e8 	st  %g1, [ %fp + -24 ]
   114ec:	c2 07 a0 48 	ld  [ %fp + 0x48 ], %g1
   114f0:	83 28 60 05 	sll  %g1, 5, %g1
   114f4:	c2 27 bf e4 	st  %g1, [ %fp + -28 ]
   114f8:	c2 07 a0 48 	ld  [ %fp + 0x48 ], %g1
   114fc:	82 58 63 83 	smul  %g1, 0x383, %g1
   11500:	c2 27 bf e0 	st  %g1, [ %fp + -32 ]
   11504:	c2 07 a0 48 	ld  [ %fp + 0x48 ], %g1
   11508:	82 58 62 68 	smul  %g1, 0x268, %g1
   1150c:	c2 27 bf dc 	st  %g1, [ %fp + -36 ]
   11510:	c4 07 a0 48 	ld  [ %fp + 0x48 ], %g2
   11514:	82 10 00 02 	mov  %g2, %g1
   11518:	82 00 40 01 	add  %g1, %g1, %g1
   1151c:	82 00 40 02 	add  %g1, %g2, %g1
   11520:	85 28 60 05 	sll  %g1, 5, %g2
   11524:	82 20 80 01 	sub  %g2, %g1, %g1
   11528:	c2 27 bf d8 	st  %g1, [ %fp + -40 ]
   1152c:	82 10 20 0a 	mov  0xa, %g1
   11530:	c2 27 bf cc 	st  %g1, [ %fp + -52 ]
   11534:	03 00 00 55 	sethi  %hi(0x15400), %g1
   11538:	82 10 61 84 	or  %g1, 0x184, %g1	! 15584 <_IO_stdin_used+0xcf4>
   1153c:	c2 00 40 00 	ld  [ %g1 ], %g1
   11540:	c2 27 bf a0 	st  %g1, [ %fp + -96 ]
   11544:	03 00 00 55 	sethi  %hi(0x15400), %g1
   11548:	82 10 61 88 	or  %g1, 0x188, %g1	! 15588 <_IO_stdin_used+0xcf8>
   1154c:	c2 00 40 00 	ld  [ %g1 ], %g1
   11550:	c2 27 bf a4 	st  %g1, [ %fp + -92 ]
   11554:	03 00 00 55 	sethi  %hi(0x15400), %g1
   11558:	82 10 61 88 	or  %g1, 0x188, %g1	! 15588 <_IO_stdin_used+0xcf8>
   1155c:	c2 00 40 00 	ld  [ %g1 ], %g1
   11560:	c2 27 bf a8 	st  %g1, [ %fp + -88 ]
   11564:	03 00 00 55 	sethi  %hi(0x15400), %g1
   11568:	82 10 61 88 	or  %g1, 0x188, %g1	! 15588 <_IO_stdin_used+0xcf8>
   1156c:	c2 00 40 00 	ld  [ %g1 ], %g1
   11570:	c2 27 bf ac 	st  %g1, [ %fp + -84 ]
   11574:	40 00 06 24 	call  12e04 <dtime>
   11578:	01 00 00 00 	nop 
   1157c:	82 10 00 08 	mov  %o0, %g1
   11580:	c2 27 bf 9c 	st  %g1, [ %fp + -100 ]
   11584:	c0 27 bf d0 	clr  [ %fp + -48 ]
   11588:	c4 07 bf d0 	ld  [ %fp + -48 ], %g2
   1158c:	c2 07 a0 44 	ld  [ %fp + 0x44 ], %g1
   11590:	80 a0 80 01 	cmp  %g2, %g1
   11594:	16 80 00 70 	bge  11754 <whetstones+0x310>
   11598:	01 00 00 00 	nop 
   1159c:	c0 27 bf d4 	clr  [ %fp + -44 ]
   115a0:	c4 07 bf f4 	ld  [ %fp + -12 ], %g2
   115a4:	c2 07 bf cc 	ld  [ %fp + -52 ], %g1
   115a8:	84 58 80 01 	smul  %g2, %g1, %g2
   115ac:	c2 07 bf d4 	ld  [ %fp + -44 ], %g1
   115b0:	80 a0 80 01 	cmp  %g2, %g1
   115b4:	04 80 00 5b 	ble  11720 <whetstones+0x2dc>
   115b8:	01 00 00 00 	nop 
   115bc:	d0 07 bf a0 	ld  [ %fp + -96 ], %o0
   115c0:	d2 07 bf a4 	ld  [ %fp + -92 ], %o1
   115c4:	40 00 06 b7 	call  130a0 <__addsf3>
   115c8:	01 00 00 00 	nop 
   115cc:	82 10 00 08 	mov  %o0, %g1
   115d0:	90 10 00 01 	mov  %g1, %o0
   115d4:	d2 07 bf a8 	ld  [ %fp + -88 ], %o1
   115d8:	40 00 06 b2 	call  130a0 <__addsf3>
   115dc:	01 00 00 00 	nop 
   115e0:	82 10 00 08 	mov  %o0, %g1
   115e4:	90 10 00 01 	mov  %g1, %o0
   115e8:	d2 07 bf ac 	ld  [ %fp + -84 ], %o1
   115ec:	40 00 06 c0 	call  130ec <__subsf3>
   115f0:	01 00 00 00 	nop 
   115f4:	82 10 00 08 	mov  %o0, %g1
   115f8:	90 10 00 01 	mov  %g1, %o0
   115fc:	d2 07 bf 94 	ld  [ %fp + -108 ], %o1
   11600:	40 00 06 d3 	call  1314c <__mulsf3>
   11604:	01 00 00 00 	nop 
   11608:	82 10 00 08 	mov  %o0, %g1
   1160c:	c2 27 bf a0 	st  %g1, [ %fp + -96 ]
   11610:	d0 07 bf a0 	ld  [ %fp + -96 ], %o0
   11614:	d2 07 bf a4 	ld  [ %fp + -92 ], %o1
   11618:	40 00 06 a2 	call  130a0 <__addsf3>
   1161c:	01 00 00 00 	nop 
   11620:	82 10 00 08 	mov  %o0, %g1
   11624:	90 10 00 01 	mov  %g1, %o0
   11628:	d2 07 bf a8 	ld  [ %fp + -88 ], %o1
   1162c:	40 00 06 b0 	call  130ec <__subsf3>
   11630:	01 00 00 00 	nop 
   11634:	82 10 00 08 	mov  %o0, %g1
   11638:	90 10 00 01 	mov  %g1, %o0
   1163c:	d2 07 bf ac 	ld  [ %fp + -84 ], %o1
   11640:	40 00 06 98 	call  130a0 <__addsf3>
   11644:	01 00 00 00 	nop 
   11648:	82 10 00 08 	mov  %o0, %g1
   1164c:	90 10 00 01 	mov  %g1, %o0
   11650:	d2 07 bf 94 	ld  [ %fp + -108 ], %o1
   11654:	40 00 06 be 	call  1314c <__mulsf3>
   11658:	01 00 00 00 	nop 
   1165c:	82 10 00 08 	mov  %o0, %g1
   11660:	c2 27 bf a4 	st  %g1, [ %fp + -92 ]
   11664:	d0 07 bf a0 	ld  [ %fp + -96 ], %o0
   11668:	d2 07 bf a4 	ld  [ %fp + -92 ], %o1
   1166c:	40 00 06 a0 	call  130ec <__subsf3>
   11670:	01 00 00 00 	nop 
   11674:	82 10 00 08 	mov  %o0, %g1
   11678:	90 10 00 01 	mov  %g1, %o0
   1167c:	d2 07 bf a8 	ld  [ %fp + -88 ], %o1
   11680:	40 00 06 88 	call  130a0 <__addsf3>
   11684:	01 00 00 00 	nop 
   11688:	82 10 00 08 	mov  %o0, %g1
   1168c:	90 10 00 01 	mov  %g1, %o0
   11690:	d2 07 bf ac 	ld  [ %fp + -84 ], %o1
   11694:	40 00 06 83 	call  130a0 <__addsf3>
   11698:	01 00 00 00 	nop 
   1169c:	82 10 00 08 	mov  %o0, %g1
   116a0:	90 10 00 01 	mov  %g1, %o0
   116a4:	d2 07 bf 94 	ld  [ %fp + -108 ], %o1
   116a8:	40 00 06 a9 	call  1314c <__mulsf3>
   116ac:	01 00 00 00 	nop 
   116b0:	82 10 00 08 	mov  %o0, %g1
   116b4:	c2 27 bf a8 	st  %g1, [ %fp + -88 ]
   116b8:	d0 07 bf a4 	ld  [ %fp + -92 ], %o0
   116bc:	d2 07 bf a0 	ld  [ %fp + -96 ], %o1
   116c0:	40 00 06 8b 	call  130ec <__subsf3>
   116c4:	01 00 00 00 	nop 
   116c8:	82 10 00 08 	mov  %o0, %g1
   116cc:	90 10 00 01 	mov  %g1, %o0
   116d0:	d2 07 bf a8 	ld  [ %fp + -88 ], %o1
   116d4:	40 00 06 73 	call  130a0 <__addsf3>
   116d8:	01 00 00 00 	nop 
   116dc:	82 10 00 08 	mov  %o0, %g1
   116e0:	90 10 00 01 	mov  %g1, %o0
   116e4:	d2 07 bf ac 	ld  [ %fp + -84 ], %o1
   116e8:	40 00 06 6e 	call  130a0 <__addsf3>
   116ec:	01 00 00 00 	nop 
   116f0:	82 10 00 08 	mov  %o0, %g1
   116f4:	90 10 00 01 	mov  %g1, %o0
   116f8:	d2 07 bf 94 	ld  [ %fp + -108 ], %o1
   116fc:	40 00 06 94 	call  1314c <__mulsf3>
   11700:	01 00 00 00 	nop 
   11704:	82 10 00 08 	mov  %o0, %g1
   11708:	c2 27 bf ac 	st  %g1, [ %fp + -84 ]
   1170c:	c2 07 bf d4 	ld  [ %fp + -44 ], %g1
   11710:	82 00 60 01 	inc  %g1
   11714:	c2 27 bf d4 	st  %g1, [ %fp + -44 ]
   11718:	10 bf ff a2 	b  115a0 <whetstones+0x15c>
   1171c:	01 00 00 00 	nop 
   11720:	03 00 00 55 	sethi  %hi(0x15400), %g1
   11724:	82 10 61 84 	or  %g1, 0x184, %g1	! 15584 <_IO_stdin_used+0xcf4>
   11728:	d0 00 40 00 	ld  [ %g1 ], %o0
   1172c:	d2 07 bf 94 	ld  [ %fp + -108 ], %o1
   11730:	40 00 06 6f 	call  130ec <__subsf3>
   11734:	01 00 00 00 	nop 
   11738:	82 10 00 08 	mov  %o0, %g1
   1173c:	c2 27 bf 94 	st  %g1, [ %fp + -108 ]
   11740:	c2 07 bf d0 	ld  [ %fp + -48 ], %g1
   11744:	82 00 60 01 	inc  %g1
   11748:	c2 27 bf d0 	st  %g1, [ %fp + -48 ]
   1174c:	10 bf ff 8f 	b  11588 <whetstones+0x144>
   11750:	01 00 00 00 	nop 
   11754:	c2 07 bf 90 	ld  [ %fp + -112 ], %g1
   11758:	c2 27 bf 94 	st  %g1, [ %fp + -108 ]
   1175c:	40 00 05 aa 	call  12e04 <dtime>
   11760:	01 00 00 00 	nop 
   11764:	82 10 00 08 	mov  %o0, %g1
   11768:	90 10 00 01 	mov  %g1, %o0
   1176c:	d2 07 bf 9c 	ld  [ %fp + -100 ], %o1
   11770:	40 00 06 5f 	call  130ec <__subsf3>
   11774:	01 00 00 00 	nop 
   11778:	a0 10 00 08 	mov  %o0, %l0
   1177c:	d0 07 bf cc 	ld  [ %fp + -52 ], %o0
   11780:	40 00 07 7f 	call  1357c <__floatsisf>
   11784:	01 00 00 00 	nop 
   11788:	82 10 00 08 	mov  %o0, %g1
   1178c:	90 10 00 10 	mov  %l0, %o0
   11790:	92 10 00 01 	mov  %g1, %o1
   11794:	40 00 06 ea 	call  1333c <__divsf3>
   11798:	01 00 00 00 	nop 
   1179c:	82 10 00 08 	mov  %o0, %g1
   117a0:	c2 27 bf 98 	st  %g1, [ %fp + -104 ]
   117a4:	c2 07 bf f4 	ld  [ %fp + -12 ], %g1
   117a8:	83 28 60 04 	sll  %g1, 4, %g1
   117ac:	90 10 00 01 	mov  %g1, %o0
   117b0:	40 00 07 73 	call  1357c <__floatsisf>
   117b4:	01 00 00 00 	nop 
   117b8:	a0 10 00 08 	mov  %o0, %l0
   117bc:	d0 07 a0 44 	ld  [ %fp + 0x44 ], %o0
   117c0:	40 00 07 6f 	call  1357c <__floatsisf>
   117c4:	01 00 00 00 	nop 
   117c8:	82 10 00 08 	mov  %o0, %g1
   117cc:	90 10 00 10 	mov  %l0, %o0
   117d0:	92 10 00 01 	mov  %g1, %o1
   117d4:	40 00 06 5e 	call  1314c <__mulsf3>
   117d8:	01 00 00 00 	nop 
   117dc:	84 10 00 08 	mov  %o0, %g2
   117e0:	82 10 20 01 	mov  1, %g1
   117e4:	c2 23 a0 5c 	st  %g1, [ %sp + 0x5c ]
   117e8:	03 00 00 55 	sethi  %hi(0x15400), %g1
   117ec:	90 10 60 b8 	or  %g1, 0xb8, %o0	! 154b8 <_IO_stdin_used+0xc28>
   117f0:	92 10 00 02 	mov  %g2, %o1
   117f4:	94 10 20 01 	mov  1, %o2
   117f8:	d6 07 bf ac 	ld  [ %fp + -84 ], %o3
   117fc:	d8 07 bf 98 	ld  [ %fp + -104 ], %o4
   11800:	da 07 a0 4c 	ld  [ %fp + 0x4c ], %o5
   11804:	40 00 04 96 	call  12a5c <pout>
   11808:	01 00 00 00 	nop 
   1180c:	40 00 05 7e 	call  12e04 <dtime>
   11810:	01 00 00 00 	nop 
   11814:	82 10 00 08 	mov  %o0, %g1
   11818:	c2 27 bf 9c 	st  %g1, [ %fp + -100 ]
   1181c:	c0 27 bf d0 	clr  [ %fp + -48 ]
   11820:	c4 07 bf d0 	ld  [ %fp + -48 ], %g2
   11824:	c2 07 a0 44 	ld  [ %fp + 0x44 ], %g1
   11828:	80 a0 80 01 	cmp  %g2, %g1
   1182c:	16 80 00 20 	bge  118ac <whetstones+0x468>
   11830:	01 00 00 00 	nop 
   11834:	c0 27 bf d4 	clr  [ %fp + -44 ]
   11838:	c4 07 bf d4 	ld  [ %fp + -44 ], %g2
   1183c:	c2 07 bf f0 	ld  [ %fp + -16 ], %g1
   11840:	80 a0 80 01 	cmp  %g2, %g1
   11844:	16 80 00 0d 	bge  11878 <whetstones+0x434>
   11848:	01 00 00 00 	nop 
   1184c:	82 07 bf a0 	add  %fp, -96, %g1
   11850:	90 10 00 01 	mov  %g1, %o0
   11854:	d2 07 bf 94 	ld  [ %fp + -108 ], %o1
   11858:	d4 07 bf 88 	ld  [ %fp + -120 ], %o2
   1185c:	40 00 03 8a 	call  12684 <pa>
   11860:	01 00 00 00 	nop 
   11864:	c2 07 bf d4 	ld  [ %fp + -44 ], %g1
   11868:	82 00 60 01 	inc  %g1
   1186c:	c2 27 bf d4 	st  %g1, [ %fp + -44 ]
   11870:	10 bf ff f2 	b  11838 <whetstones+0x3f4>
   11874:	01 00 00 00 	nop 
   11878:	03 00 00 55 	sethi  %hi(0x15400), %g1
   1187c:	82 10 61 84 	or  %g1, 0x184, %g1	! 15584 <_IO_stdin_used+0xcf4>
   11880:	d0 00 40 00 	ld  [ %g1 ], %o0
   11884:	d2 07 bf 94 	ld  [ %fp + -108 ], %o1
   11888:	40 00 06 19 	call  130ec <__subsf3>
   1188c:	01 00 00 00 	nop 
   11890:	82 10 00 08 	mov  %o0, %g1
   11894:	c2 27 bf 94 	st  %g1, [ %fp + -108 ]
   11898:	c2 07 bf d0 	ld  [ %fp + -48 ], %g1
   1189c:	82 00 60 01 	inc  %g1
   118a0:	c2 27 bf d0 	st  %g1, [ %fp + -48 ]
   118a4:	10 bf ff df 	b  11820 <whetstones+0x3dc>
   118a8:	01 00 00 00 	nop 
   118ac:	c2 07 bf 90 	ld  [ %fp + -112 ], %g1
   118b0:	c2 27 bf 94 	st  %g1, [ %fp + -108 ]
   118b4:	40 00 05 54 	call  12e04 <dtime>
   118b8:	01 00 00 00 	nop 
   118bc:	82 10 00 08 	mov  %o0, %g1
   118c0:	90 10 00 01 	mov  %g1, %o0
   118c4:	d2 07 bf 9c 	ld  [ %fp + -100 ], %o1
   118c8:	40 00 06 09 	call  130ec <__subsf3>
   118cc:	01 00 00 00 	nop 
   118d0:	82 10 00 08 	mov  %o0, %g1
   118d4:	c2 27 bf 98 	st  %g1, [ %fp + -104 ]
   118d8:	c4 07 bf f0 	ld  [ %fp + -16 ], %g2
   118dc:	82 10 00 02 	mov  %g2, %g1
   118e0:	82 00 40 01 	add  %g1, %g1, %g1
   118e4:	82 00 40 02 	add  %g1, %g2, %g1
   118e8:	83 28 60 05 	sll  %g1, 5, %g1
   118ec:	90 10 00 01 	mov  %g1, %o0
   118f0:	40 00 07 23 	call  1357c <__floatsisf>
   118f4:	01 00 00 00 	nop 
   118f8:	a0 10 00 08 	mov  %o0, %l0
   118fc:	d0 07 a0 44 	ld  [ %fp + 0x44 ], %o0
   11900:	40 00 07 1f 	call  1357c <__floatsisf>
   11904:	01 00 00 00 	nop 
   11908:	82 10 00 08 	mov  %o0, %g1
   1190c:	90 10 00 10 	mov  %l0, %o0
   11910:	92 10 00 01 	mov  %g1, %o1
   11914:	40 00 06 0e 	call  1314c <__mulsf3>
   11918:	01 00 00 00 	nop 
   1191c:	84 10 00 08 	mov  %o0, %g2
   11920:	82 10 20 02 	mov  2, %g1
   11924:	c2 23 a0 5c 	st  %g1, [ %sp + 0x5c ]
   11928:	03 00 00 55 	sethi  %hi(0x15400), %g1
   1192c:	90 10 60 d0 	or  %g1, 0xd0, %o0	! 154d0 <_IO_stdin_used+0xc40>
   11930:	92 10 00 02 	mov  %g2, %o1
   11934:	94 10 20 01 	mov  1, %o2
   11938:	d6 07 bf ac 	ld  [ %fp + -84 ], %o3
   1193c:	d8 07 bf 98 	ld  [ %fp + -104 ], %o4
   11940:	da 07 a0 4c 	ld  [ %fp + 0x4c ], %o5
   11944:	40 00 04 46 	call  12a5c <pout>
   11948:	01 00 00 00 	nop 
   1194c:	82 10 20 01 	mov  1, %g1	! 1 <_init-0x105bf>
   11950:	c2 27 bf bc 	st  %g1, [ %fp + -68 ]
   11954:	40 00 05 2c 	call  12e04 <dtime>
   11958:	01 00 00 00 	nop 
   1195c:	82 10 00 08 	mov  %o0, %g1
   11960:	c2 27 bf 9c 	st  %g1, [ %fp + -100 ]
   11964:	c0 27 bf d0 	clr  [ %fp + -48 ]
   11968:	c4 07 bf d0 	ld  [ %fp + -48 ], %g2
   1196c:	c2 07 a0 44 	ld  [ %fp + 0x44 ], %g1
   11970:	80 a0 80 01 	cmp  %g2, %g1
   11974:	16 80 00 2e 	bge  11a2c <whetstones+0x5e8>
   11978:	01 00 00 00 	nop 
   1197c:	c0 27 bf d4 	clr  [ %fp + -44 ]
   11980:	c4 07 bf d4 	ld  [ %fp + -44 ], %g2
   11984:	c2 07 bf ec 	ld  [ %fp + -20 ], %g1
   11988:	80 a0 80 01 	cmp  %g2, %g1
   1198c:	16 80 00 23 	bge  11a18 <whetstones+0x5d4>
   11990:	01 00 00 00 	nop 
   11994:	c2 07 bf bc 	ld  [ %fp + -68 ], %g1
   11998:	80 a0 60 01 	cmp  %g1, 1
   1199c:	12 80 00 06 	bne  119b4 <whetstones+0x570>
   119a0:	01 00 00 00 	nop 
   119a4:	82 10 20 02 	mov  2, %g1	! 2 <_init-0x105be>
   119a8:	c2 27 bf bc 	st  %g1, [ %fp + -68 ]
   119ac:	10 80 00 04 	b  119bc <whetstones+0x578>
   119b0:	01 00 00 00 	nop 
   119b4:	82 10 20 03 	mov  3, %g1	! 3 <_init-0x105bd>
   119b8:	c2 27 bf bc 	st  %g1, [ %fp + -68 ]
   119bc:	c2 07 bf bc 	ld  [ %fp + -68 ], %g1
   119c0:	80 a0 60 02 	cmp  %g1, 2
   119c4:	04 80 00 05 	ble  119d8 <whetstones+0x594>
   119c8:	01 00 00 00 	nop 
   119cc:	c0 27 bf bc 	clr  [ %fp + -68 ]
   119d0:	10 80 00 04 	b  119e0 <whetstones+0x59c>
   119d4:	01 00 00 00 	nop 
   119d8:	82 10 20 01 	mov  1, %g1	! 1 <_init-0x105bf>
   119dc:	c2 27 bf bc 	st  %g1, [ %fp + -68 ]
   119e0:	c2 07 bf bc 	ld  [ %fp + -68 ], %g1
   119e4:	80 a0 60 00 	cmp  %g1, 0
   119e8:	14 80 00 06 	bg  11a00 <whetstones+0x5bc>
   119ec:	01 00 00 00 	nop 
   119f0:	82 10 20 01 	mov  1, %g1	! 1 <_init-0x105bf>
   119f4:	c2 27 bf bc 	st  %g1, [ %fp + -68 ]
   119f8:	10 80 00 03 	b  11a04 <whetstones+0x5c0>
   119fc:	01 00 00 00 	nop 
   11a00:	c0 27 bf bc 	clr  [ %fp + -68 ]
   11a04:	c2 07 bf d4 	ld  [ %fp + -44 ], %g1
   11a08:	82 00 60 01 	inc  %g1
   11a0c:	c2 27 bf d4 	st  %g1, [ %fp + -44 ]
   11a10:	10 bf ff dc 	b  11980 <whetstones+0x53c>
   11a14:	01 00 00 00 	nop 
   11a18:	c2 07 bf d0 	ld  [ %fp + -48 ], %g1
   11a1c:	82 00 60 01 	inc  %g1
   11a20:	c2 27 bf d0 	st  %g1, [ %fp + -48 ]
   11a24:	10 bf ff d1 	b  11968 <whetstones+0x524>
   11a28:	01 00 00 00 	nop 
   11a2c:	40 00 04 f6 	call  12e04 <dtime>
   11a30:	01 00 00 00 	nop 
   11a34:	82 10 00 08 	mov  %o0, %g1
   11a38:	90 10 00 01 	mov  %g1, %o0
   11a3c:	d2 07 bf 9c 	ld  [ %fp + -100 ], %o1
   11a40:	40 00 05 ab 	call  130ec <__subsf3>
   11a44:	01 00 00 00 	nop 
   11a48:	82 10 00 08 	mov  %o0, %g1
   11a4c:	c2 27 bf 98 	st  %g1, [ %fp + -104 ]
   11a50:	c4 07 bf ec 	ld  [ %fp + -20 ], %g2
   11a54:	82 10 00 02 	mov  %g2, %g1
   11a58:	82 00 40 01 	add  %g1, %g1, %g1
   11a5c:	82 00 40 02 	add  %g1, %g2, %g1
   11a60:	90 10 00 01 	mov  %g1, %o0
   11a64:	40 00 06 c6 	call  1357c <__floatsisf>
   11a68:	01 00 00 00 	nop 
   11a6c:	a0 10 00 08 	mov  %o0, %l0
   11a70:	d0 07 a0 44 	ld  [ %fp + 0x44 ], %o0
   11a74:	40 00 06 c2 	call  1357c <__floatsisf>
   11a78:	01 00 00 00 	nop 
   11a7c:	82 10 00 08 	mov  %o0, %g1
   11a80:	90 10 00 10 	mov  %l0, %o0
   11a84:	92 10 00 01 	mov  %g1, %o1
   11a88:	40 00 05 b1 	call  1314c <__mulsf3>
   11a8c:	01 00 00 00 	nop 
   11a90:	a0 10 00 08 	mov  %o0, %l0
   11a94:	d0 07 bf bc 	ld  [ %fp + -68 ], %o0
   11a98:	40 00 06 b9 	call  1357c <__floatsisf>
   11a9c:	01 00 00 00 	nop 
   11aa0:	84 10 00 08 	mov  %o0, %g2
   11aa4:	82 10 20 03 	mov  3, %g1
   11aa8:	c2 23 a0 5c 	st  %g1, [ %sp + 0x5c ]
   11aac:	03 00 00 55 	sethi  %hi(0x15400), %g1
   11ab0:	90 10 60 e8 	or  %g1, 0xe8, %o0	! 154e8 <_IO_stdin_used+0xc58>
   11ab4:	92 10 00 10 	mov  %l0, %o1
   11ab8:	94 10 20 02 	mov  2, %o2
   11abc:	96 10 00 02 	mov  %g2, %o3
   11ac0:	d8 07 bf 98 	ld  [ %fp + -104 ], %o4
   11ac4:	da 07 a0 4c 	ld  [ %fp + 0x4c ], %o5
   11ac8:	40 00 03 e5 	call  12a5c <pout>
   11acc:	01 00 00 00 	nop 
   11ad0:	82 10 20 01 	mov  1, %g1	! 1 <_init-0x105bf>
   11ad4:	c2 27 bf bc 	st  %g1, [ %fp + -68 ]
   11ad8:	82 10 20 02 	mov  2, %g1
   11adc:	c2 27 bf b8 	st  %g1, [ %fp + -72 ]
   11ae0:	82 10 20 03 	mov  3, %g1
   11ae4:	c2 27 bf b4 	st  %g1, [ %fp + -76 ]
   11ae8:	40 00 04 c7 	call  12e04 <dtime>
   11aec:	01 00 00 00 	nop 
   11af0:	82 10 00 08 	mov  %o0, %g1
   11af4:	c2 27 bf 9c 	st  %g1, [ %fp + -100 ]
   11af8:	c0 27 bf d0 	clr  [ %fp + -48 ]
   11afc:	c4 07 bf d0 	ld  [ %fp + -48 ], %g2
   11b00:	c2 07 a0 44 	ld  [ %fp + 0x44 ], %g1
   11b04:	80 a0 80 01 	cmp  %g2, %g1
   11b08:	16 80 00 48 	bge  11c28 <whetstones+0x7e4>
   11b0c:	01 00 00 00 	nop 
   11b10:	c0 27 bf d4 	clr  [ %fp + -44 ]
   11b14:	c4 07 bf d4 	ld  [ %fp + -44 ], %g2
   11b18:	c2 07 bf e8 	ld  [ %fp + -24 ], %g1
   11b1c:	80 a0 80 01 	cmp  %g2, %g1
   11b20:	16 80 00 3d 	bge  11c14 <whetstones+0x7d0>
   11b24:	01 00 00 00 	nop 
   11b28:	c4 07 bf b8 	ld  [ %fp + -72 ], %g2
   11b2c:	c2 07 bf bc 	ld  [ %fp + -68 ], %g1
   11b30:	84 20 80 01 	sub  %g2, %g1, %g2
   11b34:	c2 07 bf bc 	ld  [ %fp + -68 ], %g1
   11b38:	86 58 80 01 	smul  %g2, %g1, %g3
   11b3c:	c4 07 bf b4 	ld  [ %fp + -76 ], %g2
   11b40:	c2 07 bf b8 	ld  [ %fp + -72 ], %g1
   11b44:	82 20 80 01 	sub  %g2, %g1, %g1
   11b48:	82 58 c0 01 	smul  %g3, %g1, %g1
   11b4c:	c2 27 bf bc 	st  %g1, [ %fp + -68 ]
   11b50:	c4 07 bf b4 	ld  [ %fp + -76 ], %g2
   11b54:	c2 07 bf bc 	ld  [ %fp + -68 ], %g1
   11b58:	84 20 80 01 	sub  %g2, %g1, %g2
   11b5c:	c2 07 bf b4 	ld  [ %fp + -76 ], %g1
   11b60:	84 20 40 02 	sub  %g1, %g2, %g2
   11b64:	c2 07 bf b8 	ld  [ %fp + -72 ], %g1
   11b68:	82 58 40 02 	smul  %g1, %g2, %g1
   11b6c:	c2 27 bf b8 	st  %g1, [ %fp + -72 ]
   11b70:	c4 07 bf b4 	ld  [ %fp + -76 ], %g2
   11b74:	c2 07 bf b8 	ld  [ %fp + -72 ], %g1
   11b78:	86 20 80 01 	sub  %g2, %g1, %g3
   11b7c:	c4 07 bf b8 	ld  [ %fp + -72 ], %g2
   11b80:	c2 07 bf bc 	ld  [ %fp + -68 ], %g1
   11b84:	82 00 80 01 	add  %g2, %g1, %g1
   11b88:	82 58 c0 01 	smul  %g3, %g1, %g1
   11b8c:	c2 27 bf b4 	st  %g1, [ %fp + -76 ]
   11b90:	c2 07 bf b4 	ld  [ %fp + -76 ], %g1
   11b94:	85 28 60 02 	sll  %g1, 2, %g2
   11b98:	82 07 bf f8 	add  %fp, -8, %g1
   11b9c:	a0 00 80 01 	add  %g2, %g1, %l0
   11ba0:	c4 07 bf bc 	ld  [ %fp + -68 ], %g2
   11ba4:	c2 07 bf b8 	ld  [ %fp + -72 ], %g1
   11ba8:	84 00 80 01 	add  %g2, %g1, %g2
   11bac:	c2 07 bf b4 	ld  [ %fp + -76 ], %g1
   11bb0:	82 00 80 01 	add  %g2, %g1, %g1
   11bb4:	90 10 00 01 	mov  %g1, %o0
   11bb8:	40 00 06 71 	call  1357c <__floatsisf>
   11bbc:	01 00 00 00 	nop 
   11bc0:	82 10 00 08 	mov  %o0, %g1
   11bc4:	c2 24 3f a0 	st  %g1, [ %l0 + -96 ]
   11bc8:	c2 07 bf b8 	ld  [ %fp + -72 ], %g1
   11bcc:	85 28 60 02 	sll  %g1, 2, %g2
   11bd0:	82 07 bf f8 	add  %fp, -8, %g1
   11bd4:	a0 00 80 01 	add  %g2, %g1, %l0
   11bd8:	c4 07 bf bc 	ld  [ %fp + -68 ], %g2
   11bdc:	c2 07 bf b8 	ld  [ %fp + -72 ], %g1
   11be0:	84 58 80 01 	smul  %g2, %g1, %g2
   11be4:	c2 07 bf b4 	ld  [ %fp + -76 ], %g1
   11be8:	82 58 80 01 	smul  %g2, %g1, %g1
   11bec:	90 10 00 01 	mov  %g1, %o0
   11bf0:	40 00 06 63 	call  1357c <__floatsisf>
   11bf4:	01 00 00 00 	nop 
   11bf8:	82 10 00 08 	mov  %o0, %g1
   11bfc:	c2 24 3f a0 	st  %g1, [ %l0 + -96 ]
   11c00:	c2 07 bf d4 	ld  [ %fp + -44 ], %g1
   11c04:	82 00 60 01 	inc  %g1
   11c08:	c2 27 bf d4 	st  %g1, [ %fp + -44 ]
   11c0c:	10 bf ff c2 	b  11b14 <whetstones+0x6d0>
   11c10:	01 00 00 00 	nop 
   11c14:	c2 07 bf d0 	ld  [ %fp + -48 ], %g1
   11c18:	82 00 60 01 	inc  %g1
   11c1c:	c2 27 bf d0 	st  %g1, [ %fp + -48 ]
   11c20:	10 bf ff b7 	b  11afc <whetstones+0x6b8>
   11c24:	01 00 00 00 	nop 
   11c28:	40 00 04 77 	call  12e04 <dtime>
   11c2c:	01 00 00 00 	nop 
   11c30:	82 10 00 08 	mov  %o0, %g1
   11c34:	90 10 00 01 	mov  %g1, %o0
   11c38:	d2 07 bf 9c 	ld  [ %fp + -100 ], %o1
   11c3c:	40 00 05 2c 	call  130ec <__subsf3>
   11c40:	01 00 00 00 	nop 
   11c44:	82 10 00 08 	mov  %o0, %g1
   11c48:	c2 27 bf 98 	st  %g1, [ %fp + -104 ]
   11c4c:	d0 07 bf a0 	ld  [ %fp + -96 ], %o0
   11c50:	d2 07 bf a4 	ld  [ %fp + -92 ], %o1
   11c54:	40 00 05 13 	call  130a0 <__addsf3>
   11c58:	01 00 00 00 	nop 
   11c5c:	82 10 00 08 	mov  %o0, %g1
   11c60:	c2 27 bf c8 	st  %g1, [ %fp + -56 ]
   11c64:	c4 07 bf e8 	ld  [ %fp + -24 ], %g2
   11c68:	82 10 00 02 	mov  %g2, %g1
   11c6c:	83 28 60 04 	sll  %g1, 4, %g1
   11c70:	82 20 40 02 	sub  %g1, %g2, %g1
   11c74:	90 10 00 01 	mov  %g1, %o0
   11c78:	40 00 06 41 	call  1357c <__floatsisf>
   11c7c:	01 00 00 00 	nop 
   11c80:	a0 10 00 08 	mov  %o0, %l0
   11c84:	d0 07 a0 44 	ld  [ %fp + 0x44 ], %o0
   11c88:	40 00 06 3d 	call  1357c <__floatsisf>
   11c8c:	01 00 00 00 	nop 
   11c90:	82 10 00 08 	mov  %o0, %g1
   11c94:	90 10 00 10 	mov  %l0, %o0
   11c98:	92 10 00 01 	mov  %g1, %o1
   11c9c:	40 00 05 2c 	call  1314c <__mulsf3>
   11ca0:	01 00 00 00 	nop 
   11ca4:	84 10 00 08 	mov  %o0, %g2
   11ca8:	82 10 20 04 	mov  4, %g1
   11cac:	c2 23 a0 5c 	st  %g1, [ %sp + 0x5c ]
   11cb0:	03 00 00 55 	sethi  %hi(0x15400), %g1
   11cb4:	90 10 61 00 	or  %g1, 0x100, %o0	! 15500 <_IO_stdin_used+0xc70>
   11cb8:	92 10 00 02 	mov  %g2, %o1
   11cbc:	94 10 20 02 	mov  2, %o2
   11cc0:	d6 07 bf c8 	ld  [ %fp + -56 ], %o3
   11cc4:	d8 07 bf 98 	ld  [ %fp + -104 ], %o4
   11cc8:	da 07 a0 4c 	ld  [ %fp + 0x4c ], %o5
   11ccc:	40 00 03 64 	call  12a5c <pout>
   11cd0:	01 00 00 00 	nop 
   11cd4:	03 00 00 55 	sethi  %hi(0x15400), %g1
   11cd8:	82 10 61 8c 	or  %g1, 0x18c, %g1	! 1558c <_IO_stdin_used+0xcfc>
   11cdc:	c2 00 40 00 	ld  [ %g1 ], %g1
   11ce0:	c2 27 bf c8 	st  %g1, [ %fp + -56 ]
   11ce4:	03 00 00 55 	sethi  %hi(0x15400), %g1
   11ce8:	82 10 61 8c 	or  %g1, 0x18c, %g1	! 1558c <_IO_stdin_used+0xcfc>
   11cec:	c2 00 40 00 	ld  [ %g1 ], %g1
   11cf0:	c2 27 bf c4 	st  %g1, [ %fp + -60 ]
   11cf4:	40 00 04 44 	call  12e04 <dtime>
   11cf8:	01 00 00 00 	nop 
   11cfc:	82 10 00 08 	mov  %o0, %g1
   11d00:	c2 27 bf 9c 	st  %g1, [ %fp + -100 ]
   11d04:	c0 27 bf d0 	clr  [ %fp + -48 ]
   11d08:	c4 07 bf d0 	ld  [ %fp + -48 ], %g2
   11d0c:	c2 07 a0 44 	ld  [ %fp + 0x44 ], %g1
   11d10:	80 a0 80 01 	cmp  %g2, %g1
   11d14:	16 80 01 1b 	bge  12180 <whetstones+0xd3c>
   11d18:	01 00 00 00 	nop 
   11d1c:	82 10 20 01 	mov  1, %g1	! 1 <_init-0x105bf>
   11d20:	c2 27 bf d4 	st  %g1, [ %fp + -44 ]
   11d24:	c4 07 bf d4 	ld  [ %fp + -44 ], %g2
   11d28:	c2 07 bf e4 	ld  [ %fp + -28 ], %g1
   11d2c:	80 a0 80 01 	cmp  %g2, %g1
   11d30:	16 80 01 07 	bge  1214c <whetstones+0xd08>
   11d34:	01 00 00 00 	nop 
   11d38:	d0 07 bf 94 	ld  [ %fp + -108 ], %o0
   11d3c:	40 00 06 6a 	call  136e4 <__extendsfdf2>
   11d40:	01 00 00 00 	nop 
   11d44:	a4 10 00 08 	mov  %o0, %l2
   11d48:	a6 10 00 09 	mov  %o1, %l3
   11d4c:	d0 07 bf 88 	ld  [ %fp + -120 ], %o0
   11d50:	40 00 06 65 	call  136e4 <__extendsfdf2>
   11d54:	01 00 00 00 	nop 
   11d58:	a0 10 00 08 	mov  %o0, %l0
   11d5c:	a2 10 00 09 	mov  %o1, %l1
   11d60:	d0 07 bf c8 	ld  [ %fp + -56 ], %o0
   11d64:	40 00 06 60 	call  136e4 <__extendsfdf2>
   11d68:	01 00 00 00 	nop 
   11d6c:	84 10 00 08 	mov  %o0, %g2
   11d70:	86 10 00 09 	mov  %o1, %g3
   11d74:	90 10 00 02 	mov  %g2, %o0
   11d78:	92 10 00 03 	mov  %g3, %o1
   11d7c:	40 00 4e a8 	call  2581c <sin@plt>
   11d80:	01 00 00 00 	nop 
   11d84:	84 10 00 08 	mov  %o0, %g2
   11d88:	86 10 00 09 	mov  %o1, %g3
   11d8c:	90 10 00 10 	mov  %l0, %o0
   11d90:	92 10 00 11 	mov  %l1, %o1
   11d94:	94 10 00 02 	mov  %g2, %o2
   11d98:	96 10 00 03 	mov  %g3, %o3
   11d9c:	40 00 07 4a 	call  13ac4 <__muldf3>
   11da0:	01 00 00 00 	nop 
   11da4:	a0 10 00 08 	mov  %o0, %l0
   11da8:	a2 10 00 09 	mov  %o1, %l1
   11dac:	d0 07 bf c8 	ld  [ %fp + -56 ], %o0
   11db0:	40 00 06 4d 	call  136e4 <__extendsfdf2>
   11db4:	01 00 00 00 	nop 
   11db8:	84 10 00 08 	mov  %o0, %g2
   11dbc:	86 10 00 09 	mov  %o1, %g3
   11dc0:	90 10 00 02 	mov  %g2, %o0
   11dc4:	92 10 00 03 	mov  %g3, %o1
   11dc8:	40 00 4e 71 	call  2578c <cos@plt>
   11dcc:	01 00 00 00 	nop 
   11dd0:	84 10 00 08 	mov  %o0, %g2
   11dd4:	86 10 00 09 	mov  %o1, %g3
   11dd8:	90 10 00 10 	mov  %l0, %o0
   11ddc:	92 10 00 11 	mov  %l1, %o1
   11de0:	94 10 00 02 	mov  %g2, %o2
   11de4:	96 10 00 03 	mov  %g3, %o3
   11de8:	40 00 07 37 	call  13ac4 <__muldf3>
   11dec:	01 00 00 00 	nop 
   11df0:	a8 10 00 08 	mov  %o0, %l4
   11df4:	aa 10 00 09 	mov  %o1, %l5
   11df8:	d0 07 bf c8 	ld  [ %fp + -56 ], %o0
   11dfc:	d2 07 bf c4 	ld  [ %fp + -60 ], %o1
   11e00:	40 00 04 a8 	call  130a0 <__addsf3>
   11e04:	01 00 00 00 	nop 
   11e08:	82 10 00 08 	mov  %o0, %g1
   11e0c:	90 10 00 01 	mov  %g1, %o0
   11e10:	40 00 06 35 	call  136e4 <__extendsfdf2>
   11e14:	01 00 00 00 	nop 
   11e18:	84 10 00 08 	mov  %o0, %g2
   11e1c:	86 10 00 09 	mov  %o1, %g3
   11e20:	90 10 00 02 	mov  %g2, %o0
   11e24:	92 10 00 03 	mov  %g3, %o1
   11e28:	40 00 4e 59 	call  2578c <cos@plt>
   11e2c:	01 00 00 00 	nop 
   11e30:	84 10 00 08 	mov  %o0, %g2
   11e34:	86 10 00 09 	mov  %o1, %g3
   11e38:	a0 10 00 02 	mov  %g2, %l0
   11e3c:	a2 10 00 03 	mov  %g3, %l1
   11e40:	d0 07 bf c8 	ld  [ %fp + -56 ], %o0
   11e44:	d2 07 bf c4 	ld  [ %fp + -60 ], %o1
   11e48:	40 00 04 a9 	call  130ec <__subsf3>
   11e4c:	01 00 00 00 	nop 
   11e50:	82 10 00 08 	mov  %o0, %g1
   11e54:	90 10 00 01 	mov  %g1, %o0
   11e58:	40 00 06 23 	call  136e4 <__extendsfdf2>
   11e5c:	01 00 00 00 	nop 
   11e60:	84 10 00 08 	mov  %o0, %g2
   11e64:	86 10 00 09 	mov  %o1, %g3
   11e68:	90 10 00 02 	mov  %g2, %o0
   11e6c:	92 10 00 03 	mov  %g3, %o1
   11e70:	40 00 4e 47 	call  2578c <cos@plt>
   11e74:	01 00 00 00 	nop 
   11e78:	84 10 00 08 	mov  %o0, %g2
   11e7c:	86 10 00 09 	mov  %o1, %g3
   11e80:	90 10 00 10 	mov  %l0, %o0
   11e84:	92 10 00 11 	mov  %l1, %o1
   11e88:	94 10 00 02 	mov  %g2, %o2
   11e8c:	96 10 00 03 	mov  %g3, %o3
   11e90:	40 00 06 e0 	call  13a10 <__adddf3>
   11e94:	01 00 00 00 	nop 
   11e98:	84 10 00 08 	mov  %o0, %g2
   11e9c:	86 10 00 09 	mov  %o1, %g3
   11ea0:	03 00 00 55 	sethi  %hi(0x15400), %g1
   11ea4:	82 10 61 90 	or  %g1, 0x190, %g1	! 15590 <_IO_stdin_used+0xd00>
   11ea8:	90 10 00 02 	mov  %g2, %o0
   11eac:	92 10 00 03 	mov  %g3, %o1
   11eb0:	d4 00 40 00 	ld  [ %g1 ], %o2
   11eb4:	d6 00 60 04 	ld  [ %g1 + 4 ], %o3
   11eb8:	40 00 06 ea 	call  13a60 <__subdf3>
   11ebc:	01 00 00 00 	nop 
   11ec0:	84 10 00 08 	mov  %o0, %g2
   11ec4:	86 10 00 09 	mov  %o1, %g3
   11ec8:	90 10 00 14 	mov  %l4, %o0
   11ecc:	92 10 00 15 	mov  %l5, %o1
   11ed0:	94 10 00 02 	mov  %g2, %o2
   11ed4:	96 10 00 03 	mov  %g3, %o3
   11ed8:	40 00 07 bd 	call  13dcc <__divdf3>
   11edc:	01 00 00 00 	nop 
   11ee0:	84 10 00 08 	mov  %o0, %g2
   11ee4:	86 10 00 09 	mov  %o1, %g3
   11ee8:	90 10 00 02 	mov  %g2, %o0
   11eec:	92 10 00 03 	mov  %g3, %o1
   11ef0:	40 00 4e 2a 	call  25798 <atan@plt>
   11ef4:	01 00 00 00 	nop 
   11ef8:	84 10 00 08 	mov  %o0, %g2
   11efc:	86 10 00 09 	mov  %o1, %g3
   11f00:	90 10 00 12 	mov  %l2, %o0
   11f04:	92 10 00 13 	mov  %l3, %o1
   11f08:	94 10 00 02 	mov  %g2, %o2
   11f0c:	96 10 00 03 	mov  %g3, %o3
   11f10:	40 00 06 ed 	call  13ac4 <__muldf3>
   11f14:	01 00 00 00 	nop 
   11f18:	84 10 00 08 	mov  %o0, %g2
   11f1c:	86 10 00 09 	mov  %o1, %g3
   11f20:	90 10 00 02 	mov  %g2, %o0
   11f24:	92 10 00 03 	mov  %g3, %o1
   11f28:	40 00 08 38 	call  14008 <__truncdfsf2>
   11f2c:	01 00 00 00 	nop 
   11f30:	82 10 00 08 	mov  %o0, %g1
   11f34:	c2 27 bf c8 	st  %g1, [ %fp + -56 ]
   11f38:	d0 07 bf 94 	ld  [ %fp + -108 ], %o0
   11f3c:	40 00 05 ea 	call  136e4 <__extendsfdf2>
   11f40:	01 00 00 00 	nop 
   11f44:	a4 10 00 08 	mov  %o0, %l2
   11f48:	a6 10 00 09 	mov  %o1, %l3
   11f4c:	d0 07 bf 88 	ld  [ %fp + -120 ], %o0
   11f50:	40 00 05 e5 	call  136e4 <__extendsfdf2>
   11f54:	01 00 00 00 	nop 
   11f58:	a0 10 00 08 	mov  %o0, %l0
   11f5c:	a2 10 00 09 	mov  %o1, %l1
   11f60:	d0 07 bf c4 	ld  [ %fp + -60 ], %o0
   11f64:	40 00 05 e0 	call  136e4 <__extendsfdf2>
   11f68:	01 00 00 00 	nop 
   11f6c:	84 10 00 08 	mov  %o0, %g2
   11f70:	86 10 00 09 	mov  %o1, %g3
   11f74:	90 10 00 02 	mov  %g2, %o0
   11f78:	92 10 00 03 	mov  %g3, %o1
   11f7c:	40 00 4e 28 	call  2581c <sin@plt>
   11f80:	01 00 00 00 	nop 
   11f84:	84 10 00 08 	mov  %o0, %g2
   11f88:	86 10 00 09 	mov  %o1, %g3
   11f8c:	90 10 00 10 	mov  %l0, %o0
   11f90:	92 10 00 11 	mov  %l1, %o1
   11f94:	94 10 00 02 	mov  %g2, %o2
   11f98:	96 10 00 03 	mov  %g3, %o3
   11f9c:	40 00 06 ca 	call  13ac4 <__muldf3>
   11fa0:	01 00 00 00 	nop 
   11fa4:	a0 10 00 08 	mov  %o0, %l0
   11fa8:	a2 10 00 09 	mov  %o1, %l1
   11fac:	d0 07 bf c4 	ld  [ %fp + -60 ], %o0
   11fb0:	40 00 05 cd 	call  136e4 <__extendsfdf2>
   11fb4:	01 00 00 00 	nop 
   11fb8:	84 10 00 08 	mov  %o0, %g2
   11fbc:	86 10 00 09 	mov  %o1, %g3
   11fc0:	90 10 00 02 	mov  %g2, %o0
   11fc4:	92 10 00 03 	mov  %g3, %o1
   11fc8:	40 00 4d f1 	call  2578c <cos@plt>
   11fcc:	01 00 00 00 	nop 
   11fd0:	84 10 00 08 	mov  %o0, %g2
   11fd4:	86 10 00 09 	mov  %o1, %g3
   11fd8:	90 10 00 10 	mov  %l0, %o0
   11fdc:	92 10 00 11 	mov  %l1, %o1
   11fe0:	94 10 00 02 	mov  %g2, %o2
   11fe4:	96 10 00 03 	mov  %g3, %o3
   11fe8:	40 00 06 b7 	call  13ac4 <__muldf3>
   11fec:	01 00 00 00 	nop 
   11ff0:	a8 10 00 08 	mov  %o0, %l4
   11ff4:	aa 10 00 09 	mov  %o1, %l5
   11ff8:	d0 07 bf c8 	ld  [ %fp + -56 ], %o0
   11ffc:	d2 07 bf c4 	ld  [ %fp + -60 ], %o1
   12000:	40 00 04 28 	call  130a0 <__addsf3>
   12004:	01 00 00 00 	nop 
   12008:	82 10 00 08 	mov  %o0, %g1
   1200c:	90 10 00 01 	mov  %g1, %o0
   12010:	40 00 05 b5 	call  136e4 <__extendsfdf2>
   12014:	01 00 00 00 	nop 
   12018:	84 10 00 08 	mov  %o0, %g2
   1201c:	86 10 00 09 	mov  %o1, %g3
   12020:	90 10 00 02 	mov  %g2, %o0
   12024:	92 10 00 03 	mov  %g3, %o1
   12028:	40 00 4d d9 	call  2578c <cos@plt>
   1202c:	01 00 00 00 	nop 
   12030:	84 10 00 08 	mov  %o0, %g2
   12034:	86 10 00 09 	mov  %o1, %g3
   12038:	a0 10 00 02 	mov  %g2, %l0
   1203c:	a2 10 00 03 	mov  %g3, %l1
   12040:	d0 07 bf c8 	ld  [ %fp + -56 ], %o0
   12044:	d2 07 bf c4 	ld  [ %fp + -60 ], %o1
   12048:	40 00 04 29 	call  130ec <__subsf3>
   1204c:	01 00 00 00 	nop 
   12050:	82 10 00 08 	mov  %o0, %g1
   12054:	90 10 00 01 	mov  %g1, %o0
   12058:	40 00 05 a3 	call  136e4 <__extendsfdf2>
   1205c:	01 00 00 00 	nop 
   12060:	84 10 00 08 	mov  %o0, %g2
   12064:	86 10 00 09 	mov  %o1, %g3
   12068:	90 10 00 02 	mov  %g2, %o0
   1206c:	92 10 00 03 	mov  %g3, %o1
   12070:	40 00 4d c7 	call  2578c <cos@plt>
   12074:	01 00 00 00 	nop 
   12078:	84 10 00 08 	mov  %o0, %g2
   1207c:	86 10 00 09 	mov  %o1, %g3
   12080:	90 10 00 10 	mov  %l0, %o0
   12084:	92 10 00 11 	mov  %l1, %o1
   12088:	94 10 00 02 	mov  %g2, %o2
   1208c:	96 10 00 03 	mov  %g3, %o3
   12090:	40 00 06 60 	call  13a10 <__adddf3>
   12094:	01 00 00 00 	nop 
   12098:	84 10 00 08 	mov  %o0, %g2
   1209c:	86 10 00 09 	mov  %o1, %g3
   120a0:	03 00 00 55 	sethi  %hi(0x15400), %g1
   120a4:	82 10 61 90 	or  %g1, 0x190, %g1	! 15590 <_IO_stdin_used+0xd00>
   120a8:	90 10 00 02 	mov  %g2, %o0
   120ac:	92 10 00 03 	mov  %g3, %o1
   120b0:	d4 00 40 00 	ld  [ %g1 ], %o2
   120b4:	d6 00 60 04 	ld  [ %g1 + 4 ], %o3
   120b8:	40 00 06 6a 	call  13a60 <__subdf3>
   120bc:	01 00 00 00 	nop 
   120c0:	84 10 00 08 	mov  %o0, %g2
   120c4:	86 10 00 09 	mov  %o1, %g3
   120c8:	90 10 00 14 	mov  %l4, %o0
   120cc:	92 10 00 15 	mov  %l5, %o1
   120d0:	94 10 00 02 	mov  %g2, %o2
   120d4:	96 10 00 03 	mov  %g3, %o3
   120d8:	40 00 07 3d 	call  13dcc <__divdf3>
   120dc:	01 00 00 00 	nop 
   120e0:	84 10 00 08 	mov  %o0, %g2
   120e4:	86 10 00 09 	mov  %o1, %g3
   120e8:	90 10 00 02 	mov  %g2, %o0
   120ec:	92 10 00 03 	mov  %g3, %o1
   120f0:	40 00 4d aa 	call  25798 <atan@plt>
   120f4:	01 00 00 00 	nop 
   120f8:	84 10 00 08 	mov  %o0, %g2
   120fc:	86 10 00 09 	mov  %o1, %g3
   12100:	90 10 00 12 	mov  %l2, %o0
   12104:	92 10 00 13 	mov  %l3, %o1
   12108:	94 10 00 02 	mov  %g2, %o2
   1210c:	96 10 00 03 	mov  %g3, %o3
   12110:	40 00 06 6d 	call  13ac4 <__muldf3>
   12114:	01 00 00 00 	nop 
   12118:	84 10 00 08 	mov  %o0, %g2
   1211c:	86 10 00 09 	mov  %o1, %g3
   12120:	90 10 00 02 	mov  %g2, %o0
   12124:	92 10 00 03 	mov  %g3, %o1
   12128:	40 00 07 b8 	call  14008 <__truncdfsf2>
   1212c:	01 00 00 00 	nop 
   12130:	82 10 00 08 	mov  %o0, %g1
   12134:	c2 27 bf c4 	st  %g1, [ %fp + -60 ]
   12138:	c2 07 bf d4 	ld  [ %fp + -44 ], %g1
   1213c:	82 00 60 01 	inc  %g1
   12140:	c2 27 bf d4 	st  %g1, [ %fp + -44 ]
   12144:	10 bf fe f8 	b  11d24 <whetstones+0x8e0>
   12148:	01 00 00 00 	nop 
   1214c:	03 00 00 55 	sethi  %hi(0x15400), %g1
   12150:	82 10 61 84 	or  %g1, 0x184, %g1	! 15584 <_IO_stdin_used+0xcf4>
   12154:	d0 00 40 00 	ld  [ %g1 ], %o0
   12158:	d2 07 bf 94 	ld  [ %fp + -108 ], %o1
   1215c:	40 00 03 e4 	call  130ec <__subsf3>
   12160:	01 00 00 00 	nop 
   12164:	82 10 00 08 	mov  %o0, %g1
   12168:	c2 27 bf 94 	st  %g1, [ %fp + -108 ]
   1216c:	c2 07 bf d0 	ld  [ %fp + -48 ], %g1
   12170:	82 00 60 01 	inc  %g1
   12174:	c2 27 bf d0 	st  %g1, [ %fp + -48 ]
   12178:	10 bf fe e4 	b  11d08 <whetstones+0x8c4>
   1217c:	01 00 00 00 	nop 
   12180:	c2 07 bf 90 	ld  [ %fp + -112 ], %g1
   12184:	c2 27 bf 94 	st  %g1, [ %fp + -108 ]
   12188:	40 00 03 1f 	call  12e04 <dtime>
   1218c:	01 00 00 00 	nop 
   12190:	82 10 00 08 	mov  %o0, %g1
   12194:	90 10 00 01 	mov  %g1, %o0
   12198:	d2 07 bf 9c 	ld  [ %fp + -100 ], %o1
   1219c:	40 00 03 d4 	call  130ec <__subsf3>
   121a0:	01 00 00 00 	nop 
   121a4:	82 10 00 08 	mov  %o0, %g1
   121a8:	c2 27 bf 98 	st  %g1, [ %fp + -104 ]
   121ac:	c2 07 bf e4 	ld  [ %fp + -28 ], %g1
   121b0:	82 58 60 1a 	smul  %g1, 0x1a, %g1
   121b4:	90 10 00 01 	mov  %g1, %o0
   121b8:	40 00 04 f1 	call  1357c <__floatsisf>
   121bc:	01 00 00 00 	nop 
   121c0:	a0 10 00 08 	mov  %o0, %l0
   121c4:	d0 07 a0 44 	ld  [ %fp + 0x44 ], %o0
   121c8:	40 00 04 ed 	call  1357c <__floatsisf>
   121cc:	01 00 00 00 	nop 
   121d0:	82 10 00 08 	mov  %o0, %g1
   121d4:	90 10 00 10 	mov  %l0, %o0
   121d8:	92 10 00 01 	mov  %g1, %o1
   121dc:	40 00 03 dc 	call  1314c <__mulsf3>
   121e0:	01 00 00 00 	nop 
   121e4:	84 10 00 08 	mov  %o0, %g2
   121e8:	82 10 20 05 	mov  5, %g1
   121ec:	c2 23 a0 5c 	st  %g1, [ %sp + 0x5c ]
   121f0:	03 00 00 55 	sethi  %hi(0x15400), %g1
   121f4:	90 10 61 18 	or  %g1, 0x118, %o0	! 15518 <_IO_stdin_used+0xc88>
   121f8:	92 10 00 02 	mov  %g2, %o1
   121fc:	94 10 20 02 	mov  2, %o2
   12200:	d6 07 bf c4 	ld  [ %fp + -60 ], %o3
   12204:	d8 07 bf 98 	ld  [ %fp + -104 ], %o4
   12208:	da 07 a0 4c 	ld  [ %fp + 0x4c ], %o5
   1220c:	40 00 02 14 	call  12a5c <pout>
   12210:	01 00 00 00 	nop 
   12214:	03 00 00 55 	sethi  %hi(0x15400), %g1
   12218:	82 10 61 84 	or  %g1, 0x184, %g1	! 15584 <_IO_stdin_used+0xcf4>
   1221c:	c2 00 40 00 	ld  [ %g1 ], %g1
   12220:	c2 27 bf c8 	st  %g1, [ %fp + -56 ]
   12224:	03 00 00 55 	sethi  %hi(0x15400), %g1
   12228:	82 10 61 84 	or  %g1, 0x184, %g1	! 15584 <_IO_stdin_used+0xcf4>
   1222c:	c2 00 40 00 	ld  [ %g1 ], %g1
   12230:	c2 27 bf c4 	st  %g1, [ %fp + -60 ]
   12234:	03 00 00 55 	sethi  %hi(0x15400), %g1
   12238:	82 10 61 84 	or  %g1, 0x184, %g1	! 15584 <_IO_stdin_used+0xcf4>
   1223c:	c2 00 40 00 	ld  [ %g1 ], %g1
   12240:	c2 27 bf c0 	st  %g1, [ %fp + -64 ]
   12244:	40 00 02 f0 	call  12e04 <dtime>
   12248:	01 00 00 00 	nop 
   1224c:	82 10 00 08 	mov  %o0, %g1
   12250:	c2 27 bf 9c 	st  %g1, [ %fp + -100 ]
   12254:	c0 27 bf d0 	clr  [ %fp + -48 ]
   12258:	c4 07 bf d0 	ld  [ %fp + -48 ], %g2
   1225c:	c2 07 a0 44 	ld  [ %fp + 0x44 ], %g1
   12260:	80 a0 80 01 	cmp  %g2, %g1
   12264:	16 80 00 1d 	bge  122d8 <whetstones+0xe94>
   12268:	01 00 00 00 	nop 
   1226c:	c0 27 bf d4 	clr  [ %fp + -44 ]
   12270:	c4 07 bf d4 	ld  [ %fp + -44 ], %g2
   12274:	c2 07 bf e0 	ld  [ %fp + -32 ], %g1
   12278:	80 a0 80 01 	cmp  %g2, %g1
   1227c:	16 80 00 12 	bge  122c4 <whetstones+0xe80>
   12280:	01 00 00 00 	nop 
   12284:	82 07 bf c8 	add  %fp, -56, %g1
   12288:	84 07 bf c4 	add  %fp, -60, %g2
   1228c:	86 07 bf c0 	add  %fp, -64, %g3
   12290:	90 10 00 01 	mov  %g1, %o0
   12294:	92 10 00 02 	mov  %g2, %o1
   12298:	94 10 00 03 	mov  %g3, %o2
   1229c:	d6 07 bf 94 	ld  [ %fp + -108 ], %o3
   122a0:	d8 07 bf 8c 	ld  [ %fp + -116 ], %o4
   122a4:	da 07 bf 88 	ld  [ %fp + -120 ], %o5
   122a8:	40 00 01 b2 	call  12970 <p3>
   122ac:	01 00 00 00 	nop 
   122b0:	c2 07 bf d4 	ld  [ %fp + -44 ], %g1
   122b4:	82 00 60 01 	inc  %g1
   122b8:	c2 27 bf d4 	st  %g1, [ %fp + -44 ]
   122bc:	10 bf ff ed 	b  12270 <whetstones+0xe2c>
   122c0:	01 00 00 00 	nop 
   122c4:	c2 07 bf d0 	ld  [ %fp + -48 ], %g1
   122c8:	82 00 60 01 	inc  %g1
   122cc:	c2 27 bf d0 	st  %g1, [ %fp + -48 ]
   122d0:	10 bf ff e2 	b  12258 <whetstones+0xe14>
   122d4:	01 00 00 00 	nop 
   122d8:	40 00 02 cb 	call  12e04 <dtime>
   122dc:	01 00 00 00 	nop 
   122e0:	82 10 00 08 	mov  %o0, %g1
   122e4:	90 10 00 01 	mov  %g1, %o0
   122e8:	d2 07 bf 9c 	ld  [ %fp + -100 ], %o1
   122ec:	40 00 03 80 	call  130ec <__subsf3>
   122f0:	01 00 00 00 	nop 
   122f4:	82 10 00 08 	mov  %o0, %g1
   122f8:	c2 27 bf 98 	st  %g1, [ %fp + -104 ]
   122fc:	c4 07 bf e0 	ld  [ %fp + -32 ], %g2
   12300:	82 10 00 02 	mov  %g2, %g1
   12304:	82 00 40 01 	add  %g1, %g1, %g1
   12308:	82 00 40 02 	add  %g1, %g2, %g1
   1230c:	82 00 40 01 	add  %g1, %g1, %g1
   12310:	90 10 00 01 	mov  %g1, %o0
   12314:	40 00 04 9a 	call  1357c <__floatsisf>
   12318:	01 00 00 00 	nop 
   1231c:	a0 10 00 08 	mov  %o0, %l0
   12320:	d0 07 a0 44 	ld  [ %fp + 0x44 ], %o0
   12324:	40 00 04 96 	call  1357c <__floatsisf>
   12328:	01 00 00 00 	nop 
   1232c:	82 10 00 08 	mov  %o0, %g1
   12330:	90 10 00 10 	mov  %l0, %o0
   12334:	92 10 00 01 	mov  %g1, %o1
   12338:	40 00 03 85 	call  1314c <__mulsf3>
   1233c:	01 00 00 00 	nop 
   12340:	84 10 00 08 	mov  %o0, %g2
   12344:	82 10 20 06 	mov  6, %g1
   12348:	c2 23 a0 5c 	st  %g1, [ %sp + 0x5c ]
   1234c:	03 00 00 55 	sethi  %hi(0x15400), %g1
   12350:	90 10 61 30 	or  %g1, 0x130, %o0	! 15530 <_IO_stdin_used+0xca0>
   12354:	92 10 00 02 	mov  %g2, %o1
   12358:	94 10 20 01 	mov  1, %o2
   1235c:	d6 07 bf c0 	ld  [ %fp + -64 ], %o3
   12360:	d8 07 bf 98 	ld  [ %fp + -104 ], %o4
   12364:	da 07 a0 4c 	ld  [ %fp + 0x4c ], %o5
   12368:	40 00 01 bd 	call  12a5c <pout>
   1236c:	01 00 00 00 	nop 
   12370:	c0 27 bf bc 	clr  [ %fp + -68 ]
   12374:	82 10 20 01 	mov  1, %g1
   12378:	c2 27 bf b8 	st  %g1, [ %fp + -72 ]
   1237c:	82 10 20 02 	mov  2, %g1
   12380:	c2 27 bf b4 	st  %g1, [ %fp + -76 ]
   12384:	03 00 00 55 	sethi  %hi(0x15400), %g1
   12388:	82 10 61 84 	or  %g1, 0x184, %g1	! 15584 <_IO_stdin_used+0xcf4>
   1238c:	c2 00 40 00 	ld  [ %g1 ], %g1
   12390:	c2 27 bf a0 	st  %g1, [ %fp + -96 ]
   12394:	03 00 00 55 	sethi  %hi(0x15400), %g1
   12398:	82 10 61 7c 	or  %g1, 0x17c, %g1	! 1557c <_IO_stdin_used+0xcec>
   1239c:	c2 00 40 00 	ld  [ %g1 ], %g1
   123a0:	c2 27 bf a4 	st  %g1, [ %fp + -92 ]
   123a4:	03 00 00 55 	sethi  %hi(0x15400), %g1
   123a8:	82 10 61 98 	or  %g1, 0x198, %g1	! 15598 <_IO_stdin_used+0xd08>
   123ac:	c2 00 40 00 	ld  [ %g1 ], %g1
   123b0:	c2 27 bf a8 	st  %g1, [ %fp + -88 ]
   123b4:	40 00 02 94 	call  12e04 <dtime>
   123b8:	01 00 00 00 	nop 
   123bc:	82 10 00 08 	mov  %o0, %g1
   123c0:	c2 27 bf 9c 	st  %g1, [ %fp + -100 ]
   123c4:	c0 27 bf d0 	clr  [ %fp + -48 ]
   123c8:	c4 07 bf d0 	ld  [ %fp + -48 ], %g2
   123cc:	c2 07 a0 44 	ld  [ %fp + 0x44 ], %g1
   123d0:	80 a0 80 01 	cmp  %g2, %g1
   123d4:	16 80 00 19 	bge  12438 <whetstones+0xff4>
   123d8:	01 00 00 00 	nop 
   123dc:	c0 27 bf d4 	clr  [ %fp + -44 ]
   123e0:	c4 07 bf d4 	ld  [ %fp + -44 ], %g2
   123e4:	c2 07 bf dc 	ld  [ %fp + -36 ], %g1
   123e8:	80 a0 80 01 	cmp  %g2, %g1
   123ec:	16 80 00 0e 	bge  12424 <whetstones+0xfe0>
   123f0:	01 00 00 00 	nop 
   123f4:	82 07 bf a0 	add  %fp, -96, %g1
   123f8:	90 10 00 01 	mov  %g1, %o0
   123fc:	d2 07 bf bc 	ld  [ %fp + -68 ], %o1
   12400:	d4 07 bf b8 	ld  [ %fp + -72 ], %o2
   12404:	d6 07 bf b4 	ld  [ %fp + -76 ], %o3
   12408:	40 00 01 35 	call  128dc <po>
   1240c:	01 00 00 00 	nop 
   12410:	c2 07 bf d4 	ld  [ %fp + -44 ], %g1
   12414:	82 00 60 01 	inc  %g1
   12418:	c2 27 bf d4 	st  %g1, [ %fp + -44 ]
   1241c:	10 bf ff f1 	b  123e0 <whetstones+0xf9c>
   12420:	01 00 00 00 	nop 
   12424:	c2 07 bf d0 	ld  [ %fp + -48 ], %g1
   12428:	82 00 60 01 	inc  %g1
   1242c:	c2 27 bf d0 	st  %g1, [ %fp + -48 ]
   12430:	10 bf ff e6 	b  123c8 <whetstones+0xf84>
   12434:	01 00 00 00 	nop 
   12438:	40 00 02 73 	call  12e04 <dtime>
   1243c:	01 00 00 00 	nop 
   12440:	82 10 00 08 	mov  %o0, %g1
   12444:	90 10 00 01 	mov  %g1, %o0
   12448:	d2 07 bf 9c 	ld  [ %fp + -100 ], %o1
   1244c:	40 00 03 28 	call  130ec <__subsf3>
   12450:	01 00 00 00 	nop 
   12454:	82 10 00 08 	mov  %o0, %g1
   12458:	c2 27 bf 98 	st  %g1, [ %fp + -104 ]
   1245c:	c4 07 bf dc 	ld  [ %fp + -36 ], %g2
   12460:	82 10 00 02 	mov  %g2, %g1
   12464:	82 00 40 01 	add  %g1, %g1, %g1
   12468:	82 00 40 02 	add  %g1, %g2, %g1
   1246c:	90 10 00 01 	mov  %g1, %o0
   12470:	40 00 04 43 	call  1357c <__floatsisf>
   12474:	01 00 00 00 	nop 
   12478:	a0 10 00 08 	mov  %o0, %l0
   1247c:	d0 07 a0 44 	ld  [ %fp + 0x44 ], %o0
   12480:	40 00 04 3f 	call  1357c <__floatsisf>
   12484:	01 00 00 00 	nop 
   12488:	82 10 00 08 	mov  %o0, %g1
   1248c:	90 10 00 10 	mov  %l0, %o0
   12490:	92 10 00 01 	mov  %g1, %o1
   12494:	40 00 03 2e 	call  1314c <__mulsf3>
   12498:	01 00 00 00 	nop 
   1249c:	84 10 00 08 	mov  %o0, %g2
   124a0:	82 10 20 07 	mov  7, %g1
   124a4:	c2 23 a0 5c 	st  %g1, [ %sp + 0x5c ]
   124a8:	03 00 00 55 	sethi  %hi(0x15400), %g1
   124ac:	90 10 61 48 	or  %g1, 0x148, %o0	! 15548 <_IO_stdin_used+0xcb8>
   124b0:	92 10 00 02 	mov  %g2, %o1
   124b4:	94 10 20 02 	mov  2, %o2
   124b8:	d6 07 bf a8 	ld  [ %fp + -88 ], %o3
   124bc:	d8 07 bf 98 	ld  [ %fp + -104 ], %o4
   124c0:	da 07 a0 4c 	ld  [ %fp + 0x4c ], %o5
   124c4:	40 00 01 66 	call  12a5c <pout>
   124c8:	01 00 00 00 	nop 
   124cc:	03 00 00 55 	sethi  %hi(0x15400), %g1
   124d0:	82 10 61 9c 	or  %g1, 0x19c, %g1	! 1559c <_IO_stdin_used+0xd0c>
   124d4:	c2 00 40 00 	ld  [ %g1 ], %g1
   124d8:	c2 27 bf c8 	st  %g1, [ %fp + -56 ]
   124dc:	40 00 02 4a 	call  12e04 <dtime>
   124e0:	01 00 00 00 	nop 
   124e4:	82 10 00 08 	mov  %o0, %g1
   124e8:	c2 27 bf 9c 	st  %g1, [ %fp + -100 ]
   124ec:	c0 27 bf d0 	clr  [ %fp + -48 ]
   124f0:	c4 07 bf d0 	ld  [ %fp + -48 ], %g2
   124f4:	c2 07 a0 44 	ld  [ %fp + 0x44 ], %g1
   124f8:	80 a0 80 01 	cmp  %g2, %g1
   124fc:	16 80 00 3c 	bge  125ec <whetstones+0x11a8>
   12500:	01 00 00 00 	nop 
   12504:	c0 27 bf d4 	clr  [ %fp + -44 ]
   12508:	c4 07 bf d4 	ld  [ %fp + -44 ], %g2
   1250c:	c2 07 bf d8 	ld  [ %fp + -40 ], %g1
   12510:	80 a0 80 01 	cmp  %g2, %g1
   12514:	16 80 00 31 	bge  125d8 <whetstones+0x1194>
   12518:	01 00 00 00 	nop 
   1251c:	d0 07 bf c8 	ld  [ %fp + -56 ], %o0
   12520:	40 00 04 71 	call  136e4 <__extendsfdf2>
   12524:	01 00 00 00 	nop 
   12528:	84 10 00 08 	mov  %o0, %g2
   1252c:	86 10 00 09 	mov  %o1, %g3
   12530:	90 10 00 02 	mov  %g2, %o0
   12534:	92 10 00 03 	mov  %g3, %o1
   12538:	40 00 4c bc 	call  25828 <log@plt>
   1253c:	01 00 00 00 	nop 
   12540:	a0 10 00 08 	mov  %o0, %l0
   12544:	a2 10 00 09 	mov  %o1, %l1
   12548:	d0 07 bf 8c 	ld  [ %fp + -116 ], %o0
   1254c:	40 00 04 66 	call  136e4 <__extendsfdf2>
   12550:	01 00 00 00 	nop 
   12554:	84 10 00 08 	mov  %o0, %g2
   12558:	86 10 00 09 	mov  %o1, %g3
   1255c:	90 10 00 10 	mov  %l0, %o0
   12560:	92 10 00 11 	mov  %l1, %o1
   12564:	94 10 00 02 	mov  %g2, %o2
   12568:	96 10 00 03 	mov  %g3, %o3
   1256c:	40 00 06 18 	call  13dcc <__divdf3>
   12570:	01 00 00 00 	nop 
   12574:	84 10 00 08 	mov  %o0, %g2
   12578:	86 10 00 09 	mov  %o1, %g3
   1257c:	90 10 00 02 	mov  %g2, %o0
   12580:	92 10 00 03 	mov  %g3, %o1
   12584:	40 00 4c 94 	call  257d4 <exp@plt>
   12588:	01 00 00 00 	nop 
   1258c:	84 10 00 08 	mov  %o0, %g2
   12590:	86 10 00 09 	mov  %o1, %g3
   12594:	90 10 00 02 	mov  %g2, %o0
   12598:	92 10 00 03 	mov  %g3, %o1
   1259c:	40 00 4c 94 	call  257ec <sqrt@plt>
   125a0:	01 00 00 00 	nop 
   125a4:	84 10 00 08 	mov  %o0, %g2
   125a8:	86 10 00 09 	mov  %o1, %g3
   125ac:	90 10 00 02 	mov  %g2, %o0
   125b0:	92 10 00 03 	mov  %g3, %o1
   125b4:	40 00 06 95 	call  14008 <__truncdfsf2>
   125b8:	01 00 00 00 	nop 
   125bc:	82 10 00 08 	mov  %o0, %g1
   125c0:	c2 27 bf c8 	st  %g1, [ %fp + -56 ]
   125c4:	c2 07 bf d4 	ld  [ %fp + -44 ], %g1
   125c8:	82 00 60 01 	inc  %g1
   125cc:	c2 27 bf d4 	st  %g1, [ %fp + -44 ]
   125d0:	10 bf ff ce 	b  12508 <whetstones+0x10c4>
   125d4:	01 00 00 00 	nop 
   125d8:	c2 07 bf d0 	ld  [ %fp + -48 ], %g1
   125dc:	82 00 60 01 	inc  %g1
   125e0:	c2 27 bf d0 	st  %g1, [ %fp + -48 ]
   125e4:	10 bf ff c3 	b  124f0 <whetstones+0x10ac>
   125e8:	01 00 00 00 	nop 
   125ec:	40 00 02 06 	call  12e04 <dtime>
   125f0:	01 00 00 00 	nop 
   125f4:	82 10 00 08 	mov  %o0, %g1
   125f8:	90 10 00 01 	mov  %g1, %o0
   125fc:	d2 07 bf 9c 	ld  [ %fp + -100 ], %o1
   12600:	40 00 02 bb 	call  130ec <__subsf3>
   12604:	01 00 00 00 	nop 
   12608:	82 10 00 08 	mov  %o0, %g1
   1260c:	c2 27 bf 98 	st  %g1, [ %fp + -104 ]
   12610:	c2 07 bf d8 	ld  [ %fp + -40 ], %g1
   12614:	83 28 60 02 	sll  %g1, 2, %g1
   12618:	90 10 00 01 	mov  %g1, %o0
   1261c:	40 00 03 d8 	call  1357c <__floatsisf>
   12620:	01 00 00 00 	nop 
   12624:	a0 10 00 08 	mov  %o0, %l0
   12628:	d0 07 a0 44 	ld  [ %fp + 0x44 ], %o0
   1262c:	40 00 03 d4 	call  1357c <__floatsisf>
   12630:	01 00 00 00 	nop 
   12634:	82 10 00 08 	mov  %o0, %g1
   12638:	90 10 00 10 	mov  %l0, %o0
   1263c:	92 10 00 01 	mov  %g1, %o1
   12640:	40 00 02 c3 	call  1314c <__mulsf3>
   12644:	01 00 00 00 	nop 
   12648:	84 10 00 08 	mov  %o0, %g2
   1264c:	82 10 20 08 	mov  8, %g1
   12650:	c2 23 a0 5c 	st  %g1, [ %sp + 0x5c ]
   12654:	03 00 00 55 	sethi  %hi(0x15400), %g1
   12658:	90 10 61 60 	or  %g1, 0x160, %o0	! 15560 <_IO_stdin_used+0xcd0>
   1265c:	92 10 00 02 	mov  %g2, %o1
   12660:	94 10 20 02 	mov  2, %o2
   12664:	d6 07 bf c8 	ld  [ %fp + -56 ], %o3
   12668:	d8 07 bf 98 	ld  [ %fp + -104 ], %o4
   1266c:	da 07 a0 4c 	ld  [ %fp + 0x4c ], %o5
   12670:	40 00 00 fb 	call  12a5c <pout>
   12674:	01 00 00 00 	nop 
   12678:	01 00 00 00 	nop 
   1267c:	81 c7 e0 08 	ret 
   12680:	81 e8 00 00 	restore 

00012684 <pa>:
   12684:	9d e3 bf 90 	save  %sp, -112, %sp
   12688:	f0 27 a0 44 	st  %i0, [ %fp + 0x44 ]
   1268c:	f2 27 a0 48 	st  %i1, [ %fp + 0x48 ]
   12690:	f4 27 a0 4c 	st  %i2, [ %fp + 0x4c ]
   12694:	c0 27 bf f4 	clr  [ %fp + -12 ]
   12698:	c2 07 bf f4 	ld  [ %fp + -12 ], %g1
   1269c:	80 a0 60 05 	cmp  %g1, 5
   126a0:	14 80 00 8d 	bg  128d4 <pa+0x250>
   126a4:	01 00 00 00 	nop 
   126a8:	e0 07 a0 44 	ld  [ %fp + 0x44 ], %l0
   126ac:	c6 07 a0 44 	ld  [ %fp + 0x44 ], %g3
   126b0:	84 10 20 04 	mov  4, %g2
   126b4:	c2 07 a0 44 	ld  [ %fp + 0x44 ], %g1
   126b8:	82 00 80 01 	add  %g2, %g1, %g1
   126bc:	d0 00 c0 00 	ld  [ %g3 ], %o0
   126c0:	d2 00 40 00 	ld  [ %g1 ], %o1
   126c4:	40 00 02 77 	call  130a0 <__addsf3>
   126c8:	01 00 00 00 	nop 
   126cc:	86 10 00 08 	mov  %o0, %g3
   126d0:	84 10 20 08 	mov  8, %g2
   126d4:	c2 07 a0 44 	ld  [ %fp + 0x44 ], %g1
   126d8:	82 00 80 01 	add  %g2, %g1, %g1
   126dc:	90 10 00 03 	mov  %g3, %o0
   126e0:	d2 00 40 00 	ld  [ %g1 ], %o1
   126e4:	40 00 02 6f 	call  130a0 <__addsf3>
   126e8:	01 00 00 00 	nop 
   126ec:	86 10 00 08 	mov  %o0, %g3
   126f0:	84 10 20 0c 	mov  0xc, %g2
   126f4:	c2 07 a0 44 	ld  [ %fp + 0x44 ], %g1
   126f8:	82 00 80 01 	add  %g2, %g1, %g1
   126fc:	90 10 00 03 	mov  %g3, %o0
   12700:	d2 00 40 00 	ld  [ %g1 ], %o1
   12704:	40 00 02 7a 	call  130ec <__subsf3>
   12708:	01 00 00 00 	nop 
   1270c:	82 10 00 08 	mov  %o0, %g1
   12710:	90 10 00 01 	mov  %g1, %o0
   12714:	d2 07 a0 48 	ld  [ %fp + 0x48 ], %o1
   12718:	40 00 02 8d 	call  1314c <__mulsf3>
   1271c:	01 00 00 00 	nop 
   12720:	82 10 00 08 	mov  %o0, %g1
   12724:	c2 24 00 00 	st  %g1, [ %l0 ]
   12728:	84 10 20 04 	mov  4, %g2
   1272c:	c2 07 a0 44 	ld  [ %fp + 0x44 ], %g1
   12730:	a0 00 80 01 	add  %g2, %g1, %l0
   12734:	c6 07 a0 44 	ld  [ %fp + 0x44 ], %g3
   12738:	84 10 20 04 	mov  4, %g2
   1273c:	c2 07 a0 44 	ld  [ %fp + 0x44 ], %g1
   12740:	82 00 80 01 	add  %g2, %g1, %g1
   12744:	d0 00 c0 00 	ld  [ %g3 ], %o0
   12748:	d2 00 40 00 	ld  [ %g1 ], %o1
   1274c:	40 00 02 55 	call  130a0 <__addsf3>
   12750:	01 00 00 00 	nop 
   12754:	86 10 00 08 	mov  %o0, %g3
   12758:	84 10 20 08 	mov  8, %g2
   1275c:	c2 07 a0 44 	ld  [ %fp + 0x44 ], %g1
   12760:	82 00 80 01 	add  %g2, %g1, %g1
   12764:	90 10 00 03 	mov  %g3, %o0
   12768:	d2 00 40 00 	ld  [ %g1 ], %o1
   1276c:	40 00 02 60 	call  130ec <__subsf3>
   12770:	01 00 00 00 	nop 
   12774:	86 10 00 08 	mov  %o0, %g3
   12778:	84 10 20 0c 	mov  0xc, %g2
   1277c:	c2 07 a0 44 	ld  [ %fp + 0x44 ], %g1
   12780:	82 00 80 01 	add  %g2, %g1, %g1
   12784:	90 10 00 03 	mov  %g3, %o0
   12788:	d2 00 40 00 	ld  [ %g1 ], %o1
   1278c:	40 00 02 45 	call  130a0 <__addsf3>
   12790:	01 00 00 00 	nop 
   12794:	82 10 00 08 	mov  %o0, %g1
   12798:	90 10 00 01 	mov  %g1, %o0
   1279c:	d2 07 a0 48 	ld  [ %fp + 0x48 ], %o1
   127a0:	40 00 02 6b 	call  1314c <__mulsf3>
   127a4:	01 00 00 00 	nop 
   127a8:	82 10 00 08 	mov  %o0, %g1
   127ac:	c2 24 00 00 	st  %g1, [ %l0 ]
   127b0:	84 10 20 08 	mov  8, %g2
   127b4:	c2 07 a0 44 	ld  [ %fp + 0x44 ], %g1
   127b8:	a0 00 80 01 	add  %g2, %g1, %l0
   127bc:	c6 07 a0 44 	ld  [ %fp + 0x44 ], %g3
   127c0:	84 10 20 04 	mov  4, %g2
   127c4:	c2 07 a0 44 	ld  [ %fp + 0x44 ], %g1
   127c8:	82 00 80 01 	add  %g2, %g1, %g1
   127cc:	d0 00 c0 00 	ld  [ %g3 ], %o0
   127d0:	d2 00 40 00 	ld  [ %g1 ], %o1
   127d4:	40 00 02 46 	call  130ec <__subsf3>
   127d8:	01 00 00 00 	nop 
   127dc:	86 10 00 08 	mov  %o0, %g3
   127e0:	84 10 20 08 	mov  8, %g2
   127e4:	c2 07 a0 44 	ld  [ %fp + 0x44 ], %g1
   127e8:	82 00 80 01 	add  %g2, %g1, %g1
   127ec:	90 10 00 03 	mov  %g3, %o0
   127f0:	d2 00 40 00 	ld  [ %g1 ], %o1
   127f4:	40 00 02 2b 	call  130a0 <__addsf3>
   127f8:	01 00 00 00 	nop 
   127fc:	86 10 00 08 	mov  %o0, %g3
   12800:	84 10 20 0c 	mov  0xc, %g2
   12804:	c2 07 a0 44 	ld  [ %fp + 0x44 ], %g1
   12808:	82 00 80 01 	add  %g2, %g1, %g1
   1280c:	90 10 00 03 	mov  %g3, %o0
   12810:	d2 00 40 00 	ld  [ %g1 ], %o1
   12814:	40 00 02 23 	call  130a0 <__addsf3>
   12818:	01 00 00 00 	nop 
   1281c:	82 10 00 08 	mov  %o0, %g1
   12820:	90 10 00 01 	mov  %g1, %o0
   12824:	d2 07 a0 48 	ld  [ %fp + 0x48 ], %o1
   12828:	40 00 02 49 	call  1314c <__mulsf3>
   1282c:	01 00 00 00 	nop 
   12830:	82 10 00 08 	mov  %o0, %g1
   12834:	c2 24 00 00 	st  %g1, [ %l0 ]
   12838:	84 10 20 0c 	mov  0xc, %g2
   1283c:	c2 07 a0 44 	ld  [ %fp + 0x44 ], %g1
   12840:	a0 00 80 01 	add  %g2, %g1, %l0
   12844:	84 10 20 04 	mov  4, %g2
   12848:	c2 07 a0 44 	ld  [ %fp + 0x44 ], %g1
   1284c:	82 00 80 01 	add  %g2, %g1, %g1
   12850:	c4 07 a0 44 	ld  [ %fp + 0x44 ], %g2
   12854:	d0 00 40 00 	ld  [ %g1 ], %o0
   12858:	d2 00 80 00 	ld  [ %g2 ], %o1
   1285c:	40 00 02 24 	call  130ec <__subsf3>
   12860:	01 00 00 00 	nop 
   12864:	86 10 00 08 	mov  %o0, %g3
   12868:	84 10 20 08 	mov  8, %g2
   1286c:	c2 07 a0 44 	ld  [ %fp + 0x44 ], %g1
   12870:	82 00 80 01 	add  %g2, %g1, %g1
   12874:	90 10 00 03 	mov  %g3, %o0
   12878:	d2 00 40 00 	ld  [ %g1 ], %o1
   1287c:	40 00 02 09 	call  130a0 <__addsf3>
   12880:	01 00 00 00 	nop 
   12884:	86 10 00 08 	mov  %o0, %g3
   12888:	84 10 20 0c 	mov  0xc, %g2
   1288c:	c2 07 a0 44 	ld  [ %fp + 0x44 ], %g1
   12890:	82 00 80 01 	add  %g2, %g1, %g1
   12894:	90 10 00 03 	mov  %g3, %o0
   12898:	d2 00 40 00 	ld  [ %g1 ], %o1
   1289c:	40 00 02 01 	call  130a0 <__addsf3>
   128a0:	01 00 00 00 	nop 
   128a4:	82 10 00 08 	mov  %o0, %g1
   128a8:	90 10 00 01 	mov  %g1, %o0
   128ac:	d2 07 a0 4c 	ld  [ %fp + 0x4c ], %o1
   128b0:	40 00 02 a3 	call  1333c <__divsf3>
   128b4:	01 00 00 00 	nop 
   128b8:	82 10 00 08 	mov  %o0, %g1
   128bc:	c2 24 00 00 	st  %g1, [ %l0 ]
   128c0:	c2 07 bf f4 	ld  [ %fp + -12 ], %g1
   128c4:	82 00 60 01 	inc  %g1
   128c8:	c2 27 bf f4 	st  %g1, [ %fp + -12 ]
   128cc:	10 bf ff 73 	b  12698 <pa+0x14>
   128d0:	01 00 00 00 	nop 
   128d4:	81 c7 e0 08 	ret 
   128d8:	81 e8 00 00 	restore 

000128dc <po>:
   128dc:	9d e3 bf 98 	save  %sp, -104, %sp
   128e0:	f0 27 a0 44 	st  %i0, [ %fp + 0x44 ]
   128e4:	f2 27 a0 48 	st  %i1, [ %fp + 0x48 ]
   128e8:	f4 27 a0 4c 	st  %i2, [ %fp + 0x4c ]
   128ec:	f6 27 a0 50 	st  %i3, [ %fp + 0x50 ]
   128f0:	c2 07 a0 48 	ld  [ %fp + 0x48 ], %g1
   128f4:	85 28 60 02 	sll  %g1, 2, %g2
   128f8:	c2 07 a0 44 	ld  [ %fp + 0x44 ], %g1
   128fc:	86 00 80 01 	add  %g2, %g1, %g3
   12900:	c2 07 a0 4c 	ld  [ %fp + 0x4c ], %g1
   12904:	85 28 60 02 	sll  %g1, 2, %g2
   12908:	c2 07 a0 44 	ld  [ %fp + 0x44 ], %g1
   1290c:	82 00 80 01 	add  %g2, %g1, %g1
   12910:	c2 00 40 00 	ld  [ %g1 ], %g1
   12914:	c2 20 c0 00 	st  %g1, [ %g3 ]
   12918:	c2 07 a0 4c 	ld  [ %fp + 0x4c ], %g1
   1291c:	85 28 60 02 	sll  %g1, 2, %g2
   12920:	c2 07 a0 44 	ld  [ %fp + 0x44 ], %g1
   12924:	86 00 80 01 	add  %g2, %g1, %g3
   12928:	c2 07 a0 50 	ld  [ %fp + 0x50 ], %g1
   1292c:	85 28 60 02 	sll  %g1, 2, %g2
   12930:	c2 07 a0 44 	ld  [ %fp + 0x44 ], %g1
   12934:	82 00 80 01 	add  %g2, %g1, %g1
   12938:	c2 00 40 00 	ld  [ %g1 ], %g1
   1293c:	c2 20 c0 00 	st  %g1, [ %g3 ]
   12940:	c2 07 a0 50 	ld  [ %fp + 0x50 ], %g1
   12944:	85 28 60 02 	sll  %g1, 2, %g2
   12948:	c2 07 a0 44 	ld  [ %fp + 0x44 ], %g1
   1294c:	86 00 80 01 	add  %g2, %g1, %g3
   12950:	c2 07 a0 48 	ld  [ %fp + 0x48 ], %g1
   12954:	85 28 60 02 	sll  %g1, 2, %g2
   12958:	c2 07 a0 44 	ld  [ %fp + 0x44 ], %g1
   1295c:	82 00 80 01 	add  %g2, %g1, %g1
   12960:	c2 00 40 00 	ld  [ %g1 ], %g1
   12964:	c2 20 c0 00 	st  %g1, [ %g3 ]
   12968:	81 c7 e0 08 	ret 
   1296c:	81 e8 00 00 	restore 

00012970 <p3>:
   12970:	9d e3 bf 98 	save  %sp, -104, %sp
   12974:	f0 27 a0 44 	st  %i0, [ %fp + 0x44 ]
   12978:	f2 27 a0 48 	st  %i1, [ %fp + 0x48 ]
   1297c:	f4 27 a0 4c 	st  %i2, [ %fp + 0x4c ]
   12980:	f6 27 a0 50 	st  %i3, [ %fp + 0x50 ]
   12984:	f8 27 a0 54 	st  %i4, [ %fp + 0x54 ]
   12988:	fa 27 a0 58 	st  %i5, [ %fp + 0x58 ]
   1298c:	c4 07 a0 44 	ld  [ %fp + 0x44 ], %g2
   12990:	c2 07 a0 48 	ld  [ %fp + 0x48 ], %g1
   12994:	c2 00 40 00 	ld  [ %g1 ], %g1
   12998:	c2 20 80 00 	st  %g1, [ %g2 ]
   1299c:	c4 07 a0 48 	ld  [ %fp + 0x48 ], %g2
   129a0:	c2 07 a0 4c 	ld  [ %fp + 0x4c ], %g1
   129a4:	c2 00 40 00 	ld  [ %g1 ], %g1
   129a8:	c2 20 80 00 	st  %g1, [ %g2 ]
   129ac:	e0 07 a0 44 	ld  [ %fp + 0x44 ], %l0
   129b0:	c2 07 a0 44 	ld  [ %fp + 0x44 ], %g1
   129b4:	c4 07 a0 48 	ld  [ %fp + 0x48 ], %g2
   129b8:	d0 00 40 00 	ld  [ %g1 ], %o0
   129bc:	d2 00 80 00 	ld  [ %g2 ], %o1
   129c0:	40 00 01 b8 	call  130a0 <__addsf3>
   129c4:	01 00 00 00 	nop 
   129c8:	82 10 00 08 	mov  %o0, %g1
   129cc:	90 10 00 01 	mov  %g1, %o0
   129d0:	d2 07 a0 50 	ld  [ %fp + 0x50 ], %o1
   129d4:	40 00 01 de 	call  1314c <__mulsf3>
   129d8:	01 00 00 00 	nop 
   129dc:	82 10 00 08 	mov  %o0, %g1
   129e0:	c2 24 00 00 	st  %g1, [ %l0 ]
   129e4:	e0 07 a0 48 	ld  [ %fp + 0x48 ], %l0
   129e8:	c2 07 a0 44 	ld  [ %fp + 0x44 ], %g1
   129ec:	c4 07 a0 48 	ld  [ %fp + 0x48 ], %g2
   129f0:	d0 00 40 00 	ld  [ %g1 ], %o0
   129f4:	d2 00 80 00 	ld  [ %g2 ], %o1
   129f8:	40 00 01 aa 	call  130a0 <__addsf3>
   129fc:	01 00 00 00 	nop 
   12a00:	82 10 00 08 	mov  %o0, %g1
   12a04:	90 10 00 01 	mov  %g1, %o0
   12a08:	d2 07 a0 54 	ld  [ %fp + 0x54 ], %o1
   12a0c:	40 00 01 d0 	call  1314c <__mulsf3>
   12a10:	01 00 00 00 	nop 
   12a14:	82 10 00 08 	mov  %o0, %g1
   12a18:	c2 24 00 00 	st  %g1, [ %l0 ]
   12a1c:	e0 07 a0 4c 	ld  [ %fp + 0x4c ], %l0
   12a20:	c2 07 a0 44 	ld  [ %fp + 0x44 ], %g1
   12a24:	c4 07 a0 48 	ld  [ %fp + 0x48 ], %g2
   12a28:	d0 00 40 00 	ld  [ %g1 ], %o0
   12a2c:	d2 00 80 00 	ld  [ %g2 ], %o1
   12a30:	40 00 01 9c 	call  130a0 <__addsf3>
   12a34:	01 00 00 00 	nop 
   12a38:	82 10 00 08 	mov  %o0, %g1
   12a3c:	90 10 00 01 	mov  %g1, %o0
   12a40:	d2 07 a0 58 	ld  [ %fp + 0x58 ], %o1
   12a44:	40 00 02 3e 	call  1333c <__divsf3>
   12a48:	01 00 00 00 	nop 
   12a4c:	82 10 00 08 	mov  %o0, %g1
   12a50:	c2 24 00 00 	st  %g1, [ %l0 ]
   12a54:	81 c7 e0 08 	ret 
   12a58:	81 e8 00 00 	restore 

00012a5c <pout>:
   12a5c:	9d e3 bf 90 	save  %sp, -112, %sp
   12a60:	f0 27 a0 44 	st  %i0, [ %fp + 0x44 ]
   12a64:	f2 27 a0 48 	st  %i1, [ %fp + 0x48 ]
   12a68:	f4 27 a0 4c 	st  %i2, [ %fp + 0x4c ]
   12a6c:	f6 27 a0 50 	st  %i3, [ %fp + 0x50 ]
   12a70:	f8 27 a0 54 	st  %i4, [ %fp + 0x54 ]
   12a74:	fa 27 a0 58 	st  %i5, [ %fp + 0x58 ]
   12a78:	03 00 00 96 	sethi  %hi(0x25800), %g1
   12a7c:	a0 10 61 78 	or  %g1, 0x178, %l0	! 25978 <Check>
   12a80:	03 00 00 96 	sethi  %hi(0x25800), %g1
   12a84:	82 10 61 78 	or  %g1, 0x178, %g1	! 25978 <Check>
   12a88:	d0 00 40 00 	ld  [ %g1 ], %o0
   12a8c:	d2 07 a0 50 	ld  [ %fp + 0x50 ], %o1
   12a90:	40 00 01 84 	call  130a0 <__addsf3>
   12a94:	01 00 00 00 	nop 
   12a98:	82 10 00 08 	mov  %o0, %g1
   12a9c:	c2 24 00 00 	st  %g1, [ %l0 ]
   12aa0:	03 00 00 96 	sethi  %hi(0x25800), %g1
   12aa4:	86 10 60 60 	or  %g1, 0x60, %g3	! 25860 <loop_time>
   12aa8:	c2 07 a0 5c 	ld  [ %fp + 0x5c ], %g1
   12aac:	85 28 60 02 	sll  %g1, 2, %g2
   12ab0:	c2 07 a0 54 	ld  [ %fp + 0x54 ], %g1
   12ab4:	c2 20 c0 02 	st  %g1, [ %g3 + %g2 ]
   12ab8:	c4 07 a0 5c 	ld  [ %fp + 0x5c ], %g2
   12abc:	82 10 00 02 	mov  %g2, %g1
   12ac0:	83 28 60 03 	sll  %g1, 3, %g1
   12ac4:	82 00 40 02 	add  %g1, %g2, %g1
   12ac8:	84 00 40 01 	add  %g1, %g1, %g2
   12acc:	03 00 00 96 	sethi  %hi(0x25800), %g1
   12ad0:	82 10 60 d4 	or  %g1, 0xd4, %g1	! 258d4 <headings>
   12ad4:	82 00 80 01 	add  %g2, %g1, %g1
   12ad8:	90 10 00 01 	mov  %g1, %o0
   12adc:	d2 07 a0 44 	ld  [ %fp + 0x44 ], %o1
   12ae0:	40 00 4b 58 	call  25840 <strcpy@plt>
   12ae4:	01 00 00 00 	nop 
   12ae8:	03 00 00 96 	sethi  %hi(0x25800), %g1
   12aec:	a0 10 60 cc 	or  %g1, 0xcc, %l0	! 258cc <TimeUsed>
   12af0:	03 00 00 96 	sethi  %hi(0x25800), %g1
   12af4:	82 10 60 cc 	or  %g1, 0xcc, %g1	! 258cc <TimeUsed>
   12af8:	d0 00 40 00 	ld  [ %g1 ], %o0
   12afc:	d2 07 a0 54 	ld  [ %fp + 0x54 ], %o1
   12b00:	40 00 01 68 	call  130a0 <__addsf3>
   12b04:	01 00 00 00 	nop 
   12b08:	82 10 00 08 	mov  %o0, %g1
   12b0c:	c2 24 00 00 	st  %g1, [ %l0 ]
   12b10:	c2 07 a0 58 	ld  [ %fp + 0x58 ], %g1
   12b14:	80 a0 60 01 	cmp  %g1, 1
   12b18:	12 80 00 08 	bne  12b38 <pout+0xdc>
   12b1c:	01 00 00 00 	nop 
   12b20:	03 00 00 96 	sethi  %hi(0x25800), %g1
   12b24:	86 10 61 7c 	or  %g1, 0x17c, %g3	! 2597c <results>
   12b28:	c2 07 a0 5c 	ld  [ %fp + 0x5c ], %g1
   12b2c:	85 28 60 02 	sll  %g1, 2, %g2
   12b30:	c2 07 a0 50 	ld  [ %fp + 0x50 ], %g1
   12b34:	c2 20 c0 02 	st  %g1, [ %g3 + %g2 ]
   12b38:	c2 07 a0 58 	ld  [ %fp + 0x58 ], %g1
   12b3c:	80 a0 60 00 	cmp  %g1, 0
   12b40:	12 80 00 ae 	bne  12df8 <pout+0x39c>
   12b44:	01 00 00 00 	nop 
   12b48:	c4 07 a0 5c 	ld  [ %fp + 0x5c ], %g2
   12b4c:	82 10 00 02 	mov  %g2, %g1
   12b50:	83 28 60 03 	sll  %g1, 3, %g1
   12b54:	82 00 40 02 	add  %g1, %g2, %g1
   12b58:	84 00 40 01 	add  %g1, %g1, %g2
   12b5c:	03 00 00 96 	sethi  %hi(0x25800), %g1
   12b60:	82 10 60 d4 	or  %g1, 0xd4, %g1	! 258d4 <headings>
   12b64:	a0 00 80 01 	add  %g2, %g1, %l0
   12b68:	03 00 00 96 	sethi  %hi(0x25800), %g1
   12b6c:	84 10 61 7c 	or  %g1, 0x17c, %g2	! 2597c <results>
   12b70:	c2 07 a0 5c 	ld  [ %fp + 0x5c ], %g1
   12b74:	83 28 60 02 	sll  %g1, 2, %g1
   12b78:	d0 00 80 01 	ld  [ %g2 + %g1 ], %o0
   12b7c:	40 00 02 da 	call  136e4 <__extendsfdf2>
   12b80:	01 00 00 00 	nop 
   12b84:	84 10 00 08 	mov  %o0, %g2
   12b88:	86 10 00 09 	mov  %o1, %g3
   12b8c:	03 00 00 55 	sethi  %hi(0x15400), %g1
   12b90:	90 10 61 a0 	or  %g1, 0x1a0, %o0	! 155a0 <_IO_stdin_used+0xd10>
   12b94:	92 10 00 10 	mov  %l0, %o1
   12b98:	94 10 00 02 	mov  %g2, %o2
   12b9c:	96 10 00 03 	mov  %g3, %o3
   12ba0:	40 00 4b 25 	call  25834 <printf@plt>
   12ba4:	01 00 00 00 	nop 
   12ba8:	c2 07 a0 4c 	ld  [ %fp + 0x4c ], %g1
   12bac:	80 a0 60 01 	cmp  %g1, 1
   12bb0:	12 80 00 4b 	bne  12cdc <pout+0x280>
   12bb4:	01 00 00 00 	nop 
   12bb8:	03 00 00 55 	sethi  %hi(0x15400), %g1
   12bbc:	82 10 61 e0 	or  %g1, 0x1e0, %g1	! 155e0 <_IO_stdin_used+0xd50>
   12bc0:	d0 07 a0 54 	ld  [ %fp + 0x54 ], %o0
   12bc4:	d2 00 40 00 	ld  [ %g1 ], %o1
   12bc8:	40 00 02 52 	call  13510 <__gtsf2>
   12bcc:	01 00 00 00 	nop 
   12bd0:	82 10 00 08 	mov  %o0, %g1
   12bd4:	80 a0 60 00 	cmp  %g1, 0
   12bd8:	14 80 00 04 	bg  12be8 <pout+0x18c>
   12bdc:	01 00 00 00 	nop 
   12be0:	10 80 00 11 	b  12c24 <pout+0x1c8>
   12be4:	01 00 00 00 	nop 
   12be8:	03 00 00 55 	sethi  %hi(0x15400), %g1
   12bec:	82 10 61 e4 	or  %g1, 0x1e4, %g1	! 155e4 <_IO_stdin_used+0xd54>
   12bf0:	d0 07 a0 54 	ld  [ %fp + 0x54 ], %o0
   12bf4:	d2 00 40 00 	ld  [ %g1 ], %o1
   12bf8:	40 00 01 55 	call  1314c <__mulsf3>
   12bfc:	01 00 00 00 	nop 
   12c00:	82 10 00 08 	mov  %o0, %g1
   12c04:	d0 07 a0 48 	ld  [ %fp + 0x48 ], %o0
   12c08:	92 10 00 01 	mov  %g1, %o1
   12c0c:	40 00 01 cc 	call  1333c <__divsf3>
   12c10:	01 00 00 00 	nop 
   12c14:	82 10 00 08 	mov  %o0, %g1
   12c18:	c2 27 bf f0 	st  %g1, [ %fp + -16 ]
   12c1c:	10 80 00 06 	b  12c34 <pout+0x1d8>
   12c20:	01 00 00 00 	nop 
   12c24:	03 00 00 55 	sethi  %hi(0x15400), %g1
   12c28:	82 10 61 e0 	or  %g1, 0x1e0, %g1	! 155e0 <_IO_stdin_used+0xd50>
   12c2c:	c2 00 40 00 	ld  [ %g1 ], %g1
   12c30:	c2 27 bf f0 	st  %g1, [ %fp + -16 ]
   12c34:	03 00 00 96 	sethi  %hi(0x25800), %g1
   12c38:	86 10 60 84 	or  %g1, 0x84, %g3	! 25884 <loop_mops>
   12c3c:	c2 07 a0 5c 	ld  [ %fp + 0x5c ], %g1
   12c40:	85 28 60 02 	sll  %g1, 2, %g2
   12c44:	03 00 00 55 	sethi  %hi(0x15400), %g1
   12c48:	82 10 61 e8 	or  %g1, 0x1e8, %g1	! 155e8 <_IO_stdin_used+0xd58>
   12c4c:	c2 00 40 00 	ld  [ %g1 ], %g1
   12c50:	c2 20 c0 02 	st  %g1, [ %g3 + %g2 ]
   12c54:	03 00 00 96 	sethi  %hi(0x25800), %g1
   12c58:	86 10 60 a8 	or  %g1, 0xa8, %g3	! 258a8 <loop_mflops>
   12c5c:	c2 07 a0 5c 	ld  [ %fp + 0x5c ], %g1
   12c60:	85 28 60 02 	sll  %g1, 2, %g2
   12c64:	c2 07 bf f0 	ld  [ %fp + -16 ], %g1
   12c68:	c2 20 c0 02 	st  %g1, [ %g3 + %g2 ]
   12c6c:	03 00 00 96 	sethi  %hi(0x25800), %g1
   12c70:	84 10 60 a8 	or  %g1, 0xa8, %g2	! 258a8 <loop_mflops>
   12c74:	c2 07 a0 5c 	ld  [ %fp + 0x5c ], %g1
   12c78:	83 28 60 02 	sll  %g1, 2, %g1
   12c7c:	d0 00 80 01 	ld  [ %g2 + %g1 ], %o0
   12c80:	40 00 02 99 	call  136e4 <__extendsfdf2>
   12c84:	01 00 00 00 	nop 
   12c88:	a0 10 00 08 	mov  %o0, %l0
   12c8c:	a2 10 00 09 	mov  %o1, %l1
   12c90:	03 00 00 96 	sethi  %hi(0x25800), %g1
   12c94:	84 10 60 60 	or  %g1, 0x60, %g2	! 25860 <loop_time>
   12c98:	c2 07 a0 5c 	ld  [ %fp + 0x5c ], %g1
   12c9c:	83 28 60 02 	sll  %g1, 2, %g1
   12ca0:	d0 00 80 01 	ld  [ %g2 + %g1 ], %o0
   12ca4:	40 00 02 90 	call  136e4 <__extendsfdf2>
   12ca8:	01 00 00 00 	nop 
   12cac:	84 10 00 08 	mov  %o0, %g2
   12cb0:	86 10 00 09 	mov  %o1, %g3
   12cb4:	03 00 00 55 	sethi  %hi(0x15400), %g1
   12cb8:	90 10 61 b0 	or  %g1, 0x1b0, %o0	! 155b0 <_IO_stdin_used+0xd20>
   12cbc:	92 10 00 10 	mov  %l0, %o1
   12cc0:	94 10 00 11 	mov  %l1, %o2
   12cc4:	96 10 00 02 	mov  %g2, %o3
   12cc8:	98 10 00 03 	mov  %g3, %o4
   12ccc:	40 00 4a da 	call  25834 <printf@plt>
   12cd0:	01 00 00 00 	nop 
   12cd4:	10 80 00 49 	b  12df8 <pout+0x39c>
   12cd8:	01 00 00 00 	nop 
   12cdc:	03 00 00 55 	sethi  %hi(0x15400), %g1
   12ce0:	82 10 61 e0 	or  %g1, 0x1e0, %g1	! 155e0 <_IO_stdin_used+0xd50>
   12ce4:	d0 07 a0 54 	ld  [ %fp + 0x54 ], %o0
   12ce8:	d2 00 40 00 	ld  [ %g1 ], %o1
   12cec:	40 00 02 09 	call  13510 <__gtsf2>
   12cf0:	01 00 00 00 	nop 
   12cf4:	82 10 00 08 	mov  %o0, %g1
   12cf8:	80 a0 60 00 	cmp  %g1, 0
   12cfc:	14 80 00 04 	bg  12d0c <pout+0x2b0>
   12d00:	01 00 00 00 	nop 
   12d04:	10 80 00 11 	b  12d48 <pout+0x2ec>
   12d08:	01 00 00 00 	nop 
   12d0c:	03 00 00 55 	sethi  %hi(0x15400), %g1
   12d10:	82 10 61 e4 	or  %g1, 0x1e4, %g1	! 155e4 <_IO_stdin_used+0xd54>
   12d14:	d0 07 a0 54 	ld  [ %fp + 0x54 ], %o0
   12d18:	d2 00 40 00 	ld  [ %g1 ], %o1
   12d1c:	40 00 01 0c 	call  1314c <__mulsf3>
   12d20:	01 00 00 00 	nop 
   12d24:	82 10 00 08 	mov  %o0, %g1
   12d28:	d0 07 a0 48 	ld  [ %fp + 0x48 ], %o0
   12d2c:	92 10 00 01 	mov  %g1, %o1
   12d30:	40 00 01 83 	call  1333c <__divsf3>
   12d34:	01 00 00 00 	nop 
   12d38:	82 10 00 08 	mov  %o0, %g1
   12d3c:	c2 27 bf f4 	st  %g1, [ %fp + -12 ]
   12d40:	10 80 00 06 	b  12d58 <pout+0x2fc>
   12d44:	01 00 00 00 	nop 
   12d48:	03 00 00 55 	sethi  %hi(0x15400), %g1
   12d4c:	82 10 61 e0 	or  %g1, 0x1e0, %g1	! 155e0 <_IO_stdin_used+0xd50>
   12d50:	c2 00 40 00 	ld  [ %g1 ], %g1
   12d54:	c2 27 bf f4 	st  %g1, [ %fp + -12 ]
   12d58:	03 00 00 96 	sethi  %hi(0x25800), %g1
   12d5c:	86 10 60 84 	or  %g1, 0x84, %g3	! 25884 <loop_mops>
   12d60:	c2 07 a0 5c 	ld  [ %fp + 0x5c ], %g1
   12d64:	85 28 60 02 	sll  %g1, 2, %g2
   12d68:	c2 07 bf f4 	ld  [ %fp + -12 ], %g1
   12d6c:	c2 20 c0 02 	st  %g1, [ %g3 + %g2 ]
   12d70:	03 00 00 96 	sethi  %hi(0x25800), %g1
   12d74:	86 10 60 a8 	or  %g1, 0xa8, %g3	! 258a8 <loop_mflops>
   12d78:	c2 07 a0 5c 	ld  [ %fp + 0x5c ], %g1
   12d7c:	85 28 60 02 	sll  %g1, 2, %g2
   12d80:	03 00 00 55 	sethi  %hi(0x15400), %g1
   12d84:	82 10 61 e0 	or  %g1, 0x1e0, %g1	! 155e0 <_IO_stdin_used+0xd50>
   12d88:	c2 00 40 00 	ld  [ %g1 ], %g1
   12d8c:	c2 20 c0 02 	st  %g1, [ %g3 + %g2 ]
   12d90:	03 00 00 96 	sethi  %hi(0x25800), %g1
   12d94:	84 10 60 84 	or  %g1, 0x84, %g2	! 25884 <loop_mops>
   12d98:	c2 07 a0 5c 	ld  [ %fp + 0x5c ], %g1
   12d9c:	83 28 60 02 	sll  %g1, 2, %g1
   12da0:	d0 00 80 01 	ld  [ %g2 + %g1 ], %o0
   12da4:	40 00 02 50 	call  136e4 <__extendsfdf2>
   12da8:	01 00 00 00 	nop 
   12dac:	a0 10 00 08 	mov  %o0, %l0
   12db0:	a2 10 00 09 	mov  %o1, %l1
   12db4:	03 00 00 96 	sethi  %hi(0x25800), %g1
   12db8:	84 10 60 60 	or  %g1, 0x60, %g2	! 25860 <loop_time>
   12dbc:	c2 07 a0 5c 	ld  [ %fp + 0x5c ], %g1
   12dc0:	83 28 60 02 	sll  %g1, 2, %g1
   12dc4:	d0 00 80 01 	ld  [ %g2 + %g1 ], %o0
   12dc8:	40 00 02 47 	call  136e4 <__extendsfdf2>
   12dcc:	01 00 00 00 	nop 
   12dd0:	84 10 00 08 	mov  %o0, %g2
   12dd4:	86 10 00 09 	mov  %o1, %g3
   12dd8:	03 00 00 55 	sethi  %hi(0x15400), %g1
   12ddc:	90 10 61 c8 	or  %g1, 0x1c8, %o0	! 155c8 <_IO_stdin_used+0xd38>
   12de0:	92 10 00 10 	mov  %l0, %o1
   12de4:	94 10 00 11 	mov  %l1, %o2
   12de8:	96 10 00 02 	mov  %g2, %o3
   12dec:	98 10 00 03 	mov  %g3, %o4
   12df0:	40 00 4a 91 	call  25834 <printf@plt>
   12df4:	01 00 00 00 	nop 
   12df8:	01 00 00 00 	nop 
   12dfc:	81 c7 e0 08 	ret 
   12e00:	81 e8 00 00 	restore 

00012e04 <dtime>:
   12e04:	9d e3 bf 90 	save  %sp, -112, %sp
   12e08:	40 00 4a 67 	call  257a4 <clock@plt>
   12e0c:	01 00 00 00 	nop 
   12e10:	84 10 00 08 	mov  %o0, %g2
   12e14:	03 00 00 96 	sethi  %hi(0x25800), %g1
   12e18:	82 10 61 a0 	or  %g1, 0x1a0, %g1	! 259a0 <tnow>
   12e1c:	c4 20 40 00 	st  %g2, [ %g1 ]
   12e20:	03 00 00 96 	sethi  %hi(0x25800), %g1
   12e24:	82 10 61 a0 	or  %g1, 0x1a0, %g1	! 259a0 <tnow>
   12e28:	d0 00 40 00 	ld  [ %g1 ], %o0
   12e2c:	40 00 01 d4 	call  1357c <__floatsisf>
   12e30:	01 00 00 00 	nop 
   12e34:	84 10 00 08 	mov  %o0, %g2
   12e38:	03 00 00 55 	sethi  %hi(0x15400), %g1
   12e3c:	82 10 61 ec 	or  %g1, 0x1ec, %g1	! 155ec <_IO_stdin_used+0xd5c>
   12e40:	90 10 00 02 	mov  %g2, %o0
   12e44:	d2 00 40 00 	ld  [ %g1 ], %o1
   12e48:	40 00 01 3d 	call  1333c <__divsf3>
   12e4c:	01 00 00 00 	nop 
   12e50:	82 10 00 08 	mov  %o0, %g1
   12e54:	c2 27 bf f4 	st  %g1, [ %fp + -12 ]
   12e58:	c2 07 bf f4 	ld  [ %fp + -12 ], %g1
   12e5c:	b0 10 00 01 	mov  %g1, %i0
   12e60:	81 c7 e0 08 	ret 
   12e64:	81 e8 00 00 	restore 
   12e68:	81 c3 e0 08 	retl 
   12e6c:	ae 03 c0 17 	add  %o7, %l7, %l7

00012e70 <_fpadd_parts>:
   12e70:	9d e3 bf 98 	save  %sp, -104, %sp
   12e74:	c4 06 00 00 	ld  [ %i0 ], %g2
   12e78:	2f 00 00 4a 	sethi  %hi(0x12800), %l7
   12e7c:	7f ff ff fb 	call  12e68 <dtime+0x64>
   12e80:	ae 05 e0 c8 	add  %l7, 0xc8, %l7	! 128c8 <pa+0x244>
   12e84:	80 a0 a0 01 	cmp  %g2, 1
   12e88:	08 80 00 84 	bleu  13098 <_fpadd_parts+0x228>
   12e8c:	88 10 00 18 	mov  %i0, %g4
   12e90:	c2 06 40 00 	ld  [ %i1 ], %g1
   12e94:	80 a0 60 01 	cmp  %g1, 1
   12e98:	08 80 00 80 	bleu  13098 <_fpadd_parts+0x228>
   12e9c:	b0 10 00 19 	mov  %i1, %i0
   12ea0:	80 a0 a0 04 	cmp  %g2, 4
   12ea4:	12 80 00 0c 	bne  12ed4 <_fpadd_parts+0x64>
   12ea8:	80 a0 60 04 	cmp  %g1, 4
   12eac:	12 80 00 7b 	bne  13098 <_fpadd_parts+0x228>
   12eb0:	b0 10 00 04 	mov  %g4, %i0
   12eb4:	c4 06 60 04 	ld  [ %i1 + 4 ], %g2
   12eb8:	c2 01 20 04 	ld  [ %g4 + 4 ], %g1
   12ebc:	80 a0 40 02 	cmp  %g1, %g2
   12ec0:	02 80 00 76 	be  13098 <_fpadd_parts+0x228>
   12ec4:	03 00 00 00 	sethi  %hi(0), %g1
   12ec8:	82 10 60 08 	or  %g1, 8, %g1	! 8 <_init-0x105b8>
   12ecc:	10 80 00 73 	b  13098 <_fpadd_parts+0x228>
   12ed0:	f0 05 c0 01 	ld  [ %l7 + %g1 ], %i0
   12ed4:	02 80 00 71 	be  13098 <_fpadd_parts+0x228>
   12ed8:	b0 10 00 19 	mov  %i1, %i0
   12edc:	80 a0 60 02 	cmp  %g1, 2
   12ee0:	02 80 00 48 	be  13000 <_fpadd_parts+0x190>
   12ee4:	80 a0 a0 02 	cmp  %g2, 2
   12ee8:	02 80 00 6c 	be  13098 <_fpadd_parts+0x228>
   12eec:	01 00 00 00 	nop 
   12ef0:	de 01 20 08 	ld  [ %g4 + 8 ], %o7
   12ef4:	c6 06 60 08 	ld  [ %i1 + 8 ], %g3
   12ef8:	82 23 c0 03 	sub  %o7, %g3, %g1
   12efc:	85 38 60 1f 	sra  %g1, 0x1f, %g2
   12f00:	82 18 40 02 	xor  %g1, %g2, %g1
   12f04:	82 20 40 02 	sub  %g1, %g2, %g1
   12f08:	80 a0 60 1f 	cmp  %g1, 0x1f
   12f0c:	da 01 20 0c 	ld  [ %g4 + 0xc ], %o5
   12f10:	14 80 00 4b 	bg  1303c <_fpadd_parts+0x1cc>
   12f14:	d8 06 60 0c 	ld  [ %i1 + 0xc ], %o4
   12f18:	80 a3 c0 03 	cmp  %o7, %g3
   12f1c:	04 80 00 0a 	ble  12f44 <_fpadd_parts+0xd4>
   12f20:	80 a0 c0 0f 	cmp  %g3, %o7
   12f24:	86 23 c0 03 	sub  %o7, %g3, %g3
   12f28:	85 33 20 01 	srl  %o4, 1, %g2
   12f2c:	82 0b 20 01 	and  %o4, 1, %g1
   12f30:	86 80 ff ff 	addcc  %g3, -1, %g3
   12f34:	12 bf ff fd 	bne  12f28 <_fpadd_parts+0xb8>
   12f38:	98 10 40 02 	or  %g1, %g2, %o4
   12f3c:	86 10 00 0f 	mov  %o7, %g3
   12f40:	80 a0 c0 0f 	cmp  %g3, %o7
   12f44:	24 80 00 0a 	ble,a   12f6c <_fpadd_parts+0xfc>
   12f48:	f0 01 20 04 	ld  [ %g4 + 4 ], %i0
   12f4c:	9e 20 c0 0f 	sub  %g3, %o7, %o7
   12f50:	85 33 60 01 	srl  %o5, 1, %g2
   12f54:	82 0b 60 01 	and  %o5, 1, %g1
   12f58:	9e 83 ff ff 	addcc  %o7, -1, %o7
   12f5c:	12 bf ff fd 	bne  12f50 <_fpadd_parts+0xe0>
   12f60:	9a 10 40 02 	or  %g1, %g2, %o5
   12f64:	9e 10 00 03 	mov  %g3, %o7
   12f68:	f0 01 20 04 	ld  [ %g4 + 4 ], %i0
   12f6c:	c2 06 60 04 	ld  [ %i1 + 4 ], %g1
   12f70:	80 a6 00 01 	cmp  %i0, %g1
   12f74:	02 80 00 37 	be  13050 <_fpadd_parts+0x1e0>
   12f78:	80 a6 20 00 	cmp  %i0, 0
   12f7c:	12 80 00 03 	bne  12f88 <_fpadd_parts+0x118>
   12f80:	82 23 00 0d 	sub  %o4, %o5, %g1
   12f84:	82 23 40 0c 	sub  %o5, %o4, %g1
   12f88:	80 a0 60 00 	cmp  %g1, 0
   12f8c:	06 80 00 40 	bl  1308c <_fpadd_parts+0x21c>
   12f90:	88 20 00 01 	neg  %g1, %g4
   12f94:	88 10 00 01 	mov  %g1, %g4
   12f98:	c0 26 a0 04 	clr  [ %i2 + 4 ]
   12f9c:	03 0f ff ff 	sethi  %hi(0x3ffffc00), %g1
   12fa0:	84 01 3f ff 	add  %g4, -1, %g2
   12fa4:	82 10 63 fe 	or  %g1, 0x3fe, %g1
   12fa8:	80 a0 80 01 	cmp  %g2, %g1
   12fac:	86 10 00 0f 	mov  %o7, %g3
   12fb0:	b2 10 00 04 	mov  %g4, %i1
   12fb4:	18 80 00 0b 	bgu  12fe0 <_fpadd_parts+0x170>
   12fb8:	84 10 00 04 	mov  %g4, %g2
   12fbc:	b0 10 00 01 	mov  %g1, %i0
   12fc0:	88 00 80 02 	add  %g2, %g2, %g4
   12fc4:	9e 00 ff ff 	add  %g3, -1, %o7
   12fc8:	82 01 3f ff 	add  %g4, -1, %g1
   12fcc:	80 a0 40 18 	cmp  %g1, %i0
   12fd0:	b2 10 00 04 	mov  %g4, %i1
   12fd4:	86 10 00 0f 	mov  %o7, %g3
   12fd8:	08 bf ff fa 	bleu  12fc0 <_fpadd_parts+0x150>
   12fdc:	84 10 00 04 	mov  %g4, %g2
   12fe0:	82 10 20 03 	mov  3, %g1
   12fe4:	80 a6 60 00 	cmp  %i1, 0
   12fe8:	06 80 00 21 	bl  1306c <_fpadd_parts+0x1fc>
   12fec:	c2 26 80 00 	st  %g1, [ %i2 ]
   12ff0:	c8 26 a0 0c 	st  %g4, [ %i2 + 0xc ]
   12ff4:	de 26 a0 08 	st  %o7, [ %i2 + 8 ]
   12ff8:	10 80 00 28 	b  13098 <_fpadd_parts+0x228>
   12ffc:	b0 10 00 1a 	mov  %i2, %i0
   13000:	12 80 00 26 	bne  13098 <_fpadd_parts+0x228>
   13004:	b0 10 00 04 	mov  %g4, %i0
   13008:	c4 26 80 00 	st  %g2, [ %i2 ]
   1300c:	c2 01 20 04 	ld  [ %g4 + 4 ], %g1
   13010:	c2 26 a0 04 	st  %g1, [ %i2 + 4 ]
   13014:	c4 01 20 08 	ld  [ %g4 + 8 ], %g2
   13018:	c4 26 a0 08 	st  %g2, [ %i2 + 8 ]
   1301c:	c6 01 20 0c 	ld  [ %g4 + 0xc ], %g3
   13020:	c6 26 a0 0c 	st  %g3, [ %i2 + 0xc ]
   13024:	c2 01 20 04 	ld  [ %g4 + 4 ], %g1
   13028:	c4 06 60 04 	ld  [ %i1 + 4 ], %g2
   1302c:	82 08 40 02 	and  %g1, %g2, %g1
   13030:	c2 26 a0 04 	st  %g1, [ %i2 + 4 ]
   13034:	10 80 00 19 	b  13098 <_fpadd_parts+0x228>
   13038:	b0 10 00 1a 	mov  %i2, %i0
   1303c:	80 a3 c0 03 	cmp  %o7, %g3
   13040:	24 80 00 09 	ble,a   13064 <_fpadd_parts+0x1f4>
   13044:	9e 10 00 03 	mov  %g3, %o7
   13048:	10 bf ff c8 	b  12f68 <_fpadd_parts+0xf8>
   1304c:	98 10 20 00 	clr  %o4
   13050:	88 03 40 0c 	add  %o5, %o4, %g4
   13054:	f0 26 a0 04 	st  %i0, [ %i2 + 4 ]
   13058:	86 10 00 0f 	mov  %o7, %g3
   1305c:	10 bf ff e1 	b  12fe0 <_fpadd_parts+0x170>
   13060:	b2 10 00 04 	mov  %g4, %i1
   13064:	10 bf ff c1 	b  12f68 <_fpadd_parts+0xf8>
   13068:	9a 10 20 00 	clr  %o5
   1306c:	83 36 60 01 	srl  %i1, 1, %g1
   13070:	84 0e 60 01 	and  %i1, 1, %g2
   13074:	84 10 80 01 	or  %g2, %g1, %g2
   13078:	86 00 e0 01 	inc  %g3
   1307c:	c4 26 a0 0c 	st  %g2, [ %i2 + 0xc ]
   13080:	c6 26 a0 08 	st  %g3, [ %i2 + 8 ]
   13084:	10 80 00 05 	b  13098 <_fpadd_parts+0x228>
   13088:	b0 10 00 1a 	mov  %i2, %i0
   1308c:	82 10 20 01 	mov  1, %g1
   13090:	10 bf ff c3 	b  12f9c <_fpadd_parts+0x12c>
   13094:	c2 26 a0 04 	st  %g1, [ %i2 + 4 ]
   13098:	81 c7 e0 08 	ret 
   1309c:	81 e8 00 00 	restore 

000130a0 <__addsf3>:
   130a0:	9d e3 bf 60 	save  %sp, -160, %sp
   130a4:	a2 07 bf e8 	add  %fp, -24, %l1
   130a8:	f0 27 bf c4 	st  %i0, [ %fp + -60 ]
   130ac:	90 07 bf c4 	add  %fp, -60, %o0
   130b0:	92 10 00 11 	mov  %l1, %o1
   130b4:	40 00 04 3f 	call  141b0 <__unpack_f>
   130b8:	f2 27 bf c0 	st  %i1, [ %fp + -64 ]
   130bc:	a0 07 bf d8 	add  %fp, -40, %l0
   130c0:	90 07 bf c0 	add  %fp, -64, %o0
   130c4:	40 00 04 3b 	call  141b0 <__unpack_f>
   130c8:	92 10 00 10 	mov  %l0, %o1
   130cc:	92 10 00 10 	mov  %l0, %o1
   130d0:	94 07 bf c8 	add  %fp, -56, %o2
   130d4:	7f ff ff 67 	call  12e70 <_fpadd_parts>
   130d8:	90 10 00 11 	mov  %l1, %o0
   130dc:	40 00 03 e3 	call  14068 <__pack_f>
   130e0:	01 00 00 00 	nop 
   130e4:	81 c7 e0 08 	ret 
   130e8:	91 e8 00 08 	restore  %g0, %o0, %o0

000130ec <__subsf3>:
   130ec:	9d e3 bf 60 	save  %sp, -160, %sp
   130f0:	a2 07 bf e8 	add  %fp, -24, %l1
   130f4:	f0 27 bf c4 	st  %i0, [ %fp + -60 ]
   130f8:	90 07 bf c4 	add  %fp, -60, %o0
   130fc:	92 10 00 11 	mov  %l1, %o1
   13100:	40 00 04 2c 	call  141b0 <__unpack_f>
   13104:	f2 27 bf c0 	st  %i1, [ %fp + -64 ]
   13108:	a0 07 bf d8 	add  %fp, -40, %l0
   1310c:	90 07 bf c0 	add  %fp, -64, %o0
   13110:	40 00 04 28 	call  141b0 <__unpack_f>
   13114:	92 10 00 10 	mov  %l0, %o1
   13118:	c2 07 bf dc 	ld  [ %fp + -36 ], %g1
   1311c:	82 18 60 01 	xor  %g1, 1, %g1
   13120:	c2 27 bf dc 	st  %g1, [ %fp + -36 ]
   13124:	92 10 00 10 	mov  %l0, %o1
   13128:	94 07 bf c8 	add  %fp, -56, %o2
   1312c:	7f ff ff 51 	call  12e70 <_fpadd_parts>
   13130:	90 10 00 11 	mov  %l1, %o0
   13134:	40 00 03 cd 	call  14068 <__pack_f>
   13138:	01 00 00 00 	nop 
   1313c:	81 c7 e0 08 	ret 
   13140:	91 e8 00 08 	restore  %g0, %o0, %o0
   13144:	81 c3 e0 08 	retl 
   13148:	ae 03 c0 17 	add  %o7, %l7, %l7

0001314c <__mulsf3>:
   1314c:	9d e3 bf 60 	save  %sp, -160, %sp
   13150:	a0 07 bf e8 	add  %fp, -24, %l0
   13154:	2f 00 00 49 	sethi  %hi(0x12400), %l7
   13158:	7f ff ff fb 	call  13144 <__subsf3+0x58>
   1315c:	ae 05 e1 ec 	add  %l7, 0x1ec, %l7	! 125ec <whetstones+0x11a8>
   13160:	f2 27 bf c0 	st  %i1, [ %fp + -64 ]
   13164:	90 07 bf c4 	add  %fp, -60, %o0
   13168:	92 10 00 10 	mov  %l0, %o1
   1316c:	40 00 04 11 	call  141b0 <__unpack_f>
   13170:	f0 27 bf c4 	st  %i0, [ %fp + -60 ]
   13174:	b2 07 bf d8 	add  %fp, -40, %i1
   13178:	90 07 bf c0 	add  %fp, -64, %o0
   1317c:	40 00 04 0d 	call  141b0 <__unpack_f>
   13180:	92 10 00 19 	mov  %i1, %o1
   13184:	c2 07 bf e8 	ld  [ %fp + -24 ], %g1
   13188:	80 a0 60 01 	cmp  %g1, 1
   1318c:	08 80 00 12 	bleu  131d4 <__mulsf3+0x88>
   13190:	90 07 bf c8 	add  %fp, -56, %o0
   13194:	c4 07 bf d8 	ld  [ %fp + -40 ], %g2
   13198:	80 a0 a0 01 	cmp  %g2, 1
   1319c:	28 80 00 1b 	bleu,a   13208 <__mulsf3+0xbc>
   131a0:	c4 07 bf dc 	ld  [ %fp + -36 ], %g2
   131a4:	80 a0 60 04 	cmp  %g1, 4
   131a8:	12 80 00 13 	bne  131f4 <__mulsf3+0xa8>
   131ac:	80 a0 a0 04 	cmp  %g2, 4
   131b0:	80 a0 a0 02 	cmp  %g2, 2
   131b4:	12 80 00 09 	bne  131d8 <__mulsf3+0x8c>
   131b8:	c2 07 bf ec 	ld  [ %fp + -20 ], %g1
   131bc:	03 00 00 00 	sethi  %hi(0), %g1
   131c0:	82 10 60 08 	or  %g1, 8, %g1	! 8 <_init-0x105b8>
   131c4:	10 80 00 58 	b  13324 <__mulsf3+0x1d8>
   131c8:	d0 05 c0 01 	ld  [ %l7 + %g1 ], %o0
   131cc:	12 80 00 16 	bne  13224 <__mulsf3+0xd8>
   131d0:	80 a0 a0 02 	cmp  %g2, 2
   131d4:	c2 07 bf ec 	ld  [ %fp + -20 ], %g1
   131d8:	c4 07 bf dc 	ld  [ %fp + -36 ], %g2
   131dc:	82 18 40 02 	xor  %g1, %g2, %g1
   131e0:	80 a0 00 01 	cmp  %g0, %g1
   131e4:	84 40 20 00 	addx  %g0, 0, %g2
   131e8:	c4 27 bf ec 	st  %g2, [ %fp + -20 ]
   131ec:	10 80 00 4e 	b  13324 <__mulsf3+0x1d8>
   131f0:	90 10 00 10 	mov  %l0, %o0
   131f4:	12 bf ff f6 	bne  131cc <__mulsf3+0x80>
   131f8:	80 a0 60 02 	cmp  %g1, 2
   131fc:	02 bf ff f1 	be  131c0 <__mulsf3+0x74>
   13200:	03 00 00 00 	sethi  %hi(0), %g1
   13204:	c4 07 bf dc 	ld  [ %fp + -36 ], %g2
   13208:	c2 07 bf ec 	ld  [ %fp + -20 ], %g1
   1320c:	82 18 40 02 	xor  %g1, %g2, %g1
   13210:	80 a0 00 01 	cmp  %g0, %g1
   13214:	84 40 20 00 	addx  %g0, 0, %g2
   13218:	c4 27 bf dc 	st  %g2, [ %fp + -36 ]
   1321c:	10 80 00 42 	b  13324 <__mulsf3+0x1d8>
   13220:	90 10 00 19 	mov  %i1, %o0
   13224:	02 bf ff f9 	be  13208 <__mulsf3+0xbc>
   13228:	c4 07 bf dc 	ld  [ %fp + -36 ], %g2
   1322c:	c2 07 bf e4 	ld  [ %fp + -28 ], %g1
   13230:	d8 07 bf f4 	ld  [ %fp + -12 ], %o4
   13234:	9a 53 00 01 	umul  %o4, %g1, %o5
   13238:	99 40 00 00 	rd  %y, %o4
   1323c:	c8 07 bf dc 	ld  [ %fp + -36 ], %g4
   13240:	c2 07 bf ec 	ld  [ %fp + -20 ], %g1
   13244:	82 18 40 04 	xor  %g1, %g4, %g1
   13248:	80 a0 00 01 	cmp  %g0, %g1
   1324c:	c8 07 bf f0 	ld  [ %fp + -16 ], %g4
   13250:	c2 07 bf e0 	ld  [ %fp + -32 ], %g1
   13254:	88 01 00 01 	add  %g4, %g1, %g4
   13258:	86 10 00 0c 	mov  %o4, %g3
   1325c:	96 40 20 00 	addx  %g0, 0, %o3
   13260:	88 01 20 02 	add  %g4, 2, %g4
   13264:	84 10 00 03 	mov  %g3, %g2
   13268:	d6 27 bf cc 	st  %o3, [ %fp + -52 ]
   1326c:	98 10 00 0d 	mov  %o5, %o4
   13270:	80 a0 e0 00 	cmp  %g3, 0
   13274:	06 80 00 1c 	bl  132e4 <__mulsf3+0x198>
   13278:	c8 27 bf d0 	st  %g4, [ %fp + -48 ]
   1327c:	03 0f ff ff 	sethi  %hi(0x3ffffc00), %g1
   13280:	82 10 63 ff 	or  %g1, 0x3ff, %g1	! 3fffffff <_end+0x3ffda657>
   13284:	80 a0 80 01 	cmp  %g2, %g1
   13288:	38 80 00 10 	bgu,a   132c8 <__mulsf3+0x17c>
   1328c:	82 08 a0 7f 	and  %g2, 0x7f, %g1
   13290:	10 80 00 05 	b  132a4 <__mulsf3+0x158>
   13294:	c8 02 20 08 	ld  [ %o0 + 8 ], %g4
   13298:	80 a0 80 01 	cmp  %g2, %g1
   1329c:	38 80 00 0a 	bgu,a   132c4 <__mulsf3+0x178>
   132a0:	c6 22 20 08 	st  %g3, [ %o0 + 8 ]
   132a4:	86 01 3f ff 	add  %g4, -1, %g3
   132a8:	80 a3 20 00 	cmp  %o4, 0
   132ac:	84 00 80 02 	add  %g2, %g2, %g2
   132b0:	98 03 00 0c 	add  %o4, %o4, %o4
   132b4:	16 bf ff f9 	bge  13298 <__mulsf3+0x14c>
   132b8:	88 10 00 03 	mov  %g3, %g4
   132bc:	10 bf ff f7 	b  13298 <__mulsf3+0x14c>
   132c0:	84 10 a0 01 	or  %g2, 1, %g2
   132c4:	82 08 a0 7f 	and  %g2, 0x7f, %g1
   132c8:	80 a0 60 40 	cmp  %g1, 0x40
   132cc:	02 80 00 0f 	be  13308 <__mulsf3+0x1bc>
   132d0:	80 88 a0 80 	btst  0x80, %g2
   132d4:	82 10 20 03 	mov  3, %g1
   132d8:	c4 22 20 0c 	st  %g2, [ %o0 + 0xc ]
   132dc:	10 80 00 12 	b  13324 <__mulsf3+0x1d8>
   132e0:	c2 22 00 00 	st  %g1, [ %o0 ]
   132e4:	80 88 e0 01 	btst  1, %g3
   132e8:	02 80 00 05 	be  132fc <__mulsf3+0x1b0>
   132ec:	88 01 20 01 	inc  %g4
   132f0:	99 33 60 01 	srl  %o5, 1, %o4
   132f4:	03 20 00 00 	sethi  %hi(0x80000000), %g1
   132f8:	98 13 00 01 	or  %o4, %g1, %o4
   132fc:	85 30 a0 01 	srl  %g2, 1, %g2
   13300:	10 bf ff df 	b  1327c <__mulsf3+0x130>
   13304:	c8 22 20 08 	st  %g4, [ %o0 + 8 ]
   13308:	32 bf ff f3 	bne,a   132d4 <__mulsf3+0x188>
   1330c:	84 00 a0 40 	add  %g2, 0x40, %g2
   13310:	80 a3 20 00 	cmp  %o4, 0
   13314:	02 bf ff f1 	be  132d8 <__mulsf3+0x18c>
   13318:	82 10 20 03 	mov  3, %g1
   1331c:	10 bf ff ef 	b  132d8 <__mulsf3+0x18c>
   13320:	84 00 a0 40 	add  %g2, 0x40, %g2
   13324:	40 00 03 51 	call  14068 <__pack_f>
   13328:	01 00 00 00 	nop 
   1332c:	81 c7 e0 08 	ret 
   13330:	91 e8 00 08 	restore  %g0, %o0, %o0
   13334:	81 c3 e0 08 	retl 
   13338:	ae 03 c0 17 	add  %o7, %l7, %l7

0001333c <__divsf3>:
   1333c:	9d e3 bf 70 	save  %sp, -144, %sp
   13340:	a0 07 bf e8 	add  %fp, -24, %l0
   13344:	2f 00 00 48 	sethi  %hi(0x12000), %l7
   13348:	7f ff ff fb 	call  13334 <__mulsf3+0x1e8>
   1334c:	ae 05 e3 fc 	add  %l7, 0x3fc, %l7	! 123fc <whetstones+0xfb8>
   13350:	f2 27 bf d0 	st  %i1, [ %fp + -48 ]
   13354:	90 07 bf d4 	add  %fp, -44, %o0
   13358:	92 10 00 10 	mov  %l0, %o1
   1335c:	40 00 03 95 	call  141b0 <__unpack_f>
   13360:	f0 27 bf d4 	st  %i0, [ %fp + -44 ]
   13364:	b2 07 bf d8 	add  %fp, -40, %i1
   13368:	90 07 bf d0 	add  %fp, -48, %o0
   1336c:	40 00 03 91 	call  141b0 <__unpack_f>
   13370:	92 10 00 19 	mov  %i1, %o1
   13374:	c6 07 bf e8 	ld  [ %fp + -24 ], %g3
   13378:	80 a0 e0 01 	cmp  %g3, 1
   1337c:	08 80 00 48 	bleu  1349c <__divsf3+0x160>
   13380:	90 10 00 10 	mov  %l0, %o0
   13384:	c8 07 bf d8 	ld  [ %fp + -40 ], %g4
   13388:	80 a1 20 01 	cmp  %g4, 1
   1338c:	08 80 00 44 	bleu  1349c <__divsf3+0x160>
   13390:	90 10 00 19 	mov  %i1, %o0
   13394:	c2 07 bf ec 	ld  [ %fp + -20 ], %g1
   13398:	c4 07 bf dc 	ld  [ %fp + -36 ], %g2
   1339c:	82 18 40 02 	xor  %g1, %g2, %g1
   133a0:	80 a0 e0 04 	cmp  %g3, 4
   133a4:	02 80 00 0f 	be  133e0 <__divsf3+0xa4>
   133a8:	c2 27 bf ec 	st  %g1, [ %fp + -20 ]
   133ac:	80 a0 e0 02 	cmp  %g3, 2
   133b0:	02 80 00 0d 	be  133e4 <__divsf3+0xa8>
   133b4:	80 a0 c0 04 	cmp  %g3, %g4
   133b8:	80 a1 20 04 	cmp  %g4, 4
   133bc:	22 80 00 10 	be,a   133fc <__divsf3+0xc0>
   133c0:	c0 27 bf f4 	clr  [ %fp + -12 ]
   133c4:	80 a1 20 02 	cmp  %g4, 2
   133c8:	12 80 00 10 	bne  13408 <__divsf3+0xcc>
   133cc:	c6 07 bf f4 	ld  [ %fp + -12 ], %g3
   133d0:	82 10 20 04 	mov  4, %g1
   133d4:	c2 27 bf e8 	st  %g1, [ %fp + -24 ]
   133d8:	10 80 00 31 	b  1349c <__divsf3+0x160>
   133dc:	90 10 00 10 	mov  %l0, %o0
   133e0:	80 a0 c0 04 	cmp  %g3, %g4
   133e4:	12 80 00 2e 	bne  1349c <__divsf3+0x160>
   133e8:	90 10 00 10 	mov  %l0, %o0
   133ec:	03 00 00 00 	sethi  %hi(0), %g1
   133f0:	82 10 60 08 	or  %g1, 8, %g1	! 8 <_init-0x105b8>
   133f4:	10 80 00 2a 	b  1349c <__divsf3+0x160>
   133f8:	d0 05 c0 01 	ld  [ %l7 + %g1 ], %o0
   133fc:	c0 27 bf f0 	clr  [ %fp + -16 ]
   13400:	10 80 00 27 	b  1349c <__divsf3+0x160>
   13404:	90 10 00 10 	mov  %l0, %o0
   13408:	c8 07 bf e4 	ld  [ %fp + -28 ], %g4
   1340c:	c4 07 bf f0 	ld  [ %fp + -16 ], %g2
   13410:	c2 07 bf e0 	ld  [ %fp + -32 ], %g1
   13414:	80 a0 c0 04 	cmp  %g3, %g4
   13418:	1a 80 00 1f 	bcc  13494 <__divsf3+0x158>
   1341c:	82 20 80 01 	sub  %g2, %g1, %g1
   13420:	82 00 7f ff 	add  %g1, -1, %g1
   13424:	c2 27 bf f0 	st  %g1, [ %fp + -16 ]
   13428:	86 00 c0 03 	add  %g3, %g3, %g3
   1342c:	03 10 00 00 	sethi  %hi(0x40000000), %g1
   13430:	84 10 20 00 	clr  %g2
   13434:	80 a0 c0 04 	cmp  %g3, %g4
   13438:	2a 80 00 05 	bcs,a   1344c <__divsf3+0x110>
   1343c:	83 30 60 01 	srl  %g1, 1, %g1
   13440:	84 10 80 01 	or  %g2, %g1, %g2
   13444:	86 20 c0 04 	sub  %g3, %g4, %g3
   13448:	83 30 60 01 	srl  %g1, 1, %g1
   1344c:	80 a0 60 00 	cmp  %g1, 0
   13450:	12 bf ff f9 	bne  13434 <__divsf3+0xf8>
   13454:	86 00 c0 03 	add  %g3, %g3, %g3
   13458:	82 08 a0 7f 	and  %g2, 0x7f, %g1
   1345c:	80 a0 60 40 	cmp  %g1, 0x40
   13460:	02 80 00 05 	be  13474 <__divsf3+0x138>
   13464:	80 88 a0 80 	btst  0x80, %g2
   13468:	c4 24 20 0c 	st  %g2, [ %l0 + 0xc ]
   1346c:	10 80 00 0c 	b  1349c <__divsf3+0x160>
   13470:	90 10 00 10 	mov  %l0, %o0
   13474:	32 80 00 06 	bne,a   1348c <__divsf3+0x150>
   13478:	84 00 a0 40 	add  %g2, 0x40, %g2
   1347c:	80 a0 e0 00 	cmp  %g3, 0
   13480:	22 bf ff fb 	be,a   1346c <__divsf3+0x130>
   13484:	c4 24 20 0c 	st  %g2, [ %l0 + 0xc ]
   13488:	84 00 a0 40 	add  %g2, 0x40, %g2
   1348c:	10 bf ff f8 	b  1346c <__divsf3+0x130>
   13490:	c4 24 20 0c 	st  %g2, [ %l0 + 0xc ]
   13494:	10 bf ff e6 	b  1342c <__divsf3+0xf0>
   13498:	c2 27 bf f0 	st  %g1, [ %fp + -16 ]
   1349c:	40 00 02 f3 	call  14068 <__pack_f>
   134a0:	01 00 00 00 	nop 
   134a4:	81 c7 e0 08 	ret 
   134a8:	91 e8 00 08 	restore  %g0, %o0, %o0

000134ac <__eqsf2>:
   134ac:	9d e3 bf 70 	save  %sp, -144, %sp
   134b0:	a0 07 bf e8 	add  %fp, -24, %l0
   134b4:	f0 27 bf d4 	st  %i0, [ %fp + -44 ]
   134b8:	f2 27 bf d0 	st  %i1, [ %fp + -48 ]
   134bc:	90 07 bf d4 	add  %fp, -44, %o0
   134c0:	40 00 03 3c 	call  141b0 <__unpack_f>
   134c4:	92 10 00 10 	mov  %l0, %o1
   134c8:	b2 07 bf d8 	add  %fp, -40, %i1
   134cc:	90 07 bf d0 	add  %fp, -48, %o0
   134d0:	40 00 03 38 	call  141b0 <__unpack_f>
   134d4:	92 10 00 19 	mov  %i1, %o1
   134d8:	c2 07 bf e8 	ld  [ %fp + -24 ], %g1
   134dc:	80 a0 60 01 	cmp  %g1, 1
   134e0:	08 80 00 0a 	bleu  13508 <__eqsf2+0x5c>
   134e4:	b0 10 20 01 	mov  1, %i0
   134e8:	c2 07 bf d8 	ld  [ %fp + -40 ], %g1
   134ec:	90 10 00 10 	mov  %l0, %o0
   134f0:	80 a0 60 01 	cmp  %g1, 1
   134f4:	08 80 00 05 	bleu  13508 <__eqsf2+0x5c>
   134f8:	92 10 00 19 	mov  %i1, %o1
   134fc:	40 00 03 63 	call  14288 <__fpcmp_parts_f>
   13500:	01 00 00 00 	nop 
   13504:	b0 10 00 08 	mov  %o0, %i0
   13508:	81 c7 e0 08 	ret 
   1350c:	81 e8 00 00 	restore 

00013510 <__gtsf2>:
   13510:	9d e3 bf 70 	save  %sp, -144, %sp
   13514:	a0 07 bf e8 	add  %fp, -24, %l0
   13518:	f0 27 bf d4 	st  %i0, [ %fp + -44 ]
   1351c:	f2 27 bf d0 	st  %i1, [ %fp + -48 ]
   13520:	90 07 bf d4 	add  %fp, -44, %o0
   13524:	40 00 03 23 	call  141b0 <__unpack_f>
   13528:	92 10 00 10 	mov  %l0, %o1
   1352c:	b2 07 bf d8 	add  %fp, -40, %i1
   13530:	90 07 bf d0 	add  %fp, -48, %o0
   13534:	40 00 03 1f 	call  141b0 <__unpack_f>
   13538:	92 10 00 19 	mov  %i1, %o1
   1353c:	c2 07 bf e8 	ld  [ %fp + -24 ], %g1
   13540:	80 a0 60 01 	cmp  %g1, 1
   13544:	08 80 00 0a 	bleu  1356c <__gtsf2+0x5c>
   13548:	b0 10 3f ff 	mov  -1, %i0
   1354c:	c2 07 bf d8 	ld  [ %fp + -40 ], %g1
   13550:	90 10 00 10 	mov  %l0, %o0
   13554:	80 a0 60 01 	cmp  %g1, 1
   13558:	08 80 00 05 	bleu  1356c <__gtsf2+0x5c>
   1355c:	92 10 00 19 	mov  %i1, %o1
   13560:	40 00 03 4a 	call  14288 <__fpcmp_parts_f>
   13564:	01 00 00 00 	nop 
   13568:	b0 10 00 08 	mov  %o0, %i0
   1356c:	81 c7 e0 08 	ret 
   13570:	81 e8 00 00 	restore 
   13574:	81 c3 e0 08 	retl 
   13578:	ae 03 c0 17 	add  %o7, %l7, %l7

0001357c <__floatsisf>:
   1357c:	9d e3 bf 88 	save  %sp, -120, %sp
   13580:	85 36 20 1f 	srl  %i0, 0x1f, %g2
   13584:	2f 00 00 48 	sethi  %hi(0x12000), %l7
   13588:	7f ff ff fb 	call  13574 <__gtsf2+0x64>
   1358c:	ae 05 e1 bc 	add  %l7, 0x1bc, %l7	! 121bc <whetstones+0xd78>
   13590:	80 a6 20 00 	cmp  %i0, 0
   13594:	12 80 00 07 	bne  135b0 <__floatsisf+0x34>
   13598:	c4 27 bf ec 	st  %g2, [ %fp + -20 ]
   1359c:	82 10 20 02 	mov  2, %g1
   135a0:	c2 27 bf e8 	st  %g1, [ %fp + -24 ]
   135a4:	40 00 02 b1 	call  14068 <__pack_f>
   135a8:	90 07 bf e8 	add  %fp, -24, %o0
   135ac:	30 80 00 23 	b,a   13638 <__floatsisf+0xbc>
   135b0:	82 10 20 03 	mov  3, %g1
   135b4:	c2 27 bf e8 	st  %g1, [ %fp + -24 ]
   135b8:	86 10 00 18 	mov  %i0, %g3
   135bc:	80 a0 a0 00 	cmp  %g2, 0
   135c0:	88 10 20 1e 	mov  0x1e, %g4
   135c4:	98 10 20 1e 	mov  0x1e, %o4
   135c8:	12 80 00 12 	bne  13610 <__floatsisf+0x94>
   135cc:	82 10 00 18 	mov  %i0, %g1
   135d0:	84 10 00 01 	mov  %g1, %g2
   135d4:	03 0f ff ff 	sethi  %hi(0x3ffffc00), %g1
   135d8:	82 10 63 ff 	or  %g1, 0x3ff, %g1	! 3fffffff <_end+0x3ffda657>
   135dc:	80 a0 80 01 	cmp  %g2, %g1
   135e0:	18 80 00 09 	bgu  13604 <__floatsisf+0x88>
   135e4:	9a 10 00 01 	mov  %g1, %o5
   135e8:	82 01 3f ff 	add  %g4, -1, %g1
   135ec:	86 00 80 02 	add  %g2, %g2, %g3
   135f0:	88 10 00 01 	mov  %g1, %g4
   135f4:	80 a0 c0 0d 	cmp  %g3, %o5
   135f8:	98 10 00 01 	mov  %g1, %o4
   135fc:	08 bf ff fb 	bleu  135e8 <__floatsisf+0x6c>
   13600:	84 10 00 03 	mov  %g3, %g2
   13604:	c6 27 bf f4 	st  %g3, [ %fp + -12 ]
   13608:	10 bf ff e7 	b  135a4 <__floatsisf+0x28>
   1360c:	d8 27 bf f0 	st  %o4, [ %fp + -16 ]
   13610:	03 20 00 00 	sethi  %hi(0x80000000), %g1
   13614:	86 20 00 18 	neg  %i0, %g3
   13618:	80 a6 00 01 	cmp  %i0, %g1
   1361c:	12 bf ff ed 	bne  135d0 <__floatsisf+0x54>
   13620:	82 10 00 03 	mov  %g3, %g1
   13624:	03 00 00 00 	sethi  %hi(0), %g1
   13628:	82 10 60 04 	or  %g1, 4, %g1	! 4 <_init-0x105bc>
   1362c:	c4 05 c0 01 	ld  [ %l7 + %g1 ], %g2
   13630:	d8 27 bf f0 	st  %o4, [ %fp + -16 ]
   13634:	d0 00 80 00 	ld  [ %g2 ], %o0
   13638:	81 c7 e0 08 	ret 
   1363c:	91 e8 00 08 	restore  %g0, %o0, %o0

00013640 <__fixsfsi>:
   13640:	9d e3 bf 80 	save  %sp, -128, %sp
   13644:	f0 27 bf e4 	st  %i0, [ %fp + -28 ]
   13648:	90 07 bf e4 	add  %fp, -28, %o0
   1364c:	40 00 02 d9 	call  141b0 <__unpack_f>
   13650:	92 07 bf e8 	add  %fp, -24, %o1
   13654:	c6 07 bf e8 	ld  [ %fp + -24 ], %g3
   13658:	80 a0 e0 02 	cmp  %g3, 2
   1365c:	02 80 00 20 	be  136dc <__fixsfsi+0x9c>
   13660:	b0 10 20 00 	clr  %i0
   13664:	80 a0 e0 01 	cmp  %g3, 1
   13668:	08 80 00 1d 	bleu  136dc <__fixsfsi+0x9c>
   1366c:	80 a0 e0 04 	cmp  %g3, 4
   13670:	02 80 00 11 	be  136b4 <__fixsfsi+0x74>
   13674:	c2 07 bf ec 	ld  [ %fp + -20 ], %g1
   13678:	c4 07 bf f0 	ld  [ %fp + -16 ], %g2
   1367c:	80 a0 a0 00 	cmp  %g2, 0
   13680:	06 80 00 17 	bl  136dc <__fixsfsi+0x9c>
   13684:	80 a0 a0 1e 	cmp  %g2, 0x1e
   13688:	14 80 00 11 	bg  136cc <__fixsfsi+0x8c>
   1368c:	80 a0 60 00 	cmp  %g1, 0
   13690:	82 10 20 1e 	mov  0x1e, %g1
   13694:	82 20 40 02 	sub  %g1, %g2, %g1
   13698:	c4 07 bf f4 	ld  [ %fp + -12 ], %g2
   1369c:	c6 07 bf ec 	ld  [ %fp + -20 ], %g3
   136a0:	80 a0 e0 00 	cmp  %g3, 0
   136a4:	02 80 00 0e 	be  136dc <__fixsfsi+0x9c>
   136a8:	b1 30 80 01 	srl  %g2, %g1, %i0
   136ac:	10 80 00 0c 	b  136dc <__fixsfsi+0x9c>
   136b0:	b0 20 00 18 	neg  %i0
   136b4:	80 a0 60 00 	cmp  %g1, 0
   136b8:	12 80 00 09 	bne  136dc <__fixsfsi+0x9c>
   136bc:	31 20 00 00 	sethi  %hi(0x80000000), %i0
   136c0:	03 1f ff ff 	sethi  %hi(0x7ffffc00), %g1
   136c4:	10 80 00 06 	b  136dc <__fixsfsi+0x9c>
   136c8:	b0 10 63 ff 	or  %g1, 0x3ff, %i0	! 7fffffff <_end+0x7ffda657>
   136cc:	12 80 00 04 	bne  136dc <__fixsfsi+0x9c>
   136d0:	31 20 00 00 	sethi  %hi(0x80000000), %i0
   136d4:	03 1f ff ff 	sethi  %hi(0x7ffffc00), %g1
   136d8:	b0 10 63 ff 	or  %g1, 0x3ff, %i0	! 7fffffff <_end+0x7ffda657>
   136dc:	81 c7 e0 08 	ret 
   136e0:	81 e8 00 00 	restore 

000136e4 <__extendsfdf2>:
   136e4:	9d e3 bf 80 	save  %sp, -128, %sp
   136e8:	f0 27 bf e4 	st  %i0, [ %fp + -28 ]
   136ec:	90 07 bf e4 	add  %fp, -28, %o0
   136f0:	40 00 02 b0 	call  141b0 <__unpack_f>
   136f4:	92 07 bf e8 	add  %fp, -24, %o1
   136f8:	c4 07 bf f4 	ld  [ %fp + -12 ], %g2
   136fc:	86 10 00 02 	mov  %g2, %g3
   13700:	84 10 20 00 	clr  %g2
   13704:	89 30 e0 02 	srl  %g3, 2, %g4
   13708:	83 28 a0 1e 	sll  %g2, 0x1e, %g1
   1370c:	84 11 00 01 	or  %g4, %g1, %g2
   13710:	87 28 e0 1e 	sll  %g3, 0x1e, %g3
   13714:	96 10 00 02 	mov  %g2, %o3
   13718:	98 10 00 03 	mov  %g3, %o4
   1371c:	d0 1f bf e8 	ldd  [ %fp + -24 ], %o0
   13720:	40 00 02 2f 	call  13fdc <__make_dp>
   13724:	d4 07 bf f0 	ld  [ %fp + -16 ], %o2
   13728:	b0 10 00 08 	mov  %o0, %i0
   1372c:	81 c7 e0 08 	ret 
   13730:	93 e8 00 09 	restore  %g0, %o1, %o1
   13734:	81 c3 e0 08 	retl 
   13738:	ae 03 c0 17 	add  %o7, %l7, %l7

0001373c <_fpadd_parts>:
   1373c:	9d e3 bf 98 	save  %sp, -104, %sp
   13740:	2f 00 00 48 	sethi  %hi(0x12000), %l7
   13744:	7f ff ff fc 	call  13734 <__extendsfdf2+0x50>
   13748:	ae 05 e0 00 	add  %l7, 0, %l7	! 12000 <whetstones+0xbbc>
   1374c:	c2 06 00 00 	ld  [ %i0 ], %g1
   13750:	80 a0 60 01 	cmp  %g1, 1
   13754:	08 80 00 ad 	bleu  13a08 <_fpadd_parts+0x2cc>
   13758:	9e 10 00 18 	mov  %i0, %o7
   1375c:	c4 06 40 00 	ld  [ %i1 ], %g2
   13760:	80 a0 a0 01 	cmp  %g2, 1
   13764:	08 80 00 a9 	bleu  13a08 <_fpadd_parts+0x2cc>
   13768:	b0 10 00 19 	mov  %i1, %i0
   1376c:	80 a0 60 04 	cmp  %g1, 4
   13770:	12 80 00 0c 	bne  137a0 <_fpadd_parts+0x64>
   13774:	80 a0 a0 04 	cmp  %g2, 4
   13778:	12 80 00 a4 	bne  13a08 <_fpadd_parts+0x2cc>
   1377c:	b0 10 00 0f 	mov  %o7, %i0
   13780:	c4 06 60 04 	ld  [ %i1 + 4 ], %g2
   13784:	c2 03 e0 04 	ld  [ %o7 + 4 ], %g1
   13788:	80 a0 40 02 	cmp  %g1, %g2
   1378c:	02 80 00 9f 	be  13a08 <_fpadd_parts+0x2cc>
   13790:	03 00 00 00 	sethi  %hi(0), %g1
   13794:	82 10 60 10 	or  %g1, 0x10, %g1	! 10 <_init-0x105b0>
   13798:	10 80 00 9c 	b  13a08 <_fpadd_parts+0x2cc>
   1379c:	f0 05 c0 01 	ld  [ %l7 + %g1 ], %i0
   137a0:	02 80 00 9a 	be  13a08 <_fpadd_parts+0x2cc>
   137a4:	b0 10 00 19 	mov  %i1, %i0
   137a8:	80 a0 a0 02 	cmp  %g2, 2
   137ac:	02 80 00 58 	be  1390c <_fpadd_parts+0x1d0>
   137b0:	80 a0 60 02 	cmp  %g1, 2
   137b4:	02 80 00 95 	be  13a08 <_fpadd_parts+0x2cc>
   137b8:	01 00 00 00 	nop 
   137bc:	d2 03 e0 08 	ld  [ %o7 + 8 ], %o1
   137c0:	f0 06 60 08 	ld  [ %i1 + 8 ], %i0
   137c4:	82 22 40 18 	sub  %o1, %i0, %g1
   137c8:	85 38 60 1f 	sra  %g1, 0x1f, %g2
   137cc:	82 18 40 02 	xor  %g1, %g2, %g1
   137d0:	82 20 40 02 	sub  %g1, %g2, %g1
   137d4:	80 a0 60 3f 	cmp  %g1, 0x3f
   137d8:	d8 1b e0 10 	ldd  [ %o7 + 0x10 ], %o4
   137dc:	14 80 00 67 	bg  13978 <_fpadd_parts+0x23c>
   137e0:	d4 1e 60 10 	ldd  [ %i1 + 0x10 ], %o2
   137e4:	80 a2 40 18 	cmp  %o1, %i0
   137e8:	04 80 00 0f 	ble  13824 <_fpadd_parts+0xe8>
   137ec:	80 a6 00 09 	cmp  %i0, %o1
   137f0:	b0 22 40 18 	sub  %o1, %i0, %i0
   137f4:	89 2a a0 1f 	sll  %o2, 0x1f, %g4
   137f8:	83 32 e0 01 	srl  %o3, 1, %g1
   137fc:	86 11 00 01 	or  %g4, %g1, %g3
   13800:	85 32 a0 01 	srl  %o2, 1, %g2
   13804:	b8 0a a0 00 	and  %o2, 0, %i4
   13808:	ba 0a e0 01 	and  %o3, 1, %i5
   1380c:	94 17 00 02 	or  %i4, %g2, %o2
   13810:	b0 86 3f ff 	addcc  %i0, -1, %i0
   13814:	12 bf ff f8 	bne  137f4 <_fpadd_parts+0xb8>
   13818:	96 17 40 03 	or  %i5, %g3, %o3
   1381c:	b0 10 00 09 	mov  %o1, %i0
   13820:	80 a6 00 09 	cmp  %i0, %o1
   13824:	24 80 00 0f 	ble,a   13860 <_fpadd_parts+0x124>
   13828:	c4 03 e0 04 	ld  [ %o7 + 4 ], %g2
   1382c:	92 26 00 09 	sub  %i0, %o1, %o1
   13830:	89 2b 20 1f 	sll  %o4, 0x1f, %g4
   13834:	83 33 60 01 	srl  %o5, 1, %g1
   13838:	86 11 00 01 	or  %g4, %g1, %g3
   1383c:	85 33 20 01 	srl  %o4, 1, %g2
   13840:	b8 0b 20 00 	and  %o4, 0, %i4
   13844:	ba 0b 60 01 	and  %o5, 1, %i5
   13848:	98 17 00 02 	or  %i4, %g2, %o4
   1384c:	92 82 7f ff 	addcc  %o1, -1, %o1
   13850:	12 bf ff f8 	bne  13830 <_fpadd_parts+0xf4>
   13854:	9a 17 40 03 	or  %i5, %g3, %o5
   13858:	92 10 00 18 	mov  %i0, %o1
   1385c:	c4 03 e0 04 	ld  [ %o7 + 4 ], %g2
   13860:	c2 06 60 04 	ld  [ %i1 + 4 ], %g1
   13864:	80 a0 80 01 	cmp  %g2, %g1
   13868:	02 80 00 59 	be  139cc <_fpadd_parts+0x290>
   1386c:	80 a0 a0 00 	cmp  %g2, 0
   13870:	02 80 00 55 	be  139c4 <_fpadd_parts+0x288>
   13874:	86 a3 40 0b 	subcc  %o5, %o3, %g3
   13878:	86 a2 c0 0d 	subcc  %o3, %o5, %g3
   1387c:	84 62 80 0c 	subx  %o2, %o4, %g2
   13880:	80 a0 a0 00 	cmp  %g2, 0
   13884:	06 80 00 5c 	bl  139f4 <_fpadd_parts+0x2b8>
   13888:	9a a0 00 03 	subcc  %g0, %g3, %o5
   1388c:	9e 10 00 09 	mov  %o1, %o7
   13890:	98 10 00 02 	mov  %g2, %o4
   13894:	9a 10 00 03 	mov  %g3, %o5
   13898:	c0 26 a0 04 	clr  [ %i2 + 4 ]
   1389c:	86 83 7f ff 	addcc  %o5, -1, %g3
   138a0:	03 03 ff ff 	sethi  %hi(0xffffc00), %g1
   138a4:	84 43 3f ff 	addx  %o4, -1, %g2
   138a8:	82 10 63 ff 	or  %g1, 0x3ff, %g1
   138ac:	88 10 00 0f 	mov  %o7, %g4
   138b0:	b0 10 00 0c 	mov  %o4, %i0
   138b4:	b2 10 00 0d 	mov  %o5, %i1
   138b8:	80 a0 80 01 	cmp  %g2, %g1
   138bc:	18 80 00 24 	bgu  1394c <_fpadd_parts+0x210>
   138c0:	80 a0 80 01 	cmp  %g2, %g1
   138c4:	22 80 00 20 	be,a   13944 <_fpadd_parts+0x208>
   138c8:	80 a0 ff fe 	cmp  %g3, -2
   138cc:	89 33 60 1f 	srl  %o5, 0x1f, %g4
   138d0:	82 03 00 0c 	add  %o4, %o4, %g1
   138d4:	86 03 40 0d 	add  %o5, %o5, %g3
   138d8:	84 11 00 01 	or  %g4, %g1, %g2
   138dc:	9a 10 00 03 	mov  %g3, %o5
   138e0:	98 10 00 02 	mov  %g2, %o4
   138e4:	86 80 ff ff 	addcc  %g3, -1, %g3
   138e8:	03 03 ff ff 	sethi  %hi(0xffffc00), %g1
   138ec:	84 40 bf ff 	addx  %g2, -1, %g2
   138f0:	82 10 63 ff 	or  %g1, 0x3ff, %g1
   138f4:	9e 03 ff ff 	add  %o7, -1, %o7
   138f8:	80 a0 80 01 	cmp  %g2, %g1
   138fc:	b0 10 00 0c 	mov  %o4, %i0
   13900:	b2 10 00 0d 	mov  %o5, %i1
   13904:	10 bf ff ee 	b  138bc <_fpadd_parts+0x180>
   13908:	88 10 00 0f 	mov  %o7, %g4
   1390c:	12 80 00 3f 	bne  13a08 <_fpadd_parts+0x2cc>
   13910:	b0 10 00 0f 	mov  %o7, %i0
   13914:	c4 1b c0 00 	ldd  [ %o7 ], %g2
   13918:	c4 3e 80 00 	std  %g2, [ %i2 ]
   1391c:	f8 1b e0 08 	ldd  [ %o7 + 8 ], %i4
   13920:	f8 3e a0 08 	std  %i4, [ %i2 + 8 ]
   13924:	c4 1b e0 10 	ldd  [ %o7 + 0x10 ], %g2
   13928:	c4 3e a0 10 	std  %g2, [ %i2 + 0x10 ]
   1392c:	c2 03 e0 04 	ld  [ %o7 + 4 ], %g1
   13930:	c4 06 60 04 	ld  [ %i1 + 4 ], %g2
   13934:	82 08 40 02 	and  %g1, %g2, %g1
   13938:	c2 26 a0 04 	st  %g1, [ %i2 + 4 ]
   1393c:	10 80 00 33 	b  13a08 <_fpadd_parts+0x2cc>
   13940:	b0 10 00 1a 	mov  %i2, %i0
   13944:	28 bf ff e3 	bleu,a   138d0 <_fpadd_parts+0x194>
   13948:	89 33 60 1f 	srl  %o5, 0x1f, %g4
   1394c:	f0 3e a0 10 	std  %i0, [ %i2 + 0x10 ]
   13950:	05 07 ff ff 	sethi  %hi(0x1ffffc00), %g2
   13954:	c2 06 a0 10 	ld  [ %i2 + 0x10 ], %g1
   13958:	84 10 a3 ff 	or  %g2, 0x3ff, %g2
   1395c:	86 10 20 03 	mov  3, %g3
   13960:	80 a0 40 02 	cmp  %g1, %g2
   13964:	18 80 00 0b 	bgu  13990 <_fpadd_parts+0x254>
   13968:	c6 26 80 00 	st  %g3, [ %i2 ]
   1396c:	c8 26 a0 08 	st  %g4, [ %i2 + 8 ]
   13970:	10 80 00 26 	b  13a08 <_fpadd_parts+0x2cc>
   13974:	b0 10 00 1a 	mov  %i2, %i0
   13978:	80 a2 40 18 	cmp  %o1, %i0
   1397c:	24 80 00 1b 	ble,a   139e8 <_fpadd_parts+0x2ac>
   13980:	92 10 00 18 	mov  %i0, %o1
   13984:	94 10 20 00 	clr  %o2
   13988:	10 bf ff b5 	b  1385c <_fpadd_parts+0x120>
   1398c:	96 10 20 00 	clr  %o3
   13990:	83 33 60 01 	srl  %o5, 1, %g1
   13994:	89 2b 20 1f 	sll  %o4, 0x1f, %g4
   13998:	86 11 00 01 	or  %g4, %g1, %g3
   1399c:	85 33 20 01 	srl  %o4, 1, %g2
   139a0:	b8 0b 20 00 	and  %o4, 0, %i4
   139a4:	ba 0b 60 01 	and  %o5, 1, %i5
   139a8:	b8 17 00 02 	or  %i4, %g2, %i4
   139ac:	ba 17 40 03 	or  %i5, %g3, %i5
   139b0:	82 03 e0 01 	add  %o7, 1, %g1
   139b4:	f8 3e a0 10 	std  %i4, [ %i2 + 0x10 ]
   139b8:	c2 26 a0 08 	st  %g1, [ %i2 + 8 ]
   139bc:	10 80 00 13 	b  13a08 <_fpadd_parts+0x2cc>
   139c0:	b0 10 00 1a 	mov  %i2, %i0
   139c4:	10 bf ff af 	b  13880 <_fpadd_parts+0x144>
   139c8:	84 63 00 0a 	subx  %o4, %o2, %g2
   139cc:	9a 83 40 0b 	addcc  %o5, %o3, %o5
   139d0:	98 43 00 0a 	addx  %o4, %o2, %o4
   139d4:	9e 10 00 09 	mov  %o1, %o7
   139d8:	c4 26 a0 04 	st  %g2, [ %i2 + 4 ]
   139dc:	d8 3e a0 10 	std  %o4, [ %i2 + 0x10 ]
   139e0:	10 bf ff dc 	b  13950 <_fpadd_parts+0x214>
   139e4:	88 10 00 09 	mov  %o1, %g4
   139e8:	98 10 20 00 	clr  %o4
   139ec:	10 bf ff 9c 	b  1385c <_fpadd_parts+0x120>
   139f0:	9a 10 20 00 	clr  %o5
   139f4:	82 10 20 01 	mov  1, %g1
   139f8:	98 60 00 02 	subx  %g0, %g2, %o4
   139fc:	9e 10 00 09 	mov  %o1, %o7
   13a00:	10 bf ff a7 	b  1389c <_fpadd_parts+0x160>
   13a04:	c2 26 a0 04 	st  %g1, [ %i2 + 4 ]
   13a08:	81 c7 e0 08 	ret 
   13a0c:	81 e8 00 00 	restore 

00013a10 <__adddf3>:
   13a10:	9d e3 bf 40 	save  %sp, -192, %sp
   13a14:	a2 07 bf e0 	add  %fp, -32, %l1
   13a18:	f0 3f bf a8 	std  %i0, [ %fp + -88 ]
   13a1c:	90 07 bf a8 	add  %fp, -88, %o0
   13a20:	92 10 00 11 	mov  %l1, %o1
   13a24:	40 00 02 e9 	call  145c8 <__unpack_d>
   13a28:	f4 3f bf a0 	std  %i2, [ %fp + -96 ]
   13a2c:	a0 07 bf c8 	add  %fp, -56, %l0
   13a30:	90 07 bf a0 	add  %fp, -96, %o0
   13a34:	40 00 02 e5 	call  145c8 <__unpack_d>
   13a38:	92 10 00 10 	mov  %l0, %o1
   13a3c:	92 10 00 10 	mov  %l0, %o1
   13a40:	94 07 bf b0 	add  %fp, -80, %o2
   13a44:	7f ff ff 3e 	call  1373c <_fpadd_parts>
   13a48:	90 10 00 11 	mov  %l1, %o0
   13a4c:	40 00 02 5f 	call  143c8 <__pack_d>
   13a50:	01 00 00 00 	nop 
   13a54:	b0 10 00 08 	mov  %o0, %i0
   13a58:	81 c7 e0 08 	ret 
   13a5c:	93 e8 00 09 	restore  %g0, %o1, %o1

00013a60 <__subdf3>:
   13a60:	9d e3 bf 40 	save  %sp, -192, %sp
   13a64:	a2 07 bf e0 	add  %fp, -32, %l1
   13a68:	f0 3f bf a8 	std  %i0, [ %fp + -88 ]
   13a6c:	90 07 bf a8 	add  %fp, -88, %o0
   13a70:	92 10 00 11 	mov  %l1, %o1
   13a74:	40 00 02 d5 	call  145c8 <__unpack_d>
   13a78:	f4 3f bf a0 	std  %i2, [ %fp + -96 ]
   13a7c:	a0 07 bf c8 	add  %fp, -56, %l0
   13a80:	90 07 bf a0 	add  %fp, -96, %o0
   13a84:	40 00 02 d1 	call  145c8 <__unpack_d>
   13a88:	92 10 00 10 	mov  %l0, %o1
   13a8c:	c2 07 bf cc 	ld  [ %fp + -52 ], %g1
   13a90:	82 18 60 01 	xor  %g1, 1, %g1
   13a94:	c2 27 bf cc 	st  %g1, [ %fp + -52 ]
   13a98:	92 10 00 10 	mov  %l0, %o1
   13a9c:	94 07 bf b0 	add  %fp, -80, %o2
   13aa0:	7f ff ff 27 	call  1373c <_fpadd_parts>
   13aa4:	90 10 00 11 	mov  %l1, %o0
   13aa8:	40 00 02 48 	call  143c8 <__pack_d>
   13aac:	01 00 00 00 	nop 
   13ab0:	b0 10 00 08 	mov  %o0, %i0
   13ab4:	81 c7 e0 08 	ret 
   13ab8:	93 e8 00 09 	restore  %g0, %o1, %o1
   13abc:	81 c3 e0 08 	retl 
   13ac0:	ae 03 c0 17 	add  %o7, %l7, %l7

00013ac4 <__muldf3>:
   13ac4:	9d e3 bf 40 	save  %sp, -192, %sp
   13ac8:	a0 07 bf e0 	add  %fp, -32, %l0
   13acc:	2f 00 00 47 	sethi  %hi(0x11c00), %l7
   13ad0:	7f ff ff fb 	call  13abc <__subdf3+0x5c>
   13ad4:	ae 05 e0 74 	add  %l7, 0x74, %l7	! 11c74 <whetstones+0x830>
   13ad8:	f0 3f bf a8 	std  %i0, [ %fp + -88 ]
   13adc:	90 07 bf a8 	add  %fp, -88, %o0
   13ae0:	92 10 00 10 	mov  %l0, %o1
   13ae4:	40 00 02 b9 	call  145c8 <__unpack_d>
   13ae8:	f4 3f bf a0 	std  %i2, [ %fp + -96 ]
   13aec:	b2 07 bf c8 	add  %fp, -56, %i1
   13af0:	90 07 bf a0 	add  %fp, -96, %o0
   13af4:	40 00 02 b5 	call  145c8 <__unpack_d>
   13af8:	92 10 00 19 	mov  %i1, %o1
   13afc:	c2 07 bf e0 	ld  [ %fp + -32 ], %g1
   13b00:	80 a0 60 01 	cmp  %g1, 1
   13b04:	08 80 00 12 	bleu  13b4c <__muldf3+0x88>
   13b08:	9e 07 bf b0 	add  %fp, -80, %o7
   13b0c:	c4 07 bf c8 	ld  [ %fp + -56 ], %g2
   13b10:	80 a0 a0 01 	cmp  %g2, 1
   13b14:	28 80 00 1b 	bleu,a   13b80 <__muldf3+0xbc>
   13b18:	c4 07 bf cc 	ld  [ %fp + -52 ], %g2
   13b1c:	80 a0 60 04 	cmp  %g1, 4
   13b20:	12 80 00 13 	bne  13b6c <__muldf3+0xa8>
   13b24:	80 a0 a0 04 	cmp  %g2, 4
   13b28:	80 a0 a0 02 	cmp  %g2, 2
   13b2c:	12 80 00 09 	bne  13b50 <__muldf3+0x8c>
   13b30:	c2 07 bf e4 	ld  [ %fp + -28 ], %g1
   13b34:	03 00 00 00 	sethi  %hi(0), %g1
   13b38:	82 10 60 10 	or  %g1, 0x10, %g1	! 10 <_init-0x105b0>
   13b3c:	10 80 00 9d 	b  13db0 <__muldf3+0x2ec>
   13b40:	d0 05 c0 01 	ld  [ %l7 + %g1 ], %o0
   13b44:	12 80 00 16 	bne  13b9c <__muldf3+0xd8>
   13b48:	80 a0 a0 02 	cmp  %g2, 2
   13b4c:	c2 07 bf e4 	ld  [ %fp + -28 ], %g1
   13b50:	c4 07 bf cc 	ld  [ %fp + -52 ], %g2
   13b54:	82 18 40 02 	xor  %g1, %g2, %g1
   13b58:	80 a0 00 01 	cmp  %g0, %g1
   13b5c:	84 40 20 00 	addx  %g0, 0, %g2
   13b60:	c4 27 bf e4 	st  %g2, [ %fp + -28 ]
   13b64:	10 80 00 93 	b  13db0 <__muldf3+0x2ec>
   13b68:	90 10 00 10 	mov  %l0, %o0
   13b6c:	12 bf ff f6 	bne  13b44 <__muldf3+0x80>
   13b70:	80 a0 60 02 	cmp  %g1, 2
   13b74:	02 bf ff f1 	be  13b38 <__muldf3+0x74>
   13b78:	03 00 00 00 	sethi  %hi(0), %g1
   13b7c:	c4 07 bf cc 	ld  [ %fp + -52 ], %g2
   13b80:	c2 07 bf e4 	ld  [ %fp + -28 ], %g1
   13b84:	82 18 40 02 	xor  %g1, %g2, %g1
   13b88:	80 a0 00 01 	cmp  %g0, %g1
   13b8c:	84 40 20 00 	addx  %g0, 0, %g2
   13b90:	c4 27 bf cc 	st  %g2, [ %fp + -52 ]
   13b94:	10 80 00 87 	b  13db0 <__muldf3+0x2ec>
   13b98:	90 10 00 19 	mov  %i1, %o0
   13b9c:	02 bf ff f9 	be  13b80 <__muldf3+0xbc>
   13ba0:	c4 07 bf cc 	ld  [ %fp + -52 ], %g2
   13ba4:	da 07 bf f0 	ld  [ %fp + -16 ], %o5
   13ba8:	96 10 00 0d 	mov  %o5, %o3
   13bac:	c6 07 bf d8 	ld  [ %fp + -40 ], %g3
   13bb0:	da 07 bf f4 	ld  [ %fp + -12 ], %o5
   13bb4:	b6 50 c0 0d 	umul  %g3, %o5, %i3
   13bb8:	b5 40 00 00 	rd  %y, %i2
   13bbc:	82 10 00 03 	mov  %g3, %g1
   13bc0:	c8 07 bf dc 	ld  [ %fp + -36 ], %g4
   13bc4:	86 51 00 0b 	umul  %g4, %o3, %g3
   13bc8:	85 40 00 00 	rd  %y, %g2
   13bcc:	92 86 c0 03 	addcc  %i3, %g3, %o1
   13bd0:	90 46 80 02 	addx  %i2, %g2, %o0
   13bd4:	aa 50 40 0b 	umul  %g1, %o3, %l5
   13bd8:	a9 40 00 00 	rd  %y, %l4
   13bdc:	80 a6 80 08 	cmp  %i2, %o0
   13be0:	9a 51 00 0d 	umul  %g4, %o5, %o5
   13be4:	99 40 00 00 	rd  %y, %o4
   13be8:	a4 10 20 00 	clr  %l2
   13bec:	18 80 00 65 	bgu  13d80 <__muldf3+0x2bc>
   13bf0:	a6 10 20 00 	clr  %l3
   13bf4:	80 a6 80 08 	cmp  %i2, %o0
   13bf8:	02 80 00 60 	be  13d78 <__muldf3+0x2b4>
   13bfc:	80 a6 c0 09 	cmp  %i3, %o1
   13c00:	b6 10 20 00 	clr  %i3
   13c04:	96 83 40 1b 	addcc  %o5, %i3, %o3
   13c08:	94 43 00 09 	addx  %o4, %o1, %o2
   13c0c:	80 a3 00 0a 	cmp  %o4, %o2
   13c10:	38 80 00 58 	bgu,a   13d70 <__muldf3+0x2ac>
   13c14:	a6 84 e0 01 	inccc  %l3
   13c18:	80 a3 00 0a 	cmp  %o4, %o2
   13c1c:	02 80 00 52 	be  13d64 <__muldf3+0x2a0>
   13c20:	80 a3 40 0b 	cmp  %o5, %o3
   13c24:	86 82 00 15 	addcc  %o0, %l5, %g3
   13c28:	84 10 20 00 	clr  %g2
   13c2c:	84 40 80 14 	addx  %g2, %l4, %g2
   13c30:	c8 06 60 04 	ld  [ %i1 + 4 ], %g4
   13c34:	b6 84 c0 03 	addcc  %l3, %g3, %i3
   13c38:	c2 04 20 04 	ld  [ %l0 + 4 ], %g1
   13c3c:	b4 44 80 02 	addx  %l2, %g2, %i2
   13c40:	82 18 40 04 	xor  %g1, %g4, %g1
   13c44:	80 a0 00 01 	cmp  %g0, %g1
   13c48:	c6 06 60 08 	ld  [ %i1 + 8 ], %g3
   13c4c:	c4 04 20 08 	ld  [ %l0 + 8 ], %g2
   13c50:	88 40 20 00 	addx  %g0, 0, %g4
   13c54:	84 00 80 03 	add  %g2, %g3, %g2
   13c58:	03 07 ff ff 	sethi  %hi(0x1ffffc00), %g1
   13c5c:	90 00 a0 04 	add  %g2, 4, %o0
   13c60:	82 10 63 ff 	or  %g1, 0x3ff, %g1
   13c64:	c8 23 e0 04 	st  %g4, [ %o7 + 4 ]
   13c68:	b0 10 00 0a 	mov  %o2, %i0
   13c6c:	b2 10 00 0b 	mov  %o3, %i1
   13c70:	80 a6 80 01 	cmp  %i2, %g1
   13c74:	08 80 00 18 	bleu  13cd4 <__muldf3+0x210>
   13c78:	88 10 00 08 	mov  %o0, %g4
   13c7c:	92 10 00 01 	mov  %g1, %o1
   13c80:	15 20 00 00 	sethi  %hi(0x80000000), %o2
   13c84:	96 10 20 00 	clr  %o3
   13c88:	89 2e a0 1f 	sll  %i2, 0x1f, %g4
   13c8c:	83 36 e0 01 	srl  %i3, 1, %g1
   13c90:	86 11 00 01 	or  %g4, %g1, %g3
   13c94:	89 2e 20 1f 	sll  %i0, 0x1f, %g4
   13c98:	83 36 60 01 	srl  %i1, 1, %g1
   13c9c:	85 36 a0 01 	srl  %i2, 1, %g2
   13ca0:	9a 11 00 01 	or  %g4, %g1, %o5
   13ca4:	90 02 20 01 	inc  %o0
   13ca8:	80 8e e0 01 	btst  1, %i3
   13cac:	99 36 20 01 	srl  %i0, 1, %o4
   13cb0:	b4 10 00 02 	mov  %g2, %i2
   13cb4:	b6 10 00 03 	mov  %g3, %i3
   13cb8:	02 80 00 04 	be  13cc8 <__muldf3+0x204>
   13cbc:	88 10 00 08 	mov  %o0, %g4
   13cc0:	b0 13 00 0a 	or  %o4, %o2, %i0
   13cc4:	b2 13 40 0b 	or  %o5, %o3, %i1
   13cc8:	80 a6 80 09 	cmp  %i2, %o1
   13ccc:	38 bf ff f0 	bgu,a   13c8c <__muldf3+0x1c8>
   13cd0:	89 2e a0 1f 	sll  %i2, 0x1f, %g4
   13cd4:	03 03 ff ff 	sethi  %hi(0xffffc00), %g1
   13cd8:	82 10 63 ff 	or  %g1, 0x3ff, %g1	! fffffff <_end+0xffda657>
   13cdc:	80 a6 80 01 	cmp  %i2, %g1
   13ce0:	18 80 00 14 	bgu  13d30 <__muldf3+0x26c>
   13ce4:	85 36 60 1f 	srl  %i1, 0x1f, %g2
   13ce8:	82 06 00 18 	add  %i0, %i0, %g1
   13cec:	95 36 e0 1f 	srl  %i3, 0x1f, %o2
   13cf0:	96 06 80 1a 	add  %i2, %i2, %o3
   13cf4:	98 10 80 01 	or  %g2, %g1, %o4
   13cf8:	88 01 3f ff 	add  %g4, -1, %g4
   13cfc:	9a 06 40 19 	add  %i1, %i1, %o5
   13d00:	84 12 80 0b 	or  %o2, %o3, %g2
   13d04:	86 06 c0 1b 	add  %i3, %i3, %g3
   13d08:	80 a6 20 00 	cmp  %i0, 0
   13d0c:	b4 10 00 02 	mov  %g2, %i2
   13d10:	b6 10 00 03 	mov  %g3, %i3
   13d14:	b0 10 00 0c 	mov  %o4, %i0
   13d18:	b2 10 00 0d 	mov  %o5, %i1
   13d1c:	16 bf ff ee 	bge  13cd4 <__muldf3+0x210>
   13d20:	90 10 00 04 	mov  %g4, %o0
   13d24:	b4 10 a0 00 	mov  %g2, %i2
   13d28:	10 bf ff eb 	b  13cd4 <__muldf3+0x210>
   13d2c:	b6 10 e0 01 	or  %g3, 1, %i3
   13d30:	84 0e a0 00 	and  %i2, 0, %g2
   13d34:	86 0e e0 ff 	and  %i3, 0xff, %g3
   13d38:	80 a0 a0 00 	cmp  %g2, 0
   13d3c:	12 80 00 05 	bne  13d50 <__muldf3+0x28c>
   13d40:	d0 23 e0 08 	st  %o0, [ %o7 + 8 ]
   13d44:	80 a0 e0 80 	cmp  %g3, 0x80
   13d48:	02 80 00 11 	be  13d8c <__muldf3+0x2c8>
   13d4c:	86 0e e1 00 	and  %i3, 0x100, %g3
   13d50:	82 10 20 03 	mov  3, %g1
   13d54:	f4 3b e0 10 	std  %i2, [ %o7 + 0x10 ]
   13d58:	c2 23 c0 00 	st  %g1, [ %o7 ]
   13d5c:	10 80 00 15 	b  13db0 <__muldf3+0x2ec>
   13d60:	90 10 00 0f 	mov  %o7, %o0
   13d64:	08 bf ff b1 	bleu  13c28 <__muldf3+0x164>
   13d68:	86 82 00 15 	addcc  %o0, %l5, %g3
   13d6c:	a6 84 e0 01 	inccc  %l3
   13d70:	10 bf ff ad 	b  13c24 <__muldf3+0x160>
   13d74:	a4 44 a0 00 	addx  %l2, 0, %l2
   13d78:	08 bf ff a3 	bleu  13c04 <__muldf3+0x140>
   13d7c:	b6 10 20 00 	clr  %i3
   13d80:	a4 10 20 01 	mov  1, %l2
   13d84:	10 bf ff 9f 	b  13c00 <__muldf3+0x13c>
   13d88:	a6 10 20 00 	clr  %l3
   13d8c:	80 90 80 03 	orcc  %g2, %g3, %g0
   13d90:	32 80 00 06 	bne,a   13da8 <__muldf3+0x2e4>
   13d94:	b6 86 e0 80 	addcc  %i3, 0x80, %i3
   13d98:	80 96 00 19 	orcc  %i0, %i1, %g0
   13d9c:	02 bf ff ee 	be  13d54 <__muldf3+0x290>
   13da0:	82 10 20 03 	mov  3, %g1
   13da4:	b6 86 e0 80 	addcc  %i3, 0x80, %i3
   13da8:	10 bf ff ea 	b  13d50 <__muldf3+0x28c>
   13dac:	b4 46 a0 00 	addx  %i2, 0, %i2
   13db0:	40 00 01 86 	call  143c8 <__pack_d>
   13db4:	01 00 00 00 	nop 
   13db8:	b0 10 00 08 	mov  %o0, %i0
   13dbc:	81 c7 e0 08 	ret 
   13dc0:	93 e8 00 09 	restore  %g0, %o1, %o1
   13dc4:	81 c3 e0 08 	retl 
   13dc8:	ae 03 c0 17 	add  %o7, %l7, %l7

00013dcc <__divdf3>:
   13dcc:	9d e3 bf 58 	save  %sp, -168, %sp
   13dd0:	a0 07 bf e0 	add  %fp, -32, %l0
   13dd4:	2f 00 00 46 	sethi  %hi(0x11800), %l7
   13dd8:	7f ff ff fb 	call  13dc4 <__muldf3+0x300>
   13ddc:	ae 05 e1 6c 	add  %l7, 0x16c, %l7	! 1196c <whetstones+0x528>
   13de0:	f4 3f bf b8 	std  %i2, [ %fp + -72 ]
   13de4:	90 07 bf c0 	add  %fp, -64, %o0
   13de8:	92 10 00 10 	mov  %l0, %o1
   13dec:	40 00 01 f7 	call  145c8 <__unpack_d>
   13df0:	f0 3f bf c0 	std  %i0, [ %fp + -64 ]
   13df4:	b6 07 bf c8 	add  %fp, -56, %i3
   13df8:	90 07 bf b8 	add  %fp, -72, %o0
   13dfc:	40 00 01 f3 	call  145c8 <__unpack_d>
   13e00:	92 10 00 1b 	mov  %i3, %o1
   13e04:	c6 07 bf e0 	ld  [ %fp + -32 ], %g3
   13e08:	80 a0 e0 01 	cmp  %g3, 1
   13e0c:	08 80 00 6f 	bleu  13fc8 <__divdf3+0x1fc>
   13e10:	90 10 00 10 	mov  %l0, %o0
   13e14:	c8 07 bf c8 	ld  [ %fp + -56 ], %g4
   13e18:	80 a1 20 01 	cmp  %g4, 1
   13e1c:	08 80 00 6b 	bleu  13fc8 <__divdf3+0x1fc>
   13e20:	90 10 00 1b 	mov  %i3, %o0
   13e24:	c2 07 bf e4 	ld  [ %fp + -28 ], %g1
   13e28:	c4 07 bf cc 	ld  [ %fp + -52 ], %g2
   13e2c:	82 18 40 02 	xor  %g1, %g2, %g1
   13e30:	80 a0 e0 04 	cmp  %g3, 4
   13e34:	02 80 00 0f 	be  13e70 <__divdf3+0xa4>
   13e38:	c2 27 bf e4 	st  %g1, [ %fp + -28 ]
   13e3c:	80 a0 e0 02 	cmp  %g3, 2
   13e40:	02 80 00 0d 	be  13e74 <__divdf3+0xa8>
   13e44:	80 a0 c0 04 	cmp  %g3, %g4
   13e48:	80 a1 20 04 	cmp  %g4, 4
   13e4c:	02 80 00 10 	be  13e8c <__divdf3+0xc0>
   13e50:	84 10 20 00 	clr  %g2
   13e54:	80 a1 20 02 	cmp  %g4, 2
   13e58:	12 80 00 12 	bne  13ea0 <__divdf3+0xd4>
   13e5c:	c4 07 bf e8 	ld  [ %fp + -24 ], %g2
   13e60:	82 10 20 04 	mov  4, %g1
   13e64:	c2 27 bf e0 	st  %g1, [ %fp + -32 ]
   13e68:	10 80 00 58 	b  13fc8 <__divdf3+0x1fc>
   13e6c:	90 10 00 10 	mov  %l0, %o0
   13e70:	80 a0 c0 04 	cmp  %g3, %g4
   13e74:	12 80 00 55 	bne  13fc8 <__divdf3+0x1fc>
   13e78:	90 10 00 10 	mov  %l0, %o0
   13e7c:	03 00 00 00 	sethi  %hi(0), %g1
   13e80:	82 10 60 10 	or  %g1, 0x10, %g1	! 10 <_init-0x105b0>
   13e84:	10 80 00 51 	b  13fc8 <__divdf3+0x1fc>
   13e88:	d0 05 c0 01 	ld  [ %l7 + %g1 ], %o0
   13e8c:	86 10 20 00 	clr  %g3
   13e90:	c4 3f bf f0 	std  %g2, [ %fp + -16 ]
   13e94:	c0 27 bf e8 	clr  [ %fp + -24 ]
   13e98:	10 80 00 4c 	b  13fc8 <__divdf3+0x1fc>
   13e9c:	90 10 00 10 	mov  %l0, %o0
   13ea0:	c2 07 bf d0 	ld  [ %fp + -48 ], %g1
   13ea4:	84 20 80 01 	sub  %g2, %g1, %g2
   13ea8:	f4 1f bf f0 	ldd  [ %fp + -16 ], %i2
   13eac:	f0 1f bf d8 	ldd  [ %fp + -40 ], %i0
   13eb0:	80 a6 00 1a 	cmp  %i0, %i2
   13eb4:	18 80 00 3b 	bgu  13fa0 <__divdf3+0x1d4>
   13eb8:	c4 27 bf e8 	st  %g2, [ %fp + -24 ]
   13ebc:	80 a6 00 1a 	cmp  %i0, %i2
   13ec0:	02 80 00 36 	be  13f98 <__divdf3+0x1cc>
   13ec4:	80 a6 40 1b 	cmp  %i1, %i3
   13ec8:	19 04 00 00 	sethi  %hi(0x10000000), %o4
   13ecc:	9a 10 20 00 	clr  %o5
   13ed0:	a4 10 20 00 	clr  %l2
   13ed4:	10 80 00 0f 	b  13f10 <__divdf3+0x144>
   13ed8:	a6 10 20 00 	clr  %l3
   13edc:	b4 66 80 18 	subx  %i2, %i0, %i2
   13ee0:	a4 14 80 0c 	or  %l2, %o4, %l2
   13ee4:	a6 14 c0 0d 	or  %l3, %o5, %l3
   13ee8:	85 36 e0 1f 	srl  %i3, 0x1f, %g2
   13eec:	82 06 80 1a 	add  %i2, %i2, %g1
   13ef0:	94 10 80 01 	or  %g2, %g1, %o2
   13ef4:	96 06 c0 1b 	add  %i3, %i3, %o3
   13ef8:	98 10 00 08 	mov  %o0, %o4
   13efc:	9a 10 00 09 	mov  %o1, %o5
   13f00:	b4 10 00 0a 	mov  %o2, %i2
   13f04:	80 92 00 09 	orcc  %o0, %o1, %g0
   13f08:	02 80 00 10 	be  13f48 <__divdf3+0x17c>
   13f0c:	b6 10 00 0b 	mov  %o3, %i3
   13f10:	85 2b 20 1f 	sll  %o4, 0x1f, %g2
   13f14:	83 33 60 01 	srl  %o5, 1, %g1
   13f18:	92 10 80 01 	or  %g2, %g1, %o1
   13f1c:	80 a6 00 1a 	cmp  %i0, %i2
   13f20:	18 bf ff f2 	bgu  13ee8 <__divdf3+0x11c>
   13f24:	91 33 20 01 	srl  %o4, 1, %o0
   13f28:	80 a6 00 1a 	cmp  %i0, %i2
   13f2c:	32 bf ff ec 	bne,a   13edc <__divdf3+0x110>
   13f30:	b6 a6 c0 19 	subcc  %i3, %i1, %i3
   13f34:	80 a6 40 1b 	cmp  %i1, %i3
   13f38:	18 bf ff ed 	bgu  13eec <__divdf3+0x120>
   13f3c:	85 36 e0 1f 	srl  %i3, 0x1f, %g2
   13f40:	10 bf ff e7 	b  13edc <__divdf3+0x110>
   13f44:	b6 a6 c0 19 	subcc  %i3, %i1, %i3
   13f48:	84 0c a0 00 	and  %l2, 0, %g2
   13f4c:	80 a0 a0 00 	cmp  %g2, 0
   13f50:	12 80 00 05 	bne  13f64 <__divdf3+0x198>
   13f54:	86 0c e0 ff 	and  %l3, 0xff, %g3
   13f58:	80 a0 e0 80 	cmp  %g3, 0x80
   13f5c:	02 80 00 05 	be  13f70 <__divdf3+0x1a4>
   13f60:	86 0c e1 00 	and  %l3, 0x100, %g3
   13f64:	e4 3c 20 10 	std  %l2, [ %l0 + 0x10 ]
   13f68:	10 80 00 18 	b  13fc8 <__divdf3+0x1fc>
   13f6c:	90 10 00 10 	mov  %l0, %o0
   13f70:	80 90 80 03 	orcc  %g2, %g3, %g0
   13f74:	32 80 00 06 	bne,a   13f8c <__divdf3+0x1c0>
   13f78:	a6 84 e0 80 	addcc  %l3, 0x80, %l3
   13f7c:	80 92 80 0b 	orcc  %o2, %o3, %g0
   13f80:	22 bf ff fa 	be,a   13f68 <__divdf3+0x19c>
   13f84:	e4 3c 20 10 	std  %l2, [ %l0 + 0x10 ]
   13f88:	a6 84 e0 80 	addcc  %l3, 0x80, %l3
   13f8c:	a4 44 a0 00 	addx  %l2, 0, %l2
   13f90:	10 bf ff f6 	b  13f68 <__divdf3+0x19c>
   13f94:	e4 3c 20 10 	std  %l2, [ %l0 + 0x10 ]
   13f98:	28 bf ff cd 	bleu,a   13ecc <__divdf3+0x100>
   13f9c:	19 04 00 00 	sethi  %hi(0x10000000), %o4
   13fa0:	9b 36 e0 1f 	srl  %i3, 0x1f, %o5
   13fa4:	88 06 80 1a 	add  %i2, %i2, %g4
   13fa8:	c2 04 20 08 	ld  [ %l0 + 8 ], %g1
   13fac:	84 13 40 04 	or  %o5, %g4, %g2
   13fb0:	86 06 c0 1b 	add  %i3, %i3, %g3
   13fb4:	82 00 7f ff 	add  %g1, -1, %g1
   13fb8:	c2 24 20 08 	st  %g1, [ %l0 + 8 ]
   13fbc:	b4 10 00 02 	mov  %g2, %i2
   13fc0:	10 bf ff c2 	b  13ec8 <__divdf3+0xfc>
   13fc4:	b6 10 00 03 	mov  %g3, %i3
   13fc8:	40 00 01 00 	call  143c8 <__pack_d>
   13fcc:	01 00 00 00 	nop 
   13fd0:	b0 10 00 08 	mov  %o0, %i0
   13fd4:	81 c7 e0 08 	ret 
   13fd8:	93 e8 00 09 	restore  %g0, %o1, %o1

00013fdc <__make_dp>:
   13fdc:	9d e3 bf 80 	save  %sp, -128, %sp
   13fe0:	84 10 00 1b 	mov  %i3, %g2
   13fe4:	86 10 00 1c 	mov  %i4, %g3
   13fe8:	f0 3f bf e0 	std  %i0, [ %fp + -32 ]
   13fec:	f4 27 bf e8 	st  %i2, [ %fp + -24 ]
   13ff0:	c4 3f bf f0 	std  %g2, [ %fp + -16 ]
   13ff4:	40 00 00 f5 	call  143c8 <__pack_d>
   13ff8:	90 07 bf e0 	add  %fp, -32, %o0
   13ffc:	b0 10 00 08 	mov  %o0, %i0
   14000:	81 c7 e0 08 	ret 
   14004:	93 e8 00 09 	restore  %g0, %o1, %o1

00014008 <__truncdfsf2>:
   14008:	9d e3 bf 78 	save  %sp, -136, %sp
   1400c:	90 07 bf d8 	add  %fp, -40, %o0
   14010:	92 07 bf e0 	add  %fp, -32, %o1
   14014:	40 00 01 6d 	call  145c8 <__unpack_d>
   14018:	f0 3f bf d8 	std  %i0, [ %fp + -40 ]
   1401c:	d8 1f bf f0 	ldd  [ %fp + -16 ], %o4
   14020:	17 0f ff ff 	sethi  %hi(0x3ffffc00), %o3
   14024:	89 2b 20 02 	sll  %o4, 2, %g4
   14028:	83 33 60 1e 	srl  %o5, 0x1e, %g1
   1402c:	94 10 20 00 	clr  %o2
   14030:	96 12 e3 ff 	or  %o3, 0x3ff, %o3
   14034:	98 0b 00 0a 	and  %o4, %o2, %o4
   14038:	9a 0b 40 0b 	and  %o5, %o3, %o5
   1403c:	86 11 00 01 	or  %g4, %g1, %g3
   14040:	d0 1f bf e0 	ldd  [ %fp + -32 ], %o0
   14044:	d4 07 bf e8 	ld  [ %fp + -24 ], %o2
   14048:	80 93 00 0d 	orcc  %o4, %o5, %g0
   1404c:	02 80 00 03 	be  14058 <__truncdfsf2+0x50>
   14050:	96 10 00 03 	mov  %g3, %o3
   14054:	96 10 e0 01 	or  %g3, 1, %o3
   14058:	40 00 00 d5 	call  143ac <__make_fp>
   1405c:	01 00 00 00 	nop 
   14060:	81 c7 e0 08 	ret 
   14064:	91 e8 00 08 	restore  %g0, %o0, %o0

00014068 <__pack_f>:
   14068:	c2 02 00 00 	ld  [ %o0 ], %g1
   1406c:	80 a0 60 01 	cmp  %g1, 1
   14070:	c8 02 20 0c 	ld  [ %o0 + 0xc ], %g4
   14074:	c6 02 20 04 	ld  [ %o0 + 4 ], %g3
   14078:	18 80 00 06 	bgu  14090 <__pack_f+0x28>
   1407c:	9a 10 20 00 	clr  %o5
   14080:	03 00 04 00 	sethi  %hi(0x100000), %g1
   14084:	88 11 00 01 	or  %g4, %g1, %g4
   14088:	10 80 00 42 	b  14190 <__pack_f+0x128>
   1408c:	9a 10 20 ff 	mov  0xff, %o5
   14090:	80 a0 60 04 	cmp  %g1, 4
   14094:	12 80 00 05 	bne  140a8 <__pack_f+0x40>
   14098:	80 a0 60 02 	cmp  %g1, 2
   1409c:	9a 10 20 ff 	mov  0xff, %o5
   140a0:	10 80 00 3c 	b  14190 <__pack_f+0x128>
   140a4:	88 10 20 00 	clr  %g4
   140a8:	22 80 00 3a 	be,a   14190 <__pack_f+0x128>
   140ac:	88 10 20 00 	clr  %g4
   140b0:	80 a1 20 00 	cmp  %g4, 0
   140b4:	02 80 00 38 	be  14194 <__pack_f+0x12c>
   140b8:	84 0b 60 ff 	and  %o5, 0xff, %g2
   140bc:	d0 02 20 08 	ld  [ %o0 + 8 ], %o0
   140c0:	80 a2 3f 82 	cmp  %o0, -126
   140c4:	16 80 00 14 	bge  14114 <__pack_f+0xac>
   140c8:	80 a2 20 7f 	cmp  %o0, 0x7f
   140cc:	82 10 3f 82 	mov  -126, %g1
   140d0:	84 20 40 08 	sub  %g1, %o0, %g2
   140d4:	80 a0 a0 19 	cmp  %g2, 0x19
   140d8:	04 80 00 1d 	ble  1414c <__pack_f+0xe4>
   140dc:	82 10 20 01 	mov  1, %g1
   140e0:	88 10 20 00 	clr  %g4
   140e4:	82 09 20 7f 	and  %g4, 0x7f, %g1
   140e8:	80 a0 60 40 	cmp  %g1, 0x40
   140ec:	02 80 00 20 	be  1416c <__pack_f+0x104>
   140f0:	80 89 20 80 	btst  0x80, %g4
   140f4:	88 01 20 3f 	add  %g4, 0x3f, %g4
   140f8:	03 0f ff ff 	sethi  %hi(0x3ffffc00), %g1
   140fc:	82 10 63 ff 	or  %g1, 0x3ff, %g1	! 3fffffff <_end+0x3ffda657>
   14100:	80 a1 00 01 	cmp  %g4, %g1
   14104:	38 80 00 02 	bgu,a   1410c <__pack_f+0xa4>
   14108:	9a 10 20 01 	mov  1, %o5
   1410c:	10 80 00 21 	b  14190 <__pack_f+0x128>
   14110:	89 31 20 07 	srl  %g4, 7, %g4
   14114:	14 bf ff e3 	bg  140a0 <__pack_f+0x38>
   14118:	9a 10 20 ff 	mov  0xff, %o5
   1411c:	82 09 20 7f 	and  %g4, 0x7f, %g1
   14120:	80 a0 60 40 	cmp  %g1, 0x40
   14124:	02 80 00 16 	be  1417c <__pack_f+0x114>
   14128:	9a 02 20 7f 	add  %o0, 0x7f, %o5
   1412c:	88 01 20 3f 	add  %g4, 0x3f, %g4
   14130:	80 a1 20 00 	cmp  %g4, 0
   14134:	36 80 00 17 	bge,a   14190 <__pack_f+0x128>
   14138:	89 31 20 07 	srl  %g4, 7, %g4
   1413c:	89 31 20 01 	srl  %g4, 1, %g4
   14140:	9a 03 60 01 	inc  %o5
   14144:	10 80 00 13 	b  14190 <__pack_f+0x128>
   14148:	89 31 20 07 	srl  %g4, 7, %g4
   1414c:	83 28 40 02 	sll  %g1, %g2, %g1
   14150:	82 00 7f ff 	add  %g1, -1, %g1
   14154:	82 08 40 04 	and  %g1, %g4, %g1
   14158:	80 a0 00 01 	cmp  %g0, %g1
   1415c:	85 31 00 02 	srl  %g4, %g2, %g2
   14160:	82 40 20 00 	addx  %g0, 0, %g1
   14164:	10 bf ff e0 	b  140e4 <__pack_f+0x7c>
   14168:	88 10 80 01 	or  %g2, %g1, %g4
   1416c:	32 bf ff e3 	bne,a   140f8 <__pack_f+0x90>
   14170:	88 01 20 40 	add  %g4, 0x40, %g4
   14174:	10 bf ff e2 	b  140fc <__pack_f+0x94>
   14178:	03 0f ff ff 	sethi  %hi(0x3ffffc00), %g1
   1417c:	80 89 20 80 	btst  0x80, %g4
   14180:	32 bf ff ec 	bne,a   14130 <__pack_f+0xc8>
   14184:	88 01 20 40 	add  %g4, 0x40, %g4
   14188:	10 bf ff eb 	b  14134 <__pack_f+0xcc>
   1418c:	80 a1 20 00 	cmp  %g4, 0
   14190:	84 0b 60 ff 	and  %o5, 0xff, %g2
   14194:	03 3f e0 00 	sethi  %hi(0xff800000), %g1
   14198:	82 29 00 01 	andn  %g4, %g1, %g1
   1419c:	85 28 a0 17 	sll  %g2, 0x17, %g2
   141a0:	82 10 40 02 	or  %g1, %g2, %g1
   141a4:	87 28 e0 1f 	sll  %g3, 0x1f, %g3
   141a8:	81 c3 e0 08 	retl 
   141ac:	90 10 40 03 	or  %g1, %g3, %o0

000141b0 <__unpack_f>:
   141b0:	c4 02 00 00 	ld  [ %o0 ], %g2
   141b4:	87 30 a0 1f 	srl  %g2, 0x1f, %g3
   141b8:	89 30 a0 17 	srl  %g2, 0x17, %g4
   141bc:	c6 22 60 04 	st  %g3, [ %o1 + 4 ]
   141c0:	03 3f e0 00 	sethi  %hi(0xff800000), %g1
   141c4:	86 89 20 ff 	andcc  %g4, 0xff, %g3
   141c8:	12 80 00 07 	bne  141e4 <__unpack_f+0x34>
   141cc:	9a 28 80 01 	andn  %g2, %g1, %o5
   141d0:	80 a3 60 00 	cmp  %o5, 0
   141d4:	12 80 00 0e 	bne  1420c <__unpack_f+0x5c>
   141d8:	82 10 20 02 	mov  2, %g1
   141dc:	10 80 00 29 	b  14280 <__unpack_f+0xd0>
   141e0:	c2 22 40 00 	st  %g1, [ %o1 ]
   141e4:	80 a0 e0 ff 	cmp  %g3, 0xff
   141e8:	02 80 00 1a 	be  14250 <__unpack_f+0xa0>
   141ec:	83 2b 60 07 	sll  %o5, 7, %g1
   141f0:	05 10 00 00 	sethi  %hi(0x40000000), %g2
   141f4:	82 10 40 02 	or  %g1, %g2, %g1
   141f8:	86 00 ff 81 	add  %g3, -127, %g3
   141fc:	c2 22 60 0c 	st  %g1, [ %o1 + 0xc ]
   14200:	c6 22 60 08 	st  %g3, [ %o1 + 8 ]
   14204:	10 bf ff f6 	b  141dc <__unpack_f+0x2c>
   14208:	82 10 20 03 	mov  3, %g1
   1420c:	84 10 20 03 	mov  3, %g2
   14210:	03 0f ff ff 	sethi  %hi(0x3ffffc00), %g1
   14214:	9b 2b 60 07 	sll  %o5, 7, %o5
   14218:	82 10 63 ff 	or  %g1, 0x3ff, %g1
   1421c:	c4 22 40 00 	st  %g2, [ %o1 ]
   14220:	80 a3 40 01 	cmp  %o5, %g1
   14224:	84 10 3f 82 	mov  -126, %g2
   14228:	18 80 00 07 	bgu  14244 <__unpack_f+0x94>
   1422c:	86 10 3f 82 	mov  -126, %g3
   14230:	9a 03 40 0d 	add  %o5, %o5, %o5
   14234:	84 00 bf ff 	add  %g2, -1, %g2
   14238:	80 a3 40 01 	cmp  %o5, %g1
   1423c:	08 bf ff fd 	bleu  14230 <__unpack_f+0x80>
   14240:	86 10 00 02 	mov  %g2, %g3
   14244:	da 22 60 0c 	st  %o5, [ %o1 + 0xc ]
   14248:	10 80 00 0e 	b  14280 <__unpack_f+0xd0>
   1424c:	c6 22 60 08 	st  %g3, [ %o1 + 8 ]
   14250:	80 a3 60 00 	cmp  %o5, 0
   14254:	02 bf ff e2 	be  141dc <__unpack_f+0x2c>
   14258:	82 10 20 04 	mov  4, %g1
   1425c:	03 00 04 00 	sethi  %hi(0x100000), %g1
   14260:	80 8b 40 01 	btst  %o5, %g1
   14264:	22 80 00 06 	be,a   1427c <__unpack_f+0xcc>
   14268:	c0 22 40 00 	clr  [ %o1 ]
   1426c:	82 10 20 01 	mov  1, %g1
   14270:	c2 22 40 00 	st  %g1, [ %o1 ]
   14274:	10 80 00 03 	b  14280 <__unpack_f+0xd0>
   14278:	da 22 60 0c 	st  %o5, [ %o1 + 0xc ]
   1427c:	da 22 60 0c 	st  %o5, [ %o1 + 0xc ]
   14280:	81 c3 e0 08 	retl 
   14284:	01 00 00 00 	nop 

00014288 <__fpcmp_parts_f>:
   14288:	c6 02 00 00 	ld  [ %o0 ], %g3
   1428c:	80 a0 e0 01 	cmp  %g3, 1
   14290:	08 80 00 06 	bleu  142a8 <__fpcmp_parts_f+0x20>
   14294:	9a 10 00 08 	mov  %o0, %o5
   14298:	c8 02 40 00 	ld  [ %o1 ], %g4
   1429c:	80 a1 20 01 	cmp  %g4, 1
   142a0:	18 80 00 04 	bgu  142b0 <__fpcmp_parts_f+0x28>
   142a4:	80 a0 e0 04 	cmp  %g3, 4
   142a8:	10 80 00 3f 	b  143a4 <__fpcmp_parts_f+0x11c>
   142ac:	90 10 20 01 	mov  1, %o0
   142b0:	12 80 00 09 	bne  142d4 <__fpcmp_parts_f+0x4c>
   142b4:	80 a0 e0 04 	cmp  %g3, 4
   142b8:	80 a1 20 04 	cmp  %g4, 4
   142bc:	12 80 00 06 	bne  142d4 <__fpcmp_parts_f+0x4c>
   142c0:	80 a0 e0 04 	cmp  %g3, 4
   142c4:	c4 02 60 04 	ld  [ %o1 + 4 ], %g2
   142c8:	c2 02 20 04 	ld  [ %o0 + 4 ], %g1
   142cc:	10 80 00 36 	b  143a4 <__fpcmp_parts_f+0x11c>
   142d0:	90 20 80 01 	sub  %g2, %g1, %o0
   142d4:	22 80 00 1a 	be,a   1433c <__fpcmp_parts_f+0xb4>
   142d8:	c2 03 60 04 	ld  [ %o5 + 4 ], %g1
   142dc:	80 a1 20 04 	cmp  %g4, 4
   142e0:	22 80 00 1b 	be,a   1434c <__fpcmp_parts_f+0xc4>
   142e4:	c2 02 60 04 	ld  [ %o1 + 4 ], %g1
   142e8:	80 a0 e0 02 	cmp  %g3, 2
   142ec:	12 80 00 06 	bne  14304 <__fpcmp_parts_f+0x7c>
   142f0:	01 00 00 00 	nop 
   142f4:	80 a1 20 02 	cmp  %g4, 2
   142f8:	02 80 00 2b 	be  143a4 <__fpcmp_parts_f+0x11c>
   142fc:	90 10 20 00 	clr  %o0
   14300:	80 a0 e0 02 	cmp  %g3, 2
   14304:	22 80 00 12 	be,a   1434c <__fpcmp_parts_f+0xc4>
   14308:	c2 02 60 04 	ld  [ %o1 + 4 ], %g1
   1430c:	80 a1 20 02 	cmp  %g4, 2
   14310:	22 80 00 0b 	be,a   1433c <__fpcmp_parts_f+0xb4>
   14314:	c2 03 60 04 	ld  [ %o5 + 4 ], %g1
   14318:	c4 03 60 04 	ld  [ %o5 + 4 ], %g2
   1431c:	c2 02 60 04 	ld  [ %o1 + 4 ], %g1
   14320:	80 a0 80 01 	cmp  %g2, %g1
   14324:	22 80 00 0e 	be,a   1435c <__fpcmp_parts_f+0xd4>
   14328:	c6 03 60 08 	ld  [ %o5 + 8 ], %g3
   1432c:	80 a0 00 02 	cmp  %g0, %g2
   14330:	82 60 20 00 	subx  %g0, 0, %g1
   14334:	10 80 00 1c 	b  143a4 <__fpcmp_parts_f+0x11c>
   14338:	90 10 60 01 	or  %g1, 1, %o0
   1433c:	80 a0 00 01 	cmp  %g0, %g1
   14340:	84 60 20 00 	subx  %g0, 0, %g2
   14344:	10 80 00 18 	b  143a4 <__fpcmp_parts_f+0x11c>
   14348:	90 10 a0 01 	or  %g2, 1, %o0
   1434c:	80 a0 00 01 	cmp  %g0, %g1
   14350:	84 40 3f ff 	addx  %g0, -1, %g2
   14354:	10 80 00 14 	b  143a4 <__fpcmp_parts_f+0x11c>
   14358:	90 10 a0 01 	or  %g2, 1, %o0
   1435c:	c2 02 60 08 	ld  [ %o1 + 8 ], %g1
   14360:	80 a0 c0 01 	cmp  %g3, %g1
   14364:	14 bf ff f3 	bg  14330 <__fpcmp_parts_f+0xa8>
   14368:	80 a0 00 02 	cmp  %g0, %g2
   1436c:	80 a0 c0 01 	cmp  %g3, %g1
   14370:	06 80 00 0b 	bl  1439c <__fpcmp_parts_f+0x114>
   14374:	80 a0 00 02 	cmp  %g0, %g2
   14378:	d0 03 60 0c 	ld  [ %o5 + 0xc ], %o0
   1437c:	d2 02 60 0c 	ld  [ %o1 + 0xc ], %o1
   14380:	80 a2 00 09 	cmp  %o0, %o1
   14384:	18 bf ff eb 	bgu  14330 <__fpcmp_parts_f+0xa8>
   14388:	80 a0 00 02 	cmp  %g0, %g2
   1438c:	80 a2 00 09 	cmp  %o0, %o1
   14390:	1a 80 00 05 	bcc  143a4 <__fpcmp_parts_f+0x11c>
   14394:	90 10 20 00 	clr  %o0
   14398:	80 a0 00 02 	cmp  %g0, %g2
   1439c:	82 40 3f ff 	addx  %g0, -1, %g1
   143a0:	90 10 60 01 	or  %g1, 1, %o0
   143a4:	81 c3 e0 08 	retl 
   143a8:	01 00 00 00 	nop 

000143ac <__make_fp>:
   143ac:	9d e3 bf 88 	save  %sp, -120, %sp
   143b0:	f0 3f bf e8 	std  %i0, [ %fp + -24 ]
   143b4:	f4 3f bf f0 	std  %i2, [ %fp + -16 ]
   143b8:	7f ff ff 2c 	call  14068 <__pack_f>
   143bc:	90 07 bf e8 	add  %fp, -24, %o0
   143c0:	81 c7 e0 08 	ret 
   143c4:	91 e8 00 08 	restore  %g0, %o0, %o0

000143c8 <__pack_d>:
   143c8:	9d e3 bf 98 	save  %sp, -104, %sp
   143cc:	c2 06 00 00 	ld  [ %i0 ], %g1
   143d0:	80 a0 60 01 	cmp  %g1, 1
   143d4:	e0 1e 20 10 	ldd  [ %i0 + 0x10 ], %l0
   143d8:	e4 06 20 04 	ld  [ %i0 + 4 ], %l2
   143dc:	18 80 00 08 	bgu  143fc <__pack_d+0x34>
   143e0:	b2 10 20 00 	clr  %i1
   143e4:	05 00 02 00 	sethi  %hi(0x80000), %g2
   143e8:	86 10 20 00 	clr  %g3
   143ec:	a0 14 00 02 	or  %l0, %g2, %l0
   143f0:	a2 14 40 03 	or  %l1, %g3, %l1
   143f4:	10 80 00 64 	b  14584 <__pack_d+0x1bc>
   143f8:	b2 10 27 ff 	mov  0x7ff, %i1
   143fc:	80 a0 60 04 	cmp  %g1, 4
   14400:	12 80 00 06 	bne  14418 <__pack_d+0x50>
   14404:	80 a0 60 02 	cmp  %g1, 2
   14408:	b2 10 27 ff 	mov  0x7ff, %i1
   1440c:	a0 10 20 00 	clr  %l0
   14410:	10 80 00 5d 	b  14584 <__pack_d+0x1bc>
   14414:	a2 10 20 00 	clr  %l1
   14418:	22 bf ff fe 	be,a   14410 <__pack_d+0x48>
   1441c:	a0 10 20 00 	clr  %l0
   14420:	80 94 00 11 	orcc  %l0, %l1, %g0
   14424:	02 80 00 59 	be  14588 <__pack_d+0x1c0>
   14428:	96 0e 67 ff 	and  %i1, 0x7ff, %o3
   1442c:	d4 06 20 08 	ld  [ %i0 + 8 ], %o2
   14430:	80 a2 bc 02 	cmp  %o2, -1022
   14434:	16 80 00 1e 	bge  144ac <__pack_d+0xe4>
   14438:	80 a2 a3 ff 	cmp  %o2, 0x3ff
   1443c:	82 10 3c 02 	mov  -1022, %g1
   14440:	b0 20 40 0a 	sub  %g1, %o2, %i0
   14444:	80 a6 20 38 	cmp  %i0, 0x38
   14448:	04 80 00 3c 	ble  14538 <__pack_d+0x170>
   1444c:	90 10 20 00 	clr  %o0
   14450:	a0 10 20 00 	clr  %l0
   14454:	a2 10 20 00 	clr  %l1
   14458:	84 0c 20 00 	and  %l0, 0, %g2
   1445c:	80 a0 a0 00 	cmp  %g2, 0
   14460:	12 80 00 05 	bne  14474 <__pack_d+0xac>
   14464:	86 0c 60 ff 	and  %l1, 0xff, %g3
   14468:	80 a0 e0 80 	cmp  %g3, 0x80
   1446c:	02 80 00 29 	be  14510 <__pack_d+0x148>
   14470:	86 0c 61 00 	and  %l1, 0x100, %g3
   14474:	a2 84 60 7f 	addcc  %l1, 0x7f, %l1
   14478:	a0 44 20 00 	addx  %l0, 0, %l0
   1447c:	03 03 ff ff 	sethi  %hi(0xffffc00), %g1
   14480:	82 10 63 ff 	or  %g1, 0x3ff, %g1	! fffffff <_end+0xffda657>
   14484:	80 a4 00 01 	cmp  %l0, %g1
   14488:	38 80 00 02 	bgu,a   14490 <__pack_d+0xc8>
   1448c:	b2 10 20 01 	mov  1, %i1
   14490:	89 2c 20 18 	sll  %l0, 0x18, %g4
   14494:	83 34 60 08 	srl  %l1, 8, %g1
   14498:	86 11 00 01 	or  %g4, %g1, %g3
   1449c:	85 34 20 08 	srl  %l0, 8, %g2
   144a0:	a0 10 00 02 	mov  %g2, %l0
   144a4:	10 80 00 38 	b  14584 <__pack_d+0x1bc>
   144a8:	a2 10 00 03 	mov  %g3, %l1
   144ac:	14 bf ff d8 	bg  1440c <__pack_d+0x44>
   144b0:	b2 10 27 ff 	mov  0x7ff, %i1
   144b4:	84 0c 20 00 	and  %l0, 0, %g2
   144b8:	86 0c 60 ff 	and  %l1, 0xff, %g3
   144bc:	80 a0 a0 00 	cmp  %g2, 0
   144c0:	12 80 00 05 	bne  144d4 <__pack_d+0x10c>
   144c4:	b2 02 a3 ff 	add  %o2, 0x3ff, %i1
   144c8:	80 a0 e0 80 	cmp  %g3, 0x80
   144cc:	02 80 00 16 	be  14524 <__pack_d+0x15c>
   144d0:	86 0c 61 00 	and  %l1, 0x100, %g3
   144d4:	a2 84 60 7f 	addcc  %l1, 0x7f, %l1
   144d8:	a0 44 20 00 	addx  %l0, 0, %l0
   144dc:	03 07 ff ff 	sethi  %hi(0x1ffffc00), %g1
   144e0:	82 10 63 ff 	or  %g1, 0x3ff, %g1	! 1fffffff <_end+0x1ffda657>
   144e4:	80 a4 00 01 	cmp  %l0, %g1
   144e8:	08 bf ff eb 	bleu  14494 <__pack_d+0xcc>
   144ec:	89 2c 20 18 	sll  %l0, 0x18, %g4
   144f0:	89 2c 20 1f 	sll  %l0, 0x1f, %g4
   144f4:	83 34 60 01 	srl  %l1, 1, %g1
   144f8:	86 11 00 01 	or  %g4, %g1, %g3
   144fc:	85 34 20 01 	srl  %l0, 1, %g2
   14500:	a0 10 00 02 	mov  %g2, %l0
   14504:	a2 10 00 03 	mov  %g3, %l1
   14508:	10 bf ff e2 	b  14490 <__pack_d+0xc8>
   1450c:	b2 06 60 01 	inc  %i1
   14510:	80 90 80 03 	orcc  %g2, %g3, %g0
   14514:	02 bf ff db 	be  14480 <__pack_d+0xb8>
   14518:	03 03 ff ff 	sethi  %hi(0xffffc00), %g1
   1451c:	10 bf ff d7 	b  14478 <__pack_d+0xb0>
   14520:	a2 84 60 80 	addcc  %l1, 0x80, %l1
   14524:	80 90 80 03 	orcc  %g2, %g3, %g0
   14528:	02 bf ff ee 	be  144e0 <__pack_d+0x118>
   1452c:	03 07 ff ff 	sethi  %hi(0x1ffffc00), %g1
   14530:	10 bf ff ea 	b  144d8 <__pack_d+0x110>
   14534:	a2 84 60 80 	addcc  %l1, 0x80, %l1
   14538:	92 10 20 01 	mov  1, %o1
   1453c:	40 00 00 84 	call  1474c <__ashldi3>
   14540:	94 10 00 18 	mov  %i0, %o2
   14544:	92 82 7f ff 	addcc  %o1, -1, %o1
   14548:	90 42 3f ff 	addx  %o0, -1, %o0
   1454c:	90 0a 00 10 	and  %o0, %l0, %o0
   14550:	92 0a 40 11 	and  %o1, %l1, %o1
   14554:	80 92 00 09 	orcc  %o0, %o1, %g0
   14558:	02 80 00 03 	be  14564 <__pack_d+0x19c>
   1455c:	a6 10 20 00 	clr  %l3
   14560:	a6 10 20 01 	mov  1, %l3
   14564:	90 10 00 10 	mov  %l0, %o0
   14568:	92 10 00 11 	mov  %l1, %o1
   1456c:	40 00 00 62 	call  146f4 <__lshrdi3>
   14570:	94 10 00 18 	mov  %i0, %o2
   14574:	84 10 20 00 	clr  %g2
   14578:	a0 12 00 02 	or  %o0, %g2, %l0
   1457c:	10 bf ff b7 	b  14458 <__pack_d+0x90>
   14580:	a2 12 40 13 	or  %o1, %l3, %l1
   14584:	96 0e 67 ff 	and  %i1, 0x7ff, %o3
   14588:	05 00 03 ff 	sethi  %hi(0xffc00), %g2
   1458c:	9a 0c a0 01 	and  %l2, 1, %o5
   14590:	95 2a e0 14 	sll  %o3, 0x14, %o2
   14594:	84 10 a3 ff 	or  %g2, 0x3ff, %g2
   14598:	86 10 3f ff 	mov  -1, %g3
   1459c:	99 2b 60 1f 	sll  %o5, 0x1f, %o4
   145a0:	96 10 20 00 	clr  %o3
   145a4:	84 0c 00 02 	and  %l0, %g2, %g2
   145a8:	86 0c 40 03 	and  %l1, %g3, %g3
   145ac:	9a 10 20 00 	clr  %o5
   145b0:	84 10 80 0a 	or  %g2, %o2, %g2
   145b4:	86 10 c0 0b 	or  %g3, %o3, %g3
   145b8:	b0 10 80 0c 	or  %g2, %o4, %i0
   145bc:	b2 10 c0 0d 	or  %g3, %o5, %i1
   145c0:	81 c7 e0 08 	ret 
   145c4:	81 e8 00 00 	restore 

000145c8 <__unpack_d>:
   145c8:	d4 1a 00 00 	ldd  [ %o0 ], %o2
   145cc:	9b 32 a0 1f 	srl  %o2, 0x1f, %o5
   145d0:	82 0b 60 01 	and  %o5, 1, %g1
   145d4:	19 00 03 ff 	sethi  %hi(0xffc00), %o4
   145d8:	87 32 a0 14 	srl  %o2, 0x14, %g3
   145dc:	98 13 23 ff 	or  %o4, 0x3ff, %o4
   145e0:	9a 10 3f ff 	mov  -1, %o5
   145e4:	c2 22 60 04 	st  %g1, [ %o1 + 4 ]
   145e8:	94 0a 80 0c 	and  %o2, %o4, %o2
   145ec:	90 88 e7 ff 	andcc  %g3, 0x7ff, %o0
   145f0:	12 80 00 07 	bne  1460c <__unpack_d+0x44>
   145f4:	96 0a c0 0d 	and  %o3, %o5, %o3
   145f8:	80 92 80 0b 	orcc  %o2, %o3, %g0
   145fc:	12 80 00 13 	bne  14648 <__unpack_d+0x80>
   14600:	82 10 20 02 	mov  2, %g1
   14604:	10 80 00 3a 	b  146ec <__unpack_d+0x124>
   14608:	c2 22 40 00 	st  %g1, [ %o1 ]
   1460c:	80 a2 27 ff 	cmp  %o0, 0x7ff
   14610:	02 80 00 2b 	be  146bc <__unpack_d+0xf4>
   14614:	89 32 e0 18 	srl  %o3, 0x18, %g4
   14618:	83 2a a0 08 	sll  %o2, 8, %g1
   1461c:	84 11 00 01 	or  %g4, %g1, %g2
   14620:	87 2a e0 08 	sll  %o3, 8, %g3
   14624:	19 04 00 00 	sethi  %hi(0x10000000), %o4
   14628:	9a 10 20 00 	clr  %o5
   1462c:	84 10 80 0c 	or  %g2, %o4, %g2
   14630:	86 10 c0 0d 	or  %g3, %o5, %g3
   14634:	88 02 3c 01 	add  %o0, -1023, %g4
   14638:	c4 3a 60 10 	std  %g2, [ %o1 + 0x10 ]
   1463c:	c8 22 60 08 	st  %g4, [ %o1 + 8 ]
   14640:	10 bf ff f1 	b  14604 <__unpack_d+0x3c>
   14644:	82 10 20 03 	mov  3, %g1
   14648:	89 32 e0 18 	srl  %o3, 0x18, %g4
   1464c:	83 2a a0 08 	sll  %o2, 8, %g1
   14650:	84 11 00 01 	or  %g4, %g1, %g2
   14654:	03 03 ff ff 	sethi  %hi(0xffffc00), %g1
   14658:	82 10 63 ff 	or  %g1, 0x3ff, %g1	! fffffff <_end+0xffda657>
   1465c:	87 2a e0 08 	sll  %o3, 8, %g3
   14660:	88 10 20 03 	mov  3, %g4
   14664:	80 a0 80 01 	cmp  %g2, %g1
   14668:	94 10 00 02 	mov  %g2, %o2
   1466c:	96 10 00 03 	mov  %g3, %o3
   14670:	c8 22 40 00 	st  %g4, [ %o1 ]
   14674:	9a 10 3c 02 	mov  -1022, %o5
   14678:	18 80 00 0e 	bgu  146b0 <__unpack_d+0xe8>
   1467c:	82 10 3c 02 	mov  -1022, %g1
   14680:	82 02 80 0a 	add  %o2, %o2, %g1
   14684:	89 32 e0 1f 	srl  %o3, 0x1f, %g4
   14688:	84 11 00 01 	or  %g4, %g1, %g2
   1468c:	03 03 ff ff 	sethi  %hi(0xffffc00), %g1
   14690:	82 10 63 ff 	or  %g1, 0x3ff, %g1	! fffffff <_end+0xffda657>
   14694:	86 02 c0 0b 	add  %o3, %o3, %g3
   14698:	9a 03 7f ff 	add  %o5, -1, %o5
   1469c:	80 a0 80 01 	cmp  %g2, %g1
   146a0:	94 10 00 02 	mov  %g2, %o2
   146a4:	96 10 00 03 	mov  %g3, %o3
   146a8:	08 bf ff f6 	bleu  14680 <__unpack_d+0xb8>
   146ac:	82 10 00 0d 	mov  %o5, %g1
   146b0:	d4 3a 60 10 	std  %o2, [ %o1 + 0x10 ]
   146b4:	10 80 00 0e 	b  146ec <__unpack_d+0x124>
   146b8:	c2 22 60 08 	st  %g1, [ %o1 + 8 ]
   146bc:	80 92 80 0b 	orcc  %o2, %o3, %g0
   146c0:	02 bf ff d1 	be  14604 <__unpack_d+0x3c>
   146c4:	82 10 20 04 	mov  4, %g1
   146c8:	87 32 a0 13 	srl  %o2, 0x13, %g3
   146cc:	80 88 e0 01 	btst  1, %g3
   146d0:	22 80 00 06 	be,a   146e8 <__unpack_d+0x120>
   146d4:	c0 22 40 00 	clr  [ %o1 ]
   146d8:	82 10 20 01 	mov  1, %g1
   146dc:	c2 22 40 00 	st  %g1, [ %o1 ]
   146e0:	10 80 00 03 	b  146ec <__unpack_d+0x124>
   146e4:	d4 3a 60 10 	std  %o2, [ %o1 + 0x10 ]
   146e8:	d4 3a 60 10 	std  %o2, [ %o1 + 0x10 ]
   146ec:	81 c3 e0 08 	retl 
   146f0:	01 00 00 00 	nop 

000146f4 <__lshrdi3>:
   146f4:	82 10 20 20 	mov  0x20, %g1	! 20 <_init-0x105a0>
   146f8:	84 10 00 08 	mov  %o0, %g2
   146fc:	86 10 00 09 	mov  %o1, %g3
   14700:	80 a2 a0 00 	cmp  %o2, 0
   14704:	02 80 00 10 	be  14744 <__lshrdi3+0x50>
   14708:	82 20 40 0a 	sub  %g1, %o2, %g1
   1470c:	96 20 00 01 	neg  %g1, %o3
   14710:	80 a0 60 00 	cmp  %g1, 0
   14714:	89 30 c0 0a 	srl  %g3, %o2, %g4
   14718:	04 80 00 07 	ble  14734 <__lshrdi3+0x40>
   1471c:	83 28 80 01 	sll  %g2, %g1, %g1
   14720:	99 30 80 0a 	srl  %g2, %o2, %o4
   14724:	9a 11 00 01 	or  %g4, %g1, %o5
   14728:	90 10 00 0c 	mov  %o4, %o0
   1472c:	10 80 00 06 	b  14744 <__lshrdi3+0x50>
   14730:	92 10 00 0d 	mov  %o5, %o1
   14734:	98 10 20 00 	clr  %o4
   14738:	9b 30 80 0b 	srl  %g2, %o3, %o5
   1473c:	90 10 00 0c 	mov  %o4, %o0
   14740:	92 10 00 0d 	mov  %o5, %o1
   14744:	81 c3 e0 08 	retl 
   14748:	01 00 00 00 	nop 

0001474c <__ashldi3>:
   1474c:	82 10 20 20 	mov  0x20, %g1	! 20 <_init-0x105a0>
   14750:	84 10 00 08 	mov  %o0, %g2
   14754:	86 10 00 09 	mov  %o1, %g3
   14758:	80 a2 a0 00 	cmp  %o2, 0
   1475c:	02 80 00 10 	be  1479c <__ashldi3+0x50>
   14760:	82 20 40 0a 	sub  %g1, %o2, %g1
   14764:	96 20 00 01 	neg  %g1, %o3
   14768:	80 a0 60 00 	cmp  %g1, 0
   1476c:	89 28 80 0a 	sll  %g2, %o2, %g4
   14770:	04 80 00 07 	ble  1478c <__ashldi3+0x40>
   14774:	83 30 c0 01 	srl  %g3, %g1, %g1
   14778:	9b 28 c0 0a 	sll  %g3, %o2, %o5
   1477c:	98 11 00 01 	or  %g4, %g1, %o4
   14780:	90 10 00 0c 	mov  %o4, %o0
   14784:	10 80 00 06 	b  1479c <__ashldi3+0x50>
   14788:	92 10 00 0d 	mov  %o5, %o1
   1478c:	9a 10 20 00 	clr  %o5
   14790:	99 28 c0 0b 	sll  %g3, %o3, %o4
   14794:	90 10 00 0c 	mov  %o4, %o0
   14798:	92 10 00 0d 	mov  %o5, %o1
   1479c:	81 c3 e0 08 	retl 
   147a0:	01 00 00 00 	nop 
   147a4:	81 c3 e0 08 	retl 
   147a8:	ae 03 c0 17 	add  %o7, %l7, %l7

000147ac <__libc_csu_init>:
   147ac:	9d e3 bf 90 	save  %sp, -112, %sp
   147b0:	2f 00 00 43 	sethi  %hi(0x10c00), %l7
   147b4:	7f ff ff fc 	call  147a4 <__ashldi3+0x58>
   147b8:	ae 05 e3 90 	add  %l7, 0x390, %l7	! 10f90 <main+0x8d8>
   147bc:	7f ff ef 81 	call  105c0 <_init>
   147c0:	a0 10 20 00 	clr  %l0
   147c4:	03 00 00 00 	sethi  %hi(0), %g1
   147c8:	82 10 60 0c 	or  %g1, 0xc, %g1	! c <_init-0x105b4>
   147cc:	07 00 00 00 	sethi  %hi(0), %g3
   147d0:	c4 05 c0 01 	ld  [ %l7 + %g1 ], %g2
   147d4:	86 10 e0 14 	or  %g3, 0x14, %g3
   147d8:	c2 05 c0 03 	ld  [ %l7 + %g3 ], %g1
   147dc:	84 20 80 01 	sub  %g2, %g1, %g2
   147e0:	85 38 a0 02 	sra  %g2, 2, %g2
   147e4:	80 a4 00 02 	cmp  %l0, %g2
   147e8:	1a 80 00 0d 	bcc  1481c <__libc_csu_init+0x70>
   147ec:	a4 10 00 01 	mov  %g1, %l2
   147f0:	a2 10 00 02 	mov  %g2, %l1
   147f4:	83 2c 20 02 	sll  %l0, 2, %g1
   147f8:	c4 04 80 01 	ld  [ %l2 + %g1 ], %g2
   147fc:	90 10 00 18 	mov  %i0, %o0
   14800:	92 10 00 19 	mov  %i1, %o1
   14804:	9f c0 80 00 	call  %g2
   14808:	94 10 00 1a 	mov  %i2, %o2
   1480c:	a0 04 20 01 	inc  %l0
   14810:	80 a4 00 11 	cmp  %l0, %l1
   14814:	0a bf ff f9 	bcs  147f8 <__libc_csu_init+0x4c>
   14818:	83 2c 20 02 	sll  %l0, 2, %g1
   1481c:	81 c7 e0 08 	ret 
   14820:	81 e8 00 00 	restore 

00014824 <__libc_csu_fini>:
   14824:	81 c3 e0 08 	retl 
   14828:	01 00 00 00 	nop 

0001482c <__do_global_ctors_aux>:
   1482c:	9d e3 bf 98 	save  %sp, -104, %sp
   14830:	03 00 00 95 	sethi  %hi(0x25400), %g1
   14834:	82 10 62 64 	or  %g1, 0x264, %g1	! 25664 <__CTOR_END__>
   14838:	c4 00 7f fc 	ld  [ %g1 + -4 ], %g2
   1483c:	80 a0 bf ff 	cmp  %g2, -1
   14840:	02 80 00 09 	be  14864 <__do_global_ctors_aux+0x38>
   14844:	a0 00 7f fc 	add  %g1, -4, %l0
   14848:	82 10 00 02 	mov  %g2, %g1
   1484c:	9f c0 40 00 	call  %g1
   14850:	a0 04 3f fc 	add  %l0, -4, %l0
   14854:	c2 04 00 00 	ld  [ %l0 ], %g1
   14858:	80 a0 7f ff 	cmp  %g1, -1
   1485c:	12 bf ff fc 	bne  1484c <__do_global_ctors_aux+0x20>
   14860:	01 00 00 00 	nop 
   14864:	81 c7 e0 08 	ret 
   14868:	81 e8 00 00 	restore 

0001486c <call___do_global_ctors_aux>:
   1486c:	9d e3 bf 98 	save  %sp, -104, %sp
   14870:	81 c7 e0 08 	ret 
   14874:	81 e8 00 00 	restore 
Disassembly of section .fini:

00014878 <_fini>:
   14878:	9d e3 bf a0 	save  %sp, -96, %sp
   1487c:	7f ff ef 66 	call  10614 <__do_global_dtors_aux>
   14880:	01 00 00 00 	nop 
   14884:	81 c7 e0 08 	ret 
   14888:	81 e8 00 00 	restore 
Disassembly of section .plt:

0002575c <_PROCEDURE_LINKAGE_TABLE_>:
	...

0002578c <cos@plt>:
   2578c:	03 00 00 30 	sethi  %hi(0xc000), %g1
   25790:	30 bf ff f3 	b,a   2575c <_PROCEDURE_LINKAGE_TABLE_>
   25794:	01 00 00 00 	nop 

00025798 <atan@plt>:
   25798:	03 00 00 3c 	sethi  %hi(0xf000), %g1
   2579c:	30 bf ff f0 	b,a   2575c <_PROCEDURE_LINKAGE_TABLE_>
   257a0:	01 00 00 00 	nop 

000257a4 <clock@plt>:
   257a4:	03 00 00 48 	sethi  %hi(0x12000), %g1
   257a8:	30 bf ff ed 	b,a   2575c <_PROCEDURE_LINKAGE_TABLE_>
   257ac:	01 00 00 00 	nop 

000257b0 <gets@plt>:
   257b0:	03 00 00 54 	sethi  %hi(0x15000), %g1
   257b4:	30 bf ff ea 	b,a   2575c <_PROCEDURE_LINKAGE_TABLE_>
   257b8:	01 00 00 00 	nop 

000257bc <fprintf@plt>:
   257bc:	03 00 00 60 	sethi  %hi(0x18000), %g1
   257c0:	30 bf ff e7 	b,a   2575c <_PROCEDURE_LINKAGE_TABLE_>
   257c4:	01 00 00 00 	nop 

000257c8 <__libc_start_main@plt>:
   257c8:	03 00 00 6c 	sethi  %hi(0x1b000), %g1
   257cc:	30 bf ff e4 	b,a   2575c <_PROCEDURE_LINKAGE_TABLE_>
   257d0:	01 00 00 00 	nop 

000257d4 <exp@plt>:
   257d4:	03 00 00 78 	sethi  %hi(0x1e000), %g1
   257d8:	30 bf ff e1 	b,a   2575c <_PROCEDURE_LINKAGE_TABLE_>
   257dc:	01 00 00 00 	nop 

000257e0 <memcpy@plt>:
   257e0:	03 00 00 84 	sethi  %hi(0x21000), %g1
   257e4:	30 bf ff de 	b,a   2575c <_PROCEDURE_LINKAGE_TABLE_>
   257e8:	01 00 00 00 	nop 

000257ec <sqrt@plt>:
   257ec:	03 00 00 90 	sethi  %hi(0x24000), %g1
   257f0:	30 bf ff db 	b,a   2575c <_PROCEDURE_LINKAGE_TABLE_>
   257f4:	01 00 00 00 	nop 

000257f8 <fclose@plt>:
   257f8:	03 00 00 9c 	sethi  %hi(0x27000), %g1
   257fc:	30 bf ff d8 	b,a   2575c <_PROCEDURE_LINKAGE_TABLE_>
   25800:	01 00 00 00 	nop 

00025804 <exit@plt>:
   25804:	03 00 00 a8 	sethi  %hi(0x2a000), %g1
   25808:	30 bf ff d5 	b,a   2575c <_PROCEDURE_LINKAGE_TABLE_>
   2580c:	01 00 00 00 	nop 

00025810 <memset@plt>:
   25810:	03 00 00 b4 	sethi  %hi(0x2d000), %g1
   25814:	30 bf ff d2 	b,a   2575c <_PROCEDURE_LINKAGE_TABLE_>
   25818:	01 00 00 00 	nop 

0002581c <sin@plt>:
   2581c:	03 00 00 c0 	sethi  %hi(0x30000), %g1
   25820:	30 bf ff cf 	b,a   2575c <_PROCEDURE_LINKAGE_TABLE_>
   25824:	01 00 00 00 	nop 

00025828 <log@plt>:
   25828:	03 00 00 cc 	sethi  %hi(0x33000), %g1
   2582c:	30 bf ff cc 	b,a   2575c <_PROCEDURE_LINKAGE_TABLE_>
   25830:	01 00 00 00 	nop 

00025834 <printf@plt>:
   25834:	03 00 00 d8 	sethi  %hi(0x36000), %g1
   25838:	30 bf ff c9 	b,a   2575c <_PROCEDURE_LINKAGE_TABLE_>
   2583c:	01 00 00 00 	nop 

00025840 <strcpy@plt>:
   25840:	03 00 00 e4 	sethi  %hi(0x39000), %g1
   25844:	30 bf ff c6 	b,a   2575c <_PROCEDURE_LINKAGE_TABLE_>
   25848:	01 00 00 00 	nop 
   2584c:	01 00 00 00 	nop 
