
org 100h
.model small
.stack 100h
.data

msg db "Hello World$" 
msg1 db "Bye World$" 
 
.code                 
 
cr EQU 0dh
lf EQU 0ah 

main proc
  
  mov ax,@data
  mov ds,ax  
  mov cx,5
  jnz Print
  jmp Exit
  
       
     
     
     Print:  
   ;string print letter
    lea dx,msg
    mov ah,9
    int 21h
    
   
             
    ;newline
    mov ah,2
    mov dl,cr
    int 21h
    mov dl,lf
    int 21h
    
   
    dec cx
    jnz Print 
    
    
   
   
   
   Exit:
        ;string print letter
    lea dx,msg1
    mov ah,9
    int 21h  
    
    
   
   mov AH,4ch
   
  endp