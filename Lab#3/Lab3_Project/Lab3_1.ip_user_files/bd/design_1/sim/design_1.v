//Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2021.1 (win64) Build 3247384 Thu Jun 10 19:36:33 MDT 2021
//Date        : Fri Dec  9 04:30:37 2022
//Host        : LAPTOP-RPL62RBM running 64-bit major release  (build 9200)
//Command     : generate_target design_1.bd
//Design      : design_1
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=1,numReposBlks=1,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=1,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "design_1.hwdef" *) 
module design_1
   (A,
    ALUCntl,
    ALUout,
    B,
    Carryin,
    Carryout,
    Overflow,
    Zero);
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.A DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.A, LAYERED_METADATA undef" *) input [31:0]A;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.ALUCNTL DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.ALUCNTL, LAYERED_METADATA undef" *) input [3:0]ALUCntl;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.ALUOUT DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.ALUOUT, LAYERED_METADATA undef" *) output [31:0]ALUout;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.B DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.B, LAYERED_METADATA undef" *) input [31:0]B;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.CARRYIN DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.CARRYIN, LAYERED_METADATA undef" *) input [0:0]Carryin;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.CARRYOUT DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.CARRYOUT, LAYERED_METADATA undef" *) output [0:0]Carryout;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.OVERFLOW DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.OVERFLOW, LAYERED_METADATA undef" *) output [0:0]Overflow;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.ZERO DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.ZERO, LAYERED_METADATA undef" *) output [0:0]Zero;

  wire [3:0]ALUCntl_1;
  wire [31:0]ALU_0_ALUout;
  wire ALU_0_Carryout;
  wire ALU_0_Overflow;
  wire ALU_0_Zero;
  wire [31:0]A_1;
  wire [31:0]B_1;
  wire [0:0]Carryin_1;

  assign ALUCntl_1 = ALUCntl[3:0];
  assign ALUout[31:0] = ALU_0_ALUout;
  assign A_1 = A[31:0];
  assign B_1 = B[31:0];
  assign Carryin_1 = Carryin[0];
  assign Carryout[0] = ALU_0_Carryout;
  assign Overflow[0] = ALU_0_Overflow;
  assign Zero[0] = ALU_0_Zero;
  design_1_ALU_0_0 ALU_0
       (.A(A_1),
        .ALUCntl(ALUCntl_1),
        .ALUout(ALU_0_ALUout),
        .B(B_1),
        .Carryin(Carryin_1),
        .Carryout(ALU_0_Carryout),
        .Overflow(ALU_0_Overflow),
        .Zero(ALU_0_Zero));
endmodule
