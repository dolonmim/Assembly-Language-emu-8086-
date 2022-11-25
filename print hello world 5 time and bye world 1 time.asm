.model small
.stack 100h 

.data

msg db 0ah,0dh, 'HELLO WORLD $' 
msg2 db 0ah,0dh, 'BYE WORLD $'




.code
main proc
    mov ax,@data
    mov ds,ax 
    
    mov cx,5
    
    print_loop:
    
    lea dx,msg
    mov ah,9
    int 21h
    dec cx
    
    jg print_loop
    
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h 
    
    
    print_loop2:
    
    lea dx,msg2
    mov ah,9
    int 21h
    dec cx
    
    jg print_loop2
    
    exit:
    mov ah,4ch
    int 21h
    main endp
end main