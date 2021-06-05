 AREA dat, DATA, READONLY
input dcb 0x73

 AREA pgm,CODE,READONLY
 ldr r0, =input
 mov r5,#0
 mov r4,#0
 ldrb r1,[r0]
loop and r7,r1,#1
 cmp r7,#0
 bgt c 
 mov r4,r1,lsr #1
 mov r1,r4
 cmp r1,#0
 bne loop
 b e
c add r5,r5,#1
 mov r4,r1,lsr #1
 mov r1,r4
 cmp r1,#0
 bne loop
e b e
 end