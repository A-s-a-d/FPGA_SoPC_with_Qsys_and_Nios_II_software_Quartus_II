#include "io.h"
#include <stdio.h>
#include "stdint.h" // for uint8_t ... etc
#include "system.h"
#include <unistd.h> // for usleep

void set_led(unsigned char led_pattern){
	IOWR(LED_BASE,0, led_pattern);
}



/* 7 segments
 *
 *  segment_mapping[11]  = dp:NC, a:0, b:1, c:2, d:3, e:4, 5:f, 6:g
 *
 * display order
 *		 1		 2		 3		 4
 * 	 	aaaa    aaaa    aaaa    aaaa
 * 	   f    b  f    b  f    b  f    b
 * 	   f    b  f    b  f    b  f    b
 * 	    gggg    gggg    gggg    gggg
 * 	   e    c  e    c  e    c  e    c
 * 	   e    c  e    c  e    c  e    c
 * 		dddd    dddd    dddd    dddd
 *
 */
const uint8_t segment_mapping[11] = {
    0b11000000, // 0:
    0b11111001, // 1:
    0b10100100, // 2:
    0b10110000, // 3:
    0b10011001, // 4:
    0b10010010, // 5:
    0b10000010, // 6:
    0b11111000, // 7:
    0b10000000, // 8:
    0b10010000, // 9:
    0b00000110  // E:
};

void turn_off_all()
{
	IOWR(SEVEN_SEG_1_BASE,0,0xFF);
	IOWR(SEVEN_SEG_2_BASE,0,0xFF);
	IOWR(SEVEN_SEG_3_BASE,0,0xFF);
	IOWR(SEVEN_SEG_4_BASE,0,0xFF);
}


void display_all_0_to_9_test_segment_mapping(){ // Test function to test all segments and their pin assignation
	int i;
	for(i=0; i <= 10 ; i++)
	{
		IOWR(SEVEN_SEG_1_BASE,0,segment_mapping[i]);
		IOWR(SEVEN_SEG_2_BASE,0,segment_mapping[i]);
		IOWR(SEVEN_SEG_3_BASE,0,segment_mapping[i]);
		IOWR(SEVEN_SEG_4_BASE,0,segment_mapping[i]);
		usleep(500000);
	}
}


void display_number(int number) // Function that takes a number in argument and displays it on 4 : 7 segs. must be less then 9999.
{
	int _number = number;
	uint8_t M, C, D, U;

	if(_number >= 10000) // If the number is too big for 4*7seg
	{
		M = 10;
		C = 10;
		D = 10;
		U = 10; // 10 = E dans la table des correspondance. pour erreur
	}else{ // extraire D, U, M, C
		// calculate M, C, D and U
		M = (number/1000);
		_number -= M*1000;
		//printf("%d \n", M);
		C = (_number/100);
		_number -= C*100;
		//printf("%d \n", C);
		D = (_number/10);
		_number -= D*10;
		//printf("%d \n", D);
		U = _number/1;
		//printf("%d \n", U);
		// write M, C, D and U
	}
	// Affichage
	IOWR(SEVEN_SEG_1_BASE,0,segment_mapping[M]);
	IOWR(SEVEN_SEG_2_BASE,0,segment_mapping[C]);
	IOWR(SEVEN_SEG_3_BASE,0,segment_mapping[D]);
	IOWR(SEVEN_SEG_4_BASE,0,segment_mapping[U]);
}


void counter_0_to_9999_and_display_on_7seg()
{
	int i;
	for(i = 0; i<=9999 ; i=i+3)
	{
		display_number(i);
		usleep(10000);
	}
}

void buttons() {
    int switch_state = IORD(SWITCHER_BASE, 0); // Lecture des switches

    if (switch_state == 1) {
        IOWR(LED_BASE, 0, 0xAA); // Allumer 1 LED sur 2
    }
    else if (switch_state == 2) {
        IOWR(LED_BASE, 0, 0xFF); // Allumer toutes les LEDs
    }
    else {
        IOWR(LED_BASE, 0, 0x00); // Éteindre toutes les LEDs
    }
}

// trouvé sur stackoverflow pour afficher en binaire avec printf)
#define BYTE_TO_BINARY_PATTERN "%c%c%c%c%c%c%c%c"
#define BYTE_TO_BINARY(byte)  \
  ((byte) & 0x80 ? '1' : '0'), \
  ((byte) & 0x40 ? '1' : '0'), \
  ((byte) & 0x20 ? '1' : '0'), \
  ((byte) & 0x10 ? '1' : '0'), \
  ((byte) & 0x08 ? '1' : '0'), \
  ((byte) & 0x04 ? '1' : '0'), \
  ((byte) & 0x02 ? '1' : '0'), \
  ((byte) & 0x01 ? '1' : '0')


uint8_t Verify_pins()
{
    uint8_t i;
    uint8_t display = 0;
    for(i = 0; i < 8 /*8 pins a verifier*/; i++)
    {
        display = display << 1; // decaler de 1

		if(display == 0)
		{
		    display = 1;
		}
		IOWR(SEVEN_SEG_1_BASE,0,display); // afficher sur 1er afficheur
		IOWR(SEVEN_SEG_2_BASE,0,display); // afficher sur 2eme afficheur
		IOWR(SEVEN_SEG_3_BASE,0,display); // afficher sur 3eme afficheur
		IOWR(SEVEN_SEG_4_BASE,0,display); // afficher sur 4eme afficheur
		printf("\n 0b"BYTE_TO_BINARY_PATTERN, BYTE_TO_BINARY(display)); // afficher en binaire
        usleep(100000);
    }
    return 0;
}


int main(){
	//turn_off_all();
	//counter_0_to_9999_and_display_on_7seg();
	buttons();
	printf("PROJET_Co_Design \n");
	while(1){
		/*
		printf("Switchers 0b"BYTE_TO_BINARY_PATTERN, BYTE_TO_BINARY(IORD(SWITCHER_BASE,0)));
		printf("\n");
		printf("Uint 0b"BYTE_TO_BINARY_PATTERN, BYTE_TO_BINARY(IORD(UNITES_BASE,0)));
		printf("\n");
		printf("diz 0b"BYTE_TO_BINARY_PATTERN, BYTE_TO_BINARY(IORD(DIZAINES_BASE,0)));
		printf("\n");
		printf("cen 0b"BYTE_TO_BINARY_PATTERN, BYTE_TO_BINARY(IORD(CENTAINES_BASE,0)));
		printf("\n");
		printf("mil 0b"BYTE_TO_BINARY_PATTERN, BYTE_TO_BINARY(IORD(MILLIERS_BASE,0)));
		printf("\n");
		*/
		/*
		 * lecture frequence
		uint8_t diz = IORD(DIZAINES_BASE,0);
		uint8_t uni = IORD(UNITES_BASE,0);
		uint8_t cen = IORD(CENTAINES_BASE,0);
		uint8_t mil = IORD(MILLIERS_BASE,0);
		printf(" \n%d %d %d %d \n", diz, uni, cen, mil);
		*/
		buttons();
	}
}


