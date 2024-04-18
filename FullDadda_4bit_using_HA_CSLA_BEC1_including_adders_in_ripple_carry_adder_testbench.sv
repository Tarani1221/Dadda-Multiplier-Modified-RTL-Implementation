module tb();
  wire [7:0]s;
  reg [3:0]a,b;
  
  dadda_multiplier d1(s,a,b);
  initial
    begin
      $dumpfile("dump.vcd");
      $dumpvars(1);
      
      b = 4'b1111; // Corrected assignment
      a = 4'b1111; // Corrected assignment

      #10;
      $display("%d",s[7:0]);
      $finish;
    end
endmodule
