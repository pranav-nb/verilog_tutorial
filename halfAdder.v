//Structural-Modelling
module halfAdder(a,b,s,c);
    input a,b;
    output s,c;
    xor g1(s,a,b);
    and g2(c,a,b);
endmodule

//Dataflow-Modelling
module halfAdder(a,b,s,c);
    input a,b;
    output s,c;
    assign s = a^b;
    assign c = a&b;
endmodule

//Behavioural-Modelling
module halfAdder(a,b,s,c);
    input a,b;
    output reg s,c;
    always @(a,b)
        begin
          s = a^b;
          c = a&b;
        end
endmodule
