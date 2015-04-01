global _ft_isascii

section .text
_ft_isascii:
cmp rdi, 0
jl end_0
cmp rdi, 127
jg end_0

end_1:
mov rax, 1
ret

end_0:
mov rax, 0
ret
