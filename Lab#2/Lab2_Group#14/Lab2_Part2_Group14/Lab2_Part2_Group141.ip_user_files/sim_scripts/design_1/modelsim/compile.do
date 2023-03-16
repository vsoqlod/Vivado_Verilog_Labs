vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xil_defaultlib
vlib modelsim_lib/msim/xlslice_v1_0_2
vlib modelsim_lib/msim/util_vector_logic_v2_0_1
vlib modelsim_lib/msim/xlconcat_v2_1_4

vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib
vmap xlslice_v1_0_2 modelsim_lib/msim/xlslice_v1_0_2
vmap util_vector_logic_v2_0_1 modelsim_lib/msim/util_vector_logic_v2_0_1
vmap xlconcat_v2_1_4 modelsim_lib/msim/xlconcat_v2_1_4

vlog -work xil_defaultlib  -incr -mfcu \
"../../../bd/design_1/ip/design_1_FA_0_0/sim/design_1_FA_0_0.v" \
"../../../bd/design_1/ip/design_1_FA_1_0/sim/design_1_FA_1_0.v" \
"../../../bd/design_1/ip/design_1_FA_2_0/sim/design_1_FA_2_0.v" \
"../../../bd/design_1/ip/design_1_FA_3_0/sim/design_1_FA_3_0.v" \

vlog -work xlslice_v1_0_2  -incr -mfcu \
"../../../../Lab2_Part2_Group141.gen/sources_1/bd/design_1/ipshared/11d0/hdl/xlslice_v1_0_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -mfcu \
"../../../bd/design_1/ip/design_1_xlslice_0_0/sim/design_1_xlslice_0_0.v" \
"../../../bd/design_1/ip/design_1_xlslice_0_1/sim/design_1_xlslice_0_1.v" \
"../../../bd/design_1/ip/design_1_xlslice_0_2/sim/design_1_xlslice_0_2.v" \
"../../../bd/design_1/ip/design_1_xlslice_0_3/sim/design_1_xlslice_0_3.v" \
"../../../bd/design_1/ip/design_1_xlslice_0_4/sim/design_1_xlslice_0_4.v" \
"../../../bd/design_1/ip/design_1_xlslice_0_5/sim/design_1_xlslice_0_5.v" \
"../../../bd/design_1/ip/design_1_xlslice_0_6/sim/design_1_xlslice_0_6.v" \
"../../../bd/design_1/ip/design_1_xlslice_0_7/sim/design_1_xlslice_0_7.v" \

vlog -work util_vector_logic_v2_0_1  -incr -mfcu \
"../../../../Lab2_Part2_Group141.gen/sources_1/bd/design_1/ipshared/3f90/hdl/util_vector_logic_v2_0_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -mfcu \
"../../../bd/design_1/ip/design_1_util_vector_logic_0_0/sim/design_1_util_vector_logic_0_0.v" \
"../../../bd/design_1/ip/design_1_util_vector_logic_0_1/sim/design_1_util_vector_logic_0_1.v" \
"../../../bd/design_1/ip/design_1_util_vector_logic_0_2/sim/design_1_util_vector_logic_0_2.v" \
"../../../bd/design_1/ip/design_1_util_vector_logic_0_3/sim/design_1_util_vector_logic_0_3.v" \
"../../../bd/design_1/ip/design_1_util_vector_logic_0_4/sim/design_1_util_vector_logic_0_4.v" \

vlog -work xlconcat_v2_1_4  -incr -mfcu \
"../../../../Lab2_Part2_Group141.gen/sources_1/bd/design_1/ipshared/4b67/hdl/xlconcat_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -mfcu \
"../../../bd/design_1/ip/design_1_xlconcat_0_0/sim/design_1_xlconcat_0_0.v" \
"../../../bd/design_1/sim/design_1.v" \

vlog -work xil_defaultlib \
"glbl.v"

