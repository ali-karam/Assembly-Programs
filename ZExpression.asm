
.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword

.data
	x SWORD ?
	y SWORD ?
	z SWORD ?
.code
main proc
; PART A)
	mov x, 10
	mov y, 10
	mov ax, x
	mov bx, y
	add ax, 10
	sub bx, 20
	mul bx
	mov z, ax

; EAX = 0019FF38 EBX = 002AFFF6 ECX = 00401005 EDX = 00400013 ESI = 00401005 EDI = 00401005 EIP = 00401040 ESP = 0019FF74 EBP = 0019FF80 EFL = 00000A87 
; Overflow, carry, interrupt, and parity flags were set

; PART B)
	mov x, 10
	mov y, 20
	mov ax, x
	mov bx, y
	add ax, 10
	sub bx, 20
	mul bx
	mov z, ax

; EAX = 00190000 EBX = 00330000 ECX = 00401005 EDX = 00400000 ESI = 00401005 EDI = 00401005 EIP = 00401070 ESP = 0019FF74 EBP = 0019FF80 EFL = 00000246 
; Interrupt, zero, and parity flags were set

	invoke ExitProcess,0
main endp
end main