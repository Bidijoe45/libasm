global _ft_strcpy

section	.text

_ft_strcpy:
	mov rax, rdi
	mov rdx, -1
	
lp:
	inc rdx
	mov cl, BYTE[rsi + rdx]
	mov BYTE[rdi + rdx], cl
	cmp BYTE[rdi + rdx], 0
	jne lp
	ret