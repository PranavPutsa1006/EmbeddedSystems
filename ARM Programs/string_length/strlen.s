 AREA dat,DATA,READONLY
high dcb "You have failed this city\0"

 AREA dat1,DATA,READWRITE
count dcb 0x00

 AREA pgm,CODE,READONLY
 ldr r0, =high
 ldr r3, =count
loop ldrb r1,[r0],#1
 cmp r1,#"\0"
 beq e
 add r2,r2,#1
 b loop
e strb r2,[r3]
c b c
 end