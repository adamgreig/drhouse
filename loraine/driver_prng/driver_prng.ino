#include <stdint.h>

void setup() {
  pinMode(0, OUTPUT);
  Serial1.begin(1152000);
}

uint32_t lfsr = 1;

void loop() {
    lfsr = (lfsr >> 1) ^ (-(lfsr & 1u) & 0xD0000001u);
    Serial1.write((uint8_t)(lfsr & 0xFF));
}
