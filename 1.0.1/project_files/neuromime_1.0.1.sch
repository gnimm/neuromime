EESchema Schematic File Version 4
LIBS:neuromime_1.0.1-cache
EELAYER 26 0
EELAYER END
$Descr A3 16535 11693
encoding utf-8
Sheet 1 1
Title ""
Date "2019-07-06"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Wire Wire Line
	4600 3075 4600 3175
Wire Wire Line
	1900 2700 1900 2800
Wire Wire Line
	13625 3800 13625 3750
Wire Wire Line
	2400 3400 2400 3600
Wire Wire Line
	2600 3400 2600 3250
Wire Wire Line
	6025 5175 6025 5225
Wire Wire Line
	6125 6025 6125 6075
Wire Wire Line
	6125 6075 6075 6075
Wire Wire Line
	6025 6075 6025 6025
Connection ~ 2100 2800
Wire Wire Line
	4625 6400 4625 6350
Wire Wire Line
	6075 6125 6075 6075
Connection ~ 6075 6075
Wire Wire Line
	6225 6025 6275 6025
Wire Wire Line
	6275 6025 6275 5775
Wire Wire Line
	6275 5775 6625 5775
Wire Wire Line
	6625 5775 6625 5725
Wire Wire Line
	2600 2800 2600 2850
$Comp
L neuromime_1.0.1-rescue:GND-neuromime_1.0.0-rescue #PWR015
U 1 1 53AD01D1
P 4600 3175
F 0 "#PWR015" H 4600 3175 30  0001 C CNN
F 1 "GND" H 4600 3105 30  0001 C CNN
F 2 "" H 4600 3175 50  0001 C CNN
F 3 "" H 4600 3175 50  0001 C CNN
	1    4600 3175
	1    0    0    -1  
$EndComp
$Comp
L neuromime_1.0.1-rescue:CONN_1-neuromime_1.0.0-rescue P1
U 1 1 53AD01BF
P 4600 2925
F 0 "P1" H 4680 2925 40  0000 L CNN
F 1 "mnt" H 4600 2980 30  0001 C CNN
F 2 "flemming_feetprint_2019:MountingHole_4.5mm_PTH" H 4600 2925 50  0001 C CNN
F 3 "" H 4600 2925 50  0001 C CNN
	1    4600 2925
	0    -1   -1   0   
$EndComp
Text Notes 4400 3500 0    60   ~ 0
grounded \nmounting hole
$Comp
L neuromime_1.0.1-rescue:CONN_3-neuromime_1.0.0-rescue P2
U 1 1 53AA660B
P 13975 3650
F 0 "P2" V 13925 3650 50  0000 C CNN
F 1 "axon" V 14025 3650 40  0000 C CNN
F 2 "flemming_feetprint_2019:PinHeader_1x03_P2.54mm_Horizontal_elomgated_pads" H 13975 3650 50  0001 C CNN
F 3 "" H 13975 3650 50  0001 C CNN
	1    13975 3650
	1    0    0    1   
$EndComp
Text Notes 950  6000 1    60   ~ 0
dendrite inputs
$Comp
L power:VCC #PWR025
U 1 1 53A859EA
P 10175 4350
F 0 "#PWR025" H 10175 4450 30  0001 C CNN
F 1 "VCC" H 10175 4450 30  0000 C CNN
F 2 "" H 10175 4350 50  0001 C CNN
F 3 "" H 10175 4350 50  0001 C CNN
	1    10175 4350
	1    0    0    -1  
$EndComp
Text Notes 14300 4550 1    60   ~ 0
axon outputs
$Comp
L neuromime_1.0.1-rescue:GND-neuromime_1.0.0-rescue #PWR041
U 1 1 53A85818
P 13625 3800
F 0 "#PWR041" H 13625 3800 30  0001 C CNN
F 1 "GND" H 13625 3730 30  0001 C CNN
F 2 "" H 13625 3800 50  0001 C CNN
F 3 "" H 13625 3800 50  0001 C CNN
	1    13625 3800
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR019
U 1 1 53A8539C
P 8075 4600
F 0 "#PWR019" H 8075 4700 30  0001 C CNN
F 1 "VCC" H 8075 4700 30  0000 C CNN
F 2 "" H 8075 4600 50  0001 C CNN
F 3 "" H 8075 4600 50  0001 C CNN
	1    8075 4600
	1    0    0    -1  
$EndComp
$Comp
L neuromime_1.0.1-rescue:C-neuromime_1.0.0-rescue C9
U 1 1 53A8531C
P 9325 4425
F 0 "C9" H 9375 4525 50  0000 L CNN
F 1 "0.1uF" H 9375 4325 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W1.6mm_P2.50mm" H 9325 4425 50  0001 C CNN
F 3 "" H 9325 4425 50  0001 C CNN
	1    9325 4425
	1    0    0    -1  
$EndComp
$Comp
L neuromime_1.0.1-rescue:GND-neuromime_1.0.0-rescue #PWR020
U 1 1 53A851CD
P 8075 5225
F 0 "#PWR020" H 8075 5225 30  0001 C CNN
F 1 "GND" H 8075 5155 30  0001 C CNN
F 2 "" H 8075 5225 50  0001 C CNN
F 3 "" H 8075 5225 50  0001 C CNN
	1    8075 5225
	1    0    0    -1  
$EndComp
$Comp
L neuromime_1.0.1-rescue:GND-neuromime_1.0.0-rescue #PWR010
U 1 1 53A84ED6
P 2400 3600
F 0 "#PWR010" H 2400 3600 30  0001 C CNN
F 1 "GND" H 2400 3530 30  0001 C CNN
F 2 "" H 2400 3600 50  0001 C CNN
F 3 "" H 2400 3600 50  0001 C CNN
	1    2400 3600
	1    0    0    -1  
$EndComp
$Comp
L neuromime_1.0.1-rescue:C-neuromime_1.0.0-rescue C7
U 1 1 53A84E8D
P 7900 4925
F 0 "C7" H 7950 5025 50  0000 L CNN
F 1 "0.1uF" H 7950 4825 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W1.6mm_P2.50mm" H 7900 4925 50  0001 C CNN
F 3 "" H 7900 4925 50  0001 C CNN
	1    7900 4925
	1    0    0    -1  
$EndComp
Text Notes 2100 2075 0    60   ~ 0
power\n
Text Notes 6925 4825 0    60   ~ 0
edge detector
$Comp
L neuromime_1.0.1-rescue:CP-neuromime_1.0.0-rescue C6
U 1 1 53A84A54
P 7200 5625
F 0 "C6" H 7250 5725 50  0000 L CNN
F 1 "1uF" H 7250 5525 50  0000 L CNN
F 2 "flemming_feetprint_2019:CP_Radial_D5.0mm_P2.50mm_positive_symbol_inside" H 7200 5625 50  0001 C CNN
F 3 "" H 7200 5625 50  0001 C CNN
	1    7200 5625
	0    1    1    0   
$EndComp
$Comp
L neuromime_1.0.1-rescue:CP-neuromime_1.0.0-rescue C8
U 1 1 53A84924
P 8875 3875
F 0 "C8" H 8925 3975 50  0000 L CNN
F 1 "Clate" H 8925 3775 50  0000 L CNN
F 2 "flemming_feetprint_2019:CP_Radial_D5.0mm_P2.50mm_positive_symbol_inside" H 8875 3875 50  0001 C CNN
F 3 "" H 8875 3875 50  0001 C CNN
	1    8875 3875
	0    -1   -1   0   
$EndComp
$Comp
L neuromime_1.0.1-rescue:R-neuromime_1.0.0-rescue R9
U 1 1 53A84922
P 8425 3875
F 0 "R9" V 8505 3875 50  0000 C CNN
F 1 "Rlate" V 8425 3875 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P2.54mm_Vertical" H 8425 3875 50  0001 C CNN
F 3 "" H 8425 3875 50  0001 C CNN
	1    8425 3875
	0    1    -1   0   
