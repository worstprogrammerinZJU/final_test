.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 13, 0	sdk_version 13, 3
	.section	__TEXT,__literal8,8byte_literals
	.p2align	3                               ; -- Begin function func0
lCPI0_0:
	.quad	0x3eb0c6f7a0b5ed8d              ; double 9.9999999999999995E-7
lCPI0_1:
	.quad	0x3ff0000000000000              ; double 1
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_func0
	.p2align	2
_func0:                                 ; @func0
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	.cfi_def_cfa_offset 64
	str	x0, [sp, #56]
	str	w1, [sp, #52]
	movi	d0, #0000000000000000
	str	d0, [sp, #40]
	ldr	x8, [sp, #56]
	ldr	d0, [x8]
	str	d0, [sp, #32]
	mov	w8, #1
	str	w8, [sp, #12]
	b	LBB0_1
LBB0_1:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_3 Depth 2
	ldr	w8, [sp, #12]
	ldr	w9, [sp, #52]
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB0_8
	b	LBB0_2
LBB0_2:                                 ;   in Loop: Header=BB0_1 Depth=1
	adrp	x8, lCPI0_1@PAGE
	ldr	d0, [x8, lCPI0_1@PAGEOFF]
	str	d0, [sp, #16]
	str	wzr, [sp, #8]
	b	LBB0_3
LBB0_3:                                 ;   Parent Loop BB0_1 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldr	w8, [sp, #8]
	ldr	w9, [sp, #12]
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB0_6
	b	LBB0_4
LBB0_4:                                 ;   in Loop: Header=BB0_3 Depth=2
	ldr	d0, [sp, #40]
	ldr	d1, [sp, #16]
	fmul	d0, d0, d1
	str	d0, [sp, #16]
	b	LBB0_5
LBB0_5:                                 ;   in Loop: Header=BB0_3 Depth=2
	ldr	w8, [sp, #8]
	add	w8, w8, #1
	str	w8, [sp, #8]
	b	LBB0_3
LBB0_6:                                 ;   in Loop: Header=BB0_1 Depth=1
	ldr	d0, [sp, #40]
	ldr	d1, [sp, #12]
	ldr	d2, [sp, #8]
	fdiv	d1, d1, d2
	fsub	d0, d0, d1
	str	d0, [sp, #40]
	ldr	x8, [sp, #56]
	ldr	d0, [x8]
	str	d0, [sp, #32]
	mov	w8, #1
	str	w8, [sp, #12]
	b	LBB0_1
LBB0_7:                                 ;   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #12]
	add	w8, w8, #1
	str	w8, [sp, #12]
	b	LBB0_1
LBB0_8:                                 ;   in Loop: Header=BB0_9 Depth=1
	ldr	d0, [sp, #40]
	add	d0, d0, #1
	fcvtzs	x8, s0
	ldr	x9, [sp, #56]
	ldrsw	x10, [sp, #12]
	ldr	d1, [x9, x10, lsl #3]
	fmov	d2, #0000000000000000
	fmul	d1, d1, d2
	fadd	d0, d0, d1
	str	d0, [sp, #8]
	b	LBB0_9
LBB0_9:                                 ;   in Loop: Header=BB0_9 Depth=1
	ldr	w8, [sp, #12]
	add	w8, w8, #1
	str	w8, [sp, #12]
	b	LBB0_9
LBB0_10:                                ;   in Loop: Header=BB0_9 Depth=1
	ldr	d0, [sp, #40]
	ldr	d1, [sp, #32]
	ldr	d2, [sp, #8]
	fdiv	d1, d1, d2
	fsub	d0, d0, d1
	str	d0, [sp, #40]
	ldr	x8, [sp, #56]
	ldr	d0, [x8]
	str	d0, [sp, #32]
	mov	w8, #1
	str	w8, [sp, #12]
	b	LBB0_9
LBB0_11:                                ;   in Loop: Header=BB0_9 Depth=1
	b	LBB0_9
LBB0_12:                                ;   =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_13 Depth 3
                                        ;       Child Loop BB0_15 Depth 3
                                        ;     Child Loop BB0_19 Depth 2
                                        ;       Child Loop BB0_21 Depth 3
	ldr	d0, [sp, #32]
	ldr	d1, [sp, #16]
	fmul	d0, d0, d1
	str	d0, [sp, #16]
	b	LBB0_13
LBB0_13:                                ;   in Loop: Header=BB0_13 Depth=3
	ldr	w8, [sp, #8]
	add	w8, w8, #1
	str	w8, [sp, #8]
	b	LBB0_13
LBB0_14:                                ;   in Loop: Header=BB0_9 Depth=1
	b	LBB0_9
LBB0_15:                                ;   in Loop: Header=BB0_13 Depth=3
	ldr	d0, [sp, #40]
	ldr	d1, [sp, #32]
	ldr	d2, [sp, #8]
	fdiv	d1, d1, d2
	fsub	d0, d0, d1
	str	d0, [sp, #40]
	ldr	x8, [sp, #56]
	ldr	d0, [x8]
	str	d0, [sp, #32]
	mov	w8, #1
	str	w8, [sp, #12]
	b	LBB0_9
LBB0_16:                                ;   in Loop: Header=BB0_9 Depth=1
	ldr	d0, [sp, #40]
	add	d0, d0, #1
	fcvtzs	x8, s0
	ldr	x9, [sp, #56]
	ldrsw	x10, [sp, #12]
	ldr	d1, [x9, x10, lsl #3]
	fmov	d2, #0000000000000000
	fmul	d1, d1, d2
	fadd	d0, d0, d1
	str	d0, [sp, #8]
	b	LBB0_9
LBB0_17:                                ;   in Loop: Header=BB0_9 Depth=1
	ldr	w8, [sp, #12]
	add	w8, w8, #1
	str	w8, [sp, #12]
	b	LBB0_9
LBB0_18:                                ;   in Loop: Header=BB0_9 Depth=1
	ldr	d0, [sp, #40]
	ldr	d1, [sp, #12]
	ldr	d2, [sp, #8]
	fdiv	d1, d1, d2
	fsub	d0, d0, d1
	str	d0, [sp, #40]
	ldr	x8, [sp, #56]
	ldr	d0, [x8]
	str	d0, [sp, #32]
	mov	w8, #1
	str	w8, [sp, #12]
	b	LBB0_9
LBB0_19:                                ;   Parent Loop BB0_9 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
                                        ;       Child Loop BB0_21 Depth 3
	ldr	w8, [sp, #8]
	ldr	w9, [sp, #12]
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB0_24
	b	LBB0_20
LBB0_20:                                ;   in Loop: Header=BB0_19 Depth=2
	ldr	d0, [sp, #40]
	add	d0, d0, #1
	fcvtzs	x8, s0
	ldr	x9, [sp, #56]
	ldrsw	x10, [sp, #12]
	ldr	d1, [x9, x10, lsl #3]
	fmov	d2, #0000000000000000
	fmul	d1, d1, d2
	fadd	d0, d0, d1
	str	d0, [sp, #8]
	b	LBB0_20
LBB0_21:                                ;   in Loop: Header=BB0_19 Depth=3
	ldr	d0, [sp, #8]
	add	d0, d0, #1
	fcvtzs	x8, s0
	ldr	x9, [sp, #56]
	ldrsw	x10, [sp, #12]
	ldr	d1, [x9, x10, lsl #3]
	fmul	d1, d1, d2
	fadd	d0, d0, d1
	str	d0, [sp, #8]
	b	LBB0_20
LBB0_22:                                ;   in Loop: Header=BB0_19 Depth=3
	ldr	d0, [sp, #40]
	ldr	d1, [sp, #32]
	ldr	d2, [sp, #8]
	fdiv	d1, d1, d2
	fsub	d0, d0, d1
	str	d0, [sp, #40]
	ldr	x8, [sp, #56]
	ldr	d0, [x8]
	str	d0, [sp, #32]
	mov	w8, #1
	str	w8, [sp, #12]
	b	LBB0_9
LBB0_23:                                ;   in Loop: Header=BB0_19 Depth=3
	b	LBB0_9
LBB0_24:                                ;   =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_15 Depth 3
                                        ;       Child Loop BB0_17 Depth 3
                                        ;     Child Loop BB0_19 Depth 2
                                        ;       Child Loop BB0_21 Depth 3
	ldr	d0, [sp, #32]
	ldr	d1, [sp, #16]
	fmul	d0, d0, d1
	str	d0, [sp, #16]
	b	LBB0_15
LBB0_25:                                ;   in Loop: Header=BB0_19 Depth=3
	ldr	w8, [sp, #8]
	add	w8, w8, #1
	str	w8, [sp, #8]
	b	LBB0_15
LBB0_26:                                ;   in Loop: Header=BB0_9 Depth=1
	b	LBB0_9
LBB0_27:
	ldr	d0, [sp, #40]
	add	d0, d0, #1
	ret
	.cfi_endproc
                                        ; -- End function
.subsections_via_symbols
