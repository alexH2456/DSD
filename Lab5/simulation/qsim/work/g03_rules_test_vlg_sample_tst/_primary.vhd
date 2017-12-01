library verilog;
use verilog.vl_types.all;
entity g03_rules_test_vlg_sample_tst is
    port(
        clk             : in     vl_logic;
        enable          : in     vl_logic;
        next_card       : in     vl_logic_vector(5 downto 0);
        reset           : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end g03_rules_test_vlg_sample_tst;
