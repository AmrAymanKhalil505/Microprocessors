	.file	"foo.c"
	.comm	in,200,32
	.comm	res,200,32
	.globl	i0
	.bss
	.align 4
	.type	i0, @object
	.size	i0, 4
i0:
	.zero	4
	.section	.rodata
.LC0:
	.string	"%d,"
.LC1:
	.string	"}"
	.text
	.globl	fill0
	.type	fill0, @function
fill0:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	$0, -4(%rbp)
	movl	$123, %edi
	call	putchar
	movl	$0, -4(%rbp)
	jmp	.L2
.L3:
	movl	-4(%rbp), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	leal	28(%rax), %edx
	movl	%edx, %eax
	sarl	$31, %eax
	shrl	$27, %eax
	addl	%eax, %edx
	andl	$31, %edx
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, %edx
	movl	-4(%rbp), %eax
	cltq
	movl	%edx, in(,%rax,4)
	movl	-4(%rbp), %eax
	cltq
	movl	in(,%rax,4), %eax
	movl	%eax, %esi
	movl	$.LC0, %edi
	movl	$0, %eax
	call	printf
	addl	$1, -4(%rbp)
.L2:
	cmpl	$49, -4(%rbp)
	jle	.L3
	movl	$.LC1, %edi
	call	puts
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	fill0, .-fill0
	.globl	avg0
	.type	avg0, @function
avg0:
.LFB1:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$0, -12(%rbp)
	movl	$0, -8(%rbp)
	movl	$0, -4(%rbp)
	movl	i0(%rip), %eax
	subl	$4, %eax
	movl	%eax, -4(%rbp)
	jmp	.L5
.L7:
	cmpl	$0, -4(%rbp)
	js	.L6
	cmpl	$49, -4(%rbp)
	jg	.L6
	movl	-4(%rbp), %eax
	cltq
	movl	in(,%rax,4), %eax
	addl	%eax, -12(%rbp)
	addl	$1, -8(%rbp)
.L6:
	addl	$1, -4(%rbp)
.L5:
	movl	i0(%rip), %eax
	addl	$5, %eax
	cmpl	-4(%rbp), %eax
	jge	.L7
	movl	-12(%rbp), %eax
	cltd
	idivl	-8(%rbp)
	movl	%eax, -12(%rbp)
	movl	i0(%rip), %eax
	cltq
	movl	-12(%rbp), %edx
	movl	%edx, res(,%rax,4)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	avg0, .-avg0
	.section	.rodata
.LC2:
	.string	"%d}\n"
	.text
	.globl	output0
	.type	output0, @function
output0:
.LFB2:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	$0, -4(%rbp)
	movl	$123, %edi
	call	putchar
	movl	$0, -4(%rbp)
	jmp	.L9
.L10:
	movl	-4(%rbp), %eax
	cltq
	movl	res(,%rax,4), %eax
	movl	%eax, %esi
	movl	$.LC0, %edi
	movl	$0, %eax
	call	printf
	addl	$1, -4(%rbp)
.L9:
	cmpl	$48, -4(%rbp)
	jle	.L10
	movl	res+196(%rip), %eax
	movl	%eax, %esi
	movl	$.LC2, %edi
	movl	$0, %eax
	call	printf
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	output0, .-output0
	.globl	main
	.type	main, @function
main:
.LFB3:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	$0, -8(%rbp)
	movl	$0, -4(%rbp)
	movl	$0, i0(%rip)
	movl	$0, %eax
	call	fill0
	movl	$0, i0(%rip)
	jmp	.L12
.L13:
	movl	$0, %eax
	call	avg0
	movl	i0(%rip), %eax
	addl	$1, %eax
	movl	%eax, i0(%rip)
.L12:
	movl	i0(%rip), %eax
	cmpl	$49, %eax
	jle	.L13
	movl	$0, %eax
	call	output0
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.5) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
