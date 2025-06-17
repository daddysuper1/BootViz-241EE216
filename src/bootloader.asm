org 0x7C00               ; Tell assembler this code starts at 0x7C00

start:
    xor ax, ax           ; AX = 0, clear AX
    mov ds, ax           ; Set DS (data segment) = 0x0000

    mov si, message      ; SI = address of the message

print_loop:
    lodsb                ; Load byte at [SI] into AL, then SI++
    cmp al, 0            ; Check if we hit the null terminator
    je done              ; If zero, we're done printing

    mov ah, 0x0E         ; BIOS teletype function
    int 0x10             ; Print character in AL
    jmp print_loop       ; Repeat for next character

done:
    cli                  ; Clear interrupts
    hlt                  ; Halt the CPU

; Message stored in memory
message:
    db 'Hello, Bootloader!', 0  ; 0 = null terminator

; Fill rest of the boot sector with zeros
times 510 - ($ - $$) db 0
dw 0xAA55               ; Boot signature (must be last 2 bytes)
