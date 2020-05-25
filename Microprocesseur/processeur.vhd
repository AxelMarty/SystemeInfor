----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:10:20 04/21/2020 
-- Design Name: 
-- Module Name:    processeur - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
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
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use ieee.numeric_std.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ual is
    Port ( Ctrl_Alu : in  STD_LOGIC_VECTOR (2 downto 0);
           A : in  STD_LOGIC_VECTOR (7 downto 0);
           B : in  STD_LOGIC_VECTOR (7 downto 0);
           S : out  STD_LOGIC_VECTOR (7 downto 0);
           N : out  STD_LOGIC;
           O : out  STD_LOGIC;
           Z : out  STD_LOGIC;
           C : out  STD_LOGIC);
end ual;

architecture Behavioral of ual is

signal result : STD_LOGIC_VECTOR(15 downto 0);

begin 

calcul :process (A, B, Ctrl_Alu) is 
begin

	if(Ctrl_Alu = "001") then
		result <= (x"00" & A) + (x"00" & B);
	elsif(Ctrl_Alu = "011") then
		result <= (x"00" & A) - (x"00" & B);
	elsif(Ctrl_Alu = "010") then
		result <= A*B;
	else result<= x"0000";
	end if;
		
end process;
	s<= result(7 downto 0);
	
	O <= '0' when result (15 downto 8)= x"00" else '1';
		
--negatif
	N <= result(7);
-- carry
	C <= result(8);
		
-- zéro
	
	Z<= '1' when result (7 downto 0)= x"00" else '0';

end Behavioral;

