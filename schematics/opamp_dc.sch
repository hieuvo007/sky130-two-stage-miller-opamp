v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 300 270 300 300 {lab=0}
N -20 270 -20 290 {lab=0}
N -300 270 -300 300 {lab=0}
N -300 -130 -300 -100 {lab=VDD}
N -440 -40 -440 -20 {lab=0}
N -440 -130 -440 -100 {lab=VDD}
N -590 -40 -590 -20 {lab=0}
N -590 -130 -590 -100 {lab=VG+}
N -260 240 -60 240 {lab=#net1}
N -300 150 -200 150 {lab=#net1}
N -200 150 -200 240 {lab=#net1}
N -140 80 -140 150 {lab=#net2}
N -140 150 90 150 {lab=#net2}
N 90 80 90 150 {lab=#net2}
N -20 150 -20 210 {lab=#net2}
N 90 -50 90 20 {lab=#net3}
N -140 -50 -140 20 {lab=#net4}
N -100 -80 50 -80 {lab=#net4}
N -140 -10 -20 -10 {lab=#net4}
N -20 -80 -20 -10 {lab=#net4}
N 300 -170 300 -110 {lab=VDD}
N 90 -10 210 -10 {lab=#net3}
N 210 -80 210 -10 {lab=#net3}
N 210 -80 260 -80 {lab=#net3}
N -140 -140 -140 -110 {lab=VDD}
N -140 -140 90 -140 {lab=VDD}
N 90 -140 90 -110 {lab=VDD}
N -20 -240 -20 -140 {lab=VDD}
N -300 -40 -300 210 {lab=#net1}
N 300 -50 300 210 {lab=out}
N 190 240 260 240 {lab=#net1}
N 190 240 190 340 {lab=#net1}
N -200 340 190 340 {lab=#net1}
N -200 240 -200 340 {lab=#net1}
N -710 -40 -710 -20 {lab=0}
N -710 -130 -710 -100 {lab=VG-}
N 400 95 400 130 {lab=0}
N 400 0 400 35 {lab=out}
N 300 0 400 0 {lab=out}
N 200 -10 200 40 {lab=#net3}
N 260 40 300 40 {lab=out}
C {sky130_fd_pr/nfet3_01v8.sym} -160 50 0 0 {name=M1
W=0.73
L=0.5
body=GND
nf=1
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet3_01v8.sym} 110 50 0 1 {name=M2
W=0.73

L=0.5
body=GND
nf=1
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet3_01v8.sym} -120 -80 0 1 {name=M3
W=2.16
L=0.5
body=VDD
nf=1
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet3_01v8.sym} 70 -80 0 0 {name=M4
W=2.16
L=0.5
body=VDD
nf=1
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet3_01v8.sym} -40 240 0 0 {name=M5
W=2.43
L=0.5
body=GND
nf=1
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet3_01v8.sym} 280 240 0 0 {name=M7
W=7.058
L=0.5
body=GND
nf=1
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet3_01v8.sym} -280 240 0 1 {name=M8
W=0.68
L=0.5
body=GND
nf=1
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {gnd.sym} -300 300 0 0 {name=l1 lab=0}
C {gnd.sym} -20 290 0 0 {name=l2 lab=0}
C {gnd.sym} 300 300 0 0 {name=l3 lab=0}
C {lab_pin.sym} -20 -240 0 0 {name=p2 sig_type=std_logic lab=VDD}
C {code.sym} -490 40 0 0 {name=s1 only_toplevel=false value=".lib /usr/local/share/pdk/sky130A/libs.tech/ngspice/sky130.lib.spice tt

.control
ac dec 20 1 1G

* Tạo biến cho Biên độ và Pha để file xuất ra gọn gàng
let gain_db = vdb(out)
let phase_deg = cph(v(out))*180/pi

* Vẽ đồ thị trên Ngspice (nếu vẫn muốn xem nhanh)
plot gain_db phase_deg

* Xuất dữ liệu ra file text
wrdata ac_results.txt gain_db phase_deg
.endc"}
C {lab_pin.sym} -300 -130 0 0 {name=p3 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 300 -170 0 0 {name=p4 sig_type=std_logic lab=VDD}
C {vsource.sym} -440 -70 0 0 {name=VDD value=1.8 savecurrent=false}
C {gnd.sym} -440 -20 0 0 {name=l4 lab=0}
C {lab_pin.sym} -440 -130 0 0 {name=p1 sig_type=std_logic lab=VDD}
C {sky130_fd_pr/pfet3_01v8.sym} 280 -80 0 0 {name=M6
W=19.37
L=0.5
body=VDD
nf=1
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {vsource.sym} -590 -70 0 0 {name=VG+ value="dc 1.2 ac 1" savecurrent=false}
C {gnd.sym} -590 -20 0 0 {name=l5 lab=0}
C {lab_pin.sym} -590 -130 0 0 {name=p5 sig_type=std_logic lab=VG+}
C {isource.sym} -300 -70 0 0 {name=I0 value=10u}
C {lab_pin.sym} 130 50 2 0 {name=p7 sig_type=std_logic lab=VG+ 
}
C {vsource.sym} -710 -70 0 0 {name=VG- value=1.2

 savecurrent=false}
C {gnd.sym} -710 -20 0 0 {name=l6 lab=0}
C {lab_pin.sym} -710 -130 0 0 {name=p6 sig_type=std_logic lab=VG-}
C {lab_pin.sym} -180 50 0 0 {name=p8 sig_type=std_logic lab=VG-}
C {gnd.sym} 400 130 0 0 {name=l7 lab=0}
C {capa.sym} 400 65 0 0 {name=C1
m=1
value=10p
footprint=1206
device="ceramic capacitor"}
C {lab_pin.sym} 300 0 0 0 {name=p9 sig_type=std_logic lab=out
}
C {capa.sym} 230 40 1 0 {name=C2
m=1
value=10
p
footprint=1206
device="ceramic capacitor"}
