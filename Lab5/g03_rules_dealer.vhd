-- This circuit implements the dealer rules module for the card game.
-- Keeps track of number of aces to provide most advantageous output.
-- entity name: g03_rules_dealer
--
-- Version 1.0
-- Author: Alexander Harris, Filip Bernevec
-- Date: 24/11/2017

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity g03_rules_dealer is
	port (
		clk          : in std_logic;
		reset        : in std_logic;
		enable       : in std_logic;
		next_card 	 : in std_logic_vector(5 downto 0);
		hand_out     : out std_logic_vector(5 downto 0);
		legal_play 	 : out std_logic);
end g03_rules_dealer;

architecture rules of g03_rules_dealer is
	
begin

process (clk, reset, enable, next_card)

variable hand      : unsigned(5 downto 0) := "000000";
variable play_card : unsigned(5 downto 0);
variable num_aces  : unsigned(2 downto 0) := "000";

begin
	
	if reset = '1' then
		hand := "000000";
		num_aces := "000";
	elsif rising_edge(clk) and enable = '1' then
		play_card := unsigned(next_card) mod 13 + 1;
	
		if play_card > 10 then
			play_card := to_unsigned(10, 6);
		end if;
	
		if play_card = 1 then
			play_card := to_unsigned(11, 6);
			num_aces := num_aces + 1;
		end if;
		
		hand := hand + play_card;
		
		if num_aces > 0 and hand > 21 then
			if num_aces >= 1 then
				hand  := hand - 10;
				num_aces := num_aces - 1;
			end if;
			if hand > 21 and num_aces > 0 then
				hand := hand - 10;
				num_aces := num_aces - 1;
			end if;
			if hand > 21 and num_aces > 0 then
				hand  := hand - 10;
				num_aces := num_aces - 1;
			end if;
			if hand > 21 and num_aces > 0 then
				hand := hand - 10;
				num_aces := num_aces - 1;
			end if;
		end if;
	
		if hand < 16 then legal_play <= '1';	-- if the dealers hand is smaller than 16, get another card
		else legal_play <= '0';
		end if;
		
		hand_out <= std_logic_vector(hand);
	end if;
	
end process;

end rules;