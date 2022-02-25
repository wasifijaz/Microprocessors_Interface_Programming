#line 1 "D:/Education/Semester 5/MPI Lab/Lab 13/Task 2/MyProject.c"
void main()
{
 TRISB.RB0 =0;
 TRISC.RC0=1;
 T1CON = 0x02;
 TMR1H=0x00;
 TMR1L=0x00;
 T1CON.TMR1ON = 1;
 while(1)
 {

int num = 0;
 while(PIR1.TMR1IF==0)
 {


 num ++;

 }
 if (num > 10){
 PORTB.RB0 = 1;
 }
 T1CON.TMR1ON=0;
 TMR1H=0x00;
 TMR1L=0x00;
 T1CON.TMR1ON = 1;
 PIR1.TMR1IF=0;
 }
}
