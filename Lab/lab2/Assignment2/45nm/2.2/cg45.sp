** gate cap of NMOS

** Author: Zhaojun Ni, nizhj2022@shanghaitech.edu.cn
** Date:   October 26, 2022

.INCLUDE "/home/centos/PDK/FreePDK45/ncsu_basekit/models/hspice/tran_models/models_ss/NMOS_VTL.inc"
.INCLUDE "/home/centos/PDK/FreePDK45/ncsu_basekit/models/hspice/tran_models/models_ss/PMOS_VTL.inc"

.OPTION
+    POST=2
+    DCCAP=1
.TEMP 25.0

m1 d g 0 0 NMOS_VTL L=50e-9 W=90e-9 
vd d 0 0
vg g 0 0
.DC vg -2 2 0.05
.PROBE lx18(m1)

.END
