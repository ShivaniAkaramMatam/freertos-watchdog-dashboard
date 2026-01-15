	.file	"safe_print.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_f2p2_c2p0_zicsr2p0_zmmul1p0_zca1p0_zcf1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.rodata.print_task.str1.4,"aMS",@progbits,1
	.align	2
.LC0:
	.string	"%s\n"
	.section	.text.print_task,"ax",@progbits
	.align	1
	.type	print_task, @function
print_task:
.LVL0:
.LFB4:
.LM1:
	.cfi_startproc
.LM2:
	addi	sp,sp,-144
	.cfi_def_cfa_offset 144
.LM3:
	lui	a5,%hi(.LC0)
.LM4:
	sw	s0,136(sp)
	sw	s1,132(sp)
	sw	s2,128(sp)
	sw	ra,140(sp)
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 1, -4
.LM5:
	lui	s0,%hi(print_queue)
.LM6:
	li	s1,1
.LM7:
	addi	s2,a5,%lo(.LC0)
.LVL1:
.L2:
.LM8:
.LM9:
.LM10:
.LM11:
.LM12:
	lw	a0,%lo(print_queue)(s0)
	li	a2,-1
	mv	a1,sp
	call	xQueueReceive
.LVL2:
.LM13:
	bne	a0,s1,.L2
.LM14:
	mv	a1,sp
	mv	a0,s2
	call	printf
.LVL3:
	j	.L2
	.cfi_endproc
.LFE4:
	.size	print_task, .-print_task
	.section	.rodata.safe_print_init.str1.4,"aMS",@progbits,1
	.align	2
.LC1:
	.string	"print_task"
	.section	.text.safe_print_init,"ax",@progbits
	.align	1
	.globl	safe_print_init
	.type	safe_print_init, @function
safe_print_init:
.LFB5:
.LM15:
	.cfi_startproc
.LM16:
.LM17:
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
.LM18:
	li	a2,0
	li	a1,128
	li	a0,16
.LM19:
	sw	ra,12(sp)
	.cfi_offset 1, -4
.LM20:
	call	xQueueGenericCreate
.LVL4:
.LM21:
	lui	a5,%hi(print_queue)
	sw	a0,%lo(print_queue)(a5)
.LM22:
.LM23:
	bne	a0,zero,.L7
.LM24:
	call	vAssertCalled
.LVL5:
.L7:
.LM25:
.LM26:
	lw	ra,12(sp)
	.cfi_restore 1
.LM27:
	lui	a1,%hi(.LC1)
	lui	a0,%hi(print_task)
.LM28:
.LM29:
	li	a5,0
	li	a4,2
	li	a3,0
	li	a2,512
	addi	a1,a1,%lo(.LC1)
	addi	a0,a0,%lo(print_task)
.LM30:
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
.LM31:
	tail	xTaskCreate
.LVL6:
	.cfi_endproc
.LFE5:
	.size	safe_print_init, .-safe_print_init
	.section	.text.safe_printf,"ax",@progbits
	.align	1
	.globl	safe_printf
	.type	safe_printf, @function
safe_printf:
.LVL7:
.LFB6:
.LM32:
	.cfi_startproc
.LM33:
.LM34:
	addi	sp,sp,-192
	.cfi_def_cfa_offset 192
	sw	s0,152(sp)
	.cfi_offset 8, -40
.LM35:
	lui	s0,%hi(print_queue)
.LM36:
	sw	a5,180(sp)
.LM37:
	lw	a5,%lo(print_queue)(s0)
.LM38:
	sw	ra,156(sp)
	.cfi_offset 1, -36
.LM39:
	sw	a1,164(sp)
	sw	a2,168(sp)
	sw	a3,172(sp)
	sw	a4,176(sp)
	sw	a6,184(sp)
	sw	a7,188(sp)
.LM40:
	beq	a5,zero,.L9
	mv	a2,a0
.LM41:
.LM42:
.LM43:
	addi	a3,sp,164
.LM44:
	li	a1,128
	addi	a0,sp,16
.LVL8:
.LM45:
	sw	a3,12(sp)
.LM46:
	call	vsnprintf
.LVL9:
.LM47:
.LM48:
	lw	a0,%lo(print_queue)(s0)
	li	a3,0
	li	a2,0
	addi	a1,sp,16
	call	xQueueGenericSend
