void setup() {
  Serial.begin(115200);
  
  pinMode(1, OUTPUT);
  
  UBRR1H = 0;
  UBRR1L = 0;
  UCSR1A = 0;
  UCSR1B = (1<<3) | (1<<2);
  UCSR1C = (1<<2) | (1<<1);
}

void loop() {
  uint8_t addr;
  uint8_t data;
  
  while(!Serial.available() || Serial.read() != 0x02);
  while(Serial.available() < 3);
  addr = Serial.read();
  data = Serial.read();
  if(Serial.read() == 0x03) {
    while(!(UCSR1A & (1<<UDRE)));
    
    UCSR1B |= (1<<TXB8);
    UDR1 = addr;
    
    while(!(UCSR1A & (1<<UDRE)));
    
    UCSR1B &= ~(1<<TXB8);
    UDR1 = data;
  }
}
