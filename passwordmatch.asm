   
org 100h
.model small
.stack 100h
.data

msg db "Enter ur password: $" 
msg1 db 0ah,0dh,"Password Matched $"
msg3 db 0dh,0ah, "Password not Matched$" 
    
    
pswrd db "riya$"    
inputmsg db ?
 
.code                 
 
;cr EQU 0dh
;lf EQU 0ah 

main proc
  
  mov ax,@data
  mov ds,ax  
  
  jmp Print
  
  
      
  
       
     
     
     Print:  
   ;string print letter
    lea dx,msg
    mov ah,9
    int 21h
    
       ;user input
    mov ah,10
    int 21h
  ; mov bx,offset   
  
       ;CMP al,[bx]                           
       cmp al,pswrd
    
      je Positive
     
      jne Negative
    int 21h
    
     
    
    
    
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
   
       
