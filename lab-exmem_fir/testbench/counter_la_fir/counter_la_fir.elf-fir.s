	.file	"fir.c"
	.option nopic
	.attribute arch, "rv32i2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 0 "/home/ubuntu/course-lab_4-1/testbench/counter_la_fir" "fir.c"
	.globl	taps
	.data
	.align	2
	.type	taps, @object
	.size	taps, 44
taps:
	.word	0
	.word	-10
	.word	-9
	.word	23
	.word	56
	.word	63
	.word	56
	.word	23
	.word	-9
	.word	-10
	.word	0
	.globl	inputbuffer
	.bss
	.align	2
	.type	inputbuffer, @object
	.size	inputbuffer, 44
inputbuffer:
	.zero	44
	.globl	inputsignal
	.data
	.align	2
	.type	inputsignal, @object
	.size	inputsignal, 44
inputsignal:
	.word	1
	.word	2
	.word	3
	.word	4
	.word	5
	.word	6
	.word	7
	.word	8
	.word	9
	.word	10
	.word	11
	.globl	outputsignal
	.bss
	.align	2
	.type	outputsignal, @object
	.size	outputsignal, 44
outputsignal:
	.zero	44
	.section	.mprjram,"ax",@progbits
	.align	2
	.globl	initfir
	.type	initfir, @function
initfir:
.LFB0:
	.file 1 "fir.c"
	.loc 1 3 61
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s0,28(sp)
	.cfi_offset 8, -4
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
.LBB2:
	.loc 1 5 11
	sw	zero,-20(s0)
	.loc 1 5 2
	j	.L2
