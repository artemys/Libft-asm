global _ft_strcat

section .text
_ft_strcat:
push rdi
cmp rsi, 0
je end

go_end:
cmp [rdi], byte 0
je cat
inc rdi
jmp go_end

cat:
cmp [rsi], byte 0
je end
mov r11, [rsi]
mov [rdi], r11
inc rsi
inc rdi
jmp cat

end: 
pop rax
ret