.LVL10:
.L9:
.LM49:
	lw	ra,156(sp)
	.cfi_restore 1
	lw	s0,152(sp)
	.cfi_restore 8
	addi	sp,sp,192
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE6:
	.size	safe_printf, .-safe_printf
	.section	.sbss.print_queue,"aw",@nobits
	.align	2
	.type	print_queue, @object
	.size	print_queue, 4
print_queue:
	.zero	4
	.text
.Letext0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x40a
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x11
	.4byte	.LASF39
	.byte	0x1d
	.byte	0x3
	.4byte	0x31647
	.4byte	.LASF0
	.4byte	.LASF1
	.4byte	.LLRL2
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x4
	.byte	0x8
	.byte	0x7
	.4byte	.LASF2
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF3
	.uleb128 0x12
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.4byte	.LASF8
	.byte	0x2
	.byte	0xe5
	.byte	0x16
	.4byte	0x32
	.uleb128 0x4
	.byte	0x8
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x4
	.byte	0x10
	.byte	0x4
	.4byte	.LASF5
	.uleb128 0x4
	.byte	0x1
	.byte	0x6
	.4byte	.LASF6
	.uleb128 0x4
	.byte	0x2
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x3
	.4byte	.LASF9
	.byte	0x3
	.byte	0x28
	.byte	0x12
	.4byte	0x74
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.4byte	.LASF10
	.uleb128 0x3
	.4byte	.LASF11
	.byte	0x3
	.byte	0x2e
	.byte	0x17
	.4byte	0x8c
	.uleb128 0x5
	.4byte	0x7b
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF12
	.uleb128 0x3
	.4byte	.LASF13
	.byte	0x3
	.byte	0x31
	.byte	0x1c
	.4byte	0xa4
	.uleb128 0x5
	.4byte	0x93
	.uleb128 0x4
	.byte	0x2
	.byte	0x7
	.4byte	.LASF14
	.uleb128 0x3
	.4byte	.LASF15
	.byte	0x3
	.byte	0x34
	.byte	0x1b
	.4byte	0xb7
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF16
	.uleb128 0x3
	.4byte	.LASF17
	.byte	0x4
	.byte	0x23
	.byte	0x10
	.4byte	0xca
	.uleb128 0x6
	.4byte	0xcf
	.uleb128 0x13
	.4byte	0xda
	.uleb128 0x1
	.4byte	0xda
	.byte	0
	.uleb128 0x14
	.byte	0x4
	.uleb128 0x5
	.4byte	0xda
	.uleb128 0x3
	.4byte	.LASF18
	.byte	0x5
	.byte	0x3f
	.byte	0x11
	.4byte	0x68
	.uleb128 0x5
	.4byte	0xe1
	.uleb128 0x3
	.4byte	.LASF19
	.byte	0x5
	.byte	0x40
	.byte	0x12
	.4byte	0xab
	.uleb128 0x5
	.4byte	0xf2
	.uleb128 0x3
	.4byte	.LASF20
	.byte	0x5
	.byte	0x41
	.byte	0x12
	.4byte	0xab
	.uleb128 0x3
	.4byte	.LASF21
	.byte	0x6
	.byte	0x46
	.byte	0x25
	.4byte	0x11b
	.uleb128 0x6
	.4byte	0x120
	.uleb128 0x9
	.4byte	.LASF24
	.uleb128 0x6
	.4byte	0x13b
	.uleb128 0x5
	.4byte	0x125
	.uleb128 0xa
	.4byte	0x125
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF22
	.uleb128 0x5
	.4byte	0x134
	.uleb128 0x3
	.4byte	.LASF23
	.byte	0x7
	.byte	0x30
	.byte	0x22
	.4byte	0x14c
	.uleb128 0x6
	.4byte	0x151
	.uleb128 0x9
	.4byte	.LASF25
	.uleb128 0x3
	.4byte	.LASF26
	.byte	0x8
	.byte	0x28
	.byte	0x1b
	.4byte	0x162
	.uleb128 0x15
	.byte	0x4
	.4byte	.LASF40
	.uleb128 0x3
	.4byte	.LASF27
	.byte	0x9
	.byte	0x2e
	.byte	0x18
	.4byte	0x156
	.uleb128 0x6
	.4byte	0x134
	.uleb128 0xa
	.4byte	0x174
	.uleb128 0x16
	.byte	0x80
	.byte	0x1
	.byte	0xb
	.byte	0x9
	.4byte	0x195
	.uleb128 0x17
	.string	"msg"
	.byte	0x1
	.byte	0xc
	.byte	0xa
	.4byte	0x195
	.byte	0
	.byte	0
	.uleb128 0x18
	.4byte	0x134
	.4byte	0x1a5
	.uleb128 0x19
	.4byte	0x32
	.byte	0x7f
	.byte	0
	.uleb128 0x3
	.4byte	.LASF28
	.byte	0x1
	.byte	0xd
	.byte	0x3
	.4byte	0x17e
	.uleb128 0xb
	.4byte	.LASF35
	.byte	0xf
	.byte	0x16
	.4byte	0x140
	.uleb128 0x5
	.byte	0x3
	.4byte	print_queue
	.uleb128 0x7
	.4byte	.LASF29
	.byte	0x7
	.2byte	0x28a
	.byte	0xc
	.4byte	0xe1
	.4byte	0x1e8
	.uleb128 0x1
	.4byte	0x140
	.uleb128 0x1
	.4byte	0x1ed
	.uleb128 0x1
	.4byte	0x103
	.uleb128 0x1
	.4byte	0xed
	.byte	0
	.uleb128 0x6
	.4byte	0x1f2
	.uleb128 0x5
	.4byte	0x1e8
	.uleb128 0x1a
	.uleb128 0x7
	.4byte	.LASF30
	.byte	0x9
	.2byte	0x112
	.byte	0x5
	.4byte	0x39
	.4byte	0x219
	.uleb128 0x1
	.4byte	0x179
	.uleb128 0x1
	.4byte	0x40
	.uleb128 0x1
	.4byte	0x12f
	.uleb128 0x1
	.4byte	0x156
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF31
	.byte	0x9
	.byte	0xce
	.byte	0x5
	.4byte	0x39
	.4byte	0x230
	.uleb128 0x1
	.4byte	0x12f
	.uleb128 0xc
	.byte	0
	.uleb128 0x7
	.4byte	.LASF32
	.byte	0x7
	.2byte	0x364
	.byte	0xc
	.4byte	0xe1
	.4byte	0x251
	.uleb128 0x1
	.4byte	0x140
	.uleb128 0x1
	.4byte	0xdc
	.uleb128 0x1
	.4byte	0x103
	.byte	0
	.uleb128 0x7
	.4byte	.LASF33
	.byte	0x6
	.2byte	0x14a
	.byte	0xd
	.4byte	0xe1
	.4byte	0x281
	.uleb128 0x1
	.4byte	0xbe
	.uleb128 0x1
	.4byte	0x12a
	.uleb128 0x1
	.4byte	0x9f
	.uleb128 0x1
	.4byte	0xdc
	.uleb128 0x1
	.4byte	0xf2
	.uleb128 0x1
	.4byte	0x286
	.byte	0
	.uleb128 0x6
	.4byte	0x10f
	.uleb128 0x5
	.4byte	0x281
	.uleb128 0x1c
	.4byte	.LASF41
	.byte	0xa
	.byte	0x97
	.byte	0x6
	.uleb128 0x7
	.4byte	.LASF34
	.byte	0x7
	.2byte	0x5d8
	.byte	0x10
	.4byte	0x140
	.4byte	0x2b4
	.uleb128 0x1
	.4byte	0xfe
	.uleb128 0x1
	.4byte	0xfe
	.uleb128 0x1
	.4byte	0x87
	.byte	0
	.uleb128 0xd
	.4byte	.LASF37
	.byte	0x2a
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x340
	.uleb128 0xe
	.string	"fmt"
	.byte	0x2a
	.4byte	0x125
	.4byte	.LLST1
	.4byte	.LVUS1
	.uleb128 0xc
	.uleb128 0xf
	.string	"m"
	.byte	0x2d
	.4byte	0x1a5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0xb
	.4byte	.LASF36
	.byte	0x2e
	.byte	0xd
	.4byte	0x168
	.uleb128 0x3
	.byte	0x91
	.sleb128 -180
	.uleb128 0x8
	.4byte	.LVL9
	.4byte	0x1f3
	.4byte	0x324
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x80
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x9
	.byte	0xa3
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0xa
	.uleb128 0x2b
	.byte	0xa8
	.uleb128 0x32
	.byte	0xa8
	.uleb128 0
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x10
	.4byte	.LVL10
	.4byte	0x1c2
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0xd
	.4byte	.LASF38
	.byte	0x1c
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3ae
	.uleb128 0x8
	.4byte	.LVL4
	.4byte	0x293
	.4byte	0x372
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x40
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x80
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL5
	.4byte	0x28b
	.uleb128 0x1e
	.4byte	.LVL6
	.4byte	0x251
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	print_task
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0xa
	.2byte	0x200
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF42
	.byte	0x1
	.byte	0x11
	.byte	0xd
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xe
	.string	"p"
	.byte	0x11
	.4byte	0xda
	.4byte	.LLST0
	.4byte	.LVUS0
	.uleb128 0xf
	.string	"m"
	.byte	0x13
	.4byte	0x1a5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x8
	.4byte	.LVL2
	.4byte	0x230
	.4byte	0x3f6
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.byte	0
	.uleb128 0x10
	.4byte	.LVL3
	.4byte	0x219
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x82
	.sleb128 0
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x72
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x49
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x7e
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 4
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x48
	.byte	0x1
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x7f
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x37
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 6
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x7a
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 30
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 14
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x48
	.byte	0x1
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x7f
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x90
	.uleb128 0xb
	.uleb128 0x91
	.uleb128 0x6
	.uleb128 0x3
	.uleb128 0x1f
	.uleb128 0x1b
	.uleb128 0x1f
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x10
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x48
	.byte	0
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x7f
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x48
	.byte	0x1
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x82
	.uleb128 0x19
	.uleb128 0x7f
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x7a
	.uleb128 0x19
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
.LVUS1:
	.uleb128 0
	.uleb128 0xd
	.uleb128 0xd
	.uleb128 0xf
	.uleb128 0xf
	.uleb128 0
