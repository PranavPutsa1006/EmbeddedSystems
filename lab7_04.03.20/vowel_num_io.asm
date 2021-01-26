;Getting a string from keyboard and display number of vowels on the output console
.model small
.data
str db 15,?
str1 db 15,"Enter string:$"
str2 db 20," number of vowels:$"
strlen db 0h
char db ?
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
add si,2
check:cmp [si], '$'
jz vowels
inc strlen
inc si
jmp check

vowels:
mov si,offset str
add si,2
mov bl,0
jmp check1

incr:
inc si
inc bl
dec strlen
cmp strlen,0h
jz op
jmp check1       
       
check1:cmp [si],'a'
jz incr

check2:cmp [si],'e'
jz incr

check3:cmp [si],'i'
jz incr

check4:cmp [si],'o'
jz incr

check5:cmp [si],'u'
jz incr 

incr1:
inc si
dec strlen
cmp strlen,0h
jz op
jmp check1

op:
mov dx,offset str2
inc dx
mov ah,09h
int 21h

mov dl,bl
add dl,30h
mov ah,02h
int 21h
exit:
.exit
.exit
end
