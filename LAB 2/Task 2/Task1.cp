#line 1 "D:/Education/Semester 5/MPI Lab/LAB 2/Task 2/Task1.c"
unsigned char temp = 00000000;
void main() {
TRISD.RD7 = 0;
TRISD.RD6 = 0;
TRISD.RD5 = 0;
TRISD.RD4 = 0;
TRISD.RD3 = 0;
TRISD.RD2 = 0;
TRISD.RD1 = 0;
TRISD.RD0 = 0;

INTCON.GIE = 1;
INTCON.RBIE = 1;
while (1)
{
PORTD.RD7=0;
PORTD.RD6=0;
PORTD.RD5=0;
PORTD.RD4=0;

PORTD.RD3=1;
PORTD.RD2=1;
PORTD.RD1=1;
PORTD.RD0=1;
Delay_ms(1000);
PORTD.RD3=0;
PORTD.RD2=0;
PORTD.RD1=0;
PORTD.RD0=0;
Delay_ms(1000);
}
}
void interrupt()
{
if (INTCON.RBIF==1)
{
PORTD.RD3=0;
PORTD.RD2=0;
PORTD.RD1=0;
PORTD.RD0=0;

PORTD = temp^PORTB;
temp = PORTB;
Delay_ms(2000);
INTCON.RBIF=0;
}
}
