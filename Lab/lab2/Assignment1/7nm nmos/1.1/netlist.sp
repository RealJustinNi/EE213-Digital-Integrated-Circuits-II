** I-V Curve of 7nm NMOS

** Author: Zhaojun Ni, nizhj2022@shanghaitech.edu.cn
** Date:   October 21, 2022

.INCLUDE "/home/centos/EE213/hspice file/lab2/7nm nmos/7nfet.pm"

.OPTIONS POST=2
.PARAM vds=0 vgs=0.3
.TEMP 25.0

mn1 vd vg 0 0 nfet 

vd vd 0 vds
vg vg 0 vgs

.DC vds 0 0.7 0.0001 vgs 0.3 0.5 0.05

.PROBE I(mn1) 

.END
