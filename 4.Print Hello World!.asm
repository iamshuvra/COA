.MODEL SMALL
.STACK 100H
.DATA 
MSG1 DB "HELLO WORLD!$"    ;must use $ before ending
.CODE

MAIN PROC  
    
    
    
    
     MOV AX,@DATA
     MOV DS,AX             ;ITS DATA SAGEMENT(DS)
     
     LEA DX,MSG1
     MOV AH,9              ;USE AH,9 FOR STRING OUTPUT
     INT 21H 
     
     
     
     
     
    
     EXIT:
     MOV AH,4CH
     INT 21H
     MAIN ENDP
     END MAIN
