`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.07.2018 12:07:30
// Design Name: 
// Module Name: uart_tx_ctrl
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


module uart_tx_ctrl#(
    parameter BAUD = 115200,
    parameter CLOCK_SPEED = 100_000_000,
    parameter CNTR_WIDTH = 18
)(
    input clk,
    input send,
    input [7:0] data,
    output ready,
    output uart_tx
);
    
    localparam BIT_INDEX_MAX = 10;
    localparam [CNTR_WIDTH-1:0] BAUD_TIMER = CLOCK_SPEED/BAUD;
    localparam RDY = 2'o0, LOAD_BIT = 2'o1, SEND_BIT = 2'o2;
    
    reg [1:0]  state = RDY;
    reg [CNTR_WIDTH-1:0] timer = 0;
    reg [9:0]  tx_data;
    reg [3:0]  bit_index;
    reg        tx_bit = 1'b1;
    
    always @ (posedge clk)
    begin
        case (state)
        RDY:
            begin
                if (send)
                begin
                    tx_data <= {1'b1,data,1'b0};    // Data is reversed: {stop,data,start}
                    state <= LOAD_BIT;
                end
                timer <= 0;
                bit_index <= 0;
                tx_bit <= 1'b1;
            end
        
        LOAD_BIT:
            begin
                state <= SEND_BIT;
                tx_bit <= tx_data[bit_index];
                bit_index <= bit_index + 1'b1;
            end
        
        SEND_BIT:
            if (timer == BAUD_TIMER)
            begin
                timer <= 0;
                if (bit_index == BIT_INDEX_MAX)
                    state <= RDY;
                else
                    state <= LOAD_BIT;
            end
            else
                timer <= timer + 1'b1;
        
        default:
            state <= RDY;
            
        endcase
    end
    
    assign uart_tx = tx_bit;
    assign ready = (state == RDY);
    
endmodule
