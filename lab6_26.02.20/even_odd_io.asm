.model small
.stack
.data
num db ?
str1 db 10,"Enter number:$"
str2 db 10,"Even$"
str3 db 10,"Odd$"  
odd db ?
.code
.startup          

mov dx,offset str1
mov ah,09h
int 21h

mov ah,01h
int 21h
mov dl,al

mov num,dl

mov al,num
and al,01h
jnz set

mov dx,offset str2
mov ah,09h
int 21h
    
.exit
set:

mov dx,offset str3
mov ah,09h
int 21h

.exit
end
