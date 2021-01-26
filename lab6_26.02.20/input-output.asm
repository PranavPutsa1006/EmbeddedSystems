;Getting a character from keyboard and displaying it in the output console
.model small
.stack
.data
.code
.startup
mov ah,01h     ;01h is code to input a character
int 21h        ;interrupt 21,system stores entered char in al by default
mov dl,al      ;s/m will print only what is in dl
mov ah,02h     ;02h is the code for printing a character
int 21h        ;s/m prints character in dl on console
.exit
end