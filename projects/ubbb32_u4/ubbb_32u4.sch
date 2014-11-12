EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:special
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:custom
LIBS:ubbb_32u4-cache
EELAYER 27 0
EELAYER END
$Descr User 9000 7000
encoding utf-8
Sheet 1 1
Title ""
Date "12 nov 2014"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L ATMEGA32U4-A U1
U 1 1 5457F510
P 4000 3550
F 0 "U1" H 3050 5250 40  0000 C CNN
F 1 "ATMEGA32U4-A" H 4700 2050 40  0000 C CNN
F 2 "TQFP44" H 4000 3550 35  0000 C CIN
F 3 "" H 5100 4650 60  0000 C CNN
	1    4000 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	3550 1750 3550 1650
Wire Wire Line
	3800 1650 3800 1750
Wire Wire Line
	3900 1650 3900 1750
Connection ~ 3800 1650
Wire Wire Line
	4150 1650 4150 1750
Connection ~ 3900 1650
Wire Wire Line
	4250 1650 4250 1750
Wire Wire Line
	3600 5150 3600 5350
Wire Wire Line
	3600 5250 4150 5250
Wire Wire Line
	3850 5250 3850 5150
Wire Wire Line
	3950 5250 3950 5150
Connection ~ 3850 5250
Wire Wire Line
	4050 5250 4050 5150
Connection ~ 3950 5250
Wire Wire Line
	4150 5250 4150 5150
Connection ~ 4050 5250
Wire Wire Line
	5100 2100 6000 2100
Wire Wire Line
	5100 2200 6000 2200
Wire Wire Line
	5100 2300 6000 2300
Wire Wire Line
	2750 2000 2850 2000
Wire Wire Line
	2750 1450 2750 2000
$Comp
L USB-MINI-B CON1
U 1 1 54580264
P 1400 2900
F 0 "CON1" H 1150 3350 60  0000 C CNN
F 1 "USB-MINI-B" H 1350 2400 60  0000 C CNN
F 2 "" H 1400 2900 60  0000 C CNN
F 3 "" H 1400 2900 60  0000 C CNN
	1    1400 2900
	-1   0    0    1   
$EndComp
NoConn ~ 1950 2750
Wire Wire Line
	850  2600 750  2600
Wire Wire Line
	750  2600 750  3300
Wire Wire Line
	850  3200 750  3200
Connection ~ 750  3200
Wire Wire Line
	850  3050 750  3050
Connection ~ 750  3050
Wire Wire Line
	850  2750 750  2750
Connection ~ 750  2750
$Comp
L GND #PWR4
U 1 1 54580437
P 2050 2600
F 0 "#PWR4" H 2050 2600 30  0001 C CNN
F 1 "GND" H 2050 2530 30  0001 C CNN
F 2 "" H 2050 2600 60  0000 C CNN
F 3 "" H 2050 2600 60  0000 C CNN
	1    2050 2600
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR1
U 1 1 54580444
P 750 3300
F 0 "#PWR1" H 750 3300 30  0001 C CNN
F 1 "GND" H 750 3230 30  0001 C CNN
F 2 "" H 750 3300 60  0000 C CNN
F 3 "" H 750 3300 60  0000 C CNN
	1    750  3300
	1    0    0    -1  
$EndComp
$Comp
L C C3
U 1 1 54580478
P 2550 4400
F 0 "C3" H 2550 4500 40  0000 L CNN
F 1 "1uF" H 2556 4315 40  0000 L CNN
F 2 "~" H 2588 4250 30  0000 C CNN
F 3 "~" H 2550 4400 60  0000 C CNN
	1    2550 4400
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR7
U 1 1 54580485
P 2250 4400
F 0 "#PWR7" H 2250 4400 30  0001 C CNN
F 1 "GND" H 2250 4330 30  0001 C CNN
F 2 "" H 2250 4400 60  0000 C CNN
F 3 "" H 2250 4400 60  0000 C CNN
	1    2250 4400
	0    1    1    0   
$EndComp
Wire Wire Line
	2250 4400 2350 4400
Wire Wire Line
	2750 4400 2850 4400
