;Array sorting
.MODEL small
.STACK
.DATA
array db 7,20,4,3,100   
N db 5
t db ?
.CODE
.STARTUP
mov cx,00h
mov dx,00h
mov cl,N
mov dl,N
mov al,array[si]
dec cl
dec dl
inc si
sort:                           
sorting:cmp al,array[si]        
jbe swap
ja incr
incr:
    inc si
    mov al,array[si]                 
swap: mov t,al
    mov al,array[si]
    mov dh,t
    dec si
    mov array[si],al
    inc si
    mov array[si],dh
    inc di
mov al,array[si]
inc si
loop sort
END
