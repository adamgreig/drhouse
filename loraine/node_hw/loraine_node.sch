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
L SN65176BD U2
U 1 1 53386940
P 4150 7450
F 0 "U2" V 4500 7750 60  0000 C CNN
F 1 "SN65176BD" V 4400 7800 60  0000 C CNN
F 2 "" H 3600 6800 60  0000 C CNN
F 3 "" H 3600 6800 60  0000 C CNN
	1    4150 7450
	-1   0    0    -1  
$EndComp
$Comp
L LM7805CT U1
U 1 1 53386F94
P 3050 1200
F 0 "U1" H 2850 1400 40  0000 C CNN
F 1 "UA7805CKCT" H 3050 1400 40  0000 L CNN
F 2 "TO-220" H 3050 1300 30  0000 C CIN
F 3 "" H 3050 1200 60  0000 C CNN
	1    3050 1200
	1    0    0    -1  
$EndComp
$Comp
L CRYSTAL X1
U 1 1 53387407
P 1800 4250
F 0 "X1" H 1800 4400 60  0000 C CNN
F 1 "16MHz" H 1800 4100 60  0000 C CNN
F 2 "" H 1800 4250 60  0000 C CNN
F 3 "" H 1800 4250 60  0000 C CNN
	1    1800 4250
	0    1    1    0   
$EndComp
$Comp
L R R4
U 1 1 533877F8
P 5850 3650
F 0 "R4" V 5800 3850 40  0000 C CNN
F 1 "1k" V 5857 3651 40  0000 C CNN
F 2 "" V 5780 3650 30  0000 C CNN
F 3 "" H 5850 3650 30  0000 C CNN
	1    5850 3650
	0    1    1    0   
$EndComp
$Comp
L GND #PWR01
U 1 1 5338784C
P 1200 4750
F 0 "#PWR01" H 1200 4750 30  0001 C CNN
F 1 "GND" H 1200 4680 30  0001 C CNN
F 2 "" H 1200 4750 60  0000 C CNN
F 3 "" H 1200 4750 60  0000 C CNN
	1    1200 4750
	1    0    0    -1  
$EndComp
$Comp
L C C5
U 1 1 5338788F
P 1450 4550
F 0 "C5" H 1450 4650 40  0000 L CNN
F 1 "16pF" H 1456 4465 40  0000 L CNN
F 2 "" H 1488 4400 30  0000 C CNN
F 3 "" H 1450 4550 60  0000 C CNN
	1    1450 4550
	0    1    1    0   
$EndComp
$Comp
L C C4
U 1 1 533878B4
P 1450 3950
F 0 "C4" H 1450 4050 40  0000 L CNN
F 1 "16pF" H 1456 3865 40  0000 L CNN
F 2 "" H 1488 3800 30  0000 C CNN
F 3 "" H 1450 3950 60  0000 C CNN
	1    1450 3950
	0    1    1    0   
$EndComp
$Comp
L BARREL_JACK CON1
U 1 1 533879A3
P 1100 1250
F 0 "CON1" H 1100 1500 60  0000 C CNN
F 1 "BARREL_JACK" H 1100 1050 60  0000 C CNN
F 2 "" H 1100 1250 60  0000 C CNN
F 3 "" H 1100 1250 60  0000 C CNN
	1    1100 1250
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR02
U 1 1 533879F1
P 3850 1650
F 0 "#PWR02" H 3850 1650 30  0001 C CNN
F 1 "GND" H 3850 1580 30  0001 C CNN
F 2 "" H 3850 1650 60  0000 C CNN
F 3 "" H 3850 1650 60  0000 C CNN
	1    3850 1650
	1    0    0    -1  
$EndComp
$Comp
L CP1 C2
U 1 1 53387A3C
P 3600 1350
F 0 "C2" H 3650 1450 50  0000 L CNN
F 1 "0.1uF" H 3650 1250 50  0000 L CNN
F 2 "" H 3600 1350 60  0000 C CNN
F 3 "" H 3600 1350 60  0000 C CNN
	1    3600 1350
	1    0    0    -1  
