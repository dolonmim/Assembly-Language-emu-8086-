.model small
.stack 100h
.data 
    box  db '**********',0dh, 0ah,'$'
    box1 db '*        *',0dh, 0ah,'$'
    box2 db '*        *',0dh, 0ah,'$'
    box3 db '*        *',0dh, 0ah,'$'
    box4 db '*  MIM   *',0dh, 0ah,'$'
    box5 db '*        *',0dh, 0ah,'$'
    box6 db '*        *',0dh, 0ah,'$'
    box7 db '*        *',0dh, 0ah,'$'
    box8 db '*        *',0dh, 0ah,'$'
    box9 db '**********',0dh, 0ah,'$'
.code  
main proc
    mov ax, @data 
    mov ds,ax

    mov ah,9
    lea dx,box
    int 21h 

    mov ah,9
    lea dx,box1
    int 21h
 
    mov ah,9 
    lea dx,box2
    int 21h
 
    mov ah,9
    lea dx,box3
    int 21h
 
    mov ah,9
    lea dx,box4
    int 21h

    mov ah,9
    lea dx,box5
    int 21h

    mov ah,9
    lea dx,box6
    int 21h

    mov ah,9
    lea dx,box7
    int 21h

    mov ah,9
    lea dx,box8
    int 21h

    mov ah,9
    lea dx,box9
    int 21h

    exit:
    mov ah,4ch
    int 21h
    main endp
end main

