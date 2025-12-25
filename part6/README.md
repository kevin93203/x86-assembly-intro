# Part 6: Mixed C and Assembly

This part demonstrates linking C code with assembly functions.

## Files
- `add42.h`: Header declaring the add42 function.
- `add42.asm`: Assembly implementation of add42 that adds 42 to its input.
- `main.c`: C main function that calls add42(30) and prints the result (72).

## Compilation and Execution
Platform: Linux 32-bit  
Tools: nasm, gcc

```bash
nasm -f elf32 add42.asm -o add42.o
gcc -m32 main.c add42.o -o program
./program
```
Output: Result: 72