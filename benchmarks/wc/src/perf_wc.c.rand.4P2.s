	.text
	.file	"perf_wc.c"
	.globl	my_filbuf               # -- Begin function my_filbuf
	.p2align	4, 0x90
	.type	my_filbuf,@function
my_filbuf:                              # @my_filbuf
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rcx
	movabsq	$buffer, %rdi
	movl	$1, %esi
	movl	$8192, %edx             # imm = 0x2000
	callq	fread
	movl	%eax, bufcount
	movl	$0, bufcurrent
	movq	-8(%rbp), %rdi
	callq	feof
	cmpl	$0, %eax
	je	.LBB0_2
# %bb.1:                                # %if.then
	movl	bufcount, %eax
	movl	%eax, %ecx
	addl	$1, %ecx
	movl	%ecx, bufcount
	cltq
	movb	$-1, buffer(,%rax)
.LBB0_2:                                # %if.end
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end0:
	.size	my_filbuf, .Lfunc_end0-my_filbuf
	.cfi_endproc
                                        # -- End function
	.globl	main                    # -- Begin function main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movl	$0, -36(%rbp)
	movl	%edi, -4(%rbp)
	movq	%rsi, -24(%rbp)
.LBB1_1:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	cmpl	$1, -4(%rbp)
	jle	.LBB1_3
# %bb.2:                                # %land.rhs
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movsbl	(%rax), %eax
	cmpl	$45, %eax
	sete	%al
.LBB1_3:                                # %land.end
                                        #   in Loop: Header=BB1_1 Depth=1
	testb	$1, %al
	jne	.LBB1_4
	jmp	.LBB1_11
.LBB1_4:                                # %while.body
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movsbl	1(%rax), %eax
	movl	%eax, %ecx
	subl	$99, %ecx
	je	.LBB1_7
	jmp	.LBB1_5
.LBB1_5:                                # %while.body
                                        #   in Loop: Header=BB1_1 Depth=1
	movl	%eax, %ecx
	subl	$108, %ecx
	je	.LBB1_7
	jmp	.LBB1_6
.LBB1_6:                                # %while.body
                                        #   in Loop: Header=BB1_1 Depth=1
	subl	$119, %eax
	jne	.LBB1_8
	jmp	.LBB1_7
.LBB1_7:                                # %sw.bb
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	addq	$1, %rax
	movq	%rax, wd
	jmp	.LBB1_10
.LBB1_8:                                # %sw.default
	jmp	.LBB1_9
.LBB1_9:                                # %usage
	movq	stderr, %rdi
	movabsq	$.L.str, %rsi
	movb	$0, %al
	callq	fprintf
	movl	$1, %edi
	callq	exit
