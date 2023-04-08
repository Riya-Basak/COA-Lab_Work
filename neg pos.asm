   
org 100h
.model small
.stack 100h
.data

msg db "Enter a number: $" 
msg1 db 0ah,0dh,"Positive $"
msg3 db 0dh,0ah, "Negative$"
 
.code                 
 
;cr EQU 0dh
;lf EQU 0ah 

main proc
  
  mov ax,@data
  mov ds,ax  
  ;mov cx,5
  jmp Print
  
  
      
  
       
     
     
     Print:  
   ;string print letter
    lea dx,msg
    mov ah,9
    int 21h
    
    ;user input
    mov ah,1
    int 21h 
    mov bh,al
    
    int 21h 
    ;2nd input
    mov bl,al 
  
    
      CMP bh, 30H
      jnle Positive
     
      jl Negative
    int 21h
    
     ;cmp bl,cl
    
    
    
   Positive:
    ;string print letter
    lea dx,msg1
    
    mov ah,9
    int 21h  
           
           jmp exit        
   

   
   Negative:
     ;string print letter
    lea dx,msg3
    mov ah,9
    int 21h  
    
    jmp exit        
        
               
    exit:
               
   mov AH,4ch
       INT 21H  
       main endp         
      End main          
   
       
