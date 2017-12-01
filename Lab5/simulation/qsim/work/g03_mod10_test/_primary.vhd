library verilog;
use verilog.vl_types.all;
entity g03_mod10_test is
    port(
        floor10         : out    vl_logic_vector(5 downto 0);
        card_value      : in     vl_logic_vector(5 downto 0);
        mod10           : out    vl_logic_vector(5 downto 0)
    );
end g03_mod10_test;
