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
LIBS:ua7805ckct
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
F 2 "SMD_Packages:SO8E" H 3600 6800 60  0001 C CNN
F 3 "" H 3600 6800 60  0000 C CNN
	1    4150 7450
	-1   0    0    -1  
$EndComp
$Comp
L CRYSTAL X1
U 1 1 53387407
P 1800 4250
F 0 "X1" H 1800 4400 60  0000 C CNN
F 1 "16MHz" H 1800 4100 60  0000 C CNN
F 2 "Crystals:Crystal_HC49-SD_SMD" H 1800 4250 60  0001 C CNN
F 3 "" H 1800 4250 60  0000 C CNN
	1    1800 4250
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
L C C2
U 1 1 5338788F
P 1450 4550
F 0 "C2" H 1450 4650 40  0000 L CNN
F 1 "16pF" H 1456 4465 40  0000 L CNN
F 2 "Capacitors_SMD:c_0805" H 1488 4400 30  0001 C CNN
F 3 "" H 1450 4550 60  0000 C CNN
	1    1450 4550
	0    1    1    0   
$EndComp
$Comp
L C C1
U 1 1 533878B4
P 1450 3950
F 0 "C1" H 1450 4050 40  0000 L CNN
F 1 "16pF" H 1456 3865 40  0000 L CNN
F 2 "Capacitors_SMD:c_0805" H 1488 3800 30  0001 C CNN
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
F 2 "Connect:BARREL_JACK" H 1100 1250 60  0001 C CNN
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
L CP1 C5
U 1 1 53387A3C
P 3600 1350
F 0 "C5" H 3650 1450 50  0000 L CNN
F 1 "0.1uF" H 3650 1250 50  0000 L CNN
F 2 "Capacitors_SMD:c_0805" H 3600 1350 60  0001 C CNN
F 3 "" H 3600 1350 60  0000 C CNN
	1    3600 1350
	1    0    0    -1  
$EndComp
$Comp
L ATTINY2313A-S IC1
U 1 1 5338669E
P 3450 4450
F 0 "IC1" H 2300 5450 40  0000 C CNN
F 1 "ATTINY2313A-S" H 4400 3550 40  0000 C CNN
F 2 "SMD_Packages:SO20L" H 3450 4450 35  0000 C CIN
F 3 "" H 3450 4450 60  0000 C CNN
	1    3450 4450
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR03
U 1 1 53388FDD
P 4750 7250
F 0 "#PWR03" H 4750 7250 30  0001 C CNN
F 1 "GND" H 4750 7180 30  0001 C CNN
F 2 "" H 4750 7250 60  0000 C CNN
F 3 "" H 4750 7250 60  0000 C CNN
	1    4750 7250
	1    0    0    -1  
$EndComp
$Comp
L CONN_2 P4
U 1 1 5338950E
P 2350 7100
F 0 "P4" V 2300 7100 40  0000 C CNN
F 1 "BUS" V 2500 7100 40  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x03" H 2350 7100 60  0001 C CNN
F 3 "" H 2350 7100 60  0000 C CNN
	1    2350 7100
	-1   0    0    1   
$EndComp
$Comp
L C C4
U 1 1 5338A896
P 2900 6850
F 0 "C4" V 2950 6950 40  0000 L CNN
F 1 "0.1uF" V 2950 6625 40  0000 L CNN
F 2 "Capacitors_SMD:c_0805" H 2938 6700 30  0001 C CNN
F 3 "" H 2900 6850 60  0000 C CNN
	1    2900 6850
	0    -1   -1   0   
$EndComp
$Comp
L C C6
U 1 1 5338AB56
P 3700 3200
F 0 "C6" V 3650 3250 40  0000 L CNN
F 1 "0.1uF" V 3750 2975 40  0000 L CNN
F 2 "Capacitors_SMD:c_0805" H 3738 3050 30  0001 C CNN
F 3 "" H 3700 3200 60  0000 C CNN
	1    3700 3200
	0    1    1    0   
$EndComp
$Comp
L GND #PWR04
U 1 1 5338AC70
P 3900 3350
F 0 "#PWR04" H 3900 3350 30  0001 C CNN
F 1 "GND" H 3900 3280 30  0001 C CNN
F 2 "" H 3900 3350 60  0000 C CNN
F 3 "" H 3900 3350 60  0000 C CNN
	1    3900 3350
	1    0    0    -1  
