library verilog;
use verilog.vl_types.all;
entity g03_addr_vlg_check_tst is
    port(
        C0              : in     vl_logic;
        S               : in     vl_logic_vector(5 downto 0);
        sampler_rx      : in     vl_logic
    );
end g03_addr_vlg_check_tst;
