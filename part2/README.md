# Part 2: Control Flow

This part demonstrates control flow instructions like jumps and comparisons in x86 assembly.

## Files
- `ex3.asm`: Demonstrates unconditional jump (jmp) and conditional jump (jl), exits with status 21.
- `ex4.asm`: A loop that doubles a value 4 times, exits with status 16.

## Compilation and Execution
Platform: Linux 32-bit  
Tools: nasm, ld

### ex3.asm
```bash
nasm -f elf32 ex3.asm -o ex3.o
ld -m elf_i386 ex3.o -o ex3
./ex3
echo $?
```
Expected exit code: 21

### ex4.asm
```bash
nasm -f elf32 ex4.asm -o ex4.o
ld -m elf_i386 ex4.o -o ex4
./ex4
echo $?
```
Expected exit code: 16