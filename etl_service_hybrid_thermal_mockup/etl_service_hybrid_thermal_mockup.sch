EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "ETL Service Hybrid Thermal Mockup"
Date "2020-01-28"
Rev "1.0"
Comp "Caleb Fangmeier - University of Nebraska"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text Notes 950  1800 0    50   ~ 0
Supply for 12 Full ETL Modules\nTotal Power: 4.53W per module x 12 = 54.4W\nModule Resistance: 47.78 Ohm
Wire Wire Line
	1550 3100 1550 3450
Wire Wire Line
	1550 3450 1900 3450
Text Notes 800  2300 0    50   ~ 0
Full Series Values\nI = 307 mA\nV = 176V
Text Notes 1650 2300 0    50   ~ 0
Half Series Values\nI = 615 mA\nV = 88V
Text Notes 2500 2300 0    50   Italic 0
Quarter Series Values\nI = 1.23 A\nV = 44V
Wire Wire Line
	1900 3550 1800 3550
Wire Wire Line
	1800 3550 1800 3800
Wire Wire Line
	1800 3800 1900 3800
Wire Wire Line
	1900 3900 1800 3900
Wire Wire Line
	1800 3900 1800 4150
Wire Wire Line
	1800 4150 1900 4150
Wire Wire Line
	1900 4250 1450 4250
Wire Wire Line
	1450 3100 1450 4250
Connection ~ 1550 3450
Wire Wire Line
	1300 3900 1300 4150
Wire Wire Line
	1300 3550 1300 3800
Wire Wire Line
	1300 4150 1200 4150
Wire Wire Line
	1200 3900 1300 3900
Wire Wire Line
	1300 3800 1200 3800
Wire Wire Line
	1200 3550 1300 3550
Wire Wire Line
	1550 3450 1200 3450
$Comp
L Connector:Conn_01x02_Male J1
U 1 1 5E3120FB
P 1000 3550
F 0 "J1" H 973 3478 50  0000 R CNN
F 1 "Conn_01x02_Male" V 1153 3594 50  0001 L CNN
F 2 "unl_silab:BM02B-SRSS-TB LFSN" H 1000 3550 50  0001 C CNN
F 3 "https://www.digikey.com/en/products/detail/jst-sales-america-inc/BM02B-SRSS-TB-LF-SN/926694" H 1000 3550 50  0001 C CNN
	1    1000 3550
	1    0    0    1   
$EndComp
Wire Wire Line
	1200 4250 1450 4250
Connection ~ 1450 4250
Wire Wire Line
	1550 3450 1550 4500
Wire Wire Line
	1550 4500 1900 4500
Wire Wire Line
	1550 4500 1200 4500
Connection ~ 1550 4500
Wire Wire Line
	1900 4600 1800 4600
Wire Wire Line
	1800 4600 1800 4850
Wire Wire Line
	1800 4850 1900 4850
Wire Wire Line
	1200 4600 1300 4600
Wire Wire Line
	1300 4600 1300 4850
Wire Wire Line
	1300 4850 1200 4850
Wire Wire Line
	1900 4950 1800 4950
Wire Wire Line
	1800 4950 1800 5200
Wire Wire Line
	1800 5200 1900 5200
Wire Wire Line
	1200 4950 1300 4950
Wire Wire Line
	1300 4950 1300 5200
Wire Wire Line
	1300 5200 1200 5200
Wire Wire Line
	1200 5300 1450 5300
Wire Wire Line
	1450 5300 1450 4250
Wire Wire Line
	1900 5300 1450 5300
Connection ~ 1450 5300
Text Notes 2500 2350 0    50   ~ 0
_____________________
$Comp
L Connector_Generic:Conn_02x05_Odd_Even J13
U 1 1 5E33EC53
P 3050 4400
F 0 "J13" V 3146 4112 50  0000 R CNN
F 1 "Conn_02x05_Odd_Even" V 3055 4112 50  0000 R CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_2x05_P2.54mm_Vertical_SMD" H 3050 4400 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/molex/0015916102/WM3699TR-ND/2421395" H 3050 4400 50  0001 C CNN
	1    3050 4400
	0    -1   -1   0   
