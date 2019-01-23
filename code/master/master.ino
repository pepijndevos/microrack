#include <Wire.h>
#include "i2cmaster.h"

void setup() {
  Serial.begin(9600);
  Wire.begin(); // join i2c bus (address optional for master)
  pinMode(3, OUTPUT);
}

int idx = 0;

void loop() {
  struct port myport = readPort(20, idx%5);
  Serial.print(myport.value);
  Serial.print(" ");
  Serial.print(myport.type);
  Serial.print(" ");
  Serial.println(myport.name);
  uint16_t myval = readValue(20, idx%5);
  Serial.println(myval);
  writeValue(20, idx%5, myval+1);  
  delay(500);
  idx++;
  digitalWrite(3, HIGH);
  delay(1);
  digitalWrite(3, LOW);
}
