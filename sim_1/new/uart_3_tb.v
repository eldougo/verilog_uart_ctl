`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.07.2018 18:47:18
// Design Name: 
// Module Name: uart_3_tb
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


module uart_3_tb();
    //parameter BAUD = 115200;
    parameter BAUD = 4000000;
    
    localparam RDY = 2'o0, WRITE = 2'o1, READ_FIFO = 2'o2;
    
    reg [3:0] r_word_state = RDY;
    reg [32:0] r_word = 0;
    reg [7:0] r_word_ptr = 8'h0;
    
    reg clk = 0;
    reg  [7:0] r_tx_data = 0;
    wire [7:0] w_rx_data;
    
    wire w_transmit_ready;
    wire w_uart_tx;
    reg  r_send = 0;
    reg  [7:0] counter = 0;
    
    wire w_receive_ready;
    
    reg  r_fifo_rd_en = 0;  // input wire rd_en
    wire [7:0] w_fifo_dout;    // output wire [7 : 0] dout
    reg [7:0] r_fifo_dout = 8'h00;
    wire w_fifo_full;    // output wire full
    wire w_fifo_empty;  // output wire empty
    wire w_fifo_valid;
    reg r_fifo_wr_en = 1'b0;
    
    reg [7:0] r_fifo_din = 8'h00;
    wire [7:0] w_fifo_din;
    reg [7:0] r_in_word = 8'h00;
    
    initial begin
        # 100;
        r_in_word = 8'h41;
        # 10;
        r_in_word = 8'h00;
        
    end
    
    // Transmit test data
    always @ (posedge clk)
    begin
        
        //reg [3:0] r_word_state = RDY;
        //reg [32:0] r_word = 0;
        //reg [7:0] r_word_ptr = 8'h0;

        
            case(r_word_state)
            
            RDY :
                begin
                    if (r_in_word != 8'h00)
                    begin
                        r_word = {8'h00, r_in_word};
                        r_word_state = WRITE;
                        r_word_ptr = 8'h00;
                    end
                end
            
            WRITE :
                begin
                    if (r_word[r_word_ptr] != 8'h00)
                    begin
                        {r_fifo_wr_en,r_fifo_din} = {1'b1, r_word[r_word_ptr+3:r_word_ptr]};
                        r_word_ptr = r_word_ptr + 8'h04;
                    end
                    else
                    begin
                        r_fifo_wr_en = 1'b0;
                        r_word_state = RDY;
                    end
                end
            
            endcase
         /*   
        if (!w_fifo_full) begin
            case (counter)
                8'h00:   {r_fifo_wr_en,r_fifo_din} = {1'b1, 8'h00};
                8'h01:   {r_fifo_wr_en,r_fifo_din} = {1'b1, 8'h01};
                8'h02:   {r_fifo_wr_en,r_fifo_din} = {1'b1, 8'h02};         
                8'h03:   {r_fifo_wr_en,r_fifo_din} = {1'b1, 8'h03};
                8'h04:   {r_fifo_wr_en,r_fifo_din} = {1'b1, 8'h04};
                8'h05:   {r_fifo_wr_en,r_fifo_din} = {1'b1, 8'h05};
                8'h06:   {r_fifo_wr_en,r_fifo_din} = {1'b1, 8'h06};
                8'h07:   {r_fifo_wr_en,r_fifo_din} = {1'b1, 8'h07};
                8'h08:   {r_fifo_wr_en,r_fifo_din} = {1'b1, 8'h08};
                8'h09:   {r_fifo_wr_en,r_fifo_din} = {1'b1, 8'h09};
                8'h0a:   {r_fifo_wr_en,r_fifo_din} = {1'b1, 8'h0a};
                8'h0b:   {r_fifo_wr_en,r_fifo_din} = {1'b1, 8'h0b};
                8'h0c:   {r_fifo_wr_en,r_fifo_din} = {1'b1, 8'h0c};         
                8'h0d:   {r_fifo_wr_en,r_fifo_din} = {1'b1, 8'h0d};
                8'h0e:   {r_fifo_wr_en,r_fifo_din} = {1'b1, 8'h0e};
                8'h0f:   {r_fifo_wr_en,r_fifo_din} = {1'b1, 8'h0f};
                8'h10:   {r_fifo_wr_en,r_fifo_din} = {1'b1, 8'h10};
                8'h11:   {r_fifo_wr_en,r_fifo_din} = {1'b1, 8'h11};
                8'h12:   {r_fifo_wr_en,r_fifo_din} = {1'b1, 8'h12};
                8'h13:   {r_fifo_wr_en,r_fifo_din} = {1'b1, 8'h13};         
                8'h14:   {r_fifo_wr_en,r_fifo_din} = {1'b1, 8'h14};
                8'h15:   {r_fifo_wr_en,r_fifo_din} = {1'b1, 8'h15};
                8'h16:   {r_fifo_wr_en,r_fifo_din} = {1'b1, 8'h16};
                8'h17:   {r_fifo_wr_en,r_fifo_din} = {1'b0, 8'h00};
                default: #50000 $finish();
            endcase
            //if (!w_fifo_full)
                counter = counter + 8'h1;
        end
        */
    end
    
    always @ (posedge w_receive_ready)
    begin
        $display("Received from uart: \t%h\n", w_rx_data);
    end
    
    // Transmit data from the fifo
    always @ (posedge clk)
    begin
        
        if (r_send)
                r_send <= 1'b0;
            
        else if (w_transmit_ready) begin
            if (!w_fifo_empty && !r_fifo_rd_en)
                r_fifo_rd_en <= 1'b1;
            else
                r_fifo_rd_en <= 1'b0;
            if (w_fifo_valid) begin
                $display("Read from fifo: \t\t%h", w_fifo_dout);
                r_fifo_dout <= w_fifo_dout;
                r_fifo_rd_en <= 1'b0;
                r_send <= 1'b1;
            end
        end else begin
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
        .data(r_fifo_dout),       // input, [7:0]
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
        .din(w_fifo_din),      // input wire [7 : 0] din
        .wr_en(r_fifo_wr_en),  // input wire wr_en
        .rd_en(r_fifo_rd_en),  // input wire rd_en
        .dout(w_fifo_dout),    // output wire [7 : 0] dout
        .full(w_fifo_full),    // output wire full
        .empty(w_fifo_empty),  // output wire empty
        .valid(w_fifo_valid)  // output wire valid
    );
    
    assign w_fifo_din = r_fifo_din;
endmodule
