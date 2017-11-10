	.file	"foo1.c"
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"{"
.LC1:
	.string	"%d,"
.LC2:
	.string	"}\n"
	.section	.text.unlikely,"ax",@progbits
.LCOLDB3:
	.text
.LHOTB3:
	.p2align 4,,15
	.globl	fill0
	.type	fill0, @function
fill0:
.LFB11:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movl	$.LC0, %esi
	movl	$1, %edi
	xorl	%eax, %eax
	movl	$in, %ebp
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	movl	$28, %ebx
	call	__printf_chk
	.p2align 4,,10
	.p2align 3
.L2:
	movl	%ebx, %edx
	xorl	%eax, %eax
	movl	$.LC1, %esi
	andl	$31, %edx
	movl	$1, %edi
	addl	$5, %ebx
	movl	%edx, 0(%rbp)
	addq	$4, %rbp
	call	__printf_chk
	cmpl	$278, %ebx
	jne	.L2
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	movl	$.LC2, %esi
	movl	$1, %edi
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	xorl	%eax, %eax
	jmp	__printf_chk
	.cfi_endproc
.LFE11:
	.size	fill0, .-fill0
	.section	.text.unlikely
.LCOLDE3:
	.text
.LHOTE3:
	.section	.text.unlikely
.LCOLDB4:
	.text
.LHOTB4:
	.p2align 4,,15
	.globl	avg0
	.type	avg0, @function
avg0:
.LFB12:
	.cfi_startproc
	movl	i0(%rip), %ecx
	leal	-4(%rcx), %eax
	leal	5(%rcx), %edx
	cmpl	%edx, %eax
	jg	.L18
	cmpl	$49, %eax
	jbe	.L21
	xorl	%esi, %esi
	xorl	%eax, %eax
.L8:
	leal	-3(%rcx), %edi
	cmpl	$49, %edi
	ja	.L9
	movslq	%edi, %rdi
	addl	$1, %esi
	addl	in(,%rdi,4), %eax
.L9:
	leal	-2(%rcx), %edi
	cmpl	$49, %edi
	ja	.L10
	movslq	%edi, %rdi
	addl	$1, %esi
	addl	in(,%rdi,4), %eax
.L10:
	leal	-1(%rcx), %edi
	cmpl	$49, %edi
	ja	.L11
	movslq	%edi, %rdi
	addl	$1, %esi
	addl	in(,%rdi,4), %eax
.L11:
	cmpl	$49, %ecx
	movslq	%ecx, %r8
	ja	.L12
	addl	in(,%r8,4), %eax
	addl	$1, %esi
.L12:
	leal	1(%rcx), %edi
	cmpl	$49, %edi
	ja	.L13
	movslq	%edi, %rdi
	addl	$1, %esi
	addl	in(,%rdi,4), %eax
.L13:
	leal	2(%rcx), %edi
	cmpl	$49, %edi
	ja	.L14
	movslq	%edi, %rdi
	addl	$1, %esi
	addl	in(,%rdi,4), %eax
.L14:
	leal	3(%rcx), %edi
	cmpl	$49, %edi
	ja	.L15
	movslq	%edi, %rdi
	addl	$1, %esi
	addl	in(,%rdi,4), %eax
.L15:
	addl	$4, %ecx
	cmpl	$49, %ecx
	ja	.L16
	movslq	%ecx, %rcx
	addl	$1, %esi
	addl	in(,%rcx,4), %eax
.L16:
	cmpl	$49, %edx
	ja	.L7
	movslq	%edx, %rcx
	addl	$1, %esi
	addl	in(,%rcx,4), %eax
.L7:
	cltd
	idivl	%esi
	movl	%eax, res(,%r8,4)
	ret
	.p2align 4,,10
	.p2align 3
.L21:
	cltq
	movl	$1, %esi
	movl	in(,%rax,4), %eax
	jmp	.L8
	.p2align 4,,10
	.p2align 3
.L18:
	xorl	%esi, %esi
	xorl	%eax, %eax
	movslq	%ecx, %r8
	jmp	.L7
	.cfi_endproc
.LFE12:
	.size	avg0, .-avg0
	.section	.text.unlikely
.LCOLDE4:
	.text
