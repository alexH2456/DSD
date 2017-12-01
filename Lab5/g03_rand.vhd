-- This circuit implements a simple linear-feedback shift register to generate a random 6-bit number.
-- https://en.wikipedia.org/wiki/Linear-feedback_shift_register
-- Numbers generated are always in the range of 0 and num_cards.
-- entity name: g03_rand
--
-- Version 1.0
-- Author: Alexander Harris, Filip Bernevec
-- Date: 27/11/2017

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity g03_rand is
	port(
		clk       : in std_logic;
		num_cards : in std_logic_vector(5 downto 0);
		rand      : out std_logic_vector(5 downto 0)
	);
end g03_rand;

architecture behaviour of g03_rand is	
begin
	
	process(clk, num_cards)
	
	variable rand_gen : unsigned(15 downto 0);
	variable feedback : std_logic;
	variable num      : unsigned(5 downto 0);
	variable rand_out : unsigned(5 downto 0);

	begin
		feedback := not(rand_gen(15) xor rand_gen(14) xor rand_gen(12) xor rand_gen(3));
		
		if(rising_edge(clk)) then
			rand_gen := (rand_gen(14) & rand_gen(13) & rand_gen(12) & rand_gen(11) & rand_gen(10) 
			& rand_gen(9) & rand_gen(8) & rand_gen(7) & rand_gen(6) & rand_gen(5) & rand_gen(4) 
			& rand_gen(3) & rand_gen(2) & rand_gen(1) & rand_gen(0) & feedback);
			
			num := unsigned(num_cards);
		
			rand_out := rand_gen(5 downto 0);
		
			if (rand_out >= num and num /= 0) then
				rand_out := rand_out mod num;
			elsif(num = 0) then
				rand_out := "000000";
			end if;
		
			rand <= std_logic_vector(rand_out);
		end if;
	end process;
end behaviour;
	
		