$EndComp
$Comp
L CONN_2 P1
U 1 1 5338B71A
P 1050 1750
F 0 "P1" V 1000 1750 40  0000 C CNN
F 1 "POWER_THRU" V 1200 1750 40  0000 C CNN
F 2 "molex-22-23-2021:SIL-2" H 1050 1750 60  0001 C CNN
F 3 "" H 1050 1750 60  0000 C CNN
	1    1050 1750
	-1   0    0    1   
$EndComp
$Comp
L CONN_2 P2
U 1 1 5338B738
P 1050 2150
F 0 "P2" V 1000 2150 40  0000 C CNN
F 1 "POWER" V 1200 2150 40  0000 C CNN
F 2 "molex-22-23-2021:SIL-2" H 1050 2150 60  0001 C CNN
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
F 2 "solder_pad:SIL-2" H 1050 2550 60  0001 C CNN
F 3 "" H 1050 2550 60  0000 C CNN
	1    1050 2550
	-1   0    0    1   
$EndComp
$Comp
L CONN_3X2 P6
U 1 1 5338C872
P 5050 2950
F 0 "P6" H 5050 3200 50  0000 C CNN
F 1 "ICSP" V 5050 3000 40  0000 C CNN
F 2 "molex-22-23-2021:SIL-2" H 5050 2950 60  0001 C CNN
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
L CONN_8X2 P7
U 1 1 5338D875
P 9825 5750
F 0 "P7" H 9825 6200 60  0000 C CNN
F 1 "OUTPUTS" V 9825 5750 50  0000 C CNN
F 2 "molex-22-23-2021:SIL-2" H 9825 5750 60  0001 C CNN
F 3 "" H 9825 5750 60  0000 C CNN
	1    9825 5750
	-1   0    0    -1  
$EndComp
$Comp
L CP1 C3
U 1 1 5338EB5B
P 2450 1350
F 0 "C3" H 2500 1450 50  0000 L CNN
F 1 "0.33uF" H 2500 1250 50  0000 L CNN
F 2 "Capacitors_SMD:c_0805" H 2450 1350 60  0001 C CNN
F 3 "" H 2450 1350 60  0000 C CNN
	1    2450 1350
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR05
U 1 1 5338F7A1
P 3450 5500
F 0 "#PWR05" H 3450 5500 30  0001 C CNN
F 1 "GND" H 3450 5430 30  0001 C CNN
F 2 "" H 3450 5500 60  0000 C CNN
F 3 "" H 3450 5500 60  0000 C CNN
	1    3450 5500
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR06
U 1 1 5338FB33
P 5700 3050
F 0 "#PWR06" H 5700 3050 30  0001 C CNN
F 1 "GND" H 5700 2980 30  0001 C CNN
F 2 "" H 5700 3050 60  0000 C CNN
F 3 "" H 5700 3050 60  0000 C CNN
	1    5700 3050
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR07
U 1 1 5338FCA4
P 3200 7350
F 0 "#PWR07" H 3200 7350 30  0001 C CNN
F 1 "GND" H 3200 7280 30  0001 C CNN
F 2 "" H 3200 7350 60  0000 C CNN
F 3 "" H 3200 7350 60  0000 C CNN
	1    3200 7350
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR08
U 1 1 5339D1EB
P 2700 6900
F 0 "#PWR08" H 2700 6900 30  0001 C CNN
F 1 "GND" H 2700 6830 30  0001 C CNN
F 2 "" H 2700 6900 60  0000 C CNN
F 3 "" H 2700 6900 60  0000 C CNN
	1    2700 6900
	1    0    0    -1  
$EndComp
$Comp
L CONN_2 P5
U 1 1 5339D3B6
P 2350 7450
F 0 "P5" V 2300 7450 40  0000 C CNN
F 1 "BUS_THRU" V 2500 7450 40  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x08" H 2350 7450 60  0001 C CNN
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
	4800 3650 6150 3650
Wire Wire Line
	4800 3850 6350 3850
Wire Wire Line
	4800 3950 6450 3950
Wire Wire Line
	4800 4050 6550 4050
Wire Wire Line
	4800 4150 6550 4150
Wire Wire Line
	4800 4250 6450 4250
Wire Wire Line
	4800 4350 6350 4350
Wire Wire Line
	6450 3950 6450 3000
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
	2700 7000 3200 7000
Connection ~ 3450 3200
Wire Wire Line
	3900 3200 3900 3350
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
	10375 5150 10375 6100
Wire Wire Line
	10375 5400 10225 5400
Wire Wire Line
	10375 5500 10225 5500
Connection ~ 10375 5400
Wire Wire Line
	10375 5600 10225 5600
