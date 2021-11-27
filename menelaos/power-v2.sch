EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 4 5
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text Notes 6700 1050 0    50   ~ 0
5V voltage load\n\n
$Comp
L Device:C Murata-Ceramic-Capacitor-50v1-22uF?
U 1 1 606DF5A6
P 7850 1600
AR Path="/5FBCFD95/606DF5A6" Ref="Murata-Ceramic-Capacitor-50v1-22uF?"  Part="1" 
AR Path="/606DF5A6" Ref="Murata-Ceramic-Capacitor-50v1-22uF?"  Part="1" 
AR Path="/61C22CBA/606DF5A6" Ref="Murata-Ceramic-Capacitor-50v1-22uF1"  Part="1" 
F 0 "Murata-Ceramic-Capacitor-50v1-22uF1" H 6850 1300 50  0000 L CNN
F 1 "C" H 7965 1555 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W1.6mm_P2.50mm" H 7888 1450 50  0001 C CNN
F 3 "~" H 7850 1600 50  0001 C CNN
	1    7850 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	8200 1450 7850 1450
Wire Wire Line
	7550 1450 7850 1450
Connection ~ 7850 1450
$Comp
L power:GND #PWR?
U 1 1 606DF5AF
P 8500 2100
AR Path="/5FBCFD95/606DF5AF" Ref="#PWR?"  Part="1" 
AR Path="/606DF5AF" Ref="#PWR?"  Part="1" 
AR Path="/61C22CBA/606DF5AF" Ref="#PWR0124"  Part="1" 
F 0 "#PWR0124" H 8500 1850 50  0001 C CNN
F 1 "GND" H 8505 1927 50  0000 C CNN
F 2 "" H 8500 2100 50  0001 C CNN
F 3 "" H 8500 2100 50  0001 C CNN
	1    8500 2100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 606DF5B5
P 7850 2100
AR Path="/5FBCFD95/606DF5B5" Ref="#PWR?"  Part="1" 
AR Path="/606DF5B5" Ref="#PWR?"  Part="1" 
AR Path="/61C22CBA/606DF5B5" Ref="#PWR0125"  Part="1" 
F 0 "#PWR0125" H 7850 1850 50  0001 C CNN
F 1 "GND" H 7855 1927 50  0000 C CNN
F 2 "" H 7850 2100 50  0001 C CNN
F 3 "" H 7850 2100 50  0001 C CNN
	1    7850 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	7850 1750 7850 2100
$Comp
L power:GND #PWR?
U 1 1 606DF5BD
P 9000 2100
AR Path="/5FBCFD95/606DF5BD" Ref="#PWR?"  Part="1" 
AR Path="/606DF5BD" Ref="#PWR?"  Part="1" 
AR Path="/61C22CBA/606DF5BD" Ref="#PWR0126"  Part="1" 
F 0 "#PWR0126" H 9000 1850 50  0001 C CNN
F 1 "GND" H 9005 1927 50  0000 C CNN
F 2 "" H 9000 2100 50  0001 C CNN
F 3 "" H 9000 2100 50  0001 C CNN
	1    9000 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	9000 2100 9000 1750
Wire Wire Line
	8800 1450 9000 1450
$Comp
L Device:C Murata-Ceramic-Capacitor-50v1-22uF?
U 1 1 606DF5D1
P 9000 1600
AR Path="/5FBCFD95/606DF5D1" Ref="Murata-Ceramic-Capacitor-50v1-22uF?"  Part="1" 
AR Path="/606DF5D1" Ref="Murata-Ceramic-Capacitor-50v1-22uF?"  Part="1" 
AR Path="/61C22CBA/606DF5D1" Ref="Murata-Ceramic-Capacitor-50v1-22uF3"  Part="1" 
F 0 "Murata-Ceramic-Capacitor-50v1-22uF3" H 9150 1300 50  0000 L CNN
F 1 "C" H 9115 1555 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W1.6mm_P2.50mm" H 9038 1450 50  0001 C CNN
F 3 "~" H 9000 1600 50  0001 C CNN
	1    9000 1600
	1    0    0    -1  
