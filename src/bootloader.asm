org 0x7C00                 

start:
    mov ah, 0x0E           

    mov al, 'P'
    int 0x10
    mov al, 'r'
    int 0x10
    mov al, 'e'
    int 0x10
    mov al, 's'
    int 0x10
    mov al, 's'
    int 0x10
    mov al, ' '
    int 0x10
    mov al, 'a'
    int 0x10
    mov al, ' '
    int 0x10
    mov al, 'k'
    int 0x10
    mov al, 'e'
    int 0x10
    mov al, 'y'
    int 0x10

    mov ah, 0x00           
    int 0x16               


    mov ah, 0x0E
    int 0x10               

    cli                    
    hlt                    

times 510 - ($ - $$) db 0
dw 0xAA55                 
