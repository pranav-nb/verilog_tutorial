module srff_gate(q, qbar, s, r, clk);

input s,r,clk; 
output q, qbar;

wire nand1_out;  
wire nand2_out; 

nand (nand1_out,clk,s); 
nand (nand2_out,clk,r); 
nand (q,nand1_out,qbar);
nand (qbar,nand2_out,q);

endmodule
