.model small
.stack 100h
.code
main proc
    mov ax,1234h
    mov bx,5678h
    mov cx,9abch
    
    push ax
    push bx
    
    xchg ax,cx
    
    pop cx
    push ax
    pop bx
    
    push cx
    push bx
    
    pop cx
    pop bx
    pop ax
    
    exit:
    
    int 21h
    main endp
end main