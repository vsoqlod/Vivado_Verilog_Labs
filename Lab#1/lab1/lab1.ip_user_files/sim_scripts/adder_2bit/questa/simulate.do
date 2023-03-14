onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib adder_2bit_opt

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure
view signals

do {adder_2bit.udo}

run -all

quit -force
