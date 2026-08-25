.data
array:  .word 3, 20, 7, 8, 15, 6, 9, 4
multiplier: .word 3
compare_num: .word 50

.global _start
_start:
    ldr r0, =array
    ldr r2, =multiplier
    ldr r2, [r2]        @multiplier
    ldr r3, =compare_num
    ldr r3, [r3]        @compare_num

    mov r4, #0          @result
    mov r6, #0          @counter
    mov r7, #8          @array length

loop:
    cmp r6, r7
    bge check_flag
    ldr r1, [r0], #4
    and r8, r1, #1
    cmp r8, #0
    bne odd

even:
    rsb r1, r1, #0
    b add_result

odd:   
    mul r1, r1, r2

add_result:
    add r4, r4, r1
    add r6, r6, #1
    b loop

check_flag:
    cmp r4, r3
    movgt r5, #1
    movle r5, #0

end:
    mov r7, #1
    mov r0, #0
    swi #0