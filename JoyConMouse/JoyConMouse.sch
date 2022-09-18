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
$Comp
L SamacSys_Parts:DEV-12640 IC1
U 1 1 63270652
P 1550 1350
F 0 "IC1" H 2150 1615 50  0000 C CNN
F 1 "DEV-12640" H 2150 1524 50  0000 C CNN
F 2 "SamacSys_Parts:DEV12640" H 2600 1450 50  0001 L CNN
F 3 "https://cdn.sparkfun.com/datasheets/Dev/Arduino/Boards/ProMicro16MHzv1.pdf" H 2600 1350 50  0001 L CNN
F 4 "Development Boards & Kits - AVR Pro Micro - 5V/16MHz" H 2600 1250 50  0001 L CNN "Description"
F 5 "3.5" H 2600 1150 50  0001 L CNN "Height"
F 6 "" H 2600 1050 50  0001 L CNN "RS Part Number"
F 7 "" H 2600 950 50  0001 L CNN "RS Price/Stock"
F 8 "SparkFun" H 2600 850 50  0001 L CNN "Manufacturer_Name"
F 9 "DEV-12640" H 2600 750 50  0001 L CNN "Manufacturer_Part_Number"
	1    1550 1350
	1    0    0    -1  
$EndComp
Text GLabel 1550 1550 0    50   Input ~ 0
GND
Text GLabel 1550 1650 0    50   Input ~ 0
GND
Text GLabel 2750 1650 2    50   Input ~ 0
+5V
$Comp
L SamacSys_Parts:JT8P-3.2T-B10K-1-16Y IC2
U 1 1 632726AC
P 3550 1450
F 0 "IC2" H 4000 1715 50  0000 C CNN
F 1 "JT8P-3.2T-B10K-1-16Y" H 4000 1624 50  0000 C CNN
F 2 "SamacSys_Parts:JT8P32TB10K116Y" H 4300 1550 50  0001 L CNN
F 3 "https://akizukidenshi.com/download/JT8P-3.2T-B10K-1-16Y.pdf" H 4300 1450 50  0001 L CNN
F 4 "Stick Controller" H 4300 1350 50  0001 L CNN "Description"
F 5 "8.6" H 4300 1250 50  0001 L CNN "Height"
F 6 "" H 4300 1150 50  0001 L CNN "RS Part Number"
F 7 "" H 4300 1050 50  0001 L CNN "RS Price/Stock"
F 8 "TOP-UP INDUSTRY CORP." H 4300 950 50  0001 L CNN "Manufacturer_Name"
F 9 "JT8P-3.2T-B10K-1-16Y" H 4300 850 50  0001 L CNN "Manufacturer_Part_Number"
	1    3550 1450
	1    0    0    -1  
$EndComp
Text GLabel 3550 1650 0    50   Input ~ 0
GND
Text GLabel 3550 1450 0    50   Input ~ 0
+5V
Text GLabel 4450 1450 2    50   Input ~ 0
+5V
Text GLabel 4450 1650 2    50   Input ~ 0
GND
Text GLabel 3550 1550 0    50   Input ~ 0
A0
Text GLabel 4450 1550 2    50   Input ~ 0
A1
Text GLabel 2750 2050 2    50   Input ~ 0
A0
Text GLabel 2750 1950 2    50   Input ~ 0
A1
$Comp
L Switch:SW_Push SW1
U 1 1 63274CE9
P 3450 2650
F 0 "SW1" V 3404 2798 50  0000 L CNN
F 1 "SW_Push" V 3495 2798 50  0000 L CNN
F 2 "SamacSys_Parts:SW_PG1350" H 3450 2850 50  0001 C CNN
F 3 "~" H 3450 2850 50  0001 C CNN
	1    3450 2650
	0    1    1    0   
$EndComp
$Comp
L Device:R R1
U 1 1 63275EC2
P 3450 2300
F 0 "R1" H 3520 2346 50  0000 L CNN
F 1 "R" H 3520 2255 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 3380 2300 50  0001 C CNN
F 3 "~" H 3450 2300 50  0001 C CNN
	1    3450 2300
	1    0    0    -1  
$EndComp
Text GLabel 1550 2250 0    50   Input ~ 0
D7
Text GLabel 1550 2350 0    50   Input ~ 0
D8
Text GLabel 1550 2450 0    50   Input ~ 0
D9
Text GLabel 3600 2450 2    50   Input ~ 0
D7
Wire Wire Line
	3600 2450 3450 2450
Connection ~ 3450 2450
Text GLabel 3450 2150 1    50   Input ~ 0
+5V
Text GLabel 3450 2850 3    50   Input ~ 0
GND
$Comp
L Switch:SW_Push SW2
U 1 1 6327860E
P 4100 2650
F 0 "SW2" V 4054 2798 50  0000 L CNN
F 1 "SW_Push" V 4145 2798 50  0000 L CNN
F 2 "SamacSys_Parts:SW_PG1350" H 4100 2850 50  0001 C CNN
F 3 "~" H 4100 2850 50  0001 C CNN
	1    4100 2650
	0    1    1    0   
$EndComp
$Comp
L Device:R R2
U 1 1 63278614
P 4100 2300
F 0 "R2" H 4170 2346 50  0000 L CNN
F 1 "R" H 4170 2255 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 4030 2300 50  0001 C CNN
F 3 "~" H 4100 2300 50  0001 C CNN
	1    4100 2300
	1    0    0    -1  
$EndComp
Text GLabel 4250 2450 2    50   Input ~ 0
D8
Wire Wire Line
	4250 2450 4100 2450
Connection ~ 4100 2450
Text GLabel 4100 2150 1    50   Input ~ 0
+5V
Text GLabel 4100 2850 3    50   Input ~ 0
GND
$Comp
L Switch:SW_Push SW3
U 1 1 632792BA
P 4700 2650
F 0 "SW3" V 4654 2798 50  0000 L CNN
F 1 "SW_Push" V 4745 2798 50  0000 L CNN
F 2 "SamacSys_Parts:SW_PG1350" H 4700 2850 50  0001 C CNN
F 3 "~" H 4700 2850 50  0001 C CNN
	1    4700 2650
	0    1    1    0   
$EndComp
$Comp
L Device:R R3
U 1 1 632792C0
P 4700 2300
F 0 "R3" H 4770 2346 50  0000 L CNN
F 1 "R" H 4770 2255 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 4630 2300 50  0001 C CNN
F 3 "~" H 4700 2300 50  0001 C CNN
	1    4700 2300
	1    0    0    -1  
$EndComp
Text GLabel 4850 2450 2    50   Input ~ 0
D9
Wire Wire Line
	4850 2450 4700 2450
Connection ~ 4700 2450
Text GLabel 4700 2150 1    50   Input ~ 0
+5V
Text GLabel 4700 2850 3    50   Input ~ 0
GND
NoConn ~ 1550 1350
NoConn ~ 1550 1450
NoConn ~ 1550 1750
NoConn ~ 1550 1850
NoConn ~ 1550 1950
NoConn ~ 1550 2050
NoConn ~ 1550 2150
NoConn ~ 2750 2450
NoConn ~ 2750 2350
NoConn ~ 2750 2250
NoConn ~ 2750 2150
NoConn ~ 2750 1850
NoConn ~ 2750 1750
NoConn ~ 2750 1550
NoConn ~ 2750 1350
Text GLabel 2750 1450 2    50   Input ~ 0
GND
$EndSCHEMATC
