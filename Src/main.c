#include <gb/gb.h>
#include <string.h>
#include <stdio.h>
#include "./Models/GameModel.h"
#include "./Services/CoreService.h"
#include "./Services/PerformanceService.h"
#include "./Services/ExploreService.h"

void init_game(struct GameModel* Game)
{
    Game->IsAnimating = FALSE;
    Game->IsPerformanceMode = FALSE;
    Game->CurrentScore = 0;
    Game->X = 0;
    Game->Y = 0;
    Game->IsDialogVisible = FALSE;
    Game->OpenDialogLines = 0;
    Game->Round = 0;
}



void main()
{
    struct GameModel Game;
    init_game(&Game);

    while (1)
    {   
        explore_main(&Game);
        performance_main(&Game);
    }
}
