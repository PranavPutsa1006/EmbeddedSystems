 AREA dat,DATA,READONLY
string dcb "amrita\0"

 AREA dat1,DATA,READWRITE
destination dcb 0x00
 
 AREA pgm,CODE,READONLY
 ldr r0, =string
 ldr r1, =destination
loop ldrb r2,[r0],#1
 cmp r2,#"a"
 moveq r2,#"z"
 strb r2,[r1],#1
 cmp r2,#"\0"
 bne loop
 strb r2,[r1]
e b e
 end