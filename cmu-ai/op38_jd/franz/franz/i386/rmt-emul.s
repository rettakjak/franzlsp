	.file	"rmt-emul.c"
gcc2_compiled.:
___gnu_compiled_c:
.text
	.align 2
.globl _emul
_emul:
	pushl %ebp
	movl %esp,%ebp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%eax
	movl 12(%ebp),%edx
	movl %eax,%esi
	movl %esi,%edi
	sarl $31,%edi
	movl %esi,%ecx
	movl %edi,%ebx
	movl %edx,%esi
	movl %esi,%edi
	sarl $31,%edi
	movl %esi,%eax
	movl %edi,%edx
	pushl %edx
	pushl %eax
	pushl %ebx
	pushl %ecx
	call ___muldi3
	movl 16(%ebp),%esi
	movl %esi,%edi
	sarl $31,%edi
	movl %esi,%ecx
	movl %edi,%ebx
	addl %ecx,%eax
	adcl %ebx,%edx
	movl 20(%ebp),%edi
	movl %eax,(%edi)
	movl %edx,4(%edi)
	leal -12(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	leave
	ret
