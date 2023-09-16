module PWM_basic #(parameter R = 8)(clk,reset_n,duty,pwm_out);
  input clk,reset_n;
  input [R-1:0]duty; // duty_cycle = T(on) / T
  output pwm_out;
  
   //Up_Counter
  reg [R-1 : 0] Q_reg, Q_next;
  
  always @(posedge clk, negedge reset_n) 
  begin
    if(~reset_n)
      Q_reg <= 1'b0;
    else
      Q_reg <= Q_next;
  end
  
  //next state logic
  always @(*)
  begin
    Q_next = Q_reg + 1;
  end
  
  //output logic
  assign pwm_out = (Q_reg < duty);
  
endmodule
  