$EndComp
$Comp
L R R5
U 1 1 53387FC9
P 5850 3750
F 0 "R5" V 5800 3950 40  0000 C CNN
F 1 "1k" V 5857 3751 40  0000 C CNN
F 2 "" V 5780 3750 30  0000 C CNN
F 3 "" H 5850 3750 30  0000 C CNN
	1    5850 3750
	0    1    1    0   
$EndComp
$Comp
L R R6
U 1 1 53387FDD
P 5850 3850
F 0 "R6" V 5800 4050 40  0000 C CNN
F 1 "1k" V 5857 3851 40  0000 C CNN
F 2 "" V 5780 3850 30  0000 C CNN
F 3 "" H 5850 3850 30  0000 C CNN
	1    5850 3850
	0    1    1    0   
$EndComp
$Comp
L R R7
U 1 1 53387FF1
P 5850 3950
F 0 "R7" V 5800 4150 40  0000 C CNN
F 1 "1k" V 5857 3951 40  0000 C CNN
F 2 "" V 5780 3950 30  0000 C CNN
F 3 "" H 5850 3950 30  0000 C CNN
	1    5850 3950
	0    1    1    0   
$EndComp
$Comp
L R R8
U 1 1 53388005
P 5850 4050
F 0 "R8" V 5800 4250 40  0000 C CNN
F 1 "1k" V 5857 4051 40  0000 C CNN
F 2 "" V 5780 4050 30  0000 C CNN
F 3 "" H 5850 4050 30  0000 C CNN
	1    5850 4050
	0    1    1    0   
$EndComp
$Comp
L R R9
U 1 1 53388019
P 5850 4150
F 0 "R9" V 5800 4350 40  0000 C CNN
F 1 "1k" V 5857 4151 40  0000 C CNN
F 2 "" V 5780 4150 30  0000 C CNN
F 3 "" H 5850 4150 30  0000 C CNN
	1    5850 4150
	0    1    1    0   
$EndComp
$Comp
L R R10
U 1 1 5338802D
P 5850 4250
F 0 "R10" V 5800 4450 40  0000 C CNN
F 1 "1k" V 5857 4251 40  0000 C CNN
F 2 "" V 5780 4250 30  0000 C CNN
F 3 "" H 5850 4250 30  0000 C CNN
	1    5850 4250
	0    1    1    0   
$EndComp
$Comp
L R R11
U 1 1 53388041
P 5850 4350
F 0 "R11" V 5800 4550 40  0000 C CNN
F 1 "1k" V 5857 4351 40  0000 C CNN
F 2 "" V 5780 4350 30  0000 C CNN
F 3 "" H 5850 4350 30  0000 C CNN
	1    5850 4350
	0    1    1    0   
$EndComp
$Comp
L GND #PWR03
U 1 1 53388767
P 7000 6150
F 0 "#PWR03" H 7000 6150 30  0001 C CNN
F 1 "GND" H 7000 6080 30  0001 C CNN
F 2 "" H 7000 6150 60  0000 C CNN
F 3 "" H 7000 6150 60  0000 C CNN
	1    7000 6150
	1    0    0    -1  
$EndComp
$Comp
L ATTINY2313A-S IC1
U 1 1 5338669E
P 3450 4450
F 0 "IC1" H 2300 5450 40  0000 C CNN
F 1 "ATTINY2313A-S" H 4400 3550 40  0000 C CNN
F 2 "SO20" H 3450 4450 35  0000 C CIN
F 3 "" H 3450 4450 60  0000 C CNN
	1    3450 4450
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR04
U 1 1 53388FDD
P 4750 7250
F 0 "#PWR04" H 4750 7250 30  0001 C CNN
F 1 "GND" H 4750 7180 30  0001 C CNN
F 2 "" H 4750 7250 60  0000 C CNN
F 3 "" H 4750 7250 60  0000 C CNN
	1    4750 7250
	1    0    0    -1  
$EndComp
$Comp
L CONN_2 P6
U 1 1 5338950E
P 2350 7100
F 0 "P6" V 2300 7100 40  0000 C CNN
F 1 "BUS" V 2500 7100 40  0000 C CNN
F 2 "" H 2350 7100 60  0000 C CNN
F 3 "" H 2350 7100 60  0000 C CNN
	1    2350 7100
	-1   0    0    1   