$EndComp
Connection ~ 9000 1450
Wire Wire Line
	9000 1450 9200 1450
Wire Notes Line
	6700 1000 10750 1000
Wire Notes Line
	6700 1000 6700 2400
Wire Notes Line
	10750 1000 10750 2400
Wire Notes Line
	6700 2400 10750 2400
$Comp
L power:PWR_FLAG #FLG?
U 1 1 606DF5DD
P 9200 1450
AR Path="/5FBCFD95/606DF5DD" Ref="#FLG?"  Part="1" 
AR Path="/606DF5DD" Ref="#FLG?"  Part="1" 
AR Path="/61C22CBA/606DF5DD" Ref="#FLG0101"  Part="1" 
F 0 "#FLG0101" H 9200 1525 50  0001 C CNN
F 1 "PWR_FLAG" H 9200 1623 50  0000 C CNN
F 2 "" H 9200 1450 50  0001 C CNN
F 3 "~" H 9200 1450 50  0001 C CNN
	1    9200 1450
	0    1    1    0   
$EndComp
$Comp
L ariadne-rescue:IRF5305-Reverse-Polarity-ariadne Q?
U 1 1 606D0E40
P 2150 3050
AR Path="/5FBCFD95/606D0E40" Ref="Q?"  Part="1" 
AR Path="/606D0E40" Ref="Q?"  Part="1" 
AR Path="/61C22CBA/606D0E40" Ref="Q1"  Part="1" 
F 0 "Q1" H 2305 3096 50  0000 L CNN
F 1 "IRF5305-Reverse-Polarity" H 2305 3005 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Horizontal_TabDown" H 2300 2975 50  0001 L CIN
F 3 "http://www.irf.com/product-info/datasheets/data/irf7606pbf.pdf" V 2100 3050 50  0001 L CNN
	1    2150 3050
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG?
U 1 1 606D0E46
P 1500 3650
AR Path="/5FBCFD95/606D0E46" Ref="#FLG?"  Part="1" 
AR Path="/606D0E46" Ref="#FLG?"  Part="1" 
AR Path="/61C22CBA/606D0E46" Ref="#FLG0102"  Part="1" 
F 0 "#FLG0102" H 1500 3725 50  0001 C CNN
F 1 "PWR_FLAG" H 1500 3823 50  0000 C CNN
F 2 "" H 1500 3650 50  0001 C CNN
F 3 "~" H 1500 3650 50  0001 C CNN
	1    1500 3650
	0    -1   -1   0   
$EndComp
$Comp
L power:PWR_FLAG #FLG?
U 1 1 606D0E4C
P 2200 3750
AR Path="/5FBCFD95/606D0E4C" Ref="#FLG?"  Part="1" 
AR Path="/606D0E4C" Ref="#FLG?"  Part="1" 
AR Path="/61C22CBA/606D0E4C" Ref="#FLG0103"  Part="1" 
F 0 "#FLG0103" H 2200 3825 50  0001 C CNN
F 1 "PWR_FLAG" H 2200 3923 50  0000 C CNN
F 2 "" H 2200 3750 50  0001 C CNN
F 3 "~" H 2200 3750 50  0001 C CNN
	1    2200 3750
	0    1    1    0   
$EndComp
Wire Wire Line
	2200 3250 2200 3400
$Comp
L power:GND #PWR?
U 1 1 606D0E53
P 1500 4100
AR Path="/5FBCFD95/606D0E53" Ref="#PWR?"  Part="1" 
AR Path="/606D0E53" Ref="#PWR?"  Part="1" 
AR Path="/61C22CBA/606D0E53" Ref="#PWR0127"  Part="1" 
F 0 "#PWR0127" H 1500 3850 50  0001 C CNN
F 1 "GND" H 1505 3927 50  0000 C CNN
F 2 "" H 1500 4100 50  0001 C CNN
F 3 "" H 1500 4100 50  0001 C CNN
	1    1500 4100
	1    0    0    -1  
