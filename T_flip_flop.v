module T_flipflop(T,clk,reset,q);
    input T,clk,reset;
    output q;
    wire w;
    assign w=T^q;
    D_Flipflop dff(w,clk,reset,q);
endmodule

module D_Flipflop(Din,clk,reset,q);
    input Din,clk,reset;
    output reg s;
    always@(posedge clk)
        begin
            if(reset)
                s=1'b0;
            else
                s=Din;
        end
endmodule