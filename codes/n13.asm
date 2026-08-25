@Bit Operations: Use AND, ORR, and EOR to manipulate bits in r0.

.global _start

_start:
    mov r0, #0b10110101
    and r1, r0, #0b00001111
    orr r2, r0, #0b00001000
    eor r3, r0, #0b11110000

    b end

end:
    mov r7, #1
    mov r0, #0
    swi #0