$EndComp
$Comp
L Device:D_Schottky D?
U 1 1 606D0E59
P 2050 3400
AR Path="/5FBCFD95/606D0E59" Ref="D?"  Part="1" 
AR Path="/606D0E59" Ref="D?"  Part="1" 
AR Path="/61C22CBA/606D0E59" Ref="D1"  Part="1" 
F 0 "D1" H 2050 3183 50  0000 C CNN
F 1 "D_Zener-10V" H 2050 3274 50  0000 C CNN
F 2 "Diode_THT:D_DO-41_SOD81_P7.62mm_Horizontal" H 2050 3400 50  0001 C CNN
F 3 "~" H 2050 3400 50  0001 C CNN
	1    2050 3400
	-1   0    0    1   
$EndComp
Connection ~ 2200 3400
Wire Wire Line
	2200 3400 2200 3750
Wire Wire Line
	1900 3400 1900 3050
$Comp
L Device:R R?
U 1 1 606D0E62
P 1700 3050
AR Path="/5FBCFD95/606D0E62" Ref="R?"  Part="1" 
AR Path="/606D0E62" Ref="R?"  Part="1" 
AR Path="/61C22CBA/606D0E62" Ref="R9"  Part="1" 
F 0 "R9" V 1493 3050 50  0000 C CNN
F 1 "100K" V 1584 3050 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 1630 3050 50  0001 C CNN
F 3 "~" H 1700 3050 50  0001 C CNN
	1    1700 3050
	0    1    1    0   
$EndComp
Wire Wire Line
	1850 3050 1900 3050
Connection ~ 1900 3050
Wire Wire Line
	1550 3050 1500 3050
Wire Wire Line
	2200 3750 2200 4000
Connection ~ 1500 3650
Wire Wire Line
	1500 3650 1500 3050
Connection ~ 2200 3750
Text Notes 2200 1700 0    50   ~ 0
Correct polarity protection\n
Wire Notes Line
	700  900  700  4500
Wire Notes Line
	3550 4500 3550 900 
Wire Notes Line
	3550 900  700  900 
Wire Wire Line
	1500 1650 1500 3050
Connection ~ 1500 3050
Wire Notes Line
	700  4500 3550 4500
Wire Wire Line
	1500 3650 1500 4100
Text Notes 3750 1850 0    50   ~ 0
P-Channel Mosfet\nIn narcise the mosfet used was IRF9540
Wire Wire Line
	2200 2500 1900 2500
Text Notes 6700 3350 0    50   ~ 0
5V voltage logic\n\n\n
$Comp
L Device:C Murata-Ceramic-Capacitor-50v1-22uF?
U 1 1 61C32506
P 7850 3900
AR Path="/5FBCFD95/61C32506" Ref="Murata-Ceramic-Capacitor-50v1-22uF?"  Part="1" 
AR Path="/61C32506" Ref="Murata-Ceramic-Capacitor-50v1-22uF?"  Part="1" 
AR Path="/61C22CBA/61C32506" Ref="Murata-Ceramic-Capacitor-50v1-22uF2"  Part="1" 
F 0 "Murata-Ceramic-Capacitor-50v1-22uF2" H 6850 3600 50  0000 L CNN
F 1 "C" H 7965 3855 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W1.6mm_P2.50mm" H 7888 3750 50  0001 C CNN
F 3 "~" H 7850 3900 50  0001 C CNN
	1    7850 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	8200 3750 7850 3750
Connection ~ 7850 3750
$Comp
L power:GND #PWR?
U 1 1 61C3250F
P 8500 4400
AR Path="/5FBCFD95/61C3250F" Ref="#PWR?"  Part="1" 
AR Path="/61C3250F" Ref="#PWR?"  Part="1" 
AR Path="/61C22CBA/61C3250F" Ref="#PWR0128"  Part="1" 
F 0 "#PWR0128" H 8500 4150 50  0001 C CNN
F 1 "GND" H 8505 4227 50  0000 C CNN
F 2 "" H 8500 4400 50  0001 C CNN
F 3 "" H 8500 4400 50  0001 C CNN
	1    8500 4400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 61C32515
