library verilog;
use verilog.vl_types.all;
entity g03_rules_test_vlg_check_tst is
    port(
        hand_out        : in     vl_logic_vector(5 downto 0);
        legal_play      : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end g03_rules_test_vlg_check_tst;
