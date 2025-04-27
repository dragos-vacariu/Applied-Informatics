/*
MICROCONTROLLER USED: PIC16LF1937
COMPILER USED: MPLAB XC8 V1.3
*/

#include <xc.h>

__PROG_CONFIG(1,0x3FE4);     // config. uC (WDT=dis|OSC=int)
__PROG_CONFIG(2,0x1EFF);     // config. uC (PLL (OSC*4)=off) pag. 130 pdf. PIC16LF1937


/*Global variables*/
unsigned char digit_counter = 0;
unsigned char mux_digit_0, mux_digit_1, mux_digit_2, mux_digit_3;
unsigned char digit_symbols[12] = {
                            0xC0, /*value for symbol : 0*/
                            0xF9, /*value for symbol : 1*/
                            0xA4, /*value for symbol : 2*/
                            0xB0, /*value for symbol : 3*/
                            0x99, /*value for symbol : 4*/
                            0x92, /*value for symbol : 5*/
                            0x82, /*value for symbol : 6*/
                            0xF8, /*value for symbol : 7*/
                            0x80, /*value for symbol : 8*/
                            0x90, /*value for symbol : 9*/
                            0x7F, /*value for symbol: . (dot symbol)*/
                            0xFF  /*value for all leds off*/
                            };
unsigned char digit_inits[5]  = {    0xFE,    0xFD,     0xFB,     0xF7,   0xFF};
unsigned long delay_counter;
unsigned char recurrence_counter = 0;

/*Function prototype declarations*/
void init_hardware (void);
void interrupt recurrent_function(void); //global function called during the intrerrupt


void main(void)
{
    init_hardware();

    //Init values
    mux_digit_3=9;
    mux_digit_2=5; 
    mux_digit_1=10; // 10 is the value for the (.) symbol. This segment will only be used for the (.)
    mux_digit_0=0; 

    while (1) //infinite loop
    {
        if(recurrence_counter >= 200) /*recurrence_counter is incremented every 5ms. 5*200 == 1 second*/
        {
            /*We should enter here every second*/
            recurrence_counter=0;
            
            if(mux_digit_3 > 0)
            {
                mux_digit_3--;
            }
            else if(mux_digit_2 > 0)
            {
                mux_digit_3 = 9;
                mux_digit_2--;
            }
            else if(mux_digit_0 > 0)
            {
                mux_digit_3 = 9;
                mux_digit_2 = 5;
                mux_digit_0--;
            }
            else
            {
                /*Time is over*/
            }
        }
    }
}

