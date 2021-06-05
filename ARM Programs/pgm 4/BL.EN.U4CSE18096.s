 AREA dat1, DATA, READONLY
string1 dcb "Amrit\0"
string2 dcb "Amrita\0"

 AREA pgm, CODE, READONLY
 ldr r0, =string1
 ldr r1, =string2
 mov r9, r0
 mov r10, r1

;length of strings
loop1 ldrb r2, [r0], #1
 add r3, r3, #1
 cmp r2, #"\0"
 bne loop1
 sub r3, r3, #1
 mov r4, r3

 mov r3, #-1
loop2 ldrb r2, [r1], #1
 add r3, r3, #1
 cmp r2, #"\0"
 bne loop2
 mov r5, r3

;greater str1
 mov r7, #0
 mov r8, #0
 mov r6,#0
 cmp r4, r5
greater movgt r6, #0x01
 bhi final

;equal
 cmp r4, r5
 beq exit1

;small str2
 mov r7, #0
 mov r8, #0
 mov r6,#0
small movlt r7, #0x01
 b final
 
;length of string1:r4, string2:r5
exit1
 mov r7, #0
 mov r8, #0
 mov r6,#0
loop ldrb r0, [r9], #1
 ldrb r1, [r10], #1

 cmp r0, r1
 bgt greater;gt char
 blt small;lt char

 cmp r0, #"\0"
 bne loop
 mov r8, #0x01

final
e b e
 end
