library verilog;
use verilog.vl_types.all;
entity g03_rules_test is
    port(
        legal_play      : out    vl_logic;
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        enable          : in     vl_logic;
        next_card       : in     vl_logic_vector(5 downto 0);
        hand_out        : out    vl_logic_vector(5 downto 0)
    );
end g03_rules_test;
