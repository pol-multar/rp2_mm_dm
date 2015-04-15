library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;

entity regN is --registre de N bits, où N est un paramètre générique
	generic (N : natural := 16);
	port (clk : in std_logic;
			data_in : in std_logic_vector (N-1 downto 0);
			data_out : out std_logic_vector (N-1 downto 0));
end regN ;

architecture regNa of regN is
begin

process (clk,data_in)
begin

	if rising_edge(clk) then
		data_out <= data_in;

	end if;
end process;

end RegNa;