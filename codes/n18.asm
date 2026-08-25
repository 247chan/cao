@Find Maximum: Find the largest value in an array of 8 integers.

.data
list: .word -5,3,10,4,1,-4,23,5

.global _start
_start:
    ldr r0, =list
    ldr r1, [r0]    @array element
    mov r2, r1      @Max variable
    mov r3, #1      @counter for loop

loop:
    cmp r3, #8
    bge end
    ldr r1, [r0, #4]!
    cmp r1, r2
    movgt r2, r1        @update max only when r1 is greater than r2
    add r3, r3, #1
    b loop

end:
    mov r0, #0
    mov r7, #1
    swi #0