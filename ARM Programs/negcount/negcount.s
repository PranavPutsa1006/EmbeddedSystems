 AREA dat, DATA, READONLY
data dcd 0xAB,-23,96,-34
len dcd 4


 AREA pgm,CODE, READONLY
 ldr r0, =data
 ldr r1, =len
 mov r5,#0
 mov r4,#0x80000000
 ldr r2, [r1]
loop ldr r3, [r0]
 and r3,r4
 add r0,r0,#4
 sub r2,r2,#1
 cmp r3,#0
 bne neg
 cmp r2,#0
 bne loop
 cmp r2,#0
 beq e
neg add r5,r5,#1
 cmp r2,#0
 bne loop
 cmp r2,#0
 beq e 
e b e
 end