$Comp
L C C4
U 1 1 545804FB
P 2750 3900
F 0 "C4" H 2750 4000 40  0000 L CNN
F 1 "1uF" H 2756 3815 40  0000 L CNN
F 2 "~" H 2788 3750 30  0000 C CNN
F 3 "~" H 2750 3900 60  0000 C CNN
	1    2750 3900
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR8
U 1 1 54580501
P 2750 4200
F 0 "#PWR8" H 2750 4200 30  0001 C CNN
F 1 "GND" H 2750 4130 30  0001 C CNN
F 2 "" H 2750 4200 60  0000 C CNN
F 3 "" H 2750 4200 60  0000 C CNN
	1    2750 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	2750 4100 2750 4200
Wire Wire Line
	2850 3600 2750 3600
Wire Wire Line
	2750 3600 2750 3700
Wire Wire Line
	1950 2600 2050 2600
$Comp
L R R3
U 1 1 545805E8
P 2250 3050
F 0 "R3" V 2330 3050 40  0000 C CNN
F 1 "22" V 2257 3051 40  0000 C CNN
F 2 "~" V 2180 3050 30  0000 C CNN
F 3 "~" H 2250 3050 30  0000 C CNN
	1    2250 3050
	0    -1   -1   0   
$EndComp
$Comp
L R R2
U 1 1 545805FA
P 2250 2900
F 0 "R2" V 2330 2900 40  0000 C CNN
F 1 "22" V 2257 2901 40  0000 C CNN
F 2 "~" V 2180 2900 30  0000 C CNN
F 3 "~" H 2250 2900 30  0000 C CNN
	1    2250 2900
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2700 3350 2850 3350
Wire Wire Line
	1950 2900 2000 2900
Wire Wire Line
	1950 3200 2850 3200
Wire Wire Line
	1950 3050 2000 3050
Wire Wire Line
	2500 3050 2600 3050
Wire Wire Line
	2600 3050 2600 3450
Wire Wire Line
	2600 3450 2850 3450
Wire Wire Line
	2500 2900 2700 2900
Wire Wire Line
	2700 2900 2700 3350
Connection ~ 4250 1650
$Comp
L +5V #PWR11
U 1 1 54580A04
P 4350 1650
F 0 "#PWR11" H 4350 1740 20  0001 C CNN
F 1 "+5V" H 4350 1740 30  0000 C CNN
F 2 "" H 4350 1650 60  0000 C CNN
F 3 "" H 4350 1650 60  0000 C CNN
	1    4350 1650
	0    1    1    0   
$EndComp
$Comp
L GND #PWR10
U 1 1 54580A5B
P 3600 5350
F 0 "#PWR10" H 3600 5350 30  0001 C CNN
F 1 "GND" H 3600 5280 30  0001 C CNN
F 2 "" H 3600 5350 60  0000 C CNN
F 3 "" H 3600 5350 60  0000 C CNN
	1    3600 5350
	1    0    0    -1  
$EndComp
Connection ~ 3600 5250
$Comp
L SW_PUSH_SMALL SW1
U 1 1 54580AA8
P 2650 1350
F 0 "SW1" H 2800 1460 30  0000 C CNN
F 1 "SW_PUSH_SMALL" H 2650 1271 30  0000 C CNN
F 2 "~" H 2650 1350 60  0000 C CNN
F 3 "~" H 2650 1350 60  0000 C CNN
	1    2650 1350
	1    0    0    -1  
$EndComp
Connection ~ 2750 1550
$Comp
L R R4
U 1 1 54580AFB
P 2400 1550
F 0 "R4" V 2480 1550 40  0000 C CNN
F 1 "1k" V 2407 1551 40  0000 C CNN
F 2 "~" V 2330 1550 30  0000 C CNN
F 3 "~" H 2400 1550 30  0000 C CNN
	1    2400 1550
	0    -1   -1   0   
$EndComp
$Comp
L +5V #PWR3
U 1 1 54580C3A
P 2050 1550
F 0 "#PWR3" H 2050 1640 20  0001 C CNN
F 1 "+5V" H 2050 1640 30  0000 C CNN
F 2 "" H 2050 1550 60  0000 C CNN
F 3 "" H 2050 1550 60  0000 C CNN
	1    2050 1550
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2050 1550 2150 1550
Wire Wire Line
	2550 1250 2050 1250
$Comp
L GND #PWR2
U 1 1 54580CD0
P 2050 1250
F 0 "#PWR2" H 2050 1250 30  0001 C CNN
F 1 "GND" H 2050 1180 30  0001 C CNN
F 2 "" H 2050 1250 60  0000 C CNN
F 3 "" H 2050 1250 60  0000 C CNN
	1    2050 1250
	0    1    1    0   