$EndComp
$Comp
L power:VCC #PWR021
U 1 1 53A8491D
P 8125 3825
F 0 "#PWR021" H 8125 3925 30  0001 C CNN
F 1 "VCC" H 8125 3925 30  0000 C CNN
F 2 "" H 8125 3825 50  0001 C CNN
F 3 "" H 8125 3825 50  0001 C CNN
	1    8125 3825
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR012
U 1 1 53A848DA
P 3850 5950
F 0 "#PWR012" H 3850 6050 30  0001 C CNN
F 1 "VCC" H 3850 6050 30  0000 C CNN
F 2 "" H 3850 5950 50  0001 C CNN
F 3 "" H 3850 5950 50  0001 C CNN
	1    3850 5950
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR016
U 1 1 53A84558
P 6025 5175
F 0 "#PWR016" H 6025 5275 30  0001 C CNN
F 1 "VCC" H 6025 5275 30  0000 C CNN
F 2 "" H 6025 5175 50  0001 C CNN
F 3 "" H 6025 5175 50  0001 C CNN
	1    6025 5175
	1    0    0    -1  
$EndComp
$Comp
L neuromime_1.0.1-rescue:GND-neuromime_1.0.0-rescue #PWR017
U 1 1 53A84551
P 6075 6125
F 0 "#PWR017" H 6075 6125 30  0001 C CNN
F 1 "GND" H 6075 6055 30  0001 C CNN
F 2 "" H 6075 6125 50  0001 C CNN
F 3 "" H 6075 6125 50  0001 C CNN
	1    6075 6125
	1    0    0    -1  
$EndComp
$Comp
L neuromime_1.0.1-rescue:CP-neuromime_1.0.0-rescue C5
U 1 1 53A83F8D
P 4625 6225
F 0 "C5" H 4675 6325 50  0000 L CNN
F 1 "Cpk_exct" H 4675 6125 50  0000 L CNN
F 2 "flemming_feetprint_2019:CP_Radial_D5.0mm_P2.50mm_positive_symbol_inside" H 4625 6225 50  0001 C CNN
F 3 "" H 4625 6225 50  0001 C CNN
	1    4625 6225
	1    0    0    -1  
$EndComp
$Comp
L neuromime_1.0.1-rescue:R-neuromime_1.0.0-rescue R6
U 1 1 53A83EEA
P 4275 6175
F 0 "R6" V 4355 6175 50  0000 C CNN
F 1 "Rbld_xct" V 4275 6175 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P2.54mm_Vertical" H 4275 6175 50  0001 C CNN
F 3 "" H 4275 6175 50  0001 C CNN
	1    4275 6175
	1    0    0    -1  
$EndComp
$Comp
L neuromime_1.0.1-rescue:GND-neuromime_1.0.0-rescue #PWR014
U 1 1 53A83EE8
P 4075 6525
F 0 "#PWR014" H 4075 6525 30  0001 C CNN
F 1 "GND" H 4075 6455 30  0001 C CNN
F 2 "" H 4075 6525 50  0001 C CNN
F 3 "" H 4075 6525 50  0001 C CNN
	1    4075 6525
	1    0    0    -1  
$EndComp
Text Notes 11325 3500 0    60   ~ 0
output pulse width timer
Text Notes 8450 3500 0    60   ~ 0
latency timer
$Comp
L neuromime_1.0.1-rescue:CP-neuromime_1.0.0-rescue C1
U 1 1 53A828B7
P 2600 3050
F 0 "C1" H 2650 3150 50  0000 L CNN
F 1 "10uF" H 2650 2950 50  0000 L CNN
F 2 "flemming_feetprint_2019:CP_Radial_D5.0mm_P2.50mm_positive_symbol_inside" H 2600 3050 50  0001 C CNN
F 3 "" H 2600 3050 50  0001 C CNN
	1    2600 3050
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG01
U 1 1 53A82897
P 1900 2700
F 0 "#FLG01" H 1900 2795 30  0001 C CNN
F 1 "PWR_FLAG" H 1900 2880 30  0000 C CNN
F 2 "" H 1900 2700 50  0001 C CNN
F 3 "" H 1900 2700 50  0001 C CNN
	1    1900 2700
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR09
U 1 1 53A82858
P 2800 2600
F 0 "#PWR09" H 2800 2700 30  0001 C CNN
F 1 "VCC" H 2800 2700 30  0000 C CNN
F 2 "" H 2800 2600 50  0001 C CNN
F 3 "" H 2800 2600 50  0001 C CNN
	1    2800 2600
	1    0    0    -1  
$EndComp
$Comp
L neuromime_1.0.1-rescue:POT-neuromime_1.0.0-rescue RV2
U 1 1 53A8280C
P 3850 6175
F 0 "RV2" H 3850 6075 50  0000 C CNN
F 1 "BIASxct" H 3850 6175 50  0000 C CNN
F 2 "flemming_feetprint_2019:Potentiometer_Bourns_3266W_Vertical_pin_variation" H 3850 6175 50  0001 C CNN
F 3 "" H 3850 6175 50  0001 C CNN
	1    3850 6175
	0    1    -1   0   
$EndComp
$Comp
L neuromime_1.0.1-rescue:LM311N-neuromime_1.0.0-rescue U1
U 1 1 53A81D8F
P 6125 5625
F 0 "U1" H 6325 5925 70  0000 C CNN
F 1 "LM311" H 6325 5825 70  0000 C CNN
F 2 "Package_DIP:DIP-8_W7.62mm_Socket" H 6125 5625 50  0001 C CNN
F 3 "" H 6125 5625 50  0001 C CNN
	1    6125 5625
	1    0    0    -1  
$EndComp
Wire Wire Line
	2300 2800 2100 2800
Wire Wire Line
	2600 3400 2400 3400
Wire Wire Line
	2100 2800 1900 2800
Wire Wire Line
	6075 6075 6025 6075
Wire Wire Line
	2175 4625 2225 4625
Wire Wire Line
	2175 4725 2225 4725
Wire Wire Line
	2225 4725 2225 4825
$Comp
L neuromime_1.0.1-rescue:CONN_3-neuromime_1.0.0-rescue K1
U 1 1 5D37863E
P 1825 4625
F 0 "K1" V 1775 4625 50  0000 C CNN
F 1 "inhibit" V 1975 4625 40  0000 C CNN
F 2 "flemming_feetprint_2019:PinSocket_1x03_P2.54mm_Horizontal_elongated" H 1825 4625 50  0001 C CNN
F 3 "" H 1825 4625 50  0001 C CNN
	1    1825 4625
	-1   0    0    1   
$EndComp
$Comp
L neuromime_1.0.1-rescue:GND-neuromime_1.0.0-rescue #PWR02
U 1 1 5D378645
P 2225 4825
F 0 "#PWR02" H 2225 4825 30  0001 C CNN
F 1 "GND" H 2225 4755 30  0001 C CNN
F 2 "" H 2225 4825 50  0001 C CNN
F 3 "" H 2225 4825 50  0001 C CNN
	1    2225 4825
	1    0    0    -1  
$EndComp
$Comp
L neuromime_1.0.1-rescue:DIODE-neuromime_1.0.0-rescue D4
U 1 1 5D378651
P 2425 4625
F 0 "D4" H 2425 4725 40  0000 C CNN
F 1 "1N4148" H 2425 4525 40  0000 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P2.54mm_Vertical_KathodeUp" H 2425 4625 50  0001 C CNN
F 3 "" H 2425 4625 50  0001 C CNN
	1    2425 4625
	1    0    0    -1  
$EndComp
$Comp
L neuromime_1.0.1-rescue:555-flemming_parts U2
U 1 1 5D3E0EE0
P 8775 4925
F 0 "U2" H 8700 4900 70  0000 L CNN
F 1 "555late" H 8700 4775 70  0000 L CNN
F 2 "Package_DIP:DIP-8_W7.62mm_Socket" H 8775 4925 50  0001 C CNN
F 3 "ns/lm555.pdf" H 8775 4925 50  0001 C CNN
	1    8775 4925
	1    0    0    -1  
