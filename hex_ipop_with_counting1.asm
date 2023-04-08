 .model small
.stack 100h
.data  
  RESULT DB ?
input db "Enter Input: $"
output db 0Dh,0Ah, "Output: $"

.code
main proc


mov ax,@data
mov ds,ax

mov ah,09h
lea dx,input
int 21h


xor bx,bx 
mov cx,16

userinput:
mov ah,1
int 21h

cmp al,0dh
je output_

and al,0fh
shl bx,1
or bl,al
;int 21h
          
loop userinput    

output_:
mov ah,09h
lea dx,output 
int 21h       



mov cx,16

outputcheck:
shl bx,1
jnc printZero 
;jc printOne 

mov dl,49
mov ah,2h
int 21h

INC RESULT
 CMP CX,16
              
jmp dis              



printZero:
mov dl,48
mov ah,2h
int 21h
        
;printOne:

       
dis:
loop outputcheck  

  
	

   
mov ah,4ch
int 21h   
main endp