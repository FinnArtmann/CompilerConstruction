	.file	"main.c"
	.text
.Ltext0:
	.file 0 "/home/finn/Documents/OTH/CC/CompilerConstruction/ex6/ex1" "src/main.c"
	.p2align 4
	.globl	pda_transition
	.type	pda_transition, @function
pda_transition:
.LVL0:
.LFB23:
	.file 1 "src/main.c"
	.loc 1 7 57 view -0
	.cfi_startproc
	.loc 1 7 57 is_stmt 0 view .LVU1
	endbr64
	.loc 1 8 2 is_stmt 1 view .LVU2
	.loc 1 7 57 is_stmt 0 view .LVU3
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	.loc 1 8 2 view .LVU4
	cmpl	$1, %edi
	je	.L2
	cmpl	$2, %edi
	jne	.L1
	.loc 1 15 11 is_stmt 1 view .LVU5
	cmpb	$97, %sil
	je	.L8
	cmpb	$98, %sil
	je	.L9
	xorl	%eax, %eax
	testb	%sil, %sil
	je	.L17
.LVL1:
.L1:
	.loc 1 33 1 is_stmt 0 view .LVU6
	addq	$24, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
.LVL2:
	.p2align 4,,10
	.p2align 3
.L2:
	.cfi_restore_state
	.loc 1 9 11 is_stmt 1 view .LVU7
	cmpb	$97, %sil
	je	.L5
	cmpb	$98, %sil
	je	.L6
	xorl	%eax, %eax
	cmpb	$46, %sil
	sete	%al
	.loc 1 33 1 is_stmt 0 view .LVU8
	addq	$24, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	.loc 1 9 11 view .LVU9
	addl	%eax, %eax
	.loc 1 33 1 view .LVU10
	ret
	.p2align 4,,10
	.p2align 3
.L17:
	.cfi_restore_state
	.loc 1 26 15 is_stmt 1 view .LVU11
	.loc 1 26 18 is_stmt 0 view .LVU12
	movq	32(%rdx), %rdi
.LVL3:
	.loc 1 26 18 view .LVU13
	call	s_isempty@PLT
.LVL4:
	.loc 1 27 16 view .LVU14
	movl	$-1, %eax
	jmp	.L1
.LVL5:
	.p2align 4,,10
	.p2align 3
.L8:
	.loc 1 16 14 is_stmt 1 view .LVU15
	.loc 1 16 17 is_stmt 0 view .LVU16
	movq	32(%rdx), %rdi
.LVL6:
	.loc 1 16 17 view .LVU17
	movq	%rdx, 8(%rsp)
	call	s_peek@PLT
.LVL7:
	.loc 1 16 16 view .LVU18
	movq	8(%rsp), %rdx
	cmpb	$97, %al
	jne	.L1
.L15:
	.loc 1 22 8 is_stmt 1 view .LVU19
	movq	32(%rdx), %rdi
	call	s_pop@PLT
.LVL8:
	.loc 1 23 8 view .LVU20
	.loc 1 23 15 is_stmt 0 view .LVU21
	movl	$2, %eax
	jmp	.L1
.LVL9:
	.p2align 4,,10
	.p2align 3
.L5:
	.loc 1 10 14 is_stmt 1 view .LVU22
	movq	32(%rdx), %rdi
.LVL10:
	.loc 1 10 14 is_stmt 0 view .LVU23
	movl	$97, %esi
.LVL11:
	.loc 1 10 14 view .LVU24
	call	s_push@PLT
.LVL12:
	.loc 1 10 39 is_stmt 1 view .LVU25
	.loc 1 10 46 is_stmt 0 view .LVU26
	movl	$1, %eax
	jmp	.L1
.LVL13:
	.p2align 4,,10
	.p2align 3
.L9:
	.loc 1 21 14 is_stmt 1 view .LVU27
	.loc 1 21 17 is_stmt 0 view .LVU28
	movq	32(%rdx), %rdi
.LVL14:
	.loc 1 21 17 view .LVU29
	movq	%rdx, 8(%rsp)
	call	s_peek@PLT
.LVL15:
	.loc 1 21 16 view .LVU30
	movq	8(%rsp), %rdx
	cmpb	$98, %al
	jne	.L1
	.loc 1 21 16 view .LVU31
	jmp	.L15
