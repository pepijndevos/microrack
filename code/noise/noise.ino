#include "i2cslave.h"

#define SER 2
#define SYNC 3
#define OE 0
#define RCLK 5
#define SRCLK 6
#define SRCLR 7
#define QH1 4
#define QH2 8

struct port mysettings[] = {
  {156, 1, "Noise"},
  {0, 15, "Period"},
};

void setup() {
  pinMode(SER, OUTPUT);
  pinMode(SYNC, INPUT);
  pinMode(OE, OUTPUT);
  pinMode(RCLK, OUTPUT);
  pinMode(SRCLK, OUTPUT);
  pinMode(SRCLR, OUTPUT);
  pinMode(QH1, INPUT);
  pinMode(QH2, INPUT);

  digitalWrite(SER, HIGH);
  digitalWrite(OE, LOW);
  digitalWrite(SRCLR, HIGH);
  
  // wire.begin + handler to update mysetttings
  slaveBegin(21, SYNC, mysettings, 2);

  for(int i=0; i<100; i++) {
    digitalWrite(SRCLK, HIGH);
    delay(1);
    digitalWrite(SRCLK, LOW);
    delay(1);
  }
  pinMode(SER, INPUT);
}

void loop() {
 unsigned int i = 0;
 while (true) {
   bitSet(PIND, SRCLK);
   bitWrite(PORTD, RCLK, i&8);
   delayMicroseconds(mysettings[1].value);
   i++;
 }
}
