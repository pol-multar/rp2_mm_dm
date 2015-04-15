library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

entity incrementeur is
	generic(	SIZE_VECTOR : natural := 8);
	port(	INCREMENT_DECREMENT: 			in std_logic;
			DATA_IN: 							in std_logic_vector (SIZE_VECTOR-1 downto 0);
			DATA_OUT: 							out std_logic_vector(SIZE_VECTOR-1 downto 0));
			
end entity;

architecture archiincrementeur of incrementeur is

begin

process (all)
begin
			if INCREMENT_DECREMENT = '0' then -- RAZ the counter to 0	
				DATA_OUT <= DATA_IN;
			else
				DATA_OUT <= DATA_IN +1;
			end if;
	-- Output the current count
end process;

end archiincrementeur;