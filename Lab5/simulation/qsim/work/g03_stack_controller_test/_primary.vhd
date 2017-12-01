library verilog;
use verilog.vl_types.all;
entity g03_stack_controller_test is
    port(
        stack_enable    : out    vl_logic;
        request_dealer  : in     vl_logic;
        request_player  : in     vl_logic;
        pop_dealer      : in     vl_logic;
        pop_player      : in     vl_logic;
        init            : in     vl_logic;
        clk             : in     vl_logic;
        mode            : out    vl_logic_vector(1 downto 0)
    );
end g03_stack_controller_test;
