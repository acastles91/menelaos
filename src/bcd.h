#include <tuple>
#include <vector>
#include <bitset>
#include <iostream>
#include <Arduino.h>
#include <algorithm>
#include <iterator>
#include <EEPROM.h>
#include <stdint.h>
#include <stdio.h>
#include "freertos/FreeRTOS.h"
#include "freertos/task.h"
#include "esp_system.h"
//#include "nvs_flash.h"
//#include "nvs.h"


class Value {


public:


    Value();

    Value(int32_t& lastValueArg);


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

    void translate(int& intArg);

    enum Counter {ones, tens, hundreds, thousands};

    int32_t numberValue;
    int32_t addedNumber;
    std::vector<std::bitset<4>> valueVector;
    


    Counter counter; 

    std::vector<std::bitset<4>> dec_to_bin(int n);
    volatile std::vector<std::bitset<4>> dec_to_bin2(int& n);
    std::vector<std::bitset<4>> dec_to_bin3();

    void setNumber(int32_t& numberArg);
    void addNumber(int32_t sum);
    void updateValueVector();
    void saveValue();

    void readValue();




    
    int getNumberValue();



};



