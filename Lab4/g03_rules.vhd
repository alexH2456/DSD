-- This circuit implements the rules module for the card game.
-- entity name: g03_rules
--
-- Version 1.0
-- Author: Alexander Harris, Filip Bernevec
-- Date: 24/11/2017

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity g03_rules is
	port (
		current_hand : in std_logic_vector(5 downto 0);
		next_card 	 : in std_logic_vector(5 downto 0);
		legal_play 	 : out std_logic);
end g03_rules;

architecture rules of g03_rules is
	
begin

rule: process (current_hand, next_card)

variable hand_card : unsigned(5 downto 0);
variable play_card : unsigned(5 downto 0);
variable sum 	   : unsigned(5 downto 0);

begin
	
	hand_card := unsigned(current_hand);
	play_card := unsigned(next_card) mod 13 + 1;
	
	if play_card = 1 and (hand_card + 11) <= 21 then
		play_card := to_unsigned(11, 6);
	end if;
	
	sum := hand_card + play_card;
	
	if sum <= 21 then legal_play <= '1';
	else legal_play <= '0';
	end if;
	
end process rule;

end rules;