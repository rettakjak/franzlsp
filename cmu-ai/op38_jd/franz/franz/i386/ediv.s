# ediv(int p[2], int q, char *err)
# p[0] = p[0:1]%q, p[1] = p[0:1]/q, returns p[0:1]/q

.text
	.align 2
.globl _ediv
_ediv:
	pushl %ebp		# save old frame pointer
	movl %esp,%ebp		# set frame pointer to stack pointer
	movl 8(%ebp),%ecx	# load p
	movl (%ecx),%edx	# load p[0] (high)
	movl 4(%ecx),%eax	# load p[1] (low)
	idivl 12(%ebp)		# divide p[0:1] by q
	movl %edx,(%ecx)	# store remainder in p[0]
	movl %eax,4(%ecx)	# store quotient in p[1]
	leave			# pop frame pointer
	ret			# return

