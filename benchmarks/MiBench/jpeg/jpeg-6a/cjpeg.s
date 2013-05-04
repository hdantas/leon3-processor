
cjpeg:     file format elf32-sparc

Disassembly of section .init:

000106d0 <_init>:
   106d0:	9d e3 bf a0 	save  %sp, -96, %sp
   106d4:	40 00 00 2a 	call  1077c <frame_dummy>
   106d8:	01 00 00 00 	nop 
   106dc:	40 00 41 42 	call  20be4 <__do_global_ctors_aux>
   106e0:	01 00 00 00 	nop 
   106e4:	81 c7 e0 08 	ret 
   106e8:	81 e8 00 00 	restore 
Disassembly of section .text:

000106ec <_start>:
   106ec:	bc 10 00 00 	mov  %g0, %fp
   106f0:	9c 23 a0 18 	sub  %sp, 0x18, %sp
   106f4:	d2 03 a0 58 	ld  [ %sp + 0x58 ], %o1
   106f8:	94 03 a0 5c 	add  %sp, 0x5c, %o2
   106fc:	11 00 00 44 	sethi  %hi(0x11000), %o0
   10700:	17 00 00 82 	sethi  %hi(0x20800), %o3
   10704:	19 00 00 82 	sethi  %hi(0x20800), %o4
   10708:	90 12 22 d8 	or  %o0, 0x2d8, %o0
   1070c:	96 12 e3 64 	or  %o3, 0x364, %o3
   10710:	98 13 23 dc 	or  %o4, 0x3dc, %o4
   10714:	9a 10 00 01 	mov  %g1, %o5
   10718:	40 00 8c 0d 	call  3374c <__libc_start_main@plt>
   1071c:	01 00 00 00 	nop 
   10720:	00 00 00 00 	unimp  0

00010724 <__do_global_dtors_aux>:
   10724:	9d e3 bf 98 	save  %sp, -104, %sp
   10728:	23 00 00 cd 	sethi  %hi(0x33400), %l1
   1072c:	c2 0c 63 e8 	ldub  [ %l1 + 0x3e8 ], %g1	! 337e8 <completed.1>
   10730:	80 a0 60 00 	cmp  %g1, 0
   10734:	12 80 00 0d 	bne  10768 <__do_global_dtors_aux+0x44>
   10738:	21 00 00 cd 	sethi  %hi(0x33400), %l0
   1073c:	10 80 00 05 	b  10750 <__do_global_dtors_aux+0x2c>
   10740:	c2 04 23 d8 	ld  [ %l0 + 0x3d8 ], %g1	! 337d8 <p.0>
   10744:	9f c0 80 00 	call  %g2
   10748:	c2 24 23 d8 	st  %g1, [ %l0 + 0x3d8 ]
   1074c:	c2 04 23 d8 	ld  [ %l0 + 0x3d8 ], %g1
   10750:	c4 00 40 00 	ld  [ %g1 ], %g2
   10754:	80 a0 a0 00 	cmp  %g2, 0
   10758:	12 bf ff fb 	bne  10744 <__do_global_dtors_aux+0x20>
   1075c:	82 00 60 04 	add  %g1, 4, %g1
   10760:	82 10 20 01 	mov  1, %g1
   10764:	c2 2c 63 e8 	stb  %g1, [ %l1 + 0x3e8 ]
   10768:	81 c7 e0 08 	ret 
   1076c:	81 e8 00 00 	restore 

00010770 <call___do_global_dtors_aux>:
   10770:	9d e3 bf 98 	save  %sp, -104, %sp
   10774:	81 c7 e0 08 	ret 
   10778:	81 e8 00 00 	restore 

0001077c <frame_dummy>:
   1077c:	05 00 00 cd 	sethi  %hi(0x33400), %g2
   10780:	c2 00 a1 c8 	ld  [ %g2 + 0x1c8 ], %g1	! 335c8 <__JCR_END__>
   10784:	80 a0 60 00 	cmp  %g1, 0
   10788:	02 80 00 0a 	be  107b0 <frame_dummy+0x34>
   1078c:	90 10 a1 c8 	or  %g2, 0x1c8, %o0
   10790:	03 00 00 00 	sethi  %hi(0), %g1
   10794:	82 10 60 00 	mov  %g1, %g1	! 0 <_init-0x106d0>
   10798:	80 a0 60 00 	cmp  %g1, 0
   1079c:	02 80 00 05 	be  107b0 <frame_dummy+0x34>
   107a0:	01 00 00 00 	nop 
   107a4:	82 13 c0 00 	mov  %o7, %g1
   107a8:	10 bf be 16 	b  0 <_init-0x106d0>
   107ac:	01 00 00 00 	nop 
   107b0:	01 00 00 00 	nop 
   107b4:	81 c3 e0 08 	retl 
   107b8:	01 00 00 00 	nop 

000107bc <call_frame_dummy>:
   107bc:	9d e3 bf 98 	save  %sp, -104, %sp
   107c0:	81 c7 e0 08 	ret 
   107c4:	81 e8 00 00 	restore 

000107c8 <select_file_type>:
   107c8:	9d e3 bf 98 	save  %sp, -104, %sp
   107cc:	03 00 00 cd 	sethi  %hi(0x33400), %g1
   107d0:	c2 00 63 f0 	ld  [ %g1 + 0x3f0 ], %g1	! 337f0 <is_targa>
   107d4:	80 a0 60 00 	cmp  %g1, 0
   107d8:	02 80 00 05 	be  107ec <select_file_type+0x24>
   107dc:	01 00 00 00 	nop 
   107e0:	40 00 0b 02 	call  133e8 <jinit_read_targa>
   107e4:	90 10 00 18 	mov  %i0, %o0
   107e8:	30 80 00 3d 	b,a   108dc <select_file_type+0x114>
   107ec:	40 00 8b f3 	call  337b8 <_IO_getc@plt>
   107f0:	90 10 00 19 	mov  %i1, %o0
   107f4:	80 a2 3f ff 	cmp  %o0, -1
   107f8:	12 80 00 09 	bne  1081c <select_file_type+0x54>
   107fc:	a0 10 00 08 	mov  %o0, %l0
   10800:	c4 06 00 00 	ld  [ %i0 ], %g2
   10804:	82 10 20 29 	mov  0x29, %g1
   10808:	c2 20 a0 14 	st  %g1, [ %g2 + 0x14 ]
   1080c:	c2 06 00 00 	ld  [ %i0 ], %g1
   10810:	c2 00 40 00 	ld  [ %g1 ], %g1
   10814:	9f c0 40 00 	call  %g1
   10818:	90 10 00 18 	mov  %i0, %o0
   1081c:	90 10 00 10 	mov  %l0, %o0
   10820:	40 00 8b b3 	call  336ec <ungetc@plt>
   10824:	92 10 00 19 	mov  %i1, %o1
   10828:	80 a2 3f ff 	cmp  %o0, -1
   1082c:	12 80 00 0a 	bne  10854 <select_file_type+0x8c>
   10830:	80 a4 20 47 	cmp  %l0, 0x47
   10834:	c4 06 00 00 	ld  [ %i0 ], %g2
   10838:	82 10 24 10 	mov  0x410, %g1
   1083c:	c2 20 a0 14 	st  %g1, [ %g2 + 0x14 ]
   10840:	c2 06 00 00 	ld  [ %i0 ], %g1
   10844:	c2 00 40 00 	ld  [ %g1 ], %g1
   10848:	9f c0 40 00 	call  %g1
   1084c:	90 10 00 18 	mov  %i0, %o0
   10850:	80 a4 20 47 	cmp  %l0, 0x47
   10854:	02 80 00 12 	be  1089c <select_file_type+0xd4>
   10858:	80 a4 20 47 	cmp  %l0, 0x47
   1085c:	14 80 00 09 	bg  10880 <select_file_type+0xb8>
   10860:	80 a4 20 50 	cmp  %l0, 0x50
   10864:	80 a4 20 00 	cmp  %l0, 0
   10868:	02 80 00 13 	be  108b4 <select_file_type+0xec>
   1086c:	80 a4 20 42 	cmp  %l0, 0x42
   10870:	02 80 00 08 	be  10890 <select_file_type+0xc8>
   10874:	01 00 00 00 	nop 
   10878:	10 80 00 12 	b  108c0 <select_file_type+0xf8>
   1087c:	c4 06 00 00 	ld  [ %i0 ], %g2
   10880:	02 80 00 0a 	be  108a8 <select_file_type+0xe0>
   10884:	01 00 00 00 	nop 
   10888:	10 80 00 0e 	b  108c0 <select_file_type+0xf8>
   1088c:	c4 06 00 00 	ld  [ %i0 ], %g2
   10890:	40 00 0d 8a 	call  13eb8 <jinit_read_bmp>
   10894:	90 10 00 18 	mov  %i0, %o0
   10898:	30 80 00 11 	b,a   108dc <select_file_type+0x114>
   1089c:	40 00 08 85 	call  12ab0 <jinit_read_gif>
   108a0:	90 10 00 18 	mov  %i0, %o0
   108a4:	30 80 00 0e 	b,a   108dc <select_file_type+0x114>
   108a8:	40 00 05 5d 	call  11e1c <jinit_read_ppm>
   108ac:	90 10 00 18 	mov  %i0, %o0
   108b0:	30 80 00 0b 	b,a   108dc <select_file_type+0x114>
   108b4:	40 00 0a cd 	call  133e8 <jinit_read_targa>
   108b8:	90 10 00 18 	mov  %i0, %o0
   108bc:	30 80 00 08 	b,a   108dc <select_file_type+0x114>
   108c0:	82 10 24 11 	mov  0x411, %g1
   108c4:	c2 20 a0 14 	st  %g1, [ %g2 + 0x14 ]
   108c8:	c2 06 00 00 	ld  [ %i0 ], %g1
   108cc:	c2 00 40 00 	ld  [ %g1 ], %g1
   108d0:	9f c0 40 00 	call  %g1
   108d4:	90 10 00 18 	mov  %i0, %o0
   108d8:	90 10 20 00 	clr  %o0
   108dc:	81 c7 e0 08 	ret 
   108e0:	91 e8 00 08 	restore  %g0, %o0, %o0

000108e4 <usage>:
   108e4:	9d e3 bf 98 	save  %sp, -104, %sp
   108e8:	21 00 00 cd 	sethi  %hi(0x33400), %l0
   108ec:	d0 04 23 e0 	ld  [ %l0 + 0x3e0 ], %o0	! 337e0 <stderr@@GLIBC_2.0>
   108f0:	13 00 00 85 	sethi  %hi(0x21400), %o1
   108f4:	92 12 60 80 	or  %o1, 0x80, %o1	! 21480 <_IO_stdin_used+0x838>
   108f8:	03 00 00 cd 	sethi  %hi(0x33400), %g1
   108fc:	40 00 8b 91 	call  33740 <fprintf@plt>
   10900:	d4 00 63 f4 	ld  [ %g1 + 0x3f4 ], %o2	! 337f4 <progname>
   10904:	11 00 00 85 	sethi  %hi(0x21400), %o0
   10908:	90 12 20 98 	or  %o0, 0x98, %o0	! 21498 <_IO_stdin_used+0x850>
   1090c:	92 10 20 01 	mov  1, %o1
   10910:	94 10 20 0c 	mov  0xc, %o2
   10914:	40 00 8b a6 	call  337ac <fwrite@plt>
   10918:	d6 04 23 e0 	ld  [ %l0 + 0x3e0 ], %o3
   1091c:	11 00 00 85 	sethi  %hi(0x21400), %o0
   10920:	90 12 20 a8 	or  %o0, 0xa8, %o0	! 214a8 <_IO_stdin_used+0x860>
   10924:	92 10 20 01 	mov  1, %o1
   10928:	94 10 20 25 	mov  0x25, %o2
   1092c:	40 00 8b a0 	call  337ac <fwrite@plt>
   10930:	d6 04 23 e0 	ld  [ %l0 + 0x3e0 ], %o3
   10934:	11 00 00 85 	sethi  %hi(0x21400), %o0
   10938:	90 12 20 d0 	or  %o0, 0xd0, %o0	! 214d0 <_IO_stdin_used+0x888>
   1093c:	92 10 20 01 	mov  1, %o1
   10940:	94 10 20 44 	mov  0x44, %o2
   10944:	40 00 8b 9a 	call  337ac <fwrite@plt>
   10948:	d6 04 23 e0 	ld  [ %l0 + 0x3e0 ], %o3
   1094c:	11 00 00 85 	sethi  %hi(0x21400), %o0
   10950:	90 12 21 18 	or  %o0, 0x118, %o0	! 21518 <_IO_stdin_used+0x8d0>
   10954:	92 10 20 01 	mov  1, %o1
   10958:	94 10 20 2d 	mov  0x2d, %o2
   1095c:	40 00 8b 94 	call  337ac <fwrite@plt>
   10960:	d6 04 23 e0 	ld  [ %l0 + 0x3e0 ], %o3
   10964:	11 00 00 85 	sethi  %hi(0x21400), %o0
   10968:	90 12 21 48 	or  %o0, 0x148, %o0	! 21548 <_IO_stdin_used+0x900>
   1096c:	92 10 20 01 	mov  1, %o1
   10970:	94 10 20 4d 	mov  0x4d, %o2
   10974:	40 00 8b 8e 	call  337ac <fwrite@plt>
   10978:	d6 04 23 e0 	ld  [ %l0 + 0x3e0 ], %o3
   1097c:	11 00 00 85 	sethi  %hi(0x21400), %o0
   10980:	90 12 21 98 	or  %o0, 0x198, %o0	! 21598 <_IO_stdin_used+0x950>
   10984:	92 10 20 01 	mov  1, %o1
   10988:	94 10 20 2e 	mov  0x2e, %o2
   1098c:	40 00 8b 88 	call  337ac <fwrite@plt>
   10990:	d6 04 23 e0 	ld  [ %l0 + 0x3e0 ], %o3
   10994:	11 00 00 85 	sethi  %hi(0x21400), %o0
   10998:	90 12 21 c8 	or  %o0, 0x1c8, %o0	! 215c8 <_IO_stdin_used+0x980>
   1099c:	92 10 20 01 	mov  1, %o1
   109a0:	94 10 20 41 	mov  0x41, %o2
   109a4:	40 00 8b 82 	call  337ac <fwrite@plt>
   109a8:	d6 04 23 e0 	ld  [ %l0 + 0x3e0 ], %o3
   109ac:	11 00 00 85 	sethi  %hi(0x21400), %o0
   109b0:	90 12 22 10 	or  %o0, 0x210, %o0	! 21610 <_IO_stdin_used+0x9c8>
   109b4:	92 10 20 01 	mov  1, %o1
   109b8:	94 10 20 1d 	mov  0x1d, %o2
   109bc:	40 00 8b 7c 	call  337ac <fwrite@plt>
   109c0:	d6 04 23 e0 	ld  [ %l0 + 0x3e0 ], %o3
   109c4:	d0 04 23 e0 	ld  [ %l0 + 0x3e0 ], %o0
   109c8:	13 00 00 85 	sethi  %hi(0x21400), %o1
   109cc:	92 12 62 30 	or  %o1, 0x230, %o1	! 21630 <_IO_stdin_used+0x9e8>
   109d0:	15 00 00 85 	sethi  %hi(0x21400), %o2
   109d4:	40 00 8b 5b 	call  33740 <fprintf@plt>
   109d8:	94 12 a2 60 	or  %o2, 0x260, %o2	! 21660 <_IO_stdin_used+0xa18>
   109dc:	d0 04 23 e0 	ld  [ %l0 + 0x3e0 ], %o0
   109e0:	13 00 00 85 	sethi  %hi(0x21400), %o1
   109e4:	92 12 62 70 	or  %o1, 0x270, %o1	! 21670 <_IO_stdin_used+0xa28>
   109e8:	23 00 00 83 	sethi  %hi(0x20c00), %l1
   109ec:	40 00 8b 55 	call  33740 <fprintf@plt>
   109f0:	94 14 62 c8 	or  %l1, 0x2c8, %o2	! 20ec8 <_IO_stdin_used+0x280>
   109f4:	d0 04 23 e0 	ld  [ %l0 + 0x3e0 ], %o0
   109f8:	13 00 00 83 	sethi  %hi(0x20c00), %o1
   109fc:	92 12 60 50 	or  %o1, 0x50, %o1	! 20c50 <_IO_stdin_used+0x8>
   10a00:	40 00 8b 50 	call  33740 <fprintf@plt>
   10a04:	94 14 62 c8 	or  %l1, 0x2c8, %o2
   10a08:	11 00 00 83 	sethi  %hi(0x20c00), %o0
   10a0c:	90 12 20 88 	or  %o0, 0x88, %o0	! 20c88 <_IO_stdin_used+0x40>
   10a10:	92 10 20 01 	mov  1, %o1
   10a14:	94 10 20 43 	mov  0x43, %o2
   10a18:	40 00 8b 65 	call  337ac <fwrite@plt>
   10a1c:	d6 04 23 e0 	ld  [ %l0 + 0x3e0 ], %o3
   10a20:	11 00 00 83 	sethi  %hi(0x20c00), %o0
   10a24:	90 12 20 d0 	or  %o0, 0xd0, %o0	! 20cd0 <_IO_stdin_used+0x88>
   10a28:	92 10 20 01 	mov  1, %o1
   10a2c:	94 10 20 3e 	mov  0x3e, %o2
   10a30:	40 00 8b 5f 	call  337ac <fwrite@plt>
   10a34:	d6 04 23 e0 	ld  [ %l0 + 0x3e0 ], %o3
   10a38:	11 00 00 83 	sethi  %hi(0x20c00), %o0
   10a3c:	90 12 21 10 	or  %o0, 0x110, %o0	! 20d10 <_IO_stdin_used+0xc8>
   10a40:	92 10 20 01 	mov  1, %o1
   10a44:	94 10 20 33 	mov  0x33, %o2
   10a48:	40 00 8b 59 	call  337ac <fwrite@plt>
   10a4c:	d6 04 23 e0 	ld  [ %l0 + 0x3e0 ], %o3
   10a50:	11 00 00 83 	sethi  %hi(0x20c00), %o0
   10a54:	90 12 21 48 	or  %o0, 0x148, %o0	! 20d48 <_IO_stdin_used+0x100>
   10a58:	92 10 20 01 	mov  1, %o1
   10a5c:	94 10 20 2e 	mov  0x2e, %o2
   10a60:	40 00 8b 53 	call  337ac <fwrite@plt>
   10a64:	d6 04 23 e0 	ld  [ %l0 + 0x3e0 ], %o3
   10a68:	11 00 00 83 	sethi  %hi(0x20c00), %o0
   10a6c:	90 12 21 78 	or  %o0, 0x178, %o0	! 20d78 <_IO_stdin_used+0x130>
   10a70:	92 10 20 01 	mov  1, %o1
   10a74:	94 10 20 2b 	mov  0x2b, %o2
   10a78:	40 00 8b 4d 	call  337ac <fwrite@plt>
   10a7c:	d6 04 23 e0 	ld  [ %l0 + 0x3e0 ], %o3
   10a80:	11 00 00 83 	sethi  %hi(0x20c00), %o0
   10a84:	90 12 21 a8 	or  %o0, 0x1a8, %o0	! 20da8 <_IO_stdin_used+0x160>
   10a88:	92 10 20 01 	mov  1, %o1
   10a8c:	94 10 20 16 	mov  0x16, %o2
   10a90:	40 00 8b 47 	call  337ac <fwrite@plt>
   10a94:	d6 04 23 e0 	ld  [ %l0 + 0x3e0 ], %o3
   10a98:	11 00 00 83 	sethi  %hi(0x20c00), %o0
   10a9c:	90 12 21 c0 	or  %o0, 0x1c0, %o0	! 20dc0 <_IO_stdin_used+0x178>
   10aa0:	92 10 20 01 	mov  1, %o1
   10aa4:	94 10 20 27 	mov  0x27, %o2
   10aa8:	40 00 8b 41 	call  337ac <fwrite@plt>
   10aac:	d6 04 23 e0 	ld  [ %l0 + 0x3e0 ], %o3
   10ab0:	11 00 00 83 	sethi  %hi(0x20c00), %o0
   10ab4:	90 12 21 e8 	or  %o0, 0x1e8, %o0	! 20de8 <_IO_stdin_used+0x1a0>
   10ab8:	92 10 20 01 	mov  1, %o1
   10abc:	94 10 20 37 	mov  0x37, %o2
   10ac0:	40 00 8b 3b 	call  337ac <fwrite@plt>
   10ac4:	d6 04 23 e0 	ld  [ %l0 + 0x3e0 ], %o3
   10ac8:	11 00 00 83 	sethi  %hi(0x20c00), %o0
   10acc:	90 12 22 20 	or  %o0, 0x220, %o0	! 20e20 <_IO_stdin_used+0x1d8>
   10ad0:	92 10 20 01 	mov  1, %o1
   10ad4:	94 10 20 37 	mov  0x37, %o2
   10ad8:	40 00 8b 35 	call  337ac <fwrite@plt>
   10adc:	d6 04 23 e0 	ld  [ %l0 + 0x3e0 ], %o3
   10ae0:	11 00 00 83 	sethi  %hi(0x20c00), %o0
   10ae4:	90 12 22 58 	or  %o0, 0x258, %o0	! 20e58 <_IO_stdin_used+0x210>
   10ae8:	92 10 20 01 	mov  1, %o1
   10aec:	94 10 20 34 	mov  0x34, %o2
   10af0:	40 00 8b 2f 	call  337ac <fwrite@plt>
   10af4:	d6 04 23 e0 	ld  [ %l0 + 0x3e0 ], %o3
   10af8:	11 00 00 83 	sethi  %hi(0x20c00), %o0
   10afc:	90 12 22 90 	or  %o0, 0x290, %o0	! 20e90 <_IO_stdin_used+0x248>
   10b00:	92 10 20 01 	mov  1, %o1
   10b04:	94 10 20 38 	mov  0x38, %o2
   10b08:	40 00 8b 29 	call  337ac <fwrite@plt>
   10b0c:	d6 04 23 e0 	ld  [ %l0 + 0x3e0 ], %o3
   10b10:	40 00 8b 1b 	call  3377c <exit@plt>
   10b14:	90 10 20 01 	mov  1, %o0
   10b18:	01 00 00 00 	nop 

00010b1c <parse_switches>:
   10b1c:	9d e3 bf 78 	save  %sp, -136, %sp
   10b20:	a2 10 00 18 	mov  %i0, %l1
   10b24:	a6 10 20 00 	clr  %l3
   10b28:	a8 10 20 00 	clr  %l4
   10b2c:	aa 10 20 00 	clr  %l5
   10b30:	ac 10 20 00 	clr  %l6
   10b34:	82 10 20 4b 	mov  0x4b, %g1
   10b38:	c2 27 bf ec 	st  %g1, [ %fp + -20 ]
   10b3c:	ba 10 20 64 	mov  0x64, %i5
   10b40:	a4 10 20 00 	clr  %l2
   10b44:	c0 27 bf dc 	clr  [ %fp + -36 ]
   10b48:	03 00 00 cd 	sethi  %hi(0x33400), %g1
   10b4c:	c0 20 63 f0 	clr  [ %g1 + 0x3f0 ]	! 337f0 <is_targa>
   10b50:	03 00 00 cd 	sethi  %hi(0x33400), %g1
   10b54:	c0 20 63 f8 	clr  [ %g1 + 0x3f8 ]	! 337f8 <outfilename>
   10b58:	c2 06 00 00 	ld  [ %i0 ], %g1
   10b5c:	b0 10 20 01 	mov  1, %i0
   10b60:	80 a6 00 19 	cmp  %i0, %i1
   10b64:	16 80 01 a5 	bge  111f8 <parse_switches+0x6dc>
   10b68:	c0 20 60 68 	clr  [ %g1 + 0x68 ]
   10b6c:	ae 10 20 01 	mov  1, %l7
   10b70:	83 2e 20 02 	sll  %i0, 2, %g1
   10b74:	e0 06 80 01 	ld  [ %i2 + %g1 ], %l0
   10b78:	c2 4c 00 00 	ldsb  [ %l0 ], %g1
   10b7c:	80 a0 60 2d 	cmp  %g1, 0x2d
   10b80:	02 80 00 06 	be  10b98 <parse_switches+0x7c>
   10b84:	80 a6 00 1b 	cmp  %i0, %i3
   10b88:	14 80 01 9c 	bg  111f8 <parse_switches+0x6dc>
   10b8c:	03 00 00 cd 	sethi  %hi(0x33400), %g1
   10b90:	10 80 01 96 	b  111e8 <parse_switches+0x6cc>
   10b94:	c0 20 63 f8 	clr  [ %g1 + 0x3f8 ]	! 337f8 <outfilename>
   10b98:	a0 04 20 01 	inc  %l0
   10b9c:	90 10 00 10 	mov  %l0, %o0
   10ba0:	13 00 00 85 	sethi  %hi(0x21400), %o1
   10ba4:	92 12 62 b0 	or  %o1, 0x2b0, %o1	! 216b0 <_IO_stdin_used+0xa68>
   10ba8:	40 00 0e e5 	call  1473c <keymatch>
   10bac:	94 10 20 01 	mov  1, %o2
   10bb0:	80 a2 20 00 	cmp  %o0, 0
   10bb4:	22 80 00 0b 	be,a   10be0 <parse_switches+0xc4>
   10bb8:	90 10 00 10 	mov  %l0, %o0
   10bbc:	03 00 00 cd 	sethi  %hi(0x33400), %g1
   10bc0:	d0 00 63 e0 	ld  [ %g1 + 0x3e0 ], %o0	! 337e0 <stderr@@GLIBC_2.0>
   10bc4:	13 00 00 85 	sethi  %hi(0x21400), %o1
   10bc8:	92 12 62 c0 	or  %o1, 0x2c0, %o1	! 216c0 <_IO_stdin_used+0xa78>
   10bcc:	03 00 00 cd 	sethi  %hi(0x33400), %g1
   10bd0:	40 00 8a dc 	call  33740 <fprintf@plt>
   10bd4:	d4 00 63 f4 	ld  [ %g1 + 0x3f4 ], %o2	! 337f4 <progname>
   10bd8:	40 00 8a e9 	call  3377c <exit@plt>
   10bdc:	90 10 20 01 	mov  1, %o0
   10be0:	13 00 00 85 	sethi  %hi(0x21400), %o1
   10be4:	92 12 62 f0 	or  %o1, 0x2f0, %o1	! 216f0 <_IO_stdin_used+0xaa8>
   10be8:	40 00 0e d5 	call  1473c <keymatch>
   10bec:	94 10 20 01 	mov  1, %o2
   10bf0:	80 a2 20 00 	cmp  %o0, 0
   10bf4:	02 80 00 04 	be  10c04 <parse_switches+0xe8>
   10bf8:	90 10 00 10 	mov  %l0, %o0
   10bfc:	10 80 01 7b 	b  111e8 <parse_switches+0x6cc>
   10c00:	a4 10 20 01 	mov  1, %l2
   10c04:	13 00 00 85 	sethi  %hi(0x21400), %o1
   10c08:	92 12 63 00 	or  %o1, 0x300, %o1	! 21700 <_IO_stdin_used+0xab8>
   10c0c:	40 00 0e cc 	call  1473c <keymatch>
   10c10:	94 10 20 02 	mov  2, %o2
   10c14:	80 a2 20 00 	cmp  %o0, 0
   10c18:	02 80 00 2b 	be  10cc4 <parse_switches+0x1a8>
   10c1c:	90 10 00 10 	mov  %l0, %o0
   10c20:	b0 06 20 01 	inc  %i0
   10c24:	80 a6 00 19 	cmp  %i0, %i1
   10c28:	06 80 00 05 	bl  10c3c <parse_switches+0x120>
   10c2c:	83 2e 20 02 	sll  %i0, 2, %g1
   10c30:	7f ff ff 2d 	call  108e4 <usage>
   10c34:	01 00 00 00 	nop 
   10c38:	83 2e 20 02 	sll  %i0, 2, %g1
   10c3c:	d0 06 80 01 	ld  [ %i2 + %g1 ], %o0
   10c40:	13 00 00 85 	sethi  %hi(0x21400), %o1
   10c44:	92 12 63 08 	or  %o1, 0x308, %o1	! 21708 <_IO_stdin_used+0xac0>
   10c48:	40 00 0e bd 	call  1473c <keymatch>
   10c4c:	94 10 20 01 	mov  1, %o2
   10c50:	80 a2 20 00 	cmp  %o0, 0
   10c54:	02 80 00 04 	be  10c64 <parse_switches+0x148>
   10c58:	83 2e 20 02 	sll  %i0, 2, %g1
   10c5c:	10 80 01 63 	b  111e8 <parse_switches+0x6cc>
   10c60:	c0 24 60 bc 	clr  [ %l1 + 0xbc ]
   10c64:	d0 06 80 01 	ld  [ %i2 + %g1 ], %o0
   10c68:	13 00 00 85 	sethi  %hi(0x21400), %o1
   10c6c:	92 12 63 10 	or  %o1, 0x310, %o1	! 21710 <_IO_stdin_used+0xac8>
   10c70:	40 00 0e b3 	call  1473c <keymatch>
   10c74:	94 10 20 02 	mov  2, %o2
   10c78:	80 a2 20 00 	cmp  %o0, 0
   10c7c:	02 80 00 04 	be  10c8c <parse_switches+0x170>
   10c80:	83 2e 20 02 	sll  %i0, 2, %g1
   10c84:	10 80 01 59 	b  111e8 <parse_switches+0x6cc>
   10c88:	ee 24 60 bc 	st  %l7, [ %l1 + 0xbc ]
   10c8c:	d0 06 80 01 	ld  [ %i2 + %g1 ], %o0
   10c90:	13 00 00 85 	sethi  %hi(0x21400), %o1
   10c94:	92 12 63 18 	or  %o1, 0x318, %o1	! 21718 <_IO_stdin_used+0xad0>
   10c98:	40 00 0e a9 	call  1473c <keymatch>
   10c9c:	94 10 20 02 	mov  2, %o2
   10ca0:	80 a2 20 00 	cmp  %o0, 0
   10ca4:	02 80 00 04 	be  10cb4 <parse_switches+0x198>
   10ca8:	82 10 20 02 	mov  2, %g1
   10cac:	10 80 01 4f 	b  111e8 <parse_switches+0x6cc>
   10cb0:	c2 24 60 bc 	st  %g1, [ %l1 + 0xbc ]
   10cb4:	7f ff ff 0c 	call  108e4 <usage>
   10cb8:	b0 06 20 01 	inc  %i0
   10cbc:	10 80 01 4d 	b  111f0 <parse_switches+0x6d4>
   10cc0:	80 a6 00 19 	cmp  %i0, %i1
   10cc4:	13 00 00 85 	sethi  %hi(0x21400), %o1
   10cc8:	92 12 63 20 	or  %o1, 0x320, %o1	! 21720 <_IO_stdin_used+0xad8>
   10ccc:	40 00 0e 9c 	call  1473c <keymatch>
   10cd0:	94 10 20 01 	mov  1, %o2
   10cd4:	80 a2 20 00 	cmp  %o0, 0
   10cd8:	32 80 00 0b 	bne,a   10d04 <parse_switches+0x1e8>
   10cdc:	21 00 00 cd 	sethi  %hi(0x33400), %l0
   10ce0:	90 10 00 10 	mov  %l0, %o0
   10ce4:	13 00 00 85 	sethi  %hi(0x21400), %o1
   10ce8:	92 12 63 28 	or  %o1, 0x328, %o1	! 21728 <_IO_stdin_used+0xae0>
   10cec:	40 00 0e 94 	call  1473c <keymatch>
   10cf0:	94 10 20 01 	mov  1, %o2
   10cf4:	80 a2 20 00 	cmp  %o0, 0
   10cf8:	02 80 00 16 	be  10d50 <parse_switches+0x234>
   10cfc:	90 10 00 10 	mov  %l0, %o0
   10d00:	21 00 00 cd 	sethi  %hi(0x33400), %l0
   10d04:	c2 04 23 ec 	ld  [ %l0 + 0x3ec ], %g1	! 337ec <printed_version.0>
   10d08:	80 a0 60 00 	cmp  %g1, 0
   10d0c:	32 80 00 0d 	bne,a   10d40 <parse_switches+0x224>
   10d10:	c4 04 40 00 	ld  [ %l1 ], %g2
   10d14:	03 00 00 cd 	sethi  %hi(0x33400), %g1
   10d18:	d0 00 63 e0 	ld  [ %g1 + 0x3e0 ], %o0	! 337e0 <stderr@@GLIBC_2.0>
   10d1c:	13 00 00 85 	sethi  %hi(0x21400), %o1
   10d20:	92 12 63 30 	or  %o1, 0x330, %o1	! 21730 <_IO_stdin_used+0xae8>
   10d24:	15 00 00 85 	sethi  %hi(0x21400), %o2
   10d28:	94 12 a3 60 	or  %o2, 0x360, %o2	! 21760 <_IO_stdin_used+0xb18>
   10d2c:	17 00 00 85 	sethi  %hi(0x21400), %o3
   10d30:	40 00 8a 84 	call  33740 <fprintf@plt>
   10d34:	96 12 e3 70 	or  %o3, 0x370, %o3	! 21770 <_IO_stdin_used+0xb28>
   10d38:	ee 24 23 ec 	st  %l7, [ %l0 + 0x3ec ]
   10d3c:	c4 04 40 00 	ld  [ %l1 ], %g2
   10d40:	c2 00 a0 68 	ld  [ %g2 + 0x68 ], %g1
   10d44:	82 00 60 01 	inc  %g1
   10d48:	10 80 01 28 	b  111e8 <parse_switches+0x6cc>
   10d4c:	c2 20 a0 68 	st  %g1, [ %g2 + 0x68 ]
   10d50:	13 00 00 85 	sethi  %hi(0x21400), %o1
   10d54:	92 12 63 98 	or  %o1, 0x398, %o1	! 21798 <_IO_stdin_used+0xb50>
   10d58:	40 00 0e 79 	call  1473c <keymatch>
   10d5c:	94 10 20 02 	mov  2, %o2
   10d60:	80 a2 20 00 	cmp  %o0, 0
   10d64:	12 80 00 0a 	bne  10d8c <parse_switches+0x270>
   10d68:	90 10 00 11 	mov  %l1, %o0
   10d6c:	90 10 00 10 	mov  %l0, %o0
   10d70:	13 00 00 85 	sethi  %hi(0x21400), %o1
   10d74:	92 12 63 a8 	or  %o1, 0x3a8, %o1	! 217a8 <_IO_stdin_used+0xb60>
   10d78:	40 00 0e 71 	call  1473c <keymatch>
   10d7c:	94 10 20 02 	mov  2, %o2
   10d80:	80 a2 20 00 	cmp  %o0, 0
   10d84:	02 80 00 06 	be  10d9c <parse_switches+0x280>
   10d88:	90 10 00 11 	mov  %l1, %o0
   10d8c:	40 00 11 8b 	call  153b8 <jpeg_set_colorspace>
   10d90:	92 10 20 01 	mov  1, %o1
   10d94:	10 80 01 16 	b  111ec <parse_switches+0x6d0>
   10d98:	b0 06 20 01 	inc  %i0
   10d9c:	90 10 00 10 	mov  %l0, %o0
   10da0:	13 00 00 85 	sethi  %hi(0x21400), %o1
   10da4:	92 12 63 b8 	or  %o1, 0x3b8, %o1	! 217b8 <_IO_stdin_used+0xb70>
   10da8:	40 00 0e 65 	call  1473c <keymatch>
   10dac:	94 10 20 03 	mov  3, %o2
   10db0:	80 a2 20 00 	cmp  %o0, 0
   10db4:	02 80 00 26 	be  10e4c <parse_switches+0x330>
   10db8:	82 10 20 78 	mov  0x78, %g1
   10dbc:	b0 06 20 01 	inc  %i0
   10dc0:	80 a6 00 19 	cmp  %i0, %i1
   10dc4:	06 80 00 04 	bl  10dd4 <parse_switches+0x2b8>
   10dc8:	c2 2f bf f3 	stb  %g1, [ %fp + -13 ]
   10dcc:	7f ff fe c6 	call  108e4 <usage>
   10dd0:	01 00 00 00 	nop 
   10dd4:	83 2e 20 02 	sll  %i0, 2, %g1
   10dd8:	d0 06 80 01 	ld  [ %i2 + %g1 ], %o0
   10ddc:	13 00 00 85 	sethi  %hi(0x21400), %o1
   10de0:	92 12 63 c8 	or  %o1, 0x3c8, %o1	! 217c8 <_IO_stdin_used+0xb80>
   10de4:	94 07 bf f4 	add  %fp, -12, %o2
   10de8:	40 00 8a 5c 	call  33758 <sscanf@plt>
   10dec:	96 07 bf f3 	add  %fp, -13, %o3
   10df0:	80 a2 20 00 	cmp  %o0, 0
   10df4:	14 80 00 05 	bg  10e08 <parse_switches+0x2ec>
   10df8:	c2 4f bf f3 	ldsb  [ %fp + -13 ], %g1
   10dfc:	7f ff fe ba 	call  108e4 <usage>
   10e00:	01 00 00 00 	nop 
   10e04:	c2 4f bf f3 	ldsb  [ %fp + -13 ], %g1
   10e08:	84 18 60 6d 	xor  %g1, 0x6d, %g2
   10e0c:	80 a0 00 02 	cmp  %g0, %g2
   10e10:	84 60 3f ff 	subx  %g0, -1, %g2
   10e14:	82 18 60 4d 	xor  %g1, 0x4d, %g1
   10e18:	80 a0 00 01 	cmp  %g0, %g1
   10e1c:	82 60 3f ff 	subx  %g0, -1, %g1
   10e20:	80 90 80 01 	orcc  %g2, %g1, %g0
   10e24:	22 80 00 06 	be,a   10e3c <parse_switches+0x320>
   10e28:	c4 04 60 04 	ld  [ %l1 + 4 ], %g2
   10e2c:	c2 07 bf f4 	ld  [ %fp + -12 ], %g1
   10e30:	82 58 63 e8 	smul  %g1, 0x3e8, %g1
   10e34:	c2 27 bf f4 	st  %g1, [ %fp + -12 ]
   10e38:	c4 04 60 04 	ld  [ %l1 + 4 ], %g2
   10e3c:	c2 07 bf f4 	ld  [ %fp + -12 ], %g1
   10e40:	82 58 63 e8 	smul  %g1, 0x3e8, %g1
   10e44:	10 80 00 e9 	b  111e8 <parse_switches+0x6cc>
   10e48:	c2 20 a0 2c 	st  %g1, [ %g2 + 0x2c ]
   10e4c:	90 10 00 10 	mov  %l0, %o0
   10e50:	13 00 00 85 	sethi  %hi(0x21400), %o1
   10e54:	92 12 63 d0 	or  %o1, 0x3d0, %o1	! 217d0 <_IO_stdin_used+0xb88>
   10e58:	40 00 0e 39 	call  1473c <keymatch>
   10e5c:	94 10 20 01 	mov  1, %o2
   10e60:	80 a2 20 00 	cmp  %o0, 0
   10e64:	32 80 00 e1 	bne,a   111e8 <parse_switches+0x6cc>
   10e68:	ee 24 60 b0 	st  %l7, [ %l1 + 0xb0 ]
   10e6c:	90 10 00 10 	mov  %l0, %o0
   10e70:	13 00 00 85 	sethi  %hi(0x21400), %o1
   10e74:	92 12 63 e0 	or  %o1, 0x3e0, %o1	! 217e0 <_IO_stdin_used+0xb98>
   10e78:	40 00 0e 31 	call  1473c <keymatch>
   10e7c:	94 10 20 01 	mov  1, %o2
   10e80:	80 a2 20 00 	cmp  %o0, 0
   10e84:	02 80 00 04 	be  10e94 <parse_switches+0x378>
   10e88:	90 10 00 10 	mov  %l0, %o0
   10e8c:	10 80 00 d7 	b  111e8 <parse_switches+0x6cc>
   10e90:	ee 24 60 b0 	st  %l7, [ %l1 + 0xb0 ]
   10e94:	13 00 00 85 	sethi  %hi(0x21400), %o1
   10e98:	92 12 63 f0 	or  %o1, 0x3f0, %o1	! 217f0 <_IO_stdin_used+0xba8>
   10e9c:	40 00 0e 28 	call  1473c <keymatch>
   10ea0:	94 10 20 04 	mov  4, %o2
   10ea4:	80 a2 20 00 	cmp  %o0, 0
   10ea8:	02 80 00 0d 	be  10edc <parse_switches+0x3c0>
   10eac:	90 10 00 10 	mov  %l0, %o0
   10eb0:	b0 06 20 01 	inc  %i0
   10eb4:	80 a6 00 19 	cmp  %i0, %i1
   10eb8:	06 80 00 05 	bl  10ecc <parse_switches+0x3b0>
   10ebc:	83 2e 20 02 	sll  %i0, 2, %g1
   10ec0:	7f ff fe 89 	call  108e4 <usage>
   10ec4:	01 00 00 00 	nop 
   10ec8:	83 2e 20 02 	sll  %i0, 2, %g1
   10ecc:	c4 06 80 01 	ld  [ %i2 + %g1 ], %g2
   10ed0:	03 00 00 cd 	sethi  %hi(0x33400), %g1
   10ed4:	10 80 00 c5 	b  111e8 <parse_switches+0x6cc>
   10ed8:	c4 20 63 f8 	st  %g2, [ %g1 + 0x3f8 ]	! 337f8 <outfilename>
   10edc:	13 00 00 85 	sethi  %hi(0x21400), %o1
   10ee0:	92 12 63 f8 	or  %o1, 0x3f8, %o1	! 217f8 <_IO_stdin_used+0xbb0>
   10ee4:	40 00 0e 16 	call  1473c <keymatch>
   10ee8:	94 10 20 01 	mov  1, %o2
   10eec:	80 a2 20 00 	cmp  %o0, 0
   10ef0:	02 80 00 04 	be  10f00 <parse_switches+0x3e4>
   10ef4:	82 10 20 01 	mov  1, %g1
   10ef8:	10 80 00 bc 	b  111e8 <parse_switches+0x6cc>
   10efc:	c2 27 bf dc 	st  %g1, [ %fp + -36 ]
   10f00:	90 10 00 10 	mov  %l0, %o0
   10f04:	13 00 00 86 	sethi  %hi(0x21800), %o1
   10f08:	92 12 60 08 	or  %o1, 8, %o1	! 21808 <_IO_stdin_used+0xbc0>
   10f0c:	40 00 0e 0c 	call  1473c <keymatch>
   10f10:	94 10 20 01 	mov  1, %o2
   10f14:	80 a2 20 00 	cmp  %o0, 0
   10f18:	02 80 00 17 	be  10f74 <parse_switches+0x458>
   10f1c:	90 10 00 10 	mov  %l0, %o0
   10f20:	b0 06 20 01 	inc  %i0
   10f24:	80 a6 00 19 	cmp  %i0, %i1
   10f28:	06 80 00 05 	bl  10f3c <parse_switches+0x420>
   10f2c:	83 2e 20 02 	sll  %i0, 2, %g1
   10f30:	7f ff fe 6d 	call  108e4 <usage>
   10f34:	01 00 00 00 	nop 
   10f38:	83 2e 20 02 	sll  %i0, 2, %g1
   10f3c:	d0 06 80 01 	ld  [ %i2 + %g1 ], %o0
   10f40:	13 00 00 8b 	sethi  %hi(0x22c00), %o1
   10f44:	92 12 61 40 	or  %o1, 0x140, %o1	! 22d40 <jpeg_natural_order+0xd7c>
   10f48:	40 00 8a 04 	call  33758 <sscanf@plt>
   10f4c:	94 07 bf ec 	add  %fp, -20, %o2
   10f50:	80 a2 20 01 	cmp  %o0, 1
   10f54:	02 80 00 04 	be  10f64 <parse_switches+0x448>
   10f58:	01 00 00 00 	nop 
   10f5c:	7f ff fe 62 	call  108e4 <usage>
   10f60:	01 00 00 00 	nop 
   10f64:	40 00 10 55 	call  150b8 <jpeg_quality_scaling>
   10f68:	d0 07 bf ec 	ld  [ %fp + -20 ], %o0
   10f6c:	10 80 00 9f 	b  111e8 <parse_switches+0x6cc>
   10f70:	ba 10 00 08 	mov  %o0, %i5
   10f74:	13 00 00 86 	sethi  %hi(0x21800), %o1
   10f78:	92 12 60 10 	or  %o1, 0x10, %o1	! 21810 <_IO_stdin_used+0xbc8>
   10f7c:	40 00 0d f0 	call  1473c <keymatch>
   10f80:	94 10 20 02 	mov  2, %o2
   10f84:	80 a2 20 00 	cmp  %o0, 0
   10f88:	02 80 00 0b 	be  10fb4 <parse_switches+0x498>
   10f8c:	90 10 00 10 	mov  %l0, %o0
   10f90:	b0 06 20 01 	inc  %i0
   10f94:	80 a6 00 19 	cmp  %i0, %i1
   10f98:	06 80 00 05 	bl  10fac <parse_switches+0x490>
   10f9c:	83 2e 20 02 	sll  %i0, 2, %g1
   10fa0:	7f ff fe 51 	call  108e4 <usage>
   10fa4:	01 00 00 00 	nop 
   10fa8:	83 2e 20 02 	sll  %i0, 2, %g1
   10fac:	10 80 00 8f 	b  111e8 <parse_switches+0x6cc>
   10fb0:	e8 06 80 01 	ld  [ %i2 + %g1 ], %l4
   10fb4:	13 00 00 86 	sethi  %hi(0x21800), %o1
   10fb8:	92 12 60 18 	or  %o1, 0x18, %o1	! 21818 <_IO_stdin_used+0xbd0>
   10fbc:	40 00 0d e0 	call  1473c <keymatch>
   10fc0:	94 10 20 02 	mov  2, %o2
   10fc4:	80 a2 20 00 	cmp  %o0, 0
   10fc8:	02 80 00 0b 	be  10ff4 <parse_switches+0x4d8>
   10fcc:	90 10 00 10 	mov  %l0, %o0
   10fd0:	b0 06 20 01 	inc  %i0
   10fd4:	80 a6 00 19 	cmp  %i0, %i1
   10fd8:	06 80 00 05 	bl  10fec <parse_switches+0x4d0>
   10fdc:	83 2e 20 02 	sll  %i0, 2, %g1
   10fe0:	7f ff fe 41 	call  108e4 <usage>
   10fe4:	01 00 00 00 	nop 
   10fe8:	83 2e 20 02 	sll  %i0, 2, %g1
   10fec:	10 80 00 7f 	b  111e8 <parse_switches+0x6cc>
   10ff0:	e6 06 80 01 	ld  [ %i2 + %g1 ], %l3
   10ff4:	13 00 00 86 	sethi  %hi(0x21800), %o1
   10ff8:	92 12 60 20 	or  %o1, 0x20, %o1	! 21820 <_IO_stdin_used+0xbd8>
   10ffc:	40 00 0d d0 	call  1473c <keymatch>
   11000:	94 10 20 01 	mov  1, %o2
   11004:	80 a2 20 00 	cmp  %o0, 0
   11008:	02 80 00 2b 	be  110b4 <parse_switches+0x598>
   1100c:	82 10 20 78 	mov  0x78, %g1
   11010:	b0 06 20 01 	inc  %i0
   11014:	80 a6 00 19 	cmp  %i0, %i1
   11018:	06 80 00 04 	bl  11028 <parse_switches+0x50c>
   1101c:	c2 2f bf e7 	stb  %g1, [ %fp + -25 ]
   11020:	7f ff fe 31 	call  108e4 <usage>
   11024:	01 00 00 00 	nop 
   11028:	83 2e 20 02 	sll  %i0, 2, %g1
   1102c:	d0 06 80 01 	ld  [ %i2 + %g1 ], %o0
   11030:	13 00 00 85 	sethi  %hi(0x21400), %o1
   11034:	92 12 63 c8 	or  %o1, 0x3c8, %o1	! 217c8 <_IO_stdin_used+0xb80>
   11038:	94 07 bf e8 	add  %fp, -24, %o2
   1103c:	40 00 89 c7 	call  33758 <sscanf@plt>
   11040:	96 07 bf e7 	add  %fp, -25, %o3
   11044:	80 a2 20 00 	cmp  %o0, 0
   11048:	14 80 00 05 	bg  1105c <parse_switches+0x540>
   1104c:	c4 07 bf e8 	ld  [ %fp + -24 ], %g2
   11050:	7f ff fe 25 	call  108e4 <usage>
   11054:	01 00 00 00 	nop 
   11058:	c4 07 bf e8 	ld  [ %fp + -24 ], %g2
   1105c:	03 00 00 3f 	sethi  %hi(0xfc00), %g1
   11060:	82 10 63 ff 	or  %g1, 0x3ff, %g1	! ffff <_init-0x6d1>
   11064:	80 a0 80 01 	cmp  %g2, %g1
   11068:	08 80 00 05 	bleu  1107c <parse_switches+0x560>
   1106c:	c2 4f bf e7 	ldsb  [ %fp + -25 ], %g1
   11070:	7f ff fe 1d 	call  108e4 <usage>
   11074:	01 00 00 00 	nop 
   11078:	c2 4f bf e7 	ldsb  [ %fp + -25 ], %g1
   1107c:	84 18 60 62 	xor  %g1, 0x62, %g2
   11080:	80 a0 00 02 	cmp  %g0, %g2
   11084:	84 60 3f ff 	subx  %g0, -1, %g2
   11088:	82 18 60 42 	xor  %g1, 0x42, %g1
   1108c:	80 a0 00 01 	cmp  %g0, %g1
   11090:	82 60 3f ff 	subx  %g0, -1, %g1
   11094:	80 90 80 01 	orcc  %g2, %g1, %g0
   11098:	02 80 00 05 	be  110ac <parse_switches+0x590>
   1109c:	c2 07 bf e8 	ld  [ %fp + -24 ], %g1
   110a0:	c2 24 60 c0 	st  %g1, [ %l1 + 0xc0 ]
   110a4:	10 80 00 51 	b  111e8 <parse_switches+0x6cc>
   110a8:	c0 24 60 c4 	clr  [ %l1 + 0xc4 ]
   110ac:	10 80 00 4f 	b  111e8 <parse_switches+0x6cc>
   110b0:	c2 24 60 c4 	st  %g1, [ %l1 + 0xc4 ]
   110b4:	90 10 00 10 	mov  %l0, %o0
   110b8:	13 00 00 86 	sethi  %hi(0x21800), %o1
   110bc:	92 12 60 28 	or  %o1, 0x28, %o1	! 21828 <_IO_stdin_used+0xbe0>
   110c0:	40 00 0d 9f 	call  1473c <keymatch>
   110c4:	94 10 20 02 	mov  2, %o2
   110c8:	80 a2 20 00 	cmp  %o0, 0
   110cc:	02 80 00 0b 	be  110f8 <parse_switches+0x5dc>
   110d0:	90 10 00 10 	mov  %l0, %o0
   110d4:	b0 06 20 01 	inc  %i0
   110d8:	80 a6 00 19 	cmp  %i0, %i1
   110dc:	06 80 00 05 	bl  110f0 <parse_switches+0x5d4>
   110e0:	83 2e 20 02 	sll  %i0, 2, %g1
   110e4:	7f ff fe 00 	call  108e4 <usage>
   110e8:	01 00 00 00 	nop 
   110ec:	83 2e 20 02 	sll  %i0, 2, %g1
   110f0:	10 80 00 3e 	b  111e8 <parse_switches+0x6cc>
   110f4:	ea 06 80 01 	ld  [ %i2 + %g1 ], %l5
   110f8:	13 00 00 86 	sethi  %hi(0x21800), %o1
   110fc:	92 12 60 30 	or  %o1, 0x30, %o1	! 21830 <_IO_stdin_used+0xbe8>
   11100:	40 00 0d 8f 	call  1473c <keymatch>
   11104:	94 10 20 02 	mov  2, %o2
   11108:	80 a2 20 00 	cmp  %o0, 0
   1110c:	02 80 00 0b 	be  11138 <parse_switches+0x61c>
   11110:	90 10 00 10 	mov  %l0, %o0
   11114:	b0 06 20 01 	inc  %i0
   11118:	80 a6 00 19 	cmp  %i0, %i1
   1111c:	06 80 00 05 	bl  11130 <parse_switches+0x614>
   11120:	83 2e 20 02 	sll  %i0, 2, %g1
   11124:	7f ff fd f0 	call  108e4 <usage>
   11128:	01 00 00 00 	nop 
   1112c:	83 2e 20 02 	sll  %i0, 2, %g1
   11130:	10 80 00 2e 	b  111e8 <parse_switches+0x6cc>
   11134:	ec 06 80 01 	ld  [ %i2 + %g1 ], %l6
   11138:	13 00 00 86 	sethi  %hi(0x21800), %o1
   1113c:	92 12 60 38 	or  %o1, 0x38, %o1	! 21838 <_IO_stdin_used+0xbf0>
   11140:	40 00 0d 7f 	call  1473c <keymatch>
   11144:	94 10 20 02 	mov  2, %o2
   11148:	80 a2 20 00 	cmp  %o0, 0
   1114c:	02 80 00 1c 	be  111bc <parse_switches+0x6a0>
   11150:	90 10 00 10 	mov  %l0, %o0
   11154:	b0 06 20 01 	inc  %i0
   11158:	80 a6 00 19 	cmp  %i0, %i1
   1115c:	06 80 00 05 	bl  11170 <parse_switches+0x654>
   11160:	83 2e 20 02 	sll  %i0, 2, %g1
   11164:	7f ff fd e0 	call  108e4 <usage>
   11168:	01 00 00 00 	nop 
   1116c:	83 2e 20 02 	sll  %i0, 2, %g1
   11170:	d0 06 80 01 	ld  [ %i2 + %g1 ], %o0
   11174:	13 00 00 8b 	sethi  %hi(0x22c00), %o1
   11178:	92 12 61 40 	or  %o1, 0x140, %o1	! 22d40 <jpeg_natural_order+0xd7c>
   1117c:	40 00 89 77 	call  33758 <sscanf@plt>
   11180:	94 07 bf e0 	add  %fp, -32, %o2
   11184:	80 a2 20 01 	cmp  %o0, 1
   11188:	02 80 00 05 	be  1119c <parse_switches+0x680>
   1118c:	c2 07 bf e0 	ld  [ %fp + -32 ], %g1
   11190:	7f ff fd d5 	call  108e4 <usage>
   11194:	01 00 00 00 	nop 
   11198:	c2 07 bf e0 	ld  [ %fp + -32 ], %g1
   1119c:	80 a0 60 64 	cmp  %g1, 0x64
   111a0:	08 80 00 05 	bleu  111b4 <parse_switches+0x698>
   111a4:	c2 07 bf e0 	ld  [ %fp + -32 ], %g1
   111a8:	7f ff fd cf 	call  108e4 <usage>
   111ac:	01 00 00 00 	nop 
   111b0:	c2 07 bf e0 	ld  [ %fp + -32 ], %g1
   111b4:	10 80 00 0d 	b  111e8 <parse_switches+0x6cc>
   111b8:	c2 24 60 b8 	st  %g1, [ %l1 + 0xb8 ]
   111bc:	13 00 00 86 	sethi  %hi(0x21800), %o1
   111c0:	92 12 60 40 	or  %o1, 0x40, %o1	! 21840 <_IO_stdin_used+0xbf8>
   111c4:	40 00 0d 5e 	call  1473c <keymatch>
   111c8:	94 10 20 01 	mov  1, %o2
   111cc:	80 a2 20 00 	cmp  %o0, 0
   111d0:	02 80 00 04 	be  111e0 <parse_switches+0x6c4>
   111d4:	03 00 00 cd 	sethi  %hi(0x33400), %g1
   111d8:	10 80 00 04 	b  111e8 <parse_switches+0x6cc>
   111dc:	ee 20 63 f0 	st  %l7, [ %g1 + 0x3f0 ]	! 337f0 <is_targa>
   111e0:	7f ff fd c1 	call  108e4 <usage>
   111e4:	01 00 00 00 	nop 
   111e8:	b0 06 20 01 	inc  %i0
   111ec:	80 a6 00 19 	cmp  %i0, %i1
   111f0:	06 bf fe 61 	bl  10b74 <parse_switches+0x58>
   111f4:	83 2e 20 02 	sll  %i0, 2, %g1
   111f8:	80 a7 20 00 	cmp  %i4, 0
   111fc:	02 80 00 35 	be  112d0 <parse_switches+0x7b4>
   11200:	90 10 00 11 	mov  %l1, %o0
   11204:	d2 07 bf ec 	ld  [ %fp + -20 ], %o1
   11208:	40 00 0f c2 	call  15110 <jpeg_set_quality>
   1120c:	94 10 00 12 	mov  %l2, %o2
   11210:	80 a4 e0 00 	cmp  %l3, 0
   11214:	02 80 00 0b 	be  11240 <parse_switches+0x724>
   11218:	90 10 00 11 	mov  %l1, %o0
   1121c:	92 10 00 13 	mov  %l3, %o1
   11220:	94 10 00 1d 	mov  %i5, %o2
   11224:	40 00 0b 7a 	call  1400c <read_quant_tables>
   11228:	96 10 00 12 	mov  %l2, %o3
   1122c:	80 a2 20 00 	cmp  %o0, 0
   11230:	12 80 00 05 	bne  11244 <parse_switches+0x728>
   11234:	80 a5 20 00 	cmp  %l4, 0
   11238:	7f ff fd ab 	call  108e4 <usage>
   1123c:	01 00 00 00 	nop 
   11240:	80 a5 20 00 	cmp  %l4, 0
   11244:	02 80 00 09 	be  11268 <parse_switches+0x74c>
   11248:	90 10 00 11 	mov  %l1, %o0
   1124c:	40 00 0c ae 	call  14504 <set_quant_slots>
   11250:	92 10 00 14 	mov  %l4, %o1
   11254:	80 a2 20 00 	cmp  %o0, 0
   11258:	12 80 00 05 	bne  1126c <parse_switches+0x750>
   1125c:	80 a5 60 00 	cmp  %l5, 0
   11260:	7f ff fd a1 	call  108e4 <usage>
   11264:	01 00 00 00 	nop 
   11268:	80 a5 60 00 	cmp  %l5, 0
   1126c:	02 80 00 09 	be  11290 <parse_switches+0x774>
   11270:	90 10 00 11 	mov  %l1, %o0
   11274:	40 00 0c df 	call  145f0 <set_sample_factors>
   11278:	92 10 00 15 	mov  %l5, %o1
   1127c:	80 a2 20 00 	cmp  %o0, 0
   11280:	12 80 00 05 	bne  11294 <parse_switches+0x778>
   11284:	c2 07 bf dc 	ld  [ %fp + -36 ], %g1
   11288:	7f ff fd 97 	call  108e4 <usage>
   1128c:	01 00 00 00 	nop 
   11290:	c2 07 bf dc 	ld  [ %fp + -36 ], %g1
   11294:	80 a0 60 00 	cmp  %g1, 0
   11298:	02 80 00 05 	be  112ac <parse_switches+0x790>
   1129c:	80 a5 a0 00 	cmp  %l6, 0
   112a0:	40 00 11 5b 	call  1580c <jpeg_simple_progression>
   112a4:	90 10 00 11 	mov  %l1, %o0
   112a8:	80 a5 a0 00 	cmp  %l6, 0
   112ac:	02 80 00 09 	be  112d0 <parse_switches+0x7b4>
   112b0:	90 10 00 11 	mov  %l1, %o0
   112b4:	40 00 0b e5 	call  14248 <read_scan_script>
   112b8:	92 10 00 16 	mov  %l6, %o1
   112bc:	80 a2 20 00 	cmp  %o0, 0
   112c0:	12 80 00 04 	bne  112d0 <parse_switches+0x7b4>
   112c4:	01 00 00 00 	nop 
   112c8:	7f ff fd 87 	call  108e4 <usage>
   112cc:	01 00 00 00 	nop 
   112d0:	81 c7 e0 08 	ret 
   112d4:	81 e8 00 00 	restore 

000112d8 <main>:
   112d8:	9d e3 bd a8 	save  %sp, -600, %sp
   112dc:	c4 06 40 00 	ld  [ %i1 ], %g2
   112e0:	03 00 00 cd 	sethi  %hi(0x33400), %g1
   112e4:	80 a0 a0 00 	cmp  %g2, 0
   112e8:	02 80 00 06 	be  11300 <main+0x28>
   112ec:	c4 20 63 f4 	st  %g2, [ %g1 + 0x3f4 ]
   112f0:	c2 48 80 00 	ldsb  [ %g2 ], %g1
   112f4:	80 a0 60 00 	cmp  %g1, 0
   112f8:	12 80 00 06 	bne  11310 <main+0x38>
   112fc:	01 00 00 00 	nop 
   11300:	03 00 00 86 	sethi  %hi(0x21800), %g1
   11304:	82 10 60 48 	or  %g1, 0x48, %g1	! 21848 <_IO_stdin_used+0xc00>
   11308:	05 00 00 cd 	sethi  %hi(0x33400), %g2
   1130c:	c2 20 a3 f4 	st  %g1, [ %g2 + 0x3f4 ]	! 337f4 <progname>
   11310:	40 00 33 6d 	call  1e0c4 <jpeg_std_error>
   11314:	90 07 be 08 	add  %fp, -504, %o0
   11318:	d0 27 be 90 	st  %o0, [ %fp + -368 ]
   1131c:	a0 07 be 90 	add  %fp, -368, %l0
   11320:	90 10 00 10 	mov  %l0, %o0
   11324:	92 10 20 3d 	mov  0x3d, %o1
   11328:	40 00 0d 38 	call  14808 <jpeg_CreateCompress>
   1132c:	94 10 21 68 	mov  0x168, %o2
   11330:	03 00 00 86 	sethi  %hi(0x21800), %g1
   11334:	82 10 60 94 	or  %g1, 0x94, %g1	! 21894 <cdjpeg_message_table>
   11338:	c2 27 be 80 	st  %g1, [ %fp + -384 ]
   1133c:	82 10 23 e8 	mov  0x3e8, %g1
   11340:	c2 27 be 84 	st  %g1, [ %fp + -380 ]
   11344:	82 10 24 13 	mov  0x413, %g1
   11348:	c2 27 be 88 	st  %g1, [ %fp + -376 ]
   1134c:	82 10 20 02 	mov  2, %g1
   11350:	c2 27 be b4 	st  %g1, [ %fp + -332 ]
   11354:	40 00 0f ae 	call  1520c <jpeg_set_defaults>
   11358:	90 10 00 10 	mov  %l0, %o0
   1135c:	90 10 00 10 	mov  %l0, %o0
   11360:	92 10 00 18 	mov  %i0, %o1
   11364:	94 10 00 19 	mov  %i1, %o2
   11368:	96 10 20 00 	clr  %o3
   1136c:	7f ff fd ec 	call  10b1c <parse_switches>
   11370:	98 10 20 00 	clr  %o4
   11374:	82 06 3f ff 	add  %i0, -1, %g1
   11378:	80 a0 40 08 	cmp  %g1, %o0
   1137c:	04 80 00 0b 	ble  113a8 <main+0xd0>
   11380:	a0 10 00 08 	mov  %o0, %l0
   11384:	03 00 00 cd 	sethi  %hi(0x33400), %g1
   11388:	d0 00 63 e0 	ld  [ %g1 + 0x3e0 ], %o0	! 337e0 <stderr@@GLIBC_2.0>
   1138c:	13 00 00 86 	sethi  %hi(0x21800), %o1
   11390:	92 12 60 50 	or  %o1, 0x50, %o1	! 21850 <_IO_stdin_used+0xc08>
   11394:	03 00 00 cd 	sethi  %hi(0x33400), %g1
   11398:	40 00 88 ea 	call  33740 <fprintf@plt>
   1139c:	d4 00 63 f4 	ld  [ %g1 + 0x3f4 ], %o2	! 337f4 <progname>
   113a0:	7f ff fd 51 	call  108e4 <usage>
   113a4:	01 00 00 00 	nop 
   113a8:	80 a4 00 18 	cmp  %l0, %i0
   113ac:	16 80 00 13 	bge  113f8 <main+0x120>
   113b0:	a1 2c 20 02 	sll  %l0, 2, %l0
   113b4:	d0 06 40 10 	ld  [ %i1 + %l0 ], %o0
   113b8:	13 00 00 86 	sethi  %hi(0x21800), %o1
   113bc:	40 00 88 f9 	call  337a0 <fopen@plt>
   113c0:	92 12 60 70 	or  %o1, 0x70, %o1	! 21870 <_IO_stdin_used+0xc28>
   113c4:	80 a2 20 00 	cmp  %o0, 0
   113c8:	12 80 00 0f 	bne  11404 <main+0x12c>
   113cc:	a4 10 00 08 	mov  %o0, %l2
   113d0:	03 00 00 cd 	sethi  %hi(0x33400), %g1
   113d4:	d0 00 63 e0 	ld  [ %g1 + 0x3e0 ], %o0	! 337e0 <stderr@@GLIBC_2.0>
   113d8:	13 00 00 86 	sethi  %hi(0x21800), %o1
   113dc:	92 12 60 78 	or  %o1, 0x78, %o1	! 21878 <_IO_stdin_used+0xc30>
   113e0:	03 00 00 cd 	sethi  %hi(0x33400), %g1
   113e4:	d4 00 63 f4 	ld  [ %g1 + 0x3f4 ], %o2	! 337f4 <progname>
   113e8:	40 00 88 d6 	call  33740 <fprintf@plt>
   113ec:	d6 06 40 10 	ld  [ %i1 + %l0 ], %o3
   113f0:	40 00 88 e3 	call  3377c <exit@plt>
   113f4:	90 10 20 01 	mov  1, %o0
   113f8:	40 00 0c fe 	call  147f0 <read_stdin>
   113fc:	01 00 00 00 	nop 
   11400:	a4 10 00 08 	mov  %o0, %l2
   11404:	21 00 00 cd 	sethi  %hi(0x33400), %l0
   11408:	d0 04 23 f8 	ld  [ %l0 + 0x3f8 ], %o0	! 337f8 <outfilename>
   1140c:	80 a2 20 00 	cmp  %o0, 0
   11410:	02 80 00 12 	be  11458 <main+0x180>
   11414:	01 00 00 00 	nop 
   11418:	13 00 00 86 	sethi  %hi(0x21800), %o1
   1141c:	40 00 88 e1 	call  337a0 <fopen@plt>
   11420:	92 12 60 90 	or  %o1, 0x90, %o1	! 21890 <_IO_stdin_used+0xc48>
   11424:	80 a2 20 00 	cmp  %o0, 0
   11428:	12 80 00 0f 	bne  11464 <main+0x18c>
   1142c:	a6 10 00 08 	mov  %o0, %l3
   11430:	03 00 00 cd 	sethi  %hi(0x33400), %g1
   11434:	d0 00 63 e0 	ld  [ %g1 + 0x3e0 ], %o0	! 337e0 <stderr@@GLIBC_2.0>
   11438:	13 00 00 86 	sethi  %hi(0x21800), %o1
   1143c:	92 12 60 78 	or  %o1, 0x78, %o1	! 21878 <_IO_stdin_used+0xc30>
   11440:	03 00 00 cd 	sethi  %hi(0x33400), %g1
   11444:	d4 00 63 f4 	ld  [ %g1 + 0x3f4 ], %o2	! 337f4 <progname>
   11448:	40 00 88 be 	call  33740 <fprintf@plt>
   1144c:	d6 04 23 f8 	ld  [ %l0 + 0x3f8 ], %o3
   11450:	40 00 88 cb 	call  3377c <exit@plt>
   11454:	90 10 20 01 	mov  1, %o0
   11458:	40 00 0c e9 	call  147fc <write_stdout>
   1145c:	01 00 00 00 	nop 
   11460:	a6 10 00 08 	mov  %o0, %l3
   11464:	a0 07 be 90 	add  %fp, -368, %l0
   11468:	90 10 00 10 	mov  %l0, %o0
   1146c:	7f ff fc d7 	call  107c8 <select_file_type>
   11470:	92 10 00 12 	mov  %l2, %o1
   11474:	a2 10 00 08 	mov  %o0, %l1
   11478:	e4 22 20 0c 	st  %l2, [ %o0 + 0xc ]
   1147c:	c2 02 00 00 	ld  [ %o0 ], %g1
   11480:	90 10 00 10 	mov  %l0, %o0
   11484:	9f c0 40 00 	call  %g1
   11488:	92 10 00 11 	mov  %l1, %o1
   1148c:	40 00 0f a4 	call  1531c <jpeg_default_colorspace>
   11490:	90 10 00 10 	mov  %l0, %o0
   11494:	90 10 00 10 	mov  %l0, %o0
   11498:	92 10 00 18 	mov  %i0, %o1
   1149c:	94 10 00 19 	mov  %i1, %o2
   114a0:	96 10 20 00 	clr  %o3
   114a4:	7f ff fd 9e 	call  10b1c <parse_switches>
   114a8:	98 10 20 01 	mov  1, %o4
   114ac:	90 10 00 10 	mov  %l0, %o0
   114b0:	40 00 11 ab 	call  15b5c <jpeg_stdio_dest>
   114b4:	92 10 00 13 	mov  %l3, %o1
   114b8:	90 10 00 10 	mov  %l0, %o0
   114bc:	40 00 0d e7 	call  14c58 <jpeg_start_compress>
   114c0:	92 10 20 01 	mov  1, %o1
   114c4:	c4 07 bf 68 	ld  [ %fp + -152 ], %g2
   114c8:	c2 07 be ac 	ld  [ %fp + -340 ], %g1
   114cc:	80 a0 80 01 	cmp  %g2, %g1
   114d0:	1a 80 00 0f 	bcc  1150c <main+0x234>
   114d4:	a0 07 be 90 	add  %fp, -368, %l0
   114d8:	c2 04 60 04 	ld  [ %l1 + 4 ], %g1
   114dc:	90 10 00 10 	mov  %l0, %o0
   114e0:	9f c0 40 00 	call  %g1
   114e4:	92 10 00 11 	mov  %l1, %o1
   114e8:	94 10 00 08 	mov  %o0, %o2
   114ec:	90 10 00 10 	mov  %l0, %o0
   114f0:	40 00 0e 04 	call  14d00 <jpeg_write_scanlines>
   114f4:	d2 04 60 10 	ld  [ %l1 + 0x10 ], %o1
   114f8:	c4 07 bf 68 	ld  [ %fp + -152 ], %g2
   114fc:	c2 07 be ac 	ld  [ %fp + -340 ], %g1
   11500:	80 a0 80 01 	cmp  %g2, %g1
   11504:	2a bf ff f6 	bcs,a   114dc <main+0x204>
   11508:	c2 04 60 04 	ld  [ %l1 + 4 ], %g1
   1150c:	a0 07 be 90 	add  %fp, -368, %l0
   11510:	c2 04 60 08 	ld  [ %l1 + 8 ], %g1
   11514:	90 10 00 10 	mov  %l0, %o0
   11518:	9f c0 40 00 	call  %g1
   1151c:	92 10 00 11 	mov  %l1, %o1
   11520:	40 00 0d 24 	call  149b0 <jpeg_finish_compress>
   11524:	90 10 00 10 	mov  %l0, %o0
   11528:	40 00 0c f8 	call  14908 <jpeg_destroy_compress>
   1152c:	90 10 00 10 	mov  %l0, %o0
   11530:	03 00 00 cd 	sethi  %hi(0x33400), %g1
   11534:	c2 00 63 e4 	ld  [ %g1 + 0x3e4 ], %g1	! 337e4 <stdin@@GLIBC_2.0>
   11538:	80 a4 80 01 	cmp  %l2, %g1
   1153c:	02 80 00 05 	be  11550 <main+0x278>
   11540:	03 00 00 cd 	sethi  %hi(0x33400), %g1
   11544:	40 00 88 8b 	call  33770 <fclose@plt>
   11548:	90 10 00 12 	mov  %l2, %o0
   1154c:	03 00 00 cd 	sethi  %hi(0x33400), %g1
   11550:	c2 00 63 dc 	ld  [ %g1 + 0x3dc ], %g1	! 337dc <__bss_start>
   11554:	80 a4 c0 01 	cmp  %l3, %g1
   11558:	02 80 00 05 	be  1156c <main+0x294>
   1155c:	c2 07 be 74 	ld  [ %fp + -396 ], %g1
   11560:	40 00 88 84 	call  33770 <fclose@plt>
   11564:	90 10 00 13 	mov  %l3, %o0
   11568:	c2 07 be 74 	ld  [ %fp + -396 ], %g1
   1156c:	80 a0 00 01 	cmp  %g0, %g1
   11570:	90 40 20 00 	addx  %g0, 0, %o0
   11574:	40 00 88 82 	call  3377c <exit@plt>
   11578:	90 02 00 08 	add  %o0, %o0, %o0
   1157c:	01 00 00 00 	nop 

00011580 <pbm_getc>:
   11580:	9d e3 bf 98 	save  %sp, -104, %sp
   11584:	40 00 88 8d 	call  337b8 <_IO_getc@plt>
   11588:	90 10 00 18 	mov  %i0, %o0
   1158c:	80 a2 20 23 	cmp  %o0, 0x23
   11590:	12 80 00 0d 	bne  115c4 <pbm_getc+0x44>
   11594:	01 00 00 00 	nop 
   11598:	40 00 88 88 	call  337b8 <_IO_getc@plt>
   1159c:	90 10 00 18 	mov  %i0, %o0
   115a0:	82 1a 20 0a 	xor  %o0, 0xa, %g1
   115a4:	80 a0 00 01 	cmp  %g0, %g1
   115a8:	84 40 20 00 	addx  %g0, 0, %g2
   115ac:	82 38 00 08 	xnor  %g0, %o0, %g1
   115b0:	80 a0 00 01 	cmp  %g0, %g1
   115b4:	82 40 20 00 	addx  %g0, 0, %g1
   115b8:	80 88 80 01 	btst  %g2, %g1
   115bc:	12 bf ff f7 	bne  11598 <pbm_getc+0x18>
   115c0:	01 00 00 00 	nop 
   115c4:	81 c7 e0 08 	ret 
   115c8:	91 e8 00 08 	restore  %g0, %o0, %o0

000115cc <read_pbm_integer>:
   115cc:	9d e3 bf 98 	save  %sp, -104, %sp
   115d0:	a2 10 20 2a 	mov  0x2a, %l1
   115d4:	7f ff ff eb 	call  11580 <pbm_getc>
   115d8:	90 10 00 19 	mov  %i1, %o0
   115dc:	80 a2 3f ff 	cmp  %o0, -1
   115e0:	12 80 00 08 	bne  11600 <read_pbm_integer+0x34>
   115e4:	a0 10 00 08 	mov  %o0, %l0
   115e8:	c2 06 00 00 	ld  [ %i0 ], %g1
   115ec:	e2 20 60 14 	st  %l1, [ %g1 + 0x14 ]
   115f0:	c2 06 00 00 	ld  [ %i0 ], %g1
   115f4:	c2 00 40 00 	ld  [ %g1 ], %g1
   115f8:	9f c0 40 00 	call  %g1
   115fc:	90 10 00 18 	mov  %i0, %o0
   11600:	82 1c 20 20 	xor  %l0, 0x20, %g1
   11604:	80 a0 00 01 	cmp  %g0, %g1
   11608:	84 60 3f ff 	subx  %g0, -1, %g2
   1160c:	82 1c 20 09 	xor  %l0, 9, %g1
   11610:	80 a0 00 01 	cmp  %g0, %g1
   11614:	82 60 3f ff 	subx  %g0, -1, %g1
   11618:	80 90 80 01 	orcc  %g2, %g1, %g0
   1161c:	12 bf ff ee 	bne  115d4 <read_pbm_integer+0x8>
   11620:	82 1c 20 0a 	xor  %l0, 0xa, %g1
   11624:	80 a0 00 01 	cmp  %g0, %g1
   11628:	84 60 3f ff 	subx  %g0, -1, %g2
   1162c:	82 1c 20 0d 	xor  %l0, 0xd, %g1
   11630:	80 a0 00 01 	cmp  %g0, %g1
   11634:	82 60 3f ff 	subx  %g0, -1, %g1
   11638:	80 90 80 01 	orcc  %g2, %g1, %g0
   1163c:	12 bf ff e6 	bne  115d4 <read_pbm_integer+0x8>
   11640:	82 04 3f d0 	add  %l0, -48, %g1
   11644:	80 a0 60 09 	cmp  %g1, 9
   11648:	28 80 00 0f 	bleu,a   11684 <read_pbm_integer+0xb8>
   1164c:	b0 04 3f d0 	add  %l0, -48, %i0
   11650:	c4 06 00 00 	ld  [ %i0 ], %g2
   11654:	82 10 24 02 	mov  0x402, %g1
   11658:	c2 20 a0 14 	st  %g1, [ %g2 + 0x14 ]
   1165c:	c2 06 00 00 	ld  [ %i0 ], %g1
   11660:	c2 00 40 00 	ld  [ %g1 ], %g1
   11664:	9f c0 40 00 	call  %g1
   11668:	90 10 00 18 	mov  %i0, %o0
   1166c:	10 80 00 06 	b  11684 <read_pbm_integer+0xb8>
   11670:	b0 04 3f d0 	add  %l0, -48, %i0
   11674:	82 00 40 18 	add  %g1, %i0, %g1
   11678:	b0 00 40 01 	add  %g1, %g1, %i0
   1167c:	82 04 00 18 	add  %l0, %i0, %g1
   11680:	b0 00 7f d0 	add  %g1, -48, %i0
   11684:	7f ff ff bf 	call  11580 <pbm_getc>
   11688:	90 10 00 19 	mov  %i1, %o0
   1168c:	80 a2 20 2f 	cmp  %o0, 0x2f
   11690:	04 80 00 05 	ble  116a4 <read_pbm_integer+0xd8>
   11694:	a0 10 00 08 	mov  %o0, %l0
   11698:	80 a2 20 39 	cmp  %o0, 0x39
   1169c:	04 bf ff f6 	ble  11674 <read_pbm_integer+0xa8>
   116a0:	83 2e 20 02 	sll  %i0, 2, %g1
   116a4:	81 c7 e0 08 	ret 
   116a8:	81 e8 00 00 	restore 

000116ac <get_text_gray_row>:
   116ac:	9d e3 bf 98 	save  %sp, -104, %sp
   116b0:	e6 06 60 0c 	ld  [ %i1 + 0xc ], %l3
   116b4:	e4 06 60 24 	ld  [ %i1 + 0x24 ], %l2
   116b8:	c2 06 60 10 	ld  [ %i1 + 0x10 ], %g1
   116bc:	f2 06 20 18 	ld  [ %i0 + 0x18 ], %i1
   116c0:	80 a6 60 00 	cmp  %i1, 0
   116c4:	02 80 00 0b 	be  116f0 <get_text_gray_row+0x44>
   116c8:	e2 00 40 00 	ld  [ %g1 ], %l1
   116cc:	a0 10 00 11 	mov  %l1, %l0
   116d0:	a2 04 60 01 	inc  %l1
   116d4:	90 10 00 18 	mov  %i0, %o0
   116d8:	7f ff ff bd 	call  115cc <read_pbm_integer>
   116dc:	92 10 00 13 	mov  %l3, %o1
   116e0:	c2 0a 00 12 	ldub  [ %o0 + %l2 ], %g1
   116e4:	b2 86 7f ff 	addcc  %i1, -1, %i1
   116e8:	12 bf ff f9 	bne  116cc <get_text_gray_row+0x20>
   116ec:	c2 2c 00 00 	stb  %g1, [ %l0 ]
   116f0:	81 c7 e0 08 	ret 
   116f4:	91 e8 20 01 	restore  %g0, 1, %o0

000116f8 <get_text_rgb_row>:
   116f8:	9d e3 bf 98 	save  %sp, -104, %sp
   116fc:	e6 06 60 0c 	ld  [ %i1 + 0xc ], %l3
   11700:	e4 06 60 24 	ld  [ %i1 + 0x24 ], %l2
   11704:	c2 06 60 10 	ld  [ %i1 + 0x10 ], %g1
   11708:	e2 06 20 18 	ld  [ %i0 + 0x18 ], %l1
   1170c:	80 a4 60 00 	cmp  %l1, 0
   11710:	02 80 00 19 	be  11774 <get_text_rgb_row+0x7c>
   11714:	f2 00 40 00 	ld  [ %g1 ], %i1
   11718:	a0 10 00 19 	mov  %i1, %l0
   1171c:	b2 06 60 01 	inc  %i1
   11720:	90 10 00 18 	mov  %i0, %o0
   11724:	7f ff ff aa 	call  115cc <read_pbm_integer>
   11728:	92 10 00 13 	mov  %l3, %o1
   1172c:	c2 0a 00 12 	ldub  [ %o0 + %l2 ], %g1
   11730:	c2 2c 00 00 	stb  %g1, [ %l0 ]
   11734:	a0 10 00 19 	mov  %i1, %l0
   11738:	b2 06 60 01 	inc  %i1
   1173c:	90 10 00 18 	mov  %i0, %o0
   11740:	7f ff ff a3 	call  115cc <read_pbm_integer>
   11744:	92 10 00 13 	mov  %l3, %o1
   11748:	c2 0a 00 12 	ldub  [ %o0 + %l2 ], %g1
   1174c:	c2 2c 00 00 	stb  %g1, [ %l0 ]
   11750:	a0 10 00 19 	mov  %i1, %l0
   11754:	b2 06 60 01 	inc  %i1
   11758:	90 10 00 18 	mov  %i0, %o0
   1175c:	7f ff ff 9c 	call  115cc <read_pbm_integer>
   11760:	92 10 00 13 	mov  %l3, %o1
   11764:	c2 0a 00 12 	ldub  [ %o0 + %l2 ], %g1
   11768:	a2 84 7f ff 	addcc  %l1, -1, %l1
   1176c:	12 bf ff eb 	bne  11718 <get_text_rgb_row+0x20>
   11770:	c2 2c 00 00 	stb  %g1, [ %l0 ]
   11774:	81 c7 e0 08 	ret 
   11778:	91 e8 20 01 	restore  %g0, 1, %o0

0001177c <get_scaled_gray_row>:
   1177c:	9d e3 bf 98 	save  %sp, -104, %sp
   11780:	e0 06 60 24 	ld  [ %i1 + 0x24 ], %l0
   11784:	d0 06 60 18 	ld  [ %i1 + 0x18 ], %o0
   11788:	92 10 20 01 	mov  1, %o1
   1178c:	d4 06 60 20 	ld  [ %i1 + 0x20 ], %o2
   11790:	40 00 87 e6 	call  33728 <fread@plt>
   11794:	d6 06 60 0c 	ld  [ %i1 + 0xc ], %o3
   11798:	c2 06 60 20 	ld  [ %i1 + 0x20 ], %g1
   1179c:	80 a2 00 01 	cmp  %o0, %g1
   117a0:	02 80 00 08 	be  117c0 <get_scaled_gray_row+0x44>
   117a4:	82 10 20 2a 	mov  0x2a, %g1
   117a8:	c4 06 00 00 	ld  [ %i0 ], %g2
   117ac:	c2 20 a0 14 	st  %g1, [ %g2 + 0x14 ]
   117b0:	c2 06 00 00 	ld  [ %i0 ], %g1
   117b4:	c2 00 40 00 	ld  [ %g1 ], %g1
   117b8:	9f c0 40 00 	call  %g1
   117bc:	90 10 00 18 	mov  %i0, %o0
   117c0:	c2 06 60 10 	ld  [ %i1 + 0x10 ], %g1
   117c4:	c6 00 40 00 	ld  [ %g1 ], %g3
   117c8:	c4 06 20 18 	ld  [ %i0 + 0x18 ], %g2
   117cc:	80 a0 a0 00 	cmp  %g2, 0
   117d0:	02 80 00 09 	be  117f4 <get_scaled_gray_row+0x78>
   117d4:	f2 06 60 18 	ld  [ %i1 + 0x18 ], %i1
   117d8:	c2 0e 40 00 	ldub  [ %i1 ], %g1
   117dc:	b2 06 60 01 	inc  %i1
   117e0:	c2 08 40 10 	ldub  [ %g1 + %l0 ], %g1
   117e4:	c2 28 c0 00 	stb  %g1, [ %g3 ]
   117e8:	84 80 bf ff 	addcc  %g2, -1, %g2
   117ec:	12 bf ff fb 	bne  117d8 <get_scaled_gray_row+0x5c>
   117f0:	86 00 e0 01 	inc  %g3
   117f4:	81 c7 e0 08 	ret 
   117f8:	91 e8 20 01 	restore  %g0, 1, %o0

000117fc <get_scaled_rgb_row>:
   117fc:	9d e3 bf 98 	save  %sp, -104, %sp
   11800:	e0 06 60 24 	ld  [ %i1 + 0x24 ], %l0
   11804:	d0 06 60 18 	ld  [ %i1 + 0x18 ], %o0
   11808:	92 10 20 01 	mov  1, %o1
   1180c:	d4 06 60 20 	ld  [ %i1 + 0x20 ], %o2
   11810:	40 00 87 c6 	call  33728 <fread@plt>
   11814:	d6 06 60 0c 	ld  [ %i1 + 0xc ], %o3
   11818:	c2 06 60 20 	ld  [ %i1 + 0x20 ], %g1
   1181c:	80 a2 00 01 	cmp  %o0, %g1
   11820:	02 80 00 08 	be  11840 <get_scaled_rgb_row+0x44>
   11824:	82 10 20 2a 	mov  0x2a, %g1
   11828:	c4 06 00 00 	ld  [ %i0 ], %g2
   1182c:	c2 20 a0 14 	st  %g1, [ %g2 + 0x14 ]
   11830:	c2 06 00 00 	ld  [ %i0 ], %g1
   11834:	c2 00 40 00 	ld  [ %g1 ], %g1
   11838:	9f c0 40 00 	call  %g1
   1183c:	90 10 00 18 	mov  %i0, %o0
   11840:	c2 06 60 10 	ld  [ %i1 + 0x10 ], %g1
   11844:	c6 00 40 00 	ld  [ %g1 ], %g3
   11848:	c4 06 20 18 	ld  [ %i0 + 0x18 ], %g2
   1184c:	80 a0 a0 00 	cmp  %g2, 0
   11850:	02 80 00 13 	be  1189c <get_scaled_rgb_row+0xa0>
   11854:	f2 06 60 18 	ld  [ %i1 + 0x18 ], %i1
   11858:	c2 0e 40 00 	ldub  [ %i1 ], %g1
   1185c:	b2 06 60 01 	inc  %i1
   11860:	c2 08 40 10 	ldub  [ %g1 + %l0 ], %g1
   11864:	c2 28 c0 00 	stb  %g1, [ %g3 ]
   11868:	86 00 e0 01 	inc  %g3
   1186c:	c2 0e 40 00 	ldub  [ %i1 ], %g1
   11870:	b2 06 60 01 	inc  %i1
   11874:	c2 08 40 10 	ldub  [ %g1 + %l0 ], %g1
   11878:	c2 28 c0 00 	stb  %g1, [ %g3 ]
   1187c:	86 00 e0 01 	inc  %g3
   11880:	c2 0e 40 00 	ldub  [ %i1 ], %g1
   11884:	b2 06 60 01 	inc  %i1
   11888:	c2 08 40 10 	ldub  [ %g1 + %l0 ], %g1
   1188c:	c2 28 c0 00 	stb  %g1, [ %g3 ]
   11890:	84 80 bf ff 	addcc  %g2, -1, %g2
   11894:	12 bf ff f1 	bne  11858 <get_scaled_rgb_row+0x5c>
   11898:	86 00 e0 01 	inc  %g3
   1189c:	81 c7 e0 08 	ret 
   118a0:	91 e8 20 01 	restore  %g0, 1, %o0

000118a4 <get_raw_row>:
   118a4:	9d e3 bf 98 	save  %sp, -104, %sp
   118a8:	d0 06 60 18 	ld  [ %i1 + 0x18 ], %o0
   118ac:	92 10 20 01 	mov  1, %o1
   118b0:	d4 06 60 20 	ld  [ %i1 + 0x20 ], %o2
   118b4:	40 00 87 9d 	call  33728 <fread@plt>
   118b8:	d6 06 60 0c 	ld  [ %i1 + 0xc ], %o3
   118bc:	c2 06 60 20 	ld  [ %i1 + 0x20 ], %g1
   118c0:	80 a2 00 01 	cmp  %o0, %g1
   118c4:	02 80 00 08 	be  118e4 <get_raw_row+0x40>
   118c8:	82 10 20 2a 	mov  0x2a, %g1
   118cc:	c4 06 00 00 	ld  [ %i0 ], %g2
   118d0:	c2 20 a0 14 	st  %g1, [ %g2 + 0x14 ]
   118d4:	c2 06 00 00 	ld  [ %i0 ], %g1
   118d8:	c2 00 40 00 	ld  [ %g1 ], %g1
   118dc:	9f c0 40 00 	call  %g1
   118e0:	90 10 00 18 	mov  %i0, %o0
   118e4:	81 c7 e0 08 	ret 
   118e8:	91 e8 20 01 	restore  %g0, 1, %o0

000118ec <get_word_gray_row>:
   118ec:	9d e3 bf 98 	save  %sp, -104, %sp
   118f0:	e0 06 60 24 	ld  [ %i1 + 0x24 ], %l0
   118f4:	d0 06 60 18 	ld  [ %i1 + 0x18 ], %o0
   118f8:	92 10 20 01 	mov  1, %o1
   118fc:	d4 06 60 20 	ld  [ %i1 + 0x20 ], %o2
   11900:	40 00 87 8a 	call  33728 <fread@plt>
   11904:	d6 06 60 0c 	ld  [ %i1 + 0xc ], %o3
   11908:	c2 06 60 20 	ld  [ %i1 + 0x20 ], %g1
   1190c:	80 a2 00 01 	cmp  %o0, %g1
   11910:	02 80 00 08 	be  11930 <get_word_gray_row+0x44>
   11914:	82 10 20 2a 	mov  0x2a, %g1
   11918:	c4 06 00 00 	ld  [ %i0 ], %g2
   1191c:	c2 20 a0 14 	st  %g1, [ %g2 + 0x14 ]
   11920:	c2 06 00 00 	ld  [ %i0 ], %g1
   11924:	c2 00 40 00 	ld  [ %g1 ], %g1
   11928:	9f c0 40 00 	call  %g1
   1192c:	90 10 00 18 	mov  %i0, %o0
   11930:	c2 06 60 10 	ld  [ %i1 + 0x10 ], %g1
   11934:	c6 00 40 00 	ld  [ %g1 ], %g3
   11938:	d0 06 20 18 	ld  [ %i0 + 0x18 ], %o0
   1193c:	80 a2 20 00 	cmp  %o0, 0
   11940:	02 80 00 0d 	be  11974 <get_word_gray_row+0x88>
   11944:	f2 06 60 18 	ld  [ %i1 + 0x18 ], %i1
   11948:	c2 0e 40 00 	ldub  [ %i1 ], %g1
   1194c:	b2 06 60 01 	inc  %i1
   11950:	c4 0e 40 00 	ldub  [ %i1 ], %g2
   11954:	85 28 a0 08 	sll  %g2, 8, %g2
   11958:	82 10 40 02 	or  %g1, %g2, %g1
   1195c:	b2 06 60 01 	inc  %i1
   11960:	c2 0c 00 01 	ldub  [ %l0 + %g1 ], %g1
   11964:	c2 28 c0 00 	stb  %g1, [ %g3 ]
   11968:	90 82 3f ff 	addcc  %o0, -1, %o0
   1196c:	12 bf ff f7 	bne  11948 <get_word_gray_row+0x5c>
   11970:	86 00 e0 01 	inc  %g3
   11974:	81 c7 e0 08 	ret 
   11978:	91 e8 20 01 	restore  %g0, 1, %o0

0001197c <get_word_rgb_row>:
   1197c:	9d e3 bf 98 	save  %sp, -104, %sp
   11980:	e0 06 60 24 	ld  [ %i1 + 0x24 ], %l0
   11984:	d0 06 60 18 	ld  [ %i1 + 0x18 ], %o0
   11988:	92 10 20 01 	mov  1, %o1
   1198c:	d4 06 60 20 	ld  [ %i1 + 0x20 ], %o2
   11990:	40 00 87 66 	call  33728 <fread@plt>
   11994:	d6 06 60 0c 	ld  [ %i1 + 0xc ], %o3
   11998:	c2 06 60 20 	ld  [ %i1 + 0x20 ], %g1
   1199c:	80 a2 00 01 	cmp  %o0, %g1
   119a0:	02 80 00 08 	be  119c0 <get_word_rgb_row+0x44>
   119a4:	82 10 20 2a 	mov  0x2a, %g1
   119a8:	c4 06 00 00 	ld  [ %i0 ], %g2
   119ac:	c2 20 a0 14 	st  %g1, [ %g2 + 0x14 ]
   119b0:	c2 06 00 00 	ld  [ %i0 ], %g1
   119b4:	c2 00 40 00 	ld  [ %g1 ], %g1
   119b8:	9f c0 40 00 	call  %g1
   119bc:	90 10 00 18 	mov  %i0, %o0
   119c0:	c2 06 60 10 	ld  [ %i1 + 0x10 ], %g1
   119c4:	c8 00 40 00 	ld  [ %g1 ], %g4
   119c8:	c4 06 20 18 	ld  [ %i0 + 0x18 ], %g2
   119cc:	80 a0 a0 00 	cmp  %g2, 0
   119d0:	02 80 00 1f 	be  11a4c <get_word_rgb_row+0xd0>
   119d4:	f2 06 60 18 	ld  [ %i1 + 0x18 ], %i1
   119d8:	c6 0e 40 00 	ldub  [ %i1 ], %g3
   119dc:	b2 06 60 01 	inc  %i1
   119e0:	c2 0e 40 00 	ldub  [ %i1 ], %g1
   119e4:	83 28 60 08 	sll  %g1, 8, %g1
   119e8:	86 10 c0 01 	or  %g3, %g1, %g3
   119ec:	b2 06 60 01 	inc  %i1
   119f0:	c2 0c 00 03 	ldub  [ %l0 + %g3 ], %g1
   119f4:	c2 29 00 00 	stb  %g1, [ %g4 ]
   119f8:	88 01 20 01 	inc  %g4
   119fc:	c6 0e 40 00 	ldub  [ %i1 ], %g3
   11a00:	b2 06 60 01 	inc  %i1
   11a04:	c2 0e 40 00 	ldub  [ %i1 ], %g1
   11a08:	83 28 60 08 	sll  %g1, 8, %g1
   11a0c:	86 10 c0 01 	or  %g3, %g1, %g3
   11a10:	b2 06 60 01 	inc  %i1
   11a14:	c2 0c 00 03 	ldub  [ %l0 + %g3 ], %g1
   11a18:	c2 29 00 00 	stb  %g1, [ %g4 ]
   11a1c:	88 01 20 01 	inc  %g4
   11a20:	c6 0e 40 00 	ldub  [ %i1 ], %g3
   11a24:	b2 06 60 01 	inc  %i1
   11a28:	c2 0e 40 00 	ldub  [ %i1 ], %g1
   11a2c:	83 28 60 08 	sll  %g1, 8, %g1
   11a30:	86 10 c0 01 	or  %g3, %g1, %g3
   11a34:	b2 06 60 01 	inc  %i1
   11a38:	c2 0c 00 03 	ldub  [ %l0 + %g3 ], %g1
   11a3c:	c2 29 00 00 	stb  %g1, [ %g4 ]
   11a40:	84 80 bf ff 	addcc  %g2, -1, %g2
   11a44:	12 bf ff e5 	bne  119d8 <get_word_rgb_row+0x5c>
   11a48:	88 01 20 01 	inc  %g4
   11a4c:	81 c7 e0 08 	ret 
   11a50:	91 e8 20 01 	restore  %g0, 1, %o0

00011a54 <start_input_ppm>:
   11a54:	9d e3 bf 98 	save  %sp, -104, %sp
   11a58:	40 00 87 58 	call  337b8 <_IO_getc@plt>
   11a5c:	d0 06 60 0c 	ld  [ %i1 + 0xc ], %o0
   11a60:	80 a2 20 50 	cmp  %o0, 0x50
   11a64:	02 80 00 08 	be  11a84 <start_input_ppm+0x30>
   11a68:	82 10 24 03 	mov  0x403, %g1
   11a6c:	c4 06 00 00 	ld  [ %i0 ], %g2
   11a70:	c2 20 a0 14 	st  %g1, [ %g2 + 0x14 ]
   11a74:	c2 06 00 00 	ld  [ %i0 ], %g1
   11a78:	c2 00 40 00 	ld  [ %g1 ], %g1
   11a7c:	9f c0 40 00 	call  %g1
   11a80:	90 10 00 18 	mov  %i0, %o0
   11a84:	40 00 87 4d 	call  337b8 <_IO_getc@plt>
   11a88:	d0 06 60 0c 	ld  [ %i1 + 0xc ], %o0
   11a8c:	a0 10 00 08 	mov  %o0, %l0
   11a90:	90 10 00 18 	mov  %i0, %o0
   11a94:	7f ff fe ce 	call  115cc <read_pbm_integer>
   11a98:	d2 06 60 0c 	ld  [ %i1 + 0xc ], %o1
   11a9c:	a6 10 00 08 	mov  %o0, %l3
   11aa0:	90 10 00 18 	mov  %i0, %o0
   11aa4:	7f ff fe ca 	call  115cc <read_pbm_integer>
   11aa8:	d2 06 60 0c 	ld  [ %i1 + 0xc ], %o1
   11aac:	a4 10 00 08 	mov  %o0, %l2
   11ab0:	90 10 00 18 	mov  %i0, %o0
   11ab4:	7f ff fe c6 	call  115cc <read_pbm_integer>
   11ab8:	d2 06 60 0c 	ld  [ %i1 + 0xc ], %o1
   11abc:	80 a0 00 13 	cmp  %g0, %l3
   11ac0:	84 60 3f ff 	subx  %g0, -1, %g2
   11ac4:	80 a0 00 12 	cmp  %g0, %l2
   11ac8:	82 60 3f ff 	subx  %g0, -1, %g1
   11acc:	80 90 80 01 	orcc  %g2, %g1, %g0
   11ad0:	12 80 00 05 	bne  11ae4 <start_input_ppm+0x90>
   11ad4:	a2 10 00 08 	mov  %o0, %l1
   11ad8:	80 a2 20 00 	cmp  %o0, 0
   11adc:	12 80 00 0a 	bne  11b04 <start_input_ppm+0xb0>
   11ae0:	82 10 20 08 	mov  8, %g1
   11ae4:	c4 06 00 00 	ld  [ %i0 ], %g2
   11ae8:	82 10 24 03 	mov  0x403, %g1
   11aec:	c2 20 a0 14 	st  %g1, [ %g2 + 0x14 ]
   11af0:	c2 06 00 00 	ld  [ %i0 ], %g1
   11af4:	c2 00 40 00 	ld  [ %g1 ], %g1
   11af8:	9f c0 40 00 	call  %g1
   11afc:	90 10 00 18 	mov  %i0, %o0
   11b00:	82 10 20 08 	mov  8, %g1
   11b04:	c2 26 20 30 	st  %g1, [ %i0 + 0x30 ]
   11b08:	e6 26 20 18 	st  %l3, [ %i0 + 0x18 ]
   11b0c:	e4 26 20 1c 	st  %l2, [ %i0 + 0x1c ]
   11b10:	a8 10 20 01 	mov  1, %l4
   11b14:	aa 10 20 00 	clr  %l5
   11b18:	80 a4 20 33 	cmp  %l0, 0x33
   11b1c:	02 80 00 23 	be  11ba8 <start_input_ppm+0x154>
   11b20:	ac 10 20 01 	mov  1, %l6
   11b24:	80 a4 20 33 	cmp  %l0, 0x33
   11b28:	14 80 00 07 	bg  11b44 <start_input_ppm+0xf0>
   11b2c:	80 a4 20 35 	cmp  %l0, 0x35
   11b30:	80 a4 20 32 	cmp  %l0, 0x32
   11b34:	02 80 00 0a 	be  11b5c <start_input_ppm+0x108>
   11b38:	82 10 20 01 	mov  1, %g1
   11b3c:	10 80 00 70 	b  11cfc <start_input_ppm+0x2a8>
   11b40:	c4 06 00 00 	ld  [ %i0 ], %g2
   11b44:	02 80 00 2e 	be  11bfc <start_input_ppm+0x1a8>
   11b48:	80 a4 20 36 	cmp  %l0, 0x36
   11b4c:	02 80 00 4c 	be  11c7c <start_input_ppm+0x228>
   11b50:	82 10 20 03 	mov  3, %g1
   11b54:	10 80 00 6a 	b  11cfc <start_input_ppm+0x2a8>
   11b58:	c4 06 00 00 	ld  [ %i0 ], %g2
   11b5c:	c2 26 20 20 	st  %g1, [ %i0 + 0x20 ]
   11b60:	c2 26 20 24 	st  %g1, [ %i0 + 0x24 ]
   11b64:	c4 06 00 00 	ld  [ %i0 ], %g2
   11b68:	82 10 24 05 	mov  0x405, %g1
   11b6c:	c2 20 a0 14 	st  %g1, [ %g2 + 0x14 ]
   11b70:	c2 06 00 00 	ld  [ %i0 ], %g1
   11b74:	e6 20 60 18 	st  %l3, [ %g1 + 0x18 ]
   11b78:	c2 06 00 00 	ld  [ %i0 ], %g1
   11b7c:	e4 20 60 1c 	st  %l2, [ %g1 + 0x1c ]
   11b80:	c2 06 00 00 	ld  [ %i0 ], %g1
   11b84:	c2 00 60 04 	ld  [ %g1 + 4 ], %g1
   11b88:	90 10 00 18 	mov  %i0, %o0
   11b8c:	9f c0 40 00 	call  %g1
   11b90:	92 10 20 01 	mov  1, %o1
   11b94:	03 00 00 45 	sethi  %hi(0x11400), %g1
   11b98:	82 10 62 ac 	or  %g1, 0x2ac, %g1	! 116ac <get_text_gray_row>
   11b9c:	c2 26 60 04 	st  %g1, [ %i1 + 4 ]
   11ba0:	10 80 00 5d 	b  11d14 <start_input_ppm+0x2c0>
   11ba4:	a8 10 20 00 	clr  %l4
   11ba8:	82 10 20 03 	mov  3, %g1
   11bac:	c2 26 20 20 	st  %g1, [ %i0 + 0x20 ]
   11bb0:	82 10 20 02 	mov  2, %g1
   11bb4:	c2 26 20 24 	st  %g1, [ %i0 + 0x24 ]
   11bb8:	c4 06 00 00 	ld  [ %i0 ], %g2
   11bbc:	82 10 24 07 	mov  0x407, %g1
   11bc0:	c2 20 a0 14 	st  %g1, [ %g2 + 0x14 ]
   11bc4:	c2 06 00 00 	ld  [ %i0 ], %g1
   11bc8:	e6 20 60 18 	st  %l3, [ %g1 + 0x18 ]
   11bcc:	c2 06 00 00 	ld  [ %i0 ], %g1
   11bd0:	e4 20 60 1c 	st  %l2, [ %g1 + 0x1c ]
   11bd4:	c2 06 00 00 	ld  [ %i0 ], %g1
   11bd8:	c2 00 60 04 	ld  [ %g1 + 4 ], %g1
   11bdc:	90 10 00 18 	mov  %i0, %o0
   11be0:	9f c0 40 00 	call  %g1
   11be4:	92 10 20 01 	mov  1, %o1
   11be8:	03 00 00 45 	sethi  %hi(0x11400), %g1
   11bec:	82 10 62 f8 	or  %g1, 0x2f8, %g1	! 116f8 <get_text_rgb_row>
   11bf0:	c2 26 60 04 	st  %g1, [ %i1 + 4 ]
   11bf4:	10 80 00 48 	b  11d14 <start_input_ppm+0x2c0>
   11bf8:	a8 10 20 00 	clr  %l4
   11bfc:	82 10 20 01 	mov  1, %g1
   11c00:	c2 26 20 20 	st  %g1, [ %i0 + 0x20 ]
   11c04:	c2 26 20 24 	st  %g1, [ %i0 + 0x24 ]
   11c08:	c4 06 00 00 	ld  [ %i0 ], %g2
   11c0c:	82 10 24 04 	mov  0x404, %g1
   11c10:	c2 20 a0 14 	st  %g1, [ %g2 + 0x14 ]
   11c14:	c2 06 00 00 	ld  [ %i0 ], %g1
   11c18:	e6 20 60 18 	st  %l3, [ %g1 + 0x18 ]
   11c1c:	c2 06 00 00 	ld  [ %i0 ], %g1
   11c20:	e4 20 60 1c 	st  %l2, [ %g1 + 0x1c ]
   11c24:	c2 06 00 00 	ld  [ %i0 ], %g1
   11c28:	c2 00 60 04 	ld  [ %g1 + 4 ], %g1
   11c2c:	90 10 00 18 	mov  %i0, %o0
   11c30:	9f c0 40 00 	call  %g1
   11c34:	92 10 20 01 	mov  1, %o1
   11c38:	80 a4 60 ff 	cmp  %l1, 0xff
   11c3c:	08 80 00 05 	bleu  11c50 <start_input_ppm+0x1fc>
   11c40:	03 00 00 46 	sethi  %hi(0x11800), %g1
   11c44:	82 10 60 ec 	or  %g1, 0xec, %g1	! 118ec <get_word_gray_row>
   11c48:	10 80 00 33 	b  11d14 <start_input_ppm+0x2c0>
   11c4c:	c2 26 60 04 	st  %g1, [ %i1 + 4 ]
   11c50:	12 80 00 08 	bne  11c70 <start_input_ppm+0x21c>
   11c54:	03 00 00 45 	sethi  %hi(0x11400), %g1
   11c58:	03 00 00 46 	sethi  %hi(0x11800), %g1
   11c5c:	82 10 60 a4 	or  %g1, 0xa4, %g1	! 118a4 <get_raw_row>
   11c60:	c2 26 60 04 	st  %g1, [ %i1 + 4 ]
   11c64:	aa 10 20 01 	mov  1, %l5
   11c68:	10 80 00 2b 	b  11d14 <start_input_ppm+0x2c0>
   11c6c:	ac 10 20 00 	clr  %l6
   11c70:	82 10 63 7c 	or  %g1, 0x37c, %g1
   11c74:	10 80 00 28 	b  11d14 <start_input_ppm+0x2c0>
   11c78:	c2 26 60 04 	st  %g1, [ %i1 + 4 ]
   11c7c:	c2 26 20 20 	st  %g1, [ %i0 + 0x20 ]
   11c80:	82 10 20 02 	mov  2, %g1
   11c84:	c2 26 20 24 	st  %g1, [ %i0 + 0x24 ]
   11c88:	c4 06 00 00 	ld  [ %i0 ], %g2
   11c8c:	82 10 24 06 	mov  0x406, %g1
   11c90:	c2 20 a0 14 	st  %g1, [ %g2 + 0x14 ]
   11c94:	c2 06 00 00 	ld  [ %i0 ], %g1
   11c98:	e6 20 60 18 	st  %l3, [ %g1 + 0x18 ]
   11c9c:	c2 06 00 00 	ld  [ %i0 ], %g1
   11ca0:	e4 20 60 1c 	st  %l2, [ %g1 + 0x1c ]
   11ca4:	c2 06 00 00 	ld  [ %i0 ], %g1
   11ca8:	c2 00 60 04 	ld  [ %g1 + 4 ], %g1
   11cac:	90 10 00 18 	mov  %i0, %o0
   11cb0:	9f c0 40 00 	call  %g1
   11cb4:	92 10 20 01 	mov  1, %o1
   11cb8:	80 a4 60 ff 	cmp  %l1, 0xff
   11cbc:	08 80 00 05 	bleu  11cd0 <start_input_ppm+0x27c>
   11cc0:	03 00 00 46 	sethi  %hi(0x11800), %g1
   11cc4:	82 10 61 7c 	or  %g1, 0x17c, %g1	! 1197c <get_word_rgb_row>
   11cc8:	10 80 00 13 	b  11d14 <start_input_ppm+0x2c0>
   11ccc:	c2 26 60 04 	st  %g1, [ %i1 + 4 ]
   11cd0:	12 80 00 08 	bne  11cf0 <start_input_ppm+0x29c>
   11cd4:	03 00 00 45 	sethi  %hi(0x11400), %g1
   11cd8:	03 00 00 46 	sethi  %hi(0x11800), %g1
   11cdc:	82 10 60 a4 	or  %g1, 0xa4, %g1	! 118a4 <get_raw_row>
   11ce0:	c2 26 60 04 	st  %g1, [ %i1 + 4 ]
   11ce4:	aa 10 20 01 	mov  1, %l5
   11ce8:	10 80 00 0b 	b  11d14 <start_input_ppm+0x2c0>
   11cec:	ac 10 20 00 	clr  %l6
   11cf0:	82 10 63 fc 	or  %g1, 0x3fc, %g1
   11cf4:	10 80 00 08 	b  11d14 <start_input_ppm+0x2c0>
   11cf8:	c2 26 60 04 	st  %g1, [ %i1 + 4 ]
   11cfc:	82 10 24 03 	mov  0x403, %g1
   11d00:	c2 20 a0 14 	st  %g1, [ %g2 + 0x14 ]
   11d04:	c2 06 00 00 	ld  [ %i0 ], %g1
   11d08:	c2 00 40 00 	ld  [ %g1 ], %g1
   11d0c:	9f c0 40 00 	call  %g1
   11d10:	90 10 00 18 	mov  %i0, %o0
   11d14:	80 a5 20 00 	cmp  %l4, 0
   11d18:	02 80 00 0f 	be  11d54 <start_input_ppm+0x300>
   11d1c:	80 a5 60 00 	cmp  %l5, 0
   11d20:	c2 06 20 20 	ld  [ %i0 + 0x20 ], %g1
   11d24:	80 a4 60 ff 	cmp  %l1, 0xff
   11d28:	08 80 00 03 	bleu  11d34 <start_input_ppm+0x2e0>
   11d2c:	94 5c c0 01 	smul  %l3, %g1, %o2
   11d30:	94 02 80 0a 	add  %o2, %o2, %o2
   11d34:	d4 26 60 20 	st  %o2, [ %i1 + 0x20 ]
   11d38:	c2 06 20 04 	ld  [ %i0 + 4 ], %g1
   11d3c:	c2 00 40 00 	ld  [ %g1 ], %g1
   11d40:	90 10 00 18 	mov  %i0, %o0
   11d44:	9f c0 40 00 	call  %g1
   11d48:	92 10 20 01 	mov  1, %o1
   11d4c:	d0 26 60 18 	st  %o0, [ %i1 + 0x18 ]
   11d50:	80 a5 60 00 	cmp  %l5, 0
   11d54:	22 80 00 09 	be,a   11d78 <start_input_ppm+0x324>
   11d58:	c2 06 20 04 	ld  [ %i0 + 4 ], %g1
   11d5c:	c2 06 60 18 	ld  [ %i1 + 0x18 ], %g1
   11d60:	c2 26 60 1c 	st  %g1, [ %i1 + 0x1c ]
   11d64:	82 06 60 1c 	add  %i1, 0x1c, %g1
   11d68:	c2 26 60 10 	st  %g1, [ %i1 + 0x10 ]
   11d6c:	82 10 20 01 	mov  1, %g1
   11d70:	10 80 00 0c 	b  11da0 <start_input_ppm+0x34c>
   11d74:	c2 26 60 14 	st  %g1, [ %i1 + 0x14 ]
   11d78:	d4 06 20 20 	ld  [ %i0 + 0x20 ], %o2
   11d7c:	c2 00 60 08 	ld  [ %g1 + 8 ], %g1
   11d80:	90 10 00 18 	mov  %i0, %o0
   11d84:	92 10 20 01 	mov  1, %o1
   11d88:	94 5c c0 0a 	smul  %l3, %o2, %o2
   11d8c:	9f c0 40 00 	call  %g1
   11d90:	96 10 20 01 	mov  1, %o3
   11d94:	d0 26 60 10 	st  %o0, [ %i1 + 0x10 ]
   11d98:	82 10 20 01 	mov  1, %g1
   11d9c:	c2 26 60 14 	st  %g1, [ %i1 + 0x14 ]
   11da0:	80 a5 a0 00 	cmp  %l6, 0
   11da4:	02 80 00 1a 	be  11e0c <start_input_ppm+0x3b8>
   11da8:	90 10 00 18 	mov  %i0, %o0
   11dac:	c2 06 20 04 	ld  [ %i0 + 4 ], %g1
   11db0:	c2 00 40 00 	ld  [ %g1 ], %g1
   11db4:	92 10 20 01 	mov  1, %o1
   11db8:	9f c0 40 00 	call  %g1
   11dbc:	94 04 60 01 	add  %l1, 1, %o2
   11dc0:	d0 26 60 24 	st  %o0, [ %i1 + 0x24 ]
   11dc4:	89 34 60 01 	srl  %l1, 1, %g4
   11dc8:	80 a4 60 00 	cmp  %l1, 0
   11dcc:	06 80 00 10 	bl  11e0c <start_input_ppm+0x3b8>
   11dd0:	86 10 20 00 	clr  %g3
   11dd4:	c4 06 60 24 	ld  [ %i1 + 0x24 ], %g2
   11dd8:	83 28 e0 08 	sll  %g3, 8, %g1
   11ddc:	82 20 40 03 	sub  %g1, %g3, %g1
   11de0:	82 00 40 04 	add  %g1, %g4, %g1
   11de4:	81 80 00 00 	mov  %g0, %y
   11de8:	01 00 00 00 	nop 
   11dec:	01 00 00 00 	nop 
   11df0:	01 00 00 00 	nop 
   11df4:	82 70 40 11 	udiv  %g1, %l1, %g1
   11df8:	c2 28 80 03 	stb  %g1, [ %g2 + %g3 ]
   11dfc:	86 00 e0 01 	inc  %g3
   11e00:	80 a4 40 03 	cmp  %l1, %g3
   11e04:	36 bf ff f5 	bge,a   11dd8 <start_input_ppm+0x384>
   11e08:	c4 06 60 24 	ld  [ %i1 + 0x24 ], %g2
   11e0c:	81 c7 e0 08 	ret 
   11e10:	81 e8 00 00 	restore 

00011e14 <finish_input_ppm>:
   11e14:	81 c3 e0 08 	retl 
   11e18:	01 00 00 00 	nop 

00011e1c <jinit_read_ppm>:
   11e1c:	9d e3 bf 98 	save  %sp, -104, %sp
   11e20:	90 10 00 18 	mov  %i0, %o0
   11e24:	c2 06 20 04 	ld  [ %i0 + 4 ], %g1
   11e28:	c2 00 40 00 	ld  [ %g1 ], %g1
   11e2c:	92 10 20 01 	mov  1, %o1
   11e30:	9f c0 40 00 	call  %g1
   11e34:	94 10 20 28 	mov  0x28, %o2
   11e38:	03 00 00 46 	sethi  %hi(0x11800), %g1
   11e3c:	82 10 62 54 	or  %g1, 0x254, %g1	! 11a54 <start_input_ppm>
   11e40:	c2 22 00 00 	st  %g1, [ %o0 ]
   11e44:	03 00 00 47 	sethi  %hi(0x11c00), %g1
   11e48:	82 10 62 14 	or  %g1, 0x214, %g1	! 11e14 <finish_input_ppm>
   11e4c:	c2 22 20 08 	st  %g1, [ %o0 + 8 ]
   11e50:	81 c7 e0 08 	ret 
   11e54:	91 e8 00 08 	restore  %g0, %o0, %o0

00011e58 <ReadByte>:
   11e58:	9d e3 bf 98 	save  %sp, -104, %sp
   11e5c:	a0 10 00 18 	mov  %i0, %l0
   11e60:	40 00 86 56 	call  337b8 <_IO_getc@plt>
   11e64:	d0 06 20 0c 	ld  [ %i0 + 0xc ], %o0
   11e68:	80 a2 3f ff 	cmp  %o0, -1
   11e6c:	12 80 00 0b 	bne  11e98 <ReadByte+0x40>
   11e70:	b0 10 00 08 	mov  %o0, %i0
   11e74:	c2 04 20 18 	ld  [ %l0 + 0x18 ], %g1
   11e78:	c4 00 40 00 	ld  [ %g1 ], %g2
   11e7c:	82 10 20 2a 	mov  0x2a, %g1
   11e80:	c2 20 a0 14 	st  %g1, [ %g2 + 0x14 ]
   11e84:	d0 04 20 18 	ld  [ %l0 + 0x18 ], %o0
   11e88:	c2 02 00 00 	ld  [ %o0 ], %g1
   11e8c:	c2 00 40 00 	ld  [ %g1 ], %g1
   11e90:	9f c0 40 00 	call  %g1
   11e94:	01 00 00 00 	nop 
   11e98:	81 c7 e0 08 	ret 
   11e9c:	81 e8 00 00 	restore 

00011ea0 <GetDataBlock>:
   11ea0:	9d e3 bf 98 	save  %sp, -104, %sp
   11ea4:	a0 10 00 18 	mov  %i0, %l0
   11ea8:	7f ff ff ec 	call  11e58 <ReadByte>
   11eac:	90 10 00 18 	mov  %i0, %o0
   11eb0:	80 a2 20 00 	cmp  %o0, 0
   11eb4:	04 80 00 13 	ble  11f00 <GetDataBlock+0x60>
   11eb8:	b0 10 00 08 	mov  %o0, %i0
   11ebc:	90 10 00 19 	mov  %i1, %o0
   11ec0:	92 10 20 01 	mov  1, %o1
   11ec4:	94 10 00 18 	mov  %i0, %o2
   11ec8:	40 00 86 18 	call  33728 <fread@plt>
   11ecc:	d6 04 20 0c 	ld  [ %l0 + 0xc ], %o3
   11ed0:	80 a2 00 18 	cmp  %o0, %i0
   11ed4:	02 80 00 0b 	be  11f00 <GetDataBlock+0x60>
   11ed8:	01 00 00 00 	nop 
   11edc:	c2 04 20 18 	ld  [ %l0 + 0x18 ], %g1
   11ee0:	c4 00 40 00 	ld  [ %g1 ], %g2
   11ee4:	82 10 20 2a 	mov  0x2a, %g1
   11ee8:	c2 20 a0 14 	st  %g1, [ %g2 + 0x14 ]
   11eec:	d0 04 20 18 	ld  [ %l0 + 0x18 ], %o0
   11ef0:	c2 02 00 00 	ld  [ %o0 ], %g1
   11ef4:	c2 00 40 00 	ld  [ %g1 ], %g1
   11ef8:	9f c0 40 00 	call  %g1
   11efc:	01 00 00 00 	nop 
   11f00:	81 c7 e0 08 	ret 
   11f04:	81 e8 00 00 	restore 

00011f08 <SkipDataBlocks>:
   11f08:	9d e3 be 98 	save  %sp, -360, %sp
   11f0c:	90 10 00 18 	mov  %i0, %o0
   11f10:	7f ff ff e4 	call  11ea0 <GetDataBlock>
   11f14:	92 07 be f8 	add  %fp, -264, %o1
   11f18:	80 a2 20 00 	cmp  %o0, 0
   11f1c:	14 bf ff fd 	bg  11f10 <SkipDataBlocks+0x8>
   11f20:	90 10 00 18 	mov  %i0, %o0
   11f24:	81 c7 e0 08 	ret 
   11f28:	81 e8 00 00 	restore 

00011f2c <ReInitLZW>:
   11f2c:	c2 02 21 34 	ld  [ %o0 + 0x134 ], %g1
   11f30:	82 00 60 01 	inc  %g1
   11f34:	c2 22 21 40 	st  %g1, [ %o0 + 0x140 ]
   11f38:	c2 02 21 38 	ld  [ %o0 + 0x138 ], %g1
   11f3c:	84 00 40 01 	add  %g1, %g1, %g2
   11f40:	c4 22 21 44 	st  %g2, [ %o0 + 0x144 ]
   11f44:	82 00 60 02 	add  %g1, 2, %g1
   11f48:	c2 22 21 48 	st  %g1, [ %o0 + 0x148 ]
   11f4c:	c2 02 21 60 	ld  [ %o0 + 0x160 ], %g1
   11f50:	81 c3 e0 08 	retl 
   11f54:	c2 22 21 64 	st  %g1, [ %o0 + 0x164 ]

00011f58 <InitLZWCode>:
   11f58:	9d e3 bf 98 	save  %sp, -104, %sp
   11f5c:	90 10 00 18 	mov  %i0, %o0
   11f60:	82 10 20 02 	mov  2, %g1
   11f64:	c2 26 21 24 	st  %g1, [ %i0 + 0x124 ]
   11f68:	c0 26 21 28 	clr  [ %i0 + 0x128 ]
   11f6c:	c0 26 21 2c 	clr  [ %i0 + 0x12c ]
   11f70:	c0 26 21 30 	clr  [ %i0 + 0x130 ]
   11f74:	84 10 20 01 	mov  1, %g2
   11f78:	c2 06 21 34 	ld  [ %i0 + 0x134 ], %g1
   11f7c:	83 28 80 01 	sll  %g2, %g1, %g1
   11f80:	c2 26 21 38 	st  %g1, [ %i0 + 0x138 ]
   11f84:	82 00 60 01 	inc  %g1
   11f88:	c2 26 21 3c 	st  %g1, [ %i0 + 0x13c ]
   11f8c:	7f ff ff e8 	call  11f2c <ReInitLZW>
   11f90:	c4 26 21 4c 	st  %g2, [ %i0 + 0x14c ]
   11f94:	01 00 00 00 	nop 
   11f98:	81 c7 e0 08 	ret 
   11f9c:	81 e8 00 00 	restore 

00011fa0 <GetCode>:
   11fa0:	9d e3 bf 98 	save  %sp, -104, %sp
   11fa4:	c2 06 21 2c 	ld  [ %i0 + 0x12c ], %g1
   11fa8:	c4 06 21 40 	ld  [ %i0 + 0x140 ], %g2
   11fac:	82 00 40 02 	add  %g1, %g2, %g1
   11fb0:	c4 06 21 28 	ld  [ %i0 + 0x128 ], %g2
   11fb4:	80 a0 40 02 	cmp  %g1, %g2
   11fb8:	24 80 00 36 	ble,a   12090 <GetCode+0xf0>
   11fbc:	c8 06 21 2c 	ld  [ %i0 + 0x12c ], %g4
   11fc0:	a0 10 24 00 	mov  0x400, %l0
   11fc4:	c2 06 21 30 	ld  [ %i0 + 0x130 ], %g1
   11fc8:	80 a0 60 00 	cmp  %g1, 0
   11fcc:	22 80 00 0c 	be,a   11ffc <GetCode+0x5c>
   11fd0:	c2 06 21 24 	ld  [ %i0 + 0x124 ], %g1
   11fd4:	c2 06 20 18 	ld  [ %i0 + 0x18 ], %g1
   11fd8:	c2 00 40 00 	ld  [ %g1 ], %g1
   11fdc:	e0 20 60 14 	st  %l0, [ %g1 + 0x14 ]
   11fe0:	d0 06 20 18 	ld  [ %i0 + 0x18 ], %o0
   11fe4:	c2 02 00 00 	ld  [ %o0 ], %g1
   11fe8:	c2 00 60 04 	ld  [ %g1 + 4 ], %g1
   11fec:	9f c0 40 00 	call  %g1
   11ff0:	92 10 3f ff 	mov  -1, %o1
   11ff4:	10 80 00 39 	b  120d8 <GetCode+0x138>
   11ff8:	f0 06 21 3c 	ld  [ %i0 + 0x13c ], %i0
   11ffc:	82 00 40 18 	add  %g1, %i0, %g1
   12000:	c4 08 60 1e 	ldub  [ %g1 + 0x1e ], %g2
   12004:	c4 2e 20 20 	stb  %g2, [ %i0 + 0x20 ]
   12008:	c2 08 60 1f 	ldub  [ %g1 + 0x1f ], %g1
   1200c:	c2 2e 20 21 	stb  %g1, [ %i0 + 0x21 ]
   12010:	90 10 00 18 	mov  %i0, %o0
   12014:	7f ff ff a3 	call  11ea0 <GetDataBlock>
   12018:	92 06 20 22 	add  %i0, 0x22, %o1
   1201c:	80 a2 20 00 	cmp  %o0, 0
   12020:	32 80 00 0e 	bne,a   12058 <GetCode+0xb8>
   12024:	c2 06 21 2c 	ld  [ %i0 + 0x12c ], %g1
   12028:	82 10 20 01 	mov  1, %g1
   1202c:	c2 26 21 30 	st  %g1, [ %i0 + 0x130 ]
   12030:	c2 06 20 18 	ld  [ %i0 + 0x18 ], %g1
   12034:	c2 00 40 00 	ld  [ %g1 ], %g1
   12038:	e0 20 60 14 	st  %l0, [ %g1 + 0x14 ]
   1203c:	d0 06 20 18 	ld  [ %i0 + 0x18 ], %o0
   12040:	c2 02 00 00 	ld  [ %o0 ], %g1
   12044:	c2 00 60 04 	ld  [ %g1 + 4 ], %g1
   12048:	9f c0 40 00 	call  %g1
   1204c:	92 10 3f ff 	mov  -1, %o1
   12050:	10 80 00 22 	b  120d8 <GetCode+0x138>
   12054:	f0 06 21 3c 	ld  [ %i0 + 0x13c ], %i0
   12058:	c4 06 21 28 	ld  [ %i0 + 0x128 ], %g2
   1205c:	82 20 40 02 	sub  %g1, %g2, %g1
   12060:	82 00 60 10 	add  %g1, 0x10, %g1
   12064:	c2 26 21 2c 	st  %g1, [ %i0 + 0x12c ]
   12068:	84 02 20 02 	add  %o0, 2, %g2
   1206c:	c4 26 21 24 	st  %g2, [ %i0 + 0x124 ]
   12070:	85 28 a0 03 	sll  %g2, 3, %g2
   12074:	c4 26 21 28 	st  %g2, [ %i0 + 0x128 ]
   12078:	c6 06 21 40 	ld  [ %i0 + 0x140 ], %g3
   1207c:	82 00 40 03 	add  %g1, %g3, %g1
   12080:	80 a0 40 02 	cmp  %g1, %g2
   12084:	34 bf ff d1 	bg,a   11fc8 <GetCode+0x28>
   12088:	c2 06 21 30 	ld  [ %i0 + 0x130 ], %g1
   1208c:	c8 06 21 2c 	ld  [ %i0 + 0x12c ], %g4
   12090:	87 39 20 03 	sra  %g4, 3, %g3
   12094:	86 00 c0 18 	add  %g3, %i0, %g3
   12098:	c2 08 e0 22 	ldub  [ %g3 + 0x22 ], %g1
   1209c:	83 28 60 08 	sll  %g1, 8, %g1
   120a0:	c4 08 e0 21 	ldub  [ %g3 + 0x21 ], %g2
   120a4:	82 10 40 02 	or  %g1, %g2, %g1
   120a8:	83 28 60 08 	sll  %g1, 8, %g1
   120ac:	c4 08 e0 20 	ldub  [ %g3 + 0x20 ], %g2
   120b0:	82 10 40 02 	or  %g1, %g2, %g1
   120b4:	84 09 20 07 	and  %g4, 7, %g2
   120b8:	83 38 40 02 	sra  %g1, %g2, %g1
   120bc:	c6 06 21 40 	ld  [ %i0 + 0x140 ], %g3
   120c0:	84 10 20 01 	mov  1, %g2
   120c4:	85 28 80 03 	sll  %g2, %g3, %g2
   120c8:	84 00 bf ff 	add  %g2, -1, %g2
   120cc:	88 01 00 03 	add  %g4, %g3, %g4
   120d0:	c8 26 21 2c 	st  %g4, [ %i0 + 0x12c ]
   120d4:	b0 08 80 01 	and  %g2, %g1, %i0
   120d8:	81 c7 e0 08 	ret 
   120dc:	81 e8 00 00 	restore 

000120e0 <LZWReadByte>:
   120e0:	9d e3 bf 98 	save  %sp, -104, %sp
   120e4:	c2 06 21 4c 	ld  [ %i0 + 0x14c ], %g1
   120e8:	80 a0 60 00 	cmp  %g1, 0
   120ec:	22 80 00 05 	be,a   12100 <LZWReadByte+0x20>
   120f0:	c4 06 21 64 	ld  [ %i0 + 0x164 ], %g2
   120f4:	c0 26 21 4c 	clr  [ %i0 + 0x14c ]
   120f8:	10 80 00 0b 	b  12124 <LZWReadByte+0x44>
   120fc:	d0 06 21 38 	ld  [ %i0 + 0x138 ], %o0
   12100:	c2 06 21 60 	ld  [ %i0 + 0x160 ], %g1
   12104:	80 a0 80 01 	cmp  %g2, %g1
   12108:	08 80 00 05 	bleu  1211c <LZWReadByte+0x3c>
   1210c:	82 00 bf ff 	add  %g2, -1, %g1
   12110:	c2 26 21 64 	st  %g1, [ %i0 + 0x164 ]
   12114:	10 80 00 79 	b  122f8 <LZWReadByte+0x218>
   12118:	d0 08 bf ff 	ldub  [ %g2 + -1 ], %o0
   1211c:	7f ff ff a1 	call  11fa0 <GetCode>
   12120:	90 10 00 18 	mov  %i0, %o0
   12124:	c2 06 21 38 	ld  [ %i0 + 0x138 ], %g1
   12128:	80 a0 40 08 	cmp  %g1, %o0
   1212c:	32 80 00 19 	bne,a   12190 <LZWReadByte+0xb0>
   12130:	c2 06 21 3c 	ld  [ %i0 + 0x13c ], %g1
   12134:	7f ff ff 7e 	call  11f2c <ReInitLZW>
   12138:	90 10 00 18 	mov  %i0, %o0
   1213c:	7f ff ff 99 	call  11fa0 <GetCode>
   12140:	90 10 00 18 	mov  %i0, %o0
   12144:	c2 06 21 38 	ld  [ %i0 + 0x138 ], %g1
   12148:	80 a0 40 08 	cmp  %g1, %o0
   1214c:	02 bf ff fc 	be  1213c <LZWReadByte+0x5c>
   12150:	01 00 00 00 	nop 
   12154:	36 80 00 0d 	bge,a   12188 <LZWReadByte+0xa8>
   12158:	d0 26 21 50 	st  %o0, [ %i0 + 0x150 ]
   1215c:	c2 06 20 18 	ld  [ %i0 + 0x18 ], %g1
   12160:	c4 00 40 00 	ld  [ %g1 ], %g2
   12164:	82 10 23 fd 	mov  0x3fd, %g1
   12168:	c2 20 a0 14 	st  %g1, [ %g2 + 0x14 ]
   1216c:	d0 06 20 18 	ld  [ %i0 + 0x18 ], %o0
   12170:	c2 02 00 00 	ld  [ %o0 ], %g1
   12174:	c2 00 60 04 	ld  [ %g1 + 4 ], %g1
   12178:	9f c0 40 00 	call  %g1
   1217c:	92 10 3f ff 	mov  -1, %o1
   12180:	90 10 20 00 	clr  %o0
   12184:	d0 26 21 50 	st  %o0, [ %i0 + 0x150 ]
   12188:	10 80 00 5c 	b  122f8 <LZWReadByte+0x218>
   1218c:	d0 26 21 54 	st  %o0, [ %i0 + 0x154 ]
   12190:	80 a0 40 08 	cmp  %g1, %o0
   12194:	32 80 00 15 	bne,a   121e8 <LZWReadByte+0x108>
   12198:	c2 06 21 48 	ld  [ %i0 + 0x148 ], %g1
   1219c:	c2 06 21 30 	ld  [ %i0 + 0x130 ], %g1
   121a0:	80 a0 60 00 	cmp  %g1, 0
   121a4:	32 80 00 07 	bne,a   121c0 <LZWReadByte+0xe0>
   121a8:	c2 06 20 18 	ld  [ %i0 + 0x18 ], %g1
   121ac:	7f ff ff 57 	call  11f08 <SkipDataBlocks>
   121b0:	90 10 00 18 	mov  %i0, %o0
   121b4:	82 10 20 01 	mov  1, %g1
   121b8:	c2 26 21 30 	st  %g1, [ %i0 + 0x130 ]
   121bc:	c2 06 20 18 	ld  [ %i0 + 0x18 ], %g1
   121c0:	c4 00 40 00 	ld  [ %g1 ], %g2
   121c4:	82 10 23 ff 	mov  0x3ff, %g1
   121c8:	c2 20 a0 14 	st  %g1, [ %g2 + 0x14 ]
   121cc:	d0 06 20 18 	ld  [ %i0 + 0x18 ], %o0
   121d0:	c2 02 00 00 	ld  [ %o0 ], %g1
   121d4:	c2 00 60 04 	ld  [ %g1 + 4 ], %g1
   121d8:	9f c0 40 00 	call  %g1
   121dc:	92 10 3f ff 	mov  -1, %o1
   121e0:	10 80 00 46 	b  122f8 <LZWReadByte+0x218>
   121e4:	90 10 20 00 	clr  %o0
   121e8:	80 a0 40 08 	cmp  %g1, %o0
   121ec:	14 80 00 15 	bg  12240 <LZWReadByte+0x160>
   121f0:	88 10 00 08 	mov  %o0, %g4
   121f4:	80 a0 40 08 	cmp  %g1, %o0
   121f8:	36 80 00 0d 	bge,a   1222c <LZWReadByte+0x14c>
   121fc:	c2 06 21 64 	ld  [ %i0 + 0x164 ], %g1
   12200:	c2 06 20 18 	ld  [ %i0 + 0x18 ], %g1
   12204:	c4 00 40 00 	ld  [ %g1 ], %g2
   12208:	82 10 23 fd 	mov  0x3fd, %g1
   1220c:	c2 20 a0 14 	st  %g1, [ %g2 + 0x14 ]
   12210:	d0 06 20 18 	ld  [ %i0 + 0x18 ], %o0
   12214:	c2 02 00 00 	ld  [ %o0 ], %g1
   12218:	c2 00 60 04 	ld  [ %g1 + 4 ], %g1
   1221c:	9f c0 40 00 	call  %g1
   12220:	92 10 3f ff 	mov  -1, %o1
   12224:	88 10 20 00 	clr  %g4
   12228:	c2 06 21 64 	ld  [ %i0 + 0x164 ], %g1
   1222c:	c4 06 21 54 	ld  [ %i0 + 0x154 ], %g2
   12230:	c4 28 40 00 	stb  %g2, [ %g1 ]
   12234:	82 00 60 01 	inc  %g1
   12238:	c2 26 21 64 	st  %g1, [ %i0 + 0x164 ]
   1223c:	d0 06 21 50 	ld  [ %i0 + 0x150 ], %o0
   12240:	c2 06 21 38 	ld  [ %i0 + 0x138 ], %g1
   12244:	80 a0 40 08 	cmp  %g1, %o0
   12248:	34 80 00 10 	bg,a   12288 <LZWReadByte+0x1a8>
   1224c:	d0 26 21 54 	st  %o0, [ %i0 + 0x154 ]
   12250:	c2 06 21 64 	ld  [ %i0 + 0x164 ], %g1
   12254:	c4 06 21 5c 	ld  [ %i0 + 0x15c ], %g2
   12258:	c4 08 80 08 	ldub  [ %g2 + %o0 ], %g2
   1225c:	c4 28 40 00 	stb  %g2, [ %g1 ]
   12260:	82 00 60 01 	inc  %g1
   12264:	c2 26 21 64 	st  %g1, [ %i0 + 0x164 ]
   12268:	c4 06 21 58 	ld  [ %i0 + 0x158 ], %g2
   1226c:	82 02 00 08 	add  %o0, %o0, %g1
   12270:	d0 10 80 01 	lduh  [ %g2 + %g1 ], %o0
   12274:	c2 06 21 38 	ld  [ %i0 + 0x138 ], %g1
   12278:	80 a0 40 08 	cmp  %g1, %o0
   1227c:	24 bf ff f6 	ble,a   12254 <LZWReadByte+0x174>
   12280:	c2 06 21 64 	ld  [ %i0 + 0x164 ], %g1
   12284:	d0 26 21 54 	st  %o0, [ %i0 + 0x154 ]
   12288:	d0 06 21 48 	ld  [ %i0 + 0x148 ], %o0
   1228c:	80 a2 2f ff 	cmp  %o0, 0xfff
   12290:	34 80 00 19 	bg,a   122f4 <LZWReadByte+0x214>
   12294:	c8 26 21 50 	st  %g4, [ %i0 + 0x150 ]
   12298:	c6 06 21 58 	ld  [ %i0 + 0x158 ], %g3
   1229c:	84 02 00 08 	add  %o0, %o0, %g2
   122a0:	c2 06 21 50 	ld  [ %i0 + 0x150 ], %g1
   122a4:	c2 30 c0 02 	sth  %g1, [ %g3 + %g2 ]
   122a8:	c4 06 21 5c 	ld  [ %i0 + 0x15c ], %g2
   122ac:	c2 06 21 54 	ld  [ %i0 + 0x154 ], %g1
   122b0:	c2 28 80 08 	stb  %g1, [ %g2 + %o0 ]
   122b4:	c2 06 21 48 	ld  [ %i0 + 0x148 ], %g1
   122b8:	82 00 60 01 	inc  %g1
   122bc:	c2 26 21 48 	st  %g1, [ %i0 + 0x148 ]
   122c0:	c4 06 21 44 	ld  [ %i0 + 0x144 ], %g2
   122c4:	80 a0 40 02 	cmp  %g1, %g2
   122c8:	26 80 00 0b 	bl,a   122f4 <LZWReadByte+0x214>
   122cc:	c8 26 21 50 	st  %g4, [ %i0 + 0x150 ]
   122d0:	c2 06 21 40 	ld  [ %i0 + 0x140 ], %g1
   122d4:	80 a0 60 0b 	cmp  %g1, 0xb
   122d8:	34 80 00 07 	bg,a   122f4 <LZWReadByte+0x214>
   122dc:	c8 26 21 50 	st  %g4, [ %i0 + 0x150 ]
   122e0:	82 00 60 01 	inc  %g1
   122e4:	c2 26 21 40 	st  %g1, [ %i0 + 0x140 ]
   122e8:	82 00 80 02 	add  %g2, %g2, %g1
   122ec:	c2 26 21 44 	st  %g1, [ %i0 + 0x144 ]
   122f0:	c8 26 21 50 	st  %g4, [ %i0 + 0x150 ]
   122f4:	d0 06 21 54 	ld  [ %i0 + 0x154 ], %o0
   122f8:	81 c7 e0 08 	ret 
   122fc:	91 e8 00 08 	restore  %g0, %o0, %o0

00012300 <ReadColorMap>:
   12300:	9d e3 bf 98 	save  %sp, -104, %sp
   12304:	a2 10 20 00 	clr  %l1
   12308:	80 a4 40 19 	cmp  %l1, %i1
   1230c:	16 80 00 12 	bge  12354 <ReadColorMap+0x54>
   12310:	01 00 00 00 	nop 
   12314:	e0 06 80 00 	ld  [ %i2 ], %l0
   12318:	7f ff fe d0 	call  11e58 <ReadByte>
   1231c:	90 10 00 18 	mov  %i0, %o0
   12320:	d0 2c 00 11 	stb  %o0, [ %l0 + %l1 ]
   12324:	e0 06 a0 04 	ld  [ %i2 + 4 ], %l0
   12328:	7f ff fe cc 	call  11e58 <ReadByte>
   1232c:	90 10 00 18 	mov  %i0, %o0
   12330:	d0 2c 00 11 	stb  %o0, [ %l0 + %l1 ]
   12334:	e0 06 a0 08 	ld  [ %i2 + 8 ], %l0
   12338:	7f ff fe c8 	call  11e58 <ReadByte>
   1233c:	90 10 00 18 	mov  %i0, %o0
   12340:	d0 2c 00 11 	stb  %o0, [ %l0 + %l1 ]
   12344:	a2 04 60 01 	inc  %l1
   12348:	80 a4 40 19 	cmp  %l1, %i1
   1234c:	26 bf ff f3 	bl,a   12318 <ReadColorMap+0x18>
   12350:	e0 06 80 00 	ld  [ %i2 ], %l0
   12354:	81 c7 e0 08 	ret 
   12358:	81 e8 00 00 	restore 

0001235c <DoExtension>:
   1235c:	9d e3 bf 98 	save  %sp, -104, %sp
   12360:	7f ff fe be 	call  11e58 <ReadByte>
   12364:	90 10 00 18 	mov  %i0, %o0
   12368:	c2 06 20 18 	ld  [ %i0 + 0x18 ], %g1
   1236c:	c4 00 40 00 	ld  [ %g1 ], %g2
   12370:	82 10 23 fb 	mov  0x3fb, %g1
   12374:	c2 20 a0 14 	st  %g1, [ %g2 + 0x14 ]
   12378:	c2 06 20 18 	ld  [ %i0 + 0x18 ], %g1
   1237c:	c2 00 40 00 	ld  [ %g1 ], %g1
   12380:	d0 20 60 18 	st  %o0, [ %g1 + 0x18 ]
   12384:	d0 06 20 18 	ld  [ %i0 + 0x18 ], %o0
   12388:	c2 02 00 00 	ld  [ %o0 ], %g1
   1238c:	c2 00 60 04 	ld  [ %g1 + 4 ], %g1
   12390:	9f c0 40 00 	call  %g1
   12394:	92 10 20 01 	mov  1, %o1
   12398:	7f ff fe dc 	call  11f08 <SkipDataBlocks>
   1239c:	90 10 00 18 	mov  %i0, %o0
   123a0:	01 00 00 00 	nop 
   123a4:	81 c7 e0 08 	ret 
   123a8:	81 e8 00 00 	restore 

000123ac <start_input_gif>:
   123ac:	9d e3 bf 88 	save  %sp, -120, %sp
   123b0:	c2 06 20 04 	ld  [ %i0 + 4 ], %g1
   123b4:	c2 00 60 08 	ld  [ %g1 + 8 ], %g1
   123b8:	90 10 00 18 	mov  %i0, %o0
   123bc:	92 10 20 01 	mov  1, %o1
   123c0:	94 10 21 00 	mov  0x100, %o2
   123c4:	9f c0 40 00 	call  %g1
   123c8:	96 10 20 03 	mov  3, %o3
   123cc:	d0 26 60 1c 	st  %o0, [ %i1 + 0x1c ]
   123d0:	90 07 bf e8 	add  %fp, -24, %o0
   123d4:	92 10 20 01 	mov  1, %o1
   123d8:	94 10 20 06 	mov  6, %o2
   123dc:	40 00 84 d3 	call  33728 <fread@plt>
   123e0:	d6 06 60 0c 	ld  [ %i1 + 0xc ], %o3
   123e4:	80 a2 20 06 	cmp  %o0, 6
   123e8:	02 80 00 08 	be  12408 <start_input_gif+0x5c>
   123ec:	82 10 23 f8 	mov  0x3f8, %g1
   123f0:	c4 06 00 00 	ld  [ %i0 ], %g2
   123f4:	c2 20 a0 14 	st  %g1, [ %g2 + 0x14 ]
   123f8:	c2 06 00 00 	ld  [ %i0 ], %g1
   123fc:	c2 00 40 00 	ld  [ %g1 ], %g1
   12400:	9f c0 40 00 	call  %g1
   12404:	90 10 00 18 	mov  %i0, %o0
   12408:	c2 4f bf e8 	ldsb  [ %fp + -24 ], %g1
   1240c:	80 a0 60 47 	cmp  %g1, 0x47
   12410:	32 80 00 0b 	bne,a   1243c <start_input_gif+0x90>
   12414:	c4 06 00 00 	ld  [ %i0 ], %g2
   12418:	c2 4f bf e9 	ldsb  [ %fp + -23 ], %g1
   1241c:	80 a0 60 49 	cmp  %g1, 0x49
   12420:	32 80 00 07 	bne,a   1243c <start_input_gif+0x90>
   12424:	c4 06 00 00 	ld  [ %i0 ], %g2
   12428:	c2 4f bf ea 	ldsb  [ %fp + -22 ], %g1
   1242c:	80 a0 60 46 	cmp  %g1, 0x46
   12430:	02 80 00 0a 	be  12458 <start_input_gif+0xac>
   12434:	c2 4f bf eb 	ldsb  [ %fp + -21 ], %g1
   12438:	c4 06 00 00 	ld  [ %i0 ], %g2
   1243c:	82 10 23 f8 	mov  0x3f8, %g1
   12440:	c2 20 a0 14 	st  %g1, [ %g2 + 0x14 ]
   12444:	c2 06 00 00 	ld  [ %i0 ], %g1
   12448:	c2 00 40 00 	ld  [ %g1 ], %g1
   1244c:	9f c0 40 00 	call  %g1
   12450:	90 10 00 18 	mov  %i0, %o0
   12454:	c2 4f bf eb 	ldsb  [ %fp + -21 ], %g1
   12458:	80 a0 60 38 	cmp  %g1, 0x38
   1245c:	32 80 00 11 	bne,a   124a0 <start_input_gif+0xf4>
   12460:	c4 06 00 00 	ld  [ %i0 ], %g2
   12464:	c2 4f bf ec 	ldsb  [ %fp + -20 ], %g1
   12468:	84 18 60 37 	xor  %g1, 0x37, %g2
   1246c:	80 a0 00 02 	cmp  %g0, %g2
   12470:	84 40 20 00 	addx  %g0, 0, %g2
   12474:	82 18 60 39 	xor  %g1, 0x39, %g1
   12478:	80 a0 00 01 	cmp  %g0, %g1
   1247c:	82 40 20 00 	addx  %g0, 0, %g1
   12480:	80 88 80 01 	btst  %g2, %g1
   12484:	32 80 00 07 	bne,a   124a0 <start_input_gif+0xf4>
   12488:	c4 06 00 00 	ld  [ %i0 ], %g2
   1248c:	c2 4f bf ed 	ldsb  [ %fp + -19 ], %g1
   12490:	80 a0 60 61 	cmp  %g1, 0x61
   12494:	02 80 00 13 	be  124e0 <start_input_gif+0x134>
   12498:	90 07 bf e8 	add  %fp, -24, %o0
   1249c:	c4 06 00 00 	ld  [ %i0 ], %g2
   124a0:	86 00 a0 18 	add  %g2, 0x18, %g3
   124a4:	c2 4f bf eb 	ldsb  [ %fp + -21 ], %g1
   124a8:	c2 20 a0 18 	st  %g1, [ %g2 + 0x18 ]
   124ac:	c2 4f bf ec 	ldsb  [ %fp + -20 ], %g1
   124b0:	c2 20 e0 04 	st  %g1, [ %g3 + 4 ]
   124b4:	c2 4f bf ed 	ldsb  [ %fp + -19 ], %g1
   124b8:	c2 20 e0 08 	st  %g1, [ %g3 + 8 ]
   124bc:	c4 06 00 00 	ld  [ %i0 ], %g2
   124c0:	82 10 23 fa 	mov  0x3fa, %g1
   124c4:	c2 20 a0 14 	st  %g1, [ %g2 + 0x14 ]
   124c8:	c2 06 00 00 	ld  [ %i0 ], %g1
   124cc:	c2 00 60 04 	ld  [ %g1 + 4 ], %g1
   124d0:	90 10 00 18 	mov  %i0, %o0
   124d4:	9f c0 40 00 	call  %g1
   124d8:	92 10 20 01 	mov  1, %o1
   124dc:	90 07 bf e8 	add  %fp, -24, %o0
   124e0:	92 10 20 01 	mov  1, %o1
   124e4:	94 10 20 07 	mov  7, %o2
   124e8:	40 00 84 90 	call  33728 <fread@plt>
   124ec:	d6 06 60 0c 	ld  [ %i1 + 0xc ], %o3
   124f0:	80 a2 20 07 	cmp  %o0, 7
   124f4:	02 80 00 08 	be  12514 <start_input_gif+0x168>
   124f8:	82 10 20 2a 	mov  0x2a, %g1
   124fc:	c4 06 00 00 	ld  [ %i0 ], %g2
   12500:	c2 20 a0 14 	st  %g1, [ %g2 + 0x14 ]
   12504:	c2 06 00 00 	ld  [ %i0 ], %g1
   12508:	c2 00 40 00 	ld  [ %g1 ], %g1
   1250c:	9f c0 40 00 	call  %g1
   12510:	90 10 00 18 	mov  %i0, %o0
   12514:	c2 0f bf ec 	ldub  [ %fp + -20 ], %g1
   12518:	82 08 60 07 	and  %g1, 7, %g1
   1251c:	84 10 20 02 	mov  2, %g2
   12520:	a5 28 80 01 	sll  %g2, %g1, %l2
   12524:	c2 0f bf ee 	ldub  [ %fp + -18 ], %g1
   12528:	80 a0 00 01 	cmp  %g0, %g1
   1252c:	84 40 20 00 	addx  %g0, 0, %g2
   12530:	82 18 60 31 	xor  %g1, 0x31, %g1
   12534:	80 a0 00 01 	cmp  %g0, %g1
   12538:	82 40 20 00 	addx  %g0, 0, %g1
   1253c:	80 88 80 01 	btst  %g2, %g1
   12540:	02 80 00 0b 	be  1256c <start_input_gif+0x1c0>
   12544:	c2 4f bf ec 	ldsb  [ %fp + -20 ], %g1
   12548:	c4 06 00 00 	ld  [ %i0 ], %g2
   1254c:	82 10 23 fc 	mov  0x3fc, %g1
   12550:	c2 20 a0 14 	st  %g1, [ %g2 + 0x14 ]
   12554:	c2 06 00 00 	ld  [ %i0 ], %g1
   12558:	c2 00 60 04 	ld  [ %g1 + 4 ], %g1
   1255c:	90 10 00 18 	mov  %i0, %o0
   12560:	9f c0 40 00 	call  %g1
   12564:	92 10 20 01 	mov  1, %o1
   12568:	c2 4f bf ec 	ldsb  [ %fp + -20 ], %g1
   1256c:	80 a0 60 00 	cmp  %g1, 0
   12570:	16 80 00 05 	bge  12584 <start_input_gif+0x1d8>
   12574:	90 10 00 19 	mov  %i1, %o0
   12578:	92 10 00 12 	mov  %l2, %o1
   1257c:	7f ff ff 61 	call  12300 <ReadColorMap>
   12580:	d4 06 60 1c 	ld  [ %i1 + 0x1c ], %o2
   12584:	7f ff fe 35 	call  11e58 <ReadByte>
   12588:	90 10 00 19 	mov  %i1, %o0
   1258c:	80 a2 20 3b 	cmp  %o0, 0x3b
   12590:	12 80 00 09 	bne  125b4 <start_input_gif+0x208>
   12594:	a0 10 00 08 	mov  %o0, %l0
   12598:	c4 06 00 00 	ld  [ %i0 ], %g2
   1259c:	82 10 23 f7 	mov  0x3f7, %g1
   125a0:	c2 20 a0 14 	st  %g1, [ %g2 + 0x14 ]
   125a4:	c2 06 00 00 	ld  [ %i0 ], %g1
   125a8:	c2 00 40 00 	ld  [ %g1 ], %g1
   125ac:	9f c0 40 00 	call  %g1
   125b0:	90 10 00 18 	mov  %i0, %o0
   125b4:	80 a4 20 21 	cmp  %l0, 0x21
   125b8:	12 80 00 05 	bne  125cc <start_input_gif+0x220>
   125bc:	80 a4 20 2c 	cmp  %l0, 0x2c
   125c0:	7f ff ff 67 	call  1235c <DoExtension>
   125c4:	90 10 00 19 	mov  %i1, %o0
   125c8:	30 bf ff ef 	b,a   12584 <start_input_gif+0x1d8>
   125cc:	02 80 00 0c 	be  125fc <start_input_gif+0x250>
   125d0:	82 10 23 fe 	mov  0x3fe, %g1
   125d4:	c4 06 00 00 	ld  [ %i0 ], %g2
   125d8:	c2 20 a0 14 	st  %g1, [ %g2 + 0x14 ]
   125dc:	c2 06 00 00 	ld  [ %i0 ], %g1
   125e0:	e0 20 60 18 	st  %l0, [ %g1 + 0x18 ]
   125e4:	c2 06 00 00 	ld  [ %i0 ], %g1
   125e8:	c2 00 60 04 	ld  [ %g1 + 4 ], %g1
   125ec:	90 10 00 18 	mov  %i0, %o0
   125f0:	9f c0 40 00 	call  %g1
   125f4:	92 10 3f ff 	mov  -1, %o1
   125f8:	30 bf ff e3 	b,a   12584 <start_input_gif+0x1d8>
   125fc:	90 07 bf e8 	add  %fp, -24, %o0
   12600:	92 10 20 01 	mov  1, %o1
   12604:	94 10 20 09 	mov  9, %o2
   12608:	40 00 84 48 	call  33728 <fread@plt>
   1260c:	d6 06 60 0c 	ld  [ %i1 + 0xc ], %o3
   12610:	80 a2 20 09 	cmp  %o0, 9
   12614:	02 80 00 08 	be  12634 <start_input_gif+0x288>
   12618:	82 10 20 2a 	mov  0x2a, %g1
   1261c:	c4 06 00 00 	ld  [ %i0 ], %g2
   12620:	c2 20 a0 14 	st  %g1, [ %g2 + 0x14 ]
   12624:	c2 06 00 00 	ld  [ %i0 ], %g1
   12628:	c2 00 40 00 	ld  [ %g1 ], %g1
   1262c:	9f c0 40 00 	call  %g1
   12630:	90 10 00 18 	mov  %i0, %o0
   12634:	c2 0f bf ed 	ldub  [ %fp + -19 ], %g1
   12638:	83 28 60 08 	sll  %g1, 8, %g1
   1263c:	c4 0f bf ec 	ldub  [ %fp + -20 ], %g2
   12640:	a2 10 40 02 	or  %g1, %g2, %l1
   12644:	e0 0f bf ef 	ldub  [ %fp + -17 ], %l0
   12648:	a1 2c 20 08 	sll  %l0, 8, %l0
   1264c:	c2 0f bf ee 	ldub  [ %fp + -18 ], %g1
   12650:	a0 14 00 01 	or  %l0, %g1, %l0
   12654:	c4 0f bf f0 	ldub  [ %fp + -16 ], %g2
   12658:	86 08 a0 ff 	and  %g2, 0xff, %g3
   1265c:	82 08 e0 40 	and  %g3, 0x40, %g1
   12660:	80 88 a0 80 	btst  0x80, %g2
   12664:	02 80 00 09 	be  12688 <start_input_gif+0x2dc>
   12668:	c2 26 61 68 	st  %g1, [ %i1 + 0x168 ]
   1266c:	84 08 e0 07 	and  %g3, 7, %g2
   12670:	82 10 20 02 	mov  2, %g1
   12674:	a5 28 40 02 	sll  %g1, %g2, %l2
   12678:	90 10 00 19 	mov  %i1, %o0
   1267c:	92 10 00 12 	mov  %l2, %o1
   12680:	7f ff ff 20 	call  12300 <ReadColorMap>
   12684:	d4 06 60 1c 	ld  [ %i1 + 0x1c ], %o2
   12688:	7f ff fd f4 	call  11e58 <ReadByte>
   1268c:	90 10 00 19 	mov  %i1, %o0
   12690:	d0 26 61 34 	st  %o0, [ %i1 + 0x134 ]
   12694:	90 02 3f fe 	add  %o0, -2, %o0
   12698:	80 a2 20 09 	cmp  %o0, 9
   1269c:	28 80 00 0d 	bleu,a   126d0 <start_input_gif+0x324>
   126a0:	c2 06 20 04 	ld  [ %i0 + 4 ], %g1
   126a4:	c4 06 00 00 	ld  [ %i0 ], %g2
   126a8:	82 10 23 f5 	mov  0x3f5, %g1
   126ac:	c2 20 a0 14 	st  %g1, [ %g2 + 0x14 ]
   126b0:	c4 06 00 00 	ld  [ %i0 ], %g2
   126b4:	c2 06 61 34 	ld  [ %i1 + 0x134 ], %g1
   126b8:	c2 20 a0 18 	st  %g1, [ %g2 + 0x18 ]
   126bc:	c2 06 00 00 	ld  [ %i0 ], %g1
   126c0:	c2 00 40 00 	ld  [ %g1 ], %g1
   126c4:	9f c0 40 00 	call  %g1
   126c8:	90 10 00 18 	mov  %i0, %o0
   126cc:	c2 06 20 04 	ld  [ %i0 + 4 ], %g1
   126d0:	c2 00 60 04 	ld  [ %g1 + 4 ], %g1
   126d4:	90 10 00 18 	mov  %i0, %o0
   126d8:	92 10 20 01 	mov  1, %o1
   126dc:	9f c0 40 00 	call  %g1
   126e0:	15 00 00 08 	sethi  %hi(0x2000), %o2
   126e4:	d0 26 61 58 	st  %o0, [ %i1 + 0x158 ]
   126e8:	c2 06 20 04 	ld  [ %i0 + 4 ], %g1
   126ec:	c2 00 60 04 	ld  [ %g1 + 4 ], %g1
   126f0:	90 10 00 18 	mov  %i0, %o0
   126f4:	92 10 20 01 	mov  1, %o1
   126f8:	9f c0 40 00 	call  %g1
   126fc:	15 00 00 04 	sethi  %hi(0x1000), %o2
   12700:	d0 26 61 5c 	st  %o0, [ %i1 + 0x15c ]
   12704:	c2 06 20 04 	ld  [ %i0 + 4 ], %g1
   12708:	c2 00 60 04 	ld  [ %g1 + 4 ], %g1
   1270c:	90 10 00 18 	mov  %i0, %o0
   12710:	92 10 20 01 	mov  1, %o1
   12714:	9f c0 40 00 	call  %g1
   12718:	15 00 00 04 	sethi  %hi(0x1000), %o2
   1271c:	d0 26 61 60 	st  %o0, [ %i1 + 0x160 ]
   12720:	7f ff fe 0e 	call  11f58 <InitLZWCode>
   12724:	90 10 00 19 	mov  %i1, %o0
   12728:	c2 06 61 68 	ld  [ %i1 + 0x168 ], %g1
   1272c:	80 a0 60 00 	cmp  %g1, 0
   12730:	02 80 00 17 	be  1278c <start_input_gif+0x3e0>
   12734:	03 00 00 4a 	sethi  %hi(0x12800), %g1
   12738:	c2 06 20 04 	ld  [ %i0 + 4 ], %g1
   1273c:	c2 00 60 10 	ld  [ %g1 + 0x10 ], %g1
   12740:	90 10 00 18 	mov  %i0, %o0
   12744:	92 10 20 01 	mov  1, %o1
   12748:	94 10 20 00 	clr  %o2
   1274c:	96 10 00 11 	mov  %l1, %o3
   12750:	98 10 00 10 	mov  %l0, %o4
   12754:	9f c0 40 00 	call  %g1
   12758:	9a 10 20 01 	mov  1, %o5
   1275c:	d0 26 61 6c 	st  %o0, [ %i1 + 0x16c ]
   12760:	c4 06 20 08 	ld  [ %i0 + 8 ], %g2
   12764:	80 a0 a0 00 	cmp  %g2, 0
   12768:	02 80 00 06 	be  12780 <start_input_gif+0x3d4>
   1276c:	03 00 00 4a 	sethi  %hi(0x12800), %g1
   12770:	c2 00 a0 18 	ld  [ %g2 + 0x18 ], %g1
   12774:	82 00 60 01 	inc  %g1
   12778:	c2 20 a0 18 	st  %g1, [ %g2 + 0x18 ]
   1277c:	03 00 00 4a 	sethi  %hi(0x12800), %g1
   12780:	82 10 60 84 	or  %g1, 0x84, %g1	! 12884 <load_interlaced_image>
   12784:	10 80 00 04 	b  12794 <start_input_gif+0x3e8>
   12788:	c2 26 60 04 	st  %g1, [ %i1 + 4 ]
   1278c:	82 10 60 20 	or  %g1, 0x20, %g1
   12790:	c2 26 60 04 	st  %g1, [ %i1 + 4 ]
   12794:	c2 06 20 04 	ld  [ %i0 + 4 ], %g1
   12798:	94 04 40 11 	add  %l1, %l1, %o2
   1279c:	c2 00 60 08 	ld  [ %g1 + 8 ], %g1
   127a0:	90 10 00 18 	mov  %i0, %o0
   127a4:	92 10 20 01 	mov  1, %o1
   127a8:	94 02 80 11 	add  %o2, %l1, %o2
   127ac:	9f c0 40 00 	call  %g1
   127b0:	96 10 20 01 	mov  1, %o3
   127b4:	d0 26 60 10 	st  %o0, [ %i1 + 0x10 ]
   127b8:	82 10 20 01 	mov  1, %g1
   127bc:	c2 26 60 14 	st  %g1, [ %i1 + 0x14 ]
   127c0:	82 10 20 02 	mov  2, %g1
   127c4:	c2 26 20 24 	st  %g1, [ %i0 + 0x24 ]
   127c8:	82 10 20 03 	mov  3, %g1
   127cc:	c2 26 20 20 	st  %g1, [ %i0 + 0x20 ]
   127d0:	82 10 20 08 	mov  8, %g1
   127d4:	c2 26 20 30 	st  %g1, [ %i0 + 0x30 ]
   127d8:	e2 26 20 18 	st  %l1, [ %i0 + 0x18 ]
   127dc:	e0 26 20 1c 	st  %l0, [ %i0 + 0x1c ]
   127e0:	c2 06 00 00 	ld  [ %i0 ], %g1
   127e4:	84 00 60 18 	add  %g1, 0x18, %g2
   127e8:	e2 20 60 18 	st  %l1, [ %g1 + 0x18 ]
   127ec:	e0 20 a0 04 	st  %l0, [ %g2 + 4 ]
   127f0:	e4 20 a0 08 	st  %l2, [ %g2 + 8 ]
   127f4:	c4 06 00 00 	ld  [ %i0 ], %g2
   127f8:	82 10 23 f9 	mov  0x3f9, %g1
   127fc:	c2 20 a0 14 	st  %g1, [ %g2 + 0x14 ]
   12800:	c2 06 00 00 	ld  [ %i0 ], %g1
   12804:	c2 00 60 04 	ld  [ %g1 + 4 ], %g1
   12808:	90 10 00 18 	mov  %i0, %o0
   1280c:	9f c0 40 00 	call  %g1
   12810:	92 10 20 01 	mov  1, %o1
   12814:	01 00 00 00 	nop 
   12818:	81 c7 e0 08 	ret 
   1281c:	81 e8 00 00 	restore 

00012820 <get_pixel_rows>:
   12820:	9d e3 bf 98 	save  %sp, -104, %sp
   12824:	e2 06 60 1c 	ld  [ %i1 + 0x1c ], %l1
   12828:	c2 06 60 10 	ld  [ %i1 + 0x10 ], %g1
   1282c:	f0 06 20 18 	ld  [ %i0 + 0x18 ], %i0
   12830:	80 a6 20 00 	cmp  %i0, 0
   12834:	02 80 00 12 	be  1287c <get_pixel_rows+0x5c>
   12838:	e0 00 40 00 	ld  [ %g1 ], %l0
   1283c:	7f ff fe 29 	call  120e0 <LZWReadByte>
   12840:	90 10 00 19 	mov  %i1, %o0
   12844:	c2 04 40 00 	ld  [ %l1 ], %g1
   12848:	c2 08 40 08 	ldub  [ %g1 + %o0 ], %g1
   1284c:	c2 2c 00 00 	stb  %g1, [ %l0 ]
   12850:	a0 04 20 01 	inc  %l0
   12854:	c2 04 60 04 	ld  [ %l1 + 4 ], %g1
   12858:	c2 08 40 08 	ldub  [ %g1 + %o0 ], %g1
   1285c:	c2 2c 00 00 	stb  %g1, [ %l0 ]
   12860:	a0 04 20 01 	inc  %l0
   12864:	c2 04 60 08 	ld  [ %l1 + 8 ], %g1
   12868:	c2 08 40 08 	ldub  [ %g1 + %o0 ], %g1
   1286c:	c2 2c 00 00 	stb  %g1, [ %l0 ]
   12870:	b0 86 3f ff 	addcc  %i0, -1, %i0
   12874:	12 bf ff f2 	bne  1283c <get_pixel_rows+0x1c>
   12878:	a0 04 20 01 	inc  %l0
   1287c:	81 c7 e0 08 	ret 
   12880:	91 e8 20 01 	restore  %g0, 1, %o0

00012884 <load_interlaced_image>:
   12884:	9d e3 bf 98 	save  %sp, -104, %sp
   12888:	a6 10 00 19 	mov  %i1, %l3
   1288c:	e8 06 20 08 	ld  [ %i0 + 8 ], %l4
   12890:	c2 06 20 1c 	ld  [ %i0 + 0x1c ], %g1
   12894:	80 a0 60 00 	cmp  %g1, 0
   12898:	08 80 00 23 	bleu  12924 <load_interlaced_image+0xa0>
   1289c:	aa 10 20 00 	clr  %l5
   128a0:	80 a5 20 00 	cmp  %l4, 0
   128a4:	22 80 00 09 	be,a   128c8 <load_interlaced_image+0x44>
   128a8:	c2 06 20 04 	ld  [ %i0 + 4 ], %g1
   128ac:	ea 25 20 04 	st  %l5, [ %l4 + 4 ]
   128b0:	c2 06 20 1c 	ld  [ %i0 + 0x1c ], %g1
   128b4:	c2 25 20 08 	st  %g1, [ %l4 + 8 ]
   128b8:	c2 05 00 00 	ld  [ %l4 ], %g1
   128bc:	9f c0 40 00 	call  %g1
   128c0:	90 10 00 18 	mov  %i0, %o0
   128c4:	c2 06 20 04 	ld  [ %i0 + 4 ], %g1
   128c8:	c2 00 60 1c 	ld  [ %g1 + 0x1c ], %g1
   128cc:	90 10 00 18 	mov  %i0, %o0
   128d0:	d2 04 e1 6c 	ld  [ %l3 + 0x16c ], %o1
   128d4:	94 10 00 15 	mov  %l5, %o2
   128d8:	96 10 20 01 	mov  1, %o3
   128dc:	9f c0 40 00 	call  %g1
   128e0:	98 10 20 01 	mov  1, %o4
   128e4:	e2 06 20 18 	ld  [ %i0 + 0x18 ], %l1
   128e8:	80 a4 60 00 	cmp  %l1, 0
   128ec:	02 80 00 09 	be  12910 <load_interlaced_image+0x8c>
   128f0:	e4 02 00 00 	ld  [ %o0 ], %l2
   128f4:	a0 10 00 12 	mov  %l2, %l0
   128f8:	a4 04 a0 01 	inc  %l2
   128fc:	7f ff fd f9 	call  120e0 <LZWReadByte>
   12900:	90 10 00 13 	mov  %l3, %o0
   12904:	a2 84 7f ff 	addcc  %l1, -1, %l1
   12908:	12 bf ff fb 	bne  128f4 <load_interlaced_image+0x70>
   1290c:	d0 2c 00 00 	stb  %o0, [ %l0 ]
   12910:	aa 05 60 01 	inc  %l5
   12914:	c2 06 20 1c 	ld  [ %i0 + 0x1c ], %g1
   12918:	80 a0 40 15 	cmp  %g1, %l5
   1291c:	18 bf ff e2 	bgu  128a4 <load_interlaced_image+0x20>
   12920:	80 a5 20 00 	cmp  %l4, 0
   12924:	80 a5 20 00 	cmp  %l4, 0
   12928:	02 80 00 06 	be  12940 <load_interlaced_image+0xbc>
   1292c:	03 00 00 4a 	sethi  %hi(0x12800), %g1
   12930:	c2 05 20 14 	ld  [ %l4 + 0x14 ], %g1
   12934:	82 00 60 01 	inc  %g1
   12938:	c2 25 20 14 	st  %g1, [ %l4 + 0x14 ]
   1293c:	03 00 00 4a 	sethi  %hi(0x12800), %g1
   12940:	82 10 61 98 	or  %g1, 0x198, %g1	! 12998 <get_interlaced_row>
   12944:	c2 24 e0 04 	st  %g1, [ %l3 + 4 ]
   12948:	c0 24 e1 70 	clr  [ %l3 + 0x170 ]
   1294c:	c2 06 20 1c 	ld  [ %i0 + 0x1c ], %g1
   12950:	82 00 60 07 	add  %g1, 7, %g1
   12954:	83 30 60 03 	srl  %g1, 3, %g1
   12958:	c2 24 e1 74 	st  %g1, [ %l3 + 0x174 ]
   1295c:	c4 06 20 1c 	ld  [ %i0 + 0x1c ], %g2
   12960:	84 00 a0 03 	add  %g2, 3, %g2
   12964:	85 30 a0 03 	srl  %g2, 3, %g2
   12968:	84 00 80 01 	add  %g2, %g1, %g2
   1296c:	c4 24 e1 78 	st  %g2, [ %l3 + 0x178 ]
   12970:	c2 06 20 1c 	ld  [ %i0 + 0x1c ], %g1
   12974:	82 00 60 01 	inc  %g1
   12978:	83 30 60 02 	srl  %g1, 2, %g1
   1297c:	82 00 40 02 	add  %g1, %g2, %g1
   12980:	c2 24 e1 7c 	st  %g1, [ %l3 + 0x17c ]
   12984:	90 10 00 18 	mov  %i0, %o0
   12988:	40 00 00 04 	call  12998 <get_interlaced_row>
   1298c:	92 10 00 19 	mov  %i1, %o1
   12990:	81 c7 e0 08 	ret 
   12994:	91 e8 00 08 	restore  %g0, %o0, %o0

00012998 <get_interlaced_row>:
   12998:	9d e3 bf 98 	save  %sp, -104, %sp
   1299c:	c2 06 61 70 	ld  [ %i1 + 0x170 ], %g1
   129a0:	82 08 60 07 	and  %g1, 7, %g1
   129a4:	80 a0 60 02 	cmp  %g1, 2
   129a8:	02 80 00 17 	be  12a04 <get_interlaced_row+0x6c>
   129ac:	e0 06 60 1c 	ld  [ %i1 + 0x1c ], %l0
   129b0:	80 a0 60 02 	cmp  %g1, 2
   129b4:	14 80 00 07 	bg  129d0 <get_interlaced_row+0x38>
   129b8:	80 a0 60 04 	cmp  %g1, 4
   129bc:	80 a0 60 00 	cmp  %g1, 0
   129c0:	02 80 00 0a 	be  129e8 <get_interlaced_row+0x50>
   129c4:	c2 06 61 70 	ld  [ %i1 + 0x170 ], %g1
   129c8:	10 80 00 14 	b  12a18 <get_interlaced_row+0x80>
   129cc:	95 30 60 01 	srl  %g1, 1, %o2
   129d0:	02 80 00 08 	be  129f0 <get_interlaced_row+0x58>
   129d4:	80 a0 60 06 	cmp  %g1, 6
   129d8:	02 80 00 0c 	be  12a08 <get_interlaced_row+0x70>
   129dc:	c2 06 61 70 	ld  [ %i1 + 0x170 ], %g1
   129e0:	10 80 00 0e 	b  12a18 <get_interlaced_row+0x80>
   129e4:	95 30 60 01 	srl  %g1, 1, %o2
   129e8:	10 80 00 0e 	b  12a20 <get_interlaced_row+0x88>
   129ec:	95 30 60 03 	srl  %g1, 3, %o2
   129f0:	c2 06 61 70 	ld  [ %i1 + 0x170 ], %g1
   129f4:	95 30 60 03 	srl  %g1, 3, %o2
   129f8:	c2 06 61 74 	ld  [ %i1 + 0x174 ], %g1
   129fc:	10 80 00 09 	b  12a20 <get_interlaced_row+0x88>
   12a00:	94 02 80 01 	add  %o2, %g1, %o2
   12a04:	c2 06 61 70 	ld  [ %i1 + 0x170 ], %g1
   12a08:	95 30 60 02 	srl  %g1, 2, %o2
   12a0c:	c2 06 61 78 	ld  [ %i1 + 0x178 ], %g1
   12a10:	10 80 00 04 	b  12a20 <get_interlaced_row+0x88>
   12a14:	94 02 80 01 	add  %o2, %g1, %o2
   12a18:	c2 06 61 7c 	ld  [ %i1 + 0x17c ], %g1
   12a1c:	94 02 80 01 	add  %o2, %g1, %o2
   12a20:	c2 06 20 04 	ld  [ %i0 + 4 ], %g1
   12a24:	c2 00 60 1c 	ld  [ %g1 + 0x1c ], %g1
   12a28:	90 10 00 18 	mov  %i0, %o0
   12a2c:	d2 06 61 6c 	ld  [ %i1 + 0x16c ], %o1
   12a30:	96 10 20 01 	mov  1, %o3
   12a34:	9f c0 40 00 	call  %g1
   12a38:	98 10 20 00 	clr  %o4
   12a3c:	c8 02 00 00 	ld  [ %o0 ], %g4
   12a40:	c2 06 60 10 	ld  [ %i1 + 0x10 ], %g1
   12a44:	d0 06 20 18 	ld  [ %i0 + 0x18 ], %o0
   12a48:	80 a2 20 00 	cmp  %o0, 0
   12a4c:	02 80 00 12 	be  12a94 <get_interlaced_row+0xfc>
   12a50:	c6 00 40 00 	ld  [ %g1 ], %g3
   12a54:	c4 09 00 00 	ldub  [ %g4 ], %g2
   12a58:	88 01 20 01 	inc  %g4
   12a5c:	c2 04 00 00 	ld  [ %l0 ], %g1
   12a60:	c2 08 40 02 	ldub  [ %g1 + %g2 ], %g1
   12a64:	c2 28 c0 00 	stb  %g1, [ %g3 ]
   12a68:	86 00 e0 01 	inc  %g3
   12a6c:	c2 04 20 04 	ld  [ %l0 + 4 ], %g1
   12a70:	c2 08 40 02 	ldub  [ %g1 + %g2 ], %g1
   12a74:	c2 28 c0 00 	stb  %g1, [ %g3 ]
   12a78:	86 00 e0 01 	inc  %g3
   12a7c:	c2 04 20 08 	ld  [ %l0 + 8 ], %g1
   12a80:	c2 08 40 02 	ldub  [ %g1 + %g2 ], %g1
   12a84:	c2 28 c0 00 	stb  %g1, [ %g3 ]
   12a88:	90 82 3f ff 	addcc  %o0, -1, %o0
   12a8c:	12 bf ff f2 	bne  12a54 <get_interlaced_row+0xbc>
   12a90:	86 00 e0 01 	inc  %g3
   12a94:	c2 06 61 70 	ld  [ %i1 + 0x170 ], %g1
   12a98:	82 00 60 01 	inc  %g1
   12a9c:	c2 26 61 70 	st  %g1, [ %i1 + 0x170 ]
   12aa0:	81 c7 e0 08 	ret 
   12aa4:	91 e8 20 01 	restore  %g0, 1, %o0

00012aa8 <finish_input_gif>:
   12aa8:	81 c3 e0 08 	retl 
   12aac:	01 00 00 00 	nop 

00012ab0 <jinit_read_gif>:
   12ab0:	9d e3 bf 98 	save  %sp, -104, %sp
   12ab4:	c2 06 20 04 	ld  [ %i0 + 4 ], %g1
   12ab8:	c2 00 40 00 	ld  [ %g1 ], %g1
   12abc:	90 10 00 18 	mov  %i0, %o0
   12ac0:	92 10 20 01 	mov  1, %o1
   12ac4:	9f c0 40 00 	call  %g1
   12ac8:	94 10 21 80 	mov  0x180, %o2
   12acc:	f0 22 20 18 	st  %i0, [ %o0 + 0x18 ]
   12ad0:	03 00 00 48 	sethi  %hi(0x12000), %g1
   12ad4:	82 10 63 ac 	or  %g1, 0x3ac, %g1	! 123ac <start_input_gif>
   12ad8:	c2 22 00 00 	st  %g1, [ %o0 ]
   12adc:	03 00 00 4a 	sethi  %hi(0x12800), %g1
   12ae0:	82 10 62 a8 	or  %g1, 0x2a8, %g1	! 12aa8 <finish_input_gif>
   12ae4:	c2 22 20 08 	st  %g1, [ %o0 + 8 ]
   12ae8:	81 c7 e0 08 	ret 
   12aec:	91 e8 00 08 	restore  %g0, %o0, %o0

00012af0 <read_byte>:
   12af0:	9d e3 bf 98 	save  %sp, -104, %sp
   12af4:	a0 10 00 18 	mov  %i0, %l0
   12af8:	40 00 83 30 	call  337b8 <_IO_getc@plt>
   12afc:	d0 06 20 0c 	ld  [ %i0 + 0xc ], %o0
   12b00:	80 a2 3f ff 	cmp  %o0, -1
   12b04:	12 80 00 0b 	bne  12b30 <read_byte+0x40>
   12b08:	b0 10 00 08 	mov  %o0, %i0
   12b0c:	c2 04 20 18 	ld  [ %l0 + 0x18 ], %g1
   12b10:	c4 00 40 00 	ld  [ %g1 ], %g2
   12b14:	82 10 20 2a 	mov  0x2a, %g1
   12b18:	c2 20 a0 14 	st  %g1, [ %g2 + 0x14 ]
   12b1c:	d0 04 20 18 	ld  [ %l0 + 0x18 ], %o0
   12b20:	c2 02 00 00 	ld  [ %o0 ], %g1
   12b24:	c2 00 40 00 	ld  [ %g1 ], %g1
   12b28:	9f c0 40 00 	call  %g1
   12b2c:	01 00 00 00 	nop 
   12b30:	81 c7 e0 08 	ret 
   12b34:	81 e8 00 00 	restore 

00012b38 <read_colormap>:
   12b38:	9d e3 bf 98 	save  %sp, -104, %sp
   12b3c:	80 a6 a0 18 	cmp  %i2, 0x18
   12b40:	02 80 00 0b 	be  12b6c <read_colormap+0x34>
   12b44:	b4 10 20 00 	clr  %i2
   12b48:	c2 06 20 18 	ld  [ %i0 + 0x18 ], %g1
   12b4c:	c4 00 40 00 	ld  [ %g1 ], %g2
   12b50:	82 10 24 08 	mov  0x408, %g1
   12b54:	c2 20 a0 14 	st  %g1, [ %g2 + 0x14 ]
   12b58:	d0 06 20 18 	ld  [ %i0 + 0x18 ], %o0
   12b5c:	c2 02 00 00 	ld  [ %o0 ], %g1
   12b60:	c2 00 40 00 	ld  [ %g1 ], %g1
   12b64:	9f c0 40 00 	call  %g1
   12b68:	01 00 00 00 	nop 
   12b6c:	80 a6 80 19 	cmp  %i2, %i1
   12b70:	16 80 00 15 	bge  12bc4 <read_colormap+0x8c>
   12b74:	01 00 00 00 	nop 
   12b78:	c2 06 20 1c 	ld  [ %i0 + 0x1c ], %g1
   12b7c:	e0 00 60 08 	ld  [ %g1 + 8 ], %l0
   12b80:	7f ff ff dc 	call  12af0 <read_byte>
   12b84:	90 10 00 18 	mov  %i0, %o0
   12b88:	d0 2c 00 1a 	stb  %o0, [ %l0 + %i2 ]
   12b8c:	c2 06 20 1c 	ld  [ %i0 + 0x1c ], %g1
   12b90:	e0 00 60 04 	ld  [ %g1 + 4 ], %l0
   12b94:	7f ff ff d7 	call  12af0 <read_byte>
   12b98:	90 10 00 18 	mov  %i0, %o0
   12b9c:	d0 2c 00 1a 	stb  %o0, [ %l0 + %i2 ]
   12ba0:	c2 06 20 1c 	ld  [ %i0 + 0x1c ], %g1
   12ba4:	e0 00 40 00 	ld  [ %g1 ], %l0
   12ba8:	7f ff ff d2 	call  12af0 <read_byte>
   12bac:	90 10 00 18 	mov  %i0, %o0
   12bb0:	d0 2c 00 1a 	stb  %o0, [ %l0 + %i2 ]
   12bb4:	b4 06 a0 01 	inc  %i2
   12bb8:	80 a6 80 19 	cmp  %i2, %i1
   12bbc:	26 bf ff f0 	bl,a   12b7c <read_colormap+0x44>
   12bc0:	c2 06 20 1c 	ld  [ %i0 + 0x1c ], %g1
   12bc4:	81 c7 e0 08 	ret 
   12bc8:	81 e8 00 00 	restore 

00012bcc <read_non_rle_pixel>:
   12bcc:	9d e3 bf 98 	save  %sp, -104, %sp
   12bd0:	e4 06 20 0c 	ld  [ %i0 + 0xc ], %l2
   12bd4:	c2 06 20 30 	ld  [ %i0 + 0x30 ], %g1
   12bd8:	80 a0 60 00 	cmp  %g1, 0
   12bdc:	04 80 00 0b 	ble  12c08 <read_non_rle_pixel+0x3c>
   12be0:	a2 10 20 00 	clr  %l1
   12be4:	a0 04 40 18 	add  %l1, %i0, %l0
   12be8:	40 00 82 f4 	call  337b8 <_IO_getc@plt>
   12bec:	90 10 00 12 	mov  %l2, %o0
   12bf0:	d0 2c 20 2c 	stb  %o0, [ %l0 + 0x2c ]
   12bf4:	a2 04 60 01 	inc  %l1
   12bf8:	c2 06 20 30 	ld  [ %i0 + 0x30 ], %g1
   12bfc:	80 a0 40 11 	cmp  %g1, %l1
   12c00:	14 bf ff fa 	bg  12be8 <read_non_rle_pixel+0x1c>
   12c04:	a0 04 40 18 	add  %l1, %i0, %l0
   12c08:	81 c7 e0 08 	ret 
   12c0c:	81 e8 00 00 	restore 

00012c10 <read_rle_pixel>:
   12c10:	9d e3 bf 98 	save  %sp, -104, %sp
   12c14:	c2 06 20 38 	ld  [ %i0 + 0x38 ], %g1
   12c18:	80 a0 60 00 	cmp  %g1, 0
   12c1c:	04 80 00 05 	ble  12c30 <read_rle_pixel+0x20>
   12c20:	e4 06 20 0c 	ld  [ %i0 + 0xc ], %l2
   12c24:	82 00 7f ff 	add  %g1, -1, %g1
   12c28:	10 80 00 1d 	b  12c9c <read_rle_pixel+0x8c>
   12c2c:	c2 26 20 38 	st  %g1, [ %i0 + 0x38 ]
   12c30:	c2 06 20 34 	ld  [ %i0 + 0x34 ], %g1
   12c34:	82 00 7f ff 	add  %g1, -1, %g1
   12c38:	80 a0 60 00 	cmp  %g1, 0
   12c3c:	16 80 00 0b 	bge  12c68 <read_rle_pixel+0x58>
   12c40:	c2 26 20 34 	st  %g1, [ %i0 + 0x34 ]
   12c44:	7f ff ff ab 	call  12af0 <read_byte>
   12c48:	90 10 00 18 	mov  %i0, %o0
   12c4c:	80 8a 20 80 	btst  0x80, %o0
   12c50:	02 80 00 05 	be  12c64 <read_rle_pixel+0x54>
   12c54:	82 0a 20 7f 	and  %o0, 0x7f, %g1
   12c58:	c2 26 20 38 	st  %g1, [ %i0 + 0x38 ]
   12c5c:	10 80 00 03 	b  12c68 <read_rle_pixel+0x58>
   12c60:	c0 26 20 34 	clr  [ %i0 + 0x34 ]
   12c64:	c2 26 20 34 	st  %g1, [ %i0 + 0x34 ]
   12c68:	c2 06 20 30 	ld  [ %i0 + 0x30 ], %g1
   12c6c:	80 a0 60 00 	cmp  %g1, 0
   12c70:	04 80 00 0b 	ble  12c9c <read_rle_pixel+0x8c>
   12c74:	a2 10 20 00 	clr  %l1
   12c78:	a0 04 40 18 	add  %l1, %i0, %l0
   12c7c:	40 00 82 cf 	call  337b8 <_IO_getc@plt>
   12c80:	90 10 00 12 	mov  %l2, %o0
   12c84:	d0 2c 20 2c 	stb  %o0, [ %l0 + 0x2c ]
   12c88:	a2 04 60 01 	inc  %l1
   12c8c:	c2 06 20 30 	ld  [ %i0 + 0x30 ], %g1
   12c90:	80 a0 40 11 	cmp  %g1, %l1
   12c94:	14 bf ff fa 	bg  12c7c <read_rle_pixel+0x6c>
   12c98:	a0 04 40 18 	add  %l1, %i0, %l0
   12c9c:	81 c7 e0 08 	ret 
   12ca0:	81 e8 00 00 	restore 

00012ca4 <get_8bit_gray_row>:
   12ca4:	9d e3 bf 98 	save  %sp, -104, %sp
   12ca8:	c2 06 60 10 	ld  [ %i1 + 0x10 ], %g1
   12cac:	f0 06 20 18 	ld  [ %i0 + 0x18 ], %i0
   12cb0:	80 a6 20 00 	cmp  %i0, 0
   12cb4:	02 80 00 0a 	be  12cdc <get_8bit_gray_row+0x38>
   12cb8:	e0 00 40 00 	ld  [ %g1 ], %l0
   12cbc:	c2 06 60 28 	ld  [ %i1 + 0x28 ], %g1
   12cc0:	9f c0 40 00 	call  %g1
   12cc4:	90 10 00 19 	mov  %i1, %o0
   12cc8:	c2 0e 60 2c 	ldub  [ %i1 + 0x2c ], %g1
   12ccc:	c2 2c 00 00 	stb  %g1, [ %l0 ]
   12cd0:	b0 86 3f ff 	addcc  %i0, -1, %i0
   12cd4:	12 bf ff fa 	bne  12cbc <get_8bit_gray_row+0x18>
   12cd8:	a0 04 20 01 	inc  %l0
   12cdc:	81 c7 e0 08 	ret 
   12ce0:	91 e8 20 01 	restore  %g0, 1, %o0

00012ce4 <get_8bit_row>:
   12ce4:	9d e3 bf 98 	save  %sp, -104, %sp
   12ce8:	e2 06 60 1c 	ld  [ %i1 + 0x1c ], %l1
   12cec:	c2 06 60 10 	ld  [ %i1 + 0x10 ], %g1
   12cf0:	f0 06 20 18 	ld  [ %i0 + 0x18 ], %i0
   12cf4:	80 a6 20 00 	cmp  %i0, 0
   12cf8:	02 80 00 14 	be  12d48 <get_8bit_row+0x64>
   12cfc:	e0 00 40 00 	ld  [ %g1 ], %l0
   12d00:	c2 06 60 28 	ld  [ %i1 + 0x28 ], %g1
   12d04:	9f c0 40 00 	call  %g1
   12d08:	90 10 00 19 	mov  %i1, %o0
   12d0c:	c4 0e 60 2c 	ldub  [ %i1 + 0x2c ], %g2
   12d10:	c2 04 40 00 	ld  [ %l1 ], %g1
   12d14:	c2 08 40 02 	ldub  [ %g1 + %g2 ], %g1
   12d18:	c2 2c 00 00 	stb  %g1, [ %l0 ]
   12d1c:	a0 04 20 01 	inc  %l0
   12d20:	c2 04 60 04 	ld  [ %l1 + 4 ], %g1
   12d24:	c2 08 40 02 	ldub  [ %g1 + %g2 ], %g1
   12d28:	c2 2c 00 00 	stb  %g1, [ %l0 ]
   12d2c:	a0 04 20 01 	inc  %l0
   12d30:	c2 04 60 08 	ld  [ %l1 + 8 ], %g1
   12d34:	c2 08 40 02 	ldub  [ %g1 + %g2 ], %g1
   12d38:	c2 2c 00 00 	stb  %g1, [ %l0 ]
   12d3c:	b0 86 3f ff 	addcc  %i0, -1, %i0
   12d40:	12 bf ff f0 	bne  12d00 <get_8bit_row+0x1c>
   12d44:	a0 04 20 01 	inc  %l0
   12d48:	81 c7 e0 08 	ret 
   12d4c:	91 e8 20 01 	restore  %g0, 1, %o0

00012d50 <get_16bit_row>:
   12d50:	9d e3 bf 98 	save  %sp, -104, %sp
   12d54:	c2 06 60 10 	ld  [ %i1 + 0x10 ], %g1
   12d58:	f0 06 20 18 	ld  [ %i0 + 0x18 ], %i0
   12d5c:	80 a6 20 00 	cmp  %i0, 0
   12d60:	02 80 00 19 	be  12dc4 <get_16bit_row+0x74>
   12d64:	e0 00 40 00 	ld  [ %g1 ], %l0
   12d68:	03 00 00 86 	sethi  %hi(0x21800), %g1
   12d6c:	a2 10 61 48 	or  %g1, 0x148, %l1	! 21948 <c5to8bits>
   12d70:	c2 06 60 28 	ld  [ %i1 + 0x28 ], %g1
   12d74:	9f c0 40 00 	call  %g1
   12d78:	90 10 00 19 	mov  %i1, %o0
   12d7c:	c4 0e 60 2c 	ldub  [ %i1 + 0x2c ], %g2
   12d80:	c2 0e 60 2d 	ldub  [ %i1 + 0x2d ], %g1
   12d84:	83 28 60 08 	sll  %g1, 8, %g1
   12d88:	84 00 80 01 	add  %g2, %g1, %g2
   12d8c:	82 08 a0 1f 	and  %g2, 0x1f, %g1
   12d90:	c2 0c 40 01 	ldub  [ %l1 + %g1 ], %g1
   12d94:	c2 2c 20 02 	stb  %g1, [ %l0 + 2 ]
   12d98:	85 38 a0 05 	sra  %g2, 5, %g2
   12d9c:	82 08 a0 1f 	and  %g2, 0x1f, %g1
   12da0:	c2 0c 40 01 	ldub  [ %l1 + %g1 ], %g1
   12da4:	c2 2c 20 01 	stb  %g1, [ %l0 + 1 ]
   12da8:	85 38 a0 05 	sra  %g2, 5, %g2
   12dac:	84 08 a0 1f 	and  %g2, 0x1f, %g2
   12db0:	c2 0c 40 02 	ldub  [ %l1 + %g2 ], %g1
   12db4:	c2 2c 00 00 	stb  %g1, [ %l0 ]
   12db8:	b0 86 3f ff 	addcc  %i0, -1, %i0
   12dbc:	12 bf ff ed 	bne  12d70 <get_16bit_row+0x20>
   12dc0:	a0 04 20 03 	add  %l0, 3, %l0
   12dc4:	81 c7 e0 08 	ret 
   12dc8:	91 e8 20 01 	restore  %g0, 1, %o0

00012dcc <get_24bit_row>:
   12dcc:	9d e3 bf 98 	save  %sp, -104, %sp
   12dd0:	c2 06 60 10 	ld  [ %i1 + 0x10 ], %g1
   12dd4:	f0 06 20 18 	ld  [ %i0 + 0x18 ], %i0
   12dd8:	80 a6 20 00 	cmp  %i0, 0
   12ddc:	02 80 00 10 	be  12e1c <get_24bit_row+0x50>
   12de0:	e0 00 40 00 	ld  [ %g1 ], %l0
   12de4:	c2 06 60 28 	ld  [ %i1 + 0x28 ], %g1
   12de8:	9f c0 40 00 	call  %g1
   12dec:	90 10 00 19 	mov  %i1, %o0
   12df0:	c2 0e 60 2e 	ldub  [ %i1 + 0x2e ], %g1
   12df4:	c2 2c 00 00 	stb  %g1, [ %l0 ]
   12df8:	a0 04 20 01 	inc  %l0
   12dfc:	c2 0e 60 2d 	ldub  [ %i1 + 0x2d ], %g1
   12e00:	c2 2c 00 00 	stb  %g1, [ %l0 ]
   12e04:	a0 04 20 01 	inc  %l0
   12e08:	c2 0e 60 2c 	ldub  [ %i1 + 0x2c ], %g1
   12e0c:	c2 2c 00 00 	stb  %g1, [ %l0 ]
   12e10:	b0 86 3f ff 	addcc  %i0, -1, %i0
   12e14:	12 bf ff f4 	bne  12de4 <get_24bit_row+0x18>
   12e18:	a0 04 20 01 	inc  %l0
   12e1c:	81 c7 e0 08 	ret 
   12e20:	91 e8 20 01 	restore  %g0, 1, %o0

00012e24 <get_memory_row>:
   12e24:	9d e3 bf 98 	save  %sp, -104, %sp
   12e28:	90 10 00 18 	mov  %i0, %o0
   12e2c:	d4 06 20 1c 	ld  [ %i0 + 0x1c ], %o2
   12e30:	c2 06 60 24 	ld  [ %i1 + 0x24 ], %g1
   12e34:	94 22 80 01 	sub  %o2, %g1, %o2
   12e38:	c2 06 20 04 	ld  [ %i0 + 4 ], %g1
   12e3c:	c2 00 60 1c 	ld  [ %g1 + 0x1c ], %g1
   12e40:	d2 06 60 20 	ld  [ %i1 + 0x20 ], %o1
   12e44:	94 02 bf ff 	add  %o2, -1, %o2
   12e48:	96 10 20 01 	mov  1, %o3
   12e4c:	9f c0 40 00 	call  %g1
   12e50:	98 10 20 00 	clr  %o4
   12e54:	d0 26 60 10 	st  %o0, [ %i1 + 0x10 ]
   12e58:	c2 06 60 24 	ld  [ %i1 + 0x24 ], %g1
   12e5c:	82 00 60 01 	inc  %g1
   12e60:	c2 26 60 24 	st  %g1, [ %i1 + 0x24 ]
   12e64:	81 c7 e0 08 	ret 
   12e68:	91 e8 20 01 	restore  %g0, 1, %o0

00012e6c <preload_image>:
   12e6c:	9d e3 bf 98 	save  %sp, -104, %sp
   12e70:	a2 10 00 19 	mov  %i1, %l1
   12e74:	e0 06 20 08 	ld  [ %i0 + 8 ], %l0
   12e78:	c2 06 20 1c 	ld  [ %i0 + 0x1c ], %g1
   12e7c:	80 a0 60 00 	cmp  %g1, 0
   12e80:	08 80 00 1d 	bleu  12ef4 <preload_image+0x88>
   12e84:	a4 10 20 00 	clr  %l2
   12e88:	80 a4 20 00 	cmp  %l0, 0
   12e8c:	22 80 00 09 	be,a   12eb0 <preload_image+0x44>
   12e90:	c2 06 20 04 	ld  [ %i0 + 4 ], %g1
   12e94:	e4 24 20 04 	st  %l2, [ %l0 + 4 ]
   12e98:	c2 06 20 1c 	ld  [ %i0 + 0x1c ], %g1
   12e9c:	c2 24 20 08 	st  %g1, [ %l0 + 8 ]
   12ea0:	c2 04 00 00 	ld  [ %l0 ], %g1
   12ea4:	9f c0 40 00 	call  %g1
   12ea8:	90 10 00 18 	mov  %i0, %o0
   12eac:	c2 06 20 04 	ld  [ %i0 + 4 ], %g1
   12eb0:	c2 00 60 1c 	ld  [ %g1 + 0x1c ], %g1
   12eb4:	90 10 00 18 	mov  %i0, %o0
   12eb8:	d2 04 60 20 	ld  [ %l1 + 0x20 ], %o1
   12ebc:	94 10 00 12 	mov  %l2, %o2
   12ec0:	96 10 20 01 	mov  1, %o3
   12ec4:	9f c0 40 00 	call  %g1
   12ec8:	98 10 20 01 	mov  1, %o4
   12ecc:	d0 24 60 10 	st  %o0, [ %l1 + 0x10 ]
   12ed0:	c2 04 60 3c 	ld  [ %l1 + 0x3c ], %g1
   12ed4:	90 10 00 18 	mov  %i0, %o0
   12ed8:	9f c0 40 00 	call  %g1
   12edc:	92 10 00 19 	mov  %i1, %o1
   12ee0:	a4 04 a0 01 	inc  %l2
   12ee4:	c2 06 20 1c 	ld  [ %i0 + 0x1c ], %g1
   12ee8:	80 a0 40 12 	cmp  %g1, %l2
   12eec:	18 bf ff e8 	bgu  12e8c <preload_image+0x20>
   12ef0:	80 a4 20 00 	cmp  %l0, 0
   12ef4:	80 a4 20 00 	cmp  %l0, 0
   12ef8:	02 80 00 06 	be  12f10 <preload_image+0xa4>
   12efc:	03 00 00 4b 	sethi  %hi(0x12c00), %g1
   12f00:	c2 04 20 14 	ld  [ %l0 + 0x14 ], %g1
   12f04:	82 00 60 01 	inc  %g1
   12f08:	c2 24 20 14 	st  %g1, [ %l0 + 0x14 ]
   12f0c:	03 00 00 4b 	sethi  %hi(0x12c00), %g1
   12f10:	82 10 62 24 	or  %g1, 0x224, %g1	! 12e24 <get_memory_row>
   12f14:	c2 24 60 04 	st  %g1, [ %l1 + 4 ]
   12f18:	c0 24 60 24 	clr  [ %l1 + 0x24 ]
   12f1c:	90 10 00 18 	mov  %i0, %o0
   12f20:	7f ff ff c1 	call  12e24 <get_memory_row>
   12f24:	92 10 00 19 	mov  %i1, %o1
   12f28:	81 c7 e0 08 	ret 
   12f2c:	91 e8 00 08 	restore  %g0, %o0, %o0

00012f30 <start_input_tga>:
   12f30:	9d e3 bf 80 	save  %sp, -128, %sp
   12f34:	90 07 bf e0 	add  %fp, -32, %o0
   12f38:	92 10 20 01 	mov  1, %o1
   12f3c:	94 10 20 12 	mov  0x12, %o2
   12f40:	40 00 81 fa 	call  33728 <fread@plt>
   12f44:	d6 06 60 0c 	ld  [ %i1 + 0xc ], %o3
   12f48:	80 a2 20 12 	cmp  %o0, 0x12
   12f4c:	02 80 00 08 	be  12f6c <start_input_tga+0x3c>
   12f50:	82 10 20 2a 	mov  0x2a, %g1
   12f54:	c4 06 00 00 	ld  [ %i0 ], %g2
   12f58:	c2 20 a0 14 	st  %g1, [ %g2 + 0x14 ]
   12f5c:	c2 06 00 00 	ld  [ %i0 ], %g1
   12f60:	c2 00 40 00 	ld  [ %g1 ], %g1
   12f64:	9f c0 40 00 	call  %g1
   12f68:	90 10 00 18 	mov  %i0, %o0
   12f6c:	c2 0f bf f0 	ldub  [ %fp + -16 ], %g1
   12f70:	80 a0 60 0f 	cmp  %g1, 0xf
   12f74:	12 80 00 05 	bne  12f88 <start_input_tga+0x58>
   12f78:	e2 0f bf e0 	ldub  [ %fp + -32 ], %l1
   12f7c:	82 10 20 10 	mov  0x10, %g1
   12f80:	c2 2f bf f0 	stb  %g1, [ %fp + -16 ]
   12f84:	e2 0f bf e0 	ldub  [ %fp + -32 ], %l1
   12f88:	ec 0f bf e1 	ldub  [ %fp + -31 ], %l6
   12f8c:	e0 0f bf e2 	ldub  [ %fp + -30 ], %l0
   12f90:	ea 0f bf e5 	ldub  [ %fp + -27 ], %l5
   12f94:	c2 0f bf e6 	ldub  [ %fp + -26 ], %g1
   12f98:	83 28 60 08 	sll  %g1, 8, %g1
   12f9c:	aa 05 40 01 	add  %l5, %g1, %l5
   12fa0:	e6 0f bf ec 	ldub  [ %fp + -20 ], %l3
   12fa4:	c2 0f bf ed 	ldub  [ %fp + -19 ], %g1
   12fa8:	83 28 60 08 	sll  %g1, 8, %g1
   12fac:	a6 04 c0 01 	add  %l3, %g1, %l3
   12fb0:	e8 0f bf ee 	ldub  [ %fp + -18 ], %l4
   12fb4:	c2 0f bf ef 	ldub  [ %fp + -17 ], %g1
   12fb8:	83 28 60 08 	sll  %g1, 8, %g1
   12fbc:	a8 05 00 01 	add  %l4, %g1, %l4
   12fc0:	c6 0f bf f0 	ldub  [ %fp + -16 ], %g3
   12fc4:	85 30 e0 03 	srl  %g3, 3, %g2
   12fc8:	c4 26 60 30 	st  %g2, [ %i1 + 0x30 ]
   12fcc:	c2 0f bf f1 	ldub  [ %fp + -15 ], %g1
   12fd0:	a5 30 60 05 	srl  %g1, 5, %l2
   12fd4:	a4 1c a0 01 	xor  %l2, 1, %l2
   12fd8:	a4 0c a0 01 	and  %l2, 1, %l2
   12fdc:	80 a5 a0 01 	cmp  %l6, 1
   12fe0:	14 80 00 0b 	bg  1300c <start_input_tga+0xdc>
   12fe4:	89 38 60 06 	sra  %g1, 6, %g4
   12fe8:	80 a0 a0 00 	cmp  %g2, 0
   12fec:	04 80 00 08 	ble  1300c <start_input_tga+0xdc>
   12ff0:	80 a0 a0 04 	cmp  %g2, 4
   12ff4:	34 80 00 07 	bg,a   13010 <start_input_tga+0xe0>
   12ff8:	c4 06 00 00 	ld  [ %i0 ], %g2
   12ffc:	82 08 e0 07 	and  %g3, 7, %g1
   13000:	80 90 40 04 	orcc  %g1, %g4, %g0
   13004:	02 80 00 0a 	be  1302c <start_input_tga+0xfc>
   13008:	80 a4 20 08 	cmp  %l0, 8
   1300c:	c4 06 00 00 	ld  [ %i0 ], %g2
   13010:	82 10 24 09 	mov  0x409, %g1
   13014:	c2 20 a0 14 	st  %g1, [ %g2 + 0x14 ]
   13018:	c2 06 00 00 	ld  [ %i0 ], %g1
   1301c:	c2 00 40 00 	ld  [ %g1 ], %g1
   13020:	9f c0 40 00 	call  %g1
   13024:	90 10 00 18 	mov  %i0, %o0
   13028:	80 a4 20 08 	cmp  %l0, 8
   1302c:	04 80 00 09 	ble  13050 <start_input_tga+0x120>
   13030:	03 00 00 4a 	sethi  %hi(0x12800), %g1
   13034:	03 00 00 4b 	sethi  %hi(0x12c00), %g1
   13038:	82 10 60 10 	or  %g1, 0x10, %g1	! 12c10 <read_rle_pixel>
   1303c:	c2 26 60 28 	st  %g1, [ %i1 + 0x28 ]
   13040:	c0 26 60 38 	clr  [ %i1 + 0x38 ]
   13044:	c0 26 60 34 	clr  [ %i1 + 0x34 ]
   13048:	10 80 00 04 	b  13058 <start_input_tga+0x128>
   1304c:	a0 04 3f f8 	add  %l0, -8, %l0
   13050:	82 10 63 cc 	or  %g1, 0x3cc, %g1
   13054:	c2 26 60 28 	st  %g1, [ %i1 + 0x28 ]
   13058:	ae 10 20 03 	mov  3, %l7
   1305c:	82 10 20 02 	mov  2, %g1
   13060:	80 a4 20 02 	cmp  %l0, 2
   13064:	02 80 00 2f 	be  13120 <start_input_tga+0x1f0>
   13068:	c2 26 20 24 	st  %g1, [ %i0 + 0x24 ]
   1306c:	80 a4 20 02 	cmp  %l0, 2
   13070:	14 80 00 07 	bg  1308c <start_input_tga+0x15c>
   13074:	80 a4 20 03 	cmp  %l0, 3
   13078:	80 a4 20 01 	cmp  %l0, 1
   1307c:	22 80 00 08 	be,a   1309c <start_input_tga+0x16c>
   13080:	c2 06 60 30 	ld  [ %i1 + 0x30 ], %g1
   13084:	10 80 00 70 	b  13244 <start_input_tga+0x314>
   13088:	c4 06 00 00 	ld  [ %i0 ], %g2
   1308c:	22 80 00 51 	be,a   131d0 <start_input_tga+0x2a0>
   13090:	ae 10 20 01 	mov  1, %l7
   13094:	10 80 00 6c 	b  13244 <start_input_tga+0x314>
   13098:	c4 06 00 00 	ld  [ %i0 ], %g2
   1309c:	82 18 60 01 	xor  %g1, 1, %g1
   130a0:	80 a0 00 01 	cmp  %g0, %g1
   130a4:	84 60 3f ff 	subx  %g0, -1, %g2
   130a8:	82 1d a0 01 	xor  %l6, 1, %g1
   130ac:	80 a0 00 01 	cmp  %g0, %g1
   130b0:	82 60 3f ff 	subx  %g0, -1, %g1
   130b4:	80 88 80 01 	btst  %g2, %g1
   130b8:	02 80 00 05 	be  130cc <start_input_tga+0x19c>
   130bc:	03 00 00 4b 	sethi  %hi(0x12c00), %g1
   130c0:	82 10 60 e4 	or  %g1, 0xe4, %g1	! 12ce4 <get_8bit_row>
   130c4:	10 80 00 09 	b  130e8 <start_input_tga+0x1b8>
   130c8:	c2 26 60 3c 	st  %g1, [ %i1 + 0x3c ]
   130cc:	c4 06 00 00 	ld  [ %i0 ], %g2
   130d0:	82 10 24 09 	mov  0x409, %g1
   130d4:	c2 20 a0 14 	st  %g1, [ %g2 + 0x14 ]
   130d8:	c2 06 00 00 	ld  [ %i0 ], %g1
   130dc:	c2 00 40 00 	ld  [ %g1 ], %g1
   130e0:	9f c0 40 00 	call  %g1
   130e4:	90 10 00 18 	mov  %i0, %o0
   130e8:	c4 06 00 00 	ld  [ %i0 ], %g2
   130ec:	82 10 24 0d 	mov  0x40d, %g1
   130f0:	c2 20 a0 14 	st  %g1, [ %g2 + 0x14 ]
   130f4:	c2 06 00 00 	ld  [ %i0 ], %g1
   130f8:	e6 20 60 18 	st  %l3, [ %g1 + 0x18 ]
   130fc:	c2 06 00 00 	ld  [ %i0 ], %g1
   13100:	e8 20 60 1c 	st  %l4, [ %g1 + 0x1c ]
   13104:	c2 06 00 00 	ld  [ %i0 ], %g1
   13108:	c2 00 60 04 	ld  [ %g1 + 4 ], %g1
   1310c:	90 10 00 18 	mov  %i0, %o0
   13110:	9f c0 40 00 	call  %g1
   13114:	92 10 20 01 	mov  1, %o1
   13118:	10 80 00 52 	b  13260 <start_input_tga+0x330>
   1311c:	80 a4 a0 00 	cmp  %l2, 0
   13120:	c2 06 60 30 	ld  [ %i1 + 0x30 ], %g1
   13124:	80 a0 60 03 	cmp  %g1, 3
   13128:	22 80 00 10 	be,a   13168 <start_input_tga+0x238>
   1312c:	03 00 00 4b 	sethi  %hi(0x12c00), %g1
   13130:	14 80 00 07 	bg  1314c <start_input_tga+0x21c>
   13134:	80 a0 60 04 	cmp  %g1, 4
   13138:	80 a0 60 02 	cmp  %g1, 2
   1313c:	02 80 00 08 	be  1315c <start_input_tga+0x22c>
   13140:	03 00 00 4b 	sethi  %hi(0x12c00), %g1
   13144:	10 80 00 0f 	b  13180 <start_input_tga+0x250>
   13148:	c4 06 00 00 	ld  [ %i0 ], %g2
   1314c:	02 80 00 0a 	be  13174 <start_input_tga+0x244>
   13150:	03 00 00 4b 	sethi  %hi(0x12c00), %g1
   13154:	10 80 00 0b 	b  13180 <start_input_tga+0x250>
   13158:	c4 06 00 00 	ld  [ %i0 ], %g2
   1315c:	82 10 61 50 	or  %g1, 0x150, %g1
   13160:	10 80 00 0e 	b  13198 <start_input_tga+0x268>
   13164:	c2 26 60 3c 	st  %g1, [ %i1 + 0x3c ]
   13168:	82 10 61 cc 	or  %g1, 0x1cc, %g1
   1316c:	10 80 00 0b 	b  13198 <start_input_tga+0x268>
   13170:	c2 26 60 3c 	st  %g1, [ %i1 + 0x3c ]
   13174:	82 10 61 cc 	or  %g1, 0x1cc, %g1
   13178:	10 80 00 08 	b  13198 <start_input_tga+0x268>
   1317c:	c2 26 60 3c 	st  %g1, [ %i1 + 0x3c ]
   13180:	82 10 24 09 	mov  0x409, %g1
   13184:	c2 20 a0 14 	st  %g1, [ %g2 + 0x14 ]
   13188:	c2 06 00 00 	ld  [ %i0 ], %g1
   1318c:	c2 00 40 00 	ld  [ %g1 ], %g1
   13190:	9f c0 40 00 	call  %g1
   13194:	90 10 00 18 	mov  %i0, %o0
   13198:	c4 06 00 00 	ld  [ %i0 ], %g2
   1319c:	82 10 24 0b 	mov  0x40b, %g1
   131a0:	c2 20 a0 14 	st  %g1, [ %g2 + 0x14 ]
   131a4:	c2 06 00 00 	ld  [ %i0 ], %g1
   131a8:	e6 20 60 18 	st  %l3, [ %g1 + 0x18 ]
   131ac:	c2 06 00 00 	ld  [ %i0 ], %g1
   131b0:	e8 20 60 1c 	st  %l4, [ %g1 + 0x1c ]
   131b4:	c2 06 00 00 	ld  [ %i0 ], %g1
   131b8:	c2 00 60 04 	ld  [ %g1 + 4 ], %g1
   131bc:	90 10 00 18 	mov  %i0, %o0
   131c0:	9f c0 40 00 	call  %g1
   131c4:	92 10 20 01 	mov  1, %o1
   131c8:	10 80 00 26 	b  13260 <start_input_tga+0x330>
   131cc:	80 a4 a0 00 	cmp  %l2, 0
   131d0:	ee 26 20 24 	st  %l7, [ %i0 + 0x24 ]
   131d4:	c2 06 60 30 	ld  [ %i1 + 0x30 ], %g1
   131d8:	80 a0 60 01 	cmp  %g1, 1
   131dc:	32 80 00 06 	bne,a   131f4 <start_input_tga+0x2c4>
   131e0:	c4 06 00 00 	ld  [ %i0 ], %g2
   131e4:	03 00 00 4b 	sethi  %hi(0x12c00), %g1
   131e8:	82 10 60 a4 	or  %g1, 0xa4, %g1	! 12ca4 <get_8bit_gray_row>
   131ec:	10 80 00 08 	b  1320c <start_input_tga+0x2dc>
   131f0:	c2 26 60 3c 	st  %g1, [ %i1 + 0x3c ]
   131f4:	82 10 24 09 	mov  0x409, %g1
   131f8:	c2 20 a0 14 	st  %g1, [ %g2 + 0x14 ]
   131fc:	c2 06 00 00 	ld  [ %i0 ], %g1
   13200:	c2 00 40 00 	ld  [ %g1 ], %g1
   13204:	9f c0 40 00 	call  %g1
   13208:	90 10 00 18 	mov  %i0, %o0
   1320c:	c4 06 00 00 	ld  [ %i0 ], %g2
   13210:	82 10 24 0c 	mov  0x40c, %g1
   13214:	c2 20 a0 14 	st  %g1, [ %g2 + 0x14 ]
   13218:	c2 06 00 00 	ld  [ %i0 ], %g1
   1321c:	e6 20 60 18 	st  %l3, [ %g1 + 0x18 ]
   13220:	c2 06 00 00 	ld  [ %i0 ], %g1
   13224:	e8 20 60 1c 	st  %l4, [ %g1 + 0x1c ]
   13228:	c2 06 00 00 	ld  [ %i0 ], %g1
   1322c:	c2 00 60 04 	ld  [ %g1 + 4 ], %g1
   13230:	90 10 00 18 	mov  %i0, %o0
   13234:	9f c0 40 00 	call  %g1
   13238:	92 10 20 01 	mov  1, %o1
   1323c:	10 80 00 09 	b  13260 <start_input_tga+0x330>
   13240:	80 a4 a0 00 	cmp  %l2, 0
   13244:	82 10 24 09 	mov  0x409, %g1
   13248:	c2 20 a0 14 	st  %g1, [ %g2 + 0x14 ]
   1324c:	c2 06 00 00 	ld  [ %i0 ], %g1
   13250:	c2 00 40 00 	ld  [ %g1 ], %g1
   13254:	9f c0 40 00 	call  %g1
   13258:	90 10 00 18 	mov  %i0, %o0
   1325c:	80 a4 a0 00 	cmp  %l2, 0
   13260:	22 80 00 19 	be,a   132c4 <start_input_tga+0x394>
   13264:	c0 26 60 20 	clr  [ %i1 + 0x20 ]
   13268:	c2 06 20 04 	ld  [ %i0 + 4 ], %g1
   1326c:	c2 00 60 10 	ld  [ %g1 + 0x10 ], %g1
   13270:	90 10 00 18 	mov  %i0, %o0
   13274:	92 10 20 01 	mov  1, %o1
   13278:	94 10 20 00 	clr  %o2
   1327c:	96 5c c0 17 	smul  %l3, %l7, %o3
   13280:	98 10 00 14 	mov  %l4, %o4
   13284:	9f c0 40 00 	call  %g1
   13288:	9a 10 20 01 	mov  1, %o5
   1328c:	d0 26 60 20 	st  %o0, [ %i1 + 0x20 ]
   13290:	c4 06 20 08 	ld  [ %i0 + 8 ], %g2
   13294:	80 a0 a0 00 	cmp  %g2, 0
   13298:	02 80 00 06 	be  132b0 <start_input_tga+0x380>
   1329c:	82 10 20 01 	mov  1, %g1
   132a0:	c2 00 a0 18 	ld  [ %g2 + 0x18 ], %g1
   132a4:	82 00 60 01 	inc  %g1
   132a8:	c2 20 a0 18 	st  %g1, [ %g2 + 0x18 ]
   132ac:	82 10 20 01 	mov  1, %g1
   132b0:	c2 26 60 14 	st  %g1, [ %i1 + 0x14 ]
   132b4:	03 00 00 4b 	sethi  %hi(0x12c00), %g1
   132b8:	82 10 62 6c 	or  %g1, 0x26c, %g1	! 12e6c <preload_image>
   132bc:	10 80 00 0e 	b  132f4 <start_input_tga+0x3c4>
   132c0:	c2 26 60 04 	st  %g1, [ %i1 + 4 ]
   132c4:	c2 06 20 04 	ld  [ %i0 + 4 ], %g1
   132c8:	c2 00 60 08 	ld  [ %g1 + 8 ], %g1
   132cc:	90 10 00 18 	mov  %i0, %o0
   132d0:	92 10 20 01 	mov  1, %o1
   132d4:	94 5c c0 17 	smul  %l3, %l7, %o2
   132d8:	9f c0 40 00 	call  %g1
   132dc:	96 10 20 01 	mov  1, %o3
   132e0:	d0 26 60 10 	st  %o0, [ %i1 + 0x10 ]
   132e4:	82 10 20 01 	mov  1, %g1
   132e8:	c2 26 60 14 	st  %g1, [ %i1 + 0x14 ]
   132ec:	c2 06 60 3c 	ld  [ %i1 + 0x3c ], %g1
   132f0:	c2 26 60 04 	st  %g1, [ %i1 + 4 ]
   132f4:	a2 04 7f ff 	add  %l1, -1, %l1
   132f8:	80 a4 7f ff 	cmp  %l1, -1
   132fc:	02 80 00 08 	be  1331c <start_input_tga+0x3ec>
   13300:	80 a5 60 00 	cmp  %l5, 0
   13304:	7f ff fd fb 	call  12af0 <read_byte>
   13308:	90 10 00 19 	mov  %i1, %o0
   1330c:	a2 04 7f ff 	add  %l1, -1, %l1
   13310:	80 a4 7f ff 	cmp  %l1, -1
   13314:	12 bf ff fc 	bne  13304 <start_input_tga+0x3d4>
   13318:	80 a5 60 00 	cmp  %l5, 0
   1331c:	02 80 00 20 	be  1339c <start_input_tga+0x46c>
   13320:	80 a5 a0 00 	cmp  %l6, 0
   13324:	80 a5 61 00 	cmp  %l5, 0x100
   13328:	18 80 00 08 	bgu  13348 <start_input_tga+0x418>
   1332c:	c4 0f bf e3 	ldub  [ %fp + -29 ], %g2
   13330:	c2 0f bf e4 	ldub  [ %fp + -28 ], %g1
   13334:	83 28 60 08 	sll  %g1, 8, %g1
   13338:	84 00 80 01 	add  %g2, %g1, %g2
   1333c:	80 a0 a0 00 	cmp  %g2, 0
   13340:	22 80 00 0a 	be,a   13368 <start_input_tga+0x438>
   13344:	c2 06 20 04 	ld  [ %i0 + 4 ], %g1
   13348:	c4 06 00 00 	ld  [ %i0 ], %g2
   1334c:	82 10 24 08 	mov  0x408, %g1
   13350:	c2 20 a0 14 	st  %g1, [ %g2 + 0x14 ]
   13354:	c2 06 00 00 	ld  [ %i0 ], %g1
   13358:	c2 00 40 00 	ld  [ %g1 ], %g1
   1335c:	9f c0 40 00 	call  %g1
   13360:	90 10 00 18 	mov  %i0, %o0
   13364:	c2 06 20 04 	ld  [ %i0 + 4 ], %g1
   13368:	c2 00 60 08 	ld  [ %g1 + 8 ], %g1
   1336c:	90 10 00 18 	mov  %i0, %o0
   13370:	92 10 20 01 	mov  1, %o1
   13374:	94 10 00 15 	mov  %l5, %o2
   13378:	9f c0 40 00 	call  %g1
   1337c:	96 10 20 03 	mov  3, %o3
   13380:	d0 26 60 1c 	st  %o0, [ %i1 + 0x1c ]
   13384:	90 10 00 19 	mov  %i1, %o0
   13388:	92 10 00 15 	mov  %l5, %o1
   1338c:	7f ff fd eb 	call  12b38 <read_colormap>
   13390:	d4 0f bf e7 	ldub  [ %fp + -25 ], %o2
   13394:	10 80 00 0d 	b  133c8 <start_input_tga+0x498>
   13398:	ee 26 20 20 	st  %l7, [ %i0 + 0x20 ]
   1339c:	22 80 00 0a 	be,a   133c4 <start_input_tga+0x494>
   133a0:	c0 26 60 1c 	clr  [ %i1 + 0x1c ]
   133a4:	c4 06 00 00 	ld  [ %i0 ], %g2
   133a8:	82 10 24 09 	mov  0x409, %g1
   133ac:	c2 20 a0 14 	st  %g1, [ %g2 + 0x14 ]
   133b0:	c2 06 00 00 	ld  [ %i0 ], %g1
   133b4:	c2 00 40 00 	ld  [ %g1 ], %g1
   133b8:	9f c0 40 00 	call  %g1
   133bc:	90 10 00 18 	mov  %i0, %o0
   133c0:	c0 26 60 1c 	clr  [ %i1 + 0x1c ]
   133c4:	ee 26 20 20 	st  %l7, [ %i0 + 0x20 ]
   133c8:	82 10 20 08 	mov  8, %g1
   133cc:	c2 26 20 30 	st  %g1, [ %i0 + 0x30 ]
   133d0:	e6 26 20 18 	st  %l3, [ %i0 + 0x18 ]
   133d4:	e8 26 20 1c 	st  %l4, [ %i0 + 0x1c ]
   133d8:	81 c7 e0 08 	ret 
   133dc:	81 e8 00 00 	restore 

000133e0 <finish_input_tga>:
   133e0:	81 c3 e0 08 	retl 
   133e4:	01 00 00 00 	nop 

000133e8 <jinit_read_targa>:
   133e8:	9d e3 bf 98 	save  %sp, -104, %sp
   133ec:	c2 06 20 04 	ld  [ %i0 + 4 ], %g1
   133f0:	c2 00 40 00 	ld  [ %g1 ], %g1
   133f4:	90 10 00 18 	mov  %i0, %o0
   133f8:	92 10 20 01 	mov  1, %o1
   133fc:	9f c0 40 00 	call  %g1
   13400:	94 10 20 40 	mov  0x40, %o2
   13404:	f0 22 20 18 	st  %i0, [ %o0 + 0x18 ]
   13408:	03 00 00 4b 	sethi  %hi(0x12c00), %g1
   1340c:	82 10 63 30 	or  %g1, 0x330, %g1	! 12f30 <start_input_tga>
   13410:	c2 22 00 00 	st  %g1, [ %o0 ]
   13414:	03 00 00 4c 	sethi  %hi(0x13000), %g1
   13418:	82 10 63 e0 	or  %g1, 0x3e0, %g1	! 133e0 <finish_input_tga>
   1341c:	c2 22 20 08 	st  %g1, [ %o0 + 8 ]
   13420:	81 c7 e0 08 	ret 
   13424:	91 e8 00 08 	restore  %g0, %o0, %o0

00013428 <read_byte>:
   13428:	9d e3 bf 98 	save  %sp, -104, %sp
   1342c:	a0 10 00 18 	mov  %i0, %l0
   13430:	40 00 80 e2 	call  337b8 <_IO_getc@plt>
   13434:	d0 06 20 0c 	ld  [ %i0 + 0xc ], %o0
   13438:	80 a2 3f ff 	cmp  %o0, -1
   1343c:	12 80 00 0b 	bne  13468 <read_byte+0x40>
   13440:	b0 10 00 08 	mov  %o0, %i0
   13444:	c2 04 20 18 	ld  [ %l0 + 0x18 ], %g1
   13448:	c4 00 40 00 	ld  [ %g1 ], %g2
   1344c:	82 10 20 2a 	mov  0x2a, %g1
   13450:	c2 20 a0 14 	st  %g1, [ %g2 + 0x14 ]
   13454:	d0 04 20 18 	ld  [ %l0 + 0x18 ], %o0
   13458:	c2 02 00 00 	ld  [ %o0 ], %g1
   1345c:	c2 00 40 00 	ld  [ %g1 ], %g1
   13460:	9f c0 40 00 	call  %g1
   13464:	01 00 00 00 	nop 
   13468:	81 c7 e0 08 	ret 
   1346c:	81 e8 00 00 	restore 

00013470 <read_colormap>:
   13470:	9d e3 bf 98 	save  %sp, -104, %sp
   13474:	80 a6 a0 03 	cmp  %i2, 3
   13478:	02 80 00 06 	be  13490 <read_colormap+0x20>
   1347c:	80 a6 a0 04 	cmp  %i2, 4
   13480:	22 80 00 1c 	be,a   134f0 <read_colormap+0x80>
   13484:	b4 10 20 00 	clr  %i2
   13488:	10 80 00 33 	b  13554 <read_colormap+0xe4>
   1348c:	c2 06 20 18 	ld  [ %i0 + 0x18 ], %g1
   13490:	b4 10 20 00 	clr  %i2
   13494:	80 a6 80 19 	cmp  %i2, %i1
   13498:	16 80 00 37 	bge  13574 <read_colormap+0x104>
   1349c:	01 00 00 00 	nop 
   134a0:	c2 06 20 1c 	ld  [ %i0 + 0x1c ], %g1
   134a4:	e0 00 60 08 	ld  [ %g1 + 8 ], %l0
   134a8:	7f ff ff e0 	call  13428 <read_byte>
   134ac:	90 10 00 18 	mov  %i0, %o0
   134b0:	d0 2c 00 1a 	stb  %o0, [ %l0 + %i2 ]
   134b4:	c2 06 20 1c 	ld  [ %i0 + 0x1c ], %g1
   134b8:	e0 00 60 04 	ld  [ %g1 + 4 ], %l0
   134bc:	7f ff ff db 	call  13428 <read_byte>
   134c0:	90 10 00 18 	mov  %i0, %o0
   134c4:	d0 2c 00 1a 	stb  %o0, [ %l0 + %i2 ]
   134c8:	c2 06 20 1c 	ld  [ %i0 + 0x1c ], %g1
   134cc:	e0 00 40 00 	ld  [ %g1 ], %l0
   134d0:	7f ff ff d6 	call  13428 <read_byte>
   134d4:	90 10 00 18 	mov  %i0, %o0
   134d8:	d0 2c 00 1a 	stb  %o0, [ %l0 + %i2 ]
   134dc:	b4 06 a0 01 	inc  %i2
   134e0:	80 a6 80 19 	cmp  %i2, %i1
   134e4:	26 bf ff f0 	bl,a   134a4 <read_colormap+0x34>
   134e8:	c2 06 20 1c 	ld  [ %i0 + 0x1c ], %g1
   134ec:	30 80 00 22 	b,a   13574 <read_colormap+0x104>
   134f0:	80 a6 80 19 	cmp  %i2, %i1
   134f4:	16 80 00 20 	bge  13574 <read_colormap+0x104>
   134f8:	01 00 00 00 	nop 
   134fc:	c2 06 20 1c 	ld  [ %i0 + 0x1c ], %g1
   13500:	e0 00 60 08 	ld  [ %g1 + 8 ], %l0
   13504:	7f ff ff c9 	call  13428 <read_byte>
   13508:	90 10 00 18 	mov  %i0, %o0
   1350c:	d0 2c 00 1a 	stb  %o0, [ %l0 + %i2 ]
   13510:	c2 06 20 1c 	ld  [ %i0 + 0x1c ], %g1
   13514:	e0 00 60 04 	ld  [ %g1 + 4 ], %l0
   13518:	7f ff ff c4 	call  13428 <read_byte>
   1351c:	90 10 00 18 	mov  %i0, %o0
   13520:	d0 2c 00 1a 	stb  %o0, [ %l0 + %i2 ]
   13524:	c2 06 20 1c 	ld  [ %i0 + 0x1c ], %g1
   13528:	e0 00 40 00 	ld  [ %g1 ], %l0
   1352c:	7f ff ff bf 	call  13428 <read_byte>
   13530:	90 10 00 18 	mov  %i0, %o0
   13534:	d0 2c 00 1a 	stb  %o0, [ %l0 + %i2 ]
   13538:	7f ff ff bc 	call  13428 <read_byte>
   1353c:	90 10 00 18 	mov  %i0, %o0
   13540:	b4 06 a0 01 	inc  %i2
   13544:	80 a6 80 19 	cmp  %i2, %i1
   13548:	26 bf ff ee 	bl,a   13500 <read_colormap+0x90>
   1354c:	c2 06 20 1c 	ld  [ %i0 + 0x1c ], %g1
   13550:	30 80 00 09 	b,a   13574 <read_colormap+0x104>
   13554:	c4 00 40 00 	ld  [ %g1 ], %g2
   13558:	82 10 23 e9 	mov  0x3e9, %g1
   1355c:	c2 20 a0 14 	st  %g1, [ %g2 + 0x14 ]
   13560:	d0 06 20 18 	ld  [ %i0 + 0x18 ], %o0
   13564:	c2 02 00 00 	ld  [ %o0 ], %g1
   13568:	c2 00 40 00 	ld  [ %g1 ], %g1
   1356c:	9f c0 40 00 	call  %g1
   13570:	01 00 00 00 	nop 
   13574:	01 00 00 00 	nop 
   13578:	81 c7 e0 08 	ret 
   1357c:	81 e8 00 00 	restore 

00013580 <get_8bit_row>:
   13580:	9d e3 bf 98 	save  %sp, -104, %sp
   13584:	e0 06 60 1c 	ld  [ %i1 + 0x1c ], %l0
   13588:	d4 06 60 24 	ld  [ %i1 + 0x24 ], %o2
   1358c:	94 02 bf ff 	add  %o2, -1, %o2
   13590:	d4 26 60 24 	st  %o2, [ %i1 + 0x24 ]
   13594:	c2 06 20 04 	ld  [ %i0 + 4 ], %g1
   13598:	c2 00 60 1c 	ld  [ %g1 + 0x1c ], %g1
   1359c:	90 10 00 18 	mov  %i0, %o0
   135a0:	d2 06 60 20 	ld  [ %i1 + 0x20 ], %o1
   135a4:	96 10 20 01 	mov  1, %o3
   135a8:	9f c0 40 00 	call  %g1
   135ac:	98 10 20 00 	clr  %o4
   135b0:	d0 02 00 00 	ld  [ %o0 ], %o0
   135b4:	c2 06 60 10 	ld  [ %i1 + 0x10 ], %g1
   135b8:	c8 06 20 18 	ld  [ %i0 + 0x18 ], %g4
   135bc:	80 a1 20 00 	cmp  %g4, 0
   135c0:	02 80 00 12 	be  13608 <get_8bit_row+0x88>
   135c4:	c6 00 40 00 	ld  [ %g1 ], %g3
   135c8:	c4 0a 00 00 	ldub  [ %o0 ], %g2
   135cc:	90 02 20 01 	inc  %o0
   135d0:	c2 04 00 00 	ld  [ %l0 ], %g1
   135d4:	c2 08 40 02 	ldub  [ %g1 + %g2 ], %g1
   135d8:	c2 28 c0 00 	stb  %g1, [ %g3 ]
   135dc:	86 00 e0 01 	inc  %g3
   135e0:	c2 04 20 04 	ld  [ %l0 + 4 ], %g1
   135e4:	c2 08 40 02 	ldub  [ %g1 + %g2 ], %g1
   135e8:	c2 28 c0 00 	stb  %g1, [ %g3 ]
   135ec:	86 00 e0 01 	inc  %g3
   135f0:	c2 04 20 08 	ld  [ %l0 + 8 ], %g1
   135f4:	c2 08 40 02 	ldub  [ %g1 + %g2 ], %g1
   135f8:	c2 28 c0 00 	stb  %g1, [ %g3 ]
   135fc:	88 81 3f ff 	addcc  %g4, -1, %g4
   13600:	12 bf ff f2 	bne  135c8 <get_8bit_row+0x48>
   13604:	86 00 e0 01 	inc  %g3
   13608:	81 c7 e0 08 	ret 
   1360c:	91 e8 20 01 	restore  %g0, 1, %o0

00013610 <get_24bit_row>:
   13610:	9d e3 bf 98 	save  %sp, -104, %sp
   13614:	d4 06 60 24 	ld  [ %i1 + 0x24 ], %o2
   13618:	94 02 bf ff 	add  %o2, -1, %o2
   1361c:	d4 26 60 24 	st  %o2, [ %i1 + 0x24 ]
   13620:	c2 06 20 04 	ld  [ %i0 + 4 ], %g1
   13624:	c2 00 60 1c 	ld  [ %g1 + 0x1c ], %g1
   13628:	90 10 00 18 	mov  %i0, %o0
   1362c:	d2 06 60 20 	ld  [ %i1 + 0x20 ], %o1
   13630:	96 10 20 01 	mov  1, %o3
   13634:	9f c0 40 00 	call  %g1
   13638:	98 10 20 00 	clr  %o4
   1363c:	d0 02 00 00 	ld  [ %o0 ], %o0
   13640:	c2 06 60 10 	ld  [ %i1 + 0x10 ], %g1
   13644:	c6 06 20 18 	ld  [ %i0 + 0x18 ], %g3
   13648:	80 a0 e0 00 	cmp  %g3, 0
   1364c:	02 80 00 0e 	be  13684 <get_24bit_row+0x74>
   13650:	c4 00 40 00 	ld  [ %g1 ], %g2
   13654:	c2 0a 00 00 	ldub  [ %o0 ], %g1
   13658:	90 02 20 01 	inc  %o0
   1365c:	c2 28 a0 02 	stb  %g1, [ %g2 + 2 ]
   13660:	c2 0a 00 00 	ldub  [ %o0 ], %g1
   13664:	90 02 20 01 	inc  %o0
   13668:	c2 28 a0 01 	stb  %g1, [ %g2 + 1 ]
   1366c:	c2 0a 00 00 	ldub  [ %o0 ], %g1
   13670:	90 02 20 01 	inc  %o0
   13674:	c2 28 80 00 	stb  %g1, [ %g2 ]
   13678:	86 80 ff ff 	addcc  %g3, -1, %g3
   1367c:	12 bf ff f6 	bne  13654 <get_24bit_row+0x44>
   13680:	84 00 a0 03 	add  %g2, 3, %g2
   13684:	81 c7 e0 08 	ret 
   13688:	91 e8 20 01 	restore  %g0, 1, %o0

0001368c <preload_image>:
   1368c:	9d e3 bf 98 	save  %sp, -104, %sp
   13690:	aa 10 00 19 	mov  %i1, %l5
   13694:	e8 06 60 0c 	ld  [ %i1 + 0xc ], %l4
   13698:	e6 06 20 08 	ld  [ %i0 + 8 ], %l3
   1369c:	c2 06 20 1c 	ld  [ %i0 + 0x1c ], %g1
   136a0:	80 a0 60 00 	cmp  %g1, 0
   136a4:	08 80 00 2c 	bleu  13754 <preload_image+0xc8>
   136a8:	ac 10 20 00 	clr  %l6
   136ac:	80 a4 e0 00 	cmp  %l3, 0
   136b0:	22 80 00 09 	be,a   136d4 <preload_image+0x48>
   136b4:	c2 06 20 04 	ld  [ %i0 + 4 ], %g1
   136b8:	ec 24 e0 04 	st  %l6, [ %l3 + 4 ]
   136bc:	c2 06 20 1c 	ld  [ %i0 + 0x1c ], %g1
   136c0:	c2 24 e0 08 	st  %g1, [ %l3 + 8 ]
   136c4:	c2 04 c0 00 	ld  [ %l3 ], %g1
   136c8:	9f c0 40 00 	call  %g1
   136cc:	90 10 00 18 	mov  %i0, %o0
   136d0:	c2 06 20 04 	ld  [ %i0 + 4 ], %g1
   136d4:	c2 00 60 1c 	ld  [ %g1 + 0x1c ], %g1
   136d8:	90 10 00 18 	mov  %i0, %o0
   136dc:	d2 05 60 20 	ld  [ %l5 + 0x20 ], %o1
   136e0:	94 10 00 16 	mov  %l6, %o2
   136e4:	96 10 20 01 	mov  1, %o3
   136e8:	9f c0 40 00 	call  %g1
   136ec:	98 10 20 01 	mov  1, %o4
   136f0:	e0 05 60 28 	ld  [ %l5 + 0x28 ], %l0
   136f4:	80 a4 20 00 	cmp  %l0, 0
   136f8:	02 80 00 12 	be  13740 <preload_image+0xb4>
   136fc:	e2 02 00 00 	ld  [ %o0 ], %l1
   13700:	ae 10 20 2a 	mov  0x2a, %l7
   13704:	40 00 80 2d 	call  337b8 <_IO_getc@plt>
   13708:	90 10 00 14 	mov  %l4, %o0
   1370c:	80 a2 3f ff 	cmp  %o0, -1
   13710:	12 80 00 08 	bne  13730 <preload_image+0xa4>
   13714:	a4 10 00 08 	mov  %o0, %l2
   13718:	c2 06 00 00 	ld  [ %i0 ], %g1
   1371c:	ee 20 60 14 	st  %l7, [ %g1 + 0x14 ]
   13720:	c2 06 00 00 	ld  [ %i0 ], %g1
   13724:	c2 00 40 00 	ld  [ %g1 ], %g1
   13728:	9f c0 40 00 	call  %g1
   1372c:	90 10 00 18 	mov  %i0, %o0
   13730:	e4 2c 40 00 	stb  %l2, [ %l1 ]
   13734:	a0 84 3f ff 	addcc  %l0, -1, %l0
   13738:	12 bf ff f3 	bne  13704 <preload_image+0x78>
   1373c:	a2 04 60 01 	inc  %l1
   13740:	ac 05 a0 01 	inc  %l6
   13744:	c2 06 20 1c 	ld  [ %i0 + 0x1c ], %g1
   13748:	80 a0 40 16 	cmp  %g1, %l6
   1374c:	18 bf ff d9 	bgu  136b0 <preload_image+0x24>
   13750:	80 a4 e0 00 	cmp  %l3, 0
   13754:	80 a4 e0 00 	cmp  %l3, 0
   13758:	22 80 00 06 	be,a   13770 <preload_image+0xe4>
   1375c:	c2 05 60 2c 	ld  [ %l5 + 0x2c ], %g1
   13760:	c2 04 e0 14 	ld  [ %l3 + 0x14 ], %g1
   13764:	82 00 60 01 	inc  %g1
   13768:	c2 24 e0 14 	st  %g1, [ %l3 + 0x14 ]
   1376c:	c2 05 60 2c 	ld  [ %l5 + 0x2c ], %g1
   13770:	80 a0 60 08 	cmp  %g1, 8
   13774:	02 80 00 06 	be  1378c <preload_image+0x100>
   13778:	80 a0 60 18 	cmp  %g1, 0x18
   1377c:	02 80 00 08 	be  1379c <preload_image+0x110>
   13780:	03 00 00 4d 	sethi  %hi(0x13400), %g1
   13784:	10 80 00 09 	b  137a8 <preload_image+0x11c>
   13788:	c4 06 00 00 	ld  [ %i0 ], %g2
   1378c:	03 00 00 4d 	sethi  %hi(0x13400), %g1
   13790:	82 10 61 80 	or  %g1, 0x180, %g1	! 13580 <get_8bit_row>
   13794:	10 80 00 0b 	b  137c0 <preload_image+0x134>
   13798:	c2 25 60 04 	st  %g1, [ %l5 + 4 ]
   1379c:	82 10 62 10 	or  %g1, 0x210, %g1
   137a0:	10 80 00 08 	b  137c0 <preload_image+0x134>
   137a4:	c2 25 60 04 	st  %g1, [ %l5 + 4 ]
   137a8:	82 10 23 ea 	mov  0x3ea, %g1
   137ac:	c2 20 a0 14 	st  %g1, [ %g2 + 0x14 ]
   137b0:	c2 06 00 00 	ld  [ %i0 ], %g1
   137b4:	c2 00 40 00 	ld  [ %g1 ], %g1
   137b8:	9f c0 40 00 	call  %g1
   137bc:	90 10 00 18 	mov  %i0, %o0
   137c0:	c2 06 20 1c 	ld  [ %i0 + 0x1c ], %g1
   137c4:	c2 25 60 24 	st  %g1, [ %l5 + 0x24 ]
   137c8:	c2 05 60 04 	ld  [ %l5 + 4 ], %g1
   137cc:	90 10 00 18 	mov  %i0, %o0
   137d0:	9f c0 40 00 	call  %g1
   137d4:	92 10 00 19 	mov  %i1, %o1
   137d8:	81 c7 e0 08 	ret 
   137dc:	91 e8 00 08 	restore  %g0, %o0, %o0

000137e0 <start_input_bmp>:
   137e0:	9d e3 bf 48 	save  %sp, -184, %sp
   137e4:	aa 10 20 00 	clr  %l5
   137e8:	ba 10 20 00 	clr  %i5
   137ec:	ae 10 20 00 	clr  %l7
   137f0:	b8 10 20 00 	clr  %i4
   137f4:	90 07 bf e8 	add  %fp, -24, %o0
   137f8:	92 10 20 01 	mov  1, %o1
   137fc:	94 10 20 0e 	mov  0xe, %o2
   13800:	40 00 7f ca 	call  33728 <fread@plt>
   13804:	d6 06 60 0c 	ld  [ %i1 + 0xc ], %o3
   13808:	80 a2 20 0e 	cmp  %o0, 0xe
   1380c:	02 80 00 08 	be  1382c <start_input_bmp+0x4c>
   13810:	82 10 20 2a 	mov  0x2a, %g1
   13814:	c4 06 00 00 	ld  [ %i0 ], %g2
   13818:	c2 20 a0 14 	st  %g1, [ %g2 + 0x14 ]
   1381c:	c2 06 00 00 	ld  [ %i0 ], %g1
   13820:	c2 00 40 00 	ld  [ %g1 ], %g1
   13824:	9f c0 40 00 	call  %g1
   13828:	90 10 00 18 	mov  %i0, %o0
   1382c:	c2 0f bf e8 	ldub  [ %fp + -24 ], %g1
   13830:	c4 0f bf e9 	ldub  [ %fp + -23 ], %g2
   13834:	85 28 a0 08 	sll  %g2, 8, %g2
   13838:	82 00 40 02 	add  %g1, %g2, %g1
   1383c:	05 00 00 13 	sethi  %hi(0x4c00), %g2
   13840:	84 10 a1 42 	or  %g2, 0x142, %g2	! 4d42 <_init-0xb98e>
   13844:	80 a0 40 02 	cmp  %g1, %g2
   13848:	02 80 00 08 	be  13868 <start_input_bmp+0x88>
   1384c:	82 10 23 ef 	mov  0x3ef, %g1
   13850:	c4 06 00 00 	ld  [ %i0 ], %g2
   13854:	c2 20 a0 14 	st  %g1, [ %g2 + 0x14 ]
   13858:	c2 06 00 00 	ld  [ %i0 ], %g1
   1385c:	c2 00 40 00 	ld  [ %g1 ], %g1
   13860:	9f c0 40 00 	call  %g1
   13864:	90 10 00 18 	mov  %i0, %o0
   13868:	e8 0f bf f2 	ldub  [ %fp + -14 ], %l4
   1386c:	c2 0f bf f3 	ldub  [ %fp + -13 ], %g1
   13870:	83 28 60 08 	sll  %g1, 8, %g1
   13874:	a8 05 00 01 	add  %l4, %g1, %l4
   13878:	c2 0f bf f4 	ldub  [ %fp + -12 ], %g1
   1387c:	83 28 60 10 	sll  %g1, 0x10, %g1
   13880:	a8 05 00 01 	add  %l4, %g1, %l4
   13884:	c2 0f bf f5 	ldub  [ %fp + -11 ], %g1
   13888:	83 28 60 18 	sll  %g1, 0x18, %g1
   1388c:	a8 05 00 01 	add  %l4, %g1, %l4
   13890:	90 07 bf a8 	add  %fp, -88, %o0
   13894:	92 10 20 01 	mov  1, %o1
   13898:	94 10 20 04 	mov  4, %o2
   1389c:	40 00 7f a3 	call  33728 <fread@plt>
   138a0:	d6 06 60 0c 	ld  [ %i1 + 0xc ], %o3
   138a4:	80 a2 20 04 	cmp  %o0, 4
   138a8:	02 80 00 08 	be  138c8 <start_input_bmp+0xe8>
   138ac:	82 10 20 2a 	mov  0x2a, %g1
   138b0:	c4 06 00 00 	ld  [ %i0 ], %g2
   138b4:	c2 20 a0 14 	st  %g1, [ %g2 + 0x14 ]
   138b8:	c2 06 00 00 	ld  [ %i0 ], %g1
   138bc:	c2 00 40 00 	ld  [ %g1 ], %g1
   138c0:	9f c0 40 00 	call  %g1
   138c4:	90 10 00 18 	mov  %i0, %o0
   138c8:	e2 0f bf a8 	ldub  [ %fp + -88 ], %l1
   138cc:	c2 0f bf a9 	ldub  [ %fp + -87 ], %g1
   138d0:	83 28 60 08 	sll  %g1, 8, %g1
   138d4:	a2 04 40 01 	add  %l1, %g1, %l1
   138d8:	c2 0f bf aa 	ldub  [ %fp + -86 ], %g1
   138dc:	83 28 60 10 	sll  %g1, 0x10, %g1
   138e0:	a2 04 40 01 	add  %l1, %g1, %l1
   138e4:	c2 0f bf ab 	ldub  [ %fp + -85 ], %g1
   138e8:	83 28 60 18 	sll  %g1, 0x18, %g1
   138ec:	a2 04 40 01 	add  %l1, %g1, %l1
   138f0:	82 04 7f f4 	add  %l1, -12, %g1
   138f4:	80 a0 60 34 	cmp  %g1, 0x34
   138f8:	08 80 00 0a 	bleu  13920 <start_input_bmp+0x140>
   138fc:	a0 04 7f fc 	add  %l1, -4, %l0
   13900:	c4 06 00 00 	ld  [ %i0 ], %g2
   13904:	82 10 23 eb 	mov  0x3eb, %g1
   13908:	c2 20 a0 14 	st  %g1, [ %g2 + 0x14 ]
   1390c:	c2 06 00 00 	ld  [ %i0 ], %g1
   13910:	c2 00 40 00 	ld  [ %g1 ], %g1
   13914:	9f c0 40 00 	call  %g1
   13918:	90 10 00 18 	mov  %i0, %o0
   1391c:	a0 04 7f fc 	add  %l1, -4, %l0
   13920:	90 07 bf ac 	add  %fp, -84, %o0
   13924:	92 10 20 01 	mov  1, %o1
   13928:	94 10 00 10 	mov  %l0, %o2
   1392c:	40 00 7f 7f 	call  33728 <fread@plt>
   13930:	d6 06 60 0c 	ld  [ %i1 + 0xc ], %o3
   13934:	80 a2 00 10 	cmp  %o0, %l0
   13938:	02 80 00 08 	be  13958 <start_input_bmp+0x178>
   1393c:	82 10 20 2a 	mov  0x2a, %g1
   13940:	c4 06 00 00 	ld  [ %i0 ], %g2
   13944:	c2 20 a0 14 	st  %g1, [ %g2 + 0x14 ]
   13948:	c2 06 00 00 	ld  [ %i0 ], %g1
   1394c:	c2 00 40 00 	ld  [ %g1 ], %g1
   13950:	9f c0 40 00 	call  %g1
   13954:	90 10 00 18 	mov  %i0, %o0
   13958:	80 a4 60 28 	cmp  %l1, 0x28
   1395c:	22 80 00 50 	be,a   13a9c <start_input_bmp+0x2bc>
   13960:	ea 0f bf ac 	ldub  [ %fp + -84 ], %l5
   13964:	14 80 00 07 	bg  13980 <start_input_bmp+0x1a0>
   13968:	80 a4 60 40 	cmp  %l1, 0x40
   1396c:	80 a4 60 0c 	cmp  %l1, 0xc
   13970:	22 80 00 08 	be,a   13990 <start_input_bmp+0x1b0>
   13974:	ea 0f bf ac 	ldub  [ %fp + -84 ], %l5
   13978:	10 80 00 e0 	b  13cf8 <start_input_bmp+0x518>
   1397c:	c4 06 00 00 	ld  [ %i0 ], %g2
   13980:	22 80 00 47 	be,a   13a9c <start_input_bmp+0x2bc>
   13984:	ea 0f bf ac 	ldub  [ %fp + -84 ], %l5
   13988:	10 80 00 dc 	b  13cf8 <start_input_bmp+0x518>
   1398c:	c4 06 00 00 	ld  [ %i0 ], %g2
   13990:	c2 0f bf ad 	ldub  [ %fp + -83 ], %g1
   13994:	83 28 60 08 	sll  %g1, 8, %g1
   13998:	aa 05 40 01 	add  %l5, %g1, %l5
   1399c:	fa 0f bf ae 	ldub  [ %fp + -82 ], %i5
   139a0:	c2 0f bf af 	ldub  [ %fp + -81 ], %g1
   139a4:	83 28 60 08 	sll  %g1, 8, %g1
   139a8:	ba 07 40 01 	add  %i5, %g1, %i5
   139ac:	ec 0f bf b0 	ldub  [ %fp + -80 ], %l6
   139b0:	c2 0f bf b1 	ldub  [ %fp + -79 ], %g1
   139b4:	83 28 60 08 	sll  %g1, 8, %g1
   139b8:	ac 05 80 01 	add  %l6, %g1, %l6
   139bc:	c4 0f bf b2 	ldub  [ %fp + -78 ], %g2
   139c0:	c2 0f bf b3 	ldub  [ %fp + -77 ], %g1
   139c4:	83 28 60 08 	sll  %g1, 8, %g1
   139c8:	84 00 80 01 	add  %g2, %g1, %g2
   139cc:	80 a0 a0 08 	cmp  %g2, 8
   139d0:	02 80 00 07 	be  139ec <start_input_bmp+0x20c>
   139d4:	c4 26 60 2c 	st  %g2, [ %i1 + 0x2c ]
   139d8:	80 a0 a0 18 	cmp  %g2, 0x18
   139dc:	02 80 00 13 	be  13a28 <start_input_bmp+0x248>
   139e0:	c4 06 00 00 	ld  [ %i0 ], %g2
   139e4:	10 80 00 1e 	b  13a5c <start_input_bmp+0x27c>
   139e8:	82 10 23 ea 	mov  0x3ea, %g1
   139ec:	b8 10 20 03 	mov  3, %i4
   139f0:	c4 06 00 00 	ld  [ %i0 ], %g2
   139f4:	82 10 23 f3 	mov  0x3f3, %g1
   139f8:	c2 20 a0 14 	st  %g1, [ %g2 + 0x14 ]
   139fc:	c2 06 00 00 	ld  [ %i0 ], %g1
   13a00:	ea 20 60 18 	st  %l5, [ %g1 + 0x18 ]
   13a04:	c2 06 00 00 	ld  [ %i0 ], %g1
   13a08:	fa 20 60 1c 	st  %i5, [ %g1 + 0x1c ]
   13a0c:	c2 06 00 00 	ld  [ %i0 ], %g1
   13a10:	c2 00 60 04 	ld  [ %g1 + 4 ], %g1
   13a14:	90 10 00 18 	mov  %i0, %o0
   13a18:	9f c0 40 00 	call  %g1
   13a1c:	92 10 20 01 	mov  1, %o1
   13a20:	10 80 00 15 	b  13a74 <start_input_bmp+0x294>
   13a24:	80 a5 a0 01 	cmp  %l6, 1
   13a28:	82 10 23 f2 	mov  0x3f2, %g1
   13a2c:	c2 20 a0 14 	st  %g1, [ %g2 + 0x14 ]
   13a30:	c2 06 00 00 	ld  [ %i0 ], %g1
   13a34:	ea 20 60 18 	st  %l5, [ %g1 + 0x18 ]
   13a38:	c2 06 00 00 	ld  [ %i0 ], %g1
   13a3c:	fa 20 60 1c 	st  %i5, [ %g1 + 0x1c ]
   13a40:	c2 06 00 00 	ld  [ %i0 ], %g1
   13a44:	c2 00 60 04 	ld  [ %g1 + 4 ], %g1
   13a48:	90 10 00 18 	mov  %i0, %o0
   13a4c:	9f c0 40 00 	call  %g1
   13a50:	92 10 20 01 	mov  1, %o1
   13a54:	10 80 00 08 	b  13a74 <start_input_bmp+0x294>
   13a58:	80 a5 a0 01 	cmp  %l6, 1
   13a5c:	c2 20 a0 14 	st  %g1, [ %g2 + 0x14 ]
   13a60:	c2 06 00 00 	ld  [ %i0 ], %g1
   13a64:	c2 00 40 00 	ld  [ %g1 ], %g1
   13a68:	9f c0 40 00 	call  %g1
   13a6c:	90 10 00 18 	mov  %i0, %o0
   13a70:	80 a5 a0 01 	cmp  %l6, 1
   13a74:	02 80 00 a7 	be  13d10 <start_input_bmp+0x530>
   13a78:	82 10 23 ec 	mov  0x3ec, %g1
   13a7c:	c4 06 00 00 	ld  [ %i0 ], %g2
   13a80:	c2 20 a0 14 	st  %g1, [ %g2 + 0x14 ]
   13a84:	c2 06 00 00 	ld  [ %i0 ], %g1
   13a88:	c2 00 40 00 	ld  [ %g1 ], %g1
   13a8c:	9f c0 40 00 	call  %g1
   13a90:	90 10 00 18 	mov  %i0, %o0
   13a94:	10 80 00 a0 	b  13d14 <start_input_bmp+0x534>
   13a98:	a0 25 00 11 	sub  %l4, %l1, %l0
   13a9c:	c2 0f bf ad 	ldub  [ %fp + -83 ], %g1
   13aa0:	83 28 60 08 	sll  %g1, 8, %g1
   13aa4:	aa 05 40 01 	add  %l5, %g1, %l5
   13aa8:	c2 0f bf ae 	ldub  [ %fp + -82 ], %g1
   13aac:	83 28 60 10 	sll  %g1, 0x10, %g1
   13ab0:	aa 05 40 01 	add  %l5, %g1, %l5
   13ab4:	c2 0f bf af 	ldub  [ %fp + -81 ], %g1
   13ab8:	83 28 60 18 	sll  %g1, 0x18, %g1
   13abc:	aa 05 40 01 	add  %l5, %g1, %l5
   13ac0:	fa 0f bf b0 	ldub  [ %fp + -80 ], %i5
   13ac4:	c2 0f bf b1 	ldub  [ %fp + -79 ], %g1
   13ac8:	83 28 60 08 	sll  %g1, 8, %g1
   13acc:	ba 07 40 01 	add  %i5, %g1, %i5
   13ad0:	c2 0f bf b2 	ldub  [ %fp + -78 ], %g1
   13ad4:	83 28 60 10 	sll  %g1, 0x10, %g1
   13ad8:	ba 07 40 01 	add  %i5, %g1, %i5
   13adc:	c2 0f bf b3 	ldub  [ %fp + -77 ], %g1
   13ae0:	83 28 60 18 	sll  %g1, 0x18, %g1
   13ae4:	ba 07 40 01 	add  %i5, %g1, %i5
   13ae8:	ec 0f bf b4 	ldub  [ %fp + -76 ], %l6
   13aec:	c2 0f bf b5 	ldub  [ %fp + -75 ], %g1
   13af0:	83 28 60 08 	sll  %g1, 8, %g1
   13af4:	ac 05 80 01 	add  %l6, %g1, %l6
   13af8:	c4 0f bf b6 	ldub  [ %fp + -74 ], %g2
   13afc:	c2 0f bf b7 	ldub  [ %fp + -73 ], %g1
   13b00:	83 28 60 08 	sll  %g1, 8, %g1
   13b04:	84 00 80 01 	add  %g2, %g1, %g2
   13b08:	c4 26 60 2c 	st  %g2, [ %i1 + 0x2c ]
   13b0c:	e6 0f bf b8 	ldub  [ %fp + -72 ], %l3
   13b10:	c2 0f bf b9 	ldub  [ %fp + -71 ], %g1
   13b14:	83 28 60 08 	sll  %g1, 8, %g1
   13b18:	a6 04 c0 01 	add  %l3, %g1, %l3
   13b1c:	c2 0f bf ba 	ldub  [ %fp + -70 ], %g1
   13b20:	83 28 60 10 	sll  %g1, 0x10, %g1
   13b24:	a6 04 c0 01 	add  %l3, %g1, %l3
   13b28:	c2 0f bf bb 	ldub  [ %fp + -69 ], %g1
   13b2c:	83 28 60 18 	sll  %g1, 0x18, %g1
   13b30:	a6 04 c0 01 	add  %l3, %g1, %l3
   13b34:	e4 0f bf c0 	ldub  [ %fp + -64 ], %l2
   13b38:	c2 0f bf c1 	ldub  [ %fp + -63 ], %g1
   13b3c:	83 28 60 08 	sll  %g1, 8, %g1
   13b40:	a4 04 80 01 	add  %l2, %g1, %l2
   13b44:	c2 0f bf c2 	ldub  [ %fp + -62 ], %g1
   13b48:	83 28 60 10 	sll  %g1, 0x10, %g1
   13b4c:	a4 04 80 01 	add  %l2, %g1, %l2
   13b50:	c2 0f bf c3 	ldub  [ %fp + -61 ], %g1
   13b54:	83 28 60 18 	sll  %g1, 0x18, %g1
   13b58:	a4 04 80 01 	add  %l2, %g1, %l2
   13b5c:	e0 0f bf c4 	ldub  [ %fp + -60 ], %l0
   13b60:	c2 0f bf c5 	ldub  [ %fp + -59 ], %g1
   13b64:	83 28 60 08 	sll  %g1, 8, %g1
   13b68:	a0 04 00 01 	add  %l0, %g1, %l0
   13b6c:	c2 0f bf c6 	ldub  [ %fp + -58 ], %g1
   13b70:	83 28 60 10 	sll  %g1, 0x10, %g1
   13b74:	a0 04 00 01 	add  %l0, %g1, %l0
   13b78:	c2 0f bf c7 	ldub  [ %fp + -57 ], %g1
   13b7c:	83 28 60 18 	sll  %g1, 0x18, %g1
   13b80:	a0 04 00 01 	add  %l0, %g1, %l0
   13b84:	ee 0f bf c8 	ldub  [ %fp + -56 ], %l7
   13b88:	c2 0f bf c9 	ldub  [ %fp + -55 ], %g1
   13b8c:	83 28 60 08 	sll  %g1, 8, %g1
   13b90:	ae 05 c0 01 	add  %l7, %g1, %l7
   13b94:	c2 0f bf ca 	ldub  [ %fp + -54 ], %g1
   13b98:	83 28 60 10 	sll  %g1, 0x10, %g1
   13b9c:	ae 05 c0 01 	add  %l7, %g1, %l7
   13ba0:	c2 0f bf cb 	ldub  [ %fp + -53 ], %g1
   13ba4:	83 28 60 18 	sll  %g1, 0x18, %g1
   13ba8:	80 a0 a0 08 	cmp  %g2, 8
   13bac:	02 80 00 07 	be  13bc8 <start_input_bmp+0x3e8>
   13bb0:	ae 05 c0 01 	add  %l7, %g1, %l7
   13bb4:	80 a0 a0 18 	cmp  %g2, 0x18
   13bb8:	02 80 00 13 	be  13c04 <start_input_bmp+0x424>
   13bbc:	c4 06 00 00 	ld  [ %i0 ], %g2
   13bc0:	10 80 00 1e 	b  13c38 <start_input_bmp+0x458>
   13bc4:	82 10 23 ea 	mov  0x3ea, %g1
   13bc8:	b8 10 20 04 	mov  4, %i4
   13bcc:	c4 06 00 00 	ld  [ %i0 ], %g2
   13bd0:	82 10 23 f1 	mov  0x3f1, %g1
   13bd4:	c2 20 a0 14 	st  %g1, [ %g2 + 0x14 ]
   13bd8:	c2 06 00 00 	ld  [ %i0 ], %g1
   13bdc:	ea 20 60 18 	st  %l5, [ %g1 + 0x18 ]
   13be0:	c2 06 00 00 	ld  [ %i0 ], %g1
   13be4:	fa 20 60 1c 	st  %i5, [ %g1 + 0x1c ]
   13be8:	c2 06 00 00 	ld  [ %i0 ], %g1
   13bec:	c2 00 60 04 	ld  [ %g1 + 4 ], %g1
   13bf0:	90 10 00 18 	mov  %i0, %o0
   13bf4:	9f c0 40 00 	call  %g1
   13bf8:	92 10 20 01 	mov  1, %o1
   13bfc:	10 80 00 15 	b  13c50 <start_input_bmp+0x470>
   13c00:	80 a5 a0 01 	cmp  %l6, 1
   13c04:	82 10 23 f0 	mov  0x3f0, %g1
   13c08:	c2 20 a0 14 	st  %g1, [ %g2 + 0x14 ]
   13c0c:	c2 06 00 00 	ld  [ %i0 ], %g1
   13c10:	ea 20 60 18 	st  %l5, [ %g1 + 0x18 ]
   13c14:	c2 06 00 00 	ld  [ %i0 ], %g1
   13c18:	fa 20 60 1c 	st  %i5, [ %g1 + 0x1c ]
   13c1c:	c2 06 00 00 	ld  [ %i0 ], %g1
   13c20:	c2 00 60 04 	ld  [ %g1 + 4 ], %g1
   13c24:	90 10 00 18 	mov  %i0, %o0
   13c28:	9f c0 40 00 	call  %g1
   13c2c:	92 10 20 01 	mov  1, %o1
   13c30:	10 80 00 08 	b  13c50 <start_input_bmp+0x470>
   13c34:	80 a5 a0 01 	cmp  %l6, 1
   13c38:	c2 20 a0 14 	st  %g1, [ %g2 + 0x14 ]
   13c3c:	c2 06 00 00 	ld  [ %i0 ], %g1
   13c40:	c2 00 40 00 	ld  [ %g1 ], %g1
   13c44:	9f c0 40 00 	call  %g1
   13c48:	90 10 00 18 	mov  %i0, %o0
   13c4c:	80 a5 a0 01 	cmp  %l6, 1
   13c50:	02 80 00 08 	be  13c70 <start_input_bmp+0x490>
   13c54:	82 10 23 ec 	mov  0x3ec, %g1
   13c58:	c4 06 00 00 	ld  [ %i0 ], %g2
   13c5c:	c2 20 a0 14 	st  %g1, [ %g2 + 0x14 ]
   13c60:	c2 06 00 00 	ld  [ %i0 ], %g1
   13c64:	c2 00 40 00 	ld  [ %g1 ], %g1
   13c68:	9f c0 40 00 	call  %g1
   13c6c:	90 10 00 18 	mov  %i0, %o0
   13c70:	80 a4 e0 00 	cmp  %l3, 0
   13c74:	02 80 00 0a 	be  13c9c <start_input_bmp+0x4bc>
   13c78:	85 3c a0 1f 	sra  %l2, 0x1f, %g2
   13c7c:	c4 06 00 00 	ld  [ %i0 ], %g2
   13c80:	82 10 23 ee 	mov  0x3ee, %g1
   13c84:	c2 20 a0 14 	st  %g1, [ %g2 + 0x14 ]
   13c88:	c2 06 00 00 	ld  [ %i0 ], %g1
   13c8c:	c2 00 40 00 	ld  [ %g1 ], %g1
   13c90:	9f c0 40 00 	call  %g1
   13c94:	90 10 00 18 	mov  %i0, %o0
   13c98:	85 3c a0 1f 	sra  %l2, 0x1f, %g2
   13c9c:	84 20 80 12 	sub  %g2, %l2, %g2
   13ca0:	83 3c 20 1f 	sra  %l0, 0x1f, %g1
   13ca4:	82 20 40 10 	sub  %g1, %l0, %g1
   13ca8:	80 88 40 02 	btst  %g1, %g2
   13cac:	36 80 00 1a 	bge,a   13d14 <start_input_bmp+0x534>
   13cb0:	a0 25 00 11 	sub  %l4, %l1, %l0
   13cb4:	03 14 7a e1 	sethi  %hi(0x51eb8400), %g1
   13cb8:	82 10 61 1f 	or  %g1, 0x11f, %g1	! 51eb851f <_end+0x51e84d1f>
   13cbc:	80 5c 80 01 	smul  %l2, %g1, %g0
   13cc0:	85 40 00 00 	rd  %y, %g2
   13cc4:	85 38 a0 05 	sra  %g2, 5, %g2
   13cc8:	87 3c a0 1f 	sra  %l2, 0x1f, %g3
   13ccc:	84 20 80 03 	sub  %g2, %g3, %g2
   13cd0:	c4 36 20 ce 	sth  %g2, [ %i0 + 0xce ]
   13cd4:	80 5c 00 01 	smul  %l0, %g1, %g0
   13cd8:	83 40 00 00 	rd  %y, %g1
   13cdc:	83 38 60 05 	sra  %g1, 5, %g1
   13ce0:	85 3c 20 1f 	sra  %l0, 0x1f, %g2
   13ce4:	82 20 40 02 	sub  %g1, %g2, %g1
   13ce8:	c2 36 20 d0 	sth  %g1, [ %i0 + 0xd0 ]
   13cec:	82 10 20 02 	mov  2, %g1
   13cf0:	10 80 00 08 	b  13d10 <start_input_bmp+0x530>
   13cf4:	c2 2e 20 cc 	stb  %g1, [ %i0 + 0xcc ]
   13cf8:	82 10 23 eb 	mov  0x3eb, %g1
   13cfc:	c2 20 a0 14 	st  %g1, [ %g2 + 0x14 ]
   13d00:	c2 06 00 00 	ld  [ %i0 ], %g1
   13d04:	c2 00 40 00 	ld  [ %g1 ], %g1
   13d08:	9f c0 40 00 	call  %g1
   13d0c:	90 10 00 18 	mov  %i0, %o0
   13d10:	a0 25 00 11 	sub  %l4, %l1, %l0
   13d14:	80 a7 20 00 	cmp  %i4, 0
   13d18:	04 80 00 1e 	ble  13d90 <start_input_bmp+0x5b0>
   13d1c:	a0 04 3f f2 	add  %l0, -14, %l0
   13d20:	80 a5 e0 00 	cmp  %l7, 0
   13d24:	14 80 00 04 	bg  13d34 <start_input_bmp+0x554>
   13d28:	80 a5 e1 00 	cmp  %l7, 0x100
   13d2c:	10 80 00 0b 	b  13d58 <start_input_bmp+0x578>
   13d30:	ae 10 21 00 	mov  0x100, %l7
   13d34:	24 80 00 0a 	ble,a   13d5c <start_input_bmp+0x57c>
   13d38:	c2 06 20 04 	ld  [ %i0 + 4 ], %g1
   13d3c:	c4 06 00 00 	ld  [ %i0 ], %g2
   13d40:	82 10 23 e9 	mov  0x3e9, %g1
   13d44:	c2 20 a0 14 	st  %g1, [ %g2 + 0x14 ]
   13d48:	c2 06 00 00 	ld  [ %i0 ], %g1
   13d4c:	c2 00 40 00 	ld  [ %g1 ], %g1
   13d50:	9f c0 40 00 	call  %g1
   13d54:	90 10 00 18 	mov  %i0, %o0
   13d58:	c2 06 20 04 	ld  [ %i0 + 4 ], %g1
   13d5c:	c2 00 60 08 	ld  [ %g1 + 8 ], %g1
   13d60:	90 10 00 18 	mov  %i0, %o0
   13d64:	92 10 20 01 	mov  1, %o1
   13d68:	94 10 00 17 	mov  %l7, %o2
   13d6c:	9f c0 40 00 	call  %g1
   13d70:	96 10 20 03 	mov  3, %o3
   13d74:	d0 26 60 1c 	st  %o0, [ %i1 + 0x1c ]
   13d78:	90 10 00 19 	mov  %i1, %o0
   13d7c:	92 10 00 17 	mov  %l7, %o1
   13d80:	7f ff fd bc 	call  13470 <read_colormap>
   13d84:	94 10 00 1c 	mov  %i4, %o2
   13d88:	82 5d c0 1c 	smul  %l7, %i4, %g1
   13d8c:	a0 24 00 01 	sub  %l0, %g1, %l0
   13d90:	80 a4 20 00 	cmp  %l0, 0
   13d94:	36 80 00 0a 	bge,a   13dbc <start_input_bmp+0x5dc>
   13d98:	a0 84 3f ff 	addcc  %l0, -1, %l0
   13d9c:	c4 06 00 00 	ld  [ %i0 ], %g2
   13da0:	82 10 23 eb 	mov  0x3eb, %g1
   13da4:	c2 20 a0 14 	st  %g1, [ %g2 + 0x14 ]
   13da8:	c2 06 00 00 	ld  [ %i0 ], %g1
   13dac:	c2 00 40 00 	ld  [ %g1 ], %g1
   13db0:	9f c0 40 00 	call  %g1
   13db4:	90 10 00 18 	mov  %i0, %o0
   13db8:	a0 84 3f ff 	addcc  %l0, -1, %l0
   13dbc:	2c 80 00 08 	bneg,a   13ddc <start_input_bmp+0x5fc>
   13dc0:	c4 06 60 2c 	ld  [ %i1 + 0x2c ], %g2
   13dc4:	7f ff fd 99 	call  13428 <read_byte>
   13dc8:	90 10 00 19 	mov  %i1, %o0
   13dcc:	a0 84 3f ff 	addcc  %l0, -1, %l0
   13dd0:	1c bf ff fd 	bpos  13dc4 <start_input_bmp+0x5e4>
   13dd4:	01 00 00 00 	nop 
   13dd8:	c4 06 60 2c 	ld  [ %i1 + 0x2c ], %g2
   13ddc:	82 05 40 15 	add  %l5, %l5, %g1
   13de0:	80 a0 a0 18 	cmp  %g2, 0x18
   13de4:	02 80 00 03 	be  13df0 <start_input_bmp+0x610>
   13de8:	96 00 40 15 	add  %g1, %l5, %o3
   13dec:	96 10 00 15 	mov  %l5, %o3
   13df0:	80 8a e0 03 	btst  3, %o3
   13df4:	22 80 00 07 	be,a   13e10 <start_input_bmp+0x630>
   13df8:	d6 26 60 28 	st  %o3, [ %i1 + 0x28 ]
   13dfc:	96 02 e0 01 	inc  %o3
   13e00:	80 8a e0 03 	btst  3, %o3
   13e04:	32 bf ff ff 	bne,a   13e00 <start_input_bmp+0x620>
   13e08:	96 02 e0 01 	inc  %o3
   13e0c:	d6 26 60 28 	st  %o3, [ %i1 + 0x28 ]
   13e10:	c2 06 20 04 	ld  [ %i0 + 4 ], %g1
   13e14:	c2 00 60 10 	ld  [ %g1 + 0x10 ], %g1
   13e18:	90 10 00 18 	mov  %i0, %o0
   13e1c:	92 10 20 01 	mov  1, %o1
   13e20:	94 10 20 00 	clr  %o2
   13e24:	98 10 00 1d 	mov  %i5, %o4
   13e28:	9f c0 40 00 	call  %g1
   13e2c:	9a 10 20 01 	mov  1, %o5
   13e30:	d0 26 60 20 	st  %o0, [ %i1 + 0x20 ]
   13e34:	03 00 00 4d 	sethi  %hi(0x13400), %g1
   13e38:	82 10 62 8c 	or  %g1, 0x28c, %g1	! 1368c <preload_image>
   13e3c:	c2 26 60 04 	st  %g1, [ %i1 + 4 ]
   13e40:	c4 06 20 08 	ld  [ %i0 + 8 ], %g2
   13e44:	80 a0 a0 00 	cmp  %g2, 0
   13e48:	22 80 00 06 	be,a   13e60 <start_input_bmp+0x680>
   13e4c:	c2 06 20 04 	ld  [ %i0 + 4 ], %g1
   13e50:	c2 00 a0 18 	ld  [ %g2 + 0x18 ], %g1
   13e54:	82 00 60 01 	inc  %g1
   13e58:	c2 20 a0 18 	st  %g1, [ %g2 + 0x18 ]
   13e5c:	c2 06 20 04 	ld  [ %i0 + 4 ], %g1
   13e60:	94 05 40 15 	add  %l5, %l5, %o2
   13e64:	c2 00 60 08 	ld  [ %g1 + 8 ], %g1
   13e68:	90 10 00 18 	mov  %i0, %o0
   13e6c:	92 10 20 01 	mov  1, %o1
   13e70:	94 02 80 15 	add  %o2, %l5, %o2
   13e74:	9f c0 40 00 	call  %g1
   13e78:	96 10 20 01 	mov  1, %o3
   13e7c:	d0 26 60 10 	st  %o0, [ %i1 + 0x10 ]
   13e80:	82 10 20 01 	mov  1, %g1
   13e84:	c2 26 60 14 	st  %g1, [ %i1 + 0x14 ]
   13e88:	82 10 20 02 	mov  2, %g1
   13e8c:	c2 26 20 24 	st  %g1, [ %i0 + 0x24 ]
   13e90:	82 10 20 03 	mov  3, %g1
   13e94:	c2 26 20 20 	st  %g1, [ %i0 + 0x20 ]
   13e98:	82 10 20 08 	mov  8, %g1
   13e9c:	c2 26 20 30 	st  %g1, [ %i0 + 0x30 ]
   13ea0:	ea 26 20 18 	st  %l5, [ %i0 + 0x18 ]
   13ea4:	fa 26 20 1c 	st  %i5, [ %i0 + 0x1c ]
   13ea8:	81 c7 e0 08 	ret 
   13eac:	81 e8 00 00 	restore 

00013eb0 <finish_input_bmp>:
   13eb0:	81 c3 e0 08 	retl 
   13eb4:	01 00 00 00 	nop 

00013eb8 <jinit_read_bmp>:
   13eb8:	9d e3 bf 98 	save  %sp, -104, %sp
   13ebc:	c2 06 20 04 	ld  [ %i0 + 4 ], %g1
   13ec0:	c2 00 40 00 	ld  [ %g1 ], %g1
   13ec4:	90 10 00 18 	mov  %i0, %o0
   13ec8:	92 10 20 01 	mov  1, %o1
   13ecc:	9f c0 40 00 	call  %g1
   13ed0:	94 10 20 30 	mov  0x30, %o2
   13ed4:	f0 22 20 18 	st  %i0, [ %o0 + 0x18 ]
   13ed8:	03 00 00 4d 	sethi  %hi(0x13400), %g1
   13edc:	82 10 63 e0 	or  %g1, 0x3e0, %g1	! 137e0 <start_input_bmp>
   13ee0:	c2 22 00 00 	st  %g1, [ %o0 ]
   13ee4:	03 00 00 4f 	sethi  %hi(0x13c00), %g1
   13ee8:	82 10 62 b0 	or  %g1, 0x2b0, %g1	! 13eb0 <finish_input_bmp>
   13eec:	c2 22 20 08 	st  %g1, [ %o0 + 8 ]
   13ef0:	81 c7 e0 08 	ret 
   13ef4:	91 e8 00 08 	restore  %g0, %o0, %o0

00013ef8 <text_getc>:
   13ef8:	9d e3 bf 98 	save  %sp, -104, %sp
   13efc:	40 00 7e 2f 	call  337b8 <_IO_getc@plt>
   13f00:	90 10 00 18 	mov  %i0, %o0
   13f04:	80 a2 20 23 	cmp  %o0, 0x23
   13f08:	12 80 00 0d 	bne  13f3c <text_getc+0x44>
   13f0c:	01 00 00 00 	nop 
   13f10:	40 00 7e 2a 	call  337b8 <_IO_getc@plt>
   13f14:	90 10 00 18 	mov  %i0, %o0
   13f18:	82 1a 20 0a 	xor  %o0, 0xa, %g1
   13f1c:	80 a0 00 01 	cmp  %g0, %g1
   13f20:	84 40 20 00 	addx  %g0, 0, %g2
   13f24:	82 38 00 08 	xnor  %g0, %o0, %g1
   13f28:	80 a0 00 01 	cmp  %g0, %g1
   13f2c:	82 40 20 00 	addx  %g0, 0, %g1
   13f30:	80 88 80 01 	btst  %g2, %g1
   13f34:	12 bf ff f7 	bne  13f10 <text_getc+0x18>
   13f38:	01 00 00 00 	nop 
   13f3c:	81 c7 e0 08 	ret 
   13f40:	91 e8 00 08 	restore  %g0, %o0, %o0

00013f44 <read_text_integer>:
   13f44:	9d e3 bf 98 	save  %sp, -104, %sp
   13f48:	7f ff ff ec 	call  13ef8 <text_getc>
   13f4c:	90 10 00 18 	mov  %i0, %o0
   13f50:	80 a2 3f ff 	cmp  %o0, -1
   13f54:	02 80 00 15 	be  13fa8 <read_text_integer+0x64>
   13f58:	a0 10 00 08 	mov  %o0, %l0
   13f5c:	40 00 7e 1a 	call  337c4 <__ctype_b_loc@plt>
   13f60:	01 00 00 00 	nop 
   13f64:	c2 02 00 00 	ld  [ %o0 ], %g1
   13f68:	84 04 00 10 	add  %l0, %l0, %g2
   13f6c:	c2 10 40 02 	lduh  [ %g1 + %g2 ], %g1
   13f70:	80 88 60 20 	btst  0x20, %g1
   13f74:	12 bf ff f5 	bne  13f48 <read_text_integer+0x4>
   13f78:	01 00 00 00 	nop 
   13f7c:	40 00 7e 12 	call  337c4 <__ctype_b_loc@plt>
   13f80:	a2 04 3f d0 	add  %l0, -48, %l1
   13f84:	c2 02 00 00 	ld  [ %o0 ], %g1
   13f88:	84 04 00 10 	add  %l0, %l0, %g2
   13f8c:	c2 10 40 02 	lduh  [ %g1 + %g2 ], %g1
   13f90:	80 88 60 08 	btst  8, %g1
   13f94:	12 80 00 14 	bne  13fe4 <read_text_integer+0xa0>
   13f98:	01 00 00 00 	nop 
   13f9c:	e0 26 80 00 	st  %l0, [ %i2 ]
   13fa0:	10 80 00 19 	b  14004 <read_text_integer+0xc0>
   13fa4:	b0 10 20 00 	clr  %i0
   13fa8:	d0 26 80 00 	st  %o0, [ %i2 ]
   13fac:	10 80 00 16 	b  14004 <read_text_integer+0xc0>
   13fb0:	b0 10 20 00 	clr  %i0
   13fb4:	40 00 7e 04 	call  337c4 <__ctype_b_loc@plt>
   13fb8:	01 00 00 00 	nop 
   13fbc:	c2 02 00 00 	ld  [ %o0 ], %g1
   13fc0:	84 04 00 10 	add  %l0, %l0, %g2
   13fc4:	c2 10 40 02 	lduh  [ %g1 + %g2 ], %g1
   13fc8:	80 88 60 08 	btst  8, %g1
   13fcc:	02 80 00 0b 	be  13ff8 <read_text_integer+0xb4>
   13fd0:	83 2c 60 02 	sll  %l1, 2, %g1
   13fd4:	82 00 40 11 	add  %g1, %l1, %g1
   13fd8:	a2 00 40 01 	add  %g1, %g1, %l1
   13fdc:	82 04 00 11 	add  %l0, %l1, %g1
   13fe0:	a2 00 7f d0 	add  %g1, -48, %l1
   13fe4:	7f ff ff c5 	call  13ef8 <text_getc>
   13fe8:	90 10 00 18 	mov  %i0, %o0
   13fec:	80 a2 3f ff 	cmp  %o0, -1
   13ff0:	12 bf ff f1 	bne  13fb4 <read_text_integer+0x70>
   13ff4:	a0 10 00 08 	mov  %o0, %l0
   13ff8:	e2 26 40 00 	st  %l1, [ %i1 ]
   13ffc:	e0 26 80 00 	st  %l0, [ %i2 ]
   14000:	b0 10 20 01 	mov  1, %i0
   14004:	81 c7 e0 08 	ret 
   14008:	81 e8 00 00 	restore 

0001400c <read_quant_tables>:
   1400c:	9d e3 be 90 	save  %sp, -368, %sp
   14010:	90 10 00 19 	mov  %i1, %o0
   14014:	13 00 00 86 	sethi  %hi(0x21800), %o1
   14018:	40 00 7d e2 	call  337a0 <fopen@plt>
   1401c:	92 12 61 68 	or  %o1, 0x168, %o1	! 21968 <c5to8bits+0x20>
   14020:	a4 10 00 08 	mov  %o0, %l2
   14024:	a6 10 20 00 	clr  %l3
   14028:	80 a2 20 00 	cmp  %o0, 0
   1402c:	12 80 00 23 	bne  140b8 <read_quant_tables+0xac>
   14030:	a8 07 bf f8 	add  %fp, -8, %l4
   14034:	03 00 00 cd 	sethi  %hi(0x33400), %g1
   14038:	d0 00 63 e0 	ld  [ %g1 + 0x3e0 ], %o0	! 337e0 <stderr@@GLIBC_2.0>
   1403c:	13 00 00 86 	sethi  %hi(0x21800), %o1
   14040:	92 12 61 70 	or  %o1, 0x170, %o1	! 21970 <c5to8bits+0x28>
   14044:	40 00 7d bf 	call  33740 <fprintf@plt>
   14048:	94 10 00 19 	mov  %i1, %o2
   1404c:	10 80 00 46 	b  14164 <read_quant_tables+0x158>
   14050:	b0 10 20 00 	clr  %i0
   14054:	14 80 00 2d 	bg  14108 <read_quant_tables+0xfc>
   14058:	c2 07 be f4 	ld  [ %fp + -268 ], %g1
   1405c:	c2 27 be f8 	st  %g1, [ %fp + -264 ]
   14060:	a0 10 20 01 	mov  1, %l0
   14064:	a2 10 00 14 	mov  %l4, %l1
   14068:	90 10 00 12 	mov  %l2, %o0
   1406c:	92 07 be f4 	add  %fp, -268, %o1
   14070:	7f ff ff b5 	call  13f44 <read_text_integer>
   14074:	94 07 be f0 	add  %fp, -272, %o2
   14078:	80 a2 20 00 	cmp  %o0, 0
   1407c:	02 80 00 2d 	be  14130 <read_quant_tables+0x124>
   14080:	83 2c 20 02 	sll  %l0, 2, %g1
   14084:	82 00 40 11 	add  %g1, %l1, %g1
   14088:	c4 07 be f4 	ld  [ %fp + -268 ], %g2
   1408c:	a0 04 20 01 	inc  %l0
   14090:	80 a4 20 3f 	cmp  %l0, 0x3f
   14094:	04 bf ff f5 	ble  14068 <read_quant_tables+0x5c>
   14098:	c4 20 7f 00 	st  %g2, [ %g1 + -256 ]
   1409c:	90 10 00 18 	mov  %i0, %o0
   140a0:	92 10 00 13 	mov  %l3, %o1
   140a4:	94 07 be f8 	add  %fp, -264, %o2
   140a8:	96 10 00 1a 	mov  %i2, %o3
   140ac:	40 00 03 b1 	call  14f70 <jpeg_add_quant_table>
   140b0:	98 10 00 1b 	mov  %i3, %o4
   140b4:	a6 04 e0 01 	inc  %l3
   140b8:	90 10 00 12 	mov  %l2, %o0
   140bc:	92 07 be f4 	add  %fp, -268, %o1
   140c0:	7f ff ff a1 	call  13f44 <read_text_integer>
   140c4:	94 07 be f0 	add  %fp, -272, %o2
   140c8:	80 a2 20 00 	cmp  %o0, 0
   140cc:	12 bf ff e2 	bne  14054 <read_quant_tables+0x48>
   140d0:	80 a4 e0 03 	cmp  %l3, 3
   140d4:	c2 07 be f0 	ld  [ %fp + -272 ], %g1
   140d8:	80 a0 7f ff 	cmp  %g1, -1
   140dc:	02 80 00 1f 	be  14158 <read_quant_tables+0x14c>
   140e0:	03 00 00 cd 	sethi  %hi(0x33400), %g1
   140e4:	d0 00 63 e0 	ld  [ %g1 + 0x3e0 ], %o0	! 337e0 <stderr@@GLIBC_2.0>
   140e8:	13 00 00 86 	sethi  %hi(0x21800), %o1
   140ec:	92 12 61 90 	or  %o1, 0x190, %o1	! 21990 <c5to8bits+0x48>
   140f0:	40 00 7d 94 	call  33740 <fprintf@plt>
   140f4:	94 10 00 19 	mov  %i1, %o2
   140f8:	40 00 7d 9e 	call  33770 <fclose@plt>
   140fc:	90 10 00 12 	mov  %l2, %o0
   14100:	10 80 00 19 	b  14164 <read_quant_tables+0x158>
   14104:	b0 10 20 00 	clr  %i0
   14108:	03 00 00 cd 	sethi  %hi(0x33400), %g1
   1410c:	d0 00 63 e0 	ld  [ %g1 + 0x3e0 ], %o0	! 337e0 <stderr@@GLIBC_2.0>
   14110:	13 00 00 86 	sethi  %hi(0x21800), %o1
   14114:	92 12 61 b0 	or  %o1, 0x1b0, %o1	! 219b0 <c5to8bits+0x68>
   14118:	40 00 7d 8a 	call  33740 <fprintf@plt>
   1411c:	94 10 00 19 	mov  %i1, %o2
   14120:	40 00 7d 94 	call  33770 <fclose@plt>
   14124:	90 10 00 12 	mov  %l2, %o0
   14128:	10 80 00 0f 	b  14164 <read_quant_tables+0x158>
   1412c:	b0 10 20 00 	clr  %i0
   14130:	03 00 00 cd 	sethi  %hi(0x33400), %g1
   14134:	d0 00 63 e0 	ld  [ %g1 + 0x3e0 ], %o0	! 337e0 <stderr@@GLIBC_2.0>
   14138:	13 00 00 86 	sethi  %hi(0x21800), %o1
   1413c:	92 12 61 d0 	or  %o1, 0x1d0, %o1	! 219d0 <c5to8bits+0x88>
   14140:	40 00 7d 80 	call  33740 <fprintf@plt>
   14144:	94 10 00 19 	mov  %i1, %o2
   14148:	40 00 7d 8a 	call  33770 <fclose@plt>
   1414c:	90 10 00 12 	mov  %l2, %o0
   14150:	10 80 00 05 	b  14164 <read_quant_tables+0x158>
   14154:	b0 10 20 00 	clr  %i0
   14158:	40 00 7d 86 	call  33770 <fclose@plt>
   1415c:	90 10 00 12 	mov  %l2, %o0
   14160:	b0 10 20 01 	mov  1, %i0
   14164:	81 c7 e0 08 	ret 
   14168:	81 e8 00 00 	restore 

0001416c <read_scan_integer>:
   1416c:	9d e3 bf 98 	save  %sp, -104, %sp
   14170:	90 10 00 18 	mov  %i0, %o0
   14174:	92 10 00 19 	mov  %i1, %o1
   14178:	7f ff ff 73 	call  13f44 <read_text_integer>
   1417c:	94 10 00 1a 	mov  %i2, %o2
   14180:	80 a2 20 00 	cmp  %o0, 0
   14184:	02 80 00 2f 	be  14240 <read_scan_integer+0xd4>
   14188:	82 10 20 00 	clr  %g1
   1418c:	10 80 00 05 	b  141a0 <read_scan_integer+0x34>
   14190:	f2 06 80 00 	ld  [ %i2 ], %i1
   14194:	7f ff ff 59 	call  13ef8 <text_getc>
   14198:	90 10 00 18 	mov  %i0, %o0
   1419c:	b2 10 00 08 	mov  %o0, %i1
   141a0:	80 a6 7f ff 	cmp  %i1, -1
   141a4:	02 80 00 0a 	be  141cc <read_scan_integer+0x60>
   141a8:	01 00 00 00 	nop 
   141ac:	40 00 7d 86 	call  337c4 <__ctype_b_loc@plt>
   141b0:	01 00 00 00 	nop 
   141b4:	c2 02 00 00 	ld  [ %o0 ], %g1
   141b8:	84 06 40 19 	add  %i1, %i1, %g2
   141bc:	c2 10 40 02 	lduh  [ %g1 + %g2 ], %g1
   141c0:	80 88 60 20 	btst  0x20, %g1
   141c4:	12 bf ff f4 	bne  14194 <read_scan_integer+0x28>
   141c8:	01 00 00 00 	nop 
   141cc:	40 00 7d 7e 	call  337c4 <__ctype_b_loc@plt>
   141d0:	01 00 00 00 	nop 
   141d4:	c2 02 00 00 	ld  [ %o0 ], %g1
   141d8:	84 06 40 19 	add  %i1, %i1, %g2
   141dc:	c2 10 40 02 	lduh  [ %g1 + %g2 ], %g1
   141e0:	80 88 60 08 	btst  8, %g1
   141e4:	02 80 00 0a 	be  1420c <read_scan_integer+0xa0>
   141e8:	82 38 00 19 	xnor  %g0, %i1, %g1
   141ec:	90 10 00 19 	mov  %i1, %o0
   141f0:	40 00 7d 3f 	call  336ec <ungetc@plt>
   141f4:	92 10 00 18 	mov  %i0, %o1
   141f8:	82 10 20 00 	clr  %g1
   141fc:	80 a2 3f ff 	cmp  %o0, -1
   14200:	12 80 00 0e 	bne  14238 <read_scan_integer+0xcc>
   14204:	b2 10 20 20 	mov  0x20, %i1
   14208:	30 80 00 0e 	b,a   14240 <read_scan_integer+0xd4>
   1420c:	80 a0 00 01 	cmp  %g0, %g1
   14210:	84 40 20 00 	addx  %g0, 0, %g2
   14214:	82 1e 60 3b 	xor  %i1, 0x3b, %g1
   14218:	80 a0 00 01 	cmp  %g0, %g1
   1421c:	82 40 20 00 	addx  %g0, 0, %g1
   14220:	80 88 80 01 	btst  %g2, %g1
   14224:	22 80 00 06 	be,a   1423c <read_scan_integer+0xd0>
   14228:	f2 26 80 00 	st  %i1, [ %i2 ]
   1422c:	80 a6 60 3a 	cmp  %i1, 0x3a
   14230:	32 80 00 02 	bne,a   14238 <read_scan_integer+0xcc>
   14234:	b2 10 20 20 	mov  0x20, %i1
   14238:	f2 26 80 00 	st  %i1, [ %i2 ]
   1423c:	82 10 20 01 	mov  1, %g1
   14240:	81 c7 e0 08 	ret 
   14244:	91 e8 00 01 	restore  %g0, %g1, %o0

00014248 <read_scan_script>:
   14248:	9d e3 b1 80 	save  %sp, -3712, %sp
   1424c:	90 10 00 19 	mov  %i1, %o0
   14250:	13 00 00 86 	sethi  %hi(0x21800), %o1
   14254:	40 00 7d 53 	call  337a0 <fopen@plt>
   14258:	92 12 61 68 	or  %o1, 0x168, %o1	! 21968 <c5to8bits+0x20>
   1425c:	a4 10 00 08 	mov  %o0, %l2
   14260:	a2 07 b1 e8 	add  %fp, -3608, %l1
   14264:	80 a2 20 00 	cmp  %o0, 0
   14268:	12 80 00 69 	bne  1440c <read_scan_script+0x1c4>
   1426c:	a6 10 20 00 	clr  %l3
   14270:	03 00 00 cd 	sethi  %hi(0x33400), %g1
   14274:	d0 00 63 e0 	ld  [ %g1 + 0x3e0 ], %o0	! 337e0 <stderr@@GLIBC_2.0>
   14278:	13 00 00 86 	sethi  %hi(0x21800), %o1
   1427c:	92 12 61 f0 	or  %o1, 0x1f0, %o1	! 219f0 <c5to8bits+0xa8>
   14280:	40 00 7d 30 	call  33740 <fprintf@plt>
   14284:	94 10 00 19 	mov  %i1, %o2
   14288:	10 80 00 9d 	b  144fc <read_scan_script+0x2b4>
   1428c:	b0 10 20 00 	clr  %i0
   14290:	14 80 00 73 	bg  1445c <read_scan_script+0x214>
   14294:	c2 07 b1 e4 	ld  [ %fp + -3612 ], %g1
   14298:	c2 24 60 04 	st  %g1, [ %l1 + 4 ]
   1429c:	c2 07 b1 e0 	ld  [ %fp + -3616 ], %g1
   142a0:	80 a0 60 20 	cmp  %g1, 0x20
   142a4:	12 80 00 12 	bne  142ec <read_scan_script+0xa4>
   142a8:	a0 10 20 01 	mov  1, %l0
   142ac:	80 a4 20 03 	cmp  %l0, 3
   142b0:	14 80 00 75 	bg  14484 <read_scan_script+0x23c>
   142b4:	92 07 b1 e4 	add  %fp, -3612, %o1
   142b8:	90 10 00 12 	mov  %l2, %o0
   142bc:	7f ff ff ac 	call  1416c <read_scan_integer>
   142c0:	94 07 b1 e0 	add  %fp, -3616, %o2
   142c4:	80 a2 20 00 	cmp  %o0, 0
   142c8:	02 80 00 46 	be  143e0 <read_scan_script+0x198>
   142cc:	83 2c 20 02 	sll  %l0, 2, %g1
   142d0:	82 00 40 11 	add  %g1, %l1, %g1
   142d4:	c4 07 b1 e4 	ld  [ %fp + -3612 ], %g2
   142d8:	c4 20 60 04 	st  %g2, [ %g1 + 4 ]
   142dc:	c2 07 b1 e0 	ld  [ %fp + -3616 ], %g1
   142e0:	80 a0 60 20 	cmp  %g1, 0x20
   142e4:	02 bf ff f2 	be  142ac <read_scan_script+0x64>
   142e8:	a0 04 20 01 	inc  %l0
   142ec:	e0 24 40 00 	st  %l0, [ %l1 ]
   142f0:	c2 07 b1 e0 	ld  [ %fp + -3616 ], %g1
   142f4:	80 a0 60 3a 	cmp  %g1, 0x3a
   142f8:	32 80 00 2c 	bne,a   143a8 <read_scan_script+0x160>
   142fc:	c0 24 60 14 	clr  [ %l1 + 0x14 ]
   14300:	90 10 00 12 	mov  %l2, %o0
   14304:	92 07 b1 e4 	add  %fp, -3612, %o1
   14308:	7f ff ff 99 	call  1416c <read_scan_integer>
   1430c:	94 07 b1 e0 	add  %fp, -3616, %o2
   14310:	80 a2 20 00 	cmp  %o0, 0
   14314:	02 80 00 33 	be  143e0 <read_scan_script+0x198>
   14318:	c2 07 b1 e0 	ld  [ %fp + -3616 ], %g1
   1431c:	80 a0 60 20 	cmp  %g1, 0x20
   14320:	12 80 00 30 	bne  143e0 <read_scan_script+0x198>
   14324:	c2 07 b1 e4 	ld  [ %fp + -3612 ], %g1
   14328:	c2 24 60 14 	st  %g1, [ %l1 + 0x14 ]
   1432c:	90 10 00 12 	mov  %l2, %o0
   14330:	92 07 b1 e4 	add  %fp, -3612, %o1
   14334:	7f ff ff 8e 	call  1416c <read_scan_integer>
   14338:	94 07 b1 e0 	add  %fp, -3616, %o2
   1433c:	80 a2 20 00 	cmp  %o0, 0
   14340:	02 80 00 28 	be  143e0 <read_scan_script+0x198>
   14344:	c2 07 b1 e0 	ld  [ %fp + -3616 ], %g1
   14348:	80 a0 60 20 	cmp  %g1, 0x20
   1434c:	12 80 00 25 	bne  143e0 <read_scan_script+0x198>
   14350:	c2 07 b1 e4 	ld  [ %fp + -3612 ], %g1
   14354:	c2 24 60 18 	st  %g1, [ %l1 + 0x18 ]
   14358:	90 10 00 12 	mov  %l2, %o0
   1435c:	92 07 b1 e4 	add  %fp, -3612, %o1
   14360:	7f ff ff 83 	call  1416c <read_scan_integer>
   14364:	94 07 b1 e0 	add  %fp, -3616, %o2
   14368:	80 a2 20 00 	cmp  %o0, 0
   1436c:	02 80 00 1d 	be  143e0 <read_scan_script+0x198>
   14370:	c2 07 b1 e0 	ld  [ %fp + -3616 ], %g1
   14374:	80 a0 60 20 	cmp  %g1, 0x20
   14378:	12 80 00 1a 	bne  143e0 <read_scan_script+0x198>
   1437c:	c2 07 b1 e4 	ld  [ %fp + -3612 ], %g1
   14380:	c2 24 60 1c 	st  %g1, [ %l1 + 0x1c ]
   14384:	90 10 00 12 	mov  %l2, %o0
   14388:	92 07 b1 e4 	add  %fp, -3612, %o1
   1438c:	7f ff ff 78 	call  1416c <read_scan_integer>
   14390:	94 07 b1 e0 	add  %fp, -3616, %o2
   14394:	80 a2 20 00 	cmp  %o0, 0
   14398:	02 80 00 12 	be  143e0 <read_scan_script+0x198>
   1439c:	c2 07 b1 e4 	ld  [ %fp + -3612 ], %g1
   143a0:	10 80 00 06 	b  143b8 <read_scan_script+0x170>
   143a4:	c2 24 60 20 	st  %g1, [ %l1 + 0x20 ]
   143a8:	82 10 20 3f 	mov  0x3f, %g1
   143ac:	c2 24 60 18 	st  %g1, [ %l1 + 0x18 ]
   143b0:	c0 24 60 1c 	clr  [ %l1 + 0x1c ]
   143b4:	c0 24 60 20 	clr  [ %l1 + 0x20 ]
   143b8:	c2 07 b1 e0 	ld  [ %fp + -3616 ], %g1
   143bc:	84 18 60 3b 	xor  %g1, 0x3b, %g2
   143c0:	80 a0 00 02 	cmp  %g0, %g2
   143c4:	84 40 20 00 	addx  %g0, 0, %g2
   143c8:	82 38 00 01 	xnor  %g0, %g1, %g1
   143cc:	80 a0 00 01 	cmp  %g0, %g1
   143d0:	82 40 20 00 	addx  %g0, 0, %g1
   143d4:	80 88 80 01 	btst  %g2, %g1
   143d8:	22 80 00 0c 	be,a   14408 <read_scan_script+0x1c0>
   143dc:	a2 04 60 24 	add  %l1, 0x24, %l1
   143e0:	03 00 00 cd 	sethi  %hi(0x33400), %g1
   143e4:	d0 00 63 e0 	ld  [ %g1 + 0x3e0 ], %o0	! 337e0 <stderr@@GLIBC_2.0>
   143e8:	13 00 00 86 	sethi  %hi(0x21800), %o1
   143ec:	92 12 62 18 	or  %o1, 0x218, %o1	! 21a18 <c5to8bits+0xd0>
   143f0:	40 00 7c d4 	call  33740 <fprintf@plt>
   143f4:	94 10 00 19 	mov  %i1, %o2
   143f8:	40 00 7c de 	call  33770 <fclose@plt>
   143fc:	90 10 00 12 	mov  %l2, %o0
   14400:	10 80 00 3f 	b  144fc <read_scan_script+0x2b4>
   14404:	b0 10 20 00 	clr  %i0
   14408:	a6 04 e0 01 	inc  %l3
   1440c:	90 10 00 12 	mov  %l2, %o0
   14410:	92 07 b1 e4 	add  %fp, -3612, %o1
   14414:	7f ff ff 56 	call  1416c <read_scan_integer>
   14418:	94 07 b1 e0 	add  %fp, -3616, %o2
   1441c:	80 a2 20 00 	cmp  %o0, 0
   14420:	12 bf ff 9c 	bne  14290 <read_scan_script+0x48>
   14424:	80 a4 e0 63 	cmp  %l3, 0x63
   14428:	c2 07 b1 e0 	ld  [ %fp + -3616 ], %g1
   1442c:	80 a0 7f ff 	cmp  %g1, -1
   14430:	02 80 00 1f 	be  144ac <read_scan_script+0x264>
   14434:	03 00 00 cd 	sethi  %hi(0x33400), %g1
   14438:	d0 00 63 e0 	ld  [ %g1 + 0x3e0 ], %o0	! 337e0 <stderr@@GLIBC_2.0>
   1443c:	13 00 00 86 	sethi  %hi(0x21800), %o1
   14440:	92 12 61 90 	or  %o1, 0x190, %o1	! 21990 <c5to8bits+0x48>
   14444:	40 00 7c bf 	call  33740 <fprintf@plt>
   14448:	94 10 00 19 	mov  %i1, %o2
   1444c:	40 00 7c c9 	call  33770 <fclose@plt>
   14450:	90 10 00 12 	mov  %l2, %o0
   14454:	10 80 00 2a 	b  144fc <read_scan_script+0x2b4>
   14458:	b0 10 20 00 	clr  %i0
   1445c:	03 00 00 cd 	sethi  %hi(0x33400), %g1
   14460:	d0 00 63 e0 	ld  [ %g1 + 0x3e0 ], %o0	! 337e0 <stderr@@GLIBC_2.0>
   14464:	13 00 00 86 	sethi  %hi(0x21800), %o1
   14468:	92 12 62 40 	or  %o1, 0x240, %o1	! 21a40 <c5to8bits+0xf8>
   1446c:	40 00 7c b5 	call  33740 <fprintf@plt>
   14470:	94 10 00 19 	mov  %i1, %o2
   14474:	40 00 7c bf 	call  33770 <fclose@plt>
   14478:	90 10 00 12 	mov  %l2, %o0
   1447c:	10 80 00 20 	b  144fc <read_scan_script+0x2b4>
   14480:	b0 10 20 00 	clr  %i0
   14484:	03 00 00 cd 	sethi  %hi(0x33400), %g1
   14488:	d0 00 63 e0 	ld  [ %g1 + 0x3e0 ], %o0	! 337e0 <stderr@@GLIBC_2.0>
   1448c:	13 00 00 86 	sethi  %hi(0x21800), %o1
   14490:	92 12 62 68 	or  %o1, 0x268, %o1	! 21a68 <c5to8bits+0x120>
   14494:	40 00 7c ab 	call  33740 <fprintf@plt>
   14498:	94 10 00 19 	mov  %i1, %o2
   1449c:	40 00 7c b5 	call  33770 <fclose@plt>
   144a0:	90 10 00 12 	mov  %l2, %o0
   144a4:	10 80 00 16 	b  144fc <read_scan_script+0x2b4>
   144a8:	b0 10 20 00 	clr  %i0
   144ac:	80 a4 e0 00 	cmp  %l3, 0
   144b0:	04 80 00 10 	ble  144f0 <read_scan_script+0x2a8>
   144b4:	90 10 00 18 	mov  %i0, %o0
   144b8:	c2 06 20 04 	ld  [ %i0 + 4 ], %g1
   144bc:	a1 2c e0 03 	sll  %l3, 3, %l0
   144c0:	a0 04 00 13 	add  %l0, %l3, %l0
   144c4:	a1 2c 20 02 	sll  %l0, 2, %l0
   144c8:	c2 00 40 00 	ld  [ %g1 ], %g1
   144cc:	92 10 20 01 	mov  1, %o1
   144d0:	9f c0 40 00 	call  %g1
   144d4:	94 10 00 10 	mov  %l0, %o2
   144d8:	a2 10 00 08 	mov  %o0, %l1
   144dc:	92 07 b1 e8 	add  %fp, -3608, %o1
   144e0:	40 00 7c a1 	call  33764 <memcpy@plt>
   144e4:	94 10 00 10 	mov  %l0, %o2
   144e8:	e2 26 20 a4 	st  %l1, [ %i0 + 0xa4 ]
   144ec:	e6 26 20 a0 	st  %l3, [ %i0 + 0xa0 ]
   144f0:	40 00 7c a0 	call  33770 <fclose@plt>
   144f4:	90 10 00 12 	mov  %l2, %o0
   144f8:	b0 10 20 01 	mov  1, %i0
   144fc:	81 c7 e0 08 	ret 
   14500:	81 e8 00 00 	restore 

00014504 <set_quant_slots>:
   14504:	9d e3 bf 90 	save  %sp, -112, %sp
   14508:	c0 27 bf f4 	clr  [ %fp + -12 ]
   1450c:	a0 10 20 00 	clr  %l0
   14510:	c2 4e 40 00 	ldsb  [ %i1 ], %g1
   14514:	80 a0 60 00 	cmp  %g1, 0
   14518:	22 80 00 2b 	be,a   145c4 <set_quant_slots+0xc0>
   1451c:	c2 06 20 3c 	ld  [ %i0 + 0x3c ], %g1
   14520:	82 10 20 2c 	mov  0x2c, %g1
   14524:	c2 2f bf f3 	stb  %g1, [ %fp + -13 ]
   14528:	90 10 00 19 	mov  %i1, %o0
   1452c:	13 00 00 86 	sethi  %hi(0x21800), %o1
   14530:	92 12 62 98 	or  %o1, 0x298, %o1	! 21a98 <c5to8bits+0x150>
   14534:	94 07 bf f4 	add  %fp, -12, %o2
   14538:	40 00 7c 88 	call  33758 <sscanf@plt>
   1453c:	96 07 bf f3 	add  %fp, -13, %o3
   14540:	80 a2 20 00 	cmp  %o0, 0
   14544:	14 80 00 04 	bg  14554 <set_quant_slots+0x50>
   14548:	c2 4f bf f3 	ldsb  [ %fp + -13 ], %g1
   1454c:	10 80 00 27 	b  145e8 <set_quant_slots+0xe4>
   14550:	b0 10 20 00 	clr  %i0
   14554:	80 a0 60 2c 	cmp  %g1, 0x2c
   14558:	02 80 00 04 	be  14568 <set_quant_slots+0x64>
   1455c:	c2 07 bf f4 	ld  [ %fp + -12 ], %g1
   14560:	10 80 00 22 	b  145e8 <set_quant_slots+0xe4>
   14564:	b0 10 20 00 	clr  %i0
   14568:	80 a0 60 03 	cmp  %g1, 3
   1456c:	28 80 00 0a 	bleu,a   14594 <set_quant_slots+0x90>
   14570:	c2 06 20 3c 	ld  [ %i0 + 0x3c ], %g1
   14574:	03 00 00 cd 	sethi  %hi(0x33400), %g1
   14578:	d0 00 63 e0 	ld  [ %g1 + 0x3e0 ], %o0	! 337e0 <stderr@@GLIBC_2.0>
   1457c:	13 00 00 86 	sethi  %hi(0x21800), %o1
   14580:	92 12 62 a0 	or  %o1, 0x2a0, %o1	! 21aa0 <c5to8bits+0x158>
   14584:	40 00 7c 6f 	call  33740 <fprintf@plt>
   14588:	94 10 20 03 	mov  3, %o2
   1458c:	10 80 00 17 	b  145e8 <set_quant_slots+0xe4>
   14590:	b0 10 20 00 	clr  %i0
   14594:	84 5c 20 54 	smul  %l0, 0x54, %g2
   14598:	82 00 40 02 	add  %g1, %g2, %g1
   1459c:	c4 07 bf f4 	ld  [ %fp + -12 ], %g2
   145a0:	c4 20 60 10 	st  %g2, [ %g1 + 0x10 ]
   145a4:	c2 4e 40 00 	ldsb  [ %i1 ], %g1
   145a8:	80 a0 60 00 	cmp  %g1, 0
   145ac:	02 80 00 0a 	be  145d4 <set_quant_slots+0xd0>
   145b0:	80 a0 60 2c 	cmp  %g1, 0x2c
   145b4:	12 bf ff fc 	bne  145a4 <set_quant_slots+0xa0>
   145b8:	b2 06 60 01 	inc  %i1
   145bc:	10 80 00 07 	b  145d8 <set_quant_slots+0xd4>
   145c0:	a0 04 20 01 	inc  %l0
   145c4:	84 5c 20 54 	smul  %l0, 0x54, %g2
   145c8:	82 00 40 02 	add  %g1, %g2, %g1
   145cc:	c4 07 bf f4 	ld  [ %fp + -12 ], %g2
   145d0:	c4 20 60 10 	st  %g2, [ %g1 + 0x10 ]
   145d4:	a0 04 20 01 	inc  %l0
   145d8:	80 a4 20 09 	cmp  %l0, 9
   145dc:	24 bf ff ce 	ble,a   14514 <set_quant_slots+0x10>
   145e0:	c2 4e 40 00 	ldsb  [ %i1 ], %g1
   145e4:	b0 10 20 01 	mov  1, %i0
   145e8:	81 c7 e0 08 	ret 
   145ec:	81 e8 00 00 	restore 

000145f0 <set_sample_factors>:
   145f0:	9d e3 bf 88 	save  %sp, -120, %sp
   145f4:	a0 10 20 00 	clr  %l0
   145f8:	a2 10 20 01 	mov  1, %l1
   145fc:	c2 4e 40 00 	ldsb  [ %i1 ], %g1
   14600:	80 a0 60 00 	cmp  %g1, 0
   14604:	22 80 00 41 	be,a   14708 <set_sample_factors+0x118>
   14608:	c2 06 20 3c 	ld  [ %i0 + 0x3c ], %g1
   1460c:	82 10 20 2c 	mov  0x2c, %g1
   14610:	c2 2f bf eb 	stb  %g1, [ %fp + -21 ]
   14614:	90 10 00 19 	mov  %i1, %o0
   14618:	13 00 00 86 	sethi  %hi(0x21800), %o1
   1461c:	92 12 62 d0 	or  %o1, 0x2d0, %o1	! 21ad0 <c5to8bits+0x188>
   14620:	94 07 bf f4 	add  %fp, -12, %o2
   14624:	96 07 bf f3 	add  %fp, -13, %o3
   14628:	98 07 bf ec 	add  %fp, -20, %o4
   1462c:	40 00 7c 4b 	call  33758 <sscanf@plt>
   14630:	9a 07 bf eb 	add  %fp, -21, %o5
   14634:	80 a2 20 02 	cmp  %o0, 2
   14638:	14 80 00 04 	bg  14648 <set_sample_factors+0x58>
   1463c:	c2 4f bf f3 	ldsb  [ %fp + -13 ], %g1
   14640:	10 80 00 3d 	b  14734 <set_sample_factors+0x144>
   14644:	b0 10 20 00 	clr  %i0
   14648:	84 18 60 78 	xor  %g1, 0x78, %g2
   1464c:	80 a0 00 02 	cmp  %g0, %g2
   14650:	84 40 20 00 	addx  %g0, 0, %g2
   14654:	82 18 60 58 	xor  %g1, 0x58, %g1
   14658:	80 a0 00 01 	cmp  %g0, %g1
   1465c:	82 40 20 00 	addx  %g0, 0, %g1
   14660:	80 88 80 01 	btst  %g2, %g1
   14664:	12 80 00 05 	bne  14678 <set_sample_factors+0x88>
   14668:	c2 4f bf eb 	ldsb  [ %fp + -21 ], %g1
   1466c:	80 a0 60 2c 	cmp  %g1, 0x2c
   14670:	02 80 00 04 	be  14680 <set_sample_factors+0x90>
   14674:	c2 07 bf f4 	ld  [ %fp + -12 ], %g1
   14678:	10 80 00 2f 	b  14734 <set_sample_factors+0x144>
   1467c:	b0 10 20 00 	clr  %i0
   14680:	82 00 7f ff 	add  %g1, -1, %g1
   14684:	80 a0 60 03 	cmp  %g1, 3
   14688:	18 80 00 07 	bgu  146a4 <set_sample_factors+0xb4>
   1468c:	c2 07 bf ec 	ld  [ %fp + -20 ], %g1
   14690:	80 a0 60 00 	cmp  %g1, 0
   14694:	04 80 00 04 	ble  146a4 <set_sample_factors+0xb4>
   14698:	80 a0 60 04 	cmp  %g1, 4
   1469c:	24 80 00 0b 	ble,a   146c8 <set_sample_factors+0xd8>
   146a0:	c2 06 20 3c 	ld  [ %i0 + 0x3c ], %g1
   146a4:	11 00 00 86 	sethi  %hi(0x21800), %o0
   146a8:	90 12 22 e0 	or  %o0, 0x2e0, %o0	! 21ae0 <c5to8bits+0x198>
   146ac:	92 10 20 01 	mov  1, %o1
   146b0:	94 10 20 23 	mov  0x23, %o2
   146b4:	03 00 00 cd 	sethi  %hi(0x33400), %g1
   146b8:	40 00 7c 3d 	call  337ac <fwrite@plt>
   146bc:	d6 00 63 e0 	ld  [ %g1 + 0x3e0 ], %o3	! 337e0 <stderr@@GLIBC_2.0>
   146c0:	10 80 00 1d 	b  14734 <set_sample_factors+0x144>
   146c4:	b0 10 20 00 	clr  %i0
   146c8:	86 5c 20 54 	smul  %l0, 0x54, %g3
   146cc:	82 00 40 03 	add  %g1, %g3, %g1
   146d0:	c4 07 bf f4 	ld  [ %fp + -12 ], %g2
   146d4:	c4 20 60 08 	st  %g2, [ %g1 + 8 ]
   146d8:	c2 06 20 3c 	ld  [ %i0 + 0x3c ], %g1
   146dc:	82 00 40 03 	add  %g1, %g3, %g1
   146e0:	c4 07 bf ec 	ld  [ %fp + -20 ], %g2
   146e4:	c4 20 60 0c 	st  %g2, [ %g1 + 0xc ]
   146e8:	c2 4e 40 00 	ldsb  [ %i1 ], %g1
   146ec:	80 a0 60 00 	cmp  %g1, 0
   146f0:	02 80 00 0c 	be  14720 <set_sample_factors+0x130>
   146f4:	80 a0 60 2c 	cmp  %g1, 0x2c
   146f8:	12 bf ff fc 	bne  146e8 <set_sample_factors+0xf8>
   146fc:	b2 06 60 01 	inc  %i1
   14700:	10 80 00 09 	b  14724 <set_sample_factors+0x134>
   14704:	a0 04 20 01 	inc  %l0
   14708:	84 5c 20 54 	smul  %l0, 0x54, %g2
   1470c:	82 00 40 02 	add  %g1, %g2, %g1
   14710:	e2 20 60 08 	st  %l1, [ %g1 + 8 ]
   14714:	c2 06 20 3c 	ld  [ %i0 + 0x3c ], %g1
   14718:	82 00 40 02 	add  %g1, %g2, %g1
   1471c:	e2 20 60 0c 	st  %l1, [ %g1 + 0xc ]
   14720:	a0 04 20 01 	inc  %l0
   14724:	80 a4 20 09 	cmp  %l0, 9
   14728:	24 bf ff b6 	ble,a   14600 <set_sample_factors+0x10>
   1472c:	c2 4e 40 00 	ldsb  [ %i1 ], %g1
   14730:	b0 10 20 01 	mov  1, %i0
   14734:	81 c7 e0 08 	ret 
   14738:	81 e8 00 00 	restore 

0001473c <keymatch>:
   1473c:	9d e3 bf 98 	save  %sp, -104, %sp
   14740:	a4 10 20 00 	clr  %l2
   14744:	e0 4e 00 00 	ldsb  [ %i0 ], %l0
   14748:	80 a4 20 00 	cmp  %l0, 0
   1474c:	02 80 00 1f 	be  147c8 <keymatch+0x8c>
   14750:	b0 06 20 01 	inc  %i0
   14754:	e2 4e 40 00 	ldsb  [ %i1 ], %l1
   14758:	80 a4 60 00 	cmp  %l1, 0
   1475c:	02 80 00 20 	be  147dc <keymatch+0xa0>
   14760:	b2 06 60 01 	inc  %i1
   14764:	40 00 7c 18 	call  337c4 <__ctype_b_loc@plt>
   14768:	01 00 00 00 	nop 
   1476c:	c2 02 00 00 	ld  [ %o0 ], %g1
   14770:	84 04 00 10 	add  %l0, %l0, %g2
   14774:	c2 10 40 02 	lduh  [ %g1 + %g2 ], %g1
   14778:	80 88 60 01 	btst  1, %g1
   1477c:	02 80 00 0d 	be  147b0 <keymatch+0x74>
   14780:	80 a4 00 11 	cmp  %l0, %l1
   14784:	84 04 20 80 	add  %l0, 0x80, %g2
   14788:	80 a0 a1 7f 	cmp  %g2, 0x17f
   1478c:	18 80 00 07 	bgu  147a8 <keymatch+0x6c>
   14790:	82 10 00 10 	mov  %l0, %g1
   14794:	40 00 7b d9 	call  336f8 <__ctype_tolower_loc@plt>
   14798:	01 00 00 00 	nop 
   1479c:	c4 02 00 00 	ld  [ %o0 ], %g2
   147a0:	83 2c 20 02 	sll  %l0, 2, %g1
   147a4:	c2 00 80 01 	ld  [ %g2 + %g1 ], %g1
   147a8:	a0 10 00 01 	mov  %g1, %l0
   147ac:	80 a4 00 11 	cmp  %l0, %l1
   147b0:	12 80 00 0d 	bne  147e4 <keymatch+0xa8>
   147b4:	a4 04 a0 01 	inc  %l2
   147b8:	e0 4e 00 00 	ldsb  [ %i0 ], %l0
   147bc:	80 a4 20 00 	cmp  %l0, 0
   147c0:	12 bf ff e5 	bne  14754 <keymatch+0x18>
   147c4:	b0 06 20 01 	inc  %i0
   147c8:	80 a4 80 1a 	cmp  %l2, %i2
   147cc:	06 80 00 07 	bl  147e8 <keymatch+0xac>
   147d0:	b0 10 20 00 	clr  %i0
   147d4:	10 80 00 05 	b  147e8 <keymatch+0xac>
   147d8:	b0 10 20 01 	mov  1, %i0
   147dc:	10 80 00 03 	b  147e8 <keymatch+0xac>
   147e0:	b0 10 20 00 	clr  %i0
   147e4:	b0 10 20 00 	clr  %i0
   147e8:	81 c7 e0 08 	ret 
   147ec:	81 e8 00 00 	restore 

000147f0 <read_stdin>:
   147f0:	03 00 00 cd 	sethi  %hi(0x33400), %g1
   147f4:	81 c3 e0 08 	retl 
   147f8:	d0 00 63 e4 	ld  [ %g1 + 0x3e4 ], %o0	! 337e4 <stdin@@GLIBC_2.0>

000147fc <write_stdout>:
   147fc:	03 00 00 cd 	sethi  %hi(0x33400), %g1
   14800:	81 c3 e0 08 	retl 
   14804:	d0 00 63 dc 	ld  [ %g1 + 0x3dc ], %o0	! 337dc <__bss_start>

00014808 <jpeg_CreateCompress>:
   14808:	9d e3 bf 98 	save  %sp, -104, %sp
   1480c:	80 a6 60 3d 	cmp  %i1, 0x3d
   14810:	02 80 00 0e 	be  14848 <jpeg_CreateCompress+0x40>
   14814:	c0 26 20 04 	clr  [ %i0 + 4 ]
   14818:	c4 06 00 00 	ld  [ %i0 ], %g2
   1481c:	82 10 20 0a 	mov  0xa, %g1
   14820:	c2 20 a0 14 	st  %g1, [ %g2 + 0x14 ]
   14824:	c4 06 00 00 	ld  [ %i0 ], %g2
   14828:	82 10 20 3d 	mov  0x3d, %g1
   1482c:	c2 20 a0 18 	st  %g1, [ %g2 + 0x18 ]
   14830:	c2 06 00 00 	ld  [ %i0 ], %g1
   14834:	f2 20 60 1c 	st  %i1, [ %g1 + 0x1c ]
   14838:	c2 06 00 00 	ld  [ %i0 ], %g1
   1483c:	c2 00 40 00 	ld  [ %g1 ], %g1
   14840:	9f c0 40 00 	call  %g1
   14844:	90 10 00 18 	mov  %i0, %o0
   14848:	80 a6 a1 68 	cmp  %i2, 0x168
   1484c:	02 80 00 0d 	be  14880 <jpeg_CreateCompress+0x78>
   14850:	82 10 20 13 	mov  0x13, %g1
   14854:	c4 06 00 00 	ld  [ %i0 ], %g2
   14858:	c2 20 a0 14 	st  %g1, [ %g2 + 0x14 ]
   1485c:	c4 06 00 00 	ld  [ %i0 ], %g2
   14860:	82 10 21 68 	mov  0x168, %g1
   14864:	c2 20 a0 18 	st  %g1, [ %g2 + 0x18 ]
   14868:	c2 06 00 00 	ld  [ %i0 ], %g1
   1486c:	f4 20 60 1c 	st  %i2, [ %g1 + 0x1c ]
   14870:	c2 06 00 00 	ld  [ %i0 ], %g1
   14874:	c2 00 40 00 	ld  [ %g1 ], %g1
   14878:	9f c0 40 00 	call  %g1
   1487c:	90 10 00 18 	mov  %i0, %o0
   14880:	e0 06 00 00 	ld  [ %i0 ], %l0
   14884:	90 10 00 18 	mov  %i0, %o0
   14888:	92 10 20 00 	clr  %o1
   1488c:	40 00 7b c2 	call  33794 <memset@plt>
   14890:	94 10 21 68 	mov  0x168, %o2
   14894:	e0 26 00 00 	st  %l0, [ %i0 ]
   14898:	c0 26 20 0c 	clr  [ %i0 + 0xc ]
   1489c:	40 00 29 f1 	call  1f060 <jinit_memory_mgr>
   148a0:	90 10 00 18 	mov  %i0, %o0
   148a4:	c0 26 20 08 	clr  [ %i0 + 8 ]
   148a8:	c0 26 20 14 	clr  [ %i0 + 0x14 ]
   148ac:	c0 26 20 3c 	clr  [ %i0 + 0x3c ]
   148b0:	84 10 20 00 	clr  %g2
   148b4:	83 28 a0 02 	sll  %g2, 2, %g1
   148b8:	82 00 40 18 	add  %g1, %i0, %g1
   148bc:	84 00 a0 01 	inc  %g2
   148c0:	80 a0 a0 03 	cmp  %g2, 3
   148c4:	04 bf ff fc 	ble  148b4 <jpeg_CreateCompress+0xac>
   148c8:	c0 20 60 40 	clr  [ %g1 + 0x40 ]
   148cc:	84 10 20 00 	clr  %g2
   148d0:	83 28 a0 02 	sll  %g2, 2, %g1
   148d4:	82 00 40 18 	add  %g1, %i0, %g1
   148d8:	c0 20 60 50 	clr  [ %g1 + 0x50 ]
   148dc:	84 00 a0 01 	inc  %g2
   148e0:	80 a0 a0 03 	cmp  %g2, 3
   148e4:	04 bf ff fb 	ble  148d0 <jpeg_CreateCompress+0xc8>
   148e8:	c0 20 60 60 	clr  [ %g1 + 0x60 ]
   148ec:	03 00 00 86 	sethi  %hi(0x21800), %g1
   148f0:	c4 18 63 08 	ldd  [ %g1 + 0x308 ], %g2	! 21b08 <c5to8bits+0x1c0>
   148f4:	c4 3e 20 28 	std  %g2, [ %i0 + 0x28 ]
   148f8:	82 10 20 64 	mov  0x64, %g1
   148fc:	c2 26 20 10 	st  %g1, [ %i0 + 0x10 ]
   14900:	81 c7 e0 08 	ret 
   14904:	81 e8 00 00 	restore 

00014908 <jpeg_destroy_compress>:
   14908:	9d e3 bf 98 	save  %sp, -104, %sp
   1490c:	40 00 25 0c 	call  1dd3c <jpeg_destroy>
   14910:	90 10 00 18 	mov  %i0, %o0
   14914:	01 00 00 00 	nop 
   14918:	81 c7 e0 08 	ret 
   1491c:	81 e8 00 00 	restore 

00014920 <jpeg_abort_compress>:
   14920:	9d e3 bf 98 	save  %sp, -104, %sp
   14924:	40 00 24 f3 	call  1dcf0 <jpeg_abort>
   14928:	90 10 00 18 	mov  %i0, %o0
   1492c:	01 00 00 00 	nop 
   14930:	81 c7 e0 08 	ret 
   14934:	81 e8 00 00 	restore 

00014938 <jpeg_suppress_tables>:
   14938:	84 10 20 00 	clr  %g2
   1493c:	83 28 a0 02 	sll  %g2, 2, %g1
   14940:	82 00 40 08 	add  %g1, %o0, %g1
   14944:	c2 00 60 40 	ld  [ %g1 + 0x40 ], %g1
   14948:	80 a0 60 00 	cmp  %g1, 0
   1494c:	32 80 00 02 	bne,a   14954 <jpeg_suppress_tables+0x1c>
   14950:	d2 20 60 80 	st  %o1, [ %g1 + 0x80 ]
   14954:	84 00 a0 01 	inc  %g2
   14958:	80 a0 a0 03 	cmp  %g2, 3
   1495c:	04 bf ff f9 	ble  14940 <jpeg_suppress_tables+0x8>
   14960:	83 28 a0 02 	sll  %g2, 2, %g1
   14964:	84 10 20 00 	clr  %g2
   14968:	83 28 a0 02 	sll  %g2, 2, %g1
   1496c:	82 00 40 08 	add  %g1, %o0, %g1
   14970:	c2 00 60 50 	ld  [ %g1 + 0x50 ], %g1
   14974:	80 a0 60 00 	cmp  %g1, 0
   14978:	32 80 00 02 	bne,a   14980 <jpeg_suppress_tables+0x48>
   1497c:	d2 20 61 14 	st  %o1, [ %g1 + 0x114 ]
   14980:	83 28 a0 02 	sll  %g2, 2, %g1
   14984:	82 00 40 08 	add  %g1, %o0, %g1
   14988:	c2 00 60 60 	ld  [ %g1 + 0x60 ], %g1
   1498c:	80 a0 60 00 	cmp  %g1, 0
   14990:	32 80 00 02 	bne,a   14998 <jpeg_suppress_tables+0x60>
   14994:	d2 20 61 14 	st  %o1, [ %g1 + 0x114 ]
   14998:	84 00 a0 01 	inc  %g2
   1499c:	80 a0 a0 03 	cmp  %g2, 3
   149a0:	04 bf ff f3 	ble  1496c <jpeg_suppress_tables+0x34>
   149a4:	83 28 a0 02 	sll  %g2, 2, %g1
   149a8:	81 c3 e0 08 	retl 
   149ac:	01 00 00 00 	nop 

000149b0 <jpeg_finish_compress>:
   149b0:	9d e3 bf 98 	save  %sp, -104, %sp
   149b4:	c2 06 20 10 	ld  [ %i0 + 0x10 ], %g1
   149b8:	82 00 7f 9b 	add  %g1, -101, %g1
   149bc:	80 a0 60 01 	cmp  %g1, 1
   149c0:	38 80 00 14 	bgu,a   14a10 <jpeg_finish_compress+0x60>
   149c4:	c2 06 20 10 	ld  [ %i0 + 0x10 ], %g1
   149c8:	c4 06 20 d8 	ld  [ %i0 + 0xd8 ], %g2
   149cc:	c2 06 20 1c 	ld  [ %i0 + 0x1c ], %g1
   149d0:	80 a0 80 01 	cmp  %g2, %g1
   149d4:	3a 80 00 0a 	bcc,a   149fc <jpeg_finish_compress+0x4c>
   149d8:	c2 06 21 44 	ld  [ %i0 + 0x144 ], %g1
   149dc:	c4 06 00 00 	ld  [ %i0 ], %g2
   149e0:	82 10 20 42 	mov  0x42, %g1
   149e4:	c2 20 a0 14 	st  %g1, [ %g2 + 0x14 ]
   149e8:	c2 06 00 00 	ld  [ %i0 ], %g1
   149ec:	c2 00 40 00 	ld  [ %g1 ], %g1
   149f0:	9f c0 40 00 	call  %g1
   149f4:	90 10 00 18 	mov  %i0, %o0
   149f8:	c2 06 21 44 	ld  [ %i0 + 0x144 ], %g1
   149fc:	c2 00 60 08 	ld  [ %g1 + 8 ], %g1
   14a00:	9f c0 40 00 	call  %g1
   14a04:	90 10 00 18 	mov  %i0, %o0
   14a08:	10 80 00 0f 	b  14a44 <jpeg_finish_compress+0x94>
   14a0c:	c2 06 21 44 	ld  [ %i0 + 0x144 ], %g1
   14a10:	80 a0 60 67 	cmp  %g1, 0x67
   14a14:	02 80 00 0b 	be  14a40 <jpeg_finish_compress+0x90>
   14a18:	82 10 20 12 	mov  0x12, %g1
   14a1c:	c4 06 00 00 	ld  [ %i0 ], %g2
   14a20:	c2 20 a0 14 	st  %g1, [ %g2 + 0x14 ]
   14a24:	c4 06 00 00 	ld  [ %i0 ], %g2
   14a28:	c2 06 20 10 	ld  [ %i0 + 0x10 ], %g1
   14a2c:	c2 20 a0 18 	st  %g1, [ %g2 + 0x18 ]
   14a30:	c2 06 00 00 	ld  [ %i0 ], %g1
   14a34:	c2 00 40 00 	ld  [ %g1 ], %g1
   14a38:	9f c0 40 00 	call  %g1
   14a3c:	90 10 00 18 	mov  %i0, %o0
   14a40:	c2 06 21 44 	ld  [ %i0 + 0x144 ], %g1
   14a44:	84 10 00 01 	mov  %g1, %g2
   14a48:	c2 00 60 10 	ld  [ %g1 + 0x10 ], %g1
   14a4c:	80 a0 60 00 	cmp  %g1, 0
   14a50:	32 80 00 33 	bne,a   14b1c <jpeg_finish_compress+0x16c>
   14a54:	c2 06 21 54 	ld  [ %i0 + 0x154 ], %g1
   14a58:	c2 00 80 00 	ld  [ %g2 ], %g1
   14a5c:	9f c0 40 00 	call  %g1
   14a60:	90 10 00 18 	mov  %i0, %o0
   14a64:	c2 06 20 e8 	ld  [ %i0 + 0xe8 ], %g1
   14a68:	80 a0 60 00 	cmp  %g1, 0
   14a6c:	08 80 00 22 	bleu  14af4 <jpeg_finish_compress+0x144>
   14a70:	a0 10 20 00 	clr  %l0
   14a74:	c2 06 20 08 	ld  [ %i0 + 8 ], %g1
   14a78:	80 a0 60 00 	cmp  %g1, 0
   14a7c:	22 80 00 0b 	be,a   14aa8 <jpeg_finish_compress+0xf8>
   14a80:	c2 06 21 50 	ld  [ %i0 + 0x150 ], %g1
   14a84:	e0 20 60 04 	st  %l0, [ %g1 + 4 ]
   14a88:	c4 06 20 08 	ld  [ %i0 + 8 ], %g2
   14a8c:	c2 06 20 e8 	ld  [ %i0 + 0xe8 ], %g1
   14a90:	c2 20 a0 08 	st  %g1, [ %g2 + 8 ]
   14a94:	c2 06 20 08 	ld  [ %i0 + 8 ], %g1
   14a98:	c2 00 40 00 	ld  [ %g1 ], %g1
   14a9c:	9f c0 40 00 	call  %g1
   14aa0:	90 10 00 18 	mov  %i0, %o0
   14aa4:	c2 06 21 50 	ld  [ %i0 + 0x150 ], %g1
   14aa8:	c2 00 60 04 	ld  [ %g1 + 4 ], %g1
   14aac:	90 10 00 18 	mov  %i0, %o0
   14ab0:	9f c0 40 00 	call  %g1
   14ab4:	92 10 20 00 	clr  %o1
   14ab8:	80 a2 20 00 	cmp  %o0, 0
   14abc:	32 80 00 0a 	bne,a   14ae4 <jpeg_finish_compress+0x134>
   14ac0:	a0 04 20 01 	inc  %l0
   14ac4:	c4 06 00 00 	ld  [ %i0 ], %g2
   14ac8:	82 10 20 16 	mov  0x16, %g1
   14acc:	c2 20 a0 14 	st  %g1, [ %g2 + 0x14 ]
   14ad0:	c2 06 00 00 	ld  [ %i0 ], %g1
   14ad4:	c2 00 40 00 	ld  [ %g1 ], %g1
   14ad8:	9f c0 40 00 	call  %g1
   14adc:	90 10 00 18 	mov  %i0, %o0
   14ae0:	a0 04 20 01 	inc  %l0
   14ae4:	c2 06 20 e8 	ld  [ %i0 + 0xe8 ], %g1
   14ae8:	80 a0 40 10 	cmp  %g1, %l0
   14aec:	38 bf ff e3 	bgu,a   14a78 <jpeg_finish_compress+0xc8>
   14af0:	c2 06 20 08 	ld  [ %i0 + 8 ], %g1
   14af4:	c2 06 21 44 	ld  [ %i0 + 0x144 ], %g1
   14af8:	c2 00 60 08 	ld  [ %g1 + 8 ], %g1
   14afc:	9f c0 40 00 	call  %g1
   14b00:	90 10 00 18 	mov  %i0, %o0
   14b04:	c4 06 21 44 	ld  [ %i0 + 0x144 ], %g2
   14b08:	c2 00 a0 10 	ld  [ %g2 + 0x10 ], %g1
   14b0c:	80 a0 60 00 	cmp  %g1, 0
   14b10:	22 bf ff d3 	be,a   14a5c <jpeg_finish_compress+0xac>
   14b14:	c2 00 80 00 	ld  [ %g2 ], %g1
   14b18:	c2 06 21 54 	ld  [ %i0 + 0x154 ], %g1
   14b1c:	c2 00 60 10 	ld  [ %g1 + 0x10 ], %g1
   14b20:	9f c0 40 00 	call  %g1
   14b24:	90 10 00 18 	mov  %i0, %o0
   14b28:	c2 06 20 14 	ld  [ %i0 + 0x14 ], %g1
   14b2c:	c2 00 60 10 	ld  [ %g1 + 0x10 ], %g1
   14b30:	9f c0 40 00 	call  %g1
   14b34:	90 10 00 18 	mov  %i0, %o0
   14b38:	40 00 24 6e 	call  1dcf0 <jpeg_abort>
   14b3c:	90 10 00 18 	mov  %i0, %o0
   14b40:	01 00 00 00 	nop 
   14b44:	81 c7 e0 08 	ret 
   14b48:	81 e8 00 00 	restore 

00014b4c <jpeg_write_marker>:
   14b4c:	9d e3 bf 98 	save  %sp, -104, %sp
   14b50:	c2 06 20 d8 	ld  [ %i0 + 0xd8 ], %g1
   14b54:	80 a0 60 00 	cmp  %g1, 0
   14b58:	32 80 00 08 	bne,a   14b78 <jpeg_write_marker+0x2c>
   14b5c:	c4 06 00 00 	ld  [ %i0 ], %g2
   14b60:	c2 06 20 10 	ld  [ %i0 + 0x10 ], %g1
   14b64:	82 00 7f 9b 	add  %g1, -101, %g1
   14b68:	80 a0 60 02 	cmp  %g1, 2
   14b6c:	28 80 00 0d 	bleu,a   14ba0 <jpeg_write_marker+0x54>
   14b70:	c2 06 21 54 	ld  [ %i0 + 0x154 ], %g1
   14b74:	c4 06 00 00 	ld  [ %i0 ], %g2
   14b78:	82 10 20 12 	mov  0x12, %g1
   14b7c:	c2 20 a0 14 	st  %g1, [ %g2 + 0x14 ]
   14b80:	c4 06 00 00 	ld  [ %i0 ], %g2
   14b84:	c2 06 20 10 	ld  [ %i0 + 0x10 ], %g1
   14b88:	c2 20 a0 18 	st  %g1, [ %g2 + 0x18 ]
   14b8c:	c2 06 00 00 	ld  [ %i0 ], %g1
   14b90:	c2 00 40 00 	ld  [ %g1 ], %g1
   14b94:	9f c0 40 00 	call  %g1
   14b98:	90 10 00 18 	mov  %i0, %o0
   14b9c:	c2 06 21 54 	ld  [ %i0 + 0x154 ], %g1
   14ba0:	c2 00 40 00 	ld  [ %g1 ], %g1
   14ba4:	90 10 00 18 	mov  %i0, %o0
   14ba8:	92 10 00 19 	mov  %i1, %o1
   14bac:	94 10 00 1a 	mov  %i2, %o2
   14bb0:	9f c0 40 00 	call  %g1
   14bb4:	96 10 00 1b 	mov  %i3, %o3
   14bb8:	01 00 00 00 	nop 
   14bbc:	81 c7 e0 08 	ret 
   14bc0:	81 e8 00 00 	restore 

00014bc4 <jpeg_write_tables>:
   14bc4:	9d e3 bf 98 	save  %sp, -104, %sp
   14bc8:	c2 06 20 10 	ld  [ %i0 + 0x10 ], %g1
   14bcc:	80 a0 60 64 	cmp  %g1, 0x64
   14bd0:	02 80 00 0b 	be  14bfc <jpeg_write_tables+0x38>
   14bd4:	82 10 20 12 	mov  0x12, %g1
   14bd8:	c4 06 00 00 	ld  [ %i0 ], %g2
   14bdc:	c2 20 a0 14 	st  %g1, [ %g2 + 0x14 ]
   14be0:	c4 06 00 00 	ld  [ %i0 ], %g2
   14be4:	c2 06 20 10 	ld  [ %i0 + 0x10 ], %g1
   14be8:	c2 20 a0 18 	st  %g1, [ %g2 + 0x18 ]
   14bec:	c2 06 00 00 	ld  [ %i0 ], %g1
   14bf0:	c2 00 40 00 	ld  [ %g1 ], %g1
   14bf4:	9f c0 40 00 	call  %g1
   14bf8:	90 10 00 18 	mov  %i0, %o0
   14bfc:	c2 06 00 00 	ld  [ %i0 ], %g1
   14c00:	c2 00 60 10 	ld  [ %g1 + 0x10 ], %g1
   14c04:	9f c0 40 00 	call  %g1
   14c08:	90 10 00 18 	mov  %i0, %o0
   14c0c:	c2 06 20 14 	ld  [ %i0 + 0x14 ], %g1
   14c10:	c2 00 60 08 	ld  [ %g1 + 8 ], %g1
   14c14:	9f c0 40 00 	call  %g1
   14c18:	90 10 00 18 	mov  %i0, %o0
   14c1c:	40 00 0a c5 	call  17730 <jinit_marker_writer>
   14c20:	90 10 00 18 	mov  %i0, %o0
   14c24:	c2 06 21 54 	ld  [ %i0 + 0x154 ], %g1
   14c28:	c2 00 60 14 	ld  [ %g1 + 0x14 ], %g1
   14c2c:	9f c0 40 00 	call  %g1
   14c30:	90 10 00 18 	mov  %i0, %o0
   14c34:	c2 06 20 14 	ld  [ %i0 + 0x14 ], %g1
   14c38:	c2 00 60 10 	ld  [ %g1 + 0x10 ], %g1
   14c3c:	9f c0 40 00 	call  %g1
   14c40:	90 10 00 18 	mov  %i0, %o0
   14c44:	40 00 24 2b 	call  1dcf0 <jpeg_abort>
   14c48:	90 10 00 18 	mov  %i0, %o0
   14c4c:	01 00 00 00 	nop 
   14c50:	81 c7 e0 08 	ret 
   14c54:	81 e8 00 00 	restore 

00014c58 <jpeg_start_compress>:
   14c58:	9d e3 bf 98 	save  %sp, -104, %sp
   14c5c:	c2 06 20 10 	ld  [ %i0 + 0x10 ], %g1
   14c60:	80 a0 60 64 	cmp  %g1, 0x64
   14c64:	02 80 00 0b 	be  14c90 <jpeg_start_compress+0x38>
   14c68:	82 10 20 12 	mov  0x12, %g1
   14c6c:	c4 06 00 00 	ld  [ %i0 ], %g2
   14c70:	c2 20 a0 14 	st  %g1, [ %g2 + 0x14 ]
   14c74:	c4 06 00 00 	ld  [ %i0 ], %g2
   14c78:	c2 06 20 10 	ld  [ %i0 + 0x10 ], %g1
   14c7c:	c2 20 a0 18 	st  %g1, [ %g2 + 0x18 ]
   14c80:	c2 06 00 00 	ld  [ %i0 ], %g1
   14c84:	c2 00 40 00 	ld  [ %g1 ], %g1
   14c88:	9f c0 40 00 	call  %g1
   14c8c:	90 10 00 18 	mov  %i0, %o0
   14c90:	80 a6 60 00 	cmp  %i1, 0
   14c94:	22 80 00 06 	be,a   14cac <jpeg_start_compress+0x54>
   14c98:	c2 06 00 00 	ld  [ %i0 ], %g1
   14c9c:	90 10 00 18 	mov  %i0, %o0
   14ca0:	7f ff ff 26 	call  14938 <jpeg_suppress_tables>
   14ca4:	92 10 20 00 	clr  %o1
   14ca8:	c2 06 00 00 	ld  [ %i0 ], %g1
   14cac:	c2 00 60 10 	ld  [ %g1 + 0x10 ], %g1
   14cb0:	9f c0 40 00 	call  %g1
   14cb4:	90 10 00 18 	mov  %i0, %o0
   14cb8:	c2 06 20 14 	ld  [ %i0 + 0x14 ], %g1
   14cbc:	c2 00 60 08 	ld  [ %g1 + 8 ], %g1
   14cc0:	9f c0 40 00 	call  %g1
   14cc4:	90 10 00 18 	mov  %i0, %o0
   14cc8:	40 00 03 be 	call  15bc0 <jinit_compress_master>
   14ccc:	90 10 00 18 	mov  %i0, %o0
   14cd0:	c2 06 21 44 	ld  [ %i0 + 0x144 ], %g1
   14cd4:	c2 00 40 00 	ld  [ %g1 ], %g1
   14cd8:	9f c0 40 00 	call  %g1
   14cdc:	90 10 00 18 	mov  %i0, %o0
   14ce0:	c0 26 20 d8 	clr  [ %i0 + 0xd8 ]
   14ce4:	c2 06 20 a8 	ld  [ %i0 + 0xa8 ], %g1
   14ce8:	80 a0 00 01 	cmp  %g0, %g1
   14cec:	82 10 20 66 	mov  0x66, %g1
   14cf0:	82 40 7f ff 	addx  %g1, -1, %g1
   14cf4:	c2 26 20 10 	st  %g1, [ %i0 + 0x10 ]
   14cf8:	81 c7 e0 08 	ret 
   14cfc:	81 e8 00 00 	restore 

00014d00 <jpeg_write_scanlines>:
   14d00:	9d e3 bf 90 	save  %sp, -112, %sp
   14d04:	c2 06 20 10 	ld  [ %i0 + 0x10 ], %g1
   14d08:	80 a0 60 65 	cmp  %g1, 0x65
   14d0c:	02 80 00 0c 	be  14d3c <jpeg_write_scanlines+0x3c>
   14d10:	a0 10 00 18 	mov  %i0, %l0
   14d14:	c4 06 00 00 	ld  [ %i0 ], %g2
   14d18:	82 10 20 12 	mov  0x12, %g1
   14d1c:	c2 20 a0 14 	st  %g1, [ %g2 + 0x14 ]
   14d20:	c4 06 00 00 	ld  [ %i0 ], %g2
   14d24:	c2 06 20 10 	ld  [ %i0 + 0x10 ], %g1
   14d28:	c2 20 a0 18 	st  %g1, [ %g2 + 0x18 ]
   14d2c:	c2 06 00 00 	ld  [ %i0 ], %g1
   14d30:	c2 00 40 00 	ld  [ %g1 ], %g1
   14d34:	9f c0 40 00 	call  %g1
   14d38:	90 10 00 18 	mov  %i0, %o0
   14d3c:	c4 04 20 d8 	ld  [ %l0 + 0xd8 ], %g2
   14d40:	c2 04 20 1c 	ld  [ %l0 + 0x1c ], %g1
   14d44:	80 a0 80 01 	cmp  %g2, %g1
   14d48:	2a 80 00 0b 	bcs,a   14d74 <jpeg_write_scanlines+0x74>
   14d4c:	c4 04 20 08 	ld  [ %l0 + 8 ], %g2
   14d50:	c4 04 00 00 	ld  [ %l0 ], %g2
   14d54:	82 10 20 77 	mov  0x77, %g1
   14d58:	c2 20 a0 14 	st  %g1, [ %g2 + 0x14 ]
   14d5c:	c2 04 00 00 	ld  [ %l0 ], %g1
   14d60:	c2 00 60 04 	ld  [ %g1 + 4 ], %g1
   14d64:	90 10 00 10 	mov  %l0, %o0
   14d68:	9f c0 40 00 	call  %g1
   14d6c:	92 10 3f ff 	mov  -1, %o1
   14d70:	c4 04 20 08 	ld  [ %l0 + 8 ], %g2
   14d74:	80 a0 a0 00 	cmp  %g2, 0
   14d78:	22 80 00 0c 	be,a   14da8 <jpeg_write_scanlines+0xa8>
   14d7c:	c4 04 21 44 	ld  [ %l0 + 0x144 ], %g2
   14d80:	c2 04 20 d8 	ld  [ %l0 + 0xd8 ], %g1
   14d84:	c2 20 a0 04 	st  %g1, [ %g2 + 4 ]
   14d88:	c4 04 20 08 	ld  [ %l0 + 8 ], %g2
   14d8c:	c2 04 20 1c 	ld  [ %l0 + 0x1c ], %g1
   14d90:	c2 20 a0 08 	st  %g1, [ %g2 + 8 ]
   14d94:	c2 04 20 08 	ld  [ %l0 + 8 ], %g1
   14d98:	c2 00 40 00 	ld  [ %g1 ], %g1
   14d9c:	9f c0 40 00 	call  %g1
   14da0:	90 10 00 10 	mov  %l0, %o0
   14da4:	c4 04 21 44 	ld  [ %l0 + 0x144 ], %g2
   14da8:	c2 00 a0 0c 	ld  [ %g2 + 0xc ], %g1
   14dac:	80 a0 60 00 	cmp  %g1, 0
   14db0:	22 80 00 06 	be,a   14dc8 <jpeg_write_scanlines+0xc8>
   14db4:	c4 04 20 1c 	ld  [ %l0 + 0x1c ], %g2
   14db8:	c2 00 a0 04 	ld  [ %g2 + 4 ], %g1
   14dbc:	9f c0 40 00 	call  %g1
   14dc0:	90 10 00 10 	mov  %l0, %o0
   14dc4:	c4 04 20 1c 	ld  [ %l0 + 0x1c ], %g2
   14dc8:	c2 04 20 d8 	ld  [ %l0 + 0xd8 ], %g1
   14dcc:	84 20 80 01 	sub  %g2, %g1, %g2
   14dd0:	80 a6 80 02 	cmp  %i2, %g2
   14dd4:	38 80 00 02 	bgu,a   14ddc <jpeg_write_scanlines+0xdc>
   14dd8:	b4 10 00 02 	mov  %g2, %i2
   14ddc:	c0 27 bf f4 	clr  [ %fp + -12 ]
   14de0:	c2 04 21 48 	ld  [ %l0 + 0x148 ], %g1
   14de4:	c2 00 60 04 	ld  [ %g1 + 4 ], %g1
   14de8:	90 10 00 10 	mov  %l0, %o0
   14dec:	92 10 00 19 	mov  %i1, %o1
   14df0:	94 07 bf f4 	add  %fp, -12, %o2
   14df4:	9f c0 40 00 	call  %g1
   14df8:	96 10 00 1a 	mov  %i2, %o3
   14dfc:	c2 04 20 d8 	ld  [ %l0 + 0xd8 ], %g1
   14e00:	f0 07 bf f4 	ld  [ %fp + -12 ], %i0
   14e04:	82 00 40 18 	add  %g1, %i0, %g1
   14e08:	c2 24 20 d8 	st  %g1, [ %l0 + 0xd8 ]
   14e0c:	81 c7 e0 08 	ret 
   14e10:	81 e8 00 00 	restore 

00014e14 <jpeg_write_raw_data>:
   14e14:	9d e3 bf 98 	save  %sp, -104, %sp
   14e18:	c2 06 20 10 	ld  [ %i0 + 0x10 ], %g1
   14e1c:	80 a0 60 66 	cmp  %g1, 0x66
   14e20:	02 80 00 0b 	be  14e4c <jpeg_write_raw_data+0x38>
   14e24:	82 10 20 12 	mov  0x12, %g1
   14e28:	c4 06 00 00 	ld  [ %i0 ], %g2
   14e2c:	c2 20 a0 14 	st  %g1, [ %g2 + 0x14 ]
   14e30:	c4 06 00 00 	ld  [ %i0 ], %g2
   14e34:	c2 06 20 10 	ld  [ %i0 + 0x10 ], %g1
   14e38:	c2 20 a0 18 	st  %g1, [ %g2 + 0x18 ]
   14e3c:	c2 06 00 00 	ld  [ %i0 ], %g1
   14e40:	c2 00 40 00 	ld  [ %g1 ], %g1
   14e44:	9f c0 40 00 	call  %g1
   14e48:	90 10 00 18 	mov  %i0, %o0
   14e4c:	c4 06 20 d8 	ld  [ %i0 + 0xd8 ], %g2
   14e50:	c2 06 20 1c 	ld  [ %i0 + 0x1c ], %g1
   14e54:	80 a0 80 01 	cmp  %g2, %g1
   14e58:	2a 80 00 0c 	bcs,a   14e88 <jpeg_write_raw_data+0x74>
   14e5c:	c4 06 20 08 	ld  [ %i0 + 8 ], %g2
   14e60:	c4 06 00 00 	ld  [ %i0 ], %g2
   14e64:	82 10 20 77 	mov  0x77, %g1
   14e68:	c2 20 a0 14 	st  %g1, [ %g2 + 0x14 ]
   14e6c:	c2 06 00 00 	ld  [ %i0 ], %g1
   14e70:	c2 00 60 04 	ld  [ %g1 + 4 ], %g1
   14e74:	90 10 00 18 	mov  %i0, %o0
   14e78:	9f c0 40 00 	call  %g1
   14e7c:	92 10 3f ff 	mov  -1, %o1
   14e80:	10 80 00 2e 	b  14f38 <jpeg_write_raw_data+0x124>
   14e84:	82 10 20 00 	clr  %g1
   14e88:	80 a0 a0 00 	cmp  %g2, 0
   14e8c:	22 80 00 0c 	be,a   14ebc <jpeg_write_raw_data+0xa8>
   14e90:	c4 06 21 44 	ld  [ %i0 + 0x144 ], %g2
   14e94:	c2 06 20 d8 	ld  [ %i0 + 0xd8 ], %g1
   14e98:	c2 20 a0 04 	st  %g1, [ %g2 + 4 ]
   14e9c:	c4 06 20 08 	ld  [ %i0 + 8 ], %g2
   14ea0:	c2 06 20 1c 	ld  [ %i0 + 0x1c ], %g1
   14ea4:	c2 20 a0 08 	st  %g1, [ %g2 + 8 ]
   14ea8:	c2 06 20 08 	ld  [ %i0 + 8 ], %g1
   14eac:	c2 00 40 00 	ld  [ %g1 ], %g1
   14eb0:	9f c0 40 00 	call  %g1
   14eb4:	90 10 00 18 	mov  %i0, %o0
   14eb8:	c4 06 21 44 	ld  [ %i0 + 0x144 ], %g2
   14ebc:	c2 00 a0 0c 	ld  [ %g2 + 0xc ], %g1
   14ec0:	80 a0 60 00 	cmp  %g1, 0
   14ec4:	22 80 00 06 	be,a   14edc <jpeg_write_raw_data+0xc8>
   14ec8:	c2 06 20 e4 	ld  [ %i0 + 0xe4 ], %g1
   14ecc:	c2 00 a0 04 	ld  [ %g2 + 4 ], %g1
   14ed0:	9f c0 40 00 	call  %g1
   14ed4:	90 10 00 18 	mov  %i0, %o0
   14ed8:	c2 06 20 e4 	ld  [ %i0 + 0xe4 ], %g1
   14edc:	a1 28 60 03 	sll  %g1, 3, %l0
   14ee0:	80 a6 80 10 	cmp  %i2, %l0
   14ee4:	3a 80 00 0a 	bcc,a   14f0c <jpeg_write_raw_data+0xf8>
   14ee8:	c2 06 21 50 	ld  [ %i0 + 0x150 ], %g1
   14eec:	c4 06 00 00 	ld  [ %i0 ], %g2
   14ef0:	82 10 20 15 	mov  0x15, %g1
   14ef4:	c2 20 a0 14 	st  %g1, [ %g2 + 0x14 ]
   14ef8:	c2 06 00 00 	ld  [ %i0 ], %g1
   14efc:	c2 00 40 00 	ld  [ %g1 ], %g1
   14f00:	9f c0 40 00 	call  %g1
   14f04:	90 10 00 18 	mov  %i0, %o0
   14f08:	c2 06 21 50 	ld  [ %i0 + 0x150 ], %g1
   14f0c:	c2 00 60 04 	ld  [ %g1 + 4 ], %g1
   14f10:	90 10 00 18 	mov  %i0, %o0
   14f14:	9f c0 40 00 	call  %g1
   14f18:	92 10 00 19 	mov  %i1, %o1
   14f1c:	80 a2 20 00 	cmp  %o0, 0
   14f20:	02 80 00 06 	be  14f38 <jpeg_write_raw_data+0x124>
   14f24:	82 10 20 00 	clr  %g1
   14f28:	c2 06 20 d8 	ld  [ %i0 + 0xd8 ], %g1
   14f2c:	82 04 00 01 	add  %l0, %g1, %g1
   14f30:	c2 26 20 d8 	st  %g1, [ %i0 + 0xd8 ]
   14f34:	82 10 00 10 	mov  %l0, %g1
   14f38:	81 c7 e0 08 	ret 
   14f3c:	91 e8 00 01 	restore  %g0, %g1, %o0
   14f40:	00 01 53 84 	unimp  0x15384
   14f44:	00 01 53 48 	unimp  0x15348
   14f48:	00 01 53 54 	unimp  0x15354
   14f4c:	00 01 53 60 	unimp  0x15360
   14f50:	00 01 53 6c 	unimp  0x1536c
   14f54:	00 01 53 78 	unimp  0x15378
   14f58:	00 01 56 70 	unimp  0x15670
   14f5c:	00 01 54 1c 	unimp  0x1541c
   14f60:	00 01 54 48 	unimp  0x15448
   14f64:	00 01 54 c4 	unimp  0x154c4
   14f68:	00 01 55 38 	unimp  0x15538
   14f6c:	00 01 55 d8 	unimp  0x155d8

00014f70 <jpeg_add_quant_table>:
   14f70:	9d e3 bf 98 	save  %sp, -104, %sp
   14f74:	b3 2e 60 02 	sll  %i1, 2, %i1
   14f78:	b2 06 40 18 	add  %i1, %i0, %i1
   14f7c:	c2 06 20 10 	ld  [ %i0 + 0x10 ], %g1
   14f80:	80 a0 60 64 	cmp  %g1, 0x64
   14f84:	02 80 00 0c 	be  14fb4 <jpeg_add_quant_table+0x44>
   14f88:	b2 06 60 40 	add  %i1, 0x40, %i1
   14f8c:	c4 06 00 00 	ld  [ %i0 ], %g2
   14f90:	82 10 20 12 	mov  0x12, %g1
   14f94:	c2 20 a0 14 	st  %g1, [ %g2 + 0x14 ]
   14f98:	c4 06 00 00 	ld  [ %i0 ], %g2
   14f9c:	c2 06 20 10 	ld  [ %i0 + 0x10 ], %g1
   14fa0:	c2 20 a0 18 	st  %g1, [ %g2 + 0x18 ]
   14fa4:	c2 06 00 00 	ld  [ %i0 ], %g1
   14fa8:	c2 00 40 00 	ld  [ %g1 ], %g1
   14fac:	9f c0 40 00 	call  %g1
   14fb0:	90 10 00 18 	mov  %i0, %o0
   14fb4:	c2 06 40 00 	ld  [ %i1 ], %g1
   14fb8:	80 a0 60 00 	cmp  %g1, 0
   14fbc:	12 80 00 06 	bne  14fd4 <jpeg_add_quant_table+0x64>
   14fc0:	88 10 20 00 	clr  %g4
   14fc4:	40 00 23 6a 	call  1dd6c <jpeg_alloc_quant_table>
   14fc8:	90 10 00 18 	mov  %i0, %o0
   14fcc:	d0 26 40 00 	st  %o0, [ %i1 ]
   14fd0:	88 10 20 00 	clr  %g4
   14fd4:	03 14 7a e1 	sethi  %hi(0x51eb8400), %g1
   14fd8:	96 10 61 1f 	or  %g1, 0x11f, %o3	! 51eb851f <_end+0x51e84d1f>
   14fdc:	03 00 00 1f 	sethi  %hi(0x7c00), %g1
   14fe0:	98 10 63 ff 	or  %g1, 0x3ff, %o4	! 7fff <_init-0x86d1>
   14fe4:	80 a0 00 1c 	cmp  %g0, %i4
   14fe8:	9a 40 20 00 	addx  %g0, 0, %o5
   14fec:	83 29 20 02 	sll  %g4, 2, %g1
   14ff0:	c2 06 80 01 	ld  [ %i2 + %g1 ], %g1
   14ff4:	82 5e c0 01 	smul  %i3, %g1, %g1
   14ff8:	82 00 60 32 	add  %g1, 0x32, %g1
   14ffc:	80 58 40 0b 	smul  %g1, %o3, %g0
   15000:	85 40 00 00 	rd  %y, %g2
   15004:	85 38 a0 05 	sra  %g2, 5, %g2
   15008:	83 38 60 1f 	sra  %g1, 0x1f, %g1
   1500c:	86 20 80 01 	sub  %g2, %g1, %g3
   15010:	80 a0 e0 00 	cmp  %g3, 0
   15014:	24 80 00 02 	ble,a   1501c <jpeg_add_quant_table+0xac>
   15018:	86 10 20 01 	mov  1, %g3
   1501c:	80 a0 c0 0c 	cmp  %g3, %o4
   15020:	34 80 00 02 	bg,a   15028 <jpeg_add_quant_table+0xb8>
   15024:	86 10 00 0c 	mov  %o4, %g3
   15028:	82 10 00 0d 	mov  %o5, %g1
   1502c:	80 a0 e0 ff 	cmp  %g3, 0xff
   15030:	14 80 00 03 	bg  1503c <jpeg_add_quant_table+0xcc>
   15034:	84 10 20 01 	mov  1, %g2
   15038:	84 10 20 00 	clr  %g2
   1503c:	80 88 40 02 	btst  %g1, %g2
   15040:	32 80 00 02 	bne,a   15048 <jpeg_add_quant_table+0xd8>
   15044:	86 10 20 ff 	mov  0xff, %g3
   15048:	c4 06 40 00 	ld  [ %i1 ], %g2
   1504c:	82 01 00 04 	add  %g4, %g4, %g1
   15050:	88 01 20 01 	inc  %g4
   15054:	80 a1 20 3f 	cmp  %g4, 0x3f
   15058:	04 bf ff e5 	ble  14fec <jpeg_add_quant_table+0x7c>
   1505c:	c6 30 80 01 	sth  %g3, [ %g2 + %g1 ]
   15060:	c2 06 40 00 	ld  [ %i1 ], %g1
   15064:	c0 20 60 80 	clr  [ %g1 + 0x80 ]
   15068:	81 c7 e0 08 	ret 
   1506c:	81 e8 00 00 	restore 

00015070 <jpeg_set_linear_quality>:
   15070:	9d e3 bf 98 	save  %sp, -104, %sp
   15074:	90 10 00 18 	mov  %i0, %o0
   15078:	92 10 20 00 	clr  %o1
   1507c:	15 00 00 86 	sethi  %hi(0x21800), %o2
   15080:	94 12 a3 10 	or  %o2, 0x310, %o2	! 21b10 <std_luminance_quant_tbl.0>
   15084:	96 10 00 19 	mov  %i1, %o3
   15088:	7f ff ff ba 	call  14f70 <jpeg_add_quant_table>
   1508c:	98 10 00 1a 	mov  %i2, %o4
   15090:	90 10 00 18 	mov  %i0, %o0
   15094:	92 10 20 01 	mov  1, %o1
   15098:	15 00 00 87 	sethi  %hi(0x21c00), %o2
   1509c:	94 12 a0 10 	or  %o2, 0x10, %o2	! 21c10 <std_chrominance_quant_tbl.1>
   150a0:	96 10 00 19 	mov  %i1, %o3
   150a4:	7f ff ff b3 	call  14f70 <jpeg_add_quant_table>
   150a8:	98 10 00 1a 	mov  %i2, %o4
   150ac:	01 00 00 00 	nop 
   150b0:	81 c7 e0 08 	ret 
   150b4:	81 e8 00 00 	restore 

000150b8 <jpeg_quality_scaling>:
   150b8:	80 a2 20 00 	cmp  %o0, 0
   150bc:	24 80 00 02 	ble,a   150c4 <jpeg_quality_scaling+0xc>
   150c0:	90 10 20 01 	mov  1, %o0
   150c4:	80 a2 20 64 	cmp  %o0, 0x64
   150c8:	34 80 00 02 	bg,a   150d0 <jpeg_quality_scaling+0x18>
   150cc:	90 10 20 64 	mov  0x64, %o0
   150d0:	80 a2 20 31 	cmp  %o0, 0x31
   150d4:	14 80 00 0b 	bg  15100 <jpeg_quality_scaling+0x48>
   150d8:	84 02 00 08 	add  %o0, %o0, %g2
   150dc:	03 00 00 04 	sethi  %hi(0x1000), %g1
   150e0:	82 10 63 88 	or  %g1, 0x388, %g1	! 1388 <_init-0xf348>
   150e4:	85 38 60 1f 	sra  %g1, 0x1f, %g2
   150e8:	81 80 a0 00 	mov  %g2, %y
   150ec:	01 00 00 00 	nop 
   150f0:	01 00 00 00 	nop 
   150f4:	01 00 00 00 	nop 
   150f8:	90 78 40 08 	sdiv  %g1, %o0, %o0
   150fc:	30 80 00 03 	b,a   15108 <jpeg_quality_scaling+0x50>
   15100:	82 10 20 c8 	mov  0xc8, %g1
   15104:	90 20 40 02 	sub  %g1, %g2, %o0
   15108:	81 c3 e0 08 	retl 
   1510c:	01 00 00 00 	nop 

00015110 <jpeg_set_quality>:
   15110:	9d e3 bf 98 	save  %sp, -104, %sp
   15114:	7f ff ff e9 	call  150b8 <jpeg_quality_scaling>
   15118:	90 10 00 19 	mov  %i1, %o0
   1511c:	92 10 00 08 	mov  %o0, %o1
   15120:	90 10 00 18 	mov  %i0, %o0
   15124:	7f ff ff d3 	call  15070 <jpeg_set_linear_quality>
   15128:	94 10 00 1a 	mov  %i2, %o2
   1512c:	01 00 00 00 	nop 
   15130:	81 c7 e0 08 	ret 
   15134:	81 e8 00 00 	restore 

00015138 <add_huff_table>:
   15138:	9d e3 bf 98 	save  %sp, -104, %sp
   1513c:	c2 06 40 00 	ld  [ %i1 ], %g1
   15140:	80 a0 60 00 	cmp  %g1, 0
   15144:	12 80 00 05 	bne  15158 <add_huff_table+0x20>
   15148:	90 10 00 18 	mov  %i0, %o0
   1514c:	40 00 23 12 	call  1dd94 <jpeg_alloc_huff_table>
   15150:	01 00 00 00 	nop 
   15154:	d0 26 40 00 	st  %o0, [ %i1 ]
   15158:	d0 06 40 00 	ld  [ %i1 ], %o0
   1515c:	92 10 00 1a 	mov  %i2, %o1
   15160:	40 00 79 81 	call  33764 <memcpy@plt>
   15164:	94 10 20 11 	mov  0x11, %o2
   15168:	d0 06 40 00 	ld  [ %i1 ], %o0
   1516c:	90 02 20 11 	add  %o0, 0x11, %o0
   15170:	92 10 00 1b 	mov  %i3, %o1
   15174:	40 00 79 7c 	call  33764 <memcpy@plt>
   15178:	94 10 21 00 	mov  0x100, %o2
   1517c:	c2 06 40 00 	ld  [ %i1 ], %g1
   15180:	c0 20 61 14 	clr  [ %g1 + 0x114 ]
   15184:	81 c7 e0 08 	ret 
   15188:	81 e8 00 00 	restore 

0001518c <std_huff_tables>:
   1518c:	9d e3 bf 98 	save  %sp, -104, %sp
   15190:	90 10 00 18 	mov  %i0, %o0
   15194:	92 06 20 50 	add  %i0, 0x50, %o1
   15198:	15 00 00 87 	sethi  %hi(0x21c00), %o2
   1519c:	94 12 a1 10 	or  %o2, 0x110, %o2	! 21d10 <bits_dc_luminance.2>
   151a0:	17 00 00 87 	sethi  %hi(0x21c00), %o3
   151a4:	7f ff ff e5 	call  15138 <add_huff_table>
   151a8:	96 12 e1 28 	or  %o3, 0x128, %o3	! 21d28 <val_dc_luminance.3>
   151ac:	90 10 00 18 	mov  %i0, %o0
   151b0:	92 06 20 60 	add  %i0, 0x60, %o1
   151b4:	15 00 00 87 	sethi  %hi(0x21c00), %o2
   151b8:	94 12 a1 60 	or  %o2, 0x160, %o2	! 21d60 <bits_ac_luminance.6>
   151bc:	17 00 00 87 	sethi  %hi(0x21c00), %o3
   151c0:	7f ff ff de 	call  15138 <add_huff_table>
   151c4:	96 12 e1 78 	or  %o3, 0x178, %o3	! 21d78 <val_ac_luminance.7>
   151c8:	90 10 00 18 	mov  %i0, %o0
   151cc:	92 06 20 54 	add  %i0, 0x54, %o1
   151d0:	15 00 00 87 	sethi  %hi(0x21c00), %o2
   151d4:	94 12 a1 38 	or  %o2, 0x138, %o2	! 21d38 <bits_dc_chrominance.4>
   151d8:	17 00 00 87 	sethi  %hi(0x21c00), %o3
   151dc:	7f ff ff d7 	call  15138 <add_huff_table>
   151e0:	96 12 e1 50 	or  %o3, 0x150, %o3	! 21d50 <val_dc_chrominance.5>
   151e4:	90 10 00 18 	mov  %i0, %o0
   151e8:	92 06 20 64 	add  %i0, 0x64, %o1
   151ec:	15 00 00 87 	sethi  %hi(0x21c00), %o2
   151f0:	94 12 a2 20 	or  %o2, 0x220, %o2	! 21e20 <bits_ac_chrominance.8>
   151f4:	17 00 00 87 	sethi  %hi(0x21c00), %o3
   151f8:	7f ff ff d0 	call  15138 <add_huff_table>
   151fc:	96 12 e2 38 	or  %o3, 0x238, %o3	! 21e38 <val_ac_chrominance.9>
   15200:	01 00 00 00 	nop 
   15204:	81 c7 e0 08 	ret 
   15208:	81 e8 00 00 	restore 

0001520c <jpeg_set_defaults>:
   1520c:	9d e3 bf 98 	save  %sp, -104, %sp
   15210:	c2 06 20 10 	ld  [ %i0 + 0x10 ], %g1
   15214:	80 a0 60 64 	cmp  %g1, 0x64
   15218:	02 80 00 0b 	be  15244 <jpeg_set_defaults+0x38>
   1521c:	82 10 20 12 	mov  0x12, %g1
   15220:	c4 06 00 00 	ld  [ %i0 ], %g2
   15224:	c2 20 a0 14 	st  %g1, [ %g2 + 0x14 ]
   15228:	c4 06 00 00 	ld  [ %i0 ], %g2
   1522c:	c2 06 20 10 	ld  [ %i0 + 0x10 ], %g1
   15230:	c2 20 a0 18 	st  %g1, [ %g2 + 0x18 ]
   15234:	c2 06 00 00 	ld  [ %i0 ], %g1
   15238:	c2 00 40 00 	ld  [ %g1 ], %g1
   1523c:	9f c0 40 00 	call  %g1
   15240:	90 10 00 18 	mov  %i0, %o0
   15244:	c2 06 20 3c 	ld  [ %i0 + 0x3c ], %g1
   15248:	80 a0 60 00 	cmp  %g1, 0
   1524c:	12 80 00 0a 	bne  15274 <jpeg_set_defaults+0x68>
   15250:	82 10 20 08 	mov  8, %g1
   15254:	c2 06 20 04 	ld  [ %i0 + 4 ], %g1
   15258:	c2 00 40 00 	ld  [ %g1 ], %g1
   1525c:	90 10 00 18 	mov  %i0, %o0
   15260:	92 10 20 00 	clr  %o1
   15264:	9f c0 40 00 	call  %g1
   15268:	94 10 23 48 	mov  0x348, %o2
   1526c:	d0 26 20 3c 	st  %o0, [ %i0 + 0x3c ]
   15270:	82 10 20 08 	mov  8, %g1
   15274:	c2 26 20 30 	st  %g1, [ %i0 + 0x30 ]
   15278:	90 10 00 18 	mov  %i0, %o0
   1527c:	92 10 20 4b 	mov  0x4b, %o1
   15280:	7f ff ff a4 	call  15110 <jpeg_set_quality>
   15284:	94 10 20 01 	mov  1, %o2
   15288:	7f ff ff c1 	call  1518c <std_huff_tables>
   1528c:	90 10 00 18 	mov  %i0, %o0
   15290:	84 10 20 00 	clr  %g2
   15294:	88 10 20 01 	mov  1, %g4
   15298:	86 10 20 05 	mov  5, %g3
   1529c:	82 00 80 18 	add  %g2, %i0, %g1
   152a0:	c0 28 60 70 	clrb  [ %g1 + 0x70 ]
   152a4:	c8 28 60 80 	stb  %g4, [ %g1 + 0x80 ]
   152a8:	84 00 a0 01 	inc  %g2
   152ac:	80 a0 a0 0f 	cmp  %g2, 0xf
   152b0:	04 bf ff fb 	ble  1529c <jpeg_set_defaults+0x90>
   152b4:	c6 28 60 90 	stb  %g3, [ %g1 + 0x90 ]
   152b8:	c0 26 20 a4 	clr  [ %i0 + 0xa4 ]
   152bc:	c0 26 20 a0 	clr  [ %i0 + 0xa0 ]
   152c0:	c0 26 20 a8 	clr  [ %i0 + 0xa8 ]
   152c4:	c0 26 20 ac 	clr  [ %i0 + 0xac ]
   152c8:	c0 26 20 b0 	clr  [ %i0 + 0xb0 ]
   152cc:	c2 06 20 30 	ld  [ %i0 + 0x30 ], %g1
   152d0:	80 a0 60 08 	cmp  %g1, 8
   152d4:	24 80 00 05 	ble,a   152e8 <jpeg_set_defaults+0xdc>
   152d8:	c0 26 20 b4 	clr  [ %i0 + 0xb4 ]
   152dc:	82 10 20 01 	mov  1, %g1
   152e0:	c2 26 20 b0 	st  %g1, [ %i0 + 0xb0 ]
   152e4:	c0 26 20 b4 	clr  [ %i0 + 0xb4 ]
   152e8:	c0 26 20 b8 	clr  [ %i0 + 0xb8 ]
   152ec:	c0 26 20 bc 	clr  [ %i0 + 0xbc ]
   152f0:	c0 26 20 c0 	clr  [ %i0 + 0xc0 ]
   152f4:	c0 26 20 c4 	clr  [ %i0 + 0xc4 ]
   152f8:	c0 2e 20 cc 	clrb  [ %i0 + 0xcc ]
   152fc:	82 10 20 01 	mov  1, %g1
   15300:	c2 36 20 ce 	sth  %g1, [ %i0 + 0xce ]
   15304:	c2 36 20 d0 	sth  %g1, [ %i0 + 0xd0 ]
   15308:	40 00 00 05 	call  1531c <jpeg_default_colorspace>
   1530c:	90 10 00 18 	mov  %i0, %o0
   15310:	01 00 00 00 	nop 
   15314:	81 c7 e0 08 	ret 
   15318:	81 e8 00 00 	restore 

0001531c <jpeg_default_colorspace>:
   1531c:	9d e3 bf 98 	save  %sp, -104, %sp
   15320:	c2 06 20 24 	ld  [ %i0 + 0x24 ], %g1
   15324:	80 a0 60 05 	cmp  %g1, 5
   15328:	18 80 00 1a 	bgu  15390 <jpeg_default_colorspace+0x74>
   1532c:	90 10 00 18 	mov  %i0, %o0
   15330:	83 28 60 02 	sll  %g1, 2, %g1
   15334:	05 00 00 53 	sethi  %hi(0x14c00), %g2
   15338:	84 10 a3 40 	or  %g2, 0x340, %g2	! 14f40 <jpeg_write_raw_data+0x12c>
   1533c:	c2 00 80 01 	ld  [ %g2 + %g1 ], %g1
   15340:	81 c0 40 00 	jmp  %g1
   15344:	01 00 00 00 	nop 
   15348:	40 00 00 1c 	call  153b8 <jpeg_set_colorspace>
   1534c:	92 10 20 01 	mov  1, %o1	! 1 <_init-0x106cf>
   15350:	30 80 00 17 	b,a   153ac <jpeg_default_colorspace+0x90>
   15354:	40 00 00 19 	call  153b8 <jpeg_set_colorspace>
   15358:	92 10 20 03 	mov  3, %o1
   1535c:	30 80 00 14 	b,a   153ac <jpeg_default_colorspace+0x90>
   15360:	40 00 00 16 	call  153b8 <jpeg_set_colorspace>
   15364:	92 10 20 03 	mov  3, %o1
   15368:	30 80 00 11 	b,a   153ac <jpeg_default_colorspace+0x90>
   1536c:	40 00 00 13 	call  153b8 <jpeg_set_colorspace>
   15370:	92 10 20 04 	mov  4, %o1
   15374:	30 80 00 0e 	b,a   153ac <jpeg_default_colorspace+0x90>
   15378:	40 00 00 10 	call  153b8 <jpeg_set_colorspace>
   1537c:	92 10 20 05 	mov  5, %o1
   15380:	30 80 00 0b 	b,a   153ac <jpeg_default_colorspace+0x90>
   15384:	40 00 00 0d 	call  153b8 <jpeg_set_colorspace>
   15388:	92 10 20 00 	clr  %o1
   1538c:	30 80 00 08 	b,a   153ac <jpeg_default_colorspace+0x90>
   15390:	c4 06 00 00 	ld  [ %i0 ], %g2
   15394:	82 10 20 07 	mov  7, %g1
   15398:	c2 20 a0 14 	st  %g1, [ %g2 + 0x14 ]
   1539c:	c2 06 00 00 	ld  [ %i0 ], %g1
   153a0:	c2 00 40 00 	ld  [ %g1 ], %g1
   153a4:	9f c0 40 00 	call  %g1
   153a8:	01 00 00 00 	nop 
   153ac:	01 00 00 00 	nop 
   153b0:	81 c7 e0 08 	ret 
   153b4:	81 e8 00 00 	restore 

000153b8 <jpeg_set_colorspace>:
   153b8:	9d e3 bf 98 	save  %sp, -104, %sp
   153bc:	c2 06 20 10 	ld  [ %i0 + 0x10 ], %g1
   153c0:	80 a0 60 64 	cmp  %g1, 0x64
   153c4:	02 80 00 0b 	be  153f0 <jpeg_set_colorspace+0x38>
   153c8:	82 10 20 12 	mov  0x12, %g1
   153cc:	c4 06 00 00 	ld  [ %i0 ], %g2
   153d0:	c2 20 a0 14 	st  %g1, [ %g2 + 0x14 ]
   153d4:	c4 06 00 00 	ld  [ %i0 ], %g2
   153d8:	c2 06 20 10 	ld  [ %i0 + 0x10 ], %g1
   153dc:	c2 20 a0 18 	st  %g1, [ %g2 + 0x18 ]
   153e0:	c2 06 00 00 	ld  [ %i0 ], %g1
   153e4:	c2 00 40 00 	ld  [ %g1 ], %g1
   153e8:	9f c0 40 00 	call  %g1
   153ec:	90 10 00 18 	mov  %i0, %o0
   153f0:	f2 26 20 38 	st  %i1, [ %i0 + 0x38 ]
   153f4:	c0 26 20 c8 	clr  [ %i0 + 0xc8 ]
   153f8:	80 a6 60 05 	cmp  %i1, 5
   153fc:	18 80 00 c4 	bgu  1570c <jpeg_set_colorspace+0x354>
   15400:	c0 26 20 d4 	clr  [ %i0 + 0xd4 ]
   15404:	83 2e 60 02 	sll  %i1, 2, %g1
   15408:	05 00 00 53 	sethi  %hi(0x14c00), %g2
   1540c:	84 10 a3 58 	or  %g2, 0x358, %g2	! 14f58 <jpeg_write_raw_data+0x144>
   15410:	c2 00 80 01 	ld  [ %g2 + %g1 ], %g1
   15414:	81 c0 40 00 	jmp  %g1
   15418:	01 00 00 00 	nop 
   1541c:	82 10 20 01 	mov  1, %g1	! 1 <_init-0x106cf>
   15420:	c2 26 20 c8 	st  %g1, [ %i0 + 0xc8 ]
   15424:	c2 26 20 34 	st  %g1, [ %i0 + 0x34 ]
   15428:	d8 06 20 3c 	ld  [ %i0 + 0x3c ], %o4
   1542c:	c2 23 00 00 	st  %g1, [ %o4 ]
   15430:	c2 23 20 08 	st  %g1, [ %o4 + 8 ]
   15434:	c2 23 20 0c 	st  %g1, [ %o4 + 0xc ]
   15438:	c0 23 20 10 	clr  [ %o4 + 0x10 ]
   1543c:	c0 23 20 14 	clr  [ %o4 + 0x14 ]
   15440:	10 80 00 ba 	b  15728 <jpeg_set_colorspace+0x370>
   15444:	c0 23 20 18 	clr  [ %o4 + 0x18 ]
   15448:	86 10 20 01 	mov  1, %g3
   1544c:	c6 26 20 d4 	st  %g3, [ %i0 + 0xd4 ]
   15450:	82 10 20 03 	mov  3, %g1
   15454:	c2 26 20 34 	st  %g1, [ %i0 + 0x34 ]
   15458:	d8 06 20 3c 	ld  [ %i0 + 0x3c ], %o4
   1545c:	82 10 20 52 	mov  0x52, %g1
   15460:	c2 23 00 00 	st  %g1, [ %o4 ]
   15464:	c6 23 20 08 	st  %g3, [ %o4 + 8 ]
   15468:	c6 23 20 0c 	st  %g3, [ %o4 + 0xc ]
   1546c:	c0 23 20 10 	clr  [ %o4 + 0x10 ]
   15470:	c0 23 20 14 	clr  [ %o4 + 0x14 ]
   15474:	c0 23 20 18 	clr  [ %o4 + 0x18 ]
   15478:	c4 06 20 3c 	ld  [ %i0 + 0x3c ], %g2
   1547c:	98 00 a0 54 	add  %g2, 0x54, %o4
   15480:	82 10 20 47 	mov  0x47, %g1
   15484:	c2 20 a0 54 	st  %g1, [ %g2 + 0x54 ]
   15488:	c6 23 20 08 	st  %g3, [ %o4 + 8 ]
   1548c:	c6 23 20 0c 	st  %g3, [ %o4 + 0xc ]
   15490:	c0 23 20 10 	clr  [ %o4 + 0x10 ]
   15494:	c0 23 20 14 	clr  [ %o4 + 0x14 ]
   15498:	c0 23 20 18 	clr  [ %o4 + 0x18 ]
   1549c:	c4 06 20 3c 	ld  [ %i0 + 0x3c ], %g2
   154a0:	98 00 a0 a8 	add  %g2, 0xa8, %o4
   154a4:	82 10 20 42 	mov  0x42, %g1
   154a8:	c2 20 a0 a8 	st  %g1, [ %g2 + 0xa8 ]
   154ac:	c6 23 20 08 	st  %g3, [ %o4 + 8 ]
   154b0:	c6 23 20 0c 	st  %g3, [ %o4 + 0xc ]
   154b4:	c0 23 20 10 	clr  [ %o4 + 0x10 ]
   154b8:	c0 23 20 14 	clr  [ %o4 + 0x14 ]
   154bc:	10 80 00 9b 	b  15728 <jpeg_set_colorspace+0x370>
   154c0:	c0 23 20 18 	clr  [ %o4 + 0x18 ]
   154c4:	84 10 20 01 	mov  1, %g2
   154c8:	c4 26 20 c8 	st  %g2, [ %i0 + 0xc8 ]
   154cc:	88 10 20 03 	mov  3, %g4
   154d0:	c8 26 20 34 	st  %g4, [ %i0 + 0x34 ]
   154d4:	d8 06 20 3c 	ld  [ %i0 + 0x3c ], %o4
   154d8:	c4 23 00 00 	st  %g2, [ %o4 ]
   154dc:	86 10 20 02 	mov  2, %g3
   154e0:	c6 23 20 08 	st  %g3, [ %o4 + 8 ]
   154e4:	c6 23 20 0c 	st  %g3, [ %o4 + 0xc ]
   154e8:	c0 23 20 10 	clr  [ %o4 + 0x10 ]
   154ec:	c0 23 20 14 	clr  [ %o4 + 0x14 ]
   154f0:	c0 23 20 18 	clr  [ %o4 + 0x18 ]
   154f4:	c2 06 20 3c 	ld  [ %i0 + 0x3c ], %g1
   154f8:	98 00 60 54 	add  %g1, 0x54, %o4
   154fc:	c6 20 60 54 	st  %g3, [ %g1 + 0x54 ]
   15500:	c4 23 20 08 	st  %g2, [ %o4 + 8 ]
   15504:	c4 23 20 0c 	st  %g2, [ %o4 + 0xc ]
   15508:	c4 23 20 10 	st  %g2, [ %o4 + 0x10 ]
   1550c:	c4 23 20 14 	st  %g2, [ %o4 + 0x14 ]
   15510:	c4 23 20 18 	st  %g2, [ %o4 + 0x18 ]
   15514:	c2 06 20 3c 	ld  [ %i0 + 0x3c ], %g1
   15518:	98 00 60 a8 	add  %g1, 0xa8, %o4
   1551c:	c8 20 60 a8 	st  %g4, [ %g1 + 0xa8 ]
   15520:	c4 23 20 08 	st  %g2, [ %o4 + 8 ]
   15524:	c4 23 20 0c 	st  %g2, [ %o4 + 0xc ]
   15528:	c4 23 20 10 	st  %g2, [ %o4 + 0x10 ]
   1552c:	c4 23 20 14 	st  %g2, [ %o4 + 0x14 ]
   15530:	10 80 00 7e 	b  15728 <jpeg_set_colorspace+0x370>
   15534:	c4 23 20 18 	st  %g2, [ %o4 + 0x18 ]
   15538:	86 10 20 01 	mov  1, %g3
   1553c:	c6 26 20 d4 	st  %g3, [ %i0 + 0xd4 ]
   15540:	82 10 20 04 	mov  4, %g1
   15544:	c2 26 20 34 	st  %g1, [ %i0 + 0x34 ]
   15548:	d8 06 20 3c 	ld  [ %i0 + 0x3c ], %o4
   1554c:	82 10 20 43 	mov  0x43, %g1
   15550:	c2 23 00 00 	st  %g1, [ %o4 ]
   15554:	c6 23 20 08 	st  %g3, [ %o4 + 8 ]
   15558:	c6 23 20 0c 	st  %g3, [ %o4 + 0xc ]
   1555c:	c0 23 20 10 	clr  [ %o4 + 0x10 ]
   15560:	c0 23 20 14 	clr  [ %o4 + 0x14 ]
   15564:	c0 23 20 18 	clr  [ %o4 + 0x18 ]
   15568:	c4 06 20 3c 	ld  [ %i0 + 0x3c ], %g2
   1556c:	98 00 a0 54 	add  %g2, 0x54, %o4
   15570:	82 10 20 4d 	mov  0x4d, %g1
   15574:	c2 20 a0 54 	st  %g1, [ %g2 + 0x54 ]
   15578:	c6 23 20 08 	st  %g3, [ %o4 + 8 ]
   1557c:	c6 23 20 0c 	st  %g3, [ %o4 + 0xc ]
   15580:	c0 23 20 10 	clr  [ %o4 + 0x10 ]
   15584:	c0 23 20 14 	clr  [ %o4 + 0x14 ]
   15588:	c0 23 20 18 	clr  [ %o4 + 0x18 ]
   1558c:	c4 06 20 3c 	ld  [ %i0 + 0x3c ], %g2
   15590:	98 00 a0 a8 	add  %g2, 0xa8, %o4
   15594:	82 10 20 59 	mov  0x59, %g1
   15598:	c2 20 a0 a8 	st  %g1, [ %g2 + 0xa8 ]
   1559c:	c6 23 20 08 	st  %g3, [ %o4 + 8 ]
   155a0:	c6 23 20 0c 	st  %g3, [ %o4 + 0xc ]
   155a4:	c0 23 20 10 	clr  [ %o4 + 0x10 ]
   155a8:	c0 23 20 14 	clr  [ %o4 + 0x14 ]
   155ac:	c0 23 20 18 	clr  [ %o4 + 0x18 ]
   155b0:	c4 06 20 3c 	ld  [ %i0 + 0x3c ], %g2
   155b4:	98 00 a0 fc 	add  %g2, 0xfc, %o4
   155b8:	82 10 20 4b 	mov  0x4b, %g1
   155bc:	c2 20 a0 fc 	st  %g1, [ %g2 + 0xfc ]
   155c0:	c6 23 20 08 	st  %g3, [ %o4 + 8 ]
   155c4:	c6 23 20 0c 	st  %g3, [ %o4 + 0xc ]
   155c8:	c0 23 20 10 	clr  [ %o4 + 0x10 ]
   155cc:	c0 23 20 14 	clr  [ %o4 + 0x14 ]
   155d0:	10 80 00 56 	b  15728 <jpeg_set_colorspace+0x370>
   155d4:	c0 23 20 18 	clr  [ %o4 + 0x18 ]
   155d8:	84 10 20 01 	mov  1, %g2
   155dc:	c4 26 20 d4 	st  %g2, [ %i0 + 0xd4 ]
   155e0:	9a 10 20 04 	mov  4, %o5
   155e4:	da 26 20 34 	st  %o5, [ %i0 + 0x34 ]
   155e8:	d8 06 20 3c 	ld  [ %i0 + 0x3c ], %o4
   155ec:	c4 23 00 00 	st  %g2, [ %o4 ]
   155f0:	88 10 20 02 	mov  2, %g4
   155f4:	c8 23 20 08 	st  %g4, [ %o4 + 8 ]
   155f8:	c8 23 20 0c 	st  %g4, [ %o4 + 0xc ]
   155fc:	c0 23 20 10 	clr  [ %o4 + 0x10 ]
   15600:	c0 23 20 14 	clr  [ %o4 + 0x14 ]
   15604:	c0 23 20 18 	clr  [ %o4 + 0x18 ]
   15608:	c2 06 20 3c 	ld  [ %i0 + 0x3c ], %g1
   1560c:	98 00 60 54 	add  %g1, 0x54, %o4
   15610:	c8 20 60 54 	st  %g4, [ %g1 + 0x54 ]
   15614:	c4 23 20 08 	st  %g2, [ %o4 + 8 ]
   15618:	c4 23 20 0c 	st  %g2, [ %o4 + 0xc ]
   1561c:	c4 23 20 10 	st  %g2, [ %o4 + 0x10 ]
   15620:	c4 23 20 14 	st  %g2, [ %o4 + 0x14 ]
   15624:	c4 23 20 18 	st  %g2, [ %o4 + 0x18 ]
   15628:	c6 06 20 3c 	ld  [ %i0 + 0x3c ], %g3
   1562c:	98 00 e0 a8 	add  %g3, 0xa8, %o4
   15630:	82 10 20 03 	mov  3, %g1
   15634:	c2 20 e0 a8 	st  %g1, [ %g3 + 0xa8 ]
   15638:	c4 23 20 08 	st  %g2, [ %o4 + 8 ]
   1563c:	c4 23 20 0c 	st  %g2, [ %o4 + 0xc ]
   15640:	c4 23 20 10 	st  %g2, [ %o4 + 0x10 ]
   15644:	c4 23 20 14 	st  %g2, [ %o4 + 0x14 ]
   15648:	c4 23 20 18 	st  %g2, [ %o4 + 0x18 ]
   1564c:	c2 06 20 3c 	ld  [ %i0 + 0x3c ], %g1
   15650:	98 00 60 fc 	add  %g1, 0xfc, %o4
   15654:	da 20 60 fc 	st  %o5, [ %g1 + 0xfc ]
   15658:	c8 23 20 08 	st  %g4, [ %o4 + 8 ]
   1565c:	c8 23 20 0c 	st  %g4, [ %o4 + 0xc ]
   15660:	c0 23 20 10 	clr  [ %o4 + 0x10 ]
   15664:	c0 23 20 14 	clr  [ %o4 + 0x14 ]
   15668:	10 80 00 30 	b  15728 <jpeg_set_colorspace+0x370>
   1566c:	c0 23 20 18 	clr  [ %o4 + 0x18 ]
   15670:	c2 06 20 20 	ld  [ %i0 + 0x20 ], %g1
   15674:	c2 26 20 34 	st  %g1, [ %i0 + 0x34 ]
   15678:	82 00 7f ff 	add  %g1, -1, %g1
   1567c:	80 a0 60 09 	cmp  %g1, 9
   15680:	28 80 00 10 	bleu,a   156c0 <jpeg_set_colorspace+0x308>
   15684:	c2 06 20 34 	ld  [ %i0 + 0x34 ], %g1
   15688:	c4 06 00 00 	ld  [ %i0 ], %g2
   1568c:	82 10 20 18 	mov  0x18, %g1
   15690:	c2 20 a0 14 	st  %g1, [ %g2 + 0x14 ]
   15694:	c4 06 00 00 	ld  [ %i0 ], %g2
   15698:	c2 06 20 34 	ld  [ %i0 + 0x34 ], %g1
   1569c:	c2 20 a0 18 	st  %g1, [ %g2 + 0x18 ]
   156a0:	c4 06 00 00 	ld  [ %i0 ], %g2
   156a4:	82 10 20 0a 	mov  0xa, %g1
   156a8:	c2 20 a0 1c 	st  %g1, [ %g2 + 0x1c ]
   156ac:	c2 06 00 00 	ld  [ %i0 ], %g1
   156b0:	c2 00 40 00 	ld  [ %g1 ], %g1
   156b4:	9f c0 40 00 	call  %g1
   156b8:	90 10 00 18 	mov  %i0, %o0
   156bc:	c2 06 20 34 	ld  [ %i0 + 0x34 ], %g1
   156c0:	80 a0 60 00 	cmp  %g1, 0
   156c4:	04 80 00 19 	ble  15728 <jpeg_set_colorspace+0x370>
   156c8:	86 10 20 00 	clr  %g3
   156cc:	88 10 20 01 	mov  1, %g4
   156d0:	84 58 e0 54 	smul  %g3, 0x54, %g2
   156d4:	c2 06 20 3c 	ld  [ %i0 + 0x3c ], %g1
   156d8:	98 00 80 01 	add  %g2, %g1, %o4
   156dc:	c6 20 80 01 	st  %g3, [ %g2 + %g1 ]
   156e0:	c8 23 20 08 	st  %g4, [ %o4 + 8 ]
   156e4:	c8 23 20 0c 	st  %g4, [ %o4 + 0xc ]
   156e8:	c0 23 20 10 	clr  [ %o4 + 0x10 ]
   156ec:	c0 23 20 14 	clr  [ %o4 + 0x14 ]
   156f0:	c0 23 20 18 	clr  [ %o4 + 0x18 ]
   156f4:	86 00 e0 01 	inc  %g3
   156f8:	c2 06 20 34 	ld  [ %i0 + 0x34 ], %g1
   156fc:	80 a0 40 03 	cmp  %g1, %g3
   15700:	14 bf ff f5 	bg  156d4 <jpeg_set_colorspace+0x31c>
   15704:	84 58 e0 54 	smul  %g3, 0x54, %g2
   15708:	30 80 00 08 	b,a   15728 <jpeg_set_colorspace+0x370>
   1570c:	c4 06 00 00 	ld  [ %i0 ], %g2
   15710:	82 10 20 08 	mov  8, %g1
   15714:	c2 20 a0 14 	st  %g1, [ %g2 + 0x14 ]
   15718:	c2 06 00 00 	ld  [ %i0 ], %g1
   1571c:	c2 00 40 00 	ld  [ %g1 ], %g1
   15720:	9f c0 40 00 	call  %g1
   15724:	90 10 00 18 	mov  %i0, %o0
   15728:	01 00 00 00 	nop 
   1572c:	81 c7 e0 08 	ret 
   15730:	81 e8 00 00 	restore 

00015734 <fill_a_scan>:
   15734:	82 10 20 01 	mov  1, %g1
   15738:	c2 22 00 00 	st  %g1, [ %o0 ]
   1573c:	d2 22 20 04 	st  %o1, [ %o0 + 4 ]
   15740:	d4 22 20 14 	st  %o2, [ %o0 + 0x14 ]
   15744:	d6 22 20 18 	st  %o3, [ %o0 + 0x18 ]
   15748:	d8 22 20 1c 	st  %o4, [ %o0 + 0x1c ]
   1574c:	da 22 20 20 	st  %o5, [ %o0 + 0x20 ]
   15750:	81 c3 e0 08 	retl 
   15754:	90 02 20 24 	add  %o0, 0x24, %o0

00015758 <fill_scans>:
   15758:	82 10 20 00 	clr  %g1
   1575c:	80 a0 40 09 	cmp  %g1, %o1
   15760:	16 80 00 0c 	bge  15790 <fill_scans+0x38>
   15764:	84 10 20 01 	mov  1, %g2
   15768:	c4 22 00 00 	st  %g2, [ %o0 ]
   1576c:	c2 22 20 04 	st  %g1, [ %o0 + 4 ]
   15770:	d4 22 20 14 	st  %o2, [ %o0 + 0x14 ]
   15774:	d6 22 20 18 	st  %o3, [ %o0 + 0x18 ]
   15778:	d8 22 20 1c 	st  %o4, [ %o0 + 0x1c ]
   1577c:	da 22 20 20 	st  %o5, [ %o0 + 0x20 ]
   15780:	82 00 60 01 	inc  %g1
   15784:	80 a0 40 09 	cmp  %g1, %o1
   15788:	06 bf ff f8 	bl  15768 <fill_scans+0x10>
   1578c:	90 02 20 24 	add  %o0, 0x24, %o0
   15790:	81 c3 e0 08 	retl 
   15794:	01 00 00 00 	nop 

00015798 <fill_dc_scans>:
   15798:	9d e3 bf 98 	save  %sp, -104, %sp
   1579c:	90 10 00 18 	mov  %i0, %o0
   157a0:	92 10 00 19 	mov  %i1, %o1
   157a4:	98 10 00 1a 	mov  %i2, %o4
   157a8:	80 a6 60 04 	cmp  %i1, 4
   157ac:	14 80 00 13 	bg  157f8 <fill_dc_scans+0x60>
   157b0:	9a 10 00 1b 	mov  %i3, %o5
   157b4:	84 10 20 00 	clr  %g2
   157b8:	80 a0 80 19 	cmp  %g2, %i1
   157bc:	16 80 00 09 	bge  157e0 <fill_dc_scans+0x48>
   157c0:	f2 22 00 00 	st  %i1, [ %o0 ]
   157c4:	83 28 a0 02 	sll  %g2, 2, %g1
   157c8:	82 00 40 08 	add  %g1, %o0, %g1
   157cc:	c4 20 60 04 	st  %g2, [ %g1 + 4 ]
   157d0:	84 00 a0 01 	inc  %g2
   157d4:	80 a0 80 09 	cmp  %g2, %o1
   157d8:	06 bf ff fc 	bl  157c8 <fill_dc_scans+0x30>
   157dc:	83 28 a0 02 	sll  %g2, 2, %g1
   157e0:	c0 22 20 18 	clr  [ %o0 + 0x18 ]
   157e4:	c0 22 20 14 	clr  [ %o0 + 0x14 ]
   157e8:	d8 22 20 1c 	st  %o4, [ %o0 + 0x1c ]
   157ec:	da 22 20 20 	st  %o5, [ %o0 + 0x20 ]
   157f0:	10 80 00 05 	b  15804 <fill_dc_scans+0x6c>
   157f4:	90 02 20 24 	add  %o0, 0x24, %o0
   157f8:	94 10 20 00 	clr  %o2
   157fc:	7f ff ff d7 	call  15758 <fill_scans>
   15800:	96 10 20 00 	clr  %o3
   15804:	81 c7 e0 08 	ret 
   15808:	91 e8 00 08 	restore  %g0, %o0, %o0

0001580c <jpeg_simple_progression>:
   1580c:	9d e3 bf 98 	save  %sp, -104, %sp
   15810:	c2 06 20 10 	ld  [ %i0 + 0x10 ], %g1
   15814:	80 a0 60 64 	cmp  %g1, 0x64
   15818:	02 80 00 0c 	be  15848 <jpeg_simple_progression+0x3c>
   1581c:	e0 06 20 34 	ld  [ %i0 + 0x34 ], %l0
   15820:	c4 06 00 00 	ld  [ %i0 ], %g2
   15824:	82 10 20 12 	mov  0x12, %g1
   15828:	c2 20 a0 14 	st  %g1, [ %g2 + 0x14 ]
   1582c:	c4 06 00 00 	ld  [ %i0 ], %g2
   15830:	c2 06 20 10 	ld  [ %i0 + 0x10 ], %g1
   15834:	c2 20 a0 18 	st  %g1, [ %g2 + 0x18 ]
   15838:	c2 06 00 00 	ld  [ %i0 ], %g1
   1583c:	c2 00 40 00 	ld  [ %g1 ], %g1
   15840:	9f c0 40 00 	call  %g1
   15844:	90 10 00 18 	mov  %i0, %o0
   15848:	80 a4 20 03 	cmp  %l0, 3
   1584c:	12 80 00 07 	bne  15868 <jpeg_simple_progression+0x5c>
   15850:	82 04 00 10 	add  %l0, %l0, %g1
   15854:	c2 06 20 38 	ld  [ %i0 + 0x38 ], %g1
   15858:	80 a0 60 03 	cmp  %g1, 3
   1585c:	02 80 00 09 	be  15880 <jpeg_simple_progression+0x74>
   15860:	a2 10 20 0a 	mov  0xa, %l1
   15864:	82 04 00 10 	add  %l0, %l0, %g1
   15868:	82 00 40 10 	add  %g1, %l0, %g1
   1586c:	80 a4 20 04 	cmp  %l0, 4
   15870:	14 80 00 04 	bg  15880 <jpeg_simple_progression+0x74>
   15874:	a2 00 40 01 	add  %g1, %g1, %l1
   15878:	83 2c 20 02 	sll  %l0, 2, %g1
   1587c:	a2 00 60 02 	add  %g1, 2, %l1
   15880:	c2 06 20 04 	ld  [ %i0 + 4 ], %g1
   15884:	95 2c 60 03 	sll  %l1, 3, %o2
   15888:	94 02 80 11 	add  %o2, %l1, %o2
   1588c:	c2 00 40 00 	ld  [ %g1 ], %g1
   15890:	90 10 00 18 	mov  %i0, %o0
   15894:	92 10 20 00 	clr  %o1
   15898:	9f c0 40 00 	call  %g1
   1589c:	95 2a a0 02 	sll  %o2, 2, %o2
   158a0:	84 10 00 08 	mov  %o0, %g2
   158a4:	d0 26 20 a4 	st  %o0, [ %i0 + 0xa4 ]
   158a8:	80 a4 20 03 	cmp  %l0, 3
   158ac:	12 80 00 3f 	bne  159a8 <jpeg_simple_progression+0x19c>
   158b0:	e2 26 20 a0 	st  %l1, [ %i0 + 0xa0 ]
   158b4:	c2 06 20 38 	ld  [ %i0 + 0x38 ], %g1
   158b8:	80 a0 60 03 	cmp  %g1, 3
   158bc:	32 80 00 3c 	bne,a   159ac <jpeg_simple_progression+0x1a0>
   158c0:	90 10 00 02 	mov  %g2, %o0
   158c4:	92 10 20 03 	mov  3, %o1
   158c8:	94 10 20 00 	clr  %o2
   158cc:	7f ff ff b3 	call  15798 <fill_dc_scans>
   158d0:	96 10 20 01 	mov  1, %o3
   158d4:	92 10 20 00 	clr  %o1
   158d8:	94 10 20 01 	mov  1, %o2
   158dc:	96 10 20 05 	mov  5, %o3
   158e0:	98 10 20 00 	clr  %o4
   158e4:	7f ff ff 94 	call  15734 <fill_a_scan>
   158e8:	9a 10 20 02 	mov  2, %o5
   158ec:	92 10 20 02 	mov  2, %o1
   158f0:	94 10 20 01 	mov  1, %o2
   158f4:	96 10 20 3f 	mov  0x3f, %o3
   158f8:	98 10 20 00 	clr  %o4
   158fc:	7f ff ff 8e 	call  15734 <fill_a_scan>
   15900:	9a 10 20 01 	mov  1, %o5
   15904:	92 10 20 01 	mov  1, %o1
   15908:	94 10 20 01 	mov  1, %o2
   1590c:	96 10 20 3f 	mov  0x3f, %o3
   15910:	98 10 20 00 	clr  %o4
   15914:	7f ff ff 88 	call  15734 <fill_a_scan>
   15918:	9a 10 20 01 	mov  1, %o5
   1591c:	92 10 20 00 	clr  %o1
   15920:	94 10 20 06 	mov  6, %o2
   15924:	96 10 20 3f 	mov  0x3f, %o3
   15928:	98 10 20 00 	clr  %o4
   1592c:	7f ff ff 82 	call  15734 <fill_a_scan>
   15930:	9a 10 20 02 	mov  2, %o5
   15934:	92 10 20 00 	clr  %o1
   15938:	94 10 20 01 	mov  1, %o2
   1593c:	96 10 20 3f 	mov  0x3f, %o3
   15940:	98 10 20 02 	mov  2, %o4
   15944:	7f ff ff 7c 	call  15734 <fill_a_scan>
   15948:	9a 10 20 01 	mov  1, %o5
   1594c:	92 10 20 03 	mov  3, %o1
   15950:	94 10 20 01 	mov  1, %o2
   15954:	7f ff ff 91 	call  15798 <fill_dc_scans>
   15958:	96 10 20 00 	clr  %o3
   1595c:	92 10 20 02 	mov  2, %o1
   15960:	94 10 20 01 	mov  1, %o2
   15964:	96 10 20 3f 	mov  0x3f, %o3
   15968:	98 10 20 01 	mov  1, %o4
   1596c:	7f ff ff 72 	call  15734 <fill_a_scan>
   15970:	9a 10 20 00 	clr  %o5
   15974:	92 10 20 01 	mov  1, %o1
   15978:	94 10 20 01 	mov  1, %o2
   1597c:	96 10 20 3f 	mov  0x3f, %o3
   15980:	98 10 20 01 	mov  1, %o4
   15984:	7f ff ff 6c 	call  15734 <fill_a_scan>
   15988:	9a 10 20 00 	clr  %o5
   1598c:	92 10 20 00 	clr  %o1
   15990:	94 10 20 01 	mov  1, %o2
   15994:	96 10 20 3f 	mov  0x3f, %o3
   15998:	98 10 20 01 	mov  1, %o4
   1599c:	7f ff ff 66 	call  15734 <fill_a_scan>
   159a0:	9a 10 20 00 	clr  %o5
   159a4:	30 80 00 22 	b,a   15a2c <jpeg_simple_progression+0x220>
   159a8:	90 10 00 02 	mov  %g2, %o0
   159ac:	92 10 00 10 	mov  %l0, %o1
   159b0:	94 10 20 00 	clr  %o2
   159b4:	7f ff ff 79 	call  15798 <fill_dc_scans>
   159b8:	96 10 20 01 	mov  1, %o3
   159bc:	92 10 00 10 	mov  %l0, %o1
   159c0:	94 10 20 01 	mov  1, %o2
   159c4:	96 10 20 05 	mov  5, %o3
   159c8:	98 10 20 00 	clr  %o4
   159cc:	7f ff ff 63 	call  15758 <fill_scans>
   159d0:	9a 10 20 02 	mov  2, %o5
   159d4:	92 10 00 10 	mov  %l0, %o1
   159d8:	94 10 20 06 	mov  6, %o2
   159dc:	96 10 20 3f 	mov  0x3f, %o3
   159e0:	98 10 20 00 	clr  %o4
   159e4:	7f ff ff 5d 	call  15758 <fill_scans>
   159e8:	9a 10 20 02 	mov  2, %o5
   159ec:	92 10 00 10 	mov  %l0, %o1
   159f0:	94 10 20 01 	mov  1, %o2
   159f4:	96 10 20 3f 	mov  0x3f, %o3
   159f8:	98 10 20 02 	mov  2, %o4
   159fc:	7f ff ff 57 	call  15758 <fill_scans>
   15a00:	9a 10 20 01 	mov  1, %o5
   15a04:	92 10 00 10 	mov  %l0, %o1
   15a08:	94 10 20 01 	mov  1, %o2
   15a0c:	7f ff ff 63 	call  15798 <fill_dc_scans>
   15a10:	96 10 20 00 	clr  %o3
   15a14:	92 10 00 10 	mov  %l0, %o1
   15a18:	94 10 20 01 	mov  1, %o2
   15a1c:	96 10 20 3f 	mov  0x3f, %o3
   15a20:	98 10 20 01 	mov  1, %o4
   15a24:	7f ff ff 4d 	call  15758 <fill_scans>
   15a28:	9a 10 20 00 	clr  %o5
   15a2c:	01 00 00 00 	nop 
   15a30:	81 c7 e0 08 	ret 
   15a34:	81 e8 00 00 	restore 

00015a38 <init_destination>:
   15a38:	9d e3 bf 98 	save  %sp, -104, %sp
   15a3c:	90 10 00 18 	mov  %i0, %o0
   15a40:	e0 06 20 14 	ld  [ %i0 + 0x14 ], %l0
   15a44:	c2 06 20 04 	ld  [ %i0 + 4 ], %g1
   15a48:	c2 00 40 00 	ld  [ %g1 ], %g1
   15a4c:	92 10 20 01 	mov  1, %o1
   15a50:	9f c0 40 00 	call  %g1
   15a54:	15 00 00 04 	sethi  %hi(0x1000), %o2
   15a58:	d0 24 20 18 	st  %o0, [ %l0 + 0x18 ]
   15a5c:	d0 24 00 00 	st  %o0, [ %l0 ]
   15a60:	03 00 00 04 	sethi  %hi(0x1000), %g1
   15a64:	c2 24 20 04 	st  %g1, [ %l0 + 4 ]
   15a68:	81 c7 e0 08 	ret 
   15a6c:	81 e8 00 00 	restore 

00015a70 <empty_output_buffer>:
   15a70:	9d e3 bf 98 	save  %sp, -104, %sp
   15a74:	e0 06 20 14 	ld  [ %i0 + 0x14 ], %l0
   15a78:	d0 04 20 18 	ld  [ %l0 + 0x18 ], %o0
   15a7c:	92 10 20 01 	mov  1, %o1
   15a80:	15 00 00 04 	sethi  %hi(0x1000), %o2
   15a84:	40 00 77 4a 	call  337ac <fwrite@plt>
   15a88:	d6 04 20 14 	ld  [ %l0 + 0x14 ], %o3
   15a8c:	03 00 00 04 	sethi  %hi(0x1000), %g1
   15a90:	80 a2 00 01 	cmp  %o0, %g1
   15a94:	02 80 00 08 	be  15ab4 <empty_output_buffer+0x44>
   15a98:	82 10 20 24 	mov  0x24, %g1
   15a9c:	c4 06 00 00 	ld  [ %i0 ], %g2
   15aa0:	c2 20 a0 14 	st  %g1, [ %g2 + 0x14 ]
   15aa4:	c2 06 00 00 	ld  [ %i0 ], %g1
   15aa8:	c2 00 40 00 	ld  [ %g1 ], %g1
   15aac:	9f c0 40 00 	call  %g1
   15ab0:	90 10 00 18 	mov  %i0, %o0
   15ab4:	c2 04 20 18 	ld  [ %l0 + 0x18 ], %g1
   15ab8:	c2 24 00 00 	st  %g1, [ %l0 ]
   15abc:	03 00 00 04 	sethi  %hi(0x1000), %g1
   15ac0:	c2 24 20 04 	st  %g1, [ %l0 + 4 ]
   15ac4:	81 c7 e0 08 	ret 
   15ac8:	91 e8 20 01 	restore  %g0, 1, %o0

00015acc <term_destination>:
   15acc:	9d e3 bf 98 	save  %sp, -104, %sp
   15ad0:	e0 06 20 14 	ld  [ %i0 + 0x14 ], %l0
   15ad4:	05 00 00 04 	sethi  %hi(0x1000), %g2
   15ad8:	c2 04 20 04 	ld  [ %l0 + 4 ], %g1
   15adc:	a2 a0 80 01 	subcc  %g2, %g1, %l1
   15ae0:	02 80 00 0f 	be  15b1c <term_destination+0x50>
   15ae4:	92 10 20 01 	mov  1, %o1
   15ae8:	d0 04 20 18 	ld  [ %l0 + 0x18 ], %o0
   15aec:	94 10 00 11 	mov  %l1, %o2
   15af0:	40 00 77 2f 	call  337ac <fwrite@plt>
   15af4:	d6 04 20 14 	ld  [ %l0 + 0x14 ], %o3
   15af8:	80 a2 00 11 	cmp  %o0, %l1
   15afc:	02 80 00 08 	be  15b1c <term_destination+0x50>
   15b00:	82 10 20 24 	mov  0x24, %g1
   15b04:	c4 06 00 00 	ld  [ %i0 ], %g2
   15b08:	c2 20 a0 14 	st  %g1, [ %g2 + 0x14 ]
   15b0c:	c2 06 00 00 	ld  [ %i0 ], %g1
   15b10:	c2 00 40 00 	ld  [ %g1 ], %g1
   15b14:	9f c0 40 00 	call  %g1
   15b18:	90 10 00 18 	mov  %i0, %o0
   15b1c:	40 00 76 fd 	call  33710 <fflush@plt>
   15b20:	d0 04 20 14 	ld  [ %l0 + 0x14 ], %o0
   15b24:	40 00 76 ef 	call  336e0 <ferror@plt>
   15b28:	d0 04 20 14 	ld  [ %l0 + 0x14 ], %o0
   15b2c:	80 a2 20 00 	cmp  %o0, 0
   15b30:	02 80 00 08 	be  15b50 <term_destination+0x84>
   15b34:	82 10 20 24 	mov  0x24, %g1
   15b38:	c4 06 00 00 	ld  [ %i0 ], %g2
   15b3c:	c2 20 a0 14 	st  %g1, [ %g2 + 0x14 ]
   15b40:	c2 06 00 00 	ld  [ %i0 ], %g1
   15b44:	c2 00 40 00 	ld  [ %g1 ], %g1
   15b48:	9f c0 40 00 	call  %g1
   15b4c:	90 10 00 18 	mov  %i0, %o0
   15b50:	01 00 00 00 	nop 
   15b54:	81 c7 e0 08 	ret 
   15b58:	81 e8 00 00 	restore 

00015b5c <jpeg_stdio_dest>:
   15b5c:	9d e3 bf 98 	save  %sp, -104, %sp
   15b60:	c2 06 20 14 	ld  [ %i0 + 0x14 ], %g1
   15b64:	80 a0 60 00 	cmp  %g1, 0
   15b68:	32 80 00 0a 	bne,a   15b90 <jpeg_stdio_dest+0x34>
   15b6c:	c4 06 20 14 	ld  [ %i0 + 0x14 ], %g2
   15b70:	c2 06 20 04 	ld  [ %i0 + 4 ], %g1
   15b74:	c2 00 40 00 	ld  [ %g1 ], %g1
   15b78:	90 10 00 18 	mov  %i0, %o0
   15b7c:	92 10 20 00 	clr  %o1
   15b80:	9f c0 40 00 	call  %g1
   15b84:	94 10 20 1c 	mov  0x1c, %o2
   15b88:	d0 26 20 14 	st  %o0, [ %i0 + 0x14 ]
   15b8c:	c4 06 20 14 	ld  [ %i0 + 0x14 ], %g2
   15b90:	03 00 00 56 	sethi  %hi(0x15800), %g1
   15b94:	82 10 62 38 	or  %g1, 0x238, %g1	! 15a38 <init_destination>
   15b98:	c2 20 a0 08 	st  %g1, [ %g2 + 8 ]
   15b9c:	03 00 00 56 	sethi  %hi(0x15800), %g1
   15ba0:	82 10 62 70 	or  %g1, 0x270, %g1	! 15a70 <empty_output_buffer>
   15ba4:	c2 20 a0 0c 	st  %g1, [ %g2 + 0xc ]
   15ba8:	03 00 00 56 	sethi  %hi(0x15800), %g1
   15bac:	82 10 62 cc 	or  %g1, 0x2cc, %g1	! 15acc <term_destination>
   15bb0:	c2 20 a0 10 	st  %g1, [ %g2 + 0x10 ]
   15bb4:	f2 20 a0 14 	st  %i1, [ %g2 + 0x14 ]
   15bb8:	81 c7 e0 08 	ret 
   15bbc:	81 e8 00 00 	restore 

00015bc0 <jinit_compress_master>:
   15bc0:	9d e3 bf 98 	save  %sp, -104, %sp
   15bc4:	90 10 00 18 	mov  %i0, %o0
   15bc8:	40 00 04 00 	call  16bc8 <jinit_c_master_control>
   15bcc:	92 10 20 00 	clr  %o1
   15bd0:	c2 06 20 a8 	ld  [ %i0 + 0xa8 ], %g1
   15bd4:	80 a0 60 00 	cmp  %g1, 0
   15bd8:	12 80 00 09 	bne  15bfc <jinit_compress_master+0x3c>
   15bdc:	01 00 00 00 	nop 
   15be0:	40 00 0c 95 	call  18e34 <jinit_color_converter>
   15be4:	90 10 00 18 	mov  %i0, %o0
   15be8:	40 00 0f 77 	call  199c4 <jinit_downsampler>
   15bec:	90 10 00 18 	mov  %i0, %o0
   15bf0:	90 10 00 18 	mov  %i0, %o0
   15bf4:	40 00 08 e2 	call  17f7c <jinit_c_prep_controller>
   15bf8:	92 10 20 00 	clr  %o1
   15bfc:	40 00 1d a6 	call  1d294 <jinit_forward_dct>
   15c00:	90 10 00 18 	mov  %i0, %o0
   15c04:	c2 06 20 ac 	ld  [ %i0 + 0xac ], %g1
   15c08:	80 a0 60 00 	cmp  %g1, 0
   15c0c:	22 80 00 0b 	be,a   15c38 <jinit_compress_master+0x78>
   15c10:	c2 06 20 dc 	ld  [ %i0 + 0xdc ], %g1
   15c14:	c4 06 00 00 	ld  [ %i0 ], %g2
   15c18:	82 10 20 01 	mov  1, %g1
   15c1c:	c2 20 a0 14 	st  %g1, [ %g2 + 0x14 ]
   15c20:	c2 06 00 00 	ld  [ %i0 ], %g1
   15c24:	c2 00 40 00 	ld  [ %g1 ], %g1
   15c28:	9f c0 40 00 	call  %g1
   15c2c:	90 10 00 18 	mov  %i0, %o0
   15c30:	10 80 00 0c 	b  15c60 <jinit_compress_master+0xa0>
   15c34:	92 10 20 00 	clr  %o1
   15c38:	80 a0 60 00 	cmp  %g1, 0
   15c3c:	02 80 00 06 	be  15c54 <jinit_compress_master+0x94>
   15c40:	01 00 00 00 	nop 
   15c44:	40 00 1c 05 	call  1cc58 <jinit_phuff_encoder>
   15c48:	90 10 00 18 	mov  %i0, %o0
   15c4c:	10 80 00 05 	b  15c60 <jinit_compress_master+0xa0>
   15c50:	92 10 20 00 	clr  %o1
   15c54:	40 00 15 9c 	call  1b2c4 <jinit_huff_encoder>
   15c58:	90 10 00 18 	mov  %i0, %o0
   15c5c:	92 10 20 00 	clr  %o1
   15c60:	c2 06 20 a0 	ld  [ %i0 + 0xa0 ], %g1
   15c64:	80 a0 60 01 	cmp  %g1, 1
   15c68:	34 80 00 06 	bg,a   15c80 <jinit_compress_master+0xc0>
   15c6c:	92 10 20 01 	mov  1, %o1
   15c70:	c2 06 20 b0 	ld  [ %i0 + 0xb0 ], %g1
   15c74:	80 a0 60 00 	cmp  %g1, 0
   15c78:	32 80 00 02 	bne,a   15c80 <jinit_compress_master+0xc0>
   15c7c:	92 10 20 01 	mov  1, %o1
   15c80:	40 00 0a f7 	call  1885c <jinit_c_coef_controller>
   15c84:	90 10 00 18 	mov  %i0, %o0
   15c88:	90 10 00 18 	mov  %i0, %o0
   15c8c:	40 00 07 1f 	call  17908 <jinit_c_main_controller>
   15c90:	92 10 20 00 	clr  %o1
   15c94:	40 00 06 a7 	call  17730 <jinit_marker_writer>
   15c98:	90 10 00 18 	mov  %i0, %o0
   15c9c:	c2 06 20 04 	ld  [ %i0 + 4 ], %g1
   15ca0:	c2 00 60 18 	ld  [ %g1 + 0x18 ], %g1
   15ca4:	9f c0 40 00 	call  %g1
   15ca8:	90 10 00 18 	mov  %i0, %o0
   15cac:	c2 06 21 54 	ld  [ %i0 + 0x154 ], %g1
   15cb0:	c2 00 60 04 	ld  [ %g1 + 4 ], %g1
   15cb4:	9f c0 40 00 	call  %g1
   15cb8:	90 10 00 18 	mov  %i0, %o0
   15cbc:	01 00 00 00 	nop 
   15cc0:	81 c7 e0 08 	ret 
   15cc4:	81 e8 00 00 	restore 

00015cc8 <initial_setup>:
   15cc8:	9d e3 bf 98 	save  %sp, -104, %sp
   15ccc:	c2 06 20 1c 	ld  [ %i0 + 0x1c ], %g1
   15cd0:	80 a0 60 00 	cmp  %g1, 0
   15cd4:	22 80 00 0f 	be,a   15d10 <initial_setup+0x48>
   15cd8:	c4 06 00 00 	ld  [ %i0 ], %g2
   15cdc:	c2 06 20 18 	ld  [ %i0 + 0x18 ], %g1
   15ce0:	80 a0 60 00 	cmp  %g1, 0
   15ce4:	22 80 00 0b 	be,a   15d10 <initial_setup+0x48>
   15ce8:	c4 06 00 00 	ld  [ %i0 ], %g2
   15cec:	c2 06 20 34 	ld  [ %i0 + 0x34 ], %g1
   15cf0:	80 a0 60 00 	cmp  %g1, 0
   15cf4:	24 80 00 07 	ble,a   15d10 <initial_setup+0x48>
   15cf8:	c4 06 00 00 	ld  [ %i0 ], %g2
   15cfc:	c2 06 20 20 	ld  [ %i0 + 0x20 ], %g1
   15d00:	80 a0 60 00 	cmp  %g1, 0
   15d04:	34 80 00 0a 	bg,a   15d2c <initial_setup+0x64>
   15d08:	c4 06 20 1c 	ld  [ %i0 + 0x1c ], %g2
   15d0c:	c4 06 00 00 	ld  [ %i0 ], %g2
   15d10:	82 10 20 1f 	mov  0x1f, %g1
   15d14:	c2 20 a0 14 	st  %g1, [ %g2 + 0x14 ]
   15d18:	c2 06 00 00 	ld  [ %i0 ], %g1
   15d1c:	c2 00 40 00 	ld  [ %g1 ], %g1
   15d20:	9f c0 40 00 	call  %g1
   15d24:	90 10 00 18 	mov  %i0, %o0
   15d28:	c4 06 20 1c 	ld  [ %i0 + 0x1c ], %g2
   15d2c:	03 00 00 3f 	sethi  %hi(0xfc00), %g1
   15d30:	86 10 63 dc 	or  %g1, 0x3dc, %g3	! ffdc <_init-0x6f4>
   15d34:	80 a0 80 03 	cmp  %g2, %g3
   15d38:	34 80 00 07 	bg,a   15d54 <initial_setup+0x8c>
   15d3c:	c4 06 00 00 	ld  [ %i0 ], %g2
   15d40:	c2 06 20 18 	ld  [ %i0 + 0x18 ], %g1
   15d44:	80 a0 40 03 	cmp  %g1, %g3
   15d48:	24 80 00 0e 	ble,a   15d80 <initial_setup+0xb8>
   15d4c:	c2 06 20 30 	ld  [ %i0 + 0x30 ], %g1
   15d50:	c4 06 00 00 	ld  [ %i0 ], %g2
   15d54:	82 10 20 28 	mov  0x28, %g1
   15d58:	c2 20 a0 14 	st  %g1, [ %g2 + 0x14 ]
   15d5c:	c4 06 00 00 	ld  [ %i0 ], %g2
   15d60:	03 00 00 3f 	sethi  %hi(0xfc00), %g1
   15d64:	82 10 63 dc 	or  %g1, 0x3dc, %g1	! ffdc <_init-0x6f4>
   15d68:	c2 20 a0 18 	st  %g1, [ %g2 + 0x18 ]
   15d6c:	c2 06 00 00 	ld  [ %i0 ], %g1
   15d70:	c2 00 40 00 	ld  [ %g1 ], %g1
   15d74:	9f c0 40 00 	call  %g1
   15d78:	90 10 00 18 	mov  %i0, %o0
   15d7c:	c2 06 20 30 	ld  [ %i0 + 0x30 ], %g1
   15d80:	80 a0 60 08 	cmp  %g1, 8
   15d84:	02 80 00 0b 	be  15db0 <initial_setup+0xe8>
   15d88:	82 10 20 0d 	mov  0xd, %g1
   15d8c:	c4 06 00 00 	ld  [ %i0 ], %g2
   15d90:	c2 20 a0 14 	st  %g1, [ %g2 + 0x14 ]
   15d94:	c4 06 00 00 	ld  [ %i0 ], %g2
   15d98:	c2 06 20 30 	ld  [ %i0 + 0x30 ], %g1
   15d9c:	c2 20 a0 18 	st  %g1, [ %g2 + 0x18 ]
   15da0:	c2 06 00 00 	ld  [ %i0 ], %g1
   15da4:	c2 00 40 00 	ld  [ %g1 ], %g1
   15da8:	9f c0 40 00 	call  %g1
   15dac:	90 10 00 18 	mov  %i0, %o0
   15db0:	c2 06 20 34 	ld  [ %i0 + 0x34 ], %g1
   15db4:	80 a0 60 0a 	cmp  %g1, 0xa
   15db8:	04 80 00 10 	ble  15df8 <initial_setup+0x130>
   15dbc:	82 10 20 01 	mov  1, %g1
   15dc0:	c4 06 00 00 	ld  [ %i0 ], %g2
   15dc4:	82 10 20 18 	mov  0x18, %g1
   15dc8:	c2 20 a0 14 	st  %g1, [ %g2 + 0x14 ]
   15dcc:	c4 06 00 00 	ld  [ %i0 ], %g2
   15dd0:	c2 06 20 34 	ld  [ %i0 + 0x34 ], %g1
   15dd4:	c2 20 a0 18 	st  %g1, [ %g2 + 0x18 ]
   15dd8:	c4 06 00 00 	ld  [ %i0 ], %g2
   15ddc:	82 10 20 0a 	mov  0xa, %g1
   15de0:	c2 20 a0 1c 	st  %g1, [ %g2 + 0x1c ]
   15de4:	c2 06 00 00 	ld  [ %i0 ], %g1
   15de8:	c2 00 40 00 	ld  [ %g1 ], %g1
   15dec:	9f c0 40 00 	call  %g1
   15df0:	90 10 00 18 	mov  %i0, %o0
   15df4:	82 10 20 01 	mov  1, %g1
   15df8:	c2 26 20 e0 	st  %g1, [ %i0 + 0xe0 ]
   15dfc:	c2 26 20 e4 	st  %g1, [ %i0 + 0xe4 ]
   15e00:	a2 10 20 00 	clr  %l1
   15e04:	c2 06 20 34 	ld  [ %i0 + 0x34 ], %g1
   15e08:	80 a0 60 00 	cmp  %g1, 0
   15e0c:	04 80 00 4d 	ble  15f40 <initial_setup+0x278>
   15e10:	e0 06 20 3c 	ld  [ %i0 + 0x3c ], %l0
   15e14:	c2 04 20 08 	ld  [ %l0 + 8 ], %g1
   15e18:	82 00 7f ff 	add  %g1, -1, %g1
   15e1c:	80 a0 60 03 	cmp  %g1, 3
   15e20:	38 80 00 09 	bgu,a   15e44 <initial_setup+0x17c>
   15e24:	c4 06 00 00 	ld  [ %i0 ], %g2
   15e28:	c2 04 20 0c 	ld  [ %l0 + 0xc ], %g1
   15e2c:	80 a0 60 00 	cmp  %g1, 0
   15e30:	04 80 00 04 	ble  15e40 <initial_setup+0x178>
   15e34:	80 a0 60 04 	cmp  %g1, 4
   15e38:	24 80 00 0a 	ble,a   15e60 <initial_setup+0x198>
   15e3c:	c4 06 20 e0 	ld  [ %i0 + 0xe0 ], %g2
   15e40:	c4 06 00 00 	ld  [ %i0 ], %g2
   15e44:	82 10 20 10 	mov  0x10, %g1
   15e48:	c2 20 a0 14 	st  %g1, [ %g2 + 0x14 ]
   15e4c:	c2 06 00 00 	ld  [ %i0 ], %g1
   15e50:	c2 00 40 00 	ld  [ %g1 ], %g1
   15e54:	9f c0 40 00 	call  %g1
   15e58:	90 10 00 18 	mov  %i0, %o0
   15e5c:	c4 06 20 e0 	ld  [ %i0 + 0xe0 ], %g2
   15e60:	c2 04 20 08 	ld  [ %l0 + 8 ], %g1
   15e64:	80 a0 40 02 	cmp  %g1, %g2
   15e68:	26 80 00 02 	bl,a   15e70 <initial_setup+0x1a8>
   15e6c:	82 10 00 02 	mov  %g2, %g1
   15e70:	c2 26 20 e0 	st  %g1, [ %i0 + 0xe0 ]
   15e74:	c4 06 20 e4 	ld  [ %i0 + 0xe4 ], %g2
   15e78:	c2 04 20 0c 	ld  [ %l0 + 0xc ], %g1
   15e7c:	80 a0 40 02 	cmp  %g1, %g2
   15e80:	26 80 00 02 	bl,a   15e88 <initial_setup+0x1c0>
   15e84:	82 10 00 02 	mov  %g2, %g1
   15e88:	c2 26 20 e4 	st  %g1, [ %i0 + 0xe4 ]
   15e8c:	a2 04 60 01 	inc  %l1
   15e90:	c2 06 20 34 	ld  [ %i0 + 0x34 ], %g1
   15e94:	80 a0 40 11 	cmp  %g1, %l1
   15e98:	14 bf ff df 	bg  15e14 <initial_setup+0x14c>
   15e9c:	a0 04 20 54 	add  %l0, 0x54, %l0
   15ea0:	a2 10 20 00 	clr  %l1
   15ea4:	80 a0 60 00 	cmp  %g1, 0
   15ea8:	04 80 00 26 	ble  15f40 <initial_setup+0x278>
   15eac:	e0 06 20 3c 	ld  [ %i0 + 0x3c ], %l0
   15eb0:	e2 24 20 04 	st  %l1, [ %l0 + 4 ]
   15eb4:	82 10 20 08 	mov  8, %g1
   15eb8:	c2 24 20 24 	st  %g1, [ %l0 + 0x24 ]
   15ebc:	c2 06 20 18 	ld  [ %i0 + 0x18 ], %g1
   15ec0:	d0 04 20 08 	ld  [ %l0 + 8 ], %o0
   15ec4:	d2 06 20 e0 	ld  [ %i0 + 0xe0 ], %o1
   15ec8:	90 58 40 08 	smul  %g1, %o0, %o0
   15ecc:	40 00 1f bc 	call  1ddbc <jdiv_round_up>
   15ed0:	93 2a 60 03 	sll  %o1, 3, %o1
   15ed4:	d0 24 20 1c 	st  %o0, [ %l0 + 0x1c ]
   15ed8:	c2 06 20 1c 	ld  [ %i0 + 0x1c ], %g1
   15edc:	d0 04 20 0c 	ld  [ %l0 + 0xc ], %o0
   15ee0:	d2 06 20 e4 	ld  [ %i0 + 0xe4 ], %o1
   15ee4:	90 58 40 08 	smul  %g1, %o0, %o0
   15ee8:	40 00 1f b5 	call  1ddbc <jdiv_round_up>
   15eec:	93 2a 60 03 	sll  %o1, 3, %o1
   15ef0:	d0 24 20 20 	st  %o0, [ %l0 + 0x20 ]
   15ef4:	c2 06 20 18 	ld  [ %i0 + 0x18 ], %g1
   15ef8:	d0 04 20 08 	ld  [ %l0 + 8 ], %o0
   15efc:	90 58 40 08 	smul  %g1, %o0, %o0
   15f00:	40 00 1f af 	call  1ddbc <jdiv_round_up>
   15f04:	d2 06 20 e0 	ld  [ %i0 + 0xe0 ], %o1
   15f08:	d0 24 20 28 	st  %o0, [ %l0 + 0x28 ]
   15f0c:	c2 06 20 1c 	ld  [ %i0 + 0x1c ], %g1
   15f10:	d0 04 20 0c 	ld  [ %l0 + 0xc ], %o0
   15f14:	90 58 40 08 	smul  %g1, %o0, %o0
   15f18:	40 00 1f a9 	call  1ddbc <jdiv_round_up>
   15f1c:	d2 06 20 e4 	ld  [ %i0 + 0xe4 ], %o1
   15f20:	d0 24 20 2c 	st  %o0, [ %l0 + 0x2c ]
   15f24:	82 10 20 01 	mov  1, %g1
   15f28:	c2 24 20 30 	st  %g1, [ %l0 + 0x30 ]
   15f2c:	a2 04 60 01 	inc  %l1
   15f30:	c2 06 20 34 	ld  [ %i0 + 0x34 ], %g1
   15f34:	80 a0 40 11 	cmp  %g1, %l1
   15f38:	14 bf ff de 	bg  15eb0 <initial_setup+0x1e8>
   15f3c:	a0 04 20 54 	add  %l0, 0x54, %l0
   15f40:	d2 06 20 e4 	ld  [ %i0 + 0xe4 ], %o1
   15f44:	d0 06 20 1c 	ld  [ %i0 + 0x1c ], %o0
   15f48:	40 00 1f 9d 	call  1ddbc <jdiv_round_up>
   15f4c:	93 2a 60 03 	sll  %o1, 3, %o1
   15f50:	d0 26 20 e8 	st  %o0, [ %i0 + 0xe8 ]
   15f54:	81 c7 e0 08 	ret 
   15f58:	81 e8 00 00 	restore 

00015f5c <validate_script>:
   15f5c:	9d e3 b5 70 	save  %sp, -2704, %sp
   15f60:	c2 06 20 a0 	ld  [ %i0 + 0xa0 ], %g1
   15f64:	80 a0 60 00 	cmp  %g1, 0
   15f68:	34 80 00 0c 	bg,a   15f98 <validate_script+0x3c>
   15f6c:	ee 06 20 a4 	ld  [ %i0 + 0xa4 ], %l7
   15f70:	c4 06 00 00 	ld  [ %i0 ], %g2
   15f74:	82 10 20 11 	mov  0x11, %g1
   15f78:	c2 20 a0 14 	st  %g1, [ %g2 + 0x14 ]
   15f7c:	c2 06 00 00 	ld  [ %i0 ], %g1
   15f80:	c0 20 60 18 	clr  [ %g1 + 0x18 ]
   15f84:	c2 06 00 00 	ld  [ %i0 ], %g1
   15f88:	c2 00 40 00 	ld  [ %g1 ], %g1
   15f8c:	9f c0 40 00 	call  %g1
   15f90:	90 10 00 18 	mov  %i0, %o0
   15f94:	ee 06 20 a4 	ld  [ %i0 + 0xa4 ], %l7
   15f98:	c2 05 e0 14 	ld  [ %l7 + 0x14 ], %g1
   15f9c:	80 a0 60 00 	cmp  %g1, 0
   15fa0:	12 80 00 06 	bne  15fb8 <validate_script+0x5c>
   15fa4:	82 10 20 01 	mov  1, %g1
   15fa8:	c2 05 e0 18 	ld  [ %l7 + 0x18 ], %g1
   15fac:	80 a0 60 3f 	cmp  %g1, 0x3f
   15fb0:	02 80 00 16 	be  16008 <validate_script+0xac>
   15fb4:	82 10 20 01 	mov  1, %g1
   15fb8:	c2 26 20 dc 	st  %g1, [ %i0 + 0xdc ]
   15fbc:	a2 07 b5 d0 	add  %fp, -2608, %l1
   15fc0:	c2 06 20 34 	ld  [ %i0 + 0x34 ], %g1
   15fc4:	80 a0 60 00 	cmp  %g1, 0
   15fc8:	04 80 00 1d 	ble  1603c <validate_script+0xe0>
   15fcc:	a4 10 20 00 	clr  %l2
   15fd0:	84 10 3f ff 	mov  -1, %g2
   15fd4:	a0 10 20 00 	clr  %l0
   15fd8:	c4 24 40 00 	st  %g2, [ %l1 ]
   15fdc:	a0 04 20 01 	inc  %l0
   15fe0:	80 a4 20 3f 	cmp  %l0, 0x3f
   15fe4:	04 bf ff fd 	ble  15fd8 <validate_script+0x7c>
   15fe8:	a2 04 60 04 	add  %l1, 4, %l1
   15fec:	a4 04 a0 01 	inc  %l2
   15ff0:	c2 06 20 34 	ld  [ %i0 + 0x34 ], %g1
   15ff4:	80 a0 40 12 	cmp  %g1, %l2
   15ff8:	34 bf ff f8 	bg,a   15fd8 <validate_script+0x7c>
   15ffc:	a0 10 20 00 	clr  %l0
   16000:	10 80 00 10 	b  16040 <validate_script+0xe4>
   16004:	b6 10 20 01 	mov  1, %i3
   16008:	c0 26 20 dc 	clr  [ %i0 + 0xdc ]
   1600c:	a4 10 20 00 	clr  %l2
   16010:	c2 06 20 34 	ld  [ %i0 + 0x34 ], %g1
   16014:	80 a0 60 00 	cmp  %g1, 0
   16018:	04 80 00 09 	ble  1603c <validate_script+0xe0>
   1601c:	84 10 00 01 	mov  %g1, %g2
   16020:	86 07 bf f8 	add  %fp, -8, %g3
   16024:	83 2c a0 02 	sll  %l2, 2, %g1
   16028:	82 00 40 03 	add  %g1, %g3, %g1
   1602c:	a4 04 a0 01 	inc  %l2
   16030:	80 a0 80 12 	cmp  %g2, %l2
   16034:	14 bf ff fc 	bg  16024 <validate_script+0xc8>
   16038:	c0 20 7f d8 	clr  [ %g1 + -40 ]
   1603c:	b6 10 20 01 	mov  1, %i3
   16040:	c2 06 20 a0 	ld  [ %i0 + 0xa0 ], %g1
   16044:	80 a0 60 01 	cmp  %g1, 1
   16048:	26 80 01 03 	bl,a   16454 <validate_script+0x4f8>
   1604c:	c2 06 20 dc 	ld  [ %i0 + 0xdc ], %g1
   16050:	b2 10 20 0f 	mov  0xf, %i1
   16054:	fa 05 c0 00 	ld  [ %l7 ], %i5
   16058:	82 07 7f ff 	add  %i5, -1, %g1
   1605c:	80 a0 60 03 	cmp  %g1, 3
   16060:	08 80 00 0f 	bleu  1609c <validate_script+0x140>
   16064:	a4 10 20 00 	clr  %l2
   16068:	c4 06 00 00 	ld  [ %i0 ], %g2
   1606c:	82 10 20 18 	mov  0x18, %g1
   16070:	c2 20 a0 14 	st  %g1, [ %g2 + 0x14 ]
   16074:	c2 06 00 00 	ld  [ %i0 ], %g1
   16078:	fa 20 60 18 	st  %i5, [ %g1 + 0x18 ]
   1607c:	c4 06 00 00 	ld  [ %i0 ], %g2
   16080:	82 10 20 04 	mov  4, %g1
   16084:	c2 20 a0 1c 	st  %g1, [ %g2 + 0x1c ]
   16088:	c2 06 00 00 	ld  [ %i0 ], %g1
   1608c:	c2 00 40 00 	ld  [ %g1 ], %g1
   16090:	9f c0 40 00 	call  %g1
   16094:	90 10 00 18 	mov  %i0, %o0
   16098:	a4 10 20 00 	clr  %l2
   1609c:	80 a4 80 1d 	cmp  %l2, %i5
   160a0:	36 80 00 29 	bge,a   16144 <validate_script+0x1e8>
   160a4:	ec 05 e0 14 	ld  [ %l7 + 0x14 ], %l6
   160a8:	a2 10 20 11 	mov  0x11, %l1
   160ac:	83 2c a0 02 	sll  %l2, 2, %g1
   160b0:	82 00 40 17 	add  %g1, %l7, %g1
   160b4:	e0 00 60 04 	ld  [ %g1 + 4 ], %l0
   160b8:	80 a4 20 00 	cmp  %l0, 0
   160bc:	26 80 00 07 	bl,a   160d8 <validate_script+0x17c>
   160c0:	c2 06 00 00 	ld  [ %i0 ], %g1
   160c4:	c2 06 20 34 	ld  [ %i0 + 0x34 ], %g1
   160c8:	80 a0 40 10 	cmp  %g1, %l0
   160cc:	14 80 00 0b 	bg  160f8 <validate_script+0x19c>
   160d0:	80 a4 a0 00 	cmp  %l2, 0
   160d4:	c2 06 00 00 	ld  [ %i0 ], %g1
   160d8:	e2 20 60 14 	st  %l1, [ %g1 + 0x14 ]
   160dc:	c2 06 00 00 	ld  [ %i0 ], %g1
   160e0:	f6 20 60 18 	st  %i3, [ %g1 + 0x18 ]
   160e4:	c2 06 00 00 	ld  [ %i0 ], %g1
   160e8:	c2 00 40 00 	ld  [ %g1 ], %g1
   160ec:	9f c0 40 00 	call  %g1
   160f0:	90 10 00 18 	mov  %i0, %o0
   160f4:	80 a4 a0 00 	cmp  %l2, 0
   160f8:	04 80 00 0e 	ble  16130 <validate_script+0x1d4>
   160fc:	83 2c a0 02 	sll  %l2, 2, %g1
   16100:	c2 05 c0 01 	ld  [ %l7 + %g1 ], %g1
   16104:	80 a0 40 10 	cmp  %g1, %l0
   16108:	26 80 00 0b 	bl,a   16134 <validate_script+0x1d8>
   1610c:	a4 04 a0 01 	inc  %l2
   16110:	c2 06 00 00 	ld  [ %i0 ], %g1
   16114:	e2 20 60 14 	st  %l1, [ %g1 + 0x14 ]
   16118:	c2 06 00 00 	ld  [ %i0 ], %g1
   1611c:	f6 20 60 18 	st  %i3, [ %g1 + 0x18 ]
   16120:	c2 06 00 00 	ld  [ %i0 ], %g1
   16124:	c2 00 40 00 	ld  [ %g1 ], %g1
   16128:	9f c0 40 00 	call  %g1
   1612c:	90 10 00 18 	mov  %i0, %o0
   16130:	a4 04 a0 01 	inc  %l2
   16134:	80 a4 80 1d 	cmp  %l2, %i5
   16138:	06 bf ff de 	bl  160b0 <validate_script+0x154>
   1613c:	83 2c a0 02 	sll  %l2, 2, %g1
   16140:	ec 05 e0 14 	ld  [ %l7 + 0x14 ], %l6
   16144:	ea 05 e0 18 	ld  [ %l7 + 0x18 ], %l5
   16148:	e6 05 e0 1c 	ld  [ %l7 + 0x1c ], %l3
   1614c:	c2 06 20 dc 	ld  [ %i0 + 0xdc ], %g1
   16150:	80 a0 60 00 	cmp  %g1, 0
   16154:	02 80 00 89 	be  16378 <validate_script+0x41c>
   16158:	e8 05 e0 20 	ld  [ %l7 + 0x20 ], %l4
   1615c:	80 a5 a0 3f 	cmp  %l6, 0x3f
   16160:	18 80 00 03 	bgu  1616c <validate_script+0x210>
   16164:	84 10 20 01 	mov  1, %g2
   16168:	84 10 20 00 	clr  %g2
   1616c:	80 a5 40 16 	cmp  %l5, %l6
   16170:	06 80 00 03 	bl  1617c <validate_script+0x220>
   16174:	82 10 20 01 	mov  1, %g1
   16178:	82 10 20 00 	clr  %g1
   1617c:	80 90 80 01 	orcc  %g2, %g1, %g0
   16180:	12 80 00 14 	bne  161d0 <validate_script+0x274>
   16184:	80 a5 60 3f 	cmp  %l5, 0x3f
   16188:	14 80 00 03 	bg  16194 <validate_script+0x238>
   1618c:	84 10 20 01 	mov  1, %g2
   16190:	84 10 20 00 	clr  %g2
   16194:	83 34 e0 1f 	srl  %l3, 0x1f, %g1
   16198:	80 90 80 01 	orcc  %g2, %g1, %g0
   1619c:	32 80 00 0e 	bne,a   161d4 <validate_script+0x278>
   161a0:	c2 06 00 00 	ld  [ %i0 ], %g1
   161a4:	80 a4 e0 0d 	cmp  %l3, 0xd
   161a8:	14 80 00 03 	bg  161b4 <validate_script+0x258>
   161ac:	84 10 20 01 	mov  1, %g2
   161b0:	84 10 20 00 	clr  %g2
   161b4:	83 35 20 1f 	srl  %l4, 0x1f, %g1
   161b8:	80 90 80 01 	orcc  %g2, %g1, %g0
   161bc:	32 80 00 06 	bne,a   161d4 <validate_script+0x278>
   161c0:	c2 06 00 00 	ld  [ %i0 ], %g1
   161c4:	80 a5 20 0d 	cmp  %l4, 0xd
   161c8:	04 80 00 0b 	ble  161f4 <validate_script+0x298>
   161cc:	80 a5 a0 00 	cmp  %l6, 0
   161d0:	c2 06 00 00 	ld  [ %i0 ], %g1
   161d4:	f2 20 60 14 	st  %i1, [ %g1 + 0x14 ]
   161d8:	c2 06 00 00 	ld  [ %i0 ], %g1
   161dc:	f6 20 60 18 	st  %i3, [ %g1 + 0x18 ]
   161e0:	c2 06 00 00 	ld  [ %i0 ], %g1
   161e4:	c2 00 40 00 	ld  [ %g1 ], %g1
   161e8:	9f c0 40 00 	call  %g1
   161ec:	90 10 00 18 	mov  %i0, %o0
   161f0:	80 a5 a0 00 	cmp  %l6, 0
   161f4:	12 80 00 0f 	bne  16230 <validate_script+0x2d4>
   161f8:	80 a7 60 01 	cmp  %i5, 1
   161fc:	80 a5 60 00 	cmp  %l5, 0
   16200:	22 80 00 17 	be,a   1625c <validate_script+0x300>
   16204:	a4 10 20 00 	clr  %l2
   16208:	c2 06 00 00 	ld  [ %i0 ], %g1
   1620c:	f2 20 60 14 	st  %i1, [ %g1 + 0x14 ]
   16210:	c2 06 00 00 	ld  [ %i0 ], %g1
   16214:	f6 20 60 18 	st  %i3, [ %g1 + 0x18 ]
   16218:	c2 06 00 00 	ld  [ %i0 ], %g1
   1621c:	c2 00 40 00 	ld  [ %g1 ], %g1
   16220:	9f c0 40 00 	call  %g1
   16224:	90 10 00 18 	mov  %i0, %o0
   16228:	10 80 00 0d 	b  1625c <validate_script+0x300>
   1622c:	a4 10 20 00 	clr  %l2
   16230:	02 80 00 0b 	be  1625c <validate_script+0x300>
   16234:	a4 10 20 00 	clr  %l2
   16238:	c2 06 00 00 	ld  [ %i0 ], %g1
   1623c:	f2 20 60 14 	st  %i1, [ %g1 + 0x14 ]
   16240:	c2 06 00 00 	ld  [ %i0 ], %g1
   16244:	f6 20 60 18 	st  %i3, [ %g1 + 0x18 ]
   16248:	c2 06 00 00 	ld  [ %i0 ], %g1
   1624c:	c2 00 40 00 	ld  [ %g1 ], %g1
   16250:	9f c0 40 00 	call  %g1
   16254:	90 10 00 18 	mov  %i0, %o0
   16258:	a4 10 20 00 	clr  %l2
   1625c:	80 a4 80 1d 	cmp  %l2, %i5
   16260:	16 80 00 76 	bge  16438 <validate_script+0x4dc>
   16264:	b4 07 b5 d0 	add  %fp, -2608, %i2
   16268:	83 2c a0 02 	sll  %l2, 2, %g1
   1626c:	82 00 40 17 	add  %g1, %l7, %g1
   16270:	c2 00 60 04 	ld  [ %g1 + 4 ], %g1
   16274:	83 28 60 08 	sll  %g1, 8, %g1
   16278:	80 a5 a0 00 	cmp  %l6, 0
   1627c:	02 80 00 0e 	be  162b4 <validate_script+0x358>
   16280:	a2 06 80 01 	add  %i2, %g1, %l1
   16284:	c2 06 80 01 	ld  [ %i2 + %g1 ], %g1
   16288:	80 a0 60 00 	cmp  %g1, 0
   1628c:	16 80 00 0b 	bge  162b8 <validate_script+0x35c>
   16290:	80 a5 80 15 	cmp  %l6, %l5
   16294:	c2 06 00 00 	ld  [ %i0 ], %g1
   16298:	f2 20 60 14 	st  %i1, [ %g1 + 0x14 ]
   1629c:	c2 06 00 00 	ld  [ %i0 ], %g1
   162a0:	f6 20 60 18 	st  %i3, [ %g1 + 0x18 ]
   162a4:	c2 06 00 00 	ld  [ %i0 ], %g1
   162a8:	c2 00 40 00 	ld  [ %g1 ], %g1
   162ac:	9f c0 40 00 	call  %g1
   162b0:	90 10 00 18 	mov  %i0, %o0
   162b4:	80 a5 80 15 	cmp  %l6, %l5
   162b8:	14 80 00 2a 	bg  16360 <validate_script+0x404>
   162bc:	a0 10 00 16 	mov  %l6, %l0
   162c0:	b8 10 20 0f 	mov  0xf, %i4
   162c4:	83 2c 20 02 	sll  %l0, 2, %g1
   162c8:	c2 04 40 01 	ld  [ %l1 + %g1 ], %g1
   162cc:	80 a0 60 00 	cmp  %g1, 0
   162d0:	16 80 00 0f 	bge  1630c <validate_script+0x3b0>
   162d4:	83 2c 20 02 	sll  %l0, 2, %g1
   162d8:	80 a4 e0 00 	cmp  %l3, 0
   162dc:	22 80 00 1e 	be,a   16354 <validate_script+0x3f8>
   162e0:	a0 04 20 01 	inc  %l0
   162e4:	c2 06 00 00 	ld  [ %i0 ], %g1
   162e8:	f8 20 60 14 	st  %i4, [ %g1 + 0x14 ]
   162ec:	c2 06 00 00 	ld  [ %i0 ], %g1
   162f0:	f6 20 60 18 	st  %i3, [ %g1 + 0x18 ]
   162f4:	c2 06 00 00 	ld  [ %i0 ], %g1
   162f8:	c2 00 40 00 	ld  [ %g1 ], %g1
   162fc:	9f c0 40 00 	call  %g1
   16300:	90 10 00 18 	mov  %i0, %o0
   16304:	10 80 00 13 	b  16350 <validate_script+0x3f4>
   16308:	83 2c 20 02 	sll  %l0, 2, %g1
   1630c:	c2 04 40 01 	ld  [ %l1 + %g1 ], %g1
   16310:	80 a0 40 13 	cmp  %g1, %l3
   16314:	32 80 00 07 	bne,a   16330 <validate_script+0x3d4>
   16318:	c2 06 00 00 	ld  [ %i0 ], %g1
   1631c:	82 04 ff ff 	add  %l3, -1, %g1
   16320:	80 a0 40 14 	cmp  %g1, %l4
   16324:	02 80 00 0b 	be  16350 <validate_script+0x3f4>
   16328:	83 2c 20 02 	sll  %l0, 2, %g1
   1632c:	c2 06 00 00 	ld  [ %i0 ], %g1
   16330:	f8 20 60 14 	st  %i4, [ %g1 + 0x14 ]
   16334:	c2 06 00 00 	ld  [ %i0 ], %g1
   16338:	f6 20 60 18 	st  %i3, [ %g1 + 0x18 ]
   1633c:	c2 06 00 00 	ld  [ %i0 ], %g1
   16340:	c2 00 40 00 	ld  [ %g1 ], %g1
   16344:	9f c0 40 00 	call  %g1
   16348:	90 10 00 18 	mov  %i0, %o0
   1634c:	83 2c 20 02 	sll  %l0, 2, %g1
   16350:	a0 04 20 01 	inc  %l0
   16354:	80 a4 00 15 	cmp  %l0, %l5
   16358:	04 bf ff db 	ble  162c4 <validate_script+0x368>
   1635c:	e8 24 40 01 	st  %l4, [ %l1 + %g1 ]
   16360:	a4 04 a0 01 	inc  %l2
   16364:	80 a4 80 1d 	cmp  %l2, %i5
   16368:	06 bf ff c1 	bl  1626c <validate_script+0x310>
   1636c:	83 2c a0 02 	sll  %l2, 2, %g1
   16370:	10 80 00 33 	b  1643c <validate_script+0x4e0>
   16374:	ae 05 e0 24 	add  %l7, 0x24, %l7
   16378:	80 a0 00 16 	cmp  %g0, %l6
   1637c:	82 40 20 00 	addx  %g0, 0, %g1
   16380:	84 1d 60 3f 	xor  %l5, 0x3f, %g2
   16384:	80 a0 00 02 	cmp  %g0, %g2
   16388:	84 40 20 00 	addx  %g0, 0, %g2
   1638c:	80 90 40 02 	orcc  %g1, %g2, %g0
   16390:	12 80 00 04 	bne  163a0 <validate_script+0x444>
   16394:	80 94 c0 14 	orcc  %l3, %l4, %g0
   16398:	02 80 00 0b 	be  163c4 <validate_script+0x468>
   1639c:	a4 10 20 00 	clr  %l2
   163a0:	c2 06 00 00 	ld  [ %i0 ], %g1
   163a4:	f2 20 60 14 	st  %i1, [ %g1 + 0x14 ]
   163a8:	c2 06 00 00 	ld  [ %i0 ], %g1
   163ac:	f6 20 60 18 	st  %i3, [ %g1 + 0x18 ]
   163b0:	c2 06 00 00 	ld  [ %i0 ], %g1
   163b4:	c2 00 40 00 	ld  [ %g1 ], %g1
   163b8:	9f c0 40 00 	call  %g1
   163bc:	90 10 00 18 	mov  %i0, %o0
   163c0:	a4 10 20 00 	clr  %l2
   163c4:	80 a4 80 1d 	cmp  %l2, %i5
   163c8:	36 80 00 1d 	bge,a   1643c <validate_script+0x4e0>
   163cc:	ae 05 e0 24 	add  %l7, 0x24, %l7
   163d0:	a2 07 bf f8 	add  %fp, -8, %l1
   163d4:	83 2c a0 02 	sll  %l2, 2, %g1
   163d8:	82 00 40 17 	add  %g1, %l7, %g1
   163dc:	e0 00 60 04 	ld  [ %g1 + 4 ], %l0
   163e0:	83 2c 20 02 	sll  %l0, 2, %g1
   163e4:	82 00 40 11 	add  %g1, %l1, %g1
   163e8:	c2 00 7f d8 	ld  [ %g1 + -40 ], %g1
   163ec:	80 a0 60 00 	cmp  %g1, 0
   163f0:	02 80 00 0c 	be  16420 <validate_script+0x4c4>
   163f4:	83 2c 20 02 	sll  %l0, 2, %g1
   163f8:	c4 06 00 00 	ld  [ %i0 ], %g2
   163fc:	82 10 20 11 	mov  0x11, %g1
   16400:	c2 20 a0 14 	st  %g1, [ %g2 + 0x14 ]
   16404:	c2 06 00 00 	ld  [ %i0 ], %g1
   16408:	f6 20 60 18 	st  %i3, [ %g1 + 0x18 ]
   1640c:	c2 06 00 00 	ld  [ %i0 ], %g1
   16410:	c2 00 40 00 	ld  [ %g1 ], %g1
   16414:	9f c0 40 00 	call  %g1
   16418:	90 10 00 18 	mov  %i0, %o0
   1641c:	83 2c 20 02 	sll  %l0, 2, %g1
   16420:	82 00 40 11 	add  %g1, %l1, %g1
   16424:	84 10 20 01 	mov  1, %g2
   16428:	a4 04 a0 01 	inc  %l2
   1642c:	80 a4 80 1d 	cmp  %l2, %i5
   16430:	06 bf ff e9 	bl  163d4 <validate_script+0x478>
   16434:	c4 20 7f d8 	st  %g2, [ %g1 + -40 ]
   16438:	ae 05 e0 24 	add  %l7, 0x24, %l7
   1643c:	b6 06 e0 01 	inc  %i3
   16440:	c2 06 20 a0 	ld  [ %i0 + 0xa0 ], %g1
   16444:	80 a0 40 1b 	cmp  %g1, %i3
   16448:	36 bf ff 04 	bge,a   16058 <validate_script+0xfc>
   1644c:	fa 05 c0 00 	ld  [ %l7 ], %i5
   16450:	c2 06 20 dc 	ld  [ %i0 + 0xdc ], %g1
   16454:	80 a0 60 00 	cmp  %g1, 0
   16458:	02 80 00 19 	be  164bc <validate_script+0x560>
   1645c:	c2 06 20 34 	ld  [ %i0 + 0x34 ], %g1
   16460:	80 a0 60 00 	cmp  %g1, 0
   16464:	04 80 00 2c 	ble  16514 <validate_script+0x5b8>
   16468:	a4 10 20 00 	clr  %l2
   1646c:	a0 07 bf f8 	add  %fp, -8, %l0
   16470:	a2 10 20 2c 	mov  0x2c, %l1
   16474:	83 2c a0 08 	sll  %l2, 8, %g1
   16478:	82 00 40 10 	add  %g1, %l0, %g1
   1647c:	c2 00 75 d8 	ld  [ %g1 + -2600 ], %g1
   16480:	80 a0 60 00 	cmp  %g1, 0
   16484:	36 80 00 09 	bge,a   164a8 <validate_script+0x54c>
   16488:	a4 04 a0 01 	inc  %l2
   1648c:	c2 06 00 00 	ld  [ %i0 ], %g1
   16490:	e2 20 60 14 	st  %l1, [ %g1 + 0x14 ]
   16494:	c2 06 00 00 	ld  [ %i0 ], %g1
   16498:	c2 00 40 00 	ld  [ %g1 ], %g1
   1649c:	9f c0 40 00 	call  %g1
   164a0:	90 10 00 18 	mov  %i0, %o0
   164a4:	a4 04 a0 01 	inc  %l2
   164a8:	c2 06 20 34 	ld  [ %i0 + 0x34 ], %g1
   164ac:	80 a0 40 12 	cmp  %g1, %l2
   164b0:	14 bf ff f2 	bg  16478 <validate_script+0x51c>
   164b4:	83 2c a0 08 	sll  %l2, 8, %g1
   164b8:	30 80 00 17 	b,a   16514 <validate_script+0x5b8>
   164bc:	80 a0 60 00 	cmp  %g1, 0
   164c0:	04 80 00 15 	ble  16514 <validate_script+0x5b8>
   164c4:	a4 10 20 00 	clr  %l2
   164c8:	a0 07 bf f8 	add  %fp, -8, %l0
   164cc:	a2 10 20 2c 	mov  0x2c, %l1
   164d0:	83 2c a0 02 	sll  %l2, 2, %g1
   164d4:	82 00 40 10 	add  %g1, %l0, %g1
   164d8:	c2 00 7f d8 	ld  [ %g1 + -40 ], %g1
   164dc:	80 a0 60 00 	cmp  %g1, 0
   164e0:	32 80 00 09 	bne,a   16504 <validate_script+0x5a8>
   164e4:	a4 04 a0 01 	inc  %l2
   164e8:	c2 06 00 00 	ld  [ %i0 ], %g1
   164ec:	e2 20 60 14 	st  %l1, [ %g1 + 0x14 ]
   164f0:	c2 06 00 00 	ld  [ %i0 ], %g1
   164f4:	c2 00 40 00 	ld  [ %g1 ], %g1
   164f8:	9f c0 40 00 	call  %g1
   164fc:	90 10 00 18 	mov  %i0, %o0
   16500:	a4 04 a0 01 	inc  %l2
   16504:	c2 06 20 34 	ld  [ %i0 + 0x34 ], %g1
   16508:	80 a0 40 12 	cmp  %g1, %l2
   1650c:	14 bf ff f2 	bg  164d4 <validate_script+0x578>
   16510:	83 2c a0 02 	sll  %l2, 2, %g1
   16514:	81 c7 e0 08 	ret 
   16518:	81 e8 00 00 	restore 

0001651c <select_scan_parameters>:
   1651c:	9d e3 bf 98 	save  %sp, -104, %sp
   16520:	da 06 20 a4 	ld  [ %i0 + 0xa4 ], %o5
   16524:	80 a3 60 00 	cmp  %o5, 0
   16528:	22 80 00 24 	be,a   165b8 <select_scan_parameters+0x9c>
   1652c:	c2 06 20 34 	ld  [ %i0 + 0x34 ], %g1
   16530:	c2 06 21 44 	ld  [ %i0 + 0x144 ], %g1
   16534:	c4 00 60 20 	ld  [ %g1 + 0x20 ], %g2
   16538:	83 28 a0 03 	sll  %g2, 3, %g1
   1653c:	82 00 40 02 	add  %g1, %g2, %g1
   16540:	83 28 60 02 	sll  %g1, 2, %g1
   16544:	88 00 40 0d 	add  %g1, %o5, %g4
   16548:	c4 00 40 0d 	ld  [ %g1 + %o5 ], %g2
   1654c:	c4 26 20 ec 	st  %g2, [ %i0 + 0xec ]
   16550:	c2 00 40 0d 	ld  [ %g1 + %o5 ], %g1
   16554:	80 a0 60 00 	cmp  %g1, 0
   16558:	04 80 00 0f 	ble  16594 <select_scan_parameters+0x78>
   1655c:	86 10 20 00 	clr  %g3
   16560:	da 06 20 3c 	ld  [ %i0 + 0x3c ], %o5
   16564:	83 28 e0 02 	sll  %g3, 2, %g1
   16568:	84 00 40 18 	add  %g1, %i0, %g2
   1656c:	82 00 40 04 	add  %g1, %g4, %g1
   16570:	c2 00 60 04 	ld  [ %g1 + 4 ], %g1
   16574:	82 58 60 54 	smul  %g1, 0x54, %g1
   16578:	82 00 40 0d 	add  %g1, %o5, %g1
   1657c:	c2 20 a0 f0 	st  %g1, [ %g2 + 0xf0 ]
   16580:	86 00 e0 01 	inc  %g3
   16584:	c2 01 00 00 	ld  [ %g4 ], %g1
   16588:	80 a0 40 03 	cmp  %g1, %g3
   1658c:	14 bf ff f7 	bg  16568 <select_scan_parameters+0x4c>
   16590:	83 28 e0 02 	sll  %g3, 2, %g1
   16594:	c2 01 20 14 	ld  [ %g4 + 0x14 ], %g1
   16598:	c2 26 21 34 	st  %g1, [ %i0 + 0x134 ]
   1659c:	c2 01 20 18 	ld  [ %g4 + 0x18 ], %g1
   165a0:	c2 26 21 38 	st  %g1, [ %i0 + 0x138 ]
   165a4:	c2 01 20 1c 	ld  [ %g4 + 0x1c ], %g1
   165a8:	c2 26 21 3c 	st  %g1, [ %i0 + 0x13c ]
   165ac:	c2 01 20 20 	ld  [ %g4 + 0x20 ], %g1
   165b0:	10 80 00 26 	b  16648 <select_scan_parameters+0x12c>
   165b4:	c2 26 21 40 	st  %g1, [ %i0 + 0x140 ]
   165b8:	80 a0 60 04 	cmp  %g1, 4
   165bc:	24 80 00 10 	ble,a   165fc <select_scan_parameters+0xe0>
   165c0:	c2 06 20 34 	ld  [ %i0 + 0x34 ], %g1
   165c4:	c4 06 00 00 	ld  [ %i0 ], %g2
   165c8:	82 10 20 18 	mov  0x18, %g1
   165cc:	c2 20 a0 14 	st  %g1, [ %g2 + 0x14 ]
   165d0:	c4 06 00 00 	ld  [ %i0 ], %g2
   165d4:	c2 06 20 34 	ld  [ %i0 + 0x34 ], %g1
   165d8:	c2 20 a0 18 	st  %g1, [ %g2 + 0x18 ]
   165dc:	c4 06 00 00 	ld  [ %i0 ], %g2
   165e0:	82 10 20 04 	mov  4, %g1
   165e4:	c2 20 a0 1c 	st  %g1, [ %g2 + 0x1c ]
   165e8:	c2 06 00 00 	ld  [ %i0 ], %g1
   165ec:	c2 00 40 00 	ld  [ %g1 ], %g1
   165f0:	9f c0 40 00 	call  %g1
   165f4:	90 10 00 18 	mov  %i0, %o0
   165f8:	c2 06 20 34 	ld  [ %i0 + 0x34 ], %g1
   165fc:	c2 26 20 ec 	st  %g1, [ %i0 + 0xec ]
   16600:	80 a0 60 00 	cmp  %g1, 0
   16604:	04 80 00 0c 	ble  16634 <select_scan_parameters+0x118>
   16608:	86 10 20 00 	clr  %g3
   1660c:	da 06 20 3c 	ld  [ %i0 + 0x3c ], %o5
   16610:	88 10 00 01 	mov  %g1, %g4
   16614:	85 28 e0 02 	sll  %g3, 2, %g2
   16618:	84 00 80 18 	add  %g2, %i0, %g2
   1661c:	82 58 e0 54 	smul  %g3, 0x54, %g1
   16620:	82 00 40 0d 	add  %g1, %o5, %g1
   16624:	86 00 e0 01 	inc  %g3
   16628:	80 a1 00 03 	cmp  %g4, %g3
   1662c:	14 bf ff fa 	bg  16614 <select_scan_parameters+0xf8>
   16630:	c2 20 a0 f0 	st  %g1, [ %g2 + 0xf0 ]
   16634:	c0 26 21 34 	clr  [ %i0 + 0x134 ]
   16638:	82 10 20 3f 	mov  0x3f, %g1
   1663c:	c2 26 21 38 	st  %g1, [ %i0 + 0x138 ]
   16640:	c0 26 21 3c 	clr  [ %i0 + 0x13c ]
   16644:	c0 26 21 40 	clr  [ %i0 + 0x140 ]
   16648:	81 c7 e0 08 	ret 
   1664c:	81 e8 00 00 	restore 

00016650 <per_scan_setup>:
   16650:	9d e3 bf 98 	save  %sp, -104, %sp
   16654:	c4 06 20 ec 	ld  [ %i0 + 0xec ], %g2
   16658:	80 a0 a0 01 	cmp  %g2, 1
   1665c:	32 80 00 1d 	bne,a   166d0 <per_scan_setup+0x80>
   16660:	c2 06 20 ec 	ld  [ %i0 + 0xec ], %g1
   16664:	c6 06 20 f0 	ld  [ %i0 + 0xf0 ], %g3
   16668:	c2 00 e0 1c 	ld  [ %g3 + 0x1c ], %g1
   1666c:	c2 26 21 00 	st  %g1, [ %i0 + 0x100 ]
   16670:	c2 00 e0 20 	ld  [ %g3 + 0x20 ], %g1
   16674:	c2 26 21 04 	st  %g1, [ %i0 + 0x104 ]
   16678:	c4 20 e0 34 	st  %g2, [ %g3 + 0x34 ]
   1667c:	c4 20 e0 38 	st  %g2, [ %g3 + 0x38 ]
   16680:	c4 20 e0 3c 	st  %g2, [ %g3 + 0x3c ]
   16684:	82 10 20 08 	mov  8, %g1
   16688:	c2 20 e0 40 	st  %g1, [ %g3 + 0x40 ]
   1668c:	c4 20 e0 44 	st  %g2, [ %g3 + 0x44 ]
   16690:	c4 00 e0 20 	ld  [ %g3 + 0x20 ], %g2
   16694:	81 80 00 00 	mov  %g0, %y
   16698:	c2 00 e0 0c 	ld  [ %g3 + 0xc ], %g1
   1669c:	01 00 00 00 	nop 
   166a0:	01 00 00 00 	nop 
   166a4:	82 70 80 01 	udiv  %g2, %g1, %g1
   166a8:	c8 00 e0 0c 	ld  [ %g3 + 0xc ], %g4
   166ac:	82 58 40 04 	smul  %g1, %g4, %g1
   166b0:	84 a0 80 01 	subcc  %g2, %g1, %g2
   166b4:	22 80 00 02 	be,a   166bc <per_scan_setup+0x6c>
   166b8:	84 10 00 04 	mov  %g4, %g2
   166bc:	c4 20 e0 48 	st  %g2, [ %g3 + 0x48 ]
   166c0:	82 10 20 01 	mov  1, %g1
   166c4:	c2 26 21 08 	st  %g1, [ %i0 + 0x108 ]
   166c8:	10 80 00 65 	b  1685c <per_scan_setup+0x20c>
   166cc:	c0 26 21 0c 	clr  [ %i0 + 0x10c ]
   166d0:	82 00 7f ff 	add  %g1, -1, %g1
   166d4:	80 a0 60 03 	cmp  %g1, 3
   166d8:	28 80 00 10 	bleu,a   16718 <per_scan_setup+0xc8>
   166dc:	d2 06 20 e0 	ld  [ %i0 + 0xe0 ], %o1
   166e0:	c4 06 00 00 	ld  [ %i0 ], %g2
   166e4:	82 10 20 18 	mov  0x18, %g1
   166e8:	c2 20 a0 14 	st  %g1, [ %g2 + 0x14 ]
   166ec:	c4 06 00 00 	ld  [ %i0 ], %g2
   166f0:	c2 06 20 ec 	ld  [ %i0 + 0xec ], %g1
   166f4:	c2 20 a0 18 	st  %g1, [ %g2 + 0x18 ]
   166f8:	c4 06 00 00 	ld  [ %i0 ], %g2
   166fc:	82 10 20 04 	mov  4, %g1
   16700:	c2 20 a0 1c 	st  %g1, [ %g2 + 0x1c ]
   16704:	c2 06 00 00 	ld  [ %i0 ], %g1
   16708:	c2 00 40 00 	ld  [ %g1 ], %g1
   1670c:	9f c0 40 00 	call  %g1
   16710:	90 10 00 18 	mov  %i0, %o0
   16714:	d2 06 20 e0 	ld  [ %i0 + 0xe0 ], %o1
   16718:	d0 06 20 18 	ld  [ %i0 + 0x18 ], %o0
   1671c:	40 00 1d a8 	call  1ddbc <jdiv_round_up>
   16720:	93 2a 60 03 	sll  %o1, 3, %o1
   16724:	d0 26 21 00 	st  %o0, [ %i0 + 0x100 ]
   16728:	d2 06 20 e4 	ld  [ %i0 + 0xe4 ], %o1
   1672c:	d0 06 20 1c 	ld  [ %i0 + 0x1c ], %o0
   16730:	40 00 1d a3 	call  1ddbc <jdiv_round_up>
   16734:	93 2a 60 03 	sll  %o1, 3, %o1
   16738:	d0 26 21 04 	st  %o0, [ %i0 + 0x104 ]
   1673c:	c0 26 21 08 	clr  [ %i0 + 0x108 ]
   16740:	c2 06 20 ec 	ld  [ %i0 + 0xec ], %g1
   16744:	80 a0 60 00 	cmp  %g1, 0
   16748:	04 80 00 45 	ble  1685c <per_scan_setup+0x20c>
   1674c:	a2 10 20 00 	clr  %l1
   16750:	83 2c 60 02 	sll  %l1, 2, %g1
   16754:	82 00 40 18 	add  %g1, %i0, %g1
   16758:	c6 00 60 f0 	ld  [ %g1 + 0xf0 ], %g3
   1675c:	c8 00 e0 08 	ld  [ %g3 + 8 ], %g4
   16760:	c8 20 e0 34 	st  %g4, [ %g3 + 0x34 ]
   16764:	c2 00 e0 0c 	ld  [ %g3 + 0xc ], %g1
   16768:	c2 20 e0 38 	st  %g1, [ %g3 + 0x38 ]
   1676c:	82 59 00 01 	smul  %g4, %g1, %g1
   16770:	c2 20 e0 3c 	st  %g1, [ %g3 + 0x3c ]
   16774:	83 29 20 03 	sll  %g4, 3, %g1
   16778:	c2 20 e0 40 	st  %g1, [ %g3 + 0x40 ]
   1677c:	c4 00 e0 1c 	ld  [ %g3 + 0x1c ], %g2
   16780:	81 80 00 00 	mov  %g0, %y
   16784:	01 00 00 00 	nop 
   16788:	01 00 00 00 	nop 
   1678c:	01 00 00 00 	nop 
   16790:	82 70 80 04 	udiv  %g2, %g4, %g1
   16794:	82 58 40 04 	smul  %g1, %g4, %g1
   16798:	84 a0 80 01 	subcc  %g2, %g1, %g2
   1679c:	22 80 00 02 	be,a   167a4 <per_scan_setup+0x154>
   167a0:	84 10 00 04 	mov  %g4, %g2
   167a4:	c4 20 e0 44 	st  %g2, [ %g3 + 0x44 ]
   167a8:	c4 00 e0 20 	ld  [ %g3 + 0x20 ], %g2
   167ac:	81 80 00 00 	mov  %g0, %y
   167b0:	c2 00 e0 38 	ld  [ %g3 + 0x38 ], %g1
   167b4:	01 00 00 00 	nop 
   167b8:	01 00 00 00 	nop 
   167bc:	82 70 80 01 	udiv  %g2, %g1, %g1
   167c0:	c8 00 e0 38 	ld  [ %g3 + 0x38 ], %g4
   167c4:	82 58 40 04 	smul  %g1, %g4, %g1
   167c8:	84 a0 80 01 	subcc  %g2, %g1, %g2
   167cc:	22 80 00 02 	be,a   167d4 <per_scan_setup+0x184>
   167d0:	84 10 00 04 	mov  %g4, %g2
   167d4:	c4 20 e0 48 	st  %g2, [ %g3 + 0x48 ]
   167d8:	e0 00 e0 3c 	ld  [ %g3 + 0x3c ], %l0
   167dc:	c2 06 21 08 	ld  [ %i0 + 0x108 ], %g1
   167e0:	82 04 00 01 	add  %l0, %g1, %g1
   167e4:	80 a0 60 0a 	cmp  %g1, 0xa
   167e8:	04 80 00 0a 	ble  16810 <per_scan_setup+0x1c0>
   167ec:	82 10 00 10 	mov  %l0, %g1
   167f0:	c4 06 00 00 	ld  [ %i0 ], %g2
   167f4:	82 10 20 0b 	mov  0xb, %g1
   167f8:	c2 20 a0 14 	st  %g1, [ %g2 + 0x14 ]
   167fc:	c2 06 00 00 	ld  [ %i0 ], %g1
   16800:	c2 00 40 00 	ld  [ %g1 ], %g1
   16804:	9f c0 40 00 	call  %g1
   16808:	90 10 00 18 	mov  %i0, %o0
   1680c:	82 10 00 10 	mov  %l0, %g1
   16810:	80 a0 60 00 	cmp  %g1, 0
   16814:	04 80 00 0d 	ble  16848 <per_scan_setup+0x1f8>
   16818:	a0 04 3f ff 	add  %l0, -1, %l0
   1681c:	c4 06 21 08 	ld  [ %i0 + 0x108 ], %g2
   16820:	82 10 00 02 	mov  %g2, %g1
   16824:	85 28 a0 02 	sll  %g2, 2, %g2
   16828:	84 00 80 18 	add  %g2, %i0, %g2
   1682c:	e2 20 a1 0c 	st  %l1, [ %g2 + 0x10c ]
   16830:	84 00 60 01 	add  %g1, 1, %g2
   16834:	82 10 00 10 	mov  %l0, %g1
   16838:	80 a0 60 00 	cmp  %g1, 0
   1683c:	14 bf ff f9 	bg  16820 <per_scan_setup+0x1d0>
   16840:	a0 04 3f ff 	add  %l0, -1, %l0
   16844:	c4 26 21 08 	st  %g2, [ %i0 + 0x108 ]
   16848:	a2 04 60 01 	inc  %l1
   1684c:	c2 06 20 ec 	ld  [ %i0 + 0xec ], %g1
   16850:	80 a0 40 11 	cmp  %g1, %l1
   16854:	14 bf ff c0 	bg  16754 <per_scan_setup+0x104>
   16858:	83 2c 60 02 	sll  %l1, 2, %g1
   1685c:	c4 06 20 c4 	ld  [ %i0 + 0xc4 ], %g2
   16860:	80 a0 a0 00 	cmp  %g2, 0
   16864:	04 80 00 0a 	ble  1688c <per_scan_setup+0x23c>
   16868:	01 00 00 00 	nop 
   1686c:	c2 06 21 00 	ld  [ %i0 + 0x100 ], %g1
   16870:	84 58 80 01 	smul  %g2, %g1, %g2
   16874:	03 00 00 3f 	sethi  %hi(0xfc00), %g1
   16878:	82 10 63 ff 	or  %g1, 0x3ff, %g1	! ffff <_init-0x6d1>
   1687c:	80 a0 80 01 	cmp  %g2, %g1
   16880:	34 80 00 02 	bg,a   16888 <per_scan_setup+0x238>
   16884:	84 10 00 01 	mov  %g1, %g2
   16888:	c4 26 20 c0 	st  %g2, [ %i0 + 0xc0 ]
   1688c:	81 c7 e0 08 	ret 
   16890:	81 e8 00 00 	restore 

00016894 <prepare_for_pass>:
   16894:	9d e3 bf 98 	save  %sp, -104, %sp
   16898:	e0 06 21 44 	ld  [ %i0 + 0x144 ], %l0
   1689c:	c2 04 20 14 	ld  [ %l0 + 0x14 ], %g1
   168a0:	80 a0 60 01 	cmp  %g1, 1
   168a4:	02 80 00 3c 	be  16994 <prepare_for_pass+0x100>
   168a8:	01 00 00 00 	nop 
   168ac:	0a 80 00 06 	bcs  168c4 <prepare_for_pass+0x30>
   168b0:	80 a0 60 02 	cmp  %g1, 2
   168b4:	22 80 00 59 	be,a   16a18 <prepare_for_pass+0x184>
   168b8:	c2 06 20 b0 	ld  [ %i0 + 0xb0 ], %g1
   168bc:	10 80 00 75 	b  16a90 <prepare_for_pass+0x1fc>
   168c0:	c4 06 00 00 	ld  [ %i0 ], %g2
   168c4:	7f ff ff 16 	call  1651c <select_scan_parameters>
   168c8:	90 10 00 18 	mov  %i0, %o0
   168cc:	7f ff ff 61 	call  16650 <per_scan_setup>
   168d0:	90 10 00 18 	mov  %i0, %o0
   168d4:	c2 06 20 a8 	ld  [ %i0 + 0xa8 ], %g1
   168d8:	80 a0 60 00 	cmp  %g1, 0
   168dc:	32 80 00 10 	bne,a   1691c <prepare_for_pass+0x88>
   168e0:	c2 06 21 60 	ld  [ %i0 + 0x160 ], %g1
   168e4:	c2 06 21 58 	ld  [ %i0 + 0x158 ], %g1
   168e8:	c2 00 40 00 	ld  [ %g1 ], %g1
   168ec:	9f c0 40 00 	call  %g1
   168f0:	90 10 00 18 	mov  %i0, %o0
   168f4:	c2 06 21 5c 	ld  [ %i0 + 0x15c ], %g1
   168f8:	c2 00 40 00 	ld  [ %g1 ], %g1
   168fc:	9f c0 40 00 	call  %g1
   16900:	90 10 00 18 	mov  %i0, %o0
   16904:	c2 06 21 4c 	ld  [ %i0 + 0x14c ], %g1
   16908:	c2 00 40 00 	ld  [ %g1 ], %g1
   1690c:	90 10 00 18 	mov  %i0, %o0
   16910:	9f c0 40 00 	call  %g1
   16914:	92 10 20 00 	clr  %o1
   16918:	c2 06 21 60 	ld  [ %i0 + 0x160 ], %g1
   1691c:	c2 00 40 00 	ld  [ %g1 ], %g1
   16920:	9f c0 40 00 	call  %g1
   16924:	90 10 00 18 	mov  %i0, %o0
   16928:	c2 06 21 64 	ld  [ %i0 + 0x164 ], %g1
   1692c:	c2 00 40 00 	ld  [ %g1 ], %g1
   16930:	90 10 00 18 	mov  %i0, %o0
   16934:	9f c0 40 00 	call  %g1
   16938:	d2 06 20 b0 	ld  [ %i0 + 0xb0 ], %o1
   1693c:	c4 06 21 50 	ld  [ %i0 + 0x150 ], %g2
   16940:	c2 04 20 1c 	ld  [ %l0 + 0x1c ], %g1
   16944:	80 a0 60 01 	cmp  %g1, 1
   16948:	14 80 00 03 	bg  16954 <prepare_for_pass+0xc0>
   1694c:	92 10 20 03 	mov  3, %o1
   16950:	92 10 20 00 	clr  %o1
   16954:	c2 00 80 00 	ld  [ %g2 ], %g1
   16958:	9f c0 40 00 	call  %g1
   1695c:	90 10 00 18 	mov  %i0, %o0
   16960:	c2 06 21 48 	ld  [ %i0 + 0x148 ], %g1
   16964:	c2 00 40 00 	ld  [ %g1 ], %g1
   16968:	90 10 00 18 	mov  %i0, %o0
   1696c:	9f c0 40 00 	call  %g1
   16970:	92 10 20 00 	clr  %o1
   16974:	c2 06 20 b0 	ld  [ %i0 + 0xb0 ], %g1
   16978:	80 a0 60 00 	cmp  %g1, 0
   1697c:	02 80 00 04 	be  1698c <prepare_for_pass+0xf8>
   16980:	82 10 20 01 	mov  1, %g1
   16984:	10 80 00 49 	b  16aa8 <prepare_for_pass+0x214>
   16988:	c0 24 20 0c 	clr  [ %l0 + 0xc ]
   1698c:	10 80 00 47 	b  16aa8 <prepare_for_pass+0x214>
   16990:	c2 24 20 0c 	st  %g1, [ %l0 + 0xc ]
   16994:	7f ff fe e2 	call  1651c <select_scan_parameters>
   16998:	90 10 00 18 	mov  %i0, %o0
   1699c:	7f ff ff 2d 	call  16650 <per_scan_setup>
   169a0:	90 10 00 18 	mov  %i0, %o0
   169a4:	c2 06 21 34 	ld  [ %i0 + 0x134 ], %g1
   169a8:	80 a0 60 00 	cmp  %g1, 0
   169ac:	32 80 00 0b 	bne,a   169d8 <prepare_for_pass+0x144>
   169b0:	c2 06 21 64 	ld  [ %i0 + 0x164 ], %g1
   169b4:	c2 06 21 3c 	ld  [ %i0 + 0x13c ], %g1
   169b8:	80 a0 60 00 	cmp  %g1, 0
   169bc:	22 80 00 07 	be,a   169d8 <prepare_for_pass+0x144>
   169c0:	c2 06 21 64 	ld  [ %i0 + 0x164 ], %g1
   169c4:	c2 06 20 ac 	ld  [ %i0 + 0xac ], %g1
   169c8:	80 a0 60 00 	cmp  %g1, 0
   169cc:	02 80 00 0e 	be  16a04 <prepare_for_pass+0x170>
   169d0:	82 10 20 02 	mov  2, %g1
   169d4:	c2 06 21 64 	ld  [ %i0 + 0x164 ], %g1
   169d8:	c2 00 40 00 	ld  [ %g1 ], %g1
   169dc:	90 10 00 18 	mov  %i0, %o0
   169e0:	9f c0 40 00 	call  %g1
   169e4:	92 10 20 01 	mov  1, %o1
   169e8:	c2 06 21 50 	ld  [ %i0 + 0x150 ], %g1
   169ec:	c2 00 40 00 	ld  [ %g1 ], %g1
   169f0:	90 10 00 18 	mov  %i0, %o0
   169f4:	9f c0 40 00 	call  %g1
   169f8:	92 10 20 02 	mov  2, %o1
   169fc:	10 80 00 2b 	b  16aa8 <prepare_for_pass+0x214>
   16a00:	c0 24 20 0c 	clr  [ %l0 + 0xc ]
   16a04:	c2 24 20 14 	st  %g1, [ %l0 + 0x14 ]
   16a08:	c2 04 20 18 	ld  [ %l0 + 0x18 ], %g1
   16a0c:	82 00 60 01 	inc  %g1
   16a10:	c2 24 20 18 	st  %g1, [ %l0 + 0x18 ]
   16a14:	c2 06 20 b0 	ld  [ %i0 + 0xb0 ], %g1
   16a18:	80 a0 60 00 	cmp  %g1, 0
   16a1c:	32 80 00 07 	bne,a   16a38 <prepare_for_pass+0x1a4>
   16a20:	c2 06 21 64 	ld  [ %i0 + 0x164 ], %g1
   16a24:	7f ff fe be 	call  1651c <select_scan_parameters>
   16a28:	90 10 00 18 	mov  %i0, %o0
   16a2c:	7f ff ff 09 	call  16650 <per_scan_setup>
   16a30:	90 10 00 18 	mov  %i0, %o0
   16a34:	c2 06 21 64 	ld  [ %i0 + 0x164 ], %g1
   16a38:	c2 00 40 00 	ld  [ %g1 ], %g1
   16a3c:	90 10 00 18 	mov  %i0, %o0
   16a40:	9f c0 40 00 	call  %g1
   16a44:	92 10 20 00 	clr  %o1
   16a48:	c2 06 21 50 	ld  [ %i0 + 0x150 ], %g1
   16a4c:	c2 00 40 00 	ld  [ %g1 ], %g1
   16a50:	90 10 00 18 	mov  %i0, %o0
   16a54:	9f c0 40 00 	call  %g1
   16a58:	92 10 20 02 	mov  2, %o1
   16a5c:	c2 04 20 20 	ld  [ %l0 + 0x20 ], %g1
   16a60:	80 a0 60 00 	cmp  %g1, 0
   16a64:	12 80 00 06 	bne  16a7c <prepare_for_pass+0x1e8>
   16a68:	c2 06 21 54 	ld  [ %i0 + 0x154 ], %g1
   16a6c:	c2 00 60 08 	ld  [ %g1 + 8 ], %g1
   16a70:	9f c0 40 00 	call  %g1
   16a74:	90 10 00 18 	mov  %i0, %o0
   16a78:	c2 06 21 54 	ld  [ %i0 + 0x154 ], %g1
   16a7c:	c2 00 60 0c 	ld  [ %g1 + 0xc ], %g1
   16a80:	9f c0 40 00 	call  %g1
   16a84:	90 10 00 18 	mov  %i0, %o0
   16a88:	10 80 00 08 	b  16aa8 <prepare_for_pass+0x214>
   16a8c:	c0 24 20 0c 	clr  [ %l0 + 0xc ]
   16a90:	82 10 20 2f 	mov  0x2f, %g1
   16a94:	c2 20 a0 14 	st  %g1, [ %g2 + 0x14 ]
   16a98:	c2 06 00 00 	ld  [ %i0 ], %g1
   16a9c:	c2 00 40 00 	ld  [ %g1 ], %g1
   16aa0:	9f c0 40 00 	call  %g1
   16aa4:	90 10 00 18 	mov  %i0, %o0
   16aa8:	c2 04 20 1c 	ld  [ %l0 + 0x1c ], %g1
   16aac:	82 00 7f ff 	add  %g1, -1, %g1
   16ab0:	c4 04 20 18 	ld  [ %l0 + 0x18 ], %g2
   16ab4:	82 18 80 01 	xor  %g2, %g1, %g1
   16ab8:	80 a0 00 01 	cmp  %g0, %g1
   16abc:	82 60 3f ff 	subx  %g0, -1, %g1
   16ac0:	c2 24 20 10 	st  %g1, [ %l0 + 0x10 ]
   16ac4:	c2 06 20 08 	ld  [ %i0 + 8 ], %g1
   16ac8:	80 a0 60 00 	cmp  %g1, 0
   16acc:	02 80 00 06 	be  16ae4 <prepare_for_pass+0x250>
   16ad0:	01 00 00 00 	nop 
   16ad4:	c4 20 60 0c 	st  %g2, [ %g1 + 0xc ]
   16ad8:	c4 06 20 08 	ld  [ %i0 + 8 ], %g2
   16adc:	c2 04 20 1c 	ld  [ %l0 + 0x1c ], %g1
   16ae0:	c2 20 a0 10 	st  %g1, [ %g2 + 0x10 ]
   16ae4:	81 c7 e0 08 	ret 
   16ae8:	81 e8 00 00 	restore 

00016aec <pass_startup>:
   16aec:	9d e3 bf 98 	save  %sp, -104, %sp
   16af0:	c2 06 21 44 	ld  [ %i0 + 0x144 ], %g1
   16af4:	c0 20 60 0c 	clr  [ %g1 + 0xc ]
   16af8:	c2 06 21 54 	ld  [ %i0 + 0x154 ], %g1
   16afc:	c2 00 60 08 	ld  [ %g1 + 8 ], %g1
   16b00:	9f c0 40 00 	call  %g1
   16b04:	90 10 00 18 	mov  %i0, %o0
   16b08:	c2 06 21 54 	ld  [ %i0 + 0x154 ], %g1
   16b0c:	c2 00 60 0c 	ld  [ %g1 + 0xc ], %g1
   16b10:	9f c0 40 00 	call  %g1
   16b14:	90 10 00 18 	mov  %i0, %o0
   16b18:	01 00 00 00 	nop 
   16b1c:	81 c7 e0 08 	ret 
   16b20:	81 e8 00 00 	restore 

00016b24 <finish_pass_master>:
   16b24:	9d e3 bf 98 	save  %sp, -104, %sp
   16b28:	e0 06 21 44 	ld  [ %i0 + 0x144 ], %l0
   16b2c:	c2 06 21 64 	ld  [ %i0 + 0x164 ], %g1
   16b30:	c2 00 60 08 	ld  [ %g1 + 8 ], %g1
   16b34:	9f c0 40 00 	call  %g1
   16b38:	90 10 00 18 	mov  %i0, %o0
   16b3c:	c2 04 20 14 	ld  [ %l0 + 0x14 ], %g1
   16b40:	80 a0 60 01 	cmp  %g1, 1
   16b44:	22 80 00 12 	be,a   16b8c <finish_pass_master+0x68>
   16b48:	82 10 20 02 	mov  2, %g1
   16b4c:	2a 80 00 07 	bcs,a   16b68 <finish_pass_master+0x44>
   16b50:	82 10 20 02 	mov  2, %g1
   16b54:	80 a0 60 02 	cmp  %g1, 2
   16b58:	22 80 00 0f 	be,a   16b94 <finish_pass_master+0x70>
   16b5c:	c2 06 20 b0 	ld  [ %i0 + 0xb0 ], %g1
   16b60:	10 80 00 16 	b  16bb8 <finish_pass_master+0x94>
   16b64:	c2 04 20 18 	ld  [ %l0 + 0x18 ], %g1
   16b68:	c2 24 20 14 	st  %g1, [ %l0 + 0x14 ]
   16b6c:	c2 06 20 b0 	ld  [ %i0 + 0xb0 ], %g1
   16b70:	80 a0 60 00 	cmp  %g1, 0
   16b74:	32 80 00 11 	bne,a   16bb8 <finish_pass_master+0x94>
   16b78:	c2 04 20 18 	ld  [ %l0 + 0x18 ], %g1
   16b7c:	c2 04 20 20 	ld  [ %l0 + 0x20 ], %g1
   16b80:	82 00 60 01 	inc  %g1
   16b84:	10 80 00 0c 	b  16bb4 <finish_pass_master+0x90>
   16b88:	c2 24 20 20 	st  %g1, [ %l0 + 0x20 ]
   16b8c:	10 80 00 0a 	b  16bb4 <finish_pass_master+0x90>
   16b90:	c2 24 20 14 	st  %g1, [ %l0 + 0x14 ]
   16b94:	80 a0 60 00 	cmp  %g1, 0
   16b98:	22 80 00 05 	be,a   16bac <finish_pass_master+0x88>
   16b9c:	c2 04 20 20 	ld  [ %l0 + 0x20 ], %g1
   16ba0:	82 10 20 01 	mov  1, %g1
   16ba4:	c2 24 20 14 	st  %g1, [ %l0 + 0x14 ]
   16ba8:	c2 04 20 20 	ld  [ %l0 + 0x20 ], %g1
   16bac:	82 00 60 01 	inc  %g1
   16bb0:	c2 24 20 20 	st  %g1, [ %l0 + 0x20 ]
   16bb4:	c2 04 20 18 	ld  [ %l0 + 0x18 ], %g1
   16bb8:	82 00 60 01 	inc  %g1
   16bbc:	c2 24 20 18 	st  %g1, [ %l0 + 0x18 ]
   16bc0:	81 c7 e0 08 	ret 
   16bc4:	81 e8 00 00 	restore 

00016bc8 <jinit_c_master_control>:
   16bc8:	9d e3 bf 98 	save  %sp, -104, %sp
   16bcc:	c2 06 20 04 	ld  [ %i0 + 4 ], %g1
   16bd0:	c2 00 40 00 	ld  [ %g1 ], %g1
   16bd4:	90 10 00 18 	mov  %i0, %o0
   16bd8:	92 10 20 01 	mov  1, %o1
   16bdc:	9f c0 40 00 	call  %g1
   16be0:	94 10 20 24 	mov  0x24, %o2
   16be4:	a0 10 00 08 	mov  %o0, %l0
   16be8:	d0 26 21 44 	st  %o0, [ %i0 + 0x144 ]
   16bec:	03 00 00 5a 	sethi  %hi(0x16800), %g1
   16bf0:	82 10 60 94 	or  %g1, 0x94, %g1	! 16894 <prepare_for_pass>
   16bf4:	c2 22 00 00 	st  %g1, [ %o0 ]
   16bf8:	03 00 00 5a 	sethi  %hi(0x16800), %g1
   16bfc:	82 10 62 ec 	or  %g1, 0x2ec, %g1	! 16aec <pass_startup>
   16c00:	c2 22 20 04 	st  %g1, [ %o0 + 4 ]
   16c04:	03 00 00 5a 	sethi  %hi(0x16800), %g1
   16c08:	82 10 63 24 	or  %g1, 0x324, %g1	! 16b24 <finish_pass_master>
   16c0c:	c2 22 20 08 	st  %g1, [ %o0 + 8 ]
   16c10:	c0 22 20 10 	clr  [ %o0 + 0x10 ]
   16c14:	7f ff fc 2d 	call  15cc8 <initial_setup>
   16c18:	90 10 00 18 	mov  %i0, %o0
   16c1c:	c2 06 20 a4 	ld  [ %i0 + 0xa4 ], %g1
   16c20:	80 a0 60 00 	cmp  %g1, 0
   16c24:	22 80 00 06 	be,a   16c3c <jinit_c_master_control+0x74>
   16c28:	c0 26 20 dc 	clr  [ %i0 + 0xdc ]
   16c2c:	7f ff fc cc 	call  15f5c <validate_script>
   16c30:	90 10 00 18 	mov  %i0, %o0
   16c34:	10 80 00 05 	b  16c48 <jinit_c_master_control+0x80>
   16c38:	c2 06 20 dc 	ld  [ %i0 + 0xdc ], %g1
   16c3c:	82 10 20 01 	mov  1, %g1
   16c40:	c2 26 20 a0 	st  %g1, [ %i0 + 0xa0 ]
   16c44:	c2 06 20 dc 	ld  [ %i0 + 0xdc ], %g1
   16c48:	80 a0 60 00 	cmp  %g1, 0
   16c4c:	02 80 00 04 	be  16c5c <jinit_c_master_control+0x94>
   16c50:	80 a6 60 00 	cmp  %i1, 0
   16c54:	82 10 20 01 	mov  1, %g1
   16c58:	c2 26 20 b0 	st  %g1, [ %i0 + 0xb0 ]
   16c5c:	22 80 00 0a 	be,a   16c84 <jinit_c_master_control+0xbc>
   16c60:	c0 24 20 14 	clr  [ %l0 + 0x14 ]
   16c64:	c2 06 20 b0 	ld  [ %i0 + 0xb0 ], %g1
   16c68:	80 a0 60 00 	cmp  %g1, 0
   16c6c:	02 80 00 05 	be  16c80 <jinit_c_master_control+0xb8>
   16c70:	82 10 20 02 	mov  2, %g1
   16c74:	82 10 20 01 	mov  1, %g1
   16c78:	10 80 00 03 	b  16c84 <jinit_c_master_control+0xbc>
   16c7c:	c2 24 20 14 	st  %g1, [ %l0 + 0x14 ]
   16c80:	c2 24 20 14 	st  %g1, [ %l0 + 0x14 ]
   16c84:	c0 24 20 20 	clr  [ %l0 + 0x20 ]
   16c88:	c0 24 20 18 	clr  [ %l0 + 0x18 ]
   16c8c:	c2 06 20 b0 	ld  [ %i0 + 0xb0 ], %g1
   16c90:	80 a0 60 00 	cmp  %g1, 0
   16c94:	02 80 00 05 	be  16ca8 <jinit_c_master_control+0xe0>
   16c98:	c2 06 20 a0 	ld  [ %i0 + 0xa0 ], %g1
   16c9c:	82 00 40 01 	add  %g1, %g1, %g1
   16ca0:	10 80 00 03 	b  16cac <jinit_c_master_control+0xe4>
   16ca4:	c2 24 20 1c 	st  %g1, [ %l0 + 0x1c ]
   16ca8:	c2 24 20 1c 	st  %g1, [ %l0 + 0x1c ]
   16cac:	81 c7 e0 08 	ret 
   16cb0:	81 e8 00 00 	restore 

00016cb4 <emit_byte>:
   16cb4:	9d e3 bf 98 	save  %sp, -104, %sp
   16cb8:	c4 06 20 14 	ld  [ %i0 + 0x14 ], %g2
   16cbc:	c2 00 80 00 	ld  [ %g2 ], %g1
   16cc0:	f2 28 40 00 	stb  %i1, [ %g1 ]
   16cc4:	82 00 60 01 	inc  %g1
   16cc8:	c2 20 80 00 	st  %g1, [ %g2 ]
   16ccc:	c2 00 a0 04 	ld  [ %g2 + 4 ], %g1
   16cd0:	82 00 7f ff 	add  %g1, -1, %g1
   16cd4:	80 a0 60 00 	cmp  %g1, 0
   16cd8:	12 80 00 0e 	bne  16d10 <emit_byte+0x5c>
   16cdc:	c2 20 a0 04 	st  %g1, [ %g2 + 4 ]
   16ce0:	c2 00 a0 0c 	ld  [ %g2 + 0xc ], %g1
   16ce4:	9f c0 40 00 	call  %g1
   16ce8:	90 10 00 18 	mov  %i0, %o0
   16cec:	80 a2 20 00 	cmp  %o0, 0
   16cf0:	12 80 00 08 	bne  16d10 <emit_byte+0x5c>
   16cf4:	82 10 20 16 	mov  0x16, %g1
   16cf8:	c4 06 00 00 	ld  [ %i0 ], %g2
   16cfc:	c2 20 a0 14 	st  %g1, [ %g2 + 0x14 ]
   16d00:	c2 06 00 00 	ld  [ %i0 ], %g1
   16d04:	c2 00 40 00 	ld  [ %g1 ], %g1
   16d08:	9f c0 40 00 	call  %g1
   16d0c:	90 10 00 18 	mov  %i0, %o0
   16d10:	01 00 00 00 	nop 
   16d14:	81 c7 e0 08 	ret 
   16d18:	81 e8 00 00 	restore 

00016d1c <emit_marker>:
   16d1c:	9d e3 bf 98 	save  %sp, -104, %sp
   16d20:	90 10 00 18 	mov  %i0, %o0
   16d24:	7f ff ff e4 	call  16cb4 <emit_byte>
   16d28:	92 10 20 ff 	mov  0xff, %o1
   16d2c:	90 10 00 18 	mov  %i0, %o0
   16d30:	7f ff ff e1 	call  16cb4 <emit_byte>
   16d34:	92 10 00 19 	mov  %i1, %o1
   16d38:	01 00 00 00 	nop 
   16d3c:	81 c7 e0 08 	ret 
   16d40:	81 e8 00 00 	restore 

00016d44 <emit_2bytes>:
   16d44:	9d e3 bf 98 	save  %sp, -104, %sp
   16d48:	93 3e 60 08 	sra  %i1, 8, %o1
   16d4c:	90 10 00 18 	mov  %i0, %o0
   16d50:	7f ff ff d9 	call  16cb4 <emit_byte>
   16d54:	92 0a 60 ff 	and  %o1, 0xff, %o1
   16d58:	90 10 00 18 	mov  %i0, %o0
   16d5c:	7f ff ff d6 	call  16cb4 <emit_byte>
   16d60:	92 0e 60 ff 	and  %i1, 0xff, %o1
   16d64:	01 00 00 00 	nop 
   16d68:	81 c7 e0 08 	ret 
   16d6c:	81 e8 00 00 	restore 

00016d70 <emit_dqt>:
   16d70:	9d e3 bf 98 	save  %sp, -104, %sp
   16d74:	83 2e 60 02 	sll  %i1, 2, %g1
   16d78:	82 00 40 18 	add  %g1, %i0, %g1
   16d7c:	e2 00 60 40 	ld  [ %g1 + 0x40 ], %l1
   16d80:	80 a4 60 00 	cmp  %l1, 0
   16d84:	12 80 00 0b 	bne  16db0 <emit_dqt+0x40>
   16d88:	a4 10 00 18 	mov  %i0, %l2
   16d8c:	c4 06 00 00 	ld  [ %i0 ], %g2
   16d90:	82 10 20 33 	mov  0x33, %g1
   16d94:	c2 20 a0 14 	st  %g1, [ %g2 + 0x14 ]
   16d98:	c2 06 00 00 	ld  [ %i0 ], %g1
   16d9c:	f2 20 60 18 	st  %i1, [ %g1 + 0x18 ]
   16da0:	c2 06 00 00 	ld  [ %i0 ], %g1
   16da4:	c2 00 40 00 	ld  [ %g1 ], %g1
   16da8:	9f c0 40 00 	call  %g1
   16dac:	90 10 00 18 	mov  %i0, %o0
   16db0:	b0 10 20 00 	clr  %i0
   16db4:	a0 10 20 00 	clr  %l0
   16db8:	82 04 00 10 	add  %l0, %l0, %g1
   16dbc:	c2 14 40 01 	lduh  [ %l1 + %g1 ], %g1
   16dc0:	80 a0 60 ff 	cmp  %g1, 0xff
   16dc4:	38 80 00 02 	bgu,a   16dcc <emit_dqt+0x5c>
   16dc8:	b0 10 20 01 	mov  1, %i0
   16dcc:	a0 04 20 01 	inc  %l0
   16dd0:	80 a4 20 3f 	cmp  %l0, 0x3f
   16dd4:	04 bf ff fa 	ble  16dbc <emit_dqt+0x4c>
   16dd8:	82 04 00 10 	add  %l0, %l0, %g1
   16ddc:	c2 04 60 80 	ld  [ %l1 + 0x80 ], %g1
   16de0:	80 a0 60 00 	cmp  %g1, 0
   16de4:	12 80 00 25 	bne  16e78 <emit_dqt+0x108>
   16de8:	90 10 00 12 	mov  %l2, %o0
   16dec:	7f ff ff cc 	call  16d1c <emit_marker>
   16df0:	92 10 20 db 	mov  0xdb, %o1
   16df4:	80 a0 00 18 	cmp  %g0, %i0
   16df8:	92 40 3f ff 	addx  %g0, -1, %o1
   16dfc:	92 0a 7f c0 	and  %o1, -64, %o1
   16e00:	90 10 00 12 	mov  %l2, %o0
   16e04:	7f ff ff d0 	call  16d44 <emit_2bytes>
   16e08:	92 02 60 83 	add  %o1, 0x83, %o1
   16e0c:	93 2e 20 04 	sll  %i0, 4, %o1
   16e10:	90 10 00 12 	mov  %l2, %o0
   16e14:	7f ff ff a8 	call  16cb4 <emit_byte>
   16e18:	92 02 40 19 	add  %o1, %i1, %o1
   16e1c:	a0 10 20 00 	clr  %l0
   16e20:	03 00 00 87 	sethi  %hi(0x21c00), %g1
   16e24:	a6 10 63 c4 	or  %g1, 0x3c4, %l3	! 21fc4 <jpeg_natural_order>
   16e28:	83 2c 20 02 	sll  %l0, 2, %g1
   16e2c:	c2 04 c0 01 	ld  [ %l3 + %g1 ], %g1
   16e30:	82 00 40 01 	add  %g1, %g1, %g1
   16e34:	c2 14 40 01 	lduh  [ %l1 + %g1 ], %g1
   16e38:	83 28 60 10 	sll  %g1, 0x10, %g1
   16e3c:	80 a6 20 00 	cmp  %i0, 0
   16e40:	02 80 00 05 	be  16e54 <emit_dqt+0xe4>
   16e44:	b3 30 60 10 	srl  %g1, 0x10, %i1
   16e48:	90 10 00 12 	mov  %l2, %o0
   16e4c:	7f ff ff 9a 	call  16cb4 <emit_byte>
   16e50:	93 30 60 18 	srl  %g1, 0x18, %o1
   16e54:	90 10 00 12 	mov  %l2, %o0
   16e58:	7f ff ff 97 	call  16cb4 <emit_byte>
   16e5c:	92 0e 60 ff 	and  %i1, 0xff, %o1
   16e60:	a0 04 20 01 	inc  %l0
   16e64:	80 a4 20 3f 	cmp  %l0, 0x3f
   16e68:	04 bf ff f1 	ble  16e2c <emit_dqt+0xbc>
   16e6c:	83 2c 20 02 	sll  %l0, 2, %g1
   16e70:	82 10 20 01 	mov  1, %g1
   16e74:	c2 24 60 80 	st  %g1, [ %l1 + 0x80 ]
   16e78:	81 c7 e0 08 	ret 
   16e7c:	81 e8 00 00 	restore 

00016e80 <emit_dht>:
   16e80:	9d e3 bf 98 	save  %sp, -104, %sp
   16e84:	80 a6 a0 00 	cmp  %i2, 0
   16e88:	02 80 00 06 	be  16ea0 <emit_dht+0x20>
   16e8c:	83 2e 60 02 	sll  %i1, 2, %g1
   16e90:	82 00 40 18 	add  %g1, %i0, %g1
   16e94:	e0 00 60 60 	ld  [ %g1 + 0x60 ], %l0
   16e98:	10 80 00 04 	b  16ea8 <emit_dht+0x28>
   16e9c:	b2 06 60 10 	add  %i1, 0x10, %i1
   16ea0:	82 00 40 18 	add  %g1, %i0, %g1
   16ea4:	e0 00 60 50 	ld  [ %g1 + 0x50 ], %l0
   16ea8:	80 a4 20 00 	cmp  %l0, 0
   16eac:	32 80 00 0c 	bne,a   16edc <emit_dht+0x5c>
   16eb0:	c2 04 21 14 	ld  [ %l0 + 0x114 ], %g1
   16eb4:	c4 06 00 00 	ld  [ %i0 ], %g2
   16eb8:	82 10 20 31 	mov  0x31, %g1
   16ebc:	c2 20 a0 14 	st  %g1, [ %g2 + 0x14 ]
   16ec0:	c2 06 00 00 	ld  [ %i0 ], %g1
   16ec4:	f2 20 60 18 	st  %i1, [ %g1 + 0x18 ]
   16ec8:	c2 06 00 00 	ld  [ %i0 ], %g1
   16ecc:	c2 00 40 00 	ld  [ %g1 ], %g1
   16ed0:	9f c0 40 00 	call  %g1
   16ed4:	90 10 00 18 	mov  %i0, %o0
   16ed8:	c2 04 21 14 	ld  [ %l0 + 0x114 ], %g1
   16edc:	80 a0 60 00 	cmp  %g1, 0
   16ee0:	12 80 00 27 	bne  16f7c <emit_dht+0xfc>
   16ee4:	90 10 00 18 	mov  %i0, %o0
   16ee8:	7f ff ff 8d 	call  16d1c <emit_marker>
   16eec:	92 10 20 c4 	mov  0xc4, %o1
   16ef0:	a2 10 20 00 	clr  %l1
   16ef4:	b4 10 20 01 	mov  1, %i2
   16ef8:	c2 0c 00 1a 	ldub  [ %l0 + %i2 ], %g1
   16efc:	b4 06 a0 01 	inc  %i2
   16f00:	80 a6 a0 10 	cmp  %i2, 0x10
   16f04:	04 bf ff fd 	ble  16ef8 <emit_dht+0x78>
   16f08:	a2 04 40 01 	add  %l1, %g1, %l1
   16f0c:	90 10 00 18 	mov  %i0, %o0
   16f10:	7f ff ff 8d 	call  16d44 <emit_2bytes>
   16f14:	92 04 60 13 	add  %l1, 0x13, %o1
   16f18:	90 10 00 18 	mov  %i0, %o0
   16f1c:	7f ff ff 66 	call  16cb4 <emit_byte>
   16f20:	92 10 00 19 	mov  %i1, %o1
   16f24:	b4 10 20 01 	mov  1, %i2
   16f28:	90 10 00 18 	mov  %i0, %o0
   16f2c:	7f ff ff 62 	call  16cb4 <emit_byte>
   16f30:	d2 0c 00 1a 	ldub  [ %l0 + %i2 ], %o1
   16f34:	b4 06 a0 01 	inc  %i2
   16f38:	80 a6 a0 10 	cmp  %i2, 0x10
   16f3c:	04 bf ff fc 	ble  16f2c <emit_dht+0xac>
   16f40:	90 10 00 18 	mov  %i0, %o0
   16f44:	b4 10 20 00 	clr  %i2
   16f48:	80 a6 80 11 	cmp  %i2, %l1
   16f4c:	16 80 00 0b 	bge  16f78 <emit_dht+0xf8>
   16f50:	82 10 20 01 	mov  1, %g1
   16f54:	82 06 80 10 	add  %i2, %l0, %g1
   16f58:	90 10 00 18 	mov  %i0, %o0
   16f5c:	7f ff ff 56 	call  16cb4 <emit_byte>
   16f60:	d2 08 60 11 	ldub  [ %g1 + 0x11 ], %o1
   16f64:	b4 06 a0 01 	inc  %i2
   16f68:	80 a6 80 11 	cmp  %i2, %l1
   16f6c:	06 bf ff fb 	bl  16f58 <emit_dht+0xd8>
   16f70:	82 06 80 10 	add  %i2, %l0, %g1
   16f74:	82 10 20 01 	mov  1, %g1
   16f78:	c2 24 21 14 	st  %g1, [ %l0 + 0x114 ]
   16f7c:	81 c7 e0 08 	ret 
   16f80:	81 e8 00 00 	restore 

00016f84 <emit_dac>:
   16f84:	81 c3 e0 08 	retl 
   16f88:	01 00 00 00 	nop 

00016f8c <emit_dri>:
   16f8c:	9d e3 bf 98 	save  %sp, -104, %sp
   16f90:	90 10 00 18 	mov  %i0, %o0
   16f94:	7f ff ff 62 	call  16d1c <emit_marker>
   16f98:	92 10 20 dd 	mov  0xdd, %o1
   16f9c:	90 10 00 18 	mov  %i0, %o0
   16fa0:	7f ff ff 69 	call  16d44 <emit_2bytes>
   16fa4:	92 10 20 04 	mov  4, %o1
   16fa8:	90 10 00 18 	mov  %i0, %o0
   16fac:	7f ff ff 66 	call  16d44 <emit_2bytes>
   16fb0:	d2 06 20 c0 	ld  [ %i0 + 0xc0 ], %o1
   16fb4:	01 00 00 00 	nop 
   16fb8:	81 c7 e0 08 	ret 
   16fbc:	81 e8 00 00 	restore 

00016fc0 <emit_sof>:
   16fc0:	9d e3 bf 98 	save  %sp, -104, %sp
   16fc4:	90 10 00 18 	mov  %i0, %o0
   16fc8:	7f ff ff 55 	call  16d1c <emit_marker>
   16fcc:	92 10 00 19 	mov  %i1, %o1
   16fd0:	c2 06 20 34 	ld  [ %i0 + 0x34 ], %g1
   16fd4:	92 00 40 01 	add  %g1, %g1, %o1
   16fd8:	92 02 40 01 	add  %o1, %g1, %o1
   16fdc:	90 10 00 18 	mov  %i0, %o0
   16fe0:	7f ff ff 59 	call  16d44 <emit_2bytes>
   16fe4:	92 02 60 08 	add  %o1, 8, %o1
   16fe8:	c4 06 20 1c 	ld  [ %i0 + 0x1c ], %g2
   16fec:	03 00 00 3f 	sethi  %hi(0xfc00), %g1
   16ff0:	86 10 63 ff 	or  %g1, 0x3ff, %g3	! ffff <_init-0x6d1>
   16ff4:	80 a0 80 03 	cmp  %g2, %g3
   16ff8:	34 80 00 07 	bg,a   17014 <emit_sof+0x54>
   16ffc:	c4 06 00 00 	ld  [ %i0 ], %g2
   17000:	c2 06 20 18 	ld  [ %i0 + 0x18 ], %g1
   17004:	80 a0 40 03 	cmp  %g1, %g3
   17008:	04 80 00 0e 	ble  17040 <emit_sof+0x80>
   1700c:	90 10 00 18 	mov  %i0, %o0
   17010:	c4 06 00 00 	ld  [ %i0 ], %g2
   17014:	82 10 20 28 	mov  0x28, %g1
   17018:	c2 20 a0 14 	st  %g1, [ %g2 + 0x14 ]
   1701c:	c4 06 00 00 	ld  [ %i0 ], %g2
   17020:	03 00 00 3f 	sethi  %hi(0xfc00), %g1
   17024:	82 10 63 ff 	or  %g1, 0x3ff, %g1	! ffff <_init-0x6d1>
   17028:	c2 20 a0 18 	st  %g1, [ %g2 + 0x18 ]
   1702c:	c2 06 00 00 	ld  [ %i0 ], %g1
   17030:	c2 00 40 00 	ld  [ %g1 ], %g1
   17034:	9f c0 40 00 	call  %g1
   17038:	90 10 00 18 	mov  %i0, %o0
   1703c:	90 10 00 18 	mov  %i0, %o0
   17040:	7f ff ff 1d 	call  16cb4 <emit_byte>
   17044:	d2 06 20 30 	ld  [ %i0 + 0x30 ], %o1
   17048:	90 10 00 18 	mov  %i0, %o0
   1704c:	7f ff ff 3e 	call  16d44 <emit_2bytes>
   17050:	d2 06 20 1c 	ld  [ %i0 + 0x1c ], %o1
   17054:	90 10 00 18 	mov  %i0, %o0
   17058:	7f ff ff 3b 	call  16d44 <emit_2bytes>
   1705c:	d2 06 20 18 	ld  [ %i0 + 0x18 ], %o1
   17060:	90 10 00 18 	mov  %i0, %o0
   17064:	7f ff ff 14 	call  16cb4 <emit_byte>
   17068:	d2 06 20 34 	ld  [ %i0 + 0x34 ], %o1
   1706c:	a0 10 20 00 	clr  %l0
   17070:	c2 06 20 34 	ld  [ %i0 + 0x34 ], %g1
   17074:	80 a0 60 00 	cmp  %g1, 0
   17078:	04 80 00 13 	ble  170c4 <emit_sof+0x104>
   1707c:	f2 06 20 3c 	ld  [ %i0 + 0x3c ], %i1
   17080:	90 10 00 18 	mov  %i0, %o0
   17084:	7f ff ff 0c 	call  16cb4 <emit_byte>
   17088:	d2 06 40 00 	ld  [ %i1 ], %o1
   1708c:	d2 06 60 08 	ld  [ %i1 + 8 ], %o1
   17090:	93 2a 60 04 	sll  %o1, 4, %o1
   17094:	c2 06 60 0c 	ld  [ %i1 + 0xc ], %g1
   17098:	90 10 00 18 	mov  %i0, %o0
   1709c:	7f ff ff 06 	call  16cb4 <emit_byte>
   170a0:	92 02 40 01 	add  %o1, %g1, %o1
   170a4:	90 10 00 18 	mov  %i0, %o0
   170a8:	7f ff ff 03 	call  16cb4 <emit_byte>
   170ac:	d2 06 60 10 	ld  [ %i1 + 0x10 ], %o1
   170b0:	a0 04 20 01 	inc  %l0
   170b4:	c2 06 20 34 	ld  [ %i0 + 0x34 ], %g1
   170b8:	80 a0 40 10 	cmp  %g1, %l0
   170bc:	14 bf ff f1 	bg  17080 <emit_sof+0xc0>
   170c0:	b2 06 60 54 	add  %i1, 0x54, %i1
   170c4:	81 c7 e0 08 	ret 
   170c8:	81 e8 00 00 	restore 

000170cc <emit_sos>:
   170cc:	9d e3 bf 98 	save  %sp, -104, %sp
   170d0:	90 10 00 18 	mov  %i0, %o0
   170d4:	7f ff ff 12 	call  16d1c <emit_marker>
   170d8:	92 10 20 da 	mov  0xda, %o1
   170dc:	d2 06 20 ec 	ld  [ %i0 + 0xec ], %o1
   170e0:	92 02 40 09 	add  %o1, %o1, %o1
   170e4:	90 10 00 18 	mov  %i0, %o0
   170e8:	7f ff ff 17 	call  16d44 <emit_2bytes>
   170ec:	92 02 60 06 	add  %o1, 6, %o1
   170f0:	90 10 00 18 	mov  %i0, %o0
   170f4:	7f ff fe f0 	call  16cb4 <emit_byte>
   170f8:	d2 06 20 ec 	ld  [ %i0 + 0xec ], %o1
   170fc:	c2 06 20 ec 	ld  [ %i0 + 0xec ], %g1
   17100:	80 a0 60 00 	cmp  %g1, 0
   17104:	04 80 00 24 	ble  17194 <emit_sos+0xc8>
   17108:	a2 10 20 00 	clr  %l1
   1710c:	83 2c 60 02 	sll  %l1, 2, %g1
   17110:	82 00 40 18 	add  %g1, %i0, %g1
   17114:	e0 00 60 f0 	ld  [ %g1 + 0xf0 ], %l0
   17118:	90 10 00 18 	mov  %i0, %o0
   1711c:	7f ff fe e6 	call  16cb4 <emit_byte>
   17120:	d2 04 00 00 	ld  [ %l0 ], %o1
   17124:	d2 04 20 14 	ld  [ %l0 + 0x14 ], %o1
   17128:	c2 06 20 dc 	ld  [ %i0 + 0xdc ], %g1
   1712c:	80 a0 60 00 	cmp  %g1, 0
   17130:	02 80 00 10 	be  17170 <emit_sos+0xa4>
   17134:	c4 04 20 18 	ld  [ %l0 + 0x18 ], %g2
   17138:	c2 06 21 34 	ld  [ %i0 + 0x134 ], %g1
   1713c:	80 a0 60 00 	cmp  %g1, 0
   17140:	32 80 00 0c 	bne,a   17170 <emit_sos+0xa4>
   17144:	92 10 20 00 	clr  %o1
   17148:	c2 06 21 3c 	ld  [ %i0 + 0x13c ], %g1
   1714c:	80 a0 60 00 	cmp  %g1, 0
   17150:	02 80 00 08 	be  17170 <emit_sos+0xa4>
   17154:	84 10 20 00 	clr  %g2
   17158:	c2 06 20 ac 	ld  [ %i0 + 0xac ], %g1
   1715c:	80 a0 60 00 	cmp  %g1, 0
   17160:	22 80 00 04 	be,a   17170 <emit_sos+0xa4>
   17164:	92 10 20 00 	clr  %o1
   17168:	10 80 00 03 	b  17174 <emit_sos+0xa8>
   1716c:	93 2a 60 04 	sll  %o1, 4, %o1
   17170:	93 2a 60 04 	sll  %o1, 4, %o1
   17174:	90 10 00 18 	mov  %i0, %o0
   17178:	7f ff fe cf 	call  16cb4 <emit_byte>
   1717c:	92 02 40 02 	add  %o1, %g2, %o1
   17180:	a2 04 60 01 	inc  %l1
   17184:	c2 06 20 ec 	ld  [ %i0 + 0xec ], %g1
   17188:	80 a0 40 11 	cmp  %g1, %l1
   1718c:	14 bf ff e1 	bg  17110 <emit_sos+0x44>
   17190:	83 2c 60 02 	sll  %l1, 2, %g1
   17194:	90 10 00 18 	mov  %i0, %o0
   17198:	7f ff fe c7 	call  16cb4 <emit_byte>
   1719c:	d2 06 21 34 	ld  [ %i0 + 0x134 ], %o1
   171a0:	90 10 00 18 	mov  %i0, %o0
   171a4:	7f ff fe c4 	call  16cb4 <emit_byte>
   171a8:	d2 06 21 38 	ld  [ %i0 + 0x138 ], %o1
   171ac:	d2 06 21 3c 	ld  [ %i0 + 0x13c ], %o1
   171b0:	93 2a 60 04 	sll  %o1, 4, %o1
   171b4:	c2 06 21 40 	ld  [ %i0 + 0x140 ], %g1
   171b8:	90 10 00 18 	mov  %i0, %o0
   171bc:	7f ff fe be 	call  16cb4 <emit_byte>
   171c0:	92 02 40 01 	add  %o1, %g1, %o1
   171c4:	01 00 00 00 	nop 
   171c8:	81 c7 e0 08 	ret 
   171cc:	81 e8 00 00 	restore 

000171d0 <emit_jfif_app0>:
   171d0:	9d e3 bf 98 	save  %sp, -104, %sp
   171d4:	90 10 00 18 	mov  %i0, %o0
   171d8:	7f ff fe d1 	call  16d1c <emit_marker>
   171dc:	92 10 20 e0 	mov  0xe0, %o1
   171e0:	90 10 00 18 	mov  %i0, %o0
   171e4:	7f ff fe d8 	call  16d44 <emit_2bytes>
   171e8:	92 10 20 10 	mov  0x10, %o1
   171ec:	90 10 00 18 	mov  %i0, %o0
   171f0:	7f ff fe b1 	call  16cb4 <emit_byte>
   171f4:	92 10 20 4a 	mov  0x4a, %o1
   171f8:	90 10 00 18 	mov  %i0, %o0
   171fc:	7f ff fe ae 	call  16cb4 <emit_byte>
   17200:	92 10 20 46 	mov  0x46, %o1
   17204:	90 10 00 18 	mov  %i0, %o0
   17208:	7f ff fe ab 	call  16cb4 <emit_byte>
   1720c:	92 10 20 49 	mov  0x49, %o1
   17210:	90 10 00 18 	mov  %i0, %o0
   17214:	7f ff fe a8 	call  16cb4 <emit_byte>
   17218:	92 10 20 46 	mov  0x46, %o1
   1721c:	90 10 00 18 	mov  %i0, %o0
   17220:	7f ff fe a5 	call  16cb4 <emit_byte>
   17224:	92 10 20 00 	clr  %o1
   17228:	90 10 00 18 	mov  %i0, %o0
   1722c:	7f ff fe a2 	call  16cb4 <emit_byte>
   17230:	92 10 20 01 	mov  1, %o1
   17234:	90 10 00 18 	mov  %i0, %o0
   17238:	7f ff fe 9f 	call  16cb4 <emit_byte>
   1723c:	92 10 20 01 	mov  1, %o1
   17240:	90 10 00 18 	mov  %i0, %o0
   17244:	7f ff fe 9c 	call  16cb4 <emit_byte>
   17248:	d2 0e 20 cc 	ldub  [ %i0 + 0xcc ], %o1
   1724c:	90 10 00 18 	mov  %i0, %o0
   17250:	7f ff fe bd 	call  16d44 <emit_2bytes>
   17254:	d2 16 20 ce 	lduh  [ %i0 + 0xce ], %o1
   17258:	90 10 00 18 	mov  %i0, %o0
   1725c:	7f ff fe ba 	call  16d44 <emit_2bytes>
   17260:	d2 16 20 d0 	lduh  [ %i0 + 0xd0 ], %o1
   17264:	90 10 00 18 	mov  %i0, %o0
   17268:	7f ff fe 93 	call  16cb4 <emit_byte>
   1726c:	92 10 20 00 	clr  %o1
   17270:	90 10 00 18 	mov  %i0, %o0
   17274:	7f ff fe 90 	call  16cb4 <emit_byte>
   17278:	92 10 20 00 	clr  %o1
   1727c:	01 00 00 00 	nop 
   17280:	81 c7 e0 08 	ret 
   17284:	81 e8 00 00 	restore 

00017288 <emit_adobe_app14>:
   17288:	9d e3 bf 98 	save  %sp, -104, %sp
   1728c:	90 10 00 18 	mov  %i0, %o0
   17290:	7f ff fe a3 	call  16d1c <emit_marker>
   17294:	92 10 20 ee 	mov  0xee, %o1
   17298:	90 10 00 18 	mov  %i0, %o0
   1729c:	7f ff fe aa 	call  16d44 <emit_2bytes>
   172a0:	92 10 20 0e 	mov  0xe, %o1
   172a4:	90 10 00 18 	mov  %i0, %o0
   172a8:	7f ff fe 83 	call  16cb4 <emit_byte>
   172ac:	92 10 20 41 	mov  0x41, %o1
   172b0:	90 10 00 18 	mov  %i0, %o0
   172b4:	7f ff fe 80 	call  16cb4 <emit_byte>
   172b8:	92 10 20 64 	mov  0x64, %o1
   172bc:	90 10 00 18 	mov  %i0, %o0
   172c0:	7f ff fe 7d 	call  16cb4 <emit_byte>
   172c4:	92 10 20 6f 	mov  0x6f, %o1
   172c8:	90 10 00 18 	mov  %i0, %o0
   172cc:	7f ff fe 7a 	call  16cb4 <emit_byte>
   172d0:	92 10 20 62 	mov  0x62, %o1
   172d4:	90 10 00 18 	mov  %i0, %o0
   172d8:	7f ff fe 77 	call  16cb4 <emit_byte>
   172dc:	92 10 20 65 	mov  0x65, %o1
   172e0:	90 10 00 18 	mov  %i0, %o0
   172e4:	7f ff fe 98 	call  16d44 <emit_2bytes>
   172e8:	92 10 20 64 	mov  0x64, %o1
   172ec:	90 10 00 18 	mov  %i0, %o0
   172f0:	7f ff fe 95 	call  16d44 <emit_2bytes>
   172f4:	92 10 20 00 	clr  %o1
   172f8:	90 10 00 18 	mov  %i0, %o0
   172fc:	7f ff fe 92 	call  16d44 <emit_2bytes>
   17300:	92 10 20 00 	clr  %o1
   17304:	c2 06 20 38 	ld  [ %i0 + 0x38 ], %g1
   17308:	80 a0 60 03 	cmp  %g1, 3
   1730c:	02 80 00 05 	be  17320 <emit_adobe_app14+0x98>
   17310:	80 a0 60 05 	cmp  %g1, 5
   17314:	02 80 00 07 	be  17330 <emit_adobe_app14+0xa8>
   17318:	90 10 00 18 	mov  %i0, %o0
   1731c:	30 80 00 08 	b,a   1733c <emit_adobe_app14+0xb4>
   17320:	90 10 00 18 	mov  %i0, %o0
   17324:	7f ff fe 64 	call  16cb4 <emit_byte>
   17328:	92 10 20 01 	mov  1, %o1
   1732c:	30 80 00 06 	b,a   17344 <emit_adobe_app14+0xbc>
   17330:	7f ff fe 61 	call  16cb4 <emit_byte>
   17334:	92 10 20 02 	mov  2, %o1
   17338:	30 80 00 03 	b,a   17344 <emit_adobe_app14+0xbc>
   1733c:	7f ff fe 5e 	call  16cb4 <emit_byte>
   17340:	92 10 20 00 	clr  %o1
   17344:	01 00 00 00 	nop 
   17348:	81 c7 e0 08 	ret 
   1734c:	81 e8 00 00 	restore 

00017350 <write_any_marker>:
   17350:	9d e3 bf 98 	save  %sp, -104, %sp
   17354:	03 00 00 3f 	sethi  %hi(0xfc00), %g1
   17358:	82 10 63 fd 	or  %g1, 0x3fd, %g1	! fffd <_init-0x6d3>
   1735c:	80 a6 c0 01 	cmp  %i3, %g1
   17360:	18 80 00 12 	bgu  173a8 <write_any_marker+0x58>
   17364:	92 10 00 19 	mov  %i1, %o1
   17368:	7f ff fe 6d 	call  16d1c <emit_marker>
   1736c:	90 10 00 18 	mov  %i0, %o0
   17370:	90 10 00 18 	mov  %i0, %o0
   17374:	7f ff fe 74 	call  16d44 <emit_2bytes>
   17378:	92 06 e0 02 	add  %i3, 2, %o1
   1737c:	b6 06 ff ff 	add  %i3, -1, %i3
   17380:	80 a6 ff ff 	cmp  %i3, -1
   17384:	02 80 00 09 	be  173a8 <write_any_marker+0x58>
   17388:	01 00 00 00 	nop 
   1738c:	90 10 00 18 	mov  %i0, %o0
   17390:	7f ff fe 49 	call  16cb4 <emit_byte>
   17394:	d2 0e 80 00 	ldub  [ %i2 ], %o1
   17398:	b6 06 ff ff 	add  %i3, -1, %i3
   1739c:	80 a6 ff ff 	cmp  %i3, -1
   173a0:	12 bf ff fb 	bne  1738c <write_any_marker+0x3c>
   173a4:	b4 06 a0 01 	inc  %i2
   173a8:	81 c7 e0 08 	ret 
   173ac:	81 e8 00 00 	restore 

000173b0 <write_file_header>:
   173b0:	9d e3 bf 98 	save  %sp, -104, %sp
   173b4:	90 10 00 18 	mov  %i0, %o0
   173b8:	7f ff fe 59 	call  16d1c <emit_marker>
   173bc:	92 10 20 d8 	mov  0xd8, %o1
   173c0:	c2 06 20 c8 	ld  [ %i0 + 0xc8 ], %g1
   173c4:	80 a0 60 00 	cmp  %g1, 0
   173c8:	22 80 00 05 	be,a   173dc <write_file_header+0x2c>
   173cc:	c2 06 20 d4 	ld  [ %i0 + 0xd4 ], %g1
   173d0:	7f ff ff 80 	call  171d0 <emit_jfif_app0>
   173d4:	90 10 00 18 	mov  %i0, %o0
   173d8:	c2 06 20 d4 	ld  [ %i0 + 0xd4 ], %g1
   173dc:	80 a0 60 00 	cmp  %g1, 0
   173e0:	02 80 00 04 	be  173f0 <write_file_header+0x40>
   173e4:	01 00 00 00 	nop 
   173e8:	7f ff ff a8 	call  17288 <emit_adobe_app14>
   173ec:	90 10 00 18 	mov  %i0, %o0
   173f0:	01 00 00 00 	nop 
   173f4:	81 c7 e0 08 	ret 
   173f8:	81 e8 00 00 	restore 

000173fc <write_frame_header>:
   173fc:	9d e3 bf 98 	save  %sp, -104, %sp
   17400:	a4 10 20 00 	clr  %l2
   17404:	a2 10 20 00 	clr  %l1
   17408:	c2 06 20 34 	ld  [ %i0 + 0x34 ], %g1
   1740c:	80 a0 60 00 	cmp  %g1, 0
   17410:	04 80 00 0b 	ble  1743c <write_frame_header+0x40>
   17414:	e0 06 20 3c 	ld  [ %i0 + 0x3c ], %l0
   17418:	90 10 00 18 	mov  %i0, %o0
   1741c:	7f ff fe 55 	call  16d70 <emit_dqt>
   17420:	d2 04 20 10 	ld  [ %l0 + 0x10 ], %o1
   17424:	a4 04 80 08 	add  %l2, %o0, %l2
   17428:	a2 04 60 01 	inc  %l1
   1742c:	c2 06 20 34 	ld  [ %i0 + 0x34 ], %g1
   17430:	80 a0 40 11 	cmp  %g1, %l1
   17434:	14 bf ff f9 	bg  17418 <write_frame_header+0x1c>
   17438:	a0 04 20 54 	add  %l0, 0x54, %l0
   1743c:	c2 06 20 ac 	ld  [ %i0 + 0xac ], %g1
   17440:	80 a0 60 00 	cmp  %g1, 0
   17444:	12 80 00 2f 	bne  17500 <write_frame_header+0x104>
   17448:	a6 10 20 00 	clr  %l3
   1744c:	c2 06 20 dc 	ld  [ %i0 + 0xdc ], %g1
   17450:	80 a0 60 00 	cmp  %g1, 0
   17454:	32 80 00 2a 	bne,a   174fc <write_frame_header+0x100>
   17458:	c2 06 20 ac 	ld  [ %i0 + 0xac ], %g1
   1745c:	c2 06 20 30 	ld  [ %i0 + 0x30 ], %g1
   17460:	80 a0 60 08 	cmp  %g1, 8
   17464:	22 80 00 04 	be,a   17474 <write_frame_header+0x78>
   17468:	a6 10 20 01 	mov  1, %l3
   1746c:	10 80 00 24 	b  174fc <write_frame_header+0x100>
   17470:	c2 06 20 ac 	ld  [ %i0 + 0xac ], %g1
   17474:	a2 10 20 00 	clr  %l1
   17478:	c2 06 20 34 	ld  [ %i0 + 0x34 ], %g1
   1747c:	80 a0 60 00 	cmp  %g1, 0
   17480:	04 80 00 10 	ble  174c0 <write_frame_header+0xc4>
   17484:	e0 06 20 3c 	ld  [ %i0 + 0x3c ], %l0
   17488:	84 10 00 01 	mov  %g1, %g2
   1748c:	c2 04 20 14 	ld  [ %l0 + 0x14 ], %g1
   17490:	80 a0 60 01 	cmp  %g1, 1
   17494:	34 80 00 07 	bg,a   174b0 <write_frame_header+0xb4>
   17498:	a6 10 20 00 	clr  %l3
   1749c:	c2 04 20 18 	ld  [ %l0 + 0x18 ], %g1
   174a0:	80 a0 60 01 	cmp  %g1, 1
   174a4:	24 80 00 04 	ble,a   174b4 <write_frame_header+0xb8>
   174a8:	a2 04 60 01 	inc  %l1
   174ac:	a6 10 20 00 	clr  %l3
   174b0:	a2 04 60 01 	inc  %l1
   174b4:	80 a0 80 11 	cmp  %g2, %l1
   174b8:	14 bf ff f5 	bg  1748c <write_frame_header+0x90>
   174bc:	a0 04 20 54 	add  %l0, 0x54, %l0
   174c0:	80 a0 00 12 	cmp  %g0, %l2
   174c4:	82 40 20 00 	addx  %g0, 0, %g1
   174c8:	80 88 40 13 	btst  %g1, %l3
   174cc:	22 80 00 0c 	be,a   174fc <write_frame_header+0x100>
   174d0:	c2 06 20 ac 	ld  [ %i0 + 0xac ], %g1
   174d4:	a6 10 20 00 	clr  %l3
   174d8:	c4 06 00 00 	ld  [ %i0 ], %g2
   174dc:	82 10 20 4a 	mov  0x4a, %g1
   174e0:	c2 20 a0 14 	st  %g1, [ %g2 + 0x14 ]
   174e4:	c2 06 00 00 	ld  [ %i0 ], %g1
   174e8:	c2 00 60 04 	ld  [ %g1 + 4 ], %g1
   174ec:	90 10 00 18 	mov  %i0, %o0
   174f0:	9f c0 40 00 	call  %g1
   174f4:	92 10 20 00 	clr  %o1
   174f8:	c2 06 20 ac 	ld  [ %i0 + 0xac ], %g1
   174fc:	80 a0 60 00 	cmp  %g1, 0
   17500:	22 80 00 06 	be,a   17518 <write_frame_header+0x11c>
   17504:	c2 06 20 dc 	ld  [ %i0 + 0xdc ], %g1
   17508:	90 10 00 18 	mov  %i0, %o0
   1750c:	7f ff fe ad 	call  16fc0 <emit_sof>
   17510:	92 10 20 c9 	mov  0xc9, %o1
   17514:	30 80 00 0f 	b,a   17550 <write_frame_header+0x154>
   17518:	80 a0 60 00 	cmp  %g1, 0
   1751c:	02 80 00 06 	be  17534 <write_frame_header+0x138>
   17520:	80 a4 e0 00 	cmp  %l3, 0
   17524:	90 10 00 18 	mov  %i0, %o0
   17528:	7f ff fe a6 	call  16fc0 <emit_sof>
   1752c:	92 10 20 c2 	mov  0xc2, %o1
   17530:	30 80 00 08 	b,a   17550 <write_frame_header+0x154>
   17534:	02 80 00 05 	be  17548 <write_frame_header+0x14c>
   17538:	90 10 00 18 	mov  %i0, %o0
   1753c:	7f ff fe a1 	call  16fc0 <emit_sof>
   17540:	92 10 20 c0 	mov  0xc0, %o1
   17544:	30 80 00 03 	b,a   17550 <write_frame_header+0x154>
   17548:	7f ff fe 9e 	call  16fc0 <emit_sof>
   1754c:	92 10 20 c1 	mov  0xc1, %o1
   17550:	01 00 00 00 	nop 
   17554:	81 c7 e0 08 	ret 
   17558:	81 e8 00 00 	restore 

0001755c <write_scan_header>:
   1755c:	9d e3 bf 98 	save  %sp, -104, %sp
   17560:	c2 06 20 ac 	ld  [ %i0 + 0xac ], %g1
   17564:	80 a0 60 00 	cmp  %g1, 0
   17568:	32 80 00 2c 	bne,a   17618 <write_scan_header+0xbc>
   1756c:	c2 06 20 c0 	ld  [ %i0 + 0xc0 ], %g1
   17570:	c2 06 20 ec 	ld  [ %i0 + 0xec ], %g1
   17574:	80 a0 60 00 	cmp  %g1, 0
   17578:	04 80 00 27 	ble  17614 <write_scan_header+0xb8>
   1757c:	a2 10 20 00 	clr  %l1
   17580:	83 2c 60 02 	sll  %l1, 2, %g1
   17584:	82 00 40 18 	add  %g1, %i0, %g1
   17588:	e0 00 60 f0 	ld  [ %g1 + 0xf0 ], %l0
   1758c:	c2 06 20 dc 	ld  [ %i0 + 0xdc ], %g1
   17590:	80 a0 60 00 	cmp  %g1, 0
   17594:	02 80 00 14 	be  175e4 <write_scan_header+0x88>
   17598:	90 10 00 18 	mov  %i0, %o0
   1759c:	c2 06 21 34 	ld  [ %i0 + 0x134 ], %g1
   175a0:	80 a0 60 00 	cmp  %g1, 0
   175a4:	32 80 00 0c 	bne,a   175d4 <write_scan_header+0x78>
   175a8:	d2 04 20 18 	ld  [ %l0 + 0x18 ], %o1
   175ac:	c2 06 21 3c 	ld  [ %i0 + 0x13c ], %g1
   175b0:	80 a0 60 00 	cmp  %g1, 0
   175b4:	32 80 00 14 	bne,a   17604 <write_scan_header+0xa8>
   175b8:	a2 04 60 01 	inc  %l1
   175bc:	90 10 00 18 	mov  %i0, %o0
   175c0:	d2 04 20 14 	ld  [ %l0 + 0x14 ], %o1
   175c4:	7f ff fe 2f 	call  16e80 <emit_dht>
   175c8:	94 10 20 00 	clr  %o2
   175cc:	10 80 00 0e 	b  17604 <write_scan_header+0xa8>
   175d0:	a2 04 60 01 	inc  %l1
   175d4:	7f ff fe 2b 	call  16e80 <emit_dht>
   175d8:	94 10 20 01 	mov  1, %o2
   175dc:	10 80 00 0a 	b  17604 <write_scan_header+0xa8>
   175e0:	a2 04 60 01 	inc  %l1
   175e4:	d2 04 20 14 	ld  [ %l0 + 0x14 ], %o1
   175e8:	7f ff fe 26 	call  16e80 <emit_dht>
   175ec:	94 10 20 00 	clr  %o2
   175f0:	90 10 00 18 	mov  %i0, %o0
   175f4:	d2 04 20 18 	ld  [ %l0 + 0x18 ], %o1
   175f8:	7f ff fe 22 	call  16e80 <emit_dht>
   175fc:	94 10 20 01 	mov  1, %o2
   17600:	a2 04 60 01 	inc  %l1
   17604:	c2 06 20 ec 	ld  [ %i0 + 0xec ], %g1
   17608:	80 a0 40 11 	cmp  %g1, %l1
   1760c:	14 bf ff de 	bg  17584 <write_scan_header+0x28>
   17610:	83 2c 60 02 	sll  %l1, 2, %g1
   17614:	c2 06 20 c0 	ld  [ %i0 + 0xc0 ], %g1
   17618:	80 a0 60 00 	cmp  %g1, 0
   1761c:	02 80 00 04 	be  1762c <write_scan_header+0xd0>
   17620:	01 00 00 00 	nop 
   17624:	7f ff fe 5a 	call  16f8c <emit_dri>
   17628:	90 10 00 18 	mov  %i0, %o0
   1762c:	7f ff fe a8 	call  170cc <emit_sos>
   17630:	90 10 00 18 	mov  %i0, %o0
   17634:	01 00 00 00 	nop 
   17638:	81 c7 e0 08 	ret 
   1763c:	81 e8 00 00 	restore 

00017640 <write_file_trailer>:
   17640:	9d e3 bf 98 	save  %sp, -104, %sp
   17644:	90 10 00 18 	mov  %i0, %o0
   17648:	7f ff fd b5 	call  16d1c <emit_marker>
   1764c:	92 10 20 d9 	mov  0xd9, %o1
   17650:	01 00 00 00 	nop 
   17654:	81 c7 e0 08 	ret 
   17658:	81 e8 00 00 	restore 

0001765c <write_tables_only>:
   1765c:	9d e3 bf 98 	save  %sp, -104, %sp
   17660:	90 10 00 18 	mov  %i0, %o0
   17664:	7f ff fd ae 	call  16d1c <emit_marker>
   17668:	92 10 20 d8 	mov  0xd8, %o1
   1766c:	a0 10 20 00 	clr  %l0
   17670:	83 2c 20 02 	sll  %l0, 2, %g1
   17674:	82 00 40 18 	add  %g1, %i0, %g1
   17678:	c2 00 60 40 	ld  [ %g1 + 0x40 ], %g1
   1767c:	80 a0 60 00 	cmp  %g1, 0
   17680:	22 80 00 06 	be,a   17698 <write_tables_only+0x3c>
   17684:	a0 04 20 01 	inc  %l0
   17688:	90 10 00 18 	mov  %i0, %o0
   1768c:	7f ff fd b9 	call  16d70 <emit_dqt>
   17690:	92 10 00 10 	mov  %l0, %o1
   17694:	a0 04 20 01 	inc  %l0
   17698:	80 a4 20 03 	cmp  %l0, 3
   1769c:	04 bf ff f6 	ble  17674 <write_tables_only+0x18>
   176a0:	83 2c 20 02 	sll  %l0, 2, %g1
   176a4:	c2 06 20 ac 	ld  [ %i0 + 0xac ], %g1
   176a8:	80 a0 60 00 	cmp  %g1, 0
   176ac:	12 80 00 1c 	bne  1771c <write_tables_only+0xc0>
   176b0:	90 10 00 18 	mov  %i0, %o0
   176b4:	a0 10 20 00 	clr  %l0
   176b8:	83 2c 20 02 	sll  %l0, 2, %g1
   176bc:	82 00 40 18 	add  %g1, %i0, %g1
   176c0:	c2 00 60 50 	ld  [ %g1 + 0x50 ], %g1
   176c4:	80 a0 60 00 	cmp  %g1, 0
   176c8:	02 80 00 07 	be  176e4 <write_tables_only+0x88>
   176cc:	83 2c 20 02 	sll  %l0, 2, %g1
   176d0:	90 10 00 18 	mov  %i0, %o0
   176d4:	92 10 00 10 	mov  %l0, %o1
   176d8:	7f ff fd ea 	call  16e80 <emit_dht>
   176dc:	94 10 20 00 	clr  %o2
   176e0:	83 2c 20 02 	sll  %l0, 2, %g1
   176e4:	82 00 40 18 	add  %g1, %i0, %g1
   176e8:	c2 00 60 60 	ld  [ %g1 + 0x60 ], %g1
   176ec:	80 a0 60 00 	cmp  %g1, 0
   176f0:	22 80 00 07 	be,a   1770c <write_tables_only+0xb0>
   176f4:	a0 04 20 01 	inc  %l0
   176f8:	90 10 00 18 	mov  %i0, %o0
   176fc:	92 10 00 10 	mov  %l0, %o1
   17700:	7f ff fd e0 	call  16e80 <emit_dht>
   17704:	94 10 20 01 	mov  1, %o2
   17708:	a0 04 20 01 	inc  %l0
   1770c:	80 a4 20 03 	cmp  %l0, 3
   17710:	04 bf ff eb 	ble  176bc <write_tables_only+0x60>
   17714:	83 2c 20 02 	sll  %l0, 2, %g1
   17718:	90 10 00 18 	mov  %i0, %o0
   1771c:	7f ff fd 80 	call  16d1c <emit_marker>
   17720:	92 10 20 d9 	mov  0xd9, %o1
   17724:	01 00 00 00 	nop 
   17728:	81 c7 e0 08 	ret 
   1772c:	81 e8 00 00 	restore 

00017730 <jinit_marker_writer>:
   17730:	9d e3 bf 98 	save  %sp, -104, %sp
   17734:	c2 06 20 04 	ld  [ %i0 + 4 ], %g1
   17738:	c2 00 40 00 	ld  [ %g1 ], %g1
   1773c:	90 10 00 18 	mov  %i0, %o0
   17740:	92 10 20 01 	mov  1, %o1
   17744:	9f c0 40 00 	call  %g1
   17748:	94 10 20 18 	mov  0x18, %o2
   1774c:	d0 26 21 54 	st  %o0, [ %i0 + 0x154 ]
   17750:	03 00 00 5c 	sethi  %hi(0x17000), %g1
   17754:	82 10 63 50 	or  %g1, 0x350, %g1	! 17350 <write_any_marker>
   17758:	c2 22 00 00 	st  %g1, [ %o0 ]
   1775c:	c4 06 21 54 	ld  [ %i0 + 0x154 ], %g2
   17760:	03 00 00 5c 	sethi  %hi(0x17000), %g1
   17764:	82 10 63 b0 	or  %g1, 0x3b0, %g1	! 173b0 <write_file_header>
   17768:	c2 20 a0 04 	st  %g1, [ %g2 + 4 ]
   1776c:	c4 06 21 54 	ld  [ %i0 + 0x154 ], %g2
   17770:	03 00 00 5c 	sethi  %hi(0x17000), %g1
   17774:	82 10 63 fc 	or  %g1, 0x3fc, %g1	! 173fc <write_frame_header>
   17778:	c2 20 a0 08 	st  %g1, [ %g2 + 8 ]
   1777c:	c4 06 21 54 	ld  [ %i0 + 0x154 ], %g2
   17780:	03 00 00 5d 	sethi  %hi(0x17400), %g1
   17784:	82 10 61 5c 	or  %g1, 0x15c, %g1	! 1755c <write_scan_header>
   17788:	c2 20 a0 0c 	st  %g1, [ %g2 + 0xc ]
   1778c:	c4 06 21 54 	ld  [ %i0 + 0x154 ], %g2
   17790:	03 00 00 5d 	sethi  %hi(0x17400), %g1
   17794:	82 10 62 40 	or  %g1, 0x240, %g1	! 17640 <write_file_trailer>
   17798:	c2 20 a0 10 	st  %g1, [ %g2 + 0x10 ]
   1779c:	c4 06 21 54 	ld  [ %i0 + 0x154 ], %g2
   177a0:	03 00 00 5d 	sethi  %hi(0x17400), %g1
   177a4:	82 10 62 5c 	or  %g1, 0x25c, %g1	! 1765c <write_tables_only>
   177a8:	c2 20 a0 14 	st  %g1, [ %g2 + 0x14 ]
   177ac:	81 c7 e0 08 	ret 
   177b0:	81 e8 00 00 	restore 

000177b4 <start_pass_main>:
   177b4:	9d e3 bf 98 	save  %sp, -104, %sp
   177b8:	90 10 00 18 	mov  %i0, %o0
   177bc:	c2 06 20 a8 	ld  [ %i0 + 0xa8 ], %g1
   177c0:	80 a0 60 00 	cmp  %g1, 0
   177c4:	12 80 00 13 	bne  17810 <start_pass_main+0x5c>
   177c8:	c4 06 21 48 	ld  [ %i0 + 0x148 ], %g2
   177cc:	c0 20 a0 08 	clr  [ %g2 + 8 ]
   177d0:	c0 20 a0 0c 	clr  [ %g2 + 0xc ]
   177d4:	c0 20 a0 10 	clr  [ %g2 + 0x10 ]
   177d8:	80 a6 60 00 	cmp  %i1, 0
   177dc:	12 80 00 06 	bne  177f4 <start_pass_main+0x40>
   177e0:	f2 20 a0 14 	st  %i1, [ %g2 + 0x14 ]
   177e4:	03 00 00 5e 	sethi  %hi(0x17800), %g1
   177e8:	82 10 60 1c 	or  %g1, 0x1c, %g1	! 1781c <process_data_simple_main>
   177ec:	10 80 00 09 	b  17810 <start_pass_main+0x5c>
   177f0:	c2 20 a0 04 	st  %g1, [ %g2 + 4 ]
   177f4:	c4 06 00 00 	ld  [ %i0 ], %g2
   177f8:	82 10 20 04 	mov  4, %g1
   177fc:	c2 20 a0 14 	st  %g1, [ %g2 + 0x14 ]
   17800:	c2 06 00 00 	ld  [ %i0 ], %g1
   17804:	c2 00 40 00 	ld  [ %g1 ], %g1
   17808:	9f c0 40 00 	call  %g1
   1780c:	01 00 00 00 	nop 
   17810:	01 00 00 00 	nop 
   17814:	81 c7 e0 08 	ret 
   17818:	81 e8 00 00 	restore 

0001781c <process_data_simple_main>:
   1781c:	9d e3 bf 90 	save  %sp, -112, %sp
   17820:	e0 06 21 48 	ld  [ %i0 + 0x148 ], %l0
   17824:	c4 04 20 08 	ld  [ %l0 + 8 ], %g2
   17828:	c2 06 20 e8 	ld  [ %i0 + 0xe8 ], %g1
   1782c:	80 a0 80 01 	cmp  %g2, %g1
   17830:	1a 80 00 34 	bcc  17900 <process_data_simple_main+0xe4>
   17834:	01 00 00 00 	nop 
   17838:	c2 04 20 0c 	ld  [ %l0 + 0xc ], %g1
   1783c:	80 a0 60 07 	cmp  %g1, 7
   17840:	18 80 00 0f 	bgu  1787c <process_data_simple_main+0x60>
   17844:	80 a0 60 08 	cmp  %g1, 8
   17848:	c2 06 21 4c 	ld  [ %i0 + 0x14c ], %g1
   1784c:	84 10 20 08 	mov  8, %g2
   17850:	c4 23 a0 5c 	st  %g2, [ %sp + 0x5c ]
   17854:	c2 00 60 04 	ld  [ %g1 + 4 ], %g1
   17858:	90 10 00 18 	mov  %i0, %o0
   1785c:	92 10 00 19 	mov  %i1, %o1
   17860:	94 10 00 1a 	mov  %i2, %o2
   17864:	96 10 00 1b 	mov  %i3, %o3
   17868:	98 04 20 18 	add  %l0, 0x18, %o4
   1786c:	9f c0 40 00 	call  %g1
   17870:	9a 04 20 0c 	add  %l0, 0xc, %o5
   17874:	c2 04 20 0c 	ld  [ %l0 + 0xc ], %g1
   17878:	80 a0 60 08 	cmp  %g1, 8
   1787c:	12 80 00 21 	bne  17900 <process_data_simple_main+0xe4>
   17880:	90 10 00 18 	mov  %i0, %o0
   17884:	c2 06 21 50 	ld  [ %i0 + 0x150 ], %g1
   17888:	c2 00 60 04 	ld  [ %g1 + 4 ], %g1
   1788c:	9f c0 40 00 	call  %g1
   17890:	92 04 20 18 	add  %l0, 0x18, %o1
   17894:	80 a2 20 00 	cmp  %o0, 0
   17898:	12 80 00 0b 	bne  178c4 <process_data_simple_main+0xa8>
   1789c:	c2 04 20 10 	ld  [ %l0 + 0x10 ], %g1
   178a0:	80 a0 60 00 	cmp  %g1, 0
   178a4:	12 80 00 17 	bne  17900 <process_data_simple_main+0xe4>
   178a8:	01 00 00 00 	nop 
   178ac:	c2 06 80 00 	ld  [ %i2 ], %g1
   178b0:	82 00 7f ff 	add  %g1, -1, %g1
   178b4:	c2 26 80 00 	st  %g1, [ %i2 ]
   178b8:	82 10 20 01 	mov  1, %g1
   178bc:	10 80 00 11 	b  17900 <process_data_simple_main+0xe4>
   178c0:	c2 24 20 10 	st  %g1, [ %l0 + 0x10 ]
   178c4:	80 a0 60 00 	cmp  %g1, 0
   178c8:	22 80 00 07 	be,a   178e4 <process_data_simple_main+0xc8>
   178cc:	c0 24 20 0c 	clr  [ %l0 + 0xc ]
   178d0:	c2 06 80 00 	ld  [ %i2 ], %g1
   178d4:	82 00 60 01 	inc  %g1
   178d8:	c2 26 80 00 	st  %g1, [ %i2 ]
   178dc:	c0 24 20 10 	clr  [ %l0 + 0x10 ]
   178e0:	c0 24 20 0c 	clr  [ %l0 + 0xc ]
   178e4:	c2 04 20 08 	ld  [ %l0 + 8 ], %g1
   178e8:	82 00 60 01 	inc  %g1
   178ec:	c2 24 20 08 	st  %g1, [ %l0 + 8 ]
   178f0:	c4 06 20 e8 	ld  [ %i0 + 0xe8 ], %g2
   178f4:	80 a0 40 02 	cmp  %g1, %g2
   178f8:	2a bf ff d1 	bcs,a   1783c <process_data_simple_main+0x20>
   178fc:	c2 04 20 0c 	ld  [ %l0 + 0xc ], %g1
   17900:	81 c7 e0 08 	ret 
   17904:	81 e8 00 00 	restore 

00017908 <jinit_c_main_controller>:
   17908:	9d e3 bf 98 	save  %sp, -104, %sp
   1790c:	c2 06 20 04 	ld  [ %i0 + 4 ], %g1
   17910:	c2 00 40 00 	ld  [ %g1 ], %g1
   17914:	90 10 00 18 	mov  %i0, %o0
   17918:	92 10 20 01 	mov  1, %o1
   1791c:	9f c0 40 00 	call  %g1
   17920:	94 10 20 40 	mov  0x40, %o2
   17924:	d0 26 21 48 	st  %o0, [ %i0 + 0x148 ]
   17928:	03 00 00 5d 	sethi  %hi(0x17400), %g1
   1792c:	82 10 63 b4 	or  %g1, 0x3b4, %g1	! 177b4 <start_pass_main>
   17930:	c2 22 00 00 	st  %g1, [ %o0 ]
   17934:	c2 06 20 a8 	ld  [ %i0 + 0xa8 ], %g1
   17938:	80 a0 60 00 	cmp  %g1, 0
   1793c:	12 80 00 22 	bne  179c4 <jinit_c_main_controller+0xbc>
   17940:	a4 10 00 08 	mov  %o0, %l2
   17944:	80 a6 60 00 	cmp  %i1, 0
   17948:	02 80 00 0a 	be  17970 <jinit_c_main_controller+0x68>
   1794c:	a2 10 20 00 	clr  %l1
   17950:	c4 06 00 00 	ld  [ %i0 ], %g2
   17954:	82 10 20 04 	mov  4, %g1
   17958:	c2 20 a0 14 	st  %g1, [ %g2 + 0x14 ]
   1795c:	c2 06 00 00 	ld  [ %i0 ], %g1
   17960:	c2 00 40 00 	ld  [ %g1 ], %g1
   17964:	9f c0 40 00 	call  %g1
   17968:	90 10 00 18 	mov  %i0, %o0
   1796c:	30 80 00 16 	b,a   179c4 <jinit_c_main_controller+0xbc>
   17970:	c2 06 20 34 	ld  [ %i0 + 0x34 ], %g1
   17974:	80 a0 60 00 	cmp  %g1, 0
   17978:	04 80 00 13 	ble  179c4 <jinit_c_main_controller+0xbc>
   1797c:	f2 06 20 3c 	ld  [ %i0 + 0x3c ], %i1
   17980:	a1 2c 60 02 	sll  %l1, 2, %l0
   17984:	a0 04 00 12 	add  %l0, %l2, %l0
   17988:	c2 06 20 04 	ld  [ %i0 + 4 ], %g1
   1798c:	d4 06 60 1c 	ld  [ %i1 + 0x1c ], %o2
   17990:	d6 06 60 0c 	ld  [ %i1 + 0xc ], %o3
   17994:	c2 00 60 08 	ld  [ %g1 + 8 ], %g1
   17998:	90 10 00 18 	mov  %i0, %o0
   1799c:	92 10 20 01 	mov  1, %o1
   179a0:	95 2a a0 03 	sll  %o2, 3, %o2
   179a4:	9f c0 40 00 	call  %g1
   179a8:	97 2a e0 03 	sll  %o3, 3, %o3
   179ac:	d0 24 20 18 	st  %o0, [ %l0 + 0x18 ]
   179b0:	a2 04 60 01 	inc  %l1
   179b4:	c2 06 20 34 	ld  [ %i0 + 0x34 ], %g1
   179b8:	80 a0 40 11 	cmp  %g1, %l1
   179bc:	14 bf ff f1 	bg  17980 <jinit_c_main_controller+0x78>
   179c0:	b2 06 60 54 	add  %i1, 0x54, %i1
   179c4:	81 c7 e0 08 	ret 
   179c8:	81 e8 00 00 	restore 

000179cc <start_pass_prep>:
   179cc:	9d e3 bf 98 	save  %sp, -104, %sp
   179d0:	80 a6 60 00 	cmp  %i1, 0
   179d4:	02 80 00 09 	be  179f8 <start_pass_prep+0x2c>
   179d8:	e0 06 21 4c 	ld  [ %i0 + 0x14c ], %l0
   179dc:	c4 06 00 00 	ld  [ %i0 ], %g2
   179e0:	82 10 20 04 	mov  4, %g1
   179e4:	c2 20 a0 14 	st  %g1, [ %g2 + 0x14 ]
   179e8:	c2 06 00 00 	ld  [ %i0 ], %g1
   179ec:	c2 00 40 00 	ld  [ %g1 ], %g1
   179f0:	9f c0 40 00 	call  %g1
   179f4:	90 10 00 18 	mov  %i0, %o0
   179f8:	c2 06 20 1c 	ld  [ %i0 + 0x1c ], %g1
   179fc:	c2 24 20 30 	st  %g1, [ %l0 + 0x30 ]
   17a00:	c0 24 20 34 	clr  [ %l0 + 0x34 ]
   17a04:	c0 24 20 38 	clr  [ %l0 + 0x38 ]
   17a08:	c2 06 20 e4 	ld  [ %i0 + 0xe4 ], %g1
   17a0c:	82 00 40 01 	add  %g1, %g1, %g1
   17a10:	c2 24 20 3c 	st  %g1, [ %l0 + 0x3c ]
   17a14:	81 c7 e0 08 	ret 
   17a18:	81 e8 00 00 	restore 

00017a1c <expand_bottom_edge>:
   17a1c:	9d e3 bf 98 	save  %sp, -104, %sp
   17a20:	80 a6 80 1b 	cmp  %i2, %i3
   17a24:	16 80 00 0d 	bge  17a58 <expand_bottom_edge+0x3c>
   17a28:	a0 10 00 1a 	mov  %i2, %l0
   17a2c:	90 10 00 18 	mov  %i0, %o0
   17a30:	92 06 bf ff 	add  %i2, -1, %o1
   17a34:	94 10 00 18 	mov  %i0, %o2
   17a38:	96 10 00 10 	mov  %l0, %o3
   17a3c:	98 10 20 01 	mov  1, %o4
   17a40:	40 00 18 f3 	call  1de0c <jcopy_sample_rows>
   17a44:	9a 10 00 19 	mov  %i1, %o5
   17a48:	a0 04 20 01 	inc  %l0
   17a4c:	80 a4 00 1b 	cmp  %l0, %i3
   17a50:	06 bf ff f8 	bl  17a30 <expand_bottom_edge+0x14>
   17a54:	90 10 00 18 	mov  %i0, %o0
   17a58:	81 c7 e0 08 	ret 
   17a5c:	81 e8 00 00 	restore 

00017a60 <pre_process_data>:
   17a60:	9d e3 bf 98 	save  %sp, -104, %sp
   17a64:	e4 07 a0 5c 	ld  [ %fp + 0x5c ], %l2
   17a68:	e2 06 21 4c 	ld  [ %i0 + 0x14c ], %l1
   17a6c:	c2 06 80 00 	ld  [ %i2 ], %g1
   17a70:	80 a0 40 1b 	cmp  %g1, %i3
   17a74:	1a 80 00 6c 	bcc  17c24 <pre_process_data+0x1c4>
   17a78:	84 10 00 01 	mov  %g1, %g2
   17a7c:	c2 07 40 00 	ld  [ %i5 ], %g1
   17a80:	80 a0 40 12 	cmp  %g1, %l2
   17a84:	1a 80 00 68 	bcc  17c24 <pre_process_data+0x1c4>
   17a88:	86 26 c0 02 	sub  %i3, %g2, %g3
   17a8c:	c4 06 20 e4 	ld  [ %i0 + 0xe4 ], %g2
   17a90:	c2 04 60 34 	ld  [ %l1 + 0x34 ], %g1
   17a94:	a0 20 80 01 	sub  %g2, %g1, %l0
   17a98:	80 a4 00 03 	cmp  %l0, %g3
   17a9c:	38 80 00 02 	bgu,a   17aa4 <pre_process_data+0x44>
   17aa0:	a0 10 00 03 	mov  %g3, %l0
   17aa4:	c2 06 21 58 	ld  [ %i0 + 0x158 ], %g1
   17aa8:	d2 06 80 00 	ld  [ %i2 ], %o1
   17aac:	93 2a 60 02 	sll  %o1, 2, %o1
   17ab0:	c2 00 60 04 	ld  [ %g1 + 4 ], %g1
   17ab4:	90 10 00 18 	mov  %i0, %o0
   17ab8:	92 02 40 19 	add  %o1, %i1, %o1
   17abc:	94 04 60 08 	add  %l1, 8, %o2
   17ac0:	d6 04 60 34 	ld  [ %l1 + 0x34 ], %o3
   17ac4:	9f c0 40 00 	call  %g1
   17ac8:	98 10 00 10 	mov  %l0, %o4
   17acc:	c2 06 80 00 	ld  [ %i2 ], %g1
   17ad0:	82 04 00 01 	add  %l0, %g1, %g1
   17ad4:	c2 26 80 00 	st  %g1, [ %i2 ]
   17ad8:	c2 04 60 34 	ld  [ %l1 + 0x34 ], %g1
   17adc:	84 04 00 01 	add  %l0, %g1, %g2
   17ae0:	c4 24 60 34 	st  %g2, [ %l1 + 0x34 ]
   17ae4:	c2 04 60 30 	ld  [ %l1 + 0x30 ], %g1
   17ae8:	82 20 40 10 	sub  %g1, %l0, %g1
   17aec:	80 a0 60 00 	cmp  %g1, 0
   17af0:	12 80 00 18 	bne  17b50 <pre_process_data+0xf0>
   17af4:	c2 24 60 30 	st  %g1, [ %l1 + 0x30 ]
   17af8:	c2 06 20 e4 	ld  [ %i0 + 0xe4 ], %g1
   17afc:	80 a0 80 01 	cmp  %g2, %g1
   17b00:	36 80 00 16 	bge,a   17b58 <pre_process_data+0xf8>
   17b04:	c4 04 60 34 	ld  [ %l1 + 0x34 ], %g2
   17b08:	c2 06 20 34 	ld  [ %i0 + 0x34 ], %g1
   17b0c:	80 a0 60 00 	cmp  %g1, 0
   17b10:	04 80 00 0e 	ble  17b48 <pre_process_data+0xe8>
   17b14:	a0 10 20 00 	clr  %l0
   17b18:	83 2c 20 02 	sll  %l0, 2, %g1
   17b1c:	82 00 40 11 	add  %g1, %l1, %g1
   17b20:	d0 00 60 08 	ld  [ %g1 + 8 ], %o0
   17b24:	d2 06 20 18 	ld  [ %i0 + 0x18 ], %o1
   17b28:	d4 04 60 34 	ld  [ %l1 + 0x34 ], %o2
   17b2c:	7f ff ff bc 	call  17a1c <expand_bottom_edge>
   17b30:	d6 06 20 e4 	ld  [ %i0 + 0xe4 ], %o3
   17b34:	a0 04 20 01 	inc  %l0
   17b38:	c2 06 20 34 	ld  [ %i0 + 0x34 ], %g1
   17b3c:	80 a0 40 10 	cmp  %g1, %l0
   17b40:	14 bf ff f7 	bg  17b1c <pre_process_data+0xbc>
   17b44:	83 2c 20 02 	sll  %l0, 2, %g1
   17b48:	c2 06 20 e4 	ld  [ %i0 + 0xe4 ], %g1
   17b4c:	c2 24 60 34 	st  %g1, [ %l1 + 0x34 ]
   17b50:	c4 04 60 34 	ld  [ %l1 + 0x34 ], %g2
   17b54:	c2 06 20 e4 	ld  [ %i0 + 0xe4 ], %g1
   17b58:	80 a0 80 01 	cmp  %g2, %g1
   17b5c:	32 80 00 0f 	bne,a   17b98 <pre_process_data+0x138>
   17b60:	c2 04 60 30 	ld  [ %l1 + 0x30 ], %g1
   17b64:	c2 06 21 5c 	ld  [ %i0 + 0x15c ], %g1
   17b68:	c2 00 60 04 	ld  [ %g1 + 4 ], %g1
   17b6c:	90 10 00 18 	mov  %i0, %o0
   17b70:	92 04 60 08 	add  %l1, 8, %o1
   17b74:	94 10 20 00 	clr  %o2
   17b78:	96 10 00 1c 	mov  %i4, %o3
   17b7c:	9f c0 40 00 	call  %g1
   17b80:	d8 07 40 00 	ld  [ %i5 ], %o4
   17b84:	c0 24 60 34 	clr  [ %l1 + 0x34 ]
   17b88:	c2 07 40 00 	ld  [ %i5 ], %g1
   17b8c:	82 00 60 01 	inc  %g1
   17b90:	c2 27 40 00 	st  %g1, [ %i5 ]
   17b94:	c2 04 60 30 	ld  [ %l1 + 0x30 ], %g1
   17b98:	80 a0 60 00 	cmp  %g1, 0
   17b9c:	32 80 00 1b 	bne,a   17c08 <pre_process_data+0x1a8>
   17ba0:	c4 06 80 00 	ld  [ %i2 ], %g2
   17ba4:	c2 07 40 00 	ld  [ %i5 ], %g1
   17ba8:	80 a0 40 12 	cmp  %g1, %l2
   17bac:	3a 80 00 17 	bcc,a   17c08 <pre_process_data+0x1a8>
   17bb0:	c4 06 80 00 	ld  [ %i2 ], %g2
   17bb4:	a0 10 20 00 	clr  %l0
   17bb8:	c2 06 20 34 	ld  [ %i0 + 0x34 ], %g1
   17bbc:	80 a0 60 00 	cmp  %g1, 0
   17bc0:	04 80 00 10 	ble  17c00 <pre_process_data+0x1a0>
   17bc4:	e2 06 20 3c 	ld  [ %i0 + 0x3c ], %l1
   17bc8:	83 2c 20 02 	sll  %l0, 2, %g1
   17bcc:	d2 04 60 1c 	ld  [ %l1 + 0x1c ], %o1
   17bd0:	d4 07 40 00 	ld  [ %i5 ], %o2
   17bd4:	d6 04 60 0c 	ld  [ %l1 + 0xc ], %o3
   17bd8:	d0 07 00 01 	ld  [ %i4 + %g1 ], %o0
   17bdc:	93 2a 60 03 	sll  %o1, 3, %o1
   17be0:	94 5a 80 0b 	smul  %o2, %o3, %o2
   17be4:	7f ff ff 8e 	call  17a1c <expand_bottom_edge>
   17be8:	96 5c 80 0b 	smul  %l2, %o3, %o3
   17bec:	a0 04 20 01 	inc  %l0
   17bf0:	c2 06 20 34 	ld  [ %i0 + 0x34 ], %g1
   17bf4:	80 a0 40 10 	cmp  %g1, %l0
   17bf8:	14 bf ff f4 	bg  17bc8 <pre_process_data+0x168>
   17bfc:	a2 04 60 54 	add  %l1, 0x54, %l1
   17c00:	10 80 00 09 	b  17c24 <pre_process_data+0x1c4>
   17c04:	e4 27 40 00 	st  %l2, [ %i5 ]
   17c08:	80 a0 80 1b 	cmp  %g2, %i3
   17c0c:	1a 80 00 06 	bcc  17c24 <pre_process_data+0x1c4>
   17c10:	01 00 00 00 	nop 
   17c14:	c2 07 40 00 	ld  [ %i5 ], %g1
   17c18:	80 a0 40 12 	cmp  %g1, %l2
   17c1c:	0a bf ff 9c 	bcs  17a8c <pre_process_data+0x2c>
   17c20:	86 26 c0 02 	sub  %i3, %g2, %g3
   17c24:	81 c7 e0 08 	ret 
   17c28:	81 e8 00 00 	restore 

00017c2c <pre_process_context>:
   17c2c:	9d e3 bf 98 	save  %sp, -104, %sp
   17c30:	ea 07 a0 5c 	ld  [ %fp + 0x5c ], %l5
   17c34:	c2 06 20 e4 	ld  [ %i0 + 0xe4 ], %g1
   17c38:	84 00 40 01 	add  %g1, %g1, %g2
   17c3c:	ac 00 80 01 	add  %g2, %g1, %l6
   17c40:	c2 07 40 00 	ld  [ %i5 ], %g1
   17c44:	80 a0 40 15 	cmp  %g1, %l5
   17c48:	1a 80 00 7e 	bcc  17e40 <pre_process_context+0x214>
   17c4c:	e4 06 21 4c 	ld  [ %i0 + 0x14c ], %l2
   17c50:	c2 06 80 00 	ld  [ %i2 ], %g1
   17c54:	80 a0 40 1b 	cmp  %g1, %i3
   17c58:	3a 80 00 3d 	bcc,a   17d4c <pre_process_context+0x120>
   17c5c:	c2 04 a0 30 	ld  [ %l2 + 0x30 ], %g1
   17c60:	86 26 c0 01 	sub  %i3, %g1, %g3
   17c64:	c4 04 a0 3c 	ld  [ %l2 + 0x3c ], %g2
   17c68:	c2 04 a0 34 	ld  [ %l2 + 0x34 ], %g1
   17c6c:	a8 20 80 01 	sub  %g2, %g1, %l4
   17c70:	80 a5 00 03 	cmp  %l4, %g3
   17c74:	38 80 00 02 	bgu,a   17c7c <pre_process_context+0x50>
   17c78:	a8 10 00 03 	mov  %g3, %l4
   17c7c:	c2 06 21 58 	ld  [ %i0 + 0x158 ], %g1
   17c80:	d2 06 80 00 	ld  [ %i2 ], %o1
   17c84:	93 2a 60 02 	sll  %o1, 2, %o1
   17c88:	c2 00 60 04 	ld  [ %g1 + 4 ], %g1
   17c8c:	90 10 00 18 	mov  %i0, %o0
   17c90:	92 02 40 19 	add  %o1, %i1, %o1
   17c94:	94 04 a0 08 	add  %l2, 8, %o2
   17c98:	d6 04 a0 34 	ld  [ %l2 + 0x34 ], %o3
   17c9c:	9f c0 40 00 	call  %g1
   17ca0:	98 10 00 14 	mov  %l4, %o4
   17ca4:	c4 04 a0 30 	ld  [ %l2 + 0x30 ], %g2
   17ca8:	c2 06 20 1c 	ld  [ %i0 + 0x1c ], %g1
   17cac:	80 a0 80 01 	cmp  %g2, %g1
   17cb0:	32 80 00 1e 	bne,a   17d28 <pre_process_context+0xfc>
   17cb4:	c2 06 80 00 	ld  [ %i2 ], %g1
   17cb8:	c2 06 20 34 	ld  [ %i0 + 0x34 ], %g1
   17cbc:	80 a0 60 00 	cmp  %g1, 0
   17cc0:	04 80 00 19 	ble  17d24 <pre_process_context+0xf8>
   17cc4:	a6 10 20 00 	clr  %l3
   17cc8:	c2 06 20 e4 	ld  [ %i0 + 0xe4 ], %g1
   17ccc:	80 a0 60 01 	cmp  %g1, 1
   17cd0:	06 80 00 10 	bl  17d10 <pre_process_context+0xe4>
   17cd4:	a0 10 20 01 	mov  1, %l0
   17cd8:	83 2c e0 02 	sll  %l3, 2, %g1
   17cdc:	a2 00 40 12 	add  %g1, %l2, %l1
   17ce0:	d0 04 60 08 	ld  [ %l1 + 8 ], %o0
   17ce4:	92 10 20 00 	clr  %o1
   17ce8:	94 10 00 08 	mov  %o0, %o2
   17cec:	96 20 00 10 	neg  %l0, %o3
   17cf0:	98 10 20 01 	mov  1, %o4
   17cf4:	40 00 18 46 	call  1de0c <jcopy_sample_rows>
   17cf8:	da 06 20 18 	ld  [ %i0 + 0x18 ], %o5
   17cfc:	a0 04 20 01 	inc  %l0
   17d00:	c2 06 20 e4 	ld  [ %i0 + 0xe4 ], %g1
   17d04:	80 a0 40 10 	cmp  %g1, %l0
   17d08:	36 bf ff f7 	bge,a   17ce4 <pre_process_context+0xb8>
   17d0c:	d0 04 60 08 	ld  [ %l1 + 8 ], %o0
   17d10:	a6 04 e0 01 	inc  %l3
   17d14:	c2 06 20 34 	ld  [ %i0 + 0x34 ], %g1
   17d18:	80 a0 40 13 	cmp  %g1, %l3
   17d1c:	34 bf ff ec 	bg,a   17ccc <pre_process_context+0xa0>
   17d20:	c2 06 20 e4 	ld  [ %i0 + 0xe4 ], %g1
   17d24:	c2 06 80 00 	ld  [ %i2 ], %g1
   17d28:	82 05 00 01 	add  %l4, %g1, %g1
   17d2c:	c2 26 80 00 	st  %g1, [ %i2 ]
   17d30:	c2 04 a0 34 	ld  [ %l2 + 0x34 ], %g1
   17d34:	82 05 00 01 	add  %l4, %g1, %g1
   17d38:	c2 24 a0 34 	st  %g1, [ %l2 + 0x34 ]
   17d3c:	c2 04 a0 30 	ld  [ %l2 + 0x30 ], %g1
   17d40:	82 20 40 14 	sub  %g1, %l4, %g1
   17d44:	10 80 00 1c 	b  17db4 <pre_process_context+0x188>
   17d48:	c2 24 a0 30 	st  %g1, [ %l2 + 0x30 ]
   17d4c:	80 a0 60 00 	cmp  %g1, 0
   17d50:	12 80 00 3c 	bne  17e40 <pre_process_context+0x214>
   17d54:	01 00 00 00 	nop 
   17d58:	c4 04 a0 34 	ld  [ %l2 + 0x34 ], %g2
   17d5c:	c2 04 a0 3c 	ld  [ %l2 + 0x3c ], %g1
   17d60:	80 a0 80 01 	cmp  %g2, %g1
   17d64:	16 80 00 17 	bge  17dc0 <pre_process_context+0x194>
   17d68:	01 00 00 00 	nop 
   17d6c:	c2 06 20 34 	ld  [ %i0 + 0x34 ], %g1
   17d70:	80 a0 60 00 	cmp  %g1, 0
   17d74:	04 80 00 0e 	ble  17dac <pre_process_context+0x180>
   17d78:	a6 10 20 00 	clr  %l3
   17d7c:	83 2c e0 02 	sll  %l3, 2, %g1
   17d80:	82 00 40 12 	add  %g1, %l2, %g1
   17d84:	d0 00 60 08 	ld  [ %g1 + 8 ], %o0
   17d88:	d2 06 20 18 	ld  [ %i0 + 0x18 ], %o1
   17d8c:	d4 04 a0 34 	ld  [ %l2 + 0x34 ], %o2
   17d90:	7f ff ff 23 	call  17a1c <expand_bottom_edge>
   17d94:	d6 04 a0 3c 	ld  [ %l2 + 0x3c ], %o3
   17d98:	a6 04 e0 01 	inc  %l3
   17d9c:	c2 06 20 34 	ld  [ %i0 + 0x34 ], %g1
   17da0:	80 a0 40 13 	cmp  %g1, %l3
   17da4:	14 bf ff f7 	bg  17d80 <pre_process_context+0x154>
   17da8:	83 2c e0 02 	sll  %l3, 2, %g1
   17dac:	c2 04 a0 3c 	ld  [ %l2 + 0x3c ], %g1
   17db0:	c2 24 a0 34 	st  %g1, [ %l2 + 0x34 ]
   17db4:	c4 04 a0 34 	ld  [ %l2 + 0x34 ], %g2
   17db8:	c2 04 a0 3c 	ld  [ %l2 + 0x3c ], %g1
   17dbc:	80 a0 80 01 	cmp  %g2, %g1
   17dc0:	32 80 00 1d 	bne,a   17e34 <pre_process_context+0x208>
   17dc4:	c2 07 40 00 	ld  [ %i5 ], %g1
   17dc8:	c2 06 21 5c 	ld  [ %i0 + 0x15c ], %g1
   17dcc:	c2 00 60 04 	ld  [ %g1 + 4 ], %g1
   17dd0:	90 10 00 18 	mov  %i0, %o0
   17dd4:	92 04 a0 08 	add  %l2, 8, %o1
   17dd8:	d4 04 a0 38 	ld  [ %l2 + 0x38 ], %o2
   17ddc:	96 10 00 1c 	mov  %i4, %o3
   17de0:	9f c0 40 00 	call  %g1
   17de4:	d8 07 40 00 	ld  [ %i5 ], %o4
   17de8:	c2 07 40 00 	ld  [ %i5 ], %g1
   17dec:	82 00 60 01 	inc  %g1
   17df0:	c2 27 40 00 	st  %g1, [ %i5 ]
   17df4:	c2 04 a0 38 	ld  [ %l2 + 0x38 ], %g1
   17df8:	c4 06 20 e4 	ld  [ %i0 + 0xe4 ], %g2
   17dfc:	82 00 40 02 	add  %g1, %g2, %g1
   17e00:	80 a0 40 16 	cmp  %g1, %l6
   17e04:	06 80 00 03 	bl  17e10 <pre_process_context+0x1e4>
   17e08:	c2 24 a0 38 	st  %g1, [ %l2 + 0x38 ]
   17e0c:	c0 24 a0 38 	clr  [ %l2 + 0x38 ]
   17e10:	c2 04 a0 34 	ld  [ %l2 + 0x34 ], %g1
   17e14:	80 a0 40 16 	cmp  %g1, %l6
   17e18:	36 80 00 02 	bge,a   17e20 <pre_process_context+0x1f4>
   17e1c:	c0 24 a0 34 	clr  [ %l2 + 0x34 ]
   17e20:	c2 04 a0 34 	ld  [ %l2 + 0x34 ], %g1
   17e24:	c4 06 20 e4 	ld  [ %i0 + 0xe4 ], %g2
   17e28:	82 00 40 02 	add  %g1, %g2, %g1
   17e2c:	c2 24 a0 3c 	st  %g1, [ %l2 + 0x3c ]
   17e30:	c2 07 40 00 	ld  [ %i5 ], %g1
   17e34:	80 a0 40 15 	cmp  %g1, %l5
   17e38:	2a bf ff 87 	bcs,a   17c54 <pre_process_context+0x28>
   17e3c:	c2 06 80 00 	ld  [ %i2 ], %g1
   17e40:	81 c7 e0 08 	ret 
   17e44:	81 e8 00 00 	restore 

00017e48 <create_context_buffer>:
   17e48:	9d e3 bf 98 	save  %sp, -104, %sp
   17e4c:	fa 06 21 4c 	ld  [ %i0 + 0x14c ], %i5
   17e50:	e4 06 20 e4 	ld  [ %i0 + 0xe4 ], %l2
   17e54:	c4 06 20 04 	ld  [ %i0 + 4 ], %g2
   17e58:	c2 06 20 34 	ld  [ %i0 + 0x34 ], %g1
   17e5c:	82 5c 80 01 	smul  %l2, %g1, %g1
   17e60:	95 28 60 02 	sll  %g1, 2, %o2
   17e64:	94 02 80 01 	add  %o2, %g1, %o2
   17e68:	c2 00 80 00 	ld  [ %g2 ], %g1
   17e6c:	90 10 00 18 	mov  %i0, %o0
   17e70:	92 10 20 01 	mov  1, %o1
   17e74:	9f c0 40 00 	call  %g1
   17e78:	95 2a a0 02 	sll  %o2, 2, %o2
   17e7c:	a2 10 00 08 	mov  %o0, %l1
   17e80:	aa 10 20 00 	clr  %l5
   17e84:	c2 06 20 34 	ld  [ %i0 + 0x34 ], %g1
   17e88:	80 a0 60 00 	cmp  %g1, 0
   17e8c:	04 80 00 3a 	ble  17f74 <create_context_buffer+0x12c>
   17e90:	e6 06 20 3c 	ld  [ %i0 + 0x3c ], %l3
   17e94:	82 04 80 12 	add  %l2, %l2, %g1
   17e98:	ac 00 40 12 	add  %g1, %l2, %l6
   17e9c:	a9 2c a0 02 	sll  %l2, 2, %l4
   17ea0:	b8 10 00 01 	mov  %g1, %i4
   17ea4:	b6 10 00 14 	mov  %l4, %i3
   17ea8:	ae 05 00 12 	add  %l4, %l2, %l7
   17eac:	c4 06 20 04 	ld  [ %i0 + 4 ], %g2
   17eb0:	d4 04 e0 1c 	ld  [ %l3 + 0x1c ], %o2
   17eb4:	c2 06 20 e0 	ld  [ %i0 + 0xe0 ], %g1
   17eb8:	94 5a 80 01 	smul  %o2, %g1, %o2
   17ebc:	95 2a a0 03 	sll  %o2, 3, %o2
   17ec0:	c2 00 a0 08 	ld  [ %g2 + 8 ], %g1
   17ec4:	90 10 00 18 	mov  %i0, %o0
   17ec8:	92 10 20 01 	mov  1, %o1
   17ecc:	85 3a a0 1f 	sra  %o2, 0x1f, %g2
   17ed0:	81 80 a0 00 	mov  %g2, %y
   17ed4:	c4 04 e0 08 	ld  [ %l3 + 8 ], %g2
   17ed8:	01 00 00 00 	nop 
   17edc:	01 00 00 00 	nop 
   17ee0:	94 7a 80 02 	sdiv  %o2, %g2, %o2
   17ee4:	9f c0 40 00 	call  %g1
   17ee8:	96 10 00 16 	mov  %l6, %o3
   17eec:	a0 10 00 08 	mov  %o0, %l0
   17ef0:	90 04 40 14 	add  %l1, %l4, %o0
   17ef4:	92 10 00 10 	mov  %l0, %o1
   17ef8:	40 00 6e 1b 	call  33764 <memcpy@plt>
   17efc:	95 2d a0 02 	sll  %l6, 2, %o2
   17f00:	86 10 20 00 	clr  %g3
   17f04:	80 a0 c0 12 	cmp  %g3, %l2
   17f08:	16 80 00 11 	bge  17f4c <create_context_buffer+0x104>
   17f0c:	83 2d 60 02 	sll  %l5, 2, %g1
   17f10:	9a 10 00 1c 	mov  %i4, %o5
   17f14:	88 10 00 1b 	mov  %i3, %g4
   17f18:	85 28 e0 02 	sll  %g3, 2, %g2
   17f1c:	82 03 40 03 	add  %o5, %g3, %g1
   17f20:	83 28 60 02 	sll  %g1, 2, %g1
   17f24:	c2 04 00 01 	ld  [ %l0 + %g1 ], %g1
   17f28:	c2 24 40 02 	st  %g1, [ %l1 + %g2 ]
   17f2c:	82 01 00 03 	add  %g4, %g3, %g1
   17f30:	83 28 60 02 	sll  %g1, 2, %g1
   17f34:	c4 04 00 02 	ld  [ %l0 + %g2 ], %g2
   17f38:	86 00 e0 01 	inc  %g3
   17f3c:	80 a0 c0 12 	cmp  %g3, %l2
   17f40:	06 bf ff f6 	bl  17f18 <create_context_buffer+0xd0>
   17f44:	c4 24 40 01 	st  %g2, [ %l1 + %g1 ]
   17f48:	83 2d 60 02 	sll  %l5, 2, %g1
   17f4c:	82 00 40 1d 	add  %g1, %i5, %g1
   17f50:	84 05 00 11 	add  %l4, %l1, %g2
   17f54:	c4 20 60 08 	st  %g2, [ %g1 + 8 ]
   17f58:	83 2d e0 02 	sll  %l7, 2, %g1
   17f5c:	a2 04 40 01 	add  %l1, %g1, %l1
   17f60:	aa 05 60 01 	inc  %l5
   17f64:	c2 06 20 34 	ld  [ %i0 + 0x34 ], %g1
   17f68:	80 a0 40 15 	cmp  %g1, %l5
   17f6c:	14 bf ff d0 	bg  17eac <create_context_buffer+0x64>
   17f70:	a6 04 e0 54 	add  %l3, 0x54, %l3
   17f74:	81 c7 e0 08 	ret 
   17f78:	81 e8 00 00 	restore 

00017f7c <jinit_c_prep_controller>:
   17f7c:	9d e3 bf 98 	save  %sp, -104, %sp
   17f80:	80 a6 60 00 	cmp  %i1, 0
   17f84:	22 80 00 0a 	be,a   17fac <jinit_c_prep_controller+0x30>
   17f88:	c2 06 20 04 	ld  [ %i0 + 4 ], %g1
   17f8c:	c4 06 00 00 	ld  [ %i0 ], %g2
   17f90:	82 10 20 04 	mov  4, %g1
   17f94:	c2 20 a0 14 	st  %g1, [ %g2 + 0x14 ]
   17f98:	c2 06 00 00 	ld  [ %i0 ], %g1
   17f9c:	c2 00 40 00 	ld  [ %g1 ], %g1
   17fa0:	9f c0 40 00 	call  %g1
   17fa4:	90 10 00 18 	mov  %i0, %o0
   17fa8:	c2 06 20 04 	ld  [ %i0 + 4 ], %g1
   17fac:	c2 00 40 00 	ld  [ %g1 ], %g1
   17fb0:	90 10 00 18 	mov  %i0, %o0
   17fb4:	92 10 20 01 	mov  1, %o1
   17fb8:	9f c0 40 00 	call  %g1
   17fbc:	94 10 20 40 	mov  0x40, %o2
   17fc0:	d0 26 21 4c 	st  %o0, [ %i0 + 0x14c ]
   17fc4:	03 00 00 5e 	sethi  %hi(0x17800), %g1
   17fc8:	82 10 61 cc 	or  %g1, 0x1cc, %g1	! 179cc <start_pass_prep>
   17fcc:	c2 22 00 00 	st  %g1, [ %o0 ]
   17fd0:	c2 06 21 5c 	ld  [ %i0 + 0x15c ], %g1
   17fd4:	c2 00 60 08 	ld  [ %g1 + 8 ], %g1
   17fd8:	80 a0 60 00 	cmp  %g1, 0
   17fdc:	02 80 00 08 	be  17ffc <jinit_c_prep_controller+0x80>
   17fe0:	a4 10 00 08 	mov  %o0, %l2
   17fe4:	03 00 00 5f 	sethi  %hi(0x17c00), %g1
   17fe8:	82 10 60 2c 	or  %g1, 0x2c, %g1	! 17c2c <pre_process_context>
   17fec:	c2 22 20 04 	st  %g1, [ %o0 + 4 ]
   17ff0:	7f ff ff 96 	call  17e48 <create_context_buffer>
   17ff4:	90 10 00 18 	mov  %i0, %o0
   17ff8:	30 80 00 21 	b,a   1807c <jinit_c_prep_controller+0x100>
   17ffc:	03 00 00 5e 	sethi  %hi(0x17800), %g1
   18000:	82 10 62 60 	or  %g1, 0x260, %g1	! 17a60 <pre_process_data>
   18004:	c2 22 20 04 	st  %g1, [ %o0 + 4 ]
   18008:	a2 10 20 00 	clr  %l1
   1800c:	c2 06 20 34 	ld  [ %i0 + 0x34 ], %g1
   18010:	80 a0 60 00 	cmp  %g1, 0
   18014:	04 80 00 1a 	ble  1807c <jinit_c_prep_controller+0x100>
   18018:	f2 06 20 3c 	ld  [ %i0 + 0x3c ], %i1
   1801c:	a1 2c 60 02 	sll  %l1, 2, %l0
   18020:	a0 04 00 12 	add  %l0, %l2, %l0
   18024:	c4 06 20 04 	ld  [ %i0 + 4 ], %g2
   18028:	d4 06 60 1c 	ld  [ %i1 + 0x1c ], %o2
   1802c:	c2 06 20 e0 	ld  [ %i0 + 0xe0 ], %g1
   18030:	94 5a 80 01 	smul  %o2, %g1, %o2
   18034:	95 2a a0 03 	sll  %o2, 3, %o2
   18038:	c2 00 a0 08 	ld  [ %g2 + 8 ], %g1
   1803c:	90 10 00 18 	mov  %i0, %o0
   18040:	92 10 20 01 	mov  1, %o1
   18044:	85 3a a0 1f 	sra  %o2, 0x1f, %g2
   18048:	81 80 a0 00 	mov  %g2, %y
   1804c:	c4 06 60 08 	ld  [ %i1 + 8 ], %g2
   18050:	01 00 00 00 	nop 
   18054:	01 00 00 00 	nop 
   18058:	94 7a 80 02 	sdiv  %o2, %g2, %o2
   1805c:	9f c0 40 00 	call  %g1
   18060:	d6 06 20 e4 	ld  [ %i0 + 0xe4 ], %o3
   18064:	d0 24 20 08 	st  %o0, [ %l0 + 8 ]
   18068:	a2 04 60 01 	inc  %l1
   1806c:	c2 06 20 34 	ld  [ %i0 + 0x34 ], %g1
   18070:	80 a0 40 11 	cmp  %g1, %l1
   18074:	14 bf ff ea 	bg  1801c <jinit_c_prep_controller+0xa0>
   18078:	b2 06 60 54 	add  %i1, 0x54, %i1
   1807c:	81 c7 e0 08 	ret 
   18080:	81 e8 00 00 	restore 

00018084 <start_iMCU_row>:
   18084:	c2 02 20 ec 	ld  [ %o0 + 0xec ], %g1
   18088:	80 a0 60 01 	cmp  %g1, 1
   1808c:	04 80 00 05 	ble  180a0 <start_iMCU_row+0x1c>
   18090:	c6 02 21 50 	ld  [ %o0 + 0x150 ], %g3
   18094:	82 10 20 01 	mov  1, %g1
   18098:	10 80 00 0d 	b  180cc <start_iMCU_row+0x48>
   1809c:	c2 20 e0 14 	st  %g1, [ %g3 + 0x14 ]
   180a0:	c2 02 20 e8 	ld  [ %o0 + 0xe8 ], %g1
   180a4:	82 00 7f ff 	add  %g1, -1, %g1
   180a8:	c4 00 e0 08 	ld  [ %g3 + 8 ], %g2
   180ac:	80 a0 80 01 	cmp  %g2, %g1
   180b0:	1a 80 00 05 	bcc  180c4 <start_iMCU_row+0x40>
   180b4:	c2 02 20 f0 	ld  [ %o0 + 0xf0 ], %g1
   180b8:	c2 00 60 0c 	ld  [ %g1 + 0xc ], %g1
   180bc:	10 80 00 04 	b  180cc <start_iMCU_row+0x48>
   180c0:	c2 20 e0 14 	st  %g1, [ %g3 + 0x14 ]
   180c4:	c2 00 60 48 	ld  [ %g1 + 0x48 ], %g1
   180c8:	c2 20 e0 14 	st  %g1, [ %g3 + 0x14 ]
   180cc:	c0 20 e0 0c 	clr  [ %g3 + 0xc ]
   180d0:	81 c3 e0 08 	retl 
   180d4:	c0 20 e0 10 	clr  [ %g3 + 0x10 ]

000180d8 <start_pass_coef>:
   180d8:	9d e3 bf 98 	save  %sp, -104, %sp
   180dc:	e0 06 21 50 	ld  [ %i0 + 0x150 ], %l0
   180e0:	c0 24 20 08 	clr  [ %l0 + 8 ]
   180e4:	7f ff ff e8 	call  18084 <start_iMCU_row>
   180e8:	90 10 00 18 	mov  %i0, %o0
   180ec:	80 a6 60 02 	cmp  %i1, 2
   180f0:	22 80 00 29 	be,a   18194 <start_pass_coef+0xbc>
   180f4:	c2 04 20 40 	ld  [ %l0 + 0x40 ], %g1
   180f8:	18 80 00 07 	bgu  18114 <start_pass_coef+0x3c>
   180fc:	80 a6 60 03 	cmp  %i1, 3
   18100:	80 a6 60 00 	cmp  %i1, 0
   18104:	22 80 00 08 	be,a   18124 <start_pass_coef+0x4c>
   18108:	c2 04 20 40 	ld  [ %l0 + 0x40 ], %g1
   1810c:	10 80 00 30 	b  181cc <start_pass_coef+0xf4>
   18110:	c4 06 00 00 	ld  [ %i0 ], %g2
   18114:	22 80 00 12 	be,a   1815c <start_pass_coef+0x84>
   18118:	c2 04 20 40 	ld  [ %l0 + 0x40 ], %g1
   1811c:	10 80 00 2c 	b  181cc <start_pass_coef+0xf4>
   18120:	c4 06 00 00 	ld  [ %i0 ], %g2
   18124:	80 a0 60 00 	cmp  %g1, 0
   18128:	02 80 00 0a 	be  18150 <start_pass_coef+0x78>
   1812c:	03 00 00 60 	sethi  %hi(0x18000), %g1
   18130:	c4 06 00 00 	ld  [ %i0 ], %g2
   18134:	82 10 20 04 	mov  4, %g1
   18138:	c2 20 a0 14 	st  %g1, [ %g2 + 0x14 ]
   1813c:	c2 06 00 00 	ld  [ %i0 ], %g1
   18140:	c2 00 40 00 	ld  [ %g1 ], %g1
   18144:	9f c0 40 00 	call  %g1
   18148:	90 10 00 18 	mov  %i0, %o0
   1814c:	03 00 00 60 	sethi  %hi(0x18000), %g1
   18150:	82 10 61 f0 	or  %g1, 0x1f0, %g1	! 181f0 <compress_data>
   18154:	10 80 00 24 	b  181e4 <start_pass_coef+0x10c>
   18158:	c2 24 20 04 	st  %g1, [ %l0 + 4 ]
   1815c:	80 a0 60 00 	cmp  %g1, 0
   18160:	12 80 00 0a 	bne  18188 <start_pass_coef+0xb0>
   18164:	03 00 00 61 	sethi  %hi(0x18400), %g1
   18168:	c4 06 00 00 	ld  [ %i0 ], %g2
   1816c:	82 10 20 04 	mov  4, %g1
   18170:	c2 20 a0 14 	st  %g1, [ %g2 + 0x14 ]
   18174:	c2 06 00 00 	ld  [ %i0 ], %g1
   18178:	c2 00 40 00 	ld  [ %g1 ], %g1
   1817c:	9f c0 40 00 	call  %g1
   18180:	90 10 00 18 	mov  %i0, %o0
   18184:	03 00 00 61 	sethi  %hi(0x18400), %g1
   18188:	82 10 60 50 	or  %g1, 0x50, %g1	! 18450 <compress_first_pass>
   1818c:	10 80 00 16 	b  181e4 <start_pass_coef+0x10c>
   18190:	c2 24 20 04 	st  %g1, [ %l0 + 4 ]
   18194:	80 a0 60 00 	cmp  %g1, 0
   18198:	12 80 00 0a 	bne  181c0 <start_pass_coef+0xe8>
   1819c:	03 00 00 61 	sethi  %hi(0x18400), %g1
   181a0:	c4 06 00 00 	ld  [ %i0 ], %g2
   181a4:	82 10 20 04 	mov  4, %g1
   181a8:	c2 20 a0 14 	st  %g1, [ %g2 + 0x14 ]
   181ac:	c2 06 00 00 	ld  [ %i0 ], %g1
   181b0:	c2 00 40 00 	ld  [ %g1 ], %g1
   181b4:	9f c0 40 00 	call  %g1
   181b8:	90 10 00 18 	mov  %i0, %o0
   181bc:	03 00 00 61 	sethi  %hi(0x18400), %g1
   181c0:	82 10 62 8c 	or  %g1, 0x28c, %g1	! 1868c <compress_output>
   181c4:	10 80 00 08 	b  181e4 <start_pass_coef+0x10c>
   181c8:	c2 24 20 04 	st  %g1, [ %l0 + 4 ]
   181cc:	82 10 20 04 	mov  4, %g1
   181d0:	c2 20 a0 14 	st  %g1, [ %g2 + 0x14 ]
   181d4:	c2 06 00 00 	ld  [ %i0 ], %g1
   181d8:	c2 00 40 00 	ld  [ %g1 ], %g1
   181dc:	9f c0 40 00 	call  %g1
   181e0:	90 10 00 18 	mov  %i0, %o0
   181e4:	01 00 00 00 	nop 
   181e8:	81 c7 e0 08 	ret 
   181ec:	81 e8 00 00 	restore 

000181f0 <compress_data>:
   181f0:	9d e3 bf 88 	save  %sp, -120, %sp
   181f4:	e2 06 21 50 	ld  [ %i0 + 0x150 ], %l1
   181f8:	c2 06 21 00 	ld  [ %i0 + 0x100 ], %g1
   181fc:	82 00 7f ff 	add  %g1, -1, %g1
   18200:	c2 27 bf f4 	st  %g1, [ %fp + -12 ]
   18204:	c2 06 20 e8 	ld  [ %i0 + 0xe8 ], %g1
   18208:	b8 00 7f ff 	add  %g1, -1, %i4
   1820c:	ec 04 60 10 	ld  [ %l1 + 0x10 ], %l6
   18210:	c2 04 60 14 	ld  [ %l1 + 0x14 ], %g1
   18214:	80 a0 40 16 	cmp  %g1, %l6
   18218:	24 80 00 87 	ble,a   18434 <compress_data+0x244>
   1821c:	c2 04 60 08 	ld  [ %l1 + 8 ], %g1
   18220:	f6 04 60 0c 	ld  [ %l1 + 0xc ], %i3
   18224:	c2 07 bf f4 	ld  [ %fp + -12 ], %g1
   18228:	80 a6 c0 01 	cmp  %i3, %g1
   1822c:	38 80 00 7c 	bgu,a   1841c <compress_data+0x22c>
   18230:	c0 24 60 0c 	clr  [ %l1 + 0xc ]
   18234:	a4 10 20 00 	clr  %l2
   18238:	c2 06 20 ec 	ld  [ %i0 + 0xec ], %g1
   1823c:	80 a0 60 00 	cmp  %g1, 0
   18240:	04 80 00 66 	ble  183d8 <compress_data+0x1e8>
   18244:	b4 10 20 00 	clr  %i2
   18248:	83 2e a0 02 	sll  %i2, 2, %g1
   1824c:	82 00 40 18 	add  %g1, %i0, %g1
   18250:	e0 00 60 f0 	ld  [ %g1 + 0xf0 ], %l0
   18254:	c2 07 bf f4 	ld  [ %fp + -12 ], %g1
   18258:	80 a6 c0 01 	cmp  %i3, %g1
   1825c:	3a 80 00 03 	bcc,a   18268 <compress_data+0x78>
   18260:	e8 04 20 44 	ld  [ %l0 + 0x44 ], %l4
   18264:	e8 04 20 34 	ld  [ %l0 + 0x34 ], %l4
   18268:	c2 04 20 40 	ld  [ %l0 + 0x40 ], %g1
   1826c:	ba 5e c0 01 	smul  %i3, %g1, %i5
   18270:	a7 2d a0 03 	sll  %l6, 3, %l3
   18274:	c2 04 20 38 	ld  [ %l0 + 0x38 ], %g1
   18278:	80 a0 60 00 	cmp  %g1, 0
   1827c:	04 80 00 52 	ble  183c4 <compress_data+0x1d4>
   18280:	aa 10 20 00 	clr  %l5
   18284:	af 2e a0 02 	sll  %i2, 2, %l7
   18288:	c2 04 60 08 	ld  [ %l1 + 8 ], %g1
   1828c:	80 a0 40 1c 	cmp  %g1, %i4
   18290:	0a 80 00 06 	bcs  182a8 <compress_data+0xb8>
   18294:	84 05 80 15 	add  %l6, %l5, %g2
   18298:	c2 04 20 48 	ld  [ %l0 + 0x48 ], %g1
   1829c:	80 a0 80 01 	cmp  %g2, %g1
   182a0:	16 80 00 2b 	bge  1834c <compress_data+0x15c>
   182a4:	83 2c a0 02 	sll  %l2, 2, %g1
   182a8:	c2 06 21 60 	ld  [ %i0 + 0x160 ], %g1
   182ac:	85 2c a0 02 	sll  %l2, 2, %g2
   182b0:	84 00 80 11 	add  %g2, %l1, %g2
   182b4:	e8 23 a0 5c 	st  %l4, [ %sp + 0x5c ]
   182b8:	c2 00 60 04 	ld  [ %g1 + 4 ], %g1
   182bc:	90 10 00 18 	mov  %i0, %o0
   182c0:	92 10 00 10 	mov  %l0, %o1
   182c4:	d4 06 40 17 	ld  [ %i1 + %l7 ], %o2
   182c8:	d6 00 a0 18 	ld  [ %g2 + 0x18 ], %o3
   182cc:	98 10 00 13 	mov  %l3, %o4
   182d0:	9f c0 40 00 	call  %g1
   182d4:	9a 10 00 1d 	mov  %i5, %o5
   182d8:	d2 04 20 34 	ld  [ %l0 + 0x34 ], %o1
   182dc:	80 a2 40 14 	cmp  %o1, %l4
   182e0:	24 80 00 33 	ble,a   183ac <compress_data+0x1bc>
   182e4:	c2 04 20 34 	ld  [ %l0 + 0x34 ], %g1
   182e8:	82 04 80 14 	add  %l2, %l4, %g1
   182ec:	83 28 60 02 	sll  %g1, 2, %g1
   182f0:	82 00 40 11 	add  %g1, %l1, %g1
   182f4:	92 22 40 14 	sub  %o1, %l4, %o1
   182f8:	d0 00 60 18 	ld  [ %g1 + 0x18 ], %o0
   182fc:	40 00 16 df 	call  1de78 <jzero_far>
   18300:	93 2a 60 07 	sll  %o1, 7, %o1
   18304:	c2 04 20 34 	ld  [ %l0 + 0x34 ], %g1
   18308:	80 a0 40 14 	cmp  %g1, %l4
   1830c:	04 80 00 28 	ble  183ac <compress_data+0x1bc>
   18310:	86 10 00 14 	mov  %l4, %g3
   18314:	82 04 80 03 	add  %l2, %g3, %g1
   18318:	83 28 60 02 	sll  %g1, 2, %g1
   1831c:	82 00 40 11 	add  %g1, %l1, %g1
   18320:	c4 00 60 18 	ld  [ %g1 + 0x18 ], %g2
   18324:	c2 00 60 14 	ld  [ %g1 + 0x14 ], %g1
   18328:	c2 10 40 00 	lduh  [ %g1 ], %g1
   1832c:	c2 30 80 00 	sth  %g1, [ %g2 ]
   18330:	86 00 e0 01 	inc  %g3
   18334:	c2 04 20 34 	ld  [ %l0 + 0x34 ], %g1
   18338:	80 a0 40 03 	cmp  %g1, %g3
   1833c:	34 bf ff f7 	bg,a   18318 <compress_data+0x128>
   18340:	82 04 80 03 	add  %l2, %g3, %g1
   18344:	10 80 00 1b 	b  183b0 <compress_data+0x1c0>
   18348:	a4 04 80 01 	add  %l2, %g1, %l2
   1834c:	82 00 40 11 	add  %g1, %l1, %g1
   18350:	d2 04 20 34 	ld  [ %l0 + 0x34 ], %o1
   18354:	d0 00 60 18 	ld  [ %g1 + 0x18 ], %o0
   18358:	40 00 16 c8 	call  1de78 <jzero_far>
   1835c:	93 2a 60 07 	sll  %o1, 7, %o1
   18360:	c2 04 20 34 	ld  [ %l0 + 0x34 ], %g1
   18364:	80 a0 60 00 	cmp  %g1, 0
   18368:	04 80 00 11 	ble  183ac <compress_data+0x1bc>
   1836c:	86 10 20 00 	clr  %g3
   18370:	83 2c a0 02 	sll  %l2, 2, %g1
   18374:	88 00 40 11 	add  %g1, %l1, %g4
   18378:	82 04 80 03 	add  %l2, %g3, %g1
   1837c:	83 28 60 02 	sll  %g1, 2, %g1
   18380:	82 00 40 11 	add  %g1, %l1, %g1
   18384:	c4 00 60 18 	ld  [ %g1 + 0x18 ], %g2
   18388:	c2 01 20 14 	ld  [ %g4 + 0x14 ], %g1
   1838c:	c2 10 40 00 	lduh  [ %g1 ], %g1
   18390:	c2 30 80 00 	sth  %g1, [ %g2 ]
   18394:	86 00 e0 01 	inc  %g3
   18398:	c2 04 20 34 	ld  [ %l0 + 0x34 ], %g1
   1839c:	80 a0 40 03 	cmp  %g1, %g3
   183a0:	14 bf ff f7 	bg  1837c <compress_data+0x18c>
   183a4:	82 04 80 03 	add  %l2, %g3, %g1
   183a8:	c2 04 20 34 	ld  [ %l0 + 0x34 ], %g1
   183ac:	a4 04 80 01 	add  %l2, %g1, %l2
   183b0:	aa 05 60 01 	inc  %l5
   183b4:	c2 04 20 38 	ld  [ %l0 + 0x38 ], %g1
   183b8:	80 a0 40 15 	cmp  %g1, %l5
   183bc:	14 bf ff b3 	bg  18288 <compress_data+0x98>
   183c0:	a6 04 e0 08 	add  %l3, 8, %l3
   183c4:	b4 06 a0 01 	inc  %i2
   183c8:	c2 06 20 ec 	ld  [ %i0 + 0xec ], %g1
   183cc:	80 a0 40 1a 	cmp  %g1, %i2
   183d0:	14 bf ff 9f 	bg  1824c <compress_data+0x5c>
   183d4:	83 2e a0 02 	sll  %i2, 2, %g1
   183d8:	c2 06 21 64 	ld  [ %i0 + 0x164 ], %g1
   183dc:	c2 00 60 04 	ld  [ %g1 + 4 ], %g1
   183e0:	90 10 00 18 	mov  %i0, %o0
   183e4:	9f c0 40 00 	call  %g1
   183e8:	92 04 60 18 	add  %l1, 0x18, %o1
   183ec:	80 a2 20 00 	cmp  %o0, 0
   183f0:	32 80 00 06 	bne,a   18408 <compress_data+0x218>
   183f4:	b6 06 e0 01 	inc  %i3
   183f8:	ec 24 60 10 	st  %l6, [ %l1 + 0x10 ]
   183fc:	f6 24 60 0c 	st  %i3, [ %l1 + 0xc ]
   18400:	10 80 00 12 	b  18448 <compress_data+0x258>
   18404:	b0 10 20 00 	clr  %i0
   18408:	c2 07 bf f4 	ld  [ %fp + -12 ], %g1
   1840c:	80 a6 c0 01 	cmp  %i3, %g1
   18410:	08 bf ff 8a 	bleu  18238 <compress_data+0x48>
   18414:	a4 10 20 00 	clr  %l2
   18418:	c0 24 60 0c 	clr  [ %l1 + 0xc ]
   1841c:	ac 05 a0 01 	inc  %l6
   18420:	c2 04 60 14 	ld  [ %l1 + 0x14 ], %g1
   18424:	80 a0 40 16 	cmp  %g1, %l6
   18428:	34 bf ff 7f 	bg,a   18224 <compress_data+0x34>
   1842c:	f6 04 60 0c 	ld  [ %l1 + 0xc ], %i3
   18430:	c2 04 60 08 	ld  [ %l1 + 8 ], %g1
   18434:	82 00 60 01 	inc  %g1
   18438:	c2 24 60 08 	st  %g1, [ %l1 + 8 ]
   1843c:	7f ff ff 12 	call  18084 <start_iMCU_row>
   18440:	90 10 00 18 	mov  %i0, %o0
   18444:	b0 10 20 01 	mov  1, %i0
   18448:	81 c7 e0 08 	ret 
   1844c:	81 e8 00 00 	restore 

00018450 <compress_first_pass>:
   18450:	9d e3 bf 90 	save  %sp, -112, %sp
   18454:	f8 06 21 50 	ld  [ %i0 + 0x150 ], %i4
   18458:	c2 06 20 e8 	ld  [ %i0 + 0xe8 ], %g1
   1845c:	b4 00 7f ff 	add  %g1, -1, %i2
   18460:	b6 10 20 00 	clr  %i3
   18464:	c2 06 20 34 	ld  [ %i0 + 0x34 ], %g1
   18468:	80 a0 60 00 	cmp  %g1, 0
   1846c:	04 80 00 83 	ble  18678 <compress_first_pass+0x228>
   18470:	ea 06 20 3c 	ld  [ %i0 + 0x3c ], %l5
   18474:	c4 06 20 04 	ld  [ %i0 + 4 ], %g2
   18478:	83 2e e0 02 	sll  %i3, 2, %g1
   1847c:	82 00 40 1c 	add  %g1, %i4, %g1
   18480:	d4 07 20 08 	ld  [ %i4 + 8 ], %o2
   18484:	d6 05 60 0c 	ld  [ %l5 + 0xc ], %o3
   18488:	c4 00 a0 20 	ld  [ %g2 + 0x20 ], %g2
   1848c:	90 10 00 18 	mov  %i0, %o0
   18490:	d2 00 60 40 	ld  [ %g1 + 0x40 ], %o1
   18494:	94 5a 80 0b 	smul  %o2, %o3, %o2
   18498:	9f c0 80 00 	call  %g2
   1849c:	98 10 20 01 	mov  1, %o4
   184a0:	c2 07 20 08 	ld  [ %i4 + 8 ], %g1
   184a4:	80 a0 40 1a 	cmp  %g1, %i2
   184a8:	1a 80 00 04 	bcc  184b8 <compress_first_pass+0x68>
   184ac:	ba 10 00 08 	mov  %o0, %i5
   184b0:	10 80 00 0d 	b  184e4 <compress_first_pass+0x94>
   184b4:	ee 05 60 0c 	ld  [ %l5 + 0xc ], %l7
   184b8:	c4 05 60 20 	ld  [ %l5 + 0x20 ], %g2
   184bc:	81 80 00 00 	mov  %g0, %y
   184c0:	c2 05 60 0c 	ld  [ %l5 + 0xc ], %g1
   184c4:	01 00 00 00 	nop 
   184c8:	01 00 00 00 	nop 
   184cc:	82 70 80 01 	udiv  %g2, %g1, %g1
   184d0:	c6 05 60 0c 	ld  [ %l5 + 0xc ], %g3
   184d4:	82 58 40 03 	smul  %g1, %g3, %g1
   184d8:	ae a0 80 01 	subcc  %g2, %g1, %l7
   184dc:	22 80 00 02 	be,a   184e4 <compress_first_pass+0x94>
   184e0:	ae 10 00 03 	mov  %g3, %l7
   184e4:	e8 05 60 1c 	ld  [ %l5 + 0x1c ], %l4
   184e8:	e2 05 60 08 	ld  [ %l5 + 8 ], %l1
   184ec:	81 80 00 00 	mov  %g0, %y
   184f0:	01 00 00 00 	nop 
   184f4:	01 00 00 00 	nop 
   184f8:	01 00 00 00 	nop 
   184fc:	82 75 00 11 	udiv  %l4, %l1, %g1
   18500:	82 58 40 11 	smul  %g1, %l1, %g1
   18504:	a4 25 00 01 	sub  %l4, %g1, %l2
   18508:	80 a4 a0 00 	cmp  %l2, 0
   1850c:	34 80 00 02 	bg,a   18514 <compress_first_pass+0xc4>
   18510:	a4 24 40 12 	sub  %l1, %l2, %l2
   18514:	a6 10 20 00 	clr  %l3
   18518:	80 a4 c0 17 	cmp  %l3, %l7
   1851c:	36 80 00 24 	bge,a   185ac <compress_first_pass+0x15c>
   18520:	c2 07 20 08 	ld  [ %i4 + 8 ], %g1
   18524:	ad 2e e0 02 	sll  %i3, 2, %l6
   18528:	83 2c e0 02 	sll  %l3, 2, %g1
   1852c:	e0 07 40 01 	ld  [ %i5 + %g1 ], %l0
   18530:	c2 06 21 60 	ld  [ %i0 + 0x160 ], %g1
   18534:	e8 23 a0 5c 	st  %l4, [ %sp + 0x5c ]
   18538:	c2 00 60 04 	ld  [ %g1 + 4 ], %g1
   1853c:	90 10 00 18 	mov  %i0, %o0
   18540:	92 10 00 15 	mov  %l5, %o1
   18544:	d4 06 40 16 	ld  [ %i1 + %l6 ], %o2
   18548:	96 10 00 10 	mov  %l0, %o3
   1854c:	99 2c e0 03 	sll  %l3, 3, %o4
   18550:	9f c0 40 00 	call  %g1
   18554:	9a 10 20 00 	clr  %o5
   18558:	80 a4 a0 00 	cmp  %l2, 0
   1855c:	04 80 00 0f 	ble  18598 <compress_first_pass+0x148>
   18560:	83 2d 20 07 	sll  %l4, 7, %g1
   18564:	a0 04 00 01 	add  %l0, %g1, %l0
   18568:	90 10 00 10 	mov  %l0, %o0
   1856c:	40 00 16 43 	call  1de78 <jzero_far>
   18570:	93 2c a0 07 	sll  %l2, 7, %o1
   18574:	84 10 20 00 	clr  %g2
   18578:	80 a0 80 12 	cmp  %g2, %l2
   1857c:	16 80 00 07 	bge  18598 <compress_first_pass+0x148>
   18580:	c6 14 3f 80 	lduh  [ %l0 + -128 ], %g3
   18584:	83 28 a0 07 	sll  %g2, 7, %g1
   18588:	84 00 a0 01 	inc  %g2
   1858c:	80 a0 80 12 	cmp  %g2, %l2
   18590:	06 bf ff fd 	bl  18584 <compress_first_pass+0x134>
   18594:	c6 34 00 01 	sth  %g3, [ %l0 + %g1 ]
   18598:	a6 04 e0 01 	inc  %l3
   1859c:	80 a4 c0 17 	cmp  %l3, %l7
   185a0:	06 bf ff e3 	bl  1852c <compress_first_pass+0xdc>
   185a4:	83 2c e0 02 	sll  %l3, 2, %g1
   185a8:	c2 07 20 08 	ld  [ %i4 + 8 ], %g1
   185ac:	80 a0 40 1a 	cmp  %g1, %i2
   185b0:	32 80 00 2e 	bne,a   18668 <compress_first_pass+0x218>
   185b4:	b6 06 e0 01 	inc  %i3
   185b8:	a8 05 00 12 	add  %l4, %l2, %l4
   185bc:	81 80 00 00 	mov  %g0, %y
   185c0:	01 00 00 00 	nop 
   185c4:	01 00 00 00 	nop 
   185c8:	01 00 00 00 	nop 
   185cc:	ac 75 00 11 	udiv  %l4, %l1, %l6
   185d0:	c2 05 60 0c 	ld  [ %l5 + 0xc ], %g1
   185d4:	80 a0 40 17 	cmp  %g1, %l7
   185d8:	04 80 00 23 	ble  18664 <compress_first_pass+0x214>
   185dc:	a6 10 00 17 	mov  %l7, %l3
   185e0:	af 2c 60 07 	sll  %l1, 7, %l7
   185e4:	83 2c e0 02 	sll  %l3, 2, %g1
   185e8:	e0 07 40 01 	ld  [ %i5 + %g1 ], %l0
   185ec:	82 00 40 1d 	add  %g1, %i5, %g1
   185f0:	e4 00 7f fc 	ld  [ %g1 + -4 ], %l2
   185f4:	90 10 00 10 	mov  %l0, %o0
   185f8:	40 00 16 20 	call  1de78 <jzero_far>
   185fc:	93 2d 20 07 	sll  %l4, 7, %o1
   18600:	9a 10 20 00 	clr  %o5
   18604:	80 a3 40 16 	cmp  %o5, %l6
   18608:	3a 80 00 13 	bcc,a   18654 <compress_first_pass+0x204>
   1860c:	a6 04 e0 01 	inc  %l3
   18610:	88 10 00 17 	mov  %l7, %g4
   18614:	82 01 00 12 	add  %g4, %l2, %g1
   18618:	84 10 20 00 	clr  %g2
   1861c:	80 a0 80 11 	cmp  %g2, %l1
   18620:	16 80 00 07 	bge  1863c <compress_first_pass+0x1ec>
   18624:	c6 10 7f 80 	lduh  [ %g1 + -128 ], %g3
   18628:	83 28 a0 07 	sll  %g2, 7, %g1
   1862c:	84 00 a0 01 	inc  %g2
   18630:	80 a0 80 11 	cmp  %g2, %l1
   18634:	06 bf ff fd 	bl  18628 <compress_first_pass+0x1d8>
   18638:	c6 34 00 01 	sth  %g3, [ %l0 + %g1 ]
   1863c:	a0 04 00 04 	add  %l0, %g4, %l0
   18640:	9a 03 60 01 	inc  %o5
   18644:	80 a3 40 16 	cmp  %o5, %l6
   18648:	0a bf ff f3 	bcs  18614 <compress_first_pass+0x1c4>
   1864c:	a4 04 80 04 	add  %l2, %g4, %l2
   18650:	a6 04 e0 01 	inc  %l3
   18654:	c2 05 60 0c 	ld  [ %l5 + 0xc ], %g1
   18658:	80 a0 40 13 	cmp  %g1, %l3
   1865c:	14 bf ff e3 	bg  185e8 <compress_first_pass+0x198>
   18660:	83 2c e0 02 	sll  %l3, 2, %g1
   18664:	b6 06 e0 01 	inc  %i3
   18668:	c2 06 20 34 	ld  [ %i0 + 0x34 ], %g1
   1866c:	80 a0 40 1b 	cmp  %g1, %i3
   18670:	14 bf ff 81 	bg  18474 <compress_first_pass+0x24>
   18674:	aa 05 60 54 	add  %l5, 0x54, %l5
   18678:	90 10 00 18 	mov  %i0, %o0
   1867c:	40 00 00 04 	call  1868c <compress_output>
   18680:	92 10 00 19 	mov  %i1, %o1
   18684:	81 c7 e0 08 	ret 
   18688:	91 e8 00 08 	restore  %g0, %o0, %o0

0001868c <compress_output>:
   1868c:	9d e3 bf 88 	save  %sp, -120, %sp
   18690:	e2 06 21 50 	ld  [ %i0 + 0x150 ], %l1
   18694:	c2 06 20 ec 	ld  [ %i0 + 0xec ], %g1
   18698:	80 a0 60 00 	cmp  %g1, 0
   1869c:	04 80 00 19 	ble  18700 <compress_output+0x74>
   186a0:	a4 10 20 00 	clr  %l2
   186a4:	a6 07 bf f8 	add  %fp, -8, %l3
   186a8:	a1 2c a0 02 	sll  %l2, 2, %l0
   186ac:	82 04 00 18 	add  %l0, %i0, %g1
   186b0:	da 00 60 f0 	ld  [ %g1 + 0xf0 ], %o5
   186b4:	a0 04 00 13 	add  %l0, %l3, %l0
   186b8:	c4 06 20 04 	ld  [ %i0 + 4 ], %g2
   186bc:	c2 03 60 04 	ld  [ %o5 + 4 ], %g1
   186c0:	83 28 60 02 	sll  %g1, 2, %g1
   186c4:	82 00 40 11 	add  %g1, %l1, %g1
   186c8:	d4 04 60 08 	ld  [ %l1 + 8 ], %o2
   186cc:	d6 03 60 0c 	ld  [ %o5 + 0xc ], %o3
   186d0:	c4 00 a0 20 	ld  [ %g2 + 0x20 ], %g2
   186d4:	90 10 00 18 	mov  %i0, %o0
   186d8:	d2 00 60 40 	ld  [ %g1 + 0x40 ], %o1
   186dc:	94 5a 80 0b 	smul  %o2, %o3, %o2
   186e0:	9f c0 80 00 	call  %g2
   186e4:	98 10 20 00 	clr  %o4
   186e8:	d0 24 3f f0 	st  %o0, [ %l0 + -16 ]
   186ec:	a4 04 a0 01 	inc  %l2
   186f0:	c2 06 20 ec 	ld  [ %i0 + 0xec ], %g1
   186f4:	80 a0 40 12 	cmp  %g1, %l2
   186f8:	14 bf ff ed 	bg  186ac <compress_output+0x20>
   186fc:	a1 2c a0 02 	sll  %l2, 2, %l0
   18700:	e0 04 60 10 	ld  [ %l1 + 0x10 ], %l0
   18704:	c2 04 60 14 	ld  [ %l1 + 0x14 ], %g1
   18708:	80 a0 40 10 	cmp  %g1, %l0
   1870c:	24 80 00 4d 	ble,a   18840 <compress_output+0x1b4>
   18710:	c2 04 60 08 	ld  [ %l1 + 8 ], %g1
   18714:	e6 04 60 0c 	ld  [ %l1 + 0xc ], %l3
   18718:	c2 06 21 00 	ld  [ %i0 + 0x100 ], %g1
   1871c:	80 a0 40 13 	cmp  %g1, %l3
   18720:	28 80 00 42 	bleu,a   18828 <compress_output+0x19c>
   18724:	c0 24 60 0c 	clr  [ %l1 + 0xc ]
   18728:	98 10 20 00 	clr  %o4
   1872c:	c2 06 20 ec 	ld  [ %i0 + 0xec ], %g1
   18730:	80 a0 60 00 	cmp  %g1, 0
   18734:	04 80 00 2c 	ble  187e4 <compress_output+0x158>
   18738:	a4 10 20 00 	clr  %l2
   1873c:	90 07 bf f8 	add  %fp, -8, %o0
   18740:	83 2c a0 02 	sll  %l2, 2, %g1
   18744:	82 00 40 18 	add  %g1, %i0, %g1
   18748:	da 00 60 f0 	ld  [ %g1 + 0xf0 ], %o5
   1874c:	c2 03 60 34 	ld  [ %o5 + 0x34 ], %g1
   18750:	84 5c c0 01 	smul  %l3, %g1, %g2
   18754:	c2 03 60 38 	ld  [ %o5 + 0x38 ], %g1
   18758:	80 a0 60 00 	cmp  %g1, 0
   1875c:	04 80 00 1d 	ble  187d0 <compress_output+0x144>
   18760:	96 10 20 00 	clr  %o3
   18764:	83 2c a0 02 	sll  %l2, 2, %g1
   18768:	92 00 40 08 	add  %g1, %o0, %o1
   1876c:	95 28 a0 07 	sll  %g2, 7, %o2
   18770:	82 02 c0 10 	add  %o3, %l0, %g1
   18774:	c4 02 7f f0 	ld  [ %o1 + -16 ], %g2
   18778:	83 28 60 02 	sll  %g1, 2, %g1
   1877c:	c2 00 80 01 	ld  [ %g2 + %g1 ], %g1
   18780:	86 02 80 01 	add  %o2, %g1, %g3
   18784:	c2 03 60 34 	ld  [ %o5 + 0x34 ], %g1
   18788:	80 a0 60 00 	cmp  %g1, 0
   1878c:	04 80 00 0c 	ble  187bc <compress_output+0x130>
   18790:	88 10 20 00 	clr  %g4
   18794:	83 2b 20 02 	sll  %o4, 2, %g1
   18798:	82 00 40 11 	add  %g1, %l1, %g1
   1879c:	84 10 00 03 	mov  %g3, %g2
   187a0:	86 00 e0 80 	add  %g3, 0x80, %g3
   187a4:	c4 20 60 18 	st  %g2, [ %g1 + 0x18 ]
   187a8:	88 01 20 01 	inc  %g4
   187ac:	c2 03 60 34 	ld  [ %o5 + 0x34 ], %g1
   187b0:	80 a0 40 04 	cmp  %g1, %g4
   187b4:	14 bf ff f8 	bg  18794 <compress_output+0x108>
   187b8:	98 03 20 01 	inc  %o4
   187bc:	96 02 e0 01 	inc  %o3
   187c0:	c2 03 60 38 	ld  [ %o5 + 0x38 ], %g1
   187c4:	80 a0 40 0b 	cmp  %g1, %o3
   187c8:	14 bf ff eb 	bg  18774 <compress_output+0xe8>
   187cc:	82 02 c0 10 	add  %o3, %l0, %g1
   187d0:	a4 04 a0 01 	inc  %l2
   187d4:	c2 06 20 ec 	ld  [ %i0 + 0xec ], %g1
   187d8:	80 a0 40 12 	cmp  %g1, %l2
   187dc:	14 bf ff da 	bg  18744 <compress_output+0xb8>
   187e0:	83 2c a0 02 	sll  %l2, 2, %g1
   187e4:	c2 06 21 64 	ld  [ %i0 + 0x164 ], %g1
   187e8:	c2 00 60 04 	ld  [ %g1 + 4 ], %g1
   187ec:	90 10 00 18 	mov  %i0, %o0
   187f0:	9f c0 40 00 	call  %g1
   187f4:	92 04 60 18 	add  %l1, 0x18, %o1
   187f8:	80 a2 20 00 	cmp  %o0, 0
   187fc:	32 80 00 06 	bne,a   18814 <compress_output+0x188>
   18800:	a6 04 e0 01 	inc  %l3
   18804:	e0 24 60 10 	st  %l0, [ %l1 + 0x10 ]
   18808:	e6 24 60 0c 	st  %l3, [ %l1 + 0xc ]
   1880c:	10 80 00 12 	b  18854 <compress_output+0x1c8>
   18810:	b0 10 20 00 	clr  %i0
   18814:	c2 06 21 00 	ld  [ %i0 + 0x100 ], %g1
   18818:	80 a0 40 13 	cmp  %g1, %l3
   1881c:	18 bf ff c4 	bgu  1872c <compress_output+0xa0>
   18820:	98 10 20 00 	clr  %o4
   18824:	c0 24 60 0c 	clr  [ %l1 + 0xc ]
   18828:	a0 04 20 01 	inc  %l0
   1882c:	c2 04 60 14 	ld  [ %l1 + 0x14 ], %g1
   18830:	80 a0 40 10 	cmp  %g1, %l0
   18834:	34 bf ff b9 	bg,a   18718 <compress_output+0x8c>
   18838:	e6 04 60 0c 	ld  [ %l1 + 0xc ], %l3
   1883c:	c2 04 60 08 	ld  [ %l1 + 8 ], %g1
   18840:	82 00 60 01 	inc  %g1
   18844:	c2 24 60 08 	st  %g1, [ %l1 + 8 ]
   18848:	7f ff fe 0f 	call  18084 <start_iMCU_row>
   1884c:	90 10 00 18 	mov  %i0, %o0
   18850:	b0 10 20 01 	mov  1, %i0
   18854:	81 c7 e0 08 	ret 
   18858:	81 e8 00 00 	restore 

0001885c <jinit_c_coef_controller>:
   1885c:	9d e3 bf 98 	save  %sp, -104, %sp
   18860:	c2 06 20 04 	ld  [ %i0 + 4 ], %g1
   18864:	c2 00 40 00 	ld  [ %g1 ], %g1
   18868:	90 10 00 18 	mov  %i0, %o0
   1886c:	92 10 20 01 	mov  1, %o1
   18870:	9f c0 40 00 	call  %g1
   18874:	94 10 20 68 	mov  0x68, %o2
   18878:	a6 10 00 08 	mov  %o0, %l3
   1887c:	d0 26 21 50 	st  %o0, [ %i0 + 0x150 ]
   18880:	03 00 00 60 	sethi  %hi(0x18000), %g1
   18884:	82 10 60 d8 	or  %g1, 0xd8, %g1	! 180d8 <start_pass_coef>
   18888:	80 a6 60 00 	cmp  %i1, 0
   1888c:	02 80 00 20 	be  1890c <jinit_c_coef_controller+0xb0>
   18890:	c2 22 00 00 	st  %g1, [ %o0 ]
   18894:	a4 10 20 00 	clr  %l2
   18898:	c2 06 20 34 	ld  [ %i0 + 0x34 ], %g1
   1889c:	80 a0 60 00 	cmp  %g1, 0
   188a0:	04 80 00 2b 	ble  1894c <jinit_c_coef_controller+0xf0>
   188a4:	f2 06 20 3c 	ld  [ %i0 + 0x3c ], %i1
   188a8:	a1 2c a0 02 	sll  %l2, 2, %l0
   188ac:	a0 04 00 13 	add  %l0, %l3, %l0
   188b0:	d0 06 60 1c 	ld  [ %i1 + 0x1c ], %o0
   188b4:	40 00 15 4c 	call  1dde4 <jround_up>
   188b8:	d2 06 60 08 	ld  [ %i1 + 8 ], %o1
   188bc:	a2 10 00 08 	mov  %o0, %l1
   188c0:	d0 06 60 20 	ld  [ %i1 + 0x20 ], %o0
   188c4:	40 00 15 48 	call  1dde4 <jround_up>
   188c8:	d2 06 60 0c 	ld  [ %i1 + 0xc ], %o1
   188cc:	98 10 00 08 	mov  %o0, %o4
   188d0:	c2 06 20 04 	ld  [ %i0 + 4 ], %g1
   188d4:	c2 00 60 14 	ld  [ %g1 + 0x14 ], %g1
   188d8:	90 10 00 18 	mov  %i0, %o0
   188dc:	92 10 20 01 	mov  1, %o1
   188e0:	94 10 20 00 	clr  %o2
   188e4:	96 10 00 11 	mov  %l1, %o3
   188e8:	9f c0 40 00 	call  %g1
   188ec:	da 06 60 0c 	ld  [ %i1 + 0xc ], %o5
   188f0:	d0 24 20 40 	st  %o0, [ %l0 + 0x40 ]
   188f4:	a4 04 a0 01 	inc  %l2
   188f8:	c2 06 20 34 	ld  [ %i0 + 0x34 ], %g1
   188fc:	80 a0 40 12 	cmp  %g1, %l2
   18900:	14 bf ff ea 	bg  188a8 <jinit_c_coef_controller+0x4c>
   18904:	b2 06 60 54 	add  %i1, 0x54, %i1
   18908:	30 80 00 11 	b,a   1894c <jinit_c_coef_controller+0xf0>
   1890c:	c2 06 20 04 	ld  [ %i0 + 4 ], %g1
   18910:	c2 00 60 04 	ld  [ %g1 + 4 ], %g1
   18914:	90 10 00 18 	mov  %i0, %o0
   18918:	92 10 20 01 	mov  1, %o1
   1891c:	9f c0 40 00 	call  %g1
   18920:	94 10 25 00 	mov  0x500, %o2
   18924:	86 10 20 00 	clr  %g3
   18928:	85 28 e0 02 	sll  %g3, 2, %g2
   1892c:	84 00 80 13 	add  %g2, %l3, %g2
   18930:	83 28 e0 07 	sll  %g3, 7, %g1
   18934:	82 00 40 08 	add  %g1, %o0, %g1
   18938:	86 00 e0 01 	inc  %g3
   1893c:	80 a0 e0 09 	cmp  %g3, 9
   18940:	04 bf ff fa 	ble  18928 <jinit_c_coef_controller+0xcc>
   18944:	c2 20 a0 18 	st  %g1, [ %g2 + 0x18 ]
   18948:	c0 24 e0 40 	clr  [ %l3 + 0x40 ]
   1894c:	81 c7 e0 08 	ret 
   18950:	81 e8 00 00 	restore 
   18954:	00 01 91 e8 	unimp  0x191e8
   18958:	00 01 8f 6c 	unimp  0x18f6c
   1895c:	00 01 90 10 	unimp  0x19010
   18960:	00 01 90 74 	unimp  0x19074
   18964:	00 01 90 fc 	unimp  0x190fc
   18968:	00 01 91 60 	unimp  0x19160
   1896c:	00 01 8f 18 	unimp  0x18f18
   18970:	00 01 8e 88 	unimp  0x18e88
   18974:	00 01 8e b8 	unimp  0x18eb8
   18978:	00 01 8e b8 	unimp  0x18eb8
   1897c:	00 01 8e e8 	unimp  0x18ee8
   18980:	00 01 8e e8 	unimp  0x18ee8

00018984 <rgb_ycc_start>:
   18984:	9d e3 bf 98 	save  %sp, -104, %sp
   18988:	90 10 00 18 	mov  %i0, %o0
   1898c:	e0 06 21 58 	ld  [ %i0 + 0x158 ], %l0
   18990:	c2 06 20 04 	ld  [ %i0 + 4 ], %g1
   18994:	c2 00 40 00 	ld  [ %g1 ], %g1
   18998:	92 10 20 01 	mov  1, %o1
   1899c:	9f c0 40 00 	call  %g1
   189a0:	15 00 00 08 	sethi  %hi(0x2000), %o2
   189a4:	d0 24 20 08 	st  %o0, [ %l0 + 8 ]
   189a8:	88 10 20 00 	clr  %g4
   189ac:	03 00 00 13 	sethi  %hi(0x4c00), %g1
   189b0:	a4 10 60 8b 	or  %g1, 0x8b, %l2	! 4c8b <_init-0xba45>
   189b4:	03 00 00 25 	sethi  %hi(0x9400), %g1
   189b8:	a2 10 62 46 	or  %g1, 0x246, %l1	! 9646 <_init-0x708a>
   189bc:	1b 00 00 07 	sethi  %hi(0x1c00), %o5
   189c0:	03 3f ff f5 	sethi  %hi(0xffffd400), %g1
   189c4:	b0 10 60 cd 	or  %g1, 0xcd, %i0	! ffffd4cd <_end+0xfffc9ccd>
   189c8:	21 00 00 04 	sethi  %hi(0x1000), %l0
   189cc:	03 3f ff ea 	sethi  %hi(0xffffa800), %g1
   189d0:	9e 10 63 33 	or  %g1, 0x333, %o7	! ffffab33 <_end+0xfffc7333>
   189d4:	13 00 00 05 	sethi  %hi(0x1400), %o1
   189d8:	03 00 20 1f 	sethi  %hi(0x807c00), %g1
   189dc:	94 10 63 ff 	or  %g1, 0x3ff, %o2	! 807fff <_end+0x7d47ff>
   189e0:	17 00 00 06 	sethi  %hi(0x1800), %o3
   189e4:	03 3f ff e5 	sethi  %hi(0xffff9400), %g1
   189e8:	98 10 60 d1 	or  %g1, 0xd1, %o4	! ffff94d1 <_end+0xfffc5cd1>
   189ec:	87 29 20 02 	sll  %g4, 2, %g3
   189f0:	82 59 00 12 	smul  %g4, %l2, %g1
   189f4:	c2 22 00 03 	st  %g1, [ %o0 + %g3 ]
   189f8:	86 00 c0 08 	add  %g3, %o0, %g3
   189fc:	82 59 00 11 	smul  %g4, %l1, %g1
   18a00:	c2 20 e4 00 	st  %g1, [ %g3 + 0x400 ]
   18a04:	82 13 61 2f 	or  %o5, 0x12f, %g1
   18a08:	82 59 00 01 	smul  %g4, %g1, %g1
   18a0c:	05 00 00 20 	sethi  %hi(0x8000), %g2
   18a10:	82 00 40 02 	add  %g1, %g2, %g1
   18a14:	c2 20 e8 00 	st  %g1, [ %g3 + 0x800 ]
   18a18:	82 59 00 18 	smul  %g4, %i0, %g1
   18a1c:	c2 20 ec 00 	st  %g1, [ %g3 + 0xc00 ]
   18a20:	82 59 00 0f 	smul  %g4, %o7, %g1
   18a24:	c2 20 c0 10 	st  %g1, [ %g3 + %l0 ]
   18a28:	83 29 20 0f 	sll  %g4, 0xf, %g1
   18a2c:	82 00 40 0a 	add  %g1, %o2, %g1
   18a30:	c2 20 c0 09 	st  %g1, [ %g3 + %o1 ]
   18a34:	82 59 00 0c 	smul  %g4, %o4, %g1
   18a38:	c2 20 c0 0b 	st  %g1, [ %g3 + %o3 ]
   18a3c:	03 3f ff fa 	sethi  %hi(0xffffe800), %g1
   18a40:	82 10 63 2f 	or  %g1, 0x32f, %g1	! ffffeb2f <_end+0xfffcb32f>
   18a44:	82 59 00 01 	smul  %g4, %g1, %g1
   18a48:	88 01 20 01 	inc  %g4
   18a4c:	80 a1 20 ff 	cmp  %g4, 0xff
   18a50:	04 bf ff e7 	ble  189ec <rgb_ycc_start+0x68>
   18a54:	c2 20 c0 0d 	st  %g1, [ %g3 + %o5 ]
   18a58:	81 c7 e0 08 	ret 
   18a5c:	81 e8 00 00 	restore 

00018a60 <rgb_ycc_convert>:
   18a60:	9d e3 bf 98 	save  %sp, -104, %sp
   18a64:	92 10 00 19 	mov  %i1, %o1
   18a68:	a4 10 00 1a 	mov  %i2, %l2
   18a6c:	94 10 00 1b 	mov  %i3, %o2
   18a70:	c2 06 21 58 	ld  [ %i0 + 0x158 ], %g1
   18a74:	f6 00 60 08 	ld  [ %g1 + 8 ], %i3
   18a78:	96 87 3f ff 	addcc  %i4, -1, %o3
   18a7c:	0c 80 00 39 	bneg  18b60 <rgb_ycc_convert+0x100>
   18a80:	d8 06 20 18 	ld  [ %i0 + 0x18 ], %o4
   18a84:	c2 02 40 00 	ld  [ %o1 ], %g1
   18a88:	92 02 60 04 	add  %o1, 4, %o1
   18a8c:	b8 10 00 01 	mov  %g1, %i4
   18a90:	c2 04 80 00 	ld  [ %l2 ], %g1
   18a94:	85 2a a0 02 	sll  %o2, 2, %g2
   18a98:	da 00 40 02 	ld  [ %g1 + %g2 ], %o5
   18a9c:	c2 04 a0 04 	ld  [ %l2 + 4 ], %g1
   18aa0:	de 00 40 02 	ld  [ %g1 + %g2 ], %o7
   18aa4:	c2 04 a0 08 	ld  [ %l2 + 8 ], %g1
   18aa8:	f2 00 40 02 	ld  [ %g1 + %g2 ], %i1
   18aac:	b0 10 20 00 	clr  %i0
   18ab0:	80 a6 00 0c 	cmp  %i0, %o4
   18ab4:	1a 80 00 28 	bcc  18b54 <rgb_ycc_convert+0xf4>
   18ab8:	94 02 a0 01 	inc  %o2
   18abc:	23 00 00 04 	sethi  %hi(0x1000), %l1
   18ac0:	35 00 00 05 	sethi  %hi(0x1400), %i2
   18ac4:	21 00 00 06 	sethi  %hi(0x1800), %l0
   18ac8:	11 00 00 07 	sethi  %hi(0x1c00), %o0
   18acc:	c6 0f 00 00 	ldub  [ %i4 ], %g3
   18ad0:	c8 0f 20 01 	ldub  [ %i4 + 1 ], %g4
   18ad4:	fa 0f 20 02 	ldub  [ %i4 + 2 ], %i5
   18ad8:	87 28 e0 02 	sll  %g3, 2, %g3
   18adc:	89 29 20 02 	sll  %g4, 2, %g4
   18ae0:	88 01 00 1b 	add  %g4, %i3, %g4
   18ae4:	c2 06 c0 03 	ld  [ %i3 + %g3 ], %g1
   18ae8:	c4 01 24 00 	ld  [ %g4 + 0x400 ], %g2
   18aec:	82 00 40 02 	add  %g1, %g2, %g1
   18af0:	bb 2f 60 02 	sll  %i5, 2, %i5
   18af4:	ba 07 40 1b 	add  %i5, %i3, %i5
   18af8:	c4 07 68 00 	ld  [ %i5 + 0x800 ], %g2
   18afc:	82 00 40 02 	add  %g1, %g2, %g1
   18b00:	83 38 60 10 	sra  %g1, 0x10, %g1
   18b04:	c2 2b 40 18 	stb  %g1, [ %o5 + %i0 ]
   18b08:	86 00 c0 1b 	add  %g3, %i3, %g3
   18b0c:	c2 00 ec 00 	ld  [ %g3 + 0xc00 ], %g1
   18b10:	c4 01 00 11 	ld  [ %g4 + %l1 ], %g2
   18b14:	82 00 40 02 	add  %g1, %g2, %g1
   18b18:	c4 07 40 1a 	ld  [ %i5 + %i2 ], %g2
   18b1c:	82 00 40 02 	add  %g1, %g2, %g1
   18b20:	83 38 60 10 	sra  %g1, 0x10, %g1
   18b24:	c2 2b c0 18 	stb  %g1, [ %o7 + %i0 ]
   18b28:	c2 00 c0 1a 	ld  [ %g3 + %i2 ], %g1
   18b2c:	c4 01 00 10 	ld  [ %g4 + %l0 ], %g2
   18b30:	82 00 40 02 	add  %g1, %g2, %g1
   18b34:	c4 07 40 08 	ld  [ %i5 + %o0 ], %g2
   18b38:	82 00 40 02 	add  %g1, %g2, %g1
   18b3c:	83 38 60 10 	sra  %g1, 0x10, %g1
   18b40:	c2 2e 40 18 	stb  %g1, [ %i1 + %i0 ]
   18b44:	b0 06 20 01 	inc  %i0
   18b48:	80 a6 00 0c 	cmp  %i0, %o4
   18b4c:	0a bf ff e0 	bcs  18acc <rgb_ycc_convert+0x6c>
   18b50:	b8 07 20 03 	add  %i4, 3, %i4
   18b54:	96 82 ff ff 	addcc  %o3, -1, %o3
   18b58:	3c bf ff cc 	bpos,a   18a88 <rgb_ycc_convert+0x28>
   18b5c:	c2 02 40 00 	ld  [ %o1 ], %g1
   18b60:	81 c7 e0 08 	ret 
   18b64:	81 e8 00 00 	restore 

00018b68 <rgb_gray_convert>:
   18b68:	9d e3 bf 98 	save  %sp, -104, %sp
   18b6c:	9e 10 00 19 	mov  %i1, %o7
   18b70:	9a 10 00 1a 	mov  %i2, %o5
   18b74:	b2 10 00 1b 	mov  %i3, %i1
   18b78:	c2 06 21 58 	ld  [ %i0 + 0x158 ], %g1
   18b7c:	f6 00 60 08 	ld  [ %g1 + 8 ], %i3
   18b80:	b8 87 3f ff 	addcc  %i4, -1, %i4
   18b84:	0c 80 00 22 	bneg  18c0c <rgb_gray_convert+0xa4>
   18b88:	f4 06 20 18 	ld  [ %i0 + 0x18 ], %i2
   18b8c:	c2 03 c0 00 	ld  [ %o7 ], %g1
   18b90:	9e 03 e0 04 	add  %o7, 4, %o7
   18b94:	88 10 00 01 	mov  %g1, %g4
   18b98:	c4 03 40 00 	ld  [ %o5 ], %g2
   18b9c:	83 2e 60 02 	sll  %i1, 2, %g1
   18ba0:	f0 00 80 01 	ld  [ %g2 + %g1 ], %i0
   18ba4:	ba 10 20 00 	clr  %i5
   18ba8:	80 a7 40 1a 	cmp  %i5, %i2
   18bac:	1a 80 00 15 	bcc  18c00 <rgb_gray_convert+0x98>
   18bb0:	b2 06 60 01 	inc  %i1
   18bb4:	c2 09 00 00 	ldub  [ %g4 ], %g1
   18bb8:	c4 09 20 01 	ldub  [ %g4 + 1 ], %g2
   18bbc:	c6 09 20 02 	ldub  [ %g4 + 2 ], %g3
   18bc0:	83 28 60 02 	sll  %g1, 2, %g1
   18bc4:	85 28 a0 02 	sll  %g2, 2, %g2
   18bc8:	84 00 80 1b 	add  %g2, %i3, %g2
   18bcc:	c2 06 c0 01 	ld  [ %i3 + %g1 ], %g1
   18bd0:	c4 00 a4 00 	ld  [ %g2 + 0x400 ], %g2
   18bd4:	82 00 40 02 	add  %g1, %g2, %g1
   18bd8:	87 28 e0 02 	sll  %g3, 2, %g3
   18bdc:	86 00 c0 1b 	add  %g3, %i3, %g3
   18be0:	c4 00 e8 00 	ld  [ %g3 + 0x800 ], %g2
   18be4:	82 00 40 02 	add  %g1, %g2, %g1
   18be8:	83 38 60 10 	sra  %g1, 0x10, %g1
   18bec:	c2 2e 00 1d 	stb  %g1, [ %i0 + %i5 ]
   18bf0:	ba 07 60 01 	inc  %i5
   18bf4:	80 a7 40 1a 	cmp  %i5, %i2
   18bf8:	0a bf ff ef 	bcs  18bb4 <rgb_gray_convert+0x4c>
   18bfc:	88 01 20 03 	add  %g4, 3, %g4
   18c00:	b8 87 3f ff 	addcc  %i4, -1, %i4
   18c04:	3c bf ff e3 	bpos,a   18b90 <rgb_gray_convert+0x28>
   18c08:	c2 03 c0 00 	ld  [ %o7 ], %g1
   18c0c:	81 c7 e0 08 	ret 
   18c10:	81 e8 00 00 	restore 

00018c14 <cmyk_ycck_convert>:
   18c14:	9d e3 bf 98 	save  %sp, -104, %sp
   18c18:	a0 10 00 19 	mov  %i1, %l0
   18c1c:	a6 10 00 1a 	mov  %i2, %l3
   18c20:	90 10 00 1b 	mov  %i3, %o0
   18c24:	c2 06 21 58 	ld  [ %i0 + 0x158 ], %g1
   18c28:	f6 00 60 08 	ld  [ %g1 + 8 ], %i3
   18c2c:	92 87 3f ff 	addcc  %i4, -1, %o1
   18c30:	0c 80 00 41 	bneg  18d34 <cmyk_ycck_convert+0x120>
   18c34:	d4 06 20 18 	ld  [ %i0 + 0x18 ], %o2
   18c38:	c2 04 00 00 	ld  [ %l0 ], %g1
   18c3c:	a0 04 20 04 	add  %l0, 4, %l0
   18c40:	b8 10 00 01 	mov  %g1, %i4
   18c44:	c2 04 c0 00 	ld  [ %l3 ], %g1
   18c48:	85 2a 20 02 	sll  %o0, 2, %g2
   18c4c:	d6 00 40 02 	ld  [ %g1 + %g2 ], %o3
   18c50:	c2 04 e0 04 	ld  [ %l3 + 4 ], %g1
   18c54:	d8 00 40 02 	ld  [ %g1 + %g2 ], %o4
   18c58:	c2 04 e0 08 	ld  [ %l3 + 8 ], %g1
   18c5c:	da 00 40 02 	ld  [ %g1 + %g2 ], %o5
   18c60:	c2 04 e0 0c 	ld  [ %l3 + 0xc ], %g1
   18c64:	de 00 40 02 	ld  [ %g1 + %g2 ], %o7
   18c68:	b0 10 20 00 	clr  %i0
   18c6c:	80 a6 00 0a 	cmp  %i0, %o2
   18c70:	1a 80 00 2e 	bcc  18d28 <cmyk_ycck_convert+0x114>
   18c74:	90 02 20 01 	inc  %o0
   18c78:	b4 10 20 ff 	mov  0xff, %i2
   18c7c:	25 00 00 04 	sethi  %hi(0x1000), %l2
   18c80:	33 00 00 05 	sethi  %hi(0x1400), %i1
   18c84:	23 00 00 06 	sethi  %hi(0x1800), %l1
   18c88:	c8 0f 00 00 	ldub  [ %i4 ], %g4
   18c8c:	88 26 80 04 	sub  %i2, %g4, %g4
   18c90:	c6 0f 20 01 	ldub  [ %i4 + 1 ], %g3
   18c94:	86 26 80 03 	sub  %i2, %g3, %g3
   18c98:	fa 0f 20 02 	ldub  [ %i4 + 2 ], %i5
   18c9c:	ba 26 80 1d 	sub  %i2, %i5, %i5
   18ca0:	c2 0f 20 03 	ldub  [ %i4 + 3 ], %g1
   18ca4:	c2 2b c0 18 	stb  %g1, [ %o7 + %i0 ]
   18ca8:	89 29 20 02 	sll  %g4, 2, %g4
   18cac:	87 28 e0 02 	sll  %g3, 2, %g3
   18cb0:	86 00 c0 1b 	add  %g3, %i3, %g3
   18cb4:	c2 06 c0 04 	ld  [ %i3 + %g4 ], %g1
   18cb8:	c4 00 e4 00 	ld  [ %g3 + 0x400 ], %g2
   18cbc:	82 00 40 02 	add  %g1, %g2, %g1
   18cc0:	bb 2f 60 02 	sll  %i5, 2, %i5
   18cc4:	ba 07 40 1b 	add  %i5, %i3, %i5
   18cc8:	c4 07 68 00 	ld  [ %i5 + 0x800 ], %g2
   18ccc:	82 00 40 02 	add  %g1, %g2, %g1
   18cd0:	83 38 60 10 	sra  %g1, 0x10, %g1
   18cd4:	c2 2a c0 18 	stb  %g1, [ %o3 + %i0 ]
   18cd8:	88 01 00 1b 	add  %g4, %i3, %g4
   18cdc:	c2 01 2c 00 	ld  [ %g4 + 0xc00 ], %g1
   18ce0:	c4 00 c0 12 	ld  [ %g3 + %l2 ], %g2
   18ce4:	82 00 40 02 	add  %g1, %g2, %g1
   18ce8:	c4 07 40 19 	ld  [ %i5 + %i1 ], %g2
   18cec:	82 00 40 02 	add  %g1, %g2, %g1
   18cf0:	83 38 60 10 	sra  %g1, 0x10, %g1
   18cf4:	c2 2b 00 18 	stb  %g1, [ %o4 + %i0 ]
   18cf8:	c2 01 00 19 	ld  [ %g4 + %i1 ], %g1
   18cfc:	c4 00 c0 11 	ld  [ %g3 + %l1 ], %g2
   18d00:	82 00 40 02 	add  %g1, %g2, %g1
   18d04:	05 00 00 07 	sethi  %hi(0x1c00), %g2
   18d08:	c4 07 40 02 	ld  [ %i5 + %g2 ], %g2
   18d0c:	82 00 40 02 	add  %g1, %g2, %g1
   18d10:	83 38 60 10 	sra  %g1, 0x10, %g1
   18d14:	c2 2b 40 18 	stb  %g1, [ %o5 + %i0 ]
   18d18:	b0 06 20 01 	inc  %i0
   18d1c:	80 a6 00 0a 	cmp  %i0, %o2
   18d20:	0a bf ff da 	bcs  18c88 <cmyk_ycck_convert+0x74>
   18d24:	b8 07 20 04 	add  %i4, 4, %i4
   18d28:	92 82 7f ff 	addcc  %o1, -1, %o1
   18d2c:	3c bf ff c4 	bpos,a   18c3c <cmyk_ycck_convert+0x28>
   18d30:	c2 04 00 00 	ld  [ %l0 ], %g1
   18d34:	81 c7 e0 08 	ret 
   18d38:	81 e8 00 00 	restore 

00018d3c <grayscale_convert>:
   18d3c:	da 02 20 18 	ld  [ %o0 + 0x18 ], %o5
   18d40:	98 83 3f ff 	addcc  %o4, -1, %o4
   18d44:	0c 80 00 15 	bneg  18d98 <grayscale_convert+0x5c>
   18d48:	d0 02 20 20 	ld  [ %o0 + 0x20 ], %o0
   18d4c:	c2 02 40 00 	ld  [ %o1 ], %g1
   18d50:	92 02 60 04 	add  %o1, 4, %o1
   18d54:	86 10 00 01 	mov  %g1, %g3
   18d58:	c4 02 80 00 	ld  [ %o2 ], %g2
   18d5c:	83 2a e0 02 	sll  %o3, 2, %g1
   18d60:	c8 00 80 01 	ld  [ %g2 + %g1 ], %g4
   18d64:	84 10 20 00 	clr  %g2
   18d68:	80 a0 80 0d 	cmp  %g2, %o5
   18d6c:	1a 80 00 08 	bcc  18d8c <grayscale_convert+0x50>
   18d70:	96 02 e0 01 	inc  %o3
   18d74:	c2 08 c0 00 	ldub  [ %g3 ], %g1
   18d78:	c2 29 00 02 	stb  %g1, [ %g4 + %g2 ]
   18d7c:	84 00 a0 01 	inc  %g2
   18d80:	80 a0 80 0d 	cmp  %g2, %o5
   18d84:	0a bf ff fc 	bcs  18d74 <grayscale_convert+0x38>
   18d88:	86 00 c0 08 	add  %g3, %o0, %g3
   18d8c:	98 83 3f ff 	addcc  %o4, -1, %o4
   18d90:	3c bf ff f0 	bpos,a   18d50 <grayscale_convert+0x14>
   18d94:	c2 02 40 00 	ld  [ %o1 ], %g1
   18d98:	81 c3 e0 08 	retl 
   18d9c:	01 00 00 00 	nop 

00018da0 <null_convert>:
   18da0:	9d e3 bf 98 	save  %sp, -104, %sp
   18da4:	9a 10 00 1a 	mov  %i2, %o5
   18da8:	9e 10 00 1b 	mov  %i3, %o7
   18dac:	fa 06 20 34 	ld  [ %i0 + 0x34 ], %i5
   18db0:	b4 87 3f ff 	addcc  %i4, -1, %i2
   18db4:	0c 80 00 1c 	bneg  18e24 <null_convert+0x84>
   18db8:	f6 06 20 18 	ld  [ %i0 + 0x18 ], %i3
   18dbc:	b0 10 20 00 	clr  %i0
   18dc0:	80 a6 00 1d 	cmp  %i0, %i5
   18dc4:	36 80 00 15 	bge,a   18e18 <null_convert+0x78>
   18dc8:	b2 06 60 04 	add  %i1, 4, %i1
   18dcc:	b9 2b e0 02 	sll  %o7, 2, %i4
   18dd0:	c4 06 40 00 	ld  [ %i1 ], %g2
   18dd4:	83 2e 20 02 	sll  %i0, 2, %g1
   18dd8:	c2 03 40 01 	ld  [ %o5 + %g1 ], %g1
   18ddc:	86 10 20 00 	clr  %g3
   18de0:	80 a0 c0 1b 	cmp  %g3, %i3
   18de4:	1a 80 00 08 	bcc  18e04 <null_convert+0x64>
   18de8:	c8 00 40 1c 	ld  [ %g1 + %i4 ], %g4
   18dec:	c2 08 80 18 	ldub  [ %g2 + %i0 ], %g1
   18df0:	c2 29 00 03 	stb  %g1, [ %g4 + %g3 ]
   18df4:	86 00 e0 01 	inc  %g3
   18df8:	80 a0 c0 1b 	cmp  %g3, %i3
   18dfc:	0a bf ff fc 	bcs  18dec <null_convert+0x4c>
   18e00:	84 00 80 1d 	add  %g2, %i5, %g2
   18e04:	b0 06 20 01 	inc  %i0
   18e08:	80 a6 00 1d 	cmp  %i0, %i5
   18e0c:	26 bf ff f2 	bl,a   18dd4 <null_convert+0x34>
   18e10:	c4 06 40 00 	ld  [ %i1 ], %g2
   18e14:	b2 06 60 04 	add  %i1, 4, %i1
   18e18:	b4 86 bf ff 	addcc  %i2, -1, %i2
   18e1c:	1c bf ff e8 	bpos  18dbc <null_convert+0x1c>
   18e20:	9e 03 e0 01 	inc  %o7
   18e24:	81 c7 e0 08 	ret 
   18e28:	81 e8 00 00 	restore 

00018e2c <null_method>:
   18e2c:	81 c3 e0 08 	retl 
   18e30:	01 00 00 00 	nop 

00018e34 <jinit_color_converter>:
   18e34:	9d e3 bf 98 	save  %sp, -104, %sp
   18e38:	c2 06 20 04 	ld  [ %i0 + 4 ], %g1
   18e3c:	c2 00 40 00 	ld  [ %g1 ], %g1
   18e40:	90 10 00 18 	mov  %i0, %o0
   18e44:	92 10 20 01 	mov  1, %o1
   18e48:	9f c0 40 00 	call  %g1
   18e4c:	94 10 20 0c 	mov  0xc, %o2
   18e50:	d0 26 21 58 	st  %o0, [ %i0 + 0x158 ]
   18e54:	03 00 00 63 	sethi  %hi(0x18c00), %g1
   18e58:	82 10 62 2c 	or  %g1, 0x22c, %g1	! 18e2c <null_method>
   18e5c:	c2 22 00 00 	st  %g1, [ %o0 ]
   18e60:	c2 06 20 24 	ld  [ %i0 + 0x24 ], %g1
   18e64:	80 a0 60 05 	cmp  %g1, 5
   18e68:	18 80 00 2c 	bgu  18f18 <jinit_color_converter+0xe4>
   18e6c:	a0 10 00 08 	mov  %o0, %l0
   18e70:	83 28 60 02 	sll  %g1, 2, %g1
   18e74:	05 00 00 62 	sethi  %hi(0x18800), %g2
   18e78:	84 10 a1 6c 	or  %g2, 0x16c, %g2	! 1896c <jinit_c_coef_controller+0x110>
   18e7c:	c2 00 80 01 	ld  [ %g2 + %g1 ], %g1
   18e80:	81 c0 40 00 	jmp  %g1
   18e84:	01 00 00 00 	nop 
   18e88:	c2 06 20 20 	ld  [ %i0 + 0x20 ], %g1
   18e8c:	80 a0 60 01 	cmp  %g1, 1
   18e90:	02 80 00 2d 	be  18f44 <jinit_color_converter+0x110>
   18e94:	82 10 20 07 	mov  7, %g1
   18e98:	c4 06 00 00 	ld  [ %i0 ], %g2
   18e9c:	c2 20 a0 14 	st  %g1, [ %g2 + 0x14 ]
   18ea0:	c2 06 00 00 	ld  [ %i0 ], %g1
   18ea4:	c2 00 40 00 	ld  [ %g1 ], %g1
   18ea8:	9f c0 40 00 	call  %g1
   18eac:	90 10 00 18 	mov  %i0, %o0
   18eb0:	10 80 00 26 	b  18f48 <jinit_color_converter+0x114>
   18eb4:	c2 06 20 38 	ld  [ %i0 + 0x38 ], %g1
   18eb8:	c2 06 20 20 	ld  [ %i0 + 0x20 ], %g1
   18ebc:	80 a0 60 03 	cmp  %g1, 3
   18ec0:	02 80 00 21 	be  18f44 <jinit_color_converter+0x110>
   18ec4:	82 10 20 07 	mov  7, %g1
   18ec8:	c4 06 00 00 	ld  [ %i0 ], %g2
   18ecc:	c2 20 a0 14 	st  %g1, [ %g2 + 0x14 ]
   18ed0:	c2 06 00 00 	ld  [ %i0 ], %g1
   18ed4:	c2 00 40 00 	ld  [ %g1 ], %g1
   18ed8:	9f c0 40 00 	call  %g1
   18edc:	90 10 00 18 	mov  %i0, %o0
   18ee0:	10 80 00 1a 	b  18f48 <jinit_color_converter+0x114>
   18ee4:	c2 06 20 38 	ld  [ %i0 + 0x38 ], %g1
   18ee8:	c2 06 20 20 	ld  [ %i0 + 0x20 ], %g1
   18eec:	80 a0 60 04 	cmp  %g1, 4
   18ef0:	02 80 00 15 	be  18f44 <jinit_color_converter+0x110>
   18ef4:	82 10 20 07 	mov  7, %g1
   18ef8:	c4 06 00 00 	ld  [ %i0 ], %g2
   18efc:	c2 20 a0 14 	st  %g1, [ %g2 + 0x14 ]
   18f00:	c2 06 00 00 	ld  [ %i0 ], %g1
   18f04:	c2 00 40 00 	ld  [ %g1 ], %g1
   18f08:	9f c0 40 00 	call  %g1
   18f0c:	90 10 00 18 	mov  %i0, %o0
   18f10:	10 80 00 0e 	b  18f48 <jinit_color_converter+0x114>
   18f14:	c2 06 20 38 	ld  [ %i0 + 0x38 ], %g1
   18f18:	c2 06 20 20 	ld  [ %i0 + 0x20 ], %g1
   18f1c:	80 a0 60 00 	cmp  %g1, 0
   18f20:	34 80 00 0a 	bg,a   18f48 <jinit_color_converter+0x114>
   18f24:	c2 06 20 38 	ld  [ %i0 + 0x38 ], %g1
   18f28:	c4 06 00 00 	ld  [ %i0 ], %g2
   18f2c:	82 10 20 07 	mov  7, %g1
   18f30:	c2 20 a0 14 	st  %g1, [ %g2 + 0x14 ]
   18f34:	c2 06 00 00 	ld  [ %i0 ], %g1
   18f38:	c2 00 40 00 	ld  [ %g1 ], %g1
   18f3c:	9f c0 40 00 	call  %g1
   18f40:	90 10 00 18 	mov  %i0, %o0
   18f44:	c2 06 20 38 	ld  [ %i0 + 0x38 ], %g1
   18f48:	80 a0 60 05 	cmp  %g1, 5
   18f4c:	38 80 00 a8 	bgu,a   191ec <jinit_color_converter+0x3b8>
   18f50:	c4 06 20 38 	ld  [ %i0 + 0x38 ], %g2
   18f54:	83 28 60 02 	sll  %g1, 2, %g1
   18f58:	05 00 00 62 	sethi  %hi(0x18800), %g2
   18f5c:	84 10 a1 54 	or  %g2, 0x154, %g2	! 18954 <jinit_c_coef_controller+0xf8>
   18f60:	c2 00 80 01 	ld  [ %g2 + %g1 ], %g1
   18f64:	81 c0 40 00 	jmp  %g1
   18f68:	01 00 00 00 	nop 
   18f6c:	c2 06 20 34 	ld  [ %i0 + 0x34 ], %g1
   18f70:	80 a0 60 01 	cmp  %g1, 1
   18f74:	02 80 00 08 	be  18f94 <jinit_color_converter+0x160>
   18f78:	82 10 20 08 	mov  8, %g1
   18f7c:	c4 06 00 00 	ld  [ %i0 ], %g2
   18f80:	c2 20 a0 14 	st  %g1, [ %g2 + 0x14 ]
   18f84:	c2 06 00 00 	ld  [ %i0 ], %g1
   18f88:	c2 00 40 00 	ld  [ %g1 ], %g1
   18f8c:	9f c0 40 00 	call  %g1
   18f90:	90 10 00 18 	mov  %i0, %o0
   18f94:	c2 06 20 24 	ld  [ %i0 + 0x24 ], %g1
   18f98:	80 a0 60 01 	cmp  %g1, 1
   18f9c:	12 80 00 06 	bne  18fb4 <jinit_color_converter+0x180>
   18fa0:	80 a0 60 02 	cmp  %g1, 2
   18fa4:	03 00 00 63 	sethi  %hi(0x18c00), %g1
   18fa8:	82 10 61 3c 	or  %g1, 0x13c, %g1	! 18d3c <grayscale_convert>
   18fac:	10 80 00 a3 	b  19238 <jinit_color_converter+0x404>
   18fb0:	c2 24 20 04 	st  %g1, [ %l0 + 4 ]
   18fb4:	32 80 00 09 	bne,a   18fd8 <jinit_color_converter+0x1a4>
   18fb8:	c2 06 20 24 	ld  [ %i0 + 0x24 ], %g1
   18fbc:	03 00 00 62 	sethi  %hi(0x18800), %g1
   18fc0:	82 10 61 84 	or  %g1, 0x184, %g1	! 18984 <rgb_ycc_start>
   18fc4:	c2 24 00 00 	st  %g1, [ %l0 ]
   18fc8:	03 00 00 62 	sethi  %hi(0x18800), %g1
   18fcc:	82 10 63 68 	or  %g1, 0x368, %g1	! 18b68 <rgb_gray_convert>
   18fd0:	10 80 00 9a 	b  19238 <jinit_color_converter+0x404>
   18fd4:	c2 24 20 04 	st  %g1, [ %l0 + 4 ]
   18fd8:	80 a0 60 03 	cmp  %g1, 3
   18fdc:	32 80 00 06 	bne,a   18ff4 <jinit_color_converter+0x1c0>
   18fe0:	c4 06 00 00 	ld  [ %i0 ], %g2
   18fe4:	03 00 00 63 	sethi  %hi(0x18c00), %g1
   18fe8:	82 10 61 3c 	or  %g1, 0x13c, %g1	! 18d3c <grayscale_convert>
   18fec:	10 80 00 93 	b  19238 <jinit_color_converter+0x404>
   18ff0:	c2 24 20 04 	st  %g1, [ %l0 + 4 ]
   18ff4:	82 10 20 19 	mov  0x19, %g1
   18ff8:	c2 20 a0 14 	st  %g1, [ %g2 + 0x14 ]
   18ffc:	c2 06 00 00 	ld  [ %i0 ], %g1
   19000:	c2 00 40 00 	ld  [ %g1 ], %g1
   19004:	9f c0 40 00 	call  %g1
   19008:	90 10 00 18 	mov  %i0, %o0
   1900c:	30 80 00 8b 	b,a   19238 <jinit_color_converter+0x404>
   19010:	c2 06 20 34 	ld  [ %i0 + 0x34 ], %g1
   19014:	80 a0 60 03 	cmp  %g1, 3
   19018:	02 80 00 08 	be  19038 <jinit_color_converter+0x204>
   1901c:	82 10 20 08 	mov  8, %g1
   19020:	c4 06 00 00 	ld  [ %i0 ], %g2
   19024:	c2 20 a0 14 	st  %g1, [ %g2 + 0x14 ]
   19028:	c2 06 00 00 	ld  [ %i0 ], %g1
   1902c:	c2 00 40 00 	ld  [ %g1 ], %g1
   19030:	9f c0 40 00 	call  %g1
   19034:	90 10 00 18 	mov  %i0, %o0
   19038:	c2 06 20 24 	ld  [ %i0 + 0x24 ], %g1
   1903c:	80 a0 60 02 	cmp  %g1, 2
   19040:	32 80 00 06 	bne,a   19058 <jinit_color_converter+0x224>
   19044:	c4 06 00 00 	ld  [ %i0 ], %g2
   19048:	03 00 00 63 	sethi  %hi(0x18c00), %g1
   1904c:	82 10 61 a0 	or  %g1, 0x1a0, %g1	! 18da0 <null_convert>
   19050:	10 80 00 7a 	b  19238 <jinit_color_converter+0x404>
   19054:	c2 24 20 04 	st  %g1, [ %l0 + 4 ]
   19058:	82 10 20 19 	mov  0x19, %g1
   1905c:	c2 20 a0 14 	st  %g1, [ %g2 + 0x14 ]
   19060:	c2 06 00 00 	ld  [ %i0 ], %g1
   19064:	c2 00 40 00 	ld  [ %g1 ], %g1
   19068:	9f c0 40 00 	call  %g1
   1906c:	90 10 00 18 	mov  %i0, %o0
   19070:	30 80 00 72 	b,a   19238 <jinit_color_converter+0x404>
   19074:	c2 06 20 34 	ld  [ %i0 + 0x34 ], %g1
   19078:	80 a0 60 03 	cmp  %g1, 3
   1907c:	02 80 00 08 	be  1909c <jinit_color_converter+0x268>
   19080:	82 10 20 08 	mov  8, %g1
   19084:	c4 06 00 00 	ld  [ %i0 ], %g2
   19088:	c2 20 a0 14 	st  %g1, [ %g2 + 0x14 ]
   1908c:	c2 06 00 00 	ld  [ %i0 ], %g1
   19090:	c2 00 40 00 	ld  [ %g1 ], %g1
   19094:	9f c0 40 00 	call  %g1
   19098:	90 10 00 18 	mov  %i0, %o0
   1909c:	c2 06 20 24 	ld  [ %i0 + 0x24 ], %g1
   190a0:	80 a0 60 02 	cmp  %g1, 2
   190a4:	12 80 00 09 	bne  190c8 <jinit_color_converter+0x294>
   190a8:	80 a0 60 03 	cmp  %g1, 3
   190ac:	03 00 00 62 	sethi  %hi(0x18800), %g1
   190b0:	82 10 61 84 	or  %g1, 0x184, %g1	! 18984 <rgb_ycc_start>
   190b4:	c2 24 00 00 	st  %g1, [ %l0 ]
   190b8:	03 00 00 62 	sethi  %hi(0x18800), %g1
   190bc:	82 10 62 60 	or  %g1, 0x260, %g1	! 18a60 <rgb_ycc_convert>
   190c0:	10 80 00 5e 	b  19238 <jinit_color_converter+0x404>
   190c4:	c2 24 20 04 	st  %g1, [ %l0 + 4 ]
   190c8:	32 80 00 06 	bne,a   190e0 <jinit_color_converter+0x2ac>
   190cc:	c4 06 00 00 	ld  [ %i0 ], %g2
   190d0:	03 00 00 63 	sethi  %hi(0x18c00), %g1
   190d4:	82 10 61 a0 	or  %g1, 0x1a0, %g1	! 18da0 <null_convert>
   190d8:	10 80 00 58 	b  19238 <jinit_color_converter+0x404>
   190dc:	c2 24 20 04 	st  %g1, [ %l0 + 4 ]
   190e0:	82 10 20 19 	mov  0x19, %g1
   190e4:	c2 20 a0 14 	st  %g1, [ %g2 + 0x14 ]
   190e8:	c2 06 00 00 	ld  [ %i0 ], %g1
   190ec:	c2 00 40 00 	ld  [ %g1 ], %g1
   190f0:	9f c0 40 00 	call  %g1
   190f4:	90 10 00 18 	mov  %i0, %o0
   190f8:	30 80 00 50 	b,a   19238 <jinit_color_converter+0x404>
   190fc:	c2 06 20 34 	ld  [ %i0 + 0x34 ], %g1
   19100:	80 a0 60 04 	cmp  %g1, 4
   19104:	02 80 00 08 	be  19124 <jinit_color_converter+0x2f0>
   19108:	82 10 20 08 	mov  8, %g1
   1910c:	c4 06 00 00 	ld  [ %i0 ], %g2
   19110:	c2 20 a0 14 	st  %g1, [ %g2 + 0x14 ]
   19114:	c2 06 00 00 	ld  [ %i0 ], %g1
   19118:	c2 00 40 00 	ld  [ %g1 ], %g1
   1911c:	9f c0 40 00 	call  %g1
   19120:	90 10 00 18 	mov  %i0, %o0
   19124:	c2 06 20 24 	ld  [ %i0 + 0x24 ], %g1
   19128:	80 a0 60 04 	cmp  %g1, 4
   1912c:	32 80 00 06 	bne,a   19144 <jinit_color_converter+0x310>
   19130:	c4 06 00 00 	ld  [ %i0 ], %g2
   19134:	03 00 00 63 	sethi  %hi(0x18c00), %g1
   19138:	82 10 61 a0 	or  %g1, 0x1a0, %g1	! 18da0 <null_convert>
   1913c:	10 80 00 3f 	b  19238 <jinit_color_converter+0x404>
   19140:	c2 24 20 04 	st  %g1, [ %l0 + 4 ]
   19144:	82 10 20 19 	mov  0x19, %g1
   19148:	c2 20 a0 14 	st  %g1, [ %g2 + 0x14 ]
   1914c:	c2 06 00 00 	ld  [ %i0 ], %g1
   19150:	c2 00 40 00 	ld  [ %g1 ], %g1
   19154:	9f c0 40 00 	call  %g1
   19158:	90 10 00 18 	mov  %i0, %o0
   1915c:	30 80 00 37 	b,a   19238 <jinit_color_converter+0x404>
   19160:	c2 06 20 34 	ld  [ %i0 + 0x34 ], %g1
   19164:	80 a0 60 04 	cmp  %g1, 4
   19168:	02 80 00 08 	be  19188 <jinit_color_converter+0x354>
   1916c:	82 10 20 08 	mov  8, %g1
   19170:	c4 06 00 00 	ld  [ %i0 ], %g2
   19174:	c2 20 a0 14 	st  %g1, [ %g2 + 0x14 ]
   19178:	c2 06 00 00 	ld  [ %i0 ], %g1
   1917c:	c2 00 40 00 	ld  [ %g1 ], %g1
   19180:	9f c0 40 00 	call  %g1
   19184:	90 10 00 18 	mov  %i0, %o0
   19188:	c2 06 20 24 	ld  [ %i0 + 0x24 ], %g1
   1918c:	80 a0 60 04 	cmp  %g1, 4
   19190:	12 80 00 09 	bne  191b4 <jinit_color_converter+0x380>
   19194:	80 a0 60 05 	cmp  %g1, 5
   19198:	03 00 00 62 	sethi  %hi(0x18800), %g1
   1919c:	82 10 61 84 	or  %g1, 0x184, %g1	! 18984 <rgb_ycc_start>
   191a0:	c2 24 00 00 	st  %g1, [ %l0 ]
   191a4:	03 00 00 63 	sethi  %hi(0x18c00), %g1
   191a8:	82 10 60 14 	or  %g1, 0x14, %g1	! 18c14 <cmyk_ycck_convert>
   191ac:	10 80 00 23 	b  19238 <jinit_color_converter+0x404>
   191b0:	c2 24 20 04 	st  %g1, [ %l0 + 4 ]
   191b4:	32 80 00 06 	bne,a   191cc <jinit_color_converter+0x398>
   191b8:	c4 06 00 00 	ld  [ %i0 ], %g2
   191bc:	03 00 00 63 	sethi  %hi(0x18c00), %g1
   191c0:	82 10 61 a0 	or  %g1, 0x1a0, %g1	! 18da0 <null_convert>
   191c4:	10 80 00 1d 	b  19238 <jinit_color_converter+0x404>
   191c8:	c2 24 20 04 	st  %g1, [ %l0 + 4 ]
   191cc:	82 10 20 19 	mov  0x19, %g1
   191d0:	c2 20 a0 14 	st  %g1, [ %g2 + 0x14 ]
   191d4:	c2 06 00 00 	ld  [ %i0 ], %g1
   191d8:	c2 00 40 00 	ld  [ %g1 ], %g1
   191dc:	9f c0 40 00 	call  %g1
   191e0:	90 10 00 18 	mov  %i0, %o0
   191e4:	30 80 00 15 	b,a   19238 <jinit_color_converter+0x404>
   191e8:	c4 06 20 38 	ld  [ %i0 + 0x38 ], %g2
   191ec:	c2 06 20 24 	ld  [ %i0 + 0x24 ], %g1
   191f0:	80 a0 80 01 	cmp  %g2, %g1
   191f4:	32 80 00 08 	bne,a   19214 <jinit_color_converter+0x3e0>
   191f8:	c4 06 00 00 	ld  [ %i0 ], %g2
   191fc:	c4 06 20 34 	ld  [ %i0 + 0x34 ], %g2
   19200:	c2 06 20 20 	ld  [ %i0 + 0x20 ], %g1
   19204:	80 a0 80 01 	cmp  %g2, %g1
   19208:	02 80 00 0a 	be  19230 <jinit_color_converter+0x3fc>
   1920c:	03 00 00 63 	sethi  %hi(0x18c00), %g1
   19210:	c4 06 00 00 	ld  [ %i0 ], %g2
   19214:	82 10 20 19 	mov  0x19, %g1
   19218:	c2 20 a0 14 	st  %g1, [ %g2 + 0x14 ]
   1921c:	c2 06 00 00 	ld  [ %i0 ], %g1
   19220:	c2 00 40 00 	ld  [ %g1 ], %g1
   19224:	9f c0 40 00 	call  %g1
   19228:	90 10 00 18 	mov  %i0, %o0
   1922c:	03 00 00 63 	sethi  %hi(0x18c00), %g1
   19230:	82 10 61 a0 	or  %g1, 0x1a0, %g1	! 18da0 <null_convert>
   19234:	c2 24 20 04 	st  %g1, [ %l0 + 4 ]
   19238:	81 c7 e0 08 	ret 
   1923c:	81 e8 00 00 	restore 

00019240 <start_pass_downsample>:
   19240:	81 c3 e0 08 	retl 
   19244:	01 00 00 00 	nop 

00019248 <expand_right_edge>:
   19248:	96 22 c0 0a 	sub  %o3, %o2, %o3
   1924c:	80 a2 e0 00 	cmp  %o3, 0
   19250:	04 80 00 14 	ble  192a0 <expand_right_edge+0x58>
   19254:	88 10 20 00 	clr  %g4
   19258:	80 a1 00 09 	cmp  %g4, %o1
   1925c:	16 80 00 11 	bge  192a0 <expand_right_edge+0x58>
   19260:	83 29 20 02 	sll  %g4, 2, %g1
   19264:	c2 02 00 01 	ld  [ %o0 + %g1 ], %g1
   19268:	84 02 80 01 	add  %o2, %g1, %g2
   1926c:	c6 08 bf ff 	ldub  [ %g2 + -1 ], %g3
   19270:	80 a2 e0 00 	cmp  %o3, 0
   19274:	04 80 00 07 	ble  19290 <expand_right_edge+0x48>
   19278:	82 10 00 0b 	mov  %o3, %g1
   1927c:	c6 28 80 00 	stb  %g3, [ %g2 ]
   19280:	82 00 7f ff 	add  %g1, -1, %g1
   19284:	80 a0 60 00 	cmp  %g1, 0
   19288:	14 bf ff fd 	bg  1927c <expand_right_edge+0x34>
   1928c:	84 00 a0 01 	inc  %g2
   19290:	88 01 20 01 	inc  %g4
   19294:	80 a1 00 09 	cmp  %g4, %o1
   19298:	06 bf ff f3 	bl  19264 <expand_right_edge+0x1c>
   1929c:	83 29 20 02 	sll  %g4, 2, %g1
   192a0:	81 c3 e0 08 	retl 
   192a4:	01 00 00 00 	nop 

000192a8 <sep_downsample>:
   192a8:	9d e3 bf 98 	save  %sp, -104, %sp
   192ac:	e4 06 21 5c 	ld  [ %i0 + 0x15c ], %l2
   192b0:	a2 10 20 00 	clr  %l1
   192b4:	c2 06 20 34 	ld  [ %i0 + 0x34 ], %g1
   192b8:	80 a0 60 00 	cmp  %g1, 0
   192bc:	04 80 00 15 	ble  19310 <sep_downsample+0x68>
   192c0:	e0 06 20 3c 	ld  [ %i0 + 0x3c ], %l0
   192c4:	b5 2e a0 02 	sll  %i2, 2, %i2
   192c8:	83 2c 60 02 	sll  %l1, 2, %g1
   192cc:	d4 06 40 01 	ld  [ %i1 + %g1 ], %o2
   192d0:	d6 04 20 0c 	ld  [ %l0 + 0xc ], %o3
   192d4:	96 5f 00 0b 	smul  %i4, %o3, %o3
   192d8:	97 2a e0 02 	sll  %o3, 2, %o3
   192dc:	c4 06 c0 01 	ld  [ %i3 + %g1 ], %g2
   192e0:	82 00 40 12 	add  %g1, %l2, %g1
   192e4:	c2 00 60 0c 	ld  [ %g1 + 0xc ], %g1
   192e8:	90 10 00 18 	mov  %i0, %o0
   192ec:	92 10 00 10 	mov  %l0, %o1
   192f0:	94 06 80 0a 	add  %i2, %o2, %o2
   192f4:	9f c0 40 00 	call  %g1
   192f8:	96 02 c0 02 	add  %o3, %g2, %o3
   192fc:	a2 04 60 01 	inc  %l1
   19300:	c2 06 20 34 	ld  [ %i0 + 0x34 ], %g1
   19304:	80 a0 40 11 	cmp  %g1, %l1
   19308:	14 bf ff f0 	bg  192c8 <sep_downsample+0x20>
   1930c:	a0 04 20 54 	add  %l0, 0x54, %l0
   19310:	81 c7 e0 08 	ret 
   19314:	81 e8 00 00 	restore 

00019318 <int_downsample>:
   19318:	9d e3 bf 98 	save  %sp, -104, %sp
   1931c:	c2 06 60 1c 	ld  [ %i1 + 0x1c ], %g1
   19320:	a7 28 60 03 	sll  %g1, 3, %l3
   19324:	c2 06 20 e0 	ld  [ %i0 + 0xe0 ], %g1
   19328:	85 38 60 1f 	sra  %g1, 0x1f, %g2
   1932c:	81 80 a0 00 	mov  %g2, %y
   19330:	c4 06 60 08 	ld  [ %i1 + 8 ], %g2
   19334:	01 00 00 00 	nop 
   19338:	01 00 00 00 	nop 
   1933c:	a0 78 40 02 	sdiv  %g1, %g2, %l0
   19340:	d2 06 20 e4 	ld  [ %i0 + 0xe4 ], %o1
   19344:	83 3a 60 1f 	sra  %o1, 0x1f, %g1
   19348:	81 80 60 00 	mov  %g1, %y
   1934c:	c2 06 60 0c 	ld  [ %i1 + 0xc ], %g1
   19350:	01 00 00 00 	nop 
   19354:	01 00 00 00 	nop 
   19358:	a2 7a 40 01 	sdiv  %o1, %g1, %l1
   1935c:	a4 5c 00 11 	smul  %l0, %l1, %l2
   19360:	83 34 a0 1f 	srl  %l2, 0x1f, %g1
   19364:	82 04 80 01 	add  %l2, %g1, %g1
   19368:	a9 38 60 01 	sra  %g1, 1, %l4
   1936c:	90 10 00 1a 	mov  %i2, %o0
   19370:	d4 06 20 18 	ld  [ %i0 + 0x18 ], %o2
   19374:	7f ff ff b5 	call  19248 <expand_right_edge>
   19378:	96 5c c0 10 	smul  %l3, %l0, %o3
   1937c:	94 10 20 00 	clr  %o2
   19380:	c2 06 60 0c 	ld  [ %i1 + 0xc ], %g1
   19384:	80 a0 60 00 	cmp  %g1, 0
   19388:	04 80 00 2f 	ble  19444 <int_downsample+0x12c>
   1938c:	90 10 20 00 	clr  %o0
   19390:	83 2a 20 02 	sll  %o0, 2, %g1
   19394:	d6 06 c0 01 	ld  [ %i3 + %g1 ], %o3
   19398:	92 10 20 00 	clr  %o1
   1939c:	80 a2 40 13 	cmp  %o1, %l3
   193a0:	1a 80 00 24 	bcc  19430 <int_downsample+0x118>
   193a4:	98 10 20 00 	clr  %o4
   193a8:	88 10 20 00 	clr  %g4
   193ac:	80 a1 00 11 	cmp  %g4, %l1
   193b0:	16 80 00 13 	bge  193fc <int_downsample+0xe4>
   193b4:	9a 10 20 00 	clr  %o5
   193b8:	82 02 80 0d 	add  %o2, %o5, %g1
   193bc:	83 28 60 02 	sll  %g1, 2, %g1
   193c0:	c2 06 80 01 	ld  [ %i2 + %g1 ], %g1
   193c4:	86 10 20 00 	clr  %g3
   193c8:	80 a0 c0 10 	cmp  %g3, %l0
   193cc:	16 80 00 08 	bge  193ec <int_downsample+0xd4>
   193d0:	84 03 00 01 	add  %o4, %g1, %g2
   193d4:	c2 08 80 00 	ldub  [ %g2 ], %g1
   193d8:	88 01 00 01 	add  %g4, %g1, %g4
   193dc:	86 00 e0 01 	inc  %g3
   193e0:	80 a0 c0 10 	cmp  %g3, %l0
   193e4:	06 bf ff fc 	bl  193d4 <int_downsample+0xbc>
   193e8:	84 00 a0 01 	inc  %g2
   193ec:	9a 03 60 01 	inc  %o5
   193f0:	80 a3 40 11 	cmp  %o5, %l1
   193f4:	06 bf ff f2 	bl  193bc <int_downsample+0xa4>
   193f8:	82 02 80 0d 	add  %o2, %o5, %g1
   193fc:	82 01 00 14 	add  %g4, %l4, %g1
   19400:	85 38 60 1f 	sra  %g1, 0x1f, %g2
   19404:	81 80 a0 00 	mov  %g2, %y
   19408:	01 00 00 00 	nop 
   1940c:	01 00 00 00 	nop 
   19410:	01 00 00 00 	nop 
   19414:	82 78 40 12 	sdiv  %g1, %l2, %g1
   19418:	c2 2a c0 00 	stb  %g1, [ %o3 ]
   1941c:	96 02 e0 01 	inc  %o3
   19420:	92 02 60 01 	inc  %o1
   19424:	80 a2 40 13 	cmp  %o1, %l3
   19428:	0a bf ff e0 	bcs  193a8 <int_downsample+0x90>
   1942c:	98 03 00 10 	add  %o4, %l0, %o4
   19430:	90 02 20 01 	inc  %o0
   19434:	c2 06 60 0c 	ld  [ %i1 + 0xc ], %g1
   19438:	80 a0 40 08 	cmp  %g1, %o0
   1943c:	14 bf ff d5 	bg  19390 <int_downsample+0x78>
   19440:	94 02 80 11 	add  %o2, %l1, %o2
   19444:	81 c7 e0 08 	ret 
   19448:	81 e8 00 00 	restore 

0001944c <fullsize_downsample>:
   1944c:	9d e3 bf 98 	save  %sp, -104, %sp
   19450:	90 10 00 1a 	mov  %i2, %o0
   19454:	92 10 20 00 	clr  %o1
   19458:	94 10 00 1b 	mov  %i3, %o2
   1945c:	96 10 20 00 	clr  %o3
   19460:	d8 06 20 e4 	ld  [ %i0 + 0xe4 ], %o4
   19464:	40 00 12 6a 	call  1de0c <jcopy_sample_rows>
   19468:	da 06 20 18 	ld  [ %i0 + 0x18 ], %o5
   1946c:	d6 06 60 1c 	ld  [ %i1 + 0x1c ], %o3
   19470:	90 10 00 1b 	mov  %i3, %o0
   19474:	d2 06 20 e4 	ld  [ %i0 + 0xe4 ], %o1
   19478:	d4 06 20 18 	ld  [ %i0 + 0x18 ], %o2
   1947c:	7f ff ff 73 	call  19248 <expand_right_edge>
   19480:	97 2a e0 03 	sll  %o3, 3, %o3
   19484:	01 00 00 00 	nop 
   19488:	81 c7 e0 08 	ret 
   1948c:	81 e8 00 00 	restore 

00019490 <h2v1_downsample>:
   19490:	9d e3 bf 98 	save  %sp, -104, %sp
   19494:	d6 06 60 1c 	ld  [ %i1 + 0x1c ], %o3
   19498:	a1 2a e0 03 	sll  %o3, 3, %l0
   1949c:	90 10 00 1a 	mov  %i2, %o0
   194a0:	d2 06 20 e4 	ld  [ %i0 + 0xe4 ], %o1
   194a4:	d4 06 20 18 	ld  [ %i0 + 0x18 ], %o2
   194a8:	7f ff ff 68 	call  19248 <expand_right_edge>
   194ac:	97 2a e0 04 	sll  %o3, 4, %o3
   194b0:	c2 06 60 0c 	ld  [ %i1 + 0xc ], %g1
   194b4:	80 a0 60 00 	cmp  %g1, 0
   194b8:	04 80 00 1a 	ble  19520 <h2v1_downsample+0x90>
   194bc:	96 10 20 00 	clr  %o3
   194c0:	83 2a e0 02 	sll  %o3, 2, %g1
   194c4:	c8 06 c0 01 	ld  [ %i3 + %g1 ], %g4
   194c8:	c6 06 80 01 	ld  [ %i2 + %g1 ], %g3
   194cc:	9a 10 20 00 	clr  %o5
   194d0:	80 a3 40 10 	cmp  %o5, %l0
   194d4:	1a 80 00 0e 	bcc  1950c <h2v1_downsample+0x7c>
   194d8:	98 10 20 00 	clr  %o4
   194dc:	c2 08 c0 00 	ldub  [ %g3 ], %g1
   194e0:	c4 08 e0 01 	ldub  [ %g3 + 1 ], %g2
   194e4:	82 00 40 02 	add  %g1, %g2, %g1
   194e8:	82 00 40 0c 	add  %g1, %o4, %g1
   194ec:	83 38 60 01 	sra  %g1, 1, %g1
   194f0:	c2 29 00 00 	stb  %g1, [ %g4 ]
   194f4:	88 01 20 01 	inc  %g4
   194f8:	98 1b 20 01 	xor  %o4, 1, %o4
   194fc:	9a 03 60 01 	inc  %o5
   19500:	80 a3 40 10 	cmp  %o5, %l0
   19504:	0a bf ff f6 	bcs  194dc <h2v1_downsample+0x4c>
   19508:	86 00 e0 02 	add  %g3, 2, %g3
   1950c:	96 02 e0 01 	inc  %o3
   19510:	c2 06 60 0c 	ld  [ %i1 + 0xc ], %g1
   19514:	80 a0 40 0b 	cmp  %g1, %o3
   19518:	14 bf ff eb 	bg  194c4 <h2v1_downsample+0x34>
   1951c:	83 2a e0 02 	sll  %o3, 2, %g1
   19520:	81 c7 e0 08 	ret 
   19524:	81 e8 00 00 	restore 

00019528 <h2v2_downsample>:
   19528:	9d e3 bf 98 	save  %sp, -104, %sp
   1952c:	d6 06 60 1c 	ld  [ %i1 + 0x1c ], %o3
   19530:	a1 2a e0 03 	sll  %o3, 3, %l0
   19534:	90 10 00 1a 	mov  %i2, %o0
   19538:	d2 06 20 e4 	ld  [ %i0 + 0xe4 ], %o1
   1953c:	d4 06 20 18 	ld  [ %i0 + 0x18 ], %o2
   19540:	7f ff ff 42 	call  19248 <expand_right_edge>
   19544:	97 2a e0 04 	sll  %o3, 4, %o3
   19548:	92 10 20 00 	clr  %o1
   1954c:	c2 06 60 0c 	ld  [ %i1 + 0xc ], %g1
   19550:	80 a0 60 00 	cmp  %g1, 0
   19554:	04 80 00 22 	ble  195dc <h2v2_downsample+0xb4>
   19558:	94 10 20 00 	clr  %o2
   1955c:	83 2a a0 02 	sll  %o2, 2, %g1
   19560:	da 06 c0 01 	ld  [ %i3 + %g1 ], %o5
   19564:	83 2a 60 02 	sll  %o1, 2, %g1
   19568:	c8 06 80 01 	ld  [ %i2 + %g1 ], %g4
   1956c:	82 00 40 1a 	add  %g1, %i2, %g1
   19570:	c6 00 60 04 	ld  [ %g1 + 4 ], %g3
   19574:	98 10 20 00 	clr  %o4
   19578:	80 a3 00 10 	cmp  %o4, %l0
   1957c:	1a 80 00 13 	bcc  195c8 <h2v2_downsample+0xa0>
   19580:	96 10 20 01 	mov  1, %o3
   19584:	c2 09 00 00 	ldub  [ %g4 ], %g1
   19588:	c4 09 20 01 	ldub  [ %g4 + 1 ], %g2
   1958c:	82 00 40 02 	add  %g1, %g2, %g1
   19590:	c4 08 c0 00 	ldub  [ %g3 ], %g2
   19594:	82 00 40 02 	add  %g1, %g2, %g1
   19598:	c4 08 e0 01 	ldub  [ %g3 + 1 ], %g2
   1959c:	82 00 40 02 	add  %g1, %g2, %g1
   195a0:	82 00 40 0b 	add  %g1, %o3, %g1
   195a4:	83 38 60 02 	sra  %g1, 2, %g1
   195a8:	c2 2b 40 00 	stb  %g1, [ %o5 ]
   195ac:	9a 03 60 01 	inc  %o5
   195b0:	96 1a e0 03 	xor  %o3, 3, %o3
   195b4:	88 01 20 02 	add  %g4, 2, %g4
   195b8:	98 03 20 01 	inc  %o4
   195bc:	80 a3 00 10 	cmp  %o4, %l0
   195c0:	0a bf ff f1 	bcs  19584 <h2v2_downsample+0x5c>
   195c4:	86 00 e0 02 	add  %g3, 2, %g3
   195c8:	94 02 a0 01 	inc  %o2
   195cc:	c2 06 60 0c 	ld  [ %i1 + 0xc ], %g1
   195d0:	80 a0 40 0a 	cmp  %g1, %o2
   195d4:	14 bf ff e2 	bg  1955c <h2v2_downsample+0x34>
   195d8:	92 02 60 02 	add  %o1, 2, %o1
   195dc:	81 c7 e0 08 	ret 
   195e0:	81 e8 00 00 	restore 

000195e4 <h2v2_smooth_downsample>:
   195e4:	9d e3 bf 98 	save  %sp, -104, %sp
   195e8:	d6 06 60 1c 	ld  [ %i1 + 0x1c ], %o3
   195ec:	ab 2a e0 03 	sll  %o3, 3, %l5
   195f0:	d2 06 20 e4 	ld  [ %i0 + 0xe4 ], %o1
   195f4:	90 06 bf fc 	add  %i2, -4, %o0
   195f8:	92 02 60 02 	add  %o1, 2, %o1
   195fc:	d4 06 20 18 	ld  [ %i0 + 0x18 ], %o2
   19600:	7f ff ff 12 	call  19248 <expand_right_edge>
   19604:	97 2a e0 04 	sll  %o3, 4, %o3
   19608:	c6 06 20 b8 	ld  [ %i0 + 0xb8 ], %g3
   1960c:	83 28 e0 02 	sll  %g3, 2, %g1
   19610:	82 00 40 03 	add  %g1, %g3, %g1
   19614:	83 28 60 04 	sll  %g1, 4, %g1
   19618:	05 00 00 10 	sethi  %hi(0x4000), %g2
   1961c:	a2 20 80 01 	sub  %g2, %g1, %l1
   19620:	a1 28 e0 04 	sll  %g3, 4, %l0
   19624:	a8 10 20 00 	clr  %l4
   19628:	c2 06 60 0c 	ld  [ %i1 + 0xc ], %g1
   1962c:	80 a0 60 00 	cmp  %g1, 0
   19630:	04 80 00 85 	ble  19844 <h2v2_smooth_downsample+0x260>
   19634:	a6 10 20 00 	clr  %l3
   19638:	25 00 00 20 	sethi  %hi(0x8000), %l2
   1963c:	83 2c e0 02 	sll  %l3, 2, %g1
   19640:	f0 06 c0 01 	ld  [ %i3 + %g1 ], %i0
   19644:	83 2d 20 02 	sll  %l4, 2, %g1
   19648:	d4 06 80 01 	ld  [ %i2 + %g1 ], %o2
   1964c:	82 00 40 1a 	add  %g1, %i2, %g1
   19650:	d2 00 60 04 	ld  [ %g1 + 4 ], %o1
   19654:	d0 00 7f fc 	ld  [ %g1 + -4 ], %o0
   19658:	de 00 60 08 	ld  [ %g1 + 8 ], %o7
   1965c:	da 0a 80 00 	ldub  [ %o2 ], %o5
   19660:	c2 0a a0 01 	ldub  [ %o2 + 1 ], %g1
   19664:	82 03 40 01 	add  %o5, %g1, %g1
   19668:	d8 0a 40 00 	ldub  [ %o1 ], %o4
   1966c:	82 00 40 0c 	add  %g1, %o4, %g1
   19670:	c4 0a 60 01 	ldub  [ %o1 + 1 ], %g2
   19674:	96 00 40 02 	add  %g1, %g2, %o3
   19678:	c6 0a 00 00 	ldub  [ %o0 ], %g3
   1967c:	c2 0a 20 01 	ldub  [ %o0 + 1 ], %g1
   19680:	82 00 c0 01 	add  %g3, %g1, %g1
   19684:	c8 0b c0 00 	ldub  [ %o7 ], %g4
   19688:	82 00 40 04 	add  %g1, %g4, %g1
   1968c:	c4 0b e0 01 	ldub  [ %o7 + 1 ], %g2
   19690:	82 00 40 02 	add  %g1, %g2, %g1
   19694:	82 00 40 0d 	add  %g1, %o5, %g1
   19698:	c4 0a a0 02 	ldub  [ %o2 + 2 ], %g2
   1969c:	82 00 40 02 	add  %g1, %g2, %g1
   196a0:	82 00 40 0c 	add  %g1, %o4, %g1
   196a4:	c4 0a 60 02 	ldub  [ %o1 + 2 ], %g2
   196a8:	98 00 40 02 	add  %g1, %g2, %o4
   196ac:	98 03 00 0c 	add  %o4, %o4, %o4
   196b0:	c2 0a 20 02 	ldub  [ %o0 + 2 ], %g1
   196b4:	86 00 c0 01 	add  %g3, %g1, %g3
   196b8:	86 00 c0 04 	add  %g3, %g4, %g3
   196bc:	c2 0b e0 02 	ldub  [ %o7 + 2 ], %g1
   196c0:	86 00 c0 01 	add  %g3, %g1, %g3
   196c4:	98 03 00 03 	add  %o4, %g3, %o4
   196c8:	96 5a c0 11 	smul  %o3, %l1, %o3
   196cc:	82 5b 00 10 	smul  %o4, %l0, %g1
   196d0:	96 02 c0 01 	add  %o3, %g1, %o3
   196d4:	82 02 c0 12 	add  %o3, %l2, %g1
   196d8:	83 38 60 10 	sra  %g1, 0x10, %g1
   196dc:	c2 2e 00 00 	stb  %g1, [ %i0 ]
   196e0:	b0 06 20 01 	inc  %i0
   196e4:	94 02 a0 02 	add  %o2, 2, %o2
   196e8:	92 02 60 02 	add  %o1, 2, %o1
   196ec:	90 02 20 02 	add  %o0, 2, %o0
   196f0:	86 85 7f fe 	addcc  %l5, -2, %g3
   196f4:	02 80 00 2e 	be  197ac <h2v2_smooth_downsample+0x1c8>
   196f8:	9e 03 e0 02 	add  %o7, 2, %o7
   196fc:	c2 0a 80 00 	ldub  [ %o2 ], %g1
   19700:	c4 0a a0 01 	ldub  [ %o2 + 1 ], %g2
   19704:	82 00 40 02 	add  %g1, %g2, %g1
   19708:	c4 0a 40 00 	ldub  [ %o1 ], %g2
   1970c:	82 00 40 02 	add  %g1, %g2, %g1
   19710:	c4 0a 60 01 	ldub  [ %o1 + 1 ], %g2
   19714:	96 00 40 02 	add  %g1, %g2, %o3
   19718:	c2 0a 00 00 	ldub  [ %o0 ], %g1
   1971c:	c4 0a 20 01 	ldub  [ %o0 + 1 ], %g2
   19720:	82 00 40 02 	add  %g1, %g2, %g1
   19724:	c4 0b c0 00 	ldub  [ %o7 ], %g2
   19728:	82 00 40 02 	add  %g1, %g2, %g1
   1972c:	c4 0b e0 01 	ldub  [ %o7 + 1 ], %g2
   19730:	82 00 40 02 	add  %g1, %g2, %g1
   19734:	c4 0a bf ff 	ldub  [ %o2 + -1 ], %g2
   19738:	82 00 40 02 	add  %g1, %g2, %g1
   1973c:	c4 0a a0 02 	ldub  [ %o2 + 2 ], %g2
   19740:	82 00 40 02 	add  %g1, %g2, %g1
   19744:	c4 0a 7f ff 	ldub  [ %o1 + -1 ], %g2
   19748:	82 00 40 02 	add  %g1, %g2, %g1
   1974c:	c4 0a 60 02 	ldub  [ %o1 + 2 ], %g2
   19750:	98 00 40 02 	add  %g1, %g2, %o4
   19754:	98 03 00 0c 	add  %o4, %o4, %o4
   19758:	c2 0a 3f ff 	ldub  [ %o0 + -1 ], %g1
   1975c:	c4 0a 20 02 	ldub  [ %o0 + 2 ], %g2
   19760:	82 00 40 02 	add  %g1, %g2, %g1
   19764:	c4 0b ff ff 	ldub  [ %o7 + -1 ], %g2
   19768:	82 00 40 02 	add  %g1, %g2, %g1
   1976c:	c4 0b e0 02 	ldub  [ %o7 + 2 ], %g2
   19770:	82 00 40 02 	add  %g1, %g2, %g1
   19774:	98 03 00 01 	add  %o4, %g1, %o4
   19778:	84 5a c0 11 	smul  %o3, %l1, %g2
   1977c:	82 5b 00 10 	smul  %o4, %l0, %g1
   19780:	96 00 80 01 	add  %g2, %g1, %o3
   19784:	82 02 c0 12 	add  %o3, %l2, %g1
   19788:	83 38 60 10 	sra  %g1, 0x10, %g1
   1978c:	c2 2e 00 00 	stb  %g1, [ %i0 ]
   19790:	b0 06 20 01 	inc  %i0
   19794:	94 02 a0 02 	add  %o2, 2, %o2
   19798:	92 02 60 02 	add  %o1, 2, %o1
   1979c:	90 02 20 02 	add  %o0, 2, %o0
   197a0:	86 80 ff ff 	addcc  %g3, -1, %g3
   197a4:	12 bf ff d6 	bne  196fc <h2v2_smooth_downsample+0x118>
   197a8:	9e 03 e0 02 	add  %o7, 2, %o7
   197ac:	d6 0a 80 00 	ldub  [ %o2 ], %o3
   197b0:	da 0a a0 01 	ldub  [ %o2 + 1 ], %o5
   197b4:	96 02 c0 0d 	add  %o3, %o5, %o3
   197b8:	c2 0a 40 00 	ldub  [ %o1 ], %g1
   197bc:	96 02 c0 01 	add  %o3, %g1, %o3
   197c0:	c4 0a 60 01 	ldub  [ %o1 + 1 ], %g2
   197c4:	96 02 c0 02 	add  %o3, %g2, %o3
   197c8:	d8 0a 00 00 	ldub  [ %o0 ], %o4
   197cc:	c8 0a 20 01 	ldub  [ %o0 + 1 ], %g4
   197d0:	98 03 00 04 	add  %o4, %g4, %o4
   197d4:	c2 0b c0 00 	ldub  [ %o7 ], %g1
   197d8:	98 03 00 01 	add  %o4, %g1, %o4
   197dc:	c6 0b e0 01 	ldub  [ %o7 + 1 ], %g3
   197e0:	98 03 00 03 	add  %o4, %g3, %o4
   197e4:	c2 0a bf ff 	ldub  [ %o2 + -1 ], %g1
   197e8:	98 03 00 01 	add  %o4, %g1, %o4
   197ec:	98 03 00 0d 	add  %o4, %o5, %o4
   197f0:	c2 0a 7f ff 	ldub  [ %o1 + -1 ], %g1
   197f4:	98 03 00 01 	add  %o4, %g1, %o4
   197f8:	98 03 00 02 	add  %o4, %g2, %o4
   197fc:	98 03 00 0c 	add  %o4, %o4, %o4
   19800:	c2 0a 3f ff 	ldub  [ %o0 + -1 ], %g1
   19804:	82 00 40 04 	add  %g1, %g4, %g1
   19808:	c4 0b ff ff 	ldub  [ %o7 + -1 ], %g2
   1980c:	82 00 40 02 	add  %g1, %g2, %g1
   19810:	82 00 40 03 	add  %g1, %g3, %g1
   19814:	98 03 00 01 	add  %o4, %g1, %o4
   19818:	96 5a c0 11 	smul  %o3, %l1, %o3
   1981c:	82 5b 00 10 	smul  %o4, %l0, %g1
   19820:	96 02 c0 01 	add  %o3, %g1, %o3
   19824:	82 02 c0 12 	add  %o3, %l2, %g1
   19828:	83 38 60 10 	sra  %g1, 0x10, %g1
   1982c:	c2 2e 00 00 	stb  %g1, [ %i0 ]
   19830:	a6 04 e0 01 	inc  %l3
   19834:	c2 06 60 0c 	ld  [ %i1 + 0xc ], %g1
   19838:	80 a0 40 13 	cmp  %g1, %l3
   1983c:	14 bf ff 80 	bg  1963c <h2v2_smooth_downsample+0x58>
   19840:	a8 05 20 02 	add  %l4, 2, %l4
   19844:	81 c7 e0 08 	ret 
   19848:	81 e8 00 00 	restore 

0001984c <fullsize_smooth_downsample>:
   1984c:	9d e3 bf 98 	save  %sp, -104, %sp
   19850:	c2 06 60 1c 	ld  [ %i1 + 0x1c ], %g1
   19854:	a7 28 60 03 	sll  %g1, 3, %l3
   19858:	d2 06 20 e4 	ld  [ %i0 + 0xe4 ], %o1
   1985c:	90 06 bf fc 	add  %i2, -4, %o0
   19860:	92 02 60 02 	add  %o1, 2, %o1
   19864:	d4 06 20 18 	ld  [ %i0 + 0x18 ], %o2
   19868:	7f ff fe 78 	call  19248 <expand_right_edge>
   1986c:	96 10 00 13 	mov  %l3, %o3
   19870:	c6 06 20 b8 	ld  [ %i0 + 0xb8 ], %g3
   19874:	85 28 e0 09 	sll  %g3, 9, %g2
   19878:	03 00 00 40 	sethi  %hi(0x10000), %g1
   1987c:	a0 20 40 02 	sub  %g1, %g2, %l0
   19880:	87 28 e0 06 	sll  %g3, 6, %g3
   19884:	c2 06 60 0c 	ld  [ %i1 + 0xc ], %g1
   19888:	80 a0 60 00 	cmp  %g1, 0
   1988c:	04 80 00 4c 	ble  199bc <fullsize_smooth_downsample+0x170>
   19890:	a4 10 20 00 	clr  %l2
   19894:	29 00 00 20 	sethi  %hi(0x8000), %l4
   19898:	83 2c a0 02 	sll  %l2, 2, %g1
   1989c:	f0 06 c0 01 	ld  [ %i3 + %g1 ], %i0
   198a0:	d8 06 80 01 	ld  [ %i2 + %g1 ], %o4
   198a4:	82 00 40 1a 	add  %g1, %i2, %g1
   198a8:	d0 00 7f fc 	ld  [ %g1 + -4 ], %o0
   198ac:	d2 00 60 04 	ld  [ %g1 + 4 ], %o1
   198b0:	c2 0a 00 00 	ldub  [ %o0 ], %g1
   198b4:	c4 0a 40 00 	ldub  [ %o1 ], %g2
   198b8:	82 00 40 02 	add  %g1, %g2, %g1
   198bc:	c4 0b 00 00 	ldub  [ %o4 ], %g2
   198c0:	96 00 40 02 	add  %g1, %g2, %o3
   198c4:	92 02 60 01 	inc  %o1
   198c8:	90 02 20 01 	inc  %o0
   198cc:	88 10 00 02 	mov  %g2, %g4
   198d0:	98 03 20 01 	inc  %o4
   198d4:	c2 0a 00 00 	ldub  [ %o0 ], %g1
   198d8:	c4 0a 40 00 	ldub  [ %o1 ], %g2
   198dc:	82 00 40 02 	add  %g1, %g2, %g1
   198e0:	c4 0b 00 00 	ldub  [ %o4 ], %g2
   198e4:	9a 00 40 02 	add  %g1, %g2, %o5
   198e8:	82 22 c0 04 	sub  %o3, %g4, %g1
   198ec:	82 00 40 0b 	add  %g1, %o3, %g1
   198f0:	82 00 40 0d 	add  %g1, %o5, %g1
   198f4:	84 59 00 10 	smul  %g4, %l0, %g2
   198f8:	82 58 40 03 	smul  %g1, %g3, %g1
   198fc:	88 00 80 01 	add  %g2, %g1, %g4
   19900:	82 01 00 14 	add  %g4, %l4, %g1
   19904:	83 38 60 10 	sra  %g1, 0x10, %g1
   19908:	c2 2e 00 00 	stb  %g1, [ %i0 ]
   1990c:	b0 06 20 01 	inc  %i0
   19910:	9e 10 00 0b 	mov  %o3, %o7
   19914:	94 84 ff fe 	addcc  %l3, -2, %o2
   19918:	02 80 00 1a 	be  19980 <fullsize_smooth_downsample+0x134>
   1991c:	96 10 00 0d 	mov  %o5, %o3
   19920:	23 00 00 20 	sethi  %hi(0x8000), %l1
   19924:	c8 0b 00 00 	ldub  [ %o4 ], %g4
   19928:	98 03 20 01 	inc  %o4
   1992c:	90 02 20 01 	inc  %o0
   19930:	92 02 60 01 	inc  %o1
   19934:	c2 0a 00 00 	ldub  [ %o0 ], %g1
   19938:	c4 0a 40 00 	ldub  [ %o1 ], %g2
   1993c:	82 00 40 02 	add  %g1, %g2, %g1
   19940:	c4 0b 00 00 	ldub  [ %o4 ], %g2
   19944:	9a 00 40 02 	add  %g1, %g2, %o5
   19948:	82 22 c0 04 	sub  %o3, %g4, %g1
   1994c:	82 00 40 0f 	add  %g1, %o7, %g1
   19950:	82 00 40 0d 	add  %g1, %o5, %g1
   19954:	84 59 00 10 	smul  %g4, %l0, %g2
   19958:	82 58 40 03 	smul  %g1, %g3, %g1
   1995c:	88 00 80 01 	add  %g2, %g1, %g4
   19960:	82 01 00 11 	add  %g4, %l1, %g1
   19964:	83 38 60 10 	sra  %g1, 0x10, %g1
   19968:	c2 2e 00 00 	stb  %g1, [ %i0 ]
   1996c:	b0 06 20 01 	inc  %i0
   19970:	9e 10 00 0b 	mov  %o3, %o7
   19974:	94 82 bf ff 	addcc  %o2, -1, %o2
   19978:	12 bf ff eb 	bne  19924 <fullsize_smooth_downsample+0xd8>
   1997c:	96 10 00 0d 	mov  %o5, %o3
   19980:	c8 0b 00 00 	ldub  [ %o4 ], %g4
   19984:	82 22 c0 04 	sub  %o3, %g4, %g1
   19988:	82 00 40 0f 	add  %g1, %o7, %g1
   1998c:	82 00 40 0b 	add  %g1, %o3, %g1
   19990:	88 59 00 10 	smul  %g4, %l0, %g4
   19994:	82 58 40 03 	smul  %g1, %g3, %g1
   19998:	88 01 00 01 	add  %g4, %g1, %g4
   1999c:	82 01 00 14 	add  %g4, %l4, %g1
   199a0:	83 38 60 10 	sra  %g1, 0x10, %g1
   199a4:	c2 2e 00 00 	stb  %g1, [ %i0 ]
   199a8:	a4 04 a0 01 	inc  %l2
   199ac:	c2 06 60 0c 	ld  [ %i1 + 0xc ], %g1
   199b0:	80 a0 40 12 	cmp  %g1, %l2
   199b4:	14 bf ff ba 	bg  1989c <fullsize_smooth_downsample+0x50>
   199b8:	83 2c a0 02 	sll  %l2, 2, %g1
   199bc:	81 c7 e0 08 	ret 
   199c0:	81 e8 00 00 	restore 

000199c4 <jinit_downsampler>:
   199c4:	9d e3 bf 98 	save  %sp, -104, %sp
   199c8:	a6 10 20 01 	mov  1, %l3
   199cc:	c2 06 20 04 	ld  [ %i0 + 4 ], %g1
   199d0:	c2 00 40 00 	ld  [ %g1 ], %g1
   199d4:	90 10 00 18 	mov  %i0, %o0
   199d8:	92 10 20 01 	mov  1, %o1
   199dc:	9f c0 40 00 	call  %g1
   199e0:	94 10 20 34 	mov  0x34, %o2
   199e4:	d0 26 21 5c 	st  %o0, [ %i0 + 0x15c ]
   199e8:	03 00 00 64 	sethi  %hi(0x19000), %g1
   199ec:	82 10 62 40 	or  %g1, 0x240, %g1	! 19240 <start_pass_downsample>
   199f0:	c2 22 00 00 	st  %g1, [ %o0 ]
   199f4:	03 00 00 64 	sethi  %hi(0x19000), %g1
   199f8:	82 10 62 a8 	or  %g1, 0x2a8, %g1	! 192a8 <sep_downsample>
   199fc:	c2 22 20 04 	st  %g1, [ %o0 + 4 ]
   19a00:	c0 22 20 08 	clr  [ %o0 + 8 ]
   19a04:	c2 06 20 b4 	ld  [ %i0 + 0xb4 ], %g1
   19a08:	80 a0 60 00 	cmp  %g1, 0
   19a0c:	02 80 00 09 	be  19a30 <jinit_downsampler+0x6c>
   19a10:	a4 10 00 08 	mov  %o0, %l2
   19a14:	c4 06 00 00 	ld  [ %i0 ], %g2
   19a18:	82 10 20 17 	mov  0x17, %g1
   19a1c:	c2 20 a0 14 	st  %g1, [ %g2 + 0x14 ]
   19a20:	c2 06 00 00 	ld  [ %i0 ], %g1
   19a24:	c2 00 40 00 	ld  [ %g1 ], %g1
   19a28:	9f c0 40 00 	call  %g1
   19a2c:	90 10 00 18 	mov  %i0, %o0
   19a30:	a2 10 20 00 	clr  %l1
   19a34:	c2 06 20 34 	ld  [ %i0 + 0x34 ], %g1
   19a38:	80 a0 60 00 	cmp  %g1, 0
   19a3c:	04 80 00 73 	ble  19c08 <jinit_downsampler+0x244>
   19a40:	e0 06 20 3c 	ld  [ %i0 + 0x3c ], %l0
   19a44:	03 00 00 66 	sethi  %hi(0x19800), %g1
   19a48:	a8 10 60 4c 	or  %g1, 0x4c, %l4	! 1984c <fullsize_smooth_downsample>
   19a4c:	c4 04 20 08 	ld  [ %l0 + 8 ], %g2
   19a50:	c2 06 20 e0 	ld  [ %i0 + 0xe0 ], %g1
   19a54:	80 a0 80 01 	cmp  %g2, %g1
   19a58:	32 80 00 16 	bne,a   19ab0 <jinit_downsampler+0xec>
   19a5c:	c2 04 20 08 	ld  [ %l0 + 8 ], %g1
   19a60:	c4 04 20 0c 	ld  [ %l0 + 0xc ], %g2
   19a64:	c2 06 20 e4 	ld  [ %i0 + 0xe4 ], %g1
   19a68:	80 a0 80 01 	cmp  %g2, %g1
   19a6c:	32 80 00 11 	bne,a   19ab0 <jinit_downsampler+0xec>
   19a70:	c2 04 20 08 	ld  [ %l0 + 8 ], %g1
   19a74:	c2 06 20 b8 	ld  [ %i0 + 0xb8 ], %g1
   19a78:	80 a0 60 00 	cmp  %g1, 0
   19a7c:	02 80 00 08 	be  19a9c <jinit_downsampler+0xd8>
   19a80:	85 2c 60 02 	sll  %l1, 2, %g2
   19a84:	83 2c 60 02 	sll  %l1, 2, %g1
   19a88:	82 00 40 12 	add  %g1, %l2, %g1
   19a8c:	e8 20 60 0c 	st  %l4, [ %g1 + 0xc ]
   19a90:	82 10 20 01 	mov  1, %g1
   19a94:	10 80 00 58 	b  19bf4 <jinit_downsampler+0x230>
   19a98:	c2 24 a0 08 	st  %g1, [ %l2 + 8 ]
   19a9c:	84 00 80 12 	add  %g2, %l2, %g2
   19aa0:	03 00 00 65 	sethi  %hi(0x19400), %g1
   19aa4:	82 10 60 4c 	or  %g1, 0x4c, %g1	! 1944c <fullsize_downsample>
   19aa8:	10 80 00 53 	b  19bf4 <jinit_downsampler+0x230>
   19aac:	c2 20 a0 0c 	st  %g1, [ %g2 + 0xc ]
   19ab0:	82 00 40 01 	add  %g1, %g1, %g1
   19ab4:	c4 06 20 e0 	ld  [ %i0 + 0xe0 ], %g2
   19ab8:	80 a0 40 02 	cmp  %g1, %g2
   19abc:	32 80 00 2a 	bne,a   19b64 <jinit_downsampler+0x1a0>
   19ac0:	c2 06 20 e0 	ld  [ %i0 + 0xe0 ], %g1
   19ac4:	c4 04 20 0c 	ld  [ %l0 + 0xc ], %g2
   19ac8:	c2 06 20 e4 	ld  [ %i0 + 0xe4 ], %g1
   19acc:	80 a0 80 01 	cmp  %g2, %g1
   19ad0:	32 80 00 09 	bne,a   19af4 <jinit_downsampler+0x130>
   19ad4:	c2 04 20 08 	ld  [ %l0 + 8 ], %g1
   19ad8:	a6 10 20 00 	clr  %l3
   19adc:	85 2c 60 02 	sll  %l1, 2, %g2
   19ae0:	84 00 80 12 	add  %g2, %l2, %g2
   19ae4:	03 00 00 65 	sethi  %hi(0x19400), %g1
   19ae8:	82 10 60 90 	or  %g1, 0x90, %g1	! 19490 <h2v1_downsample>
   19aec:	10 80 00 42 	b  19bf4 <jinit_downsampler+0x230>
   19af0:	c2 20 a0 0c 	st  %g1, [ %g2 + 0xc ]
   19af4:	82 00 40 01 	add  %g1, %g1, %g1
   19af8:	c4 06 20 e0 	ld  [ %i0 + 0xe0 ], %g2
   19afc:	80 a0 40 02 	cmp  %g1, %g2
   19b00:	32 80 00 19 	bne,a   19b64 <jinit_downsampler+0x1a0>
   19b04:	c2 06 20 e0 	ld  [ %i0 + 0xe0 ], %g1
   19b08:	c2 04 20 0c 	ld  [ %l0 + 0xc ], %g1
   19b0c:	82 00 40 01 	add  %g1, %g1, %g1
   19b10:	c4 06 20 e4 	ld  [ %i0 + 0xe4 ], %g2
   19b14:	80 a0 40 02 	cmp  %g1, %g2
   19b18:	32 80 00 13 	bne,a   19b64 <jinit_downsampler+0x1a0>
   19b1c:	c2 06 20 e0 	ld  [ %i0 + 0xe0 ], %g1
   19b20:	c2 06 20 b8 	ld  [ %i0 + 0xb8 ], %g1
   19b24:	80 a0 60 00 	cmp  %g1, 0
   19b28:	02 80 00 0a 	be  19b50 <jinit_downsampler+0x18c>
   19b2c:	85 2c 60 02 	sll  %l1, 2, %g2
   19b30:	83 2c 60 02 	sll  %l1, 2, %g1
   19b34:	82 00 40 12 	add  %g1, %l2, %g1
   19b38:	05 00 00 65 	sethi  %hi(0x19400), %g2
   19b3c:	84 10 a1 e4 	or  %g2, 0x1e4, %g2	! 195e4 <h2v2_smooth_downsample>
   19b40:	c4 20 60 0c 	st  %g2, [ %g1 + 0xc ]
   19b44:	82 10 20 01 	mov  1, %g1
   19b48:	10 80 00 2b 	b  19bf4 <jinit_downsampler+0x230>
   19b4c:	c2 24 a0 08 	st  %g1, [ %l2 + 8 ]
   19b50:	84 00 80 12 	add  %g2, %l2, %g2
   19b54:	03 00 00 65 	sethi  %hi(0x19400), %g1
   19b58:	82 10 61 28 	or  %g1, 0x128, %g1	! 19528 <h2v2_downsample>
   19b5c:	10 80 00 26 	b  19bf4 <jinit_downsampler+0x230>
   19b60:	c2 20 a0 0c 	st  %g1, [ %g2 + 0xc ]
   19b64:	87 38 60 1f 	sra  %g1, 0x1f, %g3
   19b68:	81 80 e0 00 	mov  %g3, %y
   19b6c:	c6 04 20 08 	ld  [ %l0 + 8 ], %g3
   19b70:	01 00 00 00 	nop 
   19b74:	01 00 00 00 	nop 
   19b78:	84 78 40 03 	sdiv  %g1, %g3, %g2
   19b7c:	c6 04 20 08 	ld  [ %l0 + 8 ], %g3
   19b80:	84 58 80 03 	smul  %g2, %g3, %g2
   19b84:	80 a0 40 02 	cmp  %g1, %g2
   19b88:	32 80 00 15 	bne,a   19bdc <jinit_downsampler+0x218>
   19b8c:	c4 06 00 00 	ld  [ %i0 ], %g2
   19b90:	c2 06 20 e4 	ld  [ %i0 + 0xe4 ], %g1
   19b94:	87 38 60 1f 	sra  %g1, 0x1f, %g3
   19b98:	81 80 e0 00 	mov  %g3, %y
   19b9c:	c6 04 20 0c 	ld  [ %l0 + 0xc ], %g3
   19ba0:	01 00 00 00 	nop 
   19ba4:	01 00 00 00 	nop 
   19ba8:	84 78 40 03 	sdiv  %g1, %g3, %g2
   19bac:	c6 04 20 0c 	ld  [ %l0 + 0xc ], %g3
   19bb0:	84 58 80 03 	smul  %g2, %g3, %g2
   19bb4:	80 a0 40 02 	cmp  %g1, %g2
   19bb8:	32 80 00 09 	bne,a   19bdc <jinit_downsampler+0x218>
   19bbc:	c4 06 00 00 	ld  [ %i0 ], %g2
   19bc0:	a6 10 20 00 	clr  %l3
   19bc4:	85 2c 60 02 	sll  %l1, 2, %g2
   19bc8:	84 00 80 12 	add  %g2, %l2, %g2
   19bcc:	03 00 00 64 	sethi  %hi(0x19000), %g1
   19bd0:	82 10 63 18 	or  %g1, 0x318, %g1	! 19318 <int_downsample>
   19bd4:	10 80 00 08 	b  19bf4 <jinit_downsampler+0x230>
   19bd8:	c2 20 a0 0c 	st  %g1, [ %g2 + 0xc ]
   19bdc:	82 10 20 25 	mov  0x25, %g1
   19be0:	c2 20 a0 14 	st  %g1, [ %g2 + 0x14 ]
   19be4:	c2 06 00 00 	ld  [ %i0 ], %g1
   19be8:	c2 00 40 00 	ld  [ %g1 ], %g1
   19bec:	9f c0 40 00 	call  %g1
   19bf0:	90 10 00 18 	mov  %i0, %o0
   19bf4:	a2 04 60 01 	inc  %l1
   19bf8:	c2 06 20 34 	ld  [ %i0 + 0x34 ], %g1
   19bfc:	80 a0 40 11 	cmp  %g1, %l1
   19c00:	14 bf ff 93 	bg  19a4c <jinit_downsampler+0x88>
   19c04:	a0 04 20 54 	add  %l0, 0x54, %l0
   19c08:	c2 06 20 b8 	ld  [ %i0 + 0xb8 ], %g1
   19c0c:	80 a0 00 01 	cmp  %g0, %g1
   19c10:	82 40 20 00 	addx  %g0, 0, %g1
   19c14:	80 a8 40 13 	andncc  %g1, %l3, %g0
   19c18:	02 80 00 09 	be  19c3c <jinit_downsampler+0x278>
   19c1c:	82 10 20 62 	mov  0x62, %g1
   19c20:	c4 06 00 00 	ld  [ %i0 ], %g2
   19c24:	c2 20 a0 14 	st  %g1, [ %g2 + 0x14 ]
   19c28:	c2 06 00 00 	ld  [ %i0 ], %g1
   19c2c:	c2 00 60 04 	ld  [ %g1 + 4 ], %g1
   19c30:	90 10 00 18 	mov  %i0, %o0
   19c34:	9f c0 40 00 	call  %g1
   19c38:	92 10 20 00 	clr  %o1
   19c3c:	01 00 00 00 	nop 
   19c40:	81 c7 e0 08 	ret 
   19c44:	81 e8 00 00 	restore 

00019c48 <start_pass_huff>:
   19c48:	9d e3 bf 98 	save  %sp, -104, %sp
   19c4c:	80 a6 60 00 	cmp  %i1, 0
   19c50:	02 80 00 09 	be  19c74 <start_pass_huff+0x2c>
   19c54:	e2 06 21 64 	ld  [ %i0 + 0x164 ], %l1
   19c58:	03 00 00 6b 	sethi  %hi(0x1ac00), %g1
   19c5c:	82 10 60 e8 	or  %g1, 0xe8, %g1	! 1ace8 <encode_mcu_gather>
   19c60:	c2 24 60 04 	st  %g1, [ %l1 + 4 ]
   19c64:	03 00 00 6c 	sethi  %hi(0x1b000), %g1
   19c68:	82 10 61 ac 	or  %g1, 0x1ac, %g1	! 1b1ac <finish_pass_gather>
   19c6c:	10 80 00 08 	b  19c8c <start_pass_huff+0x44>
   19c70:	c2 24 60 08 	st  %g1, [ %l1 + 8 ]
   19c74:	03 00 00 6a 	sethi  %hi(0x1a800), %g1
   19c78:	82 10 61 50 	or  %g1, 0x150, %g1	! 1a950 <encode_mcu_huff>
   19c7c:	c2 24 60 04 	st  %g1, [ %l1 + 4 ]
   19c80:	03 00 00 6a 	sethi  %hi(0x1a800), %g1
   19c84:	82 10 63 10 	or  %g1, 0x310, %g1	! 1ab10 <finish_pass_huff>
   19c88:	c2 24 60 08 	st  %g1, [ %l1 + 8 ]
   19c8c:	c2 06 20 ec 	ld  [ %i0 + 0xec ], %g1
   19c90:	80 a0 60 00 	cmp  %g1, 0
   19c94:	04 80 00 71 	ble  19e58 <start_pass_huff+0x210>
   19c98:	a8 10 20 00 	clr  %l4
   19c9c:	83 2d 20 02 	sll  %l4, 2, %g1
   19ca0:	82 00 40 18 	add  %g1, %i0, %g1
   19ca4:	c2 00 60 f0 	ld  [ %g1 + 0xf0 ], %g1
   19ca8:	e0 00 60 14 	ld  [ %g1 + 0x14 ], %l0
   19cac:	80 a4 20 03 	cmp  %l0, 3
   19cb0:	18 80 00 0c 	bgu  19ce0 <start_pass_huff+0x98>
   19cb4:	e6 00 60 18 	ld  [ %g1 + 0x18 ], %l3
   19cb8:	83 2c 20 02 	sll  %l0, 2, %g1
   19cbc:	82 00 40 18 	add  %g1, %i0, %g1
   19cc0:	c2 00 60 50 	ld  [ %g1 + 0x50 ], %g1
   19cc4:	80 a0 00 01 	cmp  %g0, %g1
   19cc8:	84 60 3f ff 	subx  %g0, -1, %g2
   19ccc:	80 a0 00 19 	cmp  %g0, %i1
   19cd0:	82 60 3f ff 	subx  %g0, -1, %g1
   19cd4:	80 88 80 01 	btst  %g2, %g1
   19cd8:	02 80 00 0c 	be  19d08 <start_pass_huff+0xc0>
   19cdc:	80 a4 e0 03 	cmp  %l3, 3
   19ce0:	c4 06 00 00 	ld  [ %i0 ], %g2
   19ce4:	82 10 20 31 	mov  0x31, %g1
   19ce8:	c2 20 a0 14 	st  %g1, [ %g2 + 0x14 ]
   19cec:	c2 06 00 00 	ld  [ %i0 ], %g1
   19cf0:	e0 20 60 18 	st  %l0, [ %g1 + 0x18 ]
   19cf4:	c2 06 00 00 	ld  [ %i0 ], %g1
   19cf8:	c2 00 40 00 	ld  [ %g1 ], %g1
   19cfc:	9f c0 40 00 	call  %g1
   19d00:	90 10 00 18 	mov  %i0, %o0
   19d04:	80 a4 e0 03 	cmp  %l3, 3
   19d08:	18 80 00 0b 	bgu  19d34 <start_pass_huff+0xec>
   19d0c:	83 2c e0 02 	sll  %l3, 2, %g1
   19d10:	82 00 40 18 	add  %g1, %i0, %g1
   19d14:	c2 00 60 60 	ld  [ %g1 + 0x60 ], %g1
   19d18:	80 a0 00 01 	cmp  %g0, %g1
   19d1c:	84 60 3f ff 	subx  %g0, -1, %g2
   19d20:	80 a0 00 19 	cmp  %g0, %i1
   19d24:	82 60 3f ff 	subx  %g0, -1, %g1
   19d28:	80 88 80 01 	btst  %g2, %g1
   19d2c:	02 80 00 0c 	be  19d5c <start_pass_huff+0x114>
   19d30:	80 a6 60 00 	cmp  %i1, 0
   19d34:	c4 06 00 00 	ld  [ %i0 ], %g2
   19d38:	82 10 20 31 	mov  0x31, %g1
   19d3c:	c2 20 a0 14 	st  %g1, [ %g2 + 0x14 ]
   19d40:	c2 06 00 00 	ld  [ %i0 ], %g1
   19d44:	e6 20 60 18 	st  %l3, [ %g1 + 0x18 ]
   19d48:	c2 06 00 00 	ld  [ %i0 ], %g1
   19d4c:	c2 00 40 00 	ld  [ %g1 ], %g1
   19d50:	9f c0 40 00 	call  %g1
   19d54:	90 10 00 18 	mov  %i0, %o0
   19d58:	80 a6 60 00 	cmp  %i1, 0
   19d5c:	02 80 00 29 	be  19e00 <start_pass_huff+0x1b8>
   19d60:	83 2c 20 02 	sll  %l0, 2, %g1
   19d64:	a4 00 40 11 	add  %g1, %l1, %l2
   19d68:	c2 04 a0 4c 	ld  [ %l2 + 0x4c ], %g1
   19d6c:	80 a0 60 00 	cmp  %g1, 0
   19d70:	12 80 00 0a 	bne  19d98 <start_pass_huff+0x150>
   19d74:	83 2c 20 02 	sll  %l0, 2, %g1
   19d78:	c2 06 20 04 	ld  [ %i0 + 4 ], %g1
   19d7c:	c2 00 40 00 	ld  [ %g1 ], %g1
   19d80:	90 10 00 18 	mov  %i0, %o0
   19d84:	92 10 20 01 	mov  1, %o1
   19d88:	9f c0 40 00 	call  %g1
   19d8c:	94 10 24 04 	mov  0x404, %o2
   19d90:	d0 24 a0 4c 	st  %o0, [ %l2 + 0x4c ]
   19d94:	83 2c 20 02 	sll  %l0, 2, %g1
   19d98:	82 00 40 11 	add  %g1, %l1, %g1
   19d9c:	d0 00 60 4c 	ld  [ %g1 + 0x4c ], %o0
   19da0:	92 10 20 00 	clr  %o1
   19da4:	40 00 66 7c 	call  33794 <memset@plt>
   19da8:	94 10 24 04 	mov  0x404, %o2
   19dac:	83 2c e0 02 	sll  %l3, 2, %g1
   19db0:	a0 00 40 11 	add  %g1, %l1, %l0
   19db4:	c2 04 20 5c 	ld  [ %l0 + 0x5c ], %g1
   19db8:	80 a0 60 00 	cmp  %g1, 0
   19dbc:	32 80 00 0a 	bne,a   19de4 <start_pass_huff+0x19c>
   19dc0:	83 2c e0 02 	sll  %l3, 2, %g1
   19dc4:	c2 06 20 04 	ld  [ %i0 + 4 ], %g1
   19dc8:	c2 00 40 00 	ld  [ %g1 ], %g1
   19dcc:	90 10 00 18 	mov  %i0, %o0
   19dd0:	92 10 20 01 	mov  1, %o1
   19dd4:	9f c0 40 00 	call  %g1
   19dd8:	94 10 24 04 	mov  0x404, %o2
   19ddc:	d0 24 20 5c 	st  %o0, [ %l0 + 0x5c ]
   19de0:	83 2c e0 02 	sll  %l3, 2, %g1
   19de4:	82 00 40 11 	add  %g1, %l1, %g1
   19de8:	d0 00 60 5c 	ld  [ %g1 + 0x5c ], %o0
   19dec:	92 10 20 00 	clr  %o1
   19df0:	40 00 66 69 	call  33794 <memset@plt>
   19df4:	94 10 24 04 	mov  0x404, %o2
   19df8:	10 80 00 11 	b  19e3c <start_pass_huff+0x1f4>
   19dfc:	83 2d 20 02 	sll  %l4, 2, %g1
   19e00:	95 2c 20 02 	sll  %l0, 2, %o2
   19e04:	82 02 80 18 	add  %o2, %i0, %g1
   19e08:	94 02 80 11 	add  %o2, %l1, %o2
   19e0c:	90 10 00 18 	mov  %i0, %o0
   19e10:	d2 00 60 50 	ld  [ %g1 + 0x50 ], %o1
   19e14:	40 00 00 18 	call  19e74 <jpeg_make_c_derived_tbl>
   19e18:	94 02 a0 2c 	add  %o2, 0x2c, %o2
   19e1c:	95 2c e0 02 	sll  %l3, 2, %o2
   19e20:	82 02 80 18 	add  %o2, %i0, %g1
   19e24:	94 02 80 11 	add  %o2, %l1, %o2
   19e28:	90 10 00 18 	mov  %i0, %o0
   19e2c:	d2 00 60 60 	ld  [ %g1 + 0x60 ], %o1
   19e30:	40 00 00 11 	call  19e74 <jpeg_make_c_derived_tbl>
   19e34:	94 02 a0 3c 	add  %o2, 0x3c, %o2
   19e38:	83 2d 20 02 	sll  %l4, 2, %g1
   19e3c:	82 00 40 11 	add  %g1, %l1, %g1
   19e40:	c0 20 60 14 	clr  [ %g1 + 0x14 ]
   19e44:	a8 05 20 01 	inc  %l4
   19e48:	c2 06 20 ec 	ld  [ %i0 + 0xec ], %g1
   19e4c:	80 a0 40 14 	cmp  %g1, %l4
   19e50:	14 bf ff 94 	bg  19ca0 <start_pass_huff+0x58>
   19e54:	83 2d 20 02 	sll  %l4, 2, %g1
   19e58:	c0 24 60 0c 	clr  [ %l1 + 0xc ]
   19e5c:	c0 24 60 10 	clr  [ %l1 + 0x10 ]
   19e60:	c2 06 20 c0 	ld  [ %i0 + 0xc0 ], %g1
   19e64:	c2 24 60 24 	st  %g1, [ %l1 + 0x24 ]
   19e68:	c0 24 60 28 	clr  [ %l1 + 0x28 ]
   19e6c:	81 c7 e0 08 	ret 
   19e70:	81 e8 00 00 	restore 

00019e74 <jpeg_make_c_derived_tbl>:
   19e74:	9d e3 ba 88 	save  %sp, -1400, %sp
   19e78:	c2 06 80 00 	ld  [ %i2 ], %g1
   19e7c:	80 a0 60 00 	cmp  %g1, 0
   19e80:	12 80 00 08 	bne  19ea0 <jpeg_make_c_derived_tbl+0x2c>
   19e84:	90 10 00 18 	mov  %i0, %o0
   19e88:	c2 06 20 04 	ld  [ %i0 + 4 ], %g1
   19e8c:	c2 00 40 00 	ld  [ %g1 ], %g1
   19e90:	92 10 20 01 	mov  1, %o1
   19e94:	9f c0 40 00 	call  %g1
   19e98:	94 10 25 00 	mov  0x500, %o2
   19e9c:	d0 26 80 00 	st  %o0, [ %i2 ]
   19ea0:	f4 06 80 00 	ld  [ %i2 ], %i2
   19ea4:	9a 10 20 00 	clr  %o5
   19ea8:	98 10 20 01 	mov  1, %o4
   19eac:	96 07 bf f8 	add  %fp, -8, %o3
   19eb0:	c2 0e 40 0c 	ldub  [ %i1 + %o4 ], %g1
   19eb4:	80 a0 60 00 	cmp  %g1, 0
   19eb8:	02 80 00 0a 	be  19ee0 <jpeg_make_c_derived_tbl+0x6c>
   19ebc:	84 10 20 01 	mov  1, %g2
   19ec0:	88 10 00 0b 	mov  %o3, %g4
   19ec4:	86 08 60 ff 	and  %g1, 0xff, %g3
   19ec8:	82 03 40 04 	add  %o5, %g4, %g1
   19ecc:	d8 28 7e f8 	stb  %o4, [ %g1 + -264 ]
   19ed0:	84 00 a0 01 	inc  %g2
   19ed4:	80 a0 c0 02 	cmp  %g3, %g2
   19ed8:	16 bf ff fc 	bge  19ec8 <jpeg_make_c_derived_tbl+0x54>
   19edc:	9a 03 60 01 	inc  %o5
   19ee0:	98 03 20 01 	inc  %o4
   19ee4:	80 a3 20 10 	cmp  %o4, 0x10
   19ee8:	24 bf ff f3 	ble,a   19eb4 <jpeg_make_c_derived_tbl+0x40>
   19eec:	c2 0e 40 0c 	ldub  [ %i1 + %o4 ], %g1
   19ef0:	82 07 80 0d 	add  %fp, %o5, %g1
   19ef4:	c0 28 7e f0 	clrb  [ %g1 + -272 ]
   19ef8:	b0 10 00 0d 	mov  %o5, %i0
   19efc:	98 10 20 00 	clr  %o4
   19f00:	c8 4f be f0 	ldsb  [ %fp + -272 ], %g4
   19f04:	9a 10 20 00 	clr  %o5
   19f08:	80 a1 20 00 	cmp  %g4, 0
   19f0c:	02 80 00 1a 	be  19f74 <jpeg_make_c_derived_tbl+0x100>
   19f10:	84 07 bf f8 	add  %fp, -8, %g2
   19f14:	96 10 00 02 	mov  %g2, %o3
   19f18:	82 00 80 0d 	add  %g2, %o5, %g1
   19f1c:	c2 48 7e f8 	ldsb  [ %g1 + -264 ], %g1
   19f20:	80 a0 40 04 	cmp  %g1, %g4
   19f24:	12 80 00 0d 	bne  19f58 <jpeg_make_c_derived_tbl+0xe4>
   19f28:	86 10 00 02 	mov  %g2, %g3
   19f2c:	83 2b 60 02 	sll  %o5, 2, %g1
   19f30:	84 10 00 03 	mov  %g3, %g2
   19f34:	82 00 40 03 	add  %g1, %g3, %g1
   19f38:	d8 20 7a f0 	st  %o4, [ %g1 + -1296 ]
   19f3c:	9a 03 60 01 	inc  %o5
   19f40:	98 03 20 01 	inc  %o4
   19f44:	84 00 80 0d 	add  %g2, %o5, %g2
   19f48:	c2 48 be f8 	ldsb  [ %g2 + -264 ], %g1
   19f4c:	80 a0 40 04 	cmp  %g1, %g4
   19f50:	02 bf ff f7 	be  19f2c <jpeg_make_c_derived_tbl+0xb8>
   19f54:	86 10 00 03 	mov  %g3, %g3
   19f58:	98 03 00 0c 	add  %o4, %o4, %o4
   19f5c:	88 01 20 01 	inc  %g4
   19f60:	82 02 c0 0d 	add  %o3, %o5, %g1
   19f64:	c2 48 7e f8 	ldsb  [ %g1 + -264 ], %g1
   19f68:	80 a0 60 00 	cmp  %g1, 0
   19f6c:	12 bf ff eb 	bne  19f18 <jpeg_make_c_derived_tbl+0xa4>
   19f70:	84 10 00 0b 	mov  %o3, %g2
   19f74:	90 06 a4 00 	add  %i2, 0x400, %o0
   19f78:	92 10 20 00 	clr  %o1
   19f7c:	40 00 66 06 	call  33794 <memset@plt>
   19f80:	94 10 21 00 	mov  0x100, %o2
   19f84:	9a 10 20 00 	clr  %o5
   19f88:	80 a3 40 18 	cmp  %o5, %i0
   19f8c:	16 80 00 11 	bge  19fd0 <jpeg_make_c_derived_tbl+0x15c>
   19f90:	88 07 bf f8 	add  %fp, -8, %g4
   19f94:	86 03 40 19 	add  %o5, %i1, %g3
   19f98:	c4 08 e0 11 	ldub  [ %g3 + 0x11 ], %g2
   19f9c:	85 28 a0 02 	sll  %g2, 2, %g2
   19fa0:	83 2b 60 02 	sll  %o5, 2, %g1
   19fa4:	82 00 40 04 	add  %g1, %g4, %g1
   19fa8:	c2 00 7a f0 	ld  [ %g1 + -1296 ], %g1
   19fac:	c2 26 80 02 	st  %g1, [ %i2 + %g2 ]
   19fb0:	c2 08 e0 11 	ldub  [ %g3 + 0x11 ], %g1
   19fb4:	82 00 40 1a 	add  %g1, %i2, %g1
   19fb8:	84 01 00 0d 	add  %g4, %o5, %g2
   19fbc:	c4 08 be f8 	ldub  [ %g2 + -264 ], %g2
   19fc0:	9a 03 60 01 	inc  %o5
   19fc4:	80 a3 40 18 	cmp  %o5, %i0
   19fc8:	06 bf ff f3 	bl  19f94 <jpeg_make_c_derived_tbl+0x120>
   19fcc:	c4 28 64 00 	stb  %g2, [ %g1 + 0x400 ]
   19fd0:	81 c7 e0 08 	ret 
   19fd4:	81 e8 00 00 	restore 

00019fd8 <dump_buffer>:
   19fd8:	9d e3 bf 98 	save  %sp, -104, %sp
   19fdc:	d0 06 20 20 	ld  [ %i0 + 0x20 ], %o0
   19fe0:	e0 02 20 14 	ld  [ %o0 + 0x14 ], %l0
   19fe4:	c2 04 20 0c 	ld  [ %l0 + 0xc ], %g1
   19fe8:	9f c0 40 00 	call  %g1
   19fec:	a2 10 00 18 	mov  %i0, %l1
   19ff0:	80 a2 20 00 	cmp  %o0, 0
   19ff4:	02 80 00 07 	be  1a010 <dump_buffer+0x38>
   19ff8:	b0 10 20 00 	clr  %i0
   19ffc:	c2 04 00 00 	ld  [ %l0 ], %g1
   1a000:	c2 24 40 00 	st  %g1, [ %l1 ]
   1a004:	c2 04 20 04 	ld  [ %l0 + 4 ], %g1
   1a008:	c2 24 60 04 	st  %g1, [ %l1 + 4 ]
   1a00c:	b0 10 20 01 	mov  1, %i0
   1a010:	81 c7 e0 08 	ret 
   1a014:	81 e8 00 00 	restore 

0001a018 <flush_bits>:
   1a018:	9d e3 bf 98 	save  %sp, -104, %sp
   1a01c:	a8 10 00 18 	mov  %i0, %l4
   1a020:	a0 10 00 18 	mov  %i0, %l0
   1a024:	a6 10 20 7f 	mov  0x7f, %l3
   1a028:	e2 06 20 0c 	ld  [ %i0 + 0xc ], %l1
   1a02c:	a2 04 60 07 	add  %l1, 7, %l1
   1a030:	82 10 20 18 	mov  0x18, %g1
   1a034:	82 20 40 11 	sub  %g1, %l1, %g1
   1a038:	a7 2c c0 01 	sll  %l3, %g1, %l3
   1a03c:	c2 06 20 08 	ld  [ %i0 + 8 ], %g1
   1a040:	80 a4 60 07 	cmp  %l1, 7
   1a044:	04 80 00 27 	ble  1a0e0 <flush_bits+0xc8>
   1a048:	a6 14 c0 01 	or  %l3, %g1, %l3
   1a04c:	83 3c e0 10 	sra  %l3, 0x10, %g1
   1a050:	a4 08 60 ff 	and  %g1, 0xff, %l2
   1a054:	c2 04 00 00 	ld  [ %l0 ], %g1
   1a058:	e4 28 40 00 	stb  %l2, [ %g1 ]
   1a05c:	82 00 60 01 	inc  %g1
   1a060:	c2 24 00 00 	st  %g1, [ %l0 ]
   1a064:	c2 04 20 04 	ld  [ %l0 + 4 ], %g1
   1a068:	82 00 7f ff 	add  %g1, -1, %g1
   1a06c:	80 a0 60 00 	cmp  %g1, 0
   1a070:	12 80 00 07 	bne  1a08c <flush_bits+0x74>
   1a074:	c2 24 20 04 	st  %g1, [ %l0 + 4 ]
   1a078:	7f ff ff d8 	call  19fd8 <dump_buffer>
   1a07c:	90 10 00 10 	mov  %l0, %o0
   1a080:	80 a2 20 00 	cmp  %o0, 0
   1a084:	02 80 00 1a 	be  1a0ec <flush_bits+0xd4>
   1a088:	82 10 20 00 	clr  %g1
   1a08c:	80 a4 a0 ff 	cmp  %l2, 0xff
   1a090:	32 80 00 11 	bne,a   1a0d4 <flush_bits+0xbc>
   1a094:	a2 04 7f f8 	add  %l1, -8, %l1
   1a098:	c2 04 00 00 	ld  [ %l0 ], %g1
   1a09c:	c0 28 40 00 	clrb  [ %g1 ]
   1a0a0:	82 00 60 01 	inc  %g1
   1a0a4:	c2 24 00 00 	st  %g1, [ %l0 ]
   1a0a8:	c2 04 20 04 	ld  [ %l0 + 4 ], %g1
   1a0ac:	82 00 7f ff 	add  %g1, -1, %g1
   1a0b0:	80 a0 60 00 	cmp  %g1, 0
   1a0b4:	12 80 00 07 	bne  1a0d0 <flush_bits+0xb8>
   1a0b8:	c2 24 20 04 	st  %g1, [ %l0 + 4 ]
   1a0bc:	7f ff ff c7 	call  19fd8 <dump_buffer>
   1a0c0:	90 10 00 10 	mov  %l0, %o0
   1a0c4:	80 a2 20 00 	cmp  %o0, 0
   1a0c8:	02 80 00 09 	be  1a0ec <flush_bits+0xd4>
   1a0cc:	82 10 20 00 	clr  %g1
   1a0d0:	a2 04 7f f8 	add  %l1, -8, %l1
   1a0d4:	80 a4 60 07 	cmp  %l1, 7
   1a0d8:	14 bf ff dd 	bg  1a04c <flush_bits+0x34>
   1a0dc:	a7 2c e0 08 	sll  %l3, 8, %l3
   1a0e0:	e6 24 20 08 	st  %l3, [ %l0 + 8 ]
   1a0e4:	e2 24 20 0c 	st  %l1, [ %l0 + 0xc ]
   1a0e8:	82 10 20 01 	mov  1, %g1
   1a0ec:	80 a0 60 00 	cmp  %g1, 0
   1a0f0:	02 80 00 05 	be  1a104 <flush_bits+0xec>
   1a0f4:	b0 10 20 00 	clr  %i0
   1a0f8:	c0 25 20 08 	clr  [ %l4 + 8 ]
   1a0fc:	c0 25 20 0c 	clr  [ %l4 + 0xc ]
   1a100:	b0 10 20 01 	mov  1, %i0
   1a104:	81 c7 e0 08 	ret 
   1a108:	81 e8 00 00 	restore 

0001a10c <encode_one_block>:
   1a10c:	9d e3 bf 98 	save  %sp, -104, %sp
   1a110:	e8 56 40 00 	ldsh  [ %i1 ], %l4
   1a114:	a8 25 00 1a 	sub  %l4, %i2, %l4
   1a118:	80 a5 20 00 	cmp  %l4, 0
   1a11c:	16 80 00 04 	bge  1a12c <encode_one_block+0x20>
   1a120:	a4 10 00 14 	mov  %l4, %l2
   1a124:	a4 20 00 14 	neg  %l4, %l2
   1a128:	a8 05 3f ff 	add  %l4, -1, %l4
   1a12c:	80 a4 a0 00 	cmp  %l2, 0
   1a130:	02 80 00 06 	be  1a148 <encode_one_block+0x3c>
   1a134:	b4 10 20 00 	clr  %i2
   1a138:	a5 3c a0 01 	sra  %l2, 1, %l2
   1a13c:	80 a4 a0 00 	cmp  %l2, 0
   1a140:	12 bf ff fe 	bne  1a138 <encode_one_block+0x2c>
   1a144:	b4 06 a0 01 	inc  %i2
   1a148:	a0 10 00 18 	mov  %i0, %l0
   1a14c:	85 2e a0 02 	sll  %i2, 2, %g2
   1a150:	82 06 80 1b 	add  %i2, %i3, %g1
   1a154:	e2 48 64 00 	ldsb  [ %g1 + 0x400 ], %l1
   1a158:	f6 06 c0 02 	ld  [ %i3 + %g2 ], %i3
   1a15c:	80 a4 60 00 	cmp  %l1, 0
   1a160:	12 80 00 0b 	bne  1a18c <encode_one_block+0x80>
   1a164:	e4 06 20 0c 	ld  [ %i0 + 0xc ], %l2
   1a168:	c2 06 20 20 	ld  [ %i0 + 0x20 ], %g1
   1a16c:	c4 00 40 00 	ld  [ %g1 ], %g2
   1a170:	82 10 20 27 	mov  0x27, %g1
   1a174:	c2 20 a0 14 	st  %g1, [ %g2 + 0x14 ]
   1a178:	d0 06 20 20 	ld  [ %i0 + 0x20 ], %o0
   1a17c:	c2 02 00 00 	ld  [ %o0 ], %g1
   1a180:	c2 00 40 00 	ld  [ %g1 ], %g1
   1a184:	9f c0 40 00 	call  %g1
   1a188:	01 00 00 00 	nop 
   1a18c:	82 10 20 01 	mov  1, %g1	! 1 <_init-0x106cf>
   1a190:	83 28 40 11 	sll  %g1, %l1, %g1
   1a194:	82 00 7f ff 	add  %g1, -1, %g1
   1a198:	b6 0e c0 01 	and  %i3, %g1, %i3
   1a19c:	a4 04 80 11 	add  %l2, %l1, %l2
   1a1a0:	82 10 20 18 	mov  0x18, %g1
   1a1a4:	82 20 40 12 	sub  %g1, %l2, %g1
   1a1a8:	b7 2e c0 01 	sll  %i3, %g1, %i3
   1a1ac:	c2 04 20 08 	ld  [ %l0 + 8 ], %g1
   1a1b0:	80 a4 a0 07 	cmp  %l2, 7
   1a1b4:	04 80 00 27 	ble  1a250 <encode_one_block+0x144>
   1a1b8:	b6 16 c0 01 	or  %i3, %g1, %i3
   1a1bc:	83 3e e0 10 	sra  %i3, 0x10, %g1
   1a1c0:	a2 08 60 ff 	and  %g1, 0xff, %l1
   1a1c4:	c2 04 00 00 	ld  [ %l0 ], %g1
   1a1c8:	e2 28 40 00 	stb  %l1, [ %g1 ]
   1a1cc:	82 00 60 01 	inc  %g1
   1a1d0:	c2 24 00 00 	st  %g1, [ %l0 ]
   1a1d4:	c2 04 20 04 	ld  [ %l0 + 4 ], %g1
   1a1d8:	82 00 7f ff 	add  %g1, -1, %g1
   1a1dc:	80 a0 60 00 	cmp  %g1, 0
   1a1e0:	12 80 00 07 	bne  1a1fc <encode_one_block+0xf0>
   1a1e4:	c2 24 20 04 	st  %g1, [ %l0 + 4 ]
   1a1e8:	7f ff ff 7c 	call  19fd8 <dump_buffer>
   1a1ec:	90 10 00 10 	mov  %l0, %o0
   1a1f0:	80 a2 20 00 	cmp  %o0, 0
   1a1f4:	02 80 00 1a 	be  1a25c <encode_one_block+0x150>
   1a1f8:	82 10 20 00 	clr  %g1
   1a1fc:	80 a4 60 ff 	cmp  %l1, 0xff
   1a200:	32 80 00 11 	bne,a   1a244 <encode_one_block+0x138>
   1a204:	a4 04 bf f8 	add  %l2, -8, %l2
   1a208:	c2 04 00 00 	ld  [ %l0 ], %g1
   1a20c:	c0 28 40 00 	clrb  [ %g1 ]
   1a210:	82 00 60 01 	inc  %g1
   1a214:	c2 24 00 00 	st  %g1, [ %l0 ]
   1a218:	c2 04 20 04 	ld  [ %l0 + 4 ], %g1
   1a21c:	82 00 7f ff 	add  %g1, -1, %g1
   1a220:	80 a0 60 00 	cmp  %g1, 0
   1a224:	12 80 00 07 	bne  1a240 <encode_one_block+0x134>
   1a228:	c2 24 20 04 	st  %g1, [ %l0 + 4 ]
   1a22c:	7f ff ff 6b 	call  19fd8 <dump_buffer>
   1a230:	90 10 00 10 	mov  %l0, %o0
   1a234:	80 a2 20 00 	cmp  %o0, 0
   1a238:	02 80 00 09 	be  1a25c <encode_one_block+0x150>
   1a23c:	82 10 20 00 	clr  %g1
   1a240:	a4 04 bf f8 	add  %l2, -8, %l2
   1a244:	80 a4 a0 07 	cmp  %l2, 7
   1a248:	14 bf ff dd 	bg  1a1bc <encode_one_block+0xb0>
   1a24c:	b7 2e e0 08 	sll  %i3, 8, %i3
   1a250:	f6 24 20 08 	st  %i3, [ %l0 + 8 ]
   1a254:	e4 24 20 0c 	st  %l2, [ %l0 + 0xc ]
   1a258:	82 10 20 01 	mov  1, %g1
   1a25c:	80 a0 60 00 	cmp  %g1, 0
   1a260:	02 80 01 85 	be  1a874 <encode_one_block+0x768>
   1a264:	84 10 20 00 	clr  %g2
   1a268:	80 a6 a0 00 	cmp  %i2, 0
   1a26c:	02 80 00 3c 	be  1a35c <encode_one_block+0x250>
   1a270:	a6 10 20 00 	clr  %l3
   1a274:	a0 10 00 18 	mov  %i0, %l0
   1a278:	e4 06 20 0c 	ld  [ %i0 + 0xc ], %l2
   1a27c:	82 10 20 01 	mov  1, %g1
   1a280:	83 28 40 1a 	sll  %g1, %i2, %g1
   1a284:	82 00 7f ff 	add  %g1, -1, %g1
   1a288:	a2 0d 00 01 	and  %l4, %g1, %l1
   1a28c:	a4 04 80 1a 	add  %l2, %i2, %l2
   1a290:	82 10 20 18 	mov  0x18, %g1
   1a294:	82 20 40 12 	sub  %g1, %l2, %g1
   1a298:	a3 2c 40 01 	sll  %l1, %g1, %l1
   1a29c:	c2 06 20 08 	ld  [ %i0 + 8 ], %g1
   1a2a0:	80 a4 a0 07 	cmp  %l2, 7
   1a2a4:	04 80 00 27 	ble  1a340 <encode_one_block+0x234>
   1a2a8:	a2 14 40 01 	or  %l1, %g1, %l1
   1a2ac:	83 3c 60 10 	sra  %l1, 0x10, %g1
   1a2b0:	a6 08 60 ff 	and  %g1, 0xff, %l3
   1a2b4:	c2 04 00 00 	ld  [ %l0 ], %g1
   1a2b8:	e6 28 40 00 	stb  %l3, [ %g1 ]
   1a2bc:	82 00 60 01 	inc  %g1
   1a2c0:	c2 24 00 00 	st  %g1, [ %l0 ]
   1a2c4:	c2 04 20 04 	ld  [ %l0 + 4 ], %g1
   1a2c8:	82 00 7f ff 	add  %g1, -1, %g1
   1a2cc:	80 a0 60 00 	cmp  %g1, 0
   1a2d0:	12 80 00 07 	bne  1a2ec <encode_one_block+0x1e0>
   1a2d4:	c2 24 20 04 	st  %g1, [ %l0 + 4 ]
   1a2d8:	7f ff ff 40 	call  19fd8 <dump_buffer>
   1a2dc:	90 10 00 10 	mov  %l0, %o0
   1a2e0:	80 a2 20 00 	cmp  %o0, 0
   1a2e4:	02 80 00 1a 	be  1a34c <encode_one_block+0x240>
   1a2e8:	82 10 20 00 	clr  %g1
   1a2ec:	80 a4 e0 ff 	cmp  %l3, 0xff
   1a2f0:	32 80 00 11 	bne,a   1a334 <encode_one_block+0x228>
   1a2f4:	a4 04 bf f8 	add  %l2, -8, %l2
   1a2f8:	c2 04 00 00 	ld  [ %l0 ], %g1
   1a2fc:	c0 28 40 00 	clrb  [ %g1 ]
   1a300:	82 00 60 01 	inc  %g1
   1a304:	c2 24 00 00 	st  %g1, [ %l0 ]
   1a308:	c2 04 20 04 	ld  [ %l0 + 4 ], %g1
   1a30c:	82 00 7f ff 	add  %g1, -1, %g1
   1a310:	80 a0 60 00 	cmp  %g1, 0
   1a314:	12 80 00 07 	bne  1a330 <encode_one_block+0x224>
   1a318:	c2 24 20 04 	st  %g1, [ %l0 + 4 ]
   1a31c:	7f ff ff 2f 	call  19fd8 <dump_buffer>
   1a320:	90 10 00 10 	mov  %l0, %o0
   1a324:	80 a2 20 00 	cmp  %o0, 0
   1a328:	02 80 00 09 	be  1a34c <encode_one_block+0x240>
   1a32c:	82 10 20 00 	clr  %g1
   1a330:	a4 04 bf f8 	add  %l2, -8, %l2
   1a334:	80 a4 a0 07 	cmp  %l2, 7
   1a338:	14 bf ff dd 	bg  1a2ac <encode_one_block+0x1a0>
   1a33c:	a3 2c 60 08 	sll  %l1, 8, %l1
   1a340:	e2 24 20 08 	st  %l1, [ %l0 + 8 ]
   1a344:	e4 24 20 0c 	st  %l2, [ %l0 + 0xc ]
   1a348:	82 10 20 01 	mov  1, %g1
   1a34c:	80 a0 60 00 	cmp  %g1, 0
   1a350:	02 80 01 49 	be  1a874 <encode_one_block+0x768>
   1a354:	84 10 20 00 	clr  %g2
   1a358:	a6 10 20 00 	clr  %l3
   1a35c:	aa 10 20 01 	mov  1, %l5
   1a360:	83 2d 60 02 	sll  %l5, 2, %g1
   1a364:	05 00 00 87 	sethi  %hi(0x21c00), %g2
   1a368:	84 10 a3 c4 	or  %g2, 0x3c4, %g2	! 21fc4 <jpeg_natural_order>
   1a36c:	c2 00 80 01 	ld  [ %g2 + %g1 ], %g1
   1a370:	82 00 40 01 	add  %g1, %g1, %g1
   1a374:	e4 56 40 01 	ldsh  [ %i1 + %g1 ], %l2
   1a378:	80 a4 a0 00 	cmp  %l2, 0
   1a37c:	12 80 00 04 	bne  1a38c <encode_one_block+0x280>
   1a380:	80 a4 e0 0f 	cmp  %l3, 0xf
   1a384:	10 80 00 eb 	b  1a730 <encode_one_block+0x624>
   1a388:	a6 04 e0 01 	inc  %l3
   1a38c:	04 80 00 4e 	ble  1a4c4 <encode_one_block+0x3b8>
   1a390:	80 a4 a0 00 	cmp  %l2, 0
   1a394:	b6 10 00 18 	mov  %i0, %i3
   1a398:	e0 4f 24 f0 	ldsb  [ %i4 + 0x4f0 ], %l0
   1a39c:	f4 07 23 c0 	ld  [ %i4 + 0x3c0 ], %i2
   1a3a0:	80 a4 20 00 	cmp  %l0, 0
   1a3a4:	12 80 00 0b 	bne  1a3d0 <encode_one_block+0x2c4>
   1a3a8:	e2 06 20 0c 	ld  [ %i0 + 0xc ], %l1
   1a3ac:	c2 06 20 20 	ld  [ %i0 + 0x20 ], %g1
   1a3b0:	c4 00 40 00 	ld  [ %g1 ], %g2
   1a3b4:	82 10 20 27 	mov  0x27, %g1
   1a3b8:	c2 20 a0 14 	st  %g1, [ %g2 + 0x14 ]
   1a3bc:	d0 06 20 20 	ld  [ %i0 + 0x20 ], %o0
   1a3c0:	c2 02 00 00 	ld  [ %o0 ], %g1
   1a3c4:	c2 00 40 00 	ld  [ %g1 ], %g1
   1a3c8:	9f c0 40 00 	call  %g1
   1a3cc:	01 00 00 00 	nop 
   1a3d0:	82 10 20 01 	mov  1, %g1	! 1 <_init-0x106cf>
   1a3d4:	83 28 40 10 	sll  %g1, %l0, %g1
   1a3d8:	82 00 7f ff 	add  %g1, -1, %g1
   1a3dc:	b4 0e 80 01 	and  %i2, %g1, %i2
   1a3e0:	a2 04 40 10 	add  %l1, %l0, %l1
   1a3e4:	82 10 20 18 	mov  0x18, %g1
   1a3e8:	82 20 40 11 	sub  %g1, %l1, %g1
   1a3ec:	b5 2e 80 01 	sll  %i2, %g1, %i2
   1a3f0:	c2 06 e0 08 	ld  [ %i3 + 8 ], %g1
   1a3f4:	80 a4 60 07 	cmp  %l1, 7
   1a3f8:	04 80 00 27 	ble  1a494 <encode_one_block+0x388>
   1a3fc:	b4 16 80 01 	or  %i2, %g1, %i2
   1a400:	83 3e a0 10 	sra  %i2, 0x10, %g1
   1a404:	a0 08 60 ff 	and  %g1, 0xff, %l0
   1a408:	c2 06 c0 00 	ld  [ %i3 ], %g1
   1a40c:	e0 28 40 00 	stb  %l0, [ %g1 ]
   1a410:	82 00 60 01 	inc  %g1
   1a414:	c2 26 c0 00 	st  %g1, [ %i3 ]
   1a418:	c2 06 e0 04 	ld  [ %i3 + 4 ], %g1
   1a41c:	82 00 7f ff 	add  %g1, -1, %g1
   1a420:	80 a0 60 00 	cmp  %g1, 0
   1a424:	12 80 00 07 	bne  1a440 <encode_one_block+0x334>
   1a428:	c2 26 e0 04 	st  %g1, [ %i3 + 4 ]
   1a42c:	7f ff fe eb 	call  19fd8 <dump_buffer>
   1a430:	90 10 00 1b 	mov  %i3, %o0
   1a434:	80 a2 20 00 	cmp  %o0, 0
   1a438:	02 80 00 1a 	be  1a4a0 <encode_one_block+0x394>
   1a43c:	82 10 20 00 	clr  %g1
   1a440:	80 a4 20 ff 	cmp  %l0, 0xff
   1a444:	32 80 00 11 	bne,a   1a488 <encode_one_block+0x37c>
   1a448:	a2 04 7f f8 	add  %l1, -8, %l1
   1a44c:	c2 06 c0 00 	ld  [ %i3 ], %g1
   1a450:	c0 28 40 00 	clrb  [ %g1 ]
   1a454:	82 00 60 01 	inc  %g1
   1a458:	c2 26 c0 00 	st  %g1, [ %i3 ]
   1a45c:	c2 06 e0 04 	ld  [ %i3 + 4 ], %g1
   1a460:	82 00 7f ff 	add  %g1, -1, %g1
   1a464:	80 a0 60 00 	cmp  %g1, 0
   1a468:	12 80 00 07 	bne  1a484 <encode_one_block+0x378>
   1a46c:	c2 26 e0 04 	st  %g1, [ %i3 + 4 ]
   1a470:	7f ff fe da 	call  19fd8 <dump_buffer>
   1a474:	90 10 00 1b 	mov  %i3, %o0
   1a478:	80 a2 20 00 	cmp  %o0, 0
   1a47c:	02 80 00 09 	be  1a4a0 <encode_one_block+0x394>
   1a480:	82 10 20 00 	clr  %g1
   1a484:	a2 04 7f f8 	add  %l1, -8, %l1
   1a488:	80 a4 60 07 	cmp  %l1, 7
   1a48c:	14 bf ff dd 	bg  1a400 <encode_one_block+0x2f4>
   1a490:	b5 2e a0 08 	sll  %i2, 8, %i2
   1a494:	f4 26 e0 08 	st  %i2, [ %i3 + 8 ]
   1a498:	e2 26 e0 0c 	st  %l1, [ %i3 + 0xc ]
   1a49c:	82 10 20 01 	mov  1, %g1
   1a4a0:	80 a0 60 00 	cmp  %g1, 0
   1a4a4:	32 80 00 04 	bne,a   1a4b4 <encode_one_block+0x3a8>
   1a4a8:	a6 04 ff f0 	add  %l3, -16, %l3
   1a4ac:	10 80 00 f2 	b  1a874 <encode_one_block+0x768>
   1a4b0:	84 10 20 00 	clr  %g2
   1a4b4:	80 a4 e0 0f 	cmp  %l3, 0xf
   1a4b8:	34 bf ff b9 	bg,a   1a39c <encode_one_block+0x290>
   1a4bc:	e0 4f 24 f0 	ldsb  [ %i4 + 0x4f0 ], %l0
   1a4c0:	80 a4 a0 00 	cmp  %l2, 0
   1a4c4:	16 80 00 04 	bge  1a4d4 <encode_one_block+0x3c8>
   1a4c8:	a8 10 00 12 	mov  %l2, %l4
   1a4cc:	a4 20 00 12 	neg  %l2
   1a4d0:	a8 05 3f ff 	add  %l4, -1, %l4
   1a4d4:	a5 3c a0 01 	sra  %l2, 1, %l2
   1a4d8:	80 a4 a0 00 	cmp  %l2, 0
   1a4dc:	02 80 00 06 	be  1a4f4 <encode_one_block+0x3e8>
   1a4e0:	b4 10 20 01 	mov  1, %i2
   1a4e4:	a5 3c a0 01 	sra  %l2, 1, %l2
   1a4e8:	80 a4 a0 00 	cmp  %l2, 0
   1a4ec:	12 bf ff fe 	bne  1a4e4 <encode_one_block+0x3d8>
   1a4f0:	b4 06 a0 01 	inc  %i2
   1a4f4:	83 2c e0 04 	sll  %l3, 4, %g1
   1a4f8:	82 00 40 1a 	add  %g1, %i2, %g1
   1a4fc:	a0 10 00 18 	mov  %i0, %l0
   1a500:	85 28 60 02 	sll  %g1, 2, %g2
   1a504:	82 00 40 1c 	add  %g1, %i4, %g1
   1a508:	e4 48 64 00 	ldsb  [ %g1 + 0x400 ], %l2
   1a50c:	e2 07 00 02 	ld  [ %i4 + %g2 ], %l1
   1a510:	80 a4 a0 00 	cmp  %l2, 0
   1a514:	12 80 00 0b 	bne  1a540 <encode_one_block+0x434>
   1a518:	f6 06 20 0c 	ld  [ %i0 + 0xc ], %i3
   1a51c:	c2 06 20 20 	ld  [ %i0 + 0x20 ], %g1
   1a520:	c4 00 40 00 	ld  [ %g1 ], %g2
   1a524:	82 10 20 27 	mov  0x27, %g1
   1a528:	c2 20 a0 14 	st  %g1, [ %g2 + 0x14 ]
   1a52c:	d0 06 20 20 	ld  [ %i0 + 0x20 ], %o0
   1a530:	c2 02 00 00 	ld  [ %o0 ], %g1
   1a534:	c2 00 40 00 	ld  [ %g1 ], %g1
   1a538:	9f c0 40 00 	call  %g1
   1a53c:	01 00 00 00 	nop 
   1a540:	82 10 20 01 	mov  1, %g1	! 1 <_init-0x106cf>
   1a544:	83 28 40 12 	sll  %g1, %l2, %g1
   1a548:	82 00 7f ff 	add  %g1, -1, %g1
   1a54c:	a2 0c 40 01 	and  %l1, %g1, %l1
   1a550:	b6 06 c0 12 	add  %i3, %l2, %i3
   1a554:	82 10 20 18 	mov  0x18, %g1
   1a558:	82 20 40 1b 	sub  %g1, %i3, %g1
   1a55c:	a3 2c 40 01 	sll  %l1, %g1, %l1
   1a560:	c2 04 20 08 	ld  [ %l0 + 8 ], %g1
   1a564:	80 a6 e0 07 	cmp  %i3, 7
   1a568:	04 80 00 27 	ble  1a604 <encode_one_block+0x4f8>
   1a56c:	a2 14 40 01 	or  %l1, %g1, %l1
   1a570:	83 3c 60 10 	sra  %l1, 0x10, %g1
   1a574:	a4 08 60 ff 	and  %g1, 0xff, %l2
   1a578:	c2 04 00 00 	ld  [ %l0 ], %g1
   1a57c:	e4 28 40 00 	stb  %l2, [ %g1 ]
   1a580:	82 00 60 01 	inc  %g1
   1a584:	c2 24 00 00 	st  %g1, [ %l0 ]
   1a588:	c2 04 20 04 	ld  [ %l0 + 4 ], %g1
   1a58c:	82 00 7f ff 	add  %g1, -1, %g1
   1a590:	80 a0 60 00 	cmp  %g1, 0
   1a594:	12 80 00 07 	bne  1a5b0 <encode_one_block+0x4a4>
   1a598:	c2 24 20 04 	st  %g1, [ %l0 + 4 ]
   1a59c:	7f ff fe 8f 	call  19fd8 <dump_buffer>
   1a5a0:	90 10 00 10 	mov  %l0, %o0
   1a5a4:	80 a2 20 00 	cmp  %o0, 0
   1a5a8:	02 80 00 1a 	be  1a610 <encode_one_block+0x504>
   1a5ac:	82 10 20 00 	clr  %g1
   1a5b0:	80 a4 a0 ff 	cmp  %l2, 0xff
   1a5b4:	32 80 00 11 	bne,a   1a5f8 <encode_one_block+0x4ec>
   1a5b8:	b6 06 ff f8 	add  %i3, -8, %i3
   1a5bc:	c2 04 00 00 	ld  [ %l0 ], %g1
   1a5c0:	c0 28 40 00 	clrb  [ %g1 ]
   1a5c4:	82 00 60 01 	inc  %g1
   1a5c8:	c2 24 00 00 	st  %g1, [ %l0 ]
   1a5cc:	c2 04 20 04 	ld  [ %l0 + 4 ], %g1
   1a5d0:	82 00 7f ff 	add  %g1, -1, %g1
   1a5d4:	80 a0 60 00 	cmp  %g1, 0
   1a5d8:	12 80 00 07 	bne  1a5f4 <encode_one_block+0x4e8>
   1a5dc:	c2 24 20 04 	st  %g1, [ %l0 + 4 ]
   1a5e0:	7f ff fe 7e 	call  19fd8 <dump_buffer>
   1a5e4:	90 10 00 10 	mov  %l0, %o0
   1a5e8:	80 a2 20 00 	cmp  %o0, 0
   1a5ec:	02 80 00 09 	be  1a610 <encode_one_block+0x504>
   1a5f0:	82 10 20 00 	clr  %g1
   1a5f4:	b6 06 ff f8 	add  %i3, -8, %i3
   1a5f8:	80 a6 e0 07 	cmp  %i3, 7
   1a5fc:	14 bf ff dd 	bg  1a570 <encode_one_block+0x464>
   1a600:	a3 2c 60 08 	sll  %l1, 8, %l1
   1a604:	e2 24 20 08 	st  %l1, [ %l0 + 8 ]
   1a608:	f6 24 20 0c 	st  %i3, [ %l0 + 0xc ]
   1a60c:	82 10 20 01 	mov  1, %g1
   1a610:	80 a0 60 00 	cmp  %g1, 0
   1a614:	02 80 00 95 	be  1a868 <encode_one_block+0x75c>
   1a618:	a0 10 00 18 	mov  %i0, %l0
   1a61c:	a4 10 00 1a 	mov  %i2, %l2
   1a620:	a2 10 00 14 	mov  %l4, %l1
   1a624:	80 a6 a0 00 	cmp  %i2, 0
   1a628:	12 80 00 0b 	bne  1a654 <encode_one_block+0x548>
   1a62c:	f6 06 20 0c 	ld  [ %i0 + 0xc ], %i3
   1a630:	c2 06 20 20 	ld  [ %i0 + 0x20 ], %g1
   1a634:	c4 00 40 00 	ld  [ %g1 ], %g2
   1a638:	82 10 20 27 	mov  0x27, %g1
   1a63c:	c2 20 a0 14 	st  %g1, [ %g2 + 0x14 ]
   1a640:	d0 06 20 20 	ld  [ %i0 + 0x20 ], %o0
   1a644:	c2 02 00 00 	ld  [ %o0 ], %g1
   1a648:	c2 00 40 00 	ld  [ %g1 ], %g1
   1a64c:	9f c0 40 00 	call  %g1
   1a650:	01 00 00 00 	nop 
   1a654:	82 10 20 01 	mov  1, %g1	! 1 <_init-0x106cf>
   1a658:	83 28 40 12 	sll  %g1, %l2, %g1
   1a65c:	82 00 7f ff 	add  %g1, -1, %g1
   1a660:	a2 0c 40 01 	and  %l1, %g1, %l1
   1a664:	b6 06 c0 12 	add  %i3, %l2, %i3
   1a668:	82 10 20 18 	mov  0x18, %g1
   1a66c:	82 20 40 1b 	sub  %g1, %i3, %g1
   1a670:	a3 2c 40 01 	sll  %l1, %g1, %l1
   1a674:	c2 04 20 08 	ld  [ %l0 + 8 ], %g1
   1a678:	80 a6 e0 07 	cmp  %i3, 7
   1a67c:	04 80 00 27 	ble  1a718 <encode_one_block+0x60c>
   1a680:	a2 14 40 01 	or  %l1, %g1, %l1
   1a684:	83 3c 60 10 	sra  %l1, 0x10, %g1
   1a688:	a4 08 60 ff 	and  %g1, 0xff, %l2
   1a68c:	c2 04 00 00 	ld  [ %l0 ], %g1
   1a690:	e4 28 40 00 	stb  %l2, [ %g1 ]
   1a694:	82 00 60 01 	inc  %g1
   1a698:	c2 24 00 00 	st  %g1, [ %l0 ]
   1a69c:	c2 04 20 04 	ld  [ %l0 + 4 ], %g1
   1a6a0:	82 00 7f ff 	add  %g1, -1, %g1
   1a6a4:	80 a0 60 00 	cmp  %g1, 0
   1a6a8:	12 80 00 07 	bne  1a6c4 <encode_one_block+0x5b8>
   1a6ac:	c2 24 20 04 	st  %g1, [ %l0 + 4 ]
   1a6b0:	7f ff fe 4a 	call  19fd8 <dump_buffer>
   1a6b4:	90 10 00 10 	mov  %l0, %o0
   1a6b8:	80 a2 20 00 	cmp  %o0, 0
   1a6bc:	02 80 00 1a 	be  1a724 <encode_one_block+0x618>
   1a6c0:	82 10 20 00 	clr  %g1
   1a6c4:	80 a4 a0 ff 	cmp  %l2, 0xff
   1a6c8:	32 80 00 11 	bne,a   1a70c <encode_one_block+0x600>
   1a6cc:	b6 06 ff f8 	add  %i3, -8, %i3
   1a6d0:	c2 04 00 00 	ld  [ %l0 ], %g1
   1a6d4:	c0 28 40 00 	clrb  [ %g1 ]
   1a6d8:	82 00 60 01 	inc  %g1
   1a6dc:	c2 24 00 00 	st  %g1, [ %l0 ]
   1a6e0:	c2 04 20 04 	ld  [ %l0 + 4 ], %g1
   1a6e4:	82 00 7f ff 	add  %g1, -1, %g1
   1a6e8:	80 a0 60 00 	cmp  %g1, 0
   1a6ec:	12 80 00 07 	bne  1a708 <encode_one_block+0x5fc>
   1a6f0:	c2 24 20 04 	st  %g1, [ %l0 + 4 ]
   1a6f4:	7f ff fe 39 	call  19fd8 <dump_buffer>
   1a6f8:	90 10 00 10 	mov  %l0, %o0
   1a6fc:	80 a2 20 00 	cmp  %o0, 0
   1a700:	02 80 00 09 	be  1a724 <encode_one_block+0x618>
   1a704:	82 10 20 00 	clr  %g1
   1a708:	b6 06 ff f8 	add  %i3, -8, %i3
   1a70c:	80 a6 e0 07 	cmp  %i3, 7
   1a710:	14 bf ff dd 	bg  1a684 <encode_one_block+0x578>
   1a714:	a3 2c 60 08 	sll  %l1, 8, %l1
   1a718:	e2 24 20 08 	st  %l1, [ %l0 + 8 ]
   1a71c:	f6 24 20 0c 	st  %i3, [ %l0 + 0xc ]
   1a720:	82 10 20 01 	mov  1, %g1
   1a724:	80 a0 60 00 	cmp  %g1, 0
   1a728:	02 80 00 52 	be  1a870 <encode_one_block+0x764>
   1a72c:	a6 10 20 00 	clr  %l3
   1a730:	aa 05 60 01 	inc  %l5
   1a734:	80 a5 60 3f 	cmp  %l5, 0x3f
   1a738:	04 bf ff 0b 	ble  1a364 <encode_one_block+0x258>
   1a73c:	83 2d 60 02 	sll  %l5, 2, %g1
   1a740:	80 a4 e0 00 	cmp  %l3, 0
   1a744:	04 80 00 4c 	ble  1a874 <encode_one_block+0x768>
   1a748:	84 10 20 01 	mov  1, %g2
   1a74c:	e2 4f 24 00 	ldsb  [ %i4 + 0x400 ], %l1
   1a750:	f8 07 00 00 	ld  [ %i4 ], %i4
   1a754:	80 a4 60 00 	cmp  %l1, 0
   1a758:	12 80 00 0b 	bne  1a784 <encode_one_block+0x678>
   1a75c:	e0 06 20 0c 	ld  [ %i0 + 0xc ], %l0
   1a760:	c2 06 20 20 	ld  [ %i0 + 0x20 ], %g1
   1a764:	c4 00 40 00 	ld  [ %g1 ], %g2
   1a768:	82 10 20 27 	mov  0x27, %g1
   1a76c:	c2 20 a0 14 	st  %g1, [ %g2 + 0x14 ]
   1a770:	d0 06 20 20 	ld  [ %i0 + 0x20 ], %o0
   1a774:	c2 02 00 00 	ld  [ %o0 ], %g1
   1a778:	c2 00 40 00 	ld  [ %g1 ], %g1
   1a77c:	9f c0 40 00 	call  %g1
   1a780:	01 00 00 00 	nop 
   1a784:	82 10 20 01 	mov  1, %g1	! 1 <_init-0x106cf>
   1a788:	83 28 40 11 	sll  %g1, %l1, %g1
   1a78c:	82 00 7f ff 	add  %g1, -1, %g1
   1a790:	b8 0f 00 01 	and  %i4, %g1, %i4
   1a794:	a0 04 00 11 	add  %l0, %l1, %l0
   1a798:	82 10 20 18 	mov  0x18, %g1
   1a79c:	82 20 40 10 	sub  %g1, %l0, %g1
   1a7a0:	b9 2f 00 01 	sll  %i4, %g1, %i4
   1a7a4:	c2 06 20 08 	ld  [ %i0 + 8 ], %g1
   1a7a8:	80 a4 20 07 	cmp  %l0, 7
   1a7ac:	04 80 00 27 	ble  1a848 <encode_one_block+0x73c>
   1a7b0:	b8 17 00 01 	or  %i4, %g1, %i4
   1a7b4:	83 3f 20 10 	sra  %i4, 0x10, %g1
   1a7b8:	a2 08 60 ff 	and  %g1, 0xff, %l1
   1a7bc:	c2 06 00 00 	ld  [ %i0 ], %g1
   1a7c0:	e2 28 40 00 	stb  %l1, [ %g1 ]
   1a7c4:	82 00 60 01 	inc  %g1
   1a7c8:	c2 26 00 00 	st  %g1, [ %i0 ]
   1a7cc:	c2 06 20 04 	ld  [ %i0 + 4 ], %g1
   1a7d0:	82 00 7f ff 	add  %g1, -1, %g1
   1a7d4:	80 a0 60 00 	cmp  %g1, 0
   1a7d8:	12 80 00 07 	bne  1a7f4 <encode_one_block+0x6e8>
   1a7dc:	c2 26 20 04 	st  %g1, [ %i0 + 4 ]
   1a7e0:	7f ff fd fe 	call  19fd8 <dump_buffer>
   1a7e4:	90 10 00 18 	mov  %i0, %o0
   1a7e8:	80 a2 20 00 	cmp  %o0, 0
   1a7ec:	02 80 00 1a 	be  1a854 <encode_one_block+0x748>
   1a7f0:	82 10 20 00 	clr  %g1
   1a7f4:	80 a4 60 ff 	cmp  %l1, 0xff
   1a7f8:	32 80 00 11 	bne,a   1a83c <encode_one_block+0x730>
   1a7fc:	a0 04 3f f8 	add  %l0, -8, %l0
   1a800:	c2 06 00 00 	ld  [ %i0 ], %g1
   1a804:	c0 28 40 00 	clrb  [ %g1 ]
   1a808:	82 00 60 01 	inc  %g1
   1a80c:	c2 26 00 00 	st  %g1, [ %i0 ]
   1a810:	c2 06 20 04 	ld  [ %i0 + 4 ], %g1
   1a814:	82 00 7f ff 	add  %g1, -1, %g1
   1a818:	80 a0 60 00 	cmp  %g1, 0
   1a81c:	12 80 00 07 	bne  1a838 <encode_one_block+0x72c>
   1a820:	c2 26 20 04 	st  %g1, [ %i0 + 4 ]
   1a824:	7f ff fd ed 	call  19fd8 <dump_buffer>
   1a828:	90 10 00 18 	mov  %i0, %o0
   1a82c:	80 a2 20 00 	cmp  %o0, 0
   1a830:	02 80 00 09 	be  1a854 <encode_one_block+0x748>
   1a834:	82 10 20 00 	clr  %g1
   1a838:	a0 04 3f f8 	add  %l0, -8, %l0
   1a83c:	80 a4 20 07 	cmp  %l0, 7
   1a840:	14 bf ff dd 	bg  1a7b4 <encode_one_block+0x6a8>
   1a844:	b9 2f 20 08 	sll  %i4, 8, %i4
   1a848:	f8 26 20 08 	st  %i4, [ %i0 + 8 ]
   1a84c:	e0 26 20 0c 	st  %l0, [ %i0 + 0xc ]
   1a850:	82 10 20 01 	mov  1, %g1
   1a854:	80 a0 60 00 	cmp  %g1, 0
   1a858:	02 80 00 07 	be  1a874 <encode_one_block+0x768>
   1a85c:	84 10 20 00 	clr  %g2
   1a860:	10 80 00 05 	b  1a874 <encode_one_block+0x768>
   1a864:	84 10 20 01 	mov  1, %g2
   1a868:	10 80 00 03 	b  1a874 <encode_one_block+0x768>
   1a86c:	84 10 20 00 	clr  %g2
   1a870:	84 10 20 00 	clr  %g2
   1a874:	81 c7 e0 08 	ret 
   1a878:	91 e8 00 02 	restore  %g0, %g2, %o0

0001a87c <emit_restart>:
   1a87c:	9d e3 bf 98 	save  %sp, -104, %sp
   1a880:	7f ff fd e6 	call  1a018 <flush_bits>
   1a884:	90 10 00 18 	mov  %i0, %o0
   1a888:	80 a2 20 00 	cmp  %o0, 0
   1a88c:	02 80 00 2f 	be  1a948 <emit_restart+0xcc>
   1a890:	82 10 20 00 	clr  %g1
   1a894:	c2 06 00 00 	ld  [ %i0 ], %g1
   1a898:	84 10 3f ff 	mov  -1, %g2
   1a89c:	c4 28 40 00 	stb  %g2, [ %g1 ]
   1a8a0:	82 00 60 01 	inc  %g1
   1a8a4:	c2 26 00 00 	st  %g1, [ %i0 ]
   1a8a8:	c2 06 20 04 	ld  [ %i0 + 4 ], %g1
   1a8ac:	82 00 7f ff 	add  %g1, -1, %g1
   1a8b0:	80 a0 60 00 	cmp  %g1, 0
   1a8b4:	12 80 00 07 	bne  1a8d0 <emit_restart+0x54>
   1a8b8:	c2 26 20 04 	st  %g1, [ %i0 + 4 ]
   1a8bc:	7f ff fd c7 	call  19fd8 <dump_buffer>
   1a8c0:	90 10 00 18 	mov  %i0, %o0
   1a8c4:	80 a2 20 00 	cmp  %o0, 0
   1a8c8:	02 80 00 20 	be  1a948 <emit_restart+0xcc>
   1a8cc:	82 10 20 00 	clr  %g1
   1a8d0:	c2 06 00 00 	ld  [ %i0 ], %g1
   1a8d4:	84 06 7f d0 	add  %i1, -48, %g2
   1a8d8:	c4 28 40 00 	stb  %g2, [ %g1 ]
   1a8dc:	82 00 60 01 	inc  %g1
   1a8e0:	c2 26 00 00 	st  %g1, [ %i0 ]
   1a8e4:	c2 06 20 04 	ld  [ %i0 + 4 ], %g1
   1a8e8:	82 00 7f ff 	add  %g1, -1, %g1
   1a8ec:	80 a0 60 00 	cmp  %g1, 0
   1a8f0:	12 80 00 07 	bne  1a90c <emit_restart+0x90>
   1a8f4:	c2 26 20 04 	st  %g1, [ %i0 + 4 ]
   1a8f8:	7f ff fd b8 	call  19fd8 <dump_buffer>
   1a8fc:	90 10 00 18 	mov  %i0, %o0
   1a900:	80 a2 20 00 	cmp  %o0, 0
   1a904:	02 80 00 11 	be  1a948 <emit_restart+0xcc>
   1a908:	82 10 20 00 	clr  %g1
   1a90c:	c2 06 20 20 	ld  [ %i0 + 0x20 ], %g1
   1a910:	86 10 00 01 	mov  %g1, %g3
   1a914:	c2 00 60 ec 	ld  [ %g1 + 0xec ], %g1
   1a918:	80 a0 60 00 	cmp  %g1, 0
   1a91c:	04 80 00 0a 	ble  1a944 <emit_restart+0xc8>
   1a920:	84 10 20 00 	clr  %g2
   1a924:	83 28 a0 02 	sll  %g2, 2, %g1
   1a928:	82 00 40 18 	add  %g1, %i0, %g1
   1a92c:	c0 20 60 10 	clr  [ %g1 + 0x10 ]
   1a930:	84 00 a0 01 	inc  %g2
   1a934:	c2 00 e0 ec 	ld  [ %g3 + 0xec ], %g1
   1a938:	80 a0 40 02 	cmp  %g1, %g2
   1a93c:	14 bf ff fb 	bg  1a928 <emit_restart+0xac>
   1a940:	83 28 a0 02 	sll  %g2, 2, %g1
   1a944:	82 10 20 01 	mov  1, %g1
   1a948:	81 c7 e0 08 	ret 
   1a94c:	91 e8 00 01 	restore  %g0, %g1, %o0

0001a950 <encode_mcu_huff>:
   1a950:	9d e3 bf 70 	save  %sp, -144, %sp
   1a954:	e0 06 21 64 	ld  [ %i0 + 0x164 ], %l0
   1a958:	c4 06 20 14 	ld  [ %i0 + 0x14 ], %g2
   1a95c:	c2 00 80 00 	ld  [ %g2 ], %g1
   1a960:	c2 27 bf d0 	st  %g1, [ %fp + -48 ]
   1a964:	c2 00 a0 04 	ld  [ %g2 + 4 ], %g1
   1a968:	c2 27 bf d4 	st  %g1, [ %fp + -44 ]
   1a96c:	c2 04 20 0c 	ld  [ %l0 + 0xc ], %g1
   1a970:	c2 27 bf d8 	st  %g1, [ %fp + -40 ]
   1a974:	c2 04 20 10 	ld  [ %l0 + 0x10 ], %g1
   1a978:	c2 27 bf dc 	st  %g1, [ %fp + -36 ]
   1a97c:	c2 04 20 14 	ld  [ %l0 + 0x14 ], %g1
   1a980:	c2 27 bf e0 	st  %g1, [ %fp + -32 ]
   1a984:	c2 04 20 18 	ld  [ %l0 + 0x18 ], %g1
   1a988:	c2 27 bf e4 	st  %g1, [ %fp + -28 ]
   1a98c:	c2 04 20 1c 	ld  [ %l0 + 0x1c ], %g1
   1a990:	c2 27 bf e8 	st  %g1, [ %fp + -24 ]
   1a994:	c2 04 20 20 	ld  [ %l0 + 0x20 ], %g1
   1a998:	c2 27 bf ec 	st  %g1, [ %fp + -20 ]
   1a99c:	f0 27 bf f0 	st  %i0, [ %fp + -16 ]
   1a9a0:	c2 06 20 c0 	ld  [ %i0 + 0xc0 ], %g1
   1a9a4:	80 a0 60 00 	cmp  %g1, 0
   1a9a8:	02 80 00 10 	be  1a9e8 <encode_mcu_huff+0x98>
   1a9ac:	a4 10 20 00 	clr  %l2
   1a9b0:	c2 04 20 24 	ld  [ %l0 + 0x24 ], %g1
   1a9b4:	80 a0 60 00 	cmp  %g1, 0
   1a9b8:	32 80 00 0d 	bne,a   1a9ec <encode_mcu_huff+0x9c>
   1a9bc:	c2 06 21 08 	ld  [ %i0 + 0x108 ], %g1
   1a9c0:	90 07 bf d0 	add  %fp, -48, %o0
   1a9c4:	7f ff ff ae 	call  1a87c <emit_restart>
   1a9c8:	d2 04 20 28 	ld  [ %l0 + 0x28 ], %o1
   1a9cc:	80 a2 20 00 	cmp  %o0, 0
   1a9d0:	02 80 00 4e 	be  1ab08 <encode_mcu_huff+0x1b8>
   1a9d4:	82 10 20 00 	clr  %g1
   1a9d8:	10 80 00 04 	b  1a9e8 <encode_mcu_huff+0x98>
   1a9dc:	a4 10 20 00 	clr  %l2
   1a9e0:	10 80 00 4a 	b  1ab08 <encode_mcu_huff+0x1b8>
   1a9e4:	82 10 20 00 	clr  %g1
   1a9e8:	c2 06 21 08 	ld  [ %i0 + 0x108 ], %g1
   1a9ec:	80 a0 60 00 	cmp  %g1, 0
   1a9f0:	24 80 00 24 	ble,a   1aa80 <encode_mcu_huff+0x130>
   1a9f4:	c4 06 20 14 	ld  [ %i0 + 0x14 ], %g2
   1a9f8:	a6 07 bf f8 	add  %fp, -8, %l3
   1a9fc:	89 2c a0 02 	sll  %l2, 2, %g4
   1aa00:	82 01 00 18 	add  %g4, %i0, %g1
   1aa04:	e2 00 61 0c 	ld  [ %g1 + 0x10c ], %l1
   1aa08:	87 2c 60 02 	sll  %l1, 2, %g3
   1aa0c:	82 00 c0 18 	add  %g3, %i0, %g1
   1aa10:	c2 00 60 f0 	ld  [ %g1 + 0xf0 ], %g1
   1aa14:	86 00 c0 13 	add  %g3, %l3, %g3
   1aa18:	c4 00 60 14 	ld  [ %g1 + 0x14 ], %g2
   1aa1c:	85 28 a0 02 	sll  %g2, 2, %g2
   1aa20:	84 00 80 10 	add  %g2, %l0, %g2
   1aa24:	c2 00 60 18 	ld  [ %g1 + 0x18 ], %g1
   1aa28:	83 28 60 02 	sll  %g1, 2, %g1
   1aa2c:	82 00 40 10 	add  %g1, %l0, %g1
   1aa30:	90 07 bf d0 	add  %fp, -48, %o0
   1aa34:	d2 06 40 04 	ld  [ %i1 + %g4 ], %o1
   1aa38:	d4 00 ff e8 	ld  [ %g3 + -24 ], %o2
   1aa3c:	d6 00 a0 2c 	ld  [ %g2 + 0x2c ], %o3
   1aa40:	7f ff fd b3 	call  1a10c <encode_one_block>
   1aa44:	d8 00 60 3c 	ld  [ %g1 + 0x3c ], %o4
   1aa48:	80 a2 20 00 	cmp  %o0, 0
   1aa4c:	02 bf ff e5 	be  1a9e0 <encode_mcu_huff+0x90>
   1aa50:	85 2c 60 02 	sll  %l1, 2, %g2
   1aa54:	84 00 80 13 	add  %g2, %l3, %g2
   1aa58:	83 2c a0 02 	sll  %l2, 2, %g1
   1aa5c:	c2 06 40 01 	ld  [ %i1 + %g1 ], %g1
   1aa60:	c2 50 40 00 	ldsh  [ %g1 ], %g1
   1aa64:	c2 20 bf e8 	st  %g1, [ %g2 + -24 ]
   1aa68:	a4 04 a0 01 	inc  %l2
   1aa6c:	c2 06 21 08 	ld  [ %i0 + 0x108 ], %g1
   1aa70:	80 a0 40 12 	cmp  %g1, %l2
   1aa74:	34 bf ff e3 	bg,a   1aa00 <encode_mcu_huff+0xb0>
   1aa78:	89 2c a0 02 	sll  %l2, 2, %g4
   1aa7c:	c4 06 20 14 	ld  [ %i0 + 0x14 ], %g2
   1aa80:	c2 07 bf d0 	ld  [ %fp + -48 ], %g1
   1aa84:	c2 20 80 00 	st  %g1, [ %g2 ]
   1aa88:	c4 06 20 14 	ld  [ %i0 + 0x14 ], %g2
   1aa8c:	c2 07 bf d4 	ld  [ %fp + -44 ], %g1
   1aa90:	c2 20 a0 04 	st  %g1, [ %g2 + 4 ]
   1aa94:	c2 07 bf d8 	ld  [ %fp + -40 ], %g1
   1aa98:	c2 24 20 0c 	st  %g1, [ %l0 + 0xc ]
   1aa9c:	c2 07 bf dc 	ld  [ %fp + -36 ], %g1
   1aaa0:	c2 24 20 10 	st  %g1, [ %l0 + 0x10 ]
   1aaa4:	c2 07 bf e0 	ld  [ %fp + -32 ], %g1
   1aaa8:	c2 24 20 14 	st  %g1, [ %l0 + 0x14 ]
   1aaac:	c2 07 bf e4 	ld  [ %fp + -28 ], %g1
   1aab0:	c2 24 20 18 	st  %g1, [ %l0 + 0x18 ]
   1aab4:	c2 07 bf e8 	ld  [ %fp + -24 ], %g1
   1aab8:	c2 24 20 1c 	st  %g1, [ %l0 + 0x1c ]
   1aabc:	c2 07 bf ec 	ld  [ %fp + -20 ], %g1
   1aac0:	c2 24 20 20 	st  %g1, [ %l0 + 0x20 ]
   1aac4:	f0 06 20 c0 	ld  [ %i0 + 0xc0 ], %i0
   1aac8:	80 a6 20 00 	cmp  %i0, 0
   1aacc:	02 80 00 0f 	be  1ab08 <encode_mcu_huff+0x1b8>
   1aad0:	82 10 20 01 	mov  1, %g1
   1aad4:	c2 04 20 24 	ld  [ %l0 + 0x24 ], %g1
   1aad8:	80 a0 60 00 	cmp  %g1, 0
   1aadc:	12 80 00 09 	bne  1ab00 <encode_mcu_huff+0x1b0>
   1aae0:	82 00 7f ff 	add  %g1, -1, %g1
   1aae4:	f0 24 20 24 	st  %i0, [ %l0 + 0x24 ]
   1aae8:	c2 04 20 28 	ld  [ %l0 + 0x28 ], %g1
   1aaec:	82 00 60 01 	inc  %g1
   1aaf0:	82 08 60 07 	and  %g1, 7, %g1
   1aaf4:	c2 24 20 28 	st  %g1, [ %l0 + 0x28 ]
   1aaf8:	c2 04 20 24 	ld  [ %l0 + 0x24 ], %g1
   1aafc:	82 00 7f ff 	add  %g1, -1, %g1
   1ab00:	c2 24 20 24 	st  %g1, [ %l0 + 0x24 ]
   1ab04:	82 10 20 01 	mov  1, %g1
   1ab08:	81 c7 e0 08 	ret 
   1ab0c:	91 e8 00 01 	restore  %g0, %g1, %o0

0001ab10 <finish_pass_huff>:
   1ab10:	9d e3 bf 70 	save  %sp, -144, %sp
   1ab14:	e0 06 21 64 	ld  [ %i0 + 0x164 ], %l0
   1ab18:	c4 06 20 14 	ld  [ %i0 + 0x14 ], %g2
   1ab1c:	c2 00 80 00 	ld  [ %g2 ], %g1
   1ab20:	c2 27 bf d0 	st  %g1, [ %fp + -48 ]
   1ab24:	c2 00 a0 04 	ld  [ %g2 + 4 ], %g1
   1ab28:	c2 27 bf d4 	st  %g1, [ %fp + -44 ]
   1ab2c:	c2 04 20 0c 	ld  [ %l0 + 0xc ], %g1
   1ab30:	c2 27 bf d8 	st  %g1, [ %fp + -40 ]
   1ab34:	c2 04 20 10 	ld  [ %l0 + 0x10 ], %g1
   1ab38:	c2 27 bf dc 	st  %g1, [ %fp + -36 ]
   1ab3c:	c2 04 20 14 	ld  [ %l0 + 0x14 ], %g1
   1ab40:	c2 27 bf e0 	st  %g1, [ %fp + -32 ]
   1ab44:	c2 04 20 18 	ld  [ %l0 + 0x18 ], %g1
   1ab48:	c2 27 bf e4 	st  %g1, [ %fp + -28 ]
   1ab4c:	c2 04 20 1c 	ld  [ %l0 + 0x1c ], %g1
   1ab50:	c2 27 bf e8 	st  %g1, [ %fp + -24 ]
   1ab54:	c2 04 20 20 	ld  [ %l0 + 0x20 ], %g1
   1ab58:	c2 27 bf ec 	st  %g1, [ %fp + -20 ]
   1ab5c:	f0 27 bf f0 	st  %i0, [ %fp + -16 ]
   1ab60:	7f ff fd 2e 	call  1a018 <flush_bits>
   1ab64:	90 07 bf d0 	add  %fp, -48, %o0
   1ab68:	80 a2 20 00 	cmp  %o0, 0
   1ab6c:	32 80 00 0a 	bne,a   1ab94 <finish_pass_huff+0x84>
   1ab70:	c4 06 20 14 	ld  [ %i0 + 0x14 ], %g2
   1ab74:	c4 06 00 00 	ld  [ %i0 ], %g2
   1ab78:	82 10 20 16 	mov  0x16, %g1
   1ab7c:	c2 20 a0 14 	st  %g1, [ %g2 + 0x14 ]
   1ab80:	c2 06 00 00 	ld  [ %i0 ], %g1
   1ab84:	c2 00 40 00 	ld  [ %g1 ], %g1
   1ab88:	9f c0 40 00 	call  %g1
   1ab8c:	90 10 00 18 	mov  %i0, %o0
   1ab90:	c4 06 20 14 	ld  [ %i0 + 0x14 ], %g2
   1ab94:	c2 07 bf d0 	ld  [ %fp + -48 ], %g1
   1ab98:	c2 20 80 00 	st  %g1, [ %g2 ]
   1ab9c:	c4 06 20 14 	ld  [ %i0 + 0x14 ], %g2
   1aba0:	c2 07 bf d4 	ld  [ %fp + -44 ], %g1
   1aba4:	c2 20 a0 04 	st  %g1, [ %g2 + 4 ]
   1aba8:	c2 07 bf d8 	ld  [ %fp + -40 ], %g1
   1abac:	c2 24 20 0c 	st  %g1, [ %l0 + 0xc ]
   1abb0:	c2 07 bf dc 	ld  [ %fp + -36 ], %g1
   1abb4:	c2 24 20 10 	st  %g1, [ %l0 + 0x10 ]
   1abb8:	c2 07 bf e0 	ld  [ %fp + -32 ], %g1
   1abbc:	c2 24 20 14 	st  %g1, [ %l0 + 0x14 ]
   1abc0:	c2 07 bf e4 	ld  [ %fp + -28 ], %g1
   1abc4:	c2 24 20 18 	st  %g1, [ %l0 + 0x18 ]
   1abc8:	c2 07 bf e8 	ld  [ %fp + -24 ], %g1
   1abcc:	c2 24 20 1c 	st  %g1, [ %l0 + 0x1c ]
   1abd0:	c2 07 bf ec 	ld  [ %fp + -20 ], %g1
   1abd4:	c2 24 20 20 	st  %g1, [ %l0 + 0x20 ]
   1abd8:	81 c7 e0 08 	ret 
   1abdc:	81 e8 00 00 	restore 

0001abe0 <htest_one_block>:
   1abe0:	c6 52 00 00 	ldsh  [ %o0 ], %g3
   1abe4:	86 20 c0 09 	sub  %g3, %o1, %g3
   1abe8:	83 38 e0 1f 	sra  %g3, 0x1f, %g1
   1abec:	86 18 c0 01 	xor  %g3, %g1, %g3
   1abf0:	86 a0 c0 01 	subcc  %g3, %g1, %g3
   1abf4:	02 80 00 06 	be  1ac0c <htest_one_block+0x2c>
   1abf8:	88 10 20 00 	clr  %g4
   1abfc:	87 38 e0 01 	sra  %g3, 1, %g3
   1ac00:	80 a0 e0 00 	cmp  %g3, 0
   1ac04:	12 bf ff fe 	bne  1abfc <htest_one_block+0x1c>
   1ac08:	88 01 20 01 	inc  %g4
   1ac0c:	83 29 20 02 	sll  %g4, 2, %g1
   1ac10:	c4 02 80 01 	ld  [ %o2 + %g1 ], %g2
   1ac14:	84 00 a0 01 	inc  %g2
   1ac18:	c4 22 80 01 	st  %g2, [ %o2 + %g1 ]
   1ac1c:	84 10 20 00 	clr  %g2
   1ac20:	9a 10 20 01 	mov  1, %o5
   1ac24:	03 00 00 87 	sethi  %hi(0x21c00), %g1
   1ac28:	98 10 63 c4 	or  %g1, 0x3c4, %o4	! 21fc4 <jpeg_natural_order>
   1ac2c:	83 2b 60 02 	sll  %o5, 2, %g1
   1ac30:	c2 03 00 01 	ld  [ %o4 + %g1 ], %g1
   1ac34:	82 00 40 01 	add  %g1, %g1, %g1
   1ac38:	c6 52 00 01 	ldsh  [ %o0 + %g1 ], %g3
   1ac3c:	80 a0 e0 00 	cmp  %g3, 0
   1ac40:	12 80 00 04 	bne  1ac50 <htest_one_block+0x70>
   1ac44:	80 a0 a0 0f 	cmp  %g2, 0xf
   1ac48:	10 80 00 1c 	b  1acb8 <htest_one_block+0xd8>
   1ac4c:	84 00 a0 01 	inc  %g2
   1ac50:	04 80 00 09 	ble  1ac74 <htest_one_block+0x94>
   1ac54:	83 38 e0 1f 	sra  %g3, 0x1f, %g1
   1ac58:	c2 02 e3 c0 	ld  [ %o3 + 0x3c0 ], %g1
   1ac5c:	84 00 bf f0 	add  %g2, -16, %g2
   1ac60:	80 a0 a0 0f 	cmp  %g2, 0xf
   1ac64:	14 bf ff fe 	bg  1ac5c <htest_one_block+0x7c>
   1ac68:	82 00 60 01 	inc  %g1
   1ac6c:	c2 22 e3 c0 	st  %g1, [ %o3 + 0x3c0 ]
   1ac70:	83 38 e0 1f 	sra  %g3, 0x1f, %g1
   1ac74:	86 18 c0 01 	xor  %g3, %g1, %g3
   1ac78:	86 20 c0 01 	sub  %g3, %g1, %g3
   1ac7c:	87 38 e0 01 	sra  %g3, 1, %g3
   1ac80:	80 a0 e0 00 	cmp  %g3, 0
   1ac84:	02 80 00 06 	be  1ac9c <htest_one_block+0xbc>
   1ac88:	88 10 20 01 	mov  1, %g4
   1ac8c:	87 38 e0 01 	sra  %g3, 1, %g3
   1ac90:	80 a0 e0 00 	cmp  %g3, 0
   1ac94:	12 bf ff fe 	bne  1ac8c <htest_one_block+0xac>
   1ac98:	88 01 20 01 	inc  %g4
   1ac9c:	85 28 a0 04 	sll  %g2, 4, %g2
   1aca0:	84 00 80 04 	add  %g2, %g4, %g2
   1aca4:	85 28 a0 02 	sll  %g2, 2, %g2
   1aca8:	c2 02 c0 02 	ld  [ %o3 + %g2 ], %g1
   1acac:	82 00 60 01 	inc  %g1
   1acb0:	c2 22 c0 02 	st  %g1, [ %o3 + %g2 ]
   1acb4:	84 10 20 00 	clr  %g2
   1acb8:	9a 03 60 01 	inc  %o5
   1acbc:	80 a3 60 3f 	cmp  %o5, 0x3f
   1acc0:	04 bf ff dc 	ble  1ac30 <htest_one_block+0x50>
   1acc4:	83 2b 60 02 	sll  %o5, 2, %g1
   1acc8:	80 a0 a0 00 	cmp  %g2, 0
   1accc:	04 80 00 05 	ble  1ace0 <htest_one_block+0x100>
   1acd0:	01 00 00 00 	nop 
   1acd4:	c2 02 c0 00 	ld  [ %o3 ], %g1
   1acd8:	82 00 60 01 	inc  %g1
   1acdc:	c2 22 c0 00 	st  %g1, [ %o3 ]
   1ace0:	81 c3 e0 08 	retl 
   1ace4:	01 00 00 00 	nop 

0001ace8 <encode_mcu_gather>:
   1ace8:	9d e3 bf 98 	save  %sp, -104, %sp
   1acec:	c2 06 20 c0 	ld  [ %i0 + 0xc0 ], %g1
   1acf0:	80 a0 60 00 	cmp  %g1, 0
   1acf4:	02 80 00 17 	be  1ad50 <encode_mcu_gather+0x68>
   1acf8:	e4 06 21 64 	ld  [ %i0 + 0x164 ], %l2
   1acfc:	c2 04 a0 24 	ld  [ %l2 + 0x24 ], %g1
   1ad00:	80 a0 60 00 	cmp  %g1, 0
   1ad04:	12 80 00 12 	bne  1ad4c <encode_mcu_gather+0x64>
   1ad08:	82 00 7f ff 	add  %g1, -1, %g1
   1ad0c:	c2 06 20 ec 	ld  [ %i0 + 0xec ], %g1
   1ad10:	80 a0 60 00 	cmp  %g1, 0
   1ad14:	04 80 00 0a 	ble  1ad3c <encode_mcu_gather+0x54>
   1ad18:	a0 10 20 00 	clr  %l0
   1ad1c:	83 2c 20 02 	sll  %l0, 2, %g1
   1ad20:	82 00 40 12 	add  %g1, %l2, %g1
   1ad24:	c0 20 60 14 	clr  [ %g1 + 0x14 ]
   1ad28:	a0 04 20 01 	inc  %l0
   1ad2c:	c2 06 20 ec 	ld  [ %i0 + 0xec ], %g1
   1ad30:	80 a0 40 10 	cmp  %g1, %l0
   1ad34:	14 bf ff fb 	bg  1ad20 <encode_mcu_gather+0x38>
   1ad38:	83 2c 20 02 	sll  %l0, 2, %g1
   1ad3c:	c2 06 20 c0 	ld  [ %i0 + 0xc0 ], %g1
   1ad40:	c2 24 a0 24 	st  %g1, [ %l2 + 0x24 ]
   1ad44:	c2 04 a0 24 	ld  [ %l2 + 0x24 ], %g1
   1ad48:	82 00 7f ff 	add  %g1, -1, %g1
   1ad4c:	c2 24 a0 24 	st  %g1, [ %l2 + 0x24 ]
   1ad50:	c2 06 21 08 	ld  [ %i0 + 0x108 ], %g1
   1ad54:	80 a0 60 00 	cmp  %g1, 0
   1ad58:	04 80 00 1c 	ble  1adc8 <encode_mcu_gather+0xe0>
   1ad5c:	a6 10 20 00 	clr  %l3
   1ad60:	a3 2c e0 02 	sll  %l3, 2, %l1
   1ad64:	82 04 40 18 	add  %l1, %i0, %g1
   1ad68:	e0 00 61 0c 	ld  [ %g1 + 0x10c ], %l0
   1ad6c:	a1 2c 20 02 	sll  %l0, 2, %l0
   1ad70:	82 04 00 18 	add  %l0, %i0, %g1
   1ad74:	c2 00 60 f0 	ld  [ %g1 + 0xf0 ], %g1
   1ad78:	a0 04 00 12 	add  %l0, %l2, %l0
   1ad7c:	c4 00 60 14 	ld  [ %g1 + 0x14 ], %g2
   1ad80:	85 28 a0 02 	sll  %g2, 2, %g2
   1ad84:	84 00 80 12 	add  %g2, %l2, %g2
   1ad88:	c2 00 60 18 	ld  [ %g1 + 0x18 ], %g1
   1ad8c:	83 28 60 02 	sll  %g1, 2, %g1
   1ad90:	82 00 40 12 	add  %g1, %l2, %g1
   1ad94:	d0 06 40 11 	ld  [ %i1 + %l1 ], %o0
   1ad98:	d2 04 20 14 	ld  [ %l0 + 0x14 ], %o1
   1ad9c:	d4 00 a0 4c 	ld  [ %g2 + 0x4c ], %o2
   1ada0:	7f ff ff 90 	call  1abe0 <htest_one_block>
   1ada4:	d6 00 60 5c 	ld  [ %g1 + 0x5c ], %o3
   1ada8:	c2 06 40 11 	ld  [ %i1 + %l1 ], %g1
   1adac:	c2 50 40 00 	ldsh  [ %g1 ], %g1
   1adb0:	c2 24 20 14 	st  %g1, [ %l0 + 0x14 ]
   1adb4:	a6 04 e0 01 	inc  %l3
   1adb8:	c2 06 21 08 	ld  [ %i0 + 0x108 ], %g1
   1adbc:	80 a0 40 13 	cmp  %g1, %l3
   1adc0:	14 bf ff e9 	bg  1ad64 <encode_mcu_gather+0x7c>
   1adc4:	a3 2c e0 02 	sll  %l3, 2, %l1
   1adc8:	81 c7 e0 08 	ret 
   1adcc:	91 e8 20 01 	restore  %g0, 1, %o0

0001add0 <jpeg_gen_optimal_table>:
   1add0:	9d e3 b7 60 	save  %sp, -2208, %sp
   1add4:	84 10 20 00 	clr  %g2
   1add8:	86 10 20 00 	clr  %g3
   1addc:	c4 3f bf d0 	std  %g2, [ %fp + -48 ]
   1ade0:	c4 3f bf d8 	std  %g2, [ %fp + -40 ]
   1ade4:	c4 3f bf e0 	std  %g2, [ %fp + -32 ]
   1ade8:	c4 3f bf e8 	std  %g2, [ %fp + -24 ]
   1adec:	c0 2f bf f0 	clrb  [ %fp + -16 ]
   1adf0:	90 07 bb c8 	add  %fp, -1080, %o0
   1adf4:	92 10 20 00 	clr  %o1
   1adf8:	40 00 62 67 	call  33794 <memset@plt>
   1adfc:	94 10 24 04 	mov  0x404, %o2
   1ae00:	a0 10 20 00 	clr  %l0
   1ae04:	86 07 bf f8 	add  %fp, -8, %g3
   1ae08:	84 10 3f ff 	mov  -1, %g2
   1ae0c:	83 2c 20 02 	sll  %l0, 2, %g1
   1ae10:	82 00 40 03 	add  %g1, %g3, %g1
   1ae14:	a0 04 20 01 	inc  %l0
   1ae18:	80 a4 21 00 	cmp  %l0, 0x100
   1ae1c:	04 bf ff fc 	ble  1ae0c <jpeg_gen_optimal_table+0x3c>
   1ae20:	c4 20 77 c8 	st  %g2, [ %g1 + -2104 ]
   1ae24:	82 10 20 01 	mov  1, %g1
   1ae28:	c2 26 a4 00 	st  %g1, [ %i2 + 0x400 ]
   1ae2c:	15 0e e6 b2 	sethi  %hi(0x3b9ac800), %o2
   1ae30:	92 07 bf f8 	add  %fp, -8, %o1
   1ae34:	9a 10 3f ff 	mov  -1, %o5
   1ae38:	86 12 a2 00 	or  %o2, 0x200, %g3
   1ae3c:	a0 10 20 00 	clr  %l0
   1ae40:	83 2c 20 02 	sll  %l0, 2, %g1
   1ae44:	c2 06 80 01 	ld  [ %i2 + %g1 ], %g1
   1ae48:	80 a0 60 00 	cmp  %g1, 0
   1ae4c:	22 80 00 08 	be,a   1ae6c <jpeg_gen_optimal_table+0x9c>
   1ae50:	a0 04 20 01 	inc  %l0
   1ae54:	80 a0 40 03 	cmp  %g1, %g3
   1ae58:	34 80 00 05 	bg,a   1ae6c <jpeg_gen_optimal_table+0x9c>
   1ae5c:	a0 04 20 01 	inc  %l0
   1ae60:	86 10 00 01 	mov  %g1, %g3
   1ae64:	9a 10 00 10 	mov  %l0, %o5
   1ae68:	a0 04 20 01 	inc  %l0
   1ae6c:	80 a4 21 00 	cmp  %l0, 0x100
   1ae70:	04 bf ff f5 	ble  1ae44 <jpeg_gen_optimal_table+0x74>
   1ae74:	83 2c 20 02 	sll  %l0, 2, %g1
   1ae78:	98 10 3f ff 	mov  -1, %o4
   1ae7c:	86 12 a2 00 	or  %o2, 0x200, %g3
   1ae80:	a0 10 20 00 	clr  %l0
   1ae84:	83 2c 20 02 	sll  %l0, 2, %g1
   1ae88:	c2 06 80 01 	ld  [ %i2 + %g1 ], %g1
   1ae8c:	80 a0 60 00 	cmp  %g1, 0
   1ae90:	22 80 00 10 	be,a   1aed0 <jpeg_gen_optimal_table+0x100>
   1ae94:	a0 04 20 01 	inc  %l0
   1ae98:	80 a0 40 03 	cmp  %g1, %g3
   1ae9c:	04 80 00 03 	ble  1aea8 <jpeg_gen_optimal_table+0xd8>
   1aea0:	84 10 20 01 	mov  1, %g2
   1aea4:	84 10 20 00 	clr  %g2
   1aea8:	82 1c 00 0d 	xor  %l0, %o5, %g1
   1aeac:	80 a0 00 01 	cmp  %g0, %g1
   1aeb0:	82 40 20 00 	addx  %g0, 0, %g1
   1aeb4:	80 88 80 01 	btst  %g2, %g1
   1aeb8:	22 80 00 06 	be,a   1aed0 <jpeg_gen_optimal_table+0x100>
   1aebc:	a0 04 20 01 	inc  %l0
   1aec0:	83 2c 20 02 	sll  %l0, 2, %g1
   1aec4:	c6 06 80 01 	ld  [ %i2 + %g1 ], %g3
   1aec8:	98 10 00 10 	mov  %l0, %o4
   1aecc:	a0 04 20 01 	inc  %l0
   1aed0:	80 a4 21 00 	cmp  %l0, 0x100
   1aed4:	04 bf ff ed 	ble  1ae88 <jpeg_gen_optimal_table+0xb8>
   1aed8:	83 2c 20 02 	sll  %l0, 2, %g1
   1aedc:	80 a3 20 00 	cmp  %o4, 0
   1aee0:	06 80 00 36 	bl  1afb8 <jpeg_gen_optimal_table+0x1e8>
   1aee4:	85 2b 60 02 	sll  %o5, 2, %g2
   1aee8:	96 10 00 02 	mov  %g2, %o3
   1aeec:	89 2b 20 02 	sll  %o4, 2, %g4
   1aef0:	c2 06 80 02 	ld  [ %i2 + %g2 ], %g1
   1aef4:	c6 06 80 04 	ld  [ %i2 + %g4 ], %g3
   1aef8:	82 00 40 03 	add  %g1, %g3, %g1
   1aefc:	c2 26 80 02 	st  %g1, [ %i2 + %g2 ]
   1af00:	c0 26 80 04 	clr  [ %i2 + %g4 ]
   1af04:	84 00 80 09 	add  %g2, %o1, %g2
   1af08:	c2 00 bb d0 	ld  [ %g2 + -1072 ], %g1
   1af0c:	82 00 60 01 	inc  %g1
   1af10:	c2 20 bb d0 	st  %g1, [ %g2 + -1072 ]
   1af14:	c2 00 b7 c8 	ld  [ %g2 + -2104 ], %g1
   1af18:	80 a0 60 00 	cmp  %g1, 0
   1af1c:	06 80 00 0d 	bl  1af50 <jpeg_gen_optimal_table+0x180>
   1af20:	86 10 00 09 	mov  %o1, %g3
   1af24:	82 02 c0 03 	add  %o3, %g3, %g1
   1af28:	da 00 77 c8 	ld  [ %g1 + -2104 ], %o5
   1af2c:	89 2b 60 02 	sll  %o5, 2, %g4
   1af30:	84 01 00 03 	add  %g4, %g3, %g2
   1af34:	c2 00 bb d0 	ld  [ %g2 + -1072 ], %g1
   1af38:	82 00 60 01 	inc  %g1
   1af3c:	c2 20 bb d0 	st  %g1, [ %g2 + -1072 ]
   1af40:	c2 00 b7 c8 	ld  [ %g2 + -2104 ], %g1
   1af44:	80 a0 60 00 	cmp  %g1, 0
   1af48:	16 bf ff f7 	bge  1af24 <jpeg_gen_optimal_table+0x154>
   1af4c:	96 10 00 04 	mov  %g4, %o3
   1af50:	83 2b 60 02 	sll  %o5, 2, %g1
   1af54:	82 00 40 09 	add  %g1, %o1, %g1
   1af58:	d8 20 77 c8 	st  %o4, [ %g1 + -2104 ]
   1af5c:	85 2b 20 02 	sll  %o4, 2, %g2
   1af60:	88 10 00 02 	mov  %g2, %g4
   1af64:	84 00 80 09 	add  %g2, %o1, %g2
   1af68:	c2 00 bb d0 	ld  [ %g2 + -1072 ], %g1
   1af6c:	82 00 60 01 	inc  %g1
   1af70:	c2 20 bb d0 	st  %g1, [ %g2 + -1072 ]
   1af74:	c2 00 b7 c8 	ld  [ %g2 + -2104 ], %g1
   1af78:	80 a0 60 00 	cmp  %g1, 0
   1af7c:	06 bf ff ae 	bl  1ae34 <jpeg_gen_optimal_table+0x64>
   1af80:	86 10 00 09 	mov  %o1, %g3
   1af84:	82 01 00 03 	add  %g4, %g3, %g1
   1af88:	d8 00 77 c8 	ld  [ %g1 + -2104 ], %o4
   1af8c:	89 2b 20 02 	sll  %o4, 2, %g4
   1af90:	84 01 00 03 	add  %g4, %g3, %g2
   1af94:	c2 00 bb d0 	ld  [ %g2 + -1072 ], %g1
   1af98:	82 00 60 01 	inc  %g1
   1af9c:	c2 20 bb d0 	st  %g1, [ %g2 + -1072 ]
   1afa0:	c2 00 b7 c8 	ld  [ %g2 + -2104 ], %g1
   1afa4:	80 a0 60 00 	cmp  %g1, 0
   1afa8:	16 bf ff f8 	bge  1af88 <jpeg_gen_optimal_table+0x1b8>
   1afac:	82 01 00 03 	add  %g4, %g3, %g1
   1afb0:	10 bf ff a2 	b  1ae38 <jpeg_gen_optimal_table+0x68>
   1afb4:	9a 10 3f ff 	mov  -1, %o5
   1afb8:	a0 10 20 00 	clr  %l0
   1afbc:	b4 07 bf f8 	add  %fp, -8, %i2
   1afc0:	83 2c 20 02 	sll  %l0, 2, %g1
   1afc4:	82 00 40 1a 	add  %g1, %i2, %g1
   1afc8:	c2 00 7b d0 	ld  [ %g1 + -1072 ], %g1
   1afcc:	80 a0 60 00 	cmp  %g1, 0
   1afd0:	22 80 00 14 	be,a   1b020 <jpeg_gen_optimal_table+0x250>
   1afd4:	a0 04 20 01 	inc  %l0
   1afd8:	80 a0 60 20 	cmp  %g1, 0x20
   1afdc:	04 80 00 0a 	ble  1b004 <jpeg_gen_optimal_table+0x234>
   1afe0:	83 2c 20 02 	sll  %l0, 2, %g1
   1afe4:	c4 06 00 00 	ld  [ %i0 ], %g2
   1afe8:	82 10 20 26 	mov  0x26, %g1
   1afec:	c2 20 a0 14 	st  %g1, [ %g2 + 0x14 ]
   1aff0:	c2 06 00 00 	ld  [ %i0 ], %g1
   1aff4:	c2 00 40 00 	ld  [ %g1 ], %g1
   1aff8:	9f c0 40 00 	call  %g1
   1affc:	90 10 00 18 	mov  %i0, %o0
   1b000:	83 2c 20 02 	sll  %l0, 2, %g1
   1b004:	82 00 40 1a 	add  %g1, %i2, %g1
   1b008:	c4 00 7b d0 	ld  [ %g1 + -1072 ], %g2
   1b00c:	84 06 80 02 	add  %i2, %g2, %g2
   1b010:	c2 08 bf d8 	ldub  [ %g2 + -40 ], %g1
   1b014:	82 00 60 01 	inc  %g1
   1b018:	c2 28 bf d8 	stb  %g1, [ %g2 + -40 ]
   1b01c:	a0 04 20 01 	inc  %l0
   1b020:	80 a4 21 00 	cmp  %l0, 0x100
   1b024:	04 bf ff e8 	ble  1afc4 <jpeg_gen_optimal_table+0x1f4>
   1b028:	83 2c 20 02 	sll  %l0, 2, %g1
   1b02c:	a0 10 20 20 	mov  0x20, %l0
   1b030:	98 07 bf f8 	add  %fp, -8, %o4
   1b034:	96 10 00 0c 	mov  %o4, %o3
   1b038:	82 03 00 10 	add  %o4, %l0, %g1
   1b03c:	c2 08 7f d8 	ldub  [ %g1 + -40 ], %g1
   1b040:	80 a0 60 00 	cmp  %g1, 0
   1b044:	02 80 00 22 	be  1b0cc <jpeg_gen_optimal_table+0x2fc>
   1b048:	86 10 00 0c 	mov  %o4, %g3
   1b04c:	9a 10 00 0b 	mov  %o3, %o5
   1b050:	88 02 c0 10 	add  %o3, %l0, %g4
   1b054:	84 04 3f fe 	add  %l0, -2, %g2
   1b058:	82 10 00 03 	mov  %g3, %g1
   1b05c:	82 00 40 02 	add  %g1, %g2, %g1
   1b060:	c2 08 7f d8 	ldub  [ %g1 + -40 ], %g1
   1b064:	80 a0 60 00 	cmp  %g1, 0
   1b068:	32 80 00 09 	bne,a   1b08c <jpeg_gen_optimal_table+0x2bc>
   1b06c:	c2 09 3f d8 	ldub  [ %g4 + -40 ], %g1
   1b070:	84 00 bf ff 	add  %g2, -1, %g2
   1b074:	82 00 c0 02 	add  %g3, %g2, %g1
   1b078:	c2 08 7f d8 	ldub  [ %g1 + -40 ], %g1
   1b07c:	80 a0 60 00 	cmp  %g1, 0
   1b080:	22 bf ff fd 	be,a   1b074 <jpeg_gen_optimal_table+0x2a4>
   1b084:	84 00 bf ff 	add  %g2, -1, %g2
   1b088:	c2 09 3f d8 	ldub  [ %g4 + -40 ], %g1
   1b08c:	82 00 7f fe 	add  %g1, -2, %g1
   1b090:	c2 29 3f d8 	stb  %g1, [ %g4 + -40 ]
   1b094:	c2 09 3f d7 	ldub  [ %g4 + -41 ], %g1
   1b098:	82 00 60 01 	inc  %g1
   1b09c:	c2 29 3f d7 	stb  %g1, [ %g4 + -41 ]
   1b0a0:	84 03 40 02 	add  %o5, %g2, %g2
   1b0a4:	c2 08 bf d9 	ldub  [ %g2 + -39 ], %g1
   1b0a8:	82 00 60 02 	add  %g1, 2, %g1
   1b0ac:	c2 28 bf d9 	stb  %g1, [ %g2 + -39 ]
   1b0b0:	c2 08 bf d8 	ldub  [ %g2 + -40 ], %g1
   1b0b4:	82 00 7f ff 	add  %g1, -1, %g1
   1b0b8:	c2 28 bf d8 	stb  %g1, [ %g2 + -40 ]
   1b0bc:	c2 09 3f d8 	ldub  [ %g4 + -40 ], %g1
   1b0c0:	80 a0 60 00 	cmp  %g1, 0
   1b0c4:	12 bf ff e4 	bne  1b054 <jpeg_gen_optimal_table+0x284>
   1b0c8:	86 10 00 0d 	mov  %o5, %g3
   1b0cc:	a0 04 3f ff 	add  %l0, -1, %l0
   1b0d0:	80 a4 20 10 	cmp  %l0, 0x10
   1b0d4:	14 bf ff da 	bg  1b03c <jpeg_gen_optimal_table+0x26c>
   1b0d8:	82 03 00 10 	add  %o4, %l0, %g1
   1b0dc:	82 07 bf f8 	add  %fp, -8, %g1
   1b0e0:	84 10 00 01 	mov  %g1, %g2
   1b0e4:	82 00 40 10 	add  %g1, %l0, %g1
   1b0e8:	c2 08 7f d8 	ldub  [ %g1 + -40 ], %g1
   1b0ec:	80 a0 60 00 	cmp  %g1, 0
   1b0f0:	32 80 00 09 	bne,a   1b114 <jpeg_gen_optimal_table+0x344>
   1b0f4:	84 07 bf f8 	add  %fp, -8, %g2
   1b0f8:	a0 04 3f ff 	add  %l0, -1, %l0
   1b0fc:	82 00 80 10 	add  %g2, %l0, %g1
   1b100:	c2 08 7f d8 	ldub  [ %g1 + -40 ], %g1
   1b104:	80 a0 60 00 	cmp  %g1, 0
   1b108:	22 bf ff fd 	be,a   1b0fc <jpeg_gen_optimal_table+0x32c>
   1b10c:	a0 04 3f ff 	add  %l0, -1, %l0
   1b110:	84 07 bf f8 	add  %fp, -8, %g2
   1b114:	84 00 80 10 	add  %g2, %l0, %g2
   1b118:	c2 08 bf d8 	ldub  [ %g2 + -40 ], %g1
   1b11c:	82 00 7f ff 	add  %g1, -1, %g1
   1b120:	c2 28 bf d8 	stb  %g1, [ %g2 + -40 ]
   1b124:	c2 07 bf d0 	ld  [ %fp + -48 ], %g1
   1b128:	c2 26 40 00 	st  %g1, [ %i1 ]
   1b12c:	c2 07 bf d4 	ld  [ %fp + -44 ], %g1
   1b130:	c2 26 60 04 	st  %g1, [ %i1 + 4 ]
   1b134:	c2 07 bf d8 	ld  [ %fp + -40 ], %g1
   1b138:	c2 26 60 08 	st  %g1, [ %i1 + 8 ]
   1b13c:	c2 07 bf dc 	ld  [ %fp + -36 ], %g1
   1b140:	c2 26 60 0c 	st  %g1, [ %i1 + 0xc ]
   1b144:	c2 0f bf e0 	ldub  [ %fp + -32 ], %g1
   1b148:	c2 2e 60 10 	stb  %g1, [ %i1 + 0x10 ]
   1b14c:	86 10 20 00 	clr  %g3
   1b150:	a0 10 20 01 	mov  1, %l0
   1b154:	88 07 bf f8 	add  %fp, -8, %g4
   1b158:	84 10 20 00 	clr  %g2
   1b15c:	83 28 a0 02 	sll  %g2, 2, %g1
   1b160:	82 00 40 04 	add  %g1, %g4, %g1
   1b164:	c2 00 7b d0 	ld  [ %g1 + -1072 ], %g1
   1b168:	80 a0 40 10 	cmp  %g1, %l0
   1b16c:	32 80 00 06 	bne,a   1b184 <jpeg_gen_optimal_table+0x3b4>
   1b170:	84 00 a0 01 	inc  %g2
   1b174:	82 00 c0 19 	add  %g3, %i1, %g1
   1b178:	c4 28 60 11 	stb  %g2, [ %g1 + 0x11 ]
   1b17c:	86 00 e0 01 	inc  %g3
   1b180:	84 00 a0 01 	inc  %g2
   1b184:	80 a0 a0 ff 	cmp  %g2, 0xff
   1b188:	04 bf ff f6 	ble  1b160 <jpeg_gen_optimal_table+0x390>
   1b18c:	83 28 a0 02 	sll  %g2, 2, %g1
   1b190:	a0 04 20 01 	inc  %l0
   1b194:	80 a4 20 20 	cmp  %l0, 0x20
   1b198:	24 bf ff f1 	ble,a   1b15c <jpeg_gen_optimal_table+0x38c>
   1b19c:	84 10 20 00 	clr  %g2
   1b1a0:	c0 26 61 14 	clr  [ %i1 + 0x114 ]
   1b1a4:	81 c7 e0 08 	ret 
   1b1a8:	81 e8 00 00 	restore 

0001b1ac <finish_pass_gather>:
   1b1ac:	9d e3 bf 78 	save  %sp, -136, %sp
   1b1b0:	ec 06 21 64 	ld  [ %i0 + 0x164 ], %l6
   1b1b4:	84 10 20 00 	clr  %g2
   1b1b8:	86 10 20 00 	clr  %g3
   1b1bc:	c4 3f bf e8 	std  %g2, [ %fp + -24 ]
   1b1c0:	c4 3f bf f0 	std  %g2, [ %fp + -16 ]
   1b1c4:	c4 3f bf d8 	std  %g2, [ %fp + -40 ]
   1b1c8:	c4 3f bf e0 	std  %g2, [ %fp + -32 ]
   1b1cc:	c2 06 20 ec 	ld  [ %i0 + 0xec ], %g1
   1b1d0:	80 a0 60 00 	cmp  %g1, 0
   1b1d4:	04 80 00 3a 	ble  1b2bc <finish_pass_gather+0x110>
   1b1d8:	a6 10 20 00 	clr  %l3
   1b1dc:	aa 07 bf f8 	add  %fp, -8, %l5
   1b1e0:	ae 10 20 01 	mov  1, %l7
   1b1e4:	83 2c e0 02 	sll  %l3, 2, %g1
   1b1e8:	82 00 40 18 	add  %g1, %i0, %g1
   1b1ec:	c2 00 60 f0 	ld  [ %g1 + 0xf0 ], %g1
   1b1f0:	e4 00 60 14 	ld  [ %g1 + 0x14 ], %l2
   1b1f4:	e8 00 60 18 	ld  [ %g1 + 0x18 ], %l4
   1b1f8:	85 2c a0 02 	sll  %l2, 2, %g2
   1b1fc:	82 00 80 15 	add  %g2, %l5, %g1
   1b200:	c2 00 7f f0 	ld  [ %g1 + -16 ], %g1
   1b204:	80 a0 60 00 	cmp  %g1, 0
   1b208:	32 80 00 13 	bne,a   1b254 <finish_pass_gather+0xa8>
   1b20c:	85 2d 20 02 	sll  %l4, 2, %g2
   1b210:	a0 00 80 18 	add  %g2, %i0, %l0
   1b214:	c2 04 20 50 	ld  [ %l0 + 0x50 ], %g1
   1b218:	80 a0 60 00 	cmp  %g1, 0
   1b21c:	12 80 00 05 	bne  1b230 <finish_pass_gather+0x84>
   1b220:	a2 04 20 50 	add  %l0, 0x50, %l1
   1b224:	40 00 0a dc 	call  1dd94 <jpeg_alloc_huff_table>
   1b228:	90 10 00 18 	mov  %i0, %o0
   1b22c:	d0 24 20 50 	st  %o0, [ %l0 + 0x50 ]
   1b230:	a1 2c a0 02 	sll  %l2, 2, %l0
   1b234:	82 04 00 16 	add  %l0, %l6, %g1
   1b238:	90 10 00 18 	mov  %i0, %o0
   1b23c:	d2 04 40 00 	ld  [ %l1 ], %o1
   1b240:	7f ff fe e4 	call  1add0 <jpeg_gen_optimal_table>
   1b244:	d4 00 60 4c 	ld  [ %g1 + 0x4c ], %o2
   1b248:	a0 04 00 15 	add  %l0, %l5, %l0
   1b24c:	ee 24 3f f0 	st  %l7, [ %l0 + -16 ]
   1b250:	85 2d 20 02 	sll  %l4, 2, %g2
   1b254:	82 00 80 15 	add  %g2, %l5, %g1
   1b258:	c2 00 7f e0 	ld  [ %g1 + -32 ], %g1
   1b25c:	80 a0 60 00 	cmp  %g1, 0
   1b260:	32 80 00 13 	bne,a   1b2ac <finish_pass_gather+0x100>
   1b264:	a6 04 e0 01 	inc  %l3
   1b268:	a0 00 80 18 	add  %g2, %i0, %l0
   1b26c:	c2 04 20 60 	ld  [ %l0 + 0x60 ], %g1
   1b270:	80 a0 60 00 	cmp  %g1, 0
   1b274:	12 80 00 05 	bne  1b288 <finish_pass_gather+0xdc>
   1b278:	a2 04 20 60 	add  %l0, 0x60, %l1
   1b27c:	40 00 0a c6 	call  1dd94 <jpeg_alloc_huff_table>
   1b280:	90 10 00 18 	mov  %i0, %o0
   1b284:	d0 24 20 60 	st  %o0, [ %l0 + 0x60 ]
   1b288:	a1 2d 20 02 	sll  %l4, 2, %l0
   1b28c:	82 04 00 16 	add  %l0, %l6, %g1
   1b290:	90 10 00 18 	mov  %i0, %o0
   1b294:	d2 04 40 00 	ld  [ %l1 ], %o1
   1b298:	7f ff fe ce 	call  1add0 <jpeg_gen_optimal_table>
   1b29c:	d4 00 60 5c 	ld  [ %g1 + 0x5c ], %o2
   1b2a0:	a0 04 00 15 	add  %l0, %l5, %l0
   1b2a4:	ee 24 3f e0 	st  %l7, [ %l0 + -32 ]
   1b2a8:	a6 04 e0 01 	inc  %l3
   1b2ac:	c2 06 20 ec 	ld  [ %i0 + 0xec ], %g1
   1b2b0:	80 a0 40 13 	cmp  %g1, %l3
   1b2b4:	14 bf ff cd 	bg  1b1e8 <finish_pass_gather+0x3c>
   1b2b8:	83 2c e0 02 	sll  %l3, 2, %g1
   1b2bc:	81 c7 e0 08 	ret 
   1b2c0:	81 e8 00 00 	restore 

0001b2c4 <jinit_huff_encoder>:
   1b2c4:	9d e3 bf 98 	save  %sp, -104, %sp
   1b2c8:	c2 06 20 04 	ld  [ %i0 + 4 ], %g1
   1b2cc:	c2 00 40 00 	ld  [ %g1 ], %g1
   1b2d0:	90 10 00 18 	mov  %i0, %o0
   1b2d4:	92 10 20 01 	mov  1, %o1
   1b2d8:	9f c0 40 00 	call  %g1
   1b2dc:	94 10 20 6c 	mov  0x6c, %o2
   1b2e0:	d0 26 21 64 	st  %o0, [ %i0 + 0x164 ]
   1b2e4:	03 00 00 67 	sethi  %hi(0x19c00), %g1
   1b2e8:	82 10 60 48 	or  %g1, 0x48, %g1	! 19c48 <start_pass_huff>
   1b2ec:	c2 22 00 00 	st  %g1, [ %o0 ]
   1b2f0:	84 10 20 00 	clr  %g2
   1b2f4:	83 28 a0 02 	sll  %g2, 2, %g1
   1b2f8:	82 00 40 08 	add  %g1, %o0, %g1
   1b2fc:	c0 20 60 3c 	clr  [ %g1 + 0x3c ]
   1b300:	c0 20 60 2c 	clr  [ %g1 + 0x2c ]
   1b304:	c0 20 60 5c 	clr  [ %g1 + 0x5c ]
   1b308:	84 00 a0 01 	inc  %g2
   1b30c:	80 a0 a0 03 	cmp  %g2, 3
   1b310:	04 bf ff f9 	ble  1b2f4 <jinit_huff_encoder+0x30>
   1b314:	c0 20 60 4c 	clr  [ %g1 + 0x4c ]
   1b318:	81 c7 e0 08 	ret 
   1b31c:	81 e8 00 00 	restore 

0001b320 <start_pass_phuff>:
   1b320:	9d e3 bf 98 	save  %sp, -104, %sp
   1b324:	e2 06 21 64 	ld  [ %i0 + 0x164 ], %l1
   1b328:	f0 24 60 20 	st  %i0, [ %l1 + 0x20 ]
   1b32c:	f2 24 60 0c 	st  %i1, [ %l1 + 0xc ]
   1b330:	c2 06 21 34 	ld  [ %i0 + 0x134 ], %g1
   1b334:	80 a0 00 01 	cmp  %g0, %g1
   1b338:	a8 60 3f ff 	subx  %g0, -1, %l4
   1b33c:	c2 06 21 3c 	ld  [ %i0 + 0x13c ], %g1
   1b340:	80 a0 60 00 	cmp  %g1, 0
   1b344:	12 80 00 0b 	bne  1b370 <start_pass_phuff+0x50>
   1b348:	80 a5 20 00 	cmp  %l4, 0
   1b34c:	02 80 00 06 	be  1b364 <start_pass_phuff+0x44>
   1b350:	03 00 00 6f 	sethi  %hi(0x1bc00), %g1
   1b354:	03 00 00 6e 	sethi  %hi(0x1b800), %g1
   1b358:	82 10 63 10 	or  %g1, 0x310, %g1	! 1bb10 <encode_mcu_DC_first>
   1b35c:	10 80 00 18 	b  1b3bc <start_pass_phuff+0x9c>
   1b360:	c2 24 60 04 	st  %g1, [ %l1 + 4 ]
   1b364:	82 10 62 60 	or  %g1, 0x260, %g1
   1b368:	10 80 00 15 	b  1b3bc <start_pass_phuff+0x9c>
   1b36c:	c2 24 60 04 	st  %g1, [ %l1 + 4 ]
   1b370:	02 80 00 06 	be  1b388 <start_pass_phuff+0x68>
   1b374:	03 00 00 71 	sethi  %hi(0x1c400), %g1
   1b378:	03 00 00 70 	sethi  %hi(0x1c000), %g1
   1b37c:	82 10 63 ac 	or  %g1, 0x3ac, %g1	! 1c3ac <encode_mcu_DC_refine>
   1b380:	10 80 00 0f 	b  1b3bc <start_pass_phuff+0x9c>
   1b384:	c2 24 60 04 	st  %g1, [ %l1 + 4 ]
   1b388:	82 10 61 4c 	or  %g1, 0x14c, %g1
   1b38c:	c2 24 60 04 	st  %g1, [ %l1 + 4 ]
   1b390:	c2 04 60 40 	ld  [ %l1 + 0x40 ], %g1
   1b394:	80 a0 60 00 	cmp  %g1, 0
   1b398:	12 80 00 0a 	bne  1b3c0 <start_pass_phuff+0xa0>
   1b39c:	80 a6 60 00 	cmp  %i1, 0
   1b3a0:	c2 06 20 04 	ld  [ %i0 + 4 ], %g1
   1b3a4:	c2 00 40 00 	ld  [ %g1 ], %g1
   1b3a8:	90 10 00 18 	mov  %i0, %o0
   1b3ac:	92 10 20 01 	mov  1, %o1
   1b3b0:	9f c0 40 00 	call  %g1
   1b3b4:	94 10 23 e8 	mov  0x3e8, %o2
   1b3b8:	d0 24 60 40 	st  %o0, [ %l1 + 0x40 ]
   1b3bc:	80 a6 60 00 	cmp  %i1, 0
   1b3c0:	02 80 00 06 	be  1b3d8 <start_pass_phuff+0xb8>
   1b3c4:	03 00 00 72 	sethi  %hi(0x1c800), %g1
   1b3c8:	03 00 00 72 	sethi  %hi(0x1c800), %g1
   1b3cc:	82 10 63 58 	or  %g1, 0x358, %g1	! 1cb58 <finish_pass_gather_phuff>
   1b3d0:	10 80 00 04 	b  1b3e0 <start_pass_phuff+0xc0>
   1b3d4:	c2 24 60 08 	st  %g1, [ %l1 + 8 ]
   1b3d8:	82 10 63 08 	or  %g1, 0x308, %g1
   1b3dc:	c2 24 60 08 	st  %g1, [ %l1 + 8 ]
   1b3e0:	c2 06 20 ec 	ld  [ %i0 + 0xec ], %g1
   1b3e4:	80 a0 60 00 	cmp  %g1, 0
   1b3e8:	04 80 00 67 	ble  1b584 <start_pass_phuff+0x264>
   1b3ec:	a6 10 20 00 	clr  %l3
   1b3f0:	80 a0 00 19 	cmp  %g0, %i1
   1b3f4:	aa 60 3f ff 	subx  %g0, -1, %l5
   1b3f8:	83 2c e0 02 	sll  %l3, 2, %g1
   1b3fc:	84 00 40 18 	add  %g1, %i0, %g2
   1b400:	d4 00 a0 f0 	ld  [ %g2 + 0xf0 ], %o2
   1b404:	82 00 40 11 	add  %g1, %l1, %g1
   1b408:	80 a5 20 00 	cmp  %l4, 0
   1b40c:	02 80 00 1c 	be  1b47c <start_pass_phuff+0x15c>
   1b410:	c0 20 60 24 	clr  [ %g1 + 0x24 ]
   1b414:	c2 06 21 3c 	ld  [ %i0 + 0x13c ], %g1
   1b418:	80 a0 60 00 	cmp  %g1, 0
   1b41c:	32 80 00 56 	bne,a   1b574 <start_pass_phuff+0x254>
   1b420:	a6 04 e0 01 	inc  %l3
   1b424:	e0 02 a0 14 	ld  [ %o2 + 0x14 ], %l0
   1b428:	80 a4 20 03 	cmp  %l0, 3
   1b42c:	18 80 00 09 	bgu  1b450 <start_pass_phuff+0x130>
   1b430:	83 2c 20 02 	sll  %l0, 2, %g1
   1b434:	82 00 40 18 	add  %g1, %i0, %g1
   1b438:	c2 00 60 50 	ld  [ %g1 + 0x50 ], %g1
   1b43c:	80 a0 00 01 	cmp  %g0, %g1
   1b440:	82 60 3f ff 	subx  %g0, -1, %g1
   1b444:	80 88 40 15 	btst  %g1, %l5
   1b448:	22 80 00 23 	be,a   1b4d4 <start_pass_phuff+0x1b4>
   1b44c:	80 a6 60 00 	cmp  %i1, 0
   1b450:	c4 06 00 00 	ld  [ %i0 ], %g2
   1b454:	82 10 20 31 	mov  0x31, %g1
   1b458:	c2 20 a0 14 	st  %g1, [ %g2 + 0x14 ]
   1b45c:	c2 06 00 00 	ld  [ %i0 ], %g1
   1b460:	e0 20 60 18 	st  %l0, [ %g1 + 0x18 ]
   1b464:	c2 06 00 00 	ld  [ %i0 ], %g1
   1b468:	c2 00 40 00 	ld  [ %g1 ], %g1
   1b46c:	9f c0 40 00 	call  %g1
   1b470:	90 10 00 18 	mov  %i0, %o0
   1b474:	10 80 00 18 	b  1b4d4 <start_pass_phuff+0x1b4>
   1b478:	80 a6 60 00 	cmp  %i1, 0
   1b47c:	e0 02 a0 18 	ld  [ %o2 + 0x18 ], %l0
   1b480:	80 a4 20 03 	cmp  %l0, 3
   1b484:	18 80 00 0a 	bgu  1b4ac <start_pass_phuff+0x18c>
   1b488:	e0 24 60 34 	st  %l0, [ %l1 + 0x34 ]
   1b48c:	83 2c 20 02 	sll  %l0, 2, %g1
   1b490:	82 00 40 18 	add  %g1, %i0, %g1
   1b494:	c2 00 60 60 	ld  [ %g1 + 0x60 ], %g1
   1b498:	80 a0 00 01 	cmp  %g0, %g1
   1b49c:	82 60 3f ff 	subx  %g0, -1, %g1
   1b4a0:	80 88 40 15 	btst  %g1, %l5
   1b4a4:	02 80 00 0c 	be  1b4d4 <start_pass_phuff+0x1b4>
   1b4a8:	80 a6 60 00 	cmp  %i1, 0
   1b4ac:	c4 06 00 00 	ld  [ %i0 ], %g2
   1b4b0:	82 10 20 31 	mov  0x31, %g1
   1b4b4:	c2 20 a0 14 	st  %g1, [ %g2 + 0x14 ]
   1b4b8:	c2 06 00 00 	ld  [ %i0 ], %g1
   1b4bc:	e0 20 60 18 	st  %l0, [ %g1 + 0x18 ]
   1b4c0:	c2 06 00 00 	ld  [ %i0 ], %g1
   1b4c4:	c2 00 40 00 	ld  [ %g1 ], %g1
   1b4c8:	9f c0 40 00 	call  %g1
   1b4cc:	90 10 00 18 	mov  %i0, %o0
   1b4d0:	80 a6 60 00 	cmp  %i1, 0
   1b4d4:	02 80 00 17 	be  1b530 <start_pass_phuff+0x210>
   1b4d8:	80 a5 20 00 	cmp  %l4, 0
   1b4dc:	83 2c 20 02 	sll  %l0, 2, %g1
   1b4e0:	a4 00 40 11 	add  %g1, %l1, %l2
   1b4e4:	c2 04 a0 5c 	ld  [ %l2 + 0x5c ], %g1
   1b4e8:	80 a0 60 00 	cmp  %g1, 0
   1b4ec:	12 80 00 0a 	bne  1b514 <start_pass_phuff+0x1f4>
   1b4f0:	83 2c 20 02 	sll  %l0, 2, %g1
   1b4f4:	c2 06 20 04 	ld  [ %i0 + 4 ], %g1
   1b4f8:	c2 00 40 00 	ld  [ %g1 ], %g1
   1b4fc:	90 10 00 18 	mov  %i0, %o0
   1b500:	92 10 20 01 	mov  1, %o1
   1b504:	9f c0 40 00 	call  %g1
   1b508:	94 10 24 04 	mov  0x404, %o2
   1b50c:	d0 24 a0 5c 	st  %o0, [ %l2 + 0x5c ]
   1b510:	83 2c 20 02 	sll  %l0, 2, %g1
   1b514:	82 00 40 11 	add  %g1, %l1, %g1
   1b518:	d0 00 60 5c 	ld  [ %g1 + 0x5c ], %o0
   1b51c:	92 10 20 00 	clr  %o1
   1b520:	40 00 60 9d 	call  33794 <memset@plt>
   1b524:	94 10 24 04 	mov  0x404, %o2
   1b528:	10 80 00 13 	b  1b574 <start_pass_phuff+0x254>
   1b52c:	a6 04 e0 01 	inc  %l3
   1b530:	02 80 00 0a 	be  1b558 <start_pass_phuff+0x238>
   1b534:	95 2c 20 02 	sll  %l0, 2, %o2
   1b538:	82 02 80 18 	add  %o2, %i0, %g1
   1b53c:	94 02 80 11 	add  %o2, %l1, %o2
   1b540:	90 10 00 18 	mov  %i0, %o0
   1b544:	d2 00 60 50 	ld  [ %g1 + 0x50 ], %o1
   1b548:	7f ff fa 4b 	call  19e74 <jpeg_make_c_derived_tbl>
   1b54c:	94 02 a0 4c 	add  %o2, 0x4c, %o2
   1b550:	10 80 00 09 	b  1b574 <start_pass_phuff+0x254>
   1b554:	a6 04 e0 01 	inc  %l3
   1b558:	82 02 80 18 	add  %o2, %i0, %g1
   1b55c:	94 02 80 11 	add  %o2, %l1, %o2
   1b560:	90 10 00 18 	mov  %i0, %o0
   1b564:	d2 00 60 60 	ld  [ %g1 + 0x60 ], %o1
   1b568:	7f ff fa 43 	call  19e74 <jpeg_make_c_derived_tbl>
   1b56c:	94 02 a0 4c 	add  %o2, 0x4c, %o2
   1b570:	a6 04 e0 01 	inc  %l3
   1b574:	c2 06 20 ec 	ld  [ %i0 + 0xec ], %g1
   1b578:	80 a0 40 13 	cmp  %g1, %l3
   1b57c:	14 bf ff a0 	bg  1b3fc <start_pass_phuff+0xdc>
   1b580:	83 2c e0 02 	sll  %l3, 2, %g1
   1b584:	c0 24 60 38 	clr  [ %l1 + 0x38 ]
   1b588:	c0 24 60 3c 	clr  [ %l1 + 0x3c ]
   1b58c:	c0 24 60 18 	clr  [ %l1 + 0x18 ]
   1b590:	c0 24 60 1c 	clr  [ %l1 + 0x1c ]
   1b594:	c2 06 20 c0 	ld  [ %i0 + 0xc0 ], %g1
   1b598:	c2 24 60 44 	st  %g1, [ %l1 + 0x44 ]
   1b59c:	c0 24 60 48 	clr  [ %l1 + 0x48 ]
   1b5a0:	81 c7 e0 08 	ret 
   1b5a4:	81 e8 00 00 	restore 

0001b5a8 <dump_buffer>:
   1b5a8:	9d e3 bf 98 	save  %sp, -104, %sp
   1b5ac:	d0 06 20 20 	ld  [ %i0 + 0x20 ], %o0
   1b5b0:	e0 02 20 14 	ld  [ %o0 + 0x14 ], %l0
   1b5b4:	c2 04 20 0c 	ld  [ %l0 + 0xc ], %g1
   1b5b8:	9f c0 40 00 	call  %g1
   1b5bc:	01 00 00 00 	nop 
   1b5c0:	80 a2 20 00 	cmp  %o0, 0
   1b5c4:	32 80 00 0c 	bne,a   1b5f4 <dump_buffer+0x4c>
   1b5c8:	c2 04 00 00 	ld  [ %l0 ], %g1
   1b5cc:	c2 06 20 20 	ld  [ %i0 + 0x20 ], %g1
   1b5d0:	c4 00 40 00 	ld  [ %g1 ], %g2
   1b5d4:	82 10 20 16 	mov  0x16, %g1
   1b5d8:	c2 20 a0 14 	st  %g1, [ %g2 + 0x14 ]
   1b5dc:	d0 06 20 20 	ld  [ %i0 + 0x20 ], %o0
   1b5e0:	c2 02 00 00 	ld  [ %o0 ], %g1
   1b5e4:	c2 00 40 00 	ld  [ %g1 ], %g1
   1b5e8:	9f c0 40 00 	call  %g1
   1b5ec:	01 00 00 00 	nop 
   1b5f0:	c2 04 00 00 	ld  [ %l0 ], %g1
   1b5f4:	c2 26 20 10 	st  %g1, [ %i0 + 0x10 ]
   1b5f8:	c2 04 20 04 	ld  [ %l0 + 4 ], %g1
   1b5fc:	c2 26 20 14 	st  %g1, [ %i0 + 0x14 ]
   1b600:	81 c7 e0 08 	ret 
   1b604:	81 e8 00 00 	restore 

0001b608 <flush_bits>:
   1b608:	9d e3 bf 98 	save  %sp, -104, %sp
   1b60c:	a0 10 00 18 	mov  %i0, %l0
   1b610:	a6 10 20 7f 	mov  0x7f, %l3
   1b614:	c2 06 20 0c 	ld  [ %i0 + 0xc ], %g1
   1b618:	80 a0 60 00 	cmp  %g1, 0
   1b61c:	12 80 00 2b 	bne  1b6c8 <flush_bits+0xc0>
   1b620:	e2 06 20 1c 	ld  [ %i0 + 0x1c ], %l1
   1b624:	a2 04 60 07 	add  %l1, 7, %l1
   1b628:	82 10 20 18 	mov  0x18, %g1
   1b62c:	82 20 40 11 	sub  %g1, %l1, %g1
   1b630:	a7 2c c0 01 	sll  %l3, %g1, %l3
   1b634:	c2 06 20 18 	ld  [ %i0 + 0x18 ], %g1
   1b638:	80 a4 60 07 	cmp  %l1, 7
   1b63c:	04 80 00 21 	ble  1b6c0 <flush_bits+0xb8>
   1b640:	a6 14 c0 01 	or  %l3, %g1, %l3
   1b644:	83 3c e0 10 	sra  %l3, 0x10, %g1
   1b648:	a4 08 60 ff 	and  %g1, 0xff, %l2
   1b64c:	c2 04 20 10 	ld  [ %l0 + 0x10 ], %g1
   1b650:	e4 28 40 00 	stb  %l2, [ %g1 ]
   1b654:	82 00 60 01 	inc  %g1
   1b658:	c2 24 20 10 	st  %g1, [ %l0 + 0x10 ]
   1b65c:	c2 04 20 14 	ld  [ %l0 + 0x14 ], %g1
   1b660:	82 00 7f ff 	add  %g1, -1, %g1
   1b664:	80 a0 60 00 	cmp  %g1, 0
   1b668:	12 80 00 04 	bne  1b678 <flush_bits+0x70>
   1b66c:	c2 24 20 14 	st  %g1, [ %l0 + 0x14 ]
   1b670:	7f ff ff ce 	call  1b5a8 <dump_buffer>
   1b674:	90 10 00 10 	mov  %l0, %o0
   1b678:	80 a4 a0 ff 	cmp  %l2, 0xff
   1b67c:	32 80 00 0e 	bne,a   1b6b4 <flush_bits+0xac>
   1b680:	a2 04 7f f8 	add  %l1, -8, %l1
   1b684:	c2 04 20 10 	ld  [ %l0 + 0x10 ], %g1
   1b688:	c0 28 40 00 	clrb  [ %g1 ]
   1b68c:	82 00 60 01 	inc  %g1
   1b690:	c2 24 20 10 	st  %g1, [ %l0 + 0x10 ]
   1b694:	c2 04 20 14 	ld  [ %l0 + 0x14 ], %g1
   1b698:	82 00 7f ff 	add  %g1, -1, %g1
   1b69c:	80 a0 60 00 	cmp  %g1, 0
   1b6a0:	12 80 00 04 	bne  1b6b0 <flush_bits+0xa8>
   1b6a4:	c2 24 20 14 	st  %g1, [ %l0 + 0x14 ]
   1b6a8:	7f ff ff c0 	call  1b5a8 <dump_buffer>
   1b6ac:	90 10 00 10 	mov  %l0, %o0
   1b6b0:	a2 04 7f f8 	add  %l1, -8, %l1
   1b6b4:	80 a4 60 07 	cmp  %l1, 7
   1b6b8:	14 bf ff e3 	bg  1b644 <flush_bits+0x3c>
   1b6bc:	a7 2c e0 08 	sll  %l3, 8, %l3
   1b6c0:	e6 24 20 18 	st  %l3, [ %l0 + 0x18 ]
   1b6c4:	e2 24 20 1c 	st  %l1, [ %l0 + 0x1c ]
   1b6c8:	c0 26 20 18 	clr  [ %i0 + 0x18 ]
   1b6cc:	c0 26 20 1c 	clr  [ %i0 + 0x1c ]
   1b6d0:	81 c7 e0 08 	ret 
   1b6d4:	81 e8 00 00 	restore 

0001b6d8 <emit_buffered_bits>:
   1b6d8:	9d e3 bf 98 	save  %sp, -104, %sp
   1b6dc:	c2 06 20 0c 	ld  [ %i0 + 0xc ], %g1
   1b6e0:	80 a0 60 00 	cmp  %g1, 0
   1b6e4:	12 80 00 36 	bne  1b7bc <emit_buffered_bits+0xe4>
   1b6e8:	80 a6 a0 00 	cmp  %i2, 0
   1b6ec:	02 80 00 34 	be  1b7bc <emit_buffered_bits+0xe4>
   1b6f0:	01 00 00 00 	nop 
   1b6f4:	e0 4e 40 00 	ldsb  [ %i1 ], %l0
   1b6f8:	c2 06 20 0c 	ld  [ %i0 + 0xc ], %g1
   1b6fc:	80 a0 60 00 	cmp  %g1, 0
   1b700:	12 80 00 2c 	bne  1b7b0 <emit_buffered_bits+0xd8>
   1b704:	e2 06 20 1c 	ld  [ %i0 + 0x1c ], %l1
   1b708:	a0 0c 20 01 	and  %l0, 1, %l0
   1b70c:	a2 04 60 01 	inc  %l1
   1b710:	82 10 20 18 	mov  0x18, %g1
   1b714:	82 20 40 11 	sub  %g1, %l1, %g1
   1b718:	a1 2c 00 01 	sll  %l0, %g1, %l0
   1b71c:	c2 06 20 18 	ld  [ %i0 + 0x18 ], %g1
   1b720:	80 a4 60 07 	cmp  %l1, 7
   1b724:	04 80 00 21 	ble  1b7a8 <emit_buffered_bits+0xd0>
   1b728:	a0 14 00 01 	or  %l0, %g1, %l0
   1b72c:	83 3c 20 10 	sra  %l0, 0x10, %g1
   1b730:	a4 08 60 ff 	and  %g1, 0xff, %l2
   1b734:	c2 06 20 10 	ld  [ %i0 + 0x10 ], %g1
   1b738:	e4 28 40 00 	stb  %l2, [ %g1 ]
   1b73c:	82 00 60 01 	inc  %g1
   1b740:	c2 26 20 10 	st  %g1, [ %i0 + 0x10 ]
   1b744:	c2 06 20 14 	ld  [ %i0 + 0x14 ], %g1
   1b748:	82 00 7f ff 	add  %g1, -1, %g1
   1b74c:	80 a0 60 00 	cmp  %g1, 0
   1b750:	12 80 00 04 	bne  1b760 <emit_buffered_bits+0x88>
   1b754:	c2 26 20 14 	st  %g1, [ %i0 + 0x14 ]
   1b758:	7f ff ff 94 	call  1b5a8 <dump_buffer>
   1b75c:	90 10 00 18 	mov  %i0, %o0
   1b760:	80 a4 a0 ff 	cmp  %l2, 0xff
   1b764:	32 80 00 0e 	bne,a   1b79c <emit_buffered_bits+0xc4>
   1b768:	a2 04 7f f8 	add  %l1, -8, %l1
   1b76c:	c2 06 20 10 	ld  [ %i0 + 0x10 ], %g1
   1b770:	c0 28 40 00 	clrb  [ %g1 ]
   1b774:	82 00 60 01 	inc  %g1
   1b778:	c2 26 20 10 	st  %g1, [ %i0 + 0x10 ]
   1b77c:	c2 06 20 14 	ld  [ %i0 + 0x14 ], %g1
   1b780:	82 00 7f ff 	add  %g1, -1, %g1
   1b784:	80 a0 60 00 	cmp  %g1, 0
   1b788:	12 80 00 04 	bne  1b798 <emit_buffered_bits+0xc0>
   1b78c:	c2 26 20 14 	st  %g1, [ %i0 + 0x14 ]
   1b790:	7f ff ff 86 	call  1b5a8 <dump_buffer>
   1b794:	90 10 00 18 	mov  %i0, %o0
   1b798:	a2 04 7f f8 	add  %l1, -8, %l1
   1b79c:	80 a4 60 07 	cmp  %l1, 7
   1b7a0:	14 bf ff e3 	bg  1b72c <emit_buffered_bits+0x54>
   1b7a4:	a1 2c 20 08 	sll  %l0, 8, %l0
   1b7a8:	e0 26 20 18 	st  %l0, [ %i0 + 0x18 ]
   1b7ac:	e2 26 20 1c 	st  %l1, [ %i0 + 0x1c ]
   1b7b0:	b4 86 bf ff 	addcc  %i2, -1, %i2
   1b7b4:	12 bf ff d0 	bne  1b6f4 <emit_buffered_bits+0x1c>
   1b7b8:	b2 06 60 01 	inc  %i1
   1b7bc:	81 c7 e0 08 	ret 
   1b7c0:	81 e8 00 00 	restore 

0001b7c4 <emit_eobrun>:
   1b7c4:	9d e3 bf 98 	save  %sp, -104, %sp
   1b7c8:	c2 06 20 38 	ld  [ %i0 + 0x38 ], %g1
   1b7cc:	80 a0 60 00 	cmp  %g1, 0
   1b7d0:	02 80 00 97 	be  1ba2c <emit_eobrun+0x268>
   1b7d4:	83 38 60 01 	sra  %g1, 1, %g1
   1b7d8:	80 a0 60 00 	cmp  %g1, 0
   1b7dc:	02 80 00 06 	be  1b7f4 <emit_eobrun+0x30>
   1b7e0:	a8 10 20 00 	clr  %l4
   1b7e4:	83 38 60 01 	sra  %g1, 1, %g1
   1b7e8:	80 a0 60 00 	cmp  %g1, 0
   1b7ec:	12 bf ff fe 	bne  1b7e4 <emit_eobrun+0x20>
   1b7f0:	a8 05 20 01 	inc  %l4
   1b7f4:	c4 06 20 34 	ld  [ %i0 + 0x34 ], %g2
   1b7f8:	c2 06 20 0c 	ld  [ %i0 + 0xc ], %g1
   1b7fc:	80 a0 60 00 	cmp  %g1, 0
   1b800:	02 80 00 0a 	be  1b828 <emit_eobrun+0x64>
   1b804:	89 2d 20 04 	sll  %l4, 4, %g4
   1b808:	83 28 a0 02 	sll  %g2, 2, %g1
   1b80c:	82 00 40 18 	add  %g1, %i0, %g1
   1b810:	c6 00 60 5c 	ld  [ %g1 + 0x5c ], %g3
   1b814:	85 2d 20 06 	sll  %l4, 6, %g2
   1b818:	c2 00 c0 02 	ld  [ %g3 + %g2 ], %g1
   1b81c:	82 00 60 01 	inc  %g1
   1b820:	10 80 00 47 	b  1b93c <emit_eobrun+0x178>
   1b824:	c2 20 c0 02 	st  %g1, [ %g3 + %g2 ]
   1b828:	83 28 a0 02 	sll  %g2, 2, %g1
   1b82c:	82 00 40 18 	add  %g1, %i0, %g1
   1b830:	c6 00 60 4c 	ld  [ %g1 + 0x4c ], %g3
   1b834:	a0 10 00 18 	mov  %i0, %l0
   1b838:	85 29 20 02 	sll  %g4, 2, %g2
   1b83c:	82 01 00 03 	add  %g4, %g3, %g1
   1b840:	e2 48 64 00 	ldsb  [ %g1 + 0x400 ], %l1
   1b844:	e4 00 c0 02 	ld  [ %g3 + %g2 ], %l2
   1b848:	80 a4 60 00 	cmp  %l1, 0
   1b84c:	12 80 00 0b 	bne  1b878 <emit_eobrun+0xb4>
   1b850:	e6 06 20 1c 	ld  [ %i0 + 0x1c ], %l3
   1b854:	c2 06 20 20 	ld  [ %i0 + 0x20 ], %g1
   1b858:	c4 00 40 00 	ld  [ %g1 ], %g2
   1b85c:	82 10 20 27 	mov  0x27, %g1
   1b860:	c2 20 a0 14 	st  %g1, [ %g2 + 0x14 ]
   1b864:	d0 06 20 20 	ld  [ %i0 + 0x20 ], %o0
   1b868:	c2 02 00 00 	ld  [ %o0 ], %g1
   1b86c:	c2 00 40 00 	ld  [ %g1 ], %g1
   1b870:	9f c0 40 00 	call  %g1
   1b874:	01 00 00 00 	nop 
   1b878:	c2 04 20 0c 	ld  [ %l0 + 0xc ], %g1
   1b87c:	80 a0 60 00 	cmp  %g1, 0
   1b880:	12 80 00 30 	bne  1b940 <emit_eobrun+0x17c>
   1b884:	80 a5 20 00 	cmp  %l4, 0
   1b888:	82 10 20 01 	mov  1, %g1
   1b88c:	83 28 40 11 	sll  %g1, %l1, %g1
   1b890:	82 00 7f ff 	add  %g1, -1, %g1
   1b894:	a4 0c 80 01 	and  %l2, %g1, %l2
   1b898:	a6 04 c0 11 	add  %l3, %l1, %l3
   1b89c:	82 10 20 18 	mov  0x18, %g1
   1b8a0:	82 20 40 13 	sub  %g1, %l3, %g1
   1b8a4:	a5 2c 80 01 	sll  %l2, %g1, %l2
   1b8a8:	c2 04 20 18 	ld  [ %l0 + 0x18 ], %g1
   1b8ac:	80 a4 e0 07 	cmp  %l3, 7
   1b8b0:	04 80 00 21 	ble  1b934 <emit_eobrun+0x170>
   1b8b4:	a4 14 80 01 	or  %l2, %g1, %l2
   1b8b8:	83 3c a0 10 	sra  %l2, 0x10, %g1
   1b8bc:	a2 08 60 ff 	and  %g1, 0xff, %l1
   1b8c0:	c2 04 20 10 	ld  [ %l0 + 0x10 ], %g1
   1b8c4:	e2 28 40 00 	stb  %l1, [ %g1 ]
   1b8c8:	82 00 60 01 	inc  %g1
   1b8cc:	c2 24 20 10 	st  %g1, [ %l0 + 0x10 ]
   1b8d0:	c2 04 20 14 	ld  [ %l0 + 0x14 ], %g1
   1b8d4:	82 00 7f ff 	add  %g1, -1, %g1
   1b8d8:	80 a0 60 00 	cmp  %g1, 0
   1b8dc:	12 80 00 04 	bne  1b8ec <emit_eobrun+0x128>
   1b8e0:	c2 24 20 14 	st  %g1, [ %l0 + 0x14 ]
   1b8e4:	7f ff ff 31 	call  1b5a8 <dump_buffer>
   1b8e8:	90 10 00 10 	mov  %l0, %o0
   1b8ec:	80 a4 60 ff 	cmp  %l1, 0xff
   1b8f0:	32 80 00 0e 	bne,a   1b928 <emit_eobrun+0x164>
   1b8f4:	a6 04 ff f8 	add  %l3, -8, %l3
   1b8f8:	c2 04 20 10 	ld  [ %l0 + 0x10 ], %g1
   1b8fc:	c0 28 40 00 	clrb  [ %g1 ]
   1b900:	82 00 60 01 	inc  %g1
   1b904:	c2 24 20 10 	st  %g1, [ %l0 + 0x10 ]
   1b908:	c2 04 20 14 	ld  [ %l0 + 0x14 ], %g1
   1b90c:	82 00 7f ff 	add  %g1, -1, %g1
   1b910:	80 a0 60 00 	cmp  %g1, 0
   1b914:	12 80 00 04 	bne  1b924 <emit_eobrun+0x160>
   1b918:	c2 24 20 14 	st  %g1, [ %l0 + 0x14 ]
   1b91c:	7f ff ff 23 	call  1b5a8 <dump_buffer>
   1b920:	90 10 00 10 	mov  %l0, %o0
   1b924:	a6 04 ff f8 	add  %l3, -8, %l3
   1b928:	80 a4 e0 07 	cmp  %l3, 7
   1b92c:	14 bf ff e3 	bg  1b8b8 <emit_eobrun+0xf4>
   1b930:	a5 2c a0 08 	sll  %l2, 8, %l2
   1b934:	e4 24 20 18 	st  %l2, [ %l0 + 0x18 ]
   1b938:	e6 24 20 1c 	st  %l3, [ %l0 + 0x1c ]
   1b93c:	80 a5 20 00 	cmp  %l4, 0
   1b940:	22 80 00 36 	be,a   1ba18 <emit_eobrun+0x254>
   1b944:	c0 26 20 38 	clr  [ %i0 + 0x38 ]
   1b948:	a0 10 00 18 	mov  %i0, %l0
   1b94c:	e2 06 20 38 	ld  [ %i0 + 0x38 ], %l1
   1b950:	c2 06 20 0c 	ld  [ %i0 + 0xc ], %g1
   1b954:	80 a0 60 00 	cmp  %g1, 0
   1b958:	12 80 00 2f 	bne  1ba14 <emit_eobrun+0x250>
   1b95c:	e4 06 20 1c 	ld  [ %i0 + 0x1c ], %l2
   1b960:	82 10 20 01 	mov  1, %g1
   1b964:	83 28 40 14 	sll  %g1, %l4, %g1
   1b968:	82 00 7f ff 	add  %g1, -1, %g1
   1b96c:	a2 0c 40 01 	and  %l1, %g1, %l1
   1b970:	a4 04 80 14 	add  %l2, %l4, %l2
   1b974:	82 10 20 18 	mov  0x18, %g1
   1b978:	82 20 40 12 	sub  %g1, %l2, %g1
   1b97c:	a3 2c 40 01 	sll  %l1, %g1, %l1
   1b980:	c2 06 20 18 	ld  [ %i0 + 0x18 ], %g1
   1b984:	80 a4 a0 07 	cmp  %l2, 7
   1b988:	04 80 00 21 	ble  1ba0c <emit_eobrun+0x248>
   1b98c:	a2 14 40 01 	or  %l1, %g1, %l1
   1b990:	83 3c 60 10 	sra  %l1, 0x10, %g1
   1b994:	a6 08 60 ff 	and  %g1, 0xff, %l3
   1b998:	c2 04 20 10 	ld  [ %l0 + 0x10 ], %g1
   1b99c:	e6 28 40 00 	stb  %l3, [ %g1 ]
   1b9a0:	82 00 60 01 	inc  %g1
   1b9a4:	c2 24 20 10 	st  %g1, [ %l0 + 0x10 ]
   1b9a8:	c2 04 20 14 	ld  [ %l0 + 0x14 ], %g1
   1b9ac:	82 00 7f ff 	add  %g1, -1, %g1
   1b9b0:	80 a0 60 00 	cmp  %g1, 0
   1b9b4:	12 80 00 04 	bne  1b9c4 <emit_eobrun+0x200>
   1b9b8:	c2 24 20 14 	st  %g1, [ %l0 + 0x14 ]
   1b9bc:	7f ff fe fb 	call  1b5a8 <dump_buffer>
   1b9c0:	90 10 00 10 	mov  %l0, %o0
   1b9c4:	80 a4 e0 ff 	cmp  %l3, 0xff
   1b9c8:	32 80 00 0e 	bne,a   1ba00 <emit_eobrun+0x23c>
   1b9cc:	a4 04 bf f8 	add  %l2, -8, %l2
   1b9d0:	c2 04 20 10 	ld  [ %l0 + 0x10 ], %g1
   1b9d4:	c0 28 40 00 	clrb  [ %g1 ]
   1b9d8:	82 00 60 01 	inc  %g1
   1b9dc:	c2 24 20 10 	st  %g1, [ %l0 + 0x10 ]
   1b9e0:	c2 04 20 14 	ld  [ %l0 + 0x14 ], %g1
   1b9e4:	82 00 7f ff 	add  %g1, -1, %g1
   1b9e8:	80 a0 60 00 	cmp  %g1, 0
   1b9ec:	12 80 00 04 	bne  1b9fc <emit_eobrun+0x238>
   1b9f0:	c2 24 20 14 	st  %g1, [ %l0 + 0x14 ]
   1b9f4:	7f ff fe ed 	call  1b5a8 <dump_buffer>
   1b9f8:	90 10 00 10 	mov  %l0, %o0
   1b9fc:	a4 04 bf f8 	add  %l2, -8, %l2
   1ba00:	80 a4 a0 07 	cmp  %l2, 7
   1ba04:	14 bf ff e3 	bg  1b990 <emit_eobrun+0x1cc>
   1ba08:	a3 2c 60 08 	sll  %l1, 8, %l1
   1ba0c:	e2 24 20 18 	st  %l1, [ %l0 + 0x18 ]
   1ba10:	e4 24 20 1c 	st  %l2, [ %l0 + 0x1c ]
   1ba14:	c0 26 20 38 	clr  [ %i0 + 0x38 ]
   1ba18:	90 10 00 18 	mov  %i0, %o0
   1ba1c:	d2 06 20 40 	ld  [ %i0 + 0x40 ], %o1
   1ba20:	7f ff ff 2e 	call  1b6d8 <emit_buffered_bits>
   1ba24:	d4 06 20 3c 	ld  [ %i0 + 0x3c ], %o2
   1ba28:	c0 26 20 3c 	clr  [ %i0 + 0x3c ]
   1ba2c:	81 c7 e0 08 	ret 
   1ba30:	81 e8 00 00 	restore 

0001ba34 <emit_restart>:
   1ba34:	9d e3 bf 98 	save  %sp, -104, %sp
   1ba38:	7f ff ff 63 	call  1b7c4 <emit_eobrun>
   1ba3c:	90 10 00 18 	mov  %i0, %o0
   1ba40:	c2 06 20 0c 	ld  [ %i0 + 0xc ], %g1
   1ba44:	80 a0 60 00 	cmp  %g1, 0
   1ba48:	32 80 00 1d 	bne,a   1babc <emit_restart+0x88>
   1ba4c:	c6 06 20 20 	ld  [ %i0 + 0x20 ], %g3
   1ba50:	7f ff fe ee 	call  1b608 <flush_bits>
   1ba54:	90 10 00 18 	mov  %i0, %o0
   1ba58:	c2 06 20 10 	ld  [ %i0 + 0x10 ], %g1
   1ba5c:	84 10 3f ff 	mov  -1, %g2
   1ba60:	c4 28 40 00 	stb  %g2, [ %g1 ]
   1ba64:	82 00 60 01 	inc  %g1
   1ba68:	c2 26 20 10 	st  %g1, [ %i0 + 0x10 ]
   1ba6c:	c2 06 20 14 	ld  [ %i0 + 0x14 ], %g1
   1ba70:	82 00 7f ff 	add  %g1, -1, %g1
   1ba74:	80 a0 60 00 	cmp  %g1, 0
   1ba78:	12 80 00 04 	bne  1ba88 <emit_restart+0x54>
   1ba7c:	c2 26 20 14 	st  %g1, [ %i0 + 0x14 ]
   1ba80:	7f ff fe ca 	call  1b5a8 <dump_buffer>
   1ba84:	90 10 00 18 	mov  %i0, %o0
   1ba88:	c2 06 20 10 	ld  [ %i0 + 0x10 ], %g1
   1ba8c:	84 06 7f d0 	add  %i1, -48, %g2
   1ba90:	c4 28 40 00 	stb  %g2, [ %g1 ]
   1ba94:	82 00 60 01 	inc  %g1
   1ba98:	c2 26 20 10 	st  %g1, [ %i0 + 0x10 ]
   1ba9c:	c2 06 20 14 	ld  [ %i0 + 0x14 ], %g1
   1baa0:	82 00 7f ff 	add  %g1, -1, %g1
   1baa4:	80 a0 60 00 	cmp  %g1, 0
   1baa8:	12 80 00 04 	bne  1bab8 <emit_restart+0x84>
   1baac:	c2 26 20 14 	st  %g1, [ %i0 + 0x14 ]
   1bab0:	7f ff fe be 	call  1b5a8 <dump_buffer>
   1bab4:	90 10 00 18 	mov  %i0, %o0
   1bab8:	c6 06 20 20 	ld  [ %i0 + 0x20 ], %g3
   1babc:	c2 00 e1 34 	ld  [ %g3 + 0x134 ], %g1
   1bac0:	80 a0 60 00 	cmp  %g1, 0
   1bac4:	12 80 00 0f 	bne  1bb00 <emit_restart+0xcc>
   1bac8:	88 10 00 03 	mov  %g3, %g4
   1bacc:	c2 00 e0 ec 	ld  [ %g3 + 0xec ], %g1
   1bad0:	80 a0 60 00 	cmp  %g1, 0
   1bad4:	04 80 00 0d 	ble  1bb08 <emit_restart+0xd4>
   1bad8:	84 10 20 00 	clr  %g2
   1badc:	83 28 a0 02 	sll  %g2, 2, %g1
   1bae0:	82 00 40 18 	add  %g1, %i0, %g1
   1bae4:	c0 20 60 24 	clr  [ %g1 + 0x24 ]
   1bae8:	84 00 a0 01 	inc  %g2
   1baec:	c2 01 20 ec 	ld  [ %g4 + 0xec ], %g1
   1baf0:	80 a0 40 02 	cmp  %g1, %g2
   1baf4:	14 bf ff fb 	bg  1bae0 <emit_restart+0xac>
   1baf8:	83 28 a0 02 	sll  %g2, 2, %g1
   1bafc:	30 80 00 03 	b,a   1bb08 <emit_restart+0xd4>
   1bb00:	c0 26 20 38 	clr  [ %i0 + 0x38 ]
   1bb04:	c0 26 20 3c 	clr  [ %i0 + 0x3c ]
   1bb08:	81 c7 e0 08 	ret 
   1bb0c:	81 e8 00 00 	restore 

0001bb10 <encode_mcu_DC_first>:
   1bb10:	9d e3 bf 98 	save  %sp, -104, %sp
   1bb14:	ec 06 21 64 	ld  [ %i0 + 0x164 ], %l6
   1bb18:	fa 06 21 40 	ld  [ %i0 + 0x140 ], %i5
   1bb1c:	c2 06 20 14 	ld  [ %i0 + 0x14 ], %g1
   1bb20:	c2 00 40 00 	ld  [ %g1 ], %g1
   1bb24:	c2 25 a0 10 	st  %g1, [ %l6 + 0x10 ]
   1bb28:	c2 06 20 14 	ld  [ %i0 + 0x14 ], %g1
   1bb2c:	c2 00 60 04 	ld  [ %g1 + 4 ], %g1
   1bb30:	c2 25 a0 14 	st  %g1, [ %l6 + 0x14 ]
   1bb34:	c2 06 20 c0 	ld  [ %i0 + 0xc0 ], %g1
   1bb38:	80 a0 60 00 	cmp  %g1, 0
   1bb3c:	22 80 00 0a 	be,a   1bb64 <encode_mcu_DC_first+0x54>
   1bb40:	c2 06 21 08 	ld  [ %i0 + 0x108 ], %g1
   1bb44:	c2 05 a0 44 	ld  [ %l6 + 0x44 ], %g1
   1bb48:	80 a0 60 00 	cmp  %g1, 0
   1bb4c:	32 80 00 06 	bne,a   1bb64 <encode_mcu_DC_first+0x54>
   1bb50:	c2 06 21 08 	ld  [ %i0 + 0x108 ], %g1
   1bb54:	90 10 00 16 	mov  %l6, %o0
   1bb58:	7f ff ff b7 	call  1ba34 <emit_restart>
   1bb5c:	d2 05 a0 48 	ld  [ %l6 + 0x48 ], %o1
   1bb60:	c2 06 21 08 	ld  [ %i0 + 0x108 ], %g1
   1bb64:	80 a0 60 00 	cmp  %g1, 0
   1bb68:	04 80 00 a6 	ble  1be00 <encode_mcu_DC_first+0x2f0>
   1bb6c:	ae 10 20 00 	clr  %l7
   1bb70:	83 2d e0 02 	sll  %l7, 2, %g1
   1bb74:	c6 06 40 01 	ld  [ %i1 + %g1 ], %g3
   1bb78:	82 00 40 18 	add  %g1, %i0, %g1
   1bb7c:	c2 00 61 0c 	ld  [ %g1 + 0x10c ], %g1
   1bb80:	83 28 60 02 	sll  %g1, 2, %g1
   1bb84:	84 00 40 18 	add  %g1, %i0, %g2
   1bb88:	c8 00 a0 f0 	ld  [ %g2 + 0xf0 ], %g4
   1bb8c:	c4 50 c0 00 	ldsh  [ %g3 ], %g2
   1bb90:	a9 38 80 1d 	sra  %g2, %i5, %l4
   1bb94:	82 00 40 16 	add  %g1, %l6, %g1
   1bb98:	c4 00 60 24 	ld  [ %g1 + 0x24 ], %g2
   1bb9c:	84 25 00 02 	sub  %l4, %g2, %g2
   1bba0:	e8 20 60 24 	st  %l4, [ %g1 + 0x24 ]
   1bba4:	80 a0 a0 00 	cmp  %g2, 0
   1bba8:	16 80 00 05 	bge  1bbbc <encode_mcu_DC_first+0xac>
   1bbac:	a8 10 00 02 	mov  %g2, %l4
   1bbb0:	84 20 00 02 	neg  %g2
   1bbb4:	a8 05 3f ff 	add  %l4, -1, %l4
   1bbb8:	80 a0 a0 00 	cmp  %g2, 0
   1bbbc:	02 80 00 06 	be  1bbd4 <encode_mcu_DC_first+0xc4>
   1bbc0:	aa 10 20 00 	clr  %l5
   1bbc4:	85 38 a0 01 	sra  %g2, 1, %g2
   1bbc8:	80 a0 a0 00 	cmp  %g2, 0
   1bbcc:	12 bf ff fe 	bne  1bbc4 <encode_mcu_DC_first+0xb4>
   1bbd0:	aa 05 60 01 	inc  %l5
   1bbd4:	c2 05 a0 0c 	ld  [ %l6 + 0xc ], %g1
   1bbd8:	80 a0 60 00 	cmp  %g1, 0
   1bbdc:	02 80 00 0a 	be  1bc04 <encode_mcu_DC_first+0xf4>
   1bbe0:	c4 01 20 14 	ld  [ %g4 + 0x14 ], %g2
   1bbe4:	83 28 a0 02 	sll  %g2, 2, %g1
   1bbe8:	82 00 40 16 	add  %g1, %l6, %g1
   1bbec:	c6 00 60 5c 	ld  [ %g1 + 0x5c ], %g3
   1bbf0:	85 2d 60 02 	sll  %l5, 2, %g2
   1bbf4:	c2 00 c0 02 	ld  [ %g3 + %g2 ], %g1
   1bbf8:	82 00 60 01 	inc  %g1
   1bbfc:	10 80 00 47 	b  1bd18 <encode_mcu_DC_first+0x208>
   1bc00:	c2 20 c0 02 	st  %g1, [ %g3 + %g2 ]
   1bc04:	83 28 a0 02 	sll  %g2, 2, %g1
   1bc08:	82 00 40 16 	add  %g1, %l6, %g1
   1bc0c:	c6 00 60 4c 	ld  [ %g1 + 0x4c ], %g3
   1bc10:	a0 10 00 16 	mov  %l6, %l0
   1bc14:	85 2d 60 02 	sll  %l5, 2, %g2
   1bc18:	82 05 40 03 	add  %l5, %g3, %g1
   1bc1c:	e2 48 64 00 	ldsb  [ %g1 + 0x400 ], %l1
   1bc20:	e4 00 c0 02 	ld  [ %g3 + %g2 ], %l2
   1bc24:	80 a4 60 00 	cmp  %l1, 0
   1bc28:	12 80 00 0b 	bne  1bc54 <encode_mcu_DC_first+0x144>
   1bc2c:	e6 05 a0 1c 	ld  [ %l6 + 0x1c ], %l3
   1bc30:	c2 05 a0 20 	ld  [ %l6 + 0x20 ], %g1
   1bc34:	c4 00 40 00 	ld  [ %g1 ], %g2
   1bc38:	82 10 20 27 	mov  0x27, %g1
   1bc3c:	c2 20 a0 14 	st  %g1, [ %g2 + 0x14 ]
   1bc40:	d0 05 a0 20 	ld  [ %l6 + 0x20 ], %o0
   1bc44:	c2 02 00 00 	ld  [ %o0 ], %g1
   1bc48:	c2 00 40 00 	ld  [ %g1 ], %g1
   1bc4c:	9f c0 40 00 	call  %g1
   1bc50:	01 00 00 00 	nop 
   1bc54:	c2 04 20 0c 	ld  [ %l0 + 0xc ], %g1
   1bc58:	80 a0 60 00 	cmp  %g1, 0
   1bc5c:	12 80 00 30 	bne  1bd1c <encode_mcu_DC_first+0x20c>
   1bc60:	80 a5 60 00 	cmp  %l5, 0
   1bc64:	82 10 20 01 	mov  1, %g1
   1bc68:	83 28 40 11 	sll  %g1, %l1, %g1
   1bc6c:	82 00 7f ff 	add  %g1, -1, %g1
   1bc70:	a4 0c 80 01 	and  %l2, %g1, %l2
   1bc74:	a6 04 c0 11 	add  %l3, %l1, %l3
   1bc78:	82 10 20 18 	mov  0x18, %g1
   1bc7c:	82 20 40 13 	sub  %g1, %l3, %g1
   1bc80:	a5 2c 80 01 	sll  %l2, %g1, %l2
   1bc84:	c2 04 20 18 	ld  [ %l0 + 0x18 ], %g1
   1bc88:	80 a4 e0 07 	cmp  %l3, 7
   1bc8c:	04 80 00 21 	ble  1bd10 <encode_mcu_DC_first+0x200>
   1bc90:	a4 14 80 01 	or  %l2, %g1, %l2
   1bc94:	83 3c a0 10 	sra  %l2, 0x10, %g1
   1bc98:	a2 08 60 ff 	and  %g1, 0xff, %l1
   1bc9c:	c2 04 20 10 	ld  [ %l0 + 0x10 ], %g1
   1bca0:	e2 28 40 00 	stb  %l1, [ %g1 ]
   1bca4:	82 00 60 01 	inc  %g1
   1bca8:	c2 24 20 10 	st  %g1, [ %l0 + 0x10 ]
   1bcac:	c2 04 20 14 	ld  [ %l0 + 0x14 ], %g1
   1bcb0:	82 00 7f ff 	add  %g1, -1, %g1
   1bcb4:	80 a0 60 00 	cmp  %g1, 0
   1bcb8:	12 80 00 04 	bne  1bcc8 <encode_mcu_DC_first+0x1b8>
   1bcbc:	c2 24 20 14 	st  %g1, [ %l0 + 0x14 ]
   1bcc0:	7f ff fe 3a 	call  1b5a8 <dump_buffer>
   1bcc4:	90 10 00 10 	mov  %l0, %o0
   1bcc8:	80 a4 60 ff 	cmp  %l1, 0xff
   1bccc:	32 80 00 0e 	bne,a   1bd04 <encode_mcu_DC_first+0x1f4>
   1bcd0:	a6 04 ff f8 	add  %l3, -8, %l3
   1bcd4:	c2 04 20 10 	ld  [ %l0 + 0x10 ], %g1
   1bcd8:	c0 28 40 00 	clrb  [ %g1 ]
   1bcdc:	82 00 60 01 	inc  %g1
   1bce0:	c2 24 20 10 	st  %g1, [ %l0 + 0x10 ]
   1bce4:	c2 04 20 14 	ld  [ %l0 + 0x14 ], %g1
   1bce8:	82 00 7f ff 	add  %g1, -1, %g1
   1bcec:	80 a0 60 00 	cmp  %g1, 0
   1bcf0:	12 80 00 04 	bne  1bd00 <encode_mcu_DC_first+0x1f0>
   1bcf4:	c2 24 20 14 	st  %g1, [ %l0 + 0x14 ]
   1bcf8:	7f ff fe 2c 	call  1b5a8 <dump_buffer>
   1bcfc:	90 10 00 10 	mov  %l0, %o0
   1bd00:	a6 04 ff f8 	add  %l3, -8, %l3
   1bd04:	80 a4 e0 07 	cmp  %l3, 7
   1bd08:	14 bf ff e3 	bg  1bc94 <encode_mcu_DC_first+0x184>
   1bd0c:	a5 2c a0 08 	sll  %l2, 8, %l2
   1bd10:	e4 24 20 18 	st  %l2, [ %l0 + 0x18 ]
   1bd14:	e6 24 20 1c 	st  %l3, [ %l0 + 0x1c ]
   1bd18:	80 a5 60 00 	cmp  %l5, 0
   1bd1c:	22 80 00 35 	be,a   1bdf0 <encode_mcu_DC_first+0x2e0>
   1bd20:	ae 05 e0 01 	inc  %l7
   1bd24:	a0 10 00 16 	mov  %l6, %l0
   1bd28:	c2 05 a0 0c 	ld  [ %l6 + 0xc ], %g1
   1bd2c:	80 a0 60 00 	cmp  %g1, 0
   1bd30:	12 80 00 2f 	bne  1bdec <encode_mcu_DC_first+0x2dc>
   1bd34:	e4 05 a0 1c 	ld  [ %l6 + 0x1c ], %l2
   1bd38:	82 10 20 01 	mov  1, %g1
   1bd3c:	83 28 40 15 	sll  %g1, %l5, %g1
   1bd40:	82 00 7f ff 	add  %g1, -1, %g1
   1bd44:	a2 0d 00 01 	and  %l4, %g1, %l1
   1bd48:	a4 04 80 15 	add  %l2, %l5, %l2
   1bd4c:	82 10 20 18 	mov  0x18, %g1
   1bd50:	82 20 40 12 	sub  %g1, %l2, %g1
   1bd54:	a3 2c 40 01 	sll  %l1, %g1, %l1
   1bd58:	c2 05 a0 18 	ld  [ %l6 + 0x18 ], %g1
   1bd5c:	80 a4 a0 07 	cmp  %l2, 7
   1bd60:	04 80 00 21 	ble  1bde4 <encode_mcu_DC_first+0x2d4>
   1bd64:	a2 14 40 01 	or  %l1, %g1, %l1
   1bd68:	83 3c 60 10 	sra  %l1, 0x10, %g1
   1bd6c:	a6 08 60 ff 	and  %g1, 0xff, %l3
   1bd70:	c2 04 20 10 	ld  [ %l0 + 0x10 ], %g1
   1bd74:	e6 28 40 00 	stb  %l3, [ %g1 ]
   1bd78:	82 00 60 01 	inc  %g1
   1bd7c:	c2 24 20 10 	st  %g1, [ %l0 + 0x10 ]
   1bd80:	c2 04 20 14 	ld  [ %l0 + 0x14 ], %g1
   1bd84:	82 00 7f ff 	add  %g1, -1, %g1
   1bd88:	80 a0 60 00 	cmp  %g1, 0
   1bd8c:	12 80 00 04 	bne  1bd9c <encode_mcu_DC_first+0x28c>
   1bd90:	c2 24 20 14 	st  %g1, [ %l0 + 0x14 ]
   1bd94:	7f ff fe 05 	call  1b5a8 <dump_buffer>
   1bd98:	90 10 00 10 	mov  %l0, %o0
   1bd9c:	80 a4 e0 ff 	cmp  %l3, 0xff
   1bda0:	32 80 00 0e 	bne,a   1bdd8 <encode_mcu_DC_first+0x2c8>
   1bda4:	a4 04 bf f8 	add  %l2, -8, %l2
   1bda8:	c2 04 20 10 	ld  [ %l0 + 0x10 ], %g1
   1bdac:	c0 28 40 00 	clrb  [ %g1 ]
   1bdb0:	82 00 60 01 	inc  %g1
   1bdb4:	c2 24 20 10 	st  %g1, [ %l0 + 0x10 ]
   1bdb8:	c2 04 20 14 	ld  [ %l0 + 0x14 ], %g1
   1bdbc:	82 00 7f ff 	add  %g1, -1, %g1
   1bdc0:	80 a0 60 00 	cmp  %g1, 0
   1bdc4:	12 80 00 04 	bne  1bdd4 <encode_mcu_DC_first+0x2c4>
   1bdc8:	c2 24 20 14 	st  %g1, [ %l0 + 0x14 ]
   1bdcc:	7f ff fd f7 	call  1b5a8 <dump_buffer>
   1bdd0:	90 10 00 10 	mov  %l0, %o0
   1bdd4:	a4 04 bf f8 	add  %l2, -8, %l2
   1bdd8:	80 a4 a0 07 	cmp  %l2, 7
   1bddc:	14 bf ff e3 	bg  1bd68 <encode_mcu_DC_first+0x258>
   1bde0:	a3 2c 60 08 	sll  %l1, 8, %l1
   1bde4:	e2 24 20 18 	st  %l1, [ %l0 + 0x18 ]
   1bde8:	e4 24 20 1c 	st  %l2, [ %l0 + 0x1c ]
   1bdec:	ae 05 e0 01 	inc  %l7
   1bdf0:	c2 06 21 08 	ld  [ %i0 + 0x108 ], %g1
   1bdf4:	80 a0 40 17 	cmp  %g1, %l7
   1bdf8:	14 bf ff 5f 	bg  1bb74 <encode_mcu_DC_first+0x64>
   1bdfc:	83 2d e0 02 	sll  %l7, 2, %g1
   1be00:	c4 06 20 14 	ld  [ %i0 + 0x14 ], %g2
   1be04:	c2 05 a0 10 	ld  [ %l6 + 0x10 ], %g1
   1be08:	c2 20 80 00 	st  %g1, [ %g2 ]
   1be0c:	c4 06 20 14 	ld  [ %i0 + 0x14 ], %g2
   1be10:	c2 05 a0 14 	ld  [ %l6 + 0x14 ], %g1
   1be14:	c2 20 a0 04 	st  %g1, [ %g2 + 4 ]
   1be18:	f0 06 20 c0 	ld  [ %i0 + 0xc0 ], %i0
   1be1c:	80 a6 20 00 	cmp  %i0, 0
   1be20:	02 80 00 0e 	be  1be58 <encode_mcu_DC_first+0x348>
   1be24:	01 00 00 00 	nop 
   1be28:	c2 05 a0 44 	ld  [ %l6 + 0x44 ], %g1
   1be2c:	80 a0 60 00 	cmp  %g1, 0
   1be30:	12 80 00 09 	bne  1be54 <encode_mcu_DC_first+0x344>
   1be34:	82 00 7f ff 	add  %g1, -1, %g1
   1be38:	f0 25 a0 44 	st  %i0, [ %l6 + 0x44 ]
   1be3c:	c2 05 a0 48 	ld  [ %l6 + 0x48 ], %g1
   1be40:	82 00 60 01 	inc  %g1
   1be44:	82 08 60 07 	and  %g1, 7, %g1
   1be48:	c2 25 a0 48 	st  %g1, [ %l6 + 0x48 ]
   1be4c:	c2 05 a0 44 	ld  [ %l6 + 0x44 ], %g1
   1be50:	82 00 7f ff 	add  %g1, -1, %g1
   1be54:	c2 25 a0 44 	st  %g1, [ %l6 + 0x44 ]
   1be58:	81 c7 e0 08 	ret 
   1be5c:	91 e8 20 01 	restore  %g0, 1, %o0

0001be60 <encode_mcu_AC_first>:
   1be60:	9d e3 bf 90 	save  %sp, -112, %sp
   1be64:	ea 06 21 64 	ld  [ %i0 + 0x164 ], %l5
   1be68:	f4 06 21 38 	ld  [ %i0 + 0x138 ], %i2
   1be6c:	c2 06 21 40 	ld  [ %i0 + 0x140 ], %g1
   1be70:	c2 27 bf f4 	st  %g1, [ %fp + -12 ]
   1be74:	c2 06 20 14 	ld  [ %i0 + 0x14 ], %g1
   1be78:	c2 00 40 00 	ld  [ %g1 ], %g1
   1be7c:	c2 25 60 10 	st  %g1, [ %l5 + 0x10 ]
   1be80:	c2 06 20 14 	ld  [ %i0 + 0x14 ], %g1
   1be84:	c2 00 60 04 	ld  [ %g1 + 4 ], %g1
   1be88:	c2 25 60 14 	st  %g1, [ %l5 + 0x14 ]
   1be8c:	c2 06 20 c0 	ld  [ %i0 + 0xc0 ], %g1
   1be90:	80 a0 60 00 	cmp  %g1, 0
   1be94:	22 80 00 0a 	be,a   1bebc <encode_mcu_AC_first+0x5c>
   1be98:	f2 06 40 00 	ld  [ %i1 ], %i1
   1be9c:	c2 05 60 44 	ld  [ %l5 + 0x44 ], %g1
   1bea0:	80 a0 60 00 	cmp  %g1, 0
   1bea4:	32 80 00 06 	bne,a   1bebc <encode_mcu_AC_first+0x5c>
   1bea8:	f2 06 40 00 	ld  [ %i1 ], %i1
   1beac:	90 10 00 15 	mov  %l5, %o0
   1beb0:	7f ff fe e1 	call  1ba34 <emit_restart>
   1beb4:	d2 05 60 48 	ld  [ %l5 + 0x48 ], %o1
   1beb8:	f2 06 40 00 	ld  [ %i1 ], %i1
   1bebc:	ee 06 21 34 	ld  [ %i0 + 0x134 ], %l7
   1bec0:	80 a5 c0 1a 	cmp  %l7, %i2
   1bec4:	14 80 01 17 	bg  1c320 <encode_mcu_AC_first+0x4c0>
   1bec8:	ac 10 20 00 	clr  %l6
   1becc:	83 2d e0 02 	sll  %l7, 2, %g1
   1bed0:	05 00 00 87 	sethi  %hi(0x21c00), %g2
   1bed4:	84 10 a3 c4 	or  %g2, 0x3c4, %g2	! 21fc4 <jpeg_natural_order>
   1bed8:	c2 00 80 01 	ld  [ %g2 + %g1 ], %g1
   1bedc:	82 00 40 01 	add  %g1, %g1, %g1
   1bee0:	e8 56 40 01 	ldsh  [ %i1 + %g1 ], %l4
   1bee4:	80 a5 20 00 	cmp  %l4, 0
   1bee8:	12 80 00 04 	bne  1bef8 <encode_mcu_AC_first+0x98>
   1beec:	01 00 00 00 	nop 
   1bef0:	10 80 01 08 	b  1c310 <encode_mcu_AC_first+0x4b0>
   1bef4:	ac 05 a0 01 	inc  %l6
   1bef8:	16 80 00 06 	bge  1bf10 <encode_mcu_AC_first+0xb0>
   1befc:	c2 07 bf f4 	ld  [ %fp + -12 ], %g1
   1bf00:	a8 20 00 14 	neg  %l4
   1bf04:	a9 3d 00 01 	sra  %l4, %g1, %l4
   1bf08:	10 80 00 04 	b  1bf18 <encode_mcu_AC_first+0xb8>
   1bf0c:	b8 38 00 14 	xnor  %g0, %l4, %i4
   1bf10:	b9 3d 00 01 	sra  %l4, %g1, %i4
   1bf14:	a8 10 00 1c 	mov  %i4, %l4
   1bf18:	80 a5 20 00 	cmp  %l4, 0
   1bf1c:	32 80 00 04 	bne,a   1bf2c <encode_mcu_AC_first+0xcc>
   1bf20:	c2 05 60 38 	ld  [ %l5 + 0x38 ], %g1
   1bf24:	10 80 00 fb 	b  1c310 <encode_mcu_AC_first+0x4b0>
   1bf28:	ac 05 a0 01 	inc  %l6
   1bf2c:	80 a0 60 00 	cmp  %g1, 0
   1bf30:	02 80 00 05 	be  1bf44 <encode_mcu_AC_first+0xe4>
   1bf34:	80 a5 a0 0f 	cmp  %l6, 0xf
   1bf38:	7f ff fe 23 	call  1b7c4 <emit_eobrun>
   1bf3c:	90 10 00 15 	mov  %l5, %o0
   1bf40:	80 a5 a0 0f 	cmp  %l6, 0xf
   1bf44:	04 80 00 57 	ble  1c0a0 <encode_mcu_AC_first+0x240>
   1bf48:	ba 10 00 15 	mov  %l5, %i5
   1bf4c:	b6 10 20 f0 	mov  0xf0, %i3
   1bf50:	c2 05 60 0c 	ld  [ %l5 + 0xc ], %g1
   1bf54:	80 a0 60 00 	cmp  %g1, 0
   1bf58:	02 80 00 09 	be  1bf7c <encode_mcu_AC_first+0x11c>
   1bf5c:	c4 05 60 34 	ld  [ %l5 + 0x34 ], %g2
   1bf60:	83 28 a0 02 	sll  %g2, 2, %g1
   1bf64:	82 00 40 15 	add  %g1, %l5, %g1
   1bf68:	c4 00 60 5c 	ld  [ %g1 + 0x5c ], %g2
   1bf6c:	c2 00 a3 c0 	ld  [ %g2 + 0x3c0 ], %g1
   1bf70:	82 00 60 01 	inc  %g1
   1bf74:	10 80 00 47 	b  1c090 <encode_mcu_AC_first+0x230>
   1bf78:	c2 20 a3 c0 	st  %g1, [ %g2 + 0x3c0 ]
   1bf7c:	83 28 a0 02 	sll  %g2, 2, %g1
   1bf80:	82 00 40 1d 	add  %g1, %i5, %g1
   1bf84:	c6 00 60 4c 	ld  [ %g1 + 0x4c ], %g3
   1bf88:	a0 10 00 1d 	mov  %i5, %l0
   1bf8c:	85 2e e0 02 	sll  %i3, 2, %g2
   1bf90:	82 06 c0 03 	add  %i3, %g3, %g1
   1bf94:	e2 48 64 00 	ldsb  [ %g1 + 0x400 ], %l1
   1bf98:	e4 00 c0 02 	ld  [ %g3 + %g2 ], %l2
   1bf9c:	80 a4 60 00 	cmp  %l1, 0
   1bfa0:	12 80 00 0b 	bne  1bfcc <encode_mcu_AC_first+0x16c>
   1bfa4:	e6 07 60 1c 	ld  [ %i5 + 0x1c ], %l3
   1bfa8:	c2 07 60 20 	ld  [ %i5 + 0x20 ], %g1
   1bfac:	c4 00 40 00 	ld  [ %g1 ], %g2
   1bfb0:	82 10 20 27 	mov  0x27, %g1
   1bfb4:	c2 20 a0 14 	st  %g1, [ %g2 + 0x14 ]
   1bfb8:	d0 07 60 20 	ld  [ %i5 + 0x20 ], %o0
   1bfbc:	c2 02 00 00 	ld  [ %o0 ], %g1
   1bfc0:	c2 00 40 00 	ld  [ %g1 ], %g1
   1bfc4:	9f c0 40 00 	call  %g1
   1bfc8:	01 00 00 00 	nop 
   1bfcc:	c2 04 20 0c 	ld  [ %l0 + 0xc ], %g1
   1bfd0:	80 a0 60 00 	cmp  %g1, 0
   1bfd4:	32 80 00 30 	bne,a   1c094 <encode_mcu_AC_first+0x234>
   1bfd8:	ac 05 bf f0 	add  %l6, -16, %l6
   1bfdc:	82 10 20 01 	mov  1, %g1
   1bfe0:	83 28 40 11 	sll  %g1, %l1, %g1
   1bfe4:	82 00 7f ff 	add  %g1, -1, %g1
   1bfe8:	a4 0c 80 01 	and  %l2, %g1, %l2
   1bfec:	a6 04 c0 11 	add  %l3, %l1, %l3
   1bff0:	82 10 20 18 	mov  0x18, %g1
   1bff4:	82 20 40 13 	sub  %g1, %l3, %g1
   1bff8:	a5 2c 80 01 	sll  %l2, %g1, %l2
   1bffc:	c2 04 20 18 	ld  [ %l0 + 0x18 ], %g1
   1c000:	80 a4 e0 07 	cmp  %l3, 7
   1c004:	04 80 00 21 	ble  1c088 <encode_mcu_AC_first+0x228>
   1c008:	a4 14 80 01 	or  %l2, %g1, %l2
   1c00c:	83 3c a0 10 	sra  %l2, 0x10, %g1
   1c010:	a2 08 60 ff 	and  %g1, 0xff, %l1
   1c014:	c2 04 20 10 	ld  [ %l0 + 0x10 ], %g1
   1c018:	e2 28 40 00 	stb  %l1, [ %g1 ]
   1c01c:	82 00 60 01 	inc  %g1
   1c020:	c2 24 20 10 	st  %g1, [ %l0 + 0x10 ]
   1c024:	c2 04 20 14 	ld  [ %l0 + 0x14 ], %g1
   1c028:	82 00 7f ff 	add  %g1, -1, %g1
   1c02c:	80 a0 60 00 	cmp  %g1, 0
   1c030:	12 80 00 04 	bne  1c040 <encode_mcu_AC_first+0x1e0>
   1c034:	c2 24 20 14 	st  %g1, [ %l0 + 0x14 ]
   1c038:	7f ff fd 5c 	call  1b5a8 <dump_buffer>
   1c03c:	90 10 00 10 	mov  %l0, %o0
   1c040:	80 a4 60 ff 	cmp  %l1, 0xff
   1c044:	32 80 00 0e 	bne,a   1c07c <encode_mcu_AC_first+0x21c>
   1c048:	a6 04 ff f8 	add  %l3, -8, %l3
   1c04c:	c2 04 20 10 	ld  [ %l0 + 0x10 ], %g1
   1c050:	c0 28 40 00 	clrb  [ %g1 ]
   1c054:	82 00 60 01 	inc  %g1
   1c058:	c2 24 20 10 	st  %g1, [ %l0 + 0x10 ]
   1c05c:	c2 04 20 14 	ld  [ %l0 + 0x14 ], %g1
   1c060:	82 00 7f ff 	add  %g1, -1, %g1
   1c064:	80 a0 60 00 	cmp  %g1, 0
   1c068:	12 80 00 04 	bne  1c078 <encode_mcu_AC_first+0x218>
   1c06c:	c2 24 20 14 	st  %g1, [ %l0 + 0x14 ]
   1c070:	7f ff fd 4e 	call  1b5a8 <dump_buffer>
   1c074:	90 10 00 10 	mov  %l0, %o0
   1c078:	a6 04 ff f8 	add  %l3, -8, %l3
   1c07c:	80 a4 e0 07 	cmp  %l3, 7
   1c080:	14 bf ff e3 	bg  1c00c <encode_mcu_AC_first+0x1ac>
   1c084:	a5 2c a0 08 	sll  %l2, 8, %l2
   1c088:	e4 24 20 18 	st  %l2, [ %l0 + 0x18 ]
   1c08c:	e6 24 20 1c 	st  %l3, [ %l0 + 0x1c ]
   1c090:	ac 05 bf f0 	add  %l6, -16, %l6
   1c094:	80 a5 a0 0f 	cmp  %l6, 0xf
   1c098:	34 bf ff af 	bg,a   1bf54 <encode_mcu_AC_first+0xf4>
   1c09c:	c2 05 60 0c 	ld  [ %l5 + 0xc ], %g1
   1c0a0:	a9 3d 20 01 	sra  %l4, 1, %l4
   1c0a4:	80 a5 20 00 	cmp  %l4, 0
   1c0a8:	02 80 00 06 	be  1c0c0 <encode_mcu_AC_first+0x260>
   1c0ac:	ba 10 20 01 	mov  1, %i5
   1c0b0:	a9 3d 20 01 	sra  %l4, 1, %l4
   1c0b4:	80 a5 20 00 	cmp  %l4, 0
   1c0b8:	12 bf ff fe 	bne  1c0b0 <encode_mcu_AC_first+0x250>
   1c0bc:	ba 07 60 01 	inc  %i5
   1c0c0:	c4 05 60 34 	ld  [ %l5 + 0x34 ], %g2
   1c0c4:	89 2d a0 04 	sll  %l6, 4, %g4
   1c0c8:	c2 05 60 0c 	ld  [ %l5 + 0xc ], %g1
   1c0cc:	80 a0 60 00 	cmp  %g1, 0
   1c0d0:	02 80 00 0a 	be  1c0f8 <encode_mcu_AC_first+0x298>
   1c0d4:	88 01 00 1d 	add  %g4, %i5, %g4
   1c0d8:	83 28 a0 02 	sll  %g2, 2, %g1
   1c0dc:	82 00 40 15 	add  %g1, %l5, %g1
   1c0e0:	c6 00 60 5c 	ld  [ %g1 + 0x5c ], %g3
   1c0e4:	85 29 20 02 	sll  %g4, 2, %g2
   1c0e8:	c2 00 c0 02 	ld  [ %g3 + %g2 ], %g1
   1c0ec:	82 00 60 01 	inc  %g1
   1c0f0:	10 80 00 47 	b  1c20c <encode_mcu_AC_first+0x3ac>
   1c0f4:	c2 20 c0 02 	st  %g1, [ %g3 + %g2 ]
   1c0f8:	83 28 a0 02 	sll  %g2, 2, %g1
   1c0fc:	82 00 40 15 	add  %g1, %l5, %g1
   1c100:	c6 00 60 4c 	ld  [ %g1 + 0x4c ], %g3
   1c104:	a0 10 00 15 	mov  %l5, %l0
   1c108:	85 29 20 02 	sll  %g4, 2, %g2
   1c10c:	82 01 00 03 	add  %g4, %g3, %g1
   1c110:	e2 48 64 00 	ldsb  [ %g1 + 0x400 ], %l1
   1c114:	e4 00 c0 02 	ld  [ %g3 + %g2 ], %l2
   1c118:	80 a4 60 00 	cmp  %l1, 0
   1c11c:	12 80 00 0b 	bne  1c148 <encode_mcu_AC_first+0x2e8>
   1c120:	e6 05 60 1c 	ld  [ %l5 + 0x1c ], %l3
   1c124:	c2 05 60 20 	ld  [ %l5 + 0x20 ], %g1
   1c128:	c4 00 40 00 	ld  [ %g1 ], %g2
   1c12c:	82 10 20 27 	mov  0x27, %g1
   1c130:	c2 20 a0 14 	st  %g1, [ %g2 + 0x14 ]
   1c134:	d0 05 60 20 	ld  [ %l5 + 0x20 ], %o0
   1c138:	c2 02 00 00 	ld  [ %o0 ], %g1
   1c13c:	c2 00 40 00 	ld  [ %g1 ], %g1
   1c140:	9f c0 40 00 	call  %g1
   1c144:	01 00 00 00 	nop 
   1c148:	c2 04 20 0c 	ld  [ %l0 + 0xc ], %g1
   1c14c:	80 a0 60 00 	cmp  %g1, 0
   1c150:	32 80 00 30 	bne,a   1c210 <encode_mcu_AC_first+0x3b0>
   1c154:	a0 10 00 15 	mov  %l5, %l0
   1c158:	82 10 20 01 	mov  1, %g1
   1c15c:	83 28 40 11 	sll  %g1, %l1, %g1
   1c160:	82 00 7f ff 	add  %g1, -1, %g1
   1c164:	a4 0c 80 01 	and  %l2, %g1, %l2
   1c168:	a6 04 c0 11 	add  %l3, %l1, %l3
   1c16c:	82 10 20 18 	mov  0x18, %g1
   1c170:	82 20 40 13 	sub  %g1, %l3, %g1
   1c174:	a5 2c 80 01 	sll  %l2, %g1, %l2
   1c178:	c2 04 20 18 	ld  [ %l0 + 0x18 ], %g1
   1c17c:	80 a4 e0 07 	cmp  %l3, 7
   1c180:	04 80 00 21 	ble  1c204 <encode_mcu_AC_first+0x3a4>
   1c184:	a4 14 80 01 	or  %l2, %g1, %l2
   1c188:	83 3c a0 10 	sra  %l2, 0x10, %g1
   1c18c:	a2 08 60 ff 	and  %g1, 0xff, %l1
   1c190:	c2 04 20 10 	ld  [ %l0 + 0x10 ], %g1
   1c194:	e2 28 40 00 	stb  %l1, [ %g1 ]
   1c198:	82 00 60 01 	inc  %g1
   1c19c:	c2 24 20 10 	st  %g1, [ %l0 + 0x10 ]
   1c1a0:	c2 04 20 14 	ld  [ %l0 + 0x14 ], %g1
   1c1a4:	82 00 7f ff 	add  %g1, -1, %g1
   1c1a8:	80 a0 60 00 	cmp  %g1, 0
   1c1ac:	12 80 00 04 	bne  1c1bc <encode_mcu_AC_first+0x35c>
   1c1b0:	c2 24 20 14 	st  %g1, [ %l0 + 0x14 ]
   1c1b4:	7f ff fc fd 	call  1b5a8 <dump_buffer>
   1c1b8:	90 10 00 10 	mov  %l0, %o0
   1c1bc:	80 a4 60 ff 	cmp  %l1, 0xff
   1c1c0:	32 80 00 0e 	bne,a   1c1f8 <encode_mcu_AC_first+0x398>
   1c1c4:	a6 04 ff f8 	add  %l3, -8, %l3
   1c1c8:	c2 04 20 10 	ld  [ %l0 + 0x10 ], %g1
   1c1cc:	c0 28 40 00 	clrb  [ %g1 ]
   1c1d0:	82 00 60 01 	inc  %g1
   1c1d4:	c2 24 20 10 	st  %g1, [ %l0 + 0x10 ]
   1c1d8:	c2 04 20 14 	ld  [ %l0 + 0x14 ], %g1
   1c1dc:	82 00 7f ff 	add  %g1, -1, %g1
   1c1e0:	80 a0 60 00 	cmp  %g1, 0
   1c1e4:	12 80 00 04 	bne  1c1f4 <encode_mcu_AC_first+0x394>
   1c1e8:	c2 24 20 14 	st  %g1, [ %l0 + 0x14 ]
   1c1ec:	7f ff fc ef 	call  1b5a8 <dump_buffer>
   1c1f0:	90 10 00 10 	mov  %l0, %o0
   1c1f4:	a6 04 ff f8 	add  %l3, -8, %l3
   1c1f8:	80 a4 e0 07 	cmp  %l3, 7
   1c1fc:	14 bf ff e3 	bg  1c188 <encode_mcu_AC_first+0x328>
   1c200:	a5 2c a0 08 	sll  %l2, 8, %l2
   1c204:	e4 24 20 18 	st  %l2, [ %l0 + 0x18 ]
   1c208:	e6 24 20 1c 	st  %l3, [ %l0 + 0x1c ]
   1c20c:	a0 10 00 15 	mov  %l5, %l0
   1c210:	a2 10 00 1d 	mov  %i5, %l1
   1c214:	a4 10 00 1c 	mov  %i4, %l2
   1c218:	80 a7 60 00 	cmp  %i5, 0
   1c21c:	12 80 00 0b 	bne  1c248 <encode_mcu_AC_first+0x3e8>
   1c220:	e6 05 60 1c 	ld  [ %l5 + 0x1c ], %l3
   1c224:	c2 05 60 20 	ld  [ %l5 + 0x20 ], %g1
   1c228:	c4 00 40 00 	ld  [ %g1 ], %g2
   1c22c:	82 10 20 27 	mov  0x27, %g1
   1c230:	c2 20 a0 14 	st  %g1, [ %g2 + 0x14 ]
   1c234:	d0 05 60 20 	ld  [ %l5 + 0x20 ], %o0
   1c238:	c2 02 00 00 	ld  [ %o0 ], %g1
   1c23c:	c2 00 40 00 	ld  [ %g1 ], %g1
   1c240:	9f c0 40 00 	call  %g1
   1c244:	01 00 00 00 	nop 
   1c248:	c2 04 20 0c 	ld  [ %l0 + 0xc ], %g1
   1c24c:	80 a0 60 00 	cmp  %g1, 0
   1c250:	12 80 00 30 	bne  1c310 <encode_mcu_AC_first+0x4b0>
   1c254:	ac 10 20 00 	clr  %l6
   1c258:	82 10 20 01 	mov  1, %g1
   1c25c:	83 28 40 11 	sll  %g1, %l1, %g1
   1c260:	82 00 7f ff 	add  %g1, -1, %g1
   1c264:	a4 0c 80 01 	and  %l2, %g1, %l2
   1c268:	a6 04 c0 11 	add  %l3, %l1, %l3
   1c26c:	82 10 20 18 	mov  0x18, %g1
   1c270:	82 20 40 13 	sub  %g1, %l3, %g1
   1c274:	a5 2c 80 01 	sll  %l2, %g1, %l2
   1c278:	c2 04 20 18 	ld  [ %l0 + 0x18 ], %g1
   1c27c:	80 a4 e0 07 	cmp  %l3, 7
   1c280:	04 80 00 21 	ble  1c304 <encode_mcu_AC_first+0x4a4>
   1c284:	a4 14 80 01 	or  %l2, %g1, %l2
   1c288:	83 3c a0 10 	sra  %l2, 0x10, %g1
   1c28c:	a2 08 60 ff 	and  %g1, 0xff, %l1
   1c290:	c2 04 20 10 	ld  [ %l0 + 0x10 ], %g1
   1c294:	e2 28 40 00 	stb  %l1, [ %g1 ]
   1c298:	82 00 60 01 	inc  %g1
   1c29c:	c2 24 20 10 	st  %g1, [ %l0 + 0x10 ]
   1c2a0:	c2 04 20 14 	ld  [ %l0 + 0x14 ], %g1
   1c2a4:	82 00 7f ff 	add  %g1, -1, %g1
   1c2a8:	80 a0 60 00 	cmp  %g1, 0
   1c2ac:	12 80 00 04 	bne  1c2bc <encode_mcu_AC_first+0x45c>
   1c2b0:	c2 24 20 14 	st  %g1, [ %l0 + 0x14 ]
   1c2b4:	7f ff fc bd 	call  1b5a8 <dump_buffer>
   1c2b8:	90 10 00 10 	mov  %l0, %o0
   1c2bc:	80 a4 60 ff 	cmp  %l1, 0xff
   1c2c0:	32 80 00 0e 	bne,a   1c2f8 <encode_mcu_AC_first+0x498>
   1c2c4:	a6 04 ff f8 	add  %l3, -8, %l3
   1c2c8:	c2 04 20 10 	ld  [ %l0 + 0x10 ], %g1
   1c2cc:	c0 28 40 00 	clrb  [ %g1 ]
   1c2d0:	82 00 60 01 	inc  %g1
   1c2d4:	c2 24 20 10 	st  %g1, [ %l0 + 0x10 ]
   1c2d8:	c2 04 20 14 	ld  [ %l0 + 0x14 ], %g1
   1c2dc:	82 00 7f ff 	add  %g1, -1, %g1
   1c2e0:	80 a0 60 00 	cmp  %g1, 0
   1c2e4:	12 80 00 04 	bne  1c2f4 <encode_mcu_AC_first+0x494>
   1c2e8:	c2 24 20 14 	st  %g1, [ %l0 + 0x14 ]
   1c2ec:	7f ff fc af 	call  1b5a8 <dump_buffer>
   1c2f0:	90 10 00 10 	mov  %l0, %o0
   1c2f4:	a6 04 ff f8 	add  %l3, -8, %l3
   1c2f8:	80 a4 e0 07 	cmp  %l3, 7
   1c2fc:	14 bf ff e3 	bg  1c288 <encode_mcu_AC_first+0x428>
   1c300:	a5 2c a0 08 	sll  %l2, 8, %l2
   1c304:	e4 24 20 18 	st  %l2, [ %l0 + 0x18 ]
   1c308:	e6 24 20 1c 	st  %l3, [ %l0 + 0x1c ]
   1c30c:	ac 10 20 00 	clr  %l6
   1c310:	ae 05 e0 01 	inc  %l7
   1c314:	80 a5 c0 1a 	cmp  %l7, %i2
   1c318:	04 bf fe ee 	ble  1bed0 <encode_mcu_AC_first+0x70>
   1c31c:	83 2d e0 02 	sll  %l7, 2, %g1
   1c320:	80 a5 a0 00 	cmp  %l6, 0
   1c324:	04 80 00 0a 	ble  1c34c <encode_mcu_AC_first+0x4ec>
   1c328:	03 00 00 1f 	sethi  %hi(0x7c00), %g1
   1c32c:	c4 05 60 38 	ld  [ %l5 + 0x38 ], %g2
   1c330:	84 00 a0 01 	inc  %g2
   1c334:	82 10 63 ff 	or  %g1, 0x3ff, %g1
   1c338:	80 a0 80 01 	cmp  %g2, %g1
   1c33c:	12 80 00 04 	bne  1c34c <encode_mcu_AC_first+0x4ec>
   1c340:	c4 25 60 38 	st  %g2, [ %l5 + 0x38 ]
   1c344:	7f ff fd 20 	call  1b7c4 <emit_eobrun>
   1c348:	90 10 00 15 	mov  %l5, %o0
   1c34c:	c4 06 20 14 	ld  [ %i0 + 0x14 ], %g2
   1c350:	c2 05 60 10 	ld  [ %l5 + 0x10 ], %g1
   1c354:	c2 20 80 00 	st  %g1, [ %g2 ]
   1c358:	c4 06 20 14 	ld  [ %i0 + 0x14 ], %g2
   1c35c:	c2 05 60 14 	ld  [ %l5 + 0x14 ], %g1
   1c360:	c2 20 a0 04 	st  %g1, [ %g2 + 4 ]
   1c364:	f0 06 20 c0 	ld  [ %i0 + 0xc0 ], %i0
   1c368:	80 a6 20 00 	cmp  %i0, 0
   1c36c:	02 80 00 0e 	be  1c3a4 <encode_mcu_AC_first+0x544>
   1c370:	01 00 00 00 	nop 
   1c374:	c2 05 60 44 	ld  [ %l5 + 0x44 ], %g1
   1c378:	80 a0 60 00 	cmp  %g1, 0
   1c37c:	12 80 00 09 	bne  1c3a0 <encode_mcu_AC_first+0x540>
   1c380:	82 00 7f ff 	add  %g1, -1, %g1
   1c384:	f0 25 60 44 	st  %i0, [ %l5 + 0x44 ]
   1c388:	c2 05 60 48 	ld  [ %l5 + 0x48 ], %g1
   1c38c:	82 00 60 01 	inc  %g1
   1c390:	82 08 60 07 	and  %g1, 7, %g1
   1c394:	c2 25 60 48 	st  %g1, [ %l5 + 0x48 ]
   1c398:	c2 05 60 44 	ld  [ %l5 + 0x44 ], %g1
   1c39c:	82 00 7f ff 	add  %g1, -1, %g1
   1c3a0:	c2 25 60 44 	st  %g1, [ %l5 + 0x44 ]
   1c3a4:	81 c7 e0 08 	ret 
   1c3a8:	91 e8 20 01 	restore  %g0, 1, %o0

0001c3ac <encode_mcu_DC_refine>:
   1c3ac:	9d e3 bf 98 	save  %sp, -104, %sp
   1c3b0:	e8 06 21 64 	ld  [ %i0 + 0x164 ], %l4
   1c3b4:	ec 06 21 40 	ld  [ %i0 + 0x140 ], %l6
   1c3b8:	c2 06 20 14 	ld  [ %i0 + 0x14 ], %g1
   1c3bc:	c2 00 40 00 	ld  [ %g1 ], %g1
   1c3c0:	c2 25 20 10 	st  %g1, [ %l4 + 0x10 ]
   1c3c4:	c2 06 20 14 	ld  [ %i0 + 0x14 ], %g1
   1c3c8:	c2 00 60 04 	ld  [ %g1 + 4 ], %g1
   1c3cc:	c2 25 20 14 	st  %g1, [ %l4 + 0x14 ]
   1c3d0:	c2 06 20 c0 	ld  [ %i0 + 0xc0 ], %g1
   1c3d4:	80 a0 60 00 	cmp  %g1, 0
   1c3d8:	22 80 00 0a 	be,a   1c400 <encode_mcu_DC_refine+0x54>
   1c3dc:	c2 06 21 08 	ld  [ %i0 + 0x108 ], %g1
   1c3e0:	c2 05 20 44 	ld  [ %l4 + 0x44 ], %g1
   1c3e4:	80 a0 60 00 	cmp  %g1, 0
   1c3e8:	32 80 00 06 	bne,a   1c400 <encode_mcu_DC_refine+0x54>
   1c3ec:	c2 06 21 08 	ld  [ %i0 + 0x108 ], %g1
   1c3f0:	90 10 00 14 	mov  %l4, %o0
   1c3f4:	7f ff fd 90 	call  1ba34 <emit_restart>
   1c3f8:	d2 05 20 48 	ld  [ %l4 + 0x48 ], %o1
   1c3fc:	c2 06 21 08 	ld  [ %i0 + 0x108 ], %g1
   1c400:	80 a0 60 00 	cmp  %g1, 0
   1c404:	04 80 00 3a 	ble  1c4ec <encode_mcu_DC_refine+0x140>
   1c408:	aa 10 20 00 	clr  %l5
   1c40c:	a0 10 00 14 	mov  %l4, %l0
   1c410:	83 2d 60 02 	sll  %l5, 2, %g1
   1c414:	c2 06 40 01 	ld  [ %i1 + %g1 ], %g1
   1c418:	c2 50 40 00 	ldsh  [ %g1 ], %g1
   1c41c:	a3 38 40 16 	sra  %g1, %l6, %l1
   1c420:	c2 05 20 0c 	ld  [ %l4 + 0xc ], %g1
   1c424:	80 a0 60 00 	cmp  %g1, 0
   1c428:	12 80 00 2c 	bne  1c4d8 <encode_mcu_DC_refine+0x12c>
   1c42c:	e4 05 20 1c 	ld  [ %l4 + 0x1c ], %l2
   1c430:	a2 0c 60 01 	and  %l1, 1, %l1
   1c434:	a4 04 a0 01 	inc  %l2
   1c438:	82 10 20 18 	mov  0x18, %g1
   1c43c:	82 20 40 12 	sub  %g1, %l2, %g1
   1c440:	a3 2c 40 01 	sll  %l1, %g1, %l1
   1c444:	c2 05 20 18 	ld  [ %l4 + 0x18 ], %g1
   1c448:	80 a4 a0 07 	cmp  %l2, 7
   1c44c:	04 80 00 21 	ble  1c4d0 <encode_mcu_DC_refine+0x124>
   1c450:	a2 14 40 01 	or  %l1, %g1, %l1
   1c454:	83 3c 60 10 	sra  %l1, 0x10, %g1
   1c458:	a6 08 60 ff 	and  %g1, 0xff, %l3
   1c45c:	c2 04 20 10 	ld  [ %l0 + 0x10 ], %g1
   1c460:	e6 28 40 00 	stb  %l3, [ %g1 ]
   1c464:	82 00 60 01 	inc  %g1
   1c468:	c2 24 20 10 	st  %g1, [ %l0 + 0x10 ]
   1c46c:	c2 04 20 14 	ld  [ %l0 + 0x14 ], %g1
   1c470:	82 00 7f ff 	add  %g1, -1, %g1
   1c474:	80 a0 60 00 	cmp  %g1, 0
   1c478:	12 80 00 04 	bne  1c488 <encode_mcu_DC_refine+0xdc>
   1c47c:	c2 24 20 14 	st  %g1, [ %l0 + 0x14 ]
   1c480:	7f ff fc 4a 	call  1b5a8 <dump_buffer>
   1c484:	90 10 00 10 	mov  %l0, %o0
   1c488:	80 a4 e0 ff 	cmp  %l3, 0xff
   1c48c:	32 80 00 0e 	bne,a   1c4c4 <encode_mcu_DC_refine+0x118>
   1c490:	a4 04 bf f8 	add  %l2, -8, %l2
   1c494:	c2 04 20 10 	ld  [ %l0 + 0x10 ], %g1
   1c498:	c0 28 40 00 	clrb  [ %g1 ]
   1c49c:	82 00 60 01 	inc  %g1
   1c4a0:	c2 24 20 10 	st  %g1, [ %l0 + 0x10 ]
   1c4a4:	c2 04 20 14 	ld  [ %l0 + 0x14 ], %g1
   1c4a8:	82 00 7f ff 	add  %g1, -1, %g1
   1c4ac:	80 a0 60 00 	cmp  %g1, 0
   1c4b0:	12 80 00 04 	bne  1c4c0 <encode_mcu_DC_refine+0x114>
   1c4b4:	c2 24 20 14 	st  %g1, [ %l0 + 0x14 ]
   1c4b8:	7f ff fc 3c 	call  1b5a8 <dump_buffer>
   1c4bc:	90 10 00 10 	mov  %l0, %o0
   1c4c0:	a4 04 bf f8 	add  %l2, -8, %l2
   1c4c4:	80 a4 a0 07 	cmp  %l2, 7
   1c4c8:	14 bf ff e3 	bg  1c454 <encode_mcu_DC_refine+0xa8>
   1c4cc:	a3 2c 60 08 	sll  %l1, 8, %l1
   1c4d0:	e2 24 20 18 	st  %l1, [ %l0 + 0x18 ]
   1c4d4:	e4 24 20 1c 	st  %l2, [ %l0 + 0x1c ]
   1c4d8:	aa 05 60 01 	inc  %l5
   1c4dc:	c2 06 21 08 	ld  [ %i0 + 0x108 ], %g1
   1c4e0:	80 a0 40 15 	cmp  %g1, %l5
   1c4e4:	14 bf ff cc 	bg  1c414 <encode_mcu_DC_refine+0x68>
   1c4e8:	83 2d 60 02 	sll  %l5, 2, %g1
   1c4ec:	c4 06 20 14 	ld  [ %i0 + 0x14 ], %g2
   1c4f0:	c2 05 20 10 	ld  [ %l4 + 0x10 ], %g1
   1c4f4:	c2 20 80 00 	st  %g1, [ %g2 ]
   1c4f8:	c4 06 20 14 	ld  [ %i0 + 0x14 ], %g2
   1c4fc:	c2 05 20 14 	ld  [ %l4 + 0x14 ], %g1
   1c500:	c2 20 a0 04 	st  %g1, [ %g2 + 4 ]
   1c504:	f0 06 20 c0 	ld  [ %i0 + 0xc0 ], %i0
   1c508:	80 a6 20 00 	cmp  %i0, 0
   1c50c:	02 80 00 0e 	be  1c544 <encode_mcu_DC_refine+0x198>
   1c510:	01 00 00 00 	nop 
   1c514:	c2 05 20 44 	ld  [ %l4 + 0x44 ], %g1
   1c518:	80 a0 60 00 	cmp  %g1, 0
   1c51c:	12 80 00 09 	bne  1c540 <encode_mcu_DC_refine+0x194>
   1c520:	82 00 7f ff 	add  %g1, -1, %g1
   1c524:	f0 25 20 44 	st  %i0, [ %l4 + 0x44 ]
   1c528:	c2 05 20 48 	ld  [ %l4 + 0x48 ], %g1
   1c52c:	82 00 60 01 	inc  %g1
   1c530:	82 08 60 07 	and  %g1, 7, %g1
   1c534:	c2 25 20 48 	st  %g1, [ %l4 + 0x48 ]
   1c538:	c2 05 20 44 	ld  [ %l4 + 0x44 ], %g1
   1c53c:	82 00 7f ff 	add  %g1, -1, %g1
   1c540:	c2 25 20 44 	st  %g1, [ %l4 + 0x44 ]
   1c544:	81 c7 e0 08 	ret 
   1c548:	91 e8 20 01 	restore  %g0, 1, %o0

0001c54c <encode_mcu_AC_refine>:
   1c54c:	9d e3 be 98 	save  %sp, -360, %sp
   1c550:	e8 06 21 64 	ld  [ %i0 + 0x164 ], %l4
   1c554:	f6 06 21 38 	ld  [ %i0 + 0x138 ], %i3
   1c558:	e0 06 21 40 	ld  [ %i0 + 0x140 ], %l0
   1c55c:	c2 06 20 14 	ld  [ %i0 + 0x14 ], %g1
   1c560:	c2 00 40 00 	ld  [ %g1 ], %g1
   1c564:	c2 25 20 10 	st  %g1, [ %l4 + 0x10 ]
   1c568:	c2 06 20 14 	ld  [ %i0 + 0x14 ], %g1
   1c56c:	c2 00 60 04 	ld  [ %g1 + 4 ], %g1
   1c570:	c2 25 20 14 	st  %g1, [ %l4 + 0x14 ]
   1c574:	c2 06 20 c0 	ld  [ %i0 + 0xc0 ], %g1
   1c578:	80 a0 60 00 	cmp  %g1, 0
   1c57c:	22 80 00 0a 	be,a   1c5a4 <encode_mcu_AC_refine+0x58>
   1c580:	f2 06 40 00 	ld  [ %i1 ], %i1
   1c584:	c2 05 20 44 	ld  [ %l4 + 0x44 ], %g1
   1c588:	80 a0 60 00 	cmp  %g1, 0
   1c58c:	32 80 00 06 	bne,a   1c5a4 <encode_mcu_AC_refine+0x58>
   1c590:	f2 06 40 00 	ld  [ %i1 ], %i1
   1c594:	90 10 00 14 	mov  %l4, %o0
   1c598:	7f ff fd 27 	call  1ba34 <emit_restart>
   1c59c:	d2 05 20 48 	ld  [ %l4 + 0x48 ], %o1
   1c5a0:	f2 06 40 00 	ld  [ %i1 ], %i1
   1c5a4:	ec 06 21 34 	ld  [ %i0 + 0x134 ], %l6
   1c5a8:	80 a5 80 1b 	cmp  %l6, %i3
   1c5ac:	14 80 00 17 	bg  1c608 <encode_mcu_AC_refine+0xbc>
   1c5b0:	b4 10 20 00 	clr  %i2
   1c5b4:	03 00 00 87 	sethi  %hi(0x21c00), %g1
   1c5b8:	86 10 63 c4 	or  %g1, 0x3c4, %g3	! 21fc4 <jpeg_natural_order>
   1c5bc:	84 07 bf f8 	add  %fp, -8, %g2
   1c5c0:	83 2d a0 02 	sll  %l6, 2, %g1
   1c5c4:	c2 00 c0 01 	ld  [ %g3 + %g1 ], %g1
   1c5c8:	82 00 40 01 	add  %g1, %g1, %g1
   1c5cc:	ea 56 40 01 	ldsh  [ %i1 + %g1 ], %l5
   1c5d0:	83 3d 60 1f 	sra  %l5, 0x1f, %g1
   1c5d4:	aa 1d 40 01 	xor  %l5, %g1, %l5
   1c5d8:	aa 25 40 01 	sub  %l5, %g1, %l5
   1c5dc:	ab 3d 40 10 	sra  %l5, %l0, %l5
   1c5e0:	83 2d a0 02 	sll  %l6, 2, %g1
   1c5e4:	82 00 40 02 	add  %g1, %g2, %g1
   1c5e8:	80 a5 60 01 	cmp  %l5, 1
   1c5ec:	12 80 00 03 	bne  1c5f8 <encode_mcu_AC_refine+0xac>
   1c5f0:	ea 20 7f 00 	st  %l5, [ %g1 + -256 ]
   1c5f4:	b4 10 00 16 	mov  %l6, %i2
   1c5f8:	ac 05 a0 01 	inc  %l6
   1c5fc:	80 a5 80 1b 	cmp  %l6, %i3
   1c600:	04 bf ff f1 	ble  1c5c4 <encode_mcu_AC_refine+0x78>
   1c604:	83 2d a0 02 	sll  %l6, 2, %g1
   1c608:	ae 10 20 00 	clr  %l7
   1c60c:	b8 10 20 00 	clr  %i4
   1c610:	c4 05 20 40 	ld  [ %l4 + 0x40 ], %g2
   1c614:	c2 05 20 3c 	ld  [ %l4 + 0x3c ], %g1
   1c618:	ec 06 21 34 	ld  [ %i0 + 0x134 ], %l6
   1c61c:	80 a5 80 1b 	cmp  %l6, %i3
   1c620:	14 80 01 0b 	bg  1ca4c <encode_mcu_AC_refine+0x500>
   1c624:	ba 00 80 01 	add  %g2, %g1, %i5
   1c628:	83 2d a0 02 	sll  %l6, 2, %g1
   1c62c:	82 07 80 01 	add  %fp, %g1, %g1
   1c630:	ea 00 7e f8 	ld  [ %g1 + -264 ], %l5
   1c634:	80 a5 60 00 	cmp  %l5, 0
   1c638:	12 80 00 5f 	bne  1c7b4 <encode_mcu_AC_refine+0x268>
   1c63c:	80 a5 e0 0f 	cmp  %l7, 0xf
   1c640:	10 80 00 ff 	b  1ca3c <encode_mcu_AC_refine+0x4f0>
   1c644:	ae 05 e0 01 	inc  %l7
   1c648:	7f ff fc 5f 	call  1b7c4 <emit_eobrun>
   1c64c:	90 10 00 14 	mov  %l4, %o0
   1c650:	c4 05 20 34 	ld  [ %l4 + 0x34 ], %g2
   1c654:	c2 05 20 0c 	ld  [ %l4 + 0xc ], %g1
   1c658:	80 a0 60 00 	cmp  %g1, 0
   1c65c:	02 80 00 09 	be  1c680 <encode_mcu_AC_refine+0x134>
   1c660:	88 10 20 f0 	mov  0xf0, %g4
   1c664:	83 28 a0 02 	sll  %g2, 2, %g1
   1c668:	82 00 40 14 	add  %g1, %l4, %g1
   1c66c:	c4 00 60 5c 	ld  [ %g1 + 0x5c ], %g2
   1c670:	c2 00 a3 c0 	ld  [ %g2 + 0x3c0 ], %g1
   1c674:	82 00 60 01 	inc  %g1
   1c678:	10 80 00 47 	b  1c794 <encode_mcu_AC_refine+0x248>
   1c67c:	c2 20 a3 c0 	st  %g1, [ %g2 + 0x3c0 ]
   1c680:	83 28 a0 02 	sll  %g2, 2, %g1
   1c684:	82 00 40 14 	add  %g1, %l4, %g1
   1c688:	c6 00 60 4c 	ld  [ %g1 + 0x4c ], %g3
   1c68c:	a0 10 00 14 	mov  %l4, %l0
   1c690:	85 29 20 02 	sll  %g4, 2, %g2
   1c694:	82 01 00 03 	add  %g4, %g3, %g1
   1c698:	e2 48 64 00 	ldsb  [ %g1 + 0x400 ], %l1
   1c69c:	e4 00 c0 02 	ld  [ %g3 + %g2 ], %l2
   1c6a0:	80 a4 60 00 	cmp  %l1, 0
   1c6a4:	12 80 00 0b 	bne  1c6d0 <encode_mcu_AC_refine+0x184>
   1c6a8:	e6 05 20 1c 	ld  [ %l4 + 0x1c ], %l3
   1c6ac:	c2 05 20 20 	ld  [ %l4 + 0x20 ], %g1
   1c6b0:	c4 00 40 00 	ld  [ %g1 ], %g2
   1c6b4:	82 10 20 27 	mov  0x27, %g1
   1c6b8:	c2 20 a0 14 	st  %g1, [ %g2 + 0x14 ]
   1c6bc:	d0 05 20 20 	ld  [ %l4 + 0x20 ], %o0
   1c6c0:	c2 02 00 00 	ld  [ %o0 ], %g1
   1c6c4:	c2 00 40 00 	ld  [ %g1 ], %g1
   1c6c8:	9f c0 40 00 	call  %g1
   1c6cc:	01 00 00 00 	nop 
   1c6d0:	c2 04 20 0c 	ld  [ %l0 + 0xc ], %g1
   1c6d4:	80 a0 60 00 	cmp  %g1, 0
   1c6d8:	32 80 00 30 	bne,a   1c798 <encode_mcu_AC_refine+0x24c>
   1c6dc:	ae 05 ff f0 	add  %l7, -16, %l7
   1c6e0:	84 10 20 01 	mov  1, %g2
   1c6e4:	83 28 80 11 	sll  %g2, %l1, %g1
   1c6e8:	82 00 7f ff 	add  %g1, -1, %g1
   1c6ec:	a4 0c 80 01 	and  %l2, %g1, %l2
   1c6f0:	a6 04 c0 11 	add  %l3, %l1, %l3
   1c6f4:	82 10 20 18 	mov  0x18, %g1
   1c6f8:	82 20 40 13 	sub  %g1, %l3, %g1
   1c6fc:	a5 2c 80 01 	sll  %l2, %g1, %l2
   1c700:	c2 04 20 18 	ld  [ %l0 + 0x18 ], %g1
   1c704:	80 a4 e0 07 	cmp  %l3, 7
   1c708:	04 80 00 21 	ble  1c78c <encode_mcu_AC_refine+0x240>
   1c70c:	a4 14 80 01 	or  %l2, %g1, %l2
   1c710:	83 3c a0 10 	sra  %l2, 0x10, %g1
   1c714:	a2 08 60 ff 	and  %g1, 0xff, %l1
   1c718:	c2 04 20 10 	ld  [ %l0 + 0x10 ], %g1
   1c71c:	e2 28 40 00 	stb  %l1, [ %g1 ]
   1c720:	82 00 60 01 	inc  %g1
   1c724:	c2 24 20 10 	st  %g1, [ %l0 + 0x10 ]
   1c728:	c2 04 20 14 	ld  [ %l0 + 0x14 ], %g1
   1c72c:	82 00 7f ff 	add  %g1, -1, %g1
   1c730:	80 a0 60 00 	cmp  %g1, 0
   1c734:	12 80 00 04 	bne  1c744 <encode_mcu_AC_refine+0x1f8>
   1c738:	c2 24 20 14 	st  %g1, [ %l0 + 0x14 ]
   1c73c:	7f ff fb 9b 	call  1b5a8 <dump_buffer>
   1c740:	90 10 00 10 	mov  %l0, %o0
   1c744:	80 a4 60 ff 	cmp  %l1, 0xff
   1c748:	32 80 00 0e 	bne,a   1c780 <encode_mcu_AC_refine+0x234>
   1c74c:	a6 04 ff f8 	add  %l3, -8, %l3
   1c750:	c2 04 20 10 	ld  [ %l0 + 0x10 ], %g1
   1c754:	c0 28 40 00 	clrb  [ %g1 ]
   1c758:	82 00 60 01 	inc  %g1
   1c75c:	c2 24 20 10 	st  %g1, [ %l0 + 0x10 ]
   1c760:	c2 04 20 14 	ld  [ %l0 + 0x14 ], %g1
   1c764:	82 00 7f ff 	add  %g1, -1, %g1
   1c768:	80 a0 60 00 	cmp  %g1, 0
   1c76c:	12 80 00 04 	bne  1c77c <encode_mcu_AC_refine+0x230>
   1c770:	c2 24 20 14 	st  %g1, [ %l0 + 0x14 ]
   1c774:	7f ff fb 8d 	call  1b5a8 <dump_buffer>
   1c778:	90 10 00 10 	mov  %l0, %o0
   1c77c:	a6 04 ff f8 	add  %l3, -8, %l3
   1c780:	80 a4 e0 07 	cmp  %l3, 7
   1c784:	14 bf ff e3 	bg  1c710 <encode_mcu_AC_refine+0x1c4>
   1c788:	a5 2c a0 08 	sll  %l2, 8, %l2
   1c78c:	e4 24 20 18 	st  %l2, [ %l0 + 0x18 ]
   1c790:	e6 24 20 1c 	st  %l3, [ %l0 + 0x1c ]
   1c794:	ae 05 ff f0 	add  %l7, -16, %l7
   1c798:	90 10 00 14 	mov  %l4, %o0
   1c79c:	92 10 00 1d 	mov  %i5, %o1
   1c7a0:	7f ff fb ce 	call  1b6d8 <emit_buffered_bits>
   1c7a4:	94 10 00 1c 	mov  %i4, %o2
   1c7a8:	fa 05 20 40 	ld  [ %l4 + 0x40 ], %i5
   1c7ac:	b8 10 20 00 	clr  %i4
   1c7b0:	80 a5 e0 0f 	cmp  %l7, 0xf
   1c7b4:	14 80 00 03 	bg  1c7c0 <encode_mcu_AC_refine+0x274>
   1c7b8:	84 10 20 01 	mov  1, %g2
   1c7bc:	84 10 20 00 	clr  %g2
   1c7c0:	80 a5 80 1a 	cmp  %l6, %i2
   1c7c4:	04 80 00 03 	ble  1c7d0 <encode_mcu_AC_refine+0x284>
   1c7c8:	82 10 20 01 	mov  1, %g1
   1c7cc:	82 10 20 00 	clr  %g1
   1c7d0:	80 88 80 01 	btst  %g2, %g1
   1c7d4:	12 bf ff 9d 	bne  1c648 <encode_mcu_AC_refine+0xfc>
   1c7d8:	80 a5 60 01 	cmp  %l5, 1
   1c7dc:	04 80 00 05 	ble  1c7f0 <encode_mcu_AC_refine+0x2a4>
   1c7e0:	82 0d 60 01 	and  %l5, 1, %g1
   1c7e4:	c2 2f 00 1d 	stb  %g1, [ %i4 + %i5 ]
   1c7e8:	10 80 00 95 	b  1ca3c <encode_mcu_AC_refine+0x4f0>
   1c7ec:	b8 07 20 01 	inc  %i4
   1c7f0:	7f ff fb f5 	call  1b7c4 <emit_eobrun>
   1c7f4:	90 10 00 14 	mov  %l4, %o0
   1c7f8:	c4 05 20 34 	ld  [ %l4 + 0x34 ], %g2
   1c7fc:	89 2d e0 04 	sll  %l7, 4, %g4
   1c800:	c2 05 20 0c 	ld  [ %l4 + 0xc ], %g1
   1c804:	80 a0 60 00 	cmp  %g1, 0
   1c808:	02 80 00 0a 	be  1c830 <encode_mcu_AC_refine+0x2e4>
   1c80c:	88 01 20 01 	inc  %g4
   1c810:	83 28 a0 02 	sll  %g2, 2, %g1
   1c814:	82 00 40 14 	add  %g1, %l4, %g1
   1c818:	c6 00 60 5c 	ld  [ %g1 + 0x5c ], %g3
   1c81c:	85 29 20 02 	sll  %g4, 2, %g2
   1c820:	c2 00 c0 02 	ld  [ %g3 + %g2 ], %g1
   1c824:	82 00 60 01 	inc  %g1
   1c828:	10 80 00 47 	b  1c944 <encode_mcu_AC_refine+0x3f8>
   1c82c:	c2 20 c0 02 	st  %g1, [ %g3 + %g2 ]
   1c830:	83 28 a0 02 	sll  %g2, 2, %g1
   1c834:	82 00 40 14 	add  %g1, %l4, %g1
   1c838:	c6 00 60 4c 	ld  [ %g1 + 0x4c ], %g3
   1c83c:	a0 10 00 14 	mov  %l4, %l0
   1c840:	85 29 20 02 	sll  %g4, 2, %g2
   1c844:	82 01 00 03 	add  %g4, %g3, %g1
   1c848:	e2 48 64 00 	ldsb  [ %g1 + 0x400 ], %l1
   1c84c:	e4 00 c0 02 	ld  [ %g3 + %g2 ], %l2
   1c850:	80 a4 60 00 	cmp  %l1, 0
   1c854:	12 80 00 0b 	bne  1c880 <encode_mcu_AC_refine+0x334>
   1c858:	e6 05 20 1c 	ld  [ %l4 + 0x1c ], %l3
   1c85c:	c2 05 20 20 	ld  [ %l4 + 0x20 ], %g1
   1c860:	c4 00 40 00 	ld  [ %g1 ], %g2
   1c864:	82 10 20 27 	mov  0x27, %g1
   1c868:	c2 20 a0 14 	st  %g1, [ %g2 + 0x14 ]
   1c86c:	d0 05 20 20 	ld  [ %l4 + 0x20 ], %o0
   1c870:	c2 02 00 00 	ld  [ %o0 ], %g1
   1c874:	c2 00 40 00 	ld  [ %g1 ], %g1
   1c878:	9f c0 40 00 	call  %g1
   1c87c:	01 00 00 00 	nop 
   1c880:	c2 04 20 0c 	ld  [ %l0 + 0xc ], %g1
   1c884:	80 a0 60 00 	cmp  %g1, 0
   1c888:	12 80 00 30 	bne  1c948 <encode_mcu_AC_refine+0x3fc>
   1c88c:	85 2d a0 02 	sll  %l6, 2, %g2
   1c890:	84 10 20 01 	mov  1, %g2
   1c894:	83 28 80 11 	sll  %g2, %l1, %g1
   1c898:	82 00 7f ff 	add  %g1, -1, %g1
   1c89c:	a4 0c 80 01 	and  %l2, %g1, %l2
   1c8a0:	a6 04 c0 11 	add  %l3, %l1, %l3
   1c8a4:	82 10 20 18 	mov  0x18, %g1
   1c8a8:	82 20 40 13 	sub  %g1, %l3, %g1
   1c8ac:	a5 2c 80 01 	sll  %l2, %g1, %l2
   1c8b0:	c2 04 20 18 	ld  [ %l0 + 0x18 ], %g1
   1c8b4:	80 a4 e0 07 	cmp  %l3, 7
   1c8b8:	04 80 00 21 	ble  1c93c <encode_mcu_AC_refine+0x3f0>
   1c8bc:	a4 14 80 01 	or  %l2, %g1, %l2
   1c8c0:	83 3c a0 10 	sra  %l2, 0x10, %g1
   1c8c4:	a2 08 60 ff 	and  %g1, 0xff, %l1
   1c8c8:	c2 04 20 10 	ld  [ %l0 + 0x10 ], %g1
   1c8cc:	e2 28 40 00 	stb  %l1, [ %g1 ]
   1c8d0:	82 00 60 01 	inc  %g1
   1c8d4:	c2 24 20 10 	st  %g1, [ %l0 + 0x10 ]
   1c8d8:	c2 04 20 14 	ld  [ %l0 + 0x14 ], %g1
   1c8dc:	82 00 7f ff 	add  %g1, -1, %g1
   1c8e0:	80 a0 60 00 	cmp  %g1, 0
   1c8e4:	12 80 00 04 	bne  1c8f4 <encode_mcu_AC_refine+0x3a8>
   1c8e8:	c2 24 20 14 	st  %g1, [ %l0 + 0x14 ]
   1c8ec:	7f ff fb 2f 	call  1b5a8 <dump_buffer>
   1c8f0:	90 10 00 10 	mov  %l0, %o0
   1c8f4:	80 a4 60 ff 	cmp  %l1, 0xff
   1c8f8:	32 80 00 0e 	bne,a   1c930 <encode_mcu_AC_refine+0x3e4>
   1c8fc:	a6 04 ff f8 	add  %l3, -8, %l3
   1c900:	c2 04 20 10 	ld  [ %l0 + 0x10 ], %g1
   1c904:	c0 28 40 00 	clrb  [ %g1 ]
   1c908:	82 00 60 01 	inc  %g1
   1c90c:	c2 24 20 10 	st  %g1, [ %l0 + 0x10 ]
   1c910:	c2 04 20 14 	ld  [ %l0 + 0x14 ], %g1
   1c914:	82 00 7f ff 	add  %g1, -1, %g1
   1c918:	80 a0 60 00 	cmp  %g1, 0
   1c91c:	12 80 00 04 	bne  1c92c <encode_mcu_AC_refine+0x3e0>
   1c920:	c2 24 20 14 	st  %g1, [ %l0 + 0x14 ]
   1c924:	7f ff fb 21 	call  1b5a8 <dump_buffer>
   1c928:	90 10 00 10 	mov  %l0, %o0
   1c92c:	a6 04 ff f8 	add  %l3, -8, %l3
   1c930:	80 a4 e0 07 	cmp  %l3, 7
   1c934:	14 bf ff e3 	bg  1c8c0 <encode_mcu_AC_refine+0x374>
   1c938:	a5 2c a0 08 	sll  %l2, 8, %l2
   1c93c:	e4 24 20 18 	st  %l2, [ %l0 + 0x18 ]
   1c940:	e6 24 20 1c 	st  %l3, [ %l0 + 0x1c ]
   1c944:	85 2d a0 02 	sll  %l6, 2, %g2
   1c948:	03 00 00 87 	sethi  %hi(0x21c00), %g1
   1c94c:	82 10 63 c4 	or  %g1, 0x3c4, %g1	! 21fc4 <jpeg_natural_order>
   1c950:	c2 00 40 02 	ld  [ %g1 + %g2 ], %g1
   1c954:	82 00 40 01 	add  %g1, %g1, %g1
   1c958:	c2 56 40 01 	ldsh  [ %i1 + %g1 ], %g1
   1c95c:	82 38 00 01 	xnor  %g0, %g1, %g1
   1c960:	a0 10 00 14 	mov  %l4, %l0
   1c964:	a3 30 60 1f 	srl  %g1, 0x1f, %l1
   1c968:	c2 05 20 0c 	ld  [ %l4 + 0xc ], %g1
   1c96c:	80 a0 60 00 	cmp  %g1, 0
   1c970:	12 80 00 2c 	bne  1ca20 <encode_mcu_AC_refine+0x4d4>
   1c974:	e4 05 20 1c 	ld  [ %l4 + 0x1c ], %l2
   1c978:	a2 0c 60 01 	and  %l1, 1, %l1
   1c97c:	a4 04 a0 01 	inc  %l2
   1c980:	82 10 20 18 	mov  0x18, %g1
   1c984:	82 20 40 12 	sub  %g1, %l2, %g1
   1c988:	a3 2c 40 01 	sll  %l1, %g1, %l1
   1c98c:	c2 05 20 18 	ld  [ %l4 + 0x18 ], %g1
   1c990:	80 a4 a0 07 	cmp  %l2, 7
   1c994:	04 80 00 21 	ble  1ca18 <encode_mcu_AC_refine+0x4cc>
   1c998:	a2 14 40 01 	or  %l1, %g1, %l1
   1c99c:	83 3c 60 10 	sra  %l1, 0x10, %g1
   1c9a0:	a6 08 60 ff 	and  %g1, 0xff, %l3
   1c9a4:	c2 04 20 10 	ld  [ %l0 + 0x10 ], %g1
   1c9a8:	e6 28 40 00 	stb  %l3, [ %g1 ]
   1c9ac:	82 00 60 01 	inc  %g1
   1c9b0:	c2 24 20 10 	st  %g1, [ %l0 + 0x10 ]
   1c9b4:	c2 04 20 14 	ld  [ %l0 + 0x14 ], %g1
   1c9b8:	82 00 7f ff 	add  %g1, -1, %g1
   1c9bc:	80 a0 60 00 	cmp  %g1, 0
   1c9c0:	12 80 00 04 	bne  1c9d0 <encode_mcu_AC_refine+0x484>
   1c9c4:	c2 24 20 14 	st  %g1, [ %l0 + 0x14 ]
   1c9c8:	7f ff fa f8 	call  1b5a8 <dump_buffer>
   1c9cc:	90 10 00 10 	mov  %l0, %o0
   1c9d0:	80 a4 e0 ff 	cmp  %l3, 0xff
   1c9d4:	32 80 00 0e 	bne,a   1ca0c <encode_mcu_AC_refine+0x4c0>
   1c9d8:	a4 04 bf f8 	add  %l2, -8, %l2
   1c9dc:	c2 04 20 10 	ld  [ %l0 + 0x10 ], %g1
   1c9e0:	c0 28 40 00 	clrb  [ %g1 ]
   1c9e4:	82 00 60 01 	inc  %g1
   1c9e8:	c2 24 20 10 	st  %g1, [ %l0 + 0x10 ]
   1c9ec:	c2 04 20 14 	ld  [ %l0 + 0x14 ], %g1
   1c9f0:	82 00 7f ff 	add  %g1, -1, %g1
   1c9f4:	80 a0 60 00 	cmp  %g1, 0
   1c9f8:	12 80 00 04 	bne  1ca08 <encode_mcu_AC_refine+0x4bc>
   1c9fc:	c2 24 20 14 	st  %g1, [ %l0 + 0x14 ]
   1ca00:	7f ff fa ea 	call  1b5a8 <dump_buffer>
   1ca04:	90 10 00 10 	mov  %l0, %o0
   1ca08:	a4 04 bf f8 	add  %l2, -8, %l2
   1ca0c:	80 a4 a0 07 	cmp  %l2, 7
   1ca10:	14 bf ff e3 	bg  1c99c <encode_mcu_AC_refine+0x450>
   1ca14:	a3 2c 60 08 	sll  %l1, 8, %l1
   1ca18:	e2 24 20 18 	st  %l1, [ %l0 + 0x18 ]
   1ca1c:	e4 24 20 1c 	st  %l2, [ %l0 + 0x1c ]
   1ca20:	90 10 00 14 	mov  %l4, %o0
   1ca24:	92 10 00 1d 	mov  %i5, %o1
   1ca28:	7f ff fb 2c 	call  1b6d8 <emit_buffered_bits>
   1ca2c:	94 10 00 1c 	mov  %i4, %o2
   1ca30:	fa 05 20 40 	ld  [ %l4 + 0x40 ], %i5
   1ca34:	b8 10 20 00 	clr  %i4
   1ca38:	ae 10 20 00 	clr  %l7
   1ca3c:	ac 05 a0 01 	inc  %l6
   1ca40:	80 a5 80 1b 	cmp  %l6, %i3
   1ca44:	04 bf fe fa 	ble  1c62c <encode_mcu_AC_refine+0xe0>
   1ca48:	83 2d a0 02 	sll  %l6, 2, %g1
   1ca4c:	83 3d e0 1f 	sra  %l7, 0x1f, %g1
   1ca50:	82 20 40 17 	sub  %g1, %l7, %g1
   1ca54:	83 30 60 1f 	srl  %g1, 0x1f, %g1
   1ca58:	80 a0 00 1c 	cmp  %g0, %i4
   1ca5c:	84 40 20 00 	addx  %g0, 0, %g2
   1ca60:	80 90 40 02 	orcc  %g1, %g2, %g0
   1ca64:	22 80 00 12 	be,a   1caac <encode_mcu_AC_refine+0x560>
   1ca68:	c4 06 20 14 	ld  [ %i0 + 0x14 ], %g2
   1ca6c:	c4 05 20 38 	ld  [ %l4 + 0x38 ], %g2
   1ca70:	84 00 a0 01 	inc  %g2
   1ca74:	c4 25 20 38 	st  %g2, [ %l4 + 0x38 ]
   1ca78:	c2 05 20 3c 	ld  [ %l4 + 0x3c ], %g1
   1ca7c:	94 07 00 01 	add  %i4, %g1, %o2
   1ca80:	03 00 00 1f 	sethi  %hi(0x7c00), %g1
   1ca84:	82 10 63 ff 	or  %g1, 0x3ff, %g1	! 7fff <_init-0x86d1>
   1ca88:	80 a0 80 01 	cmp  %g2, %g1
   1ca8c:	02 80 00 05 	be  1caa0 <encode_mcu_AC_refine+0x554>
   1ca90:	d4 25 20 3c 	st  %o2, [ %l4 + 0x3c ]
   1ca94:	80 a2 a3 a9 	cmp  %o2, 0x3a9
   1ca98:	28 80 00 05 	bleu,a   1caac <encode_mcu_AC_refine+0x560>
   1ca9c:	c4 06 20 14 	ld  [ %i0 + 0x14 ], %g2
   1caa0:	7f ff fb 49 	call  1b7c4 <emit_eobrun>
   1caa4:	90 10 00 14 	mov  %l4, %o0
   1caa8:	c4 06 20 14 	ld  [ %i0 + 0x14 ], %g2
   1caac:	c2 05 20 10 	ld  [ %l4 + 0x10 ], %g1
   1cab0:	c2 20 80 00 	st  %g1, [ %g2 ]
   1cab4:	c4 06 20 14 	ld  [ %i0 + 0x14 ], %g2
   1cab8:	c2 05 20 14 	ld  [ %l4 + 0x14 ], %g1
   1cabc:	c2 20 a0 04 	st  %g1, [ %g2 + 4 ]
   1cac0:	f0 06 20 c0 	ld  [ %i0 + 0xc0 ], %i0
   1cac4:	80 a6 20 00 	cmp  %i0, 0
   1cac8:	02 80 00 0e 	be  1cb00 <encode_mcu_AC_refine+0x5b4>
   1cacc:	01 00 00 00 	nop 
   1cad0:	c2 05 20 44 	ld  [ %l4 + 0x44 ], %g1
   1cad4:	80 a0 60 00 	cmp  %g1, 0
   1cad8:	12 80 00 09 	bne  1cafc <encode_mcu_AC_refine+0x5b0>
   1cadc:	82 00 7f ff 	add  %g1, -1, %g1
   1cae0:	f0 25 20 44 	st  %i0, [ %l4 + 0x44 ]
   1cae4:	c2 05 20 48 	ld  [ %l4 + 0x48 ], %g1
   1cae8:	82 00 60 01 	inc  %g1
   1caec:	82 08 60 07 	and  %g1, 7, %g1
   1caf0:	c2 25 20 48 	st  %g1, [ %l4 + 0x48 ]
   1caf4:	c2 05 20 44 	ld  [ %l4 + 0x44 ], %g1
   1caf8:	82 00 7f ff 	add  %g1, -1, %g1
   1cafc:	c2 25 20 44 	st  %g1, [ %l4 + 0x44 ]
   1cb00:	81 c7 e0 08 	ret 
   1cb04:	91 e8 20 01 	restore  %g0, 1, %o0

0001cb08 <finish_pass_phuff>:
   1cb08:	9d e3 bf 98 	save  %sp, -104, %sp
   1cb0c:	e0 06 21 64 	ld  [ %i0 + 0x164 ], %l0
   1cb10:	c2 06 20 14 	ld  [ %i0 + 0x14 ], %g1
   1cb14:	c2 00 40 00 	ld  [ %g1 ], %g1
   1cb18:	c2 24 20 10 	st  %g1, [ %l0 + 0x10 ]
   1cb1c:	c2 06 20 14 	ld  [ %i0 + 0x14 ], %g1
   1cb20:	c2 00 60 04 	ld  [ %g1 + 4 ], %g1
   1cb24:	c2 24 20 14 	st  %g1, [ %l0 + 0x14 ]
   1cb28:	7f ff fb 27 	call  1b7c4 <emit_eobrun>
   1cb2c:	90 10 00 10 	mov  %l0, %o0
   1cb30:	7f ff fa b6 	call  1b608 <flush_bits>
   1cb34:	90 10 00 10 	mov  %l0, %o0
   1cb38:	c4 06 20 14 	ld  [ %i0 + 0x14 ], %g2
   1cb3c:	c2 04 20 10 	ld  [ %l0 + 0x10 ], %g1
   1cb40:	c2 20 80 00 	st  %g1, [ %g2 ]
   1cb44:	c4 06 20 14 	ld  [ %i0 + 0x14 ], %g2
   1cb48:	c2 04 20 14 	ld  [ %l0 + 0x14 ], %g1
   1cb4c:	c2 20 a0 04 	st  %g1, [ %g2 + 4 ]
   1cb50:	81 c7 e0 08 	ret 
   1cb54:	81 e8 00 00 	restore 

0001cb58 <finish_pass_gather_phuff>:
   1cb58:	9d e3 bf 88 	save  %sp, -120, %sp
   1cb5c:	ea 06 21 64 	ld  [ %i0 + 0x164 ], %l5
   1cb60:	7f ff fb 19 	call  1b7c4 <emit_eobrun>
   1cb64:	90 10 00 15 	mov  %l5, %o0
   1cb68:	c2 06 21 34 	ld  [ %i0 + 0x134 ], %g1
   1cb6c:	80 a0 00 01 	cmp  %g0, %g1
   1cb70:	a6 60 3f ff 	subx  %g0, -1, %l3
   1cb74:	84 10 20 00 	clr  %g2
   1cb78:	86 10 20 00 	clr  %g3
   1cb7c:	c4 3f bf e8 	std  %g2, [ %fp + -24 ]
   1cb80:	c4 3f bf f0 	std  %g2, [ %fp + -16 ]
   1cb84:	c2 06 20 ec 	ld  [ %i0 + 0xec ], %g1
   1cb88:	80 a0 60 00 	cmp  %g1, 0
   1cb8c:	04 80 00 31 	ble  1cc50 <finish_pass_gather_phuff+0xf8>
   1cb90:	a4 10 20 00 	clr  %l2
   1cb94:	a8 07 bf f8 	add  %fp, -8, %l4
   1cb98:	83 2c a0 02 	sll  %l2, 2, %g1
   1cb9c:	82 00 40 18 	add  %g1, %i0, %g1
   1cba0:	80 a4 e0 00 	cmp  %l3, 0
   1cba4:	02 80 00 08 	be  1cbc4 <finish_pass_gather_phuff+0x6c>
   1cba8:	e0 00 60 f0 	ld  [ %g1 + 0xf0 ], %l0
   1cbac:	c2 06 21 3c 	ld  [ %i0 + 0x13c ], %g1
   1cbb0:	80 a0 60 00 	cmp  %g1, 0
   1cbb4:	32 80 00 23 	bne,a   1cc40 <finish_pass_gather_phuff+0xe8>
   1cbb8:	a4 04 a0 01 	inc  %l2
   1cbbc:	10 80 00 03 	b  1cbc8 <finish_pass_gather_phuff+0x70>
   1cbc0:	e0 04 20 14 	ld  [ %l0 + 0x14 ], %l0
   1cbc4:	e0 04 20 18 	ld  [ %l0 + 0x18 ], %l0
   1cbc8:	85 2c 20 02 	sll  %l0, 2, %g2
   1cbcc:	82 00 80 14 	add  %g2, %l4, %g1
   1cbd0:	c2 00 7f f0 	ld  [ %g1 + -16 ], %g1
   1cbd4:	80 a0 60 00 	cmp  %g1, 0
   1cbd8:	32 80 00 1a 	bne,a   1cc40 <finish_pass_gather_phuff+0xe8>
   1cbdc:	a4 04 a0 01 	inc  %l2
   1cbe0:	82 00 80 18 	add  %g2, %i0, %g1
   1cbe4:	80 a4 e0 00 	cmp  %l3, 0
   1cbe8:	12 80 00 05 	bne  1cbfc <finish_pass_gather_phuff+0xa4>
   1cbec:	a2 00 60 50 	add  %g1, 0x50, %l1
   1cbf0:	83 2c 20 02 	sll  %l0, 2, %g1
   1cbf4:	82 00 40 18 	add  %g1, %i0, %g1
   1cbf8:	a2 00 60 60 	add  %g1, 0x60, %l1
   1cbfc:	c2 04 40 00 	ld  [ %l1 ], %g1
   1cc00:	80 a0 60 00 	cmp  %g1, 0
   1cc04:	32 80 00 06 	bne,a   1cc1c <finish_pass_gather_phuff+0xc4>
   1cc08:	a1 2c 20 02 	sll  %l0, 2, %l0
   1cc0c:	40 00 04 62 	call  1dd94 <jpeg_alloc_huff_table>
   1cc10:	90 10 00 18 	mov  %i0, %o0
   1cc14:	d0 24 40 00 	st  %o0, [ %l1 ]
   1cc18:	a1 2c 20 02 	sll  %l0, 2, %l0
   1cc1c:	82 04 00 15 	add  %l0, %l5, %g1
   1cc20:	90 10 00 18 	mov  %i0, %o0
   1cc24:	d2 04 40 00 	ld  [ %l1 ], %o1
   1cc28:	7f ff f8 6a 	call  1add0 <jpeg_gen_optimal_table>
   1cc2c:	d4 00 60 5c 	ld  [ %g1 + 0x5c ], %o2
   1cc30:	a0 04 00 14 	add  %l0, %l4, %l0
   1cc34:	82 10 20 01 	mov  1, %g1
   1cc38:	c2 24 3f f0 	st  %g1, [ %l0 + -16 ]
   1cc3c:	a4 04 a0 01 	inc  %l2
   1cc40:	c2 06 20 ec 	ld  [ %i0 + 0xec ], %g1
   1cc44:	80 a0 40 12 	cmp  %g1, %l2
   1cc48:	14 bf ff d5 	bg  1cb9c <finish_pass_gather_phuff+0x44>
   1cc4c:	83 2c a0 02 	sll  %l2, 2, %g1
   1cc50:	81 c7 e0 08 	ret 
   1cc54:	81 e8 00 00 	restore 

0001cc58 <jinit_phuff_encoder>:
   1cc58:	9d e3 bf 98 	save  %sp, -104, %sp
   1cc5c:	c2 06 20 04 	ld  [ %i0 + 4 ], %g1
   1cc60:	c2 00 40 00 	ld  [ %g1 ], %g1
   1cc64:	90 10 00 18 	mov  %i0, %o0
   1cc68:	92 10 20 01 	mov  1, %o1
   1cc6c:	9f c0 40 00 	call  %g1
   1cc70:	94 10 20 6c 	mov  0x6c, %o2
   1cc74:	d0 26 21 64 	st  %o0, [ %i0 + 0x164 ]
   1cc78:	03 00 00 6c 	sethi  %hi(0x1b000), %g1
   1cc7c:	82 10 63 20 	or  %g1, 0x320, %g1	! 1b320 <start_pass_phuff>
   1cc80:	c2 22 00 00 	st  %g1, [ %o0 ]
   1cc84:	84 10 20 00 	clr  %g2
   1cc88:	83 28 a0 02 	sll  %g2, 2, %g1
   1cc8c:	82 00 40 08 	add  %g1, %o0, %g1
   1cc90:	c0 20 60 4c 	clr  [ %g1 + 0x4c ]
   1cc94:	84 00 a0 01 	inc  %g2
   1cc98:	80 a0 a0 03 	cmp  %g2, 3
   1cc9c:	04 bf ff fb 	ble  1cc88 <jinit_phuff_encoder+0x30>
   1cca0:	c0 20 60 5c 	clr  [ %g1 + 0x5c ]
   1cca4:	c0 22 20 40 	clr  [ %o0 + 0x40 ]
   1cca8:	81 c7 e0 08 	ret 
   1ccac:	81 e8 00 00 	restore 

0001ccb0 <start_pass_fdctmgr>:
   1ccb0:	9d e3 bf 98 	save  %sp, -104, %sp
   1ccb4:	f8 06 21 60 	ld  [ %i0 + 0x160 ], %i4
   1ccb8:	b6 10 20 00 	clr  %i3
   1ccbc:	c2 06 20 34 	ld  [ %i0 + 0x34 ], %g1
   1ccc0:	80 a0 60 00 	cmp  %g1, 0
   1ccc4:	04 80 00 a3 	ble  1cf50 <start_pass_fdctmgr+0x2a0>
   1ccc8:	fa 06 20 3c 	ld  [ %i0 + 0x3c ], %i5
   1cccc:	03 00 00 87 	sethi  %hi(0x21c00), %g1
   1ccd0:	b4 10 62 e0 	or  %g1, 0x2e0, %i2	! 21ee0 <aanscales.0>
   1ccd4:	03 00 00 87 	sethi  %hi(0x21c00), %g1
   1ccd8:	b2 10 63 60 	or  %g1, 0x360, %i1	! 21f60 <aanscalefactor.1>
   1ccdc:	e0 07 60 10 	ld  [ %i5 + 0x10 ], %l0
   1cce0:	80 a4 20 03 	cmp  %l0, 3
   1cce4:	18 80 00 07 	bgu  1cd00 <start_pass_fdctmgr+0x50>
   1cce8:	83 2c 20 02 	sll  %l0, 2, %g1
   1ccec:	82 00 40 18 	add  %g1, %i0, %g1
   1ccf0:	c2 00 60 40 	ld  [ %g1 + 0x40 ], %g1
   1ccf4:	80 a0 60 00 	cmp  %g1, 0
   1ccf8:	12 80 00 0c 	bne  1cd28 <start_pass_fdctmgr+0x78>
   1ccfc:	83 2c 20 02 	sll  %l0, 2, %g1
   1cd00:	c4 06 00 00 	ld  [ %i0 ], %g2
   1cd04:	82 10 20 33 	mov  0x33, %g1
   1cd08:	c2 20 a0 14 	st  %g1, [ %g2 + 0x14 ]
   1cd0c:	c2 06 00 00 	ld  [ %i0 ], %g1
   1cd10:	e0 20 60 18 	st  %l0, [ %g1 + 0x18 ]
   1cd14:	c2 06 00 00 	ld  [ %i0 ], %g1
   1cd18:	c2 00 40 00 	ld  [ %g1 ], %g1
   1cd1c:	9f c0 40 00 	call  %g1
   1cd20:	90 10 00 18 	mov  %i0, %o0
   1cd24:	83 2c 20 02 	sll  %l0, 2, %g1
   1cd28:	82 00 40 18 	add  %g1, %i0, %g1
   1cd2c:	e4 00 60 40 	ld  [ %g1 + 0x40 ], %l2
   1cd30:	c2 06 20 bc 	ld  [ %i0 + 0xbc ], %g1
   1cd34:	80 a0 60 01 	cmp  %g1, 1
   1cd38:	22 80 00 23 	be,a   1cdc4 <start_pass_fdctmgr+0x114>
   1cd3c:	83 2c 20 02 	sll  %l0, 2, %g1
   1cd40:	2a 80 00 07 	bcs,a   1cd5c <start_pass_fdctmgr+0xac>
   1cd44:	83 2c 20 02 	sll  %l0, 2, %g1
   1cd48:	80 a0 60 02 	cmp  %g1, 2
   1cd4c:	02 80 00 3c 	be  1ce3c <start_pass_fdctmgr+0x18c>
   1cd50:	83 2c 20 02 	sll  %l0, 2, %g1
   1cd54:	10 80 00 74 	b  1cf24 <start_pass_fdctmgr+0x274>
   1cd58:	c4 06 00 00 	ld  [ %i0 ], %g2
   1cd5c:	a2 00 40 1c 	add  %g1, %i4, %l1
   1cd60:	c2 04 60 0c 	ld  [ %l1 + 0xc ], %g1
   1cd64:	80 a0 60 00 	cmp  %g1, 0
   1cd68:	12 80 00 0a 	bne  1cd90 <start_pass_fdctmgr+0xe0>
   1cd6c:	83 2c 20 02 	sll  %l0, 2, %g1
   1cd70:	c2 06 20 04 	ld  [ %i0 + 4 ], %g1
   1cd74:	c2 00 40 00 	ld  [ %g1 ], %g1
   1cd78:	90 10 00 18 	mov  %i0, %o0
   1cd7c:	92 10 20 01 	mov  1, %o1
   1cd80:	9f c0 40 00 	call  %g1
   1cd84:	94 10 21 00 	mov  0x100, %o2
   1cd88:	d0 24 60 0c 	st  %o0, [ %l1 + 0xc ]
   1cd8c:	83 2c 20 02 	sll  %l0, 2, %g1
   1cd90:	82 00 40 1c 	add  %g1, %i4, %g1
   1cd94:	c8 00 60 0c 	ld  [ %g1 + 0xc ], %g4
   1cd98:	a2 10 20 00 	clr  %l1
   1cd9c:	85 2c 60 02 	sll  %l1, 2, %g2
   1cda0:	82 04 40 11 	add  %l1, %l1, %g1
   1cda4:	c2 14 80 01 	lduh  [ %l2 + %g1 ], %g1
   1cda8:	83 28 60 03 	sll  %g1, 3, %g1
   1cdac:	a2 04 60 01 	inc  %l1
   1cdb0:	80 a4 60 3f 	cmp  %l1, 0x3f
   1cdb4:	04 bf ff fa 	ble  1cd9c <start_pass_fdctmgr+0xec>
   1cdb8:	c2 21 00 02 	st  %g1, [ %g4 + %g2 ]
   1cdbc:	10 80 00 61 	b  1cf40 <start_pass_fdctmgr+0x290>
   1cdc0:	b6 06 e0 01 	inc  %i3
   1cdc4:	a2 00 40 1c 	add  %g1, %i4, %l1
   1cdc8:	c2 04 60 0c 	ld  [ %l1 + 0xc ], %g1
   1cdcc:	80 a0 60 00 	cmp  %g1, 0
   1cdd0:	12 80 00 0a 	bne  1cdf8 <start_pass_fdctmgr+0x148>
   1cdd4:	83 2c 20 02 	sll  %l0, 2, %g1
   1cdd8:	c2 06 20 04 	ld  [ %i0 + 4 ], %g1
   1cddc:	c2 00 40 00 	ld  [ %g1 ], %g1
   1cde0:	90 10 00 18 	mov  %i0, %o0
   1cde4:	92 10 20 01 	mov  1, %o1
   1cde8:	9f c0 40 00 	call  %g1
   1cdec:	94 10 21 00 	mov  0x100, %o2
   1cdf0:	d0 24 60 0c 	st  %o0, [ %l1 + 0xc ]
   1cdf4:	83 2c 20 02 	sll  %l0, 2, %g1
   1cdf8:	82 00 40 1c 	add  %g1, %i4, %g1
   1cdfc:	c8 00 60 0c 	ld  [ %g1 + 0xc ], %g4
   1ce00:	a2 10 20 00 	clr  %l1
   1ce04:	9a 10 00 1a 	mov  %i2, %o5
   1ce08:	87 2c 60 02 	sll  %l1, 2, %g3
   1ce0c:	84 04 40 11 	add  %l1, %l1, %g2
   1ce10:	c2 14 80 02 	lduh  [ %l2 + %g2 ], %g1
   1ce14:	c4 53 40 02 	ldsh  [ %o5 + %g2 ], %g2
   1ce18:	82 58 40 02 	smul  %g1, %g2, %g1
   1ce1c:	82 00 64 00 	add  %g1, 0x400, %g1
   1ce20:	83 38 60 0b 	sra  %g1, 0xb, %g1
   1ce24:	a2 04 60 01 	inc  %l1
   1ce28:	80 a4 60 3f 	cmp  %l1, 0x3f
   1ce2c:	04 bf ff f7 	ble  1ce08 <start_pass_fdctmgr+0x158>
   1ce30:	c2 21 00 03 	st  %g1, [ %g4 + %g3 ]
   1ce34:	10 80 00 43 	b  1cf40 <start_pass_fdctmgr+0x290>
   1ce38:	b6 06 e0 01 	inc  %i3
   1ce3c:	a2 00 40 1c 	add  %g1, %i4, %l1
   1ce40:	c2 04 60 20 	ld  [ %l1 + 0x20 ], %g1
   1ce44:	80 a0 60 00 	cmp  %g1, 0
   1ce48:	12 80 00 0a 	bne  1ce70 <start_pass_fdctmgr+0x1c0>
   1ce4c:	83 2c 20 02 	sll  %l0, 2, %g1
   1ce50:	c2 06 20 04 	ld  [ %i0 + 4 ], %g1
   1ce54:	c2 00 40 00 	ld  [ %g1 ], %g1
   1ce58:	90 10 00 18 	mov  %i0, %o0
   1ce5c:	92 10 20 01 	mov  1, %o1
   1ce60:	9f c0 40 00 	call  %g1
   1ce64:	94 10 21 00 	mov  0x100, %o2
   1ce68:	d0 24 60 20 	st  %o0, [ %l1 + 0x20 ]
   1ce6c:	83 2c 20 02 	sll  %l0, 2, %g1
   1ce70:	82 00 40 1c 	add  %g1, %i4, %g1
   1ce74:	ee 00 60 20 	ld  [ %g1 + 0x20 ], %l7
   1ce78:	a2 10 20 00 	clr  %l1
   1ce7c:	ac 10 20 00 	clr  %l6
   1ce80:	aa 10 00 19 	mov  %i1, %l5
   1ce84:	a6 10 20 00 	clr  %l3
   1ce88:	a9 2c 60 02 	sll  %l1, 2, %l4
   1ce8c:	82 04 40 11 	add  %l1, %l1, %g1
   1ce90:	e0 54 80 01 	ldsh  [ %l2 + %g1 ], %l0
   1ce94:	40 00 0c da 	call  201fc <__floatsidf>
   1ce98:	90 10 00 10 	mov  %l0, %o0
   1ce9c:	80 a4 20 00 	cmp  %l0, 0
   1cea0:	16 80 00 06 	bge  1ceb8 <start_pass_fdctmgr+0x208>
   1cea4:	83 2d a0 03 	sll  %l6, 3, %g1
   1cea8:	03 00 00 87 	sethi  %hi(0x21c00), %g1
   1ceac:	40 00 0b 45 	call  1fbc0 <__adddf3>
   1ceb0:	d4 18 63 a0 	ldd  [ %g1 + 0x3a0 ], %o2	! 21fa0 <aanscalefactor.1+0x40>
   1ceb4:	83 2d a0 03 	sll  %l6, 3, %g1
   1ceb8:	84 05 40 01 	add  %l5, %g1, %g2
   1cebc:	40 00 0b 6e 	call  1fc74 <__muldf3>
   1cec0:	d4 18 80 00 	ldd  [ %g2 ], %o2
   1cec4:	83 2c e0 03 	sll  %l3, 3, %g1
   1cec8:	84 05 40 01 	add  %l5, %g1, %g2
   1cecc:	40 00 0b 6a 	call  1fc74 <__muldf3>
   1ced0:	d4 18 80 00 	ldd  [ %g2 ], %o2
   1ced4:	03 00 00 87 	sethi  %hi(0x21c00), %g1
   1ced8:	40 00 0b 67 	call  1fc74 <__muldf3>
   1cedc:	d4 18 63 a8 	ldd  [ %g1 + 0x3a8 ], %o2	! 21fa8 <aanscalefactor.1+0x48>
   1cee0:	94 10 00 08 	mov  %o0, %o2
   1cee4:	96 10 00 09 	mov  %o1, %o3
   1cee8:	03 00 00 86 	sethi  %hi(0x21800), %g1
   1ceec:	40 00 0c 3e 	call  1ffe4 <__divdf3>
   1cef0:	d0 18 63 08 	ldd  [ %g1 + 0x308 ], %o0	! 21b08 <c5to8bits+0x1c0>
   1cef4:	40 00 0d 06 	call  2030c <__truncdfsf2>
   1cef8:	a2 04 60 01 	inc  %l1
   1cefc:	a6 04 e0 01 	inc  %l3
   1cf00:	80 a4 e0 07 	cmp  %l3, 7
   1cf04:	04 bf ff e1 	ble  1ce88 <start_pass_fdctmgr+0x1d8>
   1cf08:	d0 25 c0 14 	st  %o0, [ %l7 + %l4 ]
   1cf0c:	ac 05 a0 01 	inc  %l6
   1cf10:	80 a5 a0 07 	cmp  %l6, 7
   1cf14:	24 bf ff dd 	ble,a   1ce88 <start_pass_fdctmgr+0x1d8>
   1cf18:	a6 10 20 00 	clr  %l3
   1cf1c:	10 80 00 09 	b  1cf40 <start_pass_fdctmgr+0x290>
   1cf20:	b6 06 e0 01 	inc  %i3
   1cf24:	82 10 20 2f 	mov  0x2f, %g1
   1cf28:	c2 20 a0 14 	st  %g1, [ %g2 + 0x14 ]
   1cf2c:	c2 06 00 00 	ld  [ %i0 ], %g1
   1cf30:	c2 00 40 00 	ld  [ %g1 ], %g1
   1cf34:	9f c0 40 00 	call  %g1
   1cf38:	90 10 00 18 	mov  %i0, %o0
   1cf3c:	b6 06 e0 01 	inc  %i3
   1cf40:	c2 06 20 34 	ld  [ %i0 + 0x34 ], %g1
   1cf44:	80 a0 40 1b 	cmp  %g1, %i3
   1cf48:	14 bf ff 65 	bg  1ccdc <start_pass_fdctmgr+0x2c>
   1cf4c:	ba 07 60 54 	add  %i5, 0x54, %i5
   1cf50:	81 c7 e0 08 	ret 
   1cf54:	81 e8 00 00 	restore 

0001cf58 <forward_DCT>:
   1cf58:	9d e3 be 98 	save  %sp, -360, %sp
   1cf5c:	e0 07 a0 5c 	ld  [ %fp + 0x5c ], %l0
   1cf60:	c2 06 21 60 	ld  [ %i0 + 0x160 ], %g1
   1cf64:	f0 00 60 08 	ld  [ %g1 + 8 ], %i0
   1cf68:	c4 06 60 10 	ld  [ %i1 + 0x10 ], %g2
   1cf6c:	85 28 a0 02 	sll  %g2, 2, %g2
   1cf70:	84 00 80 01 	add  %g2, %g1, %g2
   1cf74:	b9 2f 20 02 	sll  %i4, 2, %i4
   1cf78:	b4 06 80 1c 	add  %i2, %i4, %i2
   1cf7c:	b8 10 20 00 	clr  %i4
   1cf80:	80 a7 00 10 	cmp  %i4, %l0
   1cf84:	1a 80 00 61 	bcc  1d108 <forward_DCT+0x1b0>
   1cf88:	f2 00 a0 0c 	ld  [ %g2 + 0xc ], %i1
   1cf8c:	a2 07 bf f8 	add  %fp, -8, %l1
   1cf90:	86 07 be f8 	add  %fp, -264, %g3
   1cf94:	88 10 20 00 	clr  %g4
   1cf98:	83 29 20 02 	sll  %g4, 2, %g1
   1cf9c:	c2 06 80 01 	ld  [ %i2 + %g1 ], %g1
   1cfa0:	84 07 40 01 	add  %i5, %g1, %g2
   1cfa4:	c2 0f 40 01 	ldub  [ %i5 + %g1 ], %g1
   1cfa8:	82 00 7f 80 	add  %g1, -128, %g1
   1cfac:	84 00 a0 01 	inc  %g2
   1cfb0:	c2 20 c0 00 	st  %g1, [ %g3 ]
   1cfb4:	86 00 e0 04 	add  %g3, 4, %g3
   1cfb8:	c2 08 80 00 	ldub  [ %g2 ], %g1
   1cfbc:	82 00 7f 80 	add  %g1, -128, %g1
   1cfc0:	84 00 a0 01 	inc  %g2
   1cfc4:	c2 20 c0 00 	st  %g1, [ %g3 ]
   1cfc8:	86 00 e0 04 	add  %g3, 4, %g3
   1cfcc:	c2 08 80 00 	ldub  [ %g2 ], %g1
   1cfd0:	82 00 7f 80 	add  %g1, -128, %g1
   1cfd4:	84 00 a0 01 	inc  %g2
   1cfd8:	c2 20 c0 00 	st  %g1, [ %g3 ]
   1cfdc:	86 00 e0 04 	add  %g3, 4, %g3
   1cfe0:	c2 08 80 00 	ldub  [ %g2 ], %g1
   1cfe4:	82 00 7f 80 	add  %g1, -128, %g1
   1cfe8:	84 00 a0 01 	inc  %g2
   1cfec:	c2 20 c0 00 	st  %g1, [ %g3 ]
   1cff0:	86 00 e0 04 	add  %g3, 4, %g3
   1cff4:	c2 08 80 00 	ldub  [ %g2 ], %g1
   1cff8:	82 00 7f 80 	add  %g1, -128, %g1
   1cffc:	84 00 a0 01 	inc  %g2
   1d000:	c2 20 c0 00 	st  %g1, [ %g3 ]
   1d004:	86 00 e0 04 	add  %g3, 4, %g3
   1d008:	c2 08 80 00 	ldub  [ %g2 ], %g1
   1d00c:	82 00 7f 80 	add  %g1, -128, %g1
   1d010:	84 00 a0 01 	inc  %g2
   1d014:	c2 20 c0 00 	st  %g1, [ %g3 ]
   1d018:	86 00 e0 04 	add  %g3, 4, %g3
   1d01c:	c2 08 80 00 	ldub  [ %g2 ], %g1
   1d020:	82 00 7f 80 	add  %g1, -128, %g1
   1d024:	c2 20 c0 00 	st  %g1, [ %g3 ]
   1d028:	86 00 e0 04 	add  %g3, 4, %g3
   1d02c:	c2 08 a0 01 	ldub  [ %g2 + 1 ], %g1
   1d030:	82 00 7f 80 	add  %g1, -128, %g1
   1d034:	c2 20 c0 00 	st  %g1, [ %g3 ]
   1d038:	88 01 20 01 	inc  %g4
   1d03c:	80 a1 20 07 	cmp  %g4, 7
   1d040:	04 bf ff d6 	ble  1cf98 <forward_DCT+0x40>
   1d044:	86 00 e0 04 	add  %g3, 4, %g3
   1d048:	9f c6 00 00 	call  %i0
   1d04c:	90 07 be f8 	add  %fp, -264, %o0
   1d050:	83 2f 20 07 	sll  %i4, 7, %g1
   1d054:	98 00 40 1b 	add  %g1, %i3, %o4
   1d058:	88 10 20 00 	clr  %g4
   1d05c:	9a 10 00 11 	mov  %l1, %o5
   1d060:	83 29 20 02 	sll  %g4, 2, %g1
   1d064:	c6 06 40 01 	ld  [ %i1 + %g1 ], %g3
   1d068:	82 00 40 0d 	add  %g1, %o5, %g1
   1d06c:	c4 00 7f 00 	ld  [ %g1 + -256 ], %g2
   1d070:	80 a0 a0 00 	cmp  %g2, 0
   1d074:	16 80 00 10 	bge  1d0b4 <forward_DCT+0x15c>
   1d078:	83 38 e0 01 	sra  %g3, 1, %g1
   1d07c:	84 20 40 02 	sub  %g1, %g2, %g2
   1d080:	80 a0 80 03 	cmp  %g2, %g3
   1d084:	26 80 00 0a 	bl,a   1d0ac <forward_DCT+0x154>
   1d088:	84 10 20 00 	clr  %g2
   1d08c:	83 38 a0 1f 	sra  %g2, 0x1f, %g1
   1d090:	81 80 60 00 	mov  %g1, %y
   1d094:	01 00 00 00 	nop 
   1d098:	01 00 00 00 	nop 
   1d09c:	01 00 00 00 	nop 
   1d0a0:	84 78 80 03 	sdiv  %g2, %g3, %g2
   1d0a4:	10 80 00 10 	b  1d0e4 <forward_DCT+0x18c>
   1d0a8:	84 20 00 02 	neg  %g2
   1d0ac:	10 80 00 0e 	b  1d0e4 <forward_DCT+0x18c>
   1d0b0:	84 20 00 02 	neg  %g2
   1d0b4:	84 00 80 01 	add  %g2, %g1, %g2
   1d0b8:	80 a0 80 03 	cmp  %g2, %g3
   1d0bc:	26 80 00 0a 	bl,a   1d0e4 <forward_DCT+0x18c>
   1d0c0:	84 10 20 00 	clr  %g2
   1d0c4:	83 38 a0 1f 	sra  %g2, 0x1f, %g1
   1d0c8:	81 80 60 00 	mov  %g1, %y
   1d0cc:	01 00 00 00 	nop 
   1d0d0:	01 00 00 00 	nop 
   1d0d4:	01 00 00 00 	nop 
   1d0d8:	84 78 80 03 	sdiv  %g2, %g3, %g2
   1d0dc:	10 80 00 03 	b  1d0e8 <forward_DCT+0x190>
   1d0e0:	82 01 00 04 	add  %g4, %g4, %g1
   1d0e4:	82 01 00 04 	add  %g4, %g4, %g1
   1d0e8:	88 01 20 01 	inc  %g4
   1d0ec:	80 a1 20 3f 	cmp  %g4, 0x3f
   1d0f0:	04 bf ff dc 	ble  1d060 <forward_DCT+0x108>
   1d0f4:	c4 33 00 01 	sth  %g2, [ %o4 + %g1 ]
   1d0f8:	b8 07 20 01 	inc  %i4
   1d0fc:	80 a7 00 10 	cmp  %i4, %l0
   1d100:	0a bf ff a4 	bcs  1cf90 <forward_DCT+0x38>
   1d104:	ba 07 60 08 	add  %i5, 8, %i5
   1d108:	81 c7 e0 08 	ret 
   1d10c:	81 e8 00 00 	restore 

0001d110 <forward_DCT_float>:
   1d110:	9d e3 be 98 	save  %sp, -360, %sp
   1d114:	e8 07 a0 5c 	ld  [ %fp + 0x5c ], %l4
   1d118:	c2 06 21 60 	ld  [ %i0 + 0x160 ], %g1
   1d11c:	ea 00 60 1c 	ld  [ %g1 + 0x1c ], %l5
   1d120:	c4 06 60 10 	ld  [ %i1 + 0x10 ], %g2
   1d124:	85 28 a0 02 	sll  %g2, 2, %g2
   1d128:	84 00 80 01 	add  %g2, %g1, %g2
   1d12c:	e4 00 a0 20 	ld  [ %g2 + 0x20 ], %l2
   1d130:	b9 2f 20 02 	sll  %i4, 2, %i4
   1d134:	a6 10 20 00 	clr  %l3
   1d138:	80 a4 c0 14 	cmp  %l3, %l4
   1d13c:	1a 80 00 54 	bcc  1d28c <forward_DCT_float+0x17c>
   1d140:	b4 06 80 1c 	add  %i2, %i4, %i2
   1d144:	ac 07 bf f8 	add  %fp, -8, %l6
   1d148:	b8 07 be f8 	add  %fp, -264, %i4
   1d14c:	a2 10 20 00 	clr  %l1
   1d150:	83 2c 60 02 	sll  %l1, 2, %g1
   1d154:	c2 06 80 01 	ld  [ %i2 + %g1 ], %g1
   1d158:	a0 07 40 01 	add  %i5, %g1, %l0
   1d15c:	d0 0f 40 01 	ldub  [ %i5 + %g1 ], %o0
   1d160:	40 00 09 87 	call  1f77c <__floatsisf>
   1d164:	90 02 3f 80 	add  %o0, -128, %o0
   1d168:	a0 04 20 01 	inc  %l0
   1d16c:	d0 27 00 00 	st  %o0, [ %i4 ]
   1d170:	b8 07 20 04 	add  %i4, 4, %i4
   1d174:	d0 0c 00 00 	ldub  [ %l0 ], %o0
   1d178:	40 00 09 81 	call  1f77c <__floatsisf>
   1d17c:	90 02 3f 80 	add  %o0, -128, %o0
   1d180:	a0 04 20 01 	inc  %l0
   1d184:	d0 27 00 00 	st  %o0, [ %i4 ]
   1d188:	b8 07 20 04 	add  %i4, 4, %i4
   1d18c:	d0 0c 00 00 	ldub  [ %l0 ], %o0
   1d190:	40 00 09 7b 	call  1f77c <__floatsisf>
   1d194:	90 02 3f 80 	add  %o0, -128, %o0
   1d198:	a0 04 20 01 	inc  %l0
   1d19c:	d0 27 00 00 	st  %o0, [ %i4 ]
   1d1a0:	b8 07 20 04 	add  %i4, 4, %i4
   1d1a4:	d0 0c 00 00 	ldub  [ %l0 ], %o0
   1d1a8:	40 00 09 75 	call  1f77c <__floatsisf>
   1d1ac:	90 02 3f 80 	add  %o0, -128, %o0
   1d1b0:	a0 04 20 01 	inc  %l0
   1d1b4:	d0 27 00 00 	st  %o0, [ %i4 ]
   1d1b8:	b8 07 20 04 	add  %i4, 4, %i4
   1d1bc:	d0 0c 00 00 	ldub  [ %l0 ], %o0
   1d1c0:	40 00 09 6f 	call  1f77c <__floatsisf>
   1d1c4:	90 02 3f 80 	add  %o0, -128, %o0
   1d1c8:	a0 04 20 01 	inc  %l0
   1d1cc:	d0 27 00 00 	st  %o0, [ %i4 ]
   1d1d0:	b8 07 20 04 	add  %i4, 4, %i4
   1d1d4:	d0 0c 00 00 	ldub  [ %l0 ], %o0
   1d1d8:	40 00 09 69 	call  1f77c <__floatsisf>
   1d1dc:	90 02 3f 80 	add  %o0, -128, %o0
   1d1e0:	a0 04 20 01 	inc  %l0
   1d1e4:	d0 27 00 00 	st  %o0, [ %i4 ]
   1d1e8:	b8 07 20 04 	add  %i4, 4, %i4
   1d1ec:	d0 0c 00 00 	ldub  [ %l0 ], %o0
   1d1f0:	40 00 09 63 	call  1f77c <__floatsisf>
   1d1f4:	90 02 3f 80 	add  %o0, -128, %o0
   1d1f8:	d0 27 00 00 	st  %o0, [ %i4 ]
   1d1fc:	b8 07 20 04 	add  %i4, 4, %i4
   1d200:	d0 0c 20 01 	ldub  [ %l0 + 1 ], %o0
   1d204:	40 00 09 5e 	call  1f77c <__floatsisf>
   1d208:	90 02 3f 80 	add  %o0, -128, %o0
   1d20c:	d0 27 00 00 	st  %o0, [ %i4 ]
   1d210:	a2 04 60 01 	inc  %l1
   1d214:	80 a4 60 07 	cmp  %l1, 7
   1d218:	04 bf ff ce 	ble  1d150 <forward_DCT_float+0x40>
   1d21c:	b8 07 20 04 	add  %i4, 4, %i4
   1d220:	9f c5 40 00 	call  %l5
   1d224:	90 07 be f8 	add  %fp, -264, %o0
   1d228:	83 2c e0 07 	sll  %l3, 7, %g1
   1d22c:	a2 00 40 1b 	add  %g1, %i3, %l1
   1d230:	b8 10 20 00 	clr  %i4
   1d234:	b0 10 00 16 	mov  %l6, %i0
   1d238:	03 00 00 87 	sethi  %hi(0x21c00), %g1
   1d23c:	f2 00 63 b0 	ld  [ %g1 + 0x3b0 ], %i1	! 21fb0 <aanscalefactor.1+0x50>
   1d240:	85 2f 20 02 	sll  %i4, 2, %g2
   1d244:	82 00 80 18 	add  %g2, %i0, %g1
   1d248:	d0 00 7f 00 	ld  [ %g1 + -256 ], %o0
   1d24c:	40 00 08 cb 	call  1f578 <__mulsf3>
   1d250:	d2 04 80 02 	ld  [ %l2 + %g2 ], %o1
   1d254:	a0 07 00 1c 	add  %i4, %i4, %l0
   1d258:	40 00 08 9b 	call  1f4c4 <__addsf3>
   1d25c:	92 10 00 19 	mov  %i1, %o1
   1d260:	40 00 09 78 	call  1f840 <__fixsfsi>
   1d264:	b8 07 20 01 	inc  %i4
   1d268:	03 3f ff f0 	sethi  %hi(0xffffc000), %g1
   1d26c:	90 02 00 01 	add  %o0, %g1, %o0
   1d270:	80 a7 20 3f 	cmp  %i4, 0x3f
   1d274:	04 bf ff f3 	ble  1d240 <forward_DCT_float+0x130>
   1d278:	d0 34 40 10 	sth  %o0, [ %l1 + %l0 ]
   1d27c:	a6 04 e0 01 	inc  %l3
   1d280:	80 a4 c0 14 	cmp  %l3, %l4
   1d284:	0a bf ff b1 	bcs  1d148 <forward_DCT_float+0x38>
   1d288:	ba 07 60 08 	add  %i5, 8, %i5
   1d28c:	81 c7 e0 08 	ret 
   1d290:	81 e8 00 00 	restore 

0001d294 <jinit_forward_dct>:
   1d294:	9d e3 bf 98 	save  %sp, -104, %sp
   1d298:	c2 06 20 04 	ld  [ %i0 + 4 ], %g1
   1d29c:	c2 00 40 00 	ld  [ %g1 ], %g1
   1d2a0:	90 10 00 18 	mov  %i0, %o0
   1d2a4:	92 10 20 01 	mov  1, %o1
   1d2a8:	9f c0 40 00 	call  %g1
   1d2ac:	94 10 20 30 	mov  0x30, %o2
   1d2b0:	d0 26 21 60 	st  %o0, [ %i0 + 0x160 ]
   1d2b4:	03 00 00 73 	sethi  %hi(0x1cc00), %g1
   1d2b8:	82 10 60 b0 	or  %g1, 0xb0, %g1	! 1ccb0 <start_pass_fdctmgr>
   1d2bc:	c2 22 00 00 	st  %g1, [ %o0 ]
   1d2c0:	c2 06 20 bc 	ld  [ %i0 + 0xbc ], %g1
   1d2c4:	80 a0 60 01 	cmp  %g1, 1
   1d2c8:	02 80 00 10 	be  1d308 <jinit_forward_dct+0x74>
   1d2cc:	a0 10 00 08 	mov  %o0, %l0
   1d2d0:	80 a0 60 01 	cmp  %g1, 1
   1d2d4:	2a 80 00 07 	bcs,a   1d2f0 <jinit_forward_dct+0x5c>
   1d2d8:	03 00 00 73 	sethi  %hi(0x1cc00), %g1
   1d2dc:	80 a0 60 02 	cmp  %g1, 2
   1d2e0:	02 80 00 11 	be  1d324 <jinit_forward_dct+0x90>
   1d2e4:	03 00 00 74 	sethi  %hi(0x1d000), %g1
   1d2e8:	10 80 00 15 	b  1d33c <jinit_forward_dct+0xa8>
   1d2ec:	c4 06 00 00 	ld  [ %i0 ], %g2
   1d2f0:	82 10 63 58 	or  %g1, 0x358, %g1
   1d2f4:	c2 22 20 04 	st  %g1, [ %o0 + 4 ]
   1d2f8:	03 00 00 76 	sethi  %hi(0x1d800), %g1
   1d2fc:	82 10 61 c0 	or  %g1, 0x1c0, %g1	! 1d9c0 <jpeg_fdct_islow>
   1d300:	10 80 00 15 	b  1d354 <jinit_forward_dct+0xc0>
   1d304:	c2 22 20 08 	st  %g1, [ %o0 + 8 ]
   1d308:	03 00 00 73 	sethi  %hi(0x1cc00), %g1
   1d30c:	82 10 63 58 	or  %g1, 0x358, %g1	! 1cf58 <forward_DCT>
   1d310:	c2 22 20 04 	st  %g1, [ %o0 + 4 ]
   1d314:	03 00 00 74 	sethi  %hi(0x1d000), %g1
   1d318:	82 10 63 7c 	or  %g1, 0x37c, %g1	! 1d37c <jpeg_fdct_ifast>
   1d31c:	10 80 00 0e 	b  1d354 <jinit_forward_dct+0xc0>
   1d320:	c2 22 20 08 	st  %g1, [ %o0 + 8 ]
   1d324:	82 10 61 10 	or  %g1, 0x110, %g1
   1d328:	c2 22 20 04 	st  %g1, [ %o0 + 4 ]
   1d32c:	03 00 00 75 	sethi  %hi(0x1d400), %g1
   1d330:	82 10 61 6c 	or  %g1, 0x16c, %g1	! 1d56c <jpeg_fdct_float>
   1d334:	10 80 00 08 	b  1d354 <jinit_forward_dct+0xc0>
   1d338:	c2 22 20 1c 	st  %g1, [ %o0 + 0x1c ]
   1d33c:	82 10 20 2f 	mov  0x2f, %g1
   1d340:	c2 20 a0 14 	st  %g1, [ %g2 + 0x14 ]
   1d344:	c2 06 00 00 	ld  [ %i0 ], %g1
   1d348:	c2 00 40 00 	ld  [ %g1 ], %g1
   1d34c:	9f c0 40 00 	call  %g1
   1d350:	90 10 00 18 	mov  %i0, %o0
   1d354:	84 10 20 00 	clr  %g2
   1d358:	83 28 a0 02 	sll  %g2, 2, %g1
   1d35c:	82 00 40 10 	add  %g1, %l0, %g1
   1d360:	c0 20 60 0c 	clr  [ %g1 + 0xc ]
   1d364:	84 00 a0 01 	inc  %g2
   1d368:	80 a0 a0 03 	cmp  %g2, 3
   1d36c:	04 bf ff fb 	ble  1d358 <jinit_forward_dct+0xc4>
   1d370:	c0 20 60 20 	clr  [ %g1 + 0x20 ]
   1d374:	81 c7 e0 08 	ret 
   1d378:	81 e8 00 00 	restore 

0001d37c <jpeg_fdct_ifast>:
   1d37c:	9d e3 bf 98 	save  %sp, -104, %sp
   1d380:	96 10 00 18 	mov  %i0, %o3
   1d384:	88 10 00 18 	mov  %i0, %g4
   1d388:	98 10 20 07 	mov  7, %o4
   1d38c:	c4 01 00 00 	ld  [ %g4 ], %g2
   1d390:	c2 01 20 1c 	ld  [ %g4 + 0x1c ], %g1
   1d394:	b8 00 80 01 	add  %g2, %g1, %i4
   1d398:	b0 20 80 01 	sub  %g2, %g1, %i0
   1d39c:	c4 01 20 04 	ld  [ %g4 + 4 ], %g2
   1d3a0:	c2 01 20 18 	ld  [ %g4 + 0x18 ], %g1
   1d3a4:	b4 00 80 01 	add  %g2, %g1, %i2
   1d3a8:	9a 20 80 01 	sub  %g2, %g1, %o5
   1d3ac:	c4 01 20 08 	ld  [ %g4 + 8 ], %g2
   1d3b0:	c2 01 20 14 	ld  [ %g4 + 0x14 ], %g1
   1d3b4:	b6 00 80 01 	add  %g2, %g1, %i3
   1d3b8:	b2 20 80 01 	sub  %g2, %g1, %i1
   1d3bc:	c4 01 20 0c 	ld  [ %g4 + 0xc ], %g2
   1d3c0:	c2 01 20 10 	ld  [ %g4 + 0x10 ], %g1
   1d3c4:	86 00 80 01 	add  %g2, %g1, %g3
   1d3c8:	9e 20 80 01 	sub  %g2, %g1, %o7
   1d3cc:	ba 07 00 03 	add  %i4, %g3, %i5
   1d3d0:	86 27 00 03 	sub  %i4, %g3, %g3
   1d3d4:	b8 06 80 1b 	add  %i2, %i3, %i4
   1d3d8:	84 26 80 1b 	sub  %i2, %i3, %g2
   1d3dc:	82 07 40 1c 	add  %i5, %i4, %g1
   1d3e0:	c2 21 00 00 	st  %g1, [ %g4 ]
   1d3e4:	82 27 40 1c 	sub  %i5, %i4, %g1
   1d3e8:	c2 21 20 10 	st  %g1, [ %g4 + 0x10 ]
   1d3ec:	82 00 80 03 	add  %g2, %g3, %g1
   1d3f0:	82 58 60 b5 	smul  %g1, 0xb5, %g1
   1d3f4:	85 38 60 08 	sra  %g1, 8, %g2
   1d3f8:	82 00 c0 02 	add  %g3, %g2, %g1
   1d3fc:	c2 21 20 08 	st  %g1, [ %g4 + 8 ]
   1d400:	82 20 c0 02 	sub  %g3, %g2, %g1
   1d404:	c2 21 20 18 	st  %g1, [ %g4 + 0x18 ]
   1d408:	ba 03 c0 19 	add  %o7, %i1, %i5
   1d40c:	b8 06 40 0d 	add  %i1, %o5, %i4
   1d410:	84 03 40 18 	add  %o5, %i0, %g2
   1d414:	82 27 40 02 	sub  %i5, %g2, %g1
   1d418:	82 58 60 62 	smul  %g1, 0x62, %g1
   1d41c:	87 38 60 08 	sra  %g1, 8, %g3
   1d420:	82 5f 60 8b 	smul  %i5, 0x8b, %g1
   1d424:	83 38 60 08 	sra  %g1, 8, %g1
   1d428:	ba 00 40 03 	add  %g1, %g3, %i5
   1d42c:	82 58 a1 4e 	smul  %g2, 0x14e, %g1
   1d430:	83 38 60 08 	sra  %g1, 8, %g1
   1d434:	b6 00 40 03 	add  %g1, %g3, %i3
   1d438:	82 5f 20 b5 	smul  %i4, 0xb5, %g1
   1d43c:	83 38 60 08 	sra  %g1, 8, %g1
   1d440:	86 06 00 01 	add  %i0, %g1, %g3
   1d444:	84 26 00 01 	sub  %i0, %g1, %g2
   1d448:	82 00 80 1d 	add  %g2, %i5, %g1
   1d44c:	c2 21 20 14 	st  %g1, [ %g4 + 0x14 ]
   1d450:	82 20 80 1d 	sub  %g2, %i5, %g1
   1d454:	c2 21 20 0c 	st  %g1, [ %g4 + 0xc ]
   1d458:	82 00 c0 1b 	add  %g3, %i3, %g1
   1d45c:	c2 21 20 04 	st  %g1, [ %g4 + 4 ]
   1d460:	82 20 c0 1b 	sub  %g3, %i3, %g1
   1d464:	c2 21 20 1c 	st  %g1, [ %g4 + 0x1c ]
   1d468:	98 83 3f ff 	addcc  %o4, -1, %o4
   1d46c:	1c bf ff c8 	bpos  1d38c <jpeg_fdct_ifast+0x10>
   1d470:	88 01 20 20 	add  %g4, 0x20, %g4
   1d474:	88 10 00 0b 	mov  %o3, %g4
   1d478:	98 10 20 07 	mov  7, %o4
   1d47c:	c4 01 00 00 	ld  [ %g4 ], %g2
   1d480:	c2 01 20 e0 	ld  [ %g4 + 0xe0 ], %g1
   1d484:	b8 00 80 01 	add  %g2, %g1, %i4
   1d488:	b0 20 80 01 	sub  %g2, %g1, %i0
   1d48c:	c4 01 20 20 	ld  [ %g4 + 0x20 ], %g2
   1d490:	c2 01 20 c0 	ld  [ %g4 + 0xc0 ], %g1
   1d494:	b4 00 80 01 	add  %g2, %g1, %i2
   1d498:	9a 20 80 01 	sub  %g2, %g1, %o5
   1d49c:	c4 01 20 40 	ld  [ %g4 + 0x40 ], %g2
   1d4a0:	c2 01 20 a0 	ld  [ %g4 + 0xa0 ], %g1
   1d4a4:	b6 00 80 01 	add  %g2, %g1, %i3
   1d4a8:	b2 20 80 01 	sub  %g2, %g1, %i1
   1d4ac:	c4 01 20 60 	ld  [ %g4 + 0x60 ], %g2
   1d4b0:	c2 01 20 80 	ld  [ %g4 + 0x80 ], %g1
   1d4b4:	86 00 80 01 	add  %g2, %g1, %g3
   1d4b8:	9e 20 80 01 	sub  %g2, %g1, %o7
   1d4bc:	ba 07 00 03 	add  %i4, %g3, %i5
   1d4c0:	86 27 00 03 	sub  %i4, %g3, %g3
   1d4c4:	b8 06 80 1b 	add  %i2, %i3, %i4
   1d4c8:	84 26 80 1b 	sub  %i2, %i3, %g2
   1d4cc:	82 07 40 1c 	add  %i5, %i4, %g1
   1d4d0:	c2 21 00 00 	st  %g1, [ %g4 ]
   1d4d4:	82 27 40 1c 	sub  %i5, %i4, %g1
   1d4d8:	c2 21 20 80 	st  %g1, [ %g4 + 0x80 ]
   1d4dc:	82 00 80 03 	add  %g2, %g3, %g1
   1d4e0:	82 58 60 b5 	smul  %g1, 0xb5, %g1
   1d4e4:	85 38 60 08 	sra  %g1, 8, %g2
   1d4e8:	82 00 c0 02 	add  %g3, %g2, %g1
   1d4ec:	c2 21 20 40 	st  %g1, [ %g4 + 0x40 ]
   1d4f0:	82 20 c0 02 	sub  %g3, %g2, %g1
   1d4f4:	c2 21 20 c0 	st  %g1, [ %g4 + 0xc0 ]
   1d4f8:	ba 03 c0 19 	add  %o7, %i1, %i5
   1d4fc:	b8 06 40 0d 	add  %i1, %o5, %i4
   1d500:	84 03 40 18 	add  %o5, %i0, %g2
   1d504:	82 27 40 02 	sub  %i5, %g2, %g1
   1d508:	82 58 60 62 	smul  %g1, 0x62, %g1
   1d50c:	87 38 60 08 	sra  %g1, 8, %g3
   1d510:	82 5f 60 8b 	smul  %i5, 0x8b, %g1
   1d514:	83 38 60 08 	sra  %g1, 8, %g1
   1d518:	ba 00 40 03 	add  %g1, %g3, %i5
   1d51c:	82 58 a1 4e 	smul  %g2, 0x14e, %g1
   1d520:	83 38 60 08 	sra  %g1, 8, %g1
   1d524:	b6 00 40 03 	add  %g1, %g3, %i3
   1d528:	82 5f 20 b5 	smul  %i4, 0xb5, %g1
   1d52c:	83 38 60 08 	sra  %g1, 8, %g1
   1d530:	86 06 00 01 	add  %i0, %g1, %g3
   1d534:	84 26 00 01 	sub  %i0, %g1, %g2
   1d538:	82 00 80 1d 	add  %g2, %i5, %g1
   1d53c:	c2 21 20 a0 	st  %g1, [ %g4 + 0xa0 ]
   1d540:	82 20 80 1d 	sub  %g2, %i5, %g1
   1d544:	c2 21 20 60 	st  %g1, [ %g4 + 0x60 ]
   1d548:	82 00 c0 1b 	add  %g3, %i3, %g1
   1d54c:	c2 21 20 20 	st  %g1, [ %g4 + 0x20 ]
   1d550:	82 20 c0 1b 	sub  %g3, %i3, %g1
   1d554:	c2 21 20 e0 	st  %g1, [ %g4 + 0xe0 ]
   1d558:	98 83 3f ff 	addcc  %o4, -1, %o4
   1d55c:	1c bf ff c8 	bpos  1d47c <jpeg_fdct_ifast+0x100>
   1d560:	88 01 20 04 	add  %g4, 4, %g4
   1d564:	81 c7 e0 08 	ret 
   1d568:	81 e8 00 00 	restore 

0001d56c <jpeg_fdct_float>:
   1d56c:	9d e3 bf 98 	save  %sp, -104, %sp
   1d570:	a2 10 00 18 	mov  %i0, %l1
   1d574:	b4 10 20 07 	mov  7, %i2
   1d578:	03 00 00 87 	sethi  %hi(0x21c00), %g1
   1d57c:	f2 00 63 b4 	ld  [ %g1 + 0x3b4 ], %i1	! 21fb4 <aanscalefactor.1+0x54>
   1d580:	d0 04 40 00 	ld  [ %l1 ], %o0
   1d584:	40 00 07 d0 	call  1f4c4 <__addsf3>
   1d588:	d2 04 60 1c 	ld  [ %l1 + 0x1c ], %o1
   1d58c:	a6 10 00 08 	mov  %o0, %l3
   1d590:	d0 04 40 00 	ld  [ %l1 ], %o0
   1d594:	40 00 07 e0 	call  1f514 <__subsf3>
   1d598:	d2 04 60 1c 	ld  [ %l1 + 0x1c ], %o1
   1d59c:	ba 10 00 08 	mov  %o0, %i5
   1d5a0:	d0 04 60 04 	ld  [ %l1 + 4 ], %o0
   1d5a4:	40 00 07 c8 	call  1f4c4 <__addsf3>
   1d5a8:	d2 04 60 18 	ld  [ %l1 + 0x18 ], %o1
   1d5ac:	ac 10 00 08 	mov  %o0, %l6
   1d5b0:	d0 04 60 04 	ld  [ %l1 + 4 ], %o0
   1d5b4:	40 00 07 d8 	call  1f514 <__subsf3>
   1d5b8:	d2 04 60 18 	ld  [ %l1 + 0x18 ], %o1
   1d5bc:	b6 10 00 08 	mov  %o0, %i3
   1d5c0:	d0 04 60 08 	ld  [ %l1 + 8 ], %o0
   1d5c4:	40 00 07 c0 	call  1f4c4 <__addsf3>
   1d5c8:	d2 04 60 14 	ld  [ %l1 + 0x14 ], %o1
   1d5cc:	aa 10 00 08 	mov  %o0, %l5
   1d5d0:	d0 04 60 08 	ld  [ %l1 + 8 ], %o0
   1d5d4:	40 00 07 d0 	call  1f514 <__subsf3>
   1d5d8:	d2 04 60 14 	ld  [ %l1 + 0x14 ], %o1
   1d5dc:	ae 10 00 08 	mov  %o0, %l7
   1d5e0:	d0 04 60 0c 	ld  [ %l1 + 0xc ], %o0
   1d5e4:	40 00 07 b8 	call  1f4c4 <__addsf3>
   1d5e8:	d2 04 60 10 	ld  [ %l1 + 0x10 ], %o1
   1d5ec:	a0 10 00 08 	mov  %o0, %l0
   1d5f0:	d0 04 60 0c 	ld  [ %l1 + 0xc ], %o0
   1d5f4:	40 00 07 c8 	call  1f514 <__subsf3>
   1d5f8:	d2 04 60 10 	ld  [ %l1 + 0x10 ], %o1
   1d5fc:	b8 10 00 08 	mov  %o0, %i4
   1d600:	90 10 00 13 	mov  %l3, %o0
   1d604:	40 00 07 b0 	call  1f4c4 <__addsf3>
   1d608:	92 10 00 10 	mov  %l0, %o1
   1d60c:	a4 10 00 08 	mov  %o0, %l2
   1d610:	90 10 00 13 	mov  %l3, %o0
   1d614:	40 00 07 c0 	call  1f514 <__subsf3>
   1d618:	92 10 00 10 	mov  %l0, %o1
   1d61c:	a6 10 00 08 	mov  %o0, %l3
   1d620:	90 10 00 16 	mov  %l6, %o0
   1d624:	40 00 07 a8 	call  1f4c4 <__addsf3>
   1d628:	92 10 00 15 	mov  %l5, %o1
   1d62c:	a8 10 00 08 	mov  %o0, %l4
   1d630:	90 10 00 16 	mov  %l6, %o0
   1d634:	40 00 07 b8 	call  1f514 <__subsf3>
   1d638:	92 10 00 15 	mov  %l5, %o1
   1d63c:	a0 10 00 08 	mov  %o0, %l0
   1d640:	90 10 00 12 	mov  %l2, %o0
   1d644:	40 00 07 a0 	call  1f4c4 <__addsf3>
   1d648:	92 10 00 14 	mov  %l4, %o1
   1d64c:	d0 24 40 00 	st  %o0, [ %l1 ]
   1d650:	90 10 00 12 	mov  %l2, %o0
   1d654:	40 00 07 b0 	call  1f514 <__subsf3>
   1d658:	92 10 00 14 	mov  %l4, %o1
   1d65c:	d0 24 60 10 	st  %o0, [ %l1 + 0x10 ]
   1d660:	90 10 00 10 	mov  %l0, %o0
   1d664:	40 00 07 98 	call  1f4c4 <__addsf3>
   1d668:	92 10 00 13 	mov  %l3, %o1
   1d66c:	40 00 07 c3 	call  1f578 <__mulsf3>
   1d670:	92 10 00 19 	mov  %i1, %o1
   1d674:	a0 10 00 08 	mov  %o0, %l0
   1d678:	90 10 00 13 	mov  %l3, %o0
   1d67c:	40 00 07 92 	call  1f4c4 <__addsf3>
   1d680:	92 10 00 10 	mov  %l0, %o1
   1d684:	d0 24 60 08 	st  %o0, [ %l1 + 8 ]
   1d688:	90 10 00 13 	mov  %l3, %o0
   1d68c:	40 00 07 a2 	call  1f514 <__subsf3>
   1d690:	92 10 00 10 	mov  %l0, %o1
   1d694:	d0 24 60 18 	st  %o0, [ %l1 + 0x18 ]
   1d698:	90 10 00 1c 	mov  %i4, %o0
   1d69c:	40 00 07 8a 	call  1f4c4 <__addsf3>
   1d6a0:	92 10 00 17 	mov  %l7, %o1
   1d6a4:	a4 10 00 08 	mov  %o0, %l2
   1d6a8:	90 10 00 17 	mov  %l7, %o0
   1d6ac:	40 00 07 86 	call  1f4c4 <__addsf3>
   1d6b0:	92 10 00 1b 	mov  %i3, %o1
   1d6b4:	a8 10 00 08 	mov  %o0, %l4
   1d6b8:	90 10 00 1b 	mov  %i3, %o0
   1d6bc:	40 00 07 82 	call  1f4c4 <__addsf3>
   1d6c0:	92 10 00 1d 	mov  %i5, %o1
   1d6c4:	a0 10 00 08 	mov  %o0, %l0
   1d6c8:	90 10 00 12 	mov  %l2, %o0
   1d6cc:	40 00 07 92 	call  1f514 <__subsf3>
   1d6d0:	92 10 00 10 	mov  %l0, %o1
   1d6d4:	03 00 00 87 	sethi  %hi(0x21c00), %g1
   1d6d8:	40 00 07 a8 	call  1f578 <__mulsf3>
   1d6dc:	d2 00 63 b8 	ld  [ %g1 + 0x3b8 ], %o1	! 21fb8 <aanscalefactor.1+0x58>
   1d6e0:	a6 10 00 08 	mov  %o0, %l3
   1d6e4:	90 10 00 12 	mov  %l2, %o0
   1d6e8:	03 00 00 87 	sethi  %hi(0x21c00), %g1
   1d6ec:	40 00 07 a3 	call  1f578 <__mulsf3>
   1d6f0:	d2 00 63 bc 	ld  [ %g1 + 0x3bc ], %o1	! 21fbc <aanscalefactor.1+0x5c>
   1d6f4:	40 00 07 74 	call  1f4c4 <__addsf3>
   1d6f8:	92 10 00 13 	mov  %l3, %o1
   1d6fc:	aa 10 00 08 	mov  %o0, %l5
   1d700:	90 10 00 10 	mov  %l0, %o0
   1d704:	03 00 00 87 	sethi  %hi(0x21c00), %g1
   1d708:	40 00 07 9c 	call  1f578 <__mulsf3>
   1d70c:	d2 00 63 c0 	ld  [ %g1 + 0x3c0 ], %o1	! 21fc0 <aanscalefactor.1+0x60>
   1d710:	40 00 07 6d 	call  1f4c4 <__addsf3>
   1d714:	92 10 00 13 	mov  %l3, %o1
   1d718:	a6 10 00 08 	mov  %o0, %l3
   1d71c:	90 10 00 14 	mov  %l4, %o0
   1d720:	40 00 07 96 	call  1f578 <__mulsf3>
   1d724:	92 10 00 19 	mov  %i1, %o1
   1d728:	a0 10 00 08 	mov  %o0, %l0
   1d72c:	90 10 00 1d 	mov  %i5, %o0
   1d730:	40 00 07 65 	call  1f4c4 <__addsf3>
   1d734:	92 10 00 10 	mov  %l0, %o1
   1d738:	a4 10 00 08 	mov  %o0, %l2
   1d73c:	90 10 00 1d 	mov  %i5, %o0
   1d740:	40 00 07 75 	call  1f514 <__subsf3>
   1d744:	92 10 00 10 	mov  %l0, %o1
   1d748:	a0 10 00 08 	mov  %o0, %l0
   1d74c:	40 00 07 5e 	call  1f4c4 <__addsf3>
   1d750:	92 10 00 15 	mov  %l5, %o1
   1d754:	d0 24 60 14 	st  %o0, [ %l1 + 0x14 ]
   1d758:	90 10 00 10 	mov  %l0, %o0
   1d75c:	40 00 07 6e 	call  1f514 <__subsf3>
   1d760:	92 10 00 15 	mov  %l5, %o1
   1d764:	d0 24 60 0c 	st  %o0, [ %l1 + 0xc ]
   1d768:	90 10 00 12 	mov  %l2, %o0
   1d76c:	40 00 07 56 	call  1f4c4 <__addsf3>
   1d770:	92 10 00 13 	mov  %l3, %o1
   1d774:	d0 24 60 04 	st  %o0, [ %l1 + 4 ]
   1d778:	90 10 00 12 	mov  %l2, %o0
   1d77c:	40 00 07 66 	call  1f514 <__subsf3>
   1d780:	92 10 00 13 	mov  %l3, %o1
   1d784:	d0 24 60 1c 	st  %o0, [ %l1 + 0x1c ]
   1d788:	b4 86 bf ff 	addcc  %i2, -1, %i2
   1d78c:	1c bf ff 7d 	bpos  1d580 <jpeg_fdct_float+0x14>
   1d790:	a2 04 60 20 	add  %l1, 0x20, %l1
   1d794:	a2 10 00 18 	mov  %i0, %l1
   1d798:	b4 10 20 07 	mov  7, %i2
   1d79c:	03 00 00 87 	sethi  %hi(0x21c00), %g1
   1d7a0:	f0 00 63 b4 	ld  [ %g1 + 0x3b4 ], %i0	! 21fb4 <aanscalefactor.1+0x54>
   1d7a4:	d0 04 40 00 	ld  [ %l1 ], %o0
   1d7a8:	40 00 07 47 	call  1f4c4 <__addsf3>
   1d7ac:	d2 04 60 e0 	ld  [ %l1 + 0xe0 ], %o1
   1d7b0:	a6 10 00 08 	mov  %o0, %l3
   1d7b4:	d0 04 40 00 	ld  [ %l1 ], %o0
   1d7b8:	40 00 07 57 	call  1f514 <__subsf3>
   1d7bc:	d2 04 60 e0 	ld  [ %l1 + 0xe0 ], %o1
   1d7c0:	ba 10 00 08 	mov  %o0, %i5
   1d7c4:	d0 04 60 20 	ld  [ %l1 + 0x20 ], %o0
   1d7c8:	40 00 07 3f 	call  1f4c4 <__addsf3>
   1d7cc:	d2 04 60 c0 	ld  [ %l1 + 0xc0 ], %o1
   1d7d0:	ac 10 00 08 	mov  %o0, %l6
   1d7d4:	d0 04 60 20 	ld  [ %l1 + 0x20 ], %o0
   1d7d8:	40 00 07 4f 	call  1f514 <__subsf3>
   1d7dc:	d2 04 60 c0 	ld  [ %l1 + 0xc0 ], %o1
   1d7e0:	b6 10 00 08 	mov  %o0, %i3
   1d7e4:	d0 04 60 40 	ld  [ %l1 + 0x40 ], %o0
   1d7e8:	40 00 07 37 	call  1f4c4 <__addsf3>
   1d7ec:	d2 04 60 a0 	ld  [ %l1 + 0xa0 ], %o1
   1d7f0:	aa 10 00 08 	mov  %o0, %l5
   1d7f4:	d0 04 60 40 	ld  [ %l1 + 0x40 ], %o0
   1d7f8:	40 00 07 47 	call  1f514 <__subsf3>
   1d7fc:	d2 04 60 a0 	ld  [ %l1 + 0xa0 ], %o1
   1d800:	ae 10 00 08 	mov  %o0, %l7
   1d804:	d0 04 60 60 	ld  [ %l1 + 0x60 ], %o0
   1d808:	40 00 07 2f 	call  1f4c4 <__addsf3>
   1d80c:	d2 04 60 80 	ld  [ %l1 + 0x80 ], %o1
   1d810:	a0 10 00 08 	mov  %o0, %l0
   1d814:	d0 04 60 60 	ld  [ %l1 + 0x60 ], %o0
   1d818:	40 00 07 3f 	call  1f514 <__subsf3>
   1d81c:	d2 04 60 80 	ld  [ %l1 + 0x80 ], %o1
   1d820:	b8 10 00 08 	mov  %o0, %i4
   1d824:	90 10 00 13 	mov  %l3, %o0
   1d828:	40 00 07 27 	call  1f4c4 <__addsf3>
   1d82c:	92 10 00 10 	mov  %l0, %o1
   1d830:	a4 10 00 08 	mov  %o0, %l2
   1d834:	90 10 00 13 	mov  %l3, %o0
   1d838:	40 00 07 37 	call  1f514 <__subsf3>
   1d83c:	92 10 00 10 	mov  %l0, %o1
   1d840:	a6 10 00 08 	mov  %o0, %l3
   1d844:	90 10 00 16 	mov  %l6, %o0
   1d848:	40 00 07 1f 	call  1f4c4 <__addsf3>
   1d84c:	92 10 00 15 	mov  %l5, %o1
   1d850:	a8 10 00 08 	mov  %o0, %l4
   1d854:	90 10 00 16 	mov  %l6, %o0
   1d858:	40 00 07 2f 	call  1f514 <__subsf3>
   1d85c:	92 10 00 15 	mov  %l5, %o1
   1d860:	a0 10 00 08 	mov  %o0, %l0
   1d864:	90 10 00 12 	mov  %l2, %o0
   1d868:	40 00 07 17 	call  1f4c4 <__addsf3>
   1d86c:	92 10 00 14 	mov  %l4, %o1
   1d870:	d0 24 40 00 	st  %o0, [ %l1 ]
   1d874:	90 10 00 12 	mov  %l2, %o0
   1d878:	40 00 07 27 	call  1f514 <__subsf3>
   1d87c:	92 10 00 14 	mov  %l4, %o1
   1d880:	d0 24 60 80 	st  %o0, [ %l1 + 0x80 ]
   1d884:	90 10 00 10 	mov  %l0, %o0
   1d888:	40 00 07 0f 	call  1f4c4 <__addsf3>
   1d88c:	92 10 00 13 	mov  %l3, %o1
   1d890:	40 00 07 3a 	call  1f578 <__mulsf3>
   1d894:	92 10 00 18 	mov  %i0, %o1
   1d898:	a0 10 00 08 	mov  %o0, %l0
   1d89c:	90 10 00 13 	mov  %l3, %o0
   1d8a0:	40 00 07 09 	call  1f4c4 <__addsf3>
   1d8a4:	92 10 00 10 	mov  %l0, %o1
   1d8a8:	d0 24 60 40 	st  %o0, [ %l1 + 0x40 ]
   1d8ac:	90 10 00 13 	mov  %l3, %o0
   1d8b0:	40 00 07 19 	call  1f514 <__subsf3>
   1d8b4:	92 10 00 10 	mov  %l0, %o1
   1d8b8:	d0 24 60 c0 	st  %o0, [ %l1 + 0xc0 ]
   1d8bc:	90 10 00 1c 	mov  %i4, %o0
   1d8c0:	40 00 07 01 	call  1f4c4 <__addsf3>
   1d8c4:	92 10 00 17 	mov  %l7, %o1
   1d8c8:	a4 10 00 08 	mov  %o0, %l2
   1d8cc:	90 10 00 17 	mov  %l7, %o0
   1d8d0:	40 00 06 fd 	call  1f4c4 <__addsf3>
   1d8d4:	92 10 00 1b 	mov  %i3, %o1
   1d8d8:	a8 10 00 08 	mov  %o0, %l4
   1d8dc:	90 10 00 1b 	mov  %i3, %o0
   1d8e0:	40 00 06 f9 	call  1f4c4 <__addsf3>
   1d8e4:	92 10 00 1d 	mov  %i5, %o1
   1d8e8:	a0 10 00 08 	mov  %o0, %l0
   1d8ec:	90 10 00 12 	mov  %l2, %o0
   1d8f0:	40 00 07 09 	call  1f514 <__subsf3>
   1d8f4:	92 10 00 10 	mov  %l0, %o1
   1d8f8:	03 00 00 87 	sethi  %hi(0x21c00), %g1
   1d8fc:	40 00 07 1f 	call  1f578 <__mulsf3>
   1d900:	d2 00 63 b8 	ld  [ %g1 + 0x3b8 ], %o1	! 21fb8 <aanscalefactor.1+0x58>
   1d904:	a6 10 00 08 	mov  %o0, %l3
   1d908:	90 10 00 12 	mov  %l2, %o0
   1d90c:	03 00 00 87 	sethi  %hi(0x21c00), %g1
   1d910:	40 00 07 1a 	call  1f578 <__mulsf3>
   1d914:	d2 00 63 bc 	ld  [ %g1 + 0x3bc ], %o1	! 21fbc <aanscalefactor.1+0x5c>
   1d918:	40 00 06 eb 	call  1f4c4 <__addsf3>
   1d91c:	92 10 00 13 	mov  %l3, %o1
   1d920:	aa 10 00 08 	mov  %o0, %l5
   1d924:	90 10 00 10 	mov  %l0, %o0
   1d928:	03 00 00 87 	sethi  %hi(0x21c00), %g1
   1d92c:	40 00 07 13 	call  1f578 <__mulsf3>
   1d930:	d2 00 63 c0 	ld  [ %g1 + 0x3c0 ], %o1	! 21fc0 <aanscalefactor.1+0x60>
   1d934:	40 00 06 e4 	call  1f4c4 <__addsf3>
   1d938:	92 10 00 13 	mov  %l3, %o1
   1d93c:	a6 10 00 08 	mov  %o0, %l3
   1d940:	90 10 00 14 	mov  %l4, %o0
   1d944:	40 00 07 0d 	call  1f578 <__mulsf3>
   1d948:	92 10 00 18 	mov  %i0, %o1
   1d94c:	a0 10 00 08 	mov  %o0, %l0
   1d950:	90 10 00 1d 	mov  %i5, %o0
   1d954:	40 00 06 dc 	call  1f4c4 <__addsf3>
   1d958:	92 10 00 10 	mov  %l0, %o1
   1d95c:	a4 10 00 08 	mov  %o0, %l2
   1d960:	90 10 00 1d 	mov  %i5, %o0
   1d964:	40 00 06 ec 	call  1f514 <__subsf3>
   1d968:	92 10 00 10 	mov  %l0, %o1
   1d96c:	a0 10 00 08 	mov  %o0, %l0
   1d970:	40 00 06 d5 	call  1f4c4 <__addsf3>
   1d974:	92 10 00 15 	mov  %l5, %o1
   1d978:	d0 24 60 a0 	st  %o0, [ %l1 + 0xa0 ]
   1d97c:	90 10 00 10 	mov  %l0, %o0
   1d980:	40 00 06 e5 	call  1f514 <__subsf3>
   1d984:	92 10 00 15 	mov  %l5, %o1
   1d988:	d0 24 60 60 	st  %o0, [ %l1 + 0x60 ]
   1d98c:	90 10 00 12 	mov  %l2, %o0
   1d990:	40 00 06 cd 	call  1f4c4 <__addsf3>
   1d994:	92 10 00 13 	mov  %l3, %o1
   1d998:	d0 24 60 20 	st  %o0, [ %l1 + 0x20 ]
   1d99c:	90 10 00 12 	mov  %l2, %o0
   1d9a0:	40 00 06 dd 	call  1f514 <__subsf3>
   1d9a4:	92 10 00 13 	mov  %l3, %o1
   1d9a8:	d0 24 60 e0 	st  %o0, [ %l1 + 0xe0 ]
   1d9ac:	b4 86 bf ff 	addcc  %i2, -1, %i2
   1d9b0:	1c bf ff 7d 	bpos  1d7a4 <jpeg_fdct_float+0x238>
   1d9b4:	a2 04 60 04 	add  %l1, 4, %l1
   1d9b8:	81 c7 e0 08 	ret 
   1d9bc:	81 e8 00 00 	restore 

0001d9c0 <jpeg_fdct_islow>:
   1d9c0:	9d e3 bf 98 	save  %sp, -104, %sp
   1d9c4:	a2 10 00 18 	mov  %i0, %l1
   1d9c8:	88 10 00 18 	mov  %i0, %g4
   1d9cc:	96 10 20 07 	mov  7, %o3
   1d9d0:	03 00 00 04 	sethi  %hi(0x1000), %g1
   1d9d4:	a0 10 61 51 	or  %g1, 0x151, %l0	! 1151 <_init-0xf57f>
   1d9d8:	82 00 68 00 	add  %g1, 0x800, %g1
   1d9dc:	90 10 60 7e 	or  %g1, 0x7e, %o0
   1d9e0:	03 3f ff f1 	sethi  %hi(0xffffc400), %g1
   1d9e4:	92 10 60 df 	or  %g1, 0xdf, %o1	! ffffc4df <_end+0xfffc8cdf>
   1d9e8:	03 00 00 09 	sethi  %hi(0x2400), %g1
   1d9ec:	94 10 61 a1 	or  %g1, 0x1a1, %o2	! 25a1 <_init-0xe12f>
   1d9f0:	03 00 00 10 	sethi  %hi(0x4000), %g1
   1d9f4:	98 10 61 b3 	or  %g1, 0x1b3, %o4	! 41b3 <_init-0xc51d>
   1d9f8:	c4 01 00 00 	ld  [ %g4 ], %g2
   1d9fc:	c2 01 20 1c 	ld  [ %g4 + 0x1c ], %g1
   1da00:	b4 00 80 01 	add  %g2, %g1, %i2
   1da04:	9a 20 80 01 	sub  %g2, %g1, %o5
   1da08:	c4 01 20 04 	ld  [ %g4 + 4 ], %g2
   1da0c:	c2 01 20 18 	ld  [ %g4 + 0x18 ], %g1
   1da10:	b6 00 80 01 	add  %g2, %g1, %i3
   1da14:	9e 20 80 01 	sub  %g2, %g1, %o7
   1da18:	c4 01 20 08 	ld  [ %g4 + 8 ], %g2
   1da1c:	c2 01 20 14 	ld  [ %g4 + 0x14 ], %g1
   1da20:	b8 00 80 01 	add  %g2, %g1, %i4
   1da24:	b0 20 80 01 	sub  %g2, %g1, %i0
   1da28:	c4 01 20 0c 	ld  [ %g4 + 0xc ], %g2
   1da2c:	c2 01 20 10 	ld  [ %g4 + 0x10 ], %g1
   1da30:	86 00 80 01 	add  %g2, %g1, %g3
   1da34:	b2 20 80 01 	sub  %g2, %g1, %i1
   1da38:	ba 06 80 03 	add  %i2, %g3, %i5
   1da3c:	84 26 80 03 	sub  %i2, %g3, %g2
   1da40:	86 06 c0 1c 	add  %i3, %i4, %g3
   1da44:	b6 26 c0 1c 	sub  %i3, %i4, %i3
   1da48:	82 07 40 03 	add  %i5, %g3, %g1
   1da4c:	83 28 60 02 	sll  %g1, 2, %g1
   1da50:	c2 21 00 00 	st  %g1, [ %g4 ]
   1da54:	82 27 40 03 	sub  %i5, %g3, %g1
   1da58:	83 28 60 02 	sll  %g1, 2, %g1
   1da5c:	c2 21 20 10 	st  %g1, [ %g4 + 0x10 ]
   1da60:	82 06 c0 02 	add  %i3, %g2, %g1
   1da64:	b8 58 40 10 	smul  %g1, %l0, %i4
   1da68:	82 58 80 08 	smul  %g2, %o0, %g1
   1da6c:	82 00 40 1c 	add  %g1, %i4, %g1
   1da70:	82 00 64 00 	add  %g1, 0x400, %g1
   1da74:	83 38 60 0b 	sra  %g1, 0xb, %g1
   1da78:	c2 21 20 08 	st  %g1, [ %g4 + 8 ]
   1da7c:	82 5e c0 09 	smul  %i3, %o1, %g1
   1da80:	82 00 40 1c 	add  %g1, %i4, %g1
   1da84:	82 00 64 00 	add  %g1, 0x400, %g1
   1da88:	83 38 60 0b 	sra  %g1, 0xb, %g1
   1da8c:	c2 21 20 18 	st  %g1, [ %g4 + 0x18 ]
   1da90:	b8 06 40 0d 	add  %i1, %o5, %i4
   1da94:	b6 06 00 0f 	add  %i0, %o7, %i3
   1da98:	84 06 40 0f 	add  %i1, %o7, %g2
   1da9c:	86 06 00 0d 	add  %i0, %o5, %g3
   1daa0:	ba 00 80 03 	add  %g2, %g3, %i5
   1daa4:	ba 5f 40 0a 	smul  %i5, %o2, %i5
   1daa8:	b2 5e 69 8e 	smul  %i1, 0x98e, %i1
   1daac:	b0 5e 00 0c 	smul  %i0, %o4, %i0
   1dab0:	03 00 00 18 	sethi  %hi(0x6000), %g1
   1dab4:	82 10 62 54 	or  %g1, 0x254, %g1	! 6254 <_init-0xa47c>
   1dab8:	9e 5b c0 01 	smul  %o7, %g1, %o7
   1dabc:	03 00 00 0c 	sethi  %hi(0x3000), %g1
   1dac0:	82 10 60 0b 	or  %g1, 0xb, %g1	! 300b <_init-0xd6c5>
   1dac4:	9a 5b 40 01 	smul  %o5, %g1, %o5
   1dac8:	03 3f ff f8 	sethi  %hi(0xffffe000), %g1
   1dacc:	82 10 63 33 	or  %g1, 0x333, %g1	! ffffe333 <_end+0xfffcab33>
   1dad0:	b8 5f 00 01 	smul  %i4, %g1, %i4
   1dad4:	03 3f ff eb 	sethi  %hi(0xffffac00), %g1
   1dad8:	82 10 61 fd 	or  %g1, 0x1fd, %g1	! ffffadfd <_end+0xfffc75fd>
   1dadc:	b6 5e c0 01 	smul  %i3, %g1, %i3
   1dae0:	03 3f ff f0 	sethi  %hi(0xffffc000), %g1
   1dae4:	82 10 61 3b 	or  %g1, 0x13b, %g1	! ffffc13b <_end+0xfffc893b>
   1dae8:	84 58 80 01 	smul  %g2, %g1, %g2
   1daec:	86 58 f3 84 	smul  %g3, -3196, %g3
   1daf0:	84 00 80 1d 	add  %g2, %i5, %g2
   1daf4:	86 00 c0 1d 	add  %g3, %i5, %g3
   1daf8:	82 06 40 1c 	add  %i1, %i4, %g1
   1dafc:	82 00 40 02 	add  %g1, %g2, %g1
   1db00:	82 00 64 00 	add  %g1, 0x400, %g1
   1db04:	83 38 60 0b 	sra  %g1, 0xb, %g1
   1db08:	c2 21 20 1c 	st  %g1, [ %g4 + 0x1c ]
   1db0c:	82 06 00 1b 	add  %i0, %i3, %g1
   1db10:	82 00 40 03 	add  %g1, %g3, %g1
   1db14:	82 00 64 00 	add  %g1, 0x400, %g1
   1db18:	83 38 60 0b 	sra  %g1, 0xb, %g1
   1db1c:	c2 21 20 14 	st  %g1, [ %g4 + 0x14 ]
   1db20:	82 03 c0 1b 	add  %o7, %i3, %g1
   1db24:	82 00 40 02 	add  %g1, %g2, %g1
   1db28:	82 00 64 00 	add  %g1, 0x400, %g1
   1db2c:	83 38 60 0b 	sra  %g1, 0xb, %g1
   1db30:	c2 21 20 0c 	st  %g1, [ %g4 + 0xc ]
   1db34:	82 03 40 1c 	add  %o5, %i4, %g1
   1db38:	82 00 40 03 	add  %g1, %g3, %g1
   1db3c:	82 00 64 00 	add  %g1, 0x400, %g1
   1db40:	83 38 60 0b 	sra  %g1, 0xb, %g1
   1db44:	c2 21 20 04 	st  %g1, [ %g4 + 4 ]
   1db48:	96 82 ff ff 	addcc  %o3, -1, %o3
   1db4c:	1c bf ff ab 	bpos  1d9f8 <jpeg_fdct_islow+0x38>
   1db50:	88 01 20 20 	add  %g4, 0x20, %g4
   1db54:	88 10 00 11 	mov  %l1, %g4
   1db58:	96 10 20 07 	mov  7, %o3
   1db5c:	03 00 00 04 	sethi  %hi(0x1000), %g1
   1db60:	a2 10 61 51 	or  %g1, 0x151, %l1	! 1151 <_init-0xf57f>
   1db64:	82 00 68 00 	add  %g1, 0x800, %g1
   1db68:	a0 10 60 7e 	or  %g1, 0x7e, %l0
   1db6c:	19 00 00 10 	sethi  %hi(0x4000), %o4
   1db70:	03 3f ff f1 	sethi  %hi(0xffffc400), %g1
   1db74:	90 10 60 df 	or  %g1, 0xdf, %o0	! ffffc4df <_end+0xfffc8cdf>
   1db78:	03 00 00 09 	sethi  %hi(0x2400), %g1
   1db7c:	92 10 61 a1 	or  %g1, 0x1a1, %o1	! 25a1 <_init-0xe12f>
   1db80:	03 00 00 18 	sethi  %hi(0x6000), %g1
   1db84:	94 10 62 54 	or  %g1, 0x254, %o2	! 6254 <_init-0xa47c>
   1db88:	c4 01 00 00 	ld  [ %g4 ], %g2
   1db8c:	c2 01 20 e0 	ld  [ %g4 + 0xe0 ], %g1
   1db90:	b4 00 80 01 	add  %g2, %g1, %i2
   1db94:	9a 20 80 01 	sub  %g2, %g1, %o5
   1db98:	c4 01 20 20 	ld  [ %g4 + 0x20 ], %g2
   1db9c:	c2 01 20 c0 	ld  [ %g4 + 0xc0 ], %g1
   1dba0:	b6 00 80 01 	add  %g2, %g1, %i3
   1dba4:	9e 20 80 01 	sub  %g2, %g1, %o7
   1dba8:	c4 01 20 40 	ld  [ %g4 + 0x40 ], %g2
   1dbac:	c2 01 20 a0 	ld  [ %g4 + 0xa0 ], %g1
   1dbb0:	b8 00 80 01 	add  %g2, %g1, %i4
   1dbb4:	b0 20 80 01 	sub  %g2, %g1, %i0
   1dbb8:	c4 01 20 60 	ld  [ %g4 + 0x60 ], %g2
   1dbbc:	c2 01 20 80 	ld  [ %g4 + 0x80 ], %g1
   1dbc0:	86 00 80 01 	add  %g2, %g1, %g3
   1dbc4:	b2 20 80 01 	sub  %g2, %g1, %i1
   1dbc8:	ba 06 80 03 	add  %i2, %g3, %i5
   1dbcc:	84 26 80 03 	sub  %i2, %g3, %g2
   1dbd0:	86 06 c0 1c 	add  %i3, %i4, %g3
   1dbd4:	b6 26 c0 1c 	sub  %i3, %i4, %i3
   1dbd8:	82 07 40 03 	add  %i5, %g3, %g1
   1dbdc:	82 00 60 02 	add  %g1, 2, %g1
   1dbe0:	83 38 60 02 	sra  %g1, 2, %g1
   1dbe4:	c2 21 00 00 	st  %g1, [ %g4 ]
   1dbe8:	82 27 40 03 	sub  %i5, %g3, %g1
   1dbec:	82 00 60 02 	add  %g1, 2, %g1
   1dbf0:	83 38 60 02 	sra  %g1, 2, %g1
   1dbf4:	c2 21 20 80 	st  %g1, [ %g4 + 0x80 ]
   1dbf8:	82 06 c0 02 	add  %i3, %g2, %g1
   1dbfc:	b8 58 40 11 	smul  %g1, %l1, %i4
   1dc00:	82 58 80 10 	smul  %g2, %l0, %g1
   1dc04:	82 00 40 1c 	add  %g1, %i4, %g1
   1dc08:	82 00 40 0c 	add  %g1, %o4, %g1
   1dc0c:	83 38 60 0f 	sra  %g1, 0xf, %g1
   1dc10:	c2 21 20 40 	st  %g1, [ %g4 + 0x40 ]
   1dc14:	82 5e c0 08 	smul  %i3, %o0, %g1
   1dc18:	82 00 40 1c 	add  %g1, %i4, %g1
   1dc1c:	82 00 40 0c 	add  %g1, %o4, %g1
   1dc20:	83 38 60 0f 	sra  %g1, 0xf, %g1
   1dc24:	c2 21 20 c0 	st  %g1, [ %g4 + 0xc0 ]
   1dc28:	b8 06 40 0d 	add  %i1, %o5, %i4
   1dc2c:	b6 06 00 0f 	add  %i0, %o7, %i3
   1dc30:	84 06 40 0f 	add  %i1, %o7, %g2
   1dc34:	86 06 00 0d 	add  %i0, %o5, %g3
   1dc38:	ba 00 80 03 	add  %g2, %g3, %i5
   1dc3c:	ba 5f 40 09 	smul  %i5, %o1, %i5
   1dc40:	b2 5e 69 8e 	smul  %i1, 0x98e, %i1
   1dc44:	82 13 21 b3 	or  %o4, 0x1b3, %g1
   1dc48:	b0 5e 00 01 	smul  %i0, %g1, %i0
   1dc4c:	9e 5b c0 0a 	smul  %o7, %o2, %o7
   1dc50:	03 00 00 0c 	sethi  %hi(0x3000), %g1
   1dc54:	82 10 60 0b 	or  %g1, 0xb, %g1	! 300b <_init-0xd6c5>
   1dc58:	9a 5b 40 01 	smul  %o5, %g1, %o5
   1dc5c:	03 3f ff f8 	sethi  %hi(0xffffe000), %g1
   1dc60:	82 10 63 33 	or  %g1, 0x333, %g1	! ffffe333 <_end+0xfffcab33>
   1dc64:	b8 5f 00 01 	smul  %i4, %g1, %i4
   1dc68:	03 3f ff eb 	sethi  %hi(0xffffac00), %g1
   1dc6c:	82 10 61 fd 	or  %g1, 0x1fd, %g1	! ffffadfd <_end+0xfffc75fd>
   1dc70:	b6 5e c0 01 	smul  %i3, %g1, %i3
   1dc74:	03 3f ff f0 	sethi  %hi(0xffffc000), %g1
   1dc78:	82 10 61 3b 	or  %g1, 0x13b, %g1	! ffffc13b <_end+0xfffc893b>
   1dc7c:	84 58 80 01 	smul  %g2, %g1, %g2
   1dc80:	86 58 f3 84 	smul  %g3, -3196, %g3
   1dc84:	84 00 80 1d 	add  %g2, %i5, %g2
   1dc88:	86 00 c0 1d 	add  %g3, %i5, %g3
   1dc8c:	82 06 40 1c 	add  %i1, %i4, %g1
   1dc90:	82 00 40 02 	add  %g1, %g2, %g1
   1dc94:	82 00 40 0c 	add  %g1, %o4, %g1
   1dc98:	83 38 60 0f 	sra  %g1, 0xf, %g1
   1dc9c:	c2 21 20 e0 	st  %g1, [ %g4 + 0xe0 ]
   1dca0:	82 06 00 1b 	add  %i0, %i3, %g1
   1dca4:	82 00 40 03 	add  %g1, %g3, %g1
   1dca8:	82 00 40 0c 	add  %g1, %o4, %g1
   1dcac:	83 38 60 0f 	sra  %g1, 0xf, %g1
   1dcb0:	c2 21 20 a0 	st  %g1, [ %g4 + 0xa0 ]
   1dcb4:	82 03 c0 1b 	add  %o7, %i3, %g1
   1dcb8:	82 00 40 02 	add  %g1, %g2, %g1
   1dcbc:	82 00 40 0c 	add  %g1, %o4, %g1
   1dcc0:	83 38 60 0f 	sra  %g1, 0xf, %g1
   1dcc4:	c2 21 20 60 	st  %g1, [ %g4 + 0x60 ]
   1dcc8:	82 03 40 1c 	add  %o5, %i4, %g1
   1dccc:	82 00 40 03 	add  %g1, %g3, %g1
   1dcd0:	82 00 40 0c 	add  %g1, %o4, %g1
   1dcd4:	83 38 60 0f 	sra  %g1, 0xf, %g1
   1dcd8:	c2 21 20 20 	st  %g1, [ %g4 + 0x20 ]
   1dcdc:	96 82 ff ff 	addcc  %o3, -1, %o3
   1dce0:	1c bf ff aa 	bpos  1db88 <jpeg_fdct_islow+0x1c8>
   1dce4:	88 01 20 04 	add  %g4, 4, %g4
   1dce8:	81 c7 e0 08 	ret 
   1dcec:	81 e8 00 00 	restore 

0001dcf0 <jpeg_abort>:
   1dcf0:	9d e3 bf 98 	save  %sp, -104, %sp
   1dcf4:	a0 10 20 01 	mov  1, %l0
   1dcf8:	c2 06 20 04 	ld  [ %i0 + 4 ], %g1
   1dcfc:	c2 00 60 24 	ld  [ %g1 + 0x24 ], %g1
   1dd00:	90 10 00 18 	mov  %i0, %o0
   1dd04:	9f c0 40 00 	call  %g1
   1dd08:	92 10 00 10 	mov  %l0, %o1
   1dd0c:	a0 04 3f ff 	add  %l0, -1, %l0
   1dd10:	80 a4 20 00 	cmp  %l0, 0
   1dd14:	34 bf ff fa 	bg,a   1dcfc <jpeg_abort+0xc>
   1dd18:	c2 06 20 04 	ld  [ %i0 + 4 ], %g1
   1dd1c:	c2 06 20 0c 	ld  [ %i0 + 0xc ], %g1
   1dd20:	80 a0 00 01 	cmp  %g0, %g1
   1dd24:	82 40 3f ff 	addx  %g0, -1, %g1
   1dd28:	82 08 7f 9c 	and  %g1, -100, %g1
   1dd2c:	82 00 60 c8 	add  %g1, 0xc8, %g1
   1dd30:	c2 26 20 10 	st  %g1, [ %i0 + 0x10 ]
   1dd34:	81 c7 e0 08 	ret 
   1dd38:	81 e8 00 00 	restore 

0001dd3c <jpeg_destroy>:
   1dd3c:	9d e3 bf 98 	save  %sp, -104, %sp
   1dd40:	c2 06 20 04 	ld  [ %i0 + 4 ], %g1
   1dd44:	80 a0 60 00 	cmp  %g1, 0
   1dd48:	22 80 00 06 	be,a   1dd60 <jpeg_destroy+0x24>
   1dd4c:	c0 26 20 04 	clr  [ %i0 + 4 ]
   1dd50:	c2 00 60 28 	ld  [ %g1 + 0x28 ], %g1
   1dd54:	9f c0 40 00 	call  %g1
   1dd58:	90 10 00 18 	mov  %i0, %o0
   1dd5c:	c0 26 20 04 	clr  [ %i0 + 4 ]
   1dd60:	c0 26 20 10 	clr  [ %i0 + 0x10 ]
   1dd64:	81 c7 e0 08 	ret 
   1dd68:	81 e8 00 00 	restore 

0001dd6c <jpeg_alloc_quant_table>:
   1dd6c:	9d e3 bf 98 	save  %sp, -104, %sp
   1dd70:	90 10 00 18 	mov  %i0, %o0
   1dd74:	c2 06 20 04 	ld  [ %i0 + 4 ], %g1
   1dd78:	c2 00 40 00 	ld  [ %g1 ], %g1
   1dd7c:	92 10 20 00 	clr  %o1
   1dd80:	9f c0 40 00 	call  %g1
   1dd84:	94 10 20 84 	mov  0x84, %o2
   1dd88:	c0 22 20 80 	clr  [ %o0 + 0x80 ]
   1dd8c:	81 c7 e0 08 	ret 
   1dd90:	91 e8 00 08 	restore  %g0, %o0, %o0

0001dd94 <jpeg_alloc_huff_table>:
   1dd94:	9d e3 bf 98 	save  %sp, -104, %sp
   1dd98:	90 10 00 18 	mov  %i0, %o0
   1dd9c:	c2 06 20 04 	ld  [ %i0 + 4 ], %g1
   1dda0:	c2 00 40 00 	ld  [ %g1 ], %g1
   1dda4:	92 10 20 00 	clr  %o1
   1dda8:	9f c0 40 00 	call  %g1
   1ddac:	94 10 21 18 	mov  0x118, %o2
   1ddb0:	c0 22 21 14 	clr  [ %o0 + 0x114 ]
   1ddb4:	81 c7 e0 08 	ret 
   1ddb8:	91 e8 00 08 	restore  %g0, %o0, %o0

0001ddbc <jdiv_round_up>:
   1ddbc:	90 02 00 09 	add  %o0, %o1, %o0
   1ddc0:	90 02 3f ff 	add  %o0, -1, %o0
   1ddc4:	83 3a 20 1f 	sra  %o0, 0x1f, %g1
   1ddc8:	81 80 60 00 	mov  %g1, %y
   1ddcc:	01 00 00 00 	nop 
   1ddd0:	01 00 00 00 	nop 
   1ddd4:	01 00 00 00 	nop 
   1ddd8:	90 7a 00 09 	sdiv  %o0, %o1, %o0
   1dddc:	81 c3 e0 08 	retl 
   1dde0:	01 00 00 00 	nop 

0001dde4 <jround_up>:
   1dde4:	90 02 00 09 	add  %o0, %o1, %o0
   1dde8:	90 02 3f ff 	add  %o0, -1, %o0
   1ddec:	83 3a 20 1f 	sra  %o0, 0x1f, %g1
   1ddf0:	81 80 60 00 	mov  %g1, %y
   1ddf4:	01 00 00 00 	nop 
   1ddf8:	01 00 00 00 	nop 
   1ddfc:	01 00 00 00 	nop 
   1de00:	90 7a 00 09 	sdiv  %o0, %o1, %o0
   1de04:	81 c3 e0 08 	retl 
   1de08:	90 5a 00 09 	smul  %o0, %o1, %o0

0001de0c <jcopy_sample_rows>:
   1de0c:	9d e3 bf 98 	save  %sp, -104, %sp
   1de10:	b3 2e 60 02 	sll  %i1, 2, %i1
   1de14:	b0 06 00 19 	add  %i0, %i1, %i0
   1de18:	b7 2e e0 02 	sll  %i3, 2, %i3
   1de1c:	80 a7 20 00 	cmp  %i4, 0
   1de20:	04 80 00 0c 	ble  1de50 <jcopy_sample_rows+0x44>
   1de24:	b4 06 80 1b 	add  %i2, %i3, %i2
   1de28:	d2 06 00 00 	ld  [ %i0 ], %o1
   1de2c:	b0 06 20 04 	add  %i0, 4, %i0
   1de30:	d0 06 80 00 	ld  [ %i2 ], %o0
   1de34:	b4 06 a0 04 	add  %i2, 4, %i2
   1de38:	40 00 56 4b 	call  33764 <memcpy@plt>
   1de3c:	94 10 00 1d 	mov  %i5, %o2
   1de40:	b8 07 3f ff 	add  %i4, -1, %i4
   1de44:	80 a7 20 00 	cmp  %i4, 0
   1de48:	34 bf ff f9 	bg,a   1de2c <jcopy_sample_rows+0x20>
   1de4c:	d2 06 00 00 	ld  [ %i0 ], %o1
   1de50:	81 c7 e0 08 	ret 
   1de54:	81 e8 00 00 	restore 

0001de58 <jcopy_block_row>:
   1de58:	9d e3 bf 98 	save  %sp, -104, %sp
   1de5c:	90 10 00 19 	mov  %i1, %o0
   1de60:	92 10 00 18 	mov  %i0, %o1
   1de64:	40 00 56 40 	call  33764 <memcpy@plt>
   1de68:	95 2e a0 07 	sll  %i2, 7, %o2
   1de6c:	01 00 00 00 	nop 
   1de70:	81 c7 e0 08 	ret 
   1de74:	81 e8 00 00 	restore 

0001de78 <jzero_far>:
   1de78:	9d e3 bf 98 	save  %sp, -104, %sp
   1de7c:	90 10 00 18 	mov  %i0, %o0
   1de80:	92 10 20 00 	clr  %o1
   1de84:	40 00 56 44 	call  33794 <memset@plt>
   1de88:	94 10 00 19 	mov  %i1, %o2
   1de8c:	01 00 00 00 	nop 
   1de90:	81 c7 e0 08 	ret 
   1de94:	81 e8 00 00 	restore 

0001de98 <error_exit>:
   1de98:	9d e3 bf 98 	save  %sp, -104, %sp
   1de9c:	c2 06 00 00 	ld  [ %i0 ], %g1
   1dea0:	c2 00 60 08 	ld  [ %g1 + 8 ], %g1
   1dea4:	9f c0 40 00 	call  %g1
   1dea8:	90 10 00 18 	mov  %i0, %o0
   1deac:	7f ff ff a4 	call  1dd3c <jpeg_destroy>
   1deb0:	90 10 00 18 	mov  %i0, %o0
   1deb4:	40 00 56 32 	call  3377c <exit@plt>
   1deb8:	90 10 20 01 	mov  1, %o0
   1debc:	01 00 00 00 	nop 

0001dec0 <output_message>:
   1dec0:	9d e3 be d0 	save  %sp, -304, %sp
   1dec4:	90 10 00 18 	mov  %i0, %o0
   1dec8:	c2 06 00 00 	ld  [ %i0 ], %g1
   1decc:	a0 07 bf 30 	add  %fp, -208, %l0
   1ded0:	c2 00 60 0c 	ld  [ %g1 + 0xc ], %g1
   1ded4:	9f c0 40 00 	call  %g1
   1ded8:	92 10 00 10 	mov  %l0, %o1
   1dedc:	03 00 00 cd 	sethi  %hi(0x33400), %g1
   1dee0:	d0 00 63 e0 	ld  [ %g1 + 0x3e0 ], %o0	! 337e0 <stderr@@GLIBC_2.0>
   1dee4:	13 00 00 86 	sethi  %hi(0x21800), %o1
   1dee8:	92 12 62 90 	or  %o1, 0x290, %o1	! 21a90 <c5to8bits+0x148>
   1deec:	40 00 56 15 	call  33740 <fprintf@plt>
   1def0:	94 10 00 10 	mov  %l0, %o2
   1def4:	01 00 00 00 	nop 
   1def8:	81 c7 e0 08 	ret 
   1defc:	81 e8 00 00 	restore 

0001df00 <emit_message>:
   1df00:	9d e3 bf 98 	save  %sp, -104, %sp
   1df04:	90 10 00 18 	mov  %i0, %o0
   1df08:	80 a6 60 00 	cmp  %i1, 0
   1df0c:	16 80 00 11 	bge  1df50 <emit_message+0x50>
   1df10:	e0 06 00 00 	ld  [ %i0 ], %l0
   1df14:	c2 04 20 6c 	ld  [ %l0 + 0x6c ], %g1
   1df18:	80 a0 60 00 	cmp  %g1, 0
   1df1c:	22 80 00 07 	be,a   1df38 <emit_message+0x38>
   1df20:	c2 04 20 08 	ld  [ %l0 + 8 ], %g1
   1df24:	c2 04 20 68 	ld  [ %l0 + 0x68 ], %g1
   1df28:	80 a0 60 02 	cmp  %g1, 2
   1df2c:	24 80 00 06 	ble,a   1df44 <emit_message+0x44>
   1df30:	c2 04 20 6c 	ld  [ %l0 + 0x6c ], %g1
   1df34:	c2 04 20 08 	ld  [ %l0 + 8 ], %g1
   1df38:	9f c0 40 00 	call  %g1
   1df3c:	01 00 00 00 	nop 
   1df40:	c2 04 20 6c 	ld  [ %l0 + 0x6c ], %g1
   1df44:	82 00 60 01 	inc  %g1
   1df48:	10 80 00 09 	b  1df6c <emit_message+0x6c>
   1df4c:	c2 24 20 6c 	st  %g1, [ %l0 + 0x6c ]
   1df50:	c2 04 20 68 	ld  [ %l0 + 0x68 ], %g1
   1df54:	80 a0 40 19 	cmp  %g1, %i1
   1df58:	06 80 00 05 	bl  1df6c <emit_message+0x6c>
   1df5c:	01 00 00 00 	nop 
   1df60:	c2 04 20 08 	ld  [ %l0 + 8 ], %g1
   1df64:	9f c0 40 00 	call  %g1
   1df68:	01 00 00 00 	nop 
   1df6c:	01 00 00 00 	nop 
   1df70:	81 c7 e0 08 	ret 
   1df74:	81 e8 00 00 	restore 

0001df78 <format_message>:
   1df78:	9d e3 bf 88 	save  %sp, -120, %sp
   1df7c:	90 10 00 19 	mov  %i1, %o0
   1df80:	f0 06 00 00 	ld  [ %i0 ], %i0
   1df84:	c6 06 20 14 	ld  [ %i0 + 0x14 ], %g3
   1df88:	80 a0 e0 00 	cmp  %g3, 0
   1df8c:	04 80 00 0a 	ble  1dfb4 <format_message+0x3c>
   1df90:	92 10 20 00 	clr  %o1
   1df94:	c2 06 20 74 	ld  [ %i0 + 0x74 ], %g1
   1df98:	80 a0 40 03 	cmp  %g1, %g3
   1df9c:	26 80 00 07 	bl,a   1dfb8 <format_message+0x40>
   1dfa0:	c4 06 20 78 	ld  [ %i0 + 0x78 ], %g2
   1dfa4:	c4 06 20 70 	ld  [ %i0 + 0x70 ], %g2
   1dfa8:	83 28 e0 02 	sll  %g3, 2, %g1
   1dfac:	10 80 00 11 	b  1dff0 <format_message+0x78>
   1dfb0:	d2 00 80 01 	ld  [ %g2 + %g1 ], %o1
   1dfb4:	c4 06 20 78 	ld  [ %i0 + 0x78 ], %g2
   1dfb8:	80 a0 a0 00 	cmp  %g2, 0
   1dfbc:	02 80 00 0e 	be  1dff4 <format_message+0x7c>
   1dfc0:	80 a2 60 00 	cmp  %o1, 0
   1dfc4:	c8 06 20 7c 	ld  [ %i0 + 0x7c ], %g4
   1dfc8:	80 a1 00 03 	cmp  %g4, %g3
   1dfcc:	14 80 00 0a 	bg  1dff4 <format_message+0x7c>
   1dfd0:	80 a2 60 00 	cmp  %o1, 0
   1dfd4:	c2 06 20 80 	ld  [ %i0 + 0x80 ], %g1
   1dfd8:	80 a0 40 03 	cmp  %g1, %g3
   1dfdc:	06 80 00 06 	bl  1dff4 <format_message+0x7c>
   1dfe0:	80 a2 60 00 	cmp  %o1, 0
   1dfe4:	82 20 c0 04 	sub  %g3, %g4, %g1
   1dfe8:	83 28 60 02 	sll  %g1, 2, %g1
   1dfec:	d2 00 80 01 	ld  [ %g2 + %g1 ], %o1
   1dff0:	80 a2 60 00 	cmp  %o1, 0
   1dff4:	12 80 00 05 	bne  1e008 <format_message+0x90>
   1dff8:	88 10 20 00 	clr  %g4
   1dffc:	c6 26 20 18 	st  %g3, [ %i0 + 0x18 ]
   1e000:	c2 06 20 70 	ld  [ %i0 + 0x70 ], %g1
   1e004:	d2 00 40 00 	ld  [ %g1 ], %o1
   1e008:	84 02 60 01 	add  %o1, 1, %g2
   1e00c:	c2 4a 40 00 	ldsb  [ %o1 ], %g1
   1e010:	80 a0 60 00 	cmp  %g1, 0
   1e014:	02 80 00 12 	be  1e05c <format_message+0xe4>
   1e018:	c6 0a 40 00 	ldub  [ %o1 ], %g3
   1e01c:	83 28 e0 18 	sll  %g3, 0x18, %g1
   1e020:	83 38 60 18 	sra  %g1, 0x18, %g1
   1e024:	80 a0 60 25 	cmp  %g1, 0x25
   1e028:	32 80 00 08 	bne,a   1e048 <format_message+0xd0>
   1e02c:	c2 08 80 00 	ldub  [ %g2 ], %g1
   1e030:	c2 48 80 00 	ldsb  [ %g2 ], %g1
   1e034:	80 a0 60 73 	cmp  %g1, 0x73
   1e038:	22 80 00 09 	be,a   1e05c <format_message+0xe4>
   1e03c:	88 10 20 01 	mov  1, %g4
   1e040:	10 80 00 08 	b  1e060 <format_message+0xe8>
   1e044:	80 a1 20 00 	cmp  %g4, 0
   1e048:	86 10 00 01 	mov  %g1, %g3
   1e04c:	83 28 60 18 	sll  %g1, 0x18, %g1
   1e050:	80 a0 60 00 	cmp  %g1, 0
   1e054:	12 bf ff f2 	bne  1e01c <format_message+0xa4>
   1e058:	84 00 a0 01 	inc  %g2
   1e05c:	80 a1 20 00 	cmp  %g4, 0
   1e060:	22 80 00 05 	be,a   1e074 <format_message+0xfc>
   1e064:	c2 06 20 28 	ld  [ %i0 + 0x28 ], %g1
   1e068:	40 00 55 b3 	call  33734 <sprintf@plt>
   1e06c:	94 06 20 18 	add  %i0, 0x18, %o2
   1e070:	30 80 00 0d 	b,a   1e0a4 <format_message+0x12c>
   1e074:	c2 23 a0 5c 	st  %g1, [ %sp + 0x5c ]
   1e078:	c2 06 20 2c 	ld  [ %i0 + 0x2c ], %g1
   1e07c:	c2 23 a0 60 	st  %g1, [ %sp + 0x60 ]
   1e080:	c2 06 20 30 	ld  [ %i0 + 0x30 ], %g1
   1e084:	c2 23 a0 64 	st  %g1, [ %sp + 0x64 ]
   1e088:	c2 06 20 34 	ld  [ %i0 + 0x34 ], %g1
   1e08c:	c2 23 a0 68 	st  %g1, [ %sp + 0x68 ]
   1e090:	d4 06 20 18 	ld  [ %i0 + 0x18 ], %o2
   1e094:	d6 06 20 1c 	ld  [ %i0 + 0x1c ], %o3
   1e098:	d8 06 20 20 	ld  [ %i0 + 0x20 ], %o4
   1e09c:	40 00 55 a6 	call  33734 <sprintf@plt>
   1e0a0:	da 06 20 24 	ld  [ %i0 + 0x24 ], %o5
   1e0a4:	01 00 00 00 	nop 
   1e0a8:	81 c7 e0 08 	ret 
   1e0ac:	81 e8 00 00 	restore 

0001e0b0 <reset_error_mgr>:
   1e0b0:	c2 02 00 00 	ld  [ %o0 ], %g1
   1e0b4:	c0 20 60 6c 	clr  [ %g1 + 0x6c ]
   1e0b8:	c2 02 00 00 	ld  [ %o0 ], %g1
   1e0bc:	81 c3 e0 08 	retl 
   1e0c0:	c0 20 60 14 	clr  [ %g1 + 0x14 ]

0001e0c4 <jpeg_std_error>:
   1e0c4:	03 00 00 77 	sethi  %hi(0x1dc00), %g1
   1e0c8:	82 10 62 98 	or  %g1, 0x298, %g1	! 1de98 <error_exit>
   1e0cc:	c2 22 00 00 	st  %g1, [ %o0 ]
   1e0d0:	03 00 00 77 	sethi  %hi(0x1dc00), %g1
   1e0d4:	82 10 63 00 	or  %g1, 0x300, %g1	! 1df00 <emit_message>
   1e0d8:	c2 22 20 04 	st  %g1, [ %o0 + 4 ]
   1e0dc:	03 00 00 77 	sethi  %hi(0x1dc00), %g1
   1e0e0:	82 10 62 c0 	or  %g1, 0x2c0, %g1	! 1dec0 <output_message>
   1e0e4:	c2 22 20 08 	st  %g1, [ %o0 + 8 ]
   1e0e8:	03 00 00 77 	sethi  %hi(0x1dc00), %g1
   1e0ec:	82 10 63 78 	or  %g1, 0x378, %g1	! 1df78 <format_message>
   1e0f0:	c2 22 20 0c 	st  %g1, [ %o0 + 0xc ]
   1e0f4:	03 00 00 78 	sethi  %hi(0x1e000), %g1
   1e0f8:	82 10 60 b0 	or  %g1, 0xb0, %g1	! 1e0b0 <reset_error_mgr>
   1e0fc:	c2 22 20 10 	st  %g1, [ %o0 + 0x10 ]
   1e100:	c0 22 20 68 	clr  [ %o0 + 0x68 ]
   1e104:	c0 22 20 6c 	clr  [ %o0 + 0x6c ]
   1e108:	c0 22 20 14 	clr  [ %o0 + 0x14 ]
   1e10c:	03 00 00 8c 	sethi  %hi(0x23000), %g1
   1e110:	82 10 63 44 	or  %g1, 0x344, %g1	! 23344 <jpeg_std_message_table>
   1e114:	c2 22 20 70 	st  %g1, [ %o0 + 0x70 ]
   1e118:	82 10 20 77 	mov  0x77, %g1
   1e11c:	c2 22 20 74 	st  %g1, [ %o0 + 0x74 ]
   1e120:	c0 22 20 78 	clr  [ %o0 + 0x78 ]
   1e124:	c0 22 20 7c 	clr  [ %o0 + 0x7c ]
   1e128:	81 c3 e0 08 	retl 
   1e12c:	c0 22 20 80 	clr  [ %o0 + 0x80 ]

0001e130 <out_of_memory>:
   1e130:	9d e3 bf 98 	save  %sp, -104, %sp
   1e134:	c4 06 00 00 	ld  [ %i0 ], %g2
   1e138:	82 10 20 35 	mov  0x35, %g1
   1e13c:	c2 20 a0 14 	st  %g1, [ %g2 + 0x14 ]
   1e140:	c2 06 00 00 	ld  [ %i0 ], %g1
   1e144:	f2 20 60 18 	st  %i1, [ %g1 + 0x18 ]
   1e148:	c2 06 00 00 	ld  [ %i0 ], %g1
   1e14c:	c2 00 40 00 	ld  [ %g1 ], %g1
   1e150:	9f c0 40 00 	call  %g1
   1e154:	90 10 00 18 	mov  %i0, %o0
   1e158:	01 00 00 00 	nop 
   1e15c:	81 c7 e0 08 	ret 
   1e160:	81 e8 00 00 	restore 

0001e164 <alloc_small>:
   1e164:	9d e3 bf 98 	save  %sp, -104, %sp
   1e168:	a6 10 00 19 	mov  %i1, %l3
   1e16c:	03 0e e6 b2 	sethi  %hi(0x3b9ac800), %g1
   1e170:	82 10 61 f0 	or  %g1, 0x1f0, %g1	! 3b9ac9f0 <_end+0x3b9791f0>
   1e174:	80 a6 80 01 	cmp  %i2, %g1
   1e178:	08 80 00 05 	bleu  1e18c <alloc_small+0x28>
   1e17c:	f2 06 20 04 	ld  [ %i0 + 4 ], %i1
   1e180:	90 10 00 18 	mov  %i0, %o0
   1e184:	7f ff ff eb 	call  1e130 <out_of_memory>
   1e188:	92 10 20 01 	mov  1, %o1
   1e18c:	82 8e a0 07 	andcc  %i2, 7, %g1
   1e190:	02 80 00 04 	be  1e1a0 <alloc_small+0x3c>
   1e194:	80 a4 e0 01 	cmp  %l3, 1
   1e198:	b4 26 80 01 	sub  %i2, %g1, %i2
   1e19c:	b4 06 a0 08 	add  %i2, 8, %i2
   1e1a0:	08 80 00 0c 	bleu  1e1d0 <alloc_small+0x6c>
   1e1a4:	83 2c e0 02 	sll  %l3, 2, %g1
   1e1a8:	c4 06 00 00 	ld  [ %i0 ], %g2
   1e1ac:	82 10 20 0c 	mov  0xc, %g1
   1e1b0:	c2 20 a0 14 	st  %g1, [ %g2 + 0x14 ]
   1e1b4:	c2 06 00 00 	ld  [ %i0 ], %g1
   1e1b8:	e6 20 60 18 	st  %l3, [ %g1 + 0x18 ]
   1e1bc:	c2 06 00 00 	ld  [ %i0 ], %g1
   1e1c0:	c2 00 40 00 	ld  [ %g1 ], %g1
   1e1c4:	9f c0 40 00 	call  %g1
   1e1c8:	90 10 00 18 	mov  %i0, %o0
   1e1cc:	83 2c e0 02 	sll  %l3, 2, %g1
   1e1d0:	82 00 40 19 	add  %g1, %i1, %g1
   1e1d4:	d0 00 60 30 	ld  [ %g1 + 0x30 ], %o0
   1e1d8:	80 a2 20 00 	cmp  %o0, 0
   1e1dc:	02 80 00 0f 	be  1e218 <alloc_small+0xb4>
   1e1e0:	a4 10 20 00 	clr  %l2
   1e1e4:	c2 02 20 08 	ld  [ %o0 + 8 ], %g1
   1e1e8:	80 a0 40 1a 	cmp  %g1, %i2
   1e1ec:	1a 80 00 09 	bcc  1e210 <alloc_small+0xac>
   1e1f0:	80 a2 20 00 	cmp  %o0, 0
   1e1f4:	a4 10 00 08 	mov  %o0, %l2
   1e1f8:	d0 02 00 00 	ld  [ %o0 ], %o0
   1e1fc:	80 a2 20 00 	cmp  %o0, 0
   1e200:	32 bf ff fa 	bne,a   1e1e8 <alloc_small+0x84>
   1e204:	c2 02 20 08 	ld  [ %o0 + 8 ], %g1
   1e208:	10 80 00 05 	b  1e21c <alloc_small+0xb8>
   1e20c:	a2 06 a0 10 	add  %i2, 0x10, %l1
   1e210:	12 80 00 30 	bne  1e2d0 <alloc_small+0x16c>
   1e214:	84 02 20 10 	add  %o0, 0x10, %g2
   1e218:	a2 06 a0 10 	add  %i2, 0x10, %l1
   1e21c:	80 a4 a0 00 	cmp  %l2, 0
   1e220:	12 80 00 06 	bne  1e238 <alloc_small+0xd4>
   1e224:	85 2c e0 02 	sll  %l3, 2, %g2
   1e228:	03 00 00 8d 	sethi  %hi(0x23400), %g1
   1e22c:	82 10 61 28 	or  %g1, 0x128, %g1	! 23528 <first_pool_slop>
   1e230:	10 80 00 05 	b  1e244 <alloc_small+0xe0>
   1e234:	e0 00 40 02 	ld  [ %g1 + %g2 ], %l0
   1e238:	03 00 00 8d 	sethi  %hi(0x23400), %g1
   1e23c:	82 10 61 30 	or  %g1, 0x130, %g1	! 23530 <extra_pool_slop>
   1e240:	e0 00 40 02 	ld  [ %g1 + %g2 ], %l0
   1e244:	03 0e e6 b2 	sethi  %hi(0x3b9ac800), %g1
   1e248:	82 10 62 00 	or  %g1, 0x200, %g1	! 3b9aca00 <_end+0x3b979200>
   1e24c:	82 20 40 11 	sub  %g1, %l1, %g1
   1e250:	80 a0 40 10 	cmp  %g1, %l0
   1e254:	2a 80 00 02 	bcs,a   1e25c <alloc_small+0xf8>
   1e258:	a0 10 00 01 	mov  %g1, %l0
   1e25c:	90 10 00 18 	mov  %i0, %o0
   1e260:	40 00 03 e4 	call  1f1f0 <jpeg_get_small>
   1e264:	92 04 40 10 	add  %l1, %l0, %o1
   1e268:	80 a2 20 00 	cmp  %o0, 0
   1e26c:	12 80 00 0a 	bne  1e294 <alloc_small+0x130>
   1e270:	82 04 40 10 	add  %l1, %l0, %g1
   1e274:	a1 34 20 01 	srl  %l0, 1, %l0
   1e278:	80 a4 20 31 	cmp  %l0, 0x31
   1e27c:	18 bf ff f9 	bgu  1e260 <alloc_small+0xfc>
   1e280:	90 10 00 18 	mov  %i0, %o0
   1e284:	7f ff ff ab 	call  1e130 <out_of_memory>
   1e288:	92 10 20 02 	mov  2, %o1
   1e28c:	10 bf ff f5 	b  1e260 <alloc_small+0xfc>
   1e290:	90 10 00 18 	mov  %i0, %o0
   1e294:	c4 06 60 48 	ld  [ %i1 + 0x48 ], %g2
   1e298:	82 00 40 02 	add  %g1, %g2, %g1
   1e29c:	c2 26 60 48 	st  %g1, [ %i1 + 0x48 ]
   1e2a0:	c0 22 00 00 	clr  [ %o0 ]
   1e2a4:	c0 22 20 04 	clr  [ %o0 + 4 ]
   1e2a8:	82 06 80 10 	add  %i2, %l0, %g1
   1e2ac:	80 a4 a0 00 	cmp  %l2, 0
   1e2b0:	12 80 00 06 	bne  1e2c8 <alloc_small+0x164>
   1e2b4:	c2 22 20 08 	st  %g1, [ %o0 + 8 ]
   1e2b8:	83 2c e0 02 	sll  %l3, 2, %g1
   1e2bc:	82 00 40 19 	add  %g1, %i1, %g1
   1e2c0:	10 80 00 03 	b  1e2cc <alloc_small+0x168>
   1e2c4:	d0 20 60 30 	st  %o0, [ %g1 + 0x30 ]
   1e2c8:	d0 24 80 00 	st  %o0, [ %l2 ]
   1e2cc:	84 02 20 10 	add  %o0, 0x10, %g2
   1e2d0:	f0 02 20 04 	ld  [ %o0 + 4 ], %i0
   1e2d4:	82 06 80 18 	add  %i2, %i0, %g1
   1e2d8:	c2 22 20 04 	st  %g1, [ %o0 + 4 ]
   1e2dc:	c2 02 20 08 	ld  [ %o0 + 8 ], %g1
   1e2e0:	82 20 40 1a 	sub  %g1, %i2, %g1
   1e2e4:	c2 22 20 08 	st  %g1, [ %o0 + 8 ]
   1e2e8:	81 c7 e0 08 	ret 
   1e2ec:	91 e8 80 18 	restore  %g2, %i0, %o0

0001e2f0 <alloc_large>:
   1e2f0:	9d e3 bf 98 	save  %sp, -104, %sp
   1e2f4:	a0 10 00 18 	mov  %i0, %l0
   1e2f8:	a2 10 00 19 	mov  %i1, %l1
   1e2fc:	03 0e e6 b2 	sethi  %hi(0x3b9ac800), %g1
   1e300:	82 10 61 f0 	or  %g1, 0x1f0, %g1	! 3b9ac9f0 <_end+0x3b9791f0>
   1e304:	80 a6 80 01 	cmp  %i2, %g1
   1e308:	08 80 00 05 	bleu  1e31c <alloc_large+0x2c>
   1e30c:	f2 06 20 04 	ld  [ %i0 + 4 ], %i1
   1e310:	90 10 00 18 	mov  %i0, %o0
   1e314:	7f ff ff 87 	call  1e130 <out_of_memory>
   1e318:	92 10 20 03 	mov  3, %o1
   1e31c:	82 8e a0 07 	andcc  %i2, 7, %g1
   1e320:	02 80 00 04 	be  1e330 <alloc_large+0x40>
   1e324:	80 a4 60 01 	cmp  %l1, 1
   1e328:	b4 26 80 01 	sub  %i2, %g1, %i2
   1e32c:	b4 06 a0 08 	add  %i2, 8, %i2
   1e330:	08 80 00 0c 	bleu  1e360 <alloc_large+0x70>
   1e334:	90 10 00 10 	mov  %l0, %o0
   1e338:	c4 04 00 00 	ld  [ %l0 ], %g2
   1e33c:	82 10 20 0c 	mov  0xc, %g1
   1e340:	c2 20 a0 14 	st  %g1, [ %g2 + 0x14 ]
   1e344:	c2 04 00 00 	ld  [ %l0 ], %g1
   1e348:	e2 20 60 18 	st  %l1, [ %g1 + 0x18 ]
   1e34c:	c2 04 00 00 	ld  [ %l0 ], %g1
   1e350:	c2 00 40 00 	ld  [ %g1 ], %g1
   1e354:	9f c0 40 00 	call  %g1
   1e358:	90 10 00 10 	mov  %l0, %o0
   1e35c:	90 10 00 10 	mov  %l0, %o0
   1e360:	40 00 03 af 	call  1f21c <jpeg_get_large>
   1e364:	92 06 a0 10 	add  %i2, 0x10, %o1
   1e368:	80 a2 20 00 	cmp  %o0, 0
   1e36c:	12 80 00 05 	bne  1e380 <alloc_large+0x90>
   1e370:	b0 10 00 08 	mov  %o0, %i0
   1e374:	90 10 00 10 	mov  %l0, %o0
   1e378:	7f ff ff 6e 	call  1e130 <out_of_memory>
   1e37c:	92 10 20 04 	mov  4, %o1
   1e380:	c2 06 60 48 	ld  [ %i1 + 0x48 ], %g1
   1e384:	82 06 80 01 	add  %i2, %g1, %g1
   1e388:	82 00 60 10 	add  %g1, 0x10, %g1
   1e38c:	c2 26 60 48 	st  %g1, [ %i1 + 0x48 ]
   1e390:	85 2c 60 02 	sll  %l1, 2, %g2
   1e394:	84 00 80 19 	add  %g2, %i1, %g2
   1e398:	c2 00 a0 38 	ld  [ %g2 + 0x38 ], %g1
   1e39c:	c2 26 00 00 	st  %g1, [ %i0 ]
   1e3a0:	f4 26 20 04 	st  %i2, [ %i0 + 4 ]
   1e3a4:	c0 26 20 08 	clr  [ %i0 + 8 ]
   1e3a8:	f0 20 a0 38 	st  %i0, [ %g2 + 0x38 ]
   1e3ac:	81 c7 e0 08 	ret 
   1e3b0:	91 ee 20 10 	restore  %i0, 0x10, %o0

0001e3b4 <alloc_sarray>:
   1e3b4:	9d e3 bf 98 	save  %sp, -104, %sp
   1e3b8:	a4 10 00 18 	mov  %i0, %l2
   1e3bc:	03 0e e6 b2 	sethi  %hi(0x3b9ac800), %g1
   1e3c0:	82 10 61 f0 	or  %g1, 0x1f0, %g1	! 3b9ac9f0 <_end+0x3b9791f0>
   1e3c4:	81 80 00 00 	mov  %g0, %y
   1e3c8:	01 00 00 00 	nop 
   1e3cc:	01 00 00 00 	nop 
   1e3d0:	01 00 00 00 	nop 
   1e3d4:	a0 f0 40 1a 	udivcc  %g1, %i2, %l0
   1e3d8:	14 80 00 09 	bg  1e3fc <alloc_sarray+0x48>
   1e3dc:	f0 06 20 04 	ld  [ %i0 + 4 ], %i0
   1e3e0:	c4 04 80 00 	ld  [ %l2 ], %g2
   1e3e4:	82 10 20 45 	mov  0x45, %g1
   1e3e8:	c2 20 a0 14 	st  %g1, [ %g2 + 0x14 ]
   1e3ec:	c2 04 80 00 	ld  [ %l2 ], %g1
   1e3f0:	c2 00 40 00 	ld  [ %g1 ], %g1
   1e3f4:	9f c0 40 00 	call  %g1
   1e3f8:	90 10 00 12 	mov  %l2, %o0
   1e3fc:	80 a6 c0 10 	cmp  %i3, %l0
   1e400:	14 80 00 03 	bg  1e40c <alloc_sarray+0x58>
   1e404:	a2 10 00 10 	mov  %l0, %l1
   1e408:	a2 10 00 1b 	mov  %i3, %l1
   1e40c:	e2 26 20 4c 	st  %l1, [ %i0 + 0x4c ]
   1e410:	90 10 00 12 	mov  %l2, %o0
   1e414:	92 10 00 19 	mov  %i1, %o1
   1e418:	7f ff ff 53 	call  1e164 <alloc_small>
   1e41c:	95 2e e0 02 	sll  %i3, 2, %o2
   1e420:	a0 10 20 00 	clr  %l0
   1e424:	80 a4 00 1b 	cmp  %l0, %i3
   1e428:	1a 80 00 16 	bcc  1e480 <alloc_sarray+0xcc>
   1e42c:	b0 10 00 08 	mov  %o0, %i0
   1e430:	82 26 c0 10 	sub  %i3, %l0, %g1
   1e434:	80 a4 40 01 	cmp  %l1, %g1
   1e438:	38 80 00 02 	bgu,a   1e440 <alloc_sarray+0x8c>
   1e43c:	a2 10 00 01 	mov  %g1, %l1
   1e440:	90 10 00 12 	mov  %l2, %o0
   1e444:	92 10 00 19 	mov  %i1, %o1
   1e448:	7f ff ff aa 	call  1e2f0 <alloc_large>
   1e44c:	94 5c 40 1a 	smul  %l1, %i2, %o2
   1e450:	80 a4 60 00 	cmp  %l1, 0
   1e454:	02 80 00 08 	be  1e474 <alloc_sarray+0xc0>
   1e458:	84 10 00 11 	mov  %l1, %g2
   1e45c:	83 2c 20 02 	sll  %l0, 2, %g1
   1e460:	d0 26 00 01 	st  %o0, [ %i0 + %g1 ]
   1e464:	a0 04 20 01 	inc  %l0
   1e468:	84 80 bf ff 	addcc  %g2, -1, %g2
   1e46c:	12 bf ff fc 	bne  1e45c <alloc_sarray+0xa8>
   1e470:	90 02 00 1a 	add  %o0, %i2, %o0
   1e474:	80 a4 00 1b 	cmp  %l0, %i3
   1e478:	0a bf ff ef 	bcs  1e434 <alloc_sarray+0x80>
   1e47c:	82 26 c0 10 	sub  %i3, %l0, %g1
   1e480:	81 c7 e0 08 	ret 
   1e484:	81 e8 00 00 	restore 

0001e488 <alloc_barray>:
   1e488:	9d e3 bf 98 	save  %sp, -104, %sp
   1e48c:	a6 10 00 18 	mov  %i0, %l3
   1e490:	85 2e a0 07 	sll  %i2, 7, %g2
   1e494:	03 0e e6 b2 	sethi  %hi(0x3b9ac800), %g1
   1e498:	82 10 61 f0 	or  %g1, 0x1f0, %g1	! 3b9ac9f0 <_end+0x3b9791f0>
   1e49c:	81 80 00 00 	mov  %g0, %y
   1e4a0:	01 00 00 00 	nop 
   1e4a4:	01 00 00 00 	nop 
   1e4a8:	01 00 00 00 	nop 
   1e4ac:	a0 f0 40 02 	udivcc  %g1, %g2, %l0
   1e4b0:	14 80 00 09 	bg  1e4d4 <alloc_barray+0x4c>
   1e4b4:	e4 06 20 04 	ld  [ %i0 + 4 ], %l2
   1e4b8:	c4 06 00 00 	ld  [ %i0 ], %g2
   1e4bc:	82 10 20 45 	mov  0x45, %g1
   1e4c0:	c2 20 a0 14 	st  %g1, [ %g2 + 0x14 ]
   1e4c4:	c2 06 00 00 	ld  [ %i0 ], %g1
   1e4c8:	c2 00 40 00 	ld  [ %g1 ], %g1
   1e4cc:	9f c0 40 00 	call  %g1
   1e4d0:	90 10 00 18 	mov  %i0, %o0
   1e4d4:	80 a6 c0 10 	cmp  %i3, %l0
   1e4d8:	14 80 00 03 	bg  1e4e4 <alloc_barray+0x5c>
   1e4dc:	a2 10 00 10 	mov  %l0, %l1
   1e4e0:	a2 10 00 1b 	mov  %i3, %l1
   1e4e4:	e2 24 a0 4c 	st  %l1, [ %l2 + 0x4c ]
   1e4e8:	90 10 00 13 	mov  %l3, %o0
   1e4ec:	92 10 00 19 	mov  %i1, %o1
   1e4f0:	7f ff ff 1d 	call  1e164 <alloc_small>
   1e4f4:	95 2e e0 02 	sll  %i3, 2, %o2
   1e4f8:	a0 10 20 00 	clr  %l0
   1e4fc:	80 a4 00 1b 	cmp  %l0, %i3
   1e500:	1a 80 00 19 	bcc  1e564 <alloc_barray+0xdc>
   1e504:	b0 10 00 08 	mov  %o0, %i0
   1e508:	a5 2e a0 07 	sll  %i2, 7, %l2
   1e50c:	82 26 c0 10 	sub  %i3, %l0, %g1
   1e510:	80 a4 40 01 	cmp  %l1, %g1
   1e514:	38 80 00 02 	bgu,a   1e51c <alloc_barray+0x94>
   1e518:	a2 10 00 01 	mov  %g1, %l1
   1e51c:	94 5c 40 1a 	smul  %l1, %i2, %o2
   1e520:	90 10 00 13 	mov  %l3, %o0
   1e524:	92 10 00 19 	mov  %i1, %o1
   1e528:	7f ff ff 72 	call  1e2f0 <alloc_large>
   1e52c:	95 2a a0 07 	sll  %o2, 7, %o2
   1e530:	80 a4 60 00 	cmp  %l1, 0
   1e534:	02 80 00 09 	be  1e558 <alloc_barray+0xd0>
   1e538:	84 10 00 11 	mov  %l1, %g2
   1e53c:	86 10 00 12 	mov  %l2, %g3
   1e540:	83 2c 20 02 	sll  %l0, 2, %g1
   1e544:	d0 26 00 01 	st  %o0, [ %i0 + %g1 ]
   1e548:	a0 04 20 01 	inc  %l0
   1e54c:	84 80 bf ff 	addcc  %g2, -1, %g2
   1e550:	12 bf ff fc 	bne  1e540 <alloc_barray+0xb8>
   1e554:	90 02 00 03 	add  %o0, %g3, %o0
   1e558:	80 a4 00 1b 	cmp  %l0, %i3
   1e55c:	0a bf ff ed 	bcs  1e510 <alloc_barray+0x88>
   1e560:	82 26 c0 10 	sub  %i3, %l0, %g1
   1e564:	81 c7 e0 08 	ret 
   1e568:	81 e8 00 00 	restore 

0001e56c <request_virt_sarray>:
   1e56c:	9d e3 bf 98 	save  %sp, -104, %sp
   1e570:	80 a6 60 01 	cmp  %i1, 1
   1e574:	02 80 00 0b 	be  1e5a0 <request_virt_sarray+0x34>
   1e578:	e0 06 20 04 	ld  [ %i0 + 4 ], %l0
   1e57c:	c4 06 00 00 	ld  [ %i0 ], %g2
   1e580:	82 10 20 0c 	mov  0xc, %g1
   1e584:	c2 20 a0 14 	st  %g1, [ %g2 + 0x14 ]
   1e588:	c2 06 00 00 	ld  [ %i0 ], %g1
   1e58c:	f2 20 60 18 	st  %i1, [ %g1 + 0x18 ]
   1e590:	c2 06 00 00 	ld  [ %i0 ], %g1
   1e594:	c2 00 40 00 	ld  [ %g1 ], %g1
   1e598:	9f c0 40 00 	call  %g1
   1e59c:	90 10 00 18 	mov  %i0, %o0
   1e5a0:	90 10 00 18 	mov  %i0, %o0
   1e5a4:	92 10 00 19 	mov  %i1, %o1
   1e5a8:	7f ff fe ef 	call  1e164 <alloc_small>
   1e5ac:	94 10 20 80 	mov  0x80, %o2
   1e5b0:	c0 22 00 00 	clr  [ %o0 ]
   1e5b4:	f8 22 20 04 	st  %i4, [ %o0 + 4 ]
   1e5b8:	f6 22 20 08 	st  %i3, [ %o0 + 8 ]
   1e5bc:	fa 22 20 0c 	st  %i5, [ %o0 + 0xc ]
   1e5c0:	f4 22 20 20 	st  %i2, [ %o0 + 0x20 ]
   1e5c4:	c0 22 20 28 	clr  [ %o0 + 0x28 ]
   1e5c8:	c2 04 20 40 	ld  [ %l0 + 0x40 ], %g1
   1e5cc:	c2 22 20 2c 	st  %g1, [ %o0 + 0x2c ]
   1e5d0:	d0 24 20 40 	st  %o0, [ %l0 + 0x40 ]
   1e5d4:	81 c7 e0 08 	ret 
   1e5d8:	91 e8 00 08 	restore  %g0, %o0, %o0

0001e5dc <request_virt_barray>:
   1e5dc:	9d e3 bf 98 	save  %sp, -104, %sp
   1e5e0:	80 a6 60 01 	cmp  %i1, 1
   1e5e4:	02 80 00 0b 	be  1e610 <request_virt_barray+0x34>
   1e5e8:	e0 06 20 04 	ld  [ %i0 + 4 ], %l0
   1e5ec:	c4 06 00 00 	ld  [ %i0 ], %g2
   1e5f0:	82 10 20 0c 	mov  0xc, %g1
   1e5f4:	c2 20 a0 14 	st  %g1, [ %g2 + 0x14 ]
   1e5f8:	c2 06 00 00 	ld  [ %i0 ], %g1
   1e5fc:	f2 20 60 18 	st  %i1, [ %g1 + 0x18 ]
   1e600:	c2 06 00 00 	ld  [ %i0 ], %g1
   1e604:	c2 00 40 00 	ld  [ %g1 ], %g1
   1e608:	9f c0 40 00 	call  %g1
   1e60c:	90 10 00 18 	mov  %i0, %o0
   1e610:	90 10 00 18 	mov  %i0, %o0
   1e614:	92 10 00 19 	mov  %i1, %o1
   1e618:	7f ff fe d3 	call  1e164 <alloc_small>
   1e61c:	94 10 20 80 	mov  0x80, %o2
   1e620:	c0 22 00 00 	clr  [ %o0 ]
   1e624:	f8 22 20 04 	st  %i4, [ %o0 + 4 ]
   1e628:	f6 22 20 08 	st  %i3, [ %o0 + 8 ]
   1e62c:	fa 22 20 0c 	st  %i5, [ %o0 + 0xc ]
   1e630:	f4 22 20 20 	st  %i2, [ %o0 + 0x20 ]
   1e634:	c0 22 20 28 	clr  [ %o0 + 0x28 ]
   1e638:	c2 04 20 44 	ld  [ %l0 + 0x44 ], %g1
   1e63c:	c2 22 20 2c 	st  %g1, [ %o0 + 0x2c ]
   1e640:	d0 24 20 44 	st  %o0, [ %l0 + 0x44 ]
   1e644:	81 c7 e0 08 	ret 
   1e648:	91 e8 00 08 	restore  %g0, %o0, %o0

0001e64c <realize_virt_arrays>:
   1e64c:	9d e3 bf 98 	save  %sp, -104, %sp
   1e650:	e6 06 20 04 	ld  [ %i0 + 4 ], %l3
   1e654:	a2 10 20 00 	clr  %l1
   1e658:	e0 04 e0 40 	ld  [ %l3 + 0x40 ], %l0
   1e65c:	80 a4 20 00 	cmp  %l0, 0
   1e660:	02 80 00 11 	be  1e6a4 <realize_virt_arrays+0x58>
   1e664:	a4 10 20 00 	clr  %l2
   1e668:	c2 04 00 00 	ld  [ %l0 ], %g1
   1e66c:	80 a0 60 00 	cmp  %g1, 0
   1e670:	32 80 00 0a 	bne,a   1e698 <realize_virt_arrays+0x4c>
   1e674:	e0 04 20 2c 	ld  [ %l0 + 0x2c ], %l0
   1e678:	c2 04 20 0c 	ld  [ %l0 + 0xc ], %g1
   1e67c:	c4 04 20 08 	ld  [ %l0 + 8 ], %g2
   1e680:	82 58 40 02 	smul  %g1, %g2, %g1
   1e684:	a2 04 40 01 	add  %l1, %g1, %l1
   1e688:	c2 04 20 04 	ld  [ %l0 + 4 ], %g1
   1e68c:	82 58 40 02 	smul  %g1, %g2, %g1
   1e690:	a4 04 80 01 	add  %l2, %g1, %l2
   1e694:	e0 04 20 2c 	ld  [ %l0 + 0x2c ], %l0
   1e698:	80 a4 20 00 	cmp  %l0, 0
   1e69c:	32 bf ff f4 	bne,a   1e66c <realize_virt_arrays+0x20>
   1e6a0:	c2 04 00 00 	ld  [ %l0 ], %g1
   1e6a4:	e0 04 e0 44 	ld  [ %l3 + 0x44 ], %l0
   1e6a8:	80 a4 20 00 	cmp  %l0, 0
   1e6ac:	02 80 00 14 	be  1e6fc <realize_virt_arrays+0xb0>
   1e6b0:	80 a4 60 00 	cmp  %l1, 0
   1e6b4:	c2 04 00 00 	ld  [ %l0 ], %g1
   1e6b8:	80 a0 60 00 	cmp  %g1, 0
   1e6bc:	32 80 00 0c 	bne,a   1e6ec <realize_virt_arrays+0xa0>
   1e6c0:	e0 04 20 2c 	ld  [ %l0 + 0x2c ], %l0
   1e6c4:	c2 04 20 0c 	ld  [ %l0 + 0xc ], %g1
   1e6c8:	c4 04 20 08 	ld  [ %l0 + 8 ], %g2
   1e6cc:	82 58 40 02 	smul  %g1, %g2, %g1
   1e6d0:	83 28 60 07 	sll  %g1, 7, %g1
   1e6d4:	a2 04 40 01 	add  %l1, %g1, %l1
   1e6d8:	c2 04 20 04 	ld  [ %l0 + 4 ], %g1
   1e6dc:	82 58 40 02 	smul  %g1, %g2, %g1
   1e6e0:	83 28 60 07 	sll  %g1, 7, %g1
   1e6e4:	a4 04 80 01 	add  %l2, %g1, %l2
   1e6e8:	e0 04 20 2c 	ld  [ %l0 + 0x2c ], %l0
   1e6ec:	80 a4 20 00 	cmp  %l0, 0
   1e6f0:	32 bf ff f2 	bne,a   1e6b8 <realize_virt_arrays+0x6c>
   1e6f4:	c2 04 00 00 	ld  [ %l0 ], %g1
   1e6f8:	80 a4 60 00 	cmp  %l1, 0
   1e6fc:	04 80 00 6f 	ble  1e8b8 <realize_virt_arrays+0x26c>
   1e700:	90 10 00 18 	mov  %i0, %o0
   1e704:	92 10 00 11 	mov  %l1, %o1
   1e708:	94 10 00 12 	mov  %l2, %o2
   1e70c:	40 00 02 cf 	call  1f248 <jpeg_mem_available>
   1e710:	d6 04 e0 48 	ld  [ %l3 + 0x48 ], %o3
   1e714:	03 0e e6 b2 	sethi  %hi(0x3b9ac800), %g1
   1e718:	80 a2 00 12 	cmp  %o0, %l2
   1e71c:	16 80 00 0a 	bge  1e744 <realize_virt_arrays+0xf8>
   1e720:	a8 10 62 00 	or  %g1, 0x200, %l4
   1e724:	83 3a 20 1f 	sra  %o0, 0x1f, %g1
   1e728:	81 80 60 00 	mov  %g1, %y
   1e72c:	01 00 00 00 	nop 
   1e730:	01 00 00 00 	nop 
   1e734:	01 00 00 00 	nop 
   1e738:	a8 fa 00 11 	sdivcc  %o0, %l1, %l4
   1e73c:	24 80 00 02 	ble,a   1e744 <realize_virt_arrays+0xf8>
   1e740:	a8 10 20 01 	mov  1, %l4
   1e744:	e0 04 e0 40 	ld  [ %l3 + 0x40 ], %l0
   1e748:	80 a4 20 00 	cmp  %l0, 0
   1e74c:	22 80 00 2d 	be,a   1e800 <realize_virt_arrays+0x1b4>
   1e750:	e0 04 e0 44 	ld  [ %l3 + 0x44 ], %l0
   1e754:	c2 04 00 00 	ld  [ %l0 ], %g1
   1e758:	80 a0 60 00 	cmp  %g1, 0
   1e75c:	32 80 00 25 	bne,a   1e7f0 <realize_virt_arrays+0x1a4>
   1e760:	e0 04 20 2c 	ld  [ %l0 + 0x2c ], %l0
   1e764:	c4 04 20 04 	ld  [ %l0 + 4 ], %g2
   1e768:	82 00 bf ff 	add  %g2, -1, %g1
   1e76c:	81 80 00 00 	mov  %g0, %y
   1e770:	c6 04 20 0c 	ld  [ %l0 + 0xc ], %g3
   1e774:	01 00 00 00 	nop 
   1e778:	01 00 00 00 	nop 
   1e77c:	86 70 40 03 	udiv  %g1, %g3, %g3
   1e780:	82 00 e0 01 	add  %g3, 1, %g1
   1e784:	80 a0 40 14 	cmp  %g1, %l4
   1e788:	34 80 00 04 	bg,a   1e798 <realize_virt_arrays+0x14c>
   1e78c:	c2 04 20 0c 	ld  [ %l0 + 0xc ], %g1
   1e790:	10 80 00 0c 	b  1e7c0 <realize_virt_arrays+0x174>
   1e794:	c4 24 20 10 	st  %g2, [ %l0 + 0x10 ]
   1e798:	82 5d 00 01 	smul  %l4, %g1, %g1
   1e79c:	c2 24 20 10 	st  %g1, [ %l0 + 0x10 ]
   1e7a0:	c2 04 20 04 	ld  [ %l0 + 4 ], %g1
   1e7a4:	d4 04 20 08 	ld  [ %l0 + 8 ], %o2
   1e7a8:	90 10 00 18 	mov  %i0, %o0
   1e7ac:	92 04 20 30 	add  %l0, 0x30, %o1
   1e7b0:	40 00 02 a8 	call  1f250 <jpeg_open_backing_store>
   1e7b4:	94 58 40 0a 	smul  %g1, %o2, %o2
   1e7b8:	82 10 20 01 	mov  1, %g1
   1e7bc:	c2 24 20 28 	st  %g1, [ %l0 + 0x28 ]
   1e7c0:	90 10 00 18 	mov  %i0, %o0
   1e7c4:	92 10 20 01 	mov  1, %o1
   1e7c8:	d4 04 20 08 	ld  [ %l0 + 8 ], %o2
   1e7cc:	7f ff fe fa 	call  1e3b4 <alloc_sarray>
   1e7d0:	d6 04 20 10 	ld  [ %l0 + 0x10 ], %o3
   1e7d4:	d0 24 00 00 	st  %o0, [ %l0 ]
   1e7d8:	c2 04 e0 4c 	ld  [ %l3 + 0x4c ], %g1
   1e7dc:	c2 24 20 14 	st  %g1, [ %l0 + 0x14 ]
   1e7e0:	c0 24 20 18 	clr  [ %l0 + 0x18 ]
   1e7e4:	c0 24 20 1c 	clr  [ %l0 + 0x1c ]
   1e7e8:	c0 24 20 24 	clr  [ %l0 + 0x24 ]
   1e7ec:	e0 04 20 2c 	ld  [ %l0 + 0x2c ], %l0
   1e7f0:	80 a4 20 00 	cmp  %l0, 0
   1e7f4:	32 bf ff d9 	bne,a   1e758 <realize_virt_arrays+0x10c>
   1e7f8:	c2 04 00 00 	ld  [ %l0 ], %g1
   1e7fc:	e0 04 e0 44 	ld  [ %l3 + 0x44 ], %l0
   1e800:	80 a4 20 00 	cmp  %l0, 0
   1e804:	02 80 00 2d 	be  1e8b8 <realize_virt_arrays+0x26c>
   1e808:	01 00 00 00 	nop 
   1e80c:	c2 04 00 00 	ld  [ %l0 ], %g1
   1e810:	80 a0 60 00 	cmp  %g1, 0
   1e814:	32 80 00 26 	bne,a   1e8ac <realize_virt_arrays+0x260>
   1e818:	e0 04 20 2c 	ld  [ %l0 + 0x2c ], %l0
   1e81c:	c4 04 20 04 	ld  [ %l0 + 4 ], %g2
   1e820:	82 00 bf ff 	add  %g2, -1, %g1
   1e824:	81 80 00 00 	mov  %g0, %y
   1e828:	c6 04 20 0c 	ld  [ %l0 + 0xc ], %g3
   1e82c:	01 00 00 00 	nop 
   1e830:	01 00 00 00 	nop 
   1e834:	86 70 40 03 	udiv  %g1, %g3, %g3
   1e838:	82 00 e0 01 	add  %g3, 1, %g1
   1e83c:	80 a0 40 14 	cmp  %g1, %l4
   1e840:	34 80 00 04 	bg,a   1e850 <realize_virt_arrays+0x204>
   1e844:	c2 04 20 0c 	ld  [ %l0 + 0xc ], %g1
   1e848:	10 80 00 0d 	b  1e87c <realize_virt_arrays+0x230>
   1e84c:	c4 24 20 10 	st  %g2, [ %l0 + 0x10 ]
   1e850:	82 5d 00 01 	smul  %l4, %g1, %g1
   1e854:	c2 24 20 10 	st  %g1, [ %l0 + 0x10 ]
   1e858:	d4 04 20 04 	ld  [ %l0 + 4 ], %o2
   1e85c:	c2 04 20 08 	ld  [ %l0 + 8 ], %g1
   1e860:	94 5a 80 01 	smul  %o2, %g1, %o2
   1e864:	90 10 00 18 	mov  %i0, %o0
   1e868:	92 04 20 30 	add  %l0, 0x30, %o1
   1e86c:	40 00 02 79 	call  1f250 <jpeg_open_backing_store>
   1e870:	95 2a a0 07 	sll  %o2, 7, %o2
   1e874:	82 10 20 01 	mov  1, %g1
   1e878:	c2 24 20 28 	st  %g1, [ %l0 + 0x28 ]
   1e87c:	90 10 00 18 	mov  %i0, %o0
   1e880:	92 10 20 01 	mov  1, %o1
   1e884:	d4 04 20 08 	ld  [ %l0 + 8 ], %o2
   1e888:	7f ff ff 00 	call  1e488 <alloc_barray>
   1e88c:	d6 04 20 10 	ld  [ %l0 + 0x10 ], %o3
   1e890:	d0 24 00 00 	st  %o0, [ %l0 ]
   1e894:	c2 04 e0 4c 	ld  [ %l3 + 0x4c ], %g1
   1e898:	c2 24 20 14 	st  %g1, [ %l0 + 0x14 ]
   1e89c:	c0 24 20 18 	clr  [ %l0 + 0x18 ]
   1e8a0:	c0 24 20 1c 	clr  [ %l0 + 0x1c ]
   1e8a4:	c0 24 20 24 	clr  [ %l0 + 0x24 ]
   1e8a8:	e0 04 20 2c 	ld  [ %l0 + 0x2c ], %l0
   1e8ac:	80 a4 20 00 	cmp  %l0, 0
   1e8b0:	32 bf ff d8 	bne,a   1e810 <realize_virt_arrays+0x1c4>
   1e8b4:	c2 04 00 00 	ld  [ %l0 ], %g1
   1e8b8:	81 c7 e0 08 	ret 
   1e8bc:	81 e8 00 00 	restore 

0001e8c0 <do_sarray_io>:
   1e8c0:	9d e3 bf 98 	save  %sp, -104, %sp
   1e8c4:	e6 06 60 08 	ld  [ %i1 + 8 ], %l3
   1e8c8:	c2 06 60 18 	ld  [ %i1 + 0x18 ], %g1
   1e8cc:	a4 5c c0 01 	smul  %l3, %g1, %l2
   1e8d0:	a2 10 20 00 	clr  %l1
   1e8d4:	c2 06 60 10 	ld  [ %i1 + 0x10 ], %g1
   1e8d8:	80 a0 60 00 	cmp  %g1, 0
   1e8dc:	04 80 00 33 	ble  1e9a8 <do_sarray_io+0xe8>
   1e8e0:	84 10 00 01 	mov  %g1, %g2
   1e8e4:	98 20 80 11 	sub  %g2, %l1, %o4
   1e8e8:	c2 06 60 14 	ld  [ %i1 + 0x14 ], %g1
   1e8ec:	80 a3 00 01 	cmp  %o4, %g1
   1e8f0:	34 80 00 02 	bg,a   1e8f8 <do_sarray_io+0x38>
   1e8f4:	98 10 00 01 	mov  %g1, %o4
   1e8f8:	c2 06 60 18 	ld  [ %i1 + 0x18 ], %g1
   1e8fc:	84 04 40 01 	add  %l1, %g1, %g2
   1e900:	c2 06 60 1c 	ld  [ %i1 + 0x1c ], %g1
   1e904:	82 20 40 02 	sub  %g1, %g2, %g1
   1e908:	80 a3 00 01 	cmp  %o4, %g1
   1e90c:	34 80 00 02 	bg,a   1e914 <do_sarray_io+0x54>
   1e910:	98 10 00 01 	mov  %g1, %o4
   1e914:	c2 06 60 04 	ld  [ %i1 + 4 ], %g1
   1e918:	82 20 40 02 	sub  %g1, %g2, %g1
   1e91c:	80 a3 00 01 	cmp  %o4, %g1
   1e920:	34 80 00 02 	bg,a   1e928 <do_sarray_io+0x68>
   1e924:	98 10 00 01 	mov  %g1, %o4
   1e928:	80 a3 20 00 	cmp  %o4, 0
   1e92c:	04 80 00 1f 	ble  1e9a8 <do_sarray_io+0xe8>
   1e930:	80 a6 a0 00 	cmp  %i2, 0
   1e934:	02 80 00 0d 	be  1e968 <do_sarray_io+0xa8>
   1e938:	a0 5b 00 13 	smul  %o4, %l3, %l0
   1e93c:	c2 06 40 00 	ld  [ %i1 ], %g1
   1e940:	85 2c 60 02 	sll  %l1, 2, %g2
   1e944:	c6 06 60 34 	ld  [ %i1 + 0x34 ], %g3
   1e948:	90 10 00 18 	mov  %i0, %o0
   1e94c:	92 06 60 30 	add  %i1, 0x30, %o1
   1e950:	d4 00 40 02 	ld  [ %g1 + %g2 ], %o2
   1e954:	96 10 00 12 	mov  %l2, %o3
   1e958:	9f c0 c0 00 	call  %g3
   1e95c:	98 10 00 10 	mov  %l0, %o4
   1e960:	10 80 00 0c 	b  1e990 <do_sarray_io+0xd0>
   1e964:	a4 04 80 10 	add  %l2, %l0, %l2
   1e968:	c2 06 40 00 	ld  [ %i1 ], %g1
   1e96c:	85 2c 60 02 	sll  %l1, 2, %g2
   1e970:	c6 06 60 30 	ld  [ %i1 + 0x30 ], %g3
   1e974:	90 10 00 18 	mov  %i0, %o0
   1e978:	92 06 60 30 	add  %i1, 0x30, %o1
   1e97c:	d4 00 40 02 	ld  [ %g1 + %g2 ], %o2
   1e980:	96 10 00 12 	mov  %l2, %o3
   1e984:	9f c0 c0 00 	call  %g3
   1e988:	98 10 00 10 	mov  %l0, %o4
   1e98c:	a4 04 80 10 	add  %l2, %l0, %l2
   1e990:	c2 06 60 14 	ld  [ %i1 + 0x14 ], %g1
   1e994:	a2 04 40 01 	add  %l1, %g1, %l1
   1e998:	c4 06 60 10 	ld  [ %i1 + 0x10 ], %g2
   1e99c:	80 a0 80 11 	cmp  %g2, %l1
   1e9a0:	14 bf ff d3 	bg  1e8ec <do_sarray_io+0x2c>
   1e9a4:	98 20 80 11 	sub  %g2, %l1, %o4
   1e9a8:	81 c7 e0 08 	ret 
   1e9ac:	81 e8 00 00 	restore 

0001e9b0 <do_barray_io>:
   1e9b0:	9d e3 bf 98 	save  %sp, -104, %sp
   1e9b4:	c2 06 60 08 	ld  [ %i1 + 8 ], %g1
   1e9b8:	a7 28 60 07 	sll  %g1, 7, %l3
   1e9bc:	c2 06 60 18 	ld  [ %i1 + 0x18 ], %g1
   1e9c0:	a4 5c c0 01 	smul  %l3, %g1, %l2
   1e9c4:	a2 10 20 00 	clr  %l1
   1e9c8:	c2 06 60 10 	ld  [ %i1 + 0x10 ], %g1
   1e9cc:	80 a0 60 00 	cmp  %g1, 0
   1e9d0:	04 80 00 33 	ble  1ea9c <do_barray_io+0xec>
   1e9d4:	84 10 00 01 	mov  %g1, %g2
   1e9d8:	98 20 80 11 	sub  %g2, %l1, %o4
   1e9dc:	c2 06 60 14 	ld  [ %i1 + 0x14 ], %g1
   1e9e0:	80 a3 00 01 	cmp  %o4, %g1
   1e9e4:	34 80 00 02 	bg,a   1e9ec <do_barray_io+0x3c>
   1e9e8:	98 10 00 01 	mov  %g1, %o4
   1e9ec:	c2 06 60 18 	ld  [ %i1 + 0x18 ], %g1
   1e9f0:	84 04 40 01 	add  %l1, %g1, %g2
   1e9f4:	c2 06 60 1c 	ld  [ %i1 + 0x1c ], %g1
   1e9f8:	82 20 40 02 	sub  %g1, %g2, %g1
   1e9fc:	80 a3 00 01 	cmp  %o4, %g1
   1ea00:	34 80 00 02 	bg,a   1ea08 <do_barray_io+0x58>
   1ea04:	98 10 00 01 	mov  %g1, %o4
   1ea08:	c2 06 60 04 	ld  [ %i1 + 4 ], %g1
   1ea0c:	82 20 40 02 	sub  %g1, %g2, %g1
   1ea10:	80 a3 00 01 	cmp  %o4, %g1
   1ea14:	34 80 00 02 	bg,a   1ea1c <do_barray_io+0x6c>
   1ea18:	98 10 00 01 	mov  %g1, %o4
   1ea1c:	80 a3 20 00 	cmp  %o4, 0
   1ea20:	04 80 00 1f 	ble  1ea9c <do_barray_io+0xec>
   1ea24:	80 a6 a0 00 	cmp  %i2, 0
   1ea28:	02 80 00 0d 	be  1ea5c <do_barray_io+0xac>
   1ea2c:	a0 5b 00 13 	smul  %o4, %l3, %l0
   1ea30:	c2 06 40 00 	ld  [ %i1 ], %g1
   1ea34:	85 2c 60 02 	sll  %l1, 2, %g2
   1ea38:	c6 06 60 34 	ld  [ %i1 + 0x34 ], %g3
   1ea3c:	90 10 00 18 	mov  %i0, %o0
   1ea40:	92 06 60 30 	add  %i1, 0x30, %o1
   1ea44:	d4 00 40 02 	ld  [ %g1 + %g2 ], %o2
   1ea48:	96 10 00 12 	mov  %l2, %o3
   1ea4c:	9f c0 c0 00 	call  %g3
   1ea50:	98 10 00 10 	mov  %l0, %o4
   1ea54:	10 80 00 0c 	b  1ea84 <do_barray_io+0xd4>
   1ea58:	a4 04 80 10 	add  %l2, %l0, %l2
   1ea5c:	c2 06 40 00 	ld  [ %i1 ], %g1
   1ea60:	85 2c 60 02 	sll  %l1, 2, %g2
   1ea64:	c6 06 60 30 	ld  [ %i1 + 0x30 ], %g3
   1ea68:	90 10 00 18 	mov  %i0, %o0
   1ea6c:	92 06 60 30 	add  %i1, 0x30, %o1
   1ea70:	d4 00 40 02 	ld  [ %g1 + %g2 ], %o2
   1ea74:	96 10 00 12 	mov  %l2, %o3
   1ea78:	9f c0 c0 00 	call  %g3
   1ea7c:	98 10 00 10 	mov  %l0, %o4
   1ea80:	a4 04 80 10 	add  %l2, %l0, %l2
   1ea84:	c2 06 60 14 	ld  [ %i1 + 0x14 ], %g1
   1ea88:	a2 04 40 01 	add  %l1, %g1, %l1
   1ea8c:	c4 06 60 10 	ld  [ %i1 + 0x10 ], %g2
   1ea90:	80 a0 80 11 	cmp  %g2, %l1
   1ea94:	14 bf ff d3 	bg  1e9e0 <do_barray_io+0x30>
   1ea98:	98 20 80 11 	sub  %g2, %l1, %o4
   1ea9c:	81 c7 e0 08 	ret 
   1eaa0:	81 e8 00 00 	restore 

0001eaa4 <access_virt_sarray>:
   1eaa4:	9d e3 bf 98 	save  %sp, -104, %sp
   1eaa8:	a0 06 80 1b 	add  %i2, %i3, %l0
   1eaac:	c2 06 60 04 	ld  [ %i1 + 4 ], %g1
   1eab0:	80 a0 40 10 	cmp  %g1, %l0
   1eab4:	2a 80 00 0b 	bcs,a   1eae0 <access_virt_sarray+0x3c>
   1eab8:	c4 06 00 00 	ld  [ %i0 ], %g2
   1eabc:	c2 06 60 0c 	ld  [ %i1 + 0xc ], %g1
   1eac0:	80 a0 40 1b 	cmp  %g1, %i3
   1eac4:	2a 80 00 07 	bcs,a   1eae0 <access_virt_sarray+0x3c>
   1eac8:	c4 06 00 00 	ld  [ %i0 ], %g2
   1eacc:	c2 06 40 00 	ld  [ %i1 ], %g1
   1ead0:	80 a0 60 00 	cmp  %g1, 0
   1ead4:	32 80 00 0a 	bne,a   1eafc <access_virt_sarray+0x58>
   1ead8:	c4 06 60 18 	ld  [ %i1 + 0x18 ], %g2
   1eadc:	c4 06 00 00 	ld  [ %i0 ], %g2
   1eae0:	82 10 20 14 	mov  0x14, %g1
   1eae4:	c2 20 a0 14 	st  %g1, [ %g2 + 0x14 ]
   1eae8:	c2 06 00 00 	ld  [ %i0 ], %g1
   1eaec:	c2 00 40 00 	ld  [ %g1 ], %g1
   1eaf0:	9f c0 40 00 	call  %g1
   1eaf4:	90 10 00 18 	mov  %i0, %o0
   1eaf8:	c4 06 60 18 	ld  [ %i1 + 0x18 ], %g2
   1eafc:	80 a0 80 1a 	cmp  %g2, %i2
   1eb00:	38 80 00 08 	bgu,a   1eb20 <access_virt_sarray+0x7c>
   1eb04:	c2 06 60 28 	ld  [ %i1 + 0x28 ], %g1
   1eb08:	c2 06 60 10 	ld  [ %i1 + 0x10 ], %g1
   1eb0c:	82 00 80 01 	add  %g2, %g1, %g1
   1eb10:	80 a0 40 10 	cmp  %g1, %l0
   1eb14:	3a 80 00 26 	bcc,a   1ebac <access_virt_sarray+0x108>
   1eb18:	c2 06 60 1c 	ld  [ %i1 + 0x1c ], %g1
   1eb1c:	c2 06 60 28 	ld  [ %i1 + 0x28 ], %g1
   1eb20:	80 a0 60 00 	cmp  %g1, 0
   1eb24:	32 80 00 0a 	bne,a   1eb4c <access_virt_sarray+0xa8>
   1eb28:	c2 06 60 24 	ld  [ %i1 + 0x24 ], %g1
   1eb2c:	c4 06 00 00 	ld  [ %i0 ], %g2
   1eb30:	82 10 20 44 	mov  0x44, %g1
   1eb34:	c2 20 a0 14 	st  %g1, [ %g2 + 0x14 ]
   1eb38:	c2 06 00 00 	ld  [ %i0 ], %g1
   1eb3c:	c2 00 40 00 	ld  [ %g1 ], %g1
   1eb40:	9f c0 40 00 	call  %g1
   1eb44:	90 10 00 18 	mov  %i0, %o0
   1eb48:	c2 06 60 24 	ld  [ %i1 + 0x24 ], %g1
   1eb4c:	80 a0 60 00 	cmp  %g1, 0
   1eb50:	22 80 00 08 	be,a   1eb70 <access_virt_sarray+0xcc>
   1eb54:	c2 06 60 18 	ld  [ %i1 + 0x18 ], %g1
   1eb58:	90 10 00 18 	mov  %i0, %o0
   1eb5c:	92 10 00 19 	mov  %i1, %o1
   1eb60:	7f ff ff 58 	call  1e8c0 <do_sarray_io>
   1eb64:	94 10 20 01 	mov  1, %o2
   1eb68:	c0 26 60 24 	clr  [ %i1 + 0x24 ]
   1eb6c:	c2 06 60 18 	ld  [ %i1 + 0x18 ], %g1
   1eb70:	80 a0 40 1a 	cmp  %g1, %i2
   1eb74:	3a 80 00 04 	bcc,a   1eb84 <access_virt_sarray+0xe0>
   1eb78:	c4 06 60 10 	ld  [ %i1 + 0x10 ], %g2
   1eb7c:	10 80 00 07 	b  1eb98 <access_virt_sarray+0xf4>
   1eb80:	f4 26 60 18 	st  %i2, [ %i1 + 0x18 ]
   1eb84:	84 24 00 02 	sub  %l0, %g2, %g2
   1eb88:	82 38 00 02 	xnor  %g0, %g2, %g1
   1eb8c:	83 38 60 1f 	sra  %g1, 0x1f, %g1
   1eb90:	84 08 80 01 	and  %g2, %g1, %g2
   1eb94:	c4 26 60 18 	st  %g2, [ %i1 + 0x18 ]
   1eb98:	90 10 00 18 	mov  %i0, %o0
   1eb9c:	92 10 00 19 	mov  %i1, %o1
   1eba0:	7f ff ff 48 	call  1e8c0 <do_sarray_io>
   1eba4:	94 10 20 00 	clr  %o2
   1eba8:	c2 06 60 1c 	ld  [ %i1 + 0x1c ], %g1
   1ebac:	80 a0 40 10 	cmp  %g1, %l0
   1ebb0:	1a 80 00 32 	bcc  1ec78 <access_virt_sarray+0x1d4>
   1ebb4:	80 a7 20 00 	cmp  %i4, 0
   1ebb8:	80 a0 40 1a 	cmp  %g1, %i2
   1ebbc:	3a 80 00 0d 	bcc,a   1ebf0 <access_virt_sarray+0x14c>
   1ebc0:	f6 06 60 1c 	ld  [ %i1 + 0x1c ], %i3
   1ebc4:	80 a7 20 00 	cmp  %i4, 0
   1ebc8:	22 80 00 0b 	be,a   1ebf4 <access_virt_sarray+0x150>
   1ebcc:	b6 10 00 1a 	mov  %i2, %i3
   1ebd0:	c4 06 00 00 	ld  [ %i0 ], %g2
   1ebd4:	82 10 20 14 	mov  0x14, %g1
   1ebd8:	c2 20 a0 14 	st  %g1, [ %g2 + 0x14 ]
   1ebdc:	c2 06 00 00 	ld  [ %i0 ], %g1
   1ebe0:	c2 00 40 00 	ld  [ %g1 ], %g1
   1ebe4:	9f c0 40 00 	call  %g1
   1ebe8:	90 10 00 18 	mov  %i0, %o0
   1ebec:	b6 10 00 1a 	mov  %i2, %i3
   1ebf0:	80 a7 20 00 	cmp  %i4, 0
   1ebf4:	32 80 00 02 	bne,a   1ebfc <access_virt_sarray+0x158>
   1ebf8:	e0 26 60 1c 	st  %l0, [ %i1 + 0x1c ]
   1ebfc:	c2 06 60 20 	ld  [ %i1 + 0x20 ], %g1
   1ec00:	80 a0 60 00 	cmp  %g1, 0
   1ec04:	02 80 00 13 	be  1ec50 <access_virt_sarray+0x1ac>
   1ec08:	80 a7 20 00 	cmp  %i4, 0
   1ec0c:	c2 06 60 18 	ld  [ %i1 + 0x18 ], %g1
   1ec10:	b6 26 c0 01 	sub  %i3, %g1, %i3
   1ec14:	a0 24 00 01 	sub  %l0, %g1, %l0
   1ec18:	80 a6 c0 10 	cmp  %i3, %l0
   1ec1c:	1a 80 00 16 	bcc  1ec74 <access_virt_sarray+0x1d0>
   1ec20:	f0 06 60 08 	ld  [ %i1 + 8 ], %i0
   1ec24:	c4 06 40 00 	ld  [ %i1 ], %g2
   1ec28:	83 2e e0 02 	sll  %i3, 2, %g1
   1ec2c:	d0 00 80 01 	ld  [ %g2 + %g1 ], %o0
   1ec30:	7f ff fc 92 	call  1de78 <jzero_far>
   1ec34:	92 10 00 18 	mov  %i0, %o1
   1ec38:	b6 06 e0 01 	inc  %i3
   1ec3c:	80 a6 c0 10 	cmp  %i3, %l0
   1ec40:	2a bf ff fa 	bcs,a   1ec28 <access_virt_sarray+0x184>
   1ec44:	c4 06 40 00 	ld  [ %i1 ], %g2
   1ec48:	10 80 00 0c 	b  1ec78 <access_virt_sarray+0x1d4>
   1ec4c:	80 a7 20 00 	cmp  %i4, 0
   1ec50:	12 80 00 0d 	bne  1ec84 <access_virt_sarray+0x1e0>
   1ec54:	82 10 20 01 	mov  1, %g1
   1ec58:	c4 06 00 00 	ld  [ %i0 ], %g2
   1ec5c:	82 10 20 14 	mov  0x14, %g1
   1ec60:	c2 20 a0 14 	st  %g1, [ %g2 + 0x14 ]
   1ec64:	c2 06 00 00 	ld  [ %i0 ], %g1
   1ec68:	c2 00 40 00 	ld  [ %g1 ], %g1
   1ec6c:	9f c0 40 00 	call  %g1
   1ec70:	90 10 00 18 	mov  %i0, %o0
   1ec74:	80 a7 20 00 	cmp  %i4, 0
   1ec78:	22 80 00 05 	be,a   1ec8c <access_virt_sarray+0x1e8>
   1ec7c:	f0 06 60 18 	ld  [ %i1 + 0x18 ], %i0
   1ec80:	82 10 20 01 	mov  1, %g1
   1ec84:	c2 26 60 24 	st  %g1, [ %i1 + 0x24 ]
   1ec88:	f0 06 60 18 	ld  [ %i1 + 0x18 ], %i0
   1ec8c:	b0 26 80 18 	sub  %i2, %i0, %i0
   1ec90:	b1 2e 20 02 	sll  %i0, 2, %i0
   1ec94:	c2 06 40 00 	ld  [ %i1 ], %g1
   1ec98:	81 c7 e0 08 	ret 
   1ec9c:	91 ee 00 01 	restore  %i0, %g1, %o0

0001eca0 <access_virt_barray>:
   1eca0:	9d e3 bf 98 	save  %sp, -104, %sp
   1eca4:	a0 06 80 1b 	add  %i2, %i3, %l0
   1eca8:	c2 06 60 04 	ld  [ %i1 + 4 ], %g1
   1ecac:	80 a0 40 10 	cmp  %g1, %l0
   1ecb0:	2a 80 00 0b 	bcs,a   1ecdc <access_virt_barray+0x3c>
   1ecb4:	c4 06 00 00 	ld  [ %i0 ], %g2
   1ecb8:	c2 06 60 0c 	ld  [ %i1 + 0xc ], %g1
   1ecbc:	80 a0 40 1b 	cmp  %g1, %i3
   1ecc0:	2a 80 00 07 	bcs,a   1ecdc <access_virt_barray+0x3c>
   1ecc4:	c4 06 00 00 	ld  [ %i0 ], %g2
   1ecc8:	c2 06 40 00 	ld  [ %i1 ], %g1
   1eccc:	80 a0 60 00 	cmp  %g1, 0
   1ecd0:	32 80 00 0a 	bne,a   1ecf8 <access_virt_barray+0x58>
   1ecd4:	c4 06 60 18 	ld  [ %i1 + 0x18 ], %g2
   1ecd8:	c4 06 00 00 	ld  [ %i0 ], %g2
   1ecdc:	82 10 20 14 	mov  0x14, %g1
   1ece0:	c2 20 a0 14 	st  %g1, [ %g2 + 0x14 ]
   1ece4:	c2 06 00 00 	ld  [ %i0 ], %g1
   1ece8:	c2 00 40 00 	ld  [ %g1 ], %g1
   1ecec:	9f c0 40 00 	call  %g1
   1ecf0:	90 10 00 18 	mov  %i0, %o0
   1ecf4:	c4 06 60 18 	ld  [ %i1 + 0x18 ], %g2
   1ecf8:	80 a0 80 1a 	cmp  %g2, %i2
   1ecfc:	38 80 00 08 	bgu,a   1ed1c <access_virt_barray+0x7c>
   1ed00:	c2 06 60 28 	ld  [ %i1 + 0x28 ], %g1
   1ed04:	c2 06 60 10 	ld  [ %i1 + 0x10 ], %g1
   1ed08:	82 00 80 01 	add  %g2, %g1, %g1
   1ed0c:	80 a0 40 10 	cmp  %g1, %l0
   1ed10:	3a 80 00 26 	bcc,a   1eda8 <access_virt_barray+0x108>
   1ed14:	c2 06 60 1c 	ld  [ %i1 + 0x1c ], %g1
   1ed18:	c2 06 60 28 	ld  [ %i1 + 0x28 ], %g1
   1ed1c:	80 a0 60 00 	cmp  %g1, 0
   1ed20:	32 80 00 0a 	bne,a   1ed48 <access_virt_barray+0xa8>
   1ed24:	c2 06 60 24 	ld  [ %i1 + 0x24 ], %g1
   1ed28:	c4 06 00 00 	ld  [ %i0 ], %g2
   1ed2c:	82 10 20 44 	mov  0x44, %g1
   1ed30:	c2 20 a0 14 	st  %g1, [ %g2 + 0x14 ]
   1ed34:	c2 06 00 00 	ld  [ %i0 ], %g1
   1ed38:	c2 00 40 00 	ld  [ %g1 ], %g1
   1ed3c:	9f c0 40 00 	call  %g1
   1ed40:	90 10 00 18 	mov  %i0, %o0
   1ed44:	c2 06 60 24 	ld  [ %i1 + 0x24 ], %g1
   1ed48:	80 a0 60 00 	cmp  %g1, 0
   1ed4c:	22 80 00 08 	be,a   1ed6c <access_virt_barray+0xcc>
   1ed50:	c2 06 60 18 	ld  [ %i1 + 0x18 ], %g1
   1ed54:	90 10 00 18 	mov  %i0, %o0
   1ed58:	92 10 00 19 	mov  %i1, %o1
   1ed5c:	7f ff ff 15 	call  1e9b0 <do_barray_io>
   1ed60:	94 10 20 01 	mov  1, %o2
   1ed64:	c0 26 60 24 	clr  [ %i1 + 0x24 ]
   1ed68:	c2 06 60 18 	ld  [ %i1 + 0x18 ], %g1
   1ed6c:	80 a0 40 1a 	cmp  %g1, %i2
   1ed70:	3a 80 00 04 	bcc,a   1ed80 <access_virt_barray+0xe0>
   1ed74:	c4 06 60 10 	ld  [ %i1 + 0x10 ], %g2
   1ed78:	10 80 00 07 	b  1ed94 <access_virt_barray+0xf4>
   1ed7c:	f4 26 60 18 	st  %i2, [ %i1 + 0x18 ]
   1ed80:	84 24 00 02 	sub  %l0, %g2, %g2
   1ed84:	82 38 00 02 	xnor  %g0, %g2, %g1
   1ed88:	83 38 60 1f 	sra  %g1, 0x1f, %g1
   1ed8c:	84 08 80 01 	and  %g2, %g1, %g2
   1ed90:	c4 26 60 18 	st  %g2, [ %i1 + 0x18 ]
   1ed94:	90 10 00 18 	mov  %i0, %o0
   1ed98:	92 10 00 19 	mov  %i1, %o1
   1ed9c:	7f ff ff 05 	call  1e9b0 <do_barray_io>
   1eda0:	94 10 20 00 	clr  %o2
   1eda4:	c2 06 60 1c 	ld  [ %i1 + 0x1c ], %g1
   1eda8:	80 a0 40 10 	cmp  %g1, %l0
   1edac:	1a 80 00 34 	bcc  1ee7c <access_virt_barray+0x1dc>
   1edb0:	80 a7 20 00 	cmp  %i4, 0
   1edb4:	80 a0 40 1a 	cmp  %g1, %i2
   1edb8:	3a 80 00 0d 	bcc,a   1edec <access_virt_barray+0x14c>
   1edbc:	f6 06 60 1c 	ld  [ %i1 + 0x1c ], %i3
   1edc0:	80 a7 20 00 	cmp  %i4, 0
   1edc4:	22 80 00 0b 	be,a   1edf0 <access_virt_barray+0x150>
   1edc8:	b6 10 00 1a 	mov  %i2, %i3
   1edcc:	c4 06 00 00 	ld  [ %i0 ], %g2
   1edd0:	82 10 20 14 	mov  0x14, %g1
   1edd4:	c2 20 a0 14 	st  %g1, [ %g2 + 0x14 ]
   1edd8:	c2 06 00 00 	ld  [ %i0 ], %g1
   1eddc:	c2 00 40 00 	ld  [ %g1 ], %g1
   1ede0:	9f c0 40 00 	call  %g1
   1ede4:	90 10 00 18 	mov  %i0, %o0
   1ede8:	b6 10 00 1a 	mov  %i2, %i3
   1edec:	80 a7 20 00 	cmp  %i4, 0
   1edf0:	32 80 00 02 	bne,a   1edf8 <access_virt_barray+0x158>
   1edf4:	e0 26 60 1c 	st  %l0, [ %i1 + 0x1c ]
   1edf8:	c2 06 60 20 	ld  [ %i1 + 0x20 ], %g1
   1edfc:	80 a0 60 00 	cmp  %g1, 0
   1ee00:	02 80 00 15 	be  1ee54 <access_virt_barray+0x1b4>
   1ee04:	80 a7 20 00 	cmp  %i4, 0
   1ee08:	c2 06 60 08 	ld  [ %i1 + 8 ], %g1
   1ee0c:	b1 28 60 07 	sll  %g1, 7, %i0
   1ee10:	c2 06 60 18 	ld  [ %i1 + 0x18 ], %g1
   1ee14:	b6 26 c0 01 	sub  %i3, %g1, %i3
   1ee18:	a0 24 00 01 	sub  %l0, %g1, %l0
   1ee1c:	80 a6 c0 10 	cmp  %i3, %l0
   1ee20:	1a 80 00 17 	bcc  1ee7c <access_virt_barray+0x1dc>
   1ee24:	80 a7 20 00 	cmp  %i4, 0
   1ee28:	c4 06 40 00 	ld  [ %i1 ], %g2
   1ee2c:	83 2e e0 02 	sll  %i3, 2, %g1
   1ee30:	d0 00 80 01 	ld  [ %g2 + %g1 ], %o0
   1ee34:	7f ff fc 11 	call  1de78 <jzero_far>
   1ee38:	92 10 00 18 	mov  %i0, %o1
   1ee3c:	b6 06 e0 01 	inc  %i3
   1ee40:	80 a6 c0 10 	cmp  %i3, %l0
   1ee44:	2a bf ff fa 	bcs,a   1ee2c <access_virt_barray+0x18c>
   1ee48:	c4 06 40 00 	ld  [ %i1 ], %g2
   1ee4c:	10 80 00 0c 	b  1ee7c <access_virt_barray+0x1dc>
   1ee50:	80 a7 20 00 	cmp  %i4, 0
   1ee54:	12 80 00 0d 	bne  1ee88 <access_virt_barray+0x1e8>
   1ee58:	82 10 20 01 	mov  1, %g1
   1ee5c:	c4 06 00 00 	ld  [ %i0 ], %g2
   1ee60:	82 10 20 14 	mov  0x14, %g1
   1ee64:	c2 20 a0 14 	st  %g1, [ %g2 + 0x14 ]
   1ee68:	c2 06 00 00 	ld  [ %i0 ], %g1
   1ee6c:	c2 00 40 00 	ld  [ %g1 ], %g1
   1ee70:	9f c0 40 00 	call  %g1
   1ee74:	90 10 00 18 	mov  %i0, %o0
   1ee78:	80 a7 20 00 	cmp  %i4, 0
   1ee7c:	22 80 00 05 	be,a   1ee90 <access_virt_barray+0x1f0>
   1ee80:	f0 06 60 18 	ld  [ %i1 + 0x18 ], %i0
   1ee84:	82 10 20 01 	mov  1, %g1
   1ee88:	c2 26 60 24 	st  %g1, [ %i1 + 0x24 ]
   1ee8c:	f0 06 60 18 	ld  [ %i1 + 0x18 ], %i0
   1ee90:	b0 26 80 18 	sub  %i2, %i0, %i0
   1ee94:	b1 2e 20 02 	sll  %i0, 2, %i0
   1ee98:	c2 06 40 00 	ld  [ %i1 ], %g1
   1ee9c:	81 c7 e0 08 	ret 
   1eea0:	91 ee 00 01 	restore  %i0, %g1, %o0

0001eea4 <free_pool>:
   1eea4:	9d e3 bf 98 	save  %sp, -104, %sp
   1eea8:	80 a6 60 01 	cmp  %i1, 1
   1eeac:	08 80 00 0c 	bleu  1eedc <free_pool+0x38>
   1eeb0:	e4 06 20 04 	ld  [ %i0 + 4 ], %l2
   1eeb4:	c4 06 00 00 	ld  [ %i0 ], %g2
   1eeb8:	82 10 20 0c 	mov  0xc, %g1
   1eebc:	c2 20 a0 14 	st  %g1, [ %g2 + 0x14 ]
   1eec0:	c2 06 00 00 	ld  [ %i0 ], %g1
   1eec4:	f2 20 60 18 	st  %i1, [ %g1 + 0x18 ]
   1eec8:	c2 06 00 00 	ld  [ %i0 ], %g1
   1eecc:	c2 00 40 00 	ld  [ %g1 ], %g1
   1eed0:	9f c0 40 00 	call  %g1
   1eed4:	90 10 00 18 	mov  %i0, %o0
   1eed8:	80 a6 60 01 	cmp  %i1, 1
   1eedc:	12 80 00 27 	bne  1ef78 <free_pool+0xd4>
   1eee0:	83 2e 60 02 	sll  %i1, 2, %g1
   1eee4:	e0 04 a0 40 	ld  [ %l2 + 0x40 ], %l0
   1eee8:	80 a4 20 00 	cmp  %l0, 0
   1eeec:	22 80 00 10 	be,a   1ef2c <free_pool+0x88>
   1eef0:	c0 24 a0 40 	clr  [ %l2 + 0x40 ]
   1eef4:	c2 04 20 28 	ld  [ %l0 + 0x28 ], %g1
   1eef8:	80 a0 60 00 	cmp  %g1, 0
   1eefc:	22 80 00 08 	be,a   1ef1c <free_pool+0x78>
   1ef00:	e0 04 20 2c 	ld  [ %l0 + 0x2c ], %l0
   1ef04:	c0 24 20 28 	clr  [ %l0 + 0x28 ]
   1ef08:	c2 04 20 38 	ld  [ %l0 + 0x38 ], %g1
   1ef0c:	90 10 00 18 	mov  %i0, %o0
   1ef10:	9f c0 40 00 	call  %g1
   1ef14:	92 04 20 30 	add  %l0, 0x30, %o1
   1ef18:	e0 04 20 2c 	ld  [ %l0 + 0x2c ], %l0
   1ef1c:	80 a4 20 00 	cmp  %l0, 0
   1ef20:	32 bf ff f6 	bne,a   1eef8 <free_pool+0x54>
   1ef24:	c2 04 20 28 	ld  [ %l0 + 0x28 ], %g1
   1ef28:	c0 24 a0 40 	clr  [ %l2 + 0x40 ]
   1ef2c:	e0 04 a0 44 	ld  [ %l2 + 0x44 ], %l0
   1ef30:	80 a4 20 00 	cmp  %l0, 0
   1ef34:	22 80 00 10 	be,a   1ef74 <free_pool+0xd0>
   1ef38:	c0 24 a0 44 	clr  [ %l2 + 0x44 ]
   1ef3c:	c2 04 20 28 	ld  [ %l0 + 0x28 ], %g1
   1ef40:	80 a0 60 00 	cmp  %g1, 0
   1ef44:	22 80 00 08 	be,a   1ef64 <free_pool+0xc0>
   1ef48:	e0 04 20 2c 	ld  [ %l0 + 0x2c ], %l0
   1ef4c:	c0 24 20 28 	clr  [ %l0 + 0x28 ]
   1ef50:	c2 04 20 38 	ld  [ %l0 + 0x38 ], %g1
   1ef54:	90 10 00 18 	mov  %i0, %o0
   1ef58:	9f c0 40 00 	call  %g1
   1ef5c:	92 04 20 30 	add  %l0, 0x30, %o1
   1ef60:	e0 04 20 2c 	ld  [ %l0 + 0x2c ], %l0
   1ef64:	80 a4 20 00 	cmp  %l0, 0
   1ef68:	32 bf ff f6 	bne,a   1ef40 <free_pool+0x9c>
   1ef6c:	c2 04 20 28 	ld  [ %l0 + 0x28 ], %g1
   1ef70:	c0 24 a0 44 	clr  [ %l2 + 0x44 ]
   1ef74:	83 2e 60 02 	sll  %i1, 2, %g1
   1ef78:	82 00 40 12 	add  %g1, %l2, %g1
   1ef7c:	d2 00 60 38 	ld  [ %g1 + 0x38 ], %o1
   1ef80:	80 a2 60 00 	cmp  %o1, 0
   1ef84:	02 80 00 10 	be  1efc4 <free_pool+0x120>
   1ef88:	c0 20 60 38 	clr  [ %g1 + 0x38 ]
   1ef8c:	e0 02 40 00 	ld  [ %o1 ], %l0
   1ef90:	c2 02 60 04 	ld  [ %o1 + 4 ], %g1
   1ef94:	c4 02 60 08 	ld  [ %o1 + 8 ], %g2
   1ef98:	82 00 40 02 	add  %g1, %g2, %g1
   1ef9c:	a2 00 60 10 	add  %g1, 0x10, %l1
   1efa0:	90 10 00 18 	mov  %i0, %o0
   1efa4:	40 00 00 a3 	call  1f230 <jpeg_free_large>
   1efa8:	94 10 00 11 	mov  %l1, %o2
   1efac:	c2 04 a0 48 	ld  [ %l2 + 0x48 ], %g1
   1efb0:	82 20 40 11 	sub  %g1, %l1, %g1
   1efb4:	c2 24 a0 48 	st  %g1, [ %l2 + 0x48 ]
   1efb8:	80 a4 20 00 	cmp  %l0, 0
   1efbc:	12 bf ff f4 	bne  1ef8c <free_pool+0xe8>
   1efc0:	92 10 00 10 	mov  %l0, %o1
   1efc4:	83 2e 60 02 	sll  %i1, 2, %g1
   1efc8:	82 00 40 12 	add  %g1, %l2, %g1
   1efcc:	d2 00 60 30 	ld  [ %g1 + 0x30 ], %o1
   1efd0:	80 a2 60 00 	cmp  %o1, 0
   1efd4:	02 80 00 10 	be  1f014 <free_pool+0x170>
   1efd8:	c0 20 60 30 	clr  [ %g1 + 0x30 ]
   1efdc:	e0 02 40 00 	ld  [ %o1 ], %l0
   1efe0:	c2 02 60 04 	ld  [ %o1 + 4 ], %g1
   1efe4:	c4 02 60 08 	ld  [ %o1 + 8 ], %g2
   1efe8:	82 00 40 02 	add  %g1, %g2, %g1
   1efec:	a2 00 60 10 	add  %g1, 0x10, %l1
   1eff0:	90 10 00 18 	mov  %i0, %o0
   1eff4:	40 00 00 84 	call  1f204 <jpeg_free_small>
   1eff8:	94 10 00 11 	mov  %l1, %o2
   1effc:	c2 04 a0 48 	ld  [ %l2 + 0x48 ], %g1
   1f000:	82 20 40 11 	sub  %g1, %l1, %g1
   1f004:	c2 24 a0 48 	st  %g1, [ %l2 + 0x48 ]
   1f008:	80 a4 20 00 	cmp  %l0, 0
   1f00c:	12 bf ff f4 	bne  1efdc <free_pool+0x138>
   1f010:	92 10 00 10 	mov  %l0, %o1
   1f014:	81 c7 e0 08 	ret 
   1f018:	81 e8 00 00 	restore 

0001f01c <self_destruct>:
   1f01c:	9d e3 bf 98 	save  %sp, -104, %sp
   1f020:	a0 10 20 01 	mov  1, %l0
   1f024:	90 10 00 18 	mov  %i0, %o0
   1f028:	7f ff ff 9f 	call  1eea4 <free_pool>
   1f02c:	92 10 00 10 	mov  %l0, %o1
   1f030:	a0 84 3f ff 	addcc  %l0, -1, %l0
   1f034:	1c bf ff fd 	bpos  1f028 <self_destruct+0xc>
   1f038:	90 10 00 18 	mov  %i0, %o0
   1f03c:	d2 06 20 04 	ld  [ %i0 + 4 ], %o1
   1f040:	40 00 00 71 	call  1f204 <jpeg_free_small>
   1f044:	94 10 20 50 	mov  0x50, %o2
   1f048:	c0 26 20 04 	clr  [ %i0 + 4 ]
   1f04c:	40 00 00 8e 	call  1f284 <jpeg_mem_term>
   1f050:	90 10 00 18 	mov  %i0, %o0
   1f054:	01 00 00 00 	nop 
   1f058:	81 c7 e0 08 	ret 
   1f05c:	81 e8 00 00 	restore 

0001f060 <jinit_memory_mgr>:
   1f060:	9d e3 bf 90 	save  %sp, -112, %sp
   1f064:	c0 26 20 04 	clr  [ %i0 + 4 ]
   1f068:	40 00 00 85 	call  1f27c <jpeg_mem_init>
   1f06c:	90 10 00 18 	mov  %i0, %o0
   1f070:	d0 27 bf f4 	st  %o0, [ %fp + -12 ]
   1f074:	90 10 00 18 	mov  %i0, %o0
   1f078:	40 00 00 5e 	call  1f1f0 <jpeg_get_small>
   1f07c:	92 10 20 50 	mov  0x50, %o1
   1f080:	80 a2 20 00 	cmp  %o0, 0
   1f084:	12 80 00 0d 	bne  1f0b8 <jinit_memory_mgr+0x58>
   1f088:	a0 10 00 08 	mov  %o0, %l0
   1f08c:	40 00 00 7e 	call  1f284 <jpeg_mem_term>
   1f090:	90 10 00 18 	mov  %i0, %o0
   1f094:	c4 06 00 00 	ld  [ %i0 ], %g2
   1f098:	82 10 20 35 	mov  0x35, %g1
   1f09c:	c2 20 a0 14 	st  %g1, [ %g2 + 0x14 ]
   1f0a0:	c2 06 00 00 	ld  [ %i0 ], %g1
   1f0a4:	c0 20 60 18 	clr  [ %g1 + 0x18 ]
   1f0a8:	c2 06 00 00 	ld  [ %i0 ], %g1
   1f0ac:	c2 00 40 00 	ld  [ %g1 ], %g1
   1f0b0:	9f c0 40 00 	call  %g1
   1f0b4:	90 10 00 18 	mov  %i0, %o0
   1f0b8:	03 00 00 78 	sethi  %hi(0x1e000), %g1
   1f0bc:	82 10 61 64 	or  %g1, 0x164, %g1	! 1e164 <alloc_small>
   1f0c0:	c2 24 00 00 	st  %g1, [ %l0 ]
   1f0c4:	03 00 00 78 	sethi  %hi(0x1e000), %g1
   1f0c8:	82 10 62 f0 	or  %g1, 0x2f0, %g1	! 1e2f0 <alloc_large>
   1f0cc:	c2 24 20 04 	st  %g1, [ %l0 + 4 ]
   1f0d0:	03 00 00 78 	sethi  %hi(0x1e000), %g1
   1f0d4:	82 10 63 b4 	or  %g1, 0x3b4, %g1	! 1e3b4 <alloc_sarray>
   1f0d8:	c2 24 20 08 	st  %g1, [ %l0 + 8 ]
   1f0dc:	03 00 00 79 	sethi  %hi(0x1e400), %g1
   1f0e0:	82 10 60 88 	or  %g1, 0x88, %g1	! 1e488 <alloc_barray>
   1f0e4:	c2 24 20 0c 	st  %g1, [ %l0 + 0xc ]
   1f0e8:	03 00 00 79 	sethi  %hi(0x1e400), %g1
   1f0ec:	82 10 61 6c 	or  %g1, 0x16c, %g1	! 1e56c <request_virt_sarray>
   1f0f0:	c2 24 20 10 	st  %g1, [ %l0 + 0x10 ]
   1f0f4:	03 00 00 79 	sethi  %hi(0x1e400), %g1
   1f0f8:	82 10 61 dc 	or  %g1, 0x1dc, %g1	! 1e5dc <request_virt_barray>
   1f0fc:	c2 24 20 14 	st  %g1, [ %l0 + 0x14 ]
   1f100:	03 00 00 79 	sethi  %hi(0x1e400), %g1
   1f104:	82 10 62 4c 	or  %g1, 0x24c, %g1	! 1e64c <realize_virt_arrays>
   1f108:	c2 24 20 18 	st  %g1, [ %l0 + 0x18 ]
   1f10c:	03 00 00 7a 	sethi  %hi(0x1e800), %g1
   1f110:	82 10 62 a4 	or  %g1, 0x2a4, %g1	! 1eaa4 <access_virt_sarray>
   1f114:	c2 24 20 1c 	st  %g1, [ %l0 + 0x1c ]
   1f118:	03 00 00 7b 	sethi  %hi(0x1ec00), %g1
   1f11c:	82 10 60 a0 	or  %g1, 0xa0, %g1	! 1eca0 <access_virt_barray>
   1f120:	c2 24 20 20 	st  %g1, [ %l0 + 0x20 ]
   1f124:	03 00 00 7b 	sethi  %hi(0x1ec00), %g1
   1f128:	82 10 62 a4 	or  %g1, 0x2a4, %g1	! 1eea4 <free_pool>
   1f12c:	c2 24 20 24 	st  %g1, [ %l0 + 0x24 ]
   1f130:	03 00 00 7c 	sethi  %hi(0x1f000), %g1
   1f134:	82 10 60 1c 	or  %g1, 0x1c, %g1	! 1f01c <self_destruct>
   1f138:	c2 24 20 28 	st  %g1, [ %l0 + 0x28 ]
   1f13c:	c2 07 bf f4 	ld  [ %fp + -12 ], %g1
   1f140:	c2 24 20 2c 	st  %g1, [ %l0 + 0x2c ]
   1f144:	84 10 20 01 	mov  1, %g2
   1f148:	83 28 a0 02 	sll  %g2, 2, %g1
   1f14c:	82 00 40 10 	add  %g1, %l0, %g1
   1f150:	c0 20 60 30 	clr  [ %g1 + 0x30 ]
   1f154:	84 80 bf ff 	addcc  %g2, -1, %g2
   1f158:	1c bf ff fc 	bpos  1f148 <jinit_memory_mgr+0xe8>
   1f15c:	c0 20 60 38 	clr  [ %g1 + 0x38 ]
   1f160:	c0 24 20 40 	clr  [ %l0 + 0x40 ]
   1f164:	c0 24 20 44 	clr  [ %l0 + 0x44 ]
   1f168:	82 10 20 50 	mov  0x50, %g1
   1f16c:	c2 24 20 48 	st  %g1, [ %l0 + 0x48 ]
   1f170:	e0 26 20 04 	st  %l0, [ %i0 + 4 ]
   1f174:	11 00 00 8d 	sethi  %hi(0x23400), %o0
   1f178:	40 00 51 63 	call  33704 <getenv@plt>
   1f17c:	90 12 21 38 	or  %o0, 0x138, %o0	! 23538 <extra_pool_slop+0x8>
   1f180:	80 a2 20 00 	cmp  %o0, 0
   1f184:	02 80 00 19 	be  1f1e8 <jinit_memory_mgr+0x188>
   1f188:	82 10 20 78 	mov  0x78, %g1
   1f18c:	c2 2f bf f3 	stb  %g1, [ %fp + -13 ]
   1f190:	13 00 00 85 	sethi  %hi(0x21400), %o1
   1f194:	92 12 63 c8 	or  %o1, 0x3c8, %o1	! 217c8 <_IO_stdin_used+0xb80>
   1f198:	94 07 bf f4 	add  %fp, -12, %o2
   1f19c:	40 00 51 6f 	call  33758 <sscanf@plt>
   1f1a0:	96 07 bf f3 	add  %fp, -13, %o3
   1f1a4:	80 a2 20 00 	cmp  %o0, 0
   1f1a8:	04 80 00 10 	ble  1f1e8 <jinit_memory_mgr+0x188>
   1f1ac:	c2 4f bf f3 	ldsb  [ %fp + -13 ], %g1
   1f1b0:	84 18 60 6d 	xor  %g1, 0x6d, %g2
   1f1b4:	80 a0 00 02 	cmp  %g0, %g2
   1f1b8:	84 60 3f ff 	subx  %g0, -1, %g2
   1f1bc:	82 18 60 4d 	xor  %g1, 0x4d, %g1
   1f1c0:	80 a0 00 01 	cmp  %g0, %g1
   1f1c4:	82 60 3f ff 	subx  %g0, -1, %g1
   1f1c8:	80 90 80 01 	orcc  %g2, %g1, %g0
   1f1cc:	02 80 00 05 	be  1f1e0 <jinit_memory_mgr+0x180>
   1f1d0:	c2 07 bf f4 	ld  [ %fp + -12 ], %g1
   1f1d4:	82 58 63 e8 	smul  %g1, 0x3e8, %g1
   1f1d8:	c2 27 bf f4 	st  %g1, [ %fp + -12 ]
   1f1dc:	c2 07 bf f4 	ld  [ %fp + -12 ], %g1
   1f1e0:	82 58 63 e8 	smul  %g1, 0x3e8, %g1
   1f1e4:	c2 24 20 2c 	st  %g1, [ %l0 + 0x2c ]
   1f1e8:	81 c7 e0 08 	ret 
   1f1ec:	81 e8 00 00 	restore 

0001f1f0 <jpeg_get_small>:
   1f1f0:	9d e3 bf 98 	save  %sp, -104, %sp
   1f1f4:	40 00 51 4a 	call  3371c <malloc@plt>
   1f1f8:	90 10 00 19 	mov  %i1, %o0
   1f1fc:	81 c7 e0 08 	ret 
   1f200:	91 e8 00 08 	restore  %g0, %o0, %o0

0001f204 <jpeg_free_small>:
   1f204:	9d e3 bf 98 	save  %sp, -104, %sp
   1f208:	40 00 51 60 	call  33788 <free@plt>
   1f20c:	90 10 00 19 	mov  %i1, %o0
   1f210:	01 00 00 00 	nop 
   1f214:	81 c7 e0 08 	ret 
   1f218:	81 e8 00 00 	restore 

0001f21c <jpeg_get_large>:
   1f21c:	9d e3 bf 98 	save  %sp, -104, %sp
   1f220:	40 00 51 3f 	call  3371c <malloc@plt>
   1f224:	90 10 00 19 	mov  %i1, %o0
   1f228:	81 c7 e0 08 	ret 
   1f22c:	91 e8 00 08 	restore  %g0, %o0, %o0

0001f230 <jpeg_free_large>:
   1f230:	9d e3 bf 98 	save  %sp, -104, %sp
   1f234:	40 00 51 55 	call  33788 <free@plt>
   1f238:	90 10 00 19 	mov  %i1, %o0
   1f23c:	01 00 00 00 	nop 
   1f240:	81 c7 e0 08 	ret 
   1f244:	81 e8 00 00 	restore 

0001f248 <jpeg_mem_available>:
   1f248:	81 c3 e0 08 	retl 
   1f24c:	90 10 00 0a 	mov  %o2, %o0

0001f250 <jpeg_open_backing_store>:
   1f250:	9d e3 bf 98 	save  %sp, -104, %sp
   1f254:	c4 06 00 00 	ld  [ %i0 ], %g2
   1f258:	82 10 20 30 	mov  0x30, %g1
   1f25c:	c2 20 a0 14 	st  %g1, [ %g2 + 0x14 ]
   1f260:	c2 06 00 00 	ld  [ %i0 ], %g1
   1f264:	c2 00 40 00 	ld  [ %g1 ], %g1
   1f268:	9f c0 40 00 	call  %g1
   1f26c:	90 10 00 18 	mov  %i0, %o0
   1f270:	01 00 00 00 	nop 
   1f274:	81 c7 e0 08 	ret 
   1f278:	81 e8 00 00 	restore 

0001f27c <jpeg_mem_init>:
   1f27c:	81 c3 e0 08 	retl 
   1f280:	90 10 20 00 	clr  %o0

0001f284 <jpeg_mem_term>:
   1f284:	81 c3 e0 08 	retl 
   1f288:	01 00 00 00 	nop 
   1f28c:	81 c3 e0 08 	retl 
   1f290:	ae 03 c0 17 	add  %o7, %l7, %l7

0001f294 <_fpadd_parts>:
   1f294:	9d e3 bf 98 	save  %sp, -104, %sp
   1f298:	c4 06 00 00 	ld  [ %i0 ], %g2
   1f29c:	2f 00 00 50 	sethi  %hi(0x14000), %l7
   1f2a0:	7f ff ff fb 	call  1f28c <jpeg_mem_term+0x8>
   1f2a4:	ae 05 e3 f4 	add  %l7, 0x3f4, %l7	! 143f4 <read_scan_script+0x1ac>
   1f2a8:	80 a0 a0 01 	cmp  %g2, 1
   1f2ac:	08 80 00 84 	bleu  1f4bc <_fpadd_parts+0x228>
   1f2b0:	88 10 00 18 	mov  %i0, %g4
   1f2b4:	c2 06 40 00 	ld  [ %i1 ], %g1
   1f2b8:	80 a0 60 01 	cmp  %g1, 1
   1f2bc:	08 80 00 80 	bleu  1f4bc <_fpadd_parts+0x228>
   1f2c0:	b0 10 00 19 	mov  %i1, %i0
   1f2c4:	80 a0 a0 04 	cmp  %g2, 4
   1f2c8:	12 80 00 0c 	bne  1f2f8 <_fpadd_parts+0x64>
   1f2cc:	80 a0 60 04 	cmp  %g1, 4
   1f2d0:	12 80 00 7b 	bne  1f4bc <_fpadd_parts+0x228>
   1f2d4:	b0 10 00 04 	mov  %g4, %i0
   1f2d8:	c4 06 60 04 	ld  [ %i1 + 4 ], %g2
   1f2dc:	c2 01 20 04 	ld  [ %g4 + 4 ], %g1
   1f2e0:	80 a0 40 02 	cmp  %g1, %g2
   1f2e4:	02 80 00 76 	be  1f4bc <_fpadd_parts+0x228>
   1f2e8:	03 00 00 00 	sethi  %hi(0), %g1
   1f2ec:	82 10 60 0c 	or  %g1, 0xc, %g1	! c <_init-0x106c4>
   1f2f0:	10 80 00 73 	b  1f4bc <_fpadd_parts+0x228>
   1f2f4:	f0 05 c0 01 	ld  [ %l7 + %g1 ], %i0
   1f2f8:	02 80 00 71 	be  1f4bc <_fpadd_parts+0x228>
   1f2fc:	b0 10 00 19 	mov  %i1, %i0
   1f300:	80 a0 60 02 	cmp  %g1, 2
   1f304:	02 80 00 48 	be  1f424 <_fpadd_parts+0x190>
   1f308:	80 a0 a0 02 	cmp  %g2, 2
   1f30c:	02 80 00 6c 	be  1f4bc <_fpadd_parts+0x228>
   1f310:	01 00 00 00 	nop 
   1f314:	de 01 20 08 	ld  [ %g4 + 8 ], %o7
   1f318:	c6 06 60 08 	ld  [ %i1 + 8 ], %g3
   1f31c:	82 23 c0 03 	sub  %o7, %g3, %g1
   1f320:	85 38 60 1f 	sra  %g1, 0x1f, %g2
   1f324:	82 18 40 02 	xor  %g1, %g2, %g1
   1f328:	82 20 40 02 	sub  %g1, %g2, %g1
   1f32c:	80 a0 60 1f 	cmp  %g1, 0x1f
   1f330:	da 01 20 0c 	ld  [ %g4 + 0xc ], %o5
   1f334:	14 80 00 4b 	bg  1f460 <_fpadd_parts+0x1cc>
   1f338:	d8 06 60 0c 	ld  [ %i1 + 0xc ], %o4
   1f33c:	80 a3 c0 03 	cmp  %o7, %g3
   1f340:	04 80 00 0a 	ble  1f368 <_fpadd_parts+0xd4>
   1f344:	80 a0 c0 0f 	cmp  %g3, %o7
   1f348:	86 23 c0 03 	sub  %o7, %g3, %g3
   1f34c:	85 33 20 01 	srl  %o4, 1, %g2
   1f350:	82 0b 20 01 	and  %o4, 1, %g1
   1f354:	86 80 ff ff 	addcc  %g3, -1, %g3
   1f358:	12 bf ff fd 	bne  1f34c <_fpadd_parts+0xb8>
   1f35c:	98 10 40 02 	or  %g1, %g2, %o4
   1f360:	86 10 00 0f 	mov  %o7, %g3
   1f364:	80 a0 c0 0f 	cmp  %g3, %o7
   1f368:	24 80 00 0a 	ble,a   1f390 <_fpadd_parts+0xfc>
   1f36c:	f0 01 20 04 	ld  [ %g4 + 4 ], %i0
   1f370:	9e 20 c0 0f 	sub  %g3, %o7, %o7
   1f374:	85 33 60 01 	srl  %o5, 1, %g2
   1f378:	82 0b 60 01 	and  %o5, 1, %g1
   1f37c:	9e 83 ff ff 	addcc  %o7, -1, %o7
   1f380:	12 bf ff fd 	bne  1f374 <_fpadd_parts+0xe0>
   1f384:	9a 10 40 02 	or  %g1, %g2, %o5
   1f388:	9e 10 00 03 	mov  %g3, %o7
   1f38c:	f0 01 20 04 	ld  [ %g4 + 4 ], %i0
   1f390:	c2 06 60 04 	ld  [ %i1 + 4 ], %g1
   1f394:	80 a6 00 01 	cmp  %i0, %g1
   1f398:	02 80 00 37 	be  1f474 <_fpadd_parts+0x1e0>
   1f39c:	80 a6 20 00 	cmp  %i0, 0
   1f3a0:	12 80 00 03 	bne  1f3ac <_fpadd_parts+0x118>
   1f3a4:	82 23 00 0d 	sub  %o4, %o5, %g1
   1f3a8:	82 23 40 0c 	sub  %o5, %o4, %g1
   1f3ac:	80 a0 60 00 	cmp  %g1, 0
   1f3b0:	06 80 00 40 	bl  1f4b0 <_fpadd_parts+0x21c>
   1f3b4:	88 20 00 01 	neg  %g1, %g4
   1f3b8:	88 10 00 01 	mov  %g1, %g4
   1f3bc:	c0 26 a0 04 	clr  [ %i2 + 4 ]
   1f3c0:	03 0f ff ff 	sethi  %hi(0x3ffffc00), %g1
   1f3c4:	84 01 3f ff 	add  %g4, -1, %g2
   1f3c8:	82 10 63 fe 	or  %g1, 0x3fe, %g1
   1f3cc:	80 a0 80 01 	cmp  %g2, %g1
   1f3d0:	86 10 00 0f 	mov  %o7, %g3
   1f3d4:	b2 10 00 04 	mov  %g4, %i1
   1f3d8:	18 80 00 0b 	bgu  1f404 <_fpadd_parts+0x170>
   1f3dc:	84 10 00 04 	mov  %g4, %g2
   1f3e0:	b0 10 00 01 	mov  %g1, %i0
   1f3e4:	88 00 80 02 	add  %g2, %g2, %g4
   1f3e8:	9e 00 ff ff 	add  %g3, -1, %o7
   1f3ec:	82 01 3f ff 	add  %g4, -1, %g1
   1f3f0:	80 a0 40 18 	cmp  %g1, %i0
   1f3f4:	b2 10 00 04 	mov  %g4, %i1
   1f3f8:	86 10 00 0f 	mov  %o7, %g3
   1f3fc:	08 bf ff fa 	bleu  1f3e4 <_fpadd_parts+0x150>
   1f400:	84 10 00 04 	mov  %g4, %g2
   1f404:	82 10 20 03 	mov  3, %g1
   1f408:	80 a6 60 00 	cmp  %i1, 0
   1f40c:	06 80 00 21 	bl  1f490 <_fpadd_parts+0x1fc>
   1f410:	c2 26 80 00 	st  %g1, [ %i2 ]
   1f414:	c8 26 a0 0c 	st  %g4, [ %i2 + 0xc ]
   1f418:	de 26 a0 08 	st  %o7, [ %i2 + 8 ]
   1f41c:	10 80 00 28 	b  1f4bc <_fpadd_parts+0x228>
   1f420:	b0 10 00 1a 	mov  %i2, %i0
   1f424:	12 80 00 26 	bne  1f4bc <_fpadd_parts+0x228>
   1f428:	b0 10 00 04 	mov  %g4, %i0
   1f42c:	c4 26 80 00 	st  %g2, [ %i2 ]
   1f430:	c2 01 20 04 	ld  [ %g4 + 4 ], %g1
   1f434:	c2 26 a0 04 	st  %g1, [ %i2 + 4 ]
   1f438:	c4 01 20 08 	ld  [ %g4 + 8 ], %g2
   1f43c:	c4 26 a0 08 	st  %g2, [ %i2 + 8 ]
   1f440:	c6 01 20 0c 	ld  [ %g4 + 0xc ], %g3
   1f444:	c6 26 a0 0c 	st  %g3, [ %i2 + 0xc ]
   1f448:	c2 01 20 04 	ld  [ %g4 + 4 ], %g1
   1f44c:	c4 06 60 04 	ld  [ %i1 + 4 ], %g2
   1f450:	82 08 40 02 	and  %g1, %g2, %g1
   1f454:	c2 26 a0 04 	st  %g1, [ %i2 + 4 ]
   1f458:	10 80 00 19 	b  1f4bc <_fpadd_parts+0x228>
   1f45c:	b0 10 00 1a 	mov  %i2, %i0
   1f460:	80 a3 c0 03 	cmp  %o7, %g3
   1f464:	24 80 00 09 	ble,a   1f488 <_fpadd_parts+0x1f4>
   1f468:	9e 10 00 03 	mov  %g3, %o7
   1f46c:	10 bf ff c8 	b  1f38c <_fpadd_parts+0xf8>
   1f470:	98 10 20 00 	clr  %o4
   1f474:	88 03 40 0c 	add  %o5, %o4, %g4
   1f478:	f0 26 a0 04 	st  %i0, [ %i2 + 4 ]
   1f47c:	86 10 00 0f 	mov  %o7, %g3
   1f480:	10 bf ff e1 	b  1f404 <_fpadd_parts+0x170>
   1f484:	b2 10 00 04 	mov  %g4, %i1
   1f488:	10 bf ff c1 	b  1f38c <_fpadd_parts+0xf8>
   1f48c:	9a 10 20 00 	clr  %o5
   1f490:	83 36 60 01 	srl  %i1, 1, %g1
   1f494:	84 0e 60 01 	and  %i1, 1, %g2
   1f498:	84 10 80 01 	or  %g2, %g1, %g2
   1f49c:	86 00 e0 01 	inc  %g3
   1f4a0:	c4 26 a0 0c 	st  %g2, [ %i2 + 0xc ]
   1f4a4:	c6 26 a0 08 	st  %g3, [ %i2 + 8 ]
   1f4a8:	10 80 00 05 	b  1f4bc <_fpadd_parts+0x228>
   1f4ac:	b0 10 00 1a 	mov  %i2, %i0
   1f4b0:	82 10 20 01 	mov  1, %g1
   1f4b4:	10 bf ff c3 	b  1f3c0 <_fpadd_parts+0x12c>
   1f4b8:	c2 26 a0 04 	st  %g1, [ %i2 + 4 ]
   1f4bc:	81 c7 e0 08 	ret 
   1f4c0:	81 e8 00 00 	restore 

0001f4c4 <__addsf3>:
   1f4c4:	9d e3 bf 60 	save  %sp, -160, %sp
   1f4c8:	a2 07 bf e8 	add  %fp, -24, %l1
   1f4cc:	90 07 bf c4 	add  %fp, -60, %o0
   1f4d0:	92 10 00 11 	mov  %l1, %o1
   1f4d4:	f0 27 bf c4 	st  %i0, [ %fp + -60 ]
   1f4d8:	40 00 04 30 	call  20598 <__unpack_f>
   1f4dc:	f2 27 bf c0 	st  %i1, [ %fp + -64 ]
   1f4e0:	a0 07 bf d8 	add  %fp, -40, %l0
   1f4e4:	90 07 bf c0 	add  %fp, -64, %o0
   1f4e8:	40 00 04 2c 	call  20598 <__unpack_f>
   1f4ec:	92 10 00 10 	mov  %l0, %o1
   1f4f0:	92 10 00 10 	mov  %l0, %o1
   1f4f4:	94 07 bf c8 	add  %fp, -56, %o2
   1f4f8:	7f ff ff 67 	call  1f294 <_fpadd_parts>
   1f4fc:	90 10 00 11 	mov  %l1, %o0
   1f500:	40 00 03 d0 	call  20440 <__pack_f>
   1f504:	01 00 00 00 	nop 
   1f508:	01 00 00 00 	nop 
   1f50c:	81 c7 e0 08 	ret 
   1f510:	81 e8 00 00 	restore 

0001f514 <__subsf3>:
   1f514:	9d e3 bf 60 	save  %sp, -160, %sp
   1f518:	a2 07 bf e8 	add  %fp, -24, %l1
   1f51c:	90 07 bf c4 	add  %fp, -60, %o0
   1f520:	92 10 00 11 	mov  %l1, %o1
   1f524:	f0 27 bf c4 	st  %i0, [ %fp + -60 ]
   1f528:	40 00 04 1c 	call  20598 <__unpack_f>
   1f52c:	f2 27 bf c0 	st  %i1, [ %fp + -64 ]
   1f530:	a0 07 bf d8 	add  %fp, -40, %l0
   1f534:	90 07 bf c0 	add  %fp, -64, %o0
   1f538:	40 00 04 18 	call  20598 <__unpack_f>
   1f53c:	92 10 00 10 	mov  %l0, %o1
   1f540:	c2 07 bf dc 	ld  [ %fp + -36 ], %g1
   1f544:	82 18 60 01 	xor  %g1, 1, %g1
   1f548:	c2 27 bf dc 	st  %g1, [ %fp + -36 ]
   1f54c:	92 10 00 10 	mov  %l0, %o1
   1f550:	94 07 bf c8 	add  %fp, -56, %o2
   1f554:	7f ff ff 50 	call  1f294 <_fpadd_parts>
   1f558:	90 10 00 11 	mov  %l1, %o0
   1f55c:	40 00 03 b9 	call  20440 <__pack_f>
   1f560:	01 00 00 00 	nop 
   1f564:	01 00 00 00 	nop 
   1f568:	81 c7 e0 08 	ret 
   1f56c:	81 e8 00 00 	restore 
   1f570:	81 c3 e0 08 	retl 
   1f574:	ae 03 c0 17 	add  %o7, %l7, %l7

0001f578 <__mulsf3>:
   1f578:	9d e3 bf 60 	save  %sp, -160, %sp
   1f57c:	a0 07 bf e8 	add  %fp, -24, %l0
   1f580:	2f 00 00 50 	sethi  %hi(0x14000), %l7
   1f584:	7f ff ff fb 	call  1f570 <__subsf3+0x5c>
   1f588:	ae 05 e1 10 	add  %l7, 0x110, %l7	! 14110 <read_quant_tables+0x104>
   1f58c:	f0 27 bf c4 	st  %i0, [ %fp + -60 ]
   1f590:	f2 27 bf c0 	st  %i1, [ %fp + -64 ]
   1f594:	90 07 bf c4 	add  %fp, -60, %o0
   1f598:	40 00 04 00 	call  20598 <__unpack_f>
   1f59c:	92 10 00 10 	mov  %l0, %o1
   1f5a0:	b2 07 bf d8 	add  %fp, -40, %i1
   1f5a4:	90 07 bf c0 	add  %fp, -64, %o0
   1f5a8:	40 00 03 fc 	call  20598 <__unpack_f>
   1f5ac:	92 10 00 19 	mov  %i1, %o1
   1f5b0:	c2 07 bf e8 	ld  [ %fp + -24 ], %g1
   1f5b4:	80 a0 60 01 	cmp  %g1, 1
   1f5b8:	08 80 00 12 	bleu  1f600 <__mulsf3+0x88>
   1f5bc:	b0 07 bf c8 	add  %fp, -56, %i0
   1f5c0:	c4 07 bf d8 	ld  [ %fp + -40 ], %g2
   1f5c4:	80 a0 a0 01 	cmp  %g2, 1
   1f5c8:	28 80 00 1b 	bleu,a   1f634 <__mulsf3+0xbc>
   1f5cc:	c4 07 bf dc 	ld  [ %fp + -36 ], %g2
   1f5d0:	80 a0 60 04 	cmp  %g1, 4
   1f5d4:	12 80 00 13 	bne  1f620 <__mulsf3+0xa8>
   1f5d8:	80 a0 a0 04 	cmp  %g2, 4
   1f5dc:	80 a0 a0 02 	cmp  %g2, 2
   1f5e0:	12 80 00 09 	bne  1f604 <__mulsf3+0x8c>
   1f5e4:	c2 07 bf ec 	ld  [ %fp + -20 ], %g1
   1f5e8:	03 00 00 00 	sethi  %hi(0), %g1
   1f5ec:	82 10 60 0c 	or  %g1, 0xc, %g1	! c <_init-0x106c4>
   1f5f0:	10 80 00 5c 	b  1f760 <__mulsf3+0x1e8>
   1f5f4:	d0 05 c0 01 	ld  [ %l7 + %g1 ], %o0
   1f5f8:	12 80 00 16 	bne  1f650 <__mulsf3+0xd8>
   1f5fc:	80 a0 a0 02 	cmp  %g2, 2
   1f600:	c2 07 bf ec 	ld  [ %fp + -20 ], %g1
   1f604:	c4 07 bf dc 	ld  [ %fp + -36 ], %g2
   1f608:	82 18 40 02 	xor  %g1, %g2, %g1
   1f60c:	80 a0 00 01 	cmp  %g0, %g1
   1f610:	84 40 20 00 	addx  %g0, 0, %g2
   1f614:	c4 27 bf ec 	st  %g2, [ %fp + -20 ]
   1f618:	10 80 00 52 	b  1f760 <__mulsf3+0x1e8>
   1f61c:	90 10 00 10 	mov  %l0, %o0
   1f620:	12 bf ff f6 	bne  1f5f8 <__mulsf3+0x80>
   1f624:	80 a0 60 02 	cmp  %g1, 2
   1f628:	02 bf ff f1 	be  1f5ec <__mulsf3+0x74>
   1f62c:	03 00 00 00 	sethi  %hi(0), %g1
   1f630:	c4 07 bf dc 	ld  [ %fp + -36 ], %g2
   1f634:	c2 07 bf ec 	ld  [ %fp + -20 ], %g1
   1f638:	82 18 40 02 	xor  %g1, %g2, %g1
   1f63c:	80 a0 00 01 	cmp  %g0, %g1
   1f640:	84 40 20 00 	addx  %g0, 0, %g2
   1f644:	c4 27 bf dc 	st  %g2, [ %fp + -36 ]
   1f648:	10 80 00 46 	b  1f760 <__mulsf3+0x1e8>
   1f64c:	90 10 00 19 	mov  %i1, %o0
   1f650:	02 bf ff f9 	be  1f634 <__mulsf3+0xbc>
   1f654:	c4 07 bf dc 	ld  [ %fp + -36 ], %g2
   1f658:	d0 07 bf f4 	ld  [ %fp + -12 ], %o0
   1f65c:	d4 07 bf e4 	ld  [ %fp + -28 ], %o2
   1f660:	92 10 00 08 	mov  %o0, %o1
   1f664:	96 10 00 0a 	mov  %o2, %o3
   1f668:	90 10 20 00 	clr  %o0
   1f66c:	40 00 03 41 	call  20370 <__muldi3>
   1f670:	94 10 20 00 	clr  %o2
   1f674:	c8 07 bf dc 	ld  [ %fp + -36 ], %g4
   1f678:	c2 07 bf ec 	ld  [ %fp + -20 ], %g1
   1f67c:	82 18 40 04 	xor  %g1, %g4, %g1
   1f680:	80 a0 00 01 	cmp  %g0, %g1
   1f684:	c8 07 bf f0 	ld  [ %fp + -16 ], %g4
   1f688:	c2 07 bf e0 	ld  [ %fp + -32 ], %g1
   1f68c:	88 01 00 01 	add  %g4, %g1, %g4
   1f690:	86 10 00 08 	mov  %o0, %g3
   1f694:	9a 40 20 00 	addx  %g0, 0, %o5
   1f698:	88 01 20 02 	add  %g4, 2, %g4
   1f69c:	84 10 00 03 	mov  %g3, %g2
   1f6a0:	da 27 bf cc 	st  %o5, [ %fp + -52 ]
   1f6a4:	90 10 00 09 	mov  %o1, %o0
   1f6a8:	80 a0 e0 00 	cmp  %g3, 0
   1f6ac:	06 80 00 1d 	bl  1f720 <__mulsf3+0x1a8>
   1f6b0:	c8 27 bf d0 	st  %g4, [ %fp + -48 ]
   1f6b4:	03 0f ff ff 	sethi  %hi(0x3ffffc00), %g1
   1f6b8:	82 10 63 ff 	or  %g1, 0x3ff, %g1	! 3fffffff <_end+0x3ffcc7ff>
   1f6bc:	80 a0 80 01 	cmp  %g2, %g1
   1f6c0:	38 80 00 10 	bgu,a   1f700 <__mulsf3+0x188>
   1f6c4:	82 08 a0 7f 	and  %g2, 0x7f, %g1
   1f6c8:	10 80 00 05 	b  1f6dc <__mulsf3+0x164>
   1f6cc:	c8 06 20 08 	ld  [ %i0 + 8 ], %g4
   1f6d0:	80 a0 80 01 	cmp  %g2, %g1
   1f6d4:	38 80 00 0a 	bgu,a   1f6fc <__mulsf3+0x184>
   1f6d8:	c6 26 20 08 	st  %g3, [ %i0 + 8 ]
   1f6dc:	86 01 3f ff 	add  %g4, -1, %g3
   1f6e0:	80 a2 20 00 	cmp  %o0, 0
   1f6e4:	84 00 80 02 	add  %g2, %g2, %g2
   1f6e8:	90 02 00 08 	add  %o0, %o0, %o0
   1f6ec:	16 bf ff f9 	bge  1f6d0 <__mulsf3+0x158>
   1f6f0:	88 10 00 03 	mov  %g3, %g4
   1f6f4:	10 bf ff f7 	b  1f6d0 <__mulsf3+0x158>
   1f6f8:	84 10 a0 01 	or  %g2, 1, %g2
   1f6fc:	82 08 a0 7f 	and  %g2, 0x7f, %g1
   1f700:	80 a0 60 40 	cmp  %g1, 0x40
   1f704:	02 80 00 10 	be  1f744 <__mulsf3+0x1cc>
   1f708:	80 88 a0 80 	btst  0x80, %g2
   1f70c:	82 10 20 03 	mov  3, %g1
   1f710:	c4 26 20 0c 	st  %g2, [ %i0 + 0xc ]
   1f714:	c2 26 00 00 	st  %g1, [ %i0 ]
   1f718:	10 80 00 12 	b  1f760 <__mulsf3+0x1e8>
   1f71c:	90 10 00 18 	mov  %i0, %o0
   1f720:	80 88 e0 01 	btst  1, %g3
   1f724:	02 80 00 05 	be  1f738 <__mulsf3+0x1c0>
   1f728:	88 01 20 01 	inc  %g4
   1f72c:	91 32 60 01 	srl  %o1, 1, %o0
   1f730:	03 20 00 00 	sethi  %hi(0x80000000), %g1
   1f734:	90 12 00 01 	or  %o0, %g1, %o0
   1f738:	85 30 a0 01 	srl  %g2, 1, %g2
   1f73c:	10 bf ff de 	b  1f6b4 <__mulsf3+0x13c>
   1f740:	c8 26 20 08 	st  %g4, [ %i0 + 8 ]
   1f744:	32 bf ff f2 	bne,a   1f70c <__mulsf3+0x194>
   1f748:	84 00 a0 40 	add  %g2, 0x40, %g2
   1f74c:	80 a2 20 00 	cmp  %o0, 0
   1f750:	02 bf ff f0 	be  1f710 <__mulsf3+0x198>
   1f754:	82 10 20 03 	mov  3, %g1
   1f758:	10 bf ff ee 	b  1f710 <__mulsf3+0x198>
   1f75c:	84 00 a0 40 	add  %g2, 0x40, %g2
   1f760:	40 00 03 38 	call  20440 <__pack_f>
   1f764:	01 00 00 00 	nop 
   1f768:	01 00 00 00 	nop 
   1f76c:	81 c7 e0 08 	ret 
   1f770:	81 e8 00 00 	restore 
   1f774:	81 c3 e0 08 	retl 
   1f778:	ae 03 c0 17 	add  %o7, %l7, %l7

0001f77c <__floatsisf>:
   1f77c:	9d e3 bf 88 	save  %sp, -120, %sp
   1f780:	85 36 20 1f 	srl  %i0, 0x1f, %g2
   1f784:	2f 00 00 4f 	sethi  %hi(0x13c00), %l7
   1f788:	7f ff ff fb 	call  1f774 <__mulsf3+0x1fc>
   1f78c:	ae 05 e3 0c 	add  %l7, 0x30c, %l7	! 13f0c <text_getc+0x14>
   1f790:	80 a6 20 00 	cmp  %i0, 0
   1f794:	12 80 00 07 	bne  1f7b0 <__floatsisf+0x34>
   1f798:	c4 27 bf ec 	st  %g2, [ %fp + -20 ]
   1f79c:	82 10 20 02 	mov  2, %g1
   1f7a0:	c2 27 bf e8 	st  %g1, [ %fp + -24 ]
   1f7a4:	40 00 03 27 	call  20440 <__pack_f>
   1f7a8:	90 07 bf e8 	add  %fp, -24, %o0
   1f7ac:	30 80 00 23 	b,a   1f838 <__floatsisf+0xbc>
   1f7b0:	82 10 20 03 	mov  3, %g1
   1f7b4:	c2 27 bf e8 	st  %g1, [ %fp + -24 ]
   1f7b8:	86 10 00 18 	mov  %i0, %g3
   1f7bc:	80 a0 a0 00 	cmp  %g2, 0
   1f7c0:	88 10 20 1e 	mov  0x1e, %g4
   1f7c4:	98 10 20 1e 	mov  0x1e, %o4
   1f7c8:	12 80 00 12 	bne  1f810 <__floatsisf+0x94>
   1f7cc:	82 10 00 18 	mov  %i0, %g1
   1f7d0:	84 10 00 01 	mov  %g1, %g2
   1f7d4:	03 0f ff ff 	sethi  %hi(0x3ffffc00), %g1
   1f7d8:	82 10 63 ff 	or  %g1, 0x3ff, %g1	! 3fffffff <_end+0x3ffcc7ff>
   1f7dc:	80 a0 80 01 	cmp  %g2, %g1
   1f7e0:	18 80 00 09 	bgu  1f804 <__floatsisf+0x88>
   1f7e4:	9a 10 00 01 	mov  %g1, %o5
   1f7e8:	82 01 3f ff 	add  %g4, -1, %g1
   1f7ec:	86 00 80 02 	add  %g2, %g2, %g3
   1f7f0:	88 10 00 01 	mov  %g1, %g4
   1f7f4:	80 a0 c0 0d 	cmp  %g3, %o5
   1f7f8:	98 10 00 01 	mov  %g1, %o4
   1f7fc:	08 bf ff fb 	bleu  1f7e8 <__floatsisf+0x6c>
   1f800:	84 10 00 03 	mov  %g3, %g2
   1f804:	c6 27 bf f4 	st  %g3, [ %fp + -12 ]
   1f808:	10 bf ff e7 	b  1f7a4 <__floatsisf+0x28>
   1f80c:	d8 27 bf f0 	st  %o4, [ %fp + -16 ]
   1f810:	03 20 00 00 	sethi  %hi(0x80000000), %g1
   1f814:	86 20 00 18 	neg  %i0, %g3
   1f818:	80 a6 00 01 	cmp  %i0, %g1
   1f81c:	12 bf ff ed 	bne  1f7d0 <__floatsisf+0x54>
   1f820:	82 10 00 03 	mov  %g3, %g1
   1f824:	03 00 00 00 	sethi  %hi(0), %g1
   1f828:	82 10 60 04 	or  %g1, 4, %g1	! 4 <_init-0x106cc>
   1f82c:	c4 05 c0 01 	ld  [ %l7 + %g1 ], %g2
   1f830:	d8 27 bf f0 	st  %o4, [ %fp + -16 ]
   1f834:	c1 00 80 00 	ld  [ %g2 ], %f0
   1f838:	81 c7 e0 08 	ret 
   1f83c:	81 e8 00 00 	restore 

0001f840 <__fixsfsi>:
   1f840:	9d e3 bf 80 	save  %sp, -128, %sp
   1f844:	f0 27 bf e4 	st  %i0, [ %fp + -28 ]
   1f848:	90 07 bf e4 	add  %fp, -28, %o0
   1f84c:	40 00 03 53 	call  20598 <__unpack_f>
   1f850:	92 07 bf e8 	add  %fp, -24, %o1
   1f854:	c6 07 bf e8 	ld  [ %fp + -24 ], %g3
   1f858:	80 a0 e0 02 	cmp  %g3, 2
   1f85c:	02 80 00 20 	be  1f8dc <__fixsfsi+0x9c>
   1f860:	b0 10 20 00 	clr  %i0
   1f864:	80 a0 e0 01 	cmp  %g3, 1
   1f868:	08 80 00 1d 	bleu  1f8dc <__fixsfsi+0x9c>
   1f86c:	80 a0 e0 04 	cmp  %g3, 4
   1f870:	02 80 00 11 	be  1f8b4 <__fixsfsi+0x74>
   1f874:	c2 07 bf ec 	ld  [ %fp + -20 ], %g1
   1f878:	c4 07 bf f0 	ld  [ %fp + -16 ], %g2
   1f87c:	80 a0 a0 00 	cmp  %g2, 0
   1f880:	06 80 00 17 	bl  1f8dc <__fixsfsi+0x9c>
   1f884:	80 a0 a0 1e 	cmp  %g2, 0x1e
   1f888:	14 80 00 11 	bg  1f8cc <__fixsfsi+0x8c>
   1f88c:	80 a0 60 00 	cmp  %g1, 0
   1f890:	82 10 20 1e 	mov  0x1e, %g1
   1f894:	82 20 40 02 	sub  %g1, %g2, %g1
   1f898:	c4 07 bf f4 	ld  [ %fp + -12 ], %g2
   1f89c:	c6 07 bf ec 	ld  [ %fp + -20 ], %g3
   1f8a0:	80 a0 e0 00 	cmp  %g3, 0
   1f8a4:	02 80 00 0e 	be  1f8dc <__fixsfsi+0x9c>
   1f8a8:	b1 30 80 01 	srl  %g2, %g1, %i0
   1f8ac:	10 80 00 0c 	b  1f8dc <__fixsfsi+0x9c>
   1f8b0:	b0 20 00 18 	neg  %i0
   1f8b4:	80 a0 60 00 	cmp  %g1, 0
   1f8b8:	12 80 00 09 	bne  1f8dc <__fixsfsi+0x9c>
   1f8bc:	31 20 00 00 	sethi  %hi(0x80000000), %i0
   1f8c0:	03 1f ff ff 	sethi  %hi(0x7ffffc00), %g1
   1f8c4:	10 80 00 06 	b  1f8dc <__fixsfsi+0x9c>
   1f8c8:	b0 10 63 ff 	or  %g1, 0x3ff, %i0	! 7fffffff <_end+0x7ffcc7ff>
   1f8cc:	12 80 00 04 	bne  1f8dc <__fixsfsi+0x9c>
   1f8d0:	31 20 00 00 	sethi  %hi(0x80000000), %i0
   1f8d4:	03 1f ff ff 	sethi  %hi(0x7ffffc00), %g1
   1f8d8:	b0 10 63 ff 	or  %g1, 0x3ff, %i0	! 7fffffff <_end+0x7ffcc7ff>
   1f8dc:	81 c7 e0 08 	ret 
   1f8e0:	81 e8 00 00 	restore 
   1f8e4:	81 c3 e0 08 	retl 
   1f8e8:	ae 03 c0 17 	add  %o7, %l7, %l7

0001f8ec <_fpadd_parts>:
   1f8ec:	9d e3 bf 98 	save  %sp, -104, %sp
   1f8f0:	2f 00 00 4f 	sethi  %hi(0x13c00), %l7
   1f8f4:	7f ff ff fc 	call  1f8e4 <__fixsfsi+0xa4>
   1f8f8:	ae 05 e1 a0 	add  %l7, 0x1a0, %l7	! 13da0 <start_input_bmp+0x5c0>
   1f8fc:	c2 06 00 00 	ld  [ %i0 ], %g1
   1f900:	80 a0 60 01 	cmp  %g1, 1
   1f904:	08 80 00 ad 	bleu  1fbb8 <_fpadd_parts+0x2cc>
   1f908:	9e 10 00 18 	mov  %i0, %o7
   1f90c:	c4 06 40 00 	ld  [ %i1 ], %g2
   1f910:	80 a0 a0 01 	cmp  %g2, 1
   1f914:	08 80 00 a9 	bleu  1fbb8 <_fpadd_parts+0x2cc>
   1f918:	b0 10 00 19 	mov  %i1, %i0
   1f91c:	80 a0 60 04 	cmp  %g1, 4
   1f920:	12 80 00 0c 	bne  1f950 <_fpadd_parts+0x64>
   1f924:	80 a0 a0 04 	cmp  %g2, 4
   1f928:	12 80 00 a4 	bne  1fbb8 <_fpadd_parts+0x2cc>
   1f92c:	b0 10 00 0f 	mov  %o7, %i0
   1f930:	c4 06 60 04 	ld  [ %i1 + 4 ], %g2
   1f934:	c2 03 e0 04 	ld  [ %o7 + 4 ], %g1
   1f938:	80 a0 40 02 	cmp  %g1, %g2
   1f93c:	02 80 00 9f 	be  1fbb8 <_fpadd_parts+0x2cc>
   1f940:	03 00 00 00 	sethi  %hi(0), %g1
   1f944:	82 10 60 14 	or  %g1, 0x14, %g1	! 14 <_init-0x106bc>
   1f948:	10 80 00 9c 	b  1fbb8 <_fpadd_parts+0x2cc>
   1f94c:	f0 05 c0 01 	ld  [ %l7 + %g1 ], %i0
   1f950:	02 80 00 9a 	be  1fbb8 <_fpadd_parts+0x2cc>
   1f954:	b0 10 00 19 	mov  %i1, %i0
   1f958:	80 a0 a0 02 	cmp  %g2, 2
   1f95c:	02 80 00 58 	be  1fabc <_fpadd_parts+0x1d0>
   1f960:	80 a0 60 02 	cmp  %g1, 2
   1f964:	02 80 00 95 	be  1fbb8 <_fpadd_parts+0x2cc>
   1f968:	01 00 00 00 	nop 
   1f96c:	d2 03 e0 08 	ld  [ %o7 + 8 ], %o1
   1f970:	f0 06 60 08 	ld  [ %i1 + 8 ], %i0
   1f974:	82 22 40 18 	sub  %o1, %i0, %g1
   1f978:	85 38 60 1f 	sra  %g1, 0x1f, %g2
   1f97c:	82 18 40 02 	xor  %g1, %g2, %g1
   1f980:	82 20 40 02 	sub  %g1, %g2, %g1
   1f984:	80 a0 60 3f 	cmp  %g1, 0x3f
   1f988:	d8 1b e0 10 	ldd  [ %o7 + 0x10 ], %o4
   1f98c:	14 80 00 67 	bg  1fb28 <_fpadd_parts+0x23c>
   1f990:	d4 1e 60 10 	ldd  [ %i1 + 0x10 ], %o2
   1f994:	80 a2 40 18 	cmp  %o1, %i0
   1f998:	04 80 00 0f 	ble  1f9d4 <_fpadd_parts+0xe8>
   1f99c:	80 a6 00 09 	cmp  %i0, %o1
   1f9a0:	b0 22 40 18 	sub  %o1, %i0, %i0
   1f9a4:	89 2a a0 1f 	sll  %o2, 0x1f, %g4
   1f9a8:	83 32 e0 01 	srl  %o3, 1, %g1
   1f9ac:	86 11 00 01 	or  %g4, %g1, %g3
   1f9b0:	85 32 a0 01 	srl  %o2, 1, %g2
   1f9b4:	b8 0a a0 00 	and  %o2, 0, %i4
   1f9b8:	ba 0a e0 01 	and  %o3, 1, %i5
   1f9bc:	94 17 00 02 	or  %i4, %g2, %o2
   1f9c0:	b0 86 3f ff 	addcc  %i0, -1, %i0
   1f9c4:	12 bf ff f8 	bne  1f9a4 <_fpadd_parts+0xb8>
   1f9c8:	96 17 40 03 	or  %i5, %g3, %o3
   1f9cc:	b0 10 00 09 	mov  %o1, %i0
   1f9d0:	80 a6 00 09 	cmp  %i0, %o1
   1f9d4:	24 80 00 0f 	ble,a   1fa10 <_fpadd_parts+0x124>
   1f9d8:	c4 03 e0 04 	ld  [ %o7 + 4 ], %g2
   1f9dc:	92 26 00 09 	sub  %i0, %o1, %o1
   1f9e0:	89 2b 20 1f 	sll  %o4, 0x1f, %g4
   1f9e4:	83 33 60 01 	srl  %o5, 1, %g1
   1f9e8:	86 11 00 01 	or  %g4, %g1, %g3
   1f9ec:	85 33 20 01 	srl  %o4, 1, %g2
   1f9f0:	b8 0b 20 00 	and  %o4, 0, %i4
   1f9f4:	ba 0b 60 01 	and  %o5, 1, %i5
   1f9f8:	98 17 00 02 	or  %i4, %g2, %o4
   1f9fc:	92 82 7f ff 	addcc  %o1, -1, %o1
   1fa00:	12 bf ff f8 	bne  1f9e0 <_fpadd_parts+0xf4>
   1fa04:	9a 17 40 03 	or  %i5, %g3, %o5
   1fa08:	92 10 00 18 	mov  %i0, %o1
   1fa0c:	c4 03 e0 04 	ld  [ %o7 + 4 ], %g2
   1fa10:	c2 06 60 04 	ld  [ %i1 + 4 ], %g1
   1fa14:	80 a0 80 01 	cmp  %g2, %g1
   1fa18:	02 80 00 59 	be  1fb7c <_fpadd_parts+0x290>
   1fa1c:	80 a0 a0 00 	cmp  %g2, 0
   1fa20:	02 80 00 55 	be  1fb74 <_fpadd_parts+0x288>
   1fa24:	86 a3 40 0b 	subcc  %o5, %o3, %g3
   1fa28:	86 a2 c0 0d 	subcc  %o3, %o5, %g3
   1fa2c:	84 62 80 0c 	subx  %o2, %o4, %g2
   1fa30:	80 a0 a0 00 	cmp  %g2, 0
   1fa34:	06 80 00 5c 	bl  1fba4 <_fpadd_parts+0x2b8>
   1fa38:	9a a0 00 03 	subcc  %g0, %g3, %o5
   1fa3c:	9e 10 00 09 	mov  %o1, %o7
   1fa40:	98 10 00 02 	mov  %g2, %o4
   1fa44:	9a 10 00 03 	mov  %g3, %o5
   1fa48:	c0 26 a0 04 	clr  [ %i2 + 4 ]
   1fa4c:	86 83 7f ff 	addcc  %o5, -1, %g3
   1fa50:	03 03 ff ff 	sethi  %hi(0xffffc00), %g1
   1fa54:	84 43 3f ff 	addx  %o4, -1, %g2
   1fa58:	82 10 63 ff 	or  %g1, 0x3ff, %g1
   1fa5c:	88 10 00 0f 	mov  %o7, %g4
   1fa60:	b0 10 00 0c 	mov  %o4, %i0
   1fa64:	b2 10 00 0d 	mov  %o5, %i1
   1fa68:	80 a0 80 01 	cmp  %g2, %g1
   1fa6c:	18 80 00 24 	bgu  1fafc <_fpadd_parts+0x210>
   1fa70:	80 a0 80 01 	cmp  %g2, %g1
   1fa74:	22 80 00 20 	be,a   1faf4 <_fpadd_parts+0x208>
   1fa78:	80 a0 ff fe 	cmp  %g3, -2
   1fa7c:	89 33 60 1f 	srl  %o5, 0x1f, %g4
   1fa80:	82 03 00 0c 	add  %o4, %o4, %g1
   1fa84:	86 03 40 0d 	add  %o5, %o5, %g3
   1fa88:	84 11 00 01 	or  %g4, %g1, %g2
   1fa8c:	9a 10 00 03 	mov  %g3, %o5
   1fa90:	98 10 00 02 	mov  %g2, %o4
   1fa94:	86 80 ff ff 	addcc  %g3, -1, %g3
   1fa98:	03 03 ff ff 	sethi  %hi(0xffffc00), %g1
   1fa9c:	84 40 bf ff 	addx  %g2, -1, %g2
   1faa0:	82 10 63 ff 	or  %g1, 0x3ff, %g1
   1faa4:	9e 03 ff ff 	add  %o7, -1, %o7
   1faa8:	80 a0 80 01 	cmp  %g2, %g1
   1faac:	b0 10 00 0c 	mov  %o4, %i0
   1fab0:	b2 10 00 0d 	mov  %o5, %i1
   1fab4:	10 bf ff ee 	b  1fa6c <_fpadd_parts+0x180>
   1fab8:	88 10 00 0f 	mov  %o7, %g4
   1fabc:	12 80 00 3f 	bne  1fbb8 <_fpadd_parts+0x2cc>
   1fac0:	b0 10 00 0f 	mov  %o7, %i0
   1fac4:	c4 1b c0 00 	ldd  [ %o7 ], %g2
   1fac8:	c4 3e 80 00 	std  %g2, [ %i2 ]
   1facc:	f8 1b e0 08 	ldd  [ %o7 + 8 ], %i4
   1fad0:	f8 3e a0 08 	std  %i4, [ %i2 + 8 ]
   1fad4:	c4 1b e0 10 	ldd  [ %o7 + 0x10 ], %g2
   1fad8:	c4 3e a0 10 	std  %g2, [ %i2 + 0x10 ]
   1fadc:	c2 03 e0 04 	ld  [ %o7 + 4 ], %g1
   1fae0:	c4 06 60 04 	ld  [ %i1 + 4 ], %g2
   1fae4:	82 08 40 02 	and  %g1, %g2, %g1
   1fae8:	c2 26 a0 04 	st  %g1, [ %i2 + 4 ]
   1faec:	10 80 00 33 	b  1fbb8 <_fpadd_parts+0x2cc>
   1faf0:	b0 10 00 1a 	mov  %i2, %i0
   1faf4:	28 bf ff e3 	bleu,a   1fa80 <_fpadd_parts+0x194>
   1faf8:	89 33 60 1f 	srl  %o5, 0x1f, %g4
   1fafc:	f0 3e a0 10 	std  %i0, [ %i2 + 0x10 ]
   1fb00:	05 07 ff ff 	sethi  %hi(0x1ffffc00), %g2
   1fb04:	c2 06 a0 10 	ld  [ %i2 + 0x10 ], %g1
   1fb08:	84 10 a3 ff 	or  %g2, 0x3ff, %g2
   1fb0c:	86 10 20 03 	mov  3, %g3
   1fb10:	80 a0 40 02 	cmp  %g1, %g2
   1fb14:	18 80 00 0b 	bgu  1fb40 <_fpadd_parts+0x254>
   1fb18:	c6 26 80 00 	st  %g3, [ %i2 ]
   1fb1c:	c8 26 a0 08 	st  %g4, [ %i2 + 8 ]
   1fb20:	10 80 00 26 	b  1fbb8 <_fpadd_parts+0x2cc>
   1fb24:	b0 10 00 1a 	mov  %i2, %i0
   1fb28:	80 a2 40 18 	cmp  %o1, %i0
   1fb2c:	24 80 00 1b 	ble,a   1fb98 <_fpadd_parts+0x2ac>
   1fb30:	92 10 00 18 	mov  %i0, %o1
   1fb34:	94 10 20 00 	clr  %o2
   1fb38:	10 bf ff b5 	b  1fa0c <_fpadd_parts+0x120>
   1fb3c:	96 10 20 00 	clr  %o3
   1fb40:	83 33 60 01 	srl  %o5, 1, %g1
   1fb44:	89 2b 20 1f 	sll  %o4, 0x1f, %g4
   1fb48:	86 11 00 01 	or  %g4, %g1, %g3
   1fb4c:	85 33 20 01 	srl  %o4, 1, %g2
   1fb50:	b8 0b 20 00 	and  %o4, 0, %i4
   1fb54:	ba 0b 60 01 	and  %o5, 1, %i5
   1fb58:	b8 17 00 02 	or  %i4, %g2, %i4
   1fb5c:	ba 17 40 03 	or  %i5, %g3, %i5
   1fb60:	82 03 e0 01 	add  %o7, 1, %g1
   1fb64:	f8 3e a0 10 	std  %i4, [ %i2 + 0x10 ]
   1fb68:	c2 26 a0 08 	st  %g1, [ %i2 + 8 ]
   1fb6c:	10 80 00 13 	b  1fbb8 <_fpadd_parts+0x2cc>
   1fb70:	b0 10 00 1a 	mov  %i2, %i0
   1fb74:	10 bf ff af 	b  1fa30 <_fpadd_parts+0x144>
   1fb78:	84 63 00 0a 	subx  %o4, %o2, %g2
   1fb7c:	9a 83 40 0b 	addcc  %o5, %o3, %o5
   1fb80:	98 43 00 0a 	addx  %o4, %o2, %o4
   1fb84:	9e 10 00 09 	mov  %o1, %o7
   1fb88:	c4 26 a0 04 	st  %g2, [ %i2 + 4 ]
   1fb8c:	d8 3e a0 10 	std  %o4, [ %i2 + 0x10 ]
   1fb90:	10 bf ff dc 	b  1fb00 <_fpadd_parts+0x214>
   1fb94:	88 10 00 09 	mov  %o1, %g4
   1fb98:	98 10 20 00 	clr  %o4
   1fb9c:	10 bf ff 9c 	b  1fa0c <_fpadd_parts+0x120>
   1fba0:	9a 10 20 00 	clr  %o5
   1fba4:	82 10 20 01 	mov  1, %g1
   1fba8:	98 60 00 02 	subx  %g0, %g2, %o4
   1fbac:	9e 10 00 09 	mov  %o1, %o7
   1fbb0:	10 bf ff a7 	b  1fa4c <_fpadd_parts+0x160>
   1fbb4:	c2 26 a0 04 	st  %g1, [ %i2 + 4 ]
   1fbb8:	81 c7 e0 08 	ret 
   1fbbc:	81 e8 00 00 	restore 

0001fbc0 <__adddf3>:
   1fbc0:	9d e3 bf 40 	save  %sp, -192, %sp
   1fbc4:	a2 07 bf e0 	add  %fp, -32, %l1
   1fbc8:	90 07 bf a8 	add  %fp, -88, %o0
   1fbcc:	92 10 00 11 	mov  %l1, %o1
   1fbd0:	f0 3f bf a8 	std  %i0, [ %fp + -88 ]
   1fbd4:	40 00 03 31 	call  20898 <__unpack_d>
   1fbd8:	f4 3f bf a0 	std  %i2, [ %fp + -96 ]
   1fbdc:	a0 07 bf c8 	add  %fp, -56, %l0
   1fbe0:	90 07 bf a0 	add  %fp, -96, %o0
   1fbe4:	40 00 03 2d 	call  20898 <__unpack_d>
   1fbe8:	92 10 00 10 	mov  %l0, %o1
   1fbec:	92 10 00 10 	mov  %l0, %o1
   1fbf0:	94 07 bf b0 	add  %fp, -80, %o2
   1fbf4:	7f ff ff 3e 	call  1f8ec <_fpadd_parts>
   1fbf8:	90 10 00 11 	mov  %l1, %o0
   1fbfc:	40 00 02 a5 	call  20690 <__pack_d>
   1fc00:	01 00 00 00 	nop 
   1fc04:	01 00 00 00 	nop 
   1fc08:	81 c7 e0 08 	ret 
   1fc0c:	81 e8 00 00 	restore 

0001fc10 <__subdf3>:
   1fc10:	9d e3 bf 40 	save  %sp, -192, %sp
   1fc14:	a2 07 bf e0 	add  %fp, -32, %l1
   1fc18:	90 07 bf a8 	add  %fp, -88, %o0
   1fc1c:	92 10 00 11 	mov  %l1, %o1
   1fc20:	f0 3f bf a8 	std  %i0, [ %fp + -88 ]
   1fc24:	40 00 03 1d 	call  20898 <__unpack_d>
   1fc28:	f4 3f bf a0 	std  %i2, [ %fp + -96 ]
   1fc2c:	a0 07 bf c8 	add  %fp, -56, %l0
   1fc30:	90 07 bf a0 	add  %fp, -96, %o0
   1fc34:	40 00 03 19 	call  20898 <__unpack_d>
   1fc38:	92 10 00 10 	mov  %l0, %o1
   1fc3c:	c2 07 bf cc 	ld  [ %fp + -52 ], %g1
   1fc40:	82 18 60 01 	xor  %g1, 1, %g1
   1fc44:	c2 27 bf cc 	st  %g1, [ %fp + -52 ]
   1fc48:	92 10 00 10 	mov  %l0, %o1
   1fc4c:	94 07 bf b0 	add  %fp, -80, %o2
   1fc50:	7f ff ff 27 	call  1f8ec <_fpadd_parts>
   1fc54:	90 10 00 11 	mov  %l1, %o0
   1fc58:	40 00 02 8e 	call  20690 <__pack_d>
   1fc5c:	01 00 00 00 	nop 
   1fc60:	01 00 00 00 	nop 
   1fc64:	81 c7 e0 08 	ret 
   1fc68:	81 e8 00 00 	restore 
   1fc6c:	81 c3 e0 08 	retl 
   1fc70:	ae 03 c0 17 	add  %o7, %l7, %l7

0001fc74 <__muldf3>:
   1fc74:	9d e3 bf 38 	save  %sp, -200, %sp
   1fc78:	ac 07 bf e0 	add  %fp, -32, %l6
   1fc7c:	2f 00 00 4e 	sethi  %hi(0x13800), %l7
   1fc80:	7f ff ff fb 	call  1fc6c <__subdf3+0x5c>
   1fc84:	ae 05 e2 14 	add  %l7, 0x214, %l7	! 13a14 <start_input_bmp+0x234>
   1fc88:	f0 3f bf a8 	std  %i0, [ %fp + -88 ]
   1fc8c:	90 07 bf a8 	add  %fp, -88, %o0
   1fc90:	92 10 00 16 	mov  %l6, %o1
   1fc94:	40 00 03 01 	call  20898 <__unpack_d>
   1fc98:	f4 3f bf a0 	std  %i2, [ %fp + -96 ]
   1fc9c:	b2 07 bf c8 	add  %fp, -56, %i1
   1fca0:	90 07 bf a0 	add  %fp, -96, %o0
   1fca4:	40 00 02 fd 	call  20898 <__unpack_d>
   1fca8:	92 10 00 19 	mov  %i1, %o1
   1fcac:	c2 07 bf e0 	ld  [ %fp + -32 ], %g1
   1fcb0:	80 a0 60 01 	cmp  %g1, 1
   1fcb4:	08 80 00 12 	bleu  1fcfc <__muldf3+0x88>
   1fcb8:	b0 07 bf b0 	add  %fp, -80, %i0
   1fcbc:	c4 07 bf c8 	ld  [ %fp + -56 ], %g2
   1fcc0:	80 a0 a0 01 	cmp  %g2, 1
   1fcc4:	28 80 00 1b 	bleu,a   1fd30 <__muldf3+0xbc>
   1fcc8:	c4 07 bf cc 	ld  [ %fp + -52 ], %g2
   1fccc:	80 a0 60 04 	cmp  %g1, 4
   1fcd0:	12 80 00 13 	bne  1fd1c <__muldf3+0xa8>
   1fcd4:	80 a0 a0 04 	cmp  %g2, 4
   1fcd8:	80 a0 a0 02 	cmp  %g2, 2
   1fcdc:	12 80 00 09 	bne  1fd00 <__muldf3+0x8c>
   1fce0:	c2 07 bf e4 	ld  [ %fp + -28 ], %g1
   1fce4:	03 00 00 00 	sethi  %hi(0), %g1
   1fce8:	82 10 60 14 	or  %g1, 0x14, %g1	! 14 <_init-0x106bc>
   1fcec:	10 80 00 b7 	b  1ffc8 <__muldf3+0x354>
   1fcf0:	d0 05 c0 01 	ld  [ %l7 + %g1 ], %o0
   1fcf4:	12 80 00 16 	bne  1fd4c <__muldf3+0xd8>
   1fcf8:	80 a0 a0 02 	cmp  %g2, 2
   1fcfc:	c2 07 bf e4 	ld  [ %fp + -28 ], %g1
   1fd00:	c4 07 bf cc 	ld  [ %fp + -52 ], %g2
   1fd04:	82 18 40 02 	xor  %g1, %g2, %g1
   1fd08:	80 a0 00 01 	cmp  %g0, %g1
   1fd0c:	84 40 20 00 	addx  %g0, 0, %g2
   1fd10:	c4 27 bf e4 	st  %g2, [ %fp + -28 ]
   1fd14:	10 80 00 ad 	b  1ffc8 <__muldf3+0x354>
   1fd18:	90 10 00 16 	mov  %l6, %o0
   1fd1c:	12 bf ff f6 	bne  1fcf4 <__muldf3+0x80>
   1fd20:	80 a0 60 02 	cmp  %g1, 2
   1fd24:	02 bf ff f1 	be  1fce8 <__muldf3+0x74>
   1fd28:	03 00 00 00 	sethi  %hi(0), %g1
   1fd2c:	c4 07 bf cc 	ld  [ %fp + -52 ], %g2
   1fd30:	c2 07 bf e4 	ld  [ %fp + -28 ], %g1
   1fd34:	82 18 40 02 	xor  %g1, %g2, %g1
   1fd38:	80 a0 00 01 	cmp  %g0, %g1
   1fd3c:	84 40 20 00 	addx  %g0, 0, %g2
   1fd40:	c4 27 bf cc 	st  %g2, [ %fp + -52 ]
   1fd44:	10 80 00 a1 	b  1ffc8 <__muldf3+0x354>
   1fd48:	90 10 00 19 	mov  %i1, %o0
   1fd4c:	02 bf ff f9 	be  1fd30 <__muldf3+0xbc>
   1fd50:	c4 07 bf cc 	ld  [ %fp + -52 ], %g2
   1fd54:	e8 07 bf dc 	ld  [ %fp + -36 ], %l4
   1fd58:	e0 07 bf f4 	ld  [ %fp + -12 ], %l0
   1fd5c:	a2 10 00 10 	mov  %l0, %l1
   1fd60:	aa 10 00 14 	mov  %l4, %l5
   1fd64:	da 07 bf f0 	ld  [ %fp + -16 ], %o5
   1fd68:	c6 07 bf d8 	ld  [ %fp + -40 ], %g3
   1fd6c:	a0 10 20 00 	clr  %l0
   1fd70:	a8 10 20 00 	clr  %l4
   1fd74:	b8 10 00 0d 	mov  %o5, %i4
   1fd78:	a4 10 00 03 	mov  %g3, %l2
   1fd7c:	94 10 00 10 	mov  %l0, %o2
   1fd80:	96 10 00 11 	mov  %l1, %o3
   1fd84:	90 10 00 14 	mov  %l4, %o0
   1fd88:	40 00 01 7a 	call  20370 <__muldi3>
   1fd8c:	92 10 00 15 	mov  %l5, %o1
   1fd90:	a6 10 00 12 	mov  %l2, %l3
   1fd94:	d0 3f bf 98 	std  %o0, [ %fp + -104 ]
   1fd98:	a4 10 20 00 	clr  %l2
   1fd9c:	94 10 00 10 	mov  %l0, %o2
   1fda0:	96 10 00 11 	mov  %l1, %o3
   1fda4:	90 10 00 12 	mov  %l2, %o0
   1fda8:	40 00 01 72 	call  20370 <__muldi3>
   1fdac:	92 10 00 13 	mov  %l3, %o1
   1fdb0:	ba 10 00 1c 	mov  %i4, %i5
   1fdb4:	b4 10 00 08 	mov  %o0, %i2
   1fdb8:	b6 10 00 09 	mov  %o1, %i3
   1fdbc:	b8 10 20 00 	clr  %i4
   1fdc0:	94 10 00 1c 	mov  %i4, %o2
   1fdc4:	96 10 00 1d 	mov  %i5, %o3
   1fdc8:	90 10 00 14 	mov  %l4, %o0
   1fdcc:	40 00 01 69 	call  20370 <__muldi3>
   1fdd0:	92 10 00 15 	mov  %l5, %o1
   1fdd4:	a0 10 00 08 	mov  %o0, %l0
   1fdd8:	a2 10 00 09 	mov  %o1, %l1
   1fddc:	94 10 00 1c 	mov  %i4, %o2
   1fde0:	96 10 00 1d 	mov  %i5, %o3
   1fde4:	90 10 00 12 	mov  %l2, %o0
   1fde8:	40 00 01 62 	call  20370 <__muldi3>
   1fdec:	92 10 00 13 	mov  %l3, %o1
   1fdf0:	9a 86 c0 11 	addcc  %i3, %l1, %o5
   1fdf4:	98 46 80 10 	addx  %i2, %l0, %o4
   1fdf8:	80 a6 80 0c 	cmp  %i2, %o4
   1fdfc:	94 10 20 00 	clr  %o2
   1fe00:	18 80 00 66 	bgu  1ff98 <__muldf3+0x324>
   1fe04:	96 10 20 00 	clr  %o3
   1fe08:	80 a6 80 0c 	cmp  %i2, %o4
   1fe0c:	02 80 00 61 	be  1ff90 <__muldf3+0x31c>
   1fe10:	80 a6 c0 0d 	cmp  %i3, %o5
   1fe14:	c4 1f bf 98 	ldd  [ %fp + -104 ], %g2
   1fe18:	b6 10 20 00 	clr  %i3
   1fe1c:	b6 80 c0 1b 	addcc  %g3, %i3, %i3
   1fe20:	b4 40 80 0d 	addx  %g2, %o5, %i2
   1fe24:	80 a0 80 1a 	cmp  %g2, %i2
   1fe28:	38 80 00 58 	bgu,a   1ff88 <__muldf3+0x314>
   1fe2c:	96 82 e0 01 	inccc  %o3
   1fe30:	c6 07 bf 98 	ld  [ %fp + -104 ], %g3
   1fe34:	80 a0 c0 1a 	cmp  %g3, %i2
   1fe38:	02 80 00 50 	be  1ff78 <__muldf3+0x304>
   1fe3c:	c2 07 bf 9c 	ld  [ %fp + -100 ], %g1
   1fe40:	86 83 00 09 	addcc  %o4, %o1, %g3
   1fe44:	84 10 20 00 	clr  %g2
   1fe48:	84 40 80 08 	addx  %g2, %o0, %g2
   1fe4c:	c8 06 60 04 	ld  [ %i1 + 4 ], %g4
   1fe50:	92 82 c0 03 	addcc  %o3, %g3, %o1
   1fe54:	c2 05 a0 04 	ld  [ %l6 + 4 ], %g1
   1fe58:	90 42 80 02 	addx  %o2, %g2, %o0
   1fe5c:	82 18 40 04 	xor  %g1, %g4, %g1
   1fe60:	80 a0 00 01 	cmp  %g0, %g1
   1fe64:	c4 05 a0 08 	ld  [ %l6 + 8 ], %g2
   1fe68:	c6 06 60 08 	ld  [ %i1 + 8 ], %g3
   1fe6c:	88 40 20 00 	addx  %g0, 0, %g4
   1fe70:	84 00 80 03 	add  %g2, %g3, %g2
   1fe74:	03 07 ff ff 	sethi  %hi(0x1ffffc00), %g1
   1fe78:	94 00 a0 04 	add  %g2, 4, %o2
   1fe7c:	82 10 63 ff 	or  %g1, 0x3ff, %g1
   1fe80:	c8 26 20 04 	st  %g4, [ %i0 + 4 ]
   1fe84:	80 a2 00 01 	cmp  %o0, %g1
   1fe88:	08 80 00 18 	bleu  1fee8 <__muldf3+0x274>
   1fe8c:	88 10 00 0a 	mov  %o2, %g4
   1fe90:	96 10 00 01 	mov  %g1, %o3
   1fe94:	21 20 00 00 	sethi  %hi(0x80000000), %l0
   1fe98:	a2 10 20 00 	clr  %l1
   1fe9c:	89 2a 20 1f 	sll  %o0, 0x1f, %g4
   1fea0:	83 32 60 01 	srl  %o1, 1, %g1
   1fea4:	86 11 00 01 	or  %g4, %g1, %g3
   1fea8:	89 2e a0 1f 	sll  %i2, 0x1f, %g4
   1feac:	83 36 e0 01 	srl  %i3, 1, %g1
   1feb0:	85 32 20 01 	srl  %o0, 1, %g2
   1feb4:	9a 11 00 01 	or  %g4, %g1, %o5
   1feb8:	94 02 a0 01 	inc  %o2
   1febc:	80 8a 60 01 	btst  1, %o1
   1fec0:	99 36 a0 01 	srl  %i2, 1, %o4
   1fec4:	90 10 00 02 	mov  %g2, %o0
   1fec8:	92 10 00 03 	mov  %g3, %o1
   1fecc:	02 80 00 04 	be  1fedc <__muldf3+0x268>
   1fed0:	88 10 00 0a 	mov  %o2, %g4
   1fed4:	b4 13 00 10 	or  %o4, %l0, %i2
   1fed8:	b6 13 40 11 	or  %o5, %l1, %i3
   1fedc:	80 a2 00 0b 	cmp  %o0, %o3
   1fee0:	38 bf ff f0 	bgu,a   1fea0 <__muldf3+0x22c>
   1fee4:	89 2a 20 1f 	sll  %o0, 0x1f, %g4
   1fee8:	03 03 ff ff 	sethi  %hi(0xffffc00), %g1
   1feec:	82 10 63 ff 	or  %g1, 0x3ff, %g1	! fffffff <_end+0xffcc7ff>
   1fef0:	80 a2 00 01 	cmp  %o0, %g1
   1fef4:	18 80 00 14 	bgu  1ff44 <__muldf3+0x2d0>
   1fef8:	85 36 e0 1f 	srl  %i3, 0x1f, %g2
   1fefc:	82 06 80 1a 	add  %i2, %i2, %g1
   1ff00:	95 32 60 1f 	srl  %o1, 0x1f, %o2
   1ff04:	96 02 00 08 	add  %o0, %o0, %o3
   1ff08:	98 10 80 01 	or  %g2, %g1, %o4
   1ff0c:	84 12 80 0b 	or  %o2, %o3, %g2
   1ff10:	88 01 3f ff 	add  %g4, -1, %g4
   1ff14:	9a 06 c0 1b 	add  %i3, %i3, %o5
   1ff18:	86 02 40 09 	add  %o1, %o1, %g3
   1ff1c:	80 a6 a0 00 	cmp  %i2, 0
   1ff20:	90 10 00 02 	mov  %g2, %o0
   1ff24:	92 10 00 03 	mov  %g3, %o1
   1ff28:	b4 10 00 0c 	mov  %o4, %i2
   1ff2c:	b6 10 00 0d 	mov  %o5, %i3
   1ff30:	16 bf ff ee 	bge  1fee8 <__muldf3+0x274>
   1ff34:	94 10 00 04 	mov  %g4, %o2
   1ff38:	90 10 a0 00 	mov  %g2, %o0
   1ff3c:	10 bf ff eb 	b  1fee8 <__muldf3+0x274>
   1ff40:	92 10 e0 01 	or  %g3, 1, %o1
   1ff44:	84 0a 20 00 	and  %o0, 0, %g2
   1ff48:	86 0a 60 ff 	and  %o1, 0xff, %g3
   1ff4c:	80 a0 a0 00 	cmp  %g2, 0
   1ff50:	12 80 00 05 	bne  1ff64 <__muldf3+0x2f0>
   1ff54:	d4 26 20 08 	st  %o2, [ %i0 + 8 ]
   1ff58:	80 a0 e0 80 	cmp  %g3, 0x80
   1ff5c:	02 80 00 12 	be  1ffa4 <__muldf3+0x330>
   1ff60:	86 0a 61 00 	and  %o1, 0x100, %g3
   1ff64:	d0 3e 20 10 	std  %o0, [ %i0 + 0x10 ]
   1ff68:	82 10 20 03 	mov  3, %g1
   1ff6c:	c2 26 00 00 	st  %g1, [ %i0 ]
   1ff70:	10 80 00 16 	b  1ffc8 <__muldf3+0x354>
   1ff74:	90 10 00 18 	mov  %i0, %o0
   1ff78:	80 a0 40 1b 	cmp  %g1, %i3
   1ff7c:	08 bf ff b2 	bleu  1fe44 <__muldf3+0x1d0>
   1ff80:	86 83 00 09 	addcc  %o4, %o1, %g3
   1ff84:	96 82 e0 01 	inccc  %o3
   1ff88:	10 bf ff ae 	b  1fe40 <__muldf3+0x1cc>
   1ff8c:	94 42 a0 00 	addx  %o2, 0, %o2
   1ff90:	08 bf ff a2 	bleu  1fe18 <__muldf3+0x1a4>
   1ff94:	c4 1f bf 98 	ldd  [ %fp + -104 ], %g2
   1ff98:	94 10 20 01 	mov  1, %o2
   1ff9c:	10 bf ff 9e 	b  1fe14 <__muldf3+0x1a0>
   1ffa0:	96 10 20 00 	clr  %o3
   1ffa4:	80 90 80 03 	orcc  %g2, %g3, %g0
   1ffa8:	32 80 00 06 	bne,a   1ffc0 <__muldf3+0x34c>
   1ffac:	92 82 60 80 	addcc  %o1, 0x80, %o1
   1ffb0:	80 96 80 1b 	orcc  %i2, %i3, %g0
   1ffb4:	22 bf ff ed 	be,a   1ff68 <__muldf3+0x2f4>
   1ffb8:	d0 3e 20 10 	std  %o0, [ %i0 + 0x10 ]
   1ffbc:	92 82 60 80 	addcc  %o1, 0x80, %o1
   1ffc0:	10 bf ff e9 	b  1ff64 <__muldf3+0x2f0>
   1ffc4:	90 42 20 00 	addx  %o0, 0, %o0
   1ffc8:	40 00 01 b2 	call  20690 <__pack_d>
   1ffcc:	01 00 00 00 	nop 
   1ffd0:	01 00 00 00 	nop 
   1ffd4:	81 c7 e0 08 	ret 
   1ffd8:	81 e8 00 00 	restore 
   1ffdc:	81 c3 e0 08 	retl 
   1ffe0:	ae 03 c0 17 	add  %o7, %l7, %l7

0001ffe4 <__divdf3>:
   1ffe4:	9d e3 bf 58 	save  %sp, -168, %sp
   1ffe8:	a0 07 bf e0 	add  %fp, -32, %l0
   1ffec:	2f 00 00 4d 	sethi  %hi(0x13400), %l7
   1fff0:	7f ff ff fb 	call  1ffdc <__muldf3+0x368>
   1fff4:	ae 05 e2 a4 	add  %l7, 0x2a4, %l7	! 136a4 <preload_image+0x18>
   1fff8:	f4 3f bf b8 	std  %i2, [ %fp + -72 ]
   1fffc:	90 07 bf c0 	add  %fp, -64, %o0
   20000:	92 10 00 10 	mov  %l0, %o1
   20004:	40 00 02 25 	call  20898 <__unpack_d>
   20008:	f0 3f bf c0 	std  %i0, [ %fp + -64 ]
   2000c:	b6 07 bf c8 	add  %fp, -56, %i3
   20010:	90 07 bf b8 	add  %fp, -72, %o0
   20014:	40 00 02 21 	call  20898 <__unpack_d>
   20018:	92 10 00 1b 	mov  %i3, %o1
   2001c:	c6 07 bf e0 	ld  [ %fp + -32 ], %g3
   20020:	80 a0 e0 01 	cmp  %g3, 1
   20024:	08 80 00 6f 	bleu  201e0 <__divdf3+0x1fc>
   20028:	90 10 00 10 	mov  %l0, %o0
   2002c:	c8 07 bf c8 	ld  [ %fp + -56 ], %g4
   20030:	80 a1 20 01 	cmp  %g4, 1
   20034:	08 80 00 6b 	bleu  201e0 <__divdf3+0x1fc>
   20038:	90 10 00 1b 	mov  %i3, %o0
   2003c:	c2 07 bf e4 	ld  [ %fp + -28 ], %g1
   20040:	c4 07 bf cc 	ld  [ %fp + -52 ], %g2
   20044:	82 18 40 02 	xor  %g1, %g2, %g1
   20048:	80 a0 e0 04 	cmp  %g3, 4
   2004c:	02 80 00 0f 	be  20088 <__divdf3+0xa4>
   20050:	c2 27 bf e4 	st  %g1, [ %fp + -28 ]
   20054:	80 a0 e0 02 	cmp  %g3, 2
   20058:	02 80 00 0d 	be  2008c <__divdf3+0xa8>
   2005c:	80 a0 c0 04 	cmp  %g3, %g4
   20060:	80 a1 20 04 	cmp  %g4, 4
   20064:	02 80 00 10 	be  200a4 <__divdf3+0xc0>
   20068:	84 10 20 00 	clr  %g2
   2006c:	80 a1 20 02 	cmp  %g4, 2
   20070:	12 80 00 12 	bne  200b8 <__divdf3+0xd4>
   20074:	c4 07 bf e8 	ld  [ %fp + -24 ], %g2
   20078:	82 10 20 04 	mov  4, %g1
   2007c:	c2 27 bf e0 	st  %g1, [ %fp + -32 ]
   20080:	10 80 00 58 	b  201e0 <__divdf3+0x1fc>
   20084:	90 10 00 10 	mov  %l0, %o0
   20088:	80 a0 c0 04 	cmp  %g3, %g4
   2008c:	12 80 00 55 	bne  201e0 <__divdf3+0x1fc>
   20090:	90 10 00 10 	mov  %l0, %o0
   20094:	03 00 00 00 	sethi  %hi(0), %g1
   20098:	82 10 60 14 	or  %g1, 0x14, %g1	! 14 <_init-0x106bc>
   2009c:	10 80 00 51 	b  201e0 <__divdf3+0x1fc>
   200a0:	d0 05 c0 01 	ld  [ %l7 + %g1 ], %o0
   200a4:	86 10 20 00 	clr  %g3
   200a8:	c4 3f bf f0 	std  %g2, [ %fp + -16 ]
   200ac:	c0 27 bf e8 	clr  [ %fp + -24 ]
   200b0:	10 80 00 4c 	b  201e0 <__divdf3+0x1fc>
   200b4:	90 10 00 10 	mov  %l0, %o0
   200b8:	c2 07 bf d0 	ld  [ %fp + -48 ], %g1
   200bc:	84 20 80 01 	sub  %g2, %g1, %g2
   200c0:	f4 1f bf f0 	ldd  [ %fp + -16 ], %i2
   200c4:	f0 1f bf d8 	ldd  [ %fp + -40 ], %i0
   200c8:	80 a6 00 1a 	cmp  %i0, %i2
   200cc:	18 80 00 3b 	bgu  201b8 <__divdf3+0x1d4>
   200d0:	c4 27 bf e8 	st  %g2, [ %fp + -24 ]
   200d4:	80 a6 00 1a 	cmp  %i0, %i2
   200d8:	02 80 00 36 	be  201b0 <__divdf3+0x1cc>
   200dc:	80 a6 40 1b 	cmp  %i1, %i3
   200e0:	19 04 00 00 	sethi  %hi(0x10000000), %o4
   200e4:	9a 10 20 00 	clr  %o5
   200e8:	a4 10 20 00 	clr  %l2
   200ec:	10 80 00 0f 	b  20128 <__divdf3+0x144>
   200f0:	a6 10 20 00 	clr  %l3
   200f4:	b4 66 80 18 	subx  %i2, %i0, %i2
   200f8:	a4 14 80 0c 	or  %l2, %o4, %l2
   200fc:	a6 14 c0 0d 	or  %l3, %o5, %l3
   20100:	85 36 e0 1f 	srl  %i3, 0x1f, %g2
   20104:	82 06 80 1a 	add  %i2, %i2, %g1
   20108:	94 10 80 01 	or  %g2, %g1, %o2
   2010c:	96 06 c0 1b 	add  %i3, %i3, %o3
   20110:	98 10 00 08 	mov  %o0, %o4
   20114:	9a 10 00 09 	mov  %o1, %o5
   20118:	b4 10 00 0a 	mov  %o2, %i2
   2011c:	80 92 00 09 	orcc  %o0, %o1, %g0
   20120:	02 80 00 10 	be  20160 <__divdf3+0x17c>
   20124:	b6 10 00 0b 	mov  %o3, %i3
   20128:	85 2b 20 1f 	sll  %o4, 0x1f, %g2
   2012c:	83 33 60 01 	srl  %o5, 1, %g1
   20130:	92 10 80 01 	or  %g2, %g1, %o1
   20134:	80 a6 00 1a 	cmp  %i0, %i2
   20138:	18 bf ff f2 	bgu  20100 <__divdf3+0x11c>
   2013c:	91 33 20 01 	srl  %o4, 1, %o0
   20140:	80 a6 00 1a 	cmp  %i0, %i2
   20144:	32 bf ff ec 	bne,a   200f4 <__divdf3+0x110>
   20148:	b6 a6 c0 19 	subcc  %i3, %i1, %i3
   2014c:	80 a6 40 1b 	cmp  %i1, %i3
   20150:	18 bf ff ed 	bgu  20104 <__divdf3+0x120>
   20154:	85 36 e0 1f 	srl  %i3, 0x1f, %g2
   20158:	10 bf ff e7 	b  200f4 <__divdf3+0x110>
   2015c:	b6 a6 c0 19 	subcc  %i3, %i1, %i3
   20160:	84 0c a0 00 	and  %l2, 0, %g2
   20164:	80 a0 a0 00 	cmp  %g2, 0
   20168:	12 80 00 05 	bne  2017c <__divdf3+0x198>
   2016c:	86 0c e0 ff 	and  %l3, 0xff, %g3
   20170:	80 a0 e0 80 	cmp  %g3, 0x80
   20174:	02 80 00 05 	be  20188 <__divdf3+0x1a4>
   20178:	86 0c e1 00 	and  %l3, 0x100, %g3
   2017c:	e4 3c 20 10 	std  %l2, [ %l0 + 0x10 ]
   20180:	10 80 00 18 	b  201e0 <__divdf3+0x1fc>
   20184:	90 10 00 10 	mov  %l0, %o0
   20188:	80 90 80 03 	orcc  %g2, %g3, %g0
   2018c:	32 80 00 06 	bne,a   201a4 <__divdf3+0x1c0>
   20190:	a6 84 e0 80 	addcc  %l3, 0x80, %l3
   20194:	80 92 80 0b 	orcc  %o2, %o3, %g0
   20198:	22 bf ff fa 	be,a   20180 <__divdf3+0x19c>
   2019c:	e4 3c 20 10 	std  %l2, [ %l0 + 0x10 ]
   201a0:	a6 84 e0 80 	addcc  %l3, 0x80, %l3
   201a4:	a4 44 a0 00 	addx  %l2, 0, %l2
   201a8:	10 bf ff f6 	b  20180 <__divdf3+0x19c>
   201ac:	e4 3c 20 10 	std  %l2, [ %l0 + 0x10 ]
   201b0:	28 bf ff cd 	bleu,a   200e4 <__divdf3+0x100>
   201b4:	19 04 00 00 	sethi  %hi(0x10000000), %o4
   201b8:	9b 36 e0 1f 	srl  %i3, 0x1f, %o5
   201bc:	88 06 80 1a 	add  %i2, %i2, %g4
   201c0:	c2 04 20 08 	ld  [ %l0 + 8 ], %g1
   201c4:	84 13 40 04 	or  %o5, %g4, %g2
   201c8:	86 06 c0 1b 	add  %i3, %i3, %g3
   201cc:	82 00 7f ff 	add  %g1, -1, %g1
   201d0:	c2 24 20 08 	st  %g1, [ %l0 + 8 ]
   201d4:	b4 10 00 02 	mov  %g2, %i2
   201d8:	10 bf ff c2 	b  200e0 <__divdf3+0xfc>
   201dc:	b6 10 00 03 	mov  %g3, %i3
   201e0:	40 00 01 2c 	call  20690 <__pack_d>
   201e4:	01 00 00 00 	nop 
   201e8:	01 00 00 00 	nop 
   201ec:	81 c7 e0 08 	ret 
   201f0:	81 e8 00 00 	restore 
   201f4:	81 c3 e0 08 	retl 
   201f8:	ae 03 c0 17 	add  %o7, %l7, %l7

000201fc <__floatsidf>:
   201fc:	9d e3 bf 80 	save  %sp, -128, %sp
   20200:	85 36 20 1f 	srl  %i0, 0x1f, %g2
   20204:	2f 00 00 4d 	sethi  %hi(0x13400), %l7
   20208:	7f ff ff fb 	call  201f4 <__divdf3+0x210>
   2020c:	ae 05 e0 8c 	add  %l7, 0x8c, %l7	! 1348c <read_colormap+0x1c>
   20210:	80 a6 20 00 	cmp  %i0, 0
   20214:	12 80 00 07 	bne  20230 <__floatsidf+0x34>
   20218:	c4 27 bf e4 	st  %g2, [ %fp + -28 ]
   2021c:	82 10 20 02 	mov  2, %g1
   20220:	c2 27 bf e0 	st  %g1, [ %fp + -32 ]
   20224:	40 00 01 1b 	call  20690 <__pack_d>
   20228:	90 07 bf e0 	add  %fp, -32, %o0
   2022c:	30 80 00 36 	b,a   20304 <__floatsidf+0x108>
   20230:	82 10 20 03 	mov  3, %g1
   20234:	c2 27 bf e0 	st  %g1, [ %fp + -32 ]
   20238:	80 a0 a0 00 	cmp  %g2, 0
   2023c:	96 10 20 3c 	mov  0x3c, %o3
   20240:	02 80 00 22 	be  202c8 <__floatsidf+0xcc>
   20244:	88 10 20 3c 	mov  0x3c, %g4
   20248:	03 20 00 00 	sethi  %hi(0x80000000), %g1
   2024c:	80 a6 00 01 	cmp  %i0, %g1
   20250:	02 80 00 28 	be  202f0 <__floatsidf+0xf4>
   20254:	82 20 00 18 	neg  %i0, %g1
   20258:	85 38 60 1f 	sra  %g1, 0x1f, %g2
   2025c:	86 10 00 01 	mov  %g1, %g3
   20260:	98 10 00 02 	mov  %g2, %o4
   20264:	9a 10 00 03 	mov  %g3, %o5
   20268:	d8 3f bf f0 	std  %o4, [ %fp + -16 ]
   2026c:	03 03 ff ff 	sethi  %hi(0xffffc00), %g1
   20270:	c4 07 bf f0 	ld  [ %fp + -16 ], %g2
   20274:	82 10 63 ff 	or  %g1, 0x3ff, %g1
   20278:	80 a0 80 01 	cmp  %g2, %g1
   2027c:	38 bf ff ea 	bgu,a   20224 <__floatsidf+0x28>
   20280:	c8 27 bf e8 	st  %g4, [ %fp + -24 ]
   20284:	89 33 60 1f 	srl  %o5, 0x1f, %g4
   20288:	82 03 00 0c 	add  %o4, %o4, %g1
   2028c:	84 11 00 01 	or  %g4, %g1, %g2
   20290:	82 02 ff ff 	add  %o3, -1, %g1
   20294:	86 03 40 0d 	add  %o5, %o5, %g3
   20298:	98 10 00 02 	mov  %g2, %o4
   2029c:	96 10 00 01 	mov  %g1, %o3
   202a0:	9a 10 00 03 	mov  %g3, %o5
   202a4:	d8 3f bf f0 	std  %o4, [ %fp + -16 ]
   202a8:	03 03 ff ff 	sethi  %hi(0xffffc00), %g1
   202ac:	c4 07 bf f0 	ld  [ %fp + -16 ], %g2
   202b0:	82 10 63 ff 	or  %g1, 0x3ff, %g1
   202b4:	80 a0 80 01 	cmp  %g2, %g1
   202b8:	08 bf ff f3 	bleu  20284 <__floatsidf+0x88>
   202bc:	88 10 00 0b 	mov  %o3, %g4
   202c0:	10 bf ff d9 	b  20224 <__floatsidf+0x28>
   202c4:	c8 27 bf e8 	st  %g4, [ %fp + -24 ]
   202c8:	85 3e 20 1f 	sra  %i0, 0x1f, %g2
   202cc:	86 10 00 18 	mov  %i0, %g3
   202d0:	98 10 00 02 	mov  %g2, %o4
   202d4:	9a 10 00 03 	mov  %g3, %o5
   202d8:	d8 3f bf f0 	std  %o4, [ %fp + -16 ]
   202dc:	03 03 ff ff 	sethi  %hi(0xffffc00), %g1
   202e0:	c4 07 bf f0 	ld  [ %fp + -16 ], %g2
   202e4:	82 10 63 ff 	or  %g1, 0x3ff, %g1
   202e8:	10 bf ff e5 	b  2027c <__floatsidf+0x80>
   202ec:	80 a0 80 01 	cmp  %g2, %g1
   202f0:	03 00 00 00 	sethi  %hi(0), %g1
   202f4:	82 10 60 08 	or  %g1, 8, %g1	! 8 <_init-0x106c8>
   202f8:	c4 05 c0 01 	ld  [ %l7 + %g1 ], %g2
   202fc:	c8 27 bf e8 	st  %g4, [ %fp + -24 ]
   20300:	c1 18 80 00 	ldd  [ %g2 ], %f0
   20304:	81 c7 e0 08 	ret 
   20308:	81 e8 00 00 	restore 

0002030c <__truncdfsf2>:
   2030c:	9d e3 bf 78 	save  %sp, -136, %sp
   20310:	90 07 bf d8 	add  %fp, -40, %o0
   20314:	92 07 bf e0 	add  %fp, -32, %o1
   20318:	40 00 01 60 	call  20898 <__unpack_d>
   2031c:	f0 3f bf d8 	std  %i0, [ %fp + -40 ]
   20320:	d8 1f bf f0 	ldd  [ %fp + -16 ], %o4
   20324:	17 0f ff ff 	sethi  %hi(0x3ffffc00), %o3
   20328:	89 2b 20 02 	sll  %o4, 2, %g4
   2032c:	83 33 60 1e 	srl  %o5, 0x1e, %g1
   20330:	94 10 20 00 	clr  %o2
   20334:	96 12 e3 ff 	or  %o3, 0x3ff, %o3
   20338:	98 0b 00 0a 	and  %o4, %o2, %o4
   2033c:	9a 0b 40 0b 	and  %o5, %o3, %o5
   20340:	86 11 00 01 	or  %g4, %g1, %g3
   20344:	80 93 00 0d 	orcc  %o4, %o5, %g0
   20348:	96 10 00 03 	mov  %g3, %o3
   2034c:	d0 1f bf e0 	ldd  [ %fp + -32 ], %o0
   20350:	02 80 00 03 	be  2035c <__truncdfsf2+0x50>
   20354:	d4 07 bf e8 	ld  [ %fp + -24 ], %o2
   20358:	96 10 e0 01 	or  %g3, 1, %o3
   2035c:	40 00 00 c5 	call  20670 <__make_fp>
   20360:	01 00 00 00 	nop 
   20364:	01 00 00 00 	nop 
   20368:	81 c7 e0 08 	ret 
   2036c:	81 e8 00 00 	restore 

00020370 <__muldi3>:
   20370:	9d e3 bf 98 	save  %sp, -104, %sp
   20374:	81 80 00 19 	wr  %g0, %i1, %y
   20378:	9b 3e e0 1f 	sra  %i3, 0x1f, %o5
   2037c:	9a 0e 40 0d 	and  %i1, %o5, %o5
   20380:	82 88 20 00 	andcc  %g0, 0, %g1
   20384:	83 20 40 1b 	mulscc  %g1, %i3, %g1
   20388:	83 20 40 1b 	mulscc  %g1, %i3, %g1
   2038c:	83 20 40 1b 	mulscc  %g1, %i3, %g1
   20390:	83 20 40 1b 	mulscc  %g1, %i3, %g1
   20394:	83 20 40 1b 	mulscc  %g1, %i3, %g1
   20398:	83 20 40 1b 	mulscc  %g1, %i3, %g1
   2039c:	83 20 40 1b 	mulscc  %g1, %i3, %g1
   203a0:	83 20 40 1b 	mulscc  %g1, %i3, %g1
   203a4:	83 20 40 1b 	mulscc  %g1, %i3, %g1
   203a8:	83 20 40 1b 	mulscc  %g1, %i3, %g1
   203ac:	83 20 40 1b 	mulscc  %g1, %i3, %g1
   203b0:	83 20 40 1b 	mulscc  %g1, %i3, %g1
   203b4:	83 20 40 1b 	mulscc  %g1, %i3, %g1
   203b8:	83 20 40 1b 	mulscc  %g1, %i3, %g1
   203bc:	83 20 40 1b 	mulscc  %g1, %i3, %g1
   203c0:	83 20 40 1b 	mulscc  %g1, %i3, %g1
   203c4:	83 20 40 1b 	mulscc  %g1, %i3, %g1
   203c8:	83 20 40 1b 	mulscc  %g1, %i3, %g1
   203cc:	83 20 40 1b 	mulscc  %g1, %i3, %g1
   203d0:	83 20 40 1b 	mulscc  %g1, %i3, %g1
   203d4:	83 20 40 1b 	mulscc  %g1, %i3, %g1
   203d8:	83 20 40 1b 	mulscc  %g1, %i3, %g1
   203dc:	83 20 40 1b 	mulscc  %g1, %i3, %g1
   203e0:	83 20 40 1b 	mulscc  %g1, %i3, %g1
   203e4:	83 20 40 1b 	mulscc  %g1, %i3, %g1
   203e8:	83 20 40 1b 	mulscc  %g1, %i3, %g1
   203ec:	83 20 40 1b 	mulscc  %g1, %i3, %g1
   203f0:	83 20 40 1b 	mulscc  %g1, %i3, %g1
   203f4:	83 20 40 1b 	mulscc  %g1, %i3, %g1
   203f8:	83 20 40 1b 	mulscc  %g1, %i3, %g1
   203fc:	83 20 40 1b 	mulscc  %g1, %i3, %g1
   20400:	83 20 40 1b 	mulscc  %g1, %i3, %g1
   20404:	83 20 60 00 	mulscc  %g1, 0, %g1
   20408:	a0 00 40 0d 	add  %g1, %o5, %l0
   2040c:	85 40 00 00 	rd  %y, %g2
   20410:	92 10 00 1a 	mov  %i2, %o1
   20414:	a2 10 00 02 	mov  %g2, %l1
   20418:	40 00 01 6b 	call  209c4 <.umul>
   2041c:	90 10 00 19 	mov  %i1, %o0
   20420:	a4 10 00 08 	mov  %o0, %l2
   20424:	90 10 00 18 	mov  %i0, %o0
   20428:	40 00 01 67 	call  209c4 <.umul>
   2042c:	92 10 00 1b 	mov  %i3, %o1
   20430:	a4 04 80 08 	add  %l2, %o0, %l2
   20434:	b2 10 00 11 	mov  %l1, %i1
   20438:	81 c7 e0 08 	ret 
   2043c:	91 ec 80 10 	restore  %l2, %l0, %o0

00020440 <__pack_f>:
   20440:	9c 03 bf 90 	add  %sp, -112, %sp
   20444:	c2 02 00 00 	ld  [ %o0 ], %g1
   20448:	80 a0 60 01 	cmp  %g1, 1
   2044c:	c8 02 20 0c 	ld  [ %o0 + 0xc ], %g4
   20450:	c6 02 20 04 	ld  [ %o0 + 4 ], %g3
   20454:	18 80 00 06 	bgu  2046c <__pack_f+0x2c>
   20458:	9a 10 20 00 	clr  %o5
   2045c:	03 00 04 00 	sethi  %hi(0x100000), %g1
   20460:	88 11 00 01 	or  %g4, %g1, %g4
   20464:	10 80 00 42 	b  2056c <__pack_f+0x12c>
   20468:	9a 10 20 ff 	mov  0xff, %o5
   2046c:	80 a0 60 04 	cmp  %g1, 4
   20470:	12 80 00 05 	bne  20484 <__pack_f+0x44>
   20474:	80 a0 60 02 	cmp  %g1, 2
   20478:	9a 10 20 ff 	mov  0xff, %o5
   2047c:	10 80 00 3c 	b  2056c <__pack_f+0x12c>
   20480:	88 10 20 00 	clr  %g4
   20484:	22 80 00 3a 	be,a   2056c <__pack_f+0x12c>
   20488:	88 10 20 00 	clr  %g4
   2048c:	80 a1 20 00 	cmp  %g4, 0
   20490:	02 80 00 38 	be  20570 <__pack_f+0x130>
   20494:	84 0b 60 ff 	and  %o5, 0xff, %g2
   20498:	d0 02 20 08 	ld  [ %o0 + 8 ], %o0
   2049c:	80 a2 3f 82 	cmp  %o0, -126
   204a0:	16 80 00 14 	bge  204f0 <__pack_f+0xb0>
   204a4:	80 a2 20 7f 	cmp  %o0, 0x7f
   204a8:	82 10 3f 82 	mov  -126, %g1
   204ac:	84 20 40 08 	sub  %g1, %o0, %g2
   204b0:	80 a0 a0 19 	cmp  %g2, 0x19
   204b4:	04 80 00 1d 	ble  20528 <__pack_f+0xe8>
   204b8:	82 10 20 01 	mov  1, %g1
   204bc:	88 10 20 00 	clr  %g4
   204c0:	82 09 20 7f 	and  %g4, 0x7f, %g1
   204c4:	80 a0 60 40 	cmp  %g1, 0x40
   204c8:	02 80 00 20 	be  20548 <__pack_f+0x108>
   204cc:	80 89 20 80 	btst  0x80, %g4
   204d0:	88 01 20 3f 	add  %g4, 0x3f, %g4
   204d4:	03 0f ff ff 	sethi  %hi(0x3ffffc00), %g1
   204d8:	82 10 63 ff 	or  %g1, 0x3ff, %g1	! 3fffffff <_end+0x3ffcc7ff>
   204dc:	80 a1 00 01 	cmp  %g4, %g1
   204e0:	38 80 00 02 	bgu,a   204e8 <__pack_f+0xa8>
   204e4:	9a 10 20 01 	mov  1, %o5
   204e8:	10 80 00 21 	b  2056c <__pack_f+0x12c>
   204ec:	89 31 20 07 	srl  %g4, 7, %g4
   204f0:	14 bf ff e3 	bg  2047c <__pack_f+0x3c>
   204f4:	9a 10 20 ff 	mov  0xff, %o5
   204f8:	82 09 20 7f 	and  %g4, 0x7f, %g1
   204fc:	80 a0 60 40 	cmp  %g1, 0x40
   20500:	02 80 00 16 	be  20558 <__pack_f+0x118>
   20504:	9a 02 20 7f 	add  %o0, 0x7f, %o5
   20508:	88 01 20 3f 	add  %g4, 0x3f, %g4
   2050c:	80 a1 20 00 	cmp  %g4, 0
   20510:	36 80 00 17 	bge,a   2056c <__pack_f+0x12c>
   20514:	89 31 20 07 	srl  %g4, 7, %g4
   20518:	89 31 20 01 	srl  %g4, 1, %g4
   2051c:	9a 03 60 01 	inc  %o5
   20520:	10 80 00 13 	b  2056c <__pack_f+0x12c>
   20524:	89 31 20 07 	srl  %g4, 7, %g4
   20528:	83 28 40 02 	sll  %g1, %g2, %g1
   2052c:	82 00 7f ff 	add  %g1, -1, %g1
   20530:	82 08 40 04 	and  %g1, %g4, %g1
   20534:	80 a0 00 01 	cmp  %g0, %g1
   20538:	85 31 00 02 	srl  %g4, %g2, %g2
   2053c:	82 40 20 00 	addx  %g0, 0, %g1
   20540:	10 bf ff e0 	b  204c0 <__pack_f+0x80>
   20544:	88 10 80 01 	or  %g2, %g1, %g4
   20548:	32 bf ff e3 	bne,a   204d4 <__pack_f+0x94>
   2054c:	88 01 20 40 	add  %g4, 0x40, %g4
   20550:	10 bf ff e2 	b  204d8 <__pack_f+0x98>
   20554:	03 0f ff ff 	sethi  %hi(0x3ffffc00), %g1
   20558:	80 89 20 80 	btst  0x80, %g4
   2055c:	32 bf ff ec 	bne,a   2050c <__pack_f+0xcc>
   20560:	88 01 20 40 	add  %g4, 0x40, %g4
   20564:	10 bf ff eb 	b  20510 <__pack_f+0xd0>
   20568:	80 a1 20 00 	cmp  %g4, 0
   2056c:	84 0b 60 ff 	and  %o5, 0xff, %g2
   20570:	03 3f e0 00 	sethi  %hi(0xff800000), %g1
   20574:	82 29 00 01 	andn  %g4, %g1, %g1
   20578:	85 28 a0 17 	sll  %g2, 0x17, %g2
   2057c:	82 10 40 02 	or  %g1, %g2, %g1
   20580:	87 28 e0 1f 	sll  %g3, 0x1f, %g3
   20584:	82 10 40 03 	or  %g1, %g3, %g1
   20588:	c2 23 a0 64 	st  %g1, [ %sp + 0x64 ]
   2058c:	c1 03 a0 64 	ld  [ %sp + 0x64 ], %f0
   20590:	81 c3 e0 08 	retl 
   20594:	9c 23 bf 90 	sub  %sp, -112, %sp

00020598 <__unpack_f>:
   20598:	c4 02 00 00 	ld  [ %o0 ], %g2
   2059c:	87 30 a0 1f 	srl  %g2, 0x1f, %g3
   205a0:	89 30 a0 17 	srl  %g2, 0x17, %g4
   205a4:	c6 22 60 04 	st  %g3, [ %o1 + 4 ]
   205a8:	03 3f e0 00 	sethi  %hi(0xff800000), %g1
   205ac:	86 89 20 ff 	andcc  %g4, 0xff, %g3
   205b0:	12 80 00 07 	bne  205cc <__unpack_f+0x34>
   205b4:	9a 28 80 01 	andn  %g2, %g1, %o5
   205b8:	80 a3 60 00 	cmp  %o5, 0
   205bc:	12 80 00 0e 	bne  205f4 <__unpack_f+0x5c>
   205c0:	82 10 20 02 	mov  2, %g1
   205c4:	10 80 00 29 	b  20668 <__unpack_f+0xd0>
   205c8:	c2 22 40 00 	st  %g1, [ %o1 ]
   205cc:	80 a0 e0 ff 	cmp  %g3, 0xff
   205d0:	02 80 00 1a 	be  20638 <__unpack_f+0xa0>
   205d4:	83 2b 60 07 	sll  %o5, 7, %g1
   205d8:	05 10 00 00 	sethi  %hi(0x40000000), %g2
   205dc:	82 10 40 02 	or  %g1, %g2, %g1
   205e0:	86 00 ff 81 	add  %g3, -127, %g3
   205e4:	c2 22 60 0c 	st  %g1, [ %o1 + 0xc ]
   205e8:	c6 22 60 08 	st  %g3, [ %o1 + 8 ]
   205ec:	10 bf ff f6 	b  205c4 <__unpack_f+0x2c>
   205f0:	82 10 20 03 	mov  3, %g1
   205f4:	84 10 20 03 	mov  3, %g2
   205f8:	03 0f ff ff 	sethi  %hi(0x3ffffc00), %g1
   205fc:	9b 2b 60 07 	sll  %o5, 7, %o5
   20600:	82 10 63 ff 	or  %g1, 0x3ff, %g1
   20604:	c4 22 40 00 	st  %g2, [ %o1 ]
   20608:	80 a3 40 01 	cmp  %o5, %g1
   2060c:	84 10 3f 82 	mov  -126, %g2
   20610:	18 80 00 07 	bgu  2062c <__unpack_f+0x94>
   20614:	86 10 3f 82 	mov  -126, %g3
   20618:	9a 03 40 0d 	add  %o5, %o5, %o5
   2061c:	84 00 bf ff 	add  %g2, -1, %g2
   20620:	80 a3 40 01 	cmp  %o5, %g1
   20624:	08 bf ff fd 	bleu  20618 <__unpack_f+0x80>
   20628:	86 10 00 02 	mov  %g2, %g3
   2062c:	da 22 60 0c 	st  %o5, [ %o1 + 0xc ]
   20630:	10 80 00 0e 	b  20668 <__unpack_f+0xd0>
   20634:	c6 22 60 08 	st  %g3, [ %o1 + 8 ]
   20638:	80 a3 60 00 	cmp  %o5, 0
   2063c:	02 bf ff e2 	be  205c4 <__unpack_f+0x2c>
   20640:	82 10 20 04 	mov  4, %g1
   20644:	03 00 04 00 	sethi  %hi(0x100000), %g1
   20648:	80 8b 40 01 	btst  %o5, %g1
   2064c:	22 80 00 06 	be,a   20664 <__unpack_f+0xcc>
   20650:	c0 22 40 00 	clr  [ %o1 ]
   20654:	82 10 20 01 	mov  1, %g1
   20658:	c2 22 40 00 	st  %g1, [ %o1 ]
   2065c:	10 80 00 03 	b  20668 <__unpack_f+0xd0>
   20660:	da 22 60 0c 	st  %o5, [ %o1 + 0xc ]
   20664:	da 22 60 0c 	st  %o5, [ %o1 + 0xc ]
   20668:	81 c3 e0 08 	retl 
   2066c:	01 00 00 00 	nop 

00020670 <__make_fp>:
   20670:	9d e3 bf 88 	save  %sp, -120, %sp
   20674:	f0 3f bf e8 	std  %i0, [ %fp + -24 ]
   20678:	f4 3f bf f0 	std  %i2, [ %fp + -16 ]
   2067c:	7f ff ff 71 	call  20440 <__pack_f>
   20680:	90 07 bf e8 	add  %fp, -24, %o0
   20684:	01 00 00 00 	nop 
   20688:	81 c7 e0 08 	ret 
   2068c:	81 e8 00 00 	restore 

00020690 <__pack_d>:
   20690:	9d e3 bf 90 	save  %sp, -112, %sp
   20694:	c2 06 00 00 	ld  [ %i0 ], %g1
   20698:	80 a0 60 01 	cmp  %g1, 1
   2069c:	e0 1e 20 10 	ldd  [ %i0 + 0x10 ], %l0
   206a0:	e6 06 20 04 	ld  [ %i0 + 4 ], %l3
   206a4:	18 80 00 08 	bgu  206c4 <__pack_d+0x34>
   206a8:	a4 10 20 00 	clr  %l2
   206ac:	05 00 02 00 	sethi  %hi(0x80000), %g2
   206b0:	86 10 20 00 	clr  %g3
   206b4:	a0 14 00 02 	or  %l0, %g2, %l0
   206b8:	a2 14 40 03 	or  %l1, %g3, %l1
   206bc:	10 80 00 64 	b  2084c <__pack_d+0x1bc>
   206c0:	a4 10 27 ff 	mov  0x7ff, %l2
   206c4:	80 a0 60 04 	cmp  %g1, 4
   206c8:	12 80 00 06 	bne  206e0 <__pack_d+0x50>
   206cc:	80 a0 60 02 	cmp  %g1, 2
   206d0:	a4 10 27 ff 	mov  0x7ff, %l2
   206d4:	a0 10 20 00 	clr  %l0
   206d8:	10 80 00 5d 	b  2084c <__pack_d+0x1bc>
   206dc:	a2 10 20 00 	clr  %l1
   206e0:	22 bf ff fe 	be,a   206d8 <__pack_d+0x48>
   206e4:	a0 10 20 00 	clr  %l0
   206e8:	80 94 00 11 	orcc  %l0, %l1, %g0
   206ec:	02 80 00 59 	be  20850 <__pack_d+0x1c0>
   206f0:	96 0c a7 ff 	and  %l2, 0x7ff, %o3
   206f4:	d4 06 20 08 	ld  [ %i0 + 8 ], %o2
   206f8:	80 a2 bc 02 	cmp  %o2, -1022
   206fc:	16 80 00 1e 	bge  20774 <__pack_d+0xe4>
   20700:	80 a2 a3 ff 	cmp  %o2, 0x3ff
   20704:	82 10 3c 02 	mov  -1022, %g1
   20708:	b0 20 40 0a 	sub  %g1, %o2, %i0
   2070c:	80 a6 20 38 	cmp  %i0, 0x38
   20710:	04 80 00 3c 	ble  20800 <__pack_d+0x170>
   20714:	90 10 20 00 	clr  %o0
   20718:	a0 10 20 00 	clr  %l0
   2071c:	a2 10 20 00 	clr  %l1
   20720:	84 0c 20 00 	and  %l0, 0, %g2
   20724:	80 a0 a0 00 	cmp  %g2, 0
   20728:	12 80 00 05 	bne  2073c <__pack_d+0xac>
   2072c:	86 0c 60 ff 	and  %l1, 0xff, %g3
   20730:	80 a0 e0 80 	cmp  %g3, 0x80
   20734:	02 80 00 29 	be  207d8 <__pack_d+0x148>
   20738:	86 0c 61 00 	and  %l1, 0x100, %g3
   2073c:	a2 84 60 7f 	addcc  %l1, 0x7f, %l1
   20740:	a0 44 20 00 	addx  %l0, 0, %l0
   20744:	03 03 ff ff 	sethi  %hi(0xffffc00), %g1
   20748:	82 10 63 ff 	or  %g1, 0x3ff, %g1	! fffffff <_end+0xffcc7ff>
   2074c:	80 a4 00 01 	cmp  %l0, %g1
   20750:	38 80 00 02 	bgu,a   20758 <__pack_d+0xc8>
   20754:	a4 10 20 01 	mov  1, %l2
   20758:	89 2c 20 18 	sll  %l0, 0x18, %g4
   2075c:	83 34 60 08 	srl  %l1, 8, %g1
   20760:	86 11 00 01 	or  %g4, %g1, %g3
   20764:	85 34 20 08 	srl  %l0, 8, %g2
   20768:	a0 10 00 02 	mov  %g2, %l0
   2076c:	10 80 00 38 	b  2084c <__pack_d+0x1bc>
   20770:	a2 10 00 03 	mov  %g3, %l1
   20774:	14 bf ff d8 	bg  206d4 <__pack_d+0x44>
   20778:	a4 10 27 ff 	mov  0x7ff, %l2
   2077c:	84 0c 20 00 	and  %l0, 0, %g2
   20780:	86 0c 60 ff 	and  %l1, 0xff, %g3
   20784:	80 a0 a0 00 	cmp  %g2, 0
   20788:	12 80 00 05 	bne  2079c <__pack_d+0x10c>
   2078c:	a4 02 a3 ff 	add  %o2, 0x3ff, %l2
   20790:	80 a0 e0 80 	cmp  %g3, 0x80
   20794:	02 80 00 16 	be  207ec <__pack_d+0x15c>
   20798:	86 0c 61 00 	and  %l1, 0x100, %g3
   2079c:	a2 84 60 7f 	addcc  %l1, 0x7f, %l1
   207a0:	a0 44 20 00 	addx  %l0, 0, %l0
   207a4:	03 07 ff ff 	sethi  %hi(0x1ffffc00), %g1
   207a8:	82 10 63 ff 	or  %g1, 0x3ff, %g1	! 1fffffff <_end+0x1ffcc7ff>
   207ac:	80 a4 00 01 	cmp  %l0, %g1
   207b0:	08 bf ff eb 	bleu  2075c <__pack_d+0xcc>
   207b4:	89 2c 20 18 	sll  %l0, 0x18, %g4
   207b8:	89 2c 20 1f 	sll  %l0, 0x1f, %g4
   207bc:	83 34 60 01 	srl  %l1, 1, %g1
   207c0:	86 11 00 01 	or  %g4, %g1, %g3
   207c4:	85 34 20 01 	srl  %l0, 1, %g2
   207c8:	a0 10 00 02 	mov  %g2, %l0
   207cc:	a2 10 00 03 	mov  %g3, %l1
   207d0:	10 bf ff e2 	b  20758 <__pack_d+0xc8>
   207d4:	a4 04 a0 01 	inc  %l2
   207d8:	80 90 80 03 	orcc  %g2, %g3, %g0
   207dc:	02 bf ff db 	be  20748 <__pack_d+0xb8>
   207e0:	03 03 ff ff 	sethi  %hi(0xffffc00), %g1
   207e4:	10 bf ff d7 	b  20740 <__pack_d+0xb0>
   207e8:	a2 84 60 80 	addcc  %l1, 0x80, %l1
   207ec:	80 90 80 03 	orcc  %g2, %g3, %g0
   207f0:	02 bf ff ee 	be  207a8 <__pack_d+0x118>
   207f4:	03 07 ff ff 	sethi  %hi(0x1ffffc00), %g1
   207f8:	10 bf ff ea 	b  207a0 <__pack_d+0x110>
   207fc:	a2 84 60 80 	addcc  %l1, 0x80, %l1
   20800:	92 10 20 01 	mov  1, %o1
   20804:	40 00 00 c0 	call  20b04 <__ashldi3>
   20808:	94 10 00 18 	mov  %i0, %o2
   2080c:	92 82 7f ff 	addcc  %o1, -1, %o1
   20810:	90 42 3f ff 	addx  %o0, -1, %o0
   20814:	90 0a 00 10 	and  %o0, %l0, %o0
   20818:	92 0a 40 11 	and  %o1, %l1, %o1
   2081c:	80 92 00 09 	orcc  %o0, %o1, %g0
   20820:	02 80 00 03 	be  2082c <__pack_d+0x19c>
   20824:	a8 10 20 00 	clr  %l4
   20828:	a8 10 20 01 	mov  1, %l4
   2082c:	90 10 00 10 	mov  %l0, %o0
   20830:	92 10 00 11 	mov  %l1, %o1
   20834:	40 00 00 9e 	call  20aac <__lshrdi3>
   20838:	94 10 00 18 	mov  %i0, %o2
   2083c:	84 10 20 00 	clr  %g2
   20840:	a0 12 00 02 	or  %o0, %g2, %l0
   20844:	10 bf ff b7 	b  20720 <__pack_d+0x90>
   20848:	a2 12 40 14 	or  %o1, %l4, %l1
   2084c:	96 0c a7 ff 	and  %l2, 0x7ff, %o3
   20850:	05 00 03 ff 	sethi  %hi(0xffc00), %g2
   20854:	9a 0c e0 01 	and  %l3, 1, %o5
   20858:	95 2a e0 14 	sll  %o3, 0x14, %o2
   2085c:	84 10 a3 ff 	or  %g2, 0x3ff, %g2
   20860:	86 10 3f ff 	mov  -1, %g3
   20864:	99 2b 60 1f 	sll  %o5, 0x1f, %o4
   20868:	96 10 20 00 	clr  %o3
   2086c:	84 0c 00 02 	and  %l0, %g2, %g2
   20870:	86 0c 40 03 	and  %l1, %g3, %g3
   20874:	9a 10 20 00 	clr  %o5
   20878:	84 10 80 0a 	or  %g2, %o2, %g2
   2087c:	86 10 c0 0b 	or  %g3, %o3, %g3
   20880:	84 10 80 0c 	or  %g2, %o4, %g2
   20884:	86 10 c0 0d 	or  %g3, %o5, %g3
   20888:	c4 3f bf f0 	std  %g2, [ %fp + -16 ]
   2088c:	c1 1f bf f0 	ldd  [ %fp + -16 ], %f0
   20890:	81 c7 e0 08 	ret 
   20894:	81 e8 00 00 	restore 

00020898 <__unpack_d>:
   20898:	d4 1a 00 00 	ldd  [ %o0 ], %o2
   2089c:	9b 32 a0 1f 	srl  %o2, 0x1f, %o5
   208a0:	82 0b 60 01 	and  %o5, 1, %g1
   208a4:	19 00 03 ff 	sethi  %hi(0xffc00), %o4
   208a8:	87 32 a0 14 	srl  %o2, 0x14, %g3
   208ac:	98 13 23 ff 	or  %o4, 0x3ff, %o4
   208b0:	9a 10 3f ff 	mov  -1, %o5
   208b4:	c2 22 60 04 	st  %g1, [ %o1 + 4 ]
   208b8:	94 0a 80 0c 	and  %o2, %o4, %o2
   208bc:	90 88 e7 ff 	andcc  %g3, 0x7ff, %o0
   208c0:	12 80 00 07 	bne  208dc <__unpack_d+0x44>
   208c4:	96 0a c0 0d 	and  %o3, %o5, %o3
   208c8:	80 92 80 0b 	orcc  %o2, %o3, %g0
   208cc:	12 80 00 13 	bne  20918 <__unpack_d+0x80>
   208d0:	82 10 20 02 	mov  2, %g1
   208d4:	10 80 00 3a 	b  209bc <__unpack_d+0x124>
   208d8:	c2 22 40 00 	st  %g1, [ %o1 ]
   208dc:	80 a2 27 ff 	cmp  %o0, 0x7ff
   208e0:	02 80 00 2b 	be  2098c <__unpack_d+0xf4>
   208e4:	89 32 e0 18 	srl  %o3, 0x18, %g4
   208e8:	83 2a a0 08 	sll  %o2, 8, %g1
   208ec:	84 11 00 01 	or  %g4, %g1, %g2
   208f0:	87 2a e0 08 	sll  %o3, 8, %g3
   208f4:	19 04 00 00 	sethi  %hi(0x10000000), %o4
   208f8:	9a 10 20 00 	clr  %o5
   208fc:	84 10 80 0c 	or  %g2, %o4, %g2
   20900:	86 10 c0 0d 	or  %g3, %o5, %g3
   20904:	88 02 3c 01 	add  %o0, -1023, %g4
   20908:	c4 3a 60 10 	std  %g2, [ %o1 + 0x10 ]
   2090c:	c8 22 60 08 	st  %g4, [ %o1 + 8 ]
   20910:	10 bf ff f1 	b  208d4 <__unpack_d+0x3c>
   20914:	82 10 20 03 	mov  3, %g1
   20918:	89 32 e0 18 	srl  %o3, 0x18, %g4
   2091c:	83 2a a0 08 	sll  %o2, 8, %g1
   20920:	84 11 00 01 	or  %g4, %g1, %g2
   20924:	03 03 ff ff 	sethi  %hi(0xffffc00), %g1
   20928:	82 10 63 ff 	or  %g1, 0x3ff, %g1	! fffffff <_end+0xffcc7ff>
   2092c:	87 2a e0 08 	sll  %o3, 8, %g3
   20930:	88 10 20 03 	mov  3, %g4
   20934:	80 a0 80 01 	cmp  %g2, %g1
   20938:	94 10 00 02 	mov  %g2, %o2
   2093c:	96 10 00 03 	mov  %g3, %o3
   20940:	c8 22 40 00 	st  %g4, [ %o1 ]
   20944:	9a 10 3c 02 	mov  -1022, %o5
   20948:	18 80 00 0e 	bgu  20980 <__unpack_d+0xe8>
   2094c:	82 10 3c 02 	mov  -1022, %g1
   20950:	82 02 80 0a 	add  %o2, %o2, %g1
   20954:	89 32 e0 1f 	srl  %o3, 0x1f, %g4
   20958:	84 11 00 01 	or  %g4, %g1, %g2
   2095c:	03 03 ff ff 	sethi  %hi(0xffffc00), %g1
   20960:	82 10 63 ff 	or  %g1, 0x3ff, %g1	! fffffff <_end+0xffcc7ff>
   20964:	86 02 c0 0b 	add  %o3, %o3, %g3
   20968:	9a 03 7f ff 	add  %o5, -1, %o5
   2096c:	80 a0 80 01 	cmp  %g2, %g1
   20970:	94 10 00 02 	mov  %g2, %o2
   20974:	96 10 00 03 	mov  %g3, %o3
   20978:	08 bf ff f6 	bleu  20950 <__unpack_d+0xb8>
   2097c:	82 10 00 0d 	mov  %o5, %g1
   20980:	d4 3a 60 10 	std  %o2, [ %o1 + 0x10 ]
   20984:	10 80 00 0e 	b  209bc <__unpack_d+0x124>
   20988:	c2 22 60 08 	st  %g1, [ %o1 + 8 ]
   2098c:	80 92 80 0b 	orcc  %o2, %o3, %g0
   20990:	02 bf ff d1 	be  208d4 <__unpack_d+0x3c>
   20994:	82 10 20 04 	mov  4, %g1
   20998:	87 32 a0 13 	srl  %o2, 0x13, %g3
   2099c:	80 88 e0 01 	btst  1, %g3
   209a0:	22 80 00 06 	be,a   209b8 <__unpack_d+0x120>
   209a4:	c0 22 40 00 	clr  [ %o1 ]
   209a8:	82 10 20 01 	mov  1, %g1
   209ac:	c2 22 40 00 	st  %g1, [ %o1 ]
   209b0:	10 80 00 03 	b  209bc <__unpack_d+0x124>
   209b4:	d4 3a 60 10 	std  %o2, [ %o1 + 0x10 ]
   209b8:	d4 3a 60 10 	std  %o2, [ %o1 + 0x10 ]
   209bc:	81 c3 e0 08 	retl 
   209c0:	01 00 00 00 	nop 

000209c4 <.umul>:
   209c4:	98 12 00 09 	or  %o0, %o1, %o4
   209c8:	81 82 00 00 	mov  %o0, %y
   209cc:	9a ab 2f ff 	andncc  %o4, 0xfff, %o5
   209d0:	02 80 00 25 	be  20a64 <mul_shortway>
   209d4:	98 88 00 00 	andcc  %g0, %g0, %o4
   209d8:	99 23 00 09 	mulscc  %o4, %o1, %o4
   209dc:	99 23 00 09 	mulscc  %o4, %o1, %o4
   209e0:	99 23 00 09 	mulscc  %o4, %o1, %o4
   209e4:	99 23 00 09 	mulscc  %o4, %o1, %o4
   209e8:	99 23 00 09 	mulscc  %o4, %o1, %o4
   209ec:	99 23 00 09 	mulscc  %o4, %o1, %o4
   209f0:	99 23 00 09 	mulscc  %o4, %o1, %o4
   209f4:	99 23 00 09 	mulscc  %o4, %o1, %o4
   209f8:	99 23 00 09 	mulscc  %o4, %o1, %o4
   209fc:	99 23 00 09 	mulscc  %o4, %o1, %o4
   20a00:	99 23 00 09 	mulscc  %o4, %o1, %o4
   20a04:	99 23 00 09 	mulscc  %o4, %o1, %o4
   20a08:	99 23 00 09 	mulscc  %o4, %o1, %o4
   20a0c:	99 23 00 09 	mulscc  %o4, %o1, %o4
   20a10:	99 23 00 09 	mulscc  %o4, %o1, %o4
   20a14:	99 23 00 09 	mulscc  %o4, %o1, %o4
   20a18:	99 23 00 09 	mulscc  %o4, %o1, %o4
   20a1c:	99 23 00 09 	mulscc  %o4, %o1, %o4
   20a20:	99 23 00 09 	mulscc  %o4, %o1, %o4
   20a24:	99 23 00 09 	mulscc  %o4, %o1, %o4
   20a28:	99 23 00 09 	mulscc  %o4, %o1, %o4
   20a2c:	99 23 00 09 	mulscc  %o4, %o1, %o4
   20a30:	99 23 00 09 	mulscc  %o4, %o1, %o4
   20a34:	99 23 00 09 	mulscc  %o4, %o1, %o4
   20a38:	99 23 00 09 	mulscc  %o4, %o1, %o4
   20a3c:	99 23 00 09 	mulscc  %o4, %o1, %o4
   20a40:	99 23 00 09 	mulscc  %o4, %o1, %o4
   20a44:	99 23 00 09 	mulscc  %o4, %o1, %o4
   20a48:	99 23 00 09 	mulscc  %o4, %o1, %o4
   20a4c:	99 23 00 09 	mulscc  %o4, %o1, %o4
   20a50:	99 23 00 09 	mulscc  %o4, %o1, %o4
   20a54:	99 23 00 09 	mulscc  %o4, %o1, %o4
   20a58:	99 23 00 00 	mulscc  %o4, %g0, %o4
   20a5c:	81 c3 e0 08 	retl 
   20a60:	91 40 00 00 	rd  %y, %o0

00020a64 <mul_shortway>:
   20a64:	99 23 00 09 	mulscc  %o4, %o1, %o4
   20a68:	99 23 00 09 	mulscc  %o4, %o1, %o4
   20a6c:	99 23 00 09 	mulscc  %o4, %o1, %o4
   20a70:	99 23 00 09 	mulscc  %o4, %o1, %o4
   20a74:	99 23 00 09 	mulscc  %o4, %o1, %o4
   20a78:	99 23 00 09 	mulscc  %o4, %o1, %o4
   20a7c:	99 23 00 09 	mulscc  %o4, %o1, %o4
   20a80:	99 23 00 09 	mulscc  %o4, %o1, %o4
   20a84:	99 23 00 09 	mulscc  %o4, %o1, %o4
   20a88:	99 23 00 09 	mulscc  %o4, %o1, %o4
   20a8c:	99 23 00 09 	mulscc  %o4, %o1, %o4
   20a90:	99 23 00 09 	mulscc  %o4, %o1, %o4
   20a94:	99 23 00 00 	mulscc  %o4, %g0, %o4
   20a98:	9b 40 00 00 	rd  %y, %o5
   20a9c:	99 2b 20 0c 	sll  %o4, 0xc, %o4
   20aa0:	9b 33 60 14 	srl  %o5, 0x14, %o5
   20aa4:	81 c3 e0 08 	retl 
   20aa8:	90 13 40 0c 	or  %o5, %o4, %o0

00020aac <__lshrdi3>:
   20aac:	82 10 20 20 	mov  0x20, %g1
   20ab0:	84 10 00 08 	mov  %o0, %g2
   20ab4:	86 10 00 09 	mov  %o1, %g3
   20ab8:	80 a2 a0 00 	cmp  %o2, 0
   20abc:	02 80 00 10 	be  20afc <__lshrdi3+0x50>
   20ac0:	82 20 40 0a 	sub  %g1, %o2, %g1
   20ac4:	96 20 00 01 	neg  %g1, %o3
   20ac8:	80 a0 60 00 	cmp  %g1, 0
   20acc:	89 30 c0 0a 	srl  %g3, %o2, %g4
   20ad0:	04 80 00 07 	ble  20aec <__lshrdi3+0x40>
   20ad4:	83 28 80 01 	sll  %g2, %g1, %g1
   20ad8:	99 30 80 0a 	srl  %g2, %o2, %o4
   20adc:	9a 11 00 01 	or  %g4, %g1, %o5
   20ae0:	90 10 00 0c 	mov  %o4, %o0
   20ae4:	10 80 00 06 	b  20afc <__lshrdi3+0x50>
   20ae8:	92 10 00 0d 	mov  %o5, %o1
   20aec:	98 10 20 00 	clr  %o4
   20af0:	9b 30 80 0b 	srl  %g2, %o3, %o5
   20af4:	90 10 00 0c 	mov  %o4, %o0
   20af8:	92 10 00 0d 	mov  %o5, %o1
   20afc:	81 c3 e0 08 	retl 
   20b00:	01 00 00 00 	nop 

00020b04 <__ashldi3>:
   20b04:	82 10 20 20 	mov  0x20, %g1	! 20 <_init-0x106b0>
   20b08:	84 10 00 08 	mov  %o0, %g2
   20b0c:	86 10 00 09 	mov  %o1, %g3
   20b10:	80 a2 a0 00 	cmp  %o2, 0
   20b14:	02 80 00 10 	be  20b54 <__ashldi3+0x50>
   20b18:	82 20 40 0a 	sub  %g1, %o2, %g1
   20b1c:	96 20 00 01 	neg  %g1, %o3
   20b20:	80 a0 60 00 	cmp  %g1, 0
   20b24:	89 28 80 0a 	sll  %g2, %o2, %g4
   20b28:	04 80 00 07 	ble  20b44 <__ashldi3+0x40>
   20b2c:	83 30 c0 01 	srl  %g3, %g1, %g1
   20b30:	9b 28 c0 0a 	sll  %g3, %o2, %o5
   20b34:	98 11 00 01 	or  %g4, %g1, %o4
   20b38:	90 10 00 0c 	mov  %o4, %o0
   20b3c:	10 80 00 06 	b  20b54 <__ashldi3+0x50>
   20b40:	92 10 00 0d 	mov  %o5, %o1
   20b44:	9a 10 20 00 	clr  %o5
   20b48:	99 28 c0 0b 	sll  %g3, %o3, %o4
   20b4c:	90 10 00 0c 	mov  %o4, %o0
   20b50:	92 10 00 0d 	mov  %o5, %o1
   20b54:	81 c3 e0 08 	retl 
   20b58:	01 00 00 00 	nop 
   20b5c:	81 c3 e0 08 	retl 
   20b60:	ae 03 c0 17 	add  %o7, %l7, %l7

00020b64 <__libc_csu_init>:
   20b64:	9d e3 bf 90 	save  %sp, -112, %sp
   20b68:	2f 00 00 4a 	sethi  %hi(0x12800), %l7
   20b6c:	7f ff ff fc 	call  20b5c <__ashldi3+0x58>
   20b70:	ae 05 e3 28 	add  %l7, 0x328, %l7	! 12b28 <read_byte+0x38>
   20b74:	7f ff be d7 	call  106d0 <_init>
   20b78:	a0 10 20 00 	clr  %l0
   20b7c:	03 00 00 00 	sethi  %hi(0), %g1
   20b80:	82 10 60 10 	or  %g1, 0x10, %g1	! 10 <_init-0x106c0>
   20b84:	07 00 00 00 	sethi  %hi(0), %g3
   20b88:	c4 05 c0 01 	ld  [ %l7 + %g1 ], %g2
   20b8c:	86 10 e0 18 	or  %g3, 0x18, %g3
   20b90:	c2 05 c0 03 	ld  [ %l7 + %g3 ], %g1
   20b94:	84 20 80 01 	sub  %g2, %g1, %g2
   20b98:	85 38 a0 02 	sra  %g2, 2, %g2
   20b9c:	80 a4 00 02 	cmp  %l0, %g2
   20ba0:	1a 80 00 0d 	bcc  20bd4 <__libc_csu_init+0x70>
   20ba4:	a4 10 00 01 	mov  %g1, %l2
   20ba8:	a2 10 00 02 	mov  %g2, %l1
   20bac:	83 2c 20 02 	sll  %l0, 2, %g1
   20bb0:	c4 04 80 01 	ld  [ %l2 + %g1 ], %g2
   20bb4:	90 10 00 18 	mov  %i0, %o0
   20bb8:	92 10 00 19 	mov  %i1, %o1
   20bbc:	9f c0 80 00 	call  %g2
   20bc0:	94 10 00 1a 	mov  %i2, %o2
   20bc4:	a0 04 20 01 	inc  %l0
   20bc8:	80 a4 00 11 	cmp  %l0, %l1
   20bcc:	0a bf ff f9 	bcs  20bb0 <__libc_csu_init+0x4c>
   20bd0:	83 2c 20 02 	sll  %l0, 2, %g1
   20bd4:	81 c7 e0 08 	ret 
   20bd8:	81 e8 00 00 	restore 

00020bdc <__libc_csu_fini>:
   20bdc:	81 c3 e0 08 	retl 
   20be0:	01 00 00 00 	nop 

00020be4 <__do_global_ctors_aux>:
   20be4:	9d e3 bf 98 	save  %sp, -104, %sp
   20be8:	03 00 00 cd 	sethi  %hi(0x33400), %g1
   20bec:	82 10 61 bc 	or  %g1, 0x1bc, %g1	! 335bc <__CTOR_END__>
   20bf0:	c4 00 7f fc 	ld  [ %g1 + -4 ], %g2
   20bf4:	80 a0 bf ff 	cmp  %g2, -1
   20bf8:	02 80 00 09 	be  20c1c <__do_global_ctors_aux+0x38>
   20bfc:	a0 00 7f fc 	add  %g1, -4, %l0
   20c00:	82 10 00 02 	mov  %g2, %g1
   20c04:	9f c0 40 00 	call  %g1
   20c08:	a0 04 3f fc 	add  %l0, -4, %l0
   20c0c:	c2 04 00 00 	ld  [ %l0 ], %g1
   20c10:	80 a0 7f ff 	cmp  %g1, -1
   20c14:	12 bf ff fc 	bne  20c04 <__do_global_ctors_aux+0x20>
   20c18:	01 00 00 00 	nop 
   20c1c:	81 c7 e0 08 	ret 
   20c20:	81 e8 00 00 	restore 

00020c24 <call___do_global_ctors_aux>:
   20c24:	9d e3 bf 98 	save  %sp, -104, %sp
   20c28:	81 c7 e0 08 	ret 
   20c2c:	81 e8 00 00 	restore 
Disassembly of section .fini:

00020c30 <_fini>:
   20c30:	9d e3 bf a0 	save  %sp, -96, %sp
   20c34:	7f ff be bc 	call  10724 <__do_global_dtors_aux>
   20c38:	01 00 00 00 	nop 
   20c3c:	81 c7 e0 08 	ret 
   20c40:	81 e8 00 00 	restore 
Disassembly of section .plt:

000336b0 <_PROCEDURE_LINKAGE_TABLE_>:
	...

000336e0 <ferror@plt>:
   336e0:	03 00 00 30 	sethi  %hi(0xc000), %g1
   336e4:	30 bf ff f3 	b,a   336b0 <_PROCEDURE_LINKAGE_TABLE_>
   336e8:	01 00 00 00 	nop 

000336ec <ungetc@plt>:
   336ec:	03 00 00 3c 	sethi  %hi(0xf000), %g1
   336f0:	30 bf ff f0 	b,a   336b0 <_PROCEDURE_LINKAGE_TABLE_>
   336f4:	01 00 00 00 	nop 

000336f8 <__ctype_tolower_loc@plt>:
   336f8:	03 00 00 48 	sethi  %hi(0x12000), %g1
   336fc:	30 bf ff ed 	b,a   336b0 <_PROCEDURE_LINKAGE_TABLE_>
   33700:	01 00 00 00 	nop 

00033704 <getenv@plt>:
   33704:	03 00 00 54 	sethi  %hi(0x15000), %g1
   33708:	30 bf ff ea 	b,a   336b0 <_PROCEDURE_LINKAGE_TABLE_>
   3370c:	01 00 00 00 	nop 

00033710 <fflush@plt>:
   33710:	03 00 00 60 	sethi  %hi(0x18000), %g1
   33714:	30 bf ff e7 	b,a   336b0 <_PROCEDURE_LINKAGE_TABLE_>
   33718:	01 00 00 00 	nop 

0003371c <malloc@plt>:
   3371c:	03 00 00 6c 	sethi  %hi(0x1b000), %g1
   33720:	30 bf ff e4 	b,a   336b0 <_PROCEDURE_LINKAGE_TABLE_>
   33724:	01 00 00 00 	nop 

00033728 <fread@plt>:
   33728:	03 00 00 78 	sethi  %hi(0x1e000), %g1
   3372c:	30 bf ff e1 	b,a   336b0 <_PROCEDURE_LINKAGE_TABLE_>
   33730:	01 00 00 00 	nop 

00033734 <sprintf@plt>:
   33734:	03 00 00 84 	sethi  %hi(0x21000), %g1
   33738:	30 bf ff de 	b,a   336b0 <_PROCEDURE_LINKAGE_TABLE_>
   3373c:	01 00 00 00 	nop 

00033740 <fprintf@plt>:
   33740:	03 00 00 90 	sethi  %hi(0x24000), %g1
   33744:	30 bf ff db 	b,a   336b0 <_PROCEDURE_LINKAGE_TABLE_>
   33748:	01 00 00 00 	nop 

0003374c <__libc_start_main@plt>:
   3374c:	03 00 00 9c 	sethi  %hi(0x27000), %g1
   33750:	30 bf ff d8 	b,a   336b0 <_PROCEDURE_LINKAGE_TABLE_>
   33754:	01 00 00 00 	nop 

00033758 <sscanf@plt>:
   33758:	03 00 00 a8 	sethi  %hi(0x2a000), %g1
   3375c:	30 bf ff d5 	b,a   336b0 <_PROCEDURE_LINKAGE_TABLE_>
   33760:	01 00 00 00 	nop 

00033764 <memcpy@plt>:
   33764:	03 00 00 b4 	sethi  %hi(0x2d000), %g1
   33768:	30 bf ff d2 	b,a   336b0 <_PROCEDURE_LINKAGE_TABLE_>
   3376c:	01 00 00 00 	nop 

00033770 <fclose@plt>:
   33770:	03 00 00 c0 	sethi  %hi(0x30000), %g1
   33774:	30 bf ff cf 	b,a   336b0 <_PROCEDURE_LINKAGE_TABLE_>
   33778:	01 00 00 00 	nop 

0003377c <exit@plt>:
   3377c:	03 00 00 cc 	sethi  %hi(0x33000), %g1
   33780:	30 bf ff cc 	b,a   336b0 <_PROCEDURE_LINKAGE_TABLE_>
   33784:	01 00 00 00 	nop 

00033788 <free@plt>:
   33788:	03 00 00 d8 	sethi  %hi(0x36000), %g1
   3378c:	30 bf ff c9 	b,a   336b0 <_PROCEDURE_LINKAGE_TABLE_>
   33790:	01 00 00 00 	nop 

00033794 <memset@plt>:
   33794:	03 00 00 e4 	sethi  %hi(0x39000), %g1
   33798:	30 bf ff c6 	b,a   336b0 <_PROCEDURE_LINKAGE_TABLE_>
   3379c:	01 00 00 00 	nop 

000337a0 <fopen@plt>:
   337a0:	03 00 00 f0 	sethi  %hi(0x3c000), %g1
   337a4:	30 bf ff c3 	b,a   336b0 <_PROCEDURE_LINKAGE_TABLE_>
   337a8:	01 00 00 00 	nop 

000337ac <fwrite@plt>:
   337ac:	03 00 00 fc 	sethi  %hi(0x3f000), %g1
   337b0:	30 bf ff c0 	b,a   336b0 <_PROCEDURE_LINKAGE_TABLE_>
   337b4:	01 00 00 00 	nop 

000337b8 <_IO_getc@plt>:
   337b8:	03 00 01 08 	sethi  %hi(0x42000), %g1
   337bc:	30 bf ff bd 	b,a   336b0 <_PROCEDURE_LINKAGE_TABLE_>
   337c0:	01 00 00 00 	nop 

000337c4 <__ctype_b_loc@plt>:
   337c4:	03 00 01 14 	sethi  %hi(0x45000), %g1
   337c8:	30 bf ff ba 	b,a   336b0 <_PROCEDURE_LINKAGE_TABLE_>
   337cc:	01 00 00 00 	nop 
   337d0:	01 00 00 00 	nop 
