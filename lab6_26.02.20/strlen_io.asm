.model small
.stack
.data
str1 db 10,?
str db 10,"Enter string:$"
strlen db 0h
.code
.startup

mov dx,offset str
mov ah,09h
int 21h

mov dx,offset str1
mov ah,0Ah
int 21h

mov si, offset str1
check:cmp [si], '$'
jz exit
inc strlen
inc si
jmp check
exit:
            
mov dl,strlen
sub dl,2
add dl,30h     
mov ah,02h
int 21h

.exit
end
