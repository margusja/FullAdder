library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity full_adder is
    Port ( a1 : in  STD_LOGIC;
           b1 : in  STD_LOGIC;
           cin1 : in  STD_LOGIC;
           sum : out  STD_LOGIC;
           co1 : out  STD_LOGIC);
end full_adder;

architecture Behavioral of full_adder is

signal sum1, cout1, cout2 : std_logic;

Component half_adder
	port (a, b: in std_logic;
			sum, cout: out std_logic);
end component;			

begin
	H1:half_adder port map (a1, cin1, sum1, cout1);
	H2:half_adder port map (sum1, b1, sum, cout2);
	
	co1 <= cout1 OR cout2;

end Behavioral;

