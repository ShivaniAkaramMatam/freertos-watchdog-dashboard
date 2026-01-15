	.file	"log.cpp"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_f2p2_c2p0_zicsr2p0_zmmul1p0_zca1p0_zcf1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.rodata._Z9log_eventPKcz.str1.4,"aMS",@progbits,1
	.align	2
.LC0:
	.string	"main"
	.align	2
.LC1:
	.string	"[T=%lu ms][%s][HB=%lu] "
	.align	2
.LC2:
	.string	"\n"
	.section	.text._Z9log_eventPKcz,"ax",@progbits
	.align	1
	.globl	_Z9log_eventPKcz
	.type	_Z9log_eventPKcz, @function
_Z9log_eventPKcz:
.LVL0:
.LFB2:
.LM1:
	.cfi_startproc
.LM2:
.LM3:
	addi	sp,sp,-80
	.cfi_def_cfa_offset 80
	sw	a1,52(sp)
	sw	a2,56(sp)
	sw	a3,60(sp)
	sw	ra,44(sp)
	sw	a4,64(sp)
	sw	a5,68(sp)
	sw	a6,72(sp)
	sw	a7,76(sp)
	sw	s0,40(sp)
	sw	s1,36(sp)
	.cfi_offset 1, -36
	.cfi_offset 8, -40
	.cfi_offset 9, -44
.LM4:
	mv	s0,a0
.LM5:
	call	xTaskGetCurrentTaskHandle
.LVL1:
.LM6:
	mv	s1,a0
.LVL2:
.LM7:
.LM8:
	call	pcTaskGetName
.LVL3:
	sw	a0,12(sp)
.LVL4:
.LM9:
.LM10:
	call	xTaskGetTickCount
.LVL5:
.LM11:
	sw	a0,8(sp)
.LVL6:
.LM12:
.LM13:
.LM14:
	mv	a0,s1
.LVL7:
.LM15:
	call	_Z22watchdog_get_heartbeatP19tskTaskControlBlock
.LVL8:
.LM16:
	lw	a2,12(sp)
	lw	a1,8(sp)
.LM17:
	mv	a3,a0
.LVL9:
.LM18:
.LM19:
	bne	a2,zero,.L2
.LM20:
	lui	a2,%hi(.LC0)
	addi	a2,a2,%lo(.LC0)
.L2:
.LM21:
	lui	a0,%hi(.LC1)
.LVL10:
.LM22:
	addi	a0,a0,%lo(.LC1)
	call	safe_printf
.LVL11:
.LM23:
.LM24:
.LM25:
	addi	a1,sp,52
.LM26:
	mv	a0,s0
.LM27:
	sw	a1,28(sp)
.LM28:
.LM29:
	call	vprintf
.LVL12:
.LM30:
.LM31:
.LM32:
	lui	a0,%hi(.LC2)
	addi	a0,a0,%lo(.LC2)
	call	safe_printf
.LVL13:
.LM33:
	lw	ra,44(sp)
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
.LVL14:
.LM34:
	lw	s1,36(sp)
	.cfi_restore 9
.LVL15:
.LM35:
	addi	sp,sp,80
	.cfi_def_cfa_offset 0
.LVL16:
.LM36:
	jr	ra
	.cfi_endproc
.LFE2:
	.size	_Z9log_eventPKcz, .-_Z9log_eventPKcz
	.text
.Letext0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x266
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0xc
	.4byte	.LASF1506
	.byte	0x21
	.byte	0x4
	.4byte	0x3163e
	.4byte	.LASF0
	.4byte	.LASF1
	.4byte	.LLRL6
	.4byte	0
	.4byte	.Ldebug_line0
	.4byte	.Ldebug_macro0
	.uleb128 0x1
	.byte	0x8
	.byte	0x7
	.4byte	.LASF1483
	.uleb128 0x1
	.byte	0x4
	.byte	0x7
	.4byte	.LASF1484
	.uleb128 0xd
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x1
	.byte	0x8
	.byte	0x5
	.4byte	.LASF1485
	.uleb128 0x1
	.byte	0x10
	.byte	0x4
	.4byte	.LASF1486
	.uleb128 0x1
	.byte	0x1
	.byte	0x6
	.4byte	.LASF1487
	.uleb128 0x1
	.byte	0x2
	.byte	0x5
	.4byte	.LASF1488
	.uleb128 0x1
	.byte	0x4
	.byte	0x5
	.4byte	.LASF1489
	.uleb128 0x1
	.byte	0x1
	.byte	0x8
	.4byte	.LASF1490
	.uleb128 0x1
	.byte	0x2
	.byte	0x7
	.4byte	.LASF1491
	.uleb128 0x3
	.4byte	.LASF1493
	.byte	0x2
	.byte	0x34
	.byte	0x1b
	.4byte	0x81
	.uleb128 0x1
	.byte	0x4
	.byte	0x7
	.4byte	.LASF1492
	.uleb128 0x3
	.4byte	.LASF1494
	.byte	0x3
	.byte	0x41
	.byte	0x12
	.4byte	0x75
	.uleb128 0x3
	.4byte	.LASF1495
	.byte	0x4
	.byte	0x46
	.byte	0x25
	.4byte	0xa0
	.uleb128 0x6
	.4byte	0xa5
	.uleb128 0xe
	.4byte	.LASF1507
	.uleb128 0x6
	.4byte	0xb6
	.uleb128 0x1
	.byte	0x1
	.byte	0x8
	.4byte	.LASF1496
	.uleb128 0xf
	.4byte	0xaf
	.uleb128 0x3
	.4byte	.LASF1497
	.byte	0x5
	.byte	0x28
	.byte	0x1b
	.4byte	0xc7
	.uleb128 0x10
	.byte	0x4
	.4byte	.LASF1508
	.uleb128 0x6
	.4byte	0xaf
	.uleb128 0x3
	.4byte	.LASF1498
	.byte	0x5
	.byte	0x67
	.byte	0x18
	.4byte	0xbb
	.uleb128 0x11
	.4byte	.LASF1499
	.byte	0x6
	.byte	0xd6
	.byte	0x5
	.4byte	0x3d
	.4byte	0xf9
	.uleb128 0x4
	.4byte	0xaa
	.uleb128 0x4
	.4byte	0xbb
	.byte	0
	.uleb128 0x12
	.4byte	.LASF1509
	.byte	0x7
	.byte	0x8
	.byte	0x6
	.4byte	0x10c
	.uleb128 0x4
	.4byte	0xaa
	.uleb128 0x8
	.byte	0
	.uleb128 0x13
	.4byte	.LASF1510
	.byte	0x8
	.byte	0x14
	.byte	0xa
	.4byte	.LASF1511
	.4byte	0x75
	.4byte	0x126
	.uleb128 0x4
	.4byte	0x94
	.byte	0
	.uleb128 0x9
	.4byte	.LASF1501
	.2byte	0x54c
	.byte	0xc
	.4byte	0x88
	.uleb128 0x14
	.4byte	.LASF1500
	.byte	0x4
	.2byte	0x578
	.byte	0x7
	.4byte	0xcd
	.4byte	0x149
	.uleb128 0x4
	.4byte	0x94
	.byte	0
	.uleb128 0x9
	.4byte	.LASF1502
	.2byte	0x987
	.byte	0xe
	.4byte	0x94
	.uleb128 0x15
	.4byte	.LASF1512
	.byte	0x1
	.byte	0x7
	.byte	0x6
	.4byte	.LASF1513
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x16
	.string	"fmt"
	.byte	0x1
	.byte	0x7
	.byte	0x1c
	.4byte	0xaa
	.4byte	.LLST0
	.4byte	.LVUS0
	.uleb128 0x8
	.uleb128 0x7
	.4byte	.LASF1503
	.byte	0x8
	.byte	0x12
	.4byte	0x94
	.4byte	.LLST1
	.4byte	.LVUS1
	.uleb128 0x7
	.4byte	.LASF1504
	.byte	0x9
	.byte	0x11
	.4byte	0xaa
	.4byte	.LLST2
	.4byte	.LVUS2
	.uleb128 0x7
	.4byte	.LASF1505
	.byte	0xb
	.byte	0xe
	.4byte	0x75
	.4byte	.LLST3
	.4byte	.LVUS3
	.uleb128 0xa
	.string	"ms"
	.byte	0xc
	.4byte	0x75
	.4byte	.LLST4
	.4byte	.LVUS4
	.uleb128 0xa
	.string	"hb"
	.byte	0xe
	.4byte	0x75
	.4byte	.LLST5
	.4byte	.LVUS5
	.uleb128 0x17
	.4byte	.LASF1514
	.byte	0x1
	.byte	0x15
	.byte	0xd
	.4byte	0xd2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0xb
	.4byte	.LVL1
	.4byte	0x149
	.uleb128 0x5
	.4byte	.LVL3
	.4byte	0x132
	.4byte	0x207
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x79
	.sleb128 0
	.byte	0
	.uleb128 0xb
	.4byte	.LVL5
	.4byte	0x126
	.uleb128 0x5
	.4byte	.LVL8
	.4byte	0x10c
	.4byte	0x224
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x79
	.sleb128 0
	.byte	0
	.uleb128 0x5
	.4byte	.LVL11
	.4byte	0xf9
	.4byte	0x23b
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0
	.uleb128 0x5
	.4byte	.LVL12
	.4byte	0xde
	.4byte	0x255
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x78
	.sleb128 0
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x18
	.4byte	.LVL13
	.4byte	0xf9
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
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
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
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
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x2e
	.byte	0
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x48
	.byte	0
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x7f
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0x79
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0xe
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
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
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x6e
	.uleb128 0xe
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
	.uleb128 0x48
	.byte	0x1
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x7f
	.uleb128 0x13
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
	.uleb128 0x5
	.uleb128 0x5
	.uleb128 0x21
	.uleb128 0x21
	.uleb128 0
.LLST0:
	.byte	0x6
	.4byte	.LVL0
	.byte	0x4
	.uleb128 .LVL0-.LVL0
	.uleb128 .LVL1-1-.LVL0
	.uleb128 0x1
	.byte	0x5a
	.byte	0x4
	.uleb128 .LVL1-1-.LVL0
	.uleb128 .LVL14-.LVL0
	.uleb128 0x1
	.byte	0x58
	.byte	0x4
	.uleb128 .LVL14-.LVL0
	.uleb128 .LFE2-.LVL0
	.uleb128 0xa
	.byte	0xa3
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0xa
	.uleb128 0x2f
	.byte	0xa8
	.uleb128 0x36
	.byte	0xa8
	.uleb128 0
	.byte	0x9f
	.byte	0
.LVUS1:
	.uleb128 0x6
	.uleb128 0x22
.LLST1:
	.byte	0x8
	.4byte	.LVL2
	.uleb128 .LVL15-.LVL2
	.uleb128 0x1
	.byte	0x59
	.byte	0
.LVUS2:
	.uleb128 0x8
	.uleb128 0xa
	.uleb128 0xa
	.uleb128 0x23
	.uleb128 0x23
	.uleb128 0
.LLST2:
	.byte	0x6
	.4byte	.LVL4
	.byte	0x4
	.uleb128 .LVL4-.LVL4
	.uleb128 .LVL5-1-.LVL4
	.uleb128 0x1
	.byte	0x5a
	.byte	0x4
	.uleb128 .LVL5-1-.LVL4
	.uleb128 .LVL16-.LVL4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.byte	0x4
	.uleb128 .LVL16-.LVL4
	.uleb128 .LFE2-.LVL4
	.uleb128 0x3
	.byte	0x72
	.sleb128 -68
	.byte	0
.LVUS3:
	.uleb128 0xb
	.uleb128 0xe
	.uleb128 0xe
	.uleb128 0x23
	.uleb128 0x23
	.uleb128 0
.LLST3:
	.byte	0x6
	.4byte	.LVL6
	.byte	0x4
	.uleb128 .LVL6-.LVL6
	.uleb128 .LVL7-.LVL6
	.uleb128 0x1
	.byte	0x5a
	.byte	0x4
	.uleb128 .LVL7-.LVL6
	.uleb128 .LVL16-.LVL6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.byte	0x4
	.uleb128 .LVL16-.LVL6
	.uleb128 .LFE2-.LVL6
	.uleb128 0x3
	.byte	0x72
	.sleb128 -72
	.byte	0
.LVUS4:
	.uleb128 0xc
	.uleb128 0xe
	.uleb128 0xe
	.uleb128 0x23
	.uleb128 0x23
	.uleb128 0
.LLST4:
	.byte	0x6
	.4byte	.LVL6
	.byte	0x4
	.uleb128 .LVL6-.LVL6
	.uleb128 .LVL7-.LVL6
	.uleb128 0x1
	.byte	0x5a
	.byte	0x4
	.uleb128 .LVL7-.LVL6
	.uleb128 .LVL16-.LVL6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.byte	0x4
	.uleb128 .LVL16-.LVL6
	.uleb128 .LFE2-.LVL6
	.uleb128 0x3
	.byte	0x72
	.sleb128 -72
	.byte	0
.LVUS5:
	.uleb128 0x11
	.uleb128 0x15
	.uleb128 0x15
	.uleb128 0x16
.LLST5:
	.byte	0x6
	.4byte	.LVL9
	.byte	0x4
	.uleb128 .LVL9-.LVL9
	.uleb128 .LVL10-.LVL9
	.uleb128 0x1
	.byte	0x5a
	.byte	0x4
	.uleb128 .LVL10-.LVL9
	.uleb128 .LVL11-1-.LVL9
	.uleb128 0x1
	.byte	0x5d
	.byte	0
.Ldebug_loc3:
	.section	.debug_aranges,"",@progbits
	.4byte	0x1c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
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
	.byte	0x7
	.4byte	.LFB2
	.uleb128 .LFE2-.LFB2
	.byte	0
.Ldebug_ranges3:
	.section	.debug_macro,"",@progbits
