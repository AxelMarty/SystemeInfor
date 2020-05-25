

----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:29:00 04/30/2020 
-- Design Name: 
-- Module Name:    pipeline - Behavioral 
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
entity pipeline is
    Port ( CLK : in STD_LOGIC;
			  QA : out  STD_LOGIC_VECTOR (7 downto 0);
           QB : out  STD_LOGIC_VECTOR (7 downto 0);
			  ADDR : IN  std_logic_vector(7 downto 0));
			  
end pipeline;

architecture Behavioral of pipeline is
-- Creation Pipeline LIDI :
signal LIDI_A : std_logic_vector(7 downto 0);
signal LIDI_OP : std_logic_vector(7 downto 0);
signal LIDI_B : std_logic_vector(7 downto 0);
signal LIDI_C : std_logic_vector(7 downto 0);

-- Creation Pipeline DIEX :
signal DIEX_A : std_logic_vector(7 downto 0);
signal DIEX_OP : std_logic_vector(7 downto 0);
signal DIEX_B : std_logic_vector(7 downto 0);
signal DIEX_C : std_logic_vector(7 downto 0);

-- Creation Pipeline EXMEM :
signal EXMEM_A : std_logic_vector(7 downto 0);
signal EXMEM_OP : std_logic_vector(7 downto 0);
signal EXMEM_B : std_logic_vector(7 downto 0);
signal EXMEM_C : std_logic_vector(7 downto 0);

-- Creation Pipeline MEMRE :
signal MEMRE_A : std_logic_vector(7 downto 0);
signal MEMRE_OP : std_logic_vector(7 downto 0);
signal MEMRE_B : std_logic_vector(7 downto 0);
signal MEMRE_C : std_logic_vector(7 downto 0);


signal result : STD_LOGIC_VECTOR(7 downto 0);


signal RST_R : std_logic;
signal QA_R : std_logic_vector(7 downto 0);
signal QB_R : std_logic_vector(7 downto 0);
signal W : std_logic;
signal addr_A : std_logic_vector(3 downto 0);

signal Ctrl_Alu : std_logic_vector(2 downto 0);
signal S_UAL : std_logic_vector(7 downto 0);
signal N : std_logic;
signal O : std_logic;
signal Z : std_logic;
signal C : std_logic;

signal Addr_Entree : std_logic_vector(7 downto 0);
signal Entree : std_logic_vector(7 downto 0);
signal RW : std_logic;
signal RST_M : std_logic;
signal CLK_M : std_logic;
signal Sortie_Mem : std_logic_vector(7 downto 0);

signal Sortie_Instru : std_logic_vector(31 downto 0);
signal Addr_Instru : std_logic_vector(7 downto 0);




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
	 
	 COMPONENT UAL
    PORT(
         Ctrl_Alu : IN  std_logic_vector(2 downto 0);
         A : IN  std_logic_vector(7 downto 0);
         B : IN  std_logic_vector(7 downto 0);
         S : OUT  std_logic_vector(7 downto 0);
         N : OUT  std_logic;
         O : OUT  std_logic;
         Z : OUT  std_logic;
         C : OUT  std_logic
        );
    END COMPONENT;
	 
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
	 
	 COMPONENT BancMemInstruc
    PORT(
         Addr : IN  std_logic_vector(7 downto 0);
         CLK : IN  std_logic;
         sortie : INOUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

begin

BancRegistreProcess: BancReg 
	port map 
	(
		LIDI_B(3 downto 0),
		LIDI_C(3 downto 0),
		MemRE_A(3 downto 0),
		MemRE_B,
		RST_R,
		CLK,
		QA_R,
		QB_R,
		W
	);
	
UALProcess: UAL 
	PORT MAP 
	(
          Ctrl_Alu,
          DIEX_B,
          DIEX_C,
          S_UAL,
          N => N,
          O => O,
          Z => Z,
          C => C
	);
	
bancMemProcess: BancMem 
	PORT MAP 
	(
          Addr_Entree => Addr_Entree,
          Entree => EXMEM_B,
          RW => RW,
          RST => RST_M,
          CLK => CLK,
          Sortie => Sortie_Mem
    );
	 
bancInstrucProcess: BancMemInstruc 
	PORT MAP (
          Addr_Instru,
          CLK,
          Sortie_Instru
	);
	 

	
pipeline : process (CLK) is

begin
 
	-- Instantiate the Unit Under Test (UUT)

	if rising_edge(CLK) then
	 
		QA <= QA_R;
		QB <= QB_R;
		--propagation des différents pipelines
		LIDI_A <= Sortie_Instru(31 downto 24);
		LIDI_OP <= Sortie_Instru(23 downto 16);
		LIDI_B <= Sortie_Instru(15 downto 8);
		LIDI_C <= Sortie_Instru(7 downto 0);

		DIEX_A <= LIDI_A;
		DIEX_OP <= LIDI_OP;
		
		
		EXMEM_A <= DIEX_A;
		EXMEM_OP <= DIEX_OP;
		

		MEMRE_A <= EXMEM_A;
		MEMRE_OP <= EXMEM_OP;
	-- new explication
	-- 01 add
	-- 02 mul
	-- 03 sous
	-- 04 div
	-- 05 cop
	-- 06 affec
	-- 07 chargement (load)
	-- 08 sauvegarde
		Addr_Instru <= ADDR;
		DIEX_C <= QB_R;
		

		
		
		case LIDI_OP is
			when x"06" => DIEX_B <= LIDI_B;
			when x"07" => DIEX_B <= LIDI_B;
			when others => DIEX_B <= QA_R;
		end case;

		case DIEX_OP is
			when x"01" => 
			Ctrl_Alu <= "001";
			EXMEM_B <= S_UAL;
			when x"02" => 
			Ctrl_Alu <= "010";
			EXMEM_B <= S_UAL;
			when x"03" => 
			Ctrl_Alu <= "011";
			EXMEM_B <= S_UAL;
			when others => 
			Ctrl_Alu <= "000";
			EXMEM_B <= DIEX_B;
		end case;
		

		case EXMEM_OP is 
			when x"07" => 
			Addr_Entree <= EXMEM_B;
			entree <= x"00";
			MEMRE_B <= Sortie_Mem;
			RW <= '1';

			when x"08" => 
			Addr_Entree <= EXMEM_A;
			RW <= '0';
			entree <= EXMEM_B;
			MEMRE_B <= EXMEM_B;
			
			when x"05" => 
			Addr_Entree <= x"00";
			entree <= x"00";
			MEMRE_B <= EXMEM_B;
			RW <= '1';
			
			when others => 
			Addr_Entree <= x"00";
			entree <= x"00";
			MEMRE_B <= EXMEM_B;
			RW <= '1';
		end case;

		case MEMRE_OP is
			when x"08" => W <= '0';
			when x"05" => W <= '0';
			when others => W <='1';
		end case;



	end if;
	
	
	
end process;
end Behavioral;

