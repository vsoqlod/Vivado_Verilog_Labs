----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2022/10/30 23:00:25
-- Design Name: 
-- Module Name: logic_circuit - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity logic_circuit is
--  Port ( );
port( A : in std_logic;
      B : in std_logic;
      C : in std_logic;
      F : out std_logic);
end logic_circuit;

architecture Behavioral of logic_circuit is

begin
F <= (A and B) or (not (A) and C) or (A and not (B) and not (C));
end Behavioral;