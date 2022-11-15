.model small
.stack 100h 

.data

msg db 0ah,0dh,'HELLO WORLD $'




.code
main proc
    mov al,'A'
    mov bl,'B'
    mov ah,2
        cmp al,bl  ;al<=bl?
        jnbe else_
        mov dl,al
        jmp display
      else_:
        mov dl,bl
      display:
        int 21h
    
    exit:
    mov ah,4ch
    int 21h
    main endp
end main
     