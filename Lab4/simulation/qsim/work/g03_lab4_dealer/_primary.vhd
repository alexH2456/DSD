library verilog;
use verilog.vl_types.all;
entity g03_lab4_dealer is
    port(
        altera_reserved_tms: in     vl_logic;
        altera_reserved_tck: in     vl_logic;
        altera_reserved_tdi: in     vl_logic;
        altera_reserved_tdo: out    vl_logic;
        stack_enable    : out    vl_logic;
        deal_request    : in     vl_logic;
        rand_lt_num     : in     vl_logic;
        reset           : in     vl_logic;
        clk             : in     vl_logic;
        rand_enable     : out    vl_logic
    );
end g03_lab4_dealer;
