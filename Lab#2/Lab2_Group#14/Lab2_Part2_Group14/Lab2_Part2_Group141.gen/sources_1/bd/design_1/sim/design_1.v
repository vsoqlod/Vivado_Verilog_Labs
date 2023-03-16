//Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2021.1 (win64) Build 3247384 Thu Jun 10 19:36:33 MDT 2021
//Date        : Tue Nov  1 00:45:48 2022
//Host        : LAPTOP-RPL62RBM running 64-bit major release  (build 9200)
//Command     : generate_target design_1.bd
//Design      : design_1
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=18,numReposBlks=18,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=4,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "design_1.hwdef" *) 
module design_1
   (A,
    B,
    C,
    Sum);
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.A DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.A, LAYERED_METADATA undef" *) input [3:0]A;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.B DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.B, LAYERED_METADATA undef" *) input [3:0]B;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.C DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.C, LAYERED_METADATA undef" *) input C;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.SUM DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.SUM, LAYERED_METADATA undef" *) output [4:0]Sum;

  wire [3:0]A_1;
  wire [3:0]B_1;
  wire C_1;
  wire FA_0_Cout;
  wire FA_0_S;
  wire FA_1_Cout;
  wire FA_1_S;
  wire FA_2_Cout;
  wire FA_2_S;
  wire FA_3_Cout;
  wire FA_3_S;
  wire [0:0]util_vector_logic_0_Res;
  wire [0:0]util_vector_logic_1_Res;
  wire [0:0]util_vector_logic_2_Res;
  wire [0:0]util_vector_logic_3_Res;
  wire [0:0]util_vector_logic_4_Res;
  wire [4:0]xlconcat_0_dout;
  wire [0:0]xlslice_0_Dout;
  wire [0:0]xlslice_1_Dout;
  wire [0:0]xlslice_2_Dout;
  wire [0:0]xlslice_3_Dout;
  wire [0:0]xlslice_4_Dout;
  wire [0:0]xlslice_5_Dout;
  wire [0:0]xlslice_6_Dout;
  wire [0:0]xlslice_7_Dout;

  assign A_1 = A[3:0];
  assign B_1 = B[3:0];
  assign C_1 = C;
  assign Sum[4:0] = xlconcat_0_dout;
  design_1_FA_0_0 FA_0
       (.A(xlslice_0_Dout),
        .B(util_vector_logic_0_Res),
        .Cin(C_1),
        .Cout(FA_0_Cout),
        .S(FA_0_S));
  design_1_FA_1_0 FA_1
       (.A(xlslice_1_Dout),
        .B(util_vector_logic_1_Res),
        .Cin(FA_0_Cout),
        .Cout(FA_1_Cout),
        .S(FA_1_S));
  design_1_FA_2_0 FA_2
       (.A(xlslice_2_Dout),
        .B(util_vector_logic_2_Res),
        .Cin(FA_1_Cout),
        .Cout(FA_2_Cout),
        .S(FA_2_S));
  design_1_FA_3_0 FA_3
       (.A(xlslice_3_Dout),
        .B(util_vector_logic_3_Res),
        .Cin(FA_2_Cout),
        .Cout(FA_3_Cout),
        .S(FA_3_S));
  design_1_util_vector_logic_0_0 util_vector_logic_0
       (.Op1(xlslice_4_Dout),
        .Op2(C_1),
        .Res(util_vector_logic_0_Res));
  design_1_util_vector_logic_0_1 util_vector_logic_1
       (.Op1(xlslice_5_Dout),
        .Op2(C_1),
        .Res(util_vector_logic_1_Res));
  design_1_util_vector_logic_0_2 util_vector_logic_2
       (.Op1(xlslice_6_Dout),
        .Op2(C_1),
        .Res(util_vector_logic_2_Res));
  design_1_util_vector_logic_0_3 util_vector_logic_3
       (.Op1(xlslice_7_Dout),
        .Op2(C_1),
        .Res(util_vector_logic_3_Res));
  design_1_util_vector_logic_0_4 util_vector_logic_4
       (.Op1(C_1),
        .Op2(FA_3_Cout),
        .Res(util_vector_logic_4_Res));
  design_1_xlconcat_0_0 xlconcat_0
       (.In0(FA_0_S),
        .In1(FA_1_S),
        .In2(FA_2_S),
        .In3(FA_3_S),
        .In4(util_vector_logic_4_Res),
        .dout(xlconcat_0_dout));
  design_1_xlslice_0_0 xlslice_0
       (.Din(A_1),
        .Dout(xlslice_0_Dout));
  design_1_xlslice_0_1 xlslice_1
       (.Din(A_1),
        .Dout(xlslice_1_Dout));
  design_1_xlslice_0_2 xlslice_2
       (.Din(A_1),
        .Dout(xlslice_2_Dout));
  design_1_xlslice_0_3 xlslice_3
       (.Din(A_1),
        .Dout(xlslice_3_Dout));
  design_1_xlslice_0_4 xlslice_4
       (.Din(B_1),
        .Dout(xlslice_4_Dout));
  design_1_xlslice_0_5 xlslice_5
       (.Din(B_1),
        .Dout(xlslice_5_Dout));
  design_1_xlslice_0_6 xlslice_6
       (.Din(B_1),
        .Dout(xlslice_6_Dout));
  design_1_xlslice_0_7 xlslice_7
       (.Din(B_1),
        .Dout(xlslice_7_Dout));
endmodule
