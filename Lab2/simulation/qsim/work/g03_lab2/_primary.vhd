library verilog;
use verilog.vl_types.all;
entity g03_lab2 is
    port(
        rand            : out    vl_logic_vector(29 downto 0);
        seed            : in     vl_logic_vector(15 downto 0)
    );
end g03_lab2;
