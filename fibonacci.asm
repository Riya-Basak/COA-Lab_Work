;fibonacci series

org 100h
.model small
.stack 100h
.data



 a dw ? 
 b dw ?
.code                 
  

main proc
  
  mov ax,@data
  mov ds,ax  
  mov cx,6
  mov bx,0
  mov ax,1
  
  
 
  
       
     
     
     Sum:  

    
    add bx,ax
          
    mov a,bx
    
    inc ax       
    mov b,ax 
    loop sum
   
   
   Exit:
       
    int 21h  
    
    
   
   mov AH,4ch
   
  endp