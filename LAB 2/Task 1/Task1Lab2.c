void main()
{
TRISD.RD7 = 0;
TRISD.RD6 = 0;
TRISD.RD5 = 0;
TRISD.RD4 = 0;
TRISD.RD3 = 0;
TRISD.RD2 = 0;
OPTION_REG.INTEDG = 1;
INTCON.GIE = 1;
INTCON.INTE = 1;
while(1)
{
PORTD.RD2=0;
PORTD.RD3=0;
PORTD.RD4=0;

PORTD.RD7=1;
PORTD.RD6=1;
PORTD.RD5=1;
Delay_ms(1000);

PORTD.RD7=0;
PORTD.RD6=0;
PORTD.RD5=0;
Delay_ms(1000);
}
}
void interrupt()
{
if (INTCON.INTF==1)
{
PORTD.RD2=1;
Delay_ms(1000);
PORTD.RD2=0;

PORTD.RD3=1;
Delay_ms(1000);
PORTD.RD3=0;

PORTD.RD4=1;
Delay_ms(1000);
PORTD.RD4=0;

INTCON.INTF = 0;
}
}
