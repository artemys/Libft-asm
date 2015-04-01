global _ft_strdup
extern _malloc
extern _ft_strlen
extern _ft_memcpy

section .text
_ft_strdup:
push rbp
mov rbp, rsp
push rdi
call _ft_strlen
push rax
mov rdi, rax
call _malloc 
pop rdx
pop rsi
mov rdi, rax
call _ft_memcpy
jmp end

end:
mov rsp, rbp
pop rbp
ret
