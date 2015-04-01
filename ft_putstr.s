%define MACH_SYSCALL(nb)    0x2000000 | nb
%define WRITE                4
global _ft_putstr
extern	_ft_strlen

section .data
buff: db '(null)', 10
size equ $ - buff

section .text
_ft_putstr:
cmp rdi, 0
je null
push rdi
call _ft_strlen
pop rsi
mov rdi, 1
mov rdx, rax
mov rax, MACH_SYSCALL(WRITE)
syscall
jmp end

null:
mov rdi, 1
lea rsi, [rel buff]
mov rdx, size
mov rax, MACH_SYSCALL(WRITE)
syscall
jmp end

end:
ret