.LLST1:
	.byte	0x6
	.4byte	.LVL7
	.byte	0x4
	.uleb128 .LVL7-.LVL7
	.uleb128 .LVL8-.LVL7
	.uleb128 0x1
	.byte	0x5a
	.byte	0x4
	.uleb128 .LVL8-.LVL7
	.uleb128 .LVL9-1-.LVL7
	.uleb128 0x1
	.byte	0x5c
	.byte	0x4
	.uleb128 .LVL9-1-.LVL7
	.uleb128 .LFE6-.LVL7
	.uleb128 0xa
	.byte	0xa3
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0xa
	.uleb128 0x2b
	.byte	0xa8
	.uleb128 0x32
	.byte	0xa8
	.uleb128 0
	.byte	0x9f
	.byte	0
.LVUS0:
	.uleb128 0
	.uleb128 0x7
	.uleb128 0x7
	.uleb128 0
.LLST0:
	.byte	0x6
	.4byte	.LVL0
	.byte	0x4
	.uleb128 .LVL0-.LVL0
	.uleb128 .LVL1-.LVL0
	.uleb128 0x1
	.byte	0x5a
	.byte	0x4
	.uleb128 .LVL1-.LVL0
	.uleb128 .LFE4-.LVL0
	.uleb128 0xa
	.byte	0xa3
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0xa
	.uleb128 0x2b
	.byte	0xa8
	.uleb128 0x32
	.byte	0xa8
	.uleb128 0
	.byte	0x9f
	.byte	0
