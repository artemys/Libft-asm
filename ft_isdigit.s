global _ft_isdigit

section .text
_ft_isdigit:
cmp rdi, 48
jl end_0
cmp rdi, 57
jg end_0

end_1:
mov rax, 1
ret

end_0:
mov rax, 0
ret

