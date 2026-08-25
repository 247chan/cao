@Bit Field Operations: Extract bits 8-15 from r0 and store in r1.

.global _start

_start:
    mov r0, #1500
    lsr r1, r0, #8
    and r1, r1, #0xFF

    b end

end:
    mov r7, #1
    mov r0, #0
    swi #0