$EndComp
Wire Wire Line
	8575 4225 8575 4150
Wire Wire Line
	8575 4150 8675 4150
Wire Wire Line
	8775 4150 8775 4225
Wire Wire Line
	7900 4725 8075 4725
Wire Wire Line
	8075 4725 8075 4775
Wire Wire Line
	7900 5125 8075 5125
Wire Wire Line
	8075 5125 8075 5075
Wire Wire Line
	8075 4600 8075 4725
Connection ~ 8075 4725
Wire Wire Line
	8075 5225 8075 5125
Connection ~ 8075 5125
Wire Wire Line
	8975 4225 9325 4225
$Comp
L neuromime_1.0.1-rescue:GND-neuromime_1.0.0-rescue #PWR024
U 1 1 5D46D6CE
P 9325 4625
F 0 "#PWR024" H 9325 4625 30  0001 C CNN
F 1 "GND" H 9325 4555 30  0001 C CNN
F 2 "" H 9325 4625 50  0001 C CNN
F 3 "" H 9325 4625 50  0001 C CNN
	1    9325 4625
	1    0    0    -1  
$EndComp
$Comp
L neuromime_1.0.1-rescue:GND-neuromime_1.0.0-rescue #PWR023
U 1 1 5D470F5C
P 9325 3950
F 0 "#PWR023" H 9325 3950 30  0001 C CNN
F 1 "GND" H 9325 3880 30  0001 C CNN
F 2 "" H 9325 3950 50  0001 C CNN
F 3 "" H 9325 3950 50  0001 C CNN
	1    9325 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	8675 4150 8675 3875
Connection ~ 8675 4150
Wire Wire Line
	8675 4150 8775 4150
Connection ~ 8675 3875
Wire Wire Line
	8125 3825 8125 3875
Wire Wire Line
	8125 3875 8175 3875
Wire Wire Line
	9075 3875 9325 3875
Wire Wire Line
	9325 3875 9325 3950
$Comp
L power:VCC #PWR027
U 1 1 5D49F6AD
P 11125 4600
F 0 "#PWR027" H 11125 4700 30  0001 C CNN
F 1 "VCC" H 11125 4700 30  0000 C CNN
F 2 "" H 11125 4600 50  0001 C CNN
F 3 "" H 11125 4600 50  0001 C CNN
	1    11125 4600
	1    0    0    -1  
$EndComp
$Comp
L neuromime_1.0.1-rescue:C-neuromime_1.0.0-rescue C15
U 1 1 5D49F6B3
P 12375 4425
F 0 "C15" H 12425 4525 50  0000 L CNN
F 1 "0.1uF" H 12425 4325 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W1.6mm_P2.50mm" H 12375 4425 50  0001 C CNN
F 3 "" H 12375 4425 50  0001 C CNN
	1    12375 4425
	1    0    0    -1  
$EndComp
$Comp
L neuromime_1.0.1-rescue:GND-neuromime_1.0.0-rescue #PWR028
U 1 1 5D49F6B9
P 11125 5225
F 0 "#PWR028" H 11125 5225 30  0001 C CNN
F 1 "GND" H 11125 5155 30  0001 C CNN
F 2 "" H 11125 5225 50  0001 C CNN
F 3 "" H 11125 5225 50  0001 C CNN
	1    11125 5225
	1    0    0    -1  
$EndComp
$Comp
L neuromime_1.0.1-rescue:C-neuromime_1.0.0-rescue C12
U 1 1 5D49F6BF
P 10950 4925
F 0 "C12" H 11000 5025 50  0000 L CNN
F 1 "0.1uF" H 11000 4825 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W1.6mm_P2.50mm" H 10950 4925 50  0001 C CNN
F 3 "" H 10950 4925 50  0001 C CNN
	1    10950 4925
	1    0    0    -1  
$EndComp
$Comp
L neuromime_1.0.1-rescue:R-neuromime_1.0.0-rescue R14
U 1 1 5D49F6CB
P 11475 3875
F 0 "R14" V 11555 3875 50  0000 C CNN
F 1 "Rpout" V 11475 3875 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P2.54mm_Vertical" H 11475 3875 50  0001 C CNN
F 3 "" H 11475 3875 50  0001 C CNN
	1    11475 3875
	0    1    -1   0   
$EndComp
$Comp
L power:VCC #PWR031
U 1 1 5D49F6D1
P 11175 3825
F 0 "#PWR031" H 11175 3925 30  0001 C CNN
F 1 "VCC" H 11175 3925 30  0000 C CNN
F 2 "" H 11175 3825 50  0001 C CNN
F 3 "" H 11175 3825 50  0001 C CNN
	1    11175 3825
	1    0    0    -1  
$EndComp
$Comp
L neuromime_1.0.1-rescue:555-flemming_parts U3
U 1 1 5D49F6D7
P 11825 4925
F 0 "U3" H 11750 4900 70  0000 L CNN
F 1 "555pout" H 11750 4775 70  0000 L CNN
F 2 "Package_DIP:DIP-8_W7.62mm_Socket" H 11825 4925 50  0001 C CNN
F 3 "ns/lm555.pdf" H 11825 4925 50  0001 C CNN
	1    11825 4925
	1    0    0    -1  
$EndComp
Wire Wire Line
	11625 4225 11625 4150
Wire Wire Line
	11625 4150 11725 4150
Wire Wire Line
	11825 4150 11825 4225
Wire Wire Line
	10950 4725 11125 4725
Wire Wire Line
	11125 4725 11125 4775
Wire Wire Line
	10950 5125 11125 5125
Wire Wire Line
	11125 5125 11125 5075
Wire Wire Line
	11125 4600 11125 4725
Connection ~ 11125 4725
Wire Wire Line
	11125 5225 11125 5125
Connection ~ 11125 5125
Wire Wire Line
	12025 4225 12375 4225
$Comp
L neuromime_1.0.1-rescue:GND-neuromime_1.0.0-rescue #PWR036
U 1 1 5D49F6E9
P 12375 4625
F 0 "#PWR036" H 12375 4625 30  0001 C CNN
F 1 "GND" H 12375 4555 30  0001 C CNN
F 2 "" H 12375 4625 50  0001 C CNN
F 3 "" H 12375 4625 50  0001 C CNN
	1    12375 4625
	1    0    0    -1  
$EndComp
$Comp
L neuromime_1.0.1-rescue:GND-neuromime_1.0.0-rescue #PWR035
U 1 1 5D49F6EF
P 12375 3950
F 0 "#PWR035" H 12375 3950 30  0001 C CNN
F 1 "GND" H 12375 3880 30  0001 C CNN
F 2 "" H 12375 3950 50  0001 C CNN
F 3 "" H 12375 3950 50  0001 C CNN
	1    12375 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	11725 4150 11725 3875
Connection ~ 11725 4150
Wire Wire Line
	11725 4150 11825 4150
Wire Wire Line
	11175 3825 11175 3875
Wire Wire Line
	11175 3875 11225 3875
Wire Wire Line
	12125 3875 12375 3875
Wire Wire Line
	12375 3875 12375 3950
$Comp
L neuromime_1.0.1-rescue:TEST-neuromime_1.0.0-rescue W3
U 1 1 5D4BA043
P 11275 8700
F 0 "W3" H 11275 8760 40  0000 C CNN
F 1 "ENrest" H 11275 8630 40  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 11275 8700 50  0001 C CNN
F 3 "" H 11275 8700 50  0001 C CNN
	1    11275 8700
	1    0    0    -1  
$EndComp
Wire Wire Line
	3850 6425 4075 6425
Wire Wire Line
	4275 6425 4625 6425
