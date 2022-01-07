`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/17/2021 08:40:08 PM
// Design Name: 
// Module Name: Counters
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


module BinaryC(input dir, clk, output reg [2:0] cout);

parameter s0=0,s1=1,s2=2,s3=3,s4=4,s5=5,s6=6,s7=7;

reg [2:0] state =s0;

always @(posedge clk)

begin case(state)

s0:if(dir==1)
state <= s1;
else
state <=s7;

s1:if(dir==1)
state <= s2;
else
state <= s0;

s2:if(dir==1)
state <= s3;
else
state <=s1;

s3:if(dir==1)
state <= s4;
else
state <=s2;

s4:if(dir==1)
state <= s5;
else
state <=s3;

s5:if(dir==1)
state <= s6;
else
state <=s4;

s6:if(dir==1)
state <= s7;
else
state <=s5;

s7:if(dir==1)
state <= s0;
else
state <=s6;

endcase

end



always @(state)

begin case(state)

s0:cout <=3'b000;

s1:cout <=3'b001;

s2:cout <=3'b010;

s3:cout <=3'b011;

s4:cout <=3'b100;

s5:cout <=3'b101;

s6:cout <=3'b110;

s7:cout <=3'b111;

endcase

end

endmodule

module GreyCode(input dir, clk, output reg[2:0] cout);


parameter s0=0,s1=1,s2=2,s3=3,s4=4,s5=5,s6=6,s7=7;

reg [2:0] state =s0;


always @(posedge clk)

begin case(state)

s0:if(dir==1)
state <= s1;
else
state <=s7;

s1:if(dir==1)
state <= s2;
else
state <= s0;

s2:if(dir==1)
state <= s3;
else
state <=s1;

s3:if(dir==1)
state <= s4;
else
state <=s2;

s4:if(dir==1)
state <= s5;
else
state <=s3;

s5:if(dir==1)
state <= s6;
else
state <=s4;

s6:if(dir==1)
state <= s7;
else
state <=s5;

s7:if(dir==1)
state <= s0;
else
state <=s6;

endcase

end



always @(state)

begin case(state)

s0:cout <=3'b000;

s1:cout <=3'b001;

s2:cout <=3'b011;

s3:cout <=3'b010;

s4:cout <=3'b110;

s5:cout <=3'b111;

s6:cout <=3'b101;

s7:cout <=3'b100;

endcase

end


endmodule

module OneHot(input dir, clk, output reg[7:0] cout);


parameter s0=0,s1=1,s2=2,s3=3,s4=4,s5=5,s6=6,s7=7;

reg [2:0] state =s0;

always @(posedge clk)

begin case(state)

s0:if(dir==1)
state <= s1;
else
state <=s7;

s1:if(dir==1)
state <= s2;
else
state <= s0;

s2:if(dir==1)
state <= s3;
else
state <=s1;

s3:if(dir==1)
state <= s4;
else
state <=s2;

s4:if(dir==1)
state <= s5;
else
state <=s3;

s5:if(dir==1)
state <= s6;
else
state <=s4;

s6:if(dir==1)
state <= s7;
else
state <=s5;

s7:if(dir==1)
state <= s0;
else
state <=s6;

endcase

end



always @(state)

begin case(state)

s0:cout <=8'b00000001;

s1:cout <=8'b00000010;

s2:cout <=8'b00000100;

s3:cout <=8'b00001000;

s4:cout <=8'b00010000;

s5:cout <=8'b00100000;

s6:cout <=8'b01000000;

s7:cout <=8'b10000000;

endcase

end


endmodule