$EndComp
Text Label 1550 3100 0    50   ~ 0
MOD_POS
Text Label 1450 3100 2    50   ~ 0
MOD_NEG
Text Label 2850 4100 1    50   ~ 0
MOD_POS
Text Label 2950 4100 1    50   ~ 0
MOD_POS
Text Label 2850 4600 3    50   ~ 0
MOD_NEG
Text Label 2950 4600 3    50   ~ 0
MOD_NEG
$Comp
L Device:R R1
U 1 1 5E3548AF
P 4600 2400
F 0 "R1" V 4500 2400 50  0000 C CNN
F 1 "91" V 4600 2400 50  0000 C CNN
F 2 "Resistor_SMD:R_2512_6332Metric_Pad1.52x3.35mm_HandSolder" V 4530 2400 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/panasonic-electronic-components/ERJ-1TYJ910U/PT91XCT-ND/365445" H 4600 2400 50  0001 C CNN
	1    4600 2400
	0    1    1    0   
$EndComp
Wire Wire Line
	5300 2400 5150 2400
Wire Wire Line
	4850 2400 4750 2400
Wire Wire Line
	4450 2400 4400 2400
Wire Wire Line
	4400 2400 4400 2600
Wire Wire Line
	4400 2600 4450 2600
Wire Wire Line
	4750 2600 4850 2600
Wire Wire Line
	5150 2600 5200 2600
Wire Wire Line
	5200 2600 5200 2800
Wire Wire Line
	5200 2800 5150 2800
Wire Wire Line
	4850 2800 4750 2800
Wire Wire Line
	4450 2800 4400 2800
Wire Wire Line
	4400 2800 4400 2900
Wire Wire Line
	4400 2900 5300 2900
Text Notes 4400 2200 0    50   ~ 0
Total Service Hybrid Power: 18W\nEach Resistor Group Emits 3.6W\nTuned to run at ~~44V
Wire Wire Line
	5300 3100 5150 3100
Wire Wire Line
	4850 3100 4750 3100
Wire Wire Line
	4450 3100 4400 3100
Wire Wire Line
	4400 3100 4400 3300
Wire Wire Line
	4400 3300 4450 3300
Wire Wire Line
	4750 3300 4850 3300
Wire Wire Line
	5150 3300 5200 3300
Wire Wire Line
	5200 3300 5200 3500
Wire Wire Line
	5200 3500 5150 3500
Wire Wire Line
	4850 3500 4750 3500
Wire Wire Line
	4450 3500 4400 3500
Wire Wire Line
	4400 3500 4400 3600
Wire Wire Line
	4400 3600 5300 3600
Wire Wire Line
	5300 3800 5150 3800
Wire Wire Line
	4850 3800 4750 3800
Wire Wire Line
	4450 3800 4400 3800
Wire Wire Line
	4400 3800 4400 4000
Wire Wire Line
	4400 4000 4450 4000
Wire Wire Line
	4750 4000 4850 4000
Wire Wire Line
	5150 4000 5200 4000
Wire Wire Line
	5200 4000 5200 4200
Wire Wire Line
	5200 4200 5150 4200
Wire Wire Line
	4850 4200 4750 4200
Wire Wire Line
	4450 4200 4400 4200
Wire Wire Line
	4400 4200 4400 4300
Wire Wire Line
	4400 4300 5300 4300
Wire Wire Line
	5300 4550 5150 4550
Wire Wire Line
	4850 4550 4750 4550
Wire Wire Line
	4450 4550 4400 4550
Wire Wire Line
	4400 4550 4400 4750
Wire Wire Line
	4400 4750 4450 4750
Wire Wire Line
	4750 4750 4850 4750
Wire Wire Line
	5150 4750 5200 4750
Wire Wire Line
	5200 4750 5200 4950
Wire Wire Line
	5200 4950 5150 4950
Wire Wire Line
	4850 4950 4750 4950
Wire Wire Line
	4450 4950 4400 4950
Wire Wire Line
	4400 4950 4400 5050
Wire Wire Line
	4400 5050 5300 5050
Wire Wire Line
	5300 5250 5150 5250
