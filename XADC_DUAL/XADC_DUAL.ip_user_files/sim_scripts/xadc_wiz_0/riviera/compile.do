transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

vlib work
vmap -link {C:/Users/smdt/XADC_DUAL/XADC_DUAL.cache/compile_simlib/riviera}
vlib riviera/xil_defaultlib

vcom -work xil_defaultlib -93  -incr \
"../../../../XADC_DUAL.gen/sources_1/ip/xadc_wiz_0/xadc_wiz_0.vhd" \


