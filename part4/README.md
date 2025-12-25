# Part 4: Functions

This part introduces function calls and stack frames in x86 assembly.

## Files
- `ex7.asm`: Demonstrates function call and return, exits with status 42.
- `ex8.asm`: Shows function prologue/epilogue with stack frame, prints "Hi".

## Compilation and Execution
Platform: Linux 32-bit  
Tools: nasm, ld

### ex7.asm
```bash
nasm -f elf32 ex7.asm -o ex7.o
ld -m elf_i386 ex7.o -o ex7
./ex7
echo $?
```
Expected exit code: 42

### ex8.asm
```bash
nasm -f elf32 ex8.asm -o ex8.o
ld -m elf_i386 ex8.o -o ex8
./ex8
```
Output: Hi