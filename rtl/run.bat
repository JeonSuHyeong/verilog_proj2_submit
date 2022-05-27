del output.*
iverilog -o output.vvp *.v
vvp output.vvp
gtkwave output.vcd