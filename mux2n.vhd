library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;

entity mux2n is -- Multiplexer a 2 entrees de N bits
	generic (N : natural :=2 ); -- valeur par defaut
	port (data_in0 : in std_logic_vector (N-1 downto 0);
			data_in1 : in std_logic_vector (N-1 downto 0);
			sel : in std_logic;
			data_out : out std_logic_vector(N-1 downto 0));
end mux2n ;


architecture mux2na of mux2n is

begin

	data_out <= data_in0 when sel='0' else 
					data_in1;

end mux2na;