.LVL16:
	.p2align 4,,10
	.p2align 3
.L6:
	.loc 1 11 14 is_stmt 1 view .LVU32
	movq	32(%rdx), %rdi
.LVL17:
	.loc 1 11 14 is_stmt 0 view .LVU33
	movl	$98, %esi
.LVL18:
	.loc 1 11 14 view .LVU34
	call	s_push@PLT
.LVL19:
	.loc 1 11 39 is_stmt 1 view .LVU35
	.loc 1 11 46 is_stmt 0 view .LVU36
	movl	$1, %eax
	jmp	.L1
	.cfi_endproc
.LFE23:
	.size	pda_transition, .-pda_transition
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"ab.ba"
.LC1:
	.string	"Word accepted."
.LC2:
	.string	"Word declined."
	.section	.text.startup,"ax",@progbits
	.p2align 4
	.globl	main
	.type	main, @function
main:
.LVL20:
.LFB24:
	.loc 1 36 32 is_stmt 1 view -0
	.cfi_startproc
	.loc 1 36 32 is_stmt 0 view .LVU38
	endbr64
	.loc 1 38 2 is_stmt 1 view .LVU39
	.loc 1 36 32 is_stmt 0 view .LVU40
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	.loc 1 38 20 view .LVU41
	leaq	pda_transition(%rip), %rsi
.LVL21:
	.loc 1 38 20 view .LVU42
	movl	$1, %edi
.LVL22:
	.loc 1 38 20 view .LVU43
	call	create_dfa@PLT
.LVL23:
	.loc 1 41 28 view .LVU44
	leaq	.LC0(%rip), %rsi
	.loc 1 38 20 view .LVU45
	movq	%rax, %rdi
.LVL24:
	.loc 1 40 2 is_stmt 1 view .LVU46
	.loc 1 41 2 view .LVU47
	.loc 1 41 28 is_stmt 0 view .LVU48
	call	dfa_new_ctx@PLT
.LVL25:
	.loc 1 41 28 view .LVU49
	movq	%rax, %rdi
.LVL26:
	.loc 1 43 2 is_stmt 1 view .LVU50
	.loc 1 43 5 is_stmt 0 view .LVU51
	call	run_dfa@PLT
.LVL27:
	.loc 1 43 4 view .LVU52
	testl	%eax, %eax
	je	.L19
	.loc 1 44 3 is_stmt 1 view .LVU53
.LVL28:
.LBB6:
.LBI6:
	.file 2 "/usr/include/x86_64-linux-gnu/bits/stdio2.h"
	.loc 2 110 1 view .LVU54
.LBB7:
	.loc 2 112 3 view .LVU55
	.loc 2 112 10 is_stmt 0 view .LVU56
	leaq	.LC1(%rip), %rdi
	call	puts@PLT
.LVL29:
.L20:
	.loc 2 112 10 view .LVU57
.LBE7:
.LBE6:
	.loc 1 49 2 is_stmt 1 view .LVU58
	.loc 1 50 1 is_stmt 0 view .LVU59
	xorl	%eax, %eax
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
.L19:
	.cfi_restore_state
	.loc 1 46 3 is_stmt 1 view .LVU60
.LVL30:
.LBB8:
.LBI8:
	.loc 2 110 1 view .LVU61
.LBB9:
	.loc 2 112 3 view .LVU62
	.loc 2 112 10 is_stmt 0 view .LVU63
	leaq	.LC2(%rip), %rdi
	call	puts@PLT
.LVL31:
	jmp	.L20
.LBE9:
.LBE8:
	.cfi_endproc
.LFE24:
	.size	main, .-main
	.text
