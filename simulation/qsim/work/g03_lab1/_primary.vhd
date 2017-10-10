library verilog;
use verilog.vl_types.all;
entity g03_lab1 is
    port(
        Amod13          : out    vl_logic_vector(3 downto 0);
        A               : in     vl_logic_vector(5 downto 0);
        floor           : out    vl_logic_vector(2 downto 0)
    );
end g03_lab1;
