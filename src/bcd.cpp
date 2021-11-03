#pragma once



#include "bcd.h"

#define EEPROM_SIZE 1




Value::Value(){

    Serial.begin(115200);

    //EEPROM.begin(EEPROM_SIZE);

    counter = Counter::ones;  
    numberValue = 0;
    Serial.println("Value constructor called");
    Serial.println("Number Value Constructor= " + String(numberValue));
    valueVector = dec_to_bin(numberValue);
    addedNumber = 0;
    }

Value::Value(int32_t& lastValueArg){

    Serial.begin(115200);

    //EEPROM.begin(EEPROM_SIZE);

    counter = Counter::ones;  
    numberValue = lastValueArg;
    Serial.println("Value constructor called");
    Serial.println("Number Value Constructor= " + String(numberValue));
    valueVector = dec_to_bin(numberValue);
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
    // err = nvs_set_i32(my_handle, "saved_value", numberValue);
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
    int safeNumberValue = n;

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

    numberValue = safeNumberValue;
        return repr;
}

std::vector<std::bitset<4>> Value::dec_to_bin3(){
    std::vector<std::bitset<4>> repr;
    if (numberValue == 0){
        std::bitset<4> bitset0, bitset1, bitset2, bitset3;
        repr.push_back(bitset0);
        repr.push_back(bitset1);
        repr.push_back(bitset2);
        repr.push_back(bitset3);
    }
    else if (numberValue < 10){
        while(numberValue > 0){

            // std::bitset<4> testBitset = std::bitset<4>(n % 10);
            // repr.push_back(testBitset);
            repr.push_back(std::bitset<4>(numberValue % 10));
            numberValue /= 10;
        }
        std::bitset<4> bitset0, bitset1, bitset2;
        repr.push_back(bitset0);
        repr.push_back(bitset1);
        repr.push_back(bitset2);
    }
    else if (numberValue < 100){
        while(numberValue > 0){
            // std::bitset<4> testBitset = std::bitset<4>(n % 10);
            // testBitset.flip();
            // repr.push_back(testBitset);
            repr.push_back(std::bitset<4>(numberValue % 10));
            numberValue /= 10;
        }
        std::bitset<4> bitset0, bitset1;
        repr.push_back(bitset0);
        repr.push_back(bitset1);  
    }
    else if (numberValue < 1000){
        while(numberValue > 0){
            repr.push_back(std::bitset<4>(numberValue % 10));
        numberValue /= 10;
        }
        std::bitset<4> bitset0;
        repr.push_back(bitset0); 
    }
    //std::reverse(repr.begin(), repr.end());
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
    //std::reverse(repr.begin(), repr.end());
    return repr;
}

void Value::setNumber(int32_t& numberArg){

    numberValue = numberArg; 
    valueVector = dec_to_bin3();

}

void Value::addNumber(int32_t sum){

    addedNumber = sum;
    numberValue = numberValue + sum;
    valueVector = dec_to_bin(numberValue);
    //valueVector = dec_to_bin3();


}

void Value::updateValueVector(){

    valueVector = dec_to_bin3();
}

int Value::getNumberValue(){

    return numberValue;

}