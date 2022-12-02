.MODEL SMALL
.CODE
ORG 100h

Proses:
MOV AH,02h
MOV DL,'D'
MOV CX,15d

Looping:
INT 21h
INC DL
LOOP Looping
INT 20h

END Proses