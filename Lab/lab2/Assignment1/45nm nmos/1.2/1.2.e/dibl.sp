** I-V Curve of NMOS

** Author: Zhaojun Ni, nizhj2022@shanghaitech.edu.cn
** Date:   October 21, 2022

.INCLUDE "/home/centos/PDK/FreePDK45/ncsu_basekit/models/hspice/tran_models/models_ss/NMOS_VTL.inc"

.OPTIONS POST=2
.PARAM vds=0.1 vgs=0
.TEMP 25.0

mn1 vd vg 0 0 NMOS_VTL L=50e-9 W=90e-9 

vd vd 0 vds
vg vg 0 vgs

.DC vgs 0 1.1 0.0001
.meas DC maxderiv MAX DERIV('sqrt(I(mn1))')
.PROBE I(mn1) 
.PROBE PAR('sqrt(I(mn1))')
.PROBE DERIV('sqrt(I(mn1))')

.END
