global _ft_strclr
extern _ft_bzero
extern _ft_strlen

section .text
_ft_strclr: 
cmp rdi, 0
je end
push rdi
call _ft_strlen
mov rsi, rax
pop rdi
call _ft_bzero

end:
ret
