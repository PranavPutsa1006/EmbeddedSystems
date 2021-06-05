 AREA dat, DATA, READONLY
src1 dcb 21,34,86,57,65
src2 dcb 62,76,92,47,14
n dcb 5

 AREA dat1, DATA, READWRITE
result dcb 0,0,0,0,0

 AREA pgm,CODE,READONLY
 ldr r0, =src1
 ldr r1, =src2
 ldr r2, =result
 ldr r3, =n
 ldrb r7,[r3]
loop ldrb r4,[r0],#1
 ldrb r5,[r1],#1
 cmp r7,#0
 beq e
 add r6,r4,r5
 sub r7,r7,#1
 strb r6,[r2],#1
 b loop
e b e
 end