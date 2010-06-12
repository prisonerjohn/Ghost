#include <Wire.h>
#include <MsTimer2.h>
#include "Ghost.h"

//#define DEBUG 1

//*************************
// MAIN LOOP
//*************************

//-------------------------
void setup() {
#ifdef DEBUG
  Serial.begin(9600);
#else 
  Serial.begin(31250);  // MIDI
#endif

  Wire.begin();  // join i2c bus (address optional for master)
  
  initLCD();

  initSwitches();
  initAnalogs();
  initDigitals();
  
  initNotes();
  initChords();
  initDrums();

  initEncoder();
  initTouchPlate();
  initHeadstock();
}

//-------------------------
void loop() {
  readSwitchStates();
  readAnalogValues();
  
  readButtonStates();
#ifdef DEBUG
  printButtonStates();
#endif
  
  readTouchStates();
  
  if (drumMachineSwitch) {  // drum mode
    readEncoderValues();
    doDrums();  
  } else {
    clearDrums();
    
    if (noteChordSwitch) {  // note mode
      doNotes();
      if (touchPlateSwitch) {
        doTouchNotes();
      }
      
    } else {                // chord mode
      doChords();
      doDigitals();
      
      if (autoChordSwitch && touchPlateSwitch) {
        doTouchScales();
      } else if (!autoChordSwitch && touchPlateSwitch) {
        doTouchScales();
      } else if (!autoChordSwitch && !touchPlateSwitch) {
        doTouchChords();  
      }
    }
  }
  
  updateHeadstock();
  updateContinuousControls();
}
