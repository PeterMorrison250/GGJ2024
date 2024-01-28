#include <gb/gb.h>
#include <gb/metasprites.h>

const metasprite_t JesterDownStandMetasprite[] = {
    {.dy=-8, .dx=-8, .dtile=0, .props=0},
    {.dy=0, .dx=8, .dtile=1, .props=0},
    {.dy=8, .dx=-8, .dtile=2, .props=0},
    {.dy=0, .dx=8, .dtile=3, .props=0},
    {.dy=8, .dx=-8, .dtile=4, .props=0},
    {.dy=0, .dx=8, .dtile=5, .props=0},
	METASPR_TERM
};

const metasprite_t JesterDownWalkMetasprite[] = {
    {.dy=-8, .dx=-8, .dtile=0, .props=0},
    {.dy=0, .dx=8, .dtile=1, .props=0},
    {.dy=8, .dx=-8, .dtile=2, .props=0},
    {.dy=0, .dx=8, .dtile=3, .props=0},
    {.dy=8, .dx=-8, .dtile=12, .props=0},
    {.dy=0, .dx=8, .dtile=13, .props=0},
	METASPR_TERM
};

const metasprite_t JesterDownWalkAltMetasprite[] = {
    {.dy=-8, .dx=-8, .dtile=0, .props=0},
    {.dy=0, .dx=8, .dtile=1, .props=0},
    {.dy=8, .dx=-8, .dtile=2, .props=0},
    {.dy=0, .dx=8, .dtile=3, .props=0},
    {.dy=8, .dx=-8, .dtile=13, .props=32},
    {.dy=0, .dx=8, .dtile=12, .props=32},
	METASPR_TERM
};

const metasprite_t JesterLeftWalkMetasprite[] = {
    {.dy=-8, .dx=-8, .dtile=7, .props=32},
    {.dy=0, .dx=8, .dtile=6, .props=32},
    {.dy=8, .dx=-8, .dtile=9, .props=32},
    {.dy=0, .dx=8, .dtile=8, .props=32},
    {.dy=8, .dx=-8, .dtile=15, .props=32},
    {.dy=0, .dx=8, .dtile=14, .props=32},
	METASPR_TERM
};

const metasprite_t JesterLeftWalkAltMetasprite[] = {
    {.dy=-8, .dx=-8, .dtile=7, .props=32},
    {.dy=0, .dx=8, .dtile=6, .props=32},
    {.dy=8, .dx=-8, .dtile=9, .props=32},
    {.dy=0, .dx=8, .dtile=8, .props=32},
    {.dy=8, .dx=-8, .dtile=14, .props=0},
    {.dy=0, .dx=8, .dtile=15, .props=0},
	METASPR_TERM
};

const metasprite_t JesterLeftStandMetasprite[] = {
    {.dy=-8, .dx=-8, .dtile=7, .props=32},
    {.dy=0, .dx=8, .dtile=6, .props=32},
    {.dy=8, .dx=-8, .dtile=9, .props=32},
    {.dy=0, .dx=8, .dtile=8, .props=32},
    {.dy=8, .dx=-8, .dtile=11, .props=32},
    {.dy=0, .dx=8, .dtile=10, .props=32},
	METASPR_TERM
};

const metasprite_t JesterUpWalkMetasprite[] = {
    {.dy=-8, .dx=-8, .dtile=0, .props=0},
    {.dy=0, .dx=8, .dtile=1, .props=0},
    {.dy=8, .dx=-8, .dtile=16, .props=0},
    {.dy=0, .dx=8, .dtile=17, .props=0},
    {.dy=8, .dx=-8, .dtile=12, .props=0},
    {.dy=0, .dx=8, .dtile=13, .props=0},
	METASPR_TERM
};

