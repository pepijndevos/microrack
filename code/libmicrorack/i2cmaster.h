#include <Wire.h>
#include "types.h"

struct port readPort(int address, int idx) {
  Wire.beginTransmission(address);
  Wire.write(idx);
  Wire.endTransmission(false);
  //delayMicroseconds(10);
  struct port myport;
  Wire.requestFrom(address, sizeof(myport));
  Wire.readBytes((char*)&myport, sizeof(myport));
  return myport;
}

uint16_t readValue(int address, int idx) {
  Wire.beginTransmission(address);
  Wire.write(idx);
  Wire.endTransmission(false);
  uint16_t value;
  Wire.requestFrom(address, sizeof(value));
  Wire.readBytes((char*)&value, sizeof(value));
  return value;
}

void writeValue(int address, int idx, uint16_t value) {
  Wire.beginTransmission(address);
  Wire.write(idx);
  Wire.write((char*)&value, sizeof(value));
  Wire.endTransmission();
}

