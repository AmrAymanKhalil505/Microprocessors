	.file	"foo1.c"
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"{"
.LC1:
	.string	"%d,"
.LC2:
	.string	"}\n"
	.text
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
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	movl	$.LC0, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	__printf_chk
	movl	$in, %ebp
	movl	$28, %ebx
.L2:
	movl	%ebx, %eax
	sarl	$31, %eax
	shrl	$27, %eax
	leal	(%rbx,%rax), %edx
	andl	$31, %edx
	subl	%eax, %edx
	movl	%edx, 0(%rbp)
	movl	$.LC1, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	__printf_chk
	addl	$5, %ebx
	addq	$4, %rbp
	cmpl	$278, %ebx
	jne	.L2
	movl	$.LC2, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	__printf_chk
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE11:
	.size	fill0, .-fill0
	.globl	avg0
	.type	avg0, @function
avg0:
.LFB12:
	.cfi_startproc
	movl	i0(%rip), %r8d
	leal	-4(%r8), %ecx
	leal	5(%r8), %edx
	cmpl	%edx, %ecx
	jg	.L9
	movl	$0, %esi
	movl	$0, %eax
.L8:
	cmpl	$49, %ecx
	ja	.L7
	movslq	%ecx, %rdi
	addl	in(,%rdi,4), %eax
	addl	$1, %esi
.L7:
	addl	$1, %ecx
	cmpl	%edx, %ecx
	jle	.L8
	jmp	.L6
.L9:
	movl	$0, %esi
	movl	$0, %eax
.L6:
	movslq	%r8d, %r8
	cltd
	idivl	%esi
	movl	%eax, res(,%r8,4)
	ret
	.cfi_endproc
.LFE12:
	.size	avg0, .-avg0
	.section	.rodata.str1.1
.LC3:
	.string	"%d}\n"
	.text
	.globl	output0
	.type	output0, @function
output0:
.LFB13:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	movl	$.LC0, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	__printf_chk
	movl	$res, %ebx
	movl	$res+196, %ebp
.L12:
	movl	(%rbx), %edx
	movl	$.LC1, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	__printf_chk
	addq	$4, %rbx
	cmpq	%rbp, %rbx
	jne	.L12
	movl	res+196(%rip), %edx
	movl	$.LC3, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	__printf_chk
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE13:
	.size	output0, .-output0
	.globl	main
	.type	main, @function
main:
.LFB14:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	movl	$0, i0(%rip)
	movl	$0, %eax
	call	fill0
	movl	$0, i0(%rip)
.L16:
	movl	$0, %eax
	call	avg0
	movl	i0(%rip), %eax
	addl	$1, %eax
	movl	%eax, i0(%rip)
	cmpl	$49, %eax
	jle	.L16
	movl	$0, %eax
	call	output0
	movl	$0, %eax
	addq	$8, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE14:
	.size	main, .-main
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
