/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : O-2018.06-SP4
// Date      : Fri May 27 17:35:31 2022
/////////////////////////////////////////////////////////////


module bin2ascii ( in_bin, clk, rst, out_ASCII, out_rst );
  output [6:0] out_ASCII;
  input in_bin, clk, rst;
  output out_rst;
  wire   N38, N39, N40, N56, N57, N58, N74, N76, N78, N82, N87, N88, N96, n9,
         n10, n11, n12, n13, n14, n17, n18, n19, n20, n22, n23, n24, n25, n26,
         n1, n2;
  wire   [2:0] cnt;
  wire   [6:0] temp;

  LATCHX1_HVT out_rst_reg ( .CLK(N88), .D(N96), .Q(out_rst) );
  LATCHX1_HVT \temp_reg[6]  ( .CLK(N88), .D(N87), .Q(temp[6]) );
  LARX1_HVT \temp_reg[5]  ( .CLK(n1), .D(in_bin), .RSTB(rst), .Q(temp[5]) );
  LATCHX1_HVT \temp_reg[4]  ( .CLK(N82), .D(N87), .Q(temp[4]) );
  LARX1_HVT \temp_reg[3]  ( .CLK(n14), .D(in_bin), .RSTB(rst), .Q(temp[3]) );
  LATCHX1_HVT \temp_reg[2]  ( .CLK(N78), .D(N87), .Q(temp[2]) );
  LATCHX1_HVT \temp_reg[1]  ( .CLK(N76), .D(N87), .Q(temp[1]) );
  LATCHX1_HVT \temp_reg[0]  ( .CLK(N74), .D(N87), .Q(temp[0]) );
  LATCHX1_HVT \out_ASCII_reg[6]  ( .CLK(N96), .D(temp[6]), .Q(out_ASCII[6]) );
  LATCHX1_HVT \out_ASCII_reg[5]  ( .CLK(N96), .D(temp[5]), .Q(out_ASCII[5]) );
  LATCHX1_HVT \out_ASCII_reg[4]  ( .CLK(N96), .D(temp[4]), .Q(out_ASCII[4]) );
  LATCHX1_HVT \out_ASCII_reg[3]  ( .CLK(N96), .D(temp[3]), .Q(out_ASCII[3]) );
  LATCHX1_HVT \out_ASCII_reg[2]  ( .CLK(N96), .D(temp[2]), .Q(out_ASCII[2]) );
  LATCHX1_HVT \out_ASCII_reg[1]  ( .CLK(N96), .D(temp[1]), .Q(out_ASCII[1]) );
  LATCHX1_HVT \out_ASCII_reg[0]  ( .CLK(N96), .D(temp[0]), .Q(out_ASCII[0]) );
  AO21X1_HVT U5 ( .A1(n10), .A2(n9), .A3(N38), .Y(N56) );
  NAND3X0_HVT U6 ( .A1(cnt[2]), .A2(cnt[0]), .A3(cnt[1]), .Y(n12) );
  OR3X1_HVT U7 ( .A1(cnt[2]), .A2(cnt[1]), .A3(cnt[0]), .Y(n11) );
  AND2X1_HVT U8 ( .A1(n12), .A2(n11), .Y(n13) );
  AND2X1_HVT U9 ( .A1(N39), .A2(n13), .Y(N57) );
  AND2X1_HVT U10 ( .A1(N40), .A2(n13), .Y(N58) );
  NAND2X0_HVT U19 ( .A1(n18), .A2(n17), .Y(N88) );
  NAND3X0_HVT U20 ( .A1(cnt[1]), .A2(cnt[0]), .A3(cnt[2]), .Y(n17) );
  NAND3X0_HVT U21 ( .A1(n19), .A2(n20), .A3(N38), .Y(n18) );
  AO21X1_HVT U23 ( .A1(n22), .A2(n20), .A3(n2), .Y(N82) );
  AO21X1_HVT U24 ( .A1(n24), .A2(N38), .A3(n2), .Y(N78) );
  AO21X1_HVT U25 ( .A1(n24), .A2(cnt[0]), .A3(n2), .Y(N76) );
  AND2X1_HVT U26 ( .A1(in_bin), .A2(rst), .Y(N87) );
  AO21X1_HVT U27 ( .A1(n22), .A2(cnt[2]), .A3(n2), .Y(N74) );
  NAND3X0_HVT U28 ( .A1(n25), .A2(n23), .A3(n26), .Y(N40) );
  NAND2X0_HVT U29 ( .A1(cnt[2]), .A2(N38), .Y(n26) );
  NAND3X0_HVT U30 ( .A1(cnt[0]), .A2(n20), .A3(cnt[1]), .Y(n23) );
  NAND2X0_HVT U31 ( .A1(cnt[2]), .A2(n19), .Y(n25) );
  NAND2X0_HVT U32 ( .A1(rst), .A2(N58), .Y(n20) );
  AO21X1_HVT U33 ( .A1(cnt[0]), .A2(n19), .A3(n22), .Y(N39) );
  AND2X1_HVT U34 ( .A1(cnt[1]), .A2(N38), .Y(n22) );
  NAND2X0_HVT U35 ( .A1(N57), .A2(rst), .Y(n19) );
  NAND2X0_HVT U36 ( .A1(N56), .A2(rst), .Y(N38) );
  XNOR2X2_HVT U3 ( .A1(cnt[2]), .A2(cnt[1]), .Y(n10) );
  XNOR2X2_HVT U4 ( .A1(cnt[0]), .A2(cnt[1]), .Y(n9) );
  INVX1_HVT U11 ( .A(n17), .Y(N96) );
  INVX1_HVT U12 ( .A(N38), .Y(cnt[0]) );
  INVX1_HVT U13 ( .A(n19), .Y(cnt[1]) );
  INVX1_HVT U14 ( .A(n20), .Y(cnt[2]) );
  AND3X1_HVT U15 ( .A1(n19), .A2(n20), .A3(cnt[0]), .Y(n1) );
  INVX1_HVT U16 ( .A(rst), .Y(n2) );
  INVX1_HVT U17 ( .A(n25), .Y(n24) );
  INVX1_HVT U18 ( .A(n23), .Y(n14) );
