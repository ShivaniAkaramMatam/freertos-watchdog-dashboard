	.file	"print_lock.c"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_f2p2_c2p0_zicsr2p0_zmmul1p0_zca1p0_zcf1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.print_init,"ax",@progbits
	.align	1
	.globl	print_init
	.type	print_init, @function
print_init:
.LFB4:
.LM1:
	.cfi_startproc
.LM2:
.LM3:
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
.LM4:
	li	a0,1
.LM5:
	sw	ra,12(sp)
	.cfi_offset 1, -4
.LM6:
	call	xQueueCreateMutex
.LVL0:
.LM7:
	lw	ra,12(sp)
	.cfi_restore 1
.LM8:
	lui	a5,%hi(g_print_mutex)
	sw	a0,%lo(g_print_mutex)(a5)
.LM9:
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE4:
	.size	print_init, .-print_init
	.section	.text.safe_printf,"ax",@progbits
	.align	1
	.globl	safe_printf
	.type	safe_printf, @function
safe_printf:
.LVL1:
.LFB5:
.LM10:
	.cfi_startproc
.LM11:
.LM12:
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sw	s0,24(sp)
	.cfi_offset 8, -40
.LM13:
	lui	s0,%hi(g_print_mutex)
.LM14:
	sw	a5,52(sp)
.LM15:
	lw	a5,%lo(g_print_mutex)(s0)
.LM16:
	sw	ra,28(sp)
	sw	s1,20(sp)
	.cfi_offset 1, -36
	.cfi_offset 9, -44
.LM17:
	sw	a1,36(sp)
	sw	a2,40(sp)
	sw	a3,44(sp)
	sw	a4,48(sp)
	sw	a6,56(sp)
	sw	a7,60(sp)
.LM18:
	beq	a5,zero,.L3
	mv	s1,a0
.LM19:
	li	a1,-1
	mv	a0,a5
.LVL2:
.LM20:
	call	xQueueSemaphoreTake
.LVL3:
.LM21:
.LM22:
	addi	a1,sp,36
.LM23:
	mv	a0,s1
.LM24:
	sw	a1,12(sp)
.LM25:
	call	vprintf
.LVL4:
.LM26:
.LM27:
	lw	a0,%lo(g_print_mutex)(s0)
	li	a3,0
	li	a2,0
	li	a1,0
	call	xQueueGenericSend
.LVL5:
.L3:
.LM28:
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	lw	s1,20(sp)
	.cfi_restore 9
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE5:
	.size	safe_printf, .-safe_printf
	.globl	g_print_mutex
	.section	.sbss.g_print_mutex,"aw",@nobits
	.align	2
	.type	g_print_mutex, @object
	.size	g_print_mutex, 4
g_print_mutex:
	.zero	4
	.text
