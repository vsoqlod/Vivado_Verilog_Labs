----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2022/12/09 00:33:31
-- Design Name: 
-- Module Name: ALU_tb - Behavioral
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

entity ALU_tb is
--  Port ( );
end ALU_tb;

architecture Behavioral of ALU_tb is
signal A,B  : std_logic_vector(31 downto 0);
signal Carryin : std_logic;
signal ALUCntl : std_logic_vector(3 downto 0);
signal ALUout : std_logic_vector(31 downto 0);
signal Zero : std_logic;
signal Carryout : std_logic;
signal Overflow : std_logic;

component design_1_wrapper is 
port (
A, B: in STD_LOGIC_VECTOR (31 downto 0);
Carryin: in STD_LOGIC;
ALUCntl: in STD_LOGIC_VECTOR(3 downto 0);
ALUout: out STD_LOGIC_VECTOR(31 downto 0);
Zero: out STD_LOGIC;
Carryout: out STD_LOGIC;
Overflow: out STD_LOGIC);
end component design_1_wrapper;

begin
design_1_i: design_1_wrapper
port map(
A, B, Carryin, ALUCntl, ALUout, Zero, Carryout, Overflow);

process 

begin
-- Test #1
A <= x"ffffffff";
B <= x"00000000";
Carryin <= '0';
ALUCntl <= "0000";
wait for 70ns;

-- Test #2
A <= x"98989898";
B <= x"89898989";
Carryin <= '0';
ALUCntl <= "0001";
wait for 70ns;

-- Test #3
A <= x"01010101";
B <= x"10101010";
Carryin <= '0';
ALUCntl <= "0011";
wait for 70ns;

-- Test #4
A <= x"00000001";
B <= x"ffffffff";
Carryin <= '0';
ALUCntl <= "0010";
wait for 70ns;

-- Test #5
A <= x"6389754F";
B <= x"AD5624E6";
Carryin <= '0';
ALUCntl <= "0010";
wait for 70ns;

-- Test #6
A <= x"00000001";
B <= x"FFFFFFFF";
Carryin <= '1';
ALUCntl <= "0010";
wait for 70ns;

-- Test #7
A <= x"6389754F";
B <= x"AD5624E6";
Carryin <= '1';
ALUCntl <= "0010";
wait for 70ns;

-- Test #8
A <= x"FFFFFFFF";
B <= x"FFFFFFFF";
Carryin <= '1';
ALUCntl <= "0010";
wait for 70ns;

-- Test #9
A <= x"00000000";
B <= x"00000001";
Carryin <= '0';
ALUCntl <= "0110";
wait for 70ns;

-- Test #10
A <= x"F9684783";
B <= x"F998D562";
Carryin <= '0';
ALUCntl <= "0110";
wait for 70ns;

-- Test #11
A <= x"9ABCDEDF";
B <= x"9ABCDEFD";
Carryin <= '0';
ALUCntl <= "1100";
wait for 70ns;

-- Test #12
A <= x"89BCDE34";
B <= x"C53BD687";
Carryin <= '1';
ALUCntl <= "0010";
wait for 70ns;

wait for 70ns;


end process;
end Behavioral;
