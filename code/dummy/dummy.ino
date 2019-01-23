#include "i2cslave.h"

struct port mysettings[5] = {
  {156, 4, "Dummy"},
  {500, 15, "Volume"},
  {1, 48, "Distrotion"},
  {56, 0, "Flurb"},
  {576, 45, "Sheem"},
};

void setup() {
  Serial.begin(9600);
  delay(1000);
  Serial.println("Hello world");
  Serial.println(digitalPinToInterrupt(7));
  slaveBegin(20, 7, mysettings, 5);
}

void loop() {
  
}
