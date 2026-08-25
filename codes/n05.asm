@Barrel Shifter: Add r1 to r2 shifted left by 2 positions, store result in r0.

.global _start

_start:

mov r1, #5
mov r2, #2
lsl r2, #2
add r0, r1, r2
