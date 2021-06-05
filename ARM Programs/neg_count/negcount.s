 AREA dat, DATA, READONLY
data dcd 0xAB,0X23,0X87,0X34
len dcd 4


 AREA pgm,CODE, READONLY
 ldr r0, =data
 ldr r1, =len
 mov r5,#0
 ldr r2, [r1]
loop ldr r3, [r0]
 and r3,#8000
 cmp r3,#0
 bl neg
 add r0,r0,#2
 sub r2,r2,#1
 cmp r2,#0
 bne loop
neg add r5,r5,#0
e b e
 end