.Letext0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x245
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0xa
	.4byte	.LASF26
	.byte	0x1d
	.byte	0x3
	.4byte	0x31647
	.4byte	.LASF0
	.4byte	.LASF1
	.4byte	.LLRL1
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x1
	.byte	0x8
	.byte	0x7
	.4byte	.LASF2
	.uleb128 0x1
	.byte	0x4
	.byte	0x7
	.4byte	.LASF3
	.uleb128 0xb
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x1
	.byte	0x8
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x1
	.byte	0x10
	.byte	0x4
	.4byte	.LASF5
	.uleb128 0x1
	.byte	0x1
	.byte	0x6
	.4byte	.LASF6
	.uleb128 0x1
	.byte	0x2
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x2
	.4byte	.LASF9
	.byte	0x2
	.byte	0x28
	.byte	0x12
	.4byte	0x68
	.uleb128 0x1
	.byte	0x4
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0x2
	.4byte	.LASF10
	.byte	0x2
	.byte	0x2e
	.byte	0x17
	.4byte	0x80
	.uleb128 0x5
	.4byte	0x6f
	.uleb128 0x1
	.byte	0x1
	.byte	0x8
	.4byte	.LASF11
	.uleb128 0x1
	.byte	0x2
	.byte	0x7
	.4byte	.LASF12
	.uleb128 0x2
	.4byte	.LASF13
	.byte	0x2
	.byte	0x34
	.byte	0x1b
	.4byte	0x9a
	.uleb128 0x1
	.byte	0x4
	.byte	0x7
	.4byte	.LASF14
	.uleb128 0x2
	.4byte	.LASF15
	.byte	0x3
	.byte	0x3f
	.byte	0x11
	.4byte	0x5c
	.uleb128 0x5
	.4byte	0xa1
	.uleb128 0x2
	.4byte	.LASF16
	.byte	0x3
	.byte	0x41
	.byte	0x12
	.4byte	0x8e
	.uleb128 0x6
	.4byte	0xca
	.uleb128 0x1
	.byte	0x1
	.byte	0x8
	.4byte	.LASF17
	.uleb128 0x5
	.4byte	0xc3
	.uleb128 0x2
	.4byte	.LASF18
	.byte	0x4
	.byte	0x30
	.byte	0x22
	.4byte	0xdb
	.uleb128 0x6
	.4byte	0xe0
	.uleb128 0xc
	.4byte	.LASF27
	.uleb128 0x2
	.4byte	.LASF19
	.byte	0x5
	.byte	0x25
	.byte	0x17
	.4byte	0xcf
	.uleb128 0xd
	.4byte	.LASF28
	.byte	0x8
	.byte	0x5
	.byte	0x1a
	.4byte	0xe5
	.uleb128 0x2
	.4byte	.LASF20
	.byte	0x6
	.byte	0x28
	.byte	0x1b
	.4byte	0x109
	.uleb128 0xe
	.byte	0x4
	.4byte	.LASF29
	.uleb128 0x2
	.4byte	.LASF21
	.byte	0x7
	.byte	0x2e
	.byte	0x18
	.4byte	0xfd
	.uleb128 0xf
	.4byte	0xf1
	.byte	0x1
	.byte	0x13
	.uleb128 0x5
	.byte	0x3
	.4byte	g_print_mutex
	.uleb128 0x7
	.4byte	.LASF22
	.2byte	0x28a
	.byte	0xc
	.4byte	0xa1
	.4byte	0x14d
	.uleb128 0x3
	.4byte	0xcf
	.uleb128 0x3
	.4byte	0x152
	.uleb128 0x3
	.4byte	0xb2
	.uleb128 0x3
	.4byte	0xad
	.byte	0
	.uleb128 0x6
	.4byte	0x157
	.uleb128 0x5
	.4byte	0x14d
	.uleb128 0x10
	.uleb128 0x11
	.4byte	.LASF23
	.byte	0x7
	.byte	0xd6
	.byte	0x5
	.4byte	0x39
	.4byte	0x173
	.uleb128 0x3
	.4byte	0xbe
	.uleb128 0x3
	.4byte	0xfd
	.byte	0
	.uleb128 0x7
	.4byte	.LASF24
	.2byte	0x58a
	.byte	0xc
	.4byte	0xa1
	.4byte	0x18e
	.uleb128 0x3
	.4byte	0xcf
	.uleb128 0x3
	.4byte	0xb2
	.byte	0
	.uleb128 0x7
	.4byte	.LASF25
	.2byte	0x586
	.byte	0xf
	.4byte	0xcf
	.4byte	0x1a4
	.uleb128 0x3
	.4byte	0x7b
	.byte	0
	.uleb128 0x12
	.4byte	.LASF30
	.byte	0x1
	.byte	0xb
	.byte	0x6
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x226
	.uleb128 0x13
	.string	"fmt"
	.byte	0x1
	.byte	0xb
	.byte	0x1e
	.4byte	0xbe
	.4byte	.LLST0
	.4byte	.LVUS0
	.uleb128 0x14
	.uleb128 0x15
	.4byte	.LASF31
	.byte	0x1
	.byte	0x10
	.byte	0xd
	.4byte	0x10f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x8
	.4byte	.LVL3
	.4byte	0x173
	.4byte	0x1f2
	.uleb128 0x4
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.byte	0
	.uleb128 0x8
	.4byte	.LVL4
	.4byte	0x158
	.4byte	0x20c
	.uleb128 0x4
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x79
	.sleb128 0
	.uleb128 0x4
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x9
	.4byte	.LVL5
	.4byte	0x128
	.uleb128 0x4
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x4
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x4
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x16
	.4byte	.LASF32
	.byte	0x1
	.byte	0x7
	.byte	0x6
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x9
	.4byte	.LVL0
	.4byte	0x18e
	.uleb128 0x4
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
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
	.uleb128 0x2
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
	.uleb128 0x3
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x49
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x7e
	.uleb128 0x18
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
	.uleb128 0x21
	.sleb128 4
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
	.uleb128 0x48
	.byte	0x1
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x7f
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x34
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
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x34
	.byte	0
	.uleb128 0x47
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
	.uleb128 0x5
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
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x34
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x16
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
.LVUS0:
	.uleb128 0
	.uleb128 0xa
	.uleb128 0xa
	.uleb128 0x12
	.uleb128 0x12
	.uleb128 0
