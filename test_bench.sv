//////////////////////////////////////////////////////////////////////////////////
// Design: Test Bench for Difference between Assign statement and If statement
// Engineer: kiran
//////////////////////////////////////////////////////////////////////////////////
`timescale 1ns / 1ps

module test_bench();
    //inputs for the DUT
        reg [1:0]a;
        reg [1:0]b;
        reg sel;
    //outputs from the DUT
        wire [1:0]c;
        wire [1:0]d;
        
        
        Assign_IF DUT (.a(a),.b(b),.sel(sel),.c(c),.d(d));
        
        initial 
            begin
                $display($time," << Simulation Results >>");
                $monitor($time,"a=%b, b=%b, sel=%b, c=%b, d=%b",a,b,sel,c,d);
            end
            
        initial
            begin
                sel = 0;
                a   = 2'b10;
                b   = 2'b11;
                #5
                sel = 1;
                a   = 2'b10;
                b   = 2'b11;
                #5
                sel = 1'bx;
                a   = 2'b10;
                b   = 2'b11;
                #5
                sel = 1'bz;
                a   = 2'b10;
                b   = 2'b11;
                #5
                $finish;
            end
endmodule