P 7850 4400
AR Path="/5FBCFD95/61C32515" Ref="#PWR?"  Part="1" 
AR Path="/61C32515" Ref="#PWR?"  Part="1" 
AR Path="/61C22CBA/61C32515" Ref="#PWR0129"  Part="1" 
F 0 "#PWR0129" H 7850 4150 50  0001 C CNN
F 1 "GND" H 7855 4227 50  0000 C CNN
F 2 "" H 7850 4400 50  0001 C CNN
F 3 "" H 7850 4400 50  0001 C CNN
	1    7850 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	7850 4050 7850 4400
$Comp
L power:GND #PWR?
U 1 1 61C3251D
P 9000 4400
AR Path="/5FBCFD95/61C3251D" Ref="#PWR?"  Part="1" 
AR Path="/61C3251D" Ref="#PWR?"  Part="1" 
AR Path="/61C22CBA/61C3251D" Ref="#PWR0130"  Part="1" 
F 0 "#PWR0130" H 9000 4150 50  0001 C CNN
F 1 "GND" H 9005 4227 50  0000 C CNN
F 2 "" H 9000 4400 50  0001 C CNN
F 3 "" H 9000 4400 50  0001 C CNN
	1    9000 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	9000 4400 9000 4050
Wire Wire Line
	8800 3750 9000 3750
$Comp
L Device:C Murata-Ceramic-Capacitor-50v1-22uF?
U 1 1 61C32531
P 9000 3900
AR Path="/5FBCFD95/61C32531" Ref="Murata-Ceramic-Capacitor-50v1-22uF?"  Part="1" 
AR Path="/61C32531" Ref="Murata-Ceramic-Capacitor-50v1-22uF?"  Part="1" 
AR Path="/61C22CBA/61C32531" Ref="Murata-Ceramic-Capacitor-50v1-22uF4"  Part="1" 
F 0 "Murata-Ceramic-Capacitor-50v1-22uF4" H 9150 3600 50  0000 L CNN
F 1 "C" H 9115 3855 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W1.6mm_P2.50mm" H 9038 3750 50  0001 C CNN
F 3 "~" H 9000 3900 50  0001 C CNN
	1    9000 3900
	1    0    0    -1  
$EndComp
Connection ~ 9000 3750
Wire Notes Line
	6700 3300 10750 3300
$Comp
L power:PWR_FLAG #FLG?
U 1 1 61C3253D
P 10550 3750
AR Path="/5FBCFD95/61C3253D" Ref="#FLG?"  Part="1" 
AR Path="/61C3253D" Ref="#FLG?"  Part="1" 
AR Path="/61C22CBA/61C3253D" Ref="#FLG0104"  Part="1" 
F 0 "#FLG0104" H 10550 3825 50  0001 C CNN
F 1 "PWR_FLAG" H 10550 3900 50  0000 C CNN
F 2 "" H 10550 3750 50  0001 C CNN
F 3 "~" H 10550 3750 50  0001 C CNN
	1    10550 3750
	0    1    1    0   
$EndComp
$Comp
L power:+5VP #PWR022
U 1 1 61C42E20
P 9200 1450
F 0 "#PWR022" H 9200 1300 50  0001 C CNN
F 1 "+5VP" H 9215 1623 50  0000 C CNN
F 2 "" H 9200 1450 50  0001 C CNN
F 3 "" H 9200 1450 50  0001 C CNN
	1    9200 1450
	1    0    0    -1  
$EndComp
Connection ~ 9200 1450
$Comp
L power:+12V #PWR013
U 1 1 61C44E96
P 2200 4000
F 0 "#PWR013" H 2200 3850 50  0001 C CNN
F 1 "+12V" H 2215 4173 50  0000 C CNN
F 2 "" H 2200 4000 50  0001 C CNN
F 3 "" H 2200 4000 50  0001 C CNN
	1    2200 4000
	-1   0    0    1   
