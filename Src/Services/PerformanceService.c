#include <gb/gb.h>
#include <gb/metasprites.h>
#include <string.h>
#include <stdio.h>
#include "./../Assets/Backgrounds/PerformanceBkgTiles.c"
#include "./../Assets/Backgrounds/PerformanceBkgTileMap.c"
#include "./../Assets/Sprites/JesterTiles.c"
#include "./../Models/GameModel.h"
#include "CoreService.h"
#include "DialogService.h"

const metasprite_t JesterFullMetasprite[] = {
    // line 1
    {.dy=0, .dx=0, .dtile=0, .props=0},
    {.dy=0, .dx=8, .dtile=1, .props=0},
    {.dy=0, .dx=8, .dtile=2, .props=0},
    {.dy=0, .dx=8, .dtile=3, .props=0},
    // line 2
    {.dy=8, .dx=-24, .dtile=4, .props=0},
    {.dy=0, .dx=8, .dtile=5, .props=0},
    {.dy=0, .dx=8, .dtile=6, .props=0},
    {.dy=0, .dx=8, .dtile=7, .props=0},
     // line 3
    {.dy=8, .dx=-24, .dtile=8, .props=0},
    {.dy=0, .dx=8, .dtile=9, .props=0},
    {.dy=0, .dx=8, .dtile=10, .props=0},
    {.dy=0, .dx=8, .dtile=11, .props=0},
    // line 4
    {.dy=8, .dx=-32, .dtile=12, .props=0},
    {.dy=0, .dx=8, .dtile=13, .props=0},
    {.dy=0, .dx=8, .dtile=14, .props=0},
    {.dy=0, .dx=8, .dtile=15, .props=0},
    {.dy=0, .dx=8, .dtile=16, .props=0},
    // line 5
    {.dy=8, .dx=-24, .dtile=17, .props=0},
    {.dy=0, .dx=8, .dtile=18, .props=0},
    {.dy=0, .dx=8, .dtile=19, .props=0},
     // line 6
    {.dy=8, .dx=-16, .dtile=20, .props=0},
    {.dy=0, .dx=8, .dtile=21, .props=0},
    {.dy=0, .dx=8, .dtile=22, .props=0},
     // line 7
    {.dy=8, .dx=-16, .dtile=23, .props=0},
    {.dy=0, .dx=8, .dtile=24, .props=0},
    {.dy=0, .dx=8, .dtile=25, .props=0},
    {.dy=0, .dx=8, .dtile=26, .props=0},
	METASPR_TERM
};

struct GameModel* PerformanceGame;

void init_jester(uint8_t x, uint8_t y) {
    move_metasprite_ex(JesterFullMetasprite, 1, 0, 0, x, y);
    SHOW_SPRITES;
}

void init_pointer(uint8_t score) {
    set_sprite_tile(27, 28);
    move_sprite(27, 84 + (score * 8), 136);
}

void init_sprites() {
    set_sprite_data(0, 34, JesterTiles); 
    init_jester(75, 40);
    init_pointer(0);
}

void animate_pointer(uint8_t currentScore, uint8_t newScore)
{
    if (currentScore < newScore)
    {
        while (currentScore < newScore)
        {
            currentScore++;
            move_sprite(27, 84 + (currentScore * 8), 136);
            performant_delay(15);
        }
        return;
    }
    if (currentScore > newScore)
    {
            while (currentScore > newScore)
            {
                currentScore--;
                move_sprite(27, 84 + (currentScore * 8), 136);
                performant_delay(15);
            }
            return;
    }

    performant_delay(15);
    return;   
}

