/*
This test valides decoding of 4 bit gray codes to binary
*/

`timescale 1ns/1ns

module test_4bit_decode();

  logic [3:0] gray;
  logic [3:0] binary;

  gray_to_binary #(4) dut(gray, binary);

  initial begin
    gray <= 4'b0000;
    #1 assert(binary == 4'b0000);
    #1 gray <= 4'b0001;
    #1 assert(binary == 4'b0001);
    #1 gray <= 4'b0010;
    #1 assert(binary == 4'b0011);
    #1 gray <= 4'b0011;
    #1 assert(binary == 4'b0010);
    #1 gray <= 4'b0100;
    #1 assert(binary == 4'b0111);
    #1 gray <= 4'b0101;
    #1 assert(binary == 4'b0110);
    #1 gray <= 4'b0110;
    #1 assert(binary == 4'b0100);
    #1 gray <= 4'b0111;
    #1 assert(binary == 4'b0101);
    #1 gray <= 4'b1000;
    #1 assert(binary == 4'b1111);
    #1 gray <= 4'b1001;
    #1 assert(binary == 4'b1110);
    #1 gray <= 4'b1010;
    #1 assert(binary == 4'b1100);
    #1 gray <= 4'b1011;
    #1 assert(binary == 4'b1101);
    #1 gray <= 4'b1100;
    #1 assert(binary == 4'b1000);
    #1 gray <= 4'b1101;
    #1 assert(binary == 4'b1001);
    #1 gray <= 4'b1110;
    #1 assert(binary == 4'b1011);
    #1 gray <= 4'b1111;
    #1 assert(binary == 4'b1010);
    #1 $finish();
  end

endmodule
