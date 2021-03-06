-- Implements the Dealer FSM
-- entity name: g03_dealer_FSM
--
-- Version 1.0
-- Author: Alexander Harris, Filip Bernevec
-- Date: 27/11/2017

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity g03_dealer_FSM is
	port(
		turn         : in std_logic;
		legal_play   : in std_logic;
		reset        : in std_logic;
		clk          : in std_logic;
		request_deal : out std_logic;
		done         : out std_logic);
end g03_dealer_FSM;

architecture behaviour of g03_dealer_FSM is

begin
	
	process(clk, turn, legal_play)
	
	variable state : std_logic_vector(1 downto 0); -- A(00), B(01), C(10)
	
	begin
		if reset = '1' then
			state := "00";
		elsif rising_edge(clk) then
			case state is
				when "00" =>	-- wait state, wait for turn to go high to start
					done <= '0';
					request_deal <= '0';
					if turn = '1' then
						state := "01";
					end if;
				when "01" =>	-- request new cards until legal_play is 0, then stop requesting and go to end state. Go back to wait state before requesting another card
					done <= '0';
					request_deal <= '1';
					if legal_play = '0' then
						request_deal <= '0';
						state := "10";
					else
						state := "00";
					end if;
				when "10" =>	-- end state, set done signal to 1 and wait for turn to go low to go back to wait state
					done <= '1';
					request_deal <= '0';
					if turn = '0' then
						state := "00";
					end if;
				when others =>
			end case;
		end if;
	end process;
	
end behaviour;