----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:00:54 04/30/2020 
-- Design Name: 
-- Module Name:    muxReg - Behavioral 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity muxReg is
    Port ( OP : in  STD_LOGIC_VECTOR (7 downto 0);
           OPOUT : out  STD_LOGIC_VECTOR (15 downto 0);
           QAIN : in  STD_LOGIC_VECTOR (7 downto 0);
           BOUT : out  STD_LOGIC_VECTOR (7 downto 0));
end muxReg;

architecture Behavioral of muxReg is

begin

multiplexeur : process(OP, QAIN) is 

begin

	case OP is
	when x"01" => --AFC
	when x"02" => --copy
		QA <= BOUT
		

end process;


end Behavioral;

