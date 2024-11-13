** gate cap of NMOS

** Author: Zhaojun Ni, nizhj2022@shanghaitech.edu.cn
** Date:   October 26, 2022

.INCLUDE "/home/centos/EE213/hspice file/lab2/7nm nmos/7nfet.pm"
.OPTION
+    POST=2
+    DCCAP
.TEMP 25.0

m1 d g 0 0 nfet
vd d 0 0
vg g 0 0

.DC vg -2 2 0.05
.PROBE lx18(m1)

.END