.LHOTE4:
	.section	.rodata.str1.1
.LC5:
	.string	"%d}\n"
	.section	.text.unlikely
.LCOLDB6:
	.text
.LHOTB6:
	.p2align 4,,15
	.globl	output0
	.type	output0, @function
output0:
.LFB13:
	.cfi_startproc
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movl	$.LC0, %esi
	movl	$1, %edi
	xorl	%eax, %eax
	movl	$res, %ebx
	call	__printf_chk
	.p2align 4,,10
	.p2align 3
.L23:
	movl	(%rbx), %edx
	xorl	%eax, %eax
	movl	$.LC1, %esi
	movl	$1, %edi
	addq	$4, %rbx
	call	__printf_chk
	cmpq	$res+196, %rbx
	jne	.L23
	popq	%rbx
	.cfi_def_cfa_offset 8
	movl	res+196(%rip), %edx
	movl	$.LC5, %esi
	movl	$1, %edi
	xorl	%eax, %eax
	jmp	__printf_chk
	.cfi_endproc
.LFE13:
	.size	output0, .-output0
	.section	.text.unlikely
.LCOLDE6:
	.text
.LHOTE6:
	.section	.text.unlikely
.LCOLDB7:
	.section	.text.startup,"ax",@progbits
.LHOTB7:
	.p2align 4,,15
	.globl	main
	.type	main, @function
main:
.LFB14:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	xorl	%eax, %eax
	movl	$0, i0(%rip)
	call	fill0
	movl	$in-12, %edi
	movl	$res, %r9d
	movl	$-3, %r8d
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L27:
	leal	-2(%rcx), %esi
	cmpl	$49, %esi
	ja	.L30
.L43:
	addl	4(%rdi), %eax
	addl	$1, %edx
.L30:
	leal	-1(%rcx), %esi
	cmpl	$49, %esi
	ja	.L31
	addl	8(%rdi), %eax
	addl	$1, %edx
.L31:
	addl	$1, %ecx
	addl	12(%rdi), %eax
	leal	1(%rdx), %esi
	cmpl	$50, %ecx
	je	.L32
	addl	16(%rdi), %eax
	leal	2(%rdx), %esi
.L32:
	leal	1(%rcx), %edx
	cmpl	$49, %edx
	ja	.L33
	addl	20(%rdi), %eax
	addl	$1, %esi
.L33:
	leal	2(%rcx), %edx
	cmpl	$49, %edx
	ja	.L34
	addl	24(%rdi), %eax
	addl	$1, %esi
.L34:
	leal	3(%rcx), %edx
	cmpl	$49, %edx
	ja	.L35
	addl	28(%rdi), %eax
	addl	$1, %esi
.L35:
	leal	4(%rcx), %edx
	cmpl	$49, %edx
	ja	.L36
	addl	32(%rdi), %eax
	addl	$1, %esi
	cltd
	idivl	%esi
	movl	%eax, (%r9)
.L37:
	cmpl	$49, %r8d
	ja	.L38
	movl	(%rdi), %eax
	movl	$1, %edx
.L28:
	addl	$1, %r8d
	addq	$4, %rdi
	addq	$4, %r9
	cmpl	$49, %r8d
	ja	.L27
	leal	-2(%rcx), %esi
	addl	(%rdi), %eax
	addl	$1, %edx
	cmpl	$49, %esi
	ja	.L30
	jmp	.L43
	.p2align 4,,10
	.p2align 3
.L36:
	cltd
	idivl	%esi
	cmpl	$50, %ecx
	movl	%eax, (%r9)
	jne	.L37
	xorl	%eax, %eax
	movl	$50, i0(%rip)
	call	output0
	xorl	%eax, %eax
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L38:
	.cfi_restore_state
	xorl	%edx, %edx
	xorl	%eax, %eax
	jmp	.L28
	.cfi_endproc
.LFE14:
	.size	main, .-main
	.section	.text.unlikely
.LCOLDE7:
	.section	.text.startup
.LHOTE7:
	.globl	i0
	.bss
	.align 4
	.type	i0, @object
	.size	i0, 4
i0:
	.zero	4
	.comm	res,200,32
	.comm	in,200,32
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.5) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
