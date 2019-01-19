EESchema Schematic File Version 4
LIBS:psu-cache
EELAYER 26 0
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
L Regulator_Linear:L7812 U1
U 1 1 5C42385E
P 3500 2500
F 0 "U1" H 3500 2742 50  0000 C CNN
F 1 "L7812" H 3500 2651 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:TO-252-2" H 3525 2350 50  0001 L CIN
F 3 "http://www.st.com/content/ccc/resource/technical/document/datasheet/41/4f/b3/b0/12/d4/47/88/CD00000444.pdf/files/CD00000444.pdf/jcr:content/translations/en.CD00000444.pdf" H 3500 2450 50  0001 C CNN
	1    3500 2500
	1    0    0    -1  
$EndComp
$Comp
L Regulator_Linear:L7912 U2
U 1 1 5C423C1B
P 3500 3800
F 0 "U2" H 3500 3650 50  0000 C CNN
F 1 "L7912" H 3500 3559 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:TO-263-2" H 3500 3600 50  0001 C CIN
F 3 "http://www.st.com/content/ccc/resource/technical/document/datasheet/c9/16/86/41/c7/2b/45/f2/CD00000450.pdf/files/CD00000450.pdf/jcr:content/translations/en.CD00000450.pdf" H 3500 3800 50  0001 C CNN
	1    3500 3800
	1    0    0    -1  
$EndComp
$Comp
L Regulator_Linear:L7805 U3
U 1 1 5C42460A
P 4200 1500
F 0 "U3" H 4200 1742 50  0000 C CNN
F 1 "L7805" H 4200 1651 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:TO-252-2" H 4225 1350 50  0001 L CIN
F 3 "http://www.st.com/content/ccc/resource/technical/document/datasheet/41/4f/b3/b0/12/d4/47/88/CD00000444.pdf/files/CD00000444.pdf/jcr:content/translations/en.CD00000444.pdf" H 4200 1450 50  0001 C CNN
	1    4200 1500
	1    0    0    -1  
$EndComp
$Comp
L Device:D D1
U 1 1 5C4246DC
P 2500 2650
F 0 "D1" V 2454 2729 50  0000 L CNN
F 1 "D" V 2545 2729 50  0000 L CNN
F 2 "Diode_THT:D_5KPW_P12.70mm_Horizontal" H 2500 2650 50  0001 C CNN
F 3 "~" H 2500 2650 50  0001 C CNN
	1    2500 2650
	0    1    1    0   
$EndComp
$Comp
L Device:D D2
U 1 1 5C424875
P 2500 3650
F 0 "D2" V 2454 3729 50  0000 L CNN
F 1 "D" V 2545 3729 50  0000 L CNN
F 2 "Diode_THT:D_5KPW_P12.70mm_Horizontal" H 2500 3650 50  0001 C CNN
F 3 "~" H 2500 3650 50  0001 C CNN
	1    2500 3650
	0    1    1    0   
$EndComp
$Comp
L Device:CP1 C2
U 1 1 5C424BC8
P 2900 2650
F 0 "C2" H 3015 2696 50  0000 L CNN
F 1 "3300uF" H 3015 2605 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.50mm" H 2900 2650 50  0001 C CNN
F 3 "~" H 2900 2650 50  0001 C CNN
	1    2900 2650
	1    0    0    -1  
$EndComp
$Comp
L Device:CP1 C3
U 1 1 5C424C27
P 2900 3650
F 0 "C3" H 3015 3696 50  0000 L CNN
F 1 "3300uF" H 3015 3605 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.00mm" H 2900 3650 50  0001 C CNN
F 3 "~" H 2900 3650 50  0001 C CNN
	1    2900 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	3500 3500 3500 3200
Wire Wire Line
	2900 2800 3500 2800
Connection ~ 3500 2800
Wire Wire Line
	3200 3800 2900 3800
Wire Wire Line
	2900 3500 3500 3500
Connection ~ 3500 3500
Wire Wire Line
	2900 3800 2500 3800
Connection ~ 2900 3800
Wire Wire Line
	2500 2500 2900 2500
Connection ~ 2900 2500
Wire Wire Line
	2900 2500 3200 2500
Wire Wire Line
	2500 3500 2500 3100
Wire Wire Line
	2500 2500 2500 1500
Connection ~ 2500 2500
Wire Wire Line
	2500 1500 3900 1500
Wire Wire Line
	4200 1800 4200 2800
Wire Wire Line
	4200 2800 4000 2800
$Comp
L power:AC #PWR01
U 1 1 5C42535D
P 2000 3100
F 0 "#PWR01" H 2000 3000 50  0001 C CNN
F 1 "AC" H 2000 3375 50  0000 C CNN
F 2 "" H 2000 3100 50  0001 C CNN
F 3 "" H 2000 3100 50  0001 C CNN
	1    2000 3100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR02
U 1 1 5C4253C1
P 2000 3200
F 0 "#PWR02" H 2000 2950 50  0001 C CNN
F 1 "GND" H 2005 3027 50  0000 C CNN
F 2 "" H 2000 3200 50  0001 C CNN
F 3 "" H 2000 3200 50  0001 C CNN
	1    2000 3200
	1    0    0    -1  
