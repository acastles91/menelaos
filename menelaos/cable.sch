EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 5 5
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text GLabel 2500 1850 1    39   Input ~ 0
white
Text GLabel 3100 2500 3    39   Input ~ 0
gray
Text GLabel 1000 2300 0    39   Input ~ 0
green
Text GLabel 1700 2500 0    39   Input ~ 0
brown
Text GLabel 3000 2300 2    39   Input ~ 0
yellow
$Comp
L Device:R_POT_TRIM RV13
U 1 1 61CD4ABC
P 3400 1400
F 0 "RV13" H 3330 1446 50  0000 R CNN
F 1 "R_POT_TRIM" H 3330 1355 50  0000 R CNN
F 2 "Potentiometer_THT:Potentiometer_Bourns_3296W_Vertical" H 3400 1400 50  0001 C CNN
F 3 "~" H 3400 1400 50  0001 C CNN
	1    3400 1400
	1    0    0    -1  
$EndComp
$Comp
L power:+5VP #PWR0147
U 1 1 61CD4F35
P 3400 1050
F 0 "#PWR0147" H 3400 900 50  0001 C CNN
F 1 "+5VP" H 3415 1223 50  0000 C CNN
F 2 "" H 3400 1050 50  0001 C CNN
F 3 "" H 3400 1050 50  0001 C CNN
	1    3400 1050
	1    0    0    -1  
$EndComp
Wire Wire Line
	3400 1050 3400 1250
$Comp
L power:GND #PWR0148
U 1 1 61CD538A
P 3400 1850
F 0 "#PWR0148" H 3400 1600 50  0001 C CNN
F 1 "GND" H 3405 1677 50  0000 C CNN
F 2 "" H 3400 1850 50  0001 C CNN
F 3 "" H 3400 1850 50  0001 C CNN
	1    3400 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	3400 1850 3400 1550
Text GLabel 4000 1400 2    39   Input ~ 0
white
Wire Wire Line
	4000 1400 3550 1400
Wire Wire Line
	2500 1850 2500 2100
Wire Wire Line
	3000 2300 2800 2300
Text GLabel 2650 3050 0    39   Input ~ 0
yellow
$Comp
L Device:R_POT_TRIM RV12
U 1 1 61CDFDB3
P 2650 3400
F 0 "RV12" H 2580 3446 50  0000 R CNN
F 1 "R_POT_TRIM" H 2580 3355 50  0000 R CNN
F 2 "Potentiometer_THT:Potentiometer_Bourns_3296W_Vertical" H 2650 3400 50  0001 C CNN
F 3 "~" H 2650 3400 50  0001 C CNN
	1    2650 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	2650 3050 2650 3250
$Comp
L power:GND #PWR0149
U 1 1 61CDFDC0
P 2650 3850
F 0 "#PWR0149" H 2650 3600 50  0001 C CNN
F 1 "GND" H 2655 3677 50  0000 C CNN
F 2 "" H 2650 3850 50  0001 C CNN
F 3 "" H 2650 3850 50  0001 C CNN
	1    2650 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	2650 3850 2650 3550
Wire Wire Line
	3250 3400 3050 3400
$Comp
L Device:R_POT_TRIM RV11
U 1 1 61CE0610
P 1400 3950
F 0 "RV11" H 1330 3996 50  0000 R CNN
F 1 "R_POT_TRIM" H 1330 3905 50  0000 R CNN
F 2 "Potentiometer_THT:Potentiometer_Bourns_3296W_Vertical" H 1400 3950 50  0001 C CNN
F 3 "~" H 1400 3950 50  0001 C CNN
	1    1400 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	1400 3600 1400 3800
$Comp
L power:GND #PWR0150
U 1 1 61CE061D
P 1400 4400
F 0 "#PWR0150" H 1400 4150 50  0001 C CNN
F 1 "GND" H 1405 4227 50  0000 C CNN
F 2 "" H 1400 4400 50  0001 C CNN
F 3 "" H 1400 4400 50  0001 C CNN
	1    1400 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	1400 4400 1400 4100
