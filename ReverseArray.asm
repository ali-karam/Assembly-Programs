
.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword

.data
	myArray DWORD 1,2,3,4
.code
main proc
	mov edi, OFFSET myArray
	mov esi, OFFSET myArray
	add esi, SIZEOF myArray
	sub esi, TYPE myArray
	mov ecx, LENGTHOF myArray
	sar ecx, 1

	L1:
	mov eax, [edi]
	mov ebx, [esi]
	xchg eax, ebx
	mov [edi], eax
	mov [esi], ebx
	add edi, TYPE myArray
	sub esi, TYPE myArray

	loop L1

	invoke ExitProcess,0
main endp
end main