Wire Wire Line
	4850 5250 4750 5250
Wire Wire Line
	4450 5250 4400 5250
Wire Wire Line
	4400 5250 4400 5450
Wire Wire Line
	4400 5450 4450 5450
Wire Wire Line
	4750 5450 4850 5450
Wire Wire Line
	5150 5450 5200 5450
Wire Wire Line
	5200 5450 5200 5650
Wire Wire Line
	5200 5650 5150 5650
Wire Wire Line
	4850 5650 4750 5650
Wire Wire Line
	4450 5650 4400 5650
Wire Wire Line
	4400 5650 4400 5750
Wire Wire Line
	4400 5750 5300 5750
Text Label 3050 4100 1    50   ~ 0
MOD_POS
Text Label 3050 4600 3    50   ~ 0
MOD_NEG
Text Label 3150 4100 1    50   ~ 0
SH_POS
Text Label 3250 4100 1    50   ~ 0
SH_POS
Text Label 3150 4600 3    50   ~ 0
SH_NEG
Text Label 3250 4600 3    50   ~ 0
SH_NEG
Text Label 5300 2400 0    50   ~ 0
SH_POS
Text Label 5300 3100 0    50   ~ 0
SH_POS
Text Label 5300 3800 0    50   ~ 0
SH_POS
Text Label 5300 4550 0    50   ~ 0
SH_POS
Text Label 5300 5250 0    50   ~ 0
SH_POS
Text Label 5300 2900 0    50   ~ 0
SH_NEG
Text Label 5300 3600 0    50   ~ 0
SH_NEG
Text Label 5300 4300 0    50   ~ 0
SH_NEG
Text Label 5300 5050 0    50   ~ 0
SH_NEG
Text Label 5300 5750 0    50   ~ 0
SH_NEG
$Comp
L Device:R R19
U 1 1 5E3A8602
P 5000 2400
F 0 "R19" V 4900 2400 50  0000 C CNN
F 1 "91" V 5000 2400 50  0000 C CNN
F 2 "Resistor_SMD:R_2512_6332Metric_Pad1.52x3.35mm_HandSolder" V 4930 2400 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/panasonic-electronic-components/ERJ-1TYJ910U/PT91XCT-ND/365445" H 5000 2400 50  0001 C CNN
	1    5000 2400
	0    1    1    0   
$EndComp
$Comp
L Device:R R20
U 1 1 5E3A89FC
P 5000 2600
F 0 "R20" V 4900 2600 50  0000 C CNN
F 1 "91" V 5000 2600 50  0000 C CNN
F 2 "Resistor_SMD:R_2512_6332Metric_Pad1.52x3.35mm_HandSolder" V 4930 2600 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/panasonic-electronic-components/ERJ-1TYJ910U/PT91XCT-ND/365445" H 5000 2600 50  0001 C CNN
	1    5000 2600
	0    1    1    0   
$EndComp
$Comp
L Device:R R2
U 1 1 5E3A8DBE
P 4600 2600
F 0 "R2" V 4500 2600 50  0000 C CNN
F 1 "91" V 4600 2600 50  0000 C CNN
F 2 "Resistor_SMD:R_2512_6332Metric_Pad1.52x3.35mm_HandSolder" V 4530 2600 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/panasonic-electronic-components/ERJ-1TYJ910U/PT91XCT-ND/365445" H 4600 2600 50  0001 C CNN
	1    4600 2600
	0    1    1    0   
$EndComp
$Comp
L Device:R R3
U 1 1 5E3A91B6
P 4600 2800
F 0 "R3" V 4500 2800 50  0000 C CNN
F 1 "91" V 4600 2800 50  0000 C CNN
F 2 "Resistor_SMD:R_2512_6332Metric_Pad1.52x3.35mm_HandSolder" V 4530 2800 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/panasonic-electronic-components/ERJ-1TYJ910U/PT91XCT-ND/365445" H 4600 2800 50  0001 C CNN
	1    4600 2800
	0    1    1    0   