.L3:
	.loc 1 6 18 discriminator 3
	lui	a5,%hi(inputbuffer)
	addi	a4,a5,%lo(inputbuffer)
	lw	a5,-20(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	sw	zero,0(a5)
	.loc 1 7 19 discriminator 3
	lui	a5,%hi(outputsignal)
	addi	a4,a5,%lo(outputsignal)
	lw	a5,-20(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	sw	zero,0(a5)
	.loc 1 5 25 discriminator 3
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L2:
	.loc 1 5 18 discriminator 1
	lw	a4,-20(s0)
	li	a5,10
	ble	a4,a5,.L3
.LBE2:
	.loc 1 9 1
	nop
	nop
	lw	s0,28(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE0:
	.size	initfir, .-initfir
	.globl	__mulsi3
	.align	2
	.globl	fir
	.type	fir, @function
fir:
.LFB1:
	.loc 1 11 57
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	sw	s1,20(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	.loc 1 12 2
	call	initfir
.LBB3:
	.loc 1 14 11
	sw	zero,-20(s0)
	.loc 1 14 2
	j	.L5
.L8:
	.loc 1 16 32
	lui	a5,%hi(inputbuffer)
	addi	a5,a5,%lo(inputbuffer)
	lw	a4,36(a5)
	.loc 1 16 19
	lui	a5,%hi(inputbuffer)
	addi	a5,a5,%lo(inputbuffer)
	sw	a4,40(a5)
	.loc 1 17 31
	lui	a5,%hi(inputbuffer)
	addi	a5,a5,%lo(inputbuffer)
	lw	a4,32(a5)
	.loc 1 17 18
	lui	a5,%hi(inputbuffer)
	addi	a5,a5,%lo(inputbuffer)
	sw	a4,36(a5)
	.loc 1 18 31
	lui	a5,%hi(inputbuffer)
	addi	a5,a5,%lo(inputbuffer)
	lw	a4,28(a5)
	.loc 1 18 18
	lui	a5,%hi(inputbuffer)
	addi	a5,a5,%lo(inputbuffer)
	sw	a4,32(a5)
	.loc 1 19 31
	lui	a5,%hi(inputbuffer)
	addi	a5,a5,%lo(inputbuffer)
	lw	a4,24(a5)
	.loc 1 19 18
	lui	a5,%hi(inputbuffer)
	addi	a5,a5,%lo(inputbuffer)
	sw	a4,28(a5)
	.loc 1 20 31
	lui	a5,%hi(inputbuffer)
	addi	a5,a5,%lo(inputbuffer)
	lw	a4,20(a5)
	.loc 1 20 18
	lui	a5,%hi(inputbuffer)
	addi	a5,a5,%lo(inputbuffer)
	sw	a4,24(a5)
	.loc 1 21 31
	lui	a5,%hi(inputbuffer)
	addi	a5,a5,%lo(inputbuffer)
	lw	a4,16(a5)
	.loc 1 21 18
	lui	a5,%hi(inputbuffer)
	addi	a5,a5,%lo(inputbuffer)
	sw	a4,20(a5)
	.loc 1 22 31
	lui	a5,%hi(inputbuffer)
	addi	a5,a5,%lo(inputbuffer)
	lw	a4,12(a5)
	.loc 1 22 18
	lui	a5,%hi(inputbuffer)
	addi	a5,a5,%lo(inputbuffer)
	sw	a4,16(a5)
	.loc 1 23 31
	lui	a5,%hi(inputbuffer)
	addi	a5,a5,%lo(inputbuffer)
	lw	a4,8(a5)
	.loc 1 23 18
	lui	a5,%hi(inputbuffer)
	addi	a5,a5,%lo(inputbuffer)
	sw	a4,12(a5)
	.loc 1 24 31
	lui	a5,%hi(inputbuffer)
	addi	a5,a5,%lo(inputbuffer)
	lw	a4,4(a5)
	.loc 1 24 18
	lui	a5,%hi(inputbuffer)
	addi	a5,a5,%lo(inputbuffer)
	sw	a4,8(a5)
	.loc 1 25 31
	lui	a5,%hi(inputbuffer)
	addi	a5,a5,%lo(inputbuffer)
	lw	a4,0(a5)
	.loc 1 25 18
	lui	a5,%hi(inputbuffer)
	addi	a5,a5,%lo(inputbuffer)
	sw	a4,4(a5)
	.loc 1 28 31
	lui	a5,%hi(inputsignal)
	addi	a4,a5,%lo(inputsignal)
	lw	a5,-20(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a4,0(a5)
	.loc 1 28 18
	lui	a5,%hi(inputbuffer)
	addi	a5,a5,%lo(inputbuffer)
	sw	a4,0(a5)
.LBB4:
	.loc 1 31 12
	sw	zero,-24(s0)
	.loc 1 31 3
	j	.L6
.L7:
	.loc 1 32 34 discriminator 3
	lui	a5,%hi(outputsignal)
	addi	a4,a5,%lo(outputsignal)
	lw	a5,-20(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	s1,0(a5)
	.loc 1 32 52 discriminator 3
	lui	a5,%hi(inputbuffer)
	addi	a4,a5,%lo(inputbuffer)
	lw	a5,-24(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a3,0(a5)
	.loc 1 32 62 discriminator 3
	lui	a5,%hi(taps)
	addi	a4,a5,%lo(taps)
	lw	a5,-24(s0)
	slli	a5,a5,2
	add	a5,a4,a5
	lw	a5,0(a5)
	.loc 1 32 56 discriminator 3
	mv	a1,a5
	mv	a0,a3
	call	__mulsi3
	mv	a5,a0
	.loc 1 32 38 discriminator 3
	add	a4,s1,a5
	.loc 1 32 20 discriminator 3
	lui	a5,%hi(outputsignal)
	addi	a3,a5,%lo(outputsignal)
	lw	a5,-20(s0)
	slli	a5,a5,2
	add	a5,a3,a5
	sw	a4,0(a5)
	.loc 1 31 24 discriminator 3
	lw	a5,-24(s0)
	addi	a5,a5,1
	sw	a5,-24(s0)
.L6:
	.loc 1 31 18 discriminator 1
	lw	a4,-24(s0)
	li	a5,10
	ble	a4,a5,.L7
.LBE4:
	.loc 1 14 24 discriminator 2
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L5:
	.loc 1 14 17 discriminator 1
	lw	a4,-20(s0)
	li	a5,10
	ble	a4,a5,.L8
.LBE3:
	.loc 1 36 9
	lui	a5,%hi(outputsignal)
	addi	a5,a5,%lo(outputsignal)
	.loc 1 37 1
	mv	a0,a5
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	lw	s1,20(sp)
	.cfi_restore 9
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE1:
	.size	fir, .-fir
	.text
.Letext0:
	.file 2 "fir.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xf7
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.4byte	.LASF7
	.byte	0x1d
	.4byte	.LASF0
	.4byte	.LASF1
	.4byte	.LLRL0
	.4byte	0
	.4byte	.Ldebug_line0
	.byte	0x5
	.4byte	0x3d
	.4byte	0x36
	.byte	0x6
	.4byte	0x36
	.byte	0xa
	.byte	0
	.byte	0x7
	.byte	0x4
	.byte	0x7
	.4byte	.LASF2
	.byte	0x8
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x1
	.4byte	.LASF3
	.byte	0x6
	.4byte	0x26
	.byte	0x5
	.byte	0x3
	.4byte	taps
	.byte	0x1
	.4byte	.LASF4
	.byte	0x7
	.4byte	0x26
	.byte	0x5
	.byte	0x3
	.4byte	inputbuffer
	.byte	0x1
	.4byte	.LASF5
	.byte	0x8
	.4byte	0x26
	.byte	0x5
	.byte	0x3
	.4byte	inputsignal
	.byte	0x1
	.4byte	.LASF6
	.byte	0x9
	.4byte	0x26
	.byte	0x5
	.byte	0x3
	.4byte	outputsignal
	.byte	0x9
	.string	"fir"
	.byte	0x1
	.byte	0xb
	.byte	0x33
	.4byte	0xcb
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.byte	0x1
	.byte	0x9c
	.4byte	0xcb
	.byte	0x2
	.4byte	.LBB3
	.4byte	.LBE3-.LBB3
	.byte	0x3
	.string	"i"
	.byte	0xe
	.byte	0xb
	.4byte	0x3d
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x2
	.4byte	.LBB4
	.4byte	.LBE4-.LBB4
	.byte	0x3
	.string	"j"
	.byte	0x1f
	.byte	0xc
	.4byte	0x3d
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0
	.byte	0
	.byte	0
	.byte	0xa
	.byte	0x4
	.4byte	0x3d
	.byte	0xb
	.4byte	.LASF8
	.byte	0x1
	.byte	0x3
	.byte	0x33
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.byte	0x1
	.byte	0x9c
	.byte	0x2
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.byte	0x3
	.string	"i"
	.byte	0x5
	.byte	0xb
	.4byte	0x3d
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.byte	0x1
	.byte	0x34
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0x21
	.byte	0x2
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0x21
	.byte	0x5
	.byte	0x49
	.byte	0x13
	.byte	0x3f
	.byte	0x19
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x2
	.byte	0xb
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0x3
	.byte	0x34
	.byte	0
	.byte	0x3
	.byte	0x8
	.byte	0x3a
	.byte	0x21
	.byte	0x1
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x4
	.byte	0x11
	.byte	0x1
	.byte	0x25
	.byte	0xe
	.byte	0x13
	.byte	0xb
	.byte	0x3
	.byte	0x1f
	.byte	0x1b
	.byte	0x1f
	.byte	0x55
	.byte	0x17
	.byte	0x11
	.byte	0x1
	.byte	0x10
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x5
	.byte	0x1
	.byte	0x1
	.byte	0x49
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x6
	.byte	0x21
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0x2f
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x7
	.byte	0x24
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x3e
	.byte	0xb
	.byte	0x3
	.byte	0xe
	.byte	0
	.byte	0
	.byte	0x8
	.byte	0x24
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x3e
	.byte	0xb
	.byte	0x3
	.byte	0x8
	.byte	0
	.byte	0
	.byte	0x9
	.byte	0x2e
	.byte	0x1
	.byte	0x3f
	.byte	0x19
	.byte	0x3
	.byte	0x8
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x6
	.byte	0x40
	.byte	0x18
	.byte	0x7c
	.byte	0x19
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xa
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xb
	.byte	0x2e
	.byte	0x1
	.byte	0x3f
	.byte	0x19
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x6
	.byte	0x40
	.byte	0x18
	.byte	0x7a
	.byte	0x19
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x24
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.4byte	0
	.4byte	0
	.section	.debug_rnglists,"",@progbits
.Ldebug_ranges0:
	.4byte	.Ldebug_ranges3-.Ldebug_ranges2
.Ldebug_ranges2:
	.2byte	0x5
	.byte	0x4
	.byte	0
	.4byte	0
.LLRL0:
	.byte	0x6
	.4byte	.LFB0
	.4byte	.LFE0
	.byte	0x6
	.4byte	.LFB1
	.4byte	.LFE1
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF2:
	.string	"unsigned int"
.LASF3:
	.string	"taps"
.LASF8:
	.string	"initfir"
.LASF5:
	.string	"inputsignal"
.LASF6:
	.string	"outputsignal"
.LASF7:
	.string	"GNU C17 12.1.0 -mabi=ilp32 -mtune=rocket -misa-spec=2.2 -march=rv32i -g -ffreestanding"
.LASF4:
	.string	"inputbuffer"
	.section	.debug_line_str,"MS",@progbits,1
.LASF0:
	.string	"fir.c"
.LASF1:
	.string	"/home/ubuntu/course-lab_4-1/testbench/counter_la_fir"
	.ident	"GCC: (g1ea978e3066) 12.1.0"