void crowd_reaction(uint8_t score)
{
    // Show Speech
    move_metasprite_ex(JesterFullMetasprite, 32, 0, 28, 110, 40);

    if (score < 4) 
    {
        set_sprite_tile(36, 31);
        move_sprite(36, 30, 115);
        set_sprite_tile(37, 31);
        move_sprite(37, 60, 115);
        set_sprite_tile(38, 31);
        move_sprite(38, 110, 115);
        return;
    }
    if (score > 5) 
    {
        set_sprite_tile(36, 29);
        move_sprite(36, 30, 115);
        set_sprite_tile(37, 29);
        move_sprite(37, 60, 115);
        set_sprite_tile(38, 29);
        move_sprite(38, 110, 115);
        return;
    }
    set_sprite_tile(36, 30);
    move_sprite(36, 30, 115);
    set_sprite_tile(37, 30);
    move_sprite(37, 60, 115);
    set_sprite_tile(38, 30);
    move_sprite(38, 110, 115);
    return;
}

void hide_crowd_reaction()
{
        move_sprite(36, 0, 0);
        move_sprite(37, 0, 0);
        move_sprite(38, 0, 0);
        // Hide Speech
        move_metasprite_ex(JesterFullMetasprite, 32, 0, 28, 0, 0);
}

uint8_t choose_joke()
{
    int8_t newScore = 0;
    switch (PerformanceGame->Round)
    {
        case 0: 
            newScore = PerformanceGame->CurrentScore + 4;
            break;
        case 1: 
            newScore = PerformanceGame->CurrentScore - 2;
            break;
        case 2: 
            newScore = PerformanceGame->CurrentScore + 5;
            break;
        case 3: 
            newScore = PerformanceGame->CurrentScore - 1;
            break;
        default:
            newScore = 0;
    }
    if (newScore > 9)
    {
        return 9;
    }
    if (newScore < 0)
    {
        return 0;
    }

    return newScore;
}

void perform()
{
    int8_t newScore = choose_joke();
    crowd_reaction(newScore);
    animate_pointer(PerformanceGame->CurrentScore, newScore);
    PerformanceGame->CurrentScore = newScore;
    hide_crowd_reaction();
}

void init_performance_bkg() {
    set_bkg_data(0, 121, PerformanceBkgTiles);
    set_bkg_tiles(0, 0, 20, 18, PerformanceBkgTileMap);
}

void init_performance()
{
    init_performance_bkg();
    init_sprites();
    PerformanceGame->CurrentScore = 0;
    PerformanceGame->Round = 0;
    DISPLAY_ON;
    SHOW_BKG;
}

void close_performance()
{
    fade_out();
    HIDE_SPRITES;
    DISPLAY_OFF;
    PerformanceGame->IsPerformanceMode = FALSE;
}

void end_of_round()
{
    if (PerformanceGame->Round < 3)
    {
        PerformanceGame->Round++;
        return;
    }

    if (PerformanceGame->CurrentScore < 4)
    {
        dialog_main(PerformanceGame, 71);
    }
    else if (PerformanceGame->CurrentScore > 5)
    {
        dialog_main(PerformanceGame, 73);
    }
    else 
    {
        dialog_main(PerformanceGame, 72); 
    }
    if (PerformanceGame->IsDialogVisible == FALSE && PerformanceGame->OpenDialogLines == FALSE)
    {
        close_performance();
    }
    
    return;
}

void performance_main(struct GameModel* MainGame)
{
    if (MainGame->IsPerformanceMode == FALSE)
    {
       return;
    }
    
    PerformanceGame = MainGame;
    init_performance();
    move_bkg(0,0);
    SHOW_SPRITES;
    fade_in();
    DISPLAY_ON;

    while (PerformanceGame->IsPerformanceMode == TRUE) 
    {
        if(PerformanceGame->KeyDown)
        {
            waitpadup();
            PerformanceGame->KeyDown = FALSE;
        }
        switch (joypad())
        {
            case J_A:
                PerformanceGame->KeyDown = TRUE;
                if (PerformanceGame->IsDialogVisible == FALSE)
                {
                    perform();
                }
                end_of_round();
                break;
            case J_B:
                close_performance();
                break;
        }
    }
}