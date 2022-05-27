module topmodule(in, clk ,rst, out_base64);
    input in;
    input clk, rst;
    output [5:0]out_base64;

    wire [6:0]out_ASCII;
    wire out_rst3;

    bin2ascii b1(in, clk, rst, out_ASCII, out_rst3);
    ASCII2base64 b2(out_ASCII, clk, out_rst3, out_base64);

endmodule