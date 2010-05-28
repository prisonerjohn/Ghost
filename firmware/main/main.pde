#include <Wire.h>

byte buttonsOne;
byte buttonsTwo;

 boolean currentsw1State = 0;
 boolean currentsw2State = 0;
 boolean currentsw3State = 0;
 boolean currentsw4State = 0;
 boolean currentsw5State = 0;
 boolean currentsw6State = 0;
 boolean currentsw7State = 0;
 boolean currentsw8State = 0;

 boolean currentsw9State =  0;
 boolean currentsw10State = 0;
 boolean currentsw11State = 0;
 boolean currentsw12State = 0;


void setup() {

  Wire.begin(); // join i2c bus (address optional for master)
  
    //Serial.begin(31250);
    Serial.begin(9600);
}

void loop(){
  delay(5);
  
    //Master Reader

  word buttons = 0;

  Wire.requestFrom(4, 2);    // request 2 bytes from slave device #4

  int numBytes = Wire.available();
  if (numBytes == 2) {
    buttonsTwo = Wire.receive();
    buttonsOne = Wire.receive();
    
    //Serial.print(buttonsOne,BIN);
    //Serial.print(" ");
    //Serial.println(buttonsTwo,BIN);
    
  
  currentsw1State = bitRead(buttonsOne, 0);
  currentsw2State = bitRead(buttonsOne, 1);
  currentsw3State = bitRead(buttonsOne, 2);
  currentsw4State = bitRead(buttonsOne, 3);
  currentsw5State = bitRead(buttonsOne, 4);
  currentsw6State = bitRead(buttonsOne, 5);
  currentsw7State = bitRead(buttonsOne, 6);
  currentsw8State = bitRead(buttonsOne, 7);

  currentsw9State = bitRead(buttonsTwo, 0);
  currentsw10State = bitRead(buttonsTwo, 1);
  currentsw11State = bitRead(buttonsTwo, 2);
  currentsw12State = bitRead(buttonsTwo, 3);
 
       Serial.print(currentsw1State,BIN);
       Serial.print(currentsw2State,BIN);
       Serial.print(currentsw3State,BIN);
       Serial.print(currentsw4State,BIN);
       Serial.print(currentsw5State,BIN);
       Serial.print(currentsw6State,BIN);
       Serial.print(currentsw7State,BIN);
       Serial.print(currentsw8State,BIN);
          
       Serial.print(currentsw9State,BIN);
       Serial.print(currentsw10State,BIN);
       Serial.print(currentsw11State,BIN);
       Serial.println(currentsw12State,BIN);
  }
  
  Analogs();
}//end loop
