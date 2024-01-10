	.file	"func.c"
	.option nopic
	.attribute arch, "rv32i2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 0 "/home/ubuntu/SoCLab/final_project/testbench/top" "func.c"
	.section	.mprj,"ax",@progbits
	.align	2
	.globl	uart_write
	.type	uart_write, @function
uart_write:
.LFB321:
	.file 1 "func.c"
	.loc 1 7 1
	.cfi_startproc
.LVL0:
	.loc 1 8 5
	.loc 1 8 14 is_stmt 0
	li	a4,805306368
.L2:
	.loc 1 8 11 is_stmt 1 discriminator 1
	.loc 1 8 14 is_stmt 0 discriminator 1
	lw	a5,8(a4)
	.loc 1 8 11 discriminator 1
	andi	a5,a5,8
	bne	a5,zero,.L2
	.loc 1 9 5 is_stmt 1
	.loc 1 9 39 is_stmt 0
	li	a5,805306368
	sw	a0,4(a5)
	.loc 1 10 1
	ret
	.cfi_endproc
.LFE321:
	.size	uart_write, .-uart_write
	.align	2
	.globl	uart_write_char
	.type	uart_write_char, @function
uart_write_char:
.LFB322:
	.loc 1 13 1 is_stmt 1
	.cfi_startproc
.LVL1:
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	mv	s0,a0
	.loc 1 14 2
	.loc 1 14 5 is_stmt 0
	li	a5,10
	beq	a0,a5,.L9
.LVL2:
.L5:
	.loc 1 18 14 discriminator 1
	li	a4,805306368
