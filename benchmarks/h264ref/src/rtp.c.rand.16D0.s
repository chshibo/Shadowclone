	.text
	.file	"rtp.c"
	.globl	ComposeRTPPacket        # -- Begin function ComposeRTPPacket
	.p2align	4, 0x90
	.type	ComposeRTPPacket,@function
ComposeRTPPacket:                       # @ComposeRTPPacket
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	movq	-8(%rbp), %rcx
	movl	4(%rcx), %ecx
	shll	$2, %ecx
	orl	%ecx, %eax
	movq	-8(%rbp), %rcx
	movl	8(%rcx), %ecx
	shll	$3, %ecx
	orl	%ecx, %eax
	movq	-8(%rbp), %rcx
	movl	12(%rcx), %ecx
	shll	$4, %ecx
	orl	%ecx, %eax
	movq	-8(%rbp), %rcx
	movq	56(%rcx), %rcx
	movb	%al, (%rcx)
	movq	-8(%rbp), %rax
	movl	16(%rax), %eax
	movq	-8(%rbp), %rcx
	movl	20(%rcx), %ecx
	shll	$1, %ecx
	orl	%ecx, %eax
	movq	-8(%rbp), %rcx
	movq	56(%rcx), %rcx
	movb	%al, 1(%rcx)
	movq	-8(%rbp), %rax
	movl	24(%rax), %eax
	andl	$255, %eax
	movq	-8(%rbp), %rcx
	movq	56(%rcx), %rcx
	movb	%al, 2(%rcx)
	movq	-8(%rbp), %rax
	movl	24(%rax), %eax
	shrl	$8, %eax
	andl	$255, %eax
	movq	-8(%rbp), %rcx
	movq	56(%rcx), %rcx
	movb	%al, 3(%rcx)
	movq	-8(%rbp), %rax
	movq	56(%rax), %rax
	movq	-8(%rbp), %rcx
	movl	28(%rcx), %ecx
	movl	%ecx, 4(%rax)
	movq	-8(%rbp), %rax
	movq	56(%rax), %rax
	movq	-8(%rbp), %rcx
	movl	32(%rcx), %ecx
	movl	%ecx, 8(%rax)
	movq	-8(%rbp), %rax
	movq	56(%rax), %rdi
	addq	$12, %rdi
	movq	-8(%rbp), %rax
	movq	40(%rax), %rsi
	movq	-8(%rbp), %rax
	movl	48(%rax), %edx
	callq	memcpy
	movq	-8(%rbp), %rax
	movl	48(%rax), %eax
	addl	$12, %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 64(%rcx)
	xorl	%eax, %eax
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end0:
	.size	ComposeRTPPacket, .Lfunc_end0-ComposeRTPPacket
	.cfi_endproc
                                        # -- End function
	.globl	WriteRTPPacket          # -- Begin function WriteRTPPacket
	.p2align	4, 0x90
	.type	WriteRTPPacket,@function
WriteRTPPacket:                         # @WriteRTPPacket
	.cfi_startproc
# %bb.0:                                # %rand_bb
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	movq	%rsi, %r14
	movq	%rdi, %rbx
	callq	get_urand
	cmpl	$0, %eax
	jne	.LBB1_17
# %bb.1:                                # %func_WriteRTPPacket.3
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	WriteRTPPacket.3
	popq	%rbx
	popq	%r14
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB1_2:                                # %func_WriteRTPPacket.6
	.cfi_def_cfa %rbp, 16
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	WriteRTPPacket.6
	popq	%rbx
	popq	%r14
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB1_3:                                # %func_WriteRTPPacket.7
	.cfi_def_cfa %rbp, 16
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	WriteRTPPacket.7
	popq	%rbx
	popq	%r14
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB1_4:                                # %func_WriteRTPPacket.8
	.cfi_def_cfa %rbp, 16
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	WriteRTPPacket.8
	popq	%rbx
	popq	%r14
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB1_5:                                # %func_WriteRTPPacket.9
	.cfi_def_cfa %rbp, 16
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	WriteRTPPacket.9
	popq	%rbx
	popq	%r14
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB1_6:                                # %func_WriteRTPPacket.10
	.cfi_def_cfa %rbp, 16
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	WriteRTPPacket.10
	popq	%rbx
	popq	%r14
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB1_7:                                # %func_WriteRTPPacket.11
	.cfi_def_cfa %rbp, 16
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	WriteRTPPacket.11
	popq	%rbx
	popq	%r14
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB1_8:                                # %func_WriteRTPPacket.12
	.cfi_def_cfa %rbp, 16
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	WriteRTPPacket.12
	popq	%rbx
	popq	%r14
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB1_9:                                # %func_WriteRTPPacket.13
	.cfi_def_cfa %rbp, 16
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	WriteRTPPacket.13
	popq	%rbx
	popq	%r14
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB1_10:                               # %func_WriteRTPPacket.14
	.cfi_def_cfa %rbp, 16
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	WriteRTPPacket.14
	popq	%rbx
	popq	%r14
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB1_11:                               # %func_WriteRTPPacket.15
	.cfi_def_cfa %rbp, 16
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	WriteRTPPacket.15
	popq	%rbx
	popq	%r14
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB1_12:                               # %func_WriteRTPPacket.16
	.cfi_def_cfa %rbp, 16
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	WriteRTPPacket.16
	popq	%rbx
	popq	%r14
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB1_13:                               # %func_WriteRTPPacket.17
	.cfi_def_cfa %rbp, 16
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	WriteRTPPacket.17
	popq	%rbx
	popq	%r14
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB1_14:                               # %func_WriteRTPPacket.18
	.cfi_def_cfa %rbp, 16
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	WriteRTPPacket.18
	popq	%rbx
	popq	%r14
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB1_15:                               # %func_WriteRTPPacket.19
	.cfi_def_cfa %rbp, 16
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	WriteRTPPacket.19
	popq	%rbx
	popq	%r14
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB1_16:                               # %func_WriteRTPPacket.20
	.cfi_def_cfa %rbp, 16
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	WriteRTPPacket.20
	popq	%rbx
	popq	%r14
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB1_17:                               # %ctrl0
	.cfi_def_cfa %rbp, 16
	cmpl	$1, %eax
	je	.LBB1_2
# %bb.18:                               # %ctrl1
	cmpl	$2, %eax
	je	.LBB1_3
# %bb.19:                               # %ctrl2
	cmpl	$3, %eax
	je	.LBB1_4
# %bb.20:                               # %ctrl3
	cmpl	$4, %eax
	je	.LBB1_5
# %bb.21:                               # %ctrl4
	cmpl	$5, %eax
	je	.LBB1_6
# %bb.22:                               # %ctrl5
	cmpl	$6, %eax
	je	.LBB1_7
# %bb.23:                               # %ctrl6
	cmpl	$7, %eax
	je	.LBB1_8
# %bb.24:                               # %ctrl7
	cmpl	$8, %eax
	je	.LBB1_9
# %bb.25:                               # %ctrl8
	cmpl	$9, %eax
	je	.LBB1_10
# %bb.26:                               # %ctrl9
	cmpl	$10, %eax
	je	.LBB1_11
# %bb.27:                               # %ctrl10
	cmpl	$11, %eax
	je	.LBB1_12
# %bb.28:                               # %ctrl11
	cmpl	$12, %eax
	je	.LBB1_13
# %bb.29:                               # %ctrl12
	cmpl	$13, %eax
	je	.LBB1_14
# %bb.30:                               # %ctrl13
	cmpl	$14, %eax
	je	.LBB1_15
	jmp	.LBB1_16
.Lfunc_end1:
	.size	WriteRTPPacket, .Lfunc_end1-WriteRTPPacket
	.cfi_endproc
                                        # -- End function
	.globl	WriteRTPNALU            # -- Begin function WriteRTPNALU
	.p2align	4, 0x90
	.type	WriteRTPNALU,@function
WriteRTPNALU:                           # @WriteRTPNALU
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
	callq	get_urand
	cmpl	$0, %eax
	jne	.LBB2_2
