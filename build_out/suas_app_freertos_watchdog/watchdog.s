	.file	"watchdog.cpp"
	.option nopic
	.attribute arch, "rv32i2p1_m2p0_f2p2_c2p0_zicsr2p0_zmmul1p0_zca1p0_zcf1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.rodata._ZL21watchdog_monitor_taskPv.str1.4,"aMS",@progbits,1
	.align	2
.LC0:
	.string	"[WATCHDOG] Restarting %s (%lu)\n"
	.align	2
.LC1:
	.string	"{\"task\":\"%s\",\"event\":\"watchdog_restart\",\"count\":%lu}"
	.section	.text._ZL21watchdog_monitor_taskPv,"ax",@progbits
	.align	1
	.type	_ZL21watchdog_monitor_taskPv, @function
_ZL21watchdog_monitor_taskPv:
.LFB4:
.LM1:
	.cfi_startproc
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
.LBB2:
.LBB3:
.LM2:
	lui	a5,%hi(.LC0)
.LBE3:
.LBE2:
.LM3:
	sw	s6,32(sp)
	.cfi_offset 22, -32
.LBB8:
.LBB4:
.LM4:
	addi	s6,a5,%lo(.LC0)
.LM5:
	lui	a5,%hi(_ZL21watchdog_task_wrapperPv)
.LBE4:
.LBE8:
.LM6:
	sw	s2,48(sp)
	sw	s3,44(sp)
	sw	s7,28(sp)
	sw	ra,60(sp)
	sw	s0,56(sp)
	sw	s1,52(sp)
	sw	s4,40(sp)
	sw	s5,36(sp)
	sw	s8,24(sp)
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	.cfi_offset 23, -36
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 20, -24
	.cfi_offset 21, -28
	.cfi_offset 24, -40
	lui	s2,%hi(_ZL7g_tasks)
.LBB9:
.LBB5:
.LM7:
	lui	s3,%hi(_ZL9g_timeout)
.LM8:
	addi	s7,a5,%lo(_ZL21watchdog_task_wrapperPv)
.L8:
.LBE5:
.LBE9:
.LM9:
.LM10:
.LBB10:
.LM11:
.LM12:
	call	xTaskGetTickCount
.LVL0:
	mv	s8,a0
.LVL1:
.LM13:
.LM14:
	addi	s0,s2,%lo(_ZL7g_tasks)
.LBB6:
.LM15:
	li	s1,0
.LM16:
	lui	s4,%hi(_ZL12g_task_count)
.LVL2:
.L2:
.LM17:
.LM18:
	lbu	a5,%lo(_ZL12g_task_count)(s4)
.LM19:
	bgt	a5,s1,.L7
.LBE6:
.LM20:
.LM21:
	lui	a5,%hi(_ZL14g_check_period)
	lw	a0,%lo(_ZL14g_check_period)(a5)
	call	vTaskDelay
.LVL3:
.LBE10:
.LM22:
.LM23:
	j	.L8
.L7:
.LBB11:
.LBB7:
.LM24:
	lw	a5,0(s0)
	beq	a5,zero,.L3
.LM25:
.LM26:
	lw	a5,24(s0)
.LM27:
	lw	a4,%lo(_ZL9g_timeout)(s3)
.LM28:
	sub	a5,s8,a5
.LM29:
	bleu	a5,a4,.L3
.LM30:
.LM31:
	lw	a2,28(s0)
.LM32:
	lw	a1,8(s0)
	mv	a0,s6
.LM33:
	addi	a2,a2,1
	sw	a2,28(s0)
.LM34:
.LM35:
	lui	s5,%hi(event_queue)
.LM36:
	call	printf
.LVL4:
.LM37:
	lw	a5,%lo(event_queue)(s5)
	beq	a5,zero,.L5
.LM38:
.LM39:
	li	a0,128
	call	pvPortMalloc
.LVL5:
.LM40:
	sw	a0,12(sp)
.LM41:
	beq	a0,zero,.L5
.LM42:
.LM43:
	lw	a3,8(s0)
	lw	a4,28(s0)
	lui	a2,%hi(.LC1)
	addi	a2,a2,%lo(.LC1)
	li	a1,128
	call	snprintf
.LVL6:
.LM44:
.LM45:
	lw	a0,%lo(event_queue)(s5)
	li	a3,0
	li	a2,0
	addi	a1,sp,12
	call	xQueueGenericSend
.LVL7:
.L5:
.LM46:
.LM47:
	lw	a0,0(s0)
	call	vTaskDelete
.LVL8:
.LM48:
.LM49:
	lw	a4,16(s0)
	lhu	a2,20(s0)
	lw	a1,8(s0)
	mv	a5,s0
	mv	a3,s0
	mv	a0,s7
	call	xTaskCreate
.LVL9:
.LM50:
.LM51:
	call	xTaskGetTickCount
.LVL10:
.LM52:
	sw	a0,24(s0)
.L3:
.LM53:
	addi	s1,s1,1
.LVL11:
.LM54:
	addi	s0,s0,36
	j	.L2
.LBE7:
.LBE11:
	.cfi_endproc
.LFE4:
	.size	_ZL21watchdog_monitor_taskPv, .-_ZL21watchdog_monitor_taskPv
	.section	.text._ZL21watchdog_task_wrapperPv,"ax",@progbits
	.align	1
	.type	_ZL21watchdog_task_wrapperPv, @function
_ZL21watchdog_task_wrapperPv:
.LVL12:
.LFB3:
.LM55:
	.cfi_startproc
.LM56:
.LM57:
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
.LM58:
	mv	s0,a0
.LVL13:
.LM59:
.LM60:
	call	xTaskGetCurrentTaskHandle
.LVL14:
.LM61:
	sw	a0,0(s0)
.LM62:
.LM63:
	lw	a5,4(s0)
	lw	a0,12(s0)
	jalr	a5
.LVL15:
.LM64:
.LM65:
	lw	s0,8(sp)
	.cfi_restore 8
.LVL16:
.LM66:
	lw	ra,12(sp)
	.cfi_restore 1
.LM67:
	li	a0,0
.LM68:
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
.LM69:
	tail	vTaskDelete
.LVL17:
	.cfi_endproc
.LFE3:
	.size	_ZL21watchdog_task_wrapperPv, .-_ZL21watchdog_task_wrapperPv
	.section	.rodata._Z13watchdog_initmm.str1.4,"aMS",@progbits,1
	.align	2
.LC2:
	.string	"watchdog_monitor"
	.section	.text._Z13watchdog_initmm,"ax",@progbits
	.align	1
	.globl	_Z13watchdog_initmm
	.type	_Z13watchdog_initmm, @function
_Z13watchdog_initmm:
.LVL18:
.LFB5:
.LM70:
	.cfi_startproc
.LM71:
.LM72:
	lui	a5,%hi(_ZL14g_check_period)
	sw	a0,%lo(_ZL14g_check_period)(a5)
.LM73:
.LM74:
	lui	a5,%hi(_ZL9g_timeout)
	sw	a1,%lo(_ZL9g_timeout)(a5)
.LM75:
.LM76:
	lui	a0,%hi(_ZL21watchdog_monitor_taskPv)
.LVL19:
.LM77:
	lui	a1,%hi(.LC2)
.LVL20:
.LM78:
	li	a5,0
.LM79:
	li	a4,10
	li	a3,0
	li	a2,512
	addi	a1,a1,%lo(.LC2)
	addi	a0,a0,%lo(_ZL21watchdog_monitor_taskPv)
	tail	xTaskCreate
.LVL21:
.LM80:
	.cfi_endproc
.LFE5:
	.size	_Z13watchdog_initmm, .-_Z13watchdog_initmm
	.section	.text._Z23xTaskCreateWithWatchdogPFvPvEPKctS_mPP19tskTaskControlBlock,"ax",@progbits
	.align	1
	.globl	_Z23xTaskCreateWithWatchdogPFvPvEPKctS_mPP19tskTaskControlBlock
	.type	_Z23xTaskCreateWithWatchdogPFvPvEPKctS_mPP19tskTaskControlBlock, @function
_Z23xTaskCreateWithWatchdogPFvPvEPKctS_mPP19tskTaskControlBlock:
.LVL22:
.LFB6:
.LM81:
	.cfi_startproc
.LM82:
.LM83:
	lui	a6,%hi(_ZL12g_task_count)
	lbu	a7,%lo(_ZL12g_task_count)(a6)
.LM84:
	li	t1,9
	bgtu	a7,t1,.L20
	mv	t1,a3
.LM85:
.LM86:
	addi	a3,a7,1
.LVL23:
.LM87:
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
.LM88:
	sb	a3,%lo(_ZL12g_task_count)(a6)
.LVL24:
.LM89:
.LM90:
	li	a3,36
	mul	a7,a7,a3
.LVL25:
.LM91:
	lui	a6,%hi(_ZL7g_tasks)
	addi	a6,a6,%lo(_ZL7g_tasks)
.LM92:
	sw	ra,44(sp)
	.cfi_offset 1, -4
	sw	a5,28(sp)
.LM93:
	sw	a1,24(sp)
.LM94:
	sw	a4,20(sp)
.LM95:
	sw	a2,16(sp)
.LM96:
	add	a3,a6,a7
.LM97:
	sw	a1,8(a3)
.LM98:
	sw	a4,16(a3)
.LM99:
	sh	a2,20(a3)
.LM100:
	sw	a3,12(sp)
.LM101:
	sw	a0,4(a3)
.LM102:
.LM103:
.LM104:
	sw	t1,12(a3)
.LM105:
.LM106:
.LM107:
.LM108:
.LM109:
	sw	zero,28(a3)
.LM110:
	call	xTaskGetTickCount
.LVL26:
.LM111:
	lw	a3,12(sp)
.LM112:
	lw	a5,28(sp)
	lw	a4,20(sp)
.LM113:
	sw	a0,24(a3)
.LM114:
.LM115:
	lw	a2,16(sp)
	lw	a1,24(sp)
.LM116:
	lw	ra,44(sp)
	.cfi_restore 1
.LM117:
	lui	a0,%hi(_ZL21watchdog_task_wrapperPv)
.LM118:
.LM119:
	addi	a0,a0,%lo(_ZL21watchdog_task_wrapperPv)
.LM120:
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
.LVL27:
.LM121:
	tail	xTaskCreate
.LVL28:
.L20:
.LM122:
	li	a0,0
.LVL29:
.LM123:
	ret
	.cfi_endproc
.LFE6:
	.size	_Z23xTaskCreateWithWatchdogPFvPvEPKctS_mPP19tskTaskControlBlock, .-_Z23xTaskCreateWithWatchdogPFvPvEPKctS_mPP19tskTaskControlBlock
	.section	.text._Z18task_watchdog_kickv,"ax",@progbits
	.align	1
	.globl	_Z18task_watchdog_kickv
	.type	_Z18task_watchdog_kickv, @function
_Z18task_watchdog_kickv:
.LFB7:
.LM124:
	.cfi_startproc
.LM125:
.LM126:
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,8(sp)
	sw	s1,4(sp)
	sw	ra,12(sp)
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 1, -4
.LM127:
	call	xTaskGetCurrentTaskHandle
.LVL30:
.LM128:
.LBB12:
.LM129:
	lui	a5,%hi(_ZL12g_task_count)
	lbu	a4,%lo(_ZL12g_task_count)(a5)
	lui	a5,%hi(_ZL7g_tasks)
	addi	a5,a5,%lo(_ZL7g_tasks)
.LM130:
	li	s0,0
	mv	s1,a5
.LVL31:
.L25:
.LM131:
	ble	a4,s0,.L24
.LM132:
	lw	a3,0(a5)
	addi	a5,a5,36
	bne	a3,a0,.L26
.LM133:
.LM134:
	call	xTaskGetTickCount
.LVL32:
.LM135:
	li	a5,36
	mul	s0,s0,a5
.LVL33:
.LM136:
	add	s1,s1,s0
	sw	a0,24(s1)
