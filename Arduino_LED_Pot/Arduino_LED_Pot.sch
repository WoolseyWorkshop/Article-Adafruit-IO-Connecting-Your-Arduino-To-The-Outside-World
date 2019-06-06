EESchema Schematic File Version 4
LIBS:Arduino_LED_Pot-cache
EELAYER 29 0
EELAYER END
$Descr A 11000 8500
encoding utf-8
Sheet 1 1
Title "Arduino Uno With LED And Potentiometer"
Date "2019-06-01"
Rev "1.0"
Comp "Woolsey Workshop"
Comment1 "By: John Woolsey"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text Label 4400 1650 1    60   ~ 0
Vin
Text Label 4800 1650 1    60   ~ 0
IOREF
Text Label 4350 2700 0    60   ~ 0
A0
Text Label 4350 2800 0    60   ~ 0
A1
Text Label 4350 2900 0    60   ~ 0
A2
Text Label 4350 3000 0    60   ~ 0
A3
Text Label 4350 3100 0    60   ~ 0
A4(SDA)
Text Label 4350 3200 0    60   ~ 0
A5(SCL)
Text Label 6000 3200 0    60   ~ 0
0(Rx)
Text Label 6000 3000 0    60   ~ 0
2
Text Label 6000 3100 0    60   ~ 0
1(Tx)
Text Label 6000 2900 0    60   ~ 0
3(**)
Text Label 6000 2800 0    60   ~ 0
4
Text Label 6000 2700 0    60   ~ 0
5(**)
Text Label 6000 2600 0    60   ~ 0
6(**)
Text Label 6000 2500 0    60   ~ 0
7
Text Label 6000 2300 0    60   ~ 0
8
Text Label 6000 2200 0    60   ~ 0
9(**)
Text Label 6000 2100 0    60   ~ 0
10(**/SS)
Text Label 6000 2000 0    60   ~ 0
11(**/MOSI)
Text Label 6000 1900 0    60   ~ 0
12(MISO)
Text Label 6000 1800 0    60   ~ 0
13(SCK)
Text Label 6000 1600 0    60   ~ 0
AREF
NoConn ~ 4850 1800
Text Label 6000 1500 0    60   ~ 0
A4(SDA)
Text Label 6000 1400 0    60   ~ 0
A5(SCL)
$Comp
L Connector_Generic:Conn_01x08 P1
U 1 1 56D70129
P 5050 2100
F 0 "P1" H 5050 2550 50  0000 C CNN
F 1 "Power" V 5150 2100 50  0000 C CNN
F 2 "Socket_Arduino_Uno:Socket_Strip_Arduino_1x08" V 5200 2100 20  0000 C CNN
F 3 "" H 5050 2100 50  0000 C CNN
	1    5050 2100
	1    0    0    -1  
$EndComp
Text Label 4100 2000 0    60   ~ 0
Reset
$Comp
L power:+3.3V #PWR01
U 1 1 56D70538
P 4600 1650
F 0 "#PWR01" H 4600 1500 50  0001 C CNN
F 1 "+3.3V" V 4600 1900 50  0000 C CNN
F 2 "" H 4600 1650 50  0000 C CNN
F 3 "" H 4600 1650 50  0000 C CNN
	1    4600 1650
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR02
U 1 1 56D707BB
P 4500 1550
F 0 "#PWR02" H 4500 1400 50  0001 C CNN
F 1 "+5V" V 4500 1750 50  0000 C CNN
F 2 "" H 4500 1550 50  0000 C CNN
F 3 "" H 4500 1550 50  0000 C CNN
	1    4500 1550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR03
U 1 1 56D70CC2
P 4750 3350
F 0 "#PWR03" H 4750 3100 50  0001 C CNN
F 1 "GND" H 4750 3200 50  0000 C CNN
F 2 "" H 4750 3350 50  0000 C CNN
F 3 "" H 4750 3350 50  0000 C CNN
	1    4750 3350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR04
U 1 1 56D70CFF
P 5750 3350
F 0 "#PWR04" H 5750 3100 50  0001 C CNN
F 1 "GND" H 5750 3200 50  0000 C CNN
F 2 "" H 5750 3350 50  0000 C CNN
F 3 "" H 5750 3350 50  0000 C CNN
	1    5750 3350
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x06 P2
U 1 1 56D70DD8
P 5050 2900
F 0 "P2" H 5050 2500 50  0000 C CNN
F 1 "Analog" V 5150 2900 50  0000 C CNN
F 2 "Socket_Arduino_Uno:Socket_Strip_Arduino_1x06" V 5200 2950 20  0000 C CNN
F 3 "" H 5050 2900 50  0000 C CNN
	1    5050 2900
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x08 P4
U 1 1 56D7164F
P 5450 2800
F 0 "P4" H 5450 2300 50  0000 C CNN
F 1 "Digital" V 5550 2800 50  0000 C CNN
F 2 "Socket_Arduino_Uno:Socket_Strip_Arduino_1x08" V 5600 2750 20  0000 C CNN
F 3 "" H 5450 2800 50  0000 C CNN
	1    5450 2800
	-1   0    0    -1  
$EndComp
Wire Wire Line
	4800 1650 4800 1900
Wire Wire Line
	4800 1900 4850 1900
