global _start

_start:
	call func
	mov eax, 1	; sys_exit system call
	mov ebx, 0	; exit status 0
	int 0x80	; perform system call

func:
	push ebp		; push ebp to the stack -> memorize the ebp -> prevent ebp from being overwirte -> nested function calls can be used
	mov ebp, esp		; ebp: stack base pointer -> set the stack top to ebp
	sub esp, 3		; allocate 3 bytes on stack
	mov [esp], byte 'H'	
	mov [esp+1], byte 'i'
	mov [esp+2], byte 0x0a
	mov eax, 4		; sys_write system call
	mov ebx, 1		; stdout file descriptor
	mov ecx, esp		; bytes(address) to write
	mov edx, 3		; number of bytes to write
	int 0x80		; perform system call
	mov esp, ebp		; deallocate 3 bytes from the stack
	pop ebp			; restore ebp
	ret			; return
