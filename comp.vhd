library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

entity comp is
	port(	DATA_IN: 							in std_logic_vector (7 downto 0);
			FLAG_EQ: 							out std_logic;
			FLAG_GT:								out std_logic
			);
			
end entity;

architecture archicomp of comp is

begin

process (all)
variable valeur:  integer; 
begin

		valeur := to_integer(signed(DATA_IN));
		if valeur = 0 then 
        FLAG_EQ <= '1';		
		  FLAG_GT <= '0';
		else
		  if valeur > 0 then
				FLAG_EQ <= '0';
				FLAG_GT<= '1'; 
		  else
		  		FLAG_EQ <= '0';
				FLAG_GT <= '0';
		  end if;
		end if;
	
	-- Output the current count
end process;

end archicomp;