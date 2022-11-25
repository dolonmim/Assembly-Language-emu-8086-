.model small
.stack 100h  

.data  

msg1 DB 'TYPE A CHARACTER:$'
msg2 DB 0DH,0AH,'THE ASCII CODE OF $'
msg3 DB ' IN BINARY IS $' 

.code 
 

main proc
 
 
 mov ax,@data    
 mov ds,ax  
 
 lea dx,msg1 ;print mas1
 mov ah,9
 int 21h 
 
 mov ah,1 ;input
 int 21h
 mov bl,al  
 
 
 lea dx,msg2  ;print msg2
 mov ah,9
 int 21h
 
 mov dl,bl
 mov ah,2
 int 21h
 
 lea dx,msg3  ;print msg23
 mov ah,9
 int 21h
 
 
 mov cx,8 ; limit for loop i<=8 for 8 bit 
 mov bh,0
 
 
 binary:
 
 shl bl,1 
 
 jnc zero; CF=0 
 
 inc bh
 mov dl,31h
 jmp display
 
 
 zero:
 
 mov dl,30h
 
 
 display:
 mov ah,2
 int 21h 
 
 
loop binary ;loop will be terminated while cx>8
 
 









