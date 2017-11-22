library verilog;
use verilog.vl_types.all;
entity g03_lab4 is
    port(
        stack_enable    : out    vl_logic;
        request_deal    : in     vl_logic;
        rand_lt_num     : in     vl_logic;
        reset           : in     vl_logic;
        clk             : in     vl_logic;
        rand_enable     : out    vl_logic
    );
end g03_lab4;
