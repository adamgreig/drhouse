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
LIBS:sn65176bd
LIBS:loraine_node-cache
EELAYER 24 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L SN65176BD U?
U 1 1 53386940
P 4150 7450
F 0 "U?" V 4500 7750 60  0000 C CNN
F 1 "SN65176BD" V 4400 7800 60  0000 C CNN
F 2 "" H 3600 6800 60  0000 C CNN
F 3 "" H 3600 6800 60  0000 C CNN
	1    4150 7450
	-1   0    0    -1  
$EndComp
$Comp
L LM7805CT U?
U 1 1 53386F94
P 3050 1200
F 0 "U?" H 2850 1400 40  0000 C CNN
F 1 "LM7805CT" H 3050 1400 40  0000 L CNN
F 2 "TO-220" H 3050 1300 30  0000 C CIN
F 3 "" H 3050 1200 60  0000 C CNN
	1    3050 1200
	1    0    0    -1  
$EndComp
$Comp
L CRYSTAL X?
U 1 1 53387407
P 1800 4250
F 0 "X?" H 1800 4400 60  0000 C CNN
F 1 "CRYSTAL" H 1800 4100 60  0000 C CNN
F 2 "" H 1800 4250 60  0000 C CNN
F 3 "" H 1800 4250 60  0000 C CNN
	1    1800 4250
	0    1    1    0   
$EndComp
$Comp
L DARL_N Q?
U 1 1 533876DD
P 6750 2350
F 0 "Q?" H 6750 2600 50  0000 C CNN
F 1 "DARL_N" H 6650 2250 50  0000 C CNN
F 2 "" H 6750 2350 60  0000 C CNN
F 3 "" H 6750 2350 60  0000 C CNN
	1    6750 2350
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 533877F8
P 5850 3650
F 0 "R?" V 5800 3850 40  0000 C CNN
F 1 "R" V 5857 3651 40  0000 C CNN
F 2 "" V 5780 3650 30  0000 C CNN
F 3 "" H 5850 3650 30  0000 C CNN
	1    5850 3650
	0    1    1    0   
$EndComp
$Comp
L GND #PWR?
U 1 1 5338784C
P 1200 4750
F 0 "#PWR?" H 1200 4750 30  0001 C CNN
F 1 "GND" H 1200 4680 30  0001 C CNN
F 2 "" H 1200 4750 60  0000 C CNN
F 3 "" H 1200 4750 60  0000 C CNN
	1    1200 4750
	1    0    0    -1  
$EndComp
Wire Wire Line
	1650 3950 2100 3950
Wire Wire Line
	1650 4550 2100 4550
Wire Wire Line
	2100 4550 2100 4150
$Comp
L C C?
U 1 1 5338788F
P 1450 4550
F 0 "C?" H 1450 4650 40  0000 L CNN
F 1 "C" H 1456 4465 40  0000 L CNN
F 2 "" H 1488 4400 30  0000 C CNN
F 3 "" H 1450 4550 60  0000 C CNN
	1    1450 4550
	0    1    1    0   
$EndComp
$Comp
L C C?
U 1 1 533878B4
P 1450 3950
F 0 "C?" H 1450 4050 40  0000 L CNN
F 1 "C" H 1456 3865 40  0000 L CNN
F 2 "" H 1488 3800 30  0000 C CNN
F 3 "" H 1450 3950 60  0000 C CNN
	1    1450 3950
	0    1    1    0   
$EndComp
Connection ~ 1800 3950
Connection ~ 1800 4550
Wire Wire Line
	1250 3950 1200 3950
Wire Wire Line
	1200 3950 1200 4750
Wire Wire Line
	1250 4550 1200 4550
Connection ~ 1200 4550
$Comp
L BARREL_JACK CON?
U 1 1 533879A3
P 1100 1250
F 0 "CON?" H 1100 1500 60  0000 C CNN
F 1 "BARREL_JACK" H 1100 1050 60  0000 C CNN
F 2 "" H 1100 1250 60  0000 C CNN
F 3 "" H 1100 1250 60  0000 C CNN
	1    1100 1250
	1    0    0    -1  
$EndComp
Text Label 2300 1000 0    60   ~ 0
12V
Text Label 4150 1550 0    60   ~ 0
GND
$Comp
L GND #PWR?
U 1 1 533879F1
P 2350 1650
F 0 "#PWR?" H 2350 1650 30  0001 C CNN
F 1 "GND" H 2350 1580 30  0001 C CNN
F 2 "" H 2350 1650 60  0000 C CNN
F 3 "" H 2350 1650 60  0000 C CNN
	1    2350 1650
	1    0    0    -1  
