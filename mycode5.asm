
org 100h
 MOV AX, 0B800h     ; set AX to hexadecimal value of B800h. 
MOV DS, AX         ; copy value of AX to DS. 
MOV CL, 'Z'        ; set CL to ASCII code of 'A', it is 41h. 
MOV CH, 1101_1111b ; set CH to binary value. 
MOV BX, 15Eh       ; set BX to 15Eh. 
MOV [BX], CX       ; copy contents of CX to memory at B800:015E 


ret