.Ldebug_macro0:
	.2byte	0x5
	.byte	0x2
	.4byte	.Ldebug_line0
	.byte	0x3
	.uleb128 0
	.uleb128 0x1
	.byte	0x5
	.uleb128 0
	.4byte	.LASF2
	.byte	0x5
	.uleb128 0
	.4byte	.LASF3
	.byte	0x5
	.uleb128 0
	.4byte	.LASF4
	.byte	0x5
	.uleb128 0
	.4byte	.LASF5
	.byte	0x5
	.uleb128 0
	.4byte	.LASF6
	.byte	0x5
	.uleb128 0
	.4byte	.LASF7
	.byte	0x5
	.uleb128 0
	.4byte	.LASF8
	.byte	0x5
	.uleb128 0
	.4byte	.LASF9
	.byte	0x5
	.uleb128 0
	.4byte	.LASF10
	.byte	0x5
	.uleb128 0
	.4byte	.LASF11
	.byte	0x5
	.uleb128 0
	.4byte	.LASF12
	.byte	0x5
	.uleb128 0
	.4byte	.LASF13
	.byte	0x5
	.uleb128 0
	.4byte	.LASF14
	.byte	0x5
	.uleb128 0
	.4byte	.LASF15
	.byte	0x5
	.uleb128 0
	.4byte	.LASF16
	.byte	0x5
	.uleb128 0
	.4byte	.LASF17
	.byte	0x5
	.uleb128 0
	.4byte	.LASF18
	.byte	0x5
	.uleb128 0
	.4byte	.LASF19
	.byte	0x5
	.uleb128 0
	.4byte	.LASF20
	.byte	0x5
	.uleb128 0
	.4byte	.LASF21
	.byte	0x5
	.uleb128 0
	.4byte	.LASF22
	.byte	0x5
	.uleb128 0
	.4byte	.LASF23
	.byte	0x5
	.uleb128 0
	.4byte	.LASF24
	.byte	0x5
	.uleb128 0
	.4byte	.LASF25
	.byte	0x5
	.uleb128 0
	.4byte	.LASF26
	.byte	0x5
	.uleb128 0
	.4byte	.LASF27
	.byte	0x5
	.uleb128 0
	.4byte	.LASF28
	.byte	0x5
	.uleb128 0
	.4byte	.LASF29
	.byte	0x5
	.uleb128 0
	.4byte	.LASF30
	.byte	0x5
	.uleb128 0
	.4byte	.LASF31
	.byte	0x5
	.uleb128 0
	.4byte	.LASF32
	.byte	0x5
	.uleb128 0
	.4byte	.LASF33
	.byte	0x5
	.uleb128 0
	.4byte	.LASF34
	.byte	0x5
	.uleb128 0
	.4byte	.LASF35
	.byte	0x5
	.uleb128 0
	.4byte	.LASF36
	.byte	0x5
	.uleb128 0
	.4byte	.LASF37
	.byte	0x5
	.uleb128 0
	.4byte	.LASF38
	.byte	0x5
	.uleb128 0
	.4byte	.LASF39
	.byte	0x5
	.uleb128 0
	.4byte	.LASF40
	.byte	0x5
	.uleb128 0
	.4byte	.LASF41
	.byte	0x5
	.uleb128 0
	.4byte	.LASF42
	.byte	0x5
	.uleb128 0
	.4byte	.LASF43
	.byte	0x5
	.uleb128 0
	.4byte	.LASF44
	.byte	0x5
	.uleb128 0
	.4byte	.LASF45
	.byte	0x5
	.uleb128 0
	.4byte	.LASF46
	.byte	0x5
	.uleb128 0
	.4byte	.LASF47
	.byte	0x5
	.uleb128 0
	.4byte	.LASF48
	.byte	0x5
	.uleb128 0
	.4byte	.LASF49
	.byte	0x5
	.uleb128 0
	.4byte	.LASF50
	.byte	0x5
	.uleb128 0
	.4byte	.LASF51
	.byte	0x5
	.uleb128 0
	.4byte	.LASF52
	.byte	0x5
	.uleb128 0
	.4byte	.LASF53
	.byte	0x5
	.uleb128 0
	.4byte	.LASF54
	.byte	0x5
	.uleb128 0
	.4byte	.LASF55
	.byte	0x5
	.uleb128 0
	.4byte	.LASF56
	.byte	0x5
	.uleb128 0
	.4byte	.LASF57
	.byte	0x5
	.uleb128 0
	.4byte	.LASF58
	.byte	0x5
	.uleb128 0
	.4byte	.LASF59
	.byte	0x5
	.uleb128 0
	.4byte	.LASF60
	.byte	0x5
	.uleb128 0
	.4byte	.LASF61
	.byte	0x5
	.uleb128 0
	.4byte	.LASF62
	.byte	0x5
	.uleb128 0
	.4byte	.LASF63
	.byte	0x5
	.uleb128 0
	.4byte	.LASF64
	.byte	0x5
	.uleb128 0
	.4byte	.LASF65
	.byte	0x5
	.uleb128 0
	.4byte	.LASF66
	.byte	0x5
	.uleb128 0
	.4byte	.LASF67
	.byte	0x5
	.uleb128 0
	.4byte	.LASF68
	.byte	0x5
	.uleb128 0
	.4byte	.LASF69
	.byte	0x5
	.uleb128 0
	.4byte	.LASF70
	.byte	0x5
	.uleb128 0
	.4byte	.LASF71
	.byte	0x5
	.uleb128 0
	.4byte	.LASF72
	.byte	0x5
	.uleb128 0
	.4byte	.LASF73
	.byte	0x5
	.uleb128 0
	.4byte	.LASF74
	.byte	0x5
	.uleb128 0
	.4byte	.LASF75
	.byte	0x5
	.uleb128 0
	.4byte	.LASF76
	.byte	0x5
	.uleb128 0
	.4byte	.LASF77
	.byte	0x5
	.uleb128 0
	.4byte	.LASF78
	.byte	0x5
	.uleb128 0
	.4byte	.LASF79
	.byte	0x5
	.uleb128 0
	.4byte	.LASF80
	.byte	0x5
	.uleb128 0
	.4byte	.LASF81
	.byte	0x5
	.uleb128 0
	.4byte	.LASF82
	.byte	0x5
	.uleb128 0
	.4byte	.LASF83
	.byte	0x5
	.uleb128 0
	.4byte	.LASF84
	.byte	0x5
	.uleb128 0
	.4byte	.LASF85
	.byte	0x5
	.uleb128 0
	.4byte	.LASF86
	.byte	0x5
	.uleb128 0
	.4byte	.LASF87
	.byte	0x5
	.uleb128 0
	.4byte	.LASF88
	.byte	0x5
	.uleb128 0
	.4byte	.LASF89
	.byte	0x5
	.uleb128 0
	.4byte	.LASF90
	.byte	0x5
	.uleb128 0
	.4byte	.LASF91
	.byte	0x5
	.uleb128 0
	.4byte	.LASF92
	.byte	0x5
	.uleb128 0
	.4byte	.LASF93
	.byte	0x5
	.uleb128 0
	.4byte	.LASF94
	.byte	0x5
	.uleb128 0
	.4byte	.LASF95
	.byte	0x5
	.uleb128 0
	.4byte	.LASF96
	.byte	0x5
	.uleb128 0
	.4byte	.LASF97
	.byte	0x5
	.uleb128 0
	.4byte	.LASF98
	.byte	0x5
	.uleb128 0
	.4byte	.LASF99
	.byte	0x5
	.uleb128 0
	.4byte	.LASF100
	.byte	0x5
	.uleb128 0
	.4byte	.LASF101
	.byte	0x5
	.uleb128 0
	.4byte	.LASF102
	.byte	0x5
	.uleb128 0
	.4byte	.LASF103
	.byte	0x5
	.uleb128 0
	.4byte	.LASF104
	.byte	0x5
	.uleb128 0
	.4byte	.LASF105
	.byte	0x5
	.uleb128 0
	.4byte	.LASF106
	.byte	0x5
	.uleb128 0
	.4byte	.LASF107
	.byte	0x5
	.uleb128 0
	.4byte	.LASF108
	.byte	0x5
	.uleb128 0
	.4byte	.LASF109
	.byte	0x5
	.uleb128 0
	.4byte	.LASF110
	.byte	0x5
	.uleb128 0
	.4byte	.LASF111
	.byte	0x5
	.uleb128 0
	.4byte	.LASF112
	.byte	0x5
	.uleb128 0
	.4byte	.LASF113
	.byte	0x5
	.uleb128 0
	.4byte	.LASF114
	.byte	0x5
	.uleb128 0
	.4byte	.LASF115
	.byte	0x5
	.uleb128 0
	.4byte	.LASF116
	.byte	0x5
	.uleb128 0
	.4byte	.LASF117
	.byte	0x5
	.uleb128 0
	.4byte	.LASF118
	.byte	0x5
	.uleb128 0
	.4byte	.LASF119
	.byte	0x5
	.uleb128 0
	.4byte	.LASF120
	.byte	0x5
	.uleb128 0
	.4byte	.LASF121
	.byte	0x5
	.uleb128 0
	.4byte	.LASF122
	.byte	0x5
	.uleb128 0
	.4byte	.LASF123
	.byte	0x5
	.uleb128 0
	.4byte	.LASF124
	.byte	0x5
	.uleb128 0
	.4byte	.LASF125
	.byte	0x5
	.uleb128 0
	.4byte	.LASF126
	.byte	0x5
	.uleb128 0
	.4byte	.LASF127
	.byte	0x5
	.uleb128 0
	.4byte	.LASF128
	.byte	0x5
	.uleb128 0
	.4byte	.LASF129
	.byte	0x5
	.uleb128 0
	.4byte	.LASF130
	.byte	0x5
	.uleb128 0
	.4byte	.LASF131
	.byte	0x5
	.uleb128 0
	.4byte	.LASF132
	.byte	0x5
	.uleb128 0
	.4byte	.LASF133
	.byte	0x5
	.uleb128 0
	.4byte	.LASF134
	.byte	0x5
	.uleb128 0
	.4byte	.LASF135
	.byte	0x5
	.uleb128 0
	.4byte	.LASF136
	.byte	0x5
	.uleb128 0
	.4byte	.LASF137
	.byte	0x5
	.uleb128 0
	.4byte	.LASF138
	.byte	0x5
	.uleb128 0
	.4byte	.LASF139
	.byte	0x5
	.uleb128 0
	.4byte	.LASF140
	.byte	0x5
	.uleb128 0
	.4byte	.LASF141
	.byte	0x5
	.uleb128 0
	.4byte	.LASF142
	.byte	0x5
	.uleb128 0
	.4byte	.LASF143
	.byte	0x5
	.uleb128 0
	.4byte	.LASF144
	.byte	0x5
	.uleb128 0
	.4byte	.LASF145
	.byte	0x5
	.uleb128 0
	.4byte	.LASF146
	.byte	0x5
	.uleb128 0
	.4byte	.LASF147
	.byte	0x5
	.uleb128 0
	.4byte	.LASF148
	.byte	0x5
	.uleb128 0
	.4byte	.LASF149
	.byte	0x5
	.uleb128 0
	.4byte	.LASF150
	.byte	0x5
	.uleb128 0
	.4byte	.LASF151
	.byte	0x5
	.uleb128 0
	.4byte	.LASF152
	.byte	0x5
	.uleb128 0
	.4byte	.LASF153
	.byte	0x5
	.uleb128 0
	.4byte	.LASF154
	.byte	0x5
	.uleb128 0
	.4byte	.LASF155
	.byte	0x5
	.uleb128 0
	.4byte	.LASF156
	.byte	0x5
	.uleb128 0
	.4byte	.LASF157
	.byte	0x5
	.uleb128 0
	.4byte	.LASF158
	.byte	0x5
	.uleb128 0
	.4byte	.LASF159
	.byte	0x5
	.uleb128 0
	.4byte	.LASF160
	.byte	0x5
	.uleb128 0
	.4byte	.LASF161
	.byte	0x5
	.uleb128 0
	.4byte	.LASF162
	.byte	0x5
	.uleb128 0
	.4byte	.LASF163
	.byte	0x5
	.uleb128 0
	.4byte	.LASF164
	.byte	0x5
	.uleb128 0
	.4byte	.LASF165
	.byte	0x5
	.uleb128 0
	.4byte	.LASF166
	.byte	0x5
	.uleb128 0
	.4byte	.LASF167
	.byte	0x5
	.uleb128 0
	.4byte	.LASF168
	.byte	0x5
	.uleb128 0
	.4byte	.LASF169
	.byte	0x5
	.uleb128 0
	.4byte	.LASF170
	.byte	0x5
	.uleb128 0
	.4byte	.LASF171
	.byte	0x5
	.uleb128 0
	.4byte	.LASF172
	.byte	0x5
	.uleb128 0
	.4byte	.LASF173
	.byte	0x5
	.uleb128 0
	.4byte	.LASF174
	.byte	0x5
	.uleb128 0
	.4byte	.LASF175
	.byte	0x5
	.uleb128 0
	.4byte	.LASF176
	.byte	0x5
	.uleb128 0
	.4byte	.LASF177
	.byte	0x5
	.uleb128 0
	.4byte	.LASF178
	.byte	0x5
	.uleb128 0
	.4byte	.LASF179
	.byte	0x5
	.uleb128 0
	.4byte	.LASF180
	.byte	0x5
	.uleb128 0
	.4byte	.LASF181
	.byte	0x5
	.uleb128 0
	.4byte	.LASF182
	.byte	0x5
	.uleb128 0
	.4byte	.LASF183
	.byte	0x5
	.uleb128 0
	.4byte	.LASF184
	.byte	0x5
	.uleb128 0
	.4byte	.LASF185
	.byte	0x5
	.uleb128 0
	.4byte	.LASF186
	.byte	0x5
	.uleb128 0
	.4byte	.LASF187
	.byte	0x5
	.uleb128 0
	.4byte	.LASF188
	.byte	0x5
	.uleb128 0
	.4byte	.LASF189
	.byte	0x5
	.uleb128 0
	.4byte	.LASF190
	.byte	0x5
	.uleb128 0
	.4byte	.LASF191
	.byte	0x5
	.uleb128 0
	.4byte	.LASF192
	.byte	0x5
	.uleb128 0
	.4byte	.LASF193
	.byte	0x5
	.uleb128 0
	.4byte	.LASF194
	.byte	0x5
	.uleb128 0
	.4byte	.LASF195
	.byte	0x5
	.uleb128 0
	.4byte	.LASF196
	.byte	0x5
	.uleb128 0
	.4byte	.LASF197
	.byte	0x5
	.uleb128 0
	.4byte	.LASF198
	.byte	0x5
	.uleb128 0
	.4byte	.LASF199
	.byte	0x5
	.uleb128 0
	.4byte	.LASF200
	.byte	0x5
	.uleb128 0
	.4byte	.LASF201
	.byte	0x5
	.uleb128 0
	.4byte	.LASF202
	.byte	0x5
	.uleb128 0
	.4byte	.LASF203
	.byte	0x5
	.uleb128 0
	.4byte	.LASF204
	.byte	0x5
	.uleb128 0
	.4byte	.LASF205
	.byte	0x5
	.uleb128 0
	.4byte	.LASF206
	.byte	0x5
	.uleb128 0
	.4byte	.LASF207
	.byte	0x5
	.uleb128 0
	.4byte	.LASF208
	.byte	0x5
	.uleb128 0
	.4byte	.LASF209
	.byte	0x5
	.uleb128 0
	.4byte	.LASF210
	.byte	0x5
	.uleb128 0
	.4byte	.LASF211
	.byte	0x5
	.uleb128 0
	.4byte	.LASF212
	.byte	0x5
	.uleb128 0
	.4byte	.LASF213
	.byte	0x5
	.uleb128 0
	.4byte	.LASF214
	.byte	0x5
	.uleb128 0
	.4byte	.LASF215
	.byte	0x5
	.uleb128 0
	.4byte	.LASF216
	.byte	0x5
	.uleb128 0
	.4byte	.LASF217
	.byte	0x5
	.uleb128 0
	.4byte	.LASF218
	.byte	0x5
	.uleb128 0
	.4byte	.LASF219
	.byte	0x5
	.uleb128 0
	.4byte	.LASF220
	.byte	0x5
	.uleb128 0
	.4byte	.LASF221
	.byte	0x5
	.uleb128 0
	.4byte	.LASF222
	.byte	0x5
	.uleb128 0
	.4byte	.LASF223
	.byte	0x5
	.uleb128 0
	.4byte	.LASF224
	.byte	0x5
	.uleb128 0
	.4byte	.LASF225
	.byte	0x5
	.uleb128 0
	.4byte	.LASF226
	.byte	0x5
	.uleb128 0
	.4byte	.LASF227
	.byte	0x5
	.uleb128 0
	.4byte	.LASF228
	.byte	0x5
	.uleb128 0
	.4byte	.LASF229
	.byte	0x5
	.uleb128 0
	.4byte	.LASF230
	.byte	0x5
	.uleb128 0
	.4byte	.LASF231
	.byte	0x5
	.uleb128 0
	.4byte	.LASF232
	.byte	0x5
	.uleb128 0
	.4byte	.LASF233
	.byte	0x5
	.uleb128 0
	.4byte	.LASF234
	.byte	0x5
	.uleb128 0
	.4byte	.LASF235
	.byte	0x5
	.uleb128 0
	.4byte	.LASF236
	.byte	0x5
	.uleb128 0
	.4byte	.LASF237
	.byte	0x5
	.uleb128 0
	.4byte	.LASF238
	.byte	0x5
	.uleb128 0
	.4byte	.LASF239
	.byte	0x5
	.uleb128 0
	.4byte	.LASF240
	.byte	0x5
	.uleb128 0
	.4byte	.LASF241
	.byte	0x5
	.uleb128 0
	.4byte	.LASF242
	.byte	0x5
	.uleb128 0
	.4byte	.LASF243
	.byte	0x5
	.uleb128 0
	.4byte	.LASF244
	.byte	0x5
	.uleb128 0
	.4byte	.LASF245
	.byte	0x5
	.uleb128 0
	.4byte	.LASF246
	.byte	0x5
	.uleb128 0
	.4byte	.LASF247
	.byte	0x5
	.uleb128 0
	.4byte	.LASF248
	.byte	0x5
	.uleb128 0
	.4byte	.LASF249
	.byte	0x5
	.uleb128 0
	.4byte	.LASF250
	.byte	0x5
	.uleb128 0
	.4byte	.LASF251
	.byte	0x5
	.uleb128 0
	.4byte	.LASF252
	.byte	0x5
	.uleb128 0
	.4byte	.LASF253
	.byte	0x5
	.uleb128 0
	.4byte	.LASF254
	.byte	0x5
	.uleb128 0
	.4byte	.LASF255
	.byte	0x5
	.uleb128 0
	.4byte	.LASF256
	.byte	0x5
	.uleb128 0
	.4byte	.LASF257
	.byte	0x5
	.uleb128 0
	.4byte	.LASF258
	.byte	0x5
	.uleb128 0
	.4byte	.LASF259
	.byte	0x5
	.uleb128 0
	.4byte	.LASF260
	.byte	0x5
	.uleb128 0
	.4byte	.LASF261
	.byte	0x5
	.uleb128 0
	.4byte	.LASF262
	.byte	0x5
	.uleb128 0
	.4byte	.LASF263
	.byte	0x5
	.uleb128 0
	.4byte	.LASF264
	.byte	0x5
	.uleb128 0
	.4byte	.LASF265
	.byte	0x5
	.uleb128 0
	.4byte	.LASF266
	.byte	0x5
	.uleb128 0
	.4byte	.LASF267
	.byte	0x5
	.uleb128 0
	.4byte	.LASF268
	.byte	0x5
	.uleb128 0
	.4byte	.LASF269
	.byte	0x5
	.uleb128 0
	.4byte	.LASF270
	.byte	0x5
	.uleb128 0
	.4byte	.LASF271
	.byte	0x5
	.uleb128 0
	.4byte	.LASF272
	.byte	0x5
	.uleb128 0
	.4byte	.LASF273
	.byte	0x5
	.uleb128 0
	.4byte	.LASF274
	.byte	0x5
	.uleb128 0
	.4byte	.LASF275
	.byte	0x5
	.uleb128 0
	.4byte	.LASF276
	.byte	0x5
	.uleb128 0
	.4byte	.LASF277
	.byte	0x5
	.uleb128 0
	.4byte	.LASF278
	.byte	0x5
	.uleb128 0
	.4byte	.LASF279
	.byte	0x5
	.uleb128 0
	.4byte	.LASF280
	.byte	0x5
	.uleb128 0
	.4byte	.LASF281
	.byte	0x5
	.uleb128 0
	.4byte	.LASF282
	.byte	0x5
	.uleb128 0
	.4byte	.LASF283
	.byte	0x5
	.uleb128 0
	.4byte	.LASF284
	.byte	0x5
	.uleb128 0
	.4byte	.LASF285
	.byte	0x5
	.uleb128 0
	.4byte	.LASF286
	.byte	0x5
	.uleb128 0
	.4byte	.LASF287
	.byte	0x5
	.uleb128 0
	.4byte	.LASF288
	.byte	0x5
	.uleb128 0
	.4byte	.LASF289
	.byte	0x5
	.uleb128 0
	.4byte	.LASF290
	.byte	0x5
	.uleb128 0
	.4byte	.LASF291
	.byte	0x5
	.uleb128 0
	.4byte	.LASF292
	.byte	0x5
	.uleb128 0
	.4byte	.LASF293
	.byte	0x5
	.uleb128 0
	.4byte	.LASF294
	.byte	0x5
	.uleb128 0
	.4byte	.LASF295
	.byte	0x5
	.uleb128 0
	.4byte	.LASF296
	.byte	0x5
	.uleb128 0
	.4byte	.LASF297
	.byte	0x5
	.uleb128 0
	.4byte	.LASF298
	.byte	0x5
	.uleb128 0
	.4byte	.LASF299
	.byte	0x5
	.uleb128 0
	.4byte	.LASF300
	.byte	0x5
	.uleb128 0
	.4byte	.LASF301
	.byte	0x5
	.uleb128 0
	.4byte	.LASF302
	.byte	0x5
	.uleb128 0
	.4byte	.LASF303
	.byte	0x5
	.uleb128 0
	.4byte	.LASF304
	.byte	0x5
	.uleb128 0
	.4byte	.LASF305
	.byte	0x5
	.uleb128 0
	.4byte	.LASF306
	.byte	0x5
	.uleb128 0
	.4byte	.LASF307
	.byte	0x5
	.uleb128 0
	.4byte	.LASF308
	.byte	0x5
	.uleb128 0
	.4byte	.LASF309
	.byte	0x5
	.uleb128 0
	.4byte	.LASF310
	.byte	0x5
	.uleb128 0
	.4byte	.LASF311
	.byte	0x5
	.uleb128 0
	.4byte	.LASF312
	.byte	0x5
	.uleb128 0
	.4byte	.LASF313
	.byte	0x5
	.uleb128 0
	.4byte	.LASF314
	.byte	0x5
	.uleb128 0
	.4byte	.LASF315
	.byte	0x5
	.uleb128 0
	.4byte	.LASF316
	.byte	0x5
	.uleb128 0
	.4byte	.LASF317
	.byte	0x5
	.uleb128 0
	.4byte	.LASF318
	.byte	0x5
	.uleb128 0
	.4byte	.LASF319
	.byte	0x5
	.uleb128 0
	.4byte	.LASF320
	.byte	0x5
	.uleb128 0
	.4byte	.LASF321
	.byte	0x5
	.uleb128 0
	.4byte	.LASF322
	.byte	0x5
	.uleb128 0
	.4byte	.LASF323
	.byte	0x5
	.uleb128 0
	.4byte	.LASF324
	.byte	0x5
	.uleb128 0
	.4byte	.LASF325
	.byte	0x5
	.uleb128 0
	.4byte	.LASF326
	.byte	0x5
	.uleb128 0
	.4byte	.LASF327
	.byte	0x5
	.uleb128 0
	.4byte	.LASF328
	.byte	0x5
	.uleb128 0
	.4byte	.LASF329
	.byte	0x5
	.uleb128 0
	.4byte	.LASF330
	.byte	0x5
	.uleb128 0
	.4byte	.LASF331
	.byte	0x5
	.uleb128 0
	.4byte	.LASF332
	.byte	0x5
	.uleb128 0
	.4byte	.LASF333
	.byte	0x5
	.uleb128 0
	.4byte	.LASF334
	.byte	0x5
	.uleb128 0
	.4byte	.LASF335
	.byte	0x5
	.uleb128 0
	.4byte	.LASF336
	.byte	0x5
	.uleb128 0
	.4byte	.LASF337
	.byte	0x5
	.uleb128 0
	.4byte	.LASF338
	.byte	0x5
	.uleb128 0
	.4byte	.LASF339
	.byte	0x5
	.uleb128 0
	.4byte	.LASF340
	.byte	0x5
	.uleb128 0
	.4byte	.LASF341
	.byte	0x5
	.uleb128 0
	.4byte	.LASF342
	.byte	0x5
	.uleb128 0
	.4byte	.LASF343
	.byte	0x5
	.uleb128 0
	.4byte	.LASF344
	.byte	0x5
	.uleb128 0
	.4byte	.LASF345
	.byte	0x5
	.uleb128 0
	.4byte	.LASF346
	.byte	0x5
	.uleb128 0
	.4byte	.LASF347
	.byte	0x5
	.uleb128 0
	.4byte	.LASF348
	.byte	0x5
	.uleb128 0
	.4byte	.LASF349
	.byte	0x5
	.uleb128 0
	.4byte	.LASF350
	.byte	0x5
	.uleb128 0
	.4byte	.LASF351
	.byte	0x5
	.uleb128 0
	.4byte	.LASF352
	.byte	0x5
	.uleb128 0
	.4byte	.LASF353
	.byte	0x5
	.uleb128 0
	.4byte	.LASF354
	.byte	0x5
	.uleb128 0
	.4byte	.LASF355
	.byte	0x5
	.uleb128 0
	.4byte	.LASF356
	.byte	0x5
	.uleb128 0
	.4byte	.LASF357
	.byte	0x5
	.uleb128 0
	.4byte	.LASF358
	.byte	0x5
	.uleb128 0
	.4byte	.LASF359
	.byte	0x5
	.uleb128 0
	.4byte	.LASF360
	.byte	0x5
	.uleb128 0
	.4byte	.LASF361
	.byte	0x5
	.uleb128 0
	.4byte	.LASF362
	.byte	0x5
	.uleb128 0
	.4byte	.LASF363
	.byte	0x5
	.uleb128 0
	.4byte	.LASF364
	.byte	0x5
	.uleb128 0
	.4byte	.LASF365
	.byte	0x5
	.uleb128 0
	.4byte	.LASF366
	.byte	0x5
	.uleb128 0
	.4byte	.LASF367
	.byte	0x5
	.uleb128 0
	.4byte	.LASF368
	.byte	0x5
	.uleb128 0
	.4byte	.LASF369
	.byte	0x5
	.uleb128 0
	.4byte	.LASF370
	.byte	0x5
	.uleb128 0
	.4byte	.LASF371
	.byte	0x5
	.uleb128 0
	.4byte	.LASF372
	.byte	0x5
	.uleb128 0
	.4byte	.LASF373
	.byte	0x5
	.uleb128 0
	.4byte	.LASF374
	.byte	0x5
	.uleb128 0
	.4byte	.LASF375
	.byte	0x5
	.uleb128 0
	.4byte	.LASF376
	.byte	0x5
	.uleb128 0
	.4byte	.LASF377
	.byte	0x5
	.uleb128 0
	.4byte	.LASF378
	.byte	0x5
	.uleb128 0
	.4byte	.LASF379
	.byte	0x5
	.uleb128 0
	.4byte	.LASF380
	.byte	0x5
	.uleb128 0
	.4byte	.LASF381
	.byte	0x5
	.uleb128 0
	.4byte	.LASF382
	.byte	0x5
	.uleb128 0
	.4byte	.LASF383
	.byte	0x5
	.uleb128 0
	.4byte	.LASF384
	.byte	0x5
	.uleb128 0
	.4byte	.LASF385
	.byte	0x5
	.uleb128 0
	.4byte	.LASF386
	.byte	0x5
	.uleb128 0
	.4byte	.LASF387
	.byte	0x5
	.uleb128 0
	.4byte	.LASF388
	.byte	0x5
	.uleb128 0
	.4byte	.LASF389
	.byte	0x5
	.uleb128 0
	.4byte	.LASF390
	.byte	0x5
	.uleb128 0
	.4byte	.LASF391
	.byte	0x5
	.uleb128 0
	.4byte	.LASF392
	.byte	0x5
	.uleb128 0
	.4byte	.LASF393
	.byte	0x5
	.uleb128 0
	.4byte	.LASF394
	.byte	0x5
	.uleb128 0
	.4byte	.LASF395
	.byte	0x5
	.uleb128 0
	.4byte	.LASF396
	.byte	0x5
	.uleb128 0
	.4byte	.LASF397
	.byte	0x5
	.uleb128 0
	.4byte	.LASF398
	.byte	0x5
	.uleb128 0
	.4byte	.LASF399
	.byte	0x5
	.uleb128 0
	.4byte	.LASF400
	.byte	0x5
	.uleb128 0
	.4byte	.LASF401
	.byte	0x5
	.uleb128 0
	.4byte	.LASF402
	.byte	0x5
	.uleb128 0
	.4byte	.LASF403
	.byte	0x5
	.uleb128 0
	.4byte	.LASF404
	.byte	0x5
	.uleb128 0
	.4byte	.LASF405
	.byte	0x5
	.uleb128 0
	.4byte	.LASF406
	.byte	0x5
	.uleb128 0
	.4byte	.LASF407
	.byte	0x5
	.uleb128 0
	.4byte	.LASF408
	.byte	0x5
	.uleb128 0
	.4byte	.LASF409
	.byte	0x5
	.uleb128 0
	.4byte	.LASF410
	.byte	0x5
	.uleb128 0
	.4byte	.LASF411
	.byte	0x5
	.uleb128 0
	.4byte	.LASF412
	.byte	0x5
	.uleb128 0
	.4byte	.LASF413
	.byte	0x5
	.uleb128 0
	.4byte	.LASF414
	.byte	0x5
	.uleb128 0
	.4byte	.LASF415
	.byte	0x5
	.uleb128 0
	.4byte	.LASF416
	.byte	0x5
	.uleb128 0
	.4byte	.LASF417
	.byte	0x5
	.uleb128 0
	.4byte	.LASF418
	.byte	0x5
	.uleb128 0
	.4byte	.LASF419
	.byte	0x5
	.uleb128 0
	.4byte	.LASF420
	.byte	0x5
	.uleb128 0
	.4byte	.LASF421
	.byte	0x5
	.uleb128 0
	.4byte	.LASF422
	.byte	0x5
	.uleb128 0
	.4byte	.LASF423
	.byte	0x5
	.uleb128 0
	.4byte	.LASF424
	.byte	0x5
	.uleb128 0
	.4byte	.LASF425
	.byte	0x5
	.uleb128 0
	.4byte	.LASF426
	.byte	0x5
	.uleb128 0
	.4byte	.LASF427
	.byte	0x5
	.uleb128 0
	.4byte	.LASF428
	.byte	0x5
	.uleb128 0
	.4byte	.LASF429
	.byte	0x5
	.uleb128 0
	.4byte	.LASF430
	.byte	0x5
	.uleb128 0
	.4byte	.LASF431
	.byte	0x5
	.uleb128 0
	.4byte	.LASF432
	.byte	0x5
	.uleb128 0
	.4byte	.LASF433
	.byte	0x5
	.uleb128 0
	.4byte	.LASF434
	.byte	0x5
	.uleb128 0
	.4byte	.LASF435
	.byte	0x5
	.uleb128 0
	.4byte	.LASF436
	.byte	0x5
	.uleb128 0
	.4byte	.LASF437
	.byte	0x5
	.uleb128 0
	.4byte	.LASF438
	.byte	0x5
	.uleb128 0
	.4byte	.LASF439
	.byte	0x5
	.uleb128 0
	.4byte	.LASF440
	.byte	0x5
	.uleb128 0
	.4byte	.LASF441
	.byte	0x5
	.uleb128 0
	.4byte	.LASF442
	.byte	0x5
	.uleb128 0
	.4byte	.LASF443
	.byte	0x5
	.uleb128 0
	.4byte	.LASF444
	.byte	0x5
	.uleb128 0
	.4byte	.LASF445
	.byte	0x5
	.uleb128 0
	.4byte	.LASF446
	.byte	0x5
	.uleb128 0
	.4byte	.LASF447
	.byte	0x5
	.uleb128 0
	.4byte	.LASF448
	.byte	0x5
	.uleb128 0
	.4byte	.LASF449
	.byte	0x5
	.uleb128 0
	.4byte	.LASF450
	.byte	0x5
	.uleb128 0
	.4byte	.LASF451
	.byte	0x5
	.uleb128 0
	.4byte	.LASF448
	.byte	0x5
	.uleb128 0
	.4byte	.LASF449
	.byte	0x5
	.uleb128 0
	.4byte	.LASF450
	.byte	0x5
	.uleb128 0
	.4byte	.LASF452
	.byte	0x5
	.uleb128 0
	.4byte	.LASF453
	.byte	0x5
	.uleb128 0
	.4byte	.LASF454
	.byte	0x5
	.uleb128 0
	.4byte	.LASF455
	.byte	0x5
	.uleb128 0
	.4byte	.LASF456
	.byte	0x5
	.uleb128 0
	.4byte	.LASF457
	.byte	0x5
	.uleb128 0
	.4byte	.LASF458
	.byte	0x5
	.uleb128 0
	.4byte	.LASF459
	.byte	0x5
	.uleb128 0
	.4byte	.LASF460
	.byte	0x5
	.uleb128 0
	.4byte	.LASF461
	.byte	0x5
	.uleb128 0
	.4byte	.LASF462
	.byte	0x5
	.uleb128 0
	.4byte	.LASF463
	.byte	0x5
	.uleb128 0
	.4byte	.LASF464
	.byte	0x5
	.uleb128 0
	.4byte	.LASF448
	.byte	0x5
	.uleb128 0
	.4byte	.LASF449
	.byte	0x5
	.uleb128 0
	.4byte	.LASF450
	.byte	0x5
	.uleb128 0
	.4byte	.LASF451
	.byte	0x5
	.uleb128 0
	.4byte	.LASF448
	.byte	0x5
	.uleb128 0
	.4byte	.LASF449
	.byte	0x5
	.uleb128 0
	.4byte	.LASF450
	.byte	0x5
	.uleb128 0
	.4byte	.LASF452
	.byte	0x5
	.uleb128 0
	.4byte	.LASF453
	.byte	0x5
	.uleb128 0
	.4byte	.LASF454
	.byte	0x5
	.uleb128 0
	.4byte	.LASF455
	.byte	0x5
	.uleb128 0
	.4byte	.LASF456
	.byte	0x3
	.uleb128 0x1
	.uleb128 0x9
	.byte	0x3
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x5
	.uleb128 0x1d
	.4byte	.LASF465
	.byte	0x3
	.uleb128 0x22
	.uleb128 0xb
	.byte	0x7
	.4byte	.Ldebug_macro2
	.byte	0x4
	.byte	0x3
	.uleb128 0x31
	.uleb128 0xc
	.byte	0x3
	.uleb128 0xe
	.uleb128 0x2
	.byte	0x7
	.4byte	.Ldebug_macro3
	.byte	0x4
	.byte	0x5
	.uleb128 0x10
	.4byte	.LASF647
	.byte	0x4
	.byte	0x3
	.uleb128 0x38
	.uleb128 0xd
	.byte	0x5
	.uleb128 0x48
	.4byte	.LASF648
	.byte	0x3
	.uleb128 0x4a
	.uleb128 0xe
	.byte	0x7
	.4byte	.Ldebug_macro4
	.byte	0x4
	.byte	0x7
	.4byte	.Ldebug_macro5
	.byte	0x4
	.byte	0x3
	.uleb128 0x3b
	.uleb128 0xf
	.byte	0x7
	.4byte	.Ldebug_macro6
	.byte	0x4
	.byte	0x3
	.uleb128 0x3e
	.uleb128 0x10
	.byte	0x5
	.uleb128 0x21
	.4byte	.LASF849
	.byte	0x3
	.uleb128 0x2d
	.uleb128 0x11
	.byte	0x5
	.uleb128 0x1d
	.4byte	.LASF850
	.byte	0x4
	.byte	0x3
	.uleb128 0x34
	.uleb128 0x3
	.byte	0x7
	.4byte	.Ldebug_macro7
	.byte	0x4
	.byte	0x7
	.4byte	.Ldebug_macro8
	.byte	0x3
	.uleb128 0x63
	.uleb128 0x12
	.byte	0x7
	.4byte	.Ldebug_macro9
	.byte	0x4
	.byte	0x4
	.byte	0x7
	.4byte	.Ldebug_macro10
	.byte	0x4
	.byte	0x3
	.uleb128 0x3
	.uleb128 0x4
	.byte	0x5
	.uleb128 0x1e
	.4byte	.LASF1067
	.byte	0x3
	.uleb128 0x24
	.uleb128 0x13
	.byte	0x7
	.4byte	.Ldebug_macro11
	.byte	0x4
	.byte	0x7
	.4byte	.Ldebug_macro12
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0x2
	.uleb128 0x7
	.byte	0x4
	.byte	0x3
	.uleb128 0x3
	.uleb128 0x8
	.byte	0x4
	.byte	0x3
	.uleb128 0x4
	.uleb128 0x6
	.byte	0x5
	.uleb128 0x1b
	.4byte	.LASF1120
	.byte	0x3
	.uleb128 0x1d
	.uleb128 0x14
	.byte	0x5
	.uleb128 0x8
	.4byte	.LASF1121
	.byte	0x3
	.uleb128 0xa
	.uleb128 0x15
	.byte	0x5
	.uleb128 0x7
	.4byte	.LASF1122
	.byte	0x3
	.uleb128 0xa
	.uleb128 0x16
	.byte	0x7
	.4byte	.Ldebug_macro13
	.byte	0x4
	.byte	0x7
	.4byte	.Ldebug_macro14
	.byte	0x4
	.byte	0x3
	.uleb128 0xb
	.uleb128 0x17
	.byte	0x5
	.uleb128 0x2
	.4byte	.LASF1142
	.byte	0x3
	.uleb128 0x4
	.uleb128 0x18
	.byte	0x7
	.4byte	.Ldebug_macro15
	.byte	0x4
	.byte	0x3
	.uleb128 0x5
	.uleb128 0x19
	.byte	0x7
	.4byte	.Ldebug_macro16
	.byte	0x4
	.byte	0x7
	.4byte	.Ldebug_macro17
	.byte	0x4
	.byte	0x7
	.4byte	.Ldebug_macro18
	.byte	0x4
	.byte	0x7
	.4byte	.Ldebug_macro19
	.byte	0x3
	.uleb128 0x23
	.uleb128 0x1a
	.byte	0x5
	.uleb128 0x2b
	.4byte	.LASF1179
	.byte	0x3
	.uleb128 0x2d
	.uleb128 0x1b
	.byte	0x7
	.4byte	.Ldebug_macro20
	.byte	0x4
	.byte	0x3
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0x7
	.4byte	.Ldebug_macro21
	.byte	0x4
	.byte	0x7
	.4byte	.Ldebug_macro22
	.byte	0x4
	.byte	0x3
	.uleb128 0x24
	.uleb128 0xb
	.byte	0x4
	.byte	0x5
	.uleb128 0x27
	.4byte	.LASF1324
	.byte	0x3
	.uleb128 0x28
	.uleb128 0x5
	.byte	0x7
	.4byte	.Ldebug_macro23
	.byte	0x4
	.byte	0x3
	.uleb128 0x3c
	.uleb128 0x1c
	.byte	0x5
	.uleb128 0xb
	.4byte	.LASF1327
	.byte	0x3
	.uleb128 0xd
	.uleb128 0x14
	.byte	0x4
	.byte	0x3
	.uleb128 0xe
	.uleb128 0xb
	.byte	0x4
	.byte	0x3
	.uleb128 0x10
	.uleb128 0x1d
	.byte	0x7
	.4byte	.Ldebug_macro24
	.byte	0x3
	.uleb128 0x18
	.uleb128 0xb
	.byte	0x7
	.4byte	.Ldebug_macro25
	.byte	0x4
	.byte	0x3
	.uleb128 0x1b
	.uleb128 0x1e
	.byte	0x5
	.uleb128 0x6
	.4byte	.LASF1332
	.byte	0x4
	.byte	0x7
	.4byte	.Ldebug_macro26
	.byte	0x4
	.byte	0x7
	.4byte	.Ldebug_macro27
	.byte	0x3
	.uleb128 0x23
	.uleb128 0x1f
	.byte	0x7
	.4byte	.Ldebug_macro28
	.byte	0x4
	.byte	0x7
	.4byte	.Ldebug_macro29
	.byte	0x4
	.byte	0x7
	.4byte	.Ldebug_macro30
	.byte	0x3
	.uleb128 0x55
	.uleb128 0x20
	.byte	0x7
	.4byte	.Ldebug_macro31
	.byte	0x4
	.byte	0x7
	.4byte	.Ldebug_macro32
	.byte	0x4
	.byte	0x3
	.uleb128 0x5
	.uleb128 0x5
	.byte	0x7
	.4byte	.Ldebug_macro33
	.byte	0x4
	.byte	0x4
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.stddef.h.39.0c6f2630f03793b5249e706bb6366a15,comdat
.Ldebug_macro2:
	.2byte	0x5
	.byte	0
	.byte	0x5
	.uleb128 0x27
	.4byte	.LASF466
	.byte	0x5
	.uleb128 0x28
	.4byte	.LASF467
	.byte	0x5
	.uleb128 0x2a
	.4byte	.LASF468
	.byte	0x5
	.uleb128 0x93
	.4byte	.LASF469
	.byte	0x5
	.uleb128 0x94
	.4byte	.LASF470
	.byte	0x5
	.uleb128 0x95
	.4byte	.LASF471
	.byte	0x5
	.uleb128 0x96
	.4byte	.LASF472
	.byte	0x5
	.uleb128 0x97
	.4byte	.LASF473
	.byte	0x5
	.uleb128 0x98
	.4byte	.LASF474
	.byte	0x5
	.uleb128 0x99
	.4byte	.LASF475
	.byte	0x5
	.uleb128 0x9a
	.4byte	.LASF476
	.byte	0x5
	.uleb128 0x9b
	.4byte	.LASF477
	.byte	0x5
	.uleb128 0x9c
	.4byte	.LASF478
	.byte	0x6
	.uleb128 0xad
	.4byte	.LASF479
	.byte	0x5
	.uleb128 0xc8
	.4byte	.LASF480
	.byte	0x5
	.uleb128 0xc9
	.4byte	.LASF481
	.byte	0x5
	.uleb128 0xca
	.4byte	.LASF482
	.byte	0x5
	.uleb128 0xcb
	.4byte	.LASF483
	.byte	0x5
	.uleb128 0xcc
	.4byte	.LASF484
	.byte	0x5
	.uleb128 0xcd
	.4byte	.LASF485
	.byte	0x5
	.uleb128 0xce
	.4byte	.LASF486
	.byte	0x5
	.uleb128 0xcf
	.4byte	.LASF487
	.byte	0x5
	.uleb128 0xd0
	.4byte	.LASF488
	.byte	0x5
	.uleb128 0xd1
	.4byte	.LASF489
	.byte	0x5
	.uleb128 0xd2
	.4byte	.LASF490
	.byte	0x5
	.uleb128 0xd3
	.4byte	.LASF491
	.byte	0x5
	.uleb128 0xd4
	.4byte	.LASF492
	.byte	0x5
	.uleb128 0xd5
	.4byte	.LASF493
	.byte	0x5
	.uleb128 0xd6
	.4byte	.LASF494
	.byte	0x5
	.uleb128 0xd7
	.4byte	.LASF495
	.byte	0x5
	.uleb128 0xd8
	.4byte	.LASF496
	.byte	0x5
	.uleb128 0xdf
	.4byte	.LASF497
	.byte	0x6
	.uleb128 0xfc
	.4byte	.LASF498
	.byte	0x5
	.uleb128 0x11a
	.4byte	.LASF499
	.byte	0x5
	.uleb128 0x11b
	.4byte	.LASF500
	.byte	0x5
	.uleb128 0x11c
	.4byte	.LASF501
	.byte	0x5
	.uleb128 0x11d
	.4byte	.LASF502
	.byte	0x5
	.uleb128 0x11e
	.4byte	.LASF503
	.byte	0x5
	.uleb128 0x11f
	.4byte	.LASF504
	.byte	0x5
	.uleb128 0x120
	.4byte	.LASF505
	.byte	0x5
	.uleb128 0x121
	.4byte	.LASF506
	.byte	0x5
	.uleb128 0x122
	.4byte	.LASF507
	.byte	0x5
	.uleb128 0x123
	.4byte	.LASF508
	.byte	0x5
	.uleb128 0x124
	.4byte	.LASF509
	.byte	0x5
	.uleb128 0x125
	.4byte	.LASF510
	.byte	0x5
	.uleb128 0x126
	.4byte	.LASF511
	.byte	0x5
	.uleb128 0x127
	.4byte	.LASF512
	.byte	0x5
	.uleb128 0x128
	.4byte	.LASF513
	.byte	0x5
	.uleb128 0x129
	.4byte	.LASF514
	.byte	0x6
	.uleb128 0x136
	.4byte	.LASF515
	.byte	0x6
	.uleb128 0x16c
	.4byte	.LASF516
	.byte	0x6
	.uleb128 0x19e
	.4byte	.LASF517
	.byte	0x5
	.uleb128 0x1a0
	.4byte	.LASF518
	.byte	0x6
	.uleb128 0x1a9
	.4byte	.LASF519
	.byte	0x6
	.uleb128 0x1ae
	.4byte	.LASF520
	.byte	0x5
	.uleb128 0x1af
	.4byte	.LASF521
	.byte	0x5
	.uleb128 0x1b4
	.4byte	.LASF522
	.byte	0x5
	.uleb128 0x1c9
	.4byte	.LASF523
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.stdintgcc.h.29.6d480f4ba0f60596e88234283d42444f,comdat
.Ldebug_macro3:
	.2byte	0x5
	.byte	0
	.byte	0x5
	.uleb128 0x1d
	.4byte	.LASF524
	.byte	0x6
	.uleb128 0x64
	.4byte	.LASF525
	.byte	0x5
	.uleb128 0x65
	.4byte	.LASF526
	.byte	0x6
	.uleb128 0x66
	.4byte	.LASF527
	.byte	0x5
	.uleb128 0x67
	.4byte	.LASF528
	.byte	0x6
	.uleb128 0x6a
	.4byte	.LASF529
	.byte	0x5
	.uleb128 0x6b
	.4byte	.LASF530
	.byte	0x6
	.uleb128 0x6e
	.4byte	.LASF531
	.byte	0x5
	.uleb128 0x6f
	.4byte	.LASF532
	.byte	0x6
	.uleb128 0x70
	.4byte	.LASF533
	.byte	0x5
	.uleb128 0x71
	.4byte	.LASF534
	.byte	0x6
	.uleb128 0x74
	.4byte	.LASF535
	.byte	0x5
	.uleb128 0x75
	.4byte	.LASF536
	.byte	0x6
	.uleb128 0x78
	.4byte	.LASF537
	.byte	0x5
	.uleb128 0x79
	.4byte	.LASF538
	.byte	0x6
	.uleb128 0x7a
	.4byte	.LASF539
	.byte	0x5
	.uleb128 0x7b
	.4byte	.LASF540
	.byte	0x6
	.uleb128 0x7e
	.4byte	.LASF541
	.byte	0x5
	.uleb128 0x7f
	.4byte	.LASF542
	.byte	0x6
	.uleb128 0x82
	.4byte	.LASF543
	.byte	0x5
	.uleb128 0x83
	.4byte	.LASF544
	.byte	0x6
	.uleb128 0x84
	.4byte	.LASF545
	.byte	0x5
	.uleb128 0x85
	.4byte	.LASF546
	.byte	0x6
	.uleb128 0x88
	.4byte	.LASF547
	.byte	0x5
	.uleb128 0x89
	.4byte	.LASF548
	.byte	0x6
	.uleb128 0x8c
	.4byte	.LASF549
	.byte	0x5
	.uleb128 0x8d
	.4byte	.LASF550
	.byte	0x6
	.uleb128 0x8e
	.4byte	.LASF551
	.byte	0x5
	.uleb128 0x8f
	.4byte	.LASF552
	.byte	0x6
	.uleb128 0x90
	.4byte	.LASF553
	.byte	0x5
	.uleb128 0x91
	.4byte	.LASF554
	.byte	0x6
	.uleb128 0x92
	.4byte	.LASF555
	.byte	0x5
	.uleb128 0x93
	.4byte	.LASF556
	.byte	0x6
	.uleb128 0x94
	.4byte	.LASF557
	.byte	0x5
	.uleb128 0x95
	.4byte	.LASF558
	.byte	0x6
	.uleb128 0x96
	.4byte	.LASF559
	.byte	0x5
	.uleb128 0x97
	.4byte	.LASF560
	.byte	0x6
	.uleb128 0x98
	.4byte	.LASF561
	.byte	0x5
	.uleb128 0x99
	.4byte	.LASF562
	.byte	0x6
	.uleb128 0x9a
	.4byte	.LASF563
	.byte	0x5
	.uleb128 0x9b
	.4byte	.LASF564
	.byte	0x6
	.uleb128 0x9c
	.4byte	.LASF565
	.byte	0x5
	.uleb128 0x9d
	.4byte	.LASF566
	.byte	0x6
	.uleb128 0x9e
	.4byte	.LASF567
	.byte	0x5
	.uleb128 0x9f
	.4byte	.LASF568
	.byte	0x6
	.uleb128 0xa0
	.4byte	.LASF569
	.byte	0x5
	.uleb128 0xa1
	.4byte	.LASF570
	.byte	0x6
	.uleb128 0xa2
	.4byte	.LASF571
	.byte	0x5
	.uleb128 0xa3
	.4byte	.LASF572
	.byte	0x6
	.uleb128 0xa5
	.4byte	.LASF573
	.byte	0x5
	.uleb128 0xa6
	.4byte	.LASF574
	.byte	0x6
	.uleb128 0xa7
	.4byte	.LASF575
	.byte	0x5
	.uleb128 0xa8
	.4byte	.LASF576
	.byte	0x6
	.uleb128 0xa9
	.4byte	.LASF577
	.byte	0x5
	.uleb128 0xaa
	.4byte	.LASF578
	.byte	0x6
	.uleb128 0xab
	.4byte	.LASF579
	.byte	0x5
	.uleb128 0xac
	.4byte	.LASF580
	.byte	0x6
	.uleb128 0xad
	.4byte	.LASF581
	.byte	0x5
	.uleb128 0xae
	.4byte	.LASF582
	.byte	0x6
	.uleb128 0xaf
	.4byte	.LASF583
	.byte	0x5
	.uleb128 0xb0
	.4byte	.LASF584
	.byte	0x6
	.uleb128 0xb1
	.4byte	.LASF585
	.byte	0x5
	.uleb128 0xb2
	.4byte	.LASF586
	.byte	0x6
	.uleb128 0xb3
	.4byte	.LASF587
	.byte	0x5
	.uleb128 0xb4
	.4byte	.LASF588
	.byte	0x6
	.uleb128 0xb5
	.4byte	.LASF589
	.byte	0x5
	.uleb128 0xb6
	.4byte	.LASF590
	.byte	0x6
	.uleb128 0xb7
	.4byte	.LASF591
	.byte	0x5
	.uleb128 0xb8
	.4byte	.LASF592
	.byte	0x6
	.uleb128 0xb9
	.4byte	.LASF593
	.byte	0x5
	.uleb128 0xba
	.4byte	.LASF594
	.byte	0x6
	.uleb128 0xbb
	.4byte	.LASF595
	.byte	0x5
	.uleb128 0xbc
	.4byte	.LASF596
	.byte	0x6
	.uleb128 0xbf
	.4byte	.LASF597
	.byte	0x5
	.uleb128 0xc0
	.4byte	.LASF598
	.byte	0x6
	.uleb128 0xc1
	.4byte	.LASF599
	.byte	0x5
	.uleb128 0xc2
	.4byte	.LASF600
	.byte	0x6
	.uleb128 0xc5
	.4byte	.LASF601
	.byte	0x5
	.uleb128 0xc6
	.4byte	.LASF602
	.byte	0x6
	.uleb128 0xc9
	.4byte	.LASF603
	.byte	0x5
	.uleb128 0xca
	.4byte	.LASF604
	.byte	0x6
	.uleb128 0xcb
	.4byte	.LASF605
	.byte	0x5
	.uleb128 0xcc
	.4byte	.LASF606
	.byte	0x6
	.uleb128 0xcd
	.4byte	.LASF607
	.byte	0x5
	.uleb128 0xce
	.4byte	.LASF608
	.byte	0x6
	.uleb128 0xd2
	.4byte	.LASF609
	.byte	0x5
	.uleb128 0xd3
	.4byte	.LASF610
	.byte	0x6
	.uleb128 0xd4
	.4byte	.LASF611
	.byte	0x5
	.uleb128 0xd5
	.4byte	.LASF612
	.byte	0x6
	.uleb128 0xd7
	.4byte	.LASF613
	.byte	0x5
	.uleb128 0xd8
	.4byte	.LASF614
	.byte	0x6
	.uleb128 0xd9
	.4byte	.LASF615
	.byte	0x5
	.uleb128 0xda
	.4byte	.LASF616
	.byte	0x6
	.uleb128 0xdc
	.4byte	.LASF617
	.byte	0x5
	.uleb128 0xdd
	.4byte	.LASF618
	.byte	0x6
	.uleb128 0xdf
	.4byte	.LASF619
	.byte	0x5
	.uleb128 0xe0
	.4byte	.LASF620
	.byte	0x6
	.uleb128 0xe1
	.4byte	.LASF621
	.byte	0x5
	.uleb128 0xe2
	.4byte	.LASF622
	.byte	0x6
	.uleb128 0xe4
	.4byte	.LASF623
	.byte	0x5
	.uleb128 0xe5
	.4byte	.LASF624
	.byte	0x6
	.uleb128 0xe6
	.4byte	.LASF625
	.byte	0x5
	.uleb128 0xe7
	.4byte	.LASF626
	.byte	0x6
	.uleb128 0xef
	.4byte	.LASF627
	.byte	0x5
	.uleb128 0xf0
	.4byte	.LASF628
	.byte	0x6
	.uleb128 0xf1
	.4byte	.LASF629
	.byte	0x5
	.uleb128 0xf2
	.4byte	.LASF630
	.byte	0x6
	.uleb128 0xf3
	.4byte	.LASF631
	.byte	0x5
	.uleb128 0xf4
	.4byte	.LASF632
	.byte	0x6
	.uleb128 0xf5
	.4byte	.LASF633
	.byte	0x5
	.uleb128 0xf6
	.4byte	.LASF634
	.byte	0x6
	.uleb128 0xf7
	.4byte	.LASF635
	.byte	0x5
	.uleb128 0xf8
	.4byte	.LASF636
	.byte	0x6
	.uleb128 0xf9
	.4byte	.LASF637
	.byte	0x5
	.uleb128 0xfa
	.4byte	.LASF638
	.byte	0x6
	.uleb128 0xfb
	.4byte	.LASF639
	.byte	0x5
	.uleb128 0xfc
	.4byte	.LASF640
	.byte	0x6
	.uleb128 0xfd
	.4byte	.LASF641
	.byte	0x5
	.uleb128 0xfe
	.4byte	.LASF642
	.byte	0x6
	.uleb128 0xff
	.4byte	.LASF643
	.byte	0x5
	.uleb128 0x100
	.4byte	.LASF644
	.byte	0x6
	.uleb128 0x101
	.4byte	.LASF645
	.byte	0x5
	.uleb128 0x102
	.4byte	.LASF646
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.platform.h.4.9f647899eaf135e137bf58cbf73c8557,comdat
.Ldebug_macro4:
	.2byte	0x5
	.byte	0
	.byte	0x5
	.uleb128 0x4
	.4byte	.LASF649
	.byte	0x5
	.uleb128 0x7
	.4byte	.LASF650
	.byte	0x5
	.uleb128 0x8
	.4byte	.LASF651
	.byte	0x5
	.uleb128 0xe
	.4byte	.LASF652
	.byte	0x5
	.uleb128 0xf
	.4byte	.LASF653
	.byte	0x5
	.uleb128 0x12
	.4byte	.LASF654
	.byte	0x5
	.uleb128 0x13
	.4byte	.LASF655
	.byte	0x5
	.uleb128 0x1a
	.4byte	.LASF656
	.byte	0x5
	.uleb128 0x1b
	.4byte	.LASF657
	.byte	0x5
	.uleb128 0x1c
	.4byte	.LASF658
	.byte	0x5
	.uleb128 0x1d
	.4byte	.LASF659
	.byte	0x5
	.uleb128 0x1e
	.4byte	.LASF660
	.byte	0x5
	.uleb128 0x1f
	.4byte	.LASF661
	.byte	0x5
	.uleb128 0x20
	.4byte	.LASF662
	.byte	0x5
	.uleb128 0x21
	.4byte	.LASF663
	.byte	0x5
	.uleb128 0x22
	.4byte	.LASF664
	.byte	0x5
	.uleb128 0x23
	.4byte	.LASF665
	.byte	0x5
	.uleb128 0x24
	.4byte	.LASF666
	.byte	0x5
	.uleb128 0x25
	.4byte	.LASF667
	.byte	0x5
	.uleb128 0x26
	.4byte	.LASF668
	.byte	0x5
	.uleb128 0x27
	.4byte	.LASF669
	.byte	0x5
	.uleb128 0x28
	.4byte	.LASF670
	.byte	0x5
	.uleb128 0x29
	.4byte	.LASF671
	.byte	0x5
	.uleb128 0x2a
	.4byte	.LASF672
	.byte	0x5
	.uleb128 0x2b
	.4byte	.LASF673
	.byte	0x5
	.uleb128 0x2c
	.4byte	.LASF674
	.byte	0x5
	.uleb128 0x2f
	.4byte	.LASF675
	.byte	0x5
	.uleb128 0x30
	.4byte	.LASF676
	.byte	0x5
	.uleb128 0x31
	.4byte	.LASF677
	.byte	0x5
	.uleb128 0x32
	.4byte	.LASF678
	.byte	0x5
	.uleb128 0x33
	.4byte	.LASF679
	.byte	0x5
	.uleb128 0x34
	.4byte	.LASF680
	.byte	0x5
	.uleb128 0x35
	.4byte	.LASF681
	.byte	0x5
	.uleb128 0x36
	.4byte	.LASF682
	.byte	0x5
	.uleb128 0x37
	.4byte	.LASF683
	.byte	0x5
	.uleb128 0x38
	.4byte	.LASF684
	.byte	0x5
	.uleb128 0x39
	.4byte	.LASF685
	.byte	0x5
	.uleb128 0x3a
	.4byte	.LASF686
	.byte	0x5
	.uleb128 0x3b
	.4byte	.LASF687
	.byte	0x5
	.uleb128 0x3d
	.4byte	.LASF688
	.byte	0x5
	.uleb128 0x3e
	.4byte	.LASF689
	.byte	0x5
	.uleb128 0x3f
	.4byte	.LASF690
	.byte	0x5
	.uleb128 0x40
	.4byte	.LASF691
	.byte	0x5
	.uleb128 0x41
	.4byte	.LASF692
	.byte	0x5
	.uleb128 0x42
	.4byte	.LASF693
	.byte	0x5
	.uleb128 0x43
	.4byte	.LASF694
	.byte	0x5
	.uleb128 0x44
	.4byte	.LASF695
	.byte	0x5
	.uleb128 0x45
	.4byte	.LASF696
	.byte	0x5
	.uleb128 0x46
	.4byte	.LASF697
	.byte	0x5
	.uleb128 0x4a
	.4byte	.LASF698
	.byte	0x5
	.uleb128 0x4b
	.4byte	.LASF699
	.byte	0x5
	.uleb128 0x4c
	.4byte	.LASF700
	.byte	0x5
	.uleb128 0x4e
	.4byte	.LASF701
	.byte	0x5
	.uleb128 0x4f
	.4byte	.LASF702
	.byte	0x5
	.uleb128 0x50
	.4byte	.LASF703
	.byte	0x5
	.uleb128 0x52
	.4byte	.LASF704
	.byte	0x5
	.uleb128 0x53
	.4byte	.LASF705
	.byte	0x5
	.uleb128 0x54
	.4byte	.LASF706
	.byte	0x5
	.uleb128 0x57
	.4byte	.LASF707
	.byte	0x5
	.uleb128 0x58
	.4byte	.LASF708
	.byte	0x5
	.uleb128 0x59
	.4byte	.LASF709
	.byte	0x5
	.uleb128 0x5a
	.4byte	.LASF710
	.byte	0x5
	.uleb128 0x5b
	.4byte	.LASF711
	.byte	0x5
	.uleb128 0x5c
	.4byte	.LASF712
	.byte	0x5
	.uleb128 0x5d
	.4byte	.LASF713
	.byte	0x5
	.uleb128 0x5e
	.4byte	.LASF714
	.byte	0x5
	.uleb128 0x5f
	.4byte	.LASF715
	.byte	0x5
	.uleb128 0x60
	.4byte	.LASF716
	.byte	0x5
	.uleb128 0x61
	.4byte	.LASF717
	.byte	0x5
	.uleb128 0x62
	.4byte	.LASF718
	.byte	0x5
	.uleb128 0x65
	.4byte	.LASF719
	.byte	0x5
	.uleb128 0x66
	.4byte	.LASF720
	.byte	0x5
	.uleb128 0x67
	.4byte	.LASF721
	.byte	0x5
	.uleb128 0x68
	.4byte	.LASF722
	.byte	0x5
	.uleb128 0x69
	.4byte	.LASF723
	.byte	0x5
	.uleb128 0x6a
	.4byte	.LASF724
	.byte	0x5
	.uleb128 0x6b
	.4byte	.LASF725
	.byte	0x5
	.uleb128 0x6c
	.4byte	.LASF726
	.byte	0x5
	.uleb128 0x6d
	.4byte	.LASF727
	.byte	0x5
	.uleb128 0x6e
	.4byte	.LASF728
	.byte	0x5
	.uleb128 0x6f
	.4byte	.LASF729
	.byte	0x5
	.uleb128 0x70
	.4byte	.LASF730
	.byte	0x5
	.uleb128 0x71
	.4byte	.LASF731
	.byte	0x5
	.uleb128 0x72
	.4byte	.LASF732
	.byte	0x5
	.uleb128 0x73
	.4byte	.LASF733
	.byte	0x5
	.uleb128 0x74
	.4byte	.LASF734
	.byte	0x5
	.uleb128 0x7a
	.4byte	.LASF735
	.byte	0x5
	.uleb128 0x7c
	.4byte	.LASF736
	.byte	0x5
	.uleb128 0x7d
	.4byte	.LASF737
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.FreeRTOSConfig.h.88.53c20c2cdfccef7190c97f73fcd83b4c,comdat
.Ldebug_macro5:
	.2byte	0x5
	.byte	0
	.byte	0x5
	.uleb128 0x58
	.4byte	.LASF738
	.byte	0x5
	.uleb128 0x5a
	.4byte	.LASF739
	.byte	0x5
	.uleb128 0x5b
	.4byte	.LASF740
	.byte	0x5
	.uleb128 0x5c
	.4byte	.LASF741
	.byte	0x5
	.uleb128 0x5d
	.4byte	.LASF742
	.byte	0x5
	.uleb128 0x5e
	.4byte	.LASF743
	.byte	0x5
	.uleb128 0x5f
	.4byte	.LASF744
	.byte	0x5
	.uleb128 0x64
	.4byte	.LASF745
	.byte	0x5
	.uleb128 0x65
	.4byte	.LASF746
	.byte	0x5
	.uleb128 0x66
	.4byte	.LASF747
	.byte	0x5
	.uleb128 0x67
	.4byte	.LASF748
	.byte	0x5
	.uleb128 0x68
	.4byte	.LASF749
	.byte	0x5
	.uleb128 0x69
	.4byte	.LASF750
	.byte	0x5
	.uleb128 0x6a
	.4byte	.LASF751
	.byte	0x5
	.uleb128 0x6b
	.4byte	.LASF752
	.byte	0x5
	.uleb128 0x6c
	.4byte	.LASF753
	.byte	0x5
	.uleb128 0x6d
	.4byte	.LASF754
	.byte	0x5
	.uleb128 0x6e
	.4byte	.LASF755
	.byte	0x5
	.uleb128 0x6f
	.4byte	.LASF756
	.byte	0x5
	.uleb128 0x70
	.4byte	.LASF757
	.byte	0x5
	.uleb128 0x71
	.4byte	.LASF758
	.byte	0x5
	.uleb128 0x72
	.4byte	.LASF759
	.byte	0x5
	.uleb128 0x73
	.4byte	.LASF760
	.byte	0x5
	.uleb128 0x74
	.4byte	.LASF761
	.byte	0x5
	.uleb128 0x75
	.4byte	.LASF762
	.byte	0x5
	.uleb128 0x76
	.4byte	.LASF763
	.byte	0x5
	.uleb128 0x77
	.4byte	.LASF764
	.byte	0x5
	.uleb128 0x7a
	.4byte	.LASF765
	.byte	0x5
	.uleb128 0x7b
	.4byte	.LASF766
	.byte	0x5
	.uleb128 0x7e
	.4byte	.LASF767
	.byte	0x5
	.uleb128 0x7f
	.4byte	.LASF768
	.byte	0x5
	.uleb128 0x80
	.4byte	.LASF769
	.byte	0x5
	.uleb128 0x81
	.4byte	.LASF770
	.byte	0x5
	.uleb128 0x85
	.4byte	.LASF771
	.byte	0x5
	.uleb128 0x8a
	.4byte	.LASF772
	.byte	0x5
	.uleb128 0x8b
	.4byte	.LASF773
	.byte	0x5
	.uleb128 0x8c
	.4byte	.LASF774
	.byte	0x5
	.uleb128 0x8d
	.4byte	.LASF775
	.byte	0x5
	.uleb128 0x8e
	.4byte	.LASF776
	.byte	0x5
	.uleb128 0x8f
	.4byte	.LASF777
	.byte	0x5
	.uleb128 0x90
	.4byte	.LASF778
	.byte	0x5
	.uleb128 0x91
	.4byte	.LASF779
	.byte	0x5
	.uleb128 0x92
	.4byte	.LASF780
	.byte	0x5
	.uleb128 0x93
	.4byte	.LASF781
	.byte	0x5
	.uleb128 0x98
	.4byte	.LASF782
	.byte	0x5
	.uleb128 0x9c
	.4byte	.LASF783
	.byte	0x5
	.uleb128 0x9d
	.4byte	.LASF784
	.byte	0x5
	.uleb128 0x9e
	.4byte	.LASF785
	.byte	0x5
	.uleb128 0x9f
	.4byte	.LASF786
	.byte	0x5
	.uleb128 0xa0
	.4byte	.LASF787
	.byte	0x5
	.uleb128 0xa1
	.4byte	.LASF788
	.byte	0x5
	.uleb128 0xa2
	.4byte	.LASF789
	.byte	0x5
	.uleb128 0xa3
	.4byte	.LASF790
	.byte	0x5
	.uleb128 0xa4
	.4byte	.LASF791
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.projdefs.h.29.3472c8470d131a5f474bc7437ea94609,comdat
.Ldebug_macro6:
	.2byte	0x5
	.byte	0
	.byte	0x5
	.uleb128 0x1d
	.4byte	.LASF792
	.byte	0x5
	.uleb128 0x29
	.4byte	.LASF793
	.byte	0x5
	.uleb128 0x2c
	.4byte	.LASF794
	.byte	0x5
	.uleb128 0x2d
	.4byte	.LASF795
	.byte	0x5
	.uleb128 0x2f
	.4byte	.LASF796
	.byte	0x5
	.uleb128 0x30
	.4byte	.LASF797
	.byte	0x5
	.uleb128 0x31
	.4byte	.LASF798
	.byte	0x5
	.uleb128 0x32
	.4byte	.LASF799
	.byte	0x5
	.uleb128 0x35
	.4byte	.LASF800
	.byte	0x5
	.uleb128 0x36
	.4byte	.LASF801
	.byte	0x5
	.uleb128 0x37
	.4byte	.LASF802
	.byte	0x5
	.uleb128 0x3b
	.4byte	.LASF803
	.byte	0x5
	.uleb128 0x41
	.4byte	.LASF804
	.byte	0x5
	.uleb128 0x46
	.4byte	.LASF805
	.byte	0x5
	.uleb128 0x47
	.4byte	.LASF806
	.byte	0x5
	.uleb128 0x48
	.4byte	.LASF807
	.byte	0x5
	.uleb128 0x49
	.4byte	.LASF808
	.byte	0x5
	.uleb128 0x4a
	.4byte	.LASF809
	.byte	0x5
	.uleb128 0x4b
	.4byte	.LASF810
	.byte	0x5
	.uleb128 0x4c
	.4byte	.LASF811
	.byte	0x5
	.uleb128 0x4d
	.4byte	.LASF812
	.byte	0x5
	.uleb128 0x4e
	.4byte	.LASF813
	.byte	0x5
	.uleb128 0x4f
	.4byte	.LASF814
	.byte	0x5
	.uleb128 0x50
	.4byte	.LASF815
	.byte	0x5
	.uleb128 0x51
	.4byte	.LASF816
	.byte	0x5
	.uleb128 0x52
	.4byte	.LASF817
	.byte	0x5
	.uleb128 0x53
	.4byte	.LASF818
	.byte	0x5
	.uleb128 0x54
	.4byte	.LASF819
	.byte	0x5
	.uleb128 0x55
	.4byte	.LASF820
	.byte	0x5
	.uleb128 0x56
	.4byte	.LASF821
	.byte	0x5
	.uleb128 0x57
	.4byte	.LASF822
	.byte	0x5
	.uleb128 0x58
	.4byte	.LASF823
	.byte	0x5
	.uleb128 0x59
	.4byte	.LASF824
	.byte	0x5
	.uleb128 0x5a
	.4byte	.LASF825
	.byte	0x5
	.uleb128 0x5b
	.4byte	.LASF826
	.byte	0x5
	.uleb128 0x5c
	.4byte	.LASF827
	.byte	0x5
	.uleb128 0x5d
	.4byte	.LASF828
	.byte	0x5
	.uleb128 0x5e
	.4byte	.LASF829
	.byte	0x5
	.uleb128 0x5f
	.4byte	.LASF830
	.byte	0x5
	.uleb128 0x60
	.4byte	.LASF831
	.byte	0x5
	.uleb128 0x61
	.4byte	.LASF832
	.byte	0x5
	.uleb128 0x62
	.4byte	.LASF833
	.byte	0x5
	.uleb128 0x63
	.4byte	.LASF834
	.byte	0x5
	.uleb128 0x64
	.4byte	.LASF835
	.byte	0x5
	.uleb128 0x65
	.4byte	.LASF836
	.byte	0x5
	.uleb128 0x66
	.4byte	.LASF837
	.byte	0x5
	.uleb128 0x67
	.4byte	.LASF838
	.byte	0x5
	.uleb128 0x68
	.4byte	.LASF839
	.byte	0x5
	.uleb128 0x69
	.4byte	.LASF840
	.byte	0x5
	.uleb128 0x6a
	.4byte	.LASF841
	.byte	0x5
	.uleb128 0x6b
	.4byte	.LASF842
	.byte	0x5
	.uleb128 0x6c
	.4byte	.LASF843
	.byte	0x5
	.uleb128 0x6d
	.4byte	.LASF844
	.byte	0x5
	.uleb128 0x71
	.4byte	.LASF845
	.byte	0x5
	.uleb128 0x72
	.4byte	.LASF846
	.byte	0x5
	.uleb128 0x75
	.4byte	.LASF847
	.byte	0x5
	.uleb128 0x76
	.4byte	.LASF848
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.portmacro.h.30.fd73c926796a47ebcbcecd233a8daba5,comdat
.Ldebug_macro7:
	.2byte	0x5
	.byte	0
	.byte	0x5
	.uleb128 0x1e
	.4byte	.LASF851
	.byte	0x5
	.uleb128 0x35
	.4byte	.LASF852
	.byte	0x5
	.uleb128 0x36
	.4byte	.LASF853
	.byte	0x5
	.uleb128 0x37
	.4byte	.LASF854
	.byte	0x5
	.uleb128 0x38
	.4byte	.LASF855
	.byte	0x5
	.uleb128 0x44
	.4byte	.LASF856
	.byte	0x5
	.uleb128 0x45
	.4byte	.LASF857
	.byte	0x5
	.uleb128 0x46
	.4byte	.LASF858
	.byte	0x5
	.uleb128 0x47
	.4byte	.LASF859
	.byte	0x5
	.uleb128 0x48
	.4byte	.LASF860
	.byte	0x5
	.uleb128 0x4c
	.4byte	.LASF861
	.byte	0x5
	.uleb128 0x50
	.4byte	.LASF862
	.byte	0x5
	.uleb128 0x51
	.4byte	.LASF863
	.byte	0x5
	.uleb128 0x56
	.4byte	.LASF864
	.byte	0x5
	.uleb128 0x5e
	.4byte	.LASF865
	.byte	0x5
	.uleb128 0x5f
	.4byte	.LASF866
	.byte	0x5
	.uleb128 0x60
	.4byte	.LASF867
	.byte	0x5
	.uleb128 0x65
	.4byte	.LASF868
	.byte	0x5
	.uleb128 0x69
	.4byte	.LASF869
	.byte	0x5
	.uleb128 0x6a
	.4byte	.LASF870
	.byte	0x5
	.uleb128 0x6b
	.4byte	.LASF871
	.byte	0x5
	.uleb128 0x6c
	.4byte	.LASF872
	.byte	0x5
	.uleb128 0x6d
	.4byte	.LASF873
	.byte	0x5
	.uleb128 0x6e
	.4byte	.LASF874
	.byte	0x5
	.uleb128 0x7f
	.4byte	.LASF875
	.byte	0x5
	.uleb128 0x80
	.4byte	.LASF876
	.byte	0x5
	.uleb128 0x84
	.4byte	.LASF877
	.byte	0x5
	.uleb128 0x8e
	.4byte	.LASF878
	.byte	0x5
	.uleb128 0x8f
	.4byte	.LASF879
	.byte	0x5
	.uleb128 0x93
	.4byte	.LASF880
	.byte	0x5
	.uleb128 0x95
	.4byte	.LASF881
	.byte	0x5
	.uleb128 0x98
	.4byte	.LASF882
	.byte	0x5
	.uleb128 0x9b
	.4byte	.LASF883
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.portable.h.60.cb65565ed16057d4ed4dce621455e11a,comdat
.Ldebug_macro8:
	.2byte	0x5
	.byte	0
	.byte	0x5
	.uleb128 0x3c
	.4byte	.LASF884
	.byte	0x5
	.uleb128 0x54
	.4byte	.LASF885
	.byte	0x5
	.uleb128 0x58
	.4byte	.LASF886
	.byte	0x5
	.uleb128 0x5c
	.4byte	.LASF887
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.mpu_wrappers.h.29.b241cf3a31647d8a0417c869e92f00be,comdat
.Ldebug_macro9:
	.2byte	0x5
	.byte	0
	.byte	0x5
	.uleb128 0x1d
	.4byte	.LASF888
	.byte	0x5
	.uleb128 0xaf
	.4byte	.LASF889
	.byte	0x5
	.uleb128 0xb0
	.4byte	.LASF890
	.byte	0x5
	.uleb128 0xb1
	.4byte	.LASF891
	.byte	0x5
	.uleb128 0xb2
	.4byte	.LASF892
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.FreeRTOS.h.66.7662f6cae588ec79fa6c36ec92b7a95e,comdat
.Ldebug_macro10:
	.2byte	0x5
	.byte	0
	.byte	0x5
	.uleb128 0x42
	.4byte	.LASF893
	.byte	0x5
	.uleb128 0x88
	.4byte	.LASF894
	.byte	0x5
	.uleb128 0x8c
	.4byte	.LASF895
	.byte	0x5
	.uleb128 0x90
	.4byte	.LASF896
	.byte	0x5
	.uleb128 0x94
	.4byte	.LASF897
	.byte	0x5
	.uleb128 0x98
	.4byte	.LASF898
	.byte	0x5
	.uleb128 0xa0
	.4byte	.LASF899
	.byte	0x5
	.uleb128 0xa8
	.4byte	.LASF900
	.byte	0x5
	.uleb128 0xb0
	.4byte	.LASF901
	.byte	0x5
	.uleb128 0xb4
	.4byte	.LASF902
	.byte	0x5
	.uleb128 0xbe
	.4byte	.LASF903
	.byte	0x5
	.uleb128 0xda
	.4byte	.LASF904
	.byte	0x5
	.uleb128 0xf1
	.4byte	.LASF905
	.byte	0x5
	.uleb128 0xfa
	.4byte	.LASF906
	.byte	0x5
	.uleb128 0xfb
	.4byte	.LASF907
	.byte	0x5
	.uleb128 0x105
	.4byte	.LASF908
	.byte	0x5
	.uleb128 0x122
	.4byte	.LASF909
	.byte	0x5
	.uleb128 0x126
	.4byte	.LASF910
	.byte	0x5
	.uleb128 0x12a
	.4byte	.LASF911
	.byte	0x5
	.uleb128 0x138
	.4byte	.LASF912
	.byte	0x5
	.uleb128 0x13f
	.4byte	.LASF913
	.byte	0x5
	.uleb128 0x145
	.4byte	.LASF914
	.byte	0x5
	.uleb128 0x14b
	.4byte	.LASF915
	.byte	0x5
	.uleb128 0x151
	.4byte	.LASF916
	.byte	0x5
	.uleb128 0x156
	.4byte	.LASF917
	.byte	0x5
	.uleb128 0x15b
	.4byte	.LASF918
	.byte	0x5
	.uleb128 0x161
	.4byte	.LASF919
	.byte	0x5
	.uleb128 0x16a
	.4byte	.LASF920
	.byte	0x5
	.uleb128 0x172
	.4byte	.LASF921
	.byte	0x5
	.uleb128 0x17a
	.4byte	.LASF922
	.byte	0x5
	.uleb128 0x182
	.4byte	.LASF923
	.byte	0x5
	.uleb128 0x18a
	.4byte	.LASF924
	.byte	0x5
	.uleb128 0x192
	.4byte	.LASF925
	.byte	0x5
	.uleb128 0x196
	.4byte	.LASF926
	.byte	0x5
	.uleb128 0x19c
	.4byte	.LASF927
	.byte	0x5
	.uleb128 0x1a0
	.4byte	.LASF928
	.byte	0x5
	.uleb128 0x1a4
	.4byte	.LASF929
	.byte	0x5
	.uleb128 0x1a8
	.4byte	.LASF930
	.byte	0x5
	.uleb128 0x1ac
	.4byte	.LASF931
	.byte	0x5
	.uleb128 0x1b0
	.4byte	.LASF932
	.byte	0x5
	.uleb128 0x1b4
	.4byte	.LASF933
	.byte	0x5
	.uleb128 0x1b8
	.4byte	.LASF934
	.byte	0x5
	.uleb128 0x1bc
	.4byte	.LASF935
	.byte	0x5
	.uleb128 0x1c0
	.4byte	.LASF936
	.byte	0x5
	.uleb128 0x1c4
	.4byte	.LASF937
	.byte	0x5
	.uleb128 0x1c8
	.4byte	.LASF938
	.byte	0x5
	.uleb128 0x1cc
	.4byte	.LASF939
	.byte	0x5
	.uleb128 0x1d0
	.4byte	.LASF940
	.byte	0x5
	.uleb128 0x1d4
	.4byte	.LASF941
	.byte	0x5
	.uleb128 0x1d8
	.4byte	.LASF942
	.byte	0x5
	.uleb128 0x1dc
	.4byte	.LASF943
	.byte	0x5
	.uleb128 0x1e0
	.4byte	.LASF944
	.byte	0x5
	.uleb128 0x1e4
	.4byte	.LASF945
	.byte	0x5
	.uleb128 0x1e8
	.4byte	.LASF946
	.byte	0x5
	.uleb128 0x1ec
	.4byte	.LASF947
	.byte	0x5
	.uleb128 0x1f0
	.4byte	.LASF948
	.byte	0x5
	.uleb128 0x1f4
	.4byte	.LASF949
	.byte	0x5
	.uleb128 0x1f8
	.4byte	.LASF950
	.byte	0x5
	.uleb128 0x1fc
	.4byte	.LASF951
	.byte	0x5
	.uleb128 0x200
	.4byte	.LASF952
	.byte	0x5
	.uleb128 0x204
	.4byte	.LASF953
	.byte	0x5
	.uleb128 0x208
	.4byte	.LASF954
	.byte	0x5
	.uleb128 0x20c
	.4byte	.LASF955
	.byte	0x5
	.uleb128 0x210
	.4byte	.LASF956
	.byte	0x5
	.uleb128 0x214
	.4byte	.LASF957
	.byte	0x5
	.uleb128 0x218
	.4byte	.LASF958
	.byte	0x5
	.uleb128 0x21c
	.4byte	.LASF959
	.byte	0x5
	.uleb128 0x220
	.4byte	.LASF960
	.byte	0x5
	.uleb128 0x224
	.4byte	.LASF961
	.byte	0x5
	.uleb128 0x228
	.4byte	.LASF962
	.byte	0x5
	.uleb128 0x22c
	.4byte	.LASF963
	.byte	0x5
	.uleb128 0x230
	.4byte	.LASF964
	.byte	0x5
	.uleb128 0x234
	.4byte	.LASF965
	.byte	0x5
	.uleb128 0x238
	.4byte	.LASF966
	.byte	0x5
	.uleb128 0x23c
	.4byte	.LASF967
	.byte	0x5
	.uleb128 0x240
	.4byte	.LASF968
	.byte	0x5
	.uleb128 0x244
	.4byte	.LASF969
	.byte	0x5
	.uleb128 0x248
	.4byte	.LASF970
	.byte	0x5
	.uleb128 0x24c
	.4byte	.LASF971
	.byte	0x5
	.uleb128 0x250
	.4byte	.LASF972
	.byte	0x5
	.uleb128 0x254
	.4byte	.LASF973
	.byte	0x5
	.uleb128 0x258
	.4byte	.LASF974
	.byte	0x5
	.uleb128 0x25c
	.4byte	.LASF975
	.byte	0x5
	.uleb128 0x260
	.4byte	.LASF976
	.byte	0x5
	.uleb128 0x264
	.4byte	.LASF977
	.byte	0x5
	.uleb128 0x268
	.4byte	.LASF978
	.byte	0x5
	.uleb128 0x26c
	.4byte	.LASF979
	.byte	0x5
	.uleb128 0x270
	.4byte	.LASF980
	.byte	0x5
	.uleb128 0x274
	.4byte	.LASF981
	.byte	0x5
	.uleb128 0x278
	.4byte	.LASF982
	.byte	0x5
	.uleb128 0x27c
	.4byte	.LASF983
	.byte	0x5
	.uleb128 0x280
	.4byte	.LASF984
	.byte	0x5
	.uleb128 0x284
	.4byte	.LASF985
	.byte	0x5
	.uleb128 0x288
	.4byte	.LASF986
	.byte	0x5
	.uleb128 0x28c
	.4byte	.LASF987
	.byte	0x5
	.uleb128 0x290
	.4byte	.LASF988
	.byte	0x5
	.uleb128 0x294
	.4byte	.LASF989
	.byte	0x5
	.uleb128 0x298
	.4byte	.LASF990
	.byte	0x5
	.uleb128 0x29c
	.4byte	.LASF991
	.byte	0x5
	.uleb128 0x2a0
	.4byte	.LASF992
	.byte	0x5
	.uleb128 0x2a4
	.4byte	.LASF993
	.byte	0x5
	.uleb128 0x2a8
	.4byte	.LASF994
	.byte	0x5
	.uleb128 0x2ac
	.4byte	.LASF995
	.byte	0x5
	.uleb128 0x2b0
	.4byte	.LASF996
	.byte	0x5
	.uleb128 0x2b4
	.4byte	.LASF997
	.byte	0x5
	.uleb128 0x2b8
	.4byte	.LASF998
	.byte	0x5
	.uleb128 0x2bc
	.4byte	.LASF999
	.byte	0x5
	.uleb128 0x2c0
	.4byte	.LASF1000
	.byte	0x5
	.uleb128 0x2c4
	.4byte	.LASF1001
	.byte	0x5
	.uleb128 0x2c8
	.4byte	.LASF1002
	.byte	0x5
	.uleb128 0x2de
	.4byte	.LASF1003
	.byte	0x5
	.uleb128 0x2e6
	.4byte	.LASF1004
	.byte	0x5
	.uleb128 0x2ea
	.4byte	.LASF1005
	.byte	0x5
	.uleb128 0x2ee
	.4byte	.LASF1006
	.byte	0x5
	.uleb128 0x2f2
	.4byte	.LASF1007
	.byte	0x5
	.uleb128 0x2fe
	.4byte	.LASF1008
	.byte	0x5
	.uleb128 0x302
	.4byte	.LASF1009
	.byte	0x5
	.uleb128 0x306
	.4byte	.LASF1010
	.byte	0x5
	.uleb128 0x30a
	.4byte	.LASF1011
	.byte	0x5
	.uleb128 0x30e
	.4byte	.LASF1012
	.byte	0x5
	.uleb128 0x312
	.4byte	.LASF1013
	.byte	0x5
	.uleb128 0x316
	.4byte	.LASF1014
	.byte	0x5
	.uleb128 0x31a
	.4byte	.LASF1015
	.byte	0x5
	.uleb128 0x31e
	.4byte	.LASF1016
	.byte	0x5
	.uleb128 0x326
	.4byte	.LASF1017
	.byte	0x5
	.uleb128 0x32e
	.4byte	.LASF1018
	.byte	0x5
	.uleb128 0x332
	.4byte	.LASF1019
	.byte	0x5
	.uleb128 0x336
	.4byte	.LASF1020
	.byte	0x5
	.uleb128 0x33e
	.4byte	.LASF1021
	.byte	0x5
	.uleb128 0x342
	.4byte	.LASF1022
	.byte	0x5
	.uleb128 0x346
	.4byte	.LASF1023
	.byte	0x5
	.uleb128 0x354
	.4byte	.LASF1024
	.byte	0x5
	.uleb128 0x35a
	.4byte	.LASF1025
	.byte	0x5
	.uleb128 0x361
	.4byte	.LASF1026
	.byte	0x5
	.uleb128 0x374
	.4byte	.LASF1027
	.byte	0x5
	.uleb128 0x382
	.4byte	.LASF1028
	.byte	0x5
	.uleb128 0x383
	.4byte	.LASF1029
	.byte	0x5
	.uleb128 0x384
	.4byte	.LASF1030
	.byte	0x5
	.uleb128 0x385
	.4byte	.LASF1031
	.byte	0x5
	.uleb128 0x38b
	.4byte	.LASF1032
	.byte	0x5
	.uleb128 0x399
	.4byte	.LASF1033
	.byte	0x5
	.uleb128 0x39f
	.4byte	.LASF1034
	.byte	0x5
	.uleb128 0x3a5
	.4byte	.LASF1035
	.byte	0x5
	.uleb128 0x3a9
	.4byte	.LASF1036
	.byte	0x5
	.uleb128 0x3aa
	.4byte	.LASF1037
	.byte	0x5
	.uleb128 0x3ab
	.4byte	.LASF1038
	.byte	0x5
	.uleb128 0x3ac
	.4byte	.LASF1039
	.byte	0x5
	.uleb128 0x3ad
	.4byte	.LASF1040
	.byte	0x5
	.uleb128 0x3ae
	.4byte	.LASF1041
	.byte	0x5
	.uleb128 0x3af
	.4byte	.LASF1042
	.byte	0x5
	.uleb128 0x3b0
	.4byte	.LASF1043
	.byte	0x5
	.uleb128 0x3b1
	.4byte	.LASF1044
	.byte	0x5
	.uleb128 0x3b2
	.4byte	.LASF1045
	.byte	0x5
	.uleb128 0x3b3
	.4byte	.LASF1046
	.byte	0x5
	.uleb128 0x3b4
	.4byte	.LASF1047
	.byte	0x5
	.uleb128 0x3b5
	.4byte	.LASF1048
	.byte	0x5
	.uleb128 0x3b6
	.4byte	.LASF1049
	.byte	0x5
	.uleb128 0x3b7
	.4byte	.LASF1050
	.byte	0x5
	.uleb128 0x3b8
	.4byte	.LASF1051
	.byte	0x5
	.uleb128 0x3b9
	.4byte	.LASF1052
	.byte	0x5
	.uleb128 0x3ba
	.4byte	.LASF1053
	.byte	0x5
	.uleb128 0x3bb
	.4byte	.LASF1054
	.byte	0x5
	.uleb128 0x3bc
	.4byte	.LASF1055
	.byte	0x5
	.uleb128 0x3c0
	.4byte	.LASF1056
	.byte	0x5
	.uleb128 0x3c1
	.4byte	.LASF1057
	.byte	0x5
	.uleb128 0x3c2
	.4byte	.LASF1058
	.byte	0x5
	.uleb128 0x3c3
	.4byte	.LASF1059
	.byte	0x5
	.uleb128 0x3c7
	.4byte	.LASF1060
	.byte	0x5
	.uleb128 0x3d3
	.4byte	.LASF1061
	.byte	0x5
	.uleb128 0x3d9
	.4byte	.LASF1062
	.byte	0x5
	.uleb128 0x3df
	.4byte	.LASF1063
	.byte	0x5
	.uleb128 0x3e5
	.4byte	.LASF1064
	.byte	0x5
	.uleb128 0x3eb
	.4byte	.LASF1065
	.byte	0x5
	.uleb128 0x418
	.4byte	.LASF1066
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.list.h.61.5c5a38f6bc6687eed6d893e57dabd8e6,comdat
.Ldebug_macro11:
	.2byte	0x5
	.byte	0
	.byte	0x5
	.uleb128 0x3d
	.4byte	.LASF1068
	.byte	0x5
	.uleb128 0x5c
	.4byte	.LASF1069
	.byte	0x5
	.uleb128 0x6a
	.4byte	.LASF1070
	.byte	0x5
	.uleb128 0x6b
	.4byte	.LASF1071
	.byte	0x5
	.uleb128 0x6c
	.4byte	.LASF1072
	.byte	0x5
	.uleb128 0x6d
	.4byte	.LASF1073
	.byte	0x5
	.uleb128 0x6e
	.4byte	.LASF1074
	.byte	0x5
	.uleb128 0x6f
	.4byte	.LASF1075
	.byte	0x5
	.uleb128 0x70
	.4byte	.LASF1076
	.byte	0x5
	.uleb128 0x71
	.4byte	.LASF1077
	.byte	0x5
	.uleb128 0x72
	.4byte	.LASF1078
	.byte	0x5
	.uleb128 0x73
	.4byte	.LASF1079
	.byte	0x5
	.uleb128 0xb4
	.4byte	.LASF1080
	.byte	0x5
	.uleb128 0xbd
	.4byte	.LASF1081
	.byte	0x5
	.uleb128 0xc6
	.4byte	.LASF1082
	.byte	0x5
	.uleb128 0xd0
	.4byte	.LASF1083
	.byte	0x5
	.uleb128 0xd9
	.4byte	.LASF1084
	.byte	0x5
	.uleb128 0xe1
	.4byte	.LASF1085
	.byte	0x5
	.uleb128 0xe9
	.4byte	.LASF1086
	.byte	0x5
	.uleb128 0xf1
	.4byte	.LASF1087
	.byte	0x5
	.uleb128 0xfa
	.4byte	.LASF1088
	.byte	0x5
	.uleb128 0xff
	.4byte	.LASF1089
	.byte	0x5
	.uleb128 0x115
	.4byte	.LASF1090
	.byte	0x5
	.uleb128 0x133
	.4byte	.LASF1091
	.byte	0x5
	.uleb128 0x13e
	.4byte	.LASF1092
	.byte	0x5
	.uleb128 0x146
	.4byte	.LASF1093
	.byte	0x5
	.uleb128 0x14d
	.4byte	.LASF1094
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.task.h.46.0dc49e5d2ada487d792a2c0e0183f184,comdat
.Ldebug_macro12:
	.2byte	0x5
	.byte	0
	.byte	0x5
	.uleb128 0x2e
	.4byte	.LASF1095
	.byte	0x5
	.uleb128 0x2f
	.4byte	.LASF1096
	.byte	0x5
	.uleb128 0x30
	.4byte	.LASF1097
	.byte	0x5
	.uleb128 0x31
	.4byte	.LASF1098
	.byte	0x5
	.uleb128 0x35
	.4byte	.LASF1099
	.byte	0x5
	.uleb128 0x36
	.4byte	.LASF1100
	.byte	0x5
	.uleb128 0x37
	.4byte	.LASF1101
	.byte	0x5
	.uleb128 0x38
	.4byte	.LASF1102
	.byte	0x5
	.uleb128 0x39
	.4byte	.LASF1103
	.byte	0x5
	.uleb128 0xa3
	.4byte	.LASF1104
	.byte	0x5
	.uleb128 0xad
	.4byte	.LASF1105
	.byte	0x5
	.uleb128 0xbb
	.4byte	.LASF1106
	.byte	0x5
	.uleb128 0xbc
	.4byte	.LASF1107
	.byte	0x5
	.uleb128 0xca
	.4byte	.LASF1108
	.byte	0x5
	.uleb128 0xcb
	.4byte	.LASF1109
	.byte	0x5
	.uleb128 0xd4
	.4byte	.LASF1110
	.byte	0x5
	.uleb128 0xde
	.4byte	.LASF1111
	.byte	0x5
	.uleb128 0xe3
	.4byte	.LASF1112
	.byte	0x5
	.uleb128 0xe4
	.4byte	.LASF1113
	.byte	0x5
	.uleb128 0xe5
	.4byte	.LASF1114
	.byte	0x5
	.uleb128 0x73f
	.4byte	.LASF1115
	.byte	0x5
	.uleb128 0x740
	.4byte	.LASF1116
	.byte	0x5
	.uleb128 0x79a
	.4byte	.LASF1117
	.byte	0x5
	.uleb128 0x79b
	.4byte	.LASF1118
	.byte	0x5
	.uleb128 0x814
	.4byte	.LASF1119
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4._newlib_version.h.4.411db44ea2338a62eca2f0777f81481b,comdat
.Ldebug_macro13:
	.2byte	0x5
	.byte	0
	.byte	0x5
	.uleb128 0x4
	.4byte	.LASF1123
	.byte	0x5
	.uleb128 0x6
	.4byte	.LASF1124
	.byte	0x5
	.uleb128 0x7
	.4byte	.LASF1125
	.byte	0x5
	.uleb128 0x8
	.4byte	.LASF1126
	.byte	0x5
	.uleb128 0x9
	.4byte	.LASF1127
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.newlib.h.33.804eb44b5bf18527c22c557ff390bf46,comdat
.Ldebug_macro14:
	.2byte	0x5
	.byte	0
	.byte	0x5
	.uleb128 0x21
	.4byte	.LASF1128
	.byte	0x5
	.uleb128 0x24
	.4byte	.LASF1129
	.byte	0x5
	.uleb128 0x27
	.4byte	.LASF1130
	.byte	0x5
	.uleb128 0x2b
	.4byte	.LASF1131
	.byte	0x5
	.uleb128 0x2e
	.4byte	.LASF1132
	.byte	0x5
	.uleb128 0x16c
	.4byte	.LASF1133
	.byte	0x5
	.uleb128 0x177
	.4byte	.LASF1134
	.byte	0x5
	.uleb128 0x17d
	.4byte	.LASF1135
	.byte	0x5
	.uleb128 0x181
	.4byte	.LASF1136
	.byte	0x5
	.uleb128 0x185
	.4byte	.LASF1137
	.byte	0x5
	.uleb128 0x189
	.4byte	.LASF1138
	.byte	0x5
	.uleb128 0x19a
	.4byte	.LASF1139
	.byte	0x5
	.uleb128 0x19d
	.4byte	.LASF1140
	.byte	0x5
	.uleb128 0x1a3
	.4byte	.LASF1141
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.ieeefp.h.219.061d80f28e4e7f23102a52bd7bdcd857,comdat
.Ldebug_macro15:
	.2byte	0x5
	.byte	0
	.byte	0x5
	.uleb128 0xdb
	.4byte	.LASF1143
	.byte	0x5
	.uleb128 0xde
	.4byte	.LASF1144
	.byte	0x5
	.uleb128 0xe3
	.4byte	.LASF1145
	.byte	0x5
	.uleb128 0x20a
	.4byte	.LASF1146
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.features.h.22.b896a78ba1a401b66be596fbd667b335,comdat
.Ldebug_macro16:
	.2byte	0x5
	.byte	0
	.byte	0x5
	.uleb128 0x16
	.4byte	.LASF1147
	.byte	0x5
	.uleb128 0x21
	.4byte	.LASF1148
	.byte	0x5
	.uleb128 0x28
	.4byte	.LASF1149
	.byte	0x5
	.uleb128 0x103
	.4byte	.LASF1150
	.byte	0x5
	.uleb128 0x109
	.4byte	.LASF1151
	.byte	0x5
	.uleb128 0x10f
	.4byte	.LASF1152
	.byte	0x5
	.uleb128 0x114
	.4byte	.LASF1153
	.byte	0x5
	.uleb128 0x122
	.4byte	.LASF1154
	.byte	0x5
	.uleb128 0x128
	.4byte	.LASF1155
	.byte	0x5
	.uleb128 0x138
	.4byte	.LASF1156
	.byte	0x5
	.uleb128 0x13e
	.4byte	.LASF1157
	.byte	0x5
	.uleb128 0x14c
	.4byte	.LASF1158
	.byte	0x5
	.uleb128 0x158
	.4byte	.LASF1159
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.config.h.83.e34149fe91003a78bfbd7fc7c574422a,comdat
.Ldebug_macro17:
	.2byte	0x5
	.byte	0
	.byte	0x5
	.uleb128 0x53
	.4byte	.LASF1160
	.byte	0x5
	.uleb128 0xe0
	.4byte	.LASF1161
	.byte	0x6
	.uleb128 0xe6
	.4byte	.LASF1162
	.byte	0x5
	.uleb128 0xea
	.4byte	.LASF1163
	.byte	0x5
	.uleb128 0xf8
	.4byte	.LASF1164
	.byte	0x5
	.uleb128 0xfc
	.4byte	.LASF1165
	.byte	0x5
	.uleb128 0x109
	.4byte	.LASF1166
	.byte	0x5
	.uleb128 0x122
	.4byte	.LASF1167
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4._ansi.h.21.5136fa2a01d1fcd44a2e65c6c2417611,comdat
.Ldebug_macro18:
	.2byte	0x5
	.byte	0
	.byte	0x5
	.uleb128 0x15
	.4byte	.LASF1168
	.byte	0x5
	.uleb128 0x16
	.4byte	.LASF1169
	.byte	0x5
	.uleb128 0x19
	.4byte	.LASF1170
	.byte	0x5
	.uleb128 0x25
	.4byte	.LASF1171
	.byte	0x5
	.uleb128 0x2b
	.4byte	.LASF1172
	.byte	0x5
	.uleb128 0x45
	.4byte	.LASF1173
	.byte	0x5
	.uleb128 0x49
	.4byte	.LASF1174
	.byte	0x5
	.uleb128 0x4a
	.4byte	.LASF1175
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.stdio.h.31.7c0e28c411445f3f9c5b11accf882760,comdat
.Ldebug_macro19:
	.2byte	0x5
	.byte	0
	.byte	0x5
	.uleb128 0x1f
	.4byte	.LASF1176
	.byte	0x5
	.uleb128 0x21
	.4byte	.LASF1177
	.byte	0x5
	.uleb128 0x22
	.4byte	.LASF1178
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4._default_types.h.6.959254cf5f09734ea7516c89e8bb21bd,comdat
.Ldebug_macro20:
	.2byte	0x5
	.byte	0
	.byte	0x5
	.uleb128 0x6
	.4byte	.LASF1180
	.byte	0x5
	.uleb128 0xf
	.4byte	.LASF1181
	.byte	0x5
	.uleb128 0x1a
	.4byte	.LASF1182
	.byte	0x5
	.uleb128 0x21
	.4byte	.LASF1183
	.byte	0x5
	.uleb128 0x2f
	.4byte	.LASF1184
	.byte	0x5
	.uleb128 0x3d
	.4byte	.LASF1185
	.byte	0x5
	.uleb128 0x53
	.4byte	.LASF1186
	.byte	0x5
	.uleb128 0x6d
	.4byte	.LASF1187
	.byte	0x5
	.uleb128 0x8c
	.4byte	.LASF1188
	.byte	0x5
	.uleb128 0xa6
	.4byte	.LASF1189
	.byte	0x5
	.uleb128 0xbc
	.4byte	.LASF1190
	.byte	0x5
	.uleb128 0xce
	.4byte	.LASF1191
	.byte	0x6
	.uleb128 0xf4
	.4byte	.LASF1192
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.stddef.h.173.7770149e60552f73dd7310299f539ffc,comdat
.Ldebug_macro21:
	.2byte	0x5
	.byte	0
	.byte	0x6
	.uleb128 0xad
	.4byte	.LASF479
	.byte	0x6
	.uleb128 0xfc
	.4byte	.LASF498
	.byte	0x6
	.uleb128 0x16c
	.4byte	.LASF516
	.byte	0x6
	.uleb128 0x19e
	.4byte	.LASF517
	.byte	0x5
	.uleb128 0x1a0
	.4byte	.LASF518
	.byte	0x6
	.uleb128 0x1a9
	.4byte	.LASF519
	.byte	0x6
	.uleb128 0x1ae
	.4byte	.LASF520
	.byte	0x5
	.uleb128 0x1af
	.4byte	.LASF521
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.cdefs.h.49.709b2487a8c4d8a66169e88314babbf0,comdat
.Ldebug_macro22:
	.2byte	0x5
	.byte	0
	.byte	0x5
	.uleb128 0x31
	.4byte	.LASF1193
	.byte	0x5
	.uleb128 0x32
	.4byte	.LASF1194
	.byte	0x5
	.uleb128 0x33
	.4byte	.LASF1195
	.byte	0x5
	.uleb128 0x36
	.4byte	.LASF1196
	.byte	0x5
	.uleb128 0x39
	.4byte	.LASF1197
	.byte	0x5
	.uleb128 0x3a
	.4byte	.LASF1198
	.byte	0x5
	.uleb128 0x3c
	.4byte	.LASF1199
	.byte	0x5
	.uleb128 0x3d
	.4byte	.LASF1200
	.byte	0x5
	.uleb128 0x3e
	.4byte	.LASF1201
	.byte	0x5
	.uleb128 0x3f
	.4byte	.LASF1202
	.byte	0x5
	.uleb128 0x42
	.4byte	.LASF1203
	.byte	0x5
	.uleb128 0x43
	.4byte	.LASF1204
	.byte	0x5
	.uleb128 0x44
	.4byte	.LASF1205
	.byte	0x5
	.uleb128 0x5b
	.4byte	.LASF1206
	.byte	0x5
	.uleb128 0x5c
	.4byte	.LASF1207
	.byte	0x5
	.uleb128 0x6b
	.4byte	.LASF1208
	.byte	0x5
	.uleb128 0x6c
	.4byte	.LASF1209
	.byte	0x5
	.uleb128 0x70
	.4byte	.LASF1210
	.byte	0x5
	.uleb128 0x71
	.4byte	.LASF1211
	.byte	0x5
	.uleb128 0x73
	.4byte	.LASF1212
	.byte	0x5
	.uleb128 0x75
	.4byte	.LASF1213
	.byte	0x5
	.uleb128 0x78
	.4byte	.LASF1214
	.byte	0x5
	.uleb128 0x79
	.4byte	.LASF1215
	.byte	0x5
	.uleb128 0x7a
	.4byte	.LASF1216
	.byte	0x5
	.uleb128 0x7d
	.4byte	.LASF1217
	.byte	0x5
	.uleb128 0x82
	.4byte	.LASF1218
	.byte	0x5
	.uleb128 0x84
	.4byte	.LASF1219
	.byte	0x5
	.uleb128 0x85
	.4byte	.LASF1220
	.byte	0x5
	.uleb128 0x87
	.4byte	.LASF1221
	.byte	0x5
	.uleb128 0x8a
	.4byte	.LASF1222
	.byte	0x5
	.uleb128 0x8b
	.4byte	.LASF1223
	.byte	0x5
	.uleb128 0x8c
	.4byte	.LASF1224
	.byte	0x5
	.uleb128 0x8e
	.4byte	.LASF1225
	.byte	0x5
	.uleb128 0x8f
	.4byte	.LASF1226
	.byte	0x5
	.uleb128 0x91
	.4byte	.LASF1227
	.byte	0x5
	.uleb128 0x93
	.4byte	.LASF1228
	.byte	0x5
	.uleb128 0xa4
	.4byte	.LASF1229
	.byte	0x5
	.uleb128 0xa5
	.4byte	.LASF1230
	.byte	0x5
	.uleb128 0xa6
	.4byte	.LASF1231
	.byte	0x5
	.uleb128 0xa7
	.4byte	.LASF1232
	.byte	0x5
	.uleb128 0xa8
	.4byte	.LASF1233
	.byte	0x5
	.uleb128 0xaa
	.4byte	.LASF1234
	.byte	0x5
	.uleb128 0xab
	.4byte	.LASF1235
	.byte	0x5
	.uleb128 0xac
	.4byte	.LASF1236
	.byte	0x5
	.uleb128 0xae
	.4byte	.LASF1237
	.byte	0x5
	.uleb128 0xd9
	.4byte	.LASF1238
	.byte	0x5
	.uleb128 0xe6
	.4byte	.LASF1239
	.byte	0x5
	.uleb128 0xe7
	.4byte	.LASF1240
	.byte	0x5
	.uleb128 0xe8
	.4byte	.LASF1241
	.byte	0x5
	.uleb128 0xe9
	.4byte	.LASF1242
	.byte	0x5
	.uleb128 0xea
	.4byte	.LASF1243
	.byte	0x5
	.uleb128 0xeb
	.4byte	.LASF1244
	.byte	0x5
	.uleb128 0xec
	.4byte	.LASF1245
	.byte	0x5
	.uleb128 0xef
	.4byte	.LASF1246
	.byte	0x5
	.uleb128 0xf0
	.4byte	.LASF1247
	.byte	0x5
	.uleb128 0xf6
	.4byte	.LASF1248
	.byte	0x5
	.uleb128 0x108
	.4byte	.LASF1249
	.byte	0x5
	.uleb128 0x110
	.4byte	.LASF1250
	.byte	0x5
	.uleb128 0x11f
	.4byte	.LASF1251
	.byte	0x5
	.uleb128 0x127
	.4byte	.LASF1252
	.byte	0x5
	.uleb128 0x13c
	.4byte	.LASF1253
	.byte	0x5
	.uleb128 0x166
	.4byte	.LASF1254
	.byte	0x5
	.uleb128 0x16a
	.4byte	.LASF1255
	.byte	0x5
	.uleb128 0x16b
	.4byte	.LASF1256
	.byte	0x5
	.uleb128 0x172
	.4byte	.LASF1257
	.byte	0x5
	.uleb128 0x178
	.4byte	.LASF1258
	.byte	0x5
	.uleb128 0x17e
	.4byte	.LASF1259
	.byte	0x5
	.uleb128 0x17f
	.4byte	.LASF1260
	.byte	0x5
	.uleb128 0x186
	.4byte	.LASF1261
	.byte	0x5
	.uleb128 0x187
	.4byte	.LASF1262
	.byte	0x5
	.uleb128 0x18e
	.4byte	.LASF1263
	.byte	0x5
	.uleb128 0x194
	.4byte	.LASF1264
	.byte	0x5
	.uleb128 0x1b0
	.4byte	.LASF1265
	.byte	0x5
	.uleb128 0x1d4
	.4byte	.LASF1266
	.byte	0x5
	.uleb128 0x1d5
	.4byte	.LASF1267
	.byte	0x5
	.uleb128 0x1dc
	.4byte	.LASF1268
	.byte	0x5
	.uleb128 0x1dd
	.4byte	.LASF1269
	.byte	0x5
	.uleb128 0x1e0
	.4byte	.LASF1270
	.byte	0x5
	.uleb128 0x1ea
	.4byte	.LASF1271
	.byte	0x5
	.uleb128 0x1eb
	.4byte	.LASF1272
	.byte	0x5
	.uleb128 0x1f5
	.4byte	.LASF1273
	.byte	0x5
	.uleb128 0x20b
	.4byte	.LASF1274
	.byte	0x5
	.uleb128 0x20d
	.4byte	.LASF1275
	.byte	0x5
	.uleb128 0x20f
	.4byte	.LASF1276
	.byte	0x5
	.uleb128 0x210
	.4byte	.LASF1277
	.byte	0x5
	.uleb128 0x212
	.4byte	.LASF1278
	.byte	0x5
	.uleb128 0x21c
	.4byte	.LASF1279
	.byte	0x5
	.uleb128 0x220
	.4byte	.LASF1280
	.byte	0x5
	.uleb128 0x224
	.4byte	.LASF1281
	.byte	0x5
	.uleb128 0x227
	.4byte	.LASF1282
	.byte	0x5
	.uleb128 0x22b
	.4byte	.LASF1283
	.byte	0x5
	.uleb128 0x22d
	.4byte	.LASF1284
	.byte	0x5
	.uleb128 0x250
	.4byte	.LASF1285
	.byte	0x5
	.uleb128 0x254
	.4byte	.LASF1286
	.byte	0x5
	.uleb128 0x258
	.4byte	.LASF1287
	.byte	0x5
	.uleb128 0x25c
	.4byte	.LASF1288
	.byte	0x5
	.uleb128 0x260
	.4byte	.LASF1289
	.byte	0x5
	.uleb128 0x264
	.4byte	.LASF1290
	.byte	0x5
	.uleb128 0x268
	.4byte	.LASF1291
	.byte	0x5
	.uleb128 0x26c
	.4byte	.LASF1292
	.byte	0x5
	.uleb128 0x273
	.4byte	.LASF1293
	.byte	0x5
	.uleb128 0x274
	.4byte	.LASF1294
	.byte	0x5
	.uleb128 0x275
	.4byte	.LASF1295
	.byte	0x5
	.uleb128 0x276
	.4byte	.LASF1296
	.byte	0x5
	.uleb128 0x277
	.4byte	.LASF1297
	.byte	0x5
	.uleb128 0x28c
	.4byte	.LASF1298
	.byte	0x5
	.uleb128 0x28d
	.4byte	.LASF1299
	.byte	0x5
	.uleb128 0x29f
	.4byte	.LASF1300
	.byte	0x5
	.uleb128 0x2a5
	.4byte	.LASF1301
	.byte	0x5
	.uleb128 0x2a8
	.4byte	.LASF1302
	.byte	0x5
	.uleb128 0x2aa
	.4byte	.LASF1303
	.byte	0x5
	.uleb128 0x2ae
	.4byte	.LASF1304
	.byte	0x5
	.uleb128 0x2b0
	.4byte	.LASF1305
	.byte	0x5
	.uleb128 0x2b4
	.4byte	.LASF1306
	.byte	0x5
	.uleb128 0x2b7
	.4byte	.LASF1307
	.byte	0x5
	.uleb128 0x2b9
	.4byte	.LASF1308
	.byte	0x5
	.uleb128 0x2bd
	.4byte	.LASF1309
	.byte	0x5
	.uleb128 0x2bf
	.4byte	.LASF1310
	.byte	0x5
	.uleb128 0x2c1
	.4byte	.LASF1311
	.byte	0x5
	.uleb128 0x2c5
	.4byte	.LASF1312
	.byte	0x5
	.uleb128 0x2d6
	.4byte	.LASF1313
	.byte	0x5
	.uleb128 0x2d7
	.4byte	.LASF1314
	.byte	0x5
	.uleb128 0x2d8
	.4byte	.LASF1315
	.byte	0x5
	.uleb128 0x2dc
	.4byte	.LASF1316
	.byte	0x5
	.uleb128 0x2dd
	.4byte	.LASF1317
	.byte	0x5
	.uleb128 0x2e2
	.4byte	.LASF1318
	.byte	0x5
	.uleb128 0x2e6
	.4byte	.LASF1319
	.byte	0x5
	.uleb128 0x2ea
	.4byte	.LASF1320
	.byte	0x5
	.uleb128 0x2ee
	.4byte	.LASF1321
	.byte	0x5
	.uleb128 0x2ef
	.4byte	.LASF1322
	.byte	0x5
	.uleb128 0x2f0
	.4byte	.LASF1323
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.stdarg.h.34.3a23a216c0c293b3d2ea2e89281481e6,comdat
.Ldebug_macro23:
	.2byte	0x5
	.byte	0
	.byte	0x6
	.uleb128 0x22
	.4byte	.LASF1325
	.byte	0x5
	.uleb128 0x27
	.4byte	.LASF1326
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4._types.h.20.dd0d04dca3800a0d2a6129b87f3adbb2,comdat
.Ldebug_macro24:
	.2byte	0x5
	.byte	0
	.byte	0x5
	.uleb128 0x14
	.4byte	.LASF1328
	.byte	0x5
	.uleb128 0x16
	.4byte	.LASF1177
	.byte	0x5
	.uleb128 0x17
	.4byte	.LASF1329
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.stddef.h.173.246a22758295863db6041dfca29b1cb2,comdat
.Ldebug_macro25:
	.2byte	0x5
	.byte	0
	.byte	0x6
	.uleb128 0xad
	.4byte	.LASF479
	.byte	0x6
	.uleb128 0xfc
	.4byte	.LASF498
	.byte	0x6
	.uleb128 0x16c
	.4byte	.LASF516
	.byte	0x5
	.uleb128 0x171
	.4byte	.LASF1330
	.byte	0x6
	.uleb128 0x178
	.4byte	.LASF1331
	.byte	0x6
	.uleb128 0x19e
	.4byte	.LASF517
	.byte	0x5
	.uleb128 0x1a0
	.4byte	.LASF518
	.byte	0x6
	.uleb128 0x1a9
	.4byte	.LASF519
	.byte	0x6
	.uleb128 0x1ae
	.4byte	.LASF520
	.byte	0x5
	.uleb128 0x1af
	.4byte	.LASF521
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4._types.h.127.3bdfe3ff8ea2d0985b03d9cbe93480e3,comdat
.Ldebug_macro26:
	.2byte	0x5
	.byte	0
	.byte	0x6
	.uleb128 0x7f
	.4byte	.LASF1333
	.byte	0x5
	.uleb128 0x92
	.4byte	.LASF1334
	.byte	0x6
	.uleb128 0x94
	.4byte	.LASF1335
	.byte	0x5
	.uleb128 0xb3
	.4byte	.LASF1336
	.byte	0x5
	.uleb128 0xbb
	.4byte	.LASF1337
	.byte	0x5
	.uleb128 0xc0
	.4byte	.LASF1338
	.byte	0x5
	.uleb128 0xc9
	.4byte	.LASF1339
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.reent.h.18.25503cdc8b7e55dd0d6ea7b3e5af7a03,comdat
.Ldebug_macro27:
	.2byte	0x5
	.byte	0
	.byte	0x5
	.uleb128 0x12
	.4byte	.LASF1340
	.byte	0x5
	.uleb128 0x16
	.4byte	.LASF1341
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.lock.h.2.c0958401bd0ce484d507ee19aacab817,comdat
.Ldebug_macro28:
	.2byte	0x5
	.byte	0
	.byte	0x5
	.uleb128 0x2
	.4byte	.LASF1342
	.byte	0x5
	.uleb128 0xe
	.4byte	.LASF1343
	.byte	0x5
	.uleb128 0xf
	.4byte	.LASF1344
	.byte	0x5
	.uleb128 0x10
	.4byte	.LASF1345
	.byte	0x5
	.uleb128 0x11
	.4byte	.LASF1346
	.byte	0x5
	.uleb128 0x12
	.4byte	.LASF1347
	.byte	0x5
	.uleb128 0x13
	.4byte	.LASF1348
	.byte	0x5
	.uleb128 0x14
	.4byte	.LASF1349
	.byte	0x5
	.uleb128 0x15
	.4byte	.LASF1350
	.byte	0x5
	.uleb128 0x16
	.4byte	.LASF1351
	.byte	0x5
	.uleb128 0x17
	.4byte	.LASF1352
	.byte	0x5
	.uleb128 0x18
	.4byte	.LASF1353
	.byte	0x5
	.uleb128 0x19
	.4byte	.LASF1354
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.reent.h.78.7f0775353a33c852a1479c008f68cd03,comdat
.Ldebug_macro29:
	.2byte	0x5
	.byte	0
	.byte	0x5
	.uleb128 0x4e
	.4byte	.LASF1355
	.byte	0x5
	.uleb128 0x6a
	.4byte	.LASF1356
	.byte	0x5
	.uleb128 0x92
	.4byte	.LASF1357
	.byte	0x5
	.uleb128 0x12b
	.4byte	.LASF1358
	.byte	0x5
	.uleb128 0x12c
	.4byte	.LASF1359
	.byte	0x5
	.uleb128 0x12d
	.4byte	.LASF1360
	.byte	0x5
	.uleb128 0x12e
	.4byte	.LASF1361
	.byte	0x5
	.uleb128 0x12f
	.4byte	.LASF1362
	.byte	0x5
	.uleb128 0x130
	.4byte	.LASF1363
	.byte	0x5
	.uleb128 0x131
	.4byte	.LASF1364
	.byte	0x5
	.uleb128 0x13d
	.4byte	.LASF1365
	.byte	0x5
	.uleb128 0x13e
	.4byte	.LASF1366
	.byte	0x5
	.uleb128 0x13f
	.4byte	.LASF1367
	.byte	0x5
	.uleb128 0x14a
	.4byte	.LASF1368
	.byte	0x5
	.uleb128 0x14b
	.4byte	.LASF1369
	.byte	0x5
	.uleb128 0x14c
	.4byte	.LASF1370
	.byte	0x5
	.uleb128 0x14d
	.4byte	.LASF1371
	.byte	0x5
	.uleb128 0x14e
	.4byte	.LASF1372
	.byte	0x5
	.uleb128 0x28d
	.4byte	.LASF1373
	.byte	0x5
	.uleb128 0x2bc
	.4byte	.LASF1374
	.byte	0x5
	.uleb128 0x2ca
	.4byte	.LASF1375
	.byte	0x5
	.uleb128 0x2cb
	.4byte	.LASF1376
	.byte	0x5
	.uleb128 0x2cc
	.4byte	.LASF1377
	.byte	0x5
	.uleb128 0x2cd
	.4byte	.LASF1378
	.byte	0x5
	.uleb128 0x2ce
	.4byte	.LASF1379
	.byte	0x5
	.uleb128 0x2cf
	.4byte	.LASF1380
	.byte	0x5
	.uleb128 0x2d0
	.4byte	.LASF1381
	.byte	0x5
	.uleb128 0x2d2
	.4byte	.LASF1382
	.byte	0x5
	.uleb128 0x2d3
	.4byte	.LASF1383
	.byte	0x5
	.uleb128 0x2d4
	.4byte	.LASF1384
	.byte	0x5
	.uleb128 0x2d5
	.4byte	.LASF1385
	.byte	0x5
	.uleb128 0x2d6
	.4byte	.LASF1386
	.byte	0x5
	.uleb128 0x2d7
	.4byte	.LASF1387
	.byte	0x5
	.uleb128 0x2d8
	.4byte	.LASF1388
	.byte	0x5
	.uleb128 0x2d9
	.4byte	.LASF1389
	.byte	0x5
	.uleb128 0x2da
	.4byte	.LASF1390
	.byte	0x5
	.uleb128 0x2db
	.4byte	.LASF1391
	.byte	0x5
	.uleb128 0x2dc
	.4byte	.LASF1392
	.byte	0x5
	.uleb128 0x2dd
	.4byte	.LASF1393
	.byte	0x5
	.uleb128 0x2de
	.4byte	.LASF1394
	.byte	0x5
	.uleb128 0x2df
	.4byte	.LASF1395
	.byte	0x5
	.uleb128 0x2e0
	.4byte	.LASF1396
	.byte	0x5
	.uleb128 0x2e1
	.4byte	.LASF1397
	.byte	0x5
	.uleb128 0x2e2
	.4byte	.LASF1398
	.byte	0x5
	.uleb128 0x2e3
	.4byte	.LASF1399
	.byte	0x5
	.uleb128 0x2e4
	.4byte	.LASF1400
	.byte	0x5
	.uleb128 0x2e5
	.4byte	.LASF1401
	.byte	0x5
	.uleb128 0x2ee
	.4byte	.LASF1402
	.byte	0x5
	.uleb128 0x2ef
	.4byte	.LASF1403
	.byte	0x5
	.uleb128 0x2f0
	.4byte	.LASF1404
	.byte	0x5
	.uleb128 0x2f4
	.4byte	.LASF1405
	.byte	0x5
	.uleb128 0x2f5
	.4byte	.LASF1406
	.byte	0x5
	.uleb128 0x2f6
	.4byte	.LASF1407
	.byte	0x5
	.uleb128 0x2f7
	.4byte	.LASF1408
	.byte	0x5
	.uleb128 0x2f8
	.4byte	.LASF1409
	.byte	0x5
	.uleb128 0x2f9
	.4byte	.LASF1410
	.byte	0x5
	.uleb128 0x2fa
	.4byte	.LASF1411
	.byte	0x5
	.uleb128 0x2fb
	.4byte	.LASF1412
	.byte	0x5
	.uleb128 0x2fc
	.4byte	.LASF1413
	.byte	0x5
	.uleb128 0x2fd
	.4byte	.LASF1414
	.byte	0x5
	.uleb128 0x2fe
	.4byte	.LASF1415
	.byte	0x5
	.uleb128 0x300
	.4byte	.LASF1416
	.byte	0x5
	.uleb128 0x30b
	.4byte	.LASF1417
	.byte	0x5
	.uleb128 0x311
	.4byte	.LASF1418
	.byte	0x5
	.uleb128 0x31e
	.4byte	.LASF1419
	.byte	0x5
	.uleb128 0x321
	.4byte	.LASF1420
	.byte	0x5
	.uleb128 0x323
	.4byte	.LASF1421
	.byte	0x5
	.uleb128 0x382
	.4byte	.LASF1422
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.stdio.h.67.0cf8a9c281ab0b348aef5c02e7e48825,comdat
.Ldebug_macro30:
	.2byte	0x5
	.byte	0
	.byte	0x5
	.uleb128 0x43
	.4byte	.LASF1423
	.byte	0x5
	.uleb128 0x4d
	.4byte	.LASF1424
	.byte	0x5
	.uleb128 0x52
	.4byte	.LASF1425
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.stdio.h.2.4aa87247282eca6c8f36f9de33d8df1a,comdat
.Ldebug_macro31:
	.2byte	0x5
	.byte	0
	.byte	0x5
	.uleb128 0x2
	.4byte	.LASF1426
	.byte	0x5
	.uleb128 0xd
	.4byte	.LASF1427
	.byte	0x5
	.uleb128 0x15
	.4byte	.LASF1428
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.stdio.h.87.9a62a3d60fa79847330e9a942b8810a8,comdat
.Ldebug_macro32:
	.2byte	0x5
	.byte	0
	.byte	0x5
	.uleb128 0x57
	.4byte	.LASF1429
	.byte	0x5
	.uleb128 0x58
	.4byte	.LASF1430
	.byte	0x5
	.uleb128 0x59
	.4byte	.LASF1431
	.byte	0x5
	.uleb128 0x5a
	.4byte	.LASF1432
	.byte	0x5
	.uleb128 0x5c
	.4byte	.LASF1433
	.byte	0x5
	.uleb128 0x5d
	.4byte	.LASF1434
	.byte	0x5
	.uleb128 0x5e
	.4byte	.LASF1435
	.byte	0x5
	.uleb128 0x5f
	.4byte	.LASF1436
	.byte	0x5
	.uleb128 0x60
	.4byte	.LASF1437
	.byte	0x5
	.uleb128 0x61
	.4byte	.LASF1438
	.byte	0x5
	.uleb128 0x62
	.4byte	.LASF1439
	.byte	0x5
	.uleb128 0x63
	.4byte	.LASF1440
	.byte	0x5
	.uleb128 0x64
	.4byte	.LASF1441
	.byte	0x5
	.uleb128 0x65
	.4byte	.LASF1442
	.byte	0x5
	.uleb128 0x69
	.4byte	.LASF1443
	.byte	0x5
	.uleb128 0x6c
	.4byte	.LASF1444
	.byte	0x5
	.uleb128 0x6d
	.4byte	.LASF1445
	.byte	0x5
	.uleb128 0x78
	.4byte	.LASF1446
	.byte	0x5
	.uleb128 0x79
	.4byte	.LASF1447
	.byte	0x5
	.uleb128 0x7a
	.4byte	.LASF1448
	.byte	0x5
	.uleb128 0x7c
	.4byte	.LASF1449
	.byte	0x5
	.uleb128 0x81
	.4byte	.LASF1450
	.byte	0x5
	.uleb128 0x87
	.4byte	.LASF1451
	.byte	0x5
	.uleb128 0x8d
	.4byte	.LASF1452
	.byte	0x5
	.uleb128 0x93
	.4byte	.LASF1453
	.byte	0x5
	.uleb128 0x9b
	.4byte	.LASF1454
	.byte	0x5
	.uleb128 0x9e
	.4byte	.LASF1455
	.byte	0x5
	.uleb128 0xa1
	.4byte	.LASF1456
	.byte	0x5
	.uleb128 0xa4
	.4byte	.LASF1457
	.byte	0x5
	.uleb128 0xa6
	.4byte	.LASF1458
	.byte	0x5
	.uleb128 0xa7
	.4byte	.LASF1459
	.byte	0x5
	.uleb128 0xa8
	.4byte	.LASF1460
	.byte	0x5
	.uleb128 0xaa
	.4byte	.LASF1461
	.byte	0x5
	.uleb128 0xab
	.4byte	.LASF1462
	.byte	0x5
	.uleb128 0xac
	.4byte	.LASF1463
	.byte	0x5
	.uleb128 0xb4
	.4byte	.LASF1464
	.byte	0x5
	.uleb128 0x292
	.4byte	.LASF1465
	.byte	0x5
	.uleb128 0x2af
	.4byte	.LASF1466
	.byte	0x5
	.uleb128 0x2d3
	.4byte	.LASF1467
	.byte	0x5
	.uleb128 0x2d4
	.4byte	.LASF1468
	.byte	0x5
	.uleb128 0x2d5
	.4byte	.LASF1469
	.byte	0x5
	.uleb128 0x2d6
	.4byte	.LASF1470
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.stdarg.h.31.af98fd271030d8fb343a381c651b9f17,comdat
.Ldebug_macro33:
	.2byte	0x5
	.byte	0
	.byte	0x5
	.uleb128 0x1f
	.4byte	.LASF1471
	.byte	0x5
	.uleb128 0x20
	.4byte	.LASF1472
	.byte	0x6
	.uleb128 0x22
	.4byte	.LASF1325
	.byte	0x5
	.uleb128 0x32
	.4byte	.LASF1473
	.byte	0x5
	.uleb128 0x34
	.4byte	.LASF1474
	.byte	0x5
	.uleb128 0x35
	.4byte	.LASF1475
	.byte	0x5
	.uleb128 0x38
	.4byte	.LASF1476
	.byte	0x5
	.uleb128 0x3a
	.4byte	.LASF1477
	.byte	0x5
	.uleb128 0x6d
	.4byte	.LASF1478
	.byte	0x5
	.uleb128 0x70
	.4byte	.LASF1479
	.byte	0x5
	.uleb128 0x73
	.4byte	.LASF1480
	.byte	0x5
	.uleb128 0x76
	.4byte	.LASF1481
	.byte	0x5
	.uleb128 0x79
	.4byte	.LASF1482
	.byte	0
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
	.uleb128 0x8
	.4byte	.LASF1
	.4byte	.LASF1515
	.4byte	.LASF1516
	.4byte	.LASF1517
	.4byte	.LASF1518
	.4byte	.LASF1519
	.4byte	.LASF1520
	.4byte	.LASF1521
	.byte	0x2
	.uleb128 0x1
	.uleb128 0x1f
	.uleb128 0x2
	.uleb128 0xb
	.uleb128 0x21
	.4byte	.LASF0
	.byte	0
	.4byte	.LASF1522
	.byte	0x3
	.4byte	.LASF1523
	.byte	0x4
	.4byte	.LASF1524
	.byte	0x2
	.4byte	.LASF1525
	.byte	0x1
	.4byte	.LASF1526
	.byte	0x4
	.4byte	.LASF1527
	.byte	0x7
	.4byte	.LASF1528
	.byte	0x3
	.4byte	.LASF1529
	.byte	0x3
	.4byte	.LASF1530
	.byte	0x3
	.4byte	.LASF1531
	.byte	0x1
	.4byte	.LASF1532
	.byte	0x4
	.4byte	.LASF1533
	.byte	0x4
	.4byte	.LASF1534
	.byte	0x1
	.4byte	.LASF1535
	.byte	0x1
	.4byte	.LASF1536
	.byte	0x1
	.4byte	.LASF1537
	.byte	0x1
	.4byte	.LASF1538
	.byte	0x1
	.4byte	.LASF1539
	.byte	0x1
	.4byte	.LASF1540
	.byte	0x1
	.4byte	.LASF1541
	.byte	0x7
	.4byte	.LASF1542
	.byte	0x7
	.4byte	.LASF1543
	.byte	0x7
	.4byte	.LASF1544
	.byte	0x6
	.4byte	.LASF1545
	.byte	0x5
	.4byte	.LASF1546
	.byte	0x6
	.4byte	.LASF1547
	.byte	0x6
	.4byte	.LASF1548
	.byte	0x5
	.4byte	.LASF1549
	.byte	0x6
	.4byte	.LASF1550
	.byte	0x6
	.4byte	.LASF1550
	.byte	0x5
	.4byte	.LASF1551
	.byte	0x6
	.4byte	.LASF1527
	.byte	0x6
