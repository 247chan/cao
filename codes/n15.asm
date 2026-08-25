@Rotate Operations: Rotate r0 right by 4 bits using ROR.

.global _start

_start:
    mov r0, #16
    ror r0, r0, #4
    
    mov r7, #1
    mov r0, #0
    swi #0