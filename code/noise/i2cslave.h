#include <Wire.h>

#include <assert.h>
struct port {
    uint8_t type;
    uint16_t value;
    char name[13];
};
static_assert(sizeof(struct port) == 16, "Check your assumptions");

union data {
   struct port ports[16];
   uint8_t reg[256];
};
static_assert(sizeof(union data) == 256, "Check your assumptions");

volatile uint8_t ptr = 0;
volatile union data memory_temp;
volatile union data memory;

void receiveEvent(int howMany) {
  ptr = Wire.read();
  while (Wire.available()) {
    memory_temp.reg[ptr] = Wire.read();
    ptr++;
  }
}

void requestEvent() {
  for(int i=0; i<16; i++){
    Wire.write(memory.reg[ptr]);
    ptr++;
  }
}

void syncEvent() {
  for(int i=0; i<16; i++) {
    memory.ports[i].value = memory_temp.ports[i].value;
  }
}

void begin(int address, int sync) {
  Wire.begin(address);
  Wire.onRequest(requestEvent);
  Wire.onReceive(receiveEvent);
  attachInterrupt(sync, syncEvent, RISING);
}

