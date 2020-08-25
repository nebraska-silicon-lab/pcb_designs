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
L Device:R R1
U 1 1 5F3AE77B
P 3300 1800
F 0 "R1" V 3093 1800 50  0000 C CNN
F 1 "50" V 3184 1800 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 3230 1800 50  0001 C CNN
F 3 "~" H 3300 1800 50  0001 C CNN
	1    3300 1800
	0    1    1    0   
$EndComp
$Comp
L Device:R R2
U 1 1 5F3AF397
P 3300 2100
F 0 "R2" V 3093 2100 50  0000 C CNN
F 1 "50" V 3184 2100 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 3230 2100 50  0001 C CNN
F 3 "~" H 3300 2100 50  0001 C CNN
	1    3300 2100
	0    1    1    0   
$EndComp
$Comp
L Device:R R3
U 1 1 5F3AF7C6
P 3300 2400
F 0 "R3" V 3093 2400 50  0000 C CNN
F 1 "50" V 3184 2400 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 3230 2400 50  0001 C CNN
F 3 "~" H 3300 2400 50  0001 C CNN
	1    3300 2400
	0    1    1    0   
$EndComp
$Comp
L Device:R R4
U 1 1 5F3AF9B6
P 3300 2700
F 0 "R4" V 3093 2700 50  0000 C CNN
F 1 "50" V 3184 2700 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 3230 2700 50  0001 C CNN
F 3 "~" H 3300 2700 50  0001 C CNN
	1    3300 2700
	0    1    1    0   
$EndComp
$Comp
L Connector_Generic:Conn_01x01 J1
U 1 1 5F4045A4
P 2300 1250
F 0 "J1" H 2218 1025 50  0000 C CNN
F 1 "Conn_01x01" H 2218 1116 50  0000 C CNN
F 2 "TestPoint:TestPoint_Keystone_5015_Micro-Minature" H 2300 1250 50  0001 C CNN
F 3 "~" H 2300 1250 50  0001 C CNN
	1    2300 1250
	-1   0    0    1   
$EndComp
Text Label 2500 1250 0    50   ~ 0
VCC
$Comp
L Connector_Generic:Conn_01x01 J2
U 1 1 5F405838
P 2300 1600
F 0 "J2" H 2218 1375 50  0000 C CNN
F 1 "Conn_01x01" H 2218 1466 50  0000 C CNN
F 2 "TestPoint:TestPoint_Keystone_5015_Micro-Minature" H 2300 1600 50  0001 C CNN
F 3 "~" H 2300 1600 50  0001 C CNN
	1    2300 1600
	-1   0    0    1   
$EndComp
Text Label 2500 1600 0    50   ~ 0
GND
Wire Wire Line
	3150 2700 3000 2700
Wire Wire Line
	3000 2700 3000 2400
Wire Wire Line
	3000 1700 2850 1700
Wire Wire Line
	3150 1800 3000 1800
Connection ~ 3000 1800
Wire Wire Line
	3000 1800 3000 1700
Wire Wire Line
	3150 2100 3000 2100
Connection ~ 3000 2100
Wire Wire Line
	3000 2100 3000 1800
Wire Wire Line
	3150 2400 3000 2400
Connection ~ 3000 2400
Wire Wire Line
	3000 2400 3000 2100
Wire Wire Line
	3450 2700 3600 2700
Wire Wire Line
	3600 2700 3600 2400
Text Label 4000 1600 0    50   ~ 0
GND
Text Label 2850 1700 2    50   ~ 0
VCC
Wire Wire Line
	3450 1800 3600 1800
Connection ~ 3600 1800
Wire Wire Line
	3600 1800 3600 1700
Wire Wire Line
	3450 2100 3600 2100
Connection ~ 3600 2100
Wire Wire Line
	3600 2100 3600 1800
Wire Wire Line
	3450 2400 3600 2400
Connection ~ 3600 2400
Wire Wire Line
	3600 2400 3600 2100
$Comp
L Device:R R5
U 1 1 5F408D85
P 3300 3000
F 0 "R5" V 3093 3000 50  0000 C CNN
F 1 "50" V 3184 3000 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 3230 3000 50  0001 C CNN
F 3 "~" H 3300 3000 50  0001 C CNN
	1    3300 3000
	0    1    1    0   
$EndComp
$Comp
L Device:R R6
U 1 1 5F408D8B
P 3300 3300
F 0 "R6" V 3093 3300 50  0000 C CNN
F 1 "50" V 3184 3300 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 3230 3300 50  0001 C CNN
F 3 "~" H 3300 3300 50  0001 C CNN
	1    3300 3300
	0    1    1    0   
$EndComp
$Comp
L Device:R R7
U 1 1 5F408D91
P 3300 3600
F 0 "R7" V 3093 3600 50  0000 C CNN
F 1 "50" V 3184 3600 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 3230 3600 50  0001 C CNN
F 3 "~" H 3300 3600 50  0001 C CNN
	1    3300 3600
	0    1    1    0   
