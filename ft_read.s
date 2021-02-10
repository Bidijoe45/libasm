global _ft_read

section .text

extern ___error

_ft_read:
	mov rax, 0x02000003
	syscall
	jc error
	ret

error:
	push r15
	mov	r15, rax
	call ___error
	mov	[rax], r15
	mov	rax, -1
	pop r15
	ret