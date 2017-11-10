	.file	"foo2.c"
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
	movslq	i0(%rip), %r8
	leal	-4(%r8), %ecx
	leal	5(%r8), %eax
	cmpl	%eax, %ecx
	jg	.L10
	leal	6(%r8), %edx
	xorl	%esi, %esi
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L9:
	cmpl	$49, %ecx
	ja	.L8
	movslq	%ecx, %rdi
	addl	$1, %esi
	addl	in(,%rdi,4), %eax
.L8:
	addl	$1, %ecx
	cmpl	%edx, %ecx
	jne	.L9
.L7:
	cltd
	idivl	%esi
	movl	%eax, res(,%r8,4)
	ret
.L10:
	xorl	%esi, %esi
	xorl	%eax, %eax
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
.L13:
	movl	(%rbx), %edx
	xorl	%eax, %eax
	movl	$.LC1, %esi
	movl	$1, %edi
	addq	$4, %rbx
	call	__printf_chk
	cmpq	$res+196, %rbx
	jne	.L13
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
	movl	$res, %r9d
	movl	$-4, %r8d
	.p2align 4,,10
	.p2align 3
.L20:
	leal	9(%r8), %eax
	movl	%r8d, %ecx
	cmpl	%eax, %r8d
	jg	.L21
	leal	10(%r8), %edx
	xorl	%esi, %esi
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L19:
	cmpl	$49, %ecx
	ja	.L18
	movslq	%ecx, %rdi
	addl	$1, %esi
	addl	in(,%rdi,4), %eax
.L18:
	addl	$1, %ecx
	cmpl	%edx, %ecx
	jne	.L19
.L17:
	cltd
	addl	$1, %r8d
	addq	$4, %r9
	idivl	%esi
	movl	%eax, -4(%r9)
	cmpl	$46, %r8d
	jne	.L20
	xorl	%eax, %eax
	movl	$50, i0(%rip)
	call	output0
	xorl	%eax, %eax
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
.L21:
	.cfi_restore_state
	xorl	%esi, %esi
	xorl	%eax, %eax
	jmp	.L17
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
