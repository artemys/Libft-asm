global _ft_memset

section .text
_ft_memset:
cmp rsi, 0
je end
push rdi
mov rcx, rdx
mov rax, rsi
cld
repne stosb
pop rax
jmp end

end:
ret