$EndComp
$Comp
L R R5
U 1 1 54580CE7
P 5500 5350
F 0 "R5" V 5580 5350 40  0000 C CNN
F 1 "1k" V 5507 5351 40  0000 C CNN
F 2 "~" V 5430 5350 30  0000 C CNN
F 3 "~" H 5500 5350 30  0000 C CNN
	1    5500 5350
	0    -1   -1   0   
$EndComp
Text Label 5800 5350 0    60   ~ 0
B4
Text Label 5200 2400 0    60   ~ 0
B4
Entry Wire Line
	6000 2000 6100 2100
Entry Wire Line
	6000 2100 6100 2200
Entry Wire Line
	6000 2200 6100 2300
Entry Wire Line
	6000 2300 6100 2400
Entry Wire Line
	6000 2400 6100 2500
Entry Wire Line
	6000 2500 6100 2600
Entry Wire Line
	6000 2600 6100 2700
Entry Wire Line
	6000 2700 6100 2800
Entry Wire Line
	6000 2900 6100 3000
Entry Wire Line
	6000 3000 6100 3100
Entry Wire Line
	6000 3200 6100 3300
Entry Wire Line
	6000 3300 6100 3400
Entry Wire Line
	6000 3400 6100 3500
Entry Wire Line
	6000 3500 6100 3600
Entry Wire Line
	6000 3600 6100 3700
Entry Wire Line
	6000 3700 6100 3800
Entry Wire Line
	6000 3800 6100 3900
Entry Wire Line
	6000 3900 6100 4000
Entry Wire Line
	6000 4100 6100 4200
Entry Wire Line
	6000 4200 6100 4300
Entry Wire Line
	6000 4400 6100 4500
Entry Wire Line
	6000 4500 6100 4600
Entry Wire Line
	6000 4600 6100 4700
Entry Wire Line
	6000 4700 6100 4800
Entry Wire Line
	6000 4800 6100 4900
Entry Wire Line
	6000 4900 6100 5000
Wire Wire Line
	5100 2000 6000 2000
Wire Wire Line
	6000 2400 5100 2400
Wire Wire Line
	5100 2500 6000 2500
Wire Wire Line
	6000 2600 5100 2600
Wire Wire Line
	5100 2700 6000 2700
Wire Wire Line
	6000 2900 5100 2900
Wire Wire Line
	5100 3000 6000 3000
Wire Wire Line
	6000 3200 5100 3200
Wire Wire Line
	5100 3300 6000 3300
Wire Wire Line
	6000 3400 5100 3400
Wire Wire Line
	5100 3500 6000 3500
Wire Wire Line
	6000 3600 5100 3600
Wire Wire Line
	5100 3700 6000 3700
Wire Wire Line
	6000 3800 5100 3800
Wire Wire Line
	5100 3900 6000 3900
Wire Wire Line
	6000 4100 5100 4100
Wire Wire Line
	5100 4200 6000 4200
Wire Wire Line
	6000 4400 5100 4400
Wire Wire Line
	5100 4500 6000 4500
Wire Wire Line
	6000 4600 5100 4600
Wire Wire Line
	5100 4700 6000 4700
Wire Wire Line
	6000 4800 5100 4800
Wire Wire Line
	5100 4900 6000 4900
Text Label 5200 2300 0    60   ~ 0
B3
Text Label 5200 2200 0    60   ~ 0
B2
Text Label 5200 2100 0    60   ~ 0
B1
Text Label 5200 2500 0    60   ~ 0
B5
Text Label 5200 2600 0    60   ~ 0
B6
Text Label 5200 2700 0    60   ~ 0
B7
Text Label 5200 2000 0    60   ~ 0
B0
Text Label 5200 2900 0    60   ~ 0
C6
Text Label 5200 3000 0    60   ~ 0
C7
Text Label 5200 3200 0    60   ~ 0
D0
Text Label 5200 3300 0    60   ~ 0
D1
Text Label 5200 3400 0    60   ~ 0
D2
Text Label 5200 3500 0    60   ~ 0
D3
Text Label 5200 3600 0    60   ~ 0
D4
Text Label 5200 3700 0    60   ~ 0
D5
Text Label 5200 3800 0    60   ~ 0
D6
Text Label 5200 3900 0    60   ~ 0
D7
Text Label 5200 4100 0    60   ~ 0
E2
Text Label 5200 4200 0    60   ~ 0
E6
Text Label 5200 4400 0    60   ~ 0
F0
Text Label 5200 4500 0    60   ~ 0
F1
Text Label 5200 4600 0    60   ~ 0
F4
Text Label 5200 4700 0    60   ~ 0
F5
Text Label 5200 4800 0    60   ~ 0
F6
Text Label 5200 4900 0    60   ~ 0
F7
Wire Bus Line
	6100 2100 6100 5750
