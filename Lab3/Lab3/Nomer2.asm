INCLUDE Irvine32.inc

.data

hasil DWORD ?

.code

Pangkat PROC

    mov eax, [esp+4]

    imul eax, eax

    ret 4

Pangkat ENDP

main PROC

    push 5

    call Pangkat

    mov hasil, eax

    mov eax, hasil
    call WriteInt
    call Crlf

    exit

main ENDP

END main