const metasprite_t JesterUpWalkAltMetasprite[] = {
    {.dy=-8, .dx=-8, .dtile=0, .props=0},
    {.dy=0, .dx=8, .dtile=1, .props=0},
    {.dy=8, .dx=-8, .dtile=16, .props=0},
    {.dy=0, .dx=8, .dtile=17, .props=0},
    {.dy=8, .dx=-8, .dtile=13, .props=32},
    {.dy=0, .dx=8, .dtile=12, .props=32},
	METASPR_TERM
};


const metasprite_t JesterUpStandMetasprite[] = {
    {.dy=-8, .dx=-8, .dtile=0, .props=0},
    {.dy=0, .dx=8, .dtile=1, .props=0},
    {.dy=8, .dx=-8, .dtile=16, .props=0},
    {.dy=0, .dx=8, .dtile=17, .props=0},
    {.dy=8, .dx=-8, .dtile=4, .props=0},
    {.dy=0, .dx=8, .dtile=5, .props=0},
	METASPR_TERM
};

const metasprite_t JesterRightWalkMetasprite[] = {
    {.dy=-8, .dx=-8, .dtile=6, .props=0},
    {.dy=0, .dx=8, .dtile=7, .props=0},
    {.dy=8, .dx=-8, .dtile=8, .props=0},
    {.dy=0, .dx=8, .dtile=9, .props=0},
    {.dy=8, .dx=-8, .dtile=14, .props=0},
    {.dy=0, .dx=8, .dtile=15, .props=0},
	METASPR_TERM
};

const metasprite_t JesterRightWalkAltMetasprite[] = {
    {.dy=-8, .dx=-8, .dtile=6, .props=0},
    {.dy=0, .dx=8, .dtile=7, .props=0},
    {.dy=8, .dx=-8, .dtile=8, .props=0},
    {.dy=0, .dx=8, .dtile=9, .props=0},
    {.dy=8, .dx=-8, .dtile=15, .props=32},
    {.dy=0, .dx=8, .dtile=14, .props=32},
	METASPR_TERM
};

const metasprite_t JesterRightStandMetasprite[] = {
    {.dy=-8, .dx=-8, .dtile=6, .props=0},
    {.dy=0, .dx=8, .dtile=7, .props=0},
    {.dy=8, .dx=-8, .dtile=8, .props=0},
    {.dy=0, .dx=8, .dtile=9, .props=0},
    {.dy=8, .dx=-8, .dtile=10, .props=0},
    {.dy=0, .dx=8, .dtile=11, .props=0},
	METASPR_TERM
};

const metasprite_t KnightDownMetasprite[] = {
    {.dy=8, .dx=-8, .dtile=18, .props=0},
    {.dy=0, .dx=8, .dtile=18, .props=32},
    {.dy=8, .dx=-8, .dtile=19, .props=0},
    {.dy=0, .dx=8, .dtile=19, .props=32},
	METASPR_TERM
};

const metasprite_t KnightRightMetasprite[] = {
    {.dy=8, .dx=-8, .dtile=20, .props=0},
    {.dy=0, .dx=8, .dtile=21, .props=0},
    {.dy=8, .dx=-8, .dtile=22, .props=0},
    {.dy=0, .dx=8, .dtile=23, .props=128},
	METASPR_TERM
};

const metasprite_t MaidDownMetasprite[] = {
    {.dy=8, .dx=-8, .dtile=24, .props=0},
    {.dy=0, .dx=8, .dtile=24, .props=32},
    {.dy=8, .dx=-8, .dtile=25, .props=0},
    {.dy=0, .dx=8, .dtile=25, .props=32},
	METASPR_TERM
};

const metasprite_t MaidRightMetasprite[] = {
    {.dy=8, .dx=-8, .dtile=26, .props=0},
    {.dy=0, .dx=8, .dtile=27, .props=0},
    {.dy=8, .dx=-8, .dtile=28, .props=0},
    {.dy=0, .dx=8, .dtile=29, .props=0},
	METASPR_TERM
};