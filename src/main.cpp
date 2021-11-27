#include <Arduino.h>
#include <iostream>
#include "bcd.h"
#include <ESP32Encoder.h>
#define USE_SERIAL Serial
#include "EEPROM.h"
#include <stdio.h>
#include "freertos/FreeRTOS.h"
#include "freertos/task.h"
#include "esp_system.h"
#include "nvs_flash.h"
#include "nvs.h"
#include "driver/gpio.h"
#include "avdweb_Switch/avdweb_Switch.h"
#include "Bounce2.h"
#include "pinout.h"
#include "functions.h"
#include "variables.h"
#include "mode.h"
#include "soc/soc.h"
#include "soc/rtc_cntl_reg.h"
#include "WiFi.h"
#include <esp_task_wdt.h>
#include "soc/rtc_wdt.h"

#define WDT_TIMEOUT   3
#define FREQ          5000
#define BASIC_SETUP
#define SETUP_PINMODE
#define SETUP_NVS
#define SETUP_INTERRUPTS
#define SETUP_TIMERS
#define SETUP_DISPLAY_PWM
//#define SETUP_DISPLAY_INTERRUPT
#define SETUP_WRITE_OUTPUTS
#define SETUP_ENCODER
#define SETUP_MODE
#define SETUP_DEBOUNCERS
//#define SETUP_WRITE_FLAGS
//#define SETUP_BLINK
#define SET_MODE

//#define SETUP_TEST_COUNTER


