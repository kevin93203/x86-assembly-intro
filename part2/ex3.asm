global _start

section .text
_start:
	mov ebx, 42	; exit status is 42
	mov eax, 1	; sys_exit system call
	jmp skip	; jump to "skip" label
	mov ebx, 13	; exit status is 13
skip:
	mov ecx, 99	; set ecx to 99
	cmp ecx, 100	; compare ecx to 100
	jl skip2	; jump if less than
	int 0x80	; perform system call

skip2:
	mov ebx, 21	; exit status is 21
	int 0x80	; perform system call