.Ldebug_loc3:
	.section	.debug_aranges,"",@progbits
	.4byte	0x2c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
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
.LLRL2:
	.byte	0x7
	.4byte	.LFB4
	.uleb128 .LFE4-.LFB4
	.byte	0x7
	.4byte	.LFB5
	.uleb128 .LFE5-.LFB5
	.byte	0x7
	.4byte	.LFB6
	.uleb128 .LFE6-.LFB6
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.4byte	.LELT0-.LSLT0
.LSLT0:
	.2byte	0x5
	.byte	0x4
	.byte	0
	.4byte	.LELTP0-.LASLTP0
.LASLTP0:
	.byte	0x1
	.byte	0x1
	.byte	0x1
	.byte	0xf6
	.byte	0xf2
	.byte	0xd
	.byte	0
	.byte	0x1
	.byte	0x1
	.byte	0x1
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0x1
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x1f
	.uleb128 0x6
	.4byte	.LASF1
	.4byte	.LASF43
	.4byte	.LASF44
	.4byte	.LASF45
	.4byte	.LASF46
	.4byte	.LASF47
	.byte	0x2
	.uleb128 0x1
	.uleb128 0x1f
	.uleb128 0x2
	.uleb128 0xb
	.uleb128 0xb
	.4byte	.LASF0
	.byte	0
	.4byte	.LASF48
	.byte	0x3
	.4byte	.LASF49
	.byte	0x4
	.4byte	.LASF50
	.byte	0x4
	.4byte	.LASF51
	.byte	0x1
	.4byte	.LASF52
	.byte	0x2
	.4byte	.LASF53
	.byte	0x1
	.4byte	.LASF54
	.byte	0x1
	.4byte	.LASF55
	.byte	0x4
	.4byte	.LASF56
	.byte	0x5
	.4byte	.LASF57
	.byte	0x1
