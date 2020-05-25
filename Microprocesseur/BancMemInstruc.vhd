----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:11:25 04/24/2020 
-- Design Name: 
-- Module Name:    BancMemInstruc - Behavioral 
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
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;



-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity BancMemInstruc is
    Port ( Addr : in  STD_LOGIC_VECTOR (7 downto 0);
           CLK : in  STD_LOGIC;
           sortie : inout  STD_LOGIC_VECTOR (31 downto 0));
end BancMemInstruc;

architecture Behavioral of BancMemInstruc is

	type Instructions is array (0 to 255) of std_logic_vector(31 downto 0);
	signal Ins : Instructions;
	
begin

instruc1 : process (CLK) is
begin
	if falling_edge(CLK) then
		sortie<= Ins(conv_integer(Addr));
	end if;
	
		
end process;

-- new explication
	-- 01 add
	-- 02 mul
	-- 03 sous
	-- 04 div
	-- 05 cop
	-- 06 affec
	-- 07 chargement
	-- 08 sauvegarde
	
	
		Ins(0) <= x"01" & x"06" & x"03" & x"00"; -- AFC 01 03 
		Ins(1) <= x"02" & x"06" & x"04" & x"00"; -- AFC 02 04
		
		Ins(2) <= x"03" & x"01" & x"01" & x"02"; -- ADD 03 01 02
		
		Ins(3) <= x"04" & x"02" & x"01" & x"02"; -- mul 04 01 02
		
		Ins(4) <= x"05" & x"03" & x"02" & x"01"; -- sous 05 02 01
		
		Ins(5) <= x"01" & x"08" & x"03" & x"00"; -- STORE 01 03 --> mettre "03" à l'addr 01 du banc de mem données

		Ins(6) <= x"06" & x"07" & x"01" & x"00"; -- LOAD 06 01 --> mettre dans l'addr du registre 06, la valeur a l'addr 01
		


		

end Behavioral;