.Letext0:
	.file 3 "include/stack.h"
	.file 4 "include/generic_pda.h"
	.file 5 "<built-in>"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x497
	.value	0x5
	.byte	0x1
	.byte	0x8
	.long	.Ldebug_abbrev0
	.uleb128 0x13
	.long	.LASF33
	.byte	0x1d
	.long	.LASF0
	.long	.LASF1
	.long	.LLRL8
	.quad	0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF2
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF3
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.long	.LASF4
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.long	.LASF5
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF6
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.long	.LASF7
	.uleb128 0x14
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF8
	.uleb128 0x3
	.long	0x67
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF9
	.uleb128 0x15
	.long	0x67
	.uleb128 0xb
	.long	.LASF11
	.byte	0x5
	.byte	0xe
	.long	0x67
	.uleb128 0xc
	.long	.LASF13
	.byte	0x10
	.byte	0x3
	.byte	0x10
	.long	0xa5
	.uleb128 0x4
	.long	.LASF10
	.byte	0x3
	.byte	0x9
	.byte	0x9
	.long	0xa5
	.byte	0
	.uleb128 0xd
	.string	"top"
	.byte	0x3
	.byte	0xa
	.byte	0x6
	.long	0x54
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.long	0x73
	.uleb128 0xb
	.long	.LASF12
	.byte	0xc
	.byte	0x3
	.long	0x7e
	.uleb128 0xc
	.long	.LASF14
	.byte	0x28
	.byte	0x4
	.byte	0x8
	.long	0x103
	.uleb128 0xd
	.string	"dfa"
	.byte	0x4
	.byte	0x8
	.byte	0xe
	.long	0x12b
	.byte	0
	.uleb128 0x4
	.long	.LASF15
	.byte	0x4
	.byte	0x9
	.byte	0x6
	.long	0x54
	.byte	0x8
	.uleb128 0x4
	.long	.LASF16
	.byte	0x4
	.byte	0xa
	.byte	0x8
	.long	0x62
	.byte	0x10
	.uleb128 0x4
	.long	.LASF17
	.byte	0x4
	.byte	0xb
	.byte	0x6
	.long	0x54
	.byte	0x18
	.uleb128 0x4
	.long	.LASF18
	.byte	0x4
	.byte	0xc
	.byte	0xb
	.long	0x130
	.byte	0x20
	.byte	0
	.uleb128 0x16
	.string	"dfa"
	.byte	0x10
	.byte	0x4
	.byte	0xf
	.byte	0x8
	.long	0x12b
	.uleb128 0x4
	.long	.LASF19
	.byte	0x4
	.byte	0x10
	.byte	0x6
	.long	0x54
	.byte	0
	.uleb128 0x4
	.long	.LASF20
	.byte	0x4
	.byte	0x11
	.byte	0x8
	.long	0x153
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.long	0x103
	.uleb128 0x3
	.long	0xaa
	.uleb128 0x17
	.long	0x54
	.long	0x14e
	.uleb128 0x1
	.long	0x54
	.uleb128 0x1
	.long	0x67
	.uleb128 0x1
	.long	0x14e
	.byte	0
	.uleb128 0x3
	.long	0xb5
	.uleb128 0x3
	.long	0x135
	.uleb128 0x5
	.long	.LASF21
	.byte	0x2
	.byte	0x5f
	.byte	0xc
	.long	0x54
	.long	0x174
	.uleb128 0x1
	.long	0x54
	.uleb128 0x1
	.long	0x174
	.uleb128 0xe
	.byte	0
	.uleb128 0x3
	.long	0x6e
	.uleb128 0x18
	.long	0x174
	.uleb128 0x5
	.long	.LASF22
	.byte	0x4
	.byte	0x19
	.byte	0x5
	.long	0x54
	.long	0x194
	.uleb128 0x1
	.long	0x14e
	.byte	0
	.uleb128 0x5
	.long	.LASF23
	.byte	0x4
	.byte	0x16
	.byte	0x11
	.long	0x14e
	.long	0x1af
	.uleb128 0x1
	.long	0x12b
	.uleb128 0x1
	.long	0x62
	.byte	0
	.uleb128 0x5
	.long	.LASF24
	.byte	0x4
	.byte	0x14
	.byte	0xd
	.long	0x12b
	.long	0x1ca
	.uleb128 0x1
	.long	0x54
	.uleb128 0x1
	.long	0x153
	.byte	0
	.uleb128 0x5
	.long	.LASF25
	.byte	0x3
	.byte	0x18
	.byte	0x5
	.long	0x54
	.long	0x1e0
	.uleb128 0x1
	.long	0x130
	.byte	0
	.uleb128 0x5
	.long	.LASF26
	.byte	0x3
	.byte	0x14
	.byte	0x7
	.long	0x73
	.long	0x1f6
	.uleb128 0x1
	.long	0x130
	.byte	0
	.uleb128 0x5
	.long	.LASF27
	.byte	0x3
	.byte	0x16
	.byte	0x7
	.long	0x73
	.long	0x20c
	.uleb128 0x1
	.long	0x130
	.byte	0
	.uleb128 0x19
	.long	.LASF34
	.byte	0x3
	.byte	0x12
	.byte	0x6
	.long	0x223
	.uleb128 0x1
	.long	0x130
	.uleb128 0x1
	.long	0x73
	.byte	0
	.uleb128 0xf
	.long	.LASF31
	.byte	0x24
	.long	0x54
	.quad	.LFB24
	.quad	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.long	0x38e
	.uleb128 0x10
	.long	.LASF28
	.byte	0xe
	.long	0x54
	.long	.LLST3
	.long	.LVUS3
	.uleb128 0x10
	.long	.LASF29
	.byte	0x1b
	.long	0x38e
	.long	.LLST4
	.long	.LVUS4
	.uleb128 0x1a
	.string	"pda"
	.byte	0x1
	.byte	0x26
	.byte	0xe
	.long	0x12b
	.long	.LLST5
	.long	.LVUS5
	.uleb128 0x1b
	.long	.LASF35
	.byte	0x1
	.byte	0x28
	.byte	0x8
	.long	0x62
	.uleb128 0xa
	.byte	0x3
	.quad	.LC0
	.byte	0x9f
	.uleb128 0x1c
	.long	.LASF30
	.byte	0x1
	.byte	0x29
	.byte	0x12
	.long	0x14e
	.long	.LLST6
	.long	.LVUS6
	.uleb128 0x11
	.long	0x448
	.quad	.LBI6
	.byte	.LVU54
	.quad	.LBB6
	.quad	.LBE6-.LBB6
	.byte	0x2c
	.long	0x2f2
	.uleb128 0x1d
	.long	0x459
	.long	.LLST7
	.long	.LVUS7
	.uleb128 0x8
	.quad	.LVL29
	.long	0x47b
	.uleb128 0x6
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC1
	.byte	0
	.byte	0
	.uleb128 0x11
	.long	0x448
	.quad	.LBI8
	.byte	.LVU61
	.quad	.LBB8
	.quad	.LBE8-.LBB8
	.byte	0x2e
	.long	0x33d
	.uleb128 0x1e
	.long	0x459
	.uleb128 0x6
	.byte	0xa0
	.long	.Ldebug_info0+1158
	.sleb128 0
	.uleb128 0x8
	.quad	.LVL31
	.long	0x47b
	.uleb128 0x6
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC2
	.byte	0
	.byte	0
	.uleb128 0x9
	.quad	.LVL23
	.long	0x1af
	.long	0x361
	.uleb128 0x6
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x6
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	pda_transition
	.byte	0
	.uleb128 0x9
	.quad	.LVL25
	.long	0x194
	.long	0x380
	.uleb128 0x6
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC0
	.byte	0
	.uleb128 0x7
	.quad	.LVL27
	.long	0x17e
	.byte	0
	.uleb128 0x3
	.long	0x62
	.uleb128 0xf
	.long	.LASF32
	.byte	0x7
	.long	0x54
	.quad	.LFB23
	.quad	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.long	0x448
	.uleb128 0xa
	.string	"st"
	.byte	0x18
	.long	0x54
	.long	.LLST0
	.long	.LVUS0
	.uleb128 0xa
	.string	"ch"
	.byte	0x21
	.long	0x67
	.long	.LLST1
	.long	.LVUS1
	.uleb128 0xa
	.string	"ctx"
	.byte	0x35
	.long	0x14e
	.long	.LLST2
	.long	.LVUS2
	.uleb128 0x7
	.quad	.LVL4
	.long	0x1ca
	.uleb128 0x7
	.quad	.LVL7
	.long	0x1f6
	.uleb128 0x7
	.quad	.LVL8
	.long	0x1e0
	.uleb128 0x9
	.quad	.LVL12
	.long	0x20c
	.long	0x426
	.uleb128 0x6
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x8
	.byte	0x61
	.byte	0
	.uleb128 0x7
	.quad	.LVL15
	.long	0x1f6
	.uleb128 0x8
	.quad	.LVL19
	.long	0x20c
	.uleb128 0x6
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x8
	.byte	0x62
	.byte	0
	.byte	0
	.uleb128 0x1f
	.long	.LASF36
	.byte	0x2
	.byte	0x6e
	.byte	0x1
	.long	0x54
	.byte	0x3
	.long	0x467
	.uleb128 0x20
	.long	.LASF37
	.byte	0x2
	.byte	0x6e
	.byte	0x20
	.long	0x179
	.uleb128 0xe
	.byte	0
	.uleb128 0x12
	.uleb128 0x12
	.byte	0x9e
	.uleb128 0x10
	.byte	0x57
	.byte	0x6f
	.byte	0x72
	.byte	0x64
	.byte	0x20
	.byte	0x61
	.byte	0x63
	.byte	0x63
	.byte	0x65
	.byte	0x70
	.byte	0x74
	.byte	0x65
	.byte	0x64
	.byte	0x2e
	.byte	0xa
	.byte	0
	.uleb128 0x21
	.long	.LASF38
	.long	.LASF39
	.byte	0x5
	.byte	0
	.uleb128 0x12
	.uleb128 0x12
	.byte	0x9e
	.uleb128 0x10
	.byte	0x57
	.byte	0x6f
	.byte	0x72
	.byte	0x64
	.byte	0x20
	.byte	0x64
	.byte	0x65
	.byte	0x63
	.byte	0x6c
	.byte	0x69
	.byte	0x6e
	.byte	0x65
	.byte	0x64
	.byte	0x2e
	.byte	0xa
	.byte	0
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2
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
	.uleb128 0x3
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 8
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0xd
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
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x5
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
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x49
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x7e
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x48
	.byte	0
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x7f
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x48
	.byte	0x1
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
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0x21
	.sleb128 7
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
	.uleb128 0xb
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 3
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x21
	.sleb128 7
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0xd
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
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.sleb128 5
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x7a
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0x21
	.sleb128 36
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
	.uleb128 0x11
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x2138
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x58
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x57
	.uleb128 0x21
	.sleb128 3
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x36
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
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
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x15
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x37
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x34
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x5
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
	.uleb128 0x21
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loclists,"",@progbits
	.long	.Ldebug_loc3-.Ldebug_loc2
