EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A2 23386 16535
encoding utf-8
Sheet 2 5
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
L knownParts:74HC4017E U2
U 1 1 615C7590
P 7700 2950
F 0 "U2" H 7700 3515 50  0000 C CNN
F 1 "74HC4017E" H 7700 3424 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm_Socket_LongPads" H 7700 2950 50  0001 C CNN
F 3 "" H 7700 2950 50  0001 C CNN
	1    7700 2950
	1    0    0    -1  
$EndComp
$Comp
L knownParts:74HC4511E U4
U 1 1 615C7BD4
P 10000 8950
F 0 "U4" H 10000 9525 50  0000 C CNN
F 1 "74HC4511E" H 10000 9434 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm_Socket_LongPads" H 9900 9050 50  0001 C CNN
F 3 "" H 9900 9050 50  0001 C CNN
	1    10000 8950
	1    0    0    -1  
$EndComp
$Comp
L Transistor_Array:ULN2003 U6
U 1 1 615C878E
P 10650 2850
F 0 "U6" H 10650 3517 50  0000 C CNN
F 1 "ULN2003" H 10650 3426 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm_Socket_LongPads" H 10700 2300 50  0001 L CNN
F 3 "http://www.ti.com/lit/ds/symlink/uln2003a.pdf" H 10750 2650 50  0001 C CNN
	1    10650 2850
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74HC04 U3
U 1 1 615C97EA
P 8300 4500
F 0 "U3" H 8300 4817 50  0000 C CNN
F 1 "74HC04" H 8300 4726 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket_LongPads" H 8300 4500 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/74HC_HCT04.pdf" H 8300 4500 50  0001 C CNN
	1    8300 4500
	0    1    1    0   
$EndComp
$Comp
L 74xx:74HCT244 U1
U 1 1 615CABE8
P 7200 7050
F 0 "U1" H 7200 8031 50  0000 C CNN
F 1 "74HCT244" H 7200 7940 50  0000 C CNN
F 2 "Package_DIP:DIP-20_W7.62mm_Socket_LongPads" H 7200 7050 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/74HC_HCT244.pdf" H 7200 7050 50  0001 C CNN
	1    7200 7050
	0    1    1    0   
$EndComp
$Comp
L Connector:Conn_01x02_Male J11
U 1 1 615FB161
P 2150 2100
F 0 "J11" V 2212 2144 50  0000 L CNN
F 1 "Conn_01x02_Male" V 2303 2144 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 2150 2100 50  0001 C CNN
F 3 "~" H 2150 2100 50  0001 C CNN
	1    2150 2100
	0    1    1    0   
$EndComp
Text GLabel 2300 2550 2    50   Input ~ 0
a
Text GLabel 1900 2300 0    50   Input ~ 0
a
Text GLabel 2600 2400 3    50   Input ~ 0
_a
Wire Wire Line
	2150 2400 2600 2400
Wire Wire Line
	2150 2400 2150 2300
Wire Wire Line
	1900 2300 2050 2300
$Comp
L Connector:Conn_01x02_Male J14
U 1 1 615D341C
P 3500 2100
F 0 "J14" V 3562 2144 50  0000 L CNN
F 1 "Conn_01x02_Male" V 3653 2144 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 3500 2100 50  0001 C CNN
F 3 "~" H 3500 2100 50  0001 C CNN
	1    3500 2100
	0    1    1    0   
$EndComp
Text GLabel 3650 2550 2    50   Input ~ 0
d
Text GLabel 3250 2300 0    50   Input ~ 0
d
Text GLabel 3950 2400 3    50   Input ~ 0
_d
Wire Wire Line
	3500 2400 3950 2400
Wire Wire Line
	3500 2400 3500 2300
Wire Wire Line
	3250 2300 3400 2300
$Comp
L Connector:Conn_01x02_Male J12
U 1 1 615D43DF
P 2150 3000
F 0 "J12" V 2212 3044 50  0000 L CNN
F 1 "Conn_01x02_Male" V 2303 3044 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 2150 3000 50  0001 C CNN
F 3 "~" H 2150 3000 50  0001 C CNN
	1    2150 3000
	0    1    1    0   
$EndComp
Text GLabel 2300 3450 2    50   Input ~ 0
b
Text GLabel 1900 3200 0    50   Input ~ 0
b
Text GLabel 2600 3300 3    50   Input ~ 0
_b
Wire Wire Line
	2150 3300 2600 3300
Wire Wire Line
	2150 3300 2150 3200
Wire Wire Line
	1900 3200 2050 3200
$Comp
L Connector:Conn_01x02_Male J13
U 1 1 615D5360
P 2150 3900
F 0 "J13" V 2212 3944 50  0000 L CNN
F 1 "Conn_01x02_Male" V 2303 3944 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 2150 3900 50  0001 C CNN
F 3 "~" H 2150 3900 50  0001 C CNN
	1    2150 3900
	0    1    1    0   
$EndComp
Text GLabel 2300 4350 2    50   Input ~ 0
c
Text GLabel 1900 4100 0    50   Input ~ 0
c
Text GLabel 2600 4200 3    50   Input ~ 0
_c
Wire Wire Line
	2150 4200 2600 4200
Wire Wire Line
	2150 4200 2150 4100
Wire Wire Line
	1900 4100 2050 4100
$Comp
L Connector:Conn_01x02_Male J16
U 1 1 615D61E2
P 3500 3900
F 0 "J16" V 3562 3944 50  0000 L CNN
F 1 "Conn_01x02_Male" V 3653 3944 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 3500 3900 50  0001 C CNN
F 3 "~" H 3500 3900 50  0001 C CNN
	1    3500 3900
	0    1    1    0   
$EndComp
Text GLabel 3650 4350 2    50   Input ~ 0
f
Text GLabel 3250 4100 0    50   Input ~ 0
f
Text GLabel 3950 4200 3    50   Input ~ 0
_f
Wire Wire Line
	3500 4200 3950 4200
Wire Wire Line
	3500 4200 3500 4100
Wire Wire Line
	3250 4100 3400 4100
$Comp
L Connector:Conn_01x02_Male J15
U 1 1 615D729E
P 3500 3000
F 0 "J15" V 3562 3044 50  0000 L CNN
F 1 "Conn_01x02_Male" V 3653 3044 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 3500 3000 50  0001 C CNN
F 3 "~" H 3500 3000 50  0001 C CNN
	1    3500 3000
	0    1    1    0   
$EndComp
Text GLabel 3650 3450 2    50   Input ~ 0
e
Text GLabel 3250 3200 0    50   Input ~ 0
e
Text GLabel 3950 3300 3    50   Input ~ 0
_e
Wire Wire Line
	3500 3300 3950 3300
Wire Wire Line
	3500 3300 3500 3200
Wire Wire Line
	3250 3200 3400 3200
