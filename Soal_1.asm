.MODEL SMALL
.CODE
ORG 100h

Char:
JMP Proses 
chart DB 'DEFGHIJKLMNOPQR'

Proses:
LEA BX,chart
MOV CX,15

LoopChar:
MOV DL,[BX]
MOV AH,02h

INT 21h    
INC BX
LOOP LoopChar 
INT 20h

END Char