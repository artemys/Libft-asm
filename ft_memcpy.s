global _ft_memcpy

section .text
_ft_memcpy:
push rdi
cmp rsi, 0x0
je end
cmp rdx, 0x0
je end
mov rcx, rdx
mov rax, rsi
rep movsb

end:
pop rax
ret
