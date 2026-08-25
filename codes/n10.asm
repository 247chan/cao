@Branch with Link: Call a subroutine at label "my_function" and ensure you can return.

.global _start

_start:
    mov r0, #5
    bl my_function
    b end

my_function:
    add r0, r0, #3
    bx lr

end:
    b end
