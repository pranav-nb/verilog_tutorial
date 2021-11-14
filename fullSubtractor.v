//Structural-Modelling
module fullSubtractor(a,b,bo,dif,br);
    input a,b,bo;
    output dif,br;
    wire f1,f2,f3,f4;
    xor g1(dif,a,b,bo);
    not g2(f1,a);
    and g3(f2,f1,bo);
    and g4(f3,f1,b);
    and g5(f4,b,bo);
    or g6(br,f2,f3,f4);
endmodule

//Dataflow-Modelling
module fullSubtractor(a,b,bo,dif,br);
    input a,b,bo;
    output dif,br;
    assign dif = a^b^bo;
    assign br = ((~a)&bo)|((~a)&b)|(b&bo);
endmodule

//Behavioral-Modelling
module fullSubtractor(a,b,bo,dif,br);
    input a,b,bo;
    output dif,br;
    always @(a,b,bo)
        begin
          dif = a^b^bo;
          br = ((~a)&bo)|((~a)&b)|(b&bo);
        end
endmodule

//Using Two Half subtractors
module fullSubtractor(a,b,bo,dif,br);
    input a,b,bo;
    output dif,br;
    wire d1,br1,br2;
    halfSubtractor hs1(a,b,d1,br1);
    halfSubtractor hs2(d,bo,dif,br2);
    or g1(br,br1,br2);
endmodule

module halfSubtractor(a,b,dif,br);
    input a,b;
    output dif,br;
    assign dif = a^b;
    assign br = (~a)&b;
endmodule