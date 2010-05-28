#include <Wire.h>

#define NUM_ROWS 3
#define NUM_COLS 4

//******************************************************
uint8_t buttons;
byte buttonsOne;
byte buttonsTwo;

word lights;
byte lightsOne;
byte lightsTwo;

int addressPin = 6;
int addressVal = 0;

int i2Cadd = 4;

int LEDcol[NUM_COLS] = { 14,15,16,17 };  // pins used for LED cols
int LEDrow[NUM_ROWS] = { 2,3,4 };        //pins used for LED rows

int BTcol[NUM_COLS] = { 5,6,7, 8 };  // pins for button cols
int BTrow[NUM_ROWS] = { 9,10,11 };   // pins for buttons rows
  
int t = .5;

//******************************************************
void setup() {
  // start i2c
  Wire.begin(i2Cadd);             
  Wire.onRequest(requestEvent);
  Wire.onReceive(receiveEvent);
  
  lights = 0;

  // init LEDs
  for (int x = 0; x < NUM_COLS; x++) {    // set LED col pin numbers 
    pinMode(LEDcol[x], OUTPUT);
    digitalWrite(LEDcol[x], LOW);  // set LED col pins LOW
  }

  for (int y = 0; y < NUM_ROWS; y++) {    // set LED row pin numbers
    pinMode(LEDrow[y], OUTPUT);
    digitalWrite(LEDrow[y],HIGH);  // set LED row pins HIGH
  }

  // init buttons
  for (int i = 0; i < NUM_COLS; i++) {  // set button col pins
    pinMode(BTcol[i], INPUT);
  }

  for (int j = 0; j < NUM_ROWS; j++) {  // set button row pins
    pinMode(BTrow[j], OUTPUT);
    digitalWrite(BTrow[j], 0);
  }

  // zero out the values
  for (int i=0; i < 8; i++) {
    bitWrite(buttonsOne,i,0);
    bitWrite(buttonsTwo,i,0);
  }
      
  Serial.begin(9600);
}

//****************************************************
void loop() {
  doButtons();
  doLights();
}

//****************************************************
void doButtons() {
  // iterate over the rows (uC out)
  for (int row = 0; row < NUM_ROWS; row++) {
    // set rows HIGH
    digitalWrite(BTrow[row], HIGH);

    // iterate over columns (uC in)
    for (int col = 0; col < NUM_COLS; col++) {
      // read the columns, if HIGH, switch is closed
      if (digitalRead(BTcol[col]) == HIGH) {
        writeState(col*NUM_ROWS + row, 1);
        lightOn(row, col);
      } else {
        writeState(col*NUM_ROWS + row, 0);
      }
    }
    
    // take the row pin low to turn off the whole column
    digitalWrite(BTrow[row], LOW);
  }
  
  // store the results in a 16-bit int
  buttons = (buttonsOne << 8) | buttonsTwo;
}

//******************************************************  
void doLights() {
  // iterate over the rows (uC out)
  for (int row = 0; row < NUM_ROWS; row++) {
    // iterate over columns (uC in)
    for (int col = 0; col < NUM_COLS; col++) {
      if (bitRead(lights, col*NUM_ROWS + row) == 1) {
        lightOn(row, col);
      }  
    }
  }
}

//******************************************************  
void writeState(int _i, byte _val) {
  if (_i < 8) {
    bitWrite(buttonsOne, _i, _val);
  } else {
    bitWrite(buttonsTwo, _i - 8, _val);  
  }
}

//******************************************************  
void lightOn(int _row, int _col) {
  digitalWrite(LEDcol[_col], HIGH);
  digitalWrite(LEDrow[_row], LOW);
  delay(t);
  digitalWrite(LEDcol[_col], LOW); 
  digitalWrite(LEDrow[_row], HIGH);  
}

//******************************************************
void requestEvent() {
  Wire.send(&buttons, 2);
}

//******************************************************
void receiveEvent(int _num) {
  int numBytes = Wire.available();
  if (numBytes == 2) {
    lightsTwo = Wire.receive();
    lightsOne = Wire.receive();
    
    // store the results in a 16-bit int
    lights = (lightsTwo << 8) | lightsOne;
  }
}