$EndComp
$Comp
L C C6
U 1 1 5338A896
P 2900 6850
F 0 "C6" V 2950 6950 40  0000 L CNN
F 1 "0.1u" V 2950 6650 40  0000 L CNN
F 2 "" H 2938 6700 30  0000 C CNN
F 3 "" H 2900 6850 60  0000 C CNN
	1    2900 6850
	0    -1   -1   0   
$EndComp
$Comp
L C C3
U 1 1 5338AB56
P 3650 3200
F 0 "C3" V 3600 3250 40  0000 L CNN
F 1 "0.1u" V 3710 3020 40  0000 L CNN
F 2 "" H 3688 3050 30  0000 C CNN
F 3 "" H 3650 3200 60  0000 C CNN
	1    3650 3200
	0    1    1    0   
$EndComp
$Comp
L GND #PWR05
U 1 1 5338AC70
P 3850 3350
F 0 "#PWR05" H 3850 3350 30  0001 C CNN
F 1 "GND" H 3850 3280 30  0001 C CNN
F 2 "" H 3850 3350 60  0000 C CNN
F 3 "" H 3850 3350 60  0000 C CNN
	1    3850 3350
	1    0    0    -1  
$EndComp
$Comp
L CONN_2 P1
U 1 1 5338B71A
P 1050 1750
F 0 "P1" V 1000 1750 40  0000 C CNN
F 1 "MOLEX" V 1100 1750 40  0000 C CNN
F 2 "" H 1050 1750 60  0000 C CNN
F 3 "" H 1050 1750 60  0000 C CNN
	1    1050 1750
	-1   0    0    1   
$EndComp
$Comp
L CONN_2 P2
U 1 1 5338B738
P 1050 2150
F 0 "P2" V 1000 2150 40  0000 C CNN
F 1 "MOLEX" V 1100 2150 40  0000 C CNN
F 2 "" H 1050 2150 60  0000 C CNN
F 3 "" H 1050 2150 60  0000 C CNN
	1    1050 2150
	-1   0    0    1   
$EndComp
$Comp
L CONN_2 P3
U 1 1 5338BC50
P 1050 2550
F 0 "P3" V 1000 2550 40  0000 C CNN
F 1 "SOLDER_PAD" V 1200 2550 40  0000 C CNN
F 2 "" H 1050 2550 60  0000 C CNN
F 3 "" H 1050 2550 60  0000 C CNN
	1    1050 2550
	-1   0    0    1   
$EndComp
$Comp
L CONN_3X2 P4
U 1 1 5338C872
P 5050 2950
F 0 "P4" H 5050 3200 50  0000 C CNN
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
Text Label 1950 3650 2    60   ~ 0
RESET
$Comp
L CONN_8X2 P5
U 1 1 5338D875
P 8750 5700
F 0 "P5" H 8750 6150 60  0000 C CNN
F 1 "OUTPUTS" V 8750 5700 50  0000 C CNN
F 2 "" H 8750 5700 60  0000 C CNN
F 3 "" H 8750 5700 60  0000 C CNN
	1    8750 5700
	-1   0    0    -1  
$EndComp
$Comp
L CP1 C1
U 1 1 5338EB5B
P 2450 1350
F 0 "C1" H 2500 1450 50  0000 L CNN
F 1 "0.33uF" H 2500 1250 50  0000 L CNN
F 2 "" H 2450 1350 60  0000 C CNN
F 3 "" H 2450 1350 60  0000 C CNN
	1    2450 1350
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR06
U 1 1 5338F7A1
P 3450 5500
F 0 "#PWR06" H 3450 5500 30  0001 C CNN
F 1 "GND" H 3450 5430 30  0001 C CNN
F 2 "" H 3450 5500 60  0000 C CNN
F 3 "" H 3450 5500 60  0000 C CNN
	1    3450 5500
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR07
U 1 1 5338FB33
P 5700 3050
F 0 "#PWR07" H 5700 3050 30  0001 C CNN
F 1 "GND" H 5700 2980 30  0001 C CNN
F 2 "" H 5700 3050 60  0000 C CNN
F 3 "" H 5700 3050 60  0000 C CNN
	1    5700 3050
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR08
U 1 1 5338FCA4
P 3200 7350
F 0 "#PWR08" H 3200 7350 30  0001 C CNN
F 1 "GND" H 3200 7280 30  0001 C CNN
F 2 "" H 3200 7350 60  0000 C CNN
F 3 "" H 3200 7350 60  0000 C CNN
	1    3200 7350
	1    0    0    -1  
