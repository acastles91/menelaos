#pragma once

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
#include "avdweb_Switch.h"
#include "Bounce2.h"
#include "pinout.h"
#include "mode.h"
//#include "functions.h"


// //Value class

// Value testValue;
// Value savedValue;


// //Bounce2

// Bounce  bounceZero = Bounce();
// Bounce  bounceConfig = Bounce();
// Bounce  bounceMode = Bounce();


// //PWM

// const int frequency;
// const int pwmChannel;
// const int resolution;

// //Encoder

// ESP32Encoder  rotary;
// unsigned long rotaryLastToggled;
// bool rotaryPaused;
// bool rotaryCheck;
// int64_t rotaryPrev;
// bool rotaryEnabled;

// //Leds & test

// bool ledState;
// bool dpState;

// // NVS -- EEPROM

// int32_t lastValue;
// nvs_handle_t my_handle;
// esp_err_t err;


// int storedValue;
// int readValue;
// volatile bool saveFlag;
// volatile bool resetFlag;

// //Display and value conversion

// std::vector<int> addresses;
// std::vector<std::tuple<int, int, int, int>> numbers;
// enum Counter {ones, tens, hundreds, thousands};
// std::vector<std::bitset<4>> displayedValue;
// int testCounter;

// volatile bool johnsonToggle;
// volatile bool writingFlag;
// volatile bool indexTuple;
// volatile int counter;
// volatile bool oeBool;
// volatile int longCounter;
// volatile int unitIter;
// volatile Counter display;
// volatile bool counterChangeFlag;
// volatile bool addFlag;
// volatile bool changeMode;

// int a1Value;
// int a2Value;
// int a3Value;
// int a4Value;

// std::tuple<int, int, int, int>  one;
// std::tuple<int, int, int, int>  two;
// std::tuple<int, int, int, int>  three;
// std::tuple<int, int, int, int>  four;
// std::tuple<int, int, int, int>  five;
// std::tuple<int, int, int, int>  six;
// std::tuple<int, int, int, int>  seven;
// std::tuple<int, int, int, int>  eight;
// std::tuple<int, int, int, int>  nine;
// std::tuple<int, int, int, int>  zero;

// //Timers
// hw_timer_t * timer;
// hw_timer_t * timer2;

// portMUX_TYPE timerMux;

//Variables

Value value;
Value savedValue;

//Mode

Mode mode;

//Bounce2

Bounce  bounceZero = Bounce();
Bounce  bounceConfig = Bounce();
Bounce  bounceMode = Bounce();

Bounce  bounceCha = Bounce();
Bounce  bounceChb = Bounce();

//PWM

int frequency = 5000;
const int pwmChannel = 1;
const int resolution = 8;

ESP32Encoder  rotary;
unsigned long rotaryLastToggled;
bool rotaryPaused = false;
bool rotaryCheck = false;
int64_t rotaryPrev;
bool rotaryEnabled = false;
bool ledState = LOW;
bool dpState = LOW;

// NVS

int32_t lastValue = 0;
nvs_handle_t my_handle;
esp_err_t err;

int32_t lastPaperValue;
nvs_handle_t paperHandle;
esp_err_t err2;

int storedValue = 0;
int readValue = 0;

//Display

std::vector<int> addresses;
std::vector<std::tuple<int, int, int, int>> numbers;
enum Counter {ones, tens, hundreds, thousands};
std::vector<std::bitset<4>> displayedValue;
int testCounter;

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

// Timers and interrupts

hw_timer_t * timer = NULL;
hw_timer_t * timer2 = NULL;

portMUX_TYPE timerMux = portMUX_INITIALIZER_UNLOCKED;

uint32_t releaseTimestamp;
uint32_t pressTime;

volatile bool johnsonToggle = false;
volatile bool saveFlag = false;
volatile bool resetFlag = false;
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
volatile bool shutDownFlag;

//Set mode

volatile bool plusFlag;
volatile bool setModeFlag;
volatile int32_t oldPaperLength;
volatile int32_t newPaperLength;
int32_t startTimer;

bool fastFlag;
bool veryFastFlag;
int delayTime;
int sum;

bool zeroFlag;
