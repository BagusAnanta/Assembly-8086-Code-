.MODEL SMALL
.CODE
ORG 100h

Tdata: JMP Proses
        Kal0 DB 'PROSES PENCETAKAN STRING'
             DB 13,10,'$',
        Kal1 DB 'DI BELAKANG TANDA $ TIDAK BISA'
             DB 'DICETAK'
             
             
Proses:
        MOV AH,09h
        MOV DX,OFFSET Kal0
        
        INT 21h
        
        LEA DX,Kal0
        
        INT 21h
        
        LEA DX,Kal0+7
        
        INT 21h
        
        LEA DX,KAL1
        INT 21h
        
        INT 20h
                
               
END     Tdata        
                          