.section .data
ask_name: .ascii "Enter your name : "
ask_name_len= .-ask_name

display_first: .ascii "\nHello, "
display_first_len= .-display_first

display_last: .ascii " !"
display_last_len= .-display_last

name: .space 20

.section .text
.global _start

_start:
    mov r7, #4
    mov r0, #1
    ldr r1, =ask_name
    mov r2, #ask_name_len
    swi #0

    mov r7, #3
    mov r0, #0
    ldr r1, =name
    mov r2, #19
    swi #0
    mov r3, r0
    sub r3, r3, #1

    mov r7, #4
    mov r0, #1
    ldr r1, =display_first
    mov r2, #display_first_len
    swi #0

    mov r7, #4
    mov r0, #1
    ldr r1, =name
    mov r2, r3
    swi #0

    mov r7, #4
    mov r0, #1
    ldr r1, =display_last
    mov r2, #display_last_len
    swi #0

    mov r7, #1
    mov r0, #0
    swi #0

stop:
    B stop
