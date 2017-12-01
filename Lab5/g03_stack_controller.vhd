-- Implements the Stack controller
-- entity name: g03_stack_controller
--
-- Version 1.0
-- Author: Alexander Harris, Filip Bernevec
-- Date: 27/11/2017

library ieee;
use ieee.std_logic_1164.all;

entity g03_stack_controller is
	port(
		request_dealer : in std_logic;
		request_player : in std_logic;
		pop_dealer     : in std_logic;
		pop_player     : in std_logic;
		init           : in std_logic;
		clk            : in std_logic;
		stack_enable   : out std_logic;
		mode           : out std_logic_vector(1 downto 0));
end g03_stack_controller;

architecture behaviour of g03_stack_controller is

begin

	process(clk, request_player, request_dealer, pop_player, pop_dealer, init)
	
	begin
	if rising_edge(clk) then
		if request_dealer = '1' or request_player = '1' or pop_dealer = '1' or pop_player = '1' then
			mode <= "10";
			stack_enable <= '1';
		elsif init = '1' then
			mode <= "01";
			stack_enable <= '1';
		else
			mode <= "00";
			stack_enable <= '0';
		end if;
	end if;
	end process;

end behaviour;
			