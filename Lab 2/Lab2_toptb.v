// testbench for Lab2_top

module lab2_top_tb;
    reg clk,rst,write_en,save_data,show_reg;
    reg [7:0] d_in;
    wire [7:0] d_out;

    lab2_top DUT(
        .clk(clk),
        .rst(rst),
        .write_en(write_en),
        .save_data(save_data),
        .show_reg(show_reg),
        .d_out(d_out),
        .d_in(d_in),
    );
    always #5 clk = ~clk;
    initial begin
        rst = 1;save_data = 0;show_reg = 0;write_en = 0;d_in = 0;
        #10 rst = 0;
        #10 d_in = 8'h15;
        #10 save_data = 1;
        #10 save_data = 0; d_in = 8'h01;
        #10 write_en = 1;
        #10 write_en = 0;
        #10 d_in = 8'hA3;
        #10 save_data = 1;
        #10 save_data = 0; d_in = 8'h02;
        #10 write_en = 1;
        #10 write_en = 0;
        #10 d_in = 8'h87;
        #10 save_data = 1;
        #10 save_data = 0;
        #10 d_in = 8'h01;
        #10 show_reg = 1;
        #10 d_in = 8'h01; show_reg = 0;
        #10 $finish();
    end
endmodule