$EndComp
$Comp
L +12V #PWR09
U 1 1 5339006C
P 2200 1100
F 0 "#PWR09" H 2200 1050 20  0001 C CNN
F 1 "+12V" H 2200 1200 30  0000 C CNN
F 2 "" H 2200 1100 60  0000 C CNN
F 3 "" H 2200 1100 60  0000 C CNN
	1    2200 1100
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR010
U 1 1 53390080
P 3850 1100
F 0 "#PWR010" H 3850 1200 30  0001 C CNN
F 1 "VCC" H 3850 1200 30  0000 C CNN
F 2 "" H 3850 1100 60  0000 C CNN
F 3 "" H 3850 1100 60  0000 C CNN
	1    3850 1100
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR011
U 1 1 53390544
P 3450 3150
F 0 "#PWR011" H 3450 3250 30  0001 C CNN
F 1 "VCC" H 3450 3250 30  0000 C CNN
F 2 "" H 3450 3150 60  0000 C CNN
F 3 "" H 3450 3150 60  0000 C CNN
	1    3450 3150
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR012
U 1 1 5339060A
P 5600 2750
F 0 "#PWR012" H 5600 2850 30  0001 C CNN
F 1 "VCC" H 5600 2850 30  0000 C CNN
F 2 "" H 5600 2750 60  0000 C CNN
F 3 "" H 5600 2750 60  0000 C CNN
	1    5600 2750
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR013
U 1 1 5339091E
P 3200 6800
F 0 "#PWR013" H 3200 6900 30  0001 C CNN
F 1 "VCC" H 3200 6900 30  0000 C CNN
F 2 "" H 3200 6800 60  0000 C CNN
F 3 "" H 3200 6800 60  0000 C CNN
	1    3200 6800
	1    0    0    -1  
$EndComp
$Comp
L +12V #PWR014
U 1 1 53390BA6
P 9300 5250
F 0 "#PWR014" H 9300 5200 20  0001 C CNN
F 1 "+12V" H 9300 5350 30  0000 C CNN
F 2 "" H 9300 5250 60  0000 C CNN
F 3 "" H 9300 5250 60  0000 C CNN
	1    9300 5250
	1    0    0    -1  
$EndComp
$Comp
L BD679 Q1
U 1 1 5339A559
P 6750 2350
F 0 "Q1" H 6750 2600 50  0000 C CNN
F 1 "BD679" H 6600 2250 50  0000 C CNN
F 2 "" H 6750 2350 60  0000 C CNN
F 3 "" H 6750 2350 60  0000 C CNN
	1    6750 2350
	1    0    0    -1  
$EndComp
$Comp
L BD679 Q2
U 1 1 5339A577
P 6750 2850
F 0 "Q2" H 6750 3100 50  0000 C CNN
F 1 "BD679" H 6600 2750 50  0000 C CNN
F 2 "" H 6750 2850 60  0000 C CNN
F 3 "" H 6750 2850 60  0000 C CNN
	1    6750 2850
	1    0    0    -1  
$EndComp
$Comp
L BD679 Q3
U 1 1 5339A58B
P 6750 3350
F 0 "Q3" H 6750 3600 50  0000 C CNN
F 1 "BD679" H 6600 3250 50  0000 C CNN
F 2 "" H 6750 3350 60  0000 C CNN
F 3 "" H 6750 3350 60  0000 C CNN
	1    6750 3350
	1    0    0    -1  
$EndComp
$Comp
L BD679 Q4
U 1 1 5339A59F
P 6750 3850
F 0 "Q4" H 6750 4100 50  0000 C CNN
F 1 "BD679" H 6600 3750 50  0000 C CNN
F 2 "" H 6750 3850 60  0000 C CNN
F 3 "" H 6750 3850 60  0000 C CNN
	1    6750 3850
	1    0    0    -1  
