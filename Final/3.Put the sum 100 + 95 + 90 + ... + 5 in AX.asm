mov cx,19  
mov bx,100
mov ax,0



TOP:
  
add ax,bx
sub bx,5



LOOP TOP 

mov ah,2
mov dx,ax
int 21h