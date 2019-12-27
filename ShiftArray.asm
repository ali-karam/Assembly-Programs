
.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword

.data
	myArray SBYTE 11, 12, -13, 14, 15
.code
main proc
	mov edi, OFFSET myArray
	mov esi, OFFSET myArray
	add esi, SIZEOF myArray
	sub esi, TYPE myArray
	mov ecx, LENGTHOF myArray - 1

	L1:
	mov al, [edi]
	mov bl, [esi]
	xchg al, bl
	mov [edi], al
	mov [esi], bl
	add edi, TYPE myArray
	
	loop L1

	invoke ExitProcess,0
main endp
end main