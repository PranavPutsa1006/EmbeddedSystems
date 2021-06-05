;Adding all the numbers stored in odd memory location of a given array of numbers stored in num and store the result in memory location sum
.MODEL small
.STACK
.DATA 
N db 05h
num db 2h,4h,5h,7h,9h,10h,1h,4h,8h,7h
sum db ?
.CODE
.STARTUP         
    mov al,00h       
    mov cx,00h
    mov cl,N
    mov si,00h
    mov di,00h
    clc
addition:adc al,num[si]
    mov sum,al
    inc si
    inc si
    inc di
    loop addition
end