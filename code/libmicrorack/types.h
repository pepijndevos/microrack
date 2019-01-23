#include <assert.h>
struct port {
    uint16_t value;
    uint8_t type;
    char name[13];
};
static_assert(sizeof(struct port) == 16, "Check your assumptions");

