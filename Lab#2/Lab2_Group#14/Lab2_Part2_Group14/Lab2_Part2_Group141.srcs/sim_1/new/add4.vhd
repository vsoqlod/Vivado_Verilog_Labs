library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity add4 is
--  Port ( );
end add4;

architecture Behavioral of add4 is
signal A, B : std_logic_vector(3 downto 0);
signal C : std_logic;
signal Sum : std_logic_vector(4 downto 0);



component design_1_wrapper is
  port (
    A : in STD_LOGIC_VECTOR ( 3 downto 0 );
    B : in STD_LOGIC_VECTOR ( 3 downto 0 );
    C : in STD_LOGIC;
    Sum : out STD_LOGIC_VECTOR ( 4 downto 0 )
  );
  end component design_1_wrapper;
begin
design_1_i:  design_1_wrapper
     port map (
      A => A,
      B => B,
      C => C,
      Sum => Sum
    );
  
stimulus_process: process 
begin
A <= "1111"; B <= "1111"; C <= '0'; wait for 10 ns;
A <= "1111"; B <= "1111"; C <= '1'; wait for 10 ns;
A <= "0011"; B <= "0011"; C <= '0'; wait for 10 ns;
A <= "1011"; B <= "0001"; C <= '1'; wait for 10 ns;
end process;
end Behavioral;