Entry Wire Line
	6100 5200 6200 5300
$Comp
L SW_PUSH_SMALL SW2
U 1 1 5458175B
P 6600 5400
F 0 "SW2" H 6750 5510 30  0000 C CNN
F 1 "SW_PUSH_SMALL" H 6600 5321 30  0000 C CNN
F 2 "~" H 6600 5400 60  0000 C CNN
F 3 "~" H 6600 5400 60  0000 C CNN
	1    6600 5400
	1    0    0    -1  
$EndComp
Wire Wire Line
	6200 5300 6700 5300
Text Label 6200 5300 0    60   ~ 0
E2
$Comp
L R R6
U 1 1 5458183C
P 6950 5300
F 0 "R6" V 7030 5300 40  0000 C CNN
F 1 "1k" V 6957 5301 40  0000 C CNN
F 2 "~" V 6880 5300 30  0000 C CNN
F 3 "~" H 6950 5300 30  0000 C CNN
	1    6950 5300
	0    -1   -1   0   
$EndComp
Connection ~ 6500 5300
Wire Wire Line
	6700 5500 6700 5600
$Comp
L GND #PWR15
U 1 1 54581914
P 6700 5600
F 0 "#PWR15" H 6700 5600 30  0001 C CNN
F 1 "GND" H 6700 5530 30  0001 C CNN
F 2 "" H 6700 5600 60  0000 C CNN
F 3 "" H 6700 5600 60  0000 C CNN
	1    6700 5600
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR16
U 1 1 5458191A
P 7300 5300
F 0 "#PWR16" H 7300 5390 20  0001 C CNN
F 1 "+5V" H 7300 5390 30  0000 C CNN
F 2 "" H 7300 5300 60  0000 C CNN
F 3 "" H 7300 5300 60  0000 C CNN
	1    7300 5300
	0    1    1    0   
$EndComp
Wire Wire Line
	7300 5300 7200 5300
Entry Wire Line
	6100 2100 6200 2200
Entry Wire Line
	6100 2200 6200 2300
Entry Wire Line
	6100 2300 6200 2400
Entry Wire Line
	6100 2400 6200 2500
Entry Wire Line
	6100 2500 6200 2600
Entry Wire Line
	6100 2600 6200 2700
Entry Wire Line
	6100 2700 6200 2800
Entry Wire Line
	6100 2800 6200 2900
Entry Wire Line
	6100 2900 6200 3000
Entry Wire Line
	6100 3000 6200 3100
Entry Wire Line
	6100 3100 6200 3200
Entry Wire Line
	6100 3200 6200 3300
Entry Wire Line
	6100 3300 6200 3400
Entry Wire Line
	6100 3400 6200 3500
Entry Wire Line
	6100 3500 6200 3600
Entry Wire Line
	6100 3600 6200 3700
Entry Wire Line
	6100 3700 6200 3800
Entry Wire Line
	6100 3800 6200 3900
Entry Wire Line
	6100 3900 6200 4000
Entry Wire Line
	6100 4000 6200 4100
Entry Wire Line
	6100 4200 6200 4300
Entry Wire Line
	6100 4300 6200 4400
Entry Wire Line
	6100 4500 6200 4600
Entry Wire Line
	6100 4600 6200 4700
Entry Wire Line
	6100 4700 6200 4800
Entry Wire Line
	6100 4800 6200 4900
Entry Wire Line
	6100 4900 6200 5000
Entry Wire Line
	6100 5000 6200 5100
Wire Wire Line
	6200 2200 7300 2200
Wire Wire Line
	7300 2300 6200 2300
Wire Wire Line
	6200 2400 7300 2400
