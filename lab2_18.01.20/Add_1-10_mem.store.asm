;Adding numbers from 1-10 and Store the result in memory location result
.MODEL small
.STACK
.DATA 
N db 0Ah
result db ?
.CODE
.STARTUP         
    mov al,00h       
    mov cx,00h
    mov dl,01h
    mov cl,N
    clc
addition:
    adc al,dl
    mov result,al
    inc dl
    loop addition
end