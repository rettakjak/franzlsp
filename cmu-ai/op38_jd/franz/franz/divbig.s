#NO_APP
gcc_compiled.:
	.stabs "divbig.c",100,0,0,Ltext
Ltext:
.stabs "int:t1=r1;-2147483648;2147483647;",128,0,0,0
.stabs "char:t2=r2;0;127;",128,0,0,0
.stabs "long int:t3=r1;-2147483648;2147483647;",128,0,0,0
.stabs "unsigned int:t4=r1;0;-1;",128,0,0,0
.stabs "long unsigned int:t5=r1;0;-1;",128,0,0,0
.stabs "short int:t6=r1;-32768;32767;",128,0,0,0
.stabs "long long int:t7=r1;0;-1;",128,0,0,0
.stabs "short unsigned int:t8=r1;0;65535;",128,0,0,0
.stabs "long long unsigned int:t9=r1;0;-1;",128,0,0,0
.stabs "signed char:t10=r1;-128;127;",128,0,0,0
.stabs "unsigned char:t11=r1;0;255;",128,0,0,0
.stabs "float:t12=r1;4;0;",128,0,0,0
.stabs "double:t13=r1;8;0;",128,0,0,0
.stabs "long double:t14=r1;8;0;",128,0,0,0
.stabs "void:t15=15",128,0,0,0
.stabs "rcsid:S16=*2",38,0,0,_rcsid
.text
LC0:
	.ascii "$Header: divbig.c,v 1.4 83/11/26 12:10:16 sklower Exp $\0"
.data
	.align 2
_rcsid:
	.long LC0
.stabs "size_t:t4",128,0,0,0
.stabs "fpos_t:t3",128,0,0,0
.stabs "__sFILE:T17=s84_p:18=*11,0,32;_r:1,32,32;\\",128,0,0,0
.stabs "_w:1,64,32;_flags:6,96,16;_file:6,112,16;\\",128,0,0,0
.stabs "_bf:19=xs__sbuf:,128,64;_lbfsize:1,192,32;_cookie:20=*15,224,32;\\",128,0,0,0
.stabs "_close:21=*22=f1,256,32;_read:23=*24=f1,288,32;\\",128,0,0,0
.stabs "_seek:25=*26=f3,320,32;_write:27=*28=f1,352,32;\\",128,0,0,0
.stabs "_ub:19,384,64;_up:18,448,32;_ur:1,480,32;\\",128,0,0,0
.stabs "_ubuf:29=ar1;0;2;11,512,24;_nbuf:30=ar1;0;0;11,536,8;\\",128,0,0,0
.stabs "_lb:19,544,64;_blksize:1,608,32;_offset:1,640,32;;",128,0,0,0
.stabs "__sbuf:T19=s8_base:18,0,32;_size:1,32,32;;",128,0,0,0
.stabs "FILE:t17",128,0,0,0
.stabs "lispval:t31=*32=xulispobj:",128,0,0,0
.text
	.align 2
.globl _divbig
_divbig:
	.stabd 68,0,21
	pushl %ebp
	movl %esp,%ebp
	subl $64,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
LBB2:
	.stabd 68,0,23
	movl $0,-8(%ebp)
	.stabd 68,0,24
	movl $0,-40(%ebp)
	.stabd 68,0,25
	movl _xsp,%eax
	movl %eax,-44(%ebp)
	.stabd 68,0,27
	movl _xsp,%eax
	movl %eax,-60(%ebp)
	.stabd 68,0,30
	movl 8(%ebp),%edi
L10:
	testl %edi,%edi
	je L11
	.stabd 68,0,31
	cmpl $_xstack,_xsp
	jbe L13
	addl $-4,_xsp
	movl _xsp,%eax
	movl %eax,-64(%ebp)
	movl (%edi),%ecx
	movl %ecx,(%eax)
	jmp L14
L13:
	call _xserr
L14:
	.stabd 68,0,30
L12:
	movl 4(%edi),%edi
	jmp L10
L11:
	.stabd 68,0,32
	movl _xsp,%eax
	movl %eax,-48(%ebp)
	.stabd 68,0,33
	movl %eax,-64(%ebp)
	cmpl $0,(%eax)
	jge L15
LBB3:
	.stabd 68,0,35
	xorl $1,-8(%ebp)
	.stabd 68,0,36
	movl $1,-40(%ebp)
	.stabd 68,0,37
	pushl $-1
	pushl -48(%ebp)
	movl -44(%ebp),%eax
	addl $-4,%eax
	movl %eax,-64(%ebp)
	pushl -64(%ebp)
	call _dsmult
LBE3:
	addl $12,%esp
L15:
	.stabd 68,0,39
	cmpl $_xstack,_xsp
	jbe L16
	addl $-4,_xsp
	movl _xsp,%eax
	movl %eax,-64(%ebp)
	movl $0,(%eax)
	jmp L17
L16:
	call _xserr
L17:
	.stabd 68,0,40
	movl _xsp,%eax
	movl %eax,-48(%ebp)
	.stabd 68,0,44
	movl 12(%ebp),%edi
L18:
	testl %edi,%edi
	je L19
	.stabd 68,0,45
	cmpl $_xstack,_xsp
	jbe L21
	addl $-4,_xsp
	movl _xsp,%eax
	movl %eax,-64(%ebp)
	movl (%edi),%ecx
	movl %ecx,(%eax)
	jmp L22
L21:
	call _xserr
L22:
	.stabd 68,0,44
L20:
	movl 4(%edi),%edi
	jmp L18
L19:
	.stabd 68,0,47
	movl _xsp,%eax
	movl %eax,-52(%ebp)
	.stabd 68,0,48
	cmpl $_xstack,_xsp
	jbe L23
	addl $-4,_xsp
	movl _xsp,%eax
	movl %eax,-64(%ebp)
	movl $0,(%eax)
	jmp L24
