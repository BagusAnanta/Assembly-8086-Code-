.MODEL SMALL
.CODE
ORG 100h

Tdata:
        JMP Proses
        BilA DB 66
        BilB DB 66
        Kal0 DB 'Bilangan A lebih kecil dari'
             DB 'Bilangan B $'
        Kal1 DB 'Bilangan A sama dengan bilangan'
             DB 'B $'
        Kal2 DB 'Bilangan A lebih besar dari'
             DB 'bilangan B $'

Proses:
        MOV AL,BilA ; Kita masukkin BilA ke Register AL
        CMP AL,BilB ; Kita bandingkan BilA dan BilB
        
        JB AKecil ; Jika BilA < BilB 
        
        JE Sama   ; Jika BilA == BilB
        
        JA ABesar ; Jika BilA > BilB
        
        
AKecil:
        LEA DX,Kal0
        JMP Cetak
        

Sama: 
        LEA DX,Kal1
        JMP Cetak
        
ABesar:
        LEA DX,Kal2
        JMP Cetak
        
Cetak:
        MOV AH,09 ; Servis untuk cetak kalimat
        
INT 21h

    EXIT: INT 20h ; Back to Dos
    
END Tdata                                                                   
    