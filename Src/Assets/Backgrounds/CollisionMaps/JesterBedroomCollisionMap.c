#include <gb/gb.h>

#define JesterBedroomCollisionMapWidth 15
#define JesterBedroomCollisionMapHeight 14
#define JesterBedroomCollisionMapBank 0

unsigned char JesterBedroomCollisionMap[] =
{
    0,0,0,0, 0,0,0,0,0,0,0,0,0,0,0,
    0,0,0,0, 0,0,0,0,0,0,0,0,0,0,0,
    0,0,0,0, 0,0,0,0,0,0,0,0,0,0,0,
    0,0,0,0, 0,0,0,0,0,0,0,0,0,0,0,

    0,0,0,0, 0,0,0,0,3,0,0,0,0,0,0,
    0,0,0,0, 64,65,66,0,1,1,0,0,0,0,0,
    0,0,0,0, 1,1,1,1,1,1,0,0,0,0,0,
    0,0,0,0, 1,1,1,1,1,1,0,0,0,0,0,
    0,0,0,0, 0,0,0,1,1,1,0,0,0,0,0,
    0,0,0,0, 0,0,0,1,1,1,0,0,0,0,0,
    0,0,0,0, 0,0,0,0,0,0,0,0,0,0,0,
};