L23:
	call _xserr
L24:
	.stabd 68,0,49
	movl -52(%ebp),%eax
	movl %eax,-64(%ebp)
	cmpl $0,(%eax)
	jge L25
LBB4:
	.stabd 68,0,50
	xorl $1,-8(%ebp)
	.stabd 68,0,51
	pushl $-1
	pushl -52(%ebp)
	movl -48(%ebp),%eax
	addl $-4,%eax
	movl %eax,-64(%ebp)
	pushl -64(%ebp)
	call _dsmult
LBE4:
	addl $12,%esp
L25:
	.stabd 68,0,55
	movl -48(%ebp),%eax
	subl -52(%ebp),%eax
	movl %eax,-64(%ebp)
	sarl $2,%eax
	movl %eax,-16(%ebp)
	.stabd 68,0,56
	movl -44(%ebp),%eax
	subl -48(%ebp),%eax
	movl %eax,-64(%ebp)
	sarl $2,%eax
	movl %eax,-64(%ebp)
	subl -16(%ebp),%eax
	movl %eax,-64(%ebp)
	decl %eax
	movl %eax,-12(%ebp)
	.stabd 68,0,57
	cmpl $1,-16(%ebp)
	jne L26
LBB5:
	.stabd 68,0,59
	movl -52(%ebp),%eax
	movl %eax,-64(%ebp)
	pushl (%eax)
	pushl -48(%ebp)
	movl -44(%ebp),%eax
	addl $-4,%eax
	movl %eax,-64(%ebp)
	pushl -64(%ebp)
	call _dsdiv
	movl %eax,-24(%ebp)
	.stabd 68,0,60
	addl $12,%esp
	cmpl $0,-40(%ebp)
	je L27
	.stabd 68,0,61
	negl -24(%ebp)
L27:
	.stabd 68,0,62
	cmpl $0,-8(%ebp)
	je L28
	.stabd 68,0,63
	pushl $-1
	pushl -48(%ebp)
	movl -44(%ebp),%eax
	addl $-4,%eax
	movl %eax,-64(%ebp)
	pushl -64(%ebp)
	call _dsmult
	addl $12,%esp
L28:
	.stabd 68,0,64
	cmpl $0,20(%ebp)
	je L29
	.stabd 68,0,65
	pushl -24(%ebp)
	call _inewint
	movl %eax,-64(%ebp)
	movl 20(%ebp),%edx
	movl %eax,(%edx)
	addl $4,%esp
L29:
	.stabd 68,0,66
	cmpl $0,16(%ebp)
	je L30
	.stabd 68,0,67
	pushl -48(%ebp)
	pushl -44(%ebp)
	call _export
	movl %eax,-64(%ebp)
	movl 16(%ebp),%edx
	movl %eax,(%edx)
	addl $8,%esp
L30:
	.stabd 68,0,68
	movl -60(%ebp),%eax
	movl %eax,_xsp
	.stabd 68,0,69
	jmp L9
LBE5:
L26:
	.stabd 68,0,71
	cmpl $0,-12(%ebp)
	jge L31
	.stabd 68,0,72
	cmpl $0,20(%ebp)
	je L32
	.stabd 68,0,73
	movl 20(%ebp),%eax
	movl %eax,-64(%ebp)
	movl 8(%ebp),%ecx
	movl %ecx,(%eax)
L32:
	.stabd 68,0,74
	cmpl $0,16(%ebp)
	je L33
	.stabd 68,0,75
	pushl $0
	call _inewint
	movl %eax,-64(%ebp)
	movl 16(%ebp),%edx
	movl %eax,(%edx)
	addl $4,%esp
L33:
	.stabd 68,0,76
	movl -60(%ebp),%eax
	movl %eax,_xsp
	.stabd 68,0,77
	jmp L9
L31:
	.stabd 68,0,79
	movl -44(%ebp),%eax
	addl -52(%ebp),%eax
	movl %eax,-64(%ebp)
	movl -48(%ebp),%edx
	addl %edx,%edx
	subl %edx,%eax
	movl %eax,-64(%ebp)
	pushl -64(%ebp)
	call _alloca
	movl %eax,-56(%ebp)
	addl $4,%esp
L34:
	.stabd 68,0,81
	movl -52(%ebp),%eax
	movl %eax,-64(%ebp)
	movl (%eax),%ecx
	incl %ecx
	movl %ecx,-64(%ebp)
	movl $1073741824,%eax
	cltd
	idivl -64(%ebp)
	movl %eax,-64(%ebp)
	movl %eax,-4(%ebp)
	.stabd 68,0,82
	pushl -4(%ebp)
	pushl -48(%ebp)
	movl -44(%ebp),%eax
	addl $-4,%eax
	movl %eax,-64(%ebp)
	pushl -64(%ebp)
	call _dsmult
	.stabd 68,0,83
	pushl -4(%ebp)
	pushl -52(%ebp)
	movl -48(%ebp),%eax
	addl $-4,%eax
	movl %eax,-64(%ebp)
	pushl -64(%ebp)
	call _dsmult
	addl $24,%esp
L35:
	nop
	.stabd 68,0,85
	movl $0,-32(%ebp)
	movl -48(%ebp),%ebx
L36:
	movl -12(%ebp),%eax
	cmpl -32(%ebp),%eax
	jl L37
LBB6:
L39:
	.stabd 68,0,88
	pushl -52(%ebp)
	pushl %ebx
	call _calqhat
	movl %eax,-28(%ebp)
	addl $8,%esp
