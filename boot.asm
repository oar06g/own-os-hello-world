[org 0x7c00]
bits 16

start:
	mov ah, 0x0E
	mov si, msg

print_message:
	lodsb
	cmp al, 0
	je done
	int 0x10
	jmp print_message
done:
	hlt

msg db "Welcome to My OS!", 0

times 510-($-$$) db 0
dw 0xAA55
