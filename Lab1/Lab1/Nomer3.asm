; MASM Program - Membandingkan dua angka
; Lab01 Arsitektur Komputer 202A/B

INCLUDE Irvine32.inc

.data

n1 BYTE "Masukkan angka 1 : ",0
n2 BYTE "Masukkan angka 2 : ",0

num1 DWORD ?
num2 DWORD ?

msg1 BYTE "Angka 1 lebih besar",0
msg2 BYTE "Angka 2 lebih besar",0
msg3 BYTE "Angka sama besar",0

.code

main PROC

    mov edx, OFFSET n1
    call WriteString
    call ReadDec
    mov num1, eax

    mov edx, OFFSET n2
    call WriteString
    call ReadDec
    mov num2, eax

    mov eax, num2
    cmp num1, eax

    ja satu
    jb dua
    je sama

satu:
    mov edx, OFFSET msg1
    call WriteString
    call Crlf
    exit

dua:
    mov edx, OFFSET msg2
    call WriteString
    call Crlf
    exit

sama:
    mov edx, OFFSET msg3
    call WriteString
    call Crlf
    exit

main ENDP
END main