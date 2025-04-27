opt subtitle "Microchip Technology Omniscient Code Generator (Lite mode) build 52243"

opt pagewidth 120

	opt lm

	processor	16LF1937
clrc	macro
	bcf	3,0
	endm
clrz	macro
	bcf	3,2
	endm
setc	macro
	bsf	3,0
	endm
setz	macro
	bsf	3,2
	endm
skipc	macro
	btfss	3,0
	endm
skipz	macro
	btfss	3,2
	endm
skipnc	macro
	btfsc	3,0
	endm
skipnz	macro
	btfsc	3,2
	endm
indf	equ	0
indf0	equ	0
indf1	equ	1
pc	equ	2
pcl	equ	2
status	equ	3
fsr0l	equ	4
fsr0h	equ	5
fsr1l	equ	6
fsr1h	equ	7
bsr	equ	8
wreg	equ	9
intcon	equ	11
c	equ	1
z	equ	0
pclath	equ	10
# 46 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic16lf1937.h"
INDF0 equ 00h ;# 
# 65 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic16lf1937.h"
INDF1 equ 01h ;# 
# 84 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic16lf1937.h"
PCL equ 02h ;# 
# 103 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic16lf1937.h"
STATUS equ 03h ;# 
# 166 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic16lf1937.h"
FSR0L equ 04h ;# 
# 185 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic16lf1937.h"
FSR0H equ 05h ;# 
# 207 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic16lf1937.h"
FSR1L equ 06h ;# 
# 226 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic16lf1937.h"
FSR1H equ 07h ;# 
# 245 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic16lf1937.h"
BSR equ 08h ;# 
# 296 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic16lf1937.h"
WREG equ 09h ;# 
# 315 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic16lf1937.h"
PCLATH equ 0Ah ;# 
# 334 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic16lf1937.h"
INTCON equ 0Bh ;# 
# 411 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic16lf1937.h"
PORTA equ 0Ch ;# 
# 472 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic16lf1937.h"
PORTB equ 0Dh ;# 
# 533 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic16lf1937.h"
PORTC equ 0Eh ;# 
# 594 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic16lf1937.h"
PORTD equ 0Fh ;# 
# 655 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic16lf1937.h"
PORTE equ 010h ;# 
# 692 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic16lf1937.h"
PIR1 equ 011h ;# 
# 753 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic16lf1937.h"
PIR2 equ 012h ;# 
# 809 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic16lf1937.h"
PIR3 equ 013h ;# 
# 854 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic16lf1937.h"
TMR0 equ 015h ;# 
# 873 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic16lf1937.h"
TMR1 equ 016h ;# 
# 879 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic16lf1937.h"
TMR1L equ 016h ;# 
# 898 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic16lf1937.h"
TMR1H equ 017h ;# 
# 917 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic16lf1937.h"
T1CON equ 018h ;# 
# 988 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic16lf1937.h"
T1GCON equ 019h ;# 
# 1064 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic16lf1937.h"
TMR2 equ 01Ah ;# 
# 1083 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic16lf1937.h"
PR2 equ 01Bh ;# 
# 1102 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic16lf1937.h"
T2CON equ 01Ch ;# 
# 1172 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic16lf1937.h"
CPSCON0 equ 01Eh ;# 
# 1225 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic16lf1937.h"
CPSCON1 equ 01Fh ;# 
# 1270 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic16lf1937.h"
TRISA equ 08Ch ;# 
# 1331 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic16lf1937.h"
TRISB equ 08Dh ;# 
# 1392 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic16lf1937.h"
TRISC equ 08Eh ;# 
# 1453 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic16lf1937.h"
TRISD equ 08Fh ;# 
# 1514 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic16lf1937.h"
TRISE equ 090h ;# 
# 1551 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic16lf1937.h"
PIE1 equ 091h ;# 
# 1612 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic16lf1937.h"
PIE2 equ 092h ;# 
# 1668 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic16lf1937.h"
PIE3 equ 093h ;# 
# 1713 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic16lf1937.h"
OPTION_REG equ 095h ;# 
# 1795 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic16lf1937.h"
PCON equ 096h ;# 
# 1845 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic16lf1937.h"
WDTCON equ 097h ;# 
# 1903 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic16lf1937.h"
OSCTUNE equ 098h ;# 
# 1960 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic16lf1937.h"
OSCCON equ 099h ;# 
# 2031 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic16lf1937.h"
OSCSTAT equ 09Ah ;# 
# 2092 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic16lf1937.h"
ADRES equ 09Bh ;# 
# 2098 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic16lf1937.h"
ADRESL equ 09Bh ;# 
# 2117 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic16lf1937.h"
ADRESH equ 09Ch ;# 
# 2136 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic16lf1937.h"
ADCON0 equ 09Dh ;# 
# 2224 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic16lf1937.h"
ADCON1 equ 09Eh ;# 
# 2295 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic16lf1937.h"
LATA equ 010Ch ;# 
# 2356 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic16lf1937.h"
LATB equ 010Dh ;# 
# 2417 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic16lf1937.h"
LATC equ 010Eh ;# 
# 2478 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic16lf1937.h"
LATD equ 010Fh ;# 
# 2547 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic16lf1937.h"
LATE equ 0110h ;# 
# 2584 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic16lf1937.h"
CM1CON0 equ 0111h ;# 
# 2640 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic16lf1937.h"
CM1CON1 equ 0112h ;# 
# 2705 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic16lf1937.h"
CM2CON0 equ 0113h ;# 
# 2761 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic16lf1937.h"
CM2CON1 equ 0114h ;# 
# 2826 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic16lf1937.h"
CMOUT equ 0115h ;# 
# 2851 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic16lf1937.h"
BORCON equ 0116h ;# 
# 2877 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic16lf1937.h"
FVRCON equ 0117h ;# 
# 2952 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic16lf1937.h"
DACCON0 equ 0118h ;# 
# 3012 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic16lf1937.h"
DACCON1 equ 0119h ;# 
# 3063 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic16lf1937.h"
SRCON0 equ 011Ah ;# 
# 3133 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic16lf1937.h"
SRCON1 equ 011Bh ;# 
# 3194 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic16lf1937.h"
APFCON equ 011Dh ;# 
# 3249 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic16lf1937.h"
ANSELA equ 018Ch ;# 
# 3306 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic16lf1937.h"
ANSELB equ 018Dh ;# 
# 3363 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic16lf1937.h"
ANSELD equ 018Fh ;# 
# 3432 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic16lf1937.h"
ANSELE equ 0190h ;# 
# 3471 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic16lf1937.h"
EEADR equ 0191h ;# 
# 3477 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic16lf1937.h"
EEADRL equ 0191h ;# 
# 3496 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic16lf1937.h"
EEADRH equ 0192h ;# 
# 3515 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic16lf1937.h"
EEDAT equ 0193h ;# 
# 3521 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic16lf1937.h"
EEDATL equ 0193h ;# 
# 3526 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic16lf1937.h"
EEDATA equ 0193h ;# 
# 3558 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic16lf1937.h"
EEDATH equ 0194h ;# 
# 3577 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic16lf1937.h"
EECON1 equ 0195h ;# 
# 3638 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic16lf1937.h"
EECON2 equ 0196h ;# 
# 3657 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic16lf1937.h"
RCREG equ 0199h ;# 
# 3676 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic16lf1937.h"
TXREG equ 019Ah ;# 
# 3695 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic16lf1937.h"
SPBRGL equ 019Bh ;# 
# 3700 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic16lf1937.h"
SPBRG equ 019Bh ;# 
# 3732 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic16lf1937.h"
SPBRGH equ 019Ch ;# 
# 3751 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic16lf1937.h"
RCSTA equ 019Dh ;# 
# 3812 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic16lf1937.h"
TXSTA equ 019Eh ;# 
# 3873 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic16lf1937.h"
BAUDCON equ 019Fh ;# 
# 3924 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic16lf1937.h"
WPUB equ 020Dh ;# 
# 3993 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic16lf1937.h"
WPUE equ 0210h ;# 
# 4013 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic16lf1937.h"
SSPBUF equ 0211h ;# 
# 4032 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic16lf1937.h"
SSPADD equ 0212h ;# 
# 4051 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic16lf1937.h"
SSPMSK equ 0213h ;# 
# 4070 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic16lf1937.h"
SSPSTAT equ 0214h ;# 
# 4131 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic16lf1937.h"
SSPCON1 equ 0215h ;# 
# 4136 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic16lf1937.h"
SSPCON equ 0215h ;# 
# 4252 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic16lf1937.h"
SSPCON2 equ 0216h ;# 
# 4313 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic16lf1937.h"
SSPCON3 equ 0217h ;# 
# 4374 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic16lf1937.h"
CCPR1L equ 0291h ;# 
# 4393 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic16lf1937.h"
CCPR1H equ 0292h ;# 
# 4412 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic16lf1937.h"
CCP1CON equ 0293h ;# 
# 4493 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic16lf1937.h"
PWM1CON equ 0294h ;# 
# 4554 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic16lf1937.h"
CCP1AS equ 0295h ;# 
# 4559 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic16lf1937.h"
ECCP1AS equ 0295h ;# 
# 4675 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic16lf1937.h"
PSTR1CON equ 0296h ;# 
# 4718 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic16lf1937.h"
CCPR2L equ 0298h ;# 
# 4737 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic16lf1937.h"
CCPR2H equ 0299h ;# 
# 4756 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic16lf1937.h"
CCP2CON equ 029Ah ;# 
# 4837 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic16lf1937.h"
PWM2CON equ 029Bh ;# 
# 4898 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic16lf1937.h"
CCP2AS equ 029Ch ;# 
# 4903 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic16lf1937.h"
ECCP2AS equ 029Ch ;# 
# 5019 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic16lf1937.h"
PSTR2CON equ 029Dh ;# 
# 5062 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic16lf1937.h"
CCPTMRS0 equ 029Eh ;# 
# 5149 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic16lf1937.h"
CCPTMRS1 equ 029Fh ;# 
# 5182 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic16lf1937.h"
CCPR3L equ 0311h ;# 
# 5201 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic16lf1937.h"
CCPR3H equ 0312h ;# 
# 5220 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic16lf1937.h"
CCP3CON equ 0313h ;# 
# 5301 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic16lf1937.h"
PWM3CON equ 0314h ;# 
# 5362 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic16lf1937.h"
CCP3AS equ 0315h ;# 
# 5367 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic16lf1937.h"
ECCP3AS equ 0315h ;# 
# 5483 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic16lf1937.h"
PSTR3CON equ 0316h ;# 
# 5526 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic16lf1937.h"
CCPR4L equ 0318h ;# 
# 5545 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic16lf1937.h"
CCPR4H equ 0319h ;# 
# 5564 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic16lf1937.h"
CCP4CON equ 031Ah ;# 
# 5627 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic16lf1937.h"
CCPR5L equ 031Ch ;# 
# 5646 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic16lf1937.h"
CCPR5H equ 031Dh ;# 
# 5665 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic16lf1937.h"
CCP5CON equ 031Eh ;# 
# 5728 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic16lf1937.h"
IOCBP equ 0394h ;# 
# 5797 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic16lf1937.h"
IOCBN equ 0395h ;# 
# 5866 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic16lf1937.h"
IOCBF equ 0396h ;# 
# 5935 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic16lf1937.h"
TMR4 equ 0415h ;# 
# 5954 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic16lf1937.h"
PR4 equ 0416h ;# 
# 5973 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic16lf1937.h"
T4CON equ 0417h ;# 
# 6043 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic16lf1937.h"
TMR6 equ 041Ch ;# 
# 6062 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic16lf1937.h"
PR6 equ 041Dh ;# 
# 6081 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic16lf1937.h"
T6CON equ 041Eh ;# 
# 6151 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic16lf1937.h"
LCDCON equ 0791h ;# 
# 6221 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic16lf1937.h"
LCDPS equ 0792h ;# 
# 6290 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic16lf1937.h"
LCDREF equ 0793h ;# 
# 6341 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic16lf1937.h"
LCDCST equ 0794h ;# 
# 6380 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic16lf1937.h"
LCDRL equ 0795h ;# 
# 6457 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic16lf1937.h"
LCDSE0 equ 0798h ;# 
# 6518 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic16lf1937.h"
LCDSE1 equ 0799h ;# 
# 6579 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic16lf1937.h"
LCDSE2 equ 079Ah ;# 
# 6640 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic16lf1937.h"
LCDDATA0 equ 07A0h ;# 
# 6701 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic16lf1937.h"
LCDDATA1 equ 07A1h ;# 
# 6762 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic16lf1937.h"
LCDDATA2 equ 07A2h ;# 
# 6823 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic16lf1937.h"
LCDDATA3 equ 07A3h ;# 
# 6884 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic16lf1937.h"
LCDDATA4 equ 07A4h ;# 
# 6945 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic16lf1937.h"
LCDDATA5 equ 07A5h ;# 
# 7006 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic16lf1937.h"
LCDDATA6 equ 07A6h ;# 
# 7067 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic16lf1937.h"
LCDDATA7 equ 07A7h ;# 
# 7128 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic16lf1937.h"
LCDDATA8 equ 07A8h ;# 
# 7189 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic16lf1937.h"
LCDDATA9 equ 07A9h ;# 
# 7250 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic16lf1937.h"
LCDDATA10 equ 07AAh ;# 
# 7311 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic16lf1937.h"
LCDDATA11 equ 07ABh ;# 
# 7372 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic16lf1937.h"
STATUS_SHAD equ 0FE4h ;# 
# 7403 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic16lf1937.h"
WREG_SHAD equ 0FE5h ;# 
# 7422 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic16lf1937.h"
BSR_SHAD equ 0FE6h ;# 
# 7441 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic16lf1937.h"
PCLATH_SHAD equ 0FE7h ;# 
# 7460 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic16lf1937.h"
FSR0L_SHAD equ 0FE8h ;# 
# 7479 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic16lf1937.h"
FSR0H_SHAD equ 0FE9h ;# 
# 7498 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic16lf1937.h"
FSR1L_SHAD equ 0FEAh ;# 
# 7517 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic16lf1937.h"
FSR1H_SHAD equ 0FEBh ;# 
# 7536 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic16lf1937.h"
STKPTR equ 0FEDh ;# 
# 7555 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic16lf1937.h"
TOSL equ 0FEEh ;# 
# 7574 "C:\Program Files (x86)\Microchip\xc8\v1.20\include\pic16lf1937.h"
TOSH equ 0FEFh ;# 
	FNCALL	_main,_init_hardware
	FNROOT	_main
	FNCALL	intlevel1,_recurrent_function
	global	intlevel1
	FNROOT	intlevel1
	global	_digit_inits
	global	_digit_symbols