.LELTP0:
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM1
	.byte	0x1d
	.byte	0x5
	.uleb128 0x26
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
	.uleb128 0x26
	.byte	0x9
	.2byte	.LM4-.LM3
	.byte	0x1
	.byte	0x5
	.uleb128 0x26
	.byte	0x9
	.2byte	.LM5-.LM4
	.byte	0x18
	.byte	0x5
	.uleb128 0x32
	.byte	0x9
	.2byte	.LM6-.LM5
	.byte	0x1
	.byte	0x5
	.uleb128 0x32
	.byte	0x9
	.2byte	.LM7-.LM6
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM8-.LM7
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x25
	.byte	0x9
	.2byte	.LM9-.LM8
	.byte	0x6
	.byte	0x19
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM10-.LM9
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x27
	.byte	0x9
	.2byte	.LM11-.LM10
	.byte	0x1
	.byte	0x5
	.uleb128 0x27
	.byte	0x9
	.2byte	.LM12-.LM11
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM13-.LM12
	.byte	0x19
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM14-.LM13
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x29
	.byte	0x9
	.2byte	.LM15-.LM14
	.byte	0x1
	.byte	0x5
	.uleb128 0x29
	.byte	0x9
	.2byte	.LM16-.LM15
	.byte	0x19
	.byte	0x5
	.uleb128 0x10
	.byte	0x9
	.2byte	.LM17-.LM16
	.byte	0x15
	.byte	0x5
	.uleb128 0x29
	.byte	0x9
	.2byte	.LM18-.LM17
	.byte	0x6
	.byte	0x19
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM19-.LM18
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x10
	.byte	0x9
	.2byte	.LM20-.LM19
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0x2
	.byte	0x1
	.byte	0x5
	.uleb128 0x10
	.byte	0x9
	.2byte	.LM21-.LM20
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0x4
	.byte	0x1
	.byte	0x5
	.uleb128 0x10
	.byte	0x9
	.2byte	.LM22-.LM21
	.byte	0x1
	.byte	0x5
	.uleb128 0x10
	.byte	0x9
	.2byte	.LM23-.LM22
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0
	.byte	0x6
	.byte	0x1c
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM24-.LM23
	.byte	0x18
	.byte	0x5
	.uleb128 0x4
	.byte	0x9
	.2byte	.LM25-.LM24
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x16
	.byte	0x9
	.2byte	.LM26-.LM25
	.byte	0x18
	.byte	0x5
	.uleb128 0xc
	.byte	0x9
	.2byte	.LM27-.LM26
	.byte	0x16
	.byte	0x5
	.uleb128 0x16
	.byte	0x9
	.2byte	.LM28-.LM27
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM29-.LM28
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0xc
	.byte	0x9
	.2byte	.LM30-.LM29
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x4
	.byte	0x9
	.2byte	.LM31-.LM30
	.byte	0x19
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM32-.LM31
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x10
	.byte	0x9
	.2byte	.LM33-.LM32
	.byte	0x18
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM34-.LM33
	.byte	0x1
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM35-.LM34
	.byte	0x1
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM36-.LM35
	.byte	0x1
	.byte	0x5
	.uleb128 0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LFE2
	.byte	0
	.uleb128 0x1
	.byte	0x1