$EndComp
Text Label 4150 1150 0    60   ~ 0
VCC
$Comp
L C C?
U 1 1 53387A28
P 2450 1350
F 0 "C?" H 2450 1450 40  0000 L CNN
F 1 "C" H 2456 1265 40  0000 L CNN
F 2 "" H 2488 1200 30  0000 C CNN
F 3 "" H 2450 1350 60  0000 C CNN
	1    2450 1350
	1    0    0    -1  
$EndComp
$Comp
L CP1 C?
U 1 1 53387A3C
P 3600 1350
F 0 "C?" H 3650 1450 50  0000 L CNN
F 1 "CP1" H 3650 1250 50  0000 L CNN
F 2 "" H 3600 1350 60  0000 C CNN
F 3 "" H 3600 1350 60  0000 C CNN
	1    3600 1350
	1    0    0    -1  
$EndComp
Connection ~ 2450 1150
Wire Wire Line
	3050 1550 3050 1450
Connection ~ 2450 1550
Wire Wire Line
	2350 1550 2350 1650
Connection ~ 2350 1550
Connection ~ 3600 1150
Connection ~ 3050 1550
$Comp
L C C?
U 1 1 53387D68
P 3900 1350
F 0 "C?" H 3900 1450 40  0000 L CNN
F 1 "C" H 3906 1265 40  0000 L CNN
F 2 "" H 3938 1200 30  0000 C CNN
F 3 "" H 3900 1350 60  0000 C CNN
	1    3900 1350
	1    0    0    -1  
$EndComp
Connection ~ 3900 1150
Connection ~ 3600 1550
Wire Wire Line
	2250 1550 4150 1550
Connection ~ 3900 1550
Wire Wire Line
	3450 1150 4150 1150
Wire Wire Line
	1400 1150 2650 1150
Wire Wire Line
	1400 1350 2250 1350
Wire Wire Line
	2250 1350 2250 1550
Wire Wire Line
	2200 1000 2300 1000
Connection ~ 2200 1150
Wire Wire Line
	2200 1150 2200 1000
$Comp
L R R?
U 1 1 53387FC9
P 5850 3750
F 0 "R?" V 5800 3950 40  0000 C CNN
F 1 "R" V 5857 3751 40  0000 C CNN
F 2 "" V 5780 3750 30  0000 C CNN
F 3 "" H 5850 3750 30  0000 C CNN
	1    5850 3750
	0    1    1    0   
$EndComp
$Comp
L R R?
U 1 1 53387FDD
P 5850 3850
F 0 "R?" V 5800 4050 40  0000 C CNN
F 1 "R" V 5857 3851 40  0000 C CNN
F 2 "" V 5780 3850 30  0000 C CNN
F 3 "" H 5850 3850 30  0000 C CNN
	1    5850 3850
	0    1    1    0   
$EndComp
$Comp
L R R?
U 1 1 53387FF1
P 5850 3950
F 0 "R?" V 5800 4150 40  0000 C CNN
F 1 "R" V 5857 3951 40  0000 C CNN
F 2 "" V 5780 3950 30  0000 C CNN
F 3 "" H 5850 3950 30  0000 C CNN
	1    5850 3950
	0    1    1    0   
$EndComp
$Comp
L R R?
U 1 1 53388005
P 5850 4050
F 0 "R?" V 5800 4250 40  0000 C CNN
F 1 "R" V 5857 4051 40  0000 C CNN
F 2 "" V 5780 4050 30  0000 C CNN
F 3 "" H 5850 4050 30  0000 C CNN
	1    5850 4050
	0    1    1    0   
$EndComp
$Comp
L R R?
U 1 1 53388019
P 5850 4150
F 0 "R?" V 5800 4350 40  0000 C CNN
F 1 "R" V 5857 4151 40  0000 C CNN
F 2 "" V 5780 4150 30  0000 C CNN
F 3 "" H 5850 4150 30  0000 C CNN
	1    5850 4150
	0    1    1    0   
$EndComp
$Comp
L R R?
U 1 1 5338802D
P 5850 4250
F 0 "R?" V 5800 4450 40  0000 C CNN
F 1 "R" V 5857 4251 40  0000 C CNN
F 2 "" V 5780 4250 30  0000 C CNN
F 3 "" H 5850 4250 30  0000 C CNN
	1    5850 4250
	0    1    1    0   