.LM137:
.L24:
.LBE12:
.LM138:
	lw	ra,12(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	lw	s1,4(sp)
	.cfi_restore 9
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.LVL34:
.L26:
	.cfi_restore_state
.LBB13:
.LM139:
	addi	s0,s0,1
.LVL35:
.LM140:
	j	.L25
.LBE13:
	.cfi_endproc
.LFE7:
	.size	_Z18task_watchdog_kickv, .-_Z18task_watchdog_kickv
	.section	.sbss._ZL14g_check_period,"aw",@nobits
	.align	2
	.type	_ZL14g_check_period, @object
	.size	_ZL14g_check_period, 4
_ZL14g_check_period:
	.zero	4
	.section	.sbss._ZL9g_timeout,"aw",@nobits
	.align	2
	.type	_ZL9g_timeout, @object
	.size	_ZL9g_timeout, 4
_ZL9g_timeout:
	.zero	4
	.section	.sbss._ZL12g_task_count,"aw",@nobits
	.type	_ZL12g_task_count, @object
	.size	_ZL12g_task_count, 1
_ZL12g_task_count:
	.zero	1
	.section	.bss._ZL7g_tasks,"aw",@nobits
	.align	2
	.type	_ZL7g_tasks, @object
	.size	_ZL7g_tasks, 360
_ZL7g_tasks:
	.zero	360
	.text
.Letext0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x611
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x16
	.4byte	.LASF1556
	.byte	0x21
	.byte	0x4
	.4byte	0x3163e
	.4byte	.LASF0
	.4byte	.LASF1
	.4byte	.LLRL18
	.4byte	0
	.4byte	.Ldebug_line0
	.4byte	.Ldebug_macro0
	.uleb128 0x4
	.byte	0x8
	.byte	0x7
	.4byte	.LASF1495
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF1496
	.uleb128 0x17
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.4byte	.LASF1501
	.byte	0x2
	.byte	0xe5
	.byte	0x16
	.4byte	0x36
	.uleb128 0x4
	.byte	0x8
	.byte	0x5
	.4byte	.LASF1497
	.uleb128 0x4
	.byte	0x10
	.byte	0x4
	.4byte	.LASF1498
	.uleb128 0x4
	.byte	0x1
	.byte	0x6
	.4byte	.LASF1499
	.uleb128 0x4
	.byte	0x2
	.byte	0x5
	.4byte	.LASF1500
	.uleb128 0x3
	.4byte	.LASF1502
	.byte	0x3
	.byte	0x28
	.byte	0x12
	.4byte	0x78
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.4byte	.LASF1503
	.uleb128 0x3
	.4byte	.LASF1504
	.byte	0x3
	.byte	0x2e
	.byte	0x17
	.4byte	0x8b
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF1505
	.uleb128 0x3
	.4byte	.LASF1506
	.byte	0x3
	.byte	0x31
	.byte	0x1c
	.4byte	0x9e
	.uleb128 0x4
	.byte	0x2
	.byte	0x7
	.4byte	.LASF1507
	.uleb128 0x3
	.4byte	.LASF1508
	.byte	0x3
	.byte	0x34
	.byte	0x1b
	.4byte	0xb1
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF1509
	.uleb128 0x3
	.4byte	.LASF1510
	.byte	0x4
	.byte	0x23
	.byte	0x10
	.4byte	0xc4
	.uleb128 0x7
	.4byte	0xc9
	.uleb128 0x18
	.4byte	0xd4
	.uleb128 0x2
	.4byte	0xd4
	.byte	0
	.uleb128 0x19
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF1511
	.byte	0x5
	.byte	0x3f
	.byte	0x11
	.4byte	0x6c
	.uleb128 0x3
	.4byte	.LASF1512
	.byte	0x5
	.byte	0x40
	.byte	0x12
	.4byte	0xa5
	.uleb128 0x3
	.4byte	.LASF1513
	.byte	0x5
	.byte	0x41
	.byte	0x12
	.4byte	0xa5
	.uleb128 0x3
	.4byte	.LASF1514
	.byte	0x6
	.byte	0x46
	.byte	0x25
	.4byte	0x106
	.uleb128 0x7
	.4byte	0x10b
	.uleb128 0xe
	.4byte	.LASF1527
	.uleb128 0x7
	.4byte	0x11c
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF1515
	.uleb128 0x1a
	.4byte	0x115
	.uleb128 0x1b
	.byte	0x24
	.byte	0x7
	.byte	0x5
	.byte	0x10
	.4byte	.LASF1557
	.4byte	0x19b
	.uleb128 0x5
	.4byte	.LASF1516
	.byte	0x6
	.byte	0x12
	.4byte	0xfa
	.byte	0
	.uleb128 0x5
	.4byte	.LASF1517
	.byte	0x7
	.byte	0x14
	.4byte	0xb8
	.byte	0x4
	.uleb128 0x5
	.4byte	.LASF1518
	.byte	0x8
	.byte	0x11
	.4byte	0x110
	.byte	0x8
	.uleb128 0x5
	.4byte	.LASF1519
	.byte	0x9
	.byte	0xb
	.4byte	0xd4
	.byte	0xc
	.uleb128 0x5
	.4byte	.LASF1520
	.byte	0xa
	.byte	0x11
	.4byte	0xe2
	.byte	0x10
	.uleb128 0x5
	.4byte	.LASF1521
	.byte	0xb
	.byte	0xe
	.4byte	0x92
	.byte	0x14
	.uleb128 0x5
	.4byte	.LASF1522
	.byte	0xc
	.byte	0x10
	.4byte	0xee
	.byte	0x18
	.uleb128 0x5
	.4byte	.LASF1523
	.byte	0xd
	.byte	0xe
	.4byte	0xa5
	.byte	0x1c
	.uleb128 0x5
	.4byte	.LASF1524
	.byte	0xe
	.byte	0xe
	.4byte	0xa5
	.byte	0x20
	.byte	0
	.uleb128 0x3
	.4byte	.LASF1525
	.byte	0x7
	.byte	0xf
	.byte	0x3
	.4byte	0x121
	.uleb128 0x3
	.4byte	.LASF1526
	.byte	0x8
	.byte	0x30
	.byte	0x22
	.4byte	0x1b3
	.uleb128 0x7
	.4byte	0x1b8
	.uleb128 0xe
	.4byte	.LASF1528
	.uleb128 0x7
	.4byte	0x115
	.uleb128 0x1c
	.4byte	0x19b
	.4byte	0x1d2
	.uleb128 0x1d
	.4byte	0x36
	.byte	0x9
	.byte	0
	.uleb128 0xa
	.4byte	.LASF1529
	.byte	0xa
	.byte	0x19
	.4byte	0x1c2
	.uleb128 0x5
	.byte	0x3
	.4byte	_ZL7g_tasks
	.uleb128 0xa
	.4byte	.LASF1530
	.byte	0xb
	.byte	0x10
	.4byte	0x7f
	.uleb128 0x5
	.byte	0x3
	.4byte	_ZL12g_task_count
	.uleb128 0xa
	.4byte	.LASF1531
	.byte	0xc
	.byte	0x13
	.4byte	0xee
	.uleb128 0x5
	.byte	0x3
	.4byte	_ZL9g_timeout
	.uleb128 0xa
	.4byte	.LASF1532
	.byte	0xd
	.byte	0x13
	.4byte	0xee
	.uleb128 0x5
	.byte	0x3
	.4byte	_ZL14g_check_period
	.uleb128 0x1e
	.4byte	.LASF1542
	.byte	0x1
	.byte	0xf
	.byte	0x16
	.4byte	0x1a7
	.uleb128 0xf
	.4byte	.LASF1539
	.2byte	0x987
	.byte	0xe
	.4byte	0xfa
	.uleb128 0x10
	.4byte	.LASF1533
	.2byte	0x2f6
	.4byte	0x23f
	.uleb128 0x2
	.4byte	0xee
	.byte	0
	.uleb128 0x10
	.4byte	.LASF1534
	.2byte	0x2c2
	.4byte	0x250
	.uleb128 0x2
	.4byte	0xfa
	.byte	0
	.uleb128 0xc
	.4byte	.LASF1535
	.byte	0x8
	.2byte	0x28a
	.byte	0xc
	.4byte	0xd6
	.4byte	0x276
	.uleb128 0x2
	.4byte	0x1a7
	.uleb128 0x2
	.4byte	0x276
	.uleb128 0x2
	.4byte	0xee
	.uleb128 0x2
	.4byte	0xd6
	.byte	0
	.uleb128 0x7
	.4byte	0x27b
	.uleb128 0x1f
	.uleb128 0xc
	.4byte	.LASF1536
	.byte	0x9
	.2byte	0x110
	.byte	0x5
	.4byte	0x3d
	.4byte	0x29e
	.uleb128 0x2
	.4byte	0x1bd
	.uleb128 0x2
	.4byte	0x44
	.uleb128 0x2
	.4byte	0x110
	.uleb128 0x11
	.byte	0
	.uleb128 0x12
	.4byte	.LASF1537
	.byte	0xa
	.byte	0xa3
	.byte	0x7
	.4byte	0xd4
	.4byte	0x2b4
	.uleb128 0x2
	.4byte	0x44
	.byte	0
	.uleb128 0x12
	.4byte	.LASF1538
	.byte	0x9
	.byte	0xce
	.byte	0x5
	.4byte	0x3d
	.4byte	0x2cb
	.uleb128 0x2
	.4byte	0x110
	.uleb128 0x11
	.byte	0
	.uleb128 0xf
	.4byte	.LASF1540
	.2byte	0x54c
	.byte	0xc
	.4byte	0xee
	.uleb128 0xc
	.4byte	.LASF1541
	.byte	0x6
	.2byte	0x14a
	.byte	0xd
	.4byte	0xd6
	.4byte	0x307
	.uleb128 0x2
	.4byte	0xb8
	.uleb128 0x2
	.4byte	0x110
	.uleb128 0x2
	.4byte	0x92
	.uleb128 0x2
	.4byte	0xd4
	.uleb128 0x2
	.4byte	0xe2
	.uleb128 0x2
	.4byte	0x307
	.byte	0
	.uleb128 0x7
	.4byte	0xfa
	.uleb128 0x13
	.4byte	.LASF1550
	.byte	0x74
	.4byte	.LASF1552
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x363
	.uleb128 0xb
	.string	"h"
	.byte	0x75
	.byte	0x12
	.4byte	0xfa
	.4byte	.LLST15
	.4byte	.LVUS15
	.uleb128 0x14
	.4byte	.LLRL16
	.4byte	0x359
	.uleb128 0xb
	.string	"i"
	.byte	0x76
	.byte	0xe
	.4byte	0x3d
	.4byte	.LLST17
	.4byte	.LVUS17
	.uleb128 0x8
	.4byte	.LVL32
	.4byte	0x2cb
	.byte	0
	.uleb128 0x8
	.4byte	.LVL30
	.4byte	0x222
	.byte	0
	.uleb128 0x20
	.4byte	.LASF1558
	.byte	0x1
	.byte	0x5a
	.byte	0xc
	.4byte	.LASF1559
	.4byte	0xd6
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x446
	.uleb128 0x6
	.4byte	.LASF1543
	.byte	0x5a
	.byte	0x33
	.4byte	0xb8
	.4byte	.LLST8
	.4byte	.LVUS8
	.uleb128 0x6
	.4byte	.LASF1544
	.byte	0x5b
	.byte	0x2f
	.4byte	0x110
	.4byte	.LLST9
	.4byte	.LVUS9
	.uleb128 0x6
	.4byte	.LASF1545
	.byte	0x5c
	.byte	0x2c
	.4byte	0x92
	.4byte	.LLST10
	.4byte	.LVUS10
	.uleb128 0x6
	.4byte	.LASF1546
	.byte	0x5d
	.byte	0x29
	.4byte	0xd4
	.4byte	.LLST11
	.4byte	.LVUS11
	.uleb128 0x6
	.4byte	.LASF1547
	.byte	0x5e
	.byte	0x2f
	.4byte	0xe2
	.4byte	.LLST12
	.4byte	.LVUS12
	.uleb128 0x6
	.4byte	.LASF1548
	.byte	0x5f
	.byte	0x31
	.4byte	0x307
	.4byte	.LLST13
	.4byte	.LVUS13
	.uleb128 0x15
	.4byte	.LASF1549
	.byte	0x62
	.4byte	0x446
	.4byte	.LLST14
	.4byte	.LVUS14
	.uleb128 0x8
	.4byte	.LVL26
	.4byte	0x2cb
	.uleb128 0xd
	.4byte	.LVL28
	.4byte	0x2d7
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	_ZL21watchdog_task_wrapperPv
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x3
	.byte	0x72
	.sleb128 -24
	.byte	0x6
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x4
	.byte	0x72
	.sleb128 -32
	.byte	0x94
	.byte	0x2
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x3
	.byte	0x72
	.sleb128 -36
	.byte	0x6
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x3
	.byte	0x72
	.sleb128 -28
	.byte	0x6
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x3
	.byte	0x72
	.sleb128 -20
	.byte	0x6
	.byte	0
	.byte	0
	.uleb128 0x7
	.4byte	0x19b
	.uleb128 0x13
	.4byte	.LASF1551
	.byte	0x4e
	.4byte	.LASF1553
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4bc
	.uleb128 0x6
	.4byte	.LASF1554
	.byte	0x4e
	.byte	0x1f
	.4byte	0xee
	.4byte	.LLST6
	.4byte	.LVUS6
	.uleb128 0x6
	.4byte	.LASF1555
	.byte	0x4e
	.byte	0x38
	.4byte	0xee
	.4byte	.LLST7
	.4byte	.LVUS7
	.uleb128 0xd
	.4byte	.LVL21
	.4byte	0x2d7
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x5
	.byte	0x3
	.4byte	_ZL21watchdog_monitor_taskPv
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x3
	.byte	0xa
	.2byte	0x200
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5e
	.uleb128 0x1
	.byte	0x3a
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x21
	.4byte	.LASF1560
	.byte	0x1
	.byte	0x1f
	.byte	0xd
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5c4
	.uleb128 0x22
	.4byte	0xd4
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x23
	.string	"buf"
	.byte	0x1
	.byte	0x20
	.byte	0xb
	.4byte	0x1bd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x24
	.4byte	.LLRL0
	.uleb128 0xb
	.string	"now"
	.byte	0x23
	.byte	0x14
	.4byte	0xee
	.4byte	.LLST1
	.4byte	.LVUS1
	.uleb128 0x14
	.4byte	.LLRL2
	.4byte	0x5b0
	.uleb128 0xb
	.string	"i"
	.byte	0x25
	.byte	0x12
	.4byte	0x3d
	.4byte	.LLST3
	.4byte	.LVUS3
	.uleb128 0x9
	.4byte	.LVL4
	.4byte	0x2b4
	.4byte	0x52e
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x86
	.sleb128 0
	.byte	0
	.uleb128 0x9
	.4byte	.LVL5
	.4byte	0x29e
	.4byte	0x542
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x8
	.byte	0x80
	.byte	0
	.uleb128 0x9
	.4byte	.LVL6
	.4byte	0x27c
	.4byte	0x55f
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x8
	.byte	0x80
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0
	.uleb128 0x9
	.4byte	.LVL7
	.4byte	0x250
	.4byte	0x57d
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x8
	.4byte	.LVL8
	.4byte	0x23f
	.uleb128 0x9
	.4byte	.LVL9
	.4byte	0x2d7
	.4byte	0x5a6
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x2
	.byte	0x87
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x2
	.byte	0x78
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.uleb128 0x8
	.4byte	.LVL10
	.4byte	0x2cb
	.byte	0
	.uleb128 0x8
	.4byte	.LVL0
	.4byte	0x2cb
	.uleb128 0x8
	.4byte	.LVL3
	.4byte	0x22e
	.byte	0
	.byte	0
	.uleb128 0x25
	.4byte	.LASF1561
	.byte	0x1
	.byte	0x12
	.byte	0xd
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x6
	.4byte	.LASF1546
	.byte	0x12
	.byte	0x29
	.4byte	0xd4
	.4byte	.LLST4
	.4byte	.LVUS4
	.uleb128 0x15
	.4byte	.LASF1549
	.byte	0x13
	.4byte	0x446
	.4byte	.LLST5
	.4byte	.LVUS5
	.uleb128 0x8
	.4byte	.LVL14
	.4byte	0x222
	.uleb128 0xd
	.4byte	.LVL17
	.4byte	0x23f
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x49
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x7e
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 7
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
	.uleb128 0x6
	.uleb128 0x5
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
	.uleb128 0x7
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 4
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x48
	.byte	0
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x7f
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 6
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
	.uleb128 0x10
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 6
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 6
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x18
	.byte	0
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
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 6
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x21
	.sleb128 23
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1e
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
	.uleb128 0x1f
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x34
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x25
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
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x7c
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
.LVUS15:
	.uleb128 0x4
	.uleb128 0xb
	.uleb128 0xf
	.uleb128 0
.LLST15:
	.byte	0x6
	.4byte	.LVL30
	.byte	0x4
	.uleb128 .LVL30-.LVL30
	.uleb128 .LVL32-1-.LVL30
	.uleb128 0x1
	.byte	0x5a
	.byte	0x4
	.uleb128 .LVL34-.LVL30
	.uleb128 .LFE7-.LVL30
	.uleb128 0x1
	.byte	0x5a
	.byte	0
.LVUS17:
	.uleb128 0x5
	.uleb128 0x7
	.uleb128 0x7
	.uleb128 0xc
	.uleb128 0xf
	.uleb128 0x10
	.uleb128 0x10
	.uleb128 0
.LLST17:
	.byte	0x6
	.4byte	.LVL30
	.byte	0x4
	.uleb128 .LVL30-.LVL30
	.uleb128 .LVL31-.LVL30
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL31-.LVL30
	.uleb128 .LVL33-.LVL30
	.uleb128 0x1
	.byte	0x58
	.byte	0x4
	.uleb128 .LVL34-.LVL30
	.uleb128 .LVL35-.LVL30
	.uleb128 0x1
	.byte	0x58
	.byte	0x4
	.uleb128 .LVL35-.LVL30
	.uleb128 .LFE7-.LVL30
	.uleb128 0x3
	.byte	0x78
	.sleb128 -1
	.byte	0x9f
	.byte	0
.LVUS8:
	.uleb128 0
	.uleb128 0x1e
	.uleb128 0x1e
	.uleb128 0x29
	.uleb128 0x29
	.uleb128 0x2a
	.uleb128 0x2a
	.uleb128 0
.LLST8:
	.byte	0x6
	.4byte	.LVL22
	.byte	0x4
	.uleb128 .LVL22-.LVL22
	.uleb128 .LVL26-1-.LVL22
	.uleb128 0x1
	.byte	0x5a
	.byte	0x4
	.uleb128 .LVL26-1-.LVL22
	.uleb128 .LVL28-.LVL22
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
	.byte	0x4
	.uleb128 .LVL28-.LVL22
	.uleb128 .LVL29-.LVL22
	.uleb128 0x1
	.byte	0x5a
	.byte	0x4
	.uleb128 .LVL29-.LVL22
	.uleb128 .LFE6-.LVL22
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
.LVUS9:
	.uleb128 0
	.uleb128 0x1e
	.uleb128 0x1e
	.uleb128 0x28
	.uleb128 0x28
	.uleb128 0x29
	.uleb128 0x29
	.uleb128 0
.LLST9:
	.byte	0x6
	.4byte	.LVL22
	.byte	0x4
	.uleb128 .LVL22-.LVL22
	.uleb128 .LVL26-1-.LVL22
	.uleb128 0x1
	.byte	0x5b
	.byte	0x4
	.uleb128 .LVL26-1-.LVL22
	.uleb128 .LVL27-.LVL22
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x4
	.uleb128 .LVL27-.LVL22
	.uleb128 .LVL28-.LVL22
	.uleb128 0x2
	.byte	0x72
	.sleb128 -24
	.byte	0x4
	.uleb128 .LVL28-.LVL22
	.uleb128 .LFE6-.LVL22
	.uleb128 0x1
	.byte	0x5b
	.byte	0
.LVUS10:
	.uleb128 0
	.uleb128 0x1e
	.uleb128 0x1e
	.uleb128 0x28
	.uleb128 0x28
	.uleb128 0x29
	.uleb128 0x29
	.uleb128 0
.LLST10:
	.byte	0x6
	.4byte	.LVL22
	.byte	0x4
	.uleb128 .LVL22-.LVL22
	.uleb128 .LVL26-1-.LVL22
	.uleb128 0x1
	.byte	0x5c
	.byte	0x4
	.uleb128 .LVL26-1-.LVL22
	.uleb128 .LVL27-.LVL22
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0x4
	.uleb128 .LVL27-.LVL22
	.uleb128 .LVL28-.LVL22
	.uleb128 0x2
	.byte	0x72
	.sleb128 -32
	.byte	0x4
	.uleb128 .LVL28-.LVL22
	.uleb128 .LFE6-.LVL22
	.uleb128 0x1
	.byte	0x5c
	.byte	0
.LVUS11:
	.uleb128 0
	.uleb128 0x6
	.uleb128 0x6
	.uleb128 0x1e
	.uleb128 0x1e
	.uleb128 0x29
	.uleb128 0x29
	.uleb128 0
.LLST11:
	.byte	0x6
	.4byte	.LVL22
	.byte	0x4
	.uleb128 .LVL22-.LVL22
	.uleb128 .LVL23-.LVL22
	.uleb128 0x1
	.byte	0x5d
	.byte	0x4
	.uleb128 .LVL23-.LVL22
	.uleb128 .LVL26-1-.LVL22
	.uleb128 0x1
	.byte	0x56
	.byte	0x4
	.uleb128 .LVL26-1-.LVL22
	.uleb128 .LVL28-.LVL22
	.uleb128 0xa
	.byte	0xa3
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0xd
	.uleb128 0x2f
	.byte	0xa8
	.uleb128 0x36
	.byte	0xa8
	.uleb128 0
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL28-.LVL22
	.uleb128 .LFE6-.LVL22
	.uleb128 0x1
	.byte	0x5d
	.byte	0
.LVUS12:
	.uleb128 0
	.uleb128 0x1e
	.uleb128 0x1e
	.uleb128 0x28
	.uleb128 0x28
	.uleb128 0x29
	.uleb128 0x29
	.uleb128 0
.LLST12:
	.byte	0x6
	.4byte	.LVL22
	.byte	0x4
	.uleb128 .LVL22-.LVL22
	.uleb128 .LVL26-1-.LVL22
	.uleb128 0x1
	.byte	0x5e
	.byte	0x4
	.uleb128 .LVL26-1-.LVL22
	.uleb128 .LVL27-.LVL22
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0x4
	.uleb128 .LVL27-.LVL22
	.uleb128 .LVL28-.LVL22
	.uleb128 0x2
	.byte	0x72
	.sleb128 -28
	.byte	0x4
	.uleb128 .LVL28-.LVL22
	.uleb128 .LFE6-.LVL22
	.uleb128 0x1
	.byte	0x5e
	.byte	0
.LVUS13:
	.uleb128 0
	.uleb128 0x1e
	.uleb128 0x1e
	.uleb128 0x28
	.uleb128 0x28
	.uleb128 0x29
	.uleb128 0x29
	.uleb128 0
.LLST13:
	.byte	0x6
	.4byte	.LVL22
	.byte	0x4
	.uleb128 .LVL22-.LVL22
	.uleb128 .LVL26-1-.LVL22
	.uleb128 0x1
	.byte	0x5f
	.byte	0x4
	.uleb128 .LVL26-1-.LVL22
	.uleb128 .LVL27-.LVL22
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x4
	.uleb128 .LVL27-.LVL22
	.uleb128 .LVL28-.LVL22
	.uleb128 0x2
	.byte	0x72
	.sleb128 -20
	.byte	0x4
	.uleb128 .LVL28-.LVL22
	.uleb128 .LFE6-.LVL22
	.uleb128 0x1
	.byte	0x5f
	.byte	0
.LVUS14:
	.uleb128 0x8
	.uleb128 0xa
.LLST14:
	.byte	0x8
	.4byte	.LVL24
	.uleb128 .LVL25-.LVL24
	.uleb128 0xf
	.byte	0x81
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x8
	.byte	0x24
	.byte	0x1e
	.byte	0x3
	.4byte	_ZL7g_tasks
	.byte	0x22
	.byte	0x9f
	.byte	0
.LVUS6:
	.uleb128 0
	.uleb128 0x7
	.uleb128 0x7
	.uleb128 0xa
	.uleb128 0xa
	.uleb128 0
.LLST6:
	.byte	0x6
	.4byte	.LVL18
	.byte	0x4
	.uleb128 .LVL18-.LVL18
	.uleb128 .LVL19-.LVL18
	.uleb128 0x1
	.byte	0x5a
	.byte	0x4
	.uleb128 .LVL19-.LVL18
	.uleb128 .LVL21-1-.LVL18
	.uleb128 0x5
	.byte	0x3
	.4byte	_ZL14g_check_period
	.byte	0x4
	.uleb128 .LVL21-1-.LVL18
	.uleb128 .LFE5-.LVL18
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
.LVUS7:
	.uleb128 0
	.uleb128 0x8
	.uleb128 0x8
	.uleb128 0xa
	.uleb128 0xa
	.uleb128 0
.LLST7:
	.byte	0x6
	.4byte	.LVL18
	.byte	0x4
	.uleb128 .LVL18-.LVL18
	.uleb128 .LVL20-.LVL18
	.uleb128 0x1
	.byte	0x5b
	.byte	0x4
	.uleb128 .LVL20-.LVL18
	.uleb128 .LVL21-1-.LVL18
	.uleb128 0x5
	.byte	0x3
	.4byte	_ZL9g_timeout
	.byte	0x4
	.uleb128 .LVL21-1-.LVL18
	.uleb128 .LFE5-.LVL18
	.uleb128 0xa
	.byte	0xa3
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0xb
	.uleb128 0x2f
	.byte	0xa8
	.uleb128 0x36
	.byte	0xa8
	.uleb128 0
	.byte	0x9f
	.byte	0
.LVUS1:
	.uleb128 0xc
	.uleb128 0x10
	.uleb128 0x10
	.uleb128 0
.LLST1:
	.byte	0x6
	.4byte	.LVL1
	.byte	0x4
	.uleb128 .LVL1-.LVL1
	.uleb128 .LVL2-.LVL1
	.uleb128 0x1
	.byte	0x5a
	.byte	0x4
	.uleb128 .LVL2-.LVL1
	.uleb128 .LFE4-.LVL1
	.uleb128 0x1
	.byte	0x68
	.byte	0
.LVUS3:
	.uleb128 0xd
	.uleb128 0x10
	.uleb128 0x10
	.uleb128 0
.LLST3:
	.byte	0x6
	.4byte	.LVL1
	.byte	0x4
	.uleb128 .LVL1-.LVL1
	.uleb128 .LVL2-.LVL1
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL2-.LVL1
	.uleb128 .LFE4-.LVL1
	.uleb128 0x1
	.byte	0x59
	.byte	0
.LVUS4:
	.uleb128 0
	.uleb128 0x6
	.uleb128 0x6
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0
.LLST4:
	.byte	0x6
	.4byte	.LVL12
	.byte	0x4
	.uleb128 .LVL12-.LVL12
	.uleb128 .LVL14-1-.LVL12
	.uleb128 0x1
	.byte	0x5a
	.byte	0x4
	.uleb128 .LVL14-1-.LVL12
	.uleb128 .LVL16-.LVL12
	.uleb128 0x1
	.byte	0x58
	.byte	0x4
	.uleb128 .LVL16-.LVL12
	.uleb128 .LFE3-.LVL12
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
.LVUS5:
	.uleb128 0x4
	.uleb128 0x6
	.uleb128 0x6
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0
.LLST5:
	.byte	0x6
	.4byte	.LVL13
	.byte	0x4
	.uleb128 .LVL13-.LVL13
	.uleb128 .LVL14-1-.LVL13
	.uleb128 0x1
	.byte	0x5a
	.byte	0x4
	.uleb128 .LVL14-1-.LVL13
	.uleb128 .LVL16-.LVL13
	.uleb128 0x1
	.byte	0x58
	.byte	0x4
	.uleb128 .LVL16-.LVL13
	.uleb128 .LFE3-.LVL13
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
.Ldebug_loc3:
	.section	.debug_aranges,"",@progbits
	.4byte	0x3c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
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
	.byte	0x5
	.4byte	.LBB2
	.byte	0x4
	.uleb128 .LBB2-.LBB2
	.uleb128 .LBE2-.LBB2
	.byte	0x4
	.uleb128 .LBB8-.LBB2
	.uleb128 .LBE8-.LBB2
	.byte	0x4
	.uleb128 .LBB9-.LBB2
	.uleb128 .LBE9-.LBB2
	.byte	0x4
	.uleb128 .LBB10-.LBB2
	.uleb128 .LBE10-.LBB2
	.byte	0x4
	.uleb128 .LBB11-.LBB2
	.uleb128 .LBE11-.LBB2
	.byte	0
.LLRL2:
	.byte	0x5
	.4byte	.LBB3
	.byte	0x4
	.uleb128 .LBB3-.LBB3
	.uleb128 .LBE3-.LBB3
	.byte	0x4
	.uleb128 .LBB4-.LBB3
	.uleb128 .LBE4-.LBB3
	.byte	0x4
	.uleb128 .LBB5-.LBB3
	.uleb128 .LBE5-.LBB3
	.byte	0x4
	.uleb128 .LBB6-.LBB3
	.uleb128 .LBE6-.LBB3
	.byte	0x4
	.uleb128 .LBB7-.LBB3
	.uleb128 .LBE7-.LBB3
	.byte	0
.LLRL16:
	.byte	0x5
	.4byte	.LBB12
	.byte	0x4
	.uleb128 .LBB12-.LBB12
	.uleb128 .LBE12-.LBB12
	.byte	0x4
	.uleb128 .LBB13-.LBB12
	.uleb128 .LBE13-.LBB12
	.byte	0
.LLRL18:
	.byte	0x7
	.4byte	.LFB4
	.uleb128 .LFE4-.LFB4
	.byte	0x7
	.4byte	.LFB3
	.uleb128 .LFE3-.LFB3
	.byte	0x7
	.4byte	.LFB5
	.uleb128 .LFE5-.LFB5
	.byte	0x7
	.4byte	.LFB6
	.uleb128 .LFE6-.LFB6
	.byte	0x7
	.4byte	.LFB7
	.uleb128 .LFE7-.LFB7
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
	.uleb128 0x7
	.byte	0x3
	.uleb128 0x2
	.uleb128 0xb
	.byte	0x5
	.uleb128 0x1d
	.4byte	.LASF465
	.byte	0x3
	.uleb128 0x22
	.uleb128 0x2
	.byte	0x7
	.4byte	.Ldebug_macro2
	.byte	0x4
	.byte	0x3
	.uleb128 0x31
	.uleb128 0xc
	.byte	0x3
	.uleb128 0xe
	.uleb128 0x3
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
	.uleb128 0x4
	.byte	0x7
	.4byte	.Ldebug_macro6
	.byte	0x4
	.byte	0x3
	.uleb128 0x3e
	.uleb128 0xa
	.byte	0x5
	.uleb128 0x21
	.4byte	.LASF849
	.byte	0x3
	.uleb128 0x2d
	.uleb128 0xf
	.byte	0x5
	.uleb128 0x1d
	.4byte	.LASF850
	.byte	0x4
	.byte	0x3
	.uleb128 0x34
	.uleb128 0x5
	.byte	0x7
	.4byte	.Ldebug_macro7
	.byte	0x4
	.byte	0x7
	.4byte	.Ldebug_macro8
	.byte	0x3
	.uleb128 0x63
	.uleb128 0x10
	.byte	0x7
	.4byte	.Ldebug_macro9
	.byte	0x4
	.byte	0x4
	.byte	0x7
	.4byte	.Ldebug_macro10
	.byte	0x4
	.byte	0x3
	.uleb128 0x3
	.uleb128 0x6
	.byte	0x5
	.uleb128 0x1e
	.4byte	.LASF1067
	.byte	0x3
	.uleb128 0x24
	.uleb128 0x11
	.byte	0x7
	.4byte	.Ldebug_macro11
	.byte	0x4
	.byte	0x7
	.4byte	.Ldebug_macro12
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0x4
	.uleb128 0x8
	.byte	0x5
	.uleb128 0x1e
	.4byte	.LASF1120
	.byte	0x3
	.uleb128 0x28
	.uleb128 0x6
	.byte	0x4
	.byte	0x7
	.4byte	.Ldebug_macro13
	.byte	0x4
	.byte	0x3
	.uleb128 0x5
	.uleb128 0x9
	.byte	0x5
	.uleb128 0x1b
	.4byte	.LASF1141
	.byte	0x3
	.uleb128 0x1d
	.uleb128 0x12
	.byte	0x5
	.uleb128 0x8
	.4byte	.LASF1142
	.byte	0x3
	.uleb128 0xa
	.uleb128 0x13
	.byte	0x5
	.uleb128 0x7
	.4byte	.LASF1143
	.byte	0x3
	.uleb128 0xa
	.uleb128 0x14
	.byte	0x7
	.4byte	.Ldebug_macro14
	.byte	0x4
	.byte	0x7
	.4byte	.Ldebug_macro15
	.byte	0x4
	.byte	0x3
	.uleb128 0xb
	.uleb128 0x15
	.byte	0x5
	.uleb128 0x2
	.4byte	.LASF1163
	.byte	0x3
	.uleb128 0x4
	.uleb128 0x16
	.byte	0x7
	.4byte	.Ldebug_macro16
	.byte	0x4
	.byte	0x3
	.uleb128 0x5
	.uleb128 0x17
	.byte	0x7
	.4byte	.Ldebug_macro17
	.byte	0x4
	.byte	0x7
	.4byte	.Ldebug_macro18
	.byte	0x4
	.byte	0x7
	.4byte	.Ldebug_macro19
	.byte	0x4
	.byte	0x7
	.4byte	.Ldebug_macro20
	.byte	0x3
	.uleb128 0x23
	.uleb128 0x18
	.byte	0x5
	.uleb128 0x2b
	.4byte	.LASF1200
	.byte	0x3
	.uleb128 0x2d
	.uleb128 0x19
	.byte	0x7
	.4byte	.Ldebug_macro21
	.byte	0x4
	.byte	0x3
	.uleb128 0x2f
	.uleb128 0x2
	.byte	0x7
	.4byte	.Ldebug_macro22
	.byte	0x4
	.byte	0x7
	.4byte	.Ldebug_macro23
	.byte	0x4
	.byte	0x3
	.uleb128 0x24
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.uleb128 0x27
	.4byte	.LASF1345
	.byte	0x3
	.uleb128 0x28
	.uleb128 0x1a
	.byte	0x7
	.4byte	.Ldebug_macro24
	.byte	0x4
	.byte	0x3
	.uleb128 0x3c
	.uleb128 0x1b
	.byte	0x5
	.uleb128 0xb
	.4byte	.LASF1348
	.byte	0x3
	.uleb128 0xd
	.uleb128 0x12
	.byte	0x4
	.byte	0x3
	.uleb128 0xe
	.uleb128 0x2
	.byte	0x4
	.byte	0x3
	.uleb128 0x10
	.uleb128 0x1c
	.byte	0x7
	.4byte	.Ldebug_macro25
	.byte	0x3
	.uleb128 0x18
	.uleb128 0x2
	.byte	0x7
	.4byte	.Ldebug_macro26
	.byte	0x4
	.byte	0x3
	.uleb128 0x1b
	.uleb128 0x1d
	.byte	0x5
	.uleb128 0x6
	.4byte	.LASF1353
	.byte	0x4
	.byte	0x7
	.4byte	.Ldebug_macro27
	.byte	0x4
	.byte	0x7
	.4byte	.Ldebug_macro28
	.byte	0x3
	.uleb128 0x23
	.uleb128 0x1e
	.byte	0x7
	.4byte	.Ldebug_macro29
	.byte	0x4
	.byte	0x7
	.4byte	.Ldebug_macro30
	.byte	0x4
	.byte	0x7
	.4byte	.Ldebug_macro31
	.byte	0x3
	.uleb128 0x55
	.uleb128 0x1f
	.byte	0x7
	.4byte	.Ldebug_macro32
	.byte	0x4
	.byte	0x7
	.4byte	.Ldebug_macro33
	.byte	0x4
	.byte	0x3
	.uleb128 0x6
	.uleb128 0x20
	.byte	0x7
	.4byte	.Ldebug_macro34
	.byte	0x3
	.uleb128 0x11
	.uleb128 0x2
	.byte	0x7
	.4byte	.Ldebug_macro22
	.byte	0x4
	.byte	0x3
	.uleb128 0xaf
	.uleb128 0x21
	.byte	0x5
	.uleb128 0xd
	.4byte	.LASF1493
	.byte	0x4
	.byte	0x4
	.byte	0x5
	.uleb128 0x8
	.4byte	.LASF1494
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
	.section	.debug_macro,"G",@progbits,wm4.queue.h.65.5cfda75f97b5241982017c22e16a9785,comdat
.Ldebug_macro13:
	.2byte	0x5
	.byte	0
	.byte	0x5
	.uleb128 0x41
	.4byte	.LASF1121
	.byte	0x5
	.uleb128 0x42
	.4byte	.LASF1122
	.byte	0x5
	.uleb128 0x43
	.4byte	.LASF1123
	.byte	0x5
	.uleb128 0x46
	.4byte	.LASF1124
	.byte	0x5
	.uleb128 0x47
	.4byte	.LASF1125
	.byte	0x5
	.uleb128 0x48
	.4byte	.LASF1126
	.byte	0x5
	.uleb128 0x49
	.4byte	.LASF1127
	.byte	0x5
	.uleb128 0x4a
	.4byte	.LASF1128
	.byte	0x5
	.uleb128 0x4b
	.4byte	.LASF1129
	.byte	0x5
	.uleb128 0x92
	.4byte	.LASF1130
	.byte	0x5
	.uleb128 0xe8
	.4byte	.LASF1131
	.byte	0x5
	.uleb128 0x139
	.4byte	.LASF1132
	.byte	0x5
	.uleb128 0x18b
	.4byte	.LASF1133
	.byte	0x5
	.uleb128 0x1df
	.4byte	.LASF1134
	.byte	0x5
	.uleb128 0x232
	.4byte	.LASF1135
	.byte	0x5
	.uleb128 0x3d8
	.4byte	.LASF1136
	.byte	0x5
	.uleb128 0x41f
	.4byte	.LASF1137
	.byte	0x5
	.uleb128 0x476
	.4byte	.LASF1138
	.byte	0x5
	.uleb128 0x4c0
	.4byte	.LASF1139
	.byte	0x5
	.uleb128 0x599
	.4byte	.LASF1140
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4._newlib_version.h.4.411db44ea2338a62eca2f0777f81481b,comdat
.Ldebug_macro14:
	.2byte	0x5
	.byte	0
	.byte	0x5
	.uleb128 0x4
	.4byte	.LASF1144
	.byte	0x5
	.uleb128 0x6
	.4byte	.LASF1145
	.byte	0x5
	.uleb128 0x7
	.4byte	.LASF1146
	.byte	0x5
	.uleb128 0x8
	.4byte	.LASF1147
	.byte	0x5
	.uleb128 0x9
	.4byte	.LASF1148
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.newlib.h.33.804eb44b5bf18527c22c557ff390bf46,comdat
.Ldebug_macro15:
	.2byte	0x5
	.byte	0
	.byte	0x5
	.uleb128 0x21
	.4byte	.LASF1149
	.byte	0x5
	.uleb128 0x24
	.4byte	.LASF1150
	.byte	0x5
	.uleb128 0x27
	.4byte	.LASF1151
	.byte	0x5
	.uleb128 0x2b
	.4byte	.LASF1152
	.byte	0x5
	.uleb128 0x2e
	.4byte	.LASF1153
	.byte	0x5
	.uleb128 0x16c
	.4byte	.LASF1154
	.byte	0x5
	.uleb128 0x177
	.4byte	.LASF1155
	.byte	0x5
	.uleb128 0x17d
	.4byte	.LASF1156
	.byte	0x5
	.uleb128 0x181
	.4byte	.LASF1157
	.byte	0x5
	.uleb128 0x185
	.4byte	.LASF1158
	.byte	0x5
	.uleb128 0x189
	.4byte	.LASF1159
	.byte	0x5
	.uleb128 0x19a
	.4byte	.LASF1160
	.byte	0x5
	.uleb128 0x19d
	.4byte	.LASF1161
	.byte	0x5
	.uleb128 0x1a3
	.4byte	.LASF1162
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.ieeefp.h.219.061d80f28e4e7f23102a52bd7bdcd857,comdat
.Ldebug_macro16:
	.2byte	0x5
	.byte	0
	.byte	0x5
	.uleb128 0xdb
	.4byte	.LASF1164
	.byte	0x5
	.uleb128 0xde
	.4byte	.LASF1165
	.byte	0x5
	.uleb128 0xe3
	.4byte	.LASF1166
	.byte	0x5
	.uleb128 0x20a
	.4byte	.LASF1167
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.features.h.22.b896a78ba1a401b66be596fbd667b335,comdat
.Ldebug_macro17:
	.2byte	0x5
	.byte	0
	.byte	0x5
	.uleb128 0x16
	.4byte	.LASF1168
	.byte	0x5
	.uleb128 0x21
	.4byte	.LASF1169
	.byte	0x5
	.uleb128 0x28
	.4byte	.LASF1170
	.byte	0x5
	.uleb128 0x103
	.4byte	.LASF1171
	.byte	0x5
	.uleb128 0x109
	.4byte	.LASF1172
	.byte	0x5
	.uleb128 0x10f
	.4byte	.LASF1173
	.byte	0x5
	.uleb128 0x114
	.4byte	.LASF1174
	.byte	0x5
	.uleb128 0x122
	.4byte	.LASF1175
	.byte	0x5
	.uleb128 0x128
	.4byte	.LASF1176
	.byte	0x5
	.uleb128 0x138
	.4byte	.LASF1177
	.byte	0x5
	.uleb128 0x13e
	.4byte	.LASF1178
	.byte	0x5
	.uleb128 0x14c
	.4byte	.LASF1179
	.byte	0x5
	.uleb128 0x158
	.4byte	.LASF1180
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.config.h.83.e34149fe91003a78bfbd7fc7c574422a,comdat
.Ldebug_macro18:
	.2byte	0x5
	.byte	0
	.byte	0x5
	.uleb128 0x53
	.4byte	.LASF1181
	.byte	0x5
	.uleb128 0xe0
	.4byte	.LASF1182
	.byte	0x6
	.uleb128 0xe6
	.4byte	.LASF1183
	.byte	0x5
	.uleb128 0xea
	.4byte	.LASF1184
	.byte	0x5
	.uleb128 0xf8
	.4byte	.LASF1185
	.byte	0x5
	.uleb128 0xfc
	.4byte	.LASF1186
	.byte	0x5
	.uleb128 0x109
	.4byte	.LASF1187
	.byte	0x5
	.uleb128 0x122
	.4byte	.LASF1188
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4._ansi.h.21.5136fa2a01d1fcd44a2e65c6c2417611,comdat
.Ldebug_macro19:
	.2byte	0x5
	.byte	0
	.byte	0x5
	.uleb128 0x15
	.4byte	.LASF1189
	.byte	0x5
	.uleb128 0x16
	.4byte	.LASF1190
	.byte	0x5
	.uleb128 0x19
	.4byte	.LASF1191
	.byte	0x5
	.uleb128 0x25
	.4byte	.LASF1192
	.byte	0x5
	.uleb128 0x2b
	.4byte	.LASF1193
	.byte	0x5
	.uleb128 0x45
	.4byte	.LASF1194
	.byte	0x5
	.uleb128 0x49
	.4byte	.LASF1195
	.byte	0x5
	.uleb128 0x4a
	.4byte	.LASF1196
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.stdio.h.31.7c0e28c411445f3f9c5b11accf882760,comdat
.Ldebug_macro20:
	.2byte	0x5
	.byte	0
	.byte	0x5
	.uleb128 0x1f
	.4byte	.LASF1197
	.byte	0x5
	.uleb128 0x21
	.4byte	.LASF1198
	.byte	0x5
	.uleb128 0x22
	.4byte	.LASF1199
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4._default_types.h.6.959254cf5f09734ea7516c89e8bb21bd,comdat
.Ldebug_macro21:
	.2byte	0x5
	.byte	0
	.byte	0x5
	.uleb128 0x6
	.4byte	.LASF1201
	.byte	0x5
	.uleb128 0xf
	.4byte	.LASF1202
	.byte	0x5
	.uleb128 0x1a
	.4byte	.LASF1203
	.byte	0x5
	.uleb128 0x21
	.4byte	.LASF1204
	.byte	0x5
	.uleb128 0x2f
	.4byte	.LASF1205
	.byte	0x5
	.uleb128 0x3d
	.4byte	.LASF1206
	.byte	0x5
	.uleb128 0x53
	.4byte	.LASF1207
	.byte	0x5
	.uleb128 0x6d
	.4byte	.LASF1208
	.byte	0x5
	.uleb128 0x8c
	.4byte	.LASF1209
	.byte	0x5
	.uleb128 0xa6
	.4byte	.LASF1210
	.byte	0x5
	.uleb128 0xbc
	.4byte	.LASF1211
	.byte	0x5
	.uleb128 0xce
	.4byte	.LASF1212
	.byte	0x6
	.uleb128 0xf4
	.4byte	.LASF1213
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.stddef.h.173.7770149e60552f73dd7310299f539ffc,comdat
.Ldebug_macro22:
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
.Ldebug_macro23:
	.2byte	0x5
	.byte	0
	.byte	0x5
	.uleb128 0x31
	.4byte	.LASF1214
	.byte	0x5
	.uleb128 0x32
	.4byte	.LASF1215
	.byte	0x5
	.uleb128 0x33
	.4byte	.LASF1216
	.byte	0x5
	.uleb128 0x36
	.4byte	.LASF1217
	.byte	0x5
	.uleb128 0x39
	.4byte	.LASF1218
	.byte	0x5
	.uleb128 0x3a
	.4byte	.LASF1219
	.byte	0x5
	.uleb128 0x3c
	.4byte	.LASF1220
	.byte	0x5
	.uleb128 0x3d
	.4byte	.LASF1221
	.byte	0x5
	.uleb128 0x3e
	.4byte	.LASF1222
	.byte	0x5
	.uleb128 0x3f
	.4byte	.LASF1223
	.byte	0x5
	.uleb128 0x42
	.4byte	.LASF1224
	.byte	0x5
	.uleb128 0x43
	.4byte	.LASF1225
	.byte	0x5
	.uleb128 0x44
	.4byte	.LASF1226
	.byte	0x5
	.uleb128 0x5b
	.4byte	.LASF1227
	.byte	0x5
	.uleb128 0x5c
	.4byte	.LASF1228
	.byte	0x5
	.uleb128 0x6b
	.4byte	.LASF1229
	.byte	0x5
	.uleb128 0x6c
	.4byte	.LASF1230
	.byte	0x5
	.uleb128 0x70
	.4byte	.LASF1231
	.byte	0x5
	.uleb128 0x71
	.4byte	.LASF1232
	.byte	0x5
	.uleb128 0x73
	.4byte	.LASF1233
	.byte	0x5
	.uleb128 0x75
	.4byte	.LASF1234
	.byte	0x5
	.uleb128 0x78
	.4byte	.LASF1235
	.byte	0x5
	.uleb128 0x79
	.4byte	.LASF1236
	.byte	0x5
	.uleb128 0x7a
	.4byte	.LASF1237
	.byte	0x5
	.uleb128 0x7d
	.4byte	.LASF1238
	.byte	0x5
	.uleb128 0x82
	.4byte	.LASF1239
	.byte	0x5
	.uleb128 0x84
	.4byte	.LASF1240
	.byte	0x5
	.uleb128 0x85
	.4byte	.LASF1241
	.byte	0x5
	.uleb128 0x87
	.4byte	.LASF1242
	.byte	0x5
	.uleb128 0x8a
	.4byte	.LASF1243
	.byte	0x5
	.uleb128 0x8b
	.4byte	.LASF1244
	.byte	0x5
	.uleb128 0x8c
	.4byte	.LASF1245
	.byte	0x5
	.uleb128 0x8e
	.4byte	.LASF1246
	.byte	0x5
	.uleb128 0x8f
	.4byte	.LASF1247
	.byte	0x5
	.uleb128 0x91
	.4byte	.LASF1248
	.byte	0x5
	.uleb128 0x93
	.4byte	.LASF1249
	.byte	0x5
	.uleb128 0xa4
	.4byte	.LASF1250
	.byte	0x5
	.uleb128 0xa5
	.4byte	.LASF1251
	.byte	0x5
	.uleb128 0xa6
	.4byte	.LASF1252
	.byte	0x5
	.uleb128 0xa7
	.4byte	.LASF1253
	.byte	0x5
	.uleb128 0xa8
	.4byte	.LASF1254
	.byte	0x5
	.uleb128 0xaa
	.4byte	.LASF1255
	.byte	0x5
	.uleb128 0xab
	.4byte	.LASF1256
	.byte	0x5
	.uleb128 0xac
	.4byte	.LASF1257
	.byte	0x5
	.uleb128 0xae
	.4byte	.LASF1258
	.byte	0x5
	.uleb128 0xd9
	.4byte	.LASF1259
	.byte	0x5
	.uleb128 0xe6
	.4byte	.LASF1260
	.byte	0x5
	.uleb128 0xe7
	.4byte	.LASF1261
	.byte	0x5
	.uleb128 0xe8
	.4byte	.LASF1262
	.byte	0x5
	.uleb128 0xe9
	.4byte	.LASF1263
	.byte	0x5
	.uleb128 0xea
	.4byte	.LASF1264
	.byte	0x5
	.uleb128 0xeb
	.4byte	.LASF1265
	.byte	0x5
	.uleb128 0xec
	.4byte	.LASF1266
	.byte	0x5
	.uleb128 0xef
	.4byte	.LASF1267
	.byte	0x5
	.uleb128 0xf0
	.4byte	.LASF1268
	.byte	0x5
	.uleb128 0xf6
	.4byte	.LASF1269
	.byte	0x5
	.uleb128 0x108
	.4byte	.LASF1270
	.byte	0x5
	.uleb128 0x110
	.4byte	.LASF1271
	.byte	0x5
	.uleb128 0x11f
	.4byte	.LASF1272
	.byte	0x5
	.uleb128 0x127
	.4byte	.LASF1273
	.byte	0x5
	.uleb128 0x13c
	.4byte	.LASF1274
	.byte	0x5
	.uleb128 0x166
	.4byte	.LASF1275
	.byte	0x5
	.uleb128 0x16a
	.4byte	.LASF1276
	.byte	0x5
	.uleb128 0x16b
	.4byte	.LASF1277
	.byte	0x5
	.uleb128 0x172
	.4byte	.LASF1278
	.byte	0x5
	.uleb128 0x178
	.4byte	.LASF1279
	.byte	0x5
	.uleb128 0x17e
	.4byte	.LASF1280
	.byte	0x5
	.uleb128 0x17f
	.4byte	.LASF1281
	.byte	0x5
	.uleb128 0x186
	.4byte	.LASF1282
	.byte	0x5
	.uleb128 0x187
	.4byte	.LASF1283
	.byte	0x5
	.uleb128 0x18e
	.4byte	.LASF1284
	.byte	0x5
	.uleb128 0x194
	.4byte	.LASF1285
	.byte	0x5
	.uleb128 0x1b0
	.4byte	.LASF1286
	.byte	0x5
	.uleb128 0x1d4
	.4byte	.LASF1287
	.byte	0x5
	.uleb128 0x1d5
	.4byte	.LASF1288
	.byte	0x5
	.uleb128 0x1dc
	.4byte	.LASF1289
	.byte	0x5
	.uleb128 0x1dd
	.4byte	.LASF1290
	.byte	0x5
	.uleb128 0x1e0
	.4byte	.LASF1291
	.byte	0x5
	.uleb128 0x1ea
	.4byte	.LASF1292
	.byte	0x5
	.uleb128 0x1eb
	.4byte	.LASF1293
	.byte	0x5
	.uleb128 0x1f5
	.4byte	.LASF1294
	.byte	0x5
	.uleb128 0x20b
	.4byte	.LASF1295
	.byte	0x5
	.uleb128 0x20d
	.4byte	.LASF1296
	.byte	0x5
	.uleb128 0x20f
	.4byte	.LASF1297
	.byte	0x5
	.uleb128 0x210
	.4byte	.LASF1298
	.byte	0x5
	.uleb128 0x212
	.4byte	.LASF1299
	.byte	0x5
	.uleb128 0x21c
	.4byte	.LASF1300
	.byte	0x5
	.uleb128 0x220
	.4byte	.LASF1301
	.byte	0x5
	.uleb128 0x224
	.4byte	.LASF1302
	.byte	0x5
	.uleb128 0x227
	.4byte	.LASF1303
	.byte	0x5
	.uleb128 0x22b
	.4byte	.LASF1304
	.byte	0x5
	.uleb128 0x22d
	.4byte	.LASF1305
	.byte	0x5
	.uleb128 0x250
	.4byte	.LASF1306
	.byte	0x5
	.uleb128 0x254
	.4byte	.LASF1307
	.byte	0x5
	.uleb128 0x258
	.4byte	.LASF1308
	.byte	0x5
	.uleb128 0x25c
	.4byte	.LASF1309
	.byte	0x5
	.uleb128 0x260
	.4byte	.LASF1310
	.byte	0x5
	.uleb128 0x264
	.4byte	.LASF1311
	.byte	0x5
	.uleb128 0x268
	.4byte	.LASF1312
	.byte	0x5
	.uleb128 0x26c
	.4byte	.LASF1313
	.byte	0x5
	.uleb128 0x273
	.4byte	.LASF1314
	.byte	0x5
	.uleb128 0x274
	.4byte	.LASF1315
	.byte	0x5
	.uleb128 0x275
	.4byte	.LASF1316
	.byte	0x5
	.uleb128 0x276
	.4byte	.LASF1317
	.byte	0x5
	.uleb128 0x277
	.4byte	.LASF1318
	.byte	0x5
	.uleb128 0x28c
	.4byte	.LASF1319
	.byte	0x5
	.uleb128 0x28d
	.4byte	.LASF1320
	.byte	0x5
	.uleb128 0x29f
	.4byte	.LASF1321
	.byte	0x5
	.uleb128 0x2a5
	.4byte	.LASF1322
	.byte	0x5
	.uleb128 0x2a8
	.4byte	.LASF1323
	.byte	0x5
	.uleb128 0x2aa
	.4byte	.LASF1324
	.byte	0x5
	.uleb128 0x2ae
	.4byte	.LASF1325
	.byte	0x5
	.uleb128 0x2b0
	.4byte	.LASF1326
	.byte	0x5
	.uleb128 0x2b4
	.4byte	.LASF1327
	.byte	0x5
	.uleb128 0x2b7
	.4byte	.LASF1328
	.byte	0x5
	.uleb128 0x2b9
	.4byte	.LASF1329
	.byte	0x5
	.uleb128 0x2bd
	.4byte	.LASF1330
	.byte	0x5
	.uleb128 0x2bf
	.4byte	.LASF1331
	.byte	0x5
	.uleb128 0x2c1
	.4byte	.LASF1332
	.byte	0x5
	.uleb128 0x2c5
	.4byte	.LASF1333
	.byte	0x5
	.uleb128 0x2d6
	.4byte	.LASF1334
	.byte	0x5
	.uleb128 0x2d7
	.4byte	.LASF1335
	.byte	0x5
	.uleb128 0x2d8
	.4byte	.LASF1336
	.byte	0x5
	.uleb128 0x2dc
	.4byte	.LASF1337
	.byte	0x5
	.uleb128 0x2dd
	.4byte	.LASF1338
	.byte	0x5
	.uleb128 0x2e2
	.4byte	.LASF1339
	.byte	0x5
	.uleb128 0x2e6
	.4byte	.LASF1340
	.byte	0x5
	.uleb128 0x2ea
	.4byte	.LASF1341
	.byte	0x5
	.uleb128 0x2ee
	.4byte	.LASF1342
	.byte	0x5
	.uleb128 0x2ef
	.4byte	.LASF1343
	.byte	0x5
	.uleb128 0x2f0
	.4byte	.LASF1344
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.stdarg.h.34.3a23a216c0c293b3d2ea2e89281481e6,comdat
.Ldebug_macro24:
	.2byte	0x5
	.byte	0
	.byte	0x6
	.uleb128 0x22
	.4byte	.LASF1346
	.byte	0x5
	.uleb128 0x27
	.4byte	.LASF1347
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4._types.h.20.dd0d04dca3800a0d2a6129b87f3adbb2,comdat
.Ldebug_macro25:
	.2byte	0x5
	.byte	0
	.byte	0x5
	.uleb128 0x14
	.4byte	.LASF1349
	.byte	0x5
	.uleb128 0x16
	.4byte	.LASF1198
	.byte	0x5
	.uleb128 0x17
	.4byte	.LASF1350
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.stddef.h.173.246a22758295863db6041dfca29b1cb2,comdat
.Ldebug_macro26:
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
	.4byte	.LASF1351
	.byte	0x6
	.uleb128 0x178
	.4byte	.LASF1352
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
.Ldebug_macro27:
	.2byte	0x5
	.byte	0
	.byte	0x6
	.uleb128 0x7f
	.4byte	.LASF1354
	.byte	0x5
	.uleb128 0x92
	.4byte	.LASF1355
	.byte	0x6
	.uleb128 0x94
	.4byte	.LASF1356
	.byte	0x5
	.uleb128 0xb3
	.4byte	.LASF1357
	.byte	0x5
	.uleb128 0xbb
	.4byte	.LASF1358
	.byte	0x5
	.uleb128 0xc0
	.4byte	.LASF1359
	.byte	0x5
	.uleb128 0xc9
	.4byte	.LASF1360
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.reent.h.18.25503cdc8b7e55dd0d6ea7b3e5af7a03,comdat
.Ldebug_macro28:
	.2byte	0x5
	.byte	0
	.byte	0x5
	.uleb128 0x12
	.4byte	.LASF1361
	.byte	0x5
	.uleb128 0x16
	.4byte	.LASF1362
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.lock.h.2.c0958401bd0ce484d507ee19aacab817,comdat
.Ldebug_macro29:
	.2byte	0x5
	.byte	0
	.byte	0x5
	.uleb128 0x2
	.4byte	.LASF1363
	.byte	0x5
	.uleb128 0xe
	.4byte	.LASF1364
	.byte	0x5
	.uleb128 0xf
	.4byte	.LASF1365
	.byte	0x5
	.uleb128 0x10
	.4byte	.LASF1366
	.byte	0x5
	.uleb128 0x11
	.4byte	.LASF1367
	.byte	0x5
	.uleb128 0x12
	.4byte	.LASF1368
	.byte	0x5
	.uleb128 0x13
	.4byte	.LASF1369
	.byte	0x5
	.uleb128 0x14
	.4byte	.LASF1370
	.byte	0x5
	.uleb128 0x15
	.4byte	.LASF1371
	.byte	0x5
	.uleb128 0x16
	.4byte	.LASF1372
	.byte	0x5
	.uleb128 0x17
	.4byte	.LASF1373
	.byte	0x5
	.uleb128 0x18
	.4byte	.LASF1374
	.byte	0x5
	.uleb128 0x19
	.4byte	.LASF1375
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.reent.h.78.7f0775353a33c852a1479c008f68cd03,comdat
.Ldebug_macro30:
	.2byte	0x5
	.byte	0
	.byte	0x5
	.uleb128 0x4e
	.4byte	.LASF1376
	.byte	0x5
	.uleb128 0x6a
	.4byte	.LASF1377
	.byte	0x5
	.uleb128 0x92
	.4byte	.LASF1378
	.byte	0x5
	.uleb128 0x12b
	.4byte	.LASF1379
	.byte	0x5
	.uleb128 0x12c
	.4byte	.LASF1380
	.byte	0x5
	.uleb128 0x12d
	.4byte	.LASF1381
	.byte	0x5
	.uleb128 0x12e
	.4byte	.LASF1382
	.byte	0x5
	.uleb128 0x12f
	.4byte	.LASF1383
	.byte	0x5
	.uleb128 0x130
	.4byte	.LASF1384
	.byte	0x5
	.uleb128 0x131
	.4byte	.LASF1385
	.byte	0x5
	.uleb128 0x13d
	.4byte	.LASF1386
	.byte	0x5
	.uleb128 0x13e
	.4byte	.LASF1387
	.byte	0x5
	.uleb128 0x13f
	.4byte	.LASF1388
	.byte	0x5
	.uleb128 0x14a
	.4byte	.LASF1389
	.byte	0x5
	.uleb128 0x14b
	.4byte	.LASF1390
	.byte	0x5
	.uleb128 0x14c
	.4byte	.LASF1391
	.byte	0x5
	.uleb128 0x14d
	.4byte	.LASF1392
	.byte	0x5
	.uleb128 0x14e
	.4byte	.LASF1393
	.byte	0x5
	.uleb128 0x28d
	.4byte	.LASF1394
	.byte	0x5
	.uleb128 0x2bc
	.4byte	.LASF1395
	.byte	0x5
	.uleb128 0x2ca
	.4byte	.LASF1396
	.byte	0x5
	.uleb128 0x2cb
	.4byte	.LASF1397
	.byte	0x5
	.uleb128 0x2cc
	.4byte	.LASF1398
	.byte	0x5
	.uleb128 0x2cd
	.4byte	.LASF1399
	.byte	0x5
	.uleb128 0x2ce
	.4byte	.LASF1400
	.byte	0x5
	.uleb128 0x2cf
	.4byte	.LASF1401
	.byte	0x5
	.uleb128 0x2d0
	.4byte	.LASF1402
	.byte	0x5
	.uleb128 0x2d2
	.4byte	.LASF1403
	.byte	0x5
	.uleb128 0x2d3
	.4byte	.LASF1404
	.byte	0x5
	.uleb128 0x2d4
	.4byte	.LASF1405
	.byte	0x5
	.uleb128 0x2d5
	.4byte	.LASF1406
	.byte	0x5
	.uleb128 0x2d6
	.4byte	.LASF1407
	.byte	0x5
	.uleb128 0x2d7
	.4byte	.LASF1408
	.byte	0x5
	.uleb128 0x2d8
	.4byte	.LASF1409
	.byte	0x5
	.uleb128 0x2d9
	.4byte	.LASF1410
	.byte	0x5
	.uleb128 0x2da
	.4byte	.LASF1411
	.byte	0x5
	.uleb128 0x2db
	.4byte	.LASF1412
	.byte	0x5
	.uleb128 0x2dc
	.4byte	.LASF1413
	.byte	0x5
	.uleb128 0x2dd
	.4byte	.LASF1414
	.byte	0x5
	.uleb128 0x2de
	.4byte	.LASF1415
	.byte	0x5
	.uleb128 0x2df
	.4byte	.LASF1416
	.byte	0x5
	.uleb128 0x2e0
	.4byte	.LASF1417
	.byte	0x5
	.uleb128 0x2e1
	.4byte	.LASF1418
	.byte	0x5
	.uleb128 0x2e2
	.4byte	.LASF1419
	.byte	0x5
	.uleb128 0x2e3
	.4byte	.LASF1420
	.byte	0x5
	.uleb128 0x2e4
	.4byte	.LASF1421
	.byte	0x5
	.uleb128 0x2e5
	.4byte	.LASF1422
	.byte	0x5
	.uleb128 0x2ee
	.4byte	.LASF1423
	.byte	0x5
	.uleb128 0x2ef
	.4byte	.LASF1424
	.byte	0x5
	.uleb128 0x2f0
	.4byte	.LASF1425
	.byte	0x5
	.uleb128 0x2f4
	.4byte	.LASF1426
	.byte	0x5
	.uleb128 0x2f5
	.4byte	.LASF1427
	.byte	0x5
	.uleb128 0x2f6
	.4byte	.LASF1428
	.byte	0x5
	.uleb128 0x2f7
	.4byte	.LASF1429
	.byte	0x5
	.uleb128 0x2f8
	.4byte	.LASF1430
	.byte	0x5
	.uleb128 0x2f9
	.4byte	.LASF1431
	.byte	0x5
	.uleb128 0x2fa
	.4byte	.LASF1432
	.byte	0x5
	.uleb128 0x2fb
	.4byte	.LASF1433
	.byte	0x5
	.uleb128 0x2fc
	.4byte	.LASF1434
	.byte	0x5
	.uleb128 0x2fd
	.4byte	.LASF1435
	.byte	0x5
	.uleb128 0x2fe
	.4byte	.LASF1436
	.byte	0x5
	.uleb128 0x300
	.4byte	.LASF1437
	.byte	0x5
	.uleb128 0x30b
	.4byte	.LASF1438
	.byte	0x5
	.uleb128 0x311
	.4byte	.LASF1439
	.byte	0x5
	.uleb128 0x31e
	.4byte	.LASF1440
	.byte	0x5
	.uleb128 0x321
	.4byte	.LASF1441
	.byte	0x5
	.uleb128 0x323
	.4byte	.LASF1442
	.byte	0x5
	.uleb128 0x382
	.4byte	.LASF1443
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.stdio.h.67.0cf8a9c281ab0b348aef5c02e7e48825,comdat
.Ldebug_macro31:
	.2byte	0x5
	.byte	0
	.byte	0x5
	.uleb128 0x43
	.4byte	.LASF1444
	.byte	0x5
	.uleb128 0x4d
	.4byte	.LASF1445
	.byte	0x5
	.uleb128 0x52
	.4byte	.LASF1446
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.stdio.h.2.4aa87247282eca6c8f36f9de33d8df1a,comdat
.Ldebug_macro32:
	.2byte	0x5
	.byte	0
	.byte	0x5
	.uleb128 0x2
	.4byte	.LASF1447
	.byte	0x5
	.uleb128 0xd
	.4byte	.LASF1448
	.byte	0x5
	.uleb128 0x15
	.4byte	.LASF1449
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.stdio.h.87.9a62a3d60fa79847330e9a942b8810a8,comdat
.Ldebug_macro33:
	.2byte	0x5
	.byte	0
	.byte	0x5
	.uleb128 0x57
	.4byte	.LASF1450
	.byte	0x5
	.uleb128 0x58
	.4byte	.LASF1451
	.byte	0x5
	.uleb128 0x59
	.4byte	.LASF1452
	.byte	0x5
	.uleb128 0x5a
	.4byte	.LASF1453
	.byte	0x5
	.uleb128 0x5c
	.4byte	.LASF1454
	.byte	0x5
	.uleb128 0x5d
	.4byte	.LASF1455
	.byte	0x5
	.uleb128 0x5e
	.4byte	.LASF1456
	.byte	0x5
	.uleb128 0x5f
	.4byte	.LASF1457
	.byte	0x5
	.uleb128 0x60
	.4byte	.LASF1458
	.byte	0x5
	.uleb128 0x61
	.4byte	.LASF1459
	.byte	0x5
	.uleb128 0x62
	.4byte	.LASF1460
	.byte	0x5
	.uleb128 0x63
	.4byte	.LASF1461
	.byte	0x5
	.uleb128 0x64
	.4byte	.LASF1462
	.byte	0x5
	.uleb128 0x65
	.4byte	.LASF1463
	.byte	0x5
	.uleb128 0x69
	.4byte	.LASF1464
	.byte	0x5
	.uleb128 0x6c
	.4byte	.LASF1465
	.byte	0x5
	.uleb128 0x6d
	.4byte	.LASF1466
	.byte	0x5
	.uleb128 0x78
	.4byte	.LASF1467
	.byte	0x5
	.uleb128 0x79
	.4byte	.LASF1468
	.byte	0x5
	.uleb128 0x7a
	.4byte	.LASF1469
	.byte	0x5
	.uleb128 0x7c
	.4byte	.LASF1470
	.byte	0x5
	.uleb128 0x81
	.4byte	.LASF1471
	.byte	0x5
	.uleb128 0x87
	.4byte	.LASF1472
	.byte	0x5
	.uleb128 0x8d
	.4byte	.LASF1473
	.byte	0x5
	.uleb128 0x93
	.4byte	.LASF1474
	.byte	0x5
	.uleb128 0x9b
	.4byte	.LASF1475
	.byte	0x5
	.uleb128 0x9e
	.4byte	.LASF1476
	.byte	0x5
	.uleb128 0xa1
	.4byte	.LASF1477
	.byte	0x5
	.uleb128 0xa4
	.4byte	.LASF1478
	.byte	0x5
	.uleb128 0xa6
	.4byte	.LASF1479
	.byte	0x5
	.uleb128 0xa7
	.4byte	.LASF1480
	.byte	0x5
	.uleb128 0xa8
	.4byte	.LASF1481
	.byte	0x5
	.uleb128 0xaa
	.4byte	.LASF1482
	.byte	0x5
	.uleb128 0xab
	.4byte	.LASF1483
	.byte	0x5
	.uleb128 0xac
	.4byte	.LASF1484
	.byte	0x5
	.uleb128 0xb4
	.4byte	.LASF1485
	.byte	0x5
	.uleb128 0x292
	.4byte	.LASF1486
	.byte	0x5
	.uleb128 0x2af
	.4byte	.LASF1487
	.byte	0x5
	.uleb128 0x2d3
	.4byte	.LASF1488
	.byte	0x5
	.uleb128 0x2d4
	.4byte	.LASF1489
	.byte	0x5
	.uleb128 0x2d5
	.4byte	.LASF1490
	.byte	0x5
	.uleb128 0x2d6
	.4byte	.LASF1491
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.string.h.8.c4b8571ce60dff2817f43fec8b86aecd,comdat
.Ldebug_macro34:
	.2byte	0x5
	.byte	0
	.byte	0x5
	.uleb128 0x8
	.4byte	.LASF1492
	.byte	0x5
	.uleb128 0xf
	.4byte	.LASF1198
	.byte	0x5
	.uleb128 0x10
	.4byte	.LASF1199
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
	.4byte	.LASF1562
	.4byte	.LASF1563
	.4byte	.LASF1564
	.4byte	.LASF1565
	.4byte	.LASF1566
	.4byte	.LASF1567
	.4byte	.LASF1568
	.byte	0x2
	.uleb128 0x1
	.uleb128 0x1f
	.uleb128 0x2
	.uleb128 0xb
	.uleb128 0x22
	.4byte	.LASF0
	.byte	0
	.4byte	.LASF1569
	.byte	0x3
	.4byte	.LASF1570
	.byte	0x4
	.4byte	.LASF1571
	.byte	0x4
	.4byte	.LASF1572
	.byte	0x1
	.4byte	.LASF1573
	.byte	0x2
	.4byte	.LASF1574
	.byte	0x1
	.4byte	.LASF1575
	.byte	0x3
	.4byte	.LASF1576
	.byte	0x1
	.4byte	.LASF1577
	.byte	0x7
	.4byte	.LASF1578
	.byte	0x1
	.4byte	.LASF1579
	.byte	0x1
	.4byte	.LASF1580
	.byte	0x4
	.4byte	.LASF1581
	.byte	0x1
	.4byte	.LASF1582
	.byte	0x1
	.4byte	.LASF1583
	.byte	0x1
	.4byte	.LASF1584
	.byte	0x1
	.4byte	.LASF1585
	.byte	0x1
	.4byte	.LASF1586
	.byte	0x7
	.4byte	.LASF1587
	.byte	0x7
	.4byte	.LASF1588
	.byte	0x7
	.4byte	.LASF1589
	.byte	0x6
	.4byte	.LASF1590
	.byte	0x5
	.4byte	.LASF1591
	.byte	0x6
	.4byte	.LASF1592
	.byte	0x6
	.4byte	.LASF1593
	.byte	0x5
	.4byte	.LASF1594
	.byte	0x4
	.4byte	.LASF1595
	.byte	0x6
	.4byte	.LASF1596
	.byte	0x6
	.4byte	.LASF1596
	.byte	0x5
	.4byte	.LASF1597
	.byte	0x6
	.4byte	.LASF1577
	.byte	0x6
	.4byte	.LASF1598
	.byte	0x7
	.4byte	.LASF1598
	.byte	0x6
.LELTP0:
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM1
	.byte	0x35
	.byte	0x5
	.uleb128 0x2a
	.byte	0x9
	.2byte	.LM2-.LM1
	.byte	0x6
	.byte	0x23
	.byte	0x5
	.uleb128 0x17
	.byte	0x9
	.2byte	.LM3-.LM2
	.byte	0x3
	.sleb128 -12
	.byte	0x1
	.byte	0x5
	.uleb128 0x2a
	.byte	0x9
	.2byte	.LM4-.LM3
	.byte	0x23
	.byte	0x5
	.uleb128 0x17
	.byte	0x9
	.2byte	.LM5-.LM4
	.byte	0x29
	.byte	0x5
	.uleb128 0x1c
	.byte	0x9
	.2byte	.LM6-.LM5
	.byte	0x3
	.sleb128 -30
	.byte	0x1
	.byte	0x5
	.uleb128 0x2a
	.byte	0x9
	.2byte	.LM7-.LM6
	.byte	0x20
	.byte	0x5
	.uleb128 0x33
	.byte	0x9
	.2byte	.LM8-.LM7
	.byte	0x2c
	.byte	0x5
	.uleb128 0x1c
	.byte	0x9
	.2byte	.LM9-.LM8
	.byte	0x6
	.byte	0x3
	.sleb128 -29
	.byte	0x1
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
	.uleb128 0x2b
	.byte	0x9
	.2byte	.LM13-.LM12
	.byte	0x6
	.byte	0x19
	.byte	0x5
	.uleb128 0x9
	.byte	0x9
	.2byte	.LM14-.LM13
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x9
	.byte	0x9
	.2byte	.LM15-.LM14
	.byte	0x1
	.byte	0x5
	.uleb128 0x12
	.byte	0x9
	.2byte	.LM16-.LM15
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0x1
	.byte	0x1
	.byte	0x5
	.uleb128 0x1d
	.byte	0x9
	.2byte	.LM17-.LM16
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x1b
	.byte	0x9
	.2byte	.LM18-.LM17
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x1d
	.byte	0x9
	.2byte	.LM19-.LM18
	.byte	0x1
	.byte	0x5
	.uleb128 0x1b
	.byte	0x9
	.2byte	.LM20-.LM19
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0
	.byte	0x6
	.byte	0x3b
	.byte	0x5
	.uleb128 0x9
	.byte	0x9
	.2byte	.LM21-.LM20
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x13
	.byte	0x9
	.2byte	.LM22-.LM21
	.byte	0x6
	.byte	0x3
	.sleb128 -39
	.byte	0x1
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM23-.LM22
	.byte	0x6
	.byte	0x3f
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM24-.LM23
	.byte	0x6
	.byte	0x3
	.sleb128 -36
	.byte	0x1
	.byte	0x5
	.uleb128 0xd
	.byte	0x9
	.2byte	.LM25-.LM24
	.byte	0x19
	.byte	0x5
	.uleb128 0xd
	.byte	0x9
	.2byte	.LM26-.LM25
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x16
	.byte	0x9
	.2byte	.LM27-.LM26
	.byte	0x1
	.byte	0x5
	.uleb128 0xd
	.byte	0x9
	.2byte	.LM28-.LM27
	.byte	0x1
	.byte	0x5
	.uleb128 0x16
	.byte	0x9
	.2byte	.LM29-.LM28
	.byte	0x1
	.byte	0x5
	.uleb128 0xd
	.byte	0x9
	.2byte	.LM30-.LM29
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x11
	.byte	0x9
	.2byte	.LM31-.LM30
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x26
	.byte	0x9
	.2byte	.LM32-.LM31
	.byte	0x19
	.byte	0x5
	.uleb128 0x17
	.byte	0x9
	.2byte	.LM33-.LM32
	.byte	0x15
	.byte	0x5
	.uleb128 0x26
	.byte	0x9
	.2byte	.LM34-.LM33
	.byte	0x6
	.byte	0x19
	.byte	0x5
	.uleb128 0x11
	.byte	0x9
	.2byte	.LM35-.LM34
	.byte	0x6
	.byte	0x1c
	.byte	0x5
	.uleb128 0x15
	.byte	0x9
	.2byte	.LM36-.LM35
	.byte	0x12
	.byte	0x5
	.uleb128 0x17
	.byte	0x9
	.2byte	.LM37-.LM36
	.byte	0x6
	.byte	0x1c
	.byte	0x5
	.uleb128 0x11
	.byte	0x9
	.2byte	.LM38-.LM37
	.byte	0x18
	.byte	0x5
	.uleb128 0x15
	.byte	0x9
	.2byte	.LM39-.LM38
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x2e
	.byte	0x9
	.2byte	.LM40-.LM39
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0x1
	.byte	0x1
	.byte	0x5
	.uleb128 0x19
	.byte	0x9
	.2byte	.LM41-.LM40
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x15
	.byte	0x9
	.2byte	.LM42-.LM41
	.byte	0x18
	.byte	0x5
	.uleb128 0x19
	.byte	0x9
	.2byte	.LM43-.LM42
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x21
	.byte	0x9
	.2byte	.LM44-.LM43
	.byte	0x6
	.byte	0x1b
	.byte	0x5
	.uleb128 0x19
	.byte	0x9
	.2byte	.LM45-.LM44
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x2a
	.byte	0x9
	.2byte	.LM46-.LM45
	.byte	0x6
	.byte	0x1b
	.byte	0x5
	.uleb128 0x11
	.byte	0x9
	.2byte	.LM47-.LM46
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x1c
	.byte	0x9
	.2byte	.LM48-.LM47
	.byte	0x6
	.byte	0x19
	.byte	0x5
	.uleb128 0x11
	.byte	0x9
	.2byte	.LM49-.LM48
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x1c
	.byte	0x9
	.2byte	.LM50-.LM49
	.byte	0x6
	.byte	0x20
	.byte	0x5
	.uleb128 0x11
	.byte	0x9
	.2byte	.LM51-.LM50
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x3e
	.byte	0x9
	.2byte	.LM52-.LM51
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0x1
	.byte	0x1
	.byte	0x5
	.uleb128 0x2b
	.byte	0x9
	.2byte	.LM53-.LM52
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0x2
	.byte	0x6
	.byte	0x3
	.sleb128 -33
	.byte	0x1
	.byte	0x5
	.uleb128 0x9
	.byte	0x9
	.2byte	.LM54-.LM53
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x9
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
	.4byte	.LM55
	.byte	0x28
	.byte	0x5
	.uleb128 0x37
	.byte	0x9
	.2byte	.LM56-.LM55
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM57-.LM56
	.byte	0x6
	.byte	0x16
	.byte	0x5
	.uleb128 0x37
	.byte	0x9
	.2byte	.LM58-.LM57
	.byte	0x1
	.byte	0x5
	.uleb128 0x37
	.byte	0x9
	.2byte	.LM59-.LM58
	.byte	0x6
	.byte	0x1a
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM60-.LM59
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x2d
	.byte	0x9
	.2byte	.LM61-.LM60
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0x1
	.byte	0x1
	.byte	0x5
	.uleb128 0x12
	.byte	0x9
	.2byte	.LM62-.LM61
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0
	.byte	0x6
	.byte	0x19
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM63-.LM62
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x10
	.byte	0x9
	.2byte	.LM64-.LM63
	.byte	0x6
	.byte	0x1a
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM65-.LM64
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM66-.LM65
	.byte	0x1
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM67-.LM66
	.byte	0x16
	.byte	0x5
	.uleb128 0x10
	.byte	0x9
	.2byte	.LM68-.LM67
	.byte	0x18
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM69-.LM68
	.byte	0x16
	.byte	0x5
	.uleb128 0x10
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LFE3
	.byte	0
	.uleb128 0x1
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM70
	.byte	0x64
	.byte	0x5
	.uleb128 0x41
	.byte	0x9
	.2byte	.LM71-.LM70
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM72-.LM71
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x14
	.byte	0x9
	.2byte	.LM73-.LM72
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM74-.LM73
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0xf
	.byte	0x9
	.2byte	.LM75-.LM74
	.byte	0x6
	.byte	0x19
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM76-.LM75
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x10
	.byte	0x9
	.2byte	.LM77-.LM76
	.byte	0x1
	.byte	0x5
	.uleb128 0x10
	.byte	0x9
	.2byte	.LM78-.LM77
	.byte	0x1
	.byte	0x5
	.uleb128 0x10
	.byte	0x9
	.2byte	.LM79-.LM78
	.byte	0x1
	.byte	0x5
	.uleb128 0x10
	.byte	0x9
	.2byte	.LM80-.LM79
	.byte	0x1
	.byte	0x5
	.uleb128 0x10
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
	.4byte	.LM81
	.byte	0x75
	.byte	0x5
	.uleb128 0x40
	.byte	0x9
	.2byte	.LM82-.LM81
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM83-.LM82
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x16
	.byte	0x9
	.2byte	.LM84-.LM83
	.byte	0x1
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM85-.LM84
	.byte	0x6
	.byte	0x19
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM86-.LM85
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x33
	.byte	0x9
	.2byte	.LM87-.LM86
	.byte	0x14
	.byte	0x5
	.uleb128 0x40
	.byte	0x9
	.2byte	.LM88-.LM87
	.byte	0x1a
	.byte	0x5
	.uleb128 0x33
	.byte	0x9
	.2byte	.LM89-.LM88
	.byte	0x6
	.byte	0x19
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM90-.LM89
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x11
	.byte	0x9
	.2byte	.LM91-.LM90
	.byte	0x1
	.byte	0x5
	.uleb128 0x11
	.byte	0x9
	.2byte	.LM92-.LM91
	.byte	0x12
	.byte	0x5
	.uleb128 0x40
	.byte	0x9
	.2byte	.LM93-.LM92
	.byte	0x1d
	.byte	0x5
	.uleb128 0x10
	.byte	0x9
	.2byte	.LM94-.LM93
	.byte	0x19
	.byte	0x5
	.uleb128 0x14
	.byte	0x9
	.2byte	.LM95-.LM94
	.byte	0x18
	.byte	0x5
	.uleb128 0x15
	.byte	0x9
	.2byte	.LM96-.LM95
	.byte	0x13
	.byte	0x5
	.uleb128 0x11
	.byte	0x9
	.2byte	.LM97-.LM96
	.byte	0x18
	.byte	0x5
	.uleb128 0x10
	.byte	0x9
	.2byte	.LM98-.LM97
	.byte	0x19
	.byte	0x5
	.uleb128 0x14
	.byte	0x9
	.2byte	.LM99-.LM98
	.byte	0x18
	.byte	0x5
	.uleb128 0x15
	.byte	0x9
	.2byte	.LM100-.LM99
	.byte	0x18
	.byte	0x5
	.uleb128 0x16
	.byte	0x9
	.2byte	.LM101-.LM100
	.byte	0x12
	.byte	0x5
	.uleb128 0x11
	.byte	0x9
	.2byte	.LM102-.LM101
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM103-.LM102
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM104-.LM103
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x12
	.byte	0x9
	.2byte	.LM105-.LM104
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM106-.LM105
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM107-.LM106
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM108-.LM107
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM109-.LM108
	.byte	0x6
	.byte	0x16
	.byte	0x5
	.uleb128 0x16
	.byte	0x9
	.2byte	.LM110-.LM109
	.byte	0x18
	.byte	0x5
	.uleb128 0x2d
	.byte	0x9
	.2byte	.LM111-.LM110
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0x1
	.byte	0x1
	.byte	0x5
	.uleb128 0x1a
	.byte	0x9
	.2byte	.LM112-.LM111
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0
	.byte	0x19
	.byte	0x5
	.uleb128 0x17
	.byte	0x9
	.2byte	.LM113-.LM112
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0x1
	.byte	0x15
	.byte	0x5
	.uleb128 0x1a
	.byte	0x9
	.2byte	.LM114-.LM113
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0
	.byte	0x6
	.byte	0x19
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM115-.LM114
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x17
	.byte	0x9
	.2byte	.LM116-.LM115
	.byte	0x1d
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM117-.LM116
	.byte	0x11
	.byte	0x5
	.uleb128 0x17
	.byte	0x9
	.2byte	.LM118-.LM117
	.byte	0x1d
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM119-.LM118
	.byte	0x11
	.byte	0x5
	.uleb128 0x17
	.byte	0x9
	.2byte	.LM120-.LM119
	.byte	0x1d
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM121-.LM120
	.byte	0x11
	.byte	0x5
	.uleb128 0x17
	.byte	0x9
	.2byte	.LM122-.LM121
	.byte	0x1d
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM123-.LM122
	.byte	0x1
	.byte	0x5
	.uleb128 0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LFE6
	.byte	0
	.uleb128 0x1
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM124
	.byte	0x8a
	.byte	0x5
	.uleb128 0x1f
	.byte	0x9
	.2byte	.LM125-.LM124
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM126-.LM125
	.byte	0x6
	.byte	0x16
	.byte	0x5
	.uleb128 0x1f
	.byte	0x9
	.2byte	.LM127-.LM126
	.byte	0x18
	.byte	0x5
	.uleb128 0x2f
	.byte	0x9
	.2byte	.LM128-.LM127
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM129-.LM128
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0x1
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x19
	.byte	0x9
	.2byte	.LM130-.LM129
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0
	.byte	0x1
	.byte	0x5
	.uleb128 0xe
	.byte	0x9
	.2byte	.LM131-.LM130
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0x1
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x17
	.byte	0x9
	.2byte	.LM132-.LM131
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0
	.byte	0x18
	.byte	0x5
	.uleb128 0x9
	.byte	0x9
	.2byte	.LM133-.LM132
	.byte	0x18
	.byte	0x5
	.uleb128 0xd
	.byte	0x9
	.2byte	.LM134-.LM133
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x3a
	.byte	0x9
	.2byte	.LM135-.LM134
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0x1
	.byte	0x1
	.byte	0x5
	.uleb128 0x27
	.byte	0x9
	.2byte	.LM136-.LM135
	.byte	0x1
	.byte	0x5
	.uleb128 0x27
	.byte	0x9
	.2byte	.LM137-.LM136
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0
	.byte	0x6
	.byte	0x18
	.byte	0x5
	.uleb128 0xd
	.byte	0x9
	.2byte	.LM138-.LM137
	.byte	0x6
	.byte	0x1a
	.byte	0x5
	.uleb128 0x1
	.byte	0x9
	.2byte	.LM139-.LM138
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.uleb128 0x2
	.byte	0x6
	.byte	0x11
	.byte	0x5
	.uleb128 0x5
	.byte	0x9
	.2byte	.LM140-.LM139
	.byte	0x6
	.byte	0x1
	.byte	0x5
	.uleb128 0x5
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LFE7
	.byte	0
	.uleb128 0x1
	.byte	0x1
.LELT0:
	.section	.debug_str,"MS",@progbits,1
.LASF681:
	.string	"IOF_SPI1_MOSI (3u)"
.LASF638:
	.string	"UINT16_C(c) __UINT16_C(c)"
.LASF729:
	.string	"PWM2_REG(offset) _REG32(PWM2_CTRL_ADDR, offset)"
.LASF1084:
	.string	"listGET_ITEM_VALUE_OF_HEAD_ENTRY(pxList) ( ( ( pxList )->xListEnd ).pxNext->xItemValue )"
.LASF949:
	.string	"traceQUEUE_RECEIVE_FROM_ISR_FAILED(pxQueue) "
.LASF1116:
	.string	"xTaskNotifyAndQuery(xTaskToNotify,ulValue,eAction,pulPreviousNotifyValue) xTaskGenericNotify( ( xTaskToNotify ), ( ulValue ), ( eAction ), ( pulPreviousNotifyValue ) )"
.LASF381:
	.string	"__FLT64X_HAS_QUIET_NAN__ 1"
.LASF942:
	.string	"traceQUEUE_PEEK(pxQueue) "
.LASF37:
	.string	"__FLOAT_WORD_ORDER__ __ORDER_LITTLE_ENDIAN__"
.LASF149:
	.string	"__cpp_aligned_new 201606L"
.LASF1093:
	.string	"listLIST_ITEM_CONTAINER(pxListItem) ( ( pxListItem )->pxContainer )"
.LASF836:
	.string	"pdFREERTOS_ERRNO_ETIMEDOUT 116"
.LASF698:
	.string	"IOF0_UART0_MASK _AC(0x00030000, UL)"
.LASF653:
	.string	"_AT(T,X) ((T)(X))"
.LASF1535:
	.string	"xQueueGenericSend"
.LASF464:
	.string	"__COMPONENT_FILE_NAME_DEQUOTED__ suas_app_freertos_watchdogwatchdogpp"
.LASF589:
	.string	"UINT_FAST32_MAX"
.LASF1043:
	.string	"xTimeOutType TimeOut_t"
.LASF1423:
	.string	"_REENT_L64A_BUF(ptr) ((ptr)->_new._reent._l64a_buf)"
.LASF301:
	.string	"__FLT32_DIG__ 6"
.LASF508:
	.string	"_WCHAR_T_DEFINED "
.LASF600:
	.string	"INTPTR_MIN (-INTPTR_MAX - 1)"
.LASF1176:
	.string	"__MISC_VISIBLE 0"
.LASF334:
	.string	"__STDCPP_FLOAT128_T__ 1"
.LASF453:
	.string	"CONFIG_PSM_EASYFLASH_SIZE 16384"
.LASF1466:
	.string	"__SWID 0x2000"
.LASF1396:
	.string	"_REENT_CHECK_RAND48(ptr) "
.LASF318:
	.string	"__FLT64_MANT_DIG__ 53"
.LASF559:
	.string	"UINT_LEAST16_MAX"
.LASF554:
	.string	"UINT_LEAST8_MAX __UINT_LEAST8_MAX__"
.LASF584:
	.string	"UINT_FAST16_MAX __UINT_FAST16_MAX__"
.LASF724:
	.string	"OTP_REG(offset) _REG32(OTP_CTRL_ADDR, offset)"
.LASF1351:
	.string	"_WINT_T "
.LASF1516:
	.string	"handle"
.LASF1426:
	.string	"_REENT_CLEANUP(_ptr) ((_ptr)->__cleanup)"
.LASF1489:
	.string	"__sferror(p) ((int)(((p)->_flags & __SERR) != 0))"
.LASF557:
	.string	"INT_LEAST16_MIN"
.LASF313:
	.string	"__FLT32_HAS_INFINITY__ 1"
.LASF1357:
	.string	"_CLOCK_T_ unsigned long"
.LASF432:
	.string	"__riscv_fsqrt 1"
.LASF164:
	.string	"__PTRDIFF_MAX__ 0x7fffffff"
.LASF978:
	.string	"traceEVENT_GROUP_SET_BITS_FROM_ISR(xEventGroup,uxBitsToSet) "
.LASF546:
	.string	"INT64_MIN (-INT64_MAX - 1)"
.LASF321:
	.string	"__FLT64_MIN_10_EXP__ (-307)"
.LASF1234:
	.string	"__GNUCLIKE_BUILTIN_CONSTANT_P 1"
.LASF526:
	.string	"INT8_MAX __INT8_MAX__"
.LASF44:
	.string	"__WCHAR_TYPE__ int"
.LASF595:
	.string	"UINT_FAST64_MAX"
.LASF1295:
	.string	"__printflike(fmtarg,firstvararg) __attribute__((__format__ (__printf__, fmtarg, firstvararg)))"
.LASF939:
	.string	"traceQUEUE_SEND(pxQueue) "
.LASF973:
	.string	"traceEVENT_GROUP_WAIT_BITS_BLOCK(xEventGroup,uxBitsToWaitFor) "
.LASF798:
	.string	"errQUEUE_EMPTY ( ( BaseType_t ) 0 )"
.LASF1316:
	.string	"_Null_unspecified "
.LASF1187:
	.string	"_READ_WRITE_BUFSIZE_TYPE int"
.LASF731:
	.string	"SPI1_REG(offset) _REG32(SPI1_CTRL_ADDR, offset)"
.LASF304:
	.string	"__FLT32_MAX_EXP__ 128"
.LASF957:
	.string	"traceTASK_PRIORITY_SET(pxTask,uxNewPriority) "
.LASF778:
	.string	"INCLUDE_vTaskDelay 1"
.LASF1060:
	.string	"pxContainer pvContainer"
.LASF1016:
	.string	"configINCLUDE_APPLICATION_DEFINED_PRIVILEGED_FUNCTIONS 0"
.LASF701:
	.string	"IOF0_UART1_MASK _AC(0x03000000, UL)"
.LASF1448:
	.string	"_flockfile(fp) (((fp)->_flags & __SSTR) ? 0 : __lock_acquire_recursive((fp)->_lock))"
.LASF59:
	.string	"__UINT64_TYPE__ long long unsigned int"
.LASF3:
	.string	"__cplusplus 202302L"
.LASF254:
	.string	"__DBL_MAX_10_EXP__ 308"
.LASF563:
	.string	"INT_LEAST32_MIN"
.LASF785:
	.string	"priSUSPENDED_RX_TASK_STACK_SIZE 90"
.LASF222:
	.string	"__UINT_FAST64_MAX__ 0xffffffffffffffffULL"
.LASF448:
	.string	"BL_SDK_VER \"release_bl_iot_sdk_1.6.11-1-g66bb28da-dirty\""
.LASF141:
	.string	"__cpp_multidimensional_subscript 202211L"
.LASF1231:
	.string	"__GNUCLIKE___TYPEOF 1"
.LASF445:
	.string	"__ELF__ 1"
.LASF24:
	.string	"__SIZEOF_LONG__ 4"
.LASF1512:
	.string	"UBaseType_t"
.LASF1350:
	.string	"__need_wint_t "
.LASF1507:
	.string	"short unsigned int"
.LASF1083:
	.string	"listGET_LIST_ITEM_VALUE(pxListItem) ( ( pxListItem )->xItemValue )"
.LASF500:
	.string	"__WCHAR_T__ "
.LASF1346:
	.string	"__need___va_list"
.LASF1485:
	.string	"__VALIST __gnuc_va_list"
.LASF97:
	.string	"__cpp_inheriting_constructors 201511L"
.LASF752:
	.string	"configUSE_STATS_FORMATTING_FUNCTIONS 1"
.LASF615:
	.string	"SIG_ATOMIC_MIN"
.LASF167:
	.string	"__SHRT_WIDTH__ 16"
.LASF403:
	.string	"__STRICT_ANSI__ 1"
.LASF1250:
	.string	"__P(protos) protos"
.LASF76:
	.string	"__INTPTR_TYPE__ int"
.LASF1211:
	.string	"___int_least32_t_defined 1"
.LASF1480:
	.string	"stdout _REENT_STDOUT(_REENT)"
.LASF214:
	.string	"__INT_FAST16_WIDTH__ 32"
.LASF138:
	.string	"__cpp_if_consteval 202106L"
.LASF245:
	.string	"__FLT_HAS_INFINITY__ 1"
.LASF290:
	.string	"__FLT16_MAX__ 6.55040000000000000000000000000000000e+4F16"
.LASF338:
	.string	"__FLT128_MIN_10_EXP__ (-4931)"
.LASF650:
	.string	"MCAUSE_INT 0x80000000"
.LASF1506:
	.string	"uint16_t"
.LASF1000:
	.string	"traceSTREAM_BUFFER_RECEIVE(xStreamBuffer,xReceivedLength) "
.LASF1431:
	.string	"_REENT_INC(_ptr) ((_ptr)->_inc)"
.LASF161:
	.string	"__WCHAR_MIN__ (-__WCHAR_MAX__ - 1)"
.LASF1554:
	.string	"check_period"
.LASF397:
	.string	"__BFLT16_HAS_INFINITY__ 1"
.LASF437:
	.string	"__riscv_i 2001000"
.LASF742:
	.string	"configUSE_PREEMPTION 1"
.LASF592:
	.string	"INT_FAST64_MAX __INT_FAST64_MAX__"
.LASF1344:
	.string	"__is_aligned(x,y) __builtin_is_aligned(x, y)"
.LASF1340:
	.string	"__builtin_align_up(x,align) ((__typeof__(x))(((__uintptr_t)(x)+((align)-1))&(~((align)-1))))"
.LASF150:
	.string	"__STDCPP_DEFAULT_NEW_ALIGNMENT__ 16"
.LASF976:
	.string	"traceEVENT_GROUP_CLEAR_BITS_FROM_ISR(xEventGroup,uxBitsToClear) "
.LASF1553:
	.string	"_Z13watchdog_initmm"
.LASF395:
	.string	"__BFLT16_DENORM_MIN__ 9.18354961579912115600575419704879436e-41BF16"
.LASF1265:
	.string	"__aligned(x) __attribute__((__aligned__(x)))"
.LASF315:
	.string	"__FP_FAST_FMAF32 1"
.LASF1557:
	.string	"16WatchdogTaskInfo"
.LASF470:
	.string	"_T_PTRDIFF_ "
.LASF266:
	.string	"__LDBL_DIG__ 33"
.LASF452:
	.string	"ARCH_RISCV 1"
.LASF687:
	.string	"IOF_SPI1_DQ3 (7u)"
.LASF454:
	.string	"configUSE_TICKLESS_IDLE 0"
.LASF703:
	.string	"IOF_UART1_TX (25u)"
.LASF1197:
	.string	"_FSTDIO "
.LASF721:
	.string	"AON_REG(offset) _REG32(AON_CTRL_ADDR, offset)"
.LASF1313:
	.string	"__DEQUALIFY(type,var) ((type)(__uintptr_t)(const volatile void *)(var))"
.LASF1225:
	.string	"__unbounded "
.LASF196:
	.string	"__INT_LEAST16_WIDTH__ 16"
.LASF1150:
	.string	"_FVWRITE_IN_STREAMIO 1"
.LASF1160:
	.string	"_WANT_REGISTER_FINI 1"
.LASF821:
	.string	"pdFREERTOS_ERRNO_EISDIR 21"
.LASF62:
	.string	"__INT_LEAST32_TYPE__ long int"
.LASF614:
	.string	"SIG_ATOMIC_MAX __SIG_ATOMIC_MAX__"
.LASF262:
	.string	"__DBL_HAS_INFINITY__ 1"
.LASF1154:
	.string	"_MB_LEN_MAX 1"
.LASF295:
	.string	"__FLT16_HAS_DENORM__ 1"
.LASF1333:
	.string	"__no_lock_analysis __lock_annotate(no_thread_safety_analysis)"
.LASF761:
	.string	"configUSE_COUNTING_SEMAPHORES 1"
.LASF156:
	.string	"__SHRT_MAX__ 0x7fff"
.LASF922:
	.string	"traceBLOCKING_ON_QUEUE_RECEIVE(pxQueue) "
.LASF610:
	.string	"PTRDIFF_MAX __PTRDIFF_MAX__"
.LASF1389:
	.string	"_REENT_INIT_RESERVED_0 "
.LASF606:
	.string	"INTMAX_MIN (-INTMAX_MAX - 1)"
.LASF311:
	.string	"__FLT32_DENORM_MIN__ 1.40129846432481707092372958328991613e-45F32"
.LASF1190:
	.string	"_END_STD_C }"
.LASF1545:
	.string	"usStackDepth"
.LASF18:
	.string	"__ATOMIC_ACQ_REL 4"
.LASF997:
	.string	"traceSTREAM_BUFFER_SEND_FAILED(xStreamBuffer) "
.LASF1080:
	.string	"listSET_LIST_ITEM_OWNER(pxListItem,pxOwner) ( ( pxListItem )->pvOwner = ( void * ) ( pxOwner ) )"
.LASF1422:
	.string	"_REENT_WCSRTOMBS_STATE(ptr) ((ptr)->_new._reent._wcsrtombs_state)"
.LASF876:
	.string	"portRESET_READY_PRIORITY(uxPriority,uxReadyPriorities) ( uxReadyPriorities ) &= ~( 1UL << ( uxPriority ) )"
.LASF1196:
	.string	"_NOINLINE_STATIC _NOINLINE static"
.LASF1478:
	.string	"TMP_MAX 26"
.LASF1282:
	.string	"__fastcall __attribute__((__fastcall__))"
.LASF1023:
	.string	"configUSE_POSIX_ERRNO 0"
.LASF344:
	.string	"__FLT128_MIN__ 3.36210314311209350626267781732175260e-4932F128"
.LASF1195:
	.string	"_NOINLINE __attribute__ ((__noinline__))"
.LASF217:
	.string	"__INT_FAST64_MAX__ 0x7fffffffffffffffLL"
.LASF1149:
	.string	"_FSEEK_OPTIMIZATION 1"
.LASF883:
	.string	"portMEMORY_BARRIER() __asm volatile( \"\" ::: \"memory\" )"
.LASF881:
	.string	"portINLINE __inline"
.LASF406:
	.string	"__GCC_ATOMIC_CHAR_LOCK_FREE 1"
.LASF849:
	.string	"PORTABLE_H "
.LASF335:
	.string	"__FLT128_MANT_DIG__ 113"
.LASF1157:
	.string	"_WANT_IO_C99_FORMATS 1"
.LASF190:
	.string	"__UINT64_MAX__ 0xffffffffffffffffULL"
.LASF813:
	.string	"pdFREERTOS_ERRNO_ENOMEM 12"
.LASF1334:
	.string	"__nosanitizeaddress "
.LASF23:
	.string	"__SIZEOF_INT__ 4"
.LASF125:
	.string	"__cpp_constexpr_in_decltype 201711L"
.LASF124:
	.string	"__cpp_designated_initializers 201707L"
.LASF356:
	.string	"__FLT32X_MAX_10_EXP__ 308"
.LASF959:
	.string	"traceTASK_RESUME(pxTaskToResume) "
.LASF1390:
	.string	"_REENT_INIT_RESERVED_1 "
.LASF814:
	.string	"pdFREERTOS_ERRNO_EACCES 13"
.LASF802:
	.string	"errQUEUE_YIELD ( -5 )"
.LASF1085:
	.string	"listGET_HEAD_ENTRY(pxList) ( ( ( pxList )->xListEnd ).pxNext )"
.LASF491:
	.string	"_BSD_SIZE_T_DEFINED_ "
.LASF1233:
	.string	"__GNUCLIKE_CTOR_SECTION_HANDLING 1"
.LASF291:
	.string	"__FLT16_NORM_MAX__ 6.55040000000000000000000000000000000e+4F16"
.LASF185:
	.string	"__INT32_MAX__ 0x7fffffffL"
.LASF839:
	.string	"pdFREERTOS_ERRNO_EADDRNOTAVAIL 125"
.LASF391:
	.string	"__BFLT16_MAX__ 3.38953138925153547590470800371487867e+38BF16"
.LASF1056:
	.string	"tmrTIMER_CALLBACK TimerCallbackFunction_t"
.LASF925:
	.string	"configRECORD_STACK_HIGH_ADDRESS 0"
.LASF867:
	.string	"portYIELD_FROM_ISR(x) portEND_SWITCHING_ISR( x )"
.LASF894:
	.string	"INCLUDE_xTaskGetIdleTaskHandle 0"
.LASF1111:
	.string	"taskENABLE_INTERRUPTS() portENABLE_INTERRUPTS()"
.LASF206:
	.string	"__UINT16_C(c) c"
.LASF420:
	.string	"__PRAGMA_REDEFINE_EXTNAME 1"
.LASF63:
	.string	"__INT_LEAST64_TYPE__ long long int"
.LASF1502:
	.string	"int32_t"
.LASF1370:
	.string	"__lock_acquire(lock) ((void) 0)"
.LASF791:
	.string	"recmuRECURSIVE_MUTEX_TEST_TASK_STACK_SIZE 90"
.LASF115:
	.string	"__cpp_aggregate_bases 201603L"
.LASF607:
	.string	"UINTMAX_MAX"
.LASF1332:
	.string	"__requires_unlocked(...) __lock_annotate(locks_excluded(__VA_ARGS__))"
.LASF510:
	.string	"___int_wchar_t_h "
.LASF1363:
	.string	"__SYS_LOCK_H__ "
.LASF762:
	.string	"configGENERATE_RUN_TIME_STATS 0"
.LASF1391:
	.string	"_REENT_INIT_RESERVED_2 "
.LASF1012:
	.string	"portTASK_USES_FLOATING_POINT() "
.LASF1399:
	.string	"_REENT_CHECK_ASCTIME_BUF(ptr) "
.LASF646:
	.string	"UINTMAX_C(c) __UINTMAX_C(c)"
.LASF675:
	.string	"IOF0_SPI1_MASK _AC(0x000007FC,UL)"
.LASF627:
	.string	"INT8_C"
.LASF107:
	.string	"__cpp_namespace_attributes 201411L"
.LASF1520:
	.string	"priority"
.LASF1260:
	.string	"__dead2 __attribute__((__noreturn__))"
.LASF1387:
	.string	"_REENT_ASCTIME_SIZE 26"
.LASF56:
	.string	"__UINT8_TYPE__ unsigned char"
.LASF805:
	.string	"pdFREERTOS_ERRNO_NONE 0"
.LASF1266:
	.string	"__section(x) __attribute__((__section__(x)))"
.LASF887:
	.string	"portARCH_NAME NULL"
.LASF1121:
	.string	"queueSEND_TO_BACK ( ( BaseType_t ) 0 )"
.LASF1415:
	.string	"_REENT_MBLEN_STATE(ptr) ((ptr)->_new._reent._mblen_state)"
.LASF111:
	.string	"__cpp_range_based_for 202211L"
.LASF127:
	.string	"__cpp_consteval 202211L"
.LASF801:
	.string	"errQUEUE_BLOCKED ( -4 )"
.LASF743:
	.string	"configUSE_IDLE_HOOK 1"
.LASF337:
	.string	"__FLT128_MIN_EXP__ (-16381)"
.LASF5:
	.string	"__STDC_UTF_32__ 1"
.LASF194:
	.string	"__INT_LEAST16_MAX__ 0x7fff"
.LASF1117:
	.string	"xTaskNotifyFromISR(xTaskToNotify,ulValue,eAction,pxHigherPriorityTaskWoken) xTaskGenericNotifyFromISR( ( xTaskToNotify ), ( ulValue ), ( eAction ), NULL, ( pxHigherPriorityTaskWoken ) )"
.LASF1255:
	.string	"__const const"
.LASF145:
	.string	"__cpp_explicit_this_parameter 202110L"
.LASF134:
	.string	"__cpp_impl_three_way_comparison 201907L"
.LASF1122:
	.string	"queueSEND_TO_FRONT ( ( BaseType_t ) 1 )"
.LASF722:
	.string	"CLINT_REG(offset) _REG32(CLINT_CTRL_ADDR, offset)"
.LASF129:
	.string	"__cpp_deduction_guides 201907L"
.LASF1142:
	.string	"_ANSIDECL_H_ "
.LASF57:
	.string	"__UINT16_TYPE__ short unsigned int"
.LASF830:
	.string	"pdFREERTOS_ERRNO_ENOTEMPTY 90"
.LASF668:
	.string	"UART1_CTRL_ADDR _AC(0x10023000,UL)"
.LASF886:
	.string	"portHAS_STACK_OVERFLOW_CHECKING 0"
.LASF1136:
	.string	"xQueueSendToFrontFromISR(xQueue,pvItemToQueue,pxHigherPriorityTaskWoken) xQueueGenericSendFromISR( ( xQueue ), ( pvItemToQueue ), ( pxHigherPriorityTaskWoken ), queueSEND_TO_FRONT )"
.LASF649:
	.string	"_SIFIVE_PLATFORM_H "
.LASF484:
	.string	"_T_SIZE_ "
.LASF670:
	.string	"PWM1_CTRL_ADDR _AC(0x10025000,UL)"
.LASF1290:
	.string	"__exported __attribute__((__visibility__(\"default\")))"
.LASF361:
	.string	"__FLT32X_EPSILON__ 2.22044604925031308084726333618164062e-16F32x"
.LASF364:
	.string	"__FLT32X_HAS_INFINITY__ 1"
.LASF1439:
	.string	"__ATTRIBUTE_IMPURE_DATA__ "
.LASF1376:
	.string	"_ATEXIT_SIZE 32"
.LASF799:
	.string	"errQUEUE_FULL ( ( BaseType_t ) 0 )"
.LASF298:
	.string	"__FLT16_IS_IEC_60559__ 1"
.LASF192:
	.string	"__INT8_C(c) c"
.LASF272:
	.string	"__LDBL_DECIMAL_DIG__ 36"
.LASF1300:
	.string	"__printf0like(fmtarg,firstvararg) "
.LASF118:
	.string	"__cpp_structured_bindings 201606L"
.LASF287:
	.string	"__FLT16_MAX_EXP__ 16"
.LASF451:
	.string	"BL_CHIP_NAME \"BL602\""
.LASF550:
	.string	"INT_LEAST8_MAX __INT_LEAST8_MAX__"
.LASF1164:
	.string	"__IEEE_LITTLE_ENDIAN "
.LASF759:
	.string	"configUSE_MALLOC_FAILED_HOOK 1"
.LASF236:
	.string	"__FLT_MAX_EXP__ 128"
.LASF186:
	.string	"__INT64_MAX__ 0x7fffffffffffffffLL"
.LASF1373:
	.string	"__lock_try_acquire_recursive(lock) ((void) 0)"
.LASF1244:
	.string	"__CC_SUPPORTS___INLINE 1"
.LASF15:
	.string	"__ATOMIC_SEQ_CST 5"
.LASF427:
	.string	"__riscv_div 1"
.LASF1004:
	.string	"portPRIVILEGE_BIT ( ( UBaseType_t ) 0x00 )"
.LASF457:
	.string	"__FILENAME__ \"watchdog.cpp\""
.LASF1369:
	.string	"__lock_close_recursive(lock) ((void) 0)"
.LASF126:
	.string	"__cpp_conditional_explicit 201806L"
.LASF960:
	.string	"traceTASK_RESUME_FROM_ISR(pxTaskToResume) "
.LASF1402:
	.string	"_REENT_CHECK_SIGNAL_BUF(ptr) "
.LASF1028:
	.string	"portTICK_TYPE_ENTER_CRITICAL() "
.LASF1174:
	.string	"__ISO_C_VISIBLE 2020"
.LASF355:
	.string	"__FLT32X_MAX_EXP__ 1024"
.LASF1247:
	.string	"__CC_SUPPORTS_WARNING 1"
.LASF300:
	.string	"__FLT32_MANT_DIG__ 24"
.LASF723:
	.string	"GPIO_REG(offset) _REG32(GPIO_CTRL_ADDR, offset)"
.LASF1007:
	.string	"configEXPECTED_IDLE_TIME_BEFORE_SLEEP 2"
.LASF72:
	.string	"__UINT_FAST8_TYPE__ unsigned int"
.LASF980:
	.string	"tracePEND_FUNC_CALL(xFunctionToPend,pvParameter1,ulParameter2,ret) "
.LASF871:
	.string	"portDISABLE_INTERRUPTS() __asm volatile( \"csrc mstatus, 8\" )"
.LASF1394:
	.ascii	"_REENT_INIT(var) { 0, &__sf[0], &__sf[1], &__sf[2], 0, \"\","
	.ascii	" _REENT_INIT_RESERVED_1 _NULL, _REENT_INIT_RESERVED_0 _NULL,"
	.ascii	" _NULL, 0, _NULL, _NULL, 0, _NULL, { { _REENT_INIT_RESERVED_"
	.ascii	"2 _NULL, \"\", {0, 0, 0, 0, 0, 0, 0, 0"
	.string	", 0}, 0, 1, { {_RAND48_SEED_0, _RAND48_SEED_1, _RAND48_SEED_2}, {_RAND48_MULT_0, _RAND48_MULT_1, _RAND48_MULT_2}, _RAND48_ADD }, {0, {0}}, {0, {0}}, {0, {0}}, \"\", \"\", 0, {0, {0}}, {0, {0}}, {0, {0}}, {0, {0}}, {0, {0}} } }, _REENT_INIT_RESERVED_6_7 _NULL }"
.LASF889:
	.string	"PRIVILEGED_FUNCTION "
.LASF598:
	.string	"INTPTR_MAX __INTPTR_MAX__"
.LASF1202:
	.string	"__EXP(x) __ ##x ##__"
.LASF84:
	.string	"__cpp_runtime_arrays 198712L"
.LASF1077:
	.string	"listSET_LIST_INTEGRITY_CHECK_2_VALUE(pxList) "
.LASF581:
	.string	"INT_FAST16_MIN"
.LASF574:
	.string	"INT_FAST8_MAX __INT_FAST8_MAX__"
.LASF1219:
	.string	"__long_double_t long double"
.LASF130:
	.string	"__cpp_nontype_template_args 201911L"
.LASF79:
	.string	"__DEPRECATED 1"
.LASF137:
	.string	"__cpp_size_t_suffix 202011L"
.LASF1048:
	.string	"xCoRoutineHandle CoRoutineHandle_t"
.LASF977:
	.string	"traceEVENT_GROUP_SET_BITS(xEventGroup,uxBitsToSet) "
.LASF1386:
	.string	"_REENT_EMERGENCY_SIZE 25"
.LASF227:
	.string	"__GCC_IEC_559_COMPLEX 0"
.LASF641:
	.string	"UINT64_C"
.LASF767:
	.string	"configUSE_TIMERS 1"
.LASF211:
	.string	"__INT_FAST8_MAX__ 0x7fffffff"
.LASF297:
	.string	"__FLT16_HAS_QUIET_NAN__ 1"
.LASF139:
	.string	"__cpp_auto_cast 202110L"
.LASF690:
	.string	"IOF_SPI2_SS0 (26u)"
.LASF1067:
	.string	"INC_TASK_H "
.LASF401:
	.string	"__USER_LABEL_PREFIX__ "
.LASF96:
	.string	"__cpp_nsdmi 200809L"
.LASF1220:
	.string	"__attribute_malloc__ "
.LASF1286:
	.string	"__restrict_arr "
.LASF492:
	.string	"_SIZE_T_DECLARED "
.LASF860:
	.string	"portSHORT short"
.LASF1413:
	.string	"_REENT_TM(ptr) (&(ptr)->_new._reent._localtime_buf)"
.LASF1095:
	.string	"tskKERNEL_VERSION_NUMBER \"V10.3.0\""
.LASF286:
	.string	"__FLT16_MIN_10_EXP__ (-4)"
.LASF544:
	.string	"INT64_MAX __INT64_MAX__"
.LASF1104:
	.string	"tskIDLE_PRIORITY ( ( UBaseType_t ) 0U )"
.LASF1087:
	.string	"listGET_END_MARKER(pxList) ( ( ListItem_t const * ) ( &( ( pxList )->xListEnd ) ) )"
.LASF1338:
	.string	"__pt_guarded_by(x) __lock_annotate(pt_guarded_by(x))"
.LASF433:
	.string	"__riscv_float_abi_single 1"
.LASF571:
	.string	"UINT_LEAST64_MAX"
.LASF1311:
	.string	"__DECONST(type,var) ((type)(__uintptr_t)(const void *)(var))"
.LASF674:
	.string	"MEM_CTRL_ADDR _AC(0x80000000,UL)"
.LASF434:
	.string	"__riscv_cmodel_medlow 1"
.LASF1536:
	.string	"snprintf"
.LASF390:
	.string	"__BFLT16_DECIMAL_DIG__ 4"
.LASF501:
	.string	"_WCHAR_T "
.LASF212:
	.string	"__INT_FAST8_WIDTH__ 32"
.LASF1272:
	.string	"_Noreturn [[noreturn]]"
.LASF585:
	.string	"INT_FAST32_MAX"
.LASF763:
	.string	"configUSE_PORT_OPTIMISED_TASK_SELECTION 1"
.LASF905:
	.string	"configASSERT_DEFINED 1"
.LASF302:
	.string	"__FLT32_MIN_EXP__ (-125)"
.LASF1558:
	.string	"xTaskCreateWithWatchdog"
.LASF1487:
	.string	"__sgetc_r(__ptr,__p) __sgetc_raw_r(__ptr, __p)"
.LASF989:
	.string	"traceTASK_NOTIFY_GIVE_FROM_ISR() "
.LASF797:
	.string	"pdFAIL ( pdFALSE )"
.LASF271:
	.string	"__DECIMAL_DIG__ 36"
.LASF252:
	.string	"__DBL_MIN_10_EXP__ (-307)"
.LASF816:
	.string	"pdFREERTOS_ERRNO_EBUSY 16"
.LASF1020:
	.string	"portASSERT_IF_IN_ISR() "
.LASF476:
	.string	"_GCC_PTRDIFF_T "
.LASF362:
	.string	"__FLT32X_DENORM_MIN__ 4.94065645841246544176568792868221372e-324F32x"
.LASF1123:
	.string	"queueOVERWRITE ( ( BaseType_t ) 2 )"
.LASF78:
	.string	"__GXX_WEAK__ 1"
.LASF235:
	.string	"__FLT_MIN_10_EXP__ (-37)"
.LASF1510:
	.string	"TaskFunction_t"
.LASF352:
	.string	"__FLT32X_DIG__ 15"
.LASF1152:
	.string	"_HAVE_INITFINI_ARRAY 1"
.LASF109:
	.string	"__cpp_nested_namespace_definitions 201411L"
.LASF568:
	.string	"INT_LEAST64_MAX __INT_LEAST64_MAX__"
.LASF249:
	.string	"__DBL_MANT_DIG__ 53"
.LASF1229:
	.string	"__GNUCLIKE_ASM 3"
.LASF1452:
	.string	"__SRD 0x0004"
.LASF87:
	.string	"__cpp_user_defined_literals 200809L"
.LASF173:
	.string	"__PTRDIFF_WIDTH__ 32"
.LASF1306:
	.string	"__FBSDID(s) struct __hack"
.LASF982:
	.string	"traceQUEUE_REGISTRY_ADD(xQueue,pcQueueName) "
.LASF1513:
	.string	"TickType_t"
.LASF943:
	.string	"traceQUEUE_PEEK_FAILED(pxQueue) "
.LASF1271:
	.string	"_Alignof(x) alignof(x)"
.LASF1321:
	.string	"__lock_annotate(x) "
.LASF591:
	.string	"INT_FAST64_MAX"
.LASF1393:
	.string	"_REENT_INIT_RESERVED_8 "
.LASF1550:
	.string	"task_watchdog_kick"
.LASF962:
	.string	"traceTIMER_CREATE(pxNewTimer) "
.LASF497:
	.string	"__size_t "
.LASF162:
	.string	"__WINT_MAX__ 0xffffffffU"
.LASF27:
	.string	"__SIZEOF_FLOAT__ 4"
.LASF242:
	.string	"__FLT_EPSILON__ 1.19209289550781250000000000000000000e-7F"
.LASF601:
	.string	"UINTPTR_MAX"
.LASF398:
	.string	"__BFLT16_HAS_QUIET_NAN__ 1"
.LASF669:
	.string	"SPI1_CTRL_ADDR _AC(0x10024000,UL)"
.LASF632:
	.string	"INT32_C(c) __INT32_C(c)"
.LASF370:
	.string	"__FLT64X_MIN_10_EXP__ (-4931)"
.LASF1532:
	.string	"g_check_period"
.LASF415:
	.string	"__GCC_ATOMIC_TEST_AND_SET_TRUEVAL 1"
.LASF1533:
	.string	"vTaskDelay"
.LASF1006:
	.string	"portSUPPRESS_TICKS_AND_SLEEP(xExpectedIdleTime) "
.LASF1102:
	.string	"tskMPU_REGION_NORMAL_MEMORY ( 1UL << 3UL )"
.LASF204:
	.string	"__UINT8_C(c) c"
.LASF110:
	.string	"__cpp_fold_expressions 201603L"
.LASF541:
	.string	"UINT32_MAX"
.LASF307:
	.string	"__FLT32_MAX__ 3.40282346638528859811704183484516925e+38F32"
.LASF1549:
	.string	"info"
.LASF17:
	.string	"__ATOMIC_RELEASE 3"
.LASF1433:
	.string	"_REENT_SIG_FUNC(_ptr) ((_ptr)->_sig_func)"
.LASF1542:
	.string	"event_queue"
.LASF628:
	.string	"INT8_C(c) __INT8_C(c)"
.LASF716:
	.string	"INT_PWM0_BASE 40"
.LASF536:
	.string	"UINT16_MAX __UINT16_MAX__"
.LASF757:
	.string	"configCHECK_FOR_STACK_OVERFLOW 2"
.LASF1259:
	.string	"__weak_symbol __attribute__((__weak__))"
.LASF1223:
	.string	"__flexarr [0]"
.LASF1407:
	.string	"_REENT_RAND48_ADD(ptr) ((ptr)->_new._reent._r48._add)"
.LASF1129:
	.string	"queueQUEUE_TYPE_RECURSIVE_MUTEX ( ( uint8_t ) 4U )"
.LASF717:
	.string	"INT_PWM1_BASE 44"
.LASF735:
	.string	"NUM_GPIO 32"
.LASF1505:
	.string	"unsigned char"
.LASF745:
	.string	"configCPU_CLOCK_HZ ( 10 * 1000 * 1000 )"
.LASF718:
	.string	"INT_PWM2_BASE 48"
.LASF133:
	.string	"__cpp_constexpr_dynamic_alloc 201907L"
.LASF1348:
	.string	"_SYS_REENT_H_ "
.LASF1374:
	.string	"__lock_release(lock) ((void) 0)"
.LASF33:
	.string	"__ORDER_LITTLE_ENDIAN__ 1234"
.LASF1131:
	.string	"xQueueCreateStatic(uxQueueLength,uxItemSize,pucQueueStorage,pxQueueBuffer) xQueueGenericCreateStatic( ( uxQueueLength ), ( uxItemSize ), ( pucQueueStorage ), ( pxQueueBuffer ), ( queueQUEUE_TYPE_BASE ) )"
.LASF1403:
	.string	"_REENT_SIGNGAM(ptr) ((ptr)->_new._reent._gamma_signgam)"
.LASF486:
	.string	"__SIZE_T "
.LASF659:
	.string	"CLINT_CTRL_ADDR _AC(0x02000000,UL)"
.LASF233:
	.string	"__FLT_DIG__ 6"
.LASF1053:
	.string	"pcQueueGetQueueName pcQueueGetName"
.LASF92:
	.string	"__cpp_rvalue_references 200610L"
.LASF1268:
	.string	"__alloc_size2(n,x) __attribute__((__alloc_size__(n, x)))"
.LASF916:
	.string	"traceINCREASE_TICK_COUNT(x) "
.LASF927:
	.string	"traceMOVED_TASK_TO_READY_STATE(pxTCB) "
.LASF790:
	.string	"genqGENERIC_QUEUE_TEST_TASK_STACK_SIZE 100"
.LASF253:
	.string	"__DBL_MAX_EXP__ 1024"
.LASF1096:
	.string	"tskKERNEL_VERSION_MAJOR 10"
.LASF1355:
	.string	"unsigned signed"
.LASF205:
	.string	"__UINT_LEAST16_MAX__ 0xffff"
.LASF174:
	.string	"__SIZE_WIDTH__ 32"
.LASF1561:
	.string	"watchdog_task_wrapper"
.LASF1289:
	.string	"__null_sentinel __attribute__((__sentinel__))"
.LASF1414:
	.string	"_REENT_STRTOK_LAST(ptr) ((ptr)->_new._reent._strtok_last)"
.LASF1493:
	.string	"_SYS_STRING_H "
.LASF1232:
	.string	"__GNUCLIKE___SECTION 1"
.LASF1191:
	.string	"_NOTHROW __attribute__ ((__nothrow__))"
.LASF991:
	.string	"traceSTREAM_BUFFER_CREATE_STATIC_FAILED(xReturn,xIsMessageBuffer) "
.LASF662:
	.string	"PRCI_CTRL_ADDR _AC(0x10008000,UL)"
.LASF30:
	.string	"__SIZEOF_SIZE_T__ 4"
.LASF477:
	.string	"_PTRDIFF_T_DECLARED "
.LASF48:
	.string	"__CHAR8_TYPE__ unsigned char"
.LASF336:
	.string	"__FLT128_DIG__ 33"
.LASF819:
	.string	"pdFREERTOS_ERRNO_ENODEV 19"
.LASF469:
	.string	"_PTRDIFF_T "
.LASF374:
	.string	"__FLT64X_MAX__ 1.18973149535723176508575932662800702e+4932F64x"
.LASF1119:
	.string	"xTaskNotifyGive(xTaskToNotify) xTaskGenericNotify( ( xTaskToNotify ), ( 0 ), eIncrement, NULL )"
.LASF556:
	.string	"INT_LEAST16_MAX __INT_LEAST16_MAX__"
.LASF209:
	.string	"__UINT_LEAST64_MAX__ 0xffffffffffffffffULL"
.LASF1521:
	.string	"stackSize"
.LASF1534:
	.string	"vTaskDelete"
.LASF666:
	.string	"SPI0_CTRL_ADDR _AC(0x10014000,UL)"
.LASF1297:
	.string	"__format_arg(fmtarg) __attribute__((__format_arg__ (fmtarg)))"
.LASF1464:
	.string	"__SL64 0x8000"
.LASF1100:
	.string	"tskMPU_REGION_READ_WRITE ( 1UL << 1UL )"
.LASF852:
	.string	"portSTACK_TYPE uint32_t"
.LASF656:
	.string	"MASKROM_MEM_ADDR _AC(0x00001000,UL)"
.LASF777:
	.string	"INCLUDE_vTaskDelayUntil 1"
.LASF578:
	.string	"UINT_FAST8_MAX __UINT_FAST8_MAX__"
.LASF919:
	.string	"traceTASK_SWITCHED_OUT() "
.LASF882:
	.string	"portFORCE_INLINE inline __attribute__(( always_inline))"
.LASF1243:
	.string	"__CC_SUPPORTS_INLINE 1"
.LASF613:
	.string	"SIG_ATOMIC_MAX"
.LASF1113:
	.string	"taskSCHEDULER_NOT_STARTED ( ( BaseType_t ) 1 )"
.LASF794:
	.string	"pdFALSE ( ( BaseType_t ) 0 )"
.LASF612:
	.string	"PTRDIFF_MIN (-PTRDIFF_MAX - 1)"
.LASF1555:
	.string	"timeout"
.LASF255:
	.string	"__DBL_DECIMAL_DIG__ 17"
.LASF25:
	.string	"__SIZEOF_LONG_LONG__ 8"
.LASF1024:
	.string	"configSUPPORT_DYNAMIC_ALLOCATION 1"
.LASF617:
	.string	"SIZE_MAX"
.LASF70:
	.string	"__INT_FAST32_TYPE__ int"
.LASF1042:
	.string	"xQueueSetMemberHandle QueueSetMemberHandle_t"
.LASF372:
	.string	"__FLT64X_MAX_10_EXP__ 4932"
.LASF1471:
	.string	"BUFSIZ 1024"
.LASF306:
	.string	"__FLT32_DECIMAL_DIG__ 9"
.LASF1528:
	.string	"QueueDefinition"
.LASF1420:
	.string	"_REENT_MBSRTOWCS_STATE(ptr) ((ptr)->_new._reent._mbsrtowcs_state)"
.LASF1320:
	.string	"__datatype_type_tag(kind,type) "
.LASF758:
	.string	"configUSE_RECURSIVE_MUTEXES 1"
.LASF635:
	.string	"UINT8_C"
.LASF511:
	.string	"__INT_WCHAR_T_H "
.LASF1166:
	.string	"__OBSOLETE_MATH_DEFAULT 1"
.LASF1224:
	.string	"__bounded "
.LASF45:
	.string	"__WINT_TYPE__ unsigned int"
.LASF340:
	.string	"__FLT128_MAX_10_EXP__ 4932"
.LASF558:
	.string	"INT_LEAST16_MIN (-INT_LEAST16_MAX - 1)"
.LASF1209:
	.string	"___int_least8_t_defined 1"
.LASF1319:
	.string	"__arg_type_tag(arg_kind,arg_idx,type_tag_idx) "
.LASF407:
	.string	"__GCC_ATOMIC_CHAR8_T_LOCK_FREE 1"
.LASF1114:
	.string	"taskSCHEDULER_RUNNING ( ( BaseType_t ) 2 )"
.LASF256:
	.string	"__DBL_MAX__ double(1.79769313486231570814527423731704357e+308L)"
.LASF846:
	.string	"pdFREERTOS_BIG_ENDIAN 1"
.LASF1029:
	.string	"portTICK_TYPE_EXIT_CRITICAL() "
.LASF431:
	.string	"__riscv_fdiv 1"
.LASF184:
	.string	"__INT16_MAX__ 0x7fff"
.LASF232:
	.string	"__FLT_MANT_DIG__ 24"
.LASF1328:
	.string	"__asserts_exclusive(...) __lock_annotate(assert_exclusive_lock(__VA_ARGS__))"
.LASF684:
	.string	"IOF_SPI1_DQ0 (3u)"
.LASF859:
	.string	"portLONG long"
.LASF1395:
	.ascii	"_REENT_INIT_PTR_ZEROED(var) { (var)->_stdin = &__sf[0]; (var"
	.ascii	")->_stdout = &__sf[1]; (var)->_stderr = &__sf[2]; (var)->_ne"
	.ascii	"w._reent._rand_next = 1; (var)->_new._reent._r48._seed[0] = "
	.ascii	"_RAND48_SEED_0; (var)->_new._reent._r48._seed[1] = _RAND48_S"
	.string	"EED_1; (var)->_new._reent._r48._seed[2] = _RAND48_SEED_2; (var)->_new._reent._r48._mult[0] = _RAND48_MULT_0; (var)->_new._reent._r48._mult[1] = _RAND48_MULT_1; (var)->_new._reent._r48._mult[2] = _RAND48_MULT_2; (var)->_new._reent._r48._add = _RAND48_ADD; }"
.LASF1078:
	.string	"listTEST_LIST_ITEM_INTEGRITY(pxItem) "
.LASF332:
	.string	"__FLT64_HAS_QUIET_NAN__ 1"
.LASF518:
	.string	"NULL __null"
.LASF460:
	.string	"__COMPONENT_NAME__ \"suas_app_freertos_watchdog\""
.LASF1147:
	.string	"__NEWLIB_MINOR__ 4"
.LASF857:
	.string	"portFLOAT float"
.LASF937:
	.string	"traceCREATE_COUNTING_SEMAPHORE() "
.LASF688:
	.string	"IOF0_SPI2_MASK _AC(0xFC000000,UL)"
.LASF1206:
	.string	"___int16_t_defined 1"
.LASF924:
	.string	"traceBLOCKING_ON_QUEUE_SEND(pxQueue) "
.LASF1241:
	.string	"__GNUCLIKE_MATH_BUILTIN_RELOPS "
.LASF104:
	.string	"__cpp_digit_separators 201309L"
.LASF1074:
	.string	"listSET_FIRST_LIST_ITEM_INTEGRITY_CHECK_VALUE(pxItem) "
.LASF800:
	.string	"errCOULD_NOT_ALLOCATE_REQUIRED_MEMORY ( -1 )"
.LASF1090:
	.ascii	"listGET_OWNER_OF_NEXT_ENTRY(pxTCB,pxList) { List_t * const p"
	.ascii	"xConstList = ( pxList ); ( pxC"
	.string	"onstList )->pxIndex = ( pxConstList )->pxIndex->pxNext; if( ( void * ) ( pxConstList )->pxIndex == ( void * ) &( ( pxConstList )->xListEnd ) ) { ( pxConstList )->pxIndex = ( pxConstList )->pxIndex->pxNext; } ( pxTCB ) = ( pxConstList )->pxIndex->pvOwner; }"
.LASF1345:
	.string	"__need___va_list "
.LASF914:
	.string	"traceEND() "
.LASF1339:
	.string	"__builtin_is_aligned(x,align) (((__uintptr_t)x & ((align) - 1)) == 0)"
.LASF8:
	.string	"__STDC_EMBED_FOUND__ 1"
.LASF509:
	.string	"_WCHAR_T_H "
.LASF191:
	.string	"__INT_LEAST8_MAX__ 0x7f"
.LASF234:
	.string	"__FLT_MIN_EXP__ (-125)"
.LASF971:
	.string	"traceEVENT_GROUP_SYNC_BLOCK(xEventGroup,uxBitsToSet,uxBitsToWaitFor) "
.LASF36:
	.string	"__BYTE_ORDER__ __ORDER_LITTLE_ENDIAN__"
.LASF210:
	.string	"__UINT64_C(c) c ## ULL"
.LASF1490:
	.string	"__sclearerr(p) ((void)((p)->_flags &= ~(__SERR|__SEOF)))"
.LASF1325:
	.string	"__trylocks_exclusive(...) __lock_annotate(exclusive_trylock_function(__VA_ARGS__))"
.LASF945:
	.string	"traceQUEUE_RECEIVE_FAILED(pxQueue) "
.LASF231:
	.string	"__FLT_RADIX__ 2"
.LASF386:
	.string	"__BFLT16_MIN_EXP__ (-125)"
.LASF682:
	.string	"IOF_SPI1_MISO (4u)"
.LASF281:
	.string	"__LDBL_IS_IEC_60559__ 1"
.LASF1189:
	.string	"_BEGIN_STD_C extern \"C\" {"
.LASF1449:
	.string	"_funlockfile(fp) (((fp)->_flags & __SSTR) ? 0 : __lock_release_recursive((fp)->_lock))"
.LASF1052:
	.string	"pcTimerGetTimerName pcTimerGetName"
.LASF1434:
	.string	"_REENT_STDIN(_ptr) ((_ptr)->_stdin)"
.LASF660:
	.string	"PLIC_CTRL_ADDR _AC(0x0C000000,UL)"
.LASF680:
	.string	"IOF_SPI1_SS3 (10u)"
.LASF1491:
	.string	"__sfileno(p) ((p)->_file)"
.LASF229:
	.string	"__FLT_EVAL_METHOD_TS_18661_3__ 0"
.LASF1124:
	.string	"queueQUEUE_TYPE_BASE ( ( uint8_t ) 0U )"
.LASF80:
	.string	"__GXX_EXPERIMENTAL_CXX0X__ 1"
.LASF676:
	.string	"SPI11_NUM_SS (4)"
.LASF177:
	.string	"__UINTMAX_MAX__ 0xffffffffffffffffULL"
.LASF671:
	.string	"SPI2_CTRL_ADDR _AC(0x10034000,UL)"
.LASF112:
	.string	"__cpp_if_constexpr 201606L"
.LASF872:
	.string	"portENABLE_INTERRUPTS() __asm volatile( \"csrs mstatus, 8\" )"
.LASF1068:
	.string	"LIST_H "
.LASF918:
	.string	"traceLOW_POWER_IDLE_END() "
.LASF1398:
	.string	"_REENT_CHECK_TM(ptr) "
.LASF1494:
	.string	"MAX_TASKS 10"
.LASF428:
	.string	"__riscv_muldiv 1"
.LASF870:
	.string	"portCLEAR_INTERRUPT_MASK_FROM_ISR(uxSavedStatusValue) ( void ) uxSavedStatusValue"
.LASF587:
	.string	"INT_FAST32_MIN"
.LASF351:
	.string	"__FLT32X_MANT_DIG__ 53"
.LASF1148:
	.string	"__NEWLIB_PATCHLEVEL__ 0"
.LASF1367:
	.string	"__lock_init_recursive(lock) ((void) 0)"
.LASF825:
	.string	"pdFREERTOS_ERRNO_EROFS 30"
.LASF667:
	.string	"PWM0_CTRL_ADDR _AC(0x10015000,UL)"
.LASF902:
	.string	"INCLUDE_xTaskGetCurrentTaskHandle 0"
.LASF1002:
	.string	"traceSTREAM_BUFFER_RECEIVE_FROM_ISR(xStreamBuffer,xReceivedLength) "
.LASF168:
	.string	"__INT_WIDTH__ 32"
.LASF892:
	.string	"portUSING_MPU_WRAPPERS 0"
.LASF143:
	.string	"__cpp_static_call_operator 202207L"
.LASF385:
	.string	"__BFLT16_DIG__ 2"
.LASF316:
	.string	"__FLT32_IS_IEC_60559__ 1"
.LASF375:
	.string	"__FLT64X_NORM_MAX__ 1.18973149535723176508575932662800702e+4932F64x"
.LASF1302:
	.string	"__weak_reference(sym,alias) __asm__(\".weak \" #alias); __asm__(\".equ \" #alias \", \" #sym)"
.LASF1208:
	.string	"___int64_t_defined 1"
.LASF1030:
	.string	"portTICK_TYPE_SET_INTERRUPT_MASK_FROM_ISR() 0"
.LASF1155:
	.string	"_REENT_CHECK_VERIFY 1"
.LASF1240:
	.string	"__GNUCLIKE_BUILTIN_NEXT_ARG 1"
.LASF293:
	.string	"__FLT16_EPSILON__ 9.76562500000000000000000000000000000e-4F16"
.LASF573:
	.string	"INT_FAST8_MAX"
.LASF845:
	.string	"pdFREERTOS_LITTLE_ENDIAN 0"
.LASF357:
	.string	"__FLT32X_DECIMAL_DIG__ 17"
.LASF1026:
	.string	"configMESSAGE_BUFFER_LENGTH_TYPE size_t"
.LASF409:
	.string	"__GCC_ATOMIC_CHAR32_T_LOCK_FREE 1"
.LASF53:
	.string	"__INT16_TYPE__ short int"
.LASF435:
	.string	"__riscv_misaligned_slow 1"
.LASF1511:
	.string	"BaseType_t"
.LASF1405:
	.string	"_REENT_RAND48_SEED(ptr) ((ptr)->_new._reent._r48._seed)"
.LASF593:
	.string	"INT_FAST64_MIN"
.LASF1242:
	.string	"__GNUCLIKE_BUILTIN_MEMCPY 1"
.LASF494:
	.string	"___int_size_t_h "
.LASF1305:
	.string	"__sym_default(sym,impl,verid) __asm__(\".symver \" #impl \", \" #sym \"@@\" #verid)"
.LASF932:
	.string	"traceCREATE_MUTEX_FAILED() "
.LASF489:
	.string	"_SIZE_T_DEFINED_ "
.LASF1556:
	.ascii	"GNU C++23 15"
	.string	".1.0 -mabi=ilp32f -misa-spec=20191213 -march=rv32imfc_zicsr_zmmul_zca_zcf -gdwarf -g3 -Os -std=c++23 -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing -fms-extensions -ffunction-sections -fdata-sections -fno-rtti -fno-exceptions"
.LASF392:
	.string	"__BFLT16_NORM_MAX__ 3.38953138925153547590470800371487867e+38BF16"
.LASF1501:
	.string	"size_t"
.LASF413:
	.string	"__GCC_ATOMIC_LONG_LOCK_FREE 1"
.LASF524:
	.string	"_GCC_STDINT_H "
.LASF851:
	.string	"PORTMACRO_H "
.LASF900:
	.string	"INCLUDE_xTaskResumeFromISR 1"
.LASF1099:
	.string	"tskMPU_REGION_READ_ONLY ( 1UL << 0UL )"
.LASF1329:
	.string	"__asserts_shared(...) __lock_annotate(assert_shared_lock(__VA_ARGS__))"
.LASF970:
	.string	"traceEVENT_GROUP_CREATE_FAILED() "
.LASF442:
	.string	"__riscv_zmmul 1000000"
.LASF1429:
	.string	"_REENT_EMERGENCY(_ptr) ((_ptr)->_emergency)"
.LASF843:
	.string	"pdFREERTOS_ERRNO_EILSEQ 138"
.LASF517:
	.string	"NULL"
.LASF740:
	.string	"configMTIMECMP_BASE_ADDRESS ( ( CLINT_CTRL_ADDR ) + 0x4000UL )"
.LASF1239:
	.string	"__compiler_membar() __asm __volatile(\" \" : : : \"memory\")"
.LASF436:
	.string	"__riscv_arch_test 1"
.LASF1178:
	.string	"__SVID_VISIBLE 0"
.LASF88:
	.string	"__cpp_lambdas 200907L"
.LASF383:
	.string	"__STDCPP_BFLOAT16_T__ 1"
.LASF247:
	.string	"__FP_FAST_FMAF 1"
.LASF1109:
	.string	"taskEXIT_CRITICAL_FROM_ISR(x) portCLEAR_INTERRUPT_MASK_FROM_ISR( x )"
.LASF1066:
	.string	"tskSTATIC_AND_DYNAMIC_ALLOCATION_POSSIBLE ( ( ( portUSING_MPU_WRAPPERS == 0 ) && ( configSUPPORT_DYNAMIC_ALLOCATION == 1 ) && ( configSUPPORT_STATIC_ALLOCATION == 1 ) ) || ( ( portUSING_MPU_WRAPPERS == 1 ) && ( configSUPPORT_DYNAMIC_ALLOCATION == 1 ) ) )"
.LASF396:
	.string	"__BFLT16_HAS_DENORM__ 1"
.LASF856:
	.string	"portCHAR char"
.LASF1397:
	.string	"_REENT_CHECK_MP(ptr) "
.LASF807:
	.string	"pdFREERTOS_ERRNO_EINTR 4"
.LASF512:
	.string	"_GCC_WCHAR_T "
.LASF507:
	.string	"_WCHAR_T_DEFINED_ "
.LASF1364:
	.string	"__LOCK_INIT(class,lock) static int lock = 0;"
.LASF93:
	.string	"__cpp_variadic_templates 200704L"
.LASF897:
	.string	"INCLUDE_xSemaphoreGetMutexHolder INCLUDE_xQueueGetMutexHolder"
.LASF768:
	.string	"configTIMER_TASK_PRIORITY ( configMAX_PRIORITIES - 1 )"
.LASF135:
	.string	"__cpp_aggregate_paren_init 201902L"
.LASF218:
	.string	"__INT_FAST64_WIDTH__ 64"
.LASF655:
	.string	"_BITULL(x) (_AC(1,ULL) << (x))"
.LASF1198:
	.string	"__need_size_t "
.LASF812:
	.string	"pdFREERTOS_ERRNO_EWOULDBLOCK 11"
.LASF685:
	.string	"IOF_SPI1_DQ1 (4u)"
.LASF639:
	.string	"UINT32_C"
.LASF663:
	.string	"OTP_CTRL_ADDR _AC(0x10010000,UL)"
.LASF1257:
	.string	"__volatile volatile"
.LASF119:
	.string	"__cpp_variadic_using 201611L"
.LASF404:
	.string	"__CHAR_UNSIGNED__ 1"
.LASF1031:
	.string	"portTICK_TYPE_CLEAR_INTERRUPT_MASK_FROM_ISR(x) ( void ) x"
.LASF131:
	.string	"__cpp_nontype_template_parameter_class 201806L"
.LASF725:
	.string	"PLIC_REG(offset) _REG32(PLIC_CTRL_ADDR, offset)"
.LASF515:
	.string	"_BSD_WCHAR_T_"
.LASF447:
	.string	"ETL_NO_STL 1"
.LASF1034:
	.string	"configMAX(a,b) ( ( ( a ) > ( b ) ) ? ( a ) : ( b ) )"
.LASF155:
	.string	"__SCHAR_MAX__ 0x7f"
.LASF1483:
	.string	"_stdout_r(x) _REENT_STDOUT(x)"
.LASF419:
	.string	"__GCC_HAVE_DWARF2_CFI_ASM 1"
.LASF1036:
	.string	"eTaskStateGet eTaskGetState"
.LASF532:
	.string	"INT16_MAX __INT16_MAX__"
.LASF487:
	.string	"_SIZE_T_ "
.LASF1514:
	.string	"TaskHandle_t"
.LASF1005:
	.string	"portYIELD_WITHIN_API portYIELD"
.LASF288:
	.string	"__FLT16_MAX_10_EXP__ 4"
.LASF1461:
	.string	"__SNPT 0x0800"
.LASF101:
	.string	"__cpp_decltype_auto 201304L"
.LASF987:
	.string	"traceTASK_NOTIFY() "
.LASF498:
	.string	"__need_size_t"
.LASF1529:
	.string	"g_tasks"
.LASF811:
	.string	"pdFREERTOS_ERRNO_EAGAIN 11"
.LASF979:
	.string	"traceEVENT_GROUP_DELETE(xEventGroup) "
.LASF225:
	.string	"__UINTPTR_MAX__ 0xffffffffU"
.LASF562:
	.string	"INT_LEAST32_MAX __INT_LEAST32_MAX__"
.LASF764:
	.string	"configNUM_THREAD_LOCAL_STORAGE_POINTERS 1"
.LASF1039:
	.string	"xQueueHandle QueueHandle_t"
.LASF947:
	.string	"traceQUEUE_SEND_FROM_ISR_FAILED(pxQueue) "
.LASF1161:
	.string	"_WANT_USE_GDTOA 1"
.LASF246:
	.string	"__FLT_HAS_QUIET_NAN__ 1"
.LASF1547:
	.string	"uxPriority"
.LASF647:
	.string	"_GCC_WRAP_STDINT_H "
.LASF596:
	.string	"UINT_FAST64_MAX __UINT_FAST64_MAX__"
.LASF665:
	.string	"UART0_CTRL_ADDR _AC(0x10013000,UL)"
.LASF986:
	.string	"traceTASK_NOTIFY_WAIT() "
.LASF678:
	.string	"IOF_SPI1_SS1 (8u)"
.LASF1343:
	.string	"__align_down(x,y) __builtin_align_down(x, y)"
.LASF1140:
	.string	"xQueueReset(xQueue) xQueueGenericReset( xQueue, pdFALSE )"
.LASF257:
	.string	"__DBL_NORM_MAX__ double(1.79769313486231570814527423731704357e+308L)"
.LASF988:
	.string	"traceTASK_NOTIFY_FROM_ISR() "
.LASF292:
	.string	"__FLT16_MIN__ 6.10351562500000000000000000000000000e-5F16"
.LASF645:
	.string	"UINTMAX_C"
.LASF1409:
	.string	"_REENT_MP_RESULT_K(ptr) ((ptr)->_result_k)"
.LASF831:
	.string	"pdFREERTOS_ERRNO_ENAMETOOLONG 91"
.LASF166:
	.string	"__SCHAR_WIDTH__ 8"
.LASF1017:
	.string	"portASSERT_IF_INTERRUPT_PRIORITY_INVALID() "
.LASF35:
	.string	"__ORDER_PDP_ENDIAN__ 3412"
.LASF58:
	.string	"__UINT32_TYPE__ long unsigned int"
.LASF16:
	.string	"__ATOMIC_ACQUIRE 2"
.LASF826:
	.string	"pdFREERTOS_ERRNO_EUNATCH 42"
.LASF1088:
	.string	"listLIST_IS_EMPTY(pxList) ( ( ( pxList )->uxNumberOfItems == ( UBaseType_t ) 0 ) ? pdTRUE : pdFALSE )"
.LASF958:
	.string	"traceTASK_SUSPEND(pxTaskToSuspend) "
.LASF1115:
	.string	"xTaskNotify(xTaskToNotify,ulValue,eAction) xTaskGenericNotify( ( xTaskToNotify ), ( ulValue ), ( eAction ), NULL )"
.LASF216:
	.string	"__INT_FAST32_WIDTH__ 32"
.LASF71:
	.string	"__INT_FAST64_TYPE__ long long int"
.LASF1279:
	.string	"__noinline __attribute__ ((__noinline__))"
.LASF985:
	.string	"traceTASK_NOTIFY_WAIT_BLOCK() "
.LASF1221:
	.string	"__attribute_pure__ "
.LASF1153:
	.string	"_HAVE_LONG_DOUBLE 1"
.LASF200:
	.string	"__INT_LEAST64_MAX__ 0x7fffffffffffffffLL"
.LASF1018:
	.string	"mtCOVERAGE_TEST_MARKER() "
.LASF580:
	.string	"INT_FAST16_MAX __INT_FAST16_MAX__"
.LASF208:
	.string	"__UINT32_C(c) c ## UL"
.LASF1453:
	.string	"__SWR 0x0008"
.LASF90:
	.string	"__cpp_attributes 200809L"
.LASF640:
	.string	"UINT32_C(c) __UINT32_C(c)"
.LASF1280:
	.string	"__nonnull(x) __attribute__((__nonnull__ x))"
.LASF908:
	.string	"portSOFTWARE_BARRIER() "
.LASF1076:
	.string	"listSET_LIST_INTEGRITY_CHECK_1_VALUE(pxList) "
.LASF603:
	.string	"INTMAX_MAX"
.LASF283:
	.string	"__FLT16_MANT_DIG__ 11"
.LASF796:
	.string	"pdPASS ( pdTRUE )"
.LASF548:
	.string	"UINT64_MAX __UINT64_MAX__"
.LASF697:
	.string	"IOF_SPI2_DQ3 (31u)"
.LASF543:
	.string	"INT64_MAX"
.LASF520:
	.string	"offsetof"
.LASF179:
	.string	"__INTMAX_WIDTH__ 64"
.LASF696:
	.string	"IOF_SPI2_DQ2 (30u)"
.LASF1347:
	.string	"__GNUC_VA_LIST "
.LASF202:
	.string	"__INT_LEAST64_WIDTH__ 64"
.LASF863:
	.string	"portTICK_PERIOD_MS ( ( TickType_t ) 1000 / configTICK_RATE_HZ )"
.LASF1318:
	.string	"__NULLABILITY_PRAGMA_POP "
.LASF1144:
	.string	"_NEWLIB_VERSION_H__ 1"
.LASF1107:
	.string	"taskENTER_CRITICAL_FROM_ISR() portSET_INTERRUPT_MASK_FROM_ISR()"
.LASF1421:
	.string	"_REENT_WCRTOMB_STATE(ptr) ((ptr)->_new._reent._wcrtomb_state)"
.LASF1352:
	.string	"__need_wint_t"
.LASF14:
	.string	"__ATOMIC_RELAXED 0"
.LASF456:
	.string	"CFG_COMPONENT_BLOG_ENABLE 0"
.LASF1430:
	.string	"_REENT_ERRNO(_ptr) ((_ptr)->_errno)"
.LASF105:
	.string	"__cpp_unicode_characters 201411L"
.LASF1519:
	.string	"params"
.LASF1027:
	.string	"configINITIAL_TICK_COUNT 0"
.LASF755:
	.string	"configUSE_MUTEXES 1"
.LASF754:
	.string	"configIDLE_SHOULD_YIELD 1"
.LASF931:
	.string	"traceCREATE_MUTEX(pxNewQueue) "
.LASF282:
	.string	"__STDCPP_FLOAT16_T__ 1"
.LASF756:
	.string	"configQUEUE_REGISTRY_SIZE 8"
.LASF1469:
	.string	"_IONBF 2"
.LASF950:
	.string	"traceQUEUE_PEEK_FROM_ISR_FAILED(pxQueue) "
.LASF1146:
	.string	"__NEWLIB__ 4"
.LASF750:
	.string	"configMAX_TASK_NAME_LEN ( 16 )"
.LASF1284:
	.string	"__returns_twice __attribute__((__returns_twice__))"
.LASF706:
	.string	"IOF1_PWM2_MASK _AC(0x00003C00, UL)"
.LASF1408:
	.string	"_REENT_MP_RESULT(ptr) ((ptr)->_result)"
.LASF1530:
	.string	"g_task_count"
.LASF226:
	.string	"__GCC_IEC_559 0"
.LASF248:
	.string	"__FLT_IS_IEC_60559__ 1"
.LASF399:
	.string	"__BFLT16_IS_IEC_60559__ 0"
.LASF1444:
	.string	"__FILE_defined "
.LASF1425:
	.string	"_REENT_GETDATE_ERR_P(ptr) (&((ptr)->_new._reent._getdate_err))"
.LASF1226:
	.string	"__ptrvalue "
.LASF1361:
	.string	"_NULL 0"
.LASF1227:
	.string	"__BEGIN_DECLS extern \"C\" {"
.LASF1184:
	.string	"__RAND_MAX 0x7fffffff"
.LASF499:
	.string	"__wchar_t__ "
.LASF1371:
	.string	"__lock_acquire_recursive(lock) ((void) 0)"
.LASF953:
	.string	"traceTASK_CREATE_FAILED() "
.LASF765:
	.string	"configUSE_CO_ROUTINES 0"
.LASF450:
	.string	"BL_SDK_RF_VER \"f76e39a\""
.LASF513:
	.string	"_WCHAR_T_DECLARED "
.LASF720:
	.string	"_REG32P(p,i) ((volatile uint32_t *) ((p) + (i)))"
.LASF1267:
	.string	"__alloc_size(x) __attribute__((__alloc_size__(x)))"
.LASF1400:
	.string	"_REENT_CHECK_EMERGENCY(ptr) "
.LASF1156:
	.string	"_UNBUF_STREAM_OPT 1"
.LASF1304:
	.string	"__sym_compat(sym,impl,verid) __asm__(\".symver \" #impl \", \" #sym \"@\" #verid)"
.LASF193:
	.string	"__INT_LEAST8_WIDTH__ 8"
.LASF961:
	.string	"traceTASK_INCREMENT_TICK(xTickCount) "
.LASF10:
	.string	"__GNUC__ 15"
.LASF1499:
	.string	"signed char"
.LASF862:
	.string	"portSTACK_GROWTH ( -1 )"
.LASF69:
	.string	"__INT_FAST16_TYPE__ int"
.LASF199:
	.string	"__INT_LEAST32_WIDTH__ 32"
.LASF1064:
	.string	"configENABLE_TRUSTZONE 1"
.LASF1527:
	.string	"tskTaskControlBlock"
.LASF359:
	.string	"__FLT32X_NORM_MAX__ 1.79769313486231570814527423731704357e+308F32x"
.LASF1486:
	.string	"__sgetc_raw_r(__ptr,__f) (--(__f)->_r < 0 ? __srget_r(__ptr, __f) : (int)(*(__f)->_p++))"
.LASF699:
	.string	"IOF_UART0_RX (16u)"
.LASF347:
	.string	"__FLT128_HAS_DENORM__ 1"
.LASF693:
	.string	"IOF_SPI2_SCK (29u)"
.LASF422:
	.string	"__SIZEOF_WINT_T__ 4"
.LASF1356:
	.string	"unsigned"
.LASF1465:
	.string	"__SNLK 0x0001"
.LASF575:
	.string	"INT_FAST8_MIN"
.LASF747:
	.string	"configMAX_PRIORITIES ( 32 )"
.LASF1094:
	.string	"listLIST_IS_INITIALISED(pxList) ( ( pxList )->xListEnd.xItemValue == portMAX_DELAY )"
.LASF806:
	.string	"pdFREERTOS_ERRNO_ENOENT 2"
.LASF108:
	.string	"__cpp_enumerator_attributes 201411L"
.LASF157:
	.string	"__INT_MAX__ 0x7fffffff"
.LASF128:
	.string	"__cpp_constinit 201907L"
.LASF60:
	.string	"__INT_LEAST8_TYPE__ signed char"
.LASF1546:
	.string	"pvParameters"
.LASF123:
	.string	"__cpp_generic_lambdas 201707L"
.LASF631:
	.string	"INT32_C"
.LASF1188:
	.string	"_USE_GDTOA "
.LASF748:
	.string	"configMINIMAL_STACK_SIZE ( ( unsigned short ) 96 )"
.LASF734:
	.string	"UART1_REG(offset) _REG32(UART1_CTRL_ADDR, offset)"
.LASF333:
	.string	"__FLT64_IS_IEC_60559__ 1"
.LASF275:
	.string	"__LDBL_MIN__ 3.36210314311209350626267781732175260e-4932L"
.LASF421:
	.string	"__SIZEOF_WCHAR_T__ 4"
.LASF643:
	.string	"INTMAX_C"
.LASF865:
	.string	"portYIELD() __asm volatile( \"ecall\" );"
.LASF967:
	.string	"traceMALLOC(pvAddress,uiSize) "
.LASF1301:
	.string	"__strong_reference(sym,aliassym) extern __typeof (sym) aliassym __attribute__ ((__alias__ (#sym)))"
.LASF389:
	.string	"__BFLT16_MAX_10_EXP__ 38"
.LASF183:
	.string	"__INT8_MAX__ 0x7f"
.LASF505:
	.string	"_WCHAR_T_ "
.LASF197:
	.string	"__INT_LEAST32_MAX__ 0x7fffffffL"
.LASF89:
	.string	"__cpp_decltype 200707L"
.LASF1139:
	.string	"xQueueSendFromISR(xQueue,pvItemToQueue,pxHigherPriorityTaskWoken) xQueueGenericSendFromISR( ( xQueue ), ( pvItemToQueue ), ( pxHigherPriorityTaskWoken ), queueSEND_TO_BACK )"
.LASF1235:
	.string	"__GNUCLIKE_BUILTIN_VARARGS 1"
.LASF1443:
	.string	"_Kmax (sizeof (size_t) << 3)"
.LASF773:
	.string	"INCLUDE_uxTaskPriorityGet 1"
.LASF1217:
	.string	"__ASMNAME(cname) __XSTRING (__USER_LABEL_PREFIX__) cname"
.LASF838:
	.string	"pdFREERTOS_ERRNO_EALREADY 120"
.LASF1210:
	.string	"___int_least16_t_defined 1"
.LASF1477:
	.string	"SEEK_END 2"
.LASF969:
	.string	"traceEVENT_GROUP_CREATE(xEventGroup) "
.LASF154:
	.string	"__GXX_ABI_VERSION 1020"
.LASF113:
	.string	"__cpp_capture_star_this 201603L"
.LASF736:
	.string	"PLIC_NUM_INTERRUPTS 52"
.LASF483:
	.string	"_SYS_SIZE_T_H "
.LASF176:
	.string	"__INTMAX_C(c) c ## LL"
.LASF220:
	.string	"__UINT_FAST16_MAX__ 0xffffffffU"
.LASF75:
	.string	"__UINT_FAST64_TYPE__ long long unsigned int"
.LASF1404:
	.string	"_REENT_RAND_NEXT(ptr) ((ptr)->_new._reent._rand_next)"
.LASF523:
	.string	"_GXX_NULLPTR_T "
.LASF1551:
	.string	"watchdog_init"
.LASF1273:
	.string	"_Static_assert(x,y) static_assert(x, y)"
.LASF1324:
	.string	"__locks_shared(...) __lock_annotate(shared_lock_function(__VA_ARGS__))"
.LASF1518:
	.string	"name"
.LASF165:
	.string	"__SIZE_MAX__ 0xffffffffU"
.LASF264:
	.string	"__DBL_IS_IEC_60559__ 1"
.LASF13:
	.string	"__VERSION__ \"15.1.0\""
.LASF625:
	.string	"WINT_MIN"
.LASF1133:
	.string	"xQueueSendToBack(xQueue,pvItemToQueue,xTicksToWait) xQueueGenericSend( ( xQueue ), ( pvItemToQueue ), ( xTicksToWait ), queueSEND_TO_BACK )"
.LASF793:
	.string	"pdMS_TO_TICKS(xTimeInMs) ( ( TickType_t ) ( ( ( TickType_t ) ( xTimeInMs ) * ( TickType_t ) configTICK_RATE_HZ ) / ( TickType_t ) 1000 ) )"
.LASF880:
	.string	"portNOP() __asm volatile ( \" nop \" )"
.LASF738:
	.string	"configSUPPORT_STATIC_ALLOCATION 1"
.LASF1069:
	.string	"configLIST_VOLATILE "
.LASF219:
	.string	"__UINT_FAST8_MAX__ 0xffffffffU"
.LASF1440:
	.string	"_REENT _impure_ptr"
.LASF1417:
	.string	"_REENT_WCTOMB_STATE(ptr) ((ptr)->_new._reent._wctomb_state)"
.LASF885:
	.string	"portNUM_CONFIGURABLE_REGIONS 1"
.LASF1481:
	.string	"stderr _REENT_STDERR(_REENT)"
.LASF582:
	.string	"INT_FAST16_MIN (-INT_FAST16_MAX - 1)"
.LASF519:
	.string	"__need_NULL"
.LASF521:
	.string	"offsetof(TYPE,MEMBER) __builtin_offsetof (TYPE, MEMBER)"
.LASF1524:
	.string	"heartbeat_count"
.LASF1294:
	.string	"__containerof(x,s,m) ({ const volatile __typeof(((s *)0)->m) *__x = (x); __DEQUALIFY(s *, (const volatile char *)__x - __offsetof(s, m));})"
.LASF1360:
	.string	"_TIMER_T_ unsigned long"
.LASF1264:
	.string	"__packed __attribute__((__packed__))"
.LASF1312:
	.string	"__DEVOLATILE(type,var) ((type)(__uintptr_t)(volatile void *)(var))"
.LASF1467:
	.string	"_IOFBF 0"
.LASF1458:
	.string	"__SAPP 0x0100"
.LASF1046:
	.string	"xTaskStatusType TaskStatus_t"
.LASF921:
	.string	"traceTASK_PRIORITY_DISINHERIT(pxTCBOfMutexHolder,uxOriginalPriority) "
.LASF1349:
	.string	"_SYS__TYPES_H "
.LASF1086:
	.string	"listGET_NEXT(pxListItem) ( ( pxListItem )->pxNext )"
.LASF1482:
	.string	"_stdin_r(x) _REENT_STDIN(x)"
.LASF1381:
	.string	"_RAND48_SEED_2 (0x1234)"
.LASF142:
	.string	"__cpp_named_character_escapes 202207L"
.LASF158:
	.string	"__LONG_MAX__ 0x7fffffffL"
.LASF878:
	.string	"portTASK_FUNCTION_PROTO(vFunction,pvParameters) void vFunction( void *pvParameters )"
.LASF1307:
	.string	"__RCSID(s) struct __hack"
.LASF1372:
	.string	"__lock_try_acquire(lock) ((void) 0)"
.LASF198:
	.string	"__INT32_C(c) c ## L"
.LASF270:
	.string	"__LDBL_MAX_10_EXP__ 4932"
.LASF1543:
	.string	"pxTaskCode"
.LASF597:
	.string	"INTPTR_MAX"
.LASF148:
	.string	"__cpp_sized_deallocation 201309L"
.LASF624:
	.string	"WINT_MAX __WINT_MAX__"
.LASF823:
	.string	"pdFREERTOS_ERRNO_ENOSPC 28"
.LASF117:
	.string	"__cpp_template_auto 201606L"
.LASF726:
	.string	"PRCI_REG(offset) _REG32(PRCI_CTRL_ADDR, offset)"
.LASF1236:
	.string	"__GNUCLIKE_BUILTIN_STDARG 1"
.LASF733:
	.string	"UART0_REG(offset) _REG32(UART0_CTRL_ADDR, offset)"
.LASF1450:
	.string	"__SLBF 0x0001"
.LASF180:
	.string	"__SIG_ATOMIC_MAX__ 0x7fffffff"
.LASF366:
	.string	"__FLT32X_IS_IEC_60559__ 1"
.LASF1165:
	.string	"_SUPPORTS_ERREXCEPT "
.LASF590:
	.string	"UINT_FAST32_MAX __UINT_FAST32_MAX__"
.LASF1054:
	.string	"vTaskGetTaskInfo vTaskGetInfo"
.LASF1375:
	.string	"__lock_release_recursive(lock) ((void) 0)"
.LASF1141:
	.string	"_STDIO_H_ "
.LASF345:
	.string	"__FLT128_EPSILON__ 1.92592994438723585305597794258492732e-34F128"
.LASF350:
	.string	"__FLT128_IS_IEC_60559__ 1"
.LASF781:
	.string	"INCLUDE_uxTaskGetStackHighWaterMark 1"
.LASF443:
	.string	"__riscv_zca 1000000"
.LASF439:
	.string	"__riscv_f 2002000"
.LASF707:
	.string	"INT_RESERVED 0"
.LASF136:
	.string	"__cpp_using_enum 201907L"
.LASF637:
	.string	"UINT16_C"
.LASF480:
	.string	"__size_t__ "
.LASF1163:
	.string	"__SYS_CONFIG_H__ "
.LASF1008:
	.string	"configPRE_SUPPRESS_TICKS_AND_SLEEP_PROCESSING(x) "
.LASF874:
	.string	"portEXIT_CRITICAL() vTaskExitCritical()"
.LASF1288:
	.string	"__predict_false(exp) __builtin_expect((exp), 0)"
.LASF719:
	.string	"_REG32(p,i) (*(volatile uint32_t *) ((p) + (i)))"
.LASF644:
	.string	"INTMAX_C(c) __INTMAX_C(c)"
.LASF708:
	.string	"INT_WDOGCMP 1"
.LASF380:
	.string	"__FLT64X_HAS_INFINITY__ 1"
.LASF944:
	.string	"traceQUEUE_PEEK_FROM_ISR(pxQueue) "
.LASF31:
	.string	"__CHAR_BIT__ 8"
.LASF605:
	.string	"INTMAX_MIN"
.LASF46:
	.string	"__INTMAX_TYPE__ long long int"
.LASF1526:
	.string	"QueueHandle_t"
.LASF1470:
	.string	"EOF (-1)"
.LASF1182:
	.string	"_POINTER_INT long"
.LASF1061:
	.string	"configUSE_TASK_FPU_SUPPORT 1"
.LASF387:
	.string	"__BFLT16_MIN_10_EXP__ (-37)"
.LASF841:
	.string	"pdFREERTOS_ERRNO_ENOTCONN 128"
.LASF444:
	.string	"__riscv_zcf 1000000"
.LASF368:
	.string	"__FLT64X_DIG__ 33"
.LASF879:
	.string	"portTASK_FUNCTION(vFunction,pvParameters) void vFunction( void *pvParameters )"
.LASF1050:
	.string	"portTICK_RATE_MS portTICK_PERIOD_MS"
.LASF458:
	.string	"__FILENAME_WO_SUFFIX__ \"watchdogpp\""
.LASF901:
	.string	"INCLUDE_xTaskGetSchedulerState 0"
.LASF488:
	.string	"_BSD_SIZE_T_ "
.LASF818:
	.string	"pdFREERTOS_ERRNO_EXDEV 18"
.LASF1013:
	.string	"portALLOCATE_SECURE_CONTEXT(ulSecureStackSize) "
.LASF993:
	.string	"traceSTREAM_BUFFER_DELETE(xStreamBuffer) "
.LASF1492:
	.string	"_STRING_H_ "
.LASF49:
	.string	"__CHAR16_TYPE__ short unsigned int"
.LASF223:
	.string	"__INTPTR_MAX__ 0x7fffffff"
.LASF904:
	.string	"configUSE_ALTERNATIVE_API 0"
.LASF994:
	.string	"traceSTREAM_BUFFER_RESET(xStreamBuffer) "
.LASF418:
	.string	"__GCC_ATOMIC_POINTER_LOCK_FREE 1"
.LASF966:
	.string	"traceTIMER_COMMAND_RECEIVED(pxTimer,xMessageID,xMessageValue) "
.LASF1314:
	.string	"_Nonnull "
.LASF1462:
	.string	"__SOFF 0x1000"
.LASF1383:
	.string	"_RAND48_MULT_1 (0xdeec)"
.LASF440:
	.string	"__riscv_c 2000000"
.LASF1212:
	.string	"___int_least64_t_defined 1"
.LASF715:
	.string	"INT_GPIO_BASE 8"
.LASF305:
	.string	"__FLT32_MAX_10_EXP__ 38"
.LASF775:
	.string	"INCLUDE_vTaskCleanUpResources 1"
.LASF328:
	.string	"__FLT64_EPSILON__ 2.22044604925031308084726333618164062e-16F64"
.LASF1213:
	.string	"__EXP"
.LASF564:
	.string	"INT_LEAST32_MIN (-INT_LEAST32_MAX - 1)"
.LASF951:
	.string	"traceQUEUE_DELETE(pxQueue) "
.LASF549:
	.string	"INT_LEAST8_MAX"
.LASF1419:
	.string	"_REENT_MBRTOWC_STATE(ptr) ((ptr)->_new._reent._mbrtowc_state)"
.LASF425:
	.string	"__riscv_compressed 1"
.LASF278:
	.string	"__LDBL_HAS_DENORM__ 1"
.LASF468:
	.string	"_ANSI_STDDEF_H "
.LASF868:
	.string	"portCRITICAL_NESTING_IN_TCB 1"
.LASF1127:
	.string	"queueQUEUE_TYPE_COUNTING_SEMAPHORE ( ( uint8_t ) 2U )"
.LASF1384:
	.string	"_RAND48_MULT_2 (0x0005)"
.LASF1359:
	.string	"_CLOCKID_T_ unsigned long"
.LASF1248:
	.string	"__CC_SUPPORTS_VARADIC_XXX 1"
.LASF412:
	.string	"__GCC_ATOMIC_INT_LOCK_FREE 1"
.LASF322:
	.string	"__FLT64_MAX_EXP__ 1024"
.LASF858:
	.string	"portDOUBLE double"
.LASF1322:
	.string	"__lockable __lock_annotate(lockable)"
.LASF400:
	.string	"__REGISTER_PREFIX__ "
.LASF877:
	.string	"portGET_HIGHEST_PRIORITY(uxTopPriority,uxReadyPriorities) uxTopPriority = ( 31UL - __builtin_clz( uxReadyPriorities ) )"
.LASF1035:
	.string	"configMIN(a,b) ( ( ( a ) < ( b ) ) ? ( a ) : ( b ) )"
.LASF1327:
	.string	"__unlocks(...) __lock_annotate(unlock_function(__VA_ARGS__))"
.LASF1388:
	.string	"_REENT_SIGNAL_SIZE 24"
.LASF981:
	.string	"tracePEND_FUNC_CALL_FROM_ISR(xFunctionToPend,pvParameter1,ulParameter2,ret) "
.LASF463:
	.string	"__COMPONENT_FILE_NAMED__ suas_app_freertos_watchdog.watchdogpp"
.LASF827:
	.string	"pdFREERTOS_ERRNO_EBADE 50"
.LASF1368:
	.string	"__lock_close(lock) ((void) 0)"
.LASF739:
	.string	"configMTIME_BASE_ADDRESS ( ( CLINT_CTRL_ADDR ) + 0xBFF8UL )"
.LASF438:
	.string	"__riscv_m 2000000"
.LASF1303:
	.string	"__warn_references(sym,msg) __asm__(\".section .gnu.warning.\" #sym); __asm__(\".asciz \\\"\" msg \"\\\"\"); __asm__(\".previous\")"
.LASF1412:
	.string	"_REENT_ASCTIME_BUF(ptr) ((ptr)->_new._reent._asctime_buf)"
.LASF1075:
	.string	"listSET_SECOND_LIST_ITEM_INTEGRITY_CHECK_VALUE(pxItem) "
.LASF68:
	.string	"__INT_FAST8_TYPE__ int"
.LASF636:
	.string	"UINT8_C(c) __UINT8_C(c)"
.LASF1014:
	.string	"portDONT_DISCARD "
.LASF789:
	.string	"genqMUTEX_TEST_TASK_STACK_SIZE 90"
.LASF940:
	.string	"traceQUEUE_SEND_FAILED(pxQueue) "
.LASF1218:
	.string	"__ptr_t void *"
.LASF73:
	.string	"__UINT_FAST16_TYPE__ unsigned int"
.LASF1079:
	.string	"listTEST_LIST_INTEGRITY(pxList) "
.LASF6:
	.string	"__STDC_HOSTED__ 0"
.LASF1175:
	.string	"__LARGEFILE_VISIBLE 0"
.LASF835:
	.string	"pdFREERTOS_ERRNO_EADDRINUSE 112"
.LASF178:
	.string	"__UINTMAX_C(c) c ## ULL"
.LASF479:
	.string	"__need_ptrdiff_t"
.LASF912:
	.string	"portPOINTER_SIZE_TYPE uint32_t"
.LASF730:
	.string	"SPI0_REG(offset) _REG32(SPI0_CTRL_ADDR, offset)"
.LASF1330:
	.string	"__requires_exclusive(...) __lock_annotate(exclusive_locks_required(__VA_ARGS__))"
.LASF700:
	.string	"IOF_UART0_TX (17u)"
.LASF98:
	.string	"__cpp_ref_qualifiers 200710L"
.LASF1503:
	.string	"long int"
.LASF416:
	.string	"__GCC_DESTRUCTIVE_SIZE 32"
.LASF975:
	.string	"traceEVENT_GROUP_CLEAR_BITS(xEventGroup,uxBitsToClear) "
.LASF1410:
	.string	"_REENT_MP_P5S(ptr) ((ptr)->_p5s)"
.LASF820:
	.string	"pdFREERTOS_ERRNO_ENOTDIR 20"
.LASF531:
	.string	"INT16_MAX"
.LASF261:
	.string	"__DBL_HAS_DENORM__ 1"
.LASF1171:
	.string	"__ATFILE_VISIBLE 0"
.LASF323:
	.string	"__FLT64_MAX_10_EXP__ 308"
.LASF289:
	.string	"__FLT16_DECIMAL_DIG__ 5"
.LASF1128:
	.string	"queueQUEUE_TYPE_BINARY_SEMAPHORE ( ( uint8_t ) 3U )"
.LASF43:
	.string	"__PTRDIFF_TYPE__ int"
.LASF408:
	.string	"__GCC_ATOMIC_CHAR16_T_LOCK_FREE 1"
.LASF363:
	.string	"__FLT32X_HAS_DENORM__ 1"
.LASF847:
	.string	"pdLITTLE_ENDIAN pdFREERTOS_LITTLE_ENDIAN"
.LASF710:
	.string	"INT_UART0_BASE 3"
.LASF402:
	.string	"__GNUC_STDC_INLINE__ 1"
.LASF648:
	.string	"FREERTOS_CONFIG_H "
.LASF1125:
	.string	"queueQUEUE_TYPE_SET ( ( uint8_t ) 0U )"
.LASF547:
	.string	"UINT64_MAX"
.LASF1049:
	.string	"pdTASK_HOOK_CODE TaskHookFunction_t"
.LASF1274:
	.string	"_Thread_local thread_local"
.LASF1442:
	.string	"_GLOBAL_REENT (&_impure_data)"
.LASF1337:
	.string	"__guarded_by(x) __lock_annotate(guarded_by(x))"
.LASF1185:
	.string	"__EXPORT "
.LASF1214:
	.string	"__PMT(args) args"
.LASF473:
	.string	"_PTRDIFF_T_ "
.LASF577:
	.string	"UINT_FAST8_MAX"
.LASF171:
	.string	"__WCHAR_WIDTH__ 32"
.LASF741:
	.string	"configCLIC_TIMER_ENABLE_ADDRESS (0x02800407)"
.LASF327:
	.string	"__FLT64_MIN__ 2.22507385850720138309023271733240406e-308F64"
.LASF1179:
	.string	"__XSI_VISIBLE 0"
.LASF1299:
	.string	"__strftimelike(fmtarg,firstvararg) __attribute__((__format__ (__strftime__, fmtarg, firstvararg)))"
.LASF472:
	.string	"__PTRDIFF_T "
.LASF299:
	.string	"__STDCPP_FLOAT32_T__ 1"
.LASF1091:
	.string	"listGET_OWNER_OF_HEAD_ENTRY(pxList) ( (&( ( pxList )->xListEnd ))->pxNext->pvOwner )"
.LASF1472:
	.string	"FOPEN_MAX 20"
.LASF86:
	.string	"__cpp_unicode_literals 200710L"
.LASF285:
	.string	"__FLT16_MIN_EXP__ (-13)"
.LASF312:
	.string	"__FLT32_HAS_DENORM__ 1"
.LASF1298:
	.string	"__strfmonlike(fmtarg,firstvararg) __attribute__((__format__ (__strfmon__, fmtarg, firstvararg)))"
.LASF172:
	.string	"__WINT_WIDTH__ 32"
.LASF1504:
	.string	"uint8_t"
.LASF1045:
	.string	"xTaskParameters TaskParameters_t"
.LASF540:
	.string	"INT32_MIN (-INT32_MAX - 1)"
.LASF1278:
	.string	"__always_inline __inline__ __attribute__((__always_inline__))"
.LASF273:
	.string	"__LDBL_MAX__ 1.18973149535723176508575932662800702e+4932L"
.LASF753:
	.string	"configUSE_16_BIT_TICKS 0"
.LASF1032:
	.string	"configENABLE_BACKWARD_COMPATIBILITY 1"
.LASF83:
	.string	"__cpp_hex_float 201603L"
.LASF737:
	.string	"PLIC_NUM_PRIORITIES 7"
.LASF430:
	.string	"__riscv_flen 32"
.LASF928:
	.string	"tracePOST_MOVED_TASK_TO_READY_STATE(pxTCB) "
.LASF1508:
	.string	"uint32_t"
.LASF920:
	.string	"traceTASK_PRIORITY_INHERIT(pxTCBOfMutexHolder,uxInheritedPriority) "
.LASF711:
	.string	"INT_UART1_BASE 4"
.LASF106:
	.string	"__cpp_static_assert 201411L"
.LASF1097:
	.string	"tskKERNEL_VERSION_MINOR 3"
.LASF50:
	.string	"__CHAR32_TYPE__ long unsigned int"
.LASF616:
	.string	"SIG_ATOMIC_MIN __SIG_ATOMIC_MIN__"
.LASF1362:
	.string	"__Long long"
.LASF411:
	.string	"__GCC_ATOMIC_SHORT_LOCK_FREE 1"
.LASF1037:
	.string	"portTickType TickType_t"
.LASF1169:
	.string	"__GNUC_PREREQ(maj,min) ((__GNUC__ << 16) + __GNUC_MINOR__ >= ((maj) << 16) + (min))"
.LASF810:
	.string	"pdFREERTOS_ERRNO_EBADF 9"
.LASF1021:
	.string	"configAPPLICATION_ALLOCATED_HEAP 0"
.LASF38:
	.string	"__SIZEOF_POINTER__ 4"
.LASF1215:
	.string	"__DOTS , ..."
.LASF1277:
	.string	"__pure __attribute__((__pure__))"
.LASF1063:
	.string	"configENABLE_FPU 1"
.LASF343:
	.string	"__FLT128_NORM_MAX__ 1.18973149535723176508575932662800702e+4932F128"
.LASF1158:
	.string	"_WANT_IO_LONG_DOUBLE 1"
.LASF875:
	.string	"portRECORD_READY_PRIORITY(uxPriority,uxReadyPriorities) ( uxReadyPriorities ) |= ( 1UL << ( uxPriority ) )"
.LASF1089:
	.string	"listCURRENT_LIST_LENGTH(pxList) ( ( pxList )->uxNumberOfItems )"
.LASF572:
	.string	"UINT_LEAST64_MAX __UINT_LEAST64_MAX__"
.LASF47:
	.string	"__UINTMAX_TYPE__ long long unsigned int"
.LASF485:
	.string	"_T_SIZE "
.LASF824:
	.string	"pdFREERTOS_ERRNO_ESPIPE 29"
.LASF224:
	.string	"__INTPTR_WIDTH__ 32"
.LASF1326:
	.string	"__trylocks_shared(...) __lock_annotate(shared_trylock_function(__VA_ARGS__))"
.LASF1251:
	.string	"__CONCAT1(x,y) x ## y"
.LASF1335:
	.string	"__nosanitizememory "
.LASF599:
	.string	"INTPTR_MIN"
.LASF873:
	.string	"portENTER_CRITICAL() vTaskEnterCritical()"
.LASF1283:
	.string	"__result_use_check __attribute__((__warn_unused_result__))"
.LASF160:
	.string	"__WCHAR_MAX__ 0x7fffffff"
.LASF1437:
	.string	"_REENT_INIT_PTR(var) { memset((var), 0, sizeof(*(var))); _REENT_INIT_PTR_ZEROED(var); }"
.LASF331:
	.string	"__FLT64_HAS_INFINITY__ 1"
.LASF159:
	.string	"__LONG_LONG_MAX__ 0x7fffffffffffffffLL"
.LASF1428:
	.string	"_REENT_CVTLEN(_ptr) ((_ptr)->_cvtlen)"
.LASF938:
	.string	"traceCREATE_COUNTING_SEMAPHORE_FAILED() "
.LASF371:
	.string	"__FLT64X_MAX_EXP__ 16384"
.LASF502:
	.string	"_T_WCHAR_ "
.LASF1537:
	.string	"pvPortMalloc"
.LASF40:
	.string	"__GNUC_WIDE_EXECUTION_CHARSET_NAME \"UTF-32LE\""
.LASF1517:
	.string	"entry"
.LASF888:
	.string	"MPU_WRAPPERS_H "
.LASF1151:
	.string	"_HAVE_CC_INHIBIT_LOOP_TO_LIBCALL 1"
.LASF609:
	.string	"PTRDIFF_MAX"
.LASF1308:
	.string	"__RCSID_SOURCE(s) struct __hack"
.LASF983:
	.string	"traceTASK_NOTIFY_TAKE_BLOCK() "
.LASF784:
	.string	"notifyNOTIFIED_TASK_STACK_SIZE 120"
.LASF1065:
	.string	"configRUN_FREERTOS_SECURE_ONLY 0"
.LASF915:
	.string	"traceTASK_SWITCHED_IN() "
.LASF394:
	.string	"__BFLT16_EPSILON__ 7.81250000000000000000000000000000000e-3BF16"
.LASF213:
	.string	"__INT_FAST16_MAX__ 0x7fffffff"
.LASF634:
	.string	"INT64_C(c) __INT64_C(c)"
.LASF414:
	.string	"__GCC_ATOMIC_LLONG_LOCK_FREE 1"
.LASF1200:
	.string	"_SYS_CDEFS_H_ "
.LASF260:
	.string	"__DBL_DENORM_MIN__ double(4.94065645841246544176568792868221372e-324L)"
.LASF1038:
	.string	"xTaskHandle TaskHandle_t"
.LASF1010:
	.string	"configPOST_SLEEP_PROCESSING(x) "
.LASF276:
	.string	"__LDBL_EPSILON__ 1.92592994438723585305597794258492732e-34L"
.LASF239:
	.string	"__FLT_MAX__ 3.40282346638528859811704183484516925e+38F"
.LASF95:
	.string	"__cpp_delegating_constructors 200604L"
.LASF170:
	.string	"__LONG_LONG_WIDTH__ 64"
.LASF569:
	.string	"INT_LEAST64_MIN"
.LASF1515:
	.string	"char"
.LASF844:
	.string	"pdFREERTOS_ERRNO_ECANCELED 140"
.LASF1143:
	.string	"__NEWLIB_H__ 1"
.LASF941:
	.string	"traceQUEUE_RECEIVE(pxQueue) "
.LASF7:
	.string	"__STDC_EMBED_NOT_FOUND__ 0"
.LASF514:
	.string	"__DEFINED_wchar_t "
.LASF906:
	.string	"configPRECONDITION(X) configASSERT(X)"
.LASF893:
	.string	"configUSE_NEWLIB_REENTRANT 0"
.LASF65:
	.string	"__UINT_LEAST16_TYPE__ short unsigned int"
.LASF1460:
	.string	"__SOPT 0x0400"
.LASF1424:
	.string	"_REENT_SIGNAL_BUF(ptr) ((ptr)->_new._reent._signal_buf)"
.LASF280:
	.string	"__LDBL_HAS_QUIET_NAN__ 1"
.LASF94:
	.string	"__cpp_initializer_lists 200806L"
.LASF926:
	.string	"configINCLUDE_FREERTOS_TASK_C_ADDITIONS_H 0"
.LASF329:
	.string	"__FLT64_DENORM_MIN__ 4.94065645841246544176568792868221372e-324F64"
.LASF482:
	.string	"_SIZE_T "
.LASF787:
	.string	"ebRENDESVOUS_TEST_TASK_STACK_SIZE 100"
.LASF1275:
	.string	"__min_size(x) (x)"
.LASF1435:
	.string	"_REENT_STDOUT(_ptr) ((_ptr)->_stdout)"
.LASF1132:
	.string	"xQueueSendToFront(xQueue,pvItemToQueue,xTicksToWait) xQueueGenericSend( ( xQueue ), ( pvItemToQueue ), ( xTicksToWait ), queueSEND_TO_FRONT )"
.LASF367:
	.string	"__FLT64X_MANT_DIG__ 113"
.LASF120:
	.string	"__cpp_guaranteed_copy_elision 201606L"
.LASF1118:
	.string	"xTaskNotifyAndQueryFromISR(xTaskToNotify,ulValue,eAction,pulPreviousNotificationValue,pxHigherPriorityTaskWoken) xTaskGenericNotifyFromISR( ( xTaskToNotify ), ( ulValue ), ( eAction ), ( pulPreviousNotificationValue ), ( pxHigherPriorityTaskWoken ) )"
.LASF1544:
	.string	"pcName"
.LASF465:
	.string	"INC_FREERTOS_H "
.LASF692:
	.string	"IOF_SPI2_MISO (28u)"
.LASF619:
	.string	"WCHAR_MAX"
.LASF936:
	.string	"traceTAKE_MUTEX_RECURSIVE_FAILED(pxMutex) "
.LASF294:
	.string	"__FLT16_DENORM_MIN__ 5.96046447753906250000000000000000000e-8F16"
.LASF267:
	.string	"__LDBL_MIN_EXP__ (-16381)"
.LASF1105:
	.string	"taskYIELD() portYIELD()"
.LASF772:
	.string	"INCLUDE_vTaskPrioritySet 1"
.LASF490:
	.string	"_SIZE_T_DEFINED "
.LASF551:
	.string	"INT_LEAST8_MIN"
.LASF342:
	.string	"__FLT128_MAX__ 1.18973149535723176508575932662800702e+4932F128"
.LASF495:
	.string	"_GCC_SIZE_T "
.LASF1287:
	.string	"__predict_true(exp) __builtin_expect((exp), 1)"
.LASF1106:
	.string	"taskENTER_CRITICAL() portENTER_CRITICAL()"
.LASF1205:
	.string	"___int8_t_defined 1"
.LASF182:
	.string	"__SIG_ATOMIC_WIDTH__ 32"
.LASF654:
	.string	"_BITUL(x) (_AC(1,UL) << (x))"
.LASF424:
	.string	"__riscv 1"
.LASF809:
	.string	"pdFREERTOS_ERRNO_ENXIO 6"
.LASF1172:
	.string	"__BSD_VISIBLE 0"
.LASF1199:
	.string	"__need_NULL "
.LASF102:
	.string	"__cpp_aggregate_nsdmi 201304L"
.LASF999:
	.string	"traceBLOCKING_ON_STREAM_BUFFER_RECEIVE(xStreamBuffer) "
.LASF864:
	.string	"portBYTE_ALIGNMENT 16"
.LASF1138:
	.string	"xQueueOverwriteFromISR(xQueue,pvItemToQueue,pxHigherPriorityTaskWoken) xQueueGenericSendFromISR( ( xQueue ), ( pvItemToQueue ), ( pxHigherPriorityTaskWoken ), queueOVERWRITE )"
.LASF974:
	.string	"traceEVENT_GROUP_WAIT_BITS_END(xEventGroup,uxBitsToWaitFor,xTimeoutOccurred) ( void ) xTimeoutOccurred"
.LASF207:
	.string	"__UINT_LEAST32_MAX__ 0xffffffffUL"
.LASF923:
	.string	"traceBLOCKING_ON_QUEUE_PEEK(pxQueue) "
.LASF1382:
	.string	"_RAND48_MULT_0 (0xe66d)"
.LASF1418:
	.string	"_REENT_MBRLEN_STATE(ptr) ((ptr)->_new._reent._mbrlen_state)"
.LASF34:
	.string	"__ORDER_BIG_ENDIAN__ 4321"
.LASF984:
	.string	"traceTASK_NOTIFY_TAKE() "
.LASF379:
	.string	"__FLT64X_HAS_DENORM__ 1"
.LASF829:
	.string	"pdFREERTOS_ERRNO_ENMFILE 89"
.LASF74:
	.string	"__UINT_FAST32_TYPE__ unsigned int"
.LASF695:
	.string	"IOF_SPI2_DQ1 (28u)"
.LASF181:
	.string	"__SIG_ATOMIC_MIN__ (-__SIG_ATOMIC_MAX__ - 1)"
.LASF146:
	.string	"__cpp_concepts 202002L"
.LASF570:
	.string	"INT_LEAST64_MIN (-INT_LEAST64_MAX - 1)"
.LASF1427:
	.string	"_REENT_CVTBUF(_ptr) ((_ptr)->_cvtbuf)"
.LASF760:
	.string	"configUSE_APPLICATION_TASK_TAG 0"
.LASF1548:
	.string	"pxCreatedTask"
.LASF417:
	.string	"__GCC_CONSTRUCTIVE_SIZE 32"
.LASF895:
	.string	"INCLUDE_xTaskAbortDelay 0"
.LASF1003:
	.string	"portCONFIGURE_TIMER_FOR_RUN_TIME_STATS() "
.LASF689:
	.string	"SPI2_NUM_SS (1)"
.LASF358:
	.string	"__FLT32X_MAX__ 1.79769313486231570814527423731704357e+308F32x"
.LASF1261:
	.string	"__pure2 __attribute__((__const__))"
.LASF516:
	.string	"__need_wchar_t"
.LASF238:
	.string	"__FLT_DECIMAL_DIG__ 9"
.LASF54:
	.string	"__INT32_TYPE__ long int"
.LASF471:
	.string	"_T_PTRDIFF "
.LASF884:
	.string	"portBYTE_ALIGNMENT_MASK ( 0x000f )"
.LASF303:
	.string	"__FLT32_MIN_10_EXP__ (-37)"
.LASF1101:
	.string	"tskMPU_REGION_EXECUTE_NEVER ( 1UL << 2UL )"
.LASF140:
	.string	"__cpp_constexpr 202211L"
.LASF377:
	.string	"__FLT64X_EPSILON__ 1.92592994438723585305597794258492732e-34F64x"
.LASF1336:
	.string	"__nosanitizethread "
.LASF339:
	.string	"__FLT128_MAX_EXP__ 16384"
.LASF528:
	.string	"INT8_MIN (-INT8_MAX - 1)"
.LASF803:
	.string	"configUSE_LIST_DATA_INTEGRITY_CHECK_BYTES 0"
.LASF1258:
	.string	"__inline inline"
.LASF346:
	.string	"__FLT128_DENORM_MIN__ 6.47517511943802511092443895822764655e-4966F128"
.LASF1082:
	.string	"listSET_LIST_ITEM_VALUE(pxListItem,xValue) ( ( pxListItem )->xItemValue = ( xValue ) )"
.LASF22:
	.string	"__FINITE_MATH_ONLY__ 0"
.LASF853:
	.string	"portBASE_TYPE int32_t"
.LASF530:
	.string	"UINT8_MAX __UINT8_MAX__"
.LASF1459:
	.string	"__SSTR 0x0200"
.LASF1539:
	.string	"xTaskGetCurrentTaskHandle"
.LASF1092:
	.string	"listIS_CONTAINED_WITHIN(pxList,pxListItem) ( ( ( pxListItem )->pxContainer == ( pxList ) ) ? ( pdTRUE ) : ( pdFALSE ) )"
.LASF861:
	.string	"portTICK_TYPE_IS_ATOMIC 1"
.LASF103:
	.string	"__cpp_variable_templates 201304L"
.LASF1488:
	.string	"__sfeof(p) ((int)(((p)->_flags & __SEOF) != 0))"
.LASF2:
	.string	"__STDC__ 1"
.LASF529:
	.string	"UINT8_MAX"
.LASF746:
	.string	"configTICK_RATE_HZ ( ( TickType_t ) 1000 )"
.LASF1228:
	.string	"__END_DECLS }"
.LASF834:
	.string	"pdFREERTOS_ERRNO_ENOPROTOOPT 109"
.LASF948:
	.string	"traceQUEUE_RECEIVE_FROM_ISR(pxQueue) "
.LASF898:
	.string	"INCLUDE_xTaskGetHandle 0"
.LASF744:
	.string	"configUSE_TICK_HOOK 0"
.LASF201:
	.string	"__INT64_C(c) c ## LL"
.LASF1040:
	.string	"xSemaphoreHandle SemaphoreHandle_t"
.LASF907:
	.string	"configPRECONDITION_DEFINED 0"
.LASF705:
	.string	"IOF1_PWM1_MASK _AC(0x00780000, UL)"
.LASF555:
	.string	"INT_LEAST16_MAX"
.LASF770:
	.string	"configTIMER_TASK_STACK_DEPTH ( 400 )"
.LASF459:
	.string	"__FILENAME_WO_SUFFIX_DEQUOTED__ watchdogpp"
.LASF618:
	.string	"SIZE_MAX __SIZE_MAX__"
.LASF694:
	.string	"IOF_SPI2_DQ0 (27u)"
.LASF1254:
	.string	"__XSTRING(x) __STRING(x)"
.LASF319:
	.string	"__FLT64_DIG__ 15"
.LASF1309:
	.string	"__SCCSID(s) struct __hack"
.LASF405:
	.string	"__GCC_ATOMIC_BOOL_LOCK_FREE 1"
.LASF968:
	.string	"traceFREE(pvAddress,uiSize) "
.LASF215:
	.string	"__INT_FAST32_MAX__ 0x7fffffff"
.LASF237:
	.string	"__FLT_MAX_10_EXP__ 38"
.LASF774:
	.string	"INCLUDE_vTaskDelete 1"
.LASF911:
	.string	"portSETUP_TCB(pxTCB) ( void ) pxTCB"
.LASF817:
	.string	"pdFREERTOS_ERRNO_EEXIST 17"
.LASF626:
	.string	"WINT_MIN __WINT_MIN__"
.LASF1438:
	.string	"__ATTRIBUTE_IMPURE_PTR__ "
.LASF258:
	.string	"__DBL_MIN__ double(2.22507385850720138309023271733240406e-308L)"
.LASF890:
	.string	"PRIVILEGED_DATA "
.LASF709:
	.string	"INT_RTCCMP 2"
.LASF1401:
	.string	"_REENT_CHECK_MISC(ptr) "
.LASF1059:
	.string	"xList List_t"
.LASF1159:
	.string	"_WANT_IO_LONG_LONG 1"
.LASF537:
	.string	"INT32_MAX"
.LASF964:
	.string	"traceTIMER_COMMAND_SEND(xTimer,xMessageID,xMessageValueValue,xReturn) "
.LASF296:
	.string	"__FLT16_HAS_INFINITY__ 1"
.LASF1432:
	.string	"_REENT_LOCALE(_ptr) ((_ptr)->_locale)"
.LASF99:
	.string	"__cpp_alias_templates 200704L"
.LASF373:
	.string	"__FLT64X_DECIMAL_DIG__ 36"
.LASF896:
	.string	"INCLUDE_xQueueGetMutexHolder 0"
.LASF1392:
	.string	"_REENT_INIT_RESERVED_6_7 "
.LASF1296:
	.string	"__scanflike(fmtarg,firstvararg) __attribute__((__format__ (__scanf__, fmtarg, firstvararg)))"
.LASF1441:
	.string	"_REENT_IS_NULL(_ptr) ((_ptr) == NULL)"
.LASF560:
	.string	"UINT_LEAST16_MAX __UINT_LEAST16_MAX__"
.LASF1455:
	.string	"__SEOF 0x0020"
.LASF28:
	.string	"__SIZEOF_DOUBLE__ 8"
.LASF221:
	.string	"__UINT_FAST32_MAX__ 0xffffffffU"
.LASF995:
	.string	"traceBLOCKING_ON_STREAM_BUFFER_SEND(xStreamBuffer) "
.LASF309:
	.string	"__FLT32_MIN__ 1.17549435082228750796873653722224568e-38F32"
.LASF506:
	.string	"_BSD_WCHAR_T_ "
.LASF1173:
	.string	"__GNU_VISIBLE 0"
.LASF804:
	.string	"pdINTEGRITY_CHECK_VALUE 0x5a5a5a5aUL"
.LASF1385:
	.string	"_RAND48_ADD (0x000b)"
.LASF466:
	.string	"_STDDEF_H "
.LASF1446:
	.string	"_SSIZE_T_DECLARED "
.LASF1379:
	.string	"_RAND48_SEED_0 (0x330e)"
.LASF1120:
	.string	"QUEUE_H "
.LASF277:
	.string	"__LDBL_DENORM_MIN__ 6.47517511943802511092443895822764655e-4966L"
.LASF388:
	.string	"__BFLT16_MAX_EXP__ 128"
.LASF175:
	.string	"__INTMAX_MAX__ 0x7fffffffffffffffLL"
.LASF1331:
	.string	"__requires_shared(...) __lock_annotate(shared_locks_required(__VA_ARGS__))"
.LASF1538:
	.string	"printf"
.LASF326:
	.string	"__FLT64_NORM_MAX__ 1.79769313486231570814527423731704357e+308F64"
.LASF455:
	.string	"FEATURE_WIFI_DISABLE 1"
.LASF1134:
	.string	"xQueueSend(xQueue,pvItemToQueue,xTicksToWait) xQueueGenericSend( ( xQueue ), ( pvItemToQueue ), ( xTicksToWait ), queueSEND_TO_BACK )"
.LASF990:
	.string	"traceSTREAM_BUFFER_CREATE_FAILED(xIsMessageBuffer) "
.LASF1237:
	.string	"__GNUCLIKE_BUILTIN_VAALIST 1"
.LASF169:
	.string	"__LONG_WIDTH__ 32"
.LASF1411:
	.string	"_REENT_MP_FREELIST(ptr) ((ptr)->_freelist)"
.LASF21:
	.string	"__OPTIMIZE__ 1"
.LASF833:
	.string	"pdFREERTOS_ERRNO_ENOBUFS 105"
.LASF1256:
	.string	"__signed signed"
.LASF1019:
	.string	"mtCOVERAGE_TEST_DELAY() "
.LASF1180:
	.string	"__SSP_FORTIFY_LEVEL 0"
.LASF673:
	.string	"SPI0_MEM_ADDR _AC(0x20000000,UL)"
.LASF1168:
	.string	"_SYS_FEATURES_H "
.LASF611:
	.string	"PTRDIFF_MIN"
.LASF542:
	.string	"UINT32_MAX __UINT32_MAX__"
.LASF20:
	.string	"__OPTIMIZE_SIZE__ 1"
.LASF1072:
	.string	"listFIRST_LIST_INTEGRITY_CHECK_VALUE "
.LASF284:
	.string	"__FLT16_DIG__ 3"
.LASF1354:
	.string	"__size_t"
.LASF1098:
	.string	"tskKERNEL_VERSION_BUILD 0"
.LASF566:
	.string	"UINT_LEAST32_MAX __UINT_LEAST32_MAX__"
.LASF822:
	.string	"pdFREERTOS_ERRNO_EINVAL 22"
.LASF1342:
	.string	"__align_up(x,y) __builtin_align_up(x, y)"
.LASF1281:
	.string	"__nonnull_all __attribute__((__nonnull__))"
.LASF1194:
	.string	"_ELIDABLE_INLINE static __inline__"
.LASF147:
	.string	"__cpp_impl_coroutine 201902L"
.LASF1269:
	.string	"__alloc_align(x) __attribute__((__alloc_align__(x)))"
.LASF503:
	.string	"_T_WCHAR "
.LASF588:
	.string	"INT_FAST32_MIN (-INT_FAST32_MAX - 1)"
.LASF963:
	.string	"traceTIMER_CREATE_FAILED() "
.LASF496:
	.string	"_SIZET_ "
.LASF52:
	.string	"__INT8_TYPE__ signed char"
.LASF1051:
	.string	"pcTaskGetTaskName pcTaskGetName"
.LASF712:
	.string	"INT_SPI0_BASE 5"
.LASF766:
	.string	"configMAX_CO_ROUTINE_PRIORITIES ( 2 )"
.LASF1291:
	.string	"__hidden __attribute__((__visibility__(\"hidden\")))"
.LASF848:
	.string	"pdBIG_ENDIAN pdFREERTOS_BIG_ENDIAN"
.LASF467:
	.string	"_STDDEF_H_ "
.LASF393:
	.string	"__BFLT16_MIN__ 1.17549435082228750796873653722224568e-38BF16"
.LASF1183:
	.string	"__RAND_MAX"
.LASF478:
	.string	"__DEFINED_ptrdiff_t "
.LASF565:
	.string	"UINT_LEAST32_MAX"
.LASF1170:
	.string	"__GNUC_PREREQ__(ma,mi) __GNUC_PREREQ(ma, mi)"
.LASF1468:
	.string	"_IOLBF 1"
.LASF828:
	.string	"pdFREERTOS_ERRNO_EFTYPE 79"
.LASF320:
	.string	"__FLT64_MIN_EXP__ (-1021)"
.LASF151:
	.string	"__cpp_template_template_args 201611L"
.LASF1366:
	.string	"__lock_init(lock) ((void) 0)"
.LASF1315:
	.string	"_Nullable "
.LASF779:
	.string	"INCLUDE_eTaskGetState 1"
.LASF749:
	.string	"configTOTAL_HEAP_SIZE ( ( size_t ) 14100 )"
.LASF1245:
	.string	"__CC_SUPPORTS___INLINE__ 1"
.LASF1041:
	.string	"xQueueSetHandle QueueSetHandle_t"
.LASF691:
	.string	"IOF_SPI2_MOSI (27u)"
.LASF935:
	.string	"traceTAKE_MUTEX_RECURSIVE(pxMutex) "
.LASF132:
	.string	"__cpp_impl_destroying_delete 201806L"
.LASF795:
	.string	"pdTRUE ( ( BaseType_t ) 1 )"
.LASF525:
	.string	"INT8_MAX"
.LASF1070:
	.string	"listFIRST_LIST_ITEM_INTEGRITY_CHECK_VALUE "
.LASF683:
	.string	"IOF_SPI1_SCK (5u)"
.LASF1540:
	.string	"xTaskGetTickCount"
.LASF621:
	.string	"WCHAR_MIN"
.LASF353:
	.string	"__FLT32X_MIN_EXP__ (-1021)"
.LASF474:
	.string	"_BSD_PTRDIFF_T_ "
.LASF504:
	.string	"__WCHAR_T "
.LASF910:
	.string	"portPRE_TASK_DELETE_HOOK(pvTaskToDelete,pxYieldPending) "
.LASF1246:
	.string	"__CC_SUPPORTS___FUNC__ 1"
.LASF713:
	.string	"INT_SPI1_BASE 6"
.LASF815:
	.string	"pdFREERTOS_ERRNO_EFAULT 14"
.LASF732:
	.string	"SPI2_REG(offset) _REG32(SPI2_CTRL_ADDR, offset)"
.LASF930:
	.string	"traceQUEUE_CREATE_FAILED(ucQueueType) "
.LASF917:
	.string	"traceLOW_POWER_IDLE_BEGIN() "
.LASF955:
	.string	"traceTASK_DELAY_UNTIL(x) "
.LASF195:
	.string	"__INT16_C(c) c"
.LASF533:
	.string	"INT16_MIN"
.LASF1445:
	.string	"_OFF_T_DECLARED "
.LASF965:
	.string	"traceTIMER_EXPIRED(pxTimer) "
.LASF677:
	.string	"IOF_SPI1_SS0 (2u)"
.LASF622:
	.string	"WCHAR_MIN __WCHAR_MIN__"
.LASF441:
	.string	"__riscv_zicsr 2000000"
.LASF1222:
	.string	"__attribute_format_strfmon__(a,b) "
.LASF348:
	.string	"__FLT128_HAS_INFINITY__ 1"
.LASF1073:
	.string	"listSECOND_LIST_INTEGRITY_CHECK_VALUE "
.LASF1495:
	.string	"long long unsigned int"
.LASF26:
	.string	"__SIZEOF_SHORT__ 2"
.LASF602:
	.string	"UINTPTR_MAX __UINTPTR_MAX__"
.LASF41:
	.string	"__GNUG__ 15"
.LASF1204:
	.string	"__have_long32 1"
.LASF1559:
	.string	"_Z23xTaskCreateWithWatchdogPFvPvEPKctS_mPP19tskTaskControlBlock"
.LASF1062:
	.string	"configENABLE_MPU 0"
.LASF187:
	.string	"__UINT8_MAX__ 0xff"
.LASF1457:
	.string	"__SMBF 0x0080"
.LASF704:
	.string	"IOF1_PWM0_MASK _AC(0x0000000F, UL)"
.LASF727:
	.string	"PWM0_REG(offset) _REG32(PWM0_CTRL_ADDR, offset)"
.LASF954:
	.string	"traceTASK_DELETE(pxTaskToDelete) "
.LASF850:
	.string	"DEPRECATED_DEFINITIONS_H "
.LASF633:
	.string	"INT64_C"
.LASF1009:
	.string	"configPRE_SLEEP_PROCESSING(x) "
.LASF792:
	.string	"PROJDEFS_H "
.LASF786:
	.string	"tmrTIMER_TEST_TASK_STACK_SIZE 100"
.LASF259:
	.string	"__DBL_EPSILON__ double(2.22044604925031308084726333618164062e-16L)"
.LASF714:
	.string	"INT_SPI2_BASE 7"
.LASF1378:
	.string	"_REENT_SMALL_CHECK_INIT(ptr) "
.LASF583:
	.string	"UINT_FAST16_MAX"
.LASF324:
	.string	"__FLT64_DECIMAL_DIG__ 17"
.LASF116:
	.string	"__cpp_noexcept_function_type 201510L"
.LASF446:
	.string	"CONF_USER_ENABLE_PSRAM 1"
.LASF891:
	.string	"FREERTOS_SYSTEM_CALL "
.LASF310:
	.string	"__FLT32_EPSILON__ 1.19209289550781250000000000000000000e-7F32"
.LASF19:
	.string	"__ATOMIC_CONSUME 1"
.LASF1262:
	.string	"__unused __attribute__((__unused__))"
.LASF996:
	.string	"traceSTREAM_BUFFER_SEND(xStreamBuffer,xBytesSent) "
.LASF67:
	.string	"__UINT_LEAST64_TYPE__ long long unsigned int"
.LASF1126:
	.string	"queueQUEUE_TYPE_MUTEX ( ( uint8_t ) 1U )"
.LASF1323:
	.string	"__locks_exclusive(...) __lock_annotate(exclusive_lock_function(__VA_ARGS__))"
.LASF538:
	.string	"INT32_MAX __INT32_MAX__"
.LASF657:
	.string	"TRAPVEC_TABLE_CTRL_ADDR _AC(0x00001010,UL)"
.LASF1047:
	.string	"xTimerHandle TimerHandle_t"
.LASF384:
	.string	"__BFLT16_MANT_DIG__ 8"
.LASF855:
	.string	"portMAX_DELAY ( TickType_t ) 0xffffffffUL"
.LASF9:
	.string	"__STDC_EMBED_EMPTY__ 2"
.LASF410:
	.string	"__GCC_ATOMIC_WCHAR_T_LOCK_FREE 1"
.LASF423:
	.string	"__SIZEOF_PTRDIFF_T__ 4"
.LASF1058:
	.string	"xListItem ListItem_t"
.LASF163:
	.string	"__WINT_MIN__ 0U"
.LASF1207:
	.string	"___int32_t_defined 1"
.LASF1193:
	.string	"_ATTRIBUTE(attrs) __attribute__ (attrs)"
.LASF360:
	.string	"__FLT32X_MIN__ 2.22507385850720138309023271733240406e-308F32x"
.LASF152:
	.string	"__cpp_threadsafe_static_init 200806L"
.LASF952:
	.string	"traceTASK_CREATE(pxNewTCB) "
.LASF840:
	.string	"pdFREERTOS_ERRNO_EISCONN 127"
.LASF365:
	.string	"__FLT32X_HAS_QUIET_NAN__ 1"
.LASF39:
	.string	"__GNUC_EXECUTION_CHARSET_NAME \"UTF-8\""
.LASF1475:
	.string	"SEEK_SET 0"
.LASF66:
	.string	"__UINT_LEAST32_TYPE__ long unsigned int"
.LASF251:
	.string	"__DBL_MIN_EXP__ (-1021)"
.LASF369:
	.string	"__FLT64X_MIN_EXP__ (-16381)"
.LASF1317:
	.string	"__NULLABILITY_PRAGMA_PUSH "
.LASF842:
	.string	"pdFREERTOS_ERRNO_ENOMEDIUM 135"
.LASF1135:
	.string	"xQueueOverwrite(xQueue,pvItemToQueue) xQueueGenericSend( ( xQueue ), ( pvItemToQueue ), 0, queueOVERWRITE )"
.LASF1011:
	.string	"configUSE_QUEUE_SETS 0"
.LASF579:
	.string	"INT_FAST16_MAX"
.LASF1498:
	.string	"long double"
.LASF535:
	.string	"UINT16_MAX"
.LASF1249:
	.string	"__CC_SUPPORTS_DYNAMIC_ARRAY_INIT 1"
.LASF664:
	.string	"GPIO_CTRL_ADDR _AC(0x10012000,UL)"
.LASF956:
	.string	"traceTASK_DELAY() "
.LASF1186:
	.string	"__IMPORT "
.LASF929:
	.string	"traceQUEUE_CREATE(pxNewQueue) "
.LASF114:
	.string	"__cpp_inline_variables 201606L"
.LASF55:
	.string	"__INT64_TYPE__ long long int"
.LASF552:
	.string	"INT_LEAST8_MIN (-INT_LEAST8_MAX - 1)"
.LASF854:
	.string	"portUBASE_TYPE uint32_t"
.LASF1293:
	.string	"__rangeof(type,start,end) (__offsetof(type, end) - __offsetof(type, start))"
.LASF1276:
	.string	"__malloc_like __attribute__((__malloc__))"
.LASF475:
	.string	"___int_ptrdiff_t_h "
.LASF1560:
	.string	"watchdog_monitor_task"
.LASF946:
	.string	"traceQUEUE_SEND_FROM_ISR(pxQueue) "
.LASF349:
	.string	"__FLT128_HAS_QUIET_NAN__ 1"
.LASF1451:
	.string	"__SNBF 0x0002"
.LASF1044:
	.string	"xMemoryRegion MemoryRegion_t"
.LASF903:
	.string	"configUSE_DAEMON_TASK_STARTUP_HOOK 0"
.LASF1192:
	.string	"_LONG_DOUBLE long double"
.LASF1263:
	.string	"__used __attribute__((__used__))"
.LASF1523:
	.string	"crashCount"
.LASF539:
	.string	"INT32_MIN"
.LASF1167:
	.string	"__OBSOLETE_MATH __OBSOLETE_MATH_DEFAULT"
.LASF630:
	.string	"INT16_C(c) __INT16_C(c)"
.LASF1377:
	.string	"_ATEXIT_INIT {_NULL, 0, {_NULL}, {{_NULL}, {_NULL}, 0, 0}}"
.LASF933:
	.string	"traceGIVE_MUTEX_RECURSIVE(pxMutex) "
.LASF629:
	.string	"INT16_C"
.LASF461:
	.string	"__COMPONENT_NAME_DEQUOTED__ suas_app_freertos_watchdog"
.LASF314:
	.string	"__FLT32_HAS_QUIET_NAN__ 1"
.LASF81:
	.string	"__GXX_CONSTEXPR_ASM__ 1"
.LASF1055:
	.string	"xTaskGetIdleRunTimeCounter ulTaskGetIdleRunTimeCounter"
.LASF274:
	.string	"__LDBL_NORM_MAX__ 1.18973149535723176508575932662800702e+4932L"
.LASF1497:
	.string	"long long int"
.LASF228:
	.string	"__FLT_EVAL_METHOD__ 0"
.LASF317:
	.string	"__STDCPP_FLOAT64_T__ 1"
.LASF1310:
	.string	"__COPYRIGHT(s) struct __hack"
.LASF1181:
	.string	"_READ_WRITE_RETURN_TYPE _ssize_t"
.LASF1162:
	.string	"_WIDE_ORIENT 1"
.LASF866:
	.string	"portEND_SWITCHING_ISR(xSwitchRequired) if( xSwitchRequired ) vTaskSwitchContext()"
.LASF1474:
	.string	"L_tmpnam FILENAME_MAX"
.LASF837:
	.string	"pdFREERTOS_ERRNO_EINPROGRESS 119"
.LASF121:
	.string	"__cpp_nontype_template_parameter_auto 201606L"
.LASF783:
	.string	"bktBLOCK_TIME_TASK_STACK_SIZE 100"
.LASF769:
	.string	"configTIMER_QUEUE_LENGTH 4"
.LASF1057:
	.string	"pdTASK_CODE TaskFunction_t"
.LASF308:
	.string	"__FLT32_NORM_MAX__ 3.40282346638528859811704183484516925e+38F32"
.LASF1541:
	.string	"xTaskCreate"
.LASF913:
	.string	"traceSTART() "
.LASF1201:
	.string	"_MACHINE__DEFAULT_TYPES_H "
.LASF661:
	.string	"AON_CTRL_ADDR _AC(0x10000000,UL)"
.LASF1177:
	.string	"__POSIX_VISIBLE 0"
.LASF429:
	.string	"__riscv_xlen 32"
.LASF832:
	.string	"pdFREERTOS_ERRNO_EOPNOTSUPP 95"
.LASF788:
	.string	"ebEVENT_GROUP_SET_BITS_TEST_TASK_STACK_SIZE 115"
.LASF493:
	.string	"__DEFINED_size_t "
.LASF1522:
	.string	"last_heartbeat"
.LASF776:
	.string	"INCLUDE_vTaskSuspend 1"
.LASF91:
	.string	"__cpp_rvalue_reference 200610L"
.LASF545:
	.string	"INT64_MIN"
.LASF188:
	.string	"__UINT16_MAX__ 0xffff"
.LASF376:
	.string	"__FLT64X_MIN__ 3.36210314311209350626267781732175260e-4932F64x"
.LASF651:
	.string	"MCAUSE_CAUSE 0x7FFFFFFF"
.LASF679:
	.string	"IOF_SPI1_SS2 (9u)"
.LASF642:
	.string	"UINT64_C(c) __UINT64_C(c)"
.LASF1252:
	.string	"__CONCAT(x,y) __CONCAT1(x,y)"
.LASF325:
	.string	"__FLT64_MAX__ 1.79769313486231570814527423731704357e+308F64"
.LASF992:
	.string	"traceSTREAM_BUFFER_CREATE(pxStreamBuffer,xIsMessageBuffer) "
.LASF263:
	.string	"__DBL_HAS_QUIET_NAN__ 1"
.LASF780:
	.string	"INCLUDE_xTimerPendFunctionCall 1"
.LASF243:
	.string	"__FLT_DENORM_MIN__ 1.40129846432481707092372958328991613e-45F"
.LASF1145:
	.string	"_NEWLIB_VERSION \"4.4.0\""
.LASF808:
	.string	"pdFREERTOS_ERRNO_EIO 5"
.LASF1110:
	.string	"taskDISABLE_INTERRUPTS() portDISABLE_INTERRUPTS()"
.LASF426:
	.string	"__riscv_mul 1"
.LASF354:
	.string	"__FLT32X_MIN_10_EXP__ (-307)"
.LASF623:
	.string	"WINT_MAX"
.LASF620:
	.string	"WCHAR_MAX __WCHAR_MAX__"
.LASF230:
	.string	"__DEC_EVAL_METHOD__ 2"
.LASF382:
	.string	"__FLT64X_IS_IEC_60559__ 1"
.LASF567:
	.string	"INT_LEAST64_MAX"
.LASF279:
	.string	"__LDBL_HAS_INFINITY__ 1"
.LASF1456:
	.string	"__SERR 0x0040"
.LASF1203:
	.string	"__have_longlong64 1"
.LASF1509:
	.string	"long unsigned int"
.LASF1071:
	.string	"listSECOND_LIST_ITEM_INTEGRITY_CHECK_VALUE "
.LASF1358:
	.string	"_TIME_T_ __int_least64_t"
.LASF1484:
	.string	"_stderr_r(x) _REENT_STDERR(x)"
.LASF1238:
	.string	"__GNUC_VA_LIST_COMPATIBILITY 1"
.LASF240:
	.string	"__FLT_NORM_MAX__ 3.40282346638528859811704183484516925e+38F"
.LASF702:
	.string	"IOF_UART1_RX (24u)"
.LASF998:
	.string	"traceSTREAM_BUFFER_SEND_FROM_ISR(xStreamBuffer,xBytesSent) "
.LASF1001:
	.string	"traceSTREAM_BUFFER_RECEIVE_FAILED(xStreamBuffer) "
.LASF144:
	.string	"__cpp_implicit_move 202207L"
.LASF29:
	.string	"__SIZEOF_LONG_DOUBLE__ 16"
.LASF32:
	.string	"__BIGGEST_ALIGNMENT__ 16"
.LASF1552:
	.string	"_Z18task_watchdog_kickv"
.LASF771:
	.string	"uartPRIMARY_PRIORITY ( configMAX_PRIORITIES - 3 )"
.LASF330:
	.string	"__FLT64_HAS_DENORM__ 1"
.LASF341:
	.string	"__FLT128_DECIMAL_DIG__ 36"
.LASF244:
	.string	"__FLT_HAS_DENORM__ 1"
.LASF1230:
	.string	"__GNUCLIKE_MATH_BUILTIN_CONSTANTS "
.LASF782:
	.string	"configASSERT(x) if( ( x ) == 0 ) vAssertCalled()"
.LASF553:
	.string	"UINT_LEAST8_MAX"
.LASF672:
	.string	"PWM2_CTRL_ADDR _AC(0x10035000,UL)"
.LASF449:
	.string	"BL_SDK_PHY_VER \"a0_final-44-geb7fadd\""
.LASF61:
	.string	"__INT_LEAST16_TYPE__ short int"
.LASF100:
	.string	"__cpp_return_type_deduction 201304L"
.LASF522:
	.string	"_GCC_MAX_ALIGN_T "
.LASF1108:
	.string	"taskEXIT_CRITICAL() portEXIT_CRITICAL()"
.LASF899:
	.string	"INCLUDE_uxTaskGetStackHighWaterMark2 0"
.LASF576:
	.string	"INT_FAST8_MIN (-INT_FAST8_MAX - 1)"
.LASF527:
	.string	"INT8_MIN"
.LASF1081:
	.string	"listGET_LIST_ITEM_OWNER(pxListItem) ( ( pxListItem )->pvOwner )"
.LASF481:
	.string	"__SIZE_T__ "
.LASF42:
	.string	"__SIZE_TYPE__ unsigned int"
.LASF751:
	.string	"configUSE_TRACE_FACILITY 1"
.LASF1022:
	.string	"configUSE_TASK_NOTIFICATIONS 1"
.LASF1292:
	.string	"__offsetof(type,field) offsetof(type, field)"
.LASF265:
	.string	"__LDBL_MANT_DIG__ 113"
.LASF64:
	.string	"__UINT_LEAST8_TYPE__ unsigned char"
.LASF1380:
	.string	"_RAND48_SEED_1 (0xabcd)"
.LASF1436:
	.string	"_REENT_STDERR(_ptr) ((_ptr)->_stderr)"
.LASF268:
	.string	"__LDBL_MIN_10_EXP__ (-4931)"
.LASF1285:
	.string	"__unreachable() __builtin_unreachable()"
.LASF462:
	.string	"__COMPONENT_FILE_NAME__ \"suas_app_freertos_watchdogwatchdogpp\""
.LASF1253:
	.string	"__STRING(x) #x"
.LASF1476:
	.string	"SEEK_CUR 1"
.LASF153:
	.string	"__cpp_char8_t 202207L"
.LASF1479:
	.string	"stdin _REENT_STDIN(_REENT)"
.LASF534:
	.string	"INT16_MIN (-INT16_MAX - 1)"
.LASF934:
	.string	"traceGIVE_MUTEX_RECURSIVE_FAILED(pxMutex) "
.LASF1416:
	.string	"_REENT_MBTOWC_STATE(ptr) ((ptr)->_new._reent._mbtowc_state)"
.LASF1496:
	.string	"unsigned int"
.LASF728:
	.string	"PWM1_REG(offset) _REG32(PWM1_CTRL_ADDR, offset)"
.LASF1473:
	.string	"FILENAME_MAX 1024"
.LASF1454:
	.string	"__SRW 0x0010"
.LASF77:
	.string	"__UINTPTR_TYPE__ unsigned int"
.LASF1216:
	.string	"__THROW "
.LASF122:
	.string	"__cpp_init_captures 201803L"
.LASF1463:
	.string	"__SORD 0x2000"
.LASF1531:
	.string	"g_timeout"
.LASF869:
	.string	"portSET_INTERRUPT_MASK_FROM_ISR() 0"
.LASF561:
	.string	"INT_LEAST32_MAX"
.LASF241:
	.string	"__FLT_MIN__ 1.17549435082228750796873653722224568e-38F"
.LASF269:
	.string	"__LDBL_MAX_EXP__ 16384"
.LASF1500:
	.string	"short int"
.LASF1353:
	.string	"_MACHINE__TYPES_H "
.LASF11:
	.string	"__GNUC_MINOR__ 1"
.LASF4:
	.string	"__STDC_UTF_16__ 1"
.LASF652:
	.string	"_AC(X,Y) (X ##Y)"
.LASF1033:
	.string	"configPRINTF(X) "
.LASF1130:
	.string	"xQueueCreate(uxQueueLength,uxItemSize) xQueueGenericCreate( ( uxQueueLength ), ( uxItemSize ), ( queueQUEUE_TYPE_BASE ) )"
.LASF1341:
	.string	"__builtin_align_down(x,align) ((__typeof__(x))((x)&(~((align)-1))))"
.LASF604:
	.string	"INTMAX_MAX __INTMAX_MAX__"
.LASF658:
	.string	"OTP_MEM_ADDR _AC(0x00020000,UL)"
.LASF85:
	.string	"__cpp_raw_strings 200710L"
.LASF1015:
	.string	"configUSE_TIME_SLICING 1"
.LASF1137:
	.string	"xQueueSendToBackFromISR(xQueue,pvItemToQueue,pxHigherPriorityTaskWoken) xQueueGenericSendFromISR( ( xQueue ), ( pvItemToQueue ), ( pxHigherPriorityTaskWoken ), queueSEND_TO_BACK )"
.LASF909:
	.string	"portCLEAN_UP_TCB(pxTCB) ( void ) pxTCB"
.LASF82:
	.string	"__cpp_binary_literals 201304L"
.LASF1103:
	.string	"tskMPU_REGION_DEVICE_MEMORY ( 1UL << 4UL )"
.LASF586:
	.string	"INT_FAST32_MAX __INT_FAST32_MAX__"
.LASF1025:
	.string	"configSTACK_DEPTH_TYPE uint16_t"
.LASF972:
	.string	"traceEVENT_GROUP_SYNC_END(xEventGroup,uxBitsToSet,uxBitsToWaitFor,xTimeoutOccurred) ( void ) xTimeoutOccurred"
.LASF608:
	.string	"UINTMAX_MAX __UINTMAX_MAX__"
.LASF1270:
	.string	"_Alignas(x) alignas(x)"
.LASF594:
	.string	"INT_FAST64_MIN (-INT_FAST64_MAX - 1)"
.LASF203:
	.string	"__UINT_LEAST8_MAX__ 0xff"
.LASF686:
	.string	"IOF_SPI1_DQ2 (6u)"
.LASF1112:
	.string	"taskSCHEDULER_SUSPENDED ( ( BaseType_t ) 0 )"
.LASF189:
	.string	"__UINT32_MAX__ 0xffffffffUL"
.LASF51:
	.string	"__SIG_ATOMIC_TYPE__ int"
.LASF378:
	.string	"__FLT64X_DENORM_MIN__ 6.47517511943802511092443895822764655e-4966F64x"
.LASF1365:
	.string	"__LOCK_INIT_RECURSIVE(class,lock) static int lock = 0;"
.LASF1406:
	.string	"_REENT_RAND48_MULT(ptr) ((ptr)->_new._reent._r48._mult)"
.LASF1447:
	.string	"_NEWLIB_STDIO_H "
.LASF12:
	.string	"__GNUC_PATCHLEVEL__ 0"
.LASF250:
	.string	"__DBL_DIG__ 15"
.LASF1525:
	.string	"WatchdogTaskInfo"
	.section	.debug_line_str,"MS",@progbits,1
.LASF1583:
	.string	"deprecated_definitions.h"
.LASF1587:
	.string	"newlib.h"
.LASF1565:
	.string	"/home/shivani/bl602_iot_sdk/toolchain/compiler/lib/gcc/riscv32-unknown-elf/15.1.0/include"
.LASF1593:
	.string	"_default_types.h"
.LASF1568:
	.string	"/home/shivani/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include"
.LASF1569:
	.string	"watchdog.cpp"
.LASF1596:
	.string	"_types.h"
.LASF1598:
	.string	"string.h"
.LASF1586:
	.string	"_ansi.h"
.LASF1578:
	.string	"portable.h"
.LASF1571:
	.string	"stdint-gcc.h"
.LASF1574:
	.string	"task.h"
.LASF1572:
	.string	"projdefs.h"
.LASF1:
	.string	"/home/shivani/bl602_iot_sdk/customer_app/suas_app_freertos_watchdog/build_out/suas_app_freertos_watchdog"
.LASF1577:
	.string	"stdio.h"
.LASF1567:
	.string	"/home/shivani/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/sys"
.LASF1591:
	.string	"features.h"
.LASF1576:
	.string	"queue.h"
.LASF1575:
	.string	"watchdog.h"
.LASF1594:
	.string	"stdarg.h"
.LASF1566:
	.string	"/home/shivani/bl602_iot_sdk/toolchain/compiler/riscv32-unknown-elf/include/machine"
.LASF1573:
	.string	"portmacro.h"
.LASF1579:
	.string	"FreeRTOS.h"
.LASF1570:
	.string	"stddef.h"
.LASF1581:
	.string	"FreeRTOSConfig.h"
.LASF1585:
	.string	"list.h"
.LASF1590:
	.string	"ieeefp.h"
.LASF1564:
	.string	"/home/shivani/bl602_iot_sdk/customer_app/suas_app_freertos_watchdog/suas_app_freertos_watchdog"
.LASF1592:
	.string	"cdefs.h"
.LASF0:
	.string	"/home/shivani/bl602_iot_sdk/customer_app/suas_app_freertos_watchdog/suas_app_freertos_watchdog/watchdog.cpp"
.LASF1563:
	.string	"/home/shivani/bl602_iot_sdk/components/freertos/portable/GCC/RISC-V"
.LASF1562:
	.string	"/home/shivani/bl602_iot_sdk/components/freertos/include"
.LASF1582:
	.string	"platform.h"
.LASF1597:
	.string	"lock.h"
.LASF1584:
	.string	"mpu_wrappers.h"
.LASF1589:
	.string	"config.h"
.LASF1595:
	.string	"reent.h"
.LASF1588:
	.string	"_newlib_version.h"
.LASF1580:
	.string	"stdint.h"
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
