.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 13, 0	sdk_version 13, 3
	.globl	_func0                          ; -- Begin function func0
	.p2align	2
_func0:                                 ; @func0
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #160
	.cfi_def_cfa_offset 160
	stp	x29, x30, [sp, #144]            ; 16-byte Folded Spill
	add	x29, sp, #144
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	stur	x8, [x29, #-8]
	str	x0, [sp, #16]
	movi.2d	v0, #0000000000000000
	str	q0, [sp, #96]
	add	x0, sp, #18
	adrp	x1, l___const.func0.numto@PAGE
	add	x1, x1, l___const.func0.numto@PAGEOFF
	mov	w2, #80
	bl	_memcpy
	str	wzr, [sp, #10]
	ldr	x8, [sp, #16]
	ldrb	w8, [x8]
	subs	w8, w8, #0
	cset	w8, eq
	tbnz	w8, #0, LBB0_17
	b	LBB0_1
LBB0_1:
	b	LBB0_2
LBB0_2:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_3 Depth 2
                                        ;     Child Loop BB0_9 Depth 2
	str	wzr, [sp, #12]
	b	LBB0_3
LBB0_3:                                 ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldr	x8, [sp, #16]
	ldrsw	x9, [sp, #12]
	ldrsb	w8, [x8, x9]
	subs	w8, w8, #32
	cset	w8, eq
	mov	w9, #0
	str	w9, [sp, #4]                    ; 4-byte Folded Spill
	tbnz	w8, #0, LBB0_5
	b	LBB0_4
LBB0_4:                                 ;   in Loop: Header=BB0_3 Depth=2
	ldr	x8, [sp, #16]
	ldrsw	x9, [sp, #12]
	ldrsb	w8, [x8, x9]
	subs	w8, w8, #0
	cset	w8, ne
	str	w8, [sp, #4]                    ; 4-byte Folded Spill
	b	LBB0_5
LBB0_5:                                 ;   in Loop: Header=BB0_3 Depth=2
	ldr	w8, [sp, #4]                    ; 4-byte Folded Reload
	tbz	w8, #0, LBB0_8
	b	LBB0_6
LBB0_6:                                 ;   in Loop: Header=BB0_3 Depth=2
	ldr	w8, [sp, #12]
	add	w8, w8, #1
	str	w8, [sp, #12]
	ldr	w8, [sp, #10]
	add	w8, w8, #1
	str	w8, [sp, #10]
	b	LBB0_2
LBB0_7:                                 ;   in Loop: Header=BB0_3 Depth=2
	ldr	w8, [sp, #12]
	add	w8, w8, #1
	str	w8, [sp, #12]
	b	LBB0_3
LBB0_8:                                 ;   in Loop: Header=BB0_2 Depth=1
	ldrsw	x9, [sp, #12]
	add	x8, sp, #18
	add	x8, x8, x9, lsl #3
	ldrb	w8, [x8]
	adrp	x9, _func0.out@PAGE
	add	x9, x9, _func0.out@PAGEOFF
	strb	w8, [x9]
	b	LBB0_9
LBB0_9:                                 ;   in Loop: Header=BB0_2 Depth=2
	ldr	w8, [sp, #18]
	add	w8, w8, #1
	str	w8, [sp, #18]
	ldr	w8, [sp, #10]
	add	w8, w8, #1
	str	w8, [sp, #10]
	b	LBB0_2
LBB0_10:                                ;   in Loop: Header=BB0_2 Depth=1
	ldr	w8, [sp, #10]
	subs	w8, w8, #1
	add	x8, sp, #18
	adrp	x9, _func0.out@PAGE
	add	x9, x9, _func0.out@PAGEOFF
	add	x9, x8, x9, lsl #3
	strb	wzr, [x9]
	b	LBB0_11
LBB0_11:
	bl	___stack_chk_fail
LBB0_12:
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	subs	x8, x8, x9
	cset	w8, eq
	tbnz	w8, #0, LBB0_14
	b	LBB0_13
LBB0_13:
	adrp	x8, _func0.out@PAGE
	add	x8, x8, _func0.out@PAGEOFF
	add	x8, x8, #160
	and	x8, x8, #0xff00
	ldr	q0, [x8]
	str	q0, [sp, #96]
	b	LBB0_15
LBB0_14:
	adrp	x8, _func0.out@PAGE
	add	x8, x8, _func0.out@PAGEOFF
	add	x8, x8, #10
	str	x8, [sp, #16]
	b	LBB0_15
LBB0_15:                                ;   in Loop: Header=BB0_2 Depth=1
	ldr	w8, [sp, #10]
	add	w8, w8, #1
	str	w8, [sp, #10]
	ldr	w8, [sp, #10]
	add	w8, w8, #1
	str	w8, [sp, #10]
	b	LBB0_15
LBB0_16:
	ldr	w8, [sp, #10]
	add	w8, w8, #1
	ldr	x9, [sp, #16]
	add	x9, x9, w8, sxtw #3
	str	x9, [sp, #16]
	b	LBB0_17
LBB0_17:
	ldr	x8, [sp, #16]
	ldur	x9, [x8]
	adrp	x8, _func0.out@PAGE
	add	x8, x8, _func0.out@PAGEOFF
	str	x8, [sp, #16]
	b	LBB0_18
LBB0_18:
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	ldur	x9, [x29, #-8]
	subs	x8, x8, x9
	cset	w8, eq
	tbnz	w8, #0, LBB0_20
	b	LBB0_19
LBB0_20:
	adrp	x8, _func0.out@PAGE
	add	x8, x8, _func0.out@PAGEOFF
	add	x8, x8, #160
	and	x8, x8, #0xff00
	ldr	q0, [x8]
	str	q0, [sp, #96]
	b	LBB0_22
LBB0_21:
	adrp	x8, _func0.out@PAGE
	add	x8, x8, _func0.out@PAGEOFF
	add	x8, x8, #10
	str	x8, [sp, #16]
	b	LBB0_22
LBB0_22:                                ;   in Loop: Header=BB0_2 Depth=2
	ldr	w8, [sp, #10]
	ldrsw	x9, [sp, #12]
	ldrsb	w8, [x8, x9, lsl #2]
	subs	w8, w8, #0
	cset	w8, eq
	mov	w9, #1
	str	w9, [sp, #4]                    ; 4-byte Folded Spill
	tbnz	w8, #0, LBB0_24
	b	LBB0_3
LBB0_23:                                ;   in Loop: Header=BB0_2 Depth=2
	ldr	w8, [sp, #10]
	ldrsw	x9, [sp, #12]
	add	x8, sp, #18
	add	x8, x8, x9, lsl #3
	ldrb	w8, [x8]
	ldr	w9, [sp, #10]
	add	w9, w9, #1
	strb	w8, [x9]
	b	LBB0_25
LBB0_24:                                ;   in Loop: Header=BB0_2 Depth=2
	ldr	w8, [sp, #18]
	add	w8, w8, #1
	str	w8, [sp, #18]
	ldr	w8, [sp, #10]
	add	w8, w8, #1
	str	w8, [sp, #10]
	b	LBB0_25
LBB0_25:
	ldrsw	x9, [sp, #10]
	add	x8, sp, #18
	add	x8, x8, x9, lsl #3
	ldrb	w8, [x8]
	adrp	x9, _func0.out@PAGE
	add	x9, x9, _func0.out@PAGEOFF
	strb	w8, [x9]
	b	LBB0_26
LBB0_26:
	ldr	x8, [sp, #16]
	ldur	x9, [x8]
	adrp	x8, _func0.out@PAGE
	add	x8, x8, _func0.out@PAGEOFF
	str	x8, [sp, #16]
	b	LBB0_27
LBB0_27:
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	ldur	x9, [x29, #-8]
	subs	x8, x8, x9
	cset	w8, eq
	tbnz	w8, #0, LBB0_31
	b	LBB0_32
LBB0_32:
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	ldur	x9, [x29, #-8]
	subs	x8, x8, x9
	cset	w8, eq
	tbnz	w8, #0, LBB0_34
	b	LBB0_35
LBB0_33:
	adrp	x8, _func0.out@PAGE
	add	x8, x8, _func0.out@PAGEOFF
	add	x8, x8, #160
	and	x8, x8, #0xff00
	ldr	q0, [x8]
	str	q0, [sp, #96]
	b	LBB0_35
LBB0_34:
	adrp	x8, _func0.out@PAGE
	add	x8, x8, _func0.out@PAGEOFF
	add	x8, x8, #10
	str	x8, [sp, #16]
	b	LBB0_35
LBB0_35:                                ;   in Loop: Header=BB0_2 Depth=1
	ldr	w8, [sp, #10]
	add	w8, w8, #1
	str	w8, [sp, #10]
	ldr	w8, [sp, #10]
	add	w8, w8, #1
	str	w8, [sp, #10]
	b	LBB0_35
LBB0_36:
	ldr	w8, [sp, #10]
	add	w8, w8, #1
	ldr	x9, [sp, #16]
	add	x9, x9, w8, sxtw #3
	str	x9, [sp, #16]
	b	LBB0_37
LBB0_37:
	adrp	x8, _func0.out@PAGE
	add	x8, x8, _func0.out@PAGEOFF
	add	x8, x8, #160
	and	x8, x8, #0xff00
	ldr	q0, [x8]
	str	q0, [sp, #96]
	b	LBB0_40
LBB0_40:
	adrp	x8, _func0.out@PAGE
	add	x8, x8, _func0.out@PAGEOFF
	add	x8, x8, #10
	str	x8, [sp, #16]
	b	LBB0_40
LBB0_41:                                ;   in Loop: Header=BB0_2 Depth=2
	adrp	x8, _func0.out@PAGE
	add	x8, x8, _func0.out@PAGEOFF
	add	x8, x8, #10
	str	x8, [sp, #16]
	b	LBB0_40
LBB0_42:                                ;   in Loop: Header=BB0_2 Depth=2
	ldrsw	x9, [sp, #10]
	add	x8, sp, #18
	add	x8, x8, x9, lsl #2
	ldrb	w8, [x8]
	ldr	w9, [sp, #10]
	add	w9, w9, #1
	strb	w8, [x9]
	b	LBB0_43
LBB0_43:                                ;   in Loop: Header=BB0_2 Depth=2
	ldr	w8, [sp, #10]
	add	w8, w8, #1
	str	w8, [sp, #10]
	ldr	w8, [sp, #10]
	add	w8, w8, #1
	str	w8, [sp, #10]
	b	LBB0_43
LBB0_44:
	ldrsw	x9, [sp, #10]
	add	x8, sp, #18
	add	x8, x8, x9, lsl #3
	ldrb	w8, [x8]
	adrp	x9, _func0.out@PAGE
	add	x9, x9, _func0.out@PAGEOFF
	strb	w8, [x9]
	b	LBB0_45
LBB0_45:
	ldr	x8, [sp, #16]
	ldur	x9, [x8]
	adrp	x8, _func0.out@PAGE
	add	x8, x8, _func0.out@PAGEOFF
	str	x8, [sp, #16]
	b	LBB0_46
LBB0_46:
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	ldur	x9, [x29, #-8]
	subs	x8, x8, x9
	cset	w8, eq
	tbnz	w8, #0, LBB0_48
	b	LBB0_49
LBB0_47:
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	ldur	x9, [x29, #-8]
	subs	x8, x8, x9
	cset	w8, eq
	tbnz	w8, #0, LBB0_50
	b	LBB0_49
LBB0_48:
	adrp	x8, _func0.out@PAGE
	add	x8, x8, _func0.out@PAGEOFF
	add	x8, x8, #160
	and	x8, x8, #0xff00
	ldr	q0, [x8]
	str	q0, [sp, #96]
	b	LBB0_56
LBB0_56:
	adrp	x8, _func0.out@PAGE
	add	x8, x8, _func0.out@PAGEOFF
	add	x8, x8, #10
	str	x8, [sp, #16]
	b	LBB0_56
LBB0_57:                                ;   in Loop: Header=BB0_2 Depth=2
	adrp	x8, _func0.out@PAGE
	add	x8, x8, _func0.out@PAGEOFF
	add	x8, x8, #10
	str	x8, [sp, #16]
	b	LBB0_56
LBB0_58:                                ;   in Loop: Header=BB0_2 Depth=2
	adrp	x8, _func0.out@PAGE
	add	x8, x8, _func0.out@PAGEOFF
	add	x8, x8, #1
	str	w8, [sp, #10]
	ldr	w8, [sp, #10]
	add	w8, w8, #1
	str	w8, [sp, #10]
	b	LBB0_56
LBB0_59:
	ldr	w8, [sp, #10]
	add	w8, w8, #1
	ldr	x9, [sp, #16]
	add	x9, x9, w8, sxtw #3
	str	x9, [sp, #16]
	b	LBB0_60
LBB0_60:
	adrp	x8, _func0.out@PAGE
	add	x8, x8, _func0.out@PAGEOFF
	add	x8, x8, #160
	and	x8, x8, #0xff00
	ldr	q0, [x8]
	str	q0, [sp, #96]
	b	LBB0_62
LBB0_62:
	adrp	x8, _func0.out@PAGE
	add	x8, x8, _func0.out@PAGEOFF
	add	x8, x8, #10
	str	x8, [sp, #16]
	b	LBB0_62
LBB0_63:                                ;   in Loop: Header=BB0_2 Depth=2
	adrp	x8, _func0.out@PAGE
	add	x8, x8, _func0.out@PAGEOFF
	add	x8, x8, #10
	str	x8, [sp, #16]
	b	LBB0_62
LBB0_64:                                ;   in Loop: Header=BB0_2 Depth=2
	adrp	x8, _func0.out@PAGE
	add	x8, x8, _func0.out@PAGEOFF
	add	x8, x8, #1
	ldr	w8, [sp, #10]
	add	w8, w8, #1
	str	w8, [sp, #10]
	b	LBB0_62
LBB0_65:
	ldrsw	x9, [sp, #10]
	add	x8, sp, #18
	add	x8, x8, x9, lsl #2
	ldrb	w8, [x8]
	adrp	x9, _func0.out@PAGE
	add	x9, x9, _func0.out@PAGEOFF
	strb	w8, [x9]
	b	LBB0_66
LBB0_66:
	ldr	x8, [sp, #16]
	ldur	x9, [x8]
	adrp	x8, _func0.out@PAGE
	add	x8, x8, _func0.out@PAGEOFF
	str	x8, [sp, #16]
	b	LBB0_67
LBB0_67:
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	ldur	x9, [x29, #-8]
	subs	x8, x8, x9
	cset	w8, eq
	tbnz	w8, #0, LBB0_89
	b	LBB0_68
LBB0_89:
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	ldur	x9, [x29, #-8]
	subs	x8, x8, x9
	cset	w8, eq
	tbnz	w8, #0, LBB0_91
	b	LBB0_70
LBB0_90:
	adrp	x8, _func0.out@PAGE
	add	x8, x8, _func0.out@PAGEOFF
	add	x8, x8, #160
	and	x8, x8, #0xff00
	ldr	q0, [x8]
	str	q0, [sp, #96]
	b	LBB0_98
LBB0_98:
	adrp	x8, _func0.out@PAGE
	add	x8, x8, _func0.out@PAGEOFF
	add	x8, x8, #10
	str	x8, [sp, #16]
	b	LBB0_98
LBB0_99:                                ;   in Loop: Header=BB0_2 Depth=2
	adrp	x8, _func0.out@PAGE
	add	x8, x8, _func0.out@PAGEOFF
	add	x8, x8, #10
	str	x8, [sp, #16]
	b	LBB0_98
LBB0_100:                                ;   in Loop: Header=BB0_2 Depth=2
	adrp	x8, _func0.out@PAGE
	add	x8, x8, _func0.out@PAGEOFF
	add	x8, x8, #1
	ldr	w8, [sp, #10]
	add	w8, w8, #1
	str	w8, [sp, #10]
	b	LBB0_98
LBB0_101:
	ldrsw	x9, [sp, #10]
	add	x8, sp, #18
	add	x8, x8, x9, lsl #3
	ldrb	w8, [x8]
	adrp	x9, _func0.out@PAGE
	add	x9, x9, _func0.out@PAGEOFF
	strb	w8, [x9]
	b	LBB0_103
LBB0_102:
	adrp	x8, _func0.out@PAGE
	add	x8, x8, _func0.out@PAGEOFF
	add	x8, x8, #10
	str	x8, [sp, #16]
	b	LBB0_103
LBB0_13:
	adrp	x8, _func0.out@PAGE
	add	x8, x8, _func0.out@PAGEOFF
	add	x8, x8, #1
	ldr	w8, [sp, #10]
	add	w8, w8, #1
	str	w8, [sp, #10]
	b	LBB0_13
LBB0_14:
	ldrsw	x9, [sp, #10]
	add	x8, sp, #18
	add	x8, x8, x9, lsl #3
	ldrb	w8, [x8]
	adrp	x9, _func0.out@PAGE
	add	x9, x9, _func0.out@PAGEOFF
	strb	w8, [x9]
	b	LBB0_15
LBB0_15:
	ldr	x8, [sp, #16]
	ldur	x9, [x8]
	adrp	x8, _func0.out@PAGE
	add	x8, x8, _func0.out@PAGEOFF
	str	x8, [sp, #16]
	b	LBB0_16
LBB0_16:
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	ldur	x9, [x29, #-8]
	subs	x8, x8, x9
	cset	w8, eq
	tbnz	w8, #0, LBB0_18
	b	LBB0_19
LBB0_17:
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	ldur	x9, [x29, #-8]
	subs	x8, x8, x9
	cset	w8, eq
	tbnz	w8, #0, LBB0_20
	b	LBB0_19
LBB0_18:
	adrp	x8, _func0.out@PAGE
	add	x8, x8, _func0.out@PAGEOFF
	add	x8, x8, #160
	and	x8, x8, #0xff00
	ldr	q0, [x8]
	str	q0, [sp, #96]
	b	LBB0_24
LBB0_20:
	adrp	x8, _func0.out@PAGE
	add	x8, x8, _func0.out@PAGEOFF
	add	x8, x8, #10
	str	x8, [sp, #16]
	b	LBB0_24
LBB0_21:                                ;   in Loop: Header=BB0_2 Depth=2
	adrp	x8, _func0.out@PAGE
	add	x8, x8, _func0.out@PAGEOFF
	add	x8, x8, #10
	str	x8, [sp, #16]
	b	LBB0_24
LBB0_22:                                ;   in Loop: Header=BB0_2 Depth=2
	adrp	x8, _func0.out@PAGE
	add	x8, x8, _func0.out@PAGEOFF
	add	x8, x8, #1
	ldr	w8, [sp, #10]
	add	w8, w8, #1
	str	w8, [sp, #10]
	b	LBB0_24
LBB0_23:
	ldrsw	x9, [sp, #10]
	add	x8, sp, #18
	add	x8, x8, x9, lsl #3
	ldrb	w8, [x8]
	adrp	x9, _func0.out@PAGE
	add	x9, x9, _func0.out@PAGEOFF
	strb	w8, [x9]
	b	LBB0_25
LBB0_24:
	adrp	x8, _func0.out@PAGE
	add	x8, x8, _func0.out@PAGEOFF
	add	x8, x8, #10
	str	x8, [sp, #16]
	b	LBB0_25
LBB0_25:
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	ldur	x9, [x29, #-8]
	subs	x8, x8, x9
	cset	w8, eq
	tbnz	w8, #0, LBB0_27
	b	LBB0_28
LBB0_26:
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	ldur	x9, [x29, #-8]
	subs	x8, x8, x9
	cset	w8, eq
	tbnz	w8, #0, LBB0_29
	b	LBB0_30
LBB0_27:
	adrp	x8, _func0.out@PAGE
	add	x8, x8, _func0.out@PAGEOFF
	add	x8, x8, #160
	and	x8, x8, #0xff00
	ldr	q0, [x8]
	str	q0, [sp, #96]
	b	LBB0_32
LBB0_30:
	adrp	x8, _func0.out@PAGE
	add	x8, x8, _func0.out@PAGEOFF
	add	x8, x8, #10
	str	x8, [sp, #16]
	b	LBB0_32
LBB0_31:                                ;   in Loop: Header=BB0_2 Depth=2
	adrp	x8, _func0.out@PAGE
	add	x8, x8, _func0.out@PAGEOFF
	add	x8, x8, #10
	str	x8, [sp, #16]
	b	LBB0_32
LBB0_32:                                ;   in Loop: Header=BB0_2 Depth=2
	adrp	x8, _func0.out@PAGE
	add	x8, x8, _func0.out@PAGEOFF
	add	x8, x8, #1
	ldr	w8, [sp, #10]
	add	w8, w8, #1
	str	w8, [sp, #10]
	b	LBB0_32
LBB0_33:
	ldrsw	x9, [sp, #10]
	add	x8, sp, #18
	add	x8, x8, x9, lsl #3
	ldrb	w8, [x8]
	adrp	x9, _func0.out@PAGE
	add	x9, x9, _func0.out@PAGEOFF
	strb	w8, [x9]
	b	LBB0_35
LBB0_34:
	adrp	x8, _func0.out@PAGE
	add	x8, x8, _func0.out@PAGEOFF
	add	x8, x8, #10
	str	x8, [sp, #16]
	b	LBB0_35
LBB0_35:
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	ldur	x9, [x29, #-8]
	subs	x8, x8, x9
	cset	w8, eq
	tbnz	w8, #0, LBB0_37
	b	LBB0_38
LBB0_36:
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	ldur	x9, [x29, #-8]
	subs	x8, x8, x9
	cset	w8, eq
	tbnz	w8, #0, LBB0_39
	b	LBB0_40
LBB0_37:
	adrp	x8, _func0.out@PAGE
	add	x8, x8, _func0.out@PAGEOFF
	add	x8, x8, #160
	and	x8, x8, #0xff00
	ldr	q0, [x8]
	str	q0, [sp, #96]
	b	LBB0_42
LBB0_40:
	adrp	x8, _func0.out@PAGE
	add	x8, x8, _func0.out@PAGEOFF
	add	x8, x8, #10
	str	x8, [sp, #16]
	b	LBB0_42
LBB0_41:                                ;   in Loop: Header=BB0_2 Depth=2
	adrp	x8, _func0.out@PAGE
	add	x8, x8, _func0.out@PAGEOFF
	add	x8, x8, #10
	str	x8, [sp, #16]
	b	LBB0_42
LBB0_42:                                ;   in Loop: Header=BB0_2 Depth=2
	adrp	x8, _func0.out@PAGE
	add	x8, x8, _func0.out@PAGEOFF
	add	x8, x8, #1
	ldr	w8, [sp, #10]
	add	w8, w8, #1
	str	w8, [sp, #10]
	b	LBB0_42
LBB0_43:
	ldrsw	x9, [sp, #10]
	add	x8, sp, #18
	add	x8, x8, x9, lsl #3
	ldrb	w8, [x8]
	adrp	x9, _func0.out@PAGE
	add	x9, x9, _func0.out@PAGEOFF
	strb	w8, [x9]
	b	LBB0_45
LBB0_44:
	adrp	x8, _func0.out@PAGE
	add	x8, x8, _func0.out@PAGEOFF
	add	x8, x8, #10
	str	x8, [sp, #16]
	b	LBB0_45
LBB0_45:
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	ldur	x9, [x29, #-8]
	subs	x8, x8, x9
	cset	w8, eq
	tbnz	w8, #0, LBB0_47
	b	LBB0_48
LBB0_46:
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	ldur	x9, [x29, #-8]
	subs	x8, x8, x9
	cset	w8, eq
	tbnz	w8, #0, LBB0_49
	b	LBB0_50
LBB0_47:
	adrp	x8, _func0.out@PAGE
	add	x8, x8, _func0.out@PAGEOFF
	add	x8, x8, #160
	and	x8, x8, #0xff00
	ldr	q0, [x8]
	str	q0, [sp, #96]
	b	LBB0_56
LBB0_50:
	adrp	x8, _func0.out@PAGE
	add	x8, x8, _func0.out@PAGEOFF
	add	x8, x8, #10
	str	x8, [sp, #16]
	b	LBB0_56
LBB0_51:                                ;   in Loop: Header=BB0_2 Depth=2
	adrp	x8, _func0.out@PAGE
	add	x8, x8, _func0.out@PAGEOFF
	add	x8, x8, #10
	str	x8, [sp, #16]
	b	LBB0_56
LBB0_52:                                ;   in Loop: Header=BB0_2 Depth=2
	adrp	x8, _func0.out@PAGE
	add	x8, x8, _func0.out@PAGEOFF
	add	x8, x8, #1
	ldr	w8, [sp, #10]
	add	w8, w8, #1
	str	w8, [sp, #10]
	b	LBB0_56
LBB0_53:
	ldrsw	x9, [sp, #10]
	add	x8, sp, #18
	add	x8, x8, x9, lsl #3
	ldrb	w8, [x8]
	adrp	x9, _func0.out@PAGE
	add	x9, x9, _func0.out@PAGEOFF
	strb	w8, [x9]
	b	LBB0_55
LBB0_54:
	adrp	x8, _func0.out@PAGE
	add	x8, x8, _func0.out@PAGEOFF
	add	x8, x8, #10
	str	x8, [sp, #16]
	b	LBB0_55
LBB0_55:
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	ldur	x9, [x29, #-8]
	subs	x8, x8, x9
	cset	w8, eq
	tbnz	w8, #0, LBB0_67
	b	LBB0_68
LBB0_66:
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	ldur	x9, [x29, #-8]
	subs	x8, x8, x9
	cset	w8, eq
	tbnz	w8, #0, LBB0_69
	b	LBB0_70
LBB0_67:
	adrp	x8, _func0.out@PAGE
	add	x8, x8, _func0.out@PAGEOFF
	add	x8, x8, #160
	and	x8, x8, #0xff00
	ldr	q0, [x8]
	str	q0, [sp, #96]
	b	LBB0_70
LBB0_70:
	adrp	x8, _func0.out@PAGE
	add	x8, x8, _func0.out@PAGEOFF
	add	x8, x8, #10
	str	x8, [sp, #16]
	b	LBB0_70
LBB0_71:                                ;   in Loop: Header=BB0_2 Depth=2
	adrp	x8, _func0.out@PAGE
	add	x8, x8, _func0.out@PAGEOFF
	add	x8, x8, #10
	str	x8, [sp, #16]
	b	LBB0_70
LBB0_72:                                ;   in Loop: Header=BB0_2 Depth=2
	adrp	x8, _func0.out@PAGE
	add	x8, x8, _func0.out@PAGEOFF
	add	x8, x8, #1
	ldr	w8, [sp, #10]
	add	w8, w8, #1
	str	w8, [sp, #10]
	b	LBB0_70
LBB0_73:
	ldrsw	x9, [sp, #10]
	add	x8, sp, #18
	add	x8, x8, x9, lsl #3
	ldrb	w8, [x8]
	adrp	x9, _func0.out@PAGE
	add	x9, x9, _func0.out@PAGEOFF
	strb	w8, [x9]
	b	LBB0_75
LBB0_74:
	adrp	x8, _func0.out@PAGE
	add	x8, x8, _func0.out@PAGEOFF
	add	x8, x8, #10
	str	x8, [sp, #16]
	b	LBB0_75
LBB0_75:
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	ldur	x9, [x29, #-8]
	subs	x8, x8, x9
	cset	w8, eq
	tbnz	w8, #0, LBB0_77
	b	LBB0_78
LBB0_76:
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	ldur	x9, [x29, #-8]
	subs	x8, x8, x9
	cset	w8, eq
	tbnz	w8, #0, LBB0_78
	b	LBB0_80
LBB0_77:
	adrp	x8, _func0.out@PAGE
	add	x8, x8, _func0.out@PAGEOFF
	add	x8, x8, #160
	and	x8, x8, #0xff00
	ldr	q0, [x8]
	str	q0, [sp, #96]
	b	LBB0_82
LBB0_82:
	adrp	x8, _func0.out@PAGE
	add	x8, x8, _func0.out@PAGEOFF
	add	x8, x8, #10
	str	x8, [sp, #16]
	b	LBB0_82
LBB0_83:                                ;   in Loop: Header=BB0_2 Depth=2
	adrp	x8, _func0.out@PAGE
	add	x8, x8, _func0.out@PAGEOFF
	add	x8, x8, #10
	str	x8, [sp, #16]
	b	LBB0_82
LBB0_84:                                ;   in Loop: Header=BB0_2 Depth=2
	adrp	x8, _func0.out@PAGE
	add	x8, x8, _func0.out@PAGEOFF
	add	x8, x8, #1
	ldr	w8, [sp, #10]
	add	w8, w8, #1
	str	w8, [sp, #10]
	b	LBB0_82
LBB0_85:
	ldrsw	x9, [sp, #10]
	add	x8, sp, #18
	add	x8, x8, x9, lsl #3
	ldrb	w8, [x8]
	adrp	x9, _func0.out@PAGE
	add	x9, x9, _func0.out@PAGEOFF
	strb	w8, [x9]
	b	LBB0_87
LBB0_86:
	adrp	x8, _func0.out@PAGE
	add	x8, x8, _func0.out@PAGEOFF
	add	x8, x8, #10
	str	x8, [sp, #16]
	b	LBB0_87
LBB0_87:
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	ldur	x9, [x29, #-8]
	subs	x8, x8, x9
	cset	w8, eq
	tbnz	w8, #0, LBB0_95
	b	LBB0_96
LBB0_88:
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	ldur	x9, [x29, #-8]
	subs	x8, x8, x9
	cset	w8, eq
	tbnz	w8, #0, LBB0_97
	b	LBB0_98
LBB0_89:
	adrp	x8, _func0.out@PAGE
	add	x8, x8, _func0.out@PAGEOFF
	add	x8, x8, #160
	and	x8, x8, #0xff00
	ldr	q0, [x8]
	str	q0, [sp, #96]
	b	LBB0_100
LBB0_90:
	adrp	x8, _func0.out@PAGE
	add	x8, x8, _func0.out@PAGEOFF
	add	x8, x8, #10
	str	x8, [sp, #16]
	b	LBB0_100
LBB0_91:                                ;   in Loop: Header=BB0_2 Depth=2
	adrp	x8, _func0.out@PAGE
	add	x8, x8, _func0.out@PAGEOFF
	add	x8, x8, #10
	str	x8, [sp, #16]
	b	LBB0_100
LBB0_92:                                ;   in Loop: Header=BB0_2 Depth=2
	adrp	x8, _func0.out@PAGE
	add	x8, x8, _func0.out@PAGEOFF
	add	x8, x8, #1
	ldr	w8, [sp, #10]
	add	w8, w8, #1
	str	w8, [sp, #10]
	b	LBB0_100
LBB0_93:
	ldrsw	x9, [sp, #10]
	add	x8, sp, #18
	add	x8, x8, x9, lsl #3
	ldrb	w8, [x8]
	adrp	x9, _func0.out@PAGE
	add	x9, x9, _func0.out@PAGEOFF
	strb	w8, [x9]
	b	LBB0_105
LBB0_94:
	adrp	x8, _func0.out@PAGE
	add	x8, x8, _func0.out@PAGEOFF
	add	x8, x8, #10
	str	x8, [sp, #16]
	b	LBB0_105
LBB0_95:
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	ldur	x9, [x29, #-8]
	subs	x8, x8, x9
	cset	w8, eq
	tbnz	w8, #0, LBB0_113
	b	LBB0_120
LBB0_96:
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	ldur	x9, [x29, #-8]
	subs	x8, x8, x9
	cset	w8, eq
	tbnz	w8, #0, LBB0_115
	b	LBB0_97
LBB0_97:
	adrp	x8, _func0.out@PAGE
	add	x8, x8, _func0.out@PAGEOFF
	add	x8, x8, #160
	and	x8, x8, #0xff00
	ldr	q0, [x8]
	str	q0, [sp, #96]
	b	LBB0_116
LBB0_100:
	adrp	x8, _func0.out@PAGE
	add	x8, x8, _func0.out@PAGEOFF
	add	x8, x8, #10
	str	x8, [sp, #16]
	b	LBB0_116
LBB0_111:                                ;   in Loop: Header=BB0_2 Depth=2
	adrp	x8, _func0.out@PAGE
	add	x8, x8, _func0.out@PAGEOFF
	add	x8, x8, #10
	str	x8, [sp, #16]
	b	LBB0_116
LBB0_112:                                ;   in Loop: Header=BB0_2 Depth=2
	adrp	x8, _func0.out@PAGE
	add	x8, x8, _func0.out@PAGEOFF
	add	x8, x8, #1
	ldr	w8, [sp, #10]
	add	w8, w8, #1
	str	w8, [sp, #10]
	b	LBB0_116
LBB0_113:
	ldrsw	x9, [sp, #10]
	add	x8, sp, #18
	add	x8, x8, x9, lsl #3
	ldrb	w8, [x8]
	adrp	x9, _func0.out@PAGE
	add	x9, x9, _func0.out@PAGEOFF
	strb	w8, [x9]
	b	LBB0_116
LBB0_114:
	adrp	x8, _func0.out@PAGE
	add	x8, x8, _func0.out@PAGEOFF
	add	x8, x8, #10
	str	x8, [sp, #16]
	b	LBB0_116
LBB0_115:
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	ldur	x9, [x29, #-8]
	subs	x8, x8, x9
	cset	w8, eq
	tbnz	w8, #0, LBB0_131
	b	LBB0_132
LBB0_132:
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	ldur	x9, [x29, #-8]
	subs	x8, x8, x9
	cset	w8, eq
	tbnz	w8, #0, LBB0_133
	b	LBB0_134
LBB0_133:
	adrp	x8, _func0.out@PAGE
	add	x8, x8, _func0.out@PAGEOFF
	add	x8, x8, #160
	and	x8, x8, #0xff00
	ldr	q0, [x8]
	str	q0, [sp, #96]
	b	LBB0_136
LBB0_134:
	adrp	x8, _func0.out@PAGE
	add	x8, x8, _func0.out@PAGEOFF
	add	x8, x8, #10
	str	x8, [sp, #16]
	b	LBB0_136
LBB0_135:
	adrp	x8, _func0.out@PAGE
	add	x8, x8, _func0.out@PAGEOFF
	add	x8, x8, #1
	ldr	w8, [sp, #10]
	add	w8, w8, #1
	str	w8, [sp, #10]
	b	LBB0_136
LBB0_136:
	ldrsw	x9, [sp, #10]
	add	x8, sp, #18
	add	x8, x8, x9, lsl #3
	ldrb	w8, [x8]
	adrp	x9, _func0.out@PAGE
	add	x9, x9, _func0.out@PAGEOFF
	strb	w8, [x9]
	b	LBB0_140
LBB0_137:
	adrp	x8, _func0.out@PAGE
	add	x8, x8, _func0.out@PAGEOFF
	add	x8, x8, #10
	str	x8, [sp, #16]
	b	LBB0_140
LBB0_138:
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	ldur	x9, [x29, #-8]
	subs	x8, x8, x9
	cset	w8, eq
	tbnz	w8, #0, LBB0_144
	b	LBB0_145
LBB0_139:
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	ldur	x9, [x29, #-8]
	subs	x8, x8, x9
	cset	w8, eq
	tbnz	w8, #0, LBB0_146
	b	LBB0_150
LBB0_140:
	adrp	x8, _func0.out@PAGE
	add	x8, x8, _func0.out@PAGEOFF
	add	x8, x8, #160
	and	x8, x8, #0xff00
	ldr	q0, [x8]
	str	q0, [sp, #96]
	b	LBB0_145
LBB0_141:
	adrp	x8, _func0.out@PAGE
	add	x8, x8, _func0.out@PAGEOFF
	add	x8, x8, #10
	str	x8, [sp, #16]
	b	LBB0_145
LBB0_142:
	adrp	x8, _func0.out@PAGE
	add	x8, x8, _func0.out@PAGEOFF
	add	x8, x8, #1
	ldr	w8, [sp, #10]
	add	w8, w8, #1
	str	w8, [sp, #10]
	b	LBB0_145
LBB0_143:
	ldrsw	x9, [sp, #10]
	add	x8, sp, #18
	add	x8, x8, x9, lsl #3
	ldrb	w8, [x8]
	adrp	x9, _func0.out@PAGE
	add	x9, x9, _func0.out@PAGEOFF
	strb	w8, [x9]
	b	LBB0_145
LBB0_144:
	adrp	x8, _func0.out@PAGE
	add	x8, x8, _func0.out@PAGEOFF
	add	x8, x8, #10
	str	x8, [sp, #16]
	b	LBB0_145
LBB0_145:
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	ldur	x9, [x29, #-8]
	subs	x8, x8, x9
	cset	w8, eq
	tbnz	w8, #0, LBB0_163
	b	LBB0_164
LBB0_160:
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	ldur	x9, [x29, #-8]
	subs	x8, x8, x9
	cset	w8, eq
	tbnz	w8, #0, LBB0_165
	b	LBB0_166
LBB0_161:
	adrp	x8, _func0.out@PAGE
	add	x8, x8, _func0.out@PAGEOFF
	add	x8, x8, #160
	and	x8, x8, #0xff00
	ldr	q0, [x8]
	str	q0, [sp, #96]
	b	LBB0_170
LBB0_162:
	adrp	x8, _func0.out@PAGE
	add	x8, x8, _func0.out@PAGEOFF
	add	x8, x8, #10
	str	x8, [sp, #16]
	b	LBB0_170
LBB0_163:
	adrp	x8, _func0.out@PAGE
	add	x8, x8, _func0.out@PAGEOFF
	add	x8, x8, #1
	ldr	w8, [sp, #10]
	add	w8, w8, #1
	str	w8, [sp, #10]
	b	LBB0_170
LBB0_164:
	ldrsw	x9, [sp, #10]
	add	x8, sp, #18
	add	x8, x8, x9, lsl #3
	ldrb	w8, [x8]
	adrp	x9, _func0.out@PAGE
	add	x9, x9, _func0.out@PAGEOFF
	strb	w8, [x9]
	b	LBB0_170
LBB0_165:
	adrp	x8, _func0.out@PAGE
	add	x8, x8, _func0.out@PAGEOFF
	add	x8, x8, #10
	str	x8, [sp, #16]
	b	LBB0_170
LBB0_166:
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	ldur	x9, [x29, #-8]
	subs	x8, x8, x9
	cset	w8, eq
	tbnz	w8, #0, LBB0_180
	b	LBB0_181
LBB0_167:
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	ldur	x9, [x29, #-8]
	subs	x8, x8, x9
	cset	w8, eq
	tbnz	w8, #0, LBB0_182
	b	LBB0_183
LBB0_168:
	adrp	x8, _func0.out@PAGE
	add	x8, x8, _func0.out@PAGEOFF
	add	x8, x8, #160
	and	x8, x8, #0xff00
	ldr	q0, [x8]
	str	q0, [sp, #96]
	b	LBB0_190
LBB0_169:
	adrp	x8, _func0.out@PAGE
	add	x8, x8, _func0.out@PAGEOFF
	add	x8, x8, #10
	str	x8, [sp, #16]
	b	LBB0_190
LBB0_170:
	adrp	x8, _func0.out@PAGE
	add	x8, x8, _func0.out@PAGEOFF
	add	x8, x8, #1
	ldr	w8, [sp, #10]
	add	w8, w8, #1
	str	w8, [sp, #10]
	b	LBB0_190
LBB0_171:
	ldrsw	x9, [sp, #10]
	add	x8, sp, #18
	add	x8, x8, x9, lsl #3
	ldrb	w8, [x8]
	adrp	x9, _func0.out@PAGE
	add	x9, x9, _func0.out@PAGEOFF
	strb	w8, [x9]
	b	LBB0_190
LBB0_172:
	adrp	x8, _func0.out@PAGE
	add	x8, x8, _func0.out@PAGEOFF
	add	x8, x8, #10
	str	x8, [sp, #16]
	b	LBB0_190
LBB0_173:
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	ldur	x9, [x29, #-8]
	subs	x8, x8, x9
	cset	w8, eq
	tbnz	w8, #0, LBB0_195
	b	LBB0_196
LBB0_174:
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	ldur	x9, [x29, #-8]
	subs	x8, x8, x9
	cset	w8, eq
	tbnz	w8, #0, LBB0_196
	b	LBB0_175
LBB0_175:
	adrp	x8, _func0.out@PAGE
	add	x8, x8, _func0.out@PAGEOFF
	add	x8, x8, #160
	and	x8, x8, #0xff00
	ldr	q0, [x8]
	str	q0, [sp, #96]
	b	LBB0_200
LBB0_176:
	adrp	x8, _func0.out@PAGE
	add	x8, x8, _func0.out@PAGEOFF
	add	x8, x8, #10
	str	x8, [sp, #16]
	b	LBB0_200
LBB0_177:
	adrp	x8, _func0.out@PAGE
	add	x8, x8, _func0.out@PAGEOFF
	add	x8, x8, #1
	ldr	w8, [sp, #10]
	add	w8, w8, #1
	str	w8, [sp, #10]
	b	LBB0_200
LBB0_178:
	ldrsw	x9, [sp, #10]
	add	x8, sp, #18
	add	x8, x8, x9, lsl #3
	ldrb	w8, [x8]
	adrp	x9, _func0.out@PAGE
	add	x9, x9, _func0.out@PAGEOFF
	strb	w8, [x9]
	b	LBB0_200
LBB0_179:
	adrp	x8, _func0.out@PAGE
	add	x8, x8, _func0.out@PAGEOFF
	add	x8, x8, #10
	str	x8, [sp, #16]
	b	LBB0_200
LBB0_180:
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	ldur	x9, [x29, #-8]
	subs	x8, x8, x9
	cset	w8, eq
	tbnz	w8, #0, LBB0_202
	b	LBB0_203
LBB0_181:
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	ldur	x9, [x29, #-8]
	subs	x8, x8, x9
	cset	w8, eq
	tbnz	w8, #0, LBB0_204
	b	LBB0_205
LBB0_182:
	adrp	x8, _func0.out@PAGE
	add	x8, x8, _func0.out@PAGEOFF
	add	x8, x8, #160
	and	x8, x8, #0xff00
	ldr	q0, [x8]
	str	q0, [sp, #96]
	b	LBB0_205
LBB0_183:
	adrp	x8, _func0.out@PAGE
	add	x8, x8, _func0.out@PAGEOFF
	add	x8, x8, #10
	str	x8, [sp, #16]
	b	LBB0_205
LBB0_184:
	adrp	x8, _func0.out@PAGE
	add	x8, x8, _func0.out@PAGEOFF
	add	x8, x8, #1
	ldr	w8, [sp, #10]
	add	w8, w8, #1
	str	w8, [sp, #10]
	b	LBB0_205
LBB0_185:
	ldrsw	x9, [sp, #10]
	add	x8, sp, #18
	add	x8, x8, x9, lsl #3
	ldrb	w8, [x8]
	adrp	x9, _func0.out@PAGE
	add	x9, x9, _func0.out@PAGEOFF
	strb	w8, [x9]
	b	LBB0_205
LBB0_186:
	adrp	x8, _func0.out@PAGE
	add	x8, x8, _func0.out@PAGEOFF
	add	x8, x8, #10
	str	x8, [sp, #16]
	b	LBB0_205
LBB0_187:
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	ldur	x9, [x29, #-8]
	subs	x8, x8, x9
	cset	w8, eq
	tbnz	w8, #0, LBB0_209
	b	LBB0_210
LBB0_188:
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	ldur	x9, [x29, #-8]
	subs	x8, x8, x9
	cset	w8, eq
	tbnz	w8, #0, LBB0_210
	b	LBB0_187
LBB0_189:
	adrp	x8, _func0.out@PAGE
	add	x8, x8, _func0.out@PAGEOFF
	add	x8, x8, #160
	and	x8, x8, #0xff00
	ldr	q0, [x8]
	str	q0, [sp, #96]
	b	LBB0_216
LBB0_200:
	adrp	x8, _func0.out@PAGE
	add	x8, x8, _func0.out@PAGEOFF
	add	x8, x8, #10
	str	x8, [sp, #16]
	b	LBB0_216
LBB0_211:
	adrp	x8, _func0.out@PAGE
	add	x8, x8, _func0.out@PAGEOFF
	add	x8, x8, #1
	ldr	w8, [sp, #10]
	add	w8, w8, #1
	str	w8, [sp, #10]
	b	LBB0_216
LBB0_212:
	ldrsw	x9, [sp, #10]
	add	x8, sp, #18
	add	x8, x8, x9, lsl #3
	ldrb	w8, [x8]
	adrp	x9, _func0.out@PAGE
	add	x9, x9, _func0.out@PAGEOFF
	strb	w8, [x9]
	b	LBB0_216
LBB0_213:
	adrp	x8, _func0.out@PAGE
	add	x8, x8, _func0.out@PAGEOFF
	add	x8, x8, #10
	str	x8, [sp, #16]
	b	LBB0_216
LBB0_214:
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	ldur	x9, [x29, #-8]
	subs	x8, x8, x9
	cset	w8, eq
	tbnz	w8, #0, LBB0_216
	b	LBB0_217
LBB0_215:
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	ldur	x9, [x29, #-8]
	subs	x8, x8, x9
	cset	w8, eq
	tbnz	w8, #0, LBB0_218
	b	LBB0_219
LBB0_216:
	adrp	x8, _func0.out@PAGE
	add	x8, x8, _func0.out@PAGEOFF
	add	x8, x8, #160
	and	x8, x8, #0xff00
	ldr	q0, [x8]
	str	q0, [sp, #96]
	b	LBB0_220
LBB0_217:
	adrp	x8, _func0.out@PAGE
	add	x8, x8, _func0.out@PAGEOFF
	add	x8, x8, #10
	str	x8, [sp, #16]
	b	LBB0_220
LBB0_218:
	adrp	x8, _func0.out@PAGE
	add	x8, x8, _func0.out@PAGEOFF
	add	x8, x8, #1
	ldr	w8, [sp, #10]
	add	w8, w8, #1
	str	w8, [sp, #10]
	b	LBB0_220
LBB0_219:
	ldrsw	x9, [sp, #10]
	add	x8, sp, #18
	add	x8, x8, x9, lsl #3
	ldrb	w8, [x8]
	adrp	x9, _func0.out@PAGE
	add	x9, x9, _func0.out@PAGEOFF
	strb	w8, [x9]
	b	LBB0_220
LBB0_220:
	adrp	x8, _func0.out@PAGE
	add	x8, x8, _func0.out@PAGEOFF
	add	x8, x8, #10
	str	x8, [sp, #16]
	b	LBB0_220
LBB0_221:
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	ldur	x9, [x29, #-8]
	subs	x8, x8, x9
	cset	w8, eq
	tbnz	w8, #0, LBB0_223
	b	LBB0_224
LBB0_222:
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	ldur	x9, [x29, #-8]
	subs	x8, x8, x9
	cset	w8, eq
	tbnz	w8, #0, LBB0_224
	b	LBB0_225
LBB0_223:
	adrp	x8, _func0.out@PAGE
	add	x8, x8, _func0.out@PAGEOFF
	add	x8, x8, #160
	and	x8, x8, #0xff00
	ldr	q0, [x8]
	str	q0, [sp, #96]
	b	LBB0_225
LBB0_224:
	adrp	x8, _func0.out@PAGE
	add	x8, x8, _func0.out@PAGEOFF
	add	x8, x8, #10
	str	x8, [sp, #16]
	b	LBB0_225
LBB0_225:
	adrp	x8, _func0.out@PAGE
	add	x8, x8, _func0.out@PAGEOFF
	add	x8, x8, #1
	ldr	w8, [sp, #10]
	add	w8, w8, #1
	str	w8, [sp, #10]
	b	LBB0_225
LBB0_226:
	ldrsw	x9, [sp, #10]
	add	x8, sp, #18
	add	x8, x8, x9, lsl #3
	ldrb	w8, [x8]
	adrp	x9, _func0.out@PAGE
	add	x9, x9, _func0.out@PAGEOFF
	strb	w8, [x9]
	b	LBB0_225
LBB0_227:
	adrp	x8, _func0.out@PAGE
	add	x8, x8, _func0.out@PAGEOFF
	add	x8, x8, #10
	str	x8, [sp, #16]
	b	LBB0_225
LBB0_228:
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	ldur	x9, [x29, #-8]
	subs	x8, x8, x9
	cset	w8, eq
	tbnz	w8, #0, LBB0_230
	b	LBB0_231
LBB0_231:
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	ldur	x9, [x29, #-8]
	subs	x8, x8, x9
	cset	w8, eq
	tbnz	w8, #0, LBB0_232
	b	LBB0_233
LBB0_232:
	adrp	x8, _func0.out@PAGE
	add	x8, x8, _func0.out@PAGEOFF
	add	x8, x8, #160
	and	x8, x8, #0xff00
	ldr	q0, [x8]
	str	q0, [sp, #96]
	b	LBB0_235
LBB0_233:
	adrp	x8, _func0.out@PAGE
	add	x8, x8, _func0.out@PAGEOFF
	add	x8, x8, #10
	str	x8, [sp, #16]
	b	LBB0_235
LBB0_234:
	adrp	x8, _func0.out@PAGE
	add	x8, x8, _func0.out@PAGEOFF
	add	x8, x8, #1
	ldr	w8, [sp, #10]
	add	w8, w8, #1
	str	w8, [sp, #10]
	b	LBB0_235
LBB0_235:
	ldrsw	x9, [sp, #10]
	add	x8, sp, #18
	add	x8, x8, x9, lsl #3
	ldrb	w8, [x8]
	adrp	x9, _func0.out@PAGE
	add	x9, x9, _func0.out@PAGEOFF
	strb	w8, [x9]
	b	LBB0_235
LBB0_236:
	adrp	x8, _func0.out@PAGE
	add	x8, x8, _func0.out@PAGEOFF
	add	x8, x8, #10
	str	x8, [sp, #16]
	b	LBB0_235
LBB0_237:
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	ldur	x9, [x29, #-8]
	subs	x8, x8, x9
	cset	w8, eq
	tbnz	w8, #0, LBB0_240
	b	LBB0_241
LBB0_241:
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	ldur	x9, [x29, #-8]
	subs	x8, x8, x9
	cset	w8, eq
	tbnz	w8, #0, LBB0_242
	b	LBB0_243
LBB0_242:
	adrp	x8, _func0.out@PAGE
	add	x8, x8, _func0.out@PAGEOFF
	add	x8, x8, #160
	and	x8, x8, #0xff00
	ldr	q0, [x8]
	str	q0, [sp, #96]
	b	LBB0_245
LBB0_243:
	adrp	x8, _func0.out@PAGE
	add	x8, x8, _func0.out@PAGEOFF
	add	x8, x8, #10
	str	x8, [sp, #16]
	b	LBB0_245
LBB0_244:
	adrp	x8, _func0.out@PAGE
	add	x8, x8, _func0.out@PAGEOFF
	add	x8, x8, #1
	ldr	w8, [sp, #10]
	add	w8, w8, #1
	str	w8, [sp, #10]
	b	LBB0_245
LBB0_245:
	ldrsw	x9, [sp, #10]
	add	x8, sp, #18
	add	x8, x8, x9, lsl #3
	ldrb	w8, [x8]
	adrp	x9, _func0.out@PAGE
	add	x9, x9, _func0.out@PAGEOFF
	strb	w8, [x9]
	b	LBB0_245
LBB0_246:
	adrp	x8, _func0.out@PAGE
	add	x8, x8, _func0.out@PAGEOFF
	add	x8, x8, #10
	str	x8, [sp, #16]
	b	LBB0_245
LBB0_247:
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	ldur	x9, [x29, #-8]
	subs	x8, x8, x9
	cset	w8, eq
	tbnz	w8, #0, LBB0_255
	b	LBB0_256
LBB0_256:
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	ldur	x9, [x29, #-8]
	subs	x8, x8, x9
	cset	w8, eq
	tbnz	w8, #0, LBB0_256
	b	LBB0_257
LBB0_257:
	adrp	x8, _func0.out@PAGE
	add	x8, x8, _func0.out@PAGEOFF
	add	x8, x8, #160
	and	x8, x8, #0xff00
	ldr	q0, [x8]
	str	q0, [sp, #96]
	b	LBB0_260
LBB0_260:
	adrp	x8, _func0.out@PAGE
	add	x8, x8, _func0.out@PAGEOFF
	add	x8, x8, #10
	str	x8, [sp, #16]
	b	LBB0_260
LBB0_261:
	adrp	x8, _func0.out@PAGE
	add	x8, x8, _func0.out@PAGEOFF
	add	x8, x8, #1
	ldr	w8, [sp, #10]
	add	w8, w8, #1
	str	w8, [sp, #10]
	b	LBB0_260
LBB0_262:
	ldrsw	x9, [sp, #10]
	add	x8, sp, #18
	add	x8, x8, x9, lsl #3
	ldrb	w8, [x8]
	adrp	x9, _func0.out@PAGE
	add	x9, x9, _func0.out@PAGEOFF
	strb	w8, [x9]
	b	LBB0_260
LBB0_263:
	adrp	x8, _func0.out@PAGE
	add	x8, x8, _func0.out@PAGEOFF
	add	x8, x8, #10
	str	x8, [sp, #16]
	b	LBB0_260
LBB0_264:
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	ldur	x9, [x29, #-8]
	subs	x8, x8, x9
	cset	w8, eq
	tbnz	w8, #0, LBB0_266
	b	LBB0_267
LBB0_265:
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	ldur	x9, [x29, #-8]
	subs	x8, x8, x9
	cset	w8, eq
	tbnz	w8, #0, LBB0_267
	b	LBB0_268
LBB0_266:
	adrp	x8, _func0.out@PAGE
	add	x8, x8, _func0.out@PAGEOFF
	add	x8, x8, #160
	and	x8, x8, #0xff00
	ldr	q0, [x8]
	str	q0, [sp, #96]
	b	LBB0_270
LBB0_270:
	adrp	x8, _func0.out@PAGE
	add	x8, x8, _func0.out@PAGEOFF
	add	x8, x8, #10
	str	x8, [sp, #16]
	b	LBB0_270
LBB0_271:
	adrp	x8, _func0.out@PAGE
	add	x8, x8, _func0.out@PAGEOFF
	add	x8, x8, #1
	ldr	w8, [sp, #10]
	add	w8, w8, #1
	str	w8, [sp, #10]
	b	LBB0_270
LBB0_272:
	ldrsw	x9, [sp, #10]
	add	x8, sp, #18
	add	x8, x8, x9, lsl #3
	ldrb	w8, [x8]
	adrp	x9, _func0.out@PAGE
	add	x9, x9, _func0.out@PAGEOFF
	strb	w8, [x9]
	b	LBB0_270
LBB0_273:
	adrp	x8, _func0.out@PAGE
	add	x8, x8, _func0.out@PAGEOFF
	add	x8, x8, #10
	str	x8, [sp, #16]
	b	LBB0_270
LBB0_274:
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	ldur	x9, [x29, #-8]
	subs	x8, x8, x9
	cset	w8, eq
	tbnz	w8, #0, LBB0_280
	b	LBB0_281
LBB0_281:
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	ldur	x9, [x29, #-8]
	subs	x8, x8, x9
	cset	w8, eq
	tbnz	w8, #0, LBB0_282
	b	LBB0_283
LBB0_282:
	adrp	x8, _func0.out@PAGE
	add	x8, x8, _func0.out@PAGEOFF
	add	x8, x8, #160
	and	x8, x8, #0xff00
	ldr	q0, [x8]
	str	q0, [sp, #96]
	b	LBB0_285
LBB0_283:
	adrp	x8, _func0.out@PAGE
	add	x8, x8, _func0.out@PAGEOFF
	add	x8, x8, #10
	str	x8, [sp, #16]
	b	LBB0_285
LBB0_284:
	adrp	x8, _func0.out@PAGE
	add	x8, x8, _func0.out@PAGEOFF
	add	x8, x8, #1
	ldr	w8, [sp, #10]
	add	w8, w8, #1
	str	w8, [sp, #10]
	b	LBB0_285
LBB0_285:
	ldrsw	x9, [sp, #10]
	add	x8, sp, #18
	add	x8, x8, x9, lsl #3
	ldrb	w8, [x8]
	adrp	x9, _func0.out@PAGE
	add	x9, x9, _func0.out@PAGEOFF
	strb	w8, [x9]
	b	LBB0_285
LBB0_286:
	adrp	x8, _func0.out@PAGE
	add	x8, x8, _func0.out@PAGEOFF
	add	x8, x8, #10
	str	x8, [sp, #16]
	b	LBB0_285
LBB0_287:
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	ldur	x9, [x29, #-8]
	subs	x8, x8, x9
	cset	w8, eq
	tbnz	w8, #0, LBB0_295
	b	LBB0_296
LBB0_296:
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	ldur	x9, [x29, #-8]
	subs	x8, x8, x9
	cset	w8, eq
	tbnz	w8, #0, LBB0_296
	b	LBB0_297
LBB0_297:
	adrp	x8, _func0.out@PAGE
	add	x8, x8, _func0.out@PAGEOFF
	add	x8, x8, #160
	and	x8, x8, #0xff00
	ldr	q0, [x8]
	str	q0, [sp, #96]
	b	LBB0_300
LBB0_300:
	adrp	x8, _func0.out@PAGE
	add	x8, x8, _func0.out@PAGEOFF
	add	x8, x8, #10
	str	x8, [sp, #16]
	b	LBB0_300
LBB0_301:
	adrp	x8, _func0.out@PAGE
	add	x8, x8, _func0.out@PAGEOFF
	add	x8, x8, #1
	ldr	w8, [sp, #10]
	add	w8, w8, #1
	str	w8, [sp, #10]
	b	LBB0_300
LBB0_302:
	ldrsw	x9, [sp, #10]
	add	x8, sp, #18
	add	x8, x8, x9, lsl #3
	ldrb	w8, [x8]
	adrp	x9, _func0.out@PAGE
	add	x9, x9, _func0.out@PAGEOFF
	strb	w8, [x9]
	b	LBB0_300
LBB0_303:
	adrp	x8, _func0.out@PAGE
	add	x8, x8, _func0.out@PAGEOFF
	add	x8, x8, #10
	str	x8, [sp, #16]
	b	LBB0_300
LBB0_304:
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	ldur	x9, [x29, #-8]
	subs	x8, x8, x9
	cset	w8, eq
	tbnz	w8, #0, LBB0_306
	b	LBB0_305
LBB0_305:
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	ldur	x9, [x29, #-8]
	subs	x8, x8, x9
	cset	w8, eq
	tbnz	w8, #0, LBB0_308
	b	LBB0_309
LBB0_306:
	adrp	x8, _func0.out@PAGE
	add	x8, x8, _func0.out@PAGEOFF
	add	x8, x8, #160
	and	x8, x8, #0xff00
	ldr	q0, [x8]
	str	q0, [sp, #96]
	b	LBB0_310
LBB0_307:
	adrp	x8, _func0.out@PAGE
	add	x8, x8, _func0.out@PAGEOFF
	add	x8, x8, #10
	str	x8, [sp, #16]
	b	LBB0_310
LBB0_308:
	adrp	x8, _func0.out@PAGE
	add	x8, x8, _func0.out@PAGEOFF
	add	x8, x8, #1
	ldr	w8, [sp, #10]
	add	w8, w8, #1
	str	w8, [sp, #10]
	b	LBB0_310
LBB0_309:
	ldrsw	x9, [sp, #10]
	add	x8, sp, #18
	add	x8, x8, x9, lsl #3
	ldrb	w8, [x8]
	adrp	x9, _func0.out@PAGE
	add	x9, x9, _func0.out@PAGEOFF
	strb	w8, [x9]
	b	LBB0_310
LBB0_310:
	adrp	x8, _func0.out@PAGE
	add	x8, x8, _func0.out@PAGEOFF
	add	x8, x8, #10
	str	x8, [sp, #16]
	b	LBB0_310
LBB0_311:
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	ldur	x9, [x29, #-8]
	subs	x8, x8, x9
	cset	w8, eq
	tbnz	w8, #0, LBB0_313
	b	LBB0_314
LBB0_312:
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	ldur	x9, [x29, #-8]
	subs	x8, x8, x9
	cset	w8, eq
	tbnz	w8, #0, LBB0_314
	b	LBB0_315
LBB0_313:
	adrp	x8, _func0.out@PAGE
	add	x8, x8, _func0.out@PAGEOFF
	add	x8, x8, #160
	and	x8, x8, #0xff00
	ldr	q0, [x8]
	str	q0, [sp, #96]
	b	LBB0_316
LBB0_314:
	adrp	x8, _func0.out@PAGE
	add	x8, x8, _func0.out@PAGEOFF
	add	x8, x8, #10
	str	x8, [sp, #16]
	b	LBB0_316
LBB0_315:
	adrp	x8, _func0.out@PAGE
	add	x8, x8, _func0.out@PAGEOFF
	add	x8, x8, #1
	ldr	w8, [sp, #10]
	add	w8, w8, #1
	str	w8, [sp, #10]
	b	LBB0_316
LBB0_316:
	ldrsw	x9, [sp, #10]
	add	x8, sp, #18
	add	x8, x8, x9, lsl #3
	ldrb	w8, [x8]
	adrp	x9, _func0.out@PAGE
	add	x9, x9, _func0.out@PAGEOFF
	strb	w8, [x9]
	b	LBB0_316
LBB0_317:
	adrp	x8, _func0.out@PAGE
	add	x8, x8, _func0.out@PAGEOFF
	add	x8, x8, #10
	str	x8, [sp, #16]
	b	LBB0_316
LBB0_318:
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	ldur	x9, [x29, #-8]
	subs	x8, x8, x9
	cset	w8, eq
	tbnz	w8, #0, LBB0_320
	b	LBB0_321
LBB0_321:
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	ldur	x9, [x29, #-8]
	subs	x8, x8, x9
	cset	w8, eq
	tbnz	w8, #0, LBB0_322
	b	LBB0_323
LBB0_322:
	adrp	x8, _func0.out@PAGE
	add	x8, x8, _func0.out@PAGEOFF
	add	x8, x8, #160
	and	x8, x8, #0xff00
	ldr	q0, [x8]
	str	q0, [sp, #96]
	b	LBB0_325
LBB0_323:
	adrp	x8, _func0.out@PAGE
	add	x8, x8, _func0.out@PAGEOFF
	add	x8, x8, #10
	str	x8, [sp, #16]
	b	LBB0_325
LBB0_324:
	adrp	x8, _func0.out@PAGE
	add	x8, x8, _func0.out@PAGEOFF
	add	x8, x8, #1
	ldr	w8, [sp, #10]
	add	w8, w8, #1
	str	w8, [sp, #10]
	b	LBB0_325
LBB0_325:
	ldrsw	x9, [sp, #10]
	add	x8, sp, #18
	add	x8, x8, x9, lsl #3
	ldrb	w8, [x8]
	adrp	x9, _func0.out@PAGE
	add	x9, x9, _func0.out@PAGEOFF
	strb	w8, [x9]
	b	LBB0_325
LBB0_326:
	adrp	x8, _func0.out@PAGE
	add	x8, x8, _func0.out@PAGEOFF
	add	x8, x8, #10
	str	x8, [sp, #16]
	b	LBB0_325
LBB0_327:
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	ldur	x9, [x29, #-8]
	subs	x8, x8, x9
	cset	w8, eq
	tbnz	w8, #0, LBB0_329
	b	LBB0_330
LBB0_330:
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	ldur	x9, [x29, #-8]
	subs	x8, x8, x9
	cset	w8, eq
	tbnz	w8, #0, LBB0_332
	b	LBB0_333
LBB0_331:
	adrp	x8, _func0.out@PAGE
	add	x8, x8, _func0.out@PAGEOFF
	add	x8, x8, #160
	and	x8, x8, #0xff00
	ldr	q0, [x8]
	str	q0, [sp, #96]
	b	LBB0_336
LBB0_332:
	adrp	x8, _func0.out@PAGE
	add	x8, x8, _func0.out@PAGEOFF
	add	x8, x8, #10
	str	x8, [sp, #16]
	b	LBB0_336
LBB0_333:
	adrp	x8, _func0.out@PAGE
	add	x8, x8, _func0.out@PAGEOFF
	add	x8, x8, #1
	ldr	w8, [sp, #10]
	add	w8, w8, #1
	str	w8, [sp, #10]
	b	LBB0_336
LBB0_334:
	ldrsw	x9, [sp, #10]
	add	x8, sp, #18
	add	x8, x8, x9, lsl #3
	ldrb	w8, [x8]
	adrp	x9, _func0.out@PAGE
	add	x9, x9, _func0.out@PAGEOFF
	strb	w8, [x9]
	b	LBB0_336
LBB0_335:
	adrp	x8, _func0.out@PAGE
	add	x8, x8, _func0.out@PAGEOFF
	add	x8, x8, #10
	str	x8, [sp, #16]
	b	LBB0_336
LBB0_336:
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	ldur	x9, [x29, #-8]
	subs	x8, x8, x9
	cset	w8, eq
	tbnz	w8, #0, LBB0_340
	b	LBB0_341
LBB0_347:
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	ldur	x9, [x29, #-8]
	subs	x8, x8, x9
	cset	w8, eq
	tbnz	w8, #0, LBB0_342
	b	LBB0_348
LBB0_348:
	adrp	x8, _func0.out@PAGE
	add	x8, x8, _func0.out@PAGEOFF
	add	x8, x8, #160
	and	x8, x8, #0xff00
	ldr	q0, [x8]
	str	q0, [sp, #96]
	b	LBB0_356
LBB0_350:
	adrp	x8, _func0.out@PAGE
	add	x8, x8, _func0.out@PAGEOFF
	add	x8, x8, #10
	str	x8, [sp, #16]
	b	LBB0_356
LBB0_351:
	adrp	x8, _func0.out@PAGE
	add	x8, x8, _func0.out@PAGEOFF
	add	x8, x8, #1
	ldr	w8, [sp, #10]
	add	w8, w8, #1
	str	w8, [sp, #10]
	b	LBB0_356
LBB0_352:
	ldrsw	x9, [sp, #10]
	add	x8, sp, #18
	add	x8, x8, x9, lsl #3
	ldrb	w8, [x8]
	adrp	x9, _func0.out@PAGE
	add	x9, x9, _func0.out@PAGEOFF
	strb	w8, [x9]
	b	LBB0_356
LBB0_353:
	adrp	x8, _func0.out@PAGE
	add	x8, x8, _func0.out@PAGEOFF
	add	x8, x8, #10
	str	x8, [sp, #16]
	b	LBB0_356
LBB0_354:
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	ldur	x9, [x29, #-8]
	subs	x8, x8, x9
	cset	w8, eq
	tbnz	w8, #0, LBB0_360
	b	LBB0_361
LBB0_365:
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	ldur	x9, [x29, #-8]
	subs	x8, x8, x9
	cset	w8, eq
	tbnz	w8, #0, LBB0_362
	b	LBB0_366
LBB0_366:
	adrp	x8, _func0.out@PAGE
	add	x8, x8, _func0.out@PAGEOFF
	add	x8, x8, #160
	and	x8, x8, #0xff00
	ldr	q0, [x8]
	str	q0, [sp, #96]
	b	LBB0_370
LBB0_370:
	adrp	x8, _func0.out@PAGE
	add	x8, x8, _func0.out@PAGEOFF
	add	x8, x8, #10
	str	x8, [sp, #16]
	b	LBB0_370
LBB0_371:
	adrp	x8, _func0.out@PAGE
	add	x8, x8, _func0.out@PAGEOFF
	add	x8, x8, #1
	ldr	w8, [sp, #10]
	add	w8, w8, #1
	str	w8, [sp, #10]
	b	LBB0_370
LBB0_372:
	ldrsw	x9, [sp, #10]
	add	x8, sp, #18
	add	x8, x8, x9, lsl #3
	ldrb	w8, [x8]
	adrp	x9, _func0.out@PAGE
	add	x9, x9, _func0.out@PAGEOFF
	strb	w8, [x9]
	b	LBB0_370
LBB0_373:
	adrp	x8, _func0.out@PAGE
	add	x8, x8, _func0.out@PAGEOFF
	add	x8, x8, #10
	str	x8, [sp, #16]
	b	LBB0_370
LBB0_374:
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	ldur	x9, [x29, #-8]
	subs	x8, x8, x9
	cset	w8, eq
	tbnz	w8, #0, LBB0_380
	b	LBB0_381
LBB0_385:
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	ldur	x9, [x29, #-8]
	subs	x8, x8, x9
	cset	w8, eq
	tbnz	w8, #0, LBB0_381
	b	LBB0_386
LBB0_386:
	adrp	x8, _func0.out@PAGE
	add	x8, x8, _func0.out@PAGEOFF
	add	x8, x8, #160
	and	x8, x8, #0xff00
	ldr	q0, [x8]
	str	q0, [sp, #96]
	b	LBB0_396
LBB0_387:
	adrp	x8, _func0.out@PAGE
	add	x8, x8, _func0.out@PAGEOFF
	add	x8, x8, #10
	str	x8, [sp, #16]
	b	LBB0_396
LBB0_388:
	adrp	x8, _func0.out@PAGE
	add	x8, x8, _func0.out@PAGEOFF
	add	x8, x8, #1
	ldr	w8, [sp, #10]
	add	w8, w8, #1
	str	w8, [sp, #10]
	b	LBB0_396
LBB0_390:
	ldrsw	x9, [sp, #10]
	add	x8, sp, #18
	add	x8, x8, x9, lsl #3
	ldrb	w8, [x8]
	adrp	x9, _func0.out@PAGE
	add	x9, x9, _func0.out@PAGEOFF
	strb	w8, [x9]
	b	LBB0_396
LBB0_391:
	adrp	x8, _func0.out@PAGE
	add	x8, x8, _func0.out@PAGEOFF
	add	x8, x8, #10
	str	x8, [sp, #16]
	b	LBB0_396
LBB0_392:
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	ldur	x9, [x29, #-8]
	subs	x8, x8, x9
	cset	w8, eq
	tbnz	w8, #0, LBB0_400
	b	LBB0_401
LBB0_393:
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	ldur	x9, [x29, #-8]
	subs	x8, x8, x9
	cset	w8, eq
	tbnz	w8, #0, LBB0_401
	b	LBB0_406
LBB0_404:
	adrp	x8, _func0.out@PAGE
	add	x8, x8, _func0.out@PAGEOFF
	add	x8, x8, #160
	and	x8, x8, #0xff00
	ldr	q0, [x8]
	str	q0, [sp, #96]
	b	LBB0_420
LBB0_405:
	adrp	x8, _func0.out@PAGE
	add	x8, x8, _func0.out@PAGEOFF
	add	x8, x8, #10
	str	x8, [sp, #16]
	b	LBB0_420
LBB0_406:
	adrp	x8, _func0.out@PAGE
	add	x8, x8, _func0.out@PAGEOFF
	add	x8, x8, #1
	ldr	w8, [sp, #10]
	add	w8, w8, #1
	str	w8, [sp, #10]
	b	LBB0_420
LBB0_407:
	ldrsw	x9, [sp, #10]
	add	x8, sp, #18
	add	x8, x8, x9, lsl #3
	ldrb	w8, [x8]
	adrp	x9, _func0.out@PAGE
	add	x9, x9, _func0.out@PAGEOFF
	strb	w8, [x9]
	b	LBB0_420
LBB0_408:
	adrp	x8, _func0.out@PAGE
	add	x8, x8, _func0.out@PAGEOFF
	add	x8, x8, #10
	str	x8, [sp, #16]
	b	LBB0_420
LBB0_409:
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	ldur	x9, [x29, #-8]
	subs	x8, x8, x9
	cset	w8, eq
	tbnz	w8, #0, LBB0_422
	b	LBB0_423
LBB0_410:
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	ldur	x9, [x29, #-8]
	subs	x8, x8, x9
	cset	w8, eq
	tbnz	w8, #0, LBB0_423
	b	LBB0_411
LBB0_411:
	adrp	x8, _func0.out@PAGE
	add	x8, x8, _func0.out@PAGEOFF
	add	x8, x8, #160
	and	x8, x8, #0xff00
	ldr	q0, [x8]
	str	q0, [sp, #96]
	b	LBB0_432
LBB0_432:
	adrp	x8, _func0.out@PAGE
	add	x8, x8, _func0.out@PAGEOFF
	add	x8, x8, #10
	str	x8, [sp, #16]
	b	LBB0_432
LBB0_433:
	adrp	x8, _func0.out@PAGE
	add	x8, x8, _func0.out@PAGEOFF
	add	x8, x8, #1
	ldr	w8, [sp, #10]
	add	w8, w8, #1
	str	w8, [sp, #10]
	b	LBB0_432
LBB0_434:
	ldrsw	x9, [sp, #10]
	add	x8, sp, #18
	add	x8, x8, x9, lsl #3
	ldrb	w8, [x8]
	adrp	x9, _func0.out@PAGE
	add	x9, x9, _func0.out@PAGEOFF
	strb	w8, [x9]
	b	LBB0_432
LBB0_435:
	adrp	x8, _func0.out@PAGE
	add	x8, x8, _func0.out@PAGEOFF
	add	x8, x8, #10
	str	x8, [sp, #16]
	b	LBB0_432
LBB0_436:
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	ldur	x9, [x29, #-8]
	subs	x8, x8, x9
	cset	w8, eq
	tbnz	w8, #0, LBB0_440
	b	LBB0_441
LBB0_447:
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	ldur	x9, [x29, #-8]
	subs	x8, x8, x9
	cset	w8, eq
	tbnz	w8, #0, LBB0_441
	b	LBB0_448
LBB0_448:
	adrp	x8, _func0.out@PAGE
	add	x8, x8, _func0.out@PAGEOFF
	add	x8, x8, #160
	and	x8, x8, #0xff00
	ldr	q0, [x8]
	str	q0, [sp, #96]
	b	LBB0_456
LBB0_450:
	adrp	x8, _func0.out@PAGE
	add	x8, x8, _func0.out@PAGEOFF
	add	x8, x8, #10
	str	x8, [sp, #16]
	b	LBB0_456
LBB0_451:
	adrp	x8, _func0.out@PAGE
	add	x8, x8, _func0.out@PAGEOFF
	add	x8, x8, #1
	ldr	w8, [sp, #10]
	add	w8, w8, #1
	str	w8, [sp, #10]
	b	LBB0_456
LBB0_452:
	ldrsw	x9, [sp, #10]
	add	x8, sp, #18
	add	x8, x8, x9, lsl #3
	ldrb	w8, [x8]
	adrp	x9, _func0.out@PAGE
	add	x9, x9, _func0.out@PAGEOFF
	strb	w8, [x9]
	b	LBB0_456
LBB0_453:
	adrp	x8, _func0.out@PAGE
	add	x8, x8, _func0.out@PAGEOFF
	add	x8, x8, #10
	str	x8, [sp, #16]
	b	LBB0_456
LBB0_454:
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	ldur	x9, [x29, #-8]
	subs	x8, x8, x9
	cset	w8, eq
	tbnz	w8, #0, LBB0_456
	b	LBB0_455
LBB0_455:
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	ldur	x9, [x29, #-8]
	subs	x8, x8, x9
	cset	w8, eq
	tbnz	w8, #0, LBB0_456
	b	LBB0_460
LBB0_460:
	adrp	x8, _func0.out@PAGE
	add	x8, x8, _func0.out@PAGEOFF
	add	x8, x8, #160
	and	x8, x8, #0xff00
	ldr	q0, [x8]
	str	q0, [sp, #96]
	b	LBB0_470
LBB0_461:
	adrp	x8, _func0.out@PAGE
	add	x8, x8, _func0.out@PAGEOFF
	add	x8, x8, #10
	str	x8, [sp, #16]
	b	LBB0_470
LBB0_462:
	adrp	x8, _func0.out@PAGE
	add	x8, x8, _func0.out@PAGEOFF
	add	x8, x8, #1
	ldr	w8, [sp, #10]
	add	w8, w8, #1
	str	w8, [sp, #10]
	b	LBB0_470
LBB0_463:
	ldrsw	x9, [sp, #10]
	add	x8, sp, #18
	add	x8, x8, x9, lsl #3
	ldrb	w8, [x8]
	adrp	x9, _func0.out@PAGE
	add	x9, x9, _func0.out@PAGEOFF
	strb	w8, [x9]
	b	LBB0_470
LBB0_464:
	adrp	x8, _func0.out@PAGE
	add	x8, x8, _func0.out@PAGEOFF
	add	x8, x8, #10
	str	x8, [sp, #16]
	b	LBB0_470
LBB0_465:
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	ldur	x9, [x29, #-8]
	subs	x8, x8, x9
	cset	w8, eq
	tbnz	w8, #0, LBB0_480
	b	LBB0_481
LBB0_466:
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	ldur	x9, [x29, #-8]
	subs	x8, x8, x9
	cset	w8, eq
	tbnz	w8, #0, LBB0_481
	b	LBB0_467
LBB0_467:
	adrp	x8, _func0.out@PAGE
	add	x8, x8, _func0.out@PAGEOFF
	add	x8, x8, #160
	and	x8, x8, #0xff00
	ldr	q0, [x8]
	str	q0, [sp, #96]
	b	LBB0_488
LBB0_488:
	adrp	x8, _func0.out@PAGE
	add	x8, x8, _func0.out@PAGEOFF
	add	x8, x8, #10
	str	x8, [sp, #16]
	b	LBB0_488
LBB0_489:
	adrp	x8, _func0.out@PAGE
	add	x8, x8, _func0.out@PAGEOFF
	add	x8, x8, #1
	ldr	w8, [sp, #10]
	add	w8, w8, #1
	str	w8, [sp, #10]
	b	LBB0_488
LBB0_490:
	ldrsw	x9, [sp, #10]
	add	x8, sp, #18
	add	x8, x8, x9, lsl #3
	ldrb	w8, [x8]
	adrp	x9, _func0.out@PAGE
	add	x9, x9, _func0.out@PAGEOFF
	strb	w8, [x9]
	b	LBB0_488
LBB0_491:
	adrp	x8, _func0.out@PAGE
	add	x8, x8, _func0.out@PAGEOFF
	add	x8, x8, #10
	str	x8, [sp, #16]
	b	LBB0_488
LBB0_492:
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	ldur	x9, [x29, #-8]
	subs	x8, x8, x9
	cset	w8, eq
	tbnz	w8, #0, LBB0_500
	b	LBB0_501
LBB0_493:
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	ldur	x9, [x29, #-8]
	subs	x8, x8, x9
	cset	w8, eq
	tbnz	w8, #0, LBB0_501
	b	LBB0_510
LBB0_494:
	adrp	x8, _func0.out@PAGE
	add	x8, x8, _func0.out@PAGEOFF
	add	x8, x8, #160
	and	x8, x8, #0xff00
	ldr	q0, [x8]
	str	q0, [sp, #96]
	b	LBB0_530
LBB
