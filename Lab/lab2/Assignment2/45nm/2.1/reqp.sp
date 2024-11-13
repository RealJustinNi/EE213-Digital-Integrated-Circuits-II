** Req of NMOS & PMOS

** Author: Zhaojun Ni, nizhj2022@shanghaitech.edu.cn
** Date:   October 24, 2022

.INCLUDE "/home/centos/PDK/FreePDK45/ncsu_basekit/models/hspice/tran_models/models_ss/NMOS_VTL.inc"
.INCLUDE "/home/centos/PDK/FreePDK45/ncsu_basekit/models/hspice/tran_models/models_ss/PMOS_VTL.inc"
.OPTIONS POST=2
.PARAM vdd=-1.8v vd=-1.8v
.TEMP 25.0

m2 1 2 0 0 PMOS_VTL L=50e-9 W=150e-9
vd 1 0 vd
vg 2 0 vdd

.DC vd -1.8 -0.9 0.9
.PROBE PAR('V(1)/I(m2)')


.END
