%include 'in_out.asm'
SECTION .data
filename db 'myname.txt', 0h
msg1 db 'Как вас зовут?', 0h 
msg2 db 'Меня зовут ', 0h
SECTION .bss
myname resb 255 
SECTION .text
global _start
_start:

mov eax,msg1
call sprintLF

mov ecx, myname
mov edx, 255
call sread

mov ecx, 0770o
mov ebx, filename
mov eax,8
int 80h

mov ecx, 2 
mov ebx, filename
mov eax, 5
int 80h

mov esi, eax
mov eax, msg2
call slen 

mov edx, eax
mov ecx, msg2
mov ebx, esi
mov eax, 4
int 80h

mov eax,myname
call slen
mov edx, eax
mov ecx,myname
mov ebx, esi
mov eax, 4
int 80h

mov ebx,esi
mov eax, 6
int 80h
call quit