#pragma config FOSC = HS
#pragma config WDTE = OFF
#pragma config PWRTE = OFF
#pragma config BOREN = ON
#pragma config LVP = OFF
#pragma config CPD = OFF
#pragma config WRT = OFF
#pragma config CP = OFF
 
#include <xc.h>
#include <stdio.h>
 
#define _XTAL_FREQ 200000000
#define speed 1
#define steps 250
#define clockwise 0
#define anti_clockwise 1
  
void system_init (void);
void full_drive (char direction);
void half_drive (char direction);
void wave_drive (char direction);
void ms_delay(unsigned int val);
 
void main(void)
{
  system_init();
  while(1){
    for(int i=0;i<steps;i++){
      full_drive(clockwise);
    }
    ms_delay(1000);
    for(int i=0;i<steps;i++){
      wave_drive(anti_clockwise);
    }
    ms_delay(1000);
  }
}
  
void system_init (void){
  TRISB = 0x00;
  PORTB = 0x0F;
}
 
void full_drive (char direction){
  if (direction == anti_clockwise){
    PORTB = 0b00000011;
    ms_delay(speed);
    PORTB = 0b00000110;
    ms_delay(speed);
    PORTB = 0b00001100;
    ms_delay(speed);
    PORTB = 0b00001001;
    ms_delay(speed);
    PORTB = 0b00000011;
    ms_delay(speed);
  }
  if (direction == clockwise){
    PORTB = 0b00001001;
    ms_delay(speed);
    PORTB = 0b00001100;
    ms_delay(speed);
    PORTB = 0b00000110;
    ms_delay(speed);
    PORTB = 0b00000011;
    ms_delay(speed);
    PORTB = 0b00001001;
    ms_delay(speed);
  }    
}
 
void half_drive (char direction){
  if (direction == anti_clockwise){
    PORTB = 0b00000001;
    ms_delay(speed);
    PORTB = 0b00000011;
    ms_delay(speed);
    PORTB = 0b00000010;
    ms_delay(speed);
    PORTB = 0b00000110;
    ms_delay(speed);
    PORTB = 0b00000100;
    ms_delay(speed);
    PORTB = 0b00001100;
    ms_delay(speed);
    PORTB = 0b00001000;
    ms_delay(speed);
    PORTB = 0b00001001;
    ms_delay(speed);
  }
  if (direction == clockwise){
    PORTB = 0b00001001;
    ms_delay(speed);
    PORTB = 0b00001000;
    ms_delay(speed);
    PORTB = 0b00001100;
    ms_delay(speed); 
    PORTB = 0b00000100;
    ms_delay(speed);
    PORTB = 0b00000110;
    ms_delay(speed);
    PORTB = 0b00000010;
    ms_delay(speed);
    PORTB = 0b00000011;
    ms_delay(speed);
    PORTB = 0b00000001;
    ms_delay(speed);
  }
}
 
void wave_drive (char direction){
  if (direction == anti_clockwise){
    PORTB = 0b00000001;
    ms_delay(speed);
    PORTB = 0b00000010;
    ms_delay(speed);
    PORTB = 0b00000100;
    ms_delay(speed);
    PORTB = 0b00001000;
    ms_delay(speed);
  }
  if (direction == clockwise){
    PORTB = 0b00001000;
    ms_delay(speed);
    PORTB = 0b00000100;
    ms_delay(speed);
    PORTB = 0b00000010;
    ms_delay(speed);
    PORTB = 0b00000001;
    ms_delay(speed);
  }  
}
 
void ms_delay(unsigned int val){
  unsigned int i,j;
  for(i=0;i<val;i++)
    for(j=0;j<1650;j++);
}
