.model small
.stack 100h
.data
msg1 dw "Please enter a string: $"
msg2 dw ?  
msg3 dw ?
msg4 dw ?
msg5 dw "After Reverse: $"
 
.code
main proc
    mov ax,@DATA
    mov ds, ax
    
    mov ah,9
    lea dx,msg1
    int 21h
    
    mov ah,1    
    int 21h    
   push ax
    
    mov ah,1    
    int 21h    
    push ax
    
    mov ah,1    
    int 21h    
     push ax
    
    ;new line
    mov ah,2
    mov dl,0ah  
    int 21h
    mov dl,0dh  
    int 21h
    
     mov ah,9
    lea dx,msg5
    int 21h
    
    pop ax
    mov ah,2    
    mov dx,ax
    int 21h
    
    
    
   pop ax
    mov ah,2    
    mov dx,ax
    int 21h
    
    pop ax
    mov ah,2    
    mov dx,ax
    int 21h
    
    exit:
    mov ah,4ch
    int 21h
    main endp
end main