.MODEL SMALL
.CODE
ORG 100h

TData:    ; Untuk titik dua tidak boleh terpisah (TData : = Salah) harus Harus bersatu dengan textnya 
          ; (TData: = Benar) Karena program tidak berjalan jika titik dua terpisah

JMP  Proses 
Ka10 DB ' Menulis Kalimat dengan'
     DB ' Atributnya'
                               
                               
                               
Proses:              
MOV  AX,1300h 

MOV  BL,10010101b
MOV  BH,00
MOV  DL,20
MOV  DH,12
MOV  CX,35 

LEA  BP,Ka10
INT  10h    

INT  20h
        
END  TData                                     
             