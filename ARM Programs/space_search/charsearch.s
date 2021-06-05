 AREA dat,DATA,READONLY
string dcb "Wingardium leviosa\0"

 AREA dat1,DATA,READWRITE
Found dcb 0x00

 AREA pgm,CODE,READONLY
 ldr r0, =string
 ldr r1, =Found
loop ldrb r2,[r0],#1
 cmp r2,#" "
 beq c
 add r3,r3,#1
 b loop
c add r3,r3,#1
 strb r3,[r1]
e b e
 end