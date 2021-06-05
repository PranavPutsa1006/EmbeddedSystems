.model small
.stack
.data
str1 db "amrita$" 
str2 db "abcdef$"
strlen1 db 0h
strlen2 db 0h
equal db 1h
.code
.startup 
;Finding length of the first string
mov si, offset str1
check1:cmp [si], '$' 
jz len2
inc strlen1
inc si
jmp check1                          
;Finding length of the second string
len2: mov si, offset str2
check2:cmp [si], '$' 
jz compare
inc strlen2
inc si
jmp check2     
;Comparing the Strings
compare:mov dl, strlen2
mov cl,strlen1   
inc cl
cmp strlen1, dl
jnz exit1 
mov dx, ds
mov es, dx
mov si, offset str1
mov di, offset str2
loop1:cmpsb
jnz exit1  
loop loop1
exit1: cmp cl,0h
jz exit
mov equal, 0h
exit:
.exit
end