L40:
	.stabd 68,0,90
	movl -28(%ebp),%eax
	negl %eax
	movl %eax,-64(%ebp)
	pushl -64(%ebp)
	pushl -48(%ebp)
	pushl %ebx
	movl -16(%ebp),%eax
	sall $2,%eax
	movl %eax,-64(%ebp)
	leal (%eax,%ebx),%ecx
	movl %ecx,-64(%ebp)
	pushl -64(%ebp)
	call _mlsb
	movl %eax,-64(%ebp)
	movl %eax,-64(%ebp)
	movl %eax,-36(%ebp)
	addl $16,%esp
	cmpl $0,-64(%ebp)
	jge L41
LBB7:
	.stabd 68,0,91
	pushl -48(%ebp)
	pushl %ebx
	movl -16(%ebp),%eax
	sall $2,%eax
	movl %eax,-64(%ebp)
	leal (%eax,%ebx),%ecx
	movl %ecx,-64(%ebp)
	pushl -64(%ebp)
	call _adback
	.stabd 68,0,92
	decl -28(%ebp)
LBE7:
	addl $12,%esp
L41:
	.stabd 68,0,94
	movl -32(%ebp),%eax
	movl %eax,-64(%ebp)
	movl -64(%ebp),%eax
	sall $2,%eax
	movl %eax,-64(%ebp)
	movl -56(%ebp),%edx
	movl -28(%ebp),%ecx
	movl %ecx,(%eax,%edx)
LBE6:
	.stabd 68,0,85
L38:
	incl -32(%ebp)
	addl $4,%ebx
	jmp L36
L37:
	nop
L42:
	.stabd 68,0,96
	cmpl $0,20(%ebp)
	je L43
LBB8:
	.stabd 68,0,97
	pushl -4(%ebp)
	movl -16(%ebp),%eax
	sall $2,%eax
	movl %eax,-64(%ebp)
	movl -44(%ebp),%eax
	subl -64(%ebp),%eax
	movl %eax,-64(%ebp)
	pushl -64(%ebp)
	movl -44(%ebp),%eax
	addl $-4,%eax
	movl %eax,-64(%ebp)
	pushl -64(%ebp)
	call _dsdiv
	.stabd 68,0,98
	addl $12,%esp
	cmpl $0,-40(%ebp)
	je L44
	pushl $-1
	movl -16(%ebp),%eax
	sall $2,%eax
	movl %eax,-64(%ebp)
	movl -44(%ebp),%eax
	subl -64(%ebp),%eax
	movl %eax,-64(%ebp)
	pushl -64(%ebp)
	movl -44(%ebp),%eax
	addl $-4,%eax
	movl %eax,-64(%ebp)
	pushl -64(%ebp)
	call _dsmult
	addl $12,%esp
L44:
	.stabd 68,0,99
	movl -16(%ebp),%eax
	sall $2,%eax
	movl %eax,-64(%ebp)
	movl -44(%ebp),%eax
	subl -64(%ebp),%eax
	movl %eax,-64(%ebp)
	pushl -64(%ebp)
	pushl -44(%ebp)
	call _export
	movl %eax,-64(%ebp)
	movl 20(%ebp),%edx
	movl %eax,(%edx)
LBE8:
	addl $8,%esp
L43:
	.stabd 68,0,101
	cmpl $0,16(%ebp)
	je L45
	.stabd 68,0,102
	cmpl $0,-8(%ebp)
	je L46
	.stabd 68,0,103
	pushl $-1
	pushl -56(%ebp)
	movl -12(%ebp),%eax
	sall $2,%eax
	movl %eax,-64(%ebp)
	addl -56(%ebp),%eax
	movl %eax,-64(%ebp)
	pushl -64(%ebp)
	call _dsmult
	addl $12,%esp
L46:
	.stabd 68,0,104
	pushl -56(%ebp)
	movl -12(%ebp),%eax
	sall $2,%eax
	movl %eax,-64(%ebp)
	addl -56(%ebp),%eax
	movl %eax,-64(%ebp)
	addl $4,%eax
	movl %eax,-64(%ebp)
	pushl -64(%ebp)
	call _export
	movl %eax,-64(%ebp)
	movl 16(%ebp),%edx
	movl %eax,(%edx)
	addl $8,%esp
L45:
	.stabd 68,0,106
	movl -60(%ebp),%eax
	movl %eax,_xsp
LBE2:
	.stabd 68,0,107