$Comp
L Connector:Conn_01x02_Male J17
U 1 1 615D84E9
P 4750 2100
F 0 "J17" V 4812 2144 50  0000 L CNN
F 1 "Conn_01x02_Male" V 4903 2144 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 4750 2100 50  0001 C CNN
F 3 "~" H 4750 2100 50  0001 C CNN
	1    4750 2100
	0    1    1    0   
$EndComp
Text GLabel 4900 2550 2    50   Input ~ 0
g
Text GLabel 4500 2300 0    50   Input ~ 0
g
Text GLabel 5200 2400 3    50   Input ~ 0
_g
Wire Wire Line
	4750 2400 5200 2400
Wire Wire Line
	4750 2400 4750 2300
Wire Wire Line
	4500 2300 4650 2300
$Comp
L Connector:Conn_01x02_Male J18
U 1 1 615D9953
P 4800 3000
F 0 "J18" V 4862 3044 50  0000 L CNN
F 1 "Conn_01x02_Male" V 4953 3044 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 4800 3000 50  0001 C CNN
F 3 "~" H 4800 3000 50  0001 C CNN
	1    4800 3000
	0    1    1    0   
$EndComp
Text GLabel 4950 3450 2    50   Input ~ 0
_dpBoard
Text GLabel 4550 3200 0    50   Input ~ 0
_dpBoard
Text GLabel 5250 3300 3    50   Input ~ 0
_dp
Wire Wire Line
	4800 3300 5250 3300
Wire Wire Line
	4800 3300 4800 3200
Wire Wire Line
	4550 3200 4700 3200
Wire Wire Line
	11500 2650 11050 2650
Text GLabel 14600 4450 2    50   Input ~ 0
thousands
Text GLabel 14600 4550 2    50   Input ~ 0
hundreds
Text GLabel 14600 4650 2    50   Input ~ 0
tens
Text GLabel 13200 4450 0    50   Input ~ 0
_a
Text GLabel 13200 4550 0    50   Input ~ 0
_b
Text GLabel 13200 4650 0    50   Input ~ 0
_c
Text GLabel 13200 4750 0    50   Input ~ 0
_d
Text GLabel 13200 4850 0    50   Input ~ 0
_e
Text GLabel 13200 4950 0    50   Input ~ 0
_f
Text GLabel 14600 4950 2    50   Input ~ 0
_g
Text GLabel 14600 4850 2    50   Input ~ 0
_dp
Wire Wire Line
	13200 4450 13700 4450
Wire Wire Line
	13200 4550 13700 4550
Wire Wire Line
	13200 4650 13700 4650
Wire Wire Line
	13200 4750 13700 4750
Wire Wire Line
	13200 4850 13700 4850
Wire Wire Line
	13200 4950 13700 4950
Text GLabel 14600 4750 2    50   Input ~ 0
ones
Text GLabel 11500 2950 2    50   Input ~ 0
hundreds
Wire Wire Line
	11500 2750 11050 2750
Wire Wire Line
	11050 2850 11500 2850
Wire Wire Line
	11500 2950 11050 2950
Wire Wire Line
	8100 2750 8850 2750
Wire Wire Line
	10250 2850 9400 2850
$Comp
L power:+5VP #PWR0107
U 1 1 6163812E
P 6800 3600
F 0 "#PWR0107" H 6800 3450 50  0001 C CNN
F 1 "+5VP" H 6815 3773 50  0000 C CNN
F 2 "" H 6800 3600 50  0001 C CNN
F 3 "" H 6800 3600 50  0001 C CNN
	1    6800 3600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0108
U 1 1 61638B84
P 6800 3750
F 0 "#PWR0108" H 6800 3500 50  0001 C CNN
F 1 "GND" H 6805 3577 50  0000 C CNN
F 2 "" H 6800 3750 50  0001 C CNN
F 3 "" H 6800 3750 50  0001 C CNN
	1    6800 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	6800 3750 7300 3750
Wire Wire Line
	6800 3600 7050 3600
Wire Wire Line
	7300 3050 7150 3050
Wire Wire Line
	7150 3050 7150 2300
Wire Wire Line
	7150 2300 8200 2300
Wire Wire Line
	8200 2300 8200 3050
Wire Wire Line
	8200 3050 8100 3050
Text GLabel 6950 2700 0    50   Input ~ 0
_clk
Wire Wire Line
	6950 2700 7300 2700
$Comp
L power:GND #PWR0109
U 1 1 616423BA
P 7050 2800
F 0 "#PWR0109" H 7050 2550 50  0001 C CNN
F 1 "GND" H 7055 2627 50  0000 C CNN
F 2 "" H 7050 2800 50  0001 C CNN
F 3 "" H 7050 2800 50  0001 C CNN
	1    7050 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	7050 2800 7300 2800
$Comp
L power:GND #PWR0110
U 1 1 61648C66
P 10650 3550
F 0 "#PWR0110" H 10650 3300 50  0001 C CNN
F 1 "GND" H 10655 3377 50  0000 C CNN
F 2 "" H 10650 3550 50  0001 C CNN
F 3 "" H 10650 3550 50  0001 C CNN
	1    10650 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	10650 3550 10650 3450
$Comp
L 74xx:74HC04 U3
U 2 1 616B9818
P 8850 4500
F 0 "U3" H 8850 4817 50  0000 C CNN
F 1 "74HC04" H 8850 4726 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket_LongPads" H 8850 4500 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/74HC_HCT04.pdf" H 8850 4500 50  0001 C CNN
	2    8850 4500
	0    1    1    0   
$EndComp
$Comp
L 74xx:74HC04 U3
U 3 1 616BBE86
P 9400 4500
F 0 "U3" H 9400 4817 50  0000 C CNN
F 1 "74HC04" H 9400 4726 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket_LongPads" H 9400 4500 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/74HC_HCT04.pdf" H 9400 4500 50  0001 C CNN
	3    9400 4500
	0    1    1    0   
$EndComp
$Comp
L 74xx:74HC04 U3
U 4 1 616BE426
P 9950 4500
F 0 "U3" H 9950 4817 50  0000 C CNN
F 1 "74HC04" H 9950 4726 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket_LongPads" H 9950 4500 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/74HC_HCT04.pdf" H 9950 4500 50  0001 C CNN
	4    9950 4500
	0    1    1    0   
$EndComp
Wire Wire Line
	8300 2650 8300 4200
Wire Wire Line
	8300 2650 8100 2650
Wire Wire Line
	8850 4200 8850 2750
Wire Wire Line
	9400 2850 9400 4200
Wire Wire Line
	8300 2650 10250 2650
Connection ~ 8300 2650
Wire Wire Line
	8850 2750 10250 2750
Connection ~ 8850 2750
Wire Wire Line
	9400 2850 8100 2850
