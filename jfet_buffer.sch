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
L dk_Transistors-JFETs:2N5457_NonStock Q1
U 1 1 63FBF9D3
P 5700 2700
F 0 "Q1" H 5888 2647 60  0000 L CNN
F 1 "2N5457_NonStock" H 5888 2753 60  0000 L CNN
F 2 "digikey-footprints:SOT-23-3" H 5900 2900 60  0001 L CNN
F 3 "https://my.centralsemi.com/get_document.php?cmp=1&mergetype=pd&mergepath=pd&pdf_id=2N5457-5459.PDF" H 5900 3000 60  0001 L CNN
F 4 "2N5457-ND" H 5900 3100 60  0001 L CNN "Digi-Key_PN"
F 5 "2N5457" H 5900 3200 60  0001 L CNN "MPN"
F 6 "Discrete Semiconductor Products" H 5900 3300 60  0001 L CNN "Category"
F 7 "Transistors - JFETs" H 5900 3400 60  0001 L CNN "Family"
F 8 "https://my.centralsemi.com/get_document.php?cmp=1&mergetype=pd&mergepath=pd&pdf_id=2N5457-5459.PDF" H 5900 3500 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/central-semiconductor-corp/2N5457/2N5457-ND/4806918" H 5900 3600 60  0001 L CNN "DK_Detail_Page"
F 10 "JFET N-CH 25V 0.31W TO-92" H 5900 3700 60  0001 L CNN "Description"
F 11 "Central Semiconductor Corp" H 5900 3800 60  0001 L CNN "Manufacturer"
F 12 "Active NonStock" H 5900 3900 60  0001 L CNN "Status"
	1    5700 2700
	1    0    0    1   
$EndComp
$Comp
L Device:R R1
U 1 1 63FC0518
P 5050 2450
F 0 "R1" H 5120 2496 50  0000 L CNN
F 1 "22M" H 5120 2405 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.30x1.75mm_HandSolder" V 4980 2450 50  0001 C CNN
F 3 "~" H 5050 2450 50  0001 C CNN
	1    5050 2450
	1    0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 63FC0A11
P 5050 2950
F 0 "R2" H 5120 2996 50  0000 L CNN
F 1 "22M" H 5120 2905 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.30x1.75mm_HandSolder" V 4980 2950 50  0001 C CNN
F 3 "~" H 5050 2950 50  0001 C CNN
	1    5050 2950
	1    0    0    -1  
$EndComp
$Comp
L Device:R R4
U 1 1 63FC108F
P 6300 3350
F 0 "R4" H 6370 3396 50  0000 L CNN
F 1 "100k" H 6370 3305 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 6230 3350 50  0001 C CNN
F 3 "~" H 6300 3350 50  0001 C CNN
	1    6300 3350
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C2
U 1 1 63FC27BD
P 6150 3100
F 0 "C2" V 6405 3100 50  0000 C CNN
F 1 "10uF" V 6314 3100 50  0000 C CNN
F 2 "Capacitor_SMD:CP_Elec_4x5.4" H 6188 2950 50  0001 C CNN
F 3 "~" H 6150 3100 50  0001 C CNN
	1    6150 3100
	0    -1   -1   0   
$EndComp
$Comp
L Device:CP C3
U 1 1 63FC2DBE
P 6900 2700
F 0 "C3" H 7018 2746 50  0000 L CNN
F 1 "10uF" H 7018 2655 50  0000 L CNN
F 2 "Capacitor_SMD:CP_Elec_4x5.4" H 6938 2550 50  0001 C CNN
F 3 "~" H 6900 2700 50  0001 C CNN
	1    6900 2700
	1    0    0    -1  
$EndComp
$Comp
L Device:C C1
U 1 1 63FC332A
P 4550 2700
F 0 "C1" V 4298 2700 50  0000 C CNN
F 1 "0.1uF" V 4389 2700 50  0000 C CNN
F 2 "Capacitor_SMD:C_0402_1005Metric_Pad0.74x0.62mm_HandSolder" H 4588 2550 50  0001 C CNN
F 3 "~" H 4550 2700 50  0001 C CNN
	1    4550 2700
	0    1    1    0   
$EndComp
Wire Wire Line
	4700 2700 5050 2700
Wire Wire Line
	5050 2600 5050 2700
Wire Wire Line
	5050 2800 5050 2700
Connection ~ 5050 2700
Wire Wire Line
	5050 2700 5400 2700
Wire Wire Line
	5050 2300 5050 2200
Wire Wire Line
	5050 2200 5800 2200
Wire Wire Line
	5800 2200 5800 2400
Wire Wire Line
	5800 2200 6900 2200
Wire Wire Line
	6900 2200 6900 2550
Connection ~ 5800 2200
Wire Wire Line
	6900 2200 7400 2200
