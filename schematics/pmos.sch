v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 120 -20 120 0 {lab=0}
N -130 -20 -50 -20 {lab=#net1}
N -10 10 -10 30 {lab=#net2}
N -10 -80 120 -80 {lab=#net3}
N -10 -80 -10 -50 {lab=#net3}
N -130 40 -130 90 {lab=0}
N -130 90 -10 90 {lab=0}
N 120 0 120 90 {lab=0}
N -10 90 120 90 {lab=0}
N -10 90 -10 120 {lab=0}
N -10 -20 30 -20 {lab=#net3}
N 30 -50 30 -20 {lab=#net3}
N -10 -50 30 -50 {lab=#net3}
C {vsource.sym} -130 10 0 0 {name=VG value=0.9
 savecurrent=false}
C {vsource.sym} 120 -50 0 0 {name=VDD value=1.8 savecurrent=false}
C {gnd.sym} -10 110 0 0 {name=l1 lab=0}
C {vsource.sym} -10 60 0 0 {name=VS value=0.9 savecurrent=false}
C {code.sym} 170 -20 0 0 {name=s1 only_toplevel=false value=".lib /usr/local/share/pdk/sky130A/libs.tech/ngspice/sky130.lib.spice tt

.control
  * 1. Save internal parameters BEFORE the sweep
  save @m.xm1.msky130_fd_pr__pfet_01v8[id]
  save @m.xm1.msky130_fd_pr__pfet_01v8[gm]
  save @m.xm1.msky130_fd_pr__pfet_01v8[gds]
  save @m.xm1.msky130_fd_pr__pfet_01v8[cgg]
  save all

  * 2. Sweep VG from 1.8V down to 0V (Negative Step)
  dc VG 1.8 0 -0.01

  * 3. Assign vectors (using abs() for ID)
  let id_vec = abs(@m.xm1.msky130_fd_pr__pfet_01v8[id])
  let gm_vec = @m.xm1.msky130_fd_pr__pfet_01v8[gm]
  let gds_vec = @m.xm1.msky130_fd_pr__pfet_01v8[gds]
  let cgg_vec = @m.xm1.msky130_fd_pr__pfet_01v8[cgg]

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
C {sky130_fd_pr/pfet_01v8.sym} -30 -20 0 0 {name=M1
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
model=pfet_01v8
spiceprefix=X
}
