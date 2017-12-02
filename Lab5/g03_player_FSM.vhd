-- Implements the Player FSM
-- entity name: g03_player_FSM
--
-- Version 1.0
-- Author: Alexander Harris, Filip Bernevec
-- Date: 27/11/2017

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity g03_player_FSM is
	port(
		turn         : in std_logic;
		legal_play   : in std_logic;
		hit          : in std_logic;
		stay         : in std_logic;
		reset        : in std_logic;
		clk          : in std_logic;
		request_deal : out std_logic;
		done         : out std_logic);
end g03_player_FSM;

architecture behaviour of g03_player_FSM is

begin

	process(clk, turn, legal_play, hit, stay)
	
	variable state : std_logic_vector(1 downto 0); -- A(00), B(01), C(10), D(11)
	
	begin
		if reset = '1' then 	--async reset signal
			state := "00";
		elsif rising_edge(clk) then
			case state is
				when "00" => 	-- wait state, wait for turn to go low to start
					done <= '0';
					request_deal <= '0';
					if turn = '0' then
						state := "01";
					end if;
				when "01" =>	-- wait for player to hit or stay
					done <= '0';
					request_deal <= '0';
					if hit = '1' then
						state := "10";
					elsif stay = '1' then
						state := "11";
					end if;
				when "10" =>	-- if hit, go back to previous state if play was legal (no bust), else go to end state
					done <= '0';
					request_deal <= '1';
					if legal_play = '1' then
						state := "01";
					else 
						state := "11";
					end if;
				when "11" =>	-- end state, set done to 1, wait for turn to go high to go back to wait state
					done <= '1';
					request_deal <= '0';
					if turn = '1' then
						state := "00";
					end if;
			end case;
		end if;
	end process;
	
end behaviour;