$EndComp
$Comp
L Device:R R21
U 1 1 5E3A95CF
P 5000 2800
F 0 "R21" V 4900 2800 50  0000 C CNN
F 1 "91" V 5000 2800 50  0000 C CNN
F 2 "Resistor_SMD:R_2512_6332Metric_Pad1.52x3.35mm_HandSolder" V 4930 2800 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/panasonic-electronic-components/ERJ-1TYJ910U/PT91XCT-ND/365445" H 5000 2800 50  0001 C CNN
	1    5000 2800
	0    1    1    0   
$EndComp
$Comp
L Device:R R4
U 1 1 5E3AFFBE
P 4600 3100
F 0 "R4" V 4500 3100 50  0000 C CNN
F 1 "91" V 4600 3100 50  0000 C CNN
F 2 "Resistor_SMD:R_2512_6332Metric_Pad1.52x3.35mm_HandSolder" V 4530 3100 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/panasonic-electronic-components/ERJ-1TYJ910U/PT91XCT-ND/365445" H 4600 3100 50  0001 C CNN
	1    4600 3100
	0    1    1    0   
$EndComp
$Comp
L Device:R R22
U 1 1 5E3AFFC7
P 5000 3100
F 0 "R22" V 4900 3100 50  0000 C CNN
F 1 "91" V 5000 3100 50  0000 C CNN
F 2 "Resistor_SMD:R_2512_6332Metric_Pad1.52x3.35mm_HandSolder" V 4930 3100 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/panasonic-electronic-components/ERJ-1TYJ910U/PT91XCT-ND/365445" H 5000 3100 50  0001 C CNN
	1    5000 3100
	0    1    1    0   
$EndComp
$Comp
L Device:R R23
U 1 1 5E3AFFCD
P 5000 3300
F 0 "R23" V 4900 3300 50  0000 C CNN
F 1 "91" V 5000 3300 50  0000 C CNN
F 2 "Resistor_SMD:R_2512_6332Metric_Pad1.52x3.35mm_HandSolder" V 4930 3300 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/panasonic-electronic-components/ERJ-1TYJ910U/PT91XCT-ND/365445" H 5000 3300 50  0001 C CNN
	1    5000 3300
	0    1    1    0   
$EndComp
$Comp
L Device:R R5
U 1 1 5E3AFFD3
P 4600 3300
F 0 "R5" V 4500 3300 50  0000 C CNN
F 1 "91" V 4600 3300 50  0000 C CNN
F 2 "Resistor_SMD:R_2512_6332Metric_Pad1.52x3.35mm_HandSolder" V 4530 3300 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/panasonic-electronic-components/ERJ-1TYJ910U/PT91XCT-ND/365445" H 4600 3300 50  0001 C CNN
	1    4600 3300
	0    1    1    0   
$EndComp
$Comp
L Device:R R6
U 1 1 5E3AFFD9
P 4600 3500
F 0 "R6" V 4500 3500 50  0000 C CNN
F 1 "91" V 4600 3500 50  0000 C CNN
F 2 "Resistor_SMD:R_2512_6332Metric_Pad1.52x3.35mm_HandSolder" V 4530 3500 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/panasonic-electronic-components/ERJ-1TYJ910U/PT91XCT-ND/365445" H 4600 3500 50  0001 C CNN
	1    4600 3500
	0    1    1    0   
$EndComp
$Comp
L Device:R R24
U 1 1 5E3AFFDF
P 5000 3500
F 0 "R24" V 4900 3500 50  0000 C CNN
F 1 "91" V 5000 3500 50  0000 C CNN
F 2 "Resistor_SMD:R_2512_6332Metric_Pad1.52x3.35mm_HandSolder" V 4930 3500 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/panasonic-electronic-components/ERJ-1TYJ910U/PT91XCT-ND/365445" H 5000 3500 50  0001 C CNN
	1    5000 3500
	0    1    1    0   
$EndComp
$Comp
L Device:R R7
U 1 1 5E3B4B5B
P 4600 3800
F 0 "R7" V 4500 3800 50  0000 C CNN
F 1 "91" V 4600 3800 50  0000 C CNN
F 2 "Resistor_SMD:R_2512_6332Metric_Pad1.52x3.35mm_HandSolder" V 4530 3800 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/panasonic-electronic-components/ERJ-1TYJ910U/PT91XCT-ND/365445" H 4600 3800 50  0001 C CNN
	1    4600 3800
	0    1    1    0   