.LELTP0:
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM1
	.byte	0x27
	.byte	0x5
	.uleb128 0x21
	.byte	0x9
	.2byte	.LM2-.LM1
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x21
	.byte	0x9
	.2byte	.LM3-.LM2
	.byte	0x1d
	.byte	0x5
	.uleb128 0xd
	.byte	0x9
	.2byte	.LM4-.LM3
	.byte	0x11
	.byte	0x5
	.uleb128 0x21
	.byte	0x9
	.2byte	.LM5-.LM4
	.byte	0x1c
	.byte	0x5
	.uleb128 0xd
	.byte	0x9
	.2byte	.LM6-.LM5
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0x1
	.byte	0x1
	.byte	0x5
	.uleb128 0xc
	.byte	0x9
	.2byte	.LM7-.LM6
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0
	.byte	0x18
	.byte	0x5
	.uleb128 0xd
	.byte	0x9
	.2byte	.LM8-.LM7
	.byte	0x6
	.byte	0x12
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM9-.LM8
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM10-.LM9
	.byte	0x19
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM11-.LM10
	.byte	0x18
	.byte	0x5
	.uleb128 0x9
	.byte	0x9
	.2byte	.LM12-.LM11
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0xd
	.byte	0x9
	.2byte	.LM13-.LM12
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0x1
	.byte	0x1
	.byte	0x5
	.uleb128 0xc
	.byte	0x9
	.2byte	.LM14-.LM13
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0xd
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LFE4
	.byte	0
	.uleb128 0x1
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM15
	.byte	0x32
	.byte	0x5
	.uleb128 0x1c
	.byte	0x9
	.2byte	.LM16-.LM15
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM17-.LM16
	.byte	0x6
	.byte	0x16
	.byte	0x5
	.uleb128 0x1c
	.byte	0x9
	.2byte	.LM18-.LM17
	.byte	0x18
	.byte	0x5
	.uleb128 0x13
	.byte	0x9
	.2byte	.LM19-.LM18
	.byte	0x16
	.byte	0x5
	.uleb128 0x1c
	.byte	0x9
	.2byte	.LM20-.LM19
	.byte	0x18
	.byte	0x5
	.uleb128 0x13
	.byte	0x9
	.2byte	.LM21-.LM20
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0x1
	.byte	0x1
	.byte	0x5
	.uleb128 0x11
	.byte	0x9
	.2byte	.LM22-.LM21
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM23-.LM22
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x7
	.byte	0x9
	.2byte	.LM24-.LM23
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0x1
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x20
	.byte	0x9
	.2byte	.LM25-.LM24
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0
	.byte	0x19
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM26-.LM25
	.byte	0x6
	.byte	0x1f
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM27-.LM26
	.byte	0xf
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM28-.LM27
	.byte	0x1f
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM29-.LM28
	.byte	0xf
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM30-.LM29
	.byte	0x1f
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM31-.LM30
	.byte	0xf
	.byte	0x5
	.uleb128 0x5
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LFE5
	.byte	0
	.uleb128 0x1
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM32
	.byte	0x40
	.byte	0x5
	.uleb128 0x28
	.byte	0x9
	.2byte	.LM33-.LM32
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM34-.LM33
	.byte	0x6
	.byte	0x16
	.byte	0x5
	.uleb128 0x28
	.byte	0x9
	.2byte	.LM35-.LM34
	.byte	0x18
	.byte	0x5
	.uleb128 0x9
	.byte	0x9
	.2byte	.LM36-.LM35
	.byte	0x16
	.byte	0x5
	.uleb128 0x28
	.byte	0x9
	.2byte	.LM37-.LM36
	.byte	0x18
	.byte	0x5
	.uleb128 0x8
	.byte	0x9
	.2byte	.LM38-.LM37
	.byte	0x16
	.byte	0x5
	.uleb128 0x28
	.byte	0x9
	.2byte	.LM39-.LM38
	.byte	0x1
	.byte	0x5
	.uleb128 0x28
	.byte	0x9
	.2byte	.LM40-.LM39
	.byte	0x18
	.byte	0x5
	.uleb128 0x8
	.byte	0x9
	.2byte	.LM41-.LM40
	.byte	0x6
	.byte	0x19
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM42-.LM41
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM43-.LM42
	.byte	0x18
	.byte	0x5
	.uleb128 0x4
	.byte	0x9
	.2byte	.LM44-.LM43
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM45-.LM44
	.byte	0x16
	.byte	0x5
	.uleb128 0x4
	.byte	0x9
	.2byte	.LM46-.LM45
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM47-.LM46
	.byte	0x18
	.byte	0x5
	.uleb128 0x4
	.byte	0x9
	.2byte	.LM48-.LM47
	.byte	0x19
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM49-.LM48
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LFE6
	.byte	0
	.uleb128 0x1
	.byte	0x1