.LBB1_10:                               # %sw.epilog
                                        #   in Loop: Header=BB1_1 Depth=1
	movl	-4(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -4(%rbp)
	movq	-24(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB1_1
.LBB1_11:                               # %while.end
	movl	$1, -12(%rbp)
	movq	stdin, %rax
	movq	%rax, -32(%rbp)
.LBB1_12:                               # %do.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_16 Depth 2
	cmpl	$1, -4(%rbp)
	jle	.LBB1_15
# %bb.13:                               # %land.lhs.true
                                        #   in Loop: Header=BB1_12 Depth=1
	movq	-24(%rbp), %rax
	movslq	-12(%rbp), %rcx
	movq	(%rax,%rcx,8), %rdi
	movabsq	$.L.str.1, %rsi
	callq	fopen
	movq	%rax, -32(%rbp)
	cmpq	$0, %rax
	jne	.LBB1_15
# %bb.14:                               # %if.then
                                        #   in Loop: Header=BB1_12 Depth=1
	movq	-24(%rbp), %rax
	movslq	-12(%rbp), %rcx
	movq	(%rax,%rcx,8), %rdi
	callq	perror
	jmp	.LBB1_45
.LBB1_15:                               # %if.end
                                        #   in Loop: Header=BB1_12 Depth=1
	movq	$0, linect
	movq	$0, wordct
	movq	$0, charct
	movl	$0, -16(%rbp)
	movq	$0, last_charct
.LBB1_16:                               # %for.cond
                                        #   Parent Loop BB1_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	bufcurrent, %eax
	cmpl	bufcount, %eax
	jl	.LBB1_18
# %bb.17:                               # %cond.true
                                        #   in Loop: Header=BB1_16 Depth=2
	movq	-32(%rbp), %rdi
	callq	my_filbuf
	movl	bufcurrent, %eax
	movl	%eax, %ecx
	addl	$1, %ecx
	movl	%ecx, bufcurrent
	cltq
	movsbl	buffer(,%rax), %eax
	jmp	.LBB1_19
.LBB1_18:                               # %cond.false
                                        #   in Loop: Header=BB1_16 Depth=2
	movl	bufcurrent, %eax
	movl	%eax, %ecx
	addl	$1, %ecx
	movl	%ecx, bufcurrent
	cltq
	movsbl	buffer(,%rax), %eax
.LBB1_19:                               # %cond.end
                                        #   in Loop: Header=BB1_16 Depth=2
	movl	%eax, -8(%rbp)
	cmpl	$-1, -8(%rbp)
	jne	.LBB1_21
# %bb.20:                               # %if.then26
                                        #   in Loop: Header=BB1_12 Depth=1
	jmp	.LBB1_41
.LBB1_21:                               # %if.end27
                                        #   in Loop: Header=BB1_16 Depth=2
	movq	charct, %rax
	addq	$1, %rax
	movq	%rax, charct
	movq	last_charct, %rax
	addq	$1, %rax
	movq	%rax, last_charct
	movl	$32, %eax
	cmpl	-8(%rbp), %eax
	jge	.LBB1_30
# %bb.22:                               # %land.lhs.true32
                                        #   in Loop: Header=BB1_16 Depth=2
	cmpl	$127, -8(%rbp)
	jge	.LBB1_30
# %bb.23:                               # %if.then35
                                        #   in Loop: Header=BB1_16 Depth=2
	cmpl	$0, -16(%rbp)
	jne	.LBB1_28
# %bb.24:                               # %if.then36
                                        #   in Loop: Header=BB1_16 Depth=2
	movq	wordct, %rax
	addq	$1, %rax
	movq	%rax, wordct
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	cmpq	$25, last_charct
	jl	.LBB1_26
# %bb.25:                               # %if.then41
                                        #   in Loop: Header=BB1_16 Depth=2
	movq	wordct_array+192, %rax
	addq	$1, %rax
	movq	%rax, wordct_array+192
	jmp	.LBB1_27
.LBB1_26:                               # %if.else
                                        #   in Loop: Header=BB1_16 Depth=2
	movq	last_charct, %rax
	movq	wordct_array(,%rax,8), %rcx
	addq	$1, %rcx
	movq	%rcx, wordct_array(,%rax,8)
.LBB1_27:                               # %if.end45
                                        #   in Loop: Header=BB1_16 Depth=2
	movq	$0, last_charct
.LBB1_28:                               # %if.end46
                                        #   in Loop: Header=BB1_16 Depth=2
	jmp	.LBB1_29
.LBB1_29:                               # %for.cond.backedge
                                        #   in Loop: Header=BB1_16 Depth=2
	jmp	.LBB1_16
.LBB1_30:                               # %if.end47
                                        #   in Loop: Header=BB1_16 Depth=2
	cmpl	$10, -8(%rbp)
	jne	.LBB1_36
# %bb.31:                               # %if.then50
                                        #   in Loop: Header=BB1_16 Depth=2
	movq	linect, %rax
	addq	$1, %rax
	movq	%rax, linect
	cmpq	$20, linect
	jle	.LBB1_34
# %bb.32:                               # %land.lhs.true54
                                        #   in Loop: Header=BB1_16 Depth=2
	cmpq	$10, last_charct
	jle	.LBB1_34
# %bb.33:                               # %if.then57
                                        #   in Loop: Header=BB1_16 Depth=2
	movq	linect, %rax
	cqto
	movl	$5, %ecx
	idivq	%rcx
	movl	%eax, main.x
	imull	$98, main.x, %eax
	movl	%eax, main.y
	movl	main.y, %eax
	cltd
	movl	$23, %ecx
	idivl	%ecx
	movl	%edx, main.z
	jmp	.LBB1_35
.LBB1_34:                               # %if.else59
                                        #   in Loop: Header=BB1_16 Depth=2
	movl	main.z, %eax
	addl	$1, %eax
	movl	%eax, main.z
.LBB1_35:                               # %if.end61
                                        #   in Loop: Header=BB1_16 Depth=2
	jmp	.LBB1_40
.LBB1_36:                               # %if.else62
                                        #   in Loop: Header=BB1_16 Depth=2
	cmpl	$32, -8(%rbp)
	je	.LBB1_39
# %bb.37:                               # %land.lhs.true65
                                        #   in Loop: Header=BB1_16 Depth=2
	cmpl	$9, -8(%rbp)
	je	.LBB1_39
# %bb.38:                               # %if.then68
                                        #   in Loop: Header=BB1_16 Depth=2
	jmp	.LBB1_29
.LBB1_39:                               # %if.end69
                                        #   in Loop: Header=BB1_16 Depth=2
	jmp	.LBB1_40
.LBB1_40:                               # %if.end70
                                        #   in Loop: Header=BB1_16 Depth=2
	movl	$0, -16(%rbp)
	jmp	.LBB1_29
.LBB1_41:                               # %for.end
                                        #   in Loop: Header=BB1_12 Depth=1
	movq	wd, %rdi
	movq	charct, %rsi
	movq	wordct, %rdx
	movq	linect, %rcx
	movabsq	$wordct_array, %r8
	callq	wcp
	cmpl	$1, -4(%rbp)
	jle	.LBB1_43
# %bb.42:                               # %if.then73
                                        #   in Loop: Header=BB1_12 Depth=1
	movq	-24(%rbp), %rax
	movslq	-12(%rbp), %rcx
	movq	(%rax,%rcx,8), %rsi
	movabsq	$.L.str.2, %rdi
	movb	$0, %al
	callq	printf
	jmp	.LBB1_44
.LBB1_43:                               # %if.else77
                                        #   in Loop: Header=BB1_12 Depth=1
	movabsq	$.L.str.3, %rdi
	movb	$0, %al
	callq	printf
.LBB1_44:                               # %if.end79
                                        #   in Loop: Header=BB1_12 Depth=1
	movq	-32(%rbp), %rdi
	callq	fclose
	movq	linect, %rax
	addq	tlinect, %rax
	movq	%rax, tlinect
	movq	wordct, %rax
	addq	twordct, %rax
	movq	%rax, twordct
	movq	charct, %rax
	addq	tcharct, %rax
	movq	%rax, tcharct
.LBB1_45:                               # %do.cond
                                        #   in Loop: Header=BB1_12 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	cmpl	-4(%rbp), %eax
	jl	.LBB1_12
# %bb.46:                               # %do.end
	cmpl	$2, -4(%rbp)
	jle	.LBB1_48
# %bb.47:                               # %if.then88
	movq	wd, %rdi
	movq	tcharct, %rsi
	movq	twordct, %rdx
	movq	tlinect, %rcx
	movabsq	$wordct_array, %r8
	callq	wcp
	movabsq	$.L.str.4, %rdi
	movb	$0, %al
	callq	printf
.LBB1_48:                               # %if.end90
	xorl	%eax, %eax
	addq	$48, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end1:
	.size	main, .Lfunc_end1-main
	.cfi_endproc
                                        # -- End function
	.globl	wcp                     # -- Begin function wcp
	.p2align	4, 0x90
	.type	wcp,@function
wcp:                                    # @wcp
	.cfi_startproc
# %bb.0:                                # %rand_bb
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	%r8, %r14
	movq	%rcx, %r15
	movq	%rdx, %r12
	movq	%rsi, %r13
	movq	%rdi, %rbx
	callq	get_rand
	cmpl	$0, %eax
	jne	.LBB2_5
# %bb.1:                                # %func_wcp.1
	movq	%rbx, %rdi
	movq	%r13, %rsi
	movq	%r12, %rdx
	movq	%r15, %rcx
	movq	%r14, %r8
	callq	wcp.1
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB2_2:                                # %func_wcp.2
	.cfi_def_cfa %rbp, 16
	movq	%rbx, %rdi
	movq	%r13, %rsi
	movq	%r12, %rdx
	movq	%r15, %rcx
	movq	%r14, %r8
	callq	wcp.2
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB2_3:                                # %func_wcp.3
	.cfi_def_cfa %rbp, 16
	movq	%rbx, %rdi
	movq	%r13, %rsi
	movq	%r12, %rdx
	movq	%r15, %rcx
	movq	%r14, %r8
	callq	wcp.3
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB2_4:                                # %func_wcp.4
	.cfi_def_cfa %rbp, 16
	movq	%rbx, %rdi
	movq	%r13, %rsi
	movq	%r12, %rdx
	movq	%r15, %rcx
	movq	%r14, %r8
	callq	wcp.4
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB2_5:                                # %ctrl0
	.cfi_def_cfa %rbp, 16
	cmpl	$1, %eax
	je	.LBB2_2
# %bb.6:                                # %ctrl1
	cmpl	$2, %eax
	je	.LBB2_3
	jmp	.LBB2_4
.Lfunc_end2:
	.size	wcp, .Lfunc_end2-wcp
	.cfi_endproc
                                        # -- End function
	.globl	ipr                     # -- Begin function ipr
	.p2align	4, 0x90
	.type	ipr,@function
ipr:                                    # @ipr
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rsi
	movabsq	$.L.str.7, %rdi
	movb	$0, %al
	callq	printf
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end3:
	.size	ipr, .Lfunc_end3-ipr
	.cfi_endproc
                                        # -- End function
	.globl	wcp.1                   # -- Begin function wcp.1
	.p2align	4, 0x90
	.type	wcp.1,@function
wcp.1:                                  # @wcp.1
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movl	$1851664757, -20(%rbp)  # imm = 0x6E5E2975
	movq	%rdi, -16(%rbp)
	movq	%rsi, -40(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -56(%rbp)
	movq	%r8, -48(%rbp)
	movabsq	$.L.str.5, %rdi
	movb	$0, %al
	callq	printf
	movl	$0, -4(%rbp)
.LBB4_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$25, -4(%rbp)
	jge	.LBB4_4
# %bb.2:                                # %for.body
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	-4(%rbp), %esi
	movq	-48(%rbp), %rax
	movslq	-4(%rbp), %rcx
	movq	(%rax,%rcx,8), %rdx
	movabsq	$.L.str.6, %rdi
	movb	$0, %al
	callq	printf
# %bb.3:                                # %for.inc
                                        #   in Loop: Header=BB4_1 Depth=1
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB4_1
.LBB4_4:                                # %for.end
	jmp	.LBB4_5
.LBB4_5:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-16(%rbp), %rax
	cmpb	$0, (%rax)
	je	.LBB4_13
# %bb.6:                                # %while.body
                                        #   in Loop: Header=BB4_5 Depth=1
	movq	-16(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -16(%rbp)
	movsbl	(%rax), %eax
	movl	%eax, %ecx
	subl	$99, %ecx
	je	.LBB4_11
	jmp	.LBB4_7
.LBB4_7:                                # %while.body
                                        #   in Loop: Header=BB4_5 Depth=1
	movl	%eax, %ecx
	subl	$108, %ecx
	je	.LBB4_9
	jmp	.LBB4_8
.LBB4_8:                                # %while.body
                                        #   in Loop: Header=BB4_5 Depth=1
	subl	$119, %eax
	je	.LBB4_10
	jmp	.LBB4_12
.LBB4_9:                                # %sw.bb
                                        #   in Loop: Header=BB4_5 Depth=1
	movq	-56(%rbp), %rdi
	callq	ipr
	jmp	.LBB4_12
.LBB4_10:                               # %sw.bb2
                                        #   in Loop: Header=BB4_5 Depth=1
	movq	-32(%rbp), %rdi
	callq	ipr
	jmp	.LBB4_12
.LBB4_11:                               # %sw.bb3
                                        #   in Loop: Header=BB4_5 Depth=1
	movq	-40(%rbp), %rdi
	callq	ipr
.LBB4_12:                               # %sw.epilog
                                        #   in Loop: Header=BB4_5 Depth=1
	jmp	.LBB4_5
.LBB4_13:                               # %while.end
	cmpl	$1851664757, -20(%rbp)  # imm = 0x6E5E2975
	jne	.LBB4_15
.LBB4_14:
	addq	$64, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB4_15:                               # %func_exit
	.cfi_def_cfa %rbp, 16
	callq	detect_breach
	jmp	.LBB4_14
.Lfunc_end4:
	.size	wcp.1, .Lfunc_end4-wcp.1
	.cfi_endproc
                                        # -- End function
	.globl	wcp.2                   # -- Begin function wcp.2
	.p2align	4, 0x90
	.type	wcp.2,@function
wcp.2:                                  # @wcp.2
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movl	$831434140, -20(%rbp)   # imm = 0x318EAD9C
	movq	%rdi, -16(%rbp)
	movq	%rsi, -40(%rbp)
	movq	%rdx, -48(%rbp)
	movq	%rcx, -56(%rbp)
	movq	%r8, -32(%rbp)
	movabsq	$.L.str.5, %rdi
	movb	$0, %al
	callq	printf
	movl	$0, -4(%rbp)
.LBB5_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$25, -4(%rbp)
	jge	.LBB5_4
# %bb.2:                                # %for.body
                                        #   in Loop: Header=BB5_1 Depth=1
	movl	-4(%rbp), %esi
	movq	-32(%rbp), %rax
	movslq	-4(%rbp), %rcx
	movq	(%rax,%rcx,8), %rdx
	movabsq	$.L.str.6, %rdi
	movb	$0, %al
	callq	printf
# %bb.3:                                # %for.inc
                                        #   in Loop: Header=BB5_1 Depth=1
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB5_1
.LBB5_4:                                # %for.end
	jmp	.LBB5_5
.LBB5_5:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-16(%rbp), %rax
	cmpb	$0, (%rax)
	je	.LBB5_13
# %bb.6:                                # %while.body
                                        #   in Loop: Header=BB5_5 Depth=1
	movq	-16(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -16(%rbp)
	movsbl	(%rax), %eax
	movl	%eax, %ecx
	subl	$99, %ecx
	je	.LBB5_11
	jmp	.LBB5_7
.LBB5_7:                                # %while.body
                                        #   in Loop: Header=BB5_5 Depth=1
	movl	%eax, %ecx
	subl	$108, %ecx
	je	.LBB5_9
	jmp	.LBB5_8
.LBB5_8:                                # %while.body
                                        #   in Loop: Header=BB5_5 Depth=1
	subl	$119, %eax
	je	.LBB5_10
	jmp	.LBB5_12
.LBB5_9:                                # %sw.bb
                                        #   in Loop: Header=BB5_5 Depth=1
	movq	-56(%rbp), %rdi
	callq	ipr
	jmp	.LBB5_12
.LBB5_10:                               # %sw.bb2
                                        #   in Loop: Header=BB5_5 Depth=1
	movq	-48(%rbp), %rdi
	callq	ipr
	jmp	.LBB5_12
.LBB5_11:                               # %sw.bb3
                                        #   in Loop: Header=BB5_5 Depth=1
	movq	-40(%rbp), %rdi
	callq	ipr
.LBB5_12:                               # %sw.epilog
                                        #   in Loop: Header=BB5_5 Depth=1
	jmp	.LBB5_5
.LBB5_13:                               # %while.end
	cmpl	$831434140, -20(%rbp)   # imm = 0x318EAD9C
	jne	.LBB5_15
.LBB5_14:
	addq	$64, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB5_15:                               # %func_exit
	.cfi_def_cfa %rbp, 16
	callq	detect_breach
	jmp	.LBB5_14
.Lfunc_end5:
	.size	wcp.2, .Lfunc_end5-wcp.2
	.cfi_endproc
                                        # -- End function
	.globl	wcp.3                   # -- Begin function wcp.3
	.p2align	4, 0x90
	.type	wcp.3,@function
wcp.3:                                  # @wcp.3
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movl	$1588871716, -20(%rbp)  # imm = 0x5EB44224
	movq	%rdi, -16(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%r8, -32(%rbp)
	movabsq	$.L.str.5, %rdi
	movb	$0, %al
	callq	printf
	movl	$0, -4(%rbp)
.LBB6_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$25, -4(%rbp)
	jge	.LBB6_4
# %bb.2:                                # %for.body
                                        #   in Loop: Header=BB6_1 Depth=1
	movl	-4(%rbp), %esi
	movq	-32(%rbp), %rax
	movslq	-4(%rbp), %rcx
	movq	(%rax,%rcx,8), %rdx
	movabsq	$.L.str.6, %rdi
	movb	$0, %al
	callq	printf
# %bb.3:                                # %for.inc
                                        #   in Loop: Header=BB6_1 Depth=1
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB6_1
.LBB6_4:                                # %for.end
	jmp	.LBB6_5
.LBB6_5:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-16(%rbp), %rax
	cmpb	$0, (%rax)
	je	.LBB6_13
# %bb.6:                                # %while.body
                                        #   in Loop: Header=BB6_5 Depth=1
	movq	-16(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -16(%rbp)
	movsbl	(%rax), %eax
	movl	%eax, %ecx
	subl	$99, %ecx
	je	.LBB6_11
	jmp	.LBB6_7
.LBB6_7:                                # %while.body
                                        #   in Loop: Header=BB6_5 Depth=1
	movl	%eax, %ecx
	subl	$108, %ecx
	je	.LBB6_9
	jmp	.LBB6_8
.LBB6_8:                                # %while.body
                                        #   in Loop: Header=BB6_5 Depth=1
	subl	$119, %eax
	je	.LBB6_10
	jmp	.LBB6_12
.LBB6_9:                                # %sw.bb
                                        #   in Loop: Header=BB6_5 Depth=1
	movq	-40(%rbp), %rdi
	callq	ipr
	jmp	.LBB6_12
.LBB6_10:                               # %sw.bb2
                                        #   in Loop: Header=BB6_5 Depth=1
	movq	-56(%rbp), %rdi
	callq	ipr
	jmp	.LBB6_12
.LBB6_11:                               # %sw.bb3
                                        #   in Loop: Header=BB6_5 Depth=1
	movq	-48(%rbp), %rdi
	callq	ipr
.LBB6_12:                               # %sw.epilog
                                        #   in Loop: Header=BB6_5 Depth=1
	jmp	.LBB6_5
.LBB6_13:                               # %while.end
	cmpl	$1588871716, -20(%rbp)  # imm = 0x5EB44224
	jne	.LBB6_15
.LBB6_14:
	addq	$64, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB6_15:                               # %func_exit
	.cfi_def_cfa %rbp, 16
	callq	detect_breach
	jmp	.LBB6_14
.Lfunc_end6:
	.size	wcp.3, .Lfunc_end6-wcp.3
	.cfi_endproc
                                        # -- End function
	.globl	wcp.4                   # -- Begin function wcp.4
	.p2align	4, 0x90
	.type	wcp.4,@function
wcp.4:                                  # @wcp.4
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movl	$341666467, -20(%rbp)   # imm = 0x145D6AA3
	movq	%rdi, -16(%rbp)
	movq	%rsi, -40(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%rcx, -48(%rbp)
	movq	%r8, -32(%rbp)
	movabsq	$.L.str.5, %rdi
	movb	$0, %al
	callq	printf
	movl	$0, -4(%rbp)
.LBB7_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$25, -4(%rbp)
	jge	.LBB7_4
# %bb.2:                                # %for.body
                                        #   in Loop: Header=BB7_1 Depth=1
	movl	-4(%rbp), %esi
	movq	-32(%rbp), %rax
	movslq	-4(%rbp), %rcx
	movq	(%rax,%rcx,8), %rdx
	movabsq	$.L.str.6, %rdi
	movb	$0, %al
	callq	printf
# %bb.3:                                # %for.inc
                                        #   in Loop: Header=BB7_1 Depth=1
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB7_1
.LBB7_4:                                # %for.end
	jmp	.LBB7_5
.LBB7_5:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-16(%rbp), %rax
	cmpb	$0, (%rax)
	je	.LBB7_13
# %bb.6:                                # %while.body
                                        #   in Loop: Header=BB7_5 Depth=1
	movq	-16(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -16(%rbp)
	movsbl	(%rax), %eax
	movl	%eax, %ecx
	subl	$99, %ecx
	je	.LBB7_11
	jmp	.LBB7_7
.LBB7_7:                                # %while.body
                                        #   in Loop: Header=BB7_5 Depth=1
	movl	%eax, %ecx
	subl	$108, %ecx
	je	.LBB7_9
	jmp	.LBB7_8
.LBB7_8:                                # %while.body
                                        #   in Loop: Header=BB7_5 Depth=1
	subl	$119, %eax
	je	.LBB7_10
	jmp	.LBB7_12
.LBB7_9:                                # %sw.bb
                                        #   in Loop: Header=BB7_5 Depth=1
	movq	-48(%rbp), %rdi
	callq	ipr
	jmp	.LBB7_12
.LBB7_10:                               # %sw.bb2
                                        #   in Loop: Header=BB7_5 Depth=1
	movq	-56(%rbp), %rdi
	callq	ipr
	jmp	.LBB7_12
.LBB7_11:                               # %sw.bb3
                                        #   in Loop: Header=BB7_5 Depth=1
	movq	-40(%rbp), %rdi
	callq	ipr
.LBB7_12:                               # %sw.epilog
                                        #   in Loop: Header=BB7_5 Depth=1
	jmp	.LBB7_5
.LBB7_13:                               # %while.end
	cmpl	$341666467, -20(%rbp)   # imm = 0x145D6AA3
	jne	.LBB7_15
.LBB7_14:
	addq	$64, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB7_15:                               # %func_exit
	.cfi_def_cfa %rbp, 16
	callq	detect_breach
	jmp	.LBB7_14
.Lfunc_end7:
	.size	wcp.4, .Lfunc_end7-wcp.4
	.cfi_endproc
                                        # -- End function
	.type	buffer,@object          # @buffer
	.local	buffer
	.comm	buffer,8192,16
	.type	bufcount,@object        # @bufcount
	.local	bufcount
	.comm	bufcount,4,4
	.type	bufcurrent,@object      # @bufcurrent
	.local	bufcurrent
	.comm	bufcurrent,4,4
	.type	main.x,@object          # @main.x
	.local	main.x
	.comm	main.x,4,4
	.type	main.y,@object          # @main.y
	.local	main.y
	.comm	main.y,4,4
	.type	main.z,@object          # @main.z
	.local	main.z
	.comm	main.z,4,4
	.type	wd,@object              # @wd
	.data
	.globl	wd
	.p2align	3
wd:
	.quad	.L.str.8
	.size	wd, 8

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Usage: wc [-lwc] [files]\n"
	.size	.L.str, 26

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"r"
	.size	.L.str.1, 2

	.type	linect,@object          # @linect
	.comm	linect,8,8
	.type	wordct,@object          # @wordct
	.comm	wordct,8,8
	.type	charct,@object          # @charct
	.comm	charct,8,8
	.type	last_charct,@object     # @last_charct
	.comm	last_charct,8,8
	.type	wordct_array,@object    # @wordct_array
	.comm	wordct_array,200,16
	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	" %s\n"
	.size	.L.str.2, 5

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"\n"
	.size	.L.str.3, 2

	.type	tlinect,@object         # @tlinect
	.comm	tlinect,8,8
	.type	twordct,@object         # @twordct
	.comm	twordct,8,8
	.type	tcharct,@object         # @tcharct
	.comm	tcharct,8,8
	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	" total\n"
	.size	.L.str.4, 8

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"Word size histogran\n"
	.size	.L.str.5, 21

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"%d: %ld\n"
	.size	.L.str.6, 9

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	" %7ld"
	.size	.L.str.7, 6

	.type	pagect,@object          # @pagect
	.comm	pagect,8,8
	.type	tpagect,@object         # @tpagect
	.comm	tpagect,8,8
	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"lwc"
	.size	.L.str.8, 4


	.ident	"clang version 9.0.1 (git@github.com:llvm/llvm-project.git 9b2d207cf4b43cfc1a2b6940b3c06e50a1bd127f)"
	.section	".note.GNU-stack","",@progbits
