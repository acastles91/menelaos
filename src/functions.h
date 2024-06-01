#include "variables.h"

//Functions


void setupVectors();
void IRAM_ATTR trigger555();
void IRAM_ATTR trigger_counter();
void triggerNonIsr();
void IRAM_ATTR toggle_oe();
void IRAM_ATTR write_ones();
void IRAM_ATTR write_tens();
void IRAM_ATTR write_hundreds();
void IRAM_ATTR write_thousands();
void IRAM_ATTR write_All(Value& valueArg);
void IRAM_ATTR toggle_a4();
void timerDisplay();
void counterTimer();
void checkRotary();
int32_t readLastValue();
int32_t readLastPaperValue();
void IRAM_ATTR saveLastValue();
void IRAM_ATTR saveShutdown();
void IRAM_ATTR powerUpTest();
void IRAM_ATTR shutDown();
void setupPwm(int chArg, int freqArg, int resArg);

void setupPwm(int chArg, int freqArg, int resArg){

  ledcSetup(pwmChannel, frequency, resolution);
  ledcAttachPin(johnson, pwmChannel);
  ledcWrite(pwmChannel, 127);

}


std::vector<std::bitset<4>> dec_to_bin(int n);

std::vector<std::bitset<4>> dec_to_bin(int n){
    std::vector<std::bitset<4>> repr;
    int32_t provisionalValue = n;
    if (provisionalValue == 0){
        std::bitset<4> bitset0, bitset1, bitset2, bitset3;
        repr.push_back(bitset0);
        repr.push_back(bitset1);
        repr.push_back(bitset2);
        repr.push_back(bitset3);
    }
    else if (provisionalValue < 10){
        while(provisionalValue > 0){
            repr.push_back(std::bitset<4>(provisionalValue % 10));
            provisionalValue /= 10;
        }
        std::bitset<4> bitset0, bitset1, bitset2;
        repr.push_back(bitset0);
        repr.push_back(bitset1);
        repr.push_back(bitset2);
    }
    else if (provisionalValue < 100){
        while(provisionalValue > 0){
            repr.push_back(std::bitset<4>(provisionalValue % 10));
            provisionalValue /= 10;
        }
        std::bitset<4> bitset0, bitset1;
        repr.push_back(bitset0);
        repr.push_back(bitset1);  
    }
    else if (provisionalValue < 1000){
        while(provisionalValue > 0){
            repr.push_back(std::bitset<4>(provisionalValue % 10));
        provisionalValue /= 10;
        }
        std::bitset<4> bitset0;
        repr.push_back(bitset0); 
    }
    else if (provisionalValue < 10000){
        while(provisionalValue > 0){
            repr.push_back(std::bitset<4>(provisionalValue % 10));
            provisionalValue /= 10;
        }
    }
    return repr;
}

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
    std::vector<std::bitset<4>> remainingValueVector;
    remainingValueVector = value.dec_to_bin(testCounter);

    // Serial.println("Counter");
    // Serial.println(testCounter);

    // Serial.println("Length Value Vector");
    // Serial.println(remainingValueVector.size());
    // Serial.println("--------------------");
    // Serial.println("Value Vector");
    // Serial.print(remainingValueVector[0][0]);
    // Serial.print(" ");
    // Serial.print(remainingValueVector[0][1]);
    // Serial.print(" ");
    // Serial.print(remainingValueVector[0][2]);
    // Serial.print(" ");
    // Serial.print(remainingValueVector[0][3]);
    // Serial.print("--");
    // Serial.print(remainingValueVector[1][0]);
    // Serial.print(" ");
    // Serial.print(remainingValueVector[1][1]);
    // Serial.print(" ");
    // Serial.print(remainingValueVector[1][2]);
    // Serial.print(" ");
    // Serial.print(remainingValueVector[1][3]);
    // Serial.print("--");
    // Serial.print(remainingValueVector[2][0]);
    // Serial.print(" ");
    // Serial.print(remainingValueVector[2][1]);
    // Serial.print(" ");
    // Serial.print(remainingValueVector[2][2]);
    // Serial.print(" ");
    // Serial.print(remainingValueVector[2][3]);
    // Serial.print("--");

    switch (display)
    {
    case ones:

    digitalWrite(a1, remainingValueVector[0][0]);
    digitalWrite(a2, remainingValueVector[0][1]);
    digitalWrite(a3, remainingValueVector[0][2]);
    digitalWrite(a4, remainingValueVector[0][3]);
    // Serial.print(remainingValueVector[0][0]);
    // Serial.print(" ");
    // Serial.print(remainingValueVector[0][1]);
    // Serial.print(" ");
    // Serial.print(remainingValueVector[0][2]);
    // Serial.print(" ");
    // Serial.print(remainingValueVector[0][3]);
    // Serial.print("--");

    display = Counter::tens;

      break;
    
    case tens:

    digitalWrite(a1, remainingValueVector[1][0]);
    digitalWrite(a2, remainingValueVector[1][1]);
    digitalWrite(a3, remainingValueVector[1][2]);
    digitalWrite(a4, remainingValueVector[1][3]);
    // Serial.print(remainingValueVector[1][0]);
    // Serial.print(" ");
    // Serial.print(remainingValueVector[1][1]);
    // Serial.print(" ");
    // Serial.print(remainingValueVector[1][2]);
    // Serial.print(" ");
    // Serial.print(remainingValueVector[1][3]);
    // Serial.print("--");

    display = Counter::ones;
      
      break;

    case hundreds:

    digitalWrite(a1, remainingValueVector[2][0]);
    digitalWrite(a2, remainingValueVector[2][1]);
    digitalWrite(a3, remainingValueVector[2][2]);
    digitalWrite(a4, remainingValueVector[2][3]);

    display = Counter::thousands;
      
      break;
    
    case thousands:

    digitalWrite(a1, remainingValueVector[3][0]);
    digitalWrite(a2, remainingValueVector[3][1]);
    digitalWrite(a3, remainingValueVector[3][2]);
    digitalWrite(a4, remainingValueVector[3][3]);

    display = Counter::ones;
      
      break;
    }   

}

