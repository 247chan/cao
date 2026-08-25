@1.Register Loading: Write instructions to load the immediate value 42 into register r0, then move it to r1.

.global _start

_start:

mov r0, #42
mov r1, r0

end:
mov r7, #1
mov r0, #0
swi #0