.LELT0:
	.section	.debug_str,"MS",@progbits,1
.LASF1211:
	.string	"__GNUCLIKE___SECTION 1"
.LASF1416:
	.string	"_REENT_INIT_PTR(var) { memset((var), 0, sizeof(*(var))); _REENT_INIT_PTR_ZEROED(var); }"
.LASF1446:
	.string	"_IOFBF 0"
.LASF708:
	.string	"INT_WDOGCMP 1"
.LASF1157:
	.string	"__SVID_VISIBLE 0"
.LASF746:
	.string	"configTICK_RATE_HZ ( ( TickType_t ) 1000 )"
.LASF963:
	.string	"traceTIMER_CREATE_FAILED() "
.LASF424:
	.string	"__riscv 1"
.LASF93:
	.string	"__cpp_variadic_templates 200704L"
.LASF338:
	.string	"__FLT128_MIN_10_EXP__ (-4931)"
.LASF1093:
	.string	"listLIST_ITEM_CONTAINER(pxListItem) ( ( pxListItem )->pxContainer )"
.LASF1445:
	.string	"__SWID 0x2000"
.LASF1151:
	.string	"__BSD_VISIBLE 0"
.LASF1147:
	.string	"_SYS_FEATURES_H "
.LASF410:
	.string	"__GCC_ATOMIC_WCHAR_T_LOCK_FREE 1"
