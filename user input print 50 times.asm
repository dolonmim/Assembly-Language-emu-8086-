.model small
.stack 100h 

.data

msg db  'Enter a character: $' 
msg2 db ?




.code
main proc
    mov ax,@data
    mov ds,ax 
    
    mov cx,50
    
    
    lea dx,msg
    mov ah,9
    int 21h
    
    mov ah,1
    int 21h
    mov msg2,al
    
   
    
    print_loop2:
    
    mov ah,2
    mov dl,msg2
    int 21h
    dec cx
    
    
    jg print_loop2
    
    exit:
    mov ah,4ch
    int 21h
    main endp
end main