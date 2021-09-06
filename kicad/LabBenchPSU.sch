EESchema Schematic File Version 4
EELAYER 30 0
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
Wire Wire Line
	5900 2700 5700 2700
$Comp
L Connector:Conn_01x01_Male J4
U 1 1 6109E288
P 6100 2700
F 0 "J4" H 6072 2632 50  0000 R CNN
F 1 "+12V" H 6072 2723 50  0000 R CNN
F 2 "Footprints:Banana_Jack_1Pin_4mm" H 6100 2700 50  0001 C CNN
F 3 "~" H 6100 2700 50  0001 C CNN
	1    6100 2700
	-1   0    0    1   
$EndComp
$Comp
L Connector:Conn_01x01_Male J5
U 1 1 6109FC1A
P 6100 2850
F 0 "J5" H 6072 2782 50  0000 R CNN
F 1 "+5V" H 6072 2873 50  0000 R CNN
F 2 "Footprints:Banana_Jack_1Pin_4mm" H 6100 2850 50  0001 C CNN
F 3 "~" H 6100 2850 50  0001 C CNN
	1    6100 2850
	-1   0    0    1   
$EndComp
$Comp
L Connector:Conn_01x01_Male J6
U 1 1 6109FF79
P 6100 3050
F 0 "J6" H 6072 2982 50  0000 R CNN
F 1 "+3.3V" H 6072 3073 50  0000 R CNN
F 2 "Footprints:Banana_Jack_1Pin_4mm" H 6100 3050 50  0001 C CNN
F 3 "~" H 6100 3050 50  0001 C CNN
	1    6100 3050
	-1   0    0    1   
$EndComp
$Comp
L Connector:Conn_01x01_Male J7
U 1 1 610A01EB
P 6100 3300
F 0 "J7" H 6072 3232 50  0000 R CNN
F 1 "-12V" H 6072 3323 50  0000 R CNN
F 2 "Footprints:Banana_Jack_1Pin_4mm" H 6100 3300 50  0001 C CNN
F 3 "~" H 6100 3300 50  0001 C CNN
	1    6100 3300
	-1   0    0    1   
$EndComp
Wire Wire Line
	5550 2800 5900 2850
Wire Wire Line
	5550 3000 5900 3050
Wire Wire Line
	5550 3300 5900 3300
$Comp
L Connector:Conn_01x01_Male J2
U 1 1 610A07F1
P 5700 3700
F 0 "J2" H 5672 3632 50  0000 R CNN
F 1 "GND" H 5672 3723 50  0000 R CNN
F 2 "Footprints:Banana_Jack_1Pin_4mm" H 5700 3700 50  0001 C CNN
F 3 "~" H 5700 3700 50  0001 C CNN
	1    5700 3700
	-1   0    0    1   
$EndComp
$Comp
L Connector:Conn_01x01_Male J3
U 1 1 610A0A7C
P 5700 3900
F 0 "J3" H 5672 3832 50  0000 R CNN
F 1 "GND" H 5672 3923 50  0000 R CNN
F 2 "Footprints:Banana_Jack_1Pin_4mm" H 5700 3900 50  0001 C CNN
F 3 "~" H 5700 3900 50  0001 C CNN
	1    5700 3900
	-1   0    0    1   
$EndComp
Wire Wire Line
	5050 3500 5500 3500
Wire Wire Line
	5500 3500 5500 3700
Wire Wire Line
	5500 3900 5500 3700
Connection ~ 5500 3700
$Comp
L Connector:ATX-24 J1
U 1 1 610A33C9
P 5050 2900
F 0 "J1" H 5050 3567 50  0000 C CNN
F 1 "ATX-24" H 5050 3476 50  0000 C CNN
F 2 "Footprints:Molex_Mini-Fit_Jr_5566-24A_2x12_P4.20mm_Vertical_4.2mm" H 5050 2800 50  0001 C CNN
F 3 "https://www.intel.com/content/dam/www/public/us/en/documents/guides/power-supply-design-guide-june.pdf#page=33" H 7450 2350 50  0001 C CNN
	1    5050 2900
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x04 J9
U 1 1 610AD220
P 6250 1450
F 0 "J9" H 6330 1442 50  0000 L CNN
F 1 "DC-DC" H 6330 1351 50  0000 L CNN
F 2 "Footprints:Connector High Power 4Pin" H 6250 1450 50  0001 C CNN
F 3 "~" H 6250 1450 50  0001 C CNN
	1    6250 1450
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01_Male J10
U 1 1 610B3428
P 6750 1800
F 0 "J10" H 6722 1732 50  0000 R CNN
F 1 "V+" H 6722 1823 50  0000 R CNN
F 2 "Footprints:Banana_Jack_1Pin_4mm" H 6750 1800 50  0001 C CNN
F 3 "~" H 6750 1800 50  0001 C CNN
	1    6750 1800
	-1   0    0    1   