$EndComp
$Comp
L BD679 Q5
U 1 1 5339A5B3
P 6750 4350
F 0 "Q5" H 6750 4600 50  0000 C CNN
F 1 "BD679" H 6600 4250 50  0000 C CNN
F 2 "" H 6750 4350 60  0000 C CNN
F 3 "" H 6750 4350 60  0000 C CNN
	1    6750 4350
	1    0    0    -1  
$EndComp
$Comp
L BD679 Q6
U 1 1 5339A5C7
P 6750 4850
F 0 "Q6" H 6750 5100 50  0000 C CNN
F 1 "BD679" H 6600 4750 50  0000 C CNN
F 2 "" H 6750 4850 60  0000 C CNN
F 3 "" H 6750 4850 60  0000 C CNN
	1    6750 4850
	1    0    0    -1  
$EndComp
$Comp
L BD679 Q7
U 1 1 5339A5DB
P 6750 5350
F 0 "Q7" H 6750 5600 50  0000 C CNN
F 1 "BD679" H 6600 5250 50  0000 C CNN
F 2 "" H 6750 5350 60  0000 C CNN
F 3 "" H 6750 5350 60  0000 C CNN
	1    6750 5350
	1    0    0    -1  
$EndComp
$Comp
L BD679 Q8
U 1 1 5339A5EF
P 6750 5850
F 0 "Q8" H 6750 6100 50  0000 C CNN
F 1 "BD679" H 6600 5750 50  0000 C CNN
F 2 "" H 6750 5850 60  0000 C CNN
F 3 "" H 6750 5850 60  0000 C CNN
	1    6750 5850
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR015
U 1 1 5339D1EB
P 2700 6900
F 0 "#PWR015" H 2700 6900 30  0001 C CNN
F 1 "GND" H 2700 6830 30  0001 C CNN
F 2 "" H 2700 6900 60  0000 C CNN
F 3 "" H 2700 6900 60  0000 C CNN
	1    2700 6900
	1    0    0    -1  
$EndComp
$Comp
L CONN_2 P7
U 1 1 5339D3B6
P 2350 7450
F 0 "P7" V 2300 7450 40  0000 C CNN
F 1 "BUS_THRU" V 2500 7450 40  0000 C CNN
F 2 "" H 2350 7450 60  0000 C CNN
F 3 "" H 2350 7450 60  0000 C CNN
	1    2350 7450
	-1   0    0    1   
$EndComp
Wire Wire Line
	1650 3950 2100 3950
Wire Wire Line
	1650 4550 2100 4550
Wire Wire Line
	2100 4550 2100 4150
Connection ~ 1800 3950
Connection ~ 1800 4550
Wire Wire Line
	1250 3950 1200 3950
Wire Wire Line
	1200 3950 1200 4750
Wire Wire Line
	1250 4550 1200 4550
Connection ~ 1200 4550
Wire Wire Line
	3050 1550 3050 1450
Connection ~ 3600 1150
Connection ~ 3050 1550
Connection ~ 3600 1550
Wire Wire Line
	1400 1350 2250 1350
Wire Wire Line
	2250 1350 2250 1550
Connection ~ 2200 1150
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
Wire Wire Line
	6150 3650 6100 3650
Wire Wire Line
	6250 3750 6100 3750
Wire Wire Line
	6250 2800 6500 2800
Wire Wire Line
	6350 3850 6100 3850
Wire Wire Line
	6350 3300 6500 3300
Wire Wire Line
	6100 3950 6450 3950
Wire Wire Line
	6450 3950 6450 3800
Wire Wire Line
	6450 3800 6500 3800
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
Connection ~ 7000 3000
Connection ~ 7000 3500
Connection ~ 7000 4000
Connection ~ 7000 4500
Connection ~ 7000 5000
Connection ~ 7000 5500
Connection ~ 7000 6000
Wire Wire Line
	4450 7000 4750 7000
Wire Wire Line
	4450 7150 4750 7150
Wire Wire Line
	4750 7000 4750 7250
Connection ~ 4750 7150
Wire Wire Line
	4800 4550 5100 4550
Wire Wire Line
	5100 4550 5100 6850
Wire Wire Line
	5100 6850 4450 6850
Wire Wire Line
	6900 5100 7350 5100
