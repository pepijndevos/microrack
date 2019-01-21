#include "i2cslave.h"

#define SER 2
#define OE 0
#define RCLK 5
#define SRCLK 6
#define SRCLR1 3
#define SRCLR2 7
#define QH1 4
#define QH2 8

void setup() {
  pinMode(SER, OUTPUT);
  pinMode(OE, OUTPUT);
  pinMode(RCLK, OUTPUT);
  pinMode(SRCLK, OUTPUT);
  pinMode(SRCLR1, OUTPUT);
  pinMode(SRCLR2, OUTPUT);
  pinMode(QH1, INPUT);
  pinMode(QH2, INPUT);

  digitalWrite(SER, HIGH);
  digitalWrite(OE, LOW);
  digitalWrite(SRCLR1, HIGH);
  digitalWrite(SRCLR2, HIGH);

  // initialise shift register
  //tone(SRCLK, 40000);
  //TCCR0A = _BV(COM0A0) | _BV(COM0B1) | _BV(WGM01) | _BV(WGM00);
  TCCR0A = _BV(COM0A0) | _BV(WGM01) | _BV(WGM00);
  TCCR0B = _BV(WGM02) | _BV(CS00);
  OCR0A = 20;
  tone(RCLK, 20000);
  delay(100);
  pinMode(SER, INPUT);
}

void loop() {
  
}
