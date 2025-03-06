// Code your design here
module async_4bit(clk,T,Q0,Q1,Q2,Q3);
  input clk,T;
  output reg Q0,Q1,Q2,Q3;
  
  T_FF T0(clk,T,Q0);
  T_FF T1(Q0,T,Q1);
  T_FF T2(Q1,T,Q2);
  T_FF T3(Q2,T,Q3);
  
endmodule

module T_FF(clk,Tin,Q);
  input clk,Tin;
  output reg Q;
  
  initial
    Q <= 0'b0;
  always @ (negedge clk)
    begin
      if(Tin == 1 )
        Q <= ~Q;
      else
        Q<= Q;
    end
endmodule
