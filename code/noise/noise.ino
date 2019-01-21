#define SER 2
#define OE 0
#define SRCLK 6
#define SRCLR1 3
#define SRCLR2 7
#define QH1 4
#define QH2 8

void setup() {
  pinMode(SER, OUTPUT);
  pinMode(OE, OUTPUT);
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
  tone(SRCLK, 40000);
  delay(1);
  pinMode(SER, INPUT);
}

void loop() {
  // put your main code here, to run repeatedly:

}
