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
U 1 1 536E9A4D
P 4825 2575
F 0 "U1" H 5375 3475 60  0000 C CNN
F 1 "TL4242" V 5400 3200 60  0000 C CNN
F 2 "" H 5425 3075 60  0000 C CNN
F 3 "" H 5425 3075 60  0000 C CNN
	1    4825 2575
	1    0    0    -1  
$EndComp
$Comp
L TL4242 U2
U 1 1 536E9A69
P 4825 3650
F 0 "U2" H 5375 4550 60  0000 C CNN
F 1 "TL4242" V 5400 4275 60  0000 C CNN
F 2 "" H 5425 4150 60  0000 C CNN
F 3 "" H 5425 4150 60  0000 C CNN
	1    4825 3650
	1    0    0    -1  
$EndComp
$Comp
L TL4242 U3
U 1 1 536E9AB0
P 4825 4775
F 0 "U3" H 5375 5675 60  0000 C CNN
F 1 "TL4242" V 5400 5400 60  0000 C CNN
F 2 "" H 5425 5275 60  0000 C CNN
F 3 "" H 5425 5275 60  0000 C CNN
	1    4825 4775
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR01
U 1 1 536E9B70
P 4725 2600
F 0 "#PWR01" H 4725 2600 30  0001 C CNN
F 1 "GND" H 4725 2530 30  0001 C CNN
F 2 "" H 4725 2600 60  0000 C CNN
F 3 "" H 4725 2600 60  0000 C CNN
	1    4725 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	5325 2525 4725 2525
Wire Wire Line
	4725 2025 4725 2600
Wire Wire Line
	4725 2025 4875 2025
Connection ~ 4725 2525
$Comp
L GND #PWR02
U 1 1 536E9BA0
P 4625 3675
F 0 "#PWR02" H 4625 3675 30  0001 C CNN
F 1 "GND" H 4625 3605 30  0001 C CNN
F 2 "" H 4625 3675 60  0000 C CNN
F 3 "" H 4625 3675 60  0000 C CNN
	1    4625 3675
	1    0    0    -1  
$EndComp
Wire Wire Line
	5325 3600 4625 3600
Wire Wire Line
	4625 3100 4625 3675
Wire Wire Line
	4625 3100 4875 3100
Connection ~ 4625 3600
$Comp
L GND #PWR03
U 1 1 536E9BE2
P 4725 4775
F 0 "#PWR03" H 4725 4775 30  0001 C CNN
F 1 "GND" H 4725 4705 30  0001 C CNN
F 2 "" H 4725 4775 60  0000 C CNN
F 3 "" H 4725 4775 60  0000 C CNN
	1    4725 4775
	1    0    0    -1  
$EndComp
Wire Wire Line
	4725 4225 4725 4775
Wire Wire Line
	4725 4725 5325 4725
Wire Wire Line
	4725 4225 4875 4225
Connection ~ 4725 4725
Wire Wire Line
	3350 4025 4875 4025
Wire Wire Line
	4875 2900 3725 2900
Wire Wire Line
	3100 1825 4875 1825
$Comp
L +12V #PWR04
U 1 1 536E9C72
P 5925 1675
F 0 "#PWR04" H 5925 1625 20  0001 C CNN
F 1 "+12V" H 5925 1775 30  0000 C CNN
F 2 "" H 5925 1675 60  0000 C CNN
F 3 "" H 5925 1675 60  0000 C CNN
	1    5925 1675
	1    0    0    -1  
$EndComp
Wire Wire Line
	5925 1675 5925 1825
Wire Wire Line
	5925 1825 5725 1825
$Comp
L +12V #PWR05
U 1 1 536E9CB2
P 5950 2825
F 0 "#PWR05" H 5950 2775 20  0001 C CNN
F 1 "+12V" H 5950 2925 30  0000 C CNN
F 2 "" H 5950 2825 60  0000 C CNN
F 3 "" H 5950 2825 60  0000 C CNN
	1    5950 2825
	1    0    0    -1  
$EndComp
Wire Wire Line
	5950 2825 5950 2900
Wire Wire Line
	5950 2900 5725 2900
