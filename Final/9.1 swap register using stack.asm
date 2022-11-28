.model small
.stack 100h
.code
main proc
    mov ax,5
    mov bx,6
    
    push ax
    push bx
    
    pop ax ;set ax to the value of bx
    pop bx ;set bx to the valua of bx
    
    exit:
    
    int 21h
    main endp
end main