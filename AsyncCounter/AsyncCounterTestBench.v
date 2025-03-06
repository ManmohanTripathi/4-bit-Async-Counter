// Code your testbench here
// or browse Examples
module tb();
  reg tb_clk , tb_T;
  wire tb_Q0,tb_Q1,tb_Q2,tb_Q3;
  
  // instantiation or port map
  
  async_4bit ints1(
    .clk(tb_clk),
    .T(tb_T),
    .Q0(tb_Q0),
    .Q1(tb_Q1),
    .Q2(tb_Q2),
    .Q3(tb_Q3)
  );
  
  // Define the waveform file
  
  initial
    begin
      $dunmpfile("Counter_4bit_out.vcd");
      $dumpvars(1);
    end
  initial
    begin
      
      tb_clk=1;
      tb_T=1;
    end
  always
    #10
    tb_clk = ~tb_clk;

  
  initial
    begin
      #20
      tb_T =1;
      #320
      $finish;
    end
endmodule