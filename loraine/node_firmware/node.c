#include <stdint.h>
#include <avr/io.h>
#include <avr/eeprom.h>
#include <avr/interrupt.h>

uint8_t my_address;
uint8_t just_received_address;
uint8_t last_address;
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
    TCCR0A = (1<<WGM01);
    TCCR0B = (1<<CS00);
    TIMSK = (1<<OCIE0A); 
    OCR0A = 64;
}

void usart_init()
{
    UBRRL = 0x00;
    UBRRH = 0x00;
    UCSRA = 0x00;
    UCSRB = (1<<RXCIE) | (1<<RXEN) | (1<<UCSZ2);
    UCSRC = (1<<UCSZ1) | (1<<UCSZ0);

    just_received_address = 0x00;
    last_address = 0x00;
}

ISR(USART_RX_vect)
{
    uint8_t b8 = UCSRB & (1<<RXB8);
    uint8_t rx = UDR;
    if(!b8) {
        if((rx & 0xF8) == my_address) {
            last_address = rx;
            just_received_address = 1;
        } else {
            just_received_address = 0;
        }
    } else if(just_received_address) {
        channel_values[last_address & 0x07] = rx;
    }
}

ISR(TIMER0_COMPA_vect)
{
    uint8_t i;
    uint8_t output = PORTB;

    if(pwm_counter == 0) {
        output = 0xFF;
    }

    for(i=0; i<8; i++) {
        if(channel_values[i] == pwm_counter && channel_values[i] != 0xFF)
            output &= ~(1<<i);
    }

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

    for(;;);

    return 0;
}