$EndComp
$Comp
L power:+12V #PWR016
U 1 1 61C467E1
P 6850 3750
F 0 "#PWR016" H 6850 3600 50  0001 C CNN
F 1 "+12V" H 6865 3923 50  0000 C CNN
F 2 "" H 6850 3750 50  0001 C CNN
F 3 "" H 6850 3750 50  0001 C CNN
	1    6850 3750
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR017
U 1 1 61C478BB
P 7550 1450
F 0 "#PWR017" H 7550 1300 50  0001 C CNN
F 1 "+12V" H 7565 1623 50  0000 C CNN
F 2 "" H 7550 1450 50  0001 C CNN
F 3 "" H 7550 1450 50  0001 C CNN
	1    7550 1450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 61C4C3A9
P 7200 4450
AR Path="/5FBCFD95/61C4C3A9" Ref="#PWR?"  Part="1" 
AR Path="/61C4C3A9" Ref="#PWR?"  Part="1" 
AR Path="/61C22CBA/61C4C3A9" Ref="#PWR0135"  Part="1" 
F 0 "#PWR0135" H 7200 4200 50  0001 C CNN
F 1 "GND" H 7205 4277 50  0000 C CNN
F 2 "" H 7200 4450 50  0001 C CNN
F 3 "" H 7200 4450 50  0001 C CNN
	1    7200 4450
	1    0    0    -1  
$EndComp
$Comp
L Comparator:LM393 U1
U 1 1 61C4D672
P 7600 5300
F 0 "U1" H 7600 5667 50  0000 C CNN
F 1 "LM393" H 7600 5576 50  0000 C CNN
F 2 "Package_DIP:DIP-8_W7.62mm_Socket_LongPads" H 7600 5300 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm393.pdf" H 7600 5300 50  0001 C CNN
	1    7600 5300
	1    0    0    -1  
$EndComp
$Comp
L Comparator:LM393 U1
U 2 1 61C4E304
P 9750 5300
F 0 "U1" H 9750 5667 50  0000 C CNN
F 1 "LM393" H 9750 5576 50  0000 C CNN
F 2 "Package_DIP:DIP-8_W7.62mm_Socket_LongPads" H 9750 5300 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm393.pdf" H 9750 5300 50  0001 C CNN
	2    9750 5300
	-1   0    0    -1  
$EndComp
$Comp
L Comparator:LM393 U1
U 3 1 61C4E7D6
P 8850 5400
F 0 "U1" H 8808 5446 50  0000 L CNN
F 1 "LM393" H 8808 5355 50  0000 L CNN
F 2 "Package_DIP:DIP-8_W7.62mm_Socket_LongPads" H 8850 5400 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm393.pdf" H 8850 5400 50  0001 C CNN
	3    8850 5400
	0    1    1    0   
$EndComp
NoConn ~ 7900 5300
NoConn ~ 7300 5200
NoConn ~ 7300 5400
Wire Wire Line
	9000 3750 9150 3750
Connection ~ 9150 3750
$Comp
L power:+5VL #PWR018
U 1 1 61C43369
P 9150 3750
F 0 "#PWR018" H 9150 3600 50  0001 C CNN
F 1 "+5VL" H 9165 3923 50  0000 C CNN
F 2 "" H 9150 3750 50  0001 C CNN
F 3 "" H 9150 3750 50  0001 C CNN
	1    9150 3750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 61C57633
P 9900 4450
AR Path="/5FBCFD95/61C57633" Ref="#PWR?"  Part="1" 
AR Path="/61C57633" Ref="#PWR?"  Part="1" 
AR Path="/61C22CBA/61C57633" Ref="#PWR0137"  Part="1" 
F 0 "#PWR0137" H 9900 4200 50  0001 C CNN
F 1 "GND" H 9905 4277 50  0000 C CNN
F 2 "" H 9900 4450 50  0001 C CNN
F 3 "" H 9900 4450 50  0001 C CNN
	1    9900 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	7050 5850 10050 5850
Wire Wire Line
	10050 5850 10050 5400
$Comp
L power:+5VL #PWR020
U 1 1 61C608C6
P 9150 5300
F 0 "#PWR020" H 9150 5150 50  0001 C CNN
F 1 "+5VL" H 9165 5473 50  0000 C CNN
F 2 "" H 9150 5300 50  0001 C CNN
F 3 "" H 9150 5300 50  0001 C CNN
	1    9150 5300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 61C60C99
