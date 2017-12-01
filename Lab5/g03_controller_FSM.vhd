-- Implements the System Controller FSM
-- entity name: g03_controller_FSM
--
-- Version 1.0
-- Author: Alexander Harris, Filip Bernevec
-- Date: 27/11/2017

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity g03_controller_FSM is
	port(
		p_done       : in std_logic;
		d_done       : in std_logic;
		p_hand       : in std_logic_vector(5 downto 0);
		d_hand       : in std_logic_vector(5 downto 0);
		reset        : in std_logic;
		clk          : in std_logic;
		game_over    : out std_logic;
		init         : out std_logic;
		pop_dealer   : out std_logic;
		pop_player   : out std_logic;
		turn         : out std_logic;
		d_wins       : out std_logic_vector(1 downto 0);
		p_wins       : out std_logic_vector(1 downto 0));
end g03_controller_FSM;

architecture behaviour of g03_controller_FSM is

begin
	
	process(clk, p_done, d_done, p_hand, d_hand)
	
	variable state       : std_logic_vector(3 downto 0);
	variable player_wins : unsigned(1 downto 0);
	variable dealer_wins : unsigned(1 downto 0);
	
	begin
		if reset = '1' then
			player_wins := "00";
			dealer_wins := "00";
			game_over <= '0';
			state := "0001";
		elsif rising_edge(clk) then
			case state is
				when "0000" =>
					game_over <= '1';
					if reset = '1' then
						state := "0001";
					end if;
				when "0001" =>
					init <= '1';
					state := "0010";
				when "0010" =>
					init <= '0';
					pop_dealer <= '1';
					state := "0011";
				when "0011" =>
					pop_dealer <= '0';
					pop_player <= '1';
					state := "0100";
				when "0100" =>
					pop_player <= '1';
					state := "0101";
				when "0101" =>
					pop_player <= '0';
					turn <= '0';
					if p_done = '1' then
						state := "0110";
					end if;
				when "0110" =>
					turn <= '1';
					if d_done = '1' then
						state := "0111";
					end if;
				when "0111" =>
					
					if unsigned(p_hand) > 21 then
						dealer_wins := dealer_wins + 1;
					elsif unsigned(d_hand) > 21 then
						player_wins := player_wins + 1;
					elsif unsigned(p_hand) = 21 or unsigned(p_hand) > unsigned(d_hand) then
						player_wins := player_wins + 1;
					else
						dealer_wins := dealer_wins + 1;
					end if;
					
					state := "1000";
					
				when "1000" =>
					turn <= '0';
					if dealer_wins = 3 or player_wins = 3 then
						state := "0000";
					else
						state := "0001";
					end if;
				when others =>
			end case;
		end if;
		d_wins <= std_logic_vector(dealer_wins);
		p_wins <= std_logic_vector(player_wins);
	end process;

end behaviour;
			
			
			
			
			
			
			
			
			
			
			
			