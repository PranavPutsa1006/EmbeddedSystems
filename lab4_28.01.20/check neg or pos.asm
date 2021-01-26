.model small
.stack
.data
num db 40
.code
.startup
mov dx,00h
mov al,num
rcl al,1
jb exit
mov dl,00h
.exit
exit:mov dl,01h
.exit
End
