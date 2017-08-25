
TITLE MASM Template						(main.asm)

; Description:
; Adding 4 humbers in two sets then subtracting it the two sets 
; assing them to the eax value.


INCLUDE Irvine32.inc
.data
	num1	DWORD 122
	num2	DWORD 31
	num3	DWORD 60
	num4	DWORD 42
    
.code
main PROC
	mov eax, num1
	mov ebx, num2
	mov ecx, num3
	mov edx, num4
	CALL DumpRegs
	call waitmsg
	
	add eax, ebx	    ; Adds the values to the group 1
	add ecx, edx	    ; Adds the values to the group 2
	sub eax, ecx	    ; Subtract from the both of the groups
	mov num1, eax	    ; Adds the value to eax
	
	CALL DumpRegs
	call waitmsg
	INVOKE ExitProcess, 0
main ENDP
END main