	.text
	.file	"specrand.c"
	.globl	spec_srand              # -- Begin function spec_srand
	.p2align	4, 0x90
	.type	spec_srand,@function
spec_srand:                             # @spec_srand
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	movl	%eax, seedi
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end0:
	.size	spec_srand, .Lfunc_end0-spec_srand
	.cfi_endproc
                                        # -- End function
	.globl	spec_rand               # -- Begin function spec_rand
	.p2align	4, 0x90
	.type	spec_rand,@function
spec_rand:                              # @spec_rand
	.cfi_startproc
# %bb.0:                                # %rand_bb
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	callq	get_urand
	cmpl	$0, %eax
	jne	.LBB1_7
# %bb.1:                                # %func_spec_rand.1
	callq	spec_rand.1
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB1_2:                                # %func_spec_rand.2
	.cfi_def_cfa %rbp, 16
	callq	spec_rand.2
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB1_3:                                # %func_spec_rand.3
	.cfi_def_cfa %rbp, 16
	callq	spec_rand.3
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB1_4:                                # %func_spec_rand.4
	.cfi_def_cfa %rbp, 16
	callq	spec_rand.4
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB1_5:                                # %func_spec_rand.5
	.cfi_def_cfa %rbp, 16
	callq	spec_rand.5
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB1_6:                                # %func_spec_rand.6
	.cfi_def_cfa %rbp, 16
	callq	spec_rand.6
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB1_7:                                # %ctrl0
	.cfi_def_cfa %rbp, 16
	cmpl	$1, %eax
	je	.LBB1_2
# %bb.8:                                # %ctrl1
	cmpl	$2, %eax
	je	.LBB1_3
# %bb.9:                                # %ctrl2
	cmpl	$3, %eax
	je	.LBB1_4
# %bb.10:                               # %ctrl3
	cmpl	$4, %eax
	je	.LBB1_5
	jmp	.LBB1_6
.Lfunc_end1:
	.size	spec_rand, .Lfunc_end1-spec_rand
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function spec_rand.1
.LCPI2_0:
	.quad	4746794007244308480     # double 2147483647
	.text
	.globl	spec_rand.1
	.p2align	4, 0x90
	.type	spec_rand.1,@function
spec_rand.1:                            # @spec_rand.1
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movl	$125251545, -8(%rbp)    # imm = 0x7772FD9
	movslq	seedi, %rax
	cqto
	movl	$127773, %ecx           # imm = 0x1F31D
	idivq	%rcx
	movl	%eax, -16(%rbp)
	movslq	seedi, %rax
	cqto
	idivq	%rcx
	movl	%edx, -12(%rbp)
	movslq	-12(%rbp), %rax
	imulq	$16807, %rax, %rax      # imm = 0x41A7
	movslq	-16(%rbp), %rcx
	imulq	$2836, %rcx, %rcx       # imm = 0xB14
	subq	%rcx, %rax
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jle	.LBB2_2
# %bb.1:                                # %if.then
	movl	-4(%rbp), %eax
	movl	%eax, seedi
	jmp	.LBB2_3
.LBB2_2:                                # %if.else
	movslq	-4(%rbp), %rax
	addq	$2147483647, %rax       # imm = 0x7FFFFFFF
	movl	%eax, seedi
.LBB2_3:                                # %if.end
	vmovsd	.LCPI2_0(%rip), %xmm0   # xmm0 = mem[0],zero
	vcvtsi2sdl	seedi, %xmm0, %xmm1
	vdivsd	%xmm0, %xmm1, %xmm0
	cmpl	$125251545, -8(%rbp)    # imm = 0x7772FD9
	jne	.LBB2_5
