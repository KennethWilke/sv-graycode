/*
This test valides encoding of 4 bit binary to gray codes
*/

`timescale 1ns/1ns

module test_4bit_encode();

  logic [3:0] binary;
  logic [3:0] gray;

  binary_to_gray #(4) dut(binary, gray);

  initial begin
    binary <= 4'b0000;
    #1 assert(gray == 4'b0000);
    #1 binary <= 4'b0001;
    #1 assert(gray == 4'b0001);
    #1 binary <= 4'b0010;
    #1 assert(gray == 4'b0011);
    #1 binary <= 4'b0011;
    #1 assert(gray == 4'b0010);
    #1 binary <= 4'b0100;
    #1 assert(gray == 4'b0110);
    #1 binary <= 4'b0101;
    #1 assert(gray == 4'b0111);
    #1 binary <= 4'b0110;
    #1 assert(gray == 4'b0101);
    #1 binary <= 4'b0111;
    #1 assert(gray == 4'b0100);
    #1 binary <= 4'b1000;
    #1 assert(gray == 4'b1100);
    #1 binary <= 4'b1001;
    #1 assert(gray == 4'b1101);
    #1 binary <= 4'b1010;
    #1 assert(gray == 4'b1111);
    #1 binary <= 4'b1011;
    #1 assert(gray == 4'b1110);
    #1 binary <= 4'b1100;
    #1 assert(gray == 4'b1010);
    #1 binary <= 4'b1101;
    #1 assert(gray == 4'b1011);
    #1 binary <= 4'b1110;
    #1 assert(gray == 4'b1001);
    #1 binary <= 4'b1111;
    #1 assert(gray == 4'b1000);
    #1 $finish();
  end

endmodule
