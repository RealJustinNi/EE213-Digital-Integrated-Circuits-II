** I-V Curve of 7nm NMOS

** Author: Zhaojun Ni, nizhj2022@shanghaitech.edu.cn
** Date:   October 21, 2022

.INCLUDE "/home/centos/EE213/hspice file/lab2/7nm nmos/7nfet.pm"

.OPTIONS POST=2
.PARAM vds=0.7 vgs=0.1 temp=0.0
.TEMP temp

mn1 vd vg 0 0 nfet 

vd vd 0 vds
vg vg 0 vgs

.DC temp 0.0 100.0 1.0

.PROBE I(mn1) 

.END
