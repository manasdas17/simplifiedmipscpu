library ieee;
use ieee.std_logic_1164.all;

use work.mux16to1;

entity mux16to1_tb is
end mux16to1_tb;

architecture behavior of mux16to1_tb is
	component mux16to1
		port (S: in std_logic_vector(3 downto 0);
		      R: in std_logic_vector(15 downto 0);
		      O: out std_logic);
	end component;

	signal S: std_logic_vector(3 downto 0);
	signal R: std_logic_vector(15 downto 0);
	signal O: std_logic;
begin
	mux16to1_0: mux16to1 port map (S, R, O);

	process
		type pattern_type is record
			S0, S1, S2, S3, R0, R1, R2, R3, R4, R5, R6, R7, R8, R9, R10, R11, R12, R13, R14, R15: std_logic;
			O: std_logic;
		end record;

	type pattern_array is array (natural range <>) of pattern_type;
	constant patterns : pattern_array :=
		-- S0  S1  S2  S3   R0  R1  R2  R3  R4  R5  R6  R7  R8  R9  R10 R11 R12 R13 R14 R15  O
		(('0','0','0','0', '0','1','1','1','1','1','1','1','1','1','1','1','1','1','1','1', '0'),
		 ('1','0','0','0', '1','0','1','1','1','1','1','1','1','1','1','1','1','1','1','1', '0'),
		 ('0','1','0','0', '1','1','0','1','1','1','1','1','1','1','1','1','1','1','1','1', '0'),
		 ('1','1','0','0', '1','1','1','0','1','1','1','1','1','1','1','1','1','1','1','1', '0'),
		 ('0','0','1','0', '1','1','1','1','0','1','1','1','1','1','1','1','1','1','1','1', '0'),
		 ('1','0','1','0', '1','1','1','1','1','0','1','1','1','1','1','1','1','1','1','1', '0'),
		 ('0','1','1','0', '1','1','1','1','1','1','0','1','1','1','1','1','1','1','1','1', '0'),
		 ('1','1','1','0', '1','1','1','1','1','1','1','0','1','1','1','1','1','1','1','1', '0'),
		 ('0','0','0','1', '1','1','1','1','1','1','1','1','0','1','1','1','1','1','1','1', '0'),
		 ('1','0','0','1', '1','1','1','1','1','1','1','1','1','0','1','1','1','1','1','1', '0'),
		 ('0','1','0','1', '1','1','1','1','1','1','1','1','1','1','0','1','1','1','1','1', '0'),
		 ('1','1','0','1', '1','1','1','1','1','1','1','1','1','1','1','0','1','1','1','1', '0'),
		 ('0','0','1','1', '1','1','1','1','1','1','1','1','1','1','1','1','0','1','1','1', '0'),
		 ('1','0','1','1', '1','1','1','1','1','1','1','1','1','1','1','1','1','0','1','1', '0'),
		 ('0','1','1','1', '1','1','1','1','1','1','1','1','1','1','1','1','1','1','0','1', '0'),
		 ('1','1','1','1', '1','1','1','1','1','1','1','1','1','1','1','1','1','1','1','0', '0'),

		 ('0','0','0','0', '1','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0', '1'),
		 ('1','0','0','0', '0','1','0','0','0','0','0','0','0','0','0','0','0','0','0','0', '1'),
		 ('0','1','0','0', '0','0','1','0','0','0','0','0','0','0','0','0','0','0','0','0', '1'),
		 ('1','1','0','0', '0','0','0','1','0','0','0','0','0','0','0','0','0','0','0','0', '1'),
		 ('0','0','1','0', '0','0','0','0','1','0','0','0','0','0','0','0','0','0','0','0', '1'),
		 ('1','0','1','0', '0','0','0','0','0','1','0','0','0','0','0','0','0','0','0','0', '1'),
		 ('0','1','1','0', '0','0','0','0','0','0','1','0','0','0','0','0','0','0','0','0', '1'),
		 ('1','1','1','0', '0','0','0','0','0','0','0','1','0','0','0','0','0','0','0','0', '1'),
		 ('0','0','0','1', '0','0','0','0','0','0','0','0','1','0','0','0','0','0','0','0', '1'),
		 ('1','0','0','1', '0','0','0','0','0','0','0','0','0','1','0','0','0','0','0','0', '1'),
		 ('0','1','0','1', '0','0','0','0','0','0','0','0','0','0','1','0','0','0','0','0', '1'),
		 ('1','1','0','1', '0','0','0','0','0','0','0','0','0','0','0','1','0','0','0','0', '1'),
		 ('0','0','1','1', '0','0','0','0','0','0','0','0','0','0','0','0','1','0','0','0', '1'),
		 ('1','0','1','1', '0','0','0','0','0','0','0','0','0','0','0','0','0','1','0','0', '1'),
		 ('0','1','1','1', '0','0','0','0','0','0','0','0','0','0','0','0','0','0','1','0', '1'),
		 ('1','1','1','1', '0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','1', '1'));

	begin
		assert false report "Testing mux16to1" severity note;
		for c in patterns'range loop
			S(0) <= patterns(c).S0;
			S(1) <= patterns(c).S1;
			S(2) <= patterns(c).S2;
			S(3) <= patterns(c).S3;
			R(0) <= patterns(c).R0;
			R(1) <= patterns(c).R1;
			R(2) <= patterns(c).R2;
			R(3) <= patterns(c).R3;
			R(4) <= patterns(c).R4;
			R(5) <= patterns(c).R5;
			R(6) <= patterns(c).R6;
			R(7) <= patterns(c).R7;
			R(8) <= patterns(c).R8;
			R(9) <= patterns(c).R9;
			R(10) <= patterns(c).R10;
			R(11) <= patterns(c).R11;
			R(12) <= patterns(c).R12;
			R(13) <= patterns(c).R13;
			R(14) <= patterns(c).R14;
			R(15) <= patterns(c).R15;
			wait for 1 ns;
			assert O = patterns(c).O
				report "test failed" severity error;
		end loop;

		wait;
	end process;
end behavior;
