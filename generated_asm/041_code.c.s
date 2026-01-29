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
	stur	w2, [x29, #-16]
	stur	x3, [x29, #-24]
	stur	wzr, [x29, #-28]
	b	LBB0_1
LBB0_1:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_3 Depth 2
	ldur	w8, [x29, #-28]
	ldur	w9, [x29, #-12]
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB0_10
	b	LBB0_2
LBB0_2:                                 ;   in Loop: Header=BB0_1 Depth=1
	str	wzr, [sp, #32]
	b	LBB0_3
LBB0_3:                                 ;   Parent Loop BB0_1 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldr	w8, [sp, #32]
	ldur	w9, [x29, #-12]
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB0_8
	b	LBB0_4
LBB0_4:                                 ;   in Loop: Header=BB0_3 Depth=2
	ldur	x8, [x29, #-8]
	ldursw	x9, [x29, #-28]
	ldr	x8, [x8, x9, lsl #3]
	ldrsw	x9, [sp, #32]
	ldr	w8, [x8, x9, lsl #2]
	subs	w8, w8, #1
	cset	w8, ne
	tbnz	w8, #0, LBB0_6
	b	LBB0_5
LBB0_5:                                 ;   in Loop: Header=BB0_3 Depth=2
	ldur	w8, [x29, #-28]
	str	w8, [sp, #28]
	ldr	w8, [sp, #32]
	str	w8, [sp, #24]
	b	LBB0_6
LBB0_6:                                 ;   in Loop: Header=BB0_3 Depth=2
	b	LBB0_7
LBB0_7:                                 ;   in Loop: Header=BB0_3 Depth=2
	ldr	w8, [sp, #32]
	add	w8, w8, #1
	str	w8, [sp, #32]
	b	LBB0_3
LBB0_8:                                 ;   in Loop: Header=BB0_1 Depth=1
	b	LBB0_9
LBB0_9:                                 ;   in Loop: Header=BB0_1 Depth=1
	ldur	w8, [x29, #-28]
	add	w9, w8, #1
                                        ; implicit-def: $x8
	mov	x8, x9
	sxtw	x8, w8
	ldr	x8, [x8, #4]
	ldrsw	x9, [sp, #24]
	ldr	w8, [x8, x9, lsl #2]
	ldr	w9, [sp, #28]
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB0_13
	b	LBB0_10
LBB0_10:
	ldur	x8, [x29, #-8]
	ldrsw	x9, [sp, #28]
	ldr	x8, [x8, x9, lsl #3]
	ldrsw	x9, [sp, #24]
	ldr	w8, [x8, x9, lsl #2]
	ldr	w9, [sp, #28]
	subs	w9, w9, #1
	ldr	w8, [x8, w9, sxtw #2]
	ldr	w9, [sp, #28]
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB0_13
	b	LBB0_11
LBB0_11:
	ldur	x8, [x29, #-8]
	ldrsw	x9, [sp, #28]
	ldr	x8, [x8, x9, lsl #3]
	ldrsw	x9, [sp, #24]
	ldr	w8, [x8, x9, lsl #2]
	ldr	w9, [sp, #24]
	subs	w9, w9, #1
	ldr	w8, [x8, w9, sxtw #2]
	ldr	w9, [sp, #28]
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB0_13
	b	LBB0_12
LBB0_12:
	ldur	x8, [x29, #-8]
	ldrsw	x9, [sp, #28]
	ldr	x8, [x8, x9, lsl #3]
	ldrsw	x9, [sp, #24]
	ldr	w8, [x8, x9, lsl #2]
	ldr	w9, [sp, #24]
	str	w8, [sp, #28]
	b	LBB0_13
LBB0_13:
	ldr	w8, [sp, #24]
	ldur	x9, [x29, #-24]
	str	w8, [x9]
	ldrsw	x9, [sp, #28]
	lsl	x9, x9, #2
	bl	_malloc
	str	x0, [sp, #8]
	stur	wzr, [x29, #-28]
	b	LBB0_14
LBB0_14:
	ldur	w8, [x29, #-28]
	ldur	w9, [x29, #-16]
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB0_29
	b	LBB0_15
LBB0_15:                                ;   in Loop: Header=BB0_14 Depth=1
	ldur	w8, [x29, #-28]
	add	w9, w8, #1
	str	w9, [sp, #32]
	b	LBB0_14
LBB0_16:
	ldr	x8, [sp, #8]
	ldur	w9, [x29, #-24]
	mul	w8, w8, w9
	str	w8, [sp, #20]
	ldrsw	x9, [sp, #28]
	ldr	w8, [x8, x9, lsl #2]
	ldr	w9, [sp, #20]
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB0_13
	b	LBB0_17
LBB0_17:
	ldur	x8, [x29, #-8]
	ldrsw	x9, [sp, #28]
	ldr	x8, [x8, x9, lsl #3]
	ldrsw	x9, [sp, #24]
	ldr	w8, [x8, x9, lsl #2]
	ldr	w9, [sp, #20]
	subs	w9, w9, #1
	ldr	w8, [x8, w9, sxtw #2]
	ldr	w9, [sp, #28]
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB0_13
	b	LBB0_18
LBB0_18:
	ldur	x8, [x29, #-8]
	ldrsw	x9, [sp, #28]
	ldr	x8, [x8, x9, lsl #3]
	ldrsw	x9, [sp, #24]
	ldr	w8, [x8, x9, lsl #2]
	ldr	w9, [sp, #20]
	str	w8, [sp, #28]
	b	LBB0_19
LBB0_19:
	ldr	w8, [sp, #24]
	ldur	x9, [x29, #-24]
	str	w8, [x9]
	ldrsh	x9, [sp, #28]
	ldr	w8, [x8, x9, lsl #2]
	ldr	w9, [sp, #20]
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB0_21
	b	LBB0_20
LBB0_20:
	ldur	x8, [x29, #-8]
	ldrsw	x9, [sp, #28]
	ldr	x8, [x8, x9, lsl #3]
	ldrsw	x9, [sp, #24]
	ldr	w8, [x8, x9, lsl #2]
	ldr	w9, [sp, #20]
	subs	w9, w9, #1
	ldr	w8, [x8, w9, sxtw #2]
	ldr	w9, [sp, #28]
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB0_21
	b	LBB0_22
LBB0_21:
	ldur	x8, [x29, #-8]
	ldrsw	x9, [sp, #28]
	ldr	x8, [x8, x9, lsl #3]
	ldrsw	x9, [sp, #24]
	ldr	w8, [x8, x9, lsl #2]
	ldr	w9, [sp, #20]
	subs	w9, w9, #1
	ldr	w8, [x8, w9, sxtw #2]
	ldr	w9, [sp, #28]
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB0_21
	b	LBB0_23
LBB0_22:
	ldur	x8, [x29, #-8]
	ldrsw	x9, [sp, #28]
	ldr	x8, [x8, x9, lsl #3]
	ldrsw	x9, [sp, #24]
	ldr	w8, [x8, x9, lsl #2]
	ldr	w9, [sp, #20]
	str	w8, [sp, #28]
	b	LBB0_23
LBB0_23:
	ldur	w8, [x29, #-16]
	ldur	w9, [x29, #-24]
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB0_25
	b	LBB0_24
LBB0_24:                                ;   in Loop: Header=BB0_23 Depth=1
	ldur	w8, [x29, #-28]
	add	w9, w8, #1
	str	w9, [sp, #32]
	b	LBB0_23
LBB0_25:
	ldr	x8, [sp, #8]
	ldur	w9, [x29, #-24]
	mul	w8, w8, w9
	str	w8, [sp, #44]
	ldrsw	x9, [sp, #28]
	ldr	w8, [x8, x9, lsl #2]
	ldr	w9, [sp, #44]
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB0_21
	b	LBB0_26
LBB0_26:
	ldur	x8, [x29, #-8]
	ldrsw	x9, [sp, #28]
	ldr	x8, [x8, x9, lsl #3]
	ldrsw	x9, [sp, #24]
	ldr	w8, [x8, x9, lsl #2]
	ldr	w9, [sp, #44]
	subs	w9, w9, #1
	ldr	w8, [x8, w9, sxtw #2]
	ldr	w9, [sp, #28]
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB0_21
	b	LBB0_27
LBB0_27:
	ldur	x8, [x29, #-8]
	ldrsw	x9, [sp, #28]
	ldr	x8, [x8, x9, lsl #3]
	ldrsw	x9, [sp, #24]
	ldr	w8, [x8, x9, lsl #2]
	ldr	w9, [sp, #44]
	str	w8, [sp, #28]
	b	LBB0_29
LBB0_28:
	ldr	w8, [sp, #24]
	ldur	x9, [x29, #-24]
	str	w8, [x9]
	ldrsh	x9, [sp, #28]
	ldr	w8, [x8, x9, lsl #2]
	ldr	w9, [sp, #44]
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB0_25
	b	LBB0_27
LBB0_29:
	ldur	x8, [x29, #-8]
	ldrsw	x9, [sp, #28]
	ldr	x8, [x8, x9, lsl #3]
	ldrsw	x9, [sp, #24]
	ldr	w8, [x8, x9, lsl #2]
	ldr	w9, [sp, #44]
	subs	w9, w9, #1
	ldr	w8, [x8, w9, sxtw #2]
	ldr	w9, [sp, #28]
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB0_25
	b	LBB0_30
LBB0_30:
	ldur	x8, [x29, #-8]
	ldrsw	x9, [sp, #28]
	ldr	x8, [x8, x9, lsl #3]
	ldrsw	x9, [sp, #24]
	ldr	w8, [x8, x9, lsl #2]
	ldr	w9, [sp, #44]
	subs	w9, w9, #1
	ldr	w8, [x8, w9, sxtw #2]
	ldr	w9, [sp, #28]
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB0_25
	b	LBB0_32
LBB0_31:
	ldur	x8, [x29, #-8]
	ldrsw	x9, [sp, #28]
	ldr	x8, [x8, x9, lsl #3]
	ldrsw	x9, [sp, #24]
	ldr	w8, [x8, x9, lsl #2]
	ldr	w9, [sp, #44]
	str	w8, [sp, #28]
	b	LBB0_32
LBB0_32:
	ldur	w8, [x29, #-16]
	ldur	w9, [x29, #-24]
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB0_27
	b	LBB0_33
LBB0_33:
	ldur	x8, [x29, #-28]
	ldrsw	x9, [sp, #28]
	ldr	x8, [x8, x9, lsl #3]
	ldrsw	x9, [sp, #24]
	ldr	w8, [x8, x9, lsl #2]
	ldr	w9, [sp, #44]
	subs	w9, w9, #1
	ldr	w8, [x8, w9, sxtw #2]
	ldr	w9, [sp, #28]
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB0_27
	b	LBB0_35
LBB0_34:
	ldur	x8, [x29, #-8]
	ldrsw	x9, [sp, #28]
	ldr	x8, [x8, x9, lsl #3]
	ldrsw	x9, [sp, #24]
	ldr	w8, [x8, x9, lsl #2]
	ldr	w9, [sp, #44]
	subs	w9, w9, #1
	ldr	w8, [x8, w9, sxtw #2]
	ldr	w9, [sp, #28]
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB0_27
	b	LBB0_36
LBB0_35:
	ldur	x8, [x29, #-8]
	ldrsw	x9, [sp, #24]
	ldr	x8, [x8, x9, lsl #3]
	ldrsw	x9, [sp, #24]
	ldr	w8, [x8, x9, lsl #2]
	ldr	w9, [sp, #44]
	str	w8, [sp, #28]
	b	LBB0_37
LBB0_36:
	ldr	w8, [sp, #24]
	ldur	x9, [x29, #-24]
	str	w8, [x9]
	ldrsh	x9, [sp, #28]
	ldr	w8, [x8, x9, lsl #2]
	ldr	w9, [sp, #44]
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB0_27
	b	LBB0_38
LBB0_37:
	ldur	x8, [x29, #-8]
	ldrsw	x9, [sp, #28]
	ldr	x8, [x8, x9, lsl #3]
	ldrsw	x9, [sp, #24]
	ldr	w8, [x8, x9, lsl #2]
	ldr	w9, [sp, #44]
	subs	w9, w9, #1
	ldr	w8, [x8, w9, sxtw #2]
	ldr	w9, [sp, #28]
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB0_27
	b	LBB0_40
LBB0_40:
	ldur	x8, [x29, #-8]
	ldrsw	x9, [sp, #28]
	ldr	x8, [x8, x9, lsl #3]
	ldrsw	x9, [sp, #24]
	ldr	w8, [x8, x9, lsl #2]
	ldr	w9, [sp, #44]
	subs	w9, w9, #1
	ldr	w8, [x8, w9, sxtw #2]
	ldr	w9, [sp, #28]
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB0_27
	b	LBB0_42
LBB0_41:
	ldur	x8, [x29, #-8]
	ldrsw	x9, [sp, #28]
	ldr	x8, [x8, x9, lsl #3]
	ldrsw	x9, [sp, #24]
	ldr	w8, [x8, x9, lsl #2]
	ldr	w9, [sp, #44]
	str	w8, [sp, #28]
	b	LBB0_42
LBB0_42:
	ldur	w8, [x29, #-16]
	ldur	w9, [x29, #-24]
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB0_29
	b	LBB0_43
LBB0_43:
	ldur	x8, [x29, #-28]
	ldrsw	x9, [sp, #28]
	ldr	x8, [x8, x9, lsl #3]
	ldrsw	x9, [sp, #24]
	ldr	w8, [x8, x9, lsl #2]
	ldr	w9, [sp, #44]
	subs	w9, w9, #1
	ldr	w8, [x8, w9, sxtw #2]
	ldr	w9, [sp, #28]
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB0_29
	b	LBB0_45
LBB0_44:
	ldur	x8, [x29, #-8]
	ldrsw	x9, [sp, #28]
	ldr	x8, [x8, x9, lsl #3]
	ldrsw	x9, [sp, #24]
	ldr	w8, [x8, x9, lsl #2]
	ldr	w9, [sp, #44]
	subs	w9, w9, #1
	ldr	w8, [x8, w9, sxtw #2]
	ldr	w9, [sp, #28]
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB0_29
	b	LBB0_46
LBB0_45:
	ldur	x8, [x29, #-8]
	ldrsw	x9, [sp, #28]
	ldr	x8, [x8, x9, lsl #3]
	ldrsw	x9, [sp, #24]
	ldr	w8, [x8, x9, lsl #2]
	ldr	w9, [sp, #44]
	str	w8, [sp, #28]
	b	LBB0_46
LBB0_46:
	ldur	w8, [x29, #-16]
	ldur	w9, [x29, #-24]
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB0_29
	b	LBB0_47
LBB0_47:
	ldur	x8, [x29, #-28]
	ldrsw	x9, [sp, #28]
	ldr	x8, [x8, x9, lsl #3]
	ldrsw	x9, [sp, #24]
	ldr	w8, [x8, x9, lsl #2]
	ldr	w9, [sp, #44]
	subs	w9, w9, #1
	ldr	w8, [x8, w9, sxtw #2]
	ldr	w9, [sp, #28]
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB0_29
	b	LBB0_50
LBB0_50:
	ldur	x8, [x29, #-8]
	ldrsw	x9, [sp, #28]
	ldr	x8, [x8, x9, lsl #3]
	ldrsw	x9, [sp, #24]
	ldr	w8, [x8, x9, lsl #2]
	ldr	w9, [sp, #44]
	subs	w9, w9, #1
	ldr	w8, [x8, w9, sxtw #2]
	ldr	w9, [sp, #28]
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB0_29
	b	LBB0_52
LBB0_51:
	ldur	x8, [x29, #-8]
	ldrsw	x9, [sp, #28]
	ldr	x8, [x8, x9, lsl #3]
	ldrsw	x9, [sp, #24]
	ldr	w8, [x8, x9, lsl #2]
	ldr	w9, [sp, #44]
	str	w8, [sp, #28]
	b	LBB0_52
LBB0_52:
	ldur	w8, [x29, #-16]
	ldur	w9, [x29, #-24]
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB0_29
	b	LBB0_53
LBB0_53:
	ldur	x8, [x29, #-28]
	ldrsw	x9, [sp, #28]
	ldr	x8, [x8, x9, lsl #3]
	ldrsw	x9, [sp, #24]
	ldr	w8, [x8, x9, lsl #2]
	ldr	w9, [sp, #44]
	subs	w9, w9, #1
	ldr	w8, [x8, w9, sxtw #2]
	ldr	w9, [sp, #28]
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB0_29
	b	LBB0_54
LBB0_54:
	ldur	x8, [x29, #-8]
	ldrsw	x9, [sp, #28]
	ldr	x8, [x8, x9, lsl #3]
	ldrsw	x9, [sp, #24]
	ldr	w8, [x8, x9, lsl #2]
	ldr	w9, [sp, #44]
	subs	w9, w9, #1
	ldr	w8, [x8, w9, sxtw #2]
	ldr	w9, [sp, #28]
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB0_29
	b	LBB0_55
LBB0_55:
	ldur	x8, [x29, #-8]
	ldrsw	x9, [sp, #28]
	ldr	x8, [x8, x9, lsl #3]
	ldrsw	x9, [sp, #24]
	ldr	w8, [x8, x9, lsl #2]
	ldr	w9, [sp, #44]
	str	w8, [sp, #28]
	b	LBB0_55
LBB0_56:
	ldur	w8, [x29, #-16]
	ldur	w9, [x29, #-24]
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB0_29
	b	LBB0_56
LBB0_57:
	ldur	x8, [x29, #-28]
	ldrsw	x9, [sp, #28]
	ldr	x8, [x8, x9, lsl #3]
	ldrsw	x9, [sp, #24]
	ldr	w8, [x8, x9, lsl #2]
	ldr	w9, [sp, #44]
	subs	w9, w9, #1
	ldr	w8, [x8, w9, sxtw #2]
	ldr	w9, [sp, #28]
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB0_29
	b	LBB0_60
LBB0_60:
	ldur	x8, [x29, #-8]
	ldrsw	x9, [sp, #28]
	ldr	x8, [x8, x9, lsl #3]
	ldrsw	x9, [sp, #24]
	ldr	w8, [x8, x9, lsl #2]
	ldr	w9, [sp, #44]
	subs	w9, w9, #1
	ldr	w8, [x8, w9, sxtw #2]
	ldr	w9, [sp, #28]
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB0_29
	b	LBB0_62
LBB0_61:
	ldur	x8, [x29, #-8]
	ldrsw	x9, [sp, #28]
	ldr	x8, [x8, x9, lsl #3]
	ldrsw	x9, [sp, #24]
	ldr	w8, [x8, x9, lsl #2]
	ldr	w9, [sp, #44]
	str	w8, [sp, #28]
	b	LBB0_62
LBB0_62:
	ldur	w8, [x29, #-16]
	ldur	w9, [x29, #-24]
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB0_29
	b	LBB0_63
LBB0_63:
	ldur	x8, [x29, #-28]
	ldrsw	x9, [sp, #28]
	ldr	x8, [x8, x9, lsl #3]
	ldrsw	x9, [sp, #24]
	ldr	w8, [x8, x9, lsl #2]
	ldr	w9, [sp, #44]
	subs	w9, w9, #1
	ldr	w8, [x8, w9, sxtw #2]
	ldr	w9, [sp, #28]
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB0_29
	b	LBB0_64
LBB0_64:
	ldur	x8, [x29, #-8]
	ldrsw	x9, [sp, #28]
	ldr	x8, [x8, x9, lsl #3]
	ldrsw	x9, [sp, #24]
	ldr	w8, [x8, x9, lsl #2]
	ldr	w9, [sp, #44]
	subs	w9, w9, #1
	ldr	w8, [x8, w9, sxtw #2]
	ldr	w9, [sp, #28]
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB0_29
	b	LBB0_65
LBB0_65:
	ldur	x8, [x29, #-8]
	ldrsw	x9, [sp, #28]
	ldr	x8, [x8, x9, lsl #3]
	ldrsw	x9, [sp, #24]
	ldr	w8, [x8, x9, lsl #2]
	ldr	w9, [sp, #44]
	subs	w9, w9, #1
	ldr	w8, [x8, w9, sxtw #2]
	ldr	w9, [sp, #28]
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB0_29
	b	LBB0_66
LBB0_66:
	ldur	x8, [x29, #-8]
	ldrsw	x9, [sp, #28]
	ldr	x8, [x8, x9, lsl #3]
	ldrsw	x9, [sp, #24]
	ldr	w8, [x8, x9, lsl #2]
	ldr	w9, [sp, #44]
	subs	w9, w9, #1
	ldr	w8, [x8, w9, sxtw #2]
	ldr	w9, [sp, #28]
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB0_29
	b	LBB0_67
LBB0_67:
	ldur	x8, [x29, #-28]
	ldrsw	x9, [sp, #28]
	ldr	x8, [x8, x9, lsl #3]
	ldrsw	x9, [sp, #24]
	ldr	w8, [x8, x9, lsl #2]
	ldr	w9, [sp, #44]
	subs	w9, w9, #1
	ldr	w8, [x8, w9, sxtw #2]
	ldr	w9, [sp, #28]
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB0_29
	b	LBB0_70
LBB0_70:
	ldur	x8, [x29, #-8]
	ldrsw	x9, [sp, #28]
	ldr	x8, [x8, x9, lsl #3]
	ldrsw	x9, [sp, #24]
	ldr	w8, [x8, x9, lsl #2]
	ldr	w9, [sp, #44]
	subs	w9, w9, #1
	ldr	w8, [x8, w9, sxtw #2]
	ldr	w9, [sp, #28]
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB0_29
	b	LBB0_72
LBB0_71:
	ldur	x8, [x29, #-8]
	ldrsw	x9, [sp, #28]
	ldr	x8, [x8, x9, lsl #3]
	ldrsw	x9, [sp, #24]
	ldr	w8, [x8, x9, lsl #2]
	ldr	w9, [sp, #44]
	subs	w9, w9, #1
	ldr	w8, [x8, w9, sxtw #2]
	ldr	w9, [sp, #28]
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB0_29
	b	LBB0_73
LBB0_72:
	ldur	x8, [x29, #-28]
	ldrsw	x9, [sp, #28]
	ldr	x8, [x8, x9, lsl #3]
	ldrsw	x9, [sp, #24]
	ldr	w8, [x8, x9, lsl #2]
	ldr	w9, [sp, #44]
	subs	w9, w9, #1
	ldr	w8, [x8, w9, sxtw #2]
	ldr	w9, [sp, #28]
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB0_29
	b	LBB0_74
LBB0_73:
	ldur	x8, [x29, #-28]
	ldrsw	x9, [sp, #28]
	ldr	x8, [x8, x9, lsl #3]
	ldrsw	x9, [sp, #24]
	ldr	w8, [x8, x9, lsl #2]
	ldr	w9, [sp, #44]
	subs	w9, w9, #1
	ldr	w8, [x8, w9, sxtw #2]
	ldr	w9, [sp, #28]
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB0_29
	b	LBB0_75
LBB0_74:
	ldur	x8, [x29, #-8]
	ldrsw	x9, [sp, #28]
	ldr	x8, [x8, x9, lsl #3]
	ldrsw	x9, [sp, #24]
	ldr	w8, [x8, x9, lsl #2]
	ldr	w9, [sp, #44]
	subs	w9, w9, #1
	ldr	w8, [x8, w9, sxtw #2]
	ldr	w9, [sp, #28]
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB0_29
	b	LBB0_76
LBB0_75:
	ldur	x8, [x29, #-28]
	ldrsw	x9, [sp, #28]
	ldr	x8, [x8, x9, lsl #3]
	ldrsw	x9, [sp, #24]
	ldr	w8, [x8, x9, lsl #2]
	ldr	w9, [sp, #44]
	subs	w9, w9, #1
	ldr	w8, [x8, w9, sxtw #2]
	ldr	w9, [sp, #28]
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB0_29
	b	LBB0_78
LBB0_76:
	ldur	x8, [x29, #-28]
	ldrsw	x9, [sp, #28]
	ldr	x8, [x8, x9, lsl #3]
	ldrsw	x9, [sp, #24]
	ldr	w8, [x8, x9, lsl #2]
	ldr	w9, [sp, #44]
	subs	w9, w9, #1
	ldr	w8, [x8, w9, sxtw #2]
	ldr	w9, [sp, #28]
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB0_29
	b	LBB0_80
LBB0_77:
	ldur	x8, [x29, #-8]
	ldrsw	x9, [sp, #28]
	ldr	x8, [x8, x9, lsl #3]
	ldrsw	x9, [sp, #24]
	ldr	w8, [x8, x9, lsl #2]
	ldr	w9, [sp, #44]
	subs	w9, w9, #1
	ldr	w8, [x8, w9, sxtw #2]
	ldr	w9, [sp, #28]
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB0_29
	b	LBB0_82
LBB0_80:
	ldur	x8, [x29, #-28]
	ldrsw	x9, [sp, #28]
	ldr	x8, [x8, x9, lsl #3]
	ldrsw	x9, [sp, #24]
	ldr	w8, [x8, x9, lsl #2]
	ldr	w9, [sp, #44]
	subs	w9, w9, #1
	ldr	w8, [x8, w9, sxtw #2]
	ldr	w9, [sp, #28]
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB0_29
	b	LBB0_83
LBB0_81:
	ldur	x8, [x29, #-28]
	ldrsw	x9, [sp, #28]
	ldr	x8, [x8, x9, lsl #3]
	ldrsw	x9, [sp, #24]
	ldr	w8, [x8, x9, lsl #2]
	ldr	w9, [sp, #44]
	subs	w9, w9, #1
	ldr	w8, [x8, w9, sxtw #2]
	ldr	w9, [sp, #28]
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB0_29
	b	LBB0_84
LBB0_82:
	ldur	x8, [x29, #-28]
	ldrsw	x9, [sp, #28]
	ldr	x8, [x8, x9, lsl #3]
	ldrsw	x9, [sp, #24]
	ldr	w8, [x8, x9, lsl #2]
	ldr	w9, [sp, #44]
	subs	w9, w9, #1
	ldr	w8, [x8, w9, sxtw #2]
	ldr	w9, [sp, #28]
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB0_29
	b	LBB0_85
LBB0_83:
	ldur	x8, [x29, #-28]
	ldrsw	x9, [sp, #28]
	ldr	x8, [x8, x9, lsl #3]
	ldrsw	x9, [sp, #24]
	ldr	w8, [x8, x9, lsl #2]
	ldr	w9, [sp, #44]
	subs	w9, w9, #1
	ldr	w8, [x8, w9, sxtw #2]
	ldr	w9, [sp, #28]
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB0_29
	b	LBB0_86
LBB0_84:
	ldur	x8, [x29, #-28]
	ldrsw	x9, [sp, #28]
	ldr	x8, [x8, x9, lsl #3]
	ldrsw	x9, [sp, #24]
	ldr	w8, [x8, x9, lsl #2]
	ldr	w9, [sp, #44]
	subs	w9, w9, #1
	ldr	w8, [x8, w9, sxtw #2]
	ldr	w9, [sp, #28]
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB0_29
	b	LBB0_87
LBB0_85:
	ldur	x8, [x29, #-28]
	ldrsw	x9, [sp, #28]
	ldr	x8, [x8, x9, lsl #3]
	ldrsw	x9, [sp, #24]
	ldr	w8, [x8, x9, lsl #2]
	ldr	w9, [sp, #44]
	subs	w9, w9, #1
	ldr	w8, [x8, w9, sxtw #2]
	ldr	w9, [sp, #28]
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB0_29
	b	LBB0_88
LBB0_86:
	ldur	x8, [x29, #-28]
	ldrsw	x9, [sp, #28]
	ldr	x8, [x8, x9, lsl #3]
	ldrsw	x9, [sp, #24]
	ldr	w8, [x8, x9, lsl #2]
	ldr	w9, [sp, #44]
	subs	w9, w9, #1
	ldr	w8, [x8, w9, sxtw #2]
	ldr	w9, [sp, #28]
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB0_29
	b	LBB0_89
LBB0_87:
	ldur	x8, [x29, #-28]
	ldrsw	x9, [sp, #28]
	ldr	x8, [x8, x9, lsl #3]
	ldrsw	x9, [sp, #24]
	ldr	w8, [x8, x9, lsl #2]
	ldr	w9, [sp, #44]
	subs	w9, w9, #1
	ldr	w8, [x8, w9, sxtw #2]
	ldr	w9, [sp, #28]
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB0_29
	b	LBB0_90
LBB0_88:
	ldur	x8, [x29, #-28]
	ldrsw	x9, [sp, #28]
	ldr	x8, [x8, x9, lsl #3]
	ldrsw	x9, [sp, #24]
	ldr	w8, [x8, x9, lsl #2]
	ldr	w9, [sp, #44]
	subs	w9, w9, #1
	ldr	w8, [x8, w9, sxtw #2]
	ldr	w9, [sp, #28]
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB0_29
	b	LBB0_92
LBB0_89:
	ldur	x8, [x29, #-28]
	ldrsw	x9, [sp, #28]
	ldr	x8, [x8, x9, lsl #3]
	ldrsw	x9, [sp, #24]
	ldr	w8, [x8, x9, lsl #2]
	ldr	w9, [sp, #44]
	subs	w9, w9, #1
	ldr	w8, [x8, w9, sxtw #2]
	ldr	w9, [sp, #28]
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB0_29
	b	LBB0_93
LBB0_90:
	ldur	x8, [x29, #-28]
	ldrsw	x9, [sp, #28]
	ldr	x8, [x8, x9, lsl #3]
	ldrsw	x9, [sp, #24]
	ldr	w8, [x8, x9, lsl #2]
	ldr	w9, [sp, #44]
	subs	w9, w9, #1
	ldr	w8, [x8, w9, sxtw #2]
	ldr	w9, [sp, #28]
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB0_29
	b	LBB0_94
LBB0_91:
	ldur	x8, [x29, #-28]
	ldrsw	x9, [sp, #28]
	ldr	x8, [x8, x9, lsl #3]
	ldrsw	x9, [sp, #24]
	ldr	w8, [x8, x9, lsl #2]
	ldr	w9, [sp, #44]
	subs	w9, w9, #1
	ldr	w8, [x8, w9, sxtw #2]
	ldr	w9, [sp, #28]
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB0_29
	b	LBB0_95
LBB0_92:
	ldur	x8, [x29, #-28]
	ldrsw	x9, [sp, #28]
	ldr	x8, [x8, x9, lsl #3]
	ldrsw	x9, [sp, #24]
	ldr	w8, [x8, x9, lsl #2]
	ldr	w9, [sp, #44]
	subs	w9, w9, #1
	ldr	w8, [x8, w9, sxtw #2]
	ldr	w9, [sp, #28]
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB0_29
	b	LBB0_96
LBB0_93:
	ldur	x8, [x29, #-28]
	ldrsw	x9, [sp, #28]
	ldr	x8, [x8, x9, lsl #3]
	ldrsw	x9, [sp, #24]
	ldr	w8, [x8, x9, lsl #2]
	ldr	w9, [sp, #44]
	subs	w9, w9, #1
	ldr	w8, [x8, w9, sxtw #2]
	ldr	w9, [sp, #28]
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB0_29
	b	LBB0_97
LBB0_94:
	ldur	x8, [x29, #-28]
	ldrsw	x9, [sp, #28]
	ldr	x8, [x8, x9, lsl #3]
	ldrsw	x9, [sp, #24]
	ldr	w8, [x8, x9, lsl #2]
	ldr	w9, [sp, #44]
	subs	w9, w9, #1
	ldr	w8, [x8, w9, sxtw #2]
	ldr	w9, [sp, #28]
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB0_29
	b	LBB0_98
LBB0_95:
	ldur	x8, [x29, #-28]
	ldrsw	x9, [sp, #28]
	ldr	x8, [x8, x9, lsl #3]
	ldrsw	x9, [sp, #24]
	ldr	w8, [x8, x9, lsl #2]
	ldr	w9, [sp, #44]
	subs	w9, w9, #1
	ldr	w8, [x8, w9, sxtw #2]
	ldr	w9, [sp, #28]
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB0_29
	b	LBB0_99
LBB0_96:
	ldur	x8, [x29, #-28]
	ldrsw	x9, [sp, #28]
	ldr	x8, [x8, x9, lsl #3]
	ldrsw	x9, [sp, #24]
	ldr	w8, [x8, x9, lsl #2]
	ldr	w9, [sp, #44]
	subs	w9, w9, #1
	ldr	w8, [x8, w9, sxtw #2]
	ldr	w9, [sp, #28]
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB0_29
	b	LBB0_100
LBB0_97:
	ldur	x8, [x29, #-28]
	ldrsw	x9, [sp, #28]
	ldr	x8, [x8, x9, lsl #3]
	ldrsw	x9, [sp, #24]
	ldr	w8, [x8, x9, lsl #2]
	ldr	w9, [sp, #44]
	subs	w9, w9, #1
	ldr	w8, [x8, w9, sxtw #2]
	ldr	w9, [sp, #28]
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB0_29
	b	LBB0_102
LBB0_100:
	ldur	x8, [x29, #-28]
	ldrsw	x9, [sp, #28]
	ldr	x8, [x8, x9, lsl #3]
	ldrsw	x9, [sp, #24]
	ldr	w8, [x8, x9, lsl #2]
	ldr	w9, [sp, #44]
	subs	w9, w9, #1
	ldr	w8, [x8, w9, sxtw #2]
	ldr	w9, [sp, #28]
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB0_29
	b	LBB0_103
LBB0_101:
	ldur	x8, [x29, #-28]
	ldrsw	x9, [sp, #28]
	ldr	x8, [x8, x9, lsl #3]
	ldrsw	x9, [sp, #24]
	ldr	w8, [x8, x9, lsl #2]
	ldr	w9, [sp, #44]
	subs	w9, w9, #1
	ldr	w8, [x8, w9, sxtw #2]
	ldr	w9, [sp, #28]
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB0_29
	b	LBB0_104
LBB0_102:
	ldur	x8, [x29, #-28]
	ldrsw	x9, [sp, #28]
	ldr	x8, [x8, x9, lsl #3]
	ldrsw	x9, [sp, #24]
	ldr	w8, [x8, x9, lsl #2]
	ldr	w9, [sp, #44]
	subs	w9, w9, #1
	ldr	w8, [x8, w9, sxtw #2]
	ldr	w9, [sp, #28]
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB0_29
	b	LBB0_105
LBB0_103:
	ldur	x8, [x29, #-28]
	ldrsw	x9, [sp, #28]
	ldr	x8, [x8, x9, lsl #3]
	ldrsw	x9, [sp, #24]
	ldr	w8, [x8, x9, lsl #2]
	ldr	w9, [sp, #44]
	subs	w9, w9, #1
	ldr	w8, [x8, w9, sxtw #2]
	ldr	w9, [sp, #28]
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB0_29
	b	LBB0_106
LBB0_104:
	ldur	x8, [x29, #-28]
	ldrsw	x9, [sp, #28]
	ldr	x8, [x8, x9, lsl #3]
	ldrsw	x9, [sp, #24]
	ldr	w8, [x8, x9, lsl #2]
	ldr	w9, [sp, #44]
	subs	w9, w9, #1
	ldr	w8, [x8, w9, sxtw #2]
	ldr	w9, [sp, #28]
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB0_29
	b	LBB0_107
LBB0_105:
	ldur	x8, [x29, #-28]
	ldrsw	x9, [sp, #28]
	ldr	x8, [x8, x9, lsl #3]
	ldrsw	x9, [sp, #24]
	ldr	w8, [x8, x9, lsl #2]
	ldr	w9, [sp, #44]
	subs	w9, w9, #1
	ldr	w8, [x8, w9, sxtw #2]
	ldr	w9, [sp, #28]
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB0_29
	b	LBB0_108
LBB0_106:
	ldur	x8, [x29, #-28]
	ldrsw	x9, [sp, #28]
	ldr	x8, [x8, x9, lsl #3]
	ldrsw	x9, [sp, #24]
	ldr	w8, [x8, x9, lsl #2]
	ldr	w9, [sp, #44]
	subs	w9, w9, #1
	ldr	w8, [x8, w9, sxtw #2]
	ldr	w9, [sp, #28]
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB0_29
	b	LBB0_109
LBB0_107:
	ldur	x8, [x29, #-28]
	ldrsw	x9, [sp, #28]
	ldr	x8, [x8, x9, lsl #3]
	ldrsw	x9, [sp, #24]
	ldr	w8, [x8, x9, lsl #2]
	ldr	w9, [sp, #44]
	subs	w9, w9, #1
	ldr	w8, [x8, w9, sxtw #2]
	ldr	w9, [sp, #28]
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB0_29
	b	LBB0_110
LBB0_108:
	ldur	x8, [x29, #-28]
	ldrsw	x9, [sp, #28]
	ldr	x8, [x8, x9, lsl #3]
	ldrsw	x9, [sp, #24]
	ldr	w8, [x8, x9, lsl #2]
	ldr	w9, [sp, #44]
	subs	w9, w9, #1
	ldr	w8, [x8, w9, sxtw #2]
	ldr	w9, [sp, #28]
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB0_29
	b	LBB0_111
LBB0_109:
	ldur	x8, [x29, #-28]
	ldrsw	x9, [sp, #28]
	ldr	x8, [x8, x9, lsl #3]
	ldrsw	x9, [sp, #24]
	ldr	w8, [x8, x9, lsl #2]
	ldr	w9, [sp, #44]
	subs	w9, w9, #1
	ldr	w8, [x8, w9, sxtw #2]
	ldr	w9, [sp, #28]
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB0_29
	b	LBB0_112
LBB0_110:
	ldur	x8, [x29, #-28]
	ldrsw	x9, [sp, #28]
	ldr	x8, [x8, x9, lsl #3]
	ldrsw	x9, [sp, #24]
	ldr	w8, [x8, x9, lsl #2]
	ldr	w9, [sp, #44]
	subs	w9, w9, #1
	ldr	w8, [x8, w9, sxtw #2]
	ldr	w9, [sp, #28]
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB0_29
	b	LBB0_113
LBB0_111:
	ldur	x8, [x29, #-28]
	ldrsw	x9, [sp, #28]
	ldr	x8, [x8, x9, lsl #3]
	ldrsw	x9, [sp, #24]
	ldr	w8, [x8, x9, lsl #2]
	ldr	w9, [sp, #44]
	subs	w9, w9, #1
	ldr	w8, [x8, w9, sxtw #2]
	ldr	w9, [sp, #28]
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB0_29
	b	LBB0_114
LBB0_112:
	ldur	x8, [x29, #-28]
	ldrsw	x9, [sp, #28]
	ldr	x8, [x8, x9, lsl #3]
	ldrsw	x9, [sp, #24]
	ldr	w8, [x8, x9, lsl #2]
	ldr	w9, [sp, #44]
	subs	w9, w9, #1
	ldr	w8, [x8, w9, sxtw #2]
	ldr	w9, [sp, #28]
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB0_29
	b	LBB0_115
LBB0_113:
	ldur	x8, [x29, #-28]
	ldrsw	x9, [sp, #28]
	ldr	x8, [x8, x9, lsl #3]
	ldrsw	x9, [sp, #24]
	ldr	w8, [x8, x9, lsl #2]
	ldr	w9, [sp, #44]
	subs	w9, w9, #1
	ldr	w8, [x8, w9, sxtw #2]
	ldr	w9, [sp, #28]
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB0_29
	b	LBB0_116
LBB0_114:
	ldur	x8, [x29, #-28]
	ldrsw	x9, [sp, #28]
	ldr	x8, [x8, x9, lsl #3]
	ldrsw	x9, [sp, #24]
	ldr	w8, [x8, x9, lsl #2]
	ldr	w9, [sp, #44]
	subs	w9, w9, #1
	ldr	w8, [x8, w9, sxtw #2]
	ldr	w9, [sp, #28]
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB0_29
	b	LBB0_117
LBB0_115:
	ldur	x8, [x29, #-28]
	ldrsw	x9, [sp, #28]
	ldr	x8, [x8, x9, lsl #3]
	ldrsw	x9, [sp, #24]
	ldr	w8, [x8, x9, lsl #2]
	ldr	w9, [sp, #44]
	subs	w9, w9, #1
	ldr	w8, [x8, w9, sxtw #2]
	ldr	w9, [sp, #28]
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB0_29
	b	LBB0_118
LBB0_116:
	ldur	x8, [x29, #-28]
	ldrsw	x9, [sp, #28]
	ldr	x8, [x8, x9, lsl #3]
	ldrsw	x9, [sp, #24]
	ldr	w8, [x8, x9, lsl #2]
	ldr	w9, [sp, #44]
	subs	w9, w9, #1
	ldr	w8, [x8, w9, sxtw #2]
	ldr	w9, [sp, #28]
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB0_29
	b	LBB0_119
LBB0_117:
	ldur	x8, [x29, #-28]
	ldrsw	x9, [sp, #28]
	ldr	x8, [x8, x9, lsl #3]
	ldrsw	x9, [sp, #24]
	ldr	w8, [x8, x9, lsl #2]
	ldr	w9, [sp, #44]
	subs	w9, w9, #1
	ldr	w8, [x8, w9, sxtw #2]
	ldr	w9, [sp, #28]
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB0_29
	b	LBB0_120
LBB0_120:
	ldur	x8, [x29, #-28]
	ldrsw	x9, [sp, #28]
	ldr	x8, [x8, x9, lsl #3]
	ldrsw	x9, [sp, #24]
	ldr	w8, [x8, x9, lsl #2]
	ldr	w9, [sp, #44]
	subs	w9, w9, #1
	ldr	w8, [x8, w9, sxtw #2]
	ldr	w9, [sp, #28]
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB0_29
	b	LBB0_121
LBB0_121:
	ldur	x8, [x29, #-28]
	ldrsw	x9, [sp, #28]
	ldr	x8, [x8, x9, lsl #3]
	ldrsw	x9, [sp, #24]
	ldr	w8, [x8, x9, lsl #2]
	ldr	w9, [sp, #44]
	subs	w9, w9, #1
	ldr	w8, [x8, w9, sxtw #2]
	ldr	w9, [sp, #28]
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB0_29
	b	LBB0_122
LBB0_122:
	ldur	x8, [x29, #-28]
	ldrsw	x9, [sp, #28]
	ldr	x8, [x8, x9, lsl #3]
	ldrsw	x9, [sp, #24]
	ldr	w8, [x8, x9, lsl #2]
	ldr	w9, [sp, #44]
	subs	w9, w9, #1
	ldr	w8, [x8, w9, sxtw #2]
	ldr	w9, [sp, #28]
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB0_29
	b	LBB0_123
LBB0_123:
	ldur	x8, [x29, #-28]
	ldrsw	x9, [sp, #28]
	ldr	x8, [x8, x9, lsl #3]
	ldrsw	x9, [sp, #24]
	ldr	w8, [x8, x9, lsl #2]
	ldr	w9, [sp, #44]
	subs	w9, w9, #1
	ldr	w8, [x8, w9, sxtw #2]
	ldr	w9, [sp, #28]
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB0_29
	b	LBB0_124
LBB0_124:
	ldur	x8, [x29, #-28]
	ldrsw	x9, [sp, #28]
	ldr	x8, [x8, x9, lsl #3]
	ldrsw	x9, [sp, #24]
	ldr	w8, [x8, x9, lsl #2]
	ldr	w9, [sp, #44]
	subs	w9, w9, #1
	ldr	w8, [x8, w9, sxtw #2]
	ldr	w9, [sp, #28]
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB0_29
	b	LBB0_125
LBB0_125:
	ldur	x8, [x29, #-28]
	ldrsw	x9, [sp, #28]
	ldr	x8, [x8, x9, lsl #3]
	ldrsw	x9, [sp, #24]
	ldr	w8, [x8, x9, lsl #2]
	ldr	w9, [sp, #44]
	subs	w9, w9, #1
	ldr	w8, [x8, w9, sxtw #2]
	ldr	w9, [sp, #28]
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB0_29
	b	LBB0_126
LBB0_126:
	ldur	x8, [x29, #-28]
	ldrsw	x9, [sp, #28]
	ldr	x8, [x8, x9, lsl #3]
	ldrsw	x9, [sp, #24]
	ldr	w8, [x8, x9, lsl #2]
	ldr	w9, [sp, #44]
	subs	w9, w9, #1
	ldr	w8, [x8, w9, sxtw #2]
	ldr	w9, [sp, #28]
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB0_29
	b	LBB0_127
LBB0_127:
	ldur	x8, [x29, #-28]
	ldrsw	x9, [sp, #28]
	ldr	x8, [x8, x9, lsl #3]
	ldrsw	x9, [sp, #24]
	ldr	w8, [x8, x9, lsl #2]
	ldr	w9, [sp, #44]
	subs	w9, w9, #1
	ldr	w8, [x8, w9, sxtw #2]
	ldr	w9, [sp, #28]
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB0_29
	b	LBB0_128
LBB0_128:
	ldur	x8, [x29, #-28]
	ldrsw	x9, [sp, #28]
	ldr	x8, [x8, x9, lsl #3]
	ldrsw	x9, [sp, #24]
	ldr	w8, [x8, x9, lsl #2]
	ldr	w9, [sp, #44]
	subs	w9, w9, #1
	ldr	w8, [x8, w9, sxtw #2]
	ldr	w9, [sp, #28]
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB0_29
	b	LBB0_129
LBB0_129:
	ldur	x8, [x29, #-28]
	ldrsw	x9, [sp, #28]
	ldr	x8, [x8, x9, lsl #3]
	ldrsw	x9, [sp, #24]
	ldr	w8, [x8, x9, lsl #2]
	ldr	w9, [sp, #44]
	subs	w9, w9, #1
	ldr	w8, [x8, w9, sxtw #2]
	ldr	w9, [sp, #28]
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB0_29
	b	LBB0_130
LBB0_130:
	ldur	x8, [x29, #-28]
	ldrsw	x9, [sp, #28]
	ldr	x8, [x8, x9, lsl #3]
	ldrsw	x9, [sp, #24]
	ldr	w8, [x8, x9, lsl #2]
	ldr	w9, [sp, #44]
	subs	w9, w9, #1
	ldr	w8, [x8, w9, sxtw #2]
	ldr	w9, [sp, #28]
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB0_29
	b	LBB0_131
LBB0_131:
	ldur	x8, [x29, #-28]
	ldrsw	x9, [sp, #28]
	ldr	x8, [x8, x9, lsl #3]
	ldrsw	x9, [sp, #24]
	ldr	w8, [x8, x9, lsl #2]
	ldr	w9, [sp, #44]
	subs	w9, w9, #1
	ldr	w8, [x8, w9, sxtw #2]
	ldr	w9, [sp, #28]
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB0_29
	b	LBB0_132
LBB0_132:
	ldur	x8, [x29, #-28]
	ldrsw	x9, [sp, #28]
	ldr	x8, [x8, x9, lsl #3]
	ldrsw	x9, [sp, #24]
	ldr	w8, [x8, x9, lsl #2]
	ldr	w9, [sp, #44]
	subs	w9, w9, #1
	ldr	w8, [x8, w9, sxtw #2]
	ldr	w9, [sp, #28]
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB0_29
	b	LBB0_133
LBB0_133:
	ldur	x8, [x29, #-28]
	ldrsw	x9, [sp, #28]
	ldr	x8, [x8, x9, lsl #3]
	ldrsw	x9, [sp, #24]
	ldr	w8, [x8, x9, lsl #2]
	ldr	w9, [sp, #44]
	subs	w9, w9, #1
	ldr	w8, [x8, w9, sxtw #2]
	ldr	w9, [sp, #28]
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB0_29
	b	LBB0_134
LBB0_134:
	ldur	x8, [x29, #-28]
	ldrsw	x9, [sp, #28]
	ldr	x8, [x8, x9, lsl #3]
	ldrsw	x9, [sp, #24]
	ldr	w8, [x8, x9, lsl #2]
	ldr	w9, [sp, #44]
	subs	w9, w9, #1
	ldr	w8, [x8, w9, sxtw #2]
	ldr	w9, [sp, #28]
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB0_29
	b	LBB0_135
LBB0_135:
	ldur	x8, [x29, #-28]
	ldrsw	x9, [sp, #28]
	ldr	x8, [x8, x9, lsl #3]
	ldrsw	x9, [sp, #24]
	ldr	w8, [x8, x9, lsl #2]
	ldr	w9, [sp, #44]
	subs	w9, w9, #1
	ldr	w8, [x8, w9, sxtw #2]
	ldr	w9, [sp, #28]
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB0_29
	b	LBB0_136
LBB0_136:
	ldur	x8, [x29, #-28]
	ldrsw	x9, [sp, #28]
	ldr	x8, [x8, x9, lsl #3]
	ldrsw	x9, [sp, #24]
	ldr	w8, [x8, x9, lsl #2]
	ldr	w9, [sp, #44]
	subs	w9, w9, #1
	ldr	w8, [x8, w9, sxtw #2]
	ldr	w9, [sp, #28]
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB0_29
	b	LBB0_137
LBB0_137:
	ldur	x8, [x29, #-28]
	ldrsw	x9, [sp, #28]
	ldr	x8, [x8, x9, lsl #3]
	ldrsw	x9, [sp, #24]
	ldr	w8, [x8, x9, lsl #2]
	ldr	w9, [sp, #44]
	subs	w9, w9, #1
	ldr	w8, [x8, w9, sxtw #2]
	ldr	w9, [sp, #28]
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB0_29
	b	LBB0_138
LBB0_138:
	ldur	x8, [x29, #-28]
	ldrsw	x9, [sp, #28]
	ldr	x8, [x8, x9, lsl #3]
	ldrsw	x9, [sp, #24]
	ldr	w8, [x8, x9, lsl #2]
	ldr	w9, [sp, #44]
	subs	w9, w9, #1
	ldr	w8, [x8, w9, sxtw #2]
	ldr	w9, [sp, #28]
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB0_29
	b	LBB0_140
LBB0_140:
	ldur	x8, [x29, #-28]
	ldrsw	x9, [sp, #28]
	ldr	x8, [x8, x9, lsl #3]
	ldrsw	x9, [sp, #24]
	ldr	w8, [x8, x9, lsl #2]
	ldr	w9, [sp, #44]
	subs	w9, w9, #1
	ldr	w8, [x8, w9, sxtw #2]
	ldr	w9, [sp, #28]
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB0_29
	b	LBB0_141
LBB0_141:
	ldur	x8, [x29, #-28]
	ldrsw	x9, [sp, #28]
	ldr	x8, [x8, x9, lsl #3]
	ldrsw	x9, [sp, #24]
	ldr	w8, [x8, x9, lsl #2]
	ldr	w9, [sp, #44]
	subs	w9, w9, #1
	ldr	w8, [x8, w9, sxtw #2]
	ldr	w9, [sp, #28]
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB0_29
	b	LBB0_142
LBB0_142:
	ldur	x8, [x29, #-28]
	ldrsw	x9, [sp, #28]
	ldr	x8, [x8, x9, lsl #3]
	ldrsw	x9, [sp, #24]
	ldr	w8, [x8, x9, lsl #2]
	ldr	w9, [sp, #44]
	subs	w9, w9, #1
	ldr	w8, [x8, w9, sxtw #2]
	ldr	w9, [sp, #28]
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB0_29
	b	LBB0_143
LBB0_143:
	ldur	x8, [x29, #-28]
	ldrsw	x9, [sp, #28]
	ldr	x8, [x8, x9, lsl #3]
	ldrsw	x9, [sp, #24]
	ldr	w8, [x8, x9, lsl #2]
	ldr	w9, [sp, #44]
	subs	w9, w9, #1
	ldr	w8, [x8, w9, sxtw #2]
	ldr	w9, [sp, #28]
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB0_29
	b	LBB0_144
LBB0_144:
	ldur	x8, [x29, #-28]
	ldrsw	x9, [sp, #28]
	ldr	x8, [x8, x9, lsl #3]
	ldrsw	x9, [sp, #24]
	ldr	w8, [x8, x9, lsl #2]
	ldr	w9, [sp, #44]
	subs	w9, w9, #1
	ldr	w8, [x8, w9, sxtw #2]
	ldr	w9, [sp, #28]
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB0_29
	b	LBB0_145
LBB0_145:
	ldur	x8, [x29, #-28]
	ldrsw	x9, [sp, #28]
	ldr	x8, [x8, x9, lsl #3]
	ldrsw	x9, [sp, #24]
	ldr	w8, [x8, x9, lsl #2]
	ldr	w9, [sp, #44]
	subs	w9, w9, #1
	ldr	w8, [x8, w9, sxtw #2]
	ldr	w9, [sp, #28]
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB0_29
	b	LBB0_146
LBB0_146:
	ldur	x8, [x29, #-28]
	ldrsw	x9, [sp, #28]
	ldr	x8, [x8, x9, lsl #3]
	ldrsw	x9, [sp, #24]
	ldr	w8, [x8, x9, lsl #2]
	ldr	w9, [sp, #44]
	subs	w9, w9, #1
	ldr	w8, [x8, w9, sxtw #2]
	ldr	w9, [sp, #28]
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB0_29
	b	LBB0_147
LBB0_147:
	ldur	x8, [x29, #-28]
	ldrsw	x9, [sp, #28]
	ldr	x8, [x8, x9, lsl #3]
	ldrsw	x9, [sp, #24]
	ldr	w8, [x8, x9, lsl #2]
	ldr	w9, [sp, #44]
	subs	w9, w9, #1
	ldr	w8, [x8, w9, sxtw #2]
	ldr	w9, [sp, #28]
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB0_29
	b	LBB0_148
LBB0_148:
	ldur	x8, [x29, #-28]
	ldrsw	x9, [sp, #28]
	ldr	x8, [x8, x9, lsl #3]
	ldrsw	x9, [sp, #24]
	ldr	w8, [x8, x9, lsl #2]
	ldr	w9, [sp, #44]
	subs	w9, w9, #1
	ldr	w8, [x8, w9, sxtw #2]
	ldr	w9, [sp, #28]
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB0_29
	b	LBB0_150
LBB0_150:
	ldur	x8, [x29, #-28]
	ldrsw	x9, [sp, #28]
	ldr	x8, [x8, x9, lsl #3]
	ldrsw	x9, [sp, #24]
	ldr	w8, [x8, x9, lsl #2]
	ldr	w9, [sp, #44]
	subs	w9, w9, #1
	ldr	w8, [x8, w9, sxtw #2]
	ldr	w9, [sp, #28]
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB0_29
	b	LBB0_151
LBB0_151:
	ldur	x8, [x29, #-28]
	ldrsw	x9, [sp, #28]
	ldr	x8, [x8, x9, lsl #3]
	ldrsw	x9, [sp, #24]
	ldr	w8, [x8, x9, lsl #2]
	ldr	w9, [sp, #44]
	subs	w9, w9, #1
	ldr	w8, [x8, w9, sxtw #2]
	ldr	w9, [sp, #28]
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB0_29
	b	LBB0_152
LBB0_152:
	ldur	x8, [x29, #-28]
	ldrsw	x9, [sp, #28]
	ldr	x8, [x8, x9, lsl #3]
	ldrsw	x9, [sp, #24]
	ldr	w8, [x8, x9, lsl #2]
	ldr	w9, [sp, #44]
	subs	w9, w9, #1
	ldr	w8, [x8, w9, sxtw #2]
	ldr	w9, [sp, #28]
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB0_29
	b	LBB0_153
LBB0_153:
	ldur	x8, [x29, #-28]
	ldrsw	x9, [sp, #28]
	ldr	x8, [x8, x9, lsl #3]
	ldrsw	x9, [sp, #24]
	ldr	w8, [x8, x9, lsl #2]
	ldr	w9, [sp, #44]
	subs	w9, w9, #1
	ldr	w8, [x8, w9, sxtw #2]
	ldr	w9, [sp, #28]
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB0_29
	b	LBB0_154
LBB0_154:
	ldur	x8, [x29, #-28]
	ldrsw	x9, [sp, #28]
	ldr	x8, [x8, x9, lsl #3]
	ldrsw	x9, [sp, #24]
	ldr	w8, [x8, x9, lsl #2]
	ldr	w9, [sp, #44]
	subs	w9, w9, #1
	ldr	w8, [x8, w9, sxtw #2]
	ldr	w9, [sp, #28]
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB0_29
	b	LBB0_155
LBB0_155:
	ldur	x8, [x29, #-28]
	ldrsw	x9, [sp, #28]
	ldr	x8, [x8, x9, lsl #3]
	ldrsw	x9, [sp, #24]
	ldr	w8, [x8, x9, lsl #2]
	ldr	w9, [sp, #44]
	subs	w9, w9, #1
	ldr	w8, [x8, w9, sxtw #2]
	ldr	w9, [sp, #28]
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB0_29
	b	LBB0_156
LBB0_156:
	ldur	x8, [x29, #-28]
	ldrsw	x9, [sp, #28]
	ldr	x8, [x8, x9, lsl #3]
	ldrsw	x9, [sp, #24]
	ldr	w8, [x8, x9, lsl #2]
	ldr	w9, [sp, #44]
	subs	w9, w9, #1
	ldr	w8, [x8, w9, sxtw #2]
	ldr	w9, [sp, #28]
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB0_29
	b	LBB0_157
LBB0_157:
	ldur	x8, [x29, #-28]
	ldrsw	x9, [sp, #28]
	ldr	x8, [x8, x9, lsl #3]
	ldrsw	x9, [sp, #24]
	ldr	w8, [x8, x9, lsl #2]
	ldr	w9, [sp, #44]
	subs	w9, w9, #1
	ldr	w8, [x8, w9, sxtw #2]
	ldr	w9, [sp, #28]
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB0_29
	b	LBB0_158
LBB0_158:
	ldur	x8, [x29, #-28]
	ldrsw	x9, [sp, #28]
	ldr	x8, [x8, x9, lsl #3]
	ldrsw	x9, [sp, #24]
	ldr	w8, [x8, x9, lsl #2]
	ldr	w9, [sp, #44]
	subs	w9, w9, #1
	ldr	w8, [x8, w9, sxtw #2]
	ldr	w9, [sp, #28]
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB0_29
	b	LBB0_159
LBB0_159:
	ldur	x8, [x29, #-28]
	ldrsw	x9, [sp, #28]
	ldr	x8, [x8, x9, lsl #3]
	ldrsw	x9, [sp, #24]
	ldr	w8, [x8, x9, lsl #2]
	ldr	w9, [sp, #44]
	subs	w9, w9, #1
	ldr	w8, [x8, w9, sxtw #2]
	ldr	w9, [sp, #28]
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB0_29
	b	LBB0_160
LBB0_160:
	ldur	x8, [x29, #-28]
	ldrsw	x9, [sp, #28]
	ldr	x8, [x8, x9, lsl #3]
	ldrsw	x9, [sp, #24]
	ldr	w8, [x8, x9, lsl #2]
	ldr	w9, [sp, #44]
	subs	w9, w9, #1
	ldr	w8, [x8, w9, sxtw #2]
	ldr	w9, [sp, #28]
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB0_29
	b	LBB0_161
LBB0_161:
	ldur	x8, [x29, #-28]
	ldrsw	x9, [sp, #28]
	ldr	x8, [x8, x9, lsl #3]
	ldrsw	x9, [sp, #24]
	ldr	w8, [x8, x9, lsl #2]
	ldr	w9, [sp, #44]
	subs	w9, w9, #1
	ldr	w8, [x8, w9, sxtw #2]
	ldr	w9, [sp, #28]
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB0_29
	b	LBB0_162
LBB0_162:
	ldur	x8, [x29, #-28]
	ldrsw	x9, [sp, #28]
	ldr	x8, [x8, x9, lsl #3]
	ldrsw	x9, [sp, #24]
	ldr	w8, [x8, x9, lsl #2]
	ldr	w9, [sp, #44]
	subs	w9, w9, #1
	ldr	w8, [x8, w9, sxtw #2]
	ldr	w9, [sp, #28]
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB0_29
	b	LBB0_163
LBB0_163:
	ldur	x8, [x29, #-28]
	ldrsw	x9, [sp, #28]
	ldr	x8, [x8, x9, lsl #3]
	ldrsw	x9, [sp, #24]
	ldr	w8, [x8, x9, lsl #2]
	ldr	w9, [sp, #44]
	subs	w9, w9, #1
	ldr	w8, [x8, w9, sxtw #2]
	ldr	w9, [sp, #28]
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB0_29
	b	LBB0_164
LBB0_164:
	ldur	x8, [x29, #-28]
	ldrsw	x9, [sp, #28]
	ldr	x8, [x8, x9, lsl #3]
	ldrsw	x9, [sp, #24]
	ldr	w8, [x8, x9, lsl #2]
	ldr	w9, [sp, #44]
	subs	w9, w9, #1
	ldr	w8, [x8, w9, sxtw #2]
	ldr	w9, [sp, #28]
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB0_29
	b	LBB0_165
LBB0_165:
	ldur	x8, [x29, #-28]
	ldrsw	x9, [sp, #28]
	ldr	x8, [x8, x9, lsl #3]
	ldrsw	x9, [sp, #24]
	ldr	w8, [x8, x9, lsl #2]
	ldr	w9, [sp, #44]
	subs	w9, w9, #1
	ldr	w8, [x8, w9, sxtw #2]
	ldr	w9, [sp, #28]
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB0_29
	b	LBB0_166
LBB0_166:
	ldur	x8, [x29, #-28]
	ldrsw	x9, [sp, #28]
	ldr	x8, [x8, x9, lsl #3]
	ldrsw	x9, [sp, #24]
	ldr	w8, [x8, x9, lsl #2]
	ldr	w9, [sp, #44]
	subs	w9, w9, #1
	ldr	w8, [x8, w9, sxtw #2]
	ldr	w9, [sp, #28]
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB0_29
	b	LBB0_167
LBB0_167:
	ldur	x8, [x29, #-28]
	ldrsw	x9, [sp, #28]
	ldr	x8, [x8, x9, lsl #3]
	ldrsw	x9, [sp, #24]
	ldr	w8, [x8, x9, lsl #2]
	ldr	w9, [sp, #44]
	subs	w9, w9, #1
	ldr	w8, [x8, w9, sxtw #2]
	ldr	w9, [sp, #28]
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB0_29
	b	LBB0_168
LBB0_168:
	ldur	x8, [x29, #-28]
	ldrsw	x9, [sp, #28]
	ldr	x8, [x8, x9, lsl #3]
	ldrsw	x9, [sp, #24]
	ldr	w8, [x8, x9, lsl #2]
	ldr	w9, [sp, #44]
	subs	w9, w9, #1
	ldr	w8, [x8, w9, sxtw #2]
	ldr	w9, [sp, #28]
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB0_29
	b	LBB0_170
LBB0_170:
	ldur	x8, [x29, #-28]
	ldrsw	x9, [sp, #28]
	ldr	x8, [x8, x9, lsl #3]
	ldrsw	x9, [sp, #24]
	ldr	w8, [x8, x9, lsl #2]
	ldr	w9, [sp, #44]
	subs	w9, w9, #1
	ldr	w8, [x8, w9, sxtw #2]
	ldr	w9, [sp, #28]
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB0_29
	b	LBB0_171
LBB0_171:
	ldur	x8, [x29, #-28]
	ldrsw	x9, [sp, #28]
	ldr	x8, [x8, x9, lsl #3]
	ldrsw	x9, [sp, #24]
	ldr	w8, [x8, x9, lsl #2]
	ldr	w9, [sp, #44]
	subs	w9, w9, #1
	ldr	w8, [x8, w9, sxtw #2]
	ldr	w9, [sp, #28]
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB0_29
	b	LBB0_172
LBB0_172:
	ldur	x8, [x29, #-28]
	ldrsw	x9, [sp, #28]
	ldr	x8, [x8, x9, lsl #3]
	ldrsw	x9, [sp, #24]
	ldr	w8, [x8, x9, lsl #2]
	ldr	w9, [sp, #44]
	subs	w9, w9, #1
	ldr	w8, [x8, w9, sxtw #2]
	ldr	w9, [sp, #28]
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB0_29
	b	LBB0_173
LBB0_173:
	ldur	x8, [x29, #-28]
	ldrsw	x9, [sp, #28]
	ldr	x8, [x8, x9, lsl #3]
	ldrsw	x9, [sp, #24]
	ldr	w8, [x8, x9, lsl #2]
	ldr	w9, [sp, #44]
	subs	w9, w9, #1
	ldr	w8, [x8, w9, sxtw #2]
	ldr	w9, [sp, #28]
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB0_29
	b	LBB0_174
LBB0_174:
	ldur	x8, [x29, #-28]
	ldrsw	x9, [sp, #28]
	ldr	x8, [x8, x9, lsl #3]
	ldrsw	x9, [sp, #24]
	ldr	w8, [x8, x9, lsl #2]
	ldr	w9, [sp, #44]
	subs	w9, w9, #1
	ldr	w8, [x8, w9, sxtw #2]
	ldr	w9, [sp, #28]
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB0_29
	b	LBB0_175
LBB0_175:
	ldur	x8, [x29, #-28]
	ldrsw	x9, [sp, #28]
	ldr	x8, [x8, x9, lsl #3]
	ldrsw	x9, [sp, #24]
	ldr	w8, [x8, x9, lsl #2]
	ldr	w9, [sp, #44]
	subs	w9, w9, #1
	ldr	w8, [x8, w9, sxtw #2]
	ldr	w9, [sp, #28]
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB0_29
	b	LBB0_176
LBB0_176:
	ldur	x8, [x29, #-28]
	ldrsw	x9, [sp, #28]
	ldr	x8, [x8, x9, lsl #3]
	ldrsw	x9, [sp, #24]
	ldr	w8, [x8, x9, lsl #2]
	ldr	w9, [sp, #44]
	subs	w9, w9, #1
	ldr	w8, [x8, w9, sxtw #2]
	ldr	w9, [sp, #28]
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB0_29
	b	LBB0_177
LBB0_177:
	ldur	x8, [x29, #-28]
	ldrsw	x9, [sp, #28]
	ldr	x8, [x8, x9, lsl #3]
	ldrsw	x9, [sp, #24]
	ldr	w8, [x8, x9, lsl #2]
	ldr	w9, [sp, #44]
	subs	w9, w9, #1
	ldr	w8, [x8, w9, sxtw #2]
	ldr	w9, [sp, #28]
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB0_29
	b	LBB0_178
LBB0_180:
	ldur	x8, [x29, #-28]
	ldrsw	x9, [sp, #28]
	ldr	x8, [x8, x9, lsl #3]
	ldrsw	x9, [sp, #24]
	ldr	w8, [x8, x9, lsl #2]
	ldr	w9, [sp, #44]
	subs	w9, w9, #1
	ldr	w8, [x8, w9, sxtw #2]
	ldr	w9, [sp, #28]
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB0_29
	b	LBB0_181
LBB0_181:
	ldur	x8, [x29, #-28]
	ldrsw	x9, [sp, #28]
	ldr	x8, [x8, x9, lsl #3]
	ldrsw	x9, [sp, #24]
	ldr	w8, [x8, x9, lsl #2]
	ldr	w9, [sp, #44]
	subs	w9, w9, #1
	ldr	w8, [x8, w9, sxtw #2]
	ldr	w9, [sp, #28]
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB0_29
	b	LBB0_182
LBB0_182:
	ldur	x8, [x29, #-28]
	ldrsw	x9, [sp, #28]
	ldr	x8, [x8, x9, lsl #3]
	ldrsw	x9, [sp, #24]
	ldr	w8, [x8, x9, lsl #2]
	ldr	w9, [sp, #44]
	subs	w9, w9, #1
	ldr	w8, [x8, w9, sxtw #2]
	ldr	w9, [sp, #28]
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB0_29
	b	LBB0_183
LBB0_183:
	ldur	x8, [x29, #-28]
	ldrsw	x9, [sp, #28]
	ldr	x8, [x8, x9, lsl #3]
	ldrsw	x9, [sp, #24]
	ldr	w8, [x8, x9, lsl #2]
	ldr	w9, [sp, #44]
	subs	w9, w9, #1
	ldr	w8, [x8, w9, sxtw #2]
	ldr	w9, [sp, #28]
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB0_29
	b	LBB0_184
LBB0_184:
	ldur	x8, [x29, #-28]
	ldrsw	x9, [sp, #28]
	ldr	x8, [x8, x9, lsl #3]
	ldrsw	x9, [sp, #24]
	ldr	w8, [x8, x9, lsl #2]
	ldr	w9, [sp, #44]
	subs	w9, w9, #1
	ldr	w8, [x8, w9, sxtw #2]
	ldr	w9, [sp, #28]
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB0_29
	b	LBB0_185
LBB0_185:
	ldur	x8, [x29, #-28]
	ldrsw	x9, [sp, #28]
	ldr	x8, [x8, x9, lsl #3]
	ldrsw	x9, [sp, #24]
	ldr	w8, [x8, x9, lsl #2]
	ldr	w9, [sp, #44]
	subs	w9, w9, #1
	ldr	w8, [x8, w9, sxtw #2]
	ldr	w9, [sp, #28]
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB0_29
	b	LBB0_186
LBB0_186:
	ldur	x8, [x29, #-28]
	ldrsw	x9, [sp, #28]
	ldr	x8, [x8, x9, lsl #3]
	ldrsw	x9, [sp, #24]
	ldr	w8, [x8, x9, lsl #2]
	ldr	w9, [sp, #44]
	subs	w9, w9, #1
	ldr	w8, [x8, w9, sxtw #2]
	ldr	w9, [sp, #28]
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB0_29
	b	LBB0_187
LBB0_187:
	ldur	x8, [x29, #-28]
	ldrsw	x9, [sp, #28]
	ldr	x8, [x8, x9, lsl #3]
	ldrsw	x9, [sp, #24]
	ldr	w8, [x8, x9, lsl #2]
	ldr	w9, [sp, #44]
	subs	w9, w9, #1
	ldr	w8, [x8, w9, sxtw #2]
	ldr	w9, [sp, #28]
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB0_29
	b	LBB0_188
LBB0_188:
	ldur	x8, [x29, #-28]
	ldrsw	x9, [sp, #28]
	ldr	x8, [x8, x9, lsl #3]
	ldrsw	x9, [sp, #24]
	ldr	w8, [x8, x9, lsl #2]
	ldr	w9, [sp, #44]
	subs	w9, w9, #1
	ldr	w8, [x8, w9, sxtw #2]
	ldr	w9, [sp, #28]
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB0_29
	b	LBB0_189
LBB0_189:
	ldur	x8, [x29, #-28]
	ldrsw	x9, [sp, #28]
	ldr	x8, [x8, x9, lsl #3]
	ldrsw	x9, [sp, #24]
	ldr	w8, [x8, x9, lsl #2]
	ldr	w9, [sp, #44]
	subs	w9, w9, #1
	ldr	w8, [x8, w9, sxtw #2]
	ldr	w9, [sp, #28]
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB0_29
	b	LBB0_190
LBB0_190:
	ldur	x8, [x29, #-28]
	ldrsw	x9, [sp, #28]
	ldr	x8, [x8, x9, lsl #3]
	ldrsw	x9, [sp, #24]
	ldr	w8, [x8, x9, lsl #2]
	ldr	w9, [sp, #44]
	subs	w9, w9, #1
	ldr	w8, [x8, w9, sxtw #2]
	ldr	w9, [sp, #28]
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB0_29
	b	LBB0_191
LBB0_191:
	ldur	x8, [x29, #-28]
	ldrsw	x9, [sp, #28]
	ldr	x8, [x8, x9, lsl #3]
	ldrsw	x9, [sp, #24]
	ldr	w8, [x8, x9, lsl #2]
	ldr	w9, [sp, #44]
	subs	w9, w9, #1
	ldr	w8, [x8, w9, sxtw #2]
	ldr	w9, [sp, #28]
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB0_29
	b	LBB0_192
LBB0_192:
	ldur	x8, [x29, #-28]
	ldrsw	x9, [sp, #28]
	ldr	x8, [x8, x9, lsl #3]
	ldrsw	x9, [sp, #24]
	ldr	w8, [x8, x9, lsl #2]
	ldr	w9, [sp, #44]
	subs	w9, w9, #1
	ldr	w8, [x8, w9, sxtw #2]
	ldr	w9, [sp, #28]
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB0_29
	b	LBB0_193
LBB0_193:
	ldur	x8, [x29, #-28]
	ldrsw	x9, [sp, #28]
	ldr	x8, [x8, x9, lsl #3]
	ldrsw	x9, [sp, #24]
	ldr	w8, [x8, x9, lsl #2]
	ldr	w9, [sp, #44]
	subs	w9, w9, #1
	ldr	w8, [x8, w9, sxtw #2]
	ldr	w9, [sp, #28]
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB0_29
	b	LBB0_194
LBB0_194:
	ldur	x8, [x29, #-28]
	ldrsw	x9, [sp, #28]
	ldr	x8, [x8, x9, lsl #3]
	ldrsw	x9, [sp, #24]
	ldr	w8, [x8, x9, lsl #2]
	ldr	w9, [sp, #44]
	subs	w9, w9, #1
	ldr	w8, [x8, w9, sxtw #2]
	ldr	w9, [sp, #28]
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB0_29
	b	LBB0_195
LBB0_195:
	ldur	x8, [x29, #-28]
	ldrsw	x9, [sp, #28]
	ldr	x8, [x8, x9, lsl #3]
	ldrsw	x9, [sp, #24]
	ldr	w8, [x8, x9, lsl #2]
	ldr	w9, [sp, #44]
	subs	w9, w9, #1
	ldr	w8, [x8, w9, sxtw #2]
	ldr	w9, [sp, #28]
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB0_29
	b	LBB0_196
LBB0_196:
	ldur	x8, [x29, #-28]
	ldrsw	x9, [sp, #28]
	ldr	x8, [x8, x9, lsl #3]
	ldrsw	x9, [sp, #24]
	ldr	w8, [x8, x9, lsl #2]
	ldr	w9, [sp, #44]
	subs	w9, w9, #1
	ldr	w8, [x8, w9, sxtw #2]
	ldr	w9, [sp, #28]
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB0_29
	b	LBB0_197
LBB0_197:
	ldur	x8, [x29, #-28]
	ldrsw	x9, [sp, #28]
	ldr	x8, [x8, x9, lsl #3]
	ldrsw	x9, [sp, #24]
	ldr	w8, [x8, x9, lsl #2]
	ldr	w9, [sp, #44]
	subs	w9, w9, #1
	ldr	w8, [x8, w9, sxtw #2]
	ldr	w9, [sp, #28]
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB0_29
	b	LBB0_198
LBB0_198:
	ldur	x8, [x29, #-28]
	ldrsw	x9, [sp, #28]
	ldr	x8, [x8, x9, lsl #3]
	ldrsw	x9, [sp, #24]
	ldr	w8, [x8, x9, lsl #2]
	ldr	w9, [sp, #44]
	subs	w9, w9, #1
	ldr	w8, [x8, w9, sxtw #2]
	ldr	w9, [sp, #28]
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB0_29
	b	LBB0_200
LBB0_200:
	ldur	x8, [x29, #-28]
	ldrsw	x9, [sp, #28]
	ldr	x8, [x8, x9, lsl #3]
	ldrsw	x9, [sp, #24]
	ldr	w8, [x8, x9, lsl #2]
	ldr	w9, [sp, #44]
	subs	w9, w9, #1
	ldr	w8, [x8, w9, sxtw #2]
	ldr	w9, [sp, #28]
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB0_29
	b	LBB0_201
LBB0_201:
	ldur	x8, [x29, #-28]
	ldrsw	x9, [sp, #28]
	ldr	x8, [x8, x9, lsl #3]
	ldrsw	x9, [sp, #24]
	ldr	w8, [x8, x9, lsl #2]
	ldr	w9, [sp, #44]
	subs	w9, w9, #1
	ldr	w8, [x8, w9, sxtw #2]
	ldr	w9, [sp, #28]
	subs	w8, w8, w9
