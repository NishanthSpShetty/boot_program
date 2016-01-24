all:
	@echo "Compiling to flat bin file"
	nasm -f bin hello_from_boot.asm -o boot.bin

floppy:all
	dd if=/dev/zero of=floppy.img bs=512 count=2800
	dd if=boot.bin of=floppy.img

qemu:floppy
	qemu-system-i386 floppy.img
