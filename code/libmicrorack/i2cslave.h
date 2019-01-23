#include <Wire.h>
#include "types.h"

volatile size_t settings_length = 0;
volatile size_t ptr = 0;
volatile struct port* settings;
volatile uint16_t* value_buffer;

void receiveEvent(int howMany) {
  ptr = Wire.read();
  if(Wire.available() == 2 && ptr < settings_length) {
    Wire.readBytes((char*)&value_buffer[ptr], sizeof(uint16_t));
  }
}

void requestEvent() {
  if(ptr < settings_length) {
    Wire.write((char*)&settings[ptr], sizeof(struct port));
    //Serial.println(ptr);
  }
}

void syncEvent() {
  // skip writing first port.
  for(unsigned int i=1; i<settings_length; i++) {
    settings[i].value = value_buffer[i];
  }
}

void slaveBegin(int address, int syncPin, struct port* sett, size_t setlen) {
  Wire.begin(address);
  Wire.onRequest(requestEvent);
  Wire.onReceive(receiveEvent);
  attachInterrupt(digitalPinToInterrupt(syncPin), syncEvent, RISING);
  value_buffer = (uint16_t*)calloc(setlen, sizeof(uint16_t));
  settings = sett;
  settings_length = setlen;
  for(unsigned int i=0; i<settings_length; i++) {
    value_buffer[i] = settings[i].value;
  }
}

