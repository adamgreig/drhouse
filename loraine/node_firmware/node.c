#include <stdint.h>
#include <avr/io.h>
#include <avr/eeprom.h>
#include <avr/interrupt.h>

void gpio_init()
{
    DDRB = 0xFF;
    PORTB = 0x00;
    DDRD = 0x00;
    PORTD = 0x00;
}

int main()
{
    uint32_t i = 0;
    gpio_init();

    while(1) {
        i++;
        if(i<8000000)
            PORTB = 0x55;
        else if(i < 16000000)
            PORTB = 0xAA;
        else
            i = 0;
    }

    return 0;
}