$EndComp
$Comp
L Connector:Conn_01x01_Male J11
U 1 1 610B3814
P 6750 2000
F 0 "J11" H 6722 1932 50  0000 R CNN
F 1 "GND" H 6722 2023 50  0000 R CNN
F 2 "Footprints:Banana_Jack_1Pin_4mm" H 6750 2000 50  0001 C CNN
F 3 "~" H 6750 2000 50  0001 C CNN
	1    6750 2000
	-1   0    0    1   
$EndComp
Wire Wire Line
	6050 1550 5650 1550
Wire Wire Line
	5700 1650 6050 1650
Text Label 5850 1550 0    50   ~ 0
VOUT+
$Comp
L Connector:Conn_01x06_Male J8
U 1 1 610BEE5C
P 4650 1150
F 0 "J8" H 4758 1531 50  0000 C CNN
F 1 "ATX-PCIE" H 4758 1440 50  0000 C CNN
F 2 "Footprints:Molex_Mini-Fit_Jr_5566-06A_2x03_P4.20mm_Vertical_4.2mm" H 4650 1150 50  0001 C CNN
F 3 "~" H 4650 1150 50  0001 C CNN
	1    4650 1150
	1    0    0    -1  
$EndComp
Wire Wire Line
	4850 950  4950 950 
Wire Wire Line
	4950 950  4950 1050
Wire Wire Line
	4950 1050 4850 1050
Wire Wire Line
	4850 1150 4950 1150
Wire Wire Line
	4950 1150 4950 1050
Connection ~ 4950 1050
Wire Wire Line
	4850 1250 5000 1250
Wire Wire Line
	5000 1250 5000 1350
Wire Wire Line
	5000 1350 4850 1350
Wire Wire Line
	5000 1350 5000 1450
Wire Wire Line
	5000 1450 4850 1450
Connection ~ 5000 1350
$Comp
L Switch:SW_SPST SW1
U 1 1 610DCD0B
P 4100 3050
F 0 "SW1" V 4054 3148 50  0000 L CNN
F 1 "PWR" V 4145 3148 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 4100 3050 50  0001 C CNN
F 3 "~" H 4100 3050 50  0001 C CNN
	1    4100 3050
	0    1    1    0   
$EndComp
Wire Wire Line
	4550 2500 4100 2500
Wire Wire Line
	4100 2500 4100 2850
Wire Wire Line
	4100 3250 4100 3700
Wire Wire Line
	4100 3700 5500 3700
Text Label 5850 1650 0    50   ~ 0
VOUT-
Wire Wire Line
	4950 1050 5200 1050
Wire Wire Line
	5450 1050 5450 1350
Wire Wire Line
	5450 1350 6050 1350
Wire Wire Line
	5000 1350 5150 1350
Wire Wire Line
	5350 1350 5350 1450
Wire Wire Line
	5350 1450 6050 1450
Text Label 5850 1350 0    50   ~ 0
VIN+
Text Label 5850 1450 0    50   ~ 0
VIN-
Wire Wire Line
	5650 1550 5650 1800
Wire Wire Line
	5650 1800 6550 1800
Wire Wire Line
	5700 1650 5700 2000
Wire Wire Line
	5700 2000 6550 2000
$Comp
L Connector:Conn_01x02_Male J13
U 1 1 61365BA4
P 5500 1850
F 0 "J13" H 5562 1894 50  0000 L CNN
F 1 "Solder 12V" H 5400 2000 50  0000 L CNN
F 2 "Footprints:High-Power-Solder-Jumper" H 5500 1850 50  0001 C CNN
F 3 "~" H 5500 1850 50  0001 C CNN
	1    5500 1850
	-1   0    0    1   
$EndComp
Wire Wire Line
	5200 1050 5200 1750
Wire Wire Line
	5200 1750 5300 1750
Connection ~ 5200 1050
Wire Wire Line
	5200 1050 5450 1050
Wire Wire Line
	5300 1850 5300 2050
Wire Wire Line
	5300 2050 5700 2050
Wire Wire Line
	5700 2050 5700 2700
Connection ~ 5700 2700
Wire Wire Line
	5700 2700 5550 2700
$Comp
L Connector:Conn_01x02_Male J12
U 1 1 6137A4A4
P 4650 1950
F 0 "J12" H 4712 1994 50  0000 L CNN
F 1 "Solder Gnd" H 4550 2100 50  0000 L CNN
F 2 "Footprints:High-Power-Solder-Jumper" H 4650 1950 50  0001 C CNN
F 3 "~" H 4650 1950 50  0001 C CNN
	1    4650 1950
	-1   0    0    1   
$EndComp
Wire Wire Line
	5150 1350 5150 1650
Wire Wire Line
	5150 1650 4350 1650
Wire Wire Line
	4350 1650 4350 1850
Wire Wire Line
	4350 1850 4450 1850
Connection ~ 5150 1350
Wire Wire Line
	5150 1350 5350 1350
Wire Wire Line
	4450 1950 3700 1950
Wire Wire Line
	3700 1950 3700 3700
Wire Wire Line
	3700 3700 4100 3700
Connection ~ 4100 3700
$EndSCHEMATC
