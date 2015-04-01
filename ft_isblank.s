global _ft_isblank

section .text
_ft_isblank:
cmp rdi, 32
je end_1
cmp rdi, 9
je end_1
jmp end_0

end_1:
mov rax, 1
jmp end

end_0:
mov rax, 0
jmp end

end:
ret
