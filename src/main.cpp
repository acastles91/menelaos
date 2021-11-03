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

//#define CONFIG_ESP_INT_WDT_TIMEOUT_MS 1000

//Pinout


#define a1              27
#define a2              26
#define a3              18
#define a4              19
#define johnson         32
#define oe              14
#define clkPulse        12
#define index_a1        0
#define index_a2        1
#define index_a3        2 
#define index_a4        3
#define toggleOe        13
#define toggleAddress   5
#define triggerCounter  21
#define onesPin         23
#define tensPin         25
#define hundredsPin     4
#define thousandsPin    22
#define chA             5
#define chB             21
#define savePin         15
#define EEPROM_SIZE     1
#define bouncePin       34  
#define builtinLed      2

Value testValue;
Value savedValue;

//Switch

//Switch  pushButton = Switch(34);
//Switch pushButtonVCC = Switch(button, INPUT, HIGH); // button to VCC, 10k pull-down resistor, no internal pull-up resistor, HIGH polarity

//Bounce2

Bounce  bounce = Bounce();



ESP32Encoder  rotary;
unsigned long rotaryLastToggled;
bool rotaryPaused = false;
bool rotaryCheck = false;
int64_t rotaryPrev;
bool rotaryEnabled = false;
bool ledState = LOW;



// NVS

int32_t lastValue = 0;
nvs_handle_t my_handle;
esp_err_t err;


int storedValue = 0;
int readValue = 0;
volatile bool saveFlag = false;
volatile bool resetFlag = false;




//#define STORAGE_NAMESPACE "storage"

// #if CONFIG_IDF_TARGET_ESP32C3
// #define BOOT_MODE_PIN GPIO_NUM_9
// #else
// #define BOOT_MODE_PIN GPIO_NUM_0
// #endif //CONFIG_IDF_TARGET_ESP32C3


std::vector<int> addresses;
std::vector<std::tuple<int, int, int, int>> numbers;
enum Counter {ones, tens, hundreds, thousands};
std::vector<std::bitset<4>> valueVector2;
int testCounter;

volatile bool writingFlag = false;
volatile bool indexTuple = 0;
volatile int counter = 0;
volatile bool oeBool = false;
volatile int longCounter = 0;
volatile int unitIter = 0;
volatile Counter display = Counter::ones;
volatile bool counterChangeFlag = false;
volatile bool addFlag = false;
volatile bool changeMode;

int a1Value = 0;
int a2Value = 0;
int a3Value = 0;
int a4Value = 0;

std::tuple<int, int, int, int>  one = std::make_tuple(0,0,0,1);
std::tuple<int, int, int, int>  two = std::make_tuple(0,0,1,0);
std::tuple<int, int, int, int>  three = std::make_tuple(0,0,1,1);
std::tuple<int, int, int, int>  four = std::make_tuple(0,1,0,0);
std::tuple<int, int, int, int>  five = std::make_tuple(0,1,0,1);
std::tuple<int, int, int, int>  six = std::make_tuple(0,1,1,0);
std::tuple<int, int, int, int>  seven = std::make_tuple(0,1,1,1);
std::tuple<int, int, int, int>  eight = std::make_tuple(1,0,0,0);
std::tuple<int, int, int, int>  nine = std::make_tuple(1,0,0,1);
std::tuple<int, int, int, int>  zero = std::make_tuple(0,0,0,0);

hw_timer_t * timer = NULL;
hw_timer_t * timer2 = NULL;

portMUX_TYPE timerMux = portMUX_INITIALIZER_UNLOCKED;
volatile bool johnsonToggle = false;
void setupVectors(){

numbers.push_back(zero);
numbers.push_back(one);
numbers.push_back(two);
numbers.push_back(three);
numbers.push_back(four);
numbers.push_back(five);
numbers.push_back(six);
numbers.push_back(seven);
numbers.push_back(eight);
numbers.push_back(nine);

addresses.push_back(a1);
addresses.push_back(a2);
addresses.push_back(a3);
addresses.push_back(a4);

}

