vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xil_defaultlib

vmap xil_defaultlib questa_lib/msim/xil_defaultlib

vlog -work xil_defaultlib  -incr -mfcu \
"../../../../Lab3_1.gen/sources_1/bd/design_1/sim/design_1.v" \


vlog -work xil_defaultlib \
"glbl.v"

