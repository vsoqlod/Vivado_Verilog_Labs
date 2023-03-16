----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2022/10/30 23:14:15
-- Design Name: 
-- Module Name: logic_circuit_testbench - Behavioral
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

entity logic_circuit_testbench is
end logic_circuit_testbench;

architecture Behavioral of logic_circuit_testbench is
signal A,B,C: std_logic;
signal F: std_logic;

COMPONENT logic_circuit
Port ( A: in STD_LOGIC;
       B: in STD_LOGIC;
       C: in STD_LOGIC;
       F: out STD_LOGIC);
END COMPONENT;

begin

LOGICCIRCUIT: logic_circuit port map(
A => A,
B => B,
C => C,
F => F);

Stimulus_process: process
begin
    A<='0'; B<='0'; C<='0'; wait for 10 ns;
    A<='0'; B<='0'; C<='1'; wait for 10 ns;
    A<='0'; B<='1'; C<='0'; wait for 10 ns;
--    A<='0'; B<='1'; C<='1'; wait for 10 ns;
    A<='1'; B<='0'; C<='0'; wait for 10 ns;
--    A<='1'; B<='0'; C<='1'; wait for 10 ns;
--    A<='1'; B<='1'; C<='0'; wait for 10 ns;
--    A<='1'; B<='1'; C<='1'; wait for 10 ns;

end process;


end Behavioral;