Connection ~ 9400 2850
Wire Wire Line
	10250 2950 9950 2950
Wire Wire Line
	9950 4200 9950 2950
Connection ~ 9950 2950
Wire Wire Line
	9950 2950 8100 2950
Wire Wire Line
	6800 4800 8300 4800
Wire Wire Line
	6700 4950 8850 4950
Wire Wire Line
	8850 4950 8850 4800
Text Label 8900 6850 3    50   ~ 0
BCD_in[1..4]
Wire Wire Line
	7600 6550 7600 6450
Wire Wire Line
	7400 6250 8800 6250
Wire Wire Line
	7500 6550 7500 6350
Wire Wire Line
	7400 6550 7400 6250
Wire Wire Line
	7700 6550 8800 6550
Wire Wire Line
	7500 6350 8800 6350
Wire Wire Line
	7600 6450 8800 6450
Text Label 8500 6550 0    50   ~ 0
BCD_in1
Text Label 8500 6450 0    50   ~ 0
BCD_in2
Text Label 8500 6350 0    50   ~ 0
BCD_in3
Text Label 8500 6250 0    50   ~ 0
BCD_in4
Entry Wire Line
	8800 6250 8900 6350
Entry Wire Line
	8800 6350 8900 6450
Entry Wire Line
	8800 6450 8900 6550
Entry Wire Line
	8800 6550 8900 6650
Wire Wire Line
	6800 4800 6800 6550
Wire Wire Line
	6700 4950 6700 6550
Wire Wire Line
	7300 6550 7300 6150
Wire Wire Line
	7300 6150 8800 6150
Wire Wire Line
	7200 6550 7200 6050
Wire Wire Line
	7200 6050 8800 6050
Wire Wire Line
	7100 6550 7100 5950
Wire Wire Line
	7100 5950 8800 5950
Wire Wire Line
	7000 6550 7000 5850
Wire Wire Line
	7000 5850 8800 5850
Text Label 8500 6150 0    50   ~ 0
BCD_in1
Text Label 8500 6050 0    50   ~ 0
BCD_in2
Text Label 8500 5950 0    50   ~ 0
BCD_in3
Text Label 8500 5850 0    50   ~ 0
BCD_in4
$Comp
L 74xx:74HCT244 U5
U 1 1 615C8EE9
P 10600 7050
F 0 "U5" H 10600 8031 50  0000 C CNN
F 1 "74HCT244" H 10600 7940 50  0000 C CNN
F 2 "Package_DIP:DIP-20_W7.62mm_Socket_LongPads" H 10600 7050 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/74HC_HCT244.pdf" H 10600 7050 50  0001 C CNN
	1    10600 7050
	0    -1   1    0   
$EndComp
Wire Wire Line
	10100 6550 9000 6550
Wire Wire Line
	10200 6550 10200 6450
Wire Wire Line
	10200 6450 9000 6450
Wire Wire Line
	10300 6550 10300 6350
Wire Wire Line
	9000 6350 10300 6350
Wire Wire Line
	10400 6550 10400 6250
Wire Wire Line
	10400 6250 9000 6250
Wire Wire Line
	10500 6550 10500 6150
Wire Wire Line
	10500 6150 9000 6150
Wire Wire Line
	10600 6550 10600 6050
Wire Wire Line
	10600 6050 9000 6050
Wire Wire Line
	10700 6550 10700 5950
Wire Wire Line
	10700 5950 9000 5950
Wire Wire Line
	10800 6550 10800 5850
Wire Wire Line
	10800 5850 9000 5850
Text Label 9050 6150 0    50   ~ 0
BCD_in1
Text Label 9050 6050 0    50   ~ 0
BCD_in2
Text Label 9050 5950 0    50   ~ 0
BCD_in3
Text Label 9050 5850 0    50   ~ 0
BCD_in4
Text Label 9050 6550 0    50   ~ 0
BCD_in1
Text Label 9050 6450 0    50   ~ 0
BCD_in2
Text Label 9050 6350 0    50   ~ 0
BCD_in3
Text Label 9050 6250 0    50   ~ 0
BCD_in4
Entry Wire Line
	9000 5850 8900 5950
Entry Wire Line
	9000 5950 8900 6050
Entry Wire Line
	9000 6050 8900 6150
Entry Wire Line
	9000 6150 8900 6250
Entry Wire Line
	9000 6250 8900 6350
Entry Wire Line
	9000 6350 8900 6450
Entry Wire Line
	9000 6450 8900 6550
Entry Wire Line
	9000 6550 8900 6650
Entry Wire Line
	8800 5850 8900 5950
Entry Wire Line
	8800 5950 8900 6050
Entry Wire Line
	8800 6050 8900 6150
Entry Wire Line
	8800 6150 8900 6250
Wire Wire Line
	9400 4800 9400 4950
Wire Wire Line
	9400 4950 11000 4950
Wire Wire Line
	11000 4950 11000 6550
Wire Wire Line
	9950 4800 11100 4800
Wire Wire Line
	11100 4800 11100 6550
Text Label 8900 8800 1    50   ~ 0
BCF_out[1..4]
Wire Wire Line
	7700 7550 8800 7550
Wire Wire Line
	7600 7550 7600 7650
Wire Wire Line
	7600 7650 8800 7650
Wire Wire Line
	7500 7550 7500 7750
Wire Wire Line
	7500 7750 8800 7750
Wire Wire Line
	7400 7550 7400 7850
Wire Wire Line
	7400 7850 8800 7850
Text Label 8450 7550 0    50   ~ 0
BCD_out1
Text Label 8450 7650 0    50   ~ 0
BCD_out2
Text Label 8450 7750 0    50   ~ 0
BCD_out3
Text Label 8450 7850 0    50   ~ 0
BCD_out4
Entry Wire Line
	8800 7550 8900 7650
Entry Wire Line
	8800 7650 8900 7750
Entry Wire Line
	8800 7750 8900 7850
Entry Wire Line
	8800 7850 8900 7950
Wire Wire Line
	7300 7550 7300 7950
Wire Wire Line
	7300 7950 8800 7950
Wire Wire Line
	7200 7550 7200 8050
Wire Wire Line
	7200 8050 8800 8050
Wire Wire Line
	7100 7550 7100 8150
Wire Wire Line
	7100 8150 8800 8150
Wire Wire Line
	7000 7550 7000 8250
Wire Wire Line
	7000 8250 8800 8250
Text Label 8450 7950 0    50   ~ 0
BCD_out1
Text Label 8450 8050 0    50   ~ 0
BCD_out2
Text Label 8450 8150 0    50   ~ 0
BCD_out3
Text Label 8450 8250 0    50   ~ 0
BCD_out4
Entry Wire Line
	8800 7950 8900 8050
Entry Wire Line
	8800 8050 8900 8150
Entry Wire Line
	8800 8150 8900 8250