.Ldebug_loc2:
	.value	0x5
	.byte	0x8
	.byte	0
	.long	0
.Ldebug_loc0:
.LVUS3:
	.uleb128 0
	.uleb128 .LVU43
	.uleb128 .LVU43
	.uleb128 0
.LLST3:
	.byte	0x6
	.quad	.LVL20
	.byte	0x4
	.uleb128 .LVL20-.LVL20
	.uleb128 .LVL22-.LVL20
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL22-.LVL20
	.uleb128 .LFE24-.LVL20
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.byte	0
.LVUS4:
	.uleb128 0
	.uleb128 .LVU42
	.uleb128 .LVU42
	.uleb128 0
.LLST4:
	.byte	0x6
	.quad	.LVL20
	.byte	0x4
	.uleb128 .LVL20-.LVL20
	.uleb128 .LVL21-.LVL20
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL21-.LVL20
	.uleb128 .LFE24-.LVL20
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.byte	0
.LVUS5:
	.uleb128 .LVU46
	.uleb128 .LVU49
.LLST5:
	.byte	0x8
	.quad	.LVL24
	.uleb128 .LVL25-1-.LVL24
	.uleb128 0x1
	.byte	0x50
	.byte	0
.LVUS6:
	.uleb128 .LVU50
	.uleb128 .LVU52