.LLST0:
	.byte	0x6
	.4byte	.LVL1
	.byte	0x4
	.uleb128 .LVL1-.LVL1
	.uleb128 .LVL2-.LVL1
	.uleb128 0x1
	.byte	0x5a
	.byte	0x4
	.uleb128 .LVL2-.LVL1
	.uleb128 .LVL5-.LVL1
	.uleb128 0x1
	.byte	0x59
	.byte	0x4
	.uleb128 .LVL5-.LVL1
	.uleb128 .LFE5-.LVL1
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
	.4byte	0x24
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
	.byte	0x7
	.4byte	.LFB4
	.uleb128 .LFE4-.LFB4
	.byte	0x7
	.4byte	.LFB5
	.uleb128 .LFE5-.LFB5
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
	.4byte	.LASF33
	.4byte	.LASF34
	.4byte	.LASF35
	.4byte	.LASF36
	.4byte	.LASF37
	.byte	0x2
	.uleb128 0x1
	.uleb128 0x1f
	.uleb128 0x2
	.uleb128 0xb
	.uleb128 0x9
	.4byte	.LASF0
	.byte	0
	.4byte	.LASF38
	.byte	0x3
	.4byte	.LASF39
	.byte	0x4
	.4byte	.LASF40
	.byte	0x2
	.4byte	.LASF41
	.byte	0x1
	.4byte	.LASF42
	.byte	0x1
	.4byte	.LASF43
	.byte	0x4
	.4byte	.LASF44
	.byte	0x5
	.4byte	.LASF45
	.byte	0x3
.LELTP0:
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM1
	.byte	0x1d
	.byte	0x5
	.uleb128 0x17
	.byte	0x9
	.2byte	.LM2-.LM1
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM3-.LM2
	.byte	0x6
	.byte	0x16
	.byte	0x5
	.uleb128 0x17
	.byte	0x9
	.2byte	.LM4-.LM3
	.byte	0x18
	.byte	0x5
	.uleb128 0x15
	.byte	0x9
	.2byte	.LM5-.LM4
	.byte	0x16
	.byte	0x5
	.uleb128 0x17
	.byte	0x9
	.2byte	.LM6-.LM5
	.byte	0x18
	.byte	0x5
	.uleb128 0x15
	.byte	0x9
	.2byte	.LM7-.LM6
	.byte	0x18
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM8-.LM7
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0x1
	.byte	0x16
	.byte	0x5
	.uleb128 0x13
	.byte	0x9
	.2byte	.LM9-.LM8
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0
	.byte	0x18
	.byte	0x5
	.uleb128 0x1
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
	.4byte	.LM10
	.byte	0x21
	.byte	0x5
	.uleb128 0x28
	.byte	0x9
	.2byte	.LM11-.LM10
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM12-.LM11
	.byte	0x6
	.byte	0x16
	.byte	0x5
	.uleb128 0x28
	.byte	0x9
	.2byte	.LM13-.LM12
	.byte	0x18
	.byte	0x5
	.uleb128 0x9
	.byte	0x9
	.2byte	.LM14-.LM13
	.byte	0x16
	.byte	0x5
	.uleb128 0x28
	.byte	0x9
	.2byte	.LM15-.LM14
	.byte	0x18
	.byte	0x5
	.uleb128 0x9
	.byte	0x9
	.2byte	.LM16-.LM15
	.byte	0x16
	.byte	0x5
	.uleb128 0x28
	.byte	0x9
	.2byte	.LM17-.LM16
	.byte	0x1
	.byte	0x5
	.uleb128 0x28
	.byte	0x9
	.2byte	.LM18-.LM17
	.byte	0x18
	.byte	0x5
	.uleb128 0x8
	.byte	0x9
	.2byte	.LM19-.LM18
	.byte	0x6
	.byte	0x19
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM20-.LM19
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM21-.LM20
	.byte	0x6
	.byte	0x19
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM22-.LM21
	.byte	0x18
	.byte	0x5
	.uleb128 0x4
	.byte	0x9
	.2byte	.LM23-.LM22
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM24-.LM23
	.byte	0x16
	.byte	0x5
	.uleb128 0x4
	.byte	0x9
	.2byte	.LM25-.LM24
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM26-.LM25
	.byte	0x18
	.byte	0x5
	.uleb128 0x4
	.byte	0x9
	.2byte	.LM27-.LM26
	.byte	0x19
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM28-.LM27
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LFE5
	.byte	0
	.uleb128 0x1
	.byte	0x1
