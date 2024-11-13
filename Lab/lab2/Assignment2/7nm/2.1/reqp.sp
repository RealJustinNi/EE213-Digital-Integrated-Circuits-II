** Req of NMOS & PMOS

** Author: Zhaojun Ni, nizhj2022@shanghaitech.edu.cn
** Date:   October 24, 2022

.INCLUDE "/home/centos/EE213/hspice file/lab2/7nm nmos/7pfet.pm"
.INCLUDE "/home/centos/EE213/hspice file/lab2/7nm nmos/7nfet.pm"

.OPTIONS POST=2
.PARAM vdd=-1.4v vd=-1.4v
.TEMP 25.0

m2 1 2 0 0 pfet
vd 1 0 vd
vg 2 0 vdd

.DC vd -1.4 -0.7 0.7
.PROBE PAR('V(1)/I(m2)')


.END
