global _start

_start:
	call func	; push eip (next instruction address) to stack and then jump to func
	mov eax, 1	; sys_exit system call
	int 0x80	; perform system call

func:
	mov ebx, 42	; exit status 42
	;pop eax		; pop stack and mov to eax (get the return address)
	;jmp eax		; jump to the address
	ret			; same as: pop eax  ->  jmp eax
