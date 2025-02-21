--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   10:43:30 04/24/2020
-- Design Name:   
-- Module Name:   D:/Bureau/Cours INSA/SystemeInfor/TestBancMemData.vhd
-- Project Name:  SystemeInfor
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: BancMem
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
 
ENTITY TestBancMemData IS
END TestBancMemData;
 
ARCHITECTURE behavior OF TestBancMemData IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT BancMem
    PORT(
         Addr_Entree : IN  std_logic_vector(7 downto 0);
         Entree : IN  std_logic_vector(7 downto 0);
         RW : IN  std_logic;
         RST : IN  std_logic;
         CLK : IN  std_logic;
         Sortie : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal Addr_Entree : std_logic_vector(7 downto 0) := (others => '0');
   signal Entree : std_logic_vector(7 downto 0) := (others => '0');
   signal RW : std_logic := '0';
   signal RST : std_logic := '0';
   signal CLK : std_logic := '0';

 	--Outputs
   signal Sortie : std_logic_vector(7 downto 0);

   -- Clock period definitions
   constant CLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: BancMem PORT MAP (
          Addr_Entree => Addr_Entree,
          Entree => Entree,
          RW => RW,
          RST => RST,
          CLK => CLK,
          Sortie => Sortie
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

		RST<='0';
		
		wait for CLK_period*10;
		
		RST<='1';
		RW<='0';
		Addr_Entree<="00000001";
		Entree<="10101010";
		
		wait for CLK_period*10;
		
		RST<='1';
		RW<='0';
		Addr_Entree<="00000010";
		Entree<="11110000";
		
		wait for CLK_period*10;
		
		RST<='1';
		RW<='1';
		Addr_Entree<="00000001";
		Entree<="10101010";
		
		wait for CLK_period*10;
		
		RST<='0';
		
		wait for CLK_period*10;

		RST<='1';
		RW<='1';
		Addr_Entree<="00000001";
		Entree<="10101010";		
			
		wait for CLK_period*10;
      wait;
   end process;

END;
