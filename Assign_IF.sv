//////////////////////////////////////////////////////////////////////////////////////
// Design: Difference between Assign statement and If statement
// Engineer: kiran
// Note: When 'sel' is x or z : ASSIGN statement merges a and b to evaluate the output
//       where as in IF the condition is evaluated to be false.
//////////////////////////////////////////////////////////////////////////////////////
`timescale 1ns / 1ps

module Assign_IF(a,b,sel,c,d);

    input  wire[1:0] a;
    input  wire[1:0] b;
    input  wire sel;
    
    output wire[1:0] c;
    output reg [1:0] d;
    
    assign c = sel ? a : b;
    
    always@(*)
        begin
            if(sel)
                d <= a;
            else 
                d <= b;
        end
        
endmodule
