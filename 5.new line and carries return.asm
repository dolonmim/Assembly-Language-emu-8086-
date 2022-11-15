.MODEL SMALL
.STACK 100H
.CODE

MAIN PROC
    MOV AH,1         ;INPUT
    INT 21H
    MOV BX,AX 
                     
                       
    MOV AH,2         ;NEW LINE
    MOV DL,0AH
    INT 21H
    
    MOV DL,0DH        ;CARRIES RETURN
    INT 21H
    
    MOV AH,2
    MOV DX,BX
    INT 21H
    
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN
    