psect	idataCOMMON,class=CODE,space=0,delta=2,noexec
global __pidataCOMMON
__pidataCOMMON:
	file	"../main.c"
	line	29

;initializer for _digit_inits
	retlw	0FEh
	retlw	0FDh
	retlw	0FBh
	retlw	0F7h
	retlw	0FFh
psect	idataBANK0,class=CODE,space=0,delta=2,noexec
global __pidataBANK0
__pidataBANK0:
	line	15

;initializer for _digit_symbols
	retlw	0C0h
	retlw	0F9h
	retlw	0A4h
	retlw	0B0h
	retlw	099h
	retlw	092h
	retlw	082h
	retlw	0F8h
	retlw	080h
	retlw	090h
	retlw	07Fh
	retlw	0FFh
	global	_digit_counter
	global	_mux_digit_0
	global	_recurrence_counter
	global	_delay_counter
	global	_mux_digit_1
psect	nvCOMMON,class=COMMON,space=1,noexec
global __pnvCOMMON
__pnvCOMMON:
_mux_digit_1:
       ds      1

	global	_mux_digit_2
_mux_digit_2:
       ds      1

	global	_mux_digit_3
_mux_digit_3:
       ds      1

	global	_PORTA
_PORTA	set	0xC
	global	_PORTB