void setup() {

  #ifdef  BASIC_SETUP

  Serial.begin(115200);
  esp_task_wdt_init(WDT_TIMEOUT, true);
  esp_task_wdt_add(NULL);
  WRITE_PERI_REG(RTC_CNTL_BROWN_OUT_REG, 0); //disable   detector
  WiFi.mode(WIFI_MODE_NULL);
  btStop();
  displayedValue = dec_to_bin(8888);
  gpio_pullup_en(GPIO_NUM_15);

  #endif

  #ifdef  SETUP_PINMODE
  // //PinMode
  pinMode(chA, INPUT_PULLDOWN);
  pinMode(chB, INPUT_PULLDOWN);
  pinMode(a1, OUTPUT);
  pinMode(a2, OUTPUT);
  pinMode(a3, OUTPUT);
  pinMode(a4, OUTPUT);
  pinMode(dp, OUTPUT);
  pinMode(johnson, OUTPUT);
  pinMode(onesPin, INPUT);
  pinMode(tensPin, INPUT);
  pinMode(hundredsPin, INPUT);
  pinMode(thousandsPin, INPUT);
  pinMode(builtinLed, OUTPUT);
  pinMode(zeroFunc, OUTPUT);
  pinMode(configPin, OUTPUT);
  pinMode(modePin, OUTPUT);
  pinMode(unused, OUTPUT);

  #endif
  
  //NVS
  #ifdef SETUP_NVS

  err = nvs_flash_init();
  if (err == ESP_ERR_NVS_NO_FREE_PAGES || err == ESP_ERR_NVS_NEW_VERSION_FOUND) {
    // NVS partition was truncated and needs to be erased
    // Retry nvs_flash_init
    ESP_ERROR_CHECK(nvs_flash_erase());
    err = nvs_flash_init();
    }
  ESP_ERROR_CHECK( err );
  int32_t lastValueArgument = readLastValue();
  value.setNumber(lastValueArgument);

  err2 = nvs_flash_init();
  if (err2 == ESP_ERR_NVS_NO_FREE_PAGES || err == ESP_ERR_NVS_NEW_VERSION_FOUND) {
    ESP_ERROR_CHECK(nvs_flash_erase());
    err2 = nvs_flash_init();
    }
  ESP_ERROR_CHECK(err2);
  int32_t lastPaperValue = readLastPaperValue();
  oldPaperLength = lastPaperValue;
  zeroFlag = false;
  
  #endif
  
  #ifdef SETUP_INTERRUPTS
  // Interrupts and timers

  attachInterrupt(thousandsPin, write_hundreds, RISING);
  attachInterrupt(onesPin, write_tens, RISING); 
  attachInterrupt(tensPin, write_ones, RISING);
  attachInterrupt(hundredsPin, write_thousands, RISING);
  attachInterrupt(savePin, shutDown, RISING); 
  esp_sleep_enable_ext0_wakeup(GPIO_NUM_15, LOW);


  #endif

  #ifdef SETUP_DISPLAY_INTERRUPT

  timer = timerBegin(0, 80, true);
  timerAttachInterrupt(timer, &timerDisplay, true);
  timerAlarmWrite(timer, 500000, true);
  timerAlarmEnable(timer);

  #endif

  #ifdef SETUP_DISPLAY_PWM

  frequency = 4000;
  setupPwm(pwmChannel, frequency, resolution);

  #endif

  #ifdef SETUP_TIMERS

  timer2 = timerBegin(1, 80, true);
  timerAttachInterrupt(timer2, &checkRotary, true);
  timerAlarmWrite(timer2, 10000, true);
  timerAlarmEnable(timer2);

  #endif

  #ifdef  SETUP_WRITE_OUTPUTS

  // Turn off outputs

  digitalWrite(a1, LOW);
  digitalWrite(a2, LOW);
  digitalWrite(a3, LOW);
  digitalWrite(a4, LOW);
  //digitalWrite(johnson, LOW);
  digitalWrite(builtinLed, LOW);
  digitalWrite(zeroFunc, LOW);
  digitalWrite(configPin, LOW);
  digitalWrite(modePin, LOW);
  digitalWrite(unused, LOW);

  #endif

  #ifdef SETUP_ENCODER
  // //Rotary setup
  
  ESP32Encoder::useInternalWeakPullResistors = UP; // Enable the weak pull down resistors
  rotary.attachSingleEdge(chA, chB);
  //rotary.attachSingleEdge(chA,chB);  // Attach pins for use as encoder pins
  rotary.setCount(0); //??
  rotary.clearCount();//
  rotaryPrev = 0;
  //rotaryPrev = rotary.getCount();
  rotaryLastToggled = millis();
  rotaryEnabled = true;

  #endif

  #ifdef  SETUP_DEBOUNCERS

    //Bounces

  bounceZero.attach(zeroFunc, INPUT);
  bounceZero.interval(5);
  bounceConfig.attach(configPin, INPUT);
  bounceConfig.interval(5);
  bounceMode.attach(modePin, INPUT);
  bounceMode.interval(5);

  #endif

  #ifdef SETUP_WRITE_FLAGS

  // //flags
  saveFlag = false;
  changeMode = true;

 

  ledState = false;

  #endif

  #ifdef SETUP_TEST_COUNTER
  
  timer = timerBegin(0, 80, true);
  timerAttachInterrupt(timer, &timerDisplay, true);
  timerAlarmWrite(timer, 500000, true);
  timerAlarmEnable(timer);

  //Test counter
  // timer2 = timerBegin(1, 80, true);
  // timerAttachInterrupt(timer2, &counterTimer, true);
  // timerAlarmWrite(timer2, 100000, true);
  // timerAlarmEnable(timer2);

  #endif

#ifdef SETUP_MODE

  
  mode = (digitalRead(modePin)) ? Mode::Remaining : Mode::Taken;

  setModeFlag = false;
  fastFlag = false;
  sum = 1;

#endif


  #ifdef  SETUP_BLINK


  for (int i = 0; i < 6; i ++){
    ledState = !ledState; // SET ledState TO THE OPPOSITE OF ledState
    digitalWrite(builtinLed,ledState); // WRITE THE NEW ledState
    delayMicroseconds(250000);
    Serial.println("Aqui");
  }
  #endif
  // digitalWrite(unused, LOW);
  //Serial.println(value.getRemainingValue());
  rotaryPrev = 0;

}