Connection ~ 4275 6425
Wire Wire Line
	4275 5925 4450 5925
Wire Wire Line
	4625 5925 4625 6025
Wire Wire Line
	4075 6525 4075 6425
Connection ~ 4075 6425
Wire Wire Line
	4075 6425 4275 6425
Wire Wire Line
	4000 6175 4000 5925
Wire Wire Line
	4000 5925 4275 5925
Connection ~ 4275 5925
Wire Wire Line
	4450 5725 4450 5925
Connection ~ 4450 5925
Wire Wire Line
	4450 5925 4625 5925
Wire Wire Line
	4625 4850 4625 4900
$Comp
L power:VCC #PWR011
U 1 1 5D50DA5A
P 3850 5300
F 0 "#PWR011" H 3850 5400 30  0001 C CNN
F 1 "VCC" H 3850 5400 30  0000 C CNN
F 2 "" H 3850 5300 50  0001 C CNN
F 3 "" H 3850 5300 50  0001 C CNN
	1    3850 5300
	1    0    0    1   
$EndComp
$Comp
L neuromime_1.0.1-rescue:CP-neuromime_1.0.0-rescue C4
U 1 1 5D50DA60
P 4625 5025
F 0 "C4" H 4675 5125 50  0000 L CNN
F 1 "Cpk_inh" H 4675 4925 50  0000 L CNN
F 2 "flemming_feetprint_2019:CP_Radial_D5.0mm_P2.50mm_positive_symbol_inside" H 4625 5025 50  0001 C CNN
F 3 "" H 4625 5025 50  0001 C CNN
	1    4625 5025
	1    0    0    1   
$EndComp
$Comp
L neuromime_1.0.1-rescue:R-neuromime_1.0.0-rescue R5
U 1 1 5D50DA66
P 4275 5075
F 0 "R5" V 4355 5075 50  0000 C CNN
F 1 "Rbld_inh" V 4275 5075 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P2.54mm_Vertical" H 4275 5075 50  0001 C CNN
F 3 "" H 4275 5075 50  0001 C CNN
	1    4275 5075
	1    0    0    1   
$EndComp
$Comp
L neuromime_1.0.1-rescue:GND-neuromime_1.0.0-rescue #PWR013
U 1 1 5D50DA6C
P 4075 4725
F 0 "#PWR013" H 4075 4725 30  0001 C CNN
F 1 "GND" H 4075 4655 30  0001 C CNN
F 2 "" H 4075 4725 50  0001 C CNN
F 3 "" H 4075 4725 50  0001 C CNN
	1    4075 4725
	1    0    0    1   
$EndComp
$Comp
L neuromime_1.0.1-rescue:POT-neuromime_1.0.0-rescue RV1
U 1 1 5D50DA72
P 3850 5075
F 0 "RV1" H 3850 4975 50  0000 C CNN
F 1 "BIASinh" H 3850 5075 50  0000 C CNN
F 2 "flemming_feetprint_2019:Potentiometer_Bourns_3266W_Vertical_pin_variation" H 3850 5075 50  0001 C CNN
F 3 "" H 3850 5075 50  0001 C CNN
	1    3850 5075
	0    1    1    0   
$EndComp
Wire Wire Line
	3850 4825 4075 4825
Wire Wire Line
	4275 4825 4625 4825
Connection ~ 4275 4825
Wire Wire Line
	4275 5325 4450 5325
Wire Wire Line
	4625 5325 4625 5225
Wire Wire Line
	4075 4725 4075 4825
Connection ~ 4075 4825
Wire Wire Line
	4075 4825 4275 4825
Wire Wire Line
	4000 5075 4000 5325
Wire Wire Line
	4000 5325 4275 5325
Connection ~ 4275 5325
Wire Wire Line
	4450 5525 4450 5325
Connection ~ 4450 5325
Wire Wire Line
	4450 5325 4625 5325
Wire Notes Line
	4025 6450 4025 5800
Wire Notes Line
	4025 5800 3675 5800
Wire Notes Line
	3675 5800 3675 6450
Wire Notes Line
	3675 6450 4025 6450
Wire Notes Line
	4175 4775 4175 5375
Wire Notes Line
	4175 5375 4850 5375
Wire Notes Line
	4850 5375 4850 4775
Wire Notes Line
	4850 4775 4175 4775
$Comp
L neuromime_1.0.1-rescue:R-neuromime_1.0.0-rescue R4
U 1 1 5D52F850
P 2875 4625
F 0 "R4" V 2955 4625 50  0000 C CNN
F 1 "Zinh" V 2875 4625 50  0000 C CNN
F 2 "flemming_feetprint_2019:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical_pad_numbers_reversed" H 2875 4625 50  0001 C CNN
F 3 "" H 2875 4625 50  0001 C CNN
	1    2875 4625
	0    1    -1   0   
$EndComp
Wire Wire Line
	2175 6325 2225 6325
Wire Wire Line
	2175 6425 2225 6425
Wire Wire Line
	2225 6425 2225 6525
$Comp
L neuromime_1.0.1-rescue:CONN_3-neuromime_1.0.0-rescue K3
U 1 1 5D53B932
P 1825 6325
F 0 "K3" V 1775 6325 50  0000 C CNN
F 1 "excite" V 1975 6325 40  0000 C CNN
F 2 "flemming_feetprint_2019:PinSocket_1x03_P2.54mm_Horizontal_elongated" H 1825 6325 50  0001 C CNN
F 3 "" H 1825 6325 50  0001 C CNN
	1    1825 6325
	-1   0    0    1   
$EndComp
$Comp
L neuromime_1.0.1-rescue:GND-neuromime_1.0.0-rescue #PWR06
U 1 1 5D53B938
P 2225 6525
F 0 "#PWR06" H 2225 6525 30  0001 C CNN
F 1 "GND" H 2225 6455 30  0001 C CNN
F 2 "" H 2225 6525 50  0001 C CNN
F 3 "" H 2225 6525 50  0001 C CNN
	1    2225 6525
	1    0    0    -1  
$EndComp
$Comp
L neuromime_1.0.1-rescue:DIODE-neuromime_1.0.0-rescue D2
U 1 1 5D53B944
P 2425 6325
F 0 "D2" H 2425 6425 40  0000 C CNN
F 1 "1N4148" H 2425 6225 40  0000 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P2.54mm_Vertical_KathodeUp" H 2425 6325 50  0001 C CNN
F 3 "" H 2425 6325 50  0001 C CNN
	1    2425 6325
	1    0    0    -1  
$EndComp
$Comp
L neuromime_1.0.1-rescue:R-neuromime_1.0.0-rescue R2
U 1 1 5D53B94A
P 2875 6325
F 0 "R2" V 2955 6325 50  0000 C CNN
F 1 "Zxct" V 2875 6325 50  0000 C CNN
F 2 "flemming_feetprint_2019:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical_pad_numbers_reversed" H 2875 6325 50  0001 C CNN
F 3 "" H 2875 6325 50  0001 C CNN
	1    2875 6325
	0    1    -1   0   
$EndComp
Wire Wire Line
	2175 5725 2225 5725
Wire Wire Line
	2175 5825 2225 5825
Wire Wire Line
	2225 5825 2225 5925
$Comp
L neuromime_1.0.1-rescue:CONN_3-neuromime_1.0.0-rescue K2
U 1 1 5D540035
P 1825 5725
F 0 "K2" V 1775 5725 50  0000 C CNN
F 1 "excite" V 1975 5725 40  0000 C CNN
F 2 "flemming_feetprint_2019:PinSocket_1x03_P2.54mm_Horizontal_elongated" H 1825 5725 50  0001 C CNN
F 3 "" H 1825 5725 50  0001 C CNN
	1    1825 5725
	-1   0    0    1   
