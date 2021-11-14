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
    


