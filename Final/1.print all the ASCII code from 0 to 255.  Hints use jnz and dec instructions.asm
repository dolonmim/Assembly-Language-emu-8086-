mov cx,255  
mov bx,0


TOP:  
mov ah,2
mov dx,bx
int 21h 
inc bx

LOOP TOP