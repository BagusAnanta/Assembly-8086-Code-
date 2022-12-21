.MODEL SMALL
.CODE
org 100h

Tdata: JMP Proses
       Kal DB '      Lucky Luck Menembak   ',13,10
           DB  'Lebih cepat dari bayangannya !!'
           DB   7,7,'*'


Proses:
        XOR BX,BX 
        MOV AH,02h  ;Servis untuk cetak per karakter
        
Ulang:
        CMP Kal[BX],'*'
        JE Exit    ; Jump ke exit jika BX sama dengan '*'
        
        MOV DL,Kal[BX] ; Kita masukkin karakter dari BX ke DL
        INT 21h ; Cetak karakter
        INC BX ; Increment BX 
        JMP Ulang ; Kita Jump 
        
EXIT: INT 20h ; Kita exit setelah DX == '*'

END     Tdata        
        
                           






