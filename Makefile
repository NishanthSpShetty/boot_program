all:
	@echo "Compiling to flat bin file"
	nasm -f bin hello_from_boot.asm -o boot.bin
