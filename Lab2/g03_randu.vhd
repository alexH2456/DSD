-- this circuit implements the IBM RANDU version of a linear congruential generator
--
-- entity name: g03_RANDU
--
-- Version 1.0
-- Author: Alexander Harris, Filip Bernevec
-- Date: 18/10/2017

library ieee; -- allows use of the std_logic_vector type
use ieee.std_logic_1164.all;
library lpm;
use lpm.lpm_components.all;
	
	
entity g03_RANDU is
port ( seed 	: in std_logic_vector(15 downto 0);
		 rand 	: out std_logic_vector(29 downto 0)
		);
end g03_RANDU;


architecture random of g03_RANDU is

component lpmaddsub
port( cin		: IN STD_LOGIC;
		dataa		: IN STD_LOGIC_VECTOR (31 DOWNTO 0);
		datab		: IN STD_LOGIC_VECTOR (31 DOWNTO 0);
		cout		: OUT STD_LOGIC;
		result	: OUT STD_LOGIC_VECTOR (31 DOWNTO 0)
	  );
end component;

signal cin2 					: std_logic;
signal cout1, cout2 			: std_logic;
signal adda1, addb1, addb2 : std_logic_vector (31 downto 0);
signal result1, result2 	: std_logic_vector (31 downto 0);

begin

u1 : lpmaddsub
	port map (
		cin => '0',
		dataa => adda1,
		datab => addb1,
		cout => cout1,
		result => result1		
	);
	adda1(31 downto 16) <= seed; -- seed << 16
	addb1(16 downto 1) <= seed; -- seed << 1

u2 : lpmaddsub
	port map (
		cin => cout1,
		dataa => result1,
		datab => addb2,
		cout => cout2,
		result => result2
	);
	addb2(15 downto 0) <= seed;
	rand <= result2(29 downto 0);

end random;