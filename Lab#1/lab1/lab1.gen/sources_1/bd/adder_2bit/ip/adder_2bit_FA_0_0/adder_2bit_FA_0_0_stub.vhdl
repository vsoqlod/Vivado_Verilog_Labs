-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.1 (win64) Build 3247384 Thu Jun 10 19:36:33 MDT 2021
-- Date        : Wed Sep 28 13:09:08 2022
-- Host        : LAPTOP-RPL62RBM running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub {c:/Users/vsoql/OneDrive/Desktop/CECS341/Xilinx
--               stuff/lab1/lab1.gen/sources_1/bd/adder_2bit/ip/adder_2bit_FA_0_0/adder_2bit_FA_0_0_stub.vhdl}
-- Design      : adder_2bit_FA_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7k70tfbv676-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity adder_2bit_FA_0_0 is
  Port ( 
    A : in STD_LOGIC;
    B : in STD_LOGIC;
    Cin : in STD_LOGIC;
    S : out STD_LOGIC;
    Cout : out STD_LOGIC
  );

end adder_2bit_FA_0_0;

architecture stub of adder_2bit_FA_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "A,B,Cin,S,Cout";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "FA,Vivado 2021.1";
begin
end;
