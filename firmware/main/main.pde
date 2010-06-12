#include <Wire.h>
#include <MsTimer2.h>
#include "Ghost.h"

//#define DEBUG 1

//*************************
// PROGRAM VARIABLES
//*************************

NoteControl noteControls[NUM_BUTTON_BOARDS * NUM_BUTTON_COLS * NUM_BUTTON_ROWS];
ChordControl chordControls[(NUM_BUTTON_BOARDS-1) * NUM_BUTTON_COLS * (NUM_BUTTON_ROWS-1)];
TouchControl touchControls[NUM_TOUCH_PLATES];

boolean drumsRunning = false;
int bpm = 120;

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
