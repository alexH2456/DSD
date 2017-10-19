-- Implements the 7-segment LED decoder/driver. 
--
-- entity name: g03_7_segment_decoder
--
-- Version 1.0
-- Author: Alexander Harris, Filip Bernevec
-- Date: 18/10/2017

library ieee;
use ieee.std_logic_1164.all;

entity g03_7_segment_decoder is
	port(
		code : in std_logic_vector(3 downto 0);
		mode : in std_logic;
		segments_out : out std_logic_vector(6 downto 0)
	);
end g03_7_segment_decoder;

architecture behaviour of g03_7_segment_decoder is

signal xcode : std_logic_vector(4 downto 0);
	
begin
	
	xcode(4 downto 1) <= code;
	xcode(0) <= mode;
	
	with xcode select
	
	segments_out <=
		"1000000" when "00000",
		"1111001" when "00001",
		"0100100" when "00010",
		"0110000" when "00011",
		"0011001" when "00100",
		"" when "00101",
		"" when "00110",
		"" when "00111",
		"" when "01000",
		"" when "01001",
		"" when "01010",
		"" when "01011",
		"" when "01100",
		"" when "01101",
		"" when "01110",
		"" when "01111",
		"" when "10000",
		"" when "10001",
		"" when "10010",
		"" when "10011",
		"" when "10100",
		"" when "10101",
		"" when "10110",
		"" when "10111",
		"" when "11000",
		"" when "11001",
		"" when "11010",
		"" when "11011",
		"" when "11100",
		"" when "11101",
		"" when "11110",
		"" when "11111";
		
end behaviour;