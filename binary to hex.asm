.model small
.stack 100h
.data  
msg1 db 'Type a binary number upto 16 digits:$'  
msg2 db 10,13,'in hex it is:$'
.code 
main proc    
    mov ax,@data   
    mov ds,ax    
    
    lea dx,msg1    
    mov ah,9    
    int 21h       
    xor bx,bx    
    mov ah,1    
    int 21h  
    
     
    input:    
    cmp al,0dh    
    je output_    
    and al,0fh    
    shl bx,1    
    or  bl,al    
    int 21h     
   
    jmp input 
    
     
    output_:   
    lea dx,msg2
    mov ah,9   
    int 21h    
    mov cx,4
    
    convert:      
    mov dl,bh    
    shr dl,4    
     
    cmp dl,9    
    jbe num    
    add dl,55d    
    jmp display
    
    num:   
    add dl,30h 
    
    
    display:      
    mov ah,2     
    int 21h     
    rcl bx,4     
    
    loop convert
    
    main endp
end main
