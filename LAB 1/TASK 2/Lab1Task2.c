void main() {
TRISB.RB1=1;
TRISD.RD7=0;
while(1)
{
if(PORTB.RB1 == 1)
{
PORTD.RD7=1;
}
else
{
PORTD.RD7=0;
}
}
}