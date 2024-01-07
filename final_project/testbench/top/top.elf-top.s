	.file	"top.c"
	.option nopic
	.attribute arch, "rv32i2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 0 "/home/ubuntu/SoCLab/final_project/testbench/top" "top.c"
	.align	2
	.globl	putchar
	.type	putchar, @function
putchar:
.LFB316:
	.file 1 "../../firmware/stub.c"
	.loc 1 19 1
	.cfi_startproc
.LVL0:
	.loc 1 20 2
	.loc 1 20 5 is_stmt 0
	li	a5,10
	beq	a0,a5,.L8
.L2:
	.loc 1 22 13 discriminator 1
	li	a4,-268410880
	.loc 1 22 60 discriminator 1
	li	a3,1
.L4:
	.loc 1 22 60 is_stmt 1 discriminator 1
	.loc 1 22 13 is_stmt 0 discriminator 1
	lw	a5,-2044(a4)
	.loc 1 22 60 discriminator 1
	beq	a5,a3,.L4
	.loc 1 23 2 is_stmt 1
	.loc 1 23 50 is_stmt 0
	sw	a0,-2048(a4)
	.loc 1 24 1
	ret
.L8:
.LBB16:
.LBB17:
	.loc 1 22 13
	li	a4,-268410880
	.loc 1 22 60
	li	a3,1
.L3:
	.loc 1 22 60 is_stmt 1
	.loc 1 22 13 is_stmt 0
	lw	a5,-2044(a4)
	.loc 1 22 60
	beq	a5,a3,.L3
	.loc 1 23 2 is_stmt 1
	.loc 1 23 50 is_stmt 0
	li	a5,13
	sw	a5,-2048(a4)
	.loc 1 24 1
	j	.L2
.LBE17:
.LBE16:
	.cfi_endproc
.LFE316:
	.size	putchar, .-putchar
	.align	2
	.globl	print
	.type	print, @function
print:
.LFB317:
	.loc 1 27 1 is_stmt 1
	.cfi_startproc
.LVL1:
	.loc 1 28 2
	.loc 1 28 9
	lbu	a2,0(a0)
	beq	a2,zero,.L9
.LBB22:
.LBB23:
	.loc 1 20 5 is_stmt 0
	li	a1,10
.LBB24:
.LBB25:
	.loc 1 22 13
	li	a4,-268410880
	.loc 1 22 60
	li	a3,1
	.loc 1 23 50
	li	a6,13
.L14:
.LBE25:
.LBE24:
.LBE23:
.LBE22:
	.loc 1 29 3 is_stmt 1
	.loc 1 29 14 is_stmt 0
	addi	a0,a0,1
.LVL2:
.LBB30:
.LBB28:
	.loc 1 20 2 is_stmt 1
	.loc 1 20 5 is_stmt 0
	beq	a2,a1,.L12
.L13:
	.loc 1 22 60 is_stmt 1
	.loc 1 22 13 is_stmt 0
	lw	a5,-2044(a4)
	.loc 1 22 60
	beq	a5,a3,.L13
	.loc 1 23 2 is_stmt 1
	.loc 1 23 50 is_stmt 0
	sw	a2,-2048(a4)
.LVL3:
.LBE28:
.LBE30:
	.loc 1 28 9 is_stmt 1
	lbu	a2,0(a0)
	bne	a2,zero,.L14
.L9:
	.loc 1 30 1 is_stmt 0
	ret
.LVL4:
.L12:
.LBB31:
.LBB29:
.LBB27:
.LBB26:
	.loc 1 22 60 is_stmt 1
	.loc 1 22 13 is_stmt 0
	lw	a5,-2044(a4)
	.loc 1 22 60
	beq	a5,a3,.L12
	.loc 1 23 2 is_stmt 1
	.loc 1 23 50 is_stmt 0
	sw	a6,-2048(a4)
	.loc 1 24 1
	j	.L13
.LBE26:
.LBE27:
.LBE29:
.LBE31:
	.cfi_endproc
.LFE317:
	.size	print, .-print
	.section	.text.startup,"ax",@progbits
	.align	2
	.globl	main
	.type	main, @function