P 8400 5300
AR Path="/5FBCFD95/61C60C99" Ref="#PWR?"  Part="1" 
AR Path="/61C60C99" Ref="#PWR?"  Part="1" 
AR Path="/61C22CBA/61C60C99" Ref="#PWR0139"  Part="1" 
F 0 "#PWR0139" H 8400 5050 50  0001 C CNN
F 1 "GND" H 8405 5127 50  0000 C CNN
F 2 "" H 8400 5300 50  0001 C CNN
F 3 "" H 8400 5300 50  0001 C CNN
	1    8400 5300
	1    0    0    -1  
$EndComp
Wire Wire Line
	8400 5300 8550 5300
Wire Notes Line
	6700 3300 6700 6150
Wire Notes Line
	6700 6150 10750 6150
Wire Notes Line
	10750 3300 10750 6150
$Comp
L Device:CP1 C2
U 1 1 61C682ED
P 10300 3900
F 0 "C2" H 10415 3946 50  0000 L CNN
F 1 "CP1" H 10415 3855 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D13.0mm_P5.00mm" H 10300 3900 50  0001 C CNN
F 3 "~" H 10300 3900 50  0001 C CNN
	1    10300 3900
	1    0    0    -1  
$EndComp
Connection ~ 10300 3750
Wire Wire Line
	10300 3750 10550 3750
$Comp
L power:GND #PWR?
U 1 1 61C68B0B
P 10300 4450
AR Path="/5FBCFD95/61C68B0B" Ref="#PWR?"  Part="1" 
AR Path="/61C68B0B" Ref="#PWR?"  Part="1" 
AR Path="/61C22CBA/61C68B0B" Ref="#PWR0140"  Part="1" 
F 0 "#PWR0140" H 10300 4200 50  0001 C CNN
F 1 "GND" H 10305 4277 50  0000 C CNN
F 2 "" H 10300 4450 50  0001 C CNN
F 3 "" H 10300 4450 50  0001 C CNN
	1    10300 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	10300 4450 10300 4050
Wire Wire Line
	2200 2500 2200 2850
$Comp
L Device:R R21
U 1 1 61D6039A
P 9450 5150
F 0 "R21" H 9520 5196 50  0000 L CNN
F 1 "R" H 9520 5105 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 9380 5150 50  0001 C CNN
F 3 "~" H 9450 5150 50  0001 C CNN
	1    9450 5150
	1    0    0    -1  
$EndComp
$Comp
L power:+5VL #PWR023
U 1 1 61D60683
P 9450 5000
F 0 "#PWR023" H 9450 4850 50  0001 C CNN
F 1 "+5VL" H 9465 5173 50  0000 C CNN
F 2 "" H 9450 5000 50  0001 C CNN
F 3 "" H 9450 5000 50  0001 C CNN
	1    9450 5000
	1    0    0    -1  
$EndComp
Text GLabel 9400 5300 0    39   Input ~ 0
_save
Wire Wire Line
	9400 5300 9450 5300
Connection ~ 9450 5300
$Comp
L knownParts:Generic-Switch S4
U 1 1 6218C4A0
P 1700 1400
F 0 "S4" H 1700 1755 50  0000 C CNN
F 1 "Generic-Switch" H 1700 1664 50  0000 C CNN
F 2 "TerminalBlock:TerminalBlock_Altech_AK300-2_P5.00mm" H 1700 1573 50  0000 C CNN
F 3 "" H 1700 1200 50  0001 C CNN
	1    1700 1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	1900 1400 1950 1400
Wire Wire Line
	1450 1650 1450 1400
Wire Wire Line
	1450 1650 1500 1650
$Comp
L Regulator_Linear:L7805 U3
U 1 1 618A189B
P 8500 3750
F 0 "U3" H 8500 3992 50  0000 C CNN
F 1 "L7805" H 8500 3901 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Horizontal_TabDown" H 8525 3600 50  0001 L CIN
F 3 "http://www.st.com/content/ccc/resource/technical/document/datasheet/41/4f/b3/b0/12/d4/47/88/CD00000444.pdf/files/CD00000444.pdf/jcr:content/translations/en.CD00000444.pdf" H 8500 3700 50  0001 C CNN
	1    8500 3750
	1    0    0    -1  
