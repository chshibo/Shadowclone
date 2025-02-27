	.text
	.file	"transform8x8.c"
	.globl	Mode_Decision_for_new_Intra8x8Macroblock # -- Begin function Mode_Decision_for_new_Intra8x8Macroblock
	.p2align	4, 0x90
	.type	Mode_Decision_for_new_Intra8x8Macroblock,@function
Mode_Decision_for_new_Intra8x8Macroblock: # @Mode_Decision_for_new_Intra8x8Macroblock
	.cfi_startproc
# %bb.0:                                # %rand_bb
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	pushq	%rax
	.cfi_offset %rbx, -24
	movq	%rdi, %rbx
	vmovsd	%xmm0, -16(%rbp)        # 8-byte Spill
	callq	get_rand
	cmpl	$0, %eax
	jne	.LBB0_5
# %bb.1:                                # %func_Mode_Decision_for_new_Intra8x8Macroblock.3
	vmovsd	-16(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movq	%rbx, %rdi
	callq	Mode_Decision_for_new_Intra8x8Macroblock.3
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB0_2:                                # %func_Mode_Decision_for_new_Intra8x8Macroblock.5
	.cfi_def_cfa %rbp, 16
	movq	%rbx, %rdi
	callq	Mode_Decision_for_new_Intra8x8Macroblock.5
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB0_3:                                # %func_Mode_Decision_for_new_Intra8x8Macroblock.13
	.cfi_def_cfa %rbp, 16
	movq	%rbx, %rdi
	callq	Mode_Decision_for_new_Intra8x8Macroblock.13
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB0_4:                                # %func_Mode_Decision_for_new_Intra8x8Macroblock.22
	.cfi_def_cfa %rbp, 16
	movq	%rbx, %rdi
	callq	Mode_Decision_for_new_Intra8x8Macroblock.22
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB0_5:                                # %ctrl0
	.cfi_def_cfa %rbp, 16
	vmovsd	-16(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	cmpl	$1, %eax
	je	.LBB0_2
# %bb.6:                                # %ctrl1
	cmpl	$2, %eax
	je	.LBB0_3
	jmp	.LBB0_4
.Lfunc_end0:
	.size	Mode_Decision_for_new_Intra8x8Macroblock, .Lfunc_end0-Mode_Decision_for_new_Intra8x8Macroblock
	.cfi_endproc
                                        # -- End function
	.globl	Mode_Decision_for_new_8x8IntraBlocks # -- Begin function Mode_Decision_for_new_8x8IntraBlocks
	.p2align	4, 0x90
	.type	Mode_Decision_for_new_8x8IntraBlocks,@function
Mode_Decision_for_new_8x8IntraBlocks:   # @Mode_Decision_for_new_8x8IntraBlocks
	.cfi_startproc
# %bb.0:                                # %rand_bb
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$16, %rsp
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	movq	%rsi, %r14
	vmovsd	%xmm0, -24(%rbp)        # 8-byte Spill
	movl	%edi, %ebx
	callq	get_rand
	cmpl	$0, %eax
	jne	.LBB1_5
# %bb.1:                                # %func_Mode_Decision_for_new_8x8IntraBlocks.1
	movl	%ebx, %edi
	vmovsd	-24(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movq	%r14, %rsi
	callq	Mode_Decision_for_new_8x8IntraBlocks.1
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB1_2:                                # %func_Mode_Decision_for_new_8x8IntraBlocks.4
	.cfi_def_cfa %rbp, 16
	movl	%ebx, %edi
	movq	%r14, %rsi
	callq	Mode_Decision_for_new_8x8IntraBlocks.4
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB1_3:                                # %func_Mode_Decision_for_new_8x8IntraBlocks.10
	.cfi_def_cfa %rbp, 16
	movl	%ebx, %edi
	movq	%r14, %rsi
	callq	Mode_Decision_for_new_8x8IntraBlocks.10
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB1_4:                                # %func_Mode_Decision_for_new_8x8IntraBlocks.11
	.cfi_def_cfa %rbp, 16
	movl	%ebx, %edi
	movq	%r14, %rsi
	callq	Mode_Decision_for_new_8x8IntraBlocks.11
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB1_5:                                # %ctrl0
	.cfi_def_cfa %rbp, 16
	vmovsd	-24(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	cmpl	$1, %eax
	je	.LBB1_2
# %bb.6:                                # %ctrl1
	cmpl	$2, %eax
	je	.LBB1_3
	jmp	.LBB1_4
.Lfunc_end1:
	.size	Mode_Decision_for_new_8x8IntraBlocks, .Lfunc_end1-Mode_Decision_for_new_8x8IntraBlocks
	.cfi_endproc
                                        # -- End function
	.globl	intrapred_luma8x8       # -- Begin function intrapred_luma8x8
	.p2align	4, 0x90
	.type	intrapred_luma8x8,@function
intrapred_luma8x8:                      # @intrapred_luma8x8
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
	movl	%esi, %r13d
	movl	%edi, %ebx
	callq	get_rand
	cmpl	$0, %eax
	jne	.LBB2_5
# %bb.1:                                # %func_intrapred_luma8x8.2
	movl	%ebx, %edi
	movl	%r13d, %esi
	movq	%r12, %rdx
	movq	%r15, %rcx
	movq	%r14, %r8
	callq	intrapred_luma8x8.2
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB2_2:                                # %func_intrapred_luma8x8.14
	.cfi_def_cfa %rbp, 16
	movl	%ebx, %edi
	movl	%r13d, %esi
	movq	%r12, %rdx
	movq	%r15, %rcx
	movq	%r14, %r8
	callq	intrapred_luma8x8.14
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB2_3:                                # %func_intrapred_luma8x8.17
	.cfi_def_cfa %rbp, 16
	movl	%ebx, %edi
	movl	%r13d, %esi
	movq	%r12, %rdx
	movq	%r15, %rcx
	movq	%r14, %r8
	callq	intrapred_luma8x8.17
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB2_4:                                # %func_intrapred_luma8x8.20
	.cfi_def_cfa %rbp, 16
	movl	%ebx, %edi
	movl	%r13d, %esi
	movq	%r12, %rdx
	movq	%r15, %rcx
	movq	%r14, %r8
	callq	intrapred_luma8x8.20
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
	.size	intrapred_luma8x8, .Lfunc_end2-intrapred_luma8x8
	.cfi_endproc
                                        # -- End function
	.globl	RDCost_for_8x8IntraBlocks # -- Begin function RDCost_for_8x8IntraBlocks
	.p2align	4, 0x90
	.type	RDCost_for_8x8IntraBlocks,@function
RDCost_for_8x8IntraBlocks:              # @RDCost_for_8x8IntraBlocks
	.cfi_startproc
# %bb.0:                                # %rand_bb
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$16, %rsp
	.cfi_offset %rbx, -48
	.cfi_offset %r12, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movl	%ecx, %r14d
	vmovsd	%xmm1, -48(%rbp)        # 8-byte Spill
	vmovsd	%xmm0, -40(%rbp)        # 8-byte Spill
	movl	%edx, %r15d
	movl	%esi, %r12d
	movq	%rdi, %rbx
	callq	get_rand
	cmpl	$0, %eax
	jne	.LBB3_5
# %bb.1:                                # %func_RDCost_for_8x8IntraBlocks.6
	movq	%rbx, %rdi
	movl	%r12d, %esi
	movl	%r15d, %edx
	vmovsd	-40(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	vmovsd	-48(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movl	%r14d, %ecx
	callq	RDCost_for_8x8IntraBlocks.6
	addq	$16, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB3_2:                                # %func_RDCost_for_8x8IntraBlocks.7
	.cfi_def_cfa %rbp, 16
	movq	%rbx, %rdi
	movl	%r12d, %esi
	movl	%r15d, %edx
	movl	%r14d, %ecx
	callq	RDCost_for_8x8IntraBlocks.7
	addq	$16, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB3_3:                                # %func_RDCost_for_8x8IntraBlocks.8
	.cfi_def_cfa %rbp, 16
	movq	%rbx, %rdi
	movl	%r12d, %esi
	movl	%r15d, %edx
	movl	%r14d, %ecx
	callq	RDCost_for_8x8IntraBlocks.8
	addq	$16, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB3_4:                                # %func_RDCost_for_8x8IntraBlocks.12
	.cfi_def_cfa %rbp, 16
	movq	%rbx, %rdi
	movl	%r12d, %esi
	movl	%r15d, %edx
	movl	%r14d, %ecx
	callq	RDCost_for_8x8IntraBlocks.12
	addq	$16, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB3_5:                                # %ctrl0
	.cfi_def_cfa %rbp, 16
	vmovsd	-40(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	vmovsd	-48(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	cmpl	$1, %eax
	je	.LBB3_2
# %bb.6:                                # %ctrl1
	cmpl	$2, %eax
	je	.LBB3_3
	jmp	.LBB3_4
.Lfunc_end3:
	.size	RDCost_for_8x8IntraBlocks, .Lfunc_end3-RDCost_for_8x8IntraBlocks
	.cfi_endproc
                                        # -- End function
	.globl	dct_luma8x8             # -- Begin function dct_luma8x8
	.p2align	4, 0x90
	.type	dct_luma8x8,@function
dct_luma8x8:                            # @dct_luma8x8
	.cfi_startproc
# %bb.0:                                # %rand_bb
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	.cfi_offset %rbx, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movl	%edx, %r14d
	movq	%rsi, %r15
	movl	%edi, %ebx
	callq	get_rand
	cmpl	$0, %eax
	jne	.LBB4_5
# %bb.1:                                # %func_dct_luma8x8.18
	movl	%ebx, %edi
	movq	%r15, %rsi
	movl	%r14d, %edx
	callq	dct_luma8x8.18
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB4_2:                                # %func_dct_luma8x8.21
	.cfi_def_cfa %rbp, 16
	movl	%ebx, %edi
	movq	%r15, %rsi
	movl	%r14d, %edx
	callq	dct_luma8x8.21
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB4_3:                                # %func_dct_luma8x8.23
	.cfi_def_cfa %rbp, 16
	movl	%ebx, %edi
	movq	%r15, %rsi
	movl	%r14d, %edx
	callq	dct_luma8x8.23
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB4_4:                                # %func_dct_luma8x8.24
	.cfi_def_cfa %rbp, 16
	movl	%ebx, %edi
	movq	%r15, %rsi
	movl	%r14d, %edx
	callq	dct_luma8x8.24
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB4_5:                                # %ctrl0
	.cfi_def_cfa %rbp, 16
	cmpl	$1, %eax
	je	.LBB4_2
# %bb.6:                                # %ctrl1
	cmpl	$2, %eax
	je	.LBB4_3
	jmp	.LBB4_4
.Lfunc_end4:
	.size	dct_luma8x8, .Lfunc_end4-dct_luma8x8
	.cfi_endproc
                                        # -- End function
	.globl	LowPassForIntra8x8Pred  # -- Begin function LowPassForIntra8x8Pred
	.p2align	4, 0x90
	.type	LowPassForIntra8x8Pred,@function
LowPassForIntra8x8Pred:                 # @LowPassForIntra8x8Pred
	.cfi_startproc
# %bb.0:                                # %rand_bb
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	.cfi_offset %rbx, -48
	.cfi_offset %r12, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movl	%ecx, %r14d
	movl	%edx, %r15d
	movl	%esi, %r12d
	movq	%rdi, %rbx
	callq	get_rand
	cmpl	$0, %eax
	jne	.LBB5_5
# %bb.1:                                # %func_LowPassForIntra8x8Pred.9
	movq	%rbx, %rdi
	movl	%r12d, %esi
	movl	%r15d, %edx
	movl	%r14d, %ecx
	callq	LowPassForIntra8x8Pred.9
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB5_2:                                # %func_LowPassForIntra8x8Pred.15
	.cfi_def_cfa %rbp, 16
	movq	%rbx, %rdi
	movl	%r12d, %esi
	movl	%r15d, %edx
	movl	%r14d, %ecx
	callq	LowPassForIntra8x8Pred.15
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB5_3:                                # %func_LowPassForIntra8x8Pred.16
	.cfi_def_cfa %rbp, 16
	movq	%rbx, %rdi
	movl	%r12d, %esi
	movl	%r15d, %edx
	movl	%r14d, %ecx
	callq	LowPassForIntra8x8Pred.16
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB5_4:                                # %func_LowPassForIntra8x8Pred.19
	.cfi_def_cfa %rbp, 16
	movq	%rbx, %rdi
	movl	%r12d, %esi
	movl	%r15d, %edx
	movl	%r14d, %ecx
	callq	LowPassForIntra8x8Pred.19
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB5_5:                                # %ctrl0
	.cfi_def_cfa %rbp, 16
	cmpl	$1, %eax
	je	.LBB5_2
# %bb.6:                                # %ctrl1
	cmpl	$2, %eax
	je	.LBB5_3
	jmp	.LBB5_4
.Lfunc_end5:
	.size	LowPassForIntra8x8Pred, .Lfunc_end5-LowPassForIntra8x8Pred
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function Mode_Decision_for_new_8x8IntraBlocks.1
.LCPI6_0:
	.quad	5055640609639927018     # double 1.0E+30
.LCPI6_1:
	.quad	4616189618054758400     # double 4
	.text
	.globl	Mode_Decision_for_new_8x8IntraBlocks.1
	.p2align	4, 0x90
	.type	Mode_Decision_for_new_8x8IntraBlocks.1,@function
Mode_Decision_for_new_8x8IntraBlocks.1: # @Mode_Decision_for_new_8x8IntraBlocks.1
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$1144, %rsp             # imm = 0x478
	.cfi_offset %rbx, -24
	vmovsd	.LCPI6_0(%rip), %xmm1   # xmm1 = mem[0],zero
	movl	$716035634, -196(%rbp)  # imm = 0x2AADD632
	movl	%edi, -32(%rbp)
	vmovsd	%xmm0, -152(%rbp)
	movq	%rsi, -160(%rbp)
	movl	$0, -60(%rbp)
	movl	$0, -108(%rbp)
	vxorps	%xmm0, %xmm0, %xmm0
	vmovsd	%xmm0, -144(%rbp)
	movl	-32(%rbp), %eax
	cltd
	movl	$2, %ecx
	idivl	%ecx
	shll	$3, %edx
	movl	%edx, -36(%rbp)
	movl	-32(%rbp), %eax
	cltd
	idivl	%ecx
	shll	$3, %eax
	movl	%eax, -40(%rbp)
	movq	img, %rax
	movl	152(%rax), %eax
	addl	-36(%rbp), %eax
	movl	%eax, -68(%rbp)
	movq	img, %rax
	movl	156(%rax), %eax
	addl	-40(%rbp), %eax
	movl	%eax, -44(%rbp)
	movq	img, %rax
	movl	168(%rax), %eax
	addl	-36(%rbp), %eax
	movl	%eax, -96(%rbp)
	movq	img, %rax
	movl	172(%rax), %eax
	addl	-40(%rbp), %eax
	movl	%eax, -92(%rbp)
	movl	-68(%rbp), %eax
	cltd
	movl	$4, %ecx
	idivl	%ecx
	movl	%eax, -192(%rbp)
	movl	-44(%rbp), %eax
	cltd
	idivl	%ecx
	movl	%eax, -176(%rbp)
	vmovsd	%xmm1, -136(%rbp)
	movq	imgY_org, %rax
	movq	%rax, -168(%rbp)
	movq	img, %rax
	movq	14168(%rax), %rax
	movq	img, %rdx
	movslq	12(%rdx), %rdx
	imulq	$632, %rdx, %rdx        # imm = 0x278
	addq	%rdx, %rax
	movl	524(%rax), %eax
	movl	%eax, -56(%rbp)
	movq	img, %rax
	movl	12(%rax), %edi
	movl	-36(%rbp), %eax
	cltd
	idivl	%ecx
	movl	%eax, %esi
	movl	-40(%rbp), %eax
	cltd
	idivl	%ecx
	movl	%eax, %edx
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	xorl	%r8d, %r8d
	leaq	-224(%rbp), %r9
	callq	getLuma4x4Neighbour
	movq	img, %rax
	movl	12(%rax), %edi
	movl	-36(%rbp), %eax
	cltd
	movl	$4, %ecx
	idivl	%ecx
	movl	%eax, %esi
	movl	-40(%rbp), %eax
	cltd
	idivl	%ecx
	movl	%eax, %edx
	movl	$0, %ecx
	movl	$4294967295, %r8d       # imm = 0xFFFFFFFF
	leaq	-248(%rbp), %r9
	callq	getLuma4x4Neighbour
	movq	input, %rax
	cmpl	$0, 216(%rax)
	je	.LBB6_8
# %bb.1:                                # %if.then
	cmpl	$0, -248(%rbp)
	je	.LBB6_3
# %bb.2:                                # %cond.true
	movq	img, %rax
	movq	71784(%rax), %rax
	movslq	-244(%rbp), %rcx
	movl	(%rax,%rcx,4), %eax
	jmp	.LBB6_4
.LBB6_3:                                # %cond.false
	xorl	%eax, %eax
	jmp	.LBB6_4
.LBB6_4:                                # %cond.end
	movl	%eax, -248(%rbp)
	cmpl	$0, -224(%rbp)
	je	.LBB6_6
# %bb.5:                                # %cond.true19
	movq	img, %rax
	movq	71784(%rax), %rax
	movslq	-220(%rbp), %rcx
	movl	(%rax,%rcx,4), %eax
	jmp	.LBB6_7
.LBB6_6:                                # %cond.false24
	xorl	%eax, %eax
	jmp	.LBB6_7
.LBB6_7:                                # %cond.end25
	movl	%eax, -224(%rbp)
.LBB6_8:                                # %if.end
	movl	-32(%rbp), %eax
	cltd
	movl	$2, %ecx
	idivl	%ecx
	cmpl	$0, %eax
	je	.LBB6_13
# %bb.9:                                # %if.then30
	cmpl	$0, -248(%rbp)
	je	.LBB6_11
# %bb.10:                               # %cond.true33
	movq	img, %rax
	movq	112(%rax), %rax
	movslq	-232(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movslq	-228(%rbp), %rcx
	movl	(%rax,%rcx,4), %eax
	jmp	.LBB6_12
.LBB6_11:                               # %cond.false38
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	jmp	.LBB6_12
.LBB6_12:                               # %cond.end39
	movl	%eax, -116(%rbp)
	jmp	.LBB6_17
.LBB6_13:                               # %if.else
	cmpl	$0, -248(%rbp)
	je	.LBB6_15
# %bb.14:                               # %cond.true43
	movq	img, %rax
	movq	104(%rax), %rax
	movslq	-232(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movslq	-228(%rbp), %rcx
	movl	(%rax,%rcx,4), %eax
	jmp	.LBB6_16
.LBB6_15:                               # %cond.false50
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	jmp	.LBB6_16
.LBB6_16:                               # %cond.end51
	movl	%eax, -116(%rbp)
.LBB6_17:                               # %if.end53
	movl	-32(%rbp), %eax
	cltd
	movl	$2, %ecx
	idivl	%ecx
	cmpl	$0, %edx
	je	.LBB6_22
# %bb.18:                               # %if.then56
	cmpl	$0, -224(%rbp)
	je	.LBB6_20
# %bb.19:                               # %cond.true59
	movq	img, %rax
	movq	112(%rax), %rax
	movslq	-208(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movslq	-204(%rbp), %rcx
	movl	(%rax,%rcx,4), %eax
	jmp	.LBB6_21
.LBB6_20:                               # %cond.false67
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	jmp	.LBB6_21
.LBB6_21:                               # %cond.end68
	movl	%eax, -120(%rbp)
	jmp	.LBB6_26
.LBB6_22:                               # %if.else70
	cmpl	$0, -224(%rbp)
	je	.LBB6_24
# %bb.23:                               # %cond.true73
	movq	img, %rax
	movq	104(%rax), %rax
	movslq	-208(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movslq	-204(%rbp), %rcx
	movl	(%rax,%rcx,4), %eax
	jmp	.LBB6_25
.LBB6_24:                               # %cond.false81
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	jmp	.LBB6_25
.LBB6_25:                               # %cond.end82
	movl	%eax, -120(%rbp)
.LBB6_26:                               # %if.end84
	cmpl	$0, -116(%rbp)
	jl	.LBB6_28
# %bb.27:                               # %lor.lhs.false
	cmpl	$0, -120(%rbp)
	jge	.LBB6_29
.LBB6_28:                               # %cond.true86
	movl	$2, %eax
	jmp	.LBB6_33
.LBB6_29:                               # %cond.false87
	movl	-116(%rbp), %eax
	cmpl	-120(%rbp), %eax
	jge	.LBB6_31
# %bb.30:                               # %cond.true89
	movl	-116(%rbp), %eax
	jmp	.LBB6_32
.LBB6_31:                               # %cond.false90
	movl	-120(%rbp), %eax
.LBB6_32:                               # %cond.end91
.LBB6_33:                               # %cond.end93
	movl	%eax, -104(%rbp)
	movq	-160(%rbp), %rax
	movl	$2147483647, (%rax)     # imm = 0x7FFFFFFF
	movl	-68(%rbp), %edi
	movl	-44(%rbp), %esi
	leaq	-188(%rbp), %rdx
	leaq	-184(%rbp), %rcx
	leaq	-180(%rbp), %r8
	callq	intrapred_luma8x8
	movl	$0, -48(%rbp)
.LBB6_34:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_46 Depth 2
                                        #       Child Loop BB6_48 Depth 3
                                        #     Child Loop BB6_61 Depth 2
                                        #       Child Loop BB6_63 Depth 3
                                        #     Child Loop BB6_70 Depth 2
                                        #       Child Loop BB6_72 Depth 3
                                        #         Child Loop BB6_74 Depth 4
                                        #     Child Loop BB6_82 Depth 2
                                        #       Child Loop BB6_84 Depth 3
                                        #     Child Loop BB6_92 Depth 2
                                        #       Child Loop BB6_94 Depth 3
                                        #     Child Loop BB6_100 Depth 2
                                        #       Child Loop BB6_102 Depth 3
                                        #     Child Loop BB6_108 Depth 2
                                        #       Child Loop BB6_110 Depth 3
                                        #     Child Loop BB6_116 Depth 2
                                        #       Child Loop BB6_118 Depth 3
                                        #         Child Loop BB6_120 Depth 4
                                        #       Child Loop BB6_126 Depth 3
                                        #         Child Loop BB6_128 Depth 4
                                        #       Child Loop BB6_134 Depth 3
                                        #         Child Loop BB6_136 Depth 4
                                        #     Child Loop BB6_144 Depth 2
                                        #       Child Loop BB6_146 Depth 3
                                        #     Child Loop BB6_179 Depth 2
                                        #       Child Loop BB6_181 Depth 3
                                        #     Child Loop BB6_188 Depth 2
                                        #       Child Loop BB6_190 Depth 3
                                        #         Child Loop BB6_192 Depth 4
                                        #     Child Loop BB6_200 Depth 2
                                        #       Child Loop BB6_202 Depth 3
                                        #         Child Loop BB6_204 Depth 4
                                        #       Child Loop BB6_210 Depth 3
                                        #         Child Loop BB6_212 Depth 4
                                        #       Child Loop BB6_218 Depth 3
                                        #         Child Loop BB6_220 Depth 4
                                        #           Child Loop BB6_222 Depth 5
                                        #     Child Loop BB6_232 Depth 2
                                        #       Child Loop BB6_234 Depth 3
	cmpl	$9, -48(%rbp)
	jge	.LBB6_245
# %bb.35:                               # %for.body
                                        #   in Loop: Header=BB6_34 Depth=1
	cmpl	$2, -48(%rbp)
	je	.LBB6_44
# %bb.36:                               # %lor.lhs.false97
                                        #   in Loop: Header=BB6_34 Depth=1
	cmpl	$0, -48(%rbp)
	je	.LBB6_39
# %bb.37:                               # %lor.lhs.false99
                                        #   in Loop: Header=BB6_34 Depth=1
	cmpl	$7, -48(%rbp)
	je	.LBB6_39
# %bb.38:                               # %lor.lhs.false101
                                        #   in Loop: Header=BB6_34 Depth=1
	cmpl	$3, -48(%rbp)
	jne	.LBB6_40
.LBB6_39:                               # %land.lhs.true
                                        #   in Loop: Header=BB6_34 Depth=1
	cmpl	$0, -184(%rbp)
	jne	.LBB6_44
.LBB6_40:                               # %lor.lhs.false104
                                        #   in Loop: Header=BB6_34 Depth=1
	cmpl	$1, -48(%rbp)
	je	.LBB6_42
# %bb.41:                               # %lor.lhs.false106
                                        #   in Loop: Header=BB6_34 Depth=1
	cmpl	$8, -48(%rbp)
	jne	.LBB6_43
.LBB6_42:                               # %land.lhs.true108
                                        #   in Loop: Header=BB6_34 Depth=1
	cmpl	$0, -188(%rbp)
	jne	.LBB6_44
.LBB6_43:                               # %lor.lhs.false110
                                        #   in Loop: Header=BB6_34 Depth=1
	cmpl	$0, -180(%rbp)
	je	.LBB6_243
.LBB6_44:                               # %if.then112
                                        #   in Loop: Header=BB6_34 Depth=1
	movq	input, %rax
	cmpl	$0, 2464(%rax)
	jne	.LBB6_59
# %bb.45:                               # %if.then114
                                        #   in Loop: Header=BB6_34 Depth=1
	movl	$0, -16(%rbp)
	movl	$0, -52(%rbp)
.LBB6_46:                               # %for.cond115
                                        #   Parent Loop BB6_34 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB6_48 Depth 3
	cmpl	$8, -16(%rbp)
	jge	.LBB6_53
# %bb.47:                               # %for.body117
                                        #   in Loop: Header=BB6_46 Depth=2
	movl	$0, -12(%rbp)
.LBB6_48:                               # %for.cond118
                                        #   Parent Loop BB6_34 Depth=1
                                        #     Parent Loop BB6_46 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	cmpl	$8, -12(%rbp)
	jge	.LBB6_51
# %bb.49:                               # %for.body120
                                        #   in Loop: Header=BB6_48 Depth=3
	movq	-168(%rbp), %rax
	movl	-92(%rbp), %ecx
	addl	-16(%rbp), %ecx
	movslq	%ecx, %rcx
	movq	(%rax,%rcx,8), %rax
	movl	-96(%rbp), %ecx
	addl	-12(%rbp), %ecx
	movslq	%ecx, %rcx
	movzwl	(%rax,%rcx,2), %eax
	movq	img, %rcx
	addq	$7352, %rcx             # imm = 0x1CB8
	movslq	-48(%rbp), %rdx
	shlq	$7, %rdx
	addq	%rdx, %rcx
	movslq	-16(%rbp), %rdx
	shlq	$4, %rdx
	addq	%rdx, %rcx
	movslq	-12(%rbp), %rdx
	movzwl	(%rcx,%rdx,2), %ecx
	subl	%ecx, %eax
	movslq	-52(%rbp), %rcx
	movl	%eax, -640(%rbp,%rcx,4)
# %bb.50:                               # %for.inc
                                        #   in Loop: Header=BB6_48 Depth=3
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB6_48
.LBB6_51:                               # %for.end
                                        #   in Loop: Header=BB6_46 Depth=2
	jmp	.LBB6_52
.LBB6_52:                               # %for.inc137
                                        #   in Loop: Header=BB6_46 Depth=2
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB6_46
.LBB6_53:                               # %for.end139
                                        #   in Loop: Header=BB6_34 Depth=1
	movl	-48(%rbp), %eax
	cmpl	-104(%rbp), %eax
	jne	.LBB6_55
# %bb.54:                               # %cond.true142
                                        #   in Loop: Header=BB6_34 Depth=1
	xorl	%eax, %eax
	jmp	.LBB6_56
.LBB6_55:                               # %cond.false143
                                        #   in Loop: Header=BB6_34 Depth=1
	vmovsd	.LCPI6_1(%rip), %xmm0   # xmm0 = mem[0],zero
	vmulsd	-152(%rbp), %xmm0, %xmm0
	vroundsd	$9, %xmm0, %xmm0, %xmm0
	vcvttsd2si	%xmm0, %eax
.LBB6_56:                               # %cond.end146
                                        #   in Loop: Header=BB6_34 Depth=1
	leaq	-640(%rbp), %rdi
	movl	%eax, -124(%rbp)
	movq	input, %rax
	movl	24(%rax), %esi
	callq	SATD8X8
	addl	-124(%rbp), %eax
	movl	%eax, -124(%rbp)
	movl	-124(%rbp), %eax
	movq	-160(%rbp), %rcx
	cmpl	(%rcx), %eax
	jge	.LBB6_58
# %bb.57:                               # %if.then151
                                        #   in Loop: Header=BB6_34 Depth=1
	movl	-48(%rbp), %eax
	movl	%eax, -60(%rbp)
	movl	-124(%rbp), %eax
	movq	-160(%rbp), %rcx
	movl	%eax, (%rcx)
.LBB6_58:                               # %if.end152
                                        #   in Loop: Header=BB6_34 Depth=1
	jmp	.LBB6_242
.LBB6_59:                               # %if.else153
                                        #   in Loop: Header=BB6_34 Depth=1
	movq	img, %rax
	cmpl	$0, 72724(%rax)
	jne	.LBB6_91
# %bb.60:                               # %if.then155
                                        #   in Loop: Header=BB6_34 Depth=1
	movl	$0, -16(%rbp)
.LBB6_61:                               # %for.cond156
                                        #   Parent Loop BB6_34 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB6_63 Depth 3
	cmpl	$8, -16(%rbp)
	jge	.LBB6_68
# %bb.62:                               # %for.body159
                                        #   in Loop: Header=BB6_61 Depth=2
	movl	$0, -12(%rbp)
.LBB6_63:                               # %for.cond160
                                        #   Parent Loop BB6_34 Depth=1
                                        #     Parent Loop BB6_61 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	cmpl	$8, -12(%rbp)
	jge	.LBB6_66
# %bb.64:                               # %for.body163
                                        #   in Loop: Header=BB6_63 Depth=3
	movq	img, %rax
	addq	$7352, %rax             # imm = 0x1CB8
	movslq	-48(%rbp), %rcx
	shlq	$7, %rcx
	addq	%rcx, %rax
	movslq	-16(%rbp), %rcx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movslq	-12(%rbp), %rcx
	movw	(%rax,%rcx,2), %ax
	movq	img, %rcx
	addq	$12600, %rcx            # imm = 0x3138
	movl	-36(%rbp), %edx
	addl	-12(%rbp), %edx
	movslq	%edx, %rdx
	shlq	$5, %rdx
	addq	%rdx, %rcx
	movl	-40(%rbp), %edx
	addl	-16(%rbp), %edx
	movslq	%edx, %rdx
	movw	%ax, (%rcx,%rdx,2)
	movq	-168(%rbp), %rax
	movl	-92(%rbp), %ecx
	addl	-16(%rbp), %ecx
	movslq	%ecx, %rcx
	movq	(%rax,%rcx,8), %rax
	movl	-96(%rbp), %ecx
	addl	-12(%rbp), %ecx
	movslq	%ecx, %rcx
	movzwl	(%rax,%rcx,2), %eax
	movq	img, %rcx
	addq	$7352, %rcx             # imm = 0x1CB8
	movslq	-48(%rbp), %rdx
	shlq	$7, %rdx
	addq	%rdx, %rcx
	movslq	-16(%rbp), %rdx
	shlq	$4, %rdx
	addq	%rdx, %rcx
	movslq	-12(%rbp), %rdx
	movzwl	(%rcx,%rdx,2), %ecx
	subl	%ecx, %eax
	movq	img, %rcx
	addq	$13112, %rcx            # imm = 0x3338
	movslq	-12(%rbp), %rdx
	shlq	$6, %rdx
	addq	%rdx, %rcx
	movslq	-16(%rbp), %rdx
	movl	%eax, (%rcx,%rdx,4)
# %bb.65:                               # %for.inc197
                                        #   in Loop: Header=BB6_63 Depth=3
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB6_63
.LBB6_66:                               # %for.end199
                                        #   in Loop: Header=BB6_61 Depth=2
	jmp	.LBB6_67
.LBB6_67:                               # %for.inc200
                                        #   in Loop: Header=BB6_61 Depth=2
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB6_61
.LBB6_68:                               # %for.end202
                                        #   in Loop: Header=BB6_34 Depth=1
	movb	$0, %al
	callq	store_coding_state_cs_cm
	movl	-32(%rbp), %esi
	movl	-48(%rbp), %edx
	vmovsd	-152(%rbp), %xmm0       # xmm0 = mem[0],zero
	vmovsd	-136(%rbp), %xmm1       # xmm1 = mem[0],zero
	movl	-104(%rbp), %ecx
	leaq	-128(%rbp), %rdi
	callq	RDCost_for_8x8IntraBlocks
	vmovsd	%xmm0, -144(%rbp)
	vmovsd	-136(%rbp), %xmm1       # xmm1 = mem[0],zero
	vucomisd	%xmm0, %xmm1
	jbe	.LBB6_90
# %bb.69:                               # %if.then206
                                        #   in Loop: Header=BB6_34 Depth=1
	movl	$0, -16(%rbp)
.LBB6_70:                               # %for.cond207
                                        #   Parent Loop BB6_34 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB6_72 Depth 3
                                        #         Child Loop BB6_74 Depth 4
	cmpl	$2, -16(%rbp)
	jge	.LBB6_81
# %bb.71:                               # %for.body210
                                        #   in Loop: Header=BB6_70 Depth=2
	movl	$0, -12(%rbp)
.LBB6_72:                               # %for.cond211
                                        #   Parent Loop BB6_34 Depth=1
                                        #     Parent Loop BB6_70 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB6_74 Depth 4
	cmpl	$65, -12(%rbp)
	jge	.LBB6_79
# %bb.73:                               # %for.body214
                                        #   in Loop: Header=BB6_72 Depth=3
	movl	$0, -52(%rbp)
.LBB6_74:                               # %for.cond215
                                        #   Parent Loop BB6_34 Depth=1
                                        #     Parent Loop BB6_70 Depth=2
                                        #       Parent Loop BB6_72 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	cmpl	$4, -52(%rbp)
	jge	.LBB6_77
# %bb.75:                               # %for.body218
                                        #   in Loop: Header=BB6_74 Depth=4
	movq	img, %rax
	movq	14136(%rax), %rax
	movslq	-32(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movslq	-52(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movslq	-16(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movslq	-12(%rbp), %rcx
	movl	(%rax,%rcx,4), %eax
	movq	cofAC8x8, %rcx
	movslq	-32(%rbp), %rdx
	movq	(%rcx,%rdx,8), %rcx
	movslq	-52(%rbp), %rdx
	movq	(%rcx,%rdx,8), %rcx
	movslq	-16(%rbp), %rdx
	movq	(%rcx,%rdx,8), %rcx
	movslq	-12(%rbp), %rdx
	movl	%eax, (%rcx,%rdx,4)
# %bb.76:                               # %for.inc235
                                        #   in Loop: Header=BB6_74 Depth=4
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB6_74
.LBB6_77:                               # %for.end237
                                        #   in Loop: Header=BB6_72 Depth=3
	jmp	.LBB6_78
.LBB6_78:                               # %for.inc238
                                        #   in Loop: Header=BB6_72 Depth=3
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB6_72
.LBB6_79:                               # %for.end240
                                        #   in Loop: Header=BB6_70 Depth=2
	jmp	.LBB6_80
.LBB6_80:                               # %for.inc241
                                        #   in Loop: Header=BB6_70 Depth=2
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB6_70
.LBB6_81:                               # %for.end243
                                        #   in Loop: Header=BB6_34 Depth=1
	movl	$0, -24(%rbp)
.LBB6_82:                               # %for.cond244
                                        #   Parent Loop BB6_34 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB6_84 Depth 3
	cmpl	$8, -24(%rbp)
	jge	.LBB6_89
# %bb.83:                               # %for.body247
                                        #   in Loop: Header=BB6_82 Depth=2
	movl	$0, -28(%rbp)
.LBB6_84:                               # %for.cond248
                                        #   Parent Loop BB6_34 Depth=1
                                        #     Parent Loop BB6_82 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	cmpl	$8, -28(%rbp)
	jge	.LBB6_87
# %bb.85:                               # %for.body251
                                        #   in Loop: Header=BB6_84 Depth=3
	movq	enc_picture, %rax
	movq	6424(%rax), %rax
	movl	-44(%rbp), %ecx
	addl	-24(%rbp), %ecx
	movslq	%ecx, %rcx
	movq	(%rax,%rcx,8), %rax
	movl	-68(%rbp), %ecx
	addl	-28(%rbp), %ecx
	movslq	%ecx, %rcx
	movw	(%rax,%rcx,2), %ax
	movslq	-24(%rbp), %rcx
	shlq	$4, %rcx
	leaq	-384(%rbp), %rdx
	addq	%rcx, %rdx
	movslq	-28(%rbp), %rcx
	movw	%ax, (%rdx,%rcx,2)
# %bb.86:                               # %for.inc262
                                        #   in Loop: Header=BB6_84 Depth=3
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB6_84
.LBB6_87:                               # %for.end264
                                        #   in Loop: Header=BB6_82 Depth=2
	jmp	.LBB6_88
.LBB6_88:                               # %for.inc265
                                        #   in Loop: Header=BB6_82 Depth=2
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB6_82
.LBB6_89:                               # %for.end267
                                        #   in Loop: Header=BB6_34 Depth=1
	movl	-128(%rbp), %eax
	movl	%eax, -108(%rbp)
	vmovsd	-144(%rbp), %xmm0       # xmm0 = mem[0],zero
	vmovsd	%xmm0, -136(%rbp)
	movl	-48(%rbp), %eax
	movl	%eax, -60(%rbp)
.LBB6_90:                               # %if.end268
                                        #   in Loop: Header=BB6_34 Depth=1
	movb	$0, %al
	callq	reset_coding_state_cs_cm
	jmp	.LBB6_241
.LBB6_91:                               # %if.else269
                                        #   in Loop: Header=BB6_34 Depth=1
	movl	$0, -16(%rbp)
.LBB6_92:                               # %for.cond270
                                        #   Parent Loop BB6_34 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB6_94 Depth 3
	cmpl	$8, -16(%rbp)
	jge	.LBB6_99
# %bb.93:                               # %for.body273
                                        #   in Loop: Header=BB6_92 Depth=2
	movl	$0, -12(%rbp)
.LBB6_94:                               # %for.cond274
                                        #   Parent Loop BB6_34 Depth=1
                                        #     Parent Loop BB6_92 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	cmpl	$8, -12(%rbp)
	jge	.LBB6_97
# %bb.95:                               # %for.body277
                                        #   in Loop: Header=BB6_94 Depth=3
	movq	imgUV_org, %rax
	movq	(%rax), %rax
	movl	-92(%rbp), %ecx
	addl	-16(%rbp), %ecx
	movslq	%ecx, %rcx
	movq	(%rax,%rcx,8), %rax
	movl	-96(%rbp), %ecx
	addl	-12(%rbp), %ecx
	movslq	%ecx, %rcx
	movzwl	(%rax,%rcx,2), %eax
	movq	img, %rcx
	addq	$8504, %rcx             # imm = 0x2138
	movslq	-56(%rbp), %rdx
	shlq	$9, %rdx
	addq	%rdx, %rcx
	movl	-36(%rbp), %edx
	addl	-12(%rbp), %edx
	movslq	%edx, %rdx
	shlq	$5, %rdx
	addq	%rdx, %rcx
	movl	-40(%rbp), %edx
	addl	-16(%rbp), %edx
	movslq	%edx, %rdx
	movzwl	(%rcx,%rdx,2), %ecx
	subl	%ecx, %eax
	movl	%eax, -64(%rbp)
	movq	imgY_org, %rax
	movl	-92(%rbp), %ecx
	addl	-16(%rbp), %ecx
	movslq	%ecx, %rcx
	movq	(%rax,%rcx,8), %rax
	movl	-96(%rbp), %ecx
	addl	-12(%rbp), %ecx
	movslq	%ecx, %rcx
	movzwl	(%rax,%rcx,2), %eax
	movq	img, %rcx
	addq	$7352, %rcx             # imm = 0x1CB8
	movslq	-48(%rbp), %rdx
	shlq	$7, %rdx
	addq	%rdx, %rcx
	movslq	-16(%rbp), %rdx
	shlq	$4, %rdx
	addq	%rdx, %rcx
	movslq	-12(%rbp), %rdx
	movzwl	(%rcx,%rdx,2), %ecx
	subl	%ecx, %eax
	movl	%eax, -76(%rbp)
	movq	imgUV_org, %rax
	movq	8(%rax), %rax
	movl	-92(%rbp), %ecx
	addl	-16(%rbp), %ecx
	movslq	%ecx, %rcx
	movq	(%rax,%rcx,8), %rax
	movl	-96(%rbp), %ecx
	addl	-12(%rbp), %ecx
	movslq	%ecx, %rcx
	movzwl	(%rax,%rcx,2), %eax
	movq	img, %rcx
	addq	$8504, %rcx             # imm = 0x2138
	addq	$2048, %rcx             # imm = 0x800
	movslq	-56(%rbp), %rdx
	shlq	$9, %rdx
	addq	%rdx, %rcx
	movl	-36(%rbp), %edx
	addl	-12(%rbp), %edx
	movslq	%edx, %rdx
	shlq	$5, %rdx
	addq	%rdx, %rcx
	movl	-40(%rbp), %edx
	addl	-16(%rbp), %edx
	movslq	%edx, %rdx
	movzwl	(%rcx,%rdx,2), %ecx
	subl	%ecx, %eax
	movl	%eax, -84(%rbp)
	movl	-84(%rbp), %eax
	subl	-64(%rbp), %eax
	movslq	-12(%rbp), %rcx
	shlq	$6, %rcx
	movabsq	$resTrans_R, %rdx
	movq	%rdx, %rsi
	addq	%rcx, %rsi
	movslq	-16(%rbp), %rcx
	movl	%eax, (%rsi,%rcx,4)
	movl	-64(%rbp), %eax
	movslq	-12(%rbp), %rcx
	shlq	$6, %rcx
	addq	%rcx, %rdx
	movslq	-16(%rbp), %rcx
	movl	(%rdx,%rcx,4), %ecx
	sarl	$1, %ecx
	addl	%ecx, %eax
	movl	%eax, -88(%rbp)
	movl	-76(%rbp), %eax
	subl	-88(%rbp), %eax
	movslq	-12(%rbp), %rcx
	shlq	$6, %rcx
	movabsq	$resTrans_B, %rdx
	movq	%rdx, %rsi
	addq	%rcx, %rsi
	movslq	-16(%rbp), %rcx
	movl	%eax, (%rsi,%rcx,4)
	movl	-88(%rbp), %eax
	movslq	-12(%rbp), %rcx
	shlq	$6, %rcx
	addq	%rcx, %rdx
	movslq	-16(%rbp), %rcx
	movl	(%rdx,%rcx,4), %ecx
	sarl	$1, %ecx
	addl	%ecx, %eax
	movslq	-12(%rbp), %rcx
	shlq	$6, %rcx
	movabsq	$resTrans_G, %rdx
	addq	%rcx, %rdx
	movslq	-16(%rbp), %rcx
	movl	%eax, (%rdx,%rcx,4)
# %bb.96:                               # %for.inc358
                                        #   in Loop: Header=BB6_94 Depth=3
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB6_94
.LBB6_97:                               # %for.end360
                                        #   in Loop: Header=BB6_92 Depth=2
	jmp	.LBB6_98
.LBB6_98:                               # %for.inc361
                                        #   in Loop: Header=BB6_92 Depth=2
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB6_92
.LBB6_99:                               # %for.end363
                                        #   in Loop: Header=BB6_34 Depth=1
	movl	$0, -16(%rbp)
.LBB6_100:                              # %for.cond364
                                        #   Parent Loop BB6_34 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB6_102 Depth 3
	cmpl	$8, -16(%rbp)
	jge	.LBB6_107
# %bb.101:                              # %for.body367
                                        #   in Loop: Header=BB6_100 Depth=2
	movl	$0, -12(%rbp)
.LBB6_102:                              # %for.cond368
                                        #   Parent Loop BB6_34 Depth=1
                                        #     Parent Loop BB6_100 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	cmpl	$8, -12(%rbp)
	jge	.LBB6_105
# %bb.103:                              # %for.body371
                                        #   in Loop: Header=BB6_102 Depth=3
	movslq	-12(%rbp), %rax
	shlq	$6, %rax
	movabsq	$resTrans_G, %rcx
	addq	%rax, %rcx
	movslq	-16(%rbp), %rax
	movl	(%rcx,%rax,4), %eax
	movq	img, %rcx
	addq	$13112, %rcx            # imm = 0x3338
	movslq	-12(%rbp), %rdx
	shlq	$6, %rdx
	addq	%rdx, %rcx
	movslq	-16(%rbp), %rdx
	movl	%eax, (%rcx,%rdx,4)
# %bb.104:                              # %for.inc381
                                        #   in Loop: Header=BB6_102 Depth=3
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB6_102
.LBB6_105:                              # %for.end383
                                        #   in Loop: Header=BB6_100 Depth=2
	jmp	.LBB6_106
.LBB6_106:                              # %for.inc384
                                        #   in Loop: Header=BB6_100 Depth=2
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB6_100
.LBB6_107:                              # %for.end386
                                        #   in Loop: Header=BB6_34 Depth=1
	movb	$0, %al
	callq	store_coding_state_cs_cm
	movl	-32(%rbp), %esi
	movl	-48(%rbp), %edx
	vmovsd	-152(%rbp), %xmm0       # xmm0 = mem[0],zero
	vmovsd	-136(%rbp), %xmm1       # xmm1 = mem[0],zero
	movl	-104(%rbp), %ecx
	leaq	-128(%rbp), %rdi
	callq	RDCost_for_8x8IntraBlocks
	vcvttsd2si	%xmm0, %eax
	movl	%eax, -112(%rbp)
	movb	$0, %al
	callq	reset_coding_state_cs_cm
	movl	$0, -16(%rbp)
.LBB6_108:                              # %for.cond389
                                        #   Parent Loop BB6_34 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB6_110 Depth 3
	cmpl	$8, -16(%rbp)
	jge	.LBB6_115
# %bb.109:                              # %for.body392
                                        #   in Loop: Header=BB6_108 Depth=2
	movl	$0, -12(%rbp)
.LBB6_110:                              # %for.cond393
                                        #   Parent Loop BB6_34 Depth=1
                                        #     Parent Loop BB6_108 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	cmpl	$8, -12(%rbp)
	jge	.LBB6_113
# %bb.111:                              # %for.body396
                                        #   in Loop: Header=BB6_110 Depth=3
	movq	img, %rax
	addq	$13112, %rax            # imm = 0x3338
	movslq	-12(%rbp), %rcx
	shlq	$6, %rcx
	addq	%rcx, %rax
	movslq	-16(%rbp), %rcx
	movl	(%rax,%rcx,4), %eax
	movslq	-12(%rbp), %rcx
	shlq	$6, %rcx
	movabsq	$rec_resG, %rdx
	addq	%rcx, %rdx
	movslq	-16(%rbp), %rcx
	movl	%eax, (%rdx,%rcx,4)
# %bb.112:                              # %for.inc406
                                        #   in Loop: Header=BB6_110 Depth=3
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB6_110
.LBB6_113:                              # %for.end408
                                        #   in Loop: Header=BB6_108 Depth=2
	jmp	.LBB6_114
.LBB6_114:                              # %for.inc409
                                        #   in Loop: Header=BB6_108 Depth=2
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB6_108
.LBB6_115:                              # %for.end411
                                        #   in Loop: Header=BB6_34 Depth=1
	movb	$0, %al
	callq	store_coding_state_cs_cm
	movl	$0, -20(%rbp)
.LBB6_116:                              # %for.cond412
                                        #   Parent Loop BB6_34 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB6_118 Depth 3
                                        #         Child Loop BB6_120 Depth 4
                                        #       Child Loop BB6_126 Depth 3
                                        #         Child Loop BB6_128 Depth 4
                                        #       Child Loop BB6_134 Depth 3
                                        #         Child Loop BB6_136 Depth 4
	cmpl	$4, -20(%rbp)
	jge	.LBB6_143
# %bb.117:                              # %for.body415
                                        #   in Loop: Header=BB6_116 Depth=2
	movl	-20(%rbp), %eax
	cltd
	movl	$2, %ecx
	idivl	%ecx
	shll	$2, %edx
	movl	%edx, -80(%rbp)
	movl	-20(%rbp), %eax
	cltd
	idivl	%ecx
	shll	$2, %eax
	movl	%eax, -72(%rbp)
	movl	$0, -16(%rbp)
.LBB6_118:                              # %for.cond420
                                        #   Parent Loop BB6_34 Depth=1
                                        #     Parent Loop BB6_116 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB6_120 Depth 4
	cmpl	$4, -16(%rbp)
	jge	.LBB6_125
# %bb.119:                              # %for.body423
                                        #   in Loop: Header=BB6_118 Depth=3
	movl	$0, -12(%rbp)
.LBB6_120:                              # %for.cond424
                                        #   Parent Loop BB6_34 Depth=1
                                        #     Parent Loop BB6_116 Depth=2
                                        #       Parent Loop BB6_118 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	cmpl	$4, -12(%rbp)
	jge	.LBB6_123
# %bb.121:                              # %for.body427
                                        #   in Loop: Header=BB6_120 Depth=4
	movl	-12(%rbp), %eax
	addl	-80(%rbp), %eax
	cltq
	shlq	$6, %rax
	movabsq	$resTrans_R, %rcx
	addq	%rax, %rcx
	movl	-16(%rbp), %eax
	addl	-72(%rbp), %eax
	cltq
	movl	(%rcx,%rax,4), %eax
	movq	img, %rcx
	addq	$13112, %rcx            # imm = 0x3338
	movslq	-12(%rbp), %rdx
	shlq	$6, %rdx
	addq	%rdx, %rcx
	movslq	-16(%rbp), %rdx
	movl	%eax, (%rcx,%rdx,4)
# %bb.122:                              # %for.inc439
                                        #   in Loop: Header=BB6_120 Depth=4
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB6_120
.LBB6_123:                              # %for.end441
                                        #   in Loop: Header=BB6_118 Depth=3
	jmp	.LBB6_124
.LBB6_124:                              # %for.inc442
                                        #   in Loop: Header=BB6_118 Depth=3
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB6_118
.LBB6_125:                              # %for.end444
                                        #   in Loop: Header=BB6_116 Depth=2
	movl	-32(%rbp), %edi
	addl	$4, %edi
	movl	-20(%rbp), %esi
	xorl	%edx, %edx
	callq	RDCost_for_4x4Blocks_Chroma
	addl	-112(%rbp), %eax
	movl	%eax, -112(%rbp)
	movl	$0, -16(%rbp)
.LBB6_126:                              # %for.cond448
                                        #   Parent Loop BB6_34 Depth=1
                                        #     Parent Loop BB6_116 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB6_128 Depth 4
	cmpl	$4, -16(%rbp)
	jge	.LBB6_133
# %bb.127:                              # %for.body451
                                        #   in Loop: Header=BB6_126 Depth=3
	movl	$0, -12(%rbp)
.LBB6_128:                              # %for.cond452
                                        #   Parent Loop BB6_34 Depth=1
                                        #     Parent Loop BB6_116 Depth=2
                                        #       Parent Loop BB6_126 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	cmpl	$4, -12(%rbp)
	jge	.LBB6_131
# %bb.129:                              # %for.body455
                                        #   in Loop: Header=BB6_128 Depth=4
	movq	img, %rax
	addq	$13112, %rax            # imm = 0x3338
	movslq	-12(%rbp), %rcx
	shlq	$6, %rcx
	addq	%rcx, %rax
	movslq	-16(%rbp), %rcx
	movl	(%rax,%rcx,4), %eax
	movl	-12(%rbp), %ecx
	addl	-80(%rbp), %ecx
	movslq	%ecx, %rcx
	shlq	$6, %rcx
	movabsq	$rec_resR, %rdx
	addq	%rcx, %rdx
	movl	-16(%rbp), %ecx
	addl	-72(%rbp), %ecx
	movslq	%ecx, %rcx
	movl	%eax, (%rdx,%rcx,4)
	movl	-12(%rbp), %eax
	addl	-80(%rbp), %eax
	cltq
	shlq	$6, %rax
	movabsq	$resTrans_B, %rcx
	addq	%rax, %rcx
	movl	-16(%rbp), %eax
	addl	-72(%rbp), %eax
	cltq
	movl	(%rcx,%rax,4), %eax
	movq	img, %rcx
	addq	$13112, %rcx            # imm = 0x3338
	movslq	-12(%rbp), %rdx
	shlq	$6, %rdx
	addq	%rdx, %rcx
	movslq	-16(%rbp), %rdx
	movl	%eax, (%rcx,%rdx,4)
# %bb.130:                              # %for.inc478
                                        #   in Loop: Header=BB6_128 Depth=4
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB6_128
.LBB6_131:                              # %for.end480
                                        #   in Loop: Header=BB6_126 Depth=3
	jmp	.LBB6_132
.LBB6_132:                              # %for.inc481
                                        #   in Loop: Header=BB6_126 Depth=3
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB6_126
.LBB6_133:                              # %for.end483
                                        #   in Loop: Header=BB6_116 Depth=2
	movl	-32(%rbp), %edi
	addl	$8, %edi
	movl	-20(%rbp), %esi
	movl	$1, %edx
	callq	RDCost_for_4x4Blocks_Chroma
	addl	-112(%rbp), %eax
	movl	%eax, -112(%rbp)
	movl	$0, -16(%rbp)
.LBB6_134:                              # %for.cond487
                                        #   Parent Loop BB6_34 Depth=1
                                        #     Parent Loop BB6_116 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB6_136 Depth 4
	cmpl	$4, -16(%rbp)
	jge	.LBB6_141
# %bb.135:                              # %for.body490
                                        #   in Loop: Header=BB6_134 Depth=3
	movl	$0, -12(%rbp)
.LBB6_136:                              # %for.cond491
                                        #   Parent Loop BB6_34 Depth=1
                                        #     Parent Loop BB6_116 Depth=2
                                        #       Parent Loop BB6_134 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	cmpl	$4, -12(%rbp)
	jge	.LBB6_139
# %bb.137:                              # %for.body494
                                        #   in Loop: Header=BB6_136 Depth=4
	movq	img, %rax
	addq	$13112, %rax            # imm = 0x3338
	movslq	-12(%rbp), %rcx
	shlq	$6, %rcx
	addq	%rcx, %rax
	movslq	-16(%rbp), %rcx
	movl	(%rax,%rcx,4), %eax
	movl	-12(%rbp), %ecx
	addl	-80(%rbp), %ecx
	movslq	%ecx, %rcx
	shlq	$6, %rcx
	movabsq	$rec_resB, %rdx
	addq	%rcx, %rdx
	movl	-16(%rbp), %ecx
	addl	-72(%rbp), %ecx
	movslq	%ecx, %rcx
	movl	%eax, (%rdx,%rcx,4)
# %bb.138:                              # %for.inc506
                                        #   in Loop: Header=BB6_136 Depth=4
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB6_136
.LBB6_139:                              # %for.end508
                                        #   in Loop: Header=BB6_134 Depth=3
	jmp	.LBB6_140
.LBB6_140:                              # %for.inc509
                                        #   in Loop: Header=BB6_134 Depth=3
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB6_134
.LBB6_141:                              # %for.end511
                                        #   in Loop: Header=BB6_116 Depth=2
	jmp	.LBB6_142
.LBB6_142:                              # %for.inc512
                                        #   in Loop: Header=BB6_116 Depth=2
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB6_116
.LBB6_143:                              # %for.end514
                                        #   in Loop: Header=BB6_34 Depth=1
	movb	$0, %al
	callq	reset_coding_state_cs_cm
	movl	$0, -16(%rbp)
.LBB6_144:                              # %for.cond515
                                        #   Parent Loop BB6_34 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB6_146 Depth 3
	cmpl	$8, -16(%rbp)
	jge	.LBB6_178
# %bb.145:                              # %for.body518
                                        #   in Loop: Header=BB6_144 Depth=2
	movl	$0, -12(%rbp)
.LBB6_146:                              # %for.cond519
                                        #   Parent Loop BB6_34 Depth=1
                                        #     Parent Loop BB6_144 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	cmpl	$8, -12(%rbp)
	jge	.LBB6_176
# %bb.147:                              # %for.body522
                                        #   in Loop: Header=BB6_146 Depth=3
	xorl	%eax, %eax
	movslq	-12(%rbp), %rcx
	shlq	$6, %rcx
	movabsq	$rec_resG, %rdx
	addq	%rcx, %rdx
	movslq	-16(%rbp), %rcx
	movl	(%rdx,%rcx,4), %ecx
	movslq	-12(%rbp), %rdx
	shlq	$6, %rdx
	movabsq	$rec_resB, %rsi
	movq	%rsi, %rdi
	addq	%rdx, %rdi
	movslq	-16(%rbp), %rdx
	movl	(%rdi,%rdx,4), %edx
	sarl	$1, %edx
	subl	%edx, %ecx
	movl	%ecx, -88(%rbp)
	movslq	-12(%rbp), %rcx
	shlq	$6, %rcx
	addq	%rcx, %rsi
	movslq	-16(%rbp), %rcx
	movl	(%rsi,%rcx,4), %ecx
	addl	-88(%rbp), %ecx
	movl	%ecx, -76(%rbp)
	movl	-88(%rbp), %ecx
	movslq	-12(%rbp), %rdx
	shlq	$6, %rdx
	movabsq	$rec_resR, %rsi
	movq	%rsi, %rdi
	addq	%rdx, %rdi
	movslq	-16(%rbp), %rdx
	movl	(%rdi,%rdx,4), %edx
	sarl	$1, %edx
	subl	%edx, %ecx
	movl	%ecx, -64(%rbp)
	movl	-64(%rbp), %ecx
	movslq	-12(%rbp), %rdx
	shlq	$6, %rdx
	addq	%rdx, %rsi
	movslq	-16(%rbp), %rdx
	addl	(%rsi,%rdx,4), %ecx
	movl	%ecx, -84(%rbp)
	movq	img, %rcx
	movl	72688(%rcx), %ecx
	movl	-64(%rbp), %edx
	movq	img, %rsi
	addq	$8504, %rsi             # imm = 0x2138
	movslq	-56(%rbp), %rdi
	shlq	$9, %rdi
	addq	%rdi, %rsi
	movl	-36(%rbp), %edi
	addl	-12(%rbp), %edi
	movslq	%edi, %rdi
	shlq	$5, %rdi
	addq	%rdi, %rsi
	movl	-40(%rbp), %edi
	addl	-16(%rbp), %edi
	movslq	%edi, %rdi
	movzwl	(%rsi,%rdi,2), %esi
	addl	%esi, %edx
	cmpl	%edx, %eax
	jle	.LBB6_149
# %bb.148:                              # %cond.true563
                                        #   in Loop: Header=BB6_146 Depth=3
	xorl	%eax, %eax
	jmp	.LBB6_150
.LBB6_149:                              # %cond.false564
                                        #   in Loop: Header=BB6_146 Depth=3
	movl	-64(%rbp), %eax
	movq	img, %rdx
	addq	$8504, %rdx             # imm = 0x2138
	movslq	-56(%rbp), %rsi
	shlq	$9, %rsi
	addq	%rsi, %rdx
	movl	-36(%rbp), %esi
	addl	-12(%rbp), %esi
	movslq	%esi, %rsi
	shlq	$5, %rsi
	addq	%rsi, %rdx
	movl	-40(%rbp), %esi
	addl	-16(%rbp), %esi
	movslq	%esi, %rsi
	movzwl	(%rdx,%rsi,2), %edx
	addl	%edx, %eax
.LBB6_150:                              # %cond.end577
                                        #   in Loop: Header=BB6_146 Depth=3
	cmpl	%eax, %ecx
	jge	.LBB6_152
# %bb.151:                              # %cond.true581
                                        #   in Loop: Header=BB6_146 Depth=3
	movq	img, %rax
	movl	72688(%rax), %eax
	jmp	.LBB6_156
.LBB6_152:                              # %cond.false583
                                        #   in Loop: Header=BB6_146 Depth=3
	xorl	%eax, %eax
	movl	-64(%rbp), %ecx
	movq	img, %rdx
	addq	$8504, %rdx             # imm = 0x2138
	movslq	-56(%rbp), %rsi
	shlq	$9, %rsi
	addq	%rsi, %rdx
	movl	-36(%rbp), %esi
	addl	-12(%rbp), %esi
	movslq	%esi, %rsi
	shlq	$5, %rsi
	addq	%rsi, %rdx
	movl	-40(%rbp), %esi
	addl	-16(%rbp), %esi
	movslq	%esi, %rsi
	movzwl	(%rdx,%rsi,2), %edx
	addl	%edx, %ecx
	cmpl	%ecx, %eax
	jle	.LBB6_154
# %bb.153:                              # %cond.true598
                                        #   in Loop: Header=BB6_146 Depth=3
	xorl	%eax, %eax
	jmp	.LBB6_155
.LBB6_154:                              # %cond.false599
                                        #   in Loop: Header=BB6_146 Depth=3
	movl	-64(%rbp), %eax
	movq	img, %rcx
	addq	$8504, %rcx             # imm = 0x2138
	movslq	-56(%rbp), %rdx
	shlq	$9, %rdx
	addq	%rdx, %rcx
	movl	-36(%rbp), %edx
	addl	-12(%rbp), %edx
	movslq	%edx, %rdx
	shlq	$5, %rdx
	addq	%rdx, %rcx
	movl	-40(%rbp), %edx
	addl	-16(%rbp), %edx
	movslq	%edx, %rdx
	movzwl	(%rcx,%rdx,2), %ecx
	addl	%ecx, %eax
.LBB6_155:                              # %cond.end612
                                        #   in Loop: Header=BB6_146 Depth=3
.LBB6_156:                              # %cond.end614
                                        #   in Loop: Header=BB6_146 Depth=3
	xorl	%ecx, %ecx
	movq	enc_picture, %rdx
	movq	6464(%rdx), %rdx
	movq	(%rdx), %rdx
	movl	-44(%rbp), %esi
	addl	-16(%rbp), %esi
	movslq	%esi, %rsi
	movq	(%rdx,%rsi,8), %rdx
	movl	-68(%rbp), %esi
	addl	-12(%rbp), %esi
	movslq	%esi, %rsi
	movw	%ax, (%rdx,%rsi,2)
	movq	img, %rax
	movl	72684(%rax), %eax
	movl	-76(%rbp), %edx
	movq	img, %rsi
	addq	$7352, %rsi             # imm = 0x1CB8
	movslq	-48(%rbp), %rdi
	shlq	$7, %rdi
	addq	%rdi, %rsi
	movslq	-16(%rbp), %rdi
	shlq	$4, %rdi
	addq	%rdi, %rsi
	movslq	-12(%rbp), %rdi
	movzwl	(%rsi,%rdi,2), %esi
	addl	%esi, %edx
	cmpl	%edx, %ecx
	jle	.LBB6_158
# %bb.157:                              # %cond.true635
                                        #   in Loop: Header=BB6_146 Depth=3
	xorl	%ecx, %ecx
	jmp	.LBB6_159
.LBB6_158:                              # %cond.false636
                                        #   in Loop: Header=BB6_146 Depth=3
	movl	-76(%rbp), %ecx
	movq	img, %rdx
	addq	$7352, %rdx             # imm = 0x1CB8
	movslq	-48(%rbp), %rsi
	shlq	$7, %rsi
	addq	%rsi, %rdx
	movslq	-16(%rbp), %rsi
	shlq	$4, %rsi
	addq	%rsi, %rdx
	movslq	-12(%rbp), %rsi
	movzwl	(%rdx,%rsi,2), %edx
	addl	%edx, %ecx
.LBB6_159:                              # %cond.end646
                                        #   in Loop: Header=BB6_146 Depth=3
	cmpl	%ecx, %eax
	jge	.LBB6_161
# %bb.160:                              # %cond.true650
                                        #   in Loop: Header=BB6_146 Depth=3
	movq	img, %rax
	movl	72684(%rax), %eax
	jmp	.LBB6_165
.LBB6_161:                              # %cond.false652
                                        #   in Loop: Header=BB6_146 Depth=3
	xorl	%eax, %eax
	movl	-76(%rbp), %ecx
	movq	img, %rdx
	addq	$7352, %rdx             # imm = 0x1CB8
	movslq	-48(%rbp), %rsi
	shlq	$7, %rsi
	addq	%rsi, %rdx
	movslq	-16(%rbp), %rsi
	shlq	$4, %rsi
	addq	%rsi, %rdx
	movslq	-12(%rbp), %rsi
	movzwl	(%rdx,%rsi,2), %edx
	addl	%edx, %ecx
	cmpl	%ecx, %eax
	jle	.LBB6_163
# %bb.162:                              # %cond.true664
                                        #   in Loop: Header=BB6_146 Depth=3
	xorl	%eax, %eax
	jmp	.LBB6_164
.LBB6_163:                              # %cond.false665
                                        #   in Loop: Header=BB6_146 Depth=3
	movl	-76(%rbp), %eax
	movq	img, %rcx
	addq	$7352, %rcx             # imm = 0x1CB8
	movslq	-48(%rbp), %rdx
	shlq	$7, %rdx
	addq	%rdx, %rcx
	movslq	-16(%rbp), %rdx
	shlq	$4, %rdx
	addq	%rdx, %rcx
	movslq	-12(%rbp), %rdx
	movzwl	(%rcx,%rdx,2), %ecx
	addl	%ecx, %eax
.LBB6_164:                              # %cond.end675
                                        #   in Loop: Header=BB6_146 Depth=3
.LBB6_165:                              # %cond.end677
                                        #   in Loop: Header=BB6_146 Depth=3
	xorl	%ecx, %ecx
	movq	enc_picture, %rdx
	movq	6424(%rdx), %rdx
	movl	-44(%rbp), %esi
	addl	-16(%rbp), %esi
	movslq	%esi, %rsi
	movq	(%rdx,%rsi,8), %rdx
	movl	-68(%rbp), %esi
	addl	-12(%rbp), %esi
	movslq	%esi, %rsi
	movw	%ax, (%rdx,%rsi,2)
	movq	img, %rax
	movl	72688(%rax), %eax
	movl	-84(%rbp), %edx
	movq	img, %rsi
	addq	$8504, %rsi             # imm = 0x2138
	addq	$2048, %rsi             # imm = 0x800
	movslq	-56(%rbp), %rdi
	shlq	$9, %rdi
	addq	%rdi, %rsi
	movl	-36(%rbp), %edi
	addl	-12(%rbp), %edi
	movslq	%edi, %rdi
	shlq	$5, %rdi
	addq	%rdi, %rsi
	movl	-40(%rbp), %edi
	addl	-16(%rbp), %edi
	movslq	%edi, %rdi
	movzwl	(%rsi,%rdi,2), %esi
	addl	%esi, %edx
	cmpl	%edx, %ecx
	jle	.LBB6_167
# %bb.166:                              # %cond.true702
                                        #   in Loop: Header=BB6_146 Depth=3
	xorl	%ecx, %ecx
	jmp	.LBB6_168
.LBB6_167:                              # %cond.false703
                                        #   in Loop: Header=BB6_146 Depth=3
	movl	-84(%rbp), %ecx
	movq	img, %rdx
	addq	$8504, %rdx             # imm = 0x2138
	addq	$2048, %rdx             # imm = 0x800
	movslq	-56(%rbp), %rsi
	shlq	$9, %rsi
	addq	%rsi, %rdx
	movl	-36(%rbp), %esi
	addl	-12(%rbp), %esi
	movslq	%esi, %rsi
	shlq	$5, %rsi
	addq	%rsi, %rdx
	movl	-40(%rbp), %esi
	addl	-16(%rbp), %esi
	movslq	%esi, %rsi
	movzwl	(%rdx,%rsi,2), %edx
	addl	%edx, %ecx
.LBB6_168:                              # %cond.end716
                                        #   in Loop: Header=BB6_146 Depth=3
	cmpl	%ecx, %eax
	jge	.LBB6_170
# %bb.169:                              # %cond.true720
                                        #   in Loop: Header=BB6_146 Depth=3
	movq	img, %rax
	movl	72688(%rax), %eax
	jmp	.LBB6_174
.LBB6_170:                              # %cond.false722
                                        #   in Loop: Header=BB6_146 Depth=3
	xorl	%eax, %eax
	movl	-84(%rbp), %ecx
	movq	img, %rdx
	addq	$8504, %rdx             # imm = 0x2138
	addq	$2048, %rdx             # imm = 0x800
	movslq	-56(%rbp), %rsi
	shlq	$9, %rsi
	addq	%rsi, %rdx
	movl	-36(%rbp), %esi
	addl	-12(%rbp), %esi
	movslq	%esi, %rsi
	shlq	$5, %rsi
	addq	%rsi, %rdx
	movl	-40(%rbp), %esi
	addl	-16(%rbp), %esi
	movslq	%esi, %rsi
	movzwl	(%rdx,%rsi,2), %edx
	addl	%edx, %ecx
	cmpl	%ecx, %eax
	jle	.LBB6_172
# %bb.171:                              # %cond.true737
                                        #   in Loop: Header=BB6_146 Depth=3
	xorl	%eax, %eax
	jmp	.LBB6_173
.LBB6_172:                              # %cond.false738
                                        #   in Loop: Header=BB6_146 Depth=3
	movl	-84(%rbp), %eax
	movq	img, %rcx
	addq	$8504, %rcx             # imm = 0x2138
	addq	$2048, %rcx             # imm = 0x800
	movslq	-56(%rbp), %rdx
	shlq	$9, %rdx
	addq	%rdx, %rcx
	movl	-36(%rbp), %edx
	addl	-12(%rbp), %edx
	movslq	%edx, %rdx
	shlq	$5, %rdx
	addq	%rdx, %rcx
	movl	-40(%rbp), %edx
	addl	-16(%rbp), %edx
	movslq	%edx, %rdx
	movzwl	(%rcx,%rdx,2), %ecx
	addl	%ecx, %eax
.LBB6_173:                              # %cond.end751
                                        #   in Loop: Header=BB6_146 Depth=3
.LBB6_174:                              # %cond.end753
                                        #   in Loop: Header=BB6_146 Depth=3
	movq	enc_picture, %rcx
	movq	6464(%rcx), %rcx
	movq	8(%rcx), %rcx
	movl	-44(%rbp), %edx
	addl	-16(%rbp), %edx
	movslq	%edx, %rdx
	movq	(%rcx,%rdx,8), %rcx
	movl	-68(%rbp), %edx
	addl	-12(%rbp), %edx
	movslq	%edx, %rdx
	movw	%ax, (%rcx,%rdx,2)
# %bb.175:                              # %for.inc764
                                        #   in Loop: Header=BB6_146 Depth=3
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB6_146
.LBB6_176:                              # %for.end766
                                        #   in Loop: Header=BB6_144 Depth=2
	jmp	.LBB6_177
.LBB6_177:                              # %for.inc767
                                        #   in Loop: Header=BB6_144 Depth=2
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB6_144
.LBB6_178:                              # %for.end769
                                        #   in Loop: Header=BB6_34 Depth=1
	movl	$0, -100(%rbp)
	movl	$0, -24(%rbp)
.LBB6_179:                              # %for.cond770
                                        #   Parent Loop BB6_34 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB6_181 Depth 3
	cmpl	$8, -24(%rbp)
	jge	.LBB6_186
# %bb.180:                              # %for.body773
                                        #   in Loop: Header=BB6_179 Depth=2
	movl	-68(%rbp), %eax
	movl	%eax, -28(%rbp)
.LBB6_181:                              # %for.cond774
                                        #   Parent Loop BB6_34 Depth=1
                                        #     Parent Loop BB6_179 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-28(%rbp), %eax
	movl	-68(%rbp), %ecx
	addl	$8, %ecx
	cmpl	%ecx, %eax
	jge	.LBB6_184
# %bb.182:                              # %for.body778
                                        #   in Loop: Header=BB6_181 Depth=3
	movq	imgY_org, %rax
	movl	-44(%rbp), %ecx
	addl	-24(%rbp), %ecx
	movslq	%ecx, %rcx
	movq	(%rax,%rcx,8), %rax
	movslq	-28(%rbp), %rcx
	movzwl	(%rax,%rcx,2), %eax
	movq	enc_picture, %rcx
	movq	6424(%rcx), %rcx
	movl	-44(%rbp), %edx
	addl	-24(%rbp), %edx
	movslq	%edx, %rdx
	movq	(%rcx,%rdx,8), %rcx
	movslq	-28(%rbp), %rdx
	movzwl	(%rcx,%rdx,2), %ecx
	subl	%ecx, %eax
	movq	imgY_org, %rcx
	movl	-44(%rbp), %edx
	addl	-24(%rbp), %edx
	movslq	%edx, %rdx
	movq	(%rcx,%rdx,8), %rcx
	movslq	-28(%rbp), %rdx
	movzwl	(%rcx,%rdx,2), %ecx
	movq	enc_picture, %rdx
	movq	6424(%rdx), %rdx
	movl	-44(%rbp), %esi
	addl	-24(%rbp), %esi
	movslq	%esi, %rsi
	movq	(%rdx,%rsi,8), %rdx
	movslq	-28(%rbp), %rsi
	movzwl	(%rdx,%rsi,2), %edx
	subl	%edx, %ecx
	imull	%ecx, %eax
	addl	-100(%rbp), %eax
	movl	%eax, -100(%rbp)
	movq	imgUV_org, %rax
	movq	(%rax), %rax
	movl	-44(%rbp), %ecx
	addl	-24(%rbp), %ecx
	movslq	%ecx, %rcx
	movq	(%rax,%rcx,8), %rax
	movslq	-28(%rbp), %rcx
	movzwl	(%rax,%rcx,2), %eax
	movq	enc_picture, %rcx
	movq	6464(%rcx), %rcx
	movq	(%rcx), %rcx
	movl	-44(%rbp), %edx
	addl	-24(%rbp), %edx
	movslq	%edx, %rdx
	movq	(%rcx,%rdx,8), %rcx
	movslq	-28(%rbp), %rdx
	movzwl	(%rcx,%rdx,2), %ecx
	subl	%ecx, %eax
	movq	imgUV_org, %rcx
	movq	(%rcx), %rcx
	movl	-44(%rbp), %edx
	addl	-24(%rbp), %edx
	movslq	%edx, %rdx
	movq	(%rcx,%rdx,8), %rcx
	movslq	-28(%rbp), %rdx
	movzwl	(%rcx,%rdx,2), %ecx
	movq	enc_picture, %rdx
	movq	6464(%rdx), %rdx
	movq	(%rdx), %rdx
	movl	-44(%rbp), %esi
	addl	-24(%rbp), %esi
	movslq	%esi, %rsi
	movq	(%rdx,%rsi,8), %rdx
	movslq	-28(%rbp), %rsi
	movzwl	(%rdx,%rsi,2), %edx
	subl	%edx, %ecx
	imull	%ecx, %eax
	addl	-100(%rbp), %eax
	movl	%eax, -100(%rbp)
	movq	imgUV_org, %rax
	movq	8(%rax), %rax
	movl	-44(%rbp), %ecx
	addl	-24(%rbp), %ecx
	movslq	%ecx, %rcx
	movq	(%rax,%rcx,8), %rax
	movslq	-28(%rbp), %rcx
	movzwl	(%rax,%rcx,2), %eax
	movq	enc_picture, %rcx
	movq	6464(%rcx), %rcx
	movq	8(%rcx), %rcx
	movl	-44(%rbp), %edx
	addl	-24(%rbp), %edx
	movslq	%edx, %rdx
	movq	(%rcx,%rdx,8), %rcx
	movslq	-28(%rbp), %rdx
	movzwl	(%rcx,%rdx,2), %ecx
	subl	%ecx, %eax
	movq	imgUV_org, %rcx
	movq	8(%rcx), %rcx
	movl	-44(%rbp), %edx
	addl	-24(%rbp), %edx
	movslq	%edx, %rdx
	movq	(%rcx,%rdx,8), %rcx
	movslq	-28(%rbp), %rdx
	movzwl	(%rcx,%rdx,2), %ecx
	movq	enc_picture, %rdx
	movq	6464(%rdx), %rdx
	movq	8(%rdx), %rdx
	movl	-44(%rbp), %esi
	addl	-24(%rbp), %esi
	movslq	%esi, %rsi
	movq	(%rdx,%rsi,8), %rdx
	movslq	-28(%rbp), %rsi
	movzwl	(%rdx,%rsi,2), %edx
	subl	%edx, %ecx
	imull	%ecx, %eax
	addl	-100(%rbp), %eax
	movl	%eax, -100(%rbp)
# %bb.183:                              # %for.inc877
                                        #   in Loop: Header=BB6_181 Depth=3
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB6_181
.LBB6_184:                              # %for.end879
                                        #   in Loop: Header=BB6_179 Depth=2
	jmp	.LBB6_185
.LBB6_185:                              # %for.inc880
                                        #   in Loop: Header=BB6_179 Depth=2
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB6_179
.LBB6_186:                              # %for.end882
                                        #   in Loop: Header=BB6_34 Depth=1
	vcvtsi2sdl	-100(%rbp), %xmm0, %xmm0
	vmovsd	-152(%rbp), %xmm1       # xmm1 = mem[0],zero
	vcvtsi2sdl	-112(%rbp), %xmm0, %xmm2
	vmulsd	%xmm2, %xmm1, %xmm1
	vaddsd	%xmm1, %xmm0, %xmm0
	vmovsd	%xmm0, -144(%rbp)
	vmovsd	-144(%rbp), %xmm0       # xmm0 = mem[0],zero
	vmovsd	-136(%rbp), %xmm1       # xmm1 = mem[0],zero
	vucomisd	%xmm0, %xmm1
	jbe	.LBB6_240
# %bb.187:                              # %if.then889
                                        #   in Loop: Header=BB6_34 Depth=1
	movl	$0, -16(%rbp)
.LBB6_188:                              # %for.cond890
                                        #   Parent Loop BB6_34 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB6_190 Depth 3
                                        #         Child Loop BB6_192 Depth 4
	cmpl	$2, -16(%rbp)
	jge	.LBB6_199
# %bb.189:                              # %for.body893
                                        #   in Loop: Header=BB6_188 Depth=2
	movl	$0, -12(%rbp)
.LBB6_190:                              # %for.cond894
                                        #   Parent Loop BB6_34 Depth=1
                                        #     Parent Loop BB6_188 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB6_192 Depth 4
	cmpl	$65, -12(%rbp)
	jge	.LBB6_197
# %bb.191:                              # %for.body897
                                        #   in Loop: Header=BB6_190 Depth=3
	movl	$0, -52(%rbp)
.LBB6_192:                              # %for.cond898
                                        #   Parent Loop BB6_34 Depth=1
                                        #     Parent Loop BB6_188 Depth=2
                                        #       Parent Loop BB6_190 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	cmpl	$4, -52(%rbp)
	jge	.LBB6_195
# %bb.193:                              # %for.body901
                                        #   in Loop: Header=BB6_192 Depth=4
	movq	img, %rax
	movq	14136(%rax), %rax
	movslq	-32(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movslq	-52(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movslq	-16(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movslq	-12(%rbp), %rcx
	movl	(%rax,%rcx,4), %eax
	movq	cofAC8x8, %rcx
	movslq	-32(%rbp), %rdx
	movq	(%rcx,%rdx,8), %rcx
	movslq	-52(%rbp), %rdx
	movq	(%rcx,%rdx,8), %rcx
	movslq	-16(%rbp), %rdx
	movq	(%rcx,%rdx,8), %rcx
	movslq	-12(%rbp), %rdx
	movl	%eax, (%rcx,%rdx,4)
# %bb.194:                              # %for.inc919
                                        #   in Loop: Header=BB6_192 Depth=4
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB6_192
.LBB6_195:                              # %for.end921
                                        #   in Loop: Header=BB6_190 Depth=3
	jmp	.LBB6_196
.LBB6_196:                              # %for.inc922
                                        #   in Loop: Header=BB6_190 Depth=3
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB6_190
.LBB6_197:                              # %for.end924
                                        #   in Loop: Header=BB6_188 Depth=2
	jmp	.LBB6_198
.LBB6_198:                              # %for.inc925
                                        #   in Loop: Header=BB6_188 Depth=2
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB6_188
.LBB6_199:                              # %for.end927
                                        #   in Loop: Header=BB6_34 Depth=1
	movl	$0, -20(%rbp)
.LBB6_200:                              # %for.cond928
                                        #   Parent Loop BB6_34 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB6_202 Depth 3
                                        #         Child Loop BB6_204 Depth 4
                                        #       Child Loop BB6_210 Depth 3
                                        #         Child Loop BB6_212 Depth 4
                                        #       Child Loop BB6_218 Depth 3
                                        #         Child Loop BB6_220 Depth 4
                                        #           Child Loop BB6_222 Depth 5
	cmpl	$4, -20(%rbp)
	jge	.LBB6_231
# %bb.201:                              # %for.body931
                                        #   in Loop: Header=BB6_200 Depth=2
	movl	-20(%rbp), %eax
	cltd
	movl	$2, %ecx
	idivl	%ecx
	shll	$2, %edx
	movl	%edx, -80(%rbp)
	movl	-20(%rbp), %eax
	cltd
	idivl	%ecx
	shll	$2, %eax
	movl	%eax, -72(%rbp)
	movl	$0, -16(%rbp)
.LBB6_202:                              # %for.cond936
                                        #   Parent Loop BB6_34 Depth=1
                                        #     Parent Loop BB6_200 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB6_204 Depth 4
	cmpl	$2, -16(%rbp)
	jge	.LBB6_209
# %bb.203:                              # %for.body939
                                        #   in Loop: Header=BB6_202 Depth=3
	movl	$0, -12(%rbp)
.LBB6_204:                              # %for.cond940
                                        #   Parent Loop BB6_34 Depth=1
                                        #     Parent Loop BB6_200 Depth=2
                                        #       Parent Loop BB6_202 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	cmpl	$18, -12(%rbp)
	jge	.LBB6_207
# %bb.205:                              # %for.body943
                                        #   in Loop: Header=BB6_204 Depth=4
	movq	img, %rax
	movq	14136(%rax), %rax
	movl	-32(%rbp), %ecx
	addl	$4, %ecx
	movslq	%ecx, %rcx
	movq	(%rax,%rcx,8), %rax
	movslq	-20(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movslq	-16(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movslq	-12(%rbp), %rcx
	movl	(%rax,%rcx,4), %eax
	movslq	-20(%rbp), %rcx
	imulq	$144, %rcx, %rcx
	movabsq	$cofAC8x8_chroma, %rdx
	addq	%rcx, %rdx
	movslq	-16(%rbp), %rcx
	imulq	$72, %rcx, %rcx
	addq	%rcx, %rdx
	movslq	-12(%rbp), %rcx
	movl	%eax, (%rdx,%rcx,4)
# %bb.206:                              # %for.inc960
                                        #   in Loop: Header=BB6_204 Depth=4
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB6_204
.LBB6_207:                              # %for.end962
                                        #   in Loop: Header=BB6_202 Depth=3
	jmp	.LBB6_208
.LBB6_208:                              # %for.inc963
                                        #   in Loop: Header=BB6_202 Depth=3
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB6_202
.LBB6_209:                              # %for.end965
                                        #   in Loop: Header=BB6_200 Depth=2
	movl	$0, -16(%rbp)
.LBB6_210:                              # %for.cond966
                                        #   Parent Loop BB6_34 Depth=1
                                        #     Parent Loop BB6_200 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB6_212 Depth 4
	cmpl	$2, -16(%rbp)
	jge	.LBB6_217
# %bb.211:                              # %for.body969
                                        #   in Loop: Header=BB6_210 Depth=3
	movl	$0, -12(%rbp)
.LBB6_212:                              # %for.cond970
                                        #   Parent Loop BB6_34 Depth=1
                                        #     Parent Loop BB6_200 Depth=2
                                        #       Parent Loop BB6_210 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	cmpl	$18, -12(%rbp)
	jge	.LBB6_215
# %bb.213:                              # %for.body973
                                        #   in Loop: Header=BB6_212 Depth=4
	movabsq	$cofAC8x8_chroma, %rax
	addq	$576, %rax              # imm = 0x240
	movq	img, %rcx
	movq	14136(%rcx), %rcx
	movl	-32(%rbp), %edx
	addl	$8, %edx
	movslq	%edx, %rdx
	movq	(%rcx,%rdx,8), %rcx
	movslq	-20(%rbp), %rdx
	movq	(%rcx,%rdx,8), %rcx
	movslq	-16(%rbp), %rdx
	movq	(%rcx,%rdx,8), %rcx
	movslq	-12(%rbp), %rdx
	movl	(%rcx,%rdx,4), %ecx
	movslq	-20(%rbp), %rdx
	imulq	$144, %rdx, %rdx
	addq	%rdx, %rax
	movslq	-16(%rbp), %rdx
	imulq	$72, %rdx, %rdx
	addq	%rdx, %rax
	movslq	-12(%rbp), %rdx
	movl	%ecx, (%rax,%rdx,4)
# %bb.214:                              # %for.inc990
                                        #   in Loop: Header=BB6_212 Depth=4
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB6_212
.LBB6_215:                              # %for.end992
                                        #   in Loop: Header=BB6_210 Depth=3
	jmp	.LBB6_216
.LBB6_216:                              # %for.inc993
                                        #   in Loop: Header=BB6_210 Depth=3
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB6_210
.LBB6_217:                              # %for.end995
                                        #   in Loop: Header=BB6_200 Depth=2
	movl	$0, -12(%rbp)
.LBB6_218:                              # %for.cond996
                                        #   Parent Loop BB6_34 Depth=1
                                        #     Parent Loop BB6_200 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB6_220 Depth 4
                                        #           Child Loop BB6_222 Depth 5
	cmpl	$2, -12(%rbp)
	jge	.LBB6_229
# %bb.219:                              # %for.body999
                                        #   in Loop: Header=BB6_218 Depth=3
	movslq	-12(%rbp), %rax
	shlq	$6, %rax
	movabsq	$dc_level_temp, %rdi
	addq	%rax, %rdi
	movl	-32(%rbp), %eax
	cltd
	movl	$2, %esi
	idivl	%esi
	movl	%edx, %ecx
	shll	$1, %ecx
	movl	-20(%rbp), %eax
	cltd
	idivl	%esi
	addl	%edx, %ecx
	movslq	%ecx, %rax
	shlq	$4, %rax
	addq	%rax, %rdi
	movl	-32(%rbp), %eax
	cltd
	idivl	%esi
	movl	%eax, %ecx
	shll	$1, %ecx
	movl	-20(%rbp), %eax
	cltd
	idivl	%esi
	addl	%eax, %ecx
	movslq	%ecx, %rax
	movl	(%rdi,%rax,4), %edi
	movslq	-12(%rbp), %rax
	shlq	$6, %rax
	movabsq	$dc_level, %rbx
	addq	%rax, %rbx
	movl	-32(%rbp), %eax
	cltd
	idivl	%esi
	movl	%edx, %ecx
	shll	$1, %ecx
	movl	-20(%rbp), %eax
	cltd
	idivl	%esi
	addl	%edx, %ecx
	movslq	%ecx, %rax
	shlq	$4, %rax
	addq	%rax, %rbx
	movl	-32(%rbp), %eax
	cltd
	idivl	%esi
	movl	%eax, %ecx
	shll	$1, %ecx
	movl	-20(%rbp), %eax
	cltd
	idivl	%esi
	addl	%eax, %ecx
	movslq	%ecx, %rax
	movl	%edi, (%rbx,%rax,4)
	movslq	-12(%rbp), %rax
	shlq	$6, %rax
	movabsq	$cbp_chroma_block_temp, %rdi
	addq	%rax, %rdi
	movl	-32(%rbp), %eax
	cltd
	idivl	%esi
	movl	%edx, %ecx
	shll	$1, %ecx
	movl	-20(%rbp), %eax
	cltd
	idivl	%esi
	addl	%edx, %ecx
	movslq	%ecx, %rax
	shlq	$4, %rax
	addq	%rax, %rdi
	movl	-32(%rbp), %eax
	cltd
	idivl	%esi
	movl	%eax, %ecx
	shll	$1, %ecx
	movl	-20(%rbp), %eax
	cltd
	idivl	%esi
	addl	%eax, %ecx
	movslq	%ecx, %rax
	movl	(%rdi,%rax,4), %edi
	movslq	-12(%rbp), %rax
	shlq	$6, %rax
	movabsq	$cbp_chroma_block, %rbx
	addq	%rax, %rbx
	movl	-32(%rbp), %eax
	cltd
	idivl	%esi
	movl	%edx, %ecx
	shll	$1, %ecx
	movl	-20(%rbp), %eax
	cltd
	idivl	%esi
	addl	%edx, %ecx
	movslq	%ecx, %rax
	shlq	$4, %rax
	addq	%rax, %rbx
	movl	-32(%rbp), %eax
	cltd
	idivl	%esi
	movl	%eax, %ecx
	shll	$1, %ecx
	movl	-20(%rbp), %eax
	cltd
	idivl	%esi
	addl	%eax, %ecx
	movslq	%ecx, %rax
	movl	%edi, (%rbx,%rax,4)
	movl	$0, -24(%rbp)
.LBB6_220:                              # %for.cond1056
                                        #   Parent Loop BB6_34 Depth=1
                                        #     Parent Loop BB6_200 Depth=2
                                        #       Parent Loop BB6_218 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB6_222 Depth 5
	cmpl	$4, -24(%rbp)
	jge	.LBB6_227
# %bb.221:                              # %for.body1059
                                        #   in Loop: Header=BB6_220 Depth=4
	movl	$0, -28(%rbp)
.LBB6_222:                              # %for.cond1060
                                        #   Parent Loop BB6_34 Depth=1
                                        #     Parent Loop BB6_200 Depth=2
                                        #       Parent Loop BB6_218 Depth=3
                                        #         Parent Loop BB6_220 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	cmpl	$4, -28(%rbp)
	jge	.LBB6_225
# %bb.223:                              # %for.body1063
                                        #   in Loop: Header=BB6_222 Depth=5
	movq	enc_picture, %rax
	movq	6464(%rax), %rax
	movslq	-12(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movl	-44(%rbp), %ecx
	addl	-24(%rbp), %ecx
	addl	-72(%rbp), %ecx
	movslq	%ecx, %rcx
	movq	(%rax,%rcx,8), %rax
	movl	-68(%rbp), %ecx
	addl	-28(%rbp), %ecx
	addl	-80(%rbp), %ecx
	movslq	%ecx, %rcx
	movzwl	(%rax,%rcx,2), %eax
	movslq	-12(%rbp), %rcx
	shlq	$8, %rcx
	leaq	-1152(%rbp), %rdx
	addq	%rcx, %rdx
	movslq	-20(%rbp), %rcx
	shlq	$6, %rcx
	addq	%rcx, %rdx
	movslq	-24(%rbp), %rcx
	shlq	$4, %rcx
	addq	%rcx, %rdx
	movslq	-28(%rbp), %rcx
	movl	%eax, (%rdx,%rcx,4)
# %bb.224:                              # %for.inc1084
                                        #   in Loop: Header=BB6_222 Depth=5
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB6_222
.LBB6_225:                              # %for.end1086
                                        #   in Loop: Header=BB6_220 Depth=4
	jmp	.LBB6_226
.LBB6_226:                              # %for.inc1087
                                        #   in Loop: Header=BB6_220 Depth=4
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB6_220
.LBB6_227:                              # %for.end1089
                                        #   in Loop: Header=BB6_218 Depth=3
	jmp	.LBB6_228
.LBB6_228:                              # %for.inc1090
                                        #   in Loop: Header=BB6_218 Depth=3
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB6_218
.LBB6_229:                              # %for.end1092
                                        #   in Loop: Header=BB6_200 Depth=2
	jmp	.LBB6_230
.LBB6_230:                              # %for.inc1093
                                        #   in Loop: Header=BB6_200 Depth=2
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB6_200
.LBB6_231:                              # %for.end1095
                                        #   in Loop: Header=BB6_34 Depth=1
	movl	$0, -24(%rbp)
.LBB6_232:                              # %for.cond1096
                                        #   Parent Loop BB6_34 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB6_234 Depth 3
	cmpl	$8, -24(%rbp)
	jge	.LBB6_239
# %bb.233:                              # %for.body1099
                                        #   in Loop: Header=BB6_232 Depth=2
	movl	$0, -28(%rbp)
.LBB6_234:                              # %for.cond1100
                                        #   Parent Loop BB6_34 Depth=1
                                        #     Parent Loop BB6_232 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	cmpl	$8, -28(%rbp)
	jge	.LBB6_237
# %bb.235:                              # %for.body1103
                                        #   in Loop: Header=BB6_234 Depth=3
	movq	enc_picture, %rax
	movq	6424(%rax), %rax
	movl	-44(%rbp), %ecx
	addl	-24(%rbp), %ecx
	movslq	%ecx, %rcx
	movq	(%rax,%rcx,8), %rax
	movl	-68(%rbp), %ecx
	addl	-28(%rbp), %ecx
	movslq	%ecx, %rcx
	movw	(%rax,%rcx,2), %ax
	movslq	-24(%rbp), %rcx
	shlq	$4, %rcx
	leaq	-384(%rbp), %rdx
	addq	%rcx, %rdx
	movslq	-28(%rbp), %rcx
	movw	%ax, (%rdx,%rcx,2)
# %bb.236:                              # %for.inc1115
                                        #   in Loop: Header=BB6_234 Depth=3
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB6_234
.LBB6_237:                              # %for.end1117
                                        #   in Loop: Header=BB6_232 Depth=2
	jmp	.LBB6_238
.LBB6_238:                              # %for.inc1118
                                        #   in Loop: Header=BB6_232 Depth=2
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB6_232
.LBB6_239:                              # %for.end1120
                                        #   in Loop: Header=BB6_34 Depth=1
	movl	-128(%rbp), %eax
	movl	%eax, -108(%rbp)
	vmovsd	-144(%rbp), %xmm0       # xmm0 = mem[0],zero
	vmovsd	%xmm0, -136(%rbp)
	movl	-48(%rbp), %eax
	movl	%eax, -60(%rbp)
.LBB6_240:                              # %if.end1121
                                        #   in Loop: Header=BB6_34 Depth=1
	jmp	.LBB6_241
.LBB6_241:                              # %if.end1122
                                        #   in Loop: Header=BB6_34 Depth=1
	jmp	.LBB6_242
.LBB6_242:                              # %if.end1123
                                        #   in Loop: Header=BB6_34 Depth=1
	jmp	.LBB6_243
.LBB6_243:                              # %if.end1124
                                        #   in Loop: Header=BB6_34 Depth=1
	jmp	.LBB6_244
.LBB6_244:                              # %for.inc1125
                                        #   in Loop: Header=BB6_34 Depth=1
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB6_34
.LBB6_245:                              # %for.end1127
	movl	-60(%rbp), %eax
	movq	img, %rcx
	movq	112(%rcx), %rcx
	movslq	-192(%rbp), %rdx
	movq	(%rcx,%rdx,8), %rcx
	movslq	-176(%rbp), %rdx
	movl	%eax, (%rcx,%rdx,4)
	movl	-104(%rbp), %eax
	cmpl	-60(%rbp), %eax
	jne	.LBB6_247
# %bb.246:                              # %cond.true1135
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	jmp	.LBB6_251
.LBB6_247:                              # %cond.false1136
	movl	-60(%rbp), %eax
	cmpl	-104(%rbp), %eax
	jge	.LBB6_249
# %bb.248:                              # %cond.true1139
	movl	-60(%rbp), %eax
	jmp	.LBB6_250
.LBB6_249:                              # %cond.false1140
	movl	-60(%rbp), %eax
	subl	$1, %eax
.LBB6_250:                              # %cond.end1142
.LBB6_251:                              # %cond.end1144
	movq	img, %rcx
	movq	14168(%rcx), %rcx
	movq	img, %rdx
	movslq	12(%rdx), %rdx
	imulq	$632, %rdx, %rdx        # imm = 0x278
	addq	%rdx, %rcx
	movl	-32(%rbp), %edx
	shll	$2, %edx
	movslq	%edx, %rdx
	movl	%eax, 396(%rcx,%rdx,4)
	movl	$0, -16(%rbp)
.LBB6_252:                              # %for.cond1153
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_254 Depth 2
	cmpl	$2, -16(%rbp)
	jge	.LBB6_259
# %bb.253:                              # %for.body1156
                                        #   in Loop: Header=BB6_252 Depth=1
	movl	$0, -12(%rbp)
.LBB6_254:                              # %for.cond1157
                                        #   Parent Loop BB6_252 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$2, -12(%rbp)
	jge	.LBB6_257
# %bb.255:                              # %for.body1160
                                        #   in Loop: Header=BB6_254 Depth=2
	movl	-60(%rbp), %ecx
	movq	img, %rax
	movq	112(%rax), %rsi
	movl	-12(%rbp), %edi
	movq	img, %rax
	movl	136(%rax), %eax
	shll	$2, %eax
	addl	%eax, %edi
	movl	-32(%rbp), %eax
	cltd
	movl	$2, %ebx
	idivl	%ebx
	shll	$1, %edx
	addl	%edx, %edi
	movslq	%edi, %rax
	movq	(%rsi,%rax,8), %rsi
	movl	-16(%rbp), %edi
	movq	img, %rax
	movl	140(%rax), %eax
	shll	$2, %eax
	addl	%eax, %edi
	movl	-32(%rbp), %eax
	cltd
	idivl	%ebx
	shll	$1, %eax
	addl	%eax, %edi
	movslq	%edi, %rax
	movl	%ecx, (%rsi,%rax,4)
# %bb.256:                              # %for.inc1176
                                        #   in Loop: Header=BB6_254 Depth=2
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB6_254
.LBB6_257:                              # %for.end1178
                                        #   in Loop: Header=BB6_252 Depth=1
	jmp	.LBB6_258
.LBB6_258:                              # %for.inc1179
                                        #   in Loop: Header=BB6_252 Depth=1
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB6_252
.LBB6_259:                              # %for.end1181
	movq	input, %rax
	cmpl	$0, 2464(%rax)
	jne	.LBB6_359
# %bb.260:                              # %if.then1184
	movq	img, %rax
	cmpl	$0, 72724(%rax)
	jne	.LBB6_270
# %bb.261:                              # %if.then1187
	movl	$0, -16(%rbp)
.LBB6_262:                              # %for.cond1188
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_264 Depth 2
	cmpl	$8, -16(%rbp)
	jge	.LBB6_269
# %bb.263:                              # %for.body1191
                                        #   in Loop: Header=BB6_262 Depth=1
	movl	$0, -12(%rbp)
.LBB6_264:                              # %for.cond1192
                                        #   Parent Loop BB6_262 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$8, -12(%rbp)
	jge	.LBB6_267
# %bb.265:                              # %for.body1195
                                        #   in Loop: Header=BB6_264 Depth=2
	movq	img, %rax
	addq	$7352, %rax             # imm = 0x1CB8
	movslq	-60(%rbp), %rcx
	shlq	$7, %rcx
	addq	%rcx, %rax
	movslq	-16(%rbp), %rcx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movslq	-12(%rbp), %rcx
	movw	(%rax,%rcx,2), %ax
	movq	img, %rcx
	addq	$12600, %rcx            # imm = 0x3138
	movl	-36(%rbp), %edx
	addl	-12(%rbp), %edx
	movslq	%edx, %rdx
	shlq	$5, %rdx
	addq	%rdx, %rcx
	movl	-40(%rbp), %edx
	addl	-16(%rbp), %edx
	movslq	%edx, %rdx
	movw	%ax, (%rcx,%rdx,2)
	movq	-168(%rbp), %rax
	movl	-92(%rbp), %ecx
	addl	-16(%rbp), %ecx
	movslq	%ecx, %rcx
	movq	(%rax,%rcx,8), %rax
	movl	-96(%rbp), %ecx
	addl	-12(%rbp), %ecx
	movslq	%ecx, %rcx
	movzwl	(%rax,%rcx,2), %eax
	movq	img, %rcx
	addq	$7352, %rcx             # imm = 0x1CB8
	movslq	-60(%rbp), %rdx
	shlq	$7, %rdx
	addq	%rdx, %rcx
	movslq	-16(%rbp), %rdx
	shlq	$4, %rdx
	addq	%rdx, %rcx
	movslq	-12(%rbp), %rdx
	movzwl	(%rcx,%rdx,2), %ecx
	subl	%ecx, %eax
	movq	img, %rcx
	addq	$13112, %rcx            # imm = 0x3338
	movslq	-12(%rbp), %rdx
	shlq	$6, %rdx
	addq	%rdx, %rcx
	movslq	-16(%rbp), %rdx
	movl	%eax, (%rcx,%rdx,4)
# %bb.266:                              # %for.inc1231
                                        #   in Loop: Header=BB6_264 Depth=2
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB6_264
.LBB6_267:                              # %for.end1233
                                        #   in Loop: Header=BB6_262 Depth=1
	jmp	.LBB6_268
.LBB6_268:                              # %for.inc1234
                                        #   in Loop: Header=BB6_262 Depth=1
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB6_262
.LBB6_269:                              # %for.end1236
	movl	-32(%rbp), %edi
	leaq	-172(%rbp), %rsi
	movl	$1, %edx
	callq	dct_luma8x8
	movl	%eax, -108(%rbp)
	jmp	.LBB6_358
.LBB6_270:                              # %if.else1238
	movl	$0, -16(%rbp)
.LBB6_271:                              # %for.cond1239
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_273 Depth 2
	cmpl	$8, -16(%rbp)
	jge	.LBB6_278
# %bb.272:                              # %for.body1242
                                        #   in Loop: Header=BB6_271 Depth=1
	movl	$0, -12(%rbp)
.LBB6_273:                              # %for.cond1243
                                        #   Parent Loop BB6_271 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$8, -12(%rbp)
	jge	.LBB6_276
# %bb.274:                              # %for.body1246
                                        #   in Loop: Header=BB6_273 Depth=2
	movq	img, %rax
	addq	$7352, %rax             # imm = 0x1CB8
	movslq	-60(%rbp), %rcx
	shlq	$7, %rcx
	addq	%rcx, %rax
	movslq	-16(%rbp), %rcx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movslq	-12(%rbp), %rcx
	movw	(%rax,%rcx,2), %ax
	movq	img, %rcx
	addq	$12600, %rcx            # imm = 0x3138
	movl	-36(%rbp), %edx
	addl	-12(%rbp), %edx
	movslq	%edx, %rdx
	shlq	$5, %rdx
	addq	%rdx, %rcx
	movl	-40(%rbp), %edx
	addl	-16(%rbp), %edx
	movslq	%edx, %rdx
	movw	%ax, (%rcx,%rdx,2)
	movq	imgUV_org, %rax
	movq	(%rax), %rax
	movl	-92(%rbp), %ecx
	addl	-16(%rbp), %ecx
	movslq	%ecx, %rcx
	movq	(%rax,%rcx,8), %rax
	movl	-96(%rbp), %ecx
	addl	-12(%rbp), %ecx
	movslq	%ecx, %rcx
	movzwl	(%rax,%rcx,2), %eax
	movq	img, %rcx
	addq	$8504, %rcx             # imm = 0x2138
	movslq	-56(%rbp), %rdx
	shlq	$9, %rdx
	addq	%rdx, %rcx
	movl	-36(%rbp), %edx
	addl	-12(%rbp), %edx
	movslq	%edx, %rdx
	shlq	$5, %rdx
	addq	%rdx, %rcx
	movl	-40(%rbp), %edx
	addl	-16(%rbp), %edx
	movslq	%edx, %rdx
	movzwl	(%rcx,%rdx,2), %ecx
	subl	%ecx, %eax
	movl	%eax, -64(%rbp)
	movq	imgY_org, %rax
	movl	-92(%rbp), %ecx
	addl	-16(%rbp), %ecx
	movslq	%ecx, %rcx
	movq	(%rax,%rcx,8), %rax
	movl	-96(%rbp), %ecx
	addl	-12(%rbp), %ecx
	movslq	%ecx, %rcx
	movzwl	(%rax,%rcx,2), %eax
	movq	img, %rcx
	addq	$7352, %rcx             # imm = 0x1CB8
	movslq	-60(%rbp), %rdx
	shlq	$7, %rdx
	addq	%rdx, %rcx
	movslq	-16(%rbp), %rdx
	shlq	$4, %rdx
	addq	%rdx, %rcx
	movslq	-12(%rbp), %rdx
	movzwl	(%rcx,%rdx,2), %ecx
	subl	%ecx, %eax
	movl	%eax, -76(%rbp)
	movq	imgUV_org, %rax
	movq	8(%rax), %rax
	movl	-92(%rbp), %ecx
	addl	-16(%rbp), %ecx
	movslq	%ecx, %rcx
	movq	(%rax,%rcx,8), %rax
	movl	-96(%rbp), %ecx
	addl	-12(%rbp), %ecx
	movslq	%ecx, %rcx
	movzwl	(%rax,%rcx,2), %eax
	movq	img, %rcx
	addq	$8504, %rcx             # imm = 0x2138
	addq	$2048, %rcx             # imm = 0x800
	movslq	-56(%rbp), %rdx
	shlq	$9, %rdx
	addq	%rdx, %rcx
	movl	-36(%rbp), %edx
	addl	-12(%rbp), %edx
	movslq	%edx, %rdx
	shlq	$5, %rdx
	addq	%rdx, %rcx
	movl	-40(%rbp), %edx
	addl	-16(%rbp), %edx
	movslq	%edx, %rdx
	movzwl	(%rcx,%rdx,2), %ecx
	subl	%ecx, %eax
	movl	%eax, -84(%rbp)
	movl	-84(%rbp), %eax
	subl	-64(%rbp), %eax
	movslq	-12(%rbp), %rcx
	shlq	$6, %rcx
	movabsq	$resTrans_R, %rdx
	movq	%rdx, %rsi
	addq	%rcx, %rsi
	movslq	-16(%rbp), %rcx
	movl	%eax, (%rsi,%rcx,4)
	movl	-64(%rbp), %eax
	movslq	-12(%rbp), %rcx
	shlq	$6, %rcx
	addq	%rcx, %rdx
	movslq	-16(%rbp), %rcx
	movl	(%rdx,%rcx,4), %ecx
	sarl	$1, %ecx
	addl	%ecx, %eax
	movl	%eax, -88(%rbp)
	movl	-76(%rbp), %eax
	subl	-88(%rbp), %eax
	movslq	-12(%rbp), %rcx
	shlq	$6, %rcx
	movabsq	$resTrans_B, %rdx
	movq	%rdx, %rsi
	addq	%rcx, %rsi
	movslq	-16(%rbp), %rcx
	movl	%eax, (%rsi,%rcx,4)
	movl	-88(%rbp), %eax
	movslq	-12(%rbp), %rcx
	shlq	$6, %rcx
	addq	%rcx, %rdx
	movslq	-16(%rbp), %rcx
	movl	(%rdx,%rcx,4), %ecx
	sarl	$1, %ecx
	addl	%ecx, %eax
	movslq	-12(%rbp), %rcx
	shlq	$6, %rcx
	movabsq	$resTrans_G, %rdx
	addq	%rcx, %rdx
	movslq	-16(%rbp), %rcx
	movl	%eax, (%rdx,%rcx,4)
# %bb.275:                              # %for.inc1343
                                        #   in Loop: Header=BB6_273 Depth=2
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB6_273
.LBB6_276:                              # %for.end1345
                                        #   in Loop: Header=BB6_271 Depth=1
	jmp	.LBB6_277
.LBB6_277:                              # %for.inc1346
                                        #   in Loop: Header=BB6_271 Depth=1
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB6_271
.LBB6_278:                              # %for.end1348
	movl	$0, -16(%rbp)
.LBB6_279:                              # %for.cond1349
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_281 Depth 2
	cmpl	$8, -16(%rbp)
	jge	.LBB6_286
# %bb.280:                              # %for.body1352
                                        #   in Loop: Header=BB6_279 Depth=1
	movl	$0, -12(%rbp)
.LBB6_281:                              # %for.cond1353
                                        #   Parent Loop BB6_279 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$8, -12(%rbp)
	jge	.LBB6_284
# %bb.282:                              # %for.body1356
                                        #   in Loop: Header=BB6_281 Depth=2
	movslq	-12(%rbp), %rax
	shlq	$6, %rax
	movabsq	$resTrans_G, %rcx
	addq	%rax, %rcx
	movslq	-16(%rbp), %rax
	movl	(%rcx,%rax,4), %eax
	movq	img, %rcx
	addq	$13112, %rcx            # imm = 0x3338
	movslq	-12(%rbp), %rdx
	shlq	$6, %rdx
	addq	%rdx, %rcx
	movslq	-16(%rbp), %rdx
	movl	%eax, (%rcx,%rdx,4)
# %bb.283:                              # %for.inc1366
                                        #   in Loop: Header=BB6_281 Depth=2
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB6_281
.LBB6_284:                              # %for.end1368
                                        #   in Loop: Header=BB6_279 Depth=1
	jmp	.LBB6_285
.LBB6_285:                              # %for.inc1369
                                        #   in Loop: Header=BB6_279 Depth=1
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB6_279
.LBB6_286:                              # %for.end1371
	movl	-32(%rbp), %edi
	leaq	-172(%rbp), %rsi
	movl	$1, %edx
	callq	dct_luma8x8
	movl	%eax, -108(%rbp)
	movl	$0, -16(%rbp)
.LBB6_287:                              # %for.cond1373
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_289 Depth 2
	cmpl	$8, -16(%rbp)
	jge	.LBB6_294
# %bb.288:                              # %for.body1376
                                        #   in Loop: Header=BB6_287 Depth=1
	movl	$0, -12(%rbp)
.LBB6_289:                              # %for.cond1377
                                        #   Parent Loop BB6_287 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$8, -12(%rbp)
	jge	.LBB6_292
# %bb.290:                              # %for.body1380
                                        #   in Loop: Header=BB6_289 Depth=2
	movq	img, %rax
	addq	$13112, %rax            # imm = 0x3338
	movslq	-12(%rbp), %rcx
	shlq	$6, %rcx
	addq	%rcx, %rax
	movslq	-16(%rbp), %rcx
	movl	(%rax,%rcx,4), %eax
	movslq	-12(%rbp), %rcx
	shlq	$6, %rcx
	movabsq	$rec_resG, %rdx
	addq	%rcx, %rdx
	movslq	-16(%rbp), %rcx
	movl	%eax, (%rdx,%rcx,4)
# %bb.291:                              # %for.inc1390
                                        #   in Loop: Header=BB6_289 Depth=2
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB6_289
.LBB6_292:                              # %for.end1392
                                        #   in Loop: Header=BB6_287 Depth=1
	jmp	.LBB6_293
.LBB6_293:                              # %for.inc1393
                                        #   in Loop: Header=BB6_287 Depth=1
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB6_287
.LBB6_294:                              # %for.end1395
	movl	$0, -20(%rbp)
.LBB6_295:                              # %for.cond1396
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_297 Depth 2
                                        #       Child Loop BB6_299 Depth 3
                                        #     Child Loop BB6_305 Depth 2
                                        #       Child Loop BB6_307 Depth 3
                                        #     Child Loop BB6_313 Depth 2
                                        #       Child Loop BB6_315 Depth 3
	cmpl	$4, -20(%rbp)
	jge	.LBB6_322
# %bb.296:                              # %for.body1399
                                        #   in Loop: Header=BB6_295 Depth=1
	movl	-20(%rbp), %eax
	cltd
	movl	$2, %ecx
	idivl	%ecx
	shll	$2, %edx
	movl	%edx, -80(%rbp)
	movl	-20(%rbp), %eax
	cltd
	idivl	%ecx
	shll	$2, %eax
	movl	%eax, -72(%rbp)
	movl	$0, -16(%rbp)
.LBB6_297:                              # %for.cond1404
                                        #   Parent Loop BB6_295 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB6_299 Depth 3
	cmpl	$4, -16(%rbp)
	jge	.LBB6_304
# %bb.298:                              # %for.body1407
                                        #   in Loop: Header=BB6_297 Depth=2
	movl	$0, -12(%rbp)
.LBB6_299:                              # %for.cond1408
                                        #   Parent Loop BB6_295 Depth=1
                                        #     Parent Loop BB6_297 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	cmpl	$4, -12(%rbp)
	jge	.LBB6_302
# %bb.300:                              # %for.body1411
                                        #   in Loop: Header=BB6_299 Depth=3
	movl	-12(%rbp), %eax
	addl	-80(%rbp), %eax
	cltq
	shlq	$6, %rax
	movabsq	$resTrans_R, %rcx
	addq	%rax, %rcx
	movl	-16(%rbp), %eax
	addl	-72(%rbp), %eax
	cltq
	movl	(%rcx,%rax,4), %eax
	movq	img, %rcx
	addq	$13112, %rcx            # imm = 0x3338
	movslq	-12(%rbp), %rdx
	shlq	$6, %rdx
	addq	%rdx, %rcx
	movslq	-16(%rbp), %rdx
	movl	%eax, (%rcx,%rdx,4)
# %bb.301:                              # %for.inc1423
                                        #   in Loop: Header=BB6_299 Depth=3
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB6_299
.LBB6_302:                              # %for.end1425
                                        #   in Loop: Header=BB6_297 Depth=2
	jmp	.LBB6_303
.LBB6_303:                              # %for.inc1426
                                        #   in Loop: Header=BB6_297 Depth=2
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB6_297
.LBB6_304:                              # %for.end1428
                                        #   in Loop: Header=BB6_295 Depth=1
	movl	-32(%rbp), %esi
	addl	$4, %esi
	movl	-20(%rbp), %edx
	xorl	%edi, %edi
	callq	dct_chroma4x4
	movl	%eax, %ecx
	movl	-32(%rbp), %eax
	cltd
	movl	$2, %edi
	idivl	%edi
	movl	%edx, %esi
	shll	$1, %esi
	movl	-20(%rbp), %eax
	cltd
	idivl	%edi
	addl	%edx, %esi
	movslq	%esi, %rax
	shlq	$4, %rax
	movabsq	$cbp_chroma_block, %rbx
	addq	%rax, %rbx
	movl	-32(%rbp), %eax
	cltd
	idivl	%edi
	movl	%eax, %esi
	shll	$1, %esi
	movl	-20(%rbp), %eax
	cltd
	idivl	%edi
	addl	%eax, %esi
	movslq	%esi, %rax
	movl	%ecx, (%rbx,%rax,4)
	movl	-32(%rbp), %eax
	cltd
	idivl	%edi
	movl	%edx, %ecx
	shll	$1, %ecx
	movl	-20(%rbp), %eax
	cltd
	idivl	%edi
	addl	%edx, %ecx
	movslq	%ecx, %rax
	shlq	$4, %rax
	movabsq	$dc_level_temp, %rsi
	addq	%rax, %rsi
	movl	-32(%rbp), %eax
	cltd
	idivl	%edi
	movl	%eax, %ecx
	shll	$1, %ecx
	movl	-20(%rbp), %eax
	cltd
	idivl	%edi
	addl	%eax, %ecx
	movslq	%ecx, %rax
	movl	(%rsi,%rax,4), %esi
	movl	-32(%rbp), %eax
	cltd
	idivl	%edi
	movl	%edx, %ecx
	shll	$1, %ecx
	movl	-20(%rbp), %eax
	cltd
	idivl	%edi
	addl	%edx, %ecx
	movslq	%ecx, %rax
	shlq	$4, %rax
	movabsq	$dc_level, %rbx
	addq	%rax, %rbx
	movl	-32(%rbp), %eax
	cltd
	idivl	%edi
	movl	%eax, %ecx
	shll	$1, %ecx
	movl	-20(%rbp), %eax
	cltd
	idivl	%edi
	addl	%eax, %ecx
	movslq	%ecx, %rax
	movl	%esi, (%rbx,%rax,4)
	movl	$0, -16(%rbp)
.LBB6_305:                              # %for.cond1467
                                        #   Parent Loop BB6_295 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB6_307 Depth 3
	cmpl	$4, -16(%rbp)
	jge	.LBB6_312
# %bb.306:                              # %for.body1470
                                        #   in Loop: Header=BB6_305 Depth=2
	movl	$0, -12(%rbp)
.LBB6_307:                              # %for.cond1471
                                        #   Parent Loop BB6_295 Depth=1
                                        #     Parent Loop BB6_305 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	cmpl	$4, -12(%rbp)
	jge	.LBB6_310
# %bb.308:                              # %for.body1474
                                        #   in Loop: Header=BB6_307 Depth=3
	movq	img, %rax
	addq	$13112, %rax            # imm = 0x3338
	movslq	-12(%rbp), %rcx
	shlq	$6, %rcx
	addq	%rcx, %rax
	movslq	-16(%rbp), %rcx
	movl	(%rax,%rcx,4), %eax
	movl	-12(%rbp), %ecx
	addl	-80(%rbp), %ecx
	movslq	%ecx, %rcx
	shlq	$6, %rcx
	movabsq	$rec_resR, %rdx
	addq	%rcx, %rdx
	movl	-16(%rbp), %ecx
	addl	-72(%rbp), %ecx
	movslq	%ecx, %rcx
	movl	%eax, (%rdx,%rcx,4)
	movl	-12(%rbp), %eax
	addl	-80(%rbp), %eax
	cltq
	shlq	$6, %rax
	movabsq	$resTrans_B, %rcx
	addq	%rax, %rcx
	movl	-16(%rbp), %eax
	addl	-72(%rbp), %eax
	cltq
	movl	(%rcx,%rax,4), %eax
	movq	img, %rcx
	addq	$13112, %rcx            # imm = 0x3338
	movslq	-12(%rbp), %rdx
	shlq	$6, %rdx
	addq	%rdx, %rcx
	movslq	-16(%rbp), %rdx
	movl	%eax, (%rcx,%rdx,4)
# %bb.309:                              # %for.inc1497
                                        #   in Loop: Header=BB6_307 Depth=3
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB6_307
.LBB6_310:                              # %for.end1499
                                        #   in Loop: Header=BB6_305 Depth=2
	jmp	.LBB6_311
.LBB6_311:                              # %for.inc1500
                                        #   in Loop: Header=BB6_305 Depth=2
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB6_305
.LBB6_312:                              # %for.end1502
                                        #   in Loop: Header=BB6_295 Depth=1
	movl	-32(%rbp), %esi
	addl	$8, %esi
	movl	-20(%rbp), %edx
	movl	$1, %edi
	callq	dct_chroma4x4
	movl	%eax, %r9d
	movabsq	$dc_level, %r8
	addq	$64, %r8
	movabsq	$dc_level_temp, %rdi
	addq	$64, %rdi
	movabsq	$cbp_chroma_block, %rcx
	addq	$64, %rcx
	movl	-32(%rbp), %eax
	cltd
	movl	$2, %ebx
	idivl	%ebx
	movl	%edx, %esi
	shll	$1, %esi
	movl	-20(%rbp), %eax
	cltd
	idivl	%ebx
	addl	%edx, %esi
	movslq	%esi, %rax
	shlq	$4, %rax
	addq	%rax, %rcx
	movl	-32(%rbp), %eax
	cltd
	idivl	%ebx
	movl	%eax, %esi
	shll	$1, %esi
	movl	-20(%rbp), %eax
	cltd
	idivl	%ebx
	addl	%eax, %esi
	movslq	%esi, %rax
	movl	%r9d, (%rcx,%rax,4)
	movl	-32(%rbp), %eax
	cltd
	idivl	%ebx
	movl	%edx, %ecx
	shll	$1, %ecx
	movl	-20(%rbp), %eax
	cltd
	idivl	%ebx
	addl	%edx, %ecx
	movslq	%ecx, %rax
	shlq	$4, %rax
	addq	%rax, %rdi
	movl	-32(%rbp), %eax
	cltd
	idivl	%ebx
	movl	%eax, %ecx
	shll	$1, %ecx
	movl	-20(%rbp), %eax
	cltd
	idivl	%ebx
	addl	%eax, %ecx
	movslq	%ecx, %rax
	movl	(%rdi,%rax,4), %esi
	movl	-32(%rbp), %eax
	cltd
	idivl	%ebx
	movl	%edx, %ecx
	shll	$1, %ecx
	movl	-20(%rbp), %eax
	cltd
	idivl	%ebx
	addl	%edx, %ecx
	movslq	%ecx, %rax
	shlq	$4, %rax
	addq	%rax, %r8
	movl	-32(%rbp), %eax
	cltd
	idivl	%ebx
	movl	%eax, %ecx
	shll	$1, %ecx
	movl	-20(%rbp), %eax
	cltd
	idivl	%ebx
	addl	%eax, %ecx
	movslq	%ecx, %rax
	movl	%esi, (%r8,%rax,4)
	movl	$0, -16(%rbp)
.LBB6_313:                              # %for.cond1541
                                        #   Parent Loop BB6_295 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB6_315 Depth 3
	cmpl	$4, -16(%rbp)
	jge	.LBB6_320
# %bb.314:                              # %for.body1544
                                        #   in Loop: Header=BB6_313 Depth=2
	movl	$0, -12(%rbp)
.LBB6_315:                              # %for.cond1545
                                        #   Parent Loop BB6_295 Depth=1
                                        #     Parent Loop BB6_313 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	cmpl	$4, -12(%rbp)
	jge	.LBB6_318
# %bb.316:                              # %for.body1548
                                        #   in Loop: Header=BB6_315 Depth=3
	movq	img, %rax
	addq	$13112, %rax            # imm = 0x3338
	movslq	-12(%rbp), %rcx
	shlq	$6, %rcx
	addq	%rcx, %rax
	movslq	-16(%rbp), %rcx
	movl	(%rax,%rcx,4), %eax
	movl	-12(%rbp), %ecx
	addl	-80(%rbp), %ecx
	movslq	%ecx, %rcx
	shlq	$6, %rcx
	movabsq	$rec_resB, %rdx
	addq	%rcx, %rdx
	movl	-16(%rbp), %ecx
	addl	-72(%rbp), %ecx
	movslq	%ecx, %rcx
	movl	%eax, (%rdx,%rcx,4)
# %bb.317:                              # %for.inc1560
                                        #   in Loop: Header=BB6_315 Depth=3
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB6_315
.LBB6_318:                              # %for.end1562
                                        #   in Loop: Header=BB6_313 Depth=2
	jmp	.LBB6_319
.LBB6_319:                              # %for.inc1563
                                        #   in Loop: Header=BB6_313 Depth=2
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB6_313
.LBB6_320:                              # %for.end1565
                                        #   in Loop: Header=BB6_295 Depth=1
	jmp	.LBB6_321
.LBB6_321:                              # %for.inc1566
                                        #   in Loop: Header=BB6_295 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB6_295
.LBB6_322:                              # %for.end1568
	movl	$0, -16(%rbp)
.LBB6_323:                              # %for.cond1569
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_325 Depth 2
	cmpl	$8, -16(%rbp)
	jge	.LBB6_357
# %bb.324:                              # %for.body1572
                                        #   in Loop: Header=BB6_323 Depth=1
	movl	$0, -12(%rbp)
.LBB6_325:                              # %for.cond1573
                                        #   Parent Loop BB6_323 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$8, -12(%rbp)
	jge	.LBB6_355
# %bb.326:                              # %for.body1576
                                        #   in Loop: Header=BB6_325 Depth=2
	xorl	%eax, %eax
	movslq	-12(%rbp), %rcx
	shlq	$6, %rcx
	movabsq	$rec_resG, %rdx
	addq	%rcx, %rdx
	movslq	-16(%rbp), %rcx
	movl	(%rdx,%rcx,4), %ecx
	movslq	-12(%rbp), %rdx
	shlq	$6, %rdx
	movabsq	$rec_resB, %rsi
	movq	%rsi, %rdi
	addq	%rdx, %rdi
	movslq	-16(%rbp), %rdx
	movl	(%rdi,%rdx,4), %edx
	sarl	$1, %edx
	subl	%edx, %ecx
	movl	%ecx, -88(%rbp)
	movslq	-12(%rbp), %rcx
	shlq	$6, %rcx
	addq	%rcx, %rsi
	movslq	-16(%rbp), %rcx
	movl	(%rsi,%rcx,4), %ecx
	addl	-88(%rbp), %ecx
	movl	%ecx, -76(%rbp)
	movl	-88(%rbp), %ecx
	movslq	-12(%rbp), %rdx
	shlq	$6, %rdx
	movabsq	$rec_resR, %rsi
	movq	%rsi, %rdi
	addq	%rdx, %rdi
	movslq	-16(%rbp), %rdx
	movl	(%rdi,%rdx,4), %edx
	sarl	$1, %edx
	subl	%edx, %ecx
	movl	%ecx, -64(%rbp)
	movl	-64(%rbp), %ecx
	movslq	-12(%rbp), %rdx
	shlq	$6, %rdx
	addq	%rdx, %rsi
	movslq	-16(%rbp), %rdx
	addl	(%rsi,%rdx,4), %ecx
	movl	%ecx, -84(%rbp)
	movq	img, %rcx
	movl	72688(%rcx), %ecx
	movl	-64(%rbp), %edx
	movq	img, %rsi
	addq	$8504, %rsi             # imm = 0x2138
	movslq	-56(%rbp), %rdi
	shlq	$9, %rdi
	addq	%rdi, %rsi
	movl	-36(%rbp), %edi
	addl	-12(%rbp), %edi
	movslq	%edi, %rdi
	shlq	$5, %rdi
	addq	%rdi, %rsi
	movl	-40(%rbp), %edi
	addl	-16(%rbp), %edi
	movslq	%edi, %rdi
	movzwl	(%rsi,%rdi,2), %esi
	addl	%esi, %edx
	cmpl	%edx, %eax
	jle	.LBB6_328
# %bb.327:                              # %cond.true1618
                                        #   in Loop: Header=BB6_325 Depth=2
	xorl	%eax, %eax
	jmp	.LBB6_329
.LBB6_328:                              # %cond.false1619
                                        #   in Loop: Header=BB6_325 Depth=2
	movl	-64(%rbp), %eax
	movq	img, %rdx
	addq	$8504, %rdx             # imm = 0x2138
	movslq	-56(%rbp), %rsi
	shlq	$9, %rsi
	addq	%rsi, %rdx
	movl	-36(%rbp), %esi
	addl	-12(%rbp), %esi
	movslq	%esi, %rsi
	shlq	$5, %rsi
	addq	%rsi, %rdx
	movl	-40(%rbp), %esi
	addl	-16(%rbp), %esi
	movslq	%esi, %rsi
	movzwl	(%rdx,%rsi,2), %edx
	addl	%edx, %eax
.LBB6_329:                              # %cond.end1632
                                        #   in Loop: Header=BB6_325 Depth=2
	cmpl	%eax, %ecx
	jge	.LBB6_331
# %bb.330:                              # %cond.true1636
                                        #   in Loop: Header=BB6_325 Depth=2
	movq	img, %rax
	movl	72688(%rax), %eax
	jmp	.LBB6_335
.LBB6_331:                              # %cond.false1638
                                        #   in Loop: Header=BB6_325 Depth=2
	xorl	%eax, %eax
	movl	-64(%rbp), %ecx
	movq	img, %rdx
	addq	$8504, %rdx             # imm = 0x2138
	movslq	-56(%rbp), %rsi
	shlq	$9, %rsi
	addq	%rsi, %rdx
	movl	-36(%rbp), %esi
	addl	-12(%rbp), %esi
	movslq	%esi, %rsi
	shlq	$5, %rsi
	addq	%rsi, %rdx
	movl	-40(%rbp), %esi
	addl	-16(%rbp), %esi
	movslq	%esi, %rsi
	movzwl	(%rdx,%rsi,2), %edx
	addl	%edx, %ecx
	cmpl	%ecx, %eax
	jle	.LBB6_333
# %bb.332:                              # %cond.true1653
                                        #   in Loop: Header=BB6_325 Depth=2
	xorl	%eax, %eax
	jmp	.LBB6_334
.LBB6_333:                              # %cond.false1654
                                        #   in Loop: Header=BB6_325 Depth=2
	movl	-64(%rbp), %eax
	movq	img, %rcx
	addq	$8504, %rcx             # imm = 0x2138
	movslq	-56(%rbp), %rdx
	shlq	$9, %rdx
	addq	%rdx, %rcx
	movl	-36(%rbp), %edx
	addl	-12(%rbp), %edx
	movslq	%edx, %rdx
	shlq	$5, %rdx
	addq	%rdx, %rcx
	movl	-40(%rbp), %edx
	addl	-16(%rbp), %edx
	movslq	%edx, %rdx
	movzwl	(%rcx,%rdx,2), %ecx
	addl	%ecx, %eax
.LBB6_334:                              # %cond.end1667
                                        #   in Loop: Header=BB6_325 Depth=2
.LBB6_335:                              # %cond.end1669
                                        #   in Loop: Header=BB6_325 Depth=2
	xorl	%ecx, %ecx
	movq	enc_picture, %rdx
	movq	6464(%rdx), %rdx
	movq	(%rdx), %rdx
	movl	-44(%rbp), %esi
	addl	-16(%rbp), %esi
	movslq	%esi, %rsi
	movq	(%rdx,%rsi,8), %rdx
	movl	-68(%rbp), %esi
	addl	-12(%rbp), %esi
	movslq	%esi, %rsi
	movw	%ax, (%rdx,%rsi,2)
	movq	img, %rax
	movl	72684(%rax), %eax
	movl	-76(%rbp), %edx
	movq	img, %rsi
	addq	$7352, %rsi             # imm = 0x1CB8
	movslq	-60(%rbp), %rdi
	shlq	$7, %rdi
	addq	%rdi, %rsi
	movslq	-16(%rbp), %rdi
	shlq	$4, %rdi
	addq	%rdi, %rsi
	movslq	-12(%rbp), %rdi
	movzwl	(%rsi,%rdi,2), %esi
	addl	%esi, %edx
	cmpl	%edx, %ecx
	jle	.LBB6_337
# %bb.336:                              # %cond.true1692
                                        #   in Loop: Header=BB6_325 Depth=2
	xorl	%ecx, %ecx
	jmp	.LBB6_338
.LBB6_337:                              # %cond.false1693
                                        #   in Loop: Header=BB6_325 Depth=2
	movl	-76(%rbp), %ecx
	movq	img, %rdx
	addq	$7352, %rdx             # imm = 0x1CB8
	movslq	-60(%rbp), %rsi
	shlq	$7, %rsi
	addq	%rsi, %rdx
	movslq	-16(%rbp), %rsi
	shlq	$4, %rsi
	addq	%rsi, %rdx
	movslq	-12(%rbp), %rsi
	movzwl	(%rdx,%rsi,2), %edx
	addl	%edx, %ecx
.LBB6_338:                              # %cond.end1703
                                        #   in Loop: Header=BB6_325 Depth=2
	cmpl	%ecx, %eax
	jge	.LBB6_340
# %bb.339:                              # %cond.true1707
                                        #   in Loop: Header=BB6_325 Depth=2
	movq	img, %rax
	movl	72684(%rax), %eax
	jmp	.LBB6_344
.LBB6_340:                              # %cond.false1709
                                        #   in Loop: Header=BB6_325 Depth=2
	xorl	%eax, %eax
	movl	-76(%rbp), %ecx
	movq	img, %rdx
	addq	$7352, %rdx             # imm = 0x1CB8
	movslq	-60(%rbp), %rsi
	shlq	$7, %rsi
	addq	%rsi, %rdx
	movslq	-16(%rbp), %rsi
	shlq	$4, %rsi
	addq	%rsi, %rdx
	movslq	-12(%rbp), %rsi
	movzwl	(%rdx,%rsi,2), %edx
	addl	%edx, %ecx
	cmpl	%ecx, %eax
	jle	.LBB6_342
# %bb.341:                              # %cond.true1721
                                        #   in Loop: Header=BB6_325 Depth=2
	xorl	%eax, %eax
	jmp	.LBB6_343
.LBB6_342:                              # %cond.false1722
                                        #   in Loop: Header=BB6_325 Depth=2
	movl	-76(%rbp), %eax
	movq	img, %rcx
	addq	$7352, %rcx             # imm = 0x1CB8
	movslq	-60(%rbp), %rdx
	shlq	$7, %rdx
	addq	%rdx, %rcx
	movslq	-16(%rbp), %rdx
	shlq	$4, %rdx
	addq	%rdx, %rcx
	movslq	-12(%rbp), %rdx
	movzwl	(%rcx,%rdx,2), %ecx
	addl	%ecx, %eax
.LBB6_343:                              # %cond.end1732
                                        #   in Loop: Header=BB6_325 Depth=2
.LBB6_344:                              # %cond.end1734
                                        #   in Loop: Header=BB6_325 Depth=2
	xorl	%ecx, %ecx
	movq	enc_picture, %rdx
	movq	6424(%rdx), %rdx
	movl	-44(%rbp), %esi
	addl	-16(%rbp), %esi
	movslq	%esi, %rsi
	movq	(%rdx,%rsi,8), %rdx
	movl	-68(%rbp), %esi
	addl	-12(%rbp), %esi
	movslq	%esi, %rsi
	movw	%ax, (%rdx,%rsi,2)
	movq	img, %rax
	movl	72688(%rax), %eax
	movl	-84(%rbp), %edx
	movq	img, %rsi
	addq	$8504, %rsi             # imm = 0x2138
	addq	$2048, %rsi             # imm = 0x800
	movslq	-56(%rbp), %rdi
	shlq	$9, %rdi
	addq	%rdi, %rsi
	movl	-36(%rbp), %edi
	addl	-12(%rbp), %edi
	movslq	%edi, %rdi
	shlq	$5, %rdi
	addq	%rdi, %rsi
	movl	-40(%rbp), %edi
	addl	-16(%rbp), %edi
	movslq	%edi, %rdi
	movzwl	(%rsi,%rdi,2), %esi
	addl	%esi, %edx
	cmpl	%edx, %ecx
	jle	.LBB6_346
# %bb.345:                              # %cond.true1759
                                        #   in Loop: Header=BB6_325 Depth=2
	xorl	%ecx, %ecx
	jmp	.LBB6_347
.LBB6_346:                              # %cond.false1760
                                        #   in Loop: Header=BB6_325 Depth=2
	movl	-84(%rbp), %ecx
	movq	img, %rdx
	addq	$8504, %rdx             # imm = 0x2138
	addq	$2048, %rdx             # imm = 0x800
	movslq	-56(%rbp), %rsi
	shlq	$9, %rsi
	addq	%rsi, %rdx
	movl	-36(%rbp), %esi
	addl	-12(%rbp), %esi
	movslq	%esi, %rsi
	shlq	$5, %rsi
	addq	%rsi, %rdx
	movl	-40(%rbp), %esi
	addl	-16(%rbp), %esi
	movslq	%esi, %rsi
	movzwl	(%rdx,%rsi,2), %edx
	addl	%edx, %ecx
.LBB6_347:                              # %cond.end1773
                                        #   in Loop: Header=BB6_325 Depth=2
	cmpl	%ecx, %eax
	jge	.LBB6_349
# %bb.348:                              # %cond.true1777
                                        #   in Loop: Header=BB6_325 Depth=2
	movq	img, %rax
	movl	72688(%rax), %eax
	jmp	.LBB6_353
.LBB6_349:                              # %cond.false1779
                                        #   in Loop: Header=BB6_325 Depth=2
	xorl	%eax, %eax
	movl	-84(%rbp), %ecx
	movq	img, %rdx
	addq	$8504, %rdx             # imm = 0x2138
	addq	$2048, %rdx             # imm = 0x800
	movslq	-56(%rbp), %rsi
	shlq	$9, %rsi
	addq	%rsi, %rdx
	movl	-36(%rbp), %esi
	addl	-12(%rbp), %esi
	movslq	%esi, %rsi
	shlq	$5, %rsi
	addq	%rsi, %rdx
	movl	-40(%rbp), %esi
	addl	-16(%rbp), %esi
	movslq	%esi, %rsi
	movzwl	(%rdx,%rsi,2), %edx
	addl	%edx, %ecx
	cmpl	%ecx, %eax
	jle	.LBB6_351
# %bb.350:                              # %cond.true1794
                                        #   in Loop: Header=BB6_325 Depth=2
	xorl	%eax, %eax
	jmp	.LBB6_352
.LBB6_351:                              # %cond.false1795
                                        #   in Loop: Header=BB6_325 Depth=2
	movl	-84(%rbp), %eax
	movq	img, %rcx
	addq	$8504, %rcx             # imm = 0x2138
	addq	$2048, %rcx             # imm = 0x800
	movslq	-56(%rbp), %rdx
	shlq	$9, %rdx
	addq	%rdx, %rcx
	movl	-36(%rbp), %edx
	addl	-12(%rbp), %edx
	movslq	%edx, %rdx
	shlq	$5, %rdx
	addq	%rdx, %rcx
	movl	-40(%rbp), %edx
	addl	-16(%rbp), %edx
	movslq	%edx, %rdx
	movzwl	(%rcx,%rdx,2), %ecx
	addl	%ecx, %eax
.LBB6_352:                              # %cond.end1808
                                        #   in Loop: Header=BB6_325 Depth=2
.LBB6_353:                              # %cond.end1810
                                        #   in Loop: Header=BB6_325 Depth=2
	movq	enc_picture, %rcx
	movq	6464(%rcx), %rcx
	movq	8(%rcx), %rcx
	movl	-44(%rbp), %edx
	addl	-16(%rbp), %edx
	movslq	%edx, %rdx
	movq	(%rcx,%rdx,8), %rcx
	movl	-68(%rbp), %edx
	addl	-12(%rbp), %edx
	movslq	%edx, %rdx
	movw	%ax, (%rcx,%rdx,2)
# %bb.354:                              # %for.inc1821
                                        #   in Loop: Header=BB6_325 Depth=2
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB6_325
.LBB6_355:                              # %for.end1823
                                        #   in Loop: Header=BB6_323 Depth=1
	jmp	.LBB6_356
.LBB6_356:                              # %for.inc1824
                                        #   in Loop: Header=BB6_323 Depth=1
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB6_323
.LBB6_357:                              # %for.end1826
	jmp	.LBB6_358
.LBB6_358:                              # %if.end1827
	jmp	.LBB6_420
.LBB6_359:                              # %if.else1828
	movl	$0, -16(%rbp)
.LBB6_360:                              # %for.cond1829
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_362 Depth 2
                                        #       Child Loop BB6_364 Depth 3
	cmpl	$2, -16(%rbp)
	jge	.LBB6_371
# %bb.361:                              # %for.body1832
                                        #   in Loop: Header=BB6_360 Depth=1
	movl	$0, -12(%rbp)
.LBB6_362:                              # %for.cond1833
                                        #   Parent Loop BB6_360 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB6_364 Depth 3
	cmpl	$65, -12(%rbp)
	jge	.LBB6_369
# %bb.363:                              # %for.body1836
                                        #   in Loop: Header=BB6_362 Depth=2
	movl	$0, -52(%rbp)
.LBB6_364:                              # %for.cond1837
                                        #   Parent Loop BB6_360 Depth=1
                                        #     Parent Loop BB6_362 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	cmpl	$4, -52(%rbp)
	jge	.LBB6_367
# %bb.365:                              # %for.body1840
                                        #   in Loop: Header=BB6_364 Depth=3
	movq	cofAC8x8, %rax
	movslq	-32(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movslq	-52(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movslq	-16(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movslq	-12(%rbp), %rcx
	movl	(%rax,%rcx,4), %eax
	movq	img, %rcx
	movq	14136(%rcx), %rcx
	movslq	-32(%rbp), %rdx
	movq	(%rcx,%rdx,8), %rcx
	movslq	-52(%rbp), %rdx
	movq	(%rcx,%rdx,8), %rcx
	movslq	-16(%rbp), %rdx
	movq	(%rcx,%rdx,8), %rcx
	movslq	-12(%rbp), %rdx
	movl	%eax, (%rcx,%rdx,4)
# %bb.366:                              # %for.inc1858
                                        #   in Loop: Header=BB6_364 Depth=3
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB6_364
.LBB6_367:                              # %for.end1860
                                        #   in Loop: Header=BB6_362 Depth=2
	jmp	.LBB6_368
.LBB6_368:                              # %for.inc1861
                                        #   in Loop: Header=BB6_362 Depth=2
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB6_362
.LBB6_369:                              # %for.end1863
                                        #   in Loop: Header=BB6_360 Depth=1
	jmp	.LBB6_370
.LBB6_370:                              # %for.inc1864
                                        #   in Loop: Header=BB6_360 Depth=1
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB6_360
.LBB6_371:                              # %for.end1866
	movq	img, %rax
	cmpl	$0, 72724(%rax)
	je	.LBB6_393
# %bb.372:                              # %if.then1869
	movl	$0, -20(%rbp)
.LBB6_373:                              # %for.cond1870
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_375 Depth 2
                                        #       Child Loop BB6_377 Depth 3
                                        #     Child Loop BB6_383 Depth 2
                                        #       Child Loop BB6_385 Depth 3
	cmpl	$4, -20(%rbp)
	jge	.LBB6_392
# %bb.374:                              # %for.body1873
                                        #   in Loop: Header=BB6_373 Depth=1
	movl	$0, -16(%rbp)
.LBB6_375:                              # %for.cond1874
                                        #   Parent Loop BB6_373 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB6_377 Depth 3
	cmpl	$2, -16(%rbp)
	jge	.LBB6_382
# %bb.376:                              # %for.body1877
                                        #   in Loop: Header=BB6_375 Depth=2
	movl	$0, -12(%rbp)
.LBB6_377:                              # %for.cond1878
                                        #   Parent Loop BB6_373 Depth=1
                                        #     Parent Loop BB6_375 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	cmpl	$18, -12(%rbp)
	jge	.LBB6_380
# %bb.378:                              # %for.body1881
                                        #   in Loop: Header=BB6_377 Depth=3
	movslq	-20(%rbp), %rax
	imulq	$144, %rax, %rax
	movabsq	$cofAC8x8_chroma, %rcx
	addq	%rax, %rcx
	movslq	-16(%rbp), %rax
	imulq	$72, %rax, %rax
	addq	%rax, %rcx
	movslq	-12(%rbp), %rax
	movl	(%rcx,%rax,4), %eax
	movq	img, %rcx
	movq	14136(%rcx), %rcx
	movl	-32(%rbp), %edx
	addl	$4, %edx
	movslq	%edx, %rdx
	movq	(%rcx,%rdx,8), %rcx
	movslq	-20(%rbp), %rdx
	movq	(%rcx,%rdx,8), %rcx
	movslq	-16(%rbp), %rdx
	movq	(%rcx,%rdx,8), %rcx
	movslq	-12(%rbp), %rdx
	movl	%eax, (%rcx,%rdx,4)
# %bb.379:                              # %for.inc1898
                                        #   in Loop: Header=BB6_377 Depth=3
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB6_377
.LBB6_380:                              # %for.end1900
                                        #   in Loop: Header=BB6_375 Depth=2
	jmp	.LBB6_381
.LBB6_381:                              # %for.inc1901
                                        #   in Loop: Header=BB6_375 Depth=2
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB6_375
.LBB6_382:                              # %for.end1903
                                        #   in Loop: Header=BB6_373 Depth=1
	movl	$0, -16(%rbp)
.LBB6_383:                              # %for.cond1904
                                        #   Parent Loop BB6_373 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB6_385 Depth 3
	cmpl	$2, -16(%rbp)
	jge	.LBB6_390
# %bb.384:                              # %for.body1907
                                        #   in Loop: Header=BB6_383 Depth=2
	movl	$0, -12(%rbp)
.LBB6_385:                              # %for.cond1908
                                        #   Parent Loop BB6_373 Depth=1
                                        #     Parent Loop BB6_383 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	cmpl	$18, -12(%rbp)
	jge	.LBB6_388
# %bb.386:                              # %for.body1911
                                        #   in Loop: Header=BB6_385 Depth=3
	movabsq	$cofAC8x8_chroma, %rax
	addq	$576, %rax              # imm = 0x240
	movslq	-20(%rbp), %rcx
	imulq	$144, %rcx, %rcx
	addq	%rcx, %rax
	movslq	-16(%rbp), %rcx
	imulq	$72, %rcx, %rcx
	addq	%rcx, %rax
	movslq	-12(%rbp), %rcx
	movl	(%rax,%rcx,4), %eax
	movq	img, %rcx
	movq	14136(%rcx), %rcx
	movl	-32(%rbp), %edx
	addl	$8, %edx
	movslq	%edx, %rdx
	movq	(%rcx,%rdx,8), %rcx
	movslq	-20(%rbp), %rdx
	movq	(%rcx,%rdx,8), %rcx
	movslq	-16(%rbp), %rdx
	movq	(%rcx,%rdx,8), %rcx
	movslq	-12(%rbp), %rdx
	movl	%eax, (%rcx,%rdx,4)
# %bb.387:                              # %for.inc1928
                                        #   in Loop: Header=BB6_385 Depth=3
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB6_385
.LBB6_388:                              # %for.end1930
                                        #   in Loop: Header=BB6_383 Depth=2
	jmp	.LBB6_389
.LBB6_389:                              # %for.inc1931
                                        #   in Loop: Header=BB6_383 Depth=2
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB6_383
.LBB6_390:                              # %for.end1933
                                        #   in Loop: Header=BB6_373 Depth=1
	jmp	.LBB6_391
.LBB6_391:                              # %for.inc1934
                                        #   in Loop: Header=BB6_373 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB6_373
.LBB6_392:                              # %for.end1936
	jmp	.LBB6_393
.LBB6_393:                              # %if.end1937
	movl	$0, -24(%rbp)
.LBB6_394:                              # %for.cond1938
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_396 Depth 2
	cmpl	$8, -24(%rbp)
	jge	.LBB6_401
# %bb.395:                              # %for.body1941
                                        #   in Loop: Header=BB6_394 Depth=1
	movl	$0, -28(%rbp)
.LBB6_396:                              # %for.cond1942
                                        #   Parent Loop BB6_394 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$8, -28(%rbp)
	jge	.LBB6_399
# %bb.397:                              # %for.body1945
                                        #   in Loop: Header=BB6_396 Depth=2
	movslq	-24(%rbp), %rax
	shlq	$4, %rax
	leaq	-384(%rbp), %rcx
	addq	%rax, %rcx
	movslq	-28(%rbp), %rax
	movw	(%rcx,%rax,2), %ax
	movq	enc_picture, %rcx
	movq	6424(%rcx), %rcx
	movl	-44(%rbp), %edx
	addl	-24(%rbp), %edx
	movslq	%edx, %rdx
	movq	(%rcx,%rdx,8), %rcx
	movl	-68(%rbp), %edx
	addl	-28(%rbp), %edx
	movslq	%edx, %rdx
	movw	%ax, (%rcx,%rdx,2)
	movq	img, %rax
	addq	$7352, %rax             # imm = 0x1CB8
	movslq	-60(%rbp), %rcx
	shlq	$7, %rcx
	addq	%rcx, %rax
	movslq	-24(%rbp), %rcx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movslq	-28(%rbp), %rcx
	movw	(%rax,%rcx,2), %ax
	movq	img, %rcx
	addq	$12600, %rcx            # imm = 0x3138
	movl	-36(%rbp), %edx
	addl	-28(%rbp), %edx
	movslq	%edx, %rdx
	shlq	$5, %rdx
	addq	%rdx, %rcx
	movl	-40(%rbp), %edx
	addl	-24(%rbp), %edx
	movslq	%edx, %rdx
	movw	%ax, (%rcx,%rdx,2)
# %bb.398:                              # %for.inc1971
                                        #   in Loop: Header=BB6_396 Depth=2
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB6_396
.LBB6_399:                              # %for.end1973
                                        #   in Loop: Header=BB6_394 Depth=1
	jmp	.LBB6_400
.LBB6_400:                              # %for.inc1974
                                        #   in Loop: Header=BB6_394 Depth=1
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB6_394
.LBB6_401:                              # %for.end1976
	movq	img, %rax
	cmpl	$0, 72724(%rax)
	je	.LBB6_419
# %bb.402:                              # %if.then1979
	movl	$0, -20(%rbp)
.LBB6_403:                              # %for.cond1980
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_405 Depth 2
                                        #       Child Loop BB6_407 Depth 3
                                        #         Child Loop BB6_409 Depth 4
	cmpl	$4, -20(%rbp)
	jge	.LBB6_418
# %bb.404:                              # %for.body1983
                                        #   in Loop: Header=BB6_403 Depth=1
	movl	-20(%rbp), %eax
	cltd
	movl	$2, %ecx
	idivl	%ecx
	shll	$2, %edx
	movl	%edx, -80(%rbp)
	movl	-20(%rbp), %eax
	cltd
	idivl	%ecx
	shll	$2, %eax
	movl	%eax, -72(%rbp)
	movl	$0, -12(%rbp)
.LBB6_405:                              # %for.cond1988
                                        #   Parent Loop BB6_403 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB6_407 Depth 3
                                        #         Child Loop BB6_409 Depth 4
	cmpl	$2, -12(%rbp)
	jge	.LBB6_416
# %bb.406:                              # %for.body1991
                                        #   in Loop: Header=BB6_405 Depth=2
	movl	$0, -24(%rbp)
.LBB6_407:                              # %for.cond1992
                                        #   Parent Loop BB6_403 Depth=1
                                        #     Parent Loop BB6_405 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB6_409 Depth 4
	cmpl	$4, -24(%rbp)
	jge	.LBB6_414
# %bb.408:                              # %for.body1995
                                        #   in Loop: Header=BB6_407 Depth=3
	movl	$0, -28(%rbp)
.LBB6_409:                              # %for.cond1996
                                        #   Parent Loop BB6_403 Depth=1
                                        #     Parent Loop BB6_405 Depth=2
                                        #       Parent Loop BB6_407 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	cmpl	$4, -28(%rbp)
	jge	.LBB6_412
# %bb.410:                              # %for.body1999
                                        #   in Loop: Header=BB6_409 Depth=4
	movslq	-12(%rbp), %rax
	shlq	$8, %rax
	leaq	-1152(%rbp), %rcx
	addq	%rax, %rcx
	movslq	-20(%rbp), %rax
	shlq	$6, %rax
	addq	%rax, %rcx
	movslq	-24(%rbp), %rax
	shlq	$4, %rax
	addq	%rax, %rcx
	movslq	-28(%rbp), %rax
	movl	(%rcx,%rax,4), %eax
	movq	enc_picture, %rcx
	movq	6464(%rcx), %rcx
	movslq	-12(%rbp), %rdx
	movq	(%rcx,%rdx,8), %rcx
	movl	-44(%rbp), %edx
	addl	-24(%rbp), %edx
	addl	-72(%rbp), %edx
	movslq	%edx, %rdx
	movq	(%rcx,%rdx,8), %rcx
	movl	-68(%rbp), %edx
	addl	-28(%rbp), %edx
	addl	-80(%rbp), %edx
	movslq	%edx, %rdx
	movw	%ax, (%rcx,%rdx,2)
# %bb.411:                              # %for.inc2020
                                        #   in Loop: Header=BB6_409 Depth=4
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB6_409
.LBB6_412:                              # %for.end2022
                                        #   in Loop: Header=BB6_407 Depth=3
	jmp	.LBB6_413
.LBB6_413:                              # %for.inc2023
                                        #   in Loop: Header=BB6_407 Depth=3
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB6_407
.LBB6_414:                              # %for.end2025
                                        #   in Loop: Header=BB6_405 Depth=2
	jmp	.LBB6_415
.LBB6_415:                              # %for.inc2026
                                        #   in Loop: Header=BB6_405 Depth=2
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB6_405
.LBB6_416:                              # %for.end2028
                                        #   in Loop: Header=BB6_403 Depth=1
	jmp	.LBB6_417
.LBB6_417:                              # %for.inc2029
                                        #   in Loop: Header=BB6_403 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB6_403
.LBB6_418:                              # %for.end2031
	jmp	.LBB6_419
.LBB6_419:                              # %if.end2032
	jmp	.LBB6_420
.LBB6_420:                              # %if.end2033
	movl	-108(%rbp), %ebx
	cmpl	$716035634, -196(%rbp)  # imm = 0x2AADD632
	jne	.LBB6_422
.LBB6_421:
	movl	%ebx, %eax
	addq	$1144, %rsp             # imm = 0x478
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB6_422:                              # %func_exit
	.cfi_def_cfa %rbp, 16
	callq	detect_breach
	jmp	.LBB6_421
.Lfunc_end6:
	.size	Mode_Decision_for_new_8x8IntraBlocks.1, .Lfunc_end6-Mode_Decision_for_new_8x8IntraBlocks.1
	.cfi_endproc
                                        # -- End function
	.globl	intrapred_luma8x8.2     # -- Begin function intrapred_luma8x8.2
	.p2align	4, 0x90
	.type	intrapred_luma8x8.2,@function
intrapred_luma8x8.2:                    # @intrapred_luma8x8.2
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$464, %rsp              # imm = 0x1D0
	movl	$1121277559, -224(%rbp) # imm = 0x42D55677
	movl	%edi, -216(%rbp)
	movl	%esi, -212(%rbp)
	movq	%rdx, -264(%rbp)
	movq	%rcx, -272(%rbp)
	movq	%r8, -232(%rbp)
	movq	enc_picture, %rax
	movq	6424(%rax), %rax
	movq	%rax, -128(%rbp)
	movl	-216(%rbp), %eax
	andl	$15, %eax
	movl	%eax, -136(%rbp)
	movl	-212(%rbp), %eax
	andl	$15, %eax
	movl	%eax, -140(%rbp)
	movq	img, %rax
	movl	12(%rax), %eax
	movl	%eax, -156(%rbp)
	movl	$0, -4(%rbp)
.LBB7_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$8, -4(%rbp)
	jge	.LBB7_4
# %bb.2:                                # %for.body
                                        #   in Loop: Header=BB7_1 Depth=1
	movl	-156(%rbp), %edi
	movl	-136(%rbp), %esi
	subl	$1, %esi
	movl	-140(%rbp), %edx
	addl	-4(%rbp), %edx
	movslq	-4(%rbp), %rax
	imulq	$24, %rax, %rax
	leaq	-464(%rbp), %r8
	addq	%rax, %r8
	movl	$1, %ecx
	callq	getNeighbour
# %bb.3:                                # %for.inc
                                        #   in Loop: Header=BB7_1 Depth=1
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB7_1
.LBB7_4:                                # %for.end
	movl	-156(%rbp), %edi
	movl	-136(%rbp), %esi
	movl	-140(%rbp), %edx
	subl	$1, %edx
	movl	$1, %ecx
	leaq	-208(%rbp), %r8
	callq	getNeighbour
	movl	-156(%rbp), %edi
	movl	-136(%rbp), %esi
	addl	$8, %esi
	movl	-140(%rbp), %edx
	subl	$1, %edx
	movl	$1, %ecx
	leaq	-184(%rbp), %r8
	callq	getNeighbour
	movl	-156(%rbp), %edi
	movl	-136(%rbp), %esi
	subl	$1, %esi
	movl	-140(%rbp), %edx
	subl	$1, %edx
	movl	$1, %ecx
	leaq	-256(%rbp), %r8
	callq	getNeighbour
	xorl	%eax, %eax
	cmpl	$0, -184(%rbp)
	je	.LBB7_8
# %bb.5:                                # %land.rhs
	xorl	%eax, %eax
	cmpl	$8, -136(%rbp)
	jne	.LBB7_7
# %bb.6:                                # %land.rhs9
	cmpl	$8, -140(%rbp)
	sete	%al
.LBB7_7:                                # %land.end
	xorb	$-1, %al
.LBB7_8:                                # %land.end11
	andb	$1, %al
	movzbl	%al, %eax
	movl	%eax, -184(%rbp)
	movq	input, %rax
	cmpl	$0, 216(%rax)
	je	.LBB7_26
# %bb.9:                                # %if.then
	movl	$0, -4(%rbp)
	movl	$1, -116(%rbp)
.LBB7_10:                               # %for.cond14
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$8, -4(%rbp)
	jge	.LBB7_16
# %bb.11:                               # %for.body16
                                        #   in Loop: Header=BB7_10 Depth=1
	movslq	-4(%rbp), %rax
	imulq	$24, %rax, %rax
	leaq	-464(%rbp), %rcx
	addq	%rax, %rcx
	cmpl	$0, (%rcx)
	je	.LBB7_13
# %bb.12:                               # %cond.true
                                        #   in Loop: Header=BB7_10 Depth=1
	movq	img, %rax
	movq	71784(%rax), %rax
	movslq	-4(%rbp), %rcx
	imulq	$24, %rcx, %rcx
	leaq	-464(%rbp), %rdx
	addq	%rcx, %rdx
	movslq	4(%rdx), %rcx
	movl	(%rax,%rcx,4), %eax
	jmp	.LBB7_14
.LBB7_13:                               # %cond.false
                                        #   in Loop: Header=BB7_10 Depth=1
	xorl	%eax, %eax
	jmp	.LBB7_14
.LBB7_14:                               # %cond.end
                                        #   in Loop: Header=BB7_10 Depth=1
	andl	-116(%rbp), %eax
	movl	%eax, -116(%rbp)
# %bb.15:                               # %for.inc26
                                        #   in Loop: Header=BB7_10 Depth=1
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB7_10
.LBB7_16:                               # %for.end28
	cmpl	$0, -208(%rbp)
	je	.LBB7_18
# %bb.17:                               # %cond.true31
	movq	img, %rax
	movq	71784(%rax), %rax
	movslq	-204(%rbp), %rcx
	movl	(%rax,%rcx,4), %eax
	jmp	.LBB7_19
.LBB7_18:                               # %cond.false36
	xorl	%eax, %eax
	jmp	.LBB7_19
.LBB7_19:                               # %cond.end37
	movl	%eax, -132(%rbp)
	cmpl	$0, -184(%rbp)
	je	.LBB7_21
# %bb.20:                               # %cond.true41
	movq	img, %rax
	movq	71784(%rax), %rax
	movslq	-180(%rbp), %rcx
	movl	(%rax,%rcx,4), %eax
	jmp	.LBB7_22
.LBB7_21:                               # %cond.false46
	xorl	%eax, %eax
	jmp	.LBB7_22
.LBB7_22:                               # %cond.end47
	movl	%eax, -220(%rbp)
	cmpl	$0, -256(%rbp)
	je	.LBB7_24
# %bb.23:                               # %cond.true51
	movq	img, %rax
	movq	71784(%rax), %rax
	movslq	-252(%rbp), %rcx
	movl	(%rax,%rcx,4), %eax
	jmp	.LBB7_25
.LBB7_24:                               # %cond.false56
	xorl	%eax, %eax
	jmp	.LBB7_25
.LBB7_25:                               # %cond.end57
	movl	%eax, -148(%rbp)
	jmp	.LBB7_27
.LBB7_26:                               # %if.else
	movl	-464(%rbp), %eax
	movl	%eax, -116(%rbp)
	movl	-208(%rbp), %eax
	movl	%eax, -132(%rbp)
	movl	-184(%rbp), %eax
	movl	%eax, -220(%rbp)
	movl	-256(%rbp), %eax
	movl	%eax, -148(%rbp)
.LBB7_27:                               # %if.end
	xorl	%eax, %eax
	movl	-116(%rbp), %ecx
	movq	-264(%rbp), %rdx
	movl	%ecx, (%rdx)
	movl	-132(%rbp), %ecx
	movq	-272(%rbp), %rdx
	movl	%ecx, (%rdx)
	cmpl	$0, -132(%rbp)
	je	.LBB7_30
# %bb.28:                               # %land.lhs.true
	xorl	%eax, %eax
	cmpl	$0, -116(%rbp)
	je	.LBB7_30
# %bb.29:                               # %land.rhs66
	cmpl	$0, -148(%rbp)
	setne	%al
.LBB7_30:                               # %land.end68
	andb	$1, %al
	movzbl	%al, %eax
	movq	-232(%rbp), %rcx
	movl	%eax, (%rcx)
	movl	-216(%rbp), %eax
	andl	$15, %eax
	movl	%eax, -4(%rbp)
	movl	-212(%rbp), %eax
	andl	$15, %eax
	movl	%eax, -144(%rbp)
	cmpl	$0, -132(%rbp)
	je	.LBB7_32
# %bb.31:                               # %if.then73
	movq	-128(%rbp), %rax
	movslq	-188(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movl	-192(%rbp), %ecx
	addl	$0, %ecx
	movslq	%ecx, %rcx
	movzwl	(%rax,%rcx,2), %eax
	movl	%eax, -108(%rbp)
	movq	-128(%rbp), %rax
	movslq	-188(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movl	-192(%rbp), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rcx
	movzwl	(%rax,%rcx,2), %eax
	movl	%eax, -104(%rbp)
	movq	-128(%rbp), %rax
	movslq	-188(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movl	-192(%rbp), %ecx
	addl	$2, %ecx
	movslq	%ecx, %rcx
	movzwl	(%rax,%rcx,2), %eax
	movl	%eax, -100(%rbp)
	movq	-128(%rbp), %rax
	movslq	-188(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movl	-192(%rbp), %ecx
	addl	$3, %ecx
	movslq	%ecx, %rcx
	movzwl	(%rax,%rcx,2), %eax
	movl	%eax, -96(%rbp)
	movq	-128(%rbp), %rax
	movslq	-188(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movl	-192(%rbp), %ecx
	addl	$4, %ecx
	movslq	%ecx, %rcx
	movzwl	(%rax,%rcx,2), %eax
	movl	%eax, -92(%rbp)
	movq	-128(%rbp), %rax
	movslq	-188(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movl	-192(%rbp), %ecx
	addl	$5, %ecx
	movslq	%ecx, %rcx
	movzwl	(%rax,%rcx,2), %eax
	movl	%eax, -88(%rbp)
	movq	-128(%rbp), %rax
	movslq	-188(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movl	-192(%rbp), %ecx
	addl	$6, %ecx
	movslq	%ecx, %rcx
	movzwl	(%rax,%rcx,2), %eax
	movl	%eax, -84(%rbp)
	movq	-128(%rbp), %rax
	movslq	-188(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movl	-192(%rbp), %ecx
	addl	$7, %ecx
	movslq	%ecx, %rcx
	movzwl	(%rax,%rcx,2), %eax
	movl	%eax, -80(%rbp)
	jmp	.LBB7_33
.LBB7_32:                               # %if.else143
	movq	img, %rax
	movl	72680(%rax), %eax
	movl	%eax, -80(%rbp)
	movl	%eax, -84(%rbp)
	movl	%eax, -88(%rbp)
	movl	%eax, -92(%rbp)
	movl	%eax, -96(%rbp)
	movl	%eax, -100(%rbp)
	movl	%eax, -104(%rbp)
	movl	%eax, -108(%rbp)
.LBB7_33:                               # %if.end152
	cmpl	$0, -220(%rbp)
	je	.LBB7_35
# %bb.34:                               # %if.then154
	movq	-128(%rbp), %rax
	movslq	-164(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movl	-168(%rbp), %ecx
	addl	$0, %ecx
	movslq	%ecx, %rcx
	movzwl	(%rax,%rcx,2), %eax
	movl	%eax, -76(%rbp)
	movq	-128(%rbp), %rax
	movslq	-164(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movl	-168(%rbp), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rcx
	movzwl	(%rax,%rcx,2), %eax
	movl	%eax, -72(%rbp)
	movq	-128(%rbp), %rax
	movslq	-164(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movl	-168(%rbp), %ecx
	addl	$2, %ecx
	movslq	%ecx, %rcx
	movzwl	(%rax,%rcx,2), %eax
	movl	%eax, -68(%rbp)
	movq	-128(%rbp), %rax
	movslq	-164(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movl	-168(%rbp), %ecx
	addl	$3, %ecx
	movslq	%ecx, %rcx
	movzwl	(%rax,%rcx,2), %eax
	movl	%eax, -64(%rbp)
	movq	-128(%rbp), %rax
	movslq	-164(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movl	-168(%rbp), %ecx
	addl	$4, %ecx
	movslq	%ecx, %rcx
	movzwl	(%rax,%rcx,2), %eax
	movl	%eax, -60(%rbp)
	movq	-128(%rbp), %rax
	movslq	-164(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movl	-168(%rbp), %ecx
	addl	$5, %ecx
	movslq	%ecx, %rcx
	movzwl	(%rax,%rcx,2), %eax
	movl	%eax, -56(%rbp)
	movq	-128(%rbp), %rax
	movslq	-164(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movl	-168(%rbp), %ecx
	addl	$6, %ecx
	movslq	%ecx, %rcx
	movzwl	(%rax,%rcx,2), %eax
	movl	%eax, -52(%rbp)
	movq	-128(%rbp), %rax
	movslq	-164(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movl	-168(%rbp), %ecx
	addl	$7, %ecx
	movslq	%ecx, %rcx
	movzwl	(%rax,%rcx,2), %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB7_36
.LBB7_35:                               # %if.else227
	movl	-80(%rbp), %eax
	movl	%eax, -48(%rbp)
	movl	%eax, -52(%rbp)
	movl	%eax, -56(%rbp)
	movl	%eax, -60(%rbp)
	movl	%eax, -64(%rbp)
	movl	%eax, -68(%rbp)
	movl	%eax, -72(%rbp)
	movl	%eax, -76(%rbp)
.LBB7_36:                               # %if.end237
	cmpl	$0, -116(%rbp)
	je	.LBB7_38
# %bb.37:                               # %if.then239
	movq	-128(%rbp), %rax
	movslq	-444(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movslq	-448(%rbp), %rcx
	movzwl	(%rax,%rcx,2), %eax
	movl	%eax, -44(%rbp)
	movq	-128(%rbp), %rax
	movslq	-420(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movslq	-424(%rbp), %rcx
	movzwl	(%rax,%rcx,2), %eax
	movl	%eax, -40(%rbp)
	movq	-128(%rbp), %rax
	movslq	-396(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movslq	-400(%rbp), %rcx
	movzwl	(%rax,%rcx,2), %eax
	movl	%eax, -36(%rbp)
	movq	-128(%rbp), %rax
	movslq	-372(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movslq	-376(%rbp), %rcx
	movzwl	(%rax,%rcx,2), %eax
	movl	%eax, -32(%rbp)
	movq	-128(%rbp), %rax
	movslq	-348(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movslq	-352(%rbp), %rcx
	movzwl	(%rax,%rcx,2), %eax
	movl	%eax, -28(%rbp)
	movq	-128(%rbp), %rax
	movslq	-324(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movslq	-328(%rbp), %rcx
	movzwl	(%rax,%rcx,2), %eax
	movl	%eax, -24(%rbp)
	movq	-128(%rbp), %rax
	movslq	-300(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movslq	-304(%rbp), %rcx
	movzwl	(%rax,%rcx,2), %eax
	movl	%eax, -20(%rbp)
	movq	-128(%rbp), %rax
	movslq	-276(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movslq	-280(%rbp), %rcx
	movzwl	(%rax,%rcx,2), %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB7_39
.LBB7_38:                               # %if.else320
	movq	img, %rax
	movl	72680(%rax), %eax
	movl	%eax, -16(%rbp)
	movl	%eax, -20(%rbp)
	movl	%eax, -24(%rbp)
	movl	%eax, -28(%rbp)
	movl	%eax, -32(%rbp)
	movl	%eax, -36(%rbp)
	movl	%eax, -40(%rbp)
	movl	%eax, -44(%rbp)
.LBB7_39:                               # %if.end330
	cmpl	$0, -148(%rbp)
	je	.LBB7_41
# %bb.40:                               # %if.then332
	movq	-128(%rbp), %rax
	movslq	-236(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movslq	-240(%rbp), %rcx
	movzwl	(%rax,%rcx,2), %eax
	movl	%eax, -112(%rbp)
	jmp	.LBB7_42
.LBB7_41:                               # %if.else341
	movq	img, %rax
	movl	72680(%rax), %eax
	movl	%eax, -112(%rbp)
.LBB7_42:                               # %if.end344
	movl	$0, -4(%rbp)
.LBB7_43:                               # %for.cond345
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$9, -4(%rbp)
	jge	.LBB7_46
# %bb.44:                               # %for.body348
                                        #   in Loop: Header=BB7_43 Depth=1
	movq	img, %rax
	addq	$7352, %rax             # imm = 0x1CB8
	movslq	-4(%rbp), %rcx
	shlq	$7, %rcx
	addq	%rcx, %rax
	movw	$-1, (%rax)
# %bb.45:                               # %for.inc353
                                        #   in Loop: Header=BB7_43 Depth=1
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB7_43
.LBB7_46:                               # %for.end355
	leaq	-112(%rbp), %rdi
	movl	-148(%rbp), %esi
	movl	-132(%rbp), %edx
	movl	-116(%rbp), %ecx
	callq	LowPassForIntra8x8Pred
	movl	$0, -152(%rbp)
	cmpl	$0, -132(%rbp)
	je	.LBB7_49
# %bb.47:                               # %land.lhs.true358
	cmpl	$0, -116(%rbp)
	je	.LBB7_49
# %bb.48:                               # %if.then360
	movl	-108(%rbp), %eax
	addl	-104(%rbp), %eax
	addl	-100(%rbp), %eax
	addl	-96(%rbp), %eax
	addl	-92(%rbp), %eax
	addl	-88(%rbp), %eax
	addl	-84(%rbp), %eax
	addl	-80(%rbp), %eax
	addl	-44(%rbp), %eax
	addl	-40(%rbp), %eax
	addl	-36(%rbp), %eax
	addl	-32(%rbp), %eax
	addl	-28(%rbp), %eax
	addl	-24(%rbp), %eax
	addl	-20(%rbp), %eax
	addl	-16(%rbp), %eax
	addl	$8, %eax
	sarl	$4, %eax
	movl	%eax, -152(%rbp)
	jmp	.LBB7_58
.LBB7_49:                               # %if.else393
	cmpl	$0, -132(%rbp)
	jne	.LBB7_52
# %bb.50:                               # %land.lhs.true395
	cmpl	$0, -116(%rbp)
	je	.LBB7_52
# %bb.51:                               # %if.then397
	movl	-44(%rbp), %eax
	addl	-40(%rbp), %eax
	addl	-36(%rbp), %eax
	addl	-32(%rbp), %eax
	addl	-28(%rbp), %eax
	addl	-24(%rbp), %eax
	addl	-20(%rbp), %eax
	addl	-16(%rbp), %eax
	addl	$4, %eax
	sarl	$3, %eax
	movl	%eax, -152(%rbp)
	jmp	.LBB7_57
.LBB7_52:                               # %if.else415
	cmpl	$0, -132(%rbp)
	je	.LBB7_55
# %bb.53:                               # %land.lhs.true417
	cmpl	$0, -116(%rbp)
	jne	.LBB7_55
# %bb.54:                               # %if.then419
	movl	-108(%rbp), %eax
	addl	-104(%rbp), %eax
	addl	-100(%rbp), %eax
	addl	-96(%rbp), %eax
	addl	-92(%rbp), %eax
	addl	-88(%rbp), %eax
	addl	-84(%rbp), %eax
	addl	-80(%rbp), %eax
	addl	$4, %eax
	sarl	$3, %eax
	movl	%eax, -152(%rbp)
	jmp	.LBB7_56
.LBB7_55:                               # %if.else437
	movq	img, %rax
	movl	72680(%rax), %eax
	movl	%eax, -152(%rbp)
.LBB7_56:                               # %if.end439
	jmp	.LBB7_57
.LBB7_57:                               # %if.end440
	jmp	.LBB7_58
.LBB7_58:                               # %if.end441
	movl	$0, -144(%rbp)
.LBB7_59:                               # %for.cond442
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_61 Depth 2
	cmpl	$8, -144(%rbp)
	jge	.LBB7_66
# %bb.60:                               # %for.body445
                                        #   in Loop: Header=BB7_59 Depth=1
	movl	$0, -4(%rbp)
.LBB7_61:                               # %for.cond446
                                        #   Parent Loop BB7_59 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$8, -4(%rbp)
	jge	.LBB7_64
# %bb.62:                               # %for.body449
                                        #   in Loop: Header=BB7_61 Depth=2
	movl	-152(%rbp), %eax
	movq	img, %rcx
	addq	$7352, %rcx             # imm = 0x1CB8
	addq	$256, %rcx              # imm = 0x100
	movslq	-4(%rbp), %rdx
	shlq	$4, %rdx
	addq	%rdx, %rcx
	movslq	-144(%rbp), %rdx
	movw	%ax, (%rcx,%rdx,2)
# %bb.63:                               # %for.inc457
                                        #   in Loop: Header=BB7_61 Depth=2
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB7_61
.LBB7_64:                               # %for.end459
                                        #   in Loop: Header=BB7_59 Depth=1
	jmp	.LBB7_65
.LBB7_65:                               # %for.inc460
                                        #   in Loop: Header=BB7_59 Depth=1
	movl	-144(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -144(%rbp)
	jmp	.LBB7_59
.LBB7_66:                               # %for.end462
	movl	$0, -4(%rbp)
.LBB7_67:                               # %for.cond463
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$8, -4(%rbp)
	jge	.LBB7_70
# %bb.68:                               # %for.body466
                                        #   in Loop: Header=BB7_67 Depth=1
	movslq	-4(%rbp), %rax
	movl	-108(%rbp,%rax,4), %eax
	movq	img, %rcx
	movslq	-4(%rbp), %rdx
	movw	%ax, 7464(%rcx,%rdx,2)
	movq	img, %rcx
	movslq	-4(%rbp), %rdx
	movw	%ax, 7448(%rcx,%rdx,2)
	movq	img, %rcx
	movslq	-4(%rbp), %rdx
	movw	%ax, 7432(%rcx,%rdx,2)
	movq	img, %rcx
	movslq	-4(%rbp), %rdx
	movw	%ax, 7416(%rcx,%rdx,2)
	movq	img, %rcx
	movslq	-4(%rbp), %rdx
	movw	%ax, 7400(%rcx,%rdx,2)
	movq	img, %rcx
	movslq	-4(%rbp), %rdx
	movw	%ax, 7384(%rcx,%rdx,2)
	movq	img, %rcx
	movslq	-4(%rbp), %rdx
	movw	%ax, 7368(%rcx,%rdx,2)
	movq	img, %rcx
	movslq	-4(%rbp), %rdx
	movw	%ax, 7352(%rcx,%rdx,2)
	movslq	-4(%rbp), %rax
	movl	-44(%rbp,%rax,4), %eax
	movq	img, %rcx
	addq	$7352, %rcx             # imm = 0x1CB8
	addq	$128, %rcx
	movslq	-4(%rbp), %rdx
	shlq	$4, %rdx
	addq	%rdx, %rcx
	movw	%ax, 14(%rcx)
	movq	img, %rcx
	addq	$7352, %rcx             # imm = 0x1CB8
	addq	$128, %rcx
	movslq	-4(%rbp), %rdx
	shlq	$4, %rdx
	addq	%rdx, %rcx
	movw	%ax, 12(%rcx)
	movq	img, %rcx
	addq	$7352, %rcx             # imm = 0x1CB8
	addq	$128, %rcx
	movslq	-4(%rbp), %rdx
	shlq	$4, %rdx
	addq	%rdx, %rcx
	movw	%ax, 10(%rcx)
	movq	img, %rcx
	addq	$7352, %rcx             # imm = 0x1CB8
	addq	$128, %rcx
	movslq	-4(%rbp), %rdx
	shlq	$4, %rdx
	addq	%rdx, %rcx
	movw	%ax, 8(%rcx)
	movq	img, %rcx
	addq	$7352, %rcx             # imm = 0x1CB8
	addq	$128, %rcx
	movslq	-4(%rbp), %rdx
	shlq	$4, %rdx
	addq	%rdx, %rcx
	movw	%ax, 6(%rcx)
	movq	img, %rcx
	addq	$7352, %rcx             # imm = 0x1CB8
	addq	$128, %rcx
	movslq	-4(%rbp), %rdx
	shlq	$4, %rdx
	addq	%rdx, %rcx
	movw	%ax, 4(%rcx)
	movq	img, %rcx
	addq	$7352, %rcx             # imm = 0x1CB8
	addq	$128, %rcx
	movslq	-4(%rbp), %rdx
	shlq	$4, %rdx
	addq	%rdx, %rcx
	movw	%ax, 2(%rcx)
	movq	img, %rcx
	addq	$7352, %rcx             # imm = 0x1CB8
	addq	$128, %rcx
	movslq	-4(%rbp), %rdx
	shlq	$4, %rdx
	addq	%rdx, %rcx
	movw	%ax, (%rcx)
# %bb.69:                               # %for.inc555
                                        #   in Loop: Header=BB7_67 Depth=1
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB7_67
.LBB7_70:                               # %for.end557
	cmpl	$0, -132(%rbp)
	jne	.LBB7_72
# %bb.71:                               # %if.then559
	movq	img, %rax
	movw	$-1, 7352(%rax)
.LBB7_72:                               # %if.end564
	cmpl	$0, -116(%rbp)
	jne	.LBB7_74
# %bb.73:                               # %if.then566
	movq	img, %rax
	movw	$-1, 7480(%rax)
.LBB7_74:                               # %if.end571
	cmpl	$0, -132(%rbp)
	je	.LBB7_76
# %bb.75:                               # %if.then573
	movl	-108(%rbp), %eax
	addl	-100(%rbp), %eax
	movl	-104(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 7736(%rcx)
	movl	-104(%rbp), %eax
	addl	-96(%rbp), %eax
	movl	-100(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 7752(%rcx)
	movq	img, %rcx
	movw	%ax, 7738(%rcx)
	movl	-100(%rbp), %eax
	addl	-92(%rbp), %eax
	movl	-96(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 7768(%rcx)
	movq	img, %rcx
	movw	%ax, 7754(%rcx)
	movq	img, %rcx
	movw	%ax, 7740(%rcx)
	movl	-96(%rbp), %eax
	addl	-88(%rbp), %eax
	movl	-92(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 7784(%rcx)
	movq	img, %rcx
	movw	%ax, 7770(%rcx)
	movq	img, %rcx
	movw	%ax, 7756(%rcx)
	movq	img, %rcx
	movw	%ax, 7742(%rcx)
	movl	-92(%rbp), %eax
	addl	-84(%rbp), %eax
	movl	-88(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 7800(%rcx)
	movq	img, %rcx
	movw	%ax, 7786(%rcx)
	movq	img, %rcx
	movw	%ax, 7772(%rcx)
	movq	img, %rcx
	movw	%ax, 7758(%rcx)
	movq	img, %rcx
	movw	%ax, 7744(%rcx)
	movl	-88(%rbp), %eax
	addl	-80(%rbp), %eax
	movl	-84(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 7816(%rcx)
	movq	img, %rcx
	movw	%ax, 7802(%rcx)
	movq	img, %rcx
	movw	%ax, 7788(%rcx)
	movq	img, %rcx
	movw	%ax, 7774(%rcx)
	movq	img, %rcx
	movw	%ax, 7760(%rcx)
	movq	img, %rcx
	movw	%ax, 7746(%rcx)
	movl	-84(%rbp), %eax
	addl	-76(%rbp), %eax
	movl	-80(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 7832(%rcx)
	movq	img, %rcx
	movw	%ax, 7818(%rcx)
	movq	img, %rcx
	movw	%ax, 7804(%rcx)
	movq	img, %rcx
	movw	%ax, 7790(%rcx)
	movq	img, %rcx
	movw	%ax, 7776(%rcx)
	movq	img, %rcx
	movw	%ax, 7762(%rcx)
	movq	img, %rcx
	movw	%ax, 7748(%rcx)
	movl	-80(%rbp), %eax
	addl	-72(%rbp), %eax
	movl	-76(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 7848(%rcx)
	movq	img, %rcx
	movw	%ax, 7834(%rcx)
	movq	img, %rcx
	movw	%ax, 7820(%rcx)
	movq	img, %rcx
	movw	%ax, 7806(%rcx)
	movq	img, %rcx
	movw	%ax, 7792(%rcx)
	movq	img, %rcx
	movw	%ax, 7778(%rcx)
	movq	img, %rcx
	movw	%ax, 7764(%rcx)
	movq	img, %rcx
	movw	%ax, 7750(%rcx)
	movl	-76(%rbp), %eax
	addl	-68(%rbp), %eax
	movl	-72(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 7850(%rcx)
	movq	img, %rcx
	movw	%ax, 7836(%rcx)
	movq	img, %rcx
	movw	%ax, 7822(%rcx)
	movq	img, %rcx
	movw	%ax, 7808(%rcx)
	movq	img, %rcx
	movw	%ax, 7794(%rcx)
	movq	img, %rcx
	movw	%ax, 7780(%rcx)
	movq	img, %rcx
	movw	%ax, 7766(%rcx)
	movl	-72(%rbp), %eax
	addl	-64(%rbp), %eax
	movl	-68(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 7852(%rcx)
	movq	img, %rcx
	movw	%ax, 7838(%rcx)
	movq	img, %rcx
	movw	%ax, 7824(%rcx)
	movq	img, %rcx
	movw	%ax, 7810(%rcx)
	movq	img, %rcx
	movw	%ax, 7796(%rcx)
	movq	img, %rcx
	movw	%ax, 7782(%rcx)
	movl	-68(%rbp), %eax
	addl	-60(%rbp), %eax
	movl	-64(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 7854(%rcx)
	movq	img, %rcx
	movw	%ax, 7840(%rcx)
	movq	img, %rcx
	movw	%ax, 7826(%rcx)
	movq	img, %rcx
	movw	%ax, 7812(%rcx)
	movq	img, %rcx
	movw	%ax, 7798(%rcx)
	movl	-64(%rbp), %eax
	addl	-56(%rbp), %eax
	movl	-60(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 7856(%rcx)
	movq	img, %rcx
	movw	%ax, 7842(%rcx)
	movq	img, %rcx
	movw	%ax, 7828(%rcx)
	movq	img, %rcx
	movw	%ax, 7814(%rcx)
	movl	-60(%rbp), %eax
	addl	-52(%rbp), %eax
	movl	-56(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 7858(%rcx)
	movq	img, %rcx
	movw	%ax, 7844(%rcx)
	movq	img, %rcx
	movw	%ax, 7830(%rcx)
	movl	-56(%rbp), %eax
	addl	-48(%rbp), %eax
	movl	-52(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 7860(%rcx)
	movq	img, %rcx
	movw	%ax, 7846(%rcx)
	movl	-52(%rbp), %eax
	imull	$3, -48(%rbp), %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 7862(%rcx)
	movl	-108(%rbp), %eax
	addl	-104(%rbp), %eax
	addl	$1, %eax
	sarl	$1, %eax
	movq	img, %rcx
	movw	%ax, 8248(%rcx)
	movl	-104(%rbp), %eax
	addl	-100(%rbp), %eax
	addl	$1, %eax
	sarl	$1, %eax
	movq	img, %rcx
	movw	%ax, 8280(%rcx)
	movq	img, %rcx
	movw	%ax, 8250(%rcx)
	movl	-100(%rbp), %eax
	addl	-96(%rbp), %eax
	addl	$1, %eax
	sarl	$1, %eax
	movq	img, %rcx
	movw	%ax, 8312(%rcx)
	movq	img, %rcx
	movw	%ax, 8282(%rcx)
	movq	img, %rcx
	movw	%ax, 8252(%rcx)
	movl	-96(%rbp), %eax
	addl	-92(%rbp), %eax
	addl	$1, %eax
	sarl	$1, %eax
	movq	img, %rcx
	movw	%ax, 8344(%rcx)
	movq	img, %rcx
	movw	%ax, 8314(%rcx)
	movq	img, %rcx
	movw	%ax, 8284(%rcx)
	movq	img, %rcx
	movw	%ax, 8254(%rcx)
	movl	-92(%rbp), %eax
	addl	-88(%rbp), %eax
	addl	$1, %eax
	sarl	$1, %eax
	movq	img, %rcx
	movw	%ax, 8346(%rcx)
	movq	img, %rcx
	movw	%ax, 8316(%rcx)
	movq	img, %rcx
	movw	%ax, 8286(%rcx)
	movq	img, %rcx
	movw	%ax, 8256(%rcx)
	movl	-88(%rbp), %eax
	addl	-84(%rbp), %eax
	addl	$1, %eax
	sarl	$1, %eax
	movq	img, %rcx
	movw	%ax, 8348(%rcx)
	movq	img, %rcx
	movw	%ax, 8318(%rcx)
	movq	img, %rcx
	movw	%ax, 8288(%rcx)
	movq	img, %rcx
	movw	%ax, 8258(%rcx)
	movl	-84(%rbp), %eax
	addl	-80(%rbp), %eax
	addl	$1, %eax
	sarl	$1, %eax
	movq	img, %rcx
	movw	%ax, 8350(%rcx)
	movq	img, %rcx
	movw	%ax, 8320(%rcx)
	movq	img, %rcx
	movw	%ax, 8290(%rcx)
	movq	img, %rcx
	movw	%ax, 8260(%rcx)
	movl	-80(%rbp), %eax
	addl	-76(%rbp), %eax
	addl	$1, %eax
	sarl	$1, %eax
	movq	img, %rcx
	movw	%ax, 8352(%rcx)
	movq	img, %rcx
	movw	%ax, 8322(%rcx)
	movq	img, %rcx
	movw	%ax, 8292(%rcx)
	movq	img, %rcx
	movw	%ax, 8262(%rcx)
	movl	-76(%rbp), %eax
	addl	-72(%rbp), %eax
	addl	$1, %eax
	sarl	$1, %eax
	movq	img, %rcx
	movw	%ax, 8354(%rcx)
	movq	img, %rcx
	movw	%ax, 8324(%rcx)
	movq	img, %rcx
	movw	%ax, 8294(%rcx)
	movl	-72(%rbp), %eax
	addl	-68(%rbp), %eax
	addl	$1, %eax
	sarl	$1, %eax
	movq	img, %rcx
	movw	%ax, 8356(%rcx)
	movq	img, %rcx
	movw	%ax, 8326(%rcx)
	movl	-68(%rbp), %eax
	addl	-64(%rbp), %eax
	addl	$1, %eax
	sarl	$1, %eax
	movq	img, %rcx
	movw	%ax, 8358(%rcx)
	movl	-108(%rbp), %eax
	addl	-100(%rbp), %eax
	movl	-104(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 8264(%rcx)
	movl	-104(%rbp), %eax
	addl	-96(%rbp), %eax
	movl	-100(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 8296(%rcx)
	movq	img, %rcx
	movw	%ax, 8266(%rcx)
	movl	-100(%rbp), %eax
	addl	-92(%rbp), %eax
	movl	-96(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 8328(%rcx)
	movq	img, %rcx
	movw	%ax, 8298(%rcx)
	movq	img, %rcx
	movw	%ax, 8268(%rcx)
	movl	-96(%rbp), %eax
	addl	-88(%rbp), %eax
	movl	-92(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 8360(%rcx)
	movq	img, %rcx
	movw	%ax, 8330(%rcx)
	movq	img, %rcx
	movw	%ax, 8300(%rcx)
	movq	img, %rcx
	movw	%ax, 8270(%rcx)
	movl	-92(%rbp), %eax
	addl	-84(%rbp), %eax
	movl	-88(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 8362(%rcx)
	movq	img, %rcx
	movw	%ax, 8332(%rcx)
	movq	img, %rcx
	movw	%ax, 8302(%rcx)
	movq	img, %rcx
	movw	%ax, 8272(%rcx)
	movl	-88(%rbp), %eax
	addl	-80(%rbp), %eax
	movl	-84(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 8364(%rcx)
	movq	img, %rcx
	movw	%ax, 8334(%rcx)
	movq	img, %rcx
	movw	%ax, 8304(%rcx)
	movq	img, %rcx
	movw	%ax, 8274(%rcx)
	movl	-84(%rbp), %eax
	addl	-76(%rbp), %eax
	movl	-80(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 8366(%rcx)
	movq	img, %rcx
	movw	%ax, 8336(%rcx)
	movq	img, %rcx
	movw	%ax, 8306(%rcx)
	movq	img, %rcx
	movw	%ax, 8276(%rcx)
	movl	-80(%rbp), %eax
	addl	-72(%rbp), %eax
	movl	-76(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 8368(%rcx)
	movq	img, %rcx
	movw	%ax, 8338(%rcx)
	movq	img, %rcx
	movw	%ax, 8308(%rcx)
	movq	img, %rcx
	movw	%ax, 8278(%rcx)
	movl	-76(%rbp), %eax
	addl	-68(%rbp), %eax
	movl	-72(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 8370(%rcx)
	movq	img, %rcx
	movw	%ax, 8340(%rcx)
	movq	img, %rcx
	movw	%ax, 8310(%rcx)
	movl	-72(%rbp), %eax
	addl	-64(%rbp), %eax
	movl	-68(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 8372(%rcx)
	movq	img, %rcx
	movw	%ax, 8342(%rcx)
	movl	-68(%rbp), %eax
	addl	-60(%rbp), %eax
	movl	-64(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 8374(%rcx)
.LBB7_76:                               # %if.end1383
	cmpl	$0, -132(%rbp)
	je	.LBB7_80
# %bb.77:                               # %land.lhs.true1385
	cmpl	$0, -116(%rbp)
	je	.LBB7_80
# %bb.78:                               # %land.lhs.true1387
	cmpl	$0, -148(%rbp)
	je	.LBB7_80
# %bb.79:                               # %if.then1389
	movl	-16(%rbp), %eax
	addl	-24(%rbp), %eax
	movl	-20(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 7976(%rcx)
	movl	-20(%rbp), %eax
	addl	-28(%rbp), %eax
	movl	-24(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 7978(%rcx)
	movq	img, %rcx
	movw	%ax, 7960(%rcx)
	movl	-24(%rbp), %eax
	addl	-32(%rbp), %eax
	movl	-28(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 7980(%rcx)
	movq	img, %rcx
	movw	%ax, 7962(%rcx)
	movq	img, %rcx
	movw	%ax, 7944(%rcx)
	movl	-28(%rbp), %eax
	addl	-36(%rbp), %eax
	movl	-32(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 7982(%rcx)
	movq	img, %rcx
	movw	%ax, 7964(%rcx)
	movq	img, %rcx
	movw	%ax, 7946(%rcx)
	movq	img, %rcx
	movw	%ax, 7928(%rcx)
	movl	-32(%rbp), %eax
	addl	-40(%rbp), %eax
	movl	-36(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 7984(%rcx)
	movq	img, %rcx
	movw	%ax, 7966(%rcx)
	movq	img, %rcx
	movw	%ax, 7948(%rcx)
	movq	img, %rcx
	movw	%ax, 7930(%rcx)
	movq	img, %rcx
	movw	%ax, 7912(%rcx)
	movl	-36(%rbp), %eax
	addl	-44(%rbp), %eax
	movl	-40(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 7986(%rcx)
	movq	img, %rcx
	movw	%ax, 7968(%rcx)
	movq	img, %rcx
	movw	%ax, 7950(%rcx)
	movq	img, %rcx
	movw	%ax, 7932(%rcx)
	movq	img, %rcx
	movw	%ax, 7914(%rcx)
	movq	img, %rcx
	movw	%ax, 7896(%rcx)
	movl	-40(%rbp), %eax
	addl	-112(%rbp), %eax
	movl	-44(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 7988(%rcx)
	movq	img, %rcx
	movw	%ax, 7970(%rcx)
	movq	img, %rcx
	movw	%ax, 7952(%rcx)
	movq	img, %rcx
	movw	%ax, 7934(%rcx)
	movq	img, %rcx
	movw	%ax, 7916(%rcx)
	movq	img, %rcx
	movw	%ax, 7898(%rcx)
	movq	img, %rcx
	movw	%ax, 7880(%rcx)
	movl	-44(%rbp), %eax
	addl	-108(%rbp), %eax
	movl	-112(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 7990(%rcx)
	movq	img, %rcx
	movw	%ax, 7972(%rcx)
	movq	img, %rcx
	movw	%ax, 7954(%rcx)
	movq	img, %rcx
	movw	%ax, 7936(%rcx)
	movq	img, %rcx
	movw	%ax, 7918(%rcx)
	movq	img, %rcx
	movw	%ax, 7900(%rcx)
	movq	img, %rcx
	movw	%ax, 7882(%rcx)
	movq	img, %rcx
	movw	%ax, 7864(%rcx)
	movl	-112(%rbp), %eax
	addl	-104(%rbp), %eax
	movl	-108(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 7974(%rcx)
	movq	img, %rcx
	movw	%ax, 7956(%rcx)
	movq	img, %rcx
	movw	%ax, 7938(%rcx)
	movq	img, %rcx
	movw	%ax, 7920(%rcx)
	movq	img, %rcx
	movw	%ax, 7902(%rcx)
	movq	img, %rcx
	movw	%ax, 7884(%rcx)
	movq	img, %rcx
	movw	%ax, 7866(%rcx)
	movl	-108(%rbp), %eax
	addl	-100(%rbp), %eax
	movl	-104(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 7958(%rcx)
	movq	img, %rcx
	movw	%ax, 7940(%rcx)
	movq	img, %rcx
	movw	%ax, 7922(%rcx)
	movq	img, %rcx
	movw	%ax, 7904(%rcx)
	movq	img, %rcx
	movw	%ax, 7886(%rcx)
	movq	img, %rcx
	movw	%ax, 7868(%rcx)
	movl	-104(%rbp), %eax
	addl	-96(%rbp), %eax
	movl	-100(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 7942(%rcx)
	movq	img, %rcx
	movw	%ax, 7924(%rcx)
	movq	img, %rcx
	movw	%ax, 7906(%rcx)
	movq	img, %rcx
	movw	%ax, 7888(%rcx)
	movq	img, %rcx
	movw	%ax, 7870(%rcx)
	movl	-100(%rbp), %eax
	addl	-92(%rbp), %eax
	movl	-96(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 7926(%rcx)
	movq	img, %rcx
	movw	%ax, 7908(%rcx)
	movq	img, %rcx
	movw	%ax, 7890(%rcx)
	movq	img, %rcx
	movw	%ax, 7872(%rcx)
	movl	-96(%rbp), %eax
	addl	-88(%rbp), %eax
	movl	-92(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 7910(%rcx)
	movq	img, %rcx
	movw	%ax, 7892(%rcx)
	movq	img, %rcx
	movw	%ax, 7874(%rcx)
	movl	-92(%rbp), %eax
	addl	-84(%rbp), %eax
	movl	-88(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 7894(%rcx)
	movq	img, %rcx
	movw	%ax, 7876(%rcx)
	movl	-88(%rbp), %eax
	addl	-80(%rbp), %eax
	movl	-84(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 7878(%rcx)
	movl	-112(%rbp), %eax
	addl	-108(%rbp), %eax
	addl	$1, %eax
	sarl	$1, %eax
	movq	img, %rcx
	movw	%ax, 8094(%rcx)
	movq	img, %rcx
	movw	%ax, 8060(%rcx)
	movq	img, %rcx
	movw	%ax, 8026(%rcx)
	movq	img, %rcx
	movw	%ax, 7992(%rcx)
	movl	-108(%rbp), %eax
	addl	-104(%rbp), %eax
	addl	$1, %eax
	sarl	$1, %eax
	movq	img, %rcx
	movw	%ax, 8096(%rcx)
	movq	img, %rcx
	movw	%ax, 8062(%rcx)
	movq	img, %rcx
	movw	%ax, 8028(%rcx)
	movq	img, %rcx
	movw	%ax, 7994(%rcx)
	movl	-104(%rbp), %eax
	addl	-100(%rbp), %eax
	addl	$1, %eax
	sarl	$1, %eax
	movq	img, %rcx
	movw	%ax, 8098(%rcx)
	movq	img, %rcx
	movw	%ax, 8064(%rcx)
	movq	img, %rcx
	movw	%ax, 8030(%rcx)
	movq	img, %rcx
	movw	%ax, 7996(%rcx)
	movl	-100(%rbp), %eax
	addl	-96(%rbp), %eax
	addl	$1, %eax
	sarl	$1, %eax
	movq	img, %rcx
	movw	%ax, 8100(%rcx)
	movq	img, %rcx
	movw	%ax, 8066(%rcx)
	movq	img, %rcx
	movw	%ax, 8032(%rcx)
	movq	img, %rcx
	movw	%ax, 7998(%rcx)
	movl	-96(%rbp), %eax
	addl	-92(%rbp), %eax
	addl	$1, %eax
	sarl	$1, %eax
	movq	img, %rcx
	movw	%ax, 8102(%rcx)
	movq	img, %rcx
	movw	%ax, 8068(%rcx)
	movq	img, %rcx
	movw	%ax, 8034(%rcx)
	movq	img, %rcx
	movw	%ax, 8000(%rcx)
	movl	-92(%rbp), %eax
	addl	-88(%rbp), %eax
	addl	$1, %eax
	sarl	$1, %eax
	movq	img, %rcx
	movw	%ax, 8070(%rcx)
	movq	img, %rcx
	movw	%ax, 8036(%rcx)
	movq	img, %rcx
	movw	%ax, 8002(%rcx)
	movl	-88(%rbp), %eax
	addl	-84(%rbp), %eax
	addl	$1, %eax
	sarl	$1, %eax
	movq	img, %rcx
	movw	%ax, 8038(%rcx)
	movq	img, %rcx
	movw	%ax, 8004(%rcx)
	movl	-84(%rbp), %eax
	addl	-80(%rbp), %eax
	addl	$1, %eax
	sarl	$1, %eax
	movq	img, %rcx
	movw	%ax, 8006(%rcx)
	movl	-44(%rbp), %eax
	addl	-108(%rbp), %eax
	movl	-112(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 8110(%rcx)
	movq	img, %rcx
	movw	%ax, 8076(%rcx)
	movq	img, %rcx
	movw	%ax, 8042(%rcx)
	movq	img, %rcx
	movw	%ax, 8008(%rcx)
	movl	-112(%rbp), %eax
	addl	-104(%rbp), %eax
	movl	-108(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 8112(%rcx)
	movq	img, %rcx
	movw	%ax, 8078(%rcx)
	movq	img, %rcx
	movw	%ax, 8044(%rcx)
	movq	img, %rcx
	movw	%ax, 8010(%rcx)
	movl	-108(%rbp), %eax
	addl	-100(%rbp), %eax
	movl	-104(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 8114(%rcx)
	movq	img, %rcx
	movw	%ax, 8080(%rcx)
	movq	img, %rcx
	movw	%ax, 8046(%rcx)
	movq	img, %rcx
	movw	%ax, 8012(%rcx)
	movl	-104(%rbp), %eax
	addl	-96(%rbp), %eax
	movl	-100(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 8116(%rcx)
	movq	img, %rcx
	movw	%ax, 8082(%rcx)
	movq	img, %rcx
	movw	%ax, 8048(%rcx)
	movq	img, %rcx
	movw	%ax, 8014(%rcx)
	movl	-100(%rbp), %eax
	addl	-92(%rbp), %eax
	movl	-96(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 8118(%rcx)
	movq	img, %rcx
	movw	%ax, 8084(%rcx)
	movq	img, %rcx
	movw	%ax, 8050(%rcx)
	movq	img, %rcx
	movw	%ax, 8016(%rcx)
	movl	-96(%rbp), %eax
	addl	-88(%rbp), %eax
	movl	-92(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 8086(%rcx)
	movq	img, %rcx
	movw	%ax, 8052(%rcx)
	movq	img, %rcx
	movw	%ax, 8018(%rcx)
	movl	-92(%rbp), %eax
	addl	-84(%rbp), %eax
	movl	-88(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 8054(%rcx)
	movq	img, %rcx
	movw	%ax, 8020(%rcx)
	movl	-88(%rbp), %eax
	addl	-80(%rbp), %eax
	movl	-84(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 8022(%rcx)
	movl	-40(%rbp), %eax
	addl	-112(%rbp), %eax
	movl	-44(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 8092(%rcx)
	movq	img, %rcx
	movw	%ax, 8058(%rcx)
	movq	img, %rcx
	movw	%ax, 8024(%rcx)
	movl	-36(%rbp), %eax
	addl	-44(%rbp), %eax
	movl	-40(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 8108(%rcx)
	movq	img, %rcx
	movw	%ax, 8074(%rcx)
	movq	img, %rcx
	movw	%ax, 8040(%rcx)
	movl	-32(%rbp), %eax
	addl	-40(%rbp), %eax
	movl	-36(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 8090(%rcx)
	movq	img, %rcx
	movw	%ax, 8056(%rcx)
	movl	-28(%rbp), %eax
	addl	-36(%rbp), %eax
	movl	-32(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 8106(%rcx)
	movq	img, %rcx
	movw	%ax, 8072(%rcx)
	movl	-24(%rbp), %eax
	addl	-32(%rbp), %eax
	movl	-28(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 8088(%rcx)
	movl	-20(%rbp), %eax
	addl	-28(%rbp), %eax
	movl	-24(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 8104(%rcx)
	movl	-44(%rbp), %eax
	addl	-112(%rbp), %eax
	addl	$1, %eax
	sarl	$1, %eax
	movq	img, %rcx
	movw	%ax, 8180(%rcx)
	movq	img, %rcx
	movw	%ax, 8160(%rcx)
	movq	img, %rcx
	movw	%ax, 8140(%rcx)
	movq	img, %rcx
	movw	%ax, 8120(%rcx)
	movl	-40(%rbp), %eax
	addl	-44(%rbp), %eax
	addl	$1, %eax
	sarl	$1, %eax
	movq	img, %rcx
	movw	%ax, 8196(%rcx)
	movq	img, %rcx
	movw	%ax, 8176(%rcx)
	movq	img, %rcx
	movw	%ax, 8156(%rcx)
	movq	img, %rcx
	movw	%ax, 8136(%rcx)
	movl	-36(%rbp), %eax
	addl	-40(%rbp), %eax
	addl	$1, %eax
	sarl	$1, %eax
	movq	img, %rcx
	movw	%ax, 8212(%rcx)
	movq	img, %rcx
	movw	%ax, 8192(%rcx)
	movq	img, %rcx
	movw	%ax, 8172(%rcx)
	movq	img, %rcx
	movw	%ax, 8152(%rcx)
	movl	-32(%rbp), %eax
	addl	-36(%rbp), %eax
	addl	$1, %eax
	sarl	$1, %eax
	movq	img, %rcx
	movw	%ax, 8228(%rcx)
	movq	img, %rcx
	movw	%ax, 8208(%rcx)
	movq	img, %rcx
	movw	%ax, 8188(%rcx)
	movq	img, %rcx
	movw	%ax, 8168(%rcx)
	movl	-28(%rbp), %eax
	addl	-32(%rbp), %eax
	addl	$1, %eax
	sarl	$1, %eax
	movq	img, %rcx
	movw	%ax, 8244(%rcx)
	movq	img, %rcx
	movw	%ax, 8224(%rcx)
	movq	img, %rcx
	movw	%ax, 8204(%rcx)
	movq	img, %rcx
	movw	%ax, 8184(%rcx)
	movl	-24(%rbp), %eax
	addl	-28(%rbp), %eax
	addl	$1, %eax
	sarl	$1, %eax
	movq	img, %rcx
	movw	%ax, 8240(%rcx)
	movq	img, %rcx
	movw	%ax, 8220(%rcx)
	movq	img, %rcx
	movw	%ax, 8200(%rcx)
	movl	-20(%rbp), %eax
	addl	-24(%rbp), %eax
	addl	$1, %eax
	sarl	$1, %eax
	movq	img, %rcx
	movw	%ax, 8236(%rcx)
	movq	img, %rcx
	movw	%ax, 8216(%rcx)
	movl	-16(%rbp), %eax
	addl	-20(%rbp), %eax
	addl	$1, %eax
	sarl	$1, %eax
	movq	img, %rcx
	movw	%ax, 8232(%rcx)
	movl	-44(%rbp), %eax
	addl	-108(%rbp), %eax
	movl	-112(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 8182(%rcx)
	movq	img, %rcx
	movw	%ax, 8162(%rcx)
	movq	img, %rcx
	movw	%ax, 8142(%rcx)
	movq	img, %rcx
	movw	%ax, 8122(%rcx)
	movl	-112(%rbp), %eax
	addl	-40(%rbp), %eax
	movl	-44(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 8198(%rcx)
	movq	img, %rcx
	movw	%ax, 8178(%rcx)
	movq	img, %rcx
	movw	%ax, 8158(%rcx)
	movq	img, %rcx
	movw	%ax, 8138(%rcx)
	movl	-44(%rbp), %eax
	addl	-36(%rbp), %eax
	movl	-40(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 8214(%rcx)
	movq	img, %rcx
	movw	%ax, 8194(%rcx)
	movq	img, %rcx
	movw	%ax, 8174(%rcx)
	movq	img, %rcx
	movw	%ax, 8154(%rcx)
	movl	-40(%rbp), %eax
	addl	-32(%rbp), %eax
	movl	-36(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 8230(%rcx)
	movq	img, %rcx
	movw	%ax, 8210(%rcx)
	movq	img, %rcx
	movw	%ax, 8190(%rcx)
	movq	img, %rcx
	movw	%ax, 8170(%rcx)
	movl	-36(%rbp), %eax
	addl	-28(%rbp), %eax
	movl	-32(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 8246(%rcx)
	movq	img, %rcx
	movw	%ax, 8226(%rcx)
	movq	img, %rcx
	movw	%ax, 8206(%rcx)
	movq	img, %rcx
	movw	%ax, 8186(%rcx)
	movl	-32(%rbp), %eax
	addl	-24(%rbp), %eax
	movl	-28(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 8242(%rcx)
	movq	img, %rcx
	movw	%ax, 8222(%rcx)
	movq	img, %rcx
	movw	%ax, 8202(%rcx)
	movl	-28(%rbp), %eax
	addl	-20(%rbp), %eax
	movl	-24(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 8238(%rcx)
	movq	img, %rcx
	movw	%ax, 8218(%rcx)
	movl	-24(%rbp), %eax
	addl	-16(%rbp), %eax
	movl	-20(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 8234(%rcx)
	movl	-112(%rbp), %eax
	addl	-104(%rbp), %eax
	movl	-108(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 8164(%rcx)
	movq	img, %rcx
	movw	%ax, 8144(%rcx)
	movq	img, %rcx
	movw	%ax, 8124(%rcx)
	movl	-108(%rbp), %eax
	addl	-100(%rbp), %eax
	movl	-104(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 8166(%rcx)
	movq	img, %rcx
	movw	%ax, 8146(%rcx)
	movq	img, %rcx
	movw	%ax, 8126(%rcx)
	movl	-104(%rbp), %eax
	addl	-96(%rbp), %eax
	movl	-100(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 8148(%rcx)
	movq	img, %rcx
	movw	%ax, 8128(%rcx)
	movl	-100(%rbp), %eax
	addl	-92(%rbp), %eax
	movl	-96(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 8150(%rcx)
	movq	img, %rcx
	movw	%ax, 8130(%rcx)
	movl	-96(%rbp), %eax
	addl	-88(%rbp), %eax
	movl	-92(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 8132(%rcx)
	movl	-92(%rbp), %eax
	addl	-84(%rbp), %eax
	movl	-88(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 8134(%rcx)
.LBB7_80:                               # %if.end2641
	cmpl	$0, -116(%rbp)
	je	.LBB7_82
# %bb.81:                               # %if.then2643
	movl	-44(%rbp), %eax
	addl	-40(%rbp), %eax
	addl	$1, %eax
	sarl	$1, %eax
	movq	img, %rcx
	movw	%ax, 8376(%rcx)
	movl	-40(%rbp), %eax
	addl	-36(%rbp), %eax
	addl	$1, %eax
	sarl	$1, %eax
	movq	img, %rcx
	movw	%ax, 8380(%rcx)
	movq	img, %rcx
	movw	%ax, 8392(%rcx)
	movl	-36(%rbp), %eax
	addl	-32(%rbp), %eax
	addl	$1, %eax
	sarl	$1, %eax
	movq	img, %rcx
	movw	%ax, 8384(%rcx)
	movq	img, %rcx
	movw	%ax, 8396(%rcx)
	movq	img, %rcx
	movw	%ax, 8408(%rcx)
	movl	-32(%rbp), %eax
	addl	-28(%rbp), %eax
	addl	$1, %eax
	sarl	$1, %eax
	movq	img, %rcx
	movw	%ax, 8388(%rcx)
	movq	img, %rcx
	movw	%ax, 8400(%rcx)
	movq	img, %rcx
	movw	%ax, 8412(%rcx)
	movq	img, %rcx
	movw	%ax, 8424(%rcx)
	movl	-28(%rbp), %eax
	addl	-24(%rbp), %eax
	addl	$1, %eax
	sarl	$1, %eax
	movq	img, %rcx
	movw	%ax, 8404(%rcx)
	movq	img, %rcx
	movw	%ax, 8416(%rcx)
	movq	img, %rcx
	movw	%ax, 8428(%rcx)
	movq	img, %rcx
	movw	%ax, 8440(%rcx)
	movl	-24(%rbp), %eax
	addl	-20(%rbp), %eax
	addl	$1, %eax
	sarl	$1, %eax
	movq	img, %rcx
	movw	%ax, 8420(%rcx)
	movq	img, %rcx
	movw	%ax, 8432(%rcx)
	movq	img, %rcx
	movw	%ax, 8444(%rcx)
	movq	img, %rcx
	movw	%ax, 8456(%rcx)
	movl	-20(%rbp), %eax
	addl	-16(%rbp), %eax
	addl	$1, %eax
	sarl	$1, %eax
	movq	img, %rcx
	movw	%ax, 8436(%rcx)
	movq	img, %rcx
	movw	%ax, 8448(%rcx)
	movq	img, %rcx
	movw	%ax, 8460(%rcx)
	movq	img, %rcx
	movw	%ax, 8472(%rcx)
	movl	-16(%rbp), %eax
	movq	img, %rcx
	movw	%ax, 8502(%rcx)
	movq	img, %rcx
	movw	%ax, 8500(%rcx)
	movq	img, %rcx
	movw	%ax, 8498(%rcx)
	movq	img, %rcx
	movw	%ax, 8496(%rcx)
	movq	img, %rcx
	movw	%ax, 8494(%rcx)
	movq	img, %rcx
	movw	%ax, 8492(%rcx)
	movq	img, %rcx
	movw	%ax, 8490(%rcx)
	movq	img, %rcx
	movw	%ax, 8488(%rcx)
	movq	img, %rcx
	movw	%ax, 8486(%rcx)
	movq	img, %rcx
	movw	%ax, 8484(%rcx)
	movq	img, %rcx
	movw	%ax, 8482(%rcx)
	movq	img, %rcx
	movw	%ax, 8480(%rcx)
	movq	img, %rcx
	movw	%ax, 8478(%rcx)
	movq	img, %rcx
	movw	%ax, 8476(%rcx)
	movq	img, %rcx
	movw	%ax, 8470(%rcx)
	movq	img, %rcx
	movw	%ax, 8468(%rcx)
	movq	img, %rcx
	movw	%ax, 8466(%rcx)
	movq	img, %rcx
	movw	%ax, 8464(%rcx)
	movq	img, %rcx
	movw	%ax, 8454(%rcx)
	movq	img, %rcx
	movw	%ax, 8452(%rcx)
	movl	-20(%rbp), %eax
	imull	$3, -16(%rbp), %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 8438(%rcx)
	movq	img, %rcx
	movw	%ax, 8450(%rcx)
	movq	img, %rcx
	movw	%ax, 8462(%rcx)
	movq	img, %rcx
	movw	%ax, 8474(%rcx)
	movl	-16(%rbp), %eax
	addl	-24(%rbp), %eax
	movl	-20(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 8422(%rcx)
	movq	img, %rcx
	movw	%ax, 8434(%rcx)
	movq	img, %rcx
	movw	%ax, 8446(%rcx)
	movq	img, %rcx
	movw	%ax, 8458(%rcx)
	movl	-20(%rbp), %eax
	addl	-28(%rbp), %eax
	movl	-24(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 8406(%rcx)
	movq	img, %rcx
	movw	%ax, 8418(%rcx)
	movq	img, %rcx
	movw	%ax, 8430(%rcx)
	movq	img, %rcx
	movw	%ax, 8442(%rcx)
	movl	-24(%rbp), %eax
	addl	-32(%rbp), %eax
	movl	-28(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 8390(%rcx)
	movq	img, %rcx
	movw	%ax, 8402(%rcx)
	movq	img, %rcx
	movw	%ax, 8414(%rcx)
	movq	img, %rcx
	movw	%ax, 8426(%rcx)
	movl	-28(%rbp), %eax
	addl	-36(%rbp), %eax
	movl	-32(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 8386(%rcx)
	movq	img, %rcx
	movw	%ax, 8398(%rcx)
	movq	img, %rcx
	movw	%ax, 8410(%rcx)
	movl	-32(%rbp), %eax
	addl	-40(%rbp), %eax
	movl	-36(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 8382(%rcx)
	movq	img, %rcx
	movw	%ax, 8394(%rcx)
	movl	-36(%rbp), %eax
	addl	-44(%rbp), %eax
	movl	-40(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 8378(%rcx)
.LBB7_82:                               # %if.end3005
	cmpl	$1121277559, -224(%rbp) # imm = 0x42D55677
	jne	.LBB7_84
.LBB7_83:
	addq	$464, %rsp              # imm = 0x1D0
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB7_84:                               # %func_exit
	.cfi_def_cfa %rbp, 16
	callq	detect_breach
	jmp	.LBB7_83
.Lfunc_end7:
	.size	intrapred_luma8x8.2, .Lfunc_end7-intrapred_luma8x8.2
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function Mode_Decision_for_new_Intra8x8Macroblock.3
.LCPI8_0:
	.quad	4602677017732795964     # double 0.49990000000000001
.LCPI8_1:
	.quad	4618441417868443648     # double 6
	.text
	.globl	Mode_Decision_for_new_Intra8x8Macroblock.3
	.p2align	4, 0x90
	.type	Mode_Decision_for_new_Intra8x8Macroblock.3,@function
Mode_Decision_for_new_Intra8x8Macroblock.3: # @Mode_Decision_for_new_Intra8x8Macroblock.3
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset %rbx, -24
	vmovsd	.LCPI8_0(%rip), %xmm1   # xmm1 = mem[0],zero
	vmovsd	.LCPI8_1(%rip), %xmm2   # xmm2 = mem[0],zero
	movl	$625213948, -20(%rbp)   # imm = 0x254401FC
	vmovsd	%xmm0, -32(%rbp)
	movq	%rdi, -40(%rbp)
	movl	$0, -16(%rbp)
	vmulsd	-32(%rbp), %xmm2, %xmm0
	vaddsd	%xmm1, %xmm0, %xmm0
	vroundsd	$9, %xmm0, %xmm0, %xmm0
	vcvttsd2si	%xmm0, %eax
	movq	-40(%rbp), %rcx
	movl	%eax, (%rcx)
	movl	$0, -12(%rbp)
.LBB8_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$4, -12(%rbp)
	jge	.LBB8_6
# %bb.2:                                # %for.body
                                        #   in Loop: Header=BB8_1 Depth=1
	movl	-12(%rbp), %edi
	vmovsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	leaq	-24(%rbp), %rsi
	callq	Mode_Decision_for_new_8x8IntraBlocks
	cmpl	$0, %eax
	je	.LBB8_4
# %bb.3:                                # %if.then
                                        #   in Loop: Header=BB8_1 Depth=1
	movl	-12(%rbp), %ecx
                                        # kill: def $cl killed $ecx
	movl	$1, %eax
	shll	%cl, %eax
	orl	-16(%rbp), %eax
	movl	%eax, -16(%rbp)
.LBB8_4:                                # %if.end
                                        #   in Loop: Header=BB8_1 Depth=1
	movl	-24(%rbp), %eax
	movq	-40(%rbp), %rcx
	addl	(%rcx), %eax
	movl	%eax, (%rcx)
# %bb.5:                                # %for.inc
                                        #   in Loop: Header=BB8_1 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB8_1
.LBB8_6:                                # %for.end
	movl	-16(%rbp), %ebx
	cmpl	$625213948, -20(%rbp)   # imm = 0x254401FC
	jne	.LBB8_8
.LBB8_7:
	movl	%ebx, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB8_8:                                # %func_exit
	.cfi_def_cfa %rbp, 16
	callq	detect_breach
	jmp	.LBB8_7
.Lfunc_end8:
	.size	Mode_Decision_for_new_Intra8x8Macroblock.3, .Lfunc_end8-Mode_Decision_for_new_Intra8x8Macroblock.3
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function Mode_Decision_for_new_8x8IntraBlocks.4
.LCPI9_0:
	.quad	5055640609639927018     # double 1.0E+30
.LCPI9_1:
	.quad	4616189618054758400     # double 4
	.text
	.globl	Mode_Decision_for_new_8x8IntraBlocks.4
	.p2align	4, 0x90
	.type	Mode_Decision_for_new_8x8IntraBlocks.4,@function
Mode_Decision_for_new_8x8IntraBlocks.4: # @Mode_Decision_for_new_8x8IntraBlocks.4
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$1144, %rsp             # imm = 0x478
	.cfi_offset %rbx, -24
	vmovsd	.LCPI9_0(%rip), %xmm1   # xmm1 = mem[0],zero
	movl	$228360990, -172(%rbp)  # imm = 0xD9C831E
	movl	%edi, -32(%rbp)
	vmovsd	%xmm0, -152(%rbp)
	movq	%rsi, -160(%rbp)
	movl	$0, -60(%rbp)
	movl	$0, -112(%rbp)
	vxorps	%xmm0, %xmm0, %xmm0
	vmovsd	%xmm0, -144(%rbp)
	movl	-32(%rbp), %eax
	cltd
	movl	$2, %ecx
	idivl	%ecx
	shll	$3, %edx
	movl	%edx, -36(%rbp)
	movl	-32(%rbp), %eax
	cltd
	idivl	%ecx
	shll	$3, %eax
	movl	%eax, -40(%rbp)
	movq	img, %rax
	movl	152(%rax), %eax
	addl	-36(%rbp), %eax
	movl	%eax, -68(%rbp)
	movq	img, %rax
	movl	156(%rax), %eax
	addl	-40(%rbp), %eax
	movl	%eax, -44(%rbp)
	movq	img, %rax
	movl	168(%rax), %eax
	addl	-36(%rbp), %eax
	movl	%eax, -92(%rbp)
	movq	img, %rax
	movl	172(%rax), %eax
	addl	-40(%rbp), %eax
	movl	%eax, -96(%rbp)
	movl	-68(%rbp), %eax
	cltd
	movl	$4, %ecx
	idivl	%ecx
	movl	%eax, -176(%rbp)
	movl	-44(%rbp), %eax
	cltd
	idivl	%ecx
	movl	%eax, -188(%rbp)
	vmovsd	%xmm1, -136(%rbp)
	movq	imgY_org, %rax
	movq	%rax, -168(%rbp)
	movq	img, %rax
	movq	14168(%rax), %rax
	movq	img, %rdx
	movslq	12(%rdx), %rdx
	imulq	$632, %rdx, %rdx        # imm = 0x278
	addq	%rdx, %rax
	movl	524(%rax), %eax
	movl	%eax, -56(%rbp)
	movq	img, %rax
	movl	12(%rax), %edi
	movl	-36(%rbp), %eax
	cltd
	idivl	%ecx
	movl	%eax, %esi
	movl	-40(%rbp), %eax
	cltd
	idivl	%ecx
	movl	%eax, %edx
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	xorl	%r8d, %r8d
	leaq	-224(%rbp), %r9
	callq	getLuma4x4Neighbour
	movq	img, %rax
	movl	12(%rax), %edi
	movl	-36(%rbp), %eax
	cltd
	movl	$4, %ecx
	idivl	%ecx
	movl	%eax, %esi
	movl	-40(%rbp), %eax
	cltd
	idivl	%ecx
	movl	%eax, %edx
	movl	$0, %ecx
	movl	$4294967295, %r8d       # imm = 0xFFFFFFFF
	leaq	-248(%rbp), %r9
	callq	getLuma4x4Neighbour
	movq	input, %rax
	cmpl	$0, 216(%rax)
	je	.LBB9_8
# %bb.1:                                # %if.then
	cmpl	$0, -248(%rbp)
	je	.LBB9_3
# %bb.2:                                # %cond.true
	movq	img, %rax
	movq	71784(%rax), %rax
	movslq	-244(%rbp), %rcx
	movl	(%rax,%rcx,4), %eax
	jmp	.LBB9_4
.LBB9_3:                                # %cond.false
	xorl	%eax, %eax
	jmp	.LBB9_4
.LBB9_4:                                # %cond.end
	movl	%eax, -248(%rbp)
	cmpl	$0, -224(%rbp)
	je	.LBB9_6
# %bb.5:                                # %cond.true19
	movq	img, %rax
	movq	71784(%rax), %rax
	movslq	-220(%rbp), %rcx
	movl	(%rax,%rcx,4), %eax
	jmp	.LBB9_7
.LBB9_6:                                # %cond.false24
	xorl	%eax, %eax
	jmp	.LBB9_7
.LBB9_7:                                # %cond.end25
	movl	%eax, -224(%rbp)
.LBB9_8:                                # %if.end
	movl	-32(%rbp), %eax
	cltd
	movl	$2, %ecx
	idivl	%ecx
	cmpl	$0, %eax
	je	.LBB9_13
# %bb.9:                                # %if.then30
	cmpl	$0, -248(%rbp)
	je	.LBB9_11
# %bb.10:                               # %cond.true33
	movq	img, %rax
	movq	112(%rax), %rax
	movslq	-232(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movslq	-228(%rbp), %rcx
	movl	(%rax,%rcx,4), %eax
	jmp	.LBB9_12
.LBB9_11:                               # %cond.false38
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	jmp	.LBB9_12
.LBB9_12:                               # %cond.end39
	movl	%eax, -124(%rbp)
	jmp	.LBB9_17
.LBB9_13:                               # %if.else
	cmpl	$0, -248(%rbp)
	je	.LBB9_15
# %bb.14:                               # %cond.true43
	movq	img, %rax
	movq	104(%rax), %rax
	movslq	-232(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movslq	-228(%rbp), %rcx
	movl	(%rax,%rcx,4), %eax
	jmp	.LBB9_16
.LBB9_15:                               # %cond.false50
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	jmp	.LBB9_16
.LBB9_16:                               # %cond.end51
	movl	%eax, -124(%rbp)
.LBB9_17:                               # %if.end53
	movl	-32(%rbp), %eax
	cltd
	movl	$2, %ecx
	idivl	%ecx
	cmpl	$0, %edx
	je	.LBB9_22
# %bb.18:                               # %if.then56
	cmpl	$0, -224(%rbp)
	je	.LBB9_20
# %bb.19:                               # %cond.true59
	movq	img, %rax
	movq	112(%rax), %rax
	movslq	-208(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movslq	-204(%rbp), %rcx
	movl	(%rax,%rcx,4), %eax
	jmp	.LBB9_21
.LBB9_20:                               # %cond.false67
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	jmp	.LBB9_21
.LBB9_21:                               # %cond.end68
	movl	%eax, -120(%rbp)
	jmp	.LBB9_26
.LBB9_22:                               # %if.else70
	cmpl	$0, -224(%rbp)
	je	.LBB9_24
# %bb.23:                               # %cond.true73
	movq	img, %rax
	movq	104(%rax), %rax
	movslq	-208(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movslq	-204(%rbp), %rcx
	movl	(%rax,%rcx,4), %eax
	jmp	.LBB9_25
.LBB9_24:                               # %cond.false81
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	jmp	.LBB9_25
.LBB9_25:                               # %cond.end82
	movl	%eax, -120(%rbp)
.LBB9_26:                               # %if.end84
	cmpl	$0, -124(%rbp)
	jl	.LBB9_28
# %bb.27:                               # %lor.lhs.false
	cmpl	$0, -120(%rbp)
	jge	.LBB9_29
.LBB9_28:                               # %cond.true86
	movl	$2, %eax
	jmp	.LBB9_33
.LBB9_29:                               # %cond.false87
	movl	-124(%rbp), %eax
	cmpl	-120(%rbp), %eax
	jge	.LBB9_31
# %bb.30:                               # %cond.true89
	movl	-124(%rbp), %eax
	jmp	.LBB9_32
.LBB9_31:                               # %cond.false90
	movl	-120(%rbp), %eax
.LBB9_32:                               # %cond.end91
.LBB9_33:                               # %cond.end93
	movl	%eax, -104(%rbp)
	movq	-160(%rbp), %rax
	movl	$2147483647, (%rax)     # imm = 0x7FFFFFFF
	movl	-68(%rbp), %edi
	movl	-44(%rbp), %esi
	leaq	-184(%rbp), %rdx
	leaq	-180(%rbp), %rcx
	leaq	-192(%rbp), %r8
	callq	intrapred_luma8x8
	movl	$0, -48(%rbp)
.LBB9_34:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_46 Depth 2
                                        #       Child Loop BB9_48 Depth 3
                                        #     Child Loop BB9_61 Depth 2
                                        #       Child Loop BB9_63 Depth 3
                                        #     Child Loop BB9_70 Depth 2
                                        #       Child Loop BB9_72 Depth 3
                                        #         Child Loop BB9_74 Depth 4
                                        #     Child Loop BB9_82 Depth 2
                                        #       Child Loop BB9_84 Depth 3
                                        #     Child Loop BB9_92 Depth 2
                                        #       Child Loop BB9_94 Depth 3
                                        #     Child Loop BB9_100 Depth 2
                                        #       Child Loop BB9_102 Depth 3
                                        #     Child Loop BB9_108 Depth 2
                                        #       Child Loop BB9_110 Depth 3
                                        #     Child Loop BB9_116 Depth 2
                                        #       Child Loop BB9_118 Depth 3
                                        #         Child Loop BB9_120 Depth 4
                                        #       Child Loop BB9_126 Depth 3
                                        #         Child Loop BB9_128 Depth 4
                                        #       Child Loop BB9_134 Depth 3
                                        #         Child Loop BB9_136 Depth 4
                                        #     Child Loop BB9_144 Depth 2
                                        #       Child Loop BB9_146 Depth 3
                                        #     Child Loop BB9_179 Depth 2
                                        #       Child Loop BB9_181 Depth 3
                                        #     Child Loop BB9_188 Depth 2
                                        #       Child Loop BB9_190 Depth 3
                                        #         Child Loop BB9_192 Depth 4
                                        #     Child Loop BB9_200 Depth 2
                                        #       Child Loop BB9_202 Depth 3
                                        #         Child Loop BB9_204 Depth 4
                                        #       Child Loop BB9_210 Depth 3
                                        #         Child Loop BB9_212 Depth 4
                                        #       Child Loop BB9_218 Depth 3
                                        #         Child Loop BB9_220 Depth 4
                                        #           Child Loop BB9_222 Depth 5
                                        #     Child Loop BB9_232 Depth 2
                                        #       Child Loop BB9_234 Depth 3
	cmpl	$9, -48(%rbp)
	jge	.LBB9_245
# %bb.35:                               # %for.body
                                        #   in Loop: Header=BB9_34 Depth=1
	cmpl	$2, -48(%rbp)
	je	.LBB9_44
# %bb.36:                               # %lor.lhs.false97
                                        #   in Loop: Header=BB9_34 Depth=1
	cmpl	$0, -48(%rbp)
	je	.LBB9_39
# %bb.37:                               # %lor.lhs.false99
                                        #   in Loop: Header=BB9_34 Depth=1
	cmpl	$7, -48(%rbp)
	je	.LBB9_39
# %bb.38:                               # %lor.lhs.false101
                                        #   in Loop: Header=BB9_34 Depth=1
	cmpl	$3, -48(%rbp)
	jne	.LBB9_40
.LBB9_39:                               # %land.lhs.true
                                        #   in Loop: Header=BB9_34 Depth=1
	cmpl	$0, -180(%rbp)
	jne	.LBB9_44
.LBB9_40:                               # %lor.lhs.false104
                                        #   in Loop: Header=BB9_34 Depth=1
	cmpl	$1, -48(%rbp)
	je	.LBB9_42
# %bb.41:                               # %lor.lhs.false106
                                        #   in Loop: Header=BB9_34 Depth=1
	cmpl	$8, -48(%rbp)
	jne	.LBB9_43
.LBB9_42:                               # %land.lhs.true108
                                        #   in Loop: Header=BB9_34 Depth=1
	cmpl	$0, -184(%rbp)
	jne	.LBB9_44
.LBB9_43:                               # %lor.lhs.false110
                                        #   in Loop: Header=BB9_34 Depth=1
	cmpl	$0, -192(%rbp)
	je	.LBB9_243
.LBB9_44:                               # %if.then112
                                        #   in Loop: Header=BB9_34 Depth=1
	movq	input, %rax
	cmpl	$0, 2464(%rax)
	jne	.LBB9_59
# %bb.45:                               # %if.then114
                                        #   in Loop: Header=BB9_34 Depth=1
	movl	$0, -16(%rbp)
	movl	$0, -52(%rbp)
.LBB9_46:                               # %for.cond115
                                        #   Parent Loop BB9_34 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB9_48 Depth 3
	cmpl	$8, -16(%rbp)
	jge	.LBB9_53
# %bb.47:                               # %for.body117
                                        #   in Loop: Header=BB9_46 Depth=2
	movl	$0, -12(%rbp)
.LBB9_48:                               # %for.cond118
                                        #   Parent Loop BB9_34 Depth=1
                                        #     Parent Loop BB9_46 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	cmpl	$8, -12(%rbp)
	jge	.LBB9_51
# %bb.49:                               # %for.body120
                                        #   in Loop: Header=BB9_48 Depth=3
	movq	-168(%rbp), %rax
	movl	-96(%rbp), %ecx
	addl	-16(%rbp), %ecx
	movslq	%ecx, %rcx
	movq	(%rax,%rcx,8), %rax
	movl	-92(%rbp), %ecx
	addl	-12(%rbp), %ecx
	movslq	%ecx, %rcx
	movzwl	(%rax,%rcx,2), %eax
	movq	img, %rcx
	addq	$7352, %rcx             # imm = 0x1CB8
	movslq	-48(%rbp), %rdx
	shlq	$7, %rdx
	addq	%rdx, %rcx
	movslq	-16(%rbp), %rdx
	shlq	$4, %rdx
	addq	%rdx, %rcx
	movslq	-12(%rbp), %rdx
	movzwl	(%rcx,%rdx,2), %ecx
	subl	%ecx, %eax
	movslq	-52(%rbp), %rcx
	movl	%eax, -640(%rbp,%rcx,4)
# %bb.50:                               # %for.inc
                                        #   in Loop: Header=BB9_48 Depth=3
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB9_48
.LBB9_51:                               # %for.end
                                        #   in Loop: Header=BB9_46 Depth=2
	jmp	.LBB9_52
.LBB9_52:                               # %for.inc137
                                        #   in Loop: Header=BB9_46 Depth=2
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB9_46
.LBB9_53:                               # %for.end139
                                        #   in Loop: Header=BB9_34 Depth=1
	movl	-48(%rbp), %eax
	cmpl	-104(%rbp), %eax
	jne	.LBB9_55
# %bb.54:                               # %cond.true142
                                        #   in Loop: Header=BB9_34 Depth=1
	xorl	%eax, %eax
	jmp	.LBB9_56
.LBB9_55:                               # %cond.false143
                                        #   in Loop: Header=BB9_34 Depth=1
	vmovsd	.LCPI9_1(%rip), %xmm0   # xmm0 = mem[0],zero
	vmulsd	-152(%rbp), %xmm0, %xmm0
	vroundsd	$9, %xmm0, %xmm0, %xmm0
	vcvttsd2si	%xmm0, %eax
.LBB9_56:                               # %cond.end146
                                        #   in Loop: Header=BB9_34 Depth=1
	leaq	-640(%rbp), %rdi
	movl	%eax, -116(%rbp)
	movq	input, %rax
	movl	24(%rax), %esi
	callq	SATD8X8
	addl	-116(%rbp), %eax
	movl	%eax, -116(%rbp)
	movl	-116(%rbp), %eax
	movq	-160(%rbp), %rcx
	cmpl	(%rcx), %eax
	jge	.LBB9_58
# %bb.57:                               # %if.then151
                                        #   in Loop: Header=BB9_34 Depth=1
	movl	-48(%rbp), %eax
	movl	%eax, -60(%rbp)
	movl	-116(%rbp), %eax
	movq	-160(%rbp), %rcx
	movl	%eax, (%rcx)
.LBB9_58:                               # %if.end152
                                        #   in Loop: Header=BB9_34 Depth=1
	jmp	.LBB9_242
.LBB9_59:                               # %if.else153
                                        #   in Loop: Header=BB9_34 Depth=1
	movq	img, %rax
	cmpl	$0, 72724(%rax)
	jne	.LBB9_91
# %bb.60:                               # %if.then155
                                        #   in Loop: Header=BB9_34 Depth=1
	movl	$0, -16(%rbp)
.LBB9_61:                               # %for.cond156
                                        #   Parent Loop BB9_34 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB9_63 Depth 3
	cmpl	$8, -16(%rbp)
	jge	.LBB9_68
# %bb.62:                               # %for.body159
                                        #   in Loop: Header=BB9_61 Depth=2
	movl	$0, -12(%rbp)
.LBB9_63:                               # %for.cond160
                                        #   Parent Loop BB9_34 Depth=1
                                        #     Parent Loop BB9_61 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	cmpl	$8, -12(%rbp)
	jge	.LBB9_66
# %bb.64:                               # %for.body163
                                        #   in Loop: Header=BB9_63 Depth=3
	movq	img, %rax
	addq	$7352, %rax             # imm = 0x1CB8
	movslq	-48(%rbp), %rcx
	shlq	$7, %rcx
	addq	%rcx, %rax
	movslq	-16(%rbp), %rcx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movslq	-12(%rbp), %rcx
	movw	(%rax,%rcx,2), %ax
	movq	img, %rcx
	addq	$12600, %rcx            # imm = 0x3138
	movl	-36(%rbp), %edx
	addl	-12(%rbp), %edx
	movslq	%edx, %rdx
	shlq	$5, %rdx
	addq	%rdx, %rcx
	movl	-40(%rbp), %edx
	addl	-16(%rbp), %edx
	movslq	%edx, %rdx
	movw	%ax, (%rcx,%rdx,2)
	movq	-168(%rbp), %rax
	movl	-96(%rbp), %ecx
	addl	-16(%rbp), %ecx
	movslq	%ecx, %rcx
	movq	(%rax,%rcx,8), %rax
	movl	-92(%rbp), %ecx
	addl	-12(%rbp), %ecx
	movslq	%ecx, %rcx
	movzwl	(%rax,%rcx,2), %eax
	movq	img, %rcx
	addq	$7352, %rcx             # imm = 0x1CB8
	movslq	-48(%rbp), %rdx
	shlq	$7, %rdx
	addq	%rdx, %rcx
	movslq	-16(%rbp), %rdx
	shlq	$4, %rdx
	addq	%rdx, %rcx
	movslq	-12(%rbp), %rdx
	movzwl	(%rcx,%rdx,2), %ecx
	subl	%ecx, %eax
	movq	img, %rcx
	addq	$13112, %rcx            # imm = 0x3338
	movslq	-12(%rbp), %rdx
	shlq	$6, %rdx
	addq	%rdx, %rcx
	movslq	-16(%rbp), %rdx
	movl	%eax, (%rcx,%rdx,4)
# %bb.65:                               # %for.inc197
                                        #   in Loop: Header=BB9_63 Depth=3
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB9_63
.LBB9_66:                               # %for.end199
                                        #   in Loop: Header=BB9_61 Depth=2
	jmp	.LBB9_67
.LBB9_67:                               # %for.inc200
                                        #   in Loop: Header=BB9_61 Depth=2
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB9_61
.LBB9_68:                               # %for.end202
                                        #   in Loop: Header=BB9_34 Depth=1
	movb	$0, %al
	callq	store_coding_state_cs_cm
	movl	-32(%rbp), %esi
	movl	-48(%rbp), %edx
	vmovsd	-152(%rbp), %xmm0       # xmm0 = mem[0],zero
	vmovsd	-136(%rbp), %xmm1       # xmm1 = mem[0],zero
	movl	-104(%rbp), %ecx
	leaq	-128(%rbp), %rdi
	callq	RDCost_for_8x8IntraBlocks
	vmovsd	%xmm0, -144(%rbp)
	vmovsd	-136(%rbp), %xmm1       # xmm1 = mem[0],zero
	vucomisd	%xmm0, %xmm1
	jbe	.LBB9_90
# %bb.69:                               # %if.then206
                                        #   in Loop: Header=BB9_34 Depth=1
	movl	$0, -16(%rbp)
.LBB9_70:                               # %for.cond207
                                        #   Parent Loop BB9_34 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB9_72 Depth 3
                                        #         Child Loop BB9_74 Depth 4
	cmpl	$2, -16(%rbp)
	jge	.LBB9_81
# %bb.71:                               # %for.body210
                                        #   in Loop: Header=BB9_70 Depth=2
	movl	$0, -12(%rbp)
.LBB9_72:                               # %for.cond211
                                        #   Parent Loop BB9_34 Depth=1
                                        #     Parent Loop BB9_70 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB9_74 Depth 4
	cmpl	$65, -12(%rbp)
	jge	.LBB9_79
# %bb.73:                               # %for.body214
                                        #   in Loop: Header=BB9_72 Depth=3
	movl	$0, -52(%rbp)
.LBB9_74:                               # %for.cond215
                                        #   Parent Loop BB9_34 Depth=1
                                        #     Parent Loop BB9_70 Depth=2
                                        #       Parent Loop BB9_72 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	cmpl	$4, -52(%rbp)
	jge	.LBB9_77
# %bb.75:                               # %for.body218
                                        #   in Loop: Header=BB9_74 Depth=4
	movq	img, %rax
	movq	14136(%rax), %rax
	movslq	-32(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movslq	-52(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movslq	-16(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movslq	-12(%rbp), %rcx
	movl	(%rax,%rcx,4), %eax
	movq	cofAC8x8, %rcx
	movslq	-32(%rbp), %rdx
	movq	(%rcx,%rdx,8), %rcx
	movslq	-52(%rbp), %rdx
	movq	(%rcx,%rdx,8), %rcx
	movslq	-16(%rbp), %rdx
	movq	(%rcx,%rdx,8), %rcx
	movslq	-12(%rbp), %rdx
	movl	%eax, (%rcx,%rdx,4)
# %bb.76:                               # %for.inc235
                                        #   in Loop: Header=BB9_74 Depth=4
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB9_74
.LBB9_77:                               # %for.end237
                                        #   in Loop: Header=BB9_72 Depth=3
	jmp	.LBB9_78
.LBB9_78:                               # %for.inc238
                                        #   in Loop: Header=BB9_72 Depth=3
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB9_72
.LBB9_79:                               # %for.end240
                                        #   in Loop: Header=BB9_70 Depth=2
	jmp	.LBB9_80
.LBB9_80:                               # %for.inc241
                                        #   in Loop: Header=BB9_70 Depth=2
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB9_70
.LBB9_81:                               # %for.end243
                                        #   in Loop: Header=BB9_34 Depth=1
	movl	$0, -24(%rbp)
.LBB9_82:                               # %for.cond244
                                        #   Parent Loop BB9_34 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB9_84 Depth 3
	cmpl	$8, -24(%rbp)
	jge	.LBB9_89
# %bb.83:                               # %for.body247
                                        #   in Loop: Header=BB9_82 Depth=2
	movl	$0, -28(%rbp)
.LBB9_84:                               # %for.cond248
                                        #   Parent Loop BB9_34 Depth=1
                                        #     Parent Loop BB9_82 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	cmpl	$8, -28(%rbp)
	jge	.LBB9_87
# %bb.85:                               # %for.body251
                                        #   in Loop: Header=BB9_84 Depth=3
	movq	enc_picture, %rax
	movq	6424(%rax), %rax
	movl	-44(%rbp), %ecx
	addl	-24(%rbp), %ecx
	movslq	%ecx, %rcx
	movq	(%rax,%rcx,8), %rax
	movl	-68(%rbp), %ecx
	addl	-28(%rbp), %ecx
	movslq	%ecx, %rcx
	movw	(%rax,%rcx,2), %ax
	movslq	-24(%rbp), %rcx
	shlq	$4, %rcx
	leaq	-384(%rbp), %rdx
	addq	%rcx, %rdx
	movslq	-28(%rbp), %rcx
	movw	%ax, (%rdx,%rcx,2)
# %bb.86:                               # %for.inc262
                                        #   in Loop: Header=BB9_84 Depth=3
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB9_84
.LBB9_87:                               # %for.end264
                                        #   in Loop: Header=BB9_82 Depth=2
	jmp	.LBB9_88
.LBB9_88:                               # %for.inc265
                                        #   in Loop: Header=BB9_82 Depth=2
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB9_82
.LBB9_89:                               # %for.end267
                                        #   in Loop: Header=BB9_34 Depth=1
	movl	-128(%rbp), %eax
	movl	%eax, -112(%rbp)
	vmovsd	-144(%rbp), %xmm0       # xmm0 = mem[0],zero
	vmovsd	%xmm0, -136(%rbp)
	movl	-48(%rbp), %eax
	movl	%eax, -60(%rbp)
.LBB9_90:                               # %if.end268
                                        #   in Loop: Header=BB9_34 Depth=1
	movb	$0, %al
	callq	reset_coding_state_cs_cm
	jmp	.LBB9_241
.LBB9_91:                               # %if.else269
                                        #   in Loop: Header=BB9_34 Depth=1
	movl	$0, -16(%rbp)
.LBB9_92:                               # %for.cond270
                                        #   Parent Loop BB9_34 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB9_94 Depth 3
	cmpl	$8, -16(%rbp)
	jge	.LBB9_99
# %bb.93:                               # %for.body273
                                        #   in Loop: Header=BB9_92 Depth=2
	movl	$0, -12(%rbp)
.LBB9_94:                               # %for.cond274
                                        #   Parent Loop BB9_34 Depth=1
                                        #     Parent Loop BB9_92 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	cmpl	$8, -12(%rbp)
	jge	.LBB9_97
# %bb.95:                               # %for.body277
                                        #   in Loop: Header=BB9_94 Depth=3
	movq	imgUV_org, %rax
	movq	(%rax), %rax
	movl	-96(%rbp), %ecx
	addl	-16(%rbp), %ecx
	movslq	%ecx, %rcx
	movq	(%rax,%rcx,8), %rax
	movl	-92(%rbp), %ecx
	addl	-12(%rbp), %ecx
	movslq	%ecx, %rcx
	movzwl	(%rax,%rcx,2), %eax
	movq	img, %rcx
	addq	$8504, %rcx             # imm = 0x2138
	movslq	-56(%rbp), %rdx
	shlq	$9, %rdx
	addq	%rdx, %rcx
	movl	-36(%rbp), %edx
	addl	-12(%rbp), %edx
	movslq	%edx, %rdx
	shlq	$5, %rdx
	addq	%rdx, %rcx
	movl	-40(%rbp), %edx
	addl	-16(%rbp), %edx
	movslq	%edx, %rdx
	movzwl	(%rcx,%rdx,2), %ecx
	subl	%ecx, %eax
	movl	%eax, -64(%rbp)
	movq	imgY_org, %rax
	movl	-96(%rbp), %ecx
	addl	-16(%rbp), %ecx
	movslq	%ecx, %rcx
	movq	(%rax,%rcx,8), %rax
	movl	-92(%rbp), %ecx
	addl	-12(%rbp), %ecx
	movslq	%ecx, %rcx
	movzwl	(%rax,%rcx,2), %eax
	movq	img, %rcx
	addq	$7352, %rcx             # imm = 0x1CB8
	movslq	-48(%rbp), %rdx
	shlq	$7, %rdx
	addq	%rdx, %rcx
	movslq	-16(%rbp), %rdx
	shlq	$4, %rdx
	addq	%rdx, %rcx
	movslq	-12(%rbp), %rdx
	movzwl	(%rcx,%rdx,2), %ecx
	subl	%ecx, %eax
	movl	%eax, -72(%rbp)
	movq	imgUV_org, %rax
	movq	8(%rax), %rax
	movl	-96(%rbp), %ecx
	addl	-16(%rbp), %ecx
	movslq	%ecx, %rcx
	movq	(%rax,%rcx,8), %rax
	movl	-92(%rbp), %ecx
	addl	-12(%rbp), %ecx
	movslq	%ecx, %rcx
	movzwl	(%rax,%rcx,2), %eax
	movq	img, %rcx
	addq	$8504, %rcx             # imm = 0x2138
	addq	$2048, %rcx             # imm = 0x800
	movslq	-56(%rbp), %rdx
	shlq	$9, %rdx
	addq	%rdx, %rcx
	movl	-36(%rbp), %edx
	addl	-12(%rbp), %edx
	movslq	%edx, %rdx
	shlq	$5, %rdx
	addq	%rdx, %rcx
	movl	-40(%rbp), %edx
	addl	-16(%rbp), %edx
	movslq	%edx, %rdx
	movzwl	(%rcx,%rdx,2), %ecx
	subl	%ecx, %eax
	movl	%eax, -80(%rbp)
	movl	-80(%rbp), %eax
	subl	-64(%rbp), %eax
	movslq	-12(%rbp), %rcx
	shlq	$6, %rcx
	movabsq	$resTrans_R, %rdx
	movq	%rdx, %rsi
	addq	%rcx, %rsi
	movslq	-16(%rbp), %rcx
	movl	%eax, (%rsi,%rcx,4)
	movl	-64(%rbp), %eax
	movslq	-12(%rbp), %rcx
	shlq	$6, %rcx
	addq	%rcx, %rdx
	movslq	-16(%rbp), %rcx
	movl	(%rdx,%rcx,4), %ecx
	sarl	$1, %ecx
	addl	%ecx, %eax
	movl	%eax, -88(%rbp)
	movl	-72(%rbp), %eax
	subl	-88(%rbp), %eax
	movslq	-12(%rbp), %rcx
	shlq	$6, %rcx
	movabsq	$resTrans_B, %rdx
	movq	%rdx, %rsi
	addq	%rcx, %rsi
	movslq	-16(%rbp), %rcx
	movl	%eax, (%rsi,%rcx,4)
	movl	-88(%rbp), %eax
	movslq	-12(%rbp), %rcx
	shlq	$6, %rcx
	addq	%rcx, %rdx
	movslq	-16(%rbp), %rcx
	movl	(%rdx,%rcx,4), %ecx
	sarl	$1, %ecx
	addl	%ecx, %eax
	movslq	-12(%rbp), %rcx
	shlq	$6, %rcx
	movabsq	$resTrans_G, %rdx
	addq	%rcx, %rdx
	movslq	-16(%rbp), %rcx
	movl	%eax, (%rdx,%rcx,4)
# %bb.96:                               # %for.inc358
                                        #   in Loop: Header=BB9_94 Depth=3
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB9_94
.LBB9_97:                               # %for.end360
                                        #   in Loop: Header=BB9_92 Depth=2
	jmp	.LBB9_98
.LBB9_98:                               # %for.inc361
                                        #   in Loop: Header=BB9_92 Depth=2
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB9_92
.LBB9_99:                               # %for.end363
                                        #   in Loop: Header=BB9_34 Depth=1
	movl	$0, -16(%rbp)
.LBB9_100:                              # %for.cond364
                                        #   Parent Loop BB9_34 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB9_102 Depth 3
	cmpl	$8, -16(%rbp)
	jge	.LBB9_107
# %bb.101:                              # %for.body367
                                        #   in Loop: Header=BB9_100 Depth=2
	movl	$0, -12(%rbp)
.LBB9_102:                              # %for.cond368
                                        #   Parent Loop BB9_34 Depth=1
                                        #     Parent Loop BB9_100 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	cmpl	$8, -12(%rbp)
	jge	.LBB9_105
# %bb.103:                              # %for.body371
                                        #   in Loop: Header=BB9_102 Depth=3
	movslq	-12(%rbp), %rax
	shlq	$6, %rax
	movabsq	$resTrans_G, %rcx
	addq	%rax, %rcx
	movslq	-16(%rbp), %rax
	movl	(%rcx,%rax,4), %eax
	movq	img, %rcx
	addq	$13112, %rcx            # imm = 0x3338
	movslq	-12(%rbp), %rdx
	shlq	$6, %rdx
	addq	%rdx, %rcx
	movslq	-16(%rbp), %rdx
	movl	%eax, (%rcx,%rdx,4)
# %bb.104:                              # %for.inc381
                                        #   in Loop: Header=BB9_102 Depth=3
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB9_102
.LBB9_105:                              # %for.end383
                                        #   in Loop: Header=BB9_100 Depth=2
	jmp	.LBB9_106
.LBB9_106:                              # %for.inc384
                                        #   in Loop: Header=BB9_100 Depth=2
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB9_100
.LBB9_107:                              # %for.end386
                                        #   in Loop: Header=BB9_34 Depth=1
	movb	$0, %al
	callq	store_coding_state_cs_cm
	movl	-32(%rbp), %esi
	movl	-48(%rbp), %edx
	vmovsd	-152(%rbp), %xmm0       # xmm0 = mem[0],zero
	vmovsd	-136(%rbp), %xmm1       # xmm1 = mem[0],zero
	movl	-104(%rbp), %ecx
	leaq	-128(%rbp), %rdi
	callq	RDCost_for_8x8IntraBlocks
	vcvttsd2si	%xmm0, %eax
	movl	%eax, -108(%rbp)
	movb	$0, %al
	callq	reset_coding_state_cs_cm
	movl	$0, -16(%rbp)
.LBB9_108:                              # %for.cond389
                                        #   Parent Loop BB9_34 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB9_110 Depth 3
	cmpl	$8, -16(%rbp)
	jge	.LBB9_115
# %bb.109:                              # %for.body392
                                        #   in Loop: Header=BB9_108 Depth=2
	movl	$0, -12(%rbp)
.LBB9_110:                              # %for.cond393
                                        #   Parent Loop BB9_34 Depth=1
                                        #     Parent Loop BB9_108 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	cmpl	$8, -12(%rbp)
	jge	.LBB9_113
# %bb.111:                              # %for.body396
                                        #   in Loop: Header=BB9_110 Depth=3
	movq	img, %rax
	addq	$13112, %rax            # imm = 0x3338
	movslq	-12(%rbp), %rcx
	shlq	$6, %rcx
	addq	%rcx, %rax
	movslq	-16(%rbp), %rcx
	movl	(%rax,%rcx,4), %eax
	movslq	-12(%rbp), %rcx
	shlq	$6, %rcx
	movabsq	$rec_resG, %rdx
	addq	%rcx, %rdx
	movslq	-16(%rbp), %rcx
	movl	%eax, (%rdx,%rcx,4)
# %bb.112:                              # %for.inc406
                                        #   in Loop: Header=BB9_110 Depth=3
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB9_110
.LBB9_113:                              # %for.end408
                                        #   in Loop: Header=BB9_108 Depth=2
	jmp	.LBB9_114
.LBB9_114:                              # %for.inc409
                                        #   in Loop: Header=BB9_108 Depth=2
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB9_108
.LBB9_115:                              # %for.end411
                                        #   in Loop: Header=BB9_34 Depth=1
	movb	$0, %al
	callq	store_coding_state_cs_cm
	movl	$0, -20(%rbp)
.LBB9_116:                              # %for.cond412
                                        #   Parent Loop BB9_34 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB9_118 Depth 3
                                        #         Child Loop BB9_120 Depth 4
                                        #       Child Loop BB9_126 Depth 3
                                        #         Child Loop BB9_128 Depth 4
                                        #       Child Loop BB9_134 Depth 3
                                        #         Child Loop BB9_136 Depth 4
	cmpl	$4, -20(%rbp)
	jge	.LBB9_143
# %bb.117:                              # %for.body415
                                        #   in Loop: Header=BB9_116 Depth=2
	movl	-20(%rbp), %eax
	cltd
	movl	$2, %ecx
	idivl	%ecx
	shll	$2, %edx
	movl	%edx, -84(%rbp)
	movl	-20(%rbp), %eax
	cltd
	idivl	%ecx
	shll	$2, %eax
	movl	%eax, -76(%rbp)
	movl	$0, -16(%rbp)
.LBB9_118:                              # %for.cond420
                                        #   Parent Loop BB9_34 Depth=1
                                        #     Parent Loop BB9_116 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB9_120 Depth 4
	cmpl	$4, -16(%rbp)
	jge	.LBB9_125
# %bb.119:                              # %for.body423
                                        #   in Loop: Header=BB9_118 Depth=3
	movl	$0, -12(%rbp)
.LBB9_120:                              # %for.cond424
                                        #   Parent Loop BB9_34 Depth=1
                                        #     Parent Loop BB9_116 Depth=2
                                        #       Parent Loop BB9_118 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	cmpl	$4, -12(%rbp)
	jge	.LBB9_123
# %bb.121:                              # %for.body427
                                        #   in Loop: Header=BB9_120 Depth=4
	movl	-12(%rbp), %eax
	addl	-84(%rbp), %eax
	cltq
	shlq	$6, %rax
	movabsq	$resTrans_R, %rcx
	addq	%rax, %rcx
	movl	-16(%rbp), %eax
	addl	-76(%rbp), %eax
	cltq
	movl	(%rcx,%rax,4), %eax
	movq	img, %rcx
	addq	$13112, %rcx            # imm = 0x3338
	movslq	-12(%rbp), %rdx
	shlq	$6, %rdx
	addq	%rdx, %rcx
	movslq	-16(%rbp), %rdx
	movl	%eax, (%rcx,%rdx,4)
# %bb.122:                              # %for.inc439
                                        #   in Loop: Header=BB9_120 Depth=4
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB9_120
.LBB9_123:                              # %for.end441
                                        #   in Loop: Header=BB9_118 Depth=3
	jmp	.LBB9_124
.LBB9_124:                              # %for.inc442
                                        #   in Loop: Header=BB9_118 Depth=3
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB9_118
.LBB9_125:                              # %for.end444
                                        #   in Loop: Header=BB9_116 Depth=2
	movl	-32(%rbp), %edi
	addl	$4, %edi
	movl	-20(%rbp), %esi
	xorl	%edx, %edx
	callq	RDCost_for_4x4Blocks_Chroma
	addl	-108(%rbp), %eax
	movl	%eax, -108(%rbp)
	movl	$0, -16(%rbp)
.LBB9_126:                              # %for.cond448
                                        #   Parent Loop BB9_34 Depth=1
                                        #     Parent Loop BB9_116 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB9_128 Depth 4
	cmpl	$4, -16(%rbp)
	jge	.LBB9_133
# %bb.127:                              # %for.body451
                                        #   in Loop: Header=BB9_126 Depth=3
	movl	$0, -12(%rbp)
.LBB9_128:                              # %for.cond452
                                        #   Parent Loop BB9_34 Depth=1
                                        #     Parent Loop BB9_116 Depth=2
                                        #       Parent Loop BB9_126 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	cmpl	$4, -12(%rbp)
	jge	.LBB9_131
# %bb.129:                              # %for.body455
                                        #   in Loop: Header=BB9_128 Depth=4
	movq	img, %rax
	addq	$13112, %rax            # imm = 0x3338
	movslq	-12(%rbp), %rcx
	shlq	$6, %rcx
	addq	%rcx, %rax
	movslq	-16(%rbp), %rcx
	movl	(%rax,%rcx,4), %eax
	movl	-12(%rbp), %ecx
	addl	-84(%rbp), %ecx
	movslq	%ecx, %rcx
	shlq	$6, %rcx
	movabsq	$rec_resR, %rdx
	addq	%rcx, %rdx
	movl	-16(%rbp), %ecx
	addl	-76(%rbp), %ecx
	movslq	%ecx, %rcx
	movl	%eax, (%rdx,%rcx,4)
	movl	-12(%rbp), %eax
	addl	-84(%rbp), %eax
	cltq
	shlq	$6, %rax
	movabsq	$resTrans_B, %rcx
	addq	%rax, %rcx
	movl	-16(%rbp), %eax
	addl	-76(%rbp), %eax
	cltq
	movl	(%rcx,%rax,4), %eax
	movq	img, %rcx
	addq	$13112, %rcx            # imm = 0x3338
	movslq	-12(%rbp), %rdx
	shlq	$6, %rdx
	addq	%rdx, %rcx
	movslq	-16(%rbp), %rdx
	movl	%eax, (%rcx,%rdx,4)
# %bb.130:                              # %for.inc478
                                        #   in Loop: Header=BB9_128 Depth=4
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB9_128
.LBB9_131:                              # %for.end480
                                        #   in Loop: Header=BB9_126 Depth=3
	jmp	.LBB9_132
.LBB9_132:                              # %for.inc481
                                        #   in Loop: Header=BB9_126 Depth=3
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB9_126
.LBB9_133:                              # %for.end483
                                        #   in Loop: Header=BB9_116 Depth=2
	movl	-32(%rbp), %edi
	addl	$8, %edi
	movl	-20(%rbp), %esi
	movl	$1, %edx
	callq	RDCost_for_4x4Blocks_Chroma
	addl	-108(%rbp), %eax
	movl	%eax, -108(%rbp)
	movl	$0, -16(%rbp)
.LBB9_134:                              # %for.cond487
                                        #   Parent Loop BB9_34 Depth=1
                                        #     Parent Loop BB9_116 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB9_136 Depth 4
	cmpl	$4, -16(%rbp)
	jge	.LBB9_141
# %bb.135:                              # %for.body490
                                        #   in Loop: Header=BB9_134 Depth=3
	movl	$0, -12(%rbp)
.LBB9_136:                              # %for.cond491
                                        #   Parent Loop BB9_34 Depth=1
                                        #     Parent Loop BB9_116 Depth=2
                                        #       Parent Loop BB9_134 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	cmpl	$4, -12(%rbp)
	jge	.LBB9_139
# %bb.137:                              # %for.body494
                                        #   in Loop: Header=BB9_136 Depth=4
	movq	img, %rax
	addq	$13112, %rax            # imm = 0x3338
	movslq	-12(%rbp), %rcx
	shlq	$6, %rcx
	addq	%rcx, %rax
	movslq	-16(%rbp), %rcx
	movl	(%rax,%rcx,4), %eax
	movl	-12(%rbp), %ecx
	addl	-84(%rbp), %ecx
	movslq	%ecx, %rcx
	shlq	$6, %rcx
	movabsq	$rec_resB, %rdx
	addq	%rcx, %rdx
	movl	-16(%rbp), %ecx
	addl	-76(%rbp), %ecx
	movslq	%ecx, %rcx
	movl	%eax, (%rdx,%rcx,4)
# %bb.138:                              # %for.inc506
                                        #   in Loop: Header=BB9_136 Depth=4
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB9_136
.LBB9_139:                              # %for.end508
                                        #   in Loop: Header=BB9_134 Depth=3
	jmp	.LBB9_140
.LBB9_140:                              # %for.inc509
                                        #   in Loop: Header=BB9_134 Depth=3
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB9_134
.LBB9_141:                              # %for.end511
                                        #   in Loop: Header=BB9_116 Depth=2
	jmp	.LBB9_142
.LBB9_142:                              # %for.inc512
                                        #   in Loop: Header=BB9_116 Depth=2
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB9_116
.LBB9_143:                              # %for.end514
                                        #   in Loop: Header=BB9_34 Depth=1
	movb	$0, %al
	callq	reset_coding_state_cs_cm
	movl	$0, -16(%rbp)
.LBB9_144:                              # %for.cond515
                                        #   Parent Loop BB9_34 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB9_146 Depth 3
	cmpl	$8, -16(%rbp)
	jge	.LBB9_178
# %bb.145:                              # %for.body518
                                        #   in Loop: Header=BB9_144 Depth=2
	movl	$0, -12(%rbp)
.LBB9_146:                              # %for.cond519
                                        #   Parent Loop BB9_34 Depth=1
                                        #     Parent Loop BB9_144 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	cmpl	$8, -12(%rbp)
	jge	.LBB9_176
# %bb.147:                              # %for.body522
                                        #   in Loop: Header=BB9_146 Depth=3
	xorl	%eax, %eax
	movslq	-12(%rbp), %rcx
	shlq	$6, %rcx
	movabsq	$rec_resG, %rdx
	addq	%rcx, %rdx
	movslq	-16(%rbp), %rcx
	movl	(%rdx,%rcx,4), %ecx
	movslq	-12(%rbp), %rdx
	shlq	$6, %rdx
	movabsq	$rec_resB, %rsi
	movq	%rsi, %rdi
	addq	%rdx, %rdi
	movslq	-16(%rbp), %rdx
	movl	(%rdi,%rdx,4), %edx
	sarl	$1, %edx
	subl	%edx, %ecx
	movl	%ecx, -88(%rbp)
	movslq	-12(%rbp), %rcx
	shlq	$6, %rcx
	addq	%rcx, %rsi
	movslq	-16(%rbp), %rcx
	movl	(%rsi,%rcx,4), %ecx
	addl	-88(%rbp), %ecx
	movl	%ecx, -72(%rbp)
	movl	-88(%rbp), %ecx
	movslq	-12(%rbp), %rdx
	shlq	$6, %rdx
	movabsq	$rec_resR, %rsi
	movq	%rsi, %rdi
	addq	%rdx, %rdi
	movslq	-16(%rbp), %rdx
	movl	(%rdi,%rdx,4), %edx
	sarl	$1, %edx
	subl	%edx, %ecx
	movl	%ecx, -64(%rbp)
	movl	-64(%rbp), %ecx
	movslq	-12(%rbp), %rdx
	shlq	$6, %rdx
	addq	%rdx, %rsi
	movslq	-16(%rbp), %rdx
	addl	(%rsi,%rdx,4), %ecx
	movl	%ecx, -80(%rbp)
	movq	img, %rcx
	movl	72688(%rcx), %ecx
	movl	-64(%rbp), %edx
	movq	img, %rsi
	addq	$8504, %rsi             # imm = 0x2138
	movslq	-56(%rbp), %rdi
	shlq	$9, %rdi
	addq	%rdi, %rsi
	movl	-36(%rbp), %edi
	addl	-12(%rbp), %edi
	movslq	%edi, %rdi
	shlq	$5, %rdi
	addq	%rdi, %rsi
	movl	-40(%rbp), %edi
	addl	-16(%rbp), %edi
	movslq	%edi, %rdi
	movzwl	(%rsi,%rdi,2), %esi
	addl	%esi, %edx
	cmpl	%edx, %eax
	jle	.LBB9_149
# %bb.148:                              # %cond.true563
                                        #   in Loop: Header=BB9_146 Depth=3
	xorl	%eax, %eax
	jmp	.LBB9_150
.LBB9_149:                              # %cond.false564
                                        #   in Loop: Header=BB9_146 Depth=3
	movl	-64(%rbp), %eax
	movq	img, %rdx
	addq	$8504, %rdx             # imm = 0x2138
	movslq	-56(%rbp), %rsi
	shlq	$9, %rsi
	addq	%rsi, %rdx
	movl	-36(%rbp), %esi
	addl	-12(%rbp), %esi
	movslq	%esi, %rsi
	shlq	$5, %rsi
	addq	%rsi, %rdx
	movl	-40(%rbp), %esi
	addl	-16(%rbp), %esi
	movslq	%esi, %rsi
	movzwl	(%rdx,%rsi,2), %edx
	addl	%edx, %eax
.LBB9_150:                              # %cond.end577
                                        #   in Loop: Header=BB9_146 Depth=3
	cmpl	%eax, %ecx
	jge	.LBB9_152
# %bb.151:                              # %cond.true581
                                        #   in Loop: Header=BB9_146 Depth=3
	movq	img, %rax
	movl	72688(%rax), %eax
	jmp	.LBB9_156
.LBB9_152:                              # %cond.false583
                                        #   in Loop: Header=BB9_146 Depth=3
	xorl	%eax, %eax
	movl	-64(%rbp), %ecx
	movq	img, %rdx
	addq	$8504, %rdx             # imm = 0x2138
	movslq	-56(%rbp), %rsi
	shlq	$9, %rsi
	addq	%rsi, %rdx
	movl	-36(%rbp), %esi
	addl	-12(%rbp), %esi
	movslq	%esi, %rsi
	shlq	$5, %rsi
	addq	%rsi, %rdx
	movl	-40(%rbp), %esi
	addl	-16(%rbp), %esi
	movslq	%esi, %rsi
	movzwl	(%rdx,%rsi,2), %edx
	addl	%edx, %ecx
	cmpl	%ecx, %eax
	jle	.LBB9_154
# %bb.153:                              # %cond.true598
                                        #   in Loop: Header=BB9_146 Depth=3
	xorl	%eax, %eax
	jmp	.LBB9_155
.LBB9_154:                              # %cond.false599
                                        #   in Loop: Header=BB9_146 Depth=3
	movl	-64(%rbp), %eax
	movq	img, %rcx
	addq	$8504, %rcx             # imm = 0x2138
	movslq	-56(%rbp), %rdx
	shlq	$9, %rdx
	addq	%rdx, %rcx
	movl	-36(%rbp), %edx
	addl	-12(%rbp), %edx
	movslq	%edx, %rdx
	shlq	$5, %rdx
	addq	%rdx, %rcx
	movl	-40(%rbp), %edx
	addl	-16(%rbp), %edx
	movslq	%edx, %rdx
	movzwl	(%rcx,%rdx,2), %ecx
	addl	%ecx, %eax
.LBB9_155:                              # %cond.end612
                                        #   in Loop: Header=BB9_146 Depth=3
.LBB9_156:                              # %cond.end614
                                        #   in Loop: Header=BB9_146 Depth=3
	xorl	%ecx, %ecx
	movq	enc_picture, %rdx
	movq	6464(%rdx), %rdx
	movq	(%rdx), %rdx
	movl	-44(%rbp), %esi
	addl	-16(%rbp), %esi
	movslq	%esi, %rsi
	movq	(%rdx,%rsi,8), %rdx
	movl	-68(%rbp), %esi
	addl	-12(%rbp), %esi
	movslq	%esi, %rsi
	movw	%ax, (%rdx,%rsi,2)
	movq	img, %rax
	movl	72684(%rax), %eax
	movl	-72(%rbp), %edx
	movq	img, %rsi
	addq	$7352, %rsi             # imm = 0x1CB8
	movslq	-48(%rbp), %rdi
	shlq	$7, %rdi
	addq	%rdi, %rsi
	movslq	-16(%rbp), %rdi
	shlq	$4, %rdi
	addq	%rdi, %rsi
	movslq	-12(%rbp), %rdi
	movzwl	(%rsi,%rdi,2), %esi
	addl	%esi, %edx
	cmpl	%edx, %ecx
	jle	.LBB9_158
# %bb.157:                              # %cond.true635
                                        #   in Loop: Header=BB9_146 Depth=3
	xorl	%ecx, %ecx
	jmp	.LBB9_159
.LBB9_158:                              # %cond.false636
                                        #   in Loop: Header=BB9_146 Depth=3
	movl	-72(%rbp), %ecx
	movq	img, %rdx
	addq	$7352, %rdx             # imm = 0x1CB8
	movslq	-48(%rbp), %rsi
	shlq	$7, %rsi
	addq	%rsi, %rdx
	movslq	-16(%rbp), %rsi
	shlq	$4, %rsi
	addq	%rsi, %rdx
	movslq	-12(%rbp), %rsi
	movzwl	(%rdx,%rsi,2), %edx
	addl	%edx, %ecx
.LBB9_159:                              # %cond.end646
                                        #   in Loop: Header=BB9_146 Depth=3
	cmpl	%ecx, %eax
	jge	.LBB9_161
# %bb.160:                              # %cond.true650
                                        #   in Loop: Header=BB9_146 Depth=3
	movq	img, %rax
	movl	72684(%rax), %eax
	jmp	.LBB9_165
.LBB9_161:                              # %cond.false652
                                        #   in Loop: Header=BB9_146 Depth=3
	xorl	%eax, %eax
	movl	-72(%rbp), %ecx
	movq	img, %rdx
	addq	$7352, %rdx             # imm = 0x1CB8
	movslq	-48(%rbp), %rsi
	shlq	$7, %rsi
	addq	%rsi, %rdx
	movslq	-16(%rbp), %rsi
	shlq	$4, %rsi
	addq	%rsi, %rdx
	movslq	-12(%rbp), %rsi
	movzwl	(%rdx,%rsi,2), %edx
	addl	%edx, %ecx
	cmpl	%ecx, %eax
	jle	.LBB9_163
# %bb.162:                              # %cond.true664
                                        #   in Loop: Header=BB9_146 Depth=3
	xorl	%eax, %eax
	jmp	.LBB9_164
.LBB9_163:                              # %cond.false665
                                        #   in Loop: Header=BB9_146 Depth=3
	movl	-72(%rbp), %eax
	movq	img, %rcx
	addq	$7352, %rcx             # imm = 0x1CB8
	movslq	-48(%rbp), %rdx
	shlq	$7, %rdx
	addq	%rdx, %rcx
	movslq	-16(%rbp), %rdx
	shlq	$4, %rdx
	addq	%rdx, %rcx
	movslq	-12(%rbp), %rdx
	movzwl	(%rcx,%rdx,2), %ecx
	addl	%ecx, %eax
.LBB9_164:                              # %cond.end675
                                        #   in Loop: Header=BB9_146 Depth=3
.LBB9_165:                              # %cond.end677
                                        #   in Loop: Header=BB9_146 Depth=3
	xorl	%ecx, %ecx
	movq	enc_picture, %rdx
	movq	6424(%rdx), %rdx
	movl	-44(%rbp), %esi
	addl	-16(%rbp), %esi
	movslq	%esi, %rsi
	movq	(%rdx,%rsi,8), %rdx
	movl	-68(%rbp), %esi
	addl	-12(%rbp), %esi
	movslq	%esi, %rsi
	movw	%ax, (%rdx,%rsi,2)
	movq	img, %rax
	movl	72688(%rax), %eax
	movl	-80(%rbp), %edx
	movq	img, %rsi
	addq	$8504, %rsi             # imm = 0x2138
	addq	$2048, %rsi             # imm = 0x800
	movslq	-56(%rbp), %rdi
	shlq	$9, %rdi
	addq	%rdi, %rsi
	movl	-36(%rbp), %edi
	addl	-12(%rbp), %edi
	movslq	%edi, %rdi
	shlq	$5, %rdi
	addq	%rdi, %rsi
	movl	-40(%rbp), %edi
	addl	-16(%rbp), %edi
	movslq	%edi, %rdi
	movzwl	(%rsi,%rdi,2), %esi
	addl	%esi, %edx
	cmpl	%edx, %ecx
	jle	.LBB9_167
# %bb.166:                              # %cond.true702
                                        #   in Loop: Header=BB9_146 Depth=3
	xorl	%ecx, %ecx
	jmp	.LBB9_168
.LBB9_167:                              # %cond.false703
                                        #   in Loop: Header=BB9_146 Depth=3
	movl	-80(%rbp), %ecx
	movq	img, %rdx
	addq	$8504, %rdx             # imm = 0x2138
	addq	$2048, %rdx             # imm = 0x800
	movslq	-56(%rbp), %rsi
	shlq	$9, %rsi
	addq	%rsi, %rdx
	movl	-36(%rbp), %esi
	addl	-12(%rbp), %esi
	movslq	%esi, %rsi
	shlq	$5, %rsi
	addq	%rsi, %rdx
	movl	-40(%rbp), %esi
	addl	-16(%rbp), %esi
	movslq	%esi, %rsi
	movzwl	(%rdx,%rsi,2), %edx
	addl	%edx, %ecx
.LBB9_168:                              # %cond.end716
                                        #   in Loop: Header=BB9_146 Depth=3
	cmpl	%ecx, %eax
	jge	.LBB9_170
# %bb.169:                              # %cond.true720
                                        #   in Loop: Header=BB9_146 Depth=3
	movq	img, %rax
	movl	72688(%rax), %eax
	jmp	.LBB9_174
.LBB9_170:                              # %cond.false722
                                        #   in Loop: Header=BB9_146 Depth=3
	xorl	%eax, %eax
	movl	-80(%rbp), %ecx
	movq	img, %rdx
	addq	$8504, %rdx             # imm = 0x2138
	addq	$2048, %rdx             # imm = 0x800
	movslq	-56(%rbp), %rsi
	shlq	$9, %rsi
	addq	%rsi, %rdx
	movl	-36(%rbp), %esi
	addl	-12(%rbp), %esi
	movslq	%esi, %rsi
	shlq	$5, %rsi
	addq	%rsi, %rdx
	movl	-40(%rbp), %esi
	addl	-16(%rbp), %esi
	movslq	%esi, %rsi
	movzwl	(%rdx,%rsi,2), %edx
	addl	%edx, %ecx
	cmpl	%ecx, %eax
	jle	.LBB9_172
# %bb.171:                              # %cond.true737
                                        #   in Loop: Header=BB9_146 Depth=3
	xorl	%eax, %eax
	jmp	.LBB9_173
.LBB9_172:                              # %cond.false738
                                        #   in Loop: Header=BB9_146 Depth=3
	movl	-80(%rbp), %eax
	movq	img, %rcx
	addq	$8504, %rcx             # imm = 0x2138
	addq	$2048, %rcx             # imm = 0x800
	movslq	-56(%rbp), %rdx
	shlq	$9, %rdx
	addq	%rdx, %rcx
	movl	-36(%rbp), %edx
	addl	-12(%rbp), %edx
	movslq	%edx, %rdx
	shlq	$5, %rdx
	addq	%rdx, %rcx
	movl	-40(%rbp), %edx
	addl	-16(%rbp), %edx
	movslq	%edx, %rdx
	movzwl	(%rcx,%rdx,2), %ecx
	addl	%ecx, %eax
.LBB9_173:                              # %cond.end751
                                        #   in Loop: Header=BB9_146 Depth=3
.LBB9_174:                              # %cond.end753
                                        #   in Loop: Header=BB9_146 Depth=3
	movq	enc_picture, %rcx
	movq	6464(%rcx), %rcx
	movq	8(%rcx), %rcx
	movl	-44(%rbp), %edx
	addl	-16(%rbp), %edx
	movslq	%edx, %rdx
	movq	(%rcx,%rdx,8), %rcx
	movl	-68(%rbp), %edx
	addl	-12(%rbp), %edx
	movslq	%edx, %rdx
	movw	%ax, (%rcx,%rdx,2)
# %bb.175:                              # %for.inc764
                                        #   in Loop: Header=BB9_146 Depth=3
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB9_146
.LBB9_176:                              # %for.end766
                                        #   in Loop: Header=BB9_144 Depth=2
	jmp	.LBB9_177
.LBB9_177:                              # %for.inc767
                                        #   in Loop: Header=BB9_144 Depth=2
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB9_144
.LBB9_178:                              # %for.end769
                                        #   in Loop: Header=BB9_34 Depth=1
	movl	$0, -100(%rbp)
	movl	$0, -24(%rbp)
.LBB9_179:                              # %for.cond770
                                        #   Parent Loop BB9_34 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB9_181 Depth 3
	cmpl	$8, -24(%rbp)
	jge	.LBB9_186
# %bb.180:                              # %for.body773
                                        #   in Loop: Header=BB9_179 Depth=2
	movl	-68(%rbp), %eax
	movl	%eax, -28(%rbp)
.LBB9_181:                              # %for.cond774
                                        #   Parent Loop BB9_34 Depth=1
                                        #     Parent Loop BB9_179 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-28(%rbp), %eax
	movl	-68(%rbp), %ecx
	addl	$8, %ecx
	cmpl	%ecx, %eax
	jge	.LBB9_184
# %bb.182:                              # %for.body778
                                        #   in Loop: Header=BB9_181 Depth=3
	movq	imgY_org, %rax
	movl	-44(%rbp), %ecx
	addl	-24(%rbp), %ecx
	movslq	%ecx, %rcx
	movq	(%rax,%rcx,8), %rax
	movslq	-28(%rbp), %rcx
	movzwl	(%rax,%rcx,2), %eax
	movq	enc_picture, %rcx
	movq	6424(%rcx), %rcx
	movl	-44(%rbp), %edx
	addl	-24(%rbp), %edx
	movslq	%edx, %rdx
	movq	(%rcx,%rdx,8), %rcx
	movslq	-28(%rbp), %rdx
	movzwl	(%rcx,%rdx,2), %ecx
	subl	%ecx, %eax
	movq	imgY_org, %rcx
	movl	-44(%rbp), %edx
	addl	-24(%rbp), %edx
	movslq	%edx, %rdx
	movq	(%rcx,%rdx,8), %rcx
	movslq	-28(%rbp), %rdx
	movzwl	(%rcx,%rdx,2), %ecx
	movq	enc_picture, %rdx
	movq	6424(%rdx), %rdx
	movl	-44(%rbp), %esi
	addl	-24(%rbp), %esi
	movslq	%esi, %rsi
	movq	(%rdx,%rsi,8), %rdx
	movslq	-28(%rbp), %rsi
	movzwl	(%rdx,%rsi,2), %edx
	subl	%edx, %ecx
	imull	%ecx, %eax
	addl	-100(%rbp), %eax
	movl	%eax, -100(%rbp)
	movq	imgUV_org, %rax
	movq	(%rax), %rax
	movl	-44(%rbp), %ecx
	addl	-24(%rbp), %ecx
	movslq	%ecx, %rcx
	movq	(%rax,%rcx,8), %rax
	movslq	-28(%rbp), %rcx
	movzwl	(%rax,%rcx,2), %eax
	movq	enc_picture, %rcx
	movq	6464(%rcx), %rcx
	movq	(%rcx), %rcx
	movl	-44(%rbp), %edx
	addl	-24(%rbp), %edx
	movslq	%edx, %rdx
	movq	(%rcx,%rdx,8), %rcx
	movslq	-28(%rbp), %rdx
	movzwl	(%rcx,%rdx,2), %ecx
	subl	%ecx, %eax
	movq	imgUV_org, %rcx
	movq	(%rcx), %rcx
	movl	-44(%rbp), %edx
	addl	-24(%rbp), %edx
	movslq	%edx, %rdx
	movq	(%rcx,%rdx,8), %rcx
	movslq	-28(%rbp), %rdx
	movzwl	(%rcx,%rdx,2), %ecx
	movq	enc_picture, %rdx
	movq	6464(%rdx), %rdx
	movq	(%rdx), %rdx
	movl	-44(%rbp), %esi
	addl	-24(%rbp), %esi
	movslq	%esi, %rsi
	movq	(%rdx,%rsi,8), %rdx
	movslq	-28(%rbp), %rsi
	movzwl	(%rdx,%rsi,2), %edx
	subl	%edx, %ecx
	imull	%ecx, %eax
	addl	-100(%rbp), %eax
	movl	%eax, -100(%rbp)
	movq	imgUV_org, %rax
	movq	8(%rax), %rax
	movl	-44(%rbp), %ecx
	addl	-24(%rbp), %ecx
	movslq	%ecx, %rcx
	movq	(%rax,%rcx,8), %rax
	movslq	-28(%rbp), %rcx
	movzwl	(%rax,%rcx,2), %eax
	movq	enc_picture, %rcx
	movq	6464(%rcx), %rcx
	movq	8(%rcx), %rcx
	movl	-44(%rbp), %edx
	addl	-24(%rbp), %edx
	movslq	%edx, %rdx
	movq	(%rcx,%rdx,8), %rcx
	movslq	-28(%rbp), %rdx
	movzwl	(%rcx,%rdx,2), %ecx
	subl	%ecx, %eax
	movq	imgUV_org, %rcx
	movq	8(%rcx), %rcx
	movl	-44(%rbp), %edx
	addl	-24(%rbp), %edx
	movslq	%edx, %rdx
	movq	(%rcx,%rdx,8), %rcx
	movslq	-28(%rbp), %rdx
	movzwl	(%rcx,%rdx,2), %ecx
	movq	enc_picture, %rdx
	movq	6464(%rdx), %rdx
	movq	8(%rdx), %rdx
	movl	-44(%rbp), %esi
	addl	-24(%rbp), %esi
	movslq	%esi, %rsi
	movq	(%rdx,%rsi,8), %rdx
	movslq	-28(%rbp), %rsi
	movzwl	(%rdx,%rsi,2), %edx
	subl	%edx, %ecx
	imull	%ecx, %eax
	addl	-100(%rbp), %eax
	movl	%eax, -100(%rbp)
# %bb.183:                              # %for.inc877
                                        #   in Loop: Header=BB9_181 Depth=3
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB9_181
.LBB9_184:                              # %for.end879
                                        #   in Loop: Header=BB9_179 Depth=2
	jmp	.LBB9_185
.LBB9_185:                              # %for.inc880
                                        #   in Loop: Header=BB9_179 Depth=2
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB9_179
.LBB9_186:                              # %for.end882
                                        #   in Loop: Header=BB9_34 Depth=1
	vcvtsi2sdl	-100(%rbp), %xmm0, %xmm0
	vmovsd	-152(%rbp), %xmm1       # xmm1 = mem[0],zero
	vcvtsi2sdl	-108(%rbp), %xmm0, %xmm2
	vmulsd	%xmm2, %xmm1, %xmm1
	vaddsd	%xmm1, %xmm0, %xmm0
	vmovsd	%xmm0, -144(%rbp)
	vmovsd	-144(%rbp), %xmm0       # xmm0 = mem[0],zero
	vmovsd	-136(%rbp), %xmm1       # xmm1 = mem[0],zero
	vucomisd	%xmm0, %xmm1
	jbe	.LBB9_240
# %bb.187:                              # %if.then889
                                        #   in Loop: Header=BB9_34 Depth=1
	movl	$0, -16(%rbp)
.LBB9_188:                              # %for.cond890
                                        #   Parent Loop BB9_34 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB9_190 Depth 3
                                        #         Child Loop BB9_192 Depth 4
	cmpl	$2, -16(%rbp)
	jge	.LBB9_199
# %bb.189:                              # %for.body893
                                        #   in Loop: Header=BB9_188 Depth=2
	movl	$0, -12(%rbp)
.LBB9_190:                              # %for.cond894
                                        #   Parent Loop BB9_34 Depth=1
                                        #     Parent Loop BB9_188 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB9_192 Depth 4
	cmpl	$65, -12(%rbp)
	jge	.LBB9_197
# %bb.191:                              # %for.body897
                                        #   in Loop: Header=BB9_190 Depth=3
	movl	$0, -52(%rbp)
.LBB9_192:                              # %for.cond898
                                        #   Parent Loop BB9_34 Depth=1
                                        #     Parent Loop BB9_188 Depth=2
                                        #       Parent Loop BB9_190 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	cmpl	$4, -52(%rbp)
	jge	.LBB9_195
# %bb.193:                              # %for.body901
                                        #   in Loop: Header=BB9_192 Depth=4
	movq	img, %rax
	movq	14136(%rax), %rax
	movslq	-32(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movslq	-52(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movslq	-16(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movslq	-12(%rbp), %rcx
	movl	(%rax,%rcx,4), %eax
	movq	cofAC8x8, %rcx
	movslq	-32(%rbp), %rdx
	movq	(%rcx,%rdx,8), %rcx
	movslq	-52(%rbp), %rdx
	movq	(%rcx,%rdx,8), %rcx
	movslq	-16(%rbp), %rdx
	movq	(%rcx,%rdx,8), %rcx
	movslq	-12(%rbp), %rdx
	movl	%eax, (%rcx,%rdx,4)
# %bb.194:                              # %for.inc919
                                        #   in Loop: Header=BB9_192 Depth=4
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB9_192
.LBB9_195:                              # %for.end921
                                        #   in Loop: Header=BB9_190 Depth=3
	jmp	.LBB9_196
.LBB9_196:                              # %for.inc922
                                        #   in Loop: Header=BB9_190 Depth=3
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB9_190
.LBB9_197:                              # %for.end924
                                        #   in Loop: Header=BB9_188 Depth=2
	jmp	.LBB9_198
.LBB9_198:                              # %for.inc925
                                        #   in Loop: Header=BB9_188 Depth=2
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB9_188
.LBB9_199:                              # %for.end927
                                        #   in Loop: Header=BB9_34 Depth=1
	movl	$0, -20(%rbp)
.LBB9_200:                              # %for.cond928
                                        #   Parent Loop BB9_34 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB9_202 Depth 3
                                        #         Child Loop BB9_204 Depth 4
                                        #       Child Loop BB9_210 Depth 3
                                        #         Child Loop BB9_212 Depth 4
                                        #       Child Loop BB9_218 Depth 3
                                        #         Child Loop BB9_220 Depth 4
                                        #           Child Loop BB9_222 Depth 5
	cmpl	$4, -20(%rbp)
	jge	.LBB9_231
# %bb.201:                              # %for.body931
                                        #   in Loop: Header=BB9_200 Depth=2
	movl	-20(%rbp), %eax
	cltd
	movl	$2, %ecx
	idivl	%ecx
	shll	$2, %edx
	movl	%edx, -84(%rbp)
	movl	-20(%rbp), %eax
	cltd
	idivl	%ecx
	shll	$2, %eax
	movl	%eax, -76(%rbp)
	movl	$0, -16(%rbp)
.LBB9_202:                              # %for.cond936
                                        #   Parent Loop BB9_34 Depth=1
                                        #     Parent Loop BB9_200 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB9_204 Depth 4
	cmpl	$2, -16(%rbp)
	jge	.LBB9_209
# %bb.203:                              # %for.body939
                                        #   in Loop: Header=BB9_202 Depth=3
	movl	$0, -12(%rbp)
.LBB9_204:                              # %for.cond940
                                        #   Parent Loop BB9_34 Depth=1
                                        #     Parent Loop BB9_200 Depth=2
                                        #       Parent Loop BB9_202 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	cmpl	$18, -12(%rbp)
	jge	.LBB9_207
# %bb.205:                              # %for.body943
                                        #   in Loop: Header=BB9_204 Depth=4
	movq	img, %rax
	movq	14136(%rax), %rax
	movl	-32(%rbp), %ecx
	addl	$4, %ecx
	movslq	%ecx, %rcx
	movq	(%rax,%rcx,8), %rax
	movslq	-20(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movslq	-16(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movslq	-12(%rbp), %rcx
	movl	(%rax,%rcx,4), %eax
	movslq	-20(%rbp), %rcx
	imulq	$144, %rcx, %rcx
	movabsq	$cofAC8x8_chroma, %rdx
	addq	%rcx, %rdx
	movslq	-16(%rbp), %rcx
	imulq	$72, %rcx, %rcx
	addq	%rcx, %rdx
	movslq	-12(%rbp), %rcx
	movl	%eax, (%rdx,%rcx,4)
# %bb.206:                              # %for.inc960
                                        #   in Loop: Header=BB9_204 Depth=4
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB9_204
.LBB9_207:                              # %for.end962
                                        #   in Loop: Header=BB9_202 Depth=3
	jmp	.LBB9_208
.LBB9_208:                              # %for.inc963
                                        #   in Loop: Header=BB9_202 Depth=3
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB9_202
.LBB9_209:                              # %for.end965
                                        #   in Loop: Header=BB9_200 Depth=2
	movl	$0, -16(%rbp)
.LBB9_210:                              # %for.cond966
                                        #   Parent Loop BB9_34 Depth=1
                                        #     Parent Loop BB9_200 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB9_212 Depth 4
	cmpl	$2, -16(%rbp)
	jge	.LBB9_217
# %bb.211:                              # %for.body969
                                        #   in Loop: Header=BB9_210 Depth=3
	movl	$0, -12(%rbp)
.LBB9_212:                              # %for.cond970
                                        #   Parent Loop BB9_34 Depth=1
                                        #     Parent Loop BB9_200 Depth=2
                                        #       Parent Loop BB9_210 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	cmpl	$18, -12(%rbp)
	jge	.LBB9_215
# %bb.213:                              # %for.body973
                                        #   in Loop: Header=BB9_212 Depth=4
	movabsq	$cofAC8x8_chroma, %rax
	addq	$576, %rax              # imm = 0x240
	movq	img, %rcx
	movq	14136(%rcx), %rcx
	movl	-32(%rbp), %edx
	addl	$8, %edx
	movslq	%edx, %rdx
	movq	(%rcx,%rdx,8), %rcx
	movslq	-20(%rbp), %rdx
	movq	(%rcx,%rdx,8), %rcx
	movslq	-16(%rbp), %rdx
	movq	(%rcx,%rdx,8), %rcx
	movslq	-12(%rbp), %rdx
	movl	(%rcx,%rdx,4), %ecx
	movslq	-20(%rbp), %rdx
	imulq	$144, %rdx, %rdx
	addq	%rdx, %rax
	movslq	-16(%rbp), %rdx
	imulq	$72, %rdx, %rdx
	addq	%rdx, %rax
	movslq	-12(%rbp), %rdx
	movl	%ecx, (%rax,%rdx,4)
# %bb.214:                              # %for.inc990
                                        #   in Loop: Header=BB9_212 Depth=4
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB9_212
.LBB9_215:                              # %for.end992
                                        #   in Loop: Header=BB9_210 Depth=3
	jmp	.LBB9_216
.LBB9_216:                              # %for.inc993
                                        #   in Loop: Header=BB9_210 Depth=3
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB9_210
.LBB9_217:                              # %for.end995
                                        #   in Loop: Header=BB9_200 Depth=2
	movl	$0, -12(%rbp)
.LBB9_218:                              # %for.cond996
                                        #   Parent Loop BB9_34 Depth=1
                                        #     Parent Loop BB9_200 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB9_220 Depth 4
                                        #           Child Loop BB9_222 Depth 5
	cmpl	$2, -12(%rbp)
	jge	.LBB9_229
# %bb.219:                              # %for.body999
                                        #   in Loop: Header=BB9_218 Depth=3
	movslq	-12(%rbp), %rax
	shlq	$6, %rax
	movabsq	$dc_level_temp, %rdi
	addq	%rax, %rdi
	movl	-32(%rbp), %eax
	cltd
	movl	$2, %esi
	idivl	%esi
	movl	%edx, %ecx
	shll	$1, %ecx
	movl	-20(%rbp), %eax
	cltd
	idivl	%esi
	addl	%edx, %ecx
	movslq	%ecx, %rax
	shlq	$4, %rax
	addq	%rax, %rdi
	movl	-32(%rbp), %eax
	cltd
	idivl	%esi
	movl	%eax, %ecx
	shll	$1, %ecx
	movl	-20(%rbp), %eax
	cltd
	idivl	%esi
	addl	%eax, %ecx
	movslq	%ecx, %rax
	movl	(%rdi,%rax,4), %edi
	movslq	-12(%rbp), %rax
	shlq	$6, %rax
	movabsq	$dc_level, %rbx
	addq	%rax, %rbx
	movl	-32(%rbp), %eax
	cltd
	idivl	%esi
	movl	%edx, %ecx
	shll	$1, %ecx
	movl	-20(%rbp), %eax
	cltd
	idivl	%esi
	addl	%edx, %ecx
	movslq	%ecx, %rax
	shlq	$4, %rax
	addq	%rax, %rbx
	movl	-32(%rbp), %eax
	cltd
	idivl	%esi
	movl	%eax, %ecx
	shll	$1, %ecx
	movl	-20(%rbp), %eax
	cltd
	idivl	%esi
	addl	%eax, %ecx
	movslq	%ecx, %rax
	movl	%edi, (%rbx,%rax,4)
	movslq	-12(%rbp), %rax
	shlq	$6, %rax
	movabsq	$cbp_chroma_block_temp, %rdi
	addq	%rax, %rdi
	movl	-32(%rbp), %eax
	cltd
	idivl	%esi
	movl	%edx, %ecx
	shll	$1, %ecx
	movl	-20(%rbp), %eax
	cltd
	idivl	%esi
	addl	%edx, %ecx
	movslq	%ecx, %rax
	shlq	$4, %rax
	addq	%rax, %rdi
	movl	-32(%rbp), %eax
	cltd
	idivl	%esi
	movl	%eax, %ecx
	shll	$1, %ecx
	movl	-20(%rbp), %eax
	cltd
	idivl	%esi
	addl	%eax, %ecx
	movslq	%ecx, %rax
	movl	(%rdi,%rax,4), %edi
	movslq	-12(%rbp), %rax
	shlq	$6, %rax
	movabsq	$cbp_chroma_block, %rbx
	addq	%rax, %rbx
	movl	-32(%rbp), %eax
	cltd
	idivl	%esi
	movl	%edx, %ecx
	shll	$1, %ecx
	movl	-20(%rbp), %eax
	cltd
	idivl	%esi
	addl	%edx, %ecx
	movslq	%ecx, %rax
	shlq	$4, %rax
	addq	%rax, %rbx
	movl	-32(%rbp), %eax
	cltd
	idivl	%esi
	movl	%eax, %ecx
	shll	$1, %ecx
	movl	-20(%rbp), %eax
	cltd
	idivl	%esi
	addl	%eax, %ecx
	movslq	%ecx, %rax
	movl	%edi, (%rbx,%rax,4)
	movl	$0, -24(%rbp)
.LBB9_220:                              # %for.cond1056
                                        #   Parent Loop BB9_34 Depth=1
                                        #     Parent Loop BB9_200 Depth=2
                                        #       Parent Loop BB9_218 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB9_222 Depth 5
	cmpl	$4, -24(%rbp)
	jge	.LBB9_227
# %bb.221:                              # %for.body1059
                                        #   in Loop: Header=BB9_220 Depth=4
	movl	$0, -28(%rbp)
.LBB9_222:                              # %for.cond1060
                                        #   Parent Loop BB9_34 Depth=1
                                        #     Parent Loop BB9_200 Depth=2
                                        #       Parent Loop BB9_218 Depth=3
                                        #         Parent Loop BB9_220 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	cmpl	$4, -28(%rbp)
	jge	.LBB9_225
# %bb.223:                              # %for.body1063
                                        #   in Loop: Header=BB9_222 Depth=5
	movq	enc_picture, %rax
	movq	6464(%rax), %rax
	movslq	-12(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movl	-44(%rbp), %ecx
	addl	-24(%rbp), %ecx
	addl	-76(%rbp), %ecx
	movslq	%ecx, %rcx
	movq	(%rax,%rcx,8), %rax
	movl	-68(%rbp), %ecx
	addl	-28(%rbp), %ecx
	addl	-84(%rbp), %ecx
	movslq	%ecx, %rcx
	movzwl	(%rax,%rcx,2), %eax
	movslq	-12(%rbp), %rcx
	shlq	$8, %rcx
	leaq	-1152(%rbp), %rdx
	addq	%rcx, %rdx
	movslq	-20(%rbp), %rcx
	shlq	$6, %rcx
	addq	%rcx, %rdx
	movslq	-24(%rbp), %rcx
	shlq	$4, %rcx
	addq	%rcx, %rdx
	movslq	-28(%rbp), %rcx
	movl	%eax, (%rdx,%rcx,4)
# %bb.224:                              # %for.inc1084
                                        #   in Loop: Header=BB9_222 Depth=5
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB9_222
.LBB9_225:                              # %for.end1086
                                        #   in Loop: Header=BB9_220 Depth=4
	jmp	.LBB9_226
.LBB9_226:                              # %for.inc1087
                                        #   in Loop: Header=BB9_220 Depth=4
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB9_220
.LBB9_227:                              # %for.end1089
                                        #   in Loop: Header=BB9_218 Depth=3
	jmp	.LBB9_228
.LBB9_228:                              # %for.inc1090
                                        #   in Loop: Header=BB9_218 Depth=3
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB9_218
.LBB9_229:                              # %for.end1092
                                        #   in Loop: Header=BB9_200 Depth=2
	jmp	.LBB9_230
.LBB9_230:                              # %for.inc1093
                                        #   in Loop: Header=BB9_200 Depth=2
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB9_200
.LBB9_231:                              # %for.end1095
                                        #   in Loop: Header=BB9_34 Depth=1
	movl	$0, -24(%rbp)
.LBB9_232:                              # %for.cond1096
                                        #   Parent Loop BB9_34 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB9_234 Depth 3
	cmpl	$8, -24(%rbp)
	jge	.LBB9_239
# %bb.233:                              # %for.body1099
                                        #   in Loop: Header=BB9_232 Depth=2
	movl	$0, -28(%rbp)
.LBB9_234:                              # %for.cond1100
                                        #   Parent Loop BB9_34 Depth=1
                                        #     Parent Loop BB9_232 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	cmpl	$8, -28(%rbp)
	jge	.LBB9_237
# %bb.235:                              # %for.body1103
                                        #   in Loop: Header=BB9_234 Depth=3
	movq	enc_picture, %rax
	movq	6424(%rax), %rax
	movl	-44(%rbp), %ecx
	addl	-24(%rbp), %ecx
	movslq	%ecx, %rcx
	movq	(%rax,%rcx,8), %rax
	movl	-68(%rbp), %ecx
	addl	-28(%rbp), %ecx
	movslq	%ecx, %rcx
	movw	(%rax,%rcx,2), %ax
	movslq	-24(%rbp), %rcx
	shlq	$4, %rcx
	leaq	-384(%rbp), %rdx
	addq	%rcx, %rdx
	movslq	-28(%rbp), %rcx
	movw	%ax, (%rdx,%rcx,2)
# %bb.236:                              # %for.inc1115
                                        #   in Loop: Header=BB9_234 Depth=3
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB9_234
.LBB9_237:                              # %for.end1117
                                        #   in Loop: Header=BB9_232 Depth=2
	jmp	.LBB9_238
.LBB9_238:                              # %for.inc1118
                                        #   in Loop: Header=BB9_232 Depth=2
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB9_232
.LBB9_239:                              # %for.end1120
                                        #   in Loop: Header=BB9_34 Depth=1
	movl	-128(%rbp), %eax
	movl	%eax, -112(%rbp)
	vmovsd	-144(%rbp), %xmm0       # xmm0 = mem[0],zero
	vmovsd	%xmm0, -136(%rbp)
	movl	-48(%rbp), %eax
	movl	%eax, -60(%rbp)
.LBB9_240:                              # %if.end1121
                                        #   in Loop: Header=BB9_34 Depth=1
	jmp	.LBB9_241
.LBB9_241:                              # %if.end1122
                                        #   in Loop: Header=BB9_34 Depth=1
	jmp	.LBB9_242
.LBB9_242:                              # %if.end1123
                                        #   in Loop: Header=BB9_34 Depth=1
	jmp	.LBB9_243
.LBB9_243:                              # %if.end1124
                                        #   in Loop: Header=BB9_34 Depth=1
	jmp	.LBB9_244
.LBB9_244:                              # %for.inc1125
                                        #   in Loop: Header=BB9_34 Depth=1
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB9_34
.LBB9_245:                              # %for.end1127
	movl	-60(%rbp), %eax
	movq	img, %rcx
	movq	112(%rcx), %rcx
	movslq	-176(%rbp), %rdx
	movq	(%rcx,%rdx,8), %rcx
	movslq	-188(%rbp), %rdx
	movl	%eax, (%rcx,%rdx,4)
	movl	-104(%rbp), %eax
	cmpl	-60(%rbp), %eax
	jne	.LBB9_247
# %bb.246:                              # %cond.true1135
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	jmp	.LBB9_251
.LBB9_247:                              # %cond.false1136
	movl	-60(%rbp), %eax
	cmpl	-104(%rbp), %eax
	jge	.LBB9_249
# %bb.248:                              # %cond.true1139
	movl	-60(%rbp), %eax
	jmp	.LBB9_250
.LBB9_249:                              # %cond.false1140
	movl	-60(%rbp), %eax
	subl	$1, %eax
.LBB9_250:                              # %cond.end1142
.LBB9_251:                              # %cond.end1144
	movq	img, %rcx
	movq	14168(%rcx), %rcx
	movq	img, %rdx
	movslq	12(%rdx), %rdx
	imulq	$632, %rdx, %rdx        # imm = 0x278
	addq	%rdx, %rcx
	movl	-32(%rbp), %edx
	shll	$2, %edx
	movslq	%edx, %rdx
	movl	%eax, 396(%rcx,%rdx,4)
	movl	$0, -16(%rbp)
.LBB9_252:                              # %for.cond1153
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_254 Depth 2
	cmpl	$2, -16(%rbp)
	jge	.LBB9_259
# %bb.253:                              # %for.body1156
                                        #   in Loop: Header=BB9_252 Depth=1
	movl	$0, -12(%rbp)
.LBB9_254:                              # %for.cond1157
                                        #   Parent Loop BB9_252 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$2, -12(%rbp)
	jge	.LBB9_257
# %bb.255:                              # %for.body1160
                                        #   in Loop: Header=BB9_254 Depth=2
	movl	-60(%rbp), %ecx
	movq	img, %rax
	movq	112(%rax), %rsi
	movl	-12(%rbp), %edi
	movq	img, %rax
	movl	136(%rax), %eax
	shll	$2, %eax
	addl	%eax, %edi
	movl	-32(%rbp), %eax
	cltd
	movl	$2, %ebx
	idivl	%ebx
	shll	$1, %edx
	addl	%edx, %edi
	movslq	%edi, %rax
	movq	(%rsi,%rax,8), %rsi
	movl	-16(%rbp), %edi
	movq	img, %rax
	movl	140(%rax), %eax
	shll	$2, %eax
	addl	%eax, %edi
	movl	-32(%rbp), %eax
	cltd
	idivl	%ebx
	shll	$1, %eax
	addl	%eax, %edi
	movslq	%edi, %rax
	movl	%ecx, (%rsi,%rax,4)
# %bb.256:                              # %for.inc1176
                                        #   in Loop: Header=BB9_254 Depth=2
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB9_254
.LBB9_257:                              # %for.end1178
                                        #   in Loop: Header=BB9_252 Depth=1
	jmp	.LBB9_258
.LBB9_258:                              # %for.inc1179
                                        #   in Loop: Header=BB9_252 Depth=1
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB9_252
.LBB9_259:                              # %for.end1181
	movq	input, %rax
	cmpl	$0, 2464(%rax)
	jne	.LBB9_359
# %bb.260:                              # %if.then1184
	movq	img, %rax
	cmpl	$0, 72724(%rax)
	jne	.LBB9_270
# %bb.261:                              # %if.then1187
	movl	$0, -16(%rbp)
.LBB9_262:                              # %for.cond1188
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_264 Depth 2
	cmpl	$8, -16(%rbp)
	jge	.LBB9_269
# %bb.263:                              # %for.body1191
                                        #   in Loop: Header=BB9_262 Depth=1
	movl	$0, -12(%rbp)
.LBB9_264:                              # %for.cond1192
                                        #   Parent Loop BB9_262 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$8, -12(%rbp)
	jge	.LBB9_267
# %bb.265:                              # %for.body1195
                                        #   in Loop: Header=BB9_264 Depth=2
	movq	img, %rax
	addq	$7352, %rax             # imm = 0x1CB8
	movslq	-60(%rbp), %rcx
	shlq	$7, %rcx
	addq	%rcx, %rax
	movslq	-16(%rbp), %rcx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movslq	-12(%rbp), %rcx
	movw	(%rax,%rcx,2), %ax
	movq	img, %rcx
	addq	$12600, %rcx            # imm = 0x3138
	movl	-36(%rbp), %edx
	addl	-12(%rbp), %edx
	movslq	%edx, %rdx
	shlq	$5, %rdx
	addq	%rdx, %rcx
	movl	-40(%rbp), %edx
	addl	-16(%rbp), %edx
	movslq	%edx, %rdx
	movw	%ax, (%rcx,%rdx,2)
	movq	-168(%rbp), %rax
	movl	-96(%rbp), %ecx
	addl	-16(%rbp), %ecx
	movslq	%ecx, %rcx
	movq	(%rax,%rcx,8), %rax
	movl	-92(%rbp), %ecx
	addl	-12(%rbp), %ecx
	movslq	%ecx, %rcx
	movzwl	(%rax,%rcx,2), %eax
	movq	img, %rcx
	addq	$7352, %rcx             # imm = 0x1CB8
	movslq	-60(%rbp), %rdx
	shlq	$7, %rdx
	addq	%rdx, %rcx
	movslq	-16(%rbp), %rdx
	shlq	$4, %rdx
	addq	%rdx, %rcx
	movslq	-12(%rbp), %rdx
	movzwl	(%rcx,%rdx,2), %ecx
	subl	%ecx, %eax
	movq	img, %rcx
	addq	$13112, %rcx            # imm = 0x3338
	movslq	-12(%rbp), %rdx
	shlq	$6, %rdx
	addq	%rdx, %rcx
	movslq	-16(%rbp), %rdx
	movl	%eax, (%rcx,%rdx,4)
# %bb.266:                              # %for.inc1231
                                        #   in Loop: Header=BB9_264 Depth=2
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB9_264
.LBB9_267:                              # %for.end1233
                                        #   in Loop: Header=BB9_262 Depth=1
	jmp	.LBB9_268
.LBB9_268:                              # %for.inc1234
                                        #   in Loop: Header=BB9_262 Depth=1
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB9_262
.LBB9_269:                              # %for.end1236
	movl	-32(%rbp), %edi
	leaq	-196(%rbp), %rsi
	movl	$1, %edx
	callq	dct_luma8x8
	movl	%eax, -112(%rbp)
	jmp	.LBB9_358
.LBB9_270:                              # %if.else1238
	movl	$0, -16(%rbp)
.LBB9_271:                              # %for.cond1239
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_273 Depth 2
	cmpl	$8, -16(%rbp)
	jge	.LBB9_278
# %bb.272:                              # %for.body1242
                                        #   in Loop: Header=BB9_271 Depth=1
	movl	$0, -12(%rbp)
.LBB9_273:                              # %for.cond1243
                                        #   Parent Loop BB9_271 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$8, -12(%rbp)
	jge	.LBB9_276
# %bb.274:                              # %for.body1246
                                        #   in Loop: Header=BB9_273 Depth=2
	movq	img, %rax
	addq	$7352, %rax             # imm = 0x1CB8
	movslq	-60(%rbp), %rcx
	shlq	$7, %rcx
	addq	%rcx, %rax
	movslq	-16(%rbp), %rcx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movslq	-12(%rbp), %rcx
	movw	(%rax,%rcx,2), %ax
	movq	img, %rcx
	addq	$12600, %rcx            # imm = 0x3138
	movl	-36(%rbp), %edx
	addl	-12(%rbp), %edx
	movslq	%edx, %rdx
	shlq	$5, %rdx
	addq	%rdx, %rcx
	movl	-40(%rbp), %edx
	addl	-16(%rbp), %edx
	movslq	%edx, %rdx
	movw	%ax, (%rcx,%rdx,2)
	movq	imgUV_org, %rax
	movq	(%rax), %rax
	movl	-96(%rbp), %ecx
	addl	-16(%rbp), %ecx
	movslq	%ecx, %rcx
	movq	(%rax,%rcx,8), %rax
	movl	-92(%rbp), %ecx
	addl	-12(%rbp), %ecx
	movslq	%ecx, %rcx
	movzwl	(%rax,%rcx,2), %eax
	movq	img, %rcx
	addq	$8504, %rcx             # imm = 0x2138
	movslq	-56(%rbp), %rdx
	shlq	$9, %rdx
	addq	%rdx, %rcx
	movl	-36(%rbp), %edx
	addl	-12(%rbp), %edx
	movslq	%edx, %rdx
	shlq	$5, %rdx
	addq	%rdx, %rcx
	movl	-40(%rbp), %edx
	addl	-16(%rbp), %edx
	movslq	%edx, %rdx
	movzwl	(%rcx,%rdx,2), %ecx
	subl	%ecx, %eax
	movl	%eax, -64(%rbp)
	movq	imgY_org, %rax
	movl	-96(%rbp), %ecx
	addl	-16(%rbp), %ecx
	movslq	%ecx, %rcx
	movq	(%rax,%rcx,8), %rax
	movl	-92(%rbp), %ecx
	addl	-12(%rbp), %ecx
	movslq	%ecx, %rcx
	movzwl	(%rax,%rcx,2), %eax
	movq	img, %rcx
	addq	$7352, %rcx             # imm = 0x1CB8
	movslq	-60(%rbp), %rdx
	shlq	$7, %rdx
	addq	%rdx, %rcx
	movslq	-16(%rbp), %rdx
	shlq	$4, %rdx
	addq	%rdx, %rcx
	movslq	-12(%rbp), %rdx
	movzwl	(%rcx,%rdx,2), %ecx
	subl	%ecx, %eax
	movl	%eax, -72(%rbp)
	movq	imgUV_org, %rax
	movq	8(%rax), %rax
	movl	-96(%rbp), %ecx
	addl	-16(%rbp), %ecx
	movslq	%ecx, %rcx
	movq	(%rax,%rcx,8), %rax
	movl	-92(%rbp), %ecx
	addl	-12(%rbp), %ecx
	movslq	%ecx, %rcx
	movzwl	(%rax,%rcx,2), %eax
	movq	img, %rcx
	addq	$8504, %rcx             # imm = 0x2138
	addq	$2048, %rcx             # imm = 0x800
	movslq	-56(%rbp), %rdx
	shlq	$9, %rdx
	addq	%rdx, %rcx
	movl	-36(%rbp), %edx
	addl	-12(%rbp), %edx
	movslq	%edx, %rdx
	shlq	$5, %rdx
	addq	%rdx, %rcx
	movl	-40(%rbp), %edx
	addl	-16(%rbp), %edx
	movslq	%edx, %rdx
	movzwl	(%rcx,%rdx,2), %ecx
	subl	%ecx, %eax
	movl	%eax, -80(%rbp)
	movl	-80(%rbp), %eax
	subl	-64(%rbp), %eax
	movslq	-12(%rbp), %rcx
	shlq	$6, %rcx
	movabsq	$resTrans_R, %rdx
	movq	%rdx, %rsi
	addq	%rcx, %rsi
	movslq	-16(%rbp), %rcx
	movl	%eax, (%rsi,%rcx,4)
	movl	-64(%rbp), %eax
	movslq	-12(%rbp), %rcx
	shlq	$6, %rcx
	addq	%rcx, %rdx
	movslq	-16(%rbp), %rcx
	movl	(%rdx,%rcx,4), %ecx
	sarl	$1, %ecx
	addl	%ecx, %eax
	movl	%eax, -88(%rbp)
	movl	-72(%rbp), %eax
	subl	-88(%rbp), %eax
	movslq	-12(%rbp), %rcx
	shlq	$6, %rcx
	movabsq	$resTrans_B, %rdx
	movq	%rdx, %rsi
	addq	%rcx, %rsi
	movslq	-16(%rbp), %rcx
	movl	%eax, (%rsi,%rcx,4)
	movl	-88(%rbp), %eax
	movslq	-12(%rbp), %rcx
	shlq	$6, %rcx
	addq	%rcx, %rdx
	movslq	-16(%rbp), %rcx
	movl	(%rdx,%rcx,4), %ecx
	sarl	$1, %ecx
	addl	%ecx, %eax
	movslq	-12(%rbp), %rcx
	shlq	$6, %rcx
	movabsq	$resTrans_G, %rdx
	addq	%rcx, %rdx
	movslq	-16(%rbp), %rcx
	movl	%eax, (%rdx,%rcx,4)
# %bb.275:                              # %for.inc1343
                                        #   in Loop: Header=BB9_273 Depth=2
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB9_273
.LBB9_276:                              # %for.end1345
                                        #   in Loop: Header=BB9_271 Depth=1
	jmp	.LBB9_277
.LBB9_277:                              # %for.inc1346
                                        #   in Loop: Header=BB9_271 Depth=1
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB9_271
.LBB9_278:                              # %for.end1348
	movl	$0, -16(%rbp)
.LBB9_279:                              # %for.cond1349
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_281 Depth 2
	cmpl	$8, -16(%rbp)
	jge	.LBB9_286
# %bb.280:                              # %for.body1352
                                        #   in Loop: Header=BB9_279 Depth=1
	movl	$0, -12(%rbp)
.LBB9_281:                              # %for.cond1353
                                        #   Parent Loop BB9_279 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$8, -12(%rbp)
	jge	.LBB9_284
# %bb.282:                              # %for.body1356
                                        #   in Loop: Header=BB9_281 Depth=2
	movslq	-12(%rbp), %rax
	shlq	$6, %rax
	movabsq	$resTrans_G, %rcx
	addq	%rax, %rcx
	movslq	-16(%rbp), %rax
	movl	(%rcx,%rax,4), %eax
	movq	img, %rcx
	addq	$13112, %rcx            # imm = 0x3338
	movslq	-12(%rbp), %rdx
	shlq	$6, %rdx
	addq	%rdx, %rcx
	movslq	-16(%rbp), %rdx
	movl	%eax, (%rcx,%rdx,4)
# %bb.283:                              # %for.inc1366
                                        #   in Loop: Header=BB9_281 Depth=2
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB9_281
.LBB9_284:                              # %for.end1368
                                        #   in Loop: Header=BB9_279 Depth=1
	jmp	.LBB9_285
.LBB9_285:                              # %for.inc1369
                                        #   in Loop: Header=BB9_279 Depth=1
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB9_279
.LBB9_286:                              # %for.end1371
	movl	-32(%rbp), %edi
	leaq	-196(%rbp), %rsi
	movl	$1, %edx
	callq	dct_luma8x8
	movl	%eax, -112(%rbp)
	movl	$0, -16(%rbp)
.LBB9_287:                              # %for.cond1373
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_289 Depth 2
	cmpl	$8, -16(%rbp)
	jge	.LBB9_294
# %bb.288:                              # %for.body1376
                                        #   in Loop: Header=BB9_287 Depth=1
	movl	$0, -12(%rbp)
.LBB9_289:                              # %for.cond1377
                                        #   Parent Loop BB9_287 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$8, -12(%rbp)
	jge	.LBB9_292
# %bb.290:                              # %for.body1380
                                        #   in Loop: Header=BB9_289 Depth=2
	movq	img, %rax
	addq	$13112, %rax            # imm = 0x3338
	movslq	-12(%rbp), %rcx
	shlq	$6, %rcx
	addq	%rcx, %rax
	movslq	-16(%rbp), %rcx
	movl	(%rax,%rcx,4), %eax
	movslq	-12(%rbp), %rcx
	shlq	$6, %rcx
	movabsq	$rec_resG, %rdx
	addq	%rcx, %rdx
	movslq	-16(%rbp), %rcx
	movl	%eax, (%rdx,%rcx,4)
# %bb.291:                              # %for.inc1390
                                        #   in Loop: Header=BB9_289 Depth=2
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB9_289
.LBB9_292:                              # %for.end1392
                                        #   in Loop: Header=BB9_287 Depth=1
	jmp	.LBB9_293
.LBB9_293:                              # %for.inc1393
                                        #   in Loop: Header=BB9_287 Depth=1
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB9_287
.LBB9_294:                              # %for.end1395
	movl	$0, -20(%rbp)
.LBB9_295:                              # %for.cond1396
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_297 Depth 2
                                        #       Child Loop BB9_299 Depth 3
                                        #     Child Loop BB9_305 Depth 2
                                        #       Child Loop BB9_307 Depth 3
                                        #     Child Loop BB9_313 Depth 2
                                        #       Child Loop BB9_315 Depth 3
	cmpl	$4, -20(%rbp)
	jge	.LBB9_322
# %bb.296:                              # %for.body1399
                                        #   in Loop: Header=BB9_295 Depth=1
	movl	-20(%rbp), %eax
	cltd
	movl	$2, %ecx
	idivl	%ecx
	shll	$2, %edx
	movl	%edx, -84(%rbp)
	movl	-20(%rbp), %eax
	cltd
	idivl	%ecx
	shll	$2, %eax
	movl	%eax, -76(%rbp)
	movl	$0, -16(%rbp)
.LBB9_297:                              # %for.cond1404
                                        #   Parent Loop BB9_295 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB9_299 Depth 3
	cmpl	$4, -16(%rbp)
	jge	.LBB9_304
# %bb.298:                              # %for.body1407
                                        #   in Loop: Header=BB9_297 Depth=2
	movl	$0, -12(%rbp)
.LBB9_299:                              # %for.cond1408
                                        #   Parent Loop BB9_295 Depth=1
                                        #     Parent Loop BB9_297 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	cmpl	$4, -12(%rbp)
	jge	.LBB9_302
# %bb.300:                              # %for.body1411
                                        #   in Loop: Header=BB9_299 Depth=3
	movl	-12(%rbp), %eax
	addl	-84(%rbp), %eax
	cltq
	shlq	$6, %rax
	movabsq	$resTrans_R, %rcx
	addq	%rax, %rcx
	movl	-16(%rbp), %eax
	addl	-76(%rbp), %eax
	cltq
	movl	(%rcx,%rax,4), %eax
	movq	img, %rcx
	addq	$13112, %rcx            # imm = 0x3338
	movslq	-12(%rbp), %rdx
	shlq	$6, %rdx
	addq	%rdx, %rcx
	movslq	-16(%rbp), %rdx
	movl	%eax, (%rcx,%rdx,4)
# %bb.301:                              # %for.inc1423
                                        #   in Loop: Header=BB9_299 Depth=3
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB9_299
.LBB9_302:                              # %for.end1425
                                        #   in Loop: Header=BB9_297 Depth=2
	jmp	.LBB9_303
.LBB9_303:                              # %for.inc1426
                                        #   in Loop: Header=BB9_297 Depth=2
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB9_297
.LBB9_304:                              # %for.end1428
                                        #   in Loop: Header=BB9_295 Depth=1
	movl	-32(%rbp), %esi
	addl	$4, %esi
	movl	-20(%rbp), %edx
	xorl	%edi, %edi
	callq	dct_chroma4x4
	movl	%eax, %ecx
	movl	-32(%rbp), %eax
	cltd
	movl	$2, %edi
	idivl	%edi
	movl	%edx, %esi
	shll	$1, %esi
	movl	-20(%rbp), %eax
	cltd
	idivl	%edi
	addl	%edx, %esi
	movslq	%esi, %rax
	shlq	$4, %rax
	movabsq	$cbp_chroma_block, %rbx
	addq	%rax, %rbx
	movl	-32(%rbp), %eax
	cltd
	idivl	%edi
	movl	%eax, %esi
	shll	$1, %esi
	movl	-20(%rbp), %eax
	cltd
	idivl	%edi
	addl	%eax, %esi
	movslq	%esi, %rax
	movl	%ecx, (%rbx,%rax,4)
	movl	-32(%rbp), %eax
	cltd
	idivl	%edi
	movl	%edx, %ecx
	shll	$1, %ecx
	movl	-20(%rbp), %eax
	cltd
	idivl	%edi
	addl	%edx, %ecx
	movslq	%ecx, %rax
	shlq	$4, %rax
	movabsq	$dc_level_temp, %rsi
	addq	%rax, %rsi
	movl	-32(%rbp), %eax
	cltd
	idivl	%edi
	movl	%eax, %ecx
	shll	$1, %ecx
	movl	-20(%rbp), %eax
	cltd
	idivl	%edi
	addl	%eax, %ecx
	movslq	%ecx, %rax
	movl	(%rsi,%rax,4), %esi
	movl	-32(%rbp), %eax
	cltd
	idivl	%edi
	movl	%edx, %ecx
	shll	$1, %ecx
	movl	-20(%rbp), %eax
	cltd
	idivl	%edi
	addl	%edx, %ecx
	movslq	%ecx, %rax
	shlq	$4, %rax
	movabsq	$dc_level, %rbx
	addq	%rax, %rbx
	movl	-32(%rbp), %eax
	cltd
	idivl	%edi
	movl	%eax, %ecx
	shll	$1, %ecx
	movl	-20(%rbp), %eax
	cltd
	idivl	%edi
	addl	%eax, %ecx
	movslq	%ecx, %rax
	movl	%esi, (%rbx,%rax,4)
	movl	$0, -16(%rbp)
.LBB9_305:                              # %for.cond1467
                                        #   Parent Loop BB9_295 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB9_307 Depth 3
	cmpl	$4, -16(%rbp)
	jge	.LBB9_312
# %bb.306:                              # %for.body1470
                                        #   in Loop: Header=BB9_305 Depth=2
	movl	$0, -12(%rbp)
.LBB9_307:                              # %for.cond1471
                                        #   Parent Loop BB9_295 Depth=1
                                        #     Parent Loop BB9_305 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	cmpl	$4, -12(%rbp)
	jge	.LBB9_310
# %bb.308:                              # %for.body1474
                                        #   in Loop: Header=BB9_307 Depth=3
	movq	img, %rax
	addq	$13112, %rax            # imm = 0x3338
	movslq	-12(%rbp), %rcx
	shlq	$6, %rcx
	addq	%rcx, %rax
	movslq	-16(%rbp), %rcx
	movl	(%rax,%rcx,4), %eax
	movl	-12(%rbp), %ecx
	addl	-84(%rbp), %ecx
	movslq	%ecx, %rcx
	shlq	$6, %rcx
	movabsq	$rec_resR, %rdx
	addq	%rcx, %rdx
	movl	-16(%rbp), %ecx
	addl	-76(%rbp), %ecx
	movslq	%ecx, %rcx
	movl	%eax, (%rdx,%rcx,4)
	movl	-12(%rbp), %eax
	addl	-84(%rbp), %eax
	cltq
	shlq	$6, %rax
	movabsq	$resTrans_B, %rcx
	addq	%rax, %rcx
	movl	-16(%rbp), %eax
	addl	-76(%rbp), %eax
	cltq
	movl	(%rcx,%rax,4), %eax
	movq	img, %rcx
	addq	$13112, %rcx            # imm = 0x3338
	movslq	-12(%rbp), %rdx
	shlq	$6, %rdx
	addq	%rdx, %rcx
	movslq	-16(%rbp), %rdx
	movl	%eax, (%rcx,%rdx,4)
# %bb.309:                              # %for.inc1497
                                        #   in Loop: Header=BB9_307 Depth=3
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB9_307
.LBB9_310:                              # %for.end1499
                                        #   in Loop: Header=BB9_305 Depth=2
	jmp	.LBB9_311
.LBB9_311:                              # %for.inc1500
                                        #   in Loop: Header=BB9_305 Depth=2
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB9_305
.LBB9_312:                              # %for.end1502
                                        #   in Loop: Header=BB9_295 Depth=1
	movl	-32(%rbp), %esi
	addl	$8, %esi
	movl	-20(%rbp), %edx
	movl	$1, %edi
	callq	dct_chroma4x4
	movl	%eax, %r9d
	movabsq	$dc_level, %r8
	addq	$64, %r8
	movabsq	$dc_level_temp, %rdi
	addq	$64, %rdi
	movabsq	$cbp_chroma_block, %rcx
	addq	$64, %rcx
	movl	-32(%rbp), %eax
	cltd
	movl	$2, %ebx
	idivl	%ebx
	movl	%edx, %esi
	shll	$1, %esi
	movl	-20(%rbp), %eax
	cltd
	idivl	%ebx
	addl	%edx, %esi
	movslq	%esi, %rax
	shlq	$4, %rax
	addq	%rax, %rcx
	movl	-32(%rbp), %eax
	cltd
	idivl	%ebx
	movl	%eax, %esi
	shll	$1, %esi
	movl	-20(%rbp), %eax
	cltd
	idivl	%ebx
	addl	%eax, %esi
	movslq	%esi, %rax
	movl	%r9d, (%rcx,%rax,4)
	movl	-32(%rbp), %eax
	cltd
	idivl	%ebx
	movl	%edx, %ecx
	shll	$1, %ecx
	movl	-20(%rbp), %eax
	cltd
	idivl	%ebx
	addl	%edx, %ecx
	movslq	%ecx, %rax
	shlq	$4, %rax
	addq	%rax, %rdi
	movl	-32(%rbp), %eax
	cltd
	idivl	%ebx
	movl	%eax, %ecx
	shll	$1, %ecx
	movl	-20(%rbp), %eax
	cltd
	idivl	%ebx
	addl	%eax, %ecx
	movslq	%ecx, %rax
	movl	(%rdi,%rax,4), %esi
	movl	-32(%rbp), %eax
	cltd
	idivl	%ebx
	movl	%edx, %ecx
	shll	$1, %ecx
	movl	-20(%rbp), %eax
	cltd
	idivl	%ebx
	addl	%edx, %ecx
	movslq	%ecx, %rax
	shlq	$4, %rax
	addq	%rax, %r8
	movl	-32(%rbp), %eax
	cltd
	idivl	%ebx
	movl	%eax, %ecx
	shll	$1, %ecx
	movl	-20(%rbp), %eax
	cltd
	idivl	%ebx
	addl	%eax, %ecx
	movslq	%ecx, %rax
	movl	%esi, (%r8,%rax,4)
	movl	$0, -16(%rbp)
.LBB9_313:                              # %for.cond1541
                                        #   Parent Loop BB9_295 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB9_315 Depth 3
	cmpl	$4, -16(%rbp)
	jge	.LBB9_320
# %bb.314:                              # %for.body1544
                                        #   in Loop: Header=BB9_313 Depth=2
	movl	$0, -12(%rbp)
.LBB9_315:                              # %for.cond1545
                                        #   Parent Loop BB9_295 Depth=1
                                        #     Parent Loop BB9_313 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	cmpl	$4, -12(%rbp)
	jge	.LBB9_318
# %bb.316:                              # %for.body1548
                                        #   in Loop: Header=BB9_315 Depth=3
	movq	img, %rax
	addq	$13112, %rax            # imm = 0x3338
	movslq	-12(%rbp), %rcx
	shlq	$6, %rcx
	addq	%rcx, %rax
	movslq	-16(%rbp), %rcx
	movl	(%rax,%rcx,4), %eax
	movl	-12(%rbp), %ecx
	addl	-84(%rbp), %ecx
	movslq	%ecx, %rcx
	shlq	$6, %rcx
	movabsq	$rec_resB, %rdx
	addq	%rcx, %rdx
	movl	-16(%rbp), %ecx
	addl	-76(%rbp), %ecx
	movslq	%ecx, %rcx
	movl	%eax, (%rdx,%rcx,4)
# %bb.317:                              # %for.inc1560
                                        #   in Loop: Header=BB9_315 Depth=3
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB9_315
.LBB9_318:                              # %for.end1562
                                        #   in Loop: Header=BB9_313 Depth=2
	jmp	.LBB9_319
.LBB9_319:                              # %for.inc1563
                                        #   in Loop: Header=BB9_313 Depth=2
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB9_313
.LBB9_320:                              # %for.end1565
                                        #   in Loop: Header=BB9_295 Depth=1
	jmp	.LBB9_321
.LBB9_321:                              # %for.inc1566
                                        #   in Loop: Header=BB9_295 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB9_295
.LBB9_322:                              # %for.end1568
	movl	$0, -16(%rbp)
.LBB9_323:                              # %for.cond1569
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_325 Depth 2
	cmpl	$8, -16(%rbp)
	jge	.LBB9_357
# %bb.324:                              # %for.body1572
                                        #   in Loop: Header=BB9_323 Depth=1
	movl	$0, -12(%rbp)
.LBB9_325:                              # %for.cond1573
                                        #   Parent Loop BB9_323 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$8, -12(%rbp)
	jge	.LBB9_355
# %bb.326:                              # %for.body1576
                                        #   in Loop: Header=BB9_325 Depth=2
	xorl	%eax, %eax
	movslq	-12(%rbp), %rcx
	shlq	$6, %rcx
	movabsq	$rec_resG, %rdx
	addq	%rcx, %rdx
	movslq	-16(%rbp), %rcx
	movl	(%rdx,%rcx,4), %ecx
	movslq	-12(%rbp), %rdx
	shlq	$6, %rdx
	movabsq	$rec_resB, %rsi
	movq	%rsi, %rdi
	addq	%rdx, %rdi
	movslq	-16(%rbp), %rdx
	movl	(%rdi,%rdx,4), %edx
	sarl	$1, %edx
	subl	%edx, %ecx
	movl	%ecx, -88(%rbp)
	movslq	-12(%rbp), %rcx
	shlq	$6, %rcx
	addq	%rcx, %rsi
	movslq	-16(%rbp), %rcx
	movl	(%rsi,%rcx,4), %ecx
	addl	-88(%rbp), %ecx
	movl	%ecx, -72(%rbp)
	movl	-88(%rbp), %ecx
	movslq	-12(%rbp), %rdx
	shlq	$6, %rdx
	movabsq	$rec_resR, %rsi
	movq	%rsi, %rdi
	addq	%rdx, %rdi
	movslq	-16(%rbp), %rdx
	movl	(%rdi,%rdx,4), %edx
	sarl	$1, %edx
	subl	%edx, %ecx
	movl	%ecx, -64(%rbp)
	movl	-64(%rbp), %ecx
	movslq	-12(%rbp), %rdx
	shlq	$6, %rdx
	addq	%rdx, %rsi
	movslq	-16(%rbp), %rdx
	addl	(%rsi,%rdx,4), %ecx
	movl	%ecx, -80(%rbp)
	movq	img, %rcx
	movl	72688(%rcx), %ecx
	movl	-64(%rbp), %edx
	movq	img, %rsi
	addq	$8504, %rsi             # imm = 0x2138
	movslq	-56(%rbp), %rdi
	shlq	$9, %rdi
	addq	%rdi, %rsi
	movl	-36(%rbp), %edi
	addl	-12(%rbp), %edi
	movslq	%edi, %rdi
	shlq	$5, %rdi
	addq	%rdi, %rsi
	movl	-40(%rbp), %edi
	addl	-16(%rbp), %edi
	movslq	%edi, %rdi
	movzwl	(%rsi,%rdi,2), %esi
	addl	%esi, %edx
	cmpl	%edx, %eax
	jle	.LBB9_328
# %bb.327:                              # %cond.true1618
                                        #   in Loop: Header=BB9_325 Depth=2
	xorl	%eax, %eax
	jmp	.LBB9_329
.LBB9_328:                              # %cond.false1619
                                        #   in Loop: Header=BB9_325 Depth=2
	movl	-64(%rbp), %eax
	movq	img, %rdx
	addq	$8504, %rdx             # imm = 0x2138
	movslq	-56(%rbp), %rsi
	shlq	$9, %rsi
	addq	%rsi, %rdx
	movl	-36(%rbp), %esi
	addl	-12(%rbp), %esi
	movslq	%esi, %rsi
	shlq	$5, %rsi
	addq	%rsi, %rdx
	movl	-40(%rbp), %esi
	addl	-16(%rbp), %esi
	movslq	%esi, %rsi
	movzwl	(%rdx,%rsi,2), %edx
	addl	%edx, %eax
.LBB9_329:                              # %cond.end1632
                                        #   in Loop: Header=BB9_325 Depth=2
	cmpl	%eax, %ecx
	jge	.LBB9_331
# %bb.330:                              # %cond.true1636
                                        #   in Loop: Header=BB9_325 Depth=2
	movq	img, %rax
	movl	72688(%rax), %eax
	jmp	.LBB9_335
.LBB9_331:                              # %cond.false1638
                                        #   in Loop: Header=BB9_325 Depth=2
	xorl	%eax, %eax
	movl	-64(%rbp), %ecx
	movq	img, %rdx
	addq	$8504, %rdx             # imm = 0x2138
	movslq	-56(%rbp), %rsi
	shlq	$9, %rsi
	addq	%rsi, %rdx
	movl	-36(%rbp), %esi
	addl	-12(%rbp), %esi
	movslq	%esi, %rsi
	shlq	$5, %rsi
	addq	%rsi, %rdx
	movl	-40(%rbp), %esi
	addl	-16(%rbp), %esi
	movslq	%esi, %rsi
	movzwl	(%rdx,%rsi,2), %edx
	addl	%edx, %ecx
	cmpl	%ecx, %eax
	jle	.LBB9_333
# %bb.332:                              # %cond.true1653
                                        #   in Loop: Header=BB9_325 Depth=2
	xorl	%eax, %eax
	jmp	.LBB9_334
.LBB9_333:                              # %cond.false1654
                                        #   in Loop: Header=BB9_325 Depth=2
	movl	-64(%rbp), %eax
	movq	img, %rcx
	addq	$8504, %rcx             # imm = 0x2138
	movslq	-56(%rbp), %rdx
	shlq	$9, %rdx
	addq	%rdx, %rcx
	movl	-36(%rbp), %edx
	addl	-12(%rbp), %edx
	movslq	%edx, %rdx
	shlq	$5, %rdx
	addq	%rdx, %rcx
	movl	-40(%rbp), %edx
	addl	-16(%rbp), %edx
	movslq	%edx, %rdx
	movzwl	(%rcx,%rdx,2), %ecx
	addl	%ecx, %eax
.LBB9_334:                              # %cond.end1667
                                        #   in Loop: Header=BB9_325 Depth=2
.LBB9_335:                              # %cond.end1669
                                        #   in Loop: Header=BB9_325 Depth=2
	xorl	%ecx, %ecx
	movq	enc_picture, %rdx
	movq	6464(%rdx), %rdx
	movq	(%rdx), %rdx
	movl	-44(%rbp), %esi
	addl	-16(%rbp), %esi
	movslq	%esi, %rsi
	movq	(%rdx,%rsi,8), %rdx
	movl	-68(%rbp), %esi
	addl	-12(%rbp), %esi
	movslq	%esi, %rsi
	movw	%ax, (%rdx,%rsi,2)
	movq	img, %rax
	movl	72684(%rax), %eax
	movl	-72(%rbp), %edx
	movq	img, %rsi
	addq	$7352, %rsi             # imm = 0x1CB8
	movslq	-60(%rbp), %rdi
	shlq	$7, %rdi
	addq	%rdi, %rsi
	movslq	-16(%rbp), %rdi
	shlq	$4, %rdi
	addq	%rdi, %rsi
	movslq	-12(%rbp), %rdi
	movzwl	(%rsi,%rdi,2), %esi
	addl	%esi, %edx
	cmpl	%edx, %ecx
	jle	.LBB9_337
# %bb.336:                              # %cond.true1692
                                        #   in Loop: Header=BB9_325 Depth=2
	xorl	%ecx, %ecx
	jmp	.LBB9_338
.LBB9_337:                              # %cond.false1693
                                        #   in Loop: Header=BB9_325 Depth=2
	movl	-72(%rbp), %ecx
	movq	img, %rdx
	addq	$7352, %rdx             # imm = 0x1CB8
	movslq	-60(%rbp), %rsi
	shlq	$7, %rsi
	addq	%rsi, %rdx
	movslq	-16(%rbp), %rsi
	shlq	$4, %rsi
	addq	%rsi, %rdx
	movslq	-12(%rbp), %rsi
	movzwl	(%rdx,%rsi,2), %edx
	addl	%edx, %ecx
.LBB9_338:                              # %cond.end1703
                                        #   in Loop: Header=BB9_325 Depth=2
	cmpl	%ecx, %eax
	jge	.LBB9_340
# %bb.339:                              # %cond.true1707
                                        #   in Loop: Header=BB9_325 Depth=2
	movq	img, %rax
	movl	72684(%rax), %eax
	jmp	.LBB9_344
.LBB9_340:                              # %cond.false1709
                                        #   in Loop: Header=BB9_325 Depth=2
	xorl	%eax, %eax
	movl	-72(%rbp), %ecx
	movq	img, %rdx
	addq	$7352, %rdx             # imm = 0x1CB8
	movslq	-60(%rbp), %rsi
	shlq	$7, %rsi
	addq	%rsi, %rdx
	movslq	-16(%rbp), %rsi
	shlq	$4, %rsi
	addq	%rsi, %rdx
	movslq	-12(%rbp), %rsi
	movzwl	(%rdx,%rsi,2), %edx
	addl	%edx, %ecx
	cmpl	%ecx, %eax
	jle	.LBB9_342
# %bb.341:                              # %cond.true1721
                                        #   in Loop: Header=BB9_325 Depth=2
	xorl	%eax, %eax
	jmp	.LBB9_343
.LBB9_342:                              # %cond.false1722
                                        #   in Loop: Header=BB9_325 Depth=2
	movl	-72(%rbp), %eax
	movq	img, %rcx
	addq	$7352, %rcx             # imm = 0x1CB8
	movslq	-60(%rbp), %rdx
	shlq	$7, %rdx
	addq	%rdx, %rcx
	movslq	-16(%rbp), %rdx
	shlq	$4, %rdx
	addq	%rdx, %rcx
	movslq	-12(%rbp), %rdx
	movzwl	(%rcx,%rdx,2), %ecx
	addl	%ecx, %eax
.LBB9_343:                              # %cond.end1732
                                        #   in Loop: Header=BB9_325 Depth=2
.LBB9_344:                              # %cond.end1734
                                        #   in Loop: Header=BB9_325 Depth=2
	xorl	%ecx, %ecx
	movq	enc_picture, %rdx
	movq	6424(%rdx), %rdx
	movl	-44(%rbp), %esi
	addl	-16(%rbp), %esi
	movslq	%esi, %rsi
	movq	(%rdx,%rsi,8), %rdx
	movl	-68(%rbp), %esi
	addl	-12(%rbp), %esi
	movslq	%esi, %rsi
	movw	%ax, (%rdx,%rsi,2)
	movq	img, %rax
	movl	72688(%rax), %eax
	movl	-80(%rbp), %edx
	movq	img, %rsi
	addq	$8504, %rsi             # imm = 0x2138
	addq	$2048, %rsi             # imm = 0x800
	movslq	-56(%rbp), %rdi
	shlq	$9, %rdi
	addq	%rdi, %rsi
	movl	-36(%rbp), %edi
	addl	-12(%rbp), %edi
	movslq	%edi, %rdi
	shlq	$5, %rdi
	addq	%rdi, %rsi
	movl	-40(%rbp), %edi
	addl	-16(%rbp), %edi
	movslq	%edi, %rdi
	movzwl	(%rsi,%rdi,2), %esi
	addl	%esi, %edx
	cmpl	%edx, %ecx
	jle	.LBB9_346
# %bb.345:                              # %cond.true1759
                                        #   in Loop: Header=BB9_325 Depth=2
	xorl	%ecx, %ecx
	jmp	.LBB9_347
.LBB9_346:                              # %cond.false1760
                                        #   in Loop: Header=BB9_325 Depth=2
	movl	-80(%rbp), %ecx
	movq	img, %rdx
	addq	$8504, %rdx             # imm = 0x2138
	addq	$2048, %rdx             # imm = 0x800
	movslq	-56(%rbp), %rsi
	shlq	$9, %rsi
	addq	%rsi, %rdx
	movl	-36(%rbp), %esi
	addl	-12(%rbp), %esi
	movslq	%esi, %rsi
	shlq	$5, %rsi
	addq	%rsi, %rdx
	movl	-40(%rbp), %esi
	addl	-16(%rbp), %esi
	movslq	%esi, %rsi
	movzwl	(%rdx,%rsi,2), %edx
	addl	%edx, %ecx
.LBB9_347:                              # %cond.end1773
                                        #   in Loop: Header=BB9_325 Depth=2
	cmpl	%ecx, %eax
	jge	.LBB9_349
# %bb.348:                              # %cond.true1777
                                        #   in Loop: Header=BB9_325 Depth=2
	movq	img, %rax
	movl	72688(%rax), %eax
	jmp	.LBB9_353
.LBB9_349:                              # %cond.false1779
                                        #   in Loop: Header=BB9_325 Depth=2
	xorl	%eax, %eax
	movl	-80(%rbp), %ecx
	movq	img, %rdx
	addq	$8504, %rdx             # imm = 0x2138
	addq	$2048, %rdx             # imm = 0x800
	movslq	-56(%rbp), %rsi
	shlq	$9, %rsi
	addq	%rsi, %rdx
	movl	-36(%rbp), %esi
	addl	-12(%rbp), %esi
	movslq	%esi, %rsi
	shlq	$5, %rsi
	addq	%rsi, %rdx
	movl	-40(%rbp), %esi
	addl	-16(%rbp), %esi
	movslq	%esi, %rsi
	movzwl	(%rdx,%rsi,2), %edx
	addl	%edx, %ecx
	cmpl	%ecx, %eax
	jle	.LBB9_351
# %bb.350:                              # %cond.true1794
                                        #   in Loop: Header=BB9_325 Depth=2
	xorl	%eax, %eax
	jmp	.LBB9_352
.LBB9_351:                              # %cond.false1795
                                        #   in Loop: Header=BB9_325 Depth=2
	movl	-80(%rbp), %eax
	movq	img, %rcx
	addq	$8504, %rcx             # imm = 0x2138
	addq	$2048, %rcx             # imm = 0x800
	movslq	-56(%rbp), %rdx
	shlq	$9, %rdx
	addq	%rdx, %rcx
	movl	-36(%rbp), %edx
	addl	-12(%rbp), %edx
	movslq	%edx, %rdx
	shlq	$5, %rdx
	addq	%rdx, %rcx
	movl	-40(%rbp), %edx
	addl	-16(%rbp), %edx
	movslq	%edx, %rdx
	movzwl	(%rcx,%rdx,2), %ecx
	addl	%ecx, %eax
.LBB9_352:                              # %cond.end1808
                                        #   in Loop: Header=BB9_325 Depth=2
.LBB9_353:                              # %cond.end1810
                                        #   in Loop: Header=BB9_325 Depth=2
	movq	enc_picture, %rcx
	movq	6464(%rcx), %rcx
	movq	8(%rcx), %rcx
	movl	-44(%rbp), %edx
	addl	-16(%rbp), %edx
	movslq	%edx, %rdx
	movq	(%rcx,%rdx,8), %rcx
	movl	-68(%rbp), %edx
	addl	-12(%rbp), %edx
	movslq	%edx, %rdx
	movw	%ax, (%rcx,%rdx,2)
# %bb.354:                              # %for.inc1821
                                        #   in Loop: Header=BB9_325 Depth=2
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB9_325
.LBB9_355:                              # %for.end1823
                                        #   in Loop: Header=BB9_323 Depth=1
	jmp	.LBB9_356
.LBB9_356:                              # %for.inc1824
                                        #   in Loop: Header=BB9_323 Depth=1
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB9_323
.LBB9_357:                              # %for.end1826
	jmp	.LBB9_358
.LBB9_358:                              # %if.end1827
	jmp	.LBB9_420
.LBB9_359:                              # %if.else1828
	movl	$0, -16(%rbp)
.LBB9_360:                              # %for.cond1829
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_362 Depth 2
                                        #       Child Loop BB9_364 Depth 3
	cmpl	$2, -16(%rbp)
	jge	.LBB9_371
# %bb.361:                              # %for.body1832
                                        #   in Loop: Header=BB9_360 Depth=1
	movl	$0, -12(%rbp)
.LBB9_362:                              # %for.cond1833
                                        #   Parent Loop BB9_360 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB9_364 Depth 3
	cmpl	$65, -12(%rbp)
	jge	.LBB9_369
# %bb.363:                              # %for.body1836
                                        #   in Loop: Header=BB9_362 Depth=2
	movl	$0, -52(%rbp)
.LBB9_364:                              # %for.cond1837
                                        #   Parent Loop BB9_360 Depth=1
                                        #     Parent Loop BB9_362 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	cmpl	$4, -52(%rbp)
	jge	.LBB9_367
# %bb.365:                              # %for.body1840
                                        #   in Loop: Header=BB9_364 Depth=3
	movq	cofAC8x8, %rax
	movslq	-32(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movslq	-52(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movslq	-16(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movslq	-12(%rbp), %rcx
	movl	(%rax,%rcx,4), %eax
	movq	img, %rcx
	movq	14136(%rcx), %rcx
	movslq	-32(%rbp), %rdx
	movq	(%rcx,%rdx,8), %rcx
	movslq	-52(%rbp), %rdx
	movq	(%rcx,%rdx,8), %rcx
	movslq	-16(%rbp), %rdx
	movq	(%rcx,%rdx,8), %rcx
	movslq	-12(%rbp), %rdx
	movl	%eax, (%rcx,%rdx,4)
# %bb.366:                              # %for.inc1858
                                        #   in Loop: Header=BB9_364 Depth=3
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB9_364
.LBB9_367:                              # %for.end1860
                                        #   in Loop: Header=BB9_362 Depth=2
	jmp	.LBB9_368
.LBB9_368:                              # %for.inc1861
                                        #   in Loop: Header=BB9_362 Depth=2
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB9_362
.LBB9_369:                              # %for.end1863
                                        #   in Loop: Header=BB9_360 Depth=1
	jmp	.LBB9_370
.LBB9_370:                              # %for.inc1864
                                        #   in Loop: Header=BB9_360 Depth=1
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB9_360
.LBB9_371:                              # %for.end1866
	movq	img, %rax
	cmpl	$0, 72724(%rax)
	je	.LBB9_393
# %bb.372:                              # %if.then1869
	movl	$0, -20(%rbp)
.LBB9_373:                              # %for.cond1870
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_375 Depth 2
                                        #       Child Loop BB9_377 Depth 3
                                        #     Child Loop BB9_383 Depth 2
                                        #       Child Loop BB9_385 Depth 3
	cmpl	$4, -20(%rbp)
	jge	.LBB9_392
# %bb.374:                              # %for.body1873
                                        #   in Loop: Header=BB9_373 Depth=1
	movl	$0, -16(%rbp)
.LBB9_375:                              # %for.cond1874
                                        #   Parent Loop BB9_373 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB9_377 Depth 3
	cmpl	$2, -16(%rbp)
	jge	.LBB9_382
# %bb.376:                              # %for.body1877
                                        #   in Loop: Header=BB9_375 Depth=2
	movl	$0, -12(%rbp)
.LBB9_377:                              # %for.cond1878
                                        #   Parent Loop BB9_373 Depth=1
                                        #     Parent Loop BB9_375 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	cmpl	$18, -12(%rbp)
	jge	.LBB9_380
# %bb.378:                              # %for.body1881
                                        #   in Loop: Header=BB9_377 Depth=3
	movslq	-20(%rbp), %rax
	imulq	$144, %rax, %rax
	movabsq	$cofAC8x8_chroma, %rcx
	addq	%rax, %rcx
	movslq	-16(%rbp), %rax
	imulq	$72, %rax, %rax
	addq	%rax, %rcx
	movslq	-12(%rbp), %rax
	movl	(%rcx,%rax,4), %eax
	movq	img, %rcx
	movq	14136(%rcx), %rcx
	movl	-32(%rbp), %edx
	addl	$4, %edx
	movslq	%edx, %rdx
	movq	(%rcx,%rdx,8), %rcx
	movslq	-20(%rbp), %rdx
	movq	(%rcx,%rdx,8), %rcx
	movslq	-16(%rbp), %rdx
	movq	(%rcx,%rdx,8), %rcx
	movslq	-12(%rbp), %rdx
	movl	%eax, (%rcx,%rdx,4)
# %bb.379:                              # %for.inc1898
                                        #   in Loop: Header=BB9_377 Depth=3
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB9_377
.LBB9_380:                              # %for.end1900
                                        #   in Loop: Header=BB9_375 Depth=2
	jmp	.LBB9_381
.LBB9_381:                              # %for.inc1901
                                        #   in Loop: Header=BB9_375 Depth=2
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB9_375
.LBB9_382:                              # %for.end1903
                                        #   in Loop: Header=BB9_373 Depth=1
	movl	$0, -16(%rbp)
.LBB9_383:                              # %for.cond1904
                                        #   Parent Loop BB9_373 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB9_385 Depth 3
	cmpl	$2, -16(%rbp)
	jge	.LBB9_390
# %bb.384:                              # %for.body1907
                                        #   in Loop: Header=BB9_383 Depth=2
	movl	$0, -12(%rbp)
.LBB9_385:                              # %for.cond1908
                                        #   Parent Loop BB9_373 Depth=1
                                        #     Parent Loop BB9_383 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	cmpl	$18, -12(%rbp)
	jge	.LBB9_388
# %bb.386:                              # %for.body1911
                                        #   in Loop: Header=BB9_385 Depth=3
	movabsq	$cofAC8x8_chroma, %rax
	addq	$576, %rax              # imm = 0x240
	movslq	-20(%rbp), %rcx
	imulq	$144, %rcx, %rcx
	addq	%rcx, %rax
	movslq	-16(%rbp), %rcx
	imulq	$72, %rcx, %rcx
	addq	%rcx, %rax
	movslq	-12(%rbp), %rcx
	movl	(%rax,%rcx,4), %eax
	movq	img, %rcx
	movq	14136(%rcx), %rcx
	movl	-32(%rbp), %edx
	addl	$8, %edx
	movslq	%edx, %rdx
	movq	(%rcx,%rdx,8), %rcx
	movslq	-20(%rbp), %rdx
	movq	(%rcx,%rdx,8), %rcx
	movslq	-16(%rbp), %rdx
	movq	(%rcx,%rdx,8), %rcx
	movslq	-12(%rbp), %rdx
	movl	%eax, (%rcx,%rdx,4)
# %bb.387:                              # %for.inc1928
                                        #   in Loop: Header=BB9_385 Depth=3
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB9_385
.LBB9_388:                              # %for.end1930
                                        #   in Loop: Header=BB9_383 Depth=2
	jmp	.LBB9_389
.LBB9_389:                              # %for.inc1931
                                        #   in Loop: Header=BB9_383 Depth=2
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB9_383
.LBB9_390:                              # %for.end1933
                                        #   in Loop: Header=BB9_373 Depth=1
	jmp	.LBB9_391
.LBB9_391:                              # %for.inc1934
                                        #   in Loop: Header=BB9_373 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB9_373
.LBB9_392:                              # %for.end1936
	jmp	.LBB9_393
.LBB9_393:                              # %if.end1937
	movl	$0, -24(%rbp)
.LBB9_394:                              # %for.cond1938
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_396 Depth 2
	cmpl	$8, -24(%rbp)
	jge	.LBB9_401
# %bb.395:                              # %for.body1941
                                        #   in Loop: Header=BB9_394 Depth=1
	movl	$0, -28(%rbp)
.LBB9_396:                              # %for.cond1942
                                        #   Parent Loop BB9_394 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$8, -28(%rbp)
	jge	.LBB9_399
# %bb.397:                              # %for.body1945
                                        #   in Loop: Header=BB9_396 Depth=2
	movslq	-24(%rbp), %rax
	shlq	$4, %rax
	leaq	-384(%rbp), %rcx
	addq	%rax, %rcx
	movslq	-28(%rbp), %rax
	movw	(%rcx,%rax,2), %ax
	movq	enc_picture, %rcx
	movq	6424(%rcx), %rcx
	movl	-44(%rbp), %edx
	addl	-24(%rbp), %edx
	movslq	%edx, %rdx
	movq	(%rcx,%rdx,8), %rcx
	movl	-68(%rbp), %edx
	addl	-28(%rbp), %edx
	movslq	%edx, %rdx
	movw	%ax, (%rcx,%rdx,2)
	movq	img, %rax
	addq	$7352, %rax             # imm = 0x1CB8
	movslq	-60(%rbp), %rcx
	shlq	$7, %rcx
	addq	%rcx, %rax
	movslq	-24(%rbp), %rcx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movslq	-28(%rbp), %rcx
	movw	(%rax,%rcx,2), %ax
	movq	img, %rcx
	addq	$12600, %rcx            # imm = 0x3138
	movl	-36(%rbp), %edx
	addl	-28(%rbp), %edx
	movslq	%edx, %rdx
	shlq	$5, %rdx
	addq	%rdx, %rcx
	movl	-40(%rbp), %edx
	addl	-24(%rbp), %edx
	movslq	%edx, %rdx
	movw	%ax, (%rcx,%rdx,2)
# %bb.398:                              # %for.inc1971
                                        #   in Loop: Header=BB9_396 Depth=2
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB9_396
.LBB9_399:                              # %for.end1973
                                        #   in Loop: Header=BB9_394 Depth=1
	jmp	.LBB9_400
.LBB9_400:                              # %for.inc1974
                                        #   in Loop: Header=BB9_394 Depth=1
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB9_394
.LBB9_401:                              # %for.end1976
	movq	img, %rax
	cmpl	$0, 72724(%rax)
	je	.LBB9_419
# %bb.402:                              # %if.then1979
	movl	$0, -20(%rbp)
.LBB9_403:                              # %for.cond1980
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_405 Depth 2
                                        #       Child Loop BB9_407 Depth 3
                                        #         Child Loop BB9_409 Depth 4
	cmpl	$4, -20(%rbp)
	jge	.LBB9_418
# %bb.404:                              # %for.body1983
                                        #   in Loop: Header=BB9_403 Depth=1
	movl	-20(%rbp), %eax
	cltd
	movl	$2, %ecx
	idivl	%ecx
	shll	$2, %edx
	movl	%edx, -84(%rbp)
	movl	-20(%rbp), %eax
	cltd
	idivl	%ecx
	shll	$2, %eax
	movl	%eax, -76(%rbp)
	movl	$0, -12(%rbp)
.LBB9_405:                              # %for.cond1988
                                        #   Parent Loop BB9_403 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB9_407 Depth 3
                                        #         Child Loop BB9_409 Depth 4
	cmpl	$2, -12(%rbp)
	jge	.LBB9_416
# %bb.406:                              # %for.body1991
                                        #   in Loop: Header=BB9_405 Depth=2
	movl	$0, -24(%rbp)
.LBB9_407:                              # %for.cond1992
                                        #   Parent Loop BB9_403 Depth=1
                                        #     Parent Loop BB9_405 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB9_409 Depth 4
	cmpl	$4, -24(%rbp)
	jge	.LBB9_414
# %bb.408:                              # %for.body1995
                                        #   in Loop: Header=BB9_407 Depth=3
	movl	$0, -28(%rbp)
.LBB9_409:                              # %for.cond1996
                                        #   Parent Loop BB9_403 Depth=1
                                        #     Parent Loop BB9_405 Depth=2
                                        #       Parent Loop BB9_407 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	cmpl	$4, -28(%rbp)
	jge	.LBB9_412
# %bb.410:                              # %for.body1999
                                        #   in Loop: Header=BB9_409 Depth=4
	movslq	-12(%rbp), %rax
	shlq	$8, %rax
	leaq	-1152(%rbp), %rcx
	addq	%rax, %rcx
	movslq	-20(%rbp), %rax
	shlq	$6, %rax
	addq	%rax, %rcx
	movslq	-24(%rbp), %rax
	shlq	$4, %rax
	addq	%rax, %rcx
	movslq	-28(%rbp), %rax
	movl	(%rcx,%rax,4), %eax
	movq	enc_picture, %rcx
	movq	6464(%rcx), %rcx
	movslq	-12(%rbp), %rdx
	movq	(%rcx,%rdx,8), %rcx
	movl	-44(%rbp), %edx
	addl	-24(%rbp), %edx
	addl	-76(%rbp), %edx
	movslq	%edx, %rdx
	movq	(%rcx,%rdx,8), %rcx
	movl	-68(%rbp), %edx
	addl	-28(%rbp), %edx
	addl	-84(%rbp), %edx
	movslq	%edx, %rdx
	movw	%ax, (%rcx,%rdx,2)
# %bb.411:                              # %for.inc2020
                                        #   in Loop: Header=BB9_409 Depth=4
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB9_409
.LBB9_412:                              # %for.end2022
                                        #   in Loop: Header=BB9_407 Depth=3
	jmp	.LBB9_413
.LBB9_413:                              # %for.inc2023
                                        #   in Loop: Header=BB9_407 Depth=3
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB9_407
.LBB9_414:                              # %for.end2025
                                        #   in Loop: Header=BB9_405 Depth=2
	jmp	.LBB9_415
.LBB9_415:                              # %for.inc2026
                                        #   in Loop: Header=BB9_405 Depth=2
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB9_405
.LBB9_416:                              # %for.end2028
                                        #   in Loop: Header=BB9_403 Depth=1
	jmp	.LBB9_417
.LBB9_417:                              # %for.inc2029
                                        #   in Loop: Header=BB9_403 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB9_403
.LBB9_418:                              # %for.end2031
	jmp	.LBB9_419
.LBB9_419:                              # %if.end2032
	jmp	.LBB9_420
.LBB9_420:                              # %if.end2033
	movl	-112(%rbp), %ebx
	cmpl	$228360990, -172(%rbp)  # imm = 0xD9C831E
	jne	.LBB9_422
.LBB9_421:
	movl	%ebx, %eax
	addq	$1144, %rsp             # imm = 0x478
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB9_422:                              # %func_exit
	.cfi_def_cfa %rbp, 16
	callq	detect_breach
	jmp	.LBB9_421
.Lfunc_end9:
	.size	Mode_Decision_for_new_8x8IntraBlocks.4, .Lfunc_end9-Mode_Decision_for_new_8x8IntraBlocks.4
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function Mode_Decision_for_new_Intra8x8Macroblock.5
.LCPI10_0:
	.quad	4602677017732795964     # double 0.49990000000000001
.LCPI10_1:
	.quad	4618441417868443648     # double 6
	.text
	.globl	Mode_Decision_for_new_Intra8x8Macroblock.5
	.p2align	4, 0x90
	.type	Mode_Decision_for_new_Intra8x8Macroblock.5,@function
Mode_Decision_for_new_Intra8x8Macroblock.5: # @Mode_Decision_for_new_Intra8x8Macroblock.5
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset %rbx, -24
	vmovsd	.LCPI10_0(%rip), %xmm1  # xmm1 = mem[0],zero
	vmovsd	.LCPI10_1(%rip), %xmm2  # xmm2 = mem[0],zero
	movl	$1226748692, -20(%rbp)  # imm = 0x491EB314
	vmovsd	%xmm0, -32(%rbp)
	movq	%rdi, -40(%rbp)
	movl	$0, -16(%rbp)
	vmulsd	-32(%rbp), %xmm2, %xmm0
	vaddsd	%xmm1, %xmm0, %xmm0
	vroundsd	$9, %xmm0, %xmm0, %xmm0
	vcvttsd2si	%xmm0, %eax
	movq	-40(%rbp), %rcx
	movl	%eax, (%rcx)
	movl	$0, -12(%rbp)
.LBB10_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$4, -12(%rbp)
	jge	.LBB10_6
# %bb.2:                                # %for.body
                                        #   in Loop: Header=BB10_1 Depth=1
	movl	-12(%rbp), %edi
	vmovsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	leaq	-24(%rbp), %rsi
	callq	Mode_Decision_for_new_8x8IntraBlocks
	cmpl	$0, %eax
	je	.LBB10_4
# %bb.3:                                # %if.then
                                        #   in Loop: Header=BB10_1 Depth=1
	movl	-12(%rbp), %ecx
                                        # kill: def $cl killed $ecx
	movl	$1, %eax
	shll	%cl, %eax
	orl	-16(%rbp), %eax
	movl	%eax, -16(%rbp)
.LBB10_4:                               # %if.end
                                        #   in Loop: Header=BB10_1 Depth=1
	movl	-24(%rbp), %eax
	movq	-40(%rbp), %rcx
	addl	(%rcx), %eax
	movl	%eax, (%rcx)
# %bb.5:                                # %for.inc
                                        #   in Loop: Header=BB10_1 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB10_1
.LBB10_6:                               # %for.end
	movl	-16(%rbp), %ebx
	cmpl	$1226748692, -20(%rbp)  # imm = 0x491EB314
	jne	.LBB10_8
.LBB10_7:
	movl	%ebx, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB10_8:                               # %func_exit
	.cfi_def_cfa %rbp, 16
	callq	detect_breach
	jmp	.LBB10_7
.Lfunc_end10:
	.size	Mode_Decision_for_new_Intra8x8Macroblock.5, .Lfunc_end10-Mode_Decision_for_new_Intra8x8Macroblock.5
	.cfi_endproc
                                        # -- End function
	.globl	RDCost_for_8x8IntraBlocks.6 # -- Begin function RDCost_for_8x8IntraBlocks.6
	.p2align	4, 0x90
	.type	RDCost_for_8x8IntraBlocks.6,@function
RDCost_for_8x8IntraBlocks.6:            # @RDCost_for_8x8IntraBlocks.6
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$176, %rsp
	movl	$1988145894, -84(%rbp)  # imm = 0x7680B2E6
	movq	%rdi, -168(%rbp)
	movl	%esi, -4(%rbp)
	movl	%edx, -28(%rbp)
	vmovsd	%xmm0, -144(%rbp)
	vmovsd	%xmm1, -176(%rbp)
	movl	%ecx, -40(%rbp)
	vxorps	%xmm0, %xmm0, %xmm0
	vmovsd	%xmm0, -112(%rbp)
	movq	$0, -64(%rbp)
	movl	-4(%rbp), %eax
	cltd
	movl	$2, %ecx
	idivl	%ecx
	shll	$3, %edx
	movl	%edx, -68(%rbp)
	movl	-4(%rbp), %eax
	cltd
	idivl	%ecx
	shll	$3, %eax
	movl	%eax, -44(%rbp)
	movq	img, %rax
	movl	152(%rax), %eax
	addl	-68(%rbp), %eax
	movl	%eax, -36(%rbp)
	movq	img, %rax
	movl	156(%rax), %eax
	addl	-44(%rbp), %eax
	movl	%eax, -80(%rbp)
	movq	img, %rax
	movl	172(%rax), %eax
	addl	-44(%rbp), %eax
	movl	%eax, -76(%rbp)
	movq	imgY_org, %rax
	movq	%rax, -160(%rbp)
	movq	enc_picture, %rax
	movq	6424(%rax), %rax
	movq	%rax, -152(%rbp)
	movq	img, %rax
	movq	14160(%rax), %rax
	movq	%rax, -128(%rbp)
	movq	img, %rax
	movq	14168(%rax), %rax
	movq	img, %rcx
	movslq	12(%rcx), %rcx
	imulq	$632, %rcx, %rcx        # imm = 0x278
	addq	%rcx, %rax
	movq	%rax, -120(%rbp)
	movq	img, %rax
	addq	$14176, %rax            # imm = 0x3760
	movq	-120(%rbp), %rcx
	movslq	(%rcx), %rcx
	imulq	$48, %rcx, %rcx
	addq	%rcx, %rax
	movq	%rax, -24(%rbp)
	movq	input, %rax
	movslq	2364(%rax), %rax
	movq	assignSE2partition(,%rax,8), %rax
	movq	%rax, -104(%rbp)
	movl	$0, -72(%rbp)
	movl	-4(%rbp), %edi
	leaq	-72(%rbp), %rsi
	movl	$1, %edx
	callq	dct_luma8x8
	movq	-168(%rbp), %rcx
	movl	%eax, (%rcx)
	movl	$0, -16(%rbp)
.LBB11_1:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB11_3 Depth 2
	cmpl	$8, -16(%rbp)
	jge	.LBB11_8
# %bb.2:                                # %for.body
                                        #   in Loop: Header=BB11_1 Depth=1
	movl	-36(%rbp), %eax
	movl	%eax, -12(%rbp)
.LBB11_3:                               # %for.cond9
                                        #   Parent Loop BB11_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-12(%rbp), %eax
	movl	-36(%rbp), %ecx
	addl	$8, %ecx
	cmpl	%ecx, %eax
	jge	.LBB11_6
# %bb.4:                                # %for.body12
                                        #   in Loop: Header=BB11_3 Depth=2
	movq	img, %rax
	movq	71776(%rax), %rax
	movq	-160(%rbp), %rcx
	movl	-76(%rbp), %edx
	addl	-16(%rbp), %edx
	movslq	%edx, %rdx
	movq	(%rcx,%rdx,8), %rcx
	movslq	-12(%rbp), %rdx
	movzwl	(%rcx,%rdx,2), %ecx
	movq	-152(%rbp), %rdx
	movl	-80(%rbp), %esi
	addl	-16(%rbp), %esi
	movslq	%esi, %rsi
	movq	(%rdx,%rsi,8), %rdx
	movslq	-12(%rbp), %rsi
	movzwl	(%rdx,%rsi,2), %edx
	subl	%edx, %ecx
	movslq	%ecx, %rcx
	movslq	(%rax,%rcx,4), %rax
	addq	-64(%rbp), %rax
	movq	%rax, -64(%rbp)
# %bb.5:                                # %for.inc
                                        #   in Loop: Header=BB11_3 Depth=2
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB11_3
.LBB11_6:                               # %for.end
                                        #   in Loop: Header=BB11_1 Depth=1
	jmp	.LBB11_7
.LBB11_7:                               # %for.inc28
                                        #   in Loop: Header=BB11_1 Depth=1
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB11_1
.LBB11_8:                               # %for.end30
	movl	-40(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jne	.LBB11_10
# %bb.9:                                # %cond.true
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	jmp	.LBB11_14
.LBB11_10:                              # %cond.false
	movl	-28(%rbp), %eax
	cmpl	-40(%rbp), %eax
	jge	.LBB11_12
# %bb.11:                               # %cond.true35
	movl	-28(%rbp), %eax
	jmp	.LBB11_13
.LBB11_12:                              # %cond.false36
	movl	-28(%rbp), %eax
	subl	$1, %eax
.LBB11_13:                              # %cond.end
.LBB11_14:                              # %cond.end38
	movq	-24(%rbp), %rcx
	movl	%eax, 4(%rcx)
	movl	-4(%rbp), %eax
	movq	-24(%rbp), %rcx
	movl	%eax, 24(%rcx)
	movq	-24(%rbp), %rax
	movl	$4, (%rax)
	movq	input, %rax
	cmpl	$0, 2356(%rax)
	je	.LBB11_16
# %bb.15:                               # %if.then
	movq	-24(%rbp), %rax
	movabsq	$writeIntraPredMode_CABAC, %rcx
	movq	%rcx, 40(%rax)
.LBB11_16:                              # %if.end
	movq	img, %rax
	cmpl	$1, 24(%rax)
	je	.LBB11_18
# %bb.17:                               # %if.then45
	movq	-128(%rbp), %rax
	movq	24(%rax), %rax
	movq	-104(%rbp), %rcx
	movslq	16(%rcx), %rcx
	imulq	$120, %rcx, %rcx
	addq	%rcx, %rax
	movq	%rax, -56(%rbp)
	jmp	.LBB11_19
.LBB11_18:                              # %if.else
	movq	-128(%rbp), %rax
	movq	24(%rax), %rax
	movq	-104(%rbp), %rcx
	movslq	72(%rcx), %rcx
	imulq	$120, %rcx, %rcx
	addq	%rcx, %rax
	movq	%rax, -56(%rbp)
.LBB11_19:                              # %if.end53
	movq	input, %rax
	cmpl	$0, 2356(%rax)
	jne	.LBB11_21
# %bb.20:                               # %if.then57
	movq	-24(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	writeSyntaxElement_Intra4x4PredictionMode
	jmp	.LBB11_22
.LBB11_21:                              # %if.else59
	movq	-56(%rbp), %rax
	movq	112(%rax), %rax
	movq	-24(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	*%rax
.LBB11_22:                              # %if.end61
	movq	-24(%rbp), %rax
	movl	12(%rax), %eax
	movl	%eax, -8(%rbp)
	movq	-24(%rbp), %rax
	addq	$48, %rax
	movq	%rax, -24(%rbp)
	movq	-120(%rbp), %rax
	movl	(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, (%rax)
	movq	input, %rax
	cmpl	$0, 2356(%rax)
	jne	.LBB11_28
# %bb.23:                               # %if.then67
	movl	$0, -32(%rbp)
.LBB11_24:                              # %for.cond68
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$4, -32(%rbp)
	jge	.LBB11_27
# %bb.25:                               # %for.body71
                                        #   in Loop: Header=BB11_24 Depth=1
	movl	-4(%rbp), %esi
	movl	-32(%rbp), %edx
	xorl	%edi, %edi
	xorl	%ecx, %ecx
	callq	writeCoeff4x4_CAVLC
	addl	-8(%rbp), %eax
	movl	%eax, -8(%rbp)
# %bb.26:                               # %for.inc74
                                        #   in Loop: Header=BB11_24 Depth=1
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	.LBB11_24
.LBB11_27:                              # %for.end76
	jmp	.LBB11_29
.LBB11_28:                              # %if.else77
	movl	-4(%rbp), %edi
	movl	$1, %esi
	callq	writeLumaCoeff8x8_CABAC
	addl	-8(%rbp), %eax
	movl	%eax, -8(%rbp)
.LBB11_29:                              # %if.end80
	vcvtsi2sdq	-64(%rbp), %xmm0, %xmm0
	vmovsd	-144(%rbp), %xmm1       # xmm1 = mem[0],zero
	vcvtsi2sdl	-8(%rbp), %xmm0, %xmm2
	vmulsd	%xmm2, %xmm1, %xmm1
	vaddsd	%xmm1, %xmm0, %xmm0
	vmovsd	%xmm0, -112(%rbp)
	movq	img, %rax
	cmpl	$0, 72724(%rax)
	je	.LBB11_31
# %bb.30:                               # %if.then85
	vcvtsi2sdl	-8(%rbp), %xmm0, %xmm0
	vmovsd	%xmm0, -96(%rbp)
	jmp	.LBB11_32
.LBB11_31:                              # %if.else87
	vmovsd	-112(%rbp), %xmm0       # xmm0 = mem[0],zero
	vmovsd	%xmm0, -96(%rbp)
.LBB11_32:                              # %return
	vmovsd	-96(%rbp), %xmm0        # xmm0 = mem[0],zero
	cmpl	$1988145894, -84(%rbp)  # imm = 0x7680B2E6
	jne	.LBB11_34
.LBB11_33:
	addq	$176, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB11_34:                              # %func_exit
	.cfi_def_cfa %rbp, 16
	vmovsd	%xmm0, -136(%rbp)       # 8-byte Spill
	callq	detect_breach
	vmovsd	-136(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	jmp	.LBB11_33
.Lfunc_end11:
	.size	RDCost_for_8x8IntraBlocks.6, .Lfunc_end11-RDCost_for_8x8IntraBlocks.6
	.cfi_endproc
                                        # -- End function
	.globl	RDCost_for_8x8IntraBlocks.7 # -- Begin function RDCost_for_8x8IntraBlocks.7
	.p2align	4, 0x90
	.type	RDCost_for_8x8IntraBlocks.7,@function
RDCost_for_8x8IntraBlocks.7:            # @RDCost_for_8x8IntraBlocks.7
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$176, %rsp
	movl	$2029647445, -76(%rbp)  # imm = 0x78F9F655
	movq	%rdi, -168(%rbp)
	movl	%esi, -4(%rbp)
	movl	%edx, -28(%rbp)
	vmovsd	%xmm0, -144(%rbp)
	vmovsd	%xmm1, -176(%rbp)
	movl	%ecx, -36(%rbp)
	vxorps	%xmm0, %xmm0, %xmm0
	vmovsd	%xmm0, -112(%rbp)
	movq	$0, -64(%rbp)
	movl	-4(%rbp), %eax
	cltd
	movl	$2, %ecx
	idivl	%ecx
	shll	$3, %edx
	movl	%edx, -72(%rbp)
	movl	-4(%rbp), %eax
	cltd
	idivl	%ecx
	shll	$3, %eax
	movl	%eax, -44(%rbp)
	movq	img, %rax
	movl	152(%rax), %eax
	addl	-72(%rbp), %eax
	movl	%eax, -40(%rbp)
	movq	img, %rax
	movl	156(%rax), %eax
	addl	-44(%rbp), %eax
	movl	%eax, -80(%rbp)
	movq	img, %rax
	movl	172(%rax), %eax
	addl	-44(%rbp), %eax
	movl	%eax, -68(%rbp)
	movq	imgY_org, %rax
	movq	%rax, -152(%rbp)
	movq	enc_picture, %rax
	movq	6424(%rax), %rax
	movq	%rax, -160(%rbp)
	movq	img, %rax
	movq	14160(%rax), %rax
	movq	%rax, -104(%rbp)
	movq	img, %rax
	movq	14168(%rax), %rax
	movq	img, %rcx
	movslq	12(%rcx), %rcx
	imulq	$632, %rcx, %rcx        # imm = 0x278
	addq	%rcx, %rax
	movq	%rax, -128(%rbp)
	movq	img, %rax
	addq	$14176, %rax            # imm = 0x3760
	movq	-128(%rbp), %rcx
	movslq	(%rcx), %rcx
	imulq	$48, %rcx, %rcx
	addq	%rcx, %rax
	movq	%rax, -24(%rbp)
	movq	input, %rax
	movslq	2364(%rax), %rax
	movq	assignSE2partition(,%rax,8), %rax
	movq	%rax, -120(%rbp)
	movl	$0, -84(%rbp)
	movl	-4(%rbp), %edi
	leaq	-84(%rbp), %rsi
	movl	$1, %edx
	callq	dct_luma8x8
	movq	-168(%rbp), %rcx
	movl	%eax, (%rcx)
	movl	$0, -16(%rbp)
.LBB12_1:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB12_3 Depth 2
	cmpl	$8, -16(%rbp)
	jge	.LBB12_8
# %bb.2:                                # %for.body
                                        #   in Loop: Header=BB12_1 Depth=1
	movl	-40(%rbp), %eax
	movl	%eax, -12(%rbp)
.LBB12_3:                               # %for.cond9
                                        #   Parent Loop BB12_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-12(%rbp), %eax
	movl	-40(%rbp), %ecx
	addl	$8, %ecx
	cmpl	%ecx, %eax
	jge	.LBB12_6
# %bb.4:                                # %for.body12
                                        #   in Loop: Header=BB12_3 Depth=2
	movq	img, %rax
	movq	71776(%rax), %rax
	movq	-152(%rbp), %rcx
	movl	-68(%rbp), %edx
	addl	-16(%rbp), %edx
	movslq	%edx, %rdx
	movq	(%rcx,%rdx,8), %rcx
	movslq	-12(%rbp), %rdx
	movzwl	(%rcx,%rdx,2), %ecx
	movq	-160(%rbp), %rdx
	movl	-80(%rbp), %esi
	addl	-16(%rbp), %esi
	movslq	%esi, %rsi
	movq	(%rdx,%rsi,8), %rdx
	movslq	-12(%rbp), %rsi
	movzwl	(%rdx,%rsi,2), %edx
	subl	%edx, %ecx
	movslq	%ecx, %rcx
	movslq	(%rax,%rcx,4), %rax
	addq	-64(%rbp), %rax
	movq	%rax, -64(%rbp)
# %bb.5:                                # %for.inc
                                        #   in Loop: Header=BB12_3 Depth=2
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB12_3
.LBB12_6:                               # %for.end
                                        #   in Loop: Header=BB12_1 Depth=1
	jmp	.LBB12_7
.LBB12_7:                               # %for.inc28
                                        #   in Loop: Header=BB12_1 Depth=1
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB12_1
.LBB12_8:                               # %for.end30
	movl	-36(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jne	.LBB12_10
# %bb.9:                                # %cond.true
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	jmp	.LBB12_14
.LBB12_10:                              # %cond.false
	movl	-28(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jge	.LBB12_12
# %bb.11:                               # %cond.true35
	movl	-28(%rbp), %eax
	jmp	.LBB12_13
.LBB12_12:                              # %cond.false36
	movl	-28(%rbp), %eax
	subl	$1, %eax
.LBB12_13:                              # %cond.end
.LBB12_14:                              # %cond.end38
	movq	-24(%rbp), %rcx
	movl	%eax, 4(%rcx)
	movl	-4(%rbp), %eax
	movq	-24(%rbp), %rcx
	movl	%eax, 24(%rcx)
	movq	-24(%rbp), %rax
	movl	$4, (%rax)
	movq	input, %rax
	cmpl	$0, 2356(%rax)
	je	.LBB12_16
# %bb.15:                               # %if.then
	movq	-24(%rbp), %rax
	movabsq	$writeIntraPredMode_CABAC, %rcx
	movq	%rcx, 40(%rax)
.LBB12_16:                              # %if.end
	movq	img, %rax
	cmpl	$1, 24(%rax)
	je	.LBB12_18
# %bb.17:                               # %if.then45
	movq	-104(%rbp), %rax
	movq	24(%rax), %rax
	movq	-120(%rbp), %rcx
	movslq	16(%rcx), %rcx
	imulq	$120, %rcx, %rcx
	addq	%rcx, %rax
	movq	%rax, -56(%rbp)
	jmp	.LBB12_19
.LBB12_18:                              # %if.else
	movq	-104(%rbp), %rax
	movq	24(%rax), %rax
	movq	-120(%rbp), %rcx
	movslq	72(%rcx), %rcx
	imulq	$120, %rcx, %rcx
	addq	%rcx, %rax
	movq	%rax, -56(%rbp)
.LBB12_19:                              # %if.end53
	movq	input, %rax
	cmpl	$0, 2356(%rax)
	jne	.LBB12_21
# %bb.20:                               # %if.then57
	movq	-24(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	writeSyntaxElement_Intra4x4PredictionMode
	jmp	.LBB12_22
.LBB12_21:                              # %if.else59
	movq	-56(%rbp), %rax
	movq	112(%rax), %rax
	movq	-24(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	*%rax
.LBB12_22:                              # %if.end61
	movq	-24(%rbp), %rax
	movl	12(%rax), %eax
	movl	%eax, -8(%rbp)
	movq	-24(%rbp), %rax
	addq	$48, %rax
	movq	%rax, -24(%rbp)
	movq	-128(%rbp), %rax
	movl	(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, (%rax)
	movq	input, %rax
	cmpl	$0, 2356(%rax)
	jne	.LBB12_28
# %bb.23:                               # %if.then67
	movl	$0, -32(%rbp)
.LBB12_24:                              # %for.cond68
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$4, -32(%rbp)
	jge	.LBB12_27
# %bb.25:                               # %for.body71
                                        #   in Loop: Header=BB12_24 Depth=1
	movl	-4(%rbp), %esi
	movl	-32(%rbp), %edx
	xorl	%edi, %edi
	xorl	%ecx, %ecx
	callq	writeCoeff4x4_CAVLC
	addl	-8(%rbp), %eax
	movl	%eax, -8(%rbp)
# %bb.26:                               # %for.inc74
                                        #   in Loop: Header=BB12_24 Depth=1
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	.LBB12_24
.LBB12_27:                              # %for.end76
	jmp	.LBB12_29
.LBB12_28:                              # %if.else77
	movl	-4(%rbp), %edi
	movl	$1, %esi
	callq	writeLumaCoeff8x8_CABAC
	addl	-8(%rbp), %eax
	movl	%eax, -8(%rbp)
.LBB12_29:                              # %if.end80
	vcvtsi2sdq	-64(%rbp), %xmm0, %xmm0
	vmovsd	-144(%rbp), %xmm1       # xmm1 = mem[0],zero
	vcvtsi2sdl	-8(%rbp), %xmm0, %xmm2
	vmulsd	%xmm2, %xmm1, %xmm1
	vaddsd	%xmm1, %xmm0, %xmm0
	vmovsd	%xmm0, -112(%rbp)
	movq	img, %rax
	cmpl	$0, 72724(%rax)
	je	.LBB12_31
# %bb.30:                               # %if.then85
	vcvtsi2sdl	-8(%rbp), %xmm0, %xmm0
	vmovsd	%xmm0, -96(%rbp)
	jmp	.LBB12_32
.LBB12_31:                              # %if.else87
	vmovsd	-112(%rbp), %xmm0       # xmm0 = mem[0],zero
	vmovsd	%xmm0, -96(%rbp)
.LBB12_32:                              # %return
	vmovsd	-96(%rbp), %xmm0        # xmm0 = mem[0],zero
	cmpl	$2029647445, -76(%rbp)  # imm = 0x78F9F655
	jne	.LBB12_34
.LBB12_33:
	addq	$176, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB12_34:                              # %func_exit
	.cfi_def_cfa %rbp, 16
	vmovsd	%xmm0, -136(%rbp)       # 8-byte Spill
	callq	detect_breach
	vmovsd	-136(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	jmp	.LBB12_33
.Lfunc_end12:
	.size	RDCost_for_8x8IntraBlocks.7, .Lfunc_end12-RDCost_for_8x8IntraBlocks.7
	.cfi_endproc
                                        # -- End function
	.globl	RDCost_for_8x8IntraBlocks.8 # -- Begin function RDCost_for_8x8IntraBlocks.8
	.p2align	4, 0x90
	.type	RDCost_for_8x8IntraBlocks.8,@function
RDCost_for_8x8IntraBlocks.8:            # @RDCost_for_8x8IntraBlocks.8
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$176, %rsp
	movl	$1363460184, -84(%rbp)  # imm = 0x5144C058
	movq	%rdi, -144(%rbp)
	movl	%esi, -8(%rbp)
	movl	%edx, -32(%rbp)
	vmovsd	%xmm0, -152(%rbp)
	vmovsd	%xmm1, -176(%rbp)
	movl	%ecx, -40(%rbp)
	vxorps	%xmm0, %xmm0, %xmm0
	vmovsd	%xmm0, -96(%rbp)
	movq	$0, -64(%rbp)
	movl	-8(%rbp), %eax
	cltd
	movl	$2, %ecx
	idivl	%ecx
	shll	$3, %edx
	movl	%edx, -72(%rbp)
	movl	-8(%rbp), %eax
	cltd
	idivl	%ecx
	shll	$3, %eax
	movl	%eax, -44(%rbp)
	movq	img, %rax
	movl	152(%rax), %eax
	addl	-72(%rbp), %eax
	movl	%eax, -36(%rbp)
	movq	img, %rax
	movl	156(%rax), %eax
	addl	-44(%rbp), %eax
	movl	%eax, -80(%rbp)
	movq	img, %rax
	movl	172(%rax), %eax
	addl	-44(%rbp), %eax
	movl	%eax, -76(%rbp)
	movq	imgY_org, %rax
	movq	%rax, -160(%rbp)
	movq	enc_picture, %rax
	movq	6424(%rax), %rax
	movq	%rax, -168(%rbp)
	movq	img, %rax
	movq	14160(%rax), %rax
	movq	%rax, -128(%rbp)
	movq	img, %rax
	movq	14168(%rax), %rax
	movq	img, %rcx
	movslq	12(%rcx), %rcx
	imulq	$632, %rcx, %rcx        # imm = 0x278
	addq	%rcx, %rax
	movq	%rax, -120(%rbp)
	movq	img, %rax
	addq	$14176, %rax            # imm = 0x3760
	movq	-120(%rbp), %rcx
	movslq	(%rcx), %rcx
	imulq	$48, %rcx, %rcx
	addq	%rcx, %rax
	movq	%rax, -24(%rbp)
	movq	input, %rax
	movslq	2364(%rax), %rax
	movq	assignSE2partition(,%rax,8), %rax
	movq	%rax, -104(%rbp)
	movl	$0, -68(%rbp)
	movl	-8(%rbp), %edi
	leaq	-68(%rbp), %rsi
	movl	$1, %edx
	callq	dct_luma8x8
	movq	-144(%rbp), %rcx
	movl	%eax, (%rcx)
	movl	$0, -16(%rbp)
.LBB13_1:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB13_3 Depth 2
	cmpl	$8, -16(%rbp)
	jge	.LBB13_8
# %bb.2:                                # %for.body
                                        #   in Loop: Header=BB13_1 Depth=1
	movl	-36(%rbp), %eax
	movl	%eax, -12(%rbp)
.LBB13_3:                               # %for.cond9
                                        #   Parent Loop BB13_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-12(%rbp), %eax
	movl	-36(%rbp), %ecx
	addl	$8, %ecx
	cmpl	%ecx, %eax
	jge	.LBB13_6
# %bb.4:                                # %for.body12
                                        #   in Loop: Header=BB13_3 Depth=2
	movq	img, %rax
	movq	71776(%rax), %rax
	movq	-160(%rbp), %rcx
	movl	-76(%rbp), %edx
	addl	-16(%rbp), %edx
	movslq	%edx, %rdx
	movq	(%rcx,%rdx,8), %rcx
	movslq	-12(%rbp), %rdx
	movzwl	(%rcx,%rdx,2), %ecx
	movq	-168(%rbp), %rdx
	movl	-80(%rbp), %esi
	addl	-16(%rbp), %esi
	movslq	%esi, %rsi
	movq	(%rdx,%rsi,8), %rdx
	movslq	-12(%rbp), %rsi
	movzwl	(%rdx,%rsi,2), %edx
	subl	%edx, %ecx
	movslq	%ecx, %rcx
	movslq	(%rax,%rcx,4), %rax
	addq	-64(%rbp), %rax
	movq	%rax, -64(%rbp)
# %bb.5:                                # %for.inc
                                        #   in Loop: Header=BB13_3 Depth=2
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB13_3
.LBB13_6:                               # %for.end
                                        #   in Loop: Header=BB13_1 Depth=1
	jmp	.LBB13_7
.LBB13_7:                               # %for.inc28
                                        #   in Loop: Header=BB13_1 Depth=1
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB13_1
.LBB13_8:                               # %for.end30
	movl	-40(%rbp), %eax
	cmpl	-32(%rbp), %eax
	jne	.LBB13_10
# %bb.9:                                # %cond.true
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	jmp	.LBB13_14
.LBB13_10:                              # %cond.false
	movl	-32(%rbp), %eax
	cmpl	-40(%rbp), %eax
	jge	.LBB13_12
# %bb.11:                               # %cond.true35
	movl	-32(%rbp), %eax
	jmp	.LBB13_13
.LBB13_12:                              # %cond.false36
	movl	-32(%rbp), %eax
	subl	$1, %eax
.LBB13_13:                              # %cond.end
.LBB13_14:                              # %cond.end38
	movq	-24(%rbp), %rcx
	movl	%eax, 4(%rcx)
	movl	-8(%rbp), %eax
	movq	-24(%rbp), %rcx
	movl	%eax, 24(%rcx)
	movq	-24(%rbp), %rax
	movl	$4, (%rax)
	movq	input, %rax
	cmpl	$0, 2356(%rax)
	je	.LBB13_16
# %bb.15:                               # %if.then
	movq	-24(%rbp), %rax
	movabsq	$writeIntraPredMode_CABAC, %rcx
	movq	%rcx, 40(%rax)
.LBB13_16:                              # %if.end
	movq	img, %rax
	cmpl	$1, 24(%rax)
	je	.LBB13_18
# %bb.17:                               # %if.then45
	movq	-128(%rbp), %rax
	movq	24(%rax), %rax
	movq	-104(%rbp), %rcx
	movslq	16(%rcx), %rcx
	imulq	$120, %rcx, %rcx
	addq	%rcx, %rax
	movq	%rax, -56(%rbp)
	jmp	.LBB13_19
.LBB13_18:                              # %if.else
	movq	-128(%rbp), %rax
	movq	24(%rax), %rax
	movq	-104(%rbp), %rcx
	movslq	72(%rcx), %rcx
	imulq	$120, %rcx, %rcx
	addq	%rcx, %rax
	movq	%rax, -56(%rbp)
.LBB13_19:                              # %if.end53
	movq	input, %rax
	cmpl	$0, 2356(%rax)
	jne	.LBB13_21
# %bb.20:                               # %if.then57
	movq	-24(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	writeSyntaxElement_Intra4x4PredictionMode
	jmp	.LBB13_22
.LBB13_21:                              # %if.else59
	movq	-56(%rbp), %rax
	movq	112(%rax), %rax
	movq	-24(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	*%rax
.LBB13_22:                              # %if.end61
	movq	-24(%rbp), %rax
	movl	12(%rax), %eax
	movl	%eax, -4(%rbp)
	movq	-24(%rbp), %rax
	addq	$48, %rax
	movq	%rax, -24(%rbp)
	movq	-120(%rbp), %rax
	movl	(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, (%rax)
	movq	input, %rax
	cmpl	$0, 2356(%rax)
	jne	.LBB13_28
# %bb.23:                               # %if.then67
	movl	$0, -28(%rbp)
.LBB13_24:                              # %for.cond68
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$4, -28(%rbp)
	jge	.LBB13_27
# %bb.25:                               # %for.body71
                                        #   in Loop: Header=BB13_24 Depth=1
	movl	-8(%rbp), %esi
	movl	-28(%rbp), %edx
	xorl	%edi, %edi
	xorl	%ecx, %ecx
	callq	writeCoeff4x4_CAVLC
	addl	-4(%rbp), %eax
	movl	%eax, -4(%rbp)
# %bb.26:                               # %for.inc74
                                        #   in Loop: Header=BB13_24 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB13_24
.LBB13_27:                              # %for.end76
	jmp	.LBB13_29
.LBB13_28:                              # %if.else77
	movl	-8(%rbp), %edi
	movl	$1, %esi
	callq	writeLumaCoeff8x8_CABAC
	addl	-4(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB13_29:                              # %if.end80
	vcvtsi2sdq	-64(%rbp), %xmm0, %xmm0
	vmovsd	-152(%rbp), %xmm1       # xmm1 = mem[0],zero
	vcvtsi2sdl	-4(%rbp), %xmm0, %xmm2
	vmulsd	%xmm2, %xmm1, %xmm1
	vaddsd	%xmm1, %xmm0, %xmm0
	vmovsd	%xmm0, -96(%rbp)
	movq	img, %rax
	cmpl	$0, 72724(%rax)
	je	.LBB13_31
# %bb.30:                               # %if.then85
	vcvtsi2sdl	-4(%rbp), %xmm0, %xmm0
	vmovsd	%xmm0, -112(%rbp)
	jmp	.LBB13_32
.LBB13_31:                              # %if.else87
	vmovsd	-96(%rbp), %xmm0        # xmm0 = mem[0],zero
	vmovsd	%xmm0, -112(%rbp)
.LBB13_32:                              # %return
	vmovsd	-112(%rbp), %xmm0       # xmm0 = mem[0],zero
	cmpl	$1363460184, -84(%rbp)  # imm = 0x5144C058
	jne	.LBB13_34
.LBB13_33:
	addq	$176, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB13_34:                              # %func_exit
	.cfi_def_cfa %rbp, 16
	vmovsd	%xmm0, -136(%rbp)       # 8-byte Spill
	callq	detect_breach
	vmovsd	-136(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	jmp	.LBB13_33
.Lfunc_end13:
	.size	RDCost_for_8x8IntraBlocks.8, .Lfunc_end13-RDCost_for_8x8IntraBlocks.8
	.cfi_endproc
                                        # -- End function
	.globl	LowPassForIntra8x8Pred.9 # -- Begin function LowPassForIntra8x8Pred.9
	.p2align	4, 0x90
	.type	LowPassForIntra8x8Pred.9,@function
LowPassForIntra8x8Pred.9:               # @LowPassForIntra8x8Pred.9
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$144, %rsp
	movl	$1693719343, -32(%rbp)  # imm = 0x64F41B2F
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%edx, -28(%rbp)
	movl	%ecx, -24(%rbp)
	movl	$0, -4(%rbp)
.LBB14_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$25, -4(%rbp)
	jge	.LBB14_4
# %bb.2:                                # %for.body
                                        #   in Loop: Header=BB14_1 Depth=1
	movq	-16(%rbp), %rax
	movslq	-4(%rbp), %rcx
	movl	(%rax,%rcx,4), %eax
	movslq	-4(%rbp), %rcx
	movl	%eax, -144(%rbp,%rcx,4)
# %bb.3:                                # %for.inc
                                        #   in Loop: Header=BB14_1 Depth=1
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB14_1
.LBB14_4:                               # %for.end
	cmpl	$0, -28(%rbp)
	je	.LBB14_13
# %bb.5:                                # %if.then
	cmpl	$0, -20(%rbp)
	je	.LBB14_7
# %bb.6:                                # %if.then4
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	movq	-16(%rbp), %rcx
	movl	4(%rcx), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	movq	-16(%rbp), %rcx
	addl	8(%rcx), %eax
	addl	$2, %eax
	sarl	$2, %eax
	movl	%eax, -140(%rbp)
	jmp	.LBB14_8
.LBB14_7:                               # %if.else
	movq	-16(%rbp), %rax
	movl	4(%rax), %eax
	movq	-16(%rbp), %rcx
	movl	4(%rcx), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	movq	-16(%rbp), %rcx
	addl	8(%rcx), %eax
	addl	$2, %eax
	sarl	$2, %eax
	movl	%eax, -140(%rbp)
.LBB14_8:                               # %if.end
	movl	$2, -4(%rbp)
.LBB14_9:                               # %for.cond26
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$16, -4(%rbp)
	jge	.LBB14_12
# %bb.10:                               # %for.body28
                                        #   in Loop: Header=BB14_9 Depth=1
	movq	-16(%rbp), %rax
	movl	-4(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rcx
	movl	(%rax,%rcx,4), %eax
	movq	-16(%rbp), %rcx
	movslq	-4(%rbp), %rdx
	movl	(%rcx,%rdx,4), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	movq	-16(%rbp), %rcx
	movl	-4(%rbp), %edx
	addl	$1, %edx
	movslq	%edx, %rdx
	addl	(%rcx,%rdx,4), %eax
	addl	$2, %eax
	sarl	$2, %eax
	movslq	-4(%rbp), %rcx
	movl	%eax, -144(%rbp,%rcx,4)
# %bb.11:                               # %for.inc46
                                        #   in Loop: Header=BB14_9 Depth=1
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB14_9
.LBB14_12:                              # %for.end48
	movq	-16(%rbp), %rax
	movl	64(%rax), %eax
	movq	-16(%rbp), %rcx
	movl	64(%rcx), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	movq	-16(%rbp), %rcx
	addl	60(%rcx), %eax
	addl	$2, %eax
	sarl	$2, %eax
	movl	%eax, -80(%rbp)
.LBB14_13:                              # %if.end58
	cmpl	$0, -20(%rbp)
	je	.LBB14_24
# %bb.14:                               # %if.then60
	cmpl	$0, -28(%rbp)
	je	.LBB14_17
# %bb.15:                               # %land.lhs.true
	cmpl	$0, -24(%rbp)
	je	.LBB14_17
# %bb.16:                               # %if.then63
	movq	-16(%rbp), %rax
	movl	68(%rax), %eax
	movq	-16(%rbp), %rcx
	movl	(%rcx), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	movq	-16(%rbp), %rcx
	addl	4(%rcx), %eax
	addl	$2, %eax
	sarl	$2, %eax
	movl	%eax, -144(%rbp)
	jmp	.LBB14_23
.LBB14_17:                              # %if.else73
	cmpl	$0, -28(%rbp)
	je	.LBB14_19
# %bb.18:                               # %if.then75
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	movq	-16(%rbp), %rcx
	movl	(%rcx), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	movq	-16(%rbp), %rcx
	addl	4(%rcx), %eax
	addl	$2, %eax
	sarl	$2, %eax
	movl	%eax, -144(%rbp)
	jmp	.LBB14_22
.LBB14_19:                              # %if.else85
	cmpl	$0, -24(%rbp)
	je	.LBB14_21
# %bb.20:                               # %if.then87
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	movq	-16(%rbp), %rcx
	movl	(%rcx), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	movq	-16(%rbp), %rcx
	addl	68(%rcx), %eax
	addl	$2, %eax
	sarl	$2, %eax
	movl	%eax, -144(%rbp)
.LBB14_21:                              # %if.end97
	jmp	.LBB14_22
.LBB14_22:                              # %if.end98
	jmp	.LBB14_23
.LBB14_23:                              # %if.end99
	jmp	.LBB14_24
.LBB14_24:                              # %if.end100
	cmpl	$0, -24(%rbp)
	je	.LBB14_33
# %bb.25:                               # %if.then102
	cmpl	$0, -20(%rbp)
	je	.LBB14_27
# %bb.26:                               # %if.then104
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	movq	-16(%rbp), %rcx
	movl	68(%rcx), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	movq	-16(%rbp), %rcx
	addl	72(%rcx), %eax
	addl	$2, %eax
	sarl	$2, %eax
	movl	%eax, -76(%rbp)
	jmp	.LBB14_28
.LBB14_27:                              # %if.else114
	movq	-16(%rbp), %rax
	movl	68(%rax), %eax
	movq	-16(%rbp), %rcx
	movl	68(%rcx), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	movq	-16(%rbp), %rcx
	addl	72(%rcx), %eax
	addl	$2, %eax
	sarl	$2, %eax
	movl	%eax, -76(%rbp)
.LBB14_28:                              # %if.end124
	movl	$18, -4(%rbp)
.LBB14_29:                              # %for.cond125
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$24, -4(%rbp)
	jge	.LBB14_32
# %bb.30:                               # %for.body127
                                        #   in Loop: Header=BB14_29 Depth=1
	movq	-16(%rbp), %rax
	movl	-4(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rcx
	movl	(%rax,%rcx,4), %eax
	movq	-16(%rbp), %rcx
	movslq	-4(%rbp), %rdx
	movl	(%rcx,%rdx,4), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	movq	-16(%rbp), %rcx
	movl	-4(%rbp), %edx
	addl	$1, %edx
	movslq	%edx, %rdx
	addl	(%rcx,%rdx,4), %eax
	addl	$2, %eax
	sarl	$2, %eax
	movslq	-4(%rbp), %rcx
	movl	%eax, -144(%rbp,%rcx,4)
# %bb.31:                               # %for.inc146
                                        #   in Loop: Header=BB14_29 Depth=1
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB14_29
.LBB14_32:                              # %for.end148
	movq	-16(%rbp), %rax
	movl	92(%rax), %eax
	movq	-16(%rbp), %rcx
	movl	96(%rcx), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	movq	-16(%rbp), %rcx
	addl	96(%rcx), %eax
	addl	$2, %eax
	sarl	$2, %eax
	movl	%eax, -48(%rbp)
.LBB14_33:                              # %if.end158
	movl	$0, -4(%rbp)
.LBB14_34:                              # %for.cond159
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$25, -4(%rbp)
	jge	.LBB14_37
# %bb.35:                               # %for.body161
                                        #   in Loop: Header=BB14_34 Depth=1
	movslq	-4(%rbp), %rax
	movl	-144(%rbp,%rax,4), %eax
	movq	-16(%rbp), %rcx
	movslq	-4(%rbp), %rdx
	movl	%eax, (%rcx,%rdx,4)
# %bb.36:                               # %for.inc166
                                        #   in Loop: Header=BB14_34 Depth=1
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB14_34
.LBB14_37:                              # %for.end168
	cmpl	$1693719343, -32(%rbp)  # imm = 0x64F41B2F
	jne	.LBB14_39
.LBB14_38:
	addq	$144, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB14_39:                              # %func_exit
	.cfi_def_cfa %rbp, 16
	callq	detect_breach
	jmp	.LBB14_38
.Lfunc_end14:
	.size	LowPassForIntra8x8Pred.9, .Lfunc_end14-LowPassForIntra8x8Pred.9
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function Mode_Decision_for_new_8x8IntraBlocks.10
.LCPI15_0:
	.quad	5055640609639927018     # double 1.0E+30
.LCPI15_1:
	.quad	4616189618054758400     # double 4
	.text
	.globl	Mode_Decision_for_new_8x8IntraBlocks.10
	.p2align	4, 0x90
	.type	Mode_Decision_for_new_8x8IntraBlocks.10,@function
Mode_Decision_for_new_8x8IntraBlocks.10: # @Mode_Decision_for_new_8x8IntraBlocks.10
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$1144, %rsp             # imm = 0x478
	.cfi_offset %rbx, -24
	vmovsd	.LCPI15_0(%rip), %xmm1  # xmm1 = mem[0],zero
	movl	$1559993514, -192(%rbp) # imm = 0x5CFB9CAA
	movl	%edi, -32(%rbp)
	vmovsd	%xmm0, -152(%rbp)
	movq	%rsi, -168(%rbp)
	movl	$0, -60(%rbp)
	movl	$0, -112(%rbp)
	vxorps	%xmm0, %xmm0, %xmm0
	vmovsd	%xmm0, -144(%rbp)
	movl	-32(%rbp), %eax
	cltd
	movl	$2, %ecx
	idivl	%ecx
	shll	$3, %edx
	movl	%edx, -40(%rbp)
	movl	-32(%rbp), %eax
	cltd
	idivl	%ecx
	shll	$3, %eax
	movl	%eax, -36(%rbp)
	movq	img, %rax
	movl	152(%rax), %eax
	addl	-40(%rbp), %eax
	movl	%eax, -68(%rbp)
	movq	img, %rax
	movl	156(%rax), %eax
	addl	-36(%rbp), %eax
	movl	%eax, -44(%rbp)
	movq	img, %rax
	movl	168(%rax), %eax
	addl	-40(%rbp), %eax
	movl	%eax, -96(%rbp)
	movq	img, %rax
	movl	172(%rax), %eax
	addl	-36(%rbp), %eax
	movl	%eax, -92(%rbp)
	movl	-68(%rbp), %eax
	cltd
	movl	$4, %ecx
	idivl	%ecx
	movl	%eax, -180(%rbp)
	movl	-44(%rbp), %eax
	cltd
	idivl	%ecx
	movl	%eax, -196(%rbp)
	vmovsd	%xmm1, -136(%rbp)
	movq	imgY_org, %rax
	movq	%rax, -160(%rbp)
	movq	img, %rax
	movq	14168(%rax), %rax
	movq	img, %rdx
	movslq	12(%rdx), %rdx
	imulq	$632, %rdx, %rdx        # imm = 0x278
	addq	%rdx, %rax
	movl	524(%rax), %eax
	movl	%eax, -56(%rbp)
	movq	img, %rax
	movl	12(%rax), %edi
	movl	-40(%rbp), %eax
	cltd
	idivl	%ecx
	movl	%eax, %esi
	movl	-36(%rbp), %eax
	cltd
	idivl	%ecx
	movl	%eax, %edx
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	xorl	%r8d, %r8d
	leaq	-248(%rbp), %r9
	callq	getLuma4x4Neighbour
	movq	img, %rax
	movl	12(%rax), %edi
	movl	-40(%rbp), %eax
	cltd
	movl	$4, %ecx
	idivl	%ecx
	movl	%eax, %esi
	movl	-36(%rbp), %eax
	cltd
	idivl	%ecx
	movl	%eax, %edx
	movl	$0, %ecx
	movl	$4294967295, %r8d       # imm = 0xFFFFFFFF
	leaq	-224(%rbp), %r9
	callq	getLuma4x4Neighbour
	movq	input, %rax
	cmpl	$0, 216(%rax)
	je	.LBB15_8
# %bb.1:                                # %if.then
	cmpl	$0, -224(%rbp)
	je	.LBB15_3
# %bb.2:                                # %cond.true
	movq	img, %rax
	movq	71784(%rax), %rax
	movslq	-220(%rbp), %rcx
	movl	(%rax,%rcx,4), %eax
	jmp	.LBB15_4
.LBB15_3:                               # %cond.false
	xorl	%eax, %eax
	jmp	.LBB15_4
.LBB15_4:                               # %cond.end
	movl	%eax, -224(%rbp)
	cmpl	$0, -248(%rbp)
	je	.LBB15_6
# %bb.5:                                # %cond.true19
	movq	img, %rax
	movq	71784(%rax), %rax
	movslq	-244(%rbp), %rcx
	movl	(%rax,%rcx,4), %eax
	jmp	.LBB15_7
.LBB15_6:                               # %cond.false24
	xorl	%eax, %eax
	jmp	.LBB15_7
.LBB15_7:                               # %cond.end25
	movl	%eax, -248(%rbp)
.LBB15_8:                               # %if.end
	movl	-32(%rbp), %eax
	cltd
	movl	$2, %ecx
	idivl	%ecx
	cmpl	$0, %eax
	je	.LBB15_13
# %bb.9:                                # %if.then30
	cmpl	$0, -224(%rbp)
	je	.LBB15_11
# %bb.10:                               # %cond.true33
	movq	img, %rax
	movq	112(%rax), %rax
	movslq	-208(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movslq	-204(%rbp), %rcx
	movl	(%rax,%rcx,4), %eax
	jmp	.LBB15_12
.LBB15_11:                              # %cond.false38
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	jmp	.LBB15_12
.LBB15_12:                              # %cond.end39
	movl	%eax, -124(%rbp)
	jmp	.LBB15_17
.LBB15_13:                              # %if.else
	cmpl	$0, -224(%rbp)
	je	.LBB15_15
# %bb.14:                               # %cond.true43
	movq	img, %rax
	movq	104(%rax), %rax
	movslq	-208(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movslq	-204(%rbp), %rcx
	movl	(%rax,%rcx,4), %eax
	jmp	.LBB15_16
.LBB15_15:                              # %cond.false50
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	jmp	.LBB15_16
.LBB15_16:                              # %cond.end51
	movl	%eax, -124(%rbp)
.LBB15_17:                              # %if.end53
	movl	-32(%rbp), %eax
	cltd
	movl	$2, %ecx
	idivl	%ecx
	cmpl	$0, %edx
	je	.LBB15_22
# %bb.18:                               # %if.then56
	cmpl	$0, -248(%rbp)
	je	.LBB15_20
# %bb.19:                               # %cond.true59
	movq	img, %rax
	movq	112(%rax), %rax
	movslq	-232(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movslq	-228(%rbp), %rcx
	movl	(%rax,%rcx,4), %eax
	jmp	.LBB15_21
.LBB15_20:                              # %cond.false67
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	jmp	.LBB15_21
.LBB15_21:                              # %cond.end68
	movl	%eax, -120(%rbp)
	jmp	.LBB15_26
.LBB15_22:                              # %if.else70
	cmpl	$0, -248(%rbp)
	je	.LBB15_24
# %bb.23:                               # %cond.true73
	movq	img, %rax
	movq	104(%rax), %rax
	movslq	-232(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movslq	-228(%rbp), %rcx
	movl	(%rax,%rcx,4), %eax
	jmp	.LBB15_25
.LBB15_24:                              # %cond.false81
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	jmp	.LBB15_25
.LBB15_25:                              # %cond.end82
	movl	%eax, -120(%rbp)
.LBB15_26:                              # %if.end84
	cmpl	$0, -124(%rbp)
	jl	.LBB15_28
# %bb.27:                               # %lor.lhs.false
	cmpl	$0, -120(%rbp)
	jge	.LBB15_29
.LBB15_28:                              # %cond.true86
	movl	$2, %eax
	jmp	.LBB15_33
.LBB15_29:                              # %cond.false87
	movl	-124(%rbp), %eax
	cmpl	-120(%rbp), %eax
	jge	.LBB15_31
# %bb.30:                               # %cond.true89
	movl	-124(%rbp), %eax
	jmp	.LBB15_32
.LBB15_31:                              # %cond.false90
	movl	-120(%rbp), %eax
.LBB15_32:                              # %cond.end91
.LBB15_33:                              # %cond.end93
	movl	%eax, -108(%rbp)
	movq	-168(%rbp), %rax
	movl	$2147483647, (%rax)     # imm = 0x7FFFFFFF
	movl	-68(%rbp), %edi
	movl	-44(%rbp), %esi
	leaq	-184(%rbp), %rdx
	leaq	-176(%rbp), %rcx
	leaq	-172(%rbp), %r8
	callq	intrapred_luma8x8
	movl	$0, -48(%rbp)
.LBB15_34:                              # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB15_46 Depth 2
                                        #       Child Loop BB15_48 Depth 3
                                        #     Child Loop BB15_61 Depth 2
                                        #       Child Loop BB15_63 Depth 3
                                        #     Child Loop BB15_70 Depth 2
                                        #       Child Loop BB15_72 Depth 3
                                        #         Child Loop BB15_74 Depth 4
                                        #     Child Loop BB15_82 Depth 2
                                        #       Child Loop BB15_84 Depth 3
                                        #     Child Loop BB15_92 Depth 2
                                        #       Child Loop BB15_94 Depth 3
                                        #     Child Loop BB15_100 Depth 2
                                        #       Child Loop BB15_102 Depth 3
                                        #     Child Loop BB15_108 Depth 2
                                        #       Child Loop BB15_110 Depth 3
                                        #     Child Loop BB15_116 Depth 2
                                        #       Child Loop BB15_118 Depth 3
                                        #         Child Loop BB15_120 Depth 4
                                        #       Child Loop BB15_126 Depth 3
                                        #         Child Loop BB15_128 Depth 4
                                        #       Child Loop BB15_134 Depth 3
                                        #         Child Loop BB15_136 Depth 4
                                        #     Child Loop BB15_144 Depth 2
                                        #       Child Loop BB15_146 Depth 3
                                        #     Child Loop BB15_179 Depth 2
                                        #       Child Loop BB15_181 Depth 3
                                        #     Child Loop BB15_188 Depth 2
                                        #       Child Loop BB15_190 Depth 3
                                        #         Child Loop BB15_192 Depth 4
                                        #     Child Loop BB15_200 Depth 2
                                        #       Child Loop BB15_202 Depth 3
                                        #         Child Loop BB15_204 Depth 4
                                        #       Child Loop BB15_210 Depth 3
                                        #         Child Loop BB15_212 Depth 4
                                        #       Child Loop BB15_218 Depth 3
                                        #         Child Loop BB15_220 Depth 4
                                        #           Child Loop BB15_222 Depth 5
                                        #     Child Loop BB15_232 Depth 2
                                        #       Child Loop BB15_234 Depth 3
	cmpl	$9, -48(%rbp)
	jge	.LBB15_245
# %bb.35:                               # %for.body
                                        #   in Loop: Header=BB15_34 Depth=1
	cmpl	$2, -48(%rbp)
	je	.LBB15_44
# %bb.36:                               # %lor.lhs.false97
                                        #   in Loop: Header=BB15_34 Depth=1
	cmpl	$0, -48(%rbp)
	je	.LBB15_39
# %bb.37:                               # %lor.lhs.false99
                                        #   in Loop: Header=BB15_34 Depth=1
	cmpl	$7, -48(%rbp)
	je	.LBB15_39
# %bb.38:                               # %lor.lhs.false101
                                        #   in Loop: Header=BB15_34 Depth=1
	cmpl	$3, -48(%rbp)
	jne	.LBB15_40
.LBB15_39:                              # %land.lhs.true
                                        #   in Loop: Header=BB15_34 Depth=1
	cmpl	$0, -176(%rbp)
	jne	.LBB15_44
.LBB15_40:                              # %lor.lhs.false104
                                        #   in Loop: Header=BB15_34 Depth=1
	cmpl	$1, -48(%rbp)
	je	.LBB15_42
# %bb.41:                               # %lor.lhs.false106
                                        #   in Loop: Header=BB15_34 Depth=1
	cmpl	$8, -48(%rbp)
	jne	.LBB15_43
.LBB15_42:                              # %land.lhs.true108
                                        #   in Loop: Header=BB15_34 Depth=1
	cmpl	$0, -184(%rbp)
	jne	.LBB15_44
.LBB15_43:                              # %lor.lhs.false110
                                        #   in Loop: Header=BB15_34 Depth=1
	cmpl	$0, -172(%rbp)
	je	.LBB15_243
.LBB15_44:                              # %if.then112
                                        #   in Loop: Header=BB15_34 Depth=1
	movq	input, %rax
	cmpl	$0, 2464(%rax)
	jne	.LBB15_59
# %bb.45:                               # %if.then114
                                        #   in Loop: Header=BB15_34 Depth=1
	movl	$0, -16(%rbp)
	movl	$0, -52(%rbp)
.LBB15_46:                              # %for.cond115
                                        #   Parent Loop BB15_34 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB15_48 Depth 3
	cmpl	$8, -16(%rbp)
	jge	.LBB15_53
# %bb.47:                               # %for.body117
                                        #   in Loop: Header=BB15_46 Depth=2
	movl	$0, -12(%rbp)
.LBB15_48:                              # %for.cond118
                                        #   Parent Loop BB15_34 Depth=1
                                        #     Parent Loop BB15_46 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	cmpl	$8, -12(%rbp)
	jge	.LBB15_51
# %bb.49:                               # %for.body120
                                        #   in Loop: Header=BB15_48 Depth=3
	movq	-160(%rbp), %rax
	movl	-92(%rbp), %ecx
	addl	-16(%rbp), %ecx
	movslq	%ecx, %rcx
	movq	(%rax,%rcx,8), %rax
	movl	-96(%rbp), %ecx
	addl	-12(%rbp), %ecx
	movslq	%ecx, %rcx
	movzwl	(%rax,%rcx,2), %eax
	movq	img, %rcx
	addq	$7352, %rcx             # imm = 0x1CB8
	movslq	-48(%rbp), %rdx
	shlq	$7, %rdx
	addq	%rdx, %rcx
	movslq	-16(%rbp), %rdx
	shlq	$4, %rdx
	addq	%rdx, %rcx
	movslq	-12(%rbp), %rdx
	movzwl	(%rcx,%rdx,2), %ecx
	subl	%ecx, %eax
	movslq	-52(%rbp), %rcx
	movl	%eax, -640(%rbp,%rcx,4)
# %bb.50:                               # %for.inc
                                        #   in Loop: Header=BB15_48 Depth=3
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB15_48
.LBB15_51:                              # %for.end
                                        #   in Loop: Header=BB15_46 Depth=2
	jmp	.LBB15_52
.LBB15_52:                              # %for.inc137
                                        #   in Loop: Header=BB15_46 Depth=2
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB15_46
.LBB15_53:                              # %for.end139
                                        #   in Loop: Header=BB15_34 Depth=1
	movl	-48(%rbp), %eax
	cmpl	-108(%rbp), %eax
	jne	.LBB15_55
# %bb.54:                               # %cond.true142
                                        #   in Loop: Header=BB15_34 Depth=1
	xorl	%eax, %eax
	jmp	.LBB15_56
.LBB15_55:                              # %cond.false143
                                        #   in Loop: Header=BB15_34 Depth=1
	vmovsd	.LCPI15_1(%rip), %xmm0  # xmm0 = mem[0],zero
	vmulsd	-152(%rbp), %xmm0, %xmm0
	vroundsd	$9, %xmm0, %xmm0, %xmm0
	vcvttsd2si	%xmm0, %eax
.LBB15_56:                              # %cond.end146
                                        #   in Loop: Header=BB15_34 Depth=1
	leaq	-640(%rbp), %rdi
	movl	%eax, -116(%rbp)
	movq	input, %rax
	movl	24(%rax), %esi
	callq	SATD8X8
	addl	-116(%rbp), %eax
	movl	%eax, -116(%rbp)
	movl	-116(%rbp), %eax
	movq	-168(%rbp), %rcx
	cmpl	(%rcx), %eax
	jge	.LBB15_58
# %bb.57:                               # %if.then151
                                        #   in Loop: Header=BB15_34 Depth=1
	movl	-48(%rbp), %eax
	movl	%eax, -60(%rbp)
	movl	-116(%rbp), %eax
	movq	-168(%rbp), %rcx
	movl	%eax, (%rcx)
.LBB15_58:                              # %if.end152
                                        #   in Loop: Header=BB15_34 Depth=1
	jmp	.LBB15_242
.LBB15_59:                              # %if.else153
                                        #   in Loop: Header=BB15_34 Depth=1
	movq	img, %rax
	cmpl	$0, 72724(%rax)
	jne	.LBB15_91
# %bb.60:                               # %if.then155
                                        #   in Loop: Header=BB15_34 Depth=1
	movl	$0, -16(%rbp)
.LBB15_61:                              # %for.cond156
                                        #   Parent Loop BB15_34 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB15_63 Depth 3
	cmpl	$8, -16(%rbp)
	jge	.LBB15_68
# %bb.62:                               # %for.body159
                                        #   in Loop: Header=BB15_61 Depth=2
	movl	$0, -12(%rbp)
.LBB15_63:                              # %for.cond160
                                        #   Parent Loop BB15_34 Depth=1
                                        #     Parent Loop BB15_61 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	cmpl	$8, -12(%rbp)
	jge	.LBB15_66
# %bb.64:                               # %for.body163
                                        #   in Loop: Header=BB15_63 Depth=3
	movq	img, %rax
	addq	$7352, %rax             # imm = 0x1CB8
	movslq	-48(%rbp), %rcx
	shlq	$7, %rcx
	addq	%rcx, %rax
	movslq	-16(%rbp), %rcx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movslq	-12(%rbp), %rcx
	movw	(%rax,%rcx,2), %ax
	movq	img, %rcx
	addq	$12600, %rcx            # imm = 0x3138
	movl	-40(%rbp), %edx
	addl	-12(%rbp), %edx
	movslq	%edx, %rdx
	shlq	$5, %rdx
	addq	%rdx, %rcx
	movl	-36(%rbp), %edx
	addl	-16(%rbp), %edx
	movslq	%edx, %rdx
	movw	%ax, (%rcx,%rdx,2)
	movq	-160(%rbp), %rax
	movl	-92(%rbp), %ecx
	addl	-16(%rbp), %ecx
	movslq	%ecx, %rcx
	movq	(%rax,%rcx,8), %rax
	movl	-96(%rbp), %ecx
	addl	-12(%rbp), %ecx
	movslq	%ecx, %rcx
	movzwl	(%rax,%rcx,2), %eax
	movq	img, %rcx
	addq	$7352, %rcx             # imm = 0x1CB8
	movslq	-48(%rbp), %rdx
	shlq	$7, %rdx
	addq	%rdx, %rcx
	movslq	-16(%rbp), %rdx
	shlq	$4, %rdx
	addq	%rdx, %rcx
	movslq	-12(%rbp), %rdx
	movzwl	(%rcx,%rdx,2), %ecx
	subl	%ecx, %eax
	movq	img, %rcx
	addq	$13112, %rcx            # imm = 0x3338
	movslq	-12(%rbp), %rdx
	shlq	$6, %rdx
	addq	%rdx, %rcx
	movslq	-16(%rbp), %rdx
	movl	%eax, (%rcx,%rdx,4)
# %bb.65:                               # %for.inc197
                                        #   in Loop: Header=BB15_63 Depth=3
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB15_63
.LBB15_66:                              # %for.end199
                                        #   in Loop: Header=BB15_61 Depth=2
	jmp	.LBB15_67
.LBB15_67:                              # %for.inc200
                                        #   in Loop: Header=BB15_61 Depth=2
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB15_61
.LBB15_68:                              # %for.end202
                                        #   in Loop: Header=BB15_34 Depth=1
	movb	$0, %al
	callq	store_coding_state_cs_cm
	movl	-32(%rbp), %esi
	movl	-48(%rbp), %edx
	vmovsd	-152(%rbp), %xmm0       # xmm0 = mem[0],zero
	vmovsd	-136(%rbp), %xmm1       # xmm1 = mem[0],zero
	movl	-108(%rbp), %ecx
	leaq	-128(%rbp), %rdi
	callq	RDCost_for_8x8IntraBlocks
	vmovsd	%xmm0, -144(%rbp)
	vmovsd	-136(%rbp), %xmm1       # xmm1 = mem[0],zero
	vucomisd	%xmm0, %xmm1
	jbe	.LBB15_90
# %bb.69:                               # %if.then206
                                        #   in Loop: Header=BB15_34 Depth=1
	movl	$0, -16(%rbp)
.LBB15_70:                              # %for.cond207
                                        #   Parent Loop BB15_34 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB15_72 Depth 3
                                        #         Child Loop BB15_74 Depth 4
	cmpl	$2, -16(%rbp)
	jge	.LBB15_81
# %bb.71:                               # %for.body210
                                        #   in Loop: Header=BB15_70 Depth=2
	movl	$0, -12(%rbp)
.LBB15_72:                              # %for.cond211
                                        #   Parent Loop BB15_34 Depth=1
                                        #     Parent Loop BB15_70 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB15_74 Depth 4
	cmpl	$65, -12(%rbp)
	jge	.LBB15_79
# %bb.73:                               # %for.body214
                                        #   in Loop: Header=BB15_72 Depth=3
	movl	$0, -52(%rbp)
.LBB15_74:                              # %for.cond215
                                        #   Parent Loop BB15_34 Depth=1
                                        #     Parent Loop BB15_70 Depth=2
                                        #       Parent Loop BB15_72 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	cmpl	$4, -52(%rbp)
	jge	.LBB15_77
# %bb.75:                               # %for.body218
                                        #   in Loop: Header=BB15_74 Depth=4
	movq	img, %rax
	movq	14136(%rax), %rax
	movslq	-32(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movslq	-52(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movslq	-16(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movslq	-12(%rbp), %rcx
	movl	(%rax,%rcx,4), %eax
	movq	cofAC8x8, %rcx
	movslq	-32(%rbp), %rdx
	movq	(%rcx,%rdx,8), %rcx
	movslq	-52(%rbp), %rdx
	movq	(%rcx,%rdx,8), %rcx
	movslq	-16(%rbp), %rdx
	movq	(%rcx,%rdx,8), %rcx
	movslq	-12(%rbp), %rdx
	movl	%eax, (%rcx,%rdx,4)
# %bb.76:                               # %for.inc235
                                        #   in Loop: Header=BB15_74 Depth=4
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB15_74
.LBB15_77:                              # %for.end237
                                        #   in Loop: Header=BB15_72 Depth=3
	jmp	.LBB15_78
.LBB15_78:                              # %for.inc238
                                        #   in Loop: Header=BB15_72 Depth=3
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB15_72
.LBB15_79:                              # %for.end240
                                        #   in Loop: Header=BB15_70 Depth=2
	jmp	.LBB15_80
.LBB15_80:                              # %for.inc241
                                        #   in Loop: Header=BB15_70 Depth=2
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB15_70
.LBB15_81:                              # %for.end243
                                        #   in Loop: Header=BB15_34 Depth=1
	movl	$0, -24(%rbp)
.LBB15_82:                              # %for.cond244
                                        #   Parent Loop BB15_34 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB15_84 Depth 3
	cmpl	$8, -24(%rbp)
	jge	.LBB15_89
# %bb.83:                               # %for.body247
                                        #   in Loop: Header=BB15_82 Depth=2
	movl	$0, -28(%rbp)
.LBB15_84:                              # %for.cond248
                                        #   Parent Loop BB15_34 Depth=1
                                        #     Parent Loop BB15_82 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	cmpl	$8, -28(%rbp)
	jge	.LBB15_87
# %bb.85:                               # %for.body251
                                        #   in Loop: Header=BB15_84 Depth=3
	movq	enc_picture, %rax
	movq	6424(%rax), %rax
	movl	-44(%rbp), %ecx
	addl	-24(%rbp), %ecx
	movslq	%ecx, %rcx
	movq	(%rax,%rcx,8), %rax
	movl	-68(%rbp), %ecx
	addl	-28(%rbp), %ecx
	movslq	%ecx, %rcx
	movw	(%rax,%rcx,2), %ax
	movslq	-24(%rbp), %rcx
	shlq	$4, %rcx
	leaq	-384(%rbp), %rdx
	addq	%rcx, %rdx
	movslq	-28(%rbp), %rcx
	movw	%ax, (%rdx,%rcx,2)
# %bb.86:                               # %for.inc262
                                        #   in Loop: Header=BB15_84 Depth=3
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB15_84
.LBB15_87:                              # %for.end264
                                        #   in Loop: Header=BB15_82 Depth=2
	jmp	.LBB15_88
.LBB15_88:                              # %for.inc265
                                        #   in Loop: Header=BB15_82 Depth=2
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB15_82
.LBB15_89:                              # %for.end267
                                        #   in Loop: Header=BB15_34 Depth=1
	movl	-128(%rbp), %eax
	movl	%eax, -112(%rbp)
	vmovsd	-144(%rbp), %xmm0       # xmm0 = mem[0],zero
	vmovsd	%xmm0, -136(%rbp)
	movl	-48(%rbp), %eax
	movl	%eax, -60(%rbp)
.LBB15_90:                              # %if.end268
                                        #   in Loop: Header=BB15_34 Depth=1
	movb	$0, %al
	callq	reset_coding_state_cs_cm
	jmp	.LBB15_241
.LBB15_91:                              # %if.else269
                                        #   in Loop: Header=BB15_34 Depth=1
	movl	$0, -16(%rbp)
.LBB15_92:                              # %for.cond270
                                        #   Parent Loop BB15_34 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB15_94 Depth 3
	cmpl	$8, -16(%rbp)
	jge	.LBB15_99
# %bb.93:                               # %for.body273
                                        #   in Loop: Header=BB15_92 Depth=2
	movl	$0, -12(%rbp)
.LBB15_94:                              # %for.cond274
                                        #   Parent Loop BB15_34 Depth=1
                                        #     Parent Loop BB15_92 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	cmpl	$8, -12(%rbp)
	jge	.LBB15_97
# %bb.95:                               # %for.body277
                                        #   in Loop: Header=BB15_94 Depth=3
	movq	imgUV_org, %rax
	movq	(%rax), %rax
	movl	-92(%rbp), %ecx
	addl	-16(%rbp), %ecx
	movslq	%ecx, %rcx
	movq	(%rax,%rcx,8), %rax
	movl	-96(%rbp), %ecx
	addl	-12(%rbp), %ecx
	movslq	%ecx, %rcx
	movzwl	(%rax,%rcx,2), %eax
	movq	img, %rcx
	addq	$8504, %rcx             # imm = 0x2138
	movslq	-56(%rbp), %rdx
	shlq	$9, %rdx
	addq	%rdx, %rcx
	movl	-40(%rbp), %edx
	addl	-12(%rbp), %edx
	movslq	%edx, %rdx
	shlq	$5, %rdx
	addq	%rdx, %rcx
	movl	-36(%rbp), %edx
	addl	-16(%rbp), %edx
	movslq	%edx, %rdx
	movzwl	(%rcx,%rdx,2), %ecx
	subl	%ecx, %eax
	movl	%eax, -64(%rbp)
	movq	imgY_org, %rax
	movl	-92(%rbp), %ecx
	addl	-16(%rbp), %ecx
	movslq	%ecx, %rcx
	movq	(%rax,%rcx,8), %rax
	movl	-96(%rbp), %ecx
	addl	-12(%rbp), %ecx
	movslq	%ecx, %rcx
	movzwl	(%rax,%rcx,2), %eax
	movq	img, %rcx
	addq	$7352, %rcx             # imm = 0x1CB8
	movslq	-48(%rbp), %rdx
	shlq	$7, %rdx
	addq	%rdx, %rcx
	movslq	-16(%rbp), %rdx
	shlq	$4, %rdx
	addq	%rdx, %rcx
	movslq	-12(%rbp), %rdx
	movzwl	(%rcx,%rdx,2), %ecx
	subl	%ecx, %eax
	movl	%eax, -84(%rbp)
	movq	imgUV_org, %rax
	movq	8(%rax), %rax
	movl	-92(%rbp), %ecx
	addl	-16(%rbp), %ecx
	movslq	%ecx, %rcx
	movq	(%rax,%rcx,8), %rax
	movl	-96(%rbp), %ecx
	addl	-12(%rbp), %ecx
	movslq	%ecx, %rcx
	movzwl	(%rax,%rcx,2), %eax
	movq	img, %rcx
	addq	$8504, %rcx             # imm = 0x2138
	addq	$2048, %rcx             # imm = 0x800
	movslq	-56(%rbp), %rdx
	shlq	$9, %rdx
	addq	%rdx, %rcx
	movl	-40(%rbp), %edx
	addl	-12(%rbp), %edx
	movslq	%edx, %rdx
	shlq	$5, %rdx
	addq	%rdx, %rcx
	movl	-36(%rbp), %edx
	addl	-16(%rbp), %edx
	movslq	%edx, %rdx
	movzwl	(%rcx,%rdx,2), %ecx
	subl	%ecx, %eax
	movl	%eax, -76(%rbp)
	movl	-76(%rbp), %eax
	subl	-64(%rbp), %eax
	movslq	-12(%rbp), %rcx
	shlq	$6, %rcx
	movabsq	$resTrans_R, %rdx
	movq	%rdx, %rsi
	addq	%rcx, %rsi
	movslq	-16(%rbp), %rcx
	movl	%eax, (%rsi,%rcx,4)
	movl	-64(%rbp), %eax
	movslq	-12(%rbp), %rcx
	shlq	$6, %rcx
	addq	%rcx, %rdx
	movslq	-16(%rbp), %rcx
	movl	(%rdx,%rcx,4), %ecx
	sarl	$1, %ecx
	addl	%ecx, %eax
	movl	%eax, -88(%rbp)
	movl	-84(%rbp), %eax
	subl	-88(%rbp), %eax
	movslq	-12(%rbp), %rcx
	shlq	$6, %rcx
	movabsq	$resTrans_B, %rdx
	movq	%rdx, %rsi
	addq	%rcx, %rsi
	movslq	-16(%rbp), %rcx
	movl	%eax, (%rsi,%rcx,4)
	movl	-88(%rbp), %eax
	movslq	-12(%rbp), %rcx
	shlq	$6, %rcx
	addq	%rcx, %rdx
	movslq	-16(%rbp), %rcx
	movl	(%rdx,%rcx,4), %ecx
	sarl	$1, %ecx
	addl	%ecx, %eax
	movslq	-12(%rbp), %rcx
	shlq	$6, %rcx
	movabsq	$resTrans_G, %rdx
	addq	%rcx, %rdx
	movslq	-16(%rbp), %rcx
	movl	%eax, (%rdx,%rcx,4)
# %bb.96:                               # %for.inc358
                                        #   in Loop: Header=BB15_94 Depth=3
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB15_94
.LBB15_97:                              # %for.end360
                                        #   in Loop: Header=BB15_92 Depth=2
	jmp	.LBB15_98
.LBB15_98:                              # %for.inc361
                                        #   in Loop: Header=BB15_92 Depth=2
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB15_92
.LBB15_99:                              # %for.end363
                                        #   in Loop: Header=BB15_34 Depth=1
	movl	$0, -16(%rbp)
.LBB15_100:                             # %for.cond364
                                        #   Parent Loop BB15_34 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB15_102 Depth 3
	cmpl	$8, -16(%rbp)
	jge	.LBB15_107
# %bb.101:                              # %for.body367
                                        #   in Loop: Header=BB15_100 Depth=2
	movl	$0, -12(%rbp)
.LBB15_102:                             # %for.cond368
                                        #   Parent Loop BB15_34 Depth=1
                                        #     Parent Loop BB15_100 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	cmpl	$8, -12(%rbp)
	jge	.LBB15_105
# %bb.103:                              # %for.body371
                                        #   in Loop: Header=BB15_102 Depth=3
	movslq	-12(%rbp), %rax
	shlq	$6, %rax
	movabsq	$resTrans_G, %rcx
	addq	%rax, %rcx
	movslq	-16(%rbp), %rax
	movl	(%rcx,%rax,4), %eax
	movq	img, %rcx
	addq	$13112, %rcx            # imm = 0x3338
	movslq	-12(%rbp), %rdx
	shlq	$6, %rdx
	addq	%rdx, %rcx
	movslq	-16(%rbp), %rdx
	movl	%eax, (%rcx,%rdx,4)
# %bb.104:                              # %for.inc381
                                        #   in Loop: Header=BB15_102 Depth=3
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB15_102
.LBB15_105:                             # %for.end383
                                        #   in Loop: Header=BB15_100 Depth=2
	jmp	.LBB15_106
.LBB15_106:                             # %for.inc384
                                        #   in Loop: Header=BB15_100 Depth=2
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB15_100
.LBB15_107:                             # %for.end386
                                        #   in Loop: Header=BB15_34 Depth=1
	movb	$0, %al
	callq	store_coding_state_cs_cm
	movl	-32(%rbp), %esi
	movl	-48(%rbp), %edx
	vmovsd	-152(%rbp), %xmm0       # xmm0 = mem[0],zero
	vmovsd	-136(%rbp), %xmm1       # xmm1 = mem[0],zero
	movl	-108(%rbp), %ecx
	leaq	-128(%rbp), %rdi
	callq	RDCost_for_8x8IntraBlocks
	vcvttsd2si	%xmm0, %eax
	movl	%eax, -104(%rbp)
	movb	$0, %al
	callq	reset_coding_state_cs_cm
	movl	$0, -16(%rbp)
.LBB15_108:                             # %for.cond389
                                        #   Parent Loop BB15_34 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB15_110 Depth 3
	cmpl	$8, -16(%rbp)
	jge	.LBB15_115
# %bb.109:                              # %for.body392
                                        #   in Loop: Header=BB15_108 Depth=2
	movl	$0, -12(%rbp)
.LBB15_110:                             # %for.cond393
                                        #   Parent Loop BB15_34 Depth=1
                                        #     Parent Loop BB15_108 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	cmpl	$8, -12(%rbp)
	jge	.LBB15_113
# %bb.111:                              # %for.body396
                                        #   in Loop: Header=BB15_110 Depth=3
	movq	img, %rax
	addq	$13112, %rax            # imm = 0x3338
	movslq	-12(%rbp), %rcx
	shlq	$6, %rcx
	addq	%rcx, %rax
	movslq	-16(%rbp), %rcx
	movl	(%rax,%rcx,4), %eax
	movslq	-12(%rbp), %rcx
	shlq	$6, %rcx
	movabsq	$rec_resG, %rdx
	addq	%rcx, %rdx
	movslq	-16(%rbp), %rcx
	movl	%eax, (%rdx,%rcx,4)
# %bb.112:                              # %for.inc406
                                        #   in Loop: Header=BB15_110 Depth=3
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB15_110
.LBB15_113:                             # %for.end408
                                        #   in Loop: Header=BB15_108 Depth=2
	jmp	.LBB15_114
.LBB15_114:                             # %for.inc409
                                        #   in Loop: Header=BB15_108 Depth=2
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB15_108
.LBB15_115:                             # %for.end411
                                        #   in Loop: Header=BB15_34 Depth=1
	movb	$0, %al
	callq	store_coding_state_cs_cm
	movl	$0, -20(%rbp)
.LBB15_116:                             # %for.cond412
                                        #   Parent Loop BB15_34 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB15_118 Depth 3
                                        #         Child Loop BB15_120 Depth 4
                                        #       Child Loop BB15_126 Depth 3
                                        #         Child Loop BB15_128 Depth 4
                                        #       Child Loop BB15_134 Depth 3
                                        #         Child Loop BB15_136 Depth 4
	cmpl	$4, -20(%rbp)
	jge	.LBB15_143
# %bb.117:                              # %for.body415
                                        #   in Loop: Header=BB15_116 Depth=2
	movl	-20(%rbp), %eax
	cltd
	movl	$2, %ecx
	idivl	%ecx
	shll	$2, %edx
	movl	%edx, -72(%rbp)
	movl	-20(%rbp), %eax
	cltd
	idivl	%ecx
	shll	$2, %eax
	movl	%eax, -80(%rbp)
	movl	$0, -16(%rbp)
.LBB15_118:                             # %for.cond420
                                        #   Parent Loop BB15_34 Depth=1
                                        #     Parent Loop BB15_116 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB15_120 Depth 4
	cmpl	$4, -16(%rbp)
	jge	.LBB15_125
# %bb.119:                              # %for.body423
                                        #   in Loop: Header=BB15_118 Depth=3
	movl	$0, -12(%rbp)
.LBB15_120:                             # %for.cond424
                                        #   Parent Loop BB15_34 Depth=1
                                        #     Parent Loop BB15_116 Depth=2
                                        #       Parent Loop BB15_118 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	cmpl	$4, -12(%rbp)
	jge	.LBB15_123
# %bb.121:                              # %for.body427
                                        #   in Loop: Header=BB15_120 Depth=4
	movl	-12(%rbp), %eax
	addl	-72(%rbp), %eax
	cltq
	shlq	$6, %rax
	movabsq	$resTrans_R, %rcx
	addq	%rax, %rcx
	movl	-16(%rbp), %eax
	addl	-80(%rbp), %eax
	cltq
	movl	(%rcx,%rax,4), %eax
	movq	img, %rcx
	addq	$13112, %rcx            # imm = 0x3338
	movslq	-12(%rbp), %rdx
	shlq	$6, %rdx
	addq	%rdx, %rcx
	movslq	-16(%rbp), %rdx
	movl	%eax, (%rcx,%rdx,4)
# %bb.122:                              # %for.inc439
                                        #   in Loop: Header=BB15_120 Depth=4
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB15_120
.LBB15_123:                             # %for.end441
                                        #   in Loop: Header=BB15_118 Depth=3
	jmp	.LBB15_124
.LBB15_124:                             # %for.inc442
                                        #   in Loop: Header=BB15_118 Depth=3
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB15_118
.LBB15_125:                             # %for.end444
                                        #   in Loop: Header=BB15_116 Depth=2
	movl	-32(%rbp), %edi
	addl	$4, %edi
	movl	-20(%rbp), %esi
	xorl	%edx, %edx
	callq	RDCost_for_4x4Blocks_Chroma
	addl	-104(%rbp), %eax
	movl	%eax, -104(%rbp)
	movl	$0, -16(%rbp)
.LBB15_126:                             # %for.cond448
                                        #   Parent Loop BB15_34 Depth=1
                                        #     Parent Loop BB15_116 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB15_128 Depth 4
	cmpl	$4, -16(%rbp)
	jge	.LBB15_133
# %bb.127:                              # %for.body451
                                        #   in Loop: Header=BB15_126 Depth=3
	movl	$0, -12(%rbp)
.LBB15_128:                             # %for.cond452
                                        #   Parent Loop BB15_34 Depth=1
                                        #     Parent Loop BB15_116 Depth=2
                                        #       Parent Loop BB15_126 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	cmpl	$4, -12(%rbp)
	jge	.LBB15_131
# %bb.129:                              # %for.body455
                                        #   in Loop: Header=BB15_128 Depth=4
	movq	img, %rax
	addq	$13112, %rax            # imm = 0x3338
	movslq	-12(%rbp), %rcx
	shlq	$6, %rcx
	addq	%rcx, %rax
	movslq	-16(%rbp), %rcx
	movl	(%rax,%rcx,4), %eax
	movl	-12(%rbp), %ecx
	addl	-72(%rbp), %ecx
	movslq	%ecx, %rcx
	shlq	$6, %rcx
	movabsq	$rec_resR, %rdx
	addq	%rcx, %rdx
	movl	-16(%rbp), %ecx
	addl	-80(%rbp), %ecx
	movslq	%ecx, %rcx
	movl	%eax, (%rdx,%rcx,4)
	movl	-12(%rbp), %eax
	addl	-72(%rbp), %eax
	cltq
	shlq	$6, %rax
	movabsq	$resTrans_B, %rcx
	addq	%rax, %rcx
	movl	-16(%rbp), %eax
	addl	-80(%rbp), %eax
	cltq
	movl	(%rcx,%rax,4), %eax
	movq	img, %rcx
	addq	$13112, %rcx            # imm = 0x3338
	movslq	-12(%rbp), %rdx
	shlq	$6, %rdx
	addq	%rdx, %rcx
	movslq	-16(%rbp), %rdx
	movl	%eax, (%rcx,%rdx,4)
# %bb.130:                              # %for.inc478
                                        #   in Loop: Header=BB15_128 Depth=4
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB15_128
.LBB15_131:                             # %for.end480
                                        #   in Loop: Header=BB15_126 Depth=3
	jmp	.LBB15_132
.LBB15_132:                             # %for.inc481
                                        #   in Loop: Header=BB15_126 Depth=3
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB15_126
.LBB15_133:                             # %for.end483
                                        #   in Loop: Header=BB15_116 Depth=2
	movl	-32(%rbp), %edi
	addl	$8, %edi
	movl	-20(%rbp), %esi
	movl	$1, %edx
	callq	RDCost_for_4x4Blocks_Chroma
	addl	-104(%rbp), %eax
	movl	%eax, -104(%rbp)
	movl	$0, -16(%rbp)
.LBB15_134:                             # %for.cond487
                                        #   Parent Loop BB15_34 Depth=1
                                        #     Parent Loop BB15_116 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB15_136 Depth 4
	cmpl	$4, -16(%rbp)
	jge	.LBB15_141
# %bb.135:                              # %for.body490
                                        #   in Loop: Header=BB15_134 Depth=3
	movl	$0, -12(%rbp)
.LBB15_136:                             # %for.cond491
                                        #   Parent Loop BB15_34 Depth=1
                                        #     Parent Loop BB15_116 Depth=2
                                        #       Parent Loop BB15_134 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	cmpl	$4, -12(%rbp)
	jge	.LBB15_139
# %bb.137:                              # %for.body494
                                        #   in Loop: Header=BB15_136 Depth=4
	movq	img, %rax
	addq	$13112, %rax            # imm = 0x3338
	movslq	-12(%rbp), %rcx
	shlq	$6, %rcx
	addq	%rcx, %rax
	movslq	-16(%rbp), %rcx
	movl	(%rax,%rcx,4), %eax
	movl	-12(%rbp), %ecx
	addl	-72(%rbp), %ecx
	movslq	%ecx, %rcx
	shlq	$6, %rcx
	movabsq	$rec_resB, %rdx
	addq	%rcx, %rdx
	movl	-16(%rbp), %ecx
	addl	-80(%rbp), %ecx
	movslq	%ecx, %rcx
	movl	%eax, (%rdx,%rcx,4)
# %bb.138:                              # %for.inc506
                                        #   in Loop: Header=BB15_136 Depth=4
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB15_136
.LBB15_139:                             # %for.end508
                                        #   in Loop: Header=BB15_134 Depth=3
	jmp	.LBB15_140
.LBB15_140:                             # %for.inc509
                                        #   in Loop: Header=BB15_134 Depth=3
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB15_134
.LBB15_141:                             # %for.end511
                                        #   in Loop: Header=BB15_116 Depth=2
	jmp	.LBB15_142
.LBB15_142:                             # %for.inc512
                                        #   in Loop: Header=BB15_116 Depth=2
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB15_116
.LBB15_143:                             # %for.end514
                                        #   in Loop: Header=BB15_34 Depth=1
	movb	$0, %al
	callq	reset_coding_state_cs_cm
	movl	$0, -16(%rbp)
.LBB15_144:                             # %for.cond515
                                        #   Parent Loop BB15_34 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB15_146 Depth 3
	cmpl	$8, -16(%rbp)
	jge	.LBB15_178
# %bb.145:                              # %for.body518
                                        #   in Loop: Header=BB15_144 Depth=2
	movl	$0, -12(%rbp)
.LBB15_146:                             # %for.cond519
                                        #   Parent Loop BB15_34 Depth=1
                                        #     Parent Loop BB15_144 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	cmpl	$8, -12(%rbp)
	jge	.LBB15_176
# %bb.147:                              # %for.body522
                                        #   in Loop: Header=BB15_146 Depth=3
	xorl	%eax, %eax
	movslq	-12(%rbp), %rcx
	shlq	$6, %rcx
	movabsq	$rec_resG, %rdx
	addq	%rcx, %rdx
	movslq	-16(%rbp), %rcx
	movl	(%rdx,%rcx,4), %ecx
	movslq	-12(%rbp), %rdx
	shlq	$6, %rdx
	movabsq	$rec_resB, %rsi
	movq	%rsi, %rdi
	addq	%rdx, %rdi
	movslq	-16(%rbp), %rdx
	movl	(%rdi,%rdx,4), %edx
	sarl	$1, %edx
	subl	%edx, %ecx
	movl	%ecx, -88(%rbp)
	movslq	-12(%rbp), %rcx
	shlq	$6, %rcx
	addq	%rcx, %rsi
	movslq	-16(%rbp), %rcx
	movl	(%rsi,%rcx,4), %ecx
	addl	-88(%rbp), %ecx
	movl	%ecx, -84(%rbp)
	movl	-88(%rbp), %ecx
	movslq	-12(%rbp), %rdx
	shlq	$6, %rdx
	movabsq	$rec_resR, %rsi
	movq	%rsi, %rdi
	addq	%rdx, %rdi
	movslq	-16(%rbp), %rdx
	movl	(%rdi,%rdx,4), %edx
	sarl	$1, %edx
	subl	%edx, %ecx
	movl	%ecx, -64(%rbp)
	movl	-64(%rbp), %ecx
	movslq	-12(%rbp), %rdx
	shlq	$6, %rdx
	addq	%rdx, %rsi
	movslq	-16(%rbp), %rdx
	addl	(%rsi,%rdx,4), %ecx
	movl	%ecx, -76(%rbp)
	movq	img, %rcx
	movl	72688(%rcx), %ecx
	movl	-64(%rbp), %edx
	movq	img, %rsi
	addq	$8504, %rsi             # imm = 0x2138
	movslq	-56(%rbp), %rdi
	shlq	$9, %rdi
	addq	%rdi, %rsi
	movl	-40(%rbp), %edi
	addl	-12(%rbp), %edi
	movslq	%edi, %rdi
	shlq	$5, %rdi
	addq	%rdi, %rsi
	movl	-36(%rbp), %edi
	addl	-16(%rbp), %edi
	movslq	%edi, %rdi
	movzwl	(%rsi,%rdi,2), %esi
	addl	%esi, %edx
	cmpl	%edx, %eax
	jle	.LBB15_149
# %bb.148:                              # %cond.true563
                                        #   in Loop: Header=BB15_146 Depth=3
	xorl	%eax, %eax
	jmp	.LBB15_150
.LBB15_149:                             # %cond.false564
                                        #   in Loop: Header=BB15_146 Depth=3
	movl	-64(%rbp), %eax
	movq	img, %rdx
	addq	$8504, %rdx             # imm = 0x2138
	movslq	-56(%rbp), %rsi
	shlq	$9, %rsi
	addq	%rsi, %rdx
	movl	-40(%rbp), %esi
	addl	-12(%rbp), %esi
	movslq	%esi, %rsi
	shlq	$5, %rsi
	addq	%rsi, %rdx
	movl	-36(%rbp), %esi
	addl	-16(%rbp), %esi
	movslq	%esi, %rsi
	movzwl	(%rdx,%rsi,2), %edx
	addl	%edx, %eax
.LBB15_150:                             # %cond.end577
                                        #   in Loop: Header=BB15_146 Depth=3
	cmpl	%eax, %ecx
	jge	.LBB15_152
# %bb.151:                              # %cond.true581
                                        #   in Loop: Header=BB15_146 Depth=3
	movq	img, %rax
	movl	72688(%rax), %eax
	jmp	.LBB15_156
.LBB15_152:                             # %cond.false583
                                        #   in Loop: Header=BB15_146 Depth=3
	xorl	%eax, %eax
	movl	-64(%rbp), %ecx
	movq	img, %rdx
	addq	$8504, %rdx             # imm = 0x2138
	movslq	-56(%rbp), %rsi
	shlq	$9, %rsi
	addq	%rsi, %rdx
	movl	-40(%rbp), %esi
	addl	-12(%rbp), %esi
	movslq	%esi, %rsi
	shlq	$5, %rsi
	addq	%rsi, %rdx
	movl	-36(%rbp), %esi
	addl	-16(%rbp), %esi
	movslq	%esi, %rsi
	movzwl	(%rdx,%rsi,2), %edx
	addl	%edx, %ecx
	cmpl	%ecx, %eax
	jle	.LBB15_154
# %bb.153:                              # %cond.true598
                                        #   in Loop: Header=BB15_146 Depth=3
	xorl	%eax, %eax
	jmp	.LBB15_155
.LBB15_154:                             # %cond.false599
                                        #   in Loop: Header=BB15_146 Depth=3
	movl	-64(%rbp), %eax
	movq	img, %rcx
	addq	$8504, %rcx             # imm = 0x2138
	movslq	-56(%rbp), %rdx
	shlq	$9, %rdx
	addq	%rdx, %rcx
	movl	-40(%rbp), %edx
	addl	-12(%rbp), %edx
	movslq	%edx, %rdx
	shlq	$5, %rdx
	addq	%rdx, %rcx
	movl	-36(%rbp), %edx
	addl	-16(%rbp), %edx
	movslq	%edx, %rdx
	movzwl	(%rcx,%rdx,2), %ecx
	addl	%ecx, %eax
.LBB15_155:                             # %cond.end612
                                        #   in Loop: Header=BB15_146 Depth=3
.LBB15_156:                             # %cond.end614
                                        #   in Loop: Header=BB15_146 Depth=3
	xorl	%ecx, %ecx
	movq	enc_picture, %rdx
	movq	6464(%rdx), %rdx
	movq	(%rdx), %rdx
	movl	-44(%rbp), %esi
	addl	-16(%rbp), %esi
	movslq	%esi, %rsi
	movq	(%rdx,%rsi,8), %rdx
	movl	-68(%rbp), %esi
	addl	-12(%rbp), %esi
	movslq	%esi, %rsi
	movw	%ax, (%rdx,%rsi,2)
	movq	img, %rax
	movl	72684(%rax), %eax
	movl	-84(%rbp), %edx
	movq	img, %rsi
	addq	$7352, %rsi             # imm = 0x1CB8
	movslq	-48(%rbp), %rdi
	shlq	$7, %rdi
	addq	%rdi, %rsi
	movslq	-16(%rbp), %rdi
	shlq	$4, %rdi
	addq	%rdi, %rsi
	movslq	-12(%rbp), %rdi
	movzwl	(%rsi,%rdi,2), %esi
	addl	%esi, %edx
	cmpl	%edx, %ecx
	jle	.LBB15_158
# %bb.157:                              # %cond.true635
                                        #   in Loop: Header=BB15_146 Depth=3
	xorl	%ecx, %ecx
	jmp	.LBB15_159
.LBB15_158:                             # %cond.false636
                                        #   in Loop: Header=BB15_146 Depth=3
	movl	-84(%rbp), %ecx
	movq	img, %rdx
	addq	$7352, %rdx             # imm = 0x1CB8
	movslq	-48(%rbp), %rsi
	shlq	$7, %rsi
	addq	%rsi, %rdx
	movslq	-16(%rbp), %rsi
	shlq	$4, %rsi
	addq	%rsi, %rdx
	movslq	-12(%rbp), %rsi
	movzwl	(%rdx,%rsi,2), %edx
	addl	%edx, %ecx
.LBB15_159:                             # %cond.end646
                                        #   in Loop: Header=BB15_146 Depth=3
	cmpl	%ecx, %eax
	jge	.LBB15_161
# %bb.160:                              # %cond.true650
                                        #   in Loop: Header=BB15_146 Depth=3
	movq	img, %rax
	movl	72684(%rax), %eax
	jmp	.LBB15_165
.LBB15_161:                             # %cond.false652
                                        #   in Loop: Header=BB15_146 Depth=3
	xorl	%eax, %eax
	movl	-84(%rbp), %ecx
	movq	img, %rdx
	addq	$7352, %rdx             # imm = 0x1CB8
	movslq	-48(%rbp), %rsi
	shlq	$7, %rsi
	addq	%rsi, %rdx
	movslq	-16(%rbp), %rsi
	shlq	$4, %rsi
	addq	%rsi, %rdx
	movslq	-12(%rbp), %rsi
	movzwl	(%rdx,%rsi,2), %edx
	addl	%edx, %ecx
	cmpl	%ecx, %eax
	jle	.LBB15_163
# %bb.162:                              # %cond.true664
                                        #   in Loop: Header=BB15_146 Depth=3
	xorl	%eax, %eax
	jmp	.LBB15_164
.LBB15_163:                             # %cond.false665
                                        #   in Loop: Header=BB15_146 Depth=3
	movl	-84(%rbp), %eax
	movq	img, %rcx
	addq	$7352, %rcx             # imm = 0x1CB8
	movslq	-48(%rbp), %rdx
	shlq	$7, %rdx
	addq	%rdx, %rcx
	movslq	-16(%rbp), %rdx
	shlq	$4, %rdx
	addq	%rdx, %rcx
	movslq	-12(%rbp), %rdx
	movzwl	(%rcx,%rdx,2), %ecx
	addl	%ecx, %eax
.LBB15_164:                             # %cond.end675
                                        #   in Loop: Header=BB15_146 Depth=3
.LBB15_165:                             # %cond.end677
                                        #   in Loop: Header=BB15_146 Depth=3
	xorl	%ecx, %ecx
	movq	enc_picture, %rdx
	movq	6424(%rdx), %rdx
	movl	-44(%rbp), %esi
	addl	-16(%rbp), %esi
	movslq	%esi, %rsi
	movq	(%rdx,%rsi,8), %rdx
	movl	-68(%rbp), %esi
	addl	-12(%rbp), %esi
	movslq	%esi, %rsi
	movw	%ax, (%rdx,%rsi,2)
	movq	img, %rax
	movl	72688(%rax), %eax
	movl	-76(%rbp), %edx
	movq	img, %rsi
	addq	$8504, %rsi             # imm = 0x2138
	addq	$2048, %rsi             # imm = 0x800
	movslq	-56(%rbp), %rdi
	shlq	$9, %rdi
	addq	%rdi, %rsi
	movl	-40(%rbp), %edi
	addl	-12(%rbp), %edi
	movslq	%edi, %rdi
	shlq	$5, %rdi
	addq	%rdi, %rsi
	movl	-36(%rbp), %edi
	addl	-16(%rbp), %edi
	movslq	%edi, %rdi
	movzwl	(%rsi,%rdi,2), %esi
	addl	%esi, %edx
	cmpl	%edx, %ecx
	jle	.LBB15_167
# %bb.166:                              # %cond.true702
                                        #   in Loop: Header=BB15_146 Depth=3
	xorl	%ecx, %ecx
	jmp	.LBB15_168
.LBB15_167:                             # %cond.false703
                                        #   in Loop: Header=BB15_146 Depth=3
	movl	-76(%rbp), %ecx
	movq	img, %rdx
	addq	$8504, %rdx             # imm = 0x2138
	addq	$2048, %rdx             # imm = 0x800
	movslq	-56(%rbp), %rsi
	shlq	$9, %rsi
	addq	%rsi, %rdx
	movl	-40(%rbp), %esi
	addl	-12(%rbp), %esi
	movslq	%esi, %rsi
	shlq	$5, %rsi
	addq	%rsi, %rdx
	movl	-36(%rbp), %esi
	addl	-16(%rbp), %esi
	movslq	%esi, %rsi
	movzwl	(%rdx,%rsi,2), %edx
	addl	%edx, %ecx
.LBB15_168:                             # %cond.end716
                                        #   in Loop: Header=BB15_146 Depth=3
	cmpl	%ecx, %eax
	jge	.LBB15_170
# %bb.169:                              # %cond.true720
                                        #   in Loop: Header=BB15_146 Depth=3
	movq	img, %rax
	movl	72688(%rax), %eax
	jmp	.LBB15_174
.LBB15_170:                             # %cond.false722
                                        #   in Loop: Header=BB15_146 Depth=3
	xorl	%eax, %eax
	movl	-76(%rbp), %ecx
	movq	img, %rdx
	addq	$8504, %rdx             # imm = 0x2138
	addq	$2048, %rdx             # imm = 0x800
	movslq	-56(%rbp), %rsi
	shlq	$9, %rsi
	addq	%rsi, %rdx
	movl	-40(%rbp), %esi
	addl	-12(%rbp), %esi
	movslq	%esi, %rsi
	shlq	$5, %rsi
	addq	%rsi, %rdx
	movl	-36(%rbp), %esi
	addl	-16(%rbp), %esi
	movslq	%esi, %rsi
	movzwl	(%rdx,%rsi,2), %edx
	addl	%edx, %ecx
	cmpl	%ecx, %eax
	jle	.LBB15_172
# %bb.171:                              # %cond.true737
                                        #   in Loop: Header=BB15_146 Depth=3
	xorl	%eax, %eax
	jmp	.LBB15_173
.LBB15_172:                             # %cond.false738
                                        #   in Loop: Header=BB15_146 Depth=3
	movl	-76(%rbp), %eax
	movq	img, %rcx
	addq	$8504, %rcx             # imm = 0x2138
	addq	$2048, %rcx             # imm = 0x800
	movslq	-56(%rbp), %rdx
	shlq	$9, %rdx
	addq	%rdx, %rcx
	movl	-40(%rbp), %edx
	addl	-12(%rbp), %edx
	movslq	%edx, %rdx
	shlq	$5, %rdx
	addq	%rdx, %rcx
	movl	-36(%rbp), %edx
	addl	-16(%rbp), %edx
	movslq	%edx, %rdx
	movzwl	(%rcx,%rdx,2), %ecx
	addl	%ecx, %eax
.LBB15_173:                             # %cond.end751
                                        #   in Loop: Header=BB15_146 Depth=3
.LBB15_174:                             # %cond.end753
                                        #   in Loop: Header=BB15_146 Depth=3
	movq	enc_picture, %rcx
	movq	6464(%rcx), %rcx
	movq	8(%rcx), %rcx
	movl	-44(%rbp), %edx
	addl	-16(%rbp), %edx
	movslq	%edx, %rdx
	movq	(%rcx,%rdx,8), %rcx
	movl	-68(%rbp), %edx
	addl	-12(%rbp), %edx
	movslq	%edx, %rdx
	movw	%ax, (%rcx,%rdx,2)
# %bb.175:                              # %for.inc764
                                        #   in Loop: Header=BB15_146 Depth=3
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB15_146
.LBB15_176:                             # %for.end766
                                        #   in Loop: Header=BB15_144 Depth=2
	jmp	.LBB15_177
.LBB15_177:                             # %for.inc767
                                        #   in Loop: Header=BB15_144 Depth=2
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB15_144
.LBB15_178:                             # %for.end769
                                        #   in Loop: Header=BB15_34 Depth=1
	movl	$0, -100(%rbp)
	movl	$0, -24(%rbp)
.LBB15_179:                             # %for.cond770
                                        #   Parent Loop BB15_34 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB15_181 Depth 3
	cmpl	$8, -24(%rbp)
	jge	.LBB15_186
# %bb.180:                              # %for.body773
                                        #   in Loop: Header=BB15_179 Depth=2
	movl	-68(%rbp), %eax
	movl	%eax, -28(%rbp)
.LBB15_181:                             # %for.cond774
                                        #   Parent Loop BB15_34 Depth=1
                                        #     Parent Loop BB15_179 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-28(%rbp), %eax
	movl	-68(%rbp), %ecx
	addl	$8, %ecx
	cmpl	%ecx, %eax
	jge	.LBB15_184
# %bb.182:                              # %for.body778
                                        #   in Loop: Header=BB15_181 Depth=3
	movq	imgY_org, %rax
	movl	-44(%rbp), %ecx
	addl	-24(%rbp), %ecx
	movslq	%ecx, %rcx
	movq	(%rax,%rcx,8), %rax
	movslq	-28(%rbp), %rcx
	movzwl	(%rax,%rcx,2), %eax
	movq	enc_picture, %rcx
	movq	6424(%rcx), %rcx
	movl	-44(%rbp), %edx
	addl	-24(%rbp), %edx
	movslq	%edx, %rdx
	movq	(%rcx,%rdx,8), %rcx
	movslq	-28(%rbp), %rdx
	movzwl	(%rcx,%rdx,2), %ecx
	subl	%ecx, %eax
	movq	imgY_org, %rcx
	movl	-44(%rbp), %edx
	addl	-24(%rbp), %edx
	movslq	%edx, %rdx
	movq	(%rcx,%rdx,8), %rcx
	movslq	-28(%rbp), %rdx
	movzwl	(%rcx,%rdx,2), %ecx
	movq	enc_picture, %rdx
	movq	6424(%rdx), %rdx
	movl	-44(%rbp), %esi
	addl	-24(%rbp), %esi
	movslq	%esi, %rsi
	movq	(%rdx,%rsi,8), %rdx
	movslq	-28(%rbp), %rsi
	movzwl	(%rdx,%rsi,2), %edx
	subl	%edx, %ecx
	imull	%ecx, %eax
	addl	-100(%rbp), %eax
	movl	%eax, -100(%rbp)
	movq	imgUV_org, %rax
	movq	(%rax), %rax
	movl	-44(%rbp), %ecx
	addl	-24(%rbp), %ecx
	movslq	%ecx, %rcx
	movq	(%rax,%rcx,8), %rax
	movslq	-28(%rbp), %rcx
	movzwl	(%rax,%rcx,2), %eax
	movq	enc_picture, %rcx
	movq	6464(%rcx), %rcx
	movq	(%rcx), %rcx
	movl	-44(%rbp), %edx
	addl	-24(%rbp), %edx
	movslq	%edx, %rdx
	movq	(%rcx,%rdx,8), %rcx
	movslq	-28(%rbp), %rdx
	movzwl	(%rcx,%rdx,2), %ecx
	subl	%ecx, %eax
	movq	imgUV_org, %rcx
	movq	(%rcx), %rcx
	movl	-44(%rbp), %edx
	addl	-24(%rbp), %edx
	movslq	%edx, %rdx
	movq	(%rcx,%rdx,8), %rcx
	movslq	-28(%rbp), %rdx
	movzwl	(%rcx,%rdx,2), %ecx
	movq	enc_picture, %rdx
	movq	6464(%rdx), %rdx
	movq	(%rdx), %rdx
	movl	-44(%rbp), %esi
	addl	-24(%rbp), %esi
	movslq	%esi, %rsi
	movq	(%rdx,%rsi,8), %rdx
	movslq	-28(%rbp), %rsi
	movzwl	(%rdx,%rsi,2), %edx
	subl	%edx, %ecx
	imull	%ecx, %eax
	addl	-100(%rbp), %eax
	movl	%eax, -100(%rbp)
	movq	imgUV_org, %rax
	movq	8(%rax), %rax
	movl	-44(%rbp), %ecx
	addl	-24(%rbp), %ecx
	movslq	%ecx, %rcx
	movq	(%rax,%rcx,8), %rax
	movslq	-28(%rbp), %rcx
	movzwl	(%rax,%rcx,2), %eax
	movq	enc_picture, %rcx
	movq	6464(%rcx), %rcx
	movq	8(%rcx), %rcx
	movl	-44(%rbp), %edx
	addl	-24(%rbp), %edx
	movslq	%edx, %rdx
	movq	(%rcx,%rdx,8), %rcx
	movslq	-28(%rbp), %rdx
	movzwl	(%rcx,%rdx,2), %ecx
	subl	%ecx, %eax
	movq	imgUV_org, %rcx
	movq	8(%rcx), %rcx
	movl	-44(%rbp), %edx
	addl	-24(%rbp), %edx
	movslq	%edx, %rdx
	movq	(%rcx,%rdx,8), %rcx
	movslq	-28(%rbp), %rdx
	movzwl	(%rcx,%rdx,2), %ecx
	movq	enc_picture, %rdx
	movq	6464(%rdx), %rdx
	movq	8(%rdx), %rdx
	movl	-44(%rbp), %esi
	addl	-24(%rbp), %esi
	movslq	%esi, %rsi
	movq	(%rdx,%rsi,8), %rdx
	movslq	-28(%rbp), %rsi
	movzwl	(%rdx,%rsi,2), %edx
	subl	%edx, %ecx
	imull	%ecx, %eax
	addl	-100(%rbp), %eax
	movl	%eax, -100(%rbp)
# %bb.183:                              # %for.inc877
                                        #   in Loop: Header=BB15_181 Depth=3
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB15_181
.LBB15_184:                             # %for.end879
                                        #   in Loop: Header=BB15_179 Depth=2
	jmp	.LBB15_185
.LBB15_185:                             # %for.inc880
                                        #   in Loop: Header=BB15_179 Depth=2
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB15_179
.LBB15_186:                             # %for.end882
                                        #   in Loop: Header=BB15_34 Depth=1
	vcvtsi2sdl	-100(%rbp), %xmm0, %xmm0
	vmovsd	-152(%rbp), %xmm1       # xmm1 = mem[0],zero
	vcvtsi2sdl	-104(%rbp), %xmm0, %xmm2
	vmulsd	%xmm2, %xmm1, %xmm1
	vaddsd	%xmm1, %xmm0, %xmm0
	vmovsd	%xmm0, -144(%rbp)
	vmovsd	-144(%rbp), %xmm0       # xmm0 = mem[0],zero
	vmovsd	-136(%rbp), %xmm1       # xmm1 = mem[0],zero
	vucomisd	%xmm0, %xmm1
	jbe	.LBB15_240
# %bb.187:                              # %if.then889
                                        #   in Loop: Header=BB15_34 Depth=1
	movl	$0, -16(%rbp)
.LBB15_188:                             # %for.cond890
                                        #   Parent Loop BB15_34 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB15_190 Depth 3
                                        #         Child Loop BB15_192 Depth 4
	cmpl	$2, -16(%rbp)
	jge	.LBB15_199
# %bb.189:                              # %for.body893
                                        #   in Loop: Header=BB15_188 Depth=2
	movl	$0, -12(%rbp)
.LBB15_190:                             # %for.cond894
                                        #   Parent Loop BB15_34 Depth=1
                                        #     Parent Loop BB15_188 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB15_192 Depth 4
	cmpl	$65, -12(%rbp)
	jge	.LBB15_197
# %bb.191:                              # %for.body897
                                        #   in Loop: Header=BB15_190 Depth=3
	movl	$0, -52(%rbp)
.LBB15_192:                             # %for.cond898
                                        #   Parent Loop BB15_34 Depth=1
                                        #     Parent Loop BB15_188 Depth=2
                                        #       Parent Loop BB15_190 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	cmpl	$4, -52(%rbp)
	jge	.LBB15_195
# %bb.193:                              # %for.body901
                                        #   in Loop: Header=BB15_192 Depth=4
	movq	img, %rax
	movq	14136(%rax), %rax
	movslq	-32(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movslq	-52(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movslq	-16(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movslq	-12(%rbp), %rcx
	movl	(%rax,%rcx,4), %eax
	movq	cofAC8x8, %rcx
	movslq	-32(%rbp), %rdx
	movq	(%rcx,%rdx,8), %rcx
	movslq	-52(%rbp), %rdx
	movq	(%rcx,%rdx,8), %rcx
	movslq	-16(%rbp), %rdx
	movq	(%rcx,%rdx,8), %rcx
	movslq	-12(%rbp), %rdx
	movl	%eax, (%rcx,%rdx,4)
# %bb.194:                              # %for.inc919
                                        #   in Loop: Header=BB15_192 Depth=4
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB15_192
.LBB15_195:                             # %for.end921
                                        #   in Loop: Header=BB15_190 Depth=3
	jmp	.LBB15_196
.LBB15_196:                             # %for.inc922
                                        #   in Loop: Header=BB15_190 Depth=3
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB15_190
.LBB15_197:                             # %for.end924
                                        #   in Loop: Header=BB15_188 Depth=2
	jmp	.LBB15_198
.LBB15_198:                             # %for.inc925
                                        #   in Loop: Header=BB15_188 Depth=2
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB15_188
.LBB15_199:                             # %for.end927
                                        #   in Loop: Header=BB15_34 Depth=1
	movl	$0, -20(%rbp)
.LBB15_200:                             # %for.cond928
                                        #   Parent Loop BB15_34 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB15_202 Depth 3
                                        #         Child Loop BB15_204 Depth 4
                                        #       Child Loop BB15_210 Depth 3
                                        #         Child Loop BB15_212 Depth 4
                                        #       Child Loop BB15_218 Depth 3
                                        #         Child Loop BB15_220 Depth 4
                                        #           Child Loop BB15_222 Depth 5
	cmpl	$4, -20(%rbp)
	jge	.LBB15_231
# %bb.201:                              # %for.body931
                                        #   in Loop: Header=BB15_200 Depth=2
	movl	-20(%rbp), %eax
	cltd
	movl	$2, %ecx
	idivl	%ecx
	shll	$2, %edx
	movl	%edx, -72(%rbp)
	movl	-20(%rbp), %eax
	cltd
	idivl	%ecx
	shll	$2, %eax
	movl	%eax, -80(%rbp)
	movl	$0, -16(%rbp)
.LBB15_202:                             # %for.cond936
                                        #   Parent Loop BB15_34 Depth=1
                                        #     Parent Loop BB15_200 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB15_204 Depth 4
	cmpl	$2, -16(%rbp)
	jge	.LBB15_209
# %bb.203:                              # %for.body939
                                        #   in Loop: Header=BB15_202 Depth=3
	movl	$0, -12(%rbp)
.LBB15_204:                             # %for.cond940
                                        #   Parent Loop BB15_34 Depth=1
                                        #     Parent Loop BB15_200 Depth=2
                                        #       Parent Loop BB15_202 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	cmpl	$18, -12(%rbp)
	jge	.LBB15_207
# %bb.205:                              # %for.body943
                                        #   in Loop: Header=BB15_204 Depth=4
	movq	img, %rax
	movq	14136(%rax), %rax
	movl	-32(%rbp), %ecx
	addl	$4, %ecx
	movslq	%ecx, %rcx
	movq	(%rax,%rcx,8), %rax
	movslq	-20(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movslq	-16(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movslq	-12(%rbp), %rcx
	movl	(%rax,%rcx,4), %eax
	movslq	-20(%rbp), %rcx
	imulq	$144, %rcx, %rcx
	movabsq	$cofAC8x8_chroma, %rdx
	addq	%rcx, %rdx
	movslq	-16(%rbp), %rcx
	imulq	$72, %rcx, %rcx
	addq	%rcx, %rdx
	movslq	-12(%rbp), %rcx
	movl	%eax, (%rdx,%rcx,4)
# %bb.206:                              # %for.inc960
                                        #   in Loop: Header=BB15_204 Depth=4
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB15_204
.LBB15_207:                             # %for.end962
                                        #   in Loop: Header=BB15_202 Depth=3
	jmp	.LBB15_208
.LBB15_208:                             # %for.inc963
                                        #   in Loop: Header=BB15_202 Depth=3
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB15_202
.LBB15_209:                             # %for.end965
                                        #   in Loop: Header=BB15_200 Depth=2
	movl	$0, -16(%rbp)
.LBB15_210:                             # %for.cond966
                                        #   Parent Loop BB15_34 Depth=1
                                        #     Parent Loop BB15_200 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB15_212 Depth 4
	cmpl	$2, -16(%rbp)
	jge	.LBB15_217
# %bb.211:                              # %for.body969
                                        #   in Loop: Header=BB15_210 Depth=3
	movl	$0, -12(%rbp)
.LBB15_212:                             # %for.cond970
                                        #   Parent Loop BB15_34 Depth=1
                                        #     Parent Loop BB15_200 Depth=2
                                        #       Parent Loop BB15_210 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	cmpl	$18, -12(%rbp)
	jge	.LBB15_215
# %bb.213:                              # %for.body973
                                        #   in Loop: Header=BB15_212 Depth=4
	movabsq	$cofAC8x8_chroma, %rax
	addq	$576, %rax              # imm = 0x240
	movq	img, %rcx
	movq	14136(%rcx), %rcx
	movl	-32(%rbp), %edx
	addl	$8, %edx
	movslq	%edx, %rdx
	movq	(%rcx,%rdx,8), %rcx
	movslq	-20(%rbp), %rdx
	movq	(%rcx,%rdx,8), %rcx
	movslq	-16(%rbp), %rdx
	movq	(%rcx,%rdx,8), %rcx
	movslq	-12(%rbp), %rdx
	movl	(%rcx,%rdx,4), %ecx
	movslq	-20(%rbp), %rdx
	imulq	$144, %rdx, %rdx
	addq	%rdx, %rax
	movslq	-16(%rbp), %rdx
	imulq	$72, %rdx, %rdx
	addq	%rdx, %rax
	movslq	-12(%rbp), %rdx
	movl	%ecx, (%rax,%rdx,4)
# %bb.214:                              # %for.inc990
                                        #   in Loop: Header=BB15_212 Depth=4
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB15_212
.LBB15_215:                             # %for.end992
                                        #   in Loop: Header=BB15_210 Depth=3
	jmp	.LBB15_216
.LBB15_216:                             # %for.inc993
                                        #   in Loop: Header=BB15_210 Depth=3
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB15_210
.LBB15_217:                             # %for.end995
                                        #   in Loop: Header=BB15_200 Depth=2
	movl	$0, -12(%rbp)
.LBB15_218:                             # %for.cond996
                                        #   Parent Loop BB15_34 Depth=1
                                        #     Parent Loop BB15_200 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB15_220 Depth 4
                                        #           Child Loop BB15_222 Depth 5
	cmpl	$2, -12(%rbp)
	jge	.LBB15_229
# %bb.219:                              # %for.body999
                                        #   in Loop: Header=BB15_218 Depth=3
	movslq	-12(%rbp), %rax
	shlq	$6, %rax
	movabsq	$dc_level_temp, %rdi
	addq	%rax, %rdi
	movl	-32(%rbp), %eax
	cltd
	movl	$2, %esi
	idivl	%esi
	movl	%edx, %ecx
	shll	$1, %ecx
	movl	-20(%rbp), %eax
	cltd
	idivl	%esi
	addl	%edx, %ecx
	movslq	%ecx, %rax
	shlq	$4, %rax
	addq	%rax, %rdi
	movl	-32(%rbp), %eax
	cltd
	idivl	%esi
	movl	%eax, %ecx
	shll	$1, %ecx
	movl	-20(%rbp), %eax
	cltd
	idivl	%esi
	addl	%eax, %ecx
	movslq	%ecx, %rax
	movl	(%rdi,%rax,4), %edi
	movslq	-12(%rbp), %rax
	shlq	$6, %rax
	movabsq	$dc_level, %rbx
	addq	%rax, %rbx
	movl	-32(%rbp), %eax
	cltd
	idivl	%esi
	movl	%edx, %ecx
	shll	$1, %ecx
	movl	-20(%rbp), %eax
	cltd
	idivl	%esi
	addl	%edx, %ecx
	movslq	%ecx, %rax
	shlq	$4, %rax
	addq	%rax, %rbx
	movl	-32(%rbp), %eax
	cltd
	idivl	%esi
	movl	%eax, %ecx
	shll	$1, %ecx
	movl	-20(%rbp), %eax
	cltd
	idivl	%esi
	addl	%eax, %ecx
	movslq	%ecx, %rax
	movl	%edi, (%rbx,%rax,4)
	movslq	-12(%rbp), %rax
	shlq	$6, %rax
	movabsq	$cbp_chroma_block_temp, %rdi
	addq	%rax, %rdi
	movl	-32(%rbp), %eax
	cltd
	idivl	%esi
	movl	%edx, %ecx
	shll	$1, %ecx
	movl	-20(%rbp), %eax
	cltd
	idivl	%esi
	addl	%edx, %ecx
	movslq	%ecx, %rax
	shlq	$4, %rax
	addq	%rax, %rdi
	movl	-32(%rbp), %eax
	cltd
	idivl	%esi
	movl	%eax, %ecx
	shll	$1, %ecx
	movl	-20(%rbp), %eax
	cltd
	idivl	%esi
	addl	%eax, %ecx
	movslq	%ecx, %rax
	movl	(%rdi,%rax,4), %edi
	movslq	-12(%rbp), %rax
	shlq	$6, %rax
	movabsq	$cbp_chroma_block, %rbx
	addq	%rax, %rbx
	movl	-32(%rbp), %eax
	cltd
	idivl	%esi
	movl	%edx, %ecx
	shll	$1, %ecx
	movl	-20(%rbp), %eax
	cltd
	idivl	%esi
	addl	%edx, %ecx
	movslq	%ecx, %rax
	shlq	$4, %rax
	addq	%rax, %rbx
	movl	-32(%rbp), %eax
	cltd
	idivl	%esi
	movl	%eax, %ecx
	shll	$1, %ecx
	movl	-20(%rbp), %eax
	cltd
	idivl	%esi
	addl	%eax, %ecx
	movslq	%ecx, %rax
	movl	%edi, (%rbx,%rax,4)
	movl	$0, -24(%rbp)
.LBB15_220:                             # %for.cond1056
                                        #   Parent Loop BB15_34 Depth=1
                                        #     Parent Loop BB15_200 Depth=2
                                        #       Parent Loop BB15_218 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB15_222 Depth 5
	cmpl	$4, -24(%rbp)
	jge	.LBB15_227
# %bb.221:                              # %for.body1059
                                        #   in Loop: Header=BB15_220 Depth=4
	movl	$0, -28(%rbp)
.LBB15_222:                             # %for.cond1060
                                        #   Parent Loop BB15_34 Depth=1
                                        #     Parent Loop BB15_200 Depth=2
                                        #       Parent Loop BB15_218 Depth=3
                                        #         Parent Loop BB15_220 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	cmpl	$4, -28(%rbp)
	jge	.LBB15_225
# %bb.223:                              # %for.body1063
                                        #   in Loop: Header=BB15_222 Depth=5
	movq	enc_picture, %rax
	movq	6464(%rax), %rax
	movslq	-12(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movl	-44(%rbp), %ecx
	addl	-24(%rbp), %ecx
	addl	-80(%rbp), %ecx
	movslq	%ecx, %rcx
	movq	(%rax,%rcx,8), %rax
	movl	-68(%rbp), %ecx
	addl	-28(%rbp), %ecx
	addl	-72(%rbp), %ecx
	movslq	%ecx, %rcx
	movzwl	(%rax,%rcx,2), %eax
	movslq	-12(%rbp), %rcx
	shlq	$8, %rcx
	leaq	-1152(%rbp), %rdx
	addq	%rcx, %rdx
	movslq	-20(%rbp), %rcx
	shlq	$6, %rcx
	addq	%rcx, %rdx
	movslq	-24(%rbp), %rcx
	shlq	$4, %rcx
	addq	%rcx, %rdx
	movslq	-28(%rbp), %rcx
	movl	%eax, (%rdx,%rcx,4)
# %bb.224:                              # %for.inc1084
                                        #   in Loop: Header=BB15_222 Depth=5
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB15_222
.LBB15_225:                             # %for.end1086
                                        #   in Loop: Header=BB15_220 Depth=4
	jmp	.LBB15_226
.LBB15_226:                             # %for.inc1087
                                        #   in Loop: Header=BB15_220 Depth=4
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB15_220
.LBB15_227:                             # %for.end1089
                                        #   in Loop: Header=BB15_218 Depth=3
	jmp	.LBB15_228
.LBB15_228:                             # %for.inc1090
                                        #   in Loop: Header=BB15_218 Depth=3
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB15_218
.LBB15_229:                             # %for.end1092
                                        #   in Loop: Header=BB15_200 Depth=2
	jmp	.LBB15_230
.LBB15_230:                             # %for.inc1093
                                        #   in Loop: Header=BB15_200 Depth=2
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB15_200
.LBB15_231:                             # %for.end1095
                                        #   in Loop: Header=BB15_34 Depth=1
	movl	$0, -24(%rbp)
.LBB15_232:                             # %for.cond1096
                                        #   Parent Loop BB15_34 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB15_234 Depth 3
	cmpl	$8, -24(%rbp)
	jge	.LBB15_239
# %bb.233:                              # %for.body1099
                                        #   in Loop: Header=BB15_232 Depth=2
	movl	$0, -28(%rbp)
.LBB15_234:                             # %for.cond1100
                                        #   Parent Loop BB15_34 Depth=1
                                        #     Parent Loop BB15_232 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	cmpl	$8, -28(%rbp)
	jge	.LBB15_237
# %bb.235:                              # %for.body1103
                                        #   in Loop: Header=BB15_234 Depth=3
	movq	enc_picture, %rax
	movq	6424(%rax), %rax
	movl	-44(%rbp), %ecx
	addl	-24(%rbp), %ecx
	movslq	%ecx, %rcx
	movq	(%rax,%rcx,8), %rax
	movl	-68(%rbp), %ecx
	addl	-28(%rbp), %ecx
	movslq	%ecx, %rcx
	movw	(%rax,%rcx,2), %ax
	movslq	-24(%rbp), %rcx
	shlq	$4, %rcx
	leaq	-384(%rbp), %rdx
	addq	%rcx, %rdx
	movslq	-28(%rbp), %rcx
	movw	%ax, (%rdx,%rcx,2)
# %bb.236:                              # %for.inc1115
                                        #   in Loop: Header=BB15_234 Depth=3
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB15_234
.LBB15_237:                             # %for.end1117
                                        #   in Loop: Header=BB15_232 Depth=2
	jmp	.LBB15_238
.LBB15_238:                             # %for.inc1118
                                        #   in Loop: Header=BB15_232 Depth=2
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB15_232
.LBB15_239:                             # %for.end1120
                                        #   in Loop: Header=BB15_34 Depth=1
	movl	-128(%rbp), %eax
	movl	%eax, -112(%rbp)
	vmovsd	-144(%rbp), %xmm0       # xmm0 = mem[0],zero
	vmovsd	%xmm0, -136(%rbp)
	movl	-48(%rbp), %eax
	movl	%eax, -60(%rbp)
.LBB15_240:                             # %if.end1121
                                        #   in Loop: Header=BB15_34 Depth=1
	jmp	.LBB15_241
.LBB15_241:                             # %if.end1122
                                        #   in Loop: Header=BB15_34 Depth=1
	jmp	.LBB15_242
.LBB15_242:                             # %if.end1123
                                        #   in Loop: Header=BB15_34 Depth=1
	jmp	.LBB15_243
.LBB15_243:                             # %if.end1124
                                        #   in Loop: Header=BB15_34 Depth=1
	jmp	.LBB15_244
.LBB15_244:                             # %for.inc1125
                                        #   in Loop: Header=BB15_34 Depth=1
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB15_34
.LBB15_245:                             # %for.end1127
	movl	-60(%rbp), %eax
	movq	img, %rcx
	movq	112(%rcx), %rcx
	movslq	-180(%rbp), %rdx
	movq	(%rcx,%rdx,8), %rcx
	movslq	-196(%rbp), %rdx
	movl	%eax, (%rcx,%rdx,4)
	movl	-108(%rbp), %eax
	cmpl	-60(%rbp), %eax
	jne	.LBB15_247
# %bb.246:                              # %cond.true1135
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	jmp	.LBB15_251
.LBB15_247:                             # %cond.false1136
	movl	-60(%rbp), %eax
	cmpl	-108(%rbp), %eax
	jge	.LBB15_249
# %bb.248:                              # %cond.true1139
	movl	-60(%rbp), %eax
	jmp	.LBB15_250
.LBB15_249:                             # %cond.false1140
	movl	-60(%rbp), %eax
	subl	$1, %eax
.LBB15_250:                             # %cond.end1142
.LBB15_251:                             # %cond.end1144
	movq	img, %rcx
	movq	14168(%rcx), %rcx
	movq	img, %rdx
	movslq	12(%rdx), %rdx
	imulq	$632, %rdx, %rdx        # imm = 0x278
	addq	%rdx, %rcx
	movl	-32(%rbp), %edx
	shll	$2, %edx
	movslq	%edx, %rdx
	movl	%eax, 396(%rcx,%rdx,4)
	movl	$0, -16(%rbp)
.LBB15_252:                             # %for.cond1153
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB15_254 Depth 2
	cmpl	$2, -16(%rbp)
	jge	.LBB15_259
# %bb.253:                              # %for.body1156
                                        #   in Loop: Header=BB15_252 Depth=1
	movl	$0, -12(%rbp)
.LBB15_254:                             # %for.cond1157
                                        #   Parent Loop BB15_252 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$2, -12(%rbp)
	jge	.LBB15_257
# %bb.255:                              # %for.body1160
                                        #   in Loop: Header=BB15_254 Depth=2
	movl	-60(%rbp), %ecx
	movq	img, %rax
	movq	112(%rax), %rsi
	movl	-12(%rbp), %edi
	movq	img, %rax
	movl	136(%rax), %eax
	shll	$2, %eax
	addl	%eax, %edi
	movl	-32(%rbp), %eax
	cltd
	movl	$2, %ebx
	idivl	%ebx
	shll	$1, %edx
	addl	%edx, %edi
	movslq	%edi, %rax
	movq	(%rsi,%rax,8), %rsi
	movl	-16(%rbp), %edi
	movq	img, %rax
	movl	140(%rax), %eax
	shll	$2, %eax
	addl	%eax, %edi
	movl	-32(%rbp), %eax
	cltd
	idivl	%ebx
	shll	$1, %eax
	addl	%eax, %edi
	movslq	%edi, %rax
	movl	%ecx, (%rsi,%rax,4)
# %bb.256:                              # %for.inc1176
                                        #   in Loop: Header=BB15_254 Depth=2
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB15_254
.LBB15_257:                             # %for.end1178
                                        #   in Loop: Header=BB15_252 Depth=1
	jmp	.LBB15_258
.LBB15_258:                             # %for.inc1179
                                        #   in Loop: Header=BB15_252 Depth=1
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB15_252
.LBB15_259:                             # %for.end1181
	movq	input, %rax
	cmpl	$0, 2464(%rax)
	jne	.LBB15_359
# %bb.260:                              # %if.then1184
	movq	img, %rax
	cmpl	$0, 72724(%rax)
	jne	.LBB15_270
# %bb.261:                              # %if.then1187
	movl	$0, -16(%rbp)
.LBB15_262:                             # %for.cond1188
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB15_264 Depth 2
	cmpl	$8, -16(%rbp)
	jge	.LBB15_269
# %bb.263:                              # %for.body1191
                                        #   in Loop: Header=BB15_262 Depth=1
	movl	$0, -12(%rbp)
.LBB15_264:                             # %for.cond1192
                                        #   Parent Loop BB15_262 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$8, -12(%rbp)
	jge	.LBB15_267
# %bb.265:                              # %for.body1195
                                        #   in Loop: Header=BB15_264 Depth=2
	movq	img, %rax
	addq	$7352, %rax             # imm = 0x1CB8
	movslq	-60(%rbp), %rcx
	shlq	$7, %rcx
	addq	%rcx, %rax
	movslq	-16(%rbp), %rcx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movslq	-12(%rbp), %rcx
	movw	(%rax,%rcx,2), %ax
	movq	img, %rcx
	addq	$12600, %rcx            # imm = 0x3138
	movl	-40(%rbp), %edx
	addl	-12(%rbp), %edx
	movslq	%edx, %rdx
	shlq	$5, %rdx
	addq	%rdx, %rcx
	movl	-36(%rbp), %edx
	addl	-16(%rbp), %edx
	movslq	%edx, %rdx
	movw	%ax, (%rcx,%rdx,2)
	movq	-160(%rbp), %rax
	movl	-92(%rbp), %ecx
	addl	-16(%rbp), %ecx
	movslq	%ecx, %rcx
	movq	(%rax,%rcx,8), %rax
	movl	-96(%rbp), %ecx
	addl	-12(%rbp), %ecx
	movslq	%ecx, %rcx
	movzwl	(%rax,%rcx,2), %eax
	movq	img, %rcx
	addq	$7352, %rcx             # imm = 0x1CB8
	movslq	-60(%rbp), %rdx
	shlq	$7, %rdx
	addq	%rdx, %rcx
	movslq	-16(%rbp), %rdx
	shlq	$4, %rdx
	addq	%rdx, %rcx
	movslq	-12(%rbp), %rdx
	movzwl	(%rcx,%rdx,2), %ecx
	subl	%ecx, %eax
	movq	img, %rcx
	addq	$13112, %rcx            # imm = 0x3338
	movslq	-12(%rbp), %rdx
	shlq	$6, %rdx
	addq	%rdx, %rcx
	movslq	-16(%rbp), %rdx
	movl	%eax, (%rcx,%rdx,4)
# %bb.266:                              # %for.inc1231
                                        #   in Loop: Header=BB15_264 Depth=2
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB15_264
.LBB15_267:                             # %for.end1233
                                        #   in Loop: Header=BB15_262 Depth=1
	jmp	.LBB15_268
.LBB15_268:                             # %for.inc1234
                                        #   in Loop: Header=BB15_262 Depth=1
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB15_262
.LBB15_269:                             # %for.end1236
	movl	-32(%rbp), %edi
	leaq	-188(%rbp), %rsi
	movl	$1, %edx
	callq	dct_luma8x8
	movl	%eax, -112(%rbp)
	jmp	.LBB15_358
.LBB15_270:                             # %if.else1238
	movl	$0, -16(%rbp)
.LBB15_271:                             # %for.cond1239
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB15_273 Depth 2
	cmpl	$8, -16(%rbp)
	jge	.LBB15_278
# %bb.272:                              # %for.body1242
                                        #   in Loop: Header=BB15_271 Depth=1
	movl	$0, -12(%rbp)
.LBB15_273:                             # %for.cond1243
                                        #   Parent Loop BB15_271 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$8, -12(%rbp)
	jge	.LBB15_276
# %bb.274:                              # %for.body1246
                                        #   in Loop: Header=BB15_273 Depth=2
	movq	img, %rax
	addq	$7352, %rax             # imm = 0x1CB8
	movslq	-60(%rbp), %rcx
	shlq	$7, %rcx
	addq	%rcx, %rax
	movslq	-16(%rbp), %rcx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movslq	-12(%rbp), %rcx
	movw	(%rax,%rcx,2), %ax
	movq	img, %rcx
	addq	$12600, %rcx            # imm = 0x3138
	movl	-40(%rbp), %edx
	addl	-12(%rbp), %edx
	movslq	%edx, %rdx
	shlq	$5, %rdx
	addq	%rdx, %rcx
	movl	-36(%rbp), %edx
	addl	-16(%rbp), %edx
	movslq	%edx, %rdx
	movw	%ax, (%rcx,%rdx,2)
	movq	imgUV_org, %rax
	movq	(%rax), %rax
	movl	-92(%rbp), %ecx
	addl	-16(%rbp), %ecx
	movslq	%ecx, %rcx
	movq	(%rax,%rcx,8), %rax
	movl	-96(%rbp), %ecx
	addl	-12(%rbp), %ecx
	movslq	%ecx, %rcx
	movzwl	(%rax,%rcx,2), %eax
	movq	img, %rcx
	addq	$8504, %rcx             # imm = 0x2138
	movslq	-56(%rbp), %rdx
	shlq	$9, %rdx
	addq	%rdx, %rcx
	movl	-40(%rbp), %edx
	addl	-12(%rbp), %edx
	movslq	%edx, %rdx
	shlq	$5, %rdx
	addq	%rdx, %rcx
	movl	-36(%rbp), %edx
	addl	-16(%rbp), %edx
	movslq	%edx, %rdx
	movzwl	(%rcx,%rdx,2), %ecx
	subl	%ecx, %eax
	movl	%eax, -64(%rbp)
	movq	imgY_org, %rax
	movl	-92(%rbp), %ecx
	addl	-16(%rbp), %ecx
	movslq	%ecx, %rcx
	movq	(%rax,%rcx,8), %rax
	movl	-96(%rbp), %ecx
	addl	-12(%rbp), %ecx
	movslq	%ecx, %rcx
	movzwl	(%rax,%rcx,2), %eax
	movq	img, %rcx
	addq	$7352, %rcx             # imm = 0x1CB8
	movslq	-60(%rbp), %rdx
	shlq	$7, %rdx
	addq	%rdx, %rcx
	movslq	-16(%rbp), %rdx
	shlq	$4, %rdx
	addq	%rdx, %rcx
	movslq	-12(%rbp), %rdx
	movzwl	(%rcx,%rdx,2), %ecx
	subl	%ecx, %eax
	movl	%eax, -84(%rbp)
	movq	imgUV_org, %rax
	movq	8(%rax), %rax
	movl	-92(%rbp), %ecx
	addl	-16(%rbp), %ecx
	movslq	%ecx, %rcx
	movq	(%rax,%rcx,8), %rax
	movl	-96(%rbp), %ecx
	addl	-12(%rbp), %ecx
	movslq	%ecx, %rcx
	movzwl	(%rax,%rcx,2), %eax
	movq	img, %rcx
	addq	$8504, %rcx             # imm = 0x2138
	addq	$2048, %rcx             # imm = 0x800
	movslq	-56(%rbp), %rdx
	shlq	$9, %rdx
	addq	%rdx, %rcx
	movl	-40(%rbp), %edx
	addl	-12(%rbp), %edx
	movslq	%edx, %rdx
	shlq	$5, %rdx
	addq	%rdx, %rcx
	movl	-36(%rbp), %edx
	addl	-16(%rbp), %edx
	movslq	%edx, %rdx
	movzwl	(%rcx,%rdx,2), %ecx
	subl	%ecx, %eax
	movl	%eax, -76(%rbp)
	movl	-76(%rbp), %eax
	subl	-64(%rbp), %eax
	movslq	-12(%rbp), %rcx
	shlq	$6, %rcx
	movabsq	$resTrans_R, %rdx
	movq	%rdx, %rsi
	addq	%rcx, %rsi
	movslq	-16(%rbp), %rcx
	movl	%eax, (%rsi,%rcx,4)
	movl	-64(%rbp), %eax
	movslq	-12(%rbp), %rcx
	shlq	$6, %rcx
	addq	%rcx, %rdx
	movslq	-16(%rbp), %rcx
	movl	(%rdx,%rcx,4), %ecx
	sarl	$1, %ecx
	addl	%ecx, %eax
	movl	%eax, -88(%rbp)
	movl	-84(%rbp), %eax
	subl	-88(%rbp), %eax
	movslq	-12(%rbp), %rcx
	shlq	$6, %rcx
	movabsq	$resTrans_B, %rdx
	movq	%rdx, %rsi
	addq	%rcx, %rsi
	movslq	-16(%rbp), %rcx
	movl	%eax, (%rsi,%rcx,4)
	movl	-88(%rbp), %eax
	movslq	-12(%rbp), %rcx
	shlq	$6, %rcx
	addq	%rcx, %rdx
	movslq	-16(%rbp), %rcx
	movl	(%rdx,%rcx,4), %ecx
	sarl	$1, %ecx
	addl	%ecx, %eax
	movslq	-12(%rbp), %rcx
	shlq	$6, %rcx
	movabsq	$resTrans_G, %rdx
	addq	%rcx, %rdx
	movslq	-16(%rbp), %rcx
	movl	%eax, (%rdx,%rcx,4)
# %bb.275:                              # %for.inc1343
                                        #   in Loop: Header=BB15_273 Depth=2
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB15_273
.LBB15_276:                             # %for.end1345
                                        #   in Loop: Header=BB15_271 Depth=1
	jmp	.LBB15_277
.LBB15_277:                             # %for.inc1346
                                        #   in Loop: Header=BB15_271 Depth=1
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB15_271
.LBB15_278:                             # %for.end1348
	movl	$0, -16(%rbp)
.LBB15_279:                             # %for.cond1349
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB15_281 Depth 2
	cmpl	$8, -16(%rbp)
	jge	.LBB15_286
# %bb.280:                              # %for.body1352
                                        #   in Loop: Header=BB15_279 Depth=1
	movl	$0, -12(%rbp)
.LBB15_281:                             # %for.cond1353
                                        #   Parent Loop BB15_279 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$8, -12(%rbp)
	jge	.LBB15_284
# %bb.282:                              # %for.body1356
                                        #   in Loop: Header=BB15_281 Depth=2
	movslq	-12(%rbp), %rax
	shlq	$6, %rax
	movabsq	$resTrans_G, %rcx
	addq	%rax, %rcx
	movslq	-16(%rbp), %rax
	movl	(%rcx,%rax,4), %eax
	movq	img, %rcx
	addq	$13112, %rcx            # imm = 0x3338
	movslq	-12(%rbp), %rdx
	shlq	$6, %rdx
	addq	%rdx, %rcx
	movslq	-16(%rbp), %rdx
	movl	%eax, (%rcx,%rdx,4)
# %bb.283:                              # %for.inc1366
                                        #   in Loop: Header=BB15_281 Depth=2
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB15_281
.LBB15_284:                             # %for.end1368
                                        #   in Loop: Header=BB15_279 Depth=1
	jmp	.LBB15_285
.LBB15_285:                             # %for.inc1369
                                        #   in Loop: Header=BB15_279 Depth=1
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB15_279
.LBB15_286:                             # %for.end1371
	movl	-32(%rbp), %edi
	leaq	-188(%rbp), %rsi
	movl	$1, %edx
	callq	dct_luma8x8
	movl	%eax, -112(%rbp)
	movl	$0, -16(%rbp)
.LBB15_287:                             # %for.cond1373
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB15_289 Depth 2
	cmpl	$8, -16(%rbp)
	jge	.LBB15_294
# %bb.288:                              # %for.body1376
                                        #   in Loop: Header=BB15_287 Depth=1
	movl	$0, -12(%rbp)
.LBB15_289:                             # %for.cond1377
                                        #   Parent Loop BB15_287 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$8, -12(%rbp)
	jge	.LBB15_292
# %bb.290:                              # %for.body1380
                                        #   in Loop: Header=BB15_289 Depth=2
	movq	img, %rax
	addq	$13112, %rax            # imm = 0x3338
	movslq	-12(%rbp), %rcx
	shlq	$6, %rcx
	addq	%rcx, %rax
	movslq	-16(%rbp), %rcx
	movl	(%rax,%rcx,4), %eax
	movslq	-12(%rbp), %rcx
	shlq	$6, %rcx
	movabsq	$rec_resG, %rdx
	addq	%rcx, %rdx
	movslq	-16(%rbp), %rcx
	movl	%eax, (%rdx,%rcx,4)
# %bb.291:                              # %for.inc1390
                                        #   in Loop: Header=BB15_289 Depth=2
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB15_289
.LBB15_292:                             # %for.end1392
                                        #   in Loop: Header=BB15_287 Depth=1
	jmp	.LBB15_293
.LBB15_293:                             # %for.inc1393
                                        #   in Loop: Header=BB15_287 Depth=1
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB15_287
.LBB15_294:                             # %for.end1395
	movl	$0, -20(%rbp)
.LBB15_295:                             # %for.cond1396
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB15_297 Depth 2
                                        #       Child Loop BB15_299 Depth 3
                                        #     Child Loop BB15_305 Depth 2
                                        #       Child Loop BB15_307 Depth 3
                                        #     Child Loop BB15_313 Depth 2
                                        #       Child Loop BB15_315 Depth 3
	cmpl	$4, -20(%rbp)
	jge	.LBB15_322
# %bb.296:                              # %for.body1399
                                        #   in Loop: Header=BB15_295 Depth=1
	movl	-20(%rbp), %eax
	cltd
	movl	$2, %ecx
	idivl	%ecx
	shll	$2, %edx
	movl	%edx, -72(%rbp)
	movl	-20(%rbp), %eax
	cltd
	idivl	%ecx
	shll	$2, %eax
	movl	%eax, -80(%rbp)
	movl	$0, -16(%rbp)
.LBB15_297:                             # %for.cond1404
                                        #   Parent Loop BB15_295 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB15_299 Depth 3
	cmpl	$4, -16(%rbp)
	jge	.LBB15_304
# %bb.298:                              # %for.body1407
                                        #   in Loop: Header=BB15_297 Depth=2
	movl	$0, -12(%rbp)
.LBB15_299:                             # %for.cond1408
                                        #   Parent Loop BB15_295 Depth=1
                                        #     Parent Loop BB15_297 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	cmpl	$4, -12(%rbp)
	jge	.LBB15_302
# %bb.300:                              # %for.body1411
                                        #   in Loop: Header=BB15_299 Depth=3
	movl	-12(%rbp), %eax
	addl	-72(%rbp), %eax
	cltq
	shlq	$6, %rax
	movabsq	$resTrans_R, %rcx
	addq	%rax, %rcx
	movl	-16(%rbp), %eax
	addl	-80(%rbp), %eax
	cltq
	movl	(%rcx,%rax,4), %eax
	movq	img, %rcx
	addq	$13112, %rcx            # imm = 0x3338
	movslq	-12(%rbp), %rdx
	shlq	$6, %rdx
	addq	%rdx, %rcx
	movslq	-16(%rbp), %rdx
	movl	%eax, (%rcx,%rdx,4)
# %bb.301:                              # %for.inc1423
                                        #   in Loop: Header=BB15_299 Depth=3
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB15_299
.LBB15_302:                             # %for.end1425
                                        #   in Loop: Header=BB15_297 Depth=2
	jmp	.LBB15_303
.LBB15_303:                             # %for.inc1426
                                        #   in Loop: Header=BB15_297 Depth=2
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB15_297
.LBB15_304:                             # %for.end1428
                                        #   in Loop: Header=BB15_295 Depth=1
	movl	-32(%rbp), %esi
	addl	$4, %esi
	movl	-20(%rbp), %edx
	xorl	%edi, %edi
	callq	dct_chroma4x4
	movl	%eax, %ecx
	movl	-32(%rbp), %eax
	cltd
	movl	$2, %edi
	idivl	%edi
	movl	%edx, %esi
	shll	$1, %esi
	movl	-20(%rbp), %eax
	cltd
	idivl	%edi
	addl	%edx, %esi
	movslq	%esi, %rax
	shlq	$4, %rax
	movabsq	$cbp_chroma_block, %rbx
	addq	%rax, %rbx
	movl	-32(%rbp), %eax
	cltd
	idivl	%edi
	movl	%eax, %esi
	shll	$1, %esi
	movl	-20(%rbp), %eax
	cltd
	idivl	%edi
	addl	%eax, %esi
	movslq	%esi, %rax
	movl	%ecx, (%rbx,%rax,4)
	movl	-32(%rbp), %eax
	cltd
	idivl	%edi
	movl	%edx, %ecx
	shll	$1, %ecx
	movl	-20(%rbp), %eax
	cltd
	idivl	%edi
	addl	%edx, %ecx
	movslq	%ecx, %rax
	shlq	$4, %rax
	movabsq	$dc_level_temp, %rsi
	addq	%rax, %rsi
	movl	-32(%rbp), %eax
	cltd
	idivl	%edi
	movl	%eax, %ecx
	shll	$1, %ecx
	movl	-20(%rbp), %eax
	cltd
	idivl	%edi
	addl	%eax, %ecx
	movslq	%ecx, %rax
	movl	(%rsi,%rax,4), %esi
	movl	-32(%rbp), %eax
	cltd
	idivl	%edi
	movl	%edx, %ecx
	shll	$1, %ecx
	movl	-20(%rbp), %eax
	cltd
	idivl	%edi
	addl	%edx, %ecx
	movslq	%ecx, %rax
	shlq	$4, %rax
	movabsq	$dc_level, %rbx
	addq	%rax, %rbx
	movl	-32(%rbp), %eax
	cltd
	idivl	%edi
	movl	%eax, %ecx
	shll	$1, %ecx
	movl	-20(%rbp), %eax
	cltd
	idivl	%edi
	addl	%eax, %ecx
	movslq	%ecx, %rax
	movl	%esi, (%rbx,%rax,4)
	movl	$0, -16(%rbp)
.LBB15_305:                             # %for.cond1467
                                        #   Parent Loop BB15_295 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB15_307 Depth 3
	cmpl	$4, -16(%rbp)
	jge	.LBB15_312
# %bb.306:                              # %for.body1470
                                        #   in Loop: Header=BB15_305 Depth=2
	movl	$0, -12(%rbp)
.LBB15_307:                             # %for.cond1471
                                        #   Parent Loop BB15_295 Depth=1
                                        #     Parent Loop BB15_305 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	cmpl	$4, -12(%rbp)
	jge	.LBB15_310
# %bb.308:                              # %for.body1474
                                        #   in Loop: Header=BB15_307 Depth=3
	movq	img, %rax
	addq	$13112, %rax            # imm = 0x3338
	movslq	-12(%rbp), %rcx
	shlq	$6, %rcx
	addq	%rcx, %rax
	movslq	-16(%rbp), %rcx
	movl	(%rax,%rcx,4), %eax
	movl	-12(%rbp), %ecx
	addl	-72(%rbp), %ecx
	movslq	%ecx, %rcx
	shlq	$6, %rcx
	movabsq	$rec_resR, %rdx
	addq	%rcx, %rdx
	movl	-16(%rbp), %ecx
	addl	-80(%rbp), %ecx
	movslq	%ecx, %rcx
	movl	%eax, (%rdx,%rcx,4)
	movl	-12(%rbp), %eax
	addl	-72(%rbp), %eax
	cltq
	shlq	$6, %rax
	movabsq	$resTrans_B, %rcx
	addq	%rax, %rcx
	movl	-16(%rbp), %eax
	addl	-80(%rbp), %eax
	cltq
	movl	(%rcx,%rax,4), %eax
	movq	img, %rcx
	addq	$13112, %rcx            # imm = 0x3338
	movslq	-12(%rbp), %rdx
	shlq	$6, %rdx
	addq	%rdx, %rcx
	movslq	-16(%rbp), %rdx
	movl	%eax, (%rcx,%rdx,4)
# %bb.309:                              # %for.inc1497
                                        #   in Loop: Header=BB15_307 Depth=3
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB15_307
.LBB15_310:                             # %for.end1499
                                        #   in Loop: Header=BB15_305 Depth=2
	jmp	.LBB15_311
.LBB15_311:                             # %for.inc1500
                                        #   in Loop: Header=BB15_305 Depth=2
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB15_305
.LBB15_312:                             # %for.end1502
                                        #   in Loop: Header=BB15_295 Depth=1
	movl	-32(%rbp), %esi
	addl	$8, %esi
	movl	-20(%rbp), %edx
	movl	$1, %edi
	callq	dct_chroma4x4
	movl	%eax, %r9d
	movabsq	$dc_level, %r8
	addq	$64, %r8
	movabsq	$dc_level_temp, %rdi
	addq	$64, %rdi
	movabsq	$cbp_chroma_block, %rcx
	addq	$64, %rcx
	movl	-32(%rbp), %eax
	cltd
	movl	$2, %ebx
	idivl	%ebx
	movl	%edx, %esi
	shll	$1, %esi
	movl	-20(%rbp), %eax
	cltd
	idivl	%ebx
	addl	%edx, %esi
	movslq	%esi, %rax
	shlq	$4, %rax
	addq	%rax, %rcx
	movl	-32(%rbp), %eax
	cltd
	idivl	%ebx
	movl	%eax, %esi
	shll	$1, %esi
	movl	-20(%rbp), %eax
	cltd
	idivl	%ebx
	addl	%eax, %esi
	movslq	%esi, %rax
	movl	%r9d, (%rcx,%rax,4)
	movl	-32(%rbp), %eax
	cltd
	idivl	%ebx
	movl	%edx, %ecx
	shll	$1, %ecx
	movl	-20(%rbp), %eax
	cltd
	idivl	%ebx
	addl	%edx, %ecx
	movslq	%ecx, %rax
	shlq	$4, %rax
	addq	%rax, %rdi
	movl	-32(%rbp), %eax
	cltd
	idivl	%ebx
	movl	%eax, %ecx
	shll	$1, %ecx
	movl	-20(%rbp), %eax
	cltd
	idivl	%ebx
	addl	%eax, %ecx
	movslq	%ecx, %rax
	movl	(%rdi,%rax,4), %esi
	movl	-32(%rbp), %eax
	cltd
	idivl	%ebx
	movl	%edx, %ecx
	shll	$1, %ecx
	movl	-20(%rbp), %eax
	cltd
	idivl	%ebx
	addl	%edx, %ecx
	movslq	%ecx, %rax
	shlq	$4, %rax
	addq	%rax, %r8
	movl	-32(%rbp), %eax
	cltd
	idivl	%ebx
	movl	%eax, %ecx
	shll	$1, %ecx
	movl	-20(%rbp), %eax
	cltd
	idivl	%ebx
	addl	%eax, %ecx
	movslq	%ecx, %rax
	movl	%esi, (%r8,%rax,4)
	movl	$0, -16(%rbp)
.LBB15_313:                             # %for.cond1541
                                        #   Parent Loop BB15_295 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB15_315 Depth 3
	cmpl	$4, -16(%rbp)
	jge	.LBB15_320
# %bb.314:                              # %for.body1544
                                        #   in Loop: Header=BB15_313 Depth=2
	movl	$0, -12(%rbp)
.LBB15_315:                             # %for.cond1545
                                        #   Parent Loop BB15_295 Depth=1
                                        #     Parent Loop BB15_313 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	cmpl	$4, -12(%rbp)
	jge	.LBB15_318
# %bb.316:                              # %for.body1548
                                        #   in Loop: Header=BB15_315 Depth=3
	movq	img, %rax
	addq	$13112, %rax            # imm = 0x3338
	movslq	-12(%rbp), %rcx
	shlq	$6, %rcx
	addq	%rcx, %rax
	movslq	-16(%rbp), %rcx
	movl	(%rax,%rcx,4), %eax
	movl	-12(%rbp), %ecx
	addl	-72(%rbp), %ecx
	movslq	%ecx, %rcx
	shlq	$6, %rcx
	movabsq	$rec_resB, %rdx
	addq	%rcx, %rdx
	movl	-16(%rbp), %ecx
	addl	-80(%rbp), %ecx
	movslq	%ecx, %rcx
	movl	%eax, (%rdx,%rcx,4)
# %bb.317:                              # %for.inc1560
                                        #   in Loop: Header=BB15_315 Depth=3
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB15_315
.LBB15_318:                             # %for.end1562
                                        #   in Loop: Header=BB15_313 Depth=2
	jmp	.LBB15_319
.LBB15_319:                             # %for.inc1563
                                        #   in Loop: Header=BB15_313 Depth=2
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB15_313
.LBB15_320:                             # %for.end1565
                                        #   in Loop: Header=BB15_295 Depth=1
	jmp	.LBB15_321
.LBB15_321:                             # %for.inc1566
                                        #   in Loop: Header=BB15_295 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB15_295
.LBB15_322:                             # %for.end1568
	movl	$0, -16(%rbp)
.LBB15_323:                             # %for.cond1569
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB15_325 Depth 2
	cmpl	$8, -16(%rbp)
	jge	.LBB15_357
# %bb.324:                              # %for.body1572
                                        #   in Loop: Header=BB15_323 Depth=1
	movl	$0, -12(%rbp)
.LBB15_325:                             # %for.cond1573
                                        #   Parent Loop BB15_323 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$8, -12(%rbp)
	jge	.LBB15_355
# %bb.326:                              # %for.body1576
                                        #   in Loop: Header=BB15_325 Depth=2
	xorl	%eax, %eax
	movslq	-12(%rbp), %rcx
	shlq	$6, %rcx
	movabsq	$rec_resG, %rdx
	addq	%rcx, %rdx
	movslq	-16(%rbp), %rcx
	movl	(%rdx,%rcx,4), %ecx
	movslq	-12(%rbp), %rdx
	shlq	$6, %rdx
	movabsq	$rec_resB, %rsi
	movq	%rsi, %rdi
	addq	%rdx, %rdi
	movslq	-16(%rbp), %rdx
	movl	(%rdi,%rdx,4), %edx
	sarl	$1, %edx
	subl	%edx, %ecx
	movl	%ecx, -88(%rbp)
	movslq	-12(%rbp), %rcx
	shlq	$6, %rcx
	addq	%rcx, %rsi
	movslq	-16(%rbp), %rcx
	movl	(%rsi,%rcx,4), %ecx
	addl	-88(%rbp), %ecx
	movl	%ecx, -84(%rbp)
	movl	-88(%rbp), %ecx
	movslq	-12(%rbp), %rdx
	shlq	$6, %rdx
	movabsq	$rec_resR, %rsi
	movq	%rsi, %rdi
	addq	%rdx, %rdi
	movslq	-16(%rbp), %rdx
	movl	(%rdi,%rdx,4), %edx
	sarl	$1, %edx
	subl	%edx, %ecx
	movl	%ecx, -64(%rbp)
	movl	-64(%rbp), %ecx
	movslq	-12(%rbp), %rdx
	shlq	$6, %rdx
	addq	%rdx, %rsi
	movslq	-16(%rbp), %rdx
	addl	(%rsi,%rdx,4), %ecx
	movl	%ecx, -76(%rbp)
	movq	img, %rcx
	movl	72688(%rcx), %ecx
	movl	-64(%rbp), %edx
	movq	img, %rsi
	addq	$8504, %rsi             # imm = 0x2138
	movslq	-56(%rbp), %rdi
	shlq	$9, %rdi
	addq	%rdi, %rsi
	movl	-40(%rbp), %edi
	addl	-12(%rbp), %edi
	movslq	%edi, %rdi
	shlq	$5, %rdi
	addq	%rdi, %rsi
	movl	-36(%rbp), %edi
	addl	-16(%rbp), %edi
	movslq	%edi, %rdi
	movzwl	(%rsi,%rdi,2), %esi
	addl	%esi, %edx
	cmpl	%edx, %eax
	jle	.LBB15_328
# %bb.327:                              # %cond.true1618
                                        #   in Loop: Header=BB15_325 Depth=2
	xorl	%eax, %eax
	jmp	.LBB15_329
.LBB15_328:                             # %cond.false1619
                                        #   in Loop: Header=BB15_325 Depth=2
	movl	-64(%rbp), %eax
	movq	img, %rdx
	addq	$8504, %rdx             # imm = 0x2138
	movslq	-56(%rbp), %rsi
	shlq	$9, %rsi
	addq	%rsi, %rdx
	movl	-40(%rbp), %esi
	addl	-12(%rbp), %esi
	movslq	%esi, %rsi
	shlq	$5, %rsi
	addq	%rsi, %rdx
	movl	-36(%rbp), %esi
	addl	-16(%rbp), %esi
	movslq	%esi, %rsi
	movzwl	(%rdx,%rsi,2), %edx
	addl	%edx, %eax
.LBB15_329:                             # %cond.end1632
                                        #   in Loop: Header=BB15_325 Depth=2
	cmpl	%eax, %ecx
	jge	.LBB15_331
# %bb.330:                              # %cond.true1636
                                        #   in Loop: Header=BB15_325 Depth=2
	movq	img, %rax
	movl	72688(%rax), %eax
	jmp	.LBB15_335
.LBB15_331:                             # %cond.false1638
                                        #   in Loop: Header=BB15_325 Depth=2
	xorl	%eax, %eax
	movl	-64(%rbp), %ecx
	movq	img, %rdx
	addq	$8504, %rdx             # imm = 0x2138
	movslq	-56(%rbp), %rsi
	shlq	$9, %rsi
	addq	%rsi, %rdx
	movl	-40(%rbp), %esi
	addl	-12(%rbp), %esi
	movslq	%esi, %rsi
	shlq	$5, %rsi
	addq	%rsi, %rdx
	movl	-36(%rbp), %esi
	addl	-16(%rbp), %esi
	movslq	%esi, %rsi
	movzwl	(%rdx,%rsi,2), %edx
	addl	%edx, %ecx
	cmpl	%ecx, %eax
	jle	.LBB15_333
# %bb.332:                              # %cond.true1653
                                        #   in Loop: Header=BB15_325 Depth=2
	xorl	%eax, %eax
	jmp	.LBB15_334
.LBB15_333:                             # %cond.false1654
                                        #   in Loop: Header=BB15_325 Depth=2
	movl	-64(%rbp), %eax
	movq	img, %rcx
	addq	$8504, %rcx             # imm = 0x2138
	movslq	-56(%rbp), %rdx
	shlq	$9, %rdx
	addq	%rdx, %rcx
	movl	-40(%rbp), %edx
	addl	-12(%rbp), %edx
	movslq	%edx, %rdx
	shlq	$5, %rdx
	addq	%rdx, %rcx
	movl	-36(%rbp), %edx
	addl	-16(%rbp), %edx
	movslq	%edx, %rdx
	movzwl	(%rcx,%rdx,2), %ecx
	addl	%ecx, %eax
.LBB15_334:                             # %cond.end1667
                                        #   in Loop: Header=BB15_325 Depth=2
.LBB15_335:                             # %cond.end1669
                                        #   in Loop: Header=BB15_325 Depth=2
	xorl	%ecx, %ecx
	movq	enc_picture, %rdx
	movq	6464(%rdx), %rdx
	movq	(%rdx), %rdx
	movl	-44(%rbp), %esi
	addl	-16(%rbp), %esi
	movslq	%esi, %rsi
	movq	(%rdx,%rsi,8), %rdx
	movl	-68(%rbp), %esi
	addl	-12(%rbp), %esi
	movslq	%esi, %rsi
	movw	%ax, (%rdx,%rsi,2)
	movq	img, %rax
	movl	72684(%rax), %eax
	movl	-84(%rbp), %edx
	movq	img, %rsi
	addq	$7352, %rsi             # imm = 0x1CB8
	movslq	-60(%rbp), %rdi
	shlq	$7, %rdi
	addq	%rdi, %rsi
	movslq	-16(%rbp), %rdi
	shlq	$4, %rdi
	addq	%rdi, %rsi
	movslq	-12(%rbp), %rdi
	movzwl	(%rsi,%rdi,2), %esi
	addl	%esi, %edx
	cmpl	%edx, %ecx
	jle	.LBB15_337
# %bb.336:                              # %cond.true1692
                                        #   in Loop: Header=BB15_325 Depth=2
	xorl	%ecx, %ecx
	jmp	.LBB15_338
.LBB15_337:                             # %cond.false1693
                                        #   in Loop: Header=BB15_325 Depth=2
	movl	-84(%rbp), %ecx
	movq	img, %rdx
	addq	$7352, %rdx             # imm = 0x1CB8
	movslq	-60(%rbp), %rsi
	shlq	$7, %rsi
	addq	%rsi, %rdx
	movslq	-16(%rbp), %rsi
	shlq	$4, %rsi
	addq	%rsi, %rdx
	movslq	-12(%rbp), %rsi
	movzwl	(%rdx,%rsi,2), %edx
	addl	%edx, %ecx
.LBB15_338:                             # %cond.end1703
                                        #   in Loop: Header=BB15_325 Depth=2
	cmpl	%ecx, %eax
	jge	.LBB15_340
# %bb.339:                              # %cond.true1707
                                        #   in Loop: Header=BB15_325 Depth=2
	movq	img, %rax
	movl	72684(%rax), %eax
	jmp	.LBB15_344
.LBB15_340:                             # %cond.false1709
                                        #   in Loop: Header=BB15_325 Depth=2
	xorl	%eax, %eax
	movl	-84(%rbp), %ecx
	movq	img, %rdx
	addq	$7352, %rdx             # imm = 0x1CB8
	movslq	-60(%rbp), %rsi
	shlq	$7, %rsi
	addq	%rsi, %rdx
	movslq	-16(%rbp), %rsi
	shlq	$4, %rsi
	addq	%rsi, %rdx
	movslq	-12(%rbp), %rsi
	movzwl	(%rdx,%rsi,2), %edx
	addl	%edx, %ecx
	cmpl	%ecx, %eax
	jle	.LBB15_342
# %bb.341:                              # %cond.true1721
                                        #   in Loop: Header=BB15_325 Depth=2
	xorl	%eax, %eax
	jmp	.LBB15_343
.LBB15_342:                             # %cond.false1722
                                        #   in Loop: Header=BB15_325 Depth=2
	movl	-84(%rbp), %eax
	movq	img, %rcx
	addq	$7352, %rcx             # imm = 0x1CB8
	movslq	-60(%rbp), %rdx
	shlq	$7, %rdx
	addq	%rdx, %rcx
	movslq	-16(%rbp), %rdx
	shlq	$4, %rdx
	addq	%rdx, %rcx
	movslq	-12(%rbp), %rdx
	movzwl	(%rcx,%rdx,2), %ecx
	addl	%ecx, %eax
.LBB15_343:                             # %cond.end1732
                                        #   in Loop: Header=BB15_325 Depth=2
.LBB15_344:                             # %cond.end1734
                                        #   in Loop: Header=BB15_325 Depth=2
	xorl	%ecx, %ecx
	movq	enc_picture, %rdx
	movq	6424(%rdx), %rdx
	movl	-44(%rbp), %esi
	addl	-16(%rbp), %esi
	movslq	%esi, %rsi
	movq	(%rdx,%rsi,8), %rdx
	movl	-68(%rbp), %esi
	addl	-12(%rbp), %esi
	movslq	%esi, %rsi
	movw	%ax, (%rdx,%rsi,2)
	movq	img, %rax
	movl	72688(%rax), %eax
	movl	-76(%rbp), %edx
	movq	img, %rsi
	addq	$8504, %rsi             # imm = 0x2138
	addq	$2048, %rsi             # imm = 0x800
	movslq	-56(%rbp), %rdi
	shlq	$9, %rdi
	addq	%rdi, %rsi
	movl	-40(%rbp), %edi
	addl	-12(%rbp), %edi
	movslq	%edi, %rdi
	shlq	$5, %rdi
	addq	%rdi, %rsi
	movl	-36(%rbp), %edi
	addl	-16(%rbp), %edi
	movslq	%edi, %rdi
	movzwl	(%rsi,%rdi,2), %esi
	addl	%esi, %edx
	cmpl	%edx, %ecx
	jle	.LBB15_346
# %bb.345:                              # %cond.true1759
                                        #   in Loop: Header=BB15_325 Depth=2
	xorl	%ecx, %ecx
	jmp	.LBB15_347
.LBB15_346:                             # %cond.false1760
                                        #   in Loop: Header=BB15_325 Depth=2
	movl	-76(%rbp), %ecx
	movq	img, %rdx
	addq	$8504, %rdx             # imm = 0x2138
	addq	$2048, %rdx             # imm = 0x800
	movslq	-56(%rbp), %rsi
	shlq	$9, %rsi
	addq	%rsi, %rdx
	movl	-40(%rbp), %esi
	addl	-12(%rbp), %esi
	movslq	%esi, %rsi
	shlq	$5, %rsi
	addq	%rsi, %rdx
	movl	-36(%rbp), %esi
	addl	-16(%rbp), %esi
	movslq	%esi, %rsi
	movzwl	(%rdx,%rsi,2), %edx
	addl	%edx, %ecx
.LBB15_347:                             # %cond.end1773
                                        #   in Loop: Header=BB15_325 Depth=2
	cmpl	%ecx, %eax
	jge	.LBB15_349
# %bb.348:                              # %cond.true1777
                                        #   in Loop: Header=BB15_325 Depth=2
	movq	img, %rax
	movl	72688(%rax), %eax
	jmp	.LBB15_353
.LBB15_349:                             # %cond.false1779
                                        #   in Loop: Header=BB15_325 Depth=2
	xorl	%eax, %eax
	movl	-76(%rbp), %ecx
	movq	img, %rdx
	addq	$8504, %rdx             # imm = 0x2138
	addq	$2048, %rdx             # imm = 0x800
	movslq	-56(%rbp), %rsi
	shlq	$9, %rsi
	addq	%rsi, %rdx
	movl	-40(%rbp), %esi
	addl	-12(%rbp), %esi
	movslq	%esi, %rsi
	shlq	$5, %rsi
	addq	%rsi, %rdx
	movl	-36(%rbp), %esi
	addl	-16(%rbp), %esi
	movslq	%esi, %rsi
	movzwl	(%rdx,%rsi,2), %edx
	addl	%edx, %ecx
	cmpl	%ecx, %eax
	jle	.LBB15_351
# %bb.350:                              # %cond.true1794
                                        #   in Loop: Header=BB15_325 Depth=2
	xorl	%eax, %eax
	jmp	.LBB15_352
.LBB15_351:                             # %cond.false1795
                                        #   in Loop: Header=BB15_325 Depth=2
	movl	-76(%rbp), %eax
	movq	img, %rcx
	addq	$8504, %rcx             # imm = 0x2138
	addq	$2048, %rcx             # imm = 0x800
	movslq	-56(%rbp), %rdx
	shlq	$9, %rdx
	addq	%rdx, %rcx
	movl	-40(%rbp), %edx
	addl	-12(%rbp), %edx
	movslq	%edx, %rdx
	shlq	$5, %rdx
	addq	%rdx, %rcx
	movl	-36(%rbp), %edx
	addl	-16(%rbp), %edx
	movslq	%edx, %rdx
	movzwl	(%rcx,%rdx,2), %ecx
	addl	%ecx, %eax
.LBB15_352:                             # %cond.end1808
                                        #   in Loop: Header=BB15_325 Depth=2
.LBB15_353:                             # %cond.end1810
                                        #   in Loop: Header=BB15_325 Depth=2
	movq	enc_picture, %rcx
	movq	6464(%rcx), %rcx
	movq	8(%rcx), %rcx
	movl	-44(%rbp), %edx
	addl	-16(%rbp), %edx
	movslq	%edx, %rdx
	movq	(%rcx,%rdx,8), %rcx
	movl	-68(%rbp), %edx
	addl	-12(%rbp), %edx
	movslq	%edx, %rdx
	movw	%ax, (%rcx,%rdx,2)
# %bb.354:                              # %for.inc1821
                                        #   in Loop: Header=BB15_325 Depth=2
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB15_325
.LBB15_355:                             # %for.end1823
                                        #   in Loop: Header=BB15_323 Depth=1
	jmp	.LBB15_356
.LBB15_356:                             # %for.inc1824
                                        #   in Loop: Header=BB15_323 Depth=1
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB15_323
.LBB15_357:                             # %for.end1826
	jmp	.LBB15_358
.LBB15_358:                             # %if.end1827
	jmp	.LBB15_420
.LBB15_359:                             # %if.else1828
	movl	$0, -16(%rbp)
.LBB15_360:                             # %for.cond1829
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB15_362 Depth 2
                                        #       Child Loop BB15_364 Depth 3
	cmpl	$2, -16(%rbp)
	jge	.LBB15_371
# %bb.361:                              # %for.body1832
                                        #   in Loop: Header=BB15_360 Depth=1
	movl	$0, -12(%rbp)
.LBB15_362:                             # %for.cond1833
                                        #   Parent Loop BB15_360 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB15_364 Depth 3
	cmpl	$65, -12(%rbp)
	jge	.LBB15_369
# %bb.363:                              # %for.body1836
                                        #   in Loop: Header=BB15_362 Depth=2
	movl	$0, -52(%rbp)
.LBB15_364:                             # %for.cond1837
                                        #   Parent Loop BB15_360 Depth=1
                                        #     Parent Loop BB15_362 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	cmpl	$4, -52(%rbp)
	jge	.LBB15_367
# %bb.365:                              # %for.body1840
                                        #   in Loop: Header=BB15_364 Depth=3
	movq	cofAC8x8, %rax
	movslq	-32(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movslq	-52(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movslq	-16(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movslq	-12(%rbp), %rcx
	movl	(%rax,%rcx,4), %eax
	movq	img, %rcx
	movq	14136(%rcx), %rcx
	movslq	-32(%rbp), %rdx
	movq	(%rcx,%rdx,8), %rcx
	movslq	-52(%rbp), %rdx
	movq	(%rcx,%rdx,8), %rcx
	movslq	-16(%rbp), %rdx
	movq	(%rcx,%rdx,8), %rcx
	movslq	-12(%rbp), %rdx
	movl	%eax, (%rcx,%rdx,4)
# %bb.366:                              # %for.inc1858
                                        #   in Loop: Header=BB15_364 Depth=3
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB15_364
.LBB15_367:                             # %for.end1860
                                        #   in Loop: Header=BB15_362 Depth=2
	jmp	.LBB15_368
.LBB15_368:                             # %for.inc1861
                                        #   in Loop: Header=BB15_362 Depth=2
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB15_362
.LBB15_369:                             # %for.end1863
                                        #   in Loop: Header=BB15_360 Depth=1
	jmp	.LBB15_370
.LBB15_370:                             # %for.inc1864
                                        #   in Loop: Header=BB15_360 Depth=1
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB15_360
.LBB15_371:                             # %for.end1866
	movq	img, %rax
	cmpl	$0, 72724(%rax)
	je	.LBB15_393
# %bb.372:                              # %if.then1869
	movl	$0, -20(%rbp)
.LBB15_373:                             # %for.cond1870
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB15_375 Depth 2
                                        #       Child Loop BB15_377 Depth 3
                                        #     Child Loop BB15_383 Depth 2
                                        #       Child Loop BB15_385 Depth 3
	cmpl	$4, -20(%rbp)
	jge	.LBB15_392
# %bb.374:                              # %for.body1873
                                        #   in Loop: Header=BB15_373 Depth=1
	movl	$0, -16(%rbp)
.LBB15_375:                             # %for.cond1874
                                        #   Parent Loop BB15_373 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB15_377 Depth 3
	cmpl	$2, -16(%rbp)
	jge	.LBB15_382
# %bb.376:                              # %for.body1877
                                        #   in Loop: Header=BB15_375 Depth=2
	movl	$0, -12(%rbp)
.LBB15_377:                             # %for.cond1878
                                        #   Parent Loop BB15_373 Depth=1
                                        #     Parent Loop BB15_375 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	cmpl	$18, -12(%rbp)
	jge	.LBB15_380
# %bb.378:                              # %for.body1881
                                        #   in Loop: Header=BB15_377 Depth=3
	movslq	-20(%rbp), %rax
	imulq	$144, %rax, %rax
	movabsq	$cofAC8x8_chroma, %rcx
	addq	%rax, %rcx
	movslq	-16(%rbp), %rax
	imulq	$72, %rax, %rax
	addq	%rax, %rcx
	movslq	-12(%rbp), %rax
	movl	(%rcx,%rax,4), %eax
	movq	img, %rcx
	movq	14136(%rcx), %rcx
	movl	-32(%rbp), %edx
	addl	$4, %edx
	movslq	%edx, %rdx
	movq	(%rcx,%rdx,8), %rcx
	movslq	-20(%rbp), %rdx
	movq	(%rcx,%rdx,8), %rcx
	movslq	-16(%rbp), %rdx
	movq	(%rcx,%rdx,8), %rcx
	movslq	-12(%rbp), %rdx
	movl	%eax, (%rcx,%rdx,4)
# %bb.379:                              # %for.inc1898
                                        #   in Loop: Header=BB15_377 Depth=3
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB15_377
.LBB15_380:                             # %for.end1900
                                        #   in Loop: Header=BB15_375 Depth=2
	jmp	.LBB15_381
.LBB15_381:                             # %for.inc1901
                                        #   in Loop: Header=BB15_375 Depth=2
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB15_375
.LBB15_382:                             # %for.end1903
                                        #   in Loop: Header=BB15_373 Depth=1
	movl	$0, -16(%rbp)
.LBB15_383:                             # %for.cond1904
                                        #   Parent Loop BB15_373 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB15_385 Depth 3
	cmpl	$2, -16(%rbp)
	jge	.LBB15_390
# %bb.384:                              # %for.body1907
                                        #   in Loop: Header=BB15_383 Depth=2
	movl	$0, -12(%rbp)
.LBB15_385:                             # %for.cond1908
                                        #   Parent Loop BB15_373 Depth=1
                                        #     Parent Loop BB15_383 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	cmpl	$18, -12(%rbp)
	jge	.LBB15_388
# %bb.386:                              # %for.body1911
                                        #   in Loop: Header=BB15_385 Depth=3
	movabsq	$cofAC8x8_chroma, %rax
	addq	$576, %rax              # imm = 0x240
	movslq	-20(%rbp), %rcx
	imulq	$144, %rcx, %rcx
	addq	%rcx, %rax
	movslq	-16(%rbp), %rcx
	imulq	$72, %rcx, %rcx
	addq	%rcx, %rax
	movslq	-12(%rbp), %rcx
	movl	(%rax,%rcx,4), %eax
	movq	img, %rcx
	movq	14136(%rcx), %rcx
	movl	-32(%rbp), %edx
	addl	$8, %edx
	movslq	%edx, %rdx
	movq	(%rcx,%rdx,8), %rcx
	movslq	-20(%rbp), %rdx
	movq	(%rcx,%rdx,8), %rcx
	movslq	-16(%rbp), %rdx
	movq	(%rcx,%rdx,8), %rcx
	movslq	-12(%rbp), %rdx
	movl	%eax, (%rcx,%rdx,4)
# %bb.387:                              # %for.inc1928
                                        #   in Loop: Header=BB15_385 Depth=3
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB15_385
.LBB15_388:                             # %for.end1930
                                        #   in Loop: Header=BB15_383 Depth=2
	jmp	.LBB15_389
.LBB15_389:                             # %for.inc1931
                                        #   in Loop: Header=BB15_383 Depth=2
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB15_383
.LBB15_390:                             # %for.end1933
                                        #   in Loop: Header=BB15_373 Depth=1
	jmp	.LBB15_391
.LBB15_391:                             # %for.inc1934
                                        #   in Loop: Header=BB15_373 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB15_373
.LBB15_392:                             # %for.end1936
	jmp	.LBB15_393
.LBB15_393:                             # %if.end1937
	movl	$0, -24(%rbp)
.LBB15_394:                             # %for.cond1938
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB15_396 Depth 2
	cmpl	$8, -24(%rbp)
	jge	.LBB15_401
# %bb.395:                              # %for.body1941
                                        #   in Loop: Header=BB15_394 Depth=1
	movl	$0, -28(%rbp)
.LBB15_396:                             # %for.cond1942
                                        #   Parent Loop BB15_394 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$8, -28(%rbp)
	jge	.LBB15_399
# %bb.397:                              # %for.body1945
                                        #   in Loop: Header=BB15_396 Depth=2
	movslq	-24(%rbp), %rax
	shlq	$4, %rax
	leaq	-384(%rbp), %rcx
	addq	%rax, %rcx
	movslq	-28(%rbp), %rax
	movw	(%rcx,%rax,2), %ax
	movq	enc_picture, %rcx
	movq	6424(%rcx), %rcx
	movl	-44(%rbp), %edx
	addl	-24(%rbp), %edx
	movslq	%edx, %rdx
	movq	(%rcx,%rdx,8), %rcx
	movl	-68(%rbp), %edx
	addl	-28(%rbp), %edx
	movslq	%edx, %rdx
	movw	%ax, (%rcx,%rdx,2)
	movq	img, %rax
	addq	$7352, %rax             # imm = 0x1CB8
	movslq	-60(%rbp), %rcx
	shlq	$7, %rcx
	addq	%rcx, %rax
	movslq	-24(%rbp), %rcx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movslq	-28(%rbp), %rcx
	movw	(%rax,%rcx,2), %ax
	movq	img, %rcx
	addq	$12600, %rcx            # imm = 0x3138
	movl	-40(%rbp), %edx
	addl	-28(%rbp), %edx
	movslq	%edx, %rdx
	shlq	$5, %rdx
	addq	%rdx, %rcx
	movl	-36(%rbp), %edx
	addl	-24(%rbp), %edx
	movslq	%edx, %rdx
	movw	%ax, (%rcx,%rdx,2)
# %bb.398:                              # %for.inc1971
                                        #   in Loop: Header=BB15_396 Depth=2
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB15_396
.LBB15_399:                             # %for.end1973
                                        #   in Loop: Header=BB15_394 Depth=1
	jmp	.LBB15_400
.LBB15_400:                             # %for.inc1974
                                        #   in Loop: Header=BB15_394 Depth=1
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB15_394
.LBB15_401:                             # %for.end1976
	movq	img, %rax
	cmpl	$0, 72724(%rax)
	je	.LBB15_419
# %bb.402:                              # %if.then1979
	movl	$0, -20(%rbp)
.LBB15_403:                             # %for.cond1980
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB15_405 Depth 2
                                        #       Child Loop BB15_407 Depth 3
                                        #         Child Loop BB15_409 Depth 4
	cmpl	$4, -20(%rbp)
	jge	.LBB15_418
# %bb.404:                              # %for.body1983
                                        #   in Loop: Header=BB15_403 Depth=1
	movl	-20(%rbp), %eax
	cltd
	movl	$2, %ecx
	idivl	%ecx
	shll	$2, %edx
	movl	%edx, -72(%rbp)
	movl	-20(%rbp), %eax
	cltd
	idivl	%ecx
	shll	$2, %eax
	movl	%eax, -80(%rbp)
	movl	$0, -12(%rbp)
.LBB15_405:                             # %for.cond1988
                                        #   Parent Loop BB15_403 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB15_407 Depth 3
                                        #         Child Loop BB15_409 Depth 4
	cmpl	$2, -12(%rbp)
	jge	.LBB15_416
# %bb.406:                              # %for.body1991
                                        #   in Loop: Header=BB15_405 Depth=2
	movl	$0, -24(%rbp)
.LBB15_407:                             # %for.cond1992
                                        #   Parent Loop BB15_403 Depth=1
                                        #     Parent Loop BB15_405 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB15_409 Depth 4
	cmpl	$4, -24(%rbp)
	jge	.LBB15_414
# %bb.408:                              # %for.body1995
                                        #   in Loop: Header=BB15_407 Depth=3
	movl	$0, -28(%rbp)
.LBB15_409:                             # %for.cond1996
                                        #   Parent Loop BB15_403 Depth=1
                                        #     Parent Loop BB15_405 Depth=2
                                        #       Parent Loop BB15_407 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	cmpl	$4, -28(%rbp)
	jge	.LBB15_412
# %bb.410:                              # %for.body1999
                                        #   in Loop: Header=BB15_409 Depth=4
	movslq	-12(%rbp), %rax
	shlq	$8, %rax
	leaq	-1152(%rbp), %rcx
	addq	%rax, %rcx
	movslq	-20(%rbp), %rax
	shlq	$6, %rax
	addq	%rax, %rcx
	movslq	-24(%rbp), %rax
	shlq	$4, %rax
	addq	%rax, %rcx
	movslq	-28(%rbp), %rax
	movl	(%rcx,%rax,4), %eax
	movq	enc_picture, %rcx
	movq	6464(%rcx), %rcx
	movslq	-12(%rbp), %rdx
	movq	(%rcx,%rdx,8), %rcx
	movl	-44(%rbp), %edx
	addl	-24(%rbp), %edx
	addl	-80(%rbp), %edx
	movslq	%edx, %rdx
	movq	(%rcx,%rdx,8), %rcx
	movl	-68(%rbp), %edx
	addl	-28(%rbp), %edx
	addl	-72(%rbp), %edx
	movslq	%edx, %rdx
	movw	%ax, (%rcx,%rdx,2)
# %bb.411:                              # %for.inc2020
                                        #   in Loop: Header=BB15_409 Depth=4
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB15_409
.LBB15_412:                             # %for.end2022
                                        #   in Loop: Header=BB15_407 Depth=3
	jmp	.LBB15_413
.LBB15_413:                             # %for.inc2023
                                        #   in Loop: Header=BB15_407 Depth=3
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB15_407
.LBB15_414:                             # %for.end2025
                                        #   in Loop: Header=BB15_405 Depth=2
	jmp	.LBB15_415
.LBB15_415:                             # %for.inc2026
                                        #   in Loop: Header=BB15_405 Depth=2
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB15_405
.LBB15_416:                             # %for.end2028
                                        #   in Loop: Header=BB15_403 Depth=1
	jmp	.LBB15_417
.LBB15_417:                             # %for.inc2029
                                        #   in Loop: Header=BB15_403 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB15_403
.LBB15_418:                             # %for.end2031
	jmp	.LBB15_419
.LBB15_419:                             # %if.end2032
	jmp	.LBB15_420
.LBB15_420:                             # %if.end2033
	movl	-112(%rbp), %ebx
	cmpl	$1559993514, -192(%rbp) # imm = 0x5CFB9CAA
	jne	.LBB15_422
.LBB15_421:
	movl	%ebx, %eax
	addq	$1144, %rsp             # imm = 0x478
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB15_422:                             # %func_exit
	.cfi_def_cfa %rbp, 16
	callq	detect_breach
	jmp	.LBB15_421
.Lfunc_end15:
	.size	Mode_Decision_for_new_8x8IntraBlocks.10, .Lfunc_end15-Mode_Decision_for_new_8x8IntraBlocks.10
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function Mode_Decision_for_new_8x8IntraBlocks.11
.LCPI16_0:
	.quad	5055640609639927018     # double 1.0E+30
.LCPI16_1:
	.quad	4616189618054758400     # double 4
	.text
	.globl	Mode_Decision_for_new_8x8IntraBlocks.11
	.p2align	4, 0x90
	.type	Mode_Decision_for_new_8x8IntraBlocks.11,@function
Mode_Decision_for_new_8x8IntraBlocks.11: # @Mode_Decision_for_new_8x8IntraBlocks.11
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$1144, %rsp             # imm = 0x478
	.cfi_offset %rbx, -24
	vmovsd	.LCPI16_0(%rip), %xmm1  # xmm1 = mem[0],zero
	movl	$1732674303, -176(%rbp) # imm = 0x674682FF
	movl	%edi, -32(%rbp)
	vmovsd	%xmm0, -152(%rbp)
	movq	%rsi, -168(%rbp)
	movl	$0, -60(%rbp)
	movl	$0, -112(%rbp)
	vxorps	%xmm0, %xmm0, %xmm0
	vmovsd	%xmm0, -144(%rbp)
	movl	-32(%rbp), %eax
	cltd
	movl	$2, %ecx
	idivl	%ecx
	shll	$3, %edx
	movl	%edx, -40(%rbp)
	movl	-32(%rbp), %eax
	cltd
	idivl	%ecx
	shll	$3, %eax
	movl	%eax, -36(%rbp)
	movq	img, %rax
	movl	152(%rax), %eax
	addl	-40(%rbp), %eax
	movl	%eax, -68(%rbp)
	movq	img, %rax
	movl	156(%rax), %eax
	addl	-36(%rbp), %eax
	movl	%eax, -44(%rbp)
	movq	img, %rax
	movl	168(%rax), %eax
	addl	-40(%rbp), %eax
	movl	%eax, -96(%rbp)
	movq	img, %rax
	movl	172(%rax), %eax
	addl	-36(%rbp), %eax
	movl	%eax, -92(%rbp)
	movl	-68(%rbp), %eax
	cltd
	movl	$4, %ecx
	idivl	%ecx
	movl	%eax, -188(%rbp)
	movl	-44(%rbp), %eax
	cltd
	idivl	%ecx
	movl	%eax, -172(%rbp)
	vmovsd	%xmm1, -136(%rbp)
	movq	imgY_org, %rax
	movq	%rax, -160(%rbp)
	movq	img, %rax
	movq	14168(%rax), %rax
	movq	img, %rdx
	movslq	12(%rdx), %rdx
	imulq	$632, %rdx, %rdx        # imm = 0x278
	addq	%rdx, %rax
	movl	524(%rax), %eax
	movl	%eax, -56(%rbp)
	movq	img, %rax
	movl	12(%rax), %edi
	movl	-40(%rbp), %eax
	cltd
	idivl	%ecx
	movl	%eax, %esi
	movl	-36(%rbp), %eax
	cltd
	idivl	%ecx
	movl	%eax, %edx
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	xorl	%r8d, %r8d
	leaq	-248(%rbp), %r9
	callq	getLuma4x4Neighbour
	movq	img, %rax
	movl	12(%rax), %edi
	movl	-40(%rbp), %eax
	cltd
	movl	$4, %ecx
	idivl	%ecx
	movl	%eax, %esi
	movl	-36(%rbp), %eax
	cltd
	idivl	%ecx
	movl	%eax, %edx
	movl	$0, %ecx
	movl	$4294967295, %r8d       # imm = 0xFFFFFFFF
	leaq	-224(%rbp), %r9
	callq	getLuma4x4Neighbour
	movq	input, %rax
	cmpl	$0, 216(%rax)
	je	.LBB16_8
# %bb.1:                                # %if.then
	cmpl	$0, -224(%rbp)
	je	.LBB16_3
# %bb.2:                                # %cond.true
	movq	img, %rax
	movq	71784(%rax), %rax
	movslq	-220(%rbp), %rcx
	movl	(%rax,%rcx,4), %eax
	jmp	.LBB16_4
.LBB16_3:                               # %cond.false
	xorl	%eax, %eax
	jmp	.LBB16_4
.LBB16_4:                               # %cond.end
	movl	%eax, -224(%rbp)
	cmpl	$0, -248(%rbp)
	je	.LBB16_6
# %bb.5:                                # %cond.true19
	movq	img, %rax
	movq	71784(%rax), %rax
	movslq	-244(%rbp), %rcx
	movl	(%rax,%rcx,4), %eax
	jmp	.LBB16_7
.LBB16_6:                               # %cond.false24
	xorl	%eax, %eax
	jmp	.LBB16_7
.LBB16_7:                               # %cond.end25
	movl	%eax, -248(%rbp)
.LBB16_8:                               # %if.end
	movl	-32(%rbp), %eax
	cltd
	movl	$2, %ecx
	idivl	%ecx
	cmpl	$0, %eax
	je	.LBB16_13
# %bb.9:                                # %if.then30
	cmpl	$0, -224(%rbp)
	je	.LBB16_11
# %bb.10:                               # %cond.true33
	movq	img, %rax
	movq	112(%rax), %rax
	movslq	-208(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movslq	-204(%rbp), %rcx
	movl	(%rax,%rcx,4), %eax
	jmp	.LBB16_12
.LBB16_11:                              # %cond.false38
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	jmp	.LBB16_12
.LBB16_12:                              # %cond.end39
	movl	%eax, -124(%rbp)
	jmp	.LBB16_17
.LBB16_13:                              # %if.else
	cmpl	$0, -224(%rbp)
	je	.LBB16_15
# %bb.14:                               # %cond.true43
	movq	img, %rax
	movq	104(%rax), %rax
	movslq	-208(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movslq	-204(%rbp), %rcx
	movl	(%rax,%rcx,4), %eax
	jmp	.LBB16_16
.LBB16_15:                              # %cond.false50
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	jmp	.LBB16_16
.LBB16_16:                              # %cond.end51
	movl	%eax, -124(%rbp)
.LBB16_17:                              # %if.end53
	movl	-32(%rbp), %eax
	cltd
	movl	$2, %ecx
	idivl	%ecx
	cmpl	$0, %edx
	je	.LBB16_22
# %bb.18:                               # %if.then56
	cmpl	$0, -248(%rbp)
	je	.LBB16_20
# %bb.19:                               # %cond.true59
	movq	img, %rax
	movq	112(%rax), %rax
	movslq	-232(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movslq	-228(%rbp), %rcx
	movl	(%rax,%rcx,4), %eax
	jmp	.LBB16_21
.LBB16_20:                              # %cond.false67
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	jmp	.LBB16_21
.LBB16_21:                              # %cond.end68
	movl	%eax, -120(%rbp)
	jmp	.LBB16_26
.LBB16_22:                              # %if.else70
	cmpl	$0, -248(%rbp)
	je	.LBB16_24
# %bb.23:                               # %cond.true73
	movq	img, %rax
	movq	104(%rax), %rax
	movslq	-232(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movslq	-228(%rbp), %rcx
	movl	(%rax,%rcx,4), %eax
	jmp	.LBB16_25
.LBB16_24:                              # %cond.false81
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	jmp	.LBB16_25
.LBB16_25:                              # %cond.end82
	movl	%eax, -120(%rbp)
.LBB16_26:                              # %if.end84
	cmpl	$0, -124(%rbp)
	jl	.LBB16_28
# %bb.27:                               # %lor.lhs.false
	cmpl	$0, -120(%rbp)
	jge	.LBB16_29
.LBB16_28:                              # %cond.true86
	movl	$2, %eax
	jmp	.LBB16_33
.LBB16_29:                              # %cond.false87
	movl	-124(%rbp), %eax
	cmpl	-120(%rbp), %eax
	jge	.LBB16_31
# %bb.30:                               # %cond.true89
	movl	-124(%rbp), %eax
	jmp	.LBB16_32
.LBB16_31:                              # %cond.false90
	movl	-120(%rbp), %eax
.LBB16_32:                              # %cond.end91
.LBB16_33:                              # %cond.end93
	movl	%eax, -104(%rbp)
	movq	-168(%rbp), %rax
	movl	$2147483647, (%rax)     # imm = 0x7FFFFFFF
	movl	-68(%rbp), %edi
	movl	-44(%rbp), %esi
	leaq	-180(%rbp), %rdx
	leaq	-196(%rbp), %rcx
	leaq	-192(%rbp), %r8
	callq	intrapred_luma8x8
	movl	$0, -48(%rbp)
.LBB16_34:                              # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB16_46 Depth 2
                                        #       Child Loop BB16_48 Depth 3
                                        #     Child Loop BB16_61 Depth 2
                                        #       Child Loop BB16_63 Depth 3
                                        #     Child Loop BB16_70 Depth 2
                                        #       Child Loop BB16_72 Depth 3
                                        #         Child Loop BB16_74 Depth 4
                                        #     Child Loop BB16_82 Depth 2
                                        #       Child Loop BB16_84 Depth 3
                                        #     Child Loop BB16_92 Depth 2
                                        #       Child Loop BB16_94 Depth 3
                                        #     Child Loop BB16_100 Depth 2
                                        #       Child Loop BB16_102 Depth 3
                                        #     Child Loop BB16_108 Depth 2
                                        #       Child Loop BB16_110 Depth 3
                                        #     Child Loop BB16_116 Depth 2
                                        #       Child Loop BB16_118 Depth 3
                                        #         Child Loop BB16_120 Depth 4
                                        #       Child Loop BB16_126 Depth 3
                                        #         Child Loop BB16_128 Depth 4
                                        #       Child Loop BB16_134 Depth 3
                                        #         Child Loop BB16_136 Depth 4
                                        #     Child Loop BB16_144 Depth 2
                                        #       Child Loop BB16_146 Depth 3
                                        #     Child Loop BB16_179 Depth 2
                                        #       Child Loop BB16_181 Depth 3
                                        #     Child Loop BB16_188 Depth 2
                                        #       Child Loop BB16_190 Depth 3
                                        #         Child Loop BB16_192 Depth 4
                                        #     Child Loop BB16_200 Depth 2
                                        #       Child Loop BB16_202 Depth 3
                                        #         Child Loop BB16_204 Depth 4
                                        #       Child Loop BB16_210 Depth 3
                                        #         Child Loop BB16_212 Depth 4
                                        #       Child Loop BB16_218 Depth 3
                                        #         Child Loop BB16_220 Depth 4
                                        #           Child Loop BB16_222 Depth 5
                                        #     Child Loop BB16_232 Depth 2
                                        #       Child Loop BB16_234 Depth 3
	cmpl	$9, -48(%rbp)
	jge	.LBB16_245
# %bb.35:                               # %for.body
                                        #   in Loop: Header=BB16_34 Depth=1
	cmpl	$2, -48(%rbp)
	je	.LBB16_44
# %bb.36:                               # %lor.lhs.false97
                                        #   in Loop: Header=BB16_34 Depth=1
	cmpl	$0, -48(%rbp)
	je	.LBB16_39
# %bb.37:                               # %lor.lhs.false99
                                        #   in Loop: Header=BB16_34 Depth=1
	cmpl	$7, -48(%rbp)
	je	.LBB16_39
# %bb.38:                               # %lor.lhs.false101
                                        #   in Loop: Header=BB16_34 Depth=1
	cmpl	$3, -48(%rbp)
	jne	.LBB16_40
.LBB16_39:                              # %land.lhs.true
                                        #   in Loop: Header=BB16_34 Depth=1
	cmpl	$0, -196(%rbp)
	jne	.LBB16_44
.LBB16_40:                              # %lor.lhs.false104
                                        #   in Loop: Header=BB16_34 Depth=1
	cmpl	$1, -48(%rbp)
	je	.LBB16_42
# %bb.41:                               # %lor.lhs.false106
                                        #   in Loop: Header=BB16_34 Depth=1
	cmpl	$8, -48(%rbp)
	jne	.LBB16_43
.LBB16_42:                              # %land.lhs.true108
                                        #   in Loop: Header=BB16_34 Depth=1
	cmpl	$0, -180(%rbp)
	jne	.LBB16_44
.LBB16_43:                              # %lor.lhs.false110
                                        #   in Loop: Header=BB16_34 Depth=1
	cmpl	$0, -192(%rbp)
	je	.LBB16_243
.LBB16_44:                              # %if.then112
                                        #   in Loop: Header=BB16_34 Depth=1
	movq	input, %rax
	cmpl	$0, 2464(%rax)
	jne	.LBB16_59
# %bb.45:                               # %if.then114
                                        #   in Loop: Header=BB16_34 Depth=1
	movl	$0, -16(%rbp)
	movl	$0, -52(%rbp)
.LBB16_46:                              # %for.cond115
                                        #   Parent Loop BB16_34 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB16_48 Depth 3
	cmpl	$8, -16(%rbp)
	jge	.LBB16_53
# %bb.47:                               # %for.body117
                                        #   in Loop: Header=BB16_46 Depth=2
	movl	$0, -12(%rbp)
.LBB16_48:                              # %for.cond118
                                        #   Parent Loop BB16_34 Depth=1
                                        #     Parent Loop BB16_46 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	cmpl	$8, -12(%rbp)
	jge	.LBB16_51
# %bb.49:                               # %for.body120
                                        #   in Loop: Header=BB16_48 Depth=3
	movq	-160(%rbp), %rax
	movl	-92(%rbp), %ecx
	addl	-16(%rbp), %ecx
	movslq	%ecx, %rcx
	movq	(%rax,%rcx,8), %rax
	movl	-96(%rbp), %ecx
	addl	-12(%rbp), %ecx
	movslq	%ecx, %rcx
	movzwl	(%rax,%rcx,2), %eax
	movq	img, %rcx
	addq	$7352, %rcx             # imm = 0x1CB8
	movslq	-48(%rbp), %rdx
	shlq	$7, %rdx
	addq	%rdx, %rcx
	movslq	-16(%rbp), %rdx
	shlq	$4, %rdx
	addq	%rdx, %rcx
	movslq	-12(%rbp), %rdx
	movzwl	(%rcx,%rdx,2), %ecx
	subl	%ecx, %eax
	movslq	-52(%rbp), %rcx
	movl	%eax, -640(%rbp,%rcx,4)
# %bb.50:                               # %for.inc
                                        #   in Loop: Header=BB16_48 Depth=3
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB16_48
.LBB16_51:                              # %for.end
                                        #   in Loop: Header=BB16_46 Depth=2
	jmp	.LBB16_52
.LBB16_52:                              # %for.inc137
                                        #   in Loop: Header=BB16_46 Depth=2
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB16_46
.LBB16_53:                              # %for.end139
                                        #   in Loop: Header=BB16_34 Depth=1
	movl	-48(%rbp), %eax
	cmpl	-104(%rbp), %eax
	jne	.LBB16_55
# %bb.54:                               # %cond.true142
                                        #   in Loop: Header=BB16_34 Depth=1
	xorl	%eax, %eax
	jmp	.LBB16_56
.LBB16_55:                              # %cond.false143
                                        #   in Loop: Header=BB16_34 Depth=1
	vmovsd	.LCPI16_1(%rip), %xmm0  # xmm0 = mem[0],zero
	vmulsd	-152(%rbp), %xmm0, %xmm0
	vroundsd	$9, %xmm0, %xmm0, %xmm0
	vcvttsd2si	%xmm0, %eax
.LBB16_56:                              # %cond.end146
                                        #   in Loop: Header=BB16_34 Depth=1
	leaq	-640(%rbp), %rdi
	movl	%eax, -116(%rbp)
	movq	input, %rax
	movl	24(%rax), %esi
	callq	SATD8X8
	addl	-116(%rbp), %eax
	movl	%eax, -116(%rbp)
	movl	-116(%rbp), %eax
	movq	-168(%rbp), %rcx
	cmpl	(%rcx), %eax
	jge	.LBB16_58
# %bb.57:                               # %if.then151
                                        #   in Loop: Header=BB16_34 Depth=1
	movl	-48(%rbp), %eax
	movl	%eax, -60(%rbp)
	movl	-116(%rbp), %eax
	movq	-168(%rbp), %rcx
	movl	%eax, (%rcx)
.LBB16_58:                              # %if.end152
                                        #   in Loop: Header=BB16_34 Depth=1
	jmp	.LBB16_242
.LBB16_59:                              # %if.else153
                                        #   in Loop: Header=BB16_34 Depth=1
	movq	img, %rax
	cmpl	$0, 72724(%rax)
	jne	.LBB16_91
# %bb.60:                               # %if.then155
                                        #   in Loop: Header=BB16_34 Depth=1
	movl	$0, -16(%rbp)
.LBB16_61:                              # %for.cond156
                                        #   Parent Loop BB16_34 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB16_63 Depth 3
	cmpl	$8, -16(%rbp)
	jge	.LBB16_68
# %bb.62:                               # %for.body159
                                        #   in Loop: Header=BB16_61 Depth=2
	movl	$0, -12(%rbp)
.LBB16_63:                              # %for.cond160
                                        #   Parent Loop BB16_34 Depth=1
                                        #     Parent Loop BB16_61 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	cmpl	$8, -12(%rbp)
	jge	.LBB16_66
# %bb.64:                               # %for.body163
                                        #   in Loop: Header=BB16_63 Depth=3
	movq	img, %rax
	addq	$7352, %rax             # imm = 0x1CB8
	movslq	-48(%rbp), %rcx
	shlq	$7, %rcx
	addq	%rcx, %rax
	movslq	-16(%rbp), %rcx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movslq	-12(%rbp), %rcx
	movw	(%rax,%rcx,2), %ax
	movq	img, %rcx
	addq	$12600, %rcx            # imm = 0x3138
	movl	-40(%rbp), %edx
	addl	-12(%rbp), %edx
	movslq	%edx, %rdx
	shlq	$5, %rdx
	addq	%rdx, %rcx
	movl	-36(%rbp), %edx
	addl	-16(%rbp), %edx
	movslq	%edx, %rdx
	movw	%ax, (%rcx,%rdx,2)
	movq	-160(%rbp), %rax
	movl	-92(%rbp), %ecx
	addl	-16(%rbp), %ecx
	movslq	%ecx, %rcx
	movq	(%rax,%rcx,8), %rax
	movl	-96(%rbp), %ecx
	addl	-12(%rbp), %ecx
	movslq	%ecx, %rcx
	movzwl	(%rax,%rcx,2), %eax
	movq	img, %rcx
	addq	$7352, %rcx             # imm = 0x1CB8
	movslq	-48(%rbp), %rdx
	shlq	$7, %rdx
	addq	%rdx, %rcx
	movslq	-16(%rbp), %rdx
	shlq	$4, %rdx
	addq	%rdx, %rcx
	movslq	-12(%rbp), %rdx
	movzwl	(%rcx,%rdx,2), %ecx
	subl	%ecx, %eax
	movq	img, %rcx
	addq	$13112, %rcx            # imm = 0x3338
	movslq	-12(%rbp), %rdx
	shlq	$6, %rdx
	addq	%rdx, %rcx
	movslq	-16(%rbp), %rdx
	movl	%eax, (%rcx,%rdx,4)
# %bb.65:                               # %for.inc197
                                        #   in Loop: Header=BB16_63 Depth=3
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB16_63
.LBB16_66:                              # %for.end199
                                        #   in Loop: Header=BB16_61 Depth=2
	jmp	.LBB16_67
.LBB16_67:                              # %for.inc200
                                        #   in Loop: Header=BB16_61 Depth=2
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB16_61
.LBB16_68:                              # %for.end202
                                        #   in Loop: Header=BB16_34 Depth=1
	movb	$0, %al
	callq	store_coding_state_cs_cm
	movl	-32(%rbp), %esi
	movl	-48(%rbp), %edx
	vmovsd	-152(%rbp), %xmm0       # xmm0 = mem[0],zero
	vmovsd	-136(%rbp), %xmm1       # xmm1 = mem[0],zero
	movl	-104(%rbp), %ecx
	leaq	-128(%rbp), %rdi
	callq	RDCost_for_8x8IntraBlocks
	vmovsd	%xmm0, -144(%rbp)
	vmovsd	-136(%rbp), %xmm1       # xmm1 = mem[0],zero
	vucomisd	%xmm0, %xmm1
	jbe	.LBB16_90
# %bb.69:                               # %if.then206
                                        #   in Loop: Header=BB16_34 Depth=1
	movl	$0, -16(%rbp)
.LBB16_70:                              # %for.cond207
                                        #   Parent Loop BB16_34 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB16_72 Depth 3
                                        #         Child Loop BB16_74 Depth 4
	cmpl	$2, -16(%rbp)
	jge	.LBB16_81
# %bb.71:                               # %for.body210
                                        #   in Loop: Header=BB16_70 Depth=2
	movl	$0, -12(%rbp)
.LBB16_72:                              # %for.cond211
                                        #   Parent Loop BB16_34 Depth=1
                                        #     Parent Loop BB16_70 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB16_74 Depth 4
	cmpl	$65, -12(%rbp)
	jge	.LBB16_79
# %bb.73:                               # %for.body214
                                        #   in Loop: Header=BB16_72 Depth=3
	movl	$0, -52(%rbp)
.LBB16_74:                              # %for.cond215
                                        #   Parent Loop BB16_34 Depth=1
                                        #     Parent Loop BB16_70 Depth=2
                                        #       Parent Loop BB16_72 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	cmpl	$4, -52(%rbp)
	jge	.LBB16_77
# %bb.75:                               # %for.body218
                                        #   in Loop: Header=BB16_74 Depth=4
	movq	img, %rax
	movq	14136(%rax), %rax
	movslq	-32(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movslq	-52(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movslq	-16(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movslq	-12(%rbp), %rcx
	movl	(%rax,%rcx,4), %eax
	movq	cofAC8x8, %rcx
	movslq	-32(%rbp), %rdx
	movq	(%rcx,%rdx,8), %rcx
	movslq	-52(%rbp), %rdx
	movq	(%rcx,%rdx,8), %rcx
	movslq	-16(%rbp), %rdx
	movq	(%rcx,%rdx,8), %rcx
	movslq	-12(%rbp), %rdx
	movl	%eax, (%rcx,%rdx,4)
# %bb.76:                               # %for.inc235
                                        #   in Loop: Header=BB16_74 Depth=4
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB16_74
.LBB16_77:                              # %for.end237
                                        #   in Loop: Header=BB16_72 Depth=3
	jmp	.LBB16_78
.LBB16_78:                              # %for.inc238
                                        #   in Loop: Header=BB16_72 Depth=3
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB16_72
.LBB16_79:                              # %for.end240
                                        #   in Loop: Header=BB16_70 Depth=2
	jmp	.LBB16_80
.LBB16_80:                              # %for.inc241
                                        #   in Loop: Header=BB16_70 Depth=2
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB16_70
.LBB16_81:                              # %for.end243
                                        #   in Loop: Header=BB16_34 Depth=1
	movl	$0, -28(%rbp)
.LBB16_82:                              # %for.cond244
                                        #   Parent Loop BB16_34 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB16_84 Depth 3
	cmpl	$8, -28(%rbp)
	jge	.LBB16_89
# %bb.83:                               # %for.body247
                                        #   in Loop: Header=BB16_82 Depth=2
	movl	$0, -24(%rbp)
.LBB16_84:                              # %for.cond248
                                        #   Parent Loop BB16_34 Depth=1
                                        #     Parent Loop BB16_82 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	cmpl	$8, -24(%rbp)
	jge	.LBB16_87
# %bb.85:                               # %for.body251
                                        #   in Loop: Header=BB16_84 Depth=3
	movq	enc_picture, %rax
	movq	6424(%rax), %rax
	movl	-44(%rbp), %ecx
	addl	-28(%rbp), %ecx
	movslq	%ecx, %rcx
	movq	(%rax,%rcx,8), %rax
	movl	-68(%rbp), %ecx
	addl	-24(%rbp), %ecx
	movslq	%ecx, %rcx
	movw	(%rax,%rcx,2), %ax
	movslq	-28(%rbp), %rcx
	shlq	$4, %rcx
	leaq	-384(%rbp), %rdx
	addq	%rcx, %rdx
	movslq	-24(%rbp), %rcx
	movw	%ax, (%rdx,%rcx,2)
# %bb.86:                               # %for.inc262
                                        #   in Loop: Header=BB16_84 Depth=3
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB16_84
.LBB16_87:                              # %for.end264
                                        #   in Loop: Header=BB16_82 Depth=2
	jmp	.LBB16_88
.LBB16_88:                              # %for.inc265
                                        #   in Loop: Header=BB16_82 Depth=2
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB16_82
.LBB16_89:                              # %for.end267
                                        #   in Loop: Header=BB16_34 Depth=1
	movl	-128(%rbp), %eax
	movl	%eax, -112(%rbp)
	vmovsd	-144(%rbp), %xmm0       # xmm0 = mem[0],zero
	vmovsd	%xmm0, -136(%rbp)
	movl	-48(%rbp), %eax
	movl	%eax, -60(%rbp)
.LBB16_90:                              # %if.end268
                                        #   in Loop: Header=BB16_34 Depth=1
	movb	$0, %al
	callq	reset_coding_state_cs_cm
	jmp	.LBB16_241
.LBB16_91:                              # %if.else269
                                        #   in Loop: Header=BB16_34 Depth=1
	movl	$0, -16(%rbp)
.LBB16_92:                              # %for.cond270
                                        #   Parent Loop BB16_34 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB16_94 Depth 3
	cmpl	$8, -16(%rbp)
	jge	.LBB16_99
# %bb.93:                               # %for.body273
                                        #   in Loop: Header=BB16_92 Depth=2
	movl	$0, -12(%rbp)
.LBB16_94:                              # %for.cond274
                                        #   Parent Loop BB16_34 Depth=1
                                        #     Parent Loop BB16_92 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	cmpl	$8, -12(%rbp)
	jge	.LBB16_97
# %bb.95:                               # %for.body277
                                        #   in Loop: Header=BB16_94 Depth=3
	movq	imgUV_org, %rax
	movq	(%rax), %rax
	movl	-92(%rbp), %ecx
	addl	-16(%rbp), %ecx
	movslq	%ecx, %rcx
	movq	(%rax,%rcx,8), %rax
	movl	-96(%rbp), %ecx
	addl	-12(%rbp), %ecx
	movslq	%ecx, %rcx
	movzwl	(%rax,%rcx,2), %eax
	movq	img, %rcx
	addq	$8504, %rcx             # imm = 0x2138
	movslq	-56(%rbp), %rdx
	shlq	$9, %rdx
	addq	%rdx, %rcx
	movl	-40(%rbp), %edx
	addl	-12(%rbp), %edx
	movslq	%edx, %rdx
	shlq	$5, %rdx
	addq	%rdx, %rcx
	movl	-36(%rbp), %edx
	addl	-16(%rbp), %edx
	movslq	%edx, %rdx
	movzwl	(%rcx,%rdx,2), %ecx
	subl	%ecx, %eax
	movl	%eax, -64(%rbp)
	movq	imgY_org, %rax
	movl	-92(%rbp), %ecx
	addl	-16(%rbp), %ecx
	movslq	%ecx, %rcx
	movq	(%rax,%rcx,8), %rax
	movl	-96(%rbp), %ecx
	addl	-12(%rbp), %ecx
	movslq	%ecx, %rcx
	movzwl	(%rax,%rcx,2), %eax
	movq	img, %rcx
	addq	$7352, %rcx             # imm = 0x1CB8
	movslq	-48(%rbp), %rdx
	shlq	$7, %rdx
	addq	%rdx, %rcx
	movslq	-16(%rbp), %rdx
	shlq	$4, %rdx
	addq	%rdx, %rcx
	movslq	-12(%rbp), %rdx
	movzwl	(%rcx,%rdx,2), %ecx
	subl	%ecx, %eax
	movl	%eax, -76(%rbp)
	movq	imgUV_org, %rax
	movq	8(%rax), %rax
	movl	-92(%rbp), %ecx
	addl	-16(%rbp), %ecx
	movslq	%ecx, %rcx
	movq	(%rax,%rcx,8), %rax
	movl	-96(%rbp), %ecx
	addl	-12(%rbp), %ecx
	movslq	%ecx, %rcx
	movzwl	(%rax,%rcx,2), %eax
	movq	img, %rcx
	addq	$8504, %rcx             # imm = 0x2138
	addq	$2048, %rcx             # imm = 0x800
	movslq	-56(%rbp), %rdx
	shlq	$9, %rdx
	addq	%rdx, %rcx
	movl	-40(%rbp), %edx
	addl	-12(%rbp), %edx
	movslq	%edx, %rdx
	shlq	$5, %rdx
	addq	%rdx, %rcx
	movl	-36(%rbp), %edx
	addl	-16(%rbp), %edx
	movslq	%edx, %rdx
	movzwl	(%rcx,%rdx,2), %ecx
	subl	%ecx, %eax
	movl	%eax, -80(%rbp)
	movl	-80(%rbp), %eax
	subl	-64(%rbp), %eax
	movslq	-12(%rbp), %rcx
	shlq	$6, %rcx
	movabsq	$resTrans_R, %rdx
	movq	%rdx, %rsi
	addq	%rcx, %rsi
	movslq	-16(%rbp), %rcx
	movl	%eax, (%rsi,%rcx,4)
	movl	-64(%rbp), %eax
	movslq	-12(%rbp), %rcx
	shlq	$6, %rcx
	addq	%rcx, %rdx
	movslq	-16(%rbp), %rcx
	movl	(%rdx,%rcx,4), %ecx
	sarl	$1, %ecx
	addl	%ecx, %eax
	movl	%eax, -88(%rbp)
	movl	-76(%rbp), %eax
	subl	-88(%rbp), %eax
	movslq	-12(%rbp), %rcx
	shlq	$6, %rcx
	movabsq	$resTrans_B, %rdx
	movq	%rdx, %rsi
	addq	%rcx, %rsi
	movslq	-16(%rbp), %rcx
	movl	%eax, (%rsi,%rcx,4)
	movl	-88(%rbp), %eax
	movslq	-12(%rbp), %rcx
	shlq	$6, %rcx
	addq	%rcx, %rdx
	movslq	-16(%rbp), %rcx
	movl	(%rdx,%rcx,4), %ecx
	sarl	$1, %ecx
	addl	%ecx, %eax
	movslq	-12(%rbp), %rcx
	shlq	$6, %rcx
	movabsq	$resTrans_G, %rdx
	addq	%rcx, %rdx
	movslq	-16(%rbp), %rcx
	movl	%eax, (%rdx,%rcx,4)
# %bb.96:                               # %for.inc358
                                        #   in Loop: Header=BB16_94 Depth=3
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB16_94
.LBB16_97:                              # %for.end360
                                        #   in Loop: Header=BB16_92 Depth=2
	jmp	.LBB16_98
.LBB16_98:                              # %for.inc361
                                        #   in Loop: Header=BB16_92 Depth=2
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB16_92
.LBB16_99:                              # %for.end363
                                        #   in Loop: Header=BB16_34 Depth=1
	movl	$0, -16(%rbp)
.LBB16_100:                             # %for.cond364
                                        #   Parent Loop BB16_34 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB16_102 Depth 3
	cmpl	$8, -16(%rbp)
	jge	.LBB16_107
# %bb.101:                              # %for.body367
                                        #   in Loop: Header=BB16_100 Depth=2
	movl	$0, -12(%rbp)
.LBB16_102:                             # %for.cond368
                                        #   Parent Loop BB16_34 Depth=1
                                        #     Parent Loop BB16_100 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	cmpl	$8, -12(%rbp)
	jge	.LBB16_105
# %bb.103:                              # %for.body371
                                        #   in Loop: Header=BB16_102 Depth=3
	movslq	-12(%rbp), %rax
	shlq	$6, %rax
	movabsq	$resTrans_G, %rcx
	addq	%rax, %rcx
	movslq	-16(%rbp), %rax
	movl	(%rcx,%rax,4), %eax
	movq	img, %rcx
	addq	$13112, %rcx            # imm = 0x3338
	movslq	-12(%rbp), %rdx
	shlq	$6, %rdx
	addq	%rdx, %rcx
	movslq	-16(%rbp), %rdx
	movl	%eax, (%rcx,%rdx,4)
# %bb.104:                              # %for.inc381
                                        #   in Loop: Header=BB16_102 Depth=3
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB16_102
.LBB16_105:                             # %for.end383
                                        #   in Loop: Header=BB16_100 Depth=2
	jmp	.LBB16_106
.LBB16_106:                             # %for.inc384
                                        #   in Loop: Header=BB16_100 Depth=2
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB16_100
.LBB16_107:                             # %for.end386
                                        #   in Loop: Header=BB16_34 Depth=1
	movb	$0, %al
	callq	store_coding_state_cs_cm
	movl	-32(%rbp), %esi
	movl	-48(%rbp), %edx
	vmovsd	-152(%rbp), %xmm0       # xmm0 = mem[0],zero
	vmovsd	-136(%rbp), %xmm1       # xmm1 = mem[0],zero
	movl	-104(%rbp), %ecx
	leaq	-128(%rbp), %rdi
	callq	RDCost_for_8x8IntraBlocks
	vcvttsd2si	%xmm0, %eax
	movl	%eax, -108(%rbp)
	movb	$0, %al
	callq	reset_coding_state_cs_cm
	movl	$0, -16(%rbp)
.LBB16_108:                             # %for.cond389
                                        #   Parent Loop BB16_34 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB16_110 Depth 3
	cmpl	$8, -16(%rbp)
	jge	.LBB16_115
# %bb.109:                              # %for.body392
                                        #   in Loop: Header=BB16_108 Depth=2
	movl	$0, -12(%rbp)
.LBB16_110:                             # %for.cond393
                                        #   Parent Loop BB16_34 Depth=1
                                        #     Parent Loop BB16_108 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	cmpl	$8, -12(%rbp)
	jge	.LBB16_113
# %bb.111:                              # %for.body396
                                        #   in Loop: Header=BB16_110 Depth=3
	movq	img, %rax
	addq	$13112, %rax            # imm = 0x3338
	movslq	-12(%rbp), %rcx
	shlq	$6, %rcx
	addq	%rcx, %rax
	movslq	-16(%rbp), %rcx
	movl	(%rax,%rcx,4), %eax
	movslq	-12(%rbp), %rcx
	shlq	$6, %rcx
	movabsq	$rec_resG, %rdx
	addq	%rcx, %rdx
	movslq	-16(%rbp), %rcx
	movl	%eax, (%rdx,%rcx,4)
# %bb.112:                              # %for.inc406
                                        #   in Loop: Header=BB16_110 Depth=3
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB16_110
.LBB16_113:                             # %for.end408
                                        #   in Loop: Header=BB16_108 Depth=2
	jmp	.LBB16_114
.LBB16_114:                             # %for.inc409
                                        #   in Loop: Header=BB16_108 Depth=2
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB16_108
.LBB16_115:                             # %for.end411
                                        #   in Loop: Header=BB16_34 Depth=1
	movb	$0, %al
	callq	store_coding_state_cs_cm
	movl	$0, -20(%rbp)
.LBB16_116:                             # %for.cond412
                                        #   Parent Loop BB16_34 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB16_118 Depth 3
                                        #         Child Loop BB16_120 Depth 4
                                        #       Child Loop BB16_126 Depth 3
                                        #         Child Loop BB16_128 Depth 4
                                        #       Child Loop BB16_134 Depth 3
                                        #         Child Loop BB16_136 Depth 4
	cmpl	$4, -20(%rbp)
	jge	.LBB16_143
# %bb.117:                              # %for.body415
                                        #   in Loop: Header=BB16_116 Depth=2
	movl	-20(%rbp), %eax
	cltd
	movl	$2, %ecx
	idivl	%ecx
	shll	$2, %edx
	movl	%edx, -72(%rbp)
	movl	-20(%rbp), %eax
	cltd
	idivl	%ecx
	shll	$2, %eax
	movl	%eax, -84(%rbp)
	movl	$0, -16(%rbp)
.LBB16_118:                             # %for.cond420
                                        #   Parent Loop BB16_34 Depth=1
                                        #     Parent Loop BB16_116 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB16_120 Depth 4
	cmpl	$4, -16(%rbp)
	jge	.LBB16_125
# %bb.119:                              # %for.body423
                                        #   in Loop: Header=BB16_118 Depth=3
	movl	$0, -12(%rbp)
.LBB16_120:                             # %for.cond424
                                        #   Parent Loop BB16_34 Depth=1
                                        #     Parent Loop BB16_116 Depth=2
                                        #       Parent Loop BB16_118 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	cmpl	$4, -12(%rbp)
	jge	.LBB16_123
# %bb.121:                              # %for.body427
                                        #   in Loop: Header=BB16_120 Depth=4
	movl	-12(%rbp), %eax
	addl	-72(%rbp), %eax
	cltq
	shlq	$6, %rax
	movabsq	$resTrans_R, %rcx
	addq	%rax, %rcx
	movl	-16(%rbp), %eax
	addl	-84(%rbp), %eax
	cltq
	movl	(%rcx,%rax,4), %eax
	movq	img, %rcx
	addq	$13112, %rcx            # imm = 0x3338
	movslq	-12(%rbp), %rdx
	shlq	$6, %rdx
	addq	%rdx, %rcx
	movslq	-16(%rbp), %rdx
	movl	%eax, (%rcx,%rdx,4)
# %bb.122:                              # %for.inc439
                                        #   in Loop: Header=BB16_120 Depth=4
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB16_120
.LBB16_123:                             # %for.end441
                                        #   in Loop: Header=BB16_118 Depth=3
	jmp	.LBB16_124
.LBB16_124:                             # %for.inc442
                                        #   in Loop: Header=BB16_118 Depth=3
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB16_118
.LBB16_125:                             # %for.end444
                                        #   in Loop: Header=BB16_116 Depth=2
	movl	-32(%rbp), %edi
	addl	$4, %edi
	movl	-20(%rbp), %esi
	xorl	%edx, %edx
	callq	RDCost_for_4x4Blocks_Chroma
	addl	-108(%rbp), %eax
	movl	%eax, -108(%rbp)
	movl	$0, -16(%rbp)
.LBB16_126:                             # %for.cond448
                                        #   Parent Loop BB16_34 Depth=1
                                        #     Parent Loop BB16_116 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB16_128 Depth 4
	cmpl	$4, -16(%rbp)
	jge	.LBB16_133
# %bb.127:                              # %for.body451
                                        #   in Loop: Header=BB16_126 Depth=3
	movl	$0, -12(%rbp)
.LBB16_128:                             # %for.cond452
                                        #   Parent Loop BB16_34 Depth=1
                                        #     Parent Loop BB16_116 Depth=2
                                        #       Parent Loop BB16_126 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	cmpl	$4, -12(%rbp)
	jge	.LBB16_131
# %bb.129:                              # %for.body455
                                        #   in Loop: Header=BB16_128 Depth=4
	movq	img, %rax
	addq	$13112, %rax            # imm = 0x3338
	movslq	-12(%rbp), %rcx
	shlq	$6, %rcx
	addq	%rcx, %rax
	movslq	-16(%rbp), %rcx
	movl	(%rax,%rcx,4), %eax
	movl	-12(%rbp), %ecx
	addl	-72(%rbp), %ecx
	movslq	%ecx, %rcx
	shlq	$6, %rcx
	movabsq	$rec_resR, %rdx
	addq	%rcx, %rdx
	movl	-16(%rbp), %ecx
	addl	-84(%rbp), %ecx
	movslq	%ecx, %rcx
	movl	%eax, (%rdx,%rcx,4)
	movl	-12(%rbp), %eax
	addl	-72(%rbp), %eax
	cltq
	shlq	$6, %rax
	movabsq	$resTrans_B, %rcx
	addq	%rax, %rcx
	movl	-16(%rbp), %eax
	addl	-84(%rbp), %eax
	cltq
	movl	(%rcx,%rax,4), %eax
	movq	img, %rcx
	addq	$13112, %rcx            # imm = 0x3338
	movslq	-12(%rbp), %rdx
	shlq	$6, %rdx
	addq	%rdx, %rcx
	movslq	-16(%rbp), %rdx
	movl	%eax, (%rcx,%rdx,4)
# %bb.130:                              # %for.inc478
                                        #   in Loop: Header=BB16_128 Depth=4
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB16_128
.LBB16_131:                             # %for.end480
                                        #   in Loop: Header=BB16_126 Depth=3
	jmp	.LBB16_132
.LBB16_132:                             # %for.inc481
                                        #   in Loop: Header=BB16_126 Depth=3
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB16_126
.LBB16_133:                             # %for.end483
                                        #   in Loop: Header=BB16_116 Depth=2
	movl	-32(%rbp), %edi
	addl	$8, %edi
	movl	-20(%rbp), %esi
	movl	$1, %edx
	callq	RDCost_for_4x4Blocks_Chroma
	addl	-108(%rbp), %eax
	movl	%eax, -108(%rbp)
	movl	$0, -16(%rbp)
.LBB16_134:                             # %for.cond487
                                        #   Parent Loop BB16_34 Depth=1
                                        #     Parent Loop BB16_116 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB16_136 Depth 4
	cmpl	$4, -16(%rbp)
	jge	.LBB16_141
# %bb.135:                              # %for.body490
                                        #   in Loop: Header=BB16_134 Depth=3
	movl	$0, -12(%rbp)
.LBB16_136:                             # %for.cond491
                                        #   Parent Loop BB16_34 Depth=1
                                        #     Parent Loop BB16_116 Depth=2
                                        #       Parent Loop BB16_134 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	cmpl	$4, -12(%rbp)
	jge	.LBB16_139
# %bb.137:                              # %for.body494
                                        #   in Loop: Header=BB16_136 Depth=4
	movq	img, %rax
	addq	$13112, %rax            # imm = 0x3338
	movslq	-12(%rbp), %rcx
	shlq	$6, %rcx
	addq	%rcx, %rax
	movslq	-16(%rbp), %rcx
	movl	(%rax,%rcx,4), %eax
	movl	-12(%rbp), %ecx
	addl	-72(%rbp), %ecx
	movslq	%ecx, %rcx
	shlq	$6, %rcx
	movabsq	$rec_resB, %rdx
	addq	%rcx, %rdx
	movl	-16(%rbp), %ecx
	addl	-84(%rbp), %ecx
	movslq	%ecx, %rcx
	movl	%eax, (%rdx,%rcx,4)
# %bb.138:                              # %for.inc506
                                        #   in Loop: Header=BB16_136 Depth=4
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB16_136
.LBB16_139:                             # %for.end508
                                        #   in Loop: Header=BB16_134 Depth=3
	jmp	.LBB16_140
.LBB16_140:                             # %for.inc509
                                        #   in Loop: Header=BB16_134 Depth=3
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB16_134
.LBB16_141:                             # %for.end511
                                        #   in Loop: Header=BB16_116 Depth=2
	jmp	.LBB16_142
.LBB16_142:                             # %for.inc512
                                        #   in Loop: Header=BB16_116 Depth=2
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB16_116
.LBB16_143:                             # %for.end514
                                        #   in Loop: Header=BB16_34 Depth=1
	movb	$0, %al
	callq	reset_coding_state_cs_cm
	movl	$0, -16(%rbp)
.LBB16_144:                             # %for.cond515
                                        #   Parent Loop BB16_34 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB16_146 Depth 3
	cmpl	$8, -16(%rbp)
	jge	.LBB16_178
# %bb.145:                              # %for.body518
                                        #   in Loop: Header=BB16_144 Depth=2
	movl	$0, -12(%rbp)
.LBB16_146:                             # %for.cond519
                                        #   Parent Loop BB16_34 Depth=1
                                        #     Parent Loop BB16_144 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	cmpl	$8, -12(%rbp)
	jge	.LBB16_176
# %bb.147:                              # %for.body522
                                        #   in Loop: Header=BB16_146 Depth=3
	xorl	%eax, %eax
	movslq	-12(%rbp), %rcx
	shlq	$6, %rcx
	movabsq	$rec_resG, %rdx
	addq	%rcx, %rdx
	movslq	-16(%rbp), %rcx
	movl	(%rdx,%rcx,4), %ecx
	movslq	-12(%rbp), %rdx
	shlq	$6, %rdx
	movabsq	$rec_resB, %rsi
	movq	%rsi, %rdi
	addq	%rdx, %rdi
	movslq	-16(%rbp), %rdx
	movl	(%rdi,%rdx,4), %edx
	sarl	$1, %edx
	subl	%edx, %ecx
	movl	%ecx, -88(%rbp)
	movslq	-12(%rbp), %rcx
	shlq	$6, %rcx
	addq	%rcx, %rsi
	movslq	-16(%rbp), %rcx
	movl	(%rsi,%rcx,4), %ecx
	addl	-88(%rbp), %ecx
	movl	%ecx, -76(%rbp)
	movl	-88(%rbp), %ecx
	movslq	-12(%rbp), %rdx
	shlq	$6, %rdx
	movabsq	$rec_resR, %rsi
	movq	%rsi, %rdi
	addq	%rdx, %rdi
	movslq	-16(%rbp), %rdx
	movl	(%rdi,%rdx,4), %edx
	sarl	$1, %edx
	subl	%edx, %ecx
	movl	%ecx, -64(%rbp)
	movl	-64(%rbp), %ecx
	movslq	-12(%rbp), %rdx
	shlq	$6, %rdx
	addq	%rdx, %rsi
	movslq	-16(%rbp), %rdx
	addl	(%rsi,%rdx,4), %ecx
	movl	%ecx, -80(%rbp)
	movq	img, %rcx
	movl	72688(%rcx), %ecx
	movl	-64(%rbp), %edx
	movq	img, %rsi
	addq	$8504, %rsi             # imm = 0x2138
	movslq	-56(%rbp), %rdi
	shlq	$9, %rdi
	addq	%rdi, %rsi
	movl	-40(%rbp), %edi
	addl	-12(%rbp), %edi
	movslq	%edi, %rdi
	shlq	$5, %rdi
	addq	%rdi, %rsi
	movl	-36(%rbp), %edi
	addl	-16(%rbp), %edi
	movslq	%edi, %rdi
	movzwl	(%rsi,%rdi,2), %esi
	addl	%esi, %edx
	cmpl	%edx, %eax
	jle	.LBB16_149
# %bb.148:                              # %cond.true563
                                        #   in Loop: Header=BB16_146 Depth=3
	xorl	%eax, %eax
	jmp	.LBB16_150
.LBB16_149:                             # %cond.false564
                                        #   in Loop: Header=BB16_146 Depth=3
	movl	-64(%rbp), %eax
	movq	img, %rdx
	addq	$8504, %rdx             # imm = 0x2138
	movslq	-56(%rbp), %rsi
	shlq	$9, %rsi
	addq	%rsi, %rdx
	movl	-40(%rbp), %esi
	addl	-12(%rbp), %esi
	movslq	%esi, %rsi
	shlq	$5, %rsi
	addq	%rsi, %rdx
	movl	-36(%rbp), %esi
	addl	-16(%rbp), %esi
	movslq	%esi, %rsi
	movzwl	(%rdx,%rsi,2), %edx
	addl	%edx, %eax
.LBB16_150:                             # %cond.end577
                                        #   in Loop: Header=BB16_146 Depth=3
	cmpl	%eax, %ecx
	jge	.LBB16_152
# %bb.151:                              # %cond.true581
                                        #   in Loop: Header=BB16_146 Depth=3
	movq	img, %rax
	movl	72688(%rax), %eax
	jmp	.LBB16_156
.LBB16_152:                             # %cond.false583
                                        #   in Loop: Header=BB16_146 Depth=3
	xorl	%eax, %eax
	movl	-64(%rbp), %ecx
	movq	img, %rdx
	addq	$8504, %rdx             # imm = 0x2138
	movslq	-56(%rbp), %rsi
	shlq	$9, %rsi
	addq	%rsi, %rdx
	movl	-40(%rbp), %esi
	addl	-12(%rbp), %esi
	movslq	%esi, %rsi
	shlq	$5, %rsi
	addq	%rsi, %rdx
	movl	-36(%rbp), %esi
	addl	-16(%rbp), %esi
	movslq	%esi, %rsi
	movzwl	(%rdx,%rsi,2), %edx
	addl	%edx, %ecx
	cmpl	%ecx, %eax
	jle	.LBB16_154
# %bb.153:                              # %cond.true598
                                        #   in Loop: Header=BB16_146 Depth=3
	xorl	%eax, %eax
	jmp	.LBB16_155
.LBB16_154:                             # %cond.false599
                                        #   in Loop: Header=BB16_146 Depth=3
	movl	-64(%rbp), %eax
	movq	img, %rcx
	addq	$8504, %rcx             # imm = 0x2138
	movslq	-56(%rbp), %rdx
	shlq	$9, %rdx
	addq	%rdx, %rcx
	movl	-40(%rbp), %edx
	addl	-12(%rbp), %edx
	movslq	%edx, %rdx
	shlq	$5, %rdx
	addq	%rdx, %rcx
	movl	-36(%rbp), %edx
	addl	-16(%rbp), %edx
	movslq	%edx, %rdx
	movzwl	(%rcx,%rdx,2), %ecx
	addl	%ecx, %eax
.LBB16_155:                             # %cond.end612
                                        #   in Loop: Header=BB16_146 Depth=3
.LBB16_156:                             # %cond.end614
                                        #   in Loop: Header=BB16_146 Depth=3
	xorl	%ecx, %ecx
	movq	enc_picture, %rdx
	movq	6464(%rdx), %rdx
	movq	(%rdx), %rdx
	movl	-44(%rbp), %esi
	addl	-16(%rbp), %esi
	movslq	%esi, %rsi
	movq	(%rdx,%rsi,8), %rdx
	movl	-68(%rbp), %esi
	addl	-12(%rbp), %esi
	movslq	%esi, %rsi
	movw	%ax, (%rdx,%rsi,2)
	movq	img, %rax
	movl	72684(%rax), %eax
	movl	-76(%rbp), %edx
	movq	img, %rsi
	addq	$7352, %rsi             # imm = 0x1CB8
	movslq	-48(%rbp), %rdi
	shlq	$7, %rdi
	addq	%rdi, %rsi
	movslq	-16(%rbp), %rdi
	shlq	$4, %rdi
	addq	%rdi, %rsi
	movslq	-12(%rbp), %rdi
	movzwl	(%rsi,%rdi,2), %esi
	addl	%esi, %edx
	cmpl	%edx, %ecx
	jle	.LBB16_158
# %bb.157:                              # %cond.true635
                                        #   in Loop: Header=BB16_146 Depth=3
	xorl	%ecx, %ecx
	jmp	.LBB16_159
.LBB16_158:                             # %cond.false636
                                        #   in Loop: Header=BB16_146 Depth=3
	movl	-76(%rbp), %ecx
	movq	img, %rdx
	addq	$7352, %rdx             # imm = 0x1CB8
	movslq	-48(%rbp), %rsi
	shlq	$7, %rsi
	addq	%rsi, %rdx
	movslq	-16(%rbp), %rsi
	shlq	$4, %rsi
	addq	%rsi, %rdx
	movslq	-12(%rbp), %rsi
	movzwl	(%rdx,%rsi,2), %edx
	addl	%edx, %ecx
.LBB16_159:                             # %cond.end646
                                        #   in Loop: Header=BB16_146 Depth=3
	cmpl	%ecx, %eax
	jge	.LBB16_161
# %bb.160:                              # %cond.true650
                                        #   in Loop: Header=BB16_146 Depth=3
	movq	img, %rax
	movl	72684(%rax), %eax
	jmp	.LBB16_165
.LBB16_161:                             # %cond.false652
                                        #   in Loop: Header=BB16_146 Depth=3
	xorl	%eax, %eax
	movl	-76(%rbp), %ecx
	movq	img, %rdx
	addq	$7352, %rdx             # imm = 0x1CB8
	movslq	-48(%rbp), %rsi
	shlq	$7, %rsi
	addq	%rsi, %rdx
	movslq	-16(%rbp), %rsi
	shlq	$4, %rsi
	addq	%rsi, %rdx
	movslq	-12(%rbp), %rsi
	movzwl	(%rdx,%rsi,2), %edx
	addl	%edx, %ecx
	cmpl	%ecx, %eax
	jle	.LBB16_163
# %bb.162:                              # %cond.true664
                                        #   in Loop: Header=BB16_146 Depth=3
	xorl	%eax, %eax
	jmp	.LBB16_164
.LBB16_163:                             # %cond.false665
                                        #   in Loop: Header=BB16_146 Depth=3
	movl	-76(%rbp), %eax
	movq	img, %rcx
	addq	$7352, %rcx             # imm = 0x1CB8
	movslq	-48(%rbp), %rdx
	shlq	$7, %rdx
	addq	%rdx, %rcx
	movslq	-16(%rbp), %rdx
	shlq	$4, %rdx
	addq	%rdx, %rcx
	movslq	-12(%rbp), %rdx
	movzwl	(%rcx,%rdx,2), %ecx
	addl	%ecx, %eax
.LBB16_164:                             # %cond.end675
                                        #   in Loop: Header=BB16_146 Depth=3
.LBB16_165:                             # %cond.end677
                                        #   in Loop: Header=BB16_146 Depth=3
	xorl	%ecx, %ecx
	movq	enc_picture, %rdx
	movq	6424(%rdx), %rdx
	movl	-44(%rbp), %esi
	addl	-16(%rbp), %esi
	movslq	%esi, %rsi
	movq	(%rdx,%rsi,8), %rdx
	movl	-68(%rbp), %esi
	addl	-12(%rbp), %esi
	movslq	%esi, %rsi
	movw	%ax, (%rdx,%rsi,2)
	movq	img, %rax
	movl	72688(%rax), %eax
	movl	-80(%rbp), %edx
	movq	img, %rsi
	addq	$8504, %rsi             # imm = 0x2138
	addq	$2048, %rsi             # imm = 0x800
	movslq	-56(%rbp), %rdi
	shlq	$9, %rdi
	addq	%rdi, %rsi
	movl	-40(%rbp), %edi
	addl	-12(%rbp), %edi
	movslq	%edi, %rdi
	shlq	$5, %rdi
	addq	%rdi, %rsi
	movl	-36(%rbp), %edi
	addl	-16(%rbp), %edi
	movslq	%edi, %rdi
	movzwl	(%rsi,%rdi,2), %esi
	addl	%esi, %edx
	cmpl	%edx, %ecx
	jle	.LBB16_167
# %bb.166:                              # %cond.true702
                                        #   in Loop: Header=BB16_146 Depth=3
	xorl	%ecx, %ecx
	jmp	.LBB16_168
.LBB16_167:                             # %cond.false703
                                        #   in Loop: Header=BB16_146 Depth=3
	movl	-80(%rbp), %ecx
	movq	img, %rdx
	addq	$8504, %rdx             # imm = 0x2138
	addq	$2048, %rdx             # imm = 0x800
	movslq	-56(%rbp), %rsi
	shlq	$9, %rsi
	addq	%rsi, %rdx
	movl	-40(%rbp), %esi
	addl	-12(%rbp), %esi
	movslq	%esi, %rsi
	shlq	$5, %rsi
	addq	%rsi, %rdx
	movl	-36(%rbp), %esi
	addl	-16(%rbp), %esi
	movslq	%esi, %rsi
	movzwl	(%rdx,%rsi,2), %edx
	addl	%edx, %ecx
.LBB16_168:                             # %cond.end716
                                        #   in Loop: Header=BB16_146 Depth=3
	cmpl	%ecx, %eax
	jge	.LBB16_170
# %bb.169:                              # %cond.true720
                                        #   in Loop: Header=BB16_146 Depth=3
	movq	img, %rax
	movl	72688(%rax), %eax
	jmp	.LBB16_174
.LBB16_170:                             # %cond.false722
                                        #   in Loop: Header=BB16_146 Depth=3
	xorl	%eax, %eax
	movl	-80(%rbp), %ecx
	movq	img, %rdx
	addq	$8504, %rdx             # imm = 0x2138
	addq	$2048, %rdx             # imm = 0x800
	movslq	-56(%rbp), %rsi
	shlq	$9, %rsi
	addq	%rsi, %rdx
	movl	-40(%rbp), %esi
	addl	-12(%rbp), %esi
	movslq	%esi, %rsi
	shlq	$5, %rsi
	addq	%rsi, %rdx
	movl	-36(%rbp), %esi
	addl	-16(%rbp), %esi
	movslq	%esi, %rsi
	movzwl	(%rdx,%rsi,2), %edx
	addl	%edx, %ecx
	cmpl	%ecx, %eax
	jle	.LBB16_172
# %bb.171:                              # %cond.true737
                                        #   in Loop: Header=BB16_146 Depth=3
	xorl	%eax, %eax
	jmp	.LBB16_173
.LBB16_172:                             # %cond.false738
                                        #   in Loop: Header=BB16_146 Depth=3
	movl	-80(%rbp), %eax
	movq	img, %rcx
	addq	$8504, %rcx             # imm = 0x2138
	addq	$2048, %rcx             # imm = 0x800
	movslq	-56(%rbp), %rdx
	shlq	$9, %rdx
	addq	%rdx, %rcx
	movl	-40(%rbp), %edx
	addl	-12(%rbp), %edx
	movslq	%edx, %rdx
	shlq	$5, %rdx
	addq	%rdx, %rcx
	movl	-36(%rbp), %edx
	addl	-16(%rbp), %edx
	movslq	%edx, %rdx
	movzwl	(%rcx,%rdx,2), %ecx
	addl	%ecx, %eax
.LBB16_173:                             # %cond.end751
                                        #   in Loop: Header=BB16_146 Depth=3
.LBB16_174:                             # %cond.end753
                                        #   in Loop: Header=BB16_146 Depth=3
	movq	enc_picture, %rcx
	movq	6464(%rcx), %rcx
	movq	8(%rcx), %rcx
	movl	-44(%rbp), %edx
	addl	-16(%rbp), %edx
	movslq	%edx, %rdx
	movq	(%rcx,%rdx,8), %rcx
	movl	-68(%rbp), %edx
	addl	-12(%rbp), %edx
	movslq	%edx, %rdx
	movw	%ax, (%rcx,%rdx,2)
# %bb.175:                              # %for.inc764
                                        #   in Loop: Header=BB16_146 Depth=3
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB16_146
.LBB16_176:                             # %for.end766
                                        #   in Loop: Header=BB16_144 Depth=2
	jmp	.LBB16_177
.LBB16_177:                             # %for.inc767
                                        #   in Loop: Header=BB16_144 Depth=2
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB16_144
.LBB16_178:                             # %for.end769
                                        #   in Loop: Header=BB16_34 Depth=1
	movl	$0, -100(%rbp)
	movl	$0, -28(%rbp)
.LBB16_179:                             # %for.cond770
                                        #   Parent Loop BB16_34 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB16_181 Depth 3
	cmpl	$8, -28(%rbp)
	jge	.LBB16_186
# %bb.180:                              # %for.body773
                                        #   in Loop: Header=BB16_179 Depth=2
	movl	-68(%rbp), %eax
	movl	%eax, -24(%rbp)
.LBB16_181:                             # %for.cond774
                                        #   Parent Loop BB16_34 Depth=1
                                        #     Parent Loop BB16_179 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-24(%rbp), %eax
	movl	-68(%rbp), %ecx
	addl	$8, %ecx
	cmpl	%ecx, %eax
	jge	.LBB16_184
# %bb.182:                              # %for.body778
                                        #   in Loop: Header=BB16_181 Depth=3
	movq	imgY_org, %rax
	movl	-44(%rbp), %ecx
	addl	-28(%rbp), %ecx
	movslq	%ecx, %rcx
	movq	(%rax,%rcx,8), %rax
	movslq	-24(%rbp), %rcx
	movzwl	(%rax,%rcx,2), %eax
	movq	enc_picture, %rcx
	movq	6424(%rcx), %rcx
	movl	-44(%rbp), %edx
	addl	-28(%rbp), %edx
	movslq	%edx, %rdx
	movq	(%rcx,%rdx,8), %rcx
	movslq	-24(%rbp), %rdx
	movzwl	(%rcx,%rdx,2), %ecx
	subl	%ecx, %eax
	movq	imgY_org, %rcx
	movl	-44(%rbp), %edx
	addl	-28(%rbp), %edx
	movslq	%edx, %rdx
	movq	(%rcx,%rdx,8), %rcx
	movslq	-24(%rbp), %rdx
	movzwl	(%rcx,%rdx,2), %ecx
	movq	enc_picture, %rdx
	movq	6424(%rdx), %rdx
	movl	-44(%rbp), %esi
	addl	-28(%rbp), %esi
	movslq	%esi, %rsi
	movq	(%rdx,%rsi,8), %rdx
	movslq	-24(%rbp), %rsi
	movzwl	(%rdx,%rsi,2), %edx
	subl	%edx, %ecx
	imull	%ecx, %eax
	addl	-100(%rbp), %eax
	movl	%eax, -100(%rbp)
	movq	imgUV_org, %rax
	movq	(%rax), %rax
	movl	-44(%rbp), %ecx
	addl	-28(%rbp), %ecx
	movslq	%ecx, %rcx
	movq	(%rax,%rcx,8), %rax
	movslq	-24(%rbp), %rcx
	movzwl	(%rax,%rcx,2), %eax
	movq	enc_picture, %rcx
	movq	6464(%rcx), %rcx
	movq	(%rcx), %rcx
	movl	-44(%rbp), %edx
	addl	-28(%rbp), %edx
	movslq	%edx, %rdx
	movq	(%rcx,%rdx,8), %rcx
	movslq	-24(%rbp), %rdx
	movzwl	(%rcx,%rdx,2), %ecx
	subl	%ecx, %eax
	movq	imgUV_org, %rcx
	movq	(%rcx), %rcx
	movl	-44(%rbp), %edx
	addl	-28(%rbp), %edx
	movslq	%edx, %rdx
	movq	(%rcx,%rdx,8), %rcx
	movslq	-24(%rbp), %rdx
	movzwl	(%rcx,%rdx,2), %ecx
	movq	enc_picture, %rdx
	movq	6464(%rdx), %rdx
	movq	(%rdx), %rdx
	movl	-44(%rbp), %esi
	addl	-28(%rbp), %esi
	movslq	%esi, %rsi
	movq	(%rdx,%rsi,8), %rdx
	movslq	-24(%rbp), %rsi
	movzwl	(%rdx,%rsi,2), %edx
	subl	%edx, %ecx
	imull	%ecx, %eax
	addl	-100(%rbp), %eax
	movl	%eax, -100(%rbp)
	movq	imgUV_org, %rax
	movq	8(%rax), %rax
	movl	-44(%rbp), %ecx
	addl	-28(%rbp), %ecx
	movslq	%ecx, %rcx
	movq	(%rax,%rcx,8), %rax
	movslq	-24(%rbp), %rcx
	movzwl	(%rax,%rcx,2), %eax
	movq	enc_picture, %rcx
	movq	6464(%rcx), %rcx
	movq	8(%rcx), %rcx
	movl	-44(%rbp), %edx
	addl	-28(%rbp), %edx
	movslq	%edx, %rdx
	movq	(%rcx,%rdx,8), %rcx
	movslq	-24(%rbp), %rdx
	movzwl	(%rcx,%rdx,2), %ecx
	subl	%ecx, %eax
	movq	imgUV_org, %rcx
	movq	8(%rcx), %rcx
	movl	-44(%rbp), %edx
	addl	-28(%rbp), %edx
	movslq	%edx, %rdx
	movq	(%rcx,%rdx,8), %rcx
	movslq	-24(%rbp), %rdx
	movzwl	(%rcx,%rdx,2), %ecx
	movq	enc_picture, %rdx
	movq	6464(%rdx), %rdx
	movq	8(%rdx), %rdx
	movl	-44(%rbp), %esi
	addl	-28(%rbp), %esi
	movslq	%esi, %rsi
	movq	(%rdx,%rsi,8), %rdx
	movslq	-24(%rbp), %rsi
	movzwl	(%rdx,%rsi,2), %edx
	subl	%edx, %ecx
	imull	%ecx, %eax
	addl	-100(%rbp), %eax
	movl	%eax, -100(%rbp)
# %bb.183:                              # %for.inc877
                                        #   in Loop: Header=BB16_181 Depth=3
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB16_181
.LBB16_184:                             # %for.end879
                                        #   in Loop: Header=BB16_179 Depth=2
	jmp	.LBB16_185
.LBB16_185:                             # %for.inc880
                                        #   in Loop: Header=BB16_179 Depth=2
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB16_179
.LBB16_186:                             # %for.end882
                                        #   in Loop: Header=BB16_34 Depth=1
	vcvtsi2sdl	-100(%rbp), %xmm0, %xmm0
	vmovsd	-152(%rbp), %xmm1       # xmm1 = mem[0],zero
	vcvtsi2sdl	-108(%rbp), %xmm0, %xmm2
	vmulsd	%xmm2, %xmm1, %xmm1
	vaddsd	%xmm1, %xmm0, %xmm0
	vmovsd	%xmm0, -144(%rbp)
	vmovsd	-144(%rbp), %xmm0       # xmm0 = mem[0],zero
	vmovsd	-136(%rbp), %xmm1       # xmm1 = mem[0],zero
	vucomisd	%xmm0, %xmm1
	jbe	.LBB16_240
# %bb.187:                              # %if.then889
                                        #   in Loop: Header=BB16_34 Depth=1
	movl	$0, -16(%rbp)
.LBB16_188:                             # %for.cond890
                                        #   Parent Loop BB16_34 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB16_190 Depth 3
                                        #         Child Loop BB16_192 Depth 4
	cmpl	$2, -16(%rbp)
	jge	.LBB16_199
# %bb.189:                              # %for.body893
                                        #   in Loop: Header=BB16_188 Depth=2
	movl	$0, -12(%rbp)
.LBB16_190:                             # %for.cond894
                                        #   Parent Loop BB16_34 Depth=1
                                        #     Parent Loop BB16_188 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB16_192 Depth 4
	cmpl	$65, -12(%rbp)
	jge	.LBB16_197
# %bb.191:                              # %for.body897
                                        #   in Loop: Header=BB16_190 Depth=3
	movl	$0, -52(%rbp)
.LBB16_192:                             # %for.cond898
                                        #   Parent Loop BB16_34 Depth=1
                                        #     Parent Loop BB16_188 Depth=2
                                        #       Parent Loop BB16_190 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	cmpl	$4, -52(%rbp)
	jge	.LBB16_195
# %bb.193:                              # %for.body901
                                        #   in Loop: Header=BB16_192 Depth=4
	movq	img, %rax
	movq	14136(%rax), %rax
	movslq	-32(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movslq	-52(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movslq	-16(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movslq	-12(%rbp), %rcx
	movl	(%rax,%rcx,4), %eax
	movq	cofAC8x8, %rcx
	movslq	-32(%rbp), %rdx
	movq	(%rcx,%rdx,8), %rcx
	movslq	-52(%rbp), %rdx
	movq	(%rcx,%rdx,8), %rcx
	movslq	-16(%rbp), %rdx
	movq	(%rcx,%rdx,8), %rcx
	movslq	-12(%rbp), %rdx
	movl	%eax, (%rcx,%rdx,4)
# %bb.194:                              # %for.inc919
                                        #   in Loop: Header=BB16_192 Depth=4
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB16_192
.LBB16_195:                             # %for.end921
                                        #   in Loop: Header=BB16_190 Depth=3
	jmp	.LBB16_196
.LBB16_196:                             # %for.inc922
                                        #   in Loop: Header=BB16_190 Depth=3
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB16_190
.LBB16_197:                             # %for.end924
                                        #   in Loop: Header=BB16_188 Depth=2
	jmp	.LBB16_198
.LBB16_198:                             # %for.inc925
                                        #   in Loop: Header=BB16_188 Depth=2
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB16_188
.LBB16_199:                             # %for.end927
                                        #   in Loop: Header=BB16_34 Depth=1
	movl	$0, -20(%rbp)
.LBB16_200:                             # %for.cond928
                                        #   Parent Loop BB16_34 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB16_202 Depth 3
                                        #         Child Loop BB16_204 Depth 4
                                        #       Child Loop BB16_210 Depth 3
                                        #         Child Loop BB16_212 Depth 4
                                        #       Child Loop BB16_218 Depth 3
                                        #         Child Loop BB16_220 Depth 4
                                        #           Child Loop BB16_222 Depth 5
	cmpl	$4, -20(%rbp)
	jge	.LBB16_231
# %bb.201:                              # %for.body931
                                        #   in Loop: Header=BB16_200 Depth=2
	movl	-20(%rbp), %eax
	cltd
	movl	$2, %ecx
	idivl	%ecx
	shll	$2, %edx
	movl	%edx, -72(%rbp)
	movl	-20(%rbp), %eax
	cltd
	idivl	%ecx
	shll	$2, %eax
	movl	%eax, -84(%rbp)
	movl	$0, -16(%rbp)
.LBB16_202:                             # %for.cond936
                                        #   Parent Loop BB16_34 Depth=1
                                        #     Parent Loop BB16_200 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB16_204 Depth 4
	cmpl	$2, -16(%rbp)
	jge	.LBB16_209
# %bb.203:                              # %for.body939
                                        #   in Loop: Header=BB16_202 Depth=3
	movl	$0, -12(%rbp)
.LBB16_204:                             # %for.cond940
                                        #   Parent Loop BB16_34 Depth=1
                                        #     Parent Loop BB16_200 Depth=2
                                        #       Parent Loop BB16_202 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	cmpl	$18, -12(%rbp)
	jge	.LBB16_207
# %bb.205:                              # %for.body943
                                        #   in Loop: Header=BB16_204 Depth=4
	movq	img, %rax
	movq	14136(%rax), %rax
	movl	-32(%rbp), %ecx
	addl	$4, %ecx
	movslq	%ecx, %rcx
	movq	(%rax,%rcx,8), %rax
	movslq	-20(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movslq	-16(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movslq	-12(%rbp), %rcx
	movl	(%rax,%rcx,4), %eax
	movslq	-20(%rbp), %rcx
	imulq	$144, %rcx, %rcx
	movabsq	$cofAC8x8_chroma, %rdx
	addq	%rcx, %rdx
	movslq	-16(%rbp), %rcx
	imulq	$72, %rcx, %rcx
	addq	%rcx, %rdx
	movslq	-12(%rbp), %rcx
	movl	%eax, (%rdx,%rcx,4)
# %bb.206:                              # %for.inc960
                                        #   in Loop: Header=BB16_204 Depth=4
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB16_204
.LBB16_207:                             # %for.end962
                                        #   in Loop: Header=BB16_202 Depth=3
	jmp	.LBB16_208
.LBB16_208:                             # %for.inc963
                                        #   in Loop: Header=BB16_202 Depth=3
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB16_202
.LBB16_209:                             # %for.end965
                                        #   in Loop: Header=BB16_200 Depth=2
	movl	$0, -16(%rbp)
.LBB16_210:                             # %for.cond966
                                        #   Parent Loop BB16_34 Depth=1
                                        #     Parent Loop BB16_200 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB16_212 Depth 4
	cmpl	$2, -16(%rbp)
	jge	.LBB16_217
# %bb.211:                              # %for.body969
                                        #   in Loop: Header=BB16_210 Depth=3
	movl	$0, -12(%rbp)
.LBB16_212:                             # %for.cond970
                                        #   Parent Loop BB16_34 Depth=1
                                        #     Parent Loop BB16_200 Depth=2
                                        #       Parent Loop BB16_210 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	cmpl	$18, -12(%rbp)
	jge	.LBB16_215
# %bb.213:                              # %for.body973
                                        #   in Loop: Header=BB16_212 Depth=4
	movabsq	$cofAC8x8_chroma, %rax
	addq	$576, %rax              # imm = 0x240
	movq	img, %rcx
	movq	14136(%rcx), %rcx
	movl	-32(%rbp), %edx
	addl	$8, %edx
	movslq	%edx, %rdx
	movq	(%rcx,%rdx,8), %rcx
	movslq	-20(%rbp), %rdx
	movq	(%rcx,%rdx,8), %rcx
	movslq	-16(%rbp), %rdx
	movq	(%rcx,%rdx,8), %rcx
	movslq	-12(%rbp), %rdx
	movl	(%rcx,%rdx,4), %ecx
	movslq	-20(%rbp), %rdx
	imulq	$144, %rdx, %rdx
	addq	%rdx, %rax
	movslq	-16(%rbp), %rdx
	imulq	$72, %rdx, %rdx
	addq	%rdx, %rax
	movslq	-12(%rbp), %rdx
	movl	%ecx, (%rax,%rdx,4)
# %bb.214:                              # %for.inc990
                                        #   in Loop: Header=BB16_212 Depth=4
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB16_212
.LBB16_215:                             # %for.end992
                                        #   in Loop: Header=BB16_210 Depth=3
	jmp	.LBB16_216
.LBB16_216:                             # %for.inc993
                                        #   in Loop: Header=BB16_210 Depth=3
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB16_210
.LBB16_217:                             # %for.end995
                                        #   in Loop: Header=BB16_200 Depth=2
	movl	$0, -12(%rbp)
.LBB16_218:                             # %for.cond996
                                        #   Parent Loop BB16_34 Depth=1
                                        #     Parent Loop BB16_200 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB16_220 Depth 4
                                        #           Child Loop BB16_222 Depth 5
	cmpl	$2, -12(%rbp)
	jge	.LBB16_229
# %bb.219:                              # %for.body999
                                        #   in Loop: Header=BB16_218 Depth=3
	movslq	-12(%rbp), %rax
	shlq	$6, %rax
	movabsq	$dc_level_temp, %rdi
	addq	%rax, %rdi
	movl	-32(%rbp), %eax
	cltd
	movl	$2, %esi
	idivl	%esi
	movl	%edx, %ecx
	shll	$1, %ecx
	movl	-20(%rbp), %eax
	cltd
	idivl	%esi
	addl	%edx, %ecx
	movslq	%ecx, %rax
	shlq	$4, %rax
	addq	%rax, %rdi
	movl	-32(%rbp), %eax
	cltd
	idivl	%esi
	movl	%eax, %ecx
	shll	$1, %ecx
	movl	-20(%rbp), %eax
	cltd
	idivl	%esi
	addl	%eax, %ecx
	movslq	%ecx, %rax
	movl	(%rdi,%rax,4), %edi
	movslq	-12(%rbp), %rax
	shlq	$6, %rax
	movabsq	$dc_level, %rbx
	addq	%rax, %rbx
	movl	-32(%rbp), %eax
	cltd
	idivl	%esi
	movl	%edx, %ecx
	shll	$1, %ecx
	movl	-20(%rbp), %eax
	cltd
	idivl	%esi
	addl	%edx, %ecx
	movslq	%ecx, %rax
	shlq	$4, %rax
	addq	%rax, %rbx
	movl	-32(%rbp), %eax
	cltd
	idivl	%esi
	movl	%eax, %ecx
	shll	$1, %ecx
	movl	-20(%rbp), %eax
	cltd
	idivl	%esi
	addl	%eax, %ecx
	movslq	%ecx, %rax
	movl	%edi, (%rbx,%rax,4)
	movslq	-12(%rbp), %rax
	shlq	$6, %rax
	movabsq	$cbp_chroma_block_temp, %rdi
	addq	%rax, %rdi
	movl	-32(%rbp), %eax
	cltd
	idivl	%esi
	movl	%edx, %ecx
	shll	$1, %ecx
	movl	-20(%rbp), %eax
	cltd
	idivl	%esi
	addl	%edx, %ecx
	movslq	%ecx, %rax
	shlq	$4, %rax
	addq	%rax, %rdi
	movl	-32(%rbp), %eax
	cltd
	idivl	%esi
	movl	%eax, %ecx
	shll	$1, %ecx
	movl	-20(%rbp), %eax
	cltd
	idivl	%esi
	addl	%eax, %ecx
	movslq	%ecx, %rax
	movl	(%rdi,%rax,4), %edi
	movslq	-12(%rbp), %rax
	shlq	$6, %rax
	movabsq	$cbp_chroma_block, %rbx
	addq	%rax, %rbx
	movl	-32(%rbp), %eax
	cltd
	idivl	%esi
	movl	%edx, %ecx
	shll	$1, %ecx
	movl	-20(%rbp), %eax
	cltd
	idivl	%esi
	addl	%edx, %ecx
	movslq	%ecx, %rax
	shlq	$4, %rax
	addq	%rax, %rbx
	movl	-32(%rbp), %eax
	cltd
	idivl	%esi
	movl	%eax, %ecx
	shll	$1, %ecx
	movl	-20(%rbp), %eax
	cltd
	idivl	%esi
	addl	%eax, %ecx
	movslq	%ecx, %rax
	movl	%edi, (%rbx,%rax,4)
	movl	$0, -28(%rbp)
.LBB16_220:                             # %for.cond1056
                                        #   Parent Loop BB16_34 Depth=1
                                        #     Parent Loop BB16_200 Depth=2
                                        #       Parent Loop BB16_218 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB16_222 Depth 5
	cmpl	$4, -28(%rbp)
	jge	.LBB16_227
# %bb.221:                              # %for.body1059
                                        #   in Loop: Header=BB16_220 Depth=4
	movl	$0, -24(%rbp)
.LBB16_222:                             # %for.cond1060
                                        #   Parent Loop BB16_34 Depth=1
                                        #     Parent Loop BB16_200 Depth=2
                                        #       Parent Loop BB16_218 Depth=3
                                        #         Parent Loop BB16_220 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	cmpl	$4, -24(%rbp)
	jge	.LBB16_225
# %bb.223:                              # %for.body1063
                                        #   in Loop: Header=BB16_222 Depth=5
	movq	enc_picture, %rax
	movq	6464(%rax), %rax
	movslq	-12(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movl	-44(%rbp), %ecx
	addl	-28(%rbp), %ecx
	addl	-84(%rbp), %ecx
	movslq	%ecx, %rcx
	movq	(%rax,%rcx,8), %rax
	movl	-68(%rbp), %ecx
	addl	-24(%rbp), %ecx
	addl	-72(%rbp), %ecx
	movslq	%ecx, %rcx
	movzwl	(%rax,%rcx,2), %eax
	movslq	-12(%rbp), %rcx
	shlq	$8, %rcx
	leaq	-1152(%rbp), %rdx
	addq	%rcx, %rdx
	movslq	-20(%rbp), %rcx
	shlq	$6, %rcx
	addq	%rcx, %rdx
	movslq	-28(%rbp), %rcx
	shlq	$4, %rcx
	addq	%rcx, %rdx
	movslq	-24(%rbp), %rcx
	movl	%eax, (%rdx,%rcx,4)
# %bb.224:                              # %for.inc1084
                                        #   in Loop: Header=BB16_222 Depth=5
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB16_222
.LBB16_225:                             # %for.end1086
                                        #   in Loop: Header=BB16_220 Depth=4
	jmp	.LBB16_226
.LBB16_226:                             # %for.inc1087
                                        #   in Loop: Header=BB16_220 Depth=4
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB16_220
.LBB16_227:                             # %for.end1089
                                        #   in Loop: Header=BB16_218 Depth=3
	jmp	.LBB16_228
.LBB16_228:                             # %for.inc1090
                                        #   in Loop: Header=BB16_218 Depth=3
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB16_218
.LBB16_229:                             # %for.end1092
                                        #   in Loop: Header=BB16_200 Depth=2
	jmp	.LBB16_230
.LBB16_230:                             # %for.inc1093
                                        #   in Loop: Header=BB16_200 Depth=2
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB16_200
.LBB16_231:                             # %for.end1095
                                        #   in Loop: Header=BB16_34 Depth=1
	movl	$0, -28(%rbp)
.LBB16_232:                             # %for.cond1096
                                        #   Parent Loop BB16_34 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB16_234 Depth 3
	cmpl	$8, -28(%rbp)
	jge	.LBB16_239
# %bb.233:                              # %for.body1099
                                        #   in Loop: Header=BB16_232 Depth=2
	movl	$0, -24(%rbp)
.LBB16_234:                             # %for.cond1100
                                        #   Parent Loop BB16_34 Depth=1
                                        #     Parent Loop BB16_232 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	cmpl	$8, -24(%rbp)
	jge	.LBB16_237
# %bb.235:                              # %for.body1103
                                        #   in Loop: Header=BB16_234 Depth=3
	movq	enc_picture, %rax
	movq	6424(%rax), %rax
	movl	-44(%rbp), %ecx
	addl	-28(%rbp), %ecx
	movslq	%ecx, %rcx
	movq	(%rax,%rcx,8), %rax
	movl	-68(%rbp), %ecx
	addl	-24(%rbp), %ecx
	movslq	%ecx, %rcx
	movw	(%rax,%rcx,2), %ax
	movslq	-28(%rbp), %rcx
	shlq	$4, %rcx
	leaq	-384(%rbp), %rdx
	addq	%rcx, %rdx
	movslq	-24(%rbp), %rcx
	movw	%ax, (%rdx,%rcx,2)
# %bb.236:                              # %for.inc1115
                                        #   in Loop: Header=BB16_234 Depth=3
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB16_234
.LBB16_237:                             # %for.end1117
                                        #   in Loop: Header=BB16_232 Depth=2
	jmp	.LBB16_238
.LBB16_238:                             # %for.inc1118
                                        #   in Loop: Header=BB16_232 Depth=2
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB16_232
.LBB16_239:                             # %for.end1120
                                        #   in Loop: Header=BB16_34 Depth=1
	movl	-128(%rbp), %eax
	movl	%eax, -112(%rbp)
	vmovsd	-144(%rbp), %xmm0       # xmm0 = mem[0],zero
	vmovsd	%xmm0, -136(%rbp)
	movl	-48(%rbp), %eax
	movl	%eax, -60(%rbp)
.LBB16_240:                             # %if.end1121
                                        #   in Loop: Header=BB16_34 Depth=1
	jmp	.LBB16_241
.LBB16_241:                             # %if.end1122
                                        #   in Loop: Header=BB16_34 Depth=1
	jmp	.LBB16_242
.LBB16_242:                             # %if.end1123
                                        #   in Loop: Header=BB16_34 Depth=1
	jmp	.LBB16_243
.LBB16_243:                             # %if.end1124
                                        #   in Loop: Header=BB16_34 Depth=1
	jmp	.LBB16_244
.LBB16_244:                             # %for.inc1125
                                        #   in Loop: Header=BB16_34 Depth=1
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB16_34
.LBB16_245:                             # %for.end1127
	movl	-60(%rbp), %eax
	movq	img, %rcx
	movq	112(%rcx), %rcx
	movslq	-188(%rbp), %rdx
	movq	(%rcx,%rdx,8), %rcx
	movslq	-172(%rbp), %rdx
	movl	%eax, (%rcx,%rdx,4)
	movl	-104(%rbp), %eax
	cmpl	-60(%rbp), %eax
	jne	.LBB16_247
# %bb.246:                              # %cond.true1135
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	jmp	.LBB16_251
.LBB16_247:                             # %cond.false1136
	movl	-60(%rbp), %eax
	cmpl	-104(%rbp), %eax
	jge	.LBB16_249
# %bb.248:                              # %cond.true1139
	movl	-60(%rbp), %eax
	jmp	.LBB16_250
.LBB16_249:                             # %cond.false1140
	movl	-60(%rbp), %eax
	subl	$1, %eax
.LBB16_250:                             # %cond.end1142
.LBB16_251:                             # %cond.end1144
	movq	img, %rcx
	movq	14168(%rcx), %rcx
	movq	img, %rdx
	movslq	12(%rdx), %rdx
	imulq	$632, %rdx, %rdx        # imm = 0x278
	addq	%rdx, %rcx
	movl	-32(%rbp), %edx
	shll	$2, %edx
	movslq	%edx, %rdx
	movl	%eax, 396(%rcx,%rdx,4)
	movl	$0, -16(%rbp)
.LBB16_252:                             # %for.cond1153
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB16_254 Depth 2
	cmpl	$2, -16(%rbp)
	jge	.LBB16_259
# %bb.253:                              # %for.body1156
                                        #   in Loop: Header=BB16_252 Depth=1
	movl	$0, -12(%rbp)
.LBB16_254:                             # %for.cond1157
                                        #   Parent Loop BB16_252 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$2, -12(%rbp)
	jge	.LBB16_257
# %bb.255:                              # %for.body1160
                                        #   in Loop: Header=BB16_254 Depth=2
	movl	-60(%rbp), %ecx
	movq	img, %rax
	movq	112(%rax), %rsi
	movl	-12(%rbp), %edi
	movq	img, %rax
	movl	136(%rax), %eax
	shll	$2, %eax
	addl	%eax, %edi
	movl	-32(%rbp), %eax
	cltd
	movl	$2, %ebx
	idivl	%ebx
	shll	$1, %edx
	addl	%edx, %edi
	movslq	%edi, %rax
	movq	(%rsi,%rax,8), %rsi
	movl	-16(%rbp), %edi
	movq	img, %rax
	movl	140(%rax), %eax
	shll	$2, %eax
	addl	%eax, %edi
	movl	-32(%rbp), %eax
	cltd
	idivl	%ebx
	shll	$1, %eax
	addl	%eax, %edi
	movslq	%edi, %rax
	movl	%ecx, (%rsi,%rax,4)
# %bb.256:                              # %for.inc1176
                                        #   in Loop: Header=BB16_254 Depth=2
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB16_254
.LBB16_257:                             # %for.end1178
                                        #   in Loop: Header=BB16_252 Depth=1
	jmp	.LBB16_258
.LBB16_258:                             # %for.inc1179
                                        #   in Loop: Header=BB16_252 Depth=1
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB16_252
.LBB16_259:                             # %for.end1181
	movq	input, %rax
	cmpl	$0, 2464(%rax)
	jne	.LBB16_359
# %bb.260:                              # %if.then1184
	movq	img, %rax
	cmpl	$0, 72724(%rax)
	jne	.LBB16_270
# %bb.261:                              # %if.then1187
	movl	$0, -16(%rbp)
.LBB16_262:                             # %for.cond1188
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB16_264 Depth 2
	cmpl	$8, -16(%rbp)
	jge	.LBB16_269
# %bb.263:                              # %for.body1191
                                        #   in Loop: Header=BB16_262 Depth=1
	movl	$0, -12(%rbp)
.LBB16_264:                             # %for.cond1192
                                        #   Parent Loop BB16_262 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$8, -12(%rbp)
	jge	.LBB16_267
# %bb.265:                              # %for.body1195
                                        #   in Loop: Header=BB16_264 Depth=2
	movq	img, %rax
	addq	$7352, %rax             # imm = 0x1CB8
	movslq	-60(%rbp), %rcx
	shlq	$7, %rcx
	addq	%rcx, %rax
	movslq	-16(%rbp), %rcx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movslq	-12(%rbp), %rcx
	movw	(%rax,%rcx,2), %ax
	movq	img, %rcx
	addq	$12600, %rcx            # imm = 0x3138
	movl	-40(%rbp), %edx
	addl	-12(%rbp), %edx
	movslq	%edx, %rdx
	shlq	$5, %rdx
	addq	%rdx, %rcx
	movl	-36(%rbp), %edx
	addl	-16(%rbp), %edx
	movslq	%edx, %rdx
	movw	%ax, (%rcx,%rdx,2)
	movq	-160(%rbp), %rax
	movl	-92(%rbp), %ecx
	addl	-16(%rbp), %ecx
	movslq	%ecx, %rcx
	movq	(%rax,%rcx,8), %rax
	movl	-96(%rbp), %ecx
	addl	-12(%rbp), %ecx
	movslq	%ecx, %rcx
	movzwl	(%rax,%rcx,2), %eax
	movq	img, %rcx
	addq	$7352, %rcx             # imm = 0x1CB8
	movslq	-60(%rbp), %rdx
	shlq	$7, %rdx
	addq	%rdx, %rcx
	movslq	-16(%rbp), %rdx
	shlq	$4, %rdx
	addq	%rdx, %rcx
	movslq	-12(%rbp), %rdx
	movzwl	(%rcx,%rdx,2), %ecx
	subl	%ecx, %eax
	movq	img, %rcx
	addq	$13112, %rcx            # imm = 0x3338
	movslq	-12(%rbp), %rdx
	shlq	$6, %rdx
	addq	%rdx, %rcx
	movslq	-16(%rbp), %rdx
	movl	%eax, (%rcx,%rdx,4)
# %bb.266:                              # %for.inc1231
                                        #   in Loop: Header=BB16_264 Depth=2
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB16_264
.LBB16_267:                             # %for.end1233
                                        #   in Loop: Header=BB16_262 Depth=1
	jmp	.LBB16_268
.LBB16_268:                             # %for.inc1234
                                        #   in Loop: Header=BB16_262 Depth=1
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB16_262
.LBB16_269:                             # %for.end1236
	movl	-32(%rbp), %edi
	leaq	-184(%rbp), %rsi
	movl	$1, %edx
	callq	dct_luma8x8
	movl	%eax, -112(%rbp)
	jmp	.LBB16_358
.LBB16_270:                             # %if.else1238
	movl	$0, -16(%rbp)
.LBB16_271:                             # %for.cond1239
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB16_273 Depth 2
	cmpl	$8, -16(%rbp)
	jge	.LBB16_278
# %bb.272:                              # %for.body1242
                                        #   in Loop: Header=BB16_271 Depth=1
	movl	$0, -12(%rbp)
.LBB16_273:                             # %for.cond1243
                                        #   Parent Loop BB16_271 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$8, -12(%rbp)
	jge	.LBB16_276
# %bb.274:                              # %for.body1246
                                        #   in Loop: Header=BB16_273 Depth=2
	movq	img, %rax
	addq	$7352, %rax             # imm = 0x1CB8
	movslq	-60(%rbp), %rcx
	shlq	$7, %rcx
	addq	%rcx, %rax
	movslq	-16(%rbp), %rcx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movslq	-12(%rbp), %rcx
	movw	(%rax,%rcx,2), %ax
	movq	img, %rcx
	addq	$12600, %rcx            # imm = 0x3138
	movl	-40(%rbp), %edx
	addl	-12(%rbp), %edx
	movslq	%edx, %rdx
	shlq	$5, %rdx
	addq	%rdx, %rcx
	movl	-36(%rbp), %edx
	addl	-16(%rbp), %edx
	movslq	%edx, %rdx
	movw	%ax, (%rcx,%rdx,2)
	movq	imgUV_org, %rax
	movq	(%rax), %rax
	movl	-92(%rbp), %ecx
	addl	-16(%rbp), %ecx
	movslq	%ecx, %rcx
	movq	(%rax,%rcx,8), %rax
	movl	-96(%rbp), %ecx
	addl	-12(%rbp), %ecx
	movslq	%ecx, %rcx
	movzwl	(%rax,%rcx,2), %eax
	movq	img, %rcx
	addq	$8504, %rcx             # imm = 0x2138
	movslq	-56(%rbp), %rdx
	shlq	$9, %rdx
	addq	%rdx, %rcx
	movl	-40(%rbp), %edx
	addl	-12(%rbp), %edx
	movslq	%edx, %rdx
	shlq	$5, %rdx
	addq	%rdx, %rcx
	movl	-36(%rbp), %edx
	addl	-16(%rbp), %edx
	movslq	%edx, %rdx
	movzwl	(%rcx,%rdx,2), %ecx
	subl	%ecx, %eax
	movl	%eax, -64(%rbp)
	movq	imgY_org, %rax
	movl	-92(%rbp), %ecx
	addl	-16(%rbp), %ecx
	movslq	%ecx, %rcx
	movq	(%rax,%rcx,8), %rax
	movl	-96(%rbp), %ecx
	addl	-12(%rbp), %ecx
	movslq	%ecx, %rcx
	movzwl	(%rax,%rcx,2), %eax
	movq	img, %rcx
	addq	$7352, %rcx             # imm = 0x1CB8
	movslq	-60(%rbp), %rdx
	shlq	$7, %rdx
	addq	%rdx, %rcx
	movslq	-16(%rbp), %rdx
	shlq	$4, %rdx
	addq	%rdx, %rcx
	movslq	-12(%rbp), %rdx
	movzwl	(%rcx,%rdx,2), %ecx
	subl	%ecx, %eax
	movl	%eax, -76(%rbp)
	movq	imgUV_org, %rax
	movq	8(%rax), %rax
	movl	-92(%rbp), %ecx
	addl	-16(%rbp), %ecx
	movslq	%ecx, %rcx
	movq	(%rax,%rcx,8), %rax
	movl	-96(%rbp), %ecx
	addl	-12(%rbp), %ecx
	movslq	%ecx, %rcx
	movzwl	(%rax,%rcx,2), %eax
	movq	img, %rcx
	addq	$8504, %rcx             # imm = 0x2138
	addq	$2048, %rcx             # imm = 0x800
	movslq	-56(%rbp), %rdx
	shlq	$9, %rdx
	addq	%rdx, %rcx
	movl	-40(%rbp), %edx
	addl	-12(%rbp), %edx
	movslq	%edx, %rdx
	shlq	$5, %rdx
	addq	%rdx, %rcx
	movl	-36(%rbp), %edx
	addl	-16(%rbp), %edx
	movslq	%edx, %rdx
	movzwl	(%rcx,%rdx,2), %ecx
	subl	%ecx, %eax
	movl	%eax, -80(%rbp)
	movl	-80(%rbp), %eax
	subl	-64(%rbp), %eax
	movslq	-12(%rbp), %rcx
	shlq	$6, %rcx
	movabsq	$resTrans_R, %rdx
	movq	%rdx, %rsi
	addq	%rcx, %rsi
	movslq	-16(%rbp), %rcx
	movl	%eax, (%rsi,%rcx,4)
	movl	-64(%rbp), %eax
	movslq	-12(%rbp), %rcx
	shlq	$6, %rcx
	addq	%rcx, %rdx
	movslq	-16(%rbp), %rcx
	movl	(%rdx,%rcx,4), %ecx
	sarl	$1, %ecx
	addl	%ecx, %eax
	movl	%eax, -88(%rbp)
	movl	-76(%rbp), %eax
	subl	-88(%rbp), %eax
	movslq	-12(%rbp), %rcx
	shlq	$6, %rcx
	movabsq	$resTrans_B, %rdx
	movq	%rdx, %rsi
	addq	%rcx, %rsi
	movslq	-16(%rbp), %rcx
	movl	%eax, (%rsi,%rcx,4)
	movl	-88(%rbp), %eax
	movslq	-12(%rbp), %rcx
	shlq	$6, %rcx
	addq	%rcx, %rdx
	movslq	-16(%rbp), %rcx
	movl	(%rdx,%rcx,4), %ecx
	sarl	$1, %ecx
	addl	%ecx, %eax
	movslq	-12(%rbp), %rcx
	shlq	$6, %rcx
	movabsq	$resTrans_G, %rdx
	addq	%rcx, %rdx
	movslq	-16(%rbp), %rcx
	movl	%eax, (%rdx,%rcx,4)
# %bb.275:                              # %for.inc1343
                                        #   in Loop: Header=BB16_273 Depth=2
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB16_273
.LBB16_276:                             # %for.end1345
                                        #   in Loop: Header=BB16_271 Depth=1
	jmp	.LBB16_277
.LBB16_277:                             # %for.inc1346
                                        #   in Loop: Header=BB16_271 Depth=1
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB16_271
.LBB16_278:                             # %for.end1348
	movl	$0, -16(%rbp)
.LBB16_279:                             # %for.cond1349
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB16_281 Depth 2
	cmpl	$8, -16(%rbp)
	jge	.LBB16_286
# %bb.280:                              # %for.body1352
                                        #   in Loop: Header=BB16_279 Depth=1
	movl	$0, -12(%rbp)
.LBB16_281:                             # %for.cond1353
                                        #   Parent Loop BB16_279 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$8, -12(%rbp)
	jge	.LBB16_284
# %bb.282:                              # %for.body1356
                                        #   in Loop: Header=BB16_281 Depth=2
	movslq	-12(%rbp), %rax
	shlq	$6, %rax
	movabsq	$resTrans_G, %rcx
	addq	%rax, %rcx
	movslq	-16(%rbp), %rax
	movl	(%rcx,%rax,4), %eax
	movq	img, %rcx
	addq	$13112, %rcx            # imm = 0x3338
	movslq	-12(%rbp), %rdx
	shlq	$6, %rdx
	addq	%rdx, %rcx
	movslq	-16(%rbp), %rdx
	movl	%eax, (%rcx,%rdx,4)
# %bb.283:                              # %for.inc1366
                                        #   in Loop: Header=BB16_281 Depth=2
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB16_281
.LBB16_284:                             # %for.end1368
                                        #   in Loop: Header=BB16_279 Depth=1
	jmp	.LBB16_285
.LBB16_285:                             # %for.inc1369
                                        #   in Loop: Header=BB16_279 Depth=1
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB16_279
.LBB16_286:                             # %for.end1371
	movl	-32(%rbp), %edi
	leaq	-184(%rbp), %rsi
	movl	$1, %edx
	callq	dct_luma8x8
	movl	%eax, -112(%rbp)
	movl	$0, -16(%rbp)
.LBB16_287:                             # %for.cond1373
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB16_289 Depth 2
	cmpl	$8, -16(%rbp)
	jge	.LBB16_294
# %bb.288:                              # %for.body1376
                                        #   in Loop: Header=BB16_287 Depth=1
	movl	$0, -12(%rbp)
.LBB16_289:                             # %for.cond1377
                                        #   Parent Loop BB16_287 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$8, -12(%rbp)
	jge	.LBB16_292
# %bb.290:                              # %for.body1380
                                        #   in Loop: Header=BB16_289 Depth=2
	movq	img, %rax
	addq	$13112, %rax            # imm = 0x3338
	movslq	-12(%rbp), %rcx
	shlq	$6, %rcx
	addq	%rcx, %rax
	movslq	-16(%rbp), %rcx
	movl	(%rax,%rcx,4), %eax
	movslq	-12(%rbp), %rcx
	shlq	$6, %rcx
	movabsq	$rec_resG, %rdx
	addq	%rcx, %rdx
	movslq	-16(%rbp), %rcx
	movl	%eax, (%rdx,%rcx,4)
# %bb.291:                              # %for.inc1390
                                        #   in Loop: Header=BB16_289 Depth=2
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB16_289
.LBB16_292:                             # %for.end1392
                                        #   in Loop: Header=BB16_287 Depth=1
	jmp	.LBB16_293
.LBB16_293:                             # %for.inc1393
                                        #   in Loop: Header=BB16_287 Depth=1
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB16_287
.LBB16_294:                             # %for.end1395
	movl	$0, -20(%rbp)
.LBB16_295:                             # %for.cond1396
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB16_297 Depth 2
                                        #       Child Loop BB16_299 Depth 3
                                        #     Child Loop BB16_305 Depth 2
                                        #       Child Loop BB16_307 Depth 3
                                        #     Child Loop BB16_313 Depth 2
                                        #       Child Loop BB16_315 Depth 3
	cmpl	$4, -20(%rbp)
	jge	.LBB16_322
# %bb.296:                              # %for.body1399
                                        #   in Loop: Header=BB16_295 Depth=1
	movl	-20(%rbp), %eax
	cltd
	movl	$2, %ecx
	idivl	%ecx
	shll	$2, %edx
	movl	%edx, -72(%rbp)
	movl	-20(%rbp), %eax
	cltd
	idivl	%ecx
	shll	$2, %eax
	movl	%eax, -84(%rbp)
	movl	$0, -16(%rbp)
.LBB16_297:                             # %for.cond1404
                                        #   Parent Loop BB16_295 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB16_299 Depth 3
	cmpl	$4, -16(%rbp)
	jge	.LBB16_304
# %bb.298:                              # %for.body1407
                                        #   in Loop: Header=BB16_297 Depth=2
	movl	$0, -12(%rbp)
.LBB16_299:                             # %for.cond1408
                                        #   Parent Loop BB16_295 Depth=1
                                        #     Parent Loop BB16_297 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	cmpl	$4, -12(%rbp)
	jge	.LBB16_302
# %bb.300:                              # %for.body1411
                                        #   in Loop: Header=BB16_299 Depth=3
	movl	-12(%rbp), %eax
	addl	-72(%rbp), %eax
	cltq
	shlq	$6, %rax
	movabsq	$resTrans_R, %rcx
	addq	%rax, %rcx
	movl	-16(%rbp), %eax
	addl	-84(%rbp), %eax
	cltq
	movl	(%rcx,%rax,4), %eax
	movq	img, %rcx
	addq	$13112, %rcx            # imm = 0x3338
	movslq	-12(%rbp), %rdx
	shlq	$6, %rdx
	addq	%rdx, %rcx
	movslq	-16(%rbp), %rdx
	movl	%eax, (%rcx,%rdx,4)
# %bb.301:                              # %for.inc1423
                                        #   in Loop: Header=BB16_299 Depth=3
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB16_299
.LBB16_302:                             # %for.end1425
                                        #   in Loop: Header=BB16_297 Depth=2
	jmp	.LBB16_303
.LBB16_303:                             # %for.inc1426
                                        #   in Loop: Header=BB16_297 Depth=2
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB16_297
.LBB16_304:                             # %for.end1428
                                        #   in Loop: Header=BB16_295 Depth=1
	movl	-32(%rbp), %esi
	addl	$4, %esi
	movl	-20(%rbp), %edx
	xorl	%edi, %edi
	callq	dct_chroma4x4
	movl	%eax, %ecx
	movl	-32(%rbp), %eax
	cltd
	movl	$2, %edi
	idivl	%edi
	movl	%edx, %esi
	shll	$1, %esi
	movl	-20(%rbp), %eax
	cltd
	idivl	%edi
	addl	%edx, %esi
	movslq	%esi, %rax
	shlq	$4, %rax
	movabsq	$cbp_chroma_block, %rbx
	addq	%rax, %rbx
	movl	-32(%rbp), %eax
	cltd
	idivl	%edi
	movl	%eax, %esi
	shll	$1, %esi
	movl	-20(%rbp), %eax
	cltd
	idivl	%edi
	addl	%eax, %esi
	movslq	%esi, %rax
	movl	%ecx, (%rbx,%rax,4)
	movl	-32(%rbp), %eax
	cltd
	idivl	%edi
	movl	%edx, %ecx
	shll	$1, %ecx
	movl	-20(%rbp), %eax
	cltd
	idivl	%edi
	addl	%edx, %ecx
	movslq	%ecx, %rax
	shlq	$4, %rax
	movabsq	$dc_level_temp, %rsi
	addq	%rax, %rsi
	movl	-32(%rbp), %eax
	cltd
	idivl	%edi
	movl	%eax, %ecx
	shll	$1, %ecx
	movl	-20(%rbp), %eax
	cltd
	idivl	%edi
	addl	%eax, %ecx
	movslq	%ecx, %rax
	movl	(%rsi,%rax,4), %esi
	movl	-32(%rbp), %eax
	cltd
	idivl	%edi
	movl	%edx, %ecx
	shll	$1, %ecx
	movl	-20(%rbp), %eax
	cltd
	idivl	%edi
	addl	%edx, %ecx
	movslq	%ecx, %rax
	shlq	$4, %rax
	movabsq	$dc_level, %rbx
	addq	%rax, %rbx
	movl	-32(%rbp), %eax
	cltd
	idivl	%edi
	movl	%eax, %ecx
	shll	$1, %ecx
	movl	-20(%rbp), %eax
	cltd
	idivl	%edi
	addl	%eax, %ecx
	movslq	%ecx, %rax
	movl	%esi, (%rbx,%rax,4)
	movl	$0, -16(%rbp)
.LBB16_305:                             # %for.cond1467
                                        #   Parent Loop BB16_295 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB16_307 Depth 3
	cmpl	$4, -16(%rbp)
	jge	.LBB16_312
# %bb.306:                              # %for.body1470
                                        #   in Loop: Header=BB16_305 Depth=2
	movl	$0, -12(%rbp)
.LBB16_307:                             # %for.cond1471
                                        #   Parent Loop BB16_295 Depth=1
                                        #     Parent Loop BB16_305 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	cmpl	$4, -12(%rbp)
	jge	.LBB16_310
# %bb.308:                              # %for.body1474
                                        #   in Loop: Header=BB16_307 Depth=3
	movq	img, %rax
	addq	$13112, %rax            # imm = 0x3338
	movslq	-12(%rbp), %rcx
	shlq	$6, %rcx
	addq	%rcx, %rax
	movslq	-16(%rbp), %rcx
	movl	(%rax,%rcx,4), %eax
	movl	-12(%rbp), %ecx
	addl	-72(%rbp), %ecx
	movslq	%ecx, %rcx
	shlq	$6, %rcx
	movabsq	$rec_resR, %rdx
	addq	%rcx, %rdx
	movl	-16(%rbp), %ecx
	addl	-84(%rbp), %ecx
	movslq	%ecx, %rcx
	movl	%eax, (%rdx,%rcx,4)
	movl	-12(%rbp), %eax
	addl	-72(%rbp), %eax
	cltq
	shlq	$6, %rax
	movabsq	$resTrans_B, %rcx
	addq	%rax, %rcx
	movl	-16(%rbp), %eax
	addl	-84(%rbp), %eax
	cltq
	movl	(%rcx,%rax,4), %eax
	movq	img, %rcx
	addq	$13112, %rcx            # imm = 0x3338
	movslq	-12(%rbp), %rdx
	shlq	$6, %rdx
	addq	%rdx, %rcx
	movslq	-16(%rbp), %rdx
	movl	%eax, (%rcx,%rdx,4)
# %bb.309:                              # %for.inc1497
                                        #   in Loop: Header=BB16_307 Depth=3
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB16_307
.LBB16_310:                             # %for.end1499
                                        #   in Loop: Header=BB16_305 Depth=2
	jmp	.LBB16_311
.LBB16_311:                             # %for.inc1500
                                        #   in Loop: Header=BB16_305 Depth=2
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB16_305
.LBB16_312:                             # %for.end1502
                                        #   in Loop: Header=BB16_295 Depth=1
	movl	-32(%rbp), %esi
	addl	$8, %esi
	movl	-20(%rbp), %edx
	movl	$1, %edi
	callq	dct_chroma4x4
	movl	%eax, %r9d
	movabsq	$dc_level, %r8
	addq	$64, %r8
	movabsq	$dc_level_temp, %rdi
	addq	$64, %rdi
	movabsq	$cbp_chroma_block, %rcx
	addq	$64, %rcx
	movl	-32(%rbp), %eax
	cltd
	movl	$2, %ebx
	idivl	%ebx
	movl	%edx, %esi
	shll	$1, %esi
	movl	-20(%rbp), %eax
	cltd
	idivl	%ebx
	addl	%edx, %esi
	movslq	%esi, %rax
	shlq	$4, %rax
	addq	%rax, %rcx
	movl	-32(%rbp), %eax
	cltd
	idivl	%ebx
	movl	%eax, %esi
	shll	$1, %esi
	movl	-20(%rbp), %eax
	cltd
	idivl	%ebx
	addl	%eax, %esi
	movslq	%esi, %rax
	movl	%r9d, (%rcx,%rax,4)
	movl	-32(%rbp), %eax
	cltd
	idivl	%ebx
	movl	%edx, %ecx
	shll	$1, %ecx
	movl	-20(%rbp), %eax
	cltd
	idivl	%ebx
	addl	%edx, %ecx
	movslq	%ecx, %rax
	shlq	$4, %rax
	addq	%rax, %rdi
	movl	-32(%rbp), %eax
	cltd
	idivl	%ebx
	movl	%eax, %ecx
	shll	$1, %ecx
	movl	-20(%rbp), %eax
	cltd
	idivl	%ebx
	addl	%eax, %ecx
	movslq	%ecx, %rax
	movl	(%rdi,%rax,4), %esi
	movl	-32(%rbp), %eax
	cltd
	idivl	%ebx
	movl	%edx, %ecx
	shll	$1, %ecx
	movl	-20(%rbp), %eax
	cltd
	idivl	%ebx
	addl	%edx, %ecx
	movslq	%ecx, %rax
	shlq	$4, %rax
	addq	%rax, %r8
	movl	-32(%rbp), %eax
	cltd
	idivl	%ebx
	movl	%eax, %ecx
	shll	$1, %ecx
	movl	-20(%rbp), %eax
	cltd
	idivl	%ebx
	addl	%eax, %ecx
	movslq	%ecx, %rax
	movl	%esi, (%r8,%rax,4)
	movl	$0, -16(%rbp)
.LBB16_313:                             # %for.cond1541
                                        #   Parent Loop BB16_295 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB16_315 Depth 3
	cmpl	$4, -16(%rbp)
	jge	.LBB16_320
# %bb.314:                              # %for.body1544
                                        #   in Loop: Header=BB16_313 Depth=2
	movl	$0, -12(%rbp)
.LBB16_315:                             # %for.cond1545
                                        #   Parent Loop BB16_295 Depth=1
                                        #     Parent Loop BB16_313 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	cmpl	$4, -12(%rbp)
	jge	.LBB16_318
# %bb.316:                              # %for.body1548
                                        #   in Loop: Header=BB16_315 Depth=3
	movq	img, %rax
	addq	$13112, %rax            # imm = 0x3338
	movslq	-12(%rbp), %rcx
	shlq	$6, %rcx
	addq	%rcx, %rax
	movslq	-16(%rbp), %rcx
	movl	(%rax,%rcx,4), %eax
	movl	-12(%rbp), %ecx
	addl	-72(%rbp), %ecx
	movslq	%ecx, %rcx
	shlq	$6, %rcx
	movabsq	$rec_resB, %rdx
	addq	%rcx, %rdx
	movl	-16(%rbp), %ecx
	addl	-84(%rbp), %ecx
	movslq	%ecx, %rcx
	movl	%eax, (%rdx,%rcx,4)
# %bb.317:                              # %for.inc1560
                                        #   in Loop: Header=BB16_315 Depth=3
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB16_315
.LBB16_318:                             # %for.end1562
                                        #   in Loop: Header=BB16_313 Depth=2
	jmp	.LBB16_319
.LBB16_319:                             # %for.inc1563
                                        #   in Loop: Header=BB16_313 Depth=2
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB16_313
.LBB16_320:                             # %for.end1565
                                        #   in Loop: Header=BB16_295 Depth=1
	jmp	.LBB16_321
.LBB16_321:                             # %for.inc1566
                                        #   in Loop: Header=BB16_295 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB16_295
.LBB16_322:                             # %for.end1568
	movl	$0, -16(%rbp)
.LBB16_323:                             # %for.cond1569
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB16_325 Depth 2
	cmpl	$8, -16(%rbp)
	jge	.LBB16_357
# %bb.324:                              # %for.body1572
                                        #   in Loop: Header=BB16_323 Depth=1
	movl	$0, -12(%rbp)
.LBB16_325:                             # %for.cond1573
                                        #   Parent Loop BB16_323 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$8, -12(%rbp)
	jge	.LBB16_355
# %bb.326:                              # %for.body1576
                                        #   in Loop: Header=BB16_325 Depth=2
	xorl	%eax, %eax
	movslq	-12(%rbp), %rcx
	shlq	$6, %rcx
	movabsq	$rec_resG, %rdx
	addq	%rcx, %rdx
	movslq	-16(%rbp), %rcx
	movl	(%rdx,%rcx,4), %ecx
	movslq	-12(%rbp), %rdx
	shlq	$6, %rdx
	movabsq	$rec_resB, %rsi
	movq	%rsi, %rdi
	addq	%rdx, %rdi
	movslq	-16(%rbp), %rdx
	movl	(%rdi,%rdx,4), %edx
	sarl	$1, %edx
	subl	%edx, %ecx
	movl	%ecx, -88(%rbp)
	movslq	-12(%rbp), %rcx
	shlq	$6, %rcx
	addq	%rcx, %rsi
	movslq	-16(%rbp), %rcx
	movl	(%rsi,%rcx,4), %ecx
	addl	-88(%rbp), %ecx
	movl	%ecx, -76(%rbp)
	movl	-88(%rbp), %ecx
	movslq	-12(%rbp), %rdx
	shlq	$6, %rdx
	movabsq	$rec_resR, %rsi
	movq	%rsi, %rdi
	addq	%rdx, %rdi
	movslq	-16(%rbp), %rdx
	movl	(%rdi,%rdx,4), %edx
	sarl	$1, %edx
	subl	%edx, %ecx
	movl	%ecx, -64(%rbp)
	movl	-64(%rbp), %ecx
	movslq	-12(%rbp), %rdx
	shlq	$6, %rdx
	addq	%rdx, %rsi
	movslq	-16(%rbp), %rdx
	addl	(%rsi,%rdx,4), %ecx
	movl	%ecx, -80(%rbp)
	movq	img, %rcx
	movl	72688(%rcx), %ecx
	movl	-64(%rbp), %edx
	movq	img, %rsi
	addq	$8504, %rsi             # imm = 0x2138
	movslq	-56(%rbp), %rdi
	shlq	$9, %rdi
	addq	%rdi, %rsi
	movl	-40(%rbp), %edi
	addl	-12(%rbp), %edi
	movslq	%edi, %rdi
	shlq	$5, %rdi
	addq	%rdi, %rsi
	movl	-36(%rbp), %edi
	addl	-16(%rbp), %edi
	movslq	%edi, %rdi
	movzwl	(%rsi,%rdi,2), %esi
	addl	%esi, %edx
	cmpl	%edx, %eax
	jle	.LBB16_328
# %bb.327:                              # %cond.true1618
                                        #   in Loop: Header=BB16_325 Depth=2
	xorl	%eax, %eax
	jmp	.LBB16_329
.LBB16_328:                             # %cond.false1619
                                        #   in Loop: Header=BB16_325 Depth=2
	movl	-64(%rbp), %eax
	movq	img, %rdx
	addq	$8504, %rdx             # imm = 0x2138
	movslq	-56(%rbp), %rsi
	shlq	$9, %rsi
	addq	%rsi, %rdx
	movl	-40(%rbp), %esi
	addl	-12(%rbp), %esi
	movslq	%esi, %rsi
	shlq	$5, %rsi
	addq	%rsi, %rdx
	movl	-36(%rbp), %esi
	addl	-16(%rbp), %esi
	movslq	%esi, %rsi
	movzwl	(%rdx,%rsi,2), %edx
	addl	%edx, %eax
.LBB16_329:                             # %cond.end1632
                                        #   in Loop: Header=BB16_325 Depth=2
	cmpl	%eax, %ecx
	jge	.LBB16_331
# %bb.330:                              # %cond.true1636
                                        #   in Loop: Header=BB16_325 Depth=2
	movq	img, %rax
	movl	72688(%rax), %eax
	jmp	.LBB16_335
.LBB16_331:                             # %cond.false1638
                                        #   in Loop: Header=BB16_325 Depth=2
	xorl	%eax, %eax
	movl	-64(%rbp), %ecx
	movq	img, %rdx
	addq	$8504, %rdx             # imm = 0x2138
	movslq	-56(%rbp), %rsi
	shlq	$9, %rsi
	addq	%rsi, %rdx
	movl	-40(%rbp), %esi
	addl	-12(%rbp), %esi
	movslq	%esi, %rsi
	shlq	$5, %rsi
	addq	%rsi, %rdx
	movl	-36(%rbp), %esi
	addl	-16(%rbp), %esi
	movslq	%esi, %rsi
	movzwl	(%rdx,%rsi,2), %edx
	addl	%edx, %ecx
	cmpl	%ecx, %eax
	jle	.LBB16_333
# %bb.332:                              # %cond.true1653
                                        #   in Loop: Header=BB16_325 Depth=2
	xorl	%eax, %eax
	jmp	.LBB16_334
.LBB16_333:                             # %cond.false1654
                                        #   in Loop: Header=BB16_325 Depth=2
	movl	-64(%rbp), %eax
	movq	img, %rcx
	addq	$8504, %rcx             # imm = 0x2138
	movslq	-56(%rbp), %rdx
	shlq	$9, %rdx
	addq	%rdx, %rcx
	movl	-40(%rbp), %edx
	addl	-12(%rbp), %edx
	movslq	%edx, %rdx
	shlq	$5, %rdx
	addq	%rdx, %rcx
	movl	-36(%rbp), %edx
	addl	-16(%rbp), %edx
	movslq	%edx, %rdx
	movzwl	(%rcx,%rdx,2), %ecx
	addl	%ecx, %eax
.LBB16_334:                             # %cond.end1667
                                        #   in Loop: Header=BB16_325 Depth=2
.LBB16_335:                             # %cond.end1669
                                        #   in Loop: Header=BB16_325 Depth=2
	xorl	%ecx, %ecx
	movq	enc_picture, %rdx
	movq	6464(%rdx), %rdx
	movq	(%rdx), %rdx
	movl	-44(%rbp), %esi
	addl	-16(%rbp), %esi
	movslq	%esi, %rsi
	movq	(%rdx,%rsi,8), %rdx
	movl	-68(%rbp), %esi
	addl	-12(%rbp), %esi
	movslq	%esi, %rsi
	movw	%ax, (%rdx,%rsi,2)
	movq	img, %rax
	movl	72684(%rax), %eax
	movl	-76(%rbp), %edx
	movq	img, %rsi
	addq	$7352, %rsi             # imm = 0x1CB8
	movslq	-60(%rbp), %rdi
	shlq	$7, %rdi
	addq	%rdi, %rsi
	movslq	-16(%rbp), %rdi
	shlq	$4, %rdi
	addq	%rdi, %rsi
	movslq	-12(%rbp), %rdi
	movzwl	(%rsi,%rdi,2), %esi
	addl	%esi, %edx
	cmpl	%edx, %ecx
	jle	.LBB16_337
# %bb.336:                              # %cond.true1692
                                        #   in Loop: Header=BB16_325 Depth=2
	xorl	%ecx, %ecx
	jmp	.LBB16_338
.LBB16_337:                             # %cond.false1693
                                        #   in Loop: Header=BB16_325 Depth=2
	movl	-76(%rbp), %ecx
	movq	img, %rdx
	addq	$7352, %rdx             # imm = 0x1CB8
	movslq	-60(%rbp), %rsi
	shlq	$7, %rsi
	addq	%rsi, %rdx
	movslq	-16(%rbp), %rsi
	shlq	$4, %rsi
	addq	%rsi, %rdx
	movslq	-12(%rbp), %rsi
	movzwl	(%rdx,%rsi,2), %edx
	addl	%edx, %ecx
.LBB16_338:                             # %cond.end1703
                                        #   in Loop: Header=BB16_325 Depth=2
	cmpl	%ecx, %eax
	jge	.LBB16_340
# %bb.339:                              # %cond.true1707
                                        #   in Loop: Header=BB16_325 Depth=2
	movq	img, %rax
	movl	72684(%rax), %eax
	jmp	.LBB16_344
.LBB16_340:                             # %cond.false1709
                                        #   in Loop: Header=BB16_325 Depth=2
	xorl	%eax, %eax
	movl	-76(%rbp), %ecx
	movq	img, %rdx
	addq	$7352, %rdx             # imm = 0x1CB8
	movslq	-60(%rbp), %rsi
	shlq	$7, %rsi
	addq	%rsi, %rdx
	movslq	-16(%rbp), %rsi
	shlq	$4, %rsi
	addq	%rsi, %rdx
	movslq	-12(%rbp), %rsi
	movzwl	(%rdx,%rsi,2), %edx
	addl	%edx, %ecx
	cmpl	%ecx, %eax
	jle	.LBB16_342
# %bb.341:                              # %cond.true1721
                                        #   in Loop: Header=BB16_325 Depth=2
	xorl	%eax, %eax
	jmp	.LBB16_343
.LBB16_342:                             # %cond.false1722
                                        #   in Loop: Header=BB16_325 Depth=2
	movl	-76(%rbp), %eax
	movq	img, %rcx
	addq	$7352, %rcx             # imm = 0x1CB8
	movslq	-60(%rbp), %rdx
	shlq	$7, %rdx
	addq	%rdx, %rcx
	movslq	-16(%rbp), %rdx
	shlq	$4, %rdx
	addq	%rdx, %rcx
	movslq	-12(%rbp), %rdx
	movzwl	(%rcx,%rdx,2), %ecx
	addl	%ecx, %eax
.LBB16_343:                             # %cond.end1732
                                        #   in Loop: Header=BB16_325 Depth=2
.LBB16_344:                             # %cond.end1734
                                        #   in Loop: Header=BB16_325 Depth=2
	xorl	%ecx, %ecx
	movq	enc_picture, %rdx
	movq	6424(%rdx), %rdx
	movl	-44(%rbp), %esi
	addl	-16(%rbp), %esi
	movslq	%esi, %rsi
	movq	(%rdx,%rsi,8), %rdx
	movl	-68(%rbp), %esi
	addl	-12(%rbp), %esi
	movslq	%esi, %rsi
	movw	%ax, (%rdx,%rsi,2)
	movq	img, %rax
	movl	72688(%rax), %eax
	movl	-80(%rbp), %edx
	movq	img, %rsi
	addq	$8504, %rsi             # imm = 0x2138
	addq	$2048, %rsi             # imm = 0x800
	movslq	-56(%rbp), %rdi
	shlq	$9, %rdi
	addq	%rdi, %rsi
	movl	-40(%rbp), %edi
	addl	-12(%rbp), %edi
	movslq	%edi, %rdi
	shlq	$5, %rdi
	addq	%rdi, %rsi
	movl	-36(%rbp), %edi
	addl	-16(%rbp), %edi
	movslq	%edi, %rdi
	movzwl	(%rsi,%rdi,2), %esi
	addl	%esi, %edx
	cmpl	%edx, %ecx
	jle	.LBB16_346
# %bb.345:                              # %cond.true1759
                                        #   in Loop: Header=BB16_325 Depth=2
	xorl	%ecx, %ecx
	jmp	.LBB16_347
.LBB16_346:                             # %cond.false1760
                                        #   in Loop: Header=BB16_325 Depth=2
	movl	-80(%rbp), %ecx
	movq	img, %rdx
	addq	$8504, %rdx             # imm = 0x2138
	addq	$2048, %rdx             # imm = 0x800
	movslq	-56(%rbp), %rsi
	shlq	$9, %rsi
	addq	%rsi, %rdx
	movl	-40(%rbp), %esi
	addl	-12(%rbp), %esi
	movslq	%esi, %rsi
	shlq	$5, %rsi
	addq	%rsi, %rdx
	movl	-36(%rbp), %esi
	addl	-16(%rbp), %esi
	movslq	%esi, %rsi
	movzwl	(%rdx,%rsi,2), %edx
	addl	%edx, %ecx
.LBB16_347:                             # %cond.end1773
                                        #   in Loop: Header=BB16_325 Depth=2
	cmpl	%ecx, %eax
	jge	.LBB16_349
# %bb.348:                              # %cond.true1777
                                        #   in Loop: Header=BB16_325 Depth=2
	movq	img, %rax
	movl	72688(%rax), %eax
	jmp	.LBB16_353
.LBB16_349:                             # %cond.false1779
                                        #   in Loop: Header=BB16_325 Depth=2
	xorl	%eax, %eax
	movl	-80(%rbp), %ecx
	movq	img, %rdx
	addq	$8504, %rdx             # imm = 0x2138
	addq	$2048, %rdx             # imm = 0x800
	movslq	-56(%rbp), %rsi
	shlq	$9, %rsi
	addq	%rsi, %rdx
	movl	-40(%rbp), %esi
	addl	-12(%rbp), %esi
	movslq	%esi, %rsi
	shlq	$5, %rsi
	addq	%rsi, %rdx
	movl	-36(%rbp), %esi
	addl	-16(%rbp), %esi
	movslq	%esi, %rsi
	movzwl	(%rdx,%rsi,2), %edx
	addl	%edx, %ecx
	cmpl	%ecx, %eax
	jle	.LBB16_351
# %bb.350:                              # %cond.true1794
                                        #   in Loop: Header=BB16_325 Depth=2
	xorl	%eax, %eax
	jmp	.LBB16_352
.LBB16_351:                             # %cond.false1795
                                        #   in Loop: Header=BB16_325 Depth=2
	movl	-80(%rbp), %eax
	movq	img, %rcx
	addq	$8504, %rcx             # imm = 0x2138
	addq	$2048, %rcx             # imm = 0x800
	movslq	-56(%rbp), %rdx
	shlq	$9, %rdx
	addq	%rdx, %rcx
	movl	-40(%rbp), %edx
	addl	-12(%rbp), %edx
	movslq	%edx, %rdx
	shlq	$5, %rdx
	addq	%rdx, %rcx
	movl	-36(%rbp), %edx
	addl	-16(%rbp), %edx
	movslq	%edx, %rdx
	movzwl	(%rcx,%rdx,2), %ecx
	addl	%ecx, %eax
.LBB16_352:                             # %cond.end1808
                                        #   in Loop: Header=BB16_325 Depth=2
.LBB16_353:                             # %cond.end1810
                                        #   in Loop: Header=BB16_325 Depth=2
	movq	enc_picture, %rcx
	movq	6464(%rcx), %rcx
	movq	8(%rcx), %rcx
	movl	-44(%rbp), %edx
	addl	-16(%rbp), %edx
	movslq	%edx, %rdx
	movq	(%rcx,%rdx,8), %rcx
	movl	-68(%rbp), %edx
	addl	-12(%rbp), %edx
	movslq	%edx, %rdx
	movw	%ax, (%rcx,%rdx,2)
# %bb.354:                              # %for.inc1821
                                        #   in Loop: Header=BB16_325 Depth=2
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB16_325
.LBB16_355:                             # %for.end1823
                                        #   in Loop: Header=BB16_323 Depth=1
	jmp	.LBB16_356
.LBB16_356:                             # %for.inc1824
                                        #   in Loop: Header=BB16_323 Depth=1
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB16_323
.LBB16_357:                             # %for.end1826
	jmp	.LBB16_358
.LBB16_358:                             # %if.end1827
	jmp	.LBB16_420
.LBB16_359:                             # %if.else1828
	movl	$0, -16(%rbp)
.LBB16_360:                             # %for.cond1829
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB16_362 Depth 2
                                        #       Child Loop BB16_364 Depth 3
	cmpl	$2, -16(%rbp)
	jge	.LBB16_371
# %bb.361:                              # %for.body1832
                                        #   in Loop: Header=BB16_360 Depth=1
	movl	$0, -12(%rbp)
.LBB16_362:                             # %for.cond1833
                                        #   Parent Loop BB16_360 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB16_364 Depth 3
	cmpl	$65, -12(%rbp)
	jge	.LBB16_369
# %bb.363:                              # %for.body1836
                                        #   in Loop: Header=BB16_362 Depth=2
	movl	$0, -52(%rbp)
.LBB16_364:                             # %for.cond1837
                                        #   Parent Loop BB16_360 Depth=1
                                        #     Parent Loop BB16_362 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	cmpl	$4, -52(%rbp)
	jge	.LBB16_367
# %bb.365:                              # %for.body1840
                                        #   in Loop: Header=BB16_364 Depth=3
	movq	cofAC8x8, %rax
	movslq	-32(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movslq	-52(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movslq	-16(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movslq	-12(%rbp), %rcx
	movl	(%rax,%rcx,4), %eax
	movq	img, %rcx
	movq	14136(%rcx), %rcx
	movslq	-32(%rbp), %rdx
	movq	(%rcx,%rdx,8), %rcx
	movslq	-52(%rbp), %rdx
	movq	(%rcx,%rdx,8), %rcx
	movslq	-16(%rbp), %rdx
	movq	(%rcx,%rdx,8), %rcx
	movslq	-12(%rbp), %rdx
	movl	%eax, (%rcx,%rdx,4)
# %bb.366:                              # %for.inc1858
                                        #   in Loop: Header=BB16_364 Depth=3
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB16_364
.LBB16_367:                             # %for.end1860
                                        #   in Loop: Header=BB16_362 Depth=2
	jmp	.LBB16_368
.LBB16_368:                             # %for.inc1861
                                        #   in Loop: Header=BB16_362 Depth=2
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB16_362
.LBB16_369:                             # %for.end1863
                                        #   in Loop: Header=BB16_360 Depth=1
	jmp	.LBB16_370
.LBB16_370:                             # %for.inc1864
                                        #   in Loop: Header=BB16_360 Depth=1
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB16_360
.LBB16_371:                             # %for.end1866
	movq	img, %rax
	cmpl	$0, 72724(%rax)
	je	.LBB16_393
# %bb.372:                              # %if.then1869
	movl	$0, -20(%rbp)
.LBB16_373:                             # %for.cond1870
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB16_375 Depth 2
                                        #       Child Loop BB16_377 Depth 3
                                        #     Child Loop BB16_383 Depth 2
                                        #       Child Loop BB16_385 Depth 3
	cmpl	$4, -20(%rbp)
	jge	.LBB16_392
# %bb.374:                              # %for.body1873
                                        #   in Loop: Header=BB16_373 Depth=1
	movl	$0, -16(%rbp)
.LBB16_375:                             # %for.cond1874
                                        #   Parent Loop BB16_373 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB16_377 Depth 3
	cmpl	$2, -16(%rbp)
	jge	.LBB16_382
# %bb.376:                              # %for.body1877
                                        #   in Loop: Header=BB16_375 Depth=2
	movl	$0, -12(%rbp)
.LBB16_377:                             # %for.cond1878
                                        #   Parent Loop BB16_373 Depth=1
                                        #     Parent Loop BB16_375 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	cmpl	$18, -12(%rbp)
	jge	.LBB16_380
# %bb.378:                              # %for.body1881
                                        #   in Loop: Header=BB16_377 Depth=3
	movslq	-20(%rbp), %rax
	imulq	$144, %rax, %rax
	movabsq	$cofAC8x8_chroma, %rcx
	addq	%rax, %rcx
	movslq	-16(%rbp), %rax
	imulq	$72, %rax, %rax
	addq	%rax, %rcx
	movslq	-12(%rbp), %rax
	movl	(%rcx,%rax,4), %eax
	movq	img, %rcx
	movq	14136(%rcx), %rcx
	movl	-32(%rbp), %edx
	addl	$4, %edx
	movslq	%edx, %rdx
	movq	(%rcx,%rdx,8), %rcx
	movslq	-20(%rbp), %rdx
	movq	(%rcx,%rdx,8), %rcx
	movslq	-16(%rbp), %rdx
	movq	(%rcx,%rdx,8), %rcx
	movslq	-12(%rbp), %rdx
	movl	%eax, (%rcx,%rdx,4)
# %bb.379:                              # %for.inc1898
                                        #   in Loop: Header=BB16_377 Depth=3
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB16_377
.LBB16_380:                             # %for.end1900
                                        #   in Loop: Header=BB16_375 Depth=2
	jmp	.LBB16_381
.LBB16_381:                             # %for.inc1901
                                        #   in Loop: Header=BB16_375 Depth=2
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB16_375
.LBB16_382:                             # %for.end1903
                                        #   in Loop: Header=BB16_373 Depth=1
	movl	$0, -16(%rbp)
.LBB16_383:                             # %for.cond1904
                                        #   Parent Loop BB16_373 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB16_385 Depth 3
	cmpl	$2, -16(%rbp)
	jge	.LBB16_390
# %bb.384:                              # %for.body1907
                                        #   in Loop: Header=BB16_383 Depth=2
	movl	$0, -12(%rbp)
.LBB16_385:                             # %for.cond1908
                                        #   Parent Loop BB16_373 Depth=1
                                        #     Parent Loop BB16_383 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	cmpl	$18, -12(%rbp)
	jge	.LBB16_388
# %bb.386:                              # %for.body1911
                                        #   in Loop: Header=BB16_385 Depth=3
	movabsq	$cofAC8x8_chroma, %rax
	addq	$576, %rax              # imm = 0x240
	movslq	-20(%rbp), %rcx
	imulq	$144, %rcx, %rcx
	addq	%rcx, %rax
	movslq	-16(%rbp), %rcx
	imulq	$72, %rcx, %rcx
	addq	%rcx, %rax
	movslq	-12(%rbp), %rcx
	movl	(%rax,%rcx,4), %eax
	movq	img, %rcx
	movq	14136(%rcx), %rcx
	movl	-32(%rbp), %edx
	addl	$8, %edx
	movslq	%edx, %rdx
	movq	(%rcx,%rdx,8), %rcx
	movslq	-20(%rbp), %rdx
	movq	(%rcx,%rdx,8), %rcx
	movslq	-16(%rbp), %rdx
	movq	(%rcx,%rdx,8), %rcx
	movslq	-12(%rbp), %rdx
	movl	%eax, (%rcx,%rdx,4)
# %bb.387:                              # %for.inc1928
                                        #   in Loop: Header=BB16_385 Depth=3
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB16_385
.LBB16_388:                             # %for.end1930
                                        #   in Loop: Header=BB16_383 Depth=2
	jmp	.LBB16_389
.LBB16_389:                             # %for.inc1931
                                        #   in Loop: Header=BB16_383 Depth=2
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB16_383
.LBB16_390:                             # %for.end1933
                                        #   in Loop: Header=BB16_373 Depth=1
	jmp	.LBB16_391
.LBB16_391:                             # %for.inc1934
                                        #   in Loop: Header=BB16_373 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB16_373
.LBB16_392:                             # %for.end1936
	jmp	.LBB16_393
.LBB16_393:                             # %if.end1937
	movl	$0, -28(%rbp)
.LBB16_394:                             # %for.cond1938
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB16_396 Depth 2
	cmpl	$8, -28(%rbp)
	jge	.LBB16_401
# %bb.395:                              # %for.body1941
                                        #   in Loop: Header=BB16_394 Depth=1
	movl	$0, -24(%rbp)
.LBB16_396:                             # %for.cond1942
                                        #   Parent Loop BB16_394 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$8, -24(%rbp)
	jge	.LBB16_399
# %bb.397:                              # %for.body1945
                                        #   in Loop: Header=BB16_396 Depth=2
	movslq	-28(%rbp), %rax
	shlq	$4, %rax
	leaq	-384(%rbp), %rcx
	addq	%rax, %rcx
	movslq	-24(%rbp), %rax
	movw	(%rcx,%rax,2), %ax
	movq	enc_picture, %rcx
	movq	6424(%rcx), %rcx
	movl	-44(%rbp), %edx
	addl	-28(%rbp), %edx
	movslq	%edx, %rdx
	movq	(%rcx,%rdx,8), %rcx
	movl	-68(%rbp), %edx
	addl	-24(%rbp), %edx
	movslq	%edx, %rdx
	movw	%ax, (%rcx,%rdx,2)
	movq	img, %rax
	addq	$7352, %rax             # imm = 0x1CB8
	movslq	-60(%rbp), %rcx
	shlq	$7, %rcx
	addq	%rcx, %rax
	movslq	-28(%rbp), %rcx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movslq	-24(%rbp), %rcx
	movw	(%rax,%rcx,2), %ax
	movq	img, %rcx
	addq	$12600, %rcx            # imm = 0x3138
	movl	-40(%rbp), %edx
	addl	-24(%rbp), %edx
	movslq	%edx, %rdx
	shlq	$5, %rdx
	addq	%rdx, %rcx
	movl	-36(%rbp), %edx
	addl	-28(%rbp), %edx
	movslq	%edx, %rdx
	movw	%ax, (%rcx,%rdx,2)
# %bb.398:                              # %for.inc1971
                                        #   in Loop: Header=BB16_396 Depth=2
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB16_396
.LBB16_399:                             # %for.end1973
                                        #   in Loop: Header=BB16_394 Depth=1
	jmp	.LBB16_400
.LBB16_400:                             # %for.inc1974
                                        #   in Loop: Header=BB16_394 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB16_394
.LBB16_401:                             # %for.end1976
	movq	img, %rax
	cmpl	$0, 72724(%rax)
	je	.LBB16_419
# %bb.402:                              # %if.then1979
	movl	$0, -20(%rbp)
.LBB16_403:                             # %for.cond1980
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB16_405 Depth 2
                                        #       Child Loop BB16_407 Depth 3
                                        #         Child Loop BB16_409 Depth 4
	cmpl	$4, -20(%rbp)
	jge	.LBB16_418
# %bb.404:                              # %for.body1983
                                        #   in Loop: Header=BB16_403 Depth=1
	movl	-20(%rbp), %eax
	cltd
	movl	$2, %ecx
	idivl	%ecx
	shll	$2, %edx
	movl	%edx, -72(%rbp)
	movl	-20(%rbp), %eax
	cltd
	idivl	%ecx
	shll	$2, %eax
	movl	%eax, -84(%rbp)
	movl	$0, -12(%rbp)
.LBB16_405:                             # %for.cond1988
                                        #   Parent Loop BB16_403 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB16_407 Depth 3
                                        #         Child Loop BB16_409 Depth 4
	cmpl	$2, -12(%rbp)
	jge	.LBB16_416
# %bb.406:                              # %for.body1991
                                        #   in Loop: Header=BB16_405 Depth=2
	movl	$0, -28(%rbp)
.LBB16_407:                             # %for.cond1992
                                        #   Parent Loop BB16_403 Depth=1
                                        #     Parent Loop BB16_405 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB16_409 Depth 4
	cmpl	$4, -28(%rbp)
	jge	.LBB16_414
# %bb.408:                              # %for.body1995
                                        #   in Loop: Header=BB16_407 Depth=3
	movl	$0, -24(%rbp)
.LBB16_409:                             # %for.cond1996
                                        #   Parent Loop BB16_403 Depth=1
                                        #     Parent Loop BB16_405 Depth=2
                                        #       Parent Loop BB16_407 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	cmpl	$4, -24(%rbp)
	jge	.LBB16_412
# %bb.410:                              # %for.body1999
                                        #   in Loop: Header=BB16_409 Depth=4
	movslq	-12(%rbp), %rax
	shlq	$8, %rax
	leaq	-1152(%rbp), %rcx
	addq	%rax, %rcx
	movslq	-20(%rbp), %rax
	shlq	$6, %rax
	addq	%rax, %rcx
	movslq	-28(%rbp), %rax
	shlq	$4, %rax
	addq	%rax, %rcx
	movslq	-24(%rbp), %rax
	movl	(%rcx,%rax,4), %eax
	movq	enc_picture, %rcx
	movq	6464(%rcx), %rcx
	movslq	-12(%rbp), %rdx
	movq	(%rcx,%rdx,8), %rcx
	movl	-44(%rbp), %edx
	addl	-28(%rbp), %edx
	addl	-84(%rbp), %edx
	movslq	%edx, %rdx
	movq	(%rcx,%rdx,8), %rcx
	movl	-68(%rbp), %edx
	addl	-24(%rbp), %edx
	addl	-72(%rbp), %edx
	movslq	%edx, %rdx
	movw	%ax, (%rcx,%rdx,2)
# %bb.411:                              # %for.inc2020
                                        #   in Loop: Header=BB16_409 Depth=4
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB16_409
.LBB16_412:                             # %for.end2022
                                        #   in Loop: Header=BB16_407 Depth=3
	jmp	.LBB16_413
.LBB16_413:                             # %for.inc2023
                                        #   in Loop: Header=BB16_407 Depth=3
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB16_407
.LBB16_414:                             # %for.end2025
                                        #   in Loop: Header=BB16_405 Depth=2
	jmp	.LBB16_415
.LBB16_415:                             # %for.inc2026
                                        #   in Loop: Header=BB16_405 Depth=2
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB16_405
.LBB16_416:                             # %for.end2028
                                        #   in Loop: Header=BB16_403 Depth=1
	jmp	.LBB16_417
.LBB16_417:                             # %for.inc2029
                                        #   in Loop: Header=BB16_403 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB16_403
.LBB16_418:                             # %for.end2031
	jmp	.LBB16_419
.LBB16_419:                             # %if.end2032
	jmp	.LBB16_420
.LBB16_420:                             # %if.end2033
	movl	-112(%rbp), %ebx
	cmpl	$1732674303, -176(%rbp) # imm = 0x674682FF
	jne	.LBB16_422
.LBB16_421:
	movl	%ebx, %eax
	addq	$1144, %rsp             # imm = 0x478
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB16_422:                             # %func_exit
	.cfi_def_cfa %rbp, 16
	callq	detect_breach
	jmp	.LBB16_421
.Lfunc_end16:
	.size	Mode_Decision_for_new_8x8IntraBlocks.11, .Lfunc_end16-Mode_Decision_for_new_8x8IntraBlocks.11
	.cfi_endproc
                                        # -- End function
	.globl	RDCost_for_8x8IntraBlocks.12 # -- Begin function RDCost_for_8x8IntraBlocks.12
	.p2align	4, 0x90
	.type	RDCost_for_8x8IntraBlocks.12,@function
RDCost_for_8x8IntraBlocks.12:           # @RDCost_for_8x8IntraBlocks.12
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$176, %rsp
	movl	$1984485787, -76(%rbp)  # imm = 0x7648D99B
	movq	%rdi, -152(%rbp)
	movl	%esi, -8(%rbp)
	movl	%edx, -32(%rbp)
	vmovsd	%xmm0, -160(%rbp)
	vmovsd	%xmm1, -176(%rbp)
	movl	%ecx, -44(%rbp)
	vxorps	%xmm0, %xmm0, %xmm0
	vmovsd	%xmm0, -120(%rbp)
	movq	$0, -64(%rbp)
	movl	-8(%rbp), %eax
	cltd
	movl	$2, %ecx
	idivl	%ecx
	shll	$3, %edx
	movl	%edx, -68(%rbp)
	movl	-8(%rbp), %eax
	cltd
	idivl	%ecx
	shll	$3, %eax
	movl	%eax, -36(%rbp)
	movq	img, %rax
	movl	152(%rax), %eax
	addl	-68(%rbp), %eax
	movl	%eax, -40(%rbp)
	movq	img, %rax
	movl	156(%rax), %eax
	addl	-36(%rbp), %eax
	movl	%eax, -80(%rbp)
	movq	img, %rax
	movl	172(%rax), %eax
	addl	-36(%rbp), %eax
	movl	%eax, -72(%rbp)
	movq	imgY_org, %rax
	movq	%rax, -168(%rbp)
	movq	enc_picture, %rax
	movq	6424(%rax), %rax
	movq	%rax, -144(%rbp)
	movq	img, %rax
	movq	14160(%rax), %rax
	movq	%rax, -96(%rbp)
	movq	img, %rax
	movq	14168(%rax), %rax
	movq	img, %rcx
	movslq	12(%rcx), %rcx
	imulq	$632, %rcx, %rcx        # imm = 0x278
	addq	%rcx, %rax
	movq	%rax, -112(%rbp)
	movq	img, %rax
	addq	$14176, %rax            # imm = 0x3760
	movq	-112(%rbp), %rcx
	movslq	(%rcx), %rcx
	imulq	$48, %rcx, %rcx
	addq	%rcx, %rax
	movq	%rax, -24(%rbp)
	movq	input, %rax
	movslq	2364(%rax), %rax
	movq	assignSE2partition(,%rax,8), %rax
	movq	%rax, -128(%rbp)
	movl	$0, -84(%rbp)
	movl	-8(%rbp), %edi
	leaq	-84(%rbp), %rsi
	movl	$1, %edx
	callq	dct_luma8x8
	movq	-152(%rbp), %rcx
	movl	%eax, (%rcx)
	movl	$0, -16(%rbp)
.LBB17_1:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB17_3 Depth 2
	cmpl	$8, -16(%rbp)
	jge	.LBB17_8
# %bb.2:                                # %for.body
                                        #   in Loop: Header=BB17_1 Depth=1
	movl	-40(%rbp), %eax
	movl	%eax, -12(%rbp)
.LBB17_3:                               # %for.cond9
                                        #   Parent Loop BB17_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-12(%rbp), %eax
	movl	-40(%rbp), %ecx
	addl	$8, %ecx
	cmpl	%ecx, %eax
	jge	.LBB17_6
# %bb.4:                                # %for.body12
                                        #   in Loop: Header=BB17_3 Depth=2
	movq	img, %rax
	movq	71776(%rax), %rax
	movq	-168(%rbp), %rcx
	movl	-72(%rbp), %edx
	addl	-16(%rbp), %edx
	movslq	%edx, %rdx
	movq	(%rcx,%rdx,8), %rcx
	movslq	-12(%rbp), %rdx
	movzwl	(%rcx,%rdx,2), %ecx
	movq	-144(%rbp), %rdx
	movl	-80(%rbp), %esi
	addl	-16(%rbp), %esi
	movslq	%esi, %rsi
	movq	(%rdx,%rsi,8), %rdx
	movslq	-12(%rbp), %rsi
	movzwl	(%rdx,%rsi,2), %edx
	subl	%edx, %ecx
	movslq	%ecx, %rcx
	movslq	(%rax,%rcx,4), %rax
	addq	-64(%rbp), %rax
	movq	%rax, -64(%rbp)
# %bb.5:                                # %for.inc
                                        #   in Loop: Header=BB17_3 Depth=2
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB17_3
.LBB17_6:                               # %for.end
                                        #   in Loop: Header=BB17_1 Depth=1
	jmp	.LBB17_7
.LBB17_7:                               # %for.inc28
                                        #   in Loop: Header=BB17_1 Depth=1
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB17_1
.LBB17_8:                               # %for.end30
	movl	-44(%rbp), %eax
	cmpl	-32(%rbp), %eax
	jne	.LBB17_10
# %bb.9:                                # %cond.true
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	jmp	.LBB17_14
.LBB17_10:                              # %cond.false
	movl	-32(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jge	.LBB17_12
# %bb.11:                               # %cond.true35
	movl	-32(%rbp), %eax
	jmp	.LBB17_13
.LBB17_12:                              # %cond.false36
	movl	-32(%rbp), %eax
	subl	$1, %eax
.LBB17_13:                              # %cond.end
.LBB17_14:                              # %cond.end38
	movq	-24(%rbp), %rcx
	movl	%eax, 4(%rcx)
	movl	-8(%rbp), %eax
	movq	-24(%rbp), %rcx
	movl	%eax, 24(%rcx)
	movq	-24(%rbp), %rax
	movl	$4, (%rax)
	movq	input, %rax
	cmpl	$0, 2356(%rax)
	je	.LBB17_16
# %bb.15:                               # %if.then
	movq	-24(%rbp), %rax
	movabsq	$writeIntraPredMode_CABAC, %rcx
	movq	%rcx, 40(%rax)
.LBB17_16:                              # %if.end
	movq	img, %rax
	cmpl	$1, 24(%rax)
	je	.LBB17_18
# %bb.17:                               # %if.then45
	movq	-96(%rbp), %rax
	movq	24(%rax), %rax
	movq	-128(%rbp), %rcx
	movslq	16(%rcx), %rcx
	imulq	$120, %rcx, %rcx
	addq	%rcx, %rax
	movq	%rax, -56(%rbp)
	jmp	.LBB17_19
.LBB17_18:                              # %if.else
	movq	-96(%rbp), %rax
	movq	24(%rax), %rax
	movq	-128(%rbp), %rcx
	movslq	72(%rcx), %rcx
	imulq	$120, %rcx, %rcx
	addq	%rcx, %rax
	movq	%rax, -56(%rbp)
.LBB17_19:                              # %if.end53
	movq	input, %rax
	cmpl	$0, 2356(%rax)
	jne	.LBB17_21
# %bb.20:                               # %if.then57
	movq	-24(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	writeSyntaxElement_Intra4x4PredictionMode
	jmp	.LBB17_22
.LBB17_21:                              # %if.else59
	movq	-56(%rbp), %rax
	movq	112(%rax), %rax
	movq	-24(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	*%rax
.LBB17_22:                              # %if.end61
	movq	-24(%rbp), %rax
	movl	12(%rax), %eax
	movl	%eax, -4(%rbp)
	movq	-24(%rbp), %rax
	addq	$48, %rax
	movq	%rax, -24(%rbp)
	movq	-112(%rbp), %rax
	movl	(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, (%rax)
	movq	input, %rax
	cmpl	$0, 2356(%rax)
	jne	.LBB17_28
# %bb.23:                               # %if.then67
	movl	$0, -28(%rbp)
.LBB17_24:                              # %for.cond68
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$4, -28(%rbp)
	jge	.LBB17_27
# %bb.25:                               # %for.body71
                                        #   in Loop: Header=BB17_24 Depth=1
	movl	-8(%rbp), %esi
	movl	-28(%rbp), %edx
	xorl	%edi, %edi
	xorl	%ecx, %ecx
	callq	writeCoeff4x4_CAVLC
	addl	-4(%rbp), %eax
	movl	%eax, -4(%rbp)
# %bb.26:                               # %for.inc74
                                        #   in Loop: Header=BB17_24 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB17_24
.LBB17_27:                              # %for.end76
	jmp	.LBB17_29
.LBB17_28:                              # %if.else77
	movl	-8(%rbp), %edi
	movl	$1, %esi
	callq	writeLumaCoeff8x8_CABAC
	addl	-4(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB17_29:                              # %if.end80
	vcvtsi2sdq	-64(%rbp), %xmm0, %xmm0
	vmovsd	-160(%rbp), %xmm1       # xmm1 = mem[0],zero
	vcvtsi2sdl	-4(%rbp), %xmm0, %xmm2
	vmulsd	%xmm2, %xmm1, %xmm1
	vaddsd	%xmm1, %xmm0, %xmm0
	vmovsd	%xmm0, -120(%rbp)
	movq	img, %rax
	cmpl	$0, 72724(%rax)
	je	.LBB17_31
# %bb.30:                               # %if.then85
	vcvtsi2sdl	-4(%rbp), %xmm0, %xmm0
	vmovsd	%xmm0, -104(%rbp)
	jmp	.LBB17_32
.LBB17_31:                              # %if.else87
	vmovsd	-120(%rbp), %xmm0       # xmm0 = mem[0],zero
	vmovsd	%xmm0, -104(%rbp)
.LBB17_32:                              # %return
	vmovsd	-104(%rbp), %xmm0       # xmm0 = mem[0],zero
	cmpl	$1984485787, -76(%rbp)  # imm = 0x7648D99B
	jne	.LBB17_34
.LBB17_33:
	addq	$176, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB17_34:                              # %func_exit
	.cfi_def_cfa %rbp, 16
	vmovsd	%xmm0, -136(%rbp)       # 8-byte Spill
	callq	detect_breach
	vmovsd	-136(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	jmp	.LBB17_33
.Lfunc_end17:
	.size	RDCost_for_8x8IntraBlocks.12, .Lfunc_end17-RDCost_for_8x8IntraBlocks.12
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function Mode_Decision_for_new_Intra8x8Macroblock.13
.LCPI18_0:
	.quad	4602677017732795964     # double 0.49990000000000001
.LCPI18_1:
	.quad	4618441417868443648     # double 6
	.text
	.globl	Mode_Decision_for_new_Intra8x8Macroblock.13
	.p2align	4, 0x90
	.type	Mode_Decision_for_new_Intra8x8Macroblock.13,@function
Mode_Decision_for_new_Intra8x8Macroblock.13: # @Mode_Decision_for_new_Intra8x8Macroblock.13
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset %rbx, -24
	vmovsd	.LCPI18_0(%rip), %xmm1  # xmm1 = mem[0],zero
	vmovsd	.LCPI18_1(%rip), %xmm2  # xmm2 = mem[0],zero
	movl	$1644114562, -20(%rbp)  # imm = 0x61FF3282
	vmovsd	%xmm0, -32(%rbp)
	movq	%rdi, -40(%rbp)
	movl	$0, -16(%rbp)
	vmulsd	-32(%rbp), %xmm2, %xmm0
	vaddsd	%xmm1, %xmm0, %xmm0
	vroundsd	$9, %xmm0, %xmm0, %xmm0
	vcvttsd2si	%xmm0, %eax
	movq	-40(%rbp), %rcx
	movl	%eax, (%rcx)
	movl	$0, -12(%rbp)
.LBB18_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$4, -12(%rbp)
	jge	.LBB18_6
# %bb.2:                                # %for.body
                                        #   in Loop: Header=BB18_1 Depth=1
	movl	-12(%rbp), %edi
	vmovsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	leaq	-24(%rbp), %rsi
	callq	Mode_Decision_for_new_8x8IntraBlocks
	cmpl	$0, %eax
	je	.LBB18_4
# %bb.3:                                # %if.then
                                        #   in Loop: Header=BB18_1 Depth=1
	movl	-12(%rbp), %ecx
                                        # kill: def $cl killed $ecx
	movl	$1, %eax
	shll	%cl, %eax
	orl	-16(%rbp), %eax
	movl	%eax, -16(%rbp)
.LBB18_4:                               # %if.end
                                        #   in Loop: Header=BB18_1 Depth=1
	movl	-24(%rbp), %eax
	movq	-40(%rbp), %rcx
	addl	(%rcx), %eax
	movl	%eax, (%rcx)
# %bb.5:                                # %for.inc
                                        #   in Loop: Header=BB18_1 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB18_1
.LBB18_6:                               # %for.end
	movl	-16(%rbp), %ebx
	cmpl	$1644114562, -20(%rbp)  # imm = 0x61FF3282
	jne	.LBB18_8
.LBB18_7:
	movl	%ebx, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB18_8:                               # %func_exit
	.cfi_def_cfa %rbp, 16
	callq	detect_breach
	jmp	.LBB18_7
.Lfunc_end18:
	.size	Mode_Decision_for_new_Intra8x8Macroblock.13, .Lfunc_end18-Mode_Decision_for_new_Intra8x8Macroblock.13
	.cfi_endproc
                                        # -- End function
	.globl	intrapred_luma8x8.14    # -- Begin function intrapred_luma8x8.14
	.p2align	4, 0x90
	.type	intrapred_luma8x8.14,@function
intrapred_luma8x8.14:                   # @intrapred_luma8x8.14
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$464, %rsp              # imm = 0x1D0
	movl	$708979745, -224(%rbp)  # imm = 0x2A422C21
	movl	%edi, -212(%rbp)
	movl	%esi, -216(%rbp)
	movq	%rdx, -240(%rbp)
	movq	%rcx, -232(%rbp)
	movq	%r8, -248(%rbp)
	movq	enc_picture, %rax
	movq	6424(%rax), %rax
	movq	%rax, -128(%rbp)
	movl	-212(%rbp), %eax
	andl	$15, %eax
	movl	%eax, -136(%rbp)
	movl	-216(%rbp), %eax
	andl	$15, %eax
	movl	%eax, -152(%rbp)
	movq	img, %rax
	movl	12(%rax), %eax
	movl	%eax, -156(%rbp)
	movl	$0, -4(%rbp)
.LBB19_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$8, -4(%rbp)
	jge	.LBB19_4
# %bb.2:                                # %for.body
                                        #   in Loop: Header=BB19_1 Depth=1
	movl	-156(%rbp), %edi
	movl	-136(%rbp), %esi
	subl	$1, %esi
	movl	-152(%rbp), %edx
	addl	-4(%rbp), %edx
	movslq	-4(%rbp), %rax
	imulq	$24, %rax, %rax
	leaq	-464(%rbp), %r8
	addq	%rax, %r8
	movl	$1, %ecx
	callq	getNeighbour
# %bb.3:                                # %for.inc
                                        #   in Loop: Header=BB19_1 Depth=1
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB19_1
.LBB19_4:                               # %for.end
	movl	-156(%rbp), %edi
	movl	-136(%rbp), %esi
	movl	-152(%rbp), %edx
	subl	$1, %edx
	movl	$1, %ecx
	leaq	-208(%rbp), %r8
	callq	getNeighbour
	movl	-156(%rbp), %edi
	movl	-136(%rbp), %esi
	addl	$8, %esi
	movl	-152(%rbp), %edx
	subl	$1, %edx
	movl	$1, %ecx
	leaq	-184(%rbp), %r8
	callq	getNeighbour
	movl	-156(%rbp), %edi
	movl	-136(%rbp), %esi
	subl	$1, %esi
	movl	-152(%rbp), %edx
	subl	$1, %edx
	movl	$1, %ecx
	leaq	-272(%rbp), %r8
	callq	getNeighbour
	xorl	%eax, %eax
	cmpl	$0, -184(%rbp)
	je	.LBB19_8
# %bb.5:                                # %land.rhs
	xorl	%eax, %eax
	cmpl	$8, -136(%rbp)
	jne	.LBB19_7
# %bb.6:                                # %land.rhs9
	cmpl	$8, -152(%rbp)
	sete	%al
.LBB19_7:                               # %land.end
	xorb	$-1, %al
.LBB19_8:                               # %land.end11
	andb	$1, %al
	movzbl	%al, %eax
	movl	%eax, -184(%rbp)
	movq	input, %rax
	cmpl	$0, 216(%rax)
	je	.LBB19_26
# %bb.9:                                # %if.then
	movl	$0, -4(%rbp)
	movl	$1, -116(%rbp)
.LBB19_10:                              # %for.cond14
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$8, -4(%rbp)
	jge	.LBB19_16
# %bb.11:                               # %for.body16
                                        #   in Loop: Header=BB19_10 Depth=1
	movslq	-4(%rbp), %rax
	imulq	$24, %rax, %rax
	leaq	-464(%rbp), %rcx
	addq	%rax, %rcx
	cmpl	$0, (%rcx)
	je	.LBB19_13
# %bb.12:                               # %cond.true
                                        #   in Loop: Header=BB19_10 Depth=1
	movq	img, %rax
	movq	71784(%rax), %rax
	movslq	-4(%rbp), %rcx
	imulq	$24, %rcx, %rcx
	leaq	-464(%rbp), %rdx
	addq	%rcx, %rdx
	movslq	4(%rdx), %rcx
	movl	(%rax,%rcx,4), %eax
	jmp	.LBB19_14
.LBB19_13:                              # %cond.false
                                        #   in Loop: Header=BB19_10 Depth=1
	xorl	%eax, %eax
	jmp	.LBB19_14
.LBB19_14:                              # %cond.end
                                        #   in Loop: Header=BB19_10 Depth=1
	andl	-116(%rbp), %eax
	movl	%eax, -116(%rbp)
# %bb.15:                               # %for.inc26
                                        #   in Loop: Header=BB19_10 Depth=1
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB19_10
.LBB19_16:                              # %for.end28
	cmpl	$0, -208(%rbp)
	je	.LBB19_18
# %bb.17:                               # %cond.true31
	movq	img, %rax
	movq	71784(%rax), %rax
	movslq	-204(%rbp), %rcx
	movl	(%rax,%rcx,4), %eax
	jmp	.LBB19_19
.LBB19_18:                              # %cond.false36
	xorl	%eax, %eax
	jmp	.LBB19_19
.LBB19_19:                              # %cond.end37
	movl	%eax, -132(%rbp)
	cmpl	$0, -184(%rbp)
	je	.LBB19_21
# %bb.20:                               # %cond.true41
	movq	img, %rax
	movq	71784(%rax), %rax
	movslq	-180(%rbp), %rcx
	movl	(%rax,%rcx,4), %eax
	jmp	.LBB19_22
.LBB19_21:                              # %cond.false46
	xorl	%eax, %eax
	jmp	.LBB19_22
.LBB19_22:                              # %cond.end47
	movl	%eax, -220(%rbp)
	cmpl	$0, -272(%rbp)
	je	.LBB19_24
# %bb.23:                               # %cond.true51
	movq	img, %rax
	movq	71784(%rax), %rax
	movslq	-268(%rbp), %rcx
	movl	(%rax,%rcx,4), %eax
	jmp	.LBB19_25
.LBB19_24:                              # %cond.false56
	xorl	%eax, %eax
	jmp	.LBB19_25
.LBB19_25:                              # %cond.end57
	movl	%eax, -144(%rbp)
	jmp	.LBB19_27
.LBB19_26:                              # %if.else
	movl	-464(%rbp), %eax
	movl	%eax, -116(%rbp)
	movl	-208(%rbp), %eax
	movl	%eax, -132(%rbp)
	movl	-184(%rbp), %eax
	movl	%eax, -220(%rbp)
	movl	-272(%rbp), %eax
	movl	%eax, -144(%rbp)
.LBB19_27:                              # %if.end
	xorl	%eax, %eax
	movl	-116(%rbp), %ecx
	movq	-240(%rbp), %rdx
	movl	%ecx, (%rdx)
	movl	-132(%rbp), %ecx
	movq	-232(%rbp), %rdx
	movl	%ecx, (%rdx)
	cmpl	$0, -132(%rbp)
	je	.LBB19_30
# %bb.28:                               # %land.lhs.true
	xorl	%eax, %eax
	cmpl	$0, -116(%rbp)
	je	.LBB19_30
# %bb.29:                               # %land.rhs66
	cmpl	$0, -144(%rbp)
	setne	%al
.LBB19_30:                              # %land.end68
	andb	$1, %al
	movzbl	%al, %eax
	movq	-248(%rbp), %rcx
	movl	%eax, (%rcx)
	movl	-212(%rbp), %eax
	andl	$15, %eax
	movl	%eax, -4(%rbp)
	movl	-216(%rbp), %eax
	andl	$15, %eax
	movl	%eax, -148(%rbp)
	cmpl	$0, -132(%rbp)
	je	.LBB19_32
# %bb.31:                               # %if.then73
	movq	-128(%rbp), %rax
	movslq	-188(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movl	-192(%rbp), %ecx
	addl	$0, %ecx
	movslq	%ecx, %rcx
	movzwl	(%rax,%rcx,2), %eax
	movl	%eax, -108(%rbp)
	movq	-128(%rbp), %rax
	movslq	-188(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movl	-192(%rbp), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rcx
	movzwl	(%rax,%rcx,2), %eax
	movl	%eax, -104(%rbp)
	movq	-128(%rbp), %rax
	movslq	-188(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movl	-192(%rbp), %ecx
	addl	$2, %ecx
	movslq	%ecx, %rcx
	movzwl	(%rax,%rcx,2), %eax
	movl	%eax, -100(%rbp)
	movq	-128(%rbp), %rax
	movslq	-188(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movl	-192(%rbp), %ecx
	addl	$3, %ecx
	movslq	%ecx, %rcx
	movzwl	(%rax,%rcx,2), %eax
	movl	%eax, -96(%rbp)
	movq	-128(%rbp), %rax
	movslq	-188(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movl	-192(%rbp), %ecx
	addl	$4, %ecx
	movslq	%ecx, %rcx
	movzwl	(%rax,%rcx,2), %eax
	movl	%eax, -92(%rbp)
	movq	-128(%rbp), %rax
	movslq	-188(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movl	-192(%rbp), %ecx
	addl	$5, %ecx
	movslq	%ecx, %rcx
	movzwl	(%rax,%rcx,2), %eax
	movl	%eax, -88(%rbp)
	movq	-128(%rbp), %rax
	movslq	-188(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movl	-192(%rbp), %ecx
	addl	$6, %ecx
	movslq	%ecx, %rcx
	movzwl	(%rax,%rcx,2), %eax
	movl	%eax, -84(%rbp)
	movq	-128(%rbp), %rax
	movslq	-188(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movl	-192(%rbp), %ecx
	addl	$7, %ecx
	movslq	%ecx, %rcx
	movzwl	(%rax,%rcx,2), %eax
	movl	%eax, -80(%rbp)
	jmp	.LBB19_33
.LBB19_32:                              # %if.else143
	movq	img, %rax
	movl	72680(%rax), %eax
	movl	%eax, -80(%rbp)
	movl	%eax, -84(%rbp)
	movl	%eax, -88(%rbp)
	movl	%eax, -92(%rbp)
	movl	%eax, -96(%rbp)
	movl	%eax, -100(%rbp)
	movl	%eax, -104(%rbp)
	movl	%eax, -108(%rbp)
.LBB19_33:                              # %if.end152
	cmpl	$0, -220(%rbp)
	je	.LBB19_35
# %bb.34:                               # %if.then154
	movq	-128(%rbp), %rax
	movslq	-164(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movl	-168(%rbp), %ecx
	addl	$0, %ecx
	movslq	%ecx, %rcx
	movzwl	(%rax,%rcx,2), %eax
	movl	%eax, -76(%rbp)
	movq	-128(%rbp), %rax
	movslq	-164(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movl	-168(%rbp), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rcx
	movzwl	(%rax,%rcx,2), %eax
	movl	%eax, -72(%rbp)
	movq	-128(%rbp), %rax
	movslq	-164(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movl	-168(%rbp), %ecx
	addl	$2, %ecx
	movslq	%ecx, %rcx
	movzwl	(%rax,%rcx,2), %eax
	movl	%eax, -68(%rbp)
	movq	-128(%rbp), %rax
	movslq	-164(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movl	-168(%rbp), %ecx
	addl	$3, %ecx
	movslq	%ecx, %rcx
	movzwl	(%rax,%rcx,2), %eax
	movl	%eax, -64(%rbp)
	movq	-128(%rbp), %rax
	movslq	-164(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movl	-168(%rbp), %ecx
	addl	$4, %ecx
	movslq	%ecx, %rcx
	movzwl	(%rax,%rcx,2), %eax
	movl	%eax, -60(%rbp)
	movq	-128(%rbp), %rax
	movslq	-164(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movl	-168(%rbp), %ecx
	addl	$5, %ecx
	movslq	%ecx, %rcx
	movzwl	(%rax,%rcx,2), %eax
	movl	%eax, -56(%rbp)
	movq	-128(%rbp), %rax
	movslq	-164(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movl	-168(%rbp), %ecx
	addl	$6, %ecx
	movslq	%ecx, %rcx
	movzwl	(%rax,%rcx,2), %eax
	movl	%eax, -52(%rbp)
	movq	-128(%rbp), %rax
	movslq	-164(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movl	-168(%rbp), %ecx
	addl	$7, %ecx
	movslq	%ecx, %rcx
	movzwl	(%rax,%rcx,2), %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB19_36
.LBB19_35:                              # %if.else227
	movl	-80(%rbp), %eax
	movl	%eax, -48(%rbp)
	movl	%eax, -52(%rbp)
	movl	%eax, -56(%rbp)
	movl	%eax, -60(%rbp)
	movl	%eax, -64(%rbp)
	movl	%eax, -68(%rbp)
	movl	%eax, -72(%rbp)
	movl	%eax, -76(%rbp)
.LBB19_36:                              # %if.end237
	cmpl	$0, -116(%rbp)
	je	.LBB19_38
# %bb.37:                               # %if.then239
	movq	-128(%rbp), %rax
	movslq	-444(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movslq	-448(%rbp), %rcx
	movzwl	(%rax,%rcx,2), %eax
	movl	%eax, -44(%rbp)
	movq	-128(%rbp), %rax
	movslq	-420(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movslq	-424(%rbp), %rcx
	movzwl	(%rax,%rcx,2), %eax
	movl	%eax, -40(%rbp)
	movq	-128(%rbp), %rax
	movslq	-396(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movslq	-400(%rbp), %rcx
	movzwl	(%rax,%rcx,2), %eax
	movl	%eax, -36(%rbp)
	movq	-128(%rbp), %rax
	movslq	-372(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movslq	-376(%rbp), %rcx
	movzwl	(%rax,%rcx,2), %eax
	movl	%eax, -32(%rbp)
	movq	-128(%rbp), %rax
	movslq	-348(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movslq	-352(%rbp), %rcx
	movzwl	(%rax,%rcx,2), %eax
	movl	%eax, -28(%rbp)
	movq	-128(%rbp), %rax
	movslq	-324(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movslq	-328(%rbp), %rcx
	movzwl	(%rax,%rcx,2), %eax
	movl	%eax, -24(%rbp)
	movq	-128(%rbp), %rax
	movslq	-300(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movslq	-304(%rbp), %rcx
	movzwl	(%rax,%rcx,2), %eax
	movl	%eax, -20(%rbp)
	movq	-128(%rbp), %rax
	movslq	-276(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movslq	-280(%rbp), %rcx
	movzwl	(%rax,%rcx,2), %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB19_39
.LBB19_38:                              # %if.else320
	movq	img, %rax
	movl	72680(%rax), %eax
	movl	%eax, -16(%rbp)
	movl	%eax, -20(%rbp)
	movl	%eax, -24(%rbp)
	movl	%eax, -28(%rbp)
	movl	%eax, -32(%rbp)
	movl	%eax, -36(%rbp)
	movl	%eax, -40(%rbp)
	movl	%eax, -44(%rbp)
.LBB19_39:                              # %if.end330
	cmpl	$0, -144(%rbp)
	je	.LBB19_41
# %bb.40:                               # %if.then332
	movq	-128(%rbp), %rax
	movslq	-252(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movslq	-256(%rbp), %rcx
	movzwl	(%rax,%rcx,2), %eax
	movl	%eax, -112(%rbp)
	jmp	.LBB19_42
.LBB19_41:                              # %if.else341
	movq	img, %rax
	movl	72680(%rax), %eax
	movl	%eax, -112(%rbp)
.LBB19_42:                              # %if.end344
	movl	$0, -4(%rbp)
.LBB19_43:                              # %for.cond345
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$9, -4(%rbp)
	jge	.LBB19_46
# %bb.44:                               # %for.body348
                                        #   in Loop: Header=BB19_43 Depth=1
	movq	img, %rax
	addq	$7352, %rax             # imm = 0x1CB8
	movslq	-4(%rbp), %rcx
	shlq	$7, %rcx
	addq	%rcx, %rax
	movw	$-1, (%rax)
# %bb.45:                               # %for.inc353
                                        #   in Loop: Header=BB19_43 Depth=1
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB19_43
.LBB19_46:                              # %for.end355
	leaq	-112(%rbp), %rdi
	movl	-144(%rbp), %esi
	movl	-132(%rbp), %edx
	movl	-116(%rbp), %ecx
	callq	LowPassForIntra8x8Pred
	movl	$0, -140(%rbp)
	cmpl	$0, -132(%rbp)
	je	.LBB19_49
# %bb.47:                               # %land.lhs.true358
	cmpl	$0, -116(%rbp)
	je	.LBB19_49
# %bb.48:                               # %if.then360
	movl	-108(%rbp), %eax
	addl	-104(%rbp), %eax
	addl	-100(%rbp), %eax
	addl	-96(%rbp), %eax
	addl	-92(%rbp), %eax
	addl	-88(%rbp), %eax
	addl	-84(%rbp), %eax
	addl	-80(%rbp), %eax
	addl	-44(%rbp), %eax
	addl	-40(%rbp), %eax
	addl	-36(%rbp), %eax
	addl	-32(%rbp), %eax
	addl	-28(%rbp), %eax
	addl	-24(%rbp), %eax
	addl	-20(%rbp), %eax
	addl	-16(%rbp), %eax
	addl	$8, %eax
	sarl	$4, %eax
	movl	%eax, -140(%rbp)
	jmp	.LBB19_58
.LBB19_49:                              # %if.else393
	cmpl	$0, -132(%rbp)
	jne	.LBB19_52
# %bb.50:                               # %land.lhs.true395
	cmpl	$0, -116(%rbp)
	je	.LBB19_52
# %bb.51:                               # %if.then397
	movl	-44(%rbp), %eax
	addl	-40(%rbp), %eax
	addl	-36(%rbp), %eax
	addl	-32(%rbp), %eax
	addl	-28(%rbp), %eax
	addl	-24(%rbp), %eax
	addl	-20(%rbp), %eax
	addl	-16(%rbp), %eax
	addl	$4, %eax
	sarl	$3, %eax
	movl	%eax, -140(%rbp)
	jmp	.LBB19_57
.LBB19_52:                              # %if.else415
	cmpl	$0, -132(%rbp)
	je	.LBB19_55
# %bb.53:                               # %land.lhs.true417
	cmpl	$0, -116(%rbp)
	jne	.LBB19_55
# %bb.54:                               # %if.then419
	movl	-108(%rbp), %eax
	addl	-104(%rbp), %eax
	addl	-100(%rbp), %eax
	addl	-96(%rbp), %eax
	addl	-92(%rbp), %eax
	addl	-88(%rbp), %eax
	addl	-84(%rbp), %eax
	addl	-80(%rbp), %eax
	addl	$4, %eax
	sarl	$3, %eax
	movl	%eax, -140(%rbp)
	jmp	.LBB19_56
.LBB19_55:                              # %if.else437
	movq	img, %rax
	movl	72680(%rax), %eax
	movl	%eax, -140(%rbp)
.LBB19_56:                              # %if.end439
	jmp	.LBB19_57
.LBB19_57:                              # %if.end440
	jmp	.LBB19_58
.LBB19_58:                              # %if.end441
	movl	$0, -148(%rbp)
.LBB19_59:                              # %for.cond442
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB19_61 Depth 2
	cmpl	$8, -148(%rbp)
	jge	.LBB19_66
# %bb.60:                               # %for.body445
                                        #   in Loop: Header=BB19_59 Depth=1
	movl	$0, -4(%rbp)
.LBB19_61:                              # %for.cond446
                                        #   Parent Loop BB19_59 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$8, -4(%rbp)
	jge	.LBB19_64
# %bb.62:                               # %for.body449
                                        #   in Loop: Header=BB19_61 Depth=2
	movl	-140(%rbp), %eax
	movq	img, %rcx
	addq	$7352, %rcx             # imm = 0x1CB8
	addq	$256, %rcx              # imm = 0x100
	movslq	-4(%rbp), %rdx
	shlq	$4, %rdx
	addq	%rdx, %rcx
	movslq	-148(%rbp), %rdx
	movw	%ax, (%rcx,%rdx,2)
# %bb.63:                               # %for.inc457
                                        #   in Loop: Header=BB19_61 Depth=2
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB19_61
.LBB19_64:                              # %for.end459
                                        #   in Loop: Header=BB19_59 Depth=1
	jmp	.LBB19_65
.LBB19_65:                              # %for.inc460
                                        #   in Loop: Header=BB19_59 Depth=1
	movl	-148(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -148(%rbp)
	jmp	.LBB19_59
.LBB19_66:                              # %for.end462
	movl	$0, -4(%rbp)
.LBB19_67:                              # %for.cond463
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$8, -4(%rbp)
	jge	.LBB19_70
# %bb.68:                               # %for.body466
                                        #   in Loop: Header=BB19_67 Depth=1
	movslq	-4(%rbp), %rax
	movl	-108(%rbp,%rax,4), %eax
	movq	img, %rcx
	movslq	-4(%rbp), %rdx
	movw	%ax, 7464(%rcx,%rdx,2)
	movq	img, %rcx
	movslq	-4(%rbp), %rdx
	movw	%ax, 7448(%rcx,%rdx,2)
	movq	img, %rcx
	movslq	-4(%rbp), %rdx
	movw	%ax, 7432(%rcx,%rdx,2)
	movq	img, %rcx
	movslq	-4(%rbp), %rdx
	movw	%ax, 7416(%rcx,%rdx,2)
	movq	img, %rcx
	movslq	-4(%rbp), %rdx
	movw	%ax, 7400(%rcx,%rdx,2)
	movq	img, %rcx
	movslq	-4(%rbp), %rdx
	movw	%ax, 7384(%rcx,%rdx,2)
	movq	img, %rcx
	movslq	-4(%rbp), %rdx
	movw	%ax, 7368(%rcx,%rdx,2)
	movq	img, %rcx
	movslq	-4(%rbp), %rdx
	movw	%ax, 7352(%rcx,%rdx,2)
	movslq	-4(%rbp), %rax
	movl	-44(%rbp,%rax,4), %eax
	movq	img, %rcx
	addq	$7352, %rcx             # imm = 0x1CB8
	addq	$128, %rcx
	movslq	-4(%rbp), %rdx
	shlq	$4, %rdx
	addq	%rdx, %rcx
	movw	%ax, 14(%rcx)
	movq	img, %rcx
	addq	$7352, %rcx             # imm = 0x1CB8
	addq	$128, %rcx
	movslq	-4(%rbp), %rdx
	shlq	$4, %rdx
	addq	%rdx, %rcx
	movw	%ax, 12(%rcx)
	movq	img, %rcx
	addq	$7352, %rcx             # imm = 0x1CB8
	addq	$128, %rcx
	movslq	-4(%rbp), %rdx
	shlq	$4, %rdx
	addq	%rdx, %rcx
	movw	%ax, 10(%rcx)
	movq	img, %rcx
	addq	$7352, %rcx             # imm = 0x1CB8
	addq	$128, %rcx
	movslq	-4(%rbp), %rdx
	shlq	$4, %rdx
	addq	%rdx, %rcx
	movw	%ax, 8(%rcx)
	movq	img, %rcx
	addq	$7352, %rcx             # imm = 0x1CB8
	addq	$128, %rcx
	movslq	-4(%rbp), %rdx
	shlq	$4, %rdx
	addq	%rdx, %rcx
	movw	%ax, 6(%rcx)
	movq	img, %rcx
	addq	$7352, %rcx             # imm = 0x1CB8
	addq	$128, %rcx
	movslq	-4(%rbp), %rdx
	shlq	$4, %rdx
	addq	%rdx, %rcx
	movw	%ax, 4(%rcx)
	movq	img, %rcx
	addq	$7352, %rcx             # imm = 0x1CB8
	addq	$128, %rcx
	movslq	-4(%rbp), %rdx
	shlq	$4, %rdx
	addq	%rdx, %rcx
	movw	%ax, 2(%rcx)
	movq	img, %rcx
	addq	$7352, %rcx             # imm = 0x1CB8
	addq	$128, %rcx
	movslq	-4(%rbp), %rdx
	shlq	$4, %rdx
	addq	%rdx, %rcx
	movw	%ax, (%rcx)
# %bb.69:                               # %for.inc555
                                        #   in Loop: Header=BB19_67 Depth=1
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB19_67
.LBB19_70:                              # %for.end557
	cmpl	$0, -132(%rbp)
	jne	.LBB19_72
# %bb.71:                               # %if.then559
	movq	img, %rax
	movw	$-1, 7352(%rax)
.LBB19_72:                              # %if.end564
	cmpl	$0, -116(%rbp)
	jne	.LBB19_74
# %bb.73:                               # %if.then566
	movq	img, %rax
	movw	$-1, 7480(%rax)
.LBB19_74:                              # %if.end571
	cmpl	$0, -132(%rbp)
	je	.LBB19_76
# %bb.75:                               # %if.then573
	movl	-108(%rbp), %eax
	addl	-100(%rbp), %eax
	movl	-104(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 7736(%rcx)
	movl	-104(%rbp), %eax
	addl	-96(%rbp), %eax
	movl	-100(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 7752(%rcx)
	movq	img, %rcx
	movw	%ax, 7738(%rcx)
	movl	-100(%rbp), %eax
	addl	-92(%rbp), %eax
	movl	-96(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 7768(%rcx)
	movq	img, %rcx
	movw	%ax, 7754(%rcx)
	movq	img, %rcx
	movw	%ax, 7740(%rcx)
	movl	-96(%rbp), %eax
	addl	-88(%rbp), %eax
	movl	-92(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 7784(%rcx)
	movq	img, %rcx
	movw	%ax, 7770(%rcx)
	movq	img, %rcx
	movw	%ax, 7756(%rcx)
	movq	img, %rcx
	movw	%ax, 7742(%rcx)
	movl	-92(%rbp), %eax
	addl	-84(%rbp), %eax
	movl	-88(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 7800(%rcx)
	movq	img, %rcx
	movw	%ax, 7786(%rcx)
	movq	img, %rcx
	movw	%ax, 7772(%rcx)
	movq	img, %rcx
	movw	%ax, 7758(%rcx)
	movq	img, %rcx
	movw	%ax, 7744(%rcx)
	movl	-88(%rbp), %eax
	addl	-80(%rbp), %eax
	movl	-84(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 7816(%rcx)
	movq	img, %rcx
	movw	%ax, 7802(%rcx)
	movq	img, %rcx
	movw	%ax, 7788(%rcx)
	movq	img, %rcx
	movw	%ax, 7774(%rcx)
	movq	img, %rcx
	movw	%ax, 7760(%rcx)
	movq	img, %rcx
	movw	%ax, 7746(%rcx)
	movl	-84(%rbp), %eax
	addl	-76(%rbp), %eax
	movl	-80(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 7832(%rcx)
	movq	img, %rcx
	movw	%ax, 7818(%rcx)
	movq	img, %rcx
	movw	%ax, 7804(%rcx)
	movq	img, %rcx
	movw	%ax, 7790(%rcx)
	movq	img, %rcx
	movw	%ax, 7776(%rcx)
	movq	img, %rcx
	movw	%ax, 7762(%rcx)
	movq	img, %rcx
	movw	%ax, 7748(%rcx)
	movl	-80(%rbp), %eax
	addl	-72(%rbp), %eax
	movl	-76(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 7848(%rcx)
	movq	img, %rcx
	movw	%ax, 7834(%rcx)
	movq	img, %rcx
	movw	%ax, 7820(%rcx)
	movq	img, %rcx
	movw	%ax, 7806(%rcx)
	movq	img, %rcx
	movw	%ax, 7792(%rcx)
	movq	img, %rcx
	movw	%ax, 7778(%rcx)
	movq	img, %rcx
	movw	%ax, 7764(%rcx)
	movq	img, %rcx
	movw	%ax, 7750(%rcx)
	movl	-76(%rbp), %eax
	addl	-68(%rbp), %eax
	movl	-72(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 7850(%rcx)
	movq	img, %rcx
	movw	%ax, 7836(%rcx)
	movq	img, %rcx
	movw	%ax, 7822(%rcx)
	movq	img, %rcx
	movw	%ax, 7808(%rcx)
	movq	img, %rcx
	movw	%ax, 7794(%rcx)
	movq	img, %rcx
	movw	%ax, 7780(%rcx)
	movq	img, %rcx
	movw	%ax, 7766(%rcx)
	movl	-72(%rbp), %eax
	addl	-64(%rbp), %eax
	movl	-68(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 7852(%rcx)
	movq	img, %rcx
	movw	%ax, 7838(%rcx)
	movq	img, %rcx
	movw	%ax, 7824(%rcx)
	movq	img, %rcx
	movw	%ax, 7810(%rcx)
	movq	img, %rcx
	movw	%ax, 7796(%rcx)
	movq	img, %rcx
	movw	%ax, 7782(%rcx)
	movl	-68(%rbp), %eax
	addl	-60(%rbp), %eax
	movl	-64(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 7854(%rcx)
	movq	img, %rcx
	movw	%ax, 7840(%rcx)
	movq	img, %rcx
	movw	%ax, 7826(%rcx)
	movq	img, %rcx
	movw	%ax, 7812(%rcx)
	movq	img, %rcx
	movw	%ax, 7798(%rcx)
	movl	-64(%rbp), %eax
	addl	-56(%rbp), %eax
	movl	-60(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 7856(%rcx)
	movq	img, %rcx
	movw	%ax, 7842(%rcx)
	movq	img, %rcx
	movw	%ax, 7828(%rcx)
	movq	img, %rcx
	movw	%ax, 7814(%rcx)
	movl	-60(%rbp), %eax
	addl	-52(%rbp), %eax
	movl	-56(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 7858(%rcx)
	movq	img, %rcx
	movw	%ax, 7844(%rcx)
	movq	img, %rcx
	movw	%ax, 7830(%rcx)
	movl	-56(%rbp), %eax
	addl	-48(%rbp), %eax
	movl	-52(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 7860(%rcx)
	movq	img, %rcx
	movw	%ax, 7846(%rcx)
	movl	-52(%rbp), %eax
	imull	$3, -48(%rbp), %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 7862(%rcx)
	movl	-108(%rbp), %eax
	addl	-104(%rbp), %eax
	addl	$1, %eax
	sarl	$1, %eax
	movq	img, %rcx
	movw	%ax, 8248(%rcx)
	movl	-104(%rbp), %eax
	addl	-100(%rbp), %eax
	addl	$1, %eax
	sarl	$1, %eax
	movq	img, %rcx
	movw	%ax, 8280(%rcx)
	movq	img, %rcx
	movw	%ax, 8250(%rcx)
	movl	-100(%rbp), %eax
	addl	-96(%rbp), %eax
	addl	$1, %eax
	sarl	$1, %eax
	movq	img, %rcx
	movw	%ax, 8312(%rcx)
	movq	img, %rcx
	movw	%ax, 8282(%rcx)
	movq	img, %rcx
	movw	%ax, 8252(%rcx)
	movl	-96(%rbp), %eax
	addl	-92(%rbp), %eax
	addl	$1, %eax
	sarl	$1, %eax
	movq	img, %rcx
	movw	%ax, 8344(%rcx)
	movq	img, %rcx
	movw	%ax, 8314(%rcx)
	movq	img, %rcx
	movw	%ax, 8284(%rcx)
	movq	img, %rcx
	movw	%ax, 8254(%rcx)
	movl	-92(%rbp), %eax
	addl	-88(%rbp), %eax
	addl	$1, %eax
	sarl	$1, %eax
	movq	img, %rcx
	movw	%ax, 8346(%rcx)
	movq	img, %rcx
	movw	%ax, 8316(%rcx)
	movq	img, %rcx
	movw	%ax, 8286(%rcx)
	movq	img, %rcx
	movw	%ax, 8256(%rcx)
	movl	-88(%rbp), %eax
	addl	-84(%rbp), %eax
	addl	$1, %eax
	sarl	$1, %eax
	movq	img, %rcx
	movw	%ax, 8348(%rcx)
	movq	img, %rcx
	movw	%ax, 8318(%rcx)
	movq	img, %rcx
	movw	%ax, 8288(%rcx)
	movq	img, %rcx
	movw	%ax, 8258(%rcx)
	movl	-84(%rbp), %eax
	addl	-80(%rbp), %eax
	addl	$1, %eax
	sarl	$1, %eax
	movq	img, %rcx
	movw	%ax, 8350(%rcx)
	movq	img, %rcx
	movw	%ax, 8320(%rcx)
	movq	img, %rcx
	movw	%ax, 8290(%rcx)
	movq	img, %rcx
	movw	%ax, 8260(%rcx)
	movl	-80(%rbp), %eax
	addl	-76(%rbp), %eax
	addl	$1, %eax
	sarl	$1, %eax
	movq	img, %rcx
	movw	%ax, 8352(%rcx)
	movq	img, %rcx
	movw	%ax, 8322(%rcx)
	movq	img, %rcx
	movw	%ax, 8292(%rcx)
	movq	img, %rcx
	movw	%ax, 8262(%rcx)
	movl	-76(%rbp), %eax
	addl	-72(%rbp), %eax
	addl	$1, %eax
	sarl	$1, %eax
	movq	img, %rcx
	movw	%ax, 8354(%rcx)
	movq	img, %rcx
	movw	%ax, 8324(%rcx)
	movq	img, %rcx
	movw	%ax, 8294(%rcx)
	movl	-72(%rbp), %eax
	addl	-68(%rbp), %eax
	addl	$1, %eax
	sarl	$1, %eax
	movq	img, %rcx
	movw	%ax, 8356(%rcx)
	movq	img, %rcx
	movw	%ax, 8326(%rcx)
	movl	-68(%rbp), %eax
	addl	-64(%rbp), %eax
	addl	$1, %eax
	sarl	$1, %eax
	movq	img, %rcx
	movw	%ax, 8358(%rcx)
	movl	-108(%rbp), %eax
	addl	-100(%rbp), %eax
	movl	-104(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 8264(%rcx)
	movl	-104(%rbp), %eax
	addl	-96(%rbp), %eax
	movl	-100(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 8296(%rcx)
	movq	img, %rcx
	movw	%ax, 8266(%rcx)
	movl	-100(%rbp), %eax
	addl	-92(%rbp), %eax
	movl	-96(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 8328(%rcx)
	movq	img, %rcx
	movw	%ax, 8298(%rcx)
	movq	img, %rcx
	movw	%ax, 8268(%rcx)
	movl	-96(%rbp), %eax
	addl	-88(%rbp), %eax
	movl	-92(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 8360(%rcx)
	movq	img, %rcx
	movw	%ax, 8330(%rcx)
	movq	img, %rcx
	movw	%ax, 8300(%rcx)
	movq	img, %rcx
	movw	%ax, 8270(%rcx)
	movl	-92(%rbp), %eax
	addl	-84(%rbp), %eax
	movl	-88(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 8362(%rcx)
	movq	img, %rcx
	movw	%ax, 8332(%rcx)
	movq	img, %rcx
	movw	%ax, 8302(%rcx)
	movq	img, %rcx
	movw	%ax, 8272(%rcx)
	movl	-88(%rbp), %eax
	addl	-80(%rbp), %eax
	movl	-84(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 8364(%rcx)
	movq	img, %rcx
	movw	%ax, 8334(%rcx)
	movq	img, %rcx
	movw	%ax, 8304(%rcx)
	movq	img, %rcx
	movw	%ax, 8274(%rcx)
	movl	-84(%rbp), %eax
	addl	-76(%rbp), %eax
	movl	-80(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 8366(%rcx)
	movq	img, %rcx
	movw	%ax, 8336(%rcx)
	movq	img, %rcx
	movw	%ax, 8306(%rcx)
	movq	img, %rcx
	movw	%ax, 8276(%rcx)
	movl	-80(%rbp), %eax
	addl	-72(%rbp), %eax
	movl	-76(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 8368(%rcx)
	movq	img, %rcx
	movw	%ax, 8338(%rcx)
	movq	img, %rcx
	movw	%ax, 8308(%rcx)
	movq	img, %rcx
	movw	%ax, 8278(%rcx)
	movl	-76(%rbp), %eax
	addl	-68(%rbp), %eax
	movl	-72(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 8370(%rcx)
	movq	img, %rcx
	movw	%ax, 8340(%rcx)
	movq	img, %rcx
	movw	%ax, 8310(%rcx)
	movl	-72(%rbp), %eax
	addl	-64(%rbp), %eax
	movl	-68(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 8372(%rcx)
	movq	img, %rcx
	movw	%ax, 8342(%rcx)
	movl	-68(%rbp), %eax
	addl	-60(%rbp), %eax
	movl	-64(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 8374(%rcx)
.LBB19_76:                              # %if.end1383
	cmpl	$0, -132(%rbp)
	je	.LBB19_80
# %bb.77:                               # %land.lhs.true1385
	cmpl	$0, -116(%rbp)
	je	.LBB19_80
# %bb.78:                               # %land.lhs.true1387
	cmpl	$0, -144(%rbp)
	je	.LBB19_80
# %bb.79:                               # %if.then1389
	movl	-16(%rbp), %eax
	addl	-24(%rbp), %eax
	movl	-20(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 7976(%rcx)
	movl	-20(%rbp), %eax
	addl	-28(%rbp), %eax
	movl	-24(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 7978(%rcx)
	movq	img, %rcx
	movw	%ax, 7960(%rcx)
	movl	-24(%rbp), %eax
	addl	-32(%rbp), %eax
	movl	-28(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 7980(%rcx)
	movq	img, %rcx
	movw	%ax, 7962(%rcx)
	movq	img, %rcx
	movw	%ax, 7944(%rcx)
	movl	-28(%rbp), %eax
	addl	-36(%rbp), %eax
	movl	-32(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 7982(%rcx)
	movq	img, %rcx
	movw	%ax, 7964(%rcx)
	movq	img, %rcx
	movw	%ax, 7946(%rcx)
	movq	img, %rcx
	movw	%ax, 7928(%rcx)
	movl	-32(%rbp), %eax
	addl	-40(%rbp), %eax
	movl	-36(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 7984(%rcx)
	movq	img, %rcx
	movw	%ax, 7966(%rcx)
	movq	img, %rcx
	movw	%ax, 7948(%rcx)
	movq	img, %rcx
	movw	%ax, 7930(%rcx)
	movq	img, %rcx
	movw	%ax, 7912(%rcx)
	movl	-36(%rbp), %eax
	addl	-44(%rbp), %eax
	movl	-40(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 7986(%rcx)
	movq	img, %rcx
	movw	%ax, 7968(%rcx)
	movq	img, %rcx
	movw	%ax, 7950(%rcx)
	movq	img, %rcx
	movw	%ax, 7932(%rcx)
	movq	img, %rcx
	movw	%ax, 7914(%rcx)
	movq	img, %rcx
	movw	%ax, 7896(%rcx)
	movl	-40(%rbp), %eax
	addl	-112(%rbp), %eax
	movl	-44(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 7988(%rcx)
	movq	img, %rcx
	movw	%ax, 7970(%rcx)
	movq	img, %rcx
	movw	%ax, 7952(%rcx)
	movq	img, %rcx
	movw	%ax, 7934(%rcx)
	movq	img, %rcx
	movw	%ax, 7916(%rcx)
	movq	img, %rcx
	movw	%ax, 7898(%rcx)
	movq	img, %rcx
	movw	%ax, 7880(%rcx)
	movl	-44(%rbp), %eax
	addl	-108(%rbp), %eax
	movl	-112(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 7990(%rcx)
	movq	img, %rcx
	movw	%ax, 7972(%rcx)
	movq	img, %rcx
	movw	%ax, 7954(%rcx)
	movq	img, %rcx
	movw	%ax, 7936(%rcx)
	movq	img, %rcx
	movw	%ax, 7918(%rcx)
	movq	img, %rcx
	movw	%ax, 7900(%rcx)
	movq	img, %rcx
	movw	%ax, 7882(%rcx)
	movq	img, %rcx
	movw	%ax, 7864(%rcx)
	movl	-112(%rbp), %eax
	addl	-104(%rbp), %eax
	movl	-108(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 7974(%rcx)
	movq	img, %rcx
	movw	%ax, 7956(%rcx)
	movq	img, %rcx
	movw	%ax, 7938(%rcx)
	movq	img, %rcx
	movw	%ax, 7920(%rcx)
	movq	img, %rcx
	movw	%ax, 7902(%rcx)
	movq	img, %rcx
	movw	%ax, 7884(%rcx)
	movq	img, %rcx
	movw	%ax, 7866(%rcx)
	movl	-108(%rbp), %eax
	addl	-100(%rbp), %eax
	movl	-104(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 7958(%rcx)
	movq	img, %rcx
	movw	%ax, 7940(%rcx)
	movq	img, %rcx
	movw	%ax, 7922(%rcx)
	movq	img, %rcx
	movw	%ax, 7904(%rcx)
	movq	img, %rcx
	movw	%ax, 7886(%rcx)
	movq	img, %rcx
	movw	%ax, 7868(%rcx)
	movl	-104(%rbp), %eax
	addl	-96(%rbp), %eax
	movl	-100(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 7942(%rcx)
	movq	img, %rcx
	movw	%ax, 7924(%rcx)
	movq	img, %rcx
	movw	%ax, 7906(%rcx)
	movq	img, %rcx
	movw	%ax, 7888(%rcx)
	movq	img, %rcx
	movw	%ax, 7870(%rcx)
	movl	-100(%rbp), %eax
	addl	-92(%rbp), %eax
	movl	-96(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 7926(%rcx)
	movq	img, %rcx
	movw	%ax, 7908(%rcx)
	movq	img, %rcx
	movw	%ax, 7890(%rcx)
	movq	img, %rcx
	movw	%ax, 7872(%rcx)
	movl	-96(%rbp), %eax
	addl	-88(%rbp), %eax
	movl	-92(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 7910(%rcx)
	movq	img, %rcx
	movw	%ax, 7892(%rcx)
	movq	img, %rcx
	movw	%ax, 7874(%rcx)
	movl	-92(%rbp), %eax
	addl	-84(%rbp), %eax
	movl	-88(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 7894(%rcx)
	movq	img, %rcx
	movw	%ax, 7876(%rcx)
	movl	-88(%rbp), %eax
	addl	-80(%rbp), %eax
	movl	-84(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 7878(%rcx)
	movl	-112(%rbp), %eax
	addl	-108(%rbp), %eax
	addl	$1, %eax
	sarl	$1, %eax
	movq	img, %rcx
	movw	%ax, 8094(%rcx)
	movq	img, %rcx
	movw	%ax, 8060(%rcx)
	movq	img, %rcx
	movw	%ax, 8026(%rcx)
	movq	img, %rcx
	movw	%ax, 7992(%rcx)
	movl	-108(%rbp), %eax
	addl	-104(%rbp), %eax
	addl	$1, %eax
	sarl	$1, %eax
	movq	img, %rcx
	movw	%ax, 8096(%rcx)
	movq	img, %rcx
	movw	%ax, 8062(%rcx)
	movq	img, %rcx
	movw	%ax, 8028(%rcx)
	movq	img, %rcx
	movw	%ax, 7994(%rcx)
	movl	-104(%rbp), %eax
	addl	-100(%rbp), %eax
	addl	$1, %eax
	sarl	$1, %eax
	movq	img, %rcx
	movw	%ax, 8098(%rcx)
	movq	img, %rcx
	movw	%ax, 8064(%rcx)
	movq	img, %rcx
	movw	%ax, 8030(%rcx)
	movq	img, %rcx
	movw	%ax, 7996(%rcx)
	movl	-100(%rbp), %eax
	addl	-96(%rbp), %eax
	addl	$1, %eax
	sarl	$1, %eax
	movq	img, %rcx
	movw	%ax, 8100(%rcx)
	movq	img, %rcx
	movw	%ax, 8066(%rcx)
	movq	img, %rcx
	movw	%ax, 8032(%rcx)
	movq	img, %rcx
	movw	%ax, 7998(%rcx)
	movl	-96(%rbp), %eax
	addl	-92(%rbp), %eax
	addl	$1, %eax
	sarl	$1, %eax
	movq	img, %rcx
	movw	%ax, 8102(%rcx)
	movq	img, %rcx
	movw	%ax, 8068(%rcx)
	movq	img, %rcx
	movw	%ax, 8034(%rcx)
	movq	img, %rcx
	movw	%ax, 8000(%rcx)
	movl	-92(%rbp), %eax
	addl	-88(%rbp), %eax
	addl	$1, %eax
	sarl	$1, %eax
	movq	img, %rcx
	movw	%ax, 8070(%rcx)
	movq	img, %rcx
	movw	%ax, 8036(%rcx)
	movq	img, %rcx
	movw	%ax, 8002(%rcx)
	movl	-88(%rbp), %eax
	addl	-84(%rbp), %eax
	addl	$1, %eax
	sarl	$1, %eax
	movq	img, %rcx
	movw	%ax, 8038(%rcx)
	movq	img, %rcx
	movw	%ax, 8004(%rcx)
	movl	-84(%rbp), %eax
	addl	-80(%rbp), %eax
	addl	$1, %eax
	sarl	$1, %eax
	movq	img, %rcx
	movw	%ax, 8006(%rcx)
	movl	-44(%rbp), %eax
	addl	-108(%rbp), %eax
	movl	-112(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 8110(%rcx)
	movq	img, %rcx
	movw	%ax, 8076(%rcx)
	movq	img, %rcx
	movw	%ax, 8042(%rcx)
	movq	img, %rcx
	movw	%ax, 8008(%rcx)
	movl	-112(%rbp), %eax
	addl	-104(%rbp), %eax
	movl	-108(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 8112(%rcx)
	movq	img, %rcx
	movw	%ax, 8078(%rcx)
	movq	img, %rcx
	movw	%ax, 8044(%rcx)
	movq	img, %rcx
	movw	%ax, 8010(%rcx)
	movl	-108(%rbp), %eax
	addl	-100(%rbp), %eax
	movl	-104(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 8114(%rcx)
	movq	img, %rcx
	movw	%ax, 8080(%rcx)
	movq	img, %rcx
	movw	%ax, 8046(%rcx)
	movq	img, %rcx
	movw	%ax, 8012(%rcx)
	movl	-104(%rbp), %eax
	addl	-96(%rbp), %eax
	movl	-100(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 8116(%rcx)
	movq	img, %rcx
	movw	%ax, 8082(%rcx)
	movq	img, %rcx
	movw	%ax, 8048(%rcx)
	movq	img, %rcx
	movw	%ax, 8014(%rcx)
	movl	-100(%rbp), %eax
	addl	-92(%rbp), %eax
	movl	-96(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 8118(%rcx)
	movq	img, %rcx
	movw	%ax, 8084(%rcx)
	movq	img, %rcx
	movw	%ax, 8050(%rcx)
	movq	img, %rcx
	movw	%ax, 8016(%rcx)
	movl	-96(%rbp), %eax
	addl	-88(%rbp), %eax
	movl	-92(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 8086(%rcx)
	movq	img, %rcx
	movw	%ax, 8052(%rcx)
	movq	img, %rcx
	movw	%ax, 8018(%rcx)
	movl	-92(%rbp), %eax
	addl	-84(%rbp), %eax
	movl	-88(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 8054(%rcx)
	movq	img, %rcx
	movw	%ax, 8020(%rcx)
	movl	-88(%rbp), %eax
	addl	-80(%rbp), %eax
	movl	-84(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 8022(%rcx)
	movl	-40(%rbp), %eax
	addl	-112(%rbp), %eax
	movl	-44(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 8092(%rcx)
	movq	img, %rcx
	movw	%ax, 8058(%rcx)
	movq	img, %rcx
	movw	%ax, 8024(%rcx)
	movl	-36(%rbp), %eax
	addl	-44(%rbp), %eax
	movl	-40(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 8108(%rcx)
	movq	img, %rcx
	movw	%ax, 8074(%rcx)
	movq	img, %rcx
	movw	%ax, 8040(%rcx)
	movl	-32(%rbp), %eax
	addl	-40(%rbp), %eax
	movl	-36(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 8090(%rcx)
	movq	img, %rcx
	movw	%ax, 8056(%rcx)
	movl	-28(%rbp), %eax
	addl	-36(%rbp), %eax
	movl	-32(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 8106(%rcx)
	movq	img, %rcx
	movw	%ax, 8072(%rcx)
	movl	-24(%rbp), %eax
	addl	-32(%rbp), %eax
	movl	-28(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 8088(%rcx)
	movl	-20(%rbp), %eax
	addl	-28(%rbp), %eax
	movl	-24(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 8104(%rcx)
	movl	-44(%rbp), %eax
	addl	-112(%rbp), %eax
	addl	$1, %eax
	sarl	$1, %eax
	movq	img, %rcx
	movw	%ax, 8180(%rcx)
	movq	img, %rcx
	movw	%ax, 8160(%rcx)
	movq	img, %rcx
	movw	%ax, 8140(%rcx)
	movq	img, %rcx
	movw	%ax, 8120(%rcx)
	movl	-40(%rbp), %eax
	addl	-44(%rbp), %eax
	addl	$1, %eax
	sarl	$1, %eax
	movq	img, %rcx
	movw	%ax, 8196(%rcx)
	movq	img, %rcx
	movw	%ax, 8176(%rcx)
	movq	img, %rcx
	movw	%ax, 8156(%rcx)
	movq	img, %rcx
	movw	%ax, 8136(%rcx)
	movl	-36(%rbp), %eax
	addl	-40(%rbp), %eax
	addl	$1, %eax
	sarl	$1, %eax
	movq	img, %rcx
	movw	%ax, 8212(%rcx)
	movq	img, %rcx
	movw	%ax, 8192(%rcx)
	movq	img, %rcx
	movw	%ax, 8172(%rcx)
	movq	img, %rcx
	movw	%ax, 8152(%rcx)
	movl	-32(%rbp), %eax
	addl	-36(%rbp), %eax
	addl	$1, %eax
	sarl	$1, %eax
	movq	img, %rcx
	movw	%ax, 8228(%rcx)
	movq	img, %rcx
	movw	%ax, 8208(%rcx)
	movq	img, %rcx
	movw	%ax, 8188(%rcx)
	movq	img, %rcx
	movw	%ax, 8168(%rcx)
	movl	-28(%rbp), %eax
	addl	-32(%rbp), %eax
	addl	$1, %eax
	sarl	$1, %eax
	movq	img, %rcx
	movw	%ax, 8244(%rcx)
	movq	img, %rcx
	movw	%ax, 8224(%rcx)
	movq	img, %rcx
	movw	%ax, 8204(%rcx)
	movq	img, %rcx
	movw	%ax, 8184(%rcx)
	movl	-24(%rbp), %eax
	addl	-28(%rbp), %eax
	addl	$1, %eax
	sarl	$1, %eax
	movq	img, %rcx
	movw	%ax, 8240(%rcx)
	movq	img, %rcx
	movw	%ax, 8220(%rcx)
	movq	img, %rcx
	movw	%ax, 8200(%rcx)
	movl	-20(%rbp), %eax
	addl	-24(%rbp), %eax
	addl	$1, %eax
	sarl	$1, %eax
	movq	img, %rcx
	movw	%ax, 8236(%rcx)
	movq	img, %rcx
	movw	%ax, 8216(%rcx)
	movl	-16(%rbp), %eax
	addl	-20(%rbp), %eax
	addl	$1, %eax
	sarl	$1, %eax
	movq	img, %rcx
	movw	%ax, 8232(%rcx)
	movl	-44(%rbp), %eax
	addl	-108(%rbp), %eax
	movl	-112(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 8182(%rcx)
	movq	img, %rcx
	movw	%ax, 8162(%rcx)
	movq	img, %rcx
	movw	%ax, 8142(%rcx)
	movq	img, %rcx
	movw	%ax, 8122(%rcx)
	movl	-112(%rbp), %eax
	addl	-40(%rbp), %eax
	movl	-44(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 8198(%rcx)
	movq	img, %rcx
	movw	%ax, 8178(%rcx)
	movq	img, %rcx
	movw	%ax, 8158(%rcx)
	movq	img, %rcx
	movw	%ax, 8138(%rcx)
	movl	-44(%rbp), %eax
	addl	-36(%rbp), %eax
	movl	-40(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 8214(%rcx)
	movq	img, %rcx
	movw	%ax, 8194(%rcx)
	movq	img, %rcx
	movw	%ax, 8174(%rcx)
	movq	img, %rcx
	movw	%ax, 8154(%rcx)
	movl	-40(%rbp), %eax
	addl	-32(%rbp), %eax
	movl	-36(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 8230(%rcx)
	movq	img, %rcx
	movw	%ax, 8210(%rcx)
	movq	img, %rcx
	movw	%ax, 8190(%rcx)
	movq	img, %rcx
	movw	%ax, 8170(%rcx)
	movl	-36(%rbp), %eax
	addl	-28(%rbp), %eax
	movl	-32(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 8246(%rcx)
	movq	img, %rcx
	movw	%ax, 8226(%rcx)
	movq	img, %rcx
	movw	%ax, 8206(%rcx)
	movq	img, %rcx
	movw	%ax, 8186(%rcx)
	movl	-32(%rbp), %eax
	addl	-24(%rbp), %eax
	movl	-28(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 8242(%rcx)
	movq	img, %rcx
	movw	%ax, 8222(%rcx)
	movq	img, %rcx
	movw	%ax, 8202(%rcx)
	movl	-28(%rbp), %eax
	addl	-20(%rbp), %eax
	movl	-24(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 8238(%rcx)
	movq	img, %rcx
	movw	%ax, 8218(%rcx)
	movl	-24(%rbp), %eax
	addl	-16(%rbp), %eax
	movl	-20(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 8234(%rcx)
	movl	-112(%rbp), %eax
	addl	-104(%rbp), %eax
	movl	-108(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 8164(%rcx)
	movq	img, %rcx
	movw	%ax, 8144(%rcx)
	movq	img, %rcx
	movw	%ax, 8124(%rcx)
	movl	-108(%rbp), %eax
	addl	-100(%rbp), %eax
	movl	-104(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 8166(%rcx)
	movq	img, %rcx
	movw	%ax, 8146(%rcx)
	movq	img, %rcx
	movw	%ax, 8126(%rcx)
	movl	-104(%rbp), %eax
	addl	-96(%rbp), %eax
	movl	-100(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 8148(%rcx)
	movq	img, %rcx
	movw	%ax, 8128(%rcx)
	movl	-100(%rbp), %eax
	addl	-92(%rbp), %eax
	movl	-96(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 8150(%rcx)
	movq	img, %rcx
	movw	%ax, 8130(%rcx)
	movl	-96(%rbp), %eax
	addl	-88(%rbp), %eax
	movl	-92(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 8132(%rcx)
	movl	-92(%rbp), %eax
	addl	-84(%rbp), %eax
	movl	-88(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 8134(%rcx)
.LBB19_80:                              # %if.end2641
	cmpl	$0, -116(%rbp)
	je	.LBB19_82
# %bb.81:                               # %if.then2643
	movl	-44(%rbp), %eax
	addl	-40(%rbp), %eax
	addl	$1, %eax
	sarl	$1, %eax
	movq	img, %rcx
	movw	%ax, 8376(%rcx)
	movl	-40(%rbp), %eax
	addl	-36(%rbp), %eax
	addl	$1, %eax
	sarl	$1, %eax
	movq	img, %rcx
	movw	%ax, 8380(%rcx)
	movq	img, %rcx
	movw	%ax, 8392(%rcx)
	movl	-36(%rbp), %eax
	addl	-32(%rbp), %eax
	addl	$1, %eax
	sarl	$1, %eax
	movq	img, %rcx
	movw	%ax, 8384(%rcx)
	movq	img, %rcx
	movw	%ax, 8396(%rcx)
	movq	img, %rcx
	movw	%ax, 8408(%rcx)
	movl	-32(%rbp), %eax
	addl	-28(%rbp), %eax
	addl	$1, %eax
	sarl	$1, %eax
	movq	img, %rcx
	movw	%ax, 8388(%rcx)
	movq	img, %rcx
	movw	%ax, 8400(%rcx)
	movq	img, %rcx
	movw	%ax, 8412(%rcx)
	movq	img, %rcx
	movw	%ax, 8424(%rcx)
	movl	-28(%rbp), %eax
	addl	-24(%rbp), %eax
	addl	$1, %eax
	sarl	$1, %eax
	movq	img, %rcx
	movw	%ax, 8404(%rcx)
	movq	img, %rcx
	movw	%ax, 8416(%rcx)
	movq	img, %rcx
	movw	%ax, 8428(%rcx)
	movq	img, %rcx
	movw	%ax, 8440(%rcx)
	movl	-24(%rbp), %eax
	addl	-20(%rbp), %eax
	addl	$1, %eax
	sarl	$1, %eax
	movq	img, %rcx
	movw	%ax, 8420(%rcx)
	movq	img, %rcx
	movw	%ax, 8432(%rcx)
	movq	img, %rcx
	movw	%ax, 8444(%rcx)
	movq	img, %rcx
	movw	%ax, 8456(%rcx)
	movl	-20(%rbp), %eax
	addl	-16(%rbp), %eax
	addl	$1, %eax
	sarl	$1, %eax
	movq	img, %rcx
	movw	%ax, 8436(%rcx)
	movq	img, %rcx
	movw	%ax, 8448(%rcx)
	movq	img, %rcx
	movw	%ax, 8460(%rcx)
	movq	img, %rcx
	movw	%ax, 8472(%rcx)
	movl	-16(%rbp), %eax
	movq	img, %rcx
	movw	%ax, 8502(%rcx)
	movq	img, %rcx
	movw	%ax, 8500(%rcx)
	movq	img, %rcx
	movw	%ax, 8498(%rcx)
	movq	img, %rcx
	movw	%ax, 8496(%rcx)
	movq	img, %rcx
	movw	%ax, 8494(%rcx)
	movq	img, %rcx
	movw	%ax, 8492(%rcx)
	movq	img, %rcx
	movw	%ax, 8490(%rcx)
	movq	img, %rcx
	movw	%ax, 8488(%rcx)
	movq	img, %rcx
	movw	%ax, 8486(%rcx)
	movq	img, %rcx
	movw	%ax, 8484(%rcx)
	movq	img, %rcx
	movw	%ax, 8482(%rcx)
	movq	img, %rcx
	movw	%ax, 8480(%rcx)
	movq	img, %rcx
	movw	%ax, 8478(%rcx)
	movq	img, %rcx
	movw	%ax, 8476(%rcx)
	movq	img, %rcx
	movw	%ax, 8470(%rcx)
	movq	img, %rcx
	movw	%ax, 8468(%rcx)
	movq	img, %rcx
	movw	%ax, 8466(%rcx)
	movq	img, %rcx
	movw	%ax, 8464(%rcx)
	movq	img, %rcx
	movw	%ax, 8454(%rcx)
	movq	img, %rcx
	movw	%ax, 8452(%rcx)
	movl	-20(%rbp), %eax
	imull	$3, -16(%rbp), %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 8438(%rcx)
	movq	img, %rcx
	movw	%ax, 8450(%rcx)
	movq	img, %rcx
	movw	%ax, 8462(%rcx)
	movq	img, %rcx
	movw	%ax, 8474(%rcx)
	movl	-16(%rbp), %eax
	addl	-24(%rbp), %eax
	movl	-20(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 8422(%rcx)
	movq	img, %rcx
	movw	%ax, 8434(%rcx)
	movq	img, %rcx
	movw	%ax, 8446(%rcx)
	movq	img, %rcx
	movw	%ax, 8458(%rcx)
	movl	-20(%rbp), %eax
	addl	-28(%rbp), %eax
	movl	-24(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 8406(%rcx)
	movq	img, %rcx
	movw	%ax, 8418(%rcx)
	movq	img, %rcx
	movw	%ax, 8430(%rcx)
	movq	img, %rcx
	movw	%ax, 8442(%rcx)
	movl	-24(%rbp), %eax
	addl	-32(%rbp), %eax
	movl	-28(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 8390(%rcx)
	movq	img, %rcx
	movw	%ax, 8402(%rcx)
	movq	img, %rcx
	movw	%ax, 8414(%rcx)
	movq	img, %rcx
	movw	%ax, 8426(%rcx)
	movl	-28(%rbp), %eax
	addl	-36(%rbp), %eax
	movl	-32(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 8386(%rcx)
	movq	img, %rcx
	movw	%ax, 8398(%rcx)
	movq	img, %rcx
	movw	%ax, 8410(%rcx)
	movl	-32(%rbp), %eax
	addl	-40(%rbp), %eax
	movl	-36(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 8382(%rcx)
	movq	img, %rcx
	movw	%ax, 8394(%rcx)
	movl	-36(%rbp), %eax
	addl	-44(%rbp), %eax
	movl	-40(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 8378(%rcx)
.LBB19_82:                              # %if.end3005
	cmpl	$708979745, -224(%rbp)  # imm = 0x2A422C21
	jne	.LBB19_84
.LBB19_83:
	addq	$464, %rsp              # imm = 0x1D0
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB19_84:                              # %func_exit
	.cfi_def_cfa %rbp, 16
	callq	detect_breach
	jmp	.LBB19_83
.Lfunc_end19:
	.size	intrapred_luma8x8.14, .Lfunc_end19-intrapred_luma8x8.14
	.cfi_endproc
                                        # -- End function
	.globl	LowPassForIntra8x8Pred.15 # -- Begin function LowPassForIntra8x8Pred.15
	.p2align	4, 0x90
	.type	LowPassForIntra8x8Pred.15,@function
LowPassForIntra8x8Pred.15:              # @LowPassForIntra8x8Pred.15
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$144, %rsp
	movl	$1858136012, -32(%rbp)  # imm = 0x6EC0E7CC
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%edx, -28(%rbp)
	movl	%ecx, -24(%rbp)
	movl	$0, -4(%rbp)
.LBB20_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$25, -4(%rbp)
	jge	.LBB20_4
# %bb.2:                                # %for.body
                                        #   in Loop: Header=BB20_1 Depth=1
	movq	-16(%rbp), %rax
	movslq	-4(%rbp), %rcx
	movl	(%rax,%rcx,4), %eax
	movslq	-4(%rbp), %rcx
	movl	%eax, -144(%rbp,%rcx,4)
# %bb.3:                                # %for.inc
                                        #   in Loop: Header=BB20_1 Depth=1
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB20_1
.LBB20_4:                               # %for.end
	cmpl	$0, -28(%rbp)
	je	.LBB20_13
# %bb.5:                                # %if.then
	cmpl	$0, -20(%rbp)
	je	.LBB20_7
# %bb.6:                                # %if.then4
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	movq	-16(%rbp), %rcx
	movl	4(%rcx), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	movq	-16(%rbp), %rcx
	addl	8(%rcx), %eax
	addl	$2, %eax
	sarl	$2, %eax
	movl	%eax, -140(%rbp)
	jmp	.LBB20_8
.LBB20_7:                               # %if.else
	movq	-16(%rbp), %rax
	movl	4(%rax), %eax
	movq	-16(%rbp), %rcx
	movl	4(%rcx), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	movq	-16(%rbp), %rcx
	addl	8(%rcx), %eax
	addl	$2, %eax
	sarl	$2, %eax
	movl	%eax, -140(%rbp)
.LBB20_8:                               # %if.end
	movl	$2, -4(%rbp)
.LBB20_9:                               # %for.cond26
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$16, -4(%rbp)
	jge	.LBB20_12
# %bb.10:                               # %for.body28
                                        #   in Loop: Header=BB20_9 Depth=1
	movq	-16(%rbp), %rax
	movl	-4(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rcx
	movl	(%rax,%rcx,4), %eax
	movq	-16(%rbp), %rcx
	movslq	-4(%rbp), %rdx
	movl	(%rcx,%rdx,4), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	movq	-16(%rbp), %rcx
	movl	-4(%rbp), %edx
	addl	$1, %edx
	movslq	%edx, %rdx
	addl	(%rcx,%rdx,4), %eax
	addl	$2, %eax
	sarl	$2, %eax
	movslq	-4(%rbp), %rcx
	movl	%eax, -144(%rbp,%rcx,4)
# %bb.11:                               # %for.inc46
                                        #   in Loop: Header=BB20_9 Depth=1
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB20_9
.LBB20_12:                              # %for.end48
	movq	-16(%rbp), %rax
	movl	64(%rax), %eax
	movq	-16(%rbp), %rcx
	movl	64(%rcx), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	movq	-16(%rbp), %rcx
	addl	60(%rcx), %eax
	addl	$2, %eax
	sarl	$2, %eax
	movl	%eax, -80(%rbp)
.LBB20_13:                              # %if.end58
	cmpl	$0, -20(%rbp)
	je	.LBB20_24
# %bb.14:                               # %if.then60
	cmpl	$0, -28(%rbp)
	je	.LBB20_17
# %bb.15:                               # %land.lhs.true
	cmpl	$0, -24(%rbp)
	je	.LBB20_17
# %bb.16:                               # %if.then63
	movq	-16(%rbp), %rax
	movl	68(%rax), %eax
	movq	-16(%rbp), %rcx
	movl	(%rcx), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	movq	-16(%rbp), %rcx
	addl	4(%rcx), %eax
	addl	$2, %eax
	sarl	$2, %eax
	movl	%eax, -144(%rbp)
	jmp	.LBB20_23
.LBB20_17:                              # %if.else73
	cmpl	$0, -28(%rbp)
	je	.LBB20_19
# %bb.18:                               # %if.then75
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	movq	-16(%rbp), %rcx
	movl	(%rcx), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	movq	-16(%rbp), %rcx
	addl	4(%rcx), %eax
	addl	$2, %eax
	sarl	$2, %eax
	movl	%eax, -144(%rbp)
	jmp	.LBB20_22
.LBB20_19:                              # %if.else85
	cmpl	$0, -24(%rbp)
	je	.LBB20_21
# %bb.20:                               # %if.then87
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	movq	-16(%rbp), %rcx
	movl	(%rcx), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	movq	-16(%rbp), %rcx
	addl	68(%rcx), %eax
	addl	$2, %eax
	sarl	$2, %eax
	movl	%eax, -144(%rbp)
.LBB20_21:                              # %if.end97
	jmp	.LBB20_22
.LBB20_22:                              # %if.end98
	jmp	.LBB20_23
.LBB20_23:                              # %if.end99
	jmp	.LBB20_24
.LBB20_24:                              # %if.end100
	cmpl	$0, -24(%rbp)
	je	.LBB20_33
# %bb.25:                               # %if.then102
	cmpl	$0, -20(%rbp)
	je	.LBB20_27
# %bb.26:                               # %if.then104
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	movq	-16(%rbp), %rcx
	movl	68(%rcx), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	movq	-16(%rbp), %rcx
	addl	72(%rcx), %eax
	addl	$2, %eax
	sarl	$2, %eax
	movl	%eax, -76(%rbp)
	jmp	.LBB20_28
.LBB20_27:                              # %if.else114
	movq	-16(%rbp), %rax
	movl	68(%rax), %eax
	movq	-16(%rbp), %rcx
	movl	68(%rcx), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	movq	-16(%rbp), %rcx
	addl	72(%rcx), %eax
	addl	$2, %eax
	sarl	$2, %eax
	movl	%eax, -76(%rbp)
.LBB20_28:                              # %if.end124
	movl	$18, -4(%rbp)
.LBB20_29:                              # %for.cond125
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$24, -4(%rbp)
	jge	.LBB20_32
# %bb.30:                               # %for.body127
                                        #   in Loop: Header=BB20_29 Depth=1
	movq	-16(%rbp), %rax
	movl	-4(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rcx
	movl	(%rax,%rcx,4), %eax
	movq	-16(%rbp), %rcx
	movslq	-4(%rbp), %rdx
	movl	(%rcx,%rdx,4), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	movq	-16(%rbp), %rcx
	movl	-4(%rbp), %edx
	addl	$1, %edx
	movslq	%edx, %rdx
	addl	(%rcx,%rdx,4), %eax
	addl	$2, %eax
	sarl	$2, %eax
	movslq	-4(%rbp), %rcx
	movl	%eax, -144(%rbp,%rcx,4)
# %bb.31:                               # %for.inc146
                                        #   in Loop: Header=BB20_29 Depth=1
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB20_29
.LBB20_32:                              # %for.end148
	movq	-16(%rbp), %rax
	movl	92(%rax), %eax
	movq	-16(%rbp), %rcx
	movl	96(%rcx), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	movq	-16(%rbp), %rcx
	addl	96(%rcx), %eax
	addl	$2, %eax
	sarl	$2, %eax
	movl	%eax, -48(%rbp)
.LBB20_33:                              # %if.end158
	movl	$0, -4(%rbp)
.LBB20_34:                              # %for.cond159
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$25, -4(%rbp)
	jge	.LBB20_37
# %bb.35:                               # %for.body161
                                        #   in Loop: Header=BB20_34 Depth=1
	movslq	-4(%rbp), %rax
	movl	-144(%rbp,%rax,4), %eax
	movq	-16(%rbp), %rcx
	movslq	-4(%rbp), %rdx
	movl	%eax, (%rcx,%rdx,4)
# %bb.36:                               # %for.inc166
                                        #   in Loop: Header=BB20_34 Depth=1
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB20_34
.LBB20_37:                              # %for.end168
	cmpl	$1858136012, -32(%rbp)  # imm = 0x6EC0E7CC
	jne	.LBB20_39
.LBB20_38:
	addq	$144, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB20_39:                              # %func_exit
	.cfi_def_cfa %rbp, 16
	callq	detect_breach
	jmp	.LBB20_38
.Lfunc_end20:
	.size	LowPassForIntra8x8Pred.15, .Lfunc_end20-LowPassForIntra8x8Pred.15
	.cfi_endproc
                                        # -- End function
	.globl	LowPassForIntra8x8Pred.16 # -- Begin function LowPassForIntra8x8Pred.16
	.p2align	4, 0x90
	.type	LowPassForIntra8x8Pred.16,@function
LowPassForIntra8x8Pred.16:              # @LowPassForIntra8x8Pred.16
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$144, %rsp
	movl	$1139288870, -32(%rbp)  # imm = 0x43E82B26
	movq	%rdi, -16(%rbp)
	movl	%esi, -28(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movl	$0, -4(%rbp)
.LBB21_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$25, -4(%rbp)
	jge	.LBB21_4
# %bb.2:                                # %for.body
                                        #   in Loop: Header=BB21_1 Depth=1
	movq	-16(%rbp), %rax
	movslq	-4(%rbp), %rcx
	movl	(%rax,%rcx,4), %eax
	movslq	-4(%rbp), %rcx
	movl	%eax, -144(%rbp,%rcx,4)
# %bb.3:                                # %for.inc
                                        #   in Loop: Header=BB21_1 Depth=1
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB21_1
.LBB21_4:                               # %for.end
	cmpl	$0, -20(%rbp)
	je	.LBB21_13
# %bb.5:                                # %if.then
	cmpl	$0, -28(%rbp)
	je	.LBB21_7
# %bb.6:                                # %if.then4
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	movq	-16(%rbp), %rcx
	movl	4(%rcx), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	movq	-16(%rbp), %rcx
	addl	8(%rcx), %eax
	addl	$2, %eax
	sarl	$2, %eax
	movl	%eax, -140(%rbp)
	jmp	.LBB21_8
.LBB21_7:                               # %if.else
	movq	-16(%rbp), %rax
	movl	4(%rax), %eax
	movq	-16(%rbp), %rcx
	movl	4(%rcx), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	movq	-16(%rbp), %rcx
	addl	8(%rcx), %eax
	addl	$2, %eax
	sarl	$2, %eax
	movl	%eax, -140(%rbp)
.LBB21_8:                               # %if.end
	movl	$2, -4(%rbp)
.LBB21_9:                               # %for.cond26
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$16, -4(%rbp)
	jge	.LBB21_12
# %bb.10:                               # %for.body28
                                        #   in Loop: Header=BB21_9 Depth=1
	movq	-16(%rbp), %rax
	movl	-4(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rcx
	movl	(%rax,%rcx,4), %eax
	movq	-16(%rbp), %rcx
	movslq	-4(%rbp), %rdx
	movl	(%rcx,%rdx,4), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	movq	-16(%rbp), %rcx
	movl	-4(%rbp), %edx
	addl	$1, %edx
	movslq	%edx, %rdx
	addl	(%rcx,%rdx,4), %eax
	addl	$2, %eax
	sarl	$2, %eax
	movslq	-4(%rbp), %rcx
	movl	%eax, -144(%rbp,%rcx,4)
# %bb.11:                               # %for.inc46
                                        #   in Loop: Header=BB21_9 Depth=1
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB21_9
.LBB21_12:                              # %for.end48
	movq	-16(%rbp), %rax
	movl	64(%rax), %eax
	movq	-16(%rbp), %rcx
	movl	64(%rcx), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	movq	-16(%rbp), %rcx
	addl	60(%rcx), %eax
	addl	$2, %eax
	sarl	$2, %eax
	movl	%eax, -80(%rbp)
.LBB21_13:                              # %if.end58
	cmpl	$0, -28(%rbp)
	je	.LBB21_24
# %bb.14:                               # %if.then60
	cmpl	$0, -20(%rbp)
	je	.LBB21_17
# %bb.15:                               # %land.lhs.true
	cmpl	$0, -24(%rbp)
	je	.LBB21_17
# %bb.16:                               # %if.then63
	movq	-16(%rbp), %rax
	movl	68(%rax), %eax
	movq	-16(%rbp), %rcx
	movl	(%rcx), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	movq	-16(%rbp), %rcx
	addl	4(%rcx), %eax
	addl	$2, %eax
	sarl	$2, %eax
	movl	%eax, -144(%rbp)
	jmp	.LBB21_23
.LBB21_17:                              # %if.else73
	cmpl	$0, -20(%rbp)
	je	.LBB21_19
# %bb.18:                               # %if.then75
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	movq	-16(%rbp), %rcx
	movl	(%rcx), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	movq	-16(%rbp), %rcx
	addl	4(%rcx), %eax
	addl	$2, %eax
	sarl	$2, %eax
	movl	%eax, -144(%rbp)
	jmp	.LBB21_22
.LBB21_19:                              # %if.else85
	cmpl	$0, -24(%rbp)
	je	.LBB21_21
# %bb.20:                               # %if.then87
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	movq	-16(%rbp), %rcx
	movl	(%rcx), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	movq	-16(%rbp), %rcx
	addl	68(%rcx), %eax
	addl	$2, %eax
	sarl	$2, %eax
	movl	%eax, -144(%rbp)
.LBB21_21:                              # %if.end97
	jmp	.LBB21_22
.LBB21_22:                              # %if.end98
	jmp	.LBB21_23
.LBB21_23:                              # %if.end99
	jmp	.LBB21_24
.LBB21_24:                              # %if.end100
	cmpl	$0, -24(%rbp)
	je	.LBB21_33
# %bb.25:                               # %if.then102
	cmpl	$0, -28(%rbp)
	je	.LBB21_27
# %bb.26:                               # %if.then104
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	movq	-16(%rbp), %rcx
	movl	68(%rcx), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	movq	-16(%rbp), %rcx
	addl	72(%rcx), %eax
	addl	$2, %eax
	sarl	$2, %eax
	movl	%eax, -76(%rbp)
	jmp	.LBB21_28
.LBB21_27:                              # %if.else114
	movq	-16(%rbp), %rax
	movl	68(%rax), %eax
	movq	-16(%rbp), %rcx
	movl	68(%rcx), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	movq	-16(%rbp), %rcx
	addl	72(%rcx), %eax
	addl	$2, %eax
	sarl	$2, %eax
	movl	%eax, -76(%rbp)
.LBB21_28:                              # %if.end124
	movl	$18, -4(%rbp)
.LBB21_29:                              # %for.cond125
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$24, -4(%rbp)
	jge	.LBB21_32
# %bb.30:                               # %for.body127
                                        #   in Loop: Header=BB21_29 Depth=1
	movq	-16(%rbp), %rax
	movl	-4(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rcx
	movl	(%rax,%rcx,4), %eax
	movq	-16(%rbp), %rcx
	movslq	-4(%rbp), %rdx
	movl	(%rcx,%rdx,4), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	movq	-16(%rbp), %rcx
	movl	-4(%rbp), %edx
	addl	$1, %edx
	movslq	%edx, %rdx
	addl	(%rcx,%rdx,4), %eax
	addl	$2, %eax
	sarl	$2, %eax
	movslq	-4(%rbp), %rcx
	movl	%eax, -144(%rbp,%rcx,4)
# %bb.31:                               # %for.inc146
                                        #   in Loop: Header=BB21_29 Depth=1
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB21_29
.LBB21_32:                              # %for.end148
	movq	-16(%rbp), %rax
	movl	92(%rax), %eax
	movq	-16(%rbp), %rcx
	movl	96(%rcx), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	movq	-16(%rbp), %rcx
	addl	96(%rcx), %eax
	addl	$2, %eax
	sarl	$2, %eax
	movl	%eax, -48(%rbp)
.LBB21_33:                              # %if.end158
	movl	$0, -4(%rbp)
.LBB21_34:                              # %for.cond159
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$25, -4(%rbp)
	jge	.LBB21_37
# %bb.35:                               # %for.body161
                                        #   in Loop: Header=BB21_34 Depth=1
	movslq	-4(%rbp), %rax
	movl	-144(%rbp,%rax,4), %eax
	movq	-16(%rbp), %rcx
	movslq	-4(%rbp), %rdx
	movl	%eax, (%rcx,%rdx,4)
# %bb.36:                               # %for.inc166
                                        #   in Loop: Header=BB21_34 Depth=1
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB21_34
.LBB21_37:                              # %for.end168
	cmpl	$1139288870, -32(%rbp)  # imm = 0x43E82B26
	jne	.LBB21_39
.LBB21_38:
	addq	$144, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB21_39:                              # %func_exit
	.cfi_def_cfa %rbp, 16
	callq	detect_breach
	jmp	.LBB21_38
.Lfunc_end21:
	.size	LowPassForIntra8x8Pred.16, .Lfunc_end21-LowPassForIntra8x8Pred.16
	.cfi_endproc
                                        # -- End function
	.globl	intrapred_luma8x8.17    # -- Begin function intrapred_luma8x8.17
	.p2align	4, 0x90
	.type	intrapred_luma8x8.17,@function
intrapred_luma8x8.17:                   # @intrapred_luma8x8.17
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$464, %rsp              # imm = 0x1D0
	movl	$1502933115, -224(%rbp) # imm = 0x5994F07B
	movl	%edi, -216(%rbp)
	movl	%esi, -220(%rbp)
	movq	%rdx, -232(%rbp)
	movq	%rcx, -240(%rbp)
	movq	%r8, -248(%rbp)
	movq	enc_picture, %rax
	movq	6424(%rax), %rax
	movq	%rax, -128(%rbp)
	movl	-216(%rbp), %eax
	andl	$15, %eax
	movl	%eax, -140(%rbp)
	movl	-220(%rbp), %eax
	andl	$15, %eax
	movl	%eax, -144(%rbp)
	movq	img, %rax
	movl	12(%rax), %eax
	movl	%eax, -156(%rbp)
	movl	$0, -4(%rbp)
.LBB22_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$8, -4(%rbp)
	jge	.LBB22_4
# %bb.2:                                # %for.body
                                        #   in Loop: Header=BB22_1 Depth=1
	movl	-156(%rbp), %edi
	movl	-140(%rbp), %esi
	subl	$1, %esi
	movl	-144(%rbp), %edx
	addl	-4(%rbp), %edx
	movslq	-4(%rbp), %rax
	imulq	$24, %rax, %rax
	leaq	-464(%rbp), %r8
	addq	%rax, %r8
	movl	$1, %ecx
	callq	getNeighbour
# %bb.3:                                # %for.inc
                                        #   in Loop: Header=BB22_1 Depth=1
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB22_1
.LBB22_4:                               # %for.end
	movl	-156(%rbp), %edi
	movl	-140(%rbp), %esi
	movl	-144(%rbp), %edx
	subl	$1, %edx
	movl	$1, %ecx
	leaq	-208(%rbp), %r8
	callq	getNeighbour
	movl	-156(%rbp), %edi
	movl	-140(%rbp), %esi
	addl	$8, %esi
	movl	-144(%rbp), %edx
	subl	$1, %edx
	movl	$1, %ecx
	leaq	-184(%rbp), %r8
	callq	getNeighbour
	movl	-156(%rbp), %edi
	movl	-140(%rbp), %esi
	subl	$1, %esi
	movl	-144(%rbp), %edx
	subl	$1, %edx
	movl	$1, %ecx
	leaq	-272(%rbp), %r8
	callq	getNeighbour
	xorl	%eax, %eax
	cmpl	$0, -184(%rbp)
	je	.LBB22_8
# %bb.5:                                # %land.rhs
	xorl	%eax, %eax
	cmpl	$8, -140(%rbp)
	jne	.LBB22_7
# %bb.6:                                # %land.rhs9
	cmpl	$8, -144(%rbp)
	sete	%al
.LBB22_7:                               # %land.end
	xorb	$-1, %al
.LBB22_8:                               # %land.end11
	andb	$1, %al
	movzbl	%al, %eax
	movl	%eax, -184(%rbp)
	movq	input, %rax
	cmpl	$0, 216(%rax)
	je	.LBB22_26
# %bb.9:                                # %if.then
	movl	$0, -4(%rbp)
	movl	$1, -116(%rbp)
.LBB22_10:                              # %for.cond14
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$8, -4(%rbp)
	jge	.LBB22_16
# %bb.11:                               # %for.body16
                                        #   in Loop: Header=BB22_10 Depth=1
	movslq	-4(%rbp), %rax
	imulq	$24, %rax, %rax
	leaq	-464(%rbp), %rcx
	addq	%rax, %rcx
	cmpl	$0, (%rcx)
	je	.LBB22_13
# %bb.12:                               # %cond.true
                                        #   in Loop: Header=BB22_10 Depth=1
	movq	img, %rax
	movq	71784(%rax), %rax
	movslq	-4(%rbp), %rcx
	imulq	$24, %rcx, %rcx
	leaq	-464(%rbp), %rdx
	addq	%rcx, %rdx
	movslq	4(%rdx), %rcx
	movl	(%rax,%rcx,4), %eax
	jmp	.LBB22_14
.LBB22_13:                              # %cond.false
                                        #   in Loop: Header=BB22_10 Depth=1
	xorl	%eax, %eax
	jmp	.LBB22_14
.LBB22_14:                              # %cond.end
                                        #   in Loop: Header=BB22_10 Depth=1
	andl	-116(%rbp), %eax
	movl	%eax, -116(%rbp)
# %bb.15:                               # %for.inc26
                                        #   in Loop: Header=BB22_10 Depth=1
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB22_10
.LBB22_16:                              # %for.end28
	cmpl	$0, -208(%rbp)
	je	.LBB22_18
# %bb.17:                               # %cond.true31
	movq	img, %rax
	movq	71784(%rax), %rax
	movslq	-204(%rbp), %rcx
	movl	(%rax,%rcx,4), %eax
	jmp	.LBB22_19
.LBB22_18:                              # %cond.false36
	xorl	%eax, %eax
	jmp	.LBB22_19
.LBB22_19:                              # %cond.end37
	movl	%eax, -132(%rbp)
	cmpl	$0, -184(%rbp)
	je	.LBB22_21
# %bb.20:                               # %cond.true41
	movq	img, %rax
	movq	71784(%rax), %rax
	movslq	-180(%rbp), %rcx
	movl	(%rax,%rcx,4), %eax
	jmp	.LBB22_22
.LBB22_21:                              # %cond.false46
	xorl	%eax, %eax
	jmp	.LBB22_22
.LBB22_22:                              # %cond.end47
	movl	%eax, -212(%rbp)
	cmpl	$0, -272(%rbp)
	je	.LBB22_24
# %bb.23:                               # %cond.true51
	movq	img, %rax
	movq	71784(%rax), %rax
	movslq	-268(%rbp), %rcx
	movl	(%rax,%rcx,4), %eax
	jmp	.LBB22_25
.LBB22_24:                              # %cond.false56
	xorl	%eax, %eax
	jmp	.LBB22_25
.LBB22_25:                              # %cond.end57
	movl	%eax, -152(%rbp)
	jmp	.LBB22_27
.LBB22_26:                              # %if.else
	movl	-464(%rbp), %eax
	movl	%eax, -116(%rbp)
	movl	-208(%rbp), %eax
	movl	%eax, -132(%rbp)
	movl	-184(%rbp), %eax
	movl	%eax, -212(%rbp)
	movl	-272(%rbp), %eax
	movl	%eax, -152(%rbp)
.LBB22_27:                              # %if.end
	xorl	%eax, %eax
	movl	-116(%rbp), %ecx
	movq	-232(%rbp), %rdx
	movl	%ecx, (%rdx)
	movl	-132(%rbp), %ecx
	movq	-240(%rbp), %rdx
	movl	%ecx, (%rdx)
	cmpl	$0, -132(%rbp)
	je	.LBB22_30
# %bb.28:                               # %land.lhs.true
	xorl	%eax, %eax
	cmpl	$0, -116(%rbp)
	je	.LBB22_30
# %bb.29:                               # %land.rhs66
	cmpl	$0, -152(%rbp)
	setne	%al
.LBB22_30:                              # %land.end68
	andb	$1, %al
	movzbl	%al, %eax
	movq	-248(%rbp), %rcx
	movl	%eax, (%rcx)
	movl	-216(%rbp), %eax
	andl	$15, %eax
	movl	%eax, -4(%rbp)
	movl	-220(%rbp), %eax
	andl	$15, %eax
	movl	%eax, -148(%rbp)
	cmpl	$0, -132(%rbp)
	je	.LBB22_32
# %bb.31:                               # %if.then73
	movq	-128(%rbp), %rax
	movslq	-188(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movl	-192(%rbp), %ecx
	addl	$0, %ecx
	movslq	%ecx, %rcx
	movzwl	(%rax,%rcx,2), %eax
	movl	%eax, -108(%rbp)
	movq	-128(%rbp), %rax
	movslq	-188(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movl	-192(%rbp), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rcx
	movzwl	(%rax,%rcx,2), %eax
	movl	%eax, -104(%rbp)
	movq	-128(%rbp), %rax
	movslq	-188(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movl	-192(%rbp), %ecx
	addl	$2, %ecx
	movslq	%ecx, %rcx
	movzwl	(%rax,%rcx,2), %eax
	movl	%eax, -100(%rbp)
	movq	-128(%rbp), %rax
	movslq	-188(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movl	-192(%rbp), %ecx
	addl	$3, %ecx
	movslq	%ecx, %rcx
	movzwl	(%rax,%rcx,2), %eax
	movl	%eax, -96(%rbp)
	movq	-128(%rbp), %rax
	movslq	-188(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movl	-192(%rbp), %ecx
	addl	$4, %ecx
	movslq	%ecx, %rcx
	movzwl	(%rax,%rcx,2), %eax
	movl	%eax, -92(%rbp)
	movq	-128(%rbp), %rax
	movslq	-188(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movl	-192(%rbp), %ecx
	addl	$5, %ecx
	movslq	%ecx, %rcx
	movzwl	(%rax,%rcx,2), %eax
	movl	%eax, -88(%rbp)
	movq	-128(%rbp), %rax
	movslq	-188(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movl	-192(%rbp), %ecx
	addl	$6, %ecx
	movslq	%ecx, %rcx
	movzwl	(%rax,%rcx,2), %eax
	movl	%eax, -84(%rbp)
	movq	-128(%rbp), %rax
	movslq	-188(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movl	-192(%rbp), %ecx
	addl	$7, %ecx
	movslq	%ecx, %rcx
	movzwl	(%rax,%rcx,2), %eax
	movl	%eax, -80(%rbp)
	jmp	.LBB22_33
.LBB22_32:                              # %if.else143
	movq	img, %rax
	movl	72680(%rax), %eax
	movl	%eax, -80(%rbp)
	movl	%eax, -84(%rbp)
	movl	%eax, -88(%rbp)
	movl	%eax, -92(%rbp)
	movl	%eax, -96(%rbp)
	movl	%eax, -100(%rbp)
	movl	%eax, -104(%rbp)
	movl	%eax, -108(%rbp)
.LBB22_33:                              # %if.end152
	cmpl	$0, -212(%rbp)
	je	.LBB22_35
# %bb.34:                               # %if.then154
	movq	-128(%rbp), %rax
	movslq	-164(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movl	-168(%rbp), %ecx
	addl	$0, %ecx
	movslq	%ecx, %rcx
	movzwl	(%rax,%rcx,2), %eax
	movl	%eax, -76(%rbp)
	movq	-128(%rbp), %rax
	movslq	-164(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movl	-168(%rbp), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rcx
	movzwl	(%rax,%rcx,2), %eax
	movl	%eax, -72(%rbp)
	movq	-128(%rbp), %rax
	movslq	-164(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movl	-168(%rbp), %ecx
	addl	$2, %ecx
	movslq	%ecx, %rcx
	movzwl	(%rax,%rcx,2), %eax
	movl	%eax, -68(%rbp)
	movq	-128(%rbp), %rax
	movslq	-164(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movl	-168(%rbp), %ecx
	addl	$3, %ecx
	movslq	%ecx, %rcx
	movzwl	(%rax,%rcx,2), %eax
	movl	%eax, -64(%rbp)
	movq	-128(%rbp), %rax
	movslq	-164(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movl	-168(%rbp), %ecx
	addl	$4, %ecx
	movslq	%ecx, %rcx
	movzwl	(%rax,%rcx,2), %eax
	movl	%eax, -60(%rbp)
	movq	-128(%rbp), %rax
	movslq	-164(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movl	-168(%rbp), %ecx
	addl	$5, %ecx
	movslq	%ecx, %rcx
	movzwl	(%rax,%rcx,2), %eax
	movl	%eax, -56(%rbp)
	movq	-128(%rbp), %rax
	movslq	-164(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movl	-168(%rbp), %ecx
	addl	$6, %ecx
	movslq	%ecx, %rcx
	movzwl	(%rax,%rcx,2), %eax
	movl	%eax, -52(%rbp)
	movq	-128(%rbp), %rax
	movslq	-164(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movl	-168(%rbp), %ecx
	addl	$7, %ecx
	movslq	%ecx, %rcx
	movzwl	(%rax,%rcx,2), %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB22_36
.LBB22_35:                              # %if.else227
	movl	-80(%rbp), %eax
	movl	%eax, -48(%rbp)
	movl	%eax, -52(%rbp)
	movl	%eax, -56(%rbp)
	movl	%eax, -60(%rbp)
	movl	%eax, -64(%rbp)
	movl	%eax, -68(%rbp)
	movl	%eax, -72(%rbp)
	movl	%eax, -76(%rbp)
.LBB22_36:                              # %if.end237
	cmpl	$0, -116(%rbp)
	je	.LBB22_38
# %bb.37:                               # %if.then239
	movq	-128(%rbp), %rax
	movslq	-444(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movslq	-448(%rbp), %rcx
	movzwl	(%rax,%rcx,2), %eax
	movl	%eax, -44(%rbp)
	movq	-128(%rbp), %rax
	movslq	-420(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movslq	-424(%rbp), %rcx
	movzwl	(%rax,%rcx,2), %eax
	movl	%eax, -40(%rbp)
	movq	-128(%rbp), %rax
	movslq	-396(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movslq	-400(%rbp), %rcx
	movzwl	(%rax,%rcx,2), %eax
	movl	%eax, -36(%rbp)
	movq	-128(%rbp), %rax
	movslq	-372(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movslq	-376(%rbp), %rcx
	movzwl	(%rax,%rcx,2), %eax
	movl	%eax, -32(%rbp)
	movq	-128(%rbp), %rax
	movslq	-348(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movslq	-352(%rbp), %rcx
	movzwl	(%rax,%rcx,2), %eax
	movl	%eax, -28(%rbp)
	movq	-128(%rbp), %rax
	movslq	-324(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movslq	-328(%rbp), %rcx
	movzwl	(%rax,%rcx,2), %eax
	movl	%eax, -24(%rbp)
	movq	-128(%rbp), %rax
	movslq	-300(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movslq	-304(%rbp), %rcx
	movzwl	(%rax,%rcx,2), %eax
	movl	%eax, -20(%rbp)
	movq	-128(%rbp), %rax
	movslq	-276(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movslq	-280(%rbp), %rcx
	movzwl	(%rax,%rcx,2), %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB22_39
.LBB22_38:                              # %if.else320
	movq	img, %rax
	movl	72680(%rax), %eax
	movl	%eax, -16(%rbp)
	movl	%eax, -20(%rbp)
	movl	%eax, -24(%rbp)
	movl	%eax, -28(%rbp)
	movl	%eax, -32(%rbp)
	movl	%eax, -36(%rbp)
	movl	%eax, -40(%rbp)
	movl	%eax, -44(%rbp)
.LBB22_39:                              # %if.end330
	cmpl	$0, -152(%rbp)
	je	.LBB22_41
# %bb.40:                               # %if.then332
	movq	-128(%rbp), %rax
	movslq	-252(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movslq	-256(%rbp), %rcx
	movzwl	(%rax,%rcx,2), %eax
	movl	%eax, -112(%rbp)
	jmp	.LBB22_42
.LBB22_41:                              # %if.else341
	movq	img, %rax
	movl	72680(%rax), %eax
	movl	%eax, -112(%rbp)
.LBB22_42:                              # %if.end344
	movl	$0, -4(%rbp)
.LBB22_43:                              # %for.cond345
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$9, -4(%rbp)
	jge	.LBB22_46
# %bb.44:                               # %for.body348
                                        #   in Loop: Header=BB22_43 Depth=1
	movq	img, %rax
	addq	$7352, %rax             # imm = 0x1CB8
	movslq	-4(%rbp), %rcx
	shlq	$7, %rcx
	addq	%rcx, %rax
	movw	$-1, (%rax)
# %bb.45:                               # %for.inc353
                                        #   in Loop: Header=BB22_43 Depth=1
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB22_43
.LBB22_46:                              # %for.end355
	leaq	-112(%rbp), %rdi
	movl	-152(%rbp), %esi
	movl	-132(%rbp), %edx
	movl	-116(%rbp), %ecx
	callq	LowPassForIntra8x8Pred
	movl	$0, -136(%rbp)
	cmpl	$0, -132(%rbp)
	je	.LBB22_49
# %bb.47:                               # %land.lhs.true358
	cmpl	$0, -116(%rbp)
	je	.LBB22_49
# %bb.48:                               # %if.then360
	movl	-108(%rbp), %eax
	addl	-104(%rbp), %eax
	addl	-100(%rbp), %eax
	addl	-96(%rbp), %eax
	addl	-92(%rbp), %eax
	addl	-88(%rbp), %eax
	addl	-84(%rbp), %eax
	addl	-80(%rbp), %eax
	addl	-44(%rbp), %eax
	addl	-40(%rbp), %eax
	addl	-36(%rbp), %eax
	addl	-32(%rbp), %eax
	addl	-28(%rbp), %eax
	addl	-24(%rbp), %eax
	addl	-20(%rbp), %eax
	addl	-16(%rbp), %eax
	addl	$8, %eax
	sarl	$4, %eax
	movl	%eax, -136(%rbp)
	jmp	.LBB22_58
.LBB22_49:                              # %if.else393
	cmpl	$0, -132(%rbp)
	jne	.LBB22_52
# %bb.50:                               # %land.lhs.true395
	cmpl	$0, -116(%rbp)
	je	.LBB22_52
# %bb.51:                               # %if.then397
	movl	-44(%rbp), %eax
	addl	-40(%rbp), %eax
	addl	-36(%rbp), %eax
	addl	-32(%rbp), %eax
	addl	-28(%rbp), %eax
	addl	-24(%rbp), %eax
	addl	-20(%rbp), %eax
	addl	-16(%rbp), %eax
	addl	$4, %eax
	sarl	$3, %eax
	movl	%eax, -136(%rbp)
	jmp	.LBB22_57
.LBB22_52:                              # %if.else415
	cmpl	$0, -132(%rbp)
	je	.LBB22_55
# %bb.53:                               # %land.lhs.true417
	cmpl	$0, -116(%rbp)
	jne	.LBB22_55
# %bb.54:                               # %if.then419
	movl	-108(%rbp), %eax
	addl	-104(%rbp), %eax
	addl	-100(%rbp), %eax
	addl	-96(%rbp), %eax
	addl	-92(%rbp), %eax
	addl	-88(%rbp), %eax
	addl	-84(%rbp), %eax
	addl	-80(%rbp), %eax
	addl	$4, %eax
	sarl	$3, %eax
	movl	%eax, -136(%rbp)
	jmp	.LBB22_56
.LBB22_55:                              # %if.else437
	movq	img, %rax
	movl	72680(%rax), %eax
	movl	%eax, -136(%rbp)
.LBB22_56:                              # %if.end439
	jmp	.LBB22_57
.LBB22_57:                              # %if.end440
	jmp	.LBB22_58
.LBB22_58:                              # %if.end441
	movl	$0, -148(%rbp)
.LBB22_59:                              # %for.cond442
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB22_61 Depth 2
	cmpl	$8, -148(%rbp)
	jge	.LBB22_66
# %bb.60:                               # %for.body445
                                        #   in Loop: Header=BB22_59 Depth=1
	movl	$0, -4(%rbp)
.LBB22_61:                              # %for.cond446
                                        #   Parent Loop BB22_59 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$8, -4(%rbp)
	jge	.LBB22_64
# %bb.62:                               # %for.body449
                                        #   in Loop: Header=BB22_61 Depth=2
	movl	-136(%rbp), %eax
	movq	img, %rcx
	addq	$7352, %rcx             # imm = 0x1CB8
	addq	$256, %rcx              # imm = 0x100
	movslq	-4(%rbp), %rdx
	shlq	$4, %rdx
	addq	%rdx, %rcx
	movslq	-148(%rbp), %rdx
	movw	%ax, (%rcx,%rdx,2)
# %bb.63:                               # %for.inc457
                                        #   in Loop: Header=BB22_61 Depth=2
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB22_61
.LBB22_64:                              # %for.end459
                                        #   in Loop: Header=BB22_59 Depth=1
	jmp	.LBB22_65
.LBB22_65:                              # %for.inc460
                                        #   in Loop: Header=BB22_59 Depth=1
	movl	-148(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -148(%rbp)
	jmp	.LBB22_59
.LBB22_66:                              # %for.end462
	movl	$0, -4(%rbp)
.LBB22_67:                              # %for.cond463
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$8, -4(%rbp)
	jge	.LBB22_70
# %bb.68:                               # %for.body466
                                        #   in Loop: Header=BB22_67 Depth=1
	movslq	-4(%rbp), %rax
	movl	-108(%rbp,%rax,4), %eax
	movq	img, %rcx
	movslq	-4(%rbp), %rdx
	movw	%ax, 7464(%rcx,%rdx,2)
	movq	img, %rcx
	movslq	-4(%rbp), %rdx
	movw	%ax, 7448(%rcx,%rdx,2)
	movq	img, %rcx
	movslq	-4(%rbp), %rdx
	movw	%ax, 7432(%rcx,%rdx,2)
	movq	img, %rcx
	movslq	-4(%rbp), %rdx
	movw	%ax, 7416(%rcx,%rdx,2)
	movq	img, %rcx
	movslq	-4(%rbp), %rdx
	movw	%ax, 7400(%rcx,%rdx,2)
	movq	img, %rcx
	movslq	-4(%rbp), %rdx
	movw	%ax, 7384(%rcx,%rdx,2)
	movq	img, %rcx
	movslq	-4(%rbp), %rdx
	movw	%ax, 7368(%rcx,%rdx,2)
	movq	img, %rcx
	movslq	-4(%rbp), %rdx
	movw	%ax, 7352(%rcx,%rdx,2)
	movslq	-4(%rbp), %rax
	movl	-44(%rbp,%rax,4), %eax
	movq	img, %rcx
	addq	$7352, %rcx             # imm = 0x1CB8
	addq	$128, %rcx
	movslq	-4(%rbp), %rdx
	shlq	$4, %rdx
	addq	%rdx, %rcx
	movw	%ax, 14(%rcx)
	movq	img, %rcx
	addq	$7352, %rcx             # imm = 0x1CB8
	addq	$128, %rcx
	movslq	-4(%rbp), %rdx
	shlq	$4, %rdx
	addq	%rdx, %rcx
	movw	%ax, 12(%rcx)
	movq	img, %rcx
	addq	$7352, %rcx             # imm = 0x1CB8
	addq	$128, %rcx
	movslq	-4(%rbp), %rdx
	shlq	$4, %rdx
	addq	%rdx, %rcx
	movw	%ax, 10(%rcx)
	movq	img, %rcx
	addq	$7352, %rcx             # imm = 0x1CB8
	addq	$128, %rcx
	movslq	-4(%rbp), %rdx
	shlq	$4, %rdx
	addq	%rdx, %rcx
	movw	%ax, 8(%rcx)
	movq	img, %rcx
	addq	$7352, %rcx             # imm = 0x1CB8
	addq	$128, %rcx
	movslq	-4(%rbp), %rdx
	shlq	$4, %rdx
	addq	%rdx, %rcx
	movw	%ax, 6(%rcx)
	movq	img, %rcx
	addq	$7352, %rcx             # imm = 0x1CB8
	addq	$128, %rcx
	movslq	-4(%rbp), %rdx
	shlq	$4, %rdx
	addq	%rdx, %rcx
	movw	%ax, 4(%rcx)
	movq	img, %rcx
	addq	$7352, %rcx             # imm = 0x1CB8
	addq	$128, %rcx
	movslq	-4(%rbp), %rdx
	shlq	$4, %rdx
	addq	%rdx, %rcx
	movw	%ax, 2(%rcx)
	movq	img, %rcx
	addq	$7352, %rcx             # imm = 0x1CB8
	addq	$128, %rcx
	movslq	-4(%rbp), %rdx
	shlq	$4, %rdx
	addq	%rdx, %rcx
	movw	%ax, (%rcx)
# %bb.69:                               # %for.inc555
                                        #   in Loop: Header=BB22_67 Depth=1
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB22_67
.LBB22_70:                              # %for.end557
	cmpl	$0, -132(%rbp)
	jne	.LBB22_72
# %bb.71:                               # %if.then559
	movq	img, %rax
	movw	$-1, 7352(%rax)
.LBB22_72:                              # %if.end564
	cmpl	$0, -116(%rbp)
	jne	.LBB22_74
# %bb.73:                               # %if.then566
	movq	img, %rax
	movw	$-1, 7480(%rax)
.LBB22_74:                              # %if.end571
	cmpl	$0, -132(%rbp)
	je	.LBB22_76
# %bb.75:                               # %if.then573
	movl	-108(%rbp), %eax
	addl	-100(%rbp), %eax
	movl	-104(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 7736(%rcx)
	movl	-104(%rbp), %eax
	addl	-96(%rbp), %eax
	movl	-100(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 7752(%rcx)
	movq	img, %rcx
	movw	%ax, 7738(%rcx)
	movl	-100(%rbp), %eax
	addl	-92(%rbp), %eax
	movl	-96(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 7768(%rcx)
	movq	img, %rcx
	movw	%ax, 7754(%rcx)
	movq	img, %rcx
	movw	%ax, 7740(%rcx)
	movl	-96(%rbp), %eax
	addl	-88(%rbp), %eax
	movl	-92(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 7784(%rcx)
	movq	img, %rcx
	movw	%ax, 7770(%rcx)
	movq	img, %rcx
	movw	%ax, 7756(%rcx)
	movq	img, %rcx
	movw	%ax, 7742(%rcx)
	movl	-92(%rbp), %eax
	addl	-84(%rbp), %eax
	movl	-88(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 7800(%rcx)
	movq	img, %rcx
	movw	%ax, 7786(%rcx)
	movq	img, %rcx
	movw	%ax, 7772(%rcx)
	movq	img, %rcx
	movw	%ax, 7758(%rcx)
	movq	img, %rcx
	movw	%ax, 7744(%rcx)
	movl	-88(%rbp), %eax
	addl	-80(%rbp), %eax
	movl	-84(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 7816(%rcx)
	movq	img, %rcx
	movw	%ax, 7802(%rcx)
	movq	img, %rcx
	movw	%ax, 7788(%rcx)
	movq	img, %rcx
	movw	%ax, 7774(%rcx)
	movq	img, %rcx
	movw	%ax, 7760(%rcx)
	movq	img, %rcx
	movw	%ax, 7746(%rcx)
	movl	-84(%rbp), %eax
	addl	-76(%rbp), %eax
	movl	-80(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 7832(%rcx)
	movq	img, %rcx
	movw	%ax, 7818(%rcx)
	movq	img, %rcx
	movw	%ax, 7804(%rcx)
	movq	img, %rcx
	movw	%ax, 7790(%rcx)
	movq	img, %rcx
	movw	%ax, 7776(%rcx)
	movq	img, %rcx
	movw	%ax, 7762(%rcx)
	movq	img, %rcx
	movw	%ax, 7748(%rcx)
	movl	-80(%rbp), %eax
	addl	-72(%rbp), %eax
	movl	-76(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 7848(%rcx)
	movq	img, %rcx
	movw	%ax, 7834(%rcx)
	movq	img, %rcx
	movw	%ax, 7820(%rcx)
	movq	img, %rcx
	movw	%ax, 7806(%rcx)
	movq	img, %rcx
	movw	%ax, 7792(%rcx)
	movq	img, %rcx
	movw	%ax, 7778(%rcx)
	movq	img, %rcx
	movw	%ax, 7764(%rcx)
	movq	img, %rcx
	movw	%ax, 7750(%rcx)
	movl	-76(%rbp), %eax
	addl	-68(%rbp), %eax
	movl	-72(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 7850(%rcx)
	movq	img, %rcx
	movw	%ax, 7836(%rcx)
	movq	img, %rcx
	movw	%ax, 7822(%rcx)
	movq	img, %rcx
	movw	%ax, 7808(%rcx)
	movq	img, %rcx
	movw	%ax, 7794(%rcx)
	movq	img, %rcx
	movw	%ax, 7780(%rcx)
	movq	img, %rcx
	movw	%ax, 7766(%rcx)
	movl	-72(%rbp), %eax
	addl	-64(%rbp), %eax
	movl	-68(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 7852(%rcx)
	movq	img, %rcx
	movw	%ax, 7838(%rcx)
	movq	img, %rcx
	movw	%ax, 7824(%rcx)
	movq	img, %rcx
	movw	%ax, 7810(%rcx)
	movq	img, %rcx
	movw	%ax, 7796(%rcx)
	movq	img, %rcx
	movw	%ax, 7782(%rcx)
	movl	-68(%rbp), %eax
	addl	-60(%rbp), %eax
	movl	-64(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 7854(%rcx)
	movq	img, %rcx
	movw	%ax, 7840(%rcx)
	movq	img, %rcx
	movw	%ax, 7826(%rcx)
	movq	img, %rcx
	movw	%ax, 7812(%rcx)
	movq	img, %rcx
	movw	%ax, 7798(%rcx)
	movl	-64(%rbp), %eax
	addl	-56(%rbp), %eax
	movl	-60(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 7856(%rcx)
	movq	img, %rcx
	movw	%ax, 7842(%rcx)
	movq	img, %rcx
	movw	%ax, 7828(%rcx)
	movq	img, %rcx
	movw	%ax, 7814(%rcx)
	movl	-60(%rbp), %eax
	addl	-52(%rbp), %eax
	movl	-56(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 7858(%rcx)
	movq	img, %rcx
	movw	%ax, 7844(%rcx)
	movq	img, %rcx
	movw	%ax, 7830(%rcx)
	movl	-56(%rbp), %eax
	addl	-48(%rbp), %eax
	movl	-52(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 7860(%rcx)
	movq	img, %rcx
	movw	%ax, 7846(%rcx)
	movl	-52(%rbp), %eax
	imull	$3, -48(%rbp), %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 7862(%rcx)
	movl	-108(%rbp), %eax
	addl	-104(%rbp), %eax
	addl	$1, %eax
	sarl	$1, %eax
	movq	img, %rcx
	movw	%ax, 8248(%rcx)
	movl	-104(%rbp), %eax
	addl	-100(%rbp), %eax
	addl	$1, %eax
	sarl	$1, %eax
	movq	img, %rcx
	movw	%ax, 8280(%rcx)
	movq	img, %rcx
	movw	%ax, 8250(%rcx)
	movl	-100(%rbp), %eax
	addl	-96(%rbp), %eax
	addl	$1, %eax
	sarl	$1, %eax
	movq	img, %rcx
	movw	%ax, 8312(%rcx)
	movq	img, %rcx
	movw	%ax, 8282(%rcx)
	movq	img, %rcx
	movw	%ax, 8252(%rcx)
	movl	-96(%rbp), %eax
	addl	-92(%rbp), %eax
	addl	$1, %eax
	sarl	$1, %eax
	movq	img, %rcx
	movw	%ax, 8344(%rcx)
	movq	img, %rcx
	movw	%ax, 8314(%rcx)
	movq	img, %rcx
	movw	%ax, 8284(%rcx)
	movq	img, %rcx
	movw	%ax, 8254(%rcx)
	movl	-92(%rbp), %eax
	addl	-88(%rbp), %eax
	addl	$1, %eax
	sarl	$1, %eax
	movq	img, %rcx
	movw	%ax, 8346(%rcx)
	movq	img, %rcx
	movw	%ax, 8316(%rcx)
	movq	img, %rcx
	movw	%ax, 8286(%rcx)
	movq	img, %rcx
	movw	%ax, 8256(%rcx)
	movl	-88(%rbp), %eax
	addl	-84(%rbp), %eax
	addl	$1, %eax
	sarl	$1, %eax
	movq	img, %rcx
	movw	%ax, 8348(%rcx)
	movq	img, %rcx
	movw	%ax, 8318(%rcx)
	movq	img, %rcx
	movw	%ax, 8288(%rcx)
	movq	img, %rcx
	movw	%ax, 8258(%rcx)
	movl	-84(%rbp), %eax
	addl	-80(%rbp), %eax
	addl	$1, %eax
	sarl	$1, %eax
	movq	img, %rcx
	movw	%ax, 8350(%rcx)
	movq	img, %rcx
	movw	%ax, 8320(%rcx)
	movq	img, %rcx
	movw	%ax, 8290(%rcx)
	movq	img, %rcx
	movw	%ax, 8260(%rcx)
	movl	-80(%rbp), %eax
	addl	-76(%rbp), %eax
	addl	$1, %eax
	sarl	$1, %eax
	movq	img, %rcx
	movw	%ax, 8352(%rcx)
	movq	img, %rcx
	movw	%ax, 8322(%rcx)
	movq	img, %rcx
	movw	%ax, 8292(%rcx)
	movq	img, %rcx
	movw	%ax, 8262(%rcx)
	movl	-76(%rbp), %eax
	addl	-72(%rbp), %eax
	addl	$1, %eax
	sarl	$1, %eax
	movq	img, %rcx
	movw	%ax, 8354(%rcx)
	movq	img, %rcx
	movw	%ax, 8324(%rcx)
	movq	img, %rcx
	movw	%ax, 8294(%rcx)
	movl	-72(%rbp), %eax
	addl	-68(%rbp), %eax
	addl	$1, %eax
	sarl	$1, %eax
	movq	img, %rcx
	movw	%ax, 8356(%rcx)
	movq	img, %rcx
	movw	%ax, 8326(%rcx)
	movl	-68(%rbp), %eax
	addl	-64(%rbp), %eax
	addl	$1, %eax
	sarl	$1, %eax
	movq	img, %rcx
	movw	%ax, 8358(%rcx)
	movl	-108(%rbp), %eax
	addl	-100(%rbp), %eax
	movl	-104(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 8264(%rcx)
	movl	-104(%rbp), %eax
	addl	-96(%rbp), %eax
	movl	-100(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 8296(%rcx)
	movq	img, %rcx
	movw	%ax, 8266(%rcx)
	movl	-100(%rbp), %eax
	addl	-92(%rbp), %eax
	movl	-96(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 8328(%rcx)
	movq	img, %rcx
	movw	%ax, 8298(%rcx)
	movq	img, %rcx
	movw	%ax, 8268(%rcx)
	movl	-96(%rbp), %eax
	addl	-88(%rbp), %eax
	movl	-92(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 8360(%rcx)
	movq	img, %rcx
	movw	%ax, 8330(%rcx)
	movq	img, %rcx
	movw	%ax, 8300(%rcx)
	movq	img, %rcx
	movw	%ax, 8270(%rcx)
	movl	-92(%rbp), %eax
	addl	-84(%rbp), %eax
	movl	-88(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 8362(%rcx)
	movq	img, %rcx
	movw	%ax, 8332(%rcx)
	movq	img, %rcx
	movw	%ax, 8302(%rcx)
	movq	img, %rcx
	movw	%ax, 8272(%rcx)
	movl	-88(%rbp), %eax
	addl	-80(%rbp), %eax
	movl	-84(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 8364(%rcx)
	movq	img, %rcx
	movw	%ax, 8334(%rcx)
	movq	img, %rcx
	movw	%ax, 8304(%rcx)
	movq	img, %rcx
	movw	%ax, 8274(%rcx)
	movl	-84(%rbp), %eax
	addl	-76(%rbp), %eax
	movl	-80(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 8366(%rcx)
	movq	img, %rcx
	movw	%ax, 8336(%rcx)
	movq	img, %rcx
	movw	%ax, 8306(%rcx)
	movq	img, %rcx
	movw	%ax, 8276(%rcx)
	movl	-80(%rbp), %eax
	addl	-72(%rbp), %eax
	movl	-76(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 8368(%rcx)
	movq	img, %rcx
	movw	%ax, 8338(%rcx)
	movq	img, %rcx
	movw	%ax, 8308(%rcx)
	movq	img, %rcx
	movw	%ax, 8278(%rcx)
	movl	-76(%rbp), %eax
	addl	-68(%rbp), %eax
	movl	-72(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 8370(%rcx)
	movq	img, %rcx
	movw	%ax, 8340(%rcx)
	movq	img, %rcx
	movw	%ax, 8310(%rcx)
	movl	-72(%rbp), %eax
	addl	-64(%rbp), %eax
	movl	-68(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 8372(%rcx)
	movq	img, %rcx
	movw	%ax, 8342(%rcx)
	movl	-68(%rbp), %eax
	addl	-60(%rbp), %eax
	movl	-64(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 8374(%rcx)
.LBB22_76:                              # %if.end1383
	cmpl	$0, -132(%rbp)
	je	.LBB22_80
# %bb.77:                               # %land.lhs.true1385
	cmpl	$0, -116(%rbp)
	je	.LBB22_80
# %bb.78:                               # %land.lhs.true1387
	cmpl	$0, -152(%rbp)
	je	.LBB22_80
# %bb.79:                               # %if.then1389
	movl	-16(%rbp), %eax
	addl	-24(%rbp), %eax
	movl	-20(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 7976(%rcx)
	movl	-20(%rbp), %eax
	addl	-28(%rbp), %eax
	movl	-24(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 7978(%rcx)
	movq	img, %rcx
	movw	%ax, 7960(%rcx)
	movl	-24(%rbp), %eax
	addl	-32(%rbp), %eax
	movl	-28(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 7980(%rcx)
	movq	img, %rcx
	movw	%ax, 7962(%rcx)
	movq	img, %rcx
	movw	%ax, 7944(%rcx)
	movl	-28(%rbp), %eax
	addl	-36(%rbp), %eax
	movl	-32(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 7982(%rcx)
	movq	img, %rcx
	movw	%ax, 7964(%rcx)
	movq	img, %rcx
	movw	%ax, 7946(%rcx)
	movq	img, %rcx
	movw	%ax, 7928(%rcx)
	movl	-32(%rbp), %eax
	addl	-40(%rbp), %eax
	movl	-36(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 7984(%rcx)
	movq	img, %rcx
	movw	%ax, 7966(%rcx)
	movq	img, %rcx
	movw	%ax, 7948(%rcx)
	movq	img, %rcx
	movw	%ax, 7930(%rcx)
	movq	img, %rcx
	movw	%ax, 7912(%rcx)
	movl	-36(%rbp), %eax
	addl	-44(%rbp), %eax
	movl	-40(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 7986(%rcx)
	movq	img, %rcx
	movw	%ax, 7968(%rcx)
	movq	img, %rcx
	movw	%ax, 7950(%rcx)
	movq	img, %rcx
	movw	%ax, 7932(%rcx)
	movq	img, %rcx
	movw	%ax, 7914(%rcx)
	movq	img, %rcx
	movw	%ax, 7896(%rcx)
	movl	-40(%rbp), %eax
	addl	-112(%rbp), %eax
	movl	-44(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 7988(%rcx)
	movq	img, %rcx
	movw	%ax, 7970(%rcx)
	movq	img, %rcx
	movw	%ax, 7952(%rcx)
	movq	img, %rcx
	movw	%ax, 7934(%rcx)
	movq	img, %rcx
	movw	%ax, 7916(%rcx)
	movq	img, %rcx
	movw	%ax, 7898(%rcx)
	movq	img, %rcx
	movw	%ax, 7880(%rcx)
	movl	-44(%rbp), %eax
	addl	-108(%rbp), %eax
	movl	-112(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 7990(%rcx)
	movq	img, %rcx
	movw	%ax, 7972(%rcx)
	movq	img, %rcx
	movw	%ax, 7954(%rcx)
	movq	img, %rcx
	movw	%ax, 7936(%rcx)
	movq	img, %rcx
	movw	%ax, 7918(%rcx)
	movq	img, %rcx
	movw	%ax, 7900(%rcx)
	movq	img, %rcx
	movw	%ax, 7882(%rcx)
	movq	img, %rcx
	movw	%ax, 7864(%rcx)
	movl	-112(%rbp), %eax
	addl	-104(%rbp), %eax
	movl	-108(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 7974(%rcx)
	movq	img, %rcx
	movw	%ax, 7956(%rcx)
	movq	img, %rcx
	movw	%ax, 7938(%rcx)
	movq	img, %rcx
	movw	%ax, 7920(%rcx)
	movq	img, %rcx
	movw	%ax, 7902(%rcx)
	movq	img, %rcx
	movw	%ax, 7884(%rcx)
	movq	img, %rcx
	movw	%ax, 7866(%rcx)
	movl	-108(%rbp), %eax
	addl	-100(%rbp), %eax
	movl	-104(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 7958(%rcx)
	movq	img, %rcx
	movw	%ax, 7940(%rcx)
	movq	img, %rcx
	movw	%ax, 7922(%rcx)
	movq	img, %rcx
	movw	%ax, 7904(%rcx)
	movq	img, %rcx
	movw	%ax, 7886(%rcx)
	movq	img, %rcx
	movw	%ax, 7868(%rcx)
	movl	-104(%rbp), %eax
	addl	-96(%rbp), %eax
	movl	-100(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 7942(%rcx)
	movq	img, %rcx
	movw	%ax, 7924(%rcx)
	movq	img, %rcx
	movw	%ax, 7906(%rcx)
	movq	img, %rcx
	movw	%ax, 7888(%rcx)
	movq	img, %rcx
	movw	%ax, 7870(%rcx)
	movl	-100(%rbp), %eax
	addl	-92(%rbp), %eax
	movl	-96(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 7926(%rcx)
	movq	img, %rcx
	movw	%ax, 7908(%rcx)
	movq	img, %rcx
	movw	%ax, 7890(%rcx)
	movq	img, %rcx
	movw	%ax, 7872(%rcx)
	movl	-96(%rbp), %eax
	addl	-88(%rbp), %eax
	movl	-92(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 7910(%rcx)
	movq	img, %rcx
	movw	%ax, 7892(%rcx)
	movq	img, %rcx
	movw	%ax, 7874(%rcx)
	movl	-92(%rbp), %eax
	addl	-84(%rbp), %eax
	movl	-88(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 7894(%rcx)
	movq	img, %rcx
	movw	%ax, 7876(%rcx)
	movl	-88(%rbp), %eax
	addl	-80(%rbp), %eax
	movl	-84(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 7878(%rcx)
	movl	-112(%rbp), %eax
	addl	-108(%rbp), %eax
	addl	$1, %eax
	sarl	$1, %eax
	movq	img, %rcx
	movw	%ax, 8094(%rcx)
	movq	img, %rcx
	movw	%ax, 8060(%rcx)
	movq	img, %rcx
	movw	%ax, 8026(%rcx)
	movq	img, %rcx
	movw	%ax, 7992(%rcx)
	movl	-108(%rbp), %eax
	addl	-104(%rbp), %eax
	addl	$1, %eax
	sarl	$1, %eax
	movq	img, %rcx
	movw	%ax, 8096(%rcx)
	movq	img, %rcx
	movw	%ax, 8062(%rcx)
	movq	img, %rcx
	movw	%ax, 8028(%rcx)
	movq	img, %rcx
	movw	%ax, 7994(%rcx)
	movl	-104(%rbp), %eax
	addl	-100(%rbp), %eax
	addl	$1, %eax
	sarl	$1, %eax
	movq	img, %rcx
	movw	%ax, 8098(%rcx)
	movq	img, %rcx
	movw	%ax, 8064(%rcx)
	movq	img, %rcx
	movw	%ax, 8030(%rcx)
	movq	img, %rcx
	movw	%ax, 7996(%rcx)
	movl	-100(%rbp), %eax
	addl	-96(%rbp), %eax
	addl	$1, %eax
	sarl	$1, %eax
	movq	img, %rcx
	movw	%ax, 8100(%rcx)
	movq	img, %rcx
	movw	%ax, 8066(%rcx)
	movq	img, %rcx
	movw	%ax, 8032(%rcx)
	movq	img, %rcx
	movw	%ax, 7998(%rcx)
	movl	-96(%rbp), %eax
	addl	-92(%rbp), %eax
	addl	$1, %eax
	sarl	$1, %eax
	movq	img, %rcx
	movw	%ax, 8102(%rcx)
	movq	img, %rcx
	movw	%ax, 8068(%rcx)
	movq	img, %rcx
	movw	%ax, 8034(%rcx)
	movq	img, %rcx
	movw	%ax, 8000(%rcx)
	movl	-92(%rbp), %eax
	addl	-88(%rbp), %eax
	addl	$1, %eax
	sarl	$1, %eax
	movq	img, %rcx
	movw	%ax, 8070(%rcx)
	movq	img, %rcx
	movw	%ax, 8036(%rcx)
	movq	img, %rcx
	movw	%ax, 8002(%rcx)
	movl	-88(%rbp), %eax
	addl	-84(%rbp), %eax
	addl	$1, %eax
	sarl	$1, %eax
	movq	img, %rcx
	movw	%ax, 8038(%rcx)
	movq	img, %rcx
	movw	%ax, 8004(%rcx)
	movl	-84(%rbp), %eax
	addl	-80(%rbp), %eax
	addl	$1, %eax
	sarl	$1, %eax
	movq	img, %rcx
	movw	%ax, 8006(%rcx)
	movl	-44(%rbp), %eax
	addl	-108(%rbp), %eax
	movl	-112(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 8110(%rcx)
	movq	img, %rcx
	movw	%ax, 8076(%rcx)
	movq	img, %rcx
	movw	%ax, 8042(%rcx)
	movq	img, %rcx
	movw	%ax, 8008(%rcx)
	movl	-112(%rbp), %eax
	addl	-104(%rbp), %eax
	movl	-108(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 8112(%rcx)
	movq	img, %rcx
	movw	%ax, 8078(%rcx)
	movq	img, %rcx
	movw	%ax, 8044(%rcx)
	movq	img, %rcx
	movw	%ax, 8010(%rcx)
	movl	-108(%rbp), %eax
	addl	-100(%rbp), %eax
	movl	-104(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 8114(%rcx)
	movq	img, %rcx
	movw	%ax, 8080(%rcx)
	movq	img, %rcx
	movw	%ax, 8046(%rcx)
	movq	img, %rcx
	movw	%ax, 8012(%rcx)
	movl	-104(%rbp), %eax
	addl	-96(%rbp), %eax
	movl	-100(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 8116(%rcx)
	movq	img, %rcx
	movw	%ax, 8082(%rcx)
	movq	img, %rcx
	movw	%ax, 8048(%rcx)
	movq	img, %rcx
	movw	%ax, 8014(%rcx)
	movl	-100(%rbp), %eax
	addl	-92(%rbp), %eax
	movl	-96(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 8118(%rcx)
	movq	img, %rcx
	movw	%ax, 8084(%rcx)
	movq	img, %rcx
	movw	%ax, 8050(%rcx)
	movq	img, %rcx
	movw	%ax, 8016(%rcx)
	movl	-96(%rbp), %eax
	addl	-88(%rbp), %eax
	movl	-92(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 8086(%rcx)
	movq	img, %rcx
	movw	%ax, 8052(%rcx)
	movq	img, %rcx
	movw	%ax, 8018(%rcx)
	movl	-92(%rbp), %eax
	addl	-84(%rbp), %eax
	movl	-88(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 8054(%rcx)
	movq	img, %rcx
	movw	%ax, 8020(%rcx)
	movl	-88(%rbp), %eax
	addl	-80(%rbp), %eax
	movl	-84(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 8022(%rcx)
	movl	-40(%rbp), %eax
	addl	-112(%rbp), %eax
	movl	-44(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 8092(%rcx)
	movq	img, %rcx
	movw	%ax, 8058(%rcx)
	movq	img, %rcx
	movw	%ax, 8024(%rcx)
	movl	-36(%rbp), %eax
	addl	-44(%rbp), %eax
	movl	-40(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 8108(%rcx)
	movq	img, %rcx
	movw	%ax, 8074(%rcx)
	movq	img, %rcx
	movw	%ax, 8040(%rcx)
	movl	-32(%rbp), %eax
	addl	-40(%rbp), %eax
	movl	-36(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 8090(%rcx)
	movq	img, %rcx
	movw	%ax, 8056(%rcx)
	movl	-28(%rbp), %eax
	addl	-36(%rbp), %eax
	movl	-32(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 8106(%rcx)
	movq	img, %rcx
	movw	%ax, 8072(%rcx)
	movl	-24(%rbp), %eax
	addl	-32(%rbp), %eax
	movl	-28(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 8088(%rcx)
	movl	-20(%rbp), %eax
	addl	-28(%rbp), %eax
	movl	-24(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 8104(%rcx)
	movl	-44(%rbp), %eax
	addl	-112(%rbp), %eax
	addl	$1, %eax
	sarl	$1, %eax
	movq	img, %rcx
	movw	%ax, 8180(%rcx)
	movq	img, %rcx
	movw	%ax, 8160(%rcx)
	movq	img, %rcx
	movw	%ax, 8140(%rcx)
	movq	img, %rcx
	movw	%ax, 8120(%rcx)
	movl	-40(%rbp), %eax
	addl	-44(%rbp), %eax
	addl	$1, %eax
	sarl	$1, %eax
	movq	img, %rcx
	movw	%ax, 8196(%rcx)
	movq	img, %rcx
	movw	%ax, 8176(%rcx)
	movq	img, %rcx
	movw	%ax, 8156(%rcx)
	movq	img, %rcx
	movw	%ax, 8136(%rcx)
	movl	-36(%rbp), %eax
	addl	-40(%rbp), %eax
	addl	$1, %eax
	sarl	$1, %eax
	movq	img, %rcx
	movw	%ax, 8212(%rcx)
	movq	img, %rcx
	movw	%ax, 8192(%rcx)
	movq	img, %rcx
	movw	%ax, 8172(%rcx)
	movq	img, %rcx
	movw	%ax, 8152(%rcx)
	movl	-32(%rbp), %eax
	addl	-36(%rbp), %eax
	addl	$1, %eax
	sarl	$1, %eax
	movq	img, %rcx
	movw	%ax, 8228(%rcx)
	movq	img, %rcx
	movw	%ax, 8208(%rcx)
	movq	img, %rcx
	movw	%ax, 8188(%rcx)
	movq	img, %rcx
	movw	%ax, 8168(%rcx)
	movl	-28(%rbp), %eax
	addl	-32(%rbp), %eax
	addl	$1, %eax
	sarl	$1, %eax
	movq	img, %rcx
	movw	%ax, 8244(%rcx)
	movq	img, %rcx
	movw	%ax, 8224(%rcx)
	movq	img, %rcx
	movw	%ax, 8204(%rcx)
	movq	img, %rcx
	movw	%ax, 8184(%rcx)
	movl	-24(%rbp), %eax
	addl	-28(%rbp), %eax
	addl	$1, %eax
	sarl	$1, %eax
	movq	img, %rcx
	movw	%ax, 8240(%rcx)
	movq	img, %rcx
	movw	%ax, 8220(%rcx)
	movq	img, %rcx
	movw	%ax, 8200(%rcx)
	movl	-20(%rbp), %eax
	addl	-24(%rbp), %eax
	addl	$1, %eax
	sarl	$1, %eax
	movq	img, %rcx
	movw	%ax, 8236(%rcx)
	movq	img, %rcx
	movw	%ax, 8216(%rcx)
	movl	-16(%rbp), %eax
	addl	-20(%rbp), %eax
	addl	$1, %eax
	sarl	$1, %eax
	movq	img, %rcx
	movw	%ax, 8232(%rcx)
	movl	-44(%rbp), %eax
	addl	-108(%rbp), %eax
	movl	-112(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 8182(%rcx)
	movq	img, %rcx
	movw	%ax, 8162(%rcx)
	movq	img, %rcx
	movw	%ax, 8142(%rcx)
	movq	img, %rcx
	movw	%ax, 8122(%rcx)
	movl	-112(%rbp), %eax
	addl	-40(%rbp), %eax
	movl	-44(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 8198(%rcx)
	movq	img, %rcx
	movw	%ax, 8178(%rcx)
	movq	img, %rcx
	movw	%ax, 8158(%rcx)
	movq	img, %rcx
	movw	%ax, 8138(%rcx)
	movl	-44(%rbp), %eax
	addl	-36(%rbp), %eax
	movl	-40(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 8214(%rcx)
	movq	img, %rcx
	movw	%ax, 8194(%rcx)
	movq	img, %rcx
	movw	%ax, 8174(%rcx)
	movq	img, %rcx
	movw	%ax, 8154(%rcx)
	movl	-40(%rbp), %eax
	addl	-32(%rbp), %eax
	movl	-36(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 8230(%rcx)
	movq	img, %rcx
	movw	%ax, 8210(%rcx)
	movq	img, %rcx
	movw	%ax, 8190(%rcx)
	movq	img, %rcx
	movw	%ax, 8170(%rcx)
	movl	-36(%rbp), %eax
	addl	-28(%rbp), %eax
	movl	-32(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 8246(%rcx)
	movq	img, %rcx
	movw	%ax, 8226(%rcx)
	movq	img, %rcx
	movw	%ax, 8206(%rcx)
	movq	img, %rcx
	movw	%ax, 8186(%rcx)
	movl	-32(%rbp), %eax
	addl	-24(%rbp), %eax
	movl	-28(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 8242(%rcx)
	movq	img, %rcx
	movw	%ax, 8222(%rcx)
	movq	img, %rcx
	movw	%ax, 8202(%rcx)
	movl	-28(%rbp), %eax
	addl	-20(%rbp), %eax
	movl	-24(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 8238(%rcx)
	movq	img, %rcx
	movw	%ax, 8218(%rcx)
	movl	-24(%rbp), %eax
	addl	-16(%rbp), %eax
	movl	-20(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 8234(%rcx)
	movl	-112(%rbp), %eax
	addl	-104(%rbp), %eax
	movl	-108(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 8164(%rcx)
	movq	img, %rcx
	movw	%ax, 8144(%rcx)
	movq	img, %rcx
	movw	%ax, 8124(%rcx)
	movl	-108(%rbp), %eax
	addl	-100(%rbp), %eax
	movl	-104(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 8166(%rcx)
	movq	img, %rcx
	movw	%ax, 8146(%rcx)
	movq	img, %rcx
	movw	%ax, 8126(%rcx)
	movl	-104(%rbp), %eax
	addl	-96(%rbp), %eax
	movl	-100(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 8148(%rcx)
	movq	img, %rcx
	movw	%ax, 8128(%rcx)
	movl	-100(%rbp), %eax
	addl	-92(%rbp), %eax
	movl	-96(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 8150(%rcx)
	movq	img, %rcx
	movw	%ax, 8130(%rcx)
	movl	-96(%rbp), %eax
	addl	-88(%rbp), %eax
	movl	-92(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 8132(%rcx)
	movl	-92(%rbp), %eax
	addl	-84(%rbp), %eax
	movl	-88(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 8134(%rcx)
.LBB22_80:                              # %if.end2641
	cmpl	$0, -116(%rbp)
	je	.LBB22_82
# %bb.81:                               # %if.then2643
	movl	-44(%rbp), %eax
	addl	-40(%rbp), %eax
	addl	$1, %eax
	sarl	$1, %eax
	movq	img, %rcx
	movw	%ax, 8376(%rcx)
	movl	-40(%rbp), %eax
	addl	-36(%rbp), %eax
	addl	$1, %eax
	sarl	$1, %eax
	movq	img, %rcx
	movw	%ax, 8380(%rcx)
	movq	img, %rcx
	movw	%ax, 8392(%rcx)
	movl	-36(%rbp), %eax
	addl	-32(%rbp), %eax
	addl	$1, %eax
	sarl	$1, %eax
	movq	img, %rcx
	movw	%ax, 8384(%rcx)
	movq	img, %rcx
	movw	%ax, 8396(%rcx)
	movq	img, %rcx
	movw	%ax, 8408(%rcx)
	movl	-32(%rbp), %eax
	addl	-28(%rbp), %eax
	addl	$1, %eax
	sarl	$1, %eax
	movq	img, %rcx
	movw	%ax, 8388(%rcx)
	movq	img, %rcx
	movw	%ax, 8400(%rcx)
	movq	img, %rcx
	movw	%ax, 8412(%rcx)
	movq	img, %rcx
	movw	%ax, 8424(%rcx)
	movl	-28(%rbp), %eax
	addl	-24(%rbp), %eax
	addl	$1, %eax
	sarl	$1, %eax
	movq	img, %rcx
	movw	%ax, 8404(%rcx)
	movq	img, %rcx
	movw	%ax, 8416(%rcx)
	movq	img, %rcx
	movw	%ax, 8428(%rcx)
	movq	img, %rcx
	movw	%ax, 8440(%rcx)
	movl	-24(%rbp), %eax
	addl	-20(%rbp), %eax
	addl	$1, %eax
	sarl	$1, %eax
	movq	img, %rcx
	movw	%ax, 8420(%rcx)
	movq	img, %rcx
	movw	%ax, 8432(%rcx)
	movq	img, %rcx
	movw	%ax, 8444(%rcx)
	movq	img, %rcx
	movw	%ax, 8456(%rcx)
	movl	-20(%rbp), %eax
	addl	-16(%rbp), %eax
	addl	$1, %eax
	sarl	$1, %eax
	movq	img, %rcx
	movw	%ax, 8436(%rcx)
	movq	img, %rcx
	movw	%ax, 8448(%rcx)
	movq	img, %rcx
	movw	%ax, 8460(%rcx)
	movq	img, %rcx
	movw	%ax, 8472(%rcx)
	movl	-16(%rbp), %eax
	movq	img, %rcx
	movw	%ax, 8502(%rcx)
	movq	img, %rcx
	movw	%ax, 8500(%rcx)
	movq	img, %rcx
	movw	%ax, 8498(%rcx)
	movq	img, %rcx
	movw	%ax, 8496(%rcx)
	movq	img, %rcx
	movw	%ax, 8494(%rcx)
	movq	img, %rcx
	movw	%ax, 8492(%rcx)
	movq	img, %rcx
	movw	%ax, 8490(%rcx)
	movq	img, %rcx
	movw	%ax, 8488(%rcx)
	movq	img, %rcx
	movw	%ax, 8486(%rcx)
	movq	img, %rcx
	movw	%ax, 8484(%rcx)
	movq	img, %rcx
	movw	%ax, 8482(%rcx)
	movq	img, %rcx
	movw	%ax, 8480(%rcx)
	movq	img, %rcx
	movw	%ax, 8478(%rcx)
	movq	img, %rcx
	movw	%ax, 8476(%rcx)
	movq	img, %rcx
	movw	%ax, 8470(%rcx)
	movq	img, %rcx
	movw	%ax, 8468(%rcx)
	movq	img, %rcx
	movw	%ax, 8466(%rcx)
	movq	img, %rcx
	movw	%ax, 8464(%rcx)
	movq	img, %rcx
	movw	%ax, 8454(%rcx)
	movq	img, %rcx
	movw	%ax, 8452(%rcx)
	movl	-20(%rbp), %eax
	imull	$3, -16(%rbp), %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 8438(%rcx)
	movq	img, %rcx
	movw	%ax, 8450(%rcx)
	movq	img, %rcx
	movw	%ax, 8462(%rcx)
	movq	img, %rcx
	movw	%ax, 8474(%rcx)
	movl	-16(%rbp), %eax
	addl	-24(%rbp), %eax
	movl	-20(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 8422(%rcx)
	movq	img, %rcx
	movw	%ax, 8434(%rcx)
	movq	img, %rcx
	movw	%ax, 8446(%rcx)
	movq	img, %rcx
	movw	%ax, 8458(%rcx)
	movl	-20(%rbp), %eax
	addl	-28(%rbp), %eax
	movl	-24(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 8406(%rcx)
	movq	img, %rcx
	movw	%ax, 8418(%rcx)
	movq	img, %rcx
	movw	%ax, 8430(%rcx)
	movq	img, %rcx
	movw	%ax, 8442(%rcx)
	movl	-24(%rbp), %eax
	addl	-32(%rbp), %eax
	movl	-28(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 8390(%rcx)
	movq	img, %rcx
	movw	%ax, 8402(%rcx)
	movq	img, %rcx
	movw	%ax, 8414(%rcx)
	movq	img, %rcx
	movw	%ax, 8426(%rcx)
	movl	-28(%rbp), %eax
	addl	-36(%rbp), %eax
	movl	-32(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 8386(%rcx)
	movq	img, %rcx
	movw	%ax, 8398(%rcx)
	movq	img, %rcx
	movw	%ax, 8410(%rcx)
	movl	-32(%rbp), %eax
	addl	-40(%rbp), %eax
	movl	-36(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 8382(%rcx)
	movq	img, %rcx
	movw	%ax, 8394(%rcx)
	movl	-36(%rbp), %eax
	addl	-44(%rbp), %eax
	movl	-40(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 8378(%rcx)
.LBB22_82:                              # %if.end3005
	cmpl	$1502933115, -224(%rbp) # imm = 0x5994F07B
	jne	.LBB22_84
.LBB22_83:
	addq	$464, %rsp              # imm = 0x1D0
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB22_84:                              # %func_exit
	.cfi_def_cfa %rbp, 16
	callq	detect_breach
	jmp	.LBB22_83
.Lfunc_end22:
	.size	intrapred_luma8x8.17, .Lfunc_end22-intrapred_luma8x8.17
	.cfi_endproc
                                        # -- End function
	.globl	dct_luma8x8.18          # -- Begin function dct_luma8x8.18
	.p2align	4, 0x90
	.type	dct_luma8x8.18,@function
dct_luma8x8.18:                         # @dct_luma8x8.18
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$664, %rsp              # imm = 0x298
	.cfi_offset %rbx, -24
	xorl	%ecx, %ecx
	movl	$260077146, -396(%rbp)  # imm = 0xF80765A
	movl	%edi, -36(%rbp)
	movq	%rsi, -352(%rbp)
	movl	%edx, -340(%rbp)
	movl	$0, -136(%rbp)
	movl	$0, -140(%rbp)
	movl	$0, -132(%rbp)
	movl	-36(%rbp), %eax
	cltd
	movl	$2, %esi
	idivl	%esi
	shll	$3, %edx
	movl	%edx, -52(%rbp)
	movl	-36(%rbp), %eax
	cltd
	idivl	%esi
	shll	$3, %eax
	movl	%eax, -40(%rbp)
	movq	img, %rax
	movq	14136(%rax), %rax
	movslq	-36(%rbp), %rdx
	movq	(%rax,%rdx,8), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -408(%rbp)
	movq	img, %rax
	movq	14136(%rax), %rax
	movslq	-36(%rbp), %rdx
	movq	(%rax,%rdx,8), %rax
	movq	(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, -416(%rbp)
	movq	img, %rax
	movq	14168(%rax), %rax
	movq	img, %rdx
	movslq	12(%rdx), %rdx
	imulq	$632, %rdx, %rdx        # imm = 0x278
	addq	%rdx, %rax
	movq	%rax, -392(%rbp)
	movq	img, %rax
	movl	40(%rax), %eax
	movq	img, %rdx
	addl	72668(%rdx), %eax
	cmpl	$0, %eax
	jne	.LBB23_2
# %bb.1:                                # %land.rhs
	movq	img, %rax
	cmpl	$1, 72704(%rax)
	sete	%cl
.LBB23_2:                               # %land.end
	andb	$1, %cl
	movzbl	%cl, %eax
	movl	%eax, -32(%rbp)
	movq	img, %rax
	movl	40(%rax), %eax
	movq	img, %rcx
	addl	72668(%rcx), %eax
	subl	$0, %eax
	cltd
	movl	$6, %ecx
	idivl	%ecx
	movl	%eax, -28(%rbp)
	movq	img, %rax
	movl	40(%rax), %eax
	movq	img, %rdx
	addl	72668(%rdx), %eax
	subl	$0, %eax
	cltd
	idivl	%ecx
	movl	%edx, -48(%rbp)
	movl	-28(%rbp), %eax
	addl	$16, %eax
	movl	%eax, -64(%rbp)
	cmpl	$6, -28(%rbp)
	jge	.LBB23_4
# %bb.3:                                # %if.then
	movl	$6, %eax
	subl	-28(%rbp), %eax
	movl	%eax, -140(%rbp)
	movl	$5, %ecx
	subl	-28(%rbp), %ecx
                                        # kill: def $cl killed $ecx
	movl	$1, %eax
	shll	%cl, %eax
	movl	%eax, -132(%rbp)
	jmp	.LBB23_5
.LBB23_4:                               # %if.else
	movl	-28(%rbp), %eax
	subl	$6, %eax
	movl	%eax, -136(%rbp)
.LBB23_5:                               # %if.end
	movq	img, %rax
	cmpl	$2, 24(%rax)
	jne	.LBB23_7
# %bb.6:                                # %if.then27
	movl	-64(%rbp), %ecx
                                        # kill: def $cl killed $ecx
	movl	$1, %eax
	shll	%cl, %eax
	cltd
	movl	$3, %ecx
	idivl	%ecx
	movl	%eax, -400(%rbp)
	jmp	.LBB23_8
.LBB23_7:                               # %if.else30
	movl	-64(%rbp), %ecx
                                        # kill: def $cl killed $ecx
	movl	$1, %eax
	shll	%cl, %eax
	cltd
	movl	$6, %ecx
	idivl	%ecx
	movl	%eax, -400(%rbp)
.LBB23_8:                               # %if.end33
	movl	$0, -12(%rbp)
.LBB23_9:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	cmpl	$8, -12(%rbp)
	jge	.LBB23_11
# %bb.10:                               # %land.rhs35
                                        #   in Loop: Header=BB23_9 Depth=1
	cmpl	$0, -32(%rbp)
	setne	%al
	xorb	$-1, %al
.LBB23_11:                              # %land.end36
                                        #   in Loop: Header=BB23_9 Depth=1
	testb	$1, %al
	jne	.LBB23_12
	jmp	.LBB23_14
.LBB23_12:                              # %for.body
                                        #   in Loop: Header=BB23_9 Depth=1
	xorl	%eax, %eax
	movq	img, %rcx
	movslq	-12(%rbp), %rdx
	movl	13112(%rcx,%rdx,4), %ecx
	movq	img, %rdx
	movslq	-12(%rbp), %rsi
	addl	13560(%rdx,%rsi,4), %ecx
	movl	%ecx, -96(%rbp)
	movq	img, %rcx
	movslq	-12(%rbp), %rdx
	movl	13176(%rcx,%rdx,4), %ecx
	movq	img, %rdx
	movslq	-12(%rbp), %rsi
	addl	13496(%rdx,%rsi,4), %ecx
	movl	%ecx, -92(%rbp)
	movq	img, %rcx
	movslq	-12(%rbp), %rdx
	movl	13240(%rcx,%rdx,4), %ecx
	movq	img, %rdx
	movslq	-12(%rbp), %rsi
	addl	13432(%rdx,%rsi,4), %ecx
	movl	%ecx, -88(%rbp)
	movq	img, %rcx
	movslq	-12(%rbp), %rdx
	movl	13304(%rcx,%rdx,4), %ecx
	movq	img, %rdx
	movslq	-12(%rbp), %rsi
	addl	13368(%rdx,%rsi,4), %ecx
	movl	%ecx, -84(%rbp)
	movl	-96(%rbp), %ecx
	addl	-84(%rbp), %ecx
	movl	%ecx, -304(%rbp)
	movl	-92(%rbp), %ecx
	addl	-88(%rbp), %ecx
	movl	%ecx, -300(%rbp)
	movl	-96(%rbp), %ecx
	subl	-84(%rbp), %ecx
	movl	%ecx, -296(%rbp)
	movl	-92(%rbp), %ecx
	subl	-88(%rbp), %ecx
	movl	%ecx, -292(%rbp)
	movq	img, %rcx
	movslq	-12(%rbp), %rdx
	movl	13112(%rcx,%rdx,4), %ecx
	movq	img, %rdx
	movslq	-12(%rbp), %rsi
	subl	13560(%rdx,%rsi,4), %ecx
	movl	%ecx, -80(%rbp)
	movq	img, %rcx
	movslq	-12(%rbp), %rdx
	movl	13176(%rcx,%rdx,4), %ecx
	movq	img, %rdx
	movslq	-12(%rbp), %rsi
	subl	13496(%rdx,%rsi,4), %ecx
	movl	%ecx, -76(%rbp)
	movq	img, %rcx
	movslq	-12(%rbp), %rdx
	movl	13240(%rcx,%rdx,4), %ecx
	movq	img, %rdx
	movslq	-12(%rbp), %rsi
	subl	13432(%rdx,%rsi,4), %ecx
	movl	%ecx, -72(%rbp)
	movq	img, %rcx
	movslq	-12(%rbp), %rdx
	movl	13304(%rcx,%rdx,4), %ecx
	movq	img, %rdx
	movslq	-12(%rbp), %rsi
	subl	13368(%rdx,%rsi,4), %ecx
	movl	%ecx, -68(%rbp)
	movl	-76(%rbp), %ecx
	addl	-72(%rbp), %ecx
	movl	-80(%rbp), %edx
	sarl	$1, %edx
	addl	-80(%rbp), %edx
	addl	%edx, %ecx
	movl	%ecx, -288(%rbp)
	movl	-80(%rbp), %ecx
	subl	-68(%rbp), %ecx
	movl	-72(%rbp), %edx
	sarl	$1, %edx
	addl	-72(%rbp), %edx
	subl	%edx, %ecx
	movl	%ecx, -284(%rbp)
	movl	-80(%rbp), %ecx
	addl	-68(%rbp), %ecx
	movl	-76(%rbp), %edx
	sarl	$1, %edx
	addl	-76(%rbp), %edx
	subl	%edx, %ecx
	movl	%ecx, -280(%rbp)
	movl	-76(%rbp), %ecx
	subl	-72(%rbp), %ecx
	movl	-68(%rbp), %edx
	sarl	$1, %edx
	addl	-68(%rbp), %edx
	addl	%edx, %ecx
	movl	%ecx, -276(%rbp)
	movl	-304(%rbp), %ecx
	addl	-300(%rbp), %ecx
	movslq	-12(%rbp), %rdx
	movl	%ecx, -672(%rbp,%rdx,4)
	movl	-296(%rbp), %ecx
	movl	-292(%rbp), %edx
	sarl	$1, %edx
	addl	%edx, %ecx
	movslq	-12(%rbp), %rdx
	movl	%ecx, -608(%rbp,%rdx,4)
	movl	-304(%rbp), %ecx
	subl	-300(%rbp), %ecx
	movslq	-12(%rbp), %rdx
	movl	%ecx, -544(%rbp,%rdx,4)
	movl	-296(%rbp), %ecx
	sarl	$1, %ecx
	subl	-292(%rbp), %ecx
	movslq	-12(%rbp), %rdx
	movl	%ecx, -480(%rbp,%rdx,4)
	movl	-288(%rbp), %ecx
	movl	-276(%rbp), %edx
	sarl	$2, %edx
	addl	%edx, %ecx
	movslq	-12(%rbp), %rdx
	movl	%ecx, -640(%rbp,%rdx,4)
	movl	-284(%rbp), %ecx
	movl	-280(%rbp), %edx
	sarl	$2, %edx
	addl	%edx, %ecx
	movslq	-12(%rbp), %rdx
	movl	%ecx, -576(%rbp,%rdx,4)
	movl	-280(%rbp), %ecx
	movl	-284(%rbp), %edx
	sarl	$2, %edx
	subl	%edx, %ecx
	movslq	-12(%rbp), %rdx
	movl	%ecx, -512(%rbp,%rdx,4)
	subl	-276(%rbp), %eax
	movl	-288(%rbp), %ecx
	sarl	$2, %ecx
	addl	%ecx, %eax
	movslq	-12(%rbp), %rcx
	movl	%eax, -448(%rbp,%rcx,4)
# %bb.13:                               # %for.inc
                                        #   in Loop: Header=BB23_9 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB23_9
.LBB23_14:                              # %for.end
	movl	$0, -12(%rbp)
.LBB23_15:                              # %for.cond223
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	cmpl	$8, -12(%rbp)
	jge	.LBB23_17
# %bb.16:                               # %land.rhs225
                                        #   in Loop: Header=BB23_15 Depth=1
	cmpl	$0, -32(%rbp)
	setne	%al
	xorb	$-1, %al
.LBB23_17:                              # %land.end228
                                        #   in Loop: Header=BB23_15 Depth=1
	testb	$1, %al
	jne	.LBB23_18
	jmp	.LBB23_20
.LBB23_18:                              # %for.body230
                                        #   in Loop: Header=BB23_15 Depth=1
	xorl	%eax, %eax
	movslq	-12(%rbp), %rdx
	shlq	$5, %rdx
	leaq	-672(%rbp), %rcx
	movq	%rcx, %rsi
	addq	%rdx, %rsi
	movl	(%rsi), %edx
	movslq	-12(%rbp), %rsi
	shlq	$5, %rsi
	movq	%rcx, %rdi
	addq	%rsi, %rdi
	addl	28(%rdi), %edx
	movl	%edx, -128(%rbp)
	movslq	-12(%rbp), %rdx
	shlq	$5, %rdx
	movq	%rcx, %rsi
	addq	%rdx, %rsi
	movl	4(%rsi), %edx
	movslq	-12(%rbp), %rsi
	shlq	$5, %rsi
	movq	%rcx, %rdi
	addq	%rsi, %rdi
	addl	24(%rdi), %edx
	movl	%edx, -124(%rbp)
	movslq	-12(%rbp), %rdx
	shlq	$5, %rdx
	movq	%rcx, %rsi
	addq	%rdx, %rsi
	movl	8(%rsi), %edx
	movslq	-12(%rbp), %rsi
	shlq	$5, %rsi
	movq	%rcx, %rdi
	addq	%rsi, %rdi
	addl	20(%rdi), %edx
	movl	%edx, -120(%rbp)
	movslq	-12(%rbp), %rdx
	shlq	$5, %rdx
	movq	%rcx, %rsi
	addq	%rdx, %rsi
	movl	12(%rsi), %edx
	movslq	-12(%rbp), %rsi
	shlq	$5, %rsi
	movq	%rcx, %rdi
	addq	%rsi, %rdi
	addl	16(%rdi), %edx
	movl	%edx, -116(%rbp)
	movl	-128(%rbp), %edx
	addl	-116(%rbp), %edx
	movl	%edx, -176(%rbp)
	movl	-124(%rbp), %edx
	addl	-120(%rbp), %edx
	movl	%edx, -172(%rbp)
	movl	-128(%rbp), %edx
	subl	-116(%rbp), %edx
	movl	%edx, -168(%rbp)
	movl	-124(%rbp), %edx
	subl	-120(%rbp), %edx
	movl	%edx, -164(%rbp)
	movslq	-12(%rbp), %rdx
	shlq	$5, %rdx
	movq	%rcx, %rsi
	addq	%rdx, %rsi
	movl	(%rsi), %edx
	movslq	-12(%rbp), %rsi
	shlq	$5, %rsi
	movq	%rcx, %rdi
	addq	%rsi, %rdi
	subl	28(%rdi), %edx
	movl	%edx, -112(%rbp)
	movslq	-12(%rbp), %rdx
	shlq	$5, %rdx
	movq	%rcx, %rsi
	addq	%rdx, %rsi
	movl	4(%rsi), %edx
	movslq	-12(%rbp), %rsi
	shlq	$5, %rsi
	movq	%rcx, %rdi
	addq	%rsi, %rdi
	subl	24(%rdi), %edx
	movl	%edx, -108(%rbp)
	movslq	-12(%rbp), %rdx
	shlq	$5, %rdx
	movq	%rcx, %rsi
	addq	%rdx, %rsi
	movl	8(%rsi), %edx
	movslq	-12(%rbp), %rsi
	shlq	$5, %rsi
	movq	%rcx, %rdi
	addq	%rsi, %rdi
	subl	20(%rdi), %edx
	movl	%edx, -104(%rbp)
	movslq	-12(%rbp), %rdx
	shlq	$5, %rdx
	movq	%rcx, %rsi
	addq	%rdx, %rsi
	movl	12(%rsi), %edx
	movslq	-12(%rbp), %rsi
	shlq	$5, %rsi
	addq	%rsi, %rcx
	subl	16(%rcx), %edx
	movl	%edx, -100(%rbp)
	movl	-108(%rbp), %ecx
	addl	-104(%rbp), %ecx
	movl	-112(%rbp), %edx
	sarl	$1, %edx
	addl	-112(%rbp), %edx
	addl	%edx, %ecx
	movl	%ecx, -160(%rbp)
	movl	-112(%rbp), %ecx
	subl	-100(%rbp), %ecx
	movl	-104(%rbp), %edx
	sarl	$1, %edx
	addl	-104(%rbp), %edx
	subl	%edx, %ecx
	movl	%ecx, -156(%rbp)
	movl	-112(%rbp), %ecx
	addl	-100(%rbp), %ecx
	movl	-108(%rbp), %edx
	sarl	$1, %edx
	addl	-108(%rbp), %edx
	subl	%edx, %ecx
	movl	%ecx, -152(%rbp)
	movl	-108(%rbp), %ecx
	subl	-104(%rbp), %ecx
	movl	-100(%rbp), %edx
	sarl	$1, %edx
	addl	-100(%rbp), %edx
	addl	%edx, %ecx
	movl	%ecx, -148(%rbp)
	movl	-176(%rbp), %ecx
	addl	-172(%rbp), %ecx
	movq	img, %rdx
	addq	$13112, %rdx            # imm = 0x3338
	movslq	-12(%rbp), %rsi
	shlq	$6, %rsi
	addq	%rsi, %rdx
	movl	%ecx, (%rdx)
	movl	-168(%rbp), %ecx
	movl	-164(%rbp), %edx
	sarl	$1, %edx
	addl	%edx, %ecx
	movq	img, %rdx
	addq	$13112, %rdx            # imm = 0x3338
	movslq	-12(%rbp), %rsi
	shlq	$6, %rsi
	addq	%rsi, %rdx
	movl	%ecx, 8(%rdx)
	movl	-176(%rbp), %ecx
	subl	-172(%rbp), %ecx
	movq	img, %rdx
	addq	$13112, %rdx            # imm = 0x3338
	movslq	-12(%rbp), %rsi
	shlq	$6, %rsi
	addq	%rsi, %rdx
	movl	%ecx, 16(%rdx)
	movl	-168(%rbp), %ecx
	sarl	$1, %ecx
	subl	-164(%rbp), %ecx
	movq	img, %rdx
	addq	$13112, %rdx            # imm = 0x3338
	movslq	-12(%rbp), %rsi
	shlq	$6, %rsi
	addq	%rsi, %rdx
	movl	%ecx, 24(%rdx)
	movl	-160(%rbp), %ecx
	movl	-148(%rbp), %edx
	sarl	$2, %edx
	addl	%edx, %ecx
	movq	img, %rdx
	addq	$13112, %rdx            # imm = 0x3338
	movslq	-12(%rbp), %rsi
	shlq	$6, %rsi
	addq	%rsi, %rdx
	movl	%ecx, 4(%rdx)
	movl	-156(%rbp), %ecx
	movl	-152(%rbp), %edx
	sarl	$2, %edx
	addl	%edx, %ecx
	movq	img, %rdx
	addq	$13112, %rdx            # imm = 0x3338
	movslq	-12(%rbp), %rsi
	shlq	$6, %rsi
	addq	%rsi, %rdx
	movl	%ecx, 12(%rdx)
	movl	-152(%rbp), %ecx
	movl	-156(%rbp), %edx
	sarl	$2, %edx
	subl	%edx, %ecx
	movq	img, %rdx
	addq	$13112, %rdx            # imm = 0x3338
	movslq	-12(%rbp), %rsi
	shlq	$6, %rsi
	addq	%rsi, %rdx
	movl	%ecx, 20(%rdx)
	subl	-148(%rbp), %eax
	movl	-160(%rbp), %ecx
	sarl	$2, %ecx
	addl	%ecx, %eax
	movq	img, %rcx
	addq	$13112, %rcx            # imm = 0x3338
	movslq	-12(%rbp), %rdx
	shlq	$6, %rdx
	addq	%rdx, %rcx
	movl	%eax, 28(%rcx)
# %bb.19:                               # %for.inc412
                                        #   in Loop: Header=BB23_15 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB23_15
.LBB23_20:                              # %for.end414
	movl	$0, -344(%rbp)
	movl	$-1, -56(%rbp)
	movl	$0, -60(%rbp)
	movl	$-1, -356(%rbp)
	movl	$-1, -360(%rbp)
	movl	$-1, -364(%rbp)
	movl	$-1, -368(%rbp)
	movl	$0, -372(%rbp)
	movl	$0, -376(%rbp)
	movl	$0, -380(%rbp)
	movl	$0, -384(%rbp)
	movl	$0, -20(%rbp)
.LBB23_21:                              # %for.cond423
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$64, -20(%rbp)
	jge	.LBB23_61
# %bb.22:                               # %for.body425
                                        #   in Loop: Header=BB23_21 Depth=1
	movq	img, %rax
	cmpl	$0, 72444(%rax)
	jne	.LBB23_25
# %bb.23:                               # %lor.lhs.false
                                        #   in Loop: Header=BB23_21 Depth=1
	movq	img, %rax
	cmpl	$0, 72400(%rax)
	je	.LBB23_26
# %bb.24:                               # %land.lhs.true
                                        #   in Loop: Header=BB23_21 Depth=1
	movq	-392(%rbp), %rax
	cmpl	$0, 532(%rax)
	je	.LBB23_26
.LBB23_25:                              # %if.then429
                                        #   in Loop: Header=BB23_21 Depth=1
	movslq	-20(%rbp), %rax
	movzbl	FIELD_SCAN8x8(,%rax,2), %eax
	movl	%eax, -12(%rbp)
	movslq	-20(%rbp), %rax
	movzbl	FIELD_SCAN8x8+1(,%rax,2), %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB23_27
.LBB23_26:                              # %if.else437
                                        #   in Loop: Header=BB23_21 Depth=1
	movslq	-20(%rbp), %rax
	movzbl	SNGL_SCAN8x8(,%rax,2), %eax
	movl	%eax, -12(%rbp)
	movslq	-20(%rbp), %rax
	movzbl	SNGL_SCAN8x8+1(,%rax,2), %eax
	movl	%eax, -16(%rbp)
.LBB23_27:                              # %if.end446
                                        #   in Loop: Header=BB23_21 Depth=1
	movl	-56(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -56(%rbp)
	movl	$0, -44(%rbp)
	movl	-20(%rbp), %eax
	andl	$3, %eax
	cltq
	movl	-368(%rbp,%rax,4), %ecx
	addl	$1, %ecx
	movl	%ecx, -368(%rbp,%rax,4)
	cmpl	$0, -32(%rbp)
	je	.LBB23_29
# %bb.28:                               # %if.then452
                                        #   in Loop: Header=BB23_21 Depth=1
	movq	img, %rax
	addq	$13112, %rax            # imm = 0x3338
	movslq	-12(%rbp), %rcx
	shlq	$6, %rcx
	addq	%rcx, %rax
	movslq	-16(%rbp), %rcx
	movl	(%rax,%rcx,4), %edi
	callq	abs
	movl	%eax, -24(%rbp)
	jmp	.LBB23_33
.LBB23_29:                              # %if.else458
                                        #   in Loop: Header=BB23_21 Depth=1
	cmpl	$1, -340(%rbp)
	jne	.LBB23_31
# %bb.30:                               # %if.then461
                                        #   in Loop: Header=BB23_21 Depth=1
	movq	img, %rax
	addq	$13112, %rax            # imm = 0x3338
	movslq	-12(%rbp), %rcx
	shlq	$6, %rcx
	addq	%rcx, %rax
	movslq	-16(%rbp), %rcx
	movl	(%rax,%rcx,4), %edi
	callq	abs
	movslq	-48(%rbp), %rcx
	shlq	$8, %rcx
	movabsq	$LevelScale8x8Luma_Intra, %rdx
	addq	%rcx, %rdx
	movslq	-12(%rbp), %rcx
	shlq	$5, %rcx
	addq	%rcx, %rdx
	movslq	-16(%rbp), %rcx
	imull	(%rdx,%rcx,4), %eax
	movslq	-28(%rbp), %rcx
	shlq	$8, %rcx
	movabsq	$LevelOffset8x8Luma_Intra, %rdx
	addq	%rcx, %rdx
	movslq	-12(%rbp), %rcx
	shlq	$5, %rcx
	addq	%rcx, %rdx
	movslq	-16(%rbp), %rcx
	addl	(%rdx,%rcx,4), %eax
	movl	-64(%rbp), %ecx
                                        # kill: def $cl killed $ecx
	sarl	%cl, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB23_32
.LBB23_31:                              # %if.else483
                                        #   in Loop: Header=BB23_21 Depth=1
	movq	img, %rax
	addq	$13112, %rax            # imm = 0x3338
	movslq	-12(%rbp), %rcx
	shlq	$6, %rcx
	addq	%rcx, %rax
	movslq	-16(%rbp), %rcx
	movl	(%rax,%rcx,4), %edi
	callq	abs
	movslq	-48(%rbp), %rcx
	shlq	$8, %rcx
	movabsq	$LevelScale8x8Luma_Inter, %rdx
	addq	%rcx, %rdx
	movslq	-12(%rbp), %rcx
	shlq	$5, %rcx
	addq	%rcx, %rdx
	movslq	-16(%rbp), %rcx
	imull	(%rdx,%rcx,4), %eax
	movslq	-28(%rbp), %rcx
	shlq	$8, %rcx
	movabsq	$LevelOffset8x8Luma_Inter, %rdx
	addq	%rcx, %rdx
	movslq	-12(%rbp), %rcx
	shlq	$5, %rcx
	addq	%rcx, %rdx
	movslq	-16(%rbp), %rcx
	addl	(%rdx,%rcx,4), %eax
	movl	-64(%rbp), %ecx
                                        # kill: def $cl killed $ecx
	sarl	%cl, %eax
	movl	%eax, -24(%rbp)
.LBB23_32:                              # %if.end505
                                        #   in Loop: Header=BB23_21 Depth=1
	jmp	.LBB23_33
.LBB23_33:                              # %if.end506
                                        #   in Loop: Header=BB23_21 Depth=1
	cmpl	$0, -24(%rbp)
	je	.LBB23_57
# %bb.34:                               # %if.then509
                                        #   in Loop: Header=BB23_21 Depth=1
	movl	$1, -344(%rbp)
	movq	-392(%rbp), %rax
	cmpl	$0, 572(%rax)
	je	.LBB23_40
# %bb.35:                               # %land.lhs.true511
                                        #   in Loop: Header=BB23_21 Depth=1
	movq	input, %rax
	cmpl	$0, 2356(%rax)
	jne	.LBB23_40
# %bb.36:                               # %if.then514
                                        #   in Loop: Header=BB23_21 Depth=1
	cmpl	$1, -24(%rbp)
	jle	.LBB23_38
# %bb.37:                               # %if.then517
                                        #   in Loop: Header=BB23_21 Depth=1
	movq	-352(%rbp), %rax
	movl	(%rax), %ecx
	addl	$999999, %ecx           # imm = 0xF423F
	movl	%ecx, (%rax)
	jmp	.LBB23_39
.LBB23_38:                              # %if.else519
                                        #   in Loop: Header=BB23_21 Depth=1
	movabsq	$COEFF_COST8x8, %rax
	movq	input, %rcx
	movslq	2468(%rcx), %rcx
	shlq	$6, %rcx
	addq	%rcx, %rax
	movl	-20(%rbp), %ecx
	andl	$3, %ecx
	movslq	%ecx, %rcx
	movslq	-368(%rbp,%rcx,4), %rcx
	movzbl	(%rax,%rcx), %eax
	movq	-352(%rbp), %rcx
	addl	(%rcx), %eax
	movl	%eax, (%rcx)
.LBB23_39:                              # %if.end529
                                        #   in Loop: Header=BB23_21 Depth=1
	movl	-24(%rbp), %edi
	movq	img, %rax
	addq	$13112, %rax            # imm = 0x3338
	movslq	-12(%rbp), %rcx
	shlq	$6, %rcx
	addq	%rcx, %rax
	movslq	-16(%rbp), %rcx
	movl	(%rax,%rcx,4), %esi
	callq	sign
	movq	img, %rcx
	movq	14136(%rcx), %rcx
	movslq	-36(%rbp), %rdx
	movq	(%rcx,%rdx,8), %rcx
	movl	-20(%rbp), %edx
	andl	$3, %edx
	movslq	%edx, %rdx
	movq	(%rcx,%rdx,8), %rcx
	movq	(%rcx), %rcx
	movl	-20(%rbp), %edx
	andl	$3, %edx
	movslq	%edx, %rdx
	movslq	-384(%rbp,%rdx,4), %rdx
	movl	%eax, (%rcx,%rdx,4)
	movl	-20(%rbp), %eax
	andl	$3, %eax
	cltq
	movl	-368(%rbp,%rax,4), %eax
	movq	img, %rcx
	movq	14136(%rcx), %rcx
	movslq	-36(%rbp), %rdx
	movq	(%rcx,%rdx,8), %rcx
	movl	-20(%rbp), %edx
	andl	$3, %edx
	movslq	%edx, %rdx
	movq	(%rcx,%rdx,8), %rcx
	movq	8(%rcx), %rcx
	movl	-20(%rbp), %edx
	andl	$3, %edx
	movslq	%edx, %rdx
	movslq	-384(%rbp,%rdx,4), %rdx
	movl	%eax, (%rcx,%rdx,4)
	movl	-20(%rbp), %eax
	andl	$3, %eax
	cltq
	movl	-384(%rbp,%rax,4), %ecx
	addl	$1, %ecx
	movl	%ecx, -384(%rbp,%rax,4)
	movl	-20(%rbp), %eax
	andl	$3, %eax
	cltq
	movl	$-1, -368(%rbp,%rax,4)
	jmp	.LBB23_44
.LBB23_40:                              # %if.else570
                                        #   in Loop: Header=BB23_21 Depth=1
	cmpl	$1, -24(%rbp)
	jle	.LBB23_42
# %bb.41:                               # %if.then573
                                        #   in Loop: Header=BB23_21 Depth=1
	movq	-352(%rbp), %rax
	movl	(%rax), %ecx
	addl	$999999, %ecx           # imm = 0xF423F
	movl	%ecx, (%rax)
	jmp	.LBB23_43
.LBB23_42:                              # %if.else575
                                        #   in Loop: Header=BB23_21 Depth=1
	movabsq	$COEFF_COST8x8, %rax
	movq	input, %rcx
	movslq	2468(%rcx), %rcx
	shlq	$6, %rcx
	addq	%rcx, %rax
	movslq	-56(%rbp), %rcx
	movzbl	(%rax,%rcx), %eax
	movq	-352(%rbp), %rcx
	addl	(%rcx), %eax
	movl	%eax, (%rcx)
.LBB23_43:                              # %if.end583
                                        #   in Loop: Header=BB23_21 Depth=1
	movl	-24(%rbp), %edi
	movq	img, %rax
	addq	$13112, %rax            # imm = 0x3338
	movslq	-12(%rbp), %rcx
	shlq	$6, %rcx
	addq	%rcx, %rax
	movslq	-16(%rbp), %rcx
	movl	(%rax,%rcx,4), %esi
	callq	sign
	movq	-408(%rbp), %rcx
	movslq	-60(%rbp), %rdx
	movl	%eax, (%rcx,%rdx,4)
	movl	-56(%rbp), %eax
	movq	-416(%rbp), %rcx
	movslq	-60(%rbp), %rdx
	movl	%eax, (%rcx,%rdx,4)
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -60(%rbp)
	movl	$-1, -56(%rbp)
.LBB23_44:                              # %if.end595
                                        #   in Loop: Header=BB23_21 Depth=1
	movl	-24(%rbp), %edi
	movq	img, %rax
	addq	$13112, %rax            # imm = 0x3338
	movslq	-12(%rbp), %rcx
	shlq	$6, %rcx
	addq	%rcx, %rax
	movslq	-16(%rbp), %rcx
	movl	(%rax,%rcx,4), %esi
	callq	sign
	movl	%eax, -24(%rbp)
	cmpl	$0, -32(%rbp)
	je	.LBB23_46
# %bb.45:                               # %if.then603
                                        #   in Loop: Header=BB23_21 Depth=1
	movl	-24(%rbp), %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB23_56
.LBB23_46:                              # %if.else604
                                        #   in Loop: Header=BB23_21 Depth=1
	cmpl	$1, -340(%rbp)
	jne	.LBB23_51
# %bb.47:                               # %if.then607
                                        #   in Loop: Header=BB23_21 Depth=1
	cmpl	$6, -28(%rbp)
	jl	.LBB23_49
# %bb.48:                               # %if.then610
                                        #   in Loop: Header=BB23_21 Depth=1
	movl	-24(%rbp), %eax
	movslq	-48(%rbp), %rcx
	shlq	$8, %rcx
	movabsq	$InvLevelScale8x8Luma_Intra, %rdx
	addq	%rcx, %rdx
	movslq	-12(%rbp), %rcx
	shlq	$5, %rcx
	addq	%rcx, %rdx
	movslq	-16(%rbp), %rcx
	imull	(%rdx,%rcx,4), %eax
	movl	-136(%rbp), %ecx
                                        # kill: def $cl killed $ecx
	shll	%cl, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB23_50
.LBB23_49:                              # %if.else619
                                        #   in Loop: Header=BB23_21 Depth=1
	movl	-24(%rbp), %eax
	movslq	-48(%rbp), %rcx
	shlq	$8, %rcx
	movabsq	$InvLevelScale8x8Luma_Intra, %rdx
	addq	%rcx, %rdx
	movslq	-12(%rbp), %rcx
	shlq	$5, %rcx
	addq	%rcx, %rdx
	movslq	-16(%rbp), %rcx
	imull	(%rdx,%rcx,4), %eax
	addl	-132(%rbp), %eax
	movl	-140(%rbp), %ecx
                                        # kill: def $cl killed $ecx
	sarl	%cl, %eax
	movl	%eax, -44(%rbp)
.LBB23_50:                              # %if.end629
                                        #   in Loop: Header=BB23_21 Depth=1
	jmp	.LBB23_55
.LBB23_51:                              # %if.else630
                                        #   in Loop: Header=BB23_21 Depth=1
	cmpl	$6, -28(%rbp)
	jl	.LBB23_53
# %bb.52:                               # %if.then633
                                        #   in Loop: Header=BB23_21 Depth=1
	movl	-24(%rbp), %eax
	movslq	-48(%rbp), %rcx
	shlq	$8, %rcx
	movabsq	$InvLevelScale8x8Luma_Inter, %rdx
	addq	%rcx, %rdx
	movslq	-12(%rbp), %rcx
	shlq	$5, %rcx
	addq	%rcx, %rdx
	movslq	-16(%rbp), %rcx
	imull	(%rdx,%rcx,4), %eax
	movl	-136(%rbp), %ecx
                                        # kill: def $cl killed $ecx
	shll	%cl, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB23_54
.LBB23_53:                              # %if.else642
                                        #   in Loop: Header=BB23_21 Depth=1
	movl	-24(%rbp), %eax
	movslq	-48(%rbp), %rcx
	shlq	$8, %rcx
	movabsq	$InvLevelScale8x8Luma_Inter, %rdx
	addq	%rcx, %rdx
	movslq	-12(%rbp), %rcx
	shlq	$5, %rcx
	addq	%rcx, %rdx
	movslq	-16(%rbp), %rcx
	imull	(%rdx,%rcx,4), %eax
	addl	-132(%rbp), %eax
	movl	-140(%rbp), %ecx
                                        # kill: def $cl killed $ecx
	sarl	%cl, %eax
	movl	%eax, -44(%rbp)
.LBB23_54:                              # %if.end652
                                        #   in Loop: Header=BB23_21 Depth=1
	jmp	.LBB23_55
.LBB23_55:                              # %if.end653
                                        #   in Loop: Header=BB23_21 Depth=1
	jmp	.LBB23_56
.LBB23_56:                              # %if.end654
                                        #   in Loop: Header=BB23_21 Depth=1
	jmp	.LBB23_57
.LBB23_57:                              # %if.end655
                                        #   in Loop: Header=BB23_21 Depth=1
	cmpl	$0, -32(%rbp)
	jne	.LBB23_59
# %bb.58:                               # %if.then657
                                        #   in Loop: Header=BB23_21 Depth=1
	movl	-44(%rbp), %eax
	movq	img, %rcx
	addq	$13112, %rcx            # imm = 0x3338
	movslq	-12(%rbp), %rdx
	shlq	$6, %rdx
	addq	%rdx, %rcx
	movslq	-16(%rbp), %rdx
	movl	%eax, (%rcx,%rdx,4)
.LBB23_59:                              # %if.end663
                                        #   in Loop: Header=BB23_21 Depth=1
	jmp	.LBB23_60
.LBB23_60:                              # %for.inc664
                                        #   in Loop: Header=BB23_21 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB23_21
.LBB23_61:                              # %for.end666
	movq	-392(%rbp), %rax
	cmpl	$0, 572(%rax)
	je	.LBB23_63
# %bb.62:                               # %lor.lhs.false669
	movq	input, %rax
	cmpl	$0, 2356(%rax)
	je	.LBB23_64
.LBB23_63:                              # %if.then673
	movq	-408(%rbp), %rax
	movslq	-60(%rbp), %rcx
	movl	$0, (%rax,%rcx,4)
	jmp	.LBB23_69
.LBB23_64:                              # %if.else676
	movl	$0, -12(%rbp)
.LBB23_65:                              # %for.cond677
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$4, -12(%rbp)
	jge	.LBB23_68
# %bb.66:                               # %for.body680
                                        #   in Loop: Header=BB23_65 Depth=1
	movq	img, %rax
	movq	14136(%rax), %rax
	movslq	-36(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movslq	-12(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movq	(%rax), %rax
	movslq	-12(%rbp), %rcx
	movslq	-384(%rbp,%rcx,4), %rcx
	movl	$0, (%rax,%rcx,4)
# %bb.67:                               # %for.inc691
                                        #   in Loop: Header=BB23_65 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB23_65
.LBB23_68:                              # %for.end693
	jmp	.LBB23_69
.LBB23_69:                              # %if.end694
	movl	$0, -12(%rbp)
.LBB23_70:                              # %for.cond695
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	cmpl	$8, -12(%rbp)
	jge	.LBB23_72
# %bb.71:                               # %land.rhs698
                                        #   in Loop: Header=BB23_70 Depth=1
	cmpl	$0, -32(%rbp)
	setne	%al
	xorb	$-1, %al
.LBB23_72:                              # %land.end701
                                        #   in Loop: Header=BB23_70 Depth=1
	testb	$1, %al
	jne	.LBB23_73
	jmp	.LBB23_75
.LBB23_73:                              # %for.body703
                                        #   in Loop: Header=BB23_70 Depth=1
	xorl	%eax, %eax
	movq	img, %rcx
	movslq	-12(%rbp), %rdx
	movl	13112(%rcx,%rdx,4), %ecx
	movq	img, %rdx
	movslq	-12(%rbp), %rsi
	addl	13368(%rdx,%rsi,4), %ecx
	movl	%ecx, -208(%rbp)
	movq	img, %rcx
	movslq	-12(%rbp), %rdx
	movl	13112(%rcx,%rdx,4), %ecx
	movq	img, %rdx
	movslq	-12(%rbp), %rsi
	subl	13368(%rdx,%rsi,4), %ecx
	movl	%ecx, -192(%rbp)
	movq	img, %rcx
	movslq	-12(%rbp), %rdx
	movl	13240(%rcx,%rdx,4), %ecx
	sarl	$1, %ecx
	movq	img, %rdx
	movslq	-12(%rbp), %rsi
	subl	13496(%rdx,%rsi,4), %ecx
	movl	%ecx, -200(%rbp)
	movq	img, %rcx
	movslq	-12(%rbp), %rdx
	movl	13240(%rcx,%rdx,4), %ecx
	movq	img, %rdx
	movslq	-12(%rbp), %rsi
	movl	13496(%rdx,%rsi,4), %edx
	sarl	$1, %edx
	addl	%edx, %ecx
	movl	%ecx, -184(%rbp)
	movl	-208(%rbp), %ecx
	addl	-184(%rbp), %ecx
	movl	%ecx, -240(%rbp)
	movl	-192(%rbp), %ecx
	addl	-200(%rbp), %ecx
	movl	%ecx, -232(%rbp)
	movl	-192(%rbp), %ecx
	subl	-200(%rbp), %ecx
	movl	%ecx, -224(%rbp)
	movl	-208(%rbp), %ecx
	subl	-184(%rbp), %ecx
	movl	%ecx, -216(%rbp)
	movq	img, %rcx
	movslq	-12(%rbp), %rdx
	xorl	%esi, %esi
	subl	13304(%rcx,%rdx,4), %esi
	movq	img, %rcx
	movslq	-12(%rbp), %rdx
	addl	13432(%rcx,%rdx,4), %esi
	movq	img, %rcx
	movslq	-12(%rbp), %rdx
	subl	13560(%rcx,%rdx,4), %esi
	movq	img, %rcx
	movslq	-12(%rbp), %rdx
	movl	13560(%rcx,%rdx,4), %ecx
	sarl	$1, %ecx
	subl	%ecx, %esi
	movl	%esi, -204(%rbp)
	movq	img, %rcx
	movslq	-12(%rbp), %rdx
	movl	13176(%rcx,%rdx,4), %ecx
	movq	img, %rdx
	movslq	-12(%rbp), %rsi
	addl	13560(%rdx,%rsi,4), %ecx
	movq	img, %rdx
	movslq	-12(%rbp), %rsi
	subl	13304(%rdx,%rsi,4), %ecx
	movq	img, %rdx
	movslq	-12(%rbp), %rsi
	movl	13304(%rdx,%rsi,4), %edx
	sarl	$1, %edx
	subl	%edx, %ecx
	movl	%ecx, -196(%rbp)
	movq	img, %rcx
	movslq	-12(%rbp), %rdx
	xorl	%esi, %esi
	subl	13176(%rcx,%rdx,4), %esi
	movq	img, %rcx
	movslq	-12(%rbp), %rdx
	addl	13560(%rcx,%rdx,4), %esi
	movq	img, %rcx
	movslq	-12(%rbp), %rdx
	addl	13432(%rcx,%rdx,4), %esi
	movq	img, %rcx
	movslq	-12(%rbp), %rdx
	movl	13432(%rcx,%rdx,4), %ecx
	sarl	$1, %ecx
	addl	%ecx, %esi
	movl	%esi, -188(%rbp)
	movq	img, %rcx
	movslq	-12(%rbp), %rdx
	movl	13304(%rcx,%rdx,4), %ecx
	movq	img, %rdx
	movslq	-12(%rbp), %rsi
	addl	13432(%rdx,%rsi,4), %ecx
	movq	img, %rdx
	movslq	-12(%rbp), %rsi
	addl	13176(%rdx,%rsi,4), %ecx
	movq	img, %rdx
	movslq	-12(%rbp), %rsi
	movl	13176(%rdx,%rsi,4), %edx
	sarl	$1, %edx
	addl	%edx, %ecx
	movl	%ecx, -180(%rbp)
	movl	-204(%rbp), %ecx
	movl	-180(%rbp), %edx
	sarl	$2, %edx
	addl	%edx, %ecx
	movl	%ecx, -236(%rbp)
	movl	-204(%rbp), %ecx
	sarl	$2, %ecx
	subl	%ecx, %eax
	addl	-180(%rbp), %eax
	movl	%eax, -212(%rbp)
	movl	-196(%rbp), %eax
	movl	-188(%rbp), %ecx
	sarl	$2, %ecx
	addl	%ecx, %eax
	movl	%eax, -228(%rbp)
	movl	-196(%rbp), %eax
	sarl	$2, %eax
	subl	-188(%rbp), %eax
	movl	%eax, -220(%rbp)
	movl	-240(%rbp), %eax
	addl	-212(%rbp), %eax
	movslq	-12(%rbp), %rcx
	movl	%eax, -672(%rbp,%rcx,4)
	movl	-232(%rbp), %eax
	addl	-220(%rbp), %eax
	movslq	-12(%rbp), %rcx
	movl	%eax, -640(%rbp,%rcx,4)
	movl	-224(%rbp), %eax
	addl	-228(%rbp), %eax
	movslq	-12(%rbp), %rcx
	movl	%eax, -608(%rbp,%rcx,4)
	movl	-216(%rbp), %eax
	addl	-236(%rbp), %eax
	movslq	-12(%rbp), %rcx
	movl	%eax, -576(%rbp,%rcx,4)
	movl	-216(%rbp), %eax
	subl	-236(%rbp), %eax
	movslq	-12(%rbp), %rcx
	movl	%eax, -544(%rbp,%rcx,4)
	movl	-224(%rbp), %eax
	subl	-228(%rbp), %eax
	movslq	-12(%rbp), %rcx
	movl	%eax, -512(%rbp,%rcx,4)
	movl	-232(%rbp), %eax
	subl	-220(%rbp), %eax
	movslq	-12(%rbp), %rcx
	movl	%eax, -480(%rbp,%rcx,4)
	movl	-240(%rbp), %eax
	subl	-212(%rbp), %eax
	movslq	-12(%rbp), %rcx
	movl	%eax, -448(%rbp,%rcx,4)
# %bb.74:                               # %for.inc919
                                        #   in Loop: Header=BB23_70 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB23_70
.LBB23_75:                              # %for.end921
	movl	$0, -12(%rbp)
.LBB23_76:                              # %for.cond922
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	cmpl	$8, -12(%rbp)
	jge	.LBB23_78
# %bb.77:                               # %land.rhs925
                                        #   in Loop: Header=BB23_76 Depth=1
	cmpl	$0, -32(%rbp)
	setne	%al
	xorb	$-1, %al
.LBB23_78:                              # %land.end928
                                        #   in Loop: Header=BB23_76 Depth=1
	testb	$1, %al
	jne	.LBB23_79
	jmp	.LBB23_81
.LBB23_79:                              # %for.body930
                                        #   in Loop: Header=BB23_76 Depth=1
	xorl	%eax, %eax
	movslq	-12(%rbp), %rdx
	shlq	$5, %rdx
	leaq	-672(%rbp), %rcx
	movq	%rcx, %rsi
	addq	%rdx, %rsi
	movl	(%rsi), %edx
	movslq	-12(%rbp), %rsi
	shlq	$5, %rsi
	movq	%rcx, %rdi
	addq	%rsi, %rdi
	addl	16(%rdi), %edx
	movl	%edx, -336(%rbp)
	movslq	-12(%rbp), %rdx
	shlq	$5, %rdx
	movq	%rcx, %rsi
	addq	%rdx, %rsi
	movl	(%rsi), %edx
	movslq	-12(%rbp), %rsi
	shlq	$5, %rsi
	movq	%rcx, %rdi
	addq	%rsi, %rdi
	subl	16(%rdi), %edx
	movl	%edx, -320(%rbp)
	movslq	-12(%rbp), %rdx
	shlq	$5, %rdx
	movq	%rcx, %rsi
	addq	%rdx, %rsi
	movl	8(%rsi), %edx
	sarl	$1, %edx
	movslq	-12(%rbp), %rsi
	shlq	$5, %rsi
	movq	%rcx, %rdi
	addq	%rsi, %rdi
	subl	24(%rdi), %edx
	movl	%edx, -328(%rbp)
	movslq	-12(%rbp), %rdx
	shlq	$5, %rdx
	movq	%rcx, %rsi
	addq	%rdx, %rsi
	movl	8(%rsi), %edx
	movslq	-12(%rbp), %rsi
	shlq	$5, %rsi
	movq	%rcx, %rdi
	addq	%rsi, %rdi
	movl	24(%rdi), %esi
	sarl	$1, %esi
	addl	%esi, %edx
	movl	%edx, -312(%rbp)
	movl	-336(%rbp), %edx
	addl	-312(%rbp), %edx
	movl	%edx, -272(%rbp)
	movl	-320(%rbp), %edx
	addl	-328(%rbp), %edx
	movl	%edx, -264(%rbp)
	movl	-320(%rbp), %edx
	subl	-328(%rbp), %edx
	movl	%edx, -256(%rbp)
	movl	-336(%rbp), %edx
	subl	-312(%rbp), %edx
	movl	%edx, -248(%rbp)
	movslq	-12(%rbp), %rdx
	shlq	$5, %rdx
	movq	%rcx, %rsi
	addq	%rdx, %rsi
	xorl	%edx, %edx
	subl	12(%rsi), %edx
	movslq	-12(%rbp), %rsi
	shlq	$5, %rsi
	movq	%rcx, %rdi
	addq	%rsi, %rdi
	addl	20(%rdi), %edx
	movslq	-12(%rbp), %rsi
	shlq	$5, %rsi
	movq	%rcx, %rdi
	addq	%rsi, %rdi
	subl	28(%rdi), %edx
	movslq	-12(%rbp), %rsi
	shlq	$5, %rsi
	movq	%rcx, %rdi
	addq	%rsi, %rdi
	movl	28(%rdi), %esi
	sarl	$1, %esi
	subl	%esi, %edx
	movl	%edx, -332(%rbp)
	movslq	-12(%rbp), %rdx
	shlq	$5, %rdx
	movq	%rcx, %rsi
	addq	%rdx, %rsi
	movl	4(%rsi), %edx
	movslq	-12(%rbp), %rsi
	shlq	$5, %rsi
	movq	%rcx, %rdi
	addq	%rsi, %rdi
	addl	28(%rdi), %edx
	movslq	-12(%rbp), %rsi
	shlq	$5, %rsi
	movq	%rcx, %rdi
	addq	%rsi, %rdi
	subl	12(%rdi), %edx
	movslq	-12(%rbp), %rsi
	shlq	$5, %rsi
	movq	%rcx, %rdi
	addq	%rsi, %rdi
	movl	12(%rdi), %esi
	sarl	$1, %esi
	subl	%esi, %edx
	movl	%edx, -324(%rbp)
	movslq	-12(%rbp), %rdx
	shlq	$5, %rdx
	movq	%rcx, %rsi
	addq	%rdx, %rsi
	xorl	%edx, %edx
	subl	4(%rsi), %edx
	movslq	-12(%rbp), %rsi
	shlq	$5, %rsi
	movq	%rcx, %rdi
	addq	%rsi, %rdi
	addl	28(%rdi), %edx
	movslq	-12(%rbp), %rsi
	shlq	$5, %rsi
	movq	%rcx, %rdi
	addq	%rsi, %rdi
	addl	20(%rdi), %edx
	movslq	-12(%rbp), %rsi
	shlq	$5, %rsi
	movq	%rcx, %rdi
	addq	%rsi, %rdi
	movl	20(%rdi), %esi
	sarl	$1, %esi
	addl	%esi, %edx
	movl	%edx, -316(%rbp)
	movslq	-12(%rbp), %rdx
	shlq	$5, %rdx
	movq	%rcx, %rsi
	addq	%rdx, %rsi
	movl	12(%rsi), %edx
	movslq	-12(%rbp), %rsi
	shlq	$5, %rsi
	movq	%rcx, %rdi
	addq	%rsi, %rdi
	addl	20(%rdi), %edx
	movslq	-12(%rbp), %rsi
	shlq	$5, %rsi
	movq	%rcx, %rdi
	addq	%rsi, %rdi
	addl	4(%rdi), %edx
	movslq	-12(%rbp), %rsi
	shlq	$5, %rsi
	addq	%rsi, %rcx
	movl	4(%rcx), %ecx
	sarl	$1, %ecx
	addl	%ecx, %edx
	movl	%edx, -308(%rbp)
	movl	-332(%rbp), %ecx
	movl	-308(%rbp), %edx
	sarl	$2, %edx
	addl	%edx, %ecx
	movl	%ecx, -268(%rbp)
	movl	-332(%rbp), %ecx
	sarl	$2, %ecx
	subl	%ecx, %eax
	addl	-308(%rbp), %eax
	movl	%eax, -244(%rbp)
	movl	-324(%rbp), %eax
	movl	-316(%rbp), %ecx
	sarl	$2, %ecx
	addl	%ecx, %eax
	movl	%eax, -260(%rbp)
	movl	-324(%rbp), %eax
	sarl	$2, %eax
	subl	-316(%rbp), %eax
	movl	%eax, -252(%rbp)
	movl	-272(%rbp), %eax
	addl	-244(%rbp), %eax
	movq	img, %rcx
	addq	$13112, %rcx            # imm = 0x3338
	movslq	-12(%rbp), %rdx
	shlq	$6, %rdx
	addq	%rdx, %rcx
	movl	%eax, (%rcx)
	movl	-264(%rbp), %eax
	addl	-252(%rbp), %eax
	movq	img, %rcx
	addq	$13112, %rcx            # imm = 0x3338
	movslq	-12(%rbp), %rdx
	shlq	$6, %rdx
	addq	%rdx, %rcx
	movl	%eax, 4(%rcx)
	movl	-256(%rbp), %eax
	addl	-260(%rbp), %eax
	movq	img, %rcx
	addq	$13112, %rcx            # imm = 0x3338
	movslq	-12(%rbp), %rdx
	shlq	$6, %rdx
	addq	%rdx, %rcx
	movl	%eax, 8(%rcx)
	movl	-248(%rbp), %eax
	addl	-268(%rbp), %eax
	movq	img, %rcx
	addq	$13112, %rcx            # imm = 0x3338
	movslq	-12(%rbp), %rdx
	shlq	$6, %rdx
	addq	%rdx, %rcx
	movl	%eax, 12(%rcx)
	movl	-248(%rbp), %eax
	subl	-268(%rbp), %eax
	movq	img, %rcx
	addq	$13112, %rcx            # imm = 0x3338
	movslq	-12(%rbp), %rdx
	shlq	$6, %rdx
	addq	%rdx, %rcx
	movl	%eax, 16(%rcx)
	movl	-256(%rbp), %eax
	subl	-260(%rbp), %eax
	movq	img, %rcx
	addq	$13112, %rcx            # imm = 0x3338
	movslq	-12(%rbp), %rdx
	shlq	$6, %rdx
	addq	%rdx, %rcx
	movl	%eax, 20(%rcx)
	movl	-264(%rbp), %eax
	subl	-252(%rbp), %eax
	movq	img, %rcx
	addq	$13112, %rcx            # imm = 0x3338
	movslq	-12(%rbp), %rdx
	shlq	$6, %rdx
	addq	%rdx, %rcx
	movl	%eax, 24(%rcx)
	movl	-272(%rbp), %eax
	subl	-244(%rbp), %eax
	movq	img, %rcx
	addq	$13112, %rcx            # imm = 0x3338
	movslq	-12(%rbp), %rdx
	shlq	$6, %rdx
	addq	%rdx, %rcx
	movl	%eax, 28(%rcx)
# %bb.80:                               # %for.inc1130
                                        #   in Loop: Header=BB23_76 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB23_76
.LBB23_81:                              # %for.end1132
	movl	$0, -12(%rbp)
.LBB23_82:                              # %for.cond1133
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB23_84 Depth 2
	cmpl	$8, -12(%rbp)
	jge	.LBB23_104
# %bb.83:                               # %for.body1136
                                        #   in Loop: Header=BB23_82 Depth=1
	movl	$0, -16(%rbp)
.LBB23_84:                              # %for.cond1137
                                        #   Parent Loop BB23_82 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$8, -16(%rbp)
	jge	.LBB23_102
# %bb.85:                               # %for.body1140
                                        #   in Loop: Header=BB23_84 Depth=2
	cmpl	$0, -32(%rbp)
	je	.LBB23_87
# %bb.86:                               # %if.then1142
                                        #   in Loop: Header=BB23_84 Depth=2
	movq	img, %rax
	addq	$13112, %rax            # imm = 0x3338
	movslq	-12(%rbp), %rcx
	shlq	$6, %rcx
	addq	%rcx, %rax
	movslq	-16(%rbp), %rcx
	movl	(%rax,%rcx,4), %eax
	movq	img, %rcx
	addq	$12600, %rcx            # imm = 0x3138
	movl	-12(%rbp), %edx
	addl	-52(%rbp), %edx
	movslq	%edx, %rdx
	shlq	$5, %rdx
	addq	%rdx, %rcx
	movl	-16(%rbp), %edx
	addl	-40(%rbp), %edx
	movslq	%edx, %rdx
	movzwl	(%rcx,%rdx,2), %ecx
	addl	%ecx, %eax
	movq	img, %rcx
	addq	$13112, %rcx            # imm = 0x3338
	movslq	-12(%rbp), %rdx
	shlq	$6, %rdx
	addq	%rdx, %rcx
	movslq	-16(%rbp), %rdx
	movl	%eax, (%rcx,%rdx,4)
	jmp	.LBB23_100
.LBB23_87:                              # %if.else1161
                                        #   in Loop: Header=BB23_84 Depth=2
	movq	img, %rax
	cmpl	$0, 72724(%rax)
	jne	.LBB23_98
# %bb.88:                               # %if.then1163
                                        #   in Loop: Header=BB23_84 Depth=2
	xorl	%ecx, %ecx
	movq	img, %rax
	movslq	72684(%rax), %rax
	movq	img, %rdx
	addq	$13112, %rdx            # imm = 0x3338
	movslq	-12(%rbp), %rsi
	shlq	$6, %rsi
	addq	%rsi, %rdx
	movslq	-16(%rbp), %rsi
	movslq	(%rdx,%rsi,4), %rdx
	movq	img, %rsi
	addq	$12600, %rsi            # imm = 0x3138
	movl	-12(%rbp), %edi
	addl	-52(%rbp), %edi
	movslq	%edi, %rdi
	shlq	$5, %rdi
	addq	%rdi, %rsi
	movl	-16(%rbp), %edi
	addl	-40(%rbp), %edi
	movslq	%edi, %rdi
	movzwl	(%rsi,%rdi,2), %esi
	shlq	$6, %rsi
	addq	%rsi, %rdx
	addq	$32, %rdx
	sarq	$6, %rdx
	cmpq	%rdx, %rcx
	jle	.LBB23_90
# %bb.89:                               # %cond.true
                                        #   in Loop: Header=BB23_84 Depth=2
	xorl	%ecx, %ecx
	jmp	.LBB23_91
.LBB23_90:                              # %cond.false
                                        #   in Loop: Header=BB23_84 Depth=2
	movq	img, %rcx
	addq	$13112, %rcx            # imm = 0x3338
	movslq	-12(%rbp), %rdx
	shlq	$6, %rdx
	addq	%rdx, %rcx
	movslq	-16(%rbp), %rdx
	movslq	(%rcx,%rdx,4), %rcx
	movq	img, %rdx
	addq	$12600, %rdx            # imm = 0x3138
	movl	-12(%rbp), %esi
	addl	-52(%rbp), %esi
	movslq	%esi, %rsi
	shlq	$5, %rsi
	addq	%rsi, %rdx
	movl	-16(%rbp), %esi
	addl	-40(%rbp), %esi
	movslq	%esi, %rsi
	movzwl	(%rdx,%rsi,2), %edx
	shlq	$6, %rdx
	addq	%rdx, %rcx
	addq	$32, %rcx
	sarq	$6, %rcx
.LBB23_91:                              # %cond.end
                                        #   in Loop: Header=BB23_84 Depth=2
	cmpq	%rcx, %rax
	jge	.LBB23_93
# %bb.92:                               # %cond.true1205
                                        #   in Loop: Header=BB23_84 Depth=2
	movq	img, %rax
	movslq	72684(%rax), %rax
	jmp	.LBB23_97
.LBB23_93:                              # %cond.false1208
                                        #   in Loop: Header=BB23_84 Depth=2
	xorl	%eax, %eax
	movq	img, %rcx
	addq	$13112, %rcx            # imm = 0x3338
	movslq	-12(%rbp), %rdx
	shlq	$6, %rdx
	addq	%rdx, %rcx
	movslq	-16(%rbp), %rdx
	movslq	(%rcx,%rdx,4), %rcx
	movq	img, %rdx
	addq	$12600, %rdx            # imm = 0x3138
	movl	-12(%rbp), %esi
	addl	-52(%rbp), %esi
	movslq	%esi, %rsi
	shlq	$5, %rsi
	addq	%rsi, %rdx
	movl	-16(%rbp), %esi
	addl	-40(%rbp), %esi
	movslq	%esi, %rsi
	movzwl	(%rdx,%rsi,2), %edx
	shlq	$6, %rdx
	addq	%rdx, %rcx
	addq	$32, %rcx
	sarq	$6, %rcx
	cmpq	%rcx, %rax
	jle	.LBB23_95
# %bb.94:                               # %cond.true1229
                                        #   in Loop: Header=BB23_84 Depth=2
	xorl	%eax, %eax
	jmp	.LBB23_96
.LBB23_95:                              # %cond.false1230
                                        #   in Loop: Header=BB23_84 Depth=2
	movq	img, %rax
	addq	$13112, %rax            # imm = 0x3338
	movslq	-12(%rbp), %rcx
	shlq	$6, %rcx
	addq	%rcx, %rax
	movslq	-16(%rbp), %rcx
	movslq	(%rax,%rcx,4), %rax
	movq	img, %rcx
	addq	$12600, %rcx            # imm = 0x3138
	movl	-12(%rbp), %edx
	addl	-52(%rbp), %edx
	movslq	%edx, %rdx
	shlq	$5, %rdx
	addq	%rdx, %rcx
	movl	-16(%rbp), %edx
	addl	-40(%rbp), %edx
	movslq	%edx, %rdx
	movzwl	(%rcx,%rdx,2), %ecx
	shlq	$6, %rcx
	addq	%rcx, %rax
	addq	$32, %rax
	sarq	$6, %rax
.LBB23_96:                              # %cond.end1249
                                        #   in Loop: Header=BB23_84 Depth=2
.LBB23_97:                              # %cond.end1251
                                        #   in Loop: Header=BB23_84 Depth=2
	movq	img, %rcx
	addq	$13112, %rcx            # imm = 0x3338
	movslq	-12(%rbp), %rdx
	shlq	$6, %rdx
	addq	%rdx, %rcx
	movslq	-16(%rbp), %rdx
	movl	%eax, (%rcx,%rdx,4)
	jmp	.LBB23_99
.LBB23_98:                              # %if.else1259
                                        #   in Loop: Header=BB23_84 Depth=2
	movq	img, %rax
	addq	$13112, %rax            # imm = 0x3338
	movslq	-12(%rbp), %rcx
	shlq	$6, %rcx
	addq	%rcx, %rax
	movslq	-16(%rbp), %rcx
	movl	(%rax,%rcx,4), %eax
	addl	$32, %eax
	sarl	$6, %eax
	movq	img, %rcx
	addq	$13112, %rcx            # imm = 0x3338
	movslq	-12(%rbp), %rdx
	shlq	$6, %rdx
	addq	%rdx, %rcx
	movslq	-16(%rbp), %rdx
	movl	%eax, (%rcx,%rdx,4)
.LBB23_99:                              # %if.end1272
                                        #   in Loop: Header=BB23_84 Depth=2
	jmp	.LBB23_100
.LBB23_100:                             # %if.end1273
                                        #   in Loop: Header=BB23_84 Depth=2
	jmp	.LBB23_101
.LBB23_101:                             # %for.inc1274
                                        #   in Loop: Header=BB23_84 Depth=2
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB23_84
.LBB23_102:                             # %for.end1276
                                        #   in Loop: Header=BB23_82 Depth=1
	jmp	.LBB23_103
.LBB23_103:                             # %for.inc1277
                                        #   in Loop: Header=BB23_82 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB23_82
.LBB23_104:                             # %for.end1279
	movq	img, %rax
	cmpl	$0, 72724(%rax)
	jne	.LBB23_114
# %bb.105:                              # %if.then1282
	movl	$0, -16(%rbp)
.LBB23_106:                             # %for.cond1283
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB23_108 Depth 2
	cmpl	$8, -16(%rbp)
	jge	.LBB23_113
# %bb.107:                              # %for.body1286
                                        #   in Loop: Header=BB23_106 Depth=1
	movl	$0, -12(%rbp)
.LBB23_108:                             # %for.cond1287
                                        #   Parent Loop BB23_106 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$8, -12(%rbp)
	jge	.LBB23_111
# %bb.109:                              # %for.body1290
                                        #   in Loop: Header=BB23_108 Depth=2
	movq	img, %rax
	addq	$13112, %rax            # imm = 0x3338
	movslq	-12(%rbp), %rcx
	shlq	$6, %rcx
	addq	%rcx, %rax
	movslq	-16(%rbp), %rcx
	movl	(%rax,%rcx,4), %eax
	movq	enc_picture, %rcx
	movq	6424(%rcx), %rcx
	movq	img, %rdx
	movl	156(%rdx), %edx
	addl	-40(%rbp), %edx
	addl	-16(%rbp), %edx
	movslq	%edx, %rdx
	movq	(%rcx,%rdx,8), %rcx
	movq	img, %rdx
	movl	152(%rdx), %edx
	addl	-52(%rbp), %edx
	addl	-12(%rbp), %edx
	movslq	%edx, %rdx
	movw	%ax, (%rcx,%rdx,2)
# %bb.110:                              # %for.inc1305
                                        #   in Loop: Header=BB23_108 Depth=2
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB23_108
.LBB23_111:                             # %for.end1307
                                        #   in Loop: Header=BB23_106 Depth=1
	jmp	.LBB23_112
.LBB23_112:                             # %for.inc1308
                                        #   in Loop: Header=BB23_106 Depth=1
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB23_106
.LBB23_113:                             # %for.end1310
	jmp	.LBB23_114
.LBB23_114:                             # %if.end1311
	movl	-344(%rbp), %ebx
	cmpl	$260077146, -396(%rbp)  # imm = 0xF80765A
	jne	.LBB23_116
.LBB23_115:
	movl	%ebx, %eax
	addq	$664, %rsp              # imm = 0x298
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB23_116:                             # %func_exit
	.cfi_def_cfa %rbp, 16
	callq	detect_breach
	jmp	.LBB23_115
.Lfunc_end23:
	.size	dct_luma8x8.18, .Lfunc_end23-dct_luma8x8.18
	.cfi_endproc
                                        # -- End function
	.globl	LowPassForIntra8x8Pred.19 # -- Begin function LowPassForIntra8x8Pred.19
	.p2align	4, 0x90
	.type	LowPassForIntra8x8Pred.19,@function
LowPassForIntra8x8Pred.19:              # @LowPassForIntra8x8Pred.19
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$144, %rsp
	movl	$1512822073, -32(%rbp)  # imm = 0x5A2BD539
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movl	$0, -4(%rbp)
.LBB24_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$25, -4(%rbp)
	jge	.LBB24_4
# %bb.2:                                # %for.body
                                        #   in Loop: Header=BB24_1 Depth=1
	movq	-16(%rbp), %rax
	movslq	-4(%rbp), %rcx
	movl	(%rax,%rcx,4), %eax
	movslq	-4(%rbp), %rcx
	movl	%eax, -144(%rbp,%rcx,4)
# %bb.3:                                # %for.inc
                                        #   in Loop: Header=BB24_1 Depth=1
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB24_1
.LBB24_4:                               # %for.end
	cmpl	$0, -24(%rbp)
	je	.LBB24_13
# %bb.5:                                # %if.then
	cmpl	$0, -20(%rbp)
	je	.LBB24_7
# %bb.6:                                # %if.then4
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	movq	-16(%rbp), %rcx
	movl	4(%rcx), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	movq	-16(%rbp), %rcx
	addl	8(%rcx), %eax
	addl	$2, %eax
	sarl	$2, %eax
	movl	%eax, -140(%rbp)
	jmp	.LBB24_8
.LBB24_7:                               # %if.else
	movq	-16(%rbp), %rax
	movl	4(%rax), %eax
	movq	-16(%rbp), %rcx
	movl	4(%rcx), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	movq	-16(%rbp), %rcx
	addl	8(%rcx), %eax
	addl	$2, %eax
	sarl	$2, %eax
	movl	%eax, -140(%rbp)
.LBB24_8:                               # %if.end
	movl	$2, -4(%rbp)
.LBB24_9:                               # %for.cond26
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$16, -4(%rbp)
	jge	.LBB24_12
# %bb.10:                               # %for.body28
                                        #   in Loop: Header=BB24_9 Depth=1
	movq	-16(%rbp), %rax
	movl	-4(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rcx
	movl	(%rax,%rcx,4), %eax
	movq	-16(%rbp), %rcx
	movslq	-4(%rbp), %rdx
	movl	(%rcx,%rdx,4), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	movq	-16(%rbp), %rcx
	movl	-4(%rbp), %edx
	addl	$1, %edx
	movslq	%edx, %rdx
	addl	(%rcx,%rdx,4), %eax
	addl	$2, %eax
	sarl	$2, %eax
	movslq	-4(%rbp), %rcx
	movl	%eax, -144(%rbp,%rcx,4)
# %bb.11:                               # %for.inc46
                                        #   in Loop: Header=BB24_9 Depth=1
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB24_9
.LBB24_12:                              # %for.end48
	movq	-16(%rbp), %rax
	movl	64(%rax), %eax
	movq	-16(%rbp), %rcx
	movl	64(%rcx), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	movq	-16(%rbp), %rcx
	addl	60(%rcx), %eax
	addl	$2, %eax
	sarl	$2, %eax
	movl	%eax, -80(%rbp)
.LBB24_13:                              # %if.end58
	cmpl	$0, -20(%rbp)
	je	.LBB24_24
# %bb.14:                               # %if.then60
	cmpl	$0, -24(%rbp)
	je	.LBB24_17
# %bb.15:                               # %land.lhs.true
	cmpl	$0, -28(%rbp)
	je	.LBB24_17
# %bb.16:                               # %if.then63
	movq	-16(%rbp), %rax
	movl	68(%rax), %eax
	movq	-16(%rbp), %rcx
	movl	(%rcx), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	movq	-16(%rbp), %rcx
	addl	4(%rcx), %eax
	addl	$2, %eax
	sarl	$2, %eax
	movl	%eax, -144(%rbp)
	jmp	.LBB24_23
.LBB24_17:                              # %if.else73
	cmpl	$0, -24(%rbp)
	je	.LBB24_19
# %bb.18:                               # %if.then75
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	movq	-16(%rbp), %rcx
	movl	(%rcx), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	movq	-16(%rbp), %rcx
	addl	4(%rcx), %eax
	addl	$2, %eax
	sarl	$2, %eax
	movl	%eax, -144(%rbp)
	jmp	.LBB24_22
.LBB24_19:                              # %if.else85
	cmpl	$0, -28(%rbp)
	je	.LBB24_21
# %bb.20:                               # %if.then87
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	movq	-16(%rbp), %rcx
	movl	(%rcx), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	movq	-16(%rbp), %rcx
	addl	68(%rcx), %eax
	addl	$2, %eax
	sarl	$2, %eax
	movl	%eax, -144(%rbp)
.LBB24_21:                              # %if.end97
	jmp	.LBB24_22
.LBB24_22:                              # %if.end98
	jmp	.LBB24_23
.LBB24_23:                              # %if.end99
	jmp	.LBB24_24
.LBB24_24:                              # %if.end100
	cmpl	$0, -28(%rbp)
	je	.LBB24_33
# %bb.25:                               # %if.then102
	cmpl	$0, -20(%rbp)
	je	.LBB24_27
# %bb.26:                               # %if.then104
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	movq	-16(%rbp), %rcx
	movl	68(%rcx), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	movq	-16(%rbp), %rcx
	addl	72(%rcx), %eax
	addl	$2, %eax
	sarl	$2, %eax
	movl	%eax, -76(%rbp)
	jmp	.LBB24_28
.LBB24_27:                              # %if.else114
	movq	-16(%rbp), %rax
	movl	68(%rax), %eax
	movq	-16(%rbp), %rcx
	movl	68(%rcx), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	movq	-16(%rbp), %rcx
	addl	72(%rcx), %eax
	addl	$2, %eax
	sarl	$2, %eax
	movl	%eax, -76(%rbp)
.LBB24_28:                              # %if.end124
	movl	$18, -4(%rbp)
.LBB24_29:                              # %for.cond125
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$24, -4(%rbp)
	jge	.LBB24_32
# %bb.30:                               # %for.body127
                                        #   in Loop: Header=BB24_29 Depth=1
	movq	-16(%rbp), %rax
	movl	-4(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rcx
	movl	(%rax,%rcx,4), %eax
	movq	-16(%rbp), %rcx
	movslq	-4(%rbp), %rdx
	movl	(%rcx,%rdx,4), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	movq	-16(%rbp), %rcx
	movl	-4(%rbp), %edx
	addl	$1, %edx
	movslq	%edx, %rdx
	addl	(%rcx,%rdx,4), %eax
	addl	$2, %eax
	sarl	$2, %eax
	movslq	-4(%rbp), %rcx
	movl	%eax, -144(%rbp,%rcx,4)
# %bb.31:                               # %for.inc146
                                        #   in Loop: Header=BB24_29 Depth=1
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB24_29
.LBB24_32:                              # %for.end148
	movq	-16(%rbp), %rax
	movl	92(%rax), %eax
	movq	-16(%rbp), %rcx
	movl	96(%rcx), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	movq	-16(%rbp), %rcx
	addl	96(%rcx), %eax
	addl	$2, %eax
	sarl	$2, %eax
	movl	%eax, -48(%rbp)
.LBB24_33:                              # %if.end158
	movl	$0, -4(%rbp)
.LBB24_34:                              # %for.cond159
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$25, -4(%rbp)
	jge	.LBB24_37
# %bb.35:                               # %for.body161
                                        #   in Loop: Header=BB24_34 Depth=1
	movslq	-4(%rbp), %rax
	movl	-144(%rbp,%rax,4), %eax
	movq	-16(%rbp), %rcx
	movslq	-4(%rbp), %rdx
	movl	%eax, (%rcx,%rdx,4)
# %bb.36:                               # %for.inc166
                                        #   in Loop: Header=BB24_34 Depth=1
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB24_34
.LBB24_37:                              # %for.end168
	cmpl	$1512822073, -32(%rbp)  # imm = 0x5A2BD539
	jne	.LBB24_39
.LBB24_38:
	addq	$144, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB24_39:                              # %func_exit
	.cfi_def_cfa %rbp, 16
	callq	detect_breach
	jmp	.LBB24_38
.Lfunc_end24:
	.size	LowPassForIntra8x8Pred.19, .Lfunc_end24-LowPassForIntra8x8Pred.19
	.cfi_endproc
                                        # -- End function
	.globl	intrapred_luma8x8.20    # -- Begin function intrapred_luma8x8.20
	.p2align	4, 0x90
	.type	intrapred_luma8x8.20,@function
intrapred_luma8x8.20:                   # @intrapred_luma8x8.20
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$464, %rsp              # imm = 0x1D0
	movl	$118723224, -224(%rbp)  # imm = 0x7139298
	movl	%edi, -220(%rbp)
	movl	%esi, -216(%rbp)
	movq	%rdx, -232(%rbp)
	movq	%rcx, -240(%rbp)
	movq	%r8, -272(%rbp)
	movq	enc_picture, %rax
	movq	6424(%rax), %rax
	movq	%rax, -128(%rbp)
	movl	-220(%rbp), %eax
	andl	$15, %eax
	movl	%eax, -144(%rbp)
	movl	-216(%rbp), %eax
	andl	$15, %eax
	movl	%eax, -152(%rbp)
	movq	img, %rax
	movl	12(%rax), %eax
	movl	%eax, -156(%rbp)
	movl	$0, -4(%rbp)
.LBB25_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$8, -4(%rbp)
	jge	.LBB25_4
# %bb.2:                                # %for.body
                                        #   in Loop: Header=BB25_1 Depth=1
	movl	-156(%rbp), %edi
	movl	-144(%rbp), %esi
	subl	$1, %esi
	movl	-152(%rbp), %edx
	addl	-4(%rbp), %edx
	movslq	-4(%rbp), %rax
	imulq	$24, %rax, %rax
	leaq	-464(%rbp), %r8
	addq	%rax, %r8
	movl	$1, %ecx
	callq	getNeighbour
# %bb.3:                                # %for.inc
                                        #   in Loop: Header=BB25_1 Depth=1
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB25_1
.LBB25_4:                               # %for.end
	movl	-156(%rbp), %edi
	movl	-144(%rbp), %esi
	movl	-152(%rbp), %edx
	subl	$1, %edx
	movl	$1, %ecx
	leaq	-208(%rbp), %r8
	callq	getNeighbour
	movl	-156(%rbp), %edi
	movl	-144(%rbp), %esi
	addl	$8, %esi
	movl	-152(%rbp), %edx
	subl	$1, %edx
	movl	$1, %ecx
	leaq	-184(%rbp), %r8
	callq	getNeighbour
	movl	-156(%rbp), %edi
	movl	-144(%rbp), %esi
	subl	$1, %esi
	movl	-152(%rbp), %edx
	subl	$1, %edx
	movl	$1, %ecx
	leaq	-264(%rbp), %r8
	callq	getNeighbour
	xorl	%eax, %eax
	cmpl	$0, -184(%rbp)
	je	.LBB25_8
# %bb.5:                                # %land.rhs
	xorl	%eax, %eax
	cmpl	$8, -144(%rbp)
	jne	.LBB25_7
# %bb.6:                                # %land.rhs9
	cmpl	$8, -152(%rbp)
	sete	%al
.LBB25_7:                               # %land.end
	xorb	$-1, %al
.LBB25_8:                               # %land.end11
	andb	$1, %al
	movzbl	%al, %eax
	movl	%eax, -184(%rbp)
	movq	input, %rax
	cmpl	$0, 216(%rax)
	je	.LBB25_26
# %bb.9:                                # %if.then
	movl	$0, -4(%rbp)
	movl	$1, -116(%rbp)
.LBB25_10:                              # %for.cond14
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$8, -4(%rbp)
	jge	.LBB25_16
# %bb.11:                               # %for.body16
                                        #   in Loop: Header=BB25_10 Depth=1
	movslq	-4(%rbp), %rax
	imulq	$24, %rax, %rax
	leaq	-464(%rbp), %rcx
	addq	%rax, %rcx
	cmpl	$0, (%rcx)
	je	.LBB25_13
# %bb.12:                               # %cond.true
                                        #   in Loop: Header=BB25_10 Depth=1
	movq	img, %rax
	movq	71784(%rax), %rax
	movslq	-4(%rbp), %rcx
	imulq	$24, %rcx, %rcx
	leaq	-464(%rbp), %rdx
	addq	%rcx, %rdx
	movslq	4(%rdx), %rcx
	movl	(%rax,%rcx,4), %eax
	jmp	.LBB25_14
.LBB25_13:                              # %cond.false
                                        #   in Loop: Header=BB25_10 Depth=1
	xorl	%eax, %eax
	jmp	.LBB25_14
.LBB25_14:                              # %cond.end
                                        #   in Loop: Header=BB25_10 Depth=1
	andl	-116(%rbp), %eax
	movl	%eax, -116(%rbp)
# %bb.15:                               # %for.inc26
                                        #   in Loop: Header=BB25_10 Depth=1
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB25_10
.LBB25_16:                              # %for.end28
	cmpl	$0, -208(%rbp)
	je	.LBB25_18
# %bb.17:                               # %cond.true31
	movq	img, %rax
	movq	71784(%rax), %rax
	movslq	-204(%rbp), %rcx
	movl	(%rax,%rcx,4), %eax
	jmp	.LBB25_19
.LBB25_18:                              # %cond.false36
	xorl	%eax, %eax
	jmp	.LBB25_19
.LBB25_19:                              # %cond.end37
	movl	%eax, -132(%rbp)
	cmpl	$0, -184(%rbp)
	je	.LBB25_21
# %bb.20:                               # %cond.true41
	movq	img, %rax
	movq	71784(%rax), %rax
	movslq	-180(%rbp), %rcx
	movl	(%rax,%rcx,4), %eax
	jmp	.LBB25_22
.LBB25_21:                              # %cond.false46
	xorl	%eax, %eax
	jmp	.LBB25_22
.LBB25_22:                              # %cond.end47
	movl	%eax, -212(%rbp)
	cmpl	$0, -264(%rbp)
	je	.LBB25_24
# %bb.23:                               # %cond.true51
	movq	img, %rax
	movq	71784(%rax), %rax
	movslq	-260(%rbp), %rcx
	movl	(%rax,%rcx,4), %eax
	jmp	.LBB25_25
.LBB25_24:                              # %cond.false56
	xorl	%eax, %eax
	jmp	.LBB25_25
.LBB25_25:                              # %cond.end57
	movl	%eax, -148(%rbp)
	jmp	.LBB25_27
.LBB25_26:                              # %if.else
	movl	-464(%rbp), %eax
	movl	%eax, -116(%rbp)
	movl	-208(%rbp), %eax
	movl	%eax, -132(%rbp)
	movl	-184(%rbp), %eax
	movl	%eax, -212(%rbp)
	movl	-264(%rbp), %eax
	movl	%eax, -148(%rbp)
.LBB25_27:                              # %if.end
	xorl	%eax, %eax
	movl	-116(%rbp), %ecx
	movq	-232(%rbp), %rdx
	movl	%ecx, (%rdx)
	movl	-132(%rbp), %ecx
	movq	-240(%rbp), %rdx
	movl	%ecx, (%rdx)
	cmpl	$0, -132(%rbp)
	je	.LBB25_30
# %bb.28:                               # %land.lhs.true
	xorl	%eax, %eax
	cmpl	$0, -116(%rbp)
	je	.LBB25_30
# %bb.29:                               # %land.rhs66
	cmpl	$0, -148(%rbp)
	setne	%al
.LBB25_30:                              # %land.end68
	andb	$1, %al
	movzbl	%al, %eax
	movq	-272(%rbp), %rcx
	movl	%eax, (%rcx)
	movl	-220(%rbp), %eax
	andl	$15, %eax
	movl	%eax, -4(%rbp)
	movl	-216(%rbp), %eax
	andl	$15, %eax
	movl	%eax, -136(%rbp)
	cmpl	$0, -132(%rbp)
	je	.LBB25_32
# %bb.31:                               # %if.then73
	movq	-128(%rbp), %rax
	movslq	-188(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movl	-192(%rbp), %ecx
	addl	$0, %ecx
	movslq	%ecx, %rcx
	movzwl	(%rax,%rcx,2), %eax
	movl	%eax, -108(%rbp)
	movq	-128(%rbp), %rax
	movslq	-188(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movl	-192(%rbp), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rcx
	movzwl	(%rax,%rcx,2), %eax
	movl	%eax, -104(%rbp)
	movq	-128(%rbp), %rax
	movslq	-188(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movl	-192(%rbp), %ecx
	addl	$2, %ecx
	movslq	%ecx, %rcx
	movzwl	(%rax,%rcx,2), %eax
	movl	%eax, -100(%rbp)
	movq	-128(%rbp), %rax
	movslq	-188(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movl	-192(%rbp), %ecx
	addl	$3, %ecx
	movslq	%ecx, %rcx
	movzwl	(%rax,%rcx,2), %eax
	movl	%eax, -96(%rbp)
	movq	-128(%rbp), %rax
	movslq	-188(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movl	-192(%rbp), %ecx
	addl	$4, %ecx
	movslq	%ecx, %rcx
	movzwl	(%rax,%rcx,2), %eax
	movl	%eax, -92(%rbp)
	movq	-128(%rbp), %rax
	movslq	-188(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movl	-192(%rbp), %ecx
	addl	$5, %ecx
	movslq	%ecx, %rcx
	movzwl	(%rax,%rcx,2), %eax
	movl	%eax, -88(%rbp)
	movq	-128(%rbp), %rax
	movslq	-188(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movl	-192(%rbp), %ecx
	addl	$6, %ecx
	movslq	%ecx, %rcx
	movzwl	(%rax,%rcx,2), %eax
	movl	%eax, -84(%rbp)
	movq	-128(%rbp), %rax
	movslq	-188(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movl	-192(%rbp), %ecx
	addl	$7, %ecx
	movslq	%ecx, %rcx
	movzwl	(%rax,%rcx,2), %eax
	movl	%eax, -80(%rbp)
	jmp	.LBB25_33
.LBB25_32:                              # %if.else143
	movq	img, %rax
	movl	72680(%rax), %eax
	movl	%eax, -80(%rbp)
	movl	%eax, -84(%rbp)
	movl	%eax, -88(%rbp)
	movl	%eax, -92(%rbp)
	movl	%eax, -96(%rbp)
	movl	%eax, -100(%rbp)
	movl	%eax, -104(%rbp)
	movl	%eax, -108(%rbp)
.LBB25_33:                              # %if.end152
	cmpl	$0, -212(%rbp)
	je	.LBB25_35
# %bb.34:                               # %if.then154
	movq	-128(%rbp), %rax
	movslq	-164(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movl	-168(%rbp), %ecx
	addl	$0, %ecx
	movslq	%ecx, %rcx
	movzwl	(%rax,%rcx,2), %eax
	movl	%eax, -76(%rbp)
	movq	-128(%rbp), %rax
	movslq	-164(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movl	-168(%rbp), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rcx
	movzwl	(%rax,%rcx,2), %eax
	movl	%eax, -72(%rbp)
	movq	-128(%rbp), %rax
	movslq	-164(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movl	-168(%rbp), %ecx
	addl	$2, %ecx
	movslq	%ecx, %rcx
	movzwl	(%rax,%rcx,2), %eax
	movl	%eax, -68(%rbp)
	movq	-128(%rbp), %rax
	movslq	-164(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movl	-168(%rbp), %ecx
	addl	$3, %ecx
	movslq	%ecx, %rcx
	movzwl	(%rax,%rcx,2), %eax
	movl	%eax, -64(%rbp)
	movq	-128(%rbp), %rax
	movslq	-164(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movl	-168(%rbp), %ecx
	addl	$4, %ecx
	movslq	%ecx, %rcx
	movzwl	(%rax,%rcx,2), %eax
	movl	%eax, -60(%rbp)
	movq	-128(%rbp), %rax
	movslq	-164(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movl	-168(%rbp), %ecx
	addl	$5, %ecx
	movslq	%ecx, %rcx
	movzwl	(%rax,%rcx,2), %eax
	movl	%eax, -56(%rbp)
	movq	-128(%rbp), %rax
	movslq	-164(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movl	-168(%rbp), %ecx
	addl	$6, %ecx
	movslq	%ecx, %rcx
	movzwl	(%rax,%rcx,2), %eax
	movl	%eax, -52(%rbp)
	movq	-128(%rbp), %rax
	movslq	-164(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movl	-168(%rbp), %ecx
	addl	$7, %ecx
	movslq	%ecx, %rcx
	movzwl	(%rax,%rcx,2), %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB25_36
.LBB25_35:                              # %if.else227
	movl	-80(%rbp), %eax
	movl	%eax, -48(%rbp)
	movl	%eax, -52(%rbp)
	movl	%eax, -56(%rbp)
	movl	%eax, -60(%rbp)
	movl	%eax, -64(%rbp)
	movl	%eax, -68(%rbp)
	movl	%eax, -72(%rbp)
	movl	%eax, -76(%rbp)
.LBB25_36:                              # %if.end237
	cmpl	$0, -116(%rbp)
	je	.LBB25_38
# %bb.37:                               # %if.then239
	movq	-128(%rbp), %rax
	movslq	-444(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movslq	-448(%rbp), %rcx
	movzwl	(%rax,%rcx,2), %eax
	movl	%eax, -44(%rbp)
	movq	-128(%rbp), %rax
	movslq	-420(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movslq	-424(%rbp), %rcx
	movzwl	(%rax,%rcx,2), %eax
	movl	%eax, -40(%rbp)
	movq	-128(%rbp), %rax
	movslq	-396(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movslq	-400(%rbp), %rcx
	movzwl	(%rax,%rcx,2), %eax
	movl	%eax, -36(%rbp)
	movq	-128(%rbp), %rax
	movslq	-372(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movslq	-376(%rbp), %rcx
	movzwl	(%rax,%rcx,2), %eax
	movl	%eax, -32(%rbp)
	movq	-128(%rbp), %rax
	movslq	-348(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movslq	-352(%rbp), %rcx
	movzwl	(%rax,%rcx,2), %eax
	movl	%eax, -28(%rbp)
	movq	-128(%rbp), %rax
	movslq	-324(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movslq	-328(%rbp), %rcx
	movzwl	(%rax,%rcx,2), %eax
	movl	%eax, -24(%rbp)
	movq	-128(%rbp), %rax
	movslq	-300(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movslq	-304(%rbp), %rcx
	movzwl	(%rax,%rcx,2), %eax
	movl	%eax, -20(%rbp)
	movq	-128(%rbp), %rax
	movslq	-276(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movslq	-280(%rbp), %rcx
	movzwl	(%rax,%rcx,2), %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB25_39
.LBB25_38:                              # %if.else320
	movq	img, %rax
	movl	72680(%rax), %eax
	movl	%eax, -16(%rbp)
	movl	%eax, -20(%rbp)
	movl	%eax, -24(%rbp)
	movl	%eax, -28(%rbp)
	movl	%eax, -32(%rbp)
	movl	%eax, -36(%rbp)
	movl	%eax, -40(%rbp)
	movl	%eax, -44(%rbp)
.LBB25_39:                              # %if.end330
	cmpl	$0, -148(%rbp)
	je	.LBB25_41
# %bb.40:                               # %if.then332
	movq	-128(%rbp), %rax
	movslq	-244(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movslq	-248(%rbp), %rcx
	movzwl	(%rax,%rcx,2), %eax
	movl	%eax, -112(%rbp)
	jmp	.LBB25_42
.LBB25_41:                              # %if.else341
	movq	img, %rax
	movl	72680(%rax), %eax
	movl	%eax, -112(%rbp)
.LBB25_42:                              # %if.end344
	movl	$0, -4(%rbp)
.LBB25_43:                              # %for.cond345
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$9, -4(%rbp)
	jge	.LBB25_46
# %bb.44:                               # %for.body348
                                        #   in Loop: Header=BB25_43 Depth=1
	movq	img, %rax
	addq	$7352, %rax             # imm = 0x1CB8
	movslq	-4(%rbp), %rcx
	shlq	$7, %rcx
	addq	%rcx, %rax
	movw	$-1, (%rax)
# %bb.45:                               # %for.inc353
                                        #   in Loop: Header=BB25_43 Depth=1
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB25_43
.LBB25_46:                              # %for.end355
	leaq	-112(%rbp), %rdi
	movl	-148(%rbp), %esi
	movl	-132(%rbp), %edx
	movl	-116(%rbp), %ecx
	callq	LowPassForIntra8x8Pred
	movl	$0, -140(%rbp)
	cmpl	$0, -132(%rbp)
	je	.LBB25_49
# %bb.47:                               # %land.lhs.true358
	cmpl	$0, -116(%rbp)
	je	.LBB25_49
# %bb.48:                               # %if.then360
	movl	-108(%rbp), %eax
	addl	-104(%rbp), %eax
	addl	-100(%rbp), %eax
	addl	-96(%rbp), %eax
	addl	-92(%rbp), %eax
	addl	-88(%rbp), %eax
	addl	-84(%rbp), %eax
	addl	-80(%rbp), %eax
	addl	-44(%rbp), %eax
	addl	-40(%rbp), %eax
	addl	-36(%rbp), %eax
	addl	-32(%rbp), %eax
	addl	-28(%rbp), %eax
	addl	-24(%rbp), %eax
	addl	-20(%rbp), %eax
	addl	-16(%rbp), %eax
	addl	$8, %eax
	sarl	$4, %eax
	movl	%eax, -140(%rbp)
	jmp	.LBB25_58
.LBB25_49:                              # %if.else393
	cmpl	$0, -132(%rbp)
	jne	.LBB25_52
# %bb.50:                               # %land.lhs.true395
	cmpl	$0, -116(%rbp)
	je	.LBB25_52
# %bb.51:                               # %if.then397
	movl	-44(%rbp), %eax
	addl	-40(%rbp), %eax
	addl	-36(%rbp), %eax
	addl	-32(%rbp), %eax
	addl	-28(%rbp), %eax
	addl	-24(%rbp), %eax
	addl	-20(%rbp), %eax
	addl	-16(%rbp), %eax
	addl	$4, %eax
	sarl	$3, %eax
	movl	%eax, -140(%rbp)
	jmp	.LBB25_57
.LBB25_52:                              # %if.else415
	cmpl	$0, -132(%rbp)
	je	.LBB25_55
# %bb.53:                               # %land.lhs.true417
	cmpl	$0, -116(%rbp)
	jne	.LBB25_55
# %bb.54:                               # %if.then419
	movl	-108(%rbp), %eax
	addl	-104(%rbp), %eax
	addl	-100(%rbp), %eax
	addl	-96(%rbp), %eax
	addl	-92(%rbp), %eax
	addl	-88(%rbp), %eax
	addl	-84(%rbp), %eax
	addl	-80(%rbp), %eax
	addl	$4, %eax
	sarl	$3, %eax
	movl	%eax, -140(%rbp)
	jmp	.LBB25_56
.LBB25_55:                              # %if.else437
	movq	img, %rax
	movl	72680(%rax), %eax
	movl	%eax, -140(%rbp)
.LBB25_56:                              # %if.end439
	jmp	.LBB25_57
.LBB25_57:                              # %if.end440
	jmp	.LBB25_58
.LBB25_58:                              # %if.end441
	movl	$0, -136(%rbp)
.LBB25_59:                              # %for.cond442
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB25_61 Depth 2
	cmpl	$8, -136(%rbp)
	jge	.LBB25_66
# %bb.60:                               # %for.body445
                                        #   in Loop: Header=BB25_59 Depth=1
	movl	$0, -4(%rbp)
.LBB25_61:                              # %for.cond446
                                        #   Parent Loop BB25_59 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$8, -4(%rbp)
	jge	.LBB25_64
# %bb.62:                               # %for.body449
                                        #   in Loop: Header=BB25_61 Depth=2
	movl	-140(%rbp), %eax
	movq	img, %rcx
	addq	$7352, %rcx             # imm = 0x1CB8
	addq	$256, %rcx              # imm = 0x100
	movslq	-4(%rbp), %rdx
	shlq	$4, %rdx
	addq	%rdx, %rcx
	movslq	-136(%rbp), %rdx
	movw	%ax, (%rcx,%rdx,2)
# %bb.63:                               # %for.inc457
                                        #   in Loop: Header=BB25_61 Depth=2
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB25_61
.LBB25_64:                              # %for.end459
                                        #   in Loop: Header=BB25_59 Depth=1
	jmp	.LBB25_65
.LBB25_65:                              # %for.inc460
                                        #   in Loop: Header=BB25_59 Depth=1
	movl	-136(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -136(%rbp)
	jmp	.LBB25_59
.LBB25_66:                              # %for.end462
	movl	$0, -4(%rbp)
.LBB25_67:                              # %for.cond463
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$8, -4(%rbp)
	jge	.LBB25_70
# %bb.68:                               # %for.body466
                                        #   in Loop: Header=BB25_67 Depth=1
	movslq	-4(%rbp), %rax
	movl	-108(%rbp,%rax,4), %eax
	movq	img, %rcx
	movslq	-4(%rbp), %rdx
	movw	%ax, 7464(%rcx,%rdx,2)
	movq	img, %rcx
	movslq	-4(%rbp), %rdx
	movw	%ax, 7448(%rcx,%rdx,2)
	movq	img, %rcx
	movslq	-4(%rbp), %rdx
	movw	%ax, 7432(%rcx,%rdx,2)
	movq	img, %rcx
	movslq	-4(%rbp), %rdx
	movw	%ax, 7416(%rcx,%rdx,2)
	movq	img, %rcx
	movslq	-4(%rbp), %rdx
	movw	%ax, 7400(%rcx,%rdx,2)
	movq	img, %rcx
	movslq	-4(%rbp), %rdx
	movw	%ax, 7384(%rcx,%rdx,2)
	movq	img, %rcx
	movslq	-4(%rbp), %rdx
	movw	%ax, 7368(%rcx,%rdx,2)
	movq	img, %rcx
	movslq	-4(%rbp), %rdx
	movw	%ax, 7352(%rcx,%rdx,2)
	movslq	-4(%rbp), %rax
	movl	-44(%rbp,%rax,4), %eax
	movq	img, %rcx
	addq	$7352, %rcx             # imm = 0x1CB8
	addq	$128, %rcx
	movslq	-4(%rbp), %rdx
	shlq	$4, %rdx
	addq	%rdx, %rcx
	movw	%ax, 14(%rcx)
	movq	img, %rcx
	addq	$7352, %rcx             # imm = 0x1CB8
	addq	$128, %rcx
	movslq	-4(%rbp), %rdx
	shlq	$4, %rdx
	addq	%rdx, %rcx
	movw	%ax, 12(%rcx)
	movq	img, %rcx
	addq	$7352, %rcx             # imm = 0x1CB8
	addq	$128, %rcx
	movslq	-4(%rbp), %rdx
	shlq	$4, %rdx
	addq	%rdx, %rcx
	movw	%ax, 10(%rcx)
	movq	img, %rcx
	addq	$7352, %rcx             # imm = 0x1CB8
	addq	$128, %rcx
	movslq	-4(%rbp), %rdx
	shlq	$4, %rdx
	addq	%rdx, %rcx
	movw	%ax, 8(%rcx)
	movq	img, %rcx
	addq	$7352, %rcx             # imm = 0x1CB8
	addq	$128, %rcx
	movslq	-4(%rbp), %rdx
	shlq	$4, %rdx
	addq	%rdx, %rcx
	movw	%ax, 6(%rcx)
	movq	img, %rcx
	addq	$7352, %rcx             # imm = 0x1CB8
	addq	$128, %rcx
	movslq	-4(%rbp), %rdx
	shlq	$4, %rdx
	addq	%rdx, %rcx
	movw	%ax, 4(%rcx)
	movq	img, %rcx
	addq	$7352, %rcx             # imm = 0x1CB8
	addq	$128, %rcx
	movslq	-4(%rbp), %rdx
	shlq	$4, %rdx
	addq	%rdx, %rcx
	movw	%ax, 2(%rcx)
	movq	img, %rcx
	addq	$7352, %rcx             # imm = 0x1CB8
	addq	$128, %rcx
	movslq	-4(%rbp), %rdx
	shlq	$4, %rdx
	addq	%rdx, %rcx
	movw	%ax, (%rcx)
# %bb.69:                               # %for.inc555
                                        #   in Loop: Header=BB25_67 Depth=1
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB25_67
.LBB25_70:                              # %for.end557
	cmpl	$0, -132(%rbp)
	jne	.LBB25_72
# %bb.71:                               # %if.then559
	movq	img, %rax
	movw	$-1, 7352(%rax)
.LBB25_72:                              # %if.end564
	cmpl	$0, -116(%rbp)
	jne	.LBB25_74
# %bb.73:                               # %if.then566
	movq	img, %rax
	movw	$-1, 7480(%rax)
.LBB25_74:                              # %if.end571
	cmpl	$0, -132(%rbp)
	je	.LBB25_76
# %bb.75:                               # %if.then573
	movl	-108(%rbp), %eax
	addl	-100(%rbp), %eax
	movl	-104(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 7736(%rcx)
	movl	-104(%rbp), %eax
	addl	-96(%rbp), %eax
	movl	-100(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 7752(%rcx)
	movq	img, %rcx
	movw	%ax, 7738(%rcx)
	movl	-100(%rbp), %eax
	addl	-92(%rbp), %eax
	movl	-96(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 7768(%rcx)
	movq	img, %rcx
	movw	%ax, 7754(%rcx)
	movq	img, %rcx
	movw	%ax, 7740(%rcx)
	movl	-96(%rbp), %eax
	addl	-88(%rbp), %eax
	movl	-92(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 7784(%rcx)
	movq	img, %rcx
	movw	%ax, 7770(%rcx)
	movq	img, %rcx
	movw	%ax, 7756(%rcx)
	movq	img, %rcx
	movw	%ax, 7742(%rcx)
	movl	-92(%rbp), %eax
	addl	-84(%rbp), %eax
	movl	-88(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 7800(%rcx)
	movq	img, %rcx
	movw	%ax, 7786(%rcx)
	movq	img, %rcx
	movw	%ax, 7772(%rcx)
	movq	img, %rcx
	movw	%ax, 7758(%rcx)
	movq	img, %rcx
	movw	%ax, 7744(%rcx)
	movl	-88(%rbp), %eax
	addl	-80(%rbp), %eax
	movl	-84(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 7816(%rcx)
	movq	img, %rcx
	movw	%ax, 7802(%rcx)
	movq	img, %rcx
	movw	%ax, 7788(%rcx)
	movq	img, %rcx
	movw	%ax, 7774(%rcx)
	movq	img, %rcx
	movw	%ax, 7760(%rcx)
	movq	img, %rcx
	movw	%ax, 7746(%rcx)
	movl	-84(%rbp), %eax
	addl	-76(%rbp), %eax
	movl	-80(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 7832(%rcx)
	movq	img, %rcx
	movw	%ax, 7818(%rcx)
	movq	img, %rcx
	movw	%ax, 7804(%rcx)
	movq	img, %rcx
	movw	%ax, 7790(%rcx)
	movq	img, %rcx
	movw	%ax, 7776(%rcx)
	movq	img, %rcx
	movw	%ax, 7762(%rcx)
	movq	img, %rcx
	movw	%ax, 7748(%rcx)
	movl	-80(%rbp), %eax
	addl	-72(%rbp), %eax
	movl	-76(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 7848(%rcx)
	movq	img, %rcx
	movw	%ax, 7834(%rcx)
	movq	img, %rcx
	movw	%ax, 7820(%rcx)
	movq	img, %rcx
	movw	%ax, 7806(%rcx)
	movq	img, %rcx
	movw	%ax, 7792(%rcx)
	movq	img, %rcx
	movw	%ax, 7778(%rcx)
	movq	img, %rcx
	movw	%ax, 7764(%rcx)
	movq	img, %rcx
	movw	%ax, 7750(%rcx)
	movl	-76(%rbp), %eax
	addl	-68(%rbp), %eax
	movl	-72(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 7850(%rcx)
	movq	img, %rcx
	movw	%ax, 7836(%rcx)
	movq	img, %rcx
	movw	%ax, 7822(%rcx)
	movq	img, %rcx
	movw	%ax, 7808(%rcx)
	movq	img, %rcx
	movw	%ax, 7794(%rcx)
	movq	img, %rcx
	movw	%ax, 7780(%rcx)
	movq	img, %rcx
	movw	%ax, 7766(%rcx)
	movl	-72(%rbp), %eax
	addl	-64(%rbp), %eax
	movl	-68(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 7852(%rcx)
	movq	img, %rcx
	movw	%ax, 7838(%rcx)
	movq	img, %rcx
	movw	%ax, 7824(%rcx)
	movq	img, %rcx
	movw	%ax, 7810(%rcx)
	movq	img, %rcx
	movw	%ax, 7796(%rcx)
	movq	img, %rcx
	movw	%ax, 7782(%rcx)
	movl	-68(%rbp), %eax
	addl	-60(%rbp), %eax
	movl	-64(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 7854(%rcx)
	movq	img, %rcx
	movw	%ax, 7840(%rcx)
	movq	img, %rcx
	movw	%ax, 7826(%rcx)
	movq	img, %rcx
	movw	%ax, 7812(%rcx)
	movq	img, %rcx
	movw	%ax, 7798(%rcx)
	movl	-64(%rbp), %eax
	addl	-56(%rbp), %eax
	movl	-60(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 7856(%rcx)
	movq	img, %rcx
	movw	%ax, 7842(%rcx)
	movq	img, %rcx
	movw	%ax, 7828(%rcx)
	movq	img, %rcx
	movw	%ax, 7814(%rcx)
	movl	-60(%rbp), %eax
	addl	-52(%rbp), %eax
	movl	-56(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 7858(%rcx)
	movq	img, %rcx
	movw	%ax, 7844(%rcx)
	movq	img, %rcx
	movw	%ax, 7830(%rcx)
	movl	-56(%rbp), %eax
	addl	-48(%rbp), %eax
	movl	-52(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 7860(%rcx)
	movq	img, %rcx
	movw	%ax, 7846(%rcx)
	movl	-52(%rbp), %eax
	imull	$3, -48(%rbp), %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 7862(%rcx)
	movl	-108(%rbp), %eax
	addl	-104(%rbp), %eax
	addl	$1, %eax
	sarl	$1, %eax
	movq	img, %rcx
	movw	%ax, 8248(%rcx)
	movl	-104(%rbp), %eax
	addl	-100(%rbp), %eax
	addl	$1, %eax
	sarl	$1, %eax
	movq	img, %rcx
	movw	%ax, 8280(%rcx)
	movq	img, %rcx
	movw	%ax, 8250(%rcx)
	movl	-100(%rbp), %eax
	addl	-96(%rbp), %eax
	addl	$1, %eax
	sarl	$1, %eax
	movq	img, %rcx
	movw	%ax, 8312(%rcx)
	movq	img, %rcx
	movw	%ax, 8282(%rcx)
	movq	img, %rcx
	movw	%ax, 8252(%rcx)
	movl	-96(%rbp), %eax
	addl	-92(%rbp), %eax
	addl	$1, %eax
	sarl	$1, %eax
	movq	img, %rcx
	movw	%ax, 8344(%rcx)
	movq	img, %rcx
	movw	%ax, 8314(%rcx)
	movq	img, %rcx
	movw	%ax, 8284(%rcx)
	movq	img, %rcx
	movw	%ax, 8254(%rcx)
	movl	-92(%rbp), %eax
	addl	-88(%rbp), %eax
	addl	$1, %eax
	sarl	$1, %eax
	movq	img, %rcx
	movw	%ax, 8346(%rcx)
	movq	img, %rcx
	movw	%ax, 8316(%rcx)
	movq	img, %rcx
	movw	%ax, 8286(%rcx)
	movq	img, %rcx
	movw	%ax, 8256(%rcx)
	movl	-88(%rbp), %eax
	addl	-84(%rbp), %eax
	addl	$1, %eax
	sarl	$1, %eax
	movq	img, %rcx
	movw	%ax, 8348(%rcx)
	movq	img, %rcx
	movw	%ax, 8318(%rcx)
	movq	img, %rcx
	movw	%ax, 8288(%rcx)
	movq	img, %rcx
	movw	%ax, 8258(%rcx)
	movl	-84(%rbp), %eax
	addl	-80(%rbp), %eax
	addl	$1, %eax
	sarl	$1, %eax
	movq	img, %rcx
	movw	%ax, 8350(%rcx)
	movq	img, %rcx
	movw	%ax, 8320(%rcx)
	movq	img, %rcx
	movw	%ax, 8290(%rcx)
	movq	img, %rcx
	movw	%ax, 8260(%rcx)
	movl	-80(%rbp), %eax
	addl	-76(%rbp), %eax
	addl	$1, %eax
	sarl	$1, %eax
	movq	img, %rcx
	movw	%ax, 8352(%rcx)
	movq	img, %rcx
	movw	%ax, 8322(%rcx)
	movq	img, %rcx
	movw	%ax, 8292(%rcx)
	movq	img, %rcx
	movw	%ax, 8262(%rcx)
	movl	-76(%rbp), %eax
	addl	-72(%rbp), %eax
	addl	$1, %eax
	sarl	$1, %eax
	movq	img, %rcx
	movw	%ax, 8354(%rcx)
	movq	img, %rcx
	movw	%ax, 8324(%rcx)
	movq	img, %rcx
	movw	%ax, 8294(%rcx)
	movl	-72(%rbp), %eax
	addl	-68(%rbp), %eax
	addl	$1, %eax
	sarl	$1, %eax
	movq	img, %rcx
	movw	%ax, 8356(%rcx)
	movq	img, %rcx
	movw	%ax, 8326(%rcx)
	movl	-68(%rbp), %eax
	addl	-64(%rbp), %eax
	addl	$1, %eax
	sarl	$1, %eax
	movq	img, %rcx
	movw	%ax, 8358(%rcx)
	movl	-108(%rbp), %eax
	addl	-100(%rbp), %eax
	movl	-104(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 8264(%rcx)
	movl	-104(%rbp), %eax
	addl	-96(%rbp), %eax
	movl	-100(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 8296(%rcx)
	movq	img, %rcx
	movw	%ax, 8266(%rcx)
	movl	-100(%rbp), %eax
	addl	-92(%rbp), %eax
	movl	-96(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 8328(%rcx)
	movq	img, %rcx
	movw	%ax, 8298(%rcx)
	movq	img, %rcx
	movw	%ax, 8268(%rcx)
	movl	-96(%rbp), %eax
	addl	-88(%rbp), %eax
	movl	-92(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 8360(%rcx)
	movq	img, %rcx
	movw	%ax, 8330(%rcx)
	movq	img, %rcx
	movw	%ax, 8300(%rcx)
	movq	img, %rcx
	movw	%ax, 8270(%rcx)
	movl	-92(%rbp), %eax
	addl	-84(%rbp), %eax
	movl	-88(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 8362(%rcx)
	movq	img, %rcx
	movw	%ax, 8332(%rcx)
	movq	img, %rcx
	movw	%ax, 8302(%rcx)
	movq	img, %rcx
	movw	%ax, 8272(%rcx)
	movl	-88(%rbp), %eax
	addl	-80(%rbp), %eax
	movl	-84(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 8364(%rcx)
	movq	img, %rcx
	movw	%ax, 8334(%rcx)
	movq	img, %rcx
	movw	%ax, 8304(%rcx)
	movq	img, %rcx
	movw	%ax, 8274(%rcx)
	movl	-84(%rbp), %eax
	addl	-76(%rbp), %eax
	movl	-80(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 8366(%rcx)
	movq	img, %rcx
	movw	%ax, 8336(%rcx)
	movq	img, %rcx
	movw	%ax, 8306(%rcx)
	movq	img, %rcx
	movw	%ax, 8276(%rcx)
	movl	-80(%rbp), %eax
	addl	-72(%rbp), %eax
	movl	-76(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 8368(%rcx)
	movq	img, %rcx
	movw	%ax, 8338(%rcx)
	movq	img, %rcx
	movw	%ax, 8308(%rcx)
	movq	img, %rcx
	movw	%ax, 8278(%rcx)
	movl	-76(%rbp), %eax
	addl	-68(%rbp), %eax
	movl	-72(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 8370(%rcx)
	movq	img, %rcx
	movw	%ax, 8340(%rcx)
	movq	img, %rcx
	movw	%ax, 8310(%rcx)
	movl	-72(%rbp), %eax
	addl	-64(%rbp), %eax
	movl	-68(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 8372(%rcx)
	movq	img, %rcx
	movw	%ax, 8342(%rcx)
	movl	-68(%rbp), %eax
	addl	-60(%rbp), %eax
	movl	-64(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 8374(%rcx)
.LBB25_76:                              # %if.end1383
	cmpl	$0, -132(%rbp)
	je	.LBB25_80
# %bb.77:                               # %land.lhs.true1385
	cmpl	$0, -116(%rbp)
	je	.LBB25_80
# %bb.78:                               # %land.lhs.true1387
	cmpl	$0, -148(%rbp)
	je	.LBB25_80
# %bb.79:                               # %if.then1389
	movl	-16(%rbp), %eax
	addl	-24(%rbp), %eax
	movl	-20(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 7976(%rcx)
	movl	-20(%rbp), %eax
	addl	-28(%rbp), %eax
	movl	-24(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 7978(%rcx)
	movq	img, %rcx
	movw	%ax, 7960(%rcx)
	movl	-24(%rbp), %eax
	addl	-32(%rbp), %eax
	movl	-28(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 7980(%rcx)
	movq	img, %rcx
	movw	%ax, 7962(%rcx)
	movq	img, %rcx
	movw	%ax, 7944(%rcx)
	movl	-28(%rbp), %eax
	addl	-36(%rbp), %eax
	movl	-32(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 7982(%rcx)
	movq	img, %rcx
	movw	%ax, 7964(%rcx)
	movq	img, %rcx
	movw	%ax, 7946(%rcx)
	movq	img, %rcx
	movw	%ax, 7928(%rcx)
	movl	-32(%rbp), %eax
	addl	-40(%rbp), %eax
	movl	-36(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 7984(%rcx)
	movq	img, %rcx
	movw	%ax, 7966(%rcx)
	movq	img, %rcx
	movw	%ax, 7948(%rcx)
	movq	img, %rcx
	movw	%ax, 7930(%rcx)
	movq	img, %rcx
	movw	%ax, 7912(%rcx)
	movl	-36(%rbp), %eax
	addl	-44(%rbp), %eax
	movl	-40(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 7986(%rcx)
	movq	img, %rcx
	movw	%ax, 7968(%rcx)
	movq	img, %rcx
	movw	%ax, 7950(%rcx)
	movq	img, %rcx
	movw	%ax, 7932(%rcx)
	movq	img, %rcx
	movw	%ax, 7914(%rcx)
	movq	img, %rcx
	movw	%ax, 7896(%rcx)
	movl	-40(%rbp), %eax
	addl	-112(%rbp), %eax
	movl	-44(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 7988(%rcx)
	movq	img, %rcx
	movw	%ax, 7970(%rcx)
	movq	img, %rcx
	movw	%ax, 7952(%rcx)
	movq	img, %rcx
	movw	%ax, 7934(%rcx)
	movq	img, %rcx
	movw	%ax, 7916(%rcx)
	movq	img, %rcx
	movw	%ax, 7898(%rcx)
	movq	img, %rcx
	movw	%ax, 7880(%rcx)
	movl	-44(%rbp), %eax
	addl	-108(%rbp), %eax
	movl	-112(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 7990(%rcx)
	movq	img, %rcx
	movw	%ax, 7972(%rcx)
	movq	img, %rcx
	movw	%ax, 7954(%rcx)
	movq	img, %rcx
	movw	%ax, 7936(%rcx)
	movq	img, %rcx
	movw	%ax, 7918(%rcx)
	movq	img, %rcx
	movw	%ax, 7900(%rcx)
	movq	img, %rcx
	movw	%ax, 7882(%rcx)
	movq	img, %rcx
	movw	%ax, 7864(%rcx)
	movl	-112(%rbp), %eax
	addl	-104(%rbp), %eax
	movl	-108(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 7974(%rcx)
	movq	img, %rcx
	movw	%ax, 7956(%rcx)
	movq	img, %rcx
	movw	%ax, 7938(%rcx)
	movq	img, %rcx
	movw	%ax, 7920(%rcx)
	movq	img, %rcx
	movw	%ax, 7902(%rcx)
	movq	img, %rcx
	movw	%ax, 7884(%rcx)
	movq	img, %rcx
	movw	%ax, 7866(%rcx)
	movl	-108(%rbp), %eax
	addl	-100(%rbp), %eax
	movl	-104(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 7958(%rcx)
	movq	img, %rcx
	movw	%ax, 7940(%rcx)
	movq	img, %rcx
	movw	%ax, 7922(%rcx)
	movq	img, %rcx
	movw	%ax, 7904(%rcx)
	movq	img, %rcx
	movw	%ax, 7886(%rcx)
	movq	img, %rcx
	movw	%ax, 7868(%rcx)
	movl	-104(%rbp), %eax
	addl	-96(%rbp), %eax
	movl	-100(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 7942(%rcx)
	movq	img, %rcx
	movw	%ax, 7924(%rcx)
	movq	img, %rcx
	movw	%ax, 7906(%rcx)
	movq	img, %rcx
	movw	%ax, 7888(%rcx)
	movq	img, %rcx
	movw	%ax, 7870(%rcx)
	movl	-100(%rbp), %eax
	addl	-92(%rbp), %eax
	movl	-96(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 7926(%rcx)
	movq	img, %rcx
	movw	%ax, 7908(%rcx)
	movq	img, %rcx
	movw	%ax, 7890(%rcx)
	movq	img, %rcx
	movw	%ax, 7872(%rcx)
	movl	-96(%rbp), %eax
	addl	-88(%rbp), %eax
	movl	-92(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 7910(%rcx)
	movq	img, %rcx
	movw	%ax, 7892(%rcx)
	movq	img, %rcx
	movw	%ax, 7874(%rcx)
	movl	-92(%rbp), %eax
	addl	-84(%rbp), %eax
	movl	-88(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 7894(%rcx)
	movq	img, %rcx
	movw	%ax, 7876(%rcx)
	movl	-88(%rbp), %eax
	addl	-80(%rbp), %eax
	movl	-84(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 7878(%rcx)
	movl	-112(%rbp), %eax
	addl	-108(%rbp), %eax
	addl	$1, %eax
	sarl	$1, %eax
	movq	img, %rcx
	movw	%ax, 8094(%rcx)
	movq	img, %rcx
	movw	%ax, 8060(%rcx)
	movq	img, %rcx
	movw	%ax, 8026(%rcx)
	movq	img, %rcx
	movw	%ax, 7992(%rcx)
	movl	-108(%rbp), %eax
	addl	-104(%rbp), %eax
	addl	$1, %eax
	sarl	$1, %eax
	movq	img, %rcx
	movw	%ax, 8096(%rcx)
	movq	img, %rcx
	movw	%ax, 8062(%rcx)
	movq	img, %rcx
	movw	%ax, 8028(%rcx)
	movq	img, %rcx
	movw	%ax, 7994(%rcx)
	movl	-104(%rbp), %eax
	addl	-100(%rbp), %eax
	addl	$1, %eax
	sarl	$1, %eax
	movq	img, %rcx
	movw	%ax, 8098(%rcx)
	movq	img, %rcx
	movw	%ax, 8064(%rcx)
	movq	img, %rcx
	movw	%ax, 8030(%rcx)
	movq	img, %rcx
	movw	%ax, 7996(%rcx)
	movl	-100(%rbp), %eax
	addl	-96(%rbp), %eax
	addl	$1, %eax
	sarl	$1, %eax
	movq	img, %rcx
	movw	%ax, 8100(%rcx)
	movq	img, %rcx
	movw	%ax, 8066(%rcx)
	movq	img, %rcx
	movw	%ax, 8032(%rcx)
	movq	img, %rcx
	movw	%ax, 7998(%rcx)
	movl	-96(%rbp), %eax
	addl	-92(%rbp), %eax
	addl	$1, %eax
	sarl	$1, %eax
	movq	img, %rcx
	movw	%ax, 8102(%rcx)
	movq	img, %rcx
	movw	%ax, 8068(%rcx)
	movq	img, %rcx
	movw	%ax, 8034(%rcx)
	movq	img, %rcx
	movw	%ax, 8000(%rcx)
	movl	-92(%rbp), %eax
	addl	-88(%rbp), %eax
	addl	$1, %eax
	sarl	$1, %eax
	movq	img, %rcx
	movw	%ax, 8070(%rcx)
	movq	img, %rcx
	movw	%ax, 8036(%rcx)
	movq	img, %rcx
	movw	%ax, 8002(%rcx)
	movl	-88(%rbp), %eax
	addl	-84(%rbp), %eax
	addl	$1, %eax
	sarl	$1, %eax
	movq	img, %rcx
	movw	%ax, 8038(%rcx)
	movq	img, %rcx
	movw	%ax, 8004(%rcx)
	movl	-84(%rbp), %eax
	addl	-80(%rbp), %eax
	addl	$1, %eax
	sarl	$1, %eax
	movq	img, %rcx
	movw	%ax, 8006(%rcx)
	movl	-44(%rbp), %eax
	addl	-108(%rbp), %eax
	movl	-112(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 8110(%rcx)
	movq	img, %rcx
	movw	%ax, 8076(%rcx)
	movq	img, %rcx
	movw	%ax, 8042(%rcx)
	movq	img, %rcx
	movw	%ax, 8008(%rcx)
	movl	-112(%rbp), %eax
	addl	-104(%rbp), %eax
	movl	-108(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 8112(%rcx)
	movq	img, %rcx
	movw	%ax, 8078(%rcx)
	movq	img, %rcx
	movw	%ax, 8044(%rcx)
	movq	img, %rcx
	movw	%ax, 8010(%rcx)
	movl	-108(%rbp), %eax
	addl	-100(%rbp), %eax
	movl	-104(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 8114(%rcx)
	movq	img, %rcx
	movw	%ax, 8080(%rcx)
	movq	img, %rcx
	movw	%ax, 8046(%rcx)
	movq	img, %rcx
	movw	%ax, 8012(%rcx)
	movl	-104(%rbp), %eax
	addl	-96(%rbp), %eax
	movl	-100(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 8116(%rcx)
	movq	img, %rcx
	movw	%ax, 8082(%rcx)
	movq	img, %rcx
	movw	%ax, 8048(%rcx)
	movq	img, %rcx
	movw	%ax, 8014(%rcx)
	movl	-100(%rbp), %eax
	addl	-92(%rbp), %eax
	movl	-96(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 8118(%rcx)
	movq	img, %rcx
	movw	%ax, 8084(%rcx)
	movq	img, %rcx
	movw	%ax, 8050(%rcx)
	movq	img, %rcx
	movw	%ax, 8016(%rcx)
	movl	-96(%rbp), %eax
	addl	-88(%rbp), %eax
	movl	-92(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 8086(%rcx)
	movq	img, %rcx
	movw	%ax, 8052(%rcx)
	movq	img, %rcx
	movw	%ax, 8018(%rcx)
	movl	-92(%rbp), %eax
	addl	-84(%rbp), %eax
	movl	-88(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 8054(%rcx)
	movq	img, %rcx
	movw	%ax, 8020(%rcx)
	movl	-88(%rbp), %eax
	addl	-80(%rbp), %eax
	movl	-84(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 8022(%rcx)
	movl	-40(%rbp), %eax
	addl	-112(%rbp), %eax
	movl	-44(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 8092(%rcx)
	movq	img, %rcx
	movw	%ax, 8058(%rcx)
	movq	img, %rcx
	movw	%ax, 8024(%rcx)
	movl	-36(%rbp), %eax
	addl	-44(%rbp), %eax
	movl	-40(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 8108(%rcx)
	movq	img, %rcx
	movw	%ax, 8074(%rcx)
	movq	img, %rcx
	movw	%ax, 8040(%rcx)
	movl	-32(%rbp), %eax
	addl	-40(%rbp), %eax
	movl	-36(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 8090(%rcx)
	movq	img, %rcx
	movw	%ax, 8056(%rcx)
	movl	-28(%rbp), %eax
	addl	-36(%rbp), %eax
	movl	-32(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 8106(%rcx)
	movq	img, %rcx
	movw	%ax, 8072(%rcx)
	movl	-24(%rbp), %eax
	addl	-32(%rbp), %eax
	movl	-28(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 8088(%rcx)
	movl	-20(%rbp), %eax
	addl	-28(%rbp), %eax
	movl	-24(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 8104(%rcx)
	movl	-44(%rbp), %eax
	addl	-112(%rbp), %eax
	addl	$1, %eax
	sarl	$1, %eax
	movq	img, %rcx
	movw	%ax, 8180(%rcx)
	movq	img, %rcx
	movw	%ax, 8160(%rcx)
	movq	img, %rcx
	movw	%ax, 8140(%rcx)
	movq	img, %rcx
	movw	%ax, 8120(%rcx)
	movl	-40(%rbp), %eax
	addl	-44(%rbp), %eax
	addl	$1, %eax
	sarl	$1, %eax
	movq	img, %rcx
	movw	%ax, 8196(%rcx)
	movq	img, %rcx
	movw	%ax, 8176(%rcx)
	movq	img, %rcx
	movw	%ax, 8156(%rcx)
	movq	img, %rcx
	movw	%ax, 8136(%rcx)
	movl	-36(%rbp), %eax
	addl	-40(%rbp), %eax
	addl	$1, %eax
	sarl	$1, %eax
	movq	img, %rcx
	movw	%ax, 8212(%rcx)
	movq	img, %rcx
	movw	%ax, 8192(%rcx)
	movq	img, %rcx
	movw	%ax, 8172(%rcx)
	movq	img, %rcx
	movw	%ax, 8152(%rcx)
	movl	-32(%rbp), %eax
	addl	-36(%rbp), %eax
	addl	$1, %eax
	sarl	$1, %eax
	movq	img, %rcx
	movw	%ax, 8228(%rcx)
	movq	img, %rcx
	movw	%ax, 8208(%rcx)
	movq	img, %rcx
	movw	%ax, 8188(%rcx)
	movq	img, %rcx
	movw	%ax, 8168(%rcx)
	movl	-28(%rbp), %eax
	addl	-32(%rbp), %eax
	addl	$1, %eax
	sarl	$1, %eax
	movq	img, %rcx
	movw	%ax, 8244(%rcx)
	movq	img, %rcx
	movw	%ax, 8224(%rcx)
	movq	img, %rcx
	movw	%ax, 8204(%rcx)
	movq	img, %rcx
	movw	%ax, 8184(%rcx)
	movl	-24(%rbp), %eax
	addl	-28(%rbp), %eax
	addl	$1, %eax
	sarl	$1, %eax
	movq	img, %rcx
	movw	%ax, 8240(%rcx)
	movq	img, %rcx
	movw	%ax, 8220(%rcx)
	movq	img, %rcx
	movw	%ax, 8200(%rcx)
	movl	-20(%rbp), %eax
	addl	-24(%rbp), %eax
	addl	$1, %eax
	sarl	$1, %eax
	movq	img, %rcx
	movw	%ax, 8236(%rcx)
	movq	img, %rcx
	movw	%ax, 8216(%rcx)
	movl	-16(%rbp), %eax
	addl	-20(%rbp), %eax
	addl	$1, %eax
	sarl	$1, %eax
	movq	img, %rcx
	movw	%ax, 8232(%rcx)
	movl	-44(%rbp), %eax
	addl	-108(%rbp), %eax
	movl	-112(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 8182(%rcx)
	movq	img, %rcx
	movw	%ax, 8162(%rcx)
	movq	img, %rcx
	movw	%ax, 8142(%rcx)
	movq	img, %rcx
	movw	%ax, 8122(%rcx)
	movl	-112(%rbp), %eax
	addl	-40(%rbp), %eax
	movl	-44(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 8198(%rcx)
	movq	img, %rcx
	movw	%ax, 8178(%rcx)
	movq	img, %rcx
	movw	%ax, 8158(%rcx)
	movq	img, %rcx
	movw	%ax, 8138(%rcx)
	movl	-44(%rbp), %eax
	addl	-36(%rbp), %eax
	movl	-40(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 8214(%rcx)
	movq	img, %rcx
	movw	%ax, 8194(%rcx)
	movq	img, %rcx
	movw	%ax, 8174(%rcx)
	movq	img, %rcx
	movw	%ax, 8154(%rcx)
	movl	-40(%rbp), %eax
	addl	-32(%rbp), %eax
	movl	-36(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 8230(%rcx)
	movq	img, %rcx
	movw	%ax, 8210(%rcx)
	movq	img, %rcx
	movw	%ax, 8190(%rcx)
	movq	img, %rcx
	movw	%ax, 8170(%rcx)
	movl	-36(%rbp), %eax
	addl	-28(%rbp), %eax
	movl	-32(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 8246(%rcx)
	movq	img, %rcx
	movw	%ax, 8226(%rcx)
	movq	img, %rcx
	movw	%ax, 8206(%rcx)
	movq	img, %rcx
	movw	%ax, 8186(%rcx)
	movl	-32(%rbp), %eax
	addl	-24(%rbp), %eax
	movl	-28(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 8242(%rcx)
	movq	img, %rcx
	movw	%ax, 8222(%rcx)
	movq	img, %rcx
	movw	%ax, 8202(%rcx)
	movl	-28(%rbp), %eax
	addl	-20(%rbp), %eax
	movl	-24(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 8238(%rcx)
	movq	img, %rcx
	movw	%ax, 8218(%rcx)
	movl	-24(%rbp), %eax
	addl	-16(%rbp), %eax
	movl	-20(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 8234(%rcx)
	movl	-112(%rbp), %eax
	addl	-104(%rbp), %eax
	movl	-108(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 8164(%rcx)
	movq	img, %rcx
	movw	%ax, 8144(%rcx)
	movq	img, %rcx
	movw	%ax, 8124(%rcx)
	movl	-108(%rbp), %eax
	addl	-100(%rbp), %eax
	movl	-104(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 8166(%rcx)
	movq	img, %rcx
	movw	%ax, 8146(%rcx)
	movq	img, %rcx
	movw	%ax, 8126(%rcx)
	movl	-104(%rbp), %eax
	addl	-96(%rbp), %eax
	movl	-100(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 8148(%rcx)
	movq	img, %rcx
	movw	%ax, 8128(%rcx)
	movl	-100(%rbp), %eax
	addl	-92(%rbp), %eax
	movl	-96(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 8150(%rcx)
	movq	img, %rcx
	movw	%ax, 8130(%rcx)
	movl	-96(%rbp), %eax
	addl	-88(%rbp), %eax
	movl	-92(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 8132(%rcx)
	movl	-92(%rbp), %eax
	addl	-84(%rbp), %eax
	movl	-88(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 8134(%rcx)
.LBB25_80:                              # %if.end2641
	cmpl	$0, -116(%rbp)
	je	.LBB25_82
# %bb.81:                               # %if.then2643
	movl	-44(%rbp), %eax
	addl	-40(%rbp), %eax
	addl	$1, %eax
	sarl	$1, %eax
	movq	img, %rcx
	movw	%ax, 8376(%rcx)
	movl	-40(%rbp), %eax
	addl	-36(%rbp), %eax
	addl	$1, %eax
	sarl	$1, %eax
	movq	img, %rcx
	movw	%ax, 8380(%rcx)
	movq	img, %rcx
	movw	%ax, 8392(%rcx)
	movl	-36(%rbp), %eax
	addl	-32(%rbp), %eax
	addl	$1, %eax
	sarl	$1, %eax
	movq	img, %rcx
	movw	%ax, 8384(%rcx)
	movq	img, %rcx
	movw	%ax, 8396(%rcx)
	movq	img, %rcx
	movw	%ax, 8408(%rcx)
	movl	-32(%rbp), %eax
	addl	-28(%rbp), %eax
	addl	$1, %eax
	sarl	$1, %eax
	movq	img, %rcx
	movw	%ax, 8388(%rcx)
	movq	img, %rcx
	movw	%ax, 8400(%rcx)
	movq	img, %rcx
	movw	%ax, 8412(%rcx)
	movq	img, %rcx
	movw	%ax, 8424(%rcx)
	movl	-28(%rbp), %eax
	addl	-24(%rbp), %eax
	addl	$1, %eax
	sarl	$1, %eax
	movq	img, %rcx
	movw	%ax, 8404(%rcx)
	movq	img, %rcx
	movw	%ax, 8416(%rcx)
	movq	img, %rcx
	movw	%ax, 8428(%rcx)
	movq	img, %rcx
	movw	%ax, 8440(%rcx)
	movl	-24(%rbp), %eax
	addl	-20(%rbp), %eax
	addl	$1, %eax
	sarl	$1, %eax
	movq	img, %rcx
	movw	%ax, 8420(%rcx)
	movq	img, %rcx
	movw	%ax, 8432(%rcx)
	movq	img, %rcx
	movw	%ax, 8444(%rcx)
	movq	img, %rcx
	movw	%ax, 8456(%rcx)
	movl	-20(%rbp), %eax
	addl	-16(%rbp), %eax
	addl	$1, %eax
	sarl	$1, %eax
	movq	img, %rcx
	movw	%ax, 8436(%rcx)
	movq	img, %rcx
	movw	%ax, 8448(%rcx)
	movq	img, %rcx
	movw	%ax, 8460(%rcx)
	movq	img, %rcx
	movw	%ax, 8472(%rcx)
	movl	-16(%rbp), %eax
	movq	img, %rcx
	movw	%ax, 8502(%rcx)
	movq	img, %rcx
	movw	%ax, 8500(%rcx)
	movq	img, %rcx
	movw	%ax, 8498(%rcx)
	movq	img, %rcx
	movw	%ax, 8496(%rcx)
	movq	img, %rcx
	movw	%ax, 8494(%rcx)
	movq	img, %rcx
	movw	%ax, 8492(%rcx)
	movq	img, %rcx
	movw	%ax, 8490(%rcx)
	movq	img, %rcx
	movw	%ax, 8488(%rcx)
	movq	img, %rcx
	movw	%ax, 8486(%rcx)
	movq	img, %rcx
	movw	%ax, 8484(%rcx)
	movq	img, %rcx
	movw	%ax, 8482(%rcx)
	movq	img, %rcx
	movw	%ax, 8480(%rcx)
	movq	img, %rcx
	movw	%ax, 8478(%rcx)
	movq	img, %rcx
	movw	%ax, 8476(%rcx)
	movq	img, %rcx
	movw	%ax, 8470(%rcx)
	movq	img, %rcx
	movw	%ax, 8468(%rcx)
	movq	img, %rcx
	movw	%ax, 8466(%rcx)
	movq	img, %rcx
	movw	%ax, 8464(%rcx)
	movq	img, %rcx
	movw	%ax, 8454(%rcx)
	movq	img, %rcx
	movw	%ax, 8452(%rcx)
	movl	-20(%rbp), %eax
	imull	$3, -16(%rbp), %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 8438(%rcx)
	movq	img, %rcx
	movw	%ax, 8450(%rcx)
	movq	img, %rcx
	movw	%ax, 8462(%rcx)
	movq	img, %rcx
	movw	%ax, 8474(%rcx)
	movl	-16(%rbp), %eax
	addl	-24(%rbp), %eax
	movl	-20(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 8422(%rcx)
	movq	img, %rcx
	movw	%ax, 8434(%rcx)
	movq	img, %rcx
	movw	%ax, 8446(%rcx)
	movq	img, %rcx
	movw	%ax, 8458(%rcx)
	movl	-20(%rbp), %eax
	addl	-28(%rbp), %eax
	movl	-24(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 8406(%rcx)
	movq	img, %rcx
	movw	%ax, 8418(%rcx)
	movq	img, %rcx
	movw	%ax, 8430(%rcx)
	movq	img, %rcx
	movw	%ax, 8442(%rcx)
	movl	-24(%rbp), %eax
	addl	-32(%rbp), %eax
	movl	-28(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 8390(%rcx)
	movq	img, %rcx
	movw	%ax, 8402(%rcx)
	movq	img, %rcx
	movw	%ax, 8414(%rcx)
	movq	img, %rcx
	movw	%ax, 8426(%rcx)
	movl	-28(%rbp), %eax
	addl	-36(%rbp), %eax
	movl	-32(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 8386(%rcx)
	movq	img, %rcx
	movw	%ax, 8398(%rcx)
	movq	img, %rcx
	movw	%ax, 8410(%rcx)
	movl	-32(%rbp), %eax
	addl	-40(%rbp), %eax
	movl	-36(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 8382(%rcx)
	movq	img, %rcx
	movw	%ax, 8394(%rcx)
	movl	-36(%rbp), %eax
	addl	-44(%rbp), %eax
	movl	-40(%rbp), %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	addl	$2, %eax
	sarl	$2, %eax
	movq	img, %rcx
	movw	%ax, 8378(%rcx)
.LBB25_82:                              # %if.end3005
	cmpl	$118723224, -224(%rbp)  # imm = 0x7139298
	jne	.LBB25_84
.LBB25_83:
	addq	$464, %rsp              # imm = 0x1D0
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB25_84:                              # %func_exit
	.cfi_def_cfa %rbp, 16
	callq	detect_breach
	jmp	.LBB25_83
.Lfunc_end25:
	.size	intrapred_luma8x8.20, .Lfunc_end25-intrapred_luma8x8.20
	.cfi_endproc
                                        # -- End function
	.globl	dct_luma8x8.21          # -- Begin function dct_luma8x8.21
	.p2align	4, 0x90
	.type	dct_luma8x8.21,@function
dct_luma8x8.21:                         # @dct_luma8x8.21
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$664, %rsp              # imm = 0x298
	.cfi_offset %rbx, -24
	xorl	%ecx, %ecx
	movl	$964573149, -396(%rbp)  # imm = 0x397E37DD
	movl	%edi, -36(%rbp)
	movq	%rsi, -352(%rbp)
	movl	%edx, -344(%rbp)
	movl	$0, -136(%rbp)
	movl	$0, -132(%rbp)
	movl	$0, -140(%rbp)
	movl	-36(%rbp), %eax
	cltd
	movl	$2, %esi
	idivl	%esi
	shll	$3, %edx
	movl	%edx, -52(%rbp)
	movl	-36(%rbp), %eax
	cltd
	idivl	%esi
	shll	$3, %eax
	movl	%eax, -44(%rbp)
	movq	img, %rax
	movq	14136(%rax), %rax
	movslq	-36(%rbp), %rdx
	movq	(%rax,%rdx,8), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -408(%rbp)
	movq	img, %rax
	movq	14136(%rax), %rax
	movslq	-36(%rbp), %rdx
	movq	(%rax,%rdx,8), %rax
	movq	(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, -416(%rbp)
	movq	img, %rax
	movq	14168(%rax), %rax
	movq	img, %rdx
	movslq	12(%rdx), %rdx
	imulq	$632, %rdx, %rdx        # imm = 0x278
	addq	%rdx, %rax
	movq	%rax, -392(%rbp)
	movq	img, %rax
	movl	40(%rax), %eax
	movq	img, %rdx
	addl	72668(%rdx), %eax
	cmpl	$0, %eax
	jne	.LBB26_2
# %bb.1:                                # %land.rhs
	movq	img, %rax
	cmpl	$1, 72704(%rax)
	sete	%cl
.LBB26_2:                               # %land.end
	andb	$1, %cl
	movzbl	%cl, %eax
	movl	%eax, -32(%rbp)
	movq	img, %rax
	movl	40(%rax), %eax
	movq	img, %rcx
	addl	72668(%rcx), %eax
	subl	$0, %eax
	cltd
	movl	$6, %ecx
	idivl	%ecx
	movl	%eax, -28(%rbp)
	movq	img, %rax
	movl	40(%rax), %eax
	movq	img, %rdx
	addl	72668(%rdx), %eax
	subl	$0, %eax
	cltd
	idivl	%ecx
	movl	%edx, -48(%rbp)
	movl	-28(%rbp), %eax
	addl	$16, %eax
	movl	%eax, -64(%rbp)
	cmpl	$6, -28(%rbp)
	jge	.LBB26_4
# %bb.3:                                # %if.then
	movl	$6, %eax
	subl	-28(%rbp), %eax
	movl	%eax, -132(%rbp)
	movl	$5, %ecx
	subl	-28(%rbp), %ecx
                                        # kill: def $cl killed $ecx
	movl	$1, %eax
	shll	%cl, %eax
	movl	%eax, -140(%rbp)
	jmp	.LBB26_5
.LBB26_4:                               # %if.else
	movl	-28(%rbp), %eax
	subl	$6, %eax
	movl	%eax, -136(%rbp)
.LBB26_5:                               # %if.end
	movq	img, %rax
	cmpl	$2, 24(%rax)
	jne	.LBB26_7
# %bb.6:                                # %if.then27
	movl	-64(%rbp), %ecx
                                        # kill: def $cl killed $ecx
	movl	$1, %eax
	shll	%cl, %eax
	cltd
	movl	$3, %ecx
	idivl	%ecx
	movl	%eax, -400(%rbp)
	jmp	.LBB26_8
.LBB26_7:                               # %if.else30
	movl	-64(%rbp), %ecx
                                        # kill: def $cl killed $ecx
	movl	$1, %eax
	shll	%cl, %eax
	cltd
	movl	$6, %ecx
	idivl	%ecx
	movl	%eax, -400(%rbp)
.LBB26_8:                               # %if.end33
	movl	$0, -12(%rbp)
.LBB26_9:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	cmpl	$8, -12(%rbp)
	jge	.LBB26_11
# %bb.10:                               # %land.rhs35
                                        #   in Loop: Header=BB26_9 Depth=1
	cmpl	$0, -32(%rbp)
	setne	%al
	xorb	$-1, %al
.LBB26_11:                              # %land.end36
                                        #   in Loop: Header=BB26_9 Depth=1
	testb	$1, %al
	jne	.LBB26_12
	jmp	.LBB26_14
.LBB26_12:                              # %for.body
                                        #   in Loop: Header=BB26_9 Depth=1
	xorl	%eax, %eax
	movq	img, %rcx
	movslq	-12(%rbp), %rdx
	movl	13112(%rcx,%rdx,4), %ecx
	movq	img, %rdx
	movslq	-12(%rbp), %rsi
	addl	13560(%rdx,%rsi,4), %ecx
	movl	%ecx, -128(%rbp)
	movq	img, %rcx
	movslq	-12(%rbp), %rdx
	movl	13176(%rcx,%rdx,4), %ecx
	movq	img, %rdx
	movslq	-12(%rbp), %rsi
	addl	13496(%rdx,%rsi,4), %ecx
	movl	%ecx, -124(%rbp)
	movq	img, %rcx
	movslq	-12(%rbp), %rdx
	movl	13240(%rcx,%rdx,4), %ecx
	movq	img, %rdx
	movslq	-12(%rbp), %rsi
	addl	13432(%rdx,%rsi,4), %ecx
	movl	%ecx, -120(%rbp)
	movq	img, %rcx
	movslq	-12(%rbp), %rdx
	movl	13304(%rcx,%rdx,4), %ecx
	movq	img, %rdx
	movslq	-12(%rbp), %rsi
	addl	13368(%rdx,%rsi,4), %ecx
	movl	%ecx, -116(%rbp)
	movl	-128(%rbp), %ecx
	addl	-116(%rbp), %ecx
	movl	%ecx, -336(%rbp)
	movl	-124(%rbp), %ecx
	addl	-120(%rbp), %ecx
	movl	%ecx, -332(%rbp)
	movl	-128(%rbp), %ecx
	subl	-116(%rbp), %ecx
	movl	%ecx, -328(%rbp)
	movl	-124(%rbp), %ecx
	subl	-120(%rbp), %ecx
	movl	%ecx, -324(%rbp)
	movq	img, %rcx
	movslq	-12(%rbp), %rdx
	movl	13112(%rcx,%rdx,4), %ecx
	movq	img, %rdx
	movslq	-12(%rbp), %rsi
	subl	13560(%rdx,%rsi,4), %ecx
	movl	%ecx, -112(%rbp)
	movq	img, %rcx
	movslq	-12(%rbp), %rdx
	movl	13176(%rcx,%rdx,4), %ecx
	movq	img, %rdx
	movslq	-12(%rbp), %rsi
	subl	13496(%rdx,%rsi,4), %ecx
	movl	%ecx, -108(%rbp)
	movq	img, %rcx
	movslq	-12(%rbp), %rdx
	movl	13240(%rcx,%rdx,4), %ecx
	movq	img, %rdx
	movslq	-12(%rbp), %rsi
	subl	13432(%rdx,%rsi,4), %ecx
	movl	%ecx, -104(%rbp)
	movq	img, %rcx
	movslq	-12(%rbp), %rdx
	movl	13304(%rcx,%rdx,4), %ecx
	movq	img, %rdx
	movslq	-12(%rbp), %rsi
	subl	13368(%rdx,%rsi,4), %ecx
	movl	%ecx, -100(%rbp)
	movl	-108(%rbp), %ecx
	addl	-104(%rbp), %ecx
	movl	-112(%rbp), %edx
	sarl	$1, %edx
	addl	-112(%rbp), %edx
	addl	%edx, %ecx
	movl	%ecx, -320(%rbp)
	movl	-112(%rbp), %ecx
	subl	-100(%rbp), %ecx
	movl	-104(%rbp), %edx
	sarl	$1, %edx
	addl	-104(%rbp), %edx
	subl	%edx, %ecx
	movl	%ecx, -316(%rbp)
	movl	-112(%rbp), %ecx
	addl	-100(%rbp), %ecx
	movl	-108(%rbp), %edx
	sarl	$1, %edx
	addl	-108(%rbp), %edx
	subl	%edx, %ecx
	movl	%ecx, -312(%rbp)
	movl	-108(%rbp), %ecx
	subl	-104(%rbp), %ecx
	movl	-100(%rbp), %edx
	sarl	$1, %edx
	addl	-100(%rbp), %edx
	addl	%edx, %ecx
	movl	%ecx, -308(%rbp)
	movl	-336(%rbp), %ecx
	addl	-332(%rbp), %ecx
	movslq	-12(%rbp), %rdx
	movl	%ecx, -672(%rbp,%rdx,4)
	movl	-328(%rbp), %ecx
	movl	-324(%rbp), %edx
	sarl	$1, %edx
	addl	%edx, %ecx
	movslq	-12(%rbp), %rdx
	movl	%ecx, -608(%rbp,%rdx,4)
	movl	-336(%rbp), %ecx
	subl	-332(%rbp), %ecx
	movslq	-12(%rbp), %rdx
	movl	%ecx, -544(%rbp,%rdx,4)
	movl	-328(%rbp), %ecx
	sarl	$1, %ecx
	subl	-324(%rbp), %ecx
	movslq	-12(%rbp), %rdx
	movl	%ecx, -480(%rbp,%rdx,4)
	movl	-320(%rbp), %ecx
	movl	-308(%rbp), %edx
	sarl	$2, %edx
	addl	%edx, %ecx
	movslq	-12(%rbp), %rdx
	movl	%ecx, -640(%rbp,%rdx,4)
	movl	-316(%rbp), %ecx
	movl	-312(%rbp), %edx
	sarl	$2, %edx
	addl	%edx, %ecx
	movslq	-12(%rbp), %rdx
	movl	%ecx, -576(%rbp,%rdx,4)
	movl	-312(%rbp), %ecx
	movl	-316(%rbp), %edx
	sarl	$2, %edx
	subl	%edx, %ecx
	movslq	-12(%rbp), %rdx
	movl	%ecx, -512(%rbp,%rdx,4)
	subl	-308(%rbp), %eax
	movl	-320(%rbp), %ecx
	sarl	$2, %ecx
	addl	%ecx, %eax
	movslq	-12(%rbp), %rcx
	movl	%eax, -448(%rbp,%rcx,4)
# %bb.13:                               # %for.inc
                                        #   in Loop: Header=BB26_9 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB26_9
.LBB26_14:                              # %for.end
	movl	$0, -12(%rbp)
.LBB26_15:                              # %for.cond223
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	cmpl	$8, -12(%rbp)
	jge	.LBB26_17
# %bb.16:                               # %land.rhs225
                                        #   in Loop: Header=BB26_15 Depth=1
	cmpl	$0, -32(%rbp)
	setne	%al
	xorb	$-1, %al
.LBB26_17:                              # %land.end228
                                        #   in Loop: Header=BB26_15 Depth=1
	testb	$1, %al
	jne	.LBB26_18
	jmp	.LBB26_20
.LBB26_18:                              # %for.body230
                                        #   in Loop: Header=BB26_15 Depth=1
	xorl	%eax, %eax
	movslq	-12(%rbp), %rdx
	shlq	$5, %rdx
	leaq	-672(%rbp), %rcx
	movq	%rcx, %rsi
	addq	%rdx, %rsi
	movl	(%rsi), %edx
	movslq	-12(%rbp), %rsi
	shlq	$5, %rsi
	movq	%rcx, %rdi
	addq	%rsi, %rdi
	addl	28(%rdi), %edx
	movl	%edx, -96(%rbp)
	movslq	-12(%rbp), %rdx
	shlq	$5, %rdx
	movq	%rcx, %rsi
	addq	%rdx, %rsi
	movl	4(%rsi), %edx
	movslq	-12(%rbp), %rsi
	shlq	$5, %rsi
	movq	%rcx, %rdi
	addq	%rsi, %rdi
	addl	24(%rdi), %edx
	movl	%edx, -92(%rbp)
	movslq	-12(%rbp), %rdx
	shlq	$5, %rdx
	movq	%rcx, %rsi
	addq	%rdx, %rsi
	movl	8(%rsi), %edx
	movslq	-12(%rbp), %rsi
	shlq	$5, %rsi
	movq	%rcx, %rdi
	addq	%rsi, %rdi
	addl	20(%rdi), %edx
	movl	%edx, -88(%rbp)
	movslq	-12(%rbp), %rdx
	shlq	$5, %rdx
	movq	%rcx, %rsi
	addq	%rdx, %rsi
	movl	12(%rsi), %edx
	movslq	-12(%rbp), %rsi
	shlq	$5, %rsi
	movq	%rcx, %rdi
	addq	%rsi, %rdi
	addl	16(%rdi), %edx
	movl	%edx, -84(%rbp)
	movl	-96(%rbp), %edx
	addl	-84(%rbp), %edx
	movl	%edx, -240(%rbp)
	movl	-92(%rbp), %edx
	addl	-88(%rbp), %edx
	movl	%edx, -236(%rbp)
	movl	-96(%rbp), %edx
	subl	-84(%rbp), %edx
	movl	%edx, -232(%rbp)
	movl	-92(%rbp), %edx
	subl	-88(%rbp), %edx
	movl	%edx, -228(%rbp)
	movslq	-12(%rbp), %rdx
	shlq	$5, %rdx
	movq	%rcx, %rsi
	addq	%rdx, %rsi
	movl	(%rsi), %edx
	movslq	-12(%rbp), %rsi
	shlq	$5, %rsi
	movq	%rcx, %rdi
	addq	%rsi, %rdi
	subl	28(%rdi), %edx
	movl	%edx, -80(%rbp)
	movslq	-12(%rbp), %rdx
	shlq	$5, %rdx
	movq	%rcx, %rsi
	addq	%rdx, %rsi
	movl	4(%rsi), %edx
	movslq	-12(%rbp), %rsi
	shlq	$5, %rsi
	movq	%rcx, %rdi
	addq	%rsi, %rdi
	subl	24(%rdi), %edx
	movl	%edx, -76(%rbp)
	movslq	-12(%rbp), %rdx
	shlq	$5, %rdx
	movq	%rcx, %rsi
	addq	%rdx, %rsi
	movl	8(%rsi), %edx
	movslq	-12(%rbp), %rsi
	shlq	$5, %rsi
	movq	%rcx, %rdi
	addq	%rsi, %rdi
	subl	20(%rdi), %edx
	movl	%edx, -72(%rbp)
	movslq	-12(%rbp), %rdx
	shlq	$5, %rdx
	movq	%rcx, %rsi
	addq	%rdx, %rsi
	movl	12(%rsi), %edx
	movslq	-12(%rbp), %rsi
	shlq	$5, %rsi
	addq	%rsi, %rcx
	subl	16(%rcx), %edx
	movl	%edx, -68(%rbp)
	movl	-76(%rbp), %ecx
	addl	-72(%rbp), %ecx
	movl	-80(%rbp), %edx
	sarl	$1, %edx
	addl	-80(%rbp), %edx
	addl	%edx, %ecx
	movl	%ecx, -224(%rbp)
	movl	-80(%rbp), %ecx
	subl	-68(%rbp), %ecx
	movl	-72(%rbp), %edx
	sarl	$1, %edx
	addl	-72(%rbp), %edx
	subl	%edx, %ecx
	movl	%ecx, -220(%rbp)
	movl	-80(%rbp), %ecx
	addl	-68(%rbp), %ecx
	movl	-76(%rbp), %edx
	sarl	$1, %edx
	addl	-76(%rbp), %edx
	subl	%edx, %ecx
	movl	%ecx, -216(%rbp)
	movl	-76(%rbp), %ecx
	subl	-72(%rbp), %ecx
	movl	-68(%rbp), %edx
	sarl	$1, %edx
	addl	-68(%rbp), %edx
	addl	%edx, %ecx
	movl	%ecx, -212(%rbp)
	movl	-240(%rbp), %ecx
	addl	-236(%rbp), %ecx
	movq	img, %rdx
	addq	$13112, %rdx            # imm = 0x3338
	movslq	-12(%rbp), %rsi
	shlq	$6, %rsi
	addq	%rsi, %rdx
	movl	%ecx, (%rdx)
	movl	-232(%rbp), %ecx
	movl	-228(%rbp), %edx
	sarl	$1, %edx
	addl	%edx, %ecx
	movq	img, %rdx
	addq	$13112, %rdx            # imm = 0x3338
	movslq	-12(%rbp), %rsi
	shlq	$6, %rsi
	addq	%rsi, %rdx
	movl	%ecx, 8(%rdx)
	movl	-240(%rbp), %ecx
	subl	-236(%rbp), %ecx
	movq	img, %rdx
	addq	$13112, %rdx            # imm = 0x3338
	movslq	-12(%rbp), %rsi
	shlq	$6, %rsi
	addq	%rsi, %rdx
	movl	%ecx, 16(%rdx)
	movl	-232(%rbp), %ecx
	sarl	$1, %ecx
	subl	-228(%rbp), %ecx
	movq	img, %rdx
	addq	$13112, %rdx            # imm = 0x3338
	movslq	-12(%rbp), %rsi
	shlq	$6, %rsi
	addq	%rsi, %rdx
	movl	%ecx, 24(%rdx)
	movl	-224(%rbp), %ecx
	movl	-212(%rbp), %edx
	sarl	$2, %edx
	addl	%edx, %ecx
	movq	img, %rdx
	addq	$13112, %rdx            # imm = 0x3338
	movslq	-12(%rbp), %rsi
	shlq	$6, %rsi
	addq	%rsi, %rdx
	movl	%ecx, 4(%rdx)
	movl	-220(%rbp), %ecx
	movl	-216(%rbp), %edx
	sarl	$2, %edx
	addl	%edx, %ecx
	movq	img, %rdx
	addq	$13112, %rdx            # imm = 0x3338
	movslq	-12(%rbp), %rsi
	shlq	$6, %rsi
	addq	%rsi, %rdx
	movl	%ecx, 12(%rdx)
	movl	-216(%rbp), %ecx
	movl	-220(%rbp), %edx
	sarl	$2, %edx
	subl	%edx, %ecx
	movq	img, %rdx
	addq	$13112, %rdx            # imm = 0x3338
	movslq	-12(%rbp), %rsi
	shlq	$6, %rsi
	addq	%rsi, %rdx
	movl	%ecx, 20(%rdx)
	subl	-212(%rbp), %eax
	movl	-224(%rbp), %ecx
	sarl	$2, %ecx
	addl	%ecx, %eax
	movq	img, %rcx
	addq	$13112, %rcx            # imm = 0x3338
	movslq	-12(%rbp), %rdx
	shlq	$6, %rdx
	addq	%rdx, %rcx
	movl	%eax, 28(%rcx)
# %bb.19:                               # %for.inc412
                                        #   in Loop: Header=BB26_15 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB26_15
.LBB26_20:                              # %for.end414
	movl	$0, -340(%rbp)
	movl	$-1, -56(%rbp)
	movl	$0, -60(%rbp)
	movl	$-1, -356(%rbp)
	movl	$-1, -360(%rbp)
	movl	$-1, -364(%rbp)
	movl	$-1, -368(%rbp)
	movl	$0, -372(%rbp)
	movl	$0, -376(%rbp)
	movl	$0, -380(%rbp)
	movl	$0, -384(%rbp)
	movl	$0, -20(%rbp)
.LBB26_21:                              # %for.cond423
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$64, -20(%rbp)
	jge	.LBB26_61
# %bb.22:                               # %for.body425
                                        #   in Loop: Header=BB26_21 Depth=1
	movq	img, %rax
	cmpl	$0, 72444(%rax)
	jne	.LBB26_25
# %bb.23:                               # %lor.lhs.false
                                        #   in Loop: Header=BB26_21 Depth=1
	movq	img, %rax
	cmpl	$0, 72400(%rax)
	je	.LBB26_26
# %bb.24:                               # %land.lhs.true
                                        #   in Loop: Header=BB26_21 Depth=1
	movq	-392(%rbp), %rax
	cmpl	$0, 532(%rax)
	je	.LBB26_26
.LBB26_25:                              # %if.then429
                                        #   in Loop: Header=BB26_21 Depth=1
	movslq	-20(%rbp), %rax
	movzbl	FIELD_SCAN8x8(,%rax,2), %eax
	movl	%eax, -12(%rbp)
	movslq	-20(%rbp), %rax
	movzbl	FIELD_SCAN8x8+1(,%rax,2), %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB26_27
.LBB26_26:                              # %if.else437
                                        #   in Loop: Header=BB26_21 Depth=1
	movslq	-20(%rbp), %rax
	movzbl	SNGL_SCAN8x8(,%rax,2), %eax
	movl	%eax, -12(%rbp)
	movslq	-20(%rbp), %rax
	movzbl	SNGL_SCAN8x8+1(,%rax,2), %eax
	movl	%eax, -16(%rbp)
.LBB26_27:                              # %if.end446
                                        #   in Loop: Header=BB26_21 Depth=1
	movl	-56(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -56(%rbp)
	movl	$0, -40(%rbp)
	movl	-20(%rbp), %eax
	andl	$3, %eax
	cltq
	movl	-368(%rbp,%rax,4), %ecx
	addl	$1, %ecx
	movl	%ecx, -368(%rbp,%rax,4)
	cmpl	$0, -32(%rbp)
	je	.LBB26_29
# %bb.28:                               # %if.then452
                                        #   in Loop: Header=BB26_21 Depth=1
	movq	img, %rax
	addq	$13112, %rax            # imm = 0x3338
	movslq	-12(%rbp), %rcx
	shlq	$6, %rcx
	addq	%rcx, %rax
	movslq	-16(%rbp), %rcx
	movl	(%rax,%rcx,4), %edi
	callq	abs
	movl	%eax, -24(%rbp)
	jmp	.LBB26_33
.LBB26_29:                              # %if.else458
                                        #   in Loop: Header=BB26_21 Depth=1
	cmpl	$1, -344(%rbp)
	jne	.LBB26_31
# %bb.30:                               # %if.then461
                                        #   in Loop: Header=BB26_21 Depth=1
	movq	img, %rax
	addq	$13112, %rax            # imm = 0x3338
	movslq	-12(%rbp), %rcx
	shlq	$6, %rcx
	addq	%rcx, %rax
	movslq	-16(%rbp), %rcx
	movl	(%rax,%rcx,4), %edi
	callq	abs
	movslq	-48(%rbp), %rcx
	shlq	$8, %rcx
	movabsq	$LevelScale8x8Luma_Intra, %rdx
	addq	%rcx, %rdx
	movslq	-12(%rbp), %rcx
	shlq	$5, %rcx
	addq	%rcx, %rdx
	movslq	-16(%rbp), %rcx
	imull	(%rdx,%rcx,4), %eax
	movslq	-28(%rbp), %rcx
	shlq	$8, %rcx
	movabsq	$LevelOffset8x8Luma_Intra, %rdx
	addq	%rcx, %rdx
	movslq	-12(%rbp), %rcx
	shlq	$5, %rcx
	addq	%rcx, %rdx
	movslq	-16(%rbp), %rcx
	addl	(%rdx,%rcx,4), %eax
	movl	-64(%rbp), %ecx
                                        # kill: def $cl killed $ecx
	sarl	%cl, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB26_32
.LBB26_31:                              # %if.else483
                                        #   in Loop: Header=BB26_21 Depth=1
	movq	img, %rax
	addq	$13112, %rax            # imm = 0x3338
	movslq	-12(%rbp), %rcx
	shlq	$6, %rcx
	addq	%rcx, %rax
	movslq	-16(%rbp), %rcx
	movl	(%rax,%rcx,4), %edi
	callq	abs
	movslq	-48(%rbp), %rcx
	shlq	$8, %rcx
	movabsq	$LevelScale8x8Luma_Inter, %rdx
	addq	%rcx, %rdx
	movslq	-12(%rbp), %rcx
	shlq	$5, %rcx
	addq	%rcx, %rdx
	movslq	-16(%rbp), %rcx
	imull	(%rdx,%rcx,4), %eax
	movslq	-28(%rbp), %rcx
	shlq	$8, %rcx
	movabsq	$LevelOffset8x8Luma_Inter, %rdx
	addq	%rcx, %rdx
	movslq	-12(%rbp), %rcx
	shlq	$5, %rcx
	addq	%rcx, %rdx
	movslq	-16(%rbp), %rcx
	addl	(%rdx,%rcx,4), %eax
	movl	-64(%rbp), %ecx
                                        # kill: def $cl killed $ecx
	sarl	%cl, %eax
	movl	%eax, -24(%rbp)
.LBB26_32:                              # %if.end505
                                        #   in Loop: Header=BB26_21 Depth=1
	jmp	.LBB26_33
.LBB26_33:                              # %if.end506
                                        #   in Loop: Header=BB26_21 Depth=1
	cmpl	$0, -24(%rbp)
	je	.LBB26_57
# %bb.34:                               # %if.then509
                                        #   in Loop: Header=BB26_21 Depth=1
	movl	$1, -340(%rbp)
	movq	-392(%rbp), %rax
	cmpl	$0, 572(%rax)
	je	.LBB26_40
# %bb.35:                               # %land.lhs.true511
                                        #   in Loop: Header=BB26_21 Depth=1
	movq	input, %rax
	cmpl	$0, 2356(%rax)
	jne	.LBB26_40
# %bb.36:                               # %if.then514
                                        #   in Loop: Header=BB26_21 Depth=1
	cmpl	$1, -24(%rbp)
	jle	.LBB26_38
# %bb.37:                               # %if.then517
                                        #   in Loop: Header=BB26_21 Depth=1
	movq	-352(%rbp), %rax
	movl	(%rax), %ecx
	addl	$999999, %ecx           # imm = 0xF423F
	movl	%ecx, (%rax)
	jmp	.LBB26_39
.LBB26_38:                              # %if.else519
                                        #   in Loop: Header=BB26_21 Depth=1
	movabsq	$COEFF_COST8x8, %rax
	movq	input, %rcx
	movslq	2468(%rcx), %rcx
	shlq	$6, %rcx
	addq	%rcx, %rax
	movl	-20(%rbp), %ecx
	andl	$3, %ecx
	movslq	%ecx, %rcx
	movslq	-368(%rbp,%rcx,4), %rcx
	movzbl	(%rax,%rcx), %eax
	movq	-352(%rbp), %rcx
	addl	(%rcx), %eax
	movl	%eax, (%rcx)
.LBB26_39:                              # %if.end529
                                        #   in Loop: Header=BB26_21 Depth=1
	movl	-24(%rbp), %edi
	movq	img, %rax
	addq	$13112, %rax            # imm = 0x3338
	movslq	-12(%rbp), %rcx
	shlq	$6, %rcx
	addq	%rcx, %rax
	movslq	-16(%rbp), %rcx
	movl	(%rax,%rcx,4), %esi
	callq	sign
	movq	img, %rcx
	movq	14136(%rcx), %rcx
	movslq	-36(%rbp), %rdx
	movq	(%rcx,%rdx,8), %rcx
	movl	-20(%rbp), %edx
	andl	$3, %edx
	movslq	%edx, %rdx
	movq	(%rcx,%rdx,8), %rcx
	movq	(%rcx), %rcx
	movl	-20(%rbp), %edx
	andl	$3, %edx
	movslq	%edx, %rdx
	movslq	-384(%rbp,%rdx,4), %rdx
	movl	%eax, (%rcx,%rdx,4)
	movl	-20(%rbp), %eax
	andl	$3, %eax
	cltq
	movl	-368(%rbp,%rax,4), %eax
	movq	img, %rcx
	movq	14136(%rcx), %rcx
	movslq	-36(%rbp), %rdx
	movq	(%rcx,%rdx,8), %rcx
	movl	-20(%rbp), %edx
	andl	$3, %edx
	movslq	%edx, %rdx
	movq	(%rcx,%rdx,8), %rcx
	movq	8(%rcx), %rcx
	movl	-20(%rbp), %edx
	andl	$3, %edx
	movslq	%edx, %rdx
	movslq	-384(%rbp,%rdx,4), %rdx
	movl	%eax, (%rcx,%rdx,4)
	movl	-20(%rbp), %eax
	andl	$3, %eax
	cltq
	movl	-384(%rbp,%rax,4), %ecx
	addl	$1, %ecx
	movl	%ecx, -384(%rbp,%rax,4)
	movl	-20(%rbp), %eax
	andl	$3, %eax
	cltq
	movl	$-1, -368(%rbp,%rax,4)
	jmp	.LBB26_44
.LBB26_40:                              # %if.else570
                                        #   in Loop: Header=BB26_21 Depth=1
	cmpl	$1, -24(%rbp)
	jle	.LBB26_42
# %bb.41:                               # %if.then573
                                        #   in Loop: Header=BB26_21 Depth=1
	movq	-352(%rbp), %rax
	movl	(%rax), %ecx
	addl	$999999, %ecx           # imm = 0xF423F
	movl	%ecx, (%rax)
	jmp	.LBB26_43
.LBB26_42:                              # %if.else575
                                        #   in Loop: Header=BB26_21 Depth=1
	movabsq	$COEFF_COST8x8, %rax
	movq	input, %rcx
	movslq	2468(%rcx), %rcx
	shlq	$6, %rcx
	addq	%rcx, %rax
	movslq	-56(%rbp), %rcx
	movzbl	(%rax,%rcx), %eax
	movq	-352(%rbp), %rcx
	addl	(%rcx), %eax
	movl	%eax, (%rcx)
.LBB26_43:                              # %if.end583
                                        #   in Loop: Header=BB26_21 Depth=1
	movl	-24(%rbp), %edi
	movq	img, %rax
	addq	$13112, %rax            # imm = 0x3338
	movslq	-12(%rbp), %rcx
	shlq	$6, %rcx
	addq	%rcx, %rax
	movslq	-16(%rbp), %rcx
	movl	(%rax,%rcx,4), %esi
	callq	sign
	movq	-408(%rbp), %rcx
	movslq	-60(%rbp), %rdx
	movl	%eax, (%rcx,%rdx,4)
	movl	-56(%rbp), %eax
	movq	-416(%rbp), %rcx
	movslq	-60(%rbp), %rdx
	movl	%eax, (%rcx,%rdx,4)
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -60(%rbp)
	movl	$-1, -56(%rbp)
.LBB26_44:                              # %if.end595
                                        #   in Loop: Header=BB26_21 Depth=1
	movl	-24(%rbp), %edi
	movq	img, %rax
	addq	$13112, %rax            # imm = 0x3338
	movslq	-12(%rbp), %rcx
	shlq	$6, %rcx
	addq	%rcx, %rax
	movslq	-16(%rbp), %rcx
	movl	(%rax,%rcx,4), %esi
	callq	sign
	movl	%eax, -24(%rbp)
	cmpl	$0, -32(%rbp)
	je	.LBB26_46
# %bb.45:                               # %if.then603
                                        #   in Loop: Header=BB26_21 Depth=1
	movl	-24(%rbp), %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB26_56
.LBB26_46:                              # %if.else604
                                        #   in Loop: Header=BB26_21 Depth=1
	cmpl	$1, -344(%rbp)
	jne	.LBB26_51
# %bb.47:                               # %if.then607
                                        #   in Loop: Header=BB26_21 Depth=1
	cmpl	$6, -28(%rbp)
	jl	.LBB26_49
# %bb.48:                               # %if.then610
                                        #   in Loop: Header=BB26_21 Depth=1
	movl	-24(%rbp), %eax
	movslq	-48(%rbp), %rcx
	shlq	$8, %rcx
	movabsq	$InvLevelScale8x8Luma_Intra, %rdx
	addq	%rcx, %rdx
	movslq	-12(%rbp), %rcx
	shlq	$5, %rcx
	addq	%rcx, %rdx
	movslq	-16(%rbp), %rcx
	imull	(%rdx,%rcx,4), %eax
	movl	-136(%rbp), %ecx
                                        # kill: def $cl killed $ecx
	shll	%cl, %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB26_50
.LBB26_49:                              # %if.else619
                                        #   in Loop: Header=BB26_21 Depth=1
	movl	-24(%rbp), %eax
	movslq	-48(%rbp), %rcx
	shlq	$8, %rcx
	movabsq	$InvLevelScale8x8Luma_Intra, %rdx
	addq	%rcx, %rdx
	movslq	-12(%rbp), %rcx
	shlq	$5, %rcx
	addq	%rcx, %rdx
	movslq	-16(%rbp), %rcx
	imull	(%rdx,%rcx,4), %eax
	addl	-140(%rbp), %eax
	movl	-132(%rbp), %ecx
                                        # kill: def $cl killed $ecx
	sarl	%cl, %eax
	movl	%eax, -40(%rbp)
.LBB26_50:                              # %if.end629
                                        #   in Loop: Header=BB26_21 Depth=1
	jmp	.LBB26_55
.LBB26_51:                              # %if.else630
                                        #   in Loop: Header=BB26_21 Depth=1
	cmpl	$6, -28(%rbp)
	jl	.LBB26_53
# %bb.52:                               # %if.then633
                                        #   in Loop: Header=BB26_21 Depth=1
	movl	-24(%rbp), %eax
	movslq	-48(%rbp), %rcx
	shlq	$8, %rcx
	movabsq	$InvLevelScale8x8Luma_Inter, %rdx
	addq	%rcx, %rdx
	movslq	-12(%rbp), %rcx
	shlq	$5, %rcx
	addq	%rcx, %rdx
	movslq	-16(%rbp), %rcx
	imull	(%rdx,%rcx,4), %eax
	movl	-136(%rbp), %ecx
                                        # kill: def $cl killed $ecx
	shll	%cl, %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB26_54
.LBB26_53:                              # %if.else642
                                        #   in Loop: Header=BB26_21 Depth=1
	movl	-24(%rbp), %eax
	movslq	-48(%rbp), %rcx
	shlq	$8, %rcx
	movabsq	$InvLevelScale8x8Luma_Inter, %rdx
	addq	%rcx, %rdx
	movslq	-12(%rbp), %rcx
	shlq	$5, %rcx
	addq	%rcx, %rdx
	movslq	-16(%rbp), %rcx
	imull	(%rdx,%rcx,4), %eax
	addl	-140(%rbp), %eax
	movl	-132(%rbp), %ecx
                                        # kill: def $cl killed $ecx
	sarl	%cl, %eax
	movl	%eax, -40(%rbp)
.LBB26_54:                              # %if.end652
                                        #   in Loop: Header=BB26_21 Depth=1
	jmp	.LBB26_55
.LBB26_55:                              # %if.end653
                                        #   in Loop: Header=BB26_21 Depth=1
	jmp	.LBB26_56
.LBB26_56:                              # %if.end654
                                        #   in Loop: Header=BB26_21 Depth=1
	jmp	.LBB26_57
.LBB26_57:                              # %if.end655
                                        #   in Loop: Header=BB26_21 Depth=1
	cmpl	$0, -32(%rbp)
	jne	.LBB26_59
# %bb.58:                               # %if.then657
                                        #   in Loop: Header=BB26_21 Depth=1
	movl	-40(%rbp), %eax
	movq	img, %rcx
	addq	$13112, %rcx            # imm = 0x3338
	movslq	-12(%rbp), %rdx
	shlq	$6, %rdx
	addq	%rdx, %rcx
	movslq	-16(%rbp), %rdx
	movl	%eax, (%rcx,%rdx,4)
.LBB26_59:                              # %if.end663
                                        #   in Loop: Header=BB26_21 Depth=1
	jmp	.LBB26_60
.LBB26_60:                              # %for.inc664
                                        #   in Loop: Header=BB26_21 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB26_21
.LBB26_61:                              # %for.end666
	movq	-392(%rbp), %rax
	cmpl	$0, 572(%rax)
	je	.LBB26_63
# %bb.62:                               # %lor.lhs.false669
	movq	input, %rax
	cmpl	$0, 2356(%rax)
	je	.LBB26_64
.LBB26_63:                              # %if.then673
	movq	-408(%rbp), %rax
	movslq	-60(%rbp), %rcx
	movl	$0, (%rax,%rcx,4)
	jmp	.LBB26_69
.LBB26_64:                              # %if.else676
	movl	$0, -12(%rbp)
.LBB26_65:                              # %for.cond677
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$4, -12(%rbp)
	jge	.LBB26_68
# %bb.66:                               # %for.body680
                                        #   in Loop: Header=BB26_65 Depth=1
	movq	img, %rax
	movq	14136(%rax), %rax
	movslq	-36(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movslq	-12(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movq	(%rax), %rax
	movslq	-12(%rbp), %rcx
	movslq	-384(%rbp,%rcx,4), %rcx
	movl	$0, (%rax,%rcx,4)
# %bb.67:                               # %for.inc691
                                        #   in Loop: Header=BB26_65 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB26_65
.LBB26_68:                              # %for.end693
	jmp	.LBB26_69
.LBB26_69:                              # %if.end694
	movl	$0, -12(%rbp)
.LBB26_70:                              # %for.cond695
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	cmpl	$8, -12(%rbp)
	jge	.LBB26_72
# %bb.71:                               # %land.rhs698
                                        #   in Loop: Header=BB26_70 Depth=1
	cmpl	$0, -32(%rbp)
	setne	%al
	xorb	$-1, %al
.LBB26_72:                              # %land.end701
                                        #   in Loop: Header=BB26_70 Depth=1
	testb	$1, %al
	jne	.LBB26_73
	jmp	.LBB26_75
.LBB26_73:                              # %for.body703
                                        #   in Loop: Header=BB26_70 Depth=1
	xorl	%eax, %eax
	movq	img, %rcx
	movslq	-12(%rbp), %rdx
	movl	13112(%rcx,%rdx,4), %ecx
	movq	img, %rdx
	movslq	-12(%rbp), %rsi
	addl	13368(%rdx,%rsi,4), %ecx
	movl	%ecx, -208(%rbp)
	movq	img, %rcx
	movslq	-12(%rbp), %rdx
	movl	13112(%rcx,%rdx,4), %ecx
	movq	img, %rdx
	movslq	-12(%rbp), %rsi
	subl	13368(%rdx,%rsi,4), %ecx
	movl	%ecx, -192(%rbp)
	movq	img, %rcx
	movslq	-12(%rbp), %rdx
	movl	13240(%rcx,%rdx,4), %ecx
	sarl	$1, %ecx
	movq	img, %rdx
	movslq	-12(%rbp), %rsi
	subl	13496(%rdx,%rsi,4), %ecx
	movl	%ecx, -200(%rbp)
	movq	img, %rcx
	movslq	-12(%rbp), %rdx
	movl	13240(%rcx,%rdx,4), %ecx
	movq	img, %rdx
	movslq	-12(%rbp), %rsi
	movl	13496(%rdx,%rsi,4), %edx
	sarl	$1, %edx
	addl	%edx, %ecx
	movl	%ecx, -184(%rbp)
	movl	-208(%rbp), %ecx
	addl	-184(%rbp), %ecx
	movl	%ecx, -176(%rbp)
	movl	-192(%rbp), %ecx
	addl	-200(%rbp), %ecx
	movl	%ecx, -168(%rbp)
	movl	-192(%rbp), %ecx
	subl	-200(%rbp), %ecx
	movl	%ecx, -160(%rbp)
	movl	-208(%rbp), %ecx
	subl	-184(%rbp), %ecx
	movl	%ecx, -152(%rbp)
	movq	img, %rcx
	movslq	-12(%rbp), %rdx
	xorl	%esi, %esi
	subl	13304(%rcx,%rdx,4), %esi
	movq	img, %rcx
	movslq	-12(%rbp), %rdx
	addl	13432(%rcx,%rdx,4), %esi
	movq	img, %rcx
	movslq	-12(%rbp), %rdx
	subl	13560(%rcx,%rdx,4), %esi
	movq	img, %rcx
	movslq	-12(%rbp), %rdx
	movl	13560(%rcx,%rdx,4), %ecx
	sarl	$1, %ecx
	subl	%ecx, %esi
	movl	%esi, -204(%rbp)
	movq	img, %rcx
	movslq	-12(%rbp), %rdx
	movl	13176(%rcx,%rdx,4), %ecx
	movq	img, %rdx
	movslq	-12(%rbp), %rsi
	addl	13560(%rdx,%rsi,4), %ecx
	movq	img, %rdx
	movslq	-12(%rbp), %rsi
	subl	13304(%rdx,%rsi,4), %ecx
	movq	img, %rdx
	movslq	-12(%rbp), %rsi
	movl	13304(%rdx,%rsi,4), %edx
	sarl	$1, %edx
	subl	%edx, %ecx
	movl	%ecx, -196(%rbp)
	movq	img, %rcx
	movslq	-12(%rbp), %rdx
	xorl	%esi, %esi
	subl	13176(%rcx,%rdx,4), %esi
	movq	img, %rcx
	movslq	-12(%rbp), %rdx
	addl	13560(%rcx,%rdx,4), %esi
	movq	img, %rcx
	movslq	-12(%rbp), %rdx
	addl	13432(%rcx,%rdx,4), %esi
	movq	img, %rcx
	movslq	-12(%rbp), %rdx
	movl	13432(%rcx,%rdx,4), %ecx
	sarl	$1, %ecx
	addl	%ecx, %esi
	movl	%esi, -188(%rbp)
	movq	img, %rcx
	movslq	-12(%rbp), %rdx
	movl	13304(%rcx,%rdx,4), %ecx
	movq	img, %rdx
	movslq	-12(%rbp), %rsi
	addl	13432(%rdx,%rsi,4), %ecx
	movq	img, %rdx
	movslq	-12(%rbp), %rsi
	addl	13176(%rdx,%rsi,4), %ecx
	movq	img, %rdx
	movslq	-12(%rbp), %rsi
	movl	13176(%rdx,%rsi,4), %edx
	sarl	$1, %edx
	addl	%edx, %ecx
	movl	%ecx, -180(%rbp)
	movl	-204(%rbp), %ecx
	movl	-180(%rbp), %edx
	sarl	$2, %edx
	addl	%edx, %ecx
	movl	%ecx, -172(%rbp)
	movl	-204(%rbp), %ecx
	sarl	$2, %ecx
	subl	%ecx, %eax
	addl	-180(%rbp), %eax
	movl	%eax, -148(%rbp)
	movl	-196(%rbp), %eax
	movl	-188(%rbp), %ecx
	sarl	$2, %ecx
	addl	%ecx, %eax
	movl	%eax, -164(%rbp)
	movl	-196(%rbp), %eax
	sarl	$2, %eax
	subl	-188(%rbp), %eax
	movl	%eax, -156(%rbp)
	movl	-176(%rbp), %eax
	addl	-148(%rbp), %eax
	movslq	-12(%rbp), %rcx
	movl	%eax, -672(%rbp,%rcx,4)
	movl	-168(%rbp), %eax
	addl	-156(%rbp), %eax
	movslq	-12(%rbp), %rcx
	movl	%eax, -640(%rbp,%rcx,4)
	movl	-160(%rbp), %eax
	addl	-164(%rbp), %eax
	movslq	-12(%rbp), %rcx
	movl	%eax, -608(%rbp,%rcx,4)
	movl	-152(%rbp), %eax
	addl	-172(%rbp), %eax
	movslq	-12(%rbp), %rcx
	movl	%eax, -576(%rbp,%rcx,4)
	movl	-152(%rbp), %eax
	subl	-172(%rbp), %eax
	movslq	-12(%rbp), %rcx
	movl	%eax, -544(%rbp,%rcx,4)
	movl	-160(%rbp), %eax
	subl	-164(%rbp), %eax
	movslq	-12(%rbp), %rcx
	movl	%eax, -512(%rbp,%rcx,4)
	movl	-168(%rbp), %eax
	subl	-156(%rbp), %eax
	movslq	-12(%rbp), %rcx
	movl	%eax, -480(%rbp,%rcx,4)
	movl	-176(%rbp), %eax
	subl	-148(%rbp), %eax
	movslq	-12(%rbp), %rcx
	movl	%eax, -448(%rbp,%rcx,4)
# %bb.74:                               # %for.inc919
                                        #   in Loop: Header=BB26_70 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB26_70
.LBB26_75:                              # %for.end921
	movl	$0, -12(%rbp)
.LBB26_76:                              # %for.cond922
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	cmpl	$8, -12(%rbp)
	jge	.LBB26_78
# %bb.77:                               # %land.rhs925
                                        #   in Loop: Header=BB26_76 Depth=1
	cmpl	$0, -32(%rbp)
	setne	%al
	xorb	$-1, %al
.LBB26_78:                              # %land.end928
                                        #   in Loop: Header=BB26_76 Depth=1
	testb	$1, %al
	jne	.LBB26_79
	jmp	.LBB26_81
.LBB26_79:                              # %for.body930
                                        #   in Loop: Header=BB26_76 Depth=1
	xorl	%eax, %eax
	movslq	-12(%rbp), %rdx
	shlq	$5, %rdx
	leaq	-672(%rbp), %rcx
	movq	%rcx, %rsi
	addq	%rdx, %rsi
	movl	(%rsi), %edx
	movslq	-12(%rbp), %rsi
	shlq	$5, %rsi
	movq	%rcx, %rdi
	addq	%rsi, %rdi
	addl	16(%rdi), %edx
	movl	%edx, -272(%rbp)
	movslq	-12(%rbp), %rdx
	shlq	$5, %rdx
	movq	%rcx, %rsi
	addq	%rdx, %rsi
	movl	(%rsi), %edx
	movslq	-12(%rbp), %rsi
	shlq	$5, %rsi
	movq	%rcx, %rdi
	addq	%rsi, %rdi
	subl	16(%rdi), %edx
	movl	%edx, -256(%rbp)
	movslq	-12(%rbp), %rdx
	shlq	$5, %rdx
	movq	%rcx, %rsi
	addq	%rdx, %rsi
	movl	8(%rsi), %edx
	sarl	$1, %edx
	movslq	-12(%rbp), %rsi
	shlq	$5, %rsi
	movq	%rcx, %rdi
	addq	%rsi, %rdi
	subl	24(%rdi), %edx
	movl	%edx, -264(%rbp)
	movslq	-12(%rbp), %rdx
	shlq	$5, %rdx
	movq	%rcx, %rsi
	addq	%rdx, %rsi
	movl	8(%rsi), %edx
	movslq	-12(%rbp), %rsi
	shlq	$5, %rsi
	movq	%rcx, %rdi
	addq	%rsi, %rdi
	movl	24(%rdi), %esi
	sarl	$1, %esi
	addl	%esi, %edx
	movl	%edx, -248(%rbp)
	movl	-272(%rbp), %edx
	addl	-248(%rbp), %edx
	movl	%edx, -304(%rbp)
	movl	-256(%rbp), %edx
	addl	-264(%rbp), %edx
	movl	%edx, -296(%rbp)
	movl	-256(%rbp), %edx
	subl	-264(%rbp), %edx
	movl	%edx, -288(%rbp)
	movl	-272(%rbp), %edx
	subl	-248(%rbp), %edx
	movl	%edx, -280(%rbp)
	movslq	-12(%rbp), %rdx
	shlq	$5, %rdx
	movq	%rcx, %rsi
	addq	%rdx, %rsi
	xorl	%edx, %edx
	subl	12(%rsi), %edx
	movslq	-12(%rbp), %rsi
	shlq	$5, %rsi
	movq	%rcx, %rdi
	addq	%rsi, %rdi
	addl	20(%rdi), %edx
	movslq	-12(%rbp), %rsi
	shlq	$5, %rsi
	movq	%rcx, %rdi
	addq	%rsi, %rdi
	subl	28(%rdi), %edx
	movslq	-12(%rbp), %rsi
	shlq	$5, %rsi
	movq	%rcx, %rdi
	addq	%rsi, %rdi
	movl	28(%rdi), %esi
	sarl	$1, %esi
	subl	%esi, %edx
	movl	%edx, -268(%rbp)
	movslq	-12(%rbp), %rdx
	shlq	$5, %rdx
	movq	%rcx, %rsi
	addq	%rdx, %rsi
	movl	4(%rsi), %edx
	movslq	-12(%rbp), %rsi
	shlq	$5, %rsi
	movq	%rcx, %rdi
	addq	%rsi, %rdi
	addl	28(%rdi), %edx
	movslq	-12(%rbp), %rsi
	shlq	$5, %rsi
	movq	%rcx, %rdi
	addq	%rsi, %rdi
	subl	12(%rdi), %edx
	movslq	-12(%rbp), %rsi
	shlq	$5, %rsi
	movq	%rcx, %rdi
	addq	%rsi, %rdi
	movl	12(%rdi), %esi
	sarl	$1, %esi
	subl	%esi, %edx
	movl	%edx, -260(%rbp)
	movslq	-12(%rbp), %rdx
	shlq	$5, %rdx
	movq	%rcx, %rsi
	addq	%rdx, %rsi
	xorl	%edx, %edx
	subl	4(%rsi), %edx
	movslq	-12(%rbp), %rsi
	shlq	$5, %rsi
	movq	%rcx, %rdi
	addq	%rsi, %rdi
	addl	28(%rdi), %edx
	movslq	-12(%rbp), %rsi
	shlq	$5, %rsi
	movq	%rcx, %rdi
	addq	%rsi, %rdi
	addl	20(%rdi), %edx
	movslq	-12(%rbp), %rsi
	shlq	$5, %rsi
	movq	%rcx, %rdi
	addq	%rsi, %rdi
	movl	20(%rdi), %esi
	sarl	$1, %esi
	addl	%esi, %edx
	movl	%edx, -252(%rbp)
	movslq	-12(%rbp), %rdx
	shlq	$5, %rdx
	movq	%rcx, %rsi
	addq	%rdx, %rsi
	movl	12(%rsi), %edx
	movslq	-12(%rbp), %rsi
	shlq	$5, %rsi
	movq	%rcx, %rdi
	addq	%rsi, %rdi
	addl	20(%rdi), %edx
	movslq	-12(%rbp), %rsi
	shlq	$5, %rsi
	movq	%rcx, %rdi
	addq	%rsi, %rdi
	addl	4(%rdi), %edx
	movslq	-12(%rbp), %rsi
	shlq	$5, %rsi
	addq	%rsi, %rcx
	movl	4(%rcx), %ecx
	sarl	$1, %ecx
	addl	%ecx, %edx
	movl	%edx, -244(%rbp)
	movl	-268(%rbp), %ecx
	movl	-244(%rbp), %edx
	sarl	$2, %edx
	addl	%edx, %ecx
	movl	%ecx, -300(%rbp)
	movl	-268(%rbp), %ecx
	sarl	$2, %ecx
	subl	%ecx, %eax
	addl	-244(%rbp), %eax
	movl	%eax, -276(%rbp)
	movl	-260(%rbp), %eax
	movl	-252(%rbp), %ecx
	sarl	$2, %ecx
	addl	%ecx, %eax
	movl	%eax, -292(%rbp)
	movl	-260(%rbp), %eax
	sarl	$2, %eax
	subl	-252(%rbp), %eax
	movl	%eax, -284(%rbp)
	movl	-304(%rbp), %eax
	addl	-276(%rbp), %eax
	movq	img, %rcx
	addq	$13112, %rcx            # imm = 0x3338
	movslq	-12(%rbp), %rdx
	shlq	$6, %rdx
	addq	%rdx, %rcx
	movl	%eax, (%rcx)
	movl	-296(%rbp), %eax
	addl	-284(%rbp), %eax
	movq	img, %rcx
	addq	$13112, %rcx            # imm = 0x3338
	movslq	-12(%rbp), %rdx
	shlq	$6, %rdx
	addq	%rdx, %rcx
	movl	%eax, 4(%rcx)
	movl	-288(%rbp), %eax
	addl	-292(%rbp), %eax
	movq	img, %rcx
	addq	$13112, %rcx            # imm = 0x3338
	movslq	-12(%rbp), %rdx
	shlq	$6, %rdx
	addq	%rdx, %rcx
	movl	%eax, 8(%rcx)
	movl	-280(%rbp), %eax
	addl	-300(%rbp), %eax
	movq	img, %rcx
	addq	$13112, %rcx            # imm = 0x3338
	movslq	-12(%rbp), %rdx
	shlq	$6, %rdx
	addq	%rdx, %rcx
	movl	%eax, 12(%rcx)
	movl	-280(%rbp), %eax
	subl	-300(%rbp), %eax
	movq	img, %rcx
	addq	$13112, %rcx            # imm = 0x3338
	movslq	-12(%rbp), %rdx
	shlq	$6, %rdx
	addq	%rdx, %rcx
	movl	%eax, 16(%rcx)
	movl	-288(%rbp), %eax
	subl	-292(%rbp), %eax
	movq	img, %rcx
	addq	$13112, %rcx            # imm = 0x3338
	movslq	-12(%rbp), %rdx
	shlq	$6, %rdx
	addq	%rdx, %rcx
	movl	%eax, 20(%rcx)
	movl	-296(%rbp), %eax
	subl	-284(%rbp), %eax
	movq	img, %rcx
	addq	$13112, %rcx            # imm = 0x3338
	movslq	-12(%rbp), %rdx
	shlq	$6, %rdx
	addq	%rdx, %rcx
	movl	%eax, 24(%rcx)
	movl	-304(%rbp), %eax
	subl	-276(%rbp), %eax
	movq	img, %rcx
	addq	$13112, %rcx            # imm = 0x3338
	movslq	-12(%rbp), %rdx
	shlq	$6, %rdx
	addq	%rdx, %rcx
	movl	%eax, 28(%rcx)
# %bb.80:                               # %for.inc1130
                                        #   in Loop: Header=BB26_76 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB26_76
.LBB26_81:                              # %for.end1132
	movl	$0, -12(%rbp)
.LBB26_82:                              # %for.cond1133
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB26_84 Depth 2
	cmpl	$8, -12(%rbp)
	jge	.LBB26_104
# %bb.83:                               # %for.body1136
                                        #   in Loop: Header=BB26_82 Depth=1
	movl	$0, -16(%rbp)
.LBB26_84:                              # %for.cond1137
                                        #   Parent Loop BB26_82 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$8, -16(%rbp)
	jge	.LBB26_102
# %bb.85:                               # %for.body1140
                                        #   in Loop: Header=BB26_84 Depth=2
	cmpl	$0, -32(%rbp)
	je	.LBB26_87
# %bb.86:                               # %if.then1142
                                        #   in Loop: Header=BB26_84 Depth=2
	movq	img, %rax
	addq	$13112, %rax            # imm = 0x3338
	movslq	-12(%rbp), %rcx
	shlq	$6, %rcx
	addq	%rcx, %rax
	movslq	-16(%rbp), %rcx
	movl	(%rax,%rcx,4), %eax
	movq	img, %rcx
	addq	$12600, %rcx            # imm = 0x3138
	movl	-12(%rbp), %edx
	addl	-52(%rbp), %edx
	movslq	%edx, %rdx
	shlq	$5, %rdx
	addq	%rdx, %rcx
	movl	-16(%rbp), %edx
	addl	-44(%rbp), %edx
	movslq	%edx, %rdx
	movzwl	(%rcx,%rdx,2), %ecx
	addl	%ecx, %eax
	movq	img, %rcx
	addq	$13112, %rcx            # imm = 0x3338
	movslq	-12(%rbp), %rdx
	shlq	$6, %rdx
	addq	%rdx, %rcx
	movslq	-16(%rbp), %rdx
	movl	%eax, (%rcx,%rdx,4)
	jmp	.LBB26_100
.LBB26_87:                              # %if.else1161
                                        #   in Loop: Header=BB26_84 Depth=2
	movq	img, %rax
	cmpl	$0, 72724(%rax)
	jne	.LBB26_98
# %bb.88:                               # %if.then1163
                                        #   in Loop: Header=BB26_84 Depth=2
	xorl	%ecx, %ecx
	movq	img, %rax
	movslq	72684(%rax), %rax
	movq	img, %rdx
	addq	$13112, %rdx            # imm = 0x3338
	movslq	-12(%rbp), %rsi
	shlq	$6, %rsi
	addq	%rsi, %rdx
	movslq	-16(%rbp), %rsi
	movslq	(%rdx,%rsi,4), %rdx
	movq	img, %rsi
	addq	$12600, %rsi            # imm = 0x3138
	movl	-12(%rbp), %edi
	addl	-52(%rbp), %edi
	movslq	%edi, %rdi
	shlq	$5, %rdi
	addq	%rdi, %rsi
	movl	-16(%rbp), %edi
	addl	-44(%rbp), %edi
	movslq	%edi, %rdi
	movzwl	(%rsi,%rdi,2), %esi
	shlq	$6, %rsi
	addq	%rsi, %rdx
	addq	$32, %rdx
	sarq	$6, %rdx
	cmpq	%rdx, %rcx
	jle	.LBB26_90
# %bb.89:                               # %cond.true
                                        #   in Loop: Header=BB26_84 Depth=2
	xorl	%ecx, %ecx
	jmp	.LBB26_91
.LBB26_90:                              # %cond.false
                                        #   in Loop: Header=BB26_84 Depth=2
	movq	img, %rcx
	addq	$13112, %rcx            # imm = 0x3338
	movslq	-12(%rbp), %rdx
	shlq	$6, %rdx
	addq	%rdx, %rcx
	movslq	-16(%rbp), %rdx
	movslq	(%rcx,%rdx,4), %rcx
	movq	img, %rdx
	addq	$12600, %rdx            # imm = 0x3138
	movl	-12(%rbp), %esi
	addl	-52(%rbp), %esi
	movslq	%esi, %rsi
	shlq	$5, %rsi
	addq	%rsi, %rdx
	movl	-16(%rbp), %esi
	addl	-44(%rbp), %esi
	movslq	%esi, %rsi
	movzwl	(%rdx,%rsi,2), %edx
	shlq	$6, %rdx
	addq	%rdx, %rcx
	addq	$32, %rcx
	sarq	$6, %rcx
.LBB26_91:                              # %cond.end
                                        #   in Loop: Header=BB26_84 Depth=2
	cmpq	%rcx, %rax
	jge	.LBB26_93
# %bb.92:                               # %cond.true1205
                                        #   in Loop: Header=BB26_84 Depth=2
	movq	img, %rax
	movslq	72684(%rax), %rax
	jmp	.LBB26_97
.LBB26_93:                              # %cond.false1208
                                        #   in Loop: Header=BB26_84 Depth=2
	xorl	%eax, %eax
	movq	img, %rcx
	addq	$13112, %rcx            # imm = 0x3338
	movslq	-12(%rbp), %rdx
	shlq	$6, %rdx
	addq	%rdx, %rcx
	movslq	-16(%rbp), %rdx
	movslq	(%rcx,%rdx,4), %rcx
	movq	img, %rdx
	addq	$12600, %rdx            # imm = 0x3138
	movl	-12(%rbp), %esi
	addl	-52(%rbp), %esi
	movslq	%esi, %rsi
	shlq	$5, %rsi
	addq	%rsi, %rdx
	movl	-16(%rbp), %esi
	addl	-44(%rbp), %esi
	movslq	%esi, %rsi
	movzwl	(%rdx,%rsi,2), %edx
	shlq	$6, %rdx
	addq	%rdx, %rcx
	addq	$32, %rcx
	sarq	$6, %rcx
	cmpq	%rcx, %rax
	jle	.LBB26_95
# %bb.94:                               # %cond.true1229
                                        #   in Loop: Header=BB26_84 Depth=2
	xorl	%eax, %eax
	jmp	.LBB26_96
.LBB26_95:                              # %cond.false1230
                                        #   in Loop: Header=BB26_84 Depth=2
	movq	img, %rax
	addq	$13112, %rax            # imm = 0x3338
	movslq	-12(%rbp), %rcx
	shlq	$6, %rcx
	addq	%rcx, %rax
	movslq	-16(%rbp), %rcx
	movslq	(%rax,%rcx,4), %rax
	movq	img, %rcx
	addq	$12600, %rcx            # imm = 0x3138
	movl	-12(%rbp), %edx
	addl	-52(%rbp), %edx
	movslq	%edx, %rdx
	shlq	$5, %rdx
	addq	%rdx, %rcx
	movl	-16(%rbp), %edx
	addl	-44(%rbp), %edx
	movslq	%edx, %rdx
	movzwl	(%rcx,%rdx,2), %ecx
	shlq	$6, %rcx
	addq	%rcx, %rax
	addq	$32, %rax
	sarq	$6, %rax
.LBB26_96:                              # %cond.end1249
                                        #   in Loop: Header=BB26_84 Depth=2
.LBB26_97:                              # %cond.end1251
                                        #   in Loop: Header=BB26_84 Depth=2
	movq	img, %rcx
	addq	$13112, %rcx            # imm = 0x3338
	movslq	-12(%rbp), %rdx
	shlq	$6, %rdx
	addq	%rdx, %rcx
	movslq	-16(%rbp), %rdx
	movl	%eax, (%rcx,%rdx,4)
	jmp	.LBB26_99
.LBB26_98:                              # %if.else1259
                                        #   in Loop: Header=BB26_84 Depth=2
	movq	img, %rax
	addq	$13112, %rax            # imm = 0x3338
	movslq	-12(%rbp), %rcx
	shlq	$6, %rcx
	addq	%rcx, %rax
	movslq	-16(%rbp), %rcx
	movl	(%rax,%rcx,4), %eax
	addl	$32, %eax
	sarl	$6, %eax
	movq	img, %rcx
	addq	$13112, %rcx            # imm = 0x3338
	movslq	-12(%rbp), %rdx
	shlq	$6, %rdx
	addq	%rdx, %rcx
	movslq	-16(%rbp), %rdx
	movl	%eax, (%rcx,%rdx,4)
.LBB26_99:                              # %if.end1272
                                        #   in Loop: Header=BB26_84 Depth=2
	jmp	.LBB26_100
.LBB26_100:                             # %if.end1273
                                        #   in Loop: Header=BB26_84 Depth=2
	jmp	.LBB26_101
.LBB26_101:                             # %for.inc1274
                                        #   in Loop: Header=BB26_84 Depth=2
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB26_84
.LBB26_102:                             # %for.end1276
                                        #   in Loop: Header=BB26_82 Depth=1
	jmp	.LBB26_103
.LBB26_103:                             # %for.inc1277
                                        #   in Loop: Header=BB26_82 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB26_82
.LBB26_104:                             # %for.end1279
	movq	img, %rax
	cmpl	$0, 72724(%rax)
	jne	.LBB26_114
# %bb.105:                              # %if.then1282
	movl	$0, -16(%rbp)
.LBB26_106:                             # %for.cond1283
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB26_108 Depth 2
	cmpl	$8, -16(%rbp)
	jge	.LBB26_113
# %bb.107:                              # %for.body1286
                                        #   in Loop: Header=BB26_106 Depth=1
	movl	$0, -12(%rbp)
.LBB26_108:                             # %for.cond1287
                                        #   Parent Loop BB26_106 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$8, -12(%rbp)
	jge	.LBB26_111
# %bb.109:                              # %for.body1290
                                        #   in Loop: Header=BB26_108 Depth=2
	movq	img, %rax
	addq	$13112, %rax            # imm = 0x3338
	movslq	-12(%rbp), %rcx
	shlq	$6, %rcx
	addq	%rcx, %rax
	movslq	-16(%rbp), %rcx
	movl	(%rax,%rcx,4), %eax
	movq	enc_picture, %rcx
	movq	6424(%rcx), %rcx
	movq	img, %rdx
	movl	156(%rdx), %edx
	addl	-44(%rbp), %edx
	addl	-16(%rbp), %edx
	movslq	%edx, %rdx
	movq	(%rcx,%rdx,8), %rcx
	movq	img, %rdx
	movl	152(%rdx), %edx
	addl	-52(%rbp), %edx
	addl	-12(%rbp), %edx
	movslq	%edx, %rdx
	movw	%ax, (%rcx,%rdx,2)
# %bb.110:                              # %for.inc1305
                                        #   in Loop: Header=BB26_108 Depth=2
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB26_108
.LBB26_111:                             # %for.end1307
                                        #   in Loop: Header=BB26_106 Depth=1
	jmp	.LBB26_112
.LBB26_112:                             # %for.inc1308
                                        #   in Loop: Header=BB26_106 Depth=1
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB26_106
.LBB26_113:                             # %for.end1310
	jmp	.LBB26_114
.LBB26_114:                             # %if.end1311
	movl	-340(%rbp), %ebx
	cmpl	$964573149, -396(%rbp)  # imm = 0x397E37DD
	jne	.LBB26_116
.LBB26_115:
	movl	%ebx, %eax
	addq	$664, %rsp              # imm = 0x298
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB26_116:                             # %func_exit
	.cfi_def_cfa %rbp, 16
	callq	detect_breach
	jmp	.LBB26_115
.Lfunc_end26:
	.size	dct_luma8x8.21, .Lfunc_end26-dct_luma8x8.21
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function Mode_Decision_for_new_Intra8x8Macroblock.22
.LCPI27_0:
	.quad	4602677017732795964     # double 0.49990000000000001
.LCPI27_1:
	.quad	4618441417868443648     # double 6
	.text
	.globl	Mode_Decision_for_new_Intra8x8Macroblock.22
	.p2align	4, 0x90
	.type	Mode_Decision_for_new_Intra8x8Macroblock.22,@function
Mode_Decision_for_new_Intra8x8Macroblock.22: # @Mode_Decision_for_new_Intra8x8Macroblock.22
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset %rbx, -24
	vmovsd	.LCPI27_0(%rip), %xmm1  # xmm1 = mem[0],zero
	vmovsd	.LCPI27_1(%rip), %xmm2  # xmm2 = mem[0],zero
	movl	$1024036408, -24(%rbp)  # imm = 0x3D098E38
	vmovsd	%xmm0, -32(%rbp)
	movq	%rdi, -40(%rbp)
	movl	$0, -16(%rbp)
	vmulsd	-32(%rbp), %xmm2, %xmm0
	vaddsd	%xmm1, %xmm0, %xmm0
	vroundsd	$9, %xmm0, %xmm0, %xmm0
	vcvttsd2si	%xmm0, %eax
	movq	-40(%rbp), %rcx
	movl	%eax, (%rcx)
	movl	$0, -12(%rbp)
.LBB27_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$4, -12(%rbp)
	jge	.LBB27_6
# %bb.2:                                # %for.body
                                        #   in Loop: Header=BB27_1 Depth=1
	movl	-12(%rbp), %edi
	vmovsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	leaq	-20(%rbp), %rsi
	callq	Mode_Decision_for_new_8x8IntraBlocks
	cmpl	$0, %eax
	je	.LBB27_4
# %bb.3:                                # %if.then
                                        #   in Loop: Header=BB27_1 Depth=1
	movl	-12(%rbp), %ecx
                                        # kill: def $cl killed $ecx
	movl	$1, %eax
	shll	%cl, %eax
	orl	-16(%rbp), %eax
	movl	%eax, -16(%rbp)
.LBB27_4:                               # %if.end
                                        #   in Loop: Header=BB27_1 Depth=1
	movl	-20(%rbp), %eax
	movq	-40(%rbp), %rcx
	addl	(%rcx), %eax
	movl	%eax, (%rcx)
# %bb.5:                                # %for.inc
                                        #   in Loop: Header=BB27_1 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB27_1
.LBB27_6:                               # %for.end
	movl	-16(%rbp), %ebx
	cmpl	$1024036408, -24(%rbp)  # imm = 0x3D098E38
	jne	.LBB27_8
.LBB27_7:
	movl	%ebx, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB27_8:                               # %func_exit
	.cfi_def_cfa %rbp, 16
	callq	detect_breach
	jmp	.LBB27_7
.Lfunc_end27:
	.size	Mode_Decision_for_new_Intra8x8Macroblock.22, .Lfunc_end27-Mode_Decision_for_new_Intra8x8Macroblock.22
	.cfi_endproc
                                        # -- End function
	.globl	dct_luma8x8.23          # -- Begin function dct_luma8x8.23
	.p2align	4, 0x90
	.type	dct_luma8x8.23,@function
dct_luma8x8.23:                         # @dct_luma8x8.23
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$664, %rsp              # imm = 0x298
	.cfi_offset %rbx, -24
	xorl	%ecx, %ecx
	movl	$2083344307, -396(%rbp) # imm = 0x7C2D4FB3
	movl	%edi, -36(%rbp)
	movq	%rsi, -352(%rbp)
	movl	%edx, -340(%rbp)
	movl	$0, -136(%rbp)
	movl	$0, -140(%rbp)
	movl	$0, -132(%rbp)
	movl	-36(%rbp), %eax
	cltd
	movl	$2, %esi
	idivl	%esi
	shll	$3, %edx
	movl	%edx, -44(%rbp)
	movl	-36(%rbp), %eax
	cltd
	idivl	%esi
	shll	$3, %eax
	movl	%eax, -40(%rbp)
	movq	img, %rax
	movq	14136(%rax), %rax
	movslq	-36(%rbp), %rdx
	movq	(%rax,%rdx,8), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -408(%rbp)
	movq	img, %rax
	movq	14136(%rax), %rax
	movslq	-36(%rbp), %rdx
	movq	(%rax,%rdx,8), %rax
	movq	(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, -416(%rbp)
	movq	img, %rax
	movq	14168(%rax), %rax
	movq	img, %rdx
	movslq	12(%rdx), %rdx
	imulq	$632, %rdx, %rdx        # imm = 0x278
	addq	%rdx, %rax
	movq	%rax, -392(%rbp)
	movq	img, %rax
	movl	40(%rax), %eax
	movq	img, %rdx
	addl	72668(%rdx), %eax
	cmpl	$0, %eax
	jne	.LBB28_2
# %bb.1:                                # %land.rhs
	movq	img, %rax
	cmpl	$1, 72704(%rax)
	sete	%cl
.LBB28_2:                               # %land.end
	andb	$1, %cl
	movzbl	%cl, %eax
	movl	%eax, -32(%rbp)
	movq	img, %rax
	movl	40(%rax), %eax
	movq	img, %rcx
	addl	72668(%rcx), %eax
	subl	$0, %eax
	cltd
	movl	$6, %ecx
	idivl	%ecx
	movl	%eax, -28(%rbp)
	movq	img, %rax
	movl	40(%rax), %eax
	movq	img, %rdx
	addl	72668(%rdx), %eax
	subl	$0, %eax
	cltd
	idivl	%ecx
	movl	%edx, -48(%rbp)
	movl	-28(%rbp), %eax
	addl	$16, %eax
	movl	%eax, -64(%rbp)
	cmpl	$6, -28(%rbp)
	jge	.LBB28_4
# %bb.3:                                # %if.then
	movl	$6, %eax
	subl	-28(%rbp), %eax
	movl	%eax, -140(%rbp)
	movl	$5, %ecx
	subl	-28(%rbp), %ecx
                                        # kill: def $cl killed $ecx
	movl	$1, %eax
	shll	%cl, %eax
	movl	%eax, -132(%rbp)
	jmp	.LBB28_5
.LBB28_4:                               # %if.else
	movl	-28(%rbp), %eax
	subl	$6, %eax
	movl	%eax, -136(%rbp)
.LBB28_5:                               # %if.end
	movq	img, %rax
	cmpl	$2, 24(%rax)
	jne	.LBB28_7
# %bb.6:                                # %if.then27
	movl	-64(%rbp), %ecx
                                        # kill: def $cl killed $ecx
	movl	$1, %eax
	shll	%cl, %eax
	cltd
	movl	$3, %ecx
	idivl	%ecx
	movl	%eax, -400(%rbp)
	jmp	.LBB28_8
.LBB28_7:                               # %if.else30
	movl	-64(%rbp), %ecx
                                        # kill: def $cl killed $ecx
	movl	$1, %eax
	shll	%cl, %eax
	cltd
	movl	$6, %ecx
	idivl	%ecx
	movl	%eax, -400(%rbp)
.LBB28_8:                               # %if.end33
	movl	$0, -12(%rbp)
.LBB28_9:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	cmpl	$8, -12(%rbp)
	jge	.LBB28_11
# %bb.10:                               # %land.rhs35
                                        #   in Loop: Header=BB28_9 Depth=1
	cmpl	$0, -32(%rbp)
	setne	%al
	xorb	$-1, %al
.LBB28_11:                              # %land.end36
                                        #   in Loop: Header=BB28_9 Depth=1
	testb	$1, %al
	jne	.LBB28_12
	jmp	.LBB28_14
.LBB28_12:                              # %for.body
                                        #   in Loop: Header=BB28_9 Depth=1
	xorl	%eax, %eax
	movq	img, %rcx
	movslq	-12(%rbp), %rdx
	movl	13112(%rcx,%rdx,4), %ecx
	movq	img, %rdx
	movslq	-12(%rbp), %rsi
	addl	13560(%rdx,%rsi,4), %ecx
	movl	%ecx, -96(%rbp)
	movq	img, %rcx
	movslq	-12(%rbp), %rdx
	movl	13176(%rcx,%rdx,4), %ecx
	movq	img, %rdx
	movslq	-12(%rbp), %rsi
	addl	13496(%rdx,%rsi,4), %ecx
	movl	%ecx, -92(%rbp)
	movq	img, %rcx
	movslq	-12(%rbp), %rdx
	movl	13240(%rcx,%rdx,4), %ecx
	movq	img, %rdx
	movslq	-12(%rbp), %rsi
	addl	13432(%rdx,%rsi,4), %ecx
	movl	%ecx, -88(%rbp)
	movq	img, %rcx
	movslq	-12(%rbp), %rdx
	movl	13304(%rcx,%rdx,4), %ecx
	movq	img, %rdx
	movslq	-12(%rbp), %rsi
	addl	13368(%rdx,%rsi,4), %ecx
	movl	%ecx, -84(%rbp)
	movl	-96(%rbp), %ecx
	addl	-84(%rbp), %ecx
	movl	%ecx, -176(%rbp)
	movl	-92(%rbp), %ecx
	addl	-88(%rbp), %ecx
	movl	%ecx, -172(%rbp)
	movl	-96(%rbp), %ecx
	subl	-84(%rbp), %ecx
	movl	%ecx, -168(%rbp)
	movl	-92(%rbp), %ecx
	subl	-88(%rbp), %ecx
	movl	%ecx, -164(%rbp)
	movq	img, %rcx
	movslq	-12(%rbp), %rdx
	movl	13112(%rcx,%rdx,4), %ecx
	movq	img, %rdx
	movslq	-12(%rbp), %rsi
	subl	13560(%rdx,%rsi,4), %ecx
	movl	%ecx, -80(%rbp)
	movq	img, %rcx
	movslq	-12(%rbp), %rdx
	movl	13176(%rcx,%rdx,4), %ecx
	movq	img, %rdx
	movslq	-12(%rbp), %rsi
	subl	13496(%rdx,%rsi,4), %ecx
	movl	%ecx, -76(%rbp)
	movq	img, %rcx
	movslq	-12(%rbp), %rdx
	movl	13240(%rcx,%rdx,4), %ecx
	movq	img, %rdx
	movslq	-12(%rbp), %rsi
	subl	13432(%rdx,%rsi,4), %ecx
	movl	%ecx, -72(%rbp)
	movq	img, %rcx
	movslq	-12(%rbp), %rdx
	movl	13304(%rcx,%rdx,4), %ecx
	movq	img, %rdx
	movslq	-12(%rbp), %rsi
	subl	13368(%rdx,%rsi,4), %ecx
	movl	%ecx, -68(%rbp)
	movl	-76(%rbp), %ecx
	addl	-72(%rbp), %ecx
	movl	-80(%rbp), %edx
	sarl	$1, %edx
	addl	-80(%rbp), %edx
	addl	%edx, %ecx
	movl	%ecx, -160(%rbp)
	movl	-80(%rbp), %ecx
	subl	-68(%rbp), %ecx
	movl	-72(%rbp), %edx
	sarl	$1, %edx
	addl	-72(%rbp), %edx
	subl	%edx, %ecx
	movl	%ecx, -156(%rbp)
	movl	-80(%rbp), %ecx
	addl	-68(%rbp), %ecx
	movl	-76(%rbp), %edx
	sarl	$1, %edx
	addl	-76(%rbp), %edx
	subl	%edx, %ecx
	movl	%ecx, -152(%rbp)
	movl	-76(%rbp), %ecx
	subl	-72(%rbp), %ecx
	movl	-68(%rbp), %edx
	sarl	$1, %edx
	addl	-68(%rbp), %edx
	addl	%edx, %ecx
	movl	%ecx, -148(%rbp)
	movl	-176(%rbp), %ecx
	addl	-172(%rbp), %ecx
	movslq	-12(%rbp), %rdx
	movl	%ecx, -672(%rbp,%rdx,4)
	movl	-168(%rbp), %ecx
	movl	-164(%rbp), %edx
	sarl	$1, %edx
	addl	%edx, %ecx
	movslq	-12(%rbp), %rdx
	movl	%ecx, -608(%rbp,%rdx,4)
	movl	-176(%rbp), %ecx
	subl	-172(%rbp), %ecx
	movslq	-12(%rbp), %rdx
	movl	%ecx, -544(%rbp,%rdx,4)
	movl	-168(%rbp), %ecx
	sarl	$1, %ecx
	subl	-164(%rbp), %ecx
	movslq	-12(%rbp), %rdx
	movl	%ecx, -480(%rbp,%rdx,4)
	movl	-160(%rbp), %ecx
	movl	-148(%rbp), %edx
	sarl	$2, %edx
	addl	%edx, %ecx
	movslq	-12(%rbp), %rdx
	movl	%ecx, -640(%rbp,%rdx,4)
	movl	-156(%rbp), %ecx
	movl	-152(%rbp), %edx
	sarl	$2, %edx
	addl	%edx, %ecx
	movslq	-12(%rbp), %rdx
	movl	%ecx, -576(%rbp,%rdx,4)
	movl	-152(%rbp), %ecx
	movl	-156(%rbp), %edx
	sarl	$2, %edx
	subl	%edx, %ecx
	movslq	-12(%rbp), %rdx
	movl	%ecx, -512(%rbp,%rdx,4)
	subl	-148(%rbp), %eax
	movl	-160(%rbp), %ecx
	sarl	$2, %ecx
	addl	%ecx, %eax
	movslq	-12(%rbp), %rcx
	movl	%eax, -448(%rbp,%rcx,4)
# %bb.13:                               # %for.inc
                                        #   in Loop: Header=BB28_9 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB28_9
.LBB28_14:                              # %for.end
	movl	$0, -12(%rbp)
.LBB28_15:                              # %for.cond223
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	cmpl	$8, -12(%rbp)
	jge	.LBB28_17
# %bb.16:                               # %land.rhs225
                                        #   in Loop: Header=BB28_15 Depth=1
	cmpl	$0, -32(%rbp)
	setne	%al
	xorb	$-1, %al
.LBB28_17:                              # %land.end228
                                        #   in Loop: Header=BB28_15 Depth=1
	testb	$1, %al
	jne	.LBB28_18
	jmp	.LBB28_20
.LBB28_18:                              # %for.body230
                                        #   in Loop: Header=BB28_15 Depth=1
	xorl	%eax, %eax
	movslq	-12(%rbp), %rdx
	shlq	$5, %rdx
	leaq	-672(%rbp), %rcx
	movq	%rcx, %rsi
	addq	%rdx, %rsi
	movl	(%rsi), %edx
	movslq	-12(%rbp), %rsi
	shlq	$5, %rsi
	movq	%rcx, %rdi
	addq	%rsi, %rdi
	addl	28(%rdi), %edx
	movl	%edx, -128(%rbp)
	movslq	-12(%rbp), %rdx
	shlq	$5, %rdx
	movq	%rcx, %rsi
	addq	%rdx, %rsi
	movl	4(%rsi), %edx
	movslq	-12(%rbp), %rsi
	shlq	$5, %rsi
	movq	%rcx, %rdi
	addq	%rsi, %rdi
	addl	24(%rdi), %edx
	movl	%edx, -124(%rbp)
	movslq	-12(%rbp), %rdx
	shlq	$5, %rdx
	movq	%rcx, %rsi
	addq	%rdx, %rsi
	movl	8(%rsi), %edx
	movslq	-12(%rbp), %rsi
	shlq	$5, %rsi
	movq	%rcx, %rdi
	addq	%rsi, %rdi
	addl	20(%rdi), %edx
	movl	%edx, -120(%rbp)
	movslq	-12(%rbp), %rdx
	shlq	$5, %rdx
	movq	%rcx, %rsi
	addq	%rdx, %rsi
	movl	12(%rsi), %edx
	movslq	-12(%rbp), %rsi
	shlq	$5, %rsi
	movq	%rcx, %rdi
	addq	%rsi, %rdi
	addl	16(%rdi), %edx
	movl	%edx, -116(%rbp)
	movl	-128(%rbp), %edx
	addl	-116(%rbp), %edx
	movl	%edx, -304(%rbp)
	movl	-124(%rbp), %edx
	addl	-120(%rbp), %edx
	movl	%edx, -300(%rbp)
	movl	-128(%rbp), %edx
	subl	-116(%rbp), %edx
	movl	%edx, -296(%rbp)
	movl	-124(%rbp), %edx
	subl	-120(%rbp), %edx
	movl	%edx, -292(%rbp)
	movslq	-12(%rbp), %rdx
	shlq	$5, %rdx
	movq	%rcx, %rsi
	addq	%rdx, %rsi
	movl	(%rsi), %edx
	movslq	-12(%rbp), %rsi
	shlq	$5, %rsi
	movq	%rcx, %rdi
	addq	%rsi, %rdi
	subl	28(%rdi), %edx
	movl	%edx, -112(%rbp)
	movslq	-12(%rbp), %rdx
	shlq	$5, %rdx
	movq	%rcx, %rsi
	addq	%rdx, %rsi
	movl	4(%rsi), %edx
	movslq	-12(%rbp), %rsi
	shlq	$5, %rsi
	movq	%rcx, %rdi
	addq	%rsi, %rdi
	subl	24(%rdi), %edx
	movl	%edx, -108(%rbp)
	movslq	-12(%rbp), %rdx
	shlq	$5, %rdx
	movq	%rcx, %rsi
	addq	%rdx, %rsi
	movl	8(%rsi), %edx
	movslq	-12(%rbp), %rsi
	shlq	$5, %rsi
	movq	%rcx, %rdi
	addq	%rsi, %rdi
	subl	20(%rdi), %edx
	movl	%edx, -104(%rbp)
	movslq	-12(%rbp), %rdx
	shlq	$5, %rdx
	movq	%rcx, %rsi
	addq	%rdx, %rsi
	movl	12(%rsi), %edx
	movslq	-12(%rbp), %rsi
	shlq	$5, %rsi
	addq	%rsi, %rcx
	subl	16(%rcx), %edx
	movl	%edx, -100(%rbp)
	movl	-108(%rbp), %ecx
	addl	-104(%rbp), %ecx
	movl	-112(%rbp), %edx
	sarl	$1, %edx
	addl	-112(%rbp), %edx
	addl	%edx, %ecx
	movl	%ecx, -288(%rbp)
	movl	-112(%rbp), %ecx
	subl	-100(%rbp), %ecx
	movl	-104(%rbp), %edx
	sarl	$1, %edx
	addl	-104(%rbp), %edx
	subl	%edx, %ecx
	movl	%ecx, -284(%rbp)
	movl	-112(%rbp), %ecx
	addl	-100(%rbp), %ecx
	movl	-108(%rbp), %edx
	sarl	$1, %edx
	addl	-108(%rbp), %edx
	subl	%edx, %ecx
	movl	%ecx, -280(%rbp)
	movl	-108(%rbp), %ecx
	subl	-104(%rbp), %ecx
	movl	-100(%rbp), %edx
	sarl	$1, %edx
	addl	-100(%rbp), %edx
	addl	%edx, %ecx
	movl	%ecx, -276(%rbp)
	movl	-304(%rbp), %ecx
	addl	-300(%rbp), %ecx
	movq	img, %rdx
	addq	$13112, %rdx            # imm = 0x3338
	movslq	-12(%rbp), %rsi
	shlq	$6, %rsi
	addq	%rsi, %rdx
	movl	%ecx, (%rdx)
	movl	-296(%rbp), %ecx
	movl	-292(%rbp), %edx
	sarl	$1, %edx
	addl	%edx, %ecx
	movq	img, %rdx
	addq	$13112, %rdx            # imm = 0x3338
	movslq	-12(%rbp), %rsi
	shlq	$6, %rsi
	addq	%rsi, %rdx
	movl	%ecx, 8(%rdx)
	movl	-304(%rbp), %ecx
	subl	-300(%rbp), %ecx
	movq	img, %rdx
	addq	$13112, %rdx            # imm = 0x3338
	movslq	-12(%rbp), %rsi
	shlq	$6, %rsi
	addq	%rsi, %rdx
	movl	%ecx, 16(%rdx)
	movl	-296(%rbp), %ecx
	sarl	$1, %ecx
	subl	-292(%rbp), %ecx
	movq	img, %rdx
	addq	$13112, %rdx            # imm = 0x3338
	movslq	-12(%rbp), %rsi
	shlq	$6, %rsi
	addq	%rsi, %rdx
	movl	%ecx, 24(%rdx)
	movl	-288(%rbp), %ecx
	movl	-276(%rbp), %edx
	sarl	$2, %edx
	addl	%edx, %ecx
	movq	img, %rdx
	addq	$13112, %rdx            # imm = 0x3338
	movslq	-12(%rbp), %rsi
	shlq	$6, %rsi
	addq	%rsi, %rdx
	movl	%ecx, 4(%rdx)
	movl	-284(%rbp), %ecx
	movl	-280(%rbp), %edx
	sarl	$2, %edx
	addl	%edx, %ecx
	movq	img, %rdx
	addq	$13112, %rdx            # imm = 0x3338
	movslq	-12(%rbp), %rsi
	shlq	$6, %rsi
	addq	%rsi, %rdx
	movl	%ecx, 12(%rdx)
	movl	-280(%rbp), %ecx
	movl	-284(%rbp), %edx
	sarl	$2, %edx
	subl	%edx, %ecx
	movq	img, %rdx
	addq	$13112, %rdx            # imm = 0x3338
	movslq	-12(%rbp), %rsi
	shlq	$6, %rsi
	addq	%rsi, %rdx
	movl	%ecx, 20(%rdx)
	subl	-276(%rbp), %eax
	movl	-288(%rbp), %ecx
	sarl	$2, %ecx
	addl	%ecx, %eax
	movq	img, %rcx
	addq	$13112, %rcx            # imm = 0x3338
	movslq	-12(%rbp), %rdx
	shlq	$6, %rdx
	addq	%rdx, %rcx
	movl	%eax, 28(%rcx)
# %bb.19:                               # %for.inc412
                                        #   in Loop: Header=BB28_15 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB28_15
.LBB28_20:                              # %for.end414
	movl	$0, -344(%rbp)
	movl	$-1, -56(%rbp)
	movl	$0, -60(%rbp)
	movl	$-1, -356(%rbp)
	movl	$-1, -360(%rbp)
	movl	$-1, -364(%rbp)
	movl	$-1, -368(%rbp)
	movl	$0, -372(%rbp)
	movl	$0, -376(%rbp)
	movl	$0, -380(%rbp)
	movl	$0, -384(%rbp)
	movl	$0, -20(%rbp)
.LBB28_21:                              # %for.cond423
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$64, -20(%rbp)
	jge	.LBB28_61
# %bb.22:                               # %for.body425
                                        #   in Loop: Header=BB28_21 Depth=1
	movq	img, %rax
	cmpl	$0, 72444(%rax)
	jne	.LBB28_25
# %bb.23:                               # %lor.lhs.false
                                        #   in Loop: Header=BB28_21 Depth=1
	movq	img, %rax
	cmpl	$0, 72400(%rax)
	je	.LBB28_26
# %bb.24:                               # %land.lhs.true
                                        #   in Loop: Header=BB28_21 Depth=1
	movq	-392(%rbp), %rax
	cmpl	$0, 532(%rax)
	je	.LBB28_26
.LBB28_25:                              # %if.then429
                                        #   in Loop: Header=BB28_21 Depth=1
	movslq	-20(%rbp), %rax
	movzbl	FIELD_SCAN8x8(,%rax,2), %eax
	movl	%eax, -12(%rbp)
	movslq	-20(%rbp), %rax
	movzbl	FIELD_SCAN8x8+1(,%rax,2), %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB28_27
.LBB28_26:                              # %if.else437
                                        #   in Loop: Header=BB28_21 Depth=1
	movslq	-20(%rbp), %rax
	movzbl	SNGL_SCAN8x8(,%rax,2), %eax
	movl	%eax, -12(%rbp)
	movslq	-20(%rbp), %rax
	movzbl	SNGL_SCAN8x8+1(,%rax,2), %eax
	movl	%eax, -16(%rbp)
.LBB28_27:                              # %if.end446
                                        #   in Loop: Header=BB28_21 Depth=1
	movl	-56(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -56(%rbp)
	movl	$0, -52(%rbp)
	movl	-20(%rbp), %eax
	andl	$3, %eax
	cltq
	movl	-368(%rbp,%rax,4), %ecx
	addl	$1, %ecx
	movl	%ecx, -368(%rbp,%rax,4)
	cmpl	$0, -32(%rbp)
	je	.LBB28_29
# %bb.28:                               # %if.then452
                                        #   in Loop: Header=BB28_21 Depth=1
	movq	img, %rax
	addq	$13112, %rax            # imm = 0x3338
	movslq	-12(%rbp), %rcx
	shlq	$6, %rcx
	addq	%rcx, %rax
	movslq	-16(%rbp), %rcx
	movl	(%rax,%rcx,4), %edi
	callq	abs
	movl	%eax, -24(%rbp)
	jmp	.LBB28_33
.LBB28_29:                              # %if.else458
                                        #   in Loop: Header=BB28_21 Depth=1
	cmpl	$1, -340(%rbp)
	jne	.LBB28_31
# %bb.30:                               # %if.then461
                                        #   in Loop: Header=BB28_21 Depth=1
	movq	img, %rax
	addq	$13112, %rax            # imm = 0x3338
	movslq	-12(%rbp), %rcx
	shlq	$6, %rcx
	addq	%rcx, %rax
	movslq	-16(%rbp), %rcx
	movl	(%rax,%rcx,4), %edi
	callq	abs
	movslq	-48(%rbp), %rcx
	shlq	$8, %rcx
	movabsq	$LevelScale8x8Luma_Intra, %rdx
	addq	%rcx, %rdx
	movslq	-12(%rbp), %rcx
	shlq	$5, %rcx
	addq	%rcx, %rdx
	movslq	-16(%rbp), %rcx
	imull	(%rdx,%rcx,4), %eax
	movslq	-28(%rbp), %rcx
	shlq	$8, %rcx
	movabsq	$LevelOffset8x8Luma_Intra, %rdx
	addq	%rcx, %rdx
	movslq	-12(%rbp), %rcx
	shlq	$5, %rcx
	addq	%rcx, %rdx
	movslq	-16(%rbp), %rcx
	addl	(%rdx,%rcx,4), %eax
	movl	-64(%rbp), %ecx
                                        # kill: def $cl killed $ecx
	sarl	%cl, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB28_32
.LBB28_31:                              # %if.else483
                                        #   in Loop: Header=BB28_21 Depth=1
	movq	img, %rax
	addq	$13112, %rax            # imm = 0x3338
	movslq	-12(%rbp), %rcx
	shlq	$6, %rcx
	addq	%rcx, %rax
	movslq	-16(%rbp), %rcx
	movl	(%rax,%rcx,4), %edi
	callq	abs
	movslq	-48(%rbp), %rcx
	shlq	$8, %rcx
	movabsq	$LevelScale8x8Luma_Inter, %rdx
	addq	%rcx, %rdx
	movslq	-12(%rbp), %rcx
	shlq	$5, %rcx
	addq	%rcx, %rdx
	movslq	-16(%rbp), %rcx
	imull	(%rdx,%rcx,4), %eax
	movslq	-28(%rbp), %rcx
	shlq	$8, %rcx
	movabsq	$LevelOffset8x8Luma_Inter, %rdx
	addq	%rcx, %rdx
	movslq	-12(%rbp), %rcx
	shlq	$5, %rcx
	addq	%rcx, %rdx
	movslq	-16(%rbp), %rcx
	addl	(%rdx,%rcx,4), %eax
	movl	-64(%rbp), %ecx
                                        # kill: def $cl killed $ecx
	sarl	%cl, %eax
	movl	%eax, -24(%rbp)
.LBB28_32:                              # %if.end505
                                        #   in Loop: Header=BB28_21 Depth=1
	jmp	.LBB28_33
.LBB28_33:                              # %if.end506
                                        #   in Loop: Header=BB28_21 Depth=1
	cmpl	$0, -24(%rbp)
	je	.LBB28_57
# %bb.34:                               # %if.then509
                                        #   in Loop: Header=BB28_21 Depth=1
	movl	$1, -344(%rbp)
	movq	-392(%rbp), %rax
	cmpl	$0, 572(%rax)
	je	.LBB28_40
# %bb.35:                               # %land.lhs.true511
                                        #   in Loop: Header=BB28_21 Depth=1
	movq	input, %rax
	cmpl	$0, 2356(%rax)
	jne	.LBB28_40
# %bb.36:                               # %if.then514
                                        #   in Loop: Header=BB28_21 Depth=1
	cmpl	$1, -24(%rbp)
	jle	.LBB28_38
# %bb.37:                               # %if.then517
                                        #   in Loop: Header=BB28_21 Depth=1
	movq	-352(%rbp), %rax
	movl	(%rax), %ecx
	addl	$999999, %ecx           # imm = 0xF423F
	movl	%ecx, (%rax)
	jmp	.LBB28_39
.LBB28_38:                              # %if.else519
                                        #   in Loop: Header=BB28_21 Depth=1
	movabsq	$COEFF_COST8x8, %rax
	movq	input, %rcx
	movslq	2468(%rcx), %rcx
	shlq	$6, %rcx
	addq	%rcx, %rax
	movl	-20(%rbp), %ecx
	andl	$3, %ecx
	movslq	%ecx, %rcx
	movslq	-368(%rbp,%rcx,4), %rcx
	movzbl	(%rax,%rcx), %eax
	movq	-352(%rbp), %rcx
	addl	(%rcx), %eax
	movl	%eax, (%rcx)
.LBB28_39:                              # %if.end529
                                        #   in Loop: Header=BB28_21 Depth=1
	movl	-24(%rbp), %edi
	movq	img, %rax
	addq	$13112, %rax            # imm = 0x3338
	movslq	-12(%rbp), %rcx
	shlq	$6, %rcx
	addq	%rcx, %rax
	movslq	-16(%rbp), %rcx
	movl	(%rax,%rcx,4), %esi
	callq	sign
	movq	img, %rcx
	movq	14136(%rcx), %rcx
	movslq	-36(%rbp), %rdx
	movq	(%rcx,%rdx,8), %rcx
	movl	-20(%rbp), %edx
	andl	$3, %edx
	movslq	%edx, %rdx
	movq	(%rcx,%rdx,8), %rcx
	movq	(%rcx), %rcx
	movl	-20(%rbp), %edx
	andl	$3, %edx
	movslq	%edx, %rdx
	movslq	-384(%rbp,%rdx,4), %rdx
	movl	%eax, (%rcx,%rdx,4)
	movl	-20(%rbp), %eax
	andl	$3, %eax
	cltq
	movl	-368(%rbp,%rax,4), %eax
	movq	img, %rcx
	movq	14136(%rcx), %rcx
	movslq	-36(%rbp), %rdx
	movq	(%rcx,%rdx,8), %rcx
	movl	-20(%rbp), %edx
	andl	$3, %edx
	movslq	%edx, %rdx
	movq	(%rcx,%rdx,8), %rcx
	movq	8(%rcx), %rcx
	movl	-20(%rbp), %edx
	andl	$3, %edx
	movslq	%edx, %rdx
	movslq	-384(%rbp,%rdx,4), %rdx
	movl	%eax, (%rcx,%rdx,4)
	movl	-20(%rbp), %eax
	andl	$3, %eax
	cltq
	movl	-384(%rbp,%rax,4), %ecx
	addl	$1, %ecx
	movl	%ecx, -384(%rbp,%rax,4)
	movl	-20(%rbp), %eax
	andl	$3, %eax
	cltq
	movl	$-1, -368(%rbp,%rax,4)
	jmp	.LBB28_44
.LBB28_40:                              # %if.else570
                                        #   in Loop: Header=BB28_21 Depth=1
	cmpl	$1, -24(%rbp)
	jle	.LBB28_42
# %bb.41:                               # %if.then573
                                        #   in Loop: Header=BB28_21 Depth=1
	movq	-352(%rbp), %rax
	movl	(%rax), %ecx
	addl	$999999, %ecx           # imm = 0xF423F
	movl	%ecx, (%rax)
	jmp	.LBB28_43
.LBB28_42:                              # %if.else575
                                        #   in Loop: Header=BB28_21 Depth=1
	movabsq	$COEFF_COST8x8, %rax
	movq	input, %rcx
	movslq	2468(%rcx), %rcx
	shlq	$6, %rcx
	addq	%rcx, %rax
	movslq	-56(%rbp), %rcx
	movzbl	(%rax,%rcx), %eax
	movq	-352(%rbp), %rcx
	addl	(%rcx), %eax
	movl	%eax, (%rcx)
.LBB28_43:                              # %if.end583
                                        #   in Loop: Header=BB28_21 Depth=1
	movl	-24(%rbp), %edi
	movq	img, %rax
	addq	$13112, %rax            # imm = 0x3338
	movslq	-12(%rbp), %rcx
	shlq	$6, %rcx
	addq	%rcx, %rax
	movslq	-16(%rbp), %rcx
	movl	(%rax,%rcx,4), %esi
	callq	sign
	movq	-408(%rbp), %rcx
	movslq	-60(%rbp), %rdx
	movl	%eax, (%rcx,%rdx,4)
	movl	-56(%rbp), %eax
	movq	-416(%rbp), %rcx
	movslq	-60(%rbp), %rdx
	movl	%eax, (%rcx,%rdx,4)
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -60(%rbp)
	movl	$-1, -56(%rbp)
.LBB28_44:                              # %if.end595
                                        #   in Loop: Header=BB28_21 Depth=1
	movl	-24(%rbp), %edi
	movq	img, %rax
	addq	$13112, %rax            # imm = 0x3338
	movslq	-12(%rbp), %rcx
	shlq	$6, %rcx
	addq	%rcx, %rax
	movslq	-16(%rbp), %rcx
	movl	(%rax,%rcx,4), %esi
	callq	sign
	movl	%eax, -24(%rbp)
	cmpl	$0, -32(%rbp)
	je	.LBB28_46
# %bb.45:                               # %if.then603
                                        #   in Loop: Header=BB28_21 Depth=1
	movl	-24(%rbp), %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB28_56
.LBB28_46:                              # %if.else604
                                        #   in Loop: Header=BB28_21 Depth=1
	cmpl	$1, -340(%rbp)
	jne	.LBB28_51
# %bb.47:                               # %if.then607
                                        #   in Loop: Header=BB28_21 Depth=1
	cmpl	$6, -28(%rbp)
	jl	.LBB28_49
# %bb.48:                               # %if.then610
                                        #   in Loop: Header=BB28_21 Depth=1
	movl	-24(%rbp), %eax
	movslq	-48(%rbp), %rcx
	shlq	$8, %rcx
	movabsq	$InvLevelScale8x8Luma_Intra, %rdx
	addq	%rcx, %rdx
	movslq	-12(%rbp), %rcx
	shlq	$5, %rcx
	addq	%rcx, %rdx
	movslq	-16(%rbp), %rcx
	imull	(%rdx,%rcx,4), %eax
	movl	-136(%rbp), %ecx
                                        # kill: def $cl killed $ecx
	shll	%cl, %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB28_50
.LBB28_49:                              # %if.else619
                                        #   in Loop: Header=BB28_21 Depth=1
	movl	-24(%rbp), %eax
	movslq	-48(%rbp), %rcx
	shlq	$8, %rcx
	movabsq	$InvLevelScale8x8Luma_Intra, %rdx
	addq	%rcx, %rdx
	movslq	-12(%rbp), %rcx
	shlq	$5, %rcx
	addq	%rcx, %rdx
	movslq	-16(%rbp), %rcx
	imull	(%rdx,%rcx,4), %eax
	addl	-132(%rbp), %eax
	movl	-140(%rbp), %ecx
                                        # kill: def $cl killed $ecx
	sarl	%cl, %eax
	movl	%eax, -52(%rbp)
.LBB28_50:                              # %if.end629
                                        #   in Loop: Header=BB28_21 Depth=1
	jmp	.LBB28_55
.LBB28_51:                              # %if.else630
                                        #   in Loop: Header=BB28_21 Depth=1
	cmpl	$6, -28(%rbp)
	jl	.LBB28_53
# %bb.52:                               # %if.then633
                                        #   in Loop: Header=BB28_21 Depth=1
	movl	-24(%rbp), %eax
	movslq	-48(%rbp), %rcx
	shlq	$8, %rcx
	movabsq	$InvLevelScale8x8Luma_Inter, %rdx
	addq	%rcx, %rdx
	movslq	-12(%rbp), %rcx
	shlq	$5, %rcx
	addq	%rcx, %rdx
	movslq	-16(%rbp), %rcx
	imull	(%rdx,%rcx,4), %eax
	movl	-136(%rbp), %ecx
                                        # kill: def $cl killed $ecx
	shll	%cl, %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB28_54
.LBB28_53:                              # %if.else642
                                        #   in Loop: Header=BB28_21 Depth=1
	movl	-24(%rbp), %eax
	movslq	-48(%rbp), %rcx
	shlq	$8, %rcx
	movabsq	$InvLevelScale8x8Luma_Inter, %rdx
	addq	%rcx, %rdx
	movslq	-12(%rbp), %rcx
	shlq	$5, %rcx
	addq	%rcx, %rdx
	movslq	-16(%rbp), %rcx
	imull	(%rdx,%rcx,4), %eax
	addl	-132(%rbp), %eax
	movl	-140(%rbp), %ecx
                                        # kill: def $cl killed $ecx
	sarl	%cl, %eax
	movl	%eax, -52(%rbp)
.LBB28_54:                              # %if.end652
                                        #   in Loop: Header=BB28_21 Depth=1
	jmp	.LBB28_55
.LBB28_55:                              # %if.end653
                                        #   in Loop: Header=BB28_21 Depth=1
	jmp	.LBB28_56
.LBB28_56:                              # %if.end654
                                        #   in Loop: Header=BB28_21 Depth=1
	jmp	.LBB28_57
.LBB28_57:                              # %if.end655
                                        #   in Loop: Header=BB28_21 Depth=1
	cmpl	$0, -32(%rbp)
	jne	.LBB28_59
# %bb.58:                               # %if.then657
                                        #   in Loop: Header=BB28_21 Depth=1
	movl	-52(%rbp), %eax
	movq	img, %rcx
	addq	$13112, %rcx            # imm = 0x3338
	movslq	-12(%rbp), %rdx
	shlq	$6, %rdx
	addq	%rdx, %rcx
	movslq	-16(%rbp), %rdx
	movl	%eax, (%rcx,%rdx,4)
.LBB28_59:                              # %if.end663
                                        #   in Loop: Header=BB28_21 Depth=1
	jmp	.LBB28_60
.LBB28_60:                              # %for.inc664
                                        #   in Loop: Header=BB28_21 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB28_21
.LBB28_61:                              # %for.end666
	movq	-392(%rbp), %rax
	cmpl	$0, 572(%rax)
	je	.LBB28_63
# %bb.62:                               # %lor.lhs.false669
	movq	input, %rax
	cmpl	$0, 2356(%rax)
	je	.LBB28_64
.LBB28_63:                              # %if.then673
	movq	-408(%rbp), %rax
	movslq	-60(%rbp), %rcx
	movl	$0, (%rax,%rcx,4)
	jmp	.LBB28_69
.LBB28_64:                              # %if.else676
	movl	$0, -12(%rbp)
.LBB28_65:                              # %for.cond677
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$4, -12(%rbp)
	jge	.LBB28_68
# %bb.66:                               # %for.body680
                                        #   in Loop: Header=BB28_65 Depth=1
	movq	img, %rax
	movq	14136(%rax), %rax
	movslq	-36(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movslq	-12(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movq	(%rax), %rax
	movslq	-12(%rbp), %rcx
	movslq	-384(%rbp,%rcx,4), %rcx
	movl	$0, (%rax,%rcx,4)
# %bb.67:                               # %for.inc691
                                        #   in Loop: Header=BB28_65 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB28_65
.LBB28_68:                              # %for.end693
	jmp	.LBB28_69
.LBB28_69:                              # %if.end694
	movl	$0, -12(%rbp)
.LBB28_70:                              # %for.cond695
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	cmpl	$8, -12(%rbp)
	jge	.LBB28_72
# %bb.71:                               # %land.rhs698
                                        #   in Loop: Header=BB28_70 Depth=1
	cmpl	$0, -32(%rbp)
	setne	%al
	xorb	$-1, %al
.LBB28_72:                              # %land.end701
                                        #   in Loop: Header=BB28_70 Depth=1
	testb	$1, %al
	jne	.LBB28_73
	jmp	.LBB28_75
.LBB28_73:                              # %for.body703
                                        #   in Loop: Header=BB28_70 Depth=1
	xorl	%eax, %eax
	movq	img, %rcx
	movslq	-12(%rbp), %rdx
	movl	13112(%rcx,%rdx,4), %ecx
	movq	img, %rdx
	movslq	-12(%rbp), %rsi
	addl	13368(%rdx,%rsi,4), %ecx
	movl	%ecx, -208(%rbp)
	movq	img, %rcx
	movslq	-12(%rbp), %rdx
	movl	13112(%rcx,%rdx,4), %ecx
	movq	img, %rdx
	movslq	-12(%rbp), %rsi
	subl	13368(%rdx,%rsi,4), %ecx
	movl	%ecx, -192(%rbp)
	movq	img, %rcx
	movslq	-12(%rbp), %rdx
	movl	13240(%rcx,%rdx,4), %ecx
	sarl	$1, %ecx
	movq	img, %rdx
	movslq	-12(%rbp), %rsi
	subl	13496(%rdx,%rsi,4), %ecx
	movl	%ecx, -200(%rbp)
	movq	img, %rcx
	movslq	-12(%rbp), %rdx
	movl	13240(%rcx,%rdx,4), %ecx
	movq	img, %rdx
	movslq	-12(%rbp), %rsi
	movl	13496(%rdx,%rsi,4), %edx
	sarl	$1, %edx
	addl	%edx, %ecx
	movl	%ecx, -184(%rbp)
	movl	-208(%rbp), %ecx
	addl	-184(%rbp), %ecx
	movl	%ecx, -240(%rbp)
	movl	-192(%rbp), %ecx
	addl	-200(%rbp), %ecx
	movl	%ecx, -232(%rbp)
	movl	-192(%rbp), %ecx
	subl	-200(%rbp), %ecx
	movl	%ecx, -224(%rbp)
	movl	-208(%rbp), %ecx
	subl	-184(%rbp), %ecx
	movl	%ecx, -216(%rbp)
	movq	img, %rcx
	movslq	-12(%rbp), %rdx
	xorl	%esi, %esi
	subl	13304(%rcx,%rdx,4), %esi
	movq	img, %rcx
	movslq	-12(%rbp), %rdx
	addl	13432(%rcx,%rdx,4), %esi
	movq	img, %rcx
	movslq	-12(%rbp), %rdx
	subl	13560(%rcx,%rdx,4), %esi
	movq	img, %rcx
	movslq	-12(%rbp), %rdx
	movl	13560(%rcx,%rdx,4), %ecx
	sarl	$1, %ecx
	subl	%ecx, %esi
	movl	%esi, -204(%rbp)
	movq	img, %rcx
	movslq	-12(%rbp), %rdx
	movl	13176(%rcx,%rdx,4), %ecx
	movq	img, %rdx
	movslq	-12(%rbp), %rsi
	addl	13560(%rdx,%rsi,4), %ecx
	movq	img, %rdx
	movslq	-12(%rbp), %rsi
	subl	13304(%rdx,%rsi,4), %ecx
	movq	img, %rdx
	movslq	-12(%rbp), %rsi
	movl	13304(%rdx,%rsi,4), %edx
	sarl	$1, %edx
	subl	%edx, %ecx
	movl	%ecx, -196(%rbp)
	movq	img, %rcx
	movslq	-12(%rbp), %rdx
	xorl	%esi, %esi
	subl	13176(%rcx,%rdx,4), %esi
	movq	img, %rcx
	movslq	-12(%rbp), %rdx
	addl	13560(%rcx,%rdx,4), %esi
	movq	img, %rcx
	movslq	-12(%rbp), %rdx
	addl	13432(%rcx,%rdx,4), %esi
	movq	img, %rcx
	movslq	-12(%rbp), %rdx
	movl	13432(%rcx,%rdx,4), %ecx
	sarl	$1, %ecx
	addl	%ecx, %esi
	movl	%esi, -188(%rbp)
	movq	img, %rcx
	movslq	-12(%rbp), %rdx
	movl	13304(%rcx,%rdx,4), %ecx
	movq	img, %rdx
	movslq	-12(%rbp), %rsi
	addl	13432(%rdx,%rsi,4), %ecx
	movq	img, %rdx
	movslq	-12(%rbp), %rsi
	addl	13176(%rdx,%rsi,4), %ecx
	movq	img, %rdx
	movslq	-12(%rbp), %rsi
	movl	13176(%rdx,%rsi,4), %edx
	sarl	$1, %edx
	addl	%edx, %ecx
	movl	%ecx, -180(%rbp)
	movl	-204(%rbp), %ecx
	movl	-180(%rbp), %edx
	sarl	$2, %edx
	addl	%edx, %ecx
	movl	%ecx, -236(%rbp)
	movl	-204(%rbp), %ecx
	sarl	$2, %ecx
	subl	%ecx, %eax
	addl	-180(%rbp), %eax
	movl	%eax, -212(%rbp)
	movl	-196(%rbp), %eax
	movl	-188(%rbp), %ecx
	sarl	$2, %ecx
	addl	%ecx, %eax
	movl	%eax, -228(%rbp)
	movl	-196(%rbp), %eax
	sarl	$2, %eax
	subl	-188(%rbp), %eax
	movl	%eax, -220(%rbp)
	movl	-240(%rbp), %eax
	addl	-212(%rbp), %eax
	movslq	-12(%rbp), %rcx
	movl	%eax, -672(%rbp,%rcx,4)
	movl	-232(%rbp), %eax
	addl	-220(%rbp), %eax
	movslq	-12(%rbp), %rcx
	movl	%eax, -640(%rbp,%rcx,4)
	movl	-224(%rbp), %eax
	addl	-228(%rbp), %eax
	movslq	-12(%rbp), %rcx
	movl	%eax, -608(%rbp,%rcx,4)
	movl	-216(%rbp), %eax
	addl	-236(%rbp), %eax
	movslq	-12(%rbp), %rcx
	movl	%eax, -576(%rbp,%rcx,4)
	movl	-216(%rbp), %eax
	subl	-236(%rbp), %eax
	movslq	-12(%rbp), %rcx
	movl	%eax, -544(%rbp,%rcx,4)
	movl	-224(%rbp), %eax
	subl	-228(%rbp), %eax
	movslq	-12(%rbp), %rcx
	movl	%eax, -512(%rbp,%rcx,4)
	movl	-232(%rbp), %eax
	subl	-220(%rbp), %eax
	movslq	-12(%rbp), %rcx
	movl	%eax, -480(%rbp,%rcx,4)
	movl	-240(%rbp), %eax
	subl	-212(%rbp), %eax
	movslq	-12(%rbp), %rcx
	movl	%eax, -448(%rbp,%rcx,4)
# %bb.74:                               # %for.inc919
                                        #   in Loop: Header=BB28_70 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB28_70
.LBB28_75:                              # %for.end921
	movl	$0, -12(%rbp)
.LBB28_76:                              # %for.cond922
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	cmpl	$8, -12(%rbp)
	jge	.LBB28_78
# %bb.77:                               # %land.rhs925
                                        #   in Loop: Header=BB28_76 Depth=1
	cmpl	$0, -32(%rbp)
	setne	%al
	xorb	$-1, %al
.LBB28_78:                              # %land.end928
                                        #   in Loop: Header=BB28_76 Depth=1
	testb	$1, %al
	jne	.LBB28_79
	jmp	.LBB28_81
.LBB28_79:                              # %for.body930
                                        #   in Loop: Header=BB28_76 Depth=1
	xorl	%eax, %eax
	movslq	-12(%rbp), %rdx
	shlq	$5, %rdx
	leaq	-672(%rbp), %rcx
	movq	%rcx, %rsi
	addq	%rdx, %rsi
	movl	(%rsi), %edx
	movslq	-12(%rbp), %rsi
	shlq	$5, %rsi
	movq	%rcx, %rdi
	addq	%rsi, %rdi
	addl	16(%rdi), %edx
	movl	%edx, -336(%rbp)
	movslq	-12(%rbp), %rdx
	shlq	$5, %rdx
	movq	%rcx, %rsi
	addq	%rdx, %rsi
	movl	(%rsi), %edx
	movslq	-12(%rbp), %rsi
	shlq	$5, %rsi
	movq	%rcx, %rdi
	addq	%rsi, %rdi
	subl	16(%rdi), %edx
	movl	%edx, -320(%rbp)
	movslq	-12(%rbp), %rdx
	shlq	$5, %rdx
	movq	%rcx, %rsi
	addq	%rdx, %rsi
	movl	8(%rsi), %edx
	sarl	$1, %edx
	movslq	-12(%rbp), %rsi
	shlq	$5, %rsi
	movq	%rcx, %rdi
	addq	%rsi, %rdi
	subl	24(%rdi), %edx
	movl	%edx, -328(%rbp)
	movslq	-12(%rbp), %rdx
	shlq	$5, %rdx
	movq	%rcx, %rsi
	addq	%rdx, %rsi
	movl	8(%rsi), %edx
	movslq	-12(%rbp), %rsi
	shlq	$5, %rsi
	movq	%rcx, %rdi
	addq	%rsi, %rdi
	movl	24(%rdi), %esi
	sarl	$1, %esi
	addl	%esi, %edx
	movl	%edx, -312(%rbp)
	movl	-336(%rbp), %edx
	addl	-312(%rbp), %edx
	movl	%edx, -272(%rbp)
	movl	-320(%rbp), %edx
	addl	-328(%rbp), %edx
	movl	%edx, -264(%rbp)
	movl	-320(%rbp), %edx
	subl	-328(%rbp), %edx
	movl	%edx, -256(%rbp)
	movl	-336(%rbp), %edx
	subl	-312(%rbp), %edx
	movl	%edx, -248(%rbp)
	movslq	-12(%rbp), %rdx
	shlq	$5, %rdx
	movq	%rcx, %rsi
	addq	%rdx, %rsi
	xorl	%edx, %edx
	subl	12(%rsi), %edx
	movslq	-12(%rbp), %rsi
	shlq	$5, %rsi
	movq	%rcx, %rdi
	addq	%rsi, %rdi
	addl	20(%rdi), %edx
	movslq	-12(%rbp), %rsi
	shlq	$5, %rsi
	movq	%rcx, %rdi
	addq	%rsi, %rdi
	subl	28(%rdi), %edx
	movslq	-12(%rbp), %rsi
	shlq	$5, %rsi
	movq	%rcx, %rdi
	addq	%rsi, %rdi
	movl	28(%rdi), %esi
	sarl	$1, %esi
	subl	%esi, %edx
	movl	%edx, -332(%rbp)
	movslq	-12(%rbp), %rdx
	shlq	$5, %rdx
	movq	%rcx, %rsi
	addq	%rdx, %rsi
	movl	4(%rsi), %edx
	movslq	-12(%rbp), %rsi
	shlq	$5, %rsi
	movq	%rcx, %rdi
	addq	%rsi, %rdi
	addl	28(%rdi), %edx
	movslq	-12(%rbp), %rsi
	shlq	$5, %rsi
	movq	%rcx, %rdi
	addq	%rsi, %rdi
	subl	12(%rdi), %edx
	movslq	-12(%rbp), %rsi
	shlq	$5, %rsi
	movq	%rcx, %rdi
	addq	%rsi, %rdi
	movl	12(%rdi), %esi
	sarl	$1, %esi
	subl	%esi, %edx
	movl	%edx, -324(%rbp)
	movslq	-12(%rbp), %rdx
	shlq	$5, %rdx
	movq	%rcx, %rsi
	addq	%rdx, %rsi
	xorl	%edx, %edx
	subl	4(%rsi), %edx
	movslq	-12(%rbp), %rsi
	shlq	$5, %rsi
	movq	%rcx, %rdi
	addq	%rsi, %rdi
	addl	28(%rdi), %edx
	movslq	-12(%rbp), %rsi
	shlq	$5, %rsi
	movq	%rcx, %rdi
	addq	%rsi, %rdi
	addl	20(%rdi), %edx
	movslq	-12(%rbp), %rsi
	shlq	$5, %rsi
	movq	%rcx, %rdi
	addq	%rsi, %rdi
	movl	20(%rdi), %esi
	sarl	$1, %esi
	addl	%esi, %edx
	movl	%edx, -316(%rbp)
	movslq	-12(%rbp), %rdx
	shlq	$5, %rdx
	movq	%rcx, %rsi
	addq	%rdx, %rsi
	movl	12(%rsi), %edx
	movslq	-12(%rbp), %rsi
	shlq	$5, %rsi
	movq	%rcx, %rdi
	addq	%rsi, %rdi
	addl	20(%rdi), %edx
	movslq	-12(%rbp), %rsi
	shlq	$5, %rsi
	movq	%rcx, %rdi
	addq	%rsi, %rdi
	addl	4(%rdi), %edx
	movslq	-12(%rbp), %rsi
	shlq	$5, %rsi
	addq	%rsi, %rcx
	movl	4(%rcx), %ecx
	sarl	$1, %ecx
	addl	%ecx, %edx
	movl	%edx, -308(%rbp)
	movl	-332(%rbp), %ecx
	movl	-308(%rbp), %edx
	sarl	$2, %edx
	addl	%edx, %ecx
	movl	%ecx, -268(%rbp)
	movl	-332(%rbp), %ecx
	sarl	$2, %ecx
	subl	%ecx, %eax
	addl	-308(%rbp), %eax
	movl	%eax, -244(%rbp)
	movl	-324(%rbp), %eax
	movl	-316(%rbp), %ecx
	sarl	$2, %ecx
	addl	%ecx, %eax
	movl	%eax, -260(%rbp)
	movl	-324(%rbp), %eax
	sarl	$2, %eax
	subl	-316(%rbp), %eax
	movl	%eax, -252(%rbp)
	movl	-272(%rbp), %eax
	addl	-244(%rbp), %eax
	movq	img, %rcx
	addq	$13112, %rcx            # imm = 0x3338
	movslq	-12(%rbp), %rdx
	shlq	$6, %rdx
	addq	%rdx, %rcx
	movl	%eax, (%rcx)
	movl	-264(%rbp), %eax
	addl	-252(%rbp), %eax
	movq	img, %rcx
	addq	$13112, %rcx            # imm = 0x3338
	movslq	-12(%rbp), %rdx
	shlq	$6, %rdx
	addq	%rdx, %rcx
	movl	%eax, 4(%rcx)
	movl	-256(%rbp), %eax
	addl	-260(%rbp), %eax
	movq	img, %rcx
	addq	$13112, %rcx            # imm = 0x3338
	movslq	-12(%rbp), %rdx
	shlq	$6, %rdx
	addq	%rdx, %rcx
	movl	%eax, 8(%rcx)
	movl	-248(%rbp), %eax
	addl	-268(%rbp), %eax
	movq	img, %rcx
	addq	$13112, %rcx            # imm = 0x3338
	movslq	-12(%rbp), %rdx
	shlq	$6, %rdx
	addq	%rdx, %rcx
	movl	%eax, 12(%rcx)
	movl	-248(%rbp), %eax
	subl	-268(%rbp), %eax
	movq	img, %rcx
	addq	$13112, %rcx            # imm = 0x3338
	movslq	-12(%rbp), %rdx
	shlq	$6, %rdx
	addq	%rdx, %rcx
	movl	%eax, 16(%rcx)
	movl	-256(%rbp), %eax
	subl	-260(%rbp), %eax
	movq	img, %rcx
	addq	$13112, %rcx            # imm = 0x3338
	movslq	-12(%rbp), %rdx
	shlq	$6, %rdx
	addq	%rdx, %rcx
	movl	%eax, 20(%rcx)
	movl	-264(%rbp), %eax
	subl	-252(%rbp), %eax
	movq	img, %rcx
	addq	$13112, %rcx            # imm = 0x3338
	movslq	-12(%rbp), %rdx
	shlq	$6, %rdx
	addq	%rdx, %rcx
	movl	%eax, 24(%rcx)
	movl	-272(%rbp), %eax
	subl	-244(%rbp), %eax
	movq	img, %rcx
	addq	$13112, %rcx            # imm = 0x3338
	movslq	-12(%rbp), %rdx
	shlq	$6, %rdx
	addq	%rdx, %rcx
	movl	%eax, 28(%rcx)
# %bb.80:                               # %for.inc1130
                                        #   in Loop: Header=BB28_76 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB28_76
.LBB28_81:                              # %for.end1132
	movl	$0, -12(%rbp)
.LBB28_82:                              # %for.cond1133
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB28_84 Depth 2
	cmpl	$8, -12(%rbp)
	jge	.LBB28_104
# %bb.83:                               # %for.body1136
                                        #   in Loop: Header=BB28_82 Depth=1
	movl	$0, -16(%rbp)
.LBB28_84:                              # %for.cond1137
                                        #   Parent Loop BB28_82 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$8, -16(%rbp)
	jge	.LBB28_102
# %bb.85:                               # %for.body1140
                                        #   in Loop: Header=BB28_84 Depth=2
	cmpl	$0, -32(%rbp)
	je	.LBB28_87
# %bb.86:                               # %if.then1142
                                        #   in Loop: Header=BB28_84 Depth=2
	movq	img, %rax
	addq	$13112, %rax            # imm = 0x3338
	movslq	-12(%rbp), %rcx
	shlq	$6, %rcx
	addq	%rcx, %rax
	movslq	-16(%rbp), %rcx
	movl	(%rax,%rcx,4), %eax
	movq	img, %rcx
	addq	$12600, %rcx            # imm = 0x3138
	movl	-12(%rbp), %edx
	addl	-44(%rbp), %edx
	movslq	%edx, %rdx
	shlq	$5, %rdx
	addq	%rdx, %rcx
	movl	-16(%rbp), %edx
	addl	-40(%rbp), %edx
	movslq	%edx, %rdx
	movzwl	(%rcx,%rdx,2), %ecx
	addl	%ecx, %eax
	movq	img, %rcx
	addq	$13112, %rcx            # imm = 0x3338
	movslq	-12(%rbp), %rdx
	shlq	$6, %rdx
	addq	%rdx, %rcx
	movslq	-16(%rbp), %rdx
	movl	%eax, (%rcx,%rdx,4)
	jmp	.LBB28_100
.LBB28_87:                              # %if.else1161
                                        #   in Loop: Header=BB28_84 Depth=2
	movq	img, %rax
	cmpl	$0, 72724(%rax)
	jne	.LBB28_98
# %bb.88:                               # %if.then1163
                                        #   in Loop: Header=BB28_84 Depth=2
	xorl	%ecx, %ecx
	movq	img, %rax
	movslq	72684(%rax), %rax
	movq	img, %rdx
	addq	$13112, %rdx            # imm = 0x3338
	movslq	-12(%rbp), %rsi
	shlq	$6, %rsi
	addq	%rsi, %rdx
	movslq	-16(%rbp), %rsi
	movslq	(%rdx,%rsi,4), %rdx
	movq	img, %rsi
	addq	$12600, %rsi            # imm = 0x3138
	movl	-12(%rbp), %edi
	addl	-44(%rbp), %edi
	movslq	%edi, %rdi
	shlq	$5, %rdi
	addq	%rdi, %rsi
	movl	-16(%rbp), %edi
	addl	-40(%rbp), %edi
	movslq	%edi, %rdi
	movzwl	(%rsi,%rdi,2), %esi
	shlq	$6, %rsi
	addq	%rsi, %rdx
	addq	$32, %rdx
	sarq	$6, %rdx
	cmpq	%rdx, %rcx
	jle	.LBB28_90
# %bb.89:                               # %cond.true
                                        #   in Loop: Header=BB28_84 Depth=2
	xorl	%ecx, %ecx
	jmp	.LBB28_91
.LBB28_90:                              # %cond.false
                                        #   in Loop: Header=BB28_84 Depth=2
	movq	img, %rcx
	addq	$13112, %rcx            # imm = 0x3338
	movslq	-12(%rbp), %rdx
	shlq	$6, %rdx
	addq	%rdx, %rcx
	movslq	-16(%rbp), %rdx
	movslq	(%rcx,%rdx,4), %rcx
	movq	img, %rdx
	addq	$12600, %rdx            # imm = 0x3138
	movl	-12(%rbp), %esi
	addl	-44(%rbp), %esi
	movslq	%esi, %rsi
	shlq	$5, %rsi
	addq	%rsi, %rdx
	movl	-16(%rbp), %esi
	addl	-40(%rbp), %esi
	movslq	%esi, %rsi
	movzwl	(%rdx,%rsi,2), %edx
	shlq	$6, %rdx
	addq	%rdx, %rcx
	addq	$32, %rcx
	sarq	$6, %rcx
.LBB28_91:                              # %cond.end
                                        #   in Loop: Header=BB28_84 Depth=2
	cmpq	%rcx, %rax
	jge	.LBB28_93
# %bb.92:                               # %cond.true1205
                                        #   in Loop: Header=BB28_84 Depth=2
	movq	img, %rax
	movslq	72684(%rax), %rax
	jmp	.LBB28_97
.LBB28_93:                              # %cond.false1208
                                        #   in Loop: Header=BB28_84 Depth=2
	xorl	%eax, %eax
	movq	img, %rcx
	addq	$13112, %rcx            # imm = 0x3338
	movslq	-12(%rbp), %rdx
	shlq	$6, %rdx
	addq	%rdx, %rcx
	movslq	-16(%rbp), %rdx
	movslq	(%rcx,%rdx,4), %rcx
	movq	img, %rdx
	addq	$12600, %rdx            # imm = 0x3138
	movl	-12(%rbp), %esi
	addl	-44(%rbp), %esi
	movslq	%esi, %rsi
	shlq	$5, %rsi
	addq	%rsi, %rdx
	movl	-16(%rbp), %esi
	addl	-40(%rbp), %esi
	movslq	%esi, %rsi
	movzwl	(%rdx,%rsi,2), %edx
	shlq	$6, %rdx
	addq	%rdx, %rcx
	addq	$32, %rcx
	sarq	$6, %rcx
	cmpq	%rcx, %rax
	jle	.LBB28_95
# %bb.94:                               # %cond.true1229
                                        #   in Loop: Header=BB28_84 Depth=2
	xorl	%eax, %eax
	jmp	.LBB28_96
.LBB28_95:                              # %cond.false1230
                                        #   in Loop: Header=BB28_84 Depth=2
	movq	img, %rax
	addq	$13112, %rax            # imm = 0x3338
	movslq	-12(%rbp), %rcx
	shlq	$6, %rcx
	addq	%rcx, %rax
	movslq	-16(%rbp), %rcx
	movslq	(%rax,%rcx,4), %rax
	movq	img, %rcx
	addq	$12600, %rcx            # imm = 0x3138
	movl	-12(%rbp), %edx
	addl	-44(%rbp), %edx
	movslq	%edx, %rdx
	shlq	$5, %rdx
	addq	%rdx, %rcx
	movl	-16(%rbp), %edx
	addl	-40(%rbp), %edx
	movslq	%edx, %rdx
	movzwl	(%rcx,%rdx,2), %ecx
	shlq	$6, %rcx
	addq	%rcx, %rax
	addq	$32, %rax
	sarq	$6, %rax
.LBB28_96:                              # %cond.end1249
                                        #   in Loop: Header=BB28_84 Depth=2
.LBB28_97:                              # %cond.end1251
                                        #   in Loop: Header=BB28_84 Depth=2
	movq	img, %rcx
	addq	$13112, %rcx            # imm = 0x3338
	movslq	-12(%rbp), %rdx
	shlq	$6, %rdx
	addq	%rdx, %rcx
	movslq	-16(%rbp), %rdx
	movl	%eax, (%rcx,%rdx,4)
	jmp	.LBB28_99
.LBB28_98:                              # %if.else1259
                                        #   in Loop: Header=BB28_84 Depth=2
	movq	img, %rax
	addq	$13112, %rax            # imm = 0x3338
	movslq	-12(%rbp), %rcx
	shlq	$6, %rcx
	addq	%rcx, %rax
	movslq	-16(%rbp), %rcx
	movl	(%rax,%rcx,4), %eax
	addl	$32, %eax
	sarl	$6, %eax
	movq	img, %rcx
	addq	$13112, %rcx            # imm = 0x3338
	movslq	-12(%rbp), %rdx
	shlq	$6, %rdx
	addq	%rdx, %rcx
	movslq	-16(%rbp), %rdx
	movl	%eax, (%rcx,%rdx,4)
.LBB28_99:                              # %if.end1272
                                        #   in Loop: Header=BB28_84 Depth=2
	jmp	.LBB28_100
.LBB28_100:                             # %if.end1273
                                        #   in Loop: Header=BB28_84 Depth=2
	jmp	.LBB28_101
.LBB28_101:                             # %for.inc1274
                                        #   in Loop: Header=BB28_84 Depth=2
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB28_84
.LBB28_102:                             # %for.end1276
                                        #   in Loop: Header=BB28_82 Depth=1
	jmp	.LBB28_103
.LBB28_103:                             # %for.inc1277
                                        #   in Loop: Header=BB28_82 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB28_82
.LBB28_104:                             # %for.end1279
	movq	img, %rax
	cmpl	$0, 72724(%rax)
	jne	.LBB28_114
# %bb.105:                              # %if.then1282
	movl	$0, -16(%rbp)
.LBB28_106:                             # %for.cond1283
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB28_108 Depth 2
	cmpl	$8, -16(%rbp)
	jge	.LBB28_113
# %bb.107:                              # %for.body1286
                                        #   in Loop: Header=BB28_106 Depth=1
	movl	$0, -12(%rbp)
.LBB28_108:                             # %for.cond1287
                                        #   Parent Loop BB28_106 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$8, -12(%rbp)
	jge	.LBB28_111
# %bb.109:                              # %for.body1290
                                        #   in Loop: Header=BB28_108 Depth=2
	movq	img, %rax
	addq	$13112, %rax            # imm = 0x3338
	movslq	-12(%rbp), %rcx
	shlq	$6, %rcx
	addq	%rcx, %rax
	movslq	-16(%rbp), %rcx
	movl	(%rax,%rcx,4), %eax
	movq	enc_picture, %rcx
	movq	6424(%rcx), %rcx
	movq	img, %rdx
	movl	156(%rdx), %edx
	addl	-40(%rbp), %edx
	addl	-16(%rbp), %edx
	movslq	%edx, %rdx
	movq	(%rcx,%rdx,8), %rcx
	movq	img, %rdx
	movl	152(%rdx), %edx
	addl	-44(%rbp), %edx
	addl	-12(%rbp), %edx
	movslq	%edx, %rdx
	movw	%ax, (%rcx,%rdx,2)
# %bb.110:                              # %for.inc1305
                                        #   in Loop: Header=BB28_108 Depth=2
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB28_108
.LBB28_111:                             # %for.end1307
                                        #   in Loop: Header=BB28_106 Depth=1
	jmp	.LBB28_112
.LBB28_112:                             # %for.inc1308
                                        #   in Loop: Header=BB28_106 Depth=1
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB28_106
.LBB28_113:                             # %for.end1310
	jmp	.LBB28_114
.LBB28_114:                             # %if.end1311
	movl	-344(%rbp), %ebx
	cmpl	$2083344307, -396(%rbp) # imm = 0x7C2D4FB3
	jne	.LBB28_116
.LBB28_115:
	movl	%ebx, %eax
	addq	$664, %rsp              # imm = 0x298
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB28_116:                             # %func_exit
	.cfi_def_cfa %rbp, 16
	callq	detect_breach
	jmp	.LBB28_115
.Lfunc_end28:
	.size	dct_luma8x8.23, .Lfunc_end28-dct_luma8x8.23
	.cfi_endproc
                                        # -- End function
	.globl	dct_luma8x8.24          # -- Begin function dct_luma8x8.24
	.p2align	4, 0x90
	.type	dct_luma8x8.24,@function
dct_luma8x8.24:                         # @dct_luma8x8.24
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$664, %rsp              # imm = 0x298
	.cfi_offset %rbx, -24
	xorl	%ecx, %ecx
	movl	$1033866558, -400(%rbp) # imm = 0x3D9F8D3E
	movl	%edi, -36(%rbp)
	movq	%rsi, -352(%rbp)
	movl	%edx, -340(%rbp)
	movl	$0, -140(%rbp)
	movl	$0, -132(%rbp)
	movl	$0, -136(%rbp)
	movl	-36(%rbp), %eax
	cltd
	movl	$2, %esi
	idivl	%esi
	shll	$3, %edx
	movl	%edx, -44(%rbp)
	movl	-36(%rbp), %eax
	cltd
	idivl	%esi
	shll	$3, %eax
	movl	%eax, -40(%rbp)
	movq	img, %rax
	movq	14136(%rax), %rax
	movslq	-36(%rbp), %rdx
	movq	(%rax,%rdx,8), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -408(%rbp)
	movq	img, %rax
	movq	14136(%rax), %rax
	movslq	-36(%rbp), %rdx
	movq	(%rax,%rdx,8), %rax
	movq	(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, -416(%rbp)
	movq	img, %rax
	movq	14168(%rax), %rax
	movq	img, %rdx
	movslq	12(%rdx), %rdx
	imulq	$632, %rdx, %rdx        # imm = 0x278
	addq	%rdx, %rax
	movq	%rax, -392(%rbp)
	movq	img, %rax
	movl	40(%rax), %eax
	movq	img, %rdx
	addl	72668(%rdx), %eax
	cmpl	$0, %eax
	jne	.LBB29_2
# %bb.1:                                # %land.rhs
	movq	img, %rax
	cmpl	$1, 72704(%rax)
	sete	%cl
.LBB29_2:                               # %land.end
	andb	$1, %cl
	movzbl	%cl, %eax
	movl	%eax, -32(%rbp)
	movq	img, %rax
	movl	40(%rax), %eax
	movq	img, %rcx
	addl	72668(%rcx), %eax
	subl	$0, %eax
	cltd
	movl	$6, %ecx
	idivl	%ecx
	movl	%eax, -28(%rbp)
	movq	img, %rax
	movl	40(%rax), %eax
	movq	img, %rdx
	addl	72668(%rdx), %eax
	subl	$0, %eax
	cltd
	idivl	%ecx
	movl	%edx, -52(%rbp)
	movl	-28(%rbp), %eax
	addl	$16, %eax
	movl	%eax, -64(%rbp)
	cmpl	$6, -28(%rbp)
	jge	.LBB29_4
# %bb.3:                                # %if.then
	movl	$6, %eax
	subl	-28(%rbp), %eax
	movl	%eax, -132(%rbp)
	movl	$5, %ecx
	subl	-28(%rbp), %ecx
                                        # kill: def $cl killed $ecx
	movl	$1, %eax
	shll	%cl, %eax
	movl	%eax, -136(%rbp)
	jmp	.LBB29_5
.LBB29_4:                               # %if.else
	movl	-28(%rbp), %eax
	subl	$6, %eax
	movl	%eax, -140(%rbp)
.LBB29_5:                               # %if.end
	movq	img, %rax
	cmpl	$2, 24(%rax)
	jne	.LBB29_7
# %bb.6:                                # %if.then27
	movl	-64(%rbp), %ecx
                                        # kill: def $cl killed $ecx
	movl	$1, %eax
	shll	%cl, %eax
	cltd
	movl	$3, %ecx
	idivl	%ecx
	movl	%eax, -396(%rbp)
	jmp	.LBB29_8
.LBB29_7:                               # %if.else30
	movl	-64(%rbp), %ecx
                                        # kill: def $cl killed $ecx
	movl	$1, %eax
	shll	%cl, %eax
	cltd
	movl	$6, %ecx
	idivl	%ecx
	movl	%eax, -396(%rbp)
.LBB29_8:                               # %if.end33
	movl	$0, -12(%rbp)
.LBB29_9:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	cmpl	$8, -12(%rbp)
	jge	.LBB29_11
# %bb.10:                               # %land.rhs35
                                        #   in Loop: Header=BB29_9 Depth=1
	cmpl	$0, -32(%rbp)
	setne	%al
	xorb	$-1, %al
.LBB29_11:                              # %land.end36
                                        #   in Loop: Header=BB29_9 Depth=1
	testb	$1, %al
	jne	.LBB29_12
	jmp	.LBB29_14
.LBB29_12:                              # %for.body
                                        #   in Loop: Header=BB29_9 Depth=1
	xorl	%eax, %eax
	movq	img, %rcx
	movslq	-12(%rbp), %rdx
	movl	13112(%rcx,%rdx,4), %ecx
	movq	img, %rdx
	movslq	-12(%rbp), %rsi
	addl	13560(%rdx,%rsi,4), %ecx
	movl	%ecx, -128(%rbp)
	movq	img, %rcx
	movslq	-12(%rbp), %rdx
	movl	13176(%rcx,%rdx,4), %ecx
	movq	img, %rdx
	movslq	-12(%rbp), %rsi
	addl	13496(%rdx,%rsi,4), %ecx
	movl	%ecx, -124(%rbp)
	movq	img, %rcx
	movslq	-12(%rbp), %rdx
	movl	13240(%rcx,%rdx,4), %ecx
	movq	img, %rdx
	movslq	-12(%rbp), %rsi
	addl	13432(%rdx,%rsi,4), %ecx
	movl	%ecx, -120(%rbp)
	movq	img, %rcx
	movslq	-12(%rbp), %rdx
	movl	13304(%rcx,%rdx,4), %ecx
	movq	img, %rdx
	movslq	-12(%rbp), %rsi
	addl	13368(%rdx,%rsi,4), %ecx
	movl	%ecx, -116(%rbp)
	movl	-128(%rbp), %ecx
	addl	-116(%rbp), %ecx
	movl	%ecx, -240(%rbp)
	movl	-124(%rbp), %ecx
	addl	-120(%rbp), %ecx
	movl	%ecx, -236(%rbp)
	movl	-128(%rbp), %ecx
	subl	-116(%rbp), %ecx
	movl	%ecx, -232(%rbp)
	movl	-124(%rbp), %ecx
	subl	-120(%rbp), %ecx
	movl	%ecx, -228(%rbp)
	movq	img, %rcx
	movslq	-12(%rbp), %rdx
	movl	13112(%rcx,%rdx,4), %ecx
	movq	img, %rdx
	movslq	-12(%rbp), %rsi
	subl	13560(%rdx,%rsi,4), %ecx
	movl	%ecx, -112(%rbp)
	movq	img, %rcx
	movslq	-12(%rbp), %rdx
	movl	13176(%rcx,%rdx,4), %ecx
	movq	img, %rdx
	movslq	-12(%rbp), %rsi
	subl	13496(%rdx,%rsi,4), %ecx
	movl	%ecx, -108(%rbp)
	movq	img, %rcx
	movslq	-12(%rbp), %rdx
	movl	13240(%rcx,%rdx,4), %ecx
	movq	img, %rdx
	movslq	-12(%rbp), %rsi
	subl	13432(%rdx,%rsi,4), %ecx
	movl	%ecx, -104(%rbp)
	movq	img, %rcx
	movslq	-12(%rbp), %rdx
	movl	13304(%rcx,%rdx,4), %ecx
	movq	img, %rdx
	movslq	-12(%rbp), %rsi
	subl	13368(%rdx,%rsi,4), %ecx
	movl	%ecx, -100(%rbp)
	movl	-108(%rbp), %ecx
	addl	-104(%rbp), %ecx
	movl	-112(%rbp), %edx
	sarl	$1, %edx
	addl	-112(%rbp), %edx
	addl	%edx, %ecx
	movl	%ecx, -224(%rbp)
	movl	-112(%rbp), %ecx
	subl	-100(%rbp), %ecx
	movl	-104(%rbp), %edx
	sarl	$1, %edx
	addl	-104(%rbp), %edx
	subl	%edx, %ecx
	movl	%ecx, -220(%rbp)
	movl	-112(%rbp), %ecx
	addl	-100(%rbp), %ecx
	movl	-108(%rbp), %edx
	sarl	$1, %edx
	addl	-108(%rbp), %edx
	subl	%edx, %ecx
	movl	%ecx, -216(%rbp)
	movl	-108(%rbp), %ecx
	subl	-104(%rbp), %ecx
	movl	-100(%rbp), %edx
	sarl	$1, %edx
	addl	-100(%rbp), %edx
	addl	%edx, %ecx
	movl	%ecx, -212(%rbp)
	movl	-240(%rbp), %ecx
	addl	-236(%rbp), %ecx
	movslq	-12(%rbp), %rdx
	movl	%ecx, -672(%rbp,%rdx,4)
	movl	-232(%rbp), %ecx
	movl	-228(%rbp), %edx
	sarl	$1, %edx
	addl	%edx, %ecx
	movslq	-12(%rbp), %rdx
	movl	%ecx, -608(%rbp,%rdx,4)
	movl	-240(%rbp), %ecx
	subl	-236(%rbp), %ecx
	movslq	-12(%rbp), %rdx
	movl	%ecx, -544(%rbp,%rdx,4)
	movl	-232(%rbp), %ecx
	sarl	$1, %ecx
	subl	-228(%rbp), %ecx
	movslq	-12(%rbp), %rdx
	movl	%ecx, -480(%rbp,%rdx,4)
	movl	-224(%rbp), %ecx
	movl	-212(%rbp), %edx
	sarl	$2, %edx
	addl	%edx, %ecx
	movslq	-12(%rbp), %rdx
	movl	%ecx, -640(%rbp,%rdx,4)
	movl	-220(%rbp), %ecx
	movl	-216(%rbp), %edx
	sarl	$2, %edx
	addl	%edx, %ecx
	movslq	-12(%rbp), %rdx
	movl	%ecx, -576(%rbp,%rdx,4)
	movl	-216(%rbp), %ecx
	movl	-220(%rbp), %edx
	sarl	$2, %edx
	subl	%edx, %ecx
	movslq	-12(%rbp), %rdx
	movl	%ecx, -512(%rbp,%rdx,4)
	subl	-212(%rbp), %eax
	movl	-224(%rbp), %ecx
	sarl	$2, %ecx
	addl	%ecx, %eax
	movslq	-12(%rbp), %rcx
	movl	%eax, -448(%rbp,%rcx,4)
# %bb.13:                               # %for.inc
                                        #   in Loop: Header=BB29_9 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB29_9
.LBB29_14:                              # %for.end
	movl	$0, -12(%rbp)
.LBB29_15:                              # %for.cond223
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	cmpl	$8, -12(%rbp)
	jge	.LBB29_17
# %bb.16:                               # %land.rhs225
                                        #   in Loop: Header=BB29_15 Depth=1
	cmpl	$0, -32(%rbp)
	setne	%al
	xorb	$-1, %al
.LBB29_17:                              # %land.end228
                                        #   in Loop: Header=BB29_15 Depth=1
	testb	$1, %al
	jne	.LBB29_18
	jmp	.LBB29_20
.LBB29_18:                              # %for.body230
                                        #   in Loop: Header=BB29_15 Depth=1
	xorl	%eax, %eax
	movslq	-12(%rbp), %rdx
	shlq	$5, %rdx
	leaq	-672(%rbp), %rcx
	movq	%rcx, %rsi
	addq	%rdx, %rsi
	movl	(%rsi), %edx
	movslq	-12(%rbp), %rsi
	shlq	$5, %rsi
	movq	%rcx, %rdi
	addq	%rsi, %rdi
	addl	28(%rdi), %edx
	movl	%edx, -96(%rbp)
	movslq	-12(%rbp), %rdx
	shlq	$5, %rdx
	movq	%rcx, %rsi
	addq	%rdx, %rsi
	movl	4(%rsi), %edx
	movslq	-12(%rbp), %rsi
	shlq	$5, %rsi
	movq	%rcx, %rdi
	addq	%rsi, %rdi
	addl	24(%rdi), %edx
	movl	%edx, -92(%rbp)
	movslq	-12(%rbp), %rdx
	shlq	$5, %rdx
	movq	%rcx, %rsi
	addq	%rdx, %rsi
	movl	8(%rsi), %edx
	movslq	-12(%rbp), %rsi
	shlq	$5, %rsi
	movq	%rcx, %rdi
	addq	%rsi, %rdi
	addl	20(%rdi), %edx
	movl	%edx, -88(%rbp)
	movslq	-12(%rbp), %rdx
	shlq	$5, %rdx
	movq	%rcx, %rsi
	addq	%rdx, %rsi
	movl	12(%rsi), %edx
	movslq	-12(%rbp), %rsi
	shlq	$5, %rsi
	movq	%rcx, %rdi
	addq	%rsi, %rdi
	addl	16(%rdi), %edx
	movl	%edx, -84(%rbp)
	movl	-96(%rbp), %edx
	addl	-84(%rbp), %edx
	movl	%edx, -208(%rbp)
	movl	-92(%rbp), %edx
	addl	-88(%rbp), %edx
	movl	%edx, -204(%rbp)
	movl	-96(%rbp), %edx
	subl	-84(%rbp), %edx
	movl	%edx, -200(%rbp)
	movl	-92(%rbp), %edx
	subl	-88(%rbp), %edx
	movl	%edx, -196(%rbp)
	movslq	-12(%rbp), %rdx
	shlq	$5, %rdx
	movq	%rcx, %rsi
	addq	%rdx, %rsi
	movl	(%rsi), %edx
	movslq	-12(%rbp), %rsi
	shlq	$5, %rsi
	movq	%rcx, %rdi
	addq	%rsi, %rdi
	subl	28(%rdi), %edx
	movl	%edx, -80(%rbp)
	movslq	-12(%rbp), %rdx
	shlq	$5, %rdx
	movq	%rcx, %rsi
	addq	%rdx, %rsi
	movl	4(%rsi), %edx
	movslq	-12(%rbp), %rsi
	shlq	$5, %rsi
	movq	%rcx, %rdi
	addq	%rsi, %rdi
	subl	24(%rdi), %edx
	movl	%edx, -76(%rbp)
	movslq	-12(%rbp), %rdx
	shlq	$5, %rdx
	movq	%rcx, %rsi
	addq	%rdx, %rsi
	movl	8(%rsi), %edx
	movslq	-12(%rbp), %rsi
	shlq	$5, %rsi
	movq	%rcx, %rdi
	addq	%rsi, %rdi
	subl	20(%rdi), %edx
	movl	%edx, -72(%rbp)
	movslq	-12(%rbp), %rdx
	shlq	$5, %rdx
	movq	%rcx, %rsi
	addq	%rdx, %rsi
	movl	12(%rsi), %edx
	movslq	-12(%rbp), %rsi
	shlq	$5, %rsi
	addq	%rsi, %rcx
	subl	16(%rcx), %edx
	movl	%edx, -68(%rbp)
	movl	-76(%rbp), %ecx
	addl	-72(%rbp), %ecx
	movl	-80(%rbp), %edx
	sarl	$1, %edx
	addl	-80(%rbp), %edx
	addl	%edx, %ecx
	movl	%ecx, -192(%rbp)
	movl	-80(%rbp), %ecx
	subl	-68(%rbp), %ecx
	movl	-72(%rbp), %edx
	sarl	$1, %edx
	addl	-72(%rbp), %edx
	subl	%edx, %ecx
	movl	%ecx, -188(%rbp)
	movl	-80(%rbp), %ecx
	addl	-68(%rbp), %ecx
	movl	-76(%rbp), %edx
	sarl	$1, %edx
	addl	-76(%rbp), %edx
	subl	%edx, %ecx
	movl	%ecx, -184(%rbp)
	movl	-76(%rbp), %ecx
	subl	-72(%rbp), %ecx
	movl	-68(%rbp), %edx
	sarl	$1, %edx
	addl	-68(%rbp), %edx
	addl	%edx, %ecx
	movl	%ecx, -180(%rbp)
	movl	-208(%rbp), %ecx
	addl	-204(%rbp), %ecx
	movq	img, %rdx
	addq	$13112, %rdx            # imm = 0x3338
	movslq	-12(%rbp), %rsi
	shlq	$6, %rsi
	addq	%rsi, %rdx
	movl	%ecx, (%rdx)
	movl	-200(%rbp), %ecx
	movl	-196(%rbp), %edx
	sarl	$1, %edx
	addl	%edx, %ecx
	movq	img, %rdx
	addq	$13112, %rdx            # imm = 0x3338
	movslq	-12(%rbp), %rsi
	shlq	$6, %rsi
	addq	%rsi, %rdx
	movl	%ecx, 8(%rdx)
	movl	-208(%rbp), %ecx
	subl	-204(%rbp), %ecx
	movq	img, %rdx
	addq	$13112, %rdx            # imm = 0x3338
	movslq	-12(%rbp), %rsi
	shlq	$6, %rsi
	addq	%rsi, %rdx
	movl	%ecx, 16(%rdx)
	movl	-200(%rbp), %ecx
	sarl	$1, %ecx
	subl	-196(%rbp), %ecx
	movq	img, %rdx
	addq	$13112, %rdx            # imm = 0x3338
	movslq	-12(%rbp), %rsi
	shlq	$6, %rsi
	addq	%rsi, %rdx
	movl	%ecx, 24(%rdx)
	movl	-192(%rbp), %ecx
	movl	-180(%rbp), %edx
	sarl	$2, %edx
	addl	%edx, %ecx
	movq	img, %rdx
	addq	$13112, %rdx            # imm = 0x3338
	movslq	-12(%rbp), %rsi
	shlq	$6, %rsi
	addq	%rsi, %rdx
	movl	%ecx, 4(%rdx)
	movl	-188(%rbp), %ecx
	movl	-184(%rbp), %edx
	sarl	$2, %edx
	addl	%edx, %ecx
	movq	img, %rdx
	addq	$13112, %rdx            # imm = 0x3338
	movslq	-12(%rbp), %rsi
	shlq	$6, %rsi
	addq	%rsi, %rdx
	movl	%ecx, 12(%rdx)
	movl	-184(%rbp), %ecx
	movl	-188(%rbp), %edx
	sarl	$2, %edx
	subl	%edx, %ecx
	movq	img, %rdx
	addq	$13112, %rdx            # imm = 0x3338
	movslq	-12(%rbp), %rsi
	shlq	$6, %rsi
	addq	%rsi, %rdx
	movl	%ecx, 20(%rdx)
	subl	-180(%rbp), %eax
	movl	-192(%rbp), %ecx
	sarl	$2, %ecx
	addl	%ecx, %eax
	movq	img, %rcx
	addq	$13112, %rcx            # imm = 0x3338
	movslq	-12(%rbp), %rdx
	shlq	$6, %rdx
	addq	%rdx, %rcx
	movl	%eax, 28(%rcx)
# %bb.19:                               # %for.inc412
                                        #   in Loop: Header=BB29_15 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB29_15
.LBB29_20:                              # %for.end414
	movl	$0, -344(%rbp)
	movl	$-1, -56(%rbp)
	movl	$0, -60(%rbp)
	movl	$-1, -356(%rbp)
	movl	$-1, -360(%rbp)
	movl	$-1, -364(%rbp)
	movl	$-1, -368(%rbp)
	movl	$0, -372(%rbp)
	movl	$0, -376(%rbp)
	movl	$0, -380(%rbp)
	movl	$0, -384(%rbp)
	movl	$0, -20(%rbp)
.LBB29_21:                              # %for.cond423
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$64, -20(%rbp)
	jge	.LBB29_61
# %bb.22:                               # %for.body425
                                        #   in Loop: Header=BB29_21 Depth=1
	movq	img, %rax
	cmpl	$0, 72444(%rax)
	jne	.LBB29_25
# %bb.23:                               # %lor.lhs.false
                                        #   in Loop: Header=BB29_21 Depth=1
	movq	img, %rax
	cmpl	$0, 72400(%rax)
	je	.LBB29_26
# %bb.24:                               # %land.lhs.true
                                        #   in Loop: Header=BB29_21 Depth=1
	movq	-392(%rbp), %rax
	cmpl	$0, 532(%rax)
	je	.LBB29_26
.LBB29_25:                              # %if.then429
                                        #   in Loop: Header=BB29_21 Depth=1
	movslq	-20(%rbp), %rax
	movzbl	FIELD_SCAN8x8(,%rax,2), %eax
	movl	%eax, -12(%rbp)
	movslq	-20(%rbp), %rax
	movzbl	FIELD_SCAN8x8+1(,%rax,2), %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB29_27
.LBB29_26:                              # %if.else437
                                        #   in Loop: Header=BB29_21 Depth=1
	movslq	-20(%rbp), %rax
	movzbl	SNGL_SCAN8x8(,%rax,2), %eax
	movl	%eax, -12(%rbp)
	movslq	-20(%rbp), %rax
	movzbl	SNGL_SCAN8x8+1(,%rax,2), %eax
	movl	%eax, -16(%rbp)
.LBB29_27:                              # %if.end446
                                        #   in Loop: Header=BB29_21 Depth=1
	movl	-56(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -56(%rbp)
	movl	$0, -48(%rbp)
	movl	-20(%rbp), %eax
	andl	$3, %eax
	cltq
	movl	-368(%rbp,%rax,4), %ecx
	addl	$1, %ecx
	movl	%ecx, -368(%rbp,%rax,4)
	cmpl	$0, -32(%rbp)
	je	.LBB29_29
# %bb.28:                               # %if.then452
                                        #   in Loop: Header=BB29_21 Depth=1
	movq	img, %rax
	addq	$13112, %rax            # imm = 0x3338
	movslq	-12(%rbp), %rcx
	shlq	$6, %rcx
	addq	%rcx, %rax
	movslq	-16(%rbp), %rcx
	movl	(%rax,%rcx,4), %edi
	callq	abs
	movl	%eax, -24(%rbp)
	jmp	.LBB29_33
.LBB29_29:                              # %if.else458
                                        #   in Loop: Header=BB29_21 Depth=1
	cmpl	$1, -340(%rbp)
	jne	.LBB29_31
# %bb.30:                               # %if.then461
                                        #   in Loop: Header=BB29_21 Depth=1
	movq	img, %rax
	addq	$13112, %rax            # imm = 0x3338
	movslq	-12(%rbp), %rcx
	shlq	$6, %rcx
	addq	%rcx, %rax
	movslq	-16(%rbp), %rcx
	movl	(%rax,%rcx,4), %edi
	callq	abs
	movslq	-52(%rbp), %rcx
	shlq	$8, %rcx
	movabsq	$LevelScale8x8Luma_Intra, %rdx
	addq	%rcx, %rdx
	movslq	-12(%rbp), %rcx
	shlq	$5, %rcx
	addq	%rcx, %rdx
	movslq	-16(%rbp), %rcx
	imull	(%rdx,%rcx,4), %eax
	movslq	-28(%rbp), %rcx
	shlq	$8, %rcx
	movabsq	$LevelOffset8x8Luma_Intra, %rdx
	addq	%rcx, %rdx
	movslq	-12(%rbp), %rcx
	shlq	$5, %rcx
	addq	%rcx, %rdx
	movslq	-16(%rbp), %rcx
	addl	(%rdx,%rcx,4), %eax
	movl	-64(%rbp), %ecx
                                        # kill: def $cl killed $ecx
	sarl	%cl, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB29_32
.LBB29_31:                              # %if.else483
                                        #   in Loop: Header=BB29_21 Depth=1
	movq	img, %rax
	addq	$13112, %rax            # imm = 0x3338
	movslq	-12(%rbp), %rcx
	shlq	$6, %rcx
	addq	%rcx, %rax
	movslq	-16(%rbp), %rcx
	movl	(%rax,%rcx,4), %edi
	callq	abs
	movslq	-52(%rbp), %rcx
	shlq	$8, %rcx
	movabsq	$LevelScale8x8Luma_Inter, %rdx
	addq	%rcx, %rdx
	movslq	-12(%rbp), %rcx
	shlq	$5, %rcx
	addq	%rcx, %rdx
	movslq	-16(%rbp), %rcx
	imull	(%rdx,%rcx,4), %eax
	movslq	-28(%rbp), %rcx
	shlq	$8, %rcx
	movabsq	$LevelOffset8x8Luma_Inter, %rdx
	addq	%rcx, %rdx
	movslq	-12(%rbp), %rcx
	shlq	$5, %rcx
	addq	%rcx, %rdx
	movslq	-16(%rbp), %rcx
	addl	(%rdx,%rcx,4), %eax
	movl	-64(%rbp), %ecx
                                        # kill: def $cl killed $ecx
	sarl	%cl, %eax
	movl	%eax, -24(%rbp)
.LBB29_32:                              # %if.end505
                                        #   in Loop: Header=BB29_21 Depth=1
	jmp	.LBB29_33
.LBB29_33:                              # %if.end506
                                        #   in Loop: Header=BB29_21 Depth=1
	cmpl	$0, -24(%rbp)
	je	.LBB29_57
# %bb.34:                               # %if.then509
                                        #   in Loop: Header=BB29_21 Depth=1
	movl	$1, -344(%rbp)
	movq	-392(%rbp), %rax
	cmpl	$0, 572(%rax)
	je	.LBB29_40
# %bb.35:                               # %land.lhs.true511
                                        #   in Loop: Header=BB29_21 Depth=1
	movq	input, %rax
	cmpl	$0, 2356(%rax)
	jne	.LBB29_40
# %bb.36:                               # %if.then514
                                        #   in Loop: Header=BB29_21 Depth=1
	cmpl	$1, -24(%rbp)
	jle	.LBB29_38
# %bb.37:                               # %if.then517
                                        #   in Loop: Header=BB29_21 Depth=1
	movq	-352(%rbp), %rax
	movl	(%rax), %ecx
	addl	$999999, %ecx           # imm = 0xF423F
	movl	%ecx, (%rax)
	jmp	.LBB29_39
.LBB29_38:                              # %if.else519
                                        #   in Loop: Header=BB29_21 Depth=1
	movabsq	$COEFF_COST8x8, %rax
	movq	input, %rcx
	movslq	2468(%rcx), %rcx
	shlq	$6, %rcx
	addq	%rcx, %rax
	movl	-20(%rbp), %ecx
	andl	$3, %ecx
	movslq	%ecx, %rcx
	movslq	-368(%rbp,%rcx,4), %rcx
	movzbl	(%rax,%rcx), %eax
	movq	-352(%rbp), %rcx
	addl	(%rcx), %eax
	movl	%eax, (%rcx)
.LBB29_39:                              # %if.end529
                                        #   in Loop: Header=BB29_21 Depth=1
	movl	-24(%rbp), %edi
	movq	img, %rax
	addq	$13112, %rax            # imm = 0x3338
	movslq	-12(%rbp), %rcx
	shlq	$6, %rcx
	addq	%rcx, %rax
	movslq	-16(%rbp), %rcx
	movl	(%rax,%rcx,4), %esi
	callq	sign
	movq	img, %rcx
	movq	14136(%rcx), %rcx
	movslq	-36(%rbp), %rdx
	movq	(%rcx,%rdx,8), %rcx
	movl	-20(%rbp), %edx
	andl	$3, %edx
	movslq	%edx, %rdx
	movq	(%rcx,%rdx,8), %rcx
	movq	(%rcx), %rcx
	movl	-20(%rbp), %edx
	andl	$3, %edx
	movslq	%edx, %rdx
	movslq	-384(%rbp,%rdx,4), %rdx
	movl	%eax, (%rcx,%rdx,4)
	movl	-20(%rbp), %eax
	andl	$3, %eax
	cltq
	movl	-368(%rbp,%rax,4), %eax
	movq	img, %rcx
	movq	14136(%rcx), %rcx
	movslq	-36(%rbp), %rdx
	movq	(%rcx,%rdx,8), %rcx
	movl	-20(%rbp), %edx
	andl	$3, %edx
	movslq	%edx, %rdx
	movq	(%rcx,%rdx,8), %rcx
	movq	8(%rcx), %rcx
	movl	-20(%rbp), %edx
	andl	$3, %edx
	movslq	%edx, %rdx
	movslq	-384(%rbp,%rdx,4), %rdx
	movl	%eax, (%rcx,%rdx,4)
	movl	-20(%rbp), %eax
	andl	$3, %eax
	cltq
	movl	-384(%rbp,%rax,4), %ecx
	addl	$1, %ecx
	movl	%ecx, -384(%rbp,%rax,4)
	movl	-20(%rbp), %eax
	andl	$3, %eax
	cltq
	movl	$-1, -368(%rbp,%rax,4)
	jmp	.LBB29_44
.LBB29_40:                              # %if.else570
                                        #   in Loop: Header=BB29_21 Depth=1
	cmpl	$1, -24(%rbp)
	jle	.LBB29_42
# %bb.41:                               # %if.then573
                                        #   in Loop: Header=BB29_21 Depth=1
	movq	-352(%rbp), %rax
	movl	(%rax), %ecx
	addl	$999999, %ecx           # imm = 0xF423F
	movl	%ecx, (%rax)
	jmp	.LBB29_43
.LBB29_42:                              # %if.else575
                                        #   in Loop: Header=BB29_21 Depth=1
	movabsq	$COEFF_COST8x8, %rax
	movq	input, %rcx
	movslq	2468(%rcx), %rcx
	shlq	$6, %rcx
	addq	%rcx, %rax
	movslq	-56(%rbp), %rcx
	movzbl	(%rax,%rcx), %eax
	movq	-352(%rbp), %rcx
	addl	(%rcx), %eax
	movl	%eax, (%rcx)
.LBB29_43:                              # %if.end583
                                        #   in Loop: Header=BB29_21 Depth=1
	movl	-24(%rbp), %edi
	movq	img, %rax
	addq	$13112, %rax            # imm = 0x3338
	movslq	-12(%rbp), %rcx
	shlq	$6, %rcx
	addq	%rcx, %rax
	movslq	-16(%rbp), %rcx
	movl	(%rax,%rcx,4), %esi
	callq	sign
	movq	-408(%rbp), %rcx
	movslq	-60(%rbp), %rdx
	movl	%eax, (%rcx,%rdx,4)
	movl	-56(%rbp), %eax
	movq	-416(%rbp), %rcx
	movslq	-60(%rbp), %rdx
	movl	%eax, (%rcx,%rdx,4)
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -60(%rbp)
	movl	$-1, -56(%rbp)
.LBB29_44:                              # %if.end595
                                        #   in Loop: Header=BB29_21 Depth=1
	movl	-24(%rbp), %edi
	movq	img, %rax
	addq	$13112, %rax            # imm = 0x3338
	movslq	-12(%rbp), %rcx
	shlq	$6, %rcx
	addq	%rcx, %rax
	movslq	-16(%rbp), %rcx
	movl	(%rax,%rcx,4), %esi
	callq	sign
	movl	%eax, -24(%rbp)
	cmpl	$0, -32(%rbp)
	je	.LBB29_46
# %bb.45:                               # %if.then603
                                        #   in Loop: Header=BB29_21 Depth=1
	movl	-24(%rbp), %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB29_56
.LBB29_46:                              # %if.else604
                                        #   in Loop: Header=BB29_21 Depth=1
	cmpl	$1, -340(%rbp)
	jne	.LBB29_51
# %bb.47:                               # %if.then607
                                        #   in Loop: Header=BB29_21 Depth=1
	cmpl	$6, -28(%rbp)
	jl	.LBB29_49
# %bb.48:                               # %if.then610
                                        #   in Loop: Header=BB29_21 Depth=1
	movl	-24(%rbp), %eax
	movslq	-52(%rbp), %rcx
	shlq	$8, %rcx
	movabsq	$InvLevelScale8x8Luma_Intra, %rdx
	addq	%rcx, %rdx
	movslq	-12(%rbp), %rcx
	shlq	$5, %rcx
	addq	%rcx, %rdx
	movslq	-16(%rbp), %rcx
	imull	(%rdx,%rcx,4), %eax
	movl	-140(%rbp), %ecx
                                        # kill: def $cl killed $ecx
	shll	%cl, %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB29_50
.LBB29_49:                              # %if.else619
                                        #   in Loop: Header=BB29_21 Depth=1
	movl	-24(%rbp), %eax
	movslq	-52(%rbp), %rcx
	shlq	$8, %rcx
	movabsq	$InvLevelScale8x8Luma_Intra, %rdx
	addq	%rcx, %rdx
	movslq	-12(%rbp), %rcx
	shlq	$5, %rcx
	addq	%rcx, %rdx
	movslq	-16(%rbp), %rcx
	imull	(%rdx,%rcx,4), %eax
	addl	-136(%rbp), %eax
	movl	-132(%rbp), %ecx
                                        # kill: def $cl killed $ecx
	sarl	%cl, %eax
	movl	%eax, -48(%rbp)
.LBB29_50:                              # %if.end629
                                        #   in Loop: Header=BB29_21 Depth=1
	jmp	.LBB29_55
.LBB29_51:                              # %if.else630
                                        #   in Loop: Header=BB29_21 Depth=1
	cmpl	$6, -28(%rbp)
	jl	.LBB29_53
# %bb.52:                               # %if.then633
                                        #   in Loop: Header=BB29_21 Depth=1
	movl	-24(%rbp), %eax
	movslq	-52(%rbp), %rcx
	shlq	$8, %rcx
	movabsq	$InvLevelScale8x8Luma_Inter, %rdx
	addq	%rcx, %rdx
	movslq	-12(%rbp), %rcx
	shlq	$5, %rcx
	addq	%rcx, %rdx
	movslq	-16(%rbp), %rcx
	imull	(%rdx,%rcx,4), %eax
	movl	-140(%rbp), %ecx
                                        # kill: def $cl killed $ecx
	shll	%cl, %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB29_54
.LBB29_53:                              # %if.else642
                                        #   in Loop: Header=BB29_21 Depth=1
	movl	-24(%rbp), %eax
	movslq	-52(%rbp), %rcx
	shlq	$8, %rcx
	movabsq	$InvLevelScale8x8Luma_Inter, %rdx
	addq	%rcx, %rdx
	movslq	-12(%rbp), %rcx
	shlq	$5, %rcx
	addq	%rcx, %rdx
	movslq	-16(%rbp), %rcx
	imull	(%rdx,%rcx,4), %eax
	addl	-136(%rbp), %eax
	movl	-132(%rbp), %ecx
                                        # kill: def $cl killed $ecx
	sarl	%cl, %eax
	movl	%eax, -48(%rbp)
.LBB29_54:                              # %if.end652
                                        #   in Loop: Header=BB29_21 Depth=1
	jmp	.LBB29_55
.LBB29_55:                              # %if.end653
                                        #   in Loop: Header=BB29_21 Depth=1
	jmp	.LBB29_56
.LBB29_56:                              # %if.end654
                                        #   in Loop: Header=BB29_21 Depth=1
	jmp	.LBB29_57
.LBB29_57:                              # %if.end655
                                        #   in Loop: Header=BB29_21 Depth=1
	cmpl	$0, -32(%rbp)
	jne	.LBB29_59
# %bb.58:                               # %if.then657
                                        #   in Loop: Header=BB29_21 Depth=1
	movl	-48(%rbp), %eax
	movq	img, %rcx
	addq	$13112, %rcx            # imm = 0x3338
	movslq	-12(%rbp), %rdx
	shlq	$6, %rdx
	addq	%rdx, %rcx
	movslq	-16(%rbp), %rdx
	movl	%eax, (%rcx,%rdx,4)
.LBB29_59:                              # %if.end663
                                        #   in Loop: Header=BB29_21 Depth=1
	jmp	.LBB29_60
.LBB29_60:                              # %for.inc664
                                        #   in Loop: Header=BB29_21 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB29_21
.LBB29_61:                              # %for.end666
	movq	-392(%rbp), %rax
	cmpl	$0, 572(%rax)
	je	.LBB29_63
# %bb.62:                               # %lor.lhs.false669
	movq	input, %rax
	cmpl	$0, 2356(%rax)
	je	.LBB29_64
.LBB29_63:                              # %if.then673
	movq	-408(%rbp), %rax
	movslq	-60(%rbp), %rcx
	movl	$0, (%rax,%rcx,4)
	jmp	.LBB29_69
.LBB29_64:                              # %if.else676
	movl	$0, -12(%rbp)
.LBB29_65:                              # %for.cond677
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$4, -12(%rbp)
	jge	.LBB29_68
# %bb.66:                               # %for.body680
                                        #   in Loop: Header=BB29_65 Depth=1
	movq	img, %rax
	movq	14136(%rax), %rax
	movslq	-36(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movslq	-12(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movq	(%rax), %rax
	movslq	-12(%rbp), %rcx
	movslq	-384(%rbp,%rcx,4), %rcx
	movl	$0, (%rax,%rcx,4)
# %bb.67:                               # %for.inc691
                                        #   in Loop: Header=BB29_65 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB29_65
.LBB29_68:                              # %for.end693
	jmp	.LBB29_69
.LBB29_69:                              # %if.end694
	movl	$0, -12(%rbp)
.LBB29_70:                              # %for.cond695
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	cmpl	$8, -12(%rbp)
	jge	.LBB29_72
# %bb.71:                               # %land.rhs698
                                        #   in Loop: Header=BB29_70 Depth=1
	cmpl	$0, -32(%rbp)
	setne	%al
	xorb	$-1, %al
.LBB29_72:                              # %land.end701
                                        #   in Loop: Header=BB29_70 Depth=1
	testb	$1, %al
	jne	.LBB29_73
	jmp	.LBB29_75
.LBB29_73:                              # %for.body703
                                        #   in Loop: Header=BB29_70 Depth=1
	xorl	%eax, %eax
	movq	img, %rcx
	movslq	-12(%rbp), %rdx
	movl	13112(%rcx,%rdx,4), %ecx
	movq	img, %rdx
	movslq	-12(%rbp), %rsi
	addl	13368(%rdx,%rsi,4), %ecx
	movl	%ecx, -336(%rbp)
	movq	img, %rcx
	movslq	-12(%rbp), %rdx
	movl	13112(%rcx,%rdx,4), %ecx
	movq	img, %rdx
	movslq	-12(%rbp), %rsi
	subl	13368(%rdx,%rsi,4), %ecx
	movl	%ecx, -320(%rbp)
	movq	img, %rcx
	movslq	-12(%rbp), %rdx
	movl	13240(%rcx,%rdx,4), %ecx
	sarl	$1, %ecx
	movq	img, %rdx
	movslq	-12(%rbp), %rsi
	subl	13496(%rdx,%rsi,4), %ecx
	movl	%ecx, -328(%rbp)
	movq	img, %rcx
	movslq	-12(%rbp), %rdx
	movl	13240(%rcx,%rdx,4), %ecx
	movq	img, %rdx
	movslq	-12(%rbp), %rsi
	movl	13496(%rdx,%rsi,4), %edx
	sarl	$1, %edx
	addl	%edx, %ecx
	movl	%ecx, -312(%rbp)
	movl	-336(%rbp), %ecx
	addl	-312(%rbp), %ecx
	movl	%ecx, -176(%rbp)
	movl	-320(%rbp), %ecx
	addl	-328(%rbp), %ecx
	movl	%ecx, -168(%rbp)
	movl	-320(%rbp), %ecx
	subl	-328(%rbp), %ecx
	movl	%ecx, -160(%rbp)
	movl	-336(%rbp), %ecx
	subl	-312(%rbp), %ecx
	movl	%ecx, -152(%rbp)
	movq	img, %rcx
	movslq	-12(%rbp), %rdx
	xorl	%esi, %esi
	subl	13304(%rcx,%rdx,4), %esi
	movq	img, %rcx
	movslq	-12(%rbp), %rdx
	addl	13432(%rcx,%rdx,4), %esi
	movq	img, %rcx
	movslq	-12(%rbp), %rdx
	subl	13560(%rcx,%rdx,4), %esi
	movq	img, %rcx
	movslq	-12(%rbp), %rdx
	movl	13560(%rcx,%rdx,4), %ecx
	sarl	$1, %ecx
	subl	%ecx, %esi
	movl	%esi, -332(%rbp)
	movq	img, %rcx
	movslq	-12(%rbp), %rdx
	movl	13176(%rcx,%rdx,4), %ecx
	movq	img, %rdx
	movslq	-12(%rbp), %rsi
	addl	13560(%rdx,%rsi,4), %ecx
	movq	img, %rdx
	movslq	-12(%rbp), %rsi
	subl	13304(%rdx,%rsi,4), %ecx
	movq	img, %rdx
	movslq	-12(%rbp), %rsi
	movl	13304(%rdx,%rsi,4), %edx
	sarl	$1, %edx
	subl	%edx, %ecx
	movl	%ecx, -324(%rbp)
	movq	img, %rcx
	movslq	-12(%rbp), %rdx
	xorl	%esi, %esi
	subl	13176(%rcx,%rdx,4), %esi
	movq	img, %rcx
	movslq	-12(%rbp), %rdx
	addl	13560(%rcx,%rdx,4), %esi
	movq	img, %rcx
	movslq	-12(%rbp), %rdx
	addl	13432(%rcx,%rdx,4), %esi
	movq	img, %rcx
	movslq	-12(%rbp), %rdx
	movl	13432(%rcx,%rdx,4), %ecx
	sarl	$1, %ecx
	addl	%ecx, %esi
	movl	%esi, -316(%rbp)
	movq	img, %rcx
	movslq	-12(%rbp), %rdx
	movl	13304(%rcx,%rdx,4), %ecx
	movq	img, %rdx
	movslq	-12(%rbp), %rsi
	addl	13432(%rdx,%rsi,4), %ecx
	movq	img, %rdx
	movslq	-12(%rbp), %rsi
	addl	13176(%rdx,%rsi,4), %ecx
	movq	img, %rdx
	movslq	-12(%rbp), %rsi
	movl	13176(%rdx,%rsi,4), %edx
	sarl	$1, %edx
	addl	%edx, %ecx
	movl	%ecx, -308(%rbp)
	movl	-332(%rbp), %ecx
	movl	-308(%rbp), %edx
	sarl	$2, %edx
	addl	%edx, %ecx
	movl	%ecx, -172(%rbp)
	movl	-332(%rbp), %ecx
	sarl	$2, %ecx
	subl	%ecx, %eax
	addl	-308(%rbp), %eax
	movl	%eax, -148(%rbp)
	movl	-324(%rbp), %eax
	movl	-316(%rbp), %ecx
	sarl	$2, %ecx
	addl	%ecx, %eax
	movl	%eax, -164(%rbp)
	movl	-324(%rbp), %eax
	sarl	$2, %eax
	subl	-316(%rbp), %eax
	movl	%eax, -156(%rbp)
	movl	-176(%rbp), %eax
	addl	-148(%rbp), %eax
	movslq	-12(%rbp), %rcx
	movl	%eax, -672(%rbp,%rcx,4)
	movl	-168(%rbp), %eax
	addl	-156(%rbp), %eax
	movslq	-12(%rbp), %rcx
	movl	%eax, -640(%rbp,%rcx,4)
	movl	-160(%rbp), %eax
	addl	-164(%rbp), %eax
	movslq	-12(%rbp), %rcx
	movl	%eax, -608(%rbp,%rcx,4)
	movl	-152(%rbp), %eax
	addl	-172(%rbp), %eax
	movslq	-12(%rbp), %rcx
	movl	%eax, -576(%rbp,%rcx,4)
	movl	-152(%rbp), %eax
	subl	-172(%rbp), %eax
	movslq	-12(%rbp), %rcx
	movl	%eax, -544(%rbp,%rcx,4)
	movl	-160(%rbp), %eax
	subl	-164(%rbp), %eax
	movslq	-12(%rbp), %rcx
	movl	%eax, -512(%rbp,%rcx,4)
	movl	-168(%rbp), %eax
	subl	-156(%rbp), %eax
	movslq	-12(%rbp), %rcx
	movl	%eax, -480(%rbp,%rcx,4)
	movl	-176(%rbp), %eax
	subl	-148(%rbp), %eax
	movslq	-12(%rbp), %rcx
	movl	%eax, -448(%rbp,%rcx,4)
# %bb.74:                               # %for.inc919
                                        #   in Loop: Header=BB29_70 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB29_70
.LBB29_75:                              # %for.end921
	movl	$0, -12(%rbp)
.LBB29_76:                              # %for.cond922
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	cmpl	$8, -12(%rbp)
	jge	.LBB29_78
# %bb.77:                               # %land.rhs925
                                        #   in Loop: Header=BB29_76 Depth=1
	cmpl	$0, -32(%rbp)
	setne	%al
	xorb	$-1, %al
.LBB29_78:                              # %land.end928
                                        #   in Loop: Header=BB29_76 Depth=1
	testb	$1, %al
	jne	.LBB29_79
	jmp	.LBB29_81
.LBB29_79:                              # %for.body930
                                        #   in Loop: Header=BB29_76 Depth=1
	xorl	%eax, %eax
	movslq	-12(%rbp), %rdx
	shlq	$5, %rdx
	leaq	-672(%rbp), %rcx
	movq	%rcx, %rsi
	addq	%rdx, %rsi
	movl	(%rsi), %edx
	movslq	-12(%rbp), %rsi
	shlq	$5, %rsi
	movq	%rcx, %rdi
	addq	%rsi, %rdi
	addl	16(%rdi), %edx
	movl	%edx, -304(%rbp)
	movslq	-12(%rbp), %rdx
	shlq	$5, %rdx
	movq	%rcx, %rsi
	addq	%rdx, %rsi
	movl	(%rsi), %edx
	movslq	-12(%rbp), %rsi
	shlq	$5, %rsi
	movq	%rcx, %rdi
	addq	%rsi, %rdi
	subl	16(%rdi), %edx
	movl	%edx, -288(%rbp)
	movslq	-12(%rbp), %rdx
	shlq	$5, %rdx
	movq	%rcx, %rsi
	addq	%rdx, %rsi
	movl	8(%rsi), %edx
	sarl	$1, %edx
	movslq	-12(%rbp), %rsi
	shlq	$5, %rsi
	movq	%rcx, %rdi
	addq	%rsi, %rdi
	subl	24(%rdi), %edx
	movl	%edx, -296(%rbp)
	movslq	-12(%rbp), %rdx
	shlq	$5, %rdx
	movq	%rcx, %rsi
	addq	%rdx, %rsi
	movl	8(%rsi), %edx
	movslq	-12(%rbp), %rsi
	shlq	$5, %rsi
	movq	%rcx, %rdi
	addq	%rsi, %rdi
	movl	24(%rdi), %esi
	sarl	$1, %esi
	addl	%esi, %edx
	movl	%edx, -280(%rbp)
	movl	-304(%rbp), %edx
	addl	-280(%rbp), %edx
	movl	%edx, -272(%rbp)
	movl	-288(%rbp), %edx
	addl	-296(%rbp), %edx
	movl	%edx, -264(%rbp)
	movl	-288(%rbp), %edx
	subl	-296(%rbp), %edx
	movl	%edx, -256(%rbp)
	movl	-304(%rbp), %edx
	subl	-280(%rbp), %edx
	movl	%edx, -248(%rbp)
	movslq	-12(%rbp), %rdx
	shlq	$5, %rdx
	movq	%rcx, %rsi
	addq	%rdx, %rsi
	xorl	%edx, %edx
	subl	12(%rsi), %edx
	movslq	-12(%rbp), %rsi
	shlq	$5, %rsi
	movq	%rcx, %rdi
	addq	%rsi, %rdi
	addl	20(%rdi), %edx
	movslq	-12(%rbp), %rsi
	shlq	$5, %rsi
	movq	%rcx, %rdi
	addq	%rsi, %rdi
	subl	28(%rdi), %edx
	movslq	-12(%rbp), %rsi
	shlq	$5, %rsi
	movq	%rcx, %rdi
	addq	%rsi, %rdi
	movl	28(%rdi), %esi
	sarl	$1, %esi
	subl	%esi, %edx
	movl	%edx, -300(%rbp)
	movslq	-12(%rbp), %rdx
	shlq	$5, %rdx
	movq	%rcx, %rsi
	addq	%rdx, %rsi
	movl	4(%rsi), %edx
	movslq	-12(%rbp), %rsi
	shlq	$5, %rsi
	movq	%rcx, %rdi
	addq	%rsi, %rdi
	addl	28(%rdi), %edx
	movslq	-12(%rbp), %rsi
	shlq	$5, %rsi
	movq	%rcx, %rdi
	addq	%rsi, %rdi
	subl	12(%rdi), %edx
	movslq	-12(%rbp), %rsi
	shlq	$5, %rsi
	movq	%rcx, %rdi
	addq	%rsi, %rdi
	movl	12(%rdi), %esi
	sarl	$1, %esi
	subl	%esi, %edx
	movl	%edx, -292(%rbp)
	movslq	-12(%rbp), %rdx
	shlq	$5, %rdx
	movq	%rcx, %rsi
	addq	%rdx, %rsi
	xorl	%edx, %edx
	subl	4(%rsi), %edx
	movslq	-12(%rbp), %rsi
	shlq	$5, %rsi
	movq	%rcx, %rdi
	addq	%rsi, %rdi
	addl	28(%rdi), %edx
	movslq	-12(%rbp), %rsi
	shlq	$5, %rsi
	movq	%rcx, %rdi
	addq	%rsi, %rdi
	addl	20(%rdi), %edx
	movslq	-12(%rbp), %rsi
	shlq	$5, %rsi
	movq	%rcx, %rdi
	addq	%rsi, %rdi
	movl	20(%rdi), %esi
	sarl	$1, %esi
	addl	%esi, %edx
	movl	%edx, -284(%rbp)
	movslq	-12(%rbp), %rdx
	shlq	$5, %rdx
	movq	%rcx, %rsi
	addq	%rdx, %rsi
	movl	12(%rsi), %edx
	movslq	-12(%rbp), %rsi
	shlq	$5, %rsi
	movq	%rcx, %rdi
	addq	%rsi, %rdi
	addl	20(%rdi), %edx
	movslq	-12(%rbp), %rsi
	shlq	$5, %rsi
	movq	%rcx, %rdi
	addq	%rsi, %rdi
	addl	4(%rdi), %edx
	movslq	-12(%rbp), %rsi
	shlq	$5, %rsi
	addq	%rsi, %rcx
	movl	4(%rcx), %ecx
	sarl	$1, %ecx
	addl	%ecx, %edx
	movl	%edx, -276(%rbp)
	movl	-300(%rbp), %ecx
	movl	-276(%rbp), %edx
	sarl	$2, %edx
	addl	%edx, %ecx
	movl	%ecx, -268(%rbp)
	movl	-300(%rbp), %ecx
	sarl	$2, %ecx
	subl	%ecx, %eax
	addl	-276(%rbp), %eax
	movl	%eax, -244(%rbp)
	movl	-292(%rbp), %eax
	movl	-284(%rbp), %ecx
	sarl	$2, %ecx
	addl	%ecx, %eax
	movl	%eax, -260(%rbp)
	movl	-292(%rbp), %eax
	sarl	$2, %eax
	subl	-284(%rbp), %eax
	movl	%eax, -252(%rbp)
	movl	-272(%rbp), %eax
	addl	-244(%rbp), %eax
	movq	img, %rcx
	addq	$13112, %rcx            # imm = 0x3338
	movslq	-12(%rbp), %rdx
	shlq	$6, %rdx
	addq	%rdx, %rcx
	movl	%eax, (%rcx)
	movl	-264(%rbp), %eax
	addl	-252(%rbp), %eax
	movq	img, %rcx
	addq	$13112, %rcx            # imm = 0x3338
	movslq	-12(%rbp), %rdx
	shlq	$6, %rdx
	addq	%rdx, %rcx
	movl	%eax, 4(%rcx)
	movl	-256(%rbp), %eax
	addl	-260(%rbp), %eax
	movq	img, %rcx
	addq	$13112, %rcx            # imm = 0x3338
	movslq	-12(%rbp), %rdx
	shlq	$6, %rdx
	addq	%rdx, %rcx
	movl	%eax, 8(%rcx)
	movl	-248(%rbp), %eax
	addl	-268(%rbp), %eax
	movq	img, %rcx
	addq	$13112, %rcx            # imm = 0x3338
	movslq	-12(%rbp), %rdx
	shlq	$6, %rdx
	addq	%rdx, %rcx
	movl	%eax, 12(%rcx)
	movl	-248(%rbp), %eax
	subl	-268(%rbp), %eax
	movq	img, %rcx
	addq	$13112, %rcx            # imm = 0x3338
	movslq	-12(%rbp), %rdx
	shlq	$6, %rdx
	addq	%rdx, %rcx
	movl	%eax, 16(%rcx)
	movl	-256(%rbp), %eax
	subl	-260(%rbp), %eax
	movq	img, %rcx
	addq	$13112, %rcx            # imm = 0x3338
	movslq	-12(%rbp), %rdx
	shlq	$6, %rdx
	addq	%rdx, %rcx
	movl	%eax, 20(%rcx)
	movl	-264(%rbp), %eax
	subl	-252(%rbp), %eax
	movq	img, %rcx
	addq	$13112, %rcx            # imm = 0x3338
	movslq	-12(%rbp), %rdx
	shlq	$6, %rdx
	addq	%rdx, %rcx
	movl	%eax, 24(%rcx)
	movl	-272(%rbp), %eax
	subl	-244(%rbp), %eax
	movq	img, %rcx
	addq	$13112, %rcx            # imm = 0x3338
	movslq	-12(%rbp), %rdx
	shlq	$6, %rdx
	addq	%rdx, %rcx
	movl	%eax, 28(%rcx)
# %bb.80:                               # %for.inc1130
                                        #   in Loop: Header=BB29_76 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB29_76
.LBB29_81:                              # %for.end1132
	movl	$0, -12(%rbp)
.LBB29_82:                              # %for.cond1133
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB29_84 Depth 2
	cmpl	$8, -12(%rbp)
	jge	.LBB29_104
# %bb.83:                               # %for.body1136
                                        #   in Loop: Header=BB29_82 Depth=1
	movl	$0, -16(%rbp)
.LBB29_84:                              # %for.cond1137
                                        #   Parent Loop BB29_82 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$8, -16(%rbp)
	jge	.LBB29_102
# %bb.85:                               # %for.body1140
                                        #   in Loop: Header=BB29_84 Depth=2
	cmpl	$0, -32(%rbp)
	je	.LBB29_87
# %bb.86:                               # %if.then1142
                                        #   in Loop: Header=BB29_84 Depth=2
	movq	img, %rax
	addq	$13112, %rax            # imm = 0x3338
	movslq	-12(%rbp), %rcx
	shlq	$6, %rcx
	addq	%rcx, %rax
	movslq	-16(%rbp), %rcx
	movl	(%rax,%rcx,4), %eax
	movq	img, %rcx
	addq	$12600, %rcx            # imm = 0x3138
	movl	-12(%rbp), %edx
	addl	-44(%rbp), %edx
	movslq	%edx, %rdx
	shlq	$5, %rdx
	addq	%rdx, %rcx
	movl	-16(%rbp), %edx
	addl	-40(%rbp), %edx
	movslq	%edx, %rdx
	movzwl	(%rcx,%rdx,2), %ecx
	addl	%ecx, %eax
	movq	img, %rcx
	addq	$13112, %rcx            # imm = 0x3338
	movslq	-12(%rbp), %rdx
	shlq	$6, %rdx
	addq	%rdx, %rcx
	movslq	-16(%rbp), %rdx
	movl	%eax, (%rcx,%rdx,4)
	jmp	.LBB29_100
.LBB29_87:                              # %if.else1161
                                        #   in Loop: Header=BB29_84 Depth=2
	movq	img, %rax
	cmpl	$0, 72724(%rax)
	jne	.LBB29_98
# %bb.88:                               # %if.then1163
                                        #   in Loop: Header=BB29_84 Depth=2
	xorl	%ecx, %ecx
	movq	img, %rax
	movslq	72684(%rax), %rax
	movq	img, %rdx
	addq	$13112, %rdx            # imm = 0x3338
	movslq	-12(%rbp), %rsi
	shlq	$6, %rsi
	addq	%rsi, %rdx
	movslq	-16(%rbp), %rsi
	movslq	(%rdx,%rsi,4), %rdx
	movq	img, %rsi
	addq	$12600, %rsi            # imm = 0x3138
	movl	-12(%rbp), %edi
	addl	-44(%rbp), %edi
	movslq	%edi, %rdi
	shlq	$5, %rdi
	addq	%rdi, %rsi
	movl	-16(%rbp), %edi
	addl	-40(%rbp), %edi
	movslq	%edi, %rdi
	movzwl	(%rsi,%rdi,2), %esi
	shlq	$6, %rsi
	addq	%rsi, %rdx
	addq	$32, %rdx
	sarq	$6, %rdx
	cmpq	%rdx, %rcx
	jle	.LBB29_90
# %bb.89:                               # %cond.true
                                        #   in Loop: Header=BB29_84 Depth=2
	xorl	%ecx, %ecx
	jmp	.LBB29_91
.LBB29_90:                              # %cond.false
                                        #   in Loop: Header=BB29_84 Depth=2
	movq	img, %rcx
	addq	$13112, %rcx            # imm = 0x3338
	movslq	-12(%rbp), %rdx
	shlq	$6, %rdx
	addq	%rdx, %rcx
	movslq	-16(%rbp), %rdx
	movslq	(%rcx,%rdx,4), %rcx
	movq	img, %rdx
	addq	$12600, %rdx            # imm = 0x3138
	movl	-12(%rbp), %esi
	addl	-44(%rbp), %esi
	movslq	%esi, %rsi
	shlq	$5, %rsi
	addq	%rsi, %rdx
	movl	-16(%rbp), %esi
	addl	-40(%rbp), %esi
	movslq	%esi, %rsi
	movzwl	(%rdx,%rsi,2), %edx
	shlq	$6, %rdx
	addq	%rdx, %rcx
	addq	$32, %rcx
	sarq	$6, %rcx
.LBB29_91:                              # %cond.end
                                        #   in Loop: Header=BB29_84 Depth=2
	cmpq	%rcx, %rax
	jge	.LBB29_93
# %bb.92:                               # %cond.true1205
                                        #   in Loop: Header=BB29_84 Depth=2
	movq	img, %rax
	movslq	72684(%rax), %rax
	jmp	.LBB29_97
.LBB29_93:                              # %cond.false1208
                                        #   in Loop: Header=BB29_84 Depth=2
	xorl	%eax, %eax
	movq	img, %rcx
	addq	$13112, %rcx            # imm = 0x3338
	movslq	-12(%rbp), %rdx
	shlq	$6, %rdx
	addq	%rdx, %rcx
	movslq	-16(%rbp), %rdx
	movslq	(%rcx,%rdx,4), %rcx
	movq	img, %rdx
	addq	$12600, %rdx            # imm = 0x3138
	movl	-12(%rbp), %esi
	addl	-44(%rbp), %esi
	movslq	%esi, %rsi
	shlq	$5, %rsi
	addq	%rsi, %rdx
	movl	-16(%rbp), %esi
	addl	-40(%rbp), %esi
	movslq	%esi, %rsi
	movzwl	(%rdx,%rsi,2), %edx
	shlq	$6, %rdx
	addq	%rdx, %rcx
	addq	$32, %rcx
	sarq	$6, %rcx
	cmpq	%rcx, %rax
	jle	.LBB29_95
# %bb.94:                               # %cond.true1229
                                        #   in Loop: Header=BB29_84 Depth=2
	xorl	%eax, %eax
	jmp	.LBB29_96
.LBB29_95:                              # %cond.false1230
                                        #   in Loop: Header=BB29_84 Depth=2
	movq	img, %rax
	addq	$13112, %rax            # imm = 0x3338
	movslq	-12(%rbp), %rcx
	shlq	$6, %rcx
	addq	%rcx, %rax
	movslq	-16(%rbp), %rcx
	movslq	(%rax,%rcx,4), %rax
	movq	img, %rcx
	addq	$12600, %rcx            # imm = 0x3138
	movl	-12(%rbp), %edx
	addl	-44(%rbp), %edx
	movslq	%edx, %rdx
	shlq	$5, %rdx
	addq	%rdx, %rcx
	movl	-16(%rbp), %edx
	addl	-40(%rbp), %edx
	movslq	%edx, %rdx
	movzwl	(%rcx,%rdx,2), %ecx
	shlq	$6, %rcx
	addq	%rcx, %rax
	addq	$32, %rax
	sarq	$6, %rax
.LBB29_96:                              # %cond.end1249
                                        #   in Loop: Header=BB29_84 Depth=2
.LBB29_97:                              # %cond.end1251
                                        #   in Loop: Header=BB29_84 Depth=2
	movq	img, %rcx
	addq	$13112, %rcx            # imm = 0x3338
	movslq	-12(%rbp), %rdx
	shlq	$6, %rdx
	addq	%rdx, %rcx
	movslq	-16(%rbp), %rdx
	movl	%eax, (%rcx,%rdx,4)
	jmp	.LBB29_99
.LBB29_98:                              # %if.else1259
                                        #   in Loop: Header=BB29_84 Depth=2
	movq	img, %rax
	addq	$13112, %rax            # imm = 0x3338
	movslq	-12(%rbp), %rcx
	shlq	$6, %rcx
	addq	%rcx, %rax
	movslq	-16(%rbp), %rcx
	movl	(%rax,%rcx,4), %eax
	addl	$32, %eax
	sarl	$6, %eax
	movq	img, %rcx
	addq	$13112, %rcx            # imm = 0x3338
	movslq	-12(%rbp), %rdx
	shlq	$6, %rdx
	addq	%rdx, %rcx
	movslq	-16(%rbp), %rdx
	movl	%eax, (%rcx,%rdx,4)
.LBB29_99:                              # %if.end1272
                                        #   in Loop: Header=BB29_84 Depth=2
	jmp	.LBB29_100
.LBB29_100:                             # %if.end1273
                                        #   in Loop: Header=BB29_84 Depth=2
	jmp	.LBB29_101
.LBB29_101:                             # %for.inc1274
                                        #   in Loop: Header=BB29_84 Depth=2
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB29_84
.LBB29_102:                             # %for.end1276
                                        #   in Loop: Header=BB29_82 Depth=1
	jmp	.LBB29_103
.LBB29_103:                             # %for.inc1277
                                        #   in Loop: Header=BB29_82 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB29_82
.LBB29_104:                             # %for.end1279
	movq	img, %rax
	cmpl	$0, 72724(%rax)
	jne	.LBB29_114
# %bb.105:                              # %if.then1282
	movl	$0, -16(%rbp)
.LBB29_106:                             # %for.cond1283
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB29_108 Depth 2
	cmpl	$8, -16(%rbp)
	jge	.LBB29_113
# %bb.107:                              # %for.body1286
                                        #   in Loop: Header=BB29_106 Depth=1
	movl	$0, -12(%rbp)
.LBB29_108:                             # %for.cond1287
                                        #   Parent Loop BB29_106 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$8, -12(%rbp)
	jge	.LBB29_111
# %bb.109:                              # %for.body1290
                                        #   in Loop: Header=BB29_108 Depth=2
	movq	img, %rax
	addq	$13112, %rax            # imm = 0x3338
	movslq	-12(%rbp), %rcx
	shlq	$6, %rcx
	addq	%rcx, %rax
	movslq	-16(%rbp), %rcx
	movl	(%rax,%rcx,4), %eax
	movq	enc_picture, %rcx
	movq	6424(%rcx), %rcx
	movq	img, %rdx
	movl	156(%rdx), %edx
	addl	-40(%rbp), %edx
	addl	-16(%rbp), %edx
	movslq	%edx, %rdx
	movq	(%rcx,%rdx,8), %rcx
	movq	img, %rdx
	movl	152(%rdx), %edx
	addl	-44(%rbp), %edx
	addl	-12(%rbp), %edx
	movslq	%edx, %rdx
	movw	%ax, (%rcx,%rdx,2)
# %bb.110:                              # %for.inc1305
                                        #   in Loop: Header=BB29_108 Depth=2
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB29_108
.LBB29_111:                             # %for.end1307
                                        #   in Loop: Header=BB29_106 Depth=1
	jmp	.LBB29_112
.LBB29_112:                             # %for.inc1308
                                        #   in Loop: Header=BB29_106 Depth=1
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB29_106
.LBB29_113:                             # %for.end1310
	jmp	.LBB29_114
.LBB29_114:                             # %if.end1311
	movl	-344(%rbp), %ebx
	cmpl	$1033866558, -400(%rbp) # imm = 0x3D9F8D3E
	jne	.LBB29_116
.LBB29_115:
	movl	%ebx, %eax
	addq	$664, %rsp              # imm = 0x298
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB29_116:                             # %func_exit
	.cfi_def_cfa %rbp, 16
	callq	detect_breach
	jmp	.LBB29_115
.Lfunc_end29:
	.size	dct_luma8x8.24, .Lfunc_end29-dct_luma8x8.24
	.cfi_endproc
                                        # -- End function
	.type	quant_coef8,@object     # @quant_coef8
	.section	.rodata,"a",@progbits
	.globl	quant_coef8
	.p2align	4
quant_coef8:
	.long	13107                   # 0x3333
	.long	12222                   # 0x2fbe
	.long	16777                   # 0x4189
	.long	12222                   # 0x2fbe
	.long	13107                   # 0x3333
	.long	12222                   # 0x2fbe
	.long	16777                   # 0x4189
	.long	12222                   # 0x2fbe
	.long	12222                   # 0x2fbe
	.long	11428                   # 0x2ca4
	.long	15481                   # 0x3c79
	.long	11428                   # 0x2ca4
	.long	12222                   # 0x2fbe
	.long	11428                   # 0x2ca4
	.long	15481                   # 0x3c79
	.long	11428                   # 0x2ca4
	.long	16777                   # 0x4189
	.long	15481                   # 0x3c79
	.long	20972                   # 0x51ec
	.long	15481                   # 0x3c79
	.long	16777                   # 0x4189
	.long	15481                   # 0x3c79
	.long	20972                   # 0x51ec
	.long	15481                   # 0x3c79
	.long	12222                   # 0x2fbe
	.long	11428                   # 0x2ca4
	.long	15481                   # 0x3c79
	.long	11428                   # 0x2ca4
	.long	12222                   # 0x2fbe
	.long	11428                   # 0x2ca4
	.long	15481                   # 0x3c79
	.long	11428                   # 0x2ca4
	.long	13107                   # 0x3333
	.long	12222                   # 0x2fbe
	.long	16777                   # 0x4189
	.long	12222                   # 0x2fbe
	.long	13107                   # 0x3333
	.long	12222                   # 0x2fbe
	.long	16777                   # 0x4189
	.long	12222                   # 0x2fbe
	.long	12222                   # 0x2fbe
	.long	11428                   # 0x2ca4
	.long	15481                   # 0x3c79
	.long	11428                   # 0x2ca4
	.long	12222                   # 0x2fbe
	.long	11428                   # 0x2ca4
	.long	15481                   # 0x3c79
	.long	11428                   # 0x2ca4
	.long	16777                   # 0x4189
	.long	15481                   # 0x3c79
	.long	20972                   # 0x51ec
	.long	15481                   # 0x3c79
	.long	16777                   # 0x4189
	.long	15481                   # 0x3c79
	.long	20972                   # 0x51ec
	.long	15481                   # 0x3c79
	.long	12222                   # 0x2fbe
	.long	11428                   # 0x2ca4
	.long	15481                   # 0x3c79
	.long	11428                   # 0x2ca4
	.long	12222                   # 0x2fbe
	.long	11428                   # 0x2ca4
	.long	15481                   # 0x3c79
	.long	11428                   # 0x2ca4
	.long	11916                   # 0x2e8c
	.long	11058                   # 0x2b32
	.long	14980                   # 0x3a84
	.long	11058                   # 0x2b32
	.long	11916                   # 0x2e8c
	.long	11058                   # 0x2b32
	.long	14980                   # 0x3a84
	.long	11058                   # 0x2b32
	.long	11058                   # 0x2b32
	.long	10826                   # 0x2a4a
	.long	14290                   # 0x37d2
	.long	10826                   # 0x2a4a
	.long	11058                   # 0x2b32
	.long	10826                   # 0x2a4a
	.long	14290                   # 0x37d2
	.long	10826                   # 0x2a4a
	.long	14980                   # 0x3a84
	.long	14290                   # 0x37d2
	.long	19174                   # 0x4ae6
	.long	14290                   # 0x37d2
	.long	14980                   # 0x3a84
	.long	14290                   # 0x37d2
	.long	19174                   # 0x4ae6
	.long	14290                   # 0x37d2
	.long	11058                   # 0x2b32
	.long	10826                   # 0x2a4a
	.long	14290                   # 0x37d2
	.long	10826                   # 0x2a4a
	.long	11058                   # 0x2b32
	.long	10826                   # 0x2a4a
	.long	14290                   # 0x37d2
	.long	10826                   # 0x2a4a
	.long	11916                   # 0x2e8c
	.long	11058                   # 0x2b32
	.long	14980                   # 0x3a84
	.long	11058                   # 0x2b32
	.long	11916                   # 0x2e8c
	.long	11058                   # 0x2b32
	.long	14980                   # 0x3a84
	.long	11058                   # 0x2b32
	.long	11058                   # 0x2b32
	.long	10826                   # 0x2a4a
	.long	14290                   # 0x37d2
	.long	10826                   # 0x2a4a
	.long	11058                   # 0x2b32
	.long	10826                   # 0x2a4a
	.long	14290                   # 0x37d2
	.long	10826                   # 0x2a4a
	.long	14980                   # 0x3a84
	.long	14290                   # 0x37d2
	.long	19174                   # 0x4ae6
	.long	14290                   # 0x37d2
	.long	14980                   # 0x3a84
	.long	14290                   # 0x37d2
	.long	19174                   # 0x4ae6
	.long	14290                   # 0x37d2
	.long	11058                   # 0x2b32
	.long	10826                   # 0x2a4a
	.long	14290                   # 0x37d2
	.long	10826                   # 0x2a4a
	.long	11058                   # 0x2b32
	.long	10826                   # 0x2a4a
	.long	14290                   # 0x37d2
	.long	10826                   # 0x2a4a
	.long	10082                   # 0x2762
	.long	9675                    # 0x25cb
	.long	12710                   # 0x31a6
	.long	9675                    # 0x25cb
	.long	10082                   # 0x2762
	.long	9675                    # 0x25cb
	.long	12710                   # 0x31a6
	.long	9675                    # 0x25cb
	.long	9675                    # 0x25cb
	.long	8943                    # 0x22ef
	.long	11985                   # 0x2ed1
	.long	8943                    # 0x22ef
	.long	9675                    # 0x25cb
	.long	8943                    # 0x22ef
	.long	11985                   # 0x2ed1
	.long	8943                    # 0x22ef
	.long	12710                   # 0x31a6
	.long	11985                   # 0x2ed1
	.long	15978                   # 0x3e6a
	.long	11985                   # 0x2ed1
	.long	12710                   # 0x31a6
	.long	11985                   # 0x2ed1
	.long	15978                   # 0x3e6a
	.long	11985                   # 0x2ed1
	.long	9675                    # 0x25cb
	.long	8943                    # 0x22ef
	.long	11985                   # 0x2ed1
	.long	8943                    # 0x22ef
	.long	9675                    # 0x25cb
	.long	8943                    # 0x22ef
	.long	11985                   # 0x2ed1
	.long	8943                    # 0x22ef
	.long	10082                   # 0x2762
	.long	9675                    # 0x25cb
	.long	12710                   # 0x31a6
	.long	9675                    # 0x25cb
	.long	10082                   # 0x2762
	.long	9675                    # 0x25cb
	.long	12710                   # 0x31a6
	.long	9675                    # 0x25cb
	.long	9675                    # 0x25cb
	.long	8943                    # 0x22ef
	.long	11985                   # 0x2ed1
	.long	8943                    # 0x22ef
	.long	9675                    # 0x25cb
	.long	8943                    # 0x22ef
	.long	11985                   # 0x2ed1
	.long	8943                    # 0x22ef
	.long	12710                   # 0x31a6
	.long	11985                   # 0x2ed1
	.long	15978                   # 0x3e6a
	.long	11985                   # 0x2ed1
	.long	12710                   # 0x31a6
	.long	11985                   # 0x2ed1
	.long	15978                   # 0x3e6a
	.long	11985                   # 0x2ed1
	.long	9675                    # 0x25cb
	.long	8943                    # 0x22ef
	.long	11985                   # 0x2ed1
	.long	8943                    # 0x22ef
	.long	9675                    # 0x25cb
	.long	8943                    # 0x22ef
	.long	11985                   # 0x2ed1
	.long	8943                    # 0x22ef
	.long	9362                    # 0x2492
	.long	8931                    # 0x22e3
	.long	11984                   # 0x2ed0
	.long	8931                    # 0x22e3
	.long	9362                    # 0x2492
	.long	8931                    # 0x22e3
	.long	11984                   # 0x2ed0
	.long	8931                    # 0x22e3
	.long	8931                    # 0x22e3
	.long	8228                    # 0x2024
	.long	11259                   # 0x2bfb
	.long	8228                    # 0x2024
	.long	8931                    # 0x22e3
	.long	8228                    # 0x2024
	.long	11259                   # 0x2bfb
	.long	8228                    # 0x2024
	.long	11984                   # 0x2ed0
	.long	11259                   # 0x2bfb
	.long	14913                   # 0x3a41
	.long	11259                   # 0x2bfb
	.long	11984                   # 0x2ed0
	.long	11259                   # 0x2bfb
	.long	14913                   # 0x3a41
	.long	11259                   # 0x2bfb
	.long	8931                    # 0x22e3
	.long	8228                    # 0x2024
	.long	11259                   # 0x2bfb
	.long	8228                    # 0x2024
	.long	8931                    # 0x22e3
	.long	8228                    # 0x2024
	.long	11259                   # 0x2bfb
	.long	8228                    # 0x2024
	.long	9362                    # 0x2492
	.long	8931                    # 0x22e3
	.long	11984                   # 0x2ed0
	.long	8931                    # 0x22e3
	.long	9362                    # 0x2492
	.long	8931                    # 0x22e3
	.long	11984                   # 0x2ed0
	.long	8931                    # 0x22e3
	.long	8931                    # 0x22e3
	.long	8228                    # 0x2024
	.long	11259                   # 0x2bfb
	.long	8228                    # 0x2024
	.long	8931                    # 0x22e3
	.long	8228                    # 0x2024
	.long	11259                   # 0x2bfb
	.long	8228                    # 0x2024
	.long	11984                   # 0x2ed0
	.long	11259                   # 0x2bfb
	.long	14913                   # 0x3a41
	.long	11259                   # 0x2bfb
	.long	11984                   # 0x2ed0
	.long	11259                   # 0x2bfb
	.long	14913                   # 0x3a41
	.long	11259                   # 0x2bfb
	.long	8931                    # 0x22e3
	.long	8228                    # 0x2024
	.long	11259                   # 0x2bfb
	.long	8228                    # 0x2024
	.long	8931                    # 0x22e3
	.long	8228                    # 0x2024
	.long	11259                   # 0x2bfb
	.long	8228                    # 0x2024
	.long	8192                    # 0x2000
	.long	7740                    # 0x1e3c
	.long	10486                   # 0x28f6
	.long	7740                    # 0x1e3c
	.long	8192                    # 0x2000
	.long	7740                    # 0x1e3c
	.long	10486                   # 0x28f6
	.long	7740                    # 0x1e3c
	.long	7740                    # 0x1e3c
	.long	7346                    # 0x1cb2
	.long	9777                    # 0x2631
	.long	7346                    # 0x1cb2
	.long	7740                    # 0x1e3c
	.long	7346                    # 0x1cb2
	.long	9777                    # 0x2631
	.long	7346                    # 0x1cb2
	.long	10486                   # 0x28f6
	.long	9777                    # 0x2631
	.long	13159                   # 0x3367
	.long	9777                    # 0x2631
	.long	10486                   # 0x28f6
	.long	9777                    # 0x2631
	.long	13159                   # 0x3367
	.long	9777                    # 0x2631
	.long	7740                    # 0x1e3c
	.long	7346                    # 0x1cb2
	.long	9777                    # 0x2631
	.long	7346                    # 0x1cb2
	.long	7740                    # 0x1e3c
	.long	7346                    # 0x1cb2
	.long	9777                    # 0x2631
	.long	7346                    # 0x1cb2
	.long	8192                    # 0x2000
	.long	7740                    # 0x1e3c
	.long	10486                   # 0x28f6
	.long	7740                    # 0x1e3c
	.long	8192                    # 0x2000
	.long	7740                    # 0x1e3c
	.long	10486                   # 0x28f6
	.long	7740                    # 0x1e3c
	.long	7740                    # 0x1e3c
	.long	7346                    # 0x1cb2
	.long	9777                    # 0x2631
	.long	7346                    # 0x1cb2
	.long	7740                    # 0x1e3c
	.long	7346                    # 0x1cb2
	.long	9777                    # 0x2631
	.long	7346                    # 0x1cb2
	.long	10486                   # 0x28f6
	.long	9777                    # 0x2631
	.long	13159                   # 0x3367
	.long	9777                    # 0x2631
	.long	10486                   # 0x28f6
	.long	9777                    # 0x2631
	.long	13159                   # 0x3367
	.long	9777                    # 0x2631
	.long	7740                    # 0x1e3c
	.long	7346                    # 0x1cb2
	.long	9777                    # 0x2631
	.long	7346                    # 0x1cb2
	.long	7740                    # 0x1e3c
	.long	7346                    # 0x1cb2
	.long	9777                    # 0x2631
	.long	7346                    # 0x1cb2
	.long	7282                    # 0x1c72
	.long	6830                    # 0x1aae
	.long	9118                    # 0x239e
	.long	6830                    # 0x1aae
	.long	7282                    # 0x1c72
	.long	6830                    # 0x1aae
	.long	9118                    # 0x239e
	.long	6830                    # 0x1aae
	.long	6830                    # 0x1aae
	.long	6428                    # 0x191c
	.long	8640                    # 0x21c0
	.long	6428                    # 0x191c
	.long	6830                    # 0x1aae
	.long	6428                    # 0x191c
	.long	8640                    # 0x21c0
	.long	6428                    # 0x191c
	.long	9118                    # 0x239e
	.long	8640                    # 0x21c0
	.long	11570                   # 0x2d32
	.long	8640                    # 0x21c0
	.long	9118                    # 0x239e
	.long	8640                    # 0x21c0
	.long	11570                   # 0x2d32
	.long	8640                    # 0x21c0
	.long	6830                    # 0x1aae
	.long	6428                    # 0x191c
	.long	8640                    # 0x21c0
	.long	6428                    # 0x191c
	.long	6830                    # 0x1aae
	.long	6428                    # 0x191c
	.long	8640                    # 0x21c0
	.long	6428                    # 0x191c
	.long	7282                    # 0x1c72
	.long	6830                    # 0x1aae
	.long	9118                    # 0x239e
	.long	6830                    # 0x1aae
	.long	7282                    # 0x1c72
	.long	6830                    # 0x1aae
	.long	9118                    # 0x239e
	.long	6830                    # 0x1aae
	.long	6830                    # 0x1aae
	.long	6428                    # 0x191c
	.long	8640                    # 0x21c0
	.long	6428                    # 0x191c
	.long	6830                    # 0x1aae
	.long	6428                    # 0x191c
	.long	8640                    # 0x21c0
	.long	6428                    # 0x191c
	.long	9118                    # 0x239e
	.long	8640                    # 0x21c0
	.long	11570                   # 0x2d32
	.long	8640                    # 0x21c0
	.long	9118                    # 0x239e
	.long	8640                    # 0x21c0
	.long	11570                   # 0x2d32
	.long	8640                    # 0x21c0
	.long	6830                    # 0x1aae
	.long	6428                    # 0x191c
	.long	8640                    # 0x21c0
	.long	6428                    # 0x191c
	.long	6830                    # 0x1aae
	.long	6428                    # 0x191c
	.long	8640                    # 0x21c0
	.long	6428                    # 0x191c
	.size	quant_coef8, 1536

	.type	dequant_coef8,@object   # @dequant_coef8
	.globl	dequant_coef8
	.p2align	4
dequant_coef8:
	.long	20                      # 0x14
	.long	19                      # 0x13
	.long	25                      # 0x19
	.long	19                      # 0x13
	.long	20                      # 0x14
	.long	19                      # 0x13
	.long	25                      # 0x19
	.long	19                      # 0x13
	.long	19                      # 0x13
	.long	18                      # 0x12
	.long	24                      # 0x18
	.long	18                      # 0x12
	.long	19                      # 0x13
	.long	18                      # 0x12
	.long	24                      # 0x18
	.long	18                      # 0x12
	.long	25                      # 0x19
	.long	24                      # 0x18
	.long	32                      # 0x20
	.long	24                      # 0x18
	.long	25                      # 0x19
	.long	24                      # 0x18
	.long	32                      # 0x20
	.long	24                      # 0x18
	.long	19                      # 0x13
	.long	18                      # 0x12
	.long	24                      # 0x18
	.long	18                      # 0x12
	.long	19                      # 0x13
	.long	18                      # 0x12
	.long	24                      # 0x18
	.long	18                      # 0x12
	.long	20                      # 0x14
	.long	19                      # 0x13
	.long	25                      # 0x19
	.long	19                      # 0x13
	.long	20                      # 0x14
	.long	19                      # 0x13
	.long	25                      # 0x19
	.long	19                      # 0x13
	.long	19                      # 0x13
	.long	18                      # 0x12
	.long	24                      # 0x18
	.long	18                      # 0x12
	.long	19                      # 0x13
	.long	18                      # 0x12
	.long	24                      # 0x18
	.long	18                      # 0x12
	.long	25                      # 0x19
	.long	24                      # 0x18
	.long	32                      # 0x20
	.long	24                      # 0x18
	.long	25                      # 0x19
	.long	24                      # 0x18
	.long	32                      # 0x20
	.long	24                      # 0x18
	.long	19                      # 0x13
	.long	18                      # 0x12
	.long	24                      # 0x18
	.long	18                      # 0x12
	.long	19                      # 0x13
	.long	18                      # 0x12
	.long	24                      # 0x18
	.long	18                      # 0x12
	.long	22                      # 0x16
	.long	21                      # 0x15
	.long	28                      # 0x1c
	.long	21                      # 0x15
	.long	22                      # 0x16
	.long	21                      # 0x15
	.long	28                      # 0x1c
	.long	21                      # 0x15
	.long	21                      # 0x15
	.long	19                      # 0x13
	.long	26                      # 0x1a
	.long	19                      # 0x13
	.long	21                      # 0x15
	.long	19                      # 0x13
	.long	26                      # 0x1a
	.long	19                      # 0x13
	.long	28                      # 0x1c
	.long	26                      # 0x1a
	.long	35                      # 0x23
	.long	26                      # 0x1a
	.long	28                      # 0x1c
	.long	26                      # 0x1a
	.long	35                      # 0x23
	.long	26                      # 0x1a
	.long	21                      # 0x15
	.long	19                      # 0x13
	.long	26                      # 0x1a
	.long	19                      # 0x13
	.long	21                      # 0x15
	.long	19                      # 0x13
	.long	26                      # 0x1a
	.long	19                      # 0x13
	.long	22                      # 0x16
	.long	21                      # 0x15
	.long	28                      # 0x1c
	.long	21                      # 0x15
	.long	22                      # 0x16
	.long	21                      # 0x15
	.long	28                      # 0x1c
	.long	21                      # 0x15
	.long	21                      # 0x15
	.long	19                      # 0x13
	.long	26                      # 0x1a
	.long	19                      # 0x13
	.long	21                      # 0x15
	.long	19                      # 0x13
	.long	26                      # 0x1a
	.long	19                      # 0x13
	.long	28                      # 0x1c
	.long	26                      # 0x1a
	.long	35                      # 0x23
	.long	26                      # 0x1a
	.long	28                      # 0x1c
	.long	26                      # 0x1a
	.long	35                      # 0x23
	.long	26                      # 0x1a
	.long	21                      # 0x15
	.long	19                      # 0x13
	.long	26                      # 0x1a
	.long	19                      # 0x13
	.long	21                      # 0x15
	.long	19                      # 0x13
	.long	26                      # 0x1a
	.long	19                      # 0x13
	.long	26                      # 0x1a
	.long	24                      # 0x18
	.long	33                      # 0x21
	.long	24                      # 0x18
	.long	26                      # 0x1a
	.long	24                      # 0x18
	.long	33                      # 0x21
	.long	24                      # 0x18
	.long	24                      # 0x18
	.long	23                      # 0x17
	.long	31                      # 0x1f
	.long	23                      # 0x17
	.long	24                      # 0x18
	.long	23                      # 0x17
	.long	31                      # 0x1f
	.long	23                      # 0x17
	.long	33                      # 0x21
	.long	31                      # 0x1f
	.long	42                      # 0x2a
	.long	31                      # 0x1f
	.long	33                      # 0x21
	.long	31                      # 0x1f
	.long	42                      # 0x2a
	.long	31                      # 0x1f
	.long	24                      # 0x18
	.long	23                      # 0x17
	.long	31                      # 0x1f
	.long	23                      # 0x17
	.long	24                      # 0x18
	.long	23                      # 0x17
	.long	31                      # 0x1f
	.long	23                      # 0x17
	.long	26                      # 0x1a
	.long	24                      # 0x18
	.long	33                      # 0x21
	.long	24                      # 0x18
	.long	26                      # 0x1a
	.long	24                      # 0x18
	.long	33                      # 0x21
	.long	24                      # 0x18
	.long	24                      # 0x18
	.long	23                      # 0x17
	.long	31                      # 0x1f
	.long	23                      # 0x17
	.long	24                      # 0x18
	.long	23                      # 0x17
	.long	31                      # 0x1f
	.long	23                      # 0x17
	.long	33                      # 0x21
	.long	31                      # 0x1f
	.long	42                      # 0x2a
	.long	31                      # 0x1f
	.long	33                      # 0x21
	.long	31                      # 0x1f
	.long	42                      # 0x2a
	.long	31                      # 0x1f
	.long	24                      # 0x18
	.long	23                      # 0x17
	.long	31                      # 0x1f
	.long	23                      # 0x17
	.long	24                      # 0x18
	.long	23                      # 0x17
	.long	31                      # 0x1f
	.long	23                      # 0x17
	.long	28                      # 0x1c
	.long	26                      # 0x1a
	.long	35                      # 0x23
	.long	26                      # 0x1a
	.long	28                      # 0x1c
	.long	26                      # 0x1a
	.long	35                      # 0x23
	.long	26                      # 0x1a
	.long	26                      # 0x1a
	.long	25                      # 0x19
	.long	33                      # 0x21
	.long	25                      # 0x19
	.long	26                      # 0x1a
	.long	25                      # 0x19
	.long	33                      # 0x21
	.long	25                      # 0x19
	.long	35                      # 0x23
	.long	33                      # 0x21
	.long	45                      # 0x2d
	.long	33                      # 0x21
	.long	35                      # 0x23
	.long	33                      # 0x21
	.long	45                      # 0x2d
	.long	33                      # 0x21
	.long	26                      # 0x1a
	.long	25                      # 0x19
	.long	33                      # 0x21
	.long	25                      # 0x19
	.long	26                      # 0x1a
	.long	25                      # 0x19
	.long	33                      # 0x21
	.long	25                      # 0x19
	.long	28                      # 0x1c
	.long	26                      # 0x1a
	.long	35                      # 0x23
	.long	26                      # 0x1a
	.long	28                      # 0x1c
	.long	26                      # 0x1a
	.long	35                      # 0x23
	.long	26                      # 0x1a
	.long	26                      # 0x1a
	.long	25                      # 0x19
	.long	33                      # 0x21
	.long	25                      # 0x19
	.long	26                      # 0x1a
	.long	25                      # 0x19
	.long	33                      # 0x21
	.long	25                      # 0x19
	.long	35                      # 0x23
	.long	33                      # 0x21
	.long	45                      # 0x2d
	.long	33                      # 0x21
	.long	35                      # 0x23
	.long	33                      # 0x21
	.long	45                      # 0x2d
	.long	33                      # 0x21
	.long	26                      # 0x1a
	.long	25                      # 0x19
	.long	33                      # 0x21
	.long	25                      # 0x19
	.long	26                      # 0x1a
	.long	25                      # 0x19
	.long	33                      # 0x21
	.long	25                      # 0x19
	.long	32                      # 0x20
	.long	30                      # 0x1e
	.long	40                      # 0x28
	.long	30                      # 0x1e
	.long	32                      # 0x20
	.long	30                      # 0x1e
	.long	40                      # 0x28
	.long	30                      # 0x1e
	.long	30                      # 0x1e
	.long	28                      # 0x1c
	.long	38                      # 0x26
	.long	28                      # 0x1c
	.long	30                      # 0x1e
	.long	28                      # 0x1c
	.long	38                      # 0x26
	.long	28                      # 0x1c
	.long	40                      # 0x28
	.long	38                      # 0x26
	.long	51                      # 0x33
	.long	38                      # 0x26
	.long	40                      # 0x28
	.long	38                      # 0x26
	.long	51                      # 0x33
	.long	38                      # 0x26
	.long	30                      # 0x1e
	.long	28                      # 0x1c
	.long	38                      # 0x26
	.long	28                      # 0x1c
	.long	30                      # 0x1e
	.long	28                      # 0x1c
	.long	38                      # 0x26
	.long	28                      # 0x1c
	.long	32                      # 0x20
	.long	30                      # 0x1e
	.long	40                      # 0x28
	.long	30                      # 0x1e
	.long	32                      # 0x20
	.long	30                      # 0x1e
	.long	40                      # 0x28
	.long	30                      # 0x1e
	.long	30                      # 0x1e
	.long	28                      # 0x1c
	.long	38                      # 0x26
	.long	28                      # 0x1c
	.long	30                      # 0x1e
	.long	28                      # 0x1c
	.long	38                      # 0x26
	.long	28                      # 0x1c
	.long	40                      # 0x28
	.long	38                      # 0x26
	.long	51                      # 0x33
	.long	38                      # 0x26
	.long	40                      # 0x28
	.long	38                      # 0x26
	.long	51                      # 0x33
	.long	38                      # 0x26
	.long	30                      # 0x1e
	.long	28                      # 0x1c
	.long	38                      # 0x26
	.long	28                      # 0x1c
	.long	30                      # 0x1e
	.long	28                      # 0x1c
	.long	38                      # 0x26
	.long	28                      # 0x1c
	.long	36                      # 0x24
	.long	34                      # 0x22
	.long	46                      # 0x2e
	.long	34                      # 0x22
	.long	36                      # 0x24
	.long	34                      # 0x22
	.long	46                      # 0x2e
	.long	34                      # 0x22
	.long	34                      # 0x22
	.long	32                      # 0x20
	.long	43                      # 0x2b
	.long	32                      # 0x20
	.long	34                      # 0x22
	.long	32                      # 0x20
	.long	43                      # 0x2b
	.long	32                      # 0x20
	.long	46                      # 0x2e
	.long	43                      # 0x2b
	.long	58                      # 0x3a
	.long	43                      # 0x2b
	.long	46                      # 0x2e
	.long	43                      # 0x2b
	.long	58                      # 0x3a
	.long	43                      # 0x2b
	.long	34                      # 0x22
	.long	32                      # 0x20
	.long	43                      # 0x2b
	.long	32                      # 0x20
	.long	34                      # 0x22
	.long	32                      # 0x20
	.long	43                      # 0x2b
	.long	32                      # 0x20
	.long	36                      # 0x24
	.long	34                      # 0x22
	.long	46                      # 0x2e
	.long	34                      # 0x22
	.long	36                      # 0x24
	.long	34                      # 0x22
	.long	46                      # 0x2e
	.long	34                      # 0x22
	.long	34                      # 0x22
	.long	32                      # 0x20
	.long	43                      # 0x2b
	.long	32                      # 0x20
	.long	34                      # 0x22
	.long	32                      # 0x20
	.long	43                      # 0x2b
	.long	32                      # 0x20
	.long	46                      # 0x2e
	.long	43                      # 0x2b
	.long	58                      # 0x3a
	.long	43                      # 0x2b
	.long	46                      # 0x2e
	.long	43                      # 0x2b
	.long	58                      # 0x3a
	.long	43                      # 0x2b
	.long	34                      # 0x22
	.long	32                      # 0x20
	.long	43                      # 0x2b
	.long	32                      # 0x20
	.long	34                      # 0x22
	.long	32                      # 0x20
	.long	43                      # 0x2b
	.long	32                      # 0x20
	.size	dequant_coef8, 1536

	.type	SNGL_SCAN8x8,@object    # @SNGL_SCAN8x8
	.globl	SNGL_SCAN8x8
	.p2align	4
SNGL_SCAN8x8:
	.zero	2
	.asciz	"\001"
	.ascii	"\000\001"
	.ascii	"\000\002"
	.zero	2,1
	.asciz	"\002"
	.asciz	"\003"
	.ascii	"\002\001"
	.ascii	"\001\002"
	.ascii	"\000\003"
	.ascii	"\000\004"
	.ascii	"\001\003"
	.zero	2,2
	.ascii	"\003\001"
	.asciz	"\004"
	.asciz	"\005"
	.ascii	"\004\001"
	.ascii	"\003\002"
	.ascii	"\002\003"
	.ascii	"\001\004"
	.ascii	"\000\005"
	.ascii	"\000\006"
	.ascii	"\001\005"
	.ascii	"\002\004"
	.zero	2,3
	.ascii	"\004\002"
	.ascii	"\005\001"
	.asciz	"\006"
	.asciz	"\007"
	.ascii	"\006\001"
	.ascii	"\005\002"
	.ascii	"\004\003"
	.ascii	"\003\004"
	.ascii	"\002\005"
	.ascii	"\001\006"
	.ascii	"\000\007"
	.ascii	"\001\007"
	.ascii	"\002\006"
	.ascii	"\003\005"
	.zero	2,4
	.ascii	"\005\003"
	.ascii	"\006\002"
	.ascii	"\007\001"
	.ascii	"\007\002"
	.ascii	"\006\003"
	.ascii	"\005\004"
	.ascii	"\004\005"
	.ascii	"\003\006"
	.ascii	"\002\007"
	.ascii	"\003\007"
	.ascii	"\004\006"
	.zero	2,5
	.ascii	"\006\004"
	.ascii	"\007\003"
	.ascii	"\007\004"
	.ascii	"\006\005"
	.ascii	"\005\006"
	.ascii	"\004\007"
	.ascii	"\005\007"
	.zero	2,6
	.ascii	"\007\005"
	.ascii	"\007\006"
	.ascii	"\006\007"
	.zero	2,7
	.size	SNGL_SCAN8x8, 128

	.type	FIELD_SCAN8x8,@object   # @FIELD_SCAN8x8
	.globl	FIELD_SCAN8x8
	.p2align	4
FIELD_SCAN8x8:
	.zero	2
	.ascii	"\000\001"
	.ascii	"\000\002"
	.asciz	"\001"
	.zero	2,1
	.ascii	"\000\003"
	.ascii	"\000\004"
	.ascii	"\001\002"
	.asciz	"\002"
	.ascii	"\001\003"
	.ascii	"\000\005"
	.ascii	"\000\006"
	.ascii	"\000\007"
	.ascii	"\001\004"
	.ascii	"\002\001"
	.asciz	"\003"
	.zero	2,2
	.ascii	"\001\005"
	.ascii	"\001\006"
	.ascii	"\001\007"
	.ascii	"\002\003"
	.ascii	"\003\001"
	.asciz	"\004"
	.ascii	"\003\002"
	.ascii	"\002\004"
	.ascii	"\002\005"
	.ascii	"\002\006"
	.ascii	"\002\007"
	.zero	2,3
	.ascii	"\004\001"
	.asciz	"\005"
	.ascii	"\004\002"
	.ascii	"\003\004"
	.ascii	"\003\005"
	.ascii	"\003\006"
	.ascii	"\003\007"
	.ascii	"\004\003"
	.ascii	"\005\001"
	.asciz	"\006"
	.ascii	"\005\002"
	.zero	2,4
	.ascii	"\004\005"
	.ascii	"\004\006"
	.ascii	"\004\007"
	.ascii	"\005\003"
	.ascii	"\006\001"
	.ascii	"\006\002"
	.ascii	"\005\004"
	.zero	2,5
	.ascii	"\005\006"
	.ascii	"\005\007"
	.ascii	"\006\003"
	.asciz	"\007"
	.ascii	"\007\001"
	.ascii	"\006\004"
	.ascii	"\006\005"
	.zero	2,6
	.ascii	"\006\007"
	.ascii	"\007\002"
	.ascii	"\007\003"
	.ascii	"\007\004"
	.ascii	"\007\005"
	.ascii	"\007\006"
	.zero	2,7
	.size	FIELD_SCAN8x8, 128

	.type	COEFF_COST8x8,@object   # @COEFF_COST8x8
	.globl	COEFF_COST8x8
	.p2align	4
COEFF_COST8x8:
	.ascii	"\003\003\003\003\002\002\002\002\002\002\002\002\001\001\001\001\001\001\001\001\001\001\001\001"
	.zero	40
	.zero	64,9
	.size	COEFF_COST8x8, 128

	.type	imgY_org,@object        # @imgY_org
	.comm	imgY_org,8,8
	.type	imgUV_org,@object       # @imgUV_org
	.comm	imgUV_org,8,8
	.type	resTrans_R,@object      # @resTrans_R
	.comm	resTrans_R,1024,16
	.type	resTrans_B,@object      # @resTrans_B
	.comm	resTrans_B,1024,16
	.type	resTrans_G,@object      # @resTrans_G
	.comm	resTrans_G,1024,16
	.type	rec_resG,@object        # @rec_resG
	.comm	rec_resG,1024,16
	.type	rec_resR,@object        # @rec_resR
	.comm	rec_resR,1024,16
	.type	rec_resB,@object        # @rec_resB
	.comm	rec_resB,1024,16
	.type	cofAC8x8_chroma,@object # @cofAC8x8_chroma
	.comm	cofAC8x8_chroma,1152,16
	.type	dc_level_temp,@object   # @dc_level_temp
	.comm	dc_level_temp,128,16
	.type	dc_level,@object        # @dc_level
	.comm	dc_level,128,16
	.type	cbp_chroma_block_temp,@object # @cbp_chroma_block_temp
	.comm	cbp_chroma_block_temp,128,16
	.type	cbp_chroma_block,@object # @cbp_chroma_block
	.comm	cbp_chroma_block,128,16
	.type	top_pic,@object         # @top_pic
	.comm	top_pic,8,8
	.type	bottom_pic,@object      # @bottom_pic
	.comm	bottom_pic,8,8
	.type	frame_pic,@object       # @frame_pic
	.comm	frame_pic,8,8
	.type	frame_pic2,@object      # @frame_pic2
	.comm	frame_pic2,8,8
	.type	frame_pic3,@object      # @frame_pic3
	.comm	frame_pic3,8,8
	.type	img4Y_tmp,@object       # @img4Y_tmp
	.comm	img4Y_tmp,8,8
	.type	log2_max_frame_num_minus4,@object # @log2_max_frame_num_minus4
	.comm	log2_max_frame_num_minus4,4,4
	.type	log2_max_pic_order_cnt_lsb_minus4,@object # @log2_max_pic_order_cnt_lsb_minus4
	.comm	log2_max_pic_order_cnt_lsb_minus4,4,4
	.type	me_tot_time,@object     # @me_tot_time
	.comm	me_tot_time,4,4
	.type	me_time,@object         # @me_time
	.comm	me_time,4,4
	.type	active_pps,@object      # @active_pps
	.comm	active_pps,8,8
	.type	active_sps,@object      # @active_sps
	.comm	active_sps,8,8
	.type	mb_adaptive,@object     # @mb_adaptive
	.comm	mb_adaptive,4,4
	.type	MBPairIsField,@object   # @MBPairIsField
	.comm	MBPairIsField,4,4
	.type	wp_weight,@object       # @wp_weight
	.comm	wp_weight,8,8
	.type	wp_offset,@object       # @wp_offset
	.comm	wp_offset,8,8
	.type	wbp_weight,@object      # @wbp_weight
	.comm	wbp_weight,8,8
	.type	luma_log_weight_denom,@object # @luma_log_weight_denom
	.comm	luma_log_weight_denom,4,4
	.type	chroma_log_weight_denom,@object # @chroma_log_weight_denom
	.comm	chroma_log_weight_denom,4,4
	.type	wp_luma_round,@object   # @wp_luma_round
	.comm	wp_luma_round,4,4
	.type	wp_chroma_round,@object # @wp_chroma_round
	.comm	wp_chroma_round,4,4
	.type	imgY_org_top,@object    # @imgY_org_top
	.comm	imgY_org_top,8,8
	.type	imgY_org_bot,@object    # @imgY_org_bot
	.comm	imgY_org_bot,8,8
	.type	imgUV_org_top,@object   # @imgUV_org_top
	.comm	imgUV_org_top,8,8
	.type	imgUV_org_bot,@object   # @imgUV_org_bot
	.comm	imgUV_org_bot,8,8
	.type	imgY_org_frm,@object    # @imgY_org_frm
	.comm	imgY_org_frm,8,8
	.type	imgUV_org_frm,@object   # @imgUV_org_frm
	.comm	imgUV_org_frm,8,8
	.type	imgY_com,@object        # @imgY_com
	.comm	imgY_com,8,8
	.type	imgUV_com,@object       # @imgUV_com
	.comm	imgUV_com,8,8
	.type	direct_ref_idx,@object  # @direct_ref_idx
	.comm	direct_ref_idx,8,8
	.type	direct_pdir,@object     # @direct_pdir
	.comm	direct_pdir,8,8
	.type	pixel_map,@object       # @pixel_map
	.comm	pixel_map,8,8
	.type	refresh_map,@object     # @refresh_map
	.comm	refresh_map,8,8
	.type	intras,@object          # @intras
	.comm	intras,4,4
	.type	Iframe_ctr,@object      # @Iframe_ctr
	.comm	Iframe_ctr,4,4
	.type	Pframe_ctr,@object      # @Pframe_ctr
	.comm	Pframe_ctr,4,4
	.type	Bframe_ctr,@object      # @Bframe_ctr
	.comm	Bframe_ctr,4,4
	.type	frame_no,@object        # @frame_no
	.comm	frame_no,4,4
	.type	nextP_tr_fld,@object    # @nextP_tr_fld
	.comm	nextP_tr_fld,4,4
	.type	nextP_tr_frm,@object    # @nextP_tr_frm
	.comm	nextP_tr_frm,4,4
	.type	tot_time,@object        # @tot_time
	.comm	tot_time,4,4
	.type	errortext,@object       # @errortext
	.comm	errortext,300,16
	.type	mprRGB,@object          # @mprRGB
	.comm	mprRGB,3072,16
	.type	b8_ipredmode8x8,@object # @b8_ipredmode8x8
	.comm	b8_ipredmode8x8,64,16
	.type	b8_intra_pred_modes8x8,@object # @b8_intra_pred_modes8x8
	.comm	b8_intra_pred_modes8x8,64,16
	.type	gop_structure,@object   # @gop_structure
	.comm	gop_structure,8,8
	.type	rdopt,@object           # @rdopt
	.comm	rdopt,8,8
	.type	rddata_top_frame_mb,@object # @rddata_top_frame_mb
	.comm	rddata_top_frame_mb,3360,8
	.type	rddata_bot_frame_mb,@object # @rddata_bot_frame_mb
	.comm	rddata_bot_frame_mb,3360,8
	.type	rddata_top_field_mb,@object # @rddata_top_field_mb
	.comm	rddata_top_field_mb,3360,8
	.type	rddata_bot_field_mb,@object # @rddata_bot_field_mb
	.comm	rddata_bot_field_mb,3360,8
	.type	p_stat,@object          # @p_stat
	.comm	p_stat,8,8
	.type	p_log,@object           # @p_log
	.comm	p_log,8,8
	.type	p_trace,@object         # @p_trace
	.comm	p_trace,8,8
	.type	p_in,@object            # @p_in
	.comm	p_in,4,4
	.type	p_dec,@object           # @p_dec
	.comm	p_dec,4,4
	.type	glob_remapping_of_pic_nums_idc_l0,@object # @glob_remapping_of_pic_nums_idc_l0
	.comm	glob_remapping_of_pic_nums_idc_l0,80,16
	.type	glob_abs_diff_pic_num_minus1_l0,@object # @glob_abs_diff_pic_num_minus1_l0
	.comm	glob_abs_diff_pic_num_minus1_l0,80,16
	.type	glob_long_term_pic_idx_l0,@object # @glob_long_term_pic_idx_l0
	.comm	glob_long_term_pic_idx_l0,80,16
	.type	glob_remapping_of_pic_nums_idc_l1,@object # @glob_remapping_of_pic_nums_idc_l1
	.comm	glob_remapping_of_pic_nums_idc_l1,80,16
	.type	glob_abs_diff_pic_num_minus1_l1,@object # @glob_abs_diff_pic_num_minus1_l1
	.comm	glob_abs_diff_pic_num_minus1_l1,80,16
	.type	glob_long_term_pic_idx_l1,@object # @glob_long_term_pic_idx_l1
	.comm	glob_long_term_pic_idx_l1,80,16
	.type	Bytes_After_Header,@object # @Bytes_After_Header
	.comm	Bytes_After_Header,4,4
	.type	rpc_bytes_to_go,@object # @rpc_bytes_to_go
	.comm	rpc_bytes_to_go,4,4
	.type	rpc_bits_to_go,@object  # @rpc_bits_to_go
	.comm	rpc_bits_to_go,4,4

	.ident	"clang version 9.0.1 (git@github.com:llvm/llvm-project.git 9b2d207cf4b43cfc1a2b6940b3c06e50a1bd127f)"
	.section	".note.GNU-stack","",@progbits