$EndComp
Wire Wire Line
	2000 3100 2500 3100
Connection ~ 2500 3100
Wire Wire Line
	2500 3100 2500 2800
Wire Wire Line
	2000 3200 3500 3200
Connection ~ 3500 3200
Wire Wire Line
	3500 3200 3500 2800
$Comp
L Device:C C4
U 1 1 5C425AE1
P 4000 2650
F 0 "C4" H 4115 2696 50  0000 L CNN
F 1 "0.1uF" H 4115 2605 50  0000 L CNN
F 2 "Capacitor_THT:C_Axial_L3.8mm_D2.6mm_P7.50mm_Horizontal" H 4038 2500 50  0001 C CNN
F 3 "~" H 4000 2650 50  0001 C CNN
	1    4000 2650
	1    0    0    -1  
$EndComp
Connection ~ 4000 2800
Wire Wire Line
	4000 2800 3500 2800
$Comp
L Device:C C5
U 1 1 5C425C1A
P 4000 3650
F 0 "C5" H 4115 3696 50  0000 L CNN
F 1 "0.1uF" H 4115 3605 50  0000 L CNN
F 2 "Capacitor_THT:C_Axial_L3.8mm_D2.6mm_P7.50mm_Horizontal" H 4038 3500 50  0001 C CNN
F 3 "~" H 4000 3650 50  0001 C CNN
	1    4000 3650
	1    0    0    -1  
$EndComp
$Comp
L Device:C C6
U 1 1 5C425C6E
P 4750 1650
F 0 "C6" H 4865 1696 50  0000 L CNN
F 1 "0.1uF" H 4865 1605 50  0000 L CNN
F 2 "Capacitor_THT:C_Axial_L3.8mm_D2.6mm_P7.50mm_Horizontal" H 4788 1500 50  0001 C CNN
F 3 "~" H 4750 1650 50  0001 C CNN
	1    4750 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	4500 1500 4750 1500
Wire Wire Line
	4200 1800 4750 1800
Connection ~ 4200 1800
Wire Wire Line
	4000 3800 3800 3800
Wire Wire Line
	4000 3500 3500 3500
Wire Wire Line
	4000 2500 3800 2500
$Comp
L Connector:Conn_01x02_Male J1
U 1 1 5C426960
P 1300 3100
F 0 "J1" H 1406 3278 50  0000 C CNN
F 1 "Conn_01x02_Male" H 1406 3187 50  0000 C CNN
F 2 "Connector:JWT_A3963_1x02_P3.96mm_Vertical" H 1300 3100 50  0001 C CNN
F 3 "~" H 1300 3100 50  0001 C CNN
	1    1300 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	2000 3100 1500 3100
Connection ~ 2000 3100
Wire Wire Line
	1500 3200 2000 3200
Connection ~ 2000 3200
$Comp
L Connector:Conn_01x16_Female J3
U 1 1 5C431660
P 6000 2500
F 0 "J3" H 6027 2476 50  0000 L CNN
F 1 "Conn_01x16_Female" H 6027 2385 50  0000 L CNN
F 2 "" H 6000 2500 50  0001 C CNN
F 3 "~" H 6000 2500 50  0001 C CNN
	1    6000 2500
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x16_Female J4
U 1 1 5C43170A
P 6700 2500
F 0 "J4" H 6727 2476 50  0000 L CNN
F 1 "Conn_01x16_Female" H 6727 2385 50  0000 L CNN
F 2 "" H 6700 2500 50  0001 C CNN
F 3 "~" H 6700 2500 50  0001 C CNN
	1    6700 2500
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x16_Female J5
U 1 1 5C431763
P 7400 2500
F 0 "J5" H 7427 2476 50  0000 L CNN
F 1 "Conn_01x16_Female" H 7427 2385 50  0000 L CNN
F 2 "" H 7400 2500 50  0001 C CNN
F 3 "~" H 7400 2500 50  0001 C CNN
	1    7400 2500
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x16_Female J6
U 1 1 5C4317CF
P 8100 2500
F 0 "J6" H 8127 2476 50  0000 L CNN
F 1 "Conn_01x16_Female" H 8127 2385 50  0000 L CNN
F 2 "" H 8100 2500 50  0001 C CNN
F 3 "~" H 8100 2500 50  0001 C CNN
	1    8100 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	7900 2600 7200 2600
Connection ~ 6500 2600
Wire Wire Line
	6500 2600 5800 2600
Connection ~ 7200 2600
Wire Wire Line
	7200 2600 6500 2600
Wire Wire Line
	5800 2700 6500 2700
Connection ~ 6500 2700
Wire Wire Line
	6500 2700 7200 2700
Connection ~ 7200 2700
Wire Wire Line
	7200 2700 7900 2700
Wire Wire Line
	7900 2800 7200 2800
Connection ~ 6500 2800
Wire Wire Line
	6500 2800 5800 2800
Connection ~ 7200 2800
Wire Wire Line
	7200 2800 6500 2800
Wire Wire Line
	7900 2900 7200 2900
