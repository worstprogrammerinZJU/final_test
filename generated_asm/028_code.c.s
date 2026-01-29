.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 13, 0	sdk_version 13, 3
	.globl	_func0                          ; -- Begin function func0
	.p2align	2
_func0:                                 ; @func0
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #80
	.cfi_def_cfa_offset 80
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	add	x29, sp, #64
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	w1, [x29, #-12]
	stur	x2, [x29, #-24]
	str	x3, [sp, #32]
	ldursw	x8, [x29, #-12]
	lsl	x0, x8, #2
	bl	_malloc
	ldur	x8, [x29, #-24]
	str	x0, [x8]
	ldr	x8, [sp, #32]
	str	wzr, [x8]
	str	wzr, [sp, #28]
	b	LBB0_1
LBB0_1:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_5 Depth 2
	ldr	w8, [sp, #28]
	ldur	w9, [x29, #-12]
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB0_15
	b	LBB0_2
LBB0_2:                                 ;   in Loop: Header=BB0_1 Depth=1
	ldur	x8, [x29, #-8]
	ldrsw	x9, [sp, #28]
	ldr	w8, [x8, x9, lsl #2]
	str	w8, [sp, #24]
	strb	wzr, [sp, #23]
	ldr	w8, [sp, #24]
	subs	w8, w8, #0
	cset	w8, ne
	tbnz	w8, #0, LBB0_4
	b	LBB0_3
LBB0_3:                                 ;   in Loop: Header=BB0_1 Depth=1
	mov	w8, #1
	strb	w8, [sp, #23]
	b	LBB0_4
LBB0_4:                                 ;   in Loop: Header=BB0_1 Depth=1
	b	LBB0_5
LBB0_5:                                 ;   Parent Loop BB0_1 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldr	w8, [sp, #24]
	subs	w8, w8, #0
	cset	w8, le
	mov	w9, #0
	str	w9, [sp, #12]                   ; 4-byte Folded Spill
	tbnz	w8, #0, LBB0_7
	b	LBB0_6
LBB0_6:                                 ;   in Loop: Header=BB0_5 Depth=2
	ldrb	w8, [sp, #23]
	mvn	w8, w8
	str	w8, [sp, #12]                   ; 4-byte Folded Spill
	b	LBB0_7
LBB0_7:                                 ;   in Loop: Header=BB0_5 Depth=2
	ldr	w8, [sp, #12]                   ; 4-byte Folded Reload
	tbz	w8, #0, LBB0_11
	b	LBB0_8
LBB0_8:                                 ;   in Loop: Header=BB0_5 Depth=2
	ldr	w8, [sp, #24]
	mov	w10, #2
	sdiv	w9, w8, w10
	mul	w9, w9, w10
	subs	w8, w8, w9
	subs	w8, w8, #0
	cset	w8, ne
	tbnz	w8, #0, LBB0_10
	b	LBB0_9
LBB0_9:                                 ;   in Loop: Header=BB0_5 Depth=2
	mov	w8, #1
	strb	w8, [sp, #23]
	b	LBB0_10
LBB0_10:                                ;   in Loop: Header=BB0_5 Depth=2
	ldr	w8, [sp, #24]
	ldr	x9, [x8]
	ldrsw	x10, [sp, #12]
	ldr	w9, [x9, x10, lsl #2]
	ldur	x10, [x29, #-24]
	ldr	x10, [x10]
	ldr	x11, [sp, #32]
	ldrsw	x11, [x11]
	str	w9, [x10, x11, lsl #2]
	ldr	w9, [sp, #32]
	add	w11, w9, #1
	ldr	w9, [x8, w11, sxtw #2]
	ldur	x8, [x29, #-24]
	ldr	x8, [x8]
	ldrsw	x11, [sp, #12]
	ldr	w8, [x8, x11, lsl #2]
	ldur	x9, [x29, #-24]
	ldr	x9, [x9]
	ldrsw	x11, [sp, #12]
	str	w8, [x9, x11, lsl #2]
	b	LBB0_11
LBB0_11:                                ;   in Loop: Header=BB0_5 Depth=2
	b	LBB0_12
LBB0_12:                                ;   in Loop: Header=BB0_5 Depth=1
	ldr	w8, [sp, #12]                   ; 4-byte Folded Reload
	tbz	w8, #0, LBB0_13
	b	LBB0_14
LBB0_13:                                ;   in Loop: Header=BB0_5 Depth=1
	ldur	x8, [x29, #-8]
	ldrsw	x9, [sp, #28]
	ldr	w8, [x8, x9, lsl #2]
	ldur	x9, [x29, #-24]
	ldr	x9, [x9]
	ldr	x10, [sp, #32]
	ldrsw	x10, [x10]
	str	w8, [x9, x10, lsl #2]
	ldr	x8, [sp, #32]
	ldr	x8, [x8]
	ldrsw	x9, [sp, #12]
	add	w9, w9, #1
	ldr	w8, [x8, w9, sxtw #2]
	ldur	x9, [x29, #-24]
	ldr	x9, [x9]
	ldrsw	x10, [sp, #12]
	str	w8, [x9, x10, lsl #2]
	b	LBB0_14
LBB0_14:                                ;   in Loop: Header=BB0_5 Depth=1
	ldr	w8, [sp, #28]
	add	w8, w8, #1
	str	w8, [sp, #28]
	b	LBB0_13
LBB0_15:                                ;   in Loop: Header=BB0_5 Depth=1
	b	LBB0_16
LBB0_16:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_18 Depth 2
	ldr	w8, [sp, #12]                   ; 4-byte Folded Reload
	ldr	x9, [sp, #32]
	ldr	w9, [x9]
	subs	w9, w9, #1
	cset	w9, le
	tbnz	w9, #0, LBB0_25
	b	LBB0_17
LBB0_17:                                ;   in Loop: Header=BB0_16 Depth=1
	str	wzr, [sp, #12]                   ; 4-byte Folded Spill
	b	LBB0_18
LBB0_18:                                 ;   in Loop: Header=BB0_5 Depth=1
	ldur	x8, [x29, #-24]
	ldr	x8, [x8]
	ldrsw	x9, [sp, #12]
	ldr	w8, [x8, x9, lsl #2]
	ldur	x9, [x29, #-24]
	ldr	x9, [x9]
	ldr	x10, [sp, #32]
	ldrsw	x10, [x10]
	str	w8, [x9, x10, lsl #2]
	ldr	x8, [sp, #32]
	ldr	x8, [x8]
	ldrsw	x9, [sp, #12]
	add	w9, w9, #1
	ldr	w8, [x8, w9, sxtw #2]
	ldur	x9, [x29, #-24]
	ldr	x9, [x9]
	ldrsw	x10, [sp, #12]
	str	w8, [x9, x10, lsl #2]
	b	LBB0_19
LBB0_19:                                ;   in Loop: Header=BB0_5 Depth=2
	ldur	x8, [x29, #-24]
	ldr	x8, [x8]
	ldrsw	x9, [sp, #32]
	ldr	w8, [x8, x9, lsl #2]
	ldur	x9, [x29, #-24]
	ldr	x9, [x9]
	ldr	x10, [sp, #32]
	ldrsw	x10, [x10]
	str	w8, [x9, x10, lsl #2]
	ldr	x8, [sp, #32]
	ldr	x8, [x8]
	ldrsw	x9, [sp, #12]
	add	w9, w9, #1
	ldr	w8, [x8, w9, sxtw #2]
	ldur	x9, [x29, #-24]
	ldr	x9, [x9]
	ldrsw	x10, [sp, #12]
	str	w8, [x9, x10, lsl #2]
	b	LBB0_21
LBB0_20:                                ;   in Loop: Header=BB0_5 Depth=2
	ldur	x8, [x29, #-24]
	ldr	x8, [x8]
	ldrsw	x9, [sp, #12]
	ldr	w8, [x8, x9, lsl #2]
	ldur	x9, [x29, #-24]
	ldr	x9, [x9]
	ldr	x10, [sp, #32]
	ldrsw	x10, [x10]
	str	w8, [x9, x10, lsl #2]
	ldr	x8, [sp, #32]
	ldr	x8, [x8]
	ldrsw	x9, [sp, #12]
	add	w9, w9, #1
	ldr	w8, [x8, w9, sxtw #2]
	ldur	x9, [x29, #-24]
	ldr	x9, [x9]
	ldrsw	x10, [sp, #12]
	str	w8, [x9, x10, lsl #2]
	b	LBB0_21
LBB0_21:                                ;   in Loop: Header=BB0_5 Depth=2
	b	LBB0_22
LBB0_22:                                ;   in Loop: Header=BB0_5 Depth=1
	ldr	w8, [sp, #12]                   ; 4-byte Folded Reload
	tbz	w8, #0, LBB0_13
	b	LBB0_23
LBB0_23:                                ;   in Loop: Header=BB0_5 Depth=1
	ldur	x8, [x29, #-8]
	ldrsw	x9, [sp, #28]
	ldr	w8, [x8, x9, lsl #2]
	ldur	x9, [x29, #-24]
	ldr	x9, [x9]
	ldr	x10, [sp, #32]
	ldrsw	x10, [x10]
	str	w8, [x9, x10, lsl #2]
	ldr	x8, [sp, #32]
	ldr	x8, [x8]
	ldrsw	x9, [sp, #12]
	add	w9, w9, #1
	ldr	w8, [x8, w9, sxtw #2]
	ldur	x9, [x29, #-24]
	ldr	x9, [x9]
	ldrsw	x10, [sp, #12]
	str	w8, [x9, x10, lsl #2]
	b	LBB0_25
LBB0_24:                                ;   in Loop: Header=BB0_5 Depth=1
	ldur	x8, [x29, #-24]
	ldr	x8, [x8]
	ldrsw	x9, [sp, #28]
	ldr	w8, [x8, x9, lsl #2]
	ldur	x9, [x29, #-24]
	ldr	x9, [x9]
	ldr	x10, [sp, #32]
	ldrsw	x10, [x10]
	str	w8, [x9, x10, lsl #2]
	ldr	x8, [sp, #32]
	ldr	x8, [x8]
	ldrsw	x9, [sp, #12]
	add	w9, w9, #1
	ldr	w8, [x8, w9, sxtw #2]
	ldur	x9, [x29, #-24]
	ldr	x9, [x9]
	ldrsw	x10, [sp, #12]
	str	w8, [x9, x10, lsl #2]
	b	LBB0_26
LBB0_25:                                ;   in Loop: Header=BB0_5 Depth=1
	ldur	x8, [x29, #-24]
	ldr	x8, [x8]
	ldrsw	x9, [sp, #28]
	ldr	w8, [x8, x9, lsl #2]
	ldur	x9, [x29, #-24]
	ldr	x9, [x9]
	ldr	x10, [sp, #32]
	ldrsw	x10, [x10]
	str	w8, [x9, x10, lsl #2]
	ldr	x8, [sp, #32]
	ldr	x8, [x8]
	ldrsw	x9, [sp, #12]
	add	w9, w9, #1
	ldr	w8, [x8, w9, sxtw #2]
	ldur	x9, [x29, #-24]
	ldr	x9, [x9]
	ldrsw	x10, [sp, #12]
	str	w8, [x9, x10, lsl #2]
	b	LBB0_26
LBB0_26:                                ;   in Loop: Header=BB0_5 Depth=1
	b	LBB0_27
LBB0_27:                                ;   in Loop: Header=BB0_5 Depth=1
	ldr	w8, [sp, #12]                   ; 4-byte Folded Reload
	tbz	w8, #0, LBB0_15
	b	LBB0_28
LBB0_28:                                ;   in Loop: Header=BB0_5 Depth=1
	ldur	x8, [x29, #-8]
	ldrsw	x9, [sp, #28]
	ldr	w8, [x8, x9, lsl #2]
	ldur	x9, [x29, #-24]
	ldr	x9, [x9]
	ldr	x10, [sp, #32]
	ldrsw	x10, [x10]
	str	w8, [x9, x10, lsl #2]
	ldr	x8, [sp, #32]
	ldr	x8, [x8]
	ldrsw	x9, [sp, #12]
	add	w9, w9, #1
	ldr	w8, [x8, w9, sxtw #2]
	ldur	x9, [x29, #-24]
	ldr	x9, [x9]
	ldrsw	x10, [sp, #12]
	str	w8, [x9, x10, lsl #2]
	b	LBB0_31
LBB0_30:                                ;   in Loop: Header=BB0_5 Depth=2
	ldur	x8, [x29, #-24]
	ldr	x8, [x8]
	ldrsw	x9, [sp, #28]
	ldr	w8, [x8, x9, lsl #2]
	ldur	x9, [x29, #-24]
	ldr	x9, [x9]
	ldr	x10, [sp, #32]
	ldrsw	x10, [x10]
	str	w8, [x9, x10, lsl #2]
	ldr	x8, [sp, #32]
	ldr	x8, [x8]
	ldrsw	x9, [sp, #12]
	add	w9, w9, #1
	ldr	w8, [x8, w9, sxtw #2]
	ldur	x9, [x29, #-24]
	ldr	x9, [x9]
	ldrsw	x10, [sp, #12]
	str	w8, [x9, x10, lsl #2]
	b	LBB0_33
LBB0_31:                                ;   in Loop: Header=BB0_5 Depth=2
	ldur	x8, [x29, #-24]
	ldr	x8, [x8]
	ldrsw	x9, [sp, #28]
	ldr	w8, [x8, x9, lsl #2]
	ldur	x9, [x29, #-24]
	ldr	x9, [x9]
	ldr	x10, [sp, #32]
	ldrsw	x10, [x10]
	str	w8, [x9, x10, lsl #2]
	ldr	x8, [sp, #32]
	ldr	x8, [x8]
	ldrsw	x9, [sp, #12]
	add	w9, w9, #1
	ldr	w8, [x8, w9, sxtw #2]
	ldur	x9, [x29, #-24]
	ldr	x9, [x9]
	ldrsw	x10, [sp, #12]
	str	w8, [x9, x10, lsl #2]
	b	LBB0_35
LBB0_32:                                ;   in Loop: Header=BB0_5 Depth=1
	ldur	x8, [x29, #-24]
	ldr	x8, [x8]
	ldrsw	x9, [sp, #28]
	ldr	w8, [x8, x9, lsl #2]
	ldur	x9, [x29, #-24]
	ldr	x9, [x9]
	ldr	x10, [sp, #32]
	ldrsw	x10, [x10]
	str	w8, [x9, x10, lsl #2]
	ldr	x8, [sp, #32]
	ldr	x8, [x8]
	ldrsw	x9, [sp, #12]
	add	w9, w9, #1
	ldr	w8, [x8, w9, sxtw #2]
	ldur	x9, [x29, #-24]
	ldr	x9, [x9]
	ldrsw	x10, [sp, #12]
	str	w8, [x9, x10, lsl #2]
	b	LBB0_35
LBB0_33:                                ;   in Loop: Header=BB0_5 Depth=1
	b	LBB0_34
LBB0_34:                                ;   in Loop: Header=BB0_5 Depth=1
	ldr	w8, [sp, #12]                   ; 4-byte Folded Reload
	tbz	w8, #0, LBB0_15
	b	LBB0_35
LBB0_35:                                ;   in Loop: Header=BB0_5 Depth=1
	ldur	x8, [x29, #-8]
	ldrsw	x9, [sp, #28]
	ldr	w8, [x8, x9, lsl #2]
	ldur	x9, [x29, #-24]
	ldr	x9, [x9]
	ldr	x10, [sp, #32]
	ldrsw	x10, [x10]
	str	w8, [x9, x10, lsl #2]
	ldr	x8, [sp, #32]
	ldr	x8, [x8]
	ldrsw	x9, [sp, #12]
	add	w9, w9, #1
	ldr	w8, [x8, w9, sxtw #2]
	ldur	x9, [x29, #-24]
	ldr	x9, [x9]
	ldrsw	x10, [sp, #12]
	str	w8, [x9, x10, lsl #2]
	b	LBB0_37
LBB0_36:                                ;   in Loop: Header=BB0_5 Depth=1
	ldur	x8, [x29, #-24]
	ldr	x8, [x8]
	ldrsw	x9, [sp, #28]
	ldr	w8, [x8, x9, lsl #2]
	ldur	x9, [x29, #-24]
	ldr	x9, [x9]
	ldr	x10, [sp, #32]
	ldrsw	x10, [x10]
	str	w8, [x9, x10, lsl #2]
	ldr	x8, [sp, #32]
	ldr	x8, [x8]
	ldrsw	x9, [sp, #12]
	add	w9, w9, #1
	ldr	w8, [x8, w9, sxtw #2]
	ldur	x9, [x29, #-24]
	ldr	x9, [x9]
	ldrsw	x10, [sp, #12]
	str	w8, [x9, x10, lsl #2]
	b	LBB0_40
LBB0_37:                                ;   in Loop: Header=BB0_5 Depth=1
	b	LBB0_41
LBB0_41:                                ;   in Loop: Header=BB0_5 Depth=1
	ldr	w8, [sp, #12]                   ; 4-byte Folded Reload
	tbz	w8, #0, LBB0_15
	b	LBB0_43
LBB0_42:                                ;   in Loop: Header=BB0_5 Depth=1
	ldur	x8, [x29, #-8]
	ldrsw	x9, [sp, #28]
	ldr	w8, [x8, x9, lsl #2]
	ldur	x9, [x29, #-24]
	ldr	x9, [x9]
	ldr	x10, [sp, #32]
	ldrsw	x10, [x10]
	str	w8, [x9, x10, lsl #2]
	ldr	x8, [sp, #32]
	ldr	x8, [x8]
	ldrsw	x9, [sp, #12]
	add	w9, w9, #1
	ldr	w8, [x8, w9, sxtw #2]
	ldur	x9, [x29, #-24]
	ldr	x9, [x9]
	ldrsw	x10, [sp, #12]
	str	w8, [x9, x10, lsl #2]
	b	LBB0_45
LBB0_43:                                ;   in Loop: Header=BB0_5 Depth=1
	b	LBB0_44
LBB0_44:                                ;   in Loop: Header=BB0_5 Depth=1
	ldr	w8, [sp, #12]                   ; 4-byte Folded Reload
	tbz	w8, #0, LBB0_15
	b	LBB0_45
LBB0_45:                                ;   in Loop: Header=BB0_5 Depth=1
	ldur	x8, [x29, #-8]
	ldrsw	x9, [sp, #28]
	ldr	w8, [x8, x9, lsl #2]
	ldur	x9, [x29, #-24]
	ldr	x9, [x9]
	ldr	x10, [sp, #32]
	ldrsw	x10, [x10]
	str	w8, [x9, x10, lsl #2]
	ldr	x8, [sp, #32]
	ldr	x8, [x8]
	ldrsw	x9, [sp, #12]
	add	w9, w9, #1
	ldr	w8, [x8, w9, sxtw #2]
	ldur	x9, [x29, #-24]
	ldr	x9, [x9]
	ldrsw	x10, [sp, #12]
	str	w8, [x9, x10, lsl #2]
	b	LBB0_47
LBB0_46:                                ;   in Loop: Header=BB0_5 Depth=1
	ldur	x8, [x29, #-24]
	ldr	x8, [x8]
	ldrsw	x9, [sp, #28]
	ldr	w8, [x8, x9, lsl #2]
	ldur	x9, [x29, #-24]
	ldr	x9, [x9]
	ldr	x10, [sp, #32]
	ldrsw	x10, [x10]
	str	w8, [x9, x10, lsl #2]
	ldr	x8, [sp, #32]
	ldr	x8, [x8]
	ldrsw	x9, [sp, #12]
	add	w9, w9, #1
	ldr	w8, [x8, w9, sxtw #2]
	ldur	x9, [x29, #-24]
	ldr	x9, [x9]
	ldrsw	x10, [sp, #12]
	str	w8, [x9, x10, lsl #2]
	b	LBB0_51
LBB0_47:                                ;   in Loop: Header=BB0_5 Depth=1
	b	LBB0_53
LBB0_51:                                ;   in Loop: Header=BB0_5 Depth=1
	ldr	w8, [sp, #12]                   ; 4-byte Folded Reload
	tbz	w8, #0, LBB0_15
	b	LBB0_53
LBB0_52:                                ;   in Loop: Header=BB0_5 Depth=1
	ldur	x8, [x29, #-8]
	ldrsw	x9, [sp, #28]
	ldr	w8, [x8, x9, lsl #2]
	ldur	x9, [x29, #-24]
	ldr	x9, [x9]
	ldr	x10, [sp, #32]
	ldrsw	x10, [x10]
	str	w8, [x9, x10, lsl #2]
	ldr	x8, [sp, #32]
	ldr	x8, [x8]
	ldrsw	x9, [sp, #12]
	add	w9, w9, #1
	ldr	w8, [x8, w9, sxtw #2]
	ldur	x9, [x29, #-24]
	ldr	x9, [x9]
	ldrsw	x10, [sp, #12]
	str	w8, [x9, x10, lsl #2]
	b	LBB0_61
LBB0_53:                                ;   in Loop: Header=BB0_5 Depth=1
	b	LBB0_54
LBB0_54:                                ;   in Loop: Header=BB0_5 Depth=1
	ldr	w8, [sp, #12]                   ; 4-byte Folded Reload
	tbz	w8, #0, LBB0_15
	b	LBB0_55
LBB0_55:                                ;   in Loop: Header=BB0_5 Depth=1
	ldur	x8, [x29, #-8]
	ldrsw	x9, [sp, #28]
	ldr	w8, [x8, x9, lsl #2]
	ldur	x9, [x29, #-24]
	ldr	x9, [x9]
	ldr	x10, [sp, #32]
	ldrsw	x10, [x10]
	str	w8, [x9, x10, lsl #2]
	ldr	x8, [sp, #32]
	ldr	x8, [x8]
	ldrsw	x9, [sp, #12]
	add	w9, w9, #1
	ldr	w8, [x8, w9, sxtw #2]
	ldur	x9, [x29, #-24]
	ldr	x9, [x9]
	ldrsw	x10, [sp, #12]
	str	w8, [x9, x10, lsl #2]
	b	LBB0_63
LBB0_61:                                ;   in Loop: Header=BB0_5 Depth=1
	b	LBB0_62
LBB0_62:                                ;   in Loop: Header=BB0_5 Depth=1
	ldr	w8, [sp, #12]                   ; 4-byte Folded Reload
	tbz	w8, #0, LBB0_15
	b	LBB0_63
LBB0_63:                                ;   in Loop: Header=BB0_5 Depth=1
	ldur	x8, [x29, #-8]
	ldrsw	x9, [sp, #28]
	ldr	w8, [x8, x9, lsl #2]
	ldur	x9, [x29, #-24]
	ldr	x9, [x9]
	ldr	x10, [sp, #32]
	ldrsw	x10, [x10]
	str	w8, [x9, x10, lsl #2]
	ldr	x8, [sp, #32]
	ldr	x8, [x8]
	ldrsw	x9, [sp, #12]
	add	w9, w9, #1
	ldr	w8, [x8, w9, sxtw #2]
	ldur	x9, [x29, #-24]
	ldr	x9, [x9]
	ldrsw	x10, [sp, #12]
	str	w8, [x9, x10, lsl #2]
	b	LBB0_65
LBB0_64:                                ;   in Loop: Header=BB0_5 Depth=1
	ldur	x8, [x29, #-24]
	ldr	x8, [x8]
	ldrsw	x9, [sp, #28]
	ldr	w8, [x8, x9, lsl #2]
	ldur	x9, [x29, #-24]
	ldr	x9, [x9]
	ldr	x10, [sp, #32]
	ldrsw	x10, [x10]
	str	w8, [x9, x10, lsl #2]
	ldr	x8, [sp, #32]
	ldr	x8, [x8]
	ldrsw	x9, [sp, #12]
	add	w9, w9, #1
	ldr	w8, [x8, w9, sxtw #2]
	ldur	x9, [x29, #-24]
	ldr	x9, [x9]
	ldrsw	x10, [sp, #12]
	str	w8, [x9, x10, lsl #2]
	b	LBB0_67
LBB0_65:                                ;   in Loop: Header=BB0_5 Depth=1
	b	LBB0_66
LBB0_66:                                ;   in Loop: Header=BB0_5 Depth=1
	ldr	w8, [sp, #12]                   ; 4-byte Folded Reload
	tbz	w8, #0, LBB0_15
	b	LBB0_67
LBB0_67:                                ;   in Loop: Header=BB0_5 Depth=1
	ldur	x8, [x29, #-8]
	ldrsw	x9, [sp, #28]
	ldr	w8, [x8, x9, lsl #2]
	ldur	x9, [x29, #-24]
	ldr	x9, [x9]
	ldr	x10, [sp, #32]
	ldrsw	x10, [x10]
	str	w8, [x9, x10, lsl #2]
	ldr	x8, [sp, #32]
	ldr	x8, [x8]
	ldrsw	x9, [sp, #12]
	add	w9, w9, #1
	ldr	w8, [x8, w9, sxtw #2]
	ldur	x9, [x29, #-24]
	ldr	x9, [x9]
	ldrsw	x10, [sp, #12]
	str	w8, [x9, x10, lsl #2]
	b	LBB0_71
LBB0_70:                                ;   in Loop: Header=BB0_5 Depth=1
	ldur	x8, [x29, #-24]
	ldr	x8, [x8]
	ldrsw	x9, [sp, #28]
	ldr	w8, [x8, x9, lsl #2]
	ldur	x9, [x29, #-24]
	ldr	x9, [x9]
	ldr	x10, [sp, #32]
	ldrsw	x10, [x10]
	str	w8, [x9, x10, lsl #2]
	ldr	x8, [sp, #32]
	ldr	x8, [x8]
	ldrsw	x9, [sp, #12]
	add	w9, w9, #1
	ldr	w8, [x8, w9, sxtw #2]
	ldur	x9, [x29, #-24]
	ldr	x9, [x9]
	ldrsw	x10, [sp, #12]
	str	w8, [x9, x10, lsl #2]
	b	LBB0_73
LBB0_71:                                ;   in Loop: Header=BB0_5 Depth=1
	b	LBB0_72
LBB0_72:                                ;   in Loop: Header=BB0_5 Depth=1
	ldr	w8, [sp, #12]                   ; 4-byte Folded Reload
	tbz	w8, #0, LBB0_15
	b	LBB0_73
LBB0_73:                                ;   in Loop: Header=BB0_5 Depth=1
	ldur	x8, [x29, #-8]
	ldrsw	x9, [sp, #28]
	ldr	w8, [x8, x9, lsl #2]
	ldur	x9, [x29, #-24]
	ldr	x9, [x9]
	ldr	x10, [sp, #32]
	ldrsw	x10, [x10]
	str	w8, [x9, x10, lsl #2]
	ldr	x8, [sp, #32]
	ldr	x8, [x8]
	ldrsw	x9, [sp, #12]
	add	w9, w9, #1
	ldr	w8, [x8, w9, sxtw #2]
	ldur	x9, [x29, #-24]
	ldr	x9, [x9]
	ldrsw	x10, [sp, #12]
	str	w8, [x9, x10, lsl #2]
	b	LBB0_75
LBB0_74:                                ;   in Loop: Header=BB0_5 Depth=1
	ldur	x8, [x29, #-24]
	ldr	x8, [x8]
	ldrsw	x9, [sp, #28]
	ldr	w8, [x8, x9, lsl #2]
	ldur	x9, [x29, #-24]
	ldr	x9, [x9]
	ldr	x10, [sp, #32]
	ldrsw	x10, [x10]
	str	w8, [x9, x10, lsl #2]
	ldr	x8, [sp, #32]
	ldr	x8, [x8]
	ldrsw	x9, [sp, #12]
	add	w9, w9, #1
	ldr	w8, [x8, w9, sxtw #2]
	ldur	x9, [x29, #-24]
	ldr	x9, [x9]
	ldrsw	x10, [sp, #12]
	str	w8, [x9, x10, lsl #2]
	b	LBB0_77
LBB0_75:                                ;   in Loop: Header=BB0_5 Depth=1
	b	LBB0_76
LBB0_76:                                ;   in Loop: Header=BB0_5 Depth=1
	ldr	w8, [sp, #12]                   ; 4-byte Folded Reload
	tbz	w8, #0, LBB0_15
	b	LBB0_77
LBB0_77:                                ;   in Loop: Header=BB0_5 Depth=1
	ldur	x8, [x29, #-8]
	ldrsw	x9, [sp, #28]
	ldr	w8, [x8, x9, lsl #2]
	ldur	x9, [x29, #-24]
	ldr	x9, [x9]
	ldr	x10, [sp, #32]
	ldrsw	x10, [x10]
	str	w8, [x9, x10, lsl #2]
	ldr	x8, [sp, #32]
	ldr	x8, [x8]
	ldrsw	x9, [sp, #12]
	add	w9, w9, #1
	ldr	w8, [x8, w9, sxtw #2]
	ldur	x9, [x29, #-24]
	ldr	x9, [x9]
	ldrsw	x10, [sp, #12]
	str	w8, [x9, x10, lsl #2]
	b	LBB0_81
LBB0_80:                                ;   in Loop: Header=BB0_5 Depth=1
	ldur	x8, [x29, #-24]
	ldr	x8, [x8]
	ldrsw	x9, [sp, #28]
	ldr	w8, [x8, x9, lsl #2]
	ldur	x9, [x29, #-24]
	ldr	x9, [x9]
	ldr	x10, [sp, #32]
	ldrsw	x10, [x10]
	str	w8, [x9, x10, lsl #2]
	ldr	x8, [sp, #32]
	ldr	x8, [x8]
	ldrsw	x9, [sp, #12]
	add	w9, w9, #1
	ldr	w8, [x8, w9, sxtw #2]
	ldur	x9, [x29, #-24]
	ldr	x9, [x9]
	ldrsw	x10, [sp, #12]
	str	w8, [x9, x10, lsl #2]
	b	LBB0_83
LBB0_81:                                ;   in Loop: Header=BB0_5 Depth=1
	b	LBB0_82
LBB0_82:                                ;   in Loop: Header=BB0_5 Depth=1
	ldr	w8, [sp, #12]                   ; 4-byte Folded Reload
	tbz	w8, #0, LBB0_15
	b	LBB0_83
LBB0_83:                                ;   in Loop: Header=BB0_5 Depth=1
	ldur	x8, [x29, #-8]
	ldrsw	x9, [sp, #28]
	ldr	w8, [x8, x9, lsl #2]
	ldur	x9, [x29, #-24]
	ldr	x9, [x9]
	ldr	x10, [sp, #32]
	ldrsw	x10, [x10]
	str	w8, [x9, x10, lsl #2]
	ldr	x8, [sp, #32]
	ldr	x8, [x8]
	ldrsw	x9, [sp, #12]
	add	w9, w9, #1
	ldr	w8, [x8, w9, sxtw #2]
	ldur	x9, [x29, #-24]
	ldr	x9, [x9]
	ldrsw	x10, [sp, #12]
	str	w8, [x9, x10, lsl #2]
	b	LBB0_85
LBB0_84:                                ;   in Loop: Header=BB0_5 Depth=1
	ldur	x8, [x29, #-24]
	ldr	x8, [x8]
	ldrsw	x9, [sp, #28]
	ldr	w8, [x8, x9, lsl #2]
	ldur	x9, [x29, #-24]
	ldr	x9, [x9]
	ldr	x10, [sp, #32]
	ldrsw	x10, [x10]
	str	w8, [x9, x10, lsl #2]
	ldr	x8, [sp, #32]
	ldr	x8, [x8]
	ldrsw	x9, [sp, #12]
	add	w9, w9, #1
	ldr	w8, [x8, w9, sxtw #2]
	ldur	x9, [x29, #-24]
	ldr	x9, [x9]
	ldrsw	x10, [sp, #12]
	str	w8, [x9, x10, lsl #2]
	b	LBB0_87
LBB0_85:                                ;   in Loop: Header=BB0_5 Depth=1
	b	LBB0_86
LBB0_86:                                ;   in Loop: Header=BB0_5 Depth=1
	ldr	w8, [sp, #12]                   ; 4-byte Folded Reload
	tbz	w8, #0, LBB0_15
	b	LBB0_87
LBB0_87:                                ;   in Loop: Header=BB0_5 Depth=1
	ldur	x8, [x29, #-8]
	ldrsw	x9, [sp, #28]
	ldr	w8, [x8, x9, lsl #2]
	ldur	x9, [x29, #-24]
	ldr	x9, [x9]
	ldr	x10, [sp, #32]
	ldrsw	x10, [x10]
	str	w8, [x9, x10, lsl #2]
	ldr	x8, [sp, #32]
	ldr	x8, [x8]
	ldrsw	x9, [sp, #12]
	add	w9, w9, #1
	ldr	w8, [x8, w9, sxtw #2]
	ldur	x9, [x29, #-24]
	ldr	x9, [x9]
	ldrsw	x10, [sp, #12]
	str	w8, [x9, x10, lsl #2]
	b	LBB0_91
LBB0_88:                                ;   in Loop: Header=BB0_5 Depth=1
	ldur	x8, [x29, #-24]
	ldr	x8, [x8]
	ldrsw	x9, [sp, #28]
	ldr	w8, [x8, x9, lsl #2]
	ldur	x9, [x29, #-24]
	ldr	x9, [x9]
	ldr	x10, [sp, #32]
	ldrsw	x10, [x10]
	str	w8, [x9, x10, lsl #2]
	ldr	x8, [sp, #32]
	ldr	x8, [x8]
	ldrsw	x9, [sp, #12]
	add	w9, w9, #1
	ldr	w8, [x8, w9, sxtw #2]
	ldur	x9, [x29, #-24]
	ldr	x9, [x9]
	ldrsw	x10, [sp, #12]
	str	w8, [x9, x10, lsl #2]
	b	LBB0_99
LBB0_89:                                ;   in Loop: Header=BB0_5 Depth=1
	b	LBB0_90
LBB0_90:                                ;   in Loop: Header=BB0_5 Depth=1
	ldr	w8, [sp, #12]                   ; 4-byte Folded Reload
	tbz	w8, #0, LBB0_15
	b	LBB0_99
LBB0_99:                                ;   in Loop: Header=BB0_5 Depth=1
	ldur	x8, [x29, #-8]
	ldrsw	x9, [sp, #28]
	ldr	w8, [x8, x9, lsl #2]
	ldur	x9, [x29, #-24]
	ldr	x9, [x9]
	ldr	x10, [sp, #32]
	ldrsw	x10, [x10]
	str	w8, [x9, x10, lsl #2]
	ldr	x8, [sp, #32]
	ldr	x8, [x8]
	ldrsw	x9, [sp, #12]
	add	w9, w9, #1
	ldr	w8, [x8, w9, sxtw #2]
	ldur	x9, [x29, #-24]
	ldr	x9, [x9]
	ldrsw	x10, [sp, #12]
	str	w8, [x9, x10, lsl #2]
	b	LBB0_101
LBB0_100:                                ;   in Loop: Header=BB0_5 Depth=1
	ldur	x8, [x29, #-24]
	ldr	x8, [x8]
	ldrsw	x9, [sp, #28]
	ldr	w8, [x8, x9, lsl #2]
	ldur	x9, [x29, #-24]
	ldr	x9, [x9]
	ldr	x10, [sp, #32]
	ldrsw	x10, [x10]
	str	w8, [x9, x10, lsl #2]
	ldr	x8, [sp, #32]
	ldr	x8, [x8]
	ldrsw	x9, [sp, #12]
	add	w9, w9, #1
	ldr	w8, [x8, w9, sxtw #2]
	ldur	x9, [x29, #-24]
	ldr	x9, [x9]
	ldrsw	x10, [sp, #12]
	str	w8, [x9, x10, lsl #2]
	b	LBB0_103
LBB0_101:                                ;   in Loop: Header=BB0_5 Depth=1
	b	LBB0_102
LBB0_102:                                ;   in Loop: Header=BB0_5 Depth=1
	ldr	w8, [sp, #12]                   ; 4-byte Folded Reload
	tbz	w8, #0, LBB0_15
	b	LBB0_103
LBB0_103:                                ;   in Loop: Header=BB0_5 Depth=1
	ldur	x8, [x29, #-8]
	ldrsw	x9, [sp, #28]
	ldr	w8, [x8, x9, lsl #2]
	ldur	x9, [x29, #-24]
	ldr	x9, [x9]
	ldr	x10, [sp, #32]
	ldrsw	x10, [x10]
	str	w8, [x9, x10, lsl #2]
	ldr	x8, [sp, #32]
	ldr	x8, [x8]
	ldrsw	x9, [sp, #12]
	add	w9, w9, #1
	ldr	w8, [x8, w9, sxtw #2]
	ldur	x9, [x29, #-24]
	ldr	x9, [x9]
	ldrsw	x10, [sp, #12]
	str	w8, [x9, x10, lsl #2]
	b	LBB0_105
LBB0_104:                                ;   in Loop: Header=BB0_5 Depth=1
	ldur	x8, [x29, #-24]
	ldr	x8, [x8]
	ldrsw	x9, [sp, #28]
	ldr	w8, [x8, x9, lsl #2]
	ldur	x9, [x29, #-24]
	ldr	x9, [x9]
	ldr	x10, [sp, #32]
	ldrsw	x10, [x10]
	str	w8, [x9, x10, lsl #2]
	ldr	x8, [sp, #32]
	ldr	x8, [x8]
	ldrsw	x9, [sp, #12]
	add	w9, w9, #1
	ldr	w8, [x8, w9, sxtw #2]
	ldur	x9, [x29, #-24]
	ldr	x9, [x9]
	ldrsw	x10, [sp, #12]
	str	w8, [x9, x10, lsl #2]
	b	LBB0_106
LBB0_105:                                ;   in Loop: Header=BB0_5 Depth=1
	b	LBB0_106
LBB0_106:                                ;   in Loop: Header=BB0_5 Depth=1
	ldr	w8, [sp, #12]                   ; 4-byte Folded Reload
	tbz	w8, #0, LBB0_15
	b	LBB0_106
LBB0_107:                                ;   in Loop: Header=BB0_5 Depth=1
	ldur	x8, [x29, #-8]
	ldrsw	x9, [sp, #28]
	ldr	w8, [x8, x9, lsl #2]
	ldur	x9, [x29, #-24]
	ldr	x9, [x9]
	ldr	x10, [sp, #32]
	ldrsw	x10, [x10]
	str	w8, [x9, x10, lsl #2]
	ldr	x8, [sp, #32]
	ldr	x8, [x8]
	ldrsw	x9, [sp, #12]
	add	w9, w9, #1
	ldr	w8, [x8, w9, sxtw #2]
	ldur	x9, [x29, #-24]
	ldr	x9, [x9]
	ldrsw	x10, [sp, #12]
	str	w8, [x9, x10, lsl #2]
	b	LBB0_111
LBB0_108:                                ;   in Loop: Header=BB0_5 Depth=1
	ldur	x8, [x29, #-24]
	ldr	x8, [x8]
	ldrsw	x9, [sp, #28]
	ldr	w8, [x8, x9, lsl #2]
	ldur	x9, [x29, #-24]
	ldr	x9, [x9]
	ldr	x10, [sp, #32]
	ldrsw	x10, [x10]
	str	w8, [x9, x10, lsl #2]
	ldr	x8, [sp, #32]
	ldr	x8, [x8]
	ldrsw	x9, [sp, #12]
	add	w9, w9, #1
	ldr	w8, [x8, w9, sxtw #2]
	ldur	x9, [x29, #-24]
	ldr	x9, [x9]
	ldrsw	x10, [sp, #12]
	str	w8, [x9, x10, lsl #2]
	b	LBB0_113
LBB0_109:                                ;   in Loop: Header=BB0_5 Depth=1
	b	LBB0_114
LBB0_110:                                ;   in Loop: Header=BB0_5 Depth=1
	ldr	w8, [sp, #12]                   ; 4-byte Folded Reload
	tbz	w8, #0, LBB0_15
	b	LBB0_113
LBB0_111:                                ;   in Loop: Header=BB0_5 Depth=1
	ldur	x8, [x29, #-8]
	ldrsw	x9, [sp, #28]
	ldr	w8, [x8, x9, lsl #2]
	ldur	x9, [x29, #-24]
	ldr	x9, [x9]
	ldr	x10, [sp, #32]
	ldrsw	x10, [x10]
	str	w8, [x9, x10, lsl #2]
	ldr	x8, [sp, #32]
	ldr	x8, [x8]
	ldrsw	x9, [sp, #12]
	add	w9, w9, #1
	ldr	w8, [x8, w9, sxtw #2]
	ldur	x9, [x29, #-24]
	ldr	x9, [x9]
	ldrsw	x10, [sp, #12]
	str	w8, [x9, x10, lsl #2]
	b	LBB0_115
LBB0_112:                                ;   in Loop: Header=BB0_5 Depth=1
	ldur	x8, [x29, #-24]
	ldr	x8, [x8]
	ldrsw	x9, [sp, #28]
	ldr	w8, [x8, x9, lsl #2]
	ldur	x9, [x29, #-24]
	ldr	x9, [x9]
	ldr	x10, [sp, #32]
	ldrsw	x10, [x10]
	str	w8, [x9, x10, lsl #2]
	ldr	x8, [sp, #32]
	ldr	x8, [x8]
	ldrsw	x9, [sp, #12]
	add	w9, w9, #1
	ldr	w8, [x8, w9, sxtw #2]
	ldur	x9, [x29, #-24]
	ldr	x9, [x9]
	ldrsw	x10, [sp, #12]
	str	w8, [x9, x10, lsl #2]
	b	LBB0_117
LBB0_113:                                ;   in Loop: Header=BB0_5 Depth=1
	b	LBB0_114
LBB0_114:                                ;   in Loop: Header=BB0_5 Depth=1
	ldr	w8, [sp, #12]                   ; 4-byte Folded Reload
	tbz	w8, #0, LBB0_15
	b	LBB0_117
LBB0_115:                                ;   in Loop: Header=BB0_5 Depth=1
	ldur	x8, [x29, #-8]
	ldrsw	x9, [sp, #28]
	ldr	w8, [x8, x9, lsl #2]
	ldur	x9, [x29, #-24]
	ldr	x9, [x9]
	ldr	x10, [sp, #32]
	ldrsw	x10, [x10]
	str	w8, [x9, x10, lsl #2]
	ldr	x8, [sp, #32]
	ldr	x8, [x8]
	ldrsw	x9, [sp, #12]
	add	w9, w9, #1
	ldr	w8, [x8, w9, sxtw #2]
	ldur	x9, [x29, #-24]
	ldr	x9, [x9]
	ldrsw	x10, [sp, #12]
	str	w8, [x9, x10, lsl #2]
	b	LBB0_121
LBB0_116:                                ;   in Loop: Header=BB0_5 Depth=1
	ldur	x8, [x29, #-24]
	ldr	x8, [x8]
	ldrsw	x9, [sp, #28]
	ldr	w8, [x8, x9, lsl #2]
	ldur	x9, [x29, #-24]
	ldr	x9, [x9]
	ldr	x10, [sp, #32]
	ldrsw	x10, [x10]
	str	w8, [x9, x10, lsl #2]
	ldr	x8, [sp, #32]
	ldr	x8, [x8]
	ldrsw	x9, [sp, #12]
	add	w9, w9, #1
	ldr	w8, [x8, w9, sxtw #2]
	ldur	x9, [x29, #-24]
	ldr	x9, [x9]
	ldrsw	x10, [sp, #12]
	str	w8, [x9, x10, lsl #2]
	b	LBB0_123
LBB0_117:                                ;   in Loop: Header=BB0_5 Depth=1
	b	LBB0_124
LBB0_118:                                ;   in Loop: Header=BB0_5 Depth=1
	ldr	w8, [sp, #12]                   ; 4-byte Folded Reload
	tbz	w8, #0, LBB0_15
	b	LBB0_124
LBB0_119:                                ;   in Loop: Header=BB0_5 Depth=1
	ldur	x8, [x29, #-8]
	ldrsw	x9, [sp, #28]
	ldr	w8, [x8, x9, lsl #2]
	ldur	x9, [x29, #-24]
	ldr	x9, [x9]
	ldr	x10, [sp, #32]
	ldrsw	x10, [x10]
	str	w8, [x9, x10, lsl #2]
	ldr	x8, [sp, #32]
	ldr	x8, [x8]
	ldrsw	x9, [sp, #12]
	add	w9, w9, #1
	ldr	w8, [x8, w9, sxtw #2]
	ldur	x9, [x29, #-24]
	ldr	x9, [x9]
	ldrsw	x10, [sp, #12]
	str	w8, [x9, x10, lsl #2]
	b	LBB0_125
LBB0_120:                                ;   in Loop: Header=BB0_5 Depth=1
	ldur	x8, [x29, #-24]
	ldr	x8, [x8]
	ldrsw	x9, [sp, #28]
	ldr	w8, [x8, x9, lsl #2]
	ldur	x9, [x29, #-24]
	ldr	x9, [x9]
	ldr	x10, [sp, #32]
	ldrsw	x10, [x10]
	str	w8, [x9, x10, lsl #2]
	ldr	x8, [sp, #32]
	ldr	x8, [x8]
	ldrsw	x9, [sp, #12]
	add	w9, w9, #1
	ldr	w8, [x8, w9, sxtw #2]
	ldur	x9, [x29, #-24]
	ldr	x9, [x9]
	ldrsw	x10, [sp, #12]
	str	w8, [x9, x10, lsl #2]
	b	LBB0_127
LBB0_121:                                ;   in Loop: Header=BB0_5 Depth=1
	b	LBB0_128
LBB0_122:                                ;   in Loop: Header=BB0_5 Depth=1
	ldr	w8, [sp, #12]                   ; 4-byte Folded Reload
	tbz	w8, #0, LBB0_15
	b	LBB0_128
LBB0_123:                                ;   in Loop: Header=BB0_5 Depth=1
	ldur	x8, [x29, #-8]
	ldrsw	x9, [sp, #28]
	ldr	w8, [x8, x9, lsl #2]
	ldur	x9, [x29, #-24]
	ldr	x9, [x9]
	ldr	x10, [sp, #32]
	ldrsw	x10, [x10]
	str	w8, [x9, x10, lsl #2]
	ldr	x8, [sp, #32]
	ldr	x8, [x8]
	ldrsw	x9, [sp, #12]
	add	w9, w9, #1
	ldr	w8, [x8, w9, sxtw #2]
	ldur	x9, [x29, #-24]
	ldr	x9, [x9]
	ldrsw	x10, [sp, #12]
	str	w8, [x9, x10, lsl #2]
	b	LBB0_125
LBB0_124:                                ;   in Loop: Header=BB0_5 Depth=1
	ldur	x8, [x29, #-24]
	ldr	x8, [x8]
	ldrsw	x9, [sp, #28]
	ldr	w8, [x8, x9, lsl #2]
	ldur	x9, [x29, #-24]
	ldr	x9, [x9]
	ldr	x10, [sp, #32]
	ldrsw	x10, [x10]
	str	w8, [x9, x10, lsl #2]
	ldr	x8, [sp, #32]
	ldr	x8, [x8]
	ldrsw	x9, [sp, #12]
	add	w9, w9, #1
	ldr	w8, [x8, w9, sxtw #2]
	ldur	x9, [x29, #-24]
	ldr	x9, [x9]
	ldrsw	x10, [sp, #12]
	str	w8, [x9, x10, lsl #2]
	b	LBB0_127
LBB0_125:                                ;   in Loop: Header=BB0_5 Depth=1
	b	LBB0_126
LBB0_126:                                ;   in Loop: Header=BB0_5 Depth=1
	ldr	w8, [sp, #12]                   ; 4-byte Folded Reload
	tbz	w8, #0, LBB0_15
	b	LBB0_126
LBB0_127:                                ;   in Loop: Header=BB0_5 Depth=1
	ldur	x8, [x29, #-8]
	ldrsw	x9, [sp, #28]
	ldr	w8, [x8, x9, lsl #2]
	ldur	x9, [x29, #-24]
	ldr	x9, [x9]
	ldr	x10, [sp, #32]
	ldrsw	x10, [x10]
	str	w8, [x9, x10, lsl #2]
	ldr	x8, [sp, #32]
	ldr	x8, [x8]
	ldrsw	x9, [sp, #12]
	add	w9, w9, #1
	ldr	w8, [x8, w9, sxtw #2]
	ldur	x9, [x29, #-24]
	ldr	x9, [x9]
	ldrsw	x10, [sp, #12]
	str	w8, [x9, x10, lsl #2]
	b	LBB0_129
LBB0_128:                                ;   in Loop: Header=BB0_5 Depth=1
	ldur	x8, [x29, #-24]
	ldr	x8, [x8]
	ldrsw	x9, [sp, #28]
	ldr	w8, [x8, x9, lsl #2]
	ldur	x9, [x29, #-24]
	ldr	x9, [x9]
	ldr	x10, [sp, #32]
	ldrsw	x10, [x10]
	str	w8, [x9, x10, lsl #2]
	ldr	x8, [sp, #32]
	ldr	x8, [x8]
	ldrsw	x9, [sp, #12]
	add	w9, w9, #1
	ldr	w8, [x8, w9, sxtw #2]
	ldur	x9, [x29, #-24]
	ldr	x9, [x9]
	ldrsw	x10, [sp, #12]
	str	w8, [x9, x10, lsl #2]
	b	LBB0_130
LBB0_129:                                ;   in Loop: Header=BB0_5 Depth=1
	b	LBB0_131
LBB0_130:                                ;   in Loop: Header=BB0_5 Depth=1
	ldr	w8, [sp, #12]                   ; 4-byte Folded Reload
	tbz	w8, #0, LBB0_15
	b	LBB0_131
LBB0_131:                                ;   in Loop: Header=BB0_5 Depth=1
	ldur	x8, [x29, #-8]
	ldrsw	x9, [sp, #28]
	ldr	w8, [x8, x9, lsl #2]
	ldur	x9, [x29, #-24]
	ldr	x9, [x9]
	ldr	x10, [sp, #32]
	ldrsw	x10, [x10]
	str	w8, [x9, x10, lsl #2]
	ldr	x8, [sp, #32]
	ldr	x8, [x8]
	ldrsw	x9, [sp, #12]
	add	w9, w9, #1
	ldr	w8, [x8, w9, sxtw #2]
	ldur	x9, [x29, #-24]
	ldr	x9, [x9]
	ldrsw	x10, [sp, #12]
	str	w8, [x9, x10, lsl #2]
	b	LBB0_133
LBB0_132:                                ;   in Loop: Header=BB0_5 Depth=1
	ldur	x8, [x29, #-24]
	ldr	x8, [x8]
	ldrsw	x9, [sp, #28]
	ldr	w8, [x8, x9, lsl #2]
	ldur	x9, [x29, #-24]
	ldr	x9, [x9]
	ldr	x10, [sp, #32]
	ldrsw	x10, [x10]
	str	w8, [x9, x10, lsl #2]
	ldr	x8, [sp, #32]
	ldr	x8, [x8]
	ldrsw	x9, [sp, #12]
	add	w9, w9, #1
	ldr	w8, [x8, w9, sxtw #2]
	ldur	x9, [x29, #-24]
	ldr	x9, [x9]
	ldrsw	x10, [sp, #12]
	str	w8, [x9, x10, lsl #2]
	b	LBB0_135
LBB0_133:                                ;   in Loop: Header=BB0_5 Depth=1
	b	LBB0_134
LBB0_134:                                ;   in Loop: Header=BB0_5 Depth=1
	ldr	w8, [sp, #12]                   ; 4-byte Folded Reload
	tbz	w8, #0, LBB0_15
	b	LBB0_134
LBB0_135:                                ;   in Loop: Header=BB0_5 Depth=1
	ldur	x8, [x29, #-8]
	ldrsw	x9, [sp, #28]
	ldr	w8, [x8, x9, lsl #2]
	ldur	x9, [x29, #-24]
	ldr	x9, [x9]
	ldr	x10, [sp, #32]
	ldrsw	x10, [x10]
	str	w8, [x9, x10, lsl #2]
	ldr	x8, [sp, #32]
	ldr	x8, [x8]
	ldrsw	x9, [sp, #12]
	add	w9, w9, #1
	ldr	w8, [x8, w9, sxtw #2]
	ldur	x9, [x29, #-24]
	ldr	x9, [x9]
	ldrsw	x10, [sp, #12]
	str	w8, [x9, x10, lsl #2]
	b	LBB0_137
LBB0_136:                                ;   in Loop: Header=BB0_5 Depth=1
	ldur	x8, [x29, #-24]
	ldr	x8, [x8]
	ldrsw	x9, [sp, #28]
	ldr	w8, [x8, x9, lsl #2]
	ldur	x9, [x29, #-24]
	ldr	x9, [x9]
	ldr	x10, [sp, #32]
	ldrsw	x10, [x10]
	str	w8, [x9, x10, lsl #2]
	ldr	x8, [sp, #32]
	ldr	x8, [x8]
	ldrsw	x9, [sp, #12]
	add	w9, w9, #1
	ldr	w8, [x8, w9, sxtw #2]
	ldur	x9, [x29, #-24]
	ldr	x9, [x9]
	ldrsw	x10, [sp, #12]
	str	w8, [x9, x10, lsl #2]
	b	LBB0_140
LBB0_137:                                ;   in Loop: Header=BB0_5 Depth=1
	b	LBB0_141
LBB0_138:                                ;   in Loop: Header=BB0_5 Depth=1
	ldr	w8, [sp, #12]                   ; 4-byte Folded Reload
	tbz	w8, #0, LBB0_15
	b	LBB0_141
LBB0_139:                                ;   in Loop: Header=BB0_5 Depth=1
	ldur	x8, [x29, #-8]
	ldrsw	x9, [sp, #28]
	ldr	w8, [x8, x9, lsl #2]
	ldur	x9, [x29, #-24]
	ldr	x9, [x9]
	ldr	x10, [sp, #32]
	ldrsw	x10, [x10]
	str	w8, [x9, x10, lsl #2]
	ldr	x8, [sp, #32]
	ldr	x8, [x8]
	ldrsw	x9, [sp, #12]
	add	w9, w9, #1
	ldr	w8, [x8, w9, sxtw #2]
	ldur	x9, [x29, #-24]
	ldr	x9, [x9]
	ldrsw	x10, [sp, #12]
	str	w8, [x9, x10, lsl #2]
	b	LBB0_143
LBB0_140:                                ;   in Loop: Header=BB0_5 Depth=1
	b	LBB0_141
LBB0_141:                                ;   in Loop: Header=BB0_5 Depth=1
	ldr	w8, [sp, #12]                   ; 4-byte Folded Reload
	tbz	w8, #0, LBB0_15
	b	LBB0_141
LBB0_142:                                ;   in Loop: Header=BB0_5 Depth=1
	ldur	x8, [x29, #-8]
	ldrsw	x9, [sp, #28]
	ldr	w8, [x8, x9, lsl #2]
	ldur	x9, [x29, #-24]
	ldr	x9, [x9]
	ldr	x10, [sp, #32]
	ldrsw	x10, [x10]
	str	w8, [x9, x10, lsl #2]
	ldr	x8, [sp, #32]
	ldr	x8, [x8]
	ldrsw	x9, [sp, #12]
	add	w9, w9, #1
	ldr	w8, [x8, w9, sxtw #2]
	ldur	x9, [x29, #-24]
	ldr	x9, [x9]
	ldrsw	x10, [sp, #12]
	str	w8, [x9, x10, lsl #2]
	b	LBB0_145
LBB0_143:                                ;   in Loop: Header=BB0_5 Depth=1
	b	LBB0_144
LBB0_144:                                ;   in Loop: Header=BB0_5 Depth=1
	ldr	w8, [sp, #12]                   ; 4-byte Folded Reload
	tbz	w8, #0, LBB0_15
	b	LBB0_144
LBB0_145:                                ;   in Loop: Header=BB0_5 Depth=1
	ldur	x8, [x29, #-8]
	ldrsw	x9, [sp, #28]
	ldr	w8, [x8, x9, lsl #2]
	ldur	x9, [x29, #-24]
	ldr	x9, [x9]
	ldr	x10, [sp, #32]
	ldrsw	x10, [x10]
	str	w8, [x9, x10, lsl #2]
	ldr	x8, [sp, #32]
	ldr	x8, [x8]
	ldrsw	x9, [sp, #12]
	add	w9, w9, #1
	ldr	w8, [x8, w9, sxtw #2]
	ldur	x9, [x29, #-24]
	ldr	x9, [x9]
	ldrsw	x10, [sp, #12]
	str	w8, [x9, x10, lsl #2]
	b	LBB0_147
LBB0_146:                                ;   in Loop: Header=BB0_5 Depth=1
	ldur	x8, [x29, #-24]
	ldr	x8, [x8]
	ldrsw	x9, [sp, #28]
	ldr	w8, [x8, x9, lsl #2]
	ldur	x9, [x29, #-24]
	ldr	x9, [x9]
	ldr	x10, [sp, #32]
	ldrsw	x10, [x10]
	str	w8, [x9, x10, lsl #2]
	ldr	x8, [sp, #32]
	ldr	x8, [x8]
	ldrsw	x9, [sp, #12]
	add	w9, w9, #1
	ldr	w8, [x8, w9, sxtw #2]
	ldur	x9, [x29, #-24]
	ldr	x9, [x9]
	ldrsw	x10, [sp, #12]
	str	w8, [x9, x10, lsl #2]
	b	LBB0_150
LBB0_147:                                ;   in Loop: Header=BB0_5 Depth=1
	b	LBB0_152
LBB0_148:                                ;   in Loop: Header=BB0_5 Depth=1
	ldr	w8, [sp, #12]                   ; 4-byte Folded Reload
	tbz	w8, #0, LBB0_15
	b	LBB0_148
LBB0_149:                                ;   in Loop: Header=BB0_5 Depth=1
	ldur	x8, [x29, #-8]
	ldrsw	x9, [sp, #28]
	ldr	w8, [x8, x9, lsl #2]
	ldur	x9, [x29, #-24]
	ldr	x9, [x9]
	ldr	x10, [sp, #32]
	ldrsw	x10, [x10]
	str	w8, [x9, x10, lsl #2]
	ldr	x8, [sp, #32]
	ldr	x8, [x8]
	ldrsw	x9, [sp, #12]
	add	w9, w9, #1
	ldr	w8, [x8, w9, sxtw #2]
	ldur	x9, [x29, #-24]
	ldr	x9, [x9]
	ldrsw	x10, [sp, #12]
	str	w8, [x9, x10, lsl #2]
	b	LBB0_151
LBB0_150:                                ;   in Loop: Header=BB0_5 Depth=1
	b	LBB0_152
LBB0_151:                                ;   in Loop: Header=BB0_5 Depth=1
	ldr	w8, [sp, #12]                   ; 4-byte Folded Reload
	tbz	w8, #0, LBB0_15
	b	LBB0_152
LBB0_152:                                ;   in Loop: Header=BB0_5 Depth=1
	ldur	x8, [x29, #-8]
	ldrsw	x9, [sp, #28]
	ldr	w8, [x8, x9, lsl #2]
	ldur	x9, [x29, #-24]
	ldr	x9, [x9]
	ldr	x10, [sp, #32]
	ldrsw	x10, [x10]
	str	w8, [x9, x10, lsl #2]
	ldr	x8, [sp, #32]
	ldr	x8, [x8]
	ldrsw	x9, [sp, #12]
	add	w9, w9, #1
	ldr	w8, [x8, w9, sxtw #2]
	ldur	x9, [x29, #-24]
	ldr	x9, [x9]
	ldrsw	x10, [sp, #12]
	str	w8, [x9, x10, lsl #2]
	b	LBB0_153
LBB0_153:                                ;   in Loop: Header=BB0_5 Depth=1
	b	LBB0_154
LBB0_154:                                ;   in Loop: Header=BB0_5 Depth=1
	ldr	w8, [sp, #12]                   ; 4-byte Folded Reload
	tbz	w8, #0, LBB0_15
	b	LBB0_154
LBB0_155:                                ;   in Loop: Header=BB0_5 Depth=1
	ldur	x8, [x29, #-8]
	ldrsw	x9, [sp, #28]
	ldr	w8, [x8, x9, lsl #2]
	ldur	x9, [x29, #-24]
	ldr	x9, [x9]
	ldr	x10, [sp, #32]
	ldrsw	x10, [x10]
	str	w8, [x9, x10, lsl #2]
	ldr	x8, [sp, #32]
	ldr	x8, [x8]
	ldrsw	x9, [sp, #12]
	add	w9, w9, #1
	ldr	w8, [x8, w9, sxtw #2]
	ldur	x9, [x29, #-24]
	ldr	x9, [x9]
	ldrsw	x10, [sp, #12]
	str	w8, [x9, x10, lsl #2]
	b	LBB0_155
LBB0_156:                                ;   in Loop: Header=BB0_5 Depth=1
	ldur	x8, [x29, #-24]
	ldr	x8, [x8]
	ldrsw	x9, [sp, #28]
	ldr	w8, [x8, x9, lsl #2]
	ldur	x9, [x29, #-24]
	ldr	x9, [x9]
	ldr	x10, [sp, #32]
	ldrsw	x10, [x10]
	str	w8, [x9, x10, lsl #2]
	ldr	x8, [sp, #32]
	ldr	x8, [x8]
	ldrsw	x9, [sp, #12]
	add	w9, w9, #1
	ldr	w8, [x8, w9, sxtw #2]
	ldur	x9, [x29, #-24]
	ldr	x9, [x9]
	ldrsw	x10, [sp, #12]
	str	w8, [x9, x10, lsl #2]
	b	LBB0_157
LBB0_157:                                ;   in Loop: Header=BB0_5 Depth=1
	b	LBB0_160
LBB0_160:                                ;   in Loop: Header=BB0_5 Depth=1
	ldr	w8, [sp, #12]                   ; 4-byte Folded Reload
	tbz	w8, #0, LBB0_15
	b	LBB0_160
LBB0_161:                                ;   in Loop: Header=BB0_5 Depth=1
	ldur	x8, [x29, #-8]
	ldrsw	x9, [sp, #28]
	ldr	w8, [x8, x9, lsl #2]
	ldur	x9, [x29, #-24]
	ldr	x9, [x9]
	ldr	x10, [sp, #32]
	ldrsw	x10, [x10]
	str	w8, [x9, x10, lsl #2]
	ldr	x8, [sp, #32]
	ldr	x8, [x8]
	ldrsw	x9, [sp, #12]
	add	w9, w9, #1
	ldr	w8, [x8, w9, sxtw #2]
	ldur	x9, [x29, #-24]
	ldr	x9, [x9]
	ldrsw	x10, [sp, #12]
	str	w8, [x9, x10, lsl #2]
	b	LBB0_163
LBB0_162:                                ;   in Loop: Header=BB0_5 Depth=1
	b	LBB0_164
LBB0_163:                                ;   in Loop: Header=BB0_5 Depth=1
	ldr	w8, [sp, #12]                   ; 4-byte Folded Reload
	tbz	w8, #0, LBB0_15
	b	LBB0_163
LBB0_164:                                ;   in Loop: Header=BB0_5 Depth=1
	ldur	x8, [x29, #-8]
	ldrsw	x9, [sp, #28]
	ldr	w8, [x8, x9, lsl #2]
	ldur	x9, [x29, #-24]
	ldr	x9, [x9]
	ldr	x10, [sp, #32]
	ldrsw	x10, [x10]
	str	w8, [x9, x10, lsl #2]
	ldr	x8, [sp, #32]
	ldr	x8, [x8]
	ldrsw	x9, [sp, #12]
	add	w9, w9, #1
	ldr	w8, [x8, w9, sxtw #2]
	ldur	x9, [x29, #-24]
	ldr	x9, [x9]
	ldrsw	x10, [sp, #12]
	str	w8, [x9, x10, lsl #2]
	b	LBB0_165
LBB0_165:                                ;   in Loop: Header=BB0_5 Depth=1
	b	LBB0_166
LBB0_166:                                ;   in Loop: Header=BB0_5 Depth=1
	ldr	w8, [sp, #12]                   ; 4-byte Folded Reload
	tbz	w8, #0, LBB0_15
	b	LBB0_166
LBB0_167:                                ;   in Loop: Header=BB0_5 Depth=1
	ldur	x8, [x29, #-8]
	ldrsw	x9, [sp, #28]
	ldr	w8, [x8, x9, lsl #2]
	ldur	x9, [x29, #-24]
	ldr	x9, [x9]
	ldr	x10, [sp, #32]
	ldrsw	x10, [x10]
	str	w8, [x9, x10, lsl #2]
	ldr	x8, [sp, #32]
	ldr	x8, [x8]
	ldrsw	x9, [sp, #12]
	add	w9, w9, #1
	ldr	w8, [x8, w9, sxtw #2]
	ldur	x9, [x29, #-24]
	ldr	x9, [x9]
	ldrsw	x10, [sp, #12]
	str	w8, [x9, x10, lsl #2]
	b	LBB0_169
LBB0_168:                                ;   in Loop: Header=BB0_5 Depth=1
	ldur	x8, [x29, #-24]
	ldr	x8, [x8]
	ldrsw	x9, [sp, #28]
	ldr	w8, [x8, x9, lsl #2]
	ldur	x9, [x29, #-24]
	ldr	x9, [x9]
	ldr	x10, [sp, #32]
	ldrsw	x10, [x10]
	str	w8, [x9, x10, lsl #2]
	ldr	x8, [sp, #32]
	ldr	x8, [x8]
	ldrsw	x9, [sp, #12]
	add	w9, w9, #1
	ldr	w8, [x8, w9, sxtw #2]
	ldur	x9, [x29, #-24]
	ldr	x9, [x9]
	ldrsw	x10, [sp, #12]
	str	w8, [x9, x10, lsl #2]
	b	LBB0_170
LBB0_169:                                ;   in Loop: Header=BB0_5 Depth=1
	b	LBB0_171
LBB0_170:                                ;   in Loop: Header=BB0_5 Depth=1
	ldr	w8, [sp, #12]                   ; 4-byte Folded Reload
	tbz	w8, #0, LBB0_15
	b	LBB0_171
LBB0_171:                                ;   in Loop: Header=BB0_5 Depth=1
	ldur	x8, [x29, #-8]
	ldrsw	x9, [sp, #28]
	ldr	w8, [x8, x9, lsl #2]
	ldur	x9, [x29, #-24]
	ldr	x9, [x9]
	ldr	x10, [sp, #32]
	ldrsw	x10, [x10]
	str	w8, [x9, x10, lsl #2]
	ldr	x8, [sp, #32]
	ldr	x8, [x8]
	ldrsw	x9, [sp, #12]
	add	w9, w9, #1
	ldr	w8, [x8, w9, sxtw #2]
	ldur	x9, [x29, #-24]
	ldr	x9, [x9]
	ldrsw	x10, [sp, #12]
	str	w8, [x9, x10, lsl #2]
	b	LBB0_173
LBB0_172:                                ;   in Loop: Header=BB0_5 Depth=1
	b	LBB0_174
LBB0_173:                                ;   in Loop: Header=BB0_5 Depth=1
	ldr	w8, [sp, #12]                   ; 4-byte Folded Reload
	tbz	w8, #0, LBB0_15
	b	LBB0_174
LBB0_174:                                ;   in Loop: Header=BB0_5 Depth=1
	ldur	x8, [x29, #-8]
	ldrsw	x9, [sp, #28]
	ldr	w8, [x8, x9, lsl #2]
	ldur	x9, [x29, #-24]
	ldr	x9, [x9]
	ldr	x10, [sp, #32]
	ldrsw	x10, [x10]
	str	w8, [x9, x10, lsl #2]
	ldr	x8, [sp, #32]
	ldr	x8, [x8]
	ldrsw	x9, [sp, #12]
	add	w9, w9, #1
	ldr	w8, [x8, w9, sxtw #2]
	ldur	x9, [x29, #-24]
	ldr	x9, [x9]
	ldrsw	x10, [sp, #12]
	str	w8, [x9, x10, lsl #2]
	b	LBB0_176
LBB0_175:                                ;   in Loop: Header=BB0_5 Depth=1
	b	LBB0_176
LBB0_176:                                ;   in Loop: Header=BB0_5 Depth=1
	ldr	w8, [sp, #12]                   ; 4-byte Folded Reload
	tbz	w8, #0, LBB0_15
	b	LBB0_176
LBB0_177:                                ;   in Loop: Header=BB0_5 Depth=1
	ldur	x8, [x29, #-8]
	ldrsw	x9, [sp, #28]
	ldr	w8, [x8, x9, lsl #2]
	ldur	x9, [x29, #-24]
	ldr	x9, [x9]
	ldr	x10, [sp, #32]
	ldrsw	x10, [x10]
	str	w8, [x9, x10, lsl #2]
	ldr	x8, [sp, #32]
	ldr	x8, [x8]
	ldrsw	x9, [sp, #12]
	add	w9, w9, #1
	ldr	w8, [x8, w9, sxtw #2]
	ldur	x9, [x29, #-24]
	ldr	x9, [x9]
	ldrsw	x10, [sp, #12]
	str	w8, [x9, x10, lsl #2]
	b	LBB0_180
LBB0_180:                                ;   in Loop: Header=BB0_5 Depth=1
	b	LBB0_181
LBB0_181:                                ;   in Loop: Header=BB0_5 Depth=1
	ldr	w8, [sp, #12]                   ; 4-byte Folded Reload
	tbz	w8, #0, LBB0_15
	b	LBB0_181
LBB0_182:                                ;   in Loop: Header=BB0_5 Depth=1
	ldur	x8, [x29, #-8]
	ldrsw	x9, [sp, #28]
	ldr	w8, [x8, x9, lsl #2]
	ldur	x9, [x29, #-24]
	ldr	x9, [x9]
	ldr	x10, [sp, #32]
	ldrsw	x10, [x10]
	str	w8, [x9, x10, lsl #2]
	ldr	x8, [sp, #32]
	ldr	x8, [x8]
	ldrsw	x9, [sp, #12]
	add	w9, w9, #1
	ldr	w8, [x8, w9, sxtw #2]
	ldur	x9, [x29, #-24]
	ldr	x9, [x9]
	ldrsw	x10, [sp, #12]
	str	w8, [x9, x10, lsl #2]
	b	LBB0_184
LBB0_183:                                ;   in Loop: Header=BB0_5 Depth=1
	b	LBB0_185
LBB0_184:                                ;   in Loop: Header=BB0_5 Depth=1
	ldr	w8, [sp, #12]                   ; 4-byte Folded Reload
	tbz	w8, #0, LBB0_15
	b	LBB0_185
LBB0_185:                                ;   in Loop: Header=BB0_5 Depth=1
	ldur	x8, [x29, #-8]
	ldrsw	x9, [sp, #28]
	ldr	w8, [x8, x9, lsl #2]
	ldur	x9, [x29, #-24]
	ldr	x9, [x9]
	ldr	x10, [sp, #32]
	ldrsw	x10, [x10]
	str	w8, [x9, x10, lsl #2]
	ldr	x8, [sp, #32]
	ldr	x8, [x8]
	ldrsw	x9, [sp, #12]
	add	w9, w9, #1
	ldr	w8, [x8, w9, sxtw #2]
	ldur	x9, [x29, #-24]
	ldr	x9, [x9]
	ldrsw	x10, [sp, #12]
	str	w8, [x9, x10, lsl #2]
	b	LBB0_187
LBB0_186:                                ;   in Loop: Header=BB0_5 Depth=1
	b	LBB0_187
LBB0_187:                                ;   in Loop: Header=BB0_5 Depth=1
	ldr	w8, [sp, #12]                   ; 4-byte Folded Reload
	tbz	w8, #0, LBB0_15
	b	LBB0_187
LBB0_188:                                ;   in Loop: Header=BB0_5 Depth=1
	ldur	x8, [x29, #-8]
	ldrsw	x9, [sp, #28]
	ldr	w8, [x8, x9, lsl #2]
	ldur	x9, [x29, #-24]
	ldr	x9, [x9]
	ldr	x10, [sp, #32]
	ldrsw	x10, [x10]
	str	w8, [x9, x10, lsl #2]
	ldr	x8, [sp, #32]
	ldr	x8, [x8]
	ldrsw	x9, [sp, #12]
	add	w9, w9, #1
	ldr	w8, [x8, w9, sxtw #2]
	ldur	x9, [x29, #-24]
	ldr	x9, [x9]
	ldrsw	x10, [sp, #12]
	str	w8, [x9, x10, lsl #2]
	b	LBB0_190
LBB0_190:                                ;   in Loop: Header=BB0_5 Depth=1
	b	LBB0_191
LBB0_191:                                ;   in Loop: Header=BB0_5 Depth=1
	ldr	w8, [sp, #12]                   ; 4-byte Folded Reload
	tbz	w8, #0, LBB0_15
	b	LBB0_191
LBB0_192:                                ;   in Loop: Header=BB0_5 Depth=1
	ldur	x8, [x29, #-8]
	ldrsw	x9, [sp, #28]
	ldr	w8, [x8, x9, lsl #2]
	ldur	x9, [x29, #-24]
	ldr	x9, [x9]
	ldr	x10, [sp, #32]
	ldrsw	x10, [x10]
	str	w8, [x9, x10, lsl #2]
	ldr	x8, [sp, #32]
	ldr	x8, [x8]
	ldrsw	x9, [sp, #12]
	add	w9, w9, #1
	ldr	w8, [x8, w9, sxtw #2]
	ldur	x9, [x29, #-24]
	ldr	x9, [x9]
	ldrsw	x10, [sp, #12]
	str	w8, [x9, x10, lsl #2]
	b	LBB0_194
LBB0_193:                                ;   in Loop: Header=BB0_5 Depth=1
	b	LBB0_194
LBB0_194:                                ;   in Loop: Header=BB0_5 Depth=1
	ldr	w8, [sp, #12]                   ; 4-byte Folded Reload
	tbz	w8, #0, LBB0_15
	b	LBB0_194
LBB0_195:                                ;   in Loop: Header=BB0_5 Depth=1
	ldur	x8, [x29, #-8]
	ldrsw	x9, [sp, #28]
	ldr	w8, [x8, x9, lsl #2]
	ldur	x9, [x29, #-24]
	ldr	x9, [x9]
	ldr	x10, [sp, #32]
	ldrsw	x10, [x10]
	str	w8, [x9, x10, lsl #2]
	ldr	x8, [sp, #32]
	ldr	x8, [x8]
	ldrsw	x9, [sp, #12]
	add	w9, w9, #1
	ldr	w8, [x8, w9, sxtw #2]
	ldur	x9, [x29, #-24]
	ldr	x9, [x9]
	ldrsw	x10, [sp, #12]
	str	w8, [x9, x10, lsl #2]
	b	LBB0_197
LBB0_196:                                ;   in Loop: Header=BB0_5 Depth=1
	b	LBB0_197
LBB0_197:                                ;   in Loop: Header=BB0_5 Depth=1
	ldr	w8, [sp, #12]                   ; 4-byte Folded Reload
	tbz	w8, #0, LBB0_15
	b	LBB0_197
LBB0_198:                                ;   in Loop: Header=BB0_5 Depth=1
	ldur	x8, [x29, #-8]
	ldrsw	x9, [sp, #28]
	ldr	w8, [x8, x9, lsl #2]
	ldur	x9, [x29, #-24]
	ldr	x9, [x9]
	ldr	x10, [sp, #32]
	ldrsw	x10, [x10]
	str	w8, [x9, x10, lsl #2]
	ldr	x8, [sp, #32]
	ldr	x8, [x8]
	ldrsw	x9, [sp, #12]
	add	w9, w9, #1
	ldr	w8, [x8, w9, sxtw #2]
	ldur	x9, [x29, #-24]
	ldr	x9, [x9]
	ldrsw	x10, [sp, #12]
	str	w8, [x9, x10, lsl #2]
	b	LBB0_200
LBB0_200:                                ;   in Loop: Header=BB0_5 Depth=1
	b	LBB0_201
LBB0_201:                                ;   in Loop: Header=BB0_5 Depth=1
	ldr	w8, [sp, #12]                   ; 4-byte Folded Reload
	tbz	w8, #0, LBB0_15
	b	LBB0_201
LBB0_202:                                ;   in Loop: Header=BB0_5 Depth=1
	ldur	x8, [x29, #-8]
	ldrsw	x9, [sp, #28]
	ldr	w8, [x8, x9, lsl #2]
	ldur	x9, [x29, #-24]
	ldr	x9, [x9]
	ldr	x10, [sp, #32]
	ldrsw	x10, [x10]
	str	w8, [x9, x10, lsl #2]
	ldr	x8, [sp, #32]
	ldr	x8, [x8]
	ldrsw	x9, [sp, #12]
	add	w9, w9, #1
	ldr	w8, [x8, w9, sxtw #2]
	ldur	x9, [x29, #-24]
	ldr	x9, [x9]
	ldrsw	x10, [sp, #12]
	str	w8, [x9, x10, lsl #2]
	b	LBB0_204
LBB0_203:                                ;   in Loop: Header=BB0_5 Depth=1
	b	LBB0_204
LBB0_204:                                ;   in Loop: Header=BB0_5 Depth=1
	ldr	w8, [sp, #12]                   ; 4-byte Folded Reload
	tbz	w8, #0, LBB0_15
	b	LBB0_204
LBB0_205:                                ;   in Loop: Header=BB0_5 Depth=1
	ldur	x8, [x29, #-8]
	ldrsw	x9, [sp, #28]
	ldr	w8, [x8, x9, lsl #2]
	ldur	x9, [x29, #-24]
	ldr	x9, [x9]
	ldr	x10, [sp, #32]
	ldrsw	x10, [x10]
	str	w8, [x9, x10, lsl #2]
	ldr	x8, [sp, #32]
	ldr	x8, [x8]
	ldrsw	x9, [sp, #12]
	add	w9, w9, #1
	ldr	w8, [x8, w9, sxtw #2]
	ldur	x9, [x29, #-24]
	ldr	x9, [x9]
	ldrsw	x10, [sp, #12]
	str	w8, [x9, x10, lsl #2]
	b	LBB0_207
LBB0_206:                                ;   in Loop: Header=BB0_5 Depth=1
	b	LBB0_207
LBB0_207:                                ;   in Loop: Header=BB0_5 Depth=1
	ldr	w8, [sp, #12]                   ; 4-byte Folded Reload
	tbz	w8, #0, LBB0_15
	b	LBB0_207
LBB0_208:                                ;   in Loop: Header=BB0_5 Depth=1
	ldur	x8, [x29, #-8]
	ldrsw	x9, [sp, #28]
	ldr	w8, [x8, x9, lsl #2]
	ldur	x9, [x29, #-24]
	ldr	x9, [x9]
	ldr	x10, [sp, #32]
	ldrsw	x10, [x10]
	str	w8, [x9, x10, lsl #2]
	ldr	x8, [sp, #32]
	ldr	x8, [x8]
	ldrsw	x9, [sp, #12]
	add	w9, w9, #1
	ldr	w8, [x8, w9, sxtw #2]
	ldur	x9, [x29, #-24]
	ldr	x9, [x9]
	ldrsw	x10, [sp, #12]
	str	w8, [x9, x10, lsl #2]
	b	LBB0_210
LBB0_209:                                ;   in Loop: Header=BB0_5 Depth=1
	b	LBB0_210
LBB0_210:                                ;   in Loop: Header=BB0_5 Depth=1
	ldr	w8, [sp, #12]                   ; 4-byte Folded Reload
	tbz	w8, #0, LBB0_15
	b	LBB0_210
LBB0_211:                                ;   in Loop: Header=BB0_5 Depth=1
	ldur	x8, [x29, #-8]
	ldrsw	x9, [sp, #28]
	ldr	w8, [x8, x9, lsl #2]
	ldur	x9, [x29, #-24]
	ldr	x9, [x9]
	ldr	x10, [sp, #32]
	ldrsw	x10, [x10]
	str	w8, [x9, x10, lsl #2]
	ldr	x8, [sp, #32]
	ldr	x8, [x8]
	ldrsw	x9, [sp, #12]
	add	w9, w9, #1
	ldr	w8, [x8, w9, sxtw #2]
	ldur	x9, [x29, #-24]
	ldr	x9, [x9]
	ldrsw	x10, [sp, #12]
	str	w8, [x9, x10, lsl #2]
	b	LBB0_213
LBB0_212:                                ;   in Loop: Header=BB0_5 Depth=1
	b	LBB0_213
LBB0_213:                                ;   in Loop: Header=BB0_5 Depth=1
	ldr	w8, [sp, #12]                   ; 4-byte Folded Reload
	tbz	w8, #0, LBB0_15
	b	LBB0_213
LBB0_214:                                ;   in Loop: Header=BB0_5 Depth=1
	ldur	x8, [x29, #-8]
	ldrsw	x9, [sp, #28]
	ldr	w8, [x8, x9, lsl #2]
	ldur	x9, [x29, #-24]
	ldr	x9, [x9]
	ldr	x10, [sp, #32]
	ldrsw	x10, [x10]
	str	w8, [x9, x10, lsl #2]
	ldr	x8, [sp, #32]
	ldr	x8, [x8]
	ldrsw	x9, [sp, #12]
	add	w9, w9, #1
	ldr	w8, [x8, w9, sxtw #2]
	ldur	x9, [x29, #-24]
	ldr	x9, [x9]
	ldrsw	x10, [sp, #12]
	str	w8, [x9, x10, lsl #2]
	b	LBB0_215
LBB0_215:                                ;   in Loop: Header=BB0_5 Depth=1
	b	LBB0_216
LBB0_216:                                ;   in Loop: Header=BB0_5 Depth=1
	ldr	w8, [sp, #12]                   ; 4-byte Folded Reload
	tbz	w8, #0, LBB0_15
	b	LBB0_216
LBB0_217:                                ;   in Loop: Header=BB0_5 Depth=1
	ldur	x8, [x29, #-8]
	ldrsw	x9, [sp, #28]
	ldr	w8, [x8, x9, lsl #2]
	ldur	x9, [x29, #-24]
	ldr	x9, [x9]
	ldr	x10, [sp, #32]
	ldrsw	x10, [x10]
	str	w8, [x9, x10, lsl #2]
	ldr	x8, [sp, #32]
	ldr	x8, [x8]
	ldrsw	x9, [sp, #12]
	add	w9, w9, #1
	ldr	w8, [x8, w9, sxtw #2]
	ldur	x9, [x29, #-24]
	ldr	x9, [x9]
	ldrsw	x10, [sp, #12]
	str	w8, [x9, x10, lsl #2]
	b	LBB0_219
LBB0_218:                                ;   in Loop: Header=BB0_5 Depth=1
	b	LBB0_219
LBB0_219:                                ;   in Loop: Header=BB0_5 Depth=1
	ldr	w8, [sp, #12]                   ; 4-byte Folded Reload
	tbz	w8, #0, LBB0_15
	b	LBB0_219
LBB0_220:                                ;   in Loop: Header=BB0_5 Depth=1
	ldur	x8, [x29, #-8]
	ldrsw	x9, [sp, #28]
	ldr	w8, [x8, x9, lsl #2]
	ldur	x9, [x29, #-24]
	ldr	x9, [x9]
	ldr	x10, [sp, #32]
	ldrsw	x10, [x10]
	str	w8, [x9, x10, lsl #2]
	ldr	x8, [sp, #32]
	ldr	x8, [x8]
	ldrsw	x9, [sp, #12]
	add	w9, w9, #1
	ldr	w8, [x8, w9, sxtw #2]
	ldur	x9, [x29, #-24]
	ldr	x9, [x9]
	ldrsw	x10, [sp, #12]
	str	w8, [x9, x10, lsl #2]
	b	LBB0_222
LBB0_221:                                ;   in Loop: Header=BB0_5 Depth=1
	b	LBB0_222
LBB0_222:                                ;   in Loop: Header=BB0_5 Depth=1
	ldr	w8, [sp, #12]                   ; 4-byte Folded Reload
	tbz	w8, #0, LBB0_15
	b	LBB0_222
LBB0_223:                                ;   in Loop: Header=BB0_5 Depth=1
	ldur	x8, [x29, #-8]
	ldrsw	x9, [sp, #28]
	ldr	w8, [x8, x9, lsl #2]
	ldur	x9, [x29, #-24]
	ldr	x9, [x9]
	ldr	x10, [sp, #32]
	ldrsw	x10, [x10]
	str	w8, [x9, x10, lsl #2]
	ldr	x8, [sp, #32]
	ldr	x8, [x8]
	ldrsw	x9, [sp, #12]
	add	w9, w9, #1
	ldr	w8, [x8, w9, sxtw #2]
	ldur	x9, [x29, #-24]
	ldr	x9, [x9]
	ldrsw	x10, [sp, #12]
	str	w8, [x9, x10, lsl #2]
	b	LBB0_225
LBB0_224:                                ;   in Loop: Header=BB0_5 Depth=1
	b	LBB0_225
LBB0_225:                                ;   in Loop: Header=BB0_5 Depth=1
	ldr	w8, [sp, #12]                   ; 4-byte Folded Reload
	tbz	w8, #0, LBB0_15
	b	LBB0_225
LBB0_226:                                ;   in Loop: Header=BB0_5 Depth=1
	ldur	x8, [x29, #-8]
	ldrsw	x9, [sp, #28]
	ldr	w8, [x8, x9, lsl #2]
	ldur	x9, [x29, #-24]
	ldr	x9, [x9]
	ldr	x10, [sp, #32]
	ldrsw	x10, [x10]
	str	w8, [x9, x10, lsl #2]
	ldr	x8, [sp, #32]
	ldr	x8, [x8]
	ldrsw	x9, [sp, #12]
	add	w9, w9, #1
	ldr	w8, [x8, w9, sxtw #2]
	ldur	x9, [x29, #-24]
	ldr	x9, [x9]
	ldrsw	x10, [sp, #12]
	str	w8, [x9, x10, lsl #2]
	b	LBB0_228
LBB0_227:                                ;   in Loop: Header=BB0_5 Depth=1
	b	LBB0_228
LBB0_228:                                ;   in Loop: Header=BB0_5 Depth=1
	ldr	w8, [sp, #12]                   ; 4-byte Folded Reload
	tbz	w8, #0, LBB0_15
	b	LBB0_228
LBB0_229:                                ;   in Loop: Header=BB0_5 Depth=1
	ldur	x8, [x29, #-8]
	ldrsw	x9, [sp, #28]
	ldr	w8, [x8, x9, lsl #2]
	ldur	x9, [x29, #-24]
	ldr	x9, [x9]
	ldr	x10, [sp, #32]
	ldrsw	x10, [x10]
	str	w8, [x9, x10, lsl #2]
	ldr	x8, [sp, #32]
	ldr	x8, [x8]
	ldrsw	x9, [sp, #12]
	add	w9, w9, #1
	ldr	w8, [x8, w9, sxtw #2]
	ldur	x9, [x29, #-24]
	ldr	x9, [x9]
	ldrsw	x10, [sp, #12]
	str	w8, [x9, x10, lsl #2]
	b	LBB0_231
LBB0_230:                                ;   in Loop: Header=BB0_5 Depth=1
	b	LBB0_231
LBB0_231:                                ;   in Loop: Header=BB0_5 Depth=1
	ldr	w8, [sp, #12]                   ; 4-byte Folded Reload
	tbz	w8, #0, LBB0_15
	b	LBB0_231
LBB0_232:                                ;   in Loop: Header=BB0_5 Depth=1
	ldur	x8, [x29, #-8]
	ldrsw	x9, [sp, #28]
	ldr	w8, [x8, x9, lsl #2]
	ldur	x9, [x29, #-24]
	ldr	x9, [x9]
	ldr	x10, [sp, #32]
	ldrsw	x10, [x10]
	str	w8, [x9, x10, lsl #2]
	ldr	x8, [sp, #32]
	ldr	x8, [x8]
	ldrsw	x9, [sp, #12]
	add	w9, w9, #1
	ldr	w8, [x8, w9, sxtw #2]
	ldur	x9, [x29, #-24]
	ldr	x9, [x9]
	ldrsw	x10, [sp, #12]
	str	w8, [x9, x10, lsl #2]
	b	LBB0_235
LBB0_233:                                ;   in Loop: Header=BB0_5 Depth=1
	b	LBB0_235
LBB0_234:                                ;   in Loop: Header=BB0_5 Depth=1
	ldr	w8, [sp, #12]                   ; 4-byte Folded Reload
	tbz	w8, #0, LBB0_15
	b	LBB0_235
LBB0_235:                                ;   in Loop: Header=BB0_5 Depth=1
	ldur	x8, [x29, #-8]
	ldrsw	x9, [sp, #28]
	ldr	w8, [x8, x9, lsl #2]
	ldur	x9, [x29, #-24]
	ldr	x9, [x9]
	ldr	x10, [sp, #32]
	ldrsw	x10, [x10]
	str	w8, [x9, x10, lsl #2]
	ldr	x8, [sp, #32]
	ldr	x8, [x8]
	ldrsw	x9, [sp, #12]
	add	w9, w9, #1
	ldr	w8, [x8, w9, sxtw #2]
	ldur	x9, [x29, #-24]
	ldr	x9, [x9]
	ldrsw	x10, [sp, #12]
	str	w8, [x9, x10, lsl #2]
	b	LBB0_237
LBB0_236:                                ;   in Loop: Header=BB0_5 Depth=1
	b	LBB0_237
LBB0_237:                                ;   in Loop: Header=BB0_5 Depth=1
	ldr	w8, [sp, #12]                   ; 4-byte Folded Reload
	tbz	w8, #0, LBB0_15
	b	LBB0_237
LBB0_238:                                ;   in Loop: Header=BB0_5 Depth=1
	ldur	x8, [x29, #-8]
	ldrsw	x9, [sp, #28]
	ldr	w8, [x8, x9, lsl #2]
	ldur	x9, [x29, #-24]
	ldr	x9, [x9]
	ldr	x10, [sp, #32]
	ldrsw	x10, [x10]
	str	w8, [x9, x10, lsl #2]
	ldr	x8, [sp, #32]
	ldr	x8, [x8]
	ldrsw	x9, [sp, #12]
	add	w9, w9, #1
	ldr	w8, [x8, w9, sxtw #2]
	ldur	x9, [x29, #-24]
	ldr	x9, [x9]
	ldrsw	x10, [sp, #12]
	str	w8, [x9, x10, lsl #2]
	b	LBB0_240
LBB0_241:                                ;   in Loop: Header=BB0_5 Depth=1
	b	LBB0_240
LBB0_242:                                ;   in Loop: Header=BB0_5 Depth=1
	ldr	w8, [sp, #12]                   ; 4-byte Folded Reload
	tbz	w8, #0, LBB0_15
	b	LBB0_240
LBB0_243:                                ;   in Loop: Header=BB0_5 Depth=1
	ldur	x8, [x29, #-8]
	ldrsw	x9, [sp, #28]
	ldr	w8, [x8, x9, lsl #2]
	ldur	x9, [x29, #-24]
	ldr	x9, [x9]
	ldr	x10, [sp, #32]
	ldrsw	x10, [x10]
	str	w8, [x9, x10, lsl #2]
	ldr	x8, [sp, #32]
	ldr	x8, [x8]
	ldrsw	x9, [sp, #12]
	add	w9, w9, #1
	ldr	w8, [x8, w9, sxtw #2]
	ldur	x9, [x29, #-24]
	ldr	x9, [x9]
	ldrsw	x10, [sp, #12]
	str	w8, [x9, x10, lsl #2]
	b	LBB0_246
LBB0_244:                                ;   in Loop: Header=BB0_5 Depth=1
	b	LBB0_246
LBB0_245:                                ;   in Loop: Header=BB0_5 Depth=1
	ldr	w8, [sp, #12]                   ; 4-byte Folded Reload
	tbz	w8, #0, LBB0_15
	b	LBB0_246
LBB0_246:                                ;   in Loop: Header=BB0_5 Depth=1
	ldur	x