Entry Wire Line
	8800 8250 8900 8350
Wire Wire Line
	10100 7550 9000 7550
Wire Wire Line
	10200 7550 10200 7650
Wire Wire Line
	10200 7650 9000 7650
Wire Wire Line
	10300 7550 10300 7750
Wire Wire Line
	10400 7550 10400 7850
Wire Wire Line
	10400 7850 9000 7850
Wire Wire Line
	10500 7550 10500 7950
Wire Wire Line
	10500 7950 9000 7950
Wire Wire Line
	10600 7550 10600 8050
Wire Wire Line
	10600 8050 9000 8050
Wire Wire Line
	10700 7550 10700 8150
Wire Wire Line
	10700 8150 9000 8150
Wire Wire Line
	10800 7550 10800 8250
Wire Wire Line
	10800 8250 9000 8250
Entry Wire Line
	9000 7550 8900 7650
Entry Wire Line
	9000 7650 8900 7750
Wire Wire Line
	9000 7750 10300 7750
Entry Wire Line
	9000 7750 8900 7850
Entry Wire Line
	9000 7850 8900 7950
Entry Wire Line
	9000 7950 8900 8050
Entry Wire Line
	9000 8050 8900 8150
Entry Wire Line
	9000 8150 8900 8250
Entry Wire Line
	9000 8250 8900 8350
Text Label 9000 7550 0    50   ~ 0
BCD_out1
Text Label 9000 7650 0    50   ~ 0
BCD_out2
Text Label 9000 7750 0    50   ~ 0
BCD_out3
Text Label 9000 7850 0    50   ~ 0
BCD_out4
Text Label 9000 7950 0    50   ~ 0
BCD_out1
Text Label 9000 8050 0    50   ~ 0
BCD_out2
Text Label 9000 8150 0    50   ~ 0
BCD_out3
Text Label 9000 8250 0    50   ~ 0
BCD_out4
$Comp
L power:+5VP #PWR0111
U 1 1 6195669E
P 8000 7050
F 0 "#PWR0111" H 8000 6900 50  0001 C CNN
F 1 "+5VP" H 8015 7223 50  0000 C CNN
F 2 "" H 8000 7050 50  0001 C CNN
F 3 "" H 8000 7050 50  0001 C CNN
	1    8000 7050
	1    0    0    -1  
$EndComp
$Comp
L power:+5VP #PWR0112
U 1 1 61957202
P 9800 7050
F 0 "#PWR0112" H 9800 6900 50  0001 C CNN
F 1 "+5VP" H 9815 7223 50  0000 C CNN
F 2 "" H 9800 7050 50  0001 C CNN
F 3 "" H 9800 7050 50  0001 C CNN
	1    9800 7050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0113
U 1 1 61957852
P 6400 7050
F 0 "#PWR0113" H 6400 6800 50  0001 C CNN
F 1 "GND" H 6405 6877 50  0000 C CNN
F 2 "" H 6400 7050 50  0001 C CNN
F 3 "" H 6400 7050 50  0001 C CNN
	1    6400 7050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0114
U 1 1 61957DC1
P 11400 7050
F 0 "#PWR0114" H 11400 6800 50  0001 C CNN
F 1 "GND" H 11405 6877 50  0000 C CNN
F 2 "" H 11400 7050 50  0001 C CNN
F 3 "" H 11400 7050 50  0001 C CNN
	1    11400 7050
	1    0    0    -1  
$EndComp
Wire Wire Line
	9600 9200 9000 9200
Wire Wire Line
	9600 9100 9000 9100
Wire Wire Line
	9600 8700 9000 8700
Wire Wire Line
	9600 8600 9000 8600
Text Label 9100 9200 0    50   ~ 0
BCD_out1
Text Label 9050 8600 0    50   ~ 0
BCD_out2
Text Label 9050 8700 0    50   ~ 0
BCD_out3
Text Label 9150 9100 0    50   ~ 0
BCD_out4
Entry Wire Line
	9000 9200 8900 9300
Entry Wire Line
	9000 8600 8900 8700
Entry Wire Line
	9000 8700 8900 8800
Entry Wire Line
	9000 9100 8900 9200
$Comp
L power:+5VP #PWR0115
U 1 1 619D28AB
P 8550 8800
F 0 "#PWR0115" H 8550 8650 50  0001 C CNN
F 1 "+5VP" H 8565 8973 50  0000 C CNN
F 2 "" H 8550 8800 50  0001 C CNN
F 3 "" H 8550 8800 50  0001 C CNN
	1    8550 8800
	1    0    0    -1  
$EndComp
$Comp
L power:+5VP #PWR0116
U 1 1 619D2C01
P 8300 8900
F 0 "#PWR0116" H 8300 8750 50  0001 C CNN
F 1 "+5VP" H 8315 9073 50  0000 C CNN
F 2 "" H 8300 8900 50  0001 C CNN
F 3 "" H 8300 8900 50  0001 C CNN
	1    8300 8900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0117
U 1 1 619D3376
P 8150 9000
F 0 "#PWR0117" H 8150 8750 50  0001 C CNN
F 1 "GND" H 8155 8827 50  0000 C CNN
F 2 "" H 8150 9000 50  0001 C CNN
F 3 "" H 8150 9000 50  0001 C CNN
	1    8150 9000
	1    0    0    -1  
$EndComp
Wire Wire Line
	8300 8900 9600 8900
Wire Wire Line
	8150 9000 9600 9000
$Comp
L power:GND #PWR0118
U 1 1 619F5272
P 9600 9300
F 0 "#PWR0118" H 9600 9050 50  0001 C CNN
F 1 "GND" H 9605 9127 50  0000 C CNN
F 2 "" H 9600 9300 50  0001 C CNN
F 3 "" H 9600 9300 50  0001 C CNN
	1    9600 9300
	1    0    0    -1  
$EndComp
$Comp
L power:+5VP #PWR0119
U 1 1 619F5591
P 10550 8600
F 0 "#PWR0119" H 10550 8450 50  0001 C CNN
F 1 "+5VP" H 10565 8773 50  0000 C CNN
F 2 "" H 10550 8600 50  0001 C CNN
F 3 "" H 10550 8600 50  0001 C CNN
	1    10550 8600
	1    0    0    -1  
$EndComp
Wire Wire Line
	10550 8600 10400 8600
Text GLabel 10900 8900 2    50   Input ~ 0
a
Wire Wire Line
	10900 8900 10400 8900
Text GLabel 10600 8700 2    50   Input ~ 0
f
Text GLabel 11250 9200 2    50   Input ~ 0
d
Wire Wire Line
	11250 9200 10400 9200
Text GLabel 11050 9000 2    50   Input ~ 0
b
Wire Wire Line
	11050 9000 10400 9000
Text GLabel 11150 9100 2    50   Input ~ 0
c
Wire Wire Line
	11150 9100 10400 9100
