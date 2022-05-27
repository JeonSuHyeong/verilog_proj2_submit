`timescale 1ns/1ns
module ASCII_tb();
    reg [83:0]in1;
    reg [97:0]in2;
    reg clk;
    reg b1_temp;
    reg b2_temp;
    
    wire [6:0]out_ASCII_3231;
    wire [5:0]out_base64_3231;
    wire out_rst1;
        
    //for the part 1;
    bin2ascii b1 (b1_temp, clk, 1'b1, out_ASCII_3231, out_rst1);
    //for the part 2;
    topmodule b4(b2_temp, clk, 1'b1, out_base64_3231);

    initial begin
    in1 = 84'b100100011001011101100110110011011111011111101011111011111110010110110011001000101011; clk = 0;
    b1_temp = in1[83];
    in2 = 98'b10000111001111100110110100000110011011000101100011011111110100111100111011111110011011101011101110;
    b2_temp = in2[97];
    #120 $finish;
    end

    always begin
        #1 in1 = in1<<1; b1_temp =in1[83]; in2 = in2<<1; b2_temp =in2[97];
    end

    always begin
        #1 clk = ~clk;
    end

    initial begin
        $dumpfile("output.vcd");
        $dumpvars(0);
    end


endmodule


//base64를 384bit