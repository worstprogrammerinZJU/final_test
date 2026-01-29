.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 13, 0	sdk_version 13, 3
	.section	__TEXT,__literal8,8byte_literals
	.p2align	3                               ; -- Begin function func0
lCPI0_0:
	.long	0x42c80000                      ; float 100
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_func0
	.p2align	2
_func0:                                 ; @func0
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	s0, [sp, #24]
	str	s1, [sp, #20]
	str	s2, [sp, #16]
	ldr	s8, [sp, #24]
	ldr	s9, [sp, #20]
	fadd	s1, s8, s9
	ldr	s0, [sp, #16]
	fcmp	s0, s1
	cset	w8, hs
	tbnz	w8, #0, LBB0_3
	b	LBB0_1
LBB0_1:
	ldr	s8, [sp, #24]
	ldr	s9, [sp, #16]
	fadd	s1, s8, s9
	ldr	s0, [sp, #20]
	fcmp	s0, s1
	cset	w8, hs
	tbnz	w8, #0, LBB0_3
	b	LBB0_2
LBB0_2:
	ldr	s8, [sp, #20]
	ldr	s9, [sp, #16]
	fadd	s1, s8, s9
	ldr	s0, [sp, #24]
	fcmp	s1, s0
	cset	w8, hi
	tbnz	w8, #0, LBB0_4
	b	LBB0_3
LBB0_3:
	fmov	s0, #-1.00000000
	str	s0, [sp, #12]                   ; 4-byte Folded Spill
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
.subsections_via_symbols
