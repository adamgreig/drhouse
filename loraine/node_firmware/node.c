#include <stdint.h>
#include <avr/io.h>
#include <avr/eeprom.h>
#include <avr/interrupt.h>

uint8_t my_address;
uint8_t channel_to_update;
uint8_t channel_values[8];
uint8_t pwm_counter;

void read_address()
{
    my_address = eeprom_read_byte(0);
}

void gpio_init()
{
    DDRB = 0xFF;
    PORTB = 0x00;
    DDRD = 0x00;
    PORTD = 0x00;
}

void pwm_init()
{
    uint8_t i;
    for(i=0; i<8; i++)
        channel_values[i] = 0;
    pwm_counter = 0;
}

void usart_init()
{
    UBRRL = 0x00;
    UBRRH = 0x00;
    UCSRA = (1<<MPCM);
    UCSRB = (1<<RXCIE) | (1<<RXEN) | (1<<UCSZ2);
    UCSRC = (1<<UCSZ1) | (1<<UCSZ0);

    channel_to_update = 0;
}

ISR(USART_RX_vect)
{
    uint8_t b8 = UCSRB & (1<<RXB8);
    uint8_t rx = UDR;

    if(b8) {
        if((rx & 0xF8) == my_address || (rx & 0xF8) == 0x00) {
            channel_to_update = rx & 0x07;
            UCSRA &= ~(1<<MPCM);
        }
    } else {
        UCSRA |= (1<<MPCM);
        channel_values[channel_to_update] = rx;
    }
}

void pwm()
{
    uint8_t output = PORTB;

    if(pwm_counter == 255) {
        pwm_counter = 0;
    }
    
    if(pwm_counter == 0) {
        output = 0xFF;
    }

    if(channel_values[0] == pwm_counter)
        output &= ~(1<<0);
    if(channel_values[1] == pwm_counter)
        output &= ~(1<<1);
    if(channel_values[2] == pwm_counter)
        output &= ~(1<<2);
    if(channel_values[3] == pwm_counter)
        output &= ~(1<<3);
    if(channel_values[4] == pwm_counter)
        output &= ~(1<<4);
    if(channel_values[5] == pwm_counter)
        output &= ~(1<<5);
    if(channel_values[6] == pwm_counter)
        output &= ~(1<<6);
    if(channel_values[7] == pwm_counter)
        output &= ~(1<<7);

    PORTB = output;
    pwm_counter++;
}

int main()
{
    read_address();
    gpio_init();
    usart_init();
    pwm_init();

    sei();

    for(;;) {
        pwm();
    }

    return 0;
}