$EndComp
$Comp
L Device:R R8
U 1 1 5F408D97
P 3300 3900
F 0 "R8" V 3093 3900 50  0000 C CNN
F 1 "50" V 3184 3900 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 3230 3900 50  0001 C CNN
F 3 "~" H 3300 3900 50  0001 C CNN
	1    3300 3900
	0    1    1    0   
$EndComp
$Comp
L Device:R R9
U 1 1 5F409D5C
P 3300 4250
F 0 "R9" V 3093 4250 50  0000 C CNN
F 1 "50" V 3184 4250 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 3230 4250 50  0001 C CNN
F 3 "~" H 3300 4250 50  0001 C CNN
	1    3300 4250
	0    1    1    0   
$EndComp
$Comp
L Device:R R10
U 1 1 5F409D62
P 3300 4550
F 0 "R10" V 3093 4550 50  0000 C CNN
F 1 "50" V 3184 4550 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 3230 4550 50  0001 C CNN
F 3 "~" H 3300 4550 50  0001 C CNN
	1    3300 4550
	0    1    1    0   
$EndComp
$Comp
L Device:R R11
U 1 1 5F40DA6F
P 4550 1800
F 0 "R11" V 4343 1800 50  0000 C CNN
F 1 "50" V 4434 1800 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 4480 1800 50  0001 C CNN
F 3 "~" H 4550 1800 50  0001 C CNN
	1    4550 1800
	0    1    1    0   
$EndComp
$Comp
L Device:R R12
U 1 1 5F40DA75
P 4550 2100
F 0 "R12" V 4343 2100 50  0000 C CNN
F 1 "50" V 4434 2100 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 4480 2100 50  0001 C CNN
F 3 "~" H 4550 2100 50  0001 C CNN
	1    4550 2100
	0    1    1    0   
$EndComp
$Comp
L Device:R R13
U 1 1 5F40DA7B
P 4550 2400
F 0 "R13" V 4343 2400 50  0000 C CNN
F 1 "50" V 4434 2400 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 4480 2400 50  0001 C CNN
F 3 "~" H 4550 2400 50  0001 C CNN
	1    4550 2400
	0    1    1    0   
$EndComp
$Comp
L Device:R R14
U 1 1 5F40DA81
P 4550 2700
F 0 "R14" V 4343 2700 50  0000 C CNN
F 1 "50" V 4434 2700 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 4480 2700 50  0001 C CNN
F 3 "~" H 4550 2700 50  0001 C CNN
	1    4550 2700
	0    1    1    0   
$EndComp
$Comp
L Device:R R15
U 1 1 5F40E9E6
P 4550 3000
F 0 "R15" V 4343 3000 50  0000 C CNN
F 1 "50" V 4434 3000 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 4480 3000 50  0001 C CNN
F 3 "~" H 4550 3000 50  0001 C CNN
	1    4550 3000
	0    1    1    0   
$EndComp
$Comp
L Device:R R16
U 1 1 5F40E9EC
P 4550 3300
F 0 "R16" V 4343 3300 50  0000 C CNN
F 1 "50" V 4434 3300 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 4480 3300 50  0001 C CNN
F 3 "~" H 4550 3300 50  0001 C CNN
	1    4550 3300
	0    1    1    0   
$EndComp
$Comp
L Device:R R17
U 1 1 5F40E9F2
P 4550 3600
F 0 "R17" V 4343 3600 50  0000 C CNN
F 1 "50" V 4434 3600 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 4480 3600 50  0001 C CNN
F 3 "~" H 4550 3600 50  0001 C CNN
	1    4550 3600
	0    1    1    0   
$EndComp
$Comp
L Device:R R18
U 1 1 5F40E9F8
P 4550 3900
F 0 "R18" V 4343 3900 50  0000 C CNN
F 1 "50" V 4434 3900 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 4480 3900 50  0001 C CNN
F 3 "~" H 4550 3900 50  0001 C CNN
	1    4550 3900
	0    1    1    0   
$EndComp
$Comp
L Device:R R19
U 1 1 5F40EF19
P 4550 4200
F 0 "R19" V 4343 4200 50  0000 C CNN
F 1 "50" V 4434 4200 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 4480 4200 50  0001 C CNN
F 3 "~" H 4550 4200 50  0001 C CNN
	1    4550 4200
	0    1    1    0   
$EndComp
$Comp
L Device:R R20
U 1 1 5F40EF1F
P 4550 4500
F 0 "R20" V 4343 4500 50  0000 C CNN
F 1 "50" V 4434 4500 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 4480 4500 50  0001 C CNN
F 3 "~" H 4550 4500 50  0001 C CNN
	1    4550 4500
	0    1    1    0   
