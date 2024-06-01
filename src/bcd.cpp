//#pragma once

#include "bcd.h"
#define EEPROM_SIZE 1




Value::Value(){

    Serial.begin(115200);

    counter = Counter::ones;  
    remainingValue = 0;
    remainingValueVector = dec_to_bin(remainingValue / 10);
    addedNumber = 0;
    takenValue = 0;
    takenValueVector = dec_to_bin(takenValue / 10);
    lastSavedRoll = remainingValue;
    }

Value::Value(int32_t& lastValueArg){

    Serial.begin(115200);

    //EEPROM.begin(EEPROM_SIZE);

    counter = Counter::ones;  
    remainingValue = lastValueArg;
    //Serial.println("Value constructor called");
    //Serial.println("Number Value Constructor= " + String(remainingValue));
    remainingValueVector = dec_to_bin(remainingValue);
    addedNumber = 0;
    }

void Value::readValue(){

    // // Open
    // printf("\n");
    // printf("Opening Non-Volatile Storage (NVS) handle... ");
    // err = nvs_open("storage", NVS_READWRITE, &my_handle);
    // if (err != ESP_OK) {
    //     printf("Error (%s) opening NVS handle!\n", esp_err_to_name(err));
    // } else {
    //     printf("Done\n");
    
    // // Read
    //     printf("Reading last value counter from NVS ... ");
    //      // value will default to 0, if not set yet in NVS
    //     err = nvs_get_i32(my_handle, "last_value", &lastValue);
    //     switch (err) {
    //         case ESP_OK:
    //             printf("Done\n");
    //             printf("Last value = %d\n", lastValue);
    //             break;
    //         case ESP_ERR_NVS_NOT_FOUND:
    //             printf("The value is not initialized yet!\n");
    //             break;
    //         default :
    //             printf("Error (%s) reading!\n", esp_err_to_name(err));
    //     }

    // if (EEPROM.read(0) == 0 || EEPROM.read(0) > 9999){
    //     Serial.println("We are here");
    //     EEPROM.write(0, 111);
    //     EEPROM.commit();

    // }
}

void Value::saveValue(){

    // printf("Updating saved value in NVS ... ");
    // err = nvs_set_i32(my_handle, "saved_value", remainingValue);
    // printf((err != ESP_OK) ? "Failed!\n" : "Done\n");

    // // Commit written value.
    // // After setting any values, nvs_commit() must be called to ensure changes are written
    // // to flash storage. Implementations may write to storage at other times,
    // // but this is not guaranteed.
    // printf("Committing updates in NVS ... ");
    // err = nvs_commit(my_handle);
    // printf((err != ESP_OK) ? "Failed!\n" : "Done\n");

    // // Close
    // nvs_close(my_handle);

    // Serial.println("Valued saved from class");

}

std::vector<std::bitset<4>> Value::dec_to_bin(int n){
    int saferemainingValue = n;

    std::vector<std::bitset<4>> repr;
    if (n == 0){
        std::bitset<4> bitset0, bitset1, bitset2, bitset3;
        repr.push_back(bitset0);
        repr.push_back(bitset1);
        repr.push_back(bitset2);
        repr.push_back(bitset3);
    }
    else if (n < 10){
        while(n > 0){

            // std::bitset<4> testBitset = std::bitset<4>(n % 10);
            // repr.push_back(testBitset);
            repr.push_back(std::bitset<4>(n % 10));
            n /= 10;
        }
        std::bitset<4> bitset0, bitset1, bitset2;
        repr.push_back(bitset0);
        repr.push_back(bitset1);
        repr.push_back(bitset2);
    }
    else if (n < 100){
        while(n > 0){
            // std::bitset<4> testBitset = std::bitset<4>(n % 10);
            // testBitset.flip();
            // repr.push_back(testBitset);
            repr.push_back(std::bitset<4>(n % 10));
            n /= 10;
        }
        std::bitset<4> bitset0, bitset1;
        repr.push_back(bitset0);
        repr.push_back(bitset1);  
    }
    else if (n < 1000){
        while(n > 0){
            repr.push_back(std::bitset<4>(n % 10));
        n /= 10;
        }
        std::bitset<4> bitset0;
        repr.push_back(bitset0); 
    }
    else if (n < 10000){
        while(n > 0){
            repr.push_back(std::bitset<4>(n % 10));
            n /= 10;
        }
    }

        return repr;
}

std::vector<std::bitset<4>> Value::dec_to_bin3(){
    std::vector<std::bitset<4>> repr;
    int32_t provisionalValue = remainingValue;
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

volatile std::vector<std::bitset<4>> Value::dec_to_bin2(int& n){
    std::vector<std::bitset<4>> repr;
    if (n == 0){
        std::bitset<4> bitset0, bitset1, bitset2, bitset3;
        repr.push_back(bitset0);
        repr.push_back(bitset1);
        repr.push_back(bitset2);
        repr.push_back(bitset3);
    }
    else if (n < 10){
        while(n > 0){

            // std::bitset<4> testBitset = std::bitset<4>(n % 10);
            // repr.push_back(testBitset);
            repr.push_back(std::bitset<4>(n % 10));
            n /= 10;
        }
        std::bitset<4> bitset0, bitset1, bitset2;
        repr.push_back(bitset0);
        repr.push_back(bitset1);
        repr.push_back(bitset2);
    }
    else if (n < 100){
        while(n > 0){
            // std::bitset<4> testBitset = std::bitset<4>(n % 10);
            // testBitset.flip();
            // repr.push_back(testBitset);
            repr.push_back(std::bitset<4>(n % 10));
            n /= 10;
        }
        std::bitset<4> bitset0, bitset1;
        repr.push_back(bitset0);
        repr.push_back(bitset1);  
    }
    else if (n < 1000){
        while(n > 0){
            repr.push_back(std::bitset<4>(n % 10));
        n /= 10;
        }
        std::bitset<4> bitset0;
        repr.push_back(bitset0); 
    }
    return repr;
}

void Value::setNumber(int32_t& numberArg){

    remainingValue = numberArg; 
    remainingValueVector = dec_to_bin(remainingValue / 10);
    lastSavedRoll = remainingValue;
    //Serial.println("numberArg: " + String(numberArg));
    //Serial.println("remainingValue: " + String(remainingValue));



}

void Value::addNumber(int32_t sum){

    //addedNumber = sum;
    remainingValue += sum;
    remainingValueVector = dec_to_bin(remainingValue / 10);
    if (remainingValue > lastSavedRoll){
        remainingValue = lastSavedRoll;
    }
    printf("remaining value: %d \n taken value: %d \n", remainingValue, takenValue);

    //remainingValueVector = dec_to_bin3();


}

void Value::updateRemainingValueVector(){

    remainingValueVector = dec_to_bin3();
}

int32_t Value::getRemainingValue(){

    return remainingValue;

}

void Value::updateValues(int32_t n){

    takenValue += n ;
    //takenValueVector = dec_to_bin(takenValue / 10);
    takenValueVector = dec_to_bin(takenValue);
    if (takenValue < 0){
        takenValue = 0;
    }
    printf("remaining value: %d \n taken value: %d \n", remainingValue, takenValue);

    
}

void Value::resetTakenValue(){

    takenValue = 0;
    takenValueVector = dec_to_bin(takenValue);
}

void Value::changePaper(int32_t newRoll){

    remainingValue = newRoll;
    lastSavedRoll = newRoll;
    remainingValueVector = dec_to_bin(remainingValue / 10);
    takenValue = 0;
    //takenValueVector = dec_to_bin(takenValue / 10);
    takenValueVector = dec_to_bin(takenValue);
}