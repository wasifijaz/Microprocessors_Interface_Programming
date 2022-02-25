#line 1 "D:/Education/Semester 5/MPI Lab/LAB 4/Task 1/Task1.c"
sbit rowa at RB0_bit;
sbit rowb at RB1_bit;
sbit rowc at RB2_bit;
sbit rowd at RB3_bit;
sbit c1 at RB4_bit;
sbit c2 at RB5_bit;
sbit c3 at RB6_bit;

unsigned int j=0;

void keypadinit()
{
TRISB=0b11110000;
PORTB=0x00000000;
OPTION_REG =0x7F;
}

char readswitches()
{
rowa=0; rowb=1; rowc=1; rowd=1;
if (c1==0)
 {
 delay_ms(1000);
 while(c1==0);
 return '1';
 }
if (c2==0)
 {
 delay_ms(1000);
 while(c2==0);
 return '2';
 }
if (c3==0)
 {
 delay_ms(1000);
 while(c3==0);
 return '3';
 }

rowa=1; rowb=0; rowc=1; rowd=1;
if (c1==0)
 {
 delay_ms(1000);
 while(c1==0);
 return '4';
 }
if (c2==0)
 {
 delay_ms(1000);
 while(c2==0);
 return '5';
 }
if (c3==0)
 {
 delay_ms(1000);
 while(c3==0);
 return '6';
 }

rowa=1; rowb=1; rowc=0; rowd=1;
if (c1==0)
 {
 delay_ms(1000);
 while(c1==0);
 return '7';
 }
if (c2==0)
 {
 delay_ms(1000);
 while(c2==0);
 return '8';
 }
if (c3==0)
 {
 delay_ms(1000);
 while(c3==0);
 return '9';
 }

rowa=1; rowb=1; rowc=1; rowd=0;
if (c1==0)
 {
 delay_ms(1000);
 while(c1==0);
 return 'S';
 }
if (c2==0)
 {
 delay_ms(1000);
 while(c2==0);
 return '0';
 }
if (c3==0)
 {
 delay_ms(1000);
 while(c3==0);
 return 'H';
 }
return 'n';
}

char getkey()
{
char key='n';
while (key=='n')
 key=readswitches();
return key;
}

keyreading(char k);
void main ()
{
char key='n';
TRISD=0x00;
PORTD=0x00;
keypadinit();
while(1)
{
key= getkey();
keyreading(key);
PORTD=j;
}
}

keyreading(char k)
{
if(k=='0')
j=0x00;
if(k=='1')
j=0x01;
if(k=='2')
j=0x02;
if(k=='3')
j=0x03;
if(k=='4')
j=0x04;
if(k=='5')
j=0x05;
if(k=='6')
j=0x06;
if(k=='7')
j=0x07;
if(k=='8')
j=0x08;
if(k=='9')
j=0x09;
if(k=='S')
j=0x0A;
if(k=='H')
j=0x0B;
}
