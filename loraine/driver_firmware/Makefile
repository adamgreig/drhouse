TARGET = driver
SRCS = main

MMCPU = atmega32u4
F_CPU = 16000000

PORT = /dev/ttyACM1
 
 
all: hex
 
hex: elf
	avr-objcopy -O ihex -R .eeprom $(TARGET).elf $(TARGET).hex
	
elf: $(SRCS:=.o)
	avr-gcc -Wall -mmcu=$(MMCPU) -DF_CPU=$(F_CPU) -Os -std=gnu99 -o $(TARGET).elf $(SRCS:=.o)
 
.c.o:
	avr-gcc -Wall -mmcu=$(MMCPU) -DF_CPU=$(F_CPU) -Os -std=gnu99 -c $<

fuses:
	avrdude -p $(MMCPU) -c stk500v2 -P /dev/ttyUSB0 -U lfuse:w:0xef:m -U hfuse:w:0x9f:m -U efuse:w:0xff:m
	
upload: hex
	python reset.py $(PORT)
	sleep 2
	avrdude -p $(MMCPU) -c avr109 -P $(PORT) -b 57600 -U flash:w:$(TARGET).hex 
 
clean:
	rm $(SRCS:=.o) $(TARGET).hex $(TARGET).elf