$EndComp
$Comp
L R R?
U 1 1 53388041
P 5850 4350
F 0 "R?" V 5800 4550 40  0000 C CNN
F 1 "R" V 5857 4351 40  0000 C CNN
F 2 "" V 5780 4350 30  0000 C CNN
F 3 "" H 5850 4350 30  0000 C CNN
	1    5850 4350
	0    1    1    0   
$EndComp
Wire Wire Line
	4800 3650 5600 3650
Wire Wire Line
	4800 3750 5600 3750
Wire Wire Line
	4800 3850 5600 3850
Wire Wire Line
	4800 3950 5600 3950
Wire Wire Line
	4800 4050 5600 4050
Wire Wire Line
	4800 4150 5600 4150
Wire Wire Line
	4800 4250 5600 4250
Wire Wire Line
	4800 4350 5600 4350
$Comp
L DARL_N Q?
U 1 1 533882AD
P 6750 2850
F 0 "Q?" H 6750 3100 50  0000 C CNN
F 1 "DARL_N" H 6650 2750 50  0000 C CNN
F 2 "" H 6750 2850 60  0000 C CNN
F 3 "" H 6750 2850 60  0000 C CNN
	1    6750 2850
	1    0    0    -1  
$EndComp
$Comp
L DARL_N Q?
U 1 1 533882C1
P 6750 3350
F 0 "Q?" H 6750 3600 50  0000 C CNN
F 1 "DARL_N" H 6650 3250 50  0000 C CNN
F 2 "" H 6750 3350 60  0000 C CNN
F 3 "" H 6750 3350 60  0000 C CNN
	1    6750 3350
	1    0    0    -1  
$EndComp
$Comp
L DARL_N Q?
U 1 1 533882D5
P 6750 3850
F 0 "Q?" H 6750 4100 50  0000 C CNN
F 1 "DARL_N" H 6650 3750 50  0000 C CNN
F 2 "" H 6750 3850 60  0000 C CNN
F 3 "" H 6750 3850 60  0000 C CNN
	1    6750 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	6100 3650 6150 3650
Wire Wire Line
	6150 3650 6150 2300
Wire Wire Line
	6150 2300 6500 2300
Wire Wire Line
	6100 3750 6250 3750
Wire Wire Line
	6250 3750 6250 2800
Wire Wire Line
	6250 2800 6500 2800
Wire Wire Line
	6100 3850 6350 3850
Wire Wire Line
	6350 3850 6350 3300
Wire Wire Line
	6350 3300 6500 3300
Wire Wire Line
	6100 3950 6450 3950
Wire Wire Line
	6450 3950 6450 3800
Wire Wire Line
	6450 3800 6500 3800
$Comp
L DARL_N Q?
U 1 1 53388410
P 6750 4350
F 0 "Q?" H 6750 4600 50  0000 C CNN
F 1 "DARL_N" H 6650 4250 50  0000 C CNN
F 2 "" H 6750 4350 60  0000 C CNN
F 3 "" H 6750 4350 60  0000 C CNN
	1    6750 4350
	1    0    0    -1  
$EndComp
$Comp
L DARL_N Q?
U 1 1 53388424
P 6750 4850
F 0 "Q?" H 6750 5100 50  0000 C CNN
F 1 "DARL_N" H 6650 4750 50  0000 C CNN
F 2 "" H 6750 4850 60  0000 C CNN
F 3 "" H 6750 4850 60  0000 C CNN
	1    6750 4850
	1    0    0    -1  
$EndComp
$Comp
L DARL_N Q?
U 1 1 53388438
P 6750 5350
F 0 "Q?" H 6750 5600 50  0000 C CNN
F 1 "DARL_N" H 6650 5250 50  0000 C CNN
F 2 "" H 6750 5350 60  0000 C CNN
F 3 "" H 6750 5350 60  0000 C CNN
	1    6750 5350
	1    0    0    -1  
$EndComp
$Comp
L DARL_N Q?
U 1 1 5338844C
P 6750 5850
F 0 "Q?" H 6750 6100 50  0000 C CNN
F 1 "DARL_N" H 6650 5750 50  0000 C CNN
F 2 "" H 6750 5850 60  0000 C CNN
F 3 "" H 6750 5850 60  0000 C CNN
	1    6750 5850
	1    0    0    -1  