Connection ~ 10375 5500
Wire Wire Line
	10375 5700 10225 5700
Connection ~ 10375 5600
Wire Wire Line
	10375 5800 10225 5800
Connection ~ 10375 5700
Wire Wire Line
	10375 5900 10225 5900
Connection ~ 10375 5800
Wire Wire Line
	10225 6000 10375 6000
Connection ~ 10375 5900
Wire Wire Line
	10375 6100 10225 6100
Connection ~ 10375 6000
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
	2200 1025 2200 1150
Wire Wire Line
	3450 3150 3450 3350
Wire Wire Line
	5600 2800 5600 2750
Connection ~ 5600 2800
Wire Wire Line
	3200 6850 3200 6800
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
	6150 3650 6150 1200
Wire Wire Line
	6250 3750 6250 1800
Wire Wire Line
	6350 3850 6350 2400
Wire Wire Line
	3500 3200 3450 3200
$Comp
L CONN_3 K1
U 1 1 5378F86B
P 5600 1075
F 0 "K1" V 5550 1075 50  0000 C CNN
F 1 "LED1" V 5650 1075 40  0000 C CNN
F 2 "Connect:SIL-3" H 5600 1075 60  0001 C CNN
F 3 "" H 5600 1075 60  0000 C CNN
	1    5600 1075
	1    0    0    1   
$EndComp
$Comp
L CONN_3 K2
U 1 1 5378FA1D
P 5700 1475
F 0 "K2" V 5650 1475 50  0000 C CNN
F 1 "LED2" V 5750 1475 40  0000 C CNN
F 2 "Connect:SIL-3" H 5700 1475 60  0001 C CNN
F 3 "" H 5700 1475 60  0000 C CNN
	1    5700 1475
	1    0    0    1   
$EndComp
$Comp
L CONN_3 K3
U 1 1 5378FA70
P 5800 1850
F 0 "K3" V 5750 1850 50  0000 C CNN
F 1 "LED3" V 5850 1850 40  0000 C CNN
F 2 "Connect:SIL-3" H 5800 1850 60  0001 C CNN
F 3 "" H 5800 1850 60  0000 C CNN
	1    5800 1850
	1    0    0    1   
$EndComp
$Comp
L GND #PWR09
U 1 1 53790927
P 5200 1225
F 0 "#PWR09" H 5200 1225 30  0001 C CNN
F 1 "GND" H 5200 1155 30  0001 C CNN
F 2 "" H 5200 1225 60  0000 C CNN
F 3 "" H 5200 1225 60  0000 C CNN
	1    5200 1225
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR010
U 1 1 53790A46
P 5300 1625
F 0 "#PWR010" H 5300 1625 30  0001 C CNN
F 1 "GND" H 5300 1555 30  0001 C CNN
F 2 "" H 5300 1625 60  0000 C CNN
F 3 "" H 5300 1625 60  0000 C CNN
	1    5300 1625
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR011
U 1 1 53790B67
P 5400 2000
F 0 "#PWR011" H 5400 2000 30  0001 C CNN
F 1 "GND" H 5400 1930 30  0001 C CNN
F 2 "" H 5400 2000 60  0000 C CNN
F 3 "" H 5400 2000 60  0000 C CNN
	1    5400 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	5300 1625 5300 1575
Wire Wire Line
	5300 1575 5350 1575
Wire Wire Line
	4750 1375 5350 1375
Wire Wire Line
	5200 1225 5200 1175
Wire Wire Line
	5200 1175 5250 1175
Wire Wire Line
	4875 975  5250 975 
Wire Wire Line
	4925 1750 5450 1750
Wire Wire Line
	5400 2000 5400 1950
Wire Wire Line
	5400 1950 5450 1950
$Comp
L MOS_N Q1
U 1 1 53C6FFCD
P 7700 1200
F 0 "Q1" H 7950 1150 60  0000 R CNN
F 1 "TSM3460CX6" H 8400 1250 60  0000 R CNN
F 2 "to126:TO126" H 7700 1200 60  0001 C CNN
F 3 "" H 7700 1200 60  0000 C CNN
	1    7700 1200
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR012
U 1 1 53C70517
P 7800 1450
F 0 "#PWR012" H 7800 1450 30  0001 C CNN
F 1 "GND" H 7800 1380 30  0001 C CNN
F 2 "" H 7800 1450 60  0000 C CNN
F 3 "" H 7800 1450 60  0000 C CNN
	1    7800 1450
	1    0    0    -1  
