;Finding Smallest in an array of numbers(Storing in memory is not compulsory)
.MODEL small
.STACK
.DATA
array db 120,20,4,3,100   
N db 5
min db ?
.CODE
.STARTUP
mov cx,00h
mov cl,N
mov al,array[si]
dec cl
inc si                           ;cmp = compare
sorting: cmp array[si],al        ;In compare, internal subtraction happens, result is not stored, flags are updated
ja next                          ;next is a label
mov al,array[si]                 ;doing comparision this way using ja also gives the correct answer
next: inc si
loop sorting
mov min,al
END
