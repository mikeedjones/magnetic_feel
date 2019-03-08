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
EELAYER 25 0
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
L CONN_01X05 J1
U 1 1 5A327108
P 5650 3250
F 0 "J1" H 5650 3550 50  0000 C CNN
F 1 "CONN_01X05" V 5750 3250 50  0000 C CNN
F 2 "Connectors:Wafer_Vertical15x5.8x7RM2.5-5" H 5650 3250 50  0001 C CNN
F 3 "" H 5650 3250 50  0001 C CNN
	1    5650 3250
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X02 zero_switch1
U 1 1 5A327202
P 5200 2850
F 0 "zero_switch1" H 5200 3000 50  0000 C CNN
F 1 "CONN_01X02" V 5300 2850 50  0000 C CNN
F 2 "Connect:PINHEAD1-2" H 5200 2850 50  0001 C CNN
F 3 "" H 5200 2850 50  0001 C CNN
	1    5200 2850
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X02 vibrator1
U 1 1 5A3272DB
P 6950 4550
F 0 "vibrator1" H 6950 4700 50  0000 C CNN
F 1 "CONN_01X02" V 7050 4550 50  0000 C CNN
F 2 "Connect:PINHEAD1-2" H 6950 4550 50  0001 C CNN
F 3 "" H 6950 4550 50  0001 C CNN
	1    6950 4550
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X02 on/off1
U 1 1 5A327356
P 6400 2800
F 0 "on/off1" H 6400 2950 50  0000 C CNN
F 1 "CONN_01X02" V 6500 2800 50  0000 C CNN
F 2 "Connect:PINHEAD1-2" H 6400 2800 50  0001 C CNN
F 3 "" H 6400 2800 50  0001 C CNN
	1    6400 2800
	1    0    0    -1  
$EndComp
$Comp
L PN2222A Q1
U 1 1 5A33B4C1
P 6650 4200
F 0 "Q1" H 6850 4275 50  0000 L CNN
F 1 "PN2222A" H 6850 4200 50  0000 L CNN
F 2 "TO_SOT_Packages_THT:TO-92_Molded_Narrow" H 6850 4125 50  0001 L CIN
F 3 "" H 6650 4200 50  0001 L CNN
	1    6650 4200
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X02 battery1
U 1 1 5A393046
P 6500 3250
F 0 "battery1" H 6500 3400 50  0000 C CNN
F 1 "CONN_01X02" V 6600 3250 50  0000 C CNN
F 2 "Connect:PINHEAD1-2" H 6500 3250 50  0001 C CNN
F 3 "" H 6500 3250 50  0001 C CNN
	1    6500 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	3650 3550 3700 3550
Wire Wire Line
	3500 4500 3600 4500
Wire Wire Line
	5100 4200 6450 4200
Wire Wire Line
	6750 2450 6750 4000
Wire Wire Line
	4550 4400 4550 4450
Wire Wire Line
	6200 2850 6200 3200
Connection ~ 3700 2750
Wire Wire Line
	6750 4400 6750 4500
Wire Wire Line
	6200 4650 6650 4650
Wire Wire Line
	6200 3300 6200 4650
Wire Wire Line
	2000 3800 6200 3800
Connection ~ 6200 3800
Connection ~ 3650 3600
Wire Wire Line
	1800 2750 6200 2750
Wire Wire Line
	5450 2750 5450 3050
Connection ~ 5450 2750
Wire Wire Line
	5450 3150 5350 3150
Wire Wire Line
	5350 3150 5350 3800
Connection ~ 5350 3800
Wire Wire Line
	6750 4600 6650 4600
Wire Wire Line
	6650 4600 6650 4650
Wire Wire Line
	6750 2450 6150 2450
Wire Wire Line
	6150 2450 6150 2750
Connection ~ 6150 2750
Wire Wire Line
	4950 2750 5000 2750
Wire Wire Line
	5000 2750 5000 2800
Connection ~ 4950 2750
Wire Wire Line
	6200 3300 6300 3300
Wire Wire Line
	6200 3200 6300 3200
Wire Wire Line
	5250 3350 5450 3350
Wire Wire Line
	5450 3250 5200 3250
Wire Wire Line
	5200 3250 5200 3350
Wire Wire Line
	5100 3450 5100 4200
$Comp
L ATTINY85-20PU U?
U 1 1 5A393557
P 3500 3300
F 0 "U?" H 2350 3700 50  0000 C CNN
F 1 "ATTINY85-20PU" H 4500 2900 50  0000 C CNN
F 2 "Housings_DIP:DIP-8_W7.62mm" H 4500 3300 50  0001 C CIN
F 3 "" H 3500 3300 50  0001 C CNN
	1    3500 3300
	-1   0    0    1   
$EndComp
Wire Wire Line
	1800 2750 1800 3550
Wire Wire Line
	1800 3550 2150 3550
Wire Wire Line
	2150 3050 2000 3050
Wire Wire Line
	2000 3050 2000 3800
Wire Wire Line
	4850 3450 5100 3450
Wire Wire Line
	5200 3350 4850 3350
Wire Wire Line
	4850 3550 5250 3550
Wire Wire Line
	5250 3550 5250 3350
Wire Wire Line
	4850 3150 5000 3150
Wire Wire Line
	5000 3150 5000 2900
$EndSCHEMATC
