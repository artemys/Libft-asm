global _ft_isalpha

section .text
_ft_isalpha:
cmp rdi, 65
jl end_0 
cmp rdi, 90
jle end_1
cmp rdi, 97
jl end_0
cmp rdi, 122
jle end_1

end_0:
mov rax, 0
ret

end_1:
mov rax, 1
ret