.LASF1404:
	.string	"_REENT_GETDATE_ERR_P(ptr) (&((ptr)->_new._reent._getdate_err))"
.LASF1102:
	.string	"tskMPU_REGION_NORMAL_MEMORY ( 1UL << 3UL )"
.LASF404:
	.string	"__CHAR_UNSIGNED__ 1"
.LASF1374:
	.ascii	"_REENT_INIT_PTR_ZEROED(var) { (var)->_stdin = &__sf[0]; (var"
	.ascii	")->_stdout = &__sf[1]; (var)->_stderr = &__sf[2]; (var)->_ne"
	.ascii	"w._reent._rand_next = 1; (var)->_new._reent._r48._seed[0] = "
	.ascii	"_RAND48_SEED_0; (var)->_new._reent._r48._seed[1] = _RAND48_S"
	.string	"EED_1; (var)->_new._reent._r48._seed[2] = _RAND48_SEED_2; (var)->_new._reent._r48._mult[0] = _RAND48_MULT_0; (var)->_new._reent._r48._mult[1] = _RAND48_MULT_1; (var)->_new._reent._r48._mult[2] = _RAND48_MULT_2; (var)->_new._reent._r48._add = _RAND48_ADD; }"
.LASF735:
	.string	"NUM_GPIO 32"
.LASF915:
	.string	"traceTASK_SWITCHED_IN() "
.LASF1030:
	.string	"portTICK_TYPE_SET_INTERRUPT_MASK_FROM_ISR() 0"
.LASF882:
	.string	"portFORCE_INLINE inline __attribute__(( always_inline))"
.LASF341:
	.string	"__FLT128_DECIMAL_DIG__ 36"
.LASF748:
	.string	"configMINIMAL_STACK_SIZE ( ( unsigned short ) 96 )"
.LASF331:
	.string	"__FLT64_HAS_INFINITY__ 1"
.LASF1342:
	.string	"__SYS_LOCK_H__ "
.LASF1309:
	.string	"__requires_exclusive(...) __lock_annotate(exclusive_locks_required(__VA_ARGS__))"
.LASF754:
	.string	"configIDLE_SHOULD_YIELD 1"
.LASF794:
	.string	"pdFALSE ( ( BaseType_t ) 0 )"
.LASF164:
	.string	"__PTRDIFF_MAX__ 0x7fffffff"
.LASF985:
	.string	"traceTASK_NOTIFY_WAIT_BLOCK() "
.LASF673:
	.string	"SPI0_MEM_ADDR _AC(0x20000000,UL)"
.LASF176:
	.string	"__INTMAX_C(c) c ## LL"
.LASF972:
	.string	"traceEVENT_GROUP_SYNC_END(xEventGroup,uxBitsToSet,uxBitsToWaitFor,xTimeoutOccurred) ( void ) xTimeoutOccurred"
.LASF175:
	.string	"__INTMAX_MAX__ 0x7fffffffffffffffLL"
.LASF1220:
	.string	"__GNUCLIKE_MATH_BUILTIN_RELOPS "
.LASF889:
	.string	"PRIVILEGED_FUNCTION "
.LASF1346:
	.string	"__lock_init_recursive(lock) ((void) 0)"
.LASF324:
	.string	"__FLT64_DECIMAL_DIG__ 17"
.LASF801:
	.string	"errQUEUE_BLOCKED ( -4 )"
.LASF626:
	.string	"WINT_MIN __WINT_MIN__"
.LASF591:
	.string	"INT_FAST64_MAX"
.LASF904:
	.string	"configUSE_ALTERNATIVE_API 0"
.LASF104:
	.string	"__cpp_digit_separators 201309L"
.LASF19:
	.string	"__ATOMIC_CONSUME 1"
.LASF750:
	.string	"configMAX_TASK_NAME_LEN ( 16 )"
.LASF872:
	.string	"portENABLE_INTERRUPTS() __asm volatile( \"csrs mstatus, 8\" )"
.LASF1231:
	.string	"__CONCAT(x,y) __CONCAT1(x,y)"
.LASF368:
	.string	"__FLT64X_DIG__ 33"
.LASF350:
	.string	"__FLT128_IS_IEC_60559__ 1"
.LASF377:
	.string	"__FLT64X_EPSILON__ 1.92592994438723585305597794258492732e-34F64x"
.LASF888:
	.string	"MPU_WRAPPERS_H "
.LASF1210:
	.string	"__GNUCLIKE___TYPEOF 1"
.LASF976:
	.string	"traceEVENT_GROUP_CLEAR_BITS_FROM_ISR(xEventGroup,uxBitsToClear) "
.LASF232:
	.string	"__FLT_MANT_DIG__ 24"
.LASF1085:
	.string	"listGET_HEAD_ENTRY(pxList) ( ( ( pxList )->xListEnd ).pxNext )"
.LASF544:
	.string	"INT64_MAX __INT64_MAX__"
.LASF605:
	.string	"INTMAX_MIN"
.LASF25:
	.string	"__SIZEOF_LONG_LONG__ 8"
.LASF254:
	.string	"__DBL_MAX_10_EXP__ 308"
.LASF753:
	.string	"configUSE_16_BIT_TICKS 0"
.LASF1004:
	.string	"portPRIVILEGE_BIT ( ( UBaseType_t ) 0x00 )"
.LASF667:
	.string	"PWM0_CTRL_ADDR _AC(0x10015000,UL)"
.LASF1280:
	.string	"__strong_reference(sym,aliassym) extern __typeof (sym) aliassym __attribute__ ((__alias__ (#sym)))"
.LASF179:
	.string	"__INTMAX_WIDTH__ 64"
.LASF1506:
	.ascii	"GNU C++23 15"
	.string	".1.0 -mabi=ilp32f -misa-spec=20191213 -march=rv32imfc_zicsr_zmmul_zca_zcf -gdwarf -g3 -Os -std=c++23 -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing -fms-extensions -ffunction-sections -fdata-sections -fno-rtti -fno-exceptions"
.LASF1046:
	.string	"xTaskStatusType TaskStatus_t"
.LASF35:
	.string	"__ORDER_PDP_ENDIAN__ 3412"
.LASF42:
	.string	"__SIZE_TYPE__ unsigned int"
.LASF719:
	.string	"_REG32(p,i) (*(volatile uint32_t *) ((p) + (i)))"
.LASF829:
	.string	"pdFREERTOS_ERRNO_ENMFILE 89"
.LASF783:
	.string	"bktBLOCK_TIME_TASK_STACK_SIZE 100"
.LASF244:
	.string	"__FLT_HAS_DENORM__ 1"
.LASF52:
	.string	"__INT8_TYPE__ signed char"
.LASF105:
	.string	"__cpp_unicode_characters 201411L"
.LASF1042:
	.string	"xQueueSetMemberHandle QueueSetMemberHandle_t"
.LASF873:
	.string	"portENTER_CRITICAL() vTaskEnterCritical()"
.LASF258:
	.string	"__DBL_MIN__ double(2.22507385850720138309023271733240406e-308L)"
.LASF130:
	.string	"__cpp_nontype_template_args 201911L"
.LASF306:
	.string	"__FLT32_DECIMAL_DIG__ 9"
.LASF776:
	.string	"INCLUDE_vTaskSuspend 1"
.LASF373:
	.string	"__FLT64X_DECIMAL_DIG__ 36"
.LASF999:
	.string	"traceBLOCKING_ON_STREAM_BUFFER_RECEIVE(xStreamBuffer) "
.LASF4:
	.string	"__STDC_UTF_16__ 1"
.LASF290:
	.string	"__FLT16_MAX__ 6.55040000000000000000000000000000000e+4F16"
.LASF546:
	.string	"INT64_MIN (-INT64_MAX - 1)"
.LASF150:
	.string	"__STDCPP_DEFAULT_NEW_ALIGNMENT__ 16"
.LASF204:
	.string	"__UINT8_C(c) c"
.LASF880:
	.string	"portNOP() __asm volatile ( \" nop \" )"
.LASF53:
	.string	"__INT16_TYPE__ short int"
.LASF518:
	.string	"NULL __null"
.LASF1302:
	.string	"__locks_exclusive(...) __lock_annotate(exclusive_lock_function(__VA_ARGS__))"
.LASF967:
	.string	"traceMALLOC(pvAddress,uiSize) "
.LASF913:
	.string	"traceSTART() "
.LASF442:
	.string	"__riscv_zmmul 1000000"
.LASF1124:
	.string	"_NEWLIB_VERSION \"4.4.0\""
.LASF374:
	.string	"__FLT64X_MAX__ 1.18973149535723176508575932662800702e+4932F64x"
.LASF1388:
	.string	"_REENT_MP_RESULT_K(ptr) ((ptr)->_result_k)"
.LASF970:
	.string	"traceEVENT_GROUP_CREATE_FAILED() "
.LASF592:
	.string	"INT_FAST64_MAX __INT_FAST64_MAX__"
.LASF347:
	.string	"__FLT128_HAS_DENORM__ 1"
.LASF271:
	.string	"__DECIMAL_DIG__ 36"
.LASF887:
	.string	"portARCH_NAME NULL"
.LASF1320:
	.string	"__builtin_align_down(x,align) ((__typeof__(x))((x)&(~((align)-1))))"
.LASF688:
	.string	"IOF0_SPI2_MASK _AC(0xFC000000,UL)"
.LASF1310:
	.string	"__requires_shared(...) __lock_annotate(shared_locks_required(__VA_ARGS__))"
.LASF1002:
	.string	"traceSTREAM_BUFFER_RECEIVE_FROM_ISR(xStreamBuffer,xReceivedLength) "
.LASF1068:
	.string	"LIST_H "
.LASF1387:
	.string	"_REENT_MP_RESULT(ptr) ((ptr)->_result)"
.LASF81:
	.string	"__GXX_CONSTEXPR_ASM__ 1"
.LASF731:
	.string	"SPI1_REG(offset) _REG32(SPI1_CTRL_ADDR, offset)"
.LASF1417:
	.string	"__ATTRIBUTE_IMPURE_PTR__ "
.LASF769:
	.string	"configTIMER_QUEUE_LENGTH 4"
.LASF260:
	.string	"__DBL_DENORM_MIN__ double(4.94065645841246544176568792868221372e-324L)"
.LASF481:
	.string	"__SIZE_T__ "
.LASF309:
	.string	"__FLT32_MIN__ 1.17549435082228750796873653722224568e-38F32"
.LASF540:
	.string	"INT32_MIN (-INT32_MAX - 1)"
.LASF973:
	.string	"traceEVENT_GROUP_WAIT_BITS_BLOCK(xEventGroup,uxBitsToWaitFor) "
.LASF305:
	.string	"__FLT32_MAX_10_EXP__ 38"
.LASF996:
	.string	"traceSTREAM_BUFFER_SEND(xStreamBuffer,xBytesSent) "
.LASF701:
	.string	"IOF0_UART1_MASK _AC(0x03000000, UL)"
.LASF461:
	.string	"__COMPONENT_NAME_DEQUOTED__ suas_app_freertos_watchdog"
.LASF920:
	.string	"traceTASK_PRIORITY_INHERIT(pxTCBOfMutexHolder,uxInheritedPriority) "
.LASF240:
	.string	"__FLT_NORM_MAX__ 3.40282346638528859811704183484516925e+38F"
.LASF1215:
	.string	"__GNUCLIKE_BUILTIN_STDARG 1"
.LASF315:
	.string	"__FP_FAST_FMAF32 1"
.LASF717:
	.string	"INT_PWM1_BASE 44"
.LASF48:
	.string	"__CHAR8_TYPE__ unsigned char"
.LASF1001:
	.string	"traceSTREAM_BUFFER_RECEIVE_FAILED(xStreamBuffer) "
.LASF1196:
	.string	"__ASMNAME(cname) __XSTRING (__USER_LABEL_PREFIX__) cname"
.LASF516:
	.string	"__need_wchar_t"
.LASF302:
	.string	"__FLT32_MIN_EXP__ (-125)"
.LASF1262:
	.string	"__result_use_check __attribute__((__warn_unused_result__))"
.LASF1322:
	.string	"__align_down(x,y) __builtin_align_down(x, y)"
.LASF1459:
	.string	"stdout _REENT_STDOUT(_REENT)"
.LASF911:
	.string	"portSETUP_TCB(pxTCB) ( void ) pxTCB"
.LASF1223:
	.string	"__CC_SUPPORTS___INLINE 1"
.LASF961:
	.string	"traceTASK_INCREMENT_TICK(xTickCount) "
.LASF542:
	.string	"UINT32_MAX __UINT32_MAX__"
.LASF1179:
	.string	"_SYS_CDEFS_H_ "
.LASF474:
	.string	"_BSD_PTRDIFF_T_ "
.LASF901:
	.string	"INCLUDE_xTaskGetSchedulerState 0"
.LASF504:
	.string	"__WCHAR_T "
.LASF171:
	.string	"__WCHAR_WIDTH__ 32"
.LASF1234:
	.string	"__const const"
.LASF1000:
	.string	"traceSTREAM_BUFFER_RECEIVE(xStreamBuffer,xReceivedLength) "
.LASF321:
	.string	"__FLT64_MIN_10_EXP__ (-307)"
.LASF1512:
	.string	"log_event"
.LASF39:
	.string	"__GNUC_EXECUTION_CHARSET_NAME \"UTF-8\""
.LASF1203:
	.string	"__bounded "
.LASF218:
	.string	"__INT_FAST64_WIDTH__ 64"
.LASF568:
	.string	"INT_LEAST64_MAX __INT_LEAST64_MAX__"
.LASF965:
	.string	"traceTIMER_EXPIRED(pxTimer) "
.LASF1010:
	.string	"configPOST_SLEEP_PROCESSING(x) "
.LASF790:
	.string	"genqGENERIC_QUEUE_TEST_TASK_STACK_SIZE 100"
.LASF1161:
	.string	"_POINTER_INT long"
.LASF925:
	.string	"configRECORD_STACK_HIGH_ADDRESS 0"
.LASF1230:
	.string	"__CONCAT1(x,y) x ## y"
.LASF674:
	.string	"MEM_CTRL_ADDR _AC(0x80000000,UL)"
.LASF485:
	.string	"_T_SIZE "
.LASF198:
	.string	"__INT32_C(c) c ## L"
.LASF640:
	.string	"UINT32_C(c) __UINT32_C(c)"
.LASF34:
	.string	"__ORDER_BIG_ENDIAN__ 4321"
.LASF617:
	.string	"SIZE_MAX"
.LASF729:
	.string	"PWM2_REG(offset) _REG32(PWM2_CTRL_ADDR, offset)"
.LASF1053:
	.string	"pcQueueGetQueueName pcQueueGetName"
.LASF1471:
	.string	"_STDARG_H "
.LASF564:
	.string	"INT_LEAST32_MIN (-INT_LEAST32_MAX - 1)"
.LASF1438:
	.string	"__SSTR 0x0200"
.LASF1436:
	.string	"__SMBF 0x0080"
.LASF799:
	.string	"errQUEUE_FULL ( ( BaseType_t ) 0 )"
.LASF861:
	.string	"portTICK_TYPE_IS_ATOMIC 1"
.LASF349:
	.string	"__FLT128_HAS_QUIET_NAN__ 1"
.LASF1397:
	.string	"_REENT_MBRLEN_STATE(ptr) ((ptr)->_new._reent._mbrlen_state)"
.LASF672:
	.string	"PWM2_CTRL_ADDR _AC(0x10035000,UL)"
.LASF320:
	.string	"__FLT64_MIN_EXP__ (-1021)"
.LASF1252:
	.string	"_Static_assert(x,y) static_assert(x, y)"
.LASF173:
	.string	"__PTRDIFF_WIDTH__ 32"
.LASF573:
	.string	"INT_FAST8_MAX"
.LASF1281:
	.string	"__weak_reference(sym,alias) __asm__(\".weak \" #alias); __asm__(\".equ \" #alias \", \" #sym)"
.LASF1431:
	.string	"__SRD 0x0004"
.LASF1453:
	.string	"L_tmpnam FILENAME_MAX"
.LASF219:
	.string	"__UINT_FAST8_MAX__ 0xffffffffU"
.LASF715:
	.string	"INT_GPIO_BASE 8"
.LASF517:
	.string	"NULL"
.LASF1376:
	.string	"_REENT_CHECK_MP(ptr) "
.LASF63:
	.string	"__INT_LEAST64_TYPE__ long long int"
.LASF1440:
	.string	"__SNPT 0x0800"
.LASF372:
	.string	"__FLT64X_MAX_10_EXP__ 4932"
.LASF166:
	.string	"__SCHAR_WIDTH__ 8"
.LASF705:
	.string	"IOF1_PWM1_MASK _AC(0x00780000, UL)"
.LASF214:
	.string	"__INT_FAST16_WIDTH__ 32"
.LASF1419:
	.string	"_REENT _impure_ptr"
.LASF643:
	.string	"INTMAX_C"
.LASF699:
	.string	"IOF_UART0_RX (16u)"
.LASF418:
	.string	"__GCC_ATOMIC_POINTER_LOCK_FREE 1"
.LASF1422:
	.string	"_Kmax (sizeof (size_t) << 3)"
.LASF259:
	.string	"__DBL_EPSILON__ double(2.22044604925031308084726333618164062e-16L)"
.LASF1018:
	.string	"mtCOVERAGE_TEST_MARKER() "
.LASF220:
	.string	"__UINT_FAST16_MAX__ 0xffffffffU"
.LASF154:
	.string	"__GXX_ABI_VERSION 1020"
.LASF223:
	.string	"__INTPTR_MAX__ 0x7fffffff"
.LASF295:
	.string	"__FLT16_HAS_DENORM__ 1"
.LASF1111:
	.string	"taskENABLE_INTERRUPTS() portENABLE_INTERRUPTS()"
.LASF664:
	.string	"GPIO_CTRL_ADDR _AC(0x10012000,UL)"
.LASF343:
	.string	"__FLT128_NORM_MAX__ 1.18973149535723176508575932662800702e+4932F128"
.LASF1293:
	.string	"_Nonnull "
.LASF384:
	.string	"__BFLT16_MANT_DIG__ 8"
.LASF1148:
	.string	"__GNUC_PREREQ(maj,min) ((__GNUC__ << 16) + __GNUC_MINOR__ >= ((maj) << 16) + (min))"
.LASF503:
	.string	"_T_WCHAR "
.LASF1072:
	.string	"listFIRST_LIST_INTEGRITY_CHECK_VALUE "
.LASF181:
	.string	"__SIG_ATOMIC_MIN__ (-__SIG_ATOMIC_MAX__ - 1)"
.LASF364:
	.string	"__FLT32X_HAS_INFINITY__ 1"
.LASF584:
	.string	"UINT_FAST16_MAX __UINT_FAST16_MAX__"
.LASF483:
	.string	"_SYS_SIZE_T_H "
.LASF1287:
	.string	"__RCSID_SOURCE(s) struct __hack"
.LASF900:
	.string	"INCLUDE_xTaskResumeFromISR 1"
.LASF1150:
	.string	"__ATFILE_VISIBLE 0"
.LASF64:
	.string	"__UINT_LEAST8_TYPE__ unsigned char"
.LASF248:
	.string	"__FLT_IS_IEC_60559__ 1"
.LASF1456:
	.string	"SEEK_END 2"
.LASF1265:
	.string	"__restrict_arr "
.LASF1482:
	.string	"__va_list__ "
.LASF722:
	.string	"CLINT_REG(offset) _REG32(CLINT_CTRL_ADDR, offset)"
.LASF428:
	.string	"__riscv_muldiv 1"
.LASF1489:
	.string	"long int"
.LASF529:
	.string	"UINT8_MAX"
.LASF1319:
	.string	"__builtin_align_up(x,align) ((__typeof__(x))(((__uintptr_t)(x)+((align)-1))&(~((align)-1))))"
.LASF618:
	.string	"SIZE_MAX __SIZE_MAX__"
.LASF884:
	.string	"portBYTE_ALIGNMENT_MASK ( 0x000f )"
.LASF217:
	.string	"__INT_FAST64_MAX__ 0x7fffffffffffffffLL"
.LASF357:
	.string	"__FLT32X_DECIMAL_DIG__ 17"
.LASF365:
	.string	"__FLT32X_HAS_QUIET_NAN__ 1"
.LASF1059:
	.string	"xList List_t"
.LASF767:
	.string	"configUSE_TIMERS 1"
.LASF1349:
	.string	"__lock_acquire(lock) ((void) 0)"
.LASF1189:
	.string	"___int_least16_t_defined 1"
.LASF447:
	.string	"ETL_NO_STL 1"
.LASF747:
	.string	"configMAX_PRIORITIES ( 32 )"
.LASF84:
	.string	"__cpp_runtime_arrays 198712L"
.LASF68:
	.string	"__INT_FAST8_TYPE__ int"
.LASF1174:
	.string	"_NOINLINE __attribute__ ((__noinline__))"
.LASF480:
	.string	"__size_t__ "
.LASF337:
	.string	"__FLT128_MIN_EXP__ (-16381)"
.LASF736:
	.string	"PLIC_NUM_INTERRUPTS 52"
.LASF178:
	.string	"__UINTMAX_C(c) c ## ULL"
.LASF38:
	.string	"__SIZEOF_POINTER__ 4"
.LASF60:
	.string	"__INT_LEAST8_TYPE__ signed char"
.LASF405:
	.string	"__GCC_ATOMIC_BOOL_LOCK_FREE 1"
.LASF692:
	.string	"IOF_SPI2_MISO (28u)"
.LASF1501:
	.string	"xTaskGetTickCount"
.LASF764:
	.string	"configNUM_THREAD_LOCAL_STORAGE_POINTERS 1"
.LASF379:
	.string	"__FLT64X_HAS_DENORM__ 1"
.LASF585:
	.string	"INT_FAST32_MAX"
.LASF1429:
	.string	"__SLBF 0x0001"
.LASF304:
	.string	"__FLT32_MAX_EXP__ 128"
.LASF554:
	.string	"UINT_LEAST8_MAX __UINT_LEAST8_MAX__"
.LASF47:
	.string	"__UINTMAX_TYPE__ long long unsigned int"
.LASF682:
	.string	"IOF_SPI1_MISO (4u)"
.LASF724:
	.string	"OTP_REG(offset) _REG32(OTP_CTRL_ADDR, offset)"
.LASF277:
	.string	"__LDBL_DENORM_MIN__ 6.47517511943802511092443895822764655e-4966L"
.LASF1491:
	.string	"short unsigned int"
.LASF1036:
	.string	"eTaskStateGet eTaskGetState"
.LASF832:
	.string	"pdFREERTOS_ERRNO_EOPNOTSUPP 95"
.LASF40:
	.string	"__GNUC_WIDE_EXECUTION_CHARSET_NAME \"UTF-32LE\""
.LASF578:
	.string	"UINT_FAST8_MAX __UINT_FAST8_MAX__"
.LASF475:
	.string	"___int_ptrdiff_t_h "
.LASF803:
	.string	"configUSE_LIST_DATA_INTEGRITY_CHECK_BYTES 0"
.LASF492:
	.string	"_SIZE_T_DECLARED "
.LASF530:
	.string	"UINT8_MAX __UINT8_MAX__"
.LASF50:
	.string	"__CHAR32_TYPE__ long unsigned int"
.LASF615:
	.string	"SIG_ATOMIC_MIN"
.LASF1356:
	.string	"_ATEXIT_INIT {_NULL, 0, {_NULL}, {{_NULL}, {_NULL}, 0, 0}}"
.LASF1267:
	.string	"__predict_false(exp) __builtin_expect((exp), 0)"
.LASF1478:
	.string	"_VA_LIST_ "
.LASF264:
	.string	"__DBL_IS_IEC_60559__ 1"
.LASF1511:
	.string	"_Z22watchdog_get_heartbeatP19tskTaskControlBlock"
.LASF713:
	.string	"INT_SPI1_BASE 6"
.LASF236:
	.string	"__FLT_MAX_EXP__ 128"
.LASF24:
	.string	"__SIZEOF_LONG__ 4"
.LASF1229:
	.string	"__P(protos) protos"
.LASF1094:
	.string	"listLIST_IS_INITIALISED(pxList) ( ( pxList )->xListEnd.xItemValue == portMAX_DELAY )"
.LASF823:
	.string	"pdFREERTOS_ERRNO_ENOSPC 28"
.LASF151:
	.string	"__cpp_template_template_args 201611L"
.LASF1250:
	.string	"_Alignof(x) alignof(x)"
.LASF707:
	.string	"INT_RESERVED 0"
.LASF1296:
	.string	"__NULLABILITY_PRAGMA_PUSH "
.LASF923:
	.string	"traceBLOCKING_ON_QUEUE_PEEK(pxQueue) "
.LASF962:
	.string	"traceTIMER_CREATE(pxNewTimer) "
.LASF1377:
	.string	"_REENT_CHECK_TM(ptr) "
.LASF28:
	.string	"__SIZEOF_DOUBLE__ 8"
.LASF199:
	.string	"__INT_LEAST32_WIDTH__ 32"
.LASF955:
	.string	"traceTASK_DELAY_UNTIL(x) "
.LASF837:
	.string	"pdFREERTOS_ERRNO_EINPROGRESS 119"
.LASF270:
	.string	"__LDBL_MAX_10_EXP__ 4932"
.LASF106:
	.string	"__cpp_static_assert 201411L"
.LASF890:
	.string	"PRIVILEGED_DATA "
.LASF836:
	.string	"pdFREERTOS_ERRNO_ETIMEDOUT 116"
.LASF1070:
	.string	"listFIRST_LIST_ITEM_INTEGRITY_CHECK_VALUE "
.LASF152:
	.string	"__cpp_threadsafe_static_init 200806L"
.LASF1251:
	.string	"_Noreturn [[noreturn]]"
.LASF979:
	.string	"traceEVENT_GROUP_DELETE(xEventGroup) "
.LASF329:
	.string	"__FLT64_DENORM_MIN__ 4.94065645841246544176568792868221372e-324F64"
.LASF1105:
	.string	"taskYIELD() portYIELD()"
.LASF1256:
	.string	"__pure __attribute__((__pure__))"
.LASF802:
	.string	"errQUEUE_YIELD ( -5 )"
.LASF427:
	.string	"__riscv_div 1"
.LASF745:
	.string	"configCPU_CLOCK_HZ ( 10 * 1000 * 1000 )"
.LASF235:
	.string	"__FLT_MIN_10_EXP__ (-37)"
.LASF326:
	.string	"__FLT64_NORM_MAX__ 1.79769313486231570814527423731704357e+308F64"
.LASF1052:
	.string	"pcTimerGetTimerName pcTimerGetName"
.LASF238:
	.string	"__FLT_DECIMAL_DIG__ 9"
.LASF1321:
	.string	"__align_up(x,y) __builtin_align_up(x, y)"
.LASF909:
	.string	"portCLEAN_UP_TCB(pxTCB) ( void ) pxTCB"
.LASF1014:
	.string	"portDONT_DISCARD "
.LASF812:
	.string	"pdFREERTOS_ERRNO_EWOULDBLOCK 11"
.LASF59:
	.string	"__UINT64_TYPE__ long long unsigned int"
.LASF1044:
	.string	"xMemoryRegion MemoryRegion_t"
.LASF732:
	.string	"SPI2_REG(offset) _REG32(SPI2_CTRL_ADDR, offset)"
.LASF112:
	.string	"__cpp_if_constexpr 201606L"
.LASF525:
	.string	"INT8_MAX"
.LASF606:
	.string	"INTMAX_MIN (-INTMAX_MAX - 1)"
.LASF82:
	.string	"__cpp_binary_literals 201304L"
.LASF632:
	.string	"INT32_C(c) __INT32_C(c)"
.LASF311:
	.string	"__FLT32_DENORM_MIN__ 1.40129846432481707092372958328991613e-45F32"
