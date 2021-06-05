.MODEL small
.STACK
.DATA
.CODE
mov ax,1010b
mov bx,0110b
and ax,bx 
mov ax,0110b
mov bx,1101b
or ax,bx
mov ax,0110b
mov bx,1101b
xor ax,bx
end