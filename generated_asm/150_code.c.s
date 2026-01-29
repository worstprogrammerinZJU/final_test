.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 13, 0	sdk_version 13, 3
	.globl	_func0                          ; -- Begin function func0
	.p2align	2
_func0:                                 ; @func0
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #96
	.cfi_def_cfa_offset 96
	stp	x29, x30, [sp, #80]             ; 16-byte Folded Spill
	add	x29, sp, #80
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	w0, [x29, #-4]
	ldursw	x8, [x29, #-4]
	lsl	x0, x8, #2
	bl	_malloc
	stur	x0, [x29, #-16]
	ldur	w8, [x29, #-4]
	add	w9, w8, #1
                                        ; implicit-def: $x8
	mov	x8, x9
	sxtw	x8, w8
	lsl	x0, x8, #3
	bl	_malloc
	stur	x0, [x29, #-24]
	ldur	w8, [x29, #-4]
	add	w9, w8, #1
                                        ; implicit-def: $x8
	mov	x8, x9
	sxtw	x8, w8
	lsl	x0, x8, #3
	bl	_malloc
	stur	x0, [x29, #-32]
	str	wzr, [sp, #44]
	b	LBB0_1
LBB0_1:                                 ; =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #44]
	ldur	w9, [x29, #-4]
	subs	w8, w8, w9
	cset	w8, gt
	tbnz	w8, #0, LBB0_4
	b	LBB0_2
LBB0_2:                                 ;   in Loop: Header=BB0_1 Depth=1
	mov	w0, #3
	str	w0, [sp, #20]                   ; 4-byte Folded Spill
	mov	w1, #4
	str	w1, [sp, #12]                   ; 4-byte Folded Spill
	bl	_calloc
	ldr	w1, [sp, #12]                   ; 4-byte Folded Reload
	ldur	x8, [x29, #-24]
	ldrsw	x9, [sp, #44]
	str	x0, [x8, x9, lsl #3]
	bl	_calloc
	ldur	x8, [x29, #-32]
	ldrsw	x9, [sp, #44]
	str	x0, [x8, x9, lsl #3]
	b	LBB0_3
LBB0_3:                                 ;   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #44]
	add	w8, w8, #1
	str	w8, [sp, #44]
	b	LBB0_1
LBB0_4:                                 ;   in Loop: Header=BB0_1 Depth=1
	mov	w8, #1
	str	w8, [sp, #32]                   ; 4-byte Folded Spill
	str	w8, [sp, #36]
	b	LBB0_5
LBB0_5:                                 ; =>This Loop Header: Depth=1
	ldr	w8, [sp, #36]
	subs	w8, w8, #3
	cset	w8, gt
	tbnz	w8, #0, LBB0_6
	b	LBB0_6
LBB0_6:                                 ;   in Loop: Header=BB0_3 Depth=2
	mov	w8, #1
	str	w8, [sp, #24]                   ; 4-byte Folded Spill
	str	wzr, [sp, #16]
	b	LBB0_7
LBB0_7:                                 ; =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #36]
	add	w8, w8, #1
	str	w8, [sp, #36]
	b	LBB0_3
LBB0_8:                                 ;   in Loop: Header=BB0_3 Depth=2
	ldr	w8, [sp, #36]
	add	w8, w8, #1
	str	w8, [sp, #36]
	b	LBB0_3
LBB0_9:                                 ;   in Loop: Header=BB0_3 Depth=2
	ldr	w8, [sp, #36]
	add	w8, w8, #1
	str	w8, [sp, #36]
	b	LBB0_3
LBB0_10:                                ; =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #36]
	add	w8, w8, #1
	str	w8, [sp, #36]
	b	LBB0_3
LBB0_11:                                ;   in Loop: Header=BB0_3 Depth=2
	ldur	x8, [x29, #-24]
	ldrsw	x9, [sp, #36]
	ldr	x8, [x8, x9, lsl #3]
	ldrsw	x9, [sp, #16]
	ldr	w8, [x8, x9, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsw	x10, [sp, #36]
	ldr	x9, [x9, x10, lsl #3]
	ldrsw	x10, [sp, #16]
	str	w8, [x9, x10, lsl #2]
	ldur	x9, [x29, #-16]
	ldrsw	x10, [sp, #36]
	ldr	x9, [x9, x10, lsl #3]
	ldrsw	x10, [sp, #16]
	ldr	w9, [x9, x10, lsl #2]
	ldr	w10, [sp, #36]
	add	w9, w9, w10
	str	w9, [sp, #4]                    ; 4-byte Folded Spill
	ldur	x9, [x29, #-32]
	ldr	x9, [x9]
	ldrsw	x10, [sp, #36]
	ldr	w9, [x9, x10, lsl #2]
	ldur	x10, [x29, #-32]
	ldrsw	x10, [sp, #36]
	ldr	x10, [x10, x10, lsl #3]
	ldrsw	x10, [sp, #16]
	str	w9, [x10, x10, lsl #2]
	ldr	w9, [sp, #4]                    ; 4-byte Folded Reload
	ldr	w10, [sp, #4]                   ; 4-byte Folded Reload
	ldr	w9, [x9, x10, lsl #2]
	add	w8, w8, w9
	str	w8, [x9, x10, lsl #2]
	b	LBB0_11
LBB0_12:                                ; =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #4]                    ; 4-byte Folded Reload
	ldr	w9, [sp, #32]                   ; 4-byte Folded Reload
	str	w9, [sp, #4]                    ; 4-byte Folded Spill
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB0_14
	b	LBB0_13
LBB0_13:                                ;   in Loop: Header=BB0_12 Depth=1
	ldur	x8, [x29, #-24]
	ldrsw	x9, [sp, #4]                    ; 4-byte Folded Reload
	ldr	x0, [x8, x9, lsl #3]
	bl	_free
	ldur	x8, [x29, #-32]
	ldrsw	x9, [sp, #4]
	ldr	x0, [x8, x9, lsl #3]
	bl	_free
	b	LBB0_14
LBB0_14:                                ;   in Loop: Header=BB0_12 Depth=1
	ldr	w8, [sp, #4]                    ; 4-byte Folded Reload
	ldr	w9, [sp, #32]                   ; 4-byte Folded Reload
	add	w8, w8, #1
	str	w8, [sp, #4]                    ; 4-byte Folded Spill
	subs	w9, w8, #1
	ldr	x8, [sp, #32]                   ; 4-byte Folded Reload
	str	w9, [sp, #12]                   ; 4-byte Folded Spill
	ldur	x9, [x29, #-32]
	ldrsw	x10, [sp, #4]
	ldr	x9, [x9, x10, lsl #3]
	ldrsw	x10, [sp, #16]
	ldr	w9, [x9, x10, lsl #2]
	ldr	w10, [sp, #32]                  ; 4-byte Folded Reload
	ldr	w10, [sp, #12]                  ; 4-byte Folded Reload
	ldr	x11, [sp, #32]                  ; 4-byte Folded Reload
	ldr	x12, [sp, #36]
	ldrsw	x13, [sp, #4]
	ldr	x12, [x12, x13, lsl #3]
	ldrsw	x13, [sp, #16]
	str	w9, [x12, x13, lsl #2]
	ldr	w9, [sp, #16]
	add	w9, w9, w10
	ldr	w10, [sp, #36]
	add	w9, w9, w10
	str	w9, [sp, #16]
	b	LBB0_14
LBB0_15:                                ; =>This Loop Header: Depth=1
	ldr	w8, [sp, #12]                   ; 4-byte Folded Reload
	ldr	w9, [sp, #4]                    ; 4-byte Folded Reload
	add	w8, w8, w9
	str	w8, [sp, #12]                   ; 4-byte Folded Spill
	subs	w8, w8, #0
	cset	w8, lt
	tbnz	w8, #0, LBB0_17
	b	LBB0_16
LBB0_16:                                ;   in Loop: Header=BB0_15 Depth=1
	ldr	w8, [sp, #4]                    ; 4-byte Folded Reload
	ldr	w9, [sp, #32]                   ; 4-byte Folded Reload
	add	w8, w8, w9
	str	w8, [sp, #4]                    ; 4-byte Folded Spill
	ldur	x8, [x29, #-32]
	ldrsw	x9, [sp, #4]
	ldr	x8, [x8, x9, lsl #3]
	ldrsh	x9, [sp, #36]
	ldr	w8, [x8, x9, lsl #2]
	ldr	x9, [sp, #32]                   ; 4-byte Folded Reload
	ldr	x10, [sp, #36]
	ldrsw	x11, [sp, #4]
	ldr	x10, [x10, x11, lsl #3]
	ldrsh	x11, [sp, #16]
	str	w8, [x10, x11, lsl #2]
	ldr	x8, [sp, #32]                   ; 4-byte Folded Reload
	ldr	x9, [sp, #36]
	ldrsh	x10, [sp, #4]
	ldr	x9, [x9, x10, lsl #3]
	ldrsh	x10, [sp, #16]
	str	w8, [x9, x10, lsl #2]
	b	LBB0_16
LBB0_17:                                 ; =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #4]                    ; 4-byte Folded Reload
	ldr	w9, [sp, #32]                   ; 4-byte Folded Reload
	add	w8, w8, w9
	str	w8, [sp, #4]                    ; 4-byte Folded Spill
	subs	w8, w8, #0
	cset	w8, gt
	tbnz	w8, #0, LBB0_20
	b	LBB0_18
LBB0_20:                                ;   in Loop: Header=BB0_17 Depth=1
	ldr	w8, [sp, #4]                    ; 4-byte Folded Reload
	ldr	w9, [sp, #32]                   ; 4-byte Folded Reload
	add	w8, w8, w9
	str	w8, [sp, #4]                    ; 4-byte Folded Spill
	ldur	x8, [x29, #-32]
	ldrsw	x9, [sp, #4]
	ldr	x8, [x8, x9, lsl #3]
	ldrsh	x9, [sp, #36]
	ldr	w8, [x8, x9, lsl #2]
	ldr	w9, [sp, #32]                   ; 4-byte Folded Reload
	ldr	w10, [sp, #36]
	add	w8, w8, w9
	str	w8, [sp, #16]
	b	LBB0_20
LBB0_21:                                ; =>This Loop Header: Depth=1
	ldr	w8, [sp, #4]                    ; 4-byte Folded Reload
	ldr	w9, [sp, #32]                   ; 4-byte Folded Reload
	add	w8, w8, w9
	str	w8, [sp, #16]
	b	LBB0_20
LBB0_22:                                ; =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #16]
	add	w8, w8, #1
	str	w8, [sp, #16]
	b	LBB0_20
LBB0_23:                                ; =>This Loop Header: Depth=1
	ldr	w8, [sp, #4]                    ; 4-byte Folded Reload
	ldr	w9, [sp, #32]                   ; 4-byte Folded Reload
	add	w8, w8, w9
	str	w8, [sp, #12]                   ; 4-byte Folded Spill
	ldur	x8, [x29, #-32]
	ldrsw	x9, [sp, #4]
	ldr	x8, [x8, x9, lsl #3]
	ldrsh	x9, [sp, #16]
	ldr	w8, [x8, x9, lsl #2]
	ldr	x9, [sp, #32]                   ; 4-byte Folded Reload
	ldr	w10, [sp, #12]                  ; 4-byte Folded Reload
	ldr	x11, [sp, #36]
	ldrsw	x12, [sp, #4]
	ldr	x11, [x11, x12, lsl #3]
	ldrsh	x12, [sp, #16]
	str	w8, [x11, x12, lsl #2]
	ldr	w8, [sp, #36]
	add	w8, w8, w10
	ldr	w10, [sp, #36]
	add	w8, w8, w10
	str	w8, [sp, #16]
	b	LBB0_23
LBB0_24:                                ; =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #12]                   ; 4-byte Folded Reload
	ldr	w9, [sp, #4]                    ; 4-byte Folded Reload
	add	w8, w8, w9
	str	w8, [sp, #12]                   ; 4-byte Folded Spill
	subs	w8, w8, #0
	cset	w8, gt
	tbnz	w8, #0, LBB0_26
	b	LBB0_25
LBB0_25:                                ;   in Loop: Header=BB0_17 Depth=1
	ldr	w8, [sp, #12]                   ; 4-byte Folded Reload
	ldr	w9, [sp, #32]                   ; 4-byte Folded Reload
	add	w8, w8, w9
	str	w8, [sp, #12]                   ; 4-byte Folded Spill
	ldur	x8, [x29, #-32]
	ldrsw	x9, [sp, #4]
	ldr	x8, [x8, x9, lsl #3]
	ldrsh	x9, [sp, #16]
	ldr	w8, [x8, x9, lsl #2]
	ldr	w9, [sp, #32]                   ; 4-byte Folded Reload
	ldr	w10, [sp, #36]
	add	w8, w8, w9
	str	w8, [sp, #16]
	b	LBB0_25
LBB0_26:                                 ; =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #12]                   ; 4-byte Folded Reload
	ldr	w9, [sp, #32]                   ; 4-byte Folded Reload
	add	w8, w8, w9
	str	w8, [sp, #12]                   ; 4-byte Folded Spill
	subs	w8, w8, #0
	cset	w8, gt
	tbnz	w8, #0, LBB0_28
	b	LBB0_27
LBB0_27:                                 ;   in Loop: Header=BB0_17 Depth=1
	ldr	w8, [sp, #12]                   ; 4-byte Folded Reload
	ldr	w9, [sp, #32]                   ; 4-byte Folded Reload
	add	w8, w8, w9
	str	w8, [sp, #12]                   ; 4-byte Folded Spill
	ldur	x8, [x29, #-32]
	ldrsw	x9, [sp, #4]
	ldr	x8, [x8, x9, lsl #3]
	ldrsh	x9, [sp, #16]
	ldr	w8, [x8, x9, lsl #2]
	ldr	x9, [sp, #32]                   ; 4-byte Folded Reload
	ldr	w10, [sp, #36]
	add	w8, w8, w9
	str	w8, [sp, #16]
	b	LBB0_27
LBB0_28:                                 ; =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #12]                   ; 4-byte Folded Reload
	ldr	w9, [sp, #32]                   ; 4-byte Folded Reload
	add	w8, w8, w9
	str	w8, [sp, #12]                   ; 4-byte Folded Spill
	subs	w8, w8, #0
	cset	w8, gt
	tbnz	w8, #0, LBB0_30
	b	LBB0_29
LBB0_29:                                 ; =>This Loop Header: Depth=1
	ldr	w8, [sp, #12]                   ; 4-byte Folded Reload
	ldr	w9, [sp, #32]                   ; 4-byte Folded Reload
	add	w8, w8, w9
	str	w8, [sp, #12]                   ; 4-byte Folded Spill
	ldur	x8, [x29, #-32]
	ldrsw	x9, [sp, #4]
	ldr	x8, [x8, x9, lsl #3]
	ldrsh	x9, [sp, #16]
	ldr	w8, [x8, x9, lsl #2]
	ldr	x9, [sp, #32]                   ; 4-byte Folded Reload
	ldr	w10, [sp, #36]
	add	w8, w8, w9
	str	w8, [sp, #16]
	b	LBB0_30
LBB0_30:                                 ; =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #12]                   ; 4-byte Folded Reload
	ldr	w9, [sp, #32]                   ; 4-byte Folded Reload
	add	w8, w8, w9
	str	w8, [sp, #12]                   ; 4-byte Folded Spill
	subs	w8, w8, #0
	cset	w8, gt
	tbnz	w8, #0, LBB0_32
	b	LBB0_31
LBB0_31:                                 ; =>This Loop Header: Depth=1
	ldr	w8, [sp, #12]                   ; 4-byte Folded Reload
	ldr	w9, [sp, #32]                   ; 4-byte Folded Reload
	add	w8, w8, w9
	str	w8, [sp, #12]                   ; 4-byte Folded Spill
	ldur	x8, [x29, #-32]
	ldrsw	x9, [sp, #4]
	ldr	x8, [x8, x9, lsl #3]
	ldrsh	x9, [sp, #16]
	ldr	w8, [x8, x9, lsl #2]
	ldr	x9, [sp, #32]                   ; 4-byte Folded Reload
	ldr	w10, [sp, #36]
	add	w8, w8, w9
	str	w8, [sp, #16]
	b	LBB0_31
LBB0_32:                                 ; =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #12]                   ; 4-byte Folded Reload
	ldr	w9, [sp, #32]                   ; 4-byte Folded Reload
	add	w8, w8, w9
	str	w8, [sp, #12]                   ; 4-byte Folded Spill
	subs	w8, w8, #0
	cset	w8, gt
	tbnz	w8, #0, LBB0_34
	b	LBB0_33
LBB0_33:                                 ; =>This Loop Header: Depth=1
	ldr	w8, [sp, #12]                   ; 4-byte Folded Reload
	ldr	w9, [sp, #32]                   ; 4-byte Folded Reload
	add	w8, w8, w9
	str	w8, [sp, #12]                   ; 4-byte Folded Spill
	ldur	x8, [x29, #-32]
	ldrsw	x9, [sp, #4]
	ldr	x8, [x8, x9, lsl #3]
	ldrsh	x9, [sp, #16]
	ldr	w8, [x8, x9, lsl #2]
	ldr	x9, [sp, #32]                   ; 4-byte Folded Reload
	ldr	w10, [sp, #36]
	add	w8, w8, w9
	str	w8, [sp, #16]
	b	LBB0_33
LBB0_34:                                 ; =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #12]                   ; 4-byte Folded Reload
	ldr	w9, [sp, #32]                   ; 4-byte Folded Reload
	add	w8, w8, w9
	str	w8, [sp, #12]                   ; 4-byte Folded Spill
	subs	w8, w8, #0
	cset	w8, gt
	tbnz	w8, #0, LBB0_36
	b	LBB0_35
LBB0_35:                                 ; =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #12]                   ; 4-byte Folded Reload
	ldr	w9, [sp, #32]                   ; 4-byte Folded Reload
	add	w8, w8, w9
	str	w8, [sp, #12]                   ; 4-byte Folded Spill
	ldur	x8, [x29, #-32]
	ldrsw	x9, [sp, #4]
	ldr	x8, [x8, x9, lsl #3]
	ldrsh	x9, [sp, #16]
	ldr	w8, [x8, x9, lsl #2]
	ldr	x9, [sp, #32]                   ; 4-byte Folded Reload
	ldr	w10, [sp, #36]
	add	w8, w8, w9
	str	w8, [sp, #16]
	b	LBB0_35
LBB0_36:                                 ; =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #12]                   ; 4-byte Folded Reload
	ldr	w9, [sp, #32]                   ; 4-byte Folded Reload
	add	w8, w8, w9
	str	w8, [sp, #12]                   ; 4-byte Folded Spill
	subs	w8, w8, #0
	cset	w8, gt
	tbnz	w8, #0, LBB0_40
	b	LBB0_37
LBB0_37:                                 ; =>This Loop Header: Depth=1
	ldr	w8, [sp, #12]                   ; 4-byte Folded Reload
	ldr	w9, [sp, #32]                   ; 4-byte Folded Reload
	add	w8, w8, w9
	str	w8, [sp, #12]                   ; 4-byte Folded Spill
	ldur	x8, [x29, #-32]
	ldrsw	x9, [sp, #4]
	ldr	x8, [x8, x9, lsl #3]
	ldrsh	x9, [sp, #16]
	ldr	w8, [x8, x9, lsl #2]
	ldr	x9, [sp, #32]                   ; 4-byte Folded Reload
	ldr	w10, [sp, #36]
	add	w8, w8, w9
	str	w8, [sp, #16]
	b	LBB0_40
LBB0_40:                                 ; =>This Loop Header: Depth=1
	ldr	w8, [sp, #12]                   ; 4-byte Folded Reload
	ldr	w9, [sp, #32]                   ; 4-byte Folded Reload
	add	w8, w8, w9
	str	w8, [sp, #12]                   ; 4-byte Folded Spill
	subs	w8, w8, #0
	cset	w8, gt
	tbnz	w8, #0, LBB0_42
	b	LBB0_41
LBB0_41:                                 ; =>This Loop Header: Depth=1
	ldr	w8, [sp, #12]                   ; 4-byte Folded Reload
	ldr	w9, [sp, #32]                   ; 4-byte Folded Reload
	add	w8, w8, w9
	str	w8, [sp, #12]                   ; 4-byte Folded Spill
	ldur	x8, [x29, #-32]
	ldrsw	x9, [sp, #4]
	ldr	x8, [x8, x9, lsl #3]
	ldrsh	x9, [sp, #16]
	ldr	w8, [x8, x9, lsl #2]
	ldr	x9, [sp, #32]                   ; 4-byte Folded Reload
	ldr	w10, [sp, #36]
	add	w8, w8, w9
	str	w8, [sp, #16]
	b	LBB0_41
LBB0_42:                                 ; =>This Loop Header: Depth=1
	ldr	w8, [sp, #12]                   ; 4-byte Folded Reload
	ldr	w9, [sp, #32]                   ; 4-byte Folded Reload
	add	w8, w8, w9
	str	w8, [sp, #12]                   ; 4-byte Folded Spill
	subs	w8, w8, #0
	cset	w8, gt
	tbnz	w8, #0, LBB0_44
	b	LBB0_43
LBB0_43:                                 ; =>This Loop Header: Depth=1
	ldr	w8, [sp, #12]                   ; 4-byte Folded Reload
	ldr	w9, [sp, #32]                   ; 4-byte Folded Reload
	add	w8, w8, w9
	str	w8, [sp, #12]                   ; 4-byte Folded Spill
	ldur	x8, [x29, #-32]
	ldrsw	x9, [sp, #4]
	ldr	x8, [x8, x9, lsl #3]
	ldrsh	x9, [sp, #16]
	ldr	w8, [x8, x9, lsl #2]
	ldr	x9, [sp, #32]                   ; 4-byte Folded Reload
	ldr	w10, [sp, #36]
	add	w8, w8, w9
	str	w8, [sp, #16]
	b	LBB0_43
LBB0_44:                                 ; =>This Loop Header: Depth=1
	ldr	w8, [sp, #12]                   ; 4-byte Folded Reload
	ldr	w9, [sp, #32]                   ; 4-byte Folded Reload
	add	w8, w8, w9
	str	w8, [sp, #12]                   ; 4-byte Folded Spill
	subs	w8, w8, #0
	cset	w8, gt
	tbnz	w8, #0, LBB0_46
	b	LBB0_45
LBB0_45:                                 ; =>This Loop Header: Depth=1
	ldr	w8, [sp, #12]                   ; 4-byte Folded Reload
	ldr	w9, [sp, #32]                   ; 4-byte Folded Reload
	add	w8, w8, w9
	str	w8, [sp, #12]                   ; 4-byte Folded Spill
	ldur	x8, [x29, #-32]
	ldrsw	x9, [sp, #4]
	ldr	x8, [x8, x9, lsl #3]
	ldrsh	x9, [sp, #16]
	ldr	w8, [x8, x9, lsl #2]
	ldr	x9, [sp, #32]                   ; 4-byte Folded Reload
	ldr	w10, [sp, #36]
	add	w8, w8, w9
	str	w8, [sp, #16]
	b	LBB0_45
LBB0_46:                                 ; =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #12]                   ; 4-byte Folded Reload
	ldr	w9, [sp, #32]                   ; 4-byte Folded Reload
	add	w8, w8, w9
	str	w8, [sp, #12]                   ; 4-byte Folded Spill
	subs	w8, w8, #0
	cset	w8, gt
	tbnz	w8, #0, LBB0_50
	b	LBB0_47
LBB0_47:                                 ; =>This Loop Header: Depth=1
	ldr	w8, [sp, #12]                   ; 4-byte Folded Reload
	ldr	w9, [sp, #32]                   ; 4-byte Folded Reload
	add	w8, w8, w9
	str	w8, [sp, #12]                   ; 4-byte Folded Spill
	ldur	x8, [x29, #-32]
	ldrsw	x9, [sp, #4]
	ldr	x8, [x8, x9, lsl #3]
	ldrsh	x9, [sp, #16]
	ldr	w8, [x8, x9, lsl #2]
	ldr	x9, [sp, #32]                   ; 4-byte Folded Reload
	ldr	w10, [sp, #36]
	add	w8, w8, w9
	str	w8, [sp, #16]
	b	LBB0_50
LBB0_50:                                 ; =>This Loop Header: Depth=1
	ldr	w8, [sp, #12]                   ; 4-byte Folded Reload
	ldr	w9, [sp, #32]                   ; 4-byte Folded Reload
	add	w8, w8, w9
	str	w8, [sp, #12]                   ; 4-byte Folded Spill
	subs	w8, w8, #0
	cset	w8, gt
	tbnz	w8, #0, LBB0_52
	b	LBB0_49
LBB0_51:                                 ; =>This Loop Header: Depth=1
	ldr	w8, [sp, #12]                   ; 4-byte Folded Reload
	ldr	w9, [sp, #32]                   ; 4-byte Folded Reload
	add	w8, w8, w9
	str	w8, [sp, #12]                   ; 4-byte Folded Spill
	ldur	x8, [x29, #-32]
	ldrsw	x9, [sp, #4]
	ldr	x8, [x8, x9, lsl #3]
	ldrsh	x9, [sp, #16]
	ldr	w8, [x8, x9, lsl #2]
	ldr	x9, [sp, #32]                   ; 4-byte Folded Reload
	ldr	w10, [sp, #36]
	add	w8, w8, w9
	str	w8, [sp, #16]
	b	LBB0_52
LBB0_52:                                 ; =>This Loop Header: Depth=1
	ldr	w8, [sp, #12]                   ; 4-byte Folded Reload
	ldr	w9, [sp, #32]                   ; 4-byte Folded Reload
	add	w8, w8, w9
	str	w8, [sp, #12]                   ; 4-byte Folded Spill
	subs	w8, w8, #0
	cset	w8, gt
	tbnz	w8, #0, LBB0_54
	b	LBB0_53
LBB0_53:                                 ; =>This Loop Header: Depth=1
	ldr	w8, [sp, #12]                   ; 4-byte Folded Reload
	ldr	w9, [sp, #32]                   ; 4-byte Folded Reload
	add	w8, w8, w9
	str	w8, [sp, #12]                   ; 4-byte Folded Spill
	ldur	x8, [x29, #-32]
	ldrsw	x9, [sp, #4]
	ldr	x8, [x8, x9, lsl #3]
	ldrsh	x9, [sp, #16]
	ldr	w8, [x8, x9, lsl #2]
	ldr	x9, [sp, #32]                   ; 4-byte Folded Reload
	ldr	w10, [sp, #36]
	add	w8, w8, w9
	str	w8, [sp, #16]
	b	LBB0_54
LBB0_54:                                 ; =>This Loop Header: Depth=1
	ldr	w8, [sp, #12]                   ; 4-byte Folded Reload
	ldr	w9, [sp, #32]                   ; 4-byte Folded Reload
	add	w8, w8, w9
	str	w8, [sp, #12]                   ; 4-byte Folded Spill
	subs	w8, w8, #0
	cset	w8, gt
	tbnz	w8, #0, LBB0_56
	b	LBB0_55
LBB0_55:                                 ; =>This Loop Header: Depth=1
	ldr	w8, [sp, #12]                   ; 4-byte Folded Reload
	ldr	w9, [sp, #32]                   ; 4-byte Folded Reload
	add	w8, w8, w9
	str	w8, [sp, #12]                   ; 4-byte Folded Spill
	ldur	x8, [x29, #-32]
	ldrsw	x9, [sp, #4]
	ldr	x8, [x8, x9, lsl #3]
	ldrsh	x9, [sp, #16]
	ldr	w8, [x8, x9, lsl #2]
	ldr	x9, [sp, #32]                   ; 4-byte Folded Reload
	ldr	w10, [sp, #36]
	add	w8, w8, w9
	str	w8, [sp, #16]
	b	LBB0_55
LBB0_56:                                 ; =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #12]                   ; 4-byte Folded Reload
	ldr	w9, [sp, #32]                   ; 4-byte Folded Reload
	add	w8, w8, w9
	str	w8, [sp, #12]                   ; 4-byte Folded Spill
	subs	w8, w8, #0
	cset	w8, gt
	tbnz	w8, #0, LBB0_60
	b	LBB0_57
LBB0_57:                                 ; =>This Loop Header: Depth=1
	ldr	w8, [sp, #12]                   ; 4-byte Folded Reload
	ldr	w9, [sp, #32]                   ; 4-byte Folded Reload
	add	w8, w8, w9
	str	w8, [sp, #12]                   ; 4-byte Folded Spill
	ldur	x8, [x29, #-32]
	ldrsw	x9, [sp, #4]
	ldr	x8, [x8, x9, lsl #3]
	ldrsh	x9, [sp, #16]
	ldr	w8, [x8, x9, lsl #2]
	ldr	x9, [sp, #32]                   ; 4-byte Folded Reload
	ldr	w10, [sp, #36]
	add	w8, w8, w9
	str	w8, [sp, #16]
	b	LBB0_60
LBB0_60:                                 ; =>This Loop Header: Depth=1
	ldr	w8, [sp, #12]                   ; 4-byte Folded Reload
	ldr	w9, [sp, #32]                   ; 4-byte Folded Reload
	add	w8, w8, w9
	str	w8, [sp, #12]                   ; 4-byte Folded Spill
	subs	w8, w8, #0
	cset	w8, gt
	tbnz	w8, #0, LBB0_62
	b	LBB0_58
LBB0_61:                                 ; =>This Loop Header: Depth=1
	ldr	w8, [sp, #12]                   ; 4-byte Folded Reload
	ldr	w9, [sp, #32]                   ; 4-byte Folded Reload
	add	w8, w8, w9
	str	w8, [sp, #12]                   ; 4-byte Folded Spill
	ldur	x8, [x29, #-32]
	ldrsw	x9, [sp, #4]
	ldr	x8, [x8, x9, lsl #3]
	ldrsh	x9, [sp, #16]
	ldr	w8, [x8, x9, lsl #2]
	ldr	x9, [sp, #32]                   ; 4-byte Folded Reload
	ldr	w10, [sp, #36]
	add	w8, w8, w9
	str	w8, [sp, #16]
	b	LBB0_62
LBB0_62:                                 ; =>This Loop Header: Depth=1
	ldr	w8, [sp, #12]                   ; 4-byte Folded Reload
	ldr	w9, [sp, #32]                   ; 4-byte Folded Reload
	add	w8, w8, w9
	str	w8, [sp, #12]                   ; 4-byte Folded Spill
	subs	w8, w8, #0
	cset	w8, gt
	tbnz	w8, #0, LBB0_64
	b	LBB0_63
LBB0_63:                                 ; =>This Loop Header: Depth=1
	ldr	w8, [sp, #12]                   ; 4-byte Folded Reload
	ldr	w9, [sp, #32]                   ; 4-byte Folded Reload
	add	w8, w8, w9
	str	w8, [sp, #12]                   ; 4-byte Folded Spill
	ldur	x8, [x29, #-32]
	ldrsw	x9, [sp, #4]
	ldr	x8, [x8, x9, lsl #3]
	ldrsh	x9, [sp, #16]
	ldr	w8, [x8, x9, lsl #2]
	ldr	x9, [sp, #32]                   ; 4-byte Folded Reload
	ldr	w10, [sp, #36]
	add	w8, w8, w9
	str	w8, [sp, #16]
	b	LBB0_64
LBB0_64:                                 ; =>This Loop Header: Depth=1
	ldr	w8, [sp, #12]                   ; 4-byte Folded Reload
	ldr	w9, [sp, #32]                   ; 4-byte Folded Reload
	add	w8, w8, w9
	str	w8, [sp, #12]                   ; 4-byte Folded Spill
	subs	w8, w8, #0
	cset	w8, gt
	tbnz	w8, #0, LBB0_66
	b	LBB0_65
LBB0_65:                                 ; =>This Loop Header: Depth=1
	ldr	w8, [sp, #12]                   ; 4-byte Folded Reload
	ldr	w9, [sp, #32]                   ; 4-byte Folded Reload
	add	w8, w8, w9
	str	w8, [sp, #12]                   ; 4-byte Folded Spill
	ldur	x8, [x29, #-32]
	ldrsw	x9, [sp, #4]
	ldr	x8, [x8, x9, lsl #3]
	ldrsh	x9, [sp, #16]
	ldr	w8, [x8, x9, lsl #2]
	ldr	x9, [sp, #32]                   ; 4-byte Folded Reload
	ldr	w10, [sp, #36]
	add	w8, w8, w9
	str	w8, [sp, #16]
	b	LBB0_65
LBB0_66:                                 ; =>This Loop Header: Depth=1
	ldr	w8, [sp, #12]                   ; 4-byte Folded Reload
	ldr	w9, [sp, #32]                   ; 4-byte Folded Reload
	add	w8, w8, w9
	str	w8, [sp, #12]                   ; 4-byte Folded Spill
	subs	w8, w8, #0
	cset	w8, gt
	tbnz	w8, #0, LBB0_68
	b	LBB0_67
LBB0_67:                                 ; =>This Loop Header: Depth=1
	ldr	w8, [sp, #12]                   ; 4-byte Folded Reload
	ldr	w9, [sp, #32]                   ; 4-byte Folded Reload
	add	w8, w8, w9
	str	w8, [sp, #12]                   ; 4-byte Folded Spill
	ldur	x8, [x29, #-32]
	ldrsw	x9, [sp, #4]
	ldr	x8, [x8, x9, lsl #3]
	ldrsh	x9, [sp, #16]
	ldr	w8, [x8, x9, lsl #2]
	ldr	x9, [sp, #32]                   ; 4-byte Folded Reload
	ldr	w10, [sp, #36]
	add	w8, w8, w9
	str	w8, [sp, #16]
	b	LBB0_67
LBB0_68:                                 ; =>This Loop Header: Depth=1
	ldr	w8, [sp, #12]                   ; 4-byte Folded Reload
	ldr	w9, [sp, #32]                   ; 4-byte Folded Reload
	add	w8, w8, w9
	str	w8, [sp, #12]                   ; 4-byte Folded Spill
	subs	w8, w8, #0
	cset	w8, gt
	tbnz	w8, #0, LBB0_70
	b	LBB0_69
LBB0_69:                                 ; =>This Loop Header: Depth=1
	ldr	w8, [sp, #12]                   ; 4-byte Folded Reload
	ldr	w9, [sp, #32]                   ; 4-byte Folded Reload
	add	w8, w8, w9
	str	w8, [sp, #12]                   ; 4-byte Folded Spill
	ldur	x8, [x29, #-32]
	ldrsw	x9, [sp, #4]
	ldr	x8, [x8, x9, lsl #3]
	ldrsh	x9, [sp, #16]
	ldr	w8, [x8, x9, lsl #2]
	ldr	x9, [sp, #32]                   ; 4-byte Folded Reload
	ldr	w10, [sp, #36]
	add	w8, w8, w9
	str	w8, [sp, #16]
	b	LBB0_70
LBB0_70:                                 ; =>This Loop Header: Depth=1
	ldr	w8, [sp, #12]                   ; 4-byte Folded Reload
	ldr	w9, [sp, #32]                   ; 4-byte Folded Reload
	add	w8, w8, w9
	str	w8, [sp, #12]                   ; 4-byte Folded Spill
	subs	w8, w8, #0
	cset	w8, gt
	tbnz	w8, #0, LBB0_72
	b	LBB0_69
LBB0_71:                                 ; =>This Loop Header: Depth=1
	ldr	w8, [sp, #12]                   ; 4-byte Folded Reload
	ldr	w9, [sp, #32]                   ; 4-byte Folded Reload
	add	w8, w8, w9
	str	w8, [sp, #12]                   ; 4-byte Folded Spill
	ldur	x8, [x29, #-32]
	ldrsw	x9, [sp, #4]
	ldr	x8, [x8, x9, lsl #3]
	ldrsh	x9, [sp, #16]
	ldr	w8, [x8, x9, lsl #2]
	ldr	x9, [sp, #32]                   ; 4-byte Folded Reload
	ldr	w10, [sp, #36]
	add	w8, w8, w9
	str	w8, [sp, #16]
	b	LBB0_72
LBB0_72:                                 ; =>This Loop Header: Depth=1
	ldr	w8, [sp, #12]                   ; 4-byte Folded Reload
	ldr	w9, [sp, #32]                   ; 4-byte Folded Reload
	add	w8, w8, w9
	str	w8, [sp, #12]                   ; 4-byte Folded Spill
	subs	w8, w8, #0
	cset	w8, gt
	tbnz	w8, #0, LBB0_74
	b	LBB0_73
LBB0_73:                                 ; =>This Loop Header: Depth=1
	ldr	w8, [sp, #12]                   ; 4-byte Folded Reload
	ldr	w9, [sp, #32]                   ; 4-byte Folded Reload
	add	w8, w8, w9
	str	w8, [sp, #12]                   ; 4-byte Folded Spill
	ldur	x8, [x29, #-32]
	ldrsw	x9, [sp, #4]
	ldr	x8, [x8, x9, lsl #3]
	ldrsh	x9, [sp, #16]
	ldr	w8, [x8, x9, lsl #2]
	ldr	x9, [sp, #32]                   ; 4-byte Folded Reload
	ldr	w10, [sp, #36]
	add	w8, w8, w9
	str	w8, [sp, #16]
	b	LBB0_74
LBB0_74:                                 ; =>This Loop Header: Depth=1
	ldr	w8, [sp, #12]                   ; 4-byte Folded Reload
	ldr	w9, [sp, #32]                   ; 4-byte Folded Reload
	add	w8, w8, w9
	str	w8, [sp, #12]                   ; 4-byte Folded Spill
	subs	w8, w8, #0
	cset	w8, gt
	tbnz	w8, #0, LBB0_76
	b	LBB0_75
LBB0_75:                                 ; =>This Loop Header: Depth=1
	ldr	w8, [sp, #12]                   ; 4-byte Folded Reload
	ldr	w9, [sp, #32]                   ; 4-byte Folded Reload
	add	w8, w8, w9
	str	w8, [sp, #12]                   ; 4-byte Folded Spill
	ldur	x8, [x29, #-32]
	ldrsw	x9, [sp, #4]
	ldr	x8, [x8, x9, lsl #3]
	ldrsh	x9, [sp, #16]
	ldr	w8, [x8, x9, lsl #2]
	ldr	x9, [sp, #32]                   ; 4-byte Folded Reload
	ldr	w10, [sp, #36]
	add	w8, w8, w9
	str	w8, [sp, #16]
	b	LBB0_76
LBB0_76:                                 ; =>This Loop Header: Depth=1
	ldr	w8, [sp, #12]                   ; 4-byte Folded Reload
	ldr	w9, [sp, #32]                   ; 4-byte Folded Reload
	add	w8, w8, w9
	str	w8, [sp, #12]                   ; 4-byte Folded Spill
	subs	w8, w8, #0
	cset	w8, gt
	tbnz	w8, #0, LBB0_80
	b	LBB0_75
LBB0_77:                                 ; =>This Loop Header: Depth=1
	ldr	w8, [sp, #12]                   ; 4-byte Folded Reload
	ldr	w9, [sp, #32]                   ; 4-byte Folded Reload
	add	w8, w8, w9
	str	w8, [sp, #12]                   ; 4-byte Folded Spill
	ldur	x8, [x29, #-32]
	ldrsw	x9, [sp, #4]
	ldr	x8, [x8, x9, lsl #3]
	ldrsh	x9, [sp, #16]
	ldr	w8, [x8, x9, lsl #2]
	ldr	x9, [sp, #32]                   ; 4-byte Folded Reload
	ldr	w10, [sp, #36]
	add	w8, w8, w9
	str	w8, [sp, #16]
	b	LBB0_80
LBB0_80:                                 ; =>This Loop Header: Depth=1
	ldr	w8, [sp, #12]                   ; 4-byte Folded Reload
	ldr	w9, [sp, #32]                   ; 4-byte Folded Reload
	add	w8, w8, w9
	str	w8, [sp, #12]                   ; 4-byte Folded Spill
	subs	w8, w8, #0
	cset	w8, gt
	tbnz	w8, #0, LBB0_82
	b	LBB0_77
LBB0_81:                                 ; =>This Loop Header: Depth=1
	ldr	w8, [sp, #12]                   ; 4-byte Folded Reload
	ldr	w9, [sp, #32]                   ; 4-byte Folded Reload
	add	w8, w8, w9
	str	w8, [sp, #12]                   ; 4-byte Folded Spill
	ldur	x8, [x29, #-32]
	ldrsw	x9, [sp, #4]
	ldr	x8, [x8, x9, lsl #3]
	ldrsh	x9, [sp, #16]
	ldr	w8, [x8, x9, lsl #2]
	ldr	x9, [sp, #32]                   ; 4-byte Folded Reload
	ldr	w10, [sp, #36]
	add	w8, w8, w9
	str	w8, [sp, #16]
	b	LBB0_82
LBB0_82:                                 ; =>This Loop Header: Depth=1
	ldr	w8, [sp, #12]                   ; 4-byte Folded Reload
	ldr	w9, [sp, #32]                   ; 4-byte Folded Reload
	add	w8, w8, w9
	str	w8, [sp, #12]                   ; 4-byte Folded Spill
	subs	w8, w8, #0
	cset	w8, gt
	tbnz	w8, #0, LBB0_84
	b	LBB0_81
LBB0_83:                                 ; =>This Loop Header: Depth=1
	ldr	w8, [sp, #12]                   ; 4-byte Folded Reload
	ldr	w9, [sp, #32]                   ; 4-byte Folded Reload
	add	w8, w8, w9
	str	w8, [sp, #12]                   ; 4-byte Folded Spill
	ldur	x8, [x29, #-32]
	ldrsw	x9, [sp, #4]
	ldr	x8, [x8, x9, lsl #3]
	ldrsh	x9, [sp, #16]
	ldr	w8, [x8, x9, lsl #2]
	ldr	x9, [sp, #32]                   ; 4-byte Folded Reload
	ldr	w10, [sp, #36]
	add	w8, w8, w9
	str	w8, [sp, #16]
	b	LBB0_84
LBB0_84:                                 ; =>This Loop Header: Depth=1
	ldr	w8, [sp, #12]                   ; 4-byte Folded Reload
	ldr	w9, [sp, #32]                   ; 4-byte Folded Reload
	add	w8, w8, w9
	str	w8, [sp, #12]                   ; 4-byte Folded Spill
	subs	w8, w8, #0
	cset	w8, gt
	tbnz	w8, #0, LBB0_86
	b	LBB0_83
LBB0_85:                                 ; =>This Loop Header: Depth=1
	ldr	w8, [sp, #12]                   ; 4-byte Folded Reload
	ldr	w9, [sp, #32]                   ; 4-byte Folded Reload
	add	w8, w8, w9
	str	w8, [sp, #12]                   ; 4-byte Folded Spill
	ldur	x8, [x29, #-32]
	ldrsw	x9, [sp, #4]
	ldr	x8, [x8, x9, lsl #3]
	ldrsh	x9, [sp, #16]
	ldr	w8, [x8, x9, lsl #2]
	ldr	x9, [sp, #32]                   ; 4-byte Folded Reload
	ldr	w10, [sp, #36]
	add	w8, w8, w9
	str	w8, [sp, #16]
	b	LBB0_86
LBB0_86:                                 ; =>This Loop Header: Depth=1
	ldr	w8, [sp, #12]                   ; 4-byte Folded Reload
	ldr	w9, [sp, #32]                   ; 4-byte Folded Reload
	add	w8, w8, w9
	str	w8, [sp, #12]                   ; 4-byte Folded Spill
	subs	w8, w8, #0
	cset	w8, gt
	tbnz	w8, #0, LBB0_88
	b	LBB0_85
LBB0_87:                                 ; =>This Loop Header: Depth=1
	ldr	w8, [sp, #12]                   ; 4-byte Folded Reload
	ldr	w9, [sp, #32]                   ; 4-byte Folded Reload
	add	w8, w8, w9
	str	w8, [sp, #12]                   ; 4-byte Folded Spill
	ldur	x8, [x29, #-32]
	ldrsw	x9, [sp, #4]
	ldr	x8, [x8, x9, lsl #3]
	ldrsh	x9, [sp, #16]
	ldr	w8, [x8, x9, lsl #2]
	ldr	x9, [sp, #32]                   ; 4-byte Folded Reload
	ldr	w10, [sp, #36]
	add	w8, w8, w9
	str	w8, [sp, #16]
	b	LBB0_88
LBB0_88:                                 ; =>This Loop Header: Depth=1
	ldr	w8, [sp, #12]                   ; 4-byte Folded Reload
	ldr	w9, [sp, #32]                   ; 4-byte Folded Reload
	add	w8, w8, w9
	str	w8, [sp, #12]                   ; 4-byte Folded Spill
	subs	w8, w8, #0
	cset	w8, gt
	tbnz	w8, #0, LBB0_90
	b	LBB0_87
LBB0_90:                                 ; =>This Loop Header: Depth=1
	ldr	w8, [sp, #12]                   ; 4-byte Folded Reload
	ldr	w9, [sp, #32]                   ; 4-byte Folded Reload
	add	w8, w8, w9
	str	w8, [sp, #12]                   ; 4-byte Folded Spill
	ldur	x8, [x29, #-32]
	ldrsw	x9, [sp, #4]
	ldr	x8, [x8, x9, lsl #3]
	ldrsh	x9, [sp, #16]
	ldr	w8, [x8, x9, lsl #2]
	ldr	x9, [sp, #32]                   ; 4-byte Folded Reload
	ldr	w10, [sp, #36]
	add	w8, w8, w9
	str	w8, [sp, #16]
	b	LBB0_90
LBB0_91:                                 ; =>This Loop Header: Depth=1
	ldr	w8, [sp, #12]                   ; 4-byte Folded Reload
	ldr	w9, [sp, #32]                   ; 4-byte Folded Reload
	add	w8, w8, w9
	str	w8, [sp, #12]                   ; 4-byte Folded Spill
	ldur	x8, [x29, #-32]
	ldrsw	x9, [sp, #4]
	ldr	x8, [x8, x9, lsl #3]
	ldrsh	x9, [sp, #16]
	ldr	w8, [x8, x9, lsl #2]
	ldr	x9, [sp, #32]                   ; 4-byte Folded Reload
	ldr	w10, [sp, #36]
	add	w8, w8, w9
	str	w8, [sp, #16]
	b	LBB0_90
LBB0_92:                                 ; =>This Loop Header: Depth=1
	ldr	w8, [sp, #12]                   ; 4-byte Folded Reload
	ldr	w9, [sp, #32]                   ; 4-byte Folded Reload
	add	w8, w8, w9
	str	w8, [sp, #12]                   ; 4-byte Folded Spill
	subs	w8, w8, #0
	cset	w8, gt
	tbnz	w8, #0, LBB0_94
	b	LBB0_91
LBB0_93:                                 ; =>This Loop Header: Depth=1
	ldr	w8, [sp, #12]                   ; 4-byte Folded Reload
	ldr	w9, [sp, #32]                   ; 4-byte Folded Reload
	add	w8, w8, w9
	str	w8, [sp, #12]                   ; 4-byte Folded Spill
	ldur	x8, [x29, #-32]
	ldrsw	x9, [sp, #4]
	ldr	x8, [x8, x9, lsl #3]
	ldrsh	x9, [sp, #16]
	ldr	w8, [x8, x9, lsl #2]
	ldr	x9, [sp, #32]                   ; 4-byte Folded Reload
	ldr	w10, [sp, #36]
	add	w8, w8, w9
	str	w8, [sp, #16]
	b	LBB0_94
LBB0_94:                                 ; =>This Loop Header: Depth=1
	ldr	w8, [sp, #12]                   ; 4-byte Folded Reload
	ldr	w9, [sp, #32]                   ; 4-byte Folded Reload
	add	w8, w8, w9
	str	w8, [sp, #12]                   ; 4-byte Folded Spill
	subs	w8, w8, #0
	cset	w8, gt
	tbnz	w8, #0, LBB0_96
	b	LBB0_93
LBB0_95:                                 ; =>This Loop Header: Depth=1
	ldr	w8, [sp, #12]                   ; 4-byte Folded Reload
	ldr	w9, [sp, #32]                   ; 4-byte Folded Reload
	add	w8, w8, w9
	str	w8, [sp, #12]                   ; 4-byte Folded Spill
	ldur	x8, [x29, #-32]
	ldrsw	x9, [sp, #4]
	ldr	x8, [x8, x9, lsl #3]
	ldrsh	x9, [sp, #16]
	ldr	w8, [x8, x9, lsl #2]
	ldr	x9, [sp, #32]                   ; 4-byte Folded Reload
	ldr	w10, [sp, #36]
	add	w8, w8, w9
	str	w8, [sp, #16]
	b	LBB0_96
LBB0_96:                                 ; =>This Loop Header: Depth=1
	ldr	w8, [sp, #12]                   ; 4-byte Folded Reload
	ldr	w9, [sp, #32]                   ; 4-byte Folded Reload
	add	w8, w8, w9
	str	w8, [sp, #12]                   ; 4-byte Folded Spill
	subs	w8, w8, #0
	cset	w8, gt
	tbnz	w8, #0, LBB0_98
	b	LBB0_95
LBB0_97:                                 ; =>This Loop Header: Depth=1
	ldr	w8, [sp, #12]                   ; 4-byte Folded Reload
	ldr	w9, [sp, #32]                   ; 4-byte Folded Reload
	add	w8, w8, w9
	str	w8, [sp, #12]                   ; 4-byte Folded Spill
	ldur	x8, [x29, #-32]
	ldrsw	x9, [sp, #4]
	ldr	x8, [x8, x9, lsl #3]
	ldrsh	x9, [sp, #16]
	ldr	w8, [x8, x9, lsl #2]
	ldr	x9, [sp, #32]                   ; 4-byte Folded Reload
	ldr	w10, [sp, #36]
	add	w8, w8, w9
	str	w8, [sp, #16]
	b	LBB0_98
LBB0_98:                                 ; =>This Loop Header: Depth=1
	ldr	w8, [sp, #12]                   ; 4-byte Folded Reload
	ldr	w9, [sp, #32]                   ; 4-byte Folded Reload
	add	w8, w8, w9
	str	w8, [sp, #12]                   ; 4-byte Folded Spill
	subs	w8, w8, #0
	cset	w8, gt
	tbnz	w8, #0, LBB0_100
	b	LBB0_97
LBB0_99:                                 ; =>This Loop Header: Depth=1
	ldr	w8, [sp, #12]                   ; 4-byte Folded Reload
	ldr	w9, [sp, #32]                   ; 4-byte Folded Reload
	add	w8, w8, w9
	str	w8, [sp, #12]                   ; 4-byte Folded Spill
	ldur	x8, [x29, #-32]
	ldrsw	x9, [sp, #4]
	ldr	x8, [x8, x9, lsl #3]
	ldrsh	x9, [sp, #16]
	ldr	w8, [x8, x9, lsl #2]
	ldr	x9, [sp, #32]                   ; 4-byte Folded Reload
	ldr	w10, [sp, #36]
	add	w8, w8, w9
	str	w8, [sp, #16]
	b	LBB0_100
LBB0_100:                                ; =>This Loop Header: Depth=1
	ldr	w8, [sp, #12]                   ; 4-byte Folded Reload
	ldr	w9, [sp, #32]                   ; 4-byte Folded Reload
	add	w8, w8, w9
	str	w8, [sp, #12]                   ; 4-byte Folded Spill
	subs	w8, w8, #0
	cset	w8, gt
	tbnz	w8, #0, LBB0_102
	b	LBB0_99
LBB0_101:                                ; =>This Loop Header: Depth=1
	ldr	w8, [sp, #12]                   ; 4-byte Folded Reload
	ldr	w9, [sp, #32]                   ; 4-byte Folded Reload
	add	w8, w8, w9
	str	w8, [sp, #12]                   ; 4-byte Folded Spill
	ldur	x8, [x29, #-32]
	ldrsw	x9, [sp, #4]
	ldr	x8, [x8, x9, lsl #3]
	ldrsh	x9, [sp, #16]
	ldr	w8, [x8, x9, lsl #2]
	ldr	x9, [sp, #32]                   ; 4-byte Folded Reload
	ldr	w10, [sp, #36]
	add	w8, w8, w9
	str	w8, [sp, #16]
	b	LBB0_102
LBB0_102:                                ; =>This Loop Header: Depth=1
	ldr	w8, [sp, #12]                   ; 4-byte Folded Reload
	ldr	w9, [sp, #32]                   ; 4-byte Folded Reload
	add	w8, w8, w9
	str	w8, [sp, #12]                   ; 4-byte Folded Spill
	subs	w8, w8, #0
	cset	w8, gt
	tbnz	w8, #0, LBB0_104
	b	LBB0_99
LBB0_103:                                ; =>This Loop Header: Depth=1
	ldr	w8, [sp, #12]                   ; 4-byte Folded Reload
	ldr	w9, [sp, #32]                   ; 4-byte Folded Reload
	add	w8, w8, w9
	str	w8, [sp, #12]                   ; 4-byte Folded Spill
	ldur	x8, [x29, #-32]
	ldrsw	x9, [sp, #4]
	ldr	x8, [x8, x9, lsl #3]
	ldrsh	x9, [sp, #16]
	ldr	w8, [x8, x9, lsl #2]
	ldr	x9, [sp, #32]                   ; 4-byte Folded Reload
	ldr	w10, [sp, #36]
	add	w8, w8, w9
	str	w8, [sp, #16]
	b	LBB0_104
LBB0_104:                                ; =>This Loop Header: Depth=1
	ldr	w8, [sp, #12]                   ; 4-byte Folded Reload
	ldr	w9, [sp, #32]                   ; 4-byte Folded Reload
	add	w8, w8, w9
	str	w8, [sp, #12]                   ; 4-byte Folded Spill
	subs	w8, w8, #0
	cset	w8, gt
	tbnz	w8, #0, LBB0_106
	b	LBB0_103
LBB0_105:                                ; =>This Loop Header: Depth=1
	ldr	w8, [sp, #12]                   ; 4-byte Folded Reload
	ldr	w9, [sp, #32]                   ; 4-byte Folded Reload
	add	w8, w8, w9
	str	w8, [sp, #12]                   ; 4-byte Folded Spill
	ldur	x8, [x29, #-32]
	ldrsw	x9, [sp, #4]
	ldr	x8, [x8, x9, lsl #3]
	ldrsh	x9, [sp, #16]
	ldr	w8, [x8, x9, lsl #2]
	ldr	x9, [sp, #32]                   ; 4-byte Folded Reload
	ldr	w10, [sp, #36]
	add	w8, w8, w9
	str	w8, [sp, #16]
	b	LBB0_106
LBB0_106:                                ; =>This Loop Header: Depth=1
	ldr	w8, [sp, #12]                   ; 4-byte Folded Reload
	ldr	w9, [sp, #32]                   ; 4-byte Folded Reload
	add	w8, w8, w9
	str	w8, [sp, #12]                   ; 4-byte Folded Spill
	subs	w8, w8, #0
	cset	w8, gt
	tbnz	w8, #0, LBB0_108
	b	LBB0_105
LBB0_107:                                ; =>This Loop Header: Depth=1
	ldr	w8, [sp, #12]                   ; 4-byte Folded Reload
	ldr	w9, [sp, #32]                   ; 4-byte Folded Reload
	add	w8, w8, w9
	str	w8, [sp, #12]                   ; 4-byte Folded Spill
	ldur	x8, [x29, #-32]
	ldrsw	x9, [sp, #4]
	ldr	x8, [x8, x9, lsl #3]
	ldrsh	x9, [sp, #16]
	ldr	w8, [x8, x9, lsl #2]
	ldr	x9, [sp, #32]                   ; 4-byte Folded Reload
	ldr	w10, [sp, #36]
	add	w8, w8, w9
	str	w8, [sp, #16]
	b	LBB0_108
LBB0_108:                                ; =>This Loop Header: Depth=1
	ldr	w8, [sp, #12]                   ; 4-byte Folded Reload
	ldr	w9, [sp, #32]                   ; 4-byte Folded Reload
	add	w8, w8, w9
	str	w8, [sp, #12]                   ; 4-byte Folded Spill
	subs	w8, w8, #0
	cset	w8, gt
	tbnz	w8, #0, LBB0_110
	b	LBB0_107
LBB0_110:                                ; =>This Loop Header: Depth=1
	ldr	w8, [sp, #12]                   ; 4-byte Folded Reload
	ldr	w9, [sp, #32]                   ; 4-byte Folded Reload
	add	w8, w8, w9
	str	w8, [sp, #12]                   ; 4-byte Folded Spill
	ldur	x8, [x29, #-32]
	ldrsw	x9, [sp, #4]
	ldr	x8, [x8, x9, lsl #3]
	ldrsh	x9, [sp, #16]
	ldr	w8, [x8, x9, lsl #2]
	ldr	x9, [sp, #32]                   ; 4-byte Folded Reload
	ldr	w10, [sp, #36]
	add	w8, w8, w9
	str	w8, [sp, #16]
	b	LBB0_110
LBB0_111:                                ; =>This Loop Header: Depth=1
	ldr	w8, [sp, #12]                   ; 4-byte Folded Reload
	ldr	w9, [sp, #32]                   ; 4-byte Folded Reload
	add	w8, w8, w9
	str	w8, [sp, #12]                   ; 4-byte Folded Spill
	ldur	x8, [x29, #-32]
	ldrsw	x9, [sp, #4]
	ldr	x8, [x8, x9, lsl #3]
	ldrsh	x9, [sp, #16]
	ldr	w8, [x8, x9, lsl #2]
	ldr	x9, [sp, #32]                   ; 4-byte Folded Reload
	ldr	w10, [sp, #36]
	add	w8, w8, w9
	str	w8, [sp, #16]
	b	LBB0_110
LBB0_112:                                ; =>This Loop Header: Depth=1
	ldr	w8, [sp, #12]                   ; 4-byte Folded Reload
	ldr	w9, [sp, #32]                   ; 4-byte Folded Reload
	add	w8, w8, w9
	str	w8, [sp, #12]                   ; 4-byte Folded Spill
	subs	w8, w8, #0
	cset	w8, gt
	tbnz	w8, #0, LBB0_114
	b	LBB0_111
LBB0_113:                                ; =>This Loop Header: Depth=1
	ldr	w8, [sp, #12]                   ; 4-byte Folded Reload
	ldr	w9, [sp, #32]                   ; 4-byte Folded Reload
	add	w8, w8, w9
	str	w8, [sp, #12]                   ; 4-byte Folded Spill
	ldur	x8, [x29, #-32]
	ldrsw	x9, [sp, #4]
	ldr	x8, [x8, x9, lsl #3]
	ldrsh	x9, [sp, #16]
	ldr	w8, [x8, x9, lsl #2]
	ldr	x9, [sp, #32]                   ; 4-byte Folded Reload
	ldr	w10, [sp, #36]
	add	w8, w8, w9
	str	w8, [sp, #16]
	b	LBB0_114
LBB0_114:                                ; =>This Loop Header: Depth=1
	ldr	w8, [sp, #12]                   ; 4-byte Folded Reload
	ldr	w9, [sp, #32]                   ; 4-byte Folded Reload
	add	w8, w8, w9
	str	w8, [sp, #12]                   ; 4-byte Folded Spill
	subs	w8, w8, #0
	cset	w8, gt
	tbnz	w8, #0, LBB0_116
	b	LBB0_113
LBB0_115:                                ; =>This Loop Header: Depth=1
	ldr	w8, [sp, #12]                   ; 4-byte Folded Reload
	ldr	w9, [sp, #32]                   ; 4-byte Folded Reload
	add	w8, w8, w9
	str	w8, [sp, #12]                   ; 4-byte Folded Spill
	ldur	x8, [x29, #-32]
	ldrsw	x9, [sp, #4]
	ldr	x8, [x8, x9, lsl #3]
	ldrsh	x9, [sp, #16]
	ldr	w8, [x8, x9, lsl #2]
	ldr	x9, [sp, #32]                   ; 4-byte Folded Reload
	ldr	w10, [sp, #36]
	add	w8, w8, w9
	str	w8, [sp, #16]
	b	LBB0_116
LBB0_116:                                ; =>This Loop Header: Depth=1
	ldr	w8, [sp, #12]                   ; 4-byte Folded Reload
	ldr	w9, [sp, #32]                   ; 4-byte Folded Reload
	add	w8, w8, w9
	str	w8, [sp, #12]                   ; 4-byte Folded Spill
	subs	w8, w8, #0
	cset	w8, gt
	tbnz	w8, #0, LBB0_118
	b	LBB0_115
LBB0_117:                                ; =>This Loop Header: Depth=1
	ldr	w8, [sp, #12]                   ; 4-byte Folded Reload
	ldr	w9, [sp, #32]                   ; 4-byte Folded Reload
	add	w8, w8, w9
	str	w8, [sp, #12]                   ; 4-byte Folded Spill
	ldur	x8, [x29, #-32]
	ldrsw	x9, [sp, #4]
	ldr	x8, [x8, x9, lsl #3]
	ldrsh	x9, [sp, #16]
	ldr	w8, [x8, x9, lsl #2]
	ldr	x9, [sp, #32]                   ; 4-byte Folded Reload
	ldr	w10, [sp, #36]
	add	w8, w8, w9
	str	w8, [sp, #16]
	b	LBB0_118
LBB0_118:                                ; =>This Loop Header: Depth=1
	ldr	w8, [sp, #12]                   ; 4-byte Folded Reload
	ldr	w9, [sp, #32]                   ; 4-byte Folded Reload
	add	w8, w8, w9
	str	w8, [sp, #12]                   ; 4-byte Folded Spill
	subs	w8, w8, #0
	cset	w8, gt
	tbnz	w8, #0, LBB0_120
	b	LBB0_117
LBB0_120:                                ; =>This Loop Header: Depth=1
	ldr	w8, [sp, #12]                   ; 4-byte Folded Reload
	ldr	w9, [sp, #32]                   ; 4-byte Folded Reload
	add	w8, w8, w9
	str	w8, [sp, #12]                   ; 4-byte Folded Spill
	ldur	x8, [x29, #-32]
	ldrsw	x9, [sp, #4]
	ldr	x8, [x8, x9, lsl #3]
	ldrsh	x9, [sp, #16]
	ldr	w8, [x8, x9, lsl #2]
	ldr	x9, [sp, #32]                   ; 4-byte Folded Reload
	ldr	w10, [sp, #36]
	add	w8, w8, w9
	str	w8, [sp, #16]
	b	LBB0_120
LBB0_121:                                ; =>This Loop Header: Depth=1
	ldr	w8, [sp, #12]                   ; 4-byte Folded Reload
	ldr	w9, [sp, #32]                   ; 4-byte Folded Reload
	add	w8, w8, w9
	str	w8, [sp, #12]                   ; 4-byte Folded Spill
	ldur	x8, [x29, #-32]
	ldrsw	x9, [sp, #4]
	ldr	x8, [x8, x9, lsl #3]
	ldrsh	x9, [sp, #16]
	ldr	w8, [x8, x9, lsl #2]
	ldr	x9, [sp, #32]                   ; 4-byte Folded Reload
	ldr	w10, [sp, #36]
	add	w8, w8, w9
	str	w8, [sp, #16]
	b	LBB0_120
LBB0_122:                                ; =>This Loop Header: Depth=1
	ldr	w8, [sp, #12]                   ; 4-byte Folded Reload
	ldr	w9, [sp, #32]                   ; 4-byte Folded Reload
	add	w8, w8, w9
	str	w8, [sp, #12]                   ; 4-byte Folded Spill
	subs	w8, w8, #0
	cset	w8, gt
	tbnz	w8, #0, LBB0_124
	b	LBB0_121
LBB0_123:                                ; =>This Loop Header: Depth=1
	ldr	w8, [sp, #12]                   ; 4-byte Folded Reload
	ldr	w9, [sp, #32]                   ; 4-byte Folded Reload
	add	w8, w8, w9
	str	w8, [sp, #12]                   ; 4-byte Folded Spill
	ldur	x8, [x29, #-32]
	ldrsw	x9, [sp, #4]
	ldr	x8, [x8, x9, lsl #3]
	ldrsh	x9, [sp, #16]
	ldr	w8, [x8, x9, lsl #2]
	ldr	x9, [sp, #32]                   ; 4-byte Folded Reload
	ldr	w10, [sp, #36]
	add	w8, w8, w9
	str	w8, [sp, #16]
	b	LBB0_124
LBB0_124:                                ; =>This Loop Header: Depth=1
	ldr	w8, [sp, #12]                   ; 4-byte Folded Reload
	ldr	w9, [sp, #32]                   ; 4-byte Folded Reload
	add	w8, w8, w9
	str	w8, [sp, #12]                   ; 4-byte Folded Spill
	subs	w8, w8, #0
	cset	w8, gt
	tbnz	w8, #0, LBB0_126
	b	LBB0_123
LBB0_125:                                ; =>This Loop Header: Depth=1
	ldr	w8, [sp, #12]                   ; 4-byte Folded Reload
	ldr	w9, [sp, #32]                   ; 4-byte Folded Reload
	add	w8, w8, w9
	str	w8, [sp, #12]                   ; 4-byte Folded Spill
	ldur	x8, [x29, #-32]
	ldrsw	x9, [sp, #4]
	ldr	x8, [x8, x9, lsl #3]
	ldrsh	x9, [sp, #16]
	ldr	w8, [x8, x9, lsl #2]
	ldr	x9, [sp, #32]                   ; 4-byte Folded Reload
	ldr	w10, [sp, #36]
	add	w8, w8, w9
	str	w8, [sp, #16]
	b	LBB0_126
LBB0_126:                                ; =>This Loop Header: Depth=1
	ldr	w8, [sp, #12]                   ; 4-byte Folded Reload
	ldr	w9, [sp, #32]                   ; 4-byte Folded Reload
	add	w8, w8, w9
	str	w8, [sp, #12]                   ; 4-byte Folded Spill
	subs	w8, w8, #0
	cset	w8, gt
	tbnz	w8, #0, LBB0_128
	b	LBB0_125
LBB0_127:                                ; =>This Loop Header: Depth=1
	ldr	w8, [sp, #12]                   ; 4-byte Folded Reload
	ldr	w9, [sp, #32]                   ; 4-byte Folded Reload
	add	w8, w8, w9
	str	w8, [sp, #12]                   ; 4-byte Folded Spill
	ldur	x8, [x29, #-32]
	ldrsw	x9, [sp, #4]
	ldr	x8, [x8, x9, lsl #3]
	ldrsh	x9, [sp, #16]
	ldr	w8, [x8, x9, lsl #2]
	ldr	x9, [sp, #32]                   ; 4-byte Folded Reload
	ldr	w10, [sp, #36]
	add	w8, w8, w9
	str	w8, [sp, #16]
	b	LBB0_128
LBB0_128:                                ; =>This Loop Header: Depth=1
	ldr	w8, [sp, #12]                   ; 4-byte Folded Reload
	ldr	w9, [sp, #32]                   ; 4-byte Folded Reload
	add	w8, w8, w9
	str	w8, [sp, #12]                   ; 4-byte Folded Spill
	subs	w8, w8, #0
	cset	w8, gt
	tbnz	w8, #0, LBB0_130
	b	LBB0_128
LBB0_130:                                ; =>This Loop Header: Depth=1
	ldr	w8, [sp, #12]                   ; 4-byte Folded Reload
	ldr	w9, [sp, #32]                   ; 4-byte Folded Reload
	add	w8, w8, w9
	str	w8, [sp, #12]                   ; 4-byte Folded Spill
	ldur	x8, [x29, #-32]
	ldrsw	x9, [sp, #4]
	ldr	x8, [x8, x9, lsl #3]
	ldrsh	x9, [sp, #16]
	ldr	w8, [x8, x9, lsl #2]
	ldr	x9, [sp, #32]                   ; 4-byte Folded Reload
	ldr	w10, [sp, #36]
	add	w8, w8, w9
	str	w8, [sp, #16]
	b	LBB0_130
LBB0_131:                                ; =>This Loop Header: Depth=1
	ldr	w8, [sp, #12]                   ; 4-byte Folded Reload
	ldr	w9, [sp, #32]                   ; 4-byte Folded Reload
	add	w8, w8, w9
	str	w8, [sp, #12]                   ; 4-byte Folded Spill
	ldur	x8, [x29, #-32]
	ldrsw	x9, [sp, #4]
	ldr	x8, [x8, x9, lsl #3]
	ldrsh	x9, [sp, #16]
	ldr	w8, [x8, x9, lsl #2]
	ldr	x9, [sp, #32]                   ; 4-byte Folded Reload
	ldr	w10, [sp, #36]
	add	w8, w8, w9
	str	w8, [sp, #16]
	b	LBB0_130
LBB0_132:                                ; =>This Loop Header: Depth=1
	ldr	w8, [sp, #12]                   ; 4-byte Folded Reload
	ldr	w9, [sp, #32]                   ; 4-byte Folded Reload
	add	w8, w8, w9
	str	w8, [sp, #12]                   ; 4-byte Folded Spill
	subs	w8, w8, #0
	cset	w8, gt
	tbnz	w8, #0, LBB0_134
	b	LBB0_131
LBB0_133:                                ; =>This Loop Header: Depth=1
	ldr	w8, [sp, #12]                   ; 4-byte Folded Reload
	ldr	w9, [sp, #32]                   ; 4-byte Folded Reload
	add	w8, w8, w9
	str	w8, [sp, #12]                   ; 4-byte Folded Spill
	ldur	x8, [x29, #-32]
	ldrsw	x9, [sp, #4]
	ldr	x8, [x8, x9, lsl #3]
	ldrsh	x9, [sp, #16]
	ldr	w8, [x8, x9, lsl #2]
	ldr	x9, [sp, #32]                   ; 4-byte Folded Reload
	ldr	w10, [sp, #36]
	add	w8, w8, w9
	str	w8, [sp, #16]
	b	LBB0_134
LBB0_134:                                ; =>This Loop Header: Depth=1
	ldr	w8, [sp, #12]                   ; 4-byte Folded Reload
	ldr	w9, [sp, #32]                   ; 4-byte Folded Reload
	add	w8, w8, w9
	str	w8, [sp, #12]                   ; 4-byte Folded Spill
	subs	w8, w8, #0
	cset	w8, gt
	tbnz	w8, #0, LBB0_136
	b	LBB0_133
LBB0_135:                                ; =>This Loop Header: Depth=1
	ldr	w8, [sp, #12]                   ; 4-byte Folded Reload
	ldr	w9, [sp, #32]                   ; 4-byte Folded Reload
	add	w8, w8, w9
	str	w8, [sp, #12]                   ; 4-byte Folded Spill
	ldur	x8, [x29, #-32]
	ldrsw	x9, [sp, #4]
	ldr	x8, [x8, x9, lsl #3]
	ldrsh	x9, [sp, #16]
	ldr	w8, [x8, x9, lsl #2]
	ldr	x9, [sp, #32]                   ; 4-byte Folded Reload
	ldr	w10, [sp, #36]
	add	w8, w8, w9
	str	w8, [sp, #16]
	b	LBB0_136
LBB0_136:                                ; =>This Loop Header: Depth=1
	ldr	w8, [sp, #12]                   ; 4-byte Folded Reload
	ldr	w9, [sp, #32]                   ; 4-byte Folded Reload
	add	w8, w8, w9
	str	w8, [sp, #12]                   ; 4-byte Folded Spill
	subs	w8, w8, #0
	cset	w8, gt
	tbnz	w8, #0, LBB0_140
	b	LBB0_135
LBB0_137:                                ; =>This Loop Header: Depth=1
	ldr	w8, [sp, #12]                   ; 4-byte Folded Reload
	ldr	w9, [sp, #32]                   ; 4-byte Folded Reload
	add	w8, w8, w9
	str	w8, [sp, #12]                   ; 4-byte Folded Spill
	ldur	x8, [x29, #-32]
	ldrsw	x9, [sp, #4]
	ldr	x8, [x8, x9, lsl #3]
	ldrsh	x9, [sp, #16]
	ldr	w8, [x8, x9, lsl #2]
	ldr	x9, [sp, #32]                   ; 4-byte Folded Reload
	ldr	w10, [sp, #36]
	add	w8, w8, w9
	str	w8, [sp, #16]
	b	LBB0_140
LBB0_138:                                ; =>This Loop Header: Depth=1
	ldr	w8, [sp, #12]                   ; 4-byte Folded Reload
	ldr	w9, [sp, #32]                   ; 4-byte Folded Reload
	add	w8, w8, w9
	str	w8, [sp, #12]                   ; 4-byte Folded Spill
	subs	w8, w8, #0
	cset	w8, gt
	tbnz	w8, #0, LBB0_142
	b	LBB0_137
LBB0_139:                                ; =>This Loop Header: Depth=1
	ldr	w8, [sp, #12]                   ; 4-byte Folded Reload
	ldr	w9, [sp, #32]                   ; 4-byte Folded Reload
	add	w8, w8, w9
	str	w8, [sp, #12]                   ; 4-byte Folded Spill
	ldur	x8, [x29, #-32]
	ldrsw	x9, [sp, #4]
	ldr	x8, [x8, x9, lsl #3]
	ldrsh	x9, [sp, #16]
	ldr	w8, [x8, x9, lsl #2]
	ldr	x9, [sp, #32]                   ; 4-byte Folded Reload
	ldr	w10, [sp, #36]
	add	w8, w8, w9
	str	w8, [sp, #16]
	b	LBB0_142
LBB0_140:                                ; =>This Loop Header: Depth=1
	ldr	w8, [sp, #12]                   ; 4-byte Folded Reload
	ldr	w9, [sp, #32]                   ; 4-byte Folded Reload
	add	w8, w8, w9
	str	w8, [sp, #12]                   ; 4-byte Folded Spill
	subs	w8, w8, #0
	cset	w8, gt
	tbnz	w8, #0, LBB0_144
	b	LBB0_139
LBB0_141:                                ; =>This Loop Header: Depth=1
	ldr	w8, [sp, #12]                   ; 4-byte Folded Reload
	ldr	w9, [sp, #32]                   ; 4-byte Folded Reload
	add	w8, w8, w9
	str	w8, [sp, #12]                   ; 4-byte Folded Spill
	ldur	x8, [x29, #-32]
	ldrsw	x9, [sp, #4]
	ldr	x8, [x8, x9, lsl #3]
	ldrsh	x9, [sp, #16]
	ldr	w8, [x8, x9, lsl #2]
	ldr	x9, [sp, #32]                   ; 4-byte Folded Reload
	ldr	w10, [sp, #36]
	add	w8, w8, w9
	str	w8, [sp, #16]
	b	LBB0_144
LBB0_142:                                ; =>This Loop Header: Depth=1
	ldr	w8, [sp, #12]                   ; 4-byte Folded Reload
	ldr	w9, [sp, #32]                   ; 4-byte Folded Reload
	add	w8, w8, w9
	str	w8, [sp, #12]                   ; 4-byte Folded Spill
	subs	w8, w8, #0
	cset	w8, gt
	tbnz	w8, #0, LBB0_146
	b	LBB0_141
LBB0_143:                                ; =>This Loop Header: Depth=1
	ldr	w8, [sp, #12]                   ; 4-byte Folded Reload
	ldr	w9, [sp, #32]                   ; 4-byte Folded Reload
	add	w8, w8, w9
	str	w8, [sp, #12]                   ; 4-byte Folded Spill
	ldur	x8, [x29, #-32]
	ldrsw	x9, [sp, #4]
	ldr	x8, [x8, x9, lsl #3]
	ldrsh	x9, [sp, #16]
	ldr	w8, [x8, x9, lsl #2]
	ldr	x9, [sp, #32]                   ; 4-byte Folded Reload
	ldr	w10, [sp, #36]
	add	w8, w8, w9
	str	w8, [sp, #16]
	b	LBB0_146
LBB0_144:                                ; =>This Loop Header: Depth=1
	ldr	w8, [sp, #12]                   ; 4-byte Folded Reload
	ldr	w9, [sp, #32]                   ; 4-byte Folded Reload
	add	w8, w8, w9
	str	w8, [sp, #12]                   ; 4-byte Folded Spill
	subs	w8, w8, #0
	cset	w8, gt
	tbnz	w8, #0, LBB0_146
	b	LBB0_143
LBB0_145:                                ; =>This Loop Header: Depth=1
	ldr	w8, [sp, #12]                   ; 4-byte Folded Reload
	ldr	w9, [sp, #32]                   ; 4-byte Folded Reload
	add	w8, w8, w9
	str	w8, [sp, #12]                   ; 4-byte Folded Spill
	ldur	x8, [x29, #-32]
	ldrsw	x9, [sp, #4]
	ldr	x8, [x8, x9, lsl #3]
	ldrsh	x9, [sp, #16]
	ldr	w8, [x8, x9, lsl #2]
	ldr	x9, [sp, #32]                   ; 4-byte Folded Reload
	ldr	w10, [sp, #36]
	add	w8, w8, w9
	str	w8, [sp, #16]
	b	LBB0_146
LBB0_146:                                ; =>This Loop Header: Depth=1
	ldr	w8, [sp, #12]                   ; 4-byte Folded Reload
	ldr	w9, [sp, #32]                   ; 4-byte Folded Reload
	add	w8, w8, w9
	str	w8, [sp, #12]                   ; 4-byte Folded Spill
	subs	w8, w8, #0
	cset	w8, gt
	tbnz	w8, #0, LBB0_150
	b	LBB0_145
LBB0_147:                                ; =>This Loop Header: Depth=1
	ldr	w8, [sp, #12]                   ; 4-byte Folded Reload
	ldr	w9, [sp, #32]                   ; 4-byte Folded Reload
	add	w8, w8, w9
	str	w8, [sp, #12]                   ; 4-byte Folded Spill
	ldur	x8, [x29, #-32]
	ldrsw	x9, [sp, #4]
	ldr	x8, [x8, x9, lsl #3]
	ldrsh	x9, [sp, #16]
	ldr	w8, [x8, x9, lsl #2]
	ldr	x9, [sp, #32]                   ; 4-byte Folded Reload
	ldr	w10, [sp, #36]
	add	w8, w8, w9
	str	w8, [sp, #16]
	b	LBB0_150
LBB0_150:                                ; =>This Loop Header: Depth=1
	ldr	w8, [sp, #12]                   ; 4-byte Folded Reload
	ldr	w9, [sp, #32]                   ; 4-byte Folded Reload
	add	w8, w8, w9
	str	w8, [sp, #12]                   ; 4-byte Folded Spill
	subs	w8, w8, #0
	cset	w8, gt
	tbnz	w8, #0, LBB0_152
	b	LBB0_147
LBB0_151:                                ; =>This Loop Header: Depth=1
	ldr	w8, [sp, #12]                   ; 4-byte Folded Reload
	ldr	w9, [sp, #32]                   ; 4-byte Folded Reload
	add	w8, w8, w9
	str	w8, [sp, #12]                   ; 4-byte Folded Spill
	ldur	x8, [x29, #-32]
	ldrsw	x9, [sp, #4]
	ldr	x8, [x8, x9, lsl #3]
	ldrsh	x9, [sp, #16]
	ldr	w8, [x8, x9, lsl #2]
	ldr	x9, [sp, #32]                   ; 4-byte Folded Reload
	ldr	w10, [sp, #36]
	add	w8, w8, w9
	str	w8, [sp, #16]
	b	LBB0_152
LBB0_152:                                ; =>This Loop Header: Depth=1
	ldr	w8, [sp, #12]                   ; 4-byte Folded Reload
	ldr	w9, [sp, #32]                   ; 4-byte Folded Reload
	add	w8, w8, w9
	str	w8, [sp, #12]                   ; 4-byte Folded Spill
	subs	w8, w8, #0
	cset	w8, gt
	tbnz	w8, #0, LBB0_154
	b	LBB0_151
LBB0_153:                                ; =>This Loop Header: Depth=1
	ldr	w8, [sp, #12]                   ; 4-byte Folded Reload
	ldr	w9, [sp, #32]                   ; 4-byte Folded Reload
	add	w8, w8, w9
	str	w8, [sp, #12]                   ; 4-byte Folded Spill
	ldur	x8, [x29, #-32]
	ldrsw	x9, [sp, #4]
	ldr	x8, [x8, x9, lsl #3]
	ldrsh	x9, [sp, #16]
	ldr	w8, [x8, x9, lsl #2]
	ldr	x9, [sp, #32]                   ; 4-byte Folded Reload
	ldr	w10, [sp, #36]
	add	w8, w8, w9
	str	w8, [sp, #16]
	b	LBB0_154
LBB0_154:                                ; =>This Loop Header: Depth=1
	ldr	w8, [sp, #12]                   ; 4-byte Folded Reload
	ldr	w9, [sp, #32]                   ; 4-byte Folded Reload
	add	w8, w8, w9
	str	w8, [sp, #12]                   ; 4-byte Folded Spill
	subs	w8, w8, #0
	cset	w8, gt
	tbnz	w8, #0, LBB0_156
	b	LBB0_153
LBB0_155:                                ; =>This Loop Header: Depth=1
	ldr	w8, [sp, #12]                   ; 4-byte Folded Reload
	ldr	w9, [sp, #32]                   ; 4-byte Folded Reload
	add	w8, w8, w9
	str	w8, [sp, #12]                   ; 4-byte Folded Spill
	ldur	x8, [x29, #-32]
	ldrsw	x9, [sp, #4]
	ldr	x8, [x8, x9, lsl #3]
	ldrsh	x9, [sp, #16]
	ldr	w8, [x8, x9, lsl #2]
	ldr	x9, [sp, #32]                   ; 4-byte Folded Reload
	ldr	w10, [sp, #36]
	add	w8, w8, w9
	str	w8, [sp, #16]
	b	LBB0_156
LBB0_156:                                ; =>This Loop Header: Depth=1
	ldr	w8, [sp, #12]                   ; 4-byte Folded Reload
	ldr	w9, [sp, #32]                   ; 4-byte Folded Reload
	add	w8, w8, w9
	str	w8, [sp, #12]                   ; 4-byte Folded Spill
	subs	w8, w8, #0
	cset	w8, gt
	tbnz	w8, #0, LBB0_158
	b	LBB0_155
LBB0_157:                                ; =>This Loop Header: Depth=1
	ldr	w8, [sp, #12]                   ; 4-byte Folded Reload
	ldr	w9, [sp, #32]                   ; 4-byte Folded Reload
	add	w8, w8, w9
	str	w8, [sp, #12]                   ; 4-byte Folded Spill
	ldur	x8, [x29, #-32]
	ldrsw	x9, [sp, #4]
	ldr	x8, [x8, x9, lsl #3]
	ldrsh	x9, [sp, #16]
	ldr	w8, [x8, x9, lsl #2]
	ldr	x9, [sp, #32]                   ; 4-byte Folded Reload
	ldr	w10, [sp, #36]
	add	w8, w8, w9
	str	w8, [sp, #16]
	b	LBB0_158
LBB0_158:                                ; =>This Loop Header: Depth=1
	ldr	w8, [sp, #12]                   ; 4-byte Folded Reload
	ldr	w9, [sp, #32]                   ; 4-byte Folded Reload
	add	w8, w8, w9
	str	w8, [sp, #12]                   ; 4-byte Folded Spill
	subs	w8, w8, #0
	cset	w8, gt
	tbnz	w8, #0, LBB0_160
	b	LBB0_157
LBB0_159:                                ; =>This Loop Header: Depth=1
	ldr	w8, [sp, #12]                   ; 4-byte Folded Reload
	ldr	w9, [sp, #32]                   ; 4-byte Folded Reload
	add	w8, w8, w9
	str	w8, [sp, #12]                   ; 4-byte Folded Spill
	ldur	x8, [x29, #-32]
	ldrsw	x9, [sp, #4]
	ldr	x8, [x8, x9, lsl #3]
	ldrsh	x9, [sp, #16]
	ldr	w8, [x8, x9, lsl #2]
	ldr	x9, [sp, #32]                   ; 4-byte Folded Reload
	ldr	w10, [sp, #36]
	add	w8, w8, w9
	str	w8, [sp, #16]
	b	LBB0_160
LBB0_160:                                ; =>This Loop Header: Depth=1
	ldr	w8, [sp, #12]                   ; 4-byte Folded Reload
	ldr	w9, [sp, #32]                   ; 4-byte Folded Reload
	add	w8, w8, w9
	str	w8, [sp, #12]                   ; 4-byte Folded Spill
	subs	w8, w8, #0
	cset	w8, gt
	tbnz	w8, #0, LBB0_162
	b	LBB0_159
LBB0_161:                                ; =>This Loop Header: Depth=1
	ldr	w8, [sp, #12]                   ; 4-byte Folded Reload
	ldr	w9, [sp, #32]                   ; 4-byte Folded Reload
	add	w8, w8, w9
	str	w8, [sp, #12]                   ; 4-byte Folded Spill
	ldur	x8, [x29, #-32]
	ldrsw	x9, [sp, #4]
	ldr	x8, [x8, x9, lsl #3]
	ldrsh	x9, [sp, #16]
	ldr	w8, [x8, x9, lsl #2]
	ldr	x9, [sp, #32]                   ; 4-byte Folded Reload
	ldr	w10, [sp, #36]
	add	w8, w8, w9
	str	w8, [sp, #16]
	b	LBB0_162
LBB0_162:                                ; =>This Loop Header: Depth=1
	ldr	w8, [sp, #12]                   ; 4-byte Folded Reload
	ldr	w9, [sp, #32]                   ; 4-byte Folded Reload
	add	w8, w8, w9
	str	w8, [sp, #12]                   ; 4-byte Folded Spill
	subs	w8, w8, #0
	cset	w8, gt
	tbnz	w8, #0, LBB0_164
	b	LBB0_159
LBB0_163:                                ; =>This Loop Header: Depth=1
	ldr	w8, [sp, #12]                   ; 4-byte Folded Reload
	ldr	w9, [sp, #32]                   ; 4-byte Folded Reload
	add	w8, w8, w9
	str	w8, [sp, #12]                   ; 4-byte Folded Spill
	ldur	x8, [x29, #-32]
	ldrsw	x9, [sp, #4]
	ldr	x8, [x8, x9, lsl #3]
	ldrsh	x9, [sp, #16]
	ldr	w8, [x8, x9, lsl #2]
	ldr	x9, [sp, #32]                   ; 4-byte Folded Reload
	ldr	w10, [sp, #36]
	add	w8, w8, w9
	str	w8, [sp, #16]
	b	LBB0_164
LBB0_164:                                ; =>This Loop Header: Depth=1
	ldr	w8, [sp, #12]                   ; 4-byte Folded Reload
	ldr	w9, [sp, #32]                   ; 4-byte Folded Reload
	add	w8, w8, w9
	str	w8, [sp, #12]                   ; 4-byte Folded Spill
	subs	w8, w8, #0
	cset	w8, gt
	tbnz	w8, #0, LBB0_166
	b	LBB0_159
LBB0_165:                                ; =>This Loop Header: Depth=1
	ldr	w8, [sp, #12]                   ; 4-byte Folded Reload
	ldr	w9, [sp, #32]                   ; 4-byte Folded Reload
	add	w8, w8, w9
	str	w8, [sp, #12]                   ; 4-byte Folded Spill
	ldur	x8, [x29, #-32]
	ldrsw	x9, [sp, #4]
	ldr	x8, [x8, x9, lsl #3]
	ldrsh	x9, [sp, #16]
	ldr	w8, [x8, x9, lsl #2]
	ldr	x9, [sp, #32]                   ; 4-byte Folded Reload
	ldr	w10, [sp, #36]
	add	w8, w8, w9
	str	w8, [sp, #16]
	b	LBB0_166
LBB0_166:                                ; =>This Loop Header: Depth=1
	ldr	w8, [sp, #12]                   ; 4-byte Folded Reload
	ldr	w9, [sp, #32]                   ; 4-byte Folded Reload
	add	w8, w8, w9
	str	w8, [sp, #12]                   ; 4-byte Folded Spill
	subs	w8, w8, #0
	cset	w8, gt
	tbnz	w8, #0, LBB0_168
	b	LBB0_165
LBB0_167:                                ; =>This Loop Header: Depth=1
	ldr	w8, [sp, #12]                   ; 4-byte Folded Reload
	ldr	w9, [sp, #32]                   ; 4-byte Folded Reload
	add	w8, w8, w9
	str	w8, [sp, #12]                   ; 4-byte Folded Spill
	ldur	x8, [x29, #-32]
	ldrsw	x9, [sp, #4]
	ldr	x8, [x8, x9, lsl #3]
	ldrsh	x9, [sp, #16]
	ldr	w8, [x8, x9, lsl #2]
	ldr	x9, [sp, #32]                   ; 4-byte Folded Reload
	ldr	w10, [sp, #36]
	add	w8, w8, w9
	str	w8, [sp, #16]
	b	LBB0_168
LBB0_168:                                ; =>This Loop Header: Depth=1
	ldr	w8, [sp, #12]                   ; 4-byte Folded Reload
	ldr	w9, [sp, #32]                   ; 4-byte Folded Reload
	add	w8, w8, w9
	str	w8, [sp, #12]                   ; 4-byte Folded Spill
	subs	w8, w8, #0
	cset	w8, gt
	tbnz	w8, #0, LBB0_170
	b	LBB0_167
LBB0_170:                                ; =>This Loop Header: Depth=1
	ldr	w8, [sp, #12]                   ; 4-byte Folded Reload
	ldr	w9, [sp, #32]                   ; 4-byte Folded Reload
	add	w8, w8, w9
