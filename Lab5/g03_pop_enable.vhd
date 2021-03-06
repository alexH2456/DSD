-- This circuit implements the pop enable function.
--
-- entity name: g03_pop_enable
--
-- Version 1.0
-- Author: Alexander Harris, Filip Bernevec
-- Date: 18/10/2017

library ieee;
use ieee.std_logic_1164.all;
library lpm;
use lpm.lpm_components.all;

entity g03_pop_enable is
	port( 
		clock : in std_logic;
		N 	  	: in std_logic_vector(5 downto 0);
		P_EN 	: out std_logic_vector(51 downto 0)
	);
end g03_pop_enable;


architecture behaviour of g03_pop_enable is

begin

lookup_table : lpm_rom
	generic map(
		lpm_widthad => 6, 
		lpm_numwords => 64, 
		lpm_outdata => "UNREGISTERED", 
		lpm_address_control => "REGISTERED",
		lpm_file => "POPUP_ROM_DATA_new.mif", 
		lpm_width => 52)
		
	port map(
		inclock => clock, 
		address => N, 
		q => P_EN
	);
	
end behaviour;