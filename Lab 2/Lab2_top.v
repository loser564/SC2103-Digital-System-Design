module Lab2_top(input clk,
                input rst,
                input write_en,
                input save_data,
                input show_reg,
                input[7:0] d_in,
                output reg[7:0] d_out,
);
reg[7:0] reg_d;
reg[7:0] mem_d;

always @ (posedge clk)
begin
if (rst) reg_d <= 0;
else if(save_data) reg_d <= d_in;


always @*
begin
if (show_reg) d_out = mem_d;
else d_out = reg_d;
end
endmodule
