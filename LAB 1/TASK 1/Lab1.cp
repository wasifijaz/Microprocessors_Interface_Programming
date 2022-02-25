#line 1 "D:/Education/Semester 5/DCN Lab/Lab1.c"
void main() {
TRISD=0x00;
while(1)
{
PORTD=00000000;
PORTD.RD0=1;
delay_ms(1000);
PORTD.RD0=0;

PORTD.RD1=1;
delay_ms(1000);
PORTD.RD1=0;

PORTD.RD2=1;
delay_ms(1000);
PORTD.RD2=0;

PORTD.RD3=1;
delay_ms(1000);
PORTD.RD3=0;

PORTD.RD4=1;
delay_ms(1000);
PORTD.RD4=0;

PORTD.RD5=1;
delay_ms(1000);
PORTD.RD5=0;

PORTD.RD6=1;
delay_ms(1000);
PORTD.RD6=0;

PORTD.RD7=1;
delay_ms(1000);
PORTD.RD7=0;
}
}