.L6:
	.loc 1 18 11 is_stmt 1 discriminator 1
	.loc 1 18 14 is_stmt 0 discriminator 1
	lw	a5,8(a4)
	.loc 1 18 11 discriminator 1
	andi	a5,a5,8
	bne	a5,zero,.L6
	.loc 1 19 5 is_stmt 1
	.loc 1 19 39 is_stmt 0
	li	a5,805306368
	sw	s0,4(a5)
	.loc 1 20 1
	lw	ra,12(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.LVL3:
.L9:
	.cfi_restore_state
	.loc 1 15 3 is_stmt 1
	li	a0,13
.LVL4:
	call	uart_write_char
.LVL5:
	j	.L5
	.cfi_endproc
.LFE322:
	.size	uart_write_char, .-uart_write_char
	.align	2
	.globl	uart_write_string
	.type	uart_write_string, @function
uart_write_string:
.LFB323:
	.loc 1 23 1
	.cfi_startproc
.LVL6:
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	mv	s0,a0
	.loc 1 24 5
	.loc 1 24 12
	lbu	a0,0(a0)
.LVL7:
	beq	a0,zero,.L10
.L12:
	.loc 1 25 9
	.loc 1 25 28 is_stmt 0
	addi	s0,s0,1
.LVL8:
	.loc 1 25 9
	call	uart_write_char
.LVL9:
	.loc 1 24 12 is_stmt 1
	lbu	a0,0(s0)
	bne	a0,zero,.L12
.L10:
	.loc 1 26 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
.LVL10:
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE323:
	.size	uart_write_string, .-uart_write_string
	.align	2
	.globl	uart_read_char
	.type	uart_read_char, @function
uart_read_char:
.LFB324:
	.loc 1 30 1 is_stmt 1
	.cfi_startproc
	li	a0,0
	.loc 1 31 2
	.loc 1 32 5
	.loc 1 32 12 is_stmt 0
	li	a5,805306368
	lw	a5,8(a5)
	.loc 1 32 44
	srli	a5,a5,5
	.loc 1 32 7
	bne	a5,zero,.L16
	.loc 1 32 67 discriminator 1
	li	a5,805306368
	lw	a5,8(a5)
	.loc 1 32 99 discriminator 1
	srli	a5,a5,4
	.loc 1 32 60 discriminator 1
	bne	a5,zero,.L16
.LVL11:
.LBB2:
	.loc 1 34 13 is_stmt 1 discriminator 3
 #APP
# 34 "func.c" 1
	nop
# 0 "" 2
	.loc 1 33 32 discriminator 3
.LVL12:
	.loc 1 33 26 discriminator 3
 #NO_APP
.LBE2:
	.loc 1 36 9 discriminator 3
	.loc 1 36 16 is_stmt 0 discriminator 3
	li	a5,805306368
	lw	a0,0(a5)
	.loc 1 36 13 discriminator 3
	andi	a0,a0,0xff
.LVL13:
.L16:
	.loc 1 39 5 is_stmt 1
	.loc 1 40 1 is_stmt 0
	ret
	.cfi_endproc
.LFE324:
	.size	uart_read_char, .-uart_read_char
	.align	2
	.globl	uart_read
	.type	uart_read, @function
uart_read:
.LFB325:
	.loc 1 43 1 is_stmt 1
	.cfi_startproc
	.loc 1 44 5
	.loc 1 45 5
	.loc 1 45 12 is_stmt 0
	li	a5,805306368
	lw	a5,8(a5)
	.loc 1 45 44
	srli	a5,a5,5
	.loc 1 45 7
	bne	a5,zero,.L18
	.loc 1 45 67 discriminator 1
	li	a5,805306368
	lw	a5,8(a5)
	.loc 1 45 99 discriminator 1
	srli	a5,a5,4
	.loc 1 45 60 discriminator 1
	bne	a5,zero,.L18
.LVL14:
.LBB3:
	.loc 1 47 13 is_stmt 1 discriminator 3
 #APP
# 47 "func.c" 1
	nop
# 0 "" 2
	.loc 1 46 32 discriminator 3
.LVL15:
	.loc 1 46 26 discriminator 3
 #NO_APP
.LBE3:
	.loc 1 49 9 discriminator 3
	.loc 1 49 16 is_stmt 0 discriminator 3
	li	a5,805306368
	lw	a0,0(a5)
.LVL16:
.L18:
	.loc 1 52 5 is_stmt 1
	.loc 1 53 1 is_stmt 0
	ret
	.cfi_endproc
.LFE325:
	.size	uart_read, .-uart_read
	.section	.mprjram,"ax",@progbits
	.align	2
	.globl	matmul
	.type	matmul, @function
matmul:
.LFB326:
	.loc 1 97 1 is_stmt 1
	.cfi_startproc
	.loc 1 98 2
	.loc 1 98 37 is_stmt 0
	li	a5,838860800
	sw	zero,16(a5)
	.loc 1 99 2 is_stmt 1
	.loc 1 99 37 is_stmt 0
	li	a2,1
	sw	a2,20(a5)
	.loc 1 100 2 is_stmt 1
	.loc 1 100 37 is_stmt 0
	li	a3,2
	sw	a3,24(a5)
	.loc 1 101 2 is_stmt 1
	.loc 1 101 37 is_stmt 0
	li	a4,3
	sw	a4,28(a5)
	.loc 1 102 2 is_stmt 1
	.loc 1 102 37 is_stmt 0
	sw	zero,32(a5)
	.loc 1 103 2 is_stmt 1
	.loc 1 103 37 is_stmt 0
	sw	a2,36(a5)
	.loc 1 104 2 is_stmt 1
	.loc 1 104 37 is_stmt 0
	sw	a3,40(a5)
	.loc 1 105 2 is_stmt 1
	.loc 1 105 37 is_stmt 0
	sw	a4,44(a5)
	.loc 1 106 2 is_stmt 1
	.loc 1 106 37 is_stmt 0
	sw	zero,48(a5)
	.loc 1 107 2 is_stmt 1
	.loc 1 107 37 is_stmt 0
	sw	a2,52(a5)
	.loc 1 108 2 is_stmt 1
	.loc 1 108 37 is_stmt 0
	sw	a3,56(a5)
	.loc 1 109 2 is_stmt 1
	.loc 1 109 37 is_stmt 0
	sw	a4,60(a5)
	.loc 1 110 2 is_stmt 1
	.loc 1 110 37 is_stmt 0
	sw	zero,64(a5)
	.loc 1 111 2 is_stmt 1
	.loc 1 111 37 is_stmt 0
	sw	a2,68(a5)
	.loc 1 112 2 is_stmt 1
	.loc 1 112 37 is_stmt 0
	sw	a3,72(a5)
	.loc 1 113 2 is_stmt 1
	.loc 1 113 37 is_stmt 0
	sw	a4,76(a5)
	.loc 1 115 2 is_stmt 1
	.loc 1 115 37 is_stmt 0
	sw	a2,80(a5)
	.loc 1 116 2 is_stmt 1
	.loc 1 116 37 is_stmt 0
	sw	a3,84(a5)
	.loc 1 117 2 is_stmt 1
	.loc 1 117 37 is_stmt 0
	sw	a4,88(a5)
	.loc 1 118 2 is_stmt 1
	.loc 1 118 37 is_stmt 0
	li	a4,4
	sw	a4,92(a5)
	.loc 1 119 2 is_stmt 1
	.loc 1 119 37 is_stmt 0
	li	a4,5
	sw	a4,96(a5)
	.loc 1 120 2 is_stmt 1
	.loc 1 120 37 is_stmt 0
	li	a4,6
	sw	a4,100(a5)
	.loc 1 121 2 is_stmt 1
	.loc 1 121 37 is_stmt 0
	li	a4,7
	sw	a4,104(a5)
	.loc 1 122 2 is_stmt 1
	.loc 1 122 37 is_stmt 0
	li	a4,8
	sw	a4,108(a5)
	.loc 1 123 2 is_stmt 1
	.loc 1 123 37 is_stmt 0
	li	a4,9
	sw	a4,112(a5)
	.loc 1 124 2 is_stmt 1
	.loc 1 124 37 is_stmt 0
	li	a4,10
	sw	a4,116(a5)
	.loc 1 125 2 is_stmt 1
	.loc 1 125 37 is_stmt 0
	li	a4,11
	sw	a4,120(a5)
	.loc 1 126 2 is_stmt 1
	.loc 1 126 37 is_stmt 0
	li	a4,12
	sw	a4,124(a5)
	.loc 1 127 2 is_stmt 1
	.loc 1 127 37 is_stmt 0
	li	a4,13
	sw	a4,128(a5)
	.loc 1 128 2 is_stmt 1
	.loc 1 128 37 is_stmt 0
	li	a4,14
	sw	a4,132(a5)
	.loc 1 129 2 is_stmt 1
	.loc 1 129 37 is_stmt 0
	li	a4,15
	sw	a4,136(a5)
	.loc 1 130 2 is_stmt 1
	.loc 1 130 37 is_stmt 0
	li	a4,16
	sw	a4,140(a5)
	.loc 1 132 2 is_stmt 1
.LBB4:
	.loc 1 132 7
.LVL17:
	.loc 1 132 17
	lui	a5,%hi(.LANCHOR0)
	addi	a5,a5,%lo(.LANCHOR0)
	addi	a2,a5,64
	.loc 1 133 19 is_stmt 0
	li	a3,838860800
.LVL18:
.L20:
	.loc 1 133 3 is_stmt 1 discriminator 3
	.loc 1 133 19 is_stmt 0 discriminator 3
	lw	a4,144(a3)
	.loc 1 133 16 discriminator 3
	sw	a4,0(a5)
	.loc 1 132 23 is_stmt 1 discriminator 3
	.loc 1 132 17 discriminator 3
	addi	a5,a5,4
	bne	a5,a2,.L20
.LBE4:
	.loc 1 135 2
	.loc 1 135 9 is_stmt 0
	lui	a0,%hi(.LANCHOR0)
	.loc 1 136 1
	addi	a0,a0,%lo(.LANCHOR0)
	ret
	.cfi_endproc
.LFE326:
	.size	matmul, .-matmul
	.align	2
	.globl	fir
	.type	fir, @function
fir:
.LFB327:
	.loc 1 157 56 is_stmt 1
	.cfi_startproc
	.loc 1 159 2
	.loc 1 159 37 is_stmt 0
	li	a5,822083584
	sw	zero,16(a5)
	.loc 1 160 2 is_stmt 1
	.loc 1 160 37 is_stmt 0
	li	a4,-10
	sw	a4,20(a5)
	.loc 1 161 2 is_stmt 1
	.loc 1 161 37 is_stmt 0
	li	a3,-9
	sw	a3,24(a5)
	.loc 1 162 2 is_stmt 1
	.loc 1 162 37 is_stmt 0
	li	a2,23
	sw	a2,28(a5)
	.loc 1 163 2 is_stmt 1
	.loc 1 163 37 is_stmt 0
	li	a1,56
	sw	a1,32(a5)
	.loc 1 164 2 is_stmt 1
	.loc 1 164 37 is_stmt 0
	li	a0,63
	sw	a0,36(a5)
	.loc 1 165 2 is_stmt 1
	.loc 1 165 37 is_stmt 0
	sw	a1,40(a5)
	.loc 1 166 2 is_stmt 1
	.loc 1 166 37 is_stmt 0
	sw	a2,44(a5)
	.loc 1 167 2 is_stmt 1
	.loc 1 167 37 is_stmt 0
	sw	a3,48(a5)
	.loc 1 168 2 is_stmt 1
	.loc 1 168 37 is_stmt 0
	sw	a4,52(a5)
	.loc 1 169 2 is_stmt 1
	.loc 1 169 37 is_stmt 0
	sw	zero,56(a5)
	.loc 1 170 2 is_stmt 1
	.loc 1 170 37 is_stmt 0
	li	a4,11
	sw	a4,68(a5)
	.loc 1 172 2 is_stmt 1
	.loc 1 172 37 is_stmt 0
	li	a3,1
	sw	a3,60(a5)
	.loc 1 173 2 is_stmt 1
	.loc 1 173 21 is_stmt 0
	lw	a3,64(a5)
	.loc 1 173 18
	lui	a0,%hi(.LANCHOR0)
	addi	a0,a0,%lo(.LANCHOR0)
	sw	a3,64(a0)
	.loc 1 174 2 is_stmt 1
	.loc 1 174 37 is_stmt 0
	li	a3,2
	sw	a3,60(a5)
	.loc 1 175 2 is_stmt 1
	.loc 1 175 21 is_stmt 0
	lw	a3,64(a5)
	.loc 1 175 18
	sw	a3,68(a0)
	.loc 1 176 2 is_stmt 1
	.loc 1 176 37 is_stmt 0
	li	a3,3
	sw	a3,60(a5)
	.loc 1 177 2 is_stmt 1
	.loc 1 177 21 is_stmt 0
	lw	a3,64(a5)
	.loc 1 177 18
	sw	a3,72(a0)
	.loc 1 178 2 is_stmt 1
	.loc 1 178 37 is_stmt 0
	li	a3,4
	sw	a3,60(a5)
	.loc 1 179 2 is_stmt 1
	.loc 1 179 21 is_stmt 0
	lw	a3,64(a5)
	.loc 1 179 18
	sw	a3,76(a0)
	.loc 1 181 2 is_stmt 1
	.loc 1 181 37 is_stmt 0
	li	a3,5
	sw	a3,60(a5)
	.loc 1 182 2 is_stmt 1
	.loc 1 182 21 is_stmt 0
	lw	a3,64(a5)
	.loc 1 182 18
	sw	a3,80(a0)
	.loc 1 183 2 is_stmt 1
	.loc 1 183 37 is_stmt 0
	li	a3,6
	sw	a3,60(a5)
	.loc 1 184 2 is_stmt 1
	.loc 1 184 21 is_stmt 0
	lw	a3,64(a5)
	.loc 1 184 18
	sw	a3,84(a0)
	.loc 1 185 2 is_stmt 1
	.loc 1 185 37 is_stmt 0
	li	a3,7
	sw	a3,60(a5)
	.loc 1 186 2 is_stmt 1
	.loc 1 186 21 is_stmt 0
	lw	a3,64(a5)
	.loc 1 186 18
	sw	a3,88(a0)
	.loc 1 187 2 is_stmt 1
	.loc 1 187 37 is_stmt 0
	li	a3,8
	sw	a3,60(a5)
	.loc 1 188 2 is_stmt 1
	.loc 1 188 21 is_stmt 0
	lw	a3,64(a5)
	.loc 1 188 18
	sw	a3,92(a0)
	.loc 1 189 2 is_stmt 1
	.loc 1 189 37 is_stmt 0
	li	a3,9
	sw	a3,60(a5)
	.loc 1 190 2 is_stmt 1
	.loc 1 190 21 is_stmt 0
	lw	a3,64(a5)
	.loc 1 190 18
	sw	a3,96(a0)
	.loc 1 191 2 is_stmt 1
	.loc 1 191 37 is_stmt 0
	li	a3,10
	sw	a3,60(a5)
	.loc 1 192 2 is_stmt 1
	.loc 1 192 21 is_stmt 0
	lw	a3,64(a5)
	.loc 1 192 18
	sw	a3,100(a0)
	.loc 1 193 2 is_stmt 1
	.loc 1 193 37 is_stmt 0
	sw	a4,60(a5)
	.loc 1 194 2 is_stmt 1
	.loc 1 194 22 is_stmt 0
	lw	a5,64(a5)
	.loc 1 194 19
	sw	a5,104(a0)
	.loc 1 195 2 is_stmt 1
	.loc 1 196 1 is_stmt 0
	addi	a0,a0,64
	ret
	.cfi_endproc
.LFE327:
	.size	fir, .-fir
	.align	2
	.globl	qsort
	.type	qsort, @function
qsort:
.LFB328:
	.loc 1 216 58 is_stmt 1
	.cfi_startproc
	.loc 1 217 2
	.loc 1 217 37 is_stmt 0
	li	a5,855638016
	li	a4,893
	sw	a4,16(a5)
	.loc 1 218 2 is_stmt 1
	.loc 1 218 37 is_stmt 0
	li	a4,40
	sw	a4,20(a5)
	.loc 1 219 2 is_stmt 1
	.loc 1 219 37 is_stmt 0
	li	a4,4096
	addi	a3,a4,-863
	sw	a3,24(a5)
	.loc 1 220 2 is_stmt 1
	.loc 1 220 37 is_stmt 0
	addi	a3,a4,171
	sw	a3,28(a5)
	.loc 1 221 2 is_stmt 1
	.loc 1 221 37 is_stmt 0
	addi	a3,a4,-1427
	sw	a3,32(a5)
	.loc 1 222 2 is_stmt 1
	.loc 1 222 37 is_stmt 0
	addi	a3,a4,-1555
	sw	a3,36(a5)
	.loc 1 223 2 is_stmt 1
	.loc 1 223 37 is_stmt 0
	li	a3,8192
	addi	a3,a3,881
	sw	a3,40(a5)
	.loc 1 224 2 is_stmt 1
	.loc 1 224 37 is_stmt 0
	addi	a3,a4,1927
	sw	a3,44(a5)
	.loc 1 225 2 is_stmt 1
	.loc 1 225 37 is_stmt 0
	addi	a3,a4,1585
	sw	a3,48(a5)
	.loc 1 226 2 is_stmt 1
	.loc 1 226 37 is_stmt 0
	addi	a4,a4,526
	sw	a4,52(a5)
	.loc 1 228 2 is_stmt 1
.LBB5:
	.loc 1 228 7
.LVL19:
	.loc 1 228 17
	lui	a3,%hi(.LANCHOR0)
	addi	a3,a3,%lo(.LANCHOR0)
	addi	a5,a3,108
	addi	a3,a3,148
	.loc 1 229 20 is_stmt 0
	li	a2,855638016
.LVL20:
.L24:
	.loc 1 229 3 is_stmt 1 discriminator 3
	.loc 1 229 20 is_stmt 0 discriminator 3
	lw	a4,56(a2)
	.loc 1 229 17 discriminator 3
	sw	a4,0(a5)
	.loc 1 228 23 is_stmt 1 discriminator 3
	.loc 1 228 17 discriminator 3
	addi	a5,a5,4
	bne	a5,a3,.L24
.LBE5:
	.loc 1 231 2
	.loc 1 232 1 is_stmt 0
	lui	a0,%hi(.LANCHOR0+108)
	addi	a0,a0,%lo(.LANCHOR0+108)
	ret
	.cfi_endproc
.LFE328:
	.size	qsort, .-qsort
	.globl	QS_results
	.globl	outputsignal
	.globl	result_mm
	.bss
	.align	2
	.set	.LANCHOR0,. + 0
	.type	result_mm, @object
	.size	result_mm, 64
result_mm:
	.zero	64
	.type	outputsignal, @object
	.size	outputsignal, 44
outputsignal:
	.zero	44
	.type	QS_results, @object
	.size	QS_results, 40
QS_results:
	.zero	40
	.text
.Letext0:
	.file 2 "/opt/riscv/lib/gcc/riscv32-unknown-elf/12.1.0/include/stdint-gcc.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x25a
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0xc
	.4byte	.LASF21
	.byte	0x1d
	.4byte	.LASF0
	.4byte	.LASF1
	.4byte	.LLRL6
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
	.4byte	.LASF22
	.byte	0x2
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
	.byte	0x5
	.4byte	0x6a
	.4byte	0x88
	.byte	0x6
	.4byte	0x71
	.byte	0xf
	.byte	0
	.byte	0x7
	.4byte	.LASF11
	.byte	0x5f
	.4byte	0x78
	.byte	0x5
	.byte	0x3
	.4byte	result_mm
	.byte	0x5
	.4byte	0x6a
	.4byte	0xa8
	.byte	0x6
	.4byte	0x71
	.byte	0xa
	.byte	0
	.byte	0x7
	.4byte	.LASF12
	.byte	0x8c
	.4byte	0x98
	.byte	0x5
	.byte	0x3
	.4byte	outputsignal
	.byte	0x5
	.4byte	0x6a
	.4byte	0xc8
	.byte	0x6
	.4byte	0x71
	.byte	0x9
	.byte	0
	.byte	0x7
	.4byte	.LASF13
	.byte	0xc8
	.4byte	0xb8
	.byte	0x5
	.byte	0x3
	.4byte	QS_results
	.byte	0x2
	.4byte	.LASF14
	.byte	0xd8
	.byte	0x33
	.4byte	0x109
	.4byte	.LFB328
	.4byte	.LFE328-.LFB328
	.byte	0x1
	.byte	0x9c
	.4byte	0x109
	.byte	0x3
	.4byte	.LBB5
	.4byte	.LBE5-.LBB5
	.byte	0x4
	.string	"i"
	.byte	0xe4
	.byte	0xb
	.4byte	0x6a
	.4byte	.LLST5
	.byte	0
	.byte	0
	.byte	0x8
	.4byte	0x6a
	.byte	0xf
	.string	"fir"
	.byte	0x1
	.byte	0x9d
	.byte	0x33
	.4byte	0x109
	.4byte	.LFB327
	.4byte	.LFE327-.LFB327
	.byte	0x1
	.byte	0x9c
	.byte	0x2
	.4byte	.LASF15
	.byte	0x60
	.byte	0x33
	.4byte	0x109
	.4byte	.LFB326
	.4byte	.LFE326-.LFB326
	.byte	0x1
	.byte	0x9c
	.4byte	0x155
	.byte	0x3
	.4byte	.LBB4
	.4byte	.LBE4-.LBB4
	.byte	0x4
	.string	"i"
	.byte	0x84
	.byte	0xb
	.4byte	0x6a
	.4byte	.LLST4
	.byte	0
	.byte	0
	.byte	0x2
	.4byte	.LASF16
	.byte	0x2a
	.byte	0x2f
	.4byte	0x6a
	.4byte	.LFB325
	.4byte	.LFE325-.LFB325
	.byte	0x1
	.byte	0x9c
	.4byte	0x193
	.byte	0x9
	.string	"num"
	.byte	0x2c
	.byte	0x9
	.4byte	0x6a
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.4byte	.LBB3
	.4byte	.LBE3-.LBB3
	.byte	0x4
	.string	"i"
	.byte	0x2e
	.byte	0x11
	.4byte	0x6a
	.4byte	.LLST3
	.byte	0
	.byte	0
	.byte	0x2
	.4byte	.LASF17
	.byte	0x1d
	.byte	0x30
	.4byte	0x1d1
	.4byte	.LFB324
	.4byte	.LFE324-.LFB324
	.byte	0x1
	.byte	0x9c
	.4byte	0x1d1
	.byte	0x9
	.string	"num"
	.byte	0x1f
	.byte	0x7
	.4byte	0x1d1
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.byte	0x4
	.string	"i"
	.byte	0x21
	.byte	0x11
	.4byte	0x6a
	.4byte	.LLST2
	.byte	0
	.byte	0
	.byte	0x1
	.byte	0x1
	.byte	0x8
	.4byte	.LASF18
	.byte	0x10
	.4byte	0x1d1
	.byte	0xa
	.4byte	.LASF19
	.byte	0x16
	.4byte	.LFB323
	.4byte	.LFE323-.LFB323
	.byte	0x1
	.byte	0x9c
	.4byte	0x208
	.byte	0xb
	.string	"s"
	.byte	0x16
	.byte	0x4e
	.4byte	0x208
	.4byte	.LLST1
	.byte	0x11
	.4byte	.LVL9
	.4byte	0x20d
	.byte	0
	.byte	0x8
	.4byte	0x1d8
	.byte	0xa
	.4byte	.LASF20
	.byte	0xc
	.4byte	.LFB322
	.4byte	.LFE322-.LFB322
	.byte	0x1
	.byte	0x9c
	.4byte	0x23e
	.byte	0xb
	.string	"c"
	.byte	0xc
	.byte	0x45
	.4byte	0x1d1
	.4byte	.LLST0
	.byte	0x12
	.4byte	.LVL5
	.4byte	0x20d
	.byte	0x13
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x3d
	.byte	0
	.byte	0
	.byte	0x14
	.4byte	.LASF23
	.byte	0x1
	.byte	0x6
	.byte	0x30
	.4byte	.LFB321
	.4byte	.LFE321-.LFB321
	.byte	0x1
	.byte	0x9c
	.byte	0x15
	.string	"n"
	.byte	0x1
	.byte	0x6
	.byte	0x3f
	.4byte	0x6a
	.byte	0x1
	.byte	0x5a
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
	.byte	0x2e
	.byte	0x1
	.byte	0x3f
	.byte	0x19
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0x21
	.byte	0x1
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
	.byte	0x7a
	.byte	0x19
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x3
	.byte	0xb
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0x4
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
	.byte	0x34
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0x21
	.byte	0x1
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
	.byte	0xa
	.byte	0x2e
	.byte	0x1
	.byte	0x3f
	.byte	0x19
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0x21
	.byte	0x1
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0x21
	.byte	0x30
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
	.byte	0xb
	.byte	0x5
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
	.byte	0x17
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
	.byte	0
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
	.byte	0x7a
	.byte	0x19
	.byte	0
	.byte	0
	.byte	0x10
	.byte	0x26
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x11
	.byte	0x48
	.byte	0
	.byte	0x7d
	.byte	0x1
	.byte	0x7f
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x12
	.byte	0x48
	.byte	0x1
	.byte	0x7d
	.byte	0x1
	.byte	0x7f
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x13
	.byte	0x49
	.byte	0
	.byte	0x2
	.byte	0x18
	.byte	0x7e
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x14
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
	.byte	0
	.byte	0
	.byte	0x15
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
	.byte	0x18
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
.LLST5:
	.byte	0x7
	.4byte	.LVL19
	.4byte	.LVL20
	.byte	0x2
	.byte	0x30
	.byte	0x9f
	.byte	0
.LLST4:
	.byte	0x7
	.4byte	.LVL17
	.4byte	.LVL18
	.byte	0x2
	.byte	0x30
	.byte	0x9f
	.byte	0
.LLST3:
	.byte	0x7
	.4byte	.LVL14
	.4byte	.LVL15
	.byte	0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x7
	.4byte	.LVL15
	.4byte	.LVL16
	.byte	0x2
	.byte	0x31
	.byte	0x9f
	.byte	0
.LLST2:
	.byte	0x7
	.4byte	.LVL11
	.4byte	.LVL12
	.byte	0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x7
	.4byte	.LVL12
	.4byte	.LVL13
	.byte	0x2
	.byte	0x31
	.byte	0x9f
	.byte	0
.LLST1:
	.byte	0x7
	.4byte	.LVL6
	.4byte	.LVL7
	.byte	0x1
	.byte	0x5a
	.byte	0x7
	.4byte	.LVL7
	.4byte	.LVL10
	.byte	0x1
	.byte	0x58
	.byte	0
.LLST0:
	.byte	0x7
	.4byte	.LVL1
	.4byte	.LVL2
	.byte	0x1
	.byte	0x5a
	.byte	0x7
	.4byte	.LVL2
	.4byte	.LVL3
	.byte	0x4
	.byte	0xa3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.byte	0x7
	.4byte	.LVL3
	.4byte	.LVL4
	.byte	0x1
	.byte	0x5a
	.byte	0x7
	.4byte	.LVL4
	.4byte	.LFE322
	.byte	0x4
	.byte	0xa3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.byte	0
.Ldebug_loc3:
	.section	.debug_aranges,"",@progbits
	.4byte	0x54
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB321
	.4byte	.LFE321-.LFB321
	.4byte	.LFB322
	.4byte	.LFE322-.LFB322
	.4byte	.LFB323
	.4byte	.LFE323-.LFB323
	.4byte	.LFB324
	.4byte	.LFE324-.LFB324
	.4byte	.LFB325
	.4byte	.LFE325-.LFB325
	.4byte	.LFB326
	.4byte	.LFE326-.LFB326
	.4byte	.LFB327
	.4byte	.LFE327-.LFB327
	.4byte	.LFB328
	.4byte	.LFE328-.LFB328
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
.LLRL6:
	.byte	0x6
	.4byte	.LFB321
	.4byte	.LFE321
	.byte	0x6
	.4byte	.LFB322
	.4byte	.LFE322
	.byte	0x6
	.4byte	.LFB323
	.4byte	.LFE323
	.byte	0x6
	.4byte	.LFB324
	.4byte	.LFE324
	.byte	0x6
	.4byte	.LFB325
	.4byte	.LFE325
	.byte	0x6
	.4byte	.LFB326
	.4byte	.LFE326
	.byte	0x6
	.4byte	.LFB327
	.4byte	.LFE327
	.byte	0x6
	.4byte	.LFB328
	.4byte	.LFE328
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF23:
	.string	"uart_write"
.LASF21:
	.string	"GNU C17 12.1.0 -mabi=ilp32 -mtune=rocket -misa-spec=2.2 -march=rv32i -g -O1 -ffreestanding"
.LASF16:
	.string	"uart_read"
.LASF11:
	.string	"result_mm"
.LASF15:
	.string	"matmul"
.LASF14:
	.string	"qsort"
.LASF6:
	.string	"unsigned char"
.LASF19:
	.string	"uart_write_string"
.LASF8:
	.string	"long unsigned int"
.LASF7:
	.string	"short unsigned int"
.LASF10:
	.string	"unsigned int"
.LASF17:
	.string	"uart_read_char"
.LASF9:
	.string	"long long unsigned int"
.LASF20:
	.string	"uart_write_char"
.LASF12:
	.string	"outputsignal"
.LASF5:
	.string	"long long int"
.LASF18:
	.string	"char"
.LASF3:
	.string	"short int"
.LASF22:
	.string	"uint32_t"
.LASF4:
	.string	"long int"
.LASF13:
	.string	"QS_results"
.LASF2:
	.string	"signed char"
	.section	.debug_line_str,"MS",@progbits,1
.LASF0:
	.string	"func.c"
.LASF1:
	.string	"/home/ubuntu/SoCLab/final_project/testbench/top"
	.ident	"GCC: (g1ea978e3066) 12.1.0"