L9:
	leal -76(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	leave
	ret
.stabs "argent:T33=s4val:31,0,32;;",128,0,0,0
.stabs "nament:T34=s8val:31,0,32;atm:31,32,32;;",128,0,0,0
.stabs "Vectorl:T35=s4vectorl:36=ar1;0;0;3,0,32;;",128,0,0,0
.stabs "Vectorw:T37=s2vectorw:38=ar1;0;0;6,0,16;;",128,0,0,0
.stabs "Vectorb:T39=s1vectorb:40=ar1;0;0;2,0,8;;",128,0,0,0
.stabs "Vector:T41=s4vector:42=ar1;0;0;31,0,32;;",128,0,0,0
.stabs "Hunk:T43=s4hunk:44=ar1;0;0;31,0,32;;",128,0,0,0
.stabs "bfun:T45=s20start:46=*47=f31,0,32;discipline:31,32,32;\\",128,0,0,0
.stabs "language:31,64,32;params:31,96,32;loctab:31,128,32;;",128,0,0,0
.stabs "array:T48=s20accfun:31,0,32;aux:31,32,32;\\",128,0,0,0
.stabs "data:16,64,32;length:31,96,32;delta:31,128,32;;",128,0,0,0
.stabs "sdot:T49=s8I:1,0,32;CDR:31,32,32;;",128,0,0,0
.stabs "dtpr:T50=s8cdr:31,0,32;car:31,32,32;;",128,0,0,0
.stabs "lispobj:T32=u20a:51=xsatom:,0,160;p:52=*17,0,32;\\",128,0,0,0
.stabs "d:50,0,64;i:3,0,32;j:53=*3,0,32;\\",128,0,0,0
.stabs "r:13,0,64;f:46,0,32;ar:48,0,160;\\",128,0,0,0
.stabs "s:49,0,64;c:2,0,8;l:31,0,32;\\",128,0,0,0
.stabs "bcd:45,0,160;h:43,0,32;v:41,0,32;\\",128,0,0,0
.stabs "vb:39,0,8;vw:37,0,16;vl:35,0,32;;",128,0,0,0
.stabs "atom:T51=s20clb:31,0,32;plist:31,32,32;\\",128,0,0,0
.stabs "fnbnd:31,64,32;hshlnk:54=*51,96,32;pname:16,128,32;;",128,0,0,0
.stabs "divbig:F1",36,0,0,_divbig
.stabs "dividend:p31",160,0,0,8
.stabs "divisor:p31",160,0,0,12
.stabs "quotient:p55=*31",160,0,0,16
.stabs "remainder:p55",160,0,0,20
.stabs "ujp:r56=*1",64,0,0,3
.stabs "vip:r56",64,0,0,6
.stabs "d:1",128,0,0,-4
.stabs "negflag:1",128,0,0,-8
.stabs "m:1",128,0,0,-12
.stabs "n:1",128,0,0,-16
.stabs "carry:1",128,0,0,-20
.stabs "rem:1",128,0,0,-24
.stabs "qhat:1",128,0,0,-28
.stabs "j:1",128,0,0,-32
.stabs "borrow:1",128,0,0,-36
.stabs "negrem:1",128,0,0,-40
.stabs "utop:53",128,0,0,-44
.stabs "ubot:53",128,0,0,-48
.stabs "vbot:53",128,0,0,-52
.stabs "qbot:53",128,0,0,-56
.stabs "work:r31",64,0,0,7
.stabs "oxsp:53",128,0,0,-60
.stabn 192,0,0,LBB2
.stabn 192,0,0,LBB3
.stabn 224,0,0,LBE3
.stabn 192,0,0,LBB4
.stabn 224,0,0,LBE4
.stabn 192,0,0,LBB5
.stabn 224,0,0,LBE5
.stabn 192,0,0,LBB6
.stabn 192,0,0,LBB7
.stabn 224,0,0,LBE7
.stabn 224,0,0,LBE6
.stabn 192,0,0,LBB8
.stabn 224,0,0,LBE8
.stabn 224,0,0,LBE2
	.align 2
.globl _export
_export:
	.stabd 68,0,188
	pushl %ebp
	movl %esp,%ebp
	subl $4,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
	movl 8(%ebp),%ebx
	movl 12(%ebp),%esi
LBB9:
	.stabd 68,0,192
	addl $-4,%ebx
	.stabd 68,0,194
L48:
	cmpl %esi,%ebx
	jbe L49
	.stabd 68,0,196
	cmpl $0,(%esi)
	jne L50
	.stabd 68,0,197
	addl $4,%esi
	jmp L51
L50:
	.stabd 68,0,198
	cmpl $-1,(%esi)
	jne L52
	.stabd 68,0,199
	addl $4,%esi
	movl %esi,%eax
	orl $-1073741824,(%eax)
	jmp L53
L52:
	.stabd 68,0,200
	jmp L49
L53:
L51:
	jmp L48
L49:
	.stabd 68,0,202
	cmpl %esi,%ebx
	jne L54
	pushl (%esi)
	call _inewint
	jmp L47
L54:
	.stabd 68,0,203
	call _newsdot
	movl %eax,%edi
	movl %edi,-4(%ebp)
	.stabd 68,0,204
	movl _np,%eax
	movl %edi,(%eax)
	addl $4,_np
	.stabd 68,0,205
	movl (%ebx),%edx
	movl %edx,(%edi)
	addl $-4,%ebx
	.stabd 68,0,206
L55:
	cmpl %ebx,%esi
	ja L56
	.stabd 68,0,207
	call _newdot
	movl %eax,%eax
	movl %eax,%eax
	movl %eax,4(%edi)
	movl %eax,%edi
	.stabd 68,0,208
	movl (%ebx),%edx
	movl %edx,(%edi)
	addl $-4,%ebx
	jmp L55
L56:
	.stabd 68,0,210
	movl $0,4(%edi)
	.stabd 68,0,211
	addl $-4,_np
	.stabd 68,0,212
	movl -4(%ebp),%eax
	jmp L47
LBE9:
	.stabd 68,0,213
L47:
	leal -16(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	leave
	ret
.stabs "export:F31",36,0,0,_export
.stabs "top:p53",160,0,0,8
.stabs "bot:p53",160,0,0,12
.stabs "top:r53",64,0,0,3
.stabs "bot:r53",64,0,0,6
.stabs "p:r31",64,0,0,7
.stabs "result:31",128,0,0,-4
.stabn 192,0,0,LBB9
.stabn 224,0,0,LBE9
	.align 2
.globl _Ihau
_Ihau:
	.stabd 68,0,219
	pushl %ebp
	movl %esp,%ebp
	movl 8(%ebp),%edx
LBB10:
	.stabd 68,0,221
	cmpl $-2147483648,%edx
	jne L58
	.stabd 68,0,222
	movl $32,%eax
	jmp L57
L58:
	.stabd 68,0,223
	testl %edx,%edx
	jge L59
	.stabd 68,0,224
	negl %edx
L59:
	nop
	.stabd 68,0,225
	xorl %ecx,%ecx
L60:
	testl %edx,%edx
	je L61
	.stabd 68,0,226
	testl %edx,%edx
	jge L63
	incl %edx
L63:
	sarl $1,%edx
	.stabd 68,0,225
L62:
	incl %ecx
	jmp L60
L61:
	.stabd 68,0,227
	movl %ecx,%eax
	jmp L57
LBE10:
	.stabd 68,0,228
L57:
	leave
	ret
.stabs "Ihau:F1",36,0,0,_Ihau
.stabs "fix:p1",160,0,0,8
.stabs "fix:r1",64,0,0,2
.stabs "count:r1",64,0,0,1
.stabn 192,0,0,LBB10
.stabn 224,0,0,LBE10
LC1:
	.ascii "Haulong: bad argument\0"
	.align 2
.globl _Lhau
_Lhau:
	.stabd 68,0,231
	pushl %ebp
	movl %esp,%ebp
	subl $4,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
LBB11:
	.stabd 68,0,237
	movl _lbot,%eax
	movl (%eax),%esi
L65:
	.stabd 68,0,239
	movl %esi,%eax
	sarl $9,%eax
	movb _typetable+1(%eax),%al
	cmpb $2,%al
	je L67
	cmpb $9,%al
	je L68
	jmp L72
L67:
	.stabd 68,0,241
	pushl (%esi)
	call _Ihau
	movl %eax,%ebx
	.stabd 68,0,242
	addl $4,%esp
	jmp L66
L68:
	.stabd 68,0,244
	call _Labsval
	movl %eax,%esi
	.stabd 68,0,245
	xorl %ebx,%ebx
L69:
	cmpl $0,4(%esi)
	je L70
	.stabd 68,0,246
	addl $30,%ebx
	.stabd 68,0,245
L71:
	movl 4(%esi),%esi
	jmp L69
L70:
	.stabd 68,0,247
	pushl (%esi)
	call _Ihau
	movl %eax,%eax
	leal (%eax,%ebx),%ebx
	.stabd 68,0,248
	addl $4,%esp
	jmp L66
L72:
	.stabd 68,0,251
	pushl %esi
	pushl $997
	pushl $1
	pushl $_nilatom
	pushl $LC1
	pushl _lispsys+372
	call _errorh1
	movl %eax,%esi
	.stabd 68,0,252
	addl $24,%esp
	jmp L65
L66:
	.stabd 68,0,254
	pushl %ebx
	call _inewint
	jmp L64
LBE11:
	.stabd 68,0,255
L64:
	leal -16(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	leave
	ret
.stabs "Lhau:F31",36,0,0,_Lhau
.stabs "count:r1",64,0,0,3
.stabs "handy:r31",64,0,0,6
.stabs "dum1:r1",64,0,0,7
.stabs "dum2:1",128,0,0,-4
.stabn 192,0,0,LBB11
.stabn 224,0,0,LBE11
LC2:
	.ascii "Haipart: bad first argument\0"
LC3:
	.ascii "Haipart: 2nd arg not int\0"
LC4:
	.ascii "Internal error in haipart #1\0"
	.align 2
.globl _Lhaipar
_Lhaipar:
	.stabd 68,0,258
	pushl %ebp
	movl %esp,%ebp
	subl $12,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
LBB12:
	.stabd 68,0,261
	movl _xsp,%edi
	addl $-4,%edi
	.stabd 68,0,266
	movl _lbot,%eax
	movl (%eax),%ebx
L75:
	.stabd 68,0,269
	movl %ebx,%eax
	sarl $9,%eax
	movb _typetable+1(%eax),%al
	cmpb $2,%al
	je L77
	cmpb $9,%al
	je L80
	jmp L86
LBB13:
L77:
	.stabd 68,0,271
	cmpl $_xstack,_xsp
	jbe L78
	addl $-4,_xsp
	movl _xsp,%eax
	movl (%ebx),%ecx
	movl %ecx,(%eax)
	jmp L79
L78:
	call _xserr
L79:
	.stabd 68,0,272
	jmp L76
L80:
	nop
	.stabd 68,0,274
L81:
	testl %ebx,%ebx
	je L82
	.stabd 68,0,275
	cmpl $_xstack,_xsp
	jbe L84
	addl $-4,_xsp
	movl _xsp,%eax
	movl (%ebx),%ecx
	movl %ecx,(%eax)
	jmp L85
L84:
	call _xserr
L85:
	.stabd 68,0,274
L83:
	movl 4(%ebx),%ebx
	jmp L81
L82:
	.stabd 68,0,276
	jmp L76
L86:
	.stabd 68,0,279
	pushl %ebx
	pushl $996
	pushl $1
	pushl $_nilatom
	pushl $LC2
	pushl _lispsys+372
	call _errorh1
	movl %eax,%ebx
	.stabd 68,0,280
	addl $24,%esp
	jmp L75
LBE13:
L76:
	.stabd 68,0,282
	movl _xsp,%ecx
	movl %ecx,-8(%ebp)
	.stabd 68,0,283
	cmpl $0,(%ecx)
	jge L88
LBB14:
	.stabd 68,0,284
	cmpl $_xstack,_xsp
	jbe L89
	addl $-4,_xsp
	movl _xsp,%eax
	movl $0,(%eax)
	jmp L90
L89:
	call _xserr
L90:
	.stabd 68,0,285
	pushl $-1
	pushl -8(%ebp)
	pushl %edi
	call _dsmult
	.stabd 68,0,286
	movl -8(%ebp),%ecx
	leal -4(%ecx),%edx
	movl %edx,-8(%ebp)
LBE14:
	addl $12,%esp
L88:
	nop
	.stabd 68,0,288
L91:
	movl -8(%ebp),%ecx
	cmpl $0,(%ecx)
	jne L92
	cmpl -8(%ebp),%edi
	jbe L92
L93:
	movl -8(%ebp),%ecx
	leal 4(%ecx),%edx
	movl %edx,-8(%ebp)
	jmp L91
L92:
	.stabd 68,0,290
	movl -8(%ebp),%ecx
	pushl (%ecx)
	call _Ihau
	movl %eax,%eax
	movl %edi,%ecx
	subl -8(%ebp),%ecx
	movl %ecx,-12(%ebp)
	sarl $2,%ecx
	movl %ecx,-12(%ebp)
	imull $30,-12(%ebp),%ecx
	movl %ecx,-12(%ebp)
	addl %eax,%ecx
	movl %ecx,-4(%ebp)
	.stabd 68,0,292
	movl _lbot,%eax
	addl $4,%eax
	movl (%eax),%ebx
	.stabd 68,0,293
	addl $4,%esp
L94:
	movl %ebx,%eax
	sarl $9,%eax
	cmpb $2,_typetable+1(%eax)
	je L95
	.stabd 68,0,295
	pushl %ebx
	pushl $995
	pushl $1
	pushl $_nilatom
	pushl $LC3
	pushl _lispsys+372
	call _errorh1
	movl %eax,%ebx
	addl $24,%esp
	jmp L94
L95:
	.stabd 68,0,296
	movl (%ebx),%esi
	.stabd 68,0,297
	cmpl -4(%ebp),%esi
	jge L97
	movl %esi,%eax
	negl %eax
	cmpl -4(%ebp),%eax
	jge L97
	jmp L96
L97:
	.stabd 68,0,298
	jmp L98
L96:
	.stabd 68,0,299
	testl %esi,%esi
	jne L99
	pushl $0
	call _inewint
	jmp L74
L99:
	.stabd 68,0,300
	testl %esi,%esi
	jle L100
LBB15:
	.stabd 68,0,303
	cmpl $_xstack,_xsp
	jbe L101
	addl $-4,_xsp
	movl _xsp,%eax
	movl $0,(%eax)
	jmp L102
L101:
	call _xserr
L102:
	.stabd 68,0,304
	movl -4(%ebp),%ecx
	subl %esi,%ecx
	movl %ecx,%esi
	.stabd 68,0,305
L103:
	cmpl $29,%esi
	jle L104
	.stabd 68,0,306
	addl $-4,%edi
	.stabd 68,0,305
L105:
	addl $-30,%esi
	jmp L103
L104:
	.stabd 68,0,307
	cmpl -8(%ebp),%edi
	jae L106
	.stabd 68,0,308
	pushl $0
	pushl $LC4
	call _error
	addl $8,%esp
L106:
	.stabd 68,0,309
	movl $1,%eax
	movl %esi,%ecx
	sall %cl,%eax
	pushl %eax
	pushl -8(%ebp)
	pushl %edi
	call _dsdiv
LBE15:
	addl $12,%esp
	jmp L107
L100:
LBB16:
	.stabd 68,0,313
	cmpl $_xstack,_xsp
	jbe L108
	addl $-4,_xsp
	movl _xsp,%eax
	movl $0,(%eax)
	jmp L109
L108:
	call _xserr
L109:
	.stabd 68,0,314
	leal 4(%edi),%ecx
	movl %ecx,-8(%ebp)
	.stabd 68,0,315
L110:
	testl %esi,%esi
	jg L111
	.stabd 68,0,316
	movl -8(%ebp),%ecx
	leal -4(%ecx),%edx
	movl %edx,-8(%ebp)
	.stabd 68,0,315
L112:
	addl $30,%esi
	jmp L110
L111:
	.stabd 68,0,317
	movl $30,%ecx
	subl %esi,%ecx
	movl %ecx,%esi
	.stabd 68,0,318
	movl -8(%ebp),%eax
	movl $-1,%edx
	sall %cl,%edx
	movl %edx,-12(%ebp)
	notl %edx
	movl %edx,-12(%ebp)
	andl %edx,(%eax)
LBE16:
L107:
	nop
L98:
	.stabd 68,0,321
	pushl -8(%ebp)
	leal 4(%edi),%eax
	pushl %eax
	call _export
	jmp L74
LBE12:
	.stabd 68,0,322
L74:
	leal -24(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	leave
	ret
.stabs "Lhaipar:F31",36,0,0,_Lhaipar
.stabs "work:r31",64,0,0,3
.stabs "n:r1",64,0,0,6
.stabs "top:r56",64,0,0,7
.stabs "bot:56",128,0,0,-8
.stabs "mylen:1",128,0,0,-4
.stabn 192,0,0,LBB12
.stabn 192,0,0,LBB13
.stabn 224,0,0,LBE13
.stabn 192,0,0,LBB14
.stabn 224,0,0,LBE14
.stabn 192,0,0,LBB15
.stabn 224,0,0,LBE15
.stabn 192,0,0,LBB16
.stabn 224,0,0,LBE16
.stabn 224,0,0,LBE12
LC5:
	.ascii "Bignum-shift: 2nd arg not int\0"
LC6:
	.ascii "Bignum-shift: bad bignum argument\0"
	.align 2
.globl _Ibiglsh
_Ibiglsh:
	.stabd 68,0,328
	pushl %ebp
	movl %esp,%ebp
	subl $28,%esp
	pushl %edi
	pushl %esi
	pushl %ebx
LBB17:
	.stabd 68,0,331
	movl _xsp,%edi
	addl $-4,%edi
	.stabd 68,0,333
	movl $0,-8(%ebp)
	movl $0,-12(%ebp)
	movl $0,-16(%ebp)
	.stabd 68,0,337
	movl 12(%ebp),%ebx
	.stabd 68,0,338
L114:
	movl %ebx,%eax
	sarl $9,%eax
	cmpb $2,_typetable+1(%eax)
	je L115
	.stabd 68,0,340
	pushl %ebx
	pushl $995
	pushl $1
	pushl $_nilatom
	pushl $LC5
	pushl _lispsys+372
	call _errorh1
	movl %eax,%ebx
	addl $24,%esp
	jmp L114
L115:
	.stabd 68,0,341
	movl (%ebx),%esi
	.stabd 68,0,342
	testl %esi,%esi
	jne L116
	movl 8(%ebp),%eax
	jmp L113
L116:
	nop
	.stabd 68,0,343
L117:
	cmpl $29,%esi
	jle L118
LBB18:
	.stabd 68,0,346
	cmpl $_xstack,_xsp
	jbe L120
	addl $-4,_xsp
	movl _xsp,%eax
	movl $0,(%eax)
	jmp L121
L120:
	call _xserr
L121:
LBE18:
	.stabd 68,0,343
L119:
	addl $-30,%esi
	jmp L117
L118:
	.stabd 68,0,349
	movl 8(%ebp),%ebx
L122:
	.stabd 68,0,351
	movl %ebx,%eax
	sarl $9,%eax
	movb _typetable+1(%eax),%al
	cmpb $2,%al
	je L124
	cmpb $9,%al
	je L127
	jmp L133
LBB19:
L124:
	.stabd 68,0,353
	cmpl $_xstack,_xsp
	jbe L125
	addl $-4,_xsp
	movl _xsp,%eax
	movl (%ebx),%ecx
	movl %ecx,(%eax)
	jmp L126
L125:
	call _xserr
L126:
	.stabd 68,0,354
	jmp L123
L127:
	nop
	.stabd 68,0,356
L128:
	testl %ebx,%ebx
	je L129
	.stabd 68,0,357
	cmpl $_xstack,_xsp
	jbe L131
	addl $-4,_xsp
	movl _xsp,%eax
	movl (%ebx),%ecx
	movl %ecx,(%eax)
	jmp L132
L131:
	call _xserr
L132:
	.stabd 68,0,356
L130:
	movl 4(%ebx),%ebx
	jmp L128
L129:
	.stabd 68,0,358
	jmp L123
L133:
	.stabd 68,0,361
	pushl %ebx
	pushl $996
	pushl $1
	pushl $_nilatom
	pushl $LC6
	pushl _lispsys+372
	call _errorh1
	movl %eax,%ebx
	.stabd 68,0,362
	addl $24,%esp
	jmp L122
LBE19:
L123:
	.stabd 68,0,364
	movl _xsp,%ecx
	movl %ecx,-24(%ebp)
	.stabd 68,0,365
	testl %esi,%esi
	jl L135
LBB20:
	.stabd 68,0,366
	cmpl $_xstack,_xsp
	jbe L136
	addl $-4,_xsp
	movl _xsp,%eax
	movl $0,(%eax)
	jmp L137
L136:
	call _xserr
L137:
	.stabd 68,0,367
	movl -24(%ebp),%ecx
	leal -4(%ecx),%edx
	movl %edx,-24(%ebp)
	.stabd 68,0,368
	movl $1,%eax
	movl %esi,%ecx
	sall %cl,%eax
	pushl %eax
	pushl -24(%ebp)
	pushl %edi
	call _dsmult
LBE20:
	addl $12,%esp
	jmp L138
L135:
LBB21:
	.stabd 68,0,374
	negl %esi
L139:
	cmpl $30,%esi
	jle L140
	.stabd 68,0,375
	cmpl $0,-8(%ebp)
	je L142
	orl $1,-12(%ebp)
L142:
	.stabd 68,0,376
	movl -16(%ebp),%ecx
	movl %ecx,-8(%ebp)
	.stabd 68,0,377
	cmpl -24(%ebp),%edi
	jbe L143
	.stabd 68,0,378
	movl (%edi),%ecx
	movl %ecx,-16(%ebp)
	.stabd 68,0,379
	addl $-4,%edi
	jmp L144
L143:
	.stabd 68,0,381
	movl (%edi),%ecx
	movl %ecx,-16(%ebp)
	.stabd 68,0,382
	movl %edi,%eax
	sarl $30,(%eax)
L144:
	.stabd 68,0,374
L141:
	addl $-30,%esi
	jmp L139
L140:
	.stabd 68,0,385
	testl %esi,%esi
	jle L145
LBB22:
	.stabd 68,0,386
	cmpl $0,-8(%ebp)
	je L146
	orl $1,-12(%ebp)
L146:
	.stabd 68,0,387
	movl -16(%ebp),%ecx
	movl %ecx,-8(%ebp)
	.stabd 68,0,388
	movl $-1,%eax
	movl %esi,%ecx
	sall %cl,%eax
	pushl %eax
	movl %esi,%eax
	negl %eax
	pushl %eax
	pushl -24(%ebp)
	pushl %edi
	call _dsrsh
	movl %eax,-16(%ebp)
LBE22:
	addl $16,%esp
L145:
	.stabd 68,0,390
	cmpl $_xstack,_xsp
	jbe L147
	addl $-4,_xsp
	movl _xsp,%eax
	movl $0,(%eax)
	jmp L148
L147:
	call _xserr
L148:
	.stabd 68,0,391
	cmpl $1,16(%ebp)
	jne L149
LBB23:
	.stabd 68,0,392
	movl (%edi),%eax
	andl $1,%eax
	testl %eax,%eax
	jne L150
	movl -16(%ebp),%eax
	orl -8(%ebp),%eax
	orl -12(%ebp),%eax
	testl %eax,%eax
	je L150
	.stabd 68,0,393
	pushl -24(%ebp)
	pushl %edi
	call _dsadd1
	addl $8,%esp
L150:
LBE23:
	jmp L151
L149:
	.stabd 68,0,394
	cmpl $2,16(%ebp)
	jne L152
LBB24:
	.stabd 68,0,397
	testl %esi,%esi
	jne L153
	movl $30,%esi
L153:
	.stabd 68,0,398
	movl %esi,%ecx
	decl %ecx
	movl %ecx,-28(%ebp)
	movl $1,%edx
	sall %cl,%edx
	movl %edx,-20(%ebp)
	.stabd 68,0,399
	movl -16(%ebp),%eax
	andl -20(%ebp),%eax
	testl %eax,%eax
	jne L154
	jmp L155
L154:
	.stabd 68,0,400
	decl -20(%ebp)
	.stabd 68,0,404
	movl -16(%ebp),%eax
	andl -20(%ebp),%eax
	testl %eax,%eax
	jne L156
	cmpl $0,-8(%ebp)
	jne L156
	cmpl $0,-12(%ebp)
	jne L156
	movl (%edi),%eax
	andl $1,%eax
	testl %eax,%eax
	jne L156
	jmp L155
L156:
	.stabd 68,0,405
	pushl -24(%ebp)
	pushl %edi
	call _dsadd1
LBE24:
	addl $8,%esp
L152:
L151:
	nop
L155:
LBE21:
L138:
	.stabd 68,0,409
	pushl -24(%ebp)
	leal 4(%edi),%eax
	pushl %eax
	call _export
	movl %eax,%ebx
	.stabd 68,0,410
	movl %ebx,%eax
	jmp L113
LBE17:
	.stabd 68,0,411
L113:
	leal -40(%ebp),%esp
	popl %ebx
	popl %esi
	popl %edi
	leave
	ret
.stabs "Ibiglsh:F31",36,0,0,_Ibiglsh
.stabs "bignum:p31",160,0,0,8
.stabs "count:p31",160,0,0,12
.stabs "mode:p1",160,0,0,16
.stabs "work:r31",64,0,0,3
.stabs "n:r1",64,0,0,6
.stabs "top:r56",64,0,0,7
.stabs "bot:56",128,0,0,-24
.stabs "mylen:1",128,0,0,-4
.stabs "guard:1",128,0,0,-8
.stabs "sticky:1",128,0,0,-12
.stabs "round:1",128,0,0,-16
.stabn 192,0,0,LBB17
.stabn 192,0,0,LBB18
.stabn 224,0,0,LBE18
.stabn 192,0,0,LBB19
.stabn 224,0,0,LBE19
.stabn 192,0,0,LBB20
.stabn 224,0,0,LBE20
.stabn 192,0,0,LBB21
.stabn 192,0,0,LBB22
.stabn 224,0,0,LBE22
.stabn 192,0,0,LBB23
.stabn 224,0,0,LBE23
.stabs "mask:1",128,0,0,-20
.stabn 192,0,0,LBB24
.stabn 224,0,0,LBE24
.stabn 224,0,0,LBE21
.stabn 224,0,0,LBE17
LC7:
	.ascii "sticky-bignum-leftshift\0"
	.align 2
.globl _Lsbiglsh
_Lsbiglsh:
	.stabd 68,0,430
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
LBB25:
	.stabd 68,0,431
	movl _lbot,%ebx
	.stabd 68,0,432
	movl _np,%eax
	subl _lbot,%eax
	sarl $2,%eax
	cmpl $2,%eax
	je L158
	pushl $LC7
	call _argerr
	addl $4,%esp
L158:
	.stabd 68,0,433
	pushl $1
	movl _lbot,%eax
	addl $4,%eax
	pushl (%eax)
	movl _lbot,%eax
	pushl (%eax)
	call _Ibiglsh
	jmp L157
LBE25:
	.stabd 68,0,434
L157:
	leal -4(%ebp),%esp
	popl %ebx
	leave
	ret
.stabs "Lsbiglsh:F31",36,0,0,_Lsbiglsh
.stabs "mylbot:r57=*33",64,0,0,3
.stabn 192,0,0,LBB25
.stabn 224,0,0,LBE25
LC8:
	.ascii "bignum-leftshift\0"
	.align 2
.globl _Lbiglsh
_Lbiglsh:
	.stabd 68,0,437
	pushl %ebp
	movl %esp,%ebp
	pushl %ebx
LBB26:
	.stabd 68,0,438
	movl _lbot,%ebx
	.stabd 68,0,439
	movl _np,%eax
	subl _lbot,%eax
	sarl $2,%eax
	cmpl $2,%eax
	je L160
	pushl $LC8
	call _argerr
	addl $4,%esp
L160:
	.stabd 68,0,440
	pushl $2
	movl _lbot,%eax
	addl $4,%eax
	pushl (%eax)
	movl _lbot,%eax
	pushl (%eax)
	call _Ibiglsh
	jmp L159
LBE26:
	.stabd 68,0,441
L159:
	leal -4(%ebp),%esp
	popl %ebx
	leave
	ret
.stabs "Lbiglsh:F31",36,0,0,_Lbiglsh
.stabs "mylbot:r57",64,0,0,3
.stabn 192,0,0,LBB26
.stabn 224,0,0,LBE26
LC9:
	.ascii "%lx\0"
	.align 2
.globl _HackHex
_HackHex:
	.stabd 68,0,445
	pushl %ebp
	movl %esp,%ebp
	subl $32,%esp
	pushl %ebx
LBB27:
	.stabd 68,0,446
	movl _lbot,%ebx
	.stabd 68,0,448
	movl _lbot,%eax
	movl (%eax),%eax
	pushl (%eax)
	pushl $LC9
	leal -32(%ebp),%eax
	pushl %eax
	call _sprintf
	.stabd 68,0,449
	leal -32(%ebp),%eax
	pushl %eax
	call _inewstr
	jmp L161
LBE27:
	.stabd 68,0,450
L161:
	leal -36(%ebp),%esp
	popl %ebx
	leave
	ret
.stabs "HackHex:F31",36,0,0,_HackHex
.stabs "mylbot:r57",64,0,0,3
.stabs "buf:58=ar1;0;31;2",128,0,0,-32
.stabn 192,0,0,LBB27
.stabn 224,0,0,LBE27
