# Part 5: Calling C Functions

This part shows how to call C library functions from assembly.

## Files
- `ex10.asm`: A main function that calls printf to print "Testing 123...".

## Compilation and Execution
Platform: Linux 32-bit  
Tools: nasm, ld, gcc

```bash
nasm -f elf32 ex10.asm -o ex10.o
gcc -m32 ex10.o -o ex10
./ex10
```
Output: Testing 123...