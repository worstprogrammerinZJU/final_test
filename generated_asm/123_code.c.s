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
	stur	x0, [x29, #-16]
	ldur	x0, [x29, #-16]
	bl	_strlen
	subs	x8, x0, #10
	cset	w8, eq
	tbnz	w8, #0, LBB0_2
	b	LBB0_1
LBB0_1:
	stur	wzr, [x29, #-4]
	b	LBB0_31
LBB0_2:
	str	wzr, [sp, #32]
	b	LBB0_3
LBB0_3:                                 ; =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #32]
	subs	w8, w8, #10
	cset	w8, ge
	tbnz	w8, #0, LBB0_15
	b	LBB0_4
LBB0_4:                                 ;   in Loop: Header=BB0_3 Depth=1
	ldr	w8, [sp, #32]
	subs	w8, w8, #2
	cset	w8, eq
	tbnz	w8, #0, LBB0_6
	b	LBB0_5
LBB0_5:                                 ;   in Loop: Header=BB0_3 Depth=1
	ldr	w8, [sp, #32]
	subs	w8, w8, #5
	cset	w8, ne
	tbnz	w8, #0, LBB0_9
	b	LBB0_6
LBB0_6:                                 ;   in Loop: Header=BB0_3 Depth=1
	ldur	x8, [x29, #-16]
	ldrsw	x9, [sp, #32]
	ldrsb	w8, [x8, x9]
	subs	w8, w8, #45
	cset	w8, eq
	tbnz	w8, #0, LBB0_8
	b	LBB0_7
LBB0_7:
	stur	wzr, [x29, #-4]
	b	LBB0_31
LBB0_8:                                 ;   in Loop: Header=BB0_3 Depth=1
	b	LBB0_13
LBB0_9:                                 ;   in Loop: Header=BB0_3 Depth=1
	ldur	x8, [x29, #-16]
	ldrsw	x9, [sp, #32]
	ldrsb	w8, [x8, x9]
	subs	w8, w8, #48
	cset	w8, lt
	tbnz	w8, #0, LBB0_11
	b	LBB0_10
LBB0_10:                                ;   in Loop: Header=BB0_3 Depth=1
	ldur	x8, [x29, #-16]
	ldrsw	x9, [sp, #32]
	ldrsb	w8, [x8, x9]
	subs	w8, w8, #57
	cset	w8, le
	tbnz	w8, #0, LBB0_12
	b	LBB0_11
LBB0_11:
	stur	wzr, [x29, #-4]
	b	LBB0_31
LBB0_12:                                ;   in Loop: Header=BB0_3 Depth=1
	b	LBB0_13
LBB0_13:                                ;   in Loop: Header=BB0_3 Depth=1
	b	LBB0_14
LBB0_14:                                ;   in Loop: Header=BB0_3 Depth=1
	ldr	w8, [sp, #32]
	add	w8, w8, #1
	str	w8, [sp, #32]
	b	LBB0_3
LBB0_15:
	ldur	x8, [x29, #-16]
	ldrb	w8, [x8]
	add	x0, sp, #27
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	strb	w8, [sp, #27]
	ldur	x8, [x29, #-16]
	ldrb	w8, [x8, #1]
	strb	w8, [sp, #30]
	strb	wzr, [sp, #29]
	ldur	x8, [x29, #-16]
	ldrb	w8, [x8, #3]
	add	x9, sp, #26
	str	x9, [sp, #16]                   ; 8-byte Folded Spill
	strb	w8, [sp, #26]
	ldur	x8, [x29, #-16]
	ldrb	w8, [x8, #4]
	strb	w8, [sp, #27]
	strb	wzr, [sp, #30]
	ldur	x8, [x29, #-16]
	ldrb	w8, [x8, #6]
	add	x9, sp, #23
	str	x9, [sp, #24]                   ; 8-byte Folded Spill
	strb	w8, [sp, #23]
	ldur	x8, [x29, #-16]
	ldrb	w8, [x8, #7]
	strb	w8, [sp, #24]
	ldur	x8, [x29, #-16]
	ldrb	w8, [x8, #8]
	strb	w8, [sp, #25]
	ldur	x8, [x29, #-16]
	ldrb	w8, [x8, #9]
	strb	w8, [sp, #26]
	strb	wzr, [sp, #32]
	bl	_atoi
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	stur	ww, [x29, #-20]
	bl	_atoi
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	stur	ww, [x29, #-24]
	bl	_atoi
	stur	ww, [x29, #-28]
	ldur	w8, [x29, #-20]
	subs	w8, w8, #1
	cset	w8, lt
	tbnz	w8, #0, LBB0_17
	b	LBB0_1
LBB0_16:
	ldur	w8, [x29, #-20]
	subs	w8, w8, #12
	cset	w8, le
	tbnz	w8, #0, LBB0_18
	b	LBB0_17
LBB0_17:
	stur	wzr, [x29, #-4]
	b	LBB0_31
LBB0_18:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #1
	cset	w8, lt
	tbnz	w8, #0, LBB0_20
	b	LBB0_19
LBB0_19:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #31
	cset	w8, le
	tbnz	w8, #0, LBB0_21
	b	LBB0_20
LBB0_20:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #11
	cset	w8, ne
	tbnz	w8, #0, LBB0_27
	b	LBB0_25
LBB0_21:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #31
	cset	w8, ne
	tbnz	w8, #0, LBB0_27
	b	LBB0_25
LBB0_22:
	stur	wzr, [x29, #-4]
	b	LBB0_31
LBB0_23:
	ldur	w8, [x29, #-20]
	subs	w8, w8, #2
	cset	w8, ne
	tbnz	w8, #0, LBB0_30
	b	LBB0_24
LBB0_24:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #6
	cset	w8, eq
	tbnz	w8, #0, LBB0_25
	b	LBB0_23
LBB0_25:
	ldur	w8, [x29, #-20]
	subs	w8, w8, #57
	cset	w8, le
	tbnz	w8, #0, LBB0_26
	b	LBB0_24
LBB0_26:
	ldur	w8, [x29, #-20]
	subs	w8, w8, #11
	cset	w8, ne
	tbnz	w8, #0, LBB0_29
	b	LBB0_27
LBB0_27:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #31
	cset	w8, ne
	tbnz	w8, #0, LBB0_29
	b	LBB0_27
LBB0_28:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #48
	cset	w8, eq
	tbnz	w8, #0, LBB0_31
	b	LBB0_25
LBB0_29:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #57
	cset	w8, le
	tbnz	w8, #0, LBB0_31
	b	LBB0_30
LBB0_30:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #37
	cset	w8, eq
	tbnz	w8, #0, LBB0_33
	b	LBB0_28
LBB0_31:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #36
	cset	w8, eq
	tbnz	w8, #0, LBB0_33
	b	LBB0_28
LBB0_32:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #41
	cset	w8, eq
	tbnz	w8, #0, LBB0_35
	b	LBB0_29
LBB0_33:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #38
	cset	w8, eq
	tbnz	w8, #0, LBB0_35
	b	LBB0_29
LBB0_34:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #43
	cset	w8, eq
	tbnz	w8, #0, LBB0_37
	b	LBB0_35
LBB0_35:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #42
	cset	w8, eq
	tbnz	w8, #0, LBB0_37
	b	LBB0_35
LBB0_36:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #45
	cset	w8, eq
	tbnz	w8, #0, LBB0_39
	b	LBB0_37
LBB0_37:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #43
	cset	w8, eq
	tbnz	w8, #0, LBB0_39
	b	LBB0_37
LBB0_38:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #45
	cset	w8, eq
	tbnz	w8, #0, LBB0_41
	b	LBB0_39
LBB0_39:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #47
	cset	w8, eq
	tbnz	w8, #0, LBB0_41
	b	LBB0_37
LBB0_40:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #47
	cset	w8, eq
	tbnz	w8, #0, LBB0_43
	b	LBB0_41
LBB0_41:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #45
	cset	w8, eq
	tbnz	w8, #0, LBB0_43
	b	LBB0_43
LBB0_42:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #47
	cset	w8, eq
	tbnz	w8, #0, LBB0_45
	b	LBB0_43
LBB0_43:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #47
	cset	w8, eq
	tbnz	w8, #0, LBB0_45
	b	LBB0_43
LBB0_44:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #47
	cset	w8, eq
	tbnz	w8, #0, LBB0_47
	b	LBB0_45
LBB0_45:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #47
	cset	w8, eq
	tbnz	w8, #0, LBB0_47
	b	LBB0_47
LBB0_46:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #47
	cset	w8, eq
	tbnz	w8, #0, LBB0_49
	b	LBB0_47
LBB0_47:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #47
	cset	w8, eq
	tbnz	w8, #0, LBB0_49
	b	LBB0_47
LBB0_48:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #47
	cset	w8, eq
	tbnz	w8, #0, LBB0_51
	b	LBB0_49
LBB0_49:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_51
	b	LBB0_49
LBB0_50:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_53
	b	LBB0_49
LBB0_51:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_53
	b	LBB0_49
LBB0_52:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_55
	b	LBB0_49
LBB0_53:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_55
	b	LBB0_49
LBB0_54:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_57
	b	LBB0_55
LBB0_55:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_57
	b	LBB0_55
LBB0_56:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_61
	b	LBB0_57
LBB0_57:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_61
	b	LBB0_57
LBB0_60:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_63
	b	LBB0_57
LBB0_61:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_63
	b	LBB0_57
LBB0_62:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_65
	b	LBB0_57
LBB0_63:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_65
	b	LBB0_57
LBB0_64:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_65
	b	LBB0_57
LBB0_65:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_65
	b	LBB0_57
LBB0_66:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_67
	b	LBB0_65
LBB0_67:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_67
	b	LBB0_65
LBB0_68:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_69
	b	LBB0_67
LBB0_69:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_69
	b	LBB0_67
LBB0_70:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_71
	b	LBB0_69
LBB0_71:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_71
	b	LBB0_69
LBB0_72:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_73
	b	LBB0_69
LBB0_73:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_73
	b	LBB0_69
LBB0_74:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_75
	b	LBB0_69
LBB0_75:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_75
	b	LBB0_69
LBB0_76:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_77
	b	LBB0_69
LBB0_77:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_77
	b	LBB0_69
LBB0_78:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_79
	b	LBB0_69
LBB0_79:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_79
	b	LBB0_69
LBB0_80:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_81
	b	LBB0_79
LBB0_81:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_81
	b	LBB0_79
LBB0_82:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_83
	b	LBB0_79
LBB0_83:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_83
	b	LBB0_79
LBB0_84:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_85
	b	LBB0_79
LBB0_85:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_85
	b	LBB0_79
LBB0_86:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_87
	b	LBB0_79
LBB0_87:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_87
	b	LBB0_79
LBB0_88:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_89
	b	LBB0_79
LBB0_89:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_89
	b	LBB0_79
LBB0_90:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_91
	b	LBB0_79
LBB0_91:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_91
	b	LBB0_79
LBB0_92:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_93
	b	LBB0_79
LBB0_93:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_93
	b	LBB0_79
LBB0_94:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_95
	b	LBB0_79
LBB0_95:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_95
	b	LBB0_79
LBB0_96:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_97
	b	LBB0_79
LBB0_97:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_97
	b	LBB0_79
LBB0_98:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_99
	b	LBB0_79
LBB0_99:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_99
	b	LBB0_79
LBB0_100:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_101
	b	LBB0_79
LBB0_101:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_101
	b	LBB0_79
LBB0_102:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_103
	b	LBB0_79
LBB0_103:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_103
	b	LBB0_79
LBB0_104:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_105
	b	LBB0_79
LBB0_105:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_105
	b	LBB0_79
LBB0_106:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_107
	b	LBB0_79
LBB0_107:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_107
	b	LBB0_79
LBB0_108:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_109
	b	LBB0_79
LBB0_109:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_109
	b	LBB0_79
LBB0_110:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_111
	b	LBB0_79
LBB0_111:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_111
	b	LBB0_79
LBB0_112:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_113
	b	LBB0_79
LBB0_113:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_113
	b	LBB0_79
LBB0_114:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_115
	b	LBB0_79
LBB0_115:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_115
	b	LBB0_79
LBB0_116:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_117
	b	LBB0_79
LBB0_117:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_117
	b	LBB0_79
LBB0_118:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_119
	b	LBB0_79
LBB0_119:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_119
	b	LBB0_79
LBB0_120:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_121
	b	LBB0_79
LBB0_121:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_121
	b	LBB0_79
LBB0_122:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_123
	b	LBB0_79
LBB0_123:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_123
	b	LBB0_79
LBB0_124:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_125
	b	LBB0_79
LBB0_125:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_125
	b	LBB0_79
LBB0_126:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_127
	b	LBB0_79
LBB0_127:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_127
	b	LBB0_79
LBB0_128:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_129
	b	LBB0_79
LBB0_129:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_129
	b	LBB0_79
LBB0_130:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_131
	b	LBB0_79
LBB0_131:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_131
	b	LBB0_79
LBB0_132:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_133
	b	LBB0_79
LBB0_133:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_133
	b	LBB0_79
LBB0_134:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_135
	b	LBB0_79
LBB0_135:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_135
	b	LBB0_79
LBB0_136:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_137
	b	LBB0_79
LBB0_137:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_137
	b	LBB0_79
LBB0_138:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_139
	b	LBB0_79
LBB0_139:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_139
	b	LBB0_79
LBB0_140:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_142
	b	LBB0_79
LBB0_141:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_142
	b	LBB0_79
LBB0_142:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_144
	b	LBB0_79
LBB0_143:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_144
	b	LBB0_79
LBB0_144:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_144
	b	LBB0_79
LBB0_145:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_146
	b	LBB0_79
LBB0_146:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_146
	b	LBB0_79
LBB0_147:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_148
	b	LBB0_79
LBB0_148:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_148
	b	LBB0_79
LBB0_149:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_150
	b	LBB0_79
LBB0_150:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_150
	b	LBB0_79
LBB0_151:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_152
	b	LBB0_79
LBB0_152:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_152
	b	LBB0_79
LBB0_153:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_154
	b	LBB0_79
LBB0_154:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_154
	b	LBB0_79
LBB0_155:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_156
	b	LBB0_79
LBB0_156:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_156
	b	LBB0_79
LBB0_157:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_158
	b	LBB0_79
LBB0_158:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_158
	b	LBB0_79
LBB0_159:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_160
	b	LBB0_79
LBB0_160:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_160
	b	LBB0_79
LBB0_161:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_162
	b	LBB0_79
LBB0_162:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_162
	b	LBB0_79
LBB0_163:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_164
	b	LBB0_79
LBB0_164:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_164
	b	LBB0_79
LBB0_165:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_166
	b	LBB0_79
LBB0_166:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_166
	b	LBB0_79
LBB0_167:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_168
	b	LBB0_79
LBB0_168:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_168
	b	LBB0_79
LBB0_169:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_170
	b	LBB0_79
LBB0_170:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_170
	b	LBB0_79
LBB0_171:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_172
	b	LBB0_79
LBB0_172:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_172
	b	LBB0_79
LBB0_173:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_174
	b	LBB0_79
LBB0_174:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_174
	b	LBB0_79
LBB0_175:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_176
	b	LBB0_79
LBB0_176:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_176
	b	LBB0_79
LBB0_177:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_178
	b	LBB0_79
LBB0_178:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_178
	b	LBB0_79
LBB0_179:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_180
	b	LBB0_79
LBB0_180:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_180
	b	LBB0_79
LBB0_181:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_182
	b	LBB0_79
LBB0_182:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_182
	b	LBB0_79
LBB0_183:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_184
	b	LBB0_79
LBB0_184:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_184
	b	LBB0_79
LBB0_185:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_186
	b	LBB0_79
LBB0_186:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_186
	b	LBB0_79
LBB0_187:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_188
	b	LBB0_79
LBB0_188:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_188
	b	LBB0_79
LBB0_189:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_190
	b	LBB0_79
LBB0_190:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_190
	b	LBB0_79
LBB0_191:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_192
	b	LBB0_79
LBB0_192:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_192
	b	LBB0_79
LBB0_193:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_194
	b	LBB0_79
LBB0_194:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_194
	b	LBB0_79
LBB0_195:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_196
	b	LBB0_79
LBB0_196:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_196
	b	LBB0_79
LBB0_197:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_198
	b	LBB0_79
LBB0_198:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_198
	b	LBB0_79
LBB0_199:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_200
	b	LBB0_79
LBB0_200:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_200
	b	LBB0_79
LBB0_201:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_202
	b	LBB0_79
LBB0_202:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_202
	b	LBB0_79
LBB0_203:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_204
	b	LBB0_79
LBB0_204:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_204
	b	LBB0_79
LBB0_205:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_206
	b	LBB0_79
LBB0_206:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_206
	b	LBB0_79
LBB0_207:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_208
	b	LBB0_79
LBB0_208:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_208
	b	LBB0_79
LBB0_209:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_2010
	b	LBB0_79
LBB0_210:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_2010
	b	LBB0_79
LBB0_211:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_2012
	b	LBB0_79
LBB0_212:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_2012
	b	LBB0_79
LBB0_213:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_2014
	b	LBB0_79
LBB0_214:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_2014
	b	LBB0_79
LBB0_215:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_2014
	b	LBB0_79
LBB0_216:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_2014
	b	LBB0_79
LBB0_217:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_2016
	b	LBB0_79
LBB0_218:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_2016
	b	LBB0_79
LBB0_219:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_2018
	b	LBB0_79
LBB0_220:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_2018
	b	LBB0_79
LBB0_221:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_2018
	b	LBB0_79
LBB0_222:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_2020
	b	LBB0_79
LBB0_223:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_2020
	b	LBB0_79
LBB0_224:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_2020
	b	LBB0_79
LBB0_225:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_2020
	b	LBB0_79
LBB0_226:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_2020
	b	LBB0_79
LBB0_227:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_2022
	b	LBB0_79
LBB0_228:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_2022
	b	LBB0_79
LBB0_229:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_2022
	b	LBB0_79
LBB0_230:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_2024
	b	LBB0_79
LBB0_231:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_2024
	b	LBB0_79
LBB0_232:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_2024
	b	LBB0_79
LBB0_233:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_2026
	b	LBB0_79
LBB0_234:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_2026
	b	LBB0_79
LBB0_235:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_2026
	b	LBB0_79
LBB0_236:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_2026
	b	LBB0_79
LBB0_237:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_2028
	b	LBB0_79
LBB0_238:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_2028
	b	LBB0_79
LBB0_239:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_2028
	b	LBB0_79
LBB0_240:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_2028
	b	LBB0_79
LBB0_241:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_2028
	b	LBB0_79
LBB0_242:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_2028
	b	LBB0_79
LBB0_243:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_20210
	b	LBB0_79
LBB0_244:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_20210
	b	LBB0_79
LBB0_245:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_20210
	b	LBB0_79
LBB0_246:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_20210
	b	LBB0_79
LBB0_247:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_20210
	b	LBB0_79
LBB0_248:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_20210
	b	LBB0_79
LBB0_249:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_20210
	b	LBB0_79
LBB0_250:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_20210
	b	LBB0_79
LBB0_251:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_20210
	b	LBB0_79
LBB0_252:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_20210
	b	LBB0_79
LBB0_253:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_20210
	b	LBB0_79
LBB0_254:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_20210
	b	LBB0_79
LBB0_255:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_20210
	b	LBB0_79
LBB0_256:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_20210
	b	LBB0_79
LBB0_257:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_20210
	b	LBB0_79
LBB0_258:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_20210
	b	LBB0_79
LBB0_259:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_20210
	b	LBB0_79
LBB0_260:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_20210
	b	LBB0_79
LBB0_261:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_20210
	b	LBB0_79
LBB0_262:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_20210
	b	LBB0_79
LBB0_263:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_20210
	b	LBB0_79
LBB0_264:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_20210
	b	LBB0_79
LBB0_265:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_20210
	b	LBB0_79
LBB0_266:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_20210
	b	LBB0_79
LBB0_267:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_20210
	b	LBB0_79
LBB0_268:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_20210
	b	LBB0_79
LBB0_269:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_20210
	b	LBB0_79
LBB0_270:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_20210
	b	LBB0_79
LBB0_271:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_20210
	b	LBB0_79
LBB0_272:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_20210
	b	LBB0_79
LBB0_273:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_20210
	b	LBB0_79
LBB0_274:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_20210
	b	LBB0_79
LBB0_275:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_20210
	b	LBB0_79
LBB0_276:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_20210
	b	LBB0_79
LBB0_277:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_20210
	b	LBB0_79
LBB0_278:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_20210
	b	LBB0_79
LBB0_279:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_20210
	b	LBB0_79
LBB0_280:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_20210
	b	LBB0_79
LBB0_281:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_20210
	b	LBB0_79
LBB0_282:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_20210
	b	LBB0_79
LBB0_283:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_20210
	b	LBB0_79
LBB0_284:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_20210
	b	LBB0_79
LBB0_285:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_20210
	b	LBB0_79
LBB0_286:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_20210
	b	LBB0_79
LBB0_287:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_20210
	b	LBB0_79
LBB0_288:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_20210
	b	LBB0_79
LBB0_289:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_20210
	b	LBB0_79
LBB0_290:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_20210
	b	LBB0_79
LBB0_291:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_20210
	b	LBB0_79
LBB0_292:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_20210
	b	LBB0_79
LBB0_293:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_20210
	b	LBB0_79
LBB0_294:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_20210
	b	LBB0_79
LBB0_295:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_20210
	b	LBB0_79
LBB0_296:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_20210
	b	LBB0_79
LBB0_297:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_20210
	b	LBB0_79
LBB0_298:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_20210
	b	LBB0_79
LBB0_299:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_20210
	b	LBB0_79
LBB0_300:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_20210
	b	LBB0_79
LBB0_301:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_20210
	b	LBB0_79
LBB0_302:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_20210
	b	LBB0_79
LBB0_303:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_20210
	b	LBB0_79
LBB0_304:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_20210
	b	LBB0_79
LBB0_305:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_20210
	b	LBB0_79
LBB0_306:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_20210
	b	LBB0_79
LBB0_307:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_20210
	b	LBB0_79
LBB0_308:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_20210
	b	LBB0_79
LBB0_309:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_20210
	b	LBB0_79
LBB0_310:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_20210
	b	LBB0_79
LBB0_311:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_20210
	b	LBB0_79
LBB0_312:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_20210
	b	LBB0_79
LBB0_313:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_20210
	b	LBB0_79
LBB0_314:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_20210
	b	LBB0_79
LBB0_315:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_20210
	b	LBB0_79
LBB0_316:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_20210
	b	LBB0_79
LBB0_317:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_20210
	b	LBB0_79
LBB0_318:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_20210
	b	LBB0_79
LBB0_319:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_20210
	b	LBB0_79
LBB0_320:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_20210
	b	LBB0_79
LBB0_321:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_20210
	b	LBB0_79
LBB0_322:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_20210
	b	LBB0_79
LBB0_323:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_20210
	b	LBB0_79
LBB0_324:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_20210
	b	LBB0_79
LBB0_325:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_20210
	b	LBB0_79
LBB0_326:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_20210
	b	LBB0_79
LBB0_327:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_20210
	b	LBB0_79
LBB0_328:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_20210
	b	LBB0_79
LBB0_329:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_20210
	b	LBB0_79
LBB0_330:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_20210
	b	LBB0_79
LBB0_331:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_20210
	b	LBB0_79
LBB0_332:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_20210
	b	LBB0_79
LBB0_333:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_20210
	b	LBB0_79
LBB0_334:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_20210
	b	LBB0_79
LBB0_335:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_20210
	b	LBB0_79
LBB0_336:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_20210
	b	LBB0_79
LBB0_337:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_20210
	b	LBB0_79
LBB0_338:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_20210
	b	LBB0_79
LBB0_339:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_20210
	b	LBB0_79
LBB0_340:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_20210
	b	LBB0_79
LBB0_341:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_20210
	b	LBB0_79
LBB0_342:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_20210
	b	LBB0_79
LBB0_343:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_20210
	b	LBB0_79
LBB0_344:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_20210
	b	LBB0_79
LBB0_345:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_20210
	b	LBB0_79
LBB0_346:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_20210
	b	LBB0_79
LBB0_347:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_20210
	b	LBB0_79
LBB0_348:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_20210
	b	LBB0_79
LBB0_349:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_20210
	b	LBB0_79
LBB0_350:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_20210
	b	LBB0_79
LBB0_351:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_20210
	b	LBB0_79
LBB0_352:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_20210
	b	LBB0_79
LBB0_353:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_20210
	b	LBB0_79
LBB0_354:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_20210
	b	LBB0_79
LBB0_355:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_20210
	b	LBB0_79
LBB0_356:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_20210
	b	LBB0_79
LBB0_357:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_20210
	b	LBB0_79
LBB0_358:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_20210
	b	LBB0_79
LBB0_359:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_20210
	b	LBB0_79
LBB0_360:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_20210
	b	LBB0_79
LBB0_361:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_20210
	b	LBB0_79
LBB0_362:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_20210
	b	LBB0_79
LBB0_363:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_20210
	b	LBB0_79
LBB0_364:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_20210
	b	LBB0_79
LBB0_365:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_20210
	b	LBB0_79
LBB0_366:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_20210
	b	LBB0_79
LBB0_367:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_20210
	b	LBB0_79
LBB0_368:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_20210
	b	LBB0_79
LBB0_369:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_20210
	b	LBB0_79
LBB0_370:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_20210
	b	LBB0_79
LBB0_371:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_20210
	b	LBB0_79
LBB0_372:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_20210
	b	LBB0_79
LBB0_373:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_20210
	b	LBB0_79
LBB0_374:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_20210
	b	LBB0_79
LBB0_375:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_20210
	b	LBB0_79
LBB0_376:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_20210
	b	LBB0_79
LBB0_377:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_20210
	b	LBB0_79
LBB0_378:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_20210
	b	LBB0_79
LBB0_379:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_20210
	b	LBB0_79
LBB0_380:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_20210
	b	LBB0_79
LBB0_381:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_20210
	b	LBB0_79
LBB0_382:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_20210
	b	LBB0_79
LBB0_383:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_20210
	b	LBB0_79
LBB0_384:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_20210
	b	LBB0_79
LBB0_385:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_20210
	b	LBB0_79
LBB0_386:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_20210
	b	LBB0_79
LBB0_387:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_20210
	b	LBB0_79
LBB0_388:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_20210
	b	LBB0_79
LBB0_389:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_20210
	b	LBB0_79
LBB0_390:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_20210
	b	LBB0_79
LBB0_391:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_20210
	b	LBB0_79
LBB0_392:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_20210
	b	LBB0_79
LBB0_393:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_20210
	b	LBB0_79
LBB0_394:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_20210
	b	LBB0_79
LBB0_395:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_20210
	b	LBB0_79
LBB0_396:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_20210
	b	LBB0_79
LBB0_397:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_20210
	b	LBB0_79
LBB0_398:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_20210
	b	LBB0_79
LBB0_399:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_20210
	b	LBB0_79
LBB0_400:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_20210
	b	LBB0_79
LBB0_401:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_20210
	b	LBB0_79
LBB0_402:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_20210
	b	LBB0_79
LBB0_403:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_20210
	b	LBB0_79
LBB0_404:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_20210
	b	LBB0_79
LBB0_405:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_20210
	b	LBB0_79
LBB0_406:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_20210
	b	LBB0_79
LBB0_407:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_20210
	b	LBB0_79
LBB0_408:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_20210
	b	LBB0_79
LBB0_409:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_20210
	b	LBB0_79
LBB0_410:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_20210
	b	LBB0_79
LBB0_411:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_20210
	b	LBB0_79
LBB0_412:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_20210
	b	LBB0_79
LBB0_413:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_20210
	b	LBB0_79
LBB0_414:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_20210
	b	LBB0_79
LBB0_415:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_20210
	b	LBB0_79
LBB0_416:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_20210
	b	LBB0_79
LBB0_417:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_20210
	b	LBB0_79
LBB0_418:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_20210
	b	LBB0_79
LBB0_419:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_20210
	b	LBB0_79
LBB0_420:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_20210
	b	LBB0_79
LBB0_421:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_20210
	b	LBB0_79
LBB0_422:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_20210
	b	LBB0_79
LBB0_423:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_20210
	b	LBB0_79
LBB0_424:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_20210
	b	LBB0_79
LBB0_425:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_20210
	b	LBB0_79
LBB0_426:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_20210
	b	LBB0_79
LBB0_427:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_20210
	b	LBB0_79
LBB0_428:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_20210
	b	LBB0_79
LBB0_429:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_20210
	b	LBB0_79
LBB0_430:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_20210
	b	LBB0_79
LBB0_431:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_20210
	b	LBB0_79
LBB0_432:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_20210
	b	LBB0_79
LBB0_433:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_20210
	b	LBB0_79
LBB0_434:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_20210
	b	LBB0_79
LBB0_435:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_20210
	b	LBB0_79
LBB0_436:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_20210
	b	LBB0_79
LBB0_437:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_20210
	b	LBB0_79
LBB0_438:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_20210
	b	LBB0_79
LBB0_439:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_20210
	b	LBB0_79
LBB0_440:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #49
	cset	w8, eq
	tbnz	w8, #0, LBB0_202
