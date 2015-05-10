library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;

entity delay is --registre de N bits, où N est un paramètre générique
	port (clk : in std_logic; --L'horloge du systeme
			r_w_ex : in std_logic; 
			r_w_ex_delayed: out std_logic); --La sortie du registre
end delay ;

architecture delay_arch of delay is
begin
	r_w_ex_delayed <= r_w_ex or not(clk);
end delay_arch;