.LLST6:
	.byte	0x8
	.quad	.LVL26
	.uleb128 .LVL27-1-.LVL26
	.uleb128 0x1
	.byte	0x50
	.byte	0
.LVUS7:
	.uleb128 .LVU54
	.uleb128 .LVU57
.LLST7:
	.byte	0x8
	.quad	.LVL28
	.uleb128 .LVL29-.LVL28
	.uleb128 0x6
	.byte	0xa0
	.long	.Ldebug_info0+1127
	.sleb128 0
	.byte	0
.LVUS0:
	.uleb128 0
	.uleb128 .LVU6
	.uleb128 .LVU6
	.uleb128 .LVU7
	.uleb128 .LVU7
	.uleb128 .LVU13
	.uleb128 .LVU13
	.uleb128 .LVU15
	.uleb128 .LVU15
	.uleb128 .LVU17
	.uleb128 .LVU17
	.uleb128 .LVU22
	.uleb128 .LVU22
	.uleb128 .LVU23
	.uleb128 .LVU23
	.uleb128 .LVU27
	.uleb128 .LVU27
	.uleb128 .LVU29
	.uleb128 .LVU29
	.uleb128 .LVU32
	.uleb128 .LVU32
	.uleb128 .LVU33
	.uleb128 .LVU33
	.uleb128 0
