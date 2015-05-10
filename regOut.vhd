library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;

entity regOut is --registre de N bits, où N est un paramètre générique
	generic (N : natural := 16); --Nombre de bits, a 16 par defaut
	port (clk : in std_logic; --L'horloge du systeme
			data_in : in std_logic_vector (N-1 downto 0); --L'entree du registre
			d_in_valid: in std_logic; 
			data_out : out std_logic_vector (N-1 downto 0)); --La sortie du registre
end regOut ;

architecture archi_regOut of regOut is
begin

process (clk,data_in) --Le process se reveille
begin

	if rising_edge(clk) then
		if d_in_valid then 
			data_out <= data_in;
		end if;
	end if;
end process;

end archi_regOut;