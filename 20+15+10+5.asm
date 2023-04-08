
org 100h
.model small
.stack 100h
.data



 a dw ?
.code                 
  

main proc
  
  mov ax,@data
  mov ds,ax  
  mov cx,4  
  mov bx,0
  mov ax,20
  
  
 
  
       
     
     
     Sum:  
  
   
    
    
    add bx,ax
    sub ax,5
    mov a,bx
    loop sum
   
   
   Exit:
       
    int 21h  
    
    
   
   mov AH,4ch
   
  endp