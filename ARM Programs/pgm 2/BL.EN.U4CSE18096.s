 AREA dat, DATA, READONLY
src dcb 2,34,86,57,65,14
len dcb 6

 AREA dat1, DATA, READWRITE
biggest dcb 0x00

 AREA pgm,CODE,READONLY
 ldr r0, =src
 ldr r1, =biggest
 ldr r2, =len
 ldrb r7,[r2]
 ldrb r8,[r0]
 strb r8,[r1]
 sub r7,r7,#1
loop cmp r7,#0
 beq e
 ldrb r4,[r0],#1
 ldrb r5,[r1]
 ldrb r6,[r0]
 cmp r5,r6
 ble c
 sub r7,r7,#1
 b loop
c mov r5,r6
 sub r7,r7,#1
 strb r5,[r1]
 b loop
e b e
 end