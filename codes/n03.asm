@Memory Load/Store: Load a word from memory address stored in r3 into r0, then store r0's contents to the address in r4.

.global _start

_start:

ldr r3, =0x00000030
ldr r0, [r3]
ldr r4, =0x00000034
str r0, [r4]
