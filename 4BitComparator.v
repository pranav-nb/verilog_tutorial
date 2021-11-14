//Four Bit Comparator Using Dataflow modelling and conditional operator

module four_bit_comparator( input[3:0]A, input[3:0]B, output E, G, L);
    assign G = ( A > B ) ? 1’b1 : 1’b0;
    assign L = ( A < B ) ? 1’b1 : 1’b0;
    assign E = ( A == B ) ? 1’b1 : 1’b0;
endmodule

//Four bit comparator using behavioral modelling

module four_bit_comparator(a,b,lt,gt,eq);
    input [3:0]a, b;
    output reg lt,gt,eq;
    always @(*) 
        begin
            if(a>b)
                begin
                  gt = 1'b1;
                  lt = 1'b0;
                  eq = 1'b0;
                end
            else if(a<b)
                begin
                  gt = 1'b0;
                  lt = 1'b1;
                  eq = 1'b0'
                end
            else
                begin
                  eq = 1'b1;
                  gt = 1'b0;
                  lt = 1'b0;
                end
        end
endmodule

