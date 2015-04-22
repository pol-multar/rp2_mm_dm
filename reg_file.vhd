library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

entity reg_file is
	port(	DATA_OUT1: 							out std_logic_vector (15 downto 0);
			DATA_OUT2:							out std_logic_vector (15 downto 0);
			REG_SRC1:							in std_logic_vector (3 downto 0);
			REG_SRC2:							in std_logic_vector (3 downto 0);
			REG_DEST:							in std_logic_vector (3 downto 0);
			EN_WR:								in std_logic;
			DATA_IN: 							in std_logic_vector(15 downto 0);
			CLOCK:								in std_logic
			);
			
end entity;

architecture archireg_file of reg_file is

begin

process (all)

variable R0: std_logic_vector(15 downto 0); 
variable R1: std_logic_vector(15 downto 0);
variable R2: std_logic_vector(15 downto 0);
variable R3: std_logic_vector(15 downto 0);
variable R4: std_logic_vector(15 downto 0);
variable R5: std_logic_vector(15 downto 0);
variable R6: std_logic_vector(15 downto 0);
variable R7: std_logic_vector(15 downto 0);
variable R8: std_logic_vector(15 downto 0);
variable R9: std_logic_vector(15 downto 0);
variable R10: std_logic_vector(15 downto 0);
variable R11: std_logic_vector(15 downto 0);
variable R12: std_logic_vector(15 downto 0);
variable R13: std_logic_vector(15 downto 0);
variable R14: std_logic_vector(15 downto 0);
variable R15: std_logic_vector(15 downto 0);

begin

	if rising_edge(CLOCK) then
	
		if EN_WR = '1' then 
		  
		  if REG_DEST = "0000" then
		     R0 := DATA_IN;
		  end if;
		  if REG_DEST = "0001" then
		     R1 := DATA_IN;
		  end if;
		  if REG_DEST = "0010" then
		     R2 := DATA_IN;
		  end if;
		  if REG_DEST = "0011" then
		     R3 := DATA_IN;
		  end if;
		  if REG_DEST = "0100" then
		     R4 := DATA_IN;
		  end if;
		  if REG_DEST = "0101" then
		     R5 := DATA_IN;
		  end if;
			if REG_DEST = "0110" then
		     R6 := DATA_IN;
		  end if;
		  if REG_DEST = "0111" then
		     R7 := DATA_IN;
		  end if;  
		  if REG_DEST = "1000" then
		     R8 := DATA_IN;
		  end if;  
		    if REG_DEST = "1001" then
		     R9 := DATA_IN;
		  end if;
		    if REG_DEST = "1010" then
		     R10 := DATA_IN;
		  end if;
		    if REG_DEST = "1011" then
		     R11 := DATA_IN;
		  end if;
		    if REG_DEST = "1100" then
		     R12 := DATA_IN;
		  end if;
		    if REG_DEST = "1101" then
		     R13 := DATA_IN;
		  end if;
		   if REG_DEST = "1110" then
		     R14 := DATA_IN;
		  end if;
		   if REG_DEST = "1111" then
		     R15 := DATA_IN;
		  end if;
		end if;
		
		
			if REG_SRC1 = "0000" then
		     DATA_OUT1 <= R0;
		  end if;
		  if REG_SRC1 = "0001" then
		     DATA_OUT1 <= R1;
		  end if;
		  if REG_SRC1 = "0010" then
		     DATA_OUT1 <= R2;
		  end if;
		  if REG_SRC1 = "0011" then
		     DATA_OUT1 <= R3;
		  end if;
		  if REG_SRC1 = "0100" then
		     DATA_OUT1 <= R4;
		  end if;
		  if REG_SRC1 = "0101" then
		     DATA_OUT1 <= R5;
		  end if;
			if REG_SRC1 = "0110" then
		     DATA_OUT1 <= R6;
		  end if;
		  if REG_SRC1 = "0111" then
		     DATA_OUT1 <= R7;
		  end if;  
		  if REG_SRC1 = "1000" then
		     DATA_OUT1 <= R8;
		  end if;  
		    if REG_SRC1 = "1001" then
		     DATA_OUT1 <= R9;
		  end if;
		    if REG_SRC1 = "1010" then
		     DATA_OUT1 <= R10;
		  end if;
		    if REG_SRC1 = "1011" then
		     DATA_OUT1 <= R11;
		  end if;
		    if REG_SRC1 = "1100" then
		     DATA_OUT1 <= R12;
		  end if;
		    if REG_SRC1 = "1101" then
		     DATA_OUT1 <= R13;
		  end if;
		   if REG_SRC1 = "1110" then
		     DATA_OUT1 <= R14;
		  end if;
		   if REG_SRC1 = "1111" then
		     DATA_OUT1 <= R15;
		  end if;

		
			if REG_SRC2 = "0000" then
		     DATA_OUT2 <= R0;
		  end if;
		  if REG_SRC2 = "0001" then
		     DATA_OUT2 <= R1;
		  end if;
		  if REG_SRC2 = "0010" then
		     DATA_OUT2 <= R2;
		  end if;
		  if REG_SRC2 = "0011" then
		     DATA_OUT2 <= R3;
		  end if;
		  if REG_SRC2 = "0100" then
		     DATA_OUT2 <= R4;
		  end if;
		  if REG_SRC2 = "0101" then
		     DATA_OUT2 <= R5;
		  end if;
			if REG_SRC2 = "0110" then
		     DATA_OUT2 <= R6;
		  end if;
		  if REG_SRC2 = "0111" then
		     DATA_OUT2 <= R7;
		  end if;  
		  if REG_SRC2 = "1000" then
		     DATA_OUT2 <= R8;
		  end if;  
		    if REG_SRC2 = "1001" then
		     DATA_OUT2 <= R9;
		  end if;
		    if REG_SRC2 = "1010" then
		     DATA_OUT2 <= R10;
		  end if;
		    if REG_SRC2 = "1011" then
		     DATA_OUT2 <= R11;
		  end if;
		    if REG_SRC2 = "1100" then
		     DATA_OUT2 <= R12;
		  end if;
		    if REG_SRC2 = "1101" then
		     DATA_OUT2 <= R13;
		  end if;
		   if REG_SRC2 = "1110" then
		     DATA_OUT2 <= R14;
		  end if;
		   if REG_SRC2 = "1111" then
		     DATA_OUT2 <= R15;
		  end if;
		  
	end if;
	
	-- Output the current count
end process;

end archireg_file;