# %bb.1:                                # %func_WriteRTPNALU.2
	movq	%rbx, %rdi
	callq	WriteRTPNALU.2
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB2_2:                                # %func_WriteRTPNALU.4
	.cfi_def_cfa %rbp, 16
	movq	%rbx, %rdi
	callq	WriteRTPNALU.4
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end2:
	.size	WriteRTPNALU, .Lfunc_end2-WriteRTPNALU
	.cfi_endproc
                                        # -- End function
	.globl	RTPUpdateTimestamp      # -- Begin function RTPUpdateTimestamp
	.p2align	4, 0x90
	.type	RTPUpdateTimestamp,@function
RTPUpdateTimestamp:                     # @RTPUpdateTimestamp
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
	movl	%edi, %ebx
	callq	get_urand
	cmpl	$0, %eax
	jne	.LBB3_2
# %bb.1:                                # %func_RTPUpdateTimestamp.1
	movl	%ebx, %edi
	callq	RTPUpdateTimestamp.1
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB3_2:                                # %func_RTPUpdateTimestamp.5
	.cfi_def_cfa %rbp, 16
	movl	%ebx, %edi
	callq	RTPUpdateTimestamp.5
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end3:
	.size	RTPUpdateTimestamp, .Lfunc_end3-RTPUpdateTimestamp
	.cfi_endproc
                                        # -- End function
	.globl	OpenRTPFile             # -- Begin function OpenRTPFile
	.p2align	4, 0x90
	.type	OpenRTPFile,@function
OpenRTPFile:                            # @OpenRTPFile
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movabsq	$.L.str.5, %rsi
	callq	fopen
	movq	%rax, f
	cmpq	$0, %rax
	jne	.LBB4_2
# %bb.1:                                # %if.then
	movq	-8(%rbp), %rsi
	movabsq	$.L.str.6, %rdi
	movb	$0, %al
	callq	printf
	movl	$4294967295, %edi       # imm = 0xFFFFFFFF
	callq	exit
.LBB4_2:                                # %if.end
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end4:
	.size	OpenRTPFile, .Lfunc_end4-OpenRTPFile
	.cfi_endproc
                                        # -- End function
	.globl	CloseRTPFile            # -- Begin function CloseRTPFile
	.p2align	4, 0x90
	.type	CloseRTPFile,@function
CloseRTPFile:                           # @CloseRTPFile
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	f, %rdi
	callq	fclose
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end5:
	.size	CloseRTPFile, .Lfunc_end5-CloseRTPFile
	.cfi_endproc
                                        # -- End function
	.globl	RTPUpdateTimestamp.1    # -- Begin function RTPUpdateTimestamp.1
	.p2align	4, 0x90
	.type	RTPUpdateTimestamp.1,@function
RTPUpdateTimestamp.1:                   # @RTPUpdateTimestamp.1
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	$872757189, -12(%rbp)   # imm = 0x340537C5
	movl	%edi, -8(%rbp)
	cmpl	$-1, RTPUpdateTimestamp.oldtr
	jne	.LBB6_2
# %bb.1:                                # %if.then
	movl	$0, CurrentRTPTimestamp
	movl	$0, RTPUpdateTimestamp.oldtr
	jmp	.LBB6_5
.LBB6_2:                                # %if.end
	movl	-8(%rbp), %eax
	subl	RTPUpdateTimestamp.oldtr, %eax
	movl	%eax, -4(%rbp)
	cmpl	$-10, -4(%rbp)
	jge	.LBB6_4
# %bb.3:                                # %if.then2
	movl	-4(%rbp), %eax
	addl	$256, %eax              # imm = 0x100
	movl	%eax, -4(%rbp)
.LBB6_4:                                # %if.end3
	imull	$1000, -4(%rbp), %eax   # imm = 0x3E8
	addl	CurrentRTPTimestamp, %eax
	movl	%eax, CurrentRTPTimestamp
	movl	-8(%rbp), %eax
	movl	%eax, RTPUpdateTimestamp.oldtr
.LBB6_5:                                # %return
	cmpl	$872757189, -12(%rbp)   # imm = 0x340537C5
	jne	.LBB6_7
.LBB6_6:
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB6_7:                                # %func_exit
	.cfi_def_cfa %rbp, 16
	callq	detect_breach
	jmp	.LBB6_6
.Lfunc_end6:
	.size	RTPUpdateTimestamp.1, .Lfunc_end6-RTPUpdateTimestamp.1
	.cfi_endproc
                                        # -- End function
	.globl	WriteRTPNALU.2          # -- Begin function WriteRTPNALU.2
	.p2align	4, 0x90
	.type	WriteRTPNALU.2,@function
WriteRTPNALU.2:                         # @WriteRTPNALU.2
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset %rbx, -24
	movl	$1474319441, -28(%rbp)  # imm = 0x57E05451
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movl	20(%rax), %eax
	shll	$7, %eax
	movq	-24(%rbp), %rcx
	movl	16(%rcx), %ecx
	shll	$5, %ecx
	orl	%ecx, %eax
	movq	-24(%rbp), %rcx
	orl	12(%rcx), %eax
	movq	-24(%rbp), %rcx
	movq	24(%rcx), %rcx
	movb	%al, (%rcx)
	movl	$72, %edi
	callq	malloc
	movq	%rax, -16(%rbp)
	cmpq	$0, %rax
	jne	.LBB7_2
# %bb.1:                                # %if.then
	movabsq	$.L.str, %rdi
	callq	no_mem_exit
.LBB7_2:                                # %if.end
	movl	$65508, %edi            # imm = 0xFFE4
	callq	malloc
	movq	-16(%rbp), %rcx
	movq	%rax, 56(%rcx)
	cmpq	$0, %rax
	jne	.LBB7_4
# %bb.3:                                # %if.then7
	movabsq	$.L.str.1, %rdi
	callq	no_mem_exit
.LBB7_4:                                # %if.end8
	movl	$65508, %edi            # imm = 0xFFE4
	callq	malloc
	movq	-16(%rbp), %rcx
	movq	%rax, 40(%rcx)
	cmpq	$0, %rax
	jne	.LBB7_6
# %bb.5:                                # %if.then12
	movabsq	$.L.str.2, %rdi
	callq	no_mem_exit
.LBB7_6:                                # %if.end13
	movq	-16(%rbp), %rax
	movl	$2, (%rax)
	movq	-16(%rbp), %rax
	movl	$0, 4(%rax)
	movq	-16(%rbp), %rax
	movl	$0, 8(%rax)
	movq	-16(%rbp), %rax
	movl	$0, 12(%rax)
	movq	-24(%rbp), %rax
	cmpl	$4, (%rax)
	sete	%al
	andb	$1, %al
	movzbl	%al, %eax
	andl	$1, %eax
	movq	-16(%rbp), %rcx
	movl	%eax, 16(%rcx)
	movq	-16(%rbp), %rax
	movl	$105, 20(%rax)
	movl	CurrentRTPSequenceNumber, %eax
	movl	%eax, %ecx
	addl	$1, %ecx
	movl	%ecx, CurrentRTPSequenceNumber
	movq	-16(%rbp), %rcx
	movl	%eax, 24(%rcx)
	movl	CurrentRTPTimestamp, %eax
	movq	-16(%rbp), %rcx
	movl	%eax, 28(%rcx)
	movq	-16(%rbp), %rax
	movl	$305419896, 32(%rax)    # imm = 0x12345678
	movq	-24(%rbp), %rax
	movl	4(%rax), %eax
	movq	-16(%rbp), %rcx
	movl	%eax, 48(%rcx)
	movq	-16(%rbp), %rax
	movq	40(%rax), %rdi
	movq	-24(%rbp), %rax
	movq	24(%rax), %rsi
	movq	-24(%rbp), %rax
	movl	4(%rax), %edx
	callq	memcpy
	movq	-16(%rbp), %rdi
	callq	ComposeRTPPacket
	cmpl	$0, %eax
	jge	.LBB7_8
# %bb.7:                                # %if.then24
	movabsq	$.L.str.3, %rdi
	movb	$0, %al
	callq	printf
	movl	$4294967295, %edi       # imm = 0xFFFFFFFF
	callq	exit
