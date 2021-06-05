;Adding 2 single byte numbers:Add two 1 byte numbers stored in memory location num1 and num2
.MODEL small
.STACK
.DATA
num1 db 01h
num2 db 02h
.CODE
.STARTUP         ;When startup is not used,proper 
mov bl,num1      ; execution does not happen in case,memory is used 
add bl,num2
end