#NO_APP
gcc_compiled.:
.text
	.align 2
.globl _main
_main:
	pushl %ebp
	movl %esp,%ebp
	subl $12,%esp
	leal -4(%ebp),%eax
	pushl %eax
	pushl %eax
	leal -12(%ebp),%eax
	pushl %eax
	call _ediv
	leave
	ret
	.align 2
.globl _g
_g:
	pushl %ebp
	movl %esp,%ebp
	movl $5,%eax
	leave
	ret
	.align 2
.globl _ediv
_ediv:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%ecx
	movl (%ecx),%eax
	cltd
	idivl 12(%ebp)
	pushl %eax
	call _g
	leave
	ret
	.align 2
.globl _emul
_emul:
	pushl %ebp
	movl %esp,%ebp
	movl 20(%ebp),%eax
	movl 8(%ebp),%edx
	imull 12(%ebp),%edx
	addl 16(%ebp),%edx
	movl %edx,4(%eax)
	addl $5,4(%eax)
	leave
	ret
	.align 2
.globl _var
_var:
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
	movl $1,%ebx
	call _g
	movl $3,%edx
	leal (%eax,%ebx),%ebx
	leal (%edx,%eax),%eax
	leal (%eax,%ebx),%ebx
	leal (%ebx,%edx),%eax
	leal -4(%ebp),%esp
	popl %ebx
	leave
	ret
