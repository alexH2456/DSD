library verilog;
use verilog.vl_types.all;
entity g03_lab2 is
    port(
        P_EN            : out    vl_logic_vector(51 downto 0);
        clock           : in     vl_logic;
        N               : in     vl_logic_vector(5 downto 0)
    );
end g03_lab2;