/*Function definitions*/
void init_hardware (void)
{
    /*
    The system clock source can be switched between
    external and internal clock sources via software using
    the System Clock Select (SCS) bits of the OSCCON
    register. 
    */
    
    /*
    5.6 Oscillator Control Registers
    REGISTER 5-1: OSCCON: OSCILLATOR CONTROL REGISTER
    
    bit 7 SPLLEN: Software PLL Enable bit
        If PLLEN in Configuration Word 1 = 1:
        SPLLEN bit is ignored. 4x PLL is always enabled (subject to oscillator requirements)
        If PLLEN in Configuration Word 1 = 0:
        1 = 4x PLL Is enabled
        0 = 4x PLL is disabled
    
    bit 6-3 IRCF<3:0>: Internal Oscillator Frequency Select bits
        000x = 31 kHz LF
        0010 = 31.25 kHz MF
        0011 = 31.25 kHz HF(1)
        0100 = 62.5 kHz MF
        0101 = 125 kHz MF
        0110 = 250 kHz MF
        0111 = 500 kHz MF (default upon Reset)
        1000 = 125 kHz HF(1)
        1001 = 250 kHz HF(1)
        1010 = 500 kHz HF(1)
        1011 = 1 MHz HF
        1100 = 2 MHz HF
        1101 = 4 MHz HF
        1110 = 8 MHz or 32 MHz HF(see Section 5.2.2.1 “HFINTOSC”)
        1111 = 16 MHz HF
    bit 2 Unimplemented: Read as ‘0’
    
    bit 1-0 SCS<1:0>: System Clock Select bits
        1x = Internal oscillator block
        01 = Timer1 oscillator
        00 = Clock determined by FOSC<2:0> in Configuration Word 1.
    
    */
    OSCCON  = 0x73; // SET THE BITS WITHIN THE OSCON REGISTER TO 8 MHz (PLL disabled)
    
    /*
    A PLL (Phase-Locked Loop) in a microcontroller is a control system that synchronizes an output clock signal to a 
    reference clock. It adjusts the phase of the output signal to match the reference signal, ensuring stable and precise 
    clock generation. PLLs are often used to generate different clock frequencies or improve clock stability in 
    microcontrollers, especially when external crystals or oscillators are used. 
    */
    
    
    /*
    ANSELA REGISTER
    
    The ANSELA register (Register 12-5) is used to
    configure the Input mode of an I/O pin to analog.
    Setting the appropriate ANSELA bit high will cause all
    digital reads on the pin to be read as ‘0’ and allow
    analog functions on the pin to operate correctly.
    
    Note: The ANSELA bits default to the Analog
    mode after Reset. To use any pins as
    digital general purpose or peripheral
    inputs, the corresponding ANSEL bits
    must be initialized to ‘0’ by user software.
    */
    ANSELA  = 0x00; // Configuring the ANSELA REGISTER to digital mode
    
    
    /*
    The TRISA register (Register 12-3) controls the
    PORTA pin output drivers, even when they are being
    used as analog inputs. The user should ensure the bits
    in the TRISA register are maintained set when using
    them as analog inputs. I/O pins configured as analog
    input always read ‘0’.
    */
    TRISA   = 0x00; // Setting PORTA as an output
    
    /*
    The ANSELB register (Register 12-9) is used to
    configure the Input mode of an I/O pin to analog.
    Setting the appropriate ANSELB bit high will cause all
    digital reads on the pin to be read as ‘0’ and allow
    analog functions on the pin to operate correctly.
    */
    
    ANSELB  = 0x00; // Configuring the ANSELB REGISTER to digital mode
    
    /*
    Setting a TRISB bit (= 1) will make the
    corresponding PORTB pin an input (i.e., put the
    corresponding output driver in a High-Impedance mode).
    Clearing a TRISB bit (= 0) will make the corresponding
    PORTB pin an output (i.e., enable the output driver and
    put the contents of the output latch on the selected pin)
    */
    TRISB   = 0x00; // Setting PORTB as an output
    
    
    /*
    Reading the PORTB register (Register 12-6) reads the
    status of the pins, whereas writing to it will write to the
    PORT latch. All write operations are read-modify-write
    operations. Therefore, a write to a port implies that the
    port pins are read, this value is modified and then written
    to the PORT data latch (LATB).
    */
    
    /*PORTA is a 8-bit wide, bidirectional port. Its direction input or output is controlled via TRISA register*/
    PORTA   = 0xFF; // initializing the value on the 8 pins with 1
    //PORTA will control the selector value of the MUX DIGIT
    
    /*PORTB is a 8-bit wide, bidirectional port. Its direction input or output is controlled via TRISB register*/
    PORTB   = 0xFF; // initializing the value on the 8 pins with 1
    //PORTB will control the value to be displayed on the MUX DIGIT
    
    /*
    The Timer1 oscillator is enabled using the T1OSCEN
    control bit in the T1CON register.
    
    The user must ensure that the Timer1 oscillator is
    ready to be used before it is selected as a system clock
    source.
    
    Timer1 has four prescaler options allowing 1, 2, 4 or 8
    divisions of the clock input. The T1CKPS bits of the
    T1CON register control the prescale counter. The
    prescale counter is not directly readable or writable;
    however, the prescaler counter is cleared upon a write to
    TMR1H or TMR1L.
    
    /*
    A prescaler in a microcontroller's timer is a divisor that reduces the input clock frequency to a lower value. 
    This allows the timer to count more slowly, thus extending the time period for generating time-based events. 
    By adjusting the prescaler, you can control the resolution and the frequency of the timer’s output, making it more 
    flexible for different applications.

    For example, a prescaler of 8 would divide the input clock by 8, effectively reducing the timer’s count speed.
    
    To select Timer1 as the timer resource for the CPS
    module, set the TMR1CS<1:0> of the T1CON register
    to ‘11’. When Timer1 is chosen as the timer resource,
    the capacitive sensing oscillator will be the clock
    source for Timer1. Because the Timer1 module has a
    gate control, developing a time base for the frequency
    measurement can be simplified by using the Timer0
    overflow flag.
    */
    T1CON   = 0x11; // initializing Timer T1
                  // (Fosc/4); prescaler 1:2 => Fosc_timer1=1MHz(T=1us)
    
    /*
    TMR1IE: Timer1 Overflow Interrupt Enable bit
    1 = Enables the Timer1 overflow interrupt
    0 = Disables the Timer1 overflow interrupt
    */
    TMR1IE  = 1;    // enabling the intrerrupt for timer T1
      
    /*
    The INTCON registers has the followins bit definitions:
    INTCON -> GIE PEIE TMR0IE INTE IOCIE TMR0IF INTF IOCIF
    
    PEIE bit of the INTCON register (if the Interrupt
    Enable bit of the interrupt event is contained in the
    PIE1, PIE2 and PIE3 registers).
    
    PEIE: Peripheral Interrupt Enable bit
    1 = Enables all active peripheral interrupts
    0 = Disables all peripheral interrupts
    */
    
    PEIE    = 1;    // timer T1 intrerrupts are part of extra intrerrupts triggering our intrerrupt function
    
    
    /* 
    GIE bit of the INTCON register
    Interrupt Enable bit(s) for the specific interrupt
    event(s).
    
    GIE: Global Interrupt Enable bit
    1 = Enables all active interrupts
    0 = Disables all interrupts
    */
    GIE     = 1;    // enabling global intrerrupts which will allow us to call our intrerrupt function
}