void IRAM_ATTR trigger555(){

  writingFlag = true;

  if (counter == 10){
    counter = 0;
  }
  Serial.println("--------------------");
  Serial.println("Vector values");
  a1Value = std::get<index_a1>(numbers[counter]);
  Serial.print(std::get<index_a1>(numbers[counter]));
  Serial.print(" ");
  a2Value = std::get<index_a2>(numbers[counter]);
  Serial.print(std::get<index_a2>(numbers[counter]));
  Serial.print(" ");
  a3Value = std::get<index_a3>(numbers[counter]);
  Serial.print(std::get<index_a3>(numbers[counter]));
  Serial.print(" ");
  a4Value = std::get<index_a4>(numbers[counter]);
  Serial.print(std::get<index_a4>(numbers[counter]));
  Serial.print(" ");
  Serial.println("");
  Serial.println("Counter");
  Serial.println(counter);
  counter += 1;
  Serial.println("--------------------");

  
}

void IRAM_ATTR trigger_counter(){

    //writingFlag = true;
    int testCounter = longCounter;
    std::vector<std::bitset<4>> valueVector;
    valueVector = testValue.dec_to_bin(testCounter);

    // Serial.println("Counter");
    // Serial.println(testCounter);

    // Serial.println("Length Value Vector");
    // Serial.println(valueVector.size());
    // Serial.println("--------------------");
    // Serial.println("Value Vector");
    // Serial.print(valueVector[0][0]);
    // Serial.print(" ");
    // Serial.print(valueVector[0][1]);
    // Serial.print(" ");
    // Serial.print(valueVector[0][2]);
    // Serial.print(" ");
    // Serial.print(valueVector[0][3]);
    // Serial.print("--");
    // Serial.print(valueVector[1][0]);
    // Serial.print(" ");
    // Serial.print(valueVector[1][1]);
    // Serial.print(" ");
    // Serial.print(valueVector[1][2]);
    // Serial.print(" ");
    // Serial.print(valueVector[1][3]);
    // Serial.print("--");
    // Serial.print(valueVector[2][0]);
    // Serial.print(" ");
    // Serial.print(valueVector[2][1]);
    // Serial.print(" ");
    // Serial.print(valueVector[2][2]);
    // Serial.print(" ");
    // Serial.print(valueVector[2][3]);
    // Serial.print("--");

    switch (display)
    {
    case ones:

    digitalWrite(a1, valueVector[0][0]);
    digitalWrite(a2, valueVector[0][1]);
    digitalWrite(a3, valueVector[0][2]);
    digitalWrite(a4, valueVector[0][3]);
    // Serial.print(valueVector[0][0]);
    // Serial.print(" ");
    // Serial.print(valueVector[0][1]);
    // Serial.print(" ");
    // Serial.print(valueVector[0][2]);
    // Serial.print(" ");
    // Serial.print(valueVector[0][3]);
    // Serial.print("--");

    display = Counter::tens;

      break;
    
    case tens:

    digitalWrite(a1, valueVector[1][0]);
    digitalWrite(a2, valueVector[1][1]);
    digitalWrite(a3, valueVector[1][2]);
    digitalWrite(a4, valueVector[1][3]);
    // Serial.print(valueVector[1][0]);
    // Serial.print(" ");
    // Serial.print(valueVector[1][1]);
    // Serial.print(" ");
    // Serial.print(valueVector[1][2]);
    // Serial.print(" ");
    // Serial.print(valueVector[1][3]);
    // Serial.print("--");

    display = Counter::ones;
      
      break;

    case hundreds:

    digitalWrite(a1, valueVector[2][0]);
    digitalWrite(a2, valueVector[2][1]);
    digitalWrite(a3, valueVector[2][2]);
    digitalWrite(a4, valueVector[2][3]);

    display = Counter::thousands;
      
      break;
    
    case thousands:

    digitalWrite(a1, valueVector[3][0]);
    digitalWrite(a2, valueVector[3][1]);
    digitalWrite(a3, valueVector[3][2]);
    digitalWrite(a4, valueVector[3][3]);

    display = Counter::ones;
      
      break;
    }   

}