.LBB7_8:                                # %if.end26
	movq	-16(%rbp), %rdi
	movq	f, %rsi
	callq	WriteRTPPacket
	cmpl	$0, %eax
	jge	.LBB7_10
# %bb.9:                                # %if.then30
	movq	-16(%rbp), %rax
	movl	64(%rax), %esi
	movabsq	$.L.str.4, %rdi
	movb	$0, %al
	callq	printf
	movl	$4294967295, %edi       # imm = 0xFFFFFFFF
	callq	exit
.LBB7_10:                               # %if.end32
	movq	-16(%rbp), %rax
	movq	56(%rax), %rdi
	callq	free
	movq	-16(%rbp), %rax
	movq	40(%rax), %rdi
	callq	free
	movq	-16(%rbp), %rdi
	callq	free
	movq	-24(%rbp), %rax
	movl	4(%rax), %ebx
	shll	$3, %ebx
	cmpl	$1474319441, -28(%rbp)  # imm = 0x57E05451
	jne	.LBB7_12
.LBB7_11:
	movl	%ebx, %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB7_12:                               # %func_exit
	.cfi_def_cfa %rbp, 16
	callq	detect_breach
	jmp	.LBB7_11
.Lfunc_end7:
	.size	WriteRTPNALU.2, .Lfunc_end7-WriteRTPNALU.2
	.cfi_endproc
                                        # -- End function
	.globl	WriteRTPPacket.3        # -- Begin function WriteRTPPacket.3
	.p2align	4, 0x90
	.type	WriteRTPPacket.3,@function
WriteRTPPacket.3:                       # @WriteRTPPacket.3
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
	movl	$186198029, -40(%rbp)   # imm = 0xB19280D
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	$-1, -36(%rbp)
	movq	-24(%rbp), %rdi
	addq	$64, %rdi
	movq	-32(%rbp), %rcx
	movl	$4, %esi
	movl	$1, %edx
	callq	fwrite
	movl	$1, %ecx
	cmpq	%rax, %rcx
	je	.LBB8_2
# %bb.1:                                # %if.then
	movl	$-1, -12(%rbp)
	jmp	.LBB8_7
.LBB8_2:                                # %if.end
	leaq	-36(%rbp), %rdi
	movq	-32(%rbp), %rcx
	movl	$4, %esi
	movl	$1, %edx
	callq	fwrite
	movl	$1, %ecx
	cmpq	%rax, %rcx
	je	.LBB8_4
# %bb.3:                                # %if.then3
	movl	$-1, -12(%rbp)
	jmp	.LBB8_7
.LBB8_4:                                # %if.end4
	movq	-24(%rbp), %rax
	movq	56(%rax), %rdi
	movq	-24(%rbp), %rax
	movl	64(%rax), %esi
	movq	-32(%rbp), %rcx
	movl	$1, %edx
	callq	fwrite
	movl	$1, %ecx
	cmpq	%rax, %rcx
	je	.LBB8_6
# %bb.5:                                # %if.then9
	movl	$-1, -12(%rbp)
	jmp	.LBB8_7
.LBB8_6:                                # %if.end10
	movl	$0, -12(%rbp)
.LBB8_7:                                # %return
	movl	-12(%rbp), %ebx
	cmpl	$186198029, -40(%rbp)   # imm = 0xB19280D
	jne	.LBB8_9
.LBB8_8:
	movl	%ebx, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB8_9:                                # %func_exit
	.cfi_def_cfa %rbp, 16
	callq	detect_breach
	jmp	.LBB8_8
.Lfunc_end8:
	.size	WriteRTPPacket.3, .Lfunc_end8-WriteRTPPacket.3
	.cfi_endproc
                                        # -- End function
	.globl	WriteRTPNALU.4          # -- Begin function WriteRTPNALU.4
	.p2align	4, 0x90
	.type	WriteRTPNALU.4,@function
WriteRTPNALU.4:                         # @WriteRTPNALU.4
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset %rbx, -24
	movl	$1535332785, -28(%rbp)  # imm = 0x5B8351B1
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movl	20(%rax), %eax
	shll	$7, %eax
	movq	-24(%rbp), %rcx
	movl	16(%rcx), %ecx
	shll	$5, %ecx
	orl	%ecx, %eax
	movq	-24(%rbp), %rcx
	orl	12(%rcx), %eax
	movq	-24(%rbp), %rcx
	movq	24(%rcx), %rcx
	movb	%al, (%rcx)
	movl	$72, %edi
	callq	malloc
	movq	%rax, -16(%rbp)
	cmpq	$0, %rax
	jne	.LBB9_2
# %bb.1:                                # %if.then
	movabsq	$.L.str, %rdi
	callq	no_mem_exit
.LBB9_2:                                # %if.end
	movl	$65508, %edi            # imm = 0xFFE4
	callq	malloc
	movq	-16(%rbp), %rcx
	movq	%rax, 56(%rcx)
	cmpq	$0, %rax
	jne	.LBB9_4
# %bb.3:                                # %if.then7
	movabsq	$.L.str.1, %rdi
	callq	no_mem_exit
.LBB9_4:                                # %if.end8
	movl	$65508, %edi            # imm = 0xFFE4
	callq	malloc
	movq	-16(%rbp), %rcx
	movq	%rax, 40(%rcx)
	cmpq	$0, %rax
	jne	.LBB9_6
# %bb.5:                                # %if.then12
	movabsq	$.L.str.2, %rdi
	callq	no_mem_exit
.LBB9_6:                                # %if.end13
	movq	-16(%rbp), %rax
	movl	$2, (%rax)
	movq	-16(%rbp), %rax
	movl	$0, 4(%rax)
	movq	-16(%rbp), %rax
	movl	$0, 8(%rax)
	movq	-16(%rbp), %rax
	movl	$0, 12(%rax)
	movq	-24(%rbp), %rax
	cmpl	$4, (%rax)
	sete	%al
	andb	$1, %al
	movzbl	%al, %eax
	andl	$1, %eax
	movq	-16(%rbp), %rcx
	movl	%eax, 16(%rcx)
	movq	-16(%rbp), %rax
	movl	$105, 20(%rax)
	movl	CurrentRTPSequenceNumber, %eax
	movl	%eax, %ecx
	addl	$1, %ecx
	movl	%ecx, CurrentRTPSequenceNumber
	movq	-16(%rbp), %rcx
	movl	%eax, 24(%rcx)
	movl	CurrentRTPTimestamp, %eax
	movq	-16(%rbp), %rcx
	movl	%eax, 28(%rcx)
	movq	-16(%rbp), %rax
	movl	$305419896, 32(%rax)    # imm = 0x12345678
	movq	-24(%rbp), %rax
	movl	4(%rax), %eax
	movq	-16(%rbp), %rcx
	movl	%eax, 48(%rcx)
	movq	-16(%rbp), %rax
	movq	40(%rax), %rdi
	movq	-24(%rbp), %rax
	movq	24(%rax), %rsi
	movq	-24(%rbp), %rax
	movl	4(%rax), %edx
	callq	memcpy
	movq	-16(%rbp), %rdi
	callq	ComposeRTPPacket
	cmpl	$0, %eax
	jge	.LBB9_8
# %bb.7:                                # %if.then24
	movabsq	$.L.str.3, %rdi
	movb	$0, %al
	callq	printf
	movl	$4294967295, %edi       # imm = 0xFFFFFFFF
	callq	exit
.LBB9_8:                                # %if.end26
	movq	-16(%rbp), %rdi
	movq	f, %rsi
	callq	WriteRTPPacket
	cmpl	$0, %eax
	jge	.LBB9_10
# %bb.9:                                # %if.then30
	movq	-16(%rbp), %rax
	movl	64(%rax), %esi
	movabsq	$.L.str.4, %rdi
	movb	$0, %al
	callq	printf
	movl	$4294967295, %edi       # imm = 0xFFFFFFFF
	callq	exit
