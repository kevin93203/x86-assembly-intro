# Part 3: Data and Stack

This part covers data sections and stack manipulation in x86 assembly.

## Files
- `ex5.asm`: Modifies a string in the data section and prints "Hello!".
- `ex6.asm`: Builds a string on the stack and prints "Hey!".

## Compilation and Execution
Platform: Linux 32-bit  
Tools: nasm, ld

### ex5.asm
```bash
nasm -f elf32 ex5.asm -o ex5.o
ld -m elf_i386 ex5.o -o ex5
./ex5
```
Output: Hello!

### ex6.asm
```bash
nasm -f elf32 ex6.asm -o ex6.o
ld -m elf_i386 ex6.o -o ex6
./ex6
```
Output: Hey!