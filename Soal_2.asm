.MODEL SMALL
.CODE
ORG 100h

PrintChart:
JMP Proses
Kalimat DB 'Saya Mahasiswa Politeknik Negeri Sriwijaya'   

Proses:
MOV AX,1300h
MOV BL,11101101b    ; Give Colour text or Background
MOV DL,00           ; Position In x Text
MOV DH,00           ; Position In y Text
MOV CX,42           ; Text length

LEA BP,Kalimat      ; Allocation Kalimat
INT 10h
INT 20h 

END PrintChart


