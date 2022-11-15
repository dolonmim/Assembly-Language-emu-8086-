.model small
.stack 100h 

.data

msg1 db 0ah,0dh,'HELLO WORLD $'
msg2 db 0ah,0dh,'Bye WORLD $'




.code
main proc
    mov cx,255
    mov bl,0
    
  top:
    mov ah,2
    mov dl,bl
    int 21h
    inc bl
    dec dx
    jnz top
   
    
    exit:
    mov ah,4ch
    int 21h
    main endp
end main
     