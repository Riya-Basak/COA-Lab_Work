;mov bx,0Ah
mov ah,1
int 21h

and al,0fh
mov bl,al 


XOR AX,AX
	MOV CX,16
TOP:
	ROL BX,1
	JNC NEXT  ;cf=0
      INC AX  ;cf=1
NEXT:         
	LOOP TOP
