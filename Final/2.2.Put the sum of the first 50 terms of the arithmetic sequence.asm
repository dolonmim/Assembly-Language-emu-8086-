mov cx,49  
mov bx,0
;mov ax,0



TOP:
  
add bx,cx



LOOP TOP 

mov ah,2
mov dx,bx
int 21h