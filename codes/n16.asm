@Array Sum: Sum 5 word values from an array whose base address is in r0.

.global _start

_start:
    ldr r0, =array
    mov r1, #5
    mov r2, #0
    mov r4, #0

sum_loop:
    ldr r3, [r0]
    add r2, r2, r3
    add r0, r0, #4      @pointer arithmetic
    add r4, r4, #1
    cmp r4, r1
    blt sum_loop
    b end

end:
    mov r0, #0
    mov r7, #1
    swi #0

.data
array: .word 10, 20, 30, 40, 50

