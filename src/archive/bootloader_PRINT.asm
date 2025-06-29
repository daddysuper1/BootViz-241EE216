org 0x7C00               

start:
    xor ax, ax           
    mov ds, ax           

    mov si, message      

print_loop:
    lodsb                
    cmp al, 0            
    je done              

    mov ah, 0x0E         
    int 0x10             
    jmp print_loop       

done:
    cli                  
    hlt                  


message:
    db 'Hello, Bootloader!', 0  ; 0 = null terminator


times 510 - ($ - $$) db 0
dw 0xAA55               
