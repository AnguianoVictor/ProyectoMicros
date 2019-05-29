/* A simple demonstration of serial communications which
 * incorporates the on-board hardware USART of the Microchip
 * PIC16F690 device. */
//#define _LEGACY_HEADERS //Added for compiler versions 9.81+
#include <stdio.h>
#include <htc.h>
#include <math.h>
#include "usart.h"
#include "lcd.h"
/*
PIC16F887 Configuration
*/
__CONFIG (FOSC_INTRC_NOCLKOUT & WDTE_OFF & PWRTE_OFF & MCLRE_OFF & CP_OFF & CPD_OFF & BOREN_OFF & IESO_OFF & FCMEN_OFF & LVP_OFF & DEBUG_OFF);
__CONFIG (BOR4V_BOR40V & WRT_OFF);
void pause( unsigned short usvalue );	

unsigned int VADCH,VADCL,VADC,input;
float a,b;
char str[80];

void main(void){
//Configuraci?n de puertos y perif?ricos a usar
	ANSEL = 0xE0; 		//		
	ANSELH = 0;
	CM1CON0 = 0;	//Comparadores apagados
	CM2CON0 = 0;
	TRISA = 0x00;
	TRISB = 0x00;
	TRISC = 0x00;
	TRISD = 0x00;
	TRISE = 0x07;
	ADCON1= 0x00;
	init_comms();	// set up the USART - settings defined in usart.h
	lcd_init();	
	lcd_goto(0x00);				//Selecci?n de la segunda l?nea
	//sprintf(str,"Tmpobj=%i%.1f",input,b);//Se imprime la temperatura objetivo
	lcd_puts("Configurando");
	lcd_goto(0x40);
	lcd_puts("puertos I/O...");
	pause(500);
	lcd_clear();
//Configuraci?n PWM
	lcd_puts("Configurando");
	lcd_goto(0x40);
	lcd_puts("PWM...");
	pause(500);
	lcd_clear();
	PR2= 0xBF;
	CCPR1L=0x80;
	CCPR2L=0x80;
	CCP1CON=0x0C;
	CCP2CON=0x0C;
	T2CON=0x07;
	while (TMR2IF ==0);			// Wait for start of period
	INTCON=0;	// purpose of disabling the interrupts.
	// *** Serial Communication Main Loop
	CCPR1L=0x00;
	CCPR2L=0x00;
	VADCH=0;
	VADCL=0;
	VADC=0;
	a=0;
	lcd_goto(0x00);
	lcd_puts("Iniciando");
	lcd_goto(0x40);
	lcd_puts("Transmision...");
	pause(700);
	lcd_clear;
	while(1)
		{
		//unsigned int count;
		//for (count = 1; count <= 50; count = count +1)	
			//{
			input = getch();
			ADCON0=0XD4;//AN5
			ADON=1;
			GO_DONE=1;
			while(GO_DONE==1);
			VADCH=ADRESH;
			VADCL=ADRESL;
			VADC=(ADRESH<<2)+(ADRESL>>6);
			ADON=0;
			printf("%i\r\n",VADC);
			a=(float)VADC*500/1024;
			b=(float)input;
			lcd_clear();				// Se limpia la pantalla lcd
			lcd_goto(0);				// Selecci?n de la primera linea
			sprintf(str,"Tmp=%.1f",a);//Se imprime la temperatura actual
			lcd_puts(str);
			lcd_goto(0x40);				//Selecci?n de la segunda l?nea
			sprintf(str,"Tmpobj=%i%.1f",input,b);//Se imprime la temperatura objetivo
			lcd_puts(str);


			if(a>=b)
			{
				RB0=0;
				CCPR2L=0x00;
				CCPR1L=0x00;

			}
			else
			{
				RB0=1;
				CCPR2L=input;
			}
				
				CCP1CON=0x0C;
				//CCP1CON=0x0C|(VADCL>>2);
				CCP2CON=0x0C;
				
				//CCP2CON=0x0C|(VADCL>>2);
		}		

}