Wire Wire Line
	7450 4600 6900 4600
Wire Wire Line
	6900 4100 7550 4100
Wire Wire Line
	7550 4100 7550 5750
Wire Wire Line
	6900 3600 7650 3600
Wire Wire Line
	7650 3600 7650 5650
Wire Wire Line
	7750 3100 7750 5550
Wire Wire Line
	7950 2100 7950 5350
Wire Wire Line
	2700 7000 3200 7000
Connection ~ 3450 3200
Wire Wire Line
	3850 3200 3850 3350
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
Wire Wire Line
	1950 3650 2100 3650
Wire Wire Line
	7350 5100 7350 5950
Wire Wire Line
	7450 4600 7450 5850
Wire Wire Line
	9300 5250 9300 6050
Wire Wire Line
	9300 5350 9150 5350
Wire Wire Line
	9300 5450 9150 5450
Connection ~ 9300 5350
Wire Wire Line
	9300 5550 9150 5550
Connection ~ 9300 5450
Wire Wire Line
	9300 5650 9150 5650
Connection ~ 9300 5550
Wire Wire Line
	9300 5750 9150 5750
Connection ~ 9300 5650
Wire Wire Line
	9300 5850 9150 5850
Connection ~ 9300 5750
Wire Wire Line
	9150 5950 9300 5950
Connection ~ 9300 5850
Wire Wire Line
	9300 6050 9150 6050
Connection ~ 9300 5950
Wire Wire Line
	1400 1150 2650 1150
Connection ~ 2450 1150
Connection ~ 2450 1550
Wire Wire Line
	2250 1550 3850 1550
Wire Wire Line
	3450 1150 3850 1150
Wire Wire Line
	3450 5450 3450 5500
Wire Wire Line
	3850 1550 3850 1650
Wire Wire Line
	5700 3000 5700 3050
Wire Wire Line
	3200 7300 3200 7300
Wire Wire Line
	3850 1150 3850 1100
Wire Wire Line
	2200 1100 2200 1150
Wire Wire Line
	3450 3150 3450 3350
Wire Wire Line
	5600 2800 5600 2750
Connection ~ 5600 2800
Wire Wire Line
	3200 6850 3200 6800
Wire Wire Line
	7000 2500 7000 6150
Wire Wire Line
	6150 2300 6500 2300
Wire Wire Line
	3200 7300 3200 7350
Wire Wire Line
	3100 6850 3200 6850
Wire Wire Line
	2700 6850 2700 6900
Wire Wire Line
	2700 7200 3000 7200
Wire Wire Line
	3000 7200 3000 7150
Wire Wire Line
	3000 7150 3200 7150
Wire Wire Line
	2800 7000 2800 7350
Wire Wire Line
	2800 7350 2700 7350
Connection ~ 2800 7000
Wire Wire Line
	2900 7200 2900 7550
Wire Wire Line
	2900 7550 2700 7550
Connection ~ 2900 7200
Wire Wire Line
	7350 5950 8350 5950
Wire Wire Line
	7450 5850 8350 5850
Wire Wire Line
	7550 5750 8350 5750
Wire Wire Line
	7650 5650 8350 5650
Wire Wire Line
	7750 5550 8350 5550
Wire Wire Line
	7850 5450 8350 5450
Wire Wire Line
	7950 5350 8350 5350
$Comp
L TL4242 U3
U 1 1 5339EB06
P 8550 2200
F 0 "U3" H 9125 3100 60  0000 C CNN
F 1 "TL4242" V 9150 2825 60  0000 C CNN
F 2 "" H 9175 2700 60  0000 C CNN
F 3 "" H 9175 2700 60  0000 C CNN
	1    8550 2200
	1    0    0    -1  
$EndComp
$Comp
L TL4242 U4
U 1 1 5339EB1A
P 8550 3350
F 0 "U4" H 9125 4250 60  0000 C CNN
F 1 "TL4242" V 9150 3975 60  0000 C CNN
F 2 "" H 9175 3850 60  0000 C CNN
F 3 "" H 9175 3850 60  0000 C CNN
	1    8550 3350
	1    0    0    -1  