Wire Wire Line
	7300 2600 6200 2600
Wire Wire Line
	6200 2700 7300 2700
Wire Wire Line
	6200 2800 7300 2800
Wire Wire Line
	7300 2900 6200 2900
Wire Wire Line
	6200 3000 7300 3000
Wire Wire Line
	7300 3100 6200 3100
Wire Wire Line
	6200 3200 7300 3200
Wire Wire Line
	6200 3300 7300 3300
Wire Wire Line
	7300 3400 6200 3400
Wire Wire Line
	6200 3500 7300 3500
Wire Wire Line
	7300 3600 6200 3600
Wire Wire Line
	6200 3700 7300 3700
Wire Wire Line
	6200 3800 7300 3800
Wire Wire Line
	7300 3900 6200 3900
Wire Wire Line
	6200 4000 7300 4000
Wire Wire Line
	7300 4100 6200 4100
Wire Wire Line
	6200 4200 7300 4200
Wire Wire Line
	6200 4300 7300 4300
Wire Wire Line
	7300 4400 6200 4400
Wire Wire Line
	6200 4500 7300 4500
Wire Wire Line
	7300 4600 6200 4600
Wire Wire Line
	6200 4700 7300 4700
Wire Wire Line
	6200 4800 7300 4800
Wire Wire Line
	7300 4900 6200 4900
Wire Wire Line
	6200 5000 7300 5000
Wire Wire Line
	7300 5100 6200 5100
Wire Wire Line
	6200 2500 7300 2500
Entry Wire Line
	6100 4100 6200 4200
Entry Wire Line
	6100 4400 6200 4500
Text Label 6300 2400 0    60   ~ 0
AREF
Text Label 6300 2200 0    60   ~ 0
GND
Text Label 6300 2300 0    60   ~ 0
VCC
Text Label 6300 2600 0    60   ~ 0
F0
Text Label 6300 2700 0    60   ~ 0
F1
Text Label 6300 2800 0    60   ~ 0
F4
Text Label 6300 2900 0    60   ~ 0
F5
Text Label 6300 3000 0    60   ~ 0
F6
Text Label 6300 3100 0    60   ~ 0
F7
$Comp
L CONN_5 P4
U 1 1 54591799
P 7700 3400
F 0 "P4" V 7650 3400 50  0000 C CNN
F 1 "CONN_5" V 7750 3400 50  0000 C CNN
F 2 "" H 7700 3400 60  0000 C CNN
F 3 "" H 7700 3400 60  0000 C CNN
	1    7700 3400
	1    0    0    -1  
$EndComp
$Comp
L CONN_5 P3
U 1 1 545917A6
P 7700 2900
F 0 "P3" V 7650 2900 50  0000 C CNN
F 1 "CONN_5" V 7750 2900 50  0000 C CNN
F 2 "" H 7700 2900 60  0000 C CNN
F 3 "" H 7700 2900 60  0000 C CNN
	1    7700 2900
	1    0    0    -1  
$EndComp
$Comp
L CONN_5 P2
U 1 1 545917AC
P 7700 2400
F 0 "P2" V 7650 2400 50  0000 C CNN
F 1 "CONN_5" V 7750 2400 50  0000 C CNN
F 2 "" H 7700 2400 60  0000 C CNN
F 3 "" H 7700 2400 60  0000 C CNN
	1    7700 2400
	1    0    0    -1  
$EndComp
$Comp
L CONN_5 P7
U 1 1 545917B2
P 7700 4900
F 0 "P7" V 7650 4900 50  0000 C CNN
F 1 "CONN_5" V 7750 4900 50  0000 C CNN
F 2 "" H 7700 4900 60  0000 C CNN
F 3 "" H 7700 4900 60  0000 C CNN
	1    7700 4900
	1    0    0    -1  
$EndComp
$Comp
L CONN_5 P6
U 1 1 545917B8
P 7700 4400
F 0 "P6" V 7650 4400 50  0000 C CNN
F 1 "CONN_5" V 7750 4400 50  0000 C CNN
F 2 "" H 7700 4400 60  0000 C CNN
F 3 "" H 7700 4400 60  0000 C CNN
	1    7700 4400
	1    0    0    -1  
