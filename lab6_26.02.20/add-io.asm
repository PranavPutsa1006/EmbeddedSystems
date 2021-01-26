.model small
.data
str1 db 10,"Enter num1:$"
str2 db 10,"Enter num2:$"
num1 db 10,?
num2 db 10,?
.code
.startup
mov dx,offset str1
inc dx
mov ah,09h
int 21h
mov dx,offset num1
mov ah,0Ah
int 21h
mov bl,[dx]
mov dx,offset str2
mov ah,09h
int 21h
mov dx,offset num1
mov ah,0Ah
int 21h
add [dx],bl
aaa
mov dl,al
mov ah,09h
int 21h
.exit
end
