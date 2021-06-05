;Finding Biggest in an array of numbers(Storing in memory is not compulsory)
.MODEL small
.STACK
.DATA
array db 7,20,4,3,100   
N db 5
max db ?
.CODE
.STARTUP
mov cx,00h
mov cl,N
mov al,array[si]
dec cl
inc si                           ;cmp = compare
sorting: cmp al,array[si]        ;In compare, internal subtraction happens, result is not stored, flags are updated
ja next                          ;next is a label
mov al,array[si]                 ;ja-jump if above,this is similar to if-else
next: inc si
loop sorting
mov max,al
END
