.MODEL SMALL
.CODE
ORG 100h    

; Program Mencetak String 


PrintChart:
JMP Proses ; Kita Jump ke proses

; Disini kan ada 13,10,'$' nah maksudnya, 13 itu Carriage Return untuk korsornya dipindah ke awal kolom
; 10 itu Line Feed untuk kasih baris baru jika tulisan sudah ditulis, 07 itu Bell atau berguna untuk membunyikan BEEP, Karena disini ada 5x beep
; Maka 07 nya ditulis sebanyak 5x 

Kal0 DB 'BELAJAR DIWAKTU KECIL ',13,10,'$''SANGAT BAIK' ; Penulisannya harus di bagian yang mau kita potong      
Kal1 DB 'Bagai Mengukir Diatas Batu' 
     DB 13,10,07,07,07,07,07,'$',  ; Disini pula kita tambahkan 13,10 dan bunyi beep sebanyak 5x
     
    

Proses:  ; Label Proses   

MOV AH,09h
MOV DX,OFFSET Kal0

INT 21h
LEA DX,Kal1
INT 21h         
LEA DX,Kal1
INT 21h

INT 20h



END PrintChart
                

