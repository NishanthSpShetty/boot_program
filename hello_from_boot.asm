org 0x7c00
bits 16
Start:
	mov si,str
	call print
	hlt
print:
	mov ah,0x0E
	mov bh,0x00
	mov bl,0x07
next_char:
	mov al,[si]
	inc si
	or al,al ;check if its 0
	je done	
	int 10h
	jmp next_char
done:
	ret

str: db 'Hello nishanth from bootloader',0;

times 510-($-$$) db 0

dw 0xAA55