Text GLabel 10750 8800 2    50   Input ~ 0
g
Wire Wire Line
	10750 8800 10400 8800
Wire Wire Line
	10600 8700 10400 8700
Text GLabel 11350 9300 2    50   Input ~ 0
e
Wire Wire Line
	11350 9300 10400 9300
NoConn ~ 8100 3150
NoConn ~ 8100 3350
NoConn ~ 8100 3550
NoConn ~ 8100 3450
NoConn ~ 8100 3250
NoConn ~ 11050 2450
NoConn ~ 11050 3050
NoConn ~ 11050 3150
NoConn ~ 11050 3250
NoConn ~ 10250 3250
NoConn ~ 10250 3050
NoConn ~ 10250 3150
$Comp
L 74xx:74HC04 U3
U 7 1 61B11876
P 11400 4400
F 0 "U3" H 11400 4717 50  0000 C CNN
F 1 "74HC04" H 11400 4626 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket_LongPads" H 11400 4400 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/74HC_HCT04.pdf" H 11400 4400 50  0001 C CNN
	7    11400 4400
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0120
U 1 1 61B15BD6
P 10900 4400
F 0 "#PWR0120" H 10900 4150 50  0001 C CNN
F 1 "GND" H 10905 4227 50  0000 C CNN
F 2 "" H 10900 4400 50  0001 C CNN
F 3 "" H 10900 4400 50  0001 C CNN
	1    10900 4400
	1    0    0    -1  
$EndComp
$Comp
L power:+5VP #PWR0121
U 1 1 61B1604F
P 11900 4400
F 0 "#PWR0121" H 11900 4250 50  0001 C CNN
F 1 "+5VP" H 11915 4573 50  0000 C CNN
F 2 "" H 11900 4400 50  0001 C CNN
F 3 "" H 11900 4400 50  0001 C CNN
	1    11900 4400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0122
U 1 1 61B5E4C6
P 9050 3750
F 0 "#PWR0122" H 9050 3500 50  0001 C CNN
F 1 "GND" H 9055 3577 50  0000 C CNN
F 2 "" H 9050 3750 50  0001 C CNN
F 3 "" H 9050 3750 50  0001 C CNN
	1    9050 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	8750 3750 9050 3750
$Comp
L power:+5VP #PWR0123
U 1 1 61B69A18
P 8550 3550
F 0 "#PWR0123" H 8550 3400 50  0001 C CNN
F 1 "+5VP" H 8565 3723 50  0000 C CNN
F 2 "" H 8550 3550 50  0001 C CNN
F 3 "" H 8550 3550 50  0001 C CNN
	1    8550 3550
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x03_Male J19
U 1 1 61B75224
P 8650 4100
F 0 "J19" V 8804 3912 50  0000 R CNN
F 1 "Conn_01x03_Male" V 8713 3912 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 8650 4100 50  0001 C CNN
F 3 "~" H 8650 4100 50  0001 C CNN
	1    8650 4100
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_POT_TRIM RV8
U 1 1 61BA8868
P 4800 3450
F 0 "RV8" H 4730 3496 50  0000 R CNN
F 1 "R_POT_TRIM" H 4730 3405 50  0000 R CNN
F 2 "Potentiometer_THT:Potentiometer_Bourns_3296W_Vertical" H 4800 3450 50  0001 C CNN
F 3 "~" H 4800 3450 50  0001 C CNN
	1    4800 3450
	1    0    0    -1  
$EndComp
Connection ~ 4800 3300
$Comp
L Device:R_POT_TRIM RV7
U 1 1 61BB9EC3
P 4750 2550
F 0 "RV7" H 4680 2596 50  0000 R CNN
F 1 "R_POT_TRIM" H 4680 2505 50  0000 R CNN
F 2 "Potentiometer_THT:Potentiometer_Bourns_3296W_Vertical" H 4750 2550 50  0001 C CNN
F 3 "~" H 4750 2550 50  0001 C CNN
	1    4750 2550
	1    0    0    -1  
$EndComp
Connection ~ 4750 2400
$Comp
L Device:R_POT_TRIM RV4
U 1 1 61BBA1EB
P 3500 2550
F 0 "RV4" H 3430 2596 50  0000 R CNN
F 1 "R_POT_TRIM" H 3430 2505 50  0000 R CNN
F 2 "Potentiometer_THT:Potentiometer_Bourns_3296W_Vertical" H 3500 2550 50  0001 C CNN
F 3 "~" H 3500 2550 50  0001 C CNN
	1    3500 2550
	1    0    0    -1  
$EndComp
Connection ~ 3500 2400
$Comp
L Device:R_POT_TRIM RV5
U 1 1 61BBA4EF
P 3500 3450
F 0 "RV5" H 3430 3496 50  0000 R CNN
F 1 "R_POT_TRIM" H 3430 3405 50  0000 R CNN
F 2 "Potentiometer_THT:Potentiometer_Bourns_3296W_Vertical" H 3500 3450 50  0001 C CNN
F 3 "~" H 3500 3450 50  0001 C CNN
	1    3500 3450
	1    0    0    -1  
$EndComp
Connection ~ 3500 3300
$Comp
L Device:R_POT_TRIM RV6
U 1 1 61BBA984
P 3500 4350
F 0 "RV6" H 3430 4396 50  0000 R CNN
F 1 "R_POT_TRIM" H 3430 4305 50  0000 R CNN
F 2 "Potentiometer_THT:Potentiometer_Bourns_3296W_Vertical" H 3500 4350 50  0001 C CNN
F 3 "~" H 3500 4350 50  0001 C CNN
	1    3500 4350
	1    0    0    -1  
$EndComp
Connection ~ 3500 4200
$Comp
L Device:R_POT_TRIM RV3
U 1 1 61BBAC2A
P 2150 4350
F 0 "RV3" H 2080 4396 50  0000 R CNN
F 1 "R_POT_TRIM" H 2080 4305 50  0000 R CNN
F 2 "Potentiometer_THT:Potentiometer_Bourns_3296W_Vertical" H 2150 4350 50  0001 C CNN
F 3 "~" H 2150 4350 50  0001 C CNN
	1    2150 4350
	1    0    0    -1  
$EndComp
Connection ~ 2150 4200
$Comp
L Device:R_POT_TRIM RV2
U 1 1 61BBAF33
P 2150 3450
F 0 "RV2" H 2080 3496 50  0000 R CNN
F 1 "R_POT_TRIM" H 2080 3405 50  0000 R CNN
F 2 "Potentiometer_THT:Potentiometer_Bourns_3296W_Vertical" H 2150 3450 50  0001 C CNN
F 3 "~" H 2150 3450 50  0001 C CNN
	1    2150 3450
	1    0    0    -1  
