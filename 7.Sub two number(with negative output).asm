.MODEL SMALL
.STACK 100H
.DATA 
MSG1 DB "ENTER YOUR VALUES: $" 
MSG2 DB 10,13,"YOUR RESULT IS: $"  ;10,13 FOR NEW LINE(SHORTCUT)
.CODE

MAIN PROC  
    
     MOV AX,@DATA
     MOV DS,AX
     
     LEA DX,MSG1
     MOV AH,9
     INT 21H
     
     MOV AH,1
     INT 21H
     SUB AL,48
     MOV BL,AL  ;STORE THE NUMBER TO BL
     
     MOV AH,1
     INT 21H 
     SUB AL,48
     MOV CL,AL
     
     
     LEA DX,MSG2
     MOV AH,9
     INT 21H
     
     CMP BL,CL
     JGE TOP
     
     MOV AH,2
     MOV DL,45
     INT 21H
     SUB CL,BL
     MOV DL,CL
     ADD DL,48
     INT 21H
     JMP EXIT
     
     TOP:
     SUB BL,CL
     MOV AH,2
     MOV DL,BL
     ADD DL,48
     INT 21H 
     
     
     
    
     EXIT:
     MOV AH,4CH
     INT 21H
     MAIN ENDP
     END MAIN