$EndComp
$Comp
L neuromime_1.0.1-rescue:GND-neuromime_1.0.0-rescue #PWR04
U 1 1 5D54003B
P 2225 5925
F 0 "#PWR04" H 2225 5925 30  0001 C CNN
F 1 "GND" H 2225 5855 30  0001 C CNN
F 2 "" H 2225 5925 50  0001 C CNN
F 3 "" H 2225 5925 50  0001 C CNN
	1    2225 5925
	1    0    0    -1  
$EndComp
$Comp
L neuromime_1.0.1-rescue:DIODE-neuromime_1.0.0-rescue D1
U 1 1 5D540047
P 2425 5725
F 0 "D1" H 2425 5825 40  0000 C CNN
F 1 "1N4148" H 2425 5625 40  0000 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P2.54mm_Vertical_KathodeUp" H 2425 5725 50  0001 C CNN
F 3 "" H 2425 5725 50  0001 C CNN
	1    2425 5725
	1    0    0    -1  
$EndComp
$Comp
L neuromime_1.0.1-rescue:R-neuromime_1.0.0-rescue R1
U 1 1 5D54004D
P 2875 5725
F 0 "R1" V 2955 5725 50  0000 C CNN
F 1 "Zxct" V 2875 5725 50  0000 C CNN
F 2 "flemming_feetprint_2019:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical_pad_numbers_reversed" H 2875 5725 50  0001 C CNN
F 3 "" H 2875 5725 50  0001 C CNN
	1    2875 5725
	0    1    -1   0   
$EndComp
Wire Wire Line
	2175 6925 2225 6925
Wire Wire Line
	2175 7025 2225 7025
Wire Wire Line
	2225 7025 2225 7125
$Comp
L neuromime_1.0.1-rescue:CONN_3-neuromime_1.0.0-rescue K4
U 1 1 5D544DBD
P 1825 6925
F 0 "K4" V 1775 6925 50  0000 C CNN
F 1 "excite" V 1975 6925 40  0000 C CNN
F 2 "flemming_feetprint_2019:PinSocket_1x03_P2.54mm_Horizontal_elongated" H 1825 6925 50  0001 C CNN
F 3 "" H 1825 6925 50  0001 C CNN
	1    1825 6925
	-1   0    0    1   
$EndComp
$Comp
L neuromime_1.0.1-rescue:GND-neuromime_1.0.0-rescue #PWR08
U 1 1 5D544DC3
P 2225 7125
F 0 "#PWR08" H 2225 7125 30  0001 C CNN
F 1 "GND" H 2225 7055 30  0001 C CNN
F 2 "" H 2225 7125 50  0001 C CNN
F 3 "" H 2225 7125 50  0001 C CNN
	1    2225 7125
	1    0    0    -1  
$EndComp
$Comp
L neuromime_1.0.1-rescue:DIODE-neuromime_1.0.0-rescue D3
U 1 1 5D544DCF
P 2425 6925
F 0 "D3" H 2425 7025 40  0000 C CNN
F 1 "1N4148" H 2425 6825 40  0000 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P2.54mm_Vertical_KathodeUp" H 2425 6925 50  0001 C CNN
F 3 "" H 2425 6925 50  0001 C CNN
	1    2425 6925
	1    0    0    -1  
$EndComp
$Comp
L neuromime_1.0.1-rescue:R-neuromime_1.0.0-rescue R3
U 1 1 5D544DD5
P 2875 6925
F 0 "R3" V 2955 6925 50  0000 C CNN
F 1 "Zxct" V 2875 6925 50  0000 C CNN
F 2 "flemming_feetprint_2019:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical_pad_numbers_reversed" H 2875 6925 50  0001 C CNN
F 3 "" H 2875 6925 50  0001 C CNN
	1    2875 6925
	0    1    -1   0   
$EndComp
Wire Wire Line
	4450 5725 3125 5725
Wire Wire Line
	4450 5525 3125 5525
Wire Wire Line
	3125 5525 3125 5150
Wire Wire Line
	3125 6325 3125 6925
Wire Wire Line
	3125 6325 3125 5725
Connection ~ 3125 6325
Connection ~ 3125 5725
$Comp
L neuromime_1.0.1-rescue:C-neuromime_1.0.0-rescue C10
U 1 1 5D5A1DA8
P 10175 4925
F 0 "C10" H 10225 5025 50  0000 L CNN
F 1 "0.1uF" H 10225 4825 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W1.6mm_P2.50mm" H 10175 4925 50  0001 C CNN
F 3 "" H 10175 4925 50  0001 C CNN
	1    10175 4925
	0    1    1    0   
$EndComp
$Comp
L neuromime_1.0.1-rescue:R-neuromime_1.0.0-rescue R7
U 1 1 5D5A1EEC
P 7000 5375
F 0 "R7" V 7080 5375 50  0000 C CNN
F 1 "27K" V 7000 5375 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P2.54mm_Vertical" H 7000 5375 50  0001 C CNN
F 3 "" H 7000 5375 50  0001 C CNN
	1    7000 5375
	1    0    0    1   
$EndComp
$Comp
L neuromime_1.0.1-rescue:R-neuromime_1.0.0-rescue R10
U 1 1 5D5A7B4F
P 9975 4675
F 0 "R10" V 10055 4675 50  0000 C CNN
F 1 "10K" V 9975 4675 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P2.54mm_Vertical" H 9975 4675 50  0001 C CNN
F 3 "" H 9975 4675 50  0001 C CNN
	1    9975 4675
	1    0    0    1   
$EndComp
$Comp
L neuromime_1.0.1-rescue:R-neuromime_1.0.0-rescue R8
U 1 1 5D5B92D3
P 7400 5375
F 0 "R8" V 7480 5375 50  0000 C CNN
F 1 "10K" V 7400 5375 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P2.54mm_Vertical" H 7400 5375 50  0001 C CNN
F 3 "" H 7400 5375 50  0001 C CNN
	1    7400 5375
	1    0    0    1   
$EndComp
$Comp
L neuromime_1.0.1-rescue:R-neuromime_1.0.0-rescue R12
U 1 1 5D5B936B
P 10375 4675
F 0 "R12" V 10455 4675 50  0000 C CNN
F 1 "10K" V 10375 4675 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P2.54mm_Vertical" H 10375 4675 50  0001 C CNN
F 3 "" H 10375 4675 50  0001 C CNN
	1    10375 4675
	1    0    0    1   
$EndComp
$Comp
L power:VCC #PWR018
U 1 1 5D5BEF74
P 7200 5000
F 0 "#PWR018" H 7200 5100 30  0001 C CNN
F 1 "VCC" H 7200 5100 30  0000 C CNN
F 2 "" H 7200 5000 50  0001 C CNN
F 3 "" H 7200 5000 50  0001 C CNN
	1    7200 5000
	1    0    0    -1  
$EndComp
Wire Wire Line
	10175 4350 10175 4425
Connection ~ 10175 4425
Wire Wire Line
	10175 4425 10375 4425
Text Notes 1475 4500 3    50   ~ 0
inhibit
Text Notes 1400 6425 1    50   ~ 0
excite
Text Notes 3650 5175 1    50   ~ 0
bias
Text Notes 3600 6250 1    50   ~ 0
bias
Text Notes 4325 6625 0    50   ~ 0
peak detector w.\nbleed resistor
Wire Notes Line style solid
	1725 5475 1550 5475
Wire Notes Line style solid
	1550 5475 1550 7175
Wire Notes Line style solid
	1550 7175 1725 7175
Wire Notes Line
	1575 5375 3225 5375
Wire Notes Line
	3225 5375 3225 4300
Wire Notes Line
	1575 4300 1575 5375
Wire Notes Line style solid
	1675 4100 1175 4100
Wire Notes Line style solid
	1175 4100 1175 7325
Wire Notes Line style solid
	1175 7325 1700 7325
