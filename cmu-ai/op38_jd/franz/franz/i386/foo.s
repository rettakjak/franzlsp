	.file	"foo.c"
gcc2_compiled.:
___gnu_compiled_c:
.text
	.align 2
.globl _f
_f:
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%eax
	imull 12(%ebp),%eax
	cltd
	leave
	ret
