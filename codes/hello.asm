.section .data
msg: .ascii "Hello, Welcome to assembly!"
msg_len= .-msg

.section .text
.global _start

_start:
    mov r7, #4
    mov r0, #1
    ldr r1, =msg
    mov r2, #msg_len
    swi #0

stop:
    B stop
