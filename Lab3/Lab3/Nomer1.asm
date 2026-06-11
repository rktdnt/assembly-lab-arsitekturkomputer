INCLUDE Irvine32.inc

.data

hasil DWORD ?

.code

Tambah PROC

    mov eax, [esp+4]
    add eax, [esp+8]

    ret 8

Tambah ENDP

main PROC

    push 20
    push 10

    call Tambah

    mov hasil, eax

    mov eax, hasil
    call WriteInt
    call Crlf

    exit

main ENDP

END main