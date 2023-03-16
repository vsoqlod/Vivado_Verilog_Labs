onbreak {quit -force}
onerror {quit -force}

asim +access +r +m+design_1 -L xil_defaultlib -L xlslice_v1_0_2 -L util_vector_logic_v2_0_1 -L xlconcat_v2_1_4 -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.design_1 xil_defaultlib.glbl

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure

do {design_1.udo}

run -all

endsim

quit -force
