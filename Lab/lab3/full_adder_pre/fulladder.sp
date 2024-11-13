** Generated for: hspiceD
** Generated on: Nov 13 23:10:06 2022
** Design library name: mylib2
** Design cell name: myFATestbench
** Design view name: schematic
.GLOBAL vdd!

.INCLUDE "/home/centos/PDK/FreePDK45/ncsu_basekit/models/hspice/tran_models/models_ss/NMOS_VTL.inc"
.INCLUDE "/home/centos/PDK/FreePDK45/ncsu_basekit/models/hspice/tran_models/models_ss/PMOS_VTL.inc"

** Library name: mylib2
** Cell name: myInverter
** View name: schematic
.subckt myInverter a z
m0 z a 0 0 NMOS_VTL L=50e-9 W=90e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m1 z a vdd! vdd! PMOS_VTL L=50e-9 W=180e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
.ends myInverter
** End of subcircuit definition.

** Library name: mylib2
** Cell name: fulladder
** View name: schematic
.subckt fulladder a b cin cout s
m12 net64 net06 0 0 NMOS_VTL L=50e-9 W=270e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m11 net49 net031 net64 0 NMOS_VTL L=50e-9 W=270e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m10 net50 cin net49 0 NMOS_VTL L=50e-9 W=270e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m8 net50 net27 net37 0 NMOS_VTL L=50e-9 W=180e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m7 net37 cin 0 0 NMOS_VTL L=50e-9 W=180e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m6 net37 net031 0 0 NMOS_VTL L=50e-9 W=180e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m5 net37 net06 0 0 NMOS_VTL L=50e-9 W=180e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m4 net26 net031 0 0 NMOS_VTL L=50e-9 W=180e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m3 net16 net031 0 0 NMOS_VTL L=50e-9 W=180e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m2 net16 net06 0 0 NMOS_VTL L=50e-9 W=180e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m1 net27 net06 net26 0 NMOS_VTL L=50e-9 W=180e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m0 net27 cin net16 0 NMOS_VTL L=50e-9 W=180e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m25 net50 cin net066 vdd! PMOS_VTL L=50e-9 W=540e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m24 net066 net031 net065 vdd! PMOS_VTL L=50e-9 W=540e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m23 net065 net06 vdd! vdd! PMOS_VTL L=50e-9 W=540e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m22 net41 cin vdd! vdd! PMOS_VTL L=50e-9 W=360e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m21 net41 net031 vdd! vdd! PMOS_VTL L=50e-9 W=360e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m20 net41 net06 vdd! vdd! PMOS_VTL L=50e-9 W=360e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m19 net50 net27 net41 vdd! PMOS_VTL L=50e-9 W=360e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m18 net20 net031 vdd! vdd! PMOS_VTL L=50e-9 W=360e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m17 net27 net06 net062 vdd! PMOS_VTL L=50e-9 W=360e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m16 net062 net031 vdd! vdd! PMOS_VTL L=50e-9 W=360e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m15 net20 net06 vdd! vdd! PMOS_VTL L=50e-9 W=360e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m14 net27 cin net20 vdd! PMOS_VTL L=50e-9 W=360e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
xi17 a net058 myInverter
xi16 net058 net06 myInverter
xi18 net059 net031 myInverter
xi19 b net059 myInverter
xi15 net27 cout myInverter
xi14 net50 s myInverter
.ends fulladder
** End of subcircuit definition.

** Library name: mylib2
** Cell name: fulladdertb
** View name: schematic
xi3 a b cin cout s fulladder
c1 s 0 100e-15
c0 cout 0 100e-15