.LASF147:
	.string	"__cpp_impl_coroutine 201902L"
.LASF402:
	.string	"__GNUC_STDC_INLINE__ 1"
.LASF1049:
	.string	"pdTASK_HOOK_CODE TaskHookFunction_t"
.LASF201:
	.string	"__INT64_C(c) c ## LL"
.LASF1312:
	.string	"__no_lock_analysis __lock_annotate(no_thread_safety_analysis)"
.LASF1043:
	.string	"xTimeOutType TimeOut_t"
.LASF246:
	.string	"__FLT_HAS_QUIET_NAN__ 1"
.LASF12:
	.string	"__GNUC_PATCHLEVEL__ 0"
.LASF409:
	.string	"__GCC_ATOMIC_CHAR32_T_LOCK_FREE 1"
.LASF1084:
	.string	"listGET_ITEM_VALUE_OF_HEAD_ENTRY(pxList) ( ( ( pxList )->xListEnd ).pxNext->xItemValue )"
.LASF685:
	.string	"IOF_SPI1_DQ1 (4u)"
.LASF611:
	.string	"PTRDIFF_MIN"
.LASF205:
	.string	"__UINT_LEAST16_MAX__ 0xffff"
.LASF416:
	.string	"__GCC_DESTRUCTIVE_SIZE 32"
.LASF1324:
	.string	"__need___va_list "
.LASF602:
	.string	"UINTPTR_MAX __UINTPTR_MAX__"
.LASF879:
	.string	"portTASK_FUNCTION(vFunction,pvParameters) void vFunction( void *pvParameters )"
.LASF135:
	.string	"__cpp_aggregate_paren_init 201902L"
.LASF443:
	.string	"__riscv_zca 1000000"
.LASF1266:
	.string	"__predict_true(exp) __builtin_expect((exp), 1)"
.LASF1080:
	.string	"listSET_LIST_ITEM_OWNER(pxListItem,pxOwner) ( ( pxListItem )->pvOwner = ( void * ) ( pxOwner ) )"
.LASF1461:
	.string	"_stdin_r(x) _REENT_STDIN(x)"
.LASF362:
	.string	"__FLT32X_DENORM_MIN__ 4.94065645841246544176568792868221372e-324F32x"
.LASF114:
	.string	"__cpp_inline_variables 201606L"
.LASF323:
	.string	"__FLT64_MAX_10_EXP__ 308"
.LASF937:
	.string	"traceCREATE_COUNTING_SEMAPHORE() "
.LASF625:
	.string	"WINT_MIN"
.LASF1071:
	.string	"listSECOND_LIST_ITEM_INTEGRITY_CHECK_VALUE "
.LASF491:
	.string	"_BSD_SIZE_T_DEFINED_ "
.LASF831:
	.string	"pdFREERTOS_ERRNO_ENAMETOOLONG 91"
.LASF74:
	.string	"__UINT_FAST32_TYPE__ unsigned int"
.LASF494:
	.string	"___int_size_t_h "
.LASF5:
	.string	"__STDC_UTF_32__ 1"
.LASF1457:
	.string	"TMP_MAX 26"
.LASF310:
	.string	"__FLT32_EPSILON__ 1.19209289550781250000000000000000000e-7F32"
.LASF547:
	.string	"UINT64_MAX"
.LASF237:
	.string	"__FLT_MAX_10_EXP__ 38"
.LASF1035:
	.string	"configMIN(a,b) ( ( ( a ) < ( b ) ) ? ( a ) : ( b ) )"
.LASF1509:
	.string	"safe_printf"
.LASF934:
	.string	"traceGIVE_MUTEX_RECURSIVE_FAILED(pxMutex) "
.LASF252:
	.string	"__DBL_MIN_10_EXP__ (-307)"
.LASF562:
	.string	"INT_LEAST32_MAX __INT_LEAST32_MAX__"
.LASF654:
	.string	"_BITUL(x) (_AC(1,UL) << (x))"
.LASF90:
	.string	"__cpp_attributes 200809L"
.LASF1170:
	.string	"_NOTHROW __attribute__ ((__nothrow__))"
.LASF791:
	.string	"recmuRECURSIVE_MUTEX_TEST_TASK_STACK_SIZE 90"
.LASF369:
	.string	"__FLT64X_MIN_EXP__ (-16381)"
.LASF15:
	.string	"__ATOMIC_SEQ_CST 5"
.LASF733:
	.string	"UART0_REG(offset) _REG32(UART0_CTRL_ADDR, offset)"
.LASF1408:
	.string	"_REENT_EMERGENCY(_ptr) ((_ptr)->_emergency)"
.LASF493:
	.string	"__DEFINED_size_t "
.LASF990:
	.string	"traceSTREAM_BUFFER_CREATE_FAILED(xIsMessageBuffer) "
.LASF1331:
	.string	"__need_wint_t"
.LASF1284:
	.string	"__sym_default(sym,impl,verid) __asm__(\".symver \" #impl \", \" #sym \"@@\" #verid)"
.LASF439:
	.string	"__riscv_f 2002000"
.LASF456:
	.string	"CFG_COMPONENT_BLOG_ENABLE 0"
.LASF1247:
	.string	"__alloc_size2(n,x) __attribute__((__alloc_size__(n, x)))"
.LASF188:
	.string	"__UINT16_MAX__ 0xffff"
.LASF1428:
	.string	"_funlockfile(fp) (((fp)->_flags & __SSTR) ? 0 : __lock_release_recursive((fp)->_lock))"
.LASF1028:
	.string	"portTICK_TYPE_ENTER_CRITICAL() "
.LASF1058:
	.string	"xListItem ListItem_t"
.LASF274:
	.string	"__LDBL_NORM_MAX__ 1.18973149535723176508575932662800702e+4932L"
.LASF156:
	.string	"__SHRT_MAX__ 0x7fff"
.LASF1508:
	.string	"__builtin_va_list"
.LASF1156:
	.string	"__POSIX_VISIBLE 0"
.LASF1132:
	.string	"_HAVE_LONG_DOUBLE 1"
.LASF1365:
	.string	"_REENT_EMERGENCY_SIZE 25"
.LASF581:
	.string	"INT_FAST16_MIN"
.LASF269:
	.string	"__LDBL_MAX_EXP__ 16384"
.LASF858:
	.string	"portDOUBLE double"
.LASF26:
	.string	"__SIZEOF_SHORT__ 2"
.LASF983:
	.string	"traceTASK_NOTIFY_TAKE_BLOCK() "
.LASF866:
	.string	"portEND_SWITCHING_ISR(xSwitchRequired) if( xSwitchRequired ) vTaskSwitchContext()"
.LASF71:
	.string	"__INT_FAST64_TYPE__ long long int"
.LASF1497:
	.string	"__gnuc_va_list"
.LASF395:
	.string	"__BFLT16_DENORM_MIN__ 9.18354961579912115600575419704879436e-41BF16"
.LASF1060:
	.string	"pxContainer pvContainer"
.LASF588:
	.string	"INT_FAST32_MIN (-INT_FAST32_MAX - 1)"
.LASF1130:
	.string	"_HAVE_CC_INHIBIT_LOOP_TO_LIBCALL 1"
.LASF153:
	.string	"__cpp_char8_t 202207L"
.LASF489:
	.string	"_SIZE_T_DEFINED_ "
.LASF1055:
	.string	"xTaskGetIdleRunTimeCounter ulTaskGetIdleRunTimeCounter"
.LASF1133:
	.string	"_MB_LEN_MAX 1"
.LASF553:
	.string	"UINT_LEAST8_MAX"
.LASF636:
	.string	"UINT8_C(c) __UINT8_C(c)"
.LASF115:
	.string	"__cpp_aggregate_bases 201603L"
.LASF344:
	.string	"__FLT128_MIN__ 3.36210314311209350626267781732175260e-4932F128"
.LASF819:
	.string	"pdFREERTOS_ERRNO_ENODEV 19"
.LASF420:
	.string	"__PRAGMA_REDEFINE_EXTNAME 1"
.LASF138:
	.string	"__cpp_if_consteval 202106L"
.LASF663:
	.string	"OTP_CTRL_ADDR _AC(0x10010000,UL)"
.LASF41:
	.string	"__GNUG__ 15"
.LASF849:
	.string	"PORTABLE_H "
.LASF1496:
	.string	"char"
.LASF1134:
	.string	"_REENT_CHECK_VERIFY 1"
.LASF786:
	.string	"tmrTIMER_TEST_TASK_STACK_SIZE 100"
.LASF1212:
	.string	"__GNUCLIKE_CTOR_SECTION_HANDLING 1"
.LASF612:
	.string	"PTRDIFF_MIN (-PTRDIFF_MAX - 1)"
.LASF1011:
	.string	"configUSE_QUEUE_SETS 0"
.LASF394:
	.string	"__BFLT16_EPSILON__ 7.81250000000000000000000000000000000e-3BF16"
.LASF1358:
	.string	"_RAND48_SEED_0 (0x330e)"
.LASF75:
	.string	"__UINT_FAST64_TYPE__ long long unsigned int"
.LASF885:
	.string	"portNUM_CONFIGURABLE_REGIONS 1"
.LASF1335:
	.string	"unsigned"
.LASF452:
	.string	"ARCH_RISCV 1"
.LASF703:
	.string	"IOF_UART1_TX (25u)"
.LASF1104:
	.string	"tskIDLE_PRIORITY ( ( UBaseType_t ) 0U )"
.LASF1117:
	.string	"xTaskNotifyFromISR(xTaskToNotify,ulValue,eAction,pxHigherPriorityTaskWoken) xTaskGenericNotifyFromISR( ( xTaskToNotify ), ( ulValue ), ( eAction ), NULL, ( pxHigherPriorityTaskWoken ) )"
.LASF1037:
	.string	"portTickType TickType_t"
.LASF914:
	.string	"traceEND() "
.LASF671:
	.string	"SPI2_CTRL_ADDR _AC(0x10034000,UL)"
.LASF1510:
	.string	"watchdog_get_heartbeat"
.LASF1420:
	.string	"_REENT_IS_NULL(_ptr) ((_ptr) == NULL)"
.LASF939:
	.string	"traceQUEUE_SEND(pxQueue) "
.LASF316:
	.string	"__FLT32_IS_IEC_60559__ 1"
.LASF32:
	.string	"__BIGGEST_ALIGNMENT__ 16"
.LASF385:
	.string	"__BFLT16_DIG__ 2"
.LASF787:
	.string	"ebRENDESVOUS_TEST_TASK_STACK_SIZE 100"
.LASF431:
	.string	"__riscv_fdiv 1"
.LASF288:
	.string	"__FLT16_MAX_10_EXP__ 4"
.LASF593:
	.string	"INT_FAST64_MIN"
.LASF1442:
	.string	"__SORD 0x2000"
.LASF647:
	.string	"_GCC_WRAP_STDINT_H "
.LASF1031:
	.string	"portTICK_TYPE_CLEAR_INTERRUPT_MASK_FROM_ISR(x) ( void ) x"
.LASF1369:
	.string	"_REENT_INIT_RESERVED_1 "
.LASF1238:
	.string	"__weak_symbol __attribute__((__weak__))"
.LASF1414:
	.string	"_REENT_STDOUT(_ptr) ((_ptr)->_stdout)"
.LASF779:
	.string	"INCLUDE_eTaskGetState 1"
.LASF1242:
	.string	"__used __attribute__((__used__))"
.LASF1271:
	.string	"__offsetof(type,field) offsetof(type, field)"
.LASF759:
	.string	"configUSE_MALLOC_FAILED_HOOK 1"
.LASF187:
	.string	"__UINT8_MAX__ 0xff"
.LASF1185:
	.string	"___int16_t_defined 1"
.LASF242:
	.string	"__FLT_EPSILON__ 1.19209289550781250000000000000000000e-7F"
.LASF740:
	.string	"configMTIMECMP_BASE_ADDRESS ( ( CLINT_CTRL_ADDR ) + 0x4000UL )"
.LASF741:
	.string	"configCLIC_TIMER_ENABLE_ADDRESS (0x02800407)"
.LASF1269:
	.string	"__exported __attribute__((__visibility__(\"default\")))"
.LASF1288:
	.string	"__SCCSID(s) struct __hack"
.LASF824:
	.string	"pdFREERTOS_ERRNO_ESPIPE 29"
.LASF261:
	.string	"__DBL_HAS_DENORM__ 1"
.LASF390:
	.string	"__BFLT16_DECIMAL_DIG__ 4"
.LASF1443:
	.string	"__SL64 0x8000"
.LASF101:
	.string	"__cpp_decltype_auto 201304L"
.LASF921:
	.string	"traceTASK_PRIORITY_DISINHERIT(pxTCBOfMutexHolder,uxOriginalPriority) "
.LASF854:
	.string	"portUBASE_TYPE uint32_t"
.LASF1013:
	.string	"portALLOCATE_SECURE_CONTEXT(ulSecureStackSize) "
.LASF930:
	.string	"traceQUEUE_CREATE_FAILED(ucQueueType) "
.LASF307:
	.string	"__FLT32_MAX__ 3.40282346638528859811704183484516925e+38F32"
.LASF1258:
	.string	"__noinline __attribute__ ((__noinline__))"
.LASF589:
	.string	"UINT_FAST32_MAX"
.LASF1248:
	.string	"__alloc_align(x) __attribute__((__alloc_align__(x)))"
.LASF1434:
	.string	"__SEOF 0x0020"
.LASF1337:
	.string	"_TIME_T_ __int_least64_t"
.LASF718:
	.string	"INT_PWM2_BASE 48"
.LASF194:
	.string	"__INT_LEAST16_MAX__ 0x7fff"
.LASF117:
	.string	"__cpp_template_auto 201606L"
.LASF391:
	.string	"__BFLT16_MAX__ 3.38953138925153547590470800371487867e+38BF16"
.LASF752:
	.string	"configUSE_STATS_FORMATTING_FUNCTIONS 1"
.LASF1082:
	.string	"listSET_LIST_ITEM_VALUE(pxListItem,xValue) ( ( pxListItem )->xItemValue = ( xValue ) )"
.LASF678:
	.string	"IOF_SPI1_SS1 (8u)"
.LASF1432:
	.string	"__SWR 0x0008"
.LASF550:
	.string	"INT_LEAST8_MAX __INT_LEAST8_MAX__"
.LASF658:
	.string	"OTP_MEM_ADDR _AC(0x00020000,UL)"
.LASF208:
	.string	"__UINT32_C(c) c ## UL"
.LASF457:
	.string	"__FILENAME__ \"log.cpp\""
.LASF696:
	.string	"IOF_SPI2_DQ2 (30u)"
.LASF905:
	.string	"configASSERT_DEFINED 1"
.LASF1183:
	.string	"__have_long32 1"
.LASF1370:
	.string	"_REENT_INIT_RESERVED_2 "
.LASF397:
	.string	"__BFLT16_HAS_INFINITY__ 1"
.LASF1200:
	.string	"__attribute_pure__ "
.LASF289:
	.string	"__FLT16_DECIMAL_DIG__ 5"
.LASF1336:
	.string	"_CLOCK_T_ unsigned long"
.LASF1048:
	.string	"xCoRoutineHandle CoRoutineHandle_t"
.LASF898:
	.string	"INCLUDE_xTaskGetHandle 0"
.LASF897:
	.string	"INCLUDE_xSemaphoreGetMutexHolder INCLUDE_xQueueGetMutexHolder"
.LASF1101:
	.string	"tskMPU_REGION_EXECUTE_NEVER ( 1UL << 2UL )"
.LASF959:
	.string	"traceTASK_RESUME(pxTaskToResume) "
.LASF435:
	.string	"__riscv_misaligned_slow 1"
.LASF982:
	.string	"traceQUEUE_REGISTRY_ADD(xQueue,pcQueueName) "
.LASF1214:
	.string	"__GNUCLIKE_BUILTIN_VARARGS 1"
.LASF389:
	.string	"__BFLT16_MAX_10_EXP__ 38"
.LASF411:
	.string	"__GCC_ATOMIC_SHORT_LOCK_FREE 1"
.LASF835:
	.string	"pdFREERTOS_ERRNO_EADDRINUSE 112"
.LASF1065:
	.string	"configRUN_FREERTOS_SECURE_ONLY 0"
.LASF1340:
	.string	"_NULL 0"
.LASF1462:
	.string	"_stdout_r(x) _REENT_STDOUT(x)"
.LASF98:
	.string	"__cpp_ref_qualifiers 200710L"
.LASF415:
	.string	"__GCC_ATOMIC_TEST_AND_SET_TRUEVAL 1"
.LASF1155:
	.string	"__MISC_VISIBLE 0"
.LASF445:
	.string	"__ELF__ 1"
.LASF1480:
	.string	"_VA_LIST_DEFINED "
.LASF1386:
	.string	"_REENT_RAND48_ADD(ptr) ((ptr)->_new._reent._r48._add)"
.LASF964:
	.string	"traceTIMER_COMMAND_SEND(xTimer,xMessageID,xMessageValueValue,xReturn) "
.LASF161:
	.string	"__WCHAR_MIN__ (-__WCHAR_MAX__ - 1)"
.LASF1054:
	.string	"vTaskGetTaskInfo vTaskGetInfo"
.LASF314:
	.string	"__FLT32_HAS_QUIET_NAN__ 1"
.LASF1103:
	.string	"tskMPU_REGION_DEVICE_MEMORY ( 1UL << 4UL )"
.LASF279:
	.string	"__LDBL_HAS_INFINITY__ 1"
.LASF648:
	.string	"FREERTOS_CONFIG_H "
.LASF131:
	.string	"__cpp_nontype_template_parameter_class 201806L"
.LASF536:
	.string	"UINT16_MAX __UINT16_MAX__"
.LASF446:
	.string	"CONF_USER_ENABLE_PSRAM 1"
.LASF356:
	.string	"__FLT32X_MAX_10_EXP__ 308"
.LASF993:
	.string	"traceSTREAM_BUFFER_DELETE(xStreamBuffer) "
.LASF1326:
	.string	"__GNUC_VA_LIST "
.LASF711:
	.string	"INT_UART1_BASE 4"
.LASF127:
	.string	"__cpp_consteval 202211L"
.LASF1016:
	.string	"configINCLUDE_APPLICATION_DEFINED_PRIVILEGED_FUNCTIONS 0"
.LASF800:
	.string	"errCOULD_NOT_ALLOCATE_REQUIRED_MEMORY ( -1 )"
.LASF1113:
	.string	"taskSCHEDULER_NOT_STARTED ( ( BaseType_t ) 1 )"
.LASF1503:
	.string	"task"
.LASF700:
	.string	"IOF_UART0_TX (17u)"
.LASF462:
	.string	"__COMPONENT_FILE_NAME__ \"suas_app_freertos_watchdoglogpp\""
.LASF608:
	.string	"UINTMAX_MAX __UINTMAX_MAX__"
.LASF1208:
	.string	"__GNUCLIKE_ASM 3"
.LASF86:
	.string	"__cpp_unicode_literals 200710L"
.LASF1019:
	.string	"mtCOVERAGE_TEST_DELAY() "
.LASF203:
	.string	"__UINT_LEAST8_MAX__ 0xff"
.LASF506:
	.string	"_BSD_WCHAR_T_ "
.LASF1289:
	.string	"__COPYRIGHT(s) struct __hack"
.LASF1353:
	.string	"__lock_release(lock) ((void) 0)"
.LASF532:
	.string	"INT16_MAX __INT16_MAX__"
.LASF380:
	.string	"__FLT64X_HAS_INFINITY__ 1"
.LASF247:
	.string	"__FP_FAST_FMAF 1"
.LASF940:
	.string	"traceQUEUE_SEND_FAILED(pxQueue) "
.LASF660:
	.string	"PLIC_CTRL_ADDR _AC(0x0C000000,UL)"
.LASF366:
	.string	"__FLT32X_IS_IEC_60559__ 1"
.LASF1254:
	.string	"__min_size(x) (x)"
.LASF1193:
	.string	"__PMT(args) args"
.LASF1199:
	.string	"__attribute_malloc__ "
.LASF1137:
	.string	"_WANT_IO_LONG_DOUBLE 1"
.LASF1139:
	.string	"_WANT_REGISTER_FINI 1"
.LASF1171:
	.string	"_LONG_DOUBLE long double"
.LASF541:
	.string	"UINT32_MAX"
.LASF936:
	.string	"traceTAKE_MUTEX_RECURSIVE_FAILED(pxMutex) "
.LASF1379:
	.string	"_REENT_CHECK_EMERGENCY(ptr) "
.LASF196:
	.string	"__INT_LEAST16_WIDTH__ 16"
.LASF742:
	.string	"configUSE_PREEMPTION 1"
.LASF230:
	.string	"__DEC_EVAL_METHOD__ 2"
.LASF774:
	.string	"INCLUDE_vTaskDelete 1"
.LASF687:
	.string	"IOF_SPI1_DQ3 (7u)"
.LASF1114:
	.string	"taskSCHEDULER_RUNNING ( ( BaseType_t ) 2 )"
.LASF44:
	.string	"__WCHAR_TYPE__ int"
.LASF792:
	.string	"PROJDEFS_H "
.LASF695:
	.string	"IOF_SPI2_DQ1 (28u)"
.LASF450:
	.string	"BL_SDK_RF_VER \"f76e39a\""
.LASF980:
	.string	"tracePEND_FUNC_CALL(xFunctionToPend,pvParameter1,ulParameter2,ret) "
.LASF1307:
	.string	"__asserts_exclusive(...) __lock_annotate(assert_exclusive_lock(__VA_ARGS__))"
.LASF665:
	.string	"UART0_CTRL_ADDR _AC(0x10013000,UL)"
.LASF1412:
	.string	"_REENT_SIG_FUNC(_ptr) ((_ptr)->_sig_func)"
.LASF1295:
	.string	"_Null_unspecified "
.LASF1190:
	.string	"___int_least32_t_defined 1"
.LASF1237:
	.string	"__inline inline"
.LASF519:
	.string	"__need_NULL"
.LASF1444:
	.string	"__SNLK 0x0001"
.LASF1076:
	.string	"listSET_LIST_INTEGRITY_CHECK_1_VALUE(pxList) "
.LASF809:
	.string	"pdFREERTOS_ERRNO_ENXIO 6"
.LASF401:
	.string	"__USER_LABEL_PREFIX__ "
.LASF190:
	.string	"__UINT64_MAX__ 0xffffffffffffffffULL"
.LASF575:
	.string	"INT_FAST8_MIN"
.LASF574:
	.string	"INT_FAST8_MAX __INT_FAST8_MAX__"
.LASF820:
	.string	"pdFREERTOS_ERRNO_ENOTDIR 20"
.LASF189:
	.string	"__UINT32_MAX__ 0xffffffffUL"
.LASF725:
	.string	"PLIC_REG(offset) _REG32(PLIC_CTRL_ADDR, offset)"
.LASF1395:
	.string	"_REENT_MBTOWC_STATE(ptr) ((ptr)->_new._reent._mbtowc_state)"
.LASF896:
	.string	"INCLUDE_xQueueGetMutexHolder 0"
.LASF634:
	.string	"INT64_C(c) __INT64_C(c)"
.LASF1305:
	.string	"__trylocks_shared(...) __lock_annotate(shared_trylock_function(__VA_ARGS__))"
.LASF191:
	.string	"__INT_LEAST8_MAX__ 0x7f"
.LASF1122:
	.string	"__NEWLIB_H__ 1"
.LASF838:
	.string	"pdFREERTOS_ERRNO_EALREADY 120"
.LASF16:
	.string	"__ATOMIC_ACQUIRE 2"
.LASF1465:
	.string	"__sgetc_raw_r(__ptr,__f) (--(__f)->_r < 0 ? __srget_r(__ptr, __f) : (int)(*(__f)->_p++))"
.LASF684:
	.string	"IOF_SPI1_DQ0 (3u)"
.LASF852:
	.string	"portSTACK_TYPE uint32_t"
.LASF1021:
	.string	"configAPPLICATION_ALLOCATED_HEAP 0"
.LASF810:
	.string	"pdFREERTOS_ERRNO_EBADF 9"
.LASF1081:
	.string	"listGET_LIST_ITEM_OWNER(pxListItem) ( ( pxListItem )->pvOwner )"
.LASF142:
	.string	"__cpp_named_character_escapes 202207L"
.LASF355:
	.string	"__FLT32X_MAX_EXP__ 1024"
.LASF706:
	.string	"IOF1_PWM2_MASK _AC(0x00003C00, UL)"
.LASF869:
	.string	"portSET_INTERRUPT_MASK_FROM_ISR() 0"
.LASF257:
	.string	"__DBL_NORM_MAX__ double(1.79769313486231570814527423731704357e+308L)"
.LASF1452:
	.string	"FILENAME_MAX 1024"
.LASF207:
	.string	"__UINT_LEAST32_MAX__ 0xffffffffUL"
.LASF120:
	.string	"__cpp_guaranteed_copy_elision 201606L"
.LASF576:
	.string	"INT_FAST8_MIN (-INT_FAST8_MAX - 1)"
.LASF1245:
	.string	"__section(x) __attribute__((__section__(x)))"
.LASF1077:
	.string	"listSET_LIST_INTEGRITY_CHECK_2_VALUE(pxList) "
.LASF202:
	.string	"__INT_LEAST64_WIDTH__ 64"
.LASF245:
	.string	"__FLT_HAS_INFINITY__ 1"
.LASF773:
	.string	"INCLUDE_uxTaskPriorityGet 1"
.LASF1177:
	.string	"__need_size_t "
.LASF1425:
	.string	"_SSIZE_T_DECLARED "
.LASF938:
	.string	"traceCREATE_COUNTING_SEMAPHORE_FAILED() "
.LASF183:
	.string	"__INT8_MAX__ 0x7f"
.LASF1017:
	.string	"portASSERT_IF_INTERRUPT_PRIORITY_INVALID() "
.LASF595:
	.string	"UINT_FAST64_MAX"
.LASF69:
	.string	"__INT_FAST16_TYPE__ int"
.LASF419:
	.string	"__GCC_HAVE_DWARF2_CFI_ASM 1"
.LASF1184:
	.string	"___int8_t_defined 1"
.LASF1492:
	.string	"long unsigned int"
.LASF743:
	.string	"configUSE_IDLE_HOOK 1"
.LASF877:
	.string	"portGET_HIGHEST_PRIORITY(uxTopPriority,uxReadyPriorities) uxTopPriority = ( 31UL - __builtin_clz( uxReadyPriorities ) )"
.LASF167:
	.string	"__SHRT_WIDTH__ 16"
.LASF227:
	.string	"__GCC_IEC_559_COMPLEX 0"
.LASF1383:
	.string	"_REENT_RAND_NEXT(ptr) ((ptr)->_new._reent._rand_next)"
.LASF1260:
	.string	"__nonnull_all __attribute__((__nonnull__))"
.LASF788:
	.string	"ebEVENT_GROUP_SET_BITS_TEST_TASK_STACK_SIZE 115"
.LASF57:
	.string	"__UINT16_TYPE__ short unsigned int"
.LASF398:
	.string	"__BFLT16_HAS_QUIET_NAN__ 1"
.LASF272:
	.string	"__LDBL_DECIMAL_DIG__ 36"
.LASF215:
	.string	"__INT_FAST32_MAX__ 0x7fffffff"
.LASF370:
	.string	"__FLT64X_MIN_10_EXP__ (-4931)"
.LASF1201:
	.string	"__attribute_format_strfmon__(a,b) "
.LASF1069:
	.string	"configLIST_VOLATILE "
.LASF804:
	.string	"pdINTEGRITY_CHECK_VALUE 0x5a5a5a5aUL"
.LASF587:
	.string	"INT_FAST32_MIN"
.LASF484:
	.string	"_T_SIZE_ "
.LASF229:
	.string	"__FLT_EVAL_METHOD_TS_18661_3__ 0"
.LASF1045:
	.string	"xTaskParameters TaskParameters_t"
.LASF276:
	.string	"__LDBL_EPSILON__ 1.92592994438723585305597794258492732e-34L"
.LASF1235:
	.string	"__signed signed"
.LASF1173:
	.string	"_ELIDABLE_INLINE static __inline__"
.LASF583:
	.string	"UINT_FAST16_MAX"
.LASF1297:
	.string	"__NULLABILITY_PRAGMA_POP "
.LASF520:
	.string	"offsetof"
.LASF72:
	.string	"__UINT_FAST8_TYPE__ unsigned int"
.LASF848:
	.string	"pdBIG_ENDIAN pdFREERTOS_BIG_ENDIAN"
.LASF650:
	.string	"MCAUSE_INT 0x80000000"
.LASF756:
	.string	"configQUEUE_REGISTRY_SIZE 8"
.LASF1311:
	.string	"__requires_unlocked(...) __lock_annotate(locks_excluded(__VA_ARGS__))"
.LASF185:
	.string	"__INT32_MAX__ 0x7fffffffL"
.LASF1167:
	.string	"_USE_GDTOA "
.LASF1339:
	.string	"_TIMER_T_ unsigned long"
.LASF1500:
	.string	"pcTaskGetName"
.LASF607:
	.string	"UINTMAX_MAX"
.LASF1168:
	.string	"_BEGIN_STD_C extern \"C\" {"
.LASF975:
	.string	"traceEVENT_GROUP_CLEAR_BITS(xEventGroup,uxBitsToClear) "
.LASF200:
	.string	"__INT_LEAST64_MAX__ 0x7fffffffffffffffLL"
.LASF1268:
	.string	"__null_sentinel __attribute__((__sentinel__))"
.LASF7:
	.string	"__STDC_EMBED_NOT_FOUND__ 0"
.LASF1178:
	.string	"__need_NULL "
.LASF1008:
	.string	"configPRE_SUPPRESS_TICKS_AND_SLEEP_PROCESSING(x) "
.LASF1323:
	.string	"__is_aligned(x,y) __builtin_is_aligned(x, y)"
.LASF833:
	.string	"pdFREERTOS_ERRNO_ENOBUFS 105"
.LASF298:
	.string	"__FLT16_IS_IEC_60559__ 1"
.LASF300:
	.string	"__FLT32_MANT_DIG__ 24"
.LASF784:
	.string	"notifyNOTIFIED_TASK_STACK_SIZE 120"
.LASF549:
	.string	"INT_LEAST8_MAX"
.LASF1392:
	.string	"_REENT_TM(ptr) (&(ptr)->_new._reent._localtime_buf)"
.LASF521:
	.string	"offsetof(TYPE,MEMBER) __builtin_offsetof (TYPE, MEMBER)"
.LASF67:
	.string	"__UINT_LEAST64_TYPE__ long long unsigned int"
.LASF622:
	.string	"WCHAR_MIN __WCHAR_MIN__"
.LASF526:
	.string	"INT8_MAX __INT8_MAX__"
.LASF367:
	.string	"__FLT64X_MANT_DIG__ 113"
.LASF256:
	.string	"__DBL_MAX__ double(1.79769313486231570814527423731704357e+308L)"
.LASF408:
	.string	"__GCC_ATOMIC_CHAR16_T_LOCK_FREE 1"
.LASF770:
	.string	"configTIMER_TASK_STACK_DEPTH ( 400 )"
.LASF644:
	.string	"INTMAX_C(c) __INTMAX_C(c)"
.LASF679:
	.string	"IOF_SPI1_SS2 (9u)"
.LASF1347:
	.string	"__lock_close(lock) ((void) 0)"
.LASF253:
	.string	"__DBL_MAX_EXP__ 1024"
.LASF17:
	.string	"__ATOMIC_RELEASE 3"
.LASF723:
	.string	"GPIO_REG(offset) _REG32(GPIO_CTRL_ADDR, offset)"
.LASF1125:
	.string	"__NEWLIB__ 4"
.LASF363:
	.string	"__FLT32X_HAS_DENORM__ 1"
.LASF721:
	.string	"AON_REG(offset) _REG32(AON_CTRL_ADDR, offset)"
.LASF1249:
	.string	"_Alignas(x) alignas(x)"
.LASF1073:
	.string	"listSECOND_LIST_INTEGRITY_CHECK_VALUE "
.LASF451:
	.string	"BL_CHIP_NAME \"BL602\""
.LASF70:
	.string	"__INT_FAST32_TYPE__ int"
.LASF383:
	.string	"__STDCPP_BFLOAT16_T__ 1"
.LASF1426:
	.string	"_NEWLIB_STDIO_H "
.LASF1051:
	.string	"pcTaskGetTaskName pcTaskGetName"
.LASF136:
	.string	"__cpp_using_enum 201907L"
.LASF20:
	.string	"__OPTIMIZE_SIZE__ 1"
.LASF21:
	.string	"__OPTIMIZE__ 1"
.LASF1405:
	.string	"_REENT_CLEANUP(_ptr) ((_ptr)->__cleanup)"
.LASF797:
	.string	"pdFAIL ( pdFALSE )"
.LASF1225:
	.string	"__CC_SUPPORTS___FUNC__ 1"
.LASF1100:
	.string	"tskMPU_REGION_READ_WRITE ( 1UL << 1UL )"
.LASF1159:
	.string	"__SSP_FORTIFY_LEVEL 0"
.LASF1209:
	.string	"__GNUCLIKE_MATH_BUILTIN_CONSTANTS "
.LASF1466:
	.string	"__sgetc_r(__ptr,__p) __sgetc_raw_r(__ptr, __p)"
.LASF327:
	.string	"__FLT64_MIN__ 2.22507385850720138309023271733240406e-308F64"
.LASF601:
	.string	"UINTPTR_MAX"
.LASF470:
	.string	"_T_PTRDIFF_ "
.LASF523:
	.string	"_GXX_NULLPTR_T "
.LASF710:
	.string	"INT_UART0_BASE 3"
.LASF440:
	.string	"__riscv_c 2000000"
.LASF186:
	.string	"__INT64_MAX__ 0x7fffffffffffffffLL"
.LASF286:
	.string	"__FLT16_MIN_10_EXP__ (-4)"
.LASF1514:
	.string	"args"
.LASF143:
	.string	"__cpp_static_call_operator 202207L"
.LASF354:
	.string	"__FLT32X_MIN_10_EXP__ (-307)"
.LASF1127:
	.string	"__NEWLIB_PATCHLEVEL__ 0"
.LASF407:
	.string	"__GCC_ATOMIC_CHAR8_T_LOCK_FREE 1"
.LASF1381:
	.string	"_REENT_CHECK_SIGNAL_BUF(ptr) "
.LASF815:
	.string	"pdFREERTOS_ERRNO_EFAULT 14"
.LASF1505:
	.string	"ticks"
.LASF825:
	.string	"pdFREERTOS_ERRNO_EROFS 30"
.LASF100:
	.string	"__cpp_return_type_deduction 201304L"
.LASF1357:
	.string	"_REENT_SMALL_CHECK_INIT(ptr) "
.LASF755:
	.string	"configUSE_MUTEXES 1"
.LASF10:
	.string	"__GNUC__ 15"
.LASF1039:
	.string	"xQueueHandle QueueHandle_t"
.LASF619:
	.string	"WCHAR_MAX"
.LASF771:
	.string	"uartPRIMARY_PRIORITY ( configMAX_PRIORITIES - 3 )"
.LASF169:
	.string	"__LONG_WIDTH__ 32"
.LASF1140:
	.string	"_WANT_USE_GDTOA 1"
.LASF502:
	.string	"_T_WCHAR_ "
