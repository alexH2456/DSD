-- This circuit implements the dealer module for the card game.
-- entity name: g03_dealer
--
-- Version 1.0
-- Author: Alexander Harris, Filip Bernevec
-- Date: 24/11/2017

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity g03_dealer is
	port (
		request_deal : in std_logic;
		rand_lt_num  : in std_logic;
		reset 		 : in std_logic;
		clk 		 : in std_logic;
		stack_enable : out std_logic;
		rand_enable  : out std_logic);
end g03_dealer;

architecture dealer of g03_dealer is

begin

dealer : process (request_deal, rand_lt_num, reset, clk)

variable deal_input : std_logic_vector(1 downto 0); -- request_deal, rand_lt_num
variable state : std_logic_vector(1 downto 0); -- A(00), B(01), C(10), D(11)

begin
	
	deal_input := rand_lt_num & request_deal;

	if reset = '1' then
		state := "00";
	elsif rising_edge(clk) then
		case state is
			when "00" =>

				stack_enable <= '0';
				rand_enable <= '0';
				if deal_input = "00" or deal_input = "10" then
					state := "01";
				end if;

			when "01" =>

				stack_enable <= '0';
				rand_enable <= '0';
				if deal_input = "01" or deal_input = "11" then
					state := "10";
				end if;

			when "10" =>

				stack_enable <= '0';
				rand_enable <= '1';
				if deal_input = "10" or deal_input = "11" then
					state := "11";
				end if;

			when "11" =>

				rand_enable <= '0';
				stack_enable <= '1';
				state := "00";

		end case;

	end if;

end process dealer;

end dealer;