$EndComp
Connection ~ 2150 3300
$Comp
L Device:R_POT_TRIM RV1
U 1 1 61BBB289
P 2150 2550
F 0 "RV1" H 2080 2596 50  0000 R CNN
F 1 "R_POT_TRIM" H 2080 2505 50  0000 R CNN
F 2 "Potentiometer_THT:Potentiometer_Bourns_3296W_Vertical" H 2150 2550 50  0001 C CNN
F 3 "~" H 2150 2550 50  0001 C CNN
	1    2150 2550
	1    0    0    -1  
$EndComp
Connection ~ 2150 2400
Text GLabel 8150 5250 0    39   Input ~ 0
_a1
Text GLabel 8150 5350 0    39   Input ~ 0
_a2
Text GLabel 8150 5450 0    39   Input ~ 0
_a3
Text GLabel 8150 5550 0    39   Input ~ 0
_a4
Entry Wire Line
	8800 5250 8900 5350
Entry Wire Line
	8800 5350 8900 5450
Entry Wire Line
	8800 5450 8900 5550
Entry Wire Line
	8800 5550 8900 5650
Text GLabel 8300 4800 2    50   Input ~ 0
_thousands
Text GLabel 8850 4950 2    50   Input ~ 0
_ones
Text GLabel 9400 4950 2    50   Input ~ 0
_tens
Text GLabel 9950 4800 2    50   Input ~ 0
_hundreds
Text GLabel 11500 2850 2    50   Input ~ 0
tens
Text GLabel 11500 2750 2    50   Input ~ 0
ones
Text GLabel 11500 2650 2    50   Input ~ 0
thousands
Text Label 8500 5250 0    50   ~ 0
BCD_in1
Text Label 8500 5350 0    50   ~ 0
BCD_in2
Text Label 8500 5450 0    50   ~ 0
BCD_in3
Text Label 8800 5550 2    50   ~ 0
BCD_in4
Wire Wire Line
	8150 5250 8800 5250
Wire Wire Line
	8150 5350 8800 5350
Wire Wire Line
	8150 5450 8800 5450
Wire Wire Line
	8150 5550 8800 5550
Wire Wire Line
	14600 4950 14200 4950
Wire Wire Line
	14600 4850 14200 4850
Wire Wire Line
	14600 4750 14200 4750
Wire Wire Line
	14600 4650 14200 4650
Wire Wire Line
	14600 4550 14200 4550
Wire Wire Line
	14600 4450 14200 4450
$Comp
L Display_Character:HDSP-7503 U8
U 1 1 620ADD50
P 14450 3000
F 0 "U8" H 14450 3667 50  0000 C CNN
F 1 "HDSP-7503" H 14450 3576 50  0000 C CNN
F 2 "Display_7Segment:HDSP-A151" H 14450 2450 50  0001 C CNN
F 3 "https://docs.broadcom.com/docs/AV02-2553EN" H 14050 3550 50  0001 C CNN
	1    14450 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	14750 3300 14750 3400
Wire Wire Line
	15100 3400 14750 3400
Connection ~ 14750 3400
Text GLabel 13700 2700 0    50   Input ~ 0
+a
Text GLabel 13700 2800 0    50   Input ~ 0
+b
Text GLabel 13700 2900 0    50   Input ~ 0
+c
Text GLabel 13700 3000 0    50   Input ~ 0
+d
Text GLabel 13700 3100 0    50   Input ~ 0
+e
Text GLabel 13700 3200 0    50   Input ~ 0
+f
Text GLabel 13700 3300 0    50   Input ~ 0
+g
Text GLabel 13700 3400 0    50   Input ~ 0
+dp
Wire Wire Line
	13700 3400 14150 3400
Text GLabel 15100 3400 2    50   Input ~ 0
+ones
$Comp
L Display_Character:HDSP-7503 U10
U 1 1 620ADD6A
P 16550 3000
F 0 "U10" H 16550 3667 50  0000 C CNN
F 1 "HDSP-7503" H 16550 3576 50  0000 C CNN
F 2 "Display_7Segment:HDSP-A151" H 16550 2450 50  0001 C CNN
F 3 "https://docs.broadcom.com/docs/AV02-2553EN" H 16150 3550 50  0001 C CNN
	1    16550 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	16850 3300 16850 3400
Wire Wire Line
	17200 3400 16850 3400
Connection ~ 16850 3400
$Comp
L Display_Character:HDSP-7503 U12
U 1 1 620ADD83
P 18550 3000
F 0 "U12" H 18550 3667 50  0000 C CNN
F 1 "HDSP-7503" H 18550 3576 50  0000 C CNN
F 2 "Display_7Segment:HDSP-A151" H 18550 2450 50  0001 C CNN
F 3 "https://docs.broadcom.com/docs/AV02-2553EN" H 18150 3550 50  0001 C CNN
	1    18550 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	18850 3300 18850 3400
Wire Wire Line
	19200 3400 18850 3400
Connection ~ 18850 3400
$Comp
L Display_Character:HDSP-7503 U14
U 1 1 620ADD9C
P 20750 3000
F 0 "U14" H 20750 3667 50  0000 C CNN
F 1 "HDSP-7503" H 20750 3576 50  0000 C CNN
F 2 "Display_7Segment:HDSP-A151" H 20750 2450 50  0001 C CNN
F 3 "https://docs.broadcom.com/docs/AV02-2553EN" H 20350 3550 50  0001 C CNN
	1    20750 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	21050 3300 21050 3400
Wire Wire Line
	21400 3400 21050 3400
Connection ~ 21050 3400
Text GLabel 17200 3400 2    50   Input ~ 0
+tens
Text GLabel 19200 3400 2    50   Input ~ 0
+hundreds
Text GLabel 21400 3400 2    50   Input ~ 0
+thousands
Wire Notes Line
	13000 2250 13000 3700
Wire Notes Line
	13000 3700 22250 3700
Wire Notes Line
	22250 3700 22250 2250
Wire Notes Line
	22250 2250 13000 2250
Text GLabel 22550 2500 2    50   Input ~ 0
+thousands
Text GLabel 22550 2600 2    50   Input ~ 0
+hundreds
Text GLabel 22550 2700 2    50   Input ~ 0
+tens
Text GLabel 21150 2500 0    50   Input ~ 0
+a
Text GLabel 21150 2600 0    50   Input ~ 0
+b
Text GLabel 21150 2700 0    50   Input ~ 0
+c
Text GLabel 21150 2800 0    50   Input ~ 0
+d
Text GLabel 21150 2900 0    50   Input ~ 0
+e
Text GLabel 21150 3000 0    50   Input ~ 0
+f
Text GLabel 22550 3000 2    50   Input ~ 0
+g
Text GLabel 22550 2900 2    50   Input ~ 0
+dp
Wire Wire Line
	21150 2500 21650 2500
