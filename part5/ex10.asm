global main
extern printf   ;use c printf

section .note.GNU-stack noexec	; tell linker the stack cannot be executed

section .data
        msg db "Testing %i...", 0x0a, 0x00      ; 0x00: null terminator in c

section .text
main:
        ; function prologue
	push ebp
        mov ebp, esp

	push 123        ; second parameter of printf (4 bytes)
        ; push msg        ; first parameter of printf  (4 bytes)
	; pie-safe
	mov eax, msg
	push eax
        call printf     ; call printf
	add esp, 8	; clean up stack (8 bytes for parameters)

	mov eax, 0      ; return value of main

	; function epilogue
	; mov esp, ebp
        ; pop ebp
	leave
	ret