.LBB2_4:
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB2_5:                                # %func_exit
	.cfi_def_cfa %rbp, 16
	vmovsd	%xmm0, -24(%rbp)        # 8-byte Spill
	callq	detect_breach
	vmovsd	-24(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	jmp	.LBB2_4
.Lfunc_end2:
	.size	spec_rand.1, .Lfunc_end2-spec_rand.1
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function spec_rand.2
.LCPI3_0:
	.quad	4746794007244308480     # double 2147483647
	.text
	.globl	spec_rand.2
	.p2align	4, 0x90
	.type	spec_rand.2,@function
spec_rand.2:                            # @spec_rand.2
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movl	$219700993, -12(%rbp)   # imm = 0xD185F01
	movslq	seedi, %rax
	cqto
	movl	$127773, %ecx           # imm = 0x1F31D
	idivq	%rcx
	movl	%eax, -16(%rbp)
	movslq	seedi, %rax
	cqto
	idivq	%rcx
	movl	%edx, -8(%rbp)
	movslq	-8(%rbp), %rax
	imulq	$16807, %rax, %rax      # imm = 0x41A7
	movslq	-16(%rbp), %rcx
	imulq	$2836, %rcx, %rcx       # imm = 0xB14
	subq	%rcx, %rax
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jle	.LBB3_2
# %bb.1:                                # %if.then
	movl	-4(%rbp), %eax
	movl	%eax, seedi
	jmp	.LBB3_3
.LBB3_2:                                # %if.else
	movslq	-4(%rbp), %rax
	addq	$2147483647, %rax       # imm = 0x7FFFFFFF
	movl	%eax, seedi
.LBB3_3:                                # %if.end
	vmovsd	.LCPI3_0(%rip), %xmm0   # xmm0 = mem[0],zero
	vcvtsi2sdl	seedi, %xmm0, %xmm1
	vdivsd	%xmm0, %xmm1, %xmm0
	cmpl	$219700993, -12(%rbp)   # imm = 0xD185F01
	jne	.LBB3_5
.LBB3_4:
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB3_5:                                # %func_exit
	.cfi_def_cfa %rbp, 16
	vmovsd	%xmm0, -24(%rbp)        # 8-byte Spill
	callq	detect_breach
	vmovsd	-24(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	jmp	.LBB3_4
.Lfunc_end3:
	.size	spec_rand.2, .Lfunc_end3-spec_rand.2
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function spec_rand.3
.LCPI4_0:
	.quad	4746794007244308480     # double 2147483647
	.text
	.globl	spec_rand.3
	.p2align	4, 0x90
	.type	spec_rand.3,@function
spec_rand.3:                            # @spec_rand.3
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movl	$833616016, -16(%rbp)   # imm = 0x31AFF890
	movslq	seedi, %rax
	cqto
	movl	$127773, %ecx           # imm = 0x1F31D
	idivq	%rcx
	movl	%eax, -8(%rbp)
	movslq	seedi, %rax
	cqto
	idivq	%rcx
	movl	%edx, -12(%rbp)
	movslq	-12(%rbp), %rax
	imulq	$16807, %rax, %rax      # imm = 0x41A7
	movslq	-8(%rbp), %rcx
	imulq	$2836, %rcx, %rcx       # imm = 0xB14
	subq	%rcx, %rax
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jle	.LBB4_2
# %bb.1:                                # %if.then
	movl	-4(%rbp), %eax
	movl	%eax, seedi
	jmp	.LBB4_3
.LBB4_2:                                # %if.else
	movslq	-4(%rbp), %rax
	addq	$2147483647, %rax       # imm = 0x7FFFFFFF
	movl	%eax, seedi
.LBB4_3:                                # %if.end
	vmovsd	.LCPI4_0(%rip), %xmm0   # xmm0 = mem[0],zero
	vcvtsi2sdl	seedi, %xmm0, %xmm1
	vdivsd	%xmm0, %xmm1, %xmm0
	cmpl	$833616016, -16(%rbp)   # imm = 0x31AFF890
	jne	.LBB4_5
.LBB4_4:
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB4_5:                                # %func_exit
	.cfi_def_cfa %rbp, 16
	vmovsd	%xmm0, -24(%rbp)        # 8-byte Spill
	callq	detect_breach
	vmovsd	-24(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	jmp	.LBB4_4
.Lfunc_end4:
	.size	spec_rand.3, .Lfunc_end4-spec_rand.3
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function spec_rand.4
.LCPI5_0:
	.quad	4746794007244308480     # double 2147483647
	.text
	.globl	spec_rand.4
	.p2align	4, 0x90
	.type	spec_rand.4,@function
spec_rand.4:                            # @spec_rand.4
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movl	$1265578193, -16(%rbp)  # imm = 0x4B6F30D1
	movslq	seedi, %rax
	cqto
	movl	$127773, %ecx           # imm = 0x1F31D
	idivq	%rcx
	movl	%eax, -8(%rbp)
	movslq	seedi, %rax
	cqto
	idivq	%rcx
	movl	%edx, -12(%rbp)
	movslq	-12(%rbp), %rax
	imulq	$16807, %rax, %rax      # imm = 0x41A7
	movslq	-8(%rbp), %rcx
	imulq	$2836, %rcx, %rcx       # imm = 0xB14
	subq	%rcx, %rax
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jle	.LBB5_2
# %bb.1:                                # %if.then
	movl	-4(%rbp), %eax
	movl	%eax, seedi
	jmp	.LBB5_3
.LBB5_2:                                # %if.else
	movslq	-4(%rbp), %rax
	addq	$2147483647, %rax       # imm = 0x7FFFFFFF
	movl	%eax, seedi
.LBB5_3:                                # %if.end
	vmovsd	.LCPI5_0(%rip), %xmm0   # xmm0 = mem[0],zero
	vcvtsi2sdl	seedi, %xmm0, %xmm1
	vdivsd	%xmm0, %xmm1, %xmm0
	cmpl	$1265578193, -16(%rbp)  # imm = 0x4B6F30D1
	jne	.LBB5_5
.LBB5_4:
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB5_5:                                # %func_exit
	.cfi_def_cfa %rbp, 16
	vmovsd	%xmm0, -24(%rbp)        # 8-byte Spill
	callq	detect_breach
	vmovsd	-24(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	jmp	.LBB5_4
.Lfunc_end5:
	.size	spec_rand.4, .Lfunc_end5-spec_rand.4
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function spec_rand.5
.LCPI6_0:
	.quad	4746794007244308480     # double 2147483647
	.text
	.globl	spec_rand.5
	.p2align	4, 0x90
	.type	spec_rand.5,@function
spec_rand.5:                            # @spec_rand.5
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movl	$1957654084, -12(%rbp)  # imm = 0x74AF6E44
	movslq	seedi, %rax
	cqto
	movl	$127773, %ecx           # imm = 0x1F31D
	idivq	%rcx
	movl	%eax, -8(%rbp)
	movslq	seedi, %rax
	cqto
	idivq	%rcx
	movl	%edx, -16(%rbp)
	movslq	-16(%rbp), %rax
	imulq	$16807, %rax, %rax      # imm = 0x41A7
	movslq	-8(%rbp), %rcx
	imulq	$2836, %rcx, %rcx       # imm = 0xB14
	subq	%rcx, %rax
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jle	.LBB6_2
# %bb.1:                                # %if.then
	movl	-4(%rbp), %eax
	movl	%eax, seedi
	jmp	.LBB6_3
.LBB6_2:                                # %if.else
	movslq	-4(%rbp), %rax
	addq	$2147483647, %rax       # imm = 0x7FFFFFFF
	movl	%eax, seedi
.LBB6_3:                                # %if.end
	vmovsd	.LCPI6_0(%rip), %xmm0   # xmm0 = mem[0],zero
	vcvtsi2sdl	seedi, %xmm0, %xmm1
	vdivsd	%xmm0, %xmm1, %xmm0
	cmpl	$1957654084, -12(%rbp)  # imm = 0x74AF6E44
	jne	.LBB6_5
.LBB6_4:
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB6_5:                                # %func_exit
	.cfi_def_cfa %rbp, 16
	vmovsd	%xmm0, -24(%rbp)        # 8-byte Spill
	callq	detect_breach
	vmovsd	-24(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	jmp	.LBB6_4
.Lfunc_end6:
	.size	spec_rand.5, .Lfunc_end6-spec_rand.5
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function spec_rand.6
.LCPI7_0:
	.quad	4746794007244308480     # double 2147483647
	.text
	.globl	spec_rand.6
	.p2align	4, 0x90
	.type	spec_rand.6,@function
spec_rand.6:                            # @spec_rand.6
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movl	$807622434, -12(%rbp)   # imm = 0x30235722
	movslq	seedi, %rax
	cqto
	movl	$127773, %ecx           # imm = 0x1F31D
	idivq	%rcx
	movl	%eax, -16(%rbp)
	movslq	seedi, %rax
	cqto
	idivq	%rcx
	movl	%edx, -8(%rbp)
	movslq	-8(%rbp), %rax
	imulq	$16807, %rax, %rax      # imm = 0x41A7
	movslq	-16(%rbp), %rcx
	imulq	$2836, %rcx, %rcx       # imm = 0xB14
	subq	%rcx, %rax
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jle	.LBB7_2
# %bb.1:                                # %if.then
	movl	-4(%rbp), %eax
	movl	%eax, seedi
	jmp	.LBB7_3
.LBB7_2:                                # %if.else
	movslq	-4(%rbp), %rax
	addq	$2147483647, %rax       # imm = 0x7FFFFFFF
	movl	%eax, seedi
.LBB7_3:                                # %if.end
	vmovsd	.LCPI7_0(%rip), %xmm0   # xmm0 = mem[0],zero
	vcvtsi2sdl	seedi, %xmm0, %xmm1
	vdivsd	%xmm0, %xmm1, %xmm0
	cmpl	$807622434, -12(%rbp)   # imm = 0x30235722
	jne	.LBB7_5
.LBB7_4:
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB7_5:                                # %func_exit
	.cfi_def_cfa %rbp, 16
	vmovsd	%xmm0, -24(%rbp)        # 8-byte Spill
	callq	detect_breach
	vmovsd	-24(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	jmp	.LBB7_4
.Lfunc_end7:
	.size	spec_rand.6, .Lfunc_end7-spec_rand.6
	.cfi_endproc
                                        # -- End function
	.type	seedi,@object           # @seedi
	.local	seedi
	.comm	seedi,4,4

	.ident	"clang version 9.0.1 (git@github.com:llvm/llvm-project.git 9b2d207cf4b43cfc1a2b6940b3c06e50a1bd127f)"
	.section	".note.GNU-stack","",@progbits