$Comp
L power:VCC #PWR022
U 1 1 5D5F7299
P 9175 5600
F 0 "#PWR022" H 9175 5700 30  0001 C CNN
F 1 "VCC" H 9175 5700 30  0000 C CNN
F 2 "" H 9175 5600 50  0001 C CNN
F 3 "" H 9175 5600 50  0001 C CNN
	1    9175 5600
	1    0    0    -1  
$EndComp
Wire Wire Line
	9175 5625 9175 5600
Wire Wire Line
	9175 5625 8975 5625
$Comp
L power:VCC #PWR033
U 1 1 5D603AC7
P 12225 5625
F 0 "#PWR033" H 12225 5725 30  0001 C CNN
F 1 "VCC" H 12225 5725 30  0000 C CNN
F 2 "" H 12225 5625 50  0001 C CNN
F 3 "" H 12225 5625 50  0001 C CNN
	1    12225 5625
	1    0    0    -1  
$EndComp
Wire Wire Line
	12025 5625 12225 5625
$Comp
L power:VCC #PWR029
U 1 1 5D60A6AB
P 11125 7150
F 0 "#PWR029" H 11125 7250 30  0001 C CNN
F 1 "VCC" H 11125 7250 30  0000 C CNN
F 2 "" H 11125 7150 50  0001 C CNN
F 3 "" H 11125 7150 50  0001 C CNN
	1    11125 7150
	1    0    0    -1  
$EndComp
$Comp
L neuromime_1.0.1-rescue:C-neuromime_1.0.0-rescue C16
U 1 1 5D60A6B1
P 12375 6975
F 0 "C16" H 12425 7075 50  0000 L CNN
F 1 "0.1uF" H 12425 6875 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W1.6mm_P2.50mm" H 12375 6975 50  0001 C CNN
F 3 "" H 12375 6975 50  0001 C CNN
	1    12375 6975
	1    0    0    -1  
$EndComp
$Comp
L neuromime_1.0.1-rescue:GND-neuromime_1.0.0-rescue #PWR030
U 1 1 5D60A6B7
P 11125 7775
F 0 "#PWR030" H 11125 7775 30  0001 C CNN
F 1 "GND" H 11125 7705 30  0001 C CNN
F 2 "" H 11125 7775 50  0001 C CNN
F 3 "" H 11125 7775 50  0001 C CNN
	1    11125 7775
	1    0    0    -1  
$EndComp
$Comp
L neuromime_1.0.1-rescue:C-neuromime_1.0.0-rescue C13
U 1 1 5D60A6BD
P 10950 7475
F 0 "C13" H 11000 7575 50  0000 L CNN
F 1 "0.1uF" H 11000 7375 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W1.6mm_P2.50mm" H 10950 7475 50  0001 C CNN
F 3 "" H 10950 7475 50  0001 C CNN
	1    10950 7475
	1    0    0    -1  
$EndComp
$Comp
L neuromime_1.0.1-rescue:CP-neuromime_1.0.0-rescue C17
U 1 1 5D60A6C3
P 11925 6425
F 0 "C17" H 11975 6525 50  0000 L CNN
F 1 "Crest" H 11975 6325 50  0000 L CNN
F 2 "flemming_feetprint_2019:CP_Radial_D5.0mm_P2.50mm_positive_symbol_inside" H 11925 6425 50  0001 C CNN
F 3 "" H 11925 6425 50  0001 C CNN
	1    11925 6425
	0    -1   -1   0   
$EndComp
$Comp
L neuromime_1.0.1-rescue:R-neuromime_1.0.0-rescue R16
U 1 1 5D60A6C9
P 11475 6425
F 0 "R16" V 11555 6425 50  0000 C CNN
F 1 "Rrest" V 11475 6425 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P2.54mm_Vertical" H 11475 6425 50  0001 C CNN
F 3 "" H 11475 6425 50  0001 C CNN
	1    11475 6425
	0    1    -1   0   
$EndComp
$Comp
L power:VCC #PWR032
U 1 1 5D60A6CF
P 11175 6375
F 0 "#PWR032" H 11175 6475 30  0001 C CNN
F 1 "VCC" H 11175 6475 30  0000 C CNN
F 2 "" H 11175 6375 50  0001 C CNN
F 3 "" H 11175 6375 50  0001 C CNN
	1    11175 6375
	1    0    0    -1  
$EndComp
$Comp
L neuromime_1.0.1-rescue:555-flemming_parts U4
U 1 1 5D60A6D5
P 11825 7475
F 0 "U4" H 11775 7425 70  0000 L CNN
F 1 "555rest" H 11775 7300 70  0000 L CNN
F 2 "Package_DIP:DIP-8_W7.62mm_Socket" H 11825 7475 50  0001 C CNN
F 3 "ns/lm555.pdf" H 11825 7475 50  0001 C CNN
	1    11825 7475
	1    0    0    -1  
$EndComp
Wire Wire Line
	11625 6775 11625 6700
Wire Wire Line
	11625 6700 11725 6700
Wire Wire Line
	11825 6700 11825 6775
Wire Wire Line
	10950 7275 11125 7275
Wire Wire Line
	11125 7275 11125 7325
Wire Wire Line
	10950 7675 11125 7675
Wire Wire Line
	11125 7675 11125 7625
Wire Wire Line
	11125 7150 11125 7275
Connection ~ 11125 7275
Wire Wire Line
	11125 7775 11125 7675
Connection ~ 11125 7675
Wire Wire Line
	12025 6775 12375 6775
$Comp
L neuromime_1.0.1-rescue:GND-neuromime_1.0.0-rescue #PWR038
U 1 1 5D60A6E7
P 12375 7175
F 0 "#PWR038" H 12375 7175 30  0001 C CNN
F 1 "GND" H 12375 7105 30  0001 C CNN
F 2 "" H 12375 7175 50  0001 C CNN
F 3 "" H 12375 7175 50  0001 C CNN
	1    12375 7175
	1    0    0    -1  
$EndComp
$Comp
L neuromime_1.0.1-rescue:GND-neuromime_1.0.0-rescue #PWR037
U 1 1 5D60A6ED
P 12375 6500
F 0 "#PWR037" H 12375 6500 30  0001 C CNN
F 1 "GND" H 12375 6430 30  0001 C CNN
F 2 "" H 12375 6500 50  0001 C CNN
F 3 "" H 12375 6500 50  0001 C CNN
	1    12375 6500
	1    0    0    -1  
$EndComp
Wire Wire Line
	11725 6700 11725 6425
Connection ~ 11725 6700
Wire Wire Line
	11725 6700 11825 6700
Connection ~ 11725 6425
Wire Wire Line
	11175 6375 11175 6425
Wire Wire Line
	11175 6425 11225 6425
Wire Wire Line
	12125 6425 12375 6425
Wire Wire Line
	12375 6425 12375 6500
$Comp
L power:VCC #PWR034
U 1 1 5D60A6FB
P 12225 8150
F 0 "#PWR034" H 12225 8250 30  0001 C CNN
F 1 "VCC" H 12225 8250 30  0000 C CNN
F 2 "" H 12225 8150 50  0001 C CNN
F 3 "" H 12225 8150 50  0001 C CNN
	1    12225 8150
	1    0    0    -1  
$EndComp
Wire Wire Line
	12225 8175 12225 8150
Wire Wire Line
	12225 8175 12025 8175
Text Notes 4375 4725 0    50   ~ 0
peak detector w.\nbleed resistor
Wire Wire Line
	7000 5125 7200 5125
Wire Wire Line
	7200 5000 7200 5125
Connection ~ 7200 5125
Wire Wire Line
	7200 5125 7400 5125
Text Notes 11175 8575 0    50   ~ 0
enable refractory
Wire Wire Line
	6625 5625 7000 5625
Connection ~ 7000 5625
Wire Wire Line
	8575 5625 7400 5625