.LBB9_10:                               # %if.end32
	movq	-16(%rbp), %rax
	movq	56(%rax), %rdi
	callq	free
	movq	-16(%rbp), %rax
	movq	40(%rax), %rdi
	callq	free
	movq	-16(%rbp), %rdi
	callq	free
	movq	-24(%rbp), %rax
	movl	4(%rax), %ebx
	shll	$3, %ebx
	cmpl	$1535332785, -28(%rbp)  # imm = 0x5B8351B1
	jne	.LBB9_12
.LBB9_11:
	movl	%ebx, %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB9_12:                               # %func_exit
	.cfi_def_cfa %rbp, 16
	callq	detect_breach
	jmp	.LBB9_11
.Lfunc_end9:
	.size	WriteRTPNALU.4, .Lfunc_end9-WriteRTPNALU.4
	.cfi_endproc
                                        # -- End function
	.globl	RTPUpdateTimestamp.5    # -- Begin function RTPUpdateTimestamp.5
	.p2align	4, 0x90
	.type	RTPUpdateTimestamp.5,@function
RTPUpdateTimestamp.5:                   # @RTPUpdateTimestamp.5
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	$122131175, -12(%rbp)   # imm = 0x74792E7
	movl	%edi, -8(%rbp)
	cmpl	$-1, RTPUpdateTimestamp.oldtr
	jne	.LBB10_2
# %bb.1:                                # %if.then
	movl	$0, CurrentRTPTimestamp
	movl	$0, RTPUpdateTimestamp.oldtr
	jmp	.LBB10_5
.LBB10_2:                               # %if.end
	movl	-8(%rbp), %eax
	subl	RTPUpdateTimestamp.oldtr, %eax
	movl	%eax, -4(%rbp)
	cmpl	$-10, -4(%rbp)
	jge	.LBB10_4
# %bb.3:                                # %if.then2
	movl	-4(%rbp), %eax
	addl	$256, %eax              # imm = 0x100
	movl	%eax, -4(%rbp)
.LBB10_4:                               # %if.end3
	imull	$1000, -4(%rbp), %eax   # imm = 0x3E8
	addl	CurrentRTPTimestamp, %eax
	movl	%eax, CurrentRTPTimestamp
	movl	-8(%rbp), %eax
	movl	%eax, RTPUpdateTimestamp.oldtr
.LBB10_5:                               # %return
	cmpl	$122131175, -12(%rbp)   # imm = 0x74792E7
	jne	.LBB10_7
.LBB10_6:
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB10_7:                               # %func_exit
	.cfi_def_cfa %rbp, 16
	callq	detect_breach
	jmp	.LBB10_6
.Lfunc_end10:
	.size	RTPUpdateTimestamp.5, .Lfunc_end10-RTPUpdateTimestamp.5
	.cfi_endproc
                                        # -- End function
	.globl	WriteRTPPacket.6        # -- Begin function WriteRTPPacket.6
	.p2align	4, 0x90
	.type	WriteRTPPacket.6,@function
WriteRTPPacket.6:                       # @WriteRTPPacket.6
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
	movl	$242956454, -36(%rbp)   # imm = 0xE7B38A6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	$-1, -40(%rbp)
	movq	-24(%rbp), %rdi
	addq	$64, %rdi
	movq	-32(%rbp), %rcx
	movl	$4, %esi
	movl	$1, %edx
	callq	fwrite
	movl	$1, %ecx
	cmpq	%rax, %rcx
	je	.LBB11_2
# %bb.1:                                # %if.then
	movl	$-1, -12(%rbp)
	jmp	.LBB11_7
.LBB11_2:                               # %if.end
	leaq	-40(%rbp), %rdi
	movq	-32(%rbp), %rcx
	movl	$4, %esi
	movl	$1, %edx
	callq	fwrite
	movl	$1, %ecx
	cmpq	%rax, %rcx
	je	.LBB11_4
# %bb.3:                                # %if.then3
	movl	$-1, -12(%rbp)
	jmp	.LBB11_7
.LBB11_4:                               # %if.end4
	movq	-24(%rbp), %rax
	movq	56(%rax), %rdi
	movq	-24(%rbp), %rax
	movl	64(%rax), %esi
	movq	-32(%rbp), %rcx
	movl	$1, %edx
	callq	fwrite
	movl	$1, %ecx
	cmpq	%rax, %rcx
	je	.LBB11_6
# %bb.5:                                # %if.then9
	movl	$-1, -12(%rbp)
	jmp	.LBB11_7
.LBB11_6:                               # %if.end10
	movl	$0, -12(%rbp)
.LBB11_7:                               # %return
	movl	-12(%rbp), %ebx
	cmpl	$242956454, -36(%rbp)   # imm = 0xE7B38A6
	jne	.LBB11_9
.LBB11_8:
	movl	%ebx, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB11_9:                               # %func_exit
	.cfi_def_cfa %rbp, 16
	callq	detect_breach
	jmp	.LBB11_8
.Lfunc_end11:
	.size	WriteRTPPacket.6, .Lfunc_end11-WriteRTPPacket.6
	.cfi_endproc
                                        # -- End function
	.globl	WriteRTPPacket.7        # -- Begin function WriteRTPPacket.7
	.p2align	4, 0x90
	.type	WriteRTPPacket.7,@function
WriteRTPPacket.7:                       # @WriteRTPPacket.7
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
	movl	$416018023, -40(%rbp)   # imm = 0x18CBEE67
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	$-1, -36(%rbp)
	movq	-24(%rbp), %rdi
	addq	$64, %rdi
	movq	-32(%rbp), %rcx
	movl	$4, %esi
	movl	$1, %edx
	callq	fwrite
	movl	$1, %ecx
	cmpq	%rax, %rcx
	je	.LBB12_2
# %bb.1:                                # %if.then
	movl	$-1, -12(%rbp)
	jmp	.LBB12_7
.LBB12_2:                               # %if.end
	leaq	-36(%rbp), %rdi
	movq	-32(%rbp), %rcx
	movl	$4, %esi
	movl	$1, %edx
	callq	fwrite
	movl	$1, %ecx
	cmpq	%rax, %rcx
	je	.LBB12_4
# %bb.3:                                # %if.then3
	movl	$-1, -12(%rbp)
	jmp	.LBB12_7
.LBB12_4:                               # %if.end4
	movq	-24(%rbp), %rax
	movq	56(%rax), %rdi
	movq	-24(%rbp), %rax
	movl	64(%rax), %esi
	movq	-32(%rbp), %rcx
	movl	$1, %edx
	callq	fwrite
	movl	$1, %ecx
	cmpq	%rax, %rcx
	je	.LBB12_6
# %bb.5:                                # %if.then9
	movl	$-1, -12(%rbp)
	jmp	.LBB12_7
.LBB12_6:                               # %if.end10
	movl	$0, -12(%rbp)
.LBB12_7:                               # %return
	movl	-12(%rbp), %ebx
	cmpl	$416018023, -40(%rbp)   # imm = 0x18CBEE67
	jne	.LBB12_9
.LBB12_8:
	movl	%ebx, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB12_9:                               # %func_exit
	.cfi_def_cfa %rbp, 16
	callq	detect_breach
	jmp	.LBB12_8
.Lfunc_end12:
	.size	WriteRTPPacket.7, .Lfunc_end12-WriteRTPPacket.7
	.cfi_endproc
                                        # -- End function
	.globl	WriteRTPPacket.8        # -- Begin function WriteRTPPacket.8
	.p2align	4, 0x90
	.type	WriteRTPPacket.8,@function
WriteRTPPacket.8:                       # @WriteRTPPacket.8
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
	movl	$684169954, -36(%rbp)   # imm = 0x28C79AE2
	movq	%rdi, -32(%rbp)
	movq	%rsi, -24(%rbp)
	movl	$-1, -40(%rbp)
	movq	-32(%rbp), %rdi
	addq	$64, %rdi
	movq	-24(%rbp), %rcx
	movl	$4, %esi
	movl	$1, %edx
	callq	fwrite
	movl	$1, %ecx
	cmpq	%rax, %rcx
	je	.LBB13_2
# %bb.1:                                # %if.then
	movl	$-1, -12(%rbp)
	jmp	.LBB13_7
