--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   09:43:59 05/19/2020
-- Design Name:   
-- Module Name:   D:/Bureau/Cours INSA/SystemeInfor/TestBancInstruc.vhd
-- Project Name:  SystemeInfor
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: BancMemInstruc
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY TestBancInstruc IS
END TestBancInstruc;
 
ARCHITECTURE behavior OF TestBancInstruc IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT BancMemInstruc
    PORT(
         Addr : IN  std_logic_vector(7 downto 0);
         CLK : IN  std_logic;
         sortie : INOUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal Addr : std_logic_vector(7 downto 0) := (others => '0');
   signal CLK : std_logic := '0';

	--BiDirs
   signal sortie : std_logic_vector(31 downto 0);

   -- Clock period definitions
   constant CLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: BancMemInstruc PORT MAP (
          Addr => Addr,
          CLK => CLK,
          sortie => sortie
        );

   -- Clock process definitions
   CLK_process :process
   begin
		CLK <= '0';
		wait for CLK_period/2;
		CLK <= '1';
		wait for CLK_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for CLK_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