void triggerNonIsr(){

    //writingFlag = true;
    int testCounter = longCounter;
    std::vector<std::bitset<4>> valueVector;
    valueVector = testValue.dec_to_bin(testCounter);

    //Serial.println("Counter");
    //Serial.println(testCounter);

    // Serial.println("Length Value Vector");
    // Serial.println(valueVector.size());
    // Serial.println("--------------------");
    // Serial.println("Value Vector");
    // Serial.print(valueVector[0][0]);
    // Serial.print(" ");
    // Serial.print(valueVector[0][1]);
    // Serial.print(" ");
    // Serial.print(valueVector[0][2]);
    // Serial.print(" ");
    // Serial.print(valueVector[0][3]);
    // Serial.print("--");
    // Serial.print(valueVector[1][0]);
    // Serial.print(" ");
    // Serial.print(valueVector[1][1]);
    // Serial.print(" ");
    // Serial.print(valueVector[1][2]);
    // Serial.print(" ");
    // Serial.print(valueVector[1][3]);
    // Serial.print("--");
    // Serial.print(valueVector[2][0]);
    // Serial.print(" ");
    // Serial.print(valueVector[2][1]);
    // Serial.print(" ");
    // Serial.print(valueVector[2][2]);
    // Serial.print(" ");
    // Serial.print(valueVector[2][3]);
    // Serial.print("--");

    switch (display)
    {
    case ones:

    //Serial.println("ones");
    digitalWrite(a1, valueVector[0][0]);
    digitalWrite(a2, valueVector[0][1]);
    digitalWrite(a3, valueVector[0][2]);
    digitalWrite(a4, valueVector[0][3]);
    // Serial.print(valueVector[0][0]);
    // Serial.print(" ");
    // Serial.print(valueVector[0][1]);
    // Serial.print(" ");
    // Serial.print(valueVector[0][2]);
    // Serial.print(" ");
    // Serial.print(valueVector[0][3]);
    // Serial.println("");
    display = Counter::tens;

      break;
    
    case tens:

    digitalWrite(a1, valueVector[1][0]);
    digitalWrite(a2, valueVector[1][1]);
    digitalWrite(a3, valueVector[1][2]);
    digitalWrite(a4, valueVector[1][3]);
    // Serial.println("tens");
    // Serial.print(valueVector[1][0]);
    // Serial.print(" ");
    // Serial.print(valueVector[1][1]);
    // Serial.print(" ");
    // Serial.print(valueVector[1][2]);
    // Serial.print(" ");
    // Serial.print(valueVector[1][3]);
    // Serial.println("");

    display = Counter::ones;
      
      break;

    case hundreds:

    digitalWrite(a1, valueVector[2][0]);
    digitalWrite(a2, valueVector[2][1]);
    digitalWrite(a3, valueVector[2][2]);
    digitalWrite(a4, valueVector[2][3]);

    display = Counter::thousands;
      
      break;
    
    case thousands:

    digitalWrite(a1, valueVector[3][0]);
    digitalWrite(a2, valueVector[3][1]);
    digitalWrite(a3, valueVector[3][2]);
    digitalWrite(a4, valueVector[3][3]);

    display = Counter::ones;     
      break;
    }   
}
void IRAM_ATTR toggle_oe(){

  oeBool = !oeBool;
  digitalWrite(oe, oeBool);
}

void IRAM_ATTR write_ones(){

  portENTER_CRITICAL_ISR(&timerMux);

    digitalWrite(a1, valueVector2[0][0]);
    digitalWrite(a2, valueVector2[0][1]);
    digitalWrite(a3, valueVector2[0][2]);
    digitalWrite(a4, valueVector2[0][3]);
    
  portEXIT_CRITICAL_ISR(&timerMux);

}

void IRAM_ATTR write_tens(){

  portENTER_CRITICAL_ISR(&timerMux);

    digitalWrite(a1, valueVector2[1][0]);
    digitalWrite(a2, valueVector2[1][1]);
    digitalWrite(a3, valueVector2[1][2]);
    digitalWrite(a4, valueVector2[1][3]);

    portEXIT_CRITICAL_ISR(&timerMux);

}