$EndComp
$Comp
L Device:R R25
U 1 1 5E3B4B64
P 5000 3800
F 0 "R25" V 4900 3800 50  0000 C CNN
F 1 "91" V 5000 3800 50  0000 C CNN
F 2 "Resistor_SMD:R_2512_6332Metric_Pad1.52x3.35mm_HandSolder" V 4930 3800 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/panasonic-electronic-components/ERJ-1TYJ910U/PT91XCT-ND/365445" H 5000 3800 50  0001 C CNN
	1    5000 3800
	0    1    1    0   
$EndComp
$Comp
L Device:R R26
U 1 1 5E3B4B6A
P 5000 4000
F 0 "R26" V 4900 4000 50  0000 C CNN
F 1 "91" V 5000 4000 50  0000 C CNN
F 2 "Resistor_SMD:R_2512_6332Metric_Pad1.52x3.35mm_HandSolder" V 4930 4000 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/panasonic-electronic-components/ERJ-1TYJ910U/PT91XCT-ND/365445" H 5000 4000 50  0001 C CNN
	1    5000 4000
	0    1    1    0   
$EndComp
$Comp
L Device:R R8
U 1 1 5E3B4B70
P 4600 4000
F 0 "R8" V 4500 4000 50  0000 C CNN
F 1 "91" V 4600 4000 50  0000 C CNN
F 2 "Resistor_SMD:R_2512_6332Metric_Pad1.52x3.35mm_HandSolder" V 4530 4000 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/panasonic-electronic-components/ERJ-1TYJ910U/PT91XCT-ND/365445" H 4600 4000 50  0001 C CNN
	1    4600 4000
	0    1    1    0   
$EndComp
$Comp
L Device:R R9
U 1 1 5E3B4B76
P 4600 4200
F 0 "R9" V 4500 4200 50  0000 C CNN
F 1 "91" V 4600 4200 50  0000 C CNN
F 2 "Resistor_SMD:R_2512_6332Metric_Pad1.52x3.35mm_HandSolder" V 4530 4200 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/panasonic-electronic-components/ERJ-1TYJ910U/PT91XCT-ND/365445" H 4600 4200 50  0001 C CNN
	1    4600 4200
	0    1    1    0   
$EndComp
$Comp
L Device:R R27
U 1 1 5E3B4B7C
P 5000 4200
F 0 "R27" V 4900 4200 50  0000 C CNN
F 1 "91" V 5000 4200 50  0000 C CNN
F 2 "Resistor_SMD:R_2512_6332Metric_Pad1.52x3.35mm_HandSolder" V 4930 4200 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/panasonic-electronic-components/ERJ-1TYJ910U/PT91XCT-ND/365445" H 5000 4200 50  0001 C CNN
	1    5000 4200
	0    1    1    0   
$EndComp
$Comp
L Device:R R10
U 1 1 5E3BA52F
P 4600 4550
F 0 "R10" V 4500 4550 50  0000 C CNN
F 1 "91" V 4600 4550 50  0000 C CNN
F 2 "Resistor_SMD:R_2512_6332Metric_Pad1.52x3.35mm_HandSolder" V 4530 4550 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/panasonic-electronic-components/ERJ-1TYJ910U/PT91XCT-ND/365445" H 4600 4550 50  0001 C CNN
	1    4600 4550
	0    1    1    0   
$EndComp
$Comp
L Device:R R28
U 1 1 5E3BA538
P 5000 4550
F 0 "R28" V 4900 4550 50  0000 C CNN
F 1 "91" V 5000 4550 50  0000 C CNN
F 2 "Resistor_SMD:R_2512_6332Metric_Pad1.52x3.35mm_HandSolder" V 4930 4550 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/panasonic-electronic-components/ERJ-1TYJ910U/PT91XCT-ND/365445" H 5000 4550 50  0001 C CNN
	1    5000 4550
	0    1    1    0   
