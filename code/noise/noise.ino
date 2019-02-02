#include "i2cslave.h"

#define SER 2
#define SYNC 3
#define OE 0
#define RCLK 5
#define SRCLK 6
#define SRCLR 7
#define QH1 4
#define QH2 8

// PORTC
#define MUXEN A0
#define MUX0 A1
#define MUX1 A2
#define MUX2 A3


struct port mysettings[] = {
  {156, 2, "Noise"},
  {0, 15, "Period"},
  {1, 0, "Output"},
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
  
  pinMode(MUXEN, OUTPUT);
  pinMode(MUX1, OUTPUT);
  pinMode(MUX2, OUTPUT);
  pinMode(MUX3, OUTPUT);

  digitalWrite(SER, HIGH);
  digitalWrite(OE, LOW);
  digitalWrite(SRCLR, HIGH);

  digitalWrite(MUXEN, LOW);
  digitalWrite(MUX0, LOW);
  digitalWrite(MUX1, LOW);
  digitalWrite(MUX2, LOW);
  
  // wire.begin + handler to update mysetttings
  slaveBegin(21, SYNC, mysettings, 3);

  for(int i=0; i<100; i++) {
    digitalWrite(SRCLK, HIGH);
    delay(1);
    digitalWrite(SRCLK, LOW);
    delay(1);
  }
  pinMode(SER, INPUT);
}

void loop() {
   bitSet(PIND, SRCLK);
   bitSet(PIND, SRCLK);
   bitSet(PIND, SRCLK);
   bitSet(PIND, SRCLK);
   bitSet(PIND, SRCLK);
   bitSet(PIND, SRCLK);
   bitSet(PIND, SRCLK);
   bitSet(PIND, SRCLK);
   bitSet(PIND, RCLK);
   PORTC = mysettings[2].value & 0b1111;
   delayMicroseconds(mysettings[1].value);
}
