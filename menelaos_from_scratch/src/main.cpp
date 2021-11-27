#include <Arduino.h>
#include "pinout.h"


bool ledState;

void setup() {

//LED

pinMode(builtinLed, OUTPUT);

ledState = false;

  for (int i = 0; i < 6; i ++){
    ledState = !ledState; // SET ledState TO THE OPPOSITE OF ledState
    digitalWrite(builtinLed,ledState); // WRITE THE NEW ledState
    delayMicroseconds(250000);
    Serial.println("Aqui");
  }

}


void loop() {
  // put your main code here, to run repeatedly:
}