.LLST0:
	.byte	0x6
	.quad	.LVL0
	.byte	0x4
	.uleb128 .LVL0-.LVL0
	.uleb128 .LVL1-.LVL0
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL1-.LVL0
	.uleb128 .LVL2-.LVL0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL2-.LVL0
	.uleb128 .LVL3-.LVL0
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL3-.LVL0
	.uleb128 .LVL5-.LVL0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL5-.LVL0
	.uleb128 .LVL6-.LVL0
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL6-.LVL0
	.uleb128 .LVL9-.LVL0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL9-.LVL0
	.uleb128 .LVL10-.LVL0
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL10-.LVL0
	.uleb128 .LVL13-.LVL0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL13-.LVL0
	.uleb128 .LVL14-.LVL0
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL14-.LVL0
	.uleb128 .LVL16-.LVL0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL16-.LVL0
	.uleb128 .LVL17-.LVL0
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL17-.LVL0
	.uleb128 .LFE23-.LVL0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.byte	0
.LVUS1:
	.uleb128 0
	.uleb128 .LVU6
	.uleb128 .LVU6
	.uleb128 .LVU7
	.uleb128 .LVU7
	.uleb128 .LVU14
	.uleb128 .LVU14
	.uleb128 .LVU15
	.uleb128 .LVU15
	.uleb128 .LVU18
	.uleb128 .LVU18
	.uleb128 .LVU22
	.uleb128 .LVU22
	.uleb128 .LVU24
	.uleb128 .LVU24
	.uleb128 .LVU27
	.uleb128 .LVU27
	.uleb128 .LVU30
	.uleb128 .LVU30
	.uleb128 .LVU32
	.uleb128 .LVU32
	.uleb128 .LVU34
	.uleb128 .LVU34
	.uleb128 0
.LLST1:
	.byte	0x6
	.quad	.LVL0
	.byte	0x4
	.uleb128 .LVL0-.LVL0
	.uleb128 .LVL1-.LVL0
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL1-.LVL0
	.uleb128 .LVL2-.LVL0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL2-.LVL0
	.uleb128 .LVL4-1-.LVL0
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL4-1-.LVL0
	.uleb128 .LVL5-.LVL0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL5-.LVL0
	.uleb128 .LVL7-1-.LVL0
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL7-1-.LVL0
	.uleb128 .LVL9-.LVL0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL9-.LVL0
	.uleb128 .LVL11-.LVL0
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL11-.LVL0
	.uleb128 .LVL13-.LVL0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL13-.LVL0
	.uleb128 .LVL15-1-.LVL0
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL15-1-.LVL0
	.uleb128 .LVL16-.LVL0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL16-.LVL0
	.uleb128 .LVL18-.LVL0
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL18-.LVL0
	.uleb128 .LFE23-.LVL0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.byte	0
.LVUS2:
	.uleb128 0
	.uleb128 .LVU6
	.uleb128 .LVU6
	.uleb128 .LVU7
	.uleb128 .LVU7
	.uleb128 .LVU14
	.uleb128 .LVU14
	.uleb128 .LVU15
	.uleb128 .LVU15
	.uleb128 .LVU18
	.uleb128 .LVU18
	.uleb128 .LVU22
	.uleb128 .LVU22
	.uleb128 .LVU25
	.uleb128 .LVU25
	.uleb128 .LVU27
	.uleb128 .LVU27
	.uleb128 .LVU30
	.uleb128 .LVU30
	.uleb128 .LVU32
	.uleb128 .LVU32
	.uleb128 .LVU35
	.uleb128 .LVU35
	.uleb128 0
