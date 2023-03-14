// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (win64) Build 3247384 Thu Jun 10 19:36:33 MDT 2021
// Date        : Wed Sep 28 13:09:08 2022
// Host        : LAPTOP-RPL62RBM running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim {c:/Users/vsoql/OneDrive/Desktop/CECS341/Xilinx
//               stuff/lab1/lab1.gen/sources_1/bd/adder_2bit/ip/adder_2bit_FA_0_0/adder_2bit_FA_0_0_sim_netlist.v}
// Design      : adder_2bit_FA_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7k70tfbv676-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "adder_2bit_FA_0_0,FA,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "FA,Vivado 2021.1" *) 
(* NotValidForBitStream *)
module adder_2bit_FA_0_0
   (A,
    B,
    Cin,
    S,
    Cout);
  input A;
  input B;
  input Cin;
  output S;
  output Cout;

  wire A;
  wire B;
  wire Cin;
  wire Cout;
  wire S;

  adder_2bit_FA_0_0_FA inst
       (.A(A),
        .B(B),
        .Cin(Cin),
        .Cout(Cout),
        .S(S));
endmodule

(* ORIG_REF_NAME = "FA" *) 
module adder_2bit_FA_0_0_FA
   (S,
    Cout,
    B,
    A,
    Cin);
  output S;
  output Cout;
  input B;
  input A;
  input Cin;

  wire A;
  wire B;
  wire Cin;
  wire Cout;
  wire S;

  LUT3 #(
    .INIT(8'hE8)) 
    ct
       (.I0(A),
        .I1(Cin),
        .I2(B),
        .O(Cout));
  LUT3 #(
    .INIT(8'h96)) 
    st
       (.I0(B),
        .I1(A),
        .I2(Cin),
        .O(S));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
