.model small
.stack 100h
.data
input db "Enter Input: $"
output db 0Dh,0Ah, "Output: "

.code
main proc


mov ax,@data
mov ds,ax

mov ah,09h
lea dx,input
int 21h


xor cx,cx
mov ah,1
int 21h

while_:
cmp al,0dh
je newline
push ax
inc cx
int 21h
jmp while_

newline:
mov ah,2
mov dl,0dh
int 21h
mov dl,0ah
int 21h



jcxz end
 
 

pop_: 

pop dx
int 21h
loop pop_
end: