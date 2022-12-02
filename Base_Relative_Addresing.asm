.MODEL SMALL
.CODE
ORG 100h

; Ingat jangan pisahkan titik dua (:) dari nama label !

TData:    ;Titik dua jangan dipisah !
JMP Proses 
Kalimat DB 'NYAMUK GORENG'

Proses:  
XOR BX,BX
MOV CX,13

Ulang:
MOV DL,Kalimat[BX]
MOV AH,02

INT 21h
INC BX
LOOP Ulang
INT 20h

END TData