Connection ~ 7400 5625
Text Notes 9900 4100 0    60   ~ 0
edge detector
$Comp
L power:VCC #PWR026
U 1 1 5D6AB3AF
P 10175 7600
F 0 "#PWR026" H 10175 7700 30  0001 C CNN
F 1 "VCC" H 10175 7700 30  0000 C CNN
F 2 "" H 10175 7600 50  0001 C CNN
F 3 "" H 10175 7600 50  0001 C CNN
	1    10175 7600
	1    0    0    -1  
$EndComp
$Comp
L neuromime_1.0.1-rescue:C-neuromime_1.0.0-rescue C11
U 1 1 5D6AB3B5
P 10175 8175
F 0 "C11" H 10225 8275 50  0000 L CNN
F 1 "0.1uF" H 10225 8075 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W1.6mm_P2.50mm" H 10175 8175 50  0001 C CNN
F 3 "" H 10175 8175 50  0001 C CNN
	1    10175 8175
	0    1    1    0   
$EndComp
$Comp
L neuromime_1.0.1-rescue:R-neuromime_1.0.0-rescue R11
U 1 1 5D6AB3BB
P 9975 7925
F 0 "R11" V 10055 7925 50  0000 C CNN
F 1 "10K" V 9975 7925 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P2.54mm_Vertical" H 9975 7925 50  0001 C CNN
F 3 "" H 9975 7925 50  0001 C CNN
	1    9975 7925
	1    0    0    1   
$EndComp
$Comp
L neuromime_1.0.1-rescue:R-neuromime_1.0.0-rescue R13
U 1 1 5D6AB3C1
P 10375 7925
F 0 "R13" V 10455 7925 50  0000 C CNN
F 1 "10K" V 10375 7925 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P2.54mm_Vertical" H 10375 7925 50  0001 C CNN
F 3 "" H 10375 7925 50  0001 C CNN
	1    10375 7925
	1    0    0    1   
$EndComp
Wire Wire Line
	10175 7600 10175 7675
Connection ~ 10175 7675
Wire Wire Line
	10175 7675 10375 7675
Text Notes 9900 7350 0    60   ~ 0
edge detector
Wire Wire Line
	9475 4925 9500 4925
Connection ~ 9975 4925
Wire Wire Line
	11625 5625 10375 5625
Wire Wire Line
	10375 5625 10375 4925
Connection ~ 10375 4925
Wire Wire Line
	9500 4925 9500 8175
Wire Wire Line
	9500 8175 9975 8175
Connection ~ 9500 4925
Wire Wire Line
	9500 4925 9975 4925
Connection ~ 9975 8175
Wire Wire Line
	11625 8175 10375 8175
Connection ~ 10375 8175
Wire Wire Line
	10375 8175 10350 8175
$Comp
L neuromime_1.0.1-rescue:DIODE-neuromime_1.0.0-rescue D5
U 1 1 5D70F954
P 10875 8700
F 0 "D5" H 10875 8800 40  0000 C CNN
F 1 "1N4148" H 10875 8600 40  0000 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P2.54mm_Vertical_KathodeUp" H 10875 8700 50  0001 C CNN
F 3 "" H 10875 8700 50  0001 C CNN
	1    10875 8700
	-1   0    0    1   
$EndComp
Text Notes 11525 6125 0    50   ~ 0
refractory timer
Wire Wire Line
	12525 7475 12525 8700
Wire Wire Line
	12525 8700 11475 8700
Text GLabel 10675 8700 0    50   Input ~ 0
refractory
Text GLabel 2900 5150 0    50   Input ~ 0
refractory
Wire Wire Line
	2900 5150 3125 5150
Connection ~ 3125 5150
Wire Wire Line
	3125 5150 3125 4625
$Comp
L power:PWR_FLAG #FLG02
U 1 1 5D74E1B6
P 2225 3400
F 0 "#FLG02" H 2225 3495 30  0001 C CNN
F 1 "PWR_FLAG" H 2225 3580 30  0000 C CNN
F 2 "" H 2225 3400 50  0001 C CNN
F 3 "" H 2225 3400 50  0001 C CNN
	1    2225 3400
	-1   0    0    1   
$EndComp
Wire Wire Line
	2400 3400 2225 3400
Connection ~ 2400 3400
Wire Wire Line
	13625 4450 13625 4400
$Comp
L neuromime_1.0.1-rescue:CONN_3-neuromime_1.0.0-rescue P3
U 1 1 5D777850
P 13975 4300
F 0 "P3" V 13925 4300 50  0000 C CNN
F 1 "axon" V 14025 4300 40  0000 C CNN
F 2 "flemming_feetprint_2019:PinHeader_1x03_P2.54mm_Horizontal_elomgated_pads" H 13975 4300 50  0001 C CNN
F 3 "" H 13975 4300 50  0001 C CNN
	1    13975 4300
	1    0    0    1   
$EndComp
$Comp
L neuromime_1.0.1-rescue:GND-neuromime_1.0.0-rescue #PWR043
U 1 1 5D777856
P 13625 4450
F 0 "#PWR043" H 13625 4450 30  0001 C CNN
F 1 "GND" H 13625 4380 30  0001 C CNN
F 2 "" H 13625 4450 50  0001 C CNN
F 3 "" H 13625 4450 50  0001 C CNN
	1    13625 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	13625 5075 13625 5025
$Comp
L neuromime_1.0.1-rescue:CONN_3-neuromime_1.0.0-rescue P4
U 1 1 5D77E778
P 13975 4925
F 0 "P4" V 13925 4925 50  0000 C CNN
F 1 "axon" V 14025 4925 40  0000 C CNN
F 2 "flemming_feetprint_2019:PinHeader_1x03_P2.54mm_Horizontal_elomgated_pads" H 13975 4925 50  0001 C CNN
F 3 "" H 13975 4925 50  0001 C CNN
	1    13975 4925
	1    0    0    1   
$EndComp
$Comp
L neuromime_1.0.1-rescue:GND-neuromime_1.0.0-rescue #PWR045
U 1 1 5D77E77E
P 13625 5075
F 0 "#PWR045" H 13625 5075 30  0001 C CNN
F 1 "GND" H 13625 5005 30  0001 C CNN
F 2 "" H 13625 5075 50  0001 C CNN
F 3 "" H 13625 5075 50  0001 C CNN
	1    13625 5075
	1    0    0    -1  
$EndComp
Wire Wire Line
	13625 7625 13625 7575
$Comp
L neuromime_1.0.1-rescue:CONN_3-neuromime_1.0.0-rescue P5
U 1 1 5D785996
P 13975 7475
F 0 "P5" V 13925 7475 50  0000 C CNN
F 1 "long" V 14025 7475 40  0000 C CNN
F 2 "flemming_feetprint_2016:PinHeader_1x03_P2.54mm_Horizontal_elomgated_pads" H 13975 7475 50  0001 C CNN
F 3 "" H 13975 7475 50  0001 C CNN
	1    13975 7475
	1    0    0    1   
$EndComp
$Comp
L neuromime_1.0.1-rescue:GND-neuromime_1.0.0-rescue #PWR047
U 1 1 5D78599C
P 13625 7625
F 0 "#PWR047" H 13625 7625 30  0001 C CNN
F 1 "GND" H 13625 7555 30  0001 C CNN
F 2 "" H 13625 7625 50  0001 C CNN
F 3 "" H 13625 7625 50  0001 C CNN
	1    13625 7625
	1    0    0    -1  
$EndComp
Text Notes 14300 7700 1    50   ~ 0
long output
Wire Wire Line
	9975 7675 10175 7675
Wire Wire Line
	9975 4425 10175 4425
Wire Notes Line
	14475 5925 14475 8975
Wire Notes Line
	14475 8975 9300 8975
Wire Notes Line
	9300 8975 9300 5925
Wire Notes Line
	9300 5925 14475 5925
Wire Wire Line
	12525 4925 12800 4925
Wire Wire Line
	13625 4300 13325 4300
Wire Wire Line
	13325 3650 13325 4300
Connection ~ 13325 4300
Wire Wire Line
	13325 4300 13325 4925
