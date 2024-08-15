`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.08.2024 22:47:31
// Design Name: 
// Module Name: RippleCarryAdder
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////
module HA (input a, b , output sum , carry  );

xor g1 (sum , a , b);
and g2(carry , a, b);

endmodule

module FA(inout a , b, cin , output sum , carry);
wire w1 , w2 , w3 ; 
HA g1(a,b,w1, w2);
HA g2(w1 , cin  ,sum , w3);
or g3(carry , w2 , w3);
endmodule

//4 bit ripple carry adder 

module RippleCarryAdder(
input [3:0]a,  [3:0]b ,cin ,  output [3:0]sum ,carry

    );
    wire c1 , c2 , c3 ; 
    
FA x1 (a[0] , b[0] , cin , sum[0] , c1 );
FA x2( a[1], b[1] , c1 , sum[1] , c2 ) ;
FA x3(a[2], b[2] , c2 , sum[2] , c3);
FA x4 (a[3], b[3] , c3 , sum[3] , carry);

endmodule
// now creating an genral sub - Adder

module adder(input m , [3:0]a , [3:0]b , cin , output  [3:0]sim , cout);
// m deside for adder(0) and sub(1)



endmodule