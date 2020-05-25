--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   17:22:10 04/22/2020
-- Design Name:   
-- Module Name:   D:/Bureau/Cours INSA/SystemeInfor/TestBancReg.vhd
-- Project Name:  SystemeInfor
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: BancReg
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
 
ENTITY TestBancReg IS
END TestBancReg;
 
ARCHITECTURE behavior OF TestBancReg IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT BancReg
    PORT(
         addr_A : IN  std_logic_vector(3 downto 0);
         addr_B : IN  std_logic_vector(3 downto 0);
         addr_W : IN  std_logic_vector(3 downto 0);
         DATA : IN  std_logic_vector(7 downto 0);
         RST : IN  std_logic;
         CLK : IN  std_logic;
         QA : OUT  std_logic_vector(7 downto 0);
         QB : OUT  std_logic_vector(7 downto 0);
         W : IN  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal addr_A : std_logic_vector(3 downto 0) := (others => '0');
   signal addr_B : std_logic_vector(3 downto 0) := (others => '0');
   signal addr_W : std_logic_vector(3 downto 0) := (others => '0');
   signal DATA : std_logic_vector(7 downto 0) := (others => '0');
   signal RST : std_logic := '0';
   signal CLK : std_logic := '0';
   signal W : std_logic := '0';

 	--Outputs
   signal QA : std_logic_vector(7 downto 0);
   signal QB : std_logic_vector(7 downto 0);

   -- Clock period definitions
   constant CLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: BancReg PORT MAP (
          addr_A => addr_A,
          addr_B => addr_B,
          addr_W => addr_W,
          DATA => DATA,
          RST => RST,
          CLK => CLK,
          QA => QA,
          QB => QB,
          W => W
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
		
		RST<='0';
		wait for CLK_period*10;
		RST<='1';
		W<='1';
		addr_W<="0001";
		DATA<="10101010";
		
		wait for CLK_period*10;
		RST<='1';
		W<='1';
		addr_W<="0101";
		DATA<="10101111";
		addr_A<="0001";
		
		wait for CLK_period*10;
		RST<='1';
		W<='1';
		addr_W<="0111";
		DATA<="11010101";
		addr_B<="0101";
		
		wait for CLK_period*10;
		RST<='1';
		W<='1';
		addr_W<="0111";
		DATA<="10000000";
		addr_B<="0101";
		addr_A<="0111";
		
		wait for CLK_period*10;
		RST<='1';
		W<='0';
		addr_W<="0111";
		DATA<="10000000";
		addr_B<="0001";
		addr_A<="0101";

      wait;
   end process;

END;
