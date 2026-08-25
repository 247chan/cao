@Multiple Register Operations: Load registers r0-r3 from memory starting at address in r4 using a single instruction.

.global _start

_start:

LDMIA r4!, {r0-r3}

@LDM → Load Multiple registers from memory.
@IA → Increment After: loads data starting at the address in r4, then increments it after each load.
@r4! → The ! means write back the updated address into r4 after the loads.
@{r0-r3} → Register list — this will load four consecutive words (each 4 bytes) into r0, r1, r2, r3 from memory.