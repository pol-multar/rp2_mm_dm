library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;

entity regN is --registre de N bits, où N est un paramètre générique
	generic (N : natural := 16); --Nombre de bits, a 16 par defaut
	port (clk : in std_logic; --L'horloge du systeme
			data_in : in std_logic_vector (N-1 downto 0); --L'entree du registre
			data_out : out std_logic_vector (N-1 downto 0)); --La sortie du registre
end regN ;

architecture regNa of regN is
begin

process (clk,data_in) --Le process se reveille
begin

	if rising_edge(clk) then
		data_out <= data_in;

	end if;
end process;

end RegNa;