$EndComp
$Comp
L CONN_5 P5
U 1 1 545917BE
P 7700 3900
F 0 "P5" V 7650 3900 50  0000 C CNN
F 1 "CONN_5" V 7750 3900 50  0000 C CNN
F 2 "" H 7700 3900 60  0000 C CNN
F 3 "" H 7700 3900 60  0000 C CNN
	1    7700 3900
	1    0    0    -1  
$EndComp
Text Label 6300 3200 0    60   ~ 0
E2
Text Label 6300 3300 0    60   ~ 0
C7
Text Label 6300 3400 0    60   ~ 0
C6
Text Label 6300 3500 0    60   ~ 0
B6
Text Label 6300 3600 0    60   ~ 0
B5
Text Label 6300 3700 0    60   ~ 0
B4
Text Label 6300 3800 0    60   ~ 0
D7
Text Label 6300 3900 0    60   ~ 0
D6
Text Label 6300 4100 0    60   ~ 0
D4
Text Label 6300 4000 0    60   ~ 0
D5
Text Label 6300 4200 0    60   ~ 0
D3
Text Label 6300 4300 0    60   ~ 0
D2
Text Label 6300 4400 0    60   ~ 0
D1
Text Label 6300 4500 0    60   ~ 0
D0
Text Label 6300 4600 0    60   ~ 0
RESET
Text Label 6300 4700 0    60   ~ 0
B7
Text Label 6300 4800 0    60   ~ 0
B3
Text Label 6300 4900 0    60   ~ 0
B2
Text Label 6300 5000 0    60   ~ 0
B1
Text Label 6300 5100 0    60   ~ 0
B0
Text Label 6300 2500 0    60   ~ 0
E6
Text Label 2300 1250 2    60   ~ 0
GND
Wire Wire Line
	3450 1650 4350 1650
Connection ~ 4150 1650
Text Label 3550 1650 0    60   ~ 0
VCC
Text Label 2800 4400 0    60   ~ 0
AREF
Text Label 2750 1700 2    60   ~ 0
RESET
$Comp
L +5V #PWR5
U 1 1 5459375A
P 2200 3300
F 0 "#PWR5" H 2200 3390 20  0001 C CNN
F 1 "+5V" H 2200 3390 30  0000 C CNN
F 2 "" H 2200 3300 60  0000 C CNN
F 3 "" H 2200 3300 60  0000 C CNN
	1    2200 3300
	-1   0    0    1   
$EndComp
Wire Wire Line
	2200 3300 2200 3200
Connection ~ 2200 3200
Wire Wire Line
	2650 1550 5500 1550
$Comp
L C C5
U 1 1 5459532C
P 3250 1650
F 0 "C5" H 3250 1750 40  0000 L CNN
F 1 "1uF" H 3256 1565 40  0000 L CNN
F 2 "~" H 3288 1500 30  0000 C CNN
F 3 "~" H 3250 1650 60  0000 C CNN
	1    3250 1650
	0    1    1    0   
$EndComp
Connection ~ 3550 1650
$Comp
L GND #PWR9
U 1 1 545953BD
P 2950 1650
F 0 "#PWR9" H 2950 1650 30  0001 C CNN
F 1 "GND" H 2950 1580 30  0001 C CNN
F 2 "" H 2950 1650 60  0000 C CNN
F 3 "" H 2950 1650 60  0000 C CNN
	1    2950 1650
	0    1    1    0   
$EndComp
Wire Wire Line
	2950 1650 3050 1650
$Comp
L ISP P1
U 1 1 545A64CA
P 5650 1100
F 0 "P1" H 5650 850 60  0000 C CNN
F 1 "ISP" H 5650 1350 60  0000 C CNN
F 2 "~" H 5650 1100 60  0000 C CNN
F 3 "~" H 5650 1100 60  0000 C CNN
	1    5650 1100
	0    1    1    0   
$EndComp
Wire Wire Line
	5500 1550 5500 1450
Wire Wire Line
	5600 1450 5600 2100
Connection ~ 5600 2100
Wire Wire Line
	5700 1450 5700 2300
Connection ~ 5700 2300
Wire Wire Line
	5800 1450 5800 2200
Connection ~ 5800 2200
$Comp
L GND #PWR13
U 1 1 545A6733
P 5500 650
F 0 "#PWR13" H 5500 650 30  0001 C CNN
F 1 "GND" H 5500 580 30  0001 C CNN
F 2 "" H 5500 650 60  0000 C CNN
F 3 "" H 5500 650 60  0000 C CNN
	1    5500 650 
	-1   0    0    1   
