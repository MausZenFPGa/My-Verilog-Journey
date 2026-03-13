// Порівняння assign та always
module top_module(
    input a, 
    input b,
    output wire out_assign,
    output reg out_alwaysblock
);

    // Звичайне безперервне присвоювання
    assign out_assign = a & b;

    // Процедурне присвоювання всередині always-блоку
    always @(*) begin
        out_alwaysblock = a & b;
    end

endmodule
