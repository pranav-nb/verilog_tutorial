//Structural-Modelling
module basic_gate_structural(a,b,c,d,e,f,g,h,i);
    input a,b;
    output c,d,e,f,g,h,i;
    not g0(c,a);
    and g1(d,a,b);
    or g2(e,a,b);
    nand g3(f,a,b);
    nor g4(g,a,b);
    xor g5(h,a,b);
    xnor g6(i,a,b);
endmodule

//Dataflow-Modelling
module basic_gate_dataflow(a,b,c,d,e,f,g,h,i);
    input a,b;
    output c,d,e,f,g,h,i;
    assign c = ~a;
    assign d = a&b;
    assign e = a|b;
    assign f = a^b;
    assign g = ~(a&b);
    assign h = ~(a|b);
    assign i = ~(a^b);
endmodule

//Behavioural-Modelling
module basic_gate_behavioural(a,b,c,d,e,f,g,h,i);
    input a,b;
    output reg c,d,e,f,g,h,i;
    always @(a,b)
        begin
          c = ~a;
          d = a&b;
          e = a|b;
          f = a^b;
          g = ~(a&b);
          h = ~(a|b);
          i = ~(a^b);
        end
endmodule

