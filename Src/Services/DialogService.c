#include "./../Assets/Dialogs/CharTiles.c"
#include "./../Assets/Dialogs/BkgTiles.c"
#include "./../Assets/Dialogs/DialogWindowTileMap.c"
#include "./../Models/GameModel.h"

#define MAX_STRING_SIZE 17

struct GameModel* DialogGame;

const uint8_t dia_first_row_start_adr = 0xd0;
const uint8_t dia_second_row_start_adr =  0xe0;
const uint8_t blk_tile_adr = 0xf0;
const uint8_t arr_tile_adr = 0xf1;
const uint8_t char_offset = 32;

const unsigned char pangram_a[][MAX_STRING_SIZE] = 
{
    "My name is Jogo.",
    "I am the court  ",
    "jester for King ",
    "Oteg of Ayubish.",
    "My role is the  ",
    "palace is to    ",
    "entertain his   ",
    "majesty, though ",
    "just between us,",
    "the king can be ",
    "quite fickle.   ",
    "It can be hard  ",
    "to know what he ",
    "will find funny,",
    "too meak, or too",
    "scandalous.     "
};

const unsigned char ClassicJokes1590[][MAX_STRING_SIZE] = 
{
    "Classic Jokes:  ",
    "1590 Edition. A ",
    "bit out of date,",
    "but they say the",
    "90s are making a",
    "comeback...     "
};

const unsigned char HarlequinHandbook[][MAX_STRING_SIZE] = 
{
    "The Harlequin's ",
    "Handbook: Slaps-",
    "tick, Sarcasm, &",
    "Sillies. I hear ",
    "there's a famous",
    "harlequin a few ",
    "kingdoms over   "
};

const unsigned char DeskJokes[][MAX_STRING_SIZE] = 
{
    "These are the   ",
    "jokes I wrote   ",
    "on the way here.",
    "So far they have",
    "not landed...   ",
};

uint8_t i, ii, ip, ib;

uint8_t show_dialog(unsigned char text_lines[][MAX_STRING_SIZE], uint8_t amount_lin, uint8_t last_lin)
{
    DialogGame->IsDialogVisible = TRUE;

    set_win_data(blk_tile_adr, 1, BlackTile);
    set_win_data(arr_tile_adr, 1, ArrowTile);

    // Clear Window with black
    for (ib = 0; ib != 32; ib++)
    {
        set_win_data(dia_first_row_start_adr + ib, 1, BlackTile);
    }

    // Write the next two lines
    for (i = 0; i != 2; i++)
    {
        for (ii = 0; ii < 16; ii++)
        {
            if (i == 0)
            {
                set_win_data(dia_first_row_start_adr + ii, 1, CharTiles[text_lines[i + last_lin][ii] - char_offset]);
            }
            else
            {
                set_win_data(0xe0 + ii, 1, CharTiles[text_lines[i + last_lin][ii] - char_offset]);
            }
        }

        // When amount of lines is even
        if ((i + 1) + last_lin == amount_lin)
        {
            return 0;
        }

        // When amount of lines is odd
        if (i + last_lin == amount_lin)
        {
            // remove second, black line
            for (ib = 0; ib != 16; ib++)
            {
                set_win_data(dia_second_row_start_adr + ib, 1, BlackTile);
            }
            return 0;
        }
    }

    set_win_tiles(0, 0, 18, 5, DialogWindowTileMap);
    move_win(1, 96);

    SHOW_WIN;

    return i + last_lin;
}

uint8_t find_text(uint8_t textId)
{
    switch (textId)
    {
        case 2: return show_dialog(ClassicJokes1590, sizeof(ClassicJokes1590) / MAX_STRING_SIZE, DialogGame->OpenDialogLines);
        case 3: return show_dialog(HarlequinHandbook, sizeof(HarlequinHandbook) / MAX_STRING_SIZE, DialogGame->OpenDialogLines);
        case 4: return show_dialog(DeskJokes, sizeof(DeskJokes) / MAX_STRING_SIZE, DialogGame->OpenDialogLines);
    }
}

void dialog_main(struct GameModel* MainGame, uint8_t textId)
{
    if (textId <= 1) 
    {
        return;
    }

    DialogGame = MainGame;
    
    if (DialogGame->IsDialogVisible == TRUE & DialogGame->OpenDialogLines == FALSE)
    {
        HIDE_WIN;
        DialogGame->IsDialogVisible = FALSE;
        DialogGame->OpenDialogLines = FALSE;
    }
    else
    {
        DialogGame->OpenDialogLines = find_text(textId);
    }
}