TARGET = node
SRCS = node

MMCPU = attiny2313
F_CPU = 16000000

PROG = usbtiny
 
 
all: hex
 
hex: elf
	avr-objcopy -O ihex -R .eeprom $(TARGET).elf $(TARGET).hex
	
elf: $(SRCS:=.o)
	avr-gcc -Wall -mmcu=$(MMCPU) -DF_CPU=$(F_CPU) -Os -std=gnu99 -o $(TARGET).elf $(SRCS:=.o)
 
.c.o:
	avr-gcc -Wall -mmcu=$(MMCPU) -DF_CPU=$(F_CPU) -Os -funroll-loops -std=gnu99 -c $<

fuses:
	avrdude -p $(MMCPU) -c $(PROG) -U lfuse:w:0xef:m -U hfuse:w:0x9f:m -U efuse:w:0xff:m

id:
	avrdude -p $(MMCPU) -c $(PROG) -U eeprom:w:$(NODE_ID):m
	
upload: hex
	avrdude -p $(MMCPU) -c $(PROG) -U flash:w:$(TARGET).hex 
 
clean:
	rm $(SRCS:=.o) $(TARGET).hex $(TARGET).elf

