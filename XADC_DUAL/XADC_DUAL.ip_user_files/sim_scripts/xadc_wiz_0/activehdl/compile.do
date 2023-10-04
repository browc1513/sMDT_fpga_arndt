transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

vlib work
vmap -link {C:/Users/smdt/XADC_DUAL/XADC_DUAL.cache/compile_simlib/activehdl}
vlib activehdl/xil_defaultlib

vcom -work xil_defaultlib -93  \
"../../../../XADC_DUAL.gen/sources_1/ip/xadc_wiz_0/xadc_wiz_0.vhd" \


