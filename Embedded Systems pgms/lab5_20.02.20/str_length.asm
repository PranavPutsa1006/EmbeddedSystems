.model small
.stack
.data
str1 db "amrita$"
strlen db 0h
.code
.startup
mov si, offset str1
check:cmp [si], '$'
jz exit
inc strlen
inc si
jmp check
exit:
.exit
end