$EndComp
Wire Wire Line
	6100 4050 6450 4050
Wire Wire Line
	6450 4050 6450 4300
Wire Wire Line
	6450 4300 6500 4300
Wire Wire Line
	6100 4150 6350 4150
Wire Wire Line
	6350 4150 6350 4800
Wire Wire Line
	6350 4800 6500 4800
Wire Wire Line
	6100 4250 6250 4250
Wire Wire Line
	6250 4250 6250 5300
Wire Wire Line
	6250 5300 6500 5300
Wire Wire Line
	6100 4350 6150 4350
Wire Wire Line
	6150 4350 6150 5800
Wire Wire Line
	6150 5800 6500 5800
Wire Wire Line
	7000 2500 7000 6150
Connection ~ 7000 3000
Connection ~ 7000 3500
Connection ~ 7000 4000
Connection ~ 7000 4500
Connection ~ 7000 5000
Connection ~ 7000 5500
$Comp
L GND #PWR?
U 1 1 53388767
P 7000 6150
F 0 "#PWR?" H 7000 6150 30  0001 C CNN
F 1 "GND" H 7000 6080 30  0001 C CNN
F 2 "" H 7000 6150 60  0000 C CNN
F 3 "" H 7000 6150 60  0000 C CNN
	1    7000 6150
	1    0    0    -1  
$EndComp
Connection ~ 7000 6000
$Comp
L CONN_8 P?
U 1 1 533887C0
P 10950 5250
F 0 "P?" V 10900 5250 60  0000 C CNN
F 1 "CONN_8" V 11000 5250 60  0000 C CNN
F 2 "" H 10950 5250 60  0000 C CNN
F 3 "" H 10950 5250 60  0000 C CNN
	1    10950 5250
	1    0    0    -1  
$EndComp
Text Label 3450 3050 2    60   ~ 0
VCC
Text Label 3650 5450 2    60   ~ 0
GND
$Comp
L ATTINY2313A-S IC?
U 1 1 5338669E
P 3450 4450
F 0 "IC?" H 2300 5450 40  0000 C CNN
F 1 "ATTINY2313A-S" H 4400 3550 40  0000 C CNN
F 2 "SO20" H 3450 4450 35  0000 C CIN
F 3 "" H 3450 4450 60  0000 C CNN
	1    3450 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	3450 5450 3650 5450
Wire Wire Line
	4450 7000 4750 7000
Wire Wire Line
	4450 7150 4750 7150
Wire Wire Line
	4750 7000 4750 7250
$Comp
L GND #PWR?
U 1 1 53388FDD
P 4750 7250
F 0 "#PWR?" H 4750 7250 30  0001 C CNN
F 1 "GND" H 4750 7180 30  0001 C CNN
F 2 "" H 4750 7250 60  0000 C CNN
F 3 "" H 4750 7250 60  0000 C CNN
	1    4750 7250
	1    0    0    -1  
$EndComp
Connection ~ 4750 7150
Wire Wire Line
	4800 4550 5100 4550
Wire Wire Line
	5100 4550 5100 6850
Wire Wire Line
	5100 6850 4450 6850
Text Label 2200 6850 2    60   ~ 0
VCC
Wire Wire Line
	2200 7300 3200 7300
Text Label 2200 7300 2    60   ~ 0
GND
$Comp
L CONN_2 P?
U 1 1 5338950E
P 2650 7050
F 0 "P?" V 2600 7050 40  0000 C CNN
F 1 "CONN_2" V 2700 7050 40  0000 C CNN
F 2 "" H 2650 7050 60  0000 C CNN
F 3 "" H 2650 7050 60  0000 C CNN
	1    2650 7050
	-1   0    0    1   
$EndComp
Wire Wire Line
	3000 7150 3200 7150
Wire Wire Line
	6900 5600 10600 5600
Wire Wire Line
	7350 5500 10600 5500
Wire Wire Line
	7450 5400 10600 5400
Wire Wire Line
	6900 5100 7350 5100
Wire Wire Line
	7350 5100 7350 5500
Wire Wire Line
	7450 5400 7450 4600
Wire Wire Line
	7450 4600 6900 4600
Wire Wire Line
	6900 4100 7550 4100
Wire Wire Line
	7550 4100 7550 5300
Wire Wire Line
	6900 3600 7650 3600
Wire Wire Line
	7650 3600 7650 5200
Wire Wire Line
	6900 3100 9850 3100
Wire Wire Line
	7750 3100 7750 5100
