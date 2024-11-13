** Req of NMOS & PMOS

** Author: Zhaojun Ni, nizhj2022@shanghaitech.edu.cn
** Date:   October 24, 2022

.INCLUDE "/home/centos/PDK/FreePDK45/ncsu_basekit/models/hspice/tran_models/models_ss/NMOS_VTL.inc"
.INCLUDE "/home/centos/PDK/FreePDK45/ncsu_basekit/models/hspice/tran_models/models_ss/PMOS_VTL.inc"
.OPTIONS POST=2
.PARAM vdd=0.4v vd=0.4v
.TEMP 25.0

m1 1 2 0 0 NMOS_VTL L=50e-9 W=90e-9 
** m2 1 2 3 3 PMOS_VTL L=50e-9 W=150e-9
vd 1 0 vd
vgg 2 0 vdd
c1 1 0 1p

.DC vd 0.4 0.2 0.2
*.PROBE PAR('(V(3)-V(1))/I(m2)')
.PROBE PAR('V(1)/I(m1)')

.END
