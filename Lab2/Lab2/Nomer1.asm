INCLUDE Irvine32.inc

.data

r1 DWORD ?
r2 DWORD ?
r3 DWORD ?

msg1 BYTE "Masukkan angka 1 : ",0
msg2 BYTE "Masukkan angka 2 : ",0

.code

main PROC

    ; Input r1
    mov edx, OFFSET msg1
    call WriteString
    call ReadInt
    mov r1, eax

    ; Input r2
    mov edx, OFFSET msg2
    call WriteString
    call ReadInt
    mov r2, eax

start_loop:

    ; r3 = r2 - r1
    mov eax, r2
    sub eax, r1
    mov r3, eax

    ; jika r3 < 0 keluar
    cmp eax, 0
    jl end_program

    ; tampilkan r1
    mov eax, r1
    call WriteInt
    call Crlf

    ; jika r3 = 0 keluar
    cmp r3, 0
    je end_program

    ; r1 = r1 + 1
    inc r1

    jmp start_loop

end_program:

    exit

main ENDP
END main