main:
.LFB323:
	.file 2 "top.c"
	.loc 2 47 1 is_stmt 1
	.cfi_startproc
	.loc 2 49 5
	.loc 2 51 5
	.loc 2 47 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	.loc 2 51 39
	li	a3,8192
	li	a5,637534208
	addi	a4,a3,-2039
	.loc 2 47 1
	sw	ra,12(sp)
	sw	s0,8(sp)
	sw	s1,4(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.loc 2 51 39
	sw	a4,160(a5)
	.loc 2 52 5 is_stmt 1
	.loc 2 52 39 is_stmt 0
	sw	a4,156(a5)
	.loc 2 53 5 is_stmt 1
	.loc 2 53 39 is_stmt 0
	sw	a4,152(a5)
	.loc 2 54 5 is_stmt 1
	.loc 2 54 39 is_stmt 0
	sw	a4,148(a5)
	.loc 2 55 5 is_stmt 1
	.loc 2 55 39 is_stmt 0
	sw	a4,144(a5)
	.loc 2 56 5 is_stmt 1
	.loc 2 56 39 is_stmt 0
	sw	a4,140(a5)
	.loc 2 57 5 is_stmt 1
	.loc 2 57 39 is_stmt 0
	sw	a4,136(a5)
	.loc 2 58 5 is_stmt 1
	.loc 2 58 39 is_stmt 0
	sw	a4,132(a5)
	.loc 2 59 5 is_stmt 1
	.loc 2 59 39 is_stmt 0
	sw	a4,128(a5)
	.loc 2 60 5 is_stmt 1
	.loc 2 60 39 is_stmt 0
	sw	a4,124(a5)
	.loc 2 61 5 is_stmt 1
	.loc 2 61 39 is_stmt 0
	sw	a4,120(a5)
	.loc 2 62 5 is_stmt 1
	.loc 2 62 39 is_stmt 0
	sw	a4,116(a5)
	.loc 2 63 5 is_stmt 1
	.loc 2 63 39 is_stmt 0
	sw	a4,112(a5)
	.loc 2 64 5 is_stmt 1
	.loc 2 64 39 is_stmt 0
	sw	a4,108(a5)
	.loc 2 65 5 is_stmt 1
	.loc 2 65 39 is_stmt 0
	sw	a4,104(a5)
	.loc 2 66 5 is_stmt 1
	.loc 2 66 39 is_stmt 0
	sw	a4,100(a5)
	.loc 2 68 5 is_stmt 1
	.loc 2 68 39 is_stmt 0
	sw	a4,96(a5)
	.loc 2 69 5 is_stmt 1
	.loc 2 69 39 is_stmt 0
	sw	a4,92(a5)
	.loc 2 70 5 is_stmt 1
	.loc 2 70 39 is_stmt 0
	sw	a4,88(a5)
	.loc 2 71 5 is_stmt 1
	.loc 2 71 39 is_stmt 0
	sw	a4,84(a5)
	.loc 2 72 5 is_stmt 1
	.loc 2 72 39 is_stmt 0
	sw	a4,80(a5)
	.loc 2 73 5 is_stmt 1
	.loc 2 73 39 is_stmt 0
	sw	a4,76(a5)
	.loc 2 74 5 is_stmt 1
	.loc 2 74 39 is_stmt 0
	sw	a4,72(a5)
	.loc 2 75 5 is_stmt 1
	.loc 2 75 39 is_stmt 0
	sw	a4,68(a5)
	.loc 2 76 5 is_stmt 1
	.loc 2 76 39 is_stmt 0
	sw	a4,64(a5)
	.loc 2 77 5 is_stmt 1
	.loc 2 77 39 is_stmt 0
	sw	a4,52(a5)
	.loc 2 78 5 is_stmt 1
	.loc 2 78 39 is_stmt 0
	sw	a4,48(a5)
	.loc 2 79 5 is_stmt 1
	.loc 2 79 39 is_stmt 0
	sw	a4,44(a5)
	.loc 2 80 5 is_stmt 1
	.loc 2 80 39 is_stmt 0
	sw	a4,40(a5)
	.loc 2 81 5 is_stmt 1
	.loc 2 83 39 is_stmt 0
	addi	a3,a3,-2040
	.loc 2 81 39
	sw	a4,36(a5)
	.loc 2 83 5 is_stmt 1
	.loc 2 83 39 is_stmt 0
	sw	a3,60(a5)
	.loc 2 84 5 is_stmt 1
	.loc 2 84 39 is_stmt 0
	li	a4,1026
	sw	a4,56(a5)
	.loc 2 91 2 is_stmt 1
.LBB32:
.LBB33:
	.file 3 "../../firmware/irq_vex.h"
	.loc 3 24 2
	.loc 3 25 2
 #APP
# 25 "../../firmware/irq_vex.h" 1
	csrr a4, 3008
# 0 "" 2
.LVL5:
	.loc 3 26 2
 #NO_APP
.LBE33:
.LBE32:
	.loc 2 92 2
	.loc 2 93 2
.LBB34:
.LBB35:
	.loc 3 31 2
	ori	a4,a4,4
.LVL6:
 #APP
# 31 "../../firmware/irq_vex.h" 1
	csrw 3008, a4
# 0 "" 2
.LVL7:
 #NO_APP
.LBE35:
.LBE34:
	.loc 2 95 2
.LBB36:
	.file 4 "../../firmware/csr.h"
	.loc 4 806 2
.LBB37:
.LBB38:
	.file 5 "../../firmware/hw/common.h"
	.loc 5 34 2
	.loc 5 34 32 is_stmt 0
	li	a4,1
.LVL8:
	li	a3,-268406784
	sw	a4,-2028(a3)
.LVL9:
.LBE38:
.LBE37:
.LBE36:
	.loc 2 99 2 is_stmt 1
	.loc 2 99 36 is_stmt 0
	sw	a4,0(a5)
	.loc 2 100 2 is_stmt 1
	.loc 2 100 10 is_stmt 0
	li	s0,637534208
.L22:
	.loc 2 100 43 is_stmt 1 discriminator 1
	.loc 2 100 10 is_stmt 0 discriminator 1
	lw	a5,0(s0)
	.loc 2 100 43 discriminator 1
	beq	a5,a4,.L22
	.loc 2 102 2 is_stmt 1
	.loc 2 102 114 is_stmt 0
	li	a5,-268423168
	sw	zero,12(a5)
	.loc 2 102 57
	sw	zero,28(a5)
	.loc 2 103 2 is_stmt 1
	.loc 2 103 112 is_stmt 0
	li	a4,-1
	sw	a4,8(a5)
	.loc 2 103 56
	sw	a4,24(a5)
	.loc 2 104 2 is_stmt 1
	.loc 2 104 112 is_stmt 0
	sw	zero,4(a5)
	.loc 2 104 56
	sw	zero,20(a5)
	.loc 2 105 2 is_stmt 1
	.loc 2 105 100 is_stmt 0
	sw	zero,0(a5)
	.loc 2 105 50
	sw	zero,16(a5)
	.loc 2 108 2 is_stmt 1
	.loc 2 108 36 is_stmt 0
	li	s1,-1421869056
	sw	s1,12(s0)
	.loc 2 110 2 is_stmt 1
	.loc 2 110 56 is_stmt 0
	sw	zero,56(a5)
	.loc 2 112 2 is_stmt 1
	.loc 2 112 112 is_stmt 0
	sw	zero,8(a5)
	.loc 2 112 56
	sw	zero,24(a5)
	.loc 2 114 2 is_stmt 1
	.loc 2 117 2
	.loc 2 117 36 is_stmt 0
	sw	s1,12(s0)
	.loc 2 118 2 is_stmt 1
	.loc 2 118 13 is_stmt 0
	call	qsort
.LVL10:
	.loc 2 119 2 is_stmt 1
	.loc 2 119 43 is_stmt 0
	lw	a4,0(a0)
	.loc 2 120 47
	lw	a5,4(a0)
	.loc 2 121 47
	lw	a2,8(a0)
	.loc 2 122 47
	lw	a3,12(a0)
	.loc 2 119 43
	slli	a4,a4,16
	.loc 2 119 36
	sw	a4,12(s0)
	.loc 2 120 2 is_stmt 1
	.loc 2 120 47 is_stmt 0
	slli	a5,a5,16
	.loc 2 123 47
	lw	a4,16(a0)
	.loc 2 121 47
	slli	a2,a2,16
	.loc 2 120 36
	sw	a5,12(s0)
	.loc 2 121 2 is_stmt 1
	.loc 2 124 47 is_stmt 0
	lw	a5,20(a0)
	.loc 2 122 47
	slli	a3,a3,16
	.loc 2 121 36
	sw	a2,12(s0)
	.loc 2 122 2 is_stmt 1
	.loc 2 125 47 is_stmt 0
	lw	a2,24(a0)
	.loc 2 123 47
	slli	a4,a4,16
	.loc 2 122 36
	sw	a3,12(s0)
	.loc 2 123 2 is_stmt 1
	.loc 2 126 47 is_stmt 0
	lw	a3,28(a0)
	.loc 2 124 47
	slli	a5,a5,16
	.loc 2 123 36
	sw	a4,12(s0)
	.loc 2 124 2 is_stmt 1
	.loc 2 127 47 is_stmt 0
	lw	a4,32(a0)
	.loc 2 125 47
	slli	a2,a2,16
	.loc 2 124 36
	sw	a5,12(s0)
	.loc 2 125 2 is_stmt 1
	.loc 2 128 47 is_stmt 0
	lw	a5,36(a0)
	.loc 2 126 47
	slli	a3,a3,16
	.loc 2 125 36
	sw	a2,12(s0)
	.loc 2 126 2 is_stmt 1
	.loc 2 126 36 is_stmt 0
	sw	a3,12(s0)
	.loc 2 127 2 is_stmt 1
	.loc 2 127 47 is_stmt 0
	slli	a4,a4,16
	.loc 2 127 36
	sw	a4,12(s0)
	.loc 2 128 2 is_stmt 1
	.loc 2 128 47 is_stmt 0
	slli	a5,a5,16
	.loc 2 128 36
	sw	a5,12(s0)
	.loc 2 129 2 is_stmt 1
	.loc 2 129 36 is_stmt 0
	li	a5,-1418657792
	sw	a5,12(s0)
	.loc 2 132 2 is_stmt 1
	.loc 2 132 36 is_stmt 0
	sw	s1,12(s0)
	.loc 2 133 2 is_stmt 1
	.loc 2 133 8 is_stmt 0
	call	fir
.LVL11:
	.loc 2 134 2 is_stmt 1
	.loc 2 134 43 is_stmt 0
	lw	a3,0(a0)
	.loc 2 135 47
	lw	a4,4(a0)
	.loc 2 136 47
	lw	a5,8(a0)
	.loc 2 137 47
	lw	a2,12(a0)
	.loc 2 134 43
	slli	a3,a3,16
	.loc 2 134 36
	sw	a3,12(s0)
	.loc 2 135 2 is_stmt 1
	.loc 2 135 47 is_stmt 0
	slli	a4,a4,16
	.loc 2 138 47
	lw	a3,16(a0)
	.loc 2 136 47
	slli	a5,a5,16
	.loc 2 135 36
	sw	a4,12(s0)
	.loc 2 136 2 is_stmt 1
	.loc 2 139 47 is_stmt 0
	lw	a4,20(a0)
	.loc 2 137 47
	slli	a2,a2,16
	.loc 2 136 36
	sw	a5,12(s0)
	.loc 2 137 2 is_stmt 1
	.loc 2 140 47 is_stmt 0
	lw	a5,24(a0)
	.loc 2 138 47
	slli	a3,a3,16
	.loc 2 137 36
	sw	a2,12(s0)
	.loc 2 138 2 is_stmt 1
	.loc 2 141 47 is_stmt 0
	lw	a2,28(a0)
	.loc 2 139 47
	slli	a4,a4,16
	.loc 2 138 36
	sw	a3,12(s0)
	.loc 2 139 2 is_stmt 1
	.loc 2 142 47 is_stmt 0
	lw	a3,32(a0)
	.loc 2 140 47
	slli	a5,a5,16
	.loc 2 139 36
	sw	a4,12(s0)
	.loc 2 140 2 is_stmt 1
	.loc 2 143 47 is_stmt 0
	lw	a4,36(a0)
	.loc 2 141 47
	slli	a2,a2,16
	.loc 2 140 36
	sw	a5,12(s0)
	.loc 2 141 2 is_stmt 1
	.loc 2 144 48 is_stmt 0
	lw	a5,40(a0)
	.loc 2 142 47
	slli	a3,a3,16
	.loc 2 141 36
	sw	a2,12(s0)
	.loc 2 142 2 is_stmt 1
	.loc 2 142 36 is_stmt 0
	sw	a3,12(s0)
	.loc 2 143 2 is_stmt 1
	.loc 2 143 47 is_stmt 0
	slli	a4,a4,16
	.loc 2 143 36
	sw	a4,12(s0)
	.loc 2 144 2 is_stmt 1
	.loc 2 144 48 is_stmt 0
	slli	a5,a5,16
	.loc 2 144 36
	sw	a5,12(s0)
	.loc 2 145 2 is_stmt 1
	.loc 2 145 36 is_stmt 0
	li	a5,-1419706368
	sw	a5,12(s0)
	.loc 2 148 2 is_stmt 1
	.loc 2 148 36 is_stmt 0
	sw	s1,12(s0)
	.loc 2 149 2 is_stmt 1
	.loc 2 149 8 is_stmt 0
	call	matmul
.LVL12:
	.loc 2 150 2 is_stmt 1
	.loc 2 150 43 is_stmt 0
	lw	a2,0(a0)
	.loc 2 151 47
	lw	a3,4(a0)
	.loc 2 152 47
	lw	a4,8(a0)
	.loc 2 153 47
	lw	a5,12(a0)
	.loc 2 150 43
	slli	a2,a2,16
	.loc 2 150 36
	sw	a2,12(s0)
	.loc 2 151 2 is_stmt 1
	.loc 2 151 47 is_stmt 0
	slli	a3,a3,16
	.loc 2 154 47
	lw	a2,16(a0)
	.loc 2 152 47
	slli	a4,a4,16
	.loc 2 151 36
	sw	a3,12(s0)
	.loc 2 152 2 is_stmt 1
	.loc 2 155 47 is_stmt 0
	lw	a3,20(a0)
	.loc 2 153 47
	slli	a5,a5,16
	.loc 2 152 36
	sw	a4,12(s0)
	.loc 2 153 2 is_stmt 1
	.loc 2 156 47 is_stmt 0
	lw	a4,24(a0)
	.loc 2 154 47
	slli	a2,a2,16
	.loc 2 153 36
	sw	a5,12(s0)
	.loc 2 154 2 is_stmt 1
	.loc 2 157 47 is_stmt 0
	lw	a5,28(a0)
	.loc 2 155 47
	slli	a3,a3,16
	.loc 2 154 36
	sw	a2,12(s0)
	.loc 2 155 2 is_stmt 1
	.loc 2 158 47 is_stmt 0
	lw	a2,32(a0)
	.loc 2 156 47
	slli	a4,a4,16
	.loc 2 155 36
	sw	a3,12(s0)
	.loc 2 156 2 is_stmt 1
	.loc 2 159 47 is_stmt 0
	lw	a3,36(a0)
	.loc 2 157 47
	slli	a5,a5,16
	.loc 2 156 36
	sw	a4,12(s0)
	.loc 2 157 2 is_stmt 1
	.loc 2 160 48 is_stmt 0
	lw	a4,40(a0)
	.loc 2 158 47
	slli	a2,a2,16
	.loc 2 157 36
	sw	a5,12(s0)
	.loc 2 158 2 is_stmt 1
	.loc 2 161 48 is_stmt 0
	lw	a5,44(a0)
	.loc 2 159 47
	slli	a3,a3,16
	.loc 2 158 36
	sw	a2,12(s0)
	.loc 2 159 2 is_stmt 1
	.loc 2 162 48 is_stmt 0
	lw	a2,48(a0)
	.loc 2 160 48
	slli	a4,a4,16
	.loc 2 159 36
	sw	a3,12(s0)
	.loc 2 160 2 is_stmt 1
	.loc 2 163 48 is_stmt 0
	lw	a3,52(a0)
	.loc 2 161 48
	slli	a5,a5,16
	.loc 2 160 36
	sw	a4,12(s0)
	.loc 2 161 2 is_stmt 1
	.loc 2 164 48 is_stmt 0
	lw	a4,56(a0)
	.loc 2 162 48
	slli	a2,a2,16
	.loc 2 161 36
	sw	a5,12(s0)
	.loc 2 162 2 is_stmt 1
	.loc 2 165 48 is_stmt 0
	lw	a5,60(a0)
	.loc 2 163 48
	slli	a3,a3,16
	.loc 2 162 36
	sw	a2,12(s0)
	.loc 2 163 2 is_stmt 1
	.loc 2 163 36 is_stmt 0
	sw	a3,12(s0)
	.loc 2 164 2 is_stmt 1
	.loc 2 164 48 is_stmt 0
	slli	a4,a4,16
	.loc 2 164 36
	sw	a4,12(s0)
	.loc 2 165 2 is_stmt 1
	.loc 2 165 48 is_stmt 0
	slli	a5,a5,16
	.loc 2 165 36
	sw	a5,12(s0)
	.loc 2 166 2 is_stmt 1
	.loc 2 166 36 is_stmt 0
	li	a5,-1420754944
	sw	a5,12(s0)
	.loc 2 167 1
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	lw	s1,4(sp)
	.cfi_restore 9
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE323:
	.size	main, .-main
	.text
.Letext0:
	.file 6 "/opt/riscv/lib/gcc/riscv32-unknown-elf/12.1.0/include/stdint-gcc.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x296
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0xc
	.4byte	.LASF19
	.byte	0x1d
	.4byte	.LASF0
	.4byte	.LASF1
	.4byte	.LLRL10
	.4byte	0
	.4byte	.Ldebug_line0
	.byte	0x1
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.byte	0x1
	.byte	0x2
	.byte	0x5
	.4byte	.LASF3
	.byte	0x1
	.byte	0x4
	.byte	0x5
	.4byte	.LASF4
	.byte	0x1
	.byte	0x8
	.byte	0x5
	.4byte	.LASF5
	.byte	0x1
	.byte	0x1
	.byte	0x8
	.4byte	.LASF6
	.byte	0x1
	.byte	0x2
	.byte	0x7
	.4byte	.LASF7
	.byte	0xd
	.4byte	.LASF20
	.byte	0x6
	.byte	0x34
	.byte	0x1b
	.4byte	0x5c
	.byte	0x1
	.byte	0x4
	.byte	0x7
	.4byte	.LASF8
	.byte	0x1
	.byte	0x8
	.byte	0x7
	.4byte	.LASF9
	.byte	0xe
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x1
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.byte	0x7
	.4byte	.LASF11
	.byte	0x1c
	.4byte	0x88
	.4byte	0x88
	.byte	0x3
	.byte	0
	.byte	0x8
	.4byte	0x6a
	.byte	0xf
	.string	"fir"
	.byte	0x2
	.byte	0x1b
	.byte	0xd
	.4byte	0x88
	.4byte	0x9f
	.byte	0x3
	.byte	0
	.byte	0x7
	.4byte	.LASF12
	.byte	0x1a
	.4byte	0x88
	.4byte	0xaf
	.byte	0x3
	.byte	0
	.byte	0x10
	.4byte	.LASF21
	.byte	0x2
	.byte	0x2e
	.byte	0x6
	.4byte	.LFB323
	.4byte	.LFE323-.LFB323
	.byte	0x1
	.byte	0x9c
	.4byte	0x182
	.byte	0x11
	.4byte	.LASF13
	.byte	0x2
	.byte	0x31
	.byte	0x9
	.4byte	0x6a
	.4byte	.LLST4
	.byte	0x12
	.string	"j"
	.byte	0x2
	.byte	0x72
	.byte	0x6
	.4byte	0x6a
	.byte	0x13
	.string	"tmp"
	.byte	0x2
	.byte	0x76
	.byte	0x7
	.4byte	0x88
	.4byte	.LLST5
	.byte	0x4
	.4byte	0x19a
	.4byte	.LBB32
	.4byte	.LBE32-.LBB32
	.byte	0x5b
	.byte	0x9
	.4byte	0x108
	.byte	0x14
	.4byte	0x1ab
	.byte	0
	.byte	0x4
	.4byte	0x182
	.4byte	.LBB34
	.4byte	.LBE34-.LBB34
	.byte	0x5d
	.byte	0x2
	.4byte	0x125
	.byte	0x2
	.4byte	0x18d
	.4byte	.LLST6
	.byte	0
	.byte	0x4
	.4byte	0x232
	.4byte	.LBB36
	.4byte	.LBE36-.LBB36
	.byte	0x5f
	.byte	0x2
	.4byte	0x166
	.byte	0x2
	.4byte	0x240
	.4byte	.LLST7
	.byte	0x15
	.4byte	0x24c
	.4byte	.LBB37
	.4byte	.LBE37-.LBB37
	.byte	0x4
	.2byte	0x326
	.byte	0x2
	.byte	0x2
	.4byte	0x261
	.4byte	.LLST8
	.byte	0x2
	.4byte	0x257
	.4byte	.LLST7
	.byte	0
	.byte	0
	.byte	0x5
	.4byte	.LVL10
	.4byte	0x9f
	.byte	0x5
	.4byte	.LVL11
	.4byte	0x8d
	.byte	0x5
	.4byte	.LVL12
	.4byte	0x78
	.byte	0
	.byte	0x9
	.4byte	.LASF16
	.byte	0x3
	.byte	0x1d
	.4byte	0x19a
	.byte	0x16
	.4byte	.LASF13
	.byte	0x3
	.byte	0x1d
	.byte	0x2d
	.4byte	0x71
	.byte	0
	.byte	0x17
	.4byte	.LASF22
	.byte	0x3
	.byte	0x16
	.byte	0x1c
	.4byte	0x71
	.byte	0x3
	.4byte	0x1b8
	.byte	0x18
	.4byte	.LASF13
	.byte	0x3
	.byte	0x18
	.byte	0xf
	.4byte	0x71
	.byte	0
	.byte	0x19
	.4byte	.LASF23
	.byte	0x1
	.byte	0x1a
	.byte	0x6
	.4byte	.LFB317
	.4byte	.LFE317-.LFB317
	.byte	0x1
	.byte	0x9c
	.4byte	0x209
	.byte	0x1a
	.string	"p"
	.byte	0x1
	.byte	0x1a
	.byte	0x18
	.4byte	0x209
	.4byte	.LLST0
	.byte	0xa
	.4byte	0x21a
	.4byte	.LBB22
	.4byte	.LLRL1
	.byte	0x1d
	.byte	0x2
	.4byte	0x227
	.4byte	.LLST2
	.byte	0xa
	.4byte	0x21a
	.4byte	.LBB24
	.4byte	.LLRL3
	.byte	0x15
	.byte	0xb
	.4byte	0x227
	.byte	0
	.byte	0
	.byte	0
	.byte	0x8
	.4byte	0x215
	.byte	0x1
	.byte	0x1
	.byte	0x8
	.4byte	.LASF14
	.byte	0x1b
	.4byte	0x20e
	.byte	0x1c
	.4byte	.LASF15
	.byte	0x1
	.byte	0x12
	.byte	0x6
	.byte	0x1
	.4byte	0x232
	.byte	0x6
	.string	"c"
	.byte	0x1
	.byte	0x12
	.byte	0x13
	.4byte	0x20e
	.byte	0
	.byte	0x1d
	.4byte	.LASF17
	.byte	0x4
	.2byte	0x325
	.byte	0x14
	.byte	0x3
	.4byte	0x24c
	.byte	0x1e
	.string	"v"
	.byte	0x4
	.2byte	0x325
	.byte	0x38
	.4byte	0x50
	.byte	0
	.byte	0x9
	.4byte	.LASF18
	.byte	0x5
	.byte	0x20
	.4byte	0x26c
	.byte	0x6
	.string	"v"
	.byte	0x5
	.byte	0x20
	.byte	0x33
	.4byte	0x5c
	.byte	0x6
	.string	"a"
	.byte	0x5
	.byte	0x20
	.byte	0x44
	.4byte	0x5c
	.byte	0
	.byte	0x1f
	.4byte	0x21a
	.4byte	.LFB316
	.4byte	.LFE316-.LFB316
	.byte	0x1
	.byte	0x9c
	.byte	0x20
	.4byte	0x227
	.byte	0x1
	.byte	0x5a
	.byte	0x21
	.4byte	0x21a
	.4byte	.LBB16
	.4byte	.LBE16-.LBB16
	.byte	0x1
	.byte	0x15
	.byte	0x3
	.byte	0xb
	.4byte	0x227
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.byte	0x1
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
	.byte	0x2
	.byte	0x5
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x3
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0
	.byte	0x4
	.byte	0x1d
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x6
	.byte	0x58
	.byte	0x21
	.byte	0x2
	.byte	0x59
	.byte	0xb
	.byte	0x57
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x5
	.byte	0x48
	.byte	0
	.byte	0x7d
	.byte	0x1
	.byte	0x7f
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x6
	.byte	0x5
	.byte	0
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
	.byte	0
	.byte	0
	.byte	0x7
	.byte	0x2e
	.byte	0x1
	.byte	0x3f
	.byte	0x19
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0x21
	.byte	0x2
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0x21
	.byte	0xd
	.byte	0x49
	.byte	0x13
	.byte	0x3c
	.byte	0x19
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x8
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0x21
	.byte	0x4
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x9
	.byte	0x2e
	.byte	0x1
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0x21
	.byte	0x14
	.byte	0x27
	.byte	0x19
	.byte	0x20
	.byte	0x21
	.byte	0x3
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xa
	.byte	0x1d
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0x52
	.byte	0x1
	.byte	0x55
	.byte	0x17
	.byte	0x58
	.byte	0x21
	.byte	0x1
	.byte	0x59
	.byte	0xb
	.byte	0x57
	.byte	0x21
	.byte	0x3
	.byte	0
	.byte	0
	.byte	0xb
	.byte	0x5
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xc
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
	.byte	0xd
	.byte	0x16
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xe
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
	.byte	0xf
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
	.byte	0x3c
	.byte	0x19
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x10
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
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x11
	.byte	0x34
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x12
	.byte	0x34
	.byte	0
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
	.byte	0
	.byte	0
	.byte	0x13
	.byte	0x34
	.byte	0
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
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x14
	.byte	0x34
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x15
	.byte	0x1d
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x6
	.byte	0x58
	.byte	0xb
	.byte	0x59
	.byte	0x5
	.byte	0x57
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x16
	.byte	0x5
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x17
	.byte	0x2e
	.byte	0x1
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x27
	.byte	0x19
	.byte	0x49
	.byte	0x13
	.byte	0x20
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x18
	.byte	0x34
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x19
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
	.byte	0x27
	.byte	0x19
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x6
	.byte	0x40
	.byte	0x18
	.byte	0x7a
	.byte	0x19
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x1a
	.byte	0x5
	.byte	0
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
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x1b
	.byte	0x26
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x1c
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
	.byte	0x27
	.byte	0x19
	.byte	0x20
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x1d
	.byte	0x2e
	.byte	0x1
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0x27
	.byte	0x19
	.byte	0x20
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x1e
	.byte	0x5
	.byte	0
	.byte	0x3
	.byte	0x8
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x1f
	.byte	0x2e
	.byte	0x1
	.byte	0x31
	.byte	0x13
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
	.byte	0x20
	.byte	0x5
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x21
	.byte	0x1d
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x6
	.byte	0x58
	.byte	0xb
	.byte	0x59
	.byte	0xb
	.byte	0x57
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loclists,"",@progbits
	.4byte	.Ldebug_loc3-.Ldebug_loc2
.Ldebug_loc2:
	.2byte	0x5
	.byte	0x4
	.byte	0
	.4byte	0
.Ldebug_loc0:
.LLST4:
	.byte	0x7
	.4byte	.LVL5
	.4byte	.LVL6
	.byte	0x5
	.byte	0x7e
	.byte	0
	.byte	0x34
	.byte	0x21
	.byte	0x9f
	.byte	0x7
	.4byte	.LVL6
	.4byte	.LVL8
	.byte	0x1
	.byte	0x5e
	.byte	0
.LLST5:
	.byte	0x7
	.4byte	.LVL10
	.4byte	.LVL11-1
	.byte	0x1
	.byte	0x5a
	.byte	0x7
	.4byte	.LVL11
	.4byte	.LVL12-1
	.byte	0x1
	.byte	0x5a
	.byte	0x7
	.4byte	.LVL12
	.4byte	.LFE323
	.byte	0x1
	.byte	0x5a
	.byte	0
.LLST6:
	.byte	0x7
	.4byte	.LVL5
	.4byte	.LVL6
	.byte	0x5
	.byte	0x7e
	.byte	0
	.byte	0x34
	.byte	0x21
	.byte	0x9f
	.byte	0x7
	.4byte	.LVL6
	.4byte	.LVL7
	.byte	0x1
	.byte	0x5e
	.byte	0
.LLST7:
	.byte	0x7
	.4byte	.LVL7
	.4byte	.LVL9
	.byte	0x2
	.byte	0x31
	.byte	0x9f
	.byte	0
.LLST8:
	.byte	0x7
	.4byte	.LVL7
	.4byte	.LVL9
	.byte	0x6
	.byte	0x9e
	.byte	0x4
	.4byte	0xf0006814
	.byte	0
.LLST0:
	.byte	0x7
	.4byte	.LVL1
	.4byte	.LVL2
	.byte	0x1
	.byte	0x5a
	.byte	0x7
	.4byte	.LVL2
	.4byte	.LFE317
	.byte	0x1
	.byte	0x5a
	.byte	0
.LLST2:
	.byte	0x7
	.4byte	.LVL2
	.4byte	.LVL3
	.byte	0x1
	.byte	0x5c
	.byte	0x7
	.4byte	.LVL4
	.4byte	.LFE317
	.byte	0x1
	.byte	0x5c
	.byte	0
.Ldebug_loc3:
	.section	.debug_aranges,"",@progbits
	.4byte	0x24
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.Ltext0
	.4byte	.Letext0-.Ltext0
	.4byte	.LFB323
	.4byte	.LFE323-.LFB323
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
.LLRL1:
	.byte	0x6
	.4byte	.LBB22
	.4byte	.LBE22
	.byte	0x6
	.4byte	.LBB30
	.4byte	.LBE30
	.byte	0x6
	.4byte	.LBB31
	.4byte	.LBE31
	.byte	0
.LLRL3:
	.byte	0x6
	.4byte	.LBB24
	.4byte	.LBE24
	.byte	0x6
	.4byte	.LBB27
	.4byte	.LBE27
	.byte	0
.LLRL10:
	.byte	0x6
	.4byte	.Ltext0
	.4byte	.Letext0
	.byte	0x6
	.4byte	.LFB323
	.4byte	.LFE323
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF18:
	.string	"csr_write_simple"
.LASF11:
	.string	"matmul"
.LASF12:
	.string	"qsort"
.LASF6:
	.string	"unsigned char"
.LASF8:
	.string	"long unsigned int"
.LASF7:
	.string	"short unsigned int"
.LASF15:
	.string	"putchar"
.LASF21:
	.string	"main"
.LASF22:
	.string	"irq_getmask"
.LASF16:
	.string	"irq_setmask"
.LASF10:
	.string	"unsigned int"
.LASF19:
	.string	"GNU C17 12.1.0 -mabi=ilp32 -mtune=rocket -misa-spec=2.2 -march=rv32i -g -O3 -ffreestanding"
.LASF17:
	.string	"user_irq_0_ev_enable_write"
.LASF9:
	.string	"long long unsigned int"
.LASF5:
	.string	"long long int"
.LASF13:
	.string	"mask"
.LASF23:
	.string	"print"
.LASF3:
	.string	"short int"
.LASF20:
	.string	"uint32_t"
.LASF4:
	.string	"long int"
.LASF14:
	.string	"char"
.LASF2:
	.string	"signed char"
	.section	.debug_line_str,"MS",@progbits,1
.LASF1:
	.string	"/home/ubuntu/SoCLab/final_project/testbench/top"
.LASF0:
	.string	"top.c"
	.ident	"GCC: (g1ea978e3066) 12.1.0"
