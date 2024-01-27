#ifndef GAMEMODEL_H_
#define GAMEMODEL_H_
#include <gb/gb.h>

typedef struct GameModel {
    UBYTE IsAnimating;
    UBYTE KeyDown;

    // Performance
    uint8_t CurrentScore;
    UBYTE IsPerformanceMode;

    // Explore
    uint8_t X;
    uint8_t Y;
    int8_t Direction;
    uint8_t CurrentRoomId;

    // Dialog
    UBYTE IsDialogVisible;
    uint8_t OpenDialogLines;
};

#endif