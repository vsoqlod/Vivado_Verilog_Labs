//Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2021.1 (win64) Build 3247384 Thu Jun 10 19:36:33 MDT 2021
//Date        : Fri Dec  9 04:30:37 2022
//Host        : LAPTOP-RPL62RBM running 64-bit major release  (build 9200)
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
   (A,
    ALUCntl,
    ALUout,
    B,
    Carryin,
    Carryout,
    Overflow,
    Zero);
  input [31:0]A;
  input [3:0]ALUCntl;
  output [31:0]ALUout;
  input [31:0]B;
  input [0:0]Carryin;
  output [0:0]Carryout;
  output [0:0]Overflow;
  output [0:0]Zero;

  wire [31:0]A;
  wire [3:0]ALUCntl;
  wire [31:0]ALUout;
  wire [31:0]B;
  wire [0:0]Carryin;
  wire [0:0]Carryout;
  wire [0:0]Overflow;
  wire [0:0]Zero;

  design_1 design_1_i
       (.A(A),
        .ALUCntl(ALUCntl),
        .ALUout(ALUout),
        .B(B),
        .Carryin(Carryin),
        .Carryout(Carryout),
        .Overflow(Overflow),
        .Zero(Zero));
endmodule