$EndComp
$Comp
L +5V #PWR14
U 1 1 545A6740
P 5800 650
F 0 "#PWR14" H 5800 740 20  0001 C CNN
F 1 "+5V" H 5800 740 30  0000 C CNN
F 2 "" H 5800 650 60  0000 C CNN
F 3 "" H 5800 650 60  0000 C CNN
	1    5800 650 
	1    0    0    -1  
$EndComp
Wire Wire Line
	5800 650  5800 750 
Wire Wire Line
	5500 650  5500 750 
$Comp
L RGB_LED_COMMON_ANODE D2
U 1 1 545BB829
P 4900 5500
F 0 "D2" H 4950 5750 50  0000 C CNN
F 1 "RGB_LED_COMMON_ANODE" H 4900 5150 50  0000 C CNN
F 2 "~" H 4950 5500 60  0000 C CNN
F 3 "~" H 4950 5500 60  0000 C CNN
	1    4900 5500
	1    0    0    -1  
$EndComp
Entry Wire Line
	6000 5350 6100 5450
Entry Wire Line
	6000 5500 6100 5600
Entry Wire Line
	6000 5650 6100 5750
$Comp
L R R7
U 1 1 545BBA0D
P 5500 5500
F 0 "R7" V 5580 5500 40  0000 C CNN
F 1 "1k" V 5507 5501 40  0000 C CNN
F 2 "~" V 5430 5500 30  0000 C CNN
F 3 "~" H 5500 5500 30  0000 C CNN
	1    5500 5500
	0    -1   -1   0   
$EndComp
$Comp
L R R8
U 1 1 545BBA13
P 5500 5650
F 0 "R8" V 5580 5650 40  0000 C CNN
F 1 "1k" V 5507 5651 40  0000 C CNN
F 2 "~" V 5430 5650 30  0000 C CNN
F 3 "~" H 5500 5650 30  0000 C CNN
	1    5500 5650
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5150 5350 5250 5350
Wire Wire Line
	5150 5500 5250 5500
Wire Wire Line
	5250 5650 5150 5650
Wire Wire Line
	5750 5350 6000 5350
Wire Wire Line
	6000 5500 5750 5500
Wire Wire Line
	5750 5650 6000 5650
Text Label 5800 5500 0    60   ~ 0
B5
Text Label 5800 5650 0    60   ~ 0
B6
$Comp
L +5V #PWR12
U 1 1 545BBE18
P 4500 5500
F 0 "#PWR12" H 4500 5590 20  0001 C CNN
F 1 "+5V" H 4500 5590 30  0000 C CNN
F 2 "" H 4500 5500 60  0000 C CNN
F 3 "" H 4500 5500 60  0000 C CNN
	1    4500 5500
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4500 5500 4600 5500
Text Label 1950 2900 0    60   ~ 0
D+
Text Label 1950 3050 0    60   ~ 0
D-
Wire Wire Line
	2500 2300 2500 2200
Wire Wire Line
	2500 2200 2800 2200
Wire Wire Line
	2800 2200 2800 2400
Wire Wire Line
	2800 2400 2850 2400
Wire Wire Line
	2850 2600 2800 2600
Wire Wire Line
	2800 2600 2800 2800
Wire Wire Line
	2800 2800 2500 2800
Wire Wire Line
	2500 2800 2500 2700
$Comp
L GND #PWR6
U 1 1 5463E179
P 2250 2600
F 0 "#PWR6" H 2250 2600 30  0001 C CNN
F 1 "GND" H 2250 2530 30  0001 C CNN
F 2 "" H 2250 2600 60  0000 C CNN
F 3 "" H 2250 2600 60  0000 C CNN
	1    2250 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	2250 2600 2250 2500
Wire Wire Line
	2250 2500 2350 2500
$Comp
L RESONATOR X1
U 1 1 5463E47C
P 2500 2500
F 0 "X1" H 2500 2250 60  0000 C CNN
F 1 "RESONATOR" H 2500 2700 60  0000 C CNN
F 2 "~" H 2500 2500 60  0000 C CNN
F 3 "~" H 2500 2500 60  0000 C CNN
	1    2500 2500
	0    1    1    0   
$EndComp
$EndSCHEMATC
