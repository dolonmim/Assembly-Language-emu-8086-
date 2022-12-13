.model small
.stack 100h
.data


c db "THE NUMBER OF 1 BITS IS: $"

.code

main proc
    mov ax,@data
    mov ds, ax
    

    
    call task 
    
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    add cx,48 
    
    mov ax,cx
    
    mov ah,9
    lea dx,c
    int 21h
    
    mov ah,2
    mov dx,cx
    int 21h
    
    mov ah,4ch
    int 21h
    main endp



task proc
    
    xor bx,bx
    
              
     
    mov bx,101100110000101b
    
    mov ch,0
    
    mov cx,0
    for:
    cmp ch,16
    je end_for 
    
    rol bx,1
    jc pr1
    jnc pr2

    inc ch
    jmp for
    
    pr1:
    mov ah,2
    mov dl,'1'
    int 21h
    inc ch
    inc cx
    jmp for
    
    pr2:
    mov ah,2
    mov dl,'0'
    int 21h
    inc ch
    jmp for
    
    
    end_for: 
    
    
    ret
    
    end main
    
    