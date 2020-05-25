----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:10:19 04/24/2020 
-- Design Name: 
-- Module Name:    BancMem - Behavioral 
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

entity BancMem is
    Port ( Addr_Entree : in  STD_LOGIC_VECTOR (7 downto 0);
           Entree : in  STD_LOGIC_VECTOR (7 downto 0);
           RW : in  STD_LOGIC;
           RST : in  STD_LOGIC;
           CLK : in  STD_LOGIC;
           Sortie : out  STD_LOGIC_VECTOR (7 downto 0));
end BancMem;

architecture Behavioral of BancMem is

	type data is array (integer range 255 downto 0) of STD_LOGIC_VECTOR(7 downto 0);
	signal dat : data;

begin

data1 : process (CLK) is
begin
	if rising_edge(CLK) then
		if(RST='0') then
			dat <= (others =>(others =>'0'));
		else
			if(RW='1') then
				Sortie <= dat(conv_integer(Addr_Entree));
			else
				dat(conv_integer(Addr_Entree)) <= Entree;
			end if;
		end if;
	end if;

		
end process;

end Behavioral;

