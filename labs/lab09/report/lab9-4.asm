%include 'in_out.asm'
SECTION .data
msg db "Результат: ",0
SECTION .text
global _start
_start:
pop ecx
pop edx 
sub ecx,1
mov esi, 0 
call next
next:
cmp ecx,0h 
pop eax
call atoi 
mov edi,3
add eax,10
mul edi
add esi,eax
jz _end
loop next 
_end:
mov eax, msg 
call sprint
mov eax, esi 
call iprintLF 
call quit 
ret