Wire Wire Line
	4850 2100 4600 2100
Wire Wire Line
	4850 2200 4500 2200
Wire Wire Line
	4850 2500 4400 2500
Wire Wire Line
	4850 2300 4750 2300
Wire Wire Line
	4850 2400 4750 2400
Connection ~ 4750 2400
Wire Wire Line
	4400 2500 4400 1650
Wire Wire Line
	4500 2200 4500 1550
Wire Wire Line
	4600 2100 4600 1650
Wire Wire Line
	4850 2800 4350 2800
Wire Wire Line
	4850 2900 4350 2900
Wire Wire Line
	4850 3000 4350 3000
Wire Wire Line
	4850 3100 4350 3100
Wire Wire Line
	4850 3200 4350 3200
$Comp
L Connector_Generic:Conn_01x10 P3
U 1 1 56D721E0
P 5450 1800
F 0 "P3" H 5450 2350 50  0000 C CNN
F 1 "Digital" V 5550 1800 50  0000 C CNN
F 2 "Socket_Arduino_Uno:Socket_Strip_Arduino_1x10" V 5600 1800 20  0000 C CNN
F 3 "" H 5450 1800 50  0000 C CNN
	1    5450 1800
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5650 2300 6000 2300
Wire Wire Line
	5650 2200 6000 2200
Wire Wire Line
	5650 2100 6000 2100
Wire Wire Line
	5650 2000 6000 2000
Wire Wire Line
	5650 1900 6000 1900
Wire Wire Line
	5650 1800 6000 1800
Wire Wire Line
	5650 1600 6000 1600
Wire Wire Line
	5650 1500 6000 1500
Wire Wire Line
	5650 1400 6000 1400
Wire Wire Line
	5650 3200 6000 3200
Wire Wire Line
	5650 3100 6000 3100
Wire Wire Line
	5650 2900 6000 2900
Wire Wire Line
	5650 2800 6000 2800
Wire Wire Line
	5650 2700 6000 2700
Wire Wire Line
	5650 2600 6000 2600
Wire Wire Line
	5650 2500 6000 2500
Wire Wire Line
	5650 1700 5750 1700
Wire Wire Line
	5750 1700 5750 3350
Wire Wire Line
	4750 2300 4750 2400
Wire Wire Line
	4750 2400 4750 3350
Wire Wire Line
	4850 2000 4100 2000
Text Notes 5150 1800 0    60   ~ 0
1
Text Notes 4200 1150 0    100  ~ 0
Arduino Uno
Wire Notes Line
	6650 3600 4050 3600
Wire Notes Line
	4050 3600 4050 950 
Wire Notes Line
	4050 950  6650 950 
Wire Notes Line
	6650 950  6650 3600
$Comp
L Device:R_US R1
U 1 1 5CF3CE1D
P 7000 2800
F 0 "R1" H 7068 2846 50  0000 L CNN
F 1 "330" H 7068 2755 50  0000 L CNN
F 2 "" V 7040 2790 50  0001 C CNN
F 3 "~" H 7000 2800 50  0001 C CNN
	1    7000 2800
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D1
U 1 1 5CF3D5D1
P 7000 3150
F 0 "D1" V 7039 3033 50  0000 R CNN
F 1 "LED" V 6948 3033 50  0000 R CNN
F 2 "" H 7000 3150 50  0001 C CNN
F 3 "~" H 7000 3150 50  0001 C CNN
	1    7000 3150
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR07
U 1 1 5CF3F435
P 7000 3350
F 0 "#PWR07" H 7000 3100 50  0001 C CNN
F 1 "GND" H 7005 3177 50  0000 C CNN
F 2 "" H 7000 3350 50  0001 C CNN
F 3 "" H 7000 3350 50  0001 C CNN
	1    7000 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	7000 3350 7000 3300
Wire Wire Line
	7000 3000 7000 2950
Wire Wire Line
	7000 2650 6800 2650
Wire Wire Line
	6800 2650 6800 3000
Wire Wire Line
	5650 3000 6800 3000
$Comp
L Device:R_POT_US RV1
U 1 1 5CF50B6F
P 3750 2700
F 0 "RV1" H 3683 2746 50  0000 R CNN
F 1 "10K" H 3683 2655 50  0000 R CNN
F 2 "" H 3750 2700 50  0001 C CNN
F 3 "~" H 3750 2700 50  0001 C CNN
	1    3750 2700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR06
U 1 1 5CF56880
P 3750 2900
F 0 "#PWR06" H 3750 2650 50  0001 C CNN
F 1 "GND" H 3755 2727 50  0000 C CNN
F 2 "" H 3750 2900 50  0001 C CNN
F 3 "" H 3750 2900 50  0001 C CNN
	1    3750 2900
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR05
U 1 1 5CF573AB
P 3750 2500
F 0 "#PWR05" H 3750 2350 50  0001 C CNN
F 1 "+5V" H 3765 2673 50  0000 C CNN
F 2 "" H 3750 2500 50  0001 C CNN
F 3 "" H 3750 2500 50  0001 C CNN
	1    3750 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	3750 2500 3750 2550
Wire Wire Line
	3750 2850 3750 2900
Wire Wire Line
	3900 2700 4850 2700
$EndSCHEMATC
