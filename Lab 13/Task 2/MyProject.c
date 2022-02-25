void main()
{
    TRISB.RB0 =0;   //PORT RB0 is configured as output
    TRISC.RC0=1;     //PORT RC0 is configured as INPUT
    T1CON = 0x02; // T1CON.TMR1CS=1 to Configure timer 1 as counter
    TMR1H=0x00;
    TMR1L=0x00;
    T1CON.TMR1ON = 1;
    while(1)
    {

int num = 0;
           while(PIR1.TMR1IF==0)
           {
            //PORTB = TMR1L;
            //PORTD= TMR1H;
            num ++;

           }
            if (num > 10){
               PORTB.RB0 = 1;
            }
         T1CON.TMR1ON=0;
         TMR1H=0x00;   // Initial Values of TMR1H=0
         TMR1L=0x00;   // Initial Values of TMR1L=0
         T1CON.TMR1ON = 1;
         PIR1.TMR1IF=0;
    }
}