void triggerNonIsr(){

    //writingFlag = true;
    int testCounter = longCounter;
    std::vector<std::bitset<4>> remainingValueVector;
    remainingValueVector = value.dec_to_bin(testCounter);

    //Serial.println("Counter");
    //Serial.println(testCounter);

    // Serial.println("Length Value Vector");
    // Serial.println(remainingValueVector.size());
    // Serial.println("--------------------");
    // Serial.println("Value Vector");
    // Serial.print(remainingValueVector[0][0]);
    // Serial.print(" ");
    // Serial.print(remainingValueVector[0][1]);
    // Serial.print(" ");
    // Serial.print(remainingValueVector[0][2]);
    // Serial.print(" ");
    // Serial.print(remainingValueVector[0][3]);
    // Serial.print("--");
    // Serial.print(remainingValueVector[1][0]);
    // Serial.print(" ");
    // Serial.print(remainingValueVector[1][1]);
    // Serial.print(" ");
    // Serial.print(remainingValueVector[1][2]);
    // Serial.print(" ");
    // Serial.print(remainingValueVector[1][3]);
    // Serial.print("--");
    // Serial.print(remainingValueVector[2][0]);
    // Serial.print(" ");
    // Serial.print(remainingValueVector[2][1]);
    // Serial.print(" ");
    // Serial.print(remainingValueVector[2][2]);
    // Serial.print(" ");
    // Serial.print(remainingValueVector[2][3]);
    // Serial.print("--");

    switch (display)
    {
    case ones:

    //Serial.println("ones");
    digitalWrite(a1, remainingValueVector[0][0]);
    digitalWrite(a2, remainingValueVector[0][1]);
    digitalWrite(a3, remainingValueVector[0][2]);
    digitalWrite(a4, remainingValueVector[0][3]);
    // Serial.print(remainingValueVector[0][0]);
    // Serial.print(" ");
    // Serial.print(remainingValueVector[0][1]);
    // Serial.print(" ");
    // Serial.print(remainingValueVector[0][2]);
    // Serial.print(" ");
    // Serial.print(remainingValueVector[0][3]);
    // Serial.println("");
    display = Counter::tens;

      break;
    
    case tens:

    digitalWrite(a1, remainingValueVector[1][0]);
    digitalWrite(a2, remainingValueVector[1][1]);
    digitalWrite(a3, remainingValueVector[1][2]);
    digitalWrite(a4, remainingValueVector[1][3]);
    // Serial.println("tens");
    // Serial.print(remainingValueVector[1][0]);
    // Serial.print(" ");
    // Serial.print(remainingValueVector[1][1]);
    // Serial.print(" ");
    // Serial.print(remainingValueVector[1][2]);
    // Serial.print(" ");
    // Serial.print(remainingValueVector[1][3]);
    // Serial.println("");

    display = Counter::ones;
      
      break;

    case hundreds:

    digitalWrite(a1, remainingValueVector[2][0]);
    digitalWrite(a2, remainingValueVector[2][1]);
    digitalWrite(a3, remainingValueVector[2][2]);
    digitalWrite(a4, remainingValueVector[2][3]);

    display = Counter::thousands;
      
      break;
    
    case thousands:

    digitalWrite(a1, remainingValueVector[3][0]);
    digitalWrite(a2, remainingValueVector[3][1]);
    digitalWrite(a3, remainingValueVector[3][2]);
    digitalWrite(a4, remainingValueVector[3][3]);

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
    digitalWrite(dp, LOW);
    digitalWrite(a1, displayedValue[0][0]);
    digitalWrite(a2, displayedValue[0][1]);
    digitalWrite(a3, displayedValue[0][2]);
    digitalWrite(a4, displayedValue[0][3]);
    
  portEXIT_CRITICAL_ISR(&timerMux);

}

void IRAM_ATTR write_tens(){

  portENTER_CRITICAL_ISR(&timerMux);

    if (mode != Mode::Taken){
    digitalWrite(dp, HIGH);
        }
    digitalWrite(a1, displayedValue[1][0]);
    digitalWrite(a2, displayedValue[1][1]);
    digitalWrite(a3, displayedValue[1][2]);
    digitalWrite(a4, displayedValue[1][3]);
    
    portEXIT_CRITICAL_ISR(&timerMux);

}

void IRAM_ATTR write_hundreds(){

  portENTER_CRITICAL_ISR(&timerMux);
    digitalWrite(dp, LOW);
    digitalWrite(a1, displayedValue[2][0]);
    digitalWrite(a2, displayedValue[2][1]);
    digitalWrite(a3, displayedValue[2][2]);
    digitalWrite(a4, displayedValue[2][3]);

  portEXIT_CRITICAL_ISR(&timerMux);

}

void IRAM_ATTR write_thousands(){

  portENTER_CRITICAL_ISR(&timerMux);

    digitalWrite(a1, displayedValue[3][0]);
    digitalWrite(a2, displayedValue[3][1]);
    digitalWrite(a3, displayedValue[3][2]);
    digitalWrite(a4, displayedValue[3][3]);

    portEXIT_CRITICAL_ISR(&timerMux);

}

void IRAM_ATTR write_All(Value& valueArg){


    //valueArg.remainingValue = 97;
    switch (valueArg.counter)
    
    {
    case ones:

    digitalWrite(a1, valueArg.remainingValueVector[0][0]);
    digitalWrite(a2, valueArg.remainingValueVector[0][1]);
    digitalWrite(a3, valueArg.remainingValueVector[0][2]);
    digitalWrite(a4, valueArg.remainingValueVector[0][3]);

    valueArg.counter = Value::Counter::tens;

      break;
    
    case tens:

    digitalWrite(a1, valueArg.remainingValueVector[1][0]);
    digitalWrite(a2, valueArg.remainingValueVector[1][1]);
    digitalWrite(a3, valueArg.remainingValueVector[1][2]);
    digitalWrite(a4, valueArg.remainingValueVector[1][3]);


    valueArg.counter = Value::Counter::hundreds;
      
      break;

    case hundreds:

    digitalWrite(a1, valueArg.remainingValueVector[2][0]);
    digitalWrite(a2, valueArg.remainingValueVector[2][1]);
    digitalWrite(a3, valueArg.remainingValueVector[2][2]);
    digitalWrite(a4, valueArg.remainingValueVector[2][3]);

    valueArg.counter = Value::Counter::thousands;
      
      break;
    
    case thousands:

    digitalWrite(a1, valueArg.remainingValueVector[3][0]);
    digitalWrite(a2, valueArg.remainingValueVector[3][1]);
    digitalWrite(a3, valueArg.remainingValueVector[3][2]);
    digitalWrite(a4, valueArg.remainingValueVector[3][3]);

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

    portENTER_CRITICAL_ISR(&timerMux);
    rotaryCheck = true;
    portEXIT_CRITICAL_ISR(&timerMux);

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
            {
                printf("Done\n");
                printf("Last value = %d\n", lastValue);
                break;
                }
            case ESP_ERR_NVS_NOT_FOUND:
                {
                printf("Haber");
                printf("The value is not initialized yet!\n");
                printf("Creating the value...");
                int32_t dummyValue = 342;
                err = nvs_set_i32(my_handle, "saved_value", dummyValue);
                //lastValue = 666;
                printf((err != ESP_OK) ? "Failed!\n" : "Done\n");

        // Commit written value.
        // After setting any values, nvs_commit() must be called to ensure changes are written
        // to flash storage. Implementations may write to storage at other times,
        // but this is not guaranteed.
                printf("Committing updates in NVS ... ");
                err = nvs_commit(my_handle);
                printf((err != ESP_OK) ? "Failed!\n" : "Done\n");

        // Close
                nvs_close(my_handle);
                err = nvs_get_i32(my_handle, "saved_value", &lastValue);
                if (err == ESP_OK){
                  printf("Done\n");
                  printf("Last value = %d\n", lastValue);
                }
                else if (err =! ESP_OK){
                  printf("Unknown behaviour");
                }
                
                break;
                }
            default :
                printf("Error (%s) reading!\n", esp_err_to_name(err));
        }
    return lastValue;
  }
}

