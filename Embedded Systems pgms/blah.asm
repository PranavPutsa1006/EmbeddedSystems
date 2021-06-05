.model small
.stack
.data      
arr dw 50 dup (?) 
n db ?                               
.code
.startup
mov ah,01h
int 21h 
sub al,30h
mov n,al  
mov bl,al
add bl,1
mov cx,0
mov cl,n
mov ah,01h
;Taking the input into array
input: 
mov ah,01h  
int 21h  
aaa
cbw 
mov arr[si],ax 
inc si
inc si
loop input
;Finding the cube
mov si,0  
mov cx,0
mov cl,n 
cubeArray: 
mov cx,0
mov cl,2 
mov ax,arr[si]
cube:     
mul arr[si] 
loop cube:  
mov arr[si],ax
inc si
inc si
dec bl
mov cl,bl
loop cubeArray



mov si,0  
mov cx,0
mov cl,n             
output:     
mov ax,arr[si]
;convert into ascii values
add ax,3030h 
;output(units digit)
mov bx,ax
mov dl,bh
mov ah,02h
int 21h 
;output(tens digit)
mov dl,bl
mov ah,02h
int 21h
inc si
loop output
 


end