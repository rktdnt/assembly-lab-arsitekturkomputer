INCLUDE Irvine32.inc

.data

msg BYTE "Masukkan angka : ",0

.code

main PROC

    mov edx, OFFSET msg
    call WriteString

    call ReadInt

    mov ecx, eax
    mov eax, 1

ulang:

    imul eax, ecx
    loop ulang

    call WriteInt
    call Crlf

    exit

main ENDP
END main