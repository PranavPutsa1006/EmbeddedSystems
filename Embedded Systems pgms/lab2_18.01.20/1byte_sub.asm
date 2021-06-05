;Subtracting 2 single byte numbers:Subtract two 1 byte numbers stored in memory location num1 and num2
.MODEL small
.STACK
.DATA
num1 db 02h
num2 db 01h
.CODE
.STARTUP         
mov bl,num1       
sub bl,num2
end