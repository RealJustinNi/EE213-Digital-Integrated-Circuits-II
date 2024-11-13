** Req of NMOS 7nm

** Author: Zhaojun Ni, nizhj2022@shanghaitech.edu.cn
** Date:   October 26, 2022
.INCLUDE "/home/centos/EE213/hspice file/lab2/7nm nmos/7pfet.pm"
.INCLUDE "/home/centos/EE213/hspice file/lab2/7nm nmos/7nfet.pm"

.OPTIONS POST=2
.PARAM vdd=1.4v vd=1.4v
.TEMP 25.0

m1 1 2 0 0 nfet 

vd 1 0 vd
vgg 2 0 vdd
c1 1 0 1p

.DC vd 1.4 .7 .7

.PROBE PAR('V(1)/I(m1)')

.END
