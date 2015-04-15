

/*

Prend 2 vecteur en entrée
Met en sortie ("SELECTED_VECTOR") l'un de ces vecteur selon la valeur de l'entrée "SELECT_VECTOR"


*/
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity mux is
	generic(	SIZE_VECTOR : natural := 8);
	port(	VECTOR_0: 			in std_logic_vector (SIZE_VECTOR-1 downto 0);
			VECTOR_1: 			in std_logic_vector (SIZE_VECTOR-1 downto 0);
			SELECT_VECTOR: 	in std_logic;
			SELECTED_VECTOR: 	out std_logic_vector (SIZE_VECTOR-1 downto 0));
end entity;

architecture archimux of mux is
begin

with SELECT_VECTOR select 
SELECTED_VECTOR <= VECTOR_0 when '0',
						 VECTOR_1 when '1';
end archimux;