_PORTB	set	0xD
	global	_T1CON
_T1CON	set	0x18
	global	_TMR1H
_TMR1H	set	0x17
	global	_TMR1L
_TMR1L	set	0x16
	global	_GIE
_GIE	set	0x5F
	global	_PEIE
_PEIE	set	0x5E
	global	_TMR1IF
_TMR1IF	set	0x88
	global	_OSCCON
_OSCCON	set	0x99
	global	_TRISA
_TRISA	set	0x8C
	global	_TRISB
_TRISB	set	0x8D
	global	_TMR1IE
_TMR1IE	set	0x488
	global	_ANSELA
_ANSELA	set	0x18C
	global	_ANSELB
_ANSELB	set	0x18D
; #config settings
global __CFG_CPD$OFF
__CFG_CPD$OFF equ 0x0
global __CFG_BOREN$ON
__CFG_BOREN$ON equ 0x0
global __CFG_IESO$ON
__CFG_IESO$ON equ 0x0
global __CFG_FOSC$INTOSC
__CFG_FOSC$INTOSC equ 0x0
global __CFG_FCMEN$ON
__CFG_FCMEN$ON equ 0x0
global __CFG_MCLRE$ON
__CFG_MCLRE$ON equ 0x0
global __CFG_WDTE$OFF
__CFG_WDTE$OFF equ 0x0
global __CFG_CP$OFF
__CFG_CP$OFF equ 0x0
global __CFG_PWRTE$OFF
__CFG_PWRTE$OFF equ 0x0
global __CFG_CLKOUTEN$OFF
__CFG_CLKOUTEN$OFF equ 0x0
global __CFG_PLLEN$OFF
__CFG_PLLEN$OFF equ 0x0
global __CFG_WRT$OFF
__CFG_WRT$OFF equ 0x0
global __CFG_STVREN$ON
__CFG_STVREN$ON equ 0x0
global __CFG_BORV$LO
__CFG_BORV$LO equ 0x0
global __CFG_LVP$OFF
__CFG_LVP$OFF equ 0x0
	file	"Release.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

