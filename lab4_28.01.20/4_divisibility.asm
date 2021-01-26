;find a given number is divisible by 4. If it's divisible move FFh to a memory location or move 00h
.model small
.stack
.data
num db 23  
check db ?
.code
.startup
mov al,num
and al,03h            ;and with 00000011,i.e.,03 to check if divisible by 4 or not
jnz set
mov check,0FFh    
.exit
set:mov check,00h
.exit
end