$EndComp
$Comp
L R R1
U 1 1 53C70B69
P 6950 1200
F 0 "R1" V 7030 1200 40  0000 C CNN
F 1 "240" V 6957 1201 40  0000 C CNN
F 2 "SMD_Packages:SM0805" V 6880 1200 30  0001 C CNN
F 3 "" H 6950 1200 30  0000 C CNN
	1    6950 1200
	0    1    1    0   
$EndComp
Wire Wire Line
	7750 1400 7800 1400
Wire Wire Line
	7800 1400 7800 1450
Connection ~ 7800 1400
Wire Wire Line
	5125 1075 5250 1075
Wire Wire Line
	5175 1475 5350 1475
Wire Wire Line
	5225 1850 5450 1850
Wire Wire Line
	5225 1850 5225 2175
Wire Wire Line
	5225 2175 6100 2175
Wire Wire Line
	6100 2175 6100 3650
Wire Wire Line
	6050 2225 5175 2225
Wire Wire Line
	5175 2225 5175 1475
Wire Wire Line
	5125 1075 5125 2275
Wire Wire Line
	5125 2275 6000 2275
Wire Wire Line
	6000 2275 6000 3850
$Comp
L R R9
U 1 1 53C70202
P 7500 1400
F 0 "R9" V 7580 1400 40  0000 C CNN
F 1 "10k" V 7507 1401 40  0000 C CNN
F 2 "SMD_Packages:SM0805" V 7430 1400 30  0001 C CNN
F 3 "" H 7500 1400 30  0000 C CNN
	1    7500 1400
	0    1    1    0   
$EndComp
Wire Wire Line
	7250 1400 7250 1200
Connection ~ 7250 1200
Wire Wire Line
	7200 1200 7500 1200
$Comp
L MOS_N Q2
U 1 1 53CC882A
P 7700 1800
F 0 "Q2" H 7950 1750 60  0000 R CNN
F 1 "TSM3460CX6" H 8400 1850 60  0000 R CNN
F 2 "to126:TO126" H 7700 1800 60  0001 C CNN
F 3 "" H 7700 1800 60  0000 C CNN
	1    7700 1800
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR013
U 1 1 53CC8831
P 7800 2050
F 0 "#PWR013" H 7800 2050 30  0001 C CNN
F 1 "GND" H 7800 1980 30  0001 C CNN
F 2 "" H 7800 2050 60  0000 C CNN
F 3 "" H 7800 2050 60  0000 C CNN
	1    7800 2050
	1    0    0    -1  
$EndComp
$Comp
L R R2
U 1 1 53CC8837
P 6950 1800
F 0 "R2" V 7030 1800 40  0000 C CNN
F 1 "240" V 6957 1801 40  0000 C CNN
F 2 "SMD_Packages:SM0805" V 6880 1800 30  0001 C CNN
F 3 "" H 6950 1800 30  0000 C CNN
	1    6950 1800
	0    1    1    0   
$EndComp
Wire Wire Line
	7750 2000 7800 2000
Wire Wire Line
	7800 2000 7800 2050
Connection ~ 7800 2000
$Comp
L R R10
U 1 1 53CC8841
P 7500 2000
F 0 "R10" V 7580 2000 40  0000 C CNN
F 1 "10k" V 7507 2001 40  0000 C CNN
F 2 "SMD_Packages:SM0805" V 7430 2000 30  0001 C CNN
F 3 "" H 7500 2000 30  0000 C CNN
	1    7500 2000
	0    1    1    0   
$EndComp
Wire Wire Line
	7250 2000 7250 1800
Connection ~ 7250 1800
Wire Wire Line
	7200 1800 7500 1800
$Comp
L MOS_N Q3
U 1 1 53CC8B22
P 7700 2400
F 0 "Q3" H 7950 2350 60  0000 R CNN
F 1 "TSM3460CX6" H 8400 2450 60  0000 R CNN
F 2 "to126:TO126" H 7700 2400 60  0001 C CNN
F 3 "" H 7700 2400 60  0000 C CNN
	1    7700 2400
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR014
U 1 1 53CC8B29
P 7800 2650
F 0 "#PWR014" H 7800 2650 30  0001 C CNN
F 1 "GND" H 7800 2580 30  0001 C CNN
F 2 "" H 7800 2650 60  0000 C CNN
F 3 "" H 7800 2650 60  0000 C CNN
	1    7800 2650
	1    0    0    -1  
