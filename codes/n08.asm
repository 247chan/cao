@Conditional Branch: Compare r0 and r1, branch to label "greater" if r0 > r1, otherwise branch to "less_equal".

.global _start

_start:

mov r0, #2
mov r1, #3
cmp r0, r1
bgt greater
ble less_equal

greater:
mov r3, r0
b end

less_equal:
mov r3, r1

end:
B end