$EndComp
$Comp
L TL4242 U5
U 1 1 5339EB2E
P 8550 4400
F 0 "U5" H 9125 5300 60  0000 C CNN
F 1 "TL4242" V 9150 5025 60  0000 C CNN
F 2 "" H 9175 4900 60  0000 C CNN
F 3 "" H 9175 4900 60  0000 C CNN
	1    8550 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	7750 3100 6900 3100
Wire Wire Line
	6900 2600 7850 2600
Wire Wire Line
	7950 2100 6900 2100
Wire Wire Line
	7850 2600 7850 5450
$Comp
L GND #PWR016
U 1 1 5339EE64
P 10600 5800
F 0 "#PWR016" H 10600 5800 30  0001 C CNN
F 1 "GND" H 10600 5730 30  0001 C CNN
F 2 "" H 10600 5800 60  0000 C CNN
F 3 "" H 10600 5800 60  0000 C CNN
	1    10600 5800
	1    0    0    -1  
$EndComp
Connection ~ 10400 5650
Wire Wire Line
	10600 5650 10600 5800
Connection ~ 10600 5650
Wire Wire Line
	9450 3850 10200 3850
Wire Wire Line
	9450 2800 10400 2800
$Comp
L +12V #PWR017
U 1 1 5339ED35
P 9650 1300
F 0 "#PWR017" H 9650 1250 20  0001 C CNN
F 1 "+12V" H 9650 1400 30  0000 C CNN
F 2 "" H 9650 1300 60  0000 C CNN
F 3 "" H 9650 1300 60  0000 C CNN
	1    9650 1300
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR018
U 1 1 5339F02D
P 8500 2200
F 0 "#PWR018" H 8500 2200 30  0001 C CNN
F 1 "GND" H 8500 2130 30  0001 C CNN
F 2 "" H 8500 2200 60  0000 C CNN
F 3 "" H 8500 2200 60  0000 C CNN
	1    8500 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	9050 2150 8500 2150
Wire Wire Line
	8500 1650 8500 2200
Wire Wire Line
	8500 1650 8600 1650
Connection ~ 8500 2150
$Comp
L GND #PWR019
U 1 1 5339F1BC
P 8500 3350
F 0 "#PWR019" H 8500 3350 30  0001 C CNN
F 1 "GND" H 8500 3280 30  0001 C CNN
F 2 "" H 8500 3350 60  0000 C CNN
F 3 "" H 8500 3350 60  0000 C CNN
	1    8500 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	8500 2800 8500 3350
Wire Wire Line
	8500 3300 9050 3300
Wire Wire Line
	8500 2800 8600 2800
Connection ~ 8500 3300
$Comp
L GND #PWR020
U 1 1 5339F354
P 8500 4400
F 0 "#PWR020" H 8500 4400 30  0001 C CNN
F 1 "GND" H 8500 4330 30  0001 C CNN
F 2 "" H 8500 4400 60  0000 C CNN
F 3 "" H 8500 4400 60  0000 C CNN
	1    8500 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	8500 3850 8500 4400
Wire Wire Line
	8500 4350 9050 4350
Wire Wire Line
	8500 3850 8600 3850
Connection ~ 8500 4350
Wire Wire Line
	6100 1900 8050 1900
Wire Wire Line
	8050 1900 8050 3650
Wire Wire Line
	8050 3650 8600 3650
Wire Wire Line
	6050 1800 8150 1800
Wire Wire Line
	8150 1800 8150 2600
Wire Wire Line
	8150 2600 8600 2600
Wire Wire Line
	6000 1450 8600 1450
$Comp
L R R1
U 1 1 5339FA1A
P 10100 5150
F 0 "R1" V 10180 5150 40  0000 C CNN
F 1 "0.47R 0.25W" V 10000 5150 40  0000 C CNN
F 2 "" V 10030 5150 30  0000 C CNN
F 3 "" H 10100 5150 30  0000 C CNN
	1    10100 5150
	1    0    0    -1  
$EndComp
$Comp
L R R2
U 1 1 5339FA2E
P 10400 5150
F 0 "R2" V 10480 5150 40  0000 C CNN
F 1 "0.47R 0.25W" V 10300 5150 40  0000 C CNN
F 2 "" V 10330 5150 30  0000 C CNN
F 3 "" H 10400 5150 30  0000 C CNN
	1    10400 5150
	1    0    0    -1  
