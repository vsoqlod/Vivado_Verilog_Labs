vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xil_defaultlib
vlib questa_lib/msim/xlslice_v1_0_2
vlib questa_lib/msim/xlconstant_v1_1_7
vlib questa_lib/msim/xlconcat_v2_1_4

vmap xil_defaultlib questa_lib/msim/xil_defaultlib
vmap xlslice_v1_0_2 questa_lib/msim/xlslice_v1_0_2
vmap xlconstant_v1_1_7 questa_lib/msim/xlconstant_v1_1_7
vmap xlconcat_v2_1_4 questa_lib/msim/xlconcat_v2_1_4

vlog -work xil_defaultlib  -incr -mfcu \
"../../../bd/adder_2bit/ip/adder_2bit_FA_0_0/sim/adder_2bit_FA_0_0.v" \
"../../../bd/adder_2bit/ip/adder_2bit_FA_1_0/sim/adder_2bit_FA_1_0.v" \

vlog -work xlslice_v1_0_2  -incr -mfcu \
"../../../../lab1.gen/sources_1/bd/adder_2bit/ipshared/11d0/hdl/xlslice_v1_0_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -mfcu \
"../../../bd/adder_2bit/ip/adder_2bit_xlslice_0_0/sim/adder_2bit_xlslice_0_0.v" \
"../../../bd/adder_2bit/ip/adder_2bit_xlslice_1_0/sim/adder_2bit_xlslice_1_0.v" \
"../../../bd/adder_2bit/ip/adder_2bit_xlslice_2_0/sim/adder_2bit_xlslice_2_0.v" \
"../../../bd/adder_2bit/ip/adder_2bit_xlslice_3_0/sim/adder_2bit_xlslice_3_0.v" \

vlog -work xlconstant_v1_1_7  -incr -mfcu \
"../../../../lab1.gen/sources_1/bd/adder_2bit/ipshared/fcfc/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -mfcu \
"../../../bd/adder_2bit/ip/adder_2bit_xlconstant_0_0/sim/adder_2bit_xlconstant_0_0.v" \

vlog -work xlconcat_v2_1_4  -incr -mfcu \
"../../../../lab1.gen/sources_1/bd/adder_2bit/ipshared/4b67/hdl/xlconcat_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -mfcu \
"../../../bd/adder_2bit/ip/adder_2bit_xlconcat_0_0/sim/adder_2bit_xlconcat_0_0.v" \
"../../../bd/adder_2bit/sim/adder_2bit.v" \

vlog -work xil_defaultlib \
"glbl.v"