void IRAM_ATTR write_hundreds(){

  portENTER_CRITICAL_ISR(&timerMux);

    digitalWrite(a1, valueVector2[2][0]);
    digitalWrite(a2, valueVector2[2][1]);
    digitalWrite(a3, valueVector2[2][2]);
    digitalWrite(a4, valueVector2[2][3]);

  portEXIT_CRITICAL_ISR(&timerMux);

}

void IRAM_ATTR write_thousands(){

  portENTER_CRITICAL_ISR(&timerMux);

    digitalWrite(a1, valueVector2[3][0]);
    digitalWrite(a2, valueVector2[3][1]);
    digitalWrite(a3, valueVector2[3][2]);
    digitalWrite(a4, valueVector2[3][3]);

    portEXIT_CRITICAL_ISR(&timerMux);

}

void IRAM_ATTR write_All(Value& valueArg){


    //valueArg.numberValue = 97;
    switch (valueArg.counter)
    
    {
    case ones:

    digitalWrite(a1, valueArg.valueVector[0][0]);
    digitalWrite(a2, valueArg.valueVector[0][1]);
    digitalWrite(a3, valueArg.valueVector[0][2]);
    digitalWrite(a4, valueArg.valueVector[0][3]);

    valueArg.counter = Value::Counter::tens;

      break;
    
    case tens:

    digitalWrite(a1, valueArg.valueVector[1][0]);
    digitalWrite(a2, valueArg.valueVector[1][1]);
    digitalWrite(a3, valueArg.valueVector[1][2]);
    digitalWrite(a4, valueArg.valueVector[1][3]);


    valueArg.counter = Value::Counter::hundreds;
      
      break;

    case hundreds:

    digitalWrite(a1, valueArg.valueVector[2][0]);
    digitalWrite(a2, valueArg.valueVector[2][1]);
    digitalWrite(a3, valueArg.valueVector[2][2]);
    digitalWrite(a4, valueArg.valueVector[2][3]);

    valueArg.counter = Value::Counter::thousands;
      
      break;
    
    case thousands:

    digitalWrite(a1, valueArg.valueVector[3][0]);
    digitalWrite(a2, valueArg.valueVector[3][1]);
    digitalWrite(a3, valueArg.valueVector[3][2]);
    digitalWrite(a4, valueArg.valueVector[3][3]);

    valueArg.counter = Value::Counter::ones;
      
      break;

  }
}

void IRAM_ATTR toggle_a4(){

  a4Value = !a4Value;
  digitalWrite(a4, a4Value);

}

void timerDisplay(){

  portENTER_CRITICAL_ISR(&timerMux);
  //counterChangeFlag = true;
  //write_All(testValue);
  digitalWrite(johnson, !digitalRead(johnson));

  portEXIT_CRITICAL_ISR(&timerMux);

}

void counterTimer(){

  addFlag = true;

}

void checkRotary(){

  rotaryCheck = true;
}

int32_t readLastValue(){

// Open
    printf("\n");
    printf("Opening Non-Volatile Storage (NVS) handle... ");
    err = nvs_open("storage", NVS_READWRITE, &my_handle);
    if (err != ESP_OK) {
        printf("Error (%s) opening NVS handle!\n", esp_err_to_name(err));
    } else {
        printf("Done\n");
    
    // Read
        printf("Reading last value counter from NVS ... ");
         // value will default to 0, if not set yet in NVS
        err = nvs_get_i32(my_handle, "saved_value", &lastValue);
        switch (err) {
            case ESP_OK:
                printf("Done\n");
                printf("Last value = %d\n", lastValue);
                break;
            case ESP_ERR_NVS_NOT_FOUND:
                printf("The value is not initialized yet!\n");
                break;
            default :
                printf("Error (%s) reading!\n", esp_err_to_name(err));
        }
    return lastValue;
  }
}

