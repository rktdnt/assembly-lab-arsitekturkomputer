; Lab01 Arsitektur Komputer 202A/B
.386
.model flat, stdcall
.stack 4096
ExitProcess proto, dwExitCode: dword

.data
sum DWORD ?

.code
main proc
    mov eax, 7      ; Menyimpan nilai 7 ke register EAX
    add eax, 4      ; EAX = 7 + 4 = 11
    add eax, 9      ; EAX = 11 + 9 = 20
    sub eax, 6      ; EAX = 20 - 6 = 14
    add eax, 2      ; EAX = 14 + 2 = 16

    mov sum, eax    ; Menyimpan hasil akhir (16 desimal) ke variabel sum

    invoke ExitProcess, 0
main endp
end main