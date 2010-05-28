#include <Wire.h>
#include <MsTimer2.h>
#include "TheGhost.h"

//#define DEBUG 1

//*************************
// PROGRAM VARIABLES
//*************************

boolean noteChordSwitch = true;
boolean autoChordSwitch;
boolean touchPlateSwitch;
boolean drumMachineSwitch;

NoteControl noteControls[NUM_BUTTON_BOARDS * NUM_BUTTON_COLS * NUM_BUTTON_ROWS];
ChordControl chordControls[NUM_BUTTON_BOARDS * NUM_BUTTON_COLS * (NUM_BUTTON_ROWS-1)];

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
}

//-------------------------
void loop() {
  readSwitchStates();
  readAnalogValues();

  readButtonStates();
#ifdef DEBUG
  printButtonStates();
#endif

  if (noteChordSwitch) {
    //doNotes();
  } else {
    //doChords();
  }
  
  doDrums();
}