Connection ~ 6900 2200
$Comp
L Connector:TestPoint TP2
U 1 1 63FD5ADC
P 4400 2900
F 0 "TP2" H 4342 2926 50  0000 R CNN
F 1 "Input" H 4342 3017 50  0000 R CNN
F 2 "TestPoint:TestPoint_THTPad_2.5x2.5mm_Drill1.2mm" H 4600 2900 50  0001 C CNN
F 3 "~" H 4600 2900 50  0001 C CNN
	1    4400 2900
	-1   0    0    1   
$EndComp
Wire Wire Line
	4400 2900 4400 2700
$Comp
L Connector:TestPoint TP3
U 1 1 63FD72F9
P 6300 3100
F 0 "TP3" V 6254 3288 50  0000 L CNN
F 1 "Output" V 6345 3288 50  0000 L CNN
F 2 "TestPoint:TestPoint_THTPad_2.5x2.5mm_Drill1.2mm" H 6500 3100 50  0001 C CNN
F 3 "~" H 6500 3100 50  0001 C CNN
	1    6300 3100
	0    1    1    0   
$EndComp
$Comp
L Connector:TestPoint TP4
U 1 1 63FDEBA4
P 7400 2200
F 0 "TP4" H 7342 2226 50  0000 R CNN
F 1 "Vdd" H 7342 2317 50  0000 R CNN
F 2 "TestPoint:TestPoint_THTPad_2.5x2.5mm_Drill1.2mm" H 7600 2200 50  0001 C CNN
F 3 "~" H 7600 2200 50  0001 C CNN
	1    7400 2200
	-1   0    0    1   
$EndComp
$Comp
L Connector:TestPoint TP1
U 1 1 63FDF0DC
P 7400 3500
F 0 "TP1" H 7458 3618 50  0000 L CNN
F 1 "GND" H 7458 3527 50  0000 L CNN
F 2 "TestPoint:TestPoint_THTPad_2.5x2.5mm_Drill1.2mm" H 7600 3500 50  0001 C CNN
F 3 "~" H 7600 3500 50  0001 C CNN
	1    7400 3500
	1    0    0    -1  
$EndComp
$Comp
L Device:R R3
U 1 1 63FE5639
P 5800 3350
F 0 "R3" H 5870 3396 50  0000 L CNN
F 1 "10k" H 5870 3305 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 5730 3350 50  0001 C CNN
F 3 "~" H 5800 3350 50  0001 C CNN
	1    5800 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	5800 3000 5800 3100
Wire Wire Line
	5800 3100 6000 3100
Wire Wire Line
	5800 3100 5800 3200
Connection ~ 5800 3100
Wire Wire Line
	6300 3200 6300 3100
Connection ~ 6300 3100
Wire Wire Line
	5050 3100 5050 3500
Wire Wire Line
	5050 3500 5800 3500
Connection ~ 5800 3500
Wire Wire Line
	5800 3500 6300 3500
Wire Wire Line
	6900 2850 6900 3500
Wire Wire Line
	6900 3500 6300 3500
Connection ~ 6300 3500
Wire Wire Line
	6900 3500 7250 3500
Connection ~ 6900 3500
$Comp
L power:GND #PWR0101
U 1 1 63FEF1DE
P 6900 3500
F 0 "#PWR0101" H 6900 3250 50  0001 C CNN
F 1 "GND" H 6905 3327 50  0000 C CNN
F 2 "" H 6900 3500 50  0001 C CNN
F 3 "" H 6900 3500 50  0001 C CNN
	1    6900 3500
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3VP #PWR0102
U 1 1 63FEF806
P 7400 2200
F 0 "#PWR0102" H 7550 2150 50  0001 C CNN
F 1 "+3.3VP" H 7415 2373 50  0000 C CNN
F 2 "" H 7400 2200 50  0001 C CNN
F 3 "" H 7400 2200 50  0001 C CNN
	1    7400 2200
	1    0    0    -1  
$EndComp
Connection ~ 7400 2200
$Comp
L Connector:TestPoint TP5
U 1 1 6400D792
P 7400 3500
F 0 "TP5" H 7342 3526 50  0000 R CNN
F 1 "TestPoint" H 7342 3617 50  0000 R CNN
F 2 "TestPoint:TestPoint_THTPad_2.5x2.5mm_Drill1.2mm" H 7600 3500 50  0001 C CNN
F 3 "~" H 7600 3500 50  0001 C CNN
	1    7400 3500
	-1   0    0    1   
$EndComp
Connection ~ 7400 3500
$Comp
L Connector:TestPoint TP6
U 1 1 6400E0ED
P 7250 3500
F 0 "TP6" H 7308 3618 50  0000 L CNN
F 1 "TestPoint" H 7308 3527 50  0000 L CNN
F 2 "TestPoint:TestPoint_THTPad_2.5x2.5mm_Drill1.2mm" H 7450 3500 50  0001 C CNN
F 3 "~" H 7450 3500 50  0001 C CNN
	1    7250 3500
	1    0    0    -1  
$EndComp
Connection ~ 7250 3500
Wire Wire Line
	7250 3500 7400 3500
$EndSCHEMATC
