.MODEL small
.STACK
.DATA
n db 5
num db 2,3,1,5,4
.CODE
.STARTUP
mov cx,0
mov cl,n
mov ah,n
mov bx, offset num
pre:
mov bx,0
mov cl, n
des:
mov al,num[si]
cmp al,num[bx]
jb next
mov dh, num[si]
mov dl,num[bx]
mov num[si], dl
mov num[bx],dh 
next:
inc bx
loop des
mov cl,ah
dec ah
inc si
loop pre
end