#include "io.h"
#include <stdio.h>
#include "system.h"

void set_led(unsigned char led_pattern){
	IOWR(LED_BASE,0, led_pattern);
}

int main(){
	unsigned char led_pattern = 0x00;
	printf("PROJET_Co_Design \n");
	while(1){
		if(IORD(SWITCHER_BASE, 0)==1)
		{
			IOWR(LED_BASE, 0, 0x55);
		}else if(IORD(SWITCHER_BASE, 0)==2)
		{
			IOWR(LED_BASE, 0, 0xFF);
		} else
		{
			IOWR(LED_BASE, 0, 0x00);
		}

		IOWR(SEVEN_SEG_1_BASE,0,0xFF);
		IOWR(SEVEN_SEG_2_BASE,0,0xFF);
		IOWR(SEVEN_SEG_3_BASE,0,0xFF);
		IOWR(SEVEN_SEG_4_BASE,0,0xFF);

		//set_led(led_pattern);
	}
}