$EndComp
$Comp
L R R3
U 1 1 53CC8B2F
P 6950 2400
F 0 "R3" V 7030 2400 40  0000 C CNN
F 1 "240" V 6957 2401 40  0000 C CNN
F 2 "SMD_Packages:SM0805" V 6880 2400 30  0001 C CNN
F 3 "" H 6950 2400 30  0000 C CNN
	1    6950 2400
	0    1    1    0   
$EndComp
Wire Wire Line
	7750 2600 7800 2600
Wire Wire Line
	7800 2600 7800 2650
Connection ~ 7800 2600
$Comp
L R R11
U 1 1 53CC8B39
P 7500 2600
F 0 "R11" V 7580 2600 40  0000 C CNN
F 1 "10k" V 7507 2601 40  0000 C CNN
F 2 "SMD_Packages:SM0805" V 7430 2600 30  0001 C CNN
F 3 "" H 7500 2600 30  0000 C CNN
	1    7500 2600
	0    1    1    0   
$EndComp
Wire Wire Line
	7250 2600 7250 2400
Connection ~ 7250 2400
Wire Wire Line
	7200 2400 7500 2400
$Comp
L MOS_N Q4
U 1 1 53CC8D37
P 7700 3000
F 0 "Q4" H 7950 2950 60  0000 R CNN
F 1 "TSM3460CX6" H 8400 3050 60  0000 R CNN
F 2 "to126:TO126" H 7700 3000 60  0001 C CNN
F 3 "" H 7700 3000 60  0000 C CNN
	1    7700 3000
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR015
U 1 1 53CC8D3E
P 7800 3250
F 0 "#PWR015" H 7800 3250 30  0001 C CNN
F 1 "GND" H 7800 3180 30  0001 C CNN
F 2 "" H 7800 3250 60  0000 C CNN
F 3 "" H 7800 3250 60  0000 C CNN
	1    7800 3250
	1    0    0    -1  
$EndComp
$Comp
L R R4
U 1 1 53CC8D44
P 6950 3000
F 0 "R4" V 7030 3000 40  0000 C CNN
F 1 "240" V 6957 3001 40  0000 C CNN
F 2 "SMD_Packages:SM0805" V 6880 3000 30  0001 C CNN
F 3 "" H 6950 3000 30  0000 C CNN
	1    6950 3000
	0    1    1    0   
$EndComp
Wire Wire Line
	7750 3200 7800 3200
Wire Wire Line
	7800 3200 7800 3250
Connection ~ 7800 3200
$Comp
L R R12
U 1 1 53CC8D4E
P 7500 3200
F 0 "R12" V 7580 3200 40  0000 C CNN
F 1 "10k" V 7507 3201 40  0000 C CNN
F 2 "SMD_Packages:SM0805" V 7430 3200 30  0001 C CNN
F 3 "" H 7500 3200 30  0000 C CNN
	1    7500 3200
	0    1    1    0   
$EndComp
Wire Wire Line
	7250 3200 7250 3000
Connection ~ 7250 3000
Wire Wire Line
	7200 3000 7500 3000
$Comp
L MOS_N Q5
U 1 1 53CC8F2E
P 7700 3600
F 0 "Q5" H 7950 3550 60  0000 R CNN
F 1 "TSM3460CX6" H 8400 3650 60  0000 R CNN
F 2 "to126:TO126" H 7700 3600 60  0001 C CNN
F 3 "" H 7700 3600 60  0000 C CNN
	1    7700 3600
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR016
U 1 1 53CC8F35
P 7800 3850
F 0 "#PWR016" H 7800 3850 30  0001 C CNN
F 1 "GND" H 7800 3780 30  0001 C CNN
F 2 "" H 7800 3850 60  0000 C CNN
F 3 "" H 7800 3850 60  0000 C CNN
	1    7800 3850
	1    0    0    -1  
$EndComp
$Comp
L R R5
U 1 1 53CC8F3B
P 6950 3600
F 0 "R5" V 7030 3600 40  0000 C CNN
F 1 "240" V 6957 3601 40  0000 C CNN
F 2 "SMD_Packages:SM0805" V 6880 3600 30  0001 C CNN
F 3 "" H 6950 3600 30  0000 C CNN
	1    6950 3600
	0    1    1    0   
$EndComp
Wire Wire Line
	7750 3800 7800 3800
Wire Wire Line
	7800 3800 7800 3850
Connection ~ 7800 3800
$Comp
L R R13
U 1 1 53CC8F45
P 7500 3800
F 0 "R13" V 7580 3800 40  0000 C CNN
F 1 "10k" V 7507 3801 40  0000 C CNN
F 2 "SMD_Packages:SM0805" V 7430 3800 30  0001 C CNN
F 3 "" H 7500 3800 30  0000 C CNN
	1    7500 3800
	0    1    1    0   
