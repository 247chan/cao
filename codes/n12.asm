@Function Prologue/Epilogue: Write the standard entry and exit code for a function that uses r4-r7.

@Prologue - Function reserves/saves registers it will use
@body - Freely uses reserved regs for its own work
@Epilogue - Function restores registers back

@Prolouge/Epilogue need "lr" to be saved & restored.

.global _start

_start:
    mov r0, #1
    mov r1, #2
    mov r2, #3
    bl func
    b end

func:
    push {r4, r5, r6, r7, lr}

    mov r4, #10
    mov r5, #20
    mov r6, #30
    mov r7, #40
    add r0, r4, r5 

    pop {r4, r5, r6, r7, lr}
    bx lr

end:
    mov r7, #1
    mov r0, #0
    swi #0
