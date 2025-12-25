global _start
section .data
	addr db "yellow", 0x0a

	; data types
	; db is 1 byte
	name1 db "string"
	name2 db 0xff
	name3 db 100
	; dw is 2bytes
	name4 dw 1000
	; dd is 4 bytes
	name5 dd 100000

section .text
_start:
	mov [addr], byte 'H'	; replace 'y' by 'H' 
	mov [addr+5], byte '!'	; replace 'w' by '!'
	mov eax, 4		; sys_wrote system call
	mov ebx, 1		; stdout file descriptor
	mov ecx, addr		; bytes to write
	mov edx, 7		; number of bytes to write
	int 0x80		; perform system call
	mov eax, 1		; sys_exit system call
	mov ebx, 0		; exit status is 0
	int 0x80		; perform system call
