# emul(int p, int q, int r, int s[2])
# s[0:1] = p*q+r

.text
	.align 2
.globl _emul
_emul:
	pushl	%ebp		# save old frame pointer
	movl	%esp,%ebp	# set frame pointer to stack pointer
	pushl	%ebx		# save %ebx (%eax and %edx don't need saving)

	movl	8(%ebp),%eax	# load p
	imull	12(%ebp)	# multiply p by q giving 64-bit result edx:eax 
	movl	16(%ebp),%ebx	# load r
	addl	%ebx,%eax	# add r to low-order part of product
	adcl	$0,%edx		# add carry-bit to high-order part of product
	sarl	$31,%ebx	# replicate sign of r to get high-order 32 bits
	addl	%ebx,%edx	# and add to high-order part of product
	movl	20(%ebp),%ebx	# load s
	movl	%edx,(%ebx)	# store s[0] (high)
	movl	%eax,4(%ebx)	# store s[1] (low)

	popl	%ebx		# restore %ebx
	leave			# pop frame pointer
	ret			# return
