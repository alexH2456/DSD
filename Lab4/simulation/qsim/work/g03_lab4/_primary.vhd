library verilog;
use verilog.vl_types.all;
entity g03_lab4 is
    port(
        legal           : out    vl_logic;
        top             : in     vl_logic_vector(5 downto 0);
        play            : in     vl_logic_vector(5 downto 0)
    );
end g03_lab4;