void IRAM_ATTR saveLastValue(){

    //portENTER_CRITICAL_ISR(&timerMux);


    //printf("Updating saved value in NVS ... ");
    err = nvs_set_i32(my_handle, "saved_value", testValue.numberValue);
    //printf((err != ESP_OK) ? "Failed!\n" : "Done\n");

    // Commit written value.
    // After setting any values, nvs_commit() must be called to ensure changes are written
    // to flash storage. Implementations may write to storage at other times,
    // but this is not guaranteed.
    //printf("Committing updates in NVS ... ");
    err = nvs_commit(my_handle);
    //printf((err != ESP_OK) ? "Failed!\n" : "Done\n");

    // Close
    nvs_close(my_handle);

    Serial.println("Valued saved from function saveLastValue");

    //portENTER_CRITICAL_ISR(&timerMux);


}

void IRAM_ATTR saveShutdown(){

  portENTER_CRITICAL_ISR(&timerMux);
  
  saveFlag = true;

  portEXIT_CRITICAL_ISR(&timerMux);

  // nvs_handle my_handle;
  // esp_err_t err;

  // err = nvs_open(STORAGE_NAMESPACE, NVS_READWRITE, &my_handle);
  // if (err != ESP_OK) return err;

  // // Read
  // int32_t restart_counter = 0; // value will default to 0, if not set yet in NVS
  // err = nvs_get_i32(my_handle, "restart_conter", &restart_counter);
  // if (err != ESP_OK && err != ESP_ERR_NVS_NOT_FOUND) return err;

  // // Write
  // restart_counter++;
  // err = nvs_set_i32(my_handle, "restart_conter", restart_counter);
  // if (err != ESP_OK) return err;

  // // Commit written value.
  // // After setting any values, nvs_commit() must be called to ensure changes are written
  // // to flash storage. Implementations may write to storage at other times,
  // // but this is not guaranteed.
  // err = nvs_commit(my_handle);
  // if (err != ESP_OK) return err;

  // // Close
  // nvs_close(my_handle);
  // return ESP_OK;

}

void IRAM_ATTR powerUpTest(){

  portENTER_CRITICAL_ISR(&timerMux);

  timerAttachInterrupt(timer2, &checkRotary, true);
  timerAlarmWrite(timer2, 5000, true);
  timerAlarmEnable(timer2);

  portEXIT_CRITICAL_ISR(&timerMux);

}

void setup() {

  Serial.begin(115200);

  err = nvs_flash_init();

  // Initialize NVS

    // if (err == ESP_ERR_NVS_NO_FREE_PAGES || err == ESP_ERR_NVS_NEW_VERSION_FOUND) {
    //     // NVS partition was truncated and needs to be erased
    //     // Retry nvs_flash_init
    //     ESP_ERROR_CHECK(nvs_flash_erase());
    //     err = nvs_flash_init();
    // }
    // ESP_ERROR_CHECK( err );


  ESP32Encoder::useInternalWeakPullResistors=UP;

  //rotary.attachHalfQuad(chA, chB);
  
  pinMode(chA, INPUT_PULLDOWN);
  pinMode(chB, INPUT_PULLDOWN);
  pinMode(a1, OUTPUT);
  pinMode(a2, OUTPUT);
  pinMode(a3, OUTPUT);
  pinMode(a4, OUTPUT);
  pinMode(oe, OUTPUT);
  pinMode(johnson, OUTPUT);
  pinMode(onesPin, INPUT);
  pinMode(tensPin, INPUT);
  pinMode(hundredsPin, INPUT);
  pinMode(thousandsPin, INPUT);
  pinMode(builtinLed, OUTPUT);

  rotary.attachSingleEdge(chA, chB);
  rotary.setCount(0); //??
  rotary.clearCount();
  rotaryLastToggled = millis();

  changeMode = true;
  
  //attachInterrupt(clkPulse, trigger555, RISING);
  //attachInterrupt(toggleOe, toggle_oe, RISING);    
  attachInterrupt(onesPin, write_ones, RISING);
  attachInterrupt(tensPin, write_tens, RISING); 
  attachInterrupt(hundredsPin, write_hundreds, RISING);
  attachInterrupt(thousandsPin, write_thousands, RISING);
  attachInterrupt(savePin, saveShutdown, RISING);  
  //attachInterrupt(savePin, powerUpTest, FALLING);  

  //attachInterrupt(toggleAddress, toggle_a4, RISING);
  //attachInterrupt(triggerCounter, trigger_counter, RISING);
  
  timer = timerBegin(0, 80, true);
  timerAttachInterrupt(timer, &timerDisplay, true);
  //timerAlarmWrite(timer, 2000, true);
  timerAlarmWrite(timer, 2000, true);
  timerAlarmEnable(timer);

  //Test counter
  timer2 = timerBegin(1, 80, true);
  timerAttachInterrupt(timer2, &counterTimer, true);
  timerAlarmWrite(timer2, 100000, true);
  timerAlarmEnable(timer2);


  // Encoder check

  // timer2 = timerBegin(1, 80, true);
  // timerAttachInterrupt(timer2, &checkRotary, true);
  // timerAlarmWrite(timer2, 5000, true);
  // timerAlarmEnable(timer2);
  // rotaryEnabled = true;

  setupVectors();
  digitalWrite(johnson, johnsonToggle);

  rotaryPrev = rotary.getCount();
  int32_t lastValueArgument = readLastValue();
  
  testValue.setNumber(lastValueArgument);
  rotary.setCount(lastValueArgument);

  bounce.attach(bouncePin, INPUT);
  bounce.interval(5);
  digitalWrite(builtinLed, ledState);
  digitalWrite(chA, LOW);
  


  //readValue = EEPROM.read(0);

  //Serial.println("EEPROM Value = " + String((int)EEPROM.read(0)));



}

