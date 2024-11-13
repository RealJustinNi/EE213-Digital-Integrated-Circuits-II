** Generated for: hspiceD
** Generated on: Sep 19 10:05:01 2022
** Design library name: ADETutorial
** Design cell name: myInverterTestBench
** Design view name: schematic
.GLOBAL vdd!
.PARAM vdd_val=.8


.PROBE TRAN
+    V(in)
+    V(out)
.TRAN 100e-15 100e-12 START=0.0

.TEMP 25.0
.OPTION
+    ARTIST=2
+    INGOLD=2
+    PARHIER=LOCAL
+    PSF=2
.INCLUDE "/home/centos/PDK/FreePDK15/hspice/models/fet.inc"

** Library name: ADETutorial
** Cell name: myInverter
** View name: schematic
.subckt myInverter a z
m0 z a 0 0 nmos AD=608e-18 AS=608e-18 PD=168e-9 PS=168e-9 M=2
m1 z a vdd! vdd! pmos AD=608e-18 AS=608e-18 PD=168e-9 PS=168e-9 M=2
.ends myInverter
** End of subcircuit definition.

** Library name: ADETutorial
** Cell name: myInverterTestBench
** View name: schematic
v1 in 0 PULSE 0 vdd_val 0 10e-12 10e-12 40e-12 100e-12
c0 out 0 1e-15
v0 vdd! 0 DC=vdd_val
xi4 in out myInverter
.END
