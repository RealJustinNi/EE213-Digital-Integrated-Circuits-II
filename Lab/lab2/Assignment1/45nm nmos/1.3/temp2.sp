** TEMP 0.5V

** Author: Zhaojun Ni, nizhj2022@shanghaitech.edu.cn
** Date:   October 21, 2022

.INCLUDE "/home/centos/PDK/FreePDK45/ncsu_basekit/models/hspice/tran_models/models_ss/NMOS_VTL.inc"

.OPTIONS POST=2
.PARAM vds=1.1 vgs=0.5 temp=0.0
.TEMP temp

mn1 vd vg 0 0 NMOS_VTL L=50e-9 W=90e-9 

vd vd 0 vds
vg vg 0 vgs

.DC temp 0.0 100.0 1.0

.PROBE I(mn1) 

.END
