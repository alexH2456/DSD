library verilog;
use verilog.vl_types.all;
entity g03_lab5 is
    port(
        request_deal    : out    vl_logic;
        turn            : in     vl_logic;
        legal_play      : in     vl_logic;
        reset           : in     vl_logic;
        clk             : in     vl_logic;
        done            : out    vl_logic;
        state           : out    vl_logic_vector(1 downto 0)
    );
end g03_lab5;
