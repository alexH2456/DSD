library verilog;
use verilog.vl_types.all;
entity g03_lab1_vlg_check_tst is
    port(
        floor           : in     vl_logic_vector(2 downto 0);
        S               : in     vl_logic_vector(3 downto 0);
        sampler_rx      : in     vl_logic
    );
end g03_lab1_vlg_check_tst;
