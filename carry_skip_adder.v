module carry_skip_adder(s,cout,a,b,cin);
input [3:0] a,b;
input cin;
output cout;
output [3:0] s;
wire w1,w2;
wire [3:0] p;
ripple r1(s[3:0], w1, a[3:0], b[3:0], cin);
parity p1(p,a,b);
and_4bit a1(w2,p[0],p[1],p[2],p[3]);
mux21 m1(cout,{cin,w1},w2);
endmodule
