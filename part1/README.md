# Part 1: Basic System Calls

This part introduces basic x86 assembly programming with system calls on Linux.

## Files
- `ex1.asm`: A simple program that exits with status code 13 (42 - 29).
- `ex2.asm`: Prints "Hello, World!" to stdout and exits.

## Compilation and Execution
Platform: Linux 32-bit  
Tools: nasm, ld

### ex1.asm
```bash
nasm -f elf32 ex1.asm -o ex1.o
ld -m elf_i386 ex1.o -o ex1
./ex1
echo $?
```
Expected exit code: 13

### ex2.asm
```bash
nasm -f elf32 ex2.asm -o ex2.o
ld -m elf_i386 ex2.o -o ex2
./ex2
```
Output: Hello, World!