.model small
.stack 100h 

.data

msg db 0ah,0dh,'HELLO WORLD $'




.code
main proc
    mov ax,@data
    mov ds,ax 
    
    mov cx,1
    
    print_loop:
    
    lea dx,msg
    mov ah,9
    int 21h
    INC cx
    
    jg print_loop
    
    exit:
    mov ah,4ch
    int 21h
    main endp
end main
     