$Comp
L neuromime_1.0.1-rescue:R-neuromime_1.0.0-rescue R15
U 1 1 5D7C8C0D
P 12800 5175
F 0 "R15" V 12880 5175 50  0000 C CNN
F 1 "Rled" V 12800 5175 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P2.54mm_Vertical" H 12800 5175 50  0001 C CNN
F 3 "" H 12800 5175 50  0001 C CNN
	1    12800 5175
	1    0    0    1   
$EndComp
Connection ~ 12800 4925
Wire Wire Line
	12800 4925 13325 4925
$Comp
L Device:LED D6
U 1 1 5D7C8E43
P 12950 5425
F 0 "D6" H 12942 5166 50  0000 C CNN
F 1 "LED" H 12942 5259 50  0000 C CNN
F 2 "LED_THT:LED_D3.0mm" H 12950 5425 50  0001 C CNN
F 3 "~" H 12950 5425 50  0001 C CNN
	1    12950 5425
	-1   0    0    1   
$EndComp
$Comp
L neuromime_1.0.1-rescue:GND-neuromime_1.0.0-rescue #PWR039
U 1 1 5D7C90BB
P 13100 5500
F 0 "#PWR039" H 13100 5500 30  0001 C CNN
F 1 "GND" H 13100 5430 30  0001 C CNN
F 2 "" H 13100 5500 50  0001 C CNN
F 3 "" H 13100 5500 50  0001 C CNN
	1    13100 5500
	1    0    0    -1  
$EndComp
Wire Wire Line
	13100 5425 13100 5500
Wire Wire Line
	13625 4925 13325 4925
Connection ~ 13325 4925
Text Notes 2750 8425 0    118  ~ 0
-everything in dashed boxes is optional to solder
Wire Wire Line
	12500 7475 12525 7475
Connection ~ 12525 7475
Wire Wire Line
	12525 7475 13625 7475
Wire Wire Line
	3850 5325 3850 5300
Wire Wire Line
	3850 5925 3850 5950
$Comp
L neuromime_1.0.1-rescue:CP-neuromime_1.0.0-rescue C14
U 1 1 5D216FD8
P 11925 3875
F 0 "C14" H 11975 3975 50  0000 L CNN
F 1 "Cpout" H 11975 3775 50  0000 L CNN
F 2 "flemming_feetprint_2019:CP_Radial_D5.0mm_P2.50mm_positive_symbol_inside_single_correction" H 11925 3875 50  0001 C CNN
F 3 "" H 11925 3875 50  0001 C CNN
	1    11925 3875
	0    -1   1    0   
$EndComp
Connection ~ 11725 3875
Wire Wire Line
	5625 5525 4450 5525
Connection ~ 4450 5525
Wire Wire Line
	5625 5725 4450 5725
Connection ~ 4450 5725
$Comp
L Diode:1N4001 D7
U 1 1 5D251C57
P 2450 2800
F 0 "D7" H 2450 2581 50  0000 C CNN
F 1 "1N4001" H 2450 2674 50  0000 C CNN
F 2 "Diode_THT:D_DO-41_SOD81_P5.08mm_Vertical_KathodeUp" H 2450 2625 50  0001 C CNN
F 3 "http://www.vishay.com/docs/88503/1n4001.pdf" H 2450 2800 50  0001 C CNN
	1    2450 2800
	-1   0    0    1   
$EndComp
Wire Wire Line
	2100 2650 2100 2800
Wire Wire Line
	2600 2800 2800 2800
Wire Wire Line
	2800 2800 2800 2600
Connection ~ 2600 2800
$Comp
L power:PWR_FLAG #FLG0101
U 1 1 5D261505
P 3050 2700
F 0 "#FLG0101" H 3050 2795 30  0001 C CNN
F 1 "PWR_FLAG" H 3050 2880 30  0000 C CNN
F 2 "" H 3050 2700 50  0001 C CNN
F 3 "" H 3050 2700 50  0001 C CNN
	1    3050 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	2800 2800 3050 2800
Wire Wire Line
	3050 2800 3050 2700
Connection ~ 2800 2800
Wire Notes Line
	3225 4300 1575 4300
$Comp
L power:VDD #PWR0101
U 1 1 5D2717D1
P 2100 2650
F 0 "#PWR0101" H 2100 2500 50  0001 C CNN
F 1 "VDD" H 2117 2825 50  0000 C CNN
F 2 "" H 2100 2650 50  0001 C CNN
F 3 "" H 2100 2650 50  0001 C CNN
	1    2100 2650
	1    0    0    -1  
$EndComp
$Comp
L power:VDD #PWR0102
U 1 1 5D271A3A
P 2175 4525
F 0 "#PWR0102" H 2175 4375 50  0001 C CNN
F 1 "VDD" H 2192 4700 50  0000 C CNN
F 2 "" H 2175 4525 50  0001 C CNN
F 3 "" H 2175 4525 50  0001 C CNN
	1    2175 4525
	1    0    0    -1  
$EndComp
$Comp
L power:VDD #PWR0103
U 1 1 5D271E9B
P 2175 5625
F 0 "#PWR0103" H 2175 5475 50  0001 C CNN
F 1 "VDD" H 2192 5800 50  0000 C CNN
F 2 "" H 2175 5625 50  0001 C CNN
F 3 "" H 2175 5625 50  0001 C CNN
	1    2175 5625
	1    0    0    -1  
$EndComp
$Comp
L power:VDD #PWR0104
U 1 1 5D2723C5
P 2175 6225
F 0 "#PWR0104" H 2175 6075 50  0001 C CNN
F 1 "VDD" H 2192 6400 50  0000 C CNN
F 2 "" H 2175 6225 50  0001 C CNN
F 3 "" H 2175 6225 50  0001 C CNN
	1    2175 6225
	1    0    0    -1  
$EndComp
$Comp
L power:VDD #PWR0105
U 1 1 5D272637
P 2175 6825
F 0 "#PWR0105" H 2175 6675 50  0001 C CNN
F 1 "VDD" H 2192 7000 50  0000 C CNN
F 2 "" H 2175 6825 50  0001 C CNN
F 3 "" H 2175 6825 50  0001 C CNN
	1    2175 6825
	1    0    0    -1  
$EndComp
$Comp
L power:VDD #PWR0106
U 1 1 5D272BBB
P 13625 3550
F 0 "#PWR0106" H 13625 3400 50  0001 C CNN
F 1 "VDD" H 13642 3725 50  0000 C CNN
F 2 "" H 13625 3550 50  0001 C CNN
F 3 "" H 13625 3550 50  0001 C CNN
	1    13625 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	13325 3650 13625 3650
$Comp
L power:VDD #PWR0107
U 1 1 5D24ADBA
P 13625 4200
F 0 "#PWR0107" H 13625 4050 50  0001 C CNN
F 1 "VDD" H 13642 4375 50  0000 C CNN
F 2 "" H 13625 4200 50  0001 C CNN
F 3 "" H 13625 4200 50  0001 C CNN
	1    13625 4200
	1    0    0    -1  
$EndComp
$Comp
L power:VDD #PWR0108
U 1 1 5D24AF4A
P 13625 4825
F 0 "#PWR0108" H 13625 4675 50  0001 C CNN
F 1 "VDD" H 13642 5000 50  0000 C CNN
F 2 "" H 13625 4825 50  0001 C CNN
F 3 "" H 13625 4825 50  0001 C CNN
	1    13625 4825
	1    0    0    -1  
$EndComp
$Comp
L power:VDD #PWR0109
U 1 1 5D24B254
P 13625 7375
F 0 "#PWR0109" H 13625 7225 50  0001 C CNN
F 1 "VDD" H 13642 7550 50  0000 C CNN
F 2 "" H 13625 7375 50  0001 C CNN
F 3 "" H 13625 7375 50  0001 C CNN
	1    13625 7375
	1    0    0    -1  
$EndComp
$EndSCHEMATC
