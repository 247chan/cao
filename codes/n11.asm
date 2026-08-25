@Push/Pop: Push registers r0-r3 onto the stack, then restore them.

.global _start

_start:
    mov r0, #1
    mov r1, #2
    mov r2, #3
    mov r3, #4
    bl pushing
    mov r7, #1
    mov r0, #0
    swi #0

pushing:
    push {r0, r1, r2, r3}
    mov r0, #10
    mov r1, #10
    mov r2, #10
    pop {r0, r1, r2, r3}
    bx lr