$EndComp
$Comp
L Device:R R29
U 1 1 5E3BA53E
P 5000 4750
F 0 "R29" V 4900 4750 50  0000 C CNN
F 1 "91" V 5000 4750 50  0000 C CNN
F 2 "Resistor_SMD:R_2512_6332Metric_Pad1.52x3.35mm_HandSolder" V 4930 4750 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/panasonic-electronic-components/ERJ-1TYJ910U/PT91XCT-ND/365445" H 5000 4750 50  0001 C CNN
	1    5000 4750
	0    1    1    0   
$EndComp
$Comp
L Device:R R11
U 1 1 5E3BA544
P 4600 4750
F 0 "R11" V 4500 4750 50  0000 C CNN
F 1 "91" V 4600 4750 50  0000 C CNN
F 2 "Resistor_SMD:R_2512_6332Metric_Pad1.52x3.35mm_HandSolder" V 4530 4750 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/panasonic-electronic-components/ERJ-1TYJ910U/PT91XCT-ND/365445" H 4600 4750 50  0001 C CNN
	1    4600 4750
	0    1    1    0   
$EndComp
$Comp
L Device:R R12
U 1 1 5E3BA54A
P 4600 4950
F 0 "R12" V 4500 4950 50  0000 C CNN
F 1 "91" V 4600 4950 50  0000 C CNN
F 2 "Resistor_SMD:R_2512_6332Metric_Pad1.52x3.35mm_HandSolder" V 4530 4950 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/panasonic-electronic-components/ERJ-1TYJ910U/PT91XCT-ND/365445" H 4600 4950 50  0001 C CNN
	1    4600 4950
	0    1    1    0   
$EndComp
$Comp
L Device:R R30
U 1 1 5E3BA550
P 5000 4950
F 0 "R30" V 4900 4950 50  0000 C CNN
F 1 "91" V 5000 4950 50  0000 C CNN
F 2 "Resistor_SMD:R_2512_6332Metric_Pad1.52x3.35mm_HandSolder" V 4930 4950 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/panasonic-electronic-components/ERJ-1TYJ910U/PT91XCT-ND/365445" H 5000 4950 50  0001 C CNN
	1    5000 4950
	0    1    1    0   
$EndComp
$Comp
L Device:R R13
U 1 1 5E3BEF40
P 4600 5250
F 0 "R13" V 4500 5250 50  0000 C CNN
F 1 "91" V 4600 5250 50  0000 C CNN
F 2 "Resistor_SMD:R_2512_6332Metric_Pad1.52x3.35mm_HandSolder" V 4530 5250 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/panasonic-electronic-components/ERJ-1TYJ910U/PT91XCT-ND/365445" H 4600 5250 50  0001 C CNN
	1    4600 5250
	0    1    1    0   
$EndComp
$Comp
L Device:R R31
U 1 1 5E3BEF49
P 5000 5250
F 0 "R31" V 4900 5250 50  0000 C CNN
F 1 "91" V 5000 5250 50  0000 C CNN
F 2 "Resistor_SMD:R_2512_6332Metric_Pad1.52x3.35mm_HandSolder" V 4930 5250 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/panasonic-electronic-components/ERJ-1TYJ910U/PT91XCT-ND/365445" H 5000 5250 50  0001 C CNN
	1    5000 5250
	0    1    1    0   
$EndComp
$Comp
L Device:R R32
U 1 1 5E3BEF4F
P 5000 5450
F 0 "R32" V 4900 5450 50  0000 C CNN
F 1 "91" V 5000 5450 50  0000 C CNN
F 2 "Resistor_SMD:R_2512_6332Metric_Pad1.52x3.35mm_HandSolder" V 4930 5450 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/panasonic-electronic-components/ERJ-1TYJ910U/PT91XCT-ND/365445" H 5000 5450 50  0001 C CNN
	1    5000 5450
	0    1    1    0   
