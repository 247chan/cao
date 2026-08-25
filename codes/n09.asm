@Simple Loop: Create a loop that counts from 1 to 10, storing each value in r0 during each iteration.

.global _start

_start:

mov r0, #1
mov r1, #10

loop:
cmp r0, r1
bgt end
add r0, r0, #1
b loop

end:
b end
