//Four Bit Ripple-Carry Adder using Full-Adder
module ripple_carry_adder(x,y,s,c);
    input [3:0] x, y;
    output [3:0] s;
    output c;
    wire w1, w2, w3;
    fulladder u1(x[0], y[0], 1'b0, s[0], w1);
    fulladder u2(x[1], y[1], w1, s[1], w2);
    fulladder u3(x[2], y[2], w2, s[2], w3);
    fulladder u4(x[3], y[3], w3, s[3], c);
endmodule

module fulladder(a,b,cin,s,cout);
    input a,b,cin;
    output s,cout;
    assign s = a^b^cin;
    assign cout = (a&b)|(a&cin)|(b&cin);
endmodule