$Comp
L +12V #PWR06
U 1 1 536E9CE2
P 5925 3950
F 0 "#PWR06" H 5925 3900 20  0001 C CNN
F 1 "+12V" H 5925 4050 30  0000 C CNN
F 2 "" H 5925 3950 60  0000 C CNN
F 3 "" H 5925 3950 60  0000 C CNN
	1    5925 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	5925 3950 5925 4025
Wire Wire Line
	5925 4025 5725 4025
$Comp
L LED D1
U 1 1 536E9D14
P 6825 4800
F 0 "D1" H 6825 4900 50  0000 C CNN
F 1 "RED" H 6825 4700 50  0000 C CNN
F 2 "" H 6825 4800 60  0000 C CNN
F 3 "" H 6825 4800 60  0000 C CNN
	1    6825 4800
	0    1    1    0   
$EndComp
$Comp
L LED D2
U 1 1 536E9D57
P 7175 4800
F 0 "D2" H 7175 4900 50  0000 C CNN
F 1 "GREEN" H 7150 4700 50  0000 C CNN
F 2 "" H 7175 4800 60  0000 C CNN
F 3 "" H 7175 4800 60  0000 C CNN
	1    7175 4800
	0    1    1    0   
$EndComp
$Comp
L LED D3
U 1 1 536E9D8B
P 7500 4800
F 0 "D3" H 7500 4900 50  0000 C CNN
F 1 "BLUE" H 7500 4700 50  0000 C CNN
F 2 "" H 7500 4800 60  0000 C CNN
F 3 "" H 7500 4800 60  0000 C CNN
	1    7500 4800
	0    1    1    0   
$EndComp
$Comp
L R R1
U 1 1 536E9DC6
P 6825 5575
F 0 "R1" V 6905 5575 40  0000 C CNN
F 1 "0.47R 0.25W" V 6750 5575 40  0000 C CNN
F 2 "" V 6755 5575 30  0000 C CNN
F 3 "" H 6825 5575 30  0000 C CNN
	1    6825 5575
	1    0    0    -1  
$EndComp
$Comp
L R R2
U 1 1 536E9E69
P 7175 5575
F 0 "R2" V 7255 5575 40  0000 C CNN
F 1 "0.47R 0.25W" V 7100 5575 40  0000 C CNN
F 2 "" V 7105 5575 30  0000 C CNN
F 3 "" H 7175 5575 30  0000 C CNN
	1    7175 5575
	1    0    0    -1  
$EndComp
$Comp
L R R3
U 1 1 536E9E9C
P 7500 5575
F 0 "R3" V 7580 5575 40  0000 C CNN
F 1 "0.47R 0.25W" V 7425 5575 40  0000 C CNN
F 2 "" V 7430 5575 30  0000 C CNN
F 3 "" H 7500 5575 30  0000 C CNN
	1    7500 5575
	1    0    0    -1  
$EndComp
Wire Wire Line
	6825 5000 6825 5325
Wire Wire Line
	7175 5325 7175 5000
Wire Wire Line
	7500 5000 7500 5325
Wire Wire Line
	5725 2025 7500 2025
Wire Wire Line
	7500 2025 7500 4600
Wire Wire Line
	7175 4600 7175 3100
Wire Wire Line
	7175 3100 5725 3100
Wire Wire Line
	5725 4225 6825 4225
Wire Wire Line
	6825 4225 6825 4600
Wire Wire Line
	6825 5100 4550 5100
Wire Wire Line
	4550 5100 4550 4325
Wire Wire Line
	4550 4325 4875 4325
Connection ~ 6825 5100
Wire Wire Line
	7175 5175 4450 5175
Wire Wire Line
	4450 5175 4450 3200
Wire Wire Line
	4450 3200 4875 3200
Connection ~ 7175 5175
Wire Wire Line
	7500 5250 4350 5250
Wire Wire Line
	4350 5250 4350 2125
Wire Wire Line
	4350 2125 4875 2125
