@Conditional Execution: Write code that adds r1 to r0 only if the zero flag is set.

.global _start

_start:

mov r1, #5
mov r0, #5
cmp r1, r0
addeq r0, r0, r1

stop:
B stop