$EndComp
$Comp
L R R3
U 1 1 5339FA42
P 10700 5150
F 0 "R3" V 10780 5150 40  0000 C CNN
F 1 "0.47R 0.25W" V 10600 5150 40  0000 C CNN
F 2 "" V 10630 5150 30  0000 C CNN
F 3 "" H 10700 5150 30  0000 C CNN
	1    10700 5150
	1    0    0    -1  
$EndComp
Wire Wire Line
	8600 3950 8400 3950
Wire Wire Line
	8400 3950 8400 4500
Wire Wire Line
	8400 4500 10200 4500
Wire Wire Line
	8600 2900 8350 2900
Wire Wire Line
	8350 2900 8350 4550
Wire Wire Line
	8350 4550 10400 4550
Wire Wire Line
	8600 1750 8300 1750
Wire Wire Line
	8300 1750 8300 4600
Wire Wire Line
	6900 5600 7250 5600
Wire Wire Line
	7250 5600 7250 6050
Wire Wire Line
	7250 6050 8350 6050
Wire Wire Line
	9650 1300 9650 1450
Wire Wire Line
	9650 1450 9450 1450
$Comp
L +12V #PWR021
U 1 1 533A12D0
P 9600 2450
F 0 "#PWR021" H 9600 2400 20  0001 C CNN
F 1 "+12V" H 9600 2550 30  0000 C CNN
F 2 "" H 9600 2450 60  0000 C CNN
F 3 "" H 9600 2450 60  0000 C CNN
	1    9600 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	9450 2600 9600 2600
Wire Wire Line
	9600 2600 9600 2450
$Comp
L +12V #PWR022
U 1 1 533A13CA
P 9600 3500
F 0 "#PWR022" H 9600 3450 20  0001 C CNN
F 1 "+12V" H 9600 3600 30  0000 C CNN
F 2 "" H 9600 3500 60  0000 C CNN
F 3 "" H 9600 3500 60  0000 C CNN
	1    9600 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	9450 3650 9600 3650
Wire Wire Line
	9600 3650 9600 3500
Wire Wire Line
	6150 2300 6150 3650
Wire Wire Line
	6250 2800 6250 3750
Wire Wire Line
	6350 3300 6350 3850
Wire Wire Line
	5500 3850 5500 3500
Wire Wire Line
	5500 3500 6100 3500
Wire Wire Line
	6100 3500 6100 1900
Connection ~ 5500 3850
Wire Wire Line
	5450 3750 5450 3450
Wire Wire Line
	5450 3450 6050 3450
Wire Wire Line
	6050 3450 6050 1800
Connection ~ 5450 3750
Wire Wire Line
	5400 3650 5400 3400
Wire Wire Line
	5400 3400 6000 3400
Wire Wire Line
	6000 3400 6000 1450
Connection ~ 5400 3650
Connection ~ 10400 4550
Wire Wire Line
	10400 4400 10400 4900
Wire Wire Line
	10400 5400 10400 5650
$Comp
L STAR_LED D1
U 1 1 53619F29
P 10400 4150
F 0 "D1" V 10000 4150 50  0000 C CNN
F 1 "STAR_LED" V 10750 4200 50  0000 C CNN
F 2 "" V 10200 4050 60  0000 C CNN
F 3 "" V 10200 4050 60  0000 C CNN
	1    10400 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	10200 4400 10200 4800
Connection ~ 10200 4500
Wire Wire Line
	8300 4600 10600 4600
Wire Wire Line
	10600 4400 10600 4800
Connection ~ 10600 4600
Wire Wire Line
	10400 2800 10400 3850
Wire Wire Line
	10600 1650 10600 3850
Wire Wire Line
	9450 1650 10600 1650
Wire Wire Line
	10100 5400 10100 5650
Wire Wire Line
	10100 5650 10700 5650
Wire Wire Line
	10700 5650 10700 5400
Wire Wire Line
	10100 4900 10100 4800
Wire Wire Line
	10100 4800 10200 4800
Wire Wire Line
	10700 4900 10700 4800
Wire Wire Line
	10700 4800 10600 4800
$EndSCHEMATC