.LELT0:
	.section	.debug_str,"MS",@progbits,1
.LASF8:
	.string	"size_t"
.LASF35:
	.string	"print_queue"
.LASF40:
	.string	"__builtin_va_list"
.LASF30:
	.string	"vsnprintf"
.LASF20:
	.string	"TickType_t"
.LASF21:
	.string	"TaskHandle_t"
.LASF23:
	.string	"QueueHandle_t"
.LASF41:
	.string	"vAssertCalled"
.LASF17:
	.string	"TaskFunction_t"
.LASF25:
	.string	"QueueDefinition"
.LASF27:
	.string	"va_list"
.LASF12:
	.string	"unsigned char"
.LASF16:
	.string	"long unsigned int"
.LASF14:
	.string	"short unsigned int"
.LASF39:
	.string	"GNU C23 15.1.0 -mabi=ilp32f -misa-spec=20191213 -march=rv32imfc_zicsr_zmmul_zca_zcf -gdwarf -Os -std=gnu23 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF34:
	.string	"xQueueGenericCreate"
.LASF7:
	.string	"short int"
.LASF26:
	.string	"__gnuc_va_list"
.LASF24:
	.string	"tskTaskControlBlock"
.LASF3:
	.string	"unsigned int"
.LASF2:
	.string	"long long unsigned int"
.LASF11:
	.string	"uint8_t"
.LASF38:
	.string	"safe_print_init"
.LASF9:
	.string	"int32_t"
.LASF4:
	.string	"long long int"
.LASF22:
	.string	"char"
.LASF42:
	.string	"print_task"
.LASF32:
	.string	"xQueueReceive"
.LASF37:
	.string	"safe_printf"
.LASF31:
	.string	"printf"
.LASF29:
	.string	"xQueueGenericSend"
.LASF36:
	.string	"args"
.LASF13:
	.string	"uint16_t"
.LASF15:
	.string	"uint32_t"
.LASF10:
	.string	"long int"
.LASF5:
	.string	"long double"
.LASF6:
	.string	"signed char"
.LASF28:
	.string	"PrintMsg"
.LASF19:
	.string	"UBaseType_t"
.LASF18:
	.string	"BaseType_t"
.LASF33:
	.string	"xTaskCreate"
	.section	.debug_line_str,"MS",@progbits,1
.LASF45:
	.string	"/home/shivani/bl602_iot_sdk/customer_app/suas_app_freertos_watchdog/suas_app_freertos_watchdog"
.LASF57:
	.string	"FreeRTOSConfig.h"
.LASF51:
	.string	"projdefs.h"
.LASF44:
	.string	"/home/shivani/bl602_iot_sdk/components/freertos/portable/GCC/RISC-V"
.LASF1:
	.string	"/home/shivani/bl602_iot_sdk/customer_app/suas_app_freertos_watchdog/build_out/suas_app_freertos_watchdog"
.LASF46:
	.string	"/home/shivani/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include"
.LASF48:
	.string	"safe_print.c"
.LASF0:
	.string	"/home/shivani/bl602_iot_sdk/customer_app/suas_app_freertos_watchdog/suas_app_freertos_watchdog/safe_print.c"
.LASF50:
	.string	"stdint-gcc.h"
.LASF55:
	.string	"stdarg.h"
.LASF43:
	.string	"/home/shivani/bl602_iot_sdk/components/freertos/include"
.LASF54:
	.string	"queue.h"
.LASF49:
	.string	"stddef.h"
.LASF52:
	.string	"portmacro.h"
.LASF56:
	.string	"stdio.h"
.LASF47:
	.string	"/home/shivani/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include"
.LASF53:
	.string	"task.h"
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
