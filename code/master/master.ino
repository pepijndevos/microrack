#include <Wire.h>
#include "i2cmaster.h"

void setup() {
  Serial.begin(9600);
  Serial.println("hello world");
  Wire.begin(); // join i2c bus (address optional for master)
  pinMode(3, OUTPUT);
}

int counter = 0;
void loop() {
  struct port myport = readPort(21, 1);
  Serial.print(myport.value);
  Serial.print(" ");
  Serial.print(myport.type);
  Serial.print(" ");
  Serial.println(myport.name);
  uint16_t myval = readValue(21, 1);
  Serial.println(myval);
  writeValue(21, 1, counter%1000);  
  //writeValue(21, 1, 0);  
  delay(1);
  digitalWrite(3, HIGH);
  delay(1);
  digitalWrite(3, LOW);
  delay(500);
  counter++;
}