int32_t readLastPaperValue(){

// Open
    printf("\n");
    printf("Opening Non-Volatile Storage (NVS) handle... ");
    err2 = nvs_open("paper", NVS_READWRITE, &paperHandle);
    if (err2 != ESP_OK) {
        printf("Error (%s) opening NVS handle!\n", esp_err_to_name(err2));
    } else {
        printf("Done\n");
    
    // Read
        printf("Reading last value counter from NVS ... ");
         // value will default to 0, if not set yet in NVS
        err2 = nvs_get_i32(paperHandle, "paper_value", &lastPaperValue);
        switch (err) {
            case ESP_OK:
            {
                printf("Done\n");
                printf("Last paer value = %d\n", lastPaperValue);
                break;
                }
            case ESP_ERR_NVS_NOT_FOUND:
                {
                printf("Haber");
                printf("The value is not initialized yet!\n");
                printf("Creating the value...");
                int32_t dummyValue = 342;
                err = nvs_set_i32(paperHandle, "paper_value", dummyValue);
                //lastValue = 666;
                printf((err != ESP_OK) ? "Failed!\n" : "Done\n");

        // Commit written value.
        // After setting any values, nvs_commit() must be called to ensure changes are written
        // to flash storage. Implementations may write to storage at other times,
        // but this is not guaranteed.
                printf("Committing updates in NVS ... ");
                err2 = nvs_commit(paperHandle);
                printf((err != ESP_OK) ? "Failed!\n" : "Done\n");

        // Close
                nvs_close(paperHandle);
                err2 = nvs_get_i32(paperHandle, "paper_balue", &lastPaperValue);
                if (err2 == ESP_OK){
                  printf("Done\n");
                  printf("Last value = %d\n", lastPaperValue);
                }
                else if (err2 =! ESP_OK){
                  printf("Unknown behaviour");
                }
                
                break;
                }
            default :
                printf("Error (%s) reading!\n", esp_err_to_name(err2));
        }
    return lastPaperValue;
  }
}

