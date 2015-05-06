library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

--author=max
ENTITY decoder IS
PORT (
		code_op : IN Std_logic_vector(3 downto 0); -- depuis instruction
		flagEQ : IN Std_logic; -- issu du comparateur
		flagGT : IN Std_logic; -- issu du comparateur
		--data_in_valid : in Std_logic; -- Indique donnÃ©e sur port entrÃ©e est valide
		--data_in_ack : out Std_logic; -- Indique que donnÃ©e sur port entrÃ©e a Ã©tÃ© lue
		--incr_decr : out Std_logic ; -- incrÃ©mentation ou dÃ©crementation du PC
		--Ces trucs sont supprimÃ©s en version 2015
		sel_mux_data : out Std_logic; -- selection valeur immediate ou port entrÃ©e
		code_alu : OUT Std_logic_vector(2 downto 0); -- code pour ALU
		r_w : OUT Std_logic; -- ecriture data memory
		en_reg_file : OUT Std_logic; -- autorisation ecriture register file
		sel_alu_mux : OUT Std_logic_vector(1 downto 0); -- selection donnee sortie etage EX 
		sel_mem_mux :OUT Std_logic; -- selection donnee en sortie etage WB 
		sel_mux_rs1 : OUT Std_logic; -- selection numero rs1 a lâ€™entree du reg_file
		sel_adr_mux : OUT Std_logic; -- selection adresse prochaine instr. 
		data_out_valid : OUT Std_logic -- la donnÃ©e sur le port de sortie est valide
);
END decoder;

architecture decoder_a of decoder is

begin

process(all) is

variable tmp: std_logic_vector(13 downto 0);

begin

case code_op is 
	--Instruction Add
	when "0000" => 
		tmp := "10000110010110";
	--Instruction Sub	
	when "0001" =>
		tmp := "10010110010110";
	--Instruction NOT	
	if	code_op = "0010" then
		tmp := "10100110010110";
	end if;
	--Instruction MULT	
	if	code_op = "0011" then
		tmp := "10110110010110";
	end if;		
	--Instruction NC	
	if	code_op = "0100" then
		tmp := "00000000000000";
	end if;
	--Instruction JMP	
	if	code_op = "0101" then
		tmp := "01000100010110";
	end if;
	--Instruction BEQ add	
	if	code_op = "0110" then
	
		if flagEQ = '0' then
			tmp := "01000100010100";
		end if;
		
		if flagEQ = '1' then
			tmp := "11000100010100";
		end if;
		
	end if;
	--Instruction BGT add	
	if	code_op = "0111" then
	
		if flagEQ = '0' then
			tmp := "01000100010100";
		end if;
		
		if flagEQ = '1' then
			tmp := "11000100010100";
		end if;
		
	end if;
	--Instruction LD	
	if	code_op = "1000" then
		tmp := "11000111000110";
	end if;
	--Instruction MOVI	
	if	code_op = "1001" then
		tmp := "11000111010110";
	end if;
	--Instruction ST	
	if	code_op = "1010" then
		tmp := "11000000110110";
	end if;
	--Instruction B: NOP	
	if	code_op = "1011" then
		tmp := "11000101010110";
	end if;
	--Instruction C:MOV	
	if	code_op = "1100" then
		tmp := "11000110110110";
	end if;
	--Instruction D:OUT	
	if	code_op = "1101" then
		tmp := "11001100110110";
	end if;	
	--Instruction E:SHF	
	if	code_op = "1110" then
		tmp := "11010110010110";
	end if;	
	--Instruction 15:IN	
	if	code_op = "1111" then
		tmp := "11000110111111";
	end if;

	sel_adr_mux <= tmp(13);
	code_alu <= tmp(12 downto 10);
	data_out_valid <= tmp(9);
	r_w <= tmp(8);
	en_reg_file <= tmp(7);
	sel_alu_mux <= tmp(6 downto 5);
	sel_mem_mux <= tmp(4);
	sel_mux_data <= tmp(3);
	--incr_decr <= tmp(2); devenu inutile
	sel_mux_rs1 <= tmp(1);
	--data_in_ack <= tmp(0); devenu inutile
	
end process;


end decoder_a ;