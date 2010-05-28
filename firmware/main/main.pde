#include <Wire.h>
#include <MsTimer2.h>
#include "TheGhost.h"

//#define DEBUG 1

//*************************
// PROGRAM VARIABLES
//*************************

boolean noteChordSwitch;
boolean autoChordSwitch;
boolean touchPlateSwitch;
boolean drumMachineSwitch;

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
}

//-------------------------
void loop() {
  readSwitchStates();
  readAnalogValues();

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