void IRAM_ATTR saveLastValue(){

    portENTER_CRITICAL_ISR(&timerMux);

    Serial.println("Que pasa");


    // //printf("Updating saved value in NVS ... ");
    err = nvs_set_i32(my_handle, "saved_value", value.remainingValue);
    // //printf((err != ESP_OK) ? "Failed!\n" : "Done\n");

    // // Commit written value.
    // // After setting any values, nvs_commit() must be called to ensure changes are written
    // // to flash storage. Implementations may write to storage at other times,
    // // but this is not guaranteed.
    // //printf("Committing updates in NVS ... ");
    // err = nvs_commit(my_handle);
    // //printf((err != ESP_OK) ? "Failed!\n" : "Done\n");
    // saveFlag = false;
    // // Close
    // nvs_close(my_handle);

    // //Serial.println("Valued saved from function saveLastValue");

    portENTER_CRITICAL_ISR(&timerMux);


}

void saveLastValue2(){


    // //printf("Updating saved value in NVS ... ");
    int32_t testValue = 1247;
    err = nvs_set_i32(my_handle, "saved_value", value.remainingValue);
    //err = nvs_set_i32(my_handle, "saved_value", testValue);
    //printf((err != ESP_OK) ? "Failed!\n" : "Done\n");

    // // Commit written value.
    // // After setting any values, nvs_commit() must be called to ensure changes are written
    // // to flash storage. Implementations may write to storage at other times,
    // // but this is not guaranteed.
    //printf("Committing updates in NVS ... ");
    err = nvs_commit(my_handle);
    //printf((err != ESP_OK) ? "Failed!\n" : "Done\n");
    // saveFlag = false;
    // // Close
    nvs_close(my_handle);

    //Serial.println("Valued saved from function saveLastValue2");



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


void IRAM_ATTR shutDown(){

  portENTER_CRITICAL_ISR(&timerMux);
  shutDownFlag = true;
  portEXIT_CRITICAL_ISR(&timerMux);

}
