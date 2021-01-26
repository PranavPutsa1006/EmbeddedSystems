;sorting in descending order
.MODEL small
.DATA
array db 7,20,4,3,100   
N db 04h
.STACK
.CODE
.STARTUP 

mov dl,00h
mov dh,00h
mov bl,00h

outerloop:

mov bl,N
sub bl,dl
sub bl,1

innerloop:


;swap
mov al,array[si]
inc si
mov ah,array[si]
cmp al,ah
ja next    

mov array[si],al
dec si
mov array[si],ah
inc si

next:
inc dl
cmp dl,bl;
ja next1

loop innerloop

next1:
inc dh 
mov si,00h
mov al,00h
mov N,04h
mov ah,00h
mov dl,00h
mov bl,00h

cmp dh,N ;
ja next2

loop outerloop

next2:
 
END