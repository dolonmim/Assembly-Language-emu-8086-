.model small
.stack 100h
.data
x db 'Enter first value $'

 
y db 'Enter second value $'
z db 'The sum is:  $'


.code
main proc
    mov ax,@data
    mov ds,ax
    
    mov ah,9
    lea dx,x
    int 21h
    
    mov ah,1
    int 21h
    mov bl,al 
    
    ;new line
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    mov ah,9
    lea dx,y
    int 21h
    
    mov ah,1
    int 21h
    mov bh,al 
    
    mov ah,9
    lea dx,z
    int 21h
    
   add bl,bh
   sub bl,48
   
   
   ;print 
   mov ah,2
   mov dl,bl
   int 21h
   
    
    exit:
    mov ah,4ch
    int 21h
    main endp
end main
     