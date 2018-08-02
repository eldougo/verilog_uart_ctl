`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.07.2018 17:02:06
// Design Name: 
// Module Name: syn_fifo
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


module fifo
#(parameter               DATA_WIDTH = 8,
  parameter               ADDR_WIDTH = 8
)(
  input                   clk,        // input wire clock
  input                   rst,        // input wire reset active high
  input [DATA_WIDTH-1:0]  din,        // input wire [DATA_WIDTH-1:0] data in
  input                   rd_en,      // input wire read enable
  input                   wr_en,      // input wire write enable
  output reg [DATA_WIDTH-1:0] dout,   // output reg [DATA_WIDTH-1:0] data out
  output                  empty,  // output reg empty
  output                  full,  // output reg full
  output reg              valid = 0   // output reg date valid
);

//----------- Internal variables -------------------
localparam RAM_DEPTH = 1 << ADDR_WIDTH;
reg [DATA_WIDTH-1:0] mem [0:RAM_DEPTH-1];
reg [ADDR_WIDTH-1:0] write_ptr = 0;
reg [ADDR_WIDTH-1:0] read_ptr = 0;
reg [ADDR_WIDTH:0]   total_entries = 0;

  //----------- Begin code ---------------------------
  always @ (posedge clk or posedge rst)
  begin
    
    // Reset
    if (rst) begin
      write_ptr     <= 0;
      read_ptr      <= 0;
      valid         <= 0;
      //empty         <= 1;
      //full          <= 0;
      total_entries <= 0;
    end else begin
      
      // write to fifo
      if (wr_en) begin
        //valid            <= 1'b0;
        if(total_entries != RAM_DEPTH) begin
          //full           <= 1'b0;
          mem[write_ptr] <= din;
          write_ptr      <= write_ptr + 1;
        end
      end
      
      // read from fifo
      if (rd_en) begin
        if(total_entries == 0) begin
          valid         <= 1'b0;
        end else begin
          //empty         <= 1'b0;
          dout          <= mem[read_ptr];
          valid         <= 1'b1;
          read_ptr      <= read_ptr + 1;
        end
      end else begin
        
        // idle
        valid <= 1'b0;
      end
      
      total_entries <= total_entries + (wr_en & (total_entries != RAM_DEPTH)) - (rd_en && (total_entries != 1'b0));
    end
    
//    empty <= (total_entries == 0);
//    full  <= (total_entries == RAM_DEPTH);
  end
  
  assign empty = (total_entries == 0);
  assign full  = (total_entries == RAM_DEPTH);
endmodule