Wire Wire Line
	2000 3950 1750 3950
Wire Wire Line
	2800 2500 3100 2500
$Comp
L Device:C C3
U 1 1 61CE2DB6
P 3050 3550
F 0 "C3" H 3165 3596 50  0000 L CNN
F 1 "C" H 3165 3505 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D11.0mm_W5.0mm_P7.50mm" H 3088 3400 50  0001 C CNN
F 3 "~" H 3050 3550 50  0001 C CNN
	1    3050 3550
	1    0    0    -1  
$EndComp
Connection ~ 3050 3400
Wire Wire Line
	3050 3400 2800 3400
Text GLabel 3250 3400 2    39   Input ~ 0
_chA
$Comp
L power:GND #PWR0151
U 1 1 61CE32E8
P 3050 3700
F 0 "#PWR0151" H 3050 3450 50  0001 C CNN
F 1 "GND" H 3055 3527 50  0000 C CNN
F 2 "" H 3050 3700 50  0001 C CNN
F 3 "" H 3050 3700 50  0001 C CNN
	1    3050 3700
	1    0    0    -1  
$EndComp
Text GLabel 1400 3600 0    39   Input ~ 0
gray
$Comp
L Device:C C2
U 1 1 61CE3782
P 1750 4100
F 0 "C2" H 1865 4146 50  0000 L CNN
F 1 "C" H 1865 4055 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D11.0mm_W5.0mm_P7.50mm" H 1788 3950 50  0001 C CNN
F 3 "~" H 1750 4100 50  0001 C CNN
	1    1750 4100
	1    0    0    -1  
$EndComp
Connection ~ 1750 3950
Wire Wire Line
	1750 3950 1550 3950
Text GLabel 2000 3950 2    39   Input ~ 0
_chB
$Comp
L power:GND #PWR0152
U 1 1 61CE44C7
P 1750 4250
F 0 "#PWR0152" H 1750 4000 50  0001 C CNN
F 1 "GND" H 1755 4077 50  0000 C CNN
F 2 "" H 1750 4250 50  0001 C CNN
F 3 "" H 1750 4250 50  0001 C CNN
	1    1750 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	1700 2500 2200 2500
Wire Wire Line
	1000 2300 2200 2300
Text GLabel 1100 3000 0    39   Input ~ 0
brown
Text GLabel 1650 3000 0    39   Input ~ 0
green
$Comp
L power:GND #PWR0153
U 1 1 61CE535D
P 1850 3000
F 0 "#PWR0153" H 1850 2750 50  0001 C CNN
F 1 "GND" H 1855 2827 50  0000 C CNN
F 2 "" H 1850 3000 50  0001 C CNN
F 3 "" H 1850 3000 50  0001 C CNN
	1    1850 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	1850 3000 1650 3000
$Comp
L power:GND #PWR0154
U 1 1 61CE598B
P 1350 3000
F 0 "#PWR0154" H 1350 2750 50  0001 C CNN
F 1 "GND" H 1355 2827 50  0000 C CNN
F 2 "" H 1350 3000 50  0001 C CNN
F 3 "" H 1350 3000 50  0001 C CNN
	1    1350 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	1350 3000 1100 3000
$Comp
L knownParts:DIN-5-TerminalBlock J23
U 1 1 61F73646
P 2500 2400
F 0 "J23" H 2500 2125 50  0000 C CNN
F 1 "DIN-5-TerminalBlock" H 2500 2034 50  0000 C CNN
F 2 "TerminalBlock:TerminalBlock_bornier-5_P5.08mm" H 2500 2400 50  0001 C CNN
F 3 "http://www.mouser.com/ds/2/18/40_c091_abd_e-75918.pdf" H 2500 2400 50  0001 C CNN
	1    2500 2400
	1    0    0    -1  
$EndComp
$EndSCHEMATC
