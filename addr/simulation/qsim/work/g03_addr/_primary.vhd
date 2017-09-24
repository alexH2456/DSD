library verilog;
use verilog.vl_types.all;
entity g03_addr is
    port(
        C0              : out    vl_logic;
        Cin             : in     vl_logic;
        A               : in     vl_logic_vector(5 downto 0);
        B               : in     vl_logic_vector(5 downto 0);
        S               : out    vl_logic_vector(5 downto 0)
    );
end g03_addr;
