	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 10, 14	sdk_version 10, 14
	.globl	_main                   ## -- Begin function main
	.p2align	4, 0x90
_main:                                  ## @main
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movl	$0, -4(%rbp)
	leaq	L_.str(%rip), %rdi
	movl	$4294967295, %esi       ## imm = 0xFFFFFFFF
	movb	$0, %al
	callq	_printf
	leaq	L_.str.1(%rip), %rdi
	movq	%rdi, -16(%rbp)
	leaq	L_.str.2(%rip), %rdi
	movq	%rdi, -24(%rbp)
	leaq	L_.str.3(%rip), %rdi
	leaq	-16(%rbp), %rsi
	movl	%eax, -28(%rbp)         ## 4-byte Spill
	movb	$0, %al
	callq	_printf
	movq	-16(%rbp), %rsi
	leaq	L_.str.3(%rip), %rdi
	movl	%eax, -32(%rbp)         ## 4-byte Spill
	movb	$0, %al
	callq	_printf
	leaq	L_.str.4(%rip), %rdi
	leaq	-24(%rbp), %rsi
	movl	%eax, -36(%rbp)         ## 4-byte Spill
	movb	$0, %al
	callq	_printf
	movq	-24(%rbp), %rsi
	leaq	L_.str.4(%rip), %rdi
	movl	%eax, -40(%rbp)         ## 4-byte Spill
	movb	$0, %al
	callq	_printf
	movq	_test@GOTPCREL(%rip), %rsi
	leaq	L_.str.5(%rip), %rdi
	movl	%eax, -44(%rbp)         ## 4-byte Spill
	movb	$0, %al
	callq	_printf
	movl	%eax, -48(%rbp)         ## 4-byte Spill
	movb	$0, %al
	callq	_test
	leaq	L_.str.6(%rip), %rdi
	movq	%rax, %rsi
	movb	$0, %al
	callq	_printf
	xorl	%ecx, %ecx
	movl	%eax, -52(%rbp)         ## 4-byte Spill
	movl	%ecx, %eax
	addq	$64, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"og: %d\n"

L_.str.1:                               ## @.str.1
	.asciz	"qqqq"

L_.str.2:                               ## @.str.2
	.asciz	"aaaa"

L_.str.3:                               ## @.str.3
	.asciz	"str1: %p\n"

L_.str.4:                               ## @.str.4
	.asciz	"str2: %p\n"

L_.str.5:                               ## @.str.5
	.asciz	"fnc : %p\n"

L_.str.6:                               ## @.str.6
	.asciz	"ret:  %p\n"


.subsections_via_symbols
