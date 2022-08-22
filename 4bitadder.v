`include "fulladder.v"
module adder4(s,a,b,cout,cin);
    input[3:0] a,b;
    input cin;
    output[3:0] s;
    output cout;
    wire c1,c2,c3;

    adder1bit a0(s[0],a[0],b[0],c1,cin);
    adder1bit a1(s[1],a[1],b[1],c2,c1);
    adder1bit a2(s[2],a[2],b[2],c3,c2);
    adder1bit a3(s[3],a[3],b[3],cout,c3);
    endmodule