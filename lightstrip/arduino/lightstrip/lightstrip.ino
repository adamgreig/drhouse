const int RED = 5;
const int GREEN = 6;
const int BLUE = 9;

const long int timeout = 32400000L;

const byte sync = 0xFF;

unsigned long last_command_time;

enum states {
  red, green, blue, off
} state;

// Briefly flash one colour and then turn everything off
void flash_and_off(int color) {
  digitalWrite(RED, LOW);
  digitalWrite(GREEN, LOW);
  digitalWrite(BLUE, LOW);
  
  digitalWrite(color, HIGH);
  delay(300);
  digitalWrite(color, LOW);
  delay(300);
  digitalWrite(color, HIGH);
  delay(300);
  digitalWrite(color, LOW);
}

void setup() {
  // Set up RGB LED controls to outputs
  pinMode(RED, OUTPUT);
  pinMode(GREEN, OUTPUT);
  pinMode(BLUE, OUTPUT);
  
  // Initialise serial
  Serial.begin(115200);
  
  // Start state machine at red
  state = off;
  
  // Keep track of how long it's been since
  // the last command was received
  last_command_time = millis();
  
  // Indicate startup and make sure we're then safely off
  flash_and_off(GREEN);
}

void loop() { 
  int input = Serial.read();
  
  if(input == -1) {
    // If we're still off then just keep rechecking
    // the serial port.
    if(state == off) {
      return;
    }
    
    // No data was available
    // Check if it's been a long while since
    // the last command and shut down if so.
    if((millis() - last_command_time) > timeout) {
      // Alert and turn off
      flash_and_off(RED);
      state = off;
    }
    
    // Detect overflow
    if(last_command_time > millis()) {
      last_command_time = millis();
    }
  } else if(input == sync) {
    last_command_time = millis();
    
    // Restart state machine on sync byte
    state = red;
  } else {
    last_command_time = millis();
    
    if(input == (sync - 1)) {
      // Map the value below the sync number to the sync value
      input = sync;
    }
    
    // Implement the simple state machine
    if(state == red) {
      analogWrite(RED, input);
      state = green;
    } else if(state == green) {
      analogWrite(GREEN, input);
      state = blue;
    } else if(state == blue) {
      analogWrite(BLUE, input);
      state = red;
    }
  }
}
