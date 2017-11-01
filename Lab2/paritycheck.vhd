library ieee;
use ieee.std_logic_1164.all;

entity Parity_check_4bit is

port(
	Parity_in : in std_logic;
	Data_in : in std_logic_vector(3 downto 0);
	Par_out : out std_logic
);

end;

architecture example of Parity_check_4bit is

signal int3, int2, int1, int0 : std_logic;
begin

parity : process(Parity_in)
begin

int3 <= Data_in(3);
int2 <= Data_in(2);
int1 <= Data_in(1);
int0 <= Data_in(0);

if Parity_in = '1' then
	Par_out <= int3 XOR int2 XOR int1 XOR int0;

else
	Par_out <= int3 XNOR int2 XNOR int1 XNOR int0;

end if;

end process;

end example;
