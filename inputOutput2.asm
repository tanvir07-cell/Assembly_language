.MODEL SMALL
.STACK 100H
.CODE

MAIN PROC
    ;take an user single input   
    MOV AH,1
    INT 21H
    MOV BL,AL
    
    ;display a new line
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H
    
    ;display a character
    MOV AH,2
    MOV DL,BL
    INT 21H
    
    
    
    
    MAIN ENDP
     END MAIN