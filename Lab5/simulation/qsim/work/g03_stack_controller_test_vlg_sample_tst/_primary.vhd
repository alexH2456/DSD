library verilog;
use verilog.vl_types.all;
entity g03_stack_controller_test_vlg_sample_tst is
    port(
        clk             : in     vl_logic;
        init            : in     vl_logic;
        pop_dealer      : in     vl_logic;
        pop_player      : in     vl_logic;
        request_dealer  : in     vl_logic;
        request_player  : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end g03_stack_controller_test_vlg_sample_tst;
