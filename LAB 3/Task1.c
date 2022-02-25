void main()
{
TRISB = 0x00;
TRISD = 0x00;
for(;;)
{
 PORTB = 0x20;
 PORTD = 0x25;
}
}