** Generated for: hspiceD
** Generated on: Sep 21 19:59:40 2022
** Design library name: mylib2
** Design cell name: myInverterTestbench
** Design view name: schematic
.GLOBAL vdd!
.PARAM vdd_val=.8


.PROBE TRAN
+    V(out)
+    V(in)
.TRAN 100e-15 100e-12 START=0.0

.TEMP 25.0
.OPTION
+    ARTIST=2
+    INGOLD=2
+    PARHIER=LOCAL
+    PSF=2
.INCLUDE "/home/centos/PDK/FreePDK45/ncsu_basekit/models/hspice/tran_models/models_ss/NMOS_VTL.inc"
.INCLUDE "/home/centos/PDK/FreePDK45/ncsu_basekit/models/hspice/tran_models/models_ss/PMOS_VTL.inc"

** Library name: mylib2
** Cell name: myInverter
** View name: schematic
.subckt myInverter a z
m0 z a 0 0 NMOS_VTL L=50e-9 W=90e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
m1 z a vdd! vdd! PMOS_VTL L=50e-9 W=90e-9 AD=9.45e-15 AS=9.45e-15 PD=300e-9 PS=300e-9 M=1
.ends myInverter
** End of subcircuit definition.

** Library name: mylib2
** Cell name: myInverterTestbench
** View name: schematic
xi0 in out myInverter
v0 vdd! 0 DC=vdd_val
v1 in 0 PULSE 0 vdd_val 0 10e-12 10e-12 40e-12 100e-12
c0 out 0 1e-15
.END
