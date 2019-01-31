#include <Wire.h>
#include "i2cmaster.h"

void setup() {
  Serial.begin(9600);
  Serial.println("hello world");
  Wire.begin(); // join i2c bus (address optional for master)
  pinMode(3, OUTPUT);
  pinMode(A0, INPUT);
}

void loop() {
  struct port myport = readPort(21, 1);
  Serial.print(myport.value);
  Serial.print(" ");
  Serial.print(myport.type);
  Serial.print(" ");
  Serial.println(myport.name);
  uint16_t myval = readValue(21, 1);
  Serial.println(myval);
  uint16_t pot = analogRead(A0);
  writeValue(21, 1, pot<<6);  
  //writeValue(21, 1, 0);  
  delay(1);
  digitalWrite(3, HIGH);
  delay(1);
  digitalWrite(3, LOW);
  delay(500);
}
