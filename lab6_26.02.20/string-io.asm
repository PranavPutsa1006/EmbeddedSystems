;Getting a string from keyboard and displaying it in the output console
.model small
.data
input db 10,?
strlen db ?
.code
.startup
mov dx,offset input
mov ah,0Ah
int 21h
inc dx
inc dx
mov ah,09h
int 21h
.exit
end
