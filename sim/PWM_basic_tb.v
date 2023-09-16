module PWM_basic_tb();
  localparam R = 8;
  reg clk,reset_n;
  reg[R-1 : 0]duty;
  wire pwm_out;
  
  
  //instance
  PWM_basic #(.R(R)) uut(.clk(clk),.reset_n(reset_n),.duty(duty),.pwm_out(pwm_out));
  
 localparam T = 10;
  //clk
  always
  begin
    clk = 1'b0;
    #(T/2);
    clk = 1'b1;
    #(T/2);
  end
  
  initial
  begin
    reset_n = 1'b0;
    #2
    reset_n = 1'b1;
    duty = 0.25 * (2**R);
    
    repeat (7*(2**R)) @(negedge clk);
    duty = 0.5 * (2**R);
    
    repeat (7*(2**R)) @(negedge clk);
    duty = 0.75 * (2**R);
    
    repeat (7*(2**R)) @(negedge clk);
    duty = 255;
    
    
  end
endmodule
  
  
