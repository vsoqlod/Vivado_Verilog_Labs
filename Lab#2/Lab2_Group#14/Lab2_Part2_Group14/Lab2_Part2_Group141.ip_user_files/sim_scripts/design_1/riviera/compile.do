vlib work
vlib riviera

vlib riviera/xil_defaultlib
vlib riviera/xlslice_v1_0_2
vlib riviera/util_vector_logic_v2_0_1
vlib riviera/xlconcat_v2_1_4

vmap xil_defaultlib riviera/xil_defaultlib
vmap xlslice_v1_0_2 riviera/xlslice_v1_0_2
vmap util_vector_logic_v2_0_1 riviera/util_vector_logic_v2_0_1
vmap xlconcat_v2_1_4 riviera/xlconcat_v2_1_4

vlog -work xil_defaultlib  -v2k5 \
"../../../bd/design_1/ip/design_1_FA_0_0/sim/design_1_FA_0_0.v" \
"../../../bd/design_1/ip/design_1_FA_1_0/sim/design_1_FA_1_0.v" \
"../../../bd/design_1/ip/design_1_FA_2_0/sim/design_1_FA_2_0.v" \
"../../../bd/design_1/ip/design_1_FA_3_0/sim/design_1_FA_3_0.v" \

vlog -work xlslice_v1_0_2  -v2k5 \
"../../../../Lab2_Part2_Group141.gen/sources_1/bd/design_1/ipshared/11d0/hdl/xlslice_v1_0_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 \
"../../../bd/design_1/ip/design_1_xlslice_0_0/sim/design_1_xlslice_0_0.v" \
"../../../bd/design_1/ip/design_1_xlslice_0_1/sim/design_1_xlslice_0_1.v" \
"../../../bd/design_1/ip/design_1_xlslice_0_2/sim/design_1_xlslice_0_2.v" \
"../../../bd/design_1/ip/design_1_xlslice_0_3/sim/design_1_xlslice_0_3.v" \
"../../../bd/design_1/ip/design_1_xlslice_0_4/sim/design_1_xlslice_0_4.v" \
"../../../bd/design_1/ip/design_1_xlslice_0_5/sim/design_1_xlslice_0_5.v" \
"../../../bd/design_1/ip/design_1_xlslice_0_6/sim/design_1_xlslice_0_6.v" \
"../../../bd/design_1/ip/design_1_xlslice_0_7/sim/design_1_xlslice_0_7.v" \

vlog -work util_vector_logic_v2_0_1  -v2k5 \
"../../../../Lab2_Part2_Group141.gen/sources_1/bd/design_1/ipshared/3f90/hdl/util_vector_logic_v2_0_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 \
"../../../bd/design_1/ip/design_1_util_vector_logic_0_0/sim/design_1_util_vector_logic_0_0.v" \
"../../../bd/design_1/ip/design_1_util_vector_logic_0_1/sim/design_1_util_vector_logic_0_1.v" \
"../../../bd/design_1/ip/design_1_util_vector_logic_0_2/sim/design_1_util_vector_logic_0_2.v" \
"../../../bd/design_1/ip/design_1_util_vector_logic_0_3/sim/design_1_util_vector_logic_0_3.v" \
"../../../bd/design_1/ip/design_1_util_vector_logic_0_4/sim/design_1_util_vector_logic_0_4.v" \

vlog -work xlconcat_v2_1_4  -v2k5 \
"../../../../Lab2_Part2_Group141.gen/sources_1/bd/design_1/ipshared/4b67/hdl/xlconcat_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 \
"../../../bd/design_1/ip/design_1_xlconcat_0_0/sim/design_1_xlconcat_0_0.v" \
"../../../bd/design_1/sim/design_1.v" \

vlog -work xil_defaultlib \
"glbl.v"

