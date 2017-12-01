library verilog;
use verilog.vl_types.all;
entity g03_mod10_test_vlg_check_tst is
    port(
        floor10         : in     vl_logic_vector(5 downto 0);
        mod10           : in     vl_logic_vector(5 downto 0);
        sampler_rx      : in     vl_logic
    );
end g03_mod10_test_vlg_check_tst;
