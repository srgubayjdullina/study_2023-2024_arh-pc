%include 'in_out.asm' ; подключение внешнего файла
SECTION .data
msg: DB 'Введите переменную x: ',0
rem: DB 'Результат: ',0
SECTION .bss
x: RESB 80; Значение переменной, вводимой с клавиатуры
SECTION .text
GLOBAL _start
_start:
; Вычисление выражения
mov eax, msg
call sprint
mov ecx,x
mov edx,80
call sread
mov eax,x; переменная
call atoi ; ASCII кода в число, 'eax=x'
mov ebx,eax 
mul ebx 
mul ebx
mov ebx,3
div ebx
add eax,21 ; EAX=EBX+21
mov edi,eax ; запись результата вычисления в 'ed'
; Вызов результата на экран
mov eax,rem ; вызов подпрограммы печати
call sprint ; сообщения 'Результат: '
mov eax,edi ; вызов подпрограммы печати значения
call iprint ; из 'edi' в виде символов
call quit ; вызов подпрограммы завершения