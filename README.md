# Pulse Width Modulation (PWM):
## what is PWM?
is a modulation technique used in electronics and communication systems to control the average power delivered to a load by varying the width of a rectangular pulse. It is commonly used in applications such as motor speed control, LED dimming, audio signal generation, and power regulation. 
## How PWM Works:
PWM works by rapidly switching a signal between on (high) and off (low) states at a fixed frequency. The ratio of the on-time to the total period of the signal is called the duty cycle. By adjusting the duty cycle, the average power delivered to the load can be controlled. 
![image](https://github.com/AbdullahMahmoudGhazal/PWM/assets/113705881/99a67cab-39c2-4719-9058-2344f15a5ee2)
## Project Structure: 
#### 1) Verilog HDL Design:
- PWM generator module(basic_pwm): Implements the core logic for generating PWM signals with adjustable duty cycle and frequency.
- Testbench(basic_pwm_tb): Verilog testbench for simulation and verification of the PWM generator module.
#### 2) Arduino Implementation:
- Arduino code: Establishes communication with the Verilog-designed PWM system and controls the duty cycle through user interaction.
- Hardware setup: Provides guidance on connecting external components, such as LEDs to the Arduino board for practical PWM applications.
- Tool: Protues simulation tool.

  ## Detailed instructions:
  - ### structural modeling:
    ![image](https://github.com/AbdullahMahmoudGhazal/PWM/assets/113705881/e235d685-5de1-42d6-9fd5-8f4ebc0f9f9e)
  - ### behavioral modeling:
    1) basic_pwm.v 
    2) basic_pwm_tb.v
  - ### Arduino implementation:
    1) PWM code
    2) Simulation:
        ![image](https://github.com/AbdullahMahmoudGhazal/PWM/assets/113705881/a039a774-b070-4d8f-ab5d-11815f01cf65)


