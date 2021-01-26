.model small
.data
array dw ?
str2 db 20," modified array:$"
str1 db 15," Enter 3 elements:$"
str3 db 15,"  Enter number:$"
len db 5h
char db ?
.code
.startup

mov dx,offset str1
inc dx
mov ah,09h
int 21h

mov cx,0000h
mov cl,03h

ip:
mov dx,offset str3
inc dx
mov ah,09h
int 21h

mov ax,0h
mov ah,01h
int 21h
mov ah,00h
sub al,30h
das

mov array[si],ax
inc si
inc si

loop ip
            
mov cx,0000h
mov cl,03h
mov si,0h

mov dx,offset str2
inc dx
mov ah,09h
int 21h

op:

mov ax,0000h
mov ax,array[si]
mov bx,ax
mul ax
mul bx
aam
add ax,3030h
;daa
xchg al,ah
mov array[si],ax
inc si
inc si


loop op

mov array[si],'$'

mov dx,offset array 
mov ah,09h
int 21h

.exit
end