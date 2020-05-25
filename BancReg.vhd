----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:44:58 04/22/2020 
-- Design Name: 
-- Module Name:    BancReg - Behavioral 
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

entity BancReg is
    Port ( addr_A : in  STD_LOGIC_VECTOR (3 downto 0);
           addr_B : in  STD_LOGIC_VECTOR (3 downto 0);
           addr_W : in  STD_LOGIC_VECTOR (3 downto 0);
           DATA : in  STD_LOGIC_VECTOR (7 downto 0);
           RST : in  STD_LOGIC;
           CLK : in  STD_LOGIC;
           QA : out  STD_LOGIC_VECTOR (7 downto 0);
           QB : out  STD_LOGIC_VECTOR (7 downto 0);
           W : in  STD_LOGIC);
end BancReg;

architecture Behavioral of BancReg is

	type registre is array (integer range 15 downto 0) of STD_LOGIC_VECTOR(7 downto 0);
	signal reg : registre;

begin

reg1 : process (CLK) is
begin
	if rising_edge(CLK) then
		if(RST='0') then
			reg <= (others => x"00");
		else
			if W='1' then
				reg(conv_integer(addr_W)) <= DATA;
			end if;
		end if;
	end if;
	
		
end process;

QA <= DATA when (addr_A = addr_W) and W='1' else
      reg(conv_integer(addr_A))
		;
		
QB <= DATA when (addr_B = addr_W) and W='1' else
      reg(conv_integer(addr_B))
		;
		

end Behavioral;

