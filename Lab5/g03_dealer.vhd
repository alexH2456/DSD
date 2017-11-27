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
		reset 		 : in std_logic;
		clk 		 : in std_logic;
		stack_enable : out std_logic;
		rand_enable  : out std_logic);
end g03_dealer;

architecture dealer of g03_dealer is

begin

dealer : process (request_deal, reset, clk)

variable state : std_logic_vector(1 downto 0); -- A(00), B(01), C(10), D(11)

begin

	if reset = '1' then
		state := "00";
	elsif rising_edge(clk) then
		case state is
			when "00" =>

				stack_enable <= '0';
				rand_enable <= '0';
				if request_deal = '0' then
					state := "01";
				end if;

			when "01" =>

				stack_enable <= '0';
				rand_enable <= '0';
				if request_deal = '1' then
					state := "10";
				end if;

			when "10" =>

				stack_enable <= '0';
				rand_enable <= '1';
				state := "11";

			when "11" =>

				rand_enable <= '0';
				stack_enable <= '1';
				state := "00";

		end case;

	end if;

end process dealer;

end dealer;

