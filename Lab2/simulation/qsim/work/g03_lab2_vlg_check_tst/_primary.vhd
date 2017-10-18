library verilog;
use verilog.vl_types.all;
entity g03_lab2_vlg_check_tst is
    port(
        rand            : in     vl_logic_vector(29 downto 0);
        sampler_rx      : in     vl_logic
    );
end g03_lab2_vlg_check_tst;
