;program to find a given string is palindrome or not.
.model small
.stack
.data
str db "malaysia$"
strlen dw 0h
res db 1h
.code
.startup
mov si, offset str
check:cmp [si], '$'
jz len
inc strlen
inc si
jmp check
len:mov ax,strlen
mov cx,2
div cl
mov cl,al
inc cl
mov si,offset str
mov di,si
add di,strlen
dec di
mov dx,ds
mov es,dx
pal:cmp si,di
mov bl,[si]
cmp bl,[di]
jnz exit
inc si
dec di
loop pal
jmp exit1
exit:
mov res,0h
exit1:
.exit
end