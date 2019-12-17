	.text
	.file	"compress.c"
	.globl	BZ2_bsInitWrite         # -- Begin function BZ2_bsInitWrite
	.p2align	4, 0x90
	.type	BZ2_bsInitWrite,@function
BZ2_bsInitWrite:                        # @BZ2_bsInitWrite
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$0, 644(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 640(%rax)
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end0:
	.size	BZ2_bsInitWrite, .Lfunc_end0-BZ2_bsInitWrite
	.cfi_endproc
                                        # -- End function
	.globl	BZ2_compressBlock       # -- Begin function BZ2_compressBlock
	.p2align	4, 0x90
	.type	BZ2_compressBlock,@function
BZ2_compressBlock:                      # @BZ2_compressBlock
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movb	%sil, -9(%rbp)
	movq	-8(%rbp), %rax
	cmpl	$0, 108(%rax)
	jle	.LBB1_6
# %bb.1:                                # %if.then
	movq	-8(%rbp), %rax
	movl	648(%rax), %eax
	xorl	$-1, %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 648(%rcx)
	movq	-8(%rbp), %rax
	movl	652(%rax), %eax
	shll	$1, %eax
	movq	-8(%rbp), %rcx
	movl	652(%rcx), %ecx
	shrl	$31, %ecx
	orl	%ecx, %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 652(%rcx)
	movq	-8(%rbp), %rax
	movl	648(%rax), %eax
	movq	-8(%rbp), %rcx
	xorl	652(%rcx), %eax
	movl	%eax, 652(%rcx)
	movq	-8(%rbp), %rax
	cmpl	$1, 660(%rax)
	jle	.LBB1_3
# %bb.2:                                # %if.then7
	movq	-8(%rbp), %rax
	movl	$0, 116(%rax)
.LBB1_3:                                # %if.end
	movq	-8(%rbp), %rax
	cmpl	$2, 656(%rax)
	jl	.LBB1_5
# %bb.4:                                # %if.then9
	movq	stderr, %rdi
	movq	-8(%rbp), %rax
	movl	660(%rax), %edx
	movq	-8(%rbp), %rax
	movl	648(%rax), %ecx
	movq	-8(%rbp), %rax
	movl	652(%rax), %r8d
	movq	-8(%rbp), %rax
	movl	108(%rax), %r9d
	movabsq	$.L.str, %rsi
	movb	$0, %al
	callq	fprintf
.LBB1_5:                                # %if.end14
	movq	-8(%rbp), %rdi
	callq	BZ2_blockSort
.LBB1_6:                                # %if.end15
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	-8(%rbp), %rcx
	movslq	108(%rcx), %rcx
	addq	%rcx, %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 80(%rcx)
	movq	-8(%rbp), %rax
	cmpl	$1, 660(%rax)
	jne	.LBB1_8
# %bb.7:                                # %if.then19
	movq	-8(%rbp), %rdi
	callq	BZ2_bsInitWrite
	movq	-8(%rbp), %rdi
	movl	$66, %esi
	callq	bsPutUChar
	movq	-8(%rbp), %rdi
	movl	$90, %esi
	callq	bsPutUChar
	movq	-8(%rbp), %rdi
	movl	$104, %esi
	callq	bsPutUChar
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rax
	movl	664(%rax), %eax
	addl	$48, %eax
	movzbl	%al, %esi
	callq	bsPutUChar
.LBB1_8:                                # %if.end20
	movq	-8(%rbp), %rax
	cmpl	$0, 108(%rax)
	jle	.LBB1_10
# %bb.9:                                # %if.then24
	movq	-8(%rbp), %rdi
	movl	$49, %esi
	callq	bsPutUChar
	movq	-8(%rbp), %rdi
	movl	$65, %esi
	callq	bsPutUChar
	movq	-8(%rbp), %rdi
	movl	$89, %esi
	callq	bsPutUChar
	movq	-8(%rbp), %rdi
	movl	$38, %esi
	callq	bsPutUChar
	movq	-8(%rbp), %rdi
	movl	$83, %esi
	callq	bsPutUChar
	movq	-8(%rbp), %rdi
	movl	$89, %esi
	callq	bsPutUChar
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rax
	movl	648(%rax), %esi
	callq	bsPutUInt32
	movq	-8(%rbp), %rdi
	movl	$1, %esi
	xorl	%edx, %edx
	callq	bsW
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rax
	movl	48(%rax), %edx
	movl	$24, %esi
	callq	bsW
	movq	-8(%rbp), %rdi
	callq	generateMTFValues
	movq	-8(%rbp), %rdi
	callq	sendMTFValues
.LBB1_10:                               # %if.end26
	cmpb	$0, -9(%rbp)
	je	.LBB1_14
# %bb.11:                               # %if.then27
	movq	-8(%rbp), %rdi
	movl	$23, %esi
	callq	bsPutUChar
	movq	-8(%rbp), %rdi
	movl	$114, %esi
	callq	bsPutUChar
	movq	-8(%rbp), %rdi
	movl	$69, %esi
	callq	bsPutUChar
	movq	-8(%rbp), %rdi
	movl	$56, %esi
	callq	bsPutUChar
	movq	-8(%rbp), %rdi
	movl	$80, %esi
	callq	bsPutUChar
	movq	-8(%rbp), %rdi
	movl	$144, %esi
	callq	bsPutUChar
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rax
	movl	652(%rax), %esi
	callq	bsPutUInt32
	movq	-8(%rbp), %rax
	cmpl	$2, 656(%rax)
	jl	.LBB1_13
# %bb.12:                               # %if.then32
	movq	stderr, %rdi
	movq	-8(%rbp), %rax
	movl	652(%rax), %edx
	movabsq	$.L.str.1, %rsi
	movb	$0, %al
	callq	fprintf
.LBB1_13:                               # %if.end35
	movq	-8(%rbp), %rdi
	callq	bsFinishWrite
.LBB1_14:                               # %if.end36
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end1:
	.size	BZ2_compressBlock, .Lfunc_end1-BZ2_compressBlock
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function bsPutUChar
	.type	bsPutUChar,@function
bsPutUChar:                             # @bsPutUChar
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -16(%rbp)
	movb	%sil, -1(%rbp)
	movq	-16(%rbp), %rdi
	movzbl	-1(%rbp), %edx
	movl	$8, %esi
	callq	bsW
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end2:
	.size	bsPutUChar, .Lfunc_end2-bsPutUChar
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function bsPutUInt32
	.type	bsPutUInt32,@function
bsPutUInt32:                            # @bsPutUInt32
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -4(%rbp)
	movq	-16(%rbp), %rdi
	movl	-4(%rbp), %eax
	shrl	$24, %eax
	movl	%eax, %edx
	andq	$255, %rdx
	movl	$8, %esi
                                        # kill: def $edx killed $edx killed $rdx
	callq	bsW
	movq	-16(%rbp), %rdi
	movl	-4(%rbp), %eax
	shrl	$16, %eax
	movl	%eax, %edx
	andq	$255, %rdx
	movl	$8, %esi
                                        # kill: def $edx killed $edx killed $rdx
	callq	bsW
	movq	-16(%rbp), %rdi
	movl	-4(%rbp), %eax
	shrl	$8, %eax
	movl	%eax, %edx
	andq	$255, %rdx
	movl	$8, %esi
                                        # kill: def $edx killed $edx killed $rdx
	callq	bsW
	movq	-16(%rbp), %rdi
	movl	-4(%rbp), %edx
	andq	$255, %rdx
	movl	$8, %esi
                                        # kill: def $edx killed $edx killed $rdx
	callq	bsW
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end3:
	.size	bsPutUInt32, .Lfunc_end3-bsPutUInt32
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function bsW
	.type	bsW,@function
bsW:                                    # @bsW
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
.LBB4_1:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-8(%rbp), %rax
	cmpl	$8, 644(%rax)
	jl	.LBB4_3
# %bb.2:                                # %while.body
                                        #   in Loop: Header=BB4_1 Depth=1
	movq	-8(%rbp), %rax
	movl	640(%rax), %eax
	shrl	$24, %eax
	movq	-8(%rbp), %rcx
	movq	80(%rcx), %rcx
	movq	-8(%rbp), %rdx
	movslq	116(%rdx), %rdx
	movb	%al, (%rcx,%rdx)
	movq	-8(%rbp), %rax
	movl	116(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 116(%rax)
	movq	-8(%rbp), %rax
	movl	640(%rax), %ecx
	shll	$8, %ecx
	movl	%ecx, 640(%rax)
	movq	-8(%rbp), %rax
	movl	644(%rax), %ecx
	subl	$8, %ecx
	movl	%ecx, 644(%rax)
	jmp	.LBB4_1
.LBB4_3:                                # %while.end
	movl	-16(%rbp), %eax
	movq	-8(%rbp), %rdx
	movl	$32, %ecx
	subl	644(%rdx), %ecx
	subl	-12(%rbp), %ecx
                                        # kill: def $cl killed $ecx
	shll	%cl, %eax
	movq	-8(%rbp), %rcx
	orl	640(%rcx), %eax
	movl	%eax, 640(%rcx)
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rcx
	addl	644(%rcx), %eax
	movl	%eax, 644(%rcx)
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end4:
	.size	bsW, .Lfunc_end4-bsW
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function generateMTFValues
	.type	generateMTFValues,@function
generateMTFValues:                      # @generateMTFValues
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$336, %rsp              # imm = 0x150
	movq	%rdi, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, -80(%rbp)
	movq	-32(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	-32(%rbp), %rax
	movq	72(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-32(%rbp), %rdi
	callq	makeMaps_e
	movq	-32(%rbp), %rax
	movl	124(%rax), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	movl	$0, -16(%rbp)
.LBB5_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-16(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jg	.LBB5_4
# %bb.2:                                # %for.body
                                        #   in Loop: Header=BB5_1 Depth=1
	movq	-32(%rbp), %rax
	movslq	-16(%rbp), %rcx
	movl	$0, 672(%rax,%rcx,4)
# %bb.3:                                # %for.inc
                                        #   in Loop: Header=BB5_1 Depth=1
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB5_1
.LBB5_4:                                # %for.end
	movl	$0, -4(%rbp)
	movl	$0, -12(%rbp)
	movl	$0, -16(%rbp)
.LBB5_5:                                # %for.cond4
                                        # =>This Inner Loop Header: Depth=1
	movl	-16(%rbp), %eax
	movq	-32(%rbp), %rcx
	cmpl	124(%rcx), %eax
	jge	.LBB5_8
# %bb.6:                                # %for.body7
                                        #   in Loop: Header=BB5_5 Depth=1
	movl	-16(%rbp), %eax
	movslq	-16(%rbp), %rcx
	movb	%al, -336(%rbp,%rcx)
# %bb.7:                                # %for.inc10
                                        #   in Loop: Header=BB5_5 Depth=1
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB5_5
.LBB5_8:                                # %for.end12
	movl	$0, -16(%rbp)
.LBB5_9:                                # %for.cond13
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_16 Depth 2
                                        #     Child Loop BB5_24 Depth 2
	movl	-16(%rbp), %eax
	movq	-32(%rbp), %rcx
	cmpl	108(%rcx), %eax
	jge	.LBB5_29
# %bb.10:                               # %for.body16
                                        #   in Loop: Header=BB5_9 Depth=1
	movq	-80(%rbp), %rax
	movslq	-16(%rbp), %rcx
	movl	(%rax,%rcx,4), %eax
	subl	$1, %eax
	movl	%eax, -36(%rbp)
	cmpl	$0, -36(%rbp)
	jge	.LBB5_12
# %bb.11:                               # %if.then
                                        #   in Loop: Header=BB5_9 Depth=1
	movq	-32(%rbp), %rax
	movl	108(%rax), %eax
	addl	-36(%rbp), %eax
	movl	%eax, -36(%rbp)
.LBB5_12:                               # %if.end
                                        #   in Loop: Header=BB5_9 Depth=1
	movq	-32(%rbp), %rax
	movq	-72(%rbp), %rcx
	movslq	-36(%rbp), %rdx
	movzbl	(%rcx,%rdx), %ecx
	movb	384(%rax,%rcx), %al
	movb	%al, -17(%rbp)
	movzbl	-336(%rbp), %eax
	movzbl	-17(%rbp), %ecx
	cmpl	%ecx, %eax
	jne	.LBB5_14
# %bb.13:                               # %if.then32
                                        #   in Loop: Header=BB5_9 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB5_27
.LBB5_14:                               # %if.else
                                        #   in Loop: Header=BB5_9 Depth=1
	cmpl	$0, -12(%rbp)
	jle	.LBB5_23
# %bb.15:                               # %if.then36
                                        #   in Loop: Header=BB5_9 Depth=1
	movl	-12(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -12(%rbp)
.LBB5_16:                               # %while.body
                                        #   Parent Loop BB5_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-12(%rbp), %eax
	andl	$1, %eax
	cmpl	$0, %eax
	je	.LBB5_18
# %bb.17:                               # %if.then37
                                        #   in Loop: Header=BB5_16 Depth=2
	movq	-56(%rbp), %rax
	movslq	-4(%rbp), %rcx
	movw	$1, (%rax,%rcx,2)
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	movq	-32(%rbp), %rax
	movl	676(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 676(%rax)
	jmp	.LBB5_19
.LBB5_18:                               # %if.else44
                                        #   in Loop: Header=BB5_16 Depth=2
	movq	-56(%rbp), %rax
	movslq	-4(%rbp), %rcx
	movw	$0, (%rax,%rcx,2)
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	movq	-32(%rbp), %rax
	movl	672(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 672(%rax)
.LBB5_19:                               # %if.end51
                                        #   in Loop: Header=BB5_16 Depth=2
	cmpl	$2, -12(%rbp)
	jge	.LBB5_21
# %bb.20:                               # %if.then54
                                        #   in Loop: Header=BB5_9 Depth=1
	jmp	.LBB5_22
.LBB5_21:                               # %if.end55
                                        #   in Loop: Header=BB5_16 Depth=2
	movl	-12(%rbp), %eax
	subl	$2, %eax
	cltd
	movl	$2, %ecx
	idivl	%ecx
	movl	%eax, -12(%rbp)
	jmp	.LBB5_16
.LBB5_22:                               # %while.end
                                        #   in Loop: Header=BB5_9 Depth=1
	movl	$0, -12(%rbp)
.LBB5_23:                               # %if.end57
                                        #   in Loop: Header=BB5_9 Depth=1
	movb	-335(%rbp), %al
	movb	%al, -5(%rbp)
	movb	-336(%rbp), %al
	movb	%al, -335(%rbp)
	leaq	-336(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -64(%rbp)
	movb	-17(%rbp), %al
	movb	%al, -38(%rbp)
.LBB5_24:                               # %while.cond
                                        #   Parent Loop BB5_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	-38(%rbp), %eax
	movzbl	-5(%rbp), %ecx
	cmpl	%ecx, %eax
	je	.LBB5_26
# %bb.25:                               # %while.body66
                                        #   in Loop: Header=BB5_24 Depth=2
	movq	-64(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -64(%rbp)
	movb	-5(%rbp), %al
	movb	%al, -37(%rbp)
	movq	-64(%rbp), %rax
	movb	(%rax), %al
	movb	%al, -5(%rbp)
	movb	-37(%rbp), %al
	movq	-64(%rbp), %rcx
	movb	%al, (%rcx)
	jmp	.LBB5_24
.LBB5_26:                               # %while.end67
                                        #   in Loop: Header=BB5_9 Depth=1
	leaq	-336(%rbp), %rax
	movb	-5(%rbp), %cl
	movb	%cl, -336(%rbp)
	movq	-64(%rbp), %rcx
	subq	%rax, %rcx
	movl	%ecx, -36(%rbp)
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movq	-56(%rbp), %rcx
	movslq	-4(%rbp), %rdx
	movw	%ax, (%rcx,%rdx,2)
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	movq	-32(%rbp), %rax
	movl	-36(%rbp), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rcx
	movl	672(%rax,%rcx,4), %edx
	addl	$1, %edx
	movl	%edx, 672(%rax,%rcx,4)
.LBB5_27:                               # %if.end81
                                        #   in Loop: Header=BB5_9 Depth=1
	jmp	.LBB5_28
.LBB5_28:                               # %for.inc82
                                        #   in Loop: Header=BB5_9 Depth=1
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB5_9
.LBB5_29:                               # %for.end84
	cmpl	$0, -12(%rbp)
	jle	.LBB5_38
# %bb.30:                               # %if.then87
	movl	-12(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -12(%rbp)
.LBB5_31:                               # %while.body90
                                        # =>This Inner Loop Header: Depth=1
	movl	-12(%rbp), %eax
	andl	$1, %eax
	cmpl	$0, %eax
	je	.LBB5_33
# %bb.32:                               # %if.then93
                                        #   in Loop: Header=BB5_31 Depth=1
	movq	-56(%rbp), %rax
	movslq	-4(%rbp), %rcx
	movw	$1, (%rax,%rcx,2)
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	movq	-32(%rbp), %rax
	movl	676(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 676(%rax)
	jmp	.LBB5_34
.LBB5_33:                               # %if.else100
                                        #   in Loop: Header=BB5_31 Depth=1
	movq	-56(%rbp), %rax
	movslq	-4(%rbp), %rcx
	movw	$0, (%rax,%rcx,2)
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	movq	-32(%rbp), %rax
	movl	672(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 672(%rax)
.LBB5_34:                               # %if.end107
                                        #   in Loop: Header=BB5_31 Depth=1
	cmpl	$2, -12(%rbp)
	jge	.LBB5_36
# %bb.35:                               # %if.then110
	jmp	.LBB5_37
.LBB5_36:                               # %if.end111
                                        #   in Loop: Header=BB5_31 Depth=1
	movl	-12(%rbp), %eax
	subl	$2, %eax
	cltd
	movl	$2, %ecx
	idivl	%ecx
	movl	%eax, -12(%rbp)
	jmp	.LBB5_31
.LBB5_37:                               # %while.end114
	movl	$0, -12(%rbp)
.LBB5_38:                               # %if.end115
	movl	-44(%rbp), %eax
	movq	-56(%rbp), %rcx
	movslq	-4(%rbp), %rdx
	movw	%ax, (%rcx,%rdx,2)
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	movq	-32(%rbp), %rax
	movslq	-44(%rbp), %rcx
	movl	672(%rax,%rcx,4), %edx
	addl	$1, %edx
	movl	%edx, 672(%rax,%rcx,4)
	movl	-4(%rbp), %eax
	movq	-32(%rbp), %rcx
	movl	%eax, 668(%rcx)
	addq	$336, %rsp              # imm = 0x150
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end5:
	.size	generateMTFValues, .Lfunc_end5-generateMTFValues
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function sendMTFValues
.LCPI6_0:
	.quad	4636737291354636288     # double 100
	.text
	.p2align	4, 0x90
	.type	sendMTFValues,@function
sendMTFValues:                          # @sendMTFValues
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$224, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	72(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rax
	cmpl	$3, 656(%rax)
	jl	.LBB6_2
# %bb.1:                                # %if.then
	movq	stderr, %rdi
	movq	-16(%rbp), %rax
	movl	108(%rax), %edx
	movq	-16(%rbp), %rax
	movl	668(%rax), %ecx
	movq	-16(%rbp), %rax
	movl	124(%rax), %r8d
	movabsq	$.L.str.2, %rsi
	movb	$0, %al
	callq	fprintf
.LBB6_2:                                # %if.end
	movq	-16(%rbp), %rax
	movl	124(%rax), %eax
	addl	$2, %eax
	movl	%eax, -100(%rbp)
	movl	$0, -48(%rbp)
.LBB6_3:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_5 Depth 2
	cmpl	$6, -48(%rbp)
	jge	.LBB6_10
# %bb.4:                                # %for.body
                                        #   in Loop: Header=BB6_3 Depth=1
	movl	$0, -56(%rbp)
.LBB6_5:                                # %for.cond4
                                        #   Parent Loop BB6_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-56(%rbp), %eax
	cmpl	-100(%rbp), %eax
	jge	.LBB6_8
# %bb.6:                                # %for.body6
                                        #   in Loop: Header=BB6_5 Depth=2
	movq	-16(%rbp), %rax
	addq	$37708, %rax            # imm = 0x934C
	movslq	-48(%rbp), %rcx
	imulq	$258, %rcx, %rcx        # imm = 0x102
	addq	%rcx, %rax
	movslq	-56(%rbp), %rcx
	movb	$15, (%rax,%rcx)
# %bb.7:                                # %for.inc
                                        #   in Loop: Header=BB6_5 Depth=2
	movl	-56(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -56(%rbp)
	jmp	.LBB6_5
.LBB6_8:                                # %for.end
                                        #   in Loop: Header=BB6_3 Depth=1
	jmp	.LBB6_9
.LBB6_9:                                # %for.inc9
                                        #   in Loop: Header=BB6_3 Depth=1
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB6_3
.LBB6_10:                               # %for.end11
	movq	-16(%rbp), %rax
	cmpl	$0, 668(%rax)
	jg	.LBB6_12
# %bb.11:                               # %if.then14
	movl	$3001, %edi             # imm = 0xBB9
	callq	BZ2_bz__AssertH__fail
.LBB6_12:                               # %if.end15
	movq	-16(%rbp), %rax
	cmpl	$200, 668(%rax)
	jge	.LBB6_14
# %bb.13:                               # %if.then18
	movl	$2, -84(%rbp)
	jmp	.LBB6_24
.LBB6_14:                               # %if.else
	movq	-16(%rbp), %rax
	cmpl	$600, 668(%rax)         # imm = 0x258
	jge	.LBB6_16
# %bb.15:                               # %if.then21
	movl	$3, -84(%rbp)
	jmp	.LBB6_23
.LBB6_16:                               # %if.else22
	movq	-16(%rbp), %rax
	cmpl	$1200, 668(%rax)        # imm = 0x4B0
	jge	.LBB6_18
# %bb.17:                               # %if.then25
	movl	$4, -84(%rbp)
	jmp	.LBB6_22
.LBB6_18:                               # %if.else26
	movq	-16(%rbp), %rax
	cmpl	$2400, 668(%rax)        # imm = 0x960
	jge	.LBB6_20
# %bb.19:                               # %if.then29
	movl	$5, -84(%rbp)
	jmp	.LBB6_21
.LBB6_20:                               # %if.else30
	movl	$6, -84(%rbp)
.LBB6_21:                               # %if.end31
	jmp	.LBB6_22
.LBB6_22:                               # %if.end32
	jmp	.LBB6_23
.LBB6_23:                               # %if.end33
	jmp	.LBB6_24
.LBB6_24:                               # %if.end34
	movl	-84(%rbp), %eax
	movl	%eax, -96(%rbp)
	movq	-16(%rbp), %rax
	movl	668(%rax), %eax
	movl	%eax, -140(%rbp)
	movl	$0, -20(%rbp)
.LBB6_25:                               # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_27 Depth 2
                                        #     Child Loop BB6_39 Depth 2
	cmpl	$0, -96(%rbp)
	jle	.LBB6_47
# %bb.26:                               # %while.body
                                        #   in Loop: Header=BB6_25 Depth=1
	movl	-140(%rbp), %eax
	cltd
	idivl	-96(%rbp)
	movl	%eax, -172(%rbp)
	movl	-20(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -60(%rbp)
	movl	$0, -108(%rbp)
.LBB6_27:                               # %while.cond37
                                        #   Parent Loop BB6_25 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xorl	%eax, %eax
	movl	-108(%rbp), %ecx
	cmpl	-172(%rbp), %ecx
	jge	.LBB6_29
# %bb.28:                               # %land.rhs
                                        #   in Loop: Header=BB6_27 Depth=2
	movl	-60(%rbp), %eax
	movl	-100(%rbp), %ecx
	subl	$1, %ecx
	cmpl	%ecx, %eax
	setl	%al
.LBB6_29:                               # %land.end
                                        #   in Loop: Header=BB6_27 Depth=2
	testb	$1, %al
	jne	.LBB6_30
	jmp	.LBB6_31
.LBB6_30:                               # %while.body41
                                        #   in Loop: Header=BB6_27 Depth=2
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -60(%rbp)
	movq	-16(%rbp), %rax
	movslq	-60(%rbp), %rcx
	movl	672(%rax,%rcx,4), %eax
	addl	-108(%rbp), %eax
	movl	%eax, -108(%rbp)
	jmp	.LBB6_27
.LBB6_31:                               # %while.end
                                        #   in Loop: Header=BB6_25 Depth=1
	movl	-60(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jle	.LBB6_36
# %bb.32:                               # %land.lhs.true
                                        #   in Loop: Header=BB6_25 Depth=1
	movl	-96(%rbp), %eax
	cmpl	-84(%rbp), %eax
	je	.LBB6_36
# %bb.33:                               # %land.lhs.true48
                                        #   in Loop: Header=BB6_25 Depth=1
	cmpl	$1, -96(%rbp)
	je	.LBB6_36
# %bb.34:                               # %land.lhs.true50
                                        #   in Loop: Header=BB6_25 Depth=1
	movl	-84(%rbp), %eax
	subl	-96(%rbp), %eax
	cltd
	movl	$2, %ecx
	idivl	%ecx
	cmpl	$1, %edx
	jne	.LBB6_36
# %bb.35:                               # %if.then53
                                        #   in Loop: Header=BB6_25 Depth=1
	movq	-16(%rbp), %rax
	movslq	-60(%rbp), %rcx
	movl	672(%rax,%rcx,4), %eax
	movl	-108(%rbp), %ecx
	subl	%eax, %ecx
	movl	%ecx, -108(%rbp)
	movl	-60(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -60(%rbp)
.LBB6_36:                               # %if.end58
                                        #   in Loop: Header=BB6_25 Depth=1
	movq	-16(%rbp), %rax
	cmpl	$3, 656(%rax)
	jl	.LBB6_38
# %bb.37:                               # %if.then61
                                        #   in Loop: Header=BB6_25 Depth=1
	vmovsd	.LCPI6_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movq	stderr, %rdi
	movl	-96(%rbp), %edx
	movl	-20(%rbp), %ecx
	movl	-60(%rbp), %r8d
	movl	-108(%rbp), %r9d
	vcvtsi2ssl	-108(%rbp), %xmm0, %xmm1
	vcvtss2sd	%xmm1, %xmm0, %xmm1
	vmulsd	%xmm1, %xmm0, %xmm0
	movq	-16(%rbp), %rax
	vcvtsi2ssl	668(%rax), %xmm0, %xmm1
	vcvtss2sd	%xmm1, %xmm0, %xmm1
	vdivsd	%xmm1, %xmm0, %xmm0
	movabsq	$.L.str.3, %rsi
	movb	$1, %al
	callq	fprintf
.LBB6_38:                               # %if.end68
                                        #   in Loop: Header=BB6_25 Depth=1
	movl	$0, -56(%rbp)
.LBB6_39:                               # %for.cond69
                                        #   Parent Loop BB6_25 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-56(%rbp), %eax
	cmpl	-100(%rbp), %eax
	jge	.LBB6_46
# %bb.40:                               # %for.body72
                                        #   in Loop: Header=BB6_39 Depth=2
	movl	-56(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jl	.LBB6_43
# %bb.41:                               # %land.lhs.true75
                                        #   in Loop: Header=BB6_39 Depth=2
	movl	-56(%rbp), %eax
	cmpl	-60(%rbp), %eax
	jg	.LBB6_43
# %bb.42:                               # %if.then78
                                        #   in Loop: Header=BB6_39 Depth=2
	movq	-16(%rbp), %rax
	addq	$37708, %rax            # imm = 0x934C
	movl	-96(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rcx
	imulq	$258, %rcx, %rcx        # imm = 0x102
	addq	%rcx, %rax
	movslq	-56(%rbp), %rcx
	movb	$0, (%rax,%rcx)
	jmp	.LBB6_44
.LBB6_43:                               # %if.else85
                                        #   in Loop: Header=BB6_39 Depth=2
	movq	-16(%rbp), %rax
	addq	$37708, %rax            # imm = 0x934C
	movl	-96(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rcx
	imulq	$258, %rcx, %rcx        # imm = 0x102
	addq	%rcx, %rax
	movslq	-56(%rbp), %rcx
	movb	$15, (%rax,%rcx)
.LBB6_44:                               # %if.end92
                                        #   in Loop: Header=BB6_39 Depth=2
	jmp	.LBB6_45
.LBB6_45:                               # %for.inc93
                                        #   in Loop: Header=BB6_39 Depth=2
	movl	-56(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -56(%rbp)
	jmp	.LBB6_39
.LBB6_46:                               # %for.end95
                                        #   in Loop: Header=BB6_25 Depth=1
	movl	-96(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -96(%rbp)
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	movl	-108(%rbp), %eax
	movl	-140(%rbp), %ecx
	subl	%eax, %ecx
	movl	%ecx, -140(%rbp)
	jmp	.LBB6_25
.LBB6_47:                               # %while.end99
	movl	$0, -136(%rbp)
.LBB6_48:                               # %for.cond100
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_50 Depth 2
                                        #     Child Loop BB6_54 Depth 2
                                        #       Child Loop BB6_56 Depth 3
                                        #     Child Loop BB6_63 Depth 2
                                        #     Child Loop BB6_68 Depth 2
                                        #       Child Loop BB6_73 Depth 3
                                        #       Child Loop BB6_80 Depth 3
                                        #         Child Loop BB6_82 Depth 4
                                        #       Child Loop BB6_89 Depth 3
                                        #       Child Loop BB6_98 Depth 3
                                        #     Child Loop BB6_105 Depth 2
                                        #     Child Loop BB6_110 Depth 2
	cmpl	$4, -136(%rbp)
	jge	.LBB6_115
# %bb.49:                               # %for.body103
                                        #   in Loop: Header=BB6_48 Depth=1
	movl	$0, -48(%rbp)
.LBB6_50:                               # %for.cond104
                                        #   Parent Loop BB6_48 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-48(%rbp), %eax
	cmpl	-84(%rbp), %eax
	jge	.LBB6_53
# %bb.51:                               # %for.body107
                                        #   in Loop: Header=BB6_50 Depth=2
	movslq	-48(%rbp), %rax
	movl	$0, -224(%rbp,%rax,4)
# %bb.52:                               # %for.inc110
                                        #   in Loop: Header=BB6_50 Depth=2
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB6_50
.LBB6_53:                               # %for.end112
                                        #   in Loop: Header=BB6_48 Depth=1
	movl	$0, -48(%rbp)
.LBB6_54:                               # %for.cond113
                                        #   Parent Loop BB6_48 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB6_56 Depth 3
	movl	-48(%rbp), %eax
	cmpl	-84(%rbp), %eax
	jge	.LBB6_61
# %bb.55:                               # %for.body116
                                        #   in Loop: Header=BB6_54 Depth=2
	movl	$0, -56(%rbp)
.LBB6_56:                               # %for.cond117
                                        #   Parent Loop BB6_48 Depth=1
                                        #     Parent Loop BB6_54 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-56(%rbp), %eax
	cmpl	-100(%rbp), %eax
	jge	.LBB6_59
# %bb.57:                               # %for.body120
                                        #   in Loop: Header=BB6_56 Depth=3
	movq	-16(%rbp), %rax
	addq	$45448, %rax            # imm = 0xB188
	movslq	-48(%rbp), %rcx
	imulq	$1032, %rcx, %rcx       # imm = 0x408
	addq	%rcx, %rax
	movslq	-56(%rbp), %rcx
	movl	$0, (%rax,%rcx,4)
# %bb.58:                               # %for.inc125
                                        #   in Loop: Header=BB6_56 Depth=3
	movl	-56(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -56(%rbp)
	jmp	.LBB6_56
.LBB6_59:                               # %for.end127
                                        #   in Loop: Header=BB6_54 Depth=2
	jmp	.LBB6_60
.LBB6_60:                               # %for.inc128
                                        #   in Loop: Header=BB6_54 Depth=2
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB6_54
.LBB6_61:                               # %for.end130
                                        #   in Loop: Header=BB6_48 Depth=1
	cmpl	$6, -84(%rbp)
	jne	.LBB6_67
# %bb.62:                               # %if.then133
                                        #   in Loop: Header=BB6_48 Depth=1
	movl	$0, -56(%rbp)
.LBB6_63:                               # %for.cond134
                                        #   Parent Loop BB6_48 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-56(%rbp), %eax
	cmpl	-100(%rbp), %eax
	jge	.LBB6_66
# %bb.64:                               # %for.body137
                                        #   in Loop: Header=BB6_63 Depth=2
	movq	-16(%rbp), %rax
	movslq	-56(%rbp), %rcx
	movzbl	37966(%rax,%rcx), %eax
	shll	$16, %eax
	movq	-16(%rbp), %rcx
	movslq	-56(%rbp), %rdx
	movzbl	37708(%rcx,%rdx), %ecx
	orl	%ecx, %eax
	movq	-16(%rbp), %rcx
	addq	$51640, %rcx            # imm = 0xC9B8
	movslq	-56(%rbp), %rdx
	shlq	$4, %rdx
	addq	%rdx, %rcx
	movl	%eax, (%rcx)
	movq	-16(%rbp), %rax
	movslq	-56(%rbp), %rcx
	movzbl	38482(%rax,%rcx), %eax
	shll	$16, %eax
	movq	-16(%rbp), %rcx
	movslq	-56(%rbp), %rdx
	movzbl	38224(%rcx,%rdx), %ecx
	orl	%ecx, %eax
	movq	-16(%rbp), %rcx
	addq	$51640, %rcx            # imm = 0xC9B8
	movslq	-56(%rbp), %rdx
	shlq	$4, %rdx
	addq	%rdx, %rcx
	movl	%eax, 4(%rcx)
	movq	-16(%rbp), %rax
	movslq	-56(%rbp), %rcx
	movzbl	38998(%rax,%rcx), %eax
	shll	$16, %eax
	movq	-16(%rbp), %rcx
	movslq	-56(%rbp), %rdx
	movzbl	38740(%rcx,%rdx), %ecx
	orl	%ecx, %eax
	movq	-16(%rbp), %rcx
	addq	$51640, %rcx            # imm = 0xC9B8
	movslq	-56(%rbp), %rdx
	shlq	$4, %rdx
	addq	%rdx, %rcx
	movl	%eax, 8(%rcx)
# %bb.65:                               # %for.inc183
                                        #   in Loop: Header=BB6_63 Depth=2
	movl	-56(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -56(%rbp)
	jmp	.LBB6_63
.LBB6_66:                               # %for.end185
                                        #   in Loop: Header=BB6_48 Depth=1
	jmp	.LBB6_67
.LBB6_67:                               # %if.end186
                                        #   in Loop: Header=BB6_48 Depth=1
	movl	$0, -104(%rbp)
	movl	$0, -148(%rbp)
	movl	$0, -20(%rbp)
.LBB6_68:                               # %while.body188
                                        #   Parent Loop BB6_48 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB6_73 Depth 3
                                        #       Child Loop BB6_80 Depth 3
                                        #         Child Loop BB6_82 Depth 4
                                        #       Child Loop BB6_89 Depth 3
                                        #       Child Loop BB6_98 Depth 3
	movl	-20(%rbp), %eax
	movq	-16(%rbp), %rcx
	cmpl	668(%rcx), %eax
	jl	.LBB6_70
# %bb.69:                               # %if.then192
                                        #   in Loop: Header=BB6_48 Depth=1
	jmp	.LBB6_103
.LBB6_70:                               # %if.end193
                                        #   in Loop: Header=BB6_68 Depth=2
	movl	-20(%rbp), %eax
	addl	$50, %eax
	subl	$1, %eax
	movl	%eax, -60(%rbp)
	movl	-60(%rbp), %eax
	movq	-16(%rbp), %rcx
	cmpl	668(%rcx), %eax
	jl	.LBB6_72
# %bb.71:                               # %if.then199
                                        #   in Loop: Header=BB6_68 Depth=2
	movq	-16(%rbp), %rax
	movl	668(%rax), %eax
	subl	$1, %eax
	movl	%eax, -60(%rbp)
.LBB6_72:                               # %if.end202
                                        #   in Loop: Header=BB6_68 Depth=2
	movl	$0, -48(%rbp)
.LBB6_73:                               # %for.cond203
                                        #   Parent Loop BB6_48 Depth=1
                                        #     Parent Loop BB6_68 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-48(%rbp), %eax
	cmpl	-84(%rbp), %eax
	jge	.LBB6_76
# %bb.74:                               # %for.body206
                                        #   in Loop: Header=BB6_73 Depth=3
	movslq	-48(%rbp), %rax
	movw	$0, -162(%rbp,%rax,2)
# %bb.75:                               # %for.inc209
                                        #   in Loop: Header=BB6_73 Depth=3
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB6_73
.LBB6_76:                               # %for.end211
                                        #   in Loop: Header=BB6_68 Depth=2
	cmpl	$6, -84(%rbp)
	jne	.LBB6_79
# %bb.77:                               # %land.lhs.true214
                                        #   in Loop: Header=BB6_68 Depth=2
	movl	-60(%rbp), %eax
	subl	-20(%rbp), %eax
	addl	$1, %eax
	movl	$50, %ecx
	cmpl	%eax, %ecx
	jne	.LBB6_79
# %bb.78:                               # %if.then219
                                        #   in Loop: Header=BB6_68 Depth=2
	movl	$0, -24(%rbp)
	movl	$0, -28(%rbp)
	movl	$0, -32(%rbp)
	movq	-40(%rbp), %rax
	movl	-20(%rbp), %ecx
	addl	$0, %ecx
	movslq	%ecx, %rcx
	movw	(%rax,%rcx,2), %ax
	movw	%ax, -2(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	(%rax), %eax
	addl	-32(%rbp), %eax
	movl	%eax, -32(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	4(%rax), %eax
	addl	-28(%rbp), %eax
	movl	%eax, -28(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	8(%rax), %eax
	addl	-24(%rbp), %eax
	movl	%eax, -24(%rbp)
	movq	-40(%rbp), %rax
	movl	-20(%rbp), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rcx
	movw	(%rax,%rcx,2), %ax
	movw	%ax, -2(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	(%rax), %eax
	addl	-32(%rbp), %eax
	movl	%eax, -32(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	4(%rax), %eax
	addl	-28(%rbp), %eax
	movl	%eax, -28(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	8(%rax), %eax
	addl	-24(%rbp), %eax
	movl	%eax, -24(%rbp)
	movq	-40(%rbp), %rax
	movl	-20(%rbp), %ecx
	addl	$2, %ecx
	movslq	%ecx, %rcx
	movw	(%rax,%rcx,2), %ax
	movw	%ax, -2(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	(%rax), %eax
	addl	-32(%rbp), %eax
	movl	%eax, -32(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	4(%rax), %eax
	addl	-28(%rbp), %eax
	movl	%eax, -28(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	8(%rax), %eax
	addl	-24(%rbp), %eax
	movl	%eax, -24(%rbp)
	movq	-40(%rbp), %rax
	movl	-20(%rbp), %ecx
	addl	$3, %ecx
	movslq	%ecx, %rcx
	movw	(%rax,%rcx,2), %ax
	movw	%ax, -2(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	(%rax), %eax
	addl	-32(%rbp), %eax
	movl	%eax, -32(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	4(%rax), %eax
	addl	-28(%rbp), %eax
	movl	%eax, -28(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	8(%rax), %eax
	addl	-24(%rbp), %eax
	movl	%eax, -24(%rbp)
	movq	-40(%rbp), %rax
	movl	-20(%rbp), %ecx
	addl	$4, %ecx
	movslq	%ecx, %rcx
	movw	(%rax,%rcx,2), %ax
	movw	%ax, -2(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	(%rax), %eax
	addl	-32(%rbp), %eax
	movl	%eax, -32(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	4(%rax), %eax
	addl	-28(%rbp), %eax
	movl	%eax, -28(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	8(%rax), %eax
	addl	-24(%rbp), %eax
	movl	%eax, -24(%rbp)
	movq	-40(%rbp), %rax
	movl	-20(%rbp), %ecx
	addl	$5, %ecx
	movslq	%ecx, %rcx
	movw	(%rax,%rcx,2), %ax
	movw	%ax, -2(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	(%rax), %eax
	addl	-32(%rbp), %eax
	movl	%eax, -32(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	4(%rax), %eax
	addl	-28(%rbp), %eax
	movl	%eax, -28(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	8(%rax), %eax
	addl	-24(%rbp), %eax
	movl	%eax, -24(%rbp)
	movq	-40(%rbp), %rax
	movl	-20(%rbp), %ecx
	addl	$6, %ecx
	movslq	%ecx, %rcx
	movw	(%rax,%rcx,2), %ax
	movw	%ax, -2(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	(%rax), %eax
	addl	-32(%rbp), %eax
	movl	%eax, -32(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	4(%rax), %eax
	addl	-28(%rbp), %eax
	movl	%eax, -28(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	8(%rax), %eax
	addl	-24(%rbp), %eax
	movl	%eax, -24(%rbp)
	movq	-40(%rbp), %rax
	movl	-20(%rbp), %ecx
	addl	$7, %ecx
	movslq	%ecx, %rcx
	movw	(%rax,%rcx,2), %ax
	movw	%ax, -2(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	(%rax), %eax
	addl	-32(%rbp), %eax
	movl	%eax, -32(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	4(%rax), %eax
	addl	-28(%rbp), %eax
	movl	%eax, -28(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	8(%rax), %eax
	addl	-24(%rbp), %eax
	movl	%eax, -24(%rbp)
	movq	-40(%rbp), %rax
	movl	-20(%rbp), %ecx
	addl	$8, %ecx
	movslq	%ecx, %rcx
	movw	(%rax,%rcx,2), %ax
	movw	%ax, -2(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	(%rax), %eax
	addl	-32(%rbp), %eax
	movl	%eax, -32(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	4(%rax), %eax
	addl	-28(%rbp), %eax
	movl	%eax, -28(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	8(%rax), %eax
	addl	-24(%rbp), %eax
	movl	%eax, -24(%rbp)
	movq	-40(%rbp), %rax
	movl	-20(%rbp), %ecx
	addl	$9, %ecx
	movslq	%ecx, %rcx
	movw	(%rax,%rcx,2), %ax
	movw	%ax, -2(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	(%rax), %eax
	addl	-32(%rbp), %eax
	movl	%eax, -32(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	4(%rax), %eax
	addl	-28(%rbp), %eax
	movl	%eax, -28(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	8(%rax), %eax
	addl	-24(%rbp), %eax
	movl	%eax, -24(%rbp)
	movq	-40(%rbp), %rax
	movl	-20(%rbp), %ecx
	addl	$10, %ecx
	movslq	%ecx, %rcx
	movw	(%rax,%rcx,2), %ax
	movw	%ax, -2(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	(%rax), %eax
	addl	-32(%rbp), %eax
	movl	%eax, -32(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	4(%rax), %eax
	addl	-28(%rbp), %eax
	movl	%eax, -28(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	8(%rax), %eax
	addl	-24(%rbp), %eax
	movl	%eax, -24(%rbp)
	movq	-40(%rbp), %rax
	movl	-20(%rbp), %ecx
	addl	$11, %ecx
	movslq	%ecx, %rcx
	movw	(%rax,%rcx,2), %ax
	movw	%ax, -2(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	(%rax), %eax
	addl	-32(%rbp), %eax
	movl	%eax, -32(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	4(%rax), %eax
	addl	-28(%rbp), %eax
	movl	%eax, -28(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	8(%rax), %eax
	addl	-24(%rbp), %eax
	movl	%eax, -24(%rbp)
	movq	-40(%rbp), %rax
	movl	-20(%rbp), %ecx
	addl	$12, %ecx
	movslq	%ecx, %rcx
	movw	(%rax,%rcx,2), %ax
	movw	%ax, -2(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	(%rax), %eax
	addl	-32(%rbp), %eax
	movl	%eax, -32(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	4(%rax), %eax
	addl	-28(%rbp), %eax
	movl	%eax, -28(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	8(%rax), %eax
	addl	-24(%rbp), %eax
	movl	%eax, -24(%rbp)
	movq	-40(%rbp), %rax
	movl	-20(%rbp), %ecx
	addl	$13, %ecx
	movslq	%ecx, %rcx
	movw	(%rax,%rcx,2), %ax
	movw	%ax, -2(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	(%rax), %eax
	addl	-32(%rbp), %eax
	movl	%eax, -32(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	4(%rax), %eax
	addl	-28(%rbp), %eax
	movl	%eax, -28(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	8(%rax), %eax
	addl	-24(%rbp), %eax
	movl	%eax, -24(%rbp)
	movq	-40(%rbp), %rax
	movl	-20(%rbp), %ecx
	addl	$14, %ecx
	movslq	%ecx, %rcx
	movw	(%rax,%rcx,2), %ax
	movw	%ax, -2(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	(%rax), %eax
	addl	-32(%rbp), %eax
	movl	%eax, -32(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	4(%rax), %eax
	addl	-28(%rbp), %eax
	movl	%eax, -28(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	8(%rax), %eax
	addl	-24(%rbp), %eax
	movl	%eax, -24(%rbp)
	movq	-40(%rbp), %rax
	movl	-20(%rbp), %ecx
	addl	$15, %ecx
	movslq	%ecx, %rcx
	movw	(%rax,%rcx,2), %ax
	movw	%ax, -2(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	(%rax), %eax
	addl	-32(%rbp), %eax
	movl	%eax, -32(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	4(%rax), %eax
	addl	-28(%rbp), %eax
	movl	%eax, -28(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	8(%rax), %eax
	addl	-24(%rbp), %eax
	movl	%eax, -24(%rbp)
	movq	-40(%rbp), %rax
	movl	-20(%rbp), %ecx
	addl	$16, %ecx
	movslq	%ecx, %rcx
	movw	(%rax,%rcx,2), %ax
	movw	%ax, -2(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	(%rax), %eax
	addl	-32(%rbp), %eax
	movl	%eax, -32(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	4(%rax), %eax
	addl	-28(%rbp), %eax
	movl	%eax, -28(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	8(%rax), %eax
	addl	-24(%rbp), %eax
	movl	%eax, -24(%rbp)
	movq	-40(%rbp), %rax
	movl	-20(%rbp), %ecx
	addl	$17, %ecx
	movslq	%ecx, %rcx
	movw	(%rax,%rcx,2), %ax
	movw	%ax, -2(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	(%rax), %eax
	addl	-32(%rbp), %eax
	movl	%eax, -32(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	4(%rax), %eax
	addl	-28(%rbp), %eax
	movl	%eax, -28(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	8(%rax), %eax
	addl	-24(%rbp), %eax
	movl	%eax, -24(%rbp)
	movq	-40(%rbp), %rax
	movl	-20(%rbp), %ecx
	addl	$18, %ecx
	movslq	%ecx, %rcx
	movw	(%rax,%rcx,2), %ax
	movw	%ax, -2(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	(%rax), %eax
	addl	-32(%rbp), %eax
	movl	%eax, -32(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	4(%rax), %eax
	addl	-28(%rbp), %eax
	movl	%eax, -28(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	8(%rax), %eax
	addl	-24(%rbp), %eax
	movl	%eax, -24(%rbp)
	movq	-40(%rbp), %rax
	movl	-20(%rbp), %ecx
	addl	$19, %ecx
	movslq	%ecx, %rcx
	movw	(%rax,%rcx,2), %ax
	movw	%ax, -2(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	(%rax), %eax
	addl	-32(%rbp), %eax
	movl	%eax, -32(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	4(%rax), %eax
	addl	-28(%rbp), %eax
	movl	%eax, -28(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	8(%rax), %eax
	addl	-24(%rbp), %eax
	movl	%eax, -24(%rbp)
	movq	-40(%rbp), %rax
	movl	-20(%rbp), %ecx
	addl	$20, %ecx
	movslq	%ecx, %rcx
	movw	(%rax,%rcx,2), %ax
	movw	%ax, -2(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	(%rax), %eax
	addl	-32(%rbp), %eax
	movl	%eax, -32(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	4(%rax), %eax
	addl	-28(%rbp), %eax
	movl	%eax, -28(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	8(%rax), %eax
	addl	-24(%rbp), %eax
	movl	%eax, -24(%rbp)
	movq	-40(%rbp), %rax
	movl	-20(%rbp), %ecx
	addl	$21, %ecx
	movslq	%ecx, %rcx
	movw	(%rax,%rcx,2), %ax
	movw	%ax, -2(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	(%rax), %eax
	addl	-32(%rbp), %eax
	movl	%eax, -32(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	4(%rax), %eax
	addl	-28(%rbp), %eax
	movl	%eax, -28(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	8(%rax), %eax
	addl	-24(%rbp), %eax
	movl	%eax, -24(%rbp)
	movq	-40(%rbp), %rax
	movl	-20(%rbp), %ecx
	addl	$22, %ecx
	movslq	%ecx, %rcx
	movw	(%rax,%rcx,2), %ax
	movw	%ax, -2(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	(%rax), %eax
	addl	-32(%rbp), %eax
	movl	%eax, -32(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	4(%rax), %eax
	addl	-28(%rbp), %eax
	movl	%eax, -28(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	8(%rax), %eax
	addl	-24(%rbp), %eax
	movl	%eax, -24(%rbp)
	movq	-40(%rbp), %rax
	movl	-20(%rbp), %ecx
	addl	$23, %ecx
	movslq	%ecx, %rcx
	movw	(%rax,%rcx,2), %ax
	movw	%ax, -2(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	(%rax), %eax
	addl	-32(%rbp), %eax
	movl	%eax, -32(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	4(%rax), %eax
	addl	-28(%rbp), %eax
	movl	%eax, -28(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	8(%rax), %eax
	addl	-24(%rbp), %eax
	movl	%eax, -24(%rbp)
	movq	-40(%rbp), %rax
	movl	-20(%rbp), %ecx
	addl	$24, %ecx
	movslq	%ecx, %rcx
	movw	(%rax,%rcx,2), %ax
	movw	%ax, -2(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	(%rax), %eax
	addl	-32(%rbp), %eax
	movl	%eax, -32(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	4(%rax), %eax
	addl	-28(%rbp), %eax
	movl	%eax, -28(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	8(%rax), %eax
	addl	-24(%rbp), %eax
	movl	%eax, -24(%rbp)
	movq	-40(%rbp), %rax
	movl	-20(%rbp), %ecx
	addl	$25, %ecx
	movslq	%ecx, %rcx
	movw	(%rax,%rcx,2), %ax
	movw	%ax, -2(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	(%rax), %eax
	addl	-32(%rbp), %eax
	movl	%eax, -32(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	4(%rax), %eax
	addl	-28(%rbp), %eax
	movl	%eax, -28(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	8(%rax), %eax
	addl	-24(%rbp), %eax
	movl	%eax, -24(%rbp)
	movq	-40(%rbp), %rax
	movl	-20(%rbp), %ecx
	addl	$26, %ecx
	movslq	%ecx, %rcx
	movw	(%rax,%rcx,2), %ax
	movw	%ax, -2(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	(%rax), %eax
	addl	-32(%rbp), %eax
	movl	%eax, -32(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	4(%rax), %eax
	addl	-28(%rbp), %eax
	movl	%eax, -28(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	8(%rax), %eax
	addl	-24(%rbp), %eax
	movl	%eax, -24(%rbp)
	movq	-40(%rbp), %rax
	movl	-20(%rbp), %ecx
	addl	$27, %ecx
	movslq	%ecx, %rcx
	movw	(%rax,%rcx,2), %ax
	movw	%ax, -2(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	(%rax), %eax
	addl	-32(%rbp), %eax
	movl	%eax, -32(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	4(%rax), %eax
	addl	-28(%rbp), %eax
	movl	%eax, -28(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	8(%rax), %eax
	addl	-24(%rbp), %eax
	movl	%eax, -24(%rbp)
	movq	-40(%rbp), %rax
	movl	-20(%rbp), %ecx
	addl	$28, %ecx
	movslq	%ecx, %rcx
	movw	(%rax,%rcx,2), %ax
	movw	%ax, -2(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	(%rax), %eax
	addl	-32(%rbp), %eax
	movl	%eax, -32(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	4(%rax), %eax
	addl	-28(%rbp), %eax
	movl	%eax, -28(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	8(%rax), %eax
	addl	-24(%rbp), %eax
	movl	%eax, -24(%rbp)
	movq	-40(%rbp), %rax
	movl	-20(%rbp), %ecx
	addl	$29, %ecx
	movslq	%ecx, %rcx
	movw	(%rax,%rcx,2), %ax
	movw	%ax, -2(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	(%rax), %eax
	addl	-32(%rbp), %eax
	movl	%eax, -32(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	4(%rax), %eax
	addl	-28(%rbp), %eax
	movl	%eax, -28(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	8(%rax), %eax
	addl	-24(%rbp), %eax
	movl	%eax, -24(%rbp)
	movq	-40(%rbp), %rax
	movl	-20(%rbp), %ecx
	addl	$30, %ecx
	movslq	%ecx, %rcx
	movw	(%rax,%rcx,2), %ax
	movw	%ax, -2(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	(%rax), %eax
	addl	-32(%rbp), %eax
	movl	%eax, -32(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	4(%rax), %eax
	addl	-28(%rbp), %eax
	movl	%eax, -28(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	8(%rax), %eax
	addl	-24(%rbp), %eax
	movl	%eax, -24(%rbp)
	movq	-40(%rbp), %rax
	movl	-20(%rbp), %ecx
	addl	$31, %ecx
	movslq	%ecx, %rcx
	movw	(%rax,%rcx,2), %ax
	movw	%ax, -2(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	(%rax), %eax
	addl	-32(%rbp), %eax
	movl	%eax, -32(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	4(%rax), %eax
	addl	-28(%rbp), %eax
	movl	%eax, -28(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	8(%rax), %eax
	addl	-24(%rbp), %eax
	movl	%eax, -24(%rbp)
	movq	-40(%rbp), %rax
	movl	-20(%rbp), %ecx
	addl	$32, %ecx
	movslq	%ecx, %rcx
	movw	(%rax,%rcx,2), %ax
	movw	%ax, -2(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	(%rax), %eax
	addl	-32(%rbp), %eax
	movl	%eax, -32(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	4(%rax), %eax
	addl	-28(%rbp), %eax
	movl	%eax, -28(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	8(%rax), %eax
	addl	-24(%rbp), %eax
	movl	%eax, -24(%rbp)
	movq	-40(%rbp), %rax
	movl	-20(%rbp), %ecx
	addl	$33, %ecx
	movslq	%ecx, %rcx
	movw	(%rax,%rcx,2), %ax
	movw	%ax, -2(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	(%rax), %eax
	addl	-32(%rbp), %eax
	movl	%eax, -32(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	4(%rax), %eax
	addl	-28(%rbp), %eax
	movl	%eax, -28(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	8(%rax), %eax
	addl	-24(%rbp), %eax
	movl	%eax, -24(%rbp)
	movq	-40(%rbp), %rax
	movl	-20(%rbp), %ecx
	addl	$34, %ecx
	movslq	%ecx, %rcx
	movw	(%rax,%rcx,2), %ax
	movw	%ax, -2(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	(%rax), %eax
	addl	-32(%rbp), %eax
	movl	%eax, -32(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	4(%rax), %eax
	addl	-28(%rbp), %eax
	movl	%eax, -28(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	8(%rax), %eax
	addl	-24(%rbp), %eax
	movl	%eax, -24(%rbp)
	movq	-40(%rbp), %rax
	movl	-20(%rbp), %ecx
	addl	$35, %ecx
	movslq	%ecx, %rcx
	movw	(%rax,%rcx,2), %ax
	movw	%ax, -2(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	(%rax), %eax
	addl	-32(%rbp), %eax
	movl	%eax, -32(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	4(%rax), %eax
	addl	-28(%rbp), %eax
	movl	%eax, -28(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	8(%rax), %eax
	addl	-24(%rbp), %eax
	movl	%eax, -24(%rbp)
	movq	-40(%rbp), %rax
	movl	-20(%rbp), %ecx
	addl	$36, %ecx
	movslq	%ecx, %rcx
	movw	(%rax,%rcx,2), %ax
	movw	%ax, -2(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	(%rax), %eax
	addl	-32(%rbp), %eax
	movl	%eax, -32(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	4(%rax), %eax
	addl	-28(%rbp), %eax
	movl	%eax, -28(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	8(%rax), %eax
	addl	-24(%rbp), %eax
	movl	%eax, -24(%rbp)
	movq	-40(%rbp), %rax
	movl	-20(%rbp), %ecx
	addl	$37, %ecx
	movslq	%ecx, %rcx
	movw	(%rax,%rcx,2), %ax
	movw	%ax, -2(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	(%rax), %eax
	addl	-32(%rbp), %eax
	movl	%eax, -32(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	4(%rax), %eax
	addl	-28(%rbp), %eax
	movl	%eax, -28(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	8(%rax), %eax
	addl	-24(%rbp), %eax
	movl	%eax, -24(%rbp)
	movq	-40(%rbp), %rax
	movl	-20(%rbp), %ecx
	addl	$38, %ecx
	movslq	%ecx, %rcx
	movw	(%rax,%rcx,2), %ax
	movw	%ax, -2(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	(%rax), %eax
	addl	-32(%rbp), %eax
	movl	%eax, -32(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	4(%rax), %eax
	addl	-28(%rbp), %eax
	movl	%eax, -28(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	8(%rax), %eax
	addl	-24(%rbp), %eax
	movl	%eax, -24(%rbp)
	movq	-40(%rbp), %rax
	movl	-20(%rbp), %ecx
	addl	$39, %ecx
	movslq	%ecx, %rcx
	movw	(%rax,%rcx,2), %ax
	movw	%ax, -2(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	(%rax), %eax
	addl	-32(%rbp), %eax
	movl	%eax, -32(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	4(%rax), %eax
	addl	-28(%rbp), %eax
	movl	%eax, -28(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	8(%rax), %eax
	addl	-24(%rbp), %eax
	movl	%eax, -24(%rbp)
	movq	-40(%rbp), %rax
	movl	-20(%rbp), %ecx
	addl	$40, %ecx
	movslq	%ecx, %rcx
	movw	(%rax,%rcx,2), %ax
	movw	%ax, -2(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	(%rax), %eax
	addl	-32(%rbp), %eax
	movl	%eax, -32(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	4(%rax), %eax
	addl	-28(%rbp), %eax
	movl	%eax, -28(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	8(%rax), %eax
	addl	-24(%rbp), %eax
	movl	%eax, -24(%rbp)
	movq	-40(%rbp), %rax
	movl	-20(%rbp), %ecx
	addl	$41, %ecx
	movslq	%ecx, %rcx
	movw	(%rax,%rcx,2), %ax
	movw	%ax, -2(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	(%rax), %eax
	addl	-32(%rbp), %eax
	movl	%eax, -32(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	4(%rax), %eax
	addl	-28(%rbp), %eax
	movl	%eax, -28(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	8(%rax), %eax
	addl	-24(%rbp), %eax
	movl	%eax, -24(%rbp)
	movq	-40(%rbp), %rax
	movl	-20(%rbp), %ecx
	addl	$42, %ecx
	movslq	%ecx, %rcx
	movw	(%rax,%rcx,2), %ax
	movw	%ax, -2(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	(%rax), %eax
	addl	-32(%rbp), %eax
	movl	%eax, -32(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	4(%rax), %eax
	addl	-28(%rbp), %eax
	movl	%eax, -28(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	8(%rax), %eax
	addl	-24(%rbp), %eax
	movl	%eax, -24(%rbp)
	movq	-40(%rbp), %rax
	movl	-20(%rbp), %ecx
	addl	$43, %ecx
	movslq	%ecx, %rcx
	movw	(%rax,%rcx,2), %ax
	movw	%ax, -2(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	(%rax), %eax
	addl	-32(%rbp), %eax
	movl	%eax, -32(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	4(%rax), %eax
	addl	-28(%rbp), %eax
	movl	%eax, -28(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	8(%rax), %eax
	addl	-24(%rbp), %eax
	movl	%eax, -24(%rbp)
	movq	-40(%rbp), %rax
	movl	-20(%rbp), %ecx
	addl	$44, %ecx
	movslq	%ecx, %rcx
	movw	(%rax,%rcx,2), %ax
	movw	%ax, -2(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	(%rax), %eax
	addl	-32(%rbp), %eax
	movl	%eax, -32(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	4(%rax), %eax
	addl	-28(%rbp), %eax
	movl	%eax, -28(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	8(%rax), %eax
	addl	-24(%rbp), %eax
	movl	%eax, -24(%rbp)
	movq	-40(%rbp), %rax
	movl	-20(%rbp), %ecx
	addl	$45, %ecx
	movslq	%ecx, %rcx
	movw	(%rax,%rcx,2), %ax
	movw	%ax, -2(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	(%rax), %eax
	addl	-32(%rbp), %eax
	movl	%eax, -32(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	4(%rax), %eax
	addl	-28(%rbp), %eax
	movl	%eax, -28(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	8(%rax), %eax
	addl	-24(%rbp), %eax
	movl	%eax, -24(%rbp)
	movq	-40(%rbp), %rax
	movl	-20(%rbp), %ecx
	addl	$46, %ecx
	movslq	%ecx, %rcx
	movw	(%rax,%rcx,2), %ax
	movw	%ax, -2(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	(%rax), %eax
	addl	-32(%rbp), %eax
	movl	%eax, -32(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	4(%rax), %eax
	addl	-28(%rbp), %eax
	movl	%eax, -28(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	8(%rax), %eax
	addl	-24(%rbp), %eax
	movl	%eax, -24(%rbp)
	movq	-40(%rbp), %rax
	movl	-20(%rbp), %ecx
	addl	$47, %ecx
	movslq	%ecx, %rcx
	movw	(%rax,%rcx,2), %ax
	movw	%ax, -2(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	(%rax), %eax
	addl	-32(%rbp), %eax
	movl	%eax, -32(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	4(%rax), %eax
	addl	-28(%rbp), %eax
	movl	%eax, -28(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	8(%rax), %eax
	addl	-24(%rbp), %eax
	movl	%eax, -24(%rbp)
	movq	-40(%rbp), %rax
	movl	-20(%rbp), %ecx
	addl	$48, %ecx
	movslq	%ecx, %rcx
	movw	(%rax,%rcx,2), %ax
	movw	%ax, -2(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	(%rax), %eax
	addl	-32(%rbp), %eax
	movl	%eax, -32(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	4(%rax), %eax
	addl	-28(%rbp), %eax
	movl	%eax, -28(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	8(%rax), %eax
	addl	-24(%rbp), %eax
	movl	%eax, -24(%rbp)
	movq	-40(%rbp), %rax
	movl	-20(%rbp), %ecx
	addl	$49, %ecx
	movslq	%ecx, %rcx
	movw	(%rax,%rcx,2), %ax
	movw	%ax, -2(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	(%rax), %eax
	addl	-32(%rbp), %eax
	movl	%eax, -32(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	4(%rax), %eax
	addl	-28(%rbp), %eax
	movl	%eax, -28(%rbp)
	movq	-16(%rbp), %rax
	addq	$51640, %rax            # imm = 0xC9B8
	movzwl	-2(%rbp), %ecx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	8(%rax), %eax
	addl	-24(%rbp), %eax
	movl	%eax, -24(%rbp)
	movl	-32(%rbp), %eax
	andl	$65535, %eax            # imm = 0xFFFF
	movw	%ax, -162(%rbp)
	movl	-32(%rbp), %eax
	shrl	$16, %eax
	movw	%ax, -160(%rbp)
	movl	-28(%rbp), %eax
	andl	$65535, %eax            # imm = 0xFFFF
	movw	%ax, -158(%rbp)
	movl	-28(%rbp), %eax
	shrl	$16, %eax
	movw	%ax, -156(%rbp)
	movl	-24(%rbp), %eax
	andl	$65535, %eax            # imm = 0xFFFF
	movw	%ax, -154(%rbp)
	movl	-24(%rbp), %eax
	shrl	$16, %eax
	movw	%ax, -152(%rbp)
	jmp	.LBB6_88
.LBB6_79:                               # %if.else1136
                                        #   in Loop: Header=BB6_68 Depth=2
	movl	-20(%rbp), %eax
	movl	%eax, -44(%rbp)
.LBB6_80:                               # %for.cond1137
                                        #   Parent Loop BB6_48 Depth=1
                                        #     Parent Loop BB6_68 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB6_82 Depth 4
	movl	-44(%rbp), %eax
	cmpl	-60(%rbp), %eax
	jg	.LBB6_87
# %bb.81:                               # %for.body1140
                                        #   in Loop: Header=BB6_80 Depth=3
	movq	-40(%rbp), %rax
	movslq	-44(%rbp), %rcx
	movw	(%rax,%rcx,2), %ax
	movw	%ax, -150(%rbp)
	movl	$0, -48(%rbp)
.LBB6_82:                               # %for.cond1144
                                        #   Parent Loop BB6_48 Depth=1
                                        #     Parent Loop BB6_68 Depth=2
                                        #       Parent Loop BB6_80 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movl	-48(%rbp), %eax
	cmpl	-84(%rbp), %eax
	jge	.LBB6_85
# %bb.83:                               # %for.body1147
                                        #   in Loop: Header=BB6_82 Depth=4
	movq	-16(%rbp), %rax
	addq	$37708, %rax            # imm = 0x934C
	movslq	-48(%rbp), %rcx
	imulq	$258, %rcx, %rcx        # imm = 0x102
	addq	%rcx, %rax
	movzwl	-150(%rbp), %ecx
	movzbl	(%rax,%rcx), %eax
	movslq	-48(%rbp), %rcx
	movzwl	-162(%rbp,%rcx,2), %edx
	addl	%eax, %edx
	movw	%dx, -162(%rbp,%rcx,2)
# %bb.84:                               # %for.inc1159
                                        #   in Loop: Header=BB6_82 Depth=4
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB6_82
.LBB6_85:                               # %for.end1161
                                        #   in Loop: Header=BB6_80 Depth=3
	jmp	.LBB6_86
.LBB6_86:                               # %for.inc1162
                                        #   in Loop: Header=BB6_80 Depth=3
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB6_80
.LBB6_87:                               # %for.end1164
                                        #   in Loop: Header=BB6_68 Depth=2
	jmp	.LBB6_88
.LBB6_88:                               # %if.end1165
                                        #   in Loop: Header=BB6_68 Depth=2
	movl	$999999999, -144(%rbp)  # imm = 0x3B9AC9FF
	movl	$-1, -52(%rbp)
	movl	$0, -48(%rbp)
.LBB6_89:                               # %for.cond1166
                                        #   Parent Loop BB6_48 Depth=1
                                        #     Parent Loop BB6_68 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-48(%rbp), %eax
	cmpl	-84(%rbp), %eax
	jge	.LBB6_94
# %bb.90:                               # %for.body1169
                                        #   in Loop: Header=BB6_89 Depth=3
	movslq	-48(%rbp), %rax
	movzwl	-162(%rbp,%rax,2), %eax
	cmpl	-144(%rbp), %eax
	jge	.LBB6_92
# %bb.91:                               # %if.then1175
                                        #   in Loop: Header=BB6_89 Depth=3
	movslq	-48(%rbp), %rax
	movzwl	-162(%rbp,%rax,2), %eax
	movl	%eax, -144(%rbp)
	movl	-48(%rbp), %eax
	movl	%eax, -52(%rbp)
.LBB6_92:                               # %if.end1179
                                        #   in Loop: Header=BB6_89 Depth=3
	jmp	.LBB6_93
.LBB6_93:                               # %for.inc1180
                                        #   in Loop: Header=BB6_89 Depth=3
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB6_89
.LBB6_94:                               # %for.end1182
                                        #   in Loop: Header=BB6_68 Depth=2
	movl	-144(%rbp), %eax
	addl	-148(%rbp), %eax
	movl	%eax, -148(%rbp)
	movslq	-52(%rbp), %rax
	movl	-224(%rbp,%rax,4), %ecx
	addl	$1, %ecx
	movl	%ecx, -224(%rbp,%rax,4)
	movl	-52(%rbp), %eax
	movq	-16(%rbp), %rcx
	movslq	-104(%rbp), %rdx
	movb	%al, 1704(%rcx,%rdx)
	movl	-104(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -104(%rbp)
	cmpl	$6, -84(%rbp)
	jne	.LBB6_97
# %bb.95:                               # %land.lhs.true1193
                                        #   in Loop: Header=BB6_68 Depth=2
	movl	-60(%rbp), %eax
	subl	-20(%rbp), %eax
	addl	$1, %eax
	movl	$50, %ecx
	cmpl	%eax, %ecx
	jne	.LBB6_97
# %bb.96:                               # %if.then1198
                                        #   in Loop: Header=BB6_68 Depth=2
	movq	-16(%rbp), %rax
	addq	$45448, %rax            # imm = 0xB188
	movslq	-52(%rbp), %rcx
	imulq	$1032, %rcx, %rcx       # imm = 0x408
	addq	%rcx, %rax
	movq	-40(%rbp), %rcx
	movl	-20(%rbp), %edx
	addl	$0, %edx
	movslq	%edx, %rdx
	movzwl	(%rcx,%rdx,2), %ecx
	movl	(%rax,%rcx,4), %edx
	addl	$1, %edx
	movl	%edx, (%rax,%rcx,4)
	movq	-16(%rbp), %rax
	addq	$45448, %rax            # imm = 0xB188
	movslq	-52(%rbp), %rcx
	imulq	$1032, %rcx, %rcx       # imm = 0x408
	addq	%rcx, %rax
	movq	-40(%rbp), %rcx
	movl	-20(%rbp), %edx
	addl	$1, %edx
	movslq	%edx, %rdx
	movzwl	(%rcx,%rdx,2), %ecx
	movl	(%rax,%rcx,4), %edx
	addl	$1, %edx
	movl	%edx, (%rax,%rcx,4)
	movq	-16(%rbp), %rax
	addq	$45448, %rax            # imm = 0xB188
	movslq	-52(%rbp), %rcx
	imulq	$1032, %rcx, %rcx       # imm = 0x408
	addq	%rcx, %rax
	movq	-40(%rbp), %rcx
	movl	-20(%rbp), %edx
	addl	$2, %edx
	movslq	%edx, %rdx
	movzwl	(%rcx,%rdx,2), %ecx
	movl	(%rax,%rcx,4), %edx
	addl	$1, %edx
	movl	%edx, (%rax,%rcx,4)
	movq	-16(%rbp), %rax
	addq	$45448, %rax            # imm = 0xB188
	movslq	-52(%rbp), %rcx
	imulq	$1032, %rcx, %rcx       # imm = 0x408
	addq	%rcx, %rax
	movq	-40(%rbp), %rcx
	movl	-20(%rbp), %edx
	addl	$3, %edx
	movslq	%edx, %rdx
	movzwl	(%rcx,%rdx,2), %ecx
	movl	(%rax,%rcx,4), %edx
	addl	$1, %edx
	movl	%edx, (%rax,%rcx,4)
	movq	-16(%rbp), %rax
	addq	$45448, %rax            # imm = 0xB188
	movslq	-52(%rbp), %rcx
	imulq	$1032, %rcx, %rcx       # imm = 0x408
	addq	%rcx, %rax
	movq	-40(%rbp), %rcx
	movl	-20(%rbp), %edx
	addl	$4, %edx
	movslq	%edx, %rdx
	movzwl	(%rcx,%rdx,2), %ecx
	movl	(%rax,%rcx,4), %edx
	addl	$1, %edx
	movl	%edx, (%rax,%rcx,4)
	movq	-16(%rbp), %rax
	addq	$45448, %rax            # imm = 0xB188
	movslq	-52(%rbp), %rcx
	imulq	$1032, %rcx, %rcx       # imm = 0x408
	addq	%rcx, %rax
	movq	-40(%rbp), %rcx
	movl	-20(%rbp), %edx
	addl	$5, %edx
	movslq	%edx, %rdx
	movzwl	(%rcx,%rdx,2), %ecx
	movl	(%rax,%rcx,4), %edx
	addl	$1, %edx
	movl	%edx, (%rax,%rcx,4)
	movq	-16(%rbp), %rax
	addq	$45448, %rax            # imm = 0xB188
	movslq	-52(%rbp), %rcx
	imulq	$1032, %rcx, %rcx       # imm = 0x408
	addq	%rcx, %rax
	movq	-40(%rbp), %rcx
	movl	-20(%rbp), %edx
	addl	$6, %edx
	movslq	%edx, %rdx
	movzwl	(%rcx,%rdx,2), %ecx
	movl	(%rax,%rcx,4), %edx
	addl	$1, %edx
	movl	%edx, (%rax,%rcx,4)
	movq	-16(%rbp), %rax
	addq	$45448, %rax            # imm = 0xB188
	movslq	-52(%rbp), %rcx
	imulq	$1032, %rcx, %rcx       # imm = 0x408
	addq	%rcx, %rax
	movq	-40(%rbp), %rcx
	movl	-20(%rbp), %edx
	addl	$7, %edx
	movslq	%edx, %rdx
	movzwl	(%rcx,%rdx,2), %ecx
	movl	(%rax,%rcx,4), %edx
	addl	$1, %edx
	movl	%edx, (%rax,%rcx,4)
	movq	-16(%rbp), %rax
	addq	$45448, %rax            # imm = 0xB188
	movslq	-52(%rbp), %rcx
	imulq	$1032, %rcx, %rcx       # imm = 0x408
	addq	%rcx, %rax
	movq	-40(%rbp), %rcx
	movl	-20(%rbp), %edx
	addl	$8, %edx
	movslq	%edx, %rdx
	movzwl	(%rcx,%rdx,2), %ecx
	movl	(%rax,%rcx,4), %edx
	addl	$1, %edx
	movl	%edx, (%rax,%rcx,4)
	movq	-16(%rbp), %rax
	addq	$45448, %rax            # imm = 0xB188
	movslq	-52(%rbp), %rcx
	imulq	$1032, %rcx, %rcx       # imm = 0x408
	addq	%rcx, %rax
	movq	-40(%rbp), %rcx
	movl	-20(%rbp), %edx
	addl	$9, %edx
	movslq	%edx, %rdx
	movzwl	(%rcx,%rdx,2), %ecx
	movl	(%rax,%rcx,4), %edx
	addl	$1, %edx
	movl	%edx, (%rax,%rcx,4)
	movq	-16(%rbp), %rax
	addq	$45448, %rax            # imm = 0xB188
	movslq	-52(%rbp), %rcx
	imulq	$1032, %rcx, %rcx       # imm = 0x408
	addq	%rcx, %rax
	movq	-40(%rbp), %rcx
	movl	-20(%rbp), %edx
	addl	$10, %edx
	movslq	%edx, %rdx
	movzwl	(%rcx,%rdx,2), %ecx
	movl	(%rax,%rcx,4), %edx
	addl	$1, %edx
	movl	%edx, (%rax,%rcx,4)
	movq	-16(%rbp), %rax
	addq	$45448, %rax            # imm = 0xB188
	movslq	-52(%rbp), %rcx
	imulq	$1032, %rcx, %rcx       # imm = 0x408
	addq	%rcx, %rax
	movq	-40(%rbp), %rcx
	movl	-20(%rbp), %edx
	addl	$11, %edx
	movslq	%edx, %rdx
	movzwl	(%rcx,%rdx,2), %ecx
	movl	(%rax,%rcx,4), %edx
	addl	$1, %edx
	movl	%edx, (%rax,%rcx,4)
	movq	-16(%rbp), %rax
	addq	$45448, %rax            # imm = 0xB188
	movslq	-52(%rbp), %rcx
	imulq	$1032, %rcx, %rcx       # imm = 0x408
	addq	%rcx, %rax
	movq	-40(%rbp), %rcx
	movl	-20(%rbp), %edx
	addl	$12, %edx
	movslq	%edx, %rdx
	movzwl	(%rcx,%rdx,2), %ecx
	movl	(%rax,%rcx,4), %edx
	addl	$1, %edx
	movl	%edx, (%rax,%rcx,4)
	movq	-16(%rbp), %rax
	addq	$45448, %rax            # imm = 0xB188
	movslq	-52(%rbp), %rcx
	imulq	$1032, %rcx, %rcx       # imm = 0x408
	addq	%rcx, %rax
	movq	-40(%rbp), %rcx
	movl	-20(%rbp), %edx
	addl	$13, %edx
	movslq	%edx, %rdx
	movzwl	(%rcx,%rdx,2), %ecx
	movl	(%rax,%rcx,4), %edx
	addl	$1, %edx
	movl	%edx, (%rax,%rcx,4)
	movq	-16(%rbp), %rax
	addq	$45448, %rax            # imm = 0xB188
	movslq	-52(%rbp), %rcx
	imulq	$1032, %rcx, %rcx       # imm = 0x408
	addq	%rcx, %rax
	movq	-40(%rbp), %rcx
	movl	-20(%rbp), %edx
	addl	$14, %edx
	movslq	%edx, %rdx
	movzwl	(%rcx,%rdx,2), %ecx
	movl	(%rax,%rcx,4), %edx
	addl	$1, %edx
	movl	%edx, (%rax,%rcx,4)
	movq	-16(%rbp), %rax
	addq	$45448, %rax            # imm = 0xB188
	movslq	-52(%rbp), %rcx
	imulq	$1032, %rcx, %rcx       # imm = 0x408
	addq	%rcx, %rax
	movq	-40(%rbp), %rcx
	movl	-20(%rbp), %edx
	addl	$15, %edx
	movslq	%edx, %rdx
	movzwl	(%rcx,%rdx,2), %ecx
	movl	(%rax,%rcx,4), %edx
	addl	$1, %edx
	movl	%edx, (%rax,%rcx,4)
	movq	-16(%rbp), %rax
	addq	$45448, %rax            # imm = 0xB188
	movslq	-52(%rbp), %rcx
	imulq	$1032, %rcx, %rcx       # imm = 0x408
	addq	%rcx, %rax
	movq	-40(%rbp), %rcx
	movl	-20(%rbp), %edx
	addl	$16, %edx
	movslq	%edx, %rdx
	movzwl	(%rcx,%rdx,2), %ecx
	movl	(%rax,%rcx,4), %edx
	addl	$1, %edx
	movl	%edx, (%rax,%rcx,4)
	movq	-16(%rbp), %rax
	addq	$45448, %rax            # imm = 0xB188
	movslq	-52(%rbp), %rcx
	imulq	$1032, %rcx, %rcx       # imm = 0x408
	addq	%rcx, %rax
	movq	-40(%rbp), %rcx
	movl	-20(%rbp), %edx
	addl	$17, %edx
	movslq	%edx, %rdx
	movzwl	(%rcx,%rdx,2), %ecx
	movl	(%rax,%rcx,4), %edx
	addl	$1, %edx
	movl	%edx, (%rax,%rcx,4)
	movq	-16(%rbp), %rax
	addq	$45448, %rax            # imm = 0xB188
	movslq	-52(%rbp), %rcx
	imulq	$1032, %rcx, %rcx       # imm = 0x408
	addq	%rcx, %rax
	movq	-40(%rbp), %rcx
	movl	-20(%rbp), %edx
	addl	$18, %edx
	movslq	%edx, %rdx
	movzwl	(%rcx,%rdx,2), %ecx
	movl	(%rax,%rcx,4), %edx
	addl	$1, %edx
	movl	%edx, (%rax,%rcx,4)
	movq	-16(%rbp), %rax
	addq	$45448, %rax            # imm = 0xB188
	movslq	-52(%rbp), %rcx
	imulq	$1032, %rcx, %rcx       # imm = 0x408
	addq	%rcx, %rax
	movq	-40(%rbp), %rcx
	movl	-20(%rbp), %edx
	addl	$19, %edx
	movslq	%edx, %rdx
	movzwl	(%rcx,%rdx,2), %ecx
	movl	(%rax,%rcx,4), %edx
	addl	$1, %edx
	movl	%edx, (%rax,%rcx,4)
	movq	-16(%rbp), %rax
	addq	$45448, %rax            # imm = 0xB188
	movslq	-52(%rbp), %rcx
	imulq	$1032, %rcx, %rcx       # imm = 0x408
	addq	%rcx, %rax
	movq	-40(%rbp), %rcx
	movl	-20(%rbp), %edx
	addl	$20, %edx
	movslq	%edx, %rdx
	movzwl	(%rcx,%rdx,2), %ecx
	movl	(%rax,%rcx,4), %edx
	addl	$1, %edx
	movl	%edx, (%rax,%rcx,4)
	movq	-16(%rbp), %rax
	addq	$45448, %rax            # imm = 0xB188
	movslq	-52(%rbp), %rcx
	imulq	$1032, %rcx, %rcx       # imm = 0x408
	addq	%rcx, %rax
	movq	-40(%rbp), %rcx
	movl	-20(%rbp), %edx
	addl	$21, %edx
	movslq	%edx, %rdx
	movzwl	(%rcx,%rdx,2), %ecx
	movl	(%rax,%rcx,4), %edx
	addl	$1, %edx
	movl	%edx, (%rax,%rcx,4)
	movq	-16(%rbp), %rax
	addq	$45448, %rax            # imm = 0xB188
	movslq	-52(%rbp), %rcx
	imulq	$1032, %rcx, %rcx       # imm = 0x408
	addq	%rcx, %rax
	movq	-40(%rbp), %rcx
	movl	-20(%rbp), %edx
	addl	$22, %edx
	movslq	%edx, %rdx
	movzwl	(%rcx,%rdx,2), %ecx
	movl	(%rax,%rcx,4), %edx
	addl	$1, %edx
	movl	%edx, (%rax,%rcx,4)
	movq	-16(%rbp), %rax
	addq	$45448, %rax            # imm = 0xB188
	movslq	-52(%rbp), %rcx
	imulq	$1032, %rcx, %rcx       # imm = 0x408
	addq	%rcx, %rax
	movq	-40(%rbp), %rcx
	movl	-20(%rbp), %edx
	addl	$23, %edx
	movslq	%edx, %rdx
	movzwl	(%rcx,%rdx,2), %ecx
	movl	(%rax,%rcx,4), %edx
	addl	$1, %edx
	movl	%edx, (%rax,%rcx,4)
	movq	-16(%rbp), %rax
	addq	$45448, %rax            # imm = 0xB188
	movslq	-52(%rbp), %rcx
	imulq	$1032, %rcx, %rcx       # imm = 0x408
	addq	%rcx, %rax
	movq	-40(%rbp), %rcx
	movl	-20(%rbp), %edx
	addl	$24, %edx
	movslq	%edx, %rdx
	movzwl	(%rcx,%rdx,2), %ecx
	movl	(%rax,%rcx,4), %edx
	addl	$1, %edx
	movl	%edx, (%rax,%rcx,4)
	movq	-16(%rbp), %rax
	addq	$45448, %rax            # imm = 0xB188
	movslq	-52(%rbp), %rcx
	imulq	$1032, %rcx, %rcx       # imm = 0x408
	addq	%rcx, %rax
	movq	-40(%rbp), %rcx
	movl	-20(%rbp), %edx
	addl	$25, %edx
	movslq	%edx, %rdx
	movzwl	(%rcx,%rdx,2), %ecx
	movl	(%rax,%rcx,4), %edx
	addl	$1, %edx
	movl	%edx, (%rax,%rcx,4)
	movq	-16(%rbp), %rax
	addq	$45448, %rax            # imm = 0xB188
	movslq	-52(%rbp), %rcx
	imulq	$1032, %rcx, %rcx       # imm = 0x408
	addq	%rcx, %rax
	movq	-40(%rbp), %rcx
	movl	-20(%rbp), %edx
	addl	$26, %edx
	movslq	%edx, %rdx
	movzwl	(%rcx,%rdx,2), %ecx
	movl	(%rax,%rcx,4), %edx
	addl	$1, %edx
	movl	%edx, (%rax,%rcx,4)
	movq	-16(%rbp), %rax
	addq	$45448, %rax            # imm = 0xB188
	movslq	-52(%rbp), %rcx
	imulq	$1032, %rcx, %rcx       # imm = 0x408
	addq	%rcx, %rax
	movq	-40(%rbp), %rcx
	movl	-20(%rbp), %edx
	addl	$27, %edx
	movslq	%edx, %rdx
	movzwl	(%rcx,%rdx,2), %ecx
	movl	(%rax,%rcx,4), %edx
	addl	$1, %edx
	movl	%edx, (%rax,%rcx,4)
	movq	-16(%rbp), %rax
	addq	$45448, %rax            # imm = 0xB188
	movslq	-52(%rbp), %rcx
	imulq	$1032, %rcx, %rcx       # imm = 0x408
	addq	%rcx, %rax
	movq	-40(%rbp), %rcx
	movl	-20(%rbp), %edx
	addl	$28, %edx
	movslq	%edx, %rdx
	movzwl	(%rcx,%rdx,2), %ecx
	movl	(%rax,%rcx,4), %edx
	addl	$1, %edx
	movl	%edx, (%rax,%rcx,4)
	movq	-16(%rbp), %rax
	addq	$45448, %rax            # imm = 0xB188
	movslq	-52(%rbp), %rcx
	imulq	$1032, %rcx, %rcx       # imm = 0x408
	addq	%rcx, %rax
	movq	-40(%rbp), %rcx
	movl	-20(%rbp), %edx
	addl	$29, %edx
	movslq	%edx, %rdx
	movzwl	(%rcx,%rdx,2), %ecx
	movl	(%rax,%rcx,4), %edx
	addl	$1, %edx
	movl	%edx, (%rax,%rcx,4)
	movq	-16(%rbp), %rax
	addq	$45448, %rax            # imm = 0xB188
	movslq	-52(%rbp), %rcx
	imulq	$1032, %rcx, %rcx       # imm = 0x408
	addq	%rcx, %rax
	movq	-40(%rbp), %rcx
	movl	-20(%rbp), %edx
	addl	$30, %edx
	movslq	%edx, %rdx
	movzwl	(%rcx,%rdx,2), %ecx
	movl	(%rax,%rcx,4), %edx
	addl	$1, %edx
	movl	%edx, (%rax,%rcx,4)
	movq	-16(%rbp), %rax
	addq	$45448, %rax            # imm = 0xB188
	movslq	-52(%rbp), %rcx
	imulq	$1032, %rcx, %rcx       # imm = 0x408
	addq	%rcx, %rax
	movq	-40(%rbp), %rcx
	movl	-20(%rbp), %edx
	addl	$31, %edx
	movslq	%edx, %rdx
	movzwl	(%rcx,%rdx,2), %ecx
	movl	(%rax,%rcx,4), %edx
	addl	$1, %edx
	movl	%edx, (%rax,%rcx,4)
	movq	-16(%rbp), %rax
	addq	$45448, %rax            # imm = 0xB188
	movslq	-52(%rbp), %rcx
	imulq	$1032, %rcx, %rcx       # imm = 0x408
	addq	%rcx, %rax
	movq	-40(%rbp), %rcx
	movl	-20(%rbp), %edx
	addl	$32, %edx
	movslq	%edx, %rdx
	movzwl	(%rcx,%rdx,2), %ecx
	movl	(%rax,%rcx,4), %edx
	addl	$1, %edx
	movl	%edx, (%rax,%rcx,4)
	movq	-16(%rbp), %rax
	addq	$45448, %rax            # imm = 0xB188
	movslq	-52(%rbp), %rcx
	imulq	$1032, %rcx, %rcx       # imm = 0x408
	addq	%rcx, %rax
	movq	-40(%rbp), %rcx
	movl	-20(%rbp), %edx
	addl	$33, %edx
	movslq	%edx, %rdx
	movzwl	(%rcx,%rdx,2), %ecx
	movl	(%rax,%rcx,4), %edx
	addl	$1, %edx
	movl	%edx, (%rax,%rcx,4)
	movq	-16(%rbp), %rax
	addq	$45448, %rax            # imm = 0xB188
	movslq	-52(%rbp), %rcx
	imulq	$1032, %rcx, %rcx       # imm = 0x408
	addq	%rcx, %rax
	movq	-40(%rbp), %rcx
	movl	-20(%rbp), %edx
	addl	$34, %edx
	movslq	%edx, %rdx
	movzwl	(%rcx,%rdx,2), %ecx
	movl	(%rax,%rcx,4), %edx
	addl	$1, %edx
	movl	%edx, (%rax,%rcx,4)
	movq	-16(%rbp), %rax
	addq	$45448, %rax            # imm = 0xB188
	movslq	-52(%rbp), %rcx
	imulq	$1032, %rcx, %rcx       # imm = 0x408
	addq	%rcx, %rax
	movq	-40(%rbp), %rcx
	movl	-20(%rbp), %edx
	addl	$35, %edx
	movslq	%edx, %rdx
	movzwl	(%rcx,%rdx,2), %ecx
	movl	(%rax,%rcx,4), %edx
	addl	$1, %edx
	movl	%edx, (%rax,%rcx,4)
	movq	-16(%rbp), %rax
	addq	$45448, %rax            # imm = 0xB188
	movslq	-52(%rbp), %rcx
	imulq	$1032, %rcx, %rcx       # imm = 0x408
	addq	%rcx, %rax
	movq	-40(%rbp), %rcx
	movl	-20(%rbp), %edx
	addl	$36, %edx
	movslq	%edx, %rdx
	movzwl	(%rcx,%rdx,2), %ecx
	movl	(%rax,%rcx,4), %edx
	addl	$1, %edx
	movl	%edx, (%rax,%rcx,4)
	movq	-16(%rbp), %rax
	addq	$45448, %rax            # imm = 0xB188
	movslq	-52(%rbp), %rcx
	imulq	$1032, %rcx, %rcx       # imm = 0x408
	addq	%rcx, %rax
	movq	-40(%rbp), %rcx
	movl	-20(%rbp), %edx
	addl	$37, %edx
	movslq	%edx, %rdx
	movzwl	(%rcx,%rdx,2), %ecx
	movl	(%rax,%rcx,4), %edx
	addl	$1, %edx
	movl	%edx, (%rax,%rcx,4)
	movq	-16(%rbp), %rax
	addq	$45448, %rax            # imm = 0xB188
	movslq	-52(%rbp), %rcx
	imulq	$1032, %rcx, %rcx       # imm = 0x408
	addq	%rcx, %rax
	movq	-40(%rbp), %rcx
	movl	-20(%rbp), %edx
	addl	$38, %edx
	movslq	%edx, %rdx
	movzwl	(%rcx,%rdx,2), %ecx
	movl	(%rax,%rcx,4), %edx
	addl	$1, %edx
	movl	%edx, (%rax,%rcx,4)
	movq	-16(%rbp), %rax
	addq	$45448, %rax            # imm = 0xB188
	movslq	-52(%rbp), %rcx
	imulq	$1032, %rcx, %rcx       # imm = 0x408
	addq	%rcx, %rax
	movq	-40(%rbp), %rcx
	movl	-20(%rbp), %edx
	addl	$39, %edx
	movslq	%edx, %rdx
	movzwl	(%rcx,%rdx,2), %ecx
	movl	(%rax,%rcx,4), %edx
	addl	$1, %edx
	movl	%edx, (%rax,%rcx,4)
	movq	-16(%rbp), %rax
	addq	$45448, %rax            # imm = 0xB188
	movslq	-52(%rbp), %rcx
	imulq	$1032, %rcx, %rcx       # imm = 0x408
	addq	%rcx, %rax
	movq	-40(%rbp), %rcx
	movl	-20(%rbp), %edx
	addl	$40, %edx
	movslq	%edx, %rdx
	movzwl	(%rcx,%rdx,2), %ecx
	movl	(%rax,%rcx,4), %edx
	addl	$1, %edx
	movl	%edx, (%rax,%rcx,4)
	movq	-16(%rbp), %rax
	addq	$45448, %rax            # imm = 0xB188
	movslq	-52(%rbp), %rcx
	imulq	$1032, %rcx, %rcx       # imm = 0x408
	addq	%rcx, %rax
	movq	-40(%rbp), %rcx
	movl	-20(%rbp), %edx
	addl	$41, %edx
	movslq	%edx, %rdx
	movzwl	(%rcx,%rdx,2), %ecx
	movl	(%rax,%rcx,4), %edx
	addl	$1, %edx
	movl	%edx, (%rax,%rcx,4)
	movq	-16(%rbp), %rax
	addq	$45448, %rax            # imm = 0xB188
	movslq	-52(%rbp), %rcx
	imulq	$1032, %rcx, %rcx       # imm = 0x408
	addq	%rcx, %rax
	movq	-40(%rbp), %rcx
	movl	-20(%rbp), %edx
	addl	$42, %edx
	movslq	%edx, %rdx
	movzwl	(%rcx,%rdx,2), %ecx
	movl	(%rax,%rcx,4), %edx
	addl	$1, %edx
	movl	%edx, (%rax,%rcx,4)
	movq	-16(%rbp), %rax
	addq	$45448, %rax            # imm = 0xB188
	movslq	-52(%rbp), %rcx
	imulq	$1032, %rcx, %rcx       # imm = 0x408
	addq	%rcx, %rax
	movq	-40(%rbp), %rcx
	movl	-20(%rbp), %edx
	addl	$43, %edx
	movslq	%edx, %rdx
	movzwl	(%rcx,%rdx,2), %ecx
	movl	(%rax,%rcx,4), %edx
	addl	$1, %edx
	movl	%edx, (%rax,%rcx,4)
	movq	-16(%rbp), %rax
	addq	$45448, %rax            # imm = 0xB188
	movslq	-52(%rbp), %rcx
	imulq	$1032, %rcx, %rcx       # imm = 0x408
	addq	%rcx, %rax
	movq	-40(%rbp), %rcx
	movl	-20(%rbp), %edx
	addl	$44, %edx
	movslq	%edx, %rdx
	movzwl	(%rcx,%rdx,2), %ecx
	movl	(%rax,%rcx,4), %edx
	addl	$1, %edx
	movl	%edx, (%rax,%rcx,4)
	movq	-16(%rbp), %rax
	addq	$45448, %rax            # imm = 0xB188
	movslq	-52(%rbp), %rcx
	imulq	$1032, %rcx, %rcx       # imm = 0x408
	addq	%rcx, %rax
	movq	-40(%rbp), %rcx
	movl	-20(%rbp), %edx
	addl	$45, %edx
	movslq	%edx, %rdx
	movzwl	(%rcx,%rdx,2), %ecx
	movl	(%rax,%rcx,4), %edx
	addl	$1, %edx
	movl	%edx, (%rax,%rcx,4)
	movq	-16(%rbp), %rax
	addq	$45448, %rax            # imm = 0xB188
	movslq	-52(%rbp), %rcx
	imulq	$1032, %rcx, %rcx       # imm = 0x408
	addq	%rcx, %rax
	movq	-40(%rbp), %rcx
	movl	-20(%rbp), %edx
	addl	$46, %edx
	movslq	%edx, %rdx
	movzwl	(%rcx,%rdx,2), %ecx
	movl	(%rax,%rcx,4), %edx
	addl	$1, %edx
	movl	%edx, (%rax,%rcx,4)
	movq	-16(%rbp), %rax
	addq	$45448, %rax            # imm = 0xB188
	movslq	-52(%rbp), %rcx
	imulq	$1032, %rcx, %rcx       # imm = 0x408
	addq	%rcx, %rax
	movq	-40(%rbp), %rcx
	movl	-20(%rbp), %edx
	addl	$47, %edx
	movslq	%edx, %rdx
	movzwl	(%rcx,%rdx,2), %ecx
	movl	(%rax,%rcx,4), %edx
	addl	$1, %edx
	movl	%edx, (%rax,%rcx,4)
	movq	-16(%rbp), %rax
	addq	$45448, %rax            # imm = 0xB188
	movslq	-52(%rbp), %rcx
	imulq	$1032, %rcx, %rcx       # imm = 0x408
	addq	%rcx, %rax
	movq	-40(%rbp), %rcx
	movl	-20(%rbp), %edx
	addl	$48, %edx
	movslq	%edx, %rdx
	movzwl	(%rcx,%rdx,2), %ecx
	movl	(%rax,%rcx,4), %edx
	addl	$1, %edx
	movl	%edx, (%rax,%rcx,4)
	movq	-16(%rbp), %rax
	addq	$45448, %rax            # imm = 0xB188
	movslq	-52(%rbp), %rcx
	imulq	$1032, %rcx, %rcx       # imm = 0x408
	addq	%rcx, %rax
	movq	-40(%rbp), %rcx
	movl	-20(%rbp), %edx
	addl	$49, %edx
	movslq	%edx, %rdx
	movzwl	(%rcx,%rdx,2), %ecx
	movl	(%rax,%rcx,4), %edx
	addl	$1, %edx
	movl	%edx, (%rax,%rcx,4)
	jmp	.LBB6_102
.LBB6_97:                               # %if.else1649
                                        #   in Loop: Header=BB6_68 Depth=2
	movl	-20(%rbp), %eax
	movl	%eax, -44(%rbp)
.LBB6_98:                               # %for.cond1650
                                        #   Parent Loop BB6_48 Depth=1
                                        #     Parent Loop BB6_68 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-44(%rbp), %eax
	cmpl	-60(%rbp), %eax
	jg	.LBB6_101
# %bb.99:                               # %for.body1653
                                        #   in Loop: Header=BB6_98 Depth=3
	movq	-16(%rbp), %rax
	addq	$45448, %rax            # imm = 0xB188
	movslq	-52(%rbp), %rcx
	imulq	$1032, %rcx, %rcx       # imm = 0x408
	addq	%rcx, %rax
	movq	-40(%rbp), %rcx
	movslq	-44(%rbp), %rdx
	movzwl	(%rcx,%rdx,2), %ecx
	movl	(%rax,%rcx,4), %edx
	addl	$1, %edx
	movl	%edx, (%rax,%rcx,4)
# %bb.100:                              # %for.inc1662
                                        #   in Loop: Header=BB6_98 Depth=3
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB6_98
.LBB6_101:                              # %for.end1664
                                        #   in Loop: Header=BB6_68 Depth=2
	jmp	.LBB6_102
.LBB6_102:                              # %if.end1665
                                        #   in Loop: Header=BB6_68 Depth=2
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB6_68
.LBB6_103:                              # %while.end1667
                                        #   in Loop: Header=BB6_48 Depth=1
	movq	-16(%rbp), %rax
	cmpl	$3, 656(%rax)
	jl	.LBB6_109
# %bb.104:                              # %if.then1671
                                        #   in Loop: Header=BB6_48 Depth=1
	movq	stderr, %rdi
	movl	-136(%rbp), %ecx
	addl	$1, %ecx
	movl	-148(%rbp), %eax
	cltd
	movl	$8, %esi
	idivl	%esi
	movabsq	$.L.str.4, %rsi
	movl	%ecx, %edx
	movl	%eax, %ecx
	movb	$0, %al
	callq	fprintf
	movl	$0, -48(%rbp)
.LBB6_105:                              # %for.cond1675
                                        #   Parent Loop BB6_48 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-48(%rbp), %eax
	cmpl	-84(%rbp), %eax
	jge	.LBB6_108
# %bb.106:                              # %for.body1678
                                        #   in Loop: Header=BB6_105 Depth=2
	movq	stderr, %rdi
	movslq	-48(%rbp), %rax
	movl	-224(%rbp,%rax,4), %edx
	movabsq	$.L.str.5, %rsi
	movb	$0, %al
	callq	fprintf
# %bb.107:                              # %for.inc1682
                                        #   in Loop: Header=BB6_105 Depth=2
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB6_105
.LBB6_108:                              # %for.end1684
                                        #   in Loop: Header=BB6_48 Depth=1
	movq	stderr, %rdi
	movabsq	$.L.str.6, %rsi
	movb	$0, %al
	callq	fprintf
.LBB6_109:                              # %if.end1686
                                        #   in Loop: Header=BB6_48 Depth=1
	movl	$0, -48(%rbp)
.LBB6_110:                              # %for.cond1687
                                        #   Parent Loop BB6_48 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-48(%rbp), %eax
	cmpl	-84(%rbp), %eax
	jge	.LBB6_113
# %bb.111:                              # %for.body1690
                                        #   in Loop: Header=BB6_110 Depth=2
	movq	-16(%rbp), %rdi
	addq	$37708, %rdi            # imm = 0x934C
	movslq	-48(%rbp), %rax
	imulq	$258, %rax, %rax        # imm = 0x102
	addq	%rax, %rdi
	movq	-16(%rbp), %rsi
	addq	$45448, %rsi            # imm = 0xB188
	movslq	-48(%rbp), %rax
	imulq	$1032, %rax, %rax       # imm = 0x408
	addq	%rax, %rsi
	movl	-100(%rbp), %edx
	movl	$17, %ecx
	callq	BZ2_hbMakeCodeLengths
# %bb.112:                              # %for.inc1699
                                        #   in Loop: Header=BB6_110 Depth=2
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB6_110
.LBB6_113:                              # %for.end1701
                                        #   in Loop: Header=BB6_48 Depth=1
	jmp	.LBB6_114
.LBB6_114:                              # %for.inc1702
                                        #   in Loop: Header=BB6_48 Depth=1
	movl	-136(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -136(%rbp)
	jmp	.LBB6_48
.LBB6_115:                              # %for.end1704
	cmpl	$8, -84(%rbp)
	jl	.LBB6_117
# %bb.116:                              # %if.then1707
	movl	$3002, %edi             # imm = 0xBBA
	callq	BZ2_bz__AssertH__fail
.LBB6_117:                              # %if.end1708
	cmpl	$32768, -104(%rbp)      # imm = 0x8000
	jge	.LBB6_119
# %bb.118:                              # %land.lhs.true1711
	cmpl	$18002, -104(%rbp)      # imm = 0x4652
	jle	.LBB6_120
.LBB6_119:                              # %if.then1714
	movl	$3003, %edi             # imm = 0xBBB
	callq	BZ2_bz__AssertH__fail
.LBB6_120:                              # %if.end1715
	movl	$0, -44(%rbp)
.LBB6_121:                              # %for.cond1716
                                        # =>This Inner Loop Header: Depth=1
	movl	-44(%rbp), %eax
	cmpl	-84(%rbp), %eax
	jge	.LBB6_124
# %bb.122:                              # %for.body1719
                                        #   in Loop: Header=BB6_121 Depth=1
	movl	-44(%rbp), %eax
	movslq	-44(%rbp), %rcx
	movb	%al, -168(%rbp,%rcx)
# %bb.123:                              # %for.inc1723
                                        #   in Loop: Header=BB6_121 Depth=1
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB6_121
.LBB6_124:                              # %for.end1725
	movl	$0, -44(%rbp)
.LBB6_125:                              # %for.cond1726
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_127 Depth 2
	movl	-44(%rbp), %eax
	cmpl	-104(%rbp), %eax
	jge	.LBB6_131
# %bb.126:                              # %for.body1729
                                        #   in Loop: Header=BB6_125 Depth=1
	movq	-16(%rbp), %rax
	movslq	-44(%rbp), %rcx
	movb	1704(%rax,%rcx), %al
	movb	%al, -122(%rbp)
	movl	$0, -88(%rbp)
	movslq	-88(%rbp), %rax
	movb	-168(%rbp,%rax), %al
	movb	%al, -89(%rbp)
.LBB6_127:                              # %while.cond1735
                                        #   Parent Loop BB6_125 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	-122(%rbp), %eax
	movzbl	-89(%rbp), %ecx
	cmpl	%ecx, %eax
	je	.LBB6_129
# %bb.128:                              # %while.body1740
                                        #   in Loop: Header=BB6_127 Depth=2
	movl	-88(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -88(%rbp)
	movb	-89(%rbp), %al
	movb	%al, -121(%rbp)
	movslq	-88(%rbp), %rax
	movb	-168(%rbp,%rax), %al
	movb	%al, -89(%rbp)
	movb	-121(%rbp), %al
	movslq	-88(%rbp), %rcx
	movb	%al, -168(%rbp,%rcx)
	jmp	.LBB6_127
.LBB6_129:                              # %while.end1746
                                        #   in Loop: Header=BB6_125 Depth=1
	movb	-89(%rbp), %al
	movb	%al, -168(%rbp)
	movl	-88(%rbp), %eax
	movq	-16(%rbp), %rcx
	movslq	-44(%rbp), %rdx
	movb	%al, 19706(%rcx,%rdx)
# %bb.130:                              # %for.inc1751
                                        #   in Loop: Header=BB6_125 Depth=1
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB6_125
.LBB6_131:                              # %for.end1753
	movl	$0, -48(%rbp)
.LBB6_132:                              # %for.cond1754
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_134 Depth 2
	movl	-48(%rbp), %eax
	cmpl	-84(%rbp), %eax
	jge	.LBB6_147
# %bb.133:                              # %for.body1757
                                        #   in Loop: Header=BB6_132 Depth=1
	movl	$32, -132(%rbp)
	movl	$0, -128(%rbp)
	movl	$0, -44(%rbp)
.LBB6_134:                              # %for.cond1758
                                        #   Parent Loop BB6_132 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-44(%rbp), %eax
	cmpl	-100(%rbp), %eax
	jge	.LBB6_141
# %bb.135:                              # %for.body1761
                                        #   in Loop: Header=BB6_134 Depth=2
	movq	-16(%rbp), %rax
	addq	$37708, %rax            # imm = 0x934C
	movslq	-48(%rbp), %rcx
	imulq	$258, %rcx, %rcx        # imm = 0x102
	addq	%rcx, %rax
	movslq	-44(%rbp), %rcx
	movzbl	(%rax,%rcx), %eax
	cmpl	-128(%rbp), %eax
	jle	.LBB6_137
# %bb.136:                              # %if.then1770
                                        #   in Loop: Header=BB6_134 Depth=2
	movq	-16(%rbp), %rax
	addq	$37708, %rax            # imm = 0x934C
	movslq	-48(%rbp), %rcx
	imulq	$258, %rcx, %rcx        # imm = 0x102
	addq	%rcx, %rax
	movslq	-44(%rbp), %rcx
	movzbl	(%rax,%rcx), %eax
	movl	%eax, -128(%rbp)
.LBB6_137:                              # %if.end1777
                                        #   in Loop: Header=BB6_134 Depth=2
	movq	-16(%rbp), %rax
	addq	$37708, %rax            # imm = 0x934C
	movslq	-48(%rbp), %rcx
	imulq	$258, %rcx, %rcx        # imm = 0x102
	addq	%rcx, %rax
	movslq	-44(%rbp), %rcx
	movzbl	(%rax,%rcx), %eax
	cmpl	-132(%rbp), %eax
	jge	.LBB6_139
# %bb.138:                              # %if.then1786
                                        #   in Loop: Header=BB6_134 Depth=2
	movq	-16(%rbp), %rax
	addq	$37708, %rax            # imm = 0x934C
	movslq	-48(%rbp), %rcx
	imulq	$258, %rcx, %rcx        # imm = 0x102
	addq	%rcx, %rax
	movslq	-44(%rbp), %rcx
	movzbl	(%rax,%rcx), %eax
	movl	%eax, -132(%rbp)
.LBB6_139:                              # %if.end1793
                                        #   in Loop: Header=BB6_134 Depth=2
	jmp	.LBB6_140
.LBB6_140:                              # %for.inc1794
                                        #   in Loop: Header=BB6_134 Depth=2
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB6_134
.LBB6_141:                              # %for.end1796
                                        #   in Loop: Header=BB6_132 Depth=1
	cmpl	$17, -128(%rbp)
	jle	.LBB6_143
# %bb.142:                              # %if.then1799
                                        #   in Loop: Header=BB6_132 Depth=1
	movl	$3004, %edi             # imm = 0xBBC
	callq	BZ2_bz__AssertH__fail
.LBB6_143:                              # %if.end1800
                                        #   in Loop: Header=BB6_132 Depth=1
	cmpl	$1, -132(%rbp)
	jge	.LBB6_145
# %bb.144:                              # %if.then1803
                                        #   in Loop: Header=BB6_132 Depth=1
	movl	$3005, %edi             # imm = 0xBBD
	callq	BZ2_bz__AssertH__fail
.LBB6_145:                              # %if.end1804
                                        #   in Loop: Header=BB6_132 Depth=1
	movq	-16(%rbp), %rdi
	addq	$39256, %rdi            # imm = 0x9958
	movslq	-48(%rbp), %rax
	imulq	$1032, %rax, %rax       # imm = 0x408
	addq	%rax, %rdi
	movq	-16(%rbp), %rsi
	addq	$37708, %rsi            # imm = 0x934C
	movslq	-48(%rbp), %rax
	imulq	$258, %rax, %rax        # imm = 0x102
	addq	%rax, %rsi
	movl	-132(%rbp), %edx
	movl	-128(%rbp), %ecx
	movl	-100(%rbp), %r8d
	callq	BZ2_hbAssignCodes
# %bb.146:                              # %for.inc1812
                                        #   in Loop: Header=BB6_132 Depth=1
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB6_132
.LBB6_147:                              # %for.end1814
	movl	$0, -44(%rbp)
.LBB6_148:                              # %for.cond1815
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_150 Depth 2
	cmpl	$16, -44(%rbp)
	jge	.LBB6_157
# %bb.149:                              # %for.body1818
                                        #   in Loop: Header=BB6_148 Depth=1
	movslq	-44(%rbp), %rax
	movb	$0, -192(%rbp,%rax)
	movl	$0, -88(%rbp)
.LBB6_150:                              # %for.cond1821
                                        #   Parent Loop BB6_148 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$16, -88(%rbp)
	jge	.LBB6_155
# %bb.151:                              # %for.body1824
                                        #   in Loop: Header=BB6_150 Depth=2
	movq	-16(%rbp), %rax
	movl	-44(%rbp), %ecx
	shll	$4, %ecx
	addl	-88(%rbp), %ecx
	movslq	%ecx, %rcx
	cmpb	$0, 128(%rax,%rcx)
	je	.LBB6_153
# %bb.152:                              # %if.then1829
                                        #   in Loop: Header=BB6_150 Depth=2
	movslq	-44(%rbp), %rax
	movb	$1, -192(%rbp,%rax)
.LBB6_153:                              # %if.end1832
                                        #   in Loop: Header=BB6_150 Depth=2
	jmp	.LBB6_154
.LBB6_154:                              # %for.inc1833
                                        #   in Loop: Header=BB6_150 Depth=2
	movl	-88(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -88(%rbp)
	jmp	.LBB6_150
.LBB6_155:                              # %for.end1835
                                        #   in Loop: Header=BB6_148 Depth=1
	jmp	.LBB6_156
.LBB6_156:                              # %for.inc1836
                                        #   in Loop: Header=BB6_148 Depth=1
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB6_148
.LBB6_157:                              # %for.end1838
	movq	-16(%rbp), %rax
	movl	116(%rax), %eax
	movl	%eax, -120(%rbp)
	movl	$0, -44(%rbp)
.LBB6_158:                              # %for.cond1839
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$16, -44(%rbp)
	jge	.LBB6_164
# %bb.159:                              # %for.body1842
                                        #   in Loop: Header=BB6_158 Depth=1
	movslq	-44(%rbp), %rax
	cmpb	$0, -192(%rbp,%rax)
	je	.LBB6_161
# %bb.160:                              # %if.then1846
                                        #   in Loop: Header=BB6_158 Depth=1
	movq	-16(%rbp), %rdi
	movl	$1, %esi
	movl	$1, %edx
	callq	bsW
	jmp	.LBB6_162
.LBB6_161:                              # %if.else1847
                                        #   in Loop: Header=BB6_158 Depth=1
	movq	-16(%rbp), %rdi
	movl	$1, %esi
	xorl	%edx, %edx
	callq	bsW
.LBB6_162:                              # %if.end1848
                                        #   in Loop: Header=BB6_158 Depth=1
	jmp	.LBB6_163
.LBB6_163:                              # %for.inc1849
                                        #   in Loop: Header=BB6_158 Depth=1
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB6_158
.LBB6_164:                              # %for.end1851
	movl	$0, -44(%rbp)
.LBB6_165:                              # %for.cond1852
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_168 Depth 2
	cmpl	$16, -44(%rbp)
	jge	.LBB6_177
# %bb.166:                              # %for.body1855
                                        #   in Loop: Header=BB6_165 Depth=1
	movslq	-44(%rbp), %rax
	cmpb	$0, -192(%rbp,%rax)
	je	.LBB6_175
# %bb.167:                              # %if.then1859
                                        #   in Loop: Header=BB6_165 Depth=1
	movl	$0, -88(%rbp)
.LBB6_168:                              # %for.cond1860
                                        #   Parent Loop BB6_165 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$16, -88(%rbp)
	jge	.LBB6_174
# %bb.169:                              # %for.body1863
                                        #   in Loop: Header=BB6_168 Depth=2
	movq	-16(%rbp), %rax
	movl	-44(%rbp), %ecx
	shll	$4, %ecx
	addl	-88(%rbp), %ecx
	movslq	%ecx, %rcx
	cmpb	$0, 128(%rax,%rcx)
	je	.LBB6_171
# %bb.170:                              # %if.then1870
                                        #   in Loop: Header=BB6_168 Depth=2
	movq	-16(%rbp), %rdi
	movl	$1, %esi
	movl	$1, %edx
	callq	bsW
	jmp	.LBB6_172
.LBB6_171:                              # %if.else1871
                                        #   in Loop: Header=BB6_168 Depth=2
	movq	-16(%rbp), %rdi
	movl	$1, %esi
	xorl	%edx, %edx
	callq	bsW
.LBB6_172:                              # %if.end1872
                                        #   in Loop: Header=BB6_168 Depth=2
	jmp	.LBB6_173
.LBB6_173:                              # %for.inc1873
                                        #   in Loop: Header=BB6_168 Depth=2
	movl	-88(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -88(%rbp)
	jmp	.LBB6_168
.LBB6_174:                              # %for.end1875
                                        #   in Loop: Header=BB6_165 Depth=1
	jmp	.LBB6_175
.LBB6_175:                              # %if.end1876
                                        #   in Loop: Header=BB6_165 Depth=1
	jmp	.LBB6_176
.LBB6_176:                              # %for.inc1877
                                        #   in Loop: Header=BB6_165 Depth=1
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB6_165
.LBB6_177:                              # %for.end1879
	movq	-16(%rbp), %rax
	cmpl	$3, 656(%rax)
	jl	.LBB6_179
# %bb.178:                              # %if.then1883
	movq	stderr, %rdi
	movq	-16(%rbp), %rax
	movl	116(%rax), %edx
	subl	-120(%rbp), %edx
	movabsq	$.L.str.7, %rsi
	movb	$0, %al
	callq	fprintf
.LBB6_179:                              # %if.end1887
	movq	-16(%rbp), %rax
	movl	116(%rax), %eax
	movl	%eax, -120(%rbp)
	movq	-16(%rbp), %rdi
	movl	-84(%rbp), %edx
	movl	$3, %esi
	callq	bsW
	movq	-16(%rbp), %rdi
	movl	-104(%rbp), %edx
	movl	$15, %esi
	callq	bsW
	movl	$0, -44(%rbp)
.LBB6_180:                              # %for.cond1889
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_182 Depth 2
	movl	-44(%rbp), %eax
	cmpl	-104(%rbp), %eax
	jge	.LBB6_187
# %bb.181:                              # %for.body1892
                                        #   in Loop: Header=BB6_180 Depth=1
	movl	$0, -88(%rbp)
.LBB6_182:                              # %for.cond1893
                                        #   Parent Loop BB6_180 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-88(%rbp), %eax
	movq	-16(%rbp), %rcx
	movslq	-44(%rbp), %rdx
	movzbl	19706(%rcx,%rdx), %ecx
	cmpl	%ecx, %eax
	jge	.LBB6_185
# %bb.183:                              # %for.body1900
                                        #   in Loop: Header=BB6_182 Depth=2
	movq	-16(%rbp), %rdi
	movl	$1, %esi
	movl	$1, %edx
	callq	bsW
# %bb.184:                              # %for.inc1901
                                        #   in Loop: Header=BB6_182 Depth=2
	movl	-88(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -88(%rbp)
	jmp	.LBB6_182
.LBB6_185:                              # %for.end1903
                                        #   in Loop: Header=BB6_180 Depth=1
	movq	-16(%rbp), %rdi
	movl	$1, %esi
	xorl	%edx, %edx
	callq	bsW
# %bb.186:                              # %for.inc1904
                                        #   in Loop: Header=BB6_180 Depth=1
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB6_180
.LBB6_187:                              # %for.end1906
	movq	-16(%rbp), %rax
	cmpl	$3, 656(%rax)
	jl	.LBB6_189
# %bb.188:                              # %if.then1910
	movq	stderr, %rdi
	movq	-16(%rbp), %rax
	movl	116(%rax), %edx
	subl	-120(%rbp), %edx
	movabsq	$.L.str.8, %rsi
	movb	$0, %al
	callq	fprintf
.LBB6_189:                              # %if.end1914
	movq	-16(%rbp), %rax
	movl	116(%rax), %eax
	movl	%eax, -120(%rbp)
	movl	$0, -48(%rbp)
.LBB6_190:                              # %for.cond1916
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_192 Depth 2
                                        #       Child Loop BB6_194 Depth 3
                                        #       Child Loop BB6_197 Depth 3
	movl	-48(%rbp), %eax
	cmpl	-84(%rbp), %eax
	jge	.LBB6_203
# %bb.191:                              # %for.body1919
                                        #   in Loop: Header=BB6_190 Depth=1
	movq	-16(%rbp), %rax
	addq	$37708, %rax            # imm = 0x934C
	movslq	-48(%rbp), %rcx
	imulq	$258, %rcx, %rcx        # imm = 0x102
	addq	%rcx, %rax
	movzbl	(%rax), %eax
	movl	%eax, -116(%rbp)
	movq	-16(%rbp), %rdi
	movl	-116(%rbp), %edx
	movl	$5, %esi
	callq	bsW
	movl	$0, -44(%rbp)
.LBB6_192:                              # %for.cond1925
                                        #   Parent Loop BB6_190 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB6_194 Depth 3
                                        #       Child Loop BB6_197 Depth 3
	movl	-44(%rbp), %eax
	cmpl	-100(%rbp), %eax
	jge	.LBB6_201
# %bb.193:                              # %for.body1928
                                        #   in Loop: Header=BB6_192 Depth=2
	jmp	.LBB6_194
.LBB6_194:                              # %while.cond1929
                                        #   Parent Loop BB6_190 Depth=1
                                        #     Parent Loop BB6_192 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-116(%rbp), %eax
	movq	-16(%rbp), %rcx
	addq	$37708, %rcx            # imm = 0x934C
	movslq	-48(%rbp), %rdx
	imulq	$258, %rdx, %rdx        # imm = 0x102
	addq	%rdx, %rcx
	movslq	-44(%rbp), %rdx
	movzbl	(%rcx,%rdx), %ecx
	cmpl	%ecx, %eax
	jge	.LBB6_196
# %bb.195:                              # %while.body1938
                                        #   in Loop: Header=BB6_194 Depth=3
	movq	-16(%rbp), %rdi
	movl	$2, %esi
	movl	$2, %edx
	callq	bsW
	movl	-116(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -116(%rbp)
	jmp	.LBB6_194
.LBB6_196:                              # %while.end1940
                                        #   in Loop: Header=BB6_192 Depth=2
	jmp	.LBB6_197
.LBB6_197:                              # %while.cond1941
                                        #   Parent Loop BB6_190 Depth=1
                                        #     Parent Loop BB6_192 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-116(%rbp), %eax
	movq	-16(%rbp), %rcx
	addq	$37708, %rcx            # imm = 0x934C
	movslq	-48(%rbp), %rdx
	imulq	$258, %rdx, %rdx        # imm = 0x102
	addq	%rdx, %rcx
	movslq	-44(%rbp), %rdx
	movzbl	(%rcx,%rdx), %ecx
	cmpl	%ecx, %eax
	jle	.LBB6_199
# %bb.198:                              # %while.body1950
                                        #   in Loop: Header=BB6_197 Depth=3
	movq	-16(%rbp), %rdi
	movl	$2, %esi
	movl	$3, %edx
	callq	bsW
	movl	-116(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -116(%rbp)
	jmp	.LBB6_197
.LBB6_199:                              # %while.end1952
                                        #   in Loop: Header=BB6_192 Depth=2
	movq	-16(%rbp), %rdi
	movl	$1, %esi
	xorl	%edx, %edx
	callq	bsW
# %bb.200:                              # %for.inc1953
                                        #   in Loop: Header=BB6_192 Depth=2
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB6_192
.LBB6_201:                              # %for.end1955
                                        #   in Loop: Header=BB6_190 Depth=1
	jmp	.LBB6_202
.LBB6_202:                              # %for.inc1956
                                        #   in Loop: Header=BB6_190 Depth=1
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB6_190
.LBB6_203:                              # %for.end1958
	movq	-16(%rbp), %rax
	cmpl	$3, 656(%rax)
	jl	.LBB6_205
# %bb.204:                              # %if.then1962
	movq	stderr, %rdi
	movq	-16(%rbp), %rax
	movl	116(%rax), %edx
	subl	-120(%rbp), %edx
	movabsq	$.L.str.9, %rsi
	movb	$0, %al
	callq	fprintf
.LBB6_205:                              # %if.end1966
	movq	-16(%rbp), %rax
	movl	116(%rax), %eax
	movl	%eax, -120(%rbp)
	movl	$0, -112(%rbp)
	movl	$0, -20(%rbp)
.LBB6_206:                              # %while.body1969
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_216 Depth 2
	movl	-20(%rbp), %eax
	movq	-16(%rbp), %rcx
	cmpl	668(%rcx), %eax
	jl	.LBB6_208
# %bb.207:                              # %if.then1973
	jmp	.LBB6_221
.LBB6_208:                              # %if.end1974
                                        #   in Loop: Header=BB6_206 Depth=1
	movl	-20(%rbp), %eax
	addl	$50, %eax
	subl	$1, %eax
	movl	%eax, -60(%rbp)
	movl	-60(%rbp), %eax
	movq	-16(%rbp), %rcx
	cmpl	668(%rcx), %eax
	jl	.LBB6_210
# %bb.209:                              # %if.then1980
                                        #   in Loop: Header=BB6_206 Depth=1
	movq	-16(%rbp), %rax
	movl	668(%rax), %eax
	subl	$1, %eax
	movl	%eax, -60(%rbp)
.LBB6_210:                              # %if.end1983
                                        #   in Loop: Header=BB6_206 Depth=1
	movq	-16(%rbp), %rax
	movslq	-112(%rbp), %rcx
	movzbl	1704(%rax,%rcx), %eax
	cmpl	-84(%rbp), %eax
	jl	.LBB6_212
# %bb.211:                              # %if.then1990
                                        #   in Loop: Header=BB6_206 Depth=1
	movl	$3006, %edi             # imm = 0xBBE
	callq	BZ2_bz__AssertH__fail
.LBB6_212:                              # %if.end1991
                                        #   in Loop: Header=BB6_206 Depth=1
	cmpl	$6, -84(%rbp)
	jne	.LBB6_215
# %bb.213:                              # %land.lhs.true1994
                                        #   in Loop: Header=BB6_206 Depth=1
	movl	-60(%rbp), %eax
	subl	-20(%rbp), %eax
	addl	$1, %eax
	movl	$50, %ecx
	cmpl	%eax, %ecx
	jne	.LBB6_215
# %bb.214:                              # %if.then1999
                                        #   in Loop: Header=BB6_206 Depth=1
	movq	-16(%rbp), %rax
	addq	$37708, %rax            # imm = 0x934C
	movq	-16(%rbp), %rcx
	movslq	-112(%rbp), %rdx
	movzbl	1704(%rcx,%rdx), %ecx
	imulq	$258, %rcx, %rcx        # imm = 0x102
	addq	%rcx, %rax
	movq	%rax, -80(%rbp)
	movq	-16(%rbp), %rax
	addq	$39256, %rax            # imm = 0x9958
	movq	-16(%rbp), %rcx
	movslq	-112(%rbp), %rdx
	movzbl	1704(%rcx,%rdx), %ecx
	imulq	$1032, %rcx, %rcx       # imm = 0x408
	addq	%rcx, %rax
	movq	%rax, -72(%rbp)
	movq	-40(%rbp), %rax
	movl	-20(%rbp), %ecx
	addl	$0, %ecx
	movslq	%ecx, %rcx
	movw	(%rax,%rcx,2), %ax
	movw	%ax, -4(%rbp)
	movq	-16(%rbp), %rdi
	movq	-80(%rbp), %rax
	movzwl	-4(%rbp), %ecx
	movzbl	(%rax,%rcx), %esi
	movq	-72(%rbp), %rax
	movzwl	-4(%rbp), %ecx
	movl	(%rax,%rcx,4), %edx
	callq	bsW
	movq	-40(%rbp), %rax
	movl	-20(%rbp), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rcx
	movw	(%rax,%rcx,2), %ax
	movw	%ax, -4(%rbp)
	movq	-16(%rbp), %rdi
	movq	-80(%rbp), %rax
	movzwl	-4(%rbp), %ecx
	movzbl	(%rax,%rcx), %esi
	movq	-72(%rbp), %rax
	movzwl	-4(%rbp), %ecx
	movl	(%rax,%rcx,4), %edx
	callq	bsW
	movq	-40(%rbp), %rax
	movl	-20(%rbp), %ecx
	addl	$2, %ecx
	movslq	%ecx, %rcx
	movw	(%rax,%rcx,2), %ax
	movw	%ax, -4(%rbp)
	movq	-16(%rbp), %rdi
	movq	-80(%rbp), %rax
	movzwl	-4(%rbp), %ecx
	movzbl	(%rax,%rcx), %esi
	movq	-72(%rbp), %rax
	movzwl	-4(%rbp), %ecx
	movl	(%rax,%rcx,4), %edx
	callq	bsW
	movq	-40(%rbp), %rax
	movl	-20(%rbp), %ecx
	addl	$3, %ecx
	movslq	%ecx, %rcx
	movw	(%rax,%rcx,2), %ax
	movw	%ax, -4(%rbp)
	movq	-16(%rbp), %rdi
	movq	-80(%rbp), %rax
	movzwl	-4(%rbp), %ecx
	movzbl	(%rax,%rcx), %esi
	movq	-72(%rbp), %rax
	movzwl	-4(%rbp), %ecx
	movl	(%rax,%rcx,4), %edx
	callq	bsW
	movq	-40(%rbp), %rax
	movl	-20(%rbp), %ecx
	addl	$4, %ecx
	movslq	%ecx, %rcx
	movw	(%rax,%rcx,2), %ax
	movw	%ax, -4(%rbp)
	movq	-16(%rbp), %rdi
	movq	-80(%rbp), %rax
	movzwl	-4(%rbp), %ecx
	movzbl	(%rax,%rcx), %esi
	movq	-72(%rbp), %rax
	movzwl	-4(%rbp), %ecx
	movl	(%rax,%rcx,4), %edx
	callq	bsW
	movq	-40(%rbp), %rax
	movl	-20(%rbp), %ecx
	addl	$5, %ecx
	movslq	%ecx, %rcx
	movw	(%rax,%rcx,2), %ax
	movw	%ax, -4(%rbp)
	movq	-16(%rbp), %rdi
	movq	-80(%rbp), %rax
	movzwl	-4(%rbp), %ecx
	movzbl	(%rax,%rcx), %esi
	movq	-72(%rbp), %rax
	movzwl	-4(%rbp), %ecx
	movl	(%rax,%rcx,4), %edx
	callq	bsW
	movq	-40(%rbp), %rax
	movl	-20(%rbp), %ecx
	addl	$6, %ecx
	movslq	%ecx, %rcx
	movw	(%rax,%rcx,2), %ax
	movw	%ax, -4(%rbp)
	movq	-16(%rbp), %rdi
	movq	-80(%rbp), %rax
	movzwl	-4(%rbp), %ecx
	movzbl	(%rax,%rcx), %esi
	movq	-72(%rbp), %rax
	movzwl	-4(%rbp), %ecx
	movl	(%rax,%rcx,4), %edx
	callq	bsW
	movq	-40(%rbp), %rax
	movl	-20(%rbp), %ecx
	addl	$7, %ecx
	movslq	%ecx, %rcx
	movw	(%rax,%rcx,2), %ax
	movw	%ax, -4(%rbp)
	movq	-16(%rbp), %rdi
	movq	-80(%rbp), %rax
	movzwl	-4(%rbp), %ecx
	movzbl	(%rax,%rcx), %esi
	movq	-72(%rbp), %rax
	movzwl	-4(%rbp), %ecx
	movl	(%rax,%rcx,4), %edx
	callq	bsW
	movq	-40(%rbp), %rax
	movl	-20(%rbp), %ecx
	addl	$8, %ecx
	movslq	%ecx, %rcx
	movw	(%rax,%rcx,2), %ax
	movw	%ax, -4(%rbp)
	movq	-16(%rbp), %rdi
	movq	-80(%rbp), %rax
	movzwl	-4(%rbp), %ecx
	movzbl	(%rax,%rcx), %esi
	movq	-72(%rbp), %rax
	movzwl	-4(%rbp), %ecx
	movl	(%rax,%rcx,4), %edx
	callq	bsW
	movq	-40(%rbp), %rax
	movl	-20(%rbp), %ecx
	addl	$9, %ecx
	movslq	%ecx, %rcx
	movw	(%rax,%rcx,2), %ax
	movw	%ax, -4(%rbp)
	movq	-16(%rbp), %rdi
	movq	-80(%rbp), %rax
	movzwl	-4(%rbp), %ecx
	movzbl	(%rax,%rcx), %esi
	movq	-72(%rbp), %rax
	movzwl	-4(%rbp), %ecx
	movl	(%rax,%rcx,4), %edx
	callq	bsW
	movq	-40(%rbp), %rax
	movl	-20(%rbp), %ecx
	addl	$10, %ecx
	movslq	%ecx, %rcx
	movw	(%rax,%rcx,2), %ax
	movw	%ax, -4(%rbp)
	movq	-16(%rbp), %rdi
	movq	-80(%rbp), %rax
	movzwl	-4(%rbp), %ecx
	movzbl	(%rax,%rcx), %esi
	movq	-72(%rbp), %rax
	movzwl	-4(%rbp), %ecx
	movl	(%rax,%rcx,4), %edx
	callq	bsW
	movq	-40(%rbp), %rax
	movl	-20(%rbp), %ecx
	addl	$11, %ecx
	movslq	%ecx, %rcx
	movw	(%rax,%rcx,2), %ax
	movw	%ax, -4(%rbp)
	movq	-16(%rbp), %rdi
	movq	-80(%rbp), %rax
	movzwl	-4(%rbp), %ecx
	movzbl	(%rax,%rcx), %esi
	movq	-72(%rbp), %rax
	movzwl	-4(%rbp), %ecx
	movl	(%rax,%rcx,4), %edx
	callq	bsW
	movq	-40(%rbp), %rax
	movl	-20(%rbp), %ecx
	addl	$12, %ecx
	movslq	%ecx, %rcx
	movw	(%rax,%rcx,2), %ax
	movw	%ax, -4(%rbp)
	movq	-16(%rbp), %rdi
	movq	-80(%rbp), %rax
	movzwl	-4(%rbp), %ecx
	movzbl	(%rax,%rcx), %esi
	movq	-72(%rbp), %rax
	movzwl	-4(%rbp), %ecx
	movl	(%rax,%rcx,4), %edx
	callq	bsW
	movq	-40(%rbp), %rax
	movl	-20(%rbp), %ecx
	addl	$13, %ecx
	movslq	%ecx, %rcx
	movw	(%rax,%rcx,2), %ax
	movw	%ax, -4(%rbp)
	movq	-16(%rbp), %rdi
	movq	-80(%rbp), %rax
	movzwl	-4(%rbp), %ecx
	movzbl	(%rax,%rcx), %esi
	movq	-72(%rbp), %rax
	movzwl	-4(%rbp), %ecx
	movl	(%rax,%rcx,4), %edx
	callq	bsW
	movq	-40(%rbp), %rax
	movl	-20(%rbp), %ecx
	addl	$14, %ecx
	movslq	%ecx, %rcx
	movw	(%rax,%rcx,2), %ax
	movw	%ax, -4(%rbp)
	movq	-16(%rbp), %rdi
	movq	-80(%rbp), %rax
	movzwl	-4(%rbp), %ecx
	movzbl	(%rax,%rcx), %esi
	movq	-72(%rbp), %rax
	movzwl	-4(%rbp), %ecx
	movl	(%rax,%rcx,4), %edx
	callq	bsW
	movq	-40(%rbp), %rax
	movl	-20(%rbp), %ecx
	addl	$15, %ecx
	movslq	%ecx, %rcx
	movw	(%rax,%rcx,2), %ax
	movw	%ax, -4(%rbp)
	movq	-16(%rbp), %rdi
	movq	-80(%rbp), %rax
	movzwl	-4(%rbp), %ecx
	movzbl	(%rax,%rcx), %esi
	movq	-72(%rbp), %rax
	movzwl	-4(%rbp), %ecx
	movl	(%rax,%rcx,4), %edx
	callq	bsW
	movq	-40(%rbp), %rax
	movl	-20(%rbp), %ecx
	addl	$16, %ecx
	movslq	%ecx, %rcx
	movw	(%rax,%rcx,2), %ax
	movw	%ax, -4(%rbp)
	movq	-16(%rbp), %rdi
	movq	-80(%rbp), %rax
	movzwl	-4(%rbp), %ecx
	movzbl	(%rax,%rcx), %esi
	movq	-72(%rbp), %rax
	movzwl	-4(%rbp), %ecx
	movl	(%rax,%rcx,4), %edx
	callq	bsW
	movq	-40(%rbp), %rax
	movl	-20(%rbp), %ecx
	addl	$17, %ecx
	movslq	%ecx, %rcx
	movw	(%rax,%rcx,2), %ax
	movw	%ax, -4(%rbp)
	movq	-16(%rbp), %rdi
	movq	-80(%rbp), %rax
	movzwl	-4(%rbp), %ecx
	movzbl	(%rax,%rcx), %esi
	movq	-72(%rbp), %rax
	movzwl	-4(%rbp), %ecx
	movl	(%rax,%rcx,4), %edx
	callq	bsW
	movq	-40(%rbp), %rax
	movl	-20(%rbp), %ecx
	addl	$18, %ecx
	movslq	%ecx, %rcx
	movw	(%rax,%rcx,2), %ax
	movw	%ax, -4(%rbp)
	movq	-16(%rbp), %rdi
	movq	-80(%rbp), %rax
	movzwl	-4(%rbp), %ecx
	movzbl	(%rax,%rcx), %esi
	movq	-72(%rbp), %rax
	movzwl	-4(%rbp), %ecx
	movl	(%rax,%rcx,4), %edx
	callq	bsW
	movq	-40(%rbp), %rax
	movl	-20(%rbp), %ecx
	addl	$19, %ecx
	movslq	%ecx, %rcx
	movw	(%rax,%rcx,2), %ax
	movw	%ax, -4(%rbp)
	movq	-16(%rbp), %rdi
	movq	-80(%rbp), %rax
	movzwl	-4(%rbp), %ecx
	movzbl	(%rax,%rcx), %esi
	movq	-72(%rbp), %rax
	movzwl	-4(%rbp), %ecx
	movl	(%rax,%rcx,4), %edx
	callq	bsW
	movq	-40(%rbp), %rax
	movl	-20(%rbp), %ecx
	addl	$20, %ecx
	movslq	%ecx, %rcx
	movw	(%rax,%rcx,2), %ax
	movw	%ax, -4(%rbp)
	movq	-16(%rbp), %rdi
	movq	-80(%rbp), %rax
	movzwl	-4(%rbp), %ecx
	movzbl	(%rax,%rcx), %esi
	movq	-72(%rbp), %rax
	movzwl	-4(%rbp), %ecx
	movl	(%rax,%rcx,4), %edx
	callq	bsW
	movq	-40(%rbp), %rax
	movl	-20(%rbp), %ecx
	addl	$21, %ecx
	movslq	%ecx, %rcx
	movw	(%rax,%rcx,2), %ax
	movw	%ax, -4(%rbp)
	movq	-16(%rbp), %rdi
	movq	-80(%rbp), %rax
	movzwl	-4(%rbp), %ecx
	movzbl	(%rax,%rcx), %esi
	movq	-72(%rbp), %rax
	movzwl	-4(%rbp), %ecx
	movl	(%rax,%rcx,4), %edx
	callq	bsW
	movq	-40(%rbp), %rax
	movl	-20(%rbp), %ecx
	addl	$22, %ecx
	movslq	%ecx, %rcx
	movw	(%rax,%rcx,2), %ax
	movw	%ax, -4(%rbp)
	movq	-16(%rbp), %rdi
	movq	-80(%rbp), %rax
	movzwl	-4(%rbp), %ecx
	movzbl	(%rax,%rcx), %esi
	movq	-72(%rbp), %rax
	movzwl	-4(%rbp), %ecx
	movl	(%rax,%rcx,4), %edx
	callq	bsW
	movq	-40(%rbp), %rax
	movl	-20(%rbp), %ecx
	addl	$23, %ecx
	movslq	%ecx, %rcx
	movw	(%rax,%rcx,2), %ax
	movw	%ax, -4(%rbp)
	movq	-16(%rbp), %rdi
	movq	-80(%rbp), %rax
	movzwl	-4(%rbp), %ecx
	movzbl	(%rax,%rcx), %esi
	movq	-72(%rbp), %rax
	movzwl	-4(%rbp), %ecx
	movl	(%rax,%rcx,4), %edx
	callq	bsW
	movq	-40(%rbp), %rax
	movl	-20(%rbp), %ecx
	addl	$24, %ecx
	movslq	%ecx, %rcx
	movw	(%rax,%rcx,2), %ax
	movw	%ax, -4(%rbp)
	movq	-16(%rbp), %rdi
	movq	-80(%rbp), %rax
	movzwl	-4(%rbp), %ecx
	movzbl	(%rax,%rcx), %esi
	movq	-72(%rbp), %rax
	movzwl	-4(%rbp), %ecx
	movl	(%rax,%rcx,4), %edx
	callq	bsW
	movq	-40(%rbp), %rax
	movl	-20(%rbp), %ecx
	addl	$25, %ecx
	movslq	%ecx, %rcx
	movw	(%rax,%rcx,2), %ax
	movw	%ax, -4(%rbp)
	movq	-16(%rbp), %rdi
	movq	-80(%rbp), %rax
	movzwl	-4(%rbp), %ecx
	movzbl	(%rax,%rcx), %esi
	movq	-72(%rbp), %rax
	movzwl	-4(%rbp), %ecx
	movl	(%rax,%rcx,4), %edx
	callq	bsW
	movq	-40(%rbp), %rax
	movl	-20(%rbp), %ecx
	addl	$26, %ecx
	movslq	%ecx, %rcx
	movw	(%rax,%rcx,2), %ax
	movw	%ax, -4(%rbp)
	movq	-16(%rbp), %rdi
	movq	-80(%rbp), %rax
	movzwl	-4(%rbp), %ecx
	movzbl	(%rax,%rcx), %esi
	movq	-72(%rbp), %rax
	movzwl	-4(%rbp), %ecx
	movl	(%rax,%rcx,4), %edx
	callq	bsW
	movq	-40(%rbp), %rax
	movl	-20(%rbp), %ecx
	addl	$27, %ecx
	movslq	%ecx, %rcx
	movw	(%rax,%rcx,2), %ax
	movw	%ax, -4(%rbp)
	movq	-16(%rbp), %rdi
	movq	-80(%rbp), %rax
	movzwl	-4(%rbp), %ecx
	movzbl	(%rax,%rcx), %esi
	movq	-72(%rbp), %rax
	movzwl	-4(%rbp), %ecx
	movl	(%rax,%rcx,4), %edx
	callq	bsW
	movq	-40(%rbp), %rax
	movl	-20(%rbp), %ecx
	addl	$28, %ecx
	movslq	%ecx, %rcx
	movw	(%rax,%rcx,2), %ax
	movw	%ax, -4(%rbp)
	movq	-16(%rbp), %rdi
	movq	-80(%rbp), %rax
	movzwl	-4(%rbp), %ecx
	movzbl	(%rax,%rcx), %esi
	movq	-72(%rbp), %rax
	movzwl	-4(%rbp), %ecx
	movl	(%rax,%rcx,4), %edx
	callq	bsW
	movq	-40(%rbp), %rax
	movl	-20(%rbp), %ecx
	addl	$29, %ecx
	movslq	%ecx, %rcx
	movw	(%rax,%rcx,2), %ax
	movw	%ax, -4(%rbp)
	movq	-16(%rbp), %rdi
	movq	-80(%rbp), %rax
	movzwl	-4(%rbp), %ecx
	movzbl	(%rax,%rcx), %esi
	movq	-72(%rbp), %rax
	movzwl	-4(%rbp), %ecx
	movl	(%rax,%rcx,4), %edx
	callq	bsW
	movq	-40(%rbp), %rax
	movl	-20(%rbp), %ecx
	addl	$30, %ecx
	movslq	%ecx, %rcx
	movw	(%rax,%rcx,2), %ax
	movw	%ax, -4(%rbp)
	movq	-16(%rbp), %rdi
	movq	-80(%rbp), %rax
	movzwl	-4(%rbp), %ecx
	movzbl	(%rax,%rcx), %esi
	movq	-72(%rbp), %rax
	movzwl	-4(%rbp), %ecx
	movl	(%rax,%rcx,4), %edx
	callq	bsW
	movq	-40(%rbp), %rax
	movl	-20(%rbp), %ecx
	addl	$31, %ecx
	movslq	%ecx, %rcx
	movw	(%rax,%rcx,2), %ax
	movw	%ax, -4(%rbp)
	movq	-16(%rbp), %rdi
	movq	-80(%rbp), %rax
	movzwl	-4(%rbp), %ecx
	movzbl	(%rax,%rcx), %esi
	movq	-72(%rbp), %rax
	movzwl	-4(%rbp), %ecx
	movl	(%rax,%rcx,4), %edx
	callq	bsW
	movq	-40(%rbp), %rax
	movl	-20(%rbp), %ecx
	addl	$32, %ecx
	movslq	%ecx, %rcx
	movw	(%rax,%rcx,2), %ax
	movw	%ax, -4(%rbp)
	movq	-16(%rbp), %rdi
	movq	-80(%rbp), %rax
	movzwl	-4(%rbp), %ecx
	movzbl	(%rax,%rcx), %esi
	movq	-72(%rbp), %rax
	movzwl	-4(%rbp), %ecx
	movl	(%rax,%rcx,4), %edx
	callq	bsW
	movq	-40(%rbp), %rax
	movl	-20(%rbp), %ecx
	addl	$33, %ecx
	movslq	%ecx, %rcx
	movw	(%rax,%rcx,2), %ax
	movw	%ax, -4(%rbp)
	movq	-16(%rbp), %rdi
	movq	-80(%rbp), %rax
	movzwl	-4(%rbp), %ecx
	movzbl	(%rax,%rcx), %esi
	movq	-72(%rbp), %rax
	movzwl	-4(%rbp), %ecx
	movl	(%rax,%rcx,4), %edx
	callq	bsW
	movq	-40(%rbp), %rax
	movl	-20(%rbp), %ecx
	addl	$34, %ecx
	movslq	%ecx, %rcx
	movw	(%rax,%rcx,2), %ax
	movw	%ax, -4(%rbp)
	movq	-16(%rbp), %rdi
	movq	-80(%rbp), %rax
	movzwl	-4(%rbp), %ecx
	movzbl	(%rax,%rcx), %esi
	movq	-72(%rbp), %rax
	movzwl	-4(%rbp), %ecx
	movl	(%rax,%rcx,4), %edx
	callq	bsW
	movq	-40(%rbp), %rax
	movl	-20(%rbp), %ecx
	addl	$35, %ecx
	movslq	%ecx, %rcx
	movw	(%rax,%rcx,2), %ax
	movw	%ax, -4(%rbp)
	movq	-16(%rbp), %rdi
	movq	-80(%rbp), %rax
	movzwl	-4(%rbp), %ecx
	movzbl	(%rax,%rcx), %esi
	movq	-72(%rbp), %rax
	movzwl	-4(%rbp), %ecx
	movl	(%rax,%rcx,4), %edx
	callq	bsW
	movq	-40(%rbp), %rax
	movl	-20(%rbp), %ecx
	addl	$36, %ecx
	movslq	%ecx, %rcx
	movw	(%rax,%rcx,2), %ax
	movw	%ax, -4(%rbp)
	movq	-16(%rbp), %rdi
	movq	-80(%rbp), %rax
	movzwl	-4(%rbp), %ecx
	movzbl	(%rax,%rcx), %esi
	movq	-72(%rbp), %rax
	movzwl	-4(%rbp), %ecx
	movl	(%rax,%rcx,4), %edx
	callq	bsW
	movq	-40(%rbp), %rax
	movl	-20(%rbp), %ecx
	addl	$37, %ecx
	movslq	%ecx, %rcx
	movw	(%rax,%rcx,2), %ax
	movw	%ax, -4(%rbp)
	movq	-16(%rbp), %rdi
	movq	-80(%rbp), %rax
	movzwl	-4(%rbp), %ecx
	movzbl	(%rax,%rcx), %esi
	movq	-72(%rbp), %rax
	movzwl	-4(%rbp), %ecx
	movl	(%rax,%rcx,4), %edx
	callq	bsW
	movq	-40(%rbp), %rax
	movl	-20(%rbp), %ecx
	addl	$38, %ecx
	movslq	%ecx, %rcx
	movw	(%rax,%rcx,2), %ax
	movw	%ax, -4(%rbp)
	movq	-16(%rbp), %rdi
	movq	-80(%rbp), %rax
	movzwl	-4(%rbp), %ecx
	movzbl	(%rax,%rcx), %esi
	movq	-72(%rbp), %rax
	movzwl	-4(%rbp), %ecx
	movl	(%rax,%rcx,4), %edx
	callq	bsW
	movq	-40(%rbp), %rax
	movl	-20(%rbp), %ecx
	addl	$39, %ecx
	movslq	%ecx, %rcx
	movw	(%rax,%rcx,2), %ax
	movw	%ax, -4(%rbp)
	movq	-16(%rbp), %rdi
	movq	-80(%rbp), %rax
	movzwl	-4(%rbp), %ecx
	movzbl	(%rax,%rcx), %esi
	movq	-72(%rbp), %rax
	movzwl	-4(%rbp), %ecx
	movl	(%rax,%rcx,4), %edx
	callq	bsW
	movq	-40(%rbp), %rax
	movl	-20(%rbp), %ecx
	addl	$40, %ecx
	movslq	%ecx, %rcx
	movw	(%rax,%rcx,2), %ax
	movw	%ax, -4(%rbp)
	movq	-16(%rbp), %rdi
	movq	-80(%rbp), %rax
	movzwl	-4(%rbp), %ecx
	movzbl	(%rax,%rcx), %esi
	movq	-72(%rbp), %rax
	movzwl	-4(%rbp), %ecx
	movl	(%rax,%rcx,4), %edx
	callq	bsW
	movq	-40(%rbp), %rax
	movl	-20(%rbp), %ecx
	addl	$41, %ecx
	movslq	%ecx, %rcx
	movw	(%rax,%rcx,2), %ax
	movw	%ax, -4(%rbp)
	movq	-16(%rbp), %rdi
	movq	-80(%rbp), %rax
	movzwl	-4(%rbp), %ecx
	movzbl	(%rax,%rcx), %esi
	movq	-72(%rbp), %rax
	movzwl	-4(%rbp), %ecx
	movl	(%rax,%rcx,4), %edx
	callq	bsW
	movq	-40(%rbp), %rax
	movl	-20(%rbp), %ecx
	addl	$42, %ecx
	movslq	%ecx, %rcx
	movw	(%rax,%rcx,2), %ax
	movw	%ax, -4(%rbp)
	movq	-16(%rbp), %rdi
	movq	-80(%rbp), %rax
	movzwl	-4(%rbp), %ecx
	movzbl	(%rax,%rcx), %esi
	movq	-72(%rbp), %rax
	movzwl	-4(%rbp), %ecx
	movl	(%rax,%rcx,4), %edx
	callq	bsW
	movq	-40(%rbp), %rax
	movl	-20(%rbp), %ecx
	addl	$43, %ecx
	movslq	%ecx, %rcx
	movw	(%rax,%rcx,2), %ax
	movw	%ax, -4(%rbp)
	movq	-16(%rbp), %rdi
	movq	-80(%rbp), %rax
	movzwl	-4(%rbp), %ecx
	movzbl	(%rax,%rcx), %esi
	movq	-72(%rbp), %rax
	movzwl	-4(%rbp), %ecx
	movl	(%rax,%rcx,4), %edx
	callq	bsW
	movq	-40(%rbp), %rax
	movl	-20(%rbp), %ecx
	addl	$44, %ecx
	movslq	%ecx, %rcx
	movw	(%rax,%rcx,2), %ax
	movw	%ax, -4(%rbp)
	movq	-16(%rbp), %rdi
	movq	-80(%rbp), %rax
	movzwl	-4(%rbp), %ecx
	movzbl	(%rax,%rcx), %esi
	movq	-72(%rbp), %rax
	movzwl	-4(%rbp), %ecx
	movl	(%rax,%rcx,4), %edx
	callq	bsW
	movq	-40(%rbp), %rax
	movl	-20(%rbp), %ecx
	addl	$45, %ecx
	movslq	%ecx, %rcx
	movw	(%rax,%rcx,2), %ax
	movw	%ax, -4(%rbp)
	movq	-16(%rbp), %rdi
	movq	-80(%rbp), %rax
	movzwl	-4(%rbp), %ecx
	movzbl	(%rax,%rcx), %esi
	movq	-72(%rbp), %rax
	movzwl	-4(%rbp), %ecx
	movl	(%rax,%rcx,4), %edx
	callq	bsW
	movq	-40(%rbp), %rax
	movl	-20(%rbp), %ecx
	addl	$46, %ecx
	movslq	%ecx, %rcx
	movw	(%rax,%rcx,2), %ax
	movw	%ax, -4(%rbp)
	movq	-16(%rbp), %rdi
	movq	-80(%rbp), %rax
	movzwl	-4(%rbp), %ecx
	movzbl	(%rax,%rcx), %esi
	movq	-72(%rbp), %rax
	movzwl	-4(%rbp), %ecx
	movl	(%rax,%rcx,4), %edx
	callq	bsW
	movq	-40(%rbp), %rax
	movl	-20(%rbp), %ecx
	addl	$47, %ecx
	movslq	%ecx, %rcx
	movw	(%rax,%rcx,2), %ax
	movw	%ax, -4(%rbp)
	movq	-16(%rbp), %rdi
	movq	-80(%rbp), %rax
	movzwl	-4(%rbp), %ecx
	movzbl	(%rax,%rcx), %esi
	movq	-72(%rbp), %rax
	movzwl	-4(%rbp), %ecx
	movl	(%rax,%rcx,4), %edx
	callq	bsW
	movq	-40(%rbp), %rax
	movl	-20(%rbp), %ecx
	addl	$48, %ecx
	movslq	%ecx, %rcx
	movw	(%rax,%rcx,2), %ax
	movw	%ax, -4(%rbp)
	movq	-16(%rbp), %rdi
	movq	-80(%rbp), %rax
	movzwl	-4(%rbp), %ecx
	movzbl	(%rax,%rcx), %esi
	movq	-72(%rbp), %rax
	movzwl	-4(%rbp), %ecx
	movl	(%rax,%rcx,4), %edx
	callq	bsW
	movq	-40(%rbp), %rax
	movl	-20(%rbp), %ecx
	addl	$49, %ecx
	movslq	%ecx, %rcx
	movw	(%rax,%rcx,2), %ax
	movw	%ax, -4(%rbp)
	movq	-16(%rbp), %rdi
	movq	-80(%rbp), %rax
	movzwl	-4(%rbp), %ecx
	movzbl	(%rax,%rcx), %esi
	movq	-72(%rbp), %rax
	movzwl	-4(%rbp), %ecx
	movl	(%rax,%rcx,4), %edx
	callq	bsW
	jmp	.LBB6_220
.LBB6_215:                              # %if.else2414
                                        #   in Loop: Header=BB6_206 Depth=1
	movl	-20(%rbp), %eax
	movl	%eax, -44(%rbp)
.LBB6_216:                              # %for.cond2415
                                        #   Parent Loop BB6_206 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-44(%rbp), %eax
	cmpl	-60(%rbp), %eax
	jg	.LBB6_219
# %bb.217:                              # %for.body2418
                                        #   in Loop: Header=BB6_216 Depth=2
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	addq	$37708, %rax            # imm = 0x934C
	movq	-16(%rbp), %rcx
	movslq	-112(%rbp), %rdx
	movzbl	1704(%rcx,%rdx), %ecx
	imulq	$258, %rcx, %rcx        # imm = 0x102
	addq	%rcx, %rax
	movq	-40(%rbp), %rcx
	movslq	-44(%rbp), %rdx
	movzwl	(%rcx,%rdx,2), %ecx
	movzbl	(%rax,%rcx), %esi
	movq	-16(%rbp), %rax
	addq	$39256, %rax            # imm = 0x9958
	movq	-16(%rbp), %rcx
	movslq	-112(%rbp), %rdx
	movzbl	1704(%rcx,%rdx), %ecx
	imulq	$1032, %rcx, %rcx       # imm = 0x408
	addq	%rcx, %rax
	movq	-40(%rbp), %rcx
	movslq	-44(%rbp), %rdx
	movzwl	(%rcx,%rdx,2), %ecx
	movl	(%rax,%rcx,4), %edx
	callq	bsW
# %bb.218:                              # %for.inc2440
                                        #   in Loop: Header=BB6_216 Depth=2
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB6_216
.LBB6_219:                              # %for.end2442
                                        #   in Loop: Header=BB6_206 Depth=1
	jmp	.LBB6_220
.LBB6_220:                              # %if.end2443
                                        #   in Loop: Header=BB6_206 Depth=1
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	movl	-112(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -112(%rbp)
	jmp	.LBB6_206
.LBB6_221:                              # %while.end2446
	movl	-112(%rbp), %eax
	cmpl	-104(%rbp), %eax
	je	.LBB6_223
# %bb.222:                              # %if.then2449
	movl	$3007, %edi             # imm = 0xBBF
	callq	BZ2_bz__AssertH__fail
.LBB6_223:                              # %if.end2450
	movq	-16(%rbp), %rax
	cmpl	$3, 656(%rax)
	jl	.LBB6_225
# %bb.224:                              # %if.then2454
	movq	stderr, %rdi
	movq	-16(%rbp), %rax
	movl	116(%rax), %edx
	subl	-120(%rbp), %edx
	movabsq	$.L.str.10, %rsi
	movb	$0, %al
	callq	fprintf
.LBB6_225:                              # %if.end2458
	addq	$224, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end6:
	.size	sendMTFValues, .Lfunc_end6-sendMTFValues
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function bsFinishWrite
	.type	bsFinishWrite,@function
bsFinishWrite:                          # @bsFinishWrite
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
.LBB7_1:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-8(%rbp), %rax
	cmpl	$0, 644(%rax)
	jle	.LBB7_3
# %bb.2:                                # %while.body
                                        #   in Loop: Header=BB7_1 Depth=1
	movq	-8(%rbp), %rax
	movl	640(%rax), %eax
	shrl	$24, %eax
	movq	-8(%rbp), %rcx
	movq	80(%rcx), %rcx
	movq	-8(%rbp), %rdx
	movslq	116(%rdx), %rdx
	movb	%al, (%rcx,%rdx)
	movq	-8(%rbp), %rax
	movl	116(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 116(%rax)
	movq	-8(%rbp), %rax
	movl	640(%rax), %ecx
	shll	$8, %ecx
	movl	%ecx, 640(%rax)
	movq	-8(%rbp), %rax
	movl	644(%rax), %ecx
	subl	$8, %ecx
	movl	%ecx, 644(%rax)
	jmp	.LBB7_1
.LBB7_3:                                # %while.end
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end7:
	.size	bsFinishWrite, .Lfunc_end7-bsFinishWrite
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function makeMaps_e
	.type	makeMaps_e,@function
makeMaps_e:                             # @makeMaps_e
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rax
	movl	$0, 124(%rax)
	movl	$0, -4(%rbp)
.LBB8_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$256, -4(%rbp)          # imm = 0x100
	jge	.LBB8_6
# %bb.2:                                # %for.body
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-16(%rbp), %rax
	movslq	-4(%rbp), %rcx
	cmpb	$0, 128(%rax,%rcx)
	je	.LBB8_4
# %bb.3:                                # %if.then
                                        #   in Loop: Header=BB8_1 Depth=1
	movq	-16(%rbp), %rax
	movl	124(%rax), %eax
	movq	-16(%rbp), %rcx
	movslq	-4(%rbp), %rdx
	movb	%al, 384(%rcx,%rdx)
	movq	-16(%rbp), %rax
	movl	124(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 124(%rax)
.LBB8_4:                                # %if.end
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_5
.LBB8_5:                                # %for.inc
                                        #   in Loop: Header=BB8_1 Depth=1
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB8_1
.LBB8_6:                                # %for.end
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end8:
	.size	makeMaps_e, .Lfunc_end8-makeMaps_e
	.cfi_endproc
                                        # -- End function
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"    block %d: crc = 0x%08x, combined CRC = 0x%08x, size = %d\n"
	.size	.L.str, 62

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"    final combined CRC = 0x%08x\n   "
	.size	.L.str.1, 36

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"      %d in block, %d after MTF & 1-2 coding, %d+2 syms in use\n"
	.size	.L.str.2, 64

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"      initial group %d, [%d .. %d], has %d syms (%4.1f%%)\n"
	.size	.L.str.3, 59

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"      pass %d: size is %d, grp uses are "
	.size	.L.str.4, 41

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"%d "
	.size	.L.str.5, 4

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"\n"
	.size	.L.str.6, 2

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"      bytes: mapping %d, "
	.size	.L.str.7, 26

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"selectors %d, "
	.size	.L.str.8, 15

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"code lengths %d, "
	.size	.L.str.9, 18

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"codes %d\n"
	.size	.L.str.10, 10


	.ident	"clang version 9.0.1 (git@github.com:llvm/llvm-project.git 9b2d207cf4b43cfc1a2b6940b3c06e50a1bd127f)"
	.section	".note.GNU-stack","",@progbits