global __initialization
__initialization:
psect	bssCOMMON,class=COMMON,space=1,noexec
global __pbssCOMMON
__pbssCOMMON:
_digit_counter:
       ds      1

_mux_digit_0:
       ds      1

_recurrence_counter:
       ds      1

psect	dataCOMMON,class=COMMON,space=1,noexec
global __pdataCOMMON
__pdataCOMMON:
	file	"../main.c"
	line	29
_digit_inits:
       ds      5

psect	bssBANK0,class=BANK0,space=1,noexec
global __pbssBANK0
__pbssBANK0:
_delay_counter:
       ds      4

psect	dataBANK0,class=BANK0,space=1,noexec
global __pdataBANK0
__pdataBANK0:
	file	"../main.c"
	line	15
_digit_symbols:
       ds      12

; Clear objects allocated to COMMON
psect cinit,class=CODE,delta=2,merge=1
	global __pbssCOMMON
	clrf	((__pbssCOMMON)+0)&07Fh
	clrf	((__pbssCOMMON)+1)&07Fh
	clrf	((__pbssCOMMON)+2)&07Fh
; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2,merge=1
	global __pbssBANK0
	clrf	((__pbssBANK0)+0)&07Fh
	clrf	((__pbssBANK0)+1)&07Fh
	clrf	((__pbssBANK0)+2)&07Fh
	clrf	((__pbssBANK0)+3)&07Fh
