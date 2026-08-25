@Addressing Modes: What's the difference between ldr r0, =0x1000 and ldr r0, [r1]?

.global _start

_start:

ldr r0, =0x1000 @Store the address (the hexadecimal value 1000) at r0

ldr r1, =0x2000 
ldr r0, [r1] @Load content from the memory address which is stored in r1