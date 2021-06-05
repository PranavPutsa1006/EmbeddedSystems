;find a given signed number is positive or negative. If it's negative move 01h to dl or move 00h to dl
.model small
.stack
.data
num db -96  
.code
.startup
mov al,num
and al,080h            ;and with 10000000,i.e.,80 to check if divisible by 4 or not
jnz set
mov dl,00h    
.exit
set:mov dl,01h
.exit
end