$EndComp
Text Notes 6750 2750 0    50   ~ 0
Changed muratas for L7805CV because of availability\n
Wire Wire Line
	8500 4050 8500 4400
$Comp
L Regulator_Linear:L7805 U2
U 1 1 618A7AAE
P 8500 1450
F 0 "U2" H 8500 1692 50  0000 C CNN
F 1 "L7805" H 8500 1601 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Horizontal_TabDown" H 8525 1300 50  0001 L CIN
F 3 "http://www.st.com/content/ccc/resource/technical/document/datasheet/41/4f/b3/b0/12/d4/47/88/CD00000444.pdf/files/CD00000444.pdf/jcr:content/translations/en.CD00000444.pdf" H 8500 1400 50  0001 C CNN
	1    8500 1450
	1    0    0    -1  
$EndComp
Wire Wire Line
	8500 1750 8500 2100
Wire Wire Line
	1900 1400 1900 2500
$Comp
L Device:R R20
U 1 1 6197C7D6
P 7200 4200
F 0 "R20" H 7270 4246 50  0000 L CNN
F 1 "R" H 7270 4155 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 7130 4200 50  0001 C CNN
F 3 "~" H 7200 4200 50  0001 C CNN
	1    7200 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	6850 3750 7200 3750
Wire Wire Line
	9150 3750 9900 3750
$Comp
L Device:R R10
U 1 1 6197D317
P 7200 3900
F 0 "R10" H 7270 3946 50  0000 L CNN
F 1 "R" H 7270 3855 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 7130 3900 50  0001 C CNN
F 3 "~" H 7200 3900 50  0001 C CNN
	1    7200 3900
	1    0    0    -1  
$EndComp
Connection ~ 7200 3750
Wire Wire Line
	7200 3750 7850 3750
Wire Wire Line
	7200 4350 7200 4450
Wire Wire Line
	7200 4050 7050 4050
Connection ~ 7200 4050
Wire Wire Line
	7050 4050 7050 5850
$Comp
L Device:R R22
U 1 1 61980E51
P 9900 3900
F 0 "R22" H 9970 3946 50  0000 L CNN
F 1 "R" H 9970 3855 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 9830 3900 50  0001 C CNN
F 3 "~" H 9900 3900 50  0001 C CNN
	1    9900 3900
	1    0    0    -1  
$EndComp
Connection ~ 9900 3750
Wire Wire Line
	9900 3750 10300 3750
$Comp
L Device:R R23
U 1 1 61981393
P 9900 4200
F 0 "R23" H 9970 4246 50  0000 L CNN
F 1 "R" H 9970 4155 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 9830 4200 50  0001 C CNN
F 3 "~" H 9900 4200 50  0001 C CNN
	1    9900 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	9900 4350 9900 4450
Wire Wire Line
	9900 4050 10050 4050
Connection ~ 9900 4050
Wire Wire Line
	10050 4050 10050 5200
$Comp
L Device:C C1
U 1 1 61857C5A
P 9150 5450
F 0 "C1" H 9265 5496 50  0000 L CNN
F 1 "C" H 9265 5405 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 9188 5300 50  0001 C CNN
F 3 "~" H 9150 5450 50  0001 C CNN
	1    9150 5450
	1    0    0    -1  
$EndComp
Connection ~ 9150 5300
$Comp
L power:GND #PWR?
U 1 1 6185A385
P 9150 5600
AR Path="/5FBCFD95/6185A385" Ref="#PWR?"  Part="1" 
AR Path="/6185A385" Ref="#PWR?"  Part="1" 
AR Path="/61C22CBA/6185A385" Ref="#PWR021"  Part="1" 
F 0 "#PWR021" H 9150 5350 50  0001 C CNN
F 1 "GND" H 9155 5427 50  0000 C CNN
F 2 "" H 9150 5600 50  0001 C CNN
F 3 "" H 9150 5600 50  0001 C CNN
	1    9150 5600
	1    0    0    -1  
$EndComp
$EndSCHEMATC
