.model small
.stack 100h 

.data




.code
main proc
    mov ax,@data
    mov ds,ax 
    
   
    
    mov dl,'M'
    mov ah,2
    int 21h 
    
    mov dl,'I'
    mov ah,2
    int 21h
    
    mov dl,'M'
    mov ah,2
    int 21h
    
    exit:
    mov ah,4ch
    int 21h
    main endp
end main
     