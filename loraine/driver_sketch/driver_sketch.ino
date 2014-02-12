// In arduino-1.0.x/hardware/arduino/cores/arduino/CDC.cpp
// change SERIAL_BUFFER_SIZE to 2048 to prevent buffer overflow
// on large CDC incoming packets (since 1pkt/ms we have time to
// write them to the bus eventually but need more buffer to 
// hold them beforehand. note that 2.5k ram on this chip so
// 2k is a lot of it, but this code only uses 155 bytes so we're
// OK really)

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
    while(!(UCSR1A & (1<<5)));
    
    UCSR1B |= (1<<0);
    UDR1 = addr;
    
    while(!(UCSR1A & (1<<5)));
    
    UCSR1B &= ~(1<<0);
    UDR1 = data;
  }
}
