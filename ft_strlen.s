global _ft_strlen

section .text
_ft_strlen:
cmp rdi, 0
je end
sub rcx, rcx
not rcx
cld 
mov rax, 0
repne scasb
not rcx
dec rcx
mov rax, rcx

end:
ret
