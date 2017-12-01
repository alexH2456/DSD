library verilog;
use verilog.vl_types.all;
entity g03_stack_controller_test_vlg_check_tst is
    port(
        mode            : in     vl_logic_vector(1 downto 0);
        stack_enable    : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end g03_stack_controller_test_vlg_check_tst;
