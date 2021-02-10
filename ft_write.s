global _ft_write

section .text

extern ___error

_ft_write:
	mov rax, 0x02000004
	syscall
	jc error
	ret

error:
	push rbp
	mov	r11, rax
	call ___error
	mov	[rax], r11
	mov	rax, -1
	pop rbp
	ret
