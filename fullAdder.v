//Structural-Modelling
module fullAdder(a,b,cin,s,cout);
    input a,b,cin;
    output s,cout;
    wire d,e,f,g,h;
    xor g1(s,a,b,cin);
    and g2(e,a,b);
    and g3(f,b,c);
    and g4(g,a,c);
    or g5(h,e,f,g);
endmodule

//Dataflow-Modelling
module fullAdder(a,b,cin,s,cout);
    input a,b,cin;
    output s,cout;
    assign s = a^b^cin;
    assign cout = (a&b)|(a&cin)|(b&cin);
endmodule

//Behavioural-Modelling
module fullAdder(a,b,cin,s,cout);
    input a,b,cin;
    output reg s,cout;
    always @(a,b,cin)
        begin
          s = a^b^cin;
          cout = (a&b)|(a&cin)|(b&cin);
        end
endmodule

//Using two half adders
module FullAdder(a,b,cin,s,cout);
    input a,b,cin;
    output s,cout;
    wire s1,c1,c2
    halfAdder ha1(a,b,s1,c1); //instantiation
    halfAdder ha2(s1,cin,s,c2);
    or g1(c,c1,c2);
endmodule

module halfAdder(a,b,s,c);
    input a,b;
    output s,c;
    xor (s,a,b);
    and (c,a,b);
endmodule
    


