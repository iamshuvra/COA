.MODEL SMALL
.STACK 100H
.DATA
.CODE

MAIN PROC
    
    MOV AH,1
    INT 21H
    MOV BL,AL 
    SUB BL,48
    INT 21H
    MOV CL,AL
    SUB CL,48
    INT 21H
    SUB AL,48
    
    ADD CL,BL
    CMP CL,9
    JG  TOP1
    JMP TOP
 
    
    TOP1:
    
    SUB CL,9
    SUB CL,1 
    ADD CL,AL
    CMP CL,9
    JG  TOP2
    JMP TOP3
    
    TOP: 
    ADD CL,AL
    CMP CL,9
    JG TOP2
    MOV AH,2
    MOV DL,CL 
    ADD DL,48
    INT 21H
    JMP EXIT 
    
    TOP2: 
   
    SUB CL,9
    SUB CL,1
    MOV AH,2
    MOV DL,50
    INT 21H
    MOV DL,CL
    ADD DL,48
    INT 21H
    JMP EXIT
    
    TOP3:
    MOV AH,2
    MOV DL,49
    INT 21H
    MOV DL,CL
    ADD DL,48
    INT 21H  
    
    
     eXIT:
     
     MOV AH,4CH
     INT 21H
     MAIN ENDP
     END MAIN