void loop() {


  //This restarts the watchdog timer
esp_task_wdt_reset();

#ifdef SET_MODE

while(mode == Mode::Set){
  esp_task_wdt_reset();
  int32_t currentMillis = millis();

  plusFlag = (digitalRead(modePin)) ? false : true;

  if(currentMillis - startTimer  > 10000 ){
    setModeFlag = false;
    printf("Current Millis: %d \n Start timer: %d\n", currentMillis, startTimer);
  }

  if (!setModeFlag){
    frequency = 4000;
    setupPwm(pwmChannel, frequency, resolution);
    mode = (digitalRead(modePin)) ? Mode::Remaining : Mode::Taken;
  }
  //Serial.println(ESP.getFreeHeap());
  displayedValue = dec_to_bin(newPaperLength / 10); 
  bounceMode.update();
  bounceZero.update();
  bounceConfig.update();

  // if (bounceMode.changed()) {
  //   startTimer = millis();
  //   if (bounceMode.read()){
  //     plusFlag = false;  
  //     Serial.println("plusFlag: LOW"); 
  //   }
  //   else{
  //     plusFlag = true;
  //     Serial.println("plusFlag: HIGH"); 
  //   }
  // }

  if (bounceZero.fell()){
    startTimer = millis();
    while (!digitalRead(zeroFunc) && plusFlag){
      startTimer = millis();
      newPaperLength +=sum;
      if (!fastFlag){
        delayTime = 30000;
      }
      else if (fastFlag){
        delayTime = 2000;
      }
      else if (veryFastFlag){
        delayTime = 100;
      }
      delayMicroseconds(delayTime);
      rtc_wdt_feed();
      displayedValue = dec_to_bin(newPaperLength / 10); 
      esp_task_wdt_reset();
      if (bounceZero.currentDuration() > 1000){
          fastFlag = true;
          veryFastFlag = false;
        }
      else{
        fastFlag = false;
        veryFastFlag = false;
      }
      if (fastFlag && bounceZero.currentDuration() > 4000){
        veryFastFlag = true;
      }
      if (newPaperLength > 100000){
        newPaperLength = 99999;
        }
      }
    while (!digitalRead(zeroFunc) && !plusFlag){
      startTimer = millis();
      newPaperLength -=sum;
      startTimer = millis();
      if (!fastFlag){
        delayTime = 30000;
      }
      else if (fastFlag){
        delayTime = 2000;
      }
      else if (veryFastFlag){
        delayTime = 100;
      }
      delayMicroseconds(delayTime);
      rtc_wdt_feed();
      displayedValue = dec_to_bin(newPaperLength / 10); 
      esp_task_wdt_reset();

      if (bounceZero.currentDuration() > 1000){
          fastFlag = true;
          veryFastFlag = false;
        }
      else if(fastFlag && bounceZero.currentDuration() > 4000){
        fastFlag = false;
        veryFastFlag == true;
      }
      if (newPaperLength < 1 ){
        newPaperLength = 0;
        }
      } 
    }
    fastFlag = false;
    veryFastFlag = false;
    
  if (bounceConfig.changed()){
    startTimer = millis();
    while (!digitalRead(configPin) && setModeFlag) {
      Serial.println(bounceConfig.currentDuration());
      Serial.println(digitalRead(configPin));
      if (bounceConfig.currentDuration() > 1000){
        rtc_wdt_feed();
        Serial.println("Aqui");
        plusFlag = digitalRead(modePin);
        oldPaperLength = newPaperLength;
        value.changePaper(newPaperLength);
        //esp_sleep_disable_wakeup_source(ESP_SLEEP_WAKEUP_GPIO = 15);
        //esp_sleep_disable_wakeup_source(GPIO_NUM_15);
        detachInterrupt(GPIO_NUM_15);
        detachInterrupt(GPIO_NUM_4);
        detachInterrupt(GPIO_NUM_23);
        detachInterrupt(GPIO_NUM_25);
        detachInterrupt(GPIO_NUM_22);
        ledcDetachPin(GPIO_NUM_32);

        err2 = nvs_set_i32(paperHandle, "paper_value", newPaperLength);
        err2 = nvs_commit(paperHandle);
        nvs_close(paperHandle);
        Serial.println("Paper value saved");
        
        attachInterrupt(thousandsPin, write_hundreds, RISING);
        attachInterrupt(onesPin, write_tens, RISING); 
        attachInterrupt(tensPin, write_ones, RISING);
        attachInterrupt(hundredsPin, write_thousands, RISING);
        attachInterrupt(savePin, shutDown, RISING); 
        Serial.println("En el loop");
        setModeFlag = false;
      }
      Serial.println("Fuera del loop");
    }
  }
}
#endif

#ifdef SETUP_MODE

switch(mode){
    case Mode::Remaining:  {
      displayedValue = value.remainingValueVector;
      }
    break;
    case Mode::Taken:  {
      displayedValue = value.takenValueVector;
    }
    break;
  }
  if(changeMode){
    Serial.println("Mode changed");
    changeMode = false;
    switch (mode){
      case Mode::Remaining:{
        mode = Mode::Taken;
        Serial.println("Mode taken");
        //value.updateValues((int32_t)rotaryPrev);
      }
      break;
      case Mode::Taken:{
        mode = Mode::Remaining;
        Serial.println("Mode remaining");
        //value.updateValues((int32_t)rotaryPrev * -1);
      }
      break;
    }
  }

#endif

#ifdef SETUP_NVS


    if (shutDownFlag){
      //detachInterrupt(savePin);
      //rtc_wdt_feed();
      //vTaskDelay(pdMS_TO_TICKS(100));
      detachInterrupt(GPIO_NUM_15);
      detachInterrupt(GPIO_NUM_4);
      detachInterrupt(GPIO_NUM_23);
      detachInterrupt(GPIO_NUM_25);
      detachInterrupt(GPIO_NUM_22);
      ledcDetachPin(GPIO_NUM_32);
      shutDownFlag = false;
      rtc_wdt_feed();
      saveLastValue2();
      ledState = !ledState; // SET ledState TO THE OPPOSITE OF ledState
      digitalWrite(builtinLed,ledState); // WRITE THE NEW ledState  
      ledState = !ledState; // SET ledState TO THE OPPOSITE OF ledState
      digitalWrite(builtinLed,ledState); // WRITE THE NEW ledState
      displayedValue = dec_to_bin(8888);
      esp_deep_sleep_start();
    }

    #endif

#ifdef SETUP_ENCODER
  
  if (rotaryCheck){

    if (rotary.getCount() != rotaryPrev){
      if (rotary.getCount() > rotaryPrev){
        value.addNumber(1);
        value.updateValues(-1);
      } 
      else if (rotary.getCount() < rotaryPrev){
        value.addNumber(-1);
        value.updateValues(1);
      }
      rotaryPrev = rotary.getCount();
    }
    rotaryCheck = false;
  }

#endif

#ifdef SETUP_DEBOUNCERS

  bounceZero.update();
  bounceConfig.update();
  bounceMode.update();

    if ( bounceMode.changed()) {
      changeMode = true;  
    }
  
  if ( bounceZero.changed() && mode == Mode::Taken) {
        esp_task_wdt_reset();
        value.resetTakenValue();
        zeroFlag = false;
  }
  if (bounceConfig.changed()){
    while (!digitalRead(configPin) && !setModeFlag) {
      Serial.println(bounceConfig.currentDuration());
      esp_task_wdt_reset();
      if (bounceConfig.currentDuration() > 5000){
        esp_task_wdt_reset();
        Serial.println("Aqui");
        mode = Mode::Set;
        ledcDetachPin(johnson);
        frequency = 100;
        setupPwm(pwmChannel, frequency, resolution);
        plusFlag = digitalRead(modePin);
        setModeFlag = true;
        newPaperLength = oldPaperLength;
        startTimer = millis();
      }
    }
  }
}
//}
#endif



