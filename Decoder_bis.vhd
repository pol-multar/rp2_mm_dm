ENTITY decoder IS
PORT (
		code_op : IN Std_logic_vector(3 downto 0); -- depuis instruction
		flagEQ : IN Std_logic; -- issu du comparateur
		flagGT : IN Std_logic; -- issu du comparateur
		data_in_valid : in Std_logic; -- Indique donnée sur port entrée est valide
		data_in_ack : out Std_logic; -- Indique que donnée sur port entrée a été lue
		incr_decr : out Std_logic ; -- incrémentation ou décrementation du PC
		sel_mux_data : out Std_logic; -- selection valeur immediate ou port entrée
		code_alu : OUT Std_logic_vector(2 downto 0); -- code pour ALU
		r_w : OUT Std_logic; -- ecriture data memory
		en_reg_file : OUT Std_logic; -- autorisation ecriture register file
		sel_alu_mux : OUT Std_logic_vector(1 downto 0); -- selection donnee sortie etage EX 
		sel_mem_mux :OUT Std_logic; -- selection donnee en sortie etage WB 
		sel_mux_rs1 : OUT Std_logic; -- selection numero rs1 a l’entree du reg_file
		sel_adr_mux : OUT Std_logic; -- selection adresse prochaine instr. 
		data_out_valid : OUT Std_logic -- la donnée sur le port de sortie est valide
);
END decoder;