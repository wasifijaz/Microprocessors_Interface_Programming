#line 1 "D:/Education/Semester 5/MPI Lab/LAB 3/Task1.c"
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