Wire Wire Line
	6900 2600 9450 2600
Wire Wire Line
	7850 2600 7850 5000
Wire Wire Line
	7950 2100 7950 4900
Wire Wire Line
	7550 5300 10600 5300
Wire Wire Line
	7650 5200 10600 5200
Wire Wire Line
	7750 5100 10600 5100
Wire Wire Line
	7850 5000 10600 5000
Wire Wire Line
	7950 4900 10600 4900
$Comp
L LED D?
U 1 1 53389F99
P 9050 1800
F 0 "D?" H 9050 1900 50  0000 C CNN
F 1 "LED" H 9050 1700 50  0000 C CNN
F 2 "" H 9050 1800 60  0000 C CNN
F 3 "" H 9050 1800 60  0000 C CNN
	1    9050 1800
	0    1    1    0   
$EndComp
$Comp
L LED D?
U 1 1 53389FAD
P 9450 1800
F 0 "D?" H 9450 1900 50  0000 C CNN
F 1 "LED" H 9450 1700 50  0000 C CNN
F 2 "" H 9450 1800 60  0000 C CNN
F 3 "" H 9450 1800 60  0000 C CNN
	1    9450 1800
	0    1    1    0   
$EndComp
$Comp
L LED D?
U 1 1 53389FC1
P 9850 1800
F 0 "D?" H 9850 1900 50  0000 C CNN
F 1 "LED" H 9850 1700 50  0000 C CNN
F 2 "" H 9850 1800 60  0000 C CNN
F 3 "" H 9850 1800 60  0000 C CNN
	1    9850 1800
	0    1    1    0   
$EndComp
$Comp
L R R?
U 1 1 53389FD5
P 9050 1250
F 0 "R?" V 9130 1250 40  0000 C CNN
F 1 "R" V 9057 1251 40  0000 C CNN
F 2 "" V 8980 1250 30  0000 C CNN
F 3 "" H 9050 1250 30  0000 C CNN
	1    9050 1250
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 53389FE9
P 9450 1250
F 0 "R?" V 9530 1250 40  0000 C CNN
F 1 "R" V 9457 1251 40  0000 C CNN
F 2 "" V 9380 1250 30  0000 C CNN
F 3 "" H 9450 1250 30  0000 C CNN
	1    9450 1250
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 53389FFD
P 9850 1250
F 0 "R?" V 9930 1250 40  0000 C CNN
F 1 "R" V 9857 1251 40  0000 C CNN
F 2 "" V 9780 1250 30  0000 C CNN
F 3 "" H 9850 1250 30  0000 C CNN
	1    9850 1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	6900 2100 9050 2100
Wire Wire Line
	9050 2100 9050 2000
Connection ~ 7950 2100
Wire Wire Line
	9450 2600 9450 2000
Connection ~ 7850 2600
Wire Wire Line
	9850 3100 9850 2000
Connection ~ 7750 3100
Text Label 8750 800  2    60   ~ 0
VCC
Wire Wire Line
	9050 800  9050 1000
Wire Wire Line
	9450 800  9450 1000
Connection ~ 9050 800 
Wire Wire Line
	9850 800  9850 1000
Connection ~ 9450 800 
Wire Wire Line
	8750 800  9850 800 
Wire Wire Line
	9050 1500 9050 1600
Wire Wire Line
	9450 1600 9450 1500
Wire Wire Line
	9850 1500 9850 1600
Wire Wire Line
	2200 6850 3200 6850
$Comp
L C C?
U 1 1 5338A896
P 2300 7050
F 0 "C?" H 2300 7150 40  0000 L CNN
F 1 "C" H 2306 6965 40  0000 L CNN
F 2 "" H 2338 6900 30  0000 C CNN
F 3 "" H 2300 7050 60  0000 C CNN
	1    2300 7050
	1    0    0    -1  
$EndComp
Wire Wire Line
	3000 6950 3050 6950
Wire Wire Line
	3050 6950 3050 7000
Wire Wire Line
	3050 7000 3200 7000
Connection ~ 2300 6850
Wire Wire Line
	2300 7300 2300 7250
Connection ~ 2300 7300
$Comp
L C C?
U 1 1 5338AB56
P 3650 3200
F 0 "C?" H 3650 3300 40  0000 L CNN
F 1 "C" H 3656 3115 40  0000 L CNN
F 2 "" H 3688 3050 30  0000 C CNN
F 3 "" H 3650 3200 60  0000 C CNN
	1    3650 3200
	0    1    1    0   