//   //Flags

  
//   //   //Serial.println("Save flag triggered");
//   //   // EEPROM.write(0, testValue.remainingValue);
//   //   // EEPROM.commit();

  // if (saveFlag){

  //   //ESP.deepSleep(0);

  // }

//   //Serial.println("number value: " + String(value.remainingValue));
  

//   //     //timerAlarmDisable(timer2);		// stop alarm
//   // //timerAlarmDisable(timer);
//   // //timerDetachInterrupt(timer2);
//   // //timerDetachInterrupt(timer);
//   //   timerEnd(timer2);
//   //   timerEnd(timer);
//   //   saveLastValue();
//   //   saveFlag = false;


//   //   //if(rotaryEnabled){
      
//   //     // timerAlarmDisable(timer2);		// stop alarm
//   //     // timerAlarmDisable(timer);
//   //     // timerDetachInterrupt(timer2);
//   //     // timerDetachInterrupt(timer);
//   //     // timerEnd(timer2);
//   //     // timerEnd(timer);

//   //     //rotaryEnabled = false;
//   //     //rotary.pauseCount();
//   //     //Serial.println("Rotary disabled");

//   //     //}

//   //   // else{

//   //   //   timer2 = timerBegin(1, 80, true);
//   //   //   timerAttachInterrupt(timer2, &checkRotary, true);
//   //   //   timerAlarmWrite(timer2, 5000, true);
//   //   //   timerAlarmEnable(timer2);
//   //   //   rotaryEnabled = true;
//   //   //   rotary.resumeCount();
//   //   //   Serial.println("Rotary enabled");

//   //   // }
//   //   // timerAttachInterrupt(timer2, &checkRotary, true);
//   //   // timerAlarmWrite(timer2, 5000, true);
//   //   // timerAlarmEnable(timer2);

//   // }

//   //Test counter
  
//   // if (addFlag){
      
//   //     Serial.println(testValue.remainingValue);
//   //     testValue.addNumber(1);
//   //     Serial.println(testValue.remainingValue);
//   //     Serial.println(testValue.addedNumber);
//   //     Serial.println(testValue.getremainingValue());
//   //     addFlag = false;
//   // }

// 
  //Serial.println("Encoder count = " + String((int32_t)rotary.getCount()));