psect inittext,class=CODE,delta=2
global init_ram,btemp
init_ram:
	movwf btemp,f
initloop:
	moviw fsr0++
	movwi fsr1++
	decfsz btemp
	goto initloop
	retlw 0
; Initialize objects allocated to COMMON
	global __pidataCOMMON,__pdataCOMMON
psect cinit,class=CODE,delta=2,merge=1
	movlw low(__pidataCOMMON)
	movwf fsr0l
	movlw high(__pidataCOMMON)|80h
	movwf fsr0h
	movlw low(__pdataCOMMON)
	movwf fsr1l
	movlw high(__pdataCOMMON)
	movwf fsr1h
	movlw 05h
	fcall init_ram
; Initialize objects allocated to BANK0
	global __pidataBANK0,__pdataBANK0
psect cinit,class=CODE,delta=2,merge=1
	movlw low(__pidataBANK0)
	movwf fsr0l
	movlw high(__pidataBANK0)|80h
	movwf fsr0h
	movlw low(__pdataBANK0)
	movwf fsr1l
	movlw high(__pdataBANK0)
	movwf fsr1h
	movlw 0Ch
	fcall init_ram
psect cinit,class=CODE,delta=2,merge=1
global end_of_initialization,__end_of__initialization

;End of C runtime variable initialization code

end_of_initialization:
__end_of__initialization:movlb 0
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1,noexec
global __pcstackCOMMON
__pcstackCOMMON:
?_init_hardware:	; 0 bytes @ 0x0
?_main:	; 0 bytes @ 0x0
?_recurrent_function:	; 0 bytes @ 0x0
??_recurrent_function:	; 0 bytes @ 0x0
	ds	2
psect	cstackBANK0,class=BANK0,space=1,noexec
global __pcstackBANK0
__pcstackBANK0:
??_init_hardware:	; 0 bytes @ 0x0
??_main:	; 0 bytes @ 0x0
	ds	1
;!
;!Data Sizes:
;!    Strings     0
;!    Constant    0
;!    Data        17
;!    BSS         7
;!    Persistent  3
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14      2      13
;!    BANK0            80      1      17
;!    BANK1            80      0       0
;!    BANK2            80      0       0
;!    BANK3            80      0       0
;!    BANK4            80      0       0
;!    BANK5            80      0       0
;!    BANK6            16      0       0

;!
;!Pointer List with Targets:
;!
;!    None.


;!
;!Critical Paths under _main in COMMON
;!
;!    None.
;!
;!Critical Paths under _recurrent_function in COMMON
;!
;!    None.
;!
;!Critical Paths under _main in BANK0
;!
;!    None.
;!
;!Critical Paths under _recurrent_function in BANK0
;!
;!    None.
;!
;!Critical Paths under _main in BANK1
;!
;!    None.
;!
;!Critical Paths under _recurrent_function in BANK1
;!
;!    None.
;!
;!Critical Paths under _main in BANK2
;!
;!    None.
;!
;!Critical Paths under _recurrent_function in BANK2
;!
;!    None.
;!
;!Critical Paths under _main in BANK3
;!
;!    None.
;!
;!Critical Paths under _recurrent_function in BANK3
;!
;!    None.
;!
;!Critical Paths under _main in BANK4
;!
;!    None.
;!
;!Critical Paths under _recurrent_function in BANK4
;!
;!    None.
;!
;!Critical Paths under _main in BANK5
;!
;!    None.
;!
;!Critical Paths under _recurrent_function in BANK5
;!
;!    None.
;!
;!Critical Paths under _main in BANK6
;!
;!    None.
;!
;!Critical Paths under _recurrent_function in BANK6
;!
;!    None.

;;
;;Main: autosize = 0, tempsize = 1, incstack = 0, save=0
;;