$EndComp
$Comp
L Device:R R14
U 1 1 5E3BEF55
P 4600 5450
F 0 "R14" V 4500 5450 50  0000 C CNN
F 1 "91" V 4600 5450 50  0000 C CNN
F 2 "Resistor_SMD:R_2512_6332Metric_Pad1.52x3.35mm_HandSolder" V 4530 5450 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/panasonic-electronic-components/ERJ-1TYJ910U/PT91XCT-ND/365445" H 4600 5450 50  0001 C CNN
	1    4600 5450
	0    1    1    0   
$EndComp
$Comp
L Device:R R15
U 1 1 5E3BEF5B
P 4600 5650
F 0 "R15" V 4500 5650 50  0000 C CNN
F 1 "91" V 4600 5650 50  0000 C CNN
F 2 "Resistor_SMD:R_2512_6332Metric_Pad1.52x3.35mm_HandSolder" V 4530 5650 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/panasonic-electronic-components/ERJ-1TYJ910U/PT91XCT-ND/365445" H 4600 5650 50  0001 C CNN
	1    4600 5650
	0    1    1    0   
$EndComp
$Comp
L Device:R R33
U 1 1 5E3BEF61
P 5000 5650
F 0 "R33" V 4900 5650 50  0000 C CNN
F 1 "91" V 5000 5650 50  0000 C CNN
F 2 "Resistor_SMD:R_2512_6332Metric_Pad1.52x3.35mm_HandSolder" V 4930 5650 50  0001 C CNN
F 3 "https://www.digikey.com/product-detail/en/panasonic-electronic-components/ERJ-1TYJ910U/PT91XCT-ND/365445" H 5000 5650 50  0001 C CNN
	1    5000 5650
	0    1    1    0   
$EndComp
$Comp
L Connector:Conn_01x02_Male J7
U 1 1 5E30ABAA
P 2100 3450
F 0 "J7" H 2072 3378 50  0000 R CNN
F 1 "Conn_01x02_Male" V 2253 3494 50  0001 L CNN
F 2 "unl_silab:BM02B-SRSS-TB LFSN" H 2100 3450 50  0001 C CNN
F 3 "https://www.digikey.com/en/products/detail/jst-sales-america-inc/BM02B-SRSS-TB-LF-SN/926694" H 2100 3450 50  0001 C CNN
	1    2100 3450
	-1   0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x02_Male J2
U 1 1 5E3CF6B4
P 1000 3900
F 0 "J2" H 973 3828 50  0000 R CNN
F 1 "Conn_01x02_Male" V 1153 3944 50  0001 L CNN
F 2 "unl_silab:BM02B-SRSS-TB LFSN" H 1000 3900 50  0001 C CNN
F 3 "https://www.digikey.com/en/products/detail/jst-sales-america-inc/BM02B-SRSS-TB-LF-SN/926694" H 1000 3900 50  0001 C CNN
	1    1000 3900
	1    0    0    1   
$EndComp
$Comp
L Connector:Conn_01x02_Male J3
U 1 1 5E3CFA2F
P 1000 4250
F 0 "J3" H 973 4178 50  0000 R CNN
F 1 "Conn_01x02_Male" V 1153 4294 50  0001 L CNN
F 2 "unl_silab:BM02B-SRSS-TB LFSN" H 1000 4250 50  0001 C CNN
F 3 "https://www.digikey.com/en/products/detail/jst-sales-america-inc/BM02B-SRSS-TB-LF-SN/926694" H 1000 4250 50  0001 C CNN
	1    1000 4250
	1    0    0    1   
$EndComp
$Comp
L Connector:Conn_01x02_Male J4
U 1 1 5E3D0D52
P 1000 4600
F 0 "J4" H 973 4528 50  0000 R CNN
F 1 "Conn_01x02_Male" V 1153 4644 50  0001 L CNN
F 2 "unl_silab:BM02B-SRSS-TB LFSN" H 1000 4600 50  0001 C CNN
F 3 "https://www.digikey.com/en/products/detail/jst-sales-america-inc/BM02B-SRSS-TB-LF-SN/926694" H 1000 4600 50  0001 C CNN
	1    1000 4600
	1    0    0    1   