.LASF538:
	.string	"INT32_MAX __INT32_MAX__"
.LASF1259:
	.string	"__nonnull(x) __attribute__((__nonnull__ x))"
.LASF1282:
	.string	"__warn_references(sym,msg) __asm__(\".section .gnu.warning.\" #sym); __asm__(\".asciz \\\"\" msg \"\\\"\"); __asm__(\".previous\")"
.LASF1325:
	.string	"__need___va_list"
.LASF1029:
	.string	"portTICK_TYPE_EXIT_CRITICAL() "
.LASF677:
	.string	"IOF_SPI1_SS0 (2u)"
.LASF655:
	.string	"_BITULL(x) (_AC(1,ULL) << (x))"
.LASF1063:
	.string	"configENABLE_FPU 1"
.LASF413:
	.string	"__GCC_ATOMIC_LONG_LOCK_FREE 1"
.LASF436:
	.string	"__riscv_arch_test 1"
.LASF906:
	.string	"configPRECONDITION(X) configASSERT(X)"
.LASF498:
	.string	"__need_size_t"
.LASF1334:
	.string	"unsigned signed"
.LASF1314:
	.string	"__nosanitizememory "
.LASF487:
	.string	"_SIZE_T_ "
.LASF1138:
	.string	"_WANT_IO_LONG_LONG 1"
.LASF231:
	.string	"__FLT_RADIX__ 2"
.LASF1096:
	.string	"tskKERNEL_VERSION_MAJOR 10"
.LASF313:
	.string	"__FLT32_HAS_INFINITY__ 1"
.LASF1385:
	.string	"_REENT_RAND48_MULT(ptr) ((ptr)->_new._reent._r48._mult)"
.LASF119:
	.string	"__cpp_variadic_using 201611L"
.LASF891:
	.string	"FREERTOS_SYSTEM_CALL "
.LASF531:
	.string	"INT16_MAX"
.LASF1498:
	.string	"va_list"
.LASF430:
	.string	"__riscv_flen 32"
.LASF280:
	.string	"__LDBL_HAS_QUIET_NAN__ 1"
.LASF1410:
	.string	"_REENT_INC(_ptr) ((_ptr)->_inc)"
.LASF1464:
	.string	"__VALIST __gnuc_va_list"
.LASF958:
	.string	"traceTASK_SUSPEND(pxTaskToSuspend) "
.LASF170:
	.string	"__LONG_LONG_WIDTH__ 64"
.LASF469:
	.string	"_PTRDIFF_T "
.LASF683:
	.string	"IOF_SPI1_SCK (5u)"
.LASF437:
	.string	"__riscv_i 2001000"
.LASF1393:
	.string	"_REENT_STRTOK_LAST(ptr) ((ptr)->_new._reent._strtok_last)"
.LASF781:
	.string	"INCLUDE_uxTaskGetStackHighWaterMark 1"
.LASF1378:
	.string	"_REENT_CHECK_ASCTIME_BUF(ptr) "
.LASF434:
	.string	"__riscv_cmodel_medlow 1"
.LASF224:
	.string	"__INTPTR_WIDTH__ 32"
.LASF414:
	.string	"__GCC_ATOMIC_LLONG_LOCK_FREE 1"
.LASF624:
	.string	"WINT_MAX __WINT_MAX__"
.LASF863:
	.string	"portTICK_PERIOD_MS ( ( TickType_t ) 1000 / configTICK_RATE_HZ )"
.LASF651:
	.string	"MCAUSE_CAUSE 0x7FFFFFFF"
.LASF690:
	.string	"IOF_SPI2_SS0 (26u)"
.LASF322:
	.string	"__FLT64_MAX_EXP__ 1024"
.LASF943:
	.string	"traceQUEUE_PEEK_FAILED(pxQueue) "
.LASF535:
	.string	"UINT16_MAX"
.LASF1142:
	.string	"__SYS_CONFIG_H__ "
.LASF1205:
	.string	"__ptrvalue "
.LASF1372:
	.string	"_REENT_INIT_RESERVED_8 "
.LASF1083:
	.string	"listGET_LIST_ITEM_VALUE(pxListItem) ( ( pxListItem )->xItemValue )"
.LASF273:
	.string	"__LDBL_MAX__ 1.18973149535723176508575932662800702e+4932L"
.LASF1145:
	.string	"__OBSOLETE_MATH_DEFAULT 1"
.LASF1272:
	.string	"__rangeof(type,start,end) (__offsetof(type, end) - __offsetof(type, start))"
.LASF172:
	.string	"__WINT_WIDTH__ 32"
.LASF55:
	.string	"__INT64_TYPE__ long long int"
.LASF1075:
	.string	"listSET_SECOND_LIST_ITEM_INTEGRITY_CHECK_VALUE(pxItem) "
.LASF31:
	.string	"__CHAR_BIT__ 8"
.LASF421:
	.string	"__SIZEOF_WCHAR_T__ 4"
.LASF839:
	.string	"pdFREERTOS_ERRNO_EADDRNOTAVAIL 125"
.LASF727:
	.string	"PWM0_REG(offset) _REG32(PWM0_CTRL_ADDR, offset)"
.LASF840:
	.string	"pdFREERTOS_ERRNO_EISCONN 127"
.LASF1241:
	.string	"__unused __attribute__((__unused__))"
.LASF949:
	.string	"traceQUEUE_RECEIVE_FROM_ISR_FAILED(pxQueue) "
.LASF1487:
	.string	"signed char"
.LASF1399:
	.string	"_REENT_MBSRTOWCS_STATE(ptr) ((ptr)->_new._reent._mbsrtowcs_state)"
.LASF1481:
	.string	"_VA_LIST_T_H "
.LASF1359:
	.string	"_RAND48_SEED_1 (0xabcd)"
.LASF1424:
	.string	"_OFF_T_DECLARED "
.LASF1351:
	.string	"__lock_try_acquire(lock) ((void) 0)"
.LASF1276:
	.string	"__format_arg(fmtarg) __attribute__((__format_arg__ (fmtarg)))"
.LASF1099:
	.string	"tskMPU_REGION_READ_ONLY ( 1UL << 0UL )"
.LASF108:
	.string	"__cpp_enumerator_attributes 201411L"
.LASF543:
	.string	"INT64_MAX"
.LASF287:
	.string	"__FLT16_MAX_EXP__ 16"
.LASF1195:
	.string	"__THROW "
.LASF777:
	.string	"INCLUDE_vTaskDelayUntil 1"
.LASF1398:
	.string	"_REENT_MBRTOWC_STATE(ptr) ((ptr)->_new._reent._mbrtowc_state)"
.LASF828:
	.string	"pdFREERTOS_ERRNO_EFTYPE 79"
.LASF1407:
	.string	"_REENT_CVTLEN(_ptr) ((_ptr)->_cvtlen)"
.LASF594:
	.string	"INT_FAST64_MIN (-INT_FAST64_MAX - 1)"
.LASF1402:
	.string	"_REENT_L64A_BUF(ptr) ((ptr)->_new._reent._l64a_buf)"
.LASF1062:
	.string	"configENABLE_MPU 0"
.LASF80:
	.string	"__GXX_EXPERIMENTAL_CXX0X__ 1"
.LASF126:
	.string	"__cpp_conditional_explicit 201806L"
.LASF282:
	.string	"__STDCPP_FLOAT16_T__ 1"
.LASF36:
	.string	"__BYTE_ORDER__ __ORDER_LITTLE_ENDIAN__"
.LASF867:
	.string	"portYIELD_FROM_ISR(x) portEND_SWITCHING_ISR( x )"
.LASF1409:
	.string	"_REENT_ERRNO(_ptr) ((_ptr)->_errno)"
.LASF600:
	.string	"INTPTR_MIN (-INTPTR_MAX - 1)"
.LASF596:
	.string	"UINT_FAST64_MAX __UINT_FAST64_MAX__"
.LASF139:
	.string	"__cpp_auto_cast 202110L"
.LASF817:
	.string	"pdFREERTOS_ERRNO_EEXIST 17"
.LASF860:
	.string	"portSHORT short"
.LASF1121:
	.string	"_ANSIDECL_H_ "
.LASF862:
	.string	"portSTACK_GROWTH ( -1 )"
.LASF468:
	.string	"_ANSI_STDDEF_H "
.LASF1449:
	.string	"EOF (-1)"
.LASF1136:
	.string	"_WANT_IO_C99_FORMATS 1"
.LASF1040:
	.string	"xSemaphoreHandle SemaphoreHandle_t"
.LASF45:
	.string	"__WINT_TYPE__ unsigned int"
.LASF1067:
	.string	"INC_TASK_H "
.LASF534:
	.string	"INT16_MIN (-INT16_MAX - 1)"
.LASF1221:
	.string	"__GNUCLIKE_BUILTIN_MEMCPY 1"
.LASF1433:
	.string	"__SRW 0x0010"
.LASF761:
	.string	"configUSE_COUNTING_SEMAPHORES 1"
.LASF846:
	.string	"pdFREERTOS_BIG_ENDIAN 1"
.LASF876:
	.string	"portRESET_READY_PRIORITY(uxPriority,uxReadyPriorities) ( uxReadyPriorities ) &= ~( 1UL << ( uxPriority ) )"
.LASF686:
	.string	"IOF_SPI1_DQ2 (6u)"
.LASF1330:
	.string	"_WINT_T "
.LASF1421:
	.string	"_GLOBAL_REENT (&_impure_data)"
.LASF1041:
	.string	"xQueueSetHandle QueueSetHandle_t"
.LASF1318:
	.string	"__builtin_is_aligned(x,align) (((__uintptr_t)x & ((align) - 1)) == 0)"
.LASF8:
	.string	"__STDC_EMBED_FOUND__ 1"
.LASF1484:
	.string	"unsigned int"
.LASF1418:
	.string	"__ATTRIBUTE_IMPURE_DATA__ "
.LASF813:
	.string	"pdFREERTOS_ERRNO_ENOMEM 12"
.LASF234:
	.string	"__FLT_MIN_EXP__ (-125)"
.LASF332:
	.string	"__FLT64_HAS_QUIET_NAN__ 1"
.LASF826:
	.string	"pdFREERTOS_ERRNO_EUNATCH 42"
.LASF111:
	.string	"__cpp_range_based_for 202211L"
.LASF1089:
	.string	"listCURRENT_LIST_LENGTH(pxList) ( ( pxList )->uxNumberOfItems )"
.LASF145:
	.string	"__cpp_explicit_this_parameter 202110L"
.LASF1263:
	.string	"__returns_twice __attribute__((__returns_twice__))"
.LASF375:
	.string	"__FLT64X_NORM_MAX__ 1.18973149535723176508575932662800702e+4932F64x"
.LASF1110:
	.string	"taskDISABLE_INTERRUPTS() portDISABLE_INTERRUPTS()"
.LASF918:
	.string	"traceLOW_POWER_IDLE_END() "
.LASF358:
	.string	"__FLT32X_MAX__ 1.79769313486231570814527423731704357e+308F32x"
.LASF330:
	.string	"__FLT64_HAS_DENORM__ 1"
.LASF233:
	.string	"__FLT_DIG__ 6"
.LASF697:
	.string	"IOF_SPI2_DQ3 (31u)"
.LASF1129:
	.string	"_FVWRITE_IN_STREAMIO 1"
.LASF513:
	.string	"_WCHAR_T_DECLARED "
.LASF121:
	.string	"__cpp_nontype_template_parameter_auto 201606L"
.LASF454:
	.string	"configUSE_TICKLESS_IDLE 0"
.LASF1327:
	.string	"_SYS_REENT_H_ "
.LASF228:
	.string	"__FLT_EVAL_METHOD__ 0"
.LASF514:
	.string	"__DEFINED_wchar_t "
.LASF239:
	.string	"__FLT_MAX__ 3.40282346638528859811704183484516925e+38F"
.LASF155:
	.string	"__SCHAR_MAX__ 0x7f"
.LASF563:
	.string	"INT_LEAST32_MIN"
.LASF212:
	.string	"__INT_FAST8_WIDTH__ 32"
.LASF919:
	.string	"traceTASK_SWITCHED_OUT() "
.LASF345:
	.string	"__FLT128_EPSILON__ 1.92592994438723585305597794258492732e-34F128"
.LASF704:
	.string	"IOF1_PWM0_MASK _AC(0x0000000F, UL)"
.LASF1430:
	.string	"__SNBF 0x0002"
.LASF471:
	.string	"_T_PTRDIFF "
.LASF795:
	.string	"pdTRUE ( ( BaseType_t ) 1 )"
.LASF629:
	.string	"INT16_C"
.LASF340:
	.string	"__FLT128_MAX_10_EXP__ 4932"
.LASF226:
	.string	"__GCC_IEC_559 0"
.LASF334:
	.string	"__STDCPP_FLOAT128_T__ 1"
.LASF556:
	.string	"INT_LEAST16_MAX __INT_LEAST16_MAX__"
.LASF1261:
	.string	"__fastcall __attribute__((__fastcall__))"
.LASF423:
	.string	"__SIZEOF_PTRDIFF_T__ 4"
.LASF92:
	.string	"__cpp_rvalue_references 200610L"
.LASF477:
	.string	"_PTRDIFF_T_DECLARED "
.LASF908:
	.string	"portSOFTWARE_BARRIER() "
.LASF133:
	.string	"__cpp_constexpr_dynamic_alloc 201907L"
.LASF1188:
	.string	"___int_least8_t_defined 1"
.LASF1495:
	.string	"TaskHandle_t"
.LASF37:
	.string	"__FLOAT_WORD_ORDER__ __ORDER_LITTLE_ENDIAN__"
.LASF1153:
	.string	"__ISO_C_VISIBLE 2020"
.LASF512:
	.string	"_GCC_WCHAR_T "
.LASF1513:
	.string	"_Z9log_eventPKcz"
.LASF1306:
	.string	"__unlocks(...) __lock_annotate(unlock_function(__VA_ARGS__))"
.LASF1164:
	.string	"__EXPORT "
.LASF51:
	.string	"__SIG_ATOMIC_TYPE__ int"
.LASF1107:
	.string	"taskENTER_CRITICAL_FROM_ISR() portSET_INTERRUPT_MASK_FROM_ISR()"
.LASF137:
	.string	"__cpp_size_t_suffix 202011L"
.LASF548:
	.string	"UINT64_MAX __UINT64_MAX__"
.LASF527:
	.string	"INT8_MIN"
.LASF1166:
	.string	"_READ_WRITE_BUFSIZE_TYPE int"
.LASF1278:
	.string	"__strftimelike(fmtarg,firstvararg) __attribute__((__format__ (__strftime__, fmtarg, firstvararg)))"
.LASF954:
	.string	"traceTASK_DELETE(pxTaskToDelete) "
.LASF1290:
	.string	"__DECONST(type,var) ((type)(__uintptr_t)(const void *)(var))"
.LASF1135:
	.string	"_UNBUF_STREAM_OPT 1"
.LASF1115:
	.string	"xTaskNotify(xTaskToNotify,ulValue,eAction) xTaskGenericNotify( ( xTaskToNotify ), ( ulValue ), ( eAction ), NULL )"
.LASF1360:
	.string	"_RAND48_SEED_2 (0x1234)"
.LASF1355:
	.string	"_ATEXIT_SIZE 32"
.LASF1413:
	.string	"_REENT_STDIN(_ptr) ((_ptr)->_stdin)"
.LASF1499:
	.string	"vprintf"
.LASF1313:
	.string	"__nosanitizeaddress "
.LASF1143:
	.string	"__IEEE_LITTLE_ENDIAN "
.LASF102:
	.string	"__cpp_aggregate_nsdmi 201304L"
.LASF353:
	.string	"__FLT32X_MIN_EXP__ (-1021)"
.LASF917:
	.string	"traceLOW_POWER_IDLE_BEGIN() "
.LASF558:
	.string	"INT_LEAST16_MIN (-INT_LEAST16_MAX - 1)"
.LASF1228:
	.string	"__CC_SUPPORTS_DYNAMIC_ARRAY_INIT 1"
.LASF406:
	.string	"__GCC_ATOMIC_CHAR_LOCK_FREE 1"
.LASF1451:
	.string	"FOPEN_MAX 20"
.LASF1003:
	.string	"portCONFIGURE_TIMER_FOR_RUN_TIME_STATS() "
.LASF762:
	.string	"configGENERATE_RUN_TIME_STATS 0"
.LASF1123:
	.string	"_NEWLIB_VERSION_H__ 1"
.LASF299:
	.string	"__STDCPP_FLOAT32_T__ 1"
.LASF952:
	.string	"traceTASK_CREATE(pxNewTCB) "
.LASF1255:
	.string	"__malloc_like __attribute__((__malloc__))"
.LASF766:
	.string	"configMAX_CO_ROUTINE_PRIORITIES ( 2 )"
.LASF1118:
	.string	"xTaskNotifyAndQueryFromISR(xTaskToNotify,ulValue,eAction,pulPreviousNotificationValue,pxHigherPriorityTaskWoken) xTaskGenericNotifyFromISR( ( xTaskToNotify ), ( ulValue ), ( eAction ), ( pulPreviousNotificationValue ), ( pxHigherPriorityTaskWoken ) )"
.LASF910:
	.string	"portPRE_TASK_DELETE_HOOK(pvTaskToDelete,pxYieldPending) "
.LASF1232:
	.string	"__STRING(x) #x"
.LASF1181:
	.string	"__EXP(x) __ ##x ##__"
.LASF1490:
	.string	"unsigned char"
.LASF948:
	.string	"traceQUEUE_RECEIVE_FROM_ISR(pxQueue) "
.LASF1098:
	.string	"tskKERNEL_VERSION_BUILD 0"
.LASF922:
	.string	"traceBLOCKING_ON_QUEUE_RECEIVE(pxQueue) "
.LASF1176:
	.string	"_FSTDIO "
.LASF883:
	.string	"portMEMORY_BARRIER() __asm volatile( \"\" ::: \"memory\" )"
.LASF960:
	.string	"traceTASK_RESUME_FROM_ISR(pxTaskToResume) "
.LASF303:
	.string	"__FLT32_MIN_10_EXP__ (-37)"
.LASF1163:
	.string	"__RAND_MAX 0x7fffffff"
.LASF712:
	.string	"INT_SPI0_BASE 5"
.LASF865:
	.string	"portYIELD() __asm volatile( \"ecall\" );"
.LASF501:
	.string	"_WCHAR_T "
.LASF1233:
	.string	"__XSTRING(x) __STRING(x)"
.LASF928:
	.string	"tracePOST_MOVED_TASK_TO_READY_STATE(pxTCB) "
.LASF441:
	.string	"__riscv_zicsr 2000000"
.LASF243:
	.string	"__FLT_DENORM_MIN__ 1.40129846432481707092372958328991613e-45F"
.LASF984:
	.string	"traceTASK_NOTIFY_TAKE() "
.LASF1454:
	.string	"SEEK_SET 0"
.LASF1180:
	.string	"_MACHINE__DEFAULT_TYPES_H "
.LASF1020:
	.string	"portASSERT_IF_IN_ISR() "
.LASF628:
	.string	"INT8_C(c) __INT8_C(c)"
.LASF476:
	.string	"_GCC_PTRDIFF_T "
.LASF265:
	.string	"__LDBL_MANT_DIG__ 113"
.LASF772:
	.string	"INCLUDE_vTaskPrioritySet 1"
.LASF1303:
	.string	"__locks_shared(...) __lock_annotate(shared_lock_function(__VA_ARGS__))"
.LASF778:
	.string	"INCLUDE_vTaskDelay 1"
.LASF103:
	.string	"__cpp_variable_templates 201304L"
.LASF933:
	.string	"traceGIVE_MUTEX_RECURSIVE(pxMutex) "
.LASF1343:
	.string	"__LOCK_INIT(class,lock) static int lock = 0;"
.LASF720:
	.string	"_REG32P(p,i) ((volatile uint32_t *) ((p) + (i)))"
.LASF460:
	.string	"__COMPONENT_NAME__ \"suas_app_freertos_watchdog\""
.LASF482:
	.string	"_SIZE_T "
.LASF509:
	.string	"_WCHAR_T_H "
.LASF691:
	.string	"IOF_SPI2_MOSI (27u)"
.LASF1038:
	.string	"xTaskHandle TaskHandle_t"
.LASF818:
	.string	"pdFREERTOS_ERRNO_EXDEV 18"
.LASF798:
	.string	"errQUEUE_EMPTY ( ( BaseType_t ) 0 )"
.LASF1064:
	.string	"configENABLE_TRUSTZONE 1"
.LASF892:
	.string	"portUSING_MPU_WRAPPERS 0"
.LASF116:
	.string	"__cpp_noexcept_function_type 201510L"
.LASF1448:
	.string	"_IONBF 2"
.LASF159:
	.string	"__LONG_LONG_MAX__ 0x7fffffffffffffffLL"
.LASF1088:
	.string	"listLIST_IS_EMPTY(pxList) ( ( ( pxList )->uxNumberOfItems == ( UBaseType_t ) 0 ) ? pdTRUE : pdFALSE )"
.LASF283:
	.string	"__FLT16_MANT_DIG__ 11"
.LASF1486:
	.string	"long double"
.LASF1384:
	.string	"_REENT_RAND48_SEED(ptr) ((ptr)->_new._reent._r48._seed)"
.LASF614:
	.string	"SIG_ATOMIC_MAX __SIG_ATOMIC_MAX__"
.LASF1423:
	.string	"__FILE_defined "
.LASF927:
	.string	"traceMOVED_TASK_TO_READY_STATE(pxTCB) "
.LASF816:
	.string	"pdFREERTOS_ERRNO_EBUSY 16"
.LASF559:
	.string	"UINT_LEAST16_MAX"
.LASF381:
	.string	"__FLT64X_HAS_QUIET_NAN__ 1"
.LASF336:
	.string	"__FLT128_DIG__ 33"
.LASF192:
	.string	"__INT8_C(c) c"
.LASF1275:
	.string	"__scanflike(fmtarg,firstvararg) __attribute__((__format__ (__scanf__, fmtarg, firstvararg)))"
.LASF616:
	.string	"SIG_ATOMIC_MIN __SIG_ATOMIC_MIN__"
.LASF765:
	.string	"configUSE_CO_ROUTINES 0"
.LASF467:
	.string	"_STDDEF_H_ "
.LASF570:
	.string	"INT_LEAST64_MIN (-INT_LEAST64_MAX - 1)"
.LASF378:
	.string	"__FLT64X_DENORM_MIN__ 6.47517511943802511092443895822764655e-4966F64x"
.LASF251:
	.string	"__DBL_MIN_EXP__ (-1021)"
.LASF486:
	.string	"__SIZE_T "
.LASF278:
	.string	"__LDBL_HAS_DENORM__ 1"
.LASF893:
	.string	"configUSE_NEWLIB_REENTRANT 0"
.LASF465:
	.string	"INC_FREERTOS_H "
.LASF1116:
	.string	"xTaskNotifyAndQuery(xTaskToNotify,ulValue,eAction,pulPreviousNotifyValue) xTaskGenericNotify( ( xTaskToNotify ), ( ulValue ), ( eAction ), ( pulPreviousNotifyValue ) )"
.LASF528:
	.string	"INT8_MIN (-INT8_MAX - 1)"
.LASF1187:
	.string	"___int64_t_defined 1"
.LASF291:
	.string	"__FLT16_NORM_MAX__ 6.55040000000000000000000000000000000e+4F16"
.LASF301:
	.string	"__FLT32_DIG__ 6"
.LASF555:
	.string	"INT_LEAST16_MAX"
.LASF571:
	.string	"UINT_LEAST64_MAX"
.LASF1239:
	.string	"__dead2 __attribute__((__noreturn__))"
.LASF1367:
	.string	"_REENT_SIGNAL_SIZE 24"
.LASF670:
	.string	"PWM1_CTRL_ADDR _AC(0x10025000,UL)"
.LASF822:
	.string	"pdFREERTOS_ERRNO_EINVAL 22"
.LASF796:
	.string	"pdPASS ( pdTRUE )"
.LASF94:
	.string	"__cpp_initializer_lists 200806L"
.LASF1192:
	.string	"__EXP"
.LASF951:
	.string	"traceQUEUE_DELETE(pxQueue) "
.LASF123:
	.string	"__cpp_generic_lambdas 201707L"
.LASF399:
	.string	"__BFLT16_IS_IEC_60559__ 0"
.LASF902:
	.string	"INCLUDE_xTaskGetCurrentTaskHandle 0"
.LASF1507:
	.string	"tskTaskControlBlock"
.LASF537:
	.string	"INT32_MAX"
.LASF360:
	.string	"__FLT32X_MIN__ 2.22507385850720138309023271733240406e-308F32x"
.LASF669:
	.string	"SPI1_CTRL_ADDR _AC(0x10024000,UL)"
.LASF1299:
	.string	"__datatype_type_tag(kind,type) "
.LASF210:
	.string	"__UINT64_C(c) c ## ULL"
.LASF1380:
	.string	"_REENT_CHECK_MISC(ptr) "
.LASF1217:
	.string	"__GNUC_VA_LIST_COMPATIBILITY 1"
.LASF590:
	.string	"UINT_FAST32_MAX __UINT_FAST32_MAX__"
.LASF62:
	.string	"__INT_LEAST32_TYPE__ long int"
.LASF675:
	.string	"IOF0_SPI1_MASK _AC(0x000007FC,UL)"
.LASF744:
	.string	"configUSE_TICK_HOOK 0"
.LASF811:
	.string	"pdFREERTOS_ERRNO_EAGAIN 11"
.LASF1467:
	.string	"__sfeof(p) ((int)(((p)->_flags & __SEOF) != 0))"
.LASF209:
	.string	"__UINT_LEAST64_MAX__ 0xffffffffffffffffULL"
.LASF348:
	.string	"__FLT128_HAS_INFINITY__ 1"
.LASF222:
	.string	"__UINT_FAST64_MAX__ 0xffffffffffffffffULL"
.LASF978:
	.string	"traceEVENT_GROUP_SET_BITS_FROM_ISR(xEventGroup,uxBitsToSet) "
.LASF333:
	.string	"__FLT64_IS_IEC_60559__ 1"
.LASF1056:
	.string	"tmrTIMER_CALLBACK TimerCallbackFunction_t"
.LASF107:
	.string	"__cpp_namespace_attributes 201411L"
.LASF808:
	.string	"pdFREERTOS_ERRNO_EIO 5"
.LASF33:
	.string	"__ORDER_LITTLE_ENDIAN__ 1234"
.LASF1333:
	.string	"__size_t"
.LASF1477:
	.string	"__va_copy(d,s) __builtin_va_copy(d,s)"
.LASF1222:
	.string	"__CC_SUPPORTS_INLINE 1"
.LASF1194:
	.string	"__DOTS , ..."
.LASF85:
	.string	"__cpp_raw_strings 200710L"
.LASF1483:
	.string	"long long unsigned int"
.LASF463:
	.string	"__COMPONENT_FILE_NAMED__ suas_app_freertos_watchdog.logpp"
.LASF1246:
	.string	"__alloc_size(x) __attribute__((__alloc_size__(x)))"
.LASF433:
	.string	"__riscv_float_abi_single 1"
.LASF118:
	.string	"__cpp_structured_bindings 201606L"
.LASF1213:
	.string	"__GNUCLIKE_BUILTIN_CONSTANT_P 1"
.LASF1095:
	.string	"tskKERNEL_VERSION_NUMBER \"V10.3.0\""
.LASF281:
	.string	"__LDBL_IS_IEC_60559__ 1"
.LASF946:
	.string	"traceQUEUE_SEND_FROM_ISR(pxQueue) "
.LASF1401:
	.string	"_REENT_WCSRTOMBS_STATE(ptr) ((ptr)->_new._reent._wcsrtombs_state)"
.LASF43:
	.string	"__PTRDIFF_TYPE__ int"
.LASF490:
	.string	"_SIZE_T_DEFINED "
.LASF162:
	.string	"__WINT_MAX__ 0xffffffffU"
.LASF1152:
	.string	"__GNU_VISIBLE 0"
.LASF567:
	.string	"INT_LEAST64_MAX"
.LASF312:
	.string	"__FLT32_HAS_DENORM__ 1"
.LASF472:
	.string	"__PTRDIFF_T "
.LASF1206:
	.string	"__BEGIN_DECLS extern \"C\" {"
.LASF551:
	.string	"INT_LEAST8_MIN"
.LASF1396:
	.string	"_REENT_WCTOMB_STATE(ptr) ((ptr)->_new._reent._wctomb_state)"
.LASF868:
	.string	"portCRITICAL_NESTING_IN_TCB 1"
.LASF1470:
	.string	"__sfileno(p) ((p)->_file)"
.LASF294:
	.string	"__FLT16_DENORM_MIN__ 5.96046447753906250000000000000000000e-8F16"
.LASF966:
	.string	"traceTIMER_COMMAND_RECEIVED(pxTimer,xMessageID,xMessageValue) "
.LASF124:
	.string	"__cpp_designated_initializers 201707L"
.LASF633:
	.string	"INT64_C"
.LASF65:
	.string	"__UINT_LEAST16_TYPE__ short unsigned int"
.LASF855:
	.string	"portMAX_DELAY ( TickType_t ) 0xffffffffUL"
.LASF659:
	.string	"CLINT_CTRL_ADDR _AC(0x02000000,UL)"
.LASF1455:
	.string	"SEEK_CUR 1"
.LASF49:
	.string	"__CHAR16_TYPE__ short unsigned int"
.LASF285:
	.string	"__FLT16_MIN_EXP__ (-13)"
.LASF899:
	.string	"INCLUDE_uxTaskGetStackHighWaterMark2 0"
.LASF382:
	.string	"__FLT64X_IS_IEC_60559__ 1"
.LASF352:
	.string	"__FLT32X_DIG__ 15"
.LASF895:
	.string	"INCLUDE_xTaskAbortDelay 0"
.LASF926:
	.string	"configINCLUDE_FREERTOS_TASK_C_ADDITIONS_H 0"
.LASF987:
	.string	"traceTASK_NOTIFY() "
.LASF1024:
	.string	"configSUPPORT_DYNAMIC_ALLOCATION 1"
.LASF1391:
	.string	"_REENT_ASCTIME_BUF(ptr) ((ptr)->_new._reent._asctime_buf)"
.LASF396:
	.string	"__BFLT16_HAS_DENORM__ 1"
.LASF1427:
	.string	"_flockfile(fp) (((fp)->_flags & __SSTR) ? 0 : __lock_acquire_recursive((fp)->_lock))"
.LASF22:
	.string	"__FINITE_MATH_ONLY__ 0"
.LASF213:
	.string	"__INT_FAST16_MAX__ 0x7fffffff"
.LASF1182:
	.string	"__have_longlong64 1"
.LASF1439:
	.string	"__SOPT 0x0400"
.LASF1149:
	.string	"__GNUC_PREREQ__(ma,mi) __GNUC_PREREQ(ma, mi)"
.LASF552:
	.string	"INT_LEAST8_MIN (-INT_LEAST8_MAX - 1)"
.LASF610:
	.string	"PTRDIFF_MAX __PTRDIFF_MAX__"
.LASF429:
	.string	"__riscv_xlen 32"
.LASF1091:
	.string	"listGET_OWNER_OF_HEAD_ENTRY(pxList) ( (&( ( pxList )->xListEnd ))->pxNext->pvOwner )"
.LASF79:
	.string	"__DEPRECATED 1"
.LASF497:
	.string	"__size_t "
.LASF1368:
	.string	"_REENT_INIT_RESERVED_0 "
.LASF508:
	.string	"_WCHAR_T_DEFINED "
.LASF597:
	.string	"INTPTR_MAX"
.LASF225:
	.string	"__UINTPTR_MAX__ 0xffffffffU"
.LASF1304:
	.string	"__trylocks_exclusive(...) __lock_annotate(exclusive_trylock_function(__VA_ARGS__))"
.LASF653:
	.string	"_AT(T,X) ((T)(X))"
.LASF850:
	.string	"DEPRECATED_DEFINITIONS_H "
.LASF1494:
	.string	"TickType_t"
.LASF856:
	.string	"portCHAR char"
.LASF1012:
	.string	"portTASK_USES_FLOATING_POINT() "
.LASF524:
	.string	"_GCC_STDINT_H "
.LASF1373:
	.ascii	"_REENT_INIT(var) { 0, &__sf[0], &__sf[1], &__sf[2], 0, \"\","
	.ascii	" _REENT_INIT_RESERVED_1 _NULL, _REENT_INIT_RESERVED_0 _NULL,"
	.ascii	" _NULL, 0, _NULL, _NULL, 0, _NULL, { { _REENT_INIT_RESERVED_"
	.ascii	"2 _NULL, \"\", {0, 0, 0, 0, 0, 0, 0, 0"
	.string	", 0}, 0, 1, { {_RAND48_SEED_0, _RAND48_SEED_1, _RAND48_SEED_2}, {_RAND48_MULT_0, _RAND48_MULT_1, _RAND48_MULT_2}, _RAND48_ADD }, {0, {0}}, {0, {0}}, {0, {0}}, \"\", \"\", 0, {0, {0}}, {0, {0}}, {0, {0}}, {0, {0}}, {0, {0}} } }, _REENT_INIT_RESERVED_6_7 _NULL }"
.LASF1400:
	.string	"_REENT_WCRTOMB_STATE(ptr) ((ptr)->_new._reent._wcrtomb_state)"
.LASF459:
	.string	"__FILENAME_WO_SUFFIX_DEQUOTED__ logpp"
.LASF388:
	.string	"__BFLT16_MAX_EXP__ 128"
.LASF539:
	.string	"INT32_MIN"
.LASF668:
	.string	"UART1_CTRL_ADDR _AC(0x10023000,UL)"
.LASF1348:
	.string	"__lock_close_recursive(lock) ((void) 0)"
.LASF488:
	.string	"_BSD_SIZE_T_ "
.LASF621:
	.string	"WCHAR_MIN"
.LASF1005:
	.string	"portYIELD_WITHIN_API portYIELD"
.LASF91:
	.string	"__cpp_rvalue_reference 200610L"
.LASF505:
	.string	"_WCHAR_T_ "
.LASF789:
	.string	"genqMUTEX_TEST_TASK_STACK_SIZE 90"
.LASF560:
	.string	"UINT_LEAST16_MAX __UINT_LEAST16_MAX__"
.LASF1458:
	.string	"stdin _REENT_STDIN(_REENT)"
.LASF827:
	.string	"pdFREERTOS_ERRNO_EBADE 50"
.LASF1162:
	.string	"__RAND_MAX"
.LASF932:
	.string	"traceCREATE_MUTEX_FAILED() "
.LASF1460:
	.string	"stderr _REENT_STDERR(_REENT)"
.LASF1207:
	.string	"__END_DECLS }"
.LASF981:
	.string	"tracePEND_FUNC_CALL_FROM_ISR(xFunctionToPend,pvParameter1,ulParameter2,ret) "
.LASF148:
	.string	"__cpp_sized_deallocation 201309L"
.LASF931:
	.string	"traceCREATE_MUTEX(pxNewQueue) "
.LASF1338:
	.string	"_CLOCKID_T_ unsigned long"
.LASF1112:
	.string	"taskSCHEDULER_SUSPENDED ( ( BaseType_t ) 0 )"
.LASF841:
	.string	"pdFREERTOS_ERRNO_ENOTCONN 128"
