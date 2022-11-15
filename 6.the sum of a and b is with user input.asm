.model small
.stack 100h 

.data
msg1 db 'The sum of $'
msg2 db ' and $' 
msg3 db ' is $'

a dw ?
b dw ?

.code
main proc
    mov ax,@data
    mov ds,ax 
    
   
    
    mov ah,2        ;output
    mov dx,bx
    int 21h
    
                    
    mov ah,1        ;1st input
    int 21h
    mov bx,ax
    
    mov cx,32
    
    mov ah,2        ;output
    mov dx,cx
    int 21h
    
    mov ah,1        ;2nd input
    int 21h
    mov cx,ax
    
    mov ah,2
    mov dl,0ah     ;new line
    int 21h
    mov dl,0dh     ;carries return
    
    lea dx,msg1
    mov ah,9
    int 21h
    
    mov ah,2        ;output
    mov dx,bx
    int 21h 
    
    lea dx,msg2
    mov ah,9
    int 21h
    
    mov ah,2        ;output
    mov dx,cx
    int 21h  
    
    lea dx,msg3
    mov ah,9
    int 21h
    
    mov ah,2         ;output
    add cx,bx
    sub cx,48        
    mov dx,cx
    int 21h
    
    exit:
    mov ah,4ch
    int 21h
    main endp
end main
     