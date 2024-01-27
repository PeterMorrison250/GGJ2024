#include <gb/gb.h>
#include <string.h>
#include <stdio.h>

void performant_delay(int numloops){
    int ii;
    for(ii = 0; ii < numloops; ii++){
        wait_vbl_done();
    }     
}

void fade_out() {
	for(int8_t i=0;i<4;i++){
		switch(i){
			case 0:
				BGP_REG = 0xE4;
				break;
			case 1:
				BGP_REG = 0xF9;
				break;
			case 2:
				BGP_REG = 0xFE;
				break;
			case 3:
				BGP_REG = 0xFF;	
				break;						
		}
		performant_delay(5);
	}
}

void fade_in() {
	for(int8_t i=0;i<3;i++){
		switch(i){
			case 0:
				BGP_REG = 0xFE;
				break;
			case 1:
				BGP_REG = 0xF9;
				break;
			case 2:
				BGP_REG = 0xE4;
				break;					
		}
		performant_delay(5);
	}
}

void hide_all_sprites()
{
	for(int8_t i=0;i<40;i++)
	{
		hide_sprite(i);
	}
}