global _ft_isprint

section .text
_ft_isprint:
cmp rdi, 32
jl end_0
cmp rdi, 126
jg end_0

end_1:
mov rax, 1
ret

end_0:
mov rax, 0
ret
