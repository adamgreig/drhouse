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
LIBS:star_led
LIBS:tl4242
LIBS:uplighter-cache
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
L TL4242 U1
U 1 1 5378E9C8
P 2250 2200
F 0 "U1" H 2800 3100 60  0000 C CNN
F 1 "TL4242" V 2825 2825 60  0000 C CNN
F 2 "" H 2850 2700 60  0000 C CNN
F 3 "" H 2850 2700 60  0000 C CNN
	1    2250 2200
	1    0    0    -1  
$EndComp
$Comp
L STAR_LED D1
U 1 1 5378EA68
P 5900 3950
F 0 "D1" V 5500 3950 50  0000 C CNN
F 1 "STAR_LED" V 6250 4000 50  0000 C CNN
F 2 "" V 5700 3850 60  0000 C CNN
F 3 "" V 5700 3850 60  0000 C CNN
	1    5900 3950
	1    0    0    -1  
$EndComp
$Comp
L R R1
U 1 1 5378EAD1
P 5700 5600
F 0 "R1" V 5780 5600 40  0000 C CNN
F 1 "R" V 5707 5601 40  0000 C CNN
F 2 "" V 5630 5600 30  0000 C CNN
F 3 "" H 5700 5600 30  0000 C CNN
	1    5700 5600
	1    0    0    -1  
$EndComp
$Comp
L R R2
U 1 1 5378EB2F
P 5900 5600
F 0 "R2" V 5980 5600 40  0000 C CNN
F 1 "R" V 5907 5601 40  0000 C CNN
F 2 "" V 5830 5600 30  0000 C CNN
F 3 "" H 5900 5600 30  0000 C CNN
	1    5900 5600
	1    0    0    -1  
$EndComp
$Comp
L R R3
U 1 1 5378EB62
P 6100 5600
F 0 "R3" V 6180 5600 40  0000 C CNN
F 1 "R" V 6107 5601 40  0000 C CNN
F 2 "" V 6030 5600 30  0000 C CNN
F 3 "" H 6100 5600 30  0000 C CNN
	1    6100 5600
	1    0    0    -1  
$EndComp
Text Notes 6300 5450 0    60   ~ 0
These current sense resistors\nset the peak LED current.\nREF is held at 177mV nominal
Text Notes 6300 5700 0    60   ~ 0
3W star wants I=0.35A R=0.51\n1W star wants I=0.15A R=1.18
Text Notes 6300 6050 0    60   ~ 0
Resistor dissipation is\n1W star: 60mW\n3W star: 27mW
$Comp
L CONN_3 K1
U 1 1 5378EE35
P 1600 1450
F 0 "K1" V 1550 1450 50  0000 C CNN
F 1 "CONN_3" V 1650 1450 40  0000 C CNN
F 2 "" H 1600 1450 60  0000 C CNN
F 3 "" H 1600 1450 60  0000 C CNN
	1    1600 1450
	-1   0    0    1   
$EndComp
$Comp
L TL4242 U2
U 1 1 5378F0F6
P 2250 4100
F 0 "U2" H 2800 5000 60  0000 C CNN
F 1 "TL4242" V 2825 4725 60  0000 C CNN
F 2 "" H 2850 4600 60  0000 C CNN
F 3 "" H 2850 4600 60  0000 C CNN
	1    2250 4100
	1    0    0    -1  
$EndComp
$Comp
L CONN_3 K2
U 1 1 5378F101
P 1600 3350
F 0 "K2" V 1550 3350 50  0000 C CNN
F 1 "CONN_3" V 1650 3350 40  0000 C CNN
F 2 "" H 1600 3350 60  0000 C CNN
F 3 "" H 1600 3350 60  0000 C CNN
	1    1600 3350
	-1   0    0    1   
$EndComp
$Comp
L TL4242 U3
U 1 1 5378F1DB
P 2250 6000
F 0 "U3" H 2800 6900 60  0000 C CNN
F 1 "TL4242" V 2825 6625 60  0000 C CNN
F 2 "" H 2850 6500 60  0000 C CNN
F 3 "" H 2850 6500 60  0000 C CNN
	1    2250 6000
	1    0    0    -1  
$EndComp
$Comp
L CONN_3 K3
U 1 1 5378F1E6
P 1600 5250
F 0 "K3" V 1550 5250 50  0000 C CNN
F 1 "CONN_3" V 1650 5250 40  0000 C CNN
F 2 "" H 1600 5250 60  0000 C CNN
F 3 "" H 1600 5250 60  0000 C CNN
	1    1600 5250
	-1   0    0    1   