endmodule


module ASCII2base64_DW01_inc_0 ( A, SUM );
  input [7:0] A;
  output [7:0] SUM;

  wire   [7:2] carry;

  HADDX1_HVT U1_1_6 ( .A0(A[6]), .B0(carry[6]), .SO(SUM[6]) );
  HADDX1_HVT U1_1_5 ( .A0(A[5]), .B0(carry[5]), .C1(carry[6]), .SO(SUM[5]) );
  HADDX1_HVT U1_1_4 ( .A0(A[4]), .B0(carry[4]), .C1(carry[5]), .SO(SUM[4]) );
  HADDX1_HVT U1_1_3 ( .A0(A[3]), .B0(carry[3]), .C1(carry[4]), .SO(SUM[3]) );
  HADDX1_HVT U1_1_2 ( .A0(A[2]), .B0(carry[2]), .C1(carry[3]), .SO(SUM[2]) );
  HADDX1_HVT U1_1_1 ( .A0(A[1]), .B0(A[0]), .C1(carry[2]), .SO(SUM[1]) );
  INVX0_HVT U1 ( .A(A[0]), .Y(SUM[0]) );
endmodule


module ASCII2base64 ( in_ASCII, clk, rst, out_base64num_3231 );
  input [6:0] in_ASCII;
  output [5:0] out_base64num_3231;
  input clk, rst;
  wire   save_temp1, N150, N152, N154, N156, N158, N160, N220, n2, n3, n4, n5,
         n6, n7, n8, N9, N84, N4, N3, n22, n23, n24, n25, n26, n27, n28, n29,
         n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43,
         n44, n45, n46, n50, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61,
         n62, n63, n64, n65, n66, n67, n68, n69, n1, n10, n11, n12, n13, n14;
  wire   [6:0] cnt;
  wire   [1:0] save_temp2;
  wire   [2:0] save_temp3;
  wire   [3:0] save_temp4;
  wire   [4:0] save_temp5;
  wire   [5:0] save_temp6;
  wire   SYNOPSYS_UNCONNECTED__0;

  LARX1_HVT \save_temp5_reg[4]  ( .CLK(n11), .D(in_ASCII[4]), .RSTB(rst), .Q(
        save_temp5[4]) );
  LARX1_HVT \save_temp5_reg[3]  ( .CLK(n11), .D(in_ASCII[3]), .RSTB(rst), .Q(
        save_temp5[3]) );
  LARX1_HVT \save_temp5_reg[2]  ( .CLK(n11), .D(in_ASCII[2]), .RSTB(rst), .Q(
        save_temp5[2]) );
  LARX1_HVT \save_temp5_reg[1]  ( .CLK(n11), .D(in_ASCII[1]), .RSTB(rst), .Q(
        save_temp5[1]) );
  LARX1_HVT \save_temp5_reg[0]  ( .CLK(n11), .D(in_ASCII[0]), .RSTB(rst), .Q(
        save_temp5[0]) );
  LARX1_HVT \save_temp6_reg[5]  ( .CLK(n12), .D(in_ASCII[5]), .RSTB(rst), .Q(
        save_temp6[5]) );
  LARX1_HVT \save_temp6_reg[4]  ( .CLK(n12), .D(in_ASCII[4]), .RSTB(rst), .Q(
        save_temp6[4]) );
  LARX1_HVT \save_temp6_reg[3]  ( .CLK(n12), .D(in_ASCII[3]), .RSTB(rst), .Q(
        save_temp6[3]) );
  LARX1_HVT \save_temp6_reg[2]  ( .CLK(n12), .D(in_ASCII[2]), .RSTB(rst), .Q(
        save_temp6[2]) );
  LARX1_HVT \save_temp6_reg[1]  ( .CLK(n12), .D(in_ASCII[1]), .RSTB(rst), .Q(
        save_temp6[1]) );
  LATCHX1_HVT \out_base64num_3231_reg[1]  ( .CLK(N220), .D(N152), .Q(
        out_base64num_3231[1]) );
  LARX1_HVT \save_temp6_reg[0]  ( .CLK(n12), .D(in_ASCII[0]), .RSTB(rst), .Q(
        save_temp6[0]) );
  LATCHX1_HVT \out_base64num_3231_reg[0]  ( .CLK(N220), .D(N150), .Q(
        out_base64num_3231[0]) );
  LARX1_HVT save_temp1_reg ( .CLK(N3), .D(in_ASCII[0]), .RSTB(rst), .Q(
        save_temp1) );
  LARX1_HVT \save_temp2_reg[1]  ( .CLK(N4), .D(in_ASCII[1]), .RSTB(rst), .Q(
        save_temp2[1]) );
  LARX1_HVT \save_temp2_reg[0]  ( .CLK(N4), .D(in_ASCII[0]), .RSTB(rst), .Q(
        save_temp2[0]) );
  LARX1_HVT \save_temp3_reg[2]  ( .CLK(n1), .D(in_ASCII[2]), .RSTB(rst), .Q(
        save_temp3[2]) );
  LARX1_HVT \save_temp3_reg[1]  ( .CLK(n1), .D(in_ASCII[1]), .RSTB(rst), .Q(
        save_temp3[1]) );
  LARX1_HVT \save_temp3_reg[0]  ( .CLK(n1), .D(in_ASCII[0]), .RSTB(rst), .Q(
        save_temp3[0]) );
  LARX1_HVT \save_temp4_reg[3]  ( .CLK(n10), .D(in_ASCII[3]), .RSTB(rst), .Q(
        save_temp4[3]) );
  LATCHX1_HVT \out_base64num_3231_reg[5]  ( .CLK(N220), .D(N160), .Q(
        out_base64num_3231[5]) );
  LARX1_HVT \save_temp4_reg[2]  ( .CLK(n10), .D(in_ASCII[2]), .RSTB(rst), .Q(
        save_temp4[2]) );
  LATCHX1_HVT \out_base64num_3231_reg[4]  ( .CLK(N220), .D(N158), .Q(
        out_base64num_3231[4]) );
  LARX1_HVT \save_temp4_reg[1]  ( .CLK(n10), .D(in_ASCII[1]), .RSTB(rst), .Q(
        save_temp4[1]) );
  LATCHX1_HVT \out_base64num_3231_reg[3]  ( .CLK(N220), .D(N156), .Q(
        out_base64num_3231[3]) );
  LARX1_HVT \save_temp4_reg[0]  ( .CLK(n10), .D(in_ASCII[0]), .RSTB(rst), .Q(
        save_temp4[0]) );
  LATCHX1_HVT \out_base64num_3231_reg[2]  ( .CLK(N220), .D(N154), .Q(
        out_base64num_3231[2]) );
  NOR4X1_HVT U17 ( .A1(n10), .A2(n11), .A3(n12), .A4(N9), .Y(n50) );
  NOR2X0_HVT U25 ( .A1(n22), .A2(n23), .Y(N84) );
  NAND4X0_HVT U26 ( .A1(n24), .A2(n25), .A3(n26), .A4(n27), .Y(n23) );
  NAND4X0_HVT U27 ( .A1(n28), .A2(n29), .A3(n30), .A4(n31), .Y(n22) );
  NAND3X0_HVT U28 ( .A1(cnt[3]), .A2(n32), .A3(n33), .Y(n24) );
  NAND3X0_HVT U29 ( .A1(n34), .A2(n35), .A3(cnt[5]), .Y(n25) );
  NAND3X0_HVT U30 ( .A1(cnt[1]), .A2(n35), .A3(n33), .Y(n26) );
  AND4X1_HVT U31 ( .A1(cnt[5]), .A2(cnt[0]), .A3(n36), .A4(n37), .Y(n33) );
  NAND3X0_HVT U32 ( .A1(cnt[3]), .A2(n38), .A3(n39), .Y(n27) );
  NAND3X0_HVT U33 ( .A1(cnt[0]), .A2(n35), .A3(n39), .Y(n28) );
  AND4X1_HVT U34 ( .A1(n40), .A2(n41), .A3(n32), .A4(n42), .Y(n39) );
  AND2X1_HVT U35 ( .A1(cnt[4]), .A2(cnt[2]), .Y(n42) );
  NAND3X0_HVT U36 ( .A1(n34), .A2(n40), .A3(cnt[3]), .Y(n29) );
  AND4X1_HVT U37 ( .A1(cnt[2]), .A2(cnt[1]), .A3(n36), .A4(n38), .Y(n34) );
  AND2X1_HVT U38 ( .A1(n43), .A2(n41), .Y(n36) );
  NAND4X0_HVT U39 ( .A1(cnt[2]), .A2(cnt[1]), .A3(cnt[0]), .A4(n44), .Y(n30)
         );
  NAND4X0_HVT U40 ( .A1(n44), .A2(n38), .A3(n32), .A4(n37), .Y(n31) );
  AND4X1_HVT U41 ( .A1(n35), .A2(n43), .A3(n40), .A4(n41), .Y(n44) );
  NAND3X0_HVT U42 ( .A1(rst), .A2(n45), .A3(n2), .Y(n41) );
  NAND3X0_HVT U43 ( .A1(rst), .A2(n45), .A3(n3), .Y(n40) );
  NAND3X0_HVT U44 ( .A1(rst), .A2(n45), .A3(n4), .Y(n43) );
  NAND3X0_HVT U45 ( .A1(rst), .A2(n45), .A3(n5), .Y(n35) );
  NAND3X0_HVT U46 ( .A1(n6), .A2(n45), .A3(rst), .Y(n37) );
  NAND3X0_HVT U47 ( .A1(rst), .A2(n45), .A3(n7), .Y(n32) );
  NAND3X0_HVT U48 ( .A1(rst), .A2(n45), .A3(n8), .Y(n38) );
  OR2X1_HVT U49 ( .A1(N84), .A2(n46), .Y(n45) );
  AND2X1_HVT U50 ( .A1(rst), .A2(n46), .Y(N220) );
  NAND4X0_HVT U51 ( .A1(n30), .A2(n29), .A3(n31), .A4(n50), .Y(n46) );
  OR3X1_HVT U52 ( .A1(n52), .A2(n53), .A3(n54), .Y(N160) );
  AO222X1_HVT U53 ( .A1(n12), .A2(save_temp5[4]), .A3(n11), .A4(save_temp4[3]), 
        .A5(N9), .A6(save_temp6[5]), .Y(n54) );
  AO22X1_HVT U54 ( .A1(n10), .A2(save_temp3[2]), .A3(n1), .A4(save_temp2[1]), 
        .Y(n53) );
  AO22X1_HVT U55 ( .A1(N4), .A2(save_temp1), .A3(N3), .A4(in_ASCII[6]), .Y(n52) );
  OR3X1_HVT U56 ( .A1(n55), .A2(n56), .A3(n57), .Y(N158) );
  AO222X1_HVT U57 ( .A1(save_temp5[3]), .A2(n12), .A3(save_temp4[2]), .A4(n11), 
        .A5(save_temp6[4]), .A6(N9), .Y(n57) );
  AO22X1_HVT U58 ( .A1(save_temp3[1]), .A2(n10), .A3(save_temp2[0]), .A4(n1), 
        .Y(n56) );
  AO22X1_HVT U59 ( .A1(N4), .A2(in_ASCII[6]), .A3(N3), .A4(in_ASCII[5]), .Y(
        n55) );
  OR3X1_HVT U60 ( .A1(n58), .A2(n59), .A3(n60), .Y(N156) );
  AO222X1_HVT U61 ( .A1(save_temp5[2]), .A2(n12), .A3(save_temp4[1]), .A4(n11), 
        .A5(save_temp6[3]), .A6(N9), .Y(n60) );
  AO22X1_HVT U62 ( .A1(save_temp3[0]), .A2(n10), .A3(n1), .A4(in_ASCII[6]), 
        .Y(n59) );
  AO22X1_HVT U63 ( .A1(N4), .A2(in_ASCII[5]), .A3(N3), .A4(in_ASCII[4]), .Y(
        n58) );
  NAND3X0_HVT U64 ( .A1(n61), .A2(n62), .A3(n63), .Y(N154) );
  AOI222X1_HVT U65 ( .A1(save_temp6[2]), .A2(N9), .A3(save_temp4[0]), .A4(n11), 
        .A5(save_temp5[1]), .A6(n12), .Y(n63) );
  OA22X1_HVT U66 ( .A1(n14), .A2(n31), .A3(n13), .A4(n30), .Y(n62) );
  AOI22X1_HVT U67 ( .A1(in_ASCII[5]), .A2(n1), .A3(in_ASCII[6]), .A4(n10), .Y(
        n61) );
  NAND3X0_HVT U68 ( .A1(n64), .A2(n65), .A3(n66), .Y(N152) );
  AOI222X1_HVT U69 ( .A1(save_temp6[1]), .A2(N9), .A3(n11), .A4(in_ASCII[6]), 
        .A5(save_temp5[0]), .A6(n12), .Y(n66) );
  AOI22X1_HVT U70 ( .A1(in_ASCII[2]), .A2(N3), .A3(in_ASCII[3]), .A4(N4), .Y(
        n65) );
  AOI22X1_HVT U71 ( .A1(in_ASCII[4]), .A2(n1), .A3(in_ASCII[5]), .A4(n10), .Y(
        n64) );
  NAND3X0_HVT U72 ( .A1(n67), .A2(n68), .A3(n69), .Y(N150) );
  AOI222X1_HVT U73 ( .A1(save_temp6[0]), .A2(N9), .A3(n11), .A4(in_ASCII[5]), 
        .A5(n12), .A6(in_ASCII[6]), .Y(n69) );
  AOI22X1_HVT U74 ( .A1(in_ASCII[1]), .A2(N3), .A3(in_ASCII[2]), .A4(N4), .Y(
        n68) );
  OA22X1_HVT U75 ( .A1(n14), .A2(n29), .A3(n13), .A4(n28), .Y(n67) );
  ASCII2base64_DW01_inc_0 r86 ( .A({1'b0, cnt}), .SUM({SYNOPSYS_UNCONNECTED__0, 
        n2, n3, n4, n5, n6, n7, n8}) );
  INVX1_HVT U3 ( .A(n30), .Y(N4) );
  INVX1_HVT U4 ( .A(n26), .Y(n12) );
  INVX1_HVT U5 ( .A(n29), .Y(n1) );
  INVX1_HVT U6 ( .A(n27), .Y(n11) );
  INVX1_HVT U7 ( .A(n28), .Y(n10) );
  INVX1_HVT U8 ( .A(n25), .Y(N9) );
  INVX1_HVT U9 ( .A(n31), .Y(N3) );
  INVX1_HVT U10 ( .A(n37), .Y(cnt[2]) );
  INVX1_HVT U11 ( .A(in_ASCII[4]), .Y(n13) );
  INVX1_HVT U12 ( .A(in_ASCII[3]), .Y(n14) );
  INVX1_HVT U13 ( .A(n38), .Y(cnt[0]) );
  INVX1_HVT U14 ( .A(n35), .Y(cnt[3]) );
  INVX1_HVT U15 ( .A(n32), .Y(cnt[1]) );
  INVX1_HVT U16 ( .A(n40), .Y(cnt[5]) );
  INVX1_HVT U18 ( .A(n43), .Y(cnt[4]) );
  INVX1_HVT U19 ( .A(n41), .Y(cnt[6]) );
endmodule


module topmodule ( in, clk, rst, out_base64 );
  output [5:0] out_base64;
  input in, clk, rst;

  wire   [6:0] out_ASCII;

  bin2ascii b1 ( .in_bin(in), .clk(clk), .rst(rst), .out_ASCII(out_ASCII) );
  ASCII2base64 b2 ( .in_ASCII(out_ASCII), .clk(clk), .rst(1'b0), 
        .out_base64num_3231(out_base64) );
endmodule

