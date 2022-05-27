module ASCII2base64 (in_ASCII, clk, rst, out_base64num_3231);
	input [6:0] in_ASCII;
	input clk, rst;

	output reg [5:0]out_base64num_3231;
	reg [5:0] save_temp6;
	reg [4:0] save_temp5;
	reg [3:0] save_temp4;
	reg [2:0] save_temp3;
	reg [1:0] save_temp2;
	reg save_temp1;
	reg [6:0] cnt;

	always@(clk) begin
		if(rst == 0) begin
			save_temp6=0;
			save_temp5=0;
			save_temp4=0;
			save_temp3=0;
			save_temp2=0;
			save_temp1=0;
			cnt =0;
		end
        //in_ASCII는 7ns마다 들어온다.
		else begin
			case(cnt)
				7'd0:begin
					if(in_ASCII==0) begin
					out_base64num_3231 = 6'd0;
					save_temp1 = 0;
					end
					else begin
					out_base64num_3231 = in_ASCII[6:1];
					save_temp1 = in_ASCII[0];
					end
                    cnt= cnt+1;
				end
				7'd7:begin
					if(in_ASCII==0) begin
					out_base64num_3231 = {save_temp1, 5'd0};
					save_temp2 = 0;
					end
					else begin
					out_base64num_3231 = {save_temp1,in_ASCII[6:2]};
					save_temp2 = in_ASCII[1:0];
					end
                    cnt= cnt+1;			
				end
				7'd14:begin
					if(in_ASCII==0) begin
					out_base64num_3231 = {save_temp2[1:0],4'd0};
					save_temp3 = 0;
					end
					else begin
					out_base64num_3231 = {save_temp2[1:0],in_ASCII[6:3]};
					save_temp3 = in_ASCII[2:0];
					end
                    cnt= cnt+1;				
				end
				7'd21:begin
					if(in_ASCII==0) begin
					out_base64num_3231 = {save_temp3[2:0],3'd0};
					save_temp4 = 0;
					end
					else begin
					out_base64num_3231 = {save_temp3[2:0],in_ASCII[6:4]};
					save_temp4 = in_ASCII[3:0];
					end
                    cnt= cnt+1;				
				end
				7'd28:begin
					if(in_ASCII==0) begin
					out_base64num_3231 = {save_temp4[3:0],2'd0};
					save_temp5 = 0;
					end
					else begin
					out_base64num_3231 = {save_temp4[3:0],in_ASCII[6:5]};
					save_temp5 = in_ASCII[4:0];
					end				
                    cnt= cnt+1;
				end
				7'd35:begin
					if(in_ASCII==0) begin
					out_base64num_3231 = {save_temp5[4:0],1'd0};
					save_temp6 = 0;
					end
					else begin
					out_base64num_3231 = {save_temp5[4:0],in_ASCII[6]};
					save_temp6 = in_ASCII[5:0];
					end
                    cnt= cnt+1;				
				end
				7'd38:begin
					out_base64num_3231 =save_temp6;
					cnt = cnt+1;
				end
				7'd41:begin
					cnt = 0;
				end
				default:begin
					cnt = cnt+1;//cnt를 계속 증가
				end
			endcase
		end
	end
endmodule