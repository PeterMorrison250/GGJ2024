#include <gb/gb.h>
#include <gb/metasprites.h>
#include <string.h>
#include <stdio.h>
#include "./../Assets/Backgrounds/ExploreBkgTiles.c"
#include "./../Assets/Backgrounds/ExploreBkgTileMap.c"
#include "./../Assets/Backgrounds/CollisionMaps/JesterBedroomCollisionMap.c"
#include "./../Assets/Sprites/JesterMetasprite.c"
#include "./../Assets/Sprites/OverworldTiles.c"
#include "./../Models/GameModel.h"
#include "CoreService.h"
#include "DialogService.h"

#define BKG_OFFSET 80

struct GameModel* ExploreGame;

void init_explore_sprites()
{
    set_sprite_data(0, 18, OverworldTiles);
    move_metasprite_ex(JesterDownWalkMetasprite, 0, 0, 0, 80, 80);   
}

void init_explore_bkg() {
    set_bkg_data(0, 43, ExploreBkgTiles);
}

uint8_t get_collision_index(uint8_t x, uint8_t y) {
    return ((y - 1) * JesterBedroomCollisionMapWidth) + x - 1;
}

void set_spawn_point(uint8_t x, uint8_t y)
{
    ExploreGame->X = x;
    ExploreGame->Y = y;
    move_bkg((x * 16) - BKG_OFFSET, (y * 16) - BKG_OFFSET);
}

uint8_t room_collision_map(uint8_t x, uint8_t y) 
{
    switch (ExploreGame->CurrentRoomId)
    {
        case 0:
            return JesterBedroomCollisionMap[get_collision_index(x, y)];
    }
}

void load_room(uint8_t roomId)
{
    switch (roomId)
    {
        // Jester's Bedroom
        case 0:
            ExploreGame->CurrentRoomId = 0;
            set_bkg_tiles(0, 0, 30, 28, ExploreBkgTileMap);
            set_spawn_point(6, 8);
            break;
    }
}

void init_explore()
{
    init_explore_bkg();
    init_explore_sprites();
    load_room(0);
    SHOW_SPRITES;
    SHOW_BKG;
    DISPLAY_ON;
}

UBYTE is_tile_free(uint8_t x, uint8_t y)
{
    return room_collision_map(x, y) == TRUE;
}

void move_jester(
    int8_t x,
    int8_t y,
    const metasprite_t* walkMetasprite,
    const metasprite_t* walkAltMetasprite,
    const metasprite_t* standMetasprite)
{
    if (is_tile_free(ExploreGame->X + x, ExploreGame->Y + y))
    {
        uint8_t tileDistance = 16;
        while (tileDistance > 0) 
        {
            uint8_t position = ExploreGame->X + ExploreGame->Y;
            if ((position % 2) == 0){
                move_metasprite_ex(walkMetasprite, 0, 0, 0, 80, 80);
            } else {
                move_metasprite_ex(walkAltMetasprite, 0, 0, 0, 80, 80);
            }
            tileDistance--;
            scroll_bkg(x, y);
            performant_delay(1);
        }

        ExploreGame->X += x;
        ExploreGame->Y += y;
    }

    move_metasprite_ex(standMetasprite, 0, 0, 0, 80, 80);
}

void animate_walk(uint8_t direction) 
{
    ExploreGame->IsAnimating = TRUE;
    ExploreGame->Direction = direction;
    uint8_t tileDistance = 16;

    switch (direction)
    {
        case 0:
            move_jester(0, 1, JesterDownWalkMetasprite, JesterDownWalkAltMetasprite, JesterDownStandMetasprite);
            break;
        case 1:
            move_jester(-1, 0, JesterLeftWalkMetasprite, JesterLeftWalkAltMetasprite, JesterLeftStandMetasprite);
            break;
        case 2:
            move_jester(0, -1, JesterUpWalkMetasprite, JesterUpWalkAltMetasprite, JesterUpStandMetasprite);
            break;
        case 3:
            move_jester(1, 0, JesterRightWalkMetasprite, JesterRightWalkAltMetasprite, JesterRightStandMetasprite);
            break;
    }

    ExploreGame->IsAnimating = FALSE;
}

uint8_t check_in_front()
{
    switch (ExploreGame->Direction)
    {
        case 0: return room_collision_map(ExploreGame->X, ExploreGame->Y + 1);
        case 1: return room_collision_map(ExploreGame->X - 1, ExploreGame->Y);
        case 2: return room_collision_map(ExploreGame->X, ExploreGame->Y - 1);
        case 3: return room_collision_map(ExploreGame->X + 1, ExploreGame->Y);
    }
    
}

void explore_main(struct GameModel* MainGame)
{
    if (MainGame->IsPerformanceMode == TRUE)
    {
       return;
    }
    
    ExploreGame = MainGame;
    init_explore();
    while (ExploreGame->IsPerformanceMode == FALSE) 
    {
        if (ExploreGame->IsAnimating == FALSE) 
        {
            if(ExploreGame->KeyDown)
            {
                waitpadup();
                ExploreGame->KeyDown = FALSE;
            }
            switch (joypad())
            {
                case J_DOWN:
                    if (ExploreGame->IsDialogVisible == FALSE)
                    {
                        animate_walk(0);
                    }
                    break;
                case J_LEFT:
                    if (ExploreGame->IsDialogVisible == FALSE)
                    {
                        animate_walk(1);
                    }
                    break;
                case J_UP:
                    if (ExploreGame->IsDialogVisible == FALSE)
                    {
                        animate_walk(2);
                    }
                    break;
                case J_RIGHT:
                    if (ExploreGame->IsDialogVisible == FALSE)
                    {
                        animate_walk(3);
                    }
                    break;
                case J_A:
                    ExploreGame->KeyDown = TRUE;
                    dialog_main(ExploreGame, check_in_front());
                    break;
            }
        }     
    }
}

