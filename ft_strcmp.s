global _ft_strcmp

section .text

_ft_strcmp:
	mov rdx, -1

lp:
	inc	rdx
	mov bl, byte[rdi + rdx]
	mov cl, byte[rsi + rdx]
	cmp bl, 0
	je finish0
	cmp cl, 0
	je finish1
	cmp bl, cl
	je	lp
	sub	bl, cl
	movsx rax, bl
	ret

finish0:
	cmp cl, 0
	je finish2
	mov rax, -1
	ret

finish2:
	mov rax, 0
	ret

finish1:
	mov rax, 1
	ret