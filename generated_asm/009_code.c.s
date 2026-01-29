.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 13, 0	sdk_version 13, 3
	.globl	_func0                          ; -- Begin function func0
	.p2align	2
_func0:                                 ; @func0
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #112
	.cfi_def_cfa_offset 112
	stp	x29, x30, [sp, #96]             ; 16-byte Folded Spill
	add	x29, sp, #96
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #88]
	str	w1, [sp, #84]
	str	x2, [sp, #80]
	ldrsw	x8, [sp, #84]
	lsl	x0, x8, #2
	bl	_malloc
	str	x0, [sp, #80]
	ldrsw	x0, [sp, #84]
	mov	x1, #4
	str	x1, [sp, #16]                   ; 8-byte Folded Spill
	bl	_calloc
	ldr	x1, [sp, #16]                   ; 8-byte Folded Reload
	stur	x0, [x29, #-40]
	ldrsw	x0, [sp, #84]
	bl	_calloc
	str	x0, [sp, #48]
	str	wzr, [sp, #44]
	str	wzr, [sp, #40]
	str	wzr, [sp, #36]
	str	wzr, [sp, #32]
	b	LBB0_1
LBB0_1:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_3 Depth 2
                                        ;     Child Loop BB0_11 Depth 2
	ldr	w8, [sp, #32]
	ldr	w9, [sp, #84]
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB0_21
	b	LBB0_2
LBB0_2:                                 ;   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #88]
	ldrsw	x9, [sp, #32]
	ldr	w8, [x8, x9, lsl #2]
	str	w8, [sp, #28]
	str	wzr, [sp, #24]
	str	wzr, [sp, #20]
	b	LBB0_3
LBB0_3:                                 ;   Parent Loop BB0_1 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldr	w8, [sp, #20]
	ldr	w9, [sp, #40]
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB0_8
	b	LBB0_4
LBB0_4:                                 ;   in Loop: Header=BB0_3 Depth=2
	ldr	x8, [sp, #48]
	ldrsw	x9, [sp, #20]
	ldr	w8, [x8, x9, lsl #2]
	ldr	w9, [sp, #28]
	subs	w8, w8, w9
	cset	w8, ne
	tbnz	w8, #0, LBB0_6
	b	LBB0_5
LBB0_5:                                 ;   in Loop: Header=BB0_3 Depth=1
	mov	w8, #1
	str	w8, [sp, #24]
	b	LBB0_8
LBB0_6:                                 ;   in Loop: Header=BB0_3 Depth=2
	b	LBB0_7
LBB0_7:                                 ;   in Loop: Header=BB0_3 Depth=2
	ldr	w8, [sp, #20]
	add	w8, w8, #1
	str	w8, [sp, #20]
	b	LBB0_3
LBB0_8:                                 ;   in Loop: Header=BB0_3 Depth=1
	ldr	w8, [sp, #24]
	subs	w8, w8, #0
	cset	w8, eq
	tbnz	w8, #0, LBB0_10
	b	LBB0_9
LBB0_9:                                 ;   in Loop: Header=BB0_3 Depth=1
	ldr	w8, [sp, #28]
	ldr	x9, [sp, #80]
	ldr	w10, [sp, #40]
	add	w10, w10, #1
	str	w10, [sp, #40]
	str	w8, [x9, w10, sxtw #2]
	b	LBB0_11
LBB0_10:                                ;   in Loop: Header=BB0_3 Depth=1
	ldr	w8, [sp, #24]
	ldr	x9, [sp, #80]
	ldr	w10, [sp, #44]
	add	w10, w10, #1
	str	w10, [sp, #44]
	str	w8, [x9, w10, sxtw #2]
	b	LBB0_11
LBB0_11:                                ;   in Loop: Header=BB0_3 Depth=1
	b	LBB0_12
LBB0_12:                                ;   in Loop: Header=BB0_3 Depth=1
	ldr	w8, [sp, #24]
	add	w8, w8, #1
	str	w8, [sp, #24]
	b	LBB0_3
LBB0_13:
	ldr	w8, [sp, #40]
	ldr	x9, [sp, #80]
	str	w8, [x9]
	ldur	x0, [x29, #-40]
	bl	_free
	ldr	x0, [sp, #80]
	bl	_free
	ldr	x0, [sp, #80]
	ldp	x29, x30, [sp, #96]             ; 16-byte Folded Reload
	add	sp, sp, #112
	ret
	.cfi_endproc
                                        ; -- End function
.subsections_via_symbols
