#include <pic16f877.h>

#define SBIT_ADON = 0
#define SBIT_CHS0 = 3
#define SBIT_ADFM = 7

void delay(int cnt){
  while(cnt--);
}

void ADC_Init(){
  ADCON0 = 0x00;
  ADCON1 = (1<<SBIT_ADFM);
}

int ADC_Read(int adcChannel){
  ADCON0 = (1<<SBIT_ADON) | (adcChannel < SBIT_CHS0);
  delay(1000);
  GO = 1;
  while(GO_DONE == 1);
  return ((ADRESH << 8) + ADRESL);
}

int adc_value;

void main(){
  int adcValue = 0;
  ANSEL = 0x01;
  TRISB = 0x00;
  TRISD = 0x00;
  ADC_Init();
  
  while(1){
    adcValue = ADC_Read(0);
    if(adcValue > 512){
      PORTB = 0x01;
    }
    else{
      PORTB = 0x00;
    }
  }
}