$EndComp
Text Label 3450 1650 0    60   ~ 0
LED_RED
Text Label 3450 2300 0    60   ~ 0
REF_RED
Text Label 3450 3550 0    60   ~ 0
LED_GREEN
Text Label 3450 4200 0    60   ~ 0
REF_GREEN
Text Label 3450 5450 0    60   ~ 0
LED_BLUE
Text Label 3450 6100 0    60   ~ 0
REF_BLUE
$Comp
L GND #PWR01
U 1 1 53790258
P 5700 5900
F 0 "#PWR01" H 5700 5900 30  0001 C CNN
F 1 "GND" H 5700 5830 30  0001 C CNN
F 2 "" H 5700 5900 60  0000 C CNN
F 3 "" H 5700 5900 60  0000 C CNN
	1    5700 5900
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR02
U 1 1 53790276
P 5900 5900
F 0 "#PWR02" H 5900 5900 30  0001 C CNN
F 1 "GND" H 5900 5830 30  0001 C CNN
F 2 "" H 5900 5900 60  0000 C CNN
F 3 "" H 5900 5900 60  0000 C CNN
	1    5900 5900
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR03
U 1 1 53790294
P 6100 5900
F 0 "#PWR03" H 6100 5900 30  0001 C CNN
F 1 "GND" H 6100 5830 30  0001 C CNN
F 2 "" H 6100 5900 60  0000 C CNN
F 3 "" H 6100 5900 60  0000 C CNN
	1    6100 5900
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR04
U 1 1 537904E9
P 2500 2200
F 0 "#PWR04" H 2500 2200 30  0001 C CNN
F 1 "GND" H 2500 2130 30  0001 C CNN
F 2 "" H 2500 2200 60  0000 C CNN
F 3 "" H 2500 2200 60  0000 C CNN
	1    2500 2200
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR05
U 1 1 537905EA
P 2500 4100
F 0 "#PWR05" H 2500 4100 30  0001 C CNN
F 1 "GND" H 2500 4030 30  0001 C CNN
F 2 "" H 2500 4100 60  0000 C CNN
F 3 "" H 2500 4100 60  0000 C CNN
	1    2500 4100
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR06
U 1 1 53790784
P 2500 6000
F 0 "#PWR06" H 2500 6000 30  0001 C CNN
F 1 "GND" H 2500 5930 30  0001 C CNN
F 2 "" H 2500 6000 60  0000 C CNN
F 3 "" H 2500 6000 60  0000 C CNN
	1    2500 6000
	1    0    0    -1  
$EndComp
Text Label 5150 3550 0    60   ~ 0
LED_GREEN
Text Label 5150 3400 0    60   ~ 0
LED_RED
Text Label 5150 3250 0    60   ~ 0
LED_BLUE
Text Label 5100 4600 0    60   ~ 0
REF_GREEN
Text Label 5100 4900 0    60   ~ 0
REF_BLUE
Text Label 5100 4750 0    60   ~ 0
REF_RED
$Comp
L C C1
U 1 1 537A69DC
P 5850 2000
F 0 "C1" H 5850 2100 40  0000 L CNN
F 1 "100n" H 5856 1915 40  0000 L CNN
F 2 "" H 5888 1850 30  0000 C CNN
F 3 "" H 5850 2000 60  0000 C CNN
	1    5850 2000
	1    0    0    -1  
$EndComp
$Comp
L C C2
U 1 1 537A6A0C
P 6100 2000
F 0 "C2" H 6100 2100 40  0000 L CNN
F 1 "100n" H 6106 1915 40  0000 L CNN
F 2 "" H 6138 1850 30  0000 C CNN
F 3 "" H 6100 2000 60  0000 C CNN
	1    6100 2000
	1    0    0    -1  
$EndComp
$Comp
L C C3
U 1 1 537A6A35
P 6350 2000
F 0 "C3" H 6350 2100 40  0000 L CNN
F 1 "100n" H 6356 1915 40  0000 L CNN
F 2 "" H 6388 1850 30  0000 C CNN
F 3 "" H 6350 2000 60  0000 C CNN
	1    6350 2000
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR011
U 1 1 537A6CCB
P 6100 2350
F 0 "#PWR011" H 6100 2350 30  0001 C CNN
F 1 "GND" H 6100 2280 30  0001 C CNN
F 2 "" H 6100 2350 60  0000 C CNN
F 3 "" H 6100 2350 60  0000 C CNN
	1    6100 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	3150 1650 3450 1650
Wire Wire Line
	1950 1650 2300 1650
Wire Wire Line
	2200 2150 2750 2150
Wire Wire Line
	2200 1650 2200 2150
Wire Wire Line
	2300 1750 2100 1750
Wire Wire Line
	1950 1450 2300 1450
Wire Wire Line
	1950 1350 2050 1350
Wire Wire Line
	2050 1350 2050 1200
Wire Wire Line
	2050 1200 3250 1200
Wire Wire Line
	3250 1200 3250 1450
Wire Wire Line
	3250 1450 3150 1450
Wire Wire Line
	1950 1550 1950 1650
Connection ~ 2200 1650
Wire Wire Line
	2100 1750 2100 2300
Wire Wire Line
	2100 2300 3450 2300
Wire Wire Line
	3150 3550 3450 3550
Wire Wire Line
	1950 3550 2300 3550
