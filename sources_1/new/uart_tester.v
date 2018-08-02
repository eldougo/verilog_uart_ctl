`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.07.2018 15:40:04
// Design Name: 
// Module Name: uart_tester
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


module uart_tester(
    input clk,
    input RsRx,
    input btnC,
    output RsTx,
    output [3:0] an,
    output [6:0] seg,
    output dp
    );
    
    parameter BAUD = 115200;
    //parameter BAUD = 500000;
    
    localparam RDY = 2'o0, WRITE = 2'o1, WAIT = 2'o2;
    
    wire [7:0] w_rx_data;
    reg [7:0] r_fifo_din;
    wire [7:0] w_fifo_dout;
    wire w_tx_ready;
    
    wire w_rx_valid;
    wire w_fifo_full;
    wire w_fifo_empty;
    reg r_fifo_wr_en = 1'b0;
    reg [2:0] r_state = RDY;
    reg r_fifo_rd_en = 1'b0;
    wire w_fifo_valid;
    reg r_send = 0;
    reg [7:0] r_fifo_dout = 8'h00;
    
    reg [7:0] write_buff[0:10];
    reg [3:0] write_buff_index = 0;
    
    reg [15:0] disp_buf = 16'h1234;
    
    reg [2:0] r_dp = 3'b000;
    reg init_msg_sent = 1'b0;
    
    
    
    
    // UART transmitter
    uart_tx_ctrl #(.BAUD(BAUD)) uart_tx_ctrl (
        .send(r_send),            // input, 
        .data(r_fifo_dout),       // input, [7:0]
        .clk(clk),                // input
        .ready(w_tx_ready),       // output
        .uart_tx(RsTx)            // output
    );
    
    // UART receiver
    uart_rx_ctrl  #(.BAUD(BAUD)) uart_rx_ctrl (
        .clk(clk),                // input
        .rx(RsRx),                // input
        .valid(w_rx_valid),       // output
        .data(w_rx_data)          // output [7:0]
    );
    
    fifo #(.DATA_WIDTH(8), .ADDR_WIDTH(5)) fifo (
        .clk(clk),                // Clock input
        .rst(btnC),               // Active high reset
        .din(r_fifo_din),         // Data input
        .rd_en(r_fifo_rd_en),     // Read enable
        .wr_en(r_fifo_wr_en),     // Write Enable
        .dout(w_fifo_dout),       // Data Output
        .empty(w_fifo_empty),     // FIFO empty
        .full(w_fifo_full),       // FIFO full
        .valid(w_fifo_valid)
      );
      
      seven_seg_display_driver_0 seven_seg_display_driver (
        .clk(clk),                // input wire clk
        .disp_buf(disp_buf),      // input wire [15 : 0] disp_buf
        .dp(r_dp),              // input wire [2 : 0] dp
        .lum(4'o4),               // input wire [3 : 0] lum
        .an_mux(an),              // output wire [3 : 0] an_mux
        .seg_mux(seg),            // output wire [6 : 0] seg_mux
        .dp_mux(dp)               // output wire dp_mux
      );
      
      initial begin
        write_buff[0] <= 8'h00; 
      end

    // Transmit data from the fifo
    always @ (posedge clk)
    begin
        
        if (r_send) begin
                r_send <= ~w_tx_ready;
                //r_fifo_rd_en <= 1'b0;
        
        end else if (w_tx_ready) begin
            if (!w_fifo_empty && !r_fifo_rd_en)
                r_fifo_rd_en <= 1'b1;
            else
                r_fifo_rd_en <= 1'b0;
            
            if (w_fifo_valid) begin
                //$display("Read from fifo: \t\t%h", w_fifo_dout);
                //if (w_fifo_dout != disp_buf[7:0]) begin
                //  r_dp <= r_dp + 1;
                //end
                disp_buf[15:8] <= w_fifo_dout;
                r_fifo_dout <= w_fifo_dout;
                r_fifo_rd_en <= 1'b0;
                r_send <= 1'b1;
            end
        end else begin
            r_fifo_rd_en <= 1'b0;
        end
    end
    
    // Read from the UART into the fifo.
    always @ (posedge clk)
    begin
        case (r_state)
        RDY :
            begin
                if (!init_msg_sent) begin
                    init_msg_sent <= 1'b1;
                    write_buff[write_buff_index+6]   <= "H";
                    write_buff[write_buff_index+5]   <= "e";
                    write_buff[write_buff_index+4]   <= "l";
                    write_buff[write_buff_index+3]   <= "l";
                    write_buff[write_buff_index+2]   <= "o";
                    write_buff[write_buff_index+1]   <= 8'h0a;
                    write_buff[write_buff_index]     <= 8'h0d;
                    write_buff_index <= write_buff_index + 4'h7;
                    r_fifo_wr_en <= 1'b0;
                    r_state      <= WRITE;
                end
                
                if (w_rx_valid) begin
                    if (w_rx_data == 8'h0d) begin                   // cr -> crlf
                      write_buff[write_buff_index]   <= 8'h0a;
                      write_buff[write_buff_index+1] <= 8'h0d;
                      //write_buff[write_buff_index+2] <= 8'h00;
                      write_buff_index <= write_buff_index + 4'h2;
                    end else if (w_rx_data == 8'h07) begin          // ^g
                      write_buff[write_buff_index+6] <= "*";
                      write_buff[write_buff_index+5] <= "B";
                      write_buff[write_buff_index+4] <= "e";
                      write_buff[write_buff_index+3] <= "l";
                      write_buff[write_buff_index+2] <= "l";
                      write_buff[write_buff_index+1] <= "!";
                      write_buff[write_buff_index+0] <= "*";
                      //write_buff[write_buff_index+7] <= 8'h00;
                      write_buff_index <= write_buff_index + 4'h7;
                    end else if (w_rx_data == 8'h08) begin          // Backspace
                      write_buff[write_buff_index+2] <= 8'h08;
                      write_buff[write_buff_index+1] <= 8'h20;
                      write_buff[write_buff_index+0] <= 8'h08;
                      //write_buff[write_buff_index+3] <= 8'h00;
                      write_buff_index <= write_buff_index + 4'h3;
                    end else begin
                      write_buff[write_buff_index]   <= w_rx_data;
                      //write_buff[write_buff_index+1] <= 8'h00;
                      write_buff_index <= write_buff_index + 4'h1;
                    end
                    r_fifo_wr_en <= 1'b0;
                    r_state      <= WRITE;
                    disp_buf[7:0] <= w_rx_data;
                end
            end
        
        WRITE :
            begin
                if (write_buff_index != 0) begin
                  if (!w_fifo_full) begin
                    r_fifo_wr_en <= 1'b1;
                    r_fifo_din <= write_buff[write_buff_index-1];
                    write_buff[write_buff_index-1] <= 8'h00;
                    write_buff_index <= write_buff_index - 4'h1;
                  
                  end else begin          // w_fifo_full == 1
                    r_fifo_wr_en <= 1'b0;
                  
                  end
                
                end else begin            // write_buff_index == 0
                  r_fifo_wr_en <= 1'b0;
                  r_state <= RDY;
                end
            end
        
        default :
            r_state <= RDY;
        
        endcase
        //if (write_buff_index > disp_buf[7:0])
//        disp_buf[3:0] <= r_state;
//        disp_buf[7:4] <= write_buff_index;
//        disp_buf[11:8]<= {3'b000, w_rx_valid};
//        disp_buf[15:12] <= {3'b000, w_fifo_full};
    end
    
endmodule
