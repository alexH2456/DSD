-- Implements the a method for converting card face values to a floor and remainder output.
-- entity name: g03_mod10
--
-- Version 1.0
-- Author: Alexander Harris, Filip Bernevec
-- Date: 27/11/2017

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity g03_mod10 is 
	port(
		card_value : in std_logic_vector(5 downto 0);
		mod10      : out std_logic_vector(5 downto 0);
		floor10    : out std_logic_vector(5 downto 0));
end g03_mod10;

architecture behaviour of g03_mod10 is
begin
	mod10 <= std_logic_vector(unsigned(card_value) mod 10);
	floor10 <= std_logic_vector(unsigned(card_value) / 10);
end behaviour;