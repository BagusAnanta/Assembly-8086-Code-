.MODEL SMALL
.CODE
ORG 100h   

; Untuk titik dua tidak boleh terpisah (TData : = Salah) harus Harus bersatu dengan textnya 
; (TData: = Benar) Karena program tidak berjalan jika titik dua terpisah

TData: 
JMP Proses 
Kal DB 'ABCDE' 


Proses:
LEA BX,Kal
MOV CX,2

Ulang:
MOV DL,[BX]
MOV AH,02h

INT 21h
ADD BX,2
LOOP Ulang
INT 20h

END TData