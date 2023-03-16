----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2022/12/08 23:15:24
-- Design Name: 
-- Module Name: ALU - Behavioral
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
--use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ALU is
port(A, B: in STD_LOGIC_VECTOR (31 downto 0);
ALUCntl: in STD_LOGIC_VECTOR (3 downto 0); 
Carryin: in STD_LOGIC;  
ALUout: out STD_LOGIC_VECTOR(31 downto 0);
Zero: out STD_LOGIC;
Carryout: out STD_LOGIC;
Overflow: out STD_LOGIC);
end ALU;

architecture Behavioral of ALU is
signal result : std_logic_vector (32 downto 0);
signal a32: std_logic_vector(32 downto 0);
signal b32: std_logic_vector(32 downto 0);
signal ALU_Result: std_logic;

begin

process

variable subB: std_logic_vector(32 downto 0);

begin 
wait for 1ns;

if ALUCntl = "0000" then --and
    Carryout <= '0';
    Overflow <= '0';
    
    ALUout <= A and B;
    if (A and B) = x"00000000" then
        Zero <= '1';
    else
        Zero <= '0';
    end if;
    
elsif ALUCntl = "0001" then --or
    Carryout <= '0';
    Overflow <= '0';
    
    ALUout <= A or B;    
    if  (A or B) = x"00000000" then 
        Zero <= '1';
    else
        Zero <= '0';
    end if;
    
elsif ALUCntl = "0011" then --xor
    Carryout <= '0';
    Overflow <= '0';
    
    ALUout <= A xor B;    
    if  (A xor B) = x"00000000" then 
        Zero <= '1';
    else
        Zero <= '0';
    end if;
    
elsif ALUCntl = "0010" then --add
    ALU_Result <= '0';
    
    a32 <= "0" & A(31 downto 0);
    b32 <= "0" & B(31 downto 0);
    
    if Carryin ='1' then
        result <= std_logic_vector(signed(a32) + signed(b32) + ("00000000000000000000000000000001"));
    else
        result <= std_logic_vector(signed(a32) + signed(b32));
    end if;       
    
    Carryout <= std_logic(result(32));
    ALUout <= result(31 downto 0);
    
    if result(31 downto 0) = x"00000000" then
        Zero <= '1';
    else
        Zero <= '0';
    end if;
    
    
    if B(31) = A(31) then 
        if result(31) = A(31) then
        ALU_Result <= '0';
        else
        ALU_Result <= '1';
        end if;
    else
        ALU_Result <= '0';
    end if;
    Overflow <= ALU_Result;
    
    
elsif ALUCntl = "0110" then --sub
    ALU_Result <= '0';
    
    a32 <= "0" & A(31 downto 0);
    b32 <= "0" & B(31 downto 0);    
    
    for i in b32'range loop
        if i = 32 then 
            subB(i) := '0';
        else
            subB(i) := not b32(i);
        end if;
    end loop;


    result <= std_logic_vector(signed (a32) + signed (subB) + ("00000000000000000000000000000001"));    
    
    Carryout <= std_logic(result(32));
    ALUout <= result(31 downto 0);
    
    if result(31 downto 0) = x"00000000" then
        Zero <= '1';
    else
        Zero <= '0';
    end if;
    
    if B(31) = A(31) then
        ALU_Result <= '0';
    else
        if A(31) = result(31) then
            ALU_Result <= '0';
        else
            ALU_Result <= '1';
        end if;
    end if;
        Overflow <= ALU_Result;
        
elsif ALUCntl = "1100" then --nor

    Carryout <= '0';
    Overflow <= '0';
    
    ALUout <= not (A or B);   
    
    if (not (A or B)) = x"00000000" then
        Zero <= '1';
    else
        Zero <= '0';
    end if;
end if;

end process;     
        


end Behavioral;