;!
;!Call Graph Tables:
;!
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (0) _main                                                 1     1      0       0
;!                                              0 BANK0      1     1      0
;!                      _init_hardware
;! ---------------------------------------------------------------------------------
;! (1) _init_hardware                                        0     0      0       0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 1
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (2) _recurrent_function                                   2     2      0       0
;!                                              0 COMMON     2     2      0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 2
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _init_hardware
;!
;! _recurrent_function (ROOT)
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!BIGRAM             1F0      0       0       0        0.0%
;!EEDATA             100      0       0       0        0.0%
;!NULL                 0      0       0       0        0.0%
;!CODE                 0      0       0       0        0.0%
;!BITCOMMON            E      0       0       1        0.0%
;!BITSFR0              0      0       0       1        0.0%
;!SFR0                 0      0       0       1        0.0%
;!COMMON               E      2       D       2       92.9%
;!BITSFR1              0      0       0       2        0.0%
;!SFR1                 0      0       0       2        0.0%
;!BITSFR2              0      0       0       3        0.0%
;!SFR2                 0      0       0       3        0.0%
;!STACK                0      0       1       3        0.0%
;!BITSFR3              0      0       0       4        0.0%
;!SFR3                 0      0       0       4        0.0%
;!ABS                  0      0      1E       4        0.0%
;!BITBANK0            50      0       0       5        0.0%
;!BITSFR4              0      0       0       5        0.0%
;!SFR4                 0      0       0       5        0.0%
;!BANK0               50      1      11       6       21.3%
;!BITSFR5              0      0       0       6        0.0%
;!SFR5                 0      0       0       6        0.0%
;!BITBANK1            50      0       0       7        0.0%
;!BITSFR6              0      0       0       7        0.0%
;!SFR6                 0      0       0       7        0.0%
;!BANK1               50      0       0       8        0.0%
;!BITSFR7              0      0       0       8        0.0%
;!SFR7                 0      0       0       8        0.0%
;!BITBANK2            50      0       0       9        0.0%
;!BITSFR8              0      0       0       9        0.0%
;!SFR8                 0      0       0       9        0.0%
;!BANK2               50      0       0      10        0.0%
;!BITSFR9              0      0       0      10        0.0%
;!SFR9                 0      0       0      10        0.0%
;!BITBANK3            50      0       0      11        0.0%
;!BITSFR10             0      0       0      11        0.0%
;!SFR10                0      0       0      11        0.0%
;!BANK3               50      0       0      12        0.0%
;!BITSFR11             0      0       0      12        0.0%
;!SFR11                0      0       0      12        0.0%
;!BITBANK4            50      0       0      13        0.0%
;!BITSFR12             0      0       0      13        0.0%
;!SFR12                0      0       0      13        0.0%
;!BANK4               50      0       0      14        0.0%
;!BITSFR13             0      0       0      14        0.0%
;!SFR13                0      0       0      14        0.0%
;!BITBANK5            50      0       0      15        0.0%
;!BITSFR14             0      0       0      15        0.0%
;!SFR14                0      0       0      15        0.0%
;!BANK5               50      0       0      16        0.0%
;!BITSFR15             0      0       0      16        0.0%
;!SFR15                0      0       0      16        0.0%
;!BITBANK6            10      0       0      17        0.0%
;!BITSFR16             0      0       0      17        0.0%
;!SFR16                0      0       0      17        0.0%
;!BANK6               10      0       0      18        0.0%
;!BITSFR17             0      0       0      18        0.0%
;!SFR17                0      0       0      18        0.0%
;!BITSFR18             0      0       0      19        0.0%
;!SFR18                0      0       0      19        0.0%
;!DATA                 0      0      1F      19        0.0%
;!BITSFR19             0      0       0      20        0.0%
;!SFR19                0      0       0      20        0.0%
;!BITSFR20             0      0       0      21        0.0%
;!SFR20                0      0       0      21        0.0%
;!BITSFR21             0      0       0      22        0.0%
;!SFR21                0      0       0      22        0.0%
;!BITSFR22             0      0       0      23        0.0%
;!SFR22                0      0       0      23        0.0%
;!BITSFR23             0      0       0      24        0.0%
;!SFR23                0      0       0      24        0.0%
;!BITSFR24             0      0       0      25        0.0%
;!SFR24                0      0       0      25        0.0%
;!BITSFR25             0      0       0      26        0.0%
;!SFR25                0      0       0      26        0.0%
;!BITSFR26             0      0       0      27        0.0%
;!SFR26                0      0       0      27        0.0%
;!BITSFR27             0      0       0      28        0.0%
;!SFR27                0      0       0      28        0.0%
;!BITSFR28             0      0       0      29        0.0%
;!SFR28                0      0       0      29        0.0%
;!BITSFR29             0      0       0      30        0.0%
;!SFR29                0      0       0      30        0.0%
;!BITSFR30             0      0       0      31        0.0%
;!SFR30                0      0       0      31        0.0%
;!BITSFR31             0      0       0      32        0.0%
;!SFR31                0      0       0      32        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 39 in file "../main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6
;;      Params:         0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0
;;      Temps:          0       1       0       0       0       0       0       0
;;      Totals:         0       1       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_init_hardware
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,merge=1,split=1
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"../main.c"
	line	39
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 14
; Regs used in _main: [wreg+status,2+status,0+pclath+cstack]
	line	40
	
