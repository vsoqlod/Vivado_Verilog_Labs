//Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2021.1 (win64) Build 3247384 Thu Jun 10 19:36:33 MDT 2021
//Date        : Wed Sep 28 13:08:08 2022
//Host        : LAPTOP-RPL62RBM running 64-bit major release  (build 9200)
//Command     : generate_target adder_2bit_wrapper.bd
//Design      : adder_2bit_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module adder_2bit_wrapper
   (A,
    B,
    Sum);
  input [1:0]A;
  input [1:0]B;
  output [2:0]Sum;

  wire [1:0]A;
  wire [1:0]B;
  wire [2:0]Sum;

  adder_2bit adder_2bit_i
       (.A(A),
        .B(B),
        .Sum(Sum));
endmodule
