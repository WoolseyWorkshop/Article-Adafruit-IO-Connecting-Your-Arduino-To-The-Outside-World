// AIO_LED_Pot - AIO_LED_Pot.ino
//
// Description:
// Interfaces an LED and a potentiometer on an Arduino Uno WiFi Rev2 with the
// Adafruit IO service.
// Note: Must use Adafruit's modified version of the WiFiNINA library
// (https://github.com/adafruit/WiFiNINA), define USE_AIRLIFT, and instantiate
// AdafruitIO_WiFi with pin connections for Arduino Uno WiFi Rev2 compatability.
// NOTE: The sketch sometimes gets stuck initially connecting to the service and
// needs to be reuploaded.
//
// Circuit:
// Red LED connected to pin D2.
// 10K potentiometer connected to pin A0.
//
// Created by John Woolsey on 05/29/2019.
// Copyright © 2019 Woolsey Workshop.  All rights reserved.


// Defines
#define AIO_USERNAME    "your_aio_username"
#define AIO_KEY         "your_aio_key"
#define AIO_POT_FEED    "potentiometer"
#define AIO_REDLED_FEED "red-led"
#define WIFI_SSID       "your_wifi_ssid"
#define WIFI_PASS       "your_wifi_password"
#define USE_AIRLIFT     // required for Arduino Uno WiFi R2 board compatability


// Libraries
#include <AdafruitIO_WiFi.h>


// Pin Mapping
const byte RedLED =  2;
const byte Pot    = A0;


// Constructors
AdafruitIO_WiFi aio(AIO_USERNAME, AIO_KEY, WIFI_SSID, WIFI_PASS, SPIWIFI_SS, SPIWIFI_ACK, SPIWIFI_RESET, NINA_GPIO0, &SPI);
AdafruitIO_Feed *potFeed = aio.feed(AIO_POT_FEED);
AdafruitIO_Feed *redLEDFeed = aio.feed(AIO_REDLED_FEED);


void setup() {
   // Pin configuration
   pinMode(RedLED, OUTPUT);

   // Serial bus initialization (Serial Monitor)
   Serial.begin(9600);
   while(!Serial);  // wait for serial connection

   // Adafruit IO connection and configuration
   Serial.print("Connecting to Adafruit IO");
   aio.connect();  // connect to Adafruit IO service
   while(aio.status() < AIO_CONNECTED) {
      Serial.print(".");
      delay(1000);  // wait 1 second between checks
   }
   Serial.println();
   Serial.println(aio.statusText());  // print AIO connection status
   // Set up message handler that calls function when messages are received
   redLEDFeed->onMessage(redLEDMessageHandler);

   // Synchronize current state
   redLEDFeed->get();  // request feed value (message) from AIO
}


void loop() {
   aio.run();  // keep client connected to AIO service
   int potValue = analogRead(Pot);
   potFeed->save(potValue);  // send potentiometer value to AIO
   Serial.print("Potentiometer feed sent <- ");  Serial.println(potValue);
   delay(5000);  // limit AIO updates (30 per minute on free tier)
}


// Handles Red LED feed message received from AIO
void redLEDMessageHandler(AdafruitIO_Data *data) {
   String value = data->toString();  // capture feed value from AIO
   Serial.print("Red LED feed received -> ");  Serial.println(value);
   digitalWrite(RedLED, value == "ON" ? HIGH : LOW);
}
