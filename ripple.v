module ripple(s,carry,a,b,cin);
input [3:0] a,b;
input cin;
output carry;
output [3:0] s;
wire w0, w1, w2;
fa_df f1(s[0], w0, a[0], b[0], cin);
fa_df f2(s[1], w1, a[1], b[1], w0);
fa_df f3(s[2], w2, a[2], b[2], w1);
fa_df f4(s[3], carry, a[3], b[3], w2);
endmodule
