//Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2021.1 (win64) Build 3247384 Thu Jun 10 19:36:33 MDT 2021
//Date        : Tue Nov  1 00:45:48 2022
//Host        : LAPTOP-RPL62RBM running 64-bit major release  (build 9200)
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
   (A,
    B,
    C,
    Sum);
  input [3:0]A;
  input [3:0]B;
  input C;
  output [4:0]Sum;

  wire [3:0]A;
  wire [3:0]B;
  wire C;
  wire [4:0]Sum;

  design_1 design_1_i
       (.A(A),
        .B(B),
        .C(C),
        .Sum(Sum));
endmodule