.LASF586:
	.string	"INT_FAST32_MAX __INT_FAST32_MAX__"
.LASF511:
	.string	"__INT_WCHAR_T_H "
.LASF1120:
	.string	"_STDIO_H_ "
.LASF1411:
	.string	"_REENT_LOCALE(_ptr) ((_ptr)->_locale)"
.LASF1131:
	.string	"_HAVE_INITFINI_ARRAY 1"
.LASF533:
	.string	"INT16_MIN"
.LASF599:
	.string	"INTPTR_MIN"
.LASF1415:
	.string	"_REENT_STDERR(_ptr) ((_ptr)->_stderr)"
.LASF1363:
	.string	"_RAND48_MULT_2 (0x0005)"
.LASF903:
	.string	"configUSE_DAEMON_TASK_STARTUP_HOOK 0"
.LASF1479:
	.string	"_VA_LIST "
.LASF376:
	.string	"__FLT64X_MIN__ 3.36210314311209350626267781732175260e-4932F64x"
.LASF1119:
	.string	"xTaskNotifyGive(xTaskToNotify) xTaskGenericNotify( ( xTaskToNotify ), ( 0 ), eIncrement, NULL )"
.LASF806:
	.string	"pdFREERTOS_ERRNO_ENOENT 2"
.LASF1472:
	.string	"_ANSI_STDARG_H_ "
.LASF1057:
	.string	"pdTASK_CODE TaskFunction_t"
.LASF160:
	.string	"__WCHAR_MAX__ 0x7fffffff"
.LASF728:
	.string	"PWM1_REG(offset) _REG32(PWM1_CTRL_ADDR, offset)"
.LASF1169:
	.string	"_END_STD_C }"
.LASF681:
	.string	"IOF_SPI1_MOSI (3u)"
.LASF11:
	.string	"__GNUC_MINOR__ 1"
.LASF881:
	.string	"portINLINE __inline"
.LASF1108:
	.string	"taskEXIT_CRITICAL() portEXIT_CRITICAL()"
.LASF1007:
	.string	"configEXPECTED_IDLE_TIME_BEFORE_SLEEP 2"
.LASF66:
	.string	"__UINT_LEAST32_TYPE__ long unsigned int"
.LASF268:
	.string	"__LDBL_MIN_10_EXP__ (-4931)"
.LASF448:
	.string	"BL_SDK_VER \"release_bl_iot_sdk_1.6.11-1-g66bb28da-dirty\""
.LASF1362:
	.string	"_RAND48_MULT_1 (0xdeec)"
.LASF46:
	.string	"__INTMAX_TYPE__ long long int"
.LASF88:
	.string	"__cpp_lambdas 200907L"
.LASF412:
	.string	"__GCC_ATOMIC_INT_LOCK_FREE 1"
.LASF871:
	.string	"portDISABLE_INTERRUPTS() __asm volatile( \"csrc mstatus, 8\" )"
.LASF1027:
	.string	"configINITIAL_TICK_COUNT 0"
.LASF386:
	.string	"__BFLT16_MIN_EXP__ (-125)"
.LASF577:
	.string	"UINT_FAST8_MAX"
.LASF361:
	.string	"__FLT32X_EPSILON__ 2.22044604925031308084726333618164062e-16F32x"
.LASF221:
	.string	"__UINT_FAST32_MAX__ 0xffffffffU"
.LASF603:
	.string	"INTMAX_MAX"
.LASF992:
	.string	"traceSTREAM_BUFFER_CREATE(pxStreamBuffer,xIsMessageBuffer) "
.LASF991:
	.string	"traceSTREAM_BUFFER_CREATE_STATIC_FAILED(xReturn,xIsMessageBuffer) "
.LASF522:
	.string	"_GCC_MAX_ALIGN_T "
.LASF1341:
	.string	"__Long long"
.LASF496:
	.string	"_SIZET_ "
.LASF859:
	.string	"portLONG long"
.LASF141:
	.string	"__cpp_multidimensional_subscript 202211L"
.LASF263:
	.string	"__DBL_HAS_QUIET_NAN__ 1"
.LASF1092:
	.string	"listIS_CONTAINED_WITHIN(pxList,pxListItem) ( ( ( pxListItem )->pxContainer == ( pxList ) ) ? ( pdTRUE ) : ( pdFALSE ) )"
.LASF758:
	.string	"configUSE_RECURSIVE_MUTEXES 1"
.LASF1175:
	.string	"_NOINLINE_STATIC _NOINLINE static"
.LASF1172:
	.string	"_ATTRIBUTE(attrs) __attribute__ (attrs)"
.LASF1332:
	.string	"_MACHINE__TYPES_H "
.LASF631:
	.string	"INT32_C"
.LASF1047:
	.string	"xTimerHandle TimerHandle_t"
.LASF1227:
	.string	"__CC_SUPPORTS_VARADIC_XXX 1"
.LASF125:
	.string	"__cpp_constexpr_in_decltype 201711L"
.LASF805:
	.string	"pdFREERTOS_ERRNO_NONE 0"
.LASF453:
	.string	"CONFIG_PSM_EASYFLASH_SIZE 16384"
.LASF346:
	.string	"__FLT128_DENORM_MIN__ 6.47517511943802511092443895822764655e-4966F128"
.LASF545:
	.string	"INT64_MIN"
.LASF444:
	.string	"__riscv_zcf 1000000"
.LASF1128:
	.string	"_FSEEK_OPTIMIZATION 1"
.LASF76:
	.string	"__INTPTR_TYPE__ int"
.LASF635:
	.string	"UINT8_C"
.LASF77:
	.string	"__UINTPTR_TYPE__ unsigned int"
.LASF1078:
	.string	"listTEST_LIST_ITEM_INTEGRITY(pxItem) "
.LASF1025:
	.string	"configSTACK_DEPTH_TYPE uint16_t"
.LASF637:
	.string	"UINT16_C"
.LASF400:
	.string	"__REGISTER_PREFIX__ "
.LASF1079:
	.string	"listTEST_LIST_INTEGRITY(pxList) "
.LASF250:
	.string	"__DBL_DIG__ 15"
.LASF1502:
	.string	"xTaskGetCurrentTaskHandle"
.LASF676:
	.string	"SPI11_NUM_SS (4)"
.LASF638:
	.string	"UINT16_C(c) __UINT16_C(c)"
.LASF1371:
	.string	"_REENT_INIT_RESERVED_6_7 "
.LASF13:
	.string	"__VERSION__ \"15.1.0\""
.LASF417:
	.string	"__GCC_CONSTRUCTIVE_SIZE 32"
.LASF30:
	.string	"__SIZEOF_SIZE_T__ 4"
.LASF702:
	.string	"IOF_UART1_RX (24u)"
.LASF1504:
	.string	"name"
.LASF652:
	.string	"_AC(X,Y) (X ##Y)"
.LASF393:
	.string	"__BFLT16_MIN__ 1.17549435082228750796873653722224568e-38BF16"
.LASF694:
	.string	"IOF_SPI2_DQ0 (27u)"
.LASF328:
	.string	"__FLT64_EPSILON__ 2.22044604925031308084726333618164062e-16F64"
.LASF1146:
	.string	"__OBSOLETE_MATH __OBSOLETE_MATH_DEFAULT"
.LASF359:
	.string	"__FLT32X_NORM_MAX__ 1.79769313486231570814527423731704357e+308F32x"
.LASF1087:
	.string	"listGET_END_MARKER(pxList) ( ( ListItem_t const * ) ( &( ( pxList )->xListEnd ) ) )"
.LASF110:
	.string	"__cpp_fold_expressions 201603L"
.LASF749:
	.string	"configTOTAL_HEAP_SIZE ( ( size_t ) 14100 )"
.LASF3:
	.string	"__cplusplus 202302L"
.LASF158:
	.string	"__LONG_MAX__ 0x7fffffffL"
.LASF780:
	.string	"INCLUDE_xTimerPendFunctionCall 1"
.LASF1244:
	.string	"__aligned(x) __attribute__((__aligned__(x)))"
.LASF1274:
	.string	"__printflike(fmtarg,firstvararg) __attribute__((__format__ (__printf__, fmtarg, firstvararg)))"
.LASF1126:
	.string	"__NEWLIB_MINOR__ 4"
.LASF907:
	.string	"configPRECONDITION_DEFINED 0"
.LASF857:
	.string	"portFLOAT float"
.LASF957:
	.string	"traceTASK_PRIORITY_SET(pxTask,uxNewPriority) "
.LASF734:
	.string	"UART1_REG(offset) _REG32(UART1_CTRL_ADDR, offset)"
.LASF1488:
	.string	"short int"
.LASF466:
	.string	"_STDDEF_H "
.LASF935:
	.string	"traceTAKE_MUTEX_RECURSIVE(pxMutex) "
.LASF1316:
	.string	"__guarded_by(x) __lock_annotate(guarded_by(x))"
.LASF1475:
	.string	"va_arg(v,l) __builtin_va_arg(v,l)"
.LASF834:
	.string	"pdFREERTOS_ERRNO_ENOPROTOOPT 109"
.LASF206:
	.string	"__UINT16_C(c) c"
.LASF292:
	.string	"__FLT16_MIN__ 6.10351562500000000000000000000000000e-5F16"
.LASF293:
	.string	"__FLT16_EPSILON__ 9.76562500000000000000000000000000000e-4F16"
.LASF1469:
	.string	"__sclearerr(p) ((void)((p)->_flags &= ~(__SERR|__SEOF)))"
.LASF1317:
	.string	"__pt_guarded_by(x) __lock_annotate(pt_guarded_by(x))"
.LASF942:
	.string	"traceQUEUE_PEEK(pxQueue) "
.LASF1298:
	.string	"__arg_type_tag(arg_kind,arg_idx,type_tag_idx) "
.LASF1022:
	.string	"configUSE_TASK_NOTIFICATIONS 1"
.LASF565:
	.string	"UINT_LEAST32_MAX"
.LASF886:
	.string	"portHAS_STACK_OVERFLOW_CHECKING 0"
.LASF371:
	.string	"__FLT64X_MAX_EXP__ 16384"
.LASF339:
	.string	"__FLT128_MAX_EXP__ 16384"
.LASF1403:
	.string	"_REENT_SIGNAL_BUF(ptr) ((ptr)->_new._reent._signal_buf)"
.LASF14:
	.string	"__ATOMIC_RELAXED 0"
.LASF821:
	.string	"pdFREERTOS_ERRNO_EISDIR 21"
.LASF1273:
	.string	"__containerof(x,s,m) ({ const volatile __typeof(((s *)0)->m) *__x = (x); __DEQUALIFY(s *, (const volatile char *)__x - __offsetof(s, m));})"
.LASF1090:
	.ascii	"listGET_OWNER_OF_NEXT_ENTRY(pxTCB,pxList) { List_t * const p"
	.ascii	"xConstList = ( pxList ); ( pxC"
	.string	"onstList )->pxIndex = ( pxConstList )->pxIndex->pxNext; if( ( void * ) ( pxConstList )->pxIndex == ( void * ) &( ( pxConstList )->xListEnd ) ) { ( pxConstList )->pxIndex = ( pxConstList )->pxIndex->pxNext; } ( pxTCB ) = ( pxConstList )->pxIndex->pvOwner; }"
.LASF308:
	.string	"__FLT32_NORM_MAX__ 3.40282346638528859811704183484516925e+38F32"
.LASF262:
	.string	"__DBL_HAS_INFINITY__ 1"
.LASF572:
	.string	"UINT_LEAST64_MAX __UINT_LEAST64_MAX__"
.LASF180:
	.string	"__SIG_ATOMIC_MAX__ 0x7fffffff"
.LASF566:
	.string	"UINT_LEAST32_MAX __UINT_LEAST32_MAX__"
.LASF144:
	.string	"__cpp_implicit_move 202207L"
.LASF807:
	.string	"pdFREERTOS_ERRNO_EINTR 4"
.LASF1026:
	.string	"configMESSAGE_BUFFER_LENGTH_TYPE size_t"
.LASF969:
	.string	"traceEVENT_GROUP_CREATE(xEventGroup) "
.LASF842:
	.string	"pdFREERTOS_ERRNO_ENOMEDIUM 135"
.LASF627:
	.string	"INT8_C"
.LASF657:
	.string	"TRAPVEC_TABLE_CTRL_ADDR _AC(0x00001010,UL)"
.LASF561:
	.string	"INT_LEAST32_MAX"
.LASF875:
	.string	"portRECORD_READY_PRIORITY(uxPriority,uxReadyPriorities) ( uxReadyPriorities ) |= ( 1UL << ( uxPriority ) )"
.LASF27:
	.string	"__SIZEOF_FLOAT__ 4"
.LASF1345:
	.string	"__lock_init(lock) ((void) 0)"
.LASF844:
	.string	"pdFREERTOS_ERRNO_ECANCELED 140"
.LASF479:
	.string	"__need_ptrdiff_t"
.LASF604:
	.string	"INTMAX_MAX __INTMAX_MAX__"
.LASF255:
	.string	"__DBL_DECIMAL_DIG__ 17"
.LASF473:
	.string	"_PTRDIFF_T_ "
.LASF1468:
	.string	"__sferror(p) ((int)(((p)->_flags & __SERR) != 0))"
.LASF1154:
	.string	"__LARGEFILE_VISIBLE 0"
.LASF1202:
	.string	"__flexarr [0]"
.LASF630:
	.string	"INT16_C(c) __INT16_C(c)"
.LASF944:
	.string	"traceQUEUE_PEEK_FROM_ISR(pxQueue) "
.LASF929:
	.string	"traceQUEUE_CREATE(pxNewQueue) "
.LASF1160:
	.string	"_READ_WRITE_RETURN_TYPE _ssize_t"
.LASF986:
	.string	"traceTASK_NOTIFY_WAIT() "
.LASF763:
	.string	"configUSE_PORT_OPTIMISED_TASK_SELECTION 1"
.LASF184:
	.string	"__INT16_MAX__ 0x7fff"
.LASF426:
	.string	"__riscv_mul 1"
.LASF1291:
	.string	"__DEVOLATILE(type,var) ((type)(__uintptr_t)(volatile void *)(var))"
.LASF500:
	.string	"__WCHAR_T__ "
.LASF168:
	.string	"__INT_WIDTH__ 32"
.LASF997:
	.string	"traceSTREAM_BUFFER_SEND_FAILED(xStreamBuffer) "
.LASF1158:
	.string	"__XSI_VISIBLE 0"
.LASF941:
	.string	"traceQUEUE_RECEIVE(pxQueue) "
.LASF335:
	.string	"__FLT128_MANT_DIG__ 113"
.LASF78:
	.string	"__GXX_WEAK__ 1"
.LASF1015:
	.string	"configUSE_TIME_SLICING 1"
.LASF782:
	.string	"configASSERT(x) if( ( x ) == 0 ) vAssertCalled()"
.LASF924:
	.string	"traceBLOCKING_ON_QUEUE_SEND(pxQueue) "
.LASF1050:
	.string	"portTICK_RATE_MS portTICK_PERIOD_MS"
.LASF182:
	.string	"__SIG_ATOMIC_WIDTH__ 32"
.LASF113:
	.string	"__cpp_capture_star_this 201603L"
.LASF716:
	.string	"INT_PWM0_BASE 40"
.LASF878:
	.string	"portTASK_FUNCTION_PROTO(vFunction,pvParameters) void vFunction( void *pvParameters )"
.LASF449:
	.string	"BL_SDK_PHY_VER \"a0_final-44-geb7fadd\""
.LASF1240:
	.string	"__pure2 __attribute__((__const__))"
.LASF1285:
	.string	"__FBSDID(s) struct __hack"
.LASF1474:
	.string	"va_end(v) __builtin_va_end(v)"
.LASF988:
	.string	"traceTASK_NOTIFY_FROM_ISR() "
.LASF1390:
	.string	"_REENT_MP_FREELIST(ptr) ((ptr)->_freelist)"
.LASF6:
	.string	"__STDC_HOSTED__ 0"
.LASF1264:
	.string	"__unreachable() __builtin_unreachable()"
.LASF83:
	.string	"__cpp_hex_float 201603L"
.LASF1061:
	.string	"configUSE_TASK_FPU_SUPPORT 1"
.LASF422:
	.string	"__SIZEOF_WINT_T__ 4"
.LASF1476:
	.string	"va_copy(d,s) __builtin_va_copy(d,s)"
.LASF197:
	.string	"__INT_LEAST32_MAX__ 0x7fffffffL"
.LASF2:
	.string	"__STDC__ 1"
.LASF146:
	.string	"__cpp_concepts 202002L"
.LASF1032:
	.string	"configENABLE_BACKWARD_COMPATIBILITY 1"
.LASF847:
	.string	"pdLITTLE_ENDIAN pdFREERTOS_LITTLE_ENDIAN"
.LASF994:
	.string	"traceSTREAM_BUFFER_RESET(xStreamBuffer) "
.LASF864:
	.string	"portBYTE_ALIGNMENT 16"
.LASF211:
	.string	"__INT_FAST8_MAX__ 0x7fffffff"
.LASF129:
	.string	"__cpp_deduction_guides 201907L"
.LASF1463:
	.string	"_stderr_r(x) _REENT_STDERR(x)"
.LASF1141:
	.string	"_WIDE_ORIENT 1"
.LASF1382:
	.string	"_REENT_SIGNGAM(ptr) ((ptr)->_new._reent._gamma_signgam)"
.LASF458:
	.string	"__FILENAME_WO_SUFFIX__ \"logpp\""
.LASF1328:
	.string	"_SYS__TYPES_H "
.LASF216:
	.string	"__INT_FAST32_WIDTH__ 32"
.LASF510:
	.string	"___int_wchar_t_h "
.LASF912:
	.string	"portPOINTER_SIZE_TYPE uint32_t"
.LASF1361:
	.string	"_RAND48_MULT_0 (0xe66d)"
.LASF1406:
	.string	"_REENT_CVTBUF(_ptr) ((_ptr)->_cvtbuf)"
.LASF874:
	.string	"portEXIT_CRITICAL() vTaskExitCritical()"
.LASF1216:
	.string	"__GNUCLIKE_BUILTIN_VAALIST 1"
.LASF29:
	.string	"__SIZEOF_LONG_DOUBLE__ 16"
.LASF1283:
	.string	"__sym_compat(sym,impl,verid) __asm__(\".symver \" #impl \", \" #sym \"@\" #verid)"
.LASF666:
	.string	"SPI0_CTRL_ADDR _AC(0x10014000,UL)"
.LASF1300:
	.string	"__lock_annotate(x) "
.LASF1023:
	.string	"configUSE_POSIX_ERRNO 0"
.LASF1253:
	.string	"_Thread_local thread_local"
.LASF438:
	.string	"__riscv_m 2000000"
.LASF342:
	.string	"__FLT128_MAX__ 1.18973149535723176508575932662800702e+4932F128"
.LASF58:
	.string	"__UINT32_TYPE__ long unsigned int"
.LASF598:
	.string	"INTPTR_MAX __INTPTR_MAX__"
.LASF738:
	.string	"configSUPPORT_STATIC_ALLOCATION 1"
.LASF1106:
	.string	"taskENTER_CRITICAL() portENTER_CRITICAL()"
.LASF760:
	.string	"configUSE_APPLICATION_TASK_TAG 0"
.LASF998:
	.string	"traceSTREAM_BUFFER_SEND_FROM_ISR(xStreamBuffer,xBytesSent) "
.LASF661:
	.string	"AON_CTRL_ADDR _AC(0x10000000,UL)"
.LASF325:
	.string	"__FLT64_MAX__ 1.79769313486231570814527423731704357e+308F64"
.LASF1219:
	.string	"__GNUCLIKE_BUILTIN_NEXT_ARG 1"
.LASF495:
	.string	"_GCC_SIZE_T "
.LASF853:
	.string	"portBASE_TYPE int32_t"
.LASF96:
	.string	"__cpp_nsdmi 200809L"
.LASF1226:
	.string	"__CC_SUPPORTS_WARNING 1"
.LASF1350:
	.string	"__lock_acquire_recursive(lock) ((void) 0)"
.LASF730:
	.string	"SPI0_REG(offset) _REG32(SPI0_CTRL_ADDR, offset)"
.LASF974:
	.string	"traceEVENT_GROUP_WAIT_BITS_END(xEventGroup,uxBitsToWaitFor,xTimeoutOccurred) ( void ) xTimeoutOccurred"
.LASF1389:
	.string	"_REENT_MP_P5S(ptr) ((ptr)->_p5s)"
.LASF1375:
	.string	"_REENT_CHECK_RAND48(ptr) "
.LASF870:
	.string	"portCLEAR_INTERRUPT_MASK_FROM_ISR(uxSavedStatusValue) ( void ) uxSavedStatusValue"
.LASF87:
	.string	"__cpp_user_defined_literals 200809L"
.LASF23:
	.string	"__SIZEOF_INT__ 4"
.LASF515:
	.string	"_BSD_WCHAR_T_"
.LASF1473:
	.string	"va_start(v,l) __builtin_va_start(v,l)"
.LASF1485:
	.string	"long long int"
.LASF9:
	.string	"__STDC_EMBED_EMPTY__ 2"
.LASF99:
	.string	"__cpp_alias_templates 200704L"
.LASF1493:
	.string	"uint32_t"
.LASF1197:
	.string	"__ptr_t void *"
.LASF689:
	.string	"SPI2_NUM_SS (1)"
.LASF1447:
	.string	"_IOLBF 1"
.LASF845:
	.string	"pdFREERTOS_LITTLE_ENDIAN 0"
.LASF1435:
	.string	"__SERR 0x0040"
.LASF284:
	.string	"__FLT16_DIG__ 3"
.LASF1191:
	.string	"___int_least64_t_defined 1"
.LASF851:
	.string	"PORTMACRO_H "
.LASF995:
	.string	"traceBLOCKING_ON_STREAM_BUFFER_SEND(xStreamBuffer) "
.LASF1437:
	.string	"__SAPP 0x0100"
.LASF1301:
	.string	"__lockable __lock_annotate(lockable)"
.LASF275:
	.string	"__LDBL_MIN__ 3.36210314311209350626267781732175260e-4932L"
.LASF989:
	.string	"traceTASK_NOTIFY_GIVE_FROM_ISR() "
.LASF73:
	.string	"__UINT_FAST16_TYPE__ unsigned int"
.LASF132:
	.string	"__cpp_impl_destroying_delete 201806L"
.LASF387:
	.string	"__BFLT16_MIN_10_EXP__ (-37)"
.LASF1329:
	.string	"__need_wint_t "
.LASF1074:
	.string	"listSET_FIRST_LIST_ITEM_INTEGRITY_CHECK_VALUE(pxItem) "
.LASF109:
	.string	"__cpp_nested_namespace_definitions 201411L"
.LASF1097:
	.string	"tskKERNEL_VERSION_MINOR 3"
.LASF737:
	.string	"PLIC_NUM_PRIORITIES 7"
.LASF641:
	.string	"UINT64_C"
.LASF174:
	.string	"__SIZE_WIDTH__ 32"
.LASF613:
	.string	"SIG_ATOMIC_MAX"
.LASF149:
	.string	"__cpp_aligned_new 201606L"
.LASF163:
	.string	"__WINT_MIN__ 0U"
.LASF557:
	.string	"INT_LEAST16_MIN"
.LASF319:
	.string	"__FLT64_DIG__ 15"
.LASF241:
	.string	"__FLT_MIN__ 1.17549435082228750796873653722224568e-38F"
.LASF1066:
	.string	"tskSTATIC_AND_DYNAMIC_ALLOCATION_POSSIBLE ( ( ( portUSING_MPU_WRAPPERS == 0 ) && ( configSUPPORT_DYNAMIC_ALLOCATION == 1 ) && ( configSUPPORT_STATIC_ALLOCATION == 1 ) ) || ( ( portUSING_MPU_WRAPPERS == 1 ) && ( configSUPPORT_DYNAMIC_ALLOCATION == 1 ) ) )"
.LASF193:
	.string	"__INT_LEAST8_WIDTH__ 8"
.LASF432:
	.string	"__riscv_fsqrt 1"
.LASF1198:
	.string	"__long_double_t long double"
.LASF1315:
	.string	"__nosanitizethread "
.LASF61:
	.string	"__INT_LEAST16_TYPE__ short int"
.LASF916:
	.string	"traceINCREASE_TICK_COUNT(x) "
.LASF739:
	.string	"configMTIME_BASE_ADDRESS ( ( CLINT_CTRL_ADDR ) + 0xBFF8UL )"
.LASF1109:
	.string	"taskEXIT_CRITICAL_FROM_ISR(x) portCLEAR_INTERRUPT_MASK_FROM_ISR( x )"
.LASF296:
	.string	"__FLT16_HAS_INFINITY__ 1"
.LASF140:
	.string	"__cpp_constexpr 202211L"
.LASF499:
	.string	"__wchar_t__ "
.LASF645:
	.string	"UINTMAX_C"
.LASF1186:
	.string	"___int32_t_defined 1"
.LASF580:
	.string	"INT_FAST16_MAX __INT_FAST16_MAX__"
.LASF318:
	.string	"__FLT64_MANT_DIG__ 53"
.LASF425:
	.string	"__riscv_compressed 1"
.LASF726:
	.string	"PRCI_REG(offset) _REG32(PRCI_CTRL_ADDR, offset)"
.LASF267:
	.string	"__LDBL_MIN_EXP__ (-16381)"
.LASF1218:
	.string	"__compiler_membar() __asm __volatile(\" \" : : : \"memory\")"
.LASF662:
	.string	"PRCI_CTRL_ADDR _AC(0x10008000,UL)"
.LASF134:
	.string	"__cpp_impl_three_way_comparison 201907L"
.LASF1224:
	.string	"__CC_SUPPORTS___INLINE__ 1"
.LASF971:
	.string	"traceEVENT_GROUP_SYNC_BLOCK(xEventGroup,uxBitsToSet,uxBitsToWaitFor) "
.LASF1286:
	.string	"__RCSID(s) struct __hack"
.LASF1352:
	.string	"__lock_try_acquire_recursive(lock) ((void) 0)"
.LASF785:
	.string	"priSUSPENDED_RX_TASK_STACK_SIZE 90"
.LASF165:
	.string	"__SIZE_MAX__ 0xffffffffU"
.LASF317:
	.string	"__STDCPP_FLOAT64_T__ 1"
.LASF830:
	.string	"pdFREERTOS_ERRNO_ENOTEMPTY 90"
.LASF1257:
	.string	"__always_inline __inline__ __attribute__((__always_inline__))"
.LASF814:
	.string	"pdFREERTOS_ERRNO_EACCES 13"
.LASF793:
	.string	"pdMS_TO_TICKS(xTimeInMs) ( ( TickType_t ) ( ( ( TickType_t ) ( xTimeInMs ) * ( TickType_t ) configTICK_RATE_HZ ) / ( TickType_t ) 1000 ) )"
.LASF478:
	.string	"__DEFINED_ptrdiff_t "
.LASF1236:
	.string	"__volatile volatile"
.LASF403:
	.string	"__STRICT_ANSI__ 1"
.LASF698:
	.string	"IOF0_UART0_MASK _AC(0x00030000, UL)"
.LASF1450:
	.string	"BUFSIZ 1024"
.LASF656:
	.string	"MASKROM_MEM_ADDR _AC(0x00001000,UL)"
.LASF1006:
	.string	"portSUPPRESS_TICKS_AND_SLEEP(xExpectedIdleTime) "
.LASF945:
	.string	"traceQUEUE_RECEIVE_FAILED(pxQueue) "
.LASF95:
	.string	"__cpp_delegating_constructors 200604L"
.LASF1364:
	.string	"_RAND48_ADD (0x000b)"
.LASF1279:
	.string	"__printf0like(fmtarg,firstvararg) "
.LASF569:
	.string	"INT_LEAST64_MIN"
.LASF609:
	.string	"PTRDIFF_MAX"
.LASF977:
	.string	"traceEVENT_GROUP_SET_BITS(xEventGroup,uxBitsToSet) "
.LASF1277:
	.string	"__strfmonlike(fmtarg,firstvararg) __attribute__((__format__ (__strfmon__, fmtarg, firstvararg)))"
.LASF122:
	.string	"__cpp_init_captures 201803L"
.LASF1009:
	.string	"configPRE_SLEEP_PROCESSING(x) "
.LASF128:
	.string	"__cpp_constinit 201907L"
.LASF1034:
	.string	"configMAX(a,b) ( ( ( a ) > ( b ) ) ? ( a ) : ( b ) )"
.LASF56:
	.string	"__UINT8_TYPE__ unsigned char"
.LASF351:
	.string	"__FLT32X_MANT_DIG__ 53"
.LASF693:
	.string	"IOF_SPI2_SCK (29u)"
.LASF843:
	.string	"pdFREERTOS_ERRNO_EILSEQ 138"
.LASF455:
	.string	"FEATURE_WIFI_DISABLE 1"
.LASF89:
	.string	"__cpp_decltype 200707L"
.LASF623:
	.string	"WINT_MAX"
.LASF195:
	.string	"__INT16_C(c) c"
.LASF649:
	.string	"_SIFIVE_PLATFORM_H "
.LASF582:
	.string	"INT_FAST16_MIN (-INT_FAST16_MAX - 1)"
.LASF620:
	.string	"WCHAR_MAX __WCHAR_MAX__"
.LASF680:
	.string	"IOF_SPI1_SS3 (10u)"
.LASF757:
	.string	"configCHECK_FOR_STACK_OVERFLOW 2"
.LASF1441:
	.string	"__SOFF 0x1000"
.LASF1165:
	.string	"__IMPORT "
.LASF297:
	.string	"__FLT16_HAS_QUIET_NAN__ 1"
.LASF1292:
	.string	"__DEQUALIFY(type,var) ((type)(__uintptr_t)(const volatile void *)(var))"
.LASF751:
	.string	"configUSE_TRACE_FACILITY 1"
.LASF18:
	.string	"__ATOMIC_ACQ_REL 4"
.LASF54:
	.string	"__INT32_TYPE__ long int"
.LASF1243:
	.string	"__packed __attribute__((__packed__))"
.LASF507:
	.string	"_WCHAR_T_DEFINED_ "
.LASF1294:
	.string	"_Nullable "
.LASF968:
	.string	"traceFREE(pvAddress,uiSize) "
.LASF1344:
	.string	"__LOCK_INIT_RECURSIVE(class,lock) static int lock = 0;"
.LASF714:
	.string	"INT_SPI2_BASE 7"
.LASF1308:
	.string	"__asserts_shared(...) __lock_annotate(assert_shared_lock(__VA_ARGS__))"
.LASF97:
	.string	"__cpp_inheriting_constructors 201511L"
.LASF266:
	.string	"__LDBL_DIG__ 33"
.LASF646:
	.string	"UINTMAX_C(c) __UINTMAX_C(c)"
.LASF775:
	.string	"INCLUDE_vTaskCleanUpResources 1"
.LASF464:
	.string	"__COMPONENT_FILE_NAME_DEQUOTED__ suas_app_freertos_watchdoglogpp"
.LASF947:
	.string	"traceQUEUE_SEND_FROM_ISR_FAILED(pxQueue) "
.LASF1366:
	.string	"_REENT_ASCTIME_SIZE 26"
.LASF1086:
	.string	"listGET_NEXT(pxListItem) ( ( pxListItem )->pxNext )"
.LASF1144:
	.string	"_SUPPORTS_ERREXCEPT "
.LASF642:
	.string	"UINT64_C(c) __UINT64_C(c)"
.LASF709:
	.string	"INT_RTCCMP 2"
.LASF1354:
	.string	"__lock_release_recursive(lock) ((void) 0)"
.LASF1033:
	.string	"configPRINTF(X) "
.LASF1394:
	.string	"_REENT_MBLEN_STATE(ptr) ((ptr)->_new._reent._mblen_state)"
.LASF177:
	.string	"__UINTMAX_MAX__ 0xffffffffffffffffULL"
.LASF894:
	.string	"INCLUDE_xTaskGetIdleTaskHandle 0"
.LASF249:
	.string	"__DBL_MANT_DIG__ 53"
.LASF1204:
	.string	"__unbounded "
.LASF953:
	.string	"traceTASK_CREATE_FAILED() "
.LASF579:
	.string	"INT_FAST16_MAX"
.LASF1270:
	.string	"__hidden __attribute__((__visibility__(\"hidden\")))"
.LASF157:
	.string	"__INT_MAX__ 0x7fffffff"
.LASF950:
	.string	"traceQUEUE_PEEK_FROM_ISR_FAILED(pxQueue) "
.LASF956:
	.string	"traceTASK_DELAY() "
.LASF768:
	.string	"configTIMER_TASK_PRIORITY ( configMAX_PRIORITIES - 1 )"
.LASF392:
	.string	"__BFLT16_NORM_MAX__ 3.38953138925153547590470800371487867e+38BF16"
.LASF639:
	.string	"UINT32_C"
	.section	.debug_line_str,"MS",@progbits,1
.LASF1537:
	.string	"portable.h"
.LASF1542:
	.string	"newlib.h"
.LASF1518:
	.string	"/home/shivani/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include"
.LASF1548:
	.string	"_default_types.h"
.LASF1538:
	.string	"deprecated_definitions.h"
.LASF1521:
	.string	"/home/shivani/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include"
.LASF0:
	.string	"/home/shivani/bl602_iot_sdk/customer_app/suas_app_freertos_watchdog/suas_app_freertos_watchdog/log.cpp"
.LASF1550:
	.string	"_types.h"
.LASF1541:
	.string	"_ansi.h"
.LASF1519:
	.string	"/home/shivani/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/machine"
.LASF1523:
	.string	"stdint-gcc.h"
.LASF1525:
	.string	"task.h"
.LASF1536:
	.string	"projdefs.h"
.LASF1:
	.string	"/home/shivani/bl602_iot_sdk/customer_app/suas_app_freertos_watchdog/build_out/suas_app_freertos_watchdog"
.LASF1520:
	.string	"/home/shivani/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/sys"
.LASF1546:
	.string	"features.h"
.LASF1528:
	.string	"safe_print.h"
.LASF1529:
	.string	"watchdog.h"
.LASF1526:
	.string	"stdarg.h"
.LASF1527:
	.string	"stdio.h"
.LASF1524:
	.string	"portmacro.h"
.LASF1531:
	.string	"FreeRTOS.h"
.LASF1532:
	.string	"stddef.h"
.LASF1534:
	.string	"FreeRTOSConfig.h"
.LASF1540:
	.string	"list.h"
.LASF1545:
	.string	"ieeefp.h"
.LASF1517:
	.string	"/home/shivani/bl602_iot_sdk/customer_app/suas_app_freertos_watchdog/suas_app_freertos_watchdog"
.LASF1547:
	.string	"cdefs.h"
.LASF1522:
	.string	"log.cpp"
.LASF1516:
	.string	"/home/shivani/bl602_iot_sdk/components/freertos/portable/GCC/RISC-V"
.LASF1515:
	.string	"/home/shivani/bl602_iot_sdk/components/freertos/include"
.LASF1535:
	.string	"platform.h"
.LASF1551:
	.string	"lock.h"
.LASF1539:
	.string	"mpu_wrappers.h"
.LASF1544:
	.string	"config.h"
.LASF1549:
	.string	"reent.h"
.LASF1543:
	.string	"_newlib_version.h"
.LASF1533:
	.string	"stdint.h"
.LASF1530:
	.string	"log.h"
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
