@2.Simple Addition: Add the contents of registers r1 and r2, storing the result in r0.

.global _start

_start:

mov r1, #5
mov r2, #6
add r0, r1, r2