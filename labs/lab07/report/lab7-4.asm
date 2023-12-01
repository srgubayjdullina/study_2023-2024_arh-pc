%include 'in_out.asm'
section .data
msg1: DB 'Введите переменную x:  ',0h
msg2: DB 'Введите a: ', 0h
msg3: DB 'Результат: ' ,0h
section .bss
x: RESB 80; Значение переменной x, вводимой  клавиатуры
a: RESB 80; Значение переменной a с клавиатуры
section .text
global _start
_start:
; Выражение вычисления
mov eax,msg1
call sprint
mov ecx,x
mov edx,80
call sread
mov eax,x; переменная
call atoi ; ascii кода в число, 'eax=x'
cmp eax,a
jge _motionx
mov eax,msg2
call sprint
mov ecx,a
mov edx,80
call sread
mov eax,a
call atoi ; Вызов подпрограммы перевода символа в число
cmp eax,a
jl _motion
jmp _motion
mov ecx,edx
_motion:
mov edx,5
jmp _end
_motionx:
sub eax,a
jmp _end
_end:
mov ecx, eax
mov eax,msg3
call sprint
mov eax,ecx
call iprintLF
call quit 

