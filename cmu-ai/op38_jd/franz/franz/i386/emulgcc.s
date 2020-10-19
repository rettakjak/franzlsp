	.file	"emulgcc.c"
gcc2_compiled.:
.text
	.align 2
.globl _emul
_emul:
	pushl %ebp
	movl %esp,%ebp
	subl $16,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%eax
	movl 12(%ebp),%ecx
	movl 20(%ebp),%edi
	movl %eax,-8(%ebp)
	sarl $31,%eax
	movl %eax,-4(%ebp)
	movl -8(%ebp),%ebx
	movl -4(%ebp),%esi
	movl %ebx,-8(%ebp)
	movl %esi,-4(%ebp)
	movl %ecx,%eax
	movl %ecx,%edx
	sarl $31,%edx
	pushl %edx
	pushl %eax
	pushl %esi
	pushl %ebx
	call ___muldi3
	movl %eax,-16(%ebp)
	movl %edx,-12(%ebp)
	movl 16(%ebp),%eax
	movl %eax,%edx
	sarl $31,%edx
	addl -16(%ebp),%eax
	adcl -12(%ebp),%edx
	movl %eax,-8(%ebp)
	movl %edx,-4(%ebp)
	movl %edx,%eax
	sarl $31,%edx
	movl %eax,(%edi)
	movl -8(%ebp),%esi
	movl %esi,4(%edi)
	leal -28(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	leave
	ret
