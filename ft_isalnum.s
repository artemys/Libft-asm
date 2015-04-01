global _ft_isalnum
extern _ft_isalpha
extern _ft_isdigit

section .text
_ft_isalnum:
call _ft_isdigit
cmp rax, 0
je t_isalpha
jmp end_1

t_isalpha:
call _ft_isalpha
cmp rax, 1
je end_1
jmp end_0

end_1:
mov rax, 1
ret

end_0:
mov rax, 0
ret
