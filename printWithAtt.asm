.MODEL SMALL
.CODE
ORG 100h

TData : JMP Proses 
        Kal0 DB 'Menulis Kalimat dengan'
             Db 'Atributnya'
             
Proses:
MOV AX,1300h

MOV BL,95h  ;Atribut
MOV BH,00    ; Halaman Tampil
MOV DL,00    ; Posisi X
MOV DH,00    ; Posisi y
MOV CX,32    ; Panjang 

LEA BP,Kal0
INT 10h
INT 20h

END TData             