.LELT0:
	.section	.debug_str,"MS",@progbits,1
.LASF29:
	.string	"__builtin_va_list"
.LASF16:
	.string	"TickType_t"
.LASF18:
	.string	"QueueHandle_t"
.LASF28:
	.string	"g_print_mutex"
.LASF23:
	.string	"vprintf"
.LASF27:
	.string	"QueueDefinition"
.LASF21:
	.string	"va_list"
.LASF11:
	.string	"unsigned char"
.LASF14:
	.string	"long unsigned int"
.LASF12:
	.string	"short unsigned int"
.LASF26:
	.string	"GNU C23 15.1.0 -mabi=ilp32f -misa-spec=20191213 -march=rv32imfc_zicsr_zmmul_zca_zcf -gdwarf -Os -std=gnu23 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF19:
	.string	"SemaphoreHandle_t"
.LASF7:
	.string	"short int"
.LASF32:
	.string	"print_init"
.LASF3:
	.string	"unsigned int"
.LASF2:
	.string	"long long unsigned int"
.LASF10:
	.string	"uint8_t"
.LASF9:
	.string	"int32_t"
.LASF20:
	.string	"__gnuc_va_list"
.LASF4:
	.string	"long long int"
.LASF17:
	.string	"char"
.LASF30:
	.string	"safe_printf"
.LASF22:
	.string	"xQueueGenericSend"
.LASF31:
	.string	"args"
.LASF13:
	.string	"uint32_t"
.LASF8:
	.string	"long int"
.LASF25:
	.string	"xQueueCreateMutex"
.LASF5:
	.string	"long double"
.LASF6:
	.string	"signed char"
.LASF24:
	.string	"xQueueSemaphoreTake"
.LASF15:
	.string	"BaseType_t"
	.section	.debug_line_str,"MS",@progbits,1
.LASF35:
	.string	"/home/shivani/bl602_iot_sdk/customer_app/suas_app_freertos_watchdog/suas_app_freertos_watchdog"
.LASF45:
	.string	"print_lock.h"
.LASF34:
	.string	"/home/shivani/bl602_iot_sdk/components/freertos/portable/GCC/RISC-V"
.LASF1:
	.string	"/home/shivani/bl602_iot_sdk/customer_app/suas_app_freertos_watchdog/build_out/suas_app_freertos_watchdog"
.LASF36:
	.string	"/home/shivani/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include"
.LASF39:
	.string	"stdint-gcc.h"
.LASF43:
	.string	"stdarg.h"
.LASF37:
	.string	"/home/shivani/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include"
.LASF42:
	.string	"semphr.h"
.LASF33:
	.string	"/home/shivani/bl602_iot_sdk/components/freertos/include"
.LASF41:
	.string	"queue.h"
.LASF44:
	.string	"stdio.h"
.LASF40:
	.string	"portmacro.h"
.LASF38:
	.string	"print_lock.c"
.LASF0:
	.string	"/home/shivani/bl602_iot_sdk/customer_app/suas_app_freertos_watchdog/suas_app_freertos_watchdog/print_lock.c"
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