void interrupt recurrent_function(void)    // called every 50 ms
{
    
    if(TMR1IF) //if TMR1 has generated the intrerrupt
    {
        TMR1IF = 0;  //cleaning the flag of the timer that generated the intrerrupt

        /*
        TOTAL_MAX      TIME_UNTIL_NEXT_INTRERRUPT     DIFFERENCE
        65535us    -   50000us                        = 15535us 
        15535us is 3CAF (in hexadecimal) 
        this means TMR1H = 0x3C and TMR1L 0xAF
        
        TMR1H = 0x3C;      //loading the superior byte of timer T1
        TMR1L = 0xAF;      //loading the inferior byte of timer T1
        
        50 ms is too slow, the digits have time to go OFF
        
        CALCULATING FOR 5ms recurrence:
        TOTAL_MAX      TIME_UNTIL_NEXT_INTRERRUPT     DIFFERENCE
        65535us    -   5000us                        = 60535us 
        60535us is EC77 (in hexadecimal) 
        
        */
        
        TMR1H = 0xEC;      //loading the superior byte of timer T1
        TMR1L = 0x77;      //loading the inferior byte of timer T1
        switch(digit_counter)
        {
            case 0:
            {
                PORTA = digit_inits[4];        // all MUX digits will be OFF
                PORTB = digit_symbols[mux_digit_3];    // display the symbol
                PORTA = digit_inits[3];        // Enable the digit
                break;
            }
            case 1:
            {
                PORTA = digit_inits[4];        // all MUX digits will be OFF
                PORTB = digit_symbols[mux_digit_2];
                PORTA = digit_inits[2];
                break;
            }
            case 2:
            {
                PORTA = digit_inits[4];        // all MUX digits will be OFF
                PORTB = digit_symbols[mux_digit_1];
                PORTA = digit_inits[1];
                break;
            }
            case 3:
            {
                PORTA = digit_inits[4];        // all MUX digits will be OFF
                PORTB = digit_symbols[mux_digit_0];
                PORTA = digit_inits[0];
                digit_counter = -1;
                break;
            }
            default: 
            {
                break;
            }
        }
        digit_counter++;
        
        recurrence_counter++;
    }
}
 