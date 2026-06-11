.386
.model flat, stdcall
.stack 1024

ExitProcess proto, dwExitCode:dword

.data

nilaiA DWORD 40
nilaiB DWORD 8
nilaiC DWORD 1
nilaiD DWORD 3
nilaiE DWORD 5

Y DWORD ?

.code

main proc

    mov eax, nilaiA
    sub eax, nilaiB

    mov ebx, nilaiD
    imul ebx, nilaiE

    add ebx, nilaiC

    xor edx, edx
    div ebx

    mov Y, eax

    invoke ExitProcess, 0

main endp
end main