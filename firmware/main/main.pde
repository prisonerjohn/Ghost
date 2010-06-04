#include <Wire.h>
#include <MsTimer2.h>
#include "Ghost.h"

//#define DEBUG 1

//*************************
// PROGRAM VARIABLES
//*************************

boolean noteChordSwitch;
boolean autoChordSwitch;
boolean touchPlateSwitch;
boolean drumMachineSwitch;

boolean currentTP1A = LOW;
boolean currentTP1B = LOW;
boolean currentTP2A = LOW;
boolean currentTP2B = LOW;
boolean currentTP3A = LOW;
boolean currentTP3B = LOW;
boolean currentTP4A = LOW;
boolean currentTP4B = LOW;
boolean currentTP5A = LOW;
boolean currentTP5B = LOW;
boolean currentTP6A = LOW;
boolean currentTP6B = LOW;
boolean currentTP7A = LOW;
boolean currentTP7B = LOW;
boolean currentTP8A = LOW;
boolean currentTP8B = LOW;

NoteControl noteControls[NUM_BUTTON_BOARDS * NUM_BUTTON_COLS * NUM_BUTTON_ROWS];
ChordControl chordControls[NUM_BUTTON_BOARDS * NUM_BUTTON_COLS * (NUM_BUTTON_ROWS-1)];

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
  
  initNotes();
  initChords();
  initDrums();

  initEncoder();
  initTouchplate();
  initHSLED();
}

//-------------------------
void loop() {
  readSwitchStates();
  readAnalogValues();
  readTouchStates();
  Headstock();

  readButtonStates();
#ifdef DEBUG
  printButtonStates();
#endif
  
  if (drumMachineSwitch) {
    readEncoderValues();
    doDrums();  
  } else {
    clearDrums();
    
    if (noteChordSwitch) {
      doNotes();
    } else {
      doChords();
    }
  }
  
  updateContinuousControls();
}
