v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -440 400 -440 430 {lab=0}
N -440 370 -400 370 {lab=0}
N -400 370 -400 400 {lab=0}
N -440 400 -400 400 {lab=0}
N -630 390 -630 420 {lab=0}
N -270 410 -270 440 {lab=0}
N -440 300 -440 340 {lab=D}
N -510 370 -480 370 {lab=G}
N -270 310 -270 350 {lab=D}
N -630 290 -630 330 {lab=G}
C {sky130_fd_pr/nfet_01v8.sym} -460 370 0 0 {name=M1
W=10
L=0.5
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
C {vsource.sym} -630 360 0 0 {name=VGS value=0.897
 savecurrent=false}
C {vsource.sym} -270 380 0 0 {name=VDS value=0.9
 savecurrent=false}
C {gnd.sym} -440 430 0 0 {name=l1 lab=0}
C {gnd.sym} -630 420 0 0 {name=l2 lab=0}
C {gnd.sym} -270 440 0 0 {name=l3 lab=0}
C {lab_pin.sym} -510 370 0 0 {name=p1 sig_type=std_logic lab=G
}
C {lab_pin.sym} -630 290 0 0 {name=p2 sig_type=std_logic lab=G
}
C {lab_pin.sym} -270 310 0 0 {name=p3 sig_type=std_logic lab=D}
C {lab_pin.sym} -440 300 0 0 {name=p4 sig_type=std_logic lab=D}
C {code_shown.sym} -210 130 0 0 {name=s1 only_toplevel="false" value=".lib /usr/local/share/pdk/sky130A/libs.tech/ngspice/sky130.lib.spice tt

.control
  * 1. Explicitly save the internal parameters BEFORE the sweep
  save @m.xm1.msky130_fd_pr__nfet_01v8[id]
  save @m.xm1.msky130_fd_pr__nfet_01v8[gm]
  save @m.xm1.msky130_fd_pr__nfet_01v8[gds]
  save @m.xm1.msky130_fd_pr__nfet_01v8[cgg]
  save all

  * 2. Run the DC sweep
  dc VGS 0 1.8 0.01

  * 3. Assign the saved arrays to variables
  let id_vec = @m.xm1.msky130_fd_pr__nfet_01v8[id]
  let gm_vec = @m.xm1.msky130_fd_pr__nfet_01v8[gm]
  let gds_vec = @m.xm1.msky130_fd_pr__nfet_01v8[gds]
  let cgg_vec = @m.xm1.msky130_fd_pr__nfet_01v8[cgg]

  * 4. Calculate the metrics
  let gm_id = gm_vec / id_vec
  let id_w = id_vec / 10u
  let intrinsic_gain = gm_vec / gds_vec
  let fT = gm_vec / (2 * 3.14159 * cgg_vec)

  * 5. Plot the graphs
  plot id_w vs gm_id
  plot intrinsic_gain vs gm_id
  plot fT vs gm_id
.endc"}
