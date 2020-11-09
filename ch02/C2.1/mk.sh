arm-linux-gnueabi-as -o ts.o ts.s
arm-linux-gnueabi-ld -T t.ld -o t.elf ts.o
arm-linux-gnueabi-nm t.elf
arm-linux-gnueabi-objcopy -O binary t.elf t.bin
# qemu-system-arm -M versatilepb -kernel t.bin -nographic -serial /dev/null
# info registers
# xp /wd 0x1001C
