global _ft_isspace

section .text
_ft_isspace:
cmp rdi, 9
je end_1
cmp rdi, 10
je end_1
cmp rdi, 11
je end_1
cmp rdi, 12
je end_1
cmp rdi, 13
je end_1
cmp rdi, 32
je end_1
je end_0

end_1:
mov rax, 1
je end

end_0:
mov rax, 0

end:
ret