void loop() {

  valueVector2 = testValue.valueVector;

  if(changeMode){
    valueVector2 = testValue.valueVector;
    changeMode = false;
  }

  if (saveFlag){
    //Serial.println("Save flag triggered");
    saveLastValue();
    // EEPROM.write(0, testValue.numberValue);
    // EEPROM.commit();


    if(rotaryEnabled){
      timerAlarmDisable(timer2);		// stop alarm
      timerDetachInterrupt(timer2);
      timerEnd(timer2);
      rotaryEnabled = false;
      rotary.pauseCount();
      Serial.println("Rotary disabled");

      }

    else{

      timer2 = timerBegin(1, 80, true);
      timerAttachInterrupt(timer2, &checkRotary, true);
      timerAlarmWrite(timer2, 5000, true);
      timerAlarmEnable(timer2);
      rotaryEnabled = true;
      rotary.resumeCount();
      Serial.println("Rotary enabled");


    }
    // timerAttachInterrupt(timer2, &checkRotary, true);
    // timerAlarmWrite(timer2, 5000, true);
    // timerAlarmEnable(timer2);
    saveFlag = false;

  }


  //Test counter
  
  if (addFlag){
      
      Serial.println(testValue.numberValue);
      testValue.addNumber(1);
      Serial.println(testValue.numberValue);
      Serial.println(testValue.addedNumber);
      Serial.println(testValue.getNumberValue());
      addFlag = false;
  }

  
  if (rotaryCheck){

    if (rotary.getCount() != rotaryPrev){
      

      Serial.println(testValue.numberValue);
      testValue.addNumber((int32_t)rotary.getCount() - (int32_t)rotaryPrev);
      Serial.println("Rotary count: " + String((int32_t)rotary.getCount()));
      Serial.println("Number value Rotary: " + String(testValue.numberValue));
      rotaryPrev = rotary.getCount();
    }
  }
  
  rotaryCheck = false;

  //bounce poll

  bounce.update();

  // <Bounce>.changed() RETURNS true IF THE STATE CHANGED (FROM HIGH TO LOW OR LOW TO HIGH)
  if ( bounce.changed() ) {
    // THE STATE OF THE INPUT CHANGED
    // GET THE STATE
    int deboucedInput = bounce.read();
    // IF THE CHANGED VALUE IS LOW
    if ( deboucedInput == LOW ) {
      ledState = !ledState; // SET ledState TO THE OPPOSITE OF ledState
      digitalWrite(builtinLed,ledState); // WRITE THE NEW ledState
    }
  }

  //Serial.println("Encoder count = " + String((int32_t)rotary.getCount()));
}