$EndComp
Wire Wire Line
	7250 3800 7250 3600
Connection ~ 7250 3600
Wire Wire Line
	7200 3600 7500 3600
$Comp
L MOS_N Q6
U 1 1 53CC9373
P 7700 4200
F 0 "Q6" H 7950 4150 60  0000 R CNN
F 1 "TSM3460CX6" H 8400 4250 60  0000 R CNN
F 2 "to126:TO126" H 7700 4200 60  0001 C CNN
F 3 "" H 7700 4200 60  0000 C CNN
	1    7700 4200
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR017
U 1 1 53CC937A
P 7800 4450
F 0 "#PWR017" H 7800 4450 30  0001 C CNN
F 1 "GND" H 7800 4380 30  0001 C CNN
F 2 "" H 7800 4450 60  0000 C CNN
F 3 "" H 7800 4450 60  0000 C CNN
	1    7800 4450
	1    0    0    -1  
$EndComp
$Comp
L R R6
U 1 1 53CC9380
P 6950 4200
F 0 "R6" V 7030 4200 40  0000 C CNN
F 1 "240" V 6957 4201 40  0000 C CNN
F 2 "SMD_Packages:SM0805" V 6880 4200 30  0001 C CNN
F 3 "" H 6950 4200 30  0000 C CNN
	1    6950 4200
	0    1    1    0   
$EndComp
Wire Wire Line
	7750 4400 7800 4400
Wire Wire Line
	7800 4400 7800 4450
Connection ~ 7800 4400
$Comp
L R R14
U 1 1 53CC938A
P 7500 4400
F 0 "R14" V 7580 4400 40  0000 C CNN
F 1 "10k" V 7507 4401 40  0000 C CNN
F 2 "SMD_Packages:SM0805" V 7430 4400 30  0001 C CNN
F 3 "" H 7500 4400 30  0000 C CNN
	1    7500 4400
	0    1    1    0   
$EndComp
Wire Wire Line
	7250 4400 7250 4200
Connection ~ 7250 4200
Wire Wire Line
	7200 4200 7500 4200
$Comp
L MOS_N Q7
U 1 1 53CC9883
P 7700 4800
F 0 "Q7" H 7950 4750 60  0000 R CNN
F 1 "TSM3460CX6" H 8400 4850 60  0000 R CNN
F 2 "to126:TO126" H 7700 4800 60  0001 C CNN
F 3 "" H 7700 4800 60  0000 C CNN
	1    7700 4800
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR018
U 1 1 53CC988A
P 7800 5050
F 0 "#PWR018" H 7800 5050 30  0001 C CNN
F 1 "GND" H 7800 4980 30  0001 C CNN
F 2 "" H 7800 5050 60  0000 C CNN
F 3 "" H 7800 5050 60  0000 C CNN
	1    7800 5050
	1    0    0    -1  
$EndComp
$Comp
L R R7
U 1 1 53CC9890
P 6950 4800
F 0 "R7" V 7030 4800 40  0000 C CNN
F 1 "240" V 6957 4801 40  0000 C CNN
F 2 "SMD_Packages:SM0805" V 6880 4800 30  0001 C CNN
F 3 "" H 6950 4800 30  0000 C CNN
	1    6950 4800
	0    1    1    0   
$EndComp
Wire Wire Line
	7750 5000 7800 5000
Wire Wire Line
	7800 5000 7800 5050
Connection ~ 7800 5000
$Comp
L R R15
U 1 1 53CC989A
P 7500 5000
F 0 "R15" V 7580 5000 40  0000 C CNN
F 1 "10k" V 7507 5001 40  0000 C CNN
F 2 "SMD_Packages:SM0805" V 7430 5000 30  0001 C CNN
F 3 "" H 7500 5000 30  0000 C CNN
	1    7500 5000
	0    1    1    0   
$EndComp
Wire Wire Line
	7250 5000 7250 4800
Connection ~ 7250 4800
Wire Wire Line
	7200 4800 7500 4800
$Comp
L MOS_N Q8
U 1 1 53CC9B09
P 7700 5400
F 0 "Q8" H 7950 5350 60  0000 R CNN
F 1 "TSM3460CX6" H 8400 5450 60  0000 R CNN
F 2 "to126:TO126" H 7700 5400 60  0001 C CNN
F 3 "" H 7700 5400 60  0000 C CNN
	1    7700 5400
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR019
U 1 1 53CC9B10
P 7800 5650
F 0 "#PWR019" H 7800 5650 30  0001 C CNN
F 1 "GND" H 7800 5580 30  0001 C CNN
F 2 "" H 7800 5650 60  0000 C CNN
F 3 "" H 7800 5650 60  0000 C CNN
	1    7800 5650
	1    0    0    -1  