l654:	
	fcall	_init_hardware
	line	43
	
l656:	
	movlw	(09h)
	movlb 0	; select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_mux_digit_3)
	line	44
	
l658:	
	movlw	(05h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_mux_digit_2)
	line	45
	
l660:	
	movlw	(0Ah)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_mux_digit_1)
	line	46
	
l662:	
	clrf	(_mux_digit_0)
	goto	l664
	line	48
	
l51:	
	line	50
	
l664:	
	movlw	(0C8h)
	subwf	(_recurrence_counter),w
	skipc
	goto	u71
	goto	u70
u71:
	goto	l664
u70:
	line	53
	
l666:	
	clrf	(_recurrence_counter)
	line	55
	
l668:	
	movf	(_mux_digit_3),w
	skipz
	goto	u80
	goto	l672
u80:
	line	57
	
l670:	
	movlw	low(01h)
	subwf	(_mux_digit_3),f
	line	58
	goto	l664
	line	59
	
l53:	
	
l672:	
	movf	(_mux_digit_2),w
	skipz
	goto	u90
	goto	l678
u90:
	line	61
	
l674:	
	movlw	(09h)
	movlb 0	; select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_mux_digit_3)
	line	62
	
l676:	
	movlw	low(01h)
	subwf	(_mux_digit_2),f
	line	63
	goto	l664
	line	64
	
l55:	
	
l678:	
	movf	(_mux_digit_0),w
	skipz
	goto	u100
	goto	l664
u100:
	line	66
	
l680:	
	movlw	(09h)
	movlb 0	; select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_mux_digit_3)
	line	67
	movlw	(05h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_mux_digit_2)
	line	68
	
l682:	
	movlw	low(01h)
	subwf	(_mux_digit_0),f
	line	69
	goto	l664
	line	70
	
l57:	
	goto	l664
	line	73
	
l58:	
	goto	l664
	
l56:	
	goto	l664
	
l54:	
	goto	l664
	line	74
	
l52:	
	goto	l664
	line	75
	
l59:	
	line	48
	goto	l664
	
l60:	
	line	76
	
l61:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,88
	global	_init_hardware

;; *************** function _init_hardware *****************
;; Defined at:
;;		line 80 in file "../main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6
;;      Params:         0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,local,class=CODE,delta=2,merge=1
global __ptext1
__ptext1:	;psect for function _init_hardware
psect	text1
	file	"../main.c"
	line	80
	global	__size_of_init_hardware
	__size_of_init_hardware	equ	__end_of_init_hardware-_init_hardware
	
_init_hardware:	
;incstack = 0
	opt	stack 14
; Regs used in _init_hardware: [wreg+status,2]
	line	123
	
l684:	
	movlw	(073h)
	movlb 1	; select bank1
	movwf	(153)^080h	;volatile
	line	148
	
l686:	
	movlb 3	; select bank3
	clrf	(396)^0180h	;volatile
	line	159
	
l688:	
	movlb 1	; select bank1
	clrf	(140)^080h	;volatile
	line	169
	
l690:	
	movlb 3	; select bank3
	clrf	(397)^0180h	;volatile
	line	179
	
l692:	
	movlb 1	; select bank1
	clrf	(141)^080h	;volatile
	line	192
	movlw	(0FFh)
	movlb 0	; select bank0
	movwf	(12)	;volatile
	line	196
	movlw	(0FFh)
	movwf	(13)	;volatile
	line	231
	movlw	(011h)
	movwf	(24)	;volatile
	line	239
	
l694:	
	movlb 1	; select bank1
	bsf	(1160/8)^080h,(1160)&7	;volatile
	line	254
	
l696:	
	bsf	(94/8),(94)&7	;volatile
	line	266
	
l698:	
	bsf	(95/8),(95)&7	;volatile
	line	267
	
l64:	
	return
	opt stack 0
GLOBAL	__end_of_init_hardware
	__end_of_init_hardware:
	signat	_init_hardware,88
	global	_recurrent_function

;; *************** function _recurrent_function *****************
;; Defined at:
;;		line 270 in file "../main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6
;;      Params:         0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0
;;      Temps:          2       0       0       0       0       0       0       0
;;      Totals:         2       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		Interrupt level 1
;; This function uses a non-reentrant model
;;
psect	intentry,class=CODE,delta=2
global __pintentry
__pintentry:
psect	intentry
	file	"../main.c"
	line	270
	global	__size_of_recurrent_function
	__size_of_recurrent_function	equ	__end_of_recurrent_function-_recurrent_function
	
