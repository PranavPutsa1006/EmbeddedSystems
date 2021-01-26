;program to find a given string is palindrome or not.
.model small
.stack
.data
str db 10,?
str1 db 15,"Enter string:$"
str2 db 15," Palindrome$"
str3 db 15," Not Palindrome$"
strlen dw 0h
res db 1h
.code
.startup

mov dx,offset str1
inc dx
mov ah,09h
int 21h

mov dx,offset str
mov ah,0Ah
int 21h

mov si, offset str
inc si
inc si
check:cmp [si], '$'
jz len
inc strlen
inc si
jmp check
len:
mov ax,strlen
mov cx,2
div cl
mov cl,al
inc cl
mov si,offset str
add si,2
mov di,si
add di,strlen
dec di
mov dx,ds
mov es,dx
pal:
mov bl,[si]
cmp bl,[di]
jnz exit
inc si
dec di
loop pal
jmp exit1
exit:
mov dx,offset str3
inc dx
mov ah,09h
int 21h
.exit
exit1:
mov dx,offset str2
inc dx
mov ah,09h
int 21h
.exit
end