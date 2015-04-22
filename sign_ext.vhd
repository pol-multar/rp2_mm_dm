library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

entity sign_ext is
	port(	DATA_IN: 							in std_logic_vector (7 downto 0);
			DATA_OUT: 							out std_logic_vector(15 downto 0));
			
end entity;

architecture archisign_ext of sign_ext is

begin

process (all)
begin
	DATA_OUT(7 downto 0) <= DATA_IN; 
	DATA_OUT(8) <= DATA_IN(7);
	DATA_OUT(9) <= DATA_IN(7);
	DATA_OUT(10) <= DATA_IN(7);
	DATA_OUT(11) <= DATA_IN(7);
	DATA_OUT(12) <= DATA_IN(7);
	DATA_OUT(13) <= DATA_IN(7);
	DATA_OUT(14) <= DATA_IN(7);
	DATA_OUT(15) <= DATA_IN(7);	
	-- Output the current count
end process;

end archisign_ext;