$EndComp
$Comp
L GND #PWR?
U 1 1 5338AC70
P 3850 3350
F 0 "#PWR?" H 3850 3350 30  0001 C CNN
F 1 "GND" H 3850 3280 30  0001 C CNN
F 2 "" H 3850 3350 60  0000 C CNN
F 3 "" H 3850 3350 60  0000 C CNN
	1    3850 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	3450 3050 3450 3350
Connection ~ 3450 3200
Wire Wire Line
	3850 3200 3850 3350
$Comp
L CONN_2 P?
U 1 1 5338B71A
P 1050 1750
F 0 "P?" V 1000 1750 40  0000 C CNN
F 1 "MOLEX" V 1100 1750 40  0000 C CNN
F 2 "" H 1050 1750 60  0000 C CNN
F 3 "" H 1050 1750 60  0000 C CNN
	1    1050 1750
	-1   0    0    1   
$EndComp
$Comp
L CONN_2 P?
U 1 1 5338B738
P 1050 2150
F 0 "P?" V 1000 2150 40  0000 C CNN
F 1 "MOLEX" V 1100 2150 40  0000 C CNN
F 2 "" H 1050 2150 60  0000 C CNN
F 3 "" H 1050 2150 60  0000 C CNN
	1    1050 2150
	-1   0    0    1   
$EndComp
Wire Wire Line
	1600 1150 1600 2450
Connection ~ 1600 1150
Wire Wire Line
	1600 2050 1400 2050
Wire Wire Line
	1400 1650 1600 1650
Connection ~ 1600 1650
Wire Wire Line
	1400 1850 1800 1850
Wire Wire Line
	1800 1350 1800 2650
Connection ~ 1800 1350
Wire Wire Line
	1800 2250 1400 2250
Connection ~ 1800 1850
$Comp
L CONN_2 P?
U 1 1 5338BC50
P 1050 2550
F 0 "P?" V 1000 2550 40  0000 C CNN
F 1 "SOLDER_PAD" V 1200 2550 40  0000 C CNN
F 2 "" H 1050 2550 60  0000 C CNN
F 3 "" H 1050 2550 60  0000 C CNN
	1    1050 2550
	-1   0    0    1   
$EndComp
Wire Wire Line
	1600 2450 1400 2450
Connection ~ 1600 2050
Wire Wire Line
	1800 2650 1400 2650
Connection ~ 1800 2250
Wire Wire Line
	4950 3350 4950 4350
Connection ~ 4950 4350
Wire Wire Line
	5050 3250 5050 4250
Connection ~ 5050 4250
Wire Wire Line
	5150 3250 5150 4150
Connection ~ 5150 4150
$Comp
L CONN_3X2 P?
U 1 1 5338C872
P 5050 2950
F 0 "P?" H 5050 3200 50  0000 C CNN
F 1 "ICSP" V 5050 3000 40  0000 C CNN
F 2 "" H 5050 2950 60  0000 C CNN
F 3 "" H 5050 2950 60  0000 C CNN
	1    5050 2950
	1    0    0    -1  
$EndComp
Text Label 4400 2800 2    60   ~ 0
MISO
Text Label 4400 2900 2    60   ~ 0
SCK
Text Label 4400 3000 2    60   ~ 0
RESET
Text Label 5700 2800 0    60   ~ 0
VCC
Text Label 5700 2900 0    60   ~ 0
MOSI
Text Label 5700 3000 0    60   ~ 0
GND
Wire Wire Line
	4400 2800 4650 2800
Wire Wire Line
	4400 2900 4650 2900
Wire Wire Line
	4400 3000 4650 3000
Wire Wire Line
	5450 2800 5700 2800
Wire Wire Line
	5450 2900 5700 2900
Wire Wire Line
	5450 3000 5700 3000
Wire Wire Line
	4450 3350 4950 3350
Wire Wire Line
	4450 3350 4450 2900
Connection ~ 4450 2900
Wire Wire Line
	4550 2800 4550 3250
Wire Wire Line
	4550 3250 5050 3250
Wire Wire Line
	5150 3250 5550 3250
Wire Wire Line
	5550 3250 5550 2900
Connection ~ 5550 2900
Connection ~ 4550 2800
Text Label 1950 3650 2    60   ~ 0
RESET
Wire Wire Line
	1950 3650 2100 3650
$EndSCHEMATC