Wire Wire Line
	2200 4050 2750 4050
Wire Wire Line
	2200 3550 2200 4050
Wire Wire Line
	2300 3650 2100 3650
Wire Wire Line
	1950 3350 2300 3350
Wire Wire Line
	1950 3250 2050 3250
Wire Wire Line
	2050 3250 2050 3100
Wire Wire Line
	2050 3100 3250 3100
Wire Wire Line
	3250 3100 3250 3350
Wire Wire Line
	3250 3350 3150 3350
Wire Wire Line
	1950 3450 1950 3550
Connection ~ 2200 3550
Wire Wire Line
	2100 3650 2100 4200
Wire Wire Line
	2100 4200 3450 4200
Wire Wire Line
	3150 5450 3450 5450
Wire Wire Line
	1950 5450 2300 5450
Wire Wire Line
	2200 5950 2750 5950
Wire Wire Line
	2200 5450 2200 5950
Wire Wire Line
	2300 5550 2100 5550
Wire Wire Line
	1950 5250 2300 5250
Wire Wire Line
	1950 5150 2050 5150
Wire Wire Line
	2050 5150 2050 5000
Wire Wire Line
	2050 5000 3250 5000
Wire Wire Line
	3250 5000 3250 5250
Wire Wire Line
	3250 5250 3150 5250
Wire Wire Line
	1950 5350 1950 5450
Connection ~ 2200 5450
Wire Wire Line
	2100 5550 2100 6100
Wire Wire Line
	2100 6100 3450 6100
Wire Wire Line
	5700 4200 5700 5350
Wire Wire Line
	5900 4200 5900 5350
Wire Wire Line
	6100 4200 6100 5350
Wire Wire Line
	6100 5850 6100 5900
Wire Wire Line
	5900 5900 5900 5850
Wire Wire Line
	5700 5850 5700 5900
Wire Wire Line
	2500 2200 2500 2150
Connection ~ 2500 2150
Wire Wire Line
	2500 4100 2500 4050
Connection ~ 2500 4050
Wire Wire Line
	2500 6000 2500 5950
Connection ~ 2500 5950
Wire Wire Line
	5150 3250 6100 3250
Wire Wire Line
	6100 3250 6100 3650
Wire Wire Line
	5150 3400 5900 3400
Wire Wire Line
	5900 3400 5900 3650
Wire Wire Line
	5150 3550 5700 3550
Wire Wire Line
	5700 3550 5700 3650
Wire Wire Line
	5100 4600 5700 4600
Connection ~ 5700 4600
Wire Wire Line
	5100 4750 5900 4750
Connection ~ 5900 4750
Wire Wire Line
	5100 4900 6100 4900
Connection ~ 6100 4900
Wire Wire Line
	2650 1150 2650 1200
Connection ~ 2650 1200
Wire Wire Line
	2650 3050 2650 3100
Connection ~ 2650 3100
Wire Wire Line
	2650 4950 2650 5000
Connection ~ 2650 5000
Wire Wire Line
	5850 1800 5850 1700
Wire Wire Line
	5850 1700 6350 1700
Wire Wire Line
	6350 1700 6350 1800
Wire Wire Line
	6100 1650 6100 1800
Connection ~ 6100 1700
Wire Wire Line
	6100 2200 6100 2350
Wire Wire Line
	5850 2300 6350 2300
Wire Wire Line
	5850 2300 5850 2200
Connection ~ 6100 2300
Wire Wire Line
	6350 2300 6350 2200
$Comp
L VCC #PWR?
U 1 1 53CC287B
P 2650 1150
F 0 "#PWR?" H 2650 1250 30  0001 C CNN
F 1 "VCC" H 2650 1250 30  0000 C CNN
F 2 "" H 2650 1150 60  0000 C CNN
F 3 "" H 2650 1150 60  0000 C CNN
	1    2650 1150
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR?
U 1 1 53CC28EB
P 2650 3050
F 0 "#PWR?" H 2650 3150 30  0001 C CNN
F 1 "VCC" H 2650 3150 30  0000 C CNN
F 2 "" H 2650 3050 60  0000 C CNN
F 3 "" H 2650 3050 60  0000 C CNN
	1    2650 3050
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR?
U 1 1 53CC2968
P 2650 4950
F 0 "#PWR?" H 2650 5050 30  0001 C CNN
F 1 "VCC" H 2650 5050 30  0000 C CNN
F 2 "" H 2650 4950 60  0000 C CNN
F 3 "" H 2650 4950 60  0000 C CNN
	1    2650 4950
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR?
U 1 1 53CC2A33
P 6100 1650
F 0 "#PWR?" H 6100 1750 30  0001 C CNN
F 1 "VCC" H 6100 1750 30  0000 C CNN
F 2 "" H 6100 1650 60  0000 C CNN
F 3 "" H 6100 1650 60  0000 C CNN
	1    6100 1650
	1    0    0    -1  
$EndComp
$EndSCHEMATC
