;Subtracting N single byte numbers stored in arrays num1 and num2.Store the result in memory location sum
.MODEL small
.STACK
.DATA 
N db 4h
num1 db 0c0h,2h,3h,4h
num2 db 40h,6h,7h,8h
dif db ?
.CODE
.STARTUP         
    mov al,00h       
    mov cx,00h
    mov cl,N
    mov si,00h
    mov di,00h
    clc
subtraction:mov al,num1[si]
    mov ah,num2[si]
    sbb al,ah
    mov dif[di],al
    inc si
    inc di
    loop subtraction
end