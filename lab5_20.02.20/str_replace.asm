;program to Replace the character 'a' with 'z' in the given string.
.model small
.stack
.data
str db "malayalam$"
strlen db 0h
.code
.startup
mov si, offset str
check:cmp [si], '$'
jz len
inc strlen
inc si
jmp check
len:mov cl,strlen
mov si,offset str
mov dx,ds
mov es,dx
replace:
cmp [si],'a'
jnz incr
mov [si],'z'
incr:inc si
cmp cl,0
jz exit1
loop replace
jmp exit1
exit1:
.exit
end