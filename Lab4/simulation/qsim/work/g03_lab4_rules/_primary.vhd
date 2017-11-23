library verilog;
use verilog.vl_types.all;
entity g03_lab4_rules is
    port(
        altera_reserved_tms: in     vl_logic;
        altera_reserved_tck: in     vl_logic;
        altera_reserved_tdi: in     vl_logic;
        altera_reserved_tdo: out    vl_logic;
        legal_play      : out    vl_logic;
        current_hand    : in     vl_logic_vector(5 downto 0);
        next_card       : in     vl_logic_vector(5 downto 0)
    );
end g03_lab4_rules;
