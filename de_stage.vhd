library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

entity de_stage is

	port(	DATA_IN_VALID:						in std_logic;
			CODE_OP:								in std_logic_vector(3 downto 0);
			FLAG_EQ:								in std_logic;
			FLAG_GT:								in std_logic;
			DATA_IN_ACK:						out std_logic;
			INCR_DECR:							out std_logic;
			CODE_ALU:							out std_logic_vector(2 downto 0);
			DATA_OUT_VALID:					out std_logic;
			RW:									out std_logic;
			ENW_REG_FILE:						out std_logic;
			SEL_ALU_MUX:						out std_logic_vector(1 downto 0);
			SEL_MEM_MUX:						out std_logic;
			SEL_MUX_DATA:						out std_logic;
			SEL_MUX_RS1:						out std_logic);
			
end entity;

architecture archide_stage of de_stage is

begin

process (all)
begin
	
	-- Output the current count
end process;

end archide_stage;