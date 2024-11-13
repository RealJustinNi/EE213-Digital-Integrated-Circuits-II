** I-V Curve of 7nm NMOS

** Author: Zhaojun Ni, nizhj2022@shanghaitech.edu.cn
** Date:   October 21, 2022

.INCLUDE "/home/centos/EE213/hspice file/lab2/7nm nmos/7nfet.pm"

.OPTIONS POST=2
.PARAM vds=0.7 vgs=0 vbs=-0.4
.TEMP 25.0

mn1 vd vg 0 vb nfet 

vd vd 0 vds
vg vg 0 vgs
vb vb 0 vbs

.DC vgs 0 0.7 0.0001

*.meas DC maxderiv MAX DERIV('sqrt(I(mn1))')
.PROBE I(mn1) 
.PROBE PAR('sqrt(I(mn1))')
.PROBE DERIV('sqrt(I(mn1))')

.END
