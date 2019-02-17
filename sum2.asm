include emu8086.inc
org 100h

.data
    a db 0
    b db 0
    msg1 db '?$'
    msg2 db 'THE SUM OF $'
    msg3 db ' AND $'
    msg4 db ' IS $'
.code

    mov ah,1
    int 21h          ;input save in 'al'
    mov a,al
    
    mov ah,1
    int 21h
    mov b,al
    
    add al,a           ; adding a and b in a  
    mov ah,0           ; ax = ah, al 
    aaa               ;adjust after addition
    
    mov bx,ax          ;bx = bh, bl
    add bh,30h
    add bl,30h
    
    gotoxy 0,1
    
    mov ah,9             ;print msg1
    lea dx,msg1
    int 21h
    
    mov ah,2
    mov dl,a              ;print a
    int 21h
    
    mov ah,2
    mov dl,b
    int 21h
    
    gotoxy 0,2
    
    mov ah,9             ;print msg2
    lea dx,msg2
    int 21h
    
    mov ah,2
    mov dl,a              ;print a
    int 21h
    
    mov ah,9             ;print msg3
    lea dx,msg3
    int 21h 
    
    mov ah,2
    mov dl,b              ;print b
    int 21h
    
    mov ah,9             ;print msg4
    lea dx,msg4
    int 21h
    
    mov ah,2
    mov dl,bh           ;showing sum
    int 21h 
    mov ah,2
    mov dl,bl
    int 21h
    
    mov ah,4ch
    int 21h
