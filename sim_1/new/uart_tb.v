`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.07.2018 12:29:12
// Design Name: 
// Module Name: uart_tb
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


module uart_tb();
    
    parameter BAUD = 115200;
    //parameter BAUD = 4000000;
    
    reg clk = 0;
    reg  [7:0] r_tx_data = 0;
    wire [7:0] w_rx_data;
    
    wire w_transmit_ready;
    wire w_uart_tx;
    reg  r_send;
    reg  [7:0] counter = 0;
    
    wire w_receive_ready;
    
    reg  r_fifo_rd_en = 0;  // input wire rd_en
    wire [7:0] w_fifo_dout;    // output wire [7 : 0] dout
    wire w_fifo_full;    // output wire full
    wire w_fifo_empty;  // output wire empty
    wire w_fifo_valid;
    reg r_fifo_wr_en = 1'b0;
    
    // Transmit test data
    always @ (posedge clk)
    begin
        
        if (r_send == 1'b1)
            r_send = 1'b0;
        else if (w_transmit_ready) begin
            case (counter)
                8'h00:   {r_send,r_tx_data} = {1'b1, 8'ha5};
                8'h01:   {r_send,r_tx_data} = {1'b1, 8'h00};
                8'h02:   {r_send,r_tx_data} = {1'b1, 8'hff};         
                8'h03:   {r_send,r_tx_data} = {1'b1, 8'h5a};
                8'h04:   {r_send,r_tx_data} = {1'b1, 8'h01};
                8'h05:   {r_send,r_tx_data} = {1'b1, 8'h88};
                8'h06:   {r_send,r_tx_data} = {1'b1, 8'h41};
                8'h07:   {r_send,r_tx_data} = {1'b1, 8'h41};
                8'h08:   {r_send,r_tx_data} = {1'b1, 8'h42};
                default: #1000 $finish();
            endcase
            counter = counter + 8'h1;
        end
    end
    
    always @ (posedge w_receive_ready)
    begin
        $display("Received from uart: \t%h", w_rx_data);
        r_fifo_wr_en = 1'b1;
    end
    
    // Read fifo
    always @ (posedge clk)
    begin
        if (r_fifo_wr_en)
            r_fifo_wr_en <= 1'b0;
        
        if (!w_fifo_empty)
            r_fifo_rd_en <= 1'b1;
        
        if (w_fifo_valid) begin
            $display("Read from fifo: \t\t%h\n", w_fifo_dout);
            r_fifo_rd_en <= 1'b0;
        end
    end
    
    /*
    always @ (posedge w_fifo_valid)
    begin
        $display("Read from fifo: %h", w_fifo_dout);
        r_fifo_rd_en = 1'b0;
    end
    */
    
    always
        #5 clk = !clk;
    
    uart_tx_ctrl #(.BAUD(BAUD)) UUT_TX (
        .ready(w_transmit_ready),        // output
        .uart_tx(w_uart_tx),    // output
        .send(r_send),          // input, 
        .data(r_tx_data),       // input, [7:0]
        .clk(clk)               // input
    );
    
    uart_rx_ctrl  #(.BAUD(BAUD)) UUT_RX (
        .clk(clk),              // input
        .rx(w_uart_tx),         // input
        .data(w_rx_data),       // output [7:0]
        .ready(w_receive_ready)    // output
    );
    
    // FIFO
    fifo_generator_0 UUT_fifo (
        .clk(clk),      // input wire clk
        .din(w_rx_data),      // input wire [7 : 0] din
        .wr_en(r_fifo_wr_en),  // input wire wr_en
        .rd_en(r_fifo_rd_en),  // input wire rd_en
        .dout(w_fifo_dout),    // output wire [7 : 0] dout
        .full(w_fifo_full),    // output wire full
        .empty(w_fifo_empty),  // output wire empty
        .valid(w_fifo_valid)  // output wire valid
    );

endmodule
