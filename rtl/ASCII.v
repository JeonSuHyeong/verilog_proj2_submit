module bin2ascii(in_bin, clk, rst, out_ASCII, out_rst);
    input in_bin;  //binary input
    input clk,rst;            //clk : clk마다 1 bit씩 옮기도록
    
    output reg [6:0]out_ASCII;
    output reg out_rst;
    reg [2:0] cnt;          //cnt
    reg [6:0] temp;

    always@ (clk) begin
        if (rst ==0)begin
            cnt = 0;
            temp = 0;
            out_rst = 0;
        end
        else begin
            case(cnt)
                3'd1: begin
                    cnt = cnt+1;
                    temp[5] = in_bin;
                end
                3'd2: begin
                    cnt = cnt+1;
                    temp[4] = in_bin;
                end
                3'd3: begin
                    cnt = cnt+1;
                    temp[3] = in_bin;
                end
                3'd4: begin
                    cnt = cnt+1;
                    temp[2] = in_bin;
                end
                3'd5: begin
                    cnt = cnt+1;
                    temp[1] = in_bin;
                end
                3'd6: begin
                    cnt = cnt+1;
                    temp[0] = in_bin;
                end
                3'd7: begin
                    out_ASCII = temp;
                    cnt = 1;
                    temp[6] = in_bin;
                    out_rst = 1'b1;
                end
                default: begin  //for the initialize the cnt.
                    temp[6] = in_bin;
                    cnt = 1;
                    out_rst = 0;
                end
            endcase
        end
    end
endmodule