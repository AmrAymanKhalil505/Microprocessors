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
	.globl	fill0
	.type	fill0, @function
fill0:
.LFB9:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movl	$.LC0, %esi
	pushq	%rcx
	.cfi_def_cfa_offset 32
	movl	$1, %edi
	xorl	%eax, %eax
	movl	$in, %ebp
	movl	$28, %ebx
	call	__printf_chk
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
	popq	%rdx
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	movl	$.LC2, %esi
	movl	$1, %edi
	xorl	%eax, %eax
	jmp	__printf_chk
	.cfi_endproc
.LFE9:
	.size	fill0, .-fill0
	.section	.text.unlikely
.LCOLDE3:
	.text
.LHOTE3:
	.section	.text.unlikely
.LCOLDB4:
	.text
.LHOTB4:
	.globl	avg0
	.type	avg0, @function
avg0:
.LFB10:
	.cfi_startproc
	movl	i0(%rip), %edx
	xorl	%esi, %esi
	xorl	%eax, %eax
	leal	-4(%rdx), %ecx
	leal	6(%rdx), %edi
.L7:
	cmpl	%edi, %ecx
	je	.L10
	cmpl	$49, %ecx
	ja	.L8
	movslq	%ecx, %r8
	incl	%esi
	addl	in(,%r8,4), %eax
.L8:
	incl	%ecx
	jmp	.L7
.L10:
	movslq	%edx, %rcx
	cltd
	idivl	%esi
	movl	%eax, res(,%rcx,4)
	ret
	.cfi_endproc
.LFE10:
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
	.globl	output0
	.type	output0, @function
output0:
.LFB11:
	.cfi_startproc
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movl	$.LC0, %esi
	movl	$1, %edi
	xorl	%eax, %eax
	xorl	%ebx, %ebx
	call	__printf_chk
.L12:
	movl	res(%rbx), %edx
	xorl	%eax, %eax
	movl	$.LC1, %esi
	movl	$1, %edi
	addq	$4, %rbx
	call	__printf_chk
	cmpq	$196, %rbx
	jne	.L12
	popq	%rbx
	.cfi_def_cfa_offset 8
	movl	res+196(%rip), %edx
	movl	$.LC5, %esi
	movl	$1, %edi
	xorl	%eax, %eax
	jmp	__printf_chk
	.cfi_endproc
.LFE11:
	.size	output0, .-output0
	.section	.text.unlikely
.LCOLDE6:
	.text
.LHOTE6:
	.section	.text.unlikely
.LCOLDB7:
	.section	.text.startup,"ax",@progbits
.LHOTB7:
	.globl	main
	.type	main, @function
main:
.LFB12:
	.cfi_startproc
	pushq	%rcx
	.cfi_def_cfa_offset 16
	xorl	%eax, %eax
	movl	$0, i0(%rip)
	call	fill0
	movl	$0, i0(%rip)
.L16:
	xorl	%eax, %eax
	cmpl	$49, i0(%rip)
	jg	.L19
	call	avg0
	incl	i0(%rip)
	jmp	.L16
.L19:
	call	output0
	xorl	%eax, %eax
	popq	%rdx
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE12:
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
