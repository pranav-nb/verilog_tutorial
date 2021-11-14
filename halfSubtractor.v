//Structural-Modelling
module halfSubtractor(a,b,dif,br);
    input a,b;
    output dif,br;
    wire n;
    xor g1(dif,a,b);
    not g2(n,a);
    and g3(br,n,b);
endmodule

//Dataflow-Modelling
module halfSubtractor(a,b,dif,br);
    input a,b;
    output dif,br;
    assign dif = a^b;
    assign br = (~a)&b;
endmodule

//Behavioural-Modelling
module halfSubtractor(a,b,dif,br);
    input a,b;
    output reg dif,br;
    always @(a,b)
        begin
          dif = a^b;
          br = (~a)&b;
        end
endmodule