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

const unsigned char GuardNepoBaby[][MAX_STRING_SIZE] = 
{
    "Guard: wow, that",
    "was your worst  ",
    "yet! how'd you  ",
    "even get this   ",
    "job?            ",
    "Jogo: beats me, ",
    "the recruiter   ",
    "said it was in  ",
    "the genes.      ",
    "Guard: nepo     ",
    "babies...       "
};

const unsigned char MaidsNightStables[][MAX_STRING_SIZE] = 
{
    "Maid A: I heard ",
    "she went to the ",
    "stables!        ",
    "Maid B: In the  ",
    "middle of the   ",
    "night?!         ",
    "(They seem too  ",
    "busy to notice  ",
    "me...)          "
};

const unsigned char GuardPinterest[][MAX_STRING_SIZE] = 
{
    "Guard: What's up",
    "little guy?     ",
    "Jogo: Just      ",
    "looking for some",
    "inspo.          ",
    "Guard:You should",
    "try pinterest.  ",
    "Jogo: I don't   ",
    "think I have    ",
    "that book.      "
};

const unsigned char GuardsFreePie[][MAX_STRING_SIZE] = 
{
    "Guard A:We can't",
    "use it! It      ",
    "belongs to his  ",
    "Magesty, whom we",
    "work for!       ",
    "Guard B:He threw",
    "it away! he does",
    "not want it. We ",
    "should have it, ",
    "Guard A: No, we ",
    "will return it  ",
    "to the prince,  ",
    "he is next in   ",
    "line to have it.",
    "Guard B: His    ",
    "lordship doesn't",
    "even know about ",
    "it, plus he gets",
    "Pie Delivery any",
    "time he wants.  ",
    "We do all this  ",
    "work, and for   ",
    "what? When did  ",
    "we get any pie??",
    "Jogo: Why are   ",
    "you guys arguing",
    "Guard B: We     ",
    "found a free pie",
    "delivery voucher",
    "I think we ought",
    "to treat        ",
    "ourselves, who  ",
    "guard the castle",
    "day and night.  "
};

const unsigned char KingLaugh[][MAX_STRING_SIZE] = 
{
    "Har Har Har! Thy",
    "wit shines as   ",
    "brightly as the ",
    "crown on my head"
};

const unsigned char KingAngry[][MAX_STRING_SIZE] = 
{
    "Thy have tested ",
    "the very limits ",
    "of my patience, ",
    "little jester!  "
};

const unsigned char KingBored[][MAX_STRING_SIZE] = 
{
    "Honk... shoo... ",
    "mimimi.. huh you",
    "still up there? "
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
        case 64: return show_dialog(ClassicJokes1590, sizeof(ClassicJokes1590) / MAX_STRING_SIZE, DialogGame->OpenDialogLines);
        case 65: return show_dialog(HarlequinHandbook, sizeof(HarlequinHandbook) / MAX_STRING_SIZE, DialogGame->OpenDialogLines);
        case 66: return show_dialog(DeskJokes, sizeof(DeskJokes) / MAX_STRING_SIZE, DialogGame->OpenDialogLines);
        case 67: return show_dialog(GuardNepoBaby, sizeof(GuardNepoBaby) / MAX_STRING_SIZE, DialogGame->OpenDialogLines);
        case 68: return show_dialog(MaidsNightStables, sizeof(MaidsNightStables) / MAX_STRING_SIZE, DialogGame->OpenDialogLines);
        case 69: return show_dialog(GuardPinterest, sizeof(GuardPinterest) / MAX_STRING_SIZE, DialogGame->OpenDialogLines);
        case 70: return show_dialog(GuardsFreePie, sizeof(GuardsFreePie) / MAX_STRING_SIZE, DialogGame->OpenDialogLines);
        case 71: return show_dialog(KingBored, sizeof(KingBored) / MAX_STRING_SIZE, DialogGame->OpenDialogLines);
        case 72: return show_dialog(KingLaugh, sizeof(KingLaugh) / MAX_STRING_SIZE, DialogGame->OpenDialogLines);
        case 73: return show_dialog(KingAngry, sizeof(KingAngry) / MAX_STRING_SIZE, DialogGame->OpenDialogLines);
    }
}

void dialog_main(struct GameModel* MainGame, uint8_t textId)
{
    if (textId <= 1 || textId <= 63) 
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