.LLST2:
	.byte	0x6
	.quad	.LVL0
	.byte	0x4
	.uleb128 .LVL0-.LVL0
	.uleb128 .LVL1-.LVL0
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL1-.LVL0
	.uleb128 .LVL2-.LVL0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL2-.LVL0
	.uleb128 .LVL4-1-.LVL0
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL4-1-.LVL0
	.uleb128 .LVL5-.LVL0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL5-.LVL0
	.uleb128 .LVL7-1-.LVL0
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL7-1-.LVL0
	.uleb128 .LVL9-.LVL0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x4
	.uleb128 .LVL9-.LVL0
	.uleb128 .LVL12-1-.LVL0
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL12-1-.LVL0
	.uleb128 .LVL13-.LVL0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL13-.LVL0
	.uleb128 .LVL15-1-.LVL0
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL15-1-.LVL0
	.uleb128 .LVL16-.LVL0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0x4
	.uleb128 .LVL16-.LVL0
	.uleb128 .LVL19-1-.LVL0
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL19-1-.LVL0
	.uleb128 .LFE23-.LVL0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.byte	0
.Ldebug_loc3:
	.section	.debug_aranges,"",@progbits
	.long	0x3c
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x8
	.byte	0
	.value	0
	.value	0
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.quad	.LFB24
	.quad	.LFE24-.LFB24
	.quad	0
	.quad	0
	.section	.debug_rnglists,"",@progbits
.Ldebug_ranges0:
	.long	.Ldebug_ranges3-.Ldebug_ranges2
.Ldebug_ranges2:
	.value	0x5
	.byte	0x8
	.byte	0
	.long	0
.LLRL8:
	.byte	0x7
	.quad	.Ltext0
	.uleb128 .Letext0-.Ltext0
	.byte	0x7
	.quad	.LFB24
	.uleb128 .LFE24-.LFB24
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF37:
	.string	"__fmt"
.LASF24:
	.string	"create_dfa"
.LASF15:
	.string	"state"
.LASF18:
	.string	"stack"
.LASF23:
	.string	"dfa_new_ctx"
.LASF21:
	.string	"__printf_chk"
.LASF26:
	.string	"s_pop"
.LASF10:
	.string	"data"
.LASF33:
	.string	"GNU C17 11.2.0 -mtune=generic -march=x86-64 -g -Og -O3 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection"
.LASF4:
	.string	"unsigned char"
.LASF32:
	.string	"pda_transition"
.LASF27:
	.string	"s_peek"
.LASF20:
	.string	"transition"
.LASF2:
	.string	"long unsigned int"
.LASF5:
	.string	"short unsigned int"
.LASF22:
	.string	"run_dfa"
.LASF16:
	.string	"input"
.LASF13:
	.string	"Stack"
.LASF34:
	.string	"s_push"
.LASF31:
	.string	"main"
.LASF14:
	.string	"dfa_ctx"
.LASF3:
	.string	"unsigned int"
.LASF39:
	.string	"__builtin_puts"
.LASF11:
	.string	"val_t"
.LASF28:
	.string	"argc"
.LASF25:
	.string	"s_isempty"
.LASF36:
	.string	"printf"
.LASF17:
	.string	"offset"
.LASF7:
	.string	"short int"
.LASF12:
	.string	"stack_t"
.LASF29:
	.string	"argv"
.LASF19:
	.string	"initial"
.LASF8:
	.string	"long int"
.LASF9:
	.string	"char"
.LASF35:
	.string	"test_word"
.LASF38:
	.string	"puts"
.LASF6:
	.string	"signed char"
.LASF30:
	.string	"pda_ctx"
	.section	.debug_line_str,"MS",@progbits,1
.LASF1:
	.string	"/home/finn/Documents/OTH/CC/CompilerConstruction/ex6/ex1"
.LASF0:
	.string	"src/main.c"
	.ident	"GCC: (Ubuntu 11.2.0-19ubuntu1) 11.2.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	1f - 0f
	.long	4f - 1f
	.long	5
0:
	.string	"GNU"
1:
	.align 8
	.long	0xc0000002
	.long	3f - 2f
2:
	.long	0x3
3:
	.align 8
4:
