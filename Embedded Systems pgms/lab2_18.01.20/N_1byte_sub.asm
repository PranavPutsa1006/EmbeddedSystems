;Subtracting N single byte numbers starting with memory location num
.MODEL small
.STACK
.DATA 
N db 4h
num db 5h,3h,2h,4h
.CODE
.STARTUP         
    mov al,00h       
    mov cx,00h
    mov cl,N
    mov bx,offset num
subtraction:sub al,[bx]
    inc bx
    loop subtraction
end