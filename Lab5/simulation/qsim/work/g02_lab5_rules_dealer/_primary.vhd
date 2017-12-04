library verilog;
use verilog.vl_types.all;
entity g02_lab5_rules_dealer is
    port(
        altera_reserved_tms: in     vl_logic;
        altera_reserved_tck: in     vl_logic;
        altera_reserved_tdi: in     vl_logic;
        altera_reserved_tdo: out    vl_logic;
        legal_play      : out    vl_logic;
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        enable          : in     vl_logic;
        next_card       : in     vl_logic_vector(5 downto 0);
        hand_out        : out    vl_logic_vector(5 downto 0)
    );
end g02_lab5_rules_dealer;
