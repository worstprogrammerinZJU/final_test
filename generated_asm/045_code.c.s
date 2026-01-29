.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 13, 0	sdk_version 13, 3
	.globl	_func0                          ; -- Begin function func0
	.p2align	2
_func0:                                 ; @func0
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #128
	.cfi_def_cfa_offset 128
	stp	x29, x30, [sp, #112]            ; 16-byte Folded Spill
	add	x29, sp, #112
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	stur	x8, [x29, #-8]
	stur	x0, [x29, #-32]
	stur	w1, [x29, #-36]
	ldursw	x8, [x29, #-36]
	lsl	x0, x8, #2
	bl	_malloc
	stur	x0, [x29, #-48]
	str	wzr, [sp, #52]
	b	LBB0_1
LBB0_1:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_3 Depth 2
	ldr	w8, [sp, #52]
	ldur	w9, [x29, #-36]
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB0_11
	b	LBB0_2
LBB0_2:                                 ;   in Loop: Header=BB0_1 Depth=1
	ldur	x8, [x29, #-32]
	ldrsw	x9, [sp, #52]
	ldr	w0, [x8, x9, lsl #2]
	bl	_abs
	mov	x8, x0
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	mov	x9, sp
	str	x8, [x9]
	adrp	x3, l_.str@PAGE
	add	x3, x3, l_.str@PAGEOFF
	bl	___sprintf_chk
	str	wzr, [sp, #56]
	sub	x0, x29, #20
	str	x0, [sp, #24]                   ; 8-byte Folded Spill
	bl	_strlen
	mov	x8, x0
	str	w8, [sp, #52]
	mov	w8, #1
	str	w8, [sp, #48]
	b	LBB0_3
LBB0_3:                                 ;   Parent Loop BB0_1 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldr	w8, [sp, #48]
	ldr	w9, [sp, #52]
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB0_6
	b	LBB0_4
LBB0_4:                                 ;   in Loop: Header=BB0_3 Depth=2
	ldrsw	x9, [sp, #48]
	sub	x8, x29, #20
	str	x8, [sp, #32]                   ; 8-byte Folded Spill
	ldrsb	w8, [x8, x9, lsl #2]
	subs	w8, w8, #48
	ldr	w9, [sp, #56]
	add	w8, w8, w9
	str	w8, [sp, #56]
	b	LBB0_5
LBB0_5:                                 ;   in Loop: Header=BB0_3 Depth=2
	ldr	w8, [sp, #48]
	add	w8, w8, #1
	str	w8, [sp, #48]
	b	LBB0_3
LBB0_6:                                 ;   in Loop: Header=BB0_1 Depth=1
	ldur	x8, [x29, #-32]
	ldrsw	x9, [sp, #52]
	ldr	w8, [x8, x9, lsl #2]
	subs	w8, w8, #0
	cset	w8, le
	tbnz	w8, #0, LBB0_8
	b	LBB0_7
LBB0_7:                                 ;   in Loop: Header=BB0_3 Depth=2
	ldur	x0, [x29, #-48]
	ldr	w8, [sp, #48]
	subs	w9, w8, #1
	ldr	w8, [sp, #8]                    ; 4-byte Folded Reload
	ldr	w8, [x8, w9, sxtw #2]
	ldur	x9, [x29, #-48]
	ldrsw	x10, [sp, #48]
	ldr	w9, [x9, x10, lsl #2]
	subs	w8, w8, w9
	cset	w8, le
	tbnz	w8, #0, LBB0_17
	b	LBB0_8
LBB0_8:                                 ;   in Loop: Header=BB0_3 Depth=1
	ldrsw	x9, [sp, #48]
	ldur	x8, [x29, #-32]
	ldr	w8, [x8, x9, lsl #2]
	str	w8, [sp, #52]
	ldur	x8, [x29, #-48]
	ldr	w9, [sp, #48]
	subs	w9, w9, #1
	ldr	w8, [x8, w9, sxtw #2]
	ldur	x9, [x29, #-48]
	ldrsw	x10, [sp, #48]
	str	w8, [x9, x10, lsl #2]
	ldur	x8, [x29, #-32]
	ldrsw	x9, [sp, #48]
	ldr	w8, [x8, x9, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsw	x10, [sp, #48]
	str	w8, [x9, x10, lsl #2]
	ldur	x8, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [sp, #52]
	add	w9, w9, w10
	str	w9, [sp, #52]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11, lsl #2]
	ldur	x9, [x29, #-32]
	ldrsh	w9, [sp, #48]
                                        ; implicit-def: $x10
	mov	x10, x9
	ldr	w9, [x9]
	ldrsw	x11, [sp, #48]
	str	w9, [x10, x11,
