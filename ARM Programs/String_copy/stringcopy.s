 AREA dat, DATA, READONLY
src dcb "Pranav\0"

 AREA dat1, DATA, READWRITE
dest dcb "blah"

 AREA pgm,CODE,READONLY
 ldr r0, =src
 ldr r1, =dest
loop ldrb r2,[r0],#1
 cmp r2,#"\0"
 bne c
 b e
c strb r2,[r1],#1
 b loop
e b e
 end