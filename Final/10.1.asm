.MODEL SMALL
.STACK 100H

.DATA
M DB "THIS IS FIRST PROCEDURE$"
N DB 0DH,0AH,"THIS IS SECOND PROCEDURE$"
O DB 0DH,0AH,"THIS IS THIRD PROCEDURE$"
.CODE

MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
    
    
    MOV AH,9
    LEA DX,M
    INT 21H
    
    
    CALL SECOND
    CALL THIRD
    
    MOV AH,4CH
    INT 21H
    MAIN ENDP
    

SECOND PROC
    
    
    MOV AH,9
    LEA DX,N
    INT 21H
    
    
    RET
    
    SECOND ENDP



THIRD PROC
    MOV AX,@DATA
    MOV DS,AX
    
    MOV AH,9
    LEA DX,O
    INT 21H
    
    
    RET
    
    THIRD ENDP


END MAIN