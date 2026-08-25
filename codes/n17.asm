@String Copy: Copy a null-terminated string from source (r0) to destination (r1).

.data
text: .asciz "hello world"
copy_text: .space 20

.global _start
_start:
    ldr r0, =text
    ldr r1, =copy_text

loop:
    ldrb r2, [r0], #1       @post-indexing, r0 is incresed by 1 after copying
    strb r2, [r1], #1
    cmp r2, #0              @Z flag is set 1 if r2 is 0, terminates the loop
    bne loop

end:
    mov r0, #0
    mov r7, #1
    swi #0
