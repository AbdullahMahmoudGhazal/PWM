// Pin connected to the PWM output
const int pwmPin = 9;

void setup() {
  // Initialize the PWM pin as an output
  pinMode(pwmPin, OUTPUT);
}

void loop() {
  // Increase the PWM duty cycle (brightness) from 0 to 255
  for (int dutyCycle = 0; dutyCycle <= 255; dutyCycle++) {
    analogWrite(pwmPin, dutyCycle);
    delay(10); // Adjust the delay as needed for the desired effect
  }

  // Decrease the PWM duty cycle (brightness) from 255 to 0
  for (int dutyCycle = 255; dutyCycle >= 0; dutyCycle--) {
    analogWrite(pwmPin, dutyCycle);
    delay(10); // Adjust the delay as needed for the desired effect
  }
}