Wire Wire Line
	21150 2600 21650 2600
Wire Wire Line
	21150 2700 21650 2700
Wire Wire Line
	21150 2800 21650 2800
Wire Wire Line
	21150 2900 21650 2900
Wire Wire Line
	21150 3000 21650 3000
Text GLabel 22550 2800 2    50   Input ~ 0
+ones
Wire Wire Line
	22550 3000 22150 3000
Wire Wire Line
	22550 2900 22150 2900
Wire Wire Line
	22550 2800 22150 2800
Wire Wire Line
	22550 2700 22150 2700
Wire Wire Line
	22550 2600 22150 2600
Wire Wire Line
	22550 2500 22150 2500
Wire Wire Line
	8650 3750 8650 3900
Wire Wire Line
	8100 3750 8650 3750
Wire Wire Line
	8550 3550 8550 3900
Wire Wire Line
	8750 3750 8750 3900
Wire Wire Line
	13700 2700 14150 2700
Connection ~ 14150 2700
Wire Wire Line
	14150 2700 16250 2700
Wire Wire Line
	13700 2800 14150 2800
Connection ~ 14150 2800
Wire Wire Line
	14150 2800 16250 2800
Connection ~ 16250 2800
Connection ~ 16250 2700
Wire Wire Line
	16250 2700 18250 2700
Connection ~ 18250 2700
Wire Wire Line
	18250 2700 20450 2700
Connection ~ 20450 2700
Wire Wire Line
	20450 2700 20500 2700
Connection ~ 18250 2800
Wire Wire Line
	18250 2800 20450 2800
Connection ~ 20450 2800
Wire Wire Line
	20450 2800 20500 2800
Wire Wire Line
	13700 2900 14150 2900
Wire Wire Line
	16250 2800 18250 2800
Connection ~ 14150 2900
Wire Wire Line
	14150 2900 16250 2900
Connection ~ 16250 2900
Wire Wire Line
	16250 2900 18250 2900
Connection ~ 18250 2900
Wire Wire Line
	18250 2900 20450 2900
Connection ~ 20450 2900
Wire Wire Line
	20450 2900 20500 2900
Wire Wire Line
	13700 3000 14150 3000
Connection ~ 14150 3000
Wire Wire Line
	14150 3000 16250 3000
Connection ~ 16250 3000
Wire Wire Line
	16250 3000 18250 3000
Connection ~ 18250 3000
Wire Wire Line
	18250 3000 20450 3000
Connection ~ 20450 3000
Wire Wire Line
	20450 3000 20500 3000
Wire Wire Line
	13700 3100 14150 3100
Connection ~ 14150 3100
Wire Wire Line
	14150 3100 16250 3100
Connection ~ 16250 3100
Wire Wire Line
	16250 3100 18250 3100
Connection ~ 18250 3100
Wire Wire Line
	18250 3100 20450 3100
Connection ~ 20450 3100
Wire Wire Line
	20450 3100 20500 3100
Wire Wire Line
	13700 3200 14150 3200
Connection ~ 14150 3200
Wire Wire Line
	14150 3200 16250 3200
Connection ~ 16250 3200
Wire Wire Line
	16250 3200 18250 3200
Connection ~ 18250 3200
Wire Wire Line
	18250 3200 20450 3200
Connection ~ 20450 3200
Wire Wire Line
	20450 3200 20500 3200
Text GLabel 16250 3400 0    50   Input ~ 0
+dp
Text GLabel 18250 3400 0    50   Input ~ 0
+dp
Text GLabel 20450 3400 0    50   Input ~ 0
+dp
Text GLabel 16250 3300 0    50   Input ~ 0
+g
Text GLabel 18250 3300 0    50   Input ~ 0
+g
Text GLabel 20400 3300 0    50   Input ~ 0
+g
Wire Wire Line
	20400 3300 20450 3300
Wire Wire Line
	13700 3300 14150 3300
$Comp
L Connector_Generic:Conn_02x07_Counter_Clockwise J21
U 1 1 623DEAF5
P 21850 2800
F 0 "J21" H 21900 3317 50  0000 C CNN
F 1 "Conn_02x07_Counter_Clockwise" H 21900 3226 50  0000 C CNN
F 2 "knownParts:PinHeader_2x07_P2.54mm_Vertical-counterclockwise" H 21850 2800 50  0001 C CNN
F 3 "~" H 21850 2800 50  0001 C CNN
	1    21850 2800
	1    0    0    -1  
$EndComp
NoConn ~ 21650 3100
NoConn ~ 22150 3100
$Comp
L Connector_Generic:Conn_02x07_Counter_Clockwise J20
U 1 1 62411B05
P 13900 4750
F 0 "J20" H 13950 5267 50  0000 C CNN
F 1 "Conn_02x07_Counter_Clockwise" H 13950 5176 50  0000 C CNN
F 2 "knownParts:PinHeader_2x07_P2.54mm_Vertical-counterclockwise" H 13900 4750 50  0001 C CNN
F 3 "~" H 13900 4750 50  0001 C CNN
	1    13900 4750
	1    0    0    -1  
$EndComp
NoConn ~ 13700 5050
NoConn ~ 14200 5050
$Comp
L Mechanical:MountingHole H1
U 1 1 6242B35A
P 15800 4450
F 0 "H1" H 15900 4496 50  0000 L CNN
F 1 "MountingHole" H 15900 4405 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_Pad_Via" H 15800 4450 50  0001 C CNN
F 3 "~" H 15800 4450 50  0001 C CNN
	1    15800 4450
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H2
U 1 1 6242B6DE
P 16550 4450
F 0 "H2" H 16650 4496 50  0000 L CNN
F 1 "MountingHole" H 16650 4405 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_Pad_Via" H 16550 4450 50  0001 C CNN
F 3 "~" H 16550 4450 50  0001 C CNN
	1    16550 4450
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H3
U 1 1 6242BB84
P 17300 4450
F 0 "H3" H 17400 4496 50  0000 L CNN
F 1 "MountingHole" H 17400 4405 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_Pad_Via" H 17300 4450 50  0001 C CNN
F 3 "~" H 17300 4450 50  0001 C CNN
	1    17300 4450
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H4
U 1 1 6242C2A4
P 18000 4450
F 0 "H4" H 18100 4496 50  0000 L CNN
F 1 "MountingHole" H 18100 4405 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_Pad_Via" H 18000 4450 50  0001 C CNN
F 3 "~" H 18000 4450 50  0001 C CNN
	1    18000 4450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR012
U 1 1 62482F89
P 2150 2700
F 0 "#PWR012" H 2150 2450 50  0001 C CNN
F 1 "GND" H 2155 2527 50  0000 C CNN
F 2 "" H 2150 2700 50  0001 C CNN
F 3 "" H 2150 2700 50  0001 C CNN
	1    2150 2700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR020
