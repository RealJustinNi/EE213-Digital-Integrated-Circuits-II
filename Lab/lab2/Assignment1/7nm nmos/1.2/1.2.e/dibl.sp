** I-V Curve of 7nm NMOS

** Author: Zhaojun Ni, nizhj2022@shanghaitech.edu.cn
** Date:   October 21, 2022

.INCLUDE "/home/centos/EE213/hspice file/lab2/7nm nmos/7nfet.pm"

.OPTIONS POST=2
.PARAM vds=0.1 vgs=0
.TEMP 25.0

mn1 vd vg 0 0 nfet 

vd vd 0 vds
vg vg 0 vgs

.DC vgs 0 0.7 0.0001

.meas DC maxderiv MAX DERIV('sqrt(I(mn1))')
.PROBE I(mn1) 
.PROBE PAR('sqrt(I(mn1))')
.PROBE DERIV('sqrt(I(mn1))')

.END