$EndComp
$Comp
L R R8
U 1 1 53CC9B16
P 6950 5400
F 0 "R8" V 7030 5400 40  0000 C CNN
F 1 "240" V 6957 5401 40  0000 C CNN
F 2 "SMD_Packages:SM0805" V 6880 5400 30  0001 C CNN
F 3 "" H 6950 5400 30  0000 C CNN
	1    6950 5400
	0    1    1    0   
$EndComp
Wire Wire Line
	7750 5600 7800 5600
Wire Wire Line
	7800 5600 7800 5650
Connection ~ 7800 5600
$Comp
L R R16
U 1 1 53CC9B20
P 7500 5600
F 0 "R16" V 7580 5600 40  0000 C CNN
F 1 "10k" V 7507 5601 40  0000 C CNN
F 2 "SMD_Packages:SM0805" V 7430 5600 30  0001 C CNN
F 3 "" H 7500 5600 30  0000 C CNN
	1    7500 5600
	0    1    1    0   
$EndComp
Wire Wire Line
	7250 5600 7250 5400
Connection ~ 7250 5400
Wire Wire Line
	7200 5400 7500 5400
Wire Wire Line
	6150 1200 6700 1200
Wire Wire Line
	6250 1800 6700 1800
Wire Wire Line
	6350 2400 6700 2400
Wire Wire Line
	6450 3000 6700 3000
Wire Wire Line
	6550 3600 6700 3600
Wire Wire Line
	6550 4050 6550 3600
Wire Wire Line
	6550 4150 6550 4200
Wire Wire Line
	6550 4200 6700 4200
Wire Wire Line
	6450 4800 6700 4800
Wire Wire Line
	6450 4250 6450 4800
Wire Wire Line
	6350 4350 6350 5400
Wire Wire Line
	6350 5400 6700 5400
Wire Wire Line
	7800 5200 8625 5200
Wire Wire Line
	8625 5200 8625 6100
Wire Wire Line
	8625 6100 9425 6100
Wire Wire Line
	9425 6000 8725 6000
Wire Wire Line
	8725 6000 8725 4600
Wire Wire Line
	8725 4600 7800 4600
Wire Wire Line
	7800 4000 8825 4000
Wire Wire Line
	8825 4000 8825 5900
Wire Wire Line
	8825 5900 9425 5900
Wire Wire Line
	9425 5800 8925 5800
Wire Wire Line
	8925 5800 8925 3400
Wire Wire Line
	8925 3400 7800 3400
Wire Wire Line
	7800 2800 9025 2800
Wire Wire Line
	9025 2800 9025 5700
Wire Wire Line
	9025 5700 9425 5700
Wire Wire Line
	9425 5600 9125 5600
Wire Wire Line
	9125 5600 9125 2200
Wire Wire Line
	9125 2200 7800 2200
Wire Wire Line
	7800 1600 9225 1600
Wire Wire Line
	9225 1600 9225 5500
Wire Wire Line
	9225 5500 9425 5500
Wire Wire Line
	9425 5400 9325 5400
Wire Wire Line
	9325 5400 9325 1000
Wire Wire Line
	9325 1000 7800 1000
NoConn ~ 4450 7300
NoConn ~ 4800 4650
NoConn ~ 4800 4750
NoConn ~ 4800 4850
NoConn ~ 4800 4950
NoConn ~ 4800 5050
NoConn ~ 4800 5150
$Comp
L PWR_FLAG #FLG020
U 1 1 53CCE243
P 1750 1150
F 0 "#FLG020" H 1750 1245 30  0001 C CNN
F 1 "PWR_FLAG" H 1750 1330 30  0000 C CNN
F 2 "" H 1750 1150 60  0000 C CNN
F 3 "" H 1750 1150 60  0000 C CNN
	1    1750 1150
	1    0    0    -1  
$EndComp
Connection ~ 1750 1150
$Comp
L +5V #PWR021
U 1 1 53CD0C96
P 3850 1100
F 0 "#PWR021" H 3850 1190 20  0001 C CNN
F 1 "+5V" H 3850 1190 30  0000 C CNN
F 2 "" H 3850 1100 60  0000 C CNN
F 3 "" H 3850 1100 60  0000 C CNN
	1    3850 1100
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR022
U 1 1 53CD0F28
P 3450 3150
F 0 "#PWR022" H 3450 3240 20  0001 C CNN
F 1 "+5V" H 3450 3240 30  0000 C CNN
F 2 "" H 3450 3150 60  0000 C CNN
F 3 "" H 3450 3150 60  0000 C CNN
	1    3450 3150
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR023
U 1 1 53CD1362
P 3200 6800
F 0 "#PWR023" H 3200 6890 20  0001 C CNN
F 1 "+5V" H 3200 6890 30  0000 C CNN
F 2 "" H 3200 6800 60  0000 C CNN
F 3 "" H 3200 6800 60  0000 C CNN
	1    3200 6800
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR024
U 1 1 53CD1481
P 5600 2750
F 0 "#PWR024" H 5600 2840 20  0001 C CNN
F 1 "+5V" H 5600 2840 30  0000 C CNN
F 2 "" H 5600 2750 60  0000 C CNN
F 3 "" H 5600 2750 60  0000 C CNN
	1    5600 2750
	1    0    0    -1  
$EndComp
$Comp
L UA7805CKCT U1
U 1 1 53CC262A
P 3050 1200
F 0 "U1" H 2850 1400 40  0000 C CNN
F 1 "UA7805CKCT" H 3050 1400 40  0000 L CNN
F 2 "TO-220" H 3050 1300 30  0000 C CIN
F 3 "" H 3050 1200 60  0000 C CNN
	1    3050 1200
	1    0    0    -1  
$EndComp
Connection ~ 6100 3650
Connection ~ 6000 3850
Text GLabel 2250 1025 2    60   Input ~ 0
VIN
Wire Wire Line
	2200 1025 2250 1025
Wire Wire Line
	4875 1375 4875 975 
Connection ~ 4875 1375
Wire Wire Line
	4925 1375 4925 1750
Connection ~ 4925 1375
Text GLabel 10275 5150 0    60   Input ~ 0
VIN
Wire Wire Line
	10275 5150 10375 5150
$Comp
L +5V #PWR025
U 1 1 53CD6C0A
P 4750 1325
F 0 "#PWR025" H 4750 1415 20  0001 C CNN
F 1 "+5V" H 4750 1415 30  0000 C CNN
F 2 "" H 4750 1325 60  0000 C CNN
F 3 "" H 4750 1325 60  0000 C CNN
	1    4750 1325
	1    0    0    -1  
$EndComp
Wire Wire Line
	4750 1325 4750 1375
Wire Wire Line
	4800 3750 6250 3750
Wire Wire Line
	6050 4250 6050 2225
Connection ~ 6050 4250
Text Label 3025 7000 0    60   ~ 0
B
Text Label 3025 7150 0    60   ~ 0
A
Text Label 8650 1000 0    60   ~ 0
CH0
Text Label 8675 1600 0    60   ~ 0
CH1
Text Label 8675 2200 0    60   ~ 0
CH2
Text Label 8675 2800 0    60   ~ 0
CH3
Text Label 8700 3400 0    60   ~ 0
CH4
Text Label 8725 4000 0    60   ~ 0
CH5
Text Label 8550 4600 0    60   ~ 0
CH6
Text Label 8500 5200 0    60   ~ 0
CH7
Text Label 5225 1850 0    60   ~ 0
LED0
Text Label 5175 1475 0    60   ~ 0
LED6
Text Label 5125 1075 0    60   ~ 0
LED2
Wire Wire Line
	1400 1250 1500 1250
Wire Wire Line
	1500 1250 1500 1350
Connection ~ 1500 1350
$Comp
L TST P8
U 1 1 53D64AE3
P 3675 1150
F 0 "P8" H 3675 1450 40  0000 C CNN
F 1 "+5V" H 3675 1400 30  0000 C CNN
F 2 "" H 3675 1150 60  0000 C CNN
F 3 "" H 3675 1150 60  0000 C CNN
	1    3675 1150
	1    0    0    -1  
$EndComp
Connection ~ 3675 1150
$Comp
L TST P9
U 1 1 53D6514B
P 4625 6850
F 0 "P9" H 4625 7150 40  0000 C CNN
F 1 "BUS_RX" H 4625 7100 30  0000 C CNN
F 2 "" H 4625 6850 60  0000 C CNN
F 3 "" H 4625 6850 60  0000 C CNN
	1    4625 6850
	1    0    0    -1  
$EndComp
Connection ~ 4625 6850
$EndSCHEMATC