$EndComp
Wire Wire Line
	3150 4550 3000 4550
Wire Wire Line
	3000 4550 3000 4250
Connection ~ 3000 2700
Wire Wire Line
	3450 4550 3600 4550
Wire Wire Line
	3600 4550 3600 4250
Connection ~ 3600 2700
Wire Wire Line
	3450 3000 3600 3000
Connection ~ 3600 3000
Wire Wire Line
	3600 3000 3600 2700
Wire Wire Line
	3450 3300 3600 3300
Connection ~ 3600 3300
Wire Wire Line
	3600 3300 3600 3000
Wire Wire Line
	3450 3600 3600 3600
Connection ~ 3600 3600
Wire Wire Line
	3600 3600 3600 3300
Wire Wire Line
	3450 3900 3600 3900
Connection ~ 3600 3900
Wire Wire Line
	3600 3900 3600 3600
Wire Wire Line
	3450 4250 3600 4250
Connection ~ 3600 4250
Wire Wire Line
	3600 4250 3600 3900
Wire Wire Line
	3150 4250 3000 4250
Connection ~ 3000 4250
Wire Wire Line
	3000 4250 3000 3900
Wire Wire Line
	3150 3900 3000 3900
Connection ~ 3000 3900
Wire Wire Line
	3000 3900 3000 3600
Wire Wire Line
	3150 3600 3000 3600
Connection ~ 3000 3600
Wire Wire Line
	3000 3600 3000 3300
Wire Wire Line
	3150 3300 3000 3300
Connection ~ 3000 3300
Wire Wire Line
	3000 3300 3000 3000
Wire Wire Line
	3150 3000 3000 3000
Connection ~ 3000 3000
Wire Wire Line
	3000 3000 3000 2700
Wire Wire Line
	3600 1700 4000 1700
Wire Wire Line
	4000 1700 4000 1600
Connection ~ 4000 1700
Wire Wire Line
	4000 1700 4300 1700
Wire Wire Line
	4400 2100 4300 2100
Wire Wire Line
	4300 2100 4300 1800
Wire Wire Line
	4400 1800 4300 1800
Connection ~ 4300 1800
Wire Wire Line
	4300 1800 4300 1700
Wire Wire Line
	4400 2400 4300 2400
Wire Wire Line
	4300 2400 4300 2100
Connection ~ 4300 2100
Wire Wire Line
	4400 2700 4300 2700
Wire Wire Line
	4300 2700 4300 2400
Connection ~ 4300 2400
Wire Wire Line
	4400 3000 4300 3000
Wire Wire Line
	4300 2700 4300 3000
Connection ~ 4300 2700
Wire Wire Line
	4400 3300 4300 3300
Wire Wire Line
	4300 3300 4300 3000
Connection ~ 4300 3000
Wire Wire Line
	4400 4500 4300 4500
Wire Wire Line
	4300 4500 4300 4200
Connection ~ 4300 3300
Wire Wire Line
	4300 3600 4400 3600
Connection ~ 4300 3600
Wire Wire Line
	4300 3600 4300 3300
Wire Wire Line
	4400 3900 4300 3900
Connection ~ 4300 3900
Wire Wire Line
	4300 3900 4300 3600
Wire Wire Line
	4400 4200 4300 4200
Connection ~ 4300 4200
Wire Wire Line
	4300 4200 4300 3900
Wire Wire Line
	4700 4500 4850 4500
Wire Wire Line
	4850 4500 4850 4200
Wire Wire Line
	4850 1650 5100 1650
Wire Wire Line
	4700 1800 4850 1800
Connection ~ 4850 1800
Wire Wire Line
	4850 1800 4850 1650
Wire Wire Line
	4700 2100 4850 2100
Connection ~ 4850 2100
Wire Wire Line
	4850 2100 4850 1800
Wire Wire Line
	4700 2400 4850 2400
Connection ~ 4850 2400
Wire Wire Line
	4850 2400 4850 2100
Wire Wire Line
	4700 2700 4850 2700
Connection ~ 4850 2700
Wire Wire Line
	4850 2700 4850 2400
Wire Wire Line
	4700 3000 4850 3000
Connection ~ 4850 3000
Wire Wire Line
	4850 3000 4850 2700
Wire Wire Line
	4700 3300 4850 3300
Connection ~ 4850 3300
Wire Wire Line
	4850 3300 4850 3000
Wire Wire Line
	4700 3600 4850 3600
Connection ~ 4850 3600
Wire Wire Line
	4850 3600 4850 3300
Wire Wire Line
	4700 3900 4850 3900
Connection ~ 4850 3900
Wire Wire Line
	4850 3900 4850 3600
Wire Wire Line
	4700 4200 4850 4200
Connection ~ 4850 4200
Wire Wire Line
	4850 4200 4850 3900
Text Label 5100 1650 0    50   ~ 0
VCC
$EndSCHEMATC