$EndComp
$Comp
L Connector:Conn_01x02_Male J5
U 1 1 5E3D1136
P 1000 4950
F 0 "J5" H 973 4878 50  0000 R CNN
F 1 "Conn_01x02_Male" V 1153 4994 50  0001 L CNN
F 2 "unl_silab:BM02B-SRSS-TB LFSN" H 1000 4950 50  0001 C CNN
F 3 "https://www.digikey.com/en/products/detail/jst-sales-america-inc/BM02B-SRSS-TB-LF-SN/926694" H 1000 4950 50  0001 C CNN
	1    1000 4950
	1    0    0    1   
$EndComp
$Comp
L Connector:Conn_01x02_Male J6
U 1 1 5E3D155D
P 1000 5300
F 0 "J6" H 973 5228 50  0000 R CNN
F 1 "Conn_01x02_Male" V 1153 5344 50  0001 L CNN
F 2 "unl_silab:BM02B-SRSS-TB LFSN" H 1000 5300 50  0001 C CNN
F 3 "https://www.digikey.com/en/products/detail/jst-sales-america-inc/BM02B-SRSS-TB-LF-SN/926694" H 1000 5300 50  0001 C CNN
	1    1000 5300
	1    0    0    1   
$EndComp
$Comp
L Connector:Conn_01x02_Male J8
U 1 1 5E3D1962
P 2100 3800
F 0 "J8" H 2072 3728 50  0000 R CNN
F 1 "Conn_01x02_Male" V 2253 3844 50  0001 L CNN
F 2 "unl_silab:BM02B-SRSS-TB LFSN" H 2100 3800 50  0001 C CNN
F 3 "https://www.digikey.com/en/products/detail/jst-sales-america-inc/BM02B-SRSS-TB-LF-SN/926694" H 2100 3800 50  0001 C CNN
	1    2100 3800
	-1   0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x02_Male J9
U 1 1 5E3D1D7E
P 2100 4150
F 0 "J9" H 2072 4078 50  0000 R CNN
F 1 "Conn_01x02_Male" V 2253 4194 50  0001 L CNN
F 2 "unl_silab:BM02B-SRSS-TB LFSN" H 2100 4150 50  0001 C CNN
F 3 "https://www.digikey.com/en/products/detail/jst-sales-america-inc/BM02B-SRSS-TB-LF-SN/926694" H 2100 4150 50  0001 C CNN
	1    2100 4150
	-1   0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x02_Male J10
U 1 1 5E3D309A
P 2100 4500
F 0 "J10" H 2072 4428 50  0000 R CNN
F 1 "Conn_01x02_Male" V 2253 4544 50  0001 L CNN
F 2 "unl_silab:BM02B-SRSS-TB LFSN" H 2100 4500 50  0001 C CNN
F 3 "https://www.digikey.com/en/products/detail/jst-sales-america-inc/BM02B-SRSS-TB-LF-SN/926694" H 2100 4500 50  0001 C CNN
	1    2100 4500
	-1   0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x02_Male J11
U 1 1 5E3D47DE
P 2100 4850
F 0 "J11" H 2072 4778 50  0000 R CNN
F 1 "Conn_01x02_Male" V 2253 4894 50  0001 L CNN
F 2 "unl_silab:BM02B-SRSS-TB LFSN" H 2100 4850 50  0001 C CNN
F 3 "https://www.digikey.com/en/products/detail/jst-sales-america-inc/BM02B-SRSS-TB-LF-SN/926694" H 2100 4850 50  0001 C CNN
	1    2100 4850
	-1   0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x02_Male J12
U 1 1 5E3D4C8B
P 2100 5200
F 0 "J12" H 2072 5128 50  0000 R CNN
F 1 "Conn_01x02_Male" V 2253 5244 50  0001 L CNN
F 2 "unl_silab:BM02B-SRSS-TB LFSN" H 2100 5200 50  0001 C CNN
F 3 "https://www.digikey.com/en/products/detail/jst-sales-america-inc/BM02B-SRSS-TB-LF-SN/926694" H 2100 5200 50  0001 C CNN
	1    2100 5200
	-1   0    0    -1  
$EndComp
Text Notes 900  2900 0    50   ~ 0
Connector Digipart: 455-1788-1-ND\nCable Digipart: 455-3001-ND
$EndSCHEMATC
