#ifndef PAGEMODEL_H_
#define PAGEMODEL_H_
#include <gb/gb.h>

typedef struct PageModel {
    uint8_t CurrentOption;
    uint8_t VramLine;
    uint8_t TileY;
    uint8_t JokeCount;
};

#endif