U 1 1 624835E3
P 3500 2700
F 0 "#PWR020" H 3500 2450 50  0001 C CNN
F 1 "GND" H 3505 2527 50  0000 C CNN
F 2 "" H 3500 2700 50  0001 C CNN
F 3 "" H 3500 2700 50  0001 C CNN
	1    3500 2700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR023
U 1 1 624839BD
P 4750 2700
F 0 "#PWR023" H 4750 2450 50  0001 C CNN
F 1 "GND" H 4755 2527 50  0000 C CNN
F 2 "" H 4750 2700 50  0001 C CNN
F 3 "" H 4750 2700 50  0001 C CNN
	1    4750 2700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR013
U 1 1 62484083
P 2150 3600
F 0 "#PWR013" H 2150 3350 50  0001 C CNN
F 1 "GND" H 2155 3427 50  0000 C CNN
F 2 "" H 2150 3600 50  0001 C CNN
F 3 "" H 2150 3600 50  0001 C CNN
	1    2150 3600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR021
U 1 1 62484508
P 3500 3600
F 0 "#PWR021" H 3500 3350 50  0001 C CNN
F 1 "GND" H 3505 3427 50  0000 C CNN
F 2 "" H 3500 3600 50  0001 C CNN
F 3 "" H 3500 3600 50  0001 C CNN
	1    3500 3600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR024
U 1 1 6248491E
P 4800 3600
F 0 "#PWR024" H 4800 3350 50  0001 C CNN
F 1 "GND" H 4805 3427 50  0000 C CNN
F 2 "" H 4800 3600 50  0001 C CNN
F 3 "" H 4800 3600 50  0001 C CNN
	1    4800 3600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR022
U 1 1 62484EB0
P 3500 4500
F 0 "#PWR022" H 3500 4250 50  0001 C CNN
F 1 "GND" H 3505 4327 50  0000 C CNN
F 2 "" H 3500 4500 50  0001 C CNN
F 3 "" H 3500 4500 50  0001 C CNN
	1    3500 4500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR017
U 1 1 624852FA
P 2150 4500
F 0 "#PWR017" H 2150 4250 50  0001 C CNN
F 1 "GND" H 2155 4327 50  0000 C CNN
F 2 "" H 2150 4500 50  0001 C CNN
F 3 "" H 2150 4500 50  0001 C CNN
	1    2150 4500
	1    0    0    -1  
$EndComp
$Comp
L Device:C C7
U 1 1 618720A3
P 11900 4650
F 0 "C7" H 12015 4696 50  0000 L CNN
F 1 "C" H 12015 4605 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 11938 4500 50  0001 C CNN
F 3 "~" H 11900 4650 50  0001 C CNN
	1    11900 4650
	1    0    0    -1  
$EndComp
Wire Wire Line
	11900 4500 11900 4400
Connection ~ 11900 4400
$Comp
L power:GND #PWR028
U 1 1 6188242E
P 11900 4800
F 0 "#PWR028" H 11900 4550 50  0001 C CNN
F 1 "GND" H 11905 4627 50  0000 C CNN
F 2 "" H 11900 4800 50  0001 C CNN
F 3 "" H 11900 4800 50  0001 C CNN
	1    11900 4800
	1    0    0    -1  
$EndComp
$Comp
L Device:C C8
U 1 1 61884648
P 12100 8750
F 0 "C8" H 12215 8796 50  0000 L CNN
F 1 "C" H 12215 8705 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 12138 8600 50  0001 C CNN
F 3 "~" H 12100 8750 50  0001 C CNN
	1    12100 8750
	1    0    0    -1  
$EndComp
Connection ~ 10550 8600
$Comp
L power:GND #PWR029
U 1 1 61894C2A
P 12100 9300
F 0 "#PWR029" H 12100 9050 50  0001 C CNN
F 1 "GND" H 12105 9127 50  0000 C CNN
F 2 "" H 12100 9300 50  0001 C CNN
F 3 "" H 12100 9300 50  0001 C CNN
	1    12100 9300
	1    0    0    -1  
$EndComp
Wire Wire Line
	10550 8600 12100 8600
Wire Wire Line
	12100 8900 12100 9300
$Comp
L Device:C C4
U 1 1 618B018A
P 7050 3750
F 0 "C4" H 7165 3796 50  0000 L CNN
F 1 "C" H 7165 3705 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 7088 3600 50  0001 C CNN
F 3 "~" H 7050 3750 50  0001 C CNN
	1    7050 3750
	1    0    0    -1  
$EndComp
Connection ~ 7050 3600
Wire Wire Line
	7050 3600 7300 3600
$Comp
L power:GND #PWR025
U 1 1 618C1AF1
P 7050 3900
F 0 "#PWR025" H 7050 3650 50  0001 C CNN
F 1 "GND" H 7055 3727 50  0000 C CNN
F 2 "" H 7050 3900 50  0001 C CNN
F 3 "" H 7050 3900 50  0001 C CNN
	1    7050 3900
	1    0    0    -1  
$EndComp
$Comp
L Device:C C5
U 1 1 618C29B9
P 7900 7200
F 0 "C5" H 8015 7246 50  0000 L CNN
F 1 "C" H 8015 7155 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 7938 7050 50  0001 C CNN
F 3 "~" H 7900 7200 50  0001 C CNN
	1    7900 7200
	1    0    0    -1  
$EndComp
Wire Wire Line
	7900 7050 8000 7050
Connection ~ 8000 7050
$Comp
L power:GND #PWR026
U 1 1 618D0BCE
P 7900 7350
F 0 "#PWR026" H 7900 7100 50  0001 C CNN
F 1 "GND" H 7905 7177 50  0000 C CNN
F 2 "" H 7900 7350 50  0001 C CNN
F 3 "" H 7900 7350 50  0001 C CNN
	1    7900 7350
	1    0    0    -1  
$EndComp
$Comp
L Device:C C6
U 1 1 618D0FAF
P 9850 7200
F 0 "C6" H 9965 7246 50  0000 L CNN
F 1 "C" H 9965 7155 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 9888 7050 50  0001 C CNN
F 3 "~" H 9850 7200 50  0001 C CNN
	1    9850 7200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR027
U 1 1 618D1694
P 9850 7350
F 0 "#PWR027" H 9850 7100 50  0001 C CNN
F 1 "GND" H 9855 7177 50  0000 C CNN
F 2 "" H 9850 7350 50  0001 C CNN
F 3 "" H 9850 7350 50  0001 C CNN
	1    9850 7350
	1    0    0    -1  
$EndComp
Wire Wire Line
	9800 7050 9850 7050
Wire Wire Line
	8550 8800 9600 8800
Wire Bus Line
	8900 5200 8900 7400
Wire Bus Line
	8900 7600 8900 9700
Connection ~ 9800 7050
$EndSCHEMATC
