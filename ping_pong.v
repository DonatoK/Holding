`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/16/2019 06:04:34 PM
// Design Name: 
// Module Name: ping_pong
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


module ping_pong #(
    parameter DATA_WIDTH = 32,
    parameter BANK_DEPTH = 4
    )(
    input [DATA_WIDTH-1:0]  data_input,
    input valid,
    input clock,
    
    output [DATA_WIDTH-1:0] data_output,
    output ready_input,
    output data_out_ready
    );
    
//  define the log2 function if needed
function integer log2;
    input integer num;
    integer i, result;
    begin
        for (i = 0; 2 ** i < num; i = i + 1)
            result = i + 1;
        log2 = result;
    end
endfunction 

reg [DATA_WIDTH-1:0] bank_0 [log2(BANK_DEPTH):0];
reg [DATA_WIDTH-1:0] bank_1 [log2(BANK_DEPTH):0];
reg [log2(BANK_DEPTH):0] address_row_0;
reg [log2(BANK_DEPTH):0] address_row_1;

generate 
always@(*)
    begin
    case(counter_0
    end
    
endgenerate     
always@(posedge clock)
    begin
    
    end  
    
endmodule
