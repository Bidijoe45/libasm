global	_ft_strlen

section	.text

_ft_strlen:
	mov rax, -1

lp:
	inc rax
	cmp byte [rdi + rax], 0
	jne lp
	ret