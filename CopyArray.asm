; Copying a Word Array

.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword

.data
source word 1,2,3,4,5,6,7,8,9,10
count = LENGTHOF source 
target dword count DUP(?)

.code
main proc
mov esi, 0
mov edi, 0
mov ecx, count

L1:
	movzx eax, source[esi]
	mov target[edi], eax
	add esi, 2
	add edi, 4
	loop L1

main endp
end main