_recurrent_function:	
;incstack = 0
	opt	stack 14
; Regs used in _recurrent_function: [wreg-fsr1h+status,2+status,0]
psect	intentry
	pagesel	$
	movlb 0	; select bank0
	movf	btemp+1,w
	movwf	(??_recurrent_function+1)
	line	272
	
i1l616:	
	btfss	(136/8),(136)&7	;volatile
	goto	u6_21
	goto	u6_20
u6_21:
	goto	i1l75
u6_20:
	line	274
	
i1l618:	
	bcf	(136/8),(136)&7	;volatile
	line	294
	
i1l620:	
	movlw	(0ECh)
	movwf	(23)	;volatile
	line	295
	movlw	(077h)
	movwf	(22)	;volatile
	line	296
	goto	i1l650
	line	298
	
i1l69:	
	line	300
	
i1l622:	
	movf	0+(_digit_inits)+04h,w
	movwf	(12)	;volatile
	line	301
	
i1l624:	
	movf	(_mux_digit_3),w
	addlw	_digit_symbols&0ffh
	movwf	fsr1l
	clrf fsr1h	
	
	movf	indf1,w
	movwf	(13)	;volatile
	line	302
	
i1l626:	
	movf	0+(_digit_inits)+03h,w
	movwf	(12)	;volatile
	line	303
	goto	i1l652
	line	305
	
i1l71:	
	line	307
	
i1l628:	
	movf	0+(_digit_inits)+04h,w
	movwf	(12)	;volatile
	line	308
	
i1l630:	
	movf	(_mux_digit_2),w
	addlw	_digit_symbols&0ffh
	movwf	fsr1l
	clrf fsr1h	
	
	movf	indf1,w
	movwf	(13)	;volatile
	line	309
	
i1l632:	
	movf	0+(_digit_inits)+02h,w
	movwf	(12)	;volatile
	line	310
	goto	i1l652
	line	312
	
i1l72:	
	line	314
	
i1l634:	
	movf	0+(_digit_inits)+04h,w
	movwf	(12)	;volatile
	line	315
	
i1l636:	
	movf	(_mux_digit_1),w
	addlw	_digit_symbols&0ffh
	movwf	fsr1l
	clrf fsr1h	
	
	movf	indf1,w
	movwf	(13)	;volatile
	line	316
	
i1l638:	
	movf	0+(_digit_inits)+01h,w
	movwf	(12)	;volatile
	line	317
	goto	i1l652
	line	319
	
i1l73:	
	line	321
	
i1l640:	
	movf	0+(_digit_inits)+04h,w
	movwf	(12)	;volatile
	line	322
	
i1l642:	
	movf	(_mux_digit_0),w
	addlw	_digit_symbols&0ffh
	movwf	fsr1l
	clrf fsr1h	
	
	movf	indf1,w
	movwf	(13)	;volatile
	line	323
	
i1l644:	
	movf	(_digit_inits),w
	movwf	(12)	;volatile
	line	324
	
i1l646:	
	movlw	(0FFh)
	movwf	(??_recurrent_function+0)+0
	movf	(??_recurrent_function+0)+0,w
	movwf	(_digit_counter)
	line	325
	goto	i1l652
	line	327
	
i1l74:	
	line	329
	goto	i1l652
	line	331
	
i1l648:	
	goto	i1l652
	line	296
	
i1l68:	
	
i1l650:	
	movf	(_digit_counter),w
	; Switch size 1, requested type "space"
; Number of cases is 4, Range of values is 0 to 3
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           13     7 (average)
; direct_byte           14     6 (fixed)
; jumptable            260     6 (fixed)
; rangetable             8     4 (fixed)
; spacedrange           13     6 (fixed)
; locatedrange           4     3 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_off
	xorlw	0^0	; case 0
	skipnz
	goto	i1l622
	xorlw	1^0	; case 1
	skipnz
	goto	i1l628
	xorlw	2^1	; case 2
	skipnz
	goto	i1l634
	xorlw	3^2	; case 3
	skipnz
	goto	i1l640
	goto	i1l652
	opt asmopt_on

	line	331
	
i1l70:	
	line	332
	
i1l652:	
	movlw	(01h)
	movwf	(??_recurrent_function+0)+0
	movf	(??_recurrent_function+0)+0,w
	addwf	(_digit_counter),f
	line	334
	movlw	(01h)
	movwf	(??_recurrent_function+0)+0
	movf	(??_recurrent_function+0)+0,w
	addwf	(_recurrence_counter),f
	goto	i1l75
	line	335
	
i1l67:	
	line	336
	
i1l75:	
	movf	(??_recurrent_function+1),w
	movwf	btemp+1
	retfie
	opt stack 0
GLOBAL	__end_of_recurrent_function
	__end_of_recurrent_function:
	signat	_recurrent_function,88
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
