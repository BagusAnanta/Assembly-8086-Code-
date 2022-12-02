.MODEL SMALL
.CODE
ORG 100h

PrintChart:
JMP Proses
Kal0 DB 'BELAJAR DIWAKTU KECIL ',13,10,'$''SANGAT BAIK'
Kal1 DB 'Bagai Mengukir Diatas Batu' 
     DB 13,10,07,07,07,07,07,'$',
     
    

Proses:     

MOV AH,09h
MOV DX,OFFSET Kal0

INT 21h
LEA DX,Kal1
INT 21h         
LEA DX,Kal1
INT 21h

INT 20h



END PrintChart
                

