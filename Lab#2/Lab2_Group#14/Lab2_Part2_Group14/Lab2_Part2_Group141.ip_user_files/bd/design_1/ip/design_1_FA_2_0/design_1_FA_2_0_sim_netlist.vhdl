-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.1 (win64) Build 3247384 Thu Jun 10 19:36:33 MDT 2021
-- Date        : Tue Nov  1 00:46:56 2022
-- Host        : LAPTOP-RPL62RBM running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim {c:/Users/vsoql/OneDrive/Desktop/CECS341/Xilinx
--               stuff/Lab2_Part2_Group141/Lab2_Part2_Group141.gen/sources_1/bd/design_1/ip/design_1_FA_2_0/design_1_FA_2_0_sim_netlist.vhdl}
-- Design      : design_1_FA_2_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7k70tfbv676-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_FA_2_0_FA is
  port (
    S : out STD_LOGIC;
    Cout : out STD_LOGIC;
    B : in STD_LOGIC;
    A : in STD_LOGIC;
    Cin : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_FA_2_0_FA : entity is "FA";
end design_1_FA_2_0_FA;

architecture STRUCTURE of design_1_FA_2_0_FA is
begin
ct: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => A,
      I1 => Cin,
      I2 => B,
      O => Cout
    );
st: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => B,
      I1 => A,
      I2 => Cin,
      O => S
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_FA_2_0 is
  port (
    A : in STD_LOGIC;
    B : in STD_LOGIC;
    Cin : in STD_LOGIC;
    S : out STD_LOGIC;
    Cout : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_FA_2_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_FA_2_0 : entity is "design_1_FA_2_0,FA,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_FA_2_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of design_1_FA_2_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_FA_2_0 : entity is "FA,Vivado 2021.1";
end design_1_FA_2_0;

architecture STRUCTURE of design_1_FA_2_0 is
begin
inst: entity work.design_1_FA_2_0_FA
     port map (
      A => A,
      B => B,
      Cin => Cin,
      Cout => Cout,
      S => S
    );
end STRUCTURE;
