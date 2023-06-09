String msg;
#include <Wire.h>
#include <Adafruit_PWMServoDriver.h>

Adafruit_PWMServoDriver pwm = Adafruit_PWMServoDriver();  // Initiates library.
#define MIN_PULSE_WIDTH 650
#define MAX_PULSE_WIDTH 2350
#define DEFAULT_PULSE_WIDTH 1500
#define FREQUENCY 60

// define the pin that the flex sensor is connected to
const int thumb = A0;
const int index = A1;
const int middle = A2;
const int ring = A3;
const int pinky = A4;
// define the minimum and maximum values for the flex sensor
const int FLEX_MIN = 0;
const int FLEX_MAX = 1023;

// define the minimum and maximum values for the servo
const int SERVO_MIN = 150;
const int SERVO_MAX = 600;

void setup() {
  Serial.begin(9600);  // initialize serial communication at 9600 bits per second
  pinMode(LED_BUILTIN, OUTPUT);

  pwm.begin();         // Sends PWM signals.
  pwm.setPWMFreq(60);  // Makes servos run at 60 Hz rate.
  delay(20);
}

void loop() {
  if (Serial.available() > 0) {          // if there is data available on the serial port
    msg = Serial.readStringUntil('\n');  // read the message as a character
    if (msg == "emg") {
      Serial.write("EMG Mode");

      while (true) {
        if (Serial.available() > 0) {
          msg = Serial.readStringUntil('\n');
          if (msg == "0") {
            Serial.write("Hand Open");
            pwm.setPWM(0, 0, 150);  //thumb
            delay(100);
            pwm.setPWM(2, 0, 150);  //index
            delay(100);
            pwm.setPWM(4, 0, 150);  //Middle
            delay(100);
            pwm.setPWM(6, 0, 600);  //Ring
            delay(100);
            pwm.setPWM(8, 0, 600);  //Pinky
            delay(100);
            break;
          }
          if (msg == "1") {
            Serial.write("Hand Close");
            pwm.setPWM(0, 0, 600);  //thumb
            delay(100);
            pwm.setPWM(2, 0, 600);        //index
            delay(100);
            pwm.setPWM(4, 0, 600);  //Middle
            delay(100);
            pwm.setPWM(6, 0, 150);         //Ring
            delay(100);
            pwm.setPWM(8, 0, 150);         //Pinky
            delay(100);
            break;
          }
          if (msg == "2") {
            Serial.write("Exiting...");
            break;
          }
        }
      }

    } else if (msg == "cli") {  // if the message is '2'
      Serial.write("CLI Mode (Enter ex to Exit)");
      while (true)
        if (Serial.available() > 1) {
          msg = Serial.readStringUntil('\n');
          if (msg == "open") {
            Serial.write("Hand Open");
            pwm.setPWM(0, 0, 150);  //thumb
            delay(100);
            pwm.setPWM(2, 0, 150);  //index
            delay(100);
            pwm.setPWM(4, 0, 150);  //Middle
            delay(100);
            pwm.setPWM(6, 0, 600);  //Ring
            delay(100);
            pwm.setPWM(8, 0, 600);  //Pinky
            delay(100);
          }
          if (msg == "close") {
            Serial.write("Hand Close");
            pwm.setPWM(0, 0, 600);  //thumb
            delay(100);
            pwm.setPWM(2, 0, 600);        //index
            delay(100);
            pwm.setPWM(4, 0, 600);  //Middle
            delay(100);
            pwm.setPWM(6, 0, 150);         //Ring
            delay(100);
            pwm.setPWM(8, 0, 150);         //Pinky
            delay(100);
          }
          if (msg == "peace") {
            Serial.write("Peace Sign");
            pwm.setPWM(0, 0, 600);  //thumb
            delay(100);
            pwm.setPWM(2, 0, 150);        //index
            delay(100);
            pwm.setPWM(4, 0, 150);  //Middle
            delay(100);
            pwm.setPWM(6, 0, 150);         //Ring
            delay(100);
            pwm.setPWM(8, 0, 150);         //Pinky
            delay(100);
          }
          if (msg == "mf") {
            Serial.write("Mid F");
            pwm.setPWM(0, 0, 600);  //thumb
            delay(100);
            pwm.setPWM(2, 0, 600);        //index
            delay(100);
            pwm.setPWM(4, 0, 150);  //Middle
            delay(100);
            pwm.setPWM(6, 0, 150);         //Ring
            delay(100);
            pwm.setPWM(8, 0, 150);         //Pinky
            delay(100);
          }
          if (msg == "ex") {
            Serial.write("Exiting...");
            break;
          }
        }
    }

  } else if (msg == "flex") {

    Serial.write("Flex Mode (ENTER 2 TO Exit)");
    while (true) {
      int val_thumb = analogRead(thumb);
      int val_index = analogRead(index);
      int val_mid = analogRead(middle);
      int val_ring = analogRead(ring);
      int val_pinky = analogRead(pinky);

      int servoValue_thumb = map(val_thumb, FLEX_MIN, FLEX_MAX, SERVO_MIN, SERVO_MAX);
      int servoValue_in = map(val_index, FLEX_MIN, FLEX_MAX, SERVO_MIN, SERVO_MAX);
      int servoValue_mid = map(val_mid, FLEX_MIN, FLEX_MAX, SERVO_MIN, SERVO_MAX);
      int servoValue_ring = map(val_ring, FLEX_MIN, FLEX_MAX, SERVO_MAX, SERVO_MIN);
      int servoValue_pinky = map(val_pinky, FLEX_MIN, FLEX_MAX, SERVO_MAX, SERVO_MIN);
      pwm.setPWM(0, 0, servoValue_thumb);
      pwm.setPWM(2, 0, servoValue_in);
      pwm.setPWM(4, 0, servoValue_mid);
      pwm.setPWM(6, 0, servoValue_ring);
      pwm.setPWM(8, 0, servoValue_pinky);
      if (Serial.available() > 0) {
        msg = Serial.readStringUntil('\n');
        if (msg == "2") {
          Serial.write("Exiting...");
          break;
        }
      }
    }
  }
}