Connection ~ 7500 5250
$Comp
L GND #PWR07
U 1 1 536EA382
P 6825 5925
F 0 "#PWR07" H 6825 5925 30  0001 C CNN
F 1 "GND" H 6825 5855 30  0001 C CNN
F 2 "" H 6825 5925 60  0000 C CNN
F 3 "" H 6825 5925 60  0000 C CNN
	1    6825 5925
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR08
U 1 1 536EA39F
P 7175 5925
F 0 "#PWR08" H 7175 5925 30  0001 C CNN
F 1 "GND" H 7175 5855 30  0001 C CNN
F 2 "" H 7175 5925 60  0000 C CNN
F 3 "" H 7175 5925 60  0000 C CNN
	1    7175 5925
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR09
U 1 1 536EA3BC
P 7500 5925
F 0 "#PWR09" H 7500 5925 30  0001 C CNN
F 1 "GND" H 7500 5855 30  0001 C CNN
F 2 "" H 7500 5925 60  0000 C CNN
F 3 "" H 7500 5925 60  0000 C CNN
	1    7500 5925
	1    0    0    -1  
$EndComp
Wire Wire Line
	6825 5825 6825 5925
Wire Wire Line
	7175 5925 7175 5825
Wire Wire Line
	7500 5825 7500 5925
Wire Wire Line
	2450 3100 2700 3100
Wire Wire Line
	2525 3100 2525 3300
Wire Wire Line
	2525 3200 2450 3200
Wire Wire Line
	2525 3300 2450 3300
Connection ~ 2525 3200
$Comp
L GND #PWR010
U 1 1 536EA780
P 2700 3150
F 0 "#PWR010" H 2700 3150 30  0001 C CNN
F 1 "GND" H 2700 3080 30  0001 C CNN
F 2 "" H 2700 3150 60  0000 C CNN
F 3 "" H 2700 3150 60  0000 C CNN
	1    2700 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	2700 3100 2700 3150
Connection ~ 2525 3100
$Comp
L +12V #PWR011
U 1 1 536EA7F1
P 2750 3950
F 0 "#PWR011" H 2750 3900 20  0001 C CNN
F 1 "+12V" H 2750 4050 30  0000 C CNN
F 2 "" H 2750 3950 60  0000 C CNN
F 3 "" H 2750 3950 60  0000 C CNN
	1    2750 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	2450 3950 2750 3950
Wire Wire Line
	2525 3750 2525 3950
Wire Wire Line
	2525 3850 2450 3850
Connection ~ 2525 3950
Wire Wire Line
	2525 3750 2450 3750
Connection ~ 2525 3850
Wire Wire Line
	2450 3425 3100 3425
Wire Wire Line
	3100 3425 3100 1825
Wire Wire Line
	3725 2900 3725 3525
Wire Wire Line
	3725 3525 2450 3525
Wire Wire Line
	2450 3625 3350 3625
Wire Wire Line
	3350 3625 3350 4025
$Comp
L CONN_3 K1
U 1 1 536EA049
P 2100 3200
F 0 "K1" V 2050 3200 50  0000 C CNN
F 1 "CONN_GND" V 2250 3250 40  0000 C CNN
F 2 "" H 2100 3200 60  0000 C CNN
F 3 "" H 2100 3200 60  0000 C CNN
	1    2100 3200
	-1   0    0    -1  
$EndComp
$Comp
L CONN_3 K2
U 1 1 536EA083
P 2100 3525
F 0 "K2" V 2050 3525 50  0000 C CNN
F 1 "CONN_LEDS" V 2250 3525 40  0000 C CNN
F 2 "" H 2100 3525 60  0000 C CNN
F 3 "" H 2100 3525 60  0000 C CNN
	1    2100 3525
	-1   0    0    -1  
$EndComp
$Comp
L CONN_3 K3
U 1 1 536EA0BA
P 2100 3850
F 0 "K3" V 2050 3850 50  0000 C CNN
F 1 "CONN_12V" V 2250 3800 40  0000 C CNN
F 2 "" H 2100 3850 60  0000 C CNN
F 3 "" H 2100 3850 60  0000 C CNN
	1    2100 3850
	-1   0    0    -1  
$EndComp
$EndSCHEMATC