.LBB13_2:                               # %if.end
	leaq	-40(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movl	$4, %esi
	movl	$1, %edx
	callq	fwrite
	movl	$1, %ecx
	cmpq	%rax, %rcx
	je	.LBB13_4
# %bb.3:                                # %if.then3
	movl	$-1, -12(%rbp)
	jmp	.LBB13_7
.LBB13_4:                               # %if.end4
	movq	-32(%rbp), %rax
	movq	56(%rax), %rdi
	movq	-32(%rbp), %rax
	movl	64(%rax), %esi
	movq	-24(%rbp), %rcx
	movl	$1, %edx
	callq	fwrite
	movl	$1, %ecx
	cmpq	%rax, %rcx
	je	.LBB13_6
# %bb.5:                                # %if.then9
	movl	$-1, -12(%rbp)
	jmp	.LBB13_7
.LBB13_6:                               # %if.end10
	movl	$0, -12(%rbp)
.LBB13_7:                               # %return
	movl	-12(%rbp), %ebx
	cmpl	$684169954, -36(%rbp)   # imm = 0x28C79AE2
	jne	.LBB13_9
.LBB13_8:
	movl	%ebx, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB13_9:                               # %func_exit
	.cfi_def_cfa %rbp, 16
	callq	detect_breach
	jmp	.LBB13_8
.Lfunc_end13:
	.size	WriteRTPPacket.8, .Lfunc_end13-WriteRTPPacket.8
	.cfi_endproc
                                        # -- End function
	.globl	WriteRTPPacket.9        # -- Begin function WriteRTPPacket.9
	.p2align	4, 0x90
	.type	WriteRTPPacket.9,@function
WriteRTPPacket.9:                       # @WriteRTPPacket.9
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
	movl	$1073320044, -40(%rbp)  # imm = 0x3FF9906C
	movq	%rdi, -32(%rbp)
	movq	%rsi, -24(%rbp)
	movl	$-1, -36(%rbp)
	movq	-32(%rbp), %rdi
	addq	$64, %rdi
	movq	-24(%rbp), %rcx
	movl	$4, %esi
	movl	$1, %edx
	callq	fwrite
	movl	$1, %ecx
	cmpq	%rax, %rcx
	je	.LBB14_2
# %bb.1:                                # %if.then
	movl	$-1, -12(%rbp)
	jmp	.LBB14_7
.LBB14_2:                               # %if.end
	leaq	-36(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movl	$4, %esi
	movl	$1, %edx
	callq	fwrite
	movl	$1, %ecx
	cmpq	%rax, %rcx
	je	.LBB14_4
# %bb.3:                                # %if.then3
	movl	$-1, -12(%rbp)
	jmp	.LBB14_7
.LBB14_4:                               # %if.end4
	movq	-32(%rbp), %rax
	movq	56(%rax), %rdi
	movq	-32(%rbp), %rax
	movl	64(%rax), %esi
	movq	-24(%rbp), %rcx
	movl	$1, %edx
	callq	fwrite
	movl	$1, %ecx
	cmpq	%rax, %rcx
	je	.LBB14_6
# %bb.5:                                # %if.then9
	movl	$-1, -12(%rbp)
	jmp	.LBB14_7
.LBB14_6:                               # %if.end10
	movl	$0, -12(%rbp)
.LBB14_7:                               # %return
	movl	-12(%rbp), %ebx
	cmpl	$1073320044, -40(%rbp)  # imm = 0x3FF9906C
	jne	.LBB14_9
.LBB14_8:
	movl	%ebx, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB14_9:                               # %func_exit
	.cfi_def_cfa %rbp, 16
	callq	detect_breach
	jmp	.LBB14_8
.Lfunc_end14:
	.size	WriteRTPPacket.9, .Lfunc_end14-WriteRTPPacket.9
	.cfi_endproc
                                        # -- End function
	.globl	WriteRTPPacket.10       # -- Begin function WriteRTPPacket.10
	.p2align	4, 0x90
	.type	WriteRTPPacket.10,@function
WriteRTPPacket.10:                      # @WriteRTPPacket.10
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
	movl	$1973509201, -40(%rbp)  # imm = 0x75A15C51
	movq	%rdi, -32(%rbp)
	movq	%rsi, -24(%rbp)
	movl	$-1, -36(%rbp)
	movq	-32(%rbp), %rdi
	addq	$64, %rdi
	movq	-24(%rbp), %rcx
	movl	$4, %esi
	movl	$1, %edx
	callq	fwrite
	movl	$1, %ecx
	cmpq	%rax, %rcx
	je	.LBB15_2
# %bb.1:                                # %if.then
	movl	$-1, -12(%rbp)
	jmp	.LBB15_7
.LBB15_2:                               # %if.end
	leaq	-36(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movl	$4, %esi
	movl	$1, %edx
	callq	fwrite
	movl	$1, %ecx
	cmpq	%rax, %rcx
	je	.LBB15_4
# %bb.3:                                # %if.then3
	movl	$-1, -12(%rbp)
	jmp	.LBB15_7
.LBB15_4:                               # %if.end4
	movq	-32(%rbp), %rax
	movq	56(%rax), %rdi
	movq	-32(%rbp), %rax
	movl	64(%rax), %esi
	movq	-24(%rbp), %rcx
	movl	$1, %edx
	callq	fwrite
	movl	$1, %ecx
	cmpq	%rax, %rcx
	je	.LBB15_6
# %bb.5:                                # %if.then9
	movl	$-1, -12(%rbp)
	jmp	.LBB15_7
.LBB15_6:                               # %if.end10
	movl	$0, -12(%rbp)
.LBB15_7:                               # %return
	movl	-12(%rbp), %ebx
	cmpl	$1973509201, -40(%rbp)  # imm = 0x75A15C51
	jne	.LBB15_9
.LBB15_8:
	movl	%ebx, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB15_9:                               # %func_exit
	.cfi_def_cfa %rbp, 16
	callq	detect_breach
	jmp	.LBB15_8
.Lfunc_end15:
	.size	WriteRTPPacket.10, .Lfunc_end15-WriteRTPPacket.10
	.cfi_endproc
                                        # -- End function
	.globl	WriteRTPPacket.11       # -- Begin function WriteRTPPacket.11
	.p2align	4, 0x90
	.type	WriteRTPPacket.11,@function
WriteRTPPacket.11:                      # @WriteRTPPacket.11
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
	movl	$275960880, -36(%rbp)   # imm = 0x1072D430
	movq	%rdi, -32(%rbp)
	movq	%rsi, -24(%rbp)
	movl	$-1, -40(%rbp)
	movq	-32(%rbp), %rdi
	addq	$64, %rdi
	movq	-24(%rbp), %rcx
	movl	$4, %esi
	movl	$1, %edx
	callq	fwrite
	movl	$1, %ecx
	cmpq	%rax, %rcx
	je	.LBB16_2
# %bb.1:                                # %if.then
	movl	$-1, -12(%rbp)
	jmp	.LBB16_7
.LBB16_2:                               # %if.end
	leaq	-40(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movl	$4, %esi
	movl	$1, %edx
	callq	fwrite
	movl	$1, %ecx
	cmpq	%rax, %rcx
	je	.LBB16_4
# %bb.3:                                # %if.then3
	movl	$-1, -12(%rbp)
	jmp	.LBB16_7
.LBB16_4:                               # %if.end4
	movq	-32(%rbp), %rax
	movq	56(%rax), %rdi
	movq	-32(%rbp), %rax
	movl	64(%rax), %esi
	movq	-24(%rbp), %rcx
	movl	$1, %edx
	callq	fwrite
	movl	$1, %ecx
	cmpq	%rax, %rcx
	je	.LBB16_6
# %bb.5:                                # %if.then9
	movl	$-1, -12(%rbp)
	jmp	.LBB16_7
.LBB16_6:                               # %if.end10
	movl	$0, -12(%rbp)
.LBB16_7:                               # %return
	movl	-12(%rbp), %ebx
	cmpl	$275960880, -36(%rbp)   # imm = 0x1072D430
	jne	.LBB16_9
.LBB16_8:
	movl	%ebx, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB16_9:                               # %func_exit
	.cfi_def_cfa %rbp, 16
	callq	detect_breach
	jmp	.LBB16_8
.Lfunc_end16:
	.size	WriteRTPPacket.11, .Lfunc_end16-WriteRTPPacket.11
	.cfi_endproc
                                        # -- End function
	.globl	WriteRTPPacket.12       # -- Begin function WriteRTPPacket.12
	.p2align	4, 0x90
	.type	WriteRTPPacket.12,@function
WriteRTPPacket.12:                      # @WriteRTPPacket.12
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
	movl	$1757571419, -36(%rbp)  # imm = 0x68C2695B
	movq	%rdi, -32(%rbp)
	movq	%rsi, -24(%rbp)
	movl	$-1, -40(%rbp)
	movq	-32(%rbp), %rdi
	addq	$64, %rdi
	movq	-24(%rbp), %rcx
	movl	$4, %esi
	movl	$1, %edx
	callq	fwrite
	movl	$1, %ecx
	cmpq	%rax, %rcx
	je	.LBB17_2
# %bb.1:                                # %if.then
	movl	$-1, -12(%rbp)
	jmp	.LBB17_7
.LBB17_2:                               # %if.end
	leaq	-40(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movl	$4, %esi
	movl	$1, %edx
	callq	fwrite
	movl	$1, %ecx
	cmpq	%rax, %rcx
	je	.LBB17_4
# %bb.3:                                # %if.then3
	movl	$-1, -12(%rbp)
	jmp	.LBB17_7
.LBB17_4:                               # %if.end4
	movq	-32(%rbp), %rax
	movq	56(%rax), %rdi
	movq	-32(%rbp), %rax
	movl	64(%rax), %esi
	movq	-24(%rbp), %rcx
	movl	$1, %edx
	callq	fwrite
	movl	$1, %ecx
	cmpq	%rax, %rcx
	je	.LBB17_6
# %bb.5:                                # %if.then9
	movl	$-1, -12(%rbp)
	jmp	.LBB17_7
.LBB17_6:                               # %if.end10
	movl	$0, -12(%rbp)
.LBB17_7:                               # %return
	movl	-12(%rbp), %ebx
	cmpl	$1757571419, -36(%rbp)  # imm = 0x68C2695B
	jne	.LBB17_9
.LBB17_8:
	movl	%ebx, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB17_9:                               # %func_exit
	.cfi_def_cfa %rbp, 16
	callq	detect_breach
	jmp	.LBB17_8
.Lfunc_end17:
	.size	WriteRTPPacket.12, .Lfunc_end17-WriteRTPPacket.12
	.cfi_endproc
                                        # -- End function
	.globl	WriteRTPPacket.13       # -- Begin function WriteRTPPacket.13
	.p2align	4, 0x90
	.type	WriteRTPPacket.13,@function
WriteRTPPacket.13:                      # @WriteRTPPacket.13
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
	movl	$307740946, -40(%rbp)   # imm = 0x1257C112
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	$-1, -36(%rbp)
	movq	-24(%rbp), %rdi
	addq	$64, %rdi
	movq	-32(%rbp), %rcx
	movl	$4, %esi
	movl	$1, %edx
	callq	fwrite
	movl	$1, %ecx
	cmpq	%rax, %rcx
	je	.LBB18_2
# %bb.1:                                # %if.then
	movl	$-1, -12(%rbp)
	jmp	.LBB18_7
.LBB18_2:                               # %if.end
	leaq	-36(%rbp), %rdi
	movq	-32(%rbp), %rcx
	movl	$4, %esi
	movl	$1, %edx
	callq	fwrite
	movl	$1, %ecx
	cmpq	%rax, %rcx
	je	.LBB18_4
# %bb.3:                                # %if.then3
	movl	$-1, -12(%rbp)
	jmp	.LBB18_7
.LBB18_4:                               # %if.end4
	movq	-24(%rbp), %rax
	movq	56(%rax), %rdi
	movq	-24(%rbp), %rax
	movl	64(%rax), %esi
	movq	-32(%rbp), %rcx
	movl	$1, %edx
	callq	fwrite
	movl	$1, %ecx
	cmpq	%rax, %rcx
	je	.LBB18_6
# %bb.5:                                # %if.then9
	movl	$-1, -12(%rbp)
	jmp	.LBB18_7
.LBB18_6:                               # %if.end10
	movl	$0, -12(%rbp)
.LBB18_7:                               # %return
	movl	-12(%rbp), %ebx
	cmpl	$307740946, -40(%rbp)   # imm = 0x1257C112
	jne	.LBB18_9
.LBB18_8:
	movl	%ebx, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB18_9:                               # %func_exit
	.cfi_def_cfa %rbp, 16
	callq	detect_breach
	jmp	.LBB18_8
.Lfunc_end18:
	.size	WriteRTPPacket.13, .Lfunc_end18-WriteRTPPacket.13
	.cfi_endproc
                                        # -- End function
	.globl	WriteRTPPacket.14       # -- Begin function WriteRTPPacket.14
	.p2align	4, 0x90
	.type	WriteRTPPacket.14,@function
WriteRTPPacket.14:                      # @WriteRTPPacket.14
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
	movl	$1407632119, -36(%rbp)  # imm = 0x53E6C2F7
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	$-1, -40(%rbp)
	movq	-24(%rbp), %rdi
	addq	$64, %rdi
	movq	-32(%rbp), %rcx
	movl	$4, %esi
	movl	$1, %edx
	callq	fwrite
	movl	$1, %ecx
	cmpq	%rax, %rcx
	je	.LBB19_2
# %bb.1:                                # %if.then
	movl	$-1, -12(%rbp)
	jmp	.LBB19_7
.LBB19_2:                               # %if.end
	leaq	-40(%rbp), %rdi
	movq	-32(%rbp), %rcx
	movl	$4, %esi
	movl	$1, %edx
	callq	fwrite
	movl	$1, %ecx
	cmpq	%rax, %rcx
	je	.LBB19_4
# %bb.3:                                # %if.then3
	movl	$-1, -12(%rbp)
	jmp	.LBB19_7
.LBB19_4:                               # %if.end4
	movq	-24(%rbp), %rax
	movq	56(%rax), %rdi
	movq	-24(%rbp), %rax
	movl	64(%rax), %esi
	movq	-32(%rbp), %rcx
	movl	$1, %edx
	callq	fwrite
	movl	$1, %ecx
	cmpq	%rax, %rcx
	je	.LBB19_6
# %bb.5:                                # %if.then9
	movl	$-1, -12(%rbp)
	jmp	.LBB19_7
.LBB19_6:                               # %if.end10
	movl	$0, -12(%rbp)
.LBB19_7:                               # %return
	movl	-12(%rbp), %ebx
	cmpl	$1407632119, -36(%rbp)  # imm = 0x53E6C2F7
	jne	.LBB19_9
.LBB19_8:
	movl	%ebx, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB19_9:                               # %func_exit
	.cfi_def_cfa %rbp, 16
	callq	detect_breach
	jmp	.LBB19_8
.Lfunc_end19:
	.size	WriteRTPPacket.14, .Lfunc_end19-WriteRTPPacket.14
	.cfi_endproc
                                        # -- End function
	.globl	WriteRTPPacket.15       # -- Begin function WriteRTPPacket.15
	.p2align	4, 0x90
	.type	WriteRTPPacket.15,@function
WriteRTPPacket.15:                      # @WriteRTPPacket.15
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
	movl	$1550310161, -36(%rbp)  # imm = 0x5C67DB11
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	$-1, -40(%rbp)
	movq	-24(%rbp), %rdi
	addq	$64, %rdi
	movq	-32(%rbp), %rcx
	movl	$4, %esi
	movl	$1, %edx
	callq	fwrite
	movl	$1, %ecx
	cmpq	%rax, %rcx
	je	.LBB20_2
# %bb.1:                                # %if.then
	movl	$-1, -12(%rbp)
	jmp	.LBB20_7
.LBB20_2:                               # %if.end
	leaq	-40(%rbp), %rdi
	movq	-32(%rbp), %rcx
	movl	$4, %esi
	movl	$1, %edx
	callq	fwrite
	movl	$1, %ecx
	cmpq	%rax, %rcx
	je	.LBB20_4
# %bb.3:                                # %if.then3
	movl	$-1, -12(%rbp)
	jmp	.LBB20_7
.LBB20_4:                               # %if.end4
	movq	-24(%rbp), %rax
	movq	56(%rax), %rdi
	movq	-24(%rbp), %rax
	movl	64(%rax), %esi
	movq	-32(%rbp), %rcx
	movl	$1, %edx
	callq	fwrite
	movl	$1, %ecx
	cmpq	%rax, %rcx
	je	.LBB20_6
# %bb.5:                                # %if.then9
	movl	$-1, -12(%rbp)
	jmp	.LBB20_7
.LBB20_6:                               # %if.end10
	movl	$0, -12(%rbp)
.LBB20_7:                               # %return
	movl	-12(%rbp), %ebx
	cmpl	$1550310161, -36(%rbp)  # imm = 0x5C67DB11
	jne	.LBB20_9
.LBB20_8:
	movl	%ebx, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB20_9:                               # %func_exit
	.cfi_def_cfa %rbp, 16
	callq	detect_breach
	jmp	.LBB20_8
.Lfunc_end20:
	.size	WriteRTPPacket.15, .Lfunc_end20-WriteRTPPacket.15
	.cfi_endproc
                                        # -- End function
	.globl	WriteRTPPacket.16       # -- Begin function WriteRTPPacket.16
	.p2align	4, 0x90
	.type	WriteRTPPacket.16,@function
WriteRTPPacket.16:                      # @WriteRTPPacket.16
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
	movl	$1552154410, -36(%rbp)  # imm = 0x5C83FF2A
	movq	%rdi, -32(%rbp)
	movq	%rsi, -24(%rbp)
	movl	$-1, -40(%rbp)
	movq	-32(%rbp), %rdi
	addq	$64, %rdi
	movq	-24(%rbp), %rcx
	movl	$4, %esi
	movl	$1, %edx
	callq	fwrite
	movl	$1, %ecx
	cmpq	%rax, %rcx
	je	.LBB21_2
# %bb.1:                                # %if.then
	movl	$-1, -12(%rbp)
	jmp	.LBB21_7
.LBB21_2:                               # %if.end
	leaq	-40(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movl	$4, %esi
	movl	$1, %edx
	callq	fwrite
	movl	$1, %ecx
	cmpq	%rax, %rcx
	je	.LBB21_4
# %bb.3:                                # %if.then3
	movl	$-1, -12(%rbp)
	jmp	.LBB21_7
.LBB21_4:                               # %if.end4
	movq	-32(%rbp), %rax
	movq	56(%rax), %rdi
	movq	-32(%rbp), %rax
	movl	64(%rax), %esi
	movq	-24(%rbp), %rcx
	movl	$1, %edx
	callq	fwrite
	movl	$1, %ecx
	cmpq	%rax, %rcx
	je	.LBB21_6
# %bb.5:                                # %if.then9
	movl	$-1, -12(%rbp)
	jmp	.LBB21_7
.LBB21_6:                               # %if.end10
	movl	$0, -12(%rbp)
.LBB21_7:                               # %return
	movl	-12(%rbp), %ebx
	cmpl	$1552154410, -36(%rbp)  # imm = 0x5C83FF2A
	jne	.LBB21_9
.LBB21_8:
	movl	%ebx, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB21_9:                               # %func_exit
	.cfi_def_cfa %rbp, 16
	callq	detect_breach
	jmp	.LBB21_8
.Lfunc_end21:
	.size	WriteRTPPacket.16, .Lfunc_end21-WriteRTPPacket.16
	.cfi_endproc
                                        # -- End function
	.globl	WriteRTPPacket.17       # -- Begin function WriteRTPPacket.17
	.p2align	4, 0x90
	.type	WriteRTPPacket.17,@function
WriteRTPPacket.17:                      # @WriteRTPPacket.17
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
	movl	$980339535, -36(%rbp)   # imm = 0x3A6ECB4F
	movq	%rdi, -32(%rbp)
	movq	%rsi, -24(%rbp)
	movl	$-1, -40(%rbp)
	movq	-32(%rbp), %rdi
	addq	$64, %rdi
	movq	-24(%rbp), %rcx
	movl	$4, %esi
	movl	$1, %edx
	callq	fwrite
	movl	$1, %ecx
	cmpq	%rax, %rcx
	je	.LBB22_2
# %bb.1:                                # %if.then
	movl	$-1, -12(%rbp)
	jmp	.LBB22_7
.LBB22_2:                               # %if.end
	leaq	-40(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movl	$4, %esi
	movl	$1, %edx
	callq	fwrite
	movl	$1, %ecx
	cmpq	%rax, %rcx
	je	.LBB22_4
# %bb.3:                                # %if.then3
	movl	$-1, -12(%rbp)
	jmp	.LBB22_7
.LBB22_4:                               # %if.end4
	movq	-32(%rbp), %rax
	movq	56(%rax), %rdi
	movq	-32(%rbp), %rax
	movl	64(%rax), %esi
	movq	-24(%rbp), %rcx
	movl	$1, %edx
	callq	fwrite
	movl	$1, %ecx
	cmpq	%rax, %rcx
	je	.LBB22_6
# %bb.5:                                # %if.then9
	movl	$-1, -12(%rbp)
	jmp	.LBB22_7
.LBB22_6:                               # %if.end10
	movl	$0, -12(%rbp)
.LBB22_7:                               # %return
	movl	-12(%rbp), %ebx
	cmpl	$980339535, -36(%rbp)   # imm = 0x3A6ECB4F
	jne	.LBB22_9
.LBB22_8:
	movl	%ebx, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB22_9:                               # %func_exit
	.cfi_def_cfa %rbp, 16
	callq	detect_breach
	jmp	.LBB22_8
.Lfunc_end22:
	.size	WriteRTPPacket.17, .Lfunc_end22-WriteRTPPacket.17
	.cfi_endproc
                                        # -- End function
	.globl	WriteRTPPacket.18       # -- Begin function WriteRTPPacket.18
	.p2align	4, 0x90
	.type	WriteRTPPacket.18,@function
WriteRTPPacket.18:                      # @WriteRTPPacket.18
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
	movl	$980192919, -36(%rbp)   # imm = 0x3A6C8E97
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	$-1, -40(%rbp)
	movq	-24(%rbp), %rdi
	addq	$64, %rdi
	movq	-32(%rbp), %rcx
	movl	$4, %esi
	movl	$1, %edx
	callq	fwrite
	movl	$1, %ecx
	cmpq	%rax, %rcx
	je	.LBB23_2
# %bb.1:                                # %if.then
	movl	$-1, -12(%rbp)
	jmp	.LBB23_7
.LBB23_2:                               # %if.end
	leaq	-40(%rbp), %rdi
	movq	-32(%rbp), %rcx
	movl	$4, %esi
	movl	$1, %edx
	callq	fwrite
	movl	$1, %ecx
	cmpq	%rax, %rcx
	je	.LBB23_4
# %bb.3:                                # %if.then3
	movl	$-1, -12(%rbp)
	jmp	.LBB23_7
.LBB23_4:                               # %if.end4
	movq	-24(%rbp), %rax
	movq	56(%rax), %rdi
	movq	-24(%rbp), %rax
	movl	64(%rax), %esi
	movq	-32(%rbp), %rcx
	movl	$1, %edx
	callq	fwrite
	movl	$1, %ecx
	cmpq	%rax, %rcx
	je	.LBB23_6
# %bb.5:                                # %if.then9
	movl	$-1, -12(%rbp)
	jmp	.LBB23_7
.LBB23_6:                               # %if.end10
	movl	$0, -12(%rbp)
.LBB23_7:                               # %return
	movl	-12(%rbp), %ebx
	cmpl	$980192919, -36(%rbp)   # imm = 0x3A6C8E97
	jne	.LBB23_9
.LBB23_8:
	movl	%ebx, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB23_9:                               # %func_exit
	.cfi_def_cfa %rbp, 16
	callq	detect_breach
	jmp	.LBB23_8
.Lfunc_end23:
	.size	WriteRTPPacket.18, .Lfunc_end23-WriteRTPPacket.18
	.cfi_endproc
                                        # -- End function
	.globl	WriteRTPPacket.19       # -- Begin function WriteRTPPacket.19
	.p2align	4, 0x90
	.type	WriteRTPPacket.19,@function
WriteRTPPacket.19:                      # @WriteRTPPacket.19
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
	movl	$1173894957, -36(%rbp)  # imm = 0x45F8372D
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	$-1, -40(%rbp)
	movq	-24(%rbp), %rdi
	addq	$64, %rdi
	movq	-32(%rbp), %rcx
	movl	$4, %esi
	movl	$1, %edx
	callq	fwrite
	movl	$1, %ecx
	cmpq	%rax, %rcx
	je	.LBB24_2
# %bb.1:                                # %if.then
	movl	$-1, -12(%rbp)
	jmp	.LBB24_7
.LBB24_2:                               # %if.end
	leaq	-40(%rbp), %rdi
	movq	-32(%rbp), %rcx
	movl	$4, %esi
	movl	$1, %edx
	callq	fwrite
	movl	$1, %ecx
	cmpq	%rax, %rcx
	je	.LBB24_4
# %bb.3:                                # %if.then3
	movl	$-1, -12(%rbp)
	jmp	.LBB24_7
.LBB24_4:                               # %if.end4
	movq	-24(%rbp), %rax
	movq	56(%rax), %rdi
	movq	-24(%rbp), %rax
	movl	64(%rax), %esi
	movq	-32(%rbp), %rcx
	movl	$1, %edx
	callq	fwrite
	movl	$1, %ecx
	cmpq	%rax, %rcx
	je	.LBB24_6
# %bb.5:                                # %if.then9
	movl	$-1, -12(%rbp)
	jmp	.LBB24_7
.LBB24_6:                               # %if.end10
	movl	$0, -12(%rbp)
.LBB24_7:                               # %return
	movl	-12(%rbp), %ebx
	cmpl	$1173894957, -36(%rbp)  # imm = 0x45F8372D
	jne	.LBB24_9
.LBB24_8:
	movl	%ebx, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB24_9:                               # %func_exit
	.cfi_def_cfa %rbp, 16
	callq	detect_breach
	jmp	.LBB24_8
.Lfunc_end24:
	.size	WriteRTPPacket.19, .Lfunc_end24-WriteRTPPacket.19
	.cfi_endproc
                                        # -- End function
	.globl	WriteRTPPacket.20       # -- Begin function WriteRTPPacket.20
	.p2align	4, 0x90
	.type	WriteRTPPacket.20,@function
WriteRTPPacket.20:                      # @WriteRTPPacket.20
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
	movl	$141276211, -40(%rbp)   # imm = 0x86BB433
	movq	%rdi, -32(%rbp)
	movq	%rsi, -24(%rbp)
	movl	$-1, -36(%rbp)
	movq	-32(%rbp), %rdi
	addq	$64, %rdi
	movq	-24(%rbp), %rcx
	movl	$4, %esi
	movl	$1, %edx
	callq	fwrite
	movl	$1, %ecx
	cmpq	%rax, %rcx
	je	.LBB25_2
# %bb.1:                                # %if.then
	movl	$-1, -12(%rbp)
	jmp	.LBB25_7
.LBB25_2:                               # %if.end
	leaq	-36(%rbp), %rdi
	movq	-24(%rbp), %rcx
	movl	$4, %esi
	movl	$1, %edx
	callq	fwrite
	movl	$1, %ecx
	cmpq	%rax, %rcx
	je	.LBB25_4
# %bb.3:                                # %if.then3
	movl	$-1, -12(%rbp)
	jmp	.LBB25_7
.LBB25_4:                               # %if.end4
	movq	-32(%rbp), %rax
	movq	56(%rax), %rdi
	movq	-32(%rbp), %rax
	movl	64(%rax), %esi
	movq	-24(%rbp), %rcx
	movl	$1, %edx
	callq	fwrite
	movl	$1, %ecx
	cmpq	%rax, %rcx
	je	.LBB25_6
# %bb.5:                                # %if.then9
	movl	$-1, -12(%rbp)
	jmp	.LBB25_7
.LBB25_6:                               # %if.end10
	movl	$0, -12(%rbp)
.LBB25_7:                               # %return
	movl	-12(%rbp), %ebx
	cmpl	$141276211, -40(%rbp)   # imm = 0x86BB433
	jne	.LBB25_9
.LBB25_8:
	movl	%ebx, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB25_9:                               # %func_exit
	.cfi_def_cfa %rbp, 16
	callq	detect_breach
	jmp	.LBB25_8
.Lfunc_end25:
	.size	WriteRTPPacket.20, .Lfunc_end25-WriteRTPPacket.20
	.cfi_endproc
                                        # -- End function
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"RTPWriteNALU-1"
	.size	.L.str, 15

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"RTPWriteNALU-2"
	.size	.L.str.1, 15

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"RTPWriteNALU-3"
	.size	.L.str.2, 15

	.type	CurrentRTPSequenceNumber,@object # @CurrentRTPSequenceNumber
	.bss
	.globl	CurrentRTPSequenceNumber
	.p2align	2
CurrentRTPSequenceNumber:
	.long	0                       # 0x0
	.size	CurrentRTPSequenceNumber, 4

	.type	CurrentRTPTimestamp,@object # @CurrentRTPTimestamp
	.globl	CurrentRTPTimestamp
	.p2align	2
CurrentRTPTimestamp:
	.long	0                       # 0x0
	.size	CurrentRTPTimestamp, 4

	.type	.L.str.3,@object        # @.str.3
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.3:
	.asciz	"Cannot compose RTP packet, exit\n"
	.size	.L.str.3, 33

	.type	f,@object               # @f
	.comm	f,8,8
	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"Cannot write %d bytes of RTP packet to outfile, exit\n"
	.size	.L.str.4, 54

	.type	RTPUpdateTimestamp.oldtr,@object # @RTPUpdateTimestamp.oldtr
	.data
	.p2align	2
RTPUpdateTimestamp.oldtr:
	.long	4294967295              # 0xffffffff
	.size	RTPUpdateTimestamp.oldtr, 4

	.type	.L.str.5,@object        # @.str.5
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.5:
	.asciz	"wb"
	.size	.L.str.5, 3

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"Fatal: cannot open bitstream file '%s', exit (-1)\n"
	.size	.L.str.6, 51

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
	.type	imgY_org,@object        # @imgY_org
	.comm	imgY_org,8,8
	.type	imgUV_org,@object       # @imgUV_org
	.comm	imgUV_org,8,8
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
	.type	resTrans_R,@object      # @resTrans_R
	.comm	resTrans_R,1024,16
	.type	resTrans_G,@object      # @resTrans_G
	.comm	resTrans_G,1024,16
	.type	resTrans_B,@object      # @resTrans_B
	.comm	resTrans_B,1024,16
	.type	rec_resR,@object        # @rec_resR
	.comm	rec_resR,1024,16
	.type	rec_resG,@object        # @rec_resG
	.comm	rec_resG,1024,16
	.type	rec_resB,@object        # @rec_resB
	.comm	rec_resB,1024,16
	.type	mprRGB,@object          # @mprRGB
	.comm	mprRGB,3072,16
	.type	dc_level,@object        # @dc_level
	.comm	dc_level,128,16
	.type	dc_level_temp,@object   # @dc_level_temp
	.comm	dc_level_temp,128,16
	.type	cbp_chroma_block,@object # @cbp_chroma_block
	.comm	cbp_chroma_block,128,16
	.type	cbp_chroma_block_temp,@object # @cbp_chroma_block_temp
	.comm	cbp_chroma_block_temp,128,16
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
	.type	WriteNALU,@object       # @WriteNALU
	.comm	WriteNALU,8,8

	.ident	"clang version 9.0.1 (git@github.com:llvm/llvm-project.git 9b2d207cf4b43cfc1a2b6940b3c06e50a1bd127f)"
	.section	".note.GNU-stack","",@progbits