Connection ~ 6500 2900
Wire Wire Line
	6500 2900 5800 2900
Connection ~ 7200 2900
Wire Wire Line
	7200 2900 6500 2900
Wire Wire Line
	7900 3000 7200 3000
Connection ~ 6500 3000
Wire Wire Line
	6500 3000 5800 3000
Connection ~ 7200 3000
Wire Wire Line
	7200 3000 6500 3000
Wire Wire Line
	7900 3100 7200 3100
Connection ~ 6500 3100
Wire Wire Line
	6500 3100 5800 3100
Connection ~ 7200 3100
Wire Wire Line
	7200 3100 6500 3100
Wire Wire Line
	7900 3200 7200 3200
Connection ~ 6500 3200
Wire Wire Line
	6500 3200 5800 3200
Connection ~ 7200 3200
Wire Wire Line
	7200 3200 6500 3200
Wire Wire Line
	7900 3300 7200 3300
Connection ~ 6500 3300
Wire Wire Line
	6500 3300 5800 3300
Connection ~ 7200 3300
Wire Wire Line
	7200 3300 6500 3300
Wire Wire Line
	7900 2500 7200 2500
Connection ~ 6500 2500
Wire Wire Line
	6500 2500 5800 2500
Connection ~ 7200 2500
Wire Wire Line
	7200 2500 6500 2500
Wire Wire Line
	7900 2400 7200 2400
Connection ~ 6500 2400
Wire Wire Line
	6500 2400 5800 2400
Connection ~ 7200 2400
Wire Wire Line
	7200 2400 6500 2400
Wire Wire Line
	7900 2300 7200 2300
Connection ~ 6500 2300
Wire Wire Line
	6500 2300 5800 2300
Connection ~ 7200 2300
Wire Wire Line
	7200 2300 6500 2300
Wire Wire Line
	7900 2200 7200 2200
Connection ~ 6500 2200
Wire Wire Line
	6500 2200 5800 2200
Connection ~ 7200 2200
Wire Wire Line
	7200 2200 6500 2200
Wire Wire Line
	7900 2100 7200 2100
Connection ~ 6500 2100
Connection ~ 7200 2100
Wire Wire Line
	7200 2100 6500 2100
Wire Wire Line
	7900 2000 7200 2000
Connection ~ 6500 2000
Connection ~ 7200 2000
Wire Wire Line
	7200 2000 6500 2000
Wire Wire Line
	7900 1900 7200 1900
Connection ~ 6500 1900
Connection ~ 7200 1900
Wire Wire Line
	7200 1900 6500 1900
Wire Wire Line
	7900 1800 7200 1800
Connection ~ 6500 1800
Connection ~ 7200 1800
Wire Wire Line
	7200 1800 6500 1800
Wire Wire Line
	4000 2500 5100 2500
Wire Wire Line
	5100 2500 5100 1800
Wire Wire Line
	5100 1800 5800 1800
Connection ~ 4000 2500
Connection ~ 5800 1800
Wire Wire Line
	4000 3500 5200 3500
Wire Wire Line
	5200 3500 5200 1900
Wire Wire Line
	5200 1900 5800 1900
Connection ~ 4000 3500
Connection ~ 5800 1900
Wire Wire Line
	4750 1500 5300 1500
Wire Wire Line
	5300 1500 5300 2000
Wire Wire Line
	5300 2000 5800 2000
Connection ~ 4750 1500
Connection ~ 5800 2000
Wire Wire Line
	5800 2400 5800 2500
Connection ~ 5800 2400
Connection ~ 5800 2500
Wire Wire Line
	5800 2500 5400 2500
$Comp
L Connector:Conn_01x04_Female J2
U 1 1 5C454E1E
P 6000 1050
F 0 "J2" H 6027 1026 50  0000 L CNN
F 1 "Conn_01x04_Female" H 6027 935 50  0000 L CNN
F 2 "" H 6000 1050 50  0001 C CNN
F 3 "~" H 6000 1050 50  0001 C CNN
	1    6000 1050
	1    0    0    -1  
$EndComp
Wire Wire Line
	5700 2100 5700 1250
Connection ~ 5800 2100
Wire Wire Line
	6500 1800 5800 1800
Wire Wire Line
	6500 1900 5800 1900
Wire Wire Line
	6500 2000 5800 2000
Wire Wire Line
	5800 2100 5700 2100
Wire Wire Line
	6500 2100 5800 2100
Wire Wire Line
	5700 1250 5800 1250
Wire Wire Line
	5800 2200 5600 2200
Wire Wire Line
	5600 2200 5600 1150
Wire Wire Line
	5600 1150 5800 1150
Connection ~ 5800 2200
Wire Wire Line
	5800 2300 5500 2300
Wire Wire Line
	5500 2300 5500 1050
Wire Wire Line
	5500 1050 5800 1050
Connection ~ 5800 2300
Wire Wire Line
	5400 2500 5400 950 
Wire Wire Line
	5400 950  5800 950 
Wire Wire Line
	5400 3200 5400 2500
Wire Wire Line
	3500 3200 5400 3200
Connection ~ 5400 2500
$EndSCHEMATC
