 AREA dat, DATA, READONLY
source DCD 0xABCD

 AREA dat1, DATA, READWRITE
dest DCD 0x00

 AREA pgm, CODE, READONLY
 ldr r0, =source
 ldr r1, =dest
 ldr r2, [r0]
 str r2, [r1]
e b e
 end