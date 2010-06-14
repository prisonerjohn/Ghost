//-------------------------
TouchControl touchControls[NUM_TOUCH_PLATES];

//-------------------------
void initTouchPlate() {
  for (int i = 0; i < NUM_TOUCH_PLATES; i++) {
    // set the touch plate pins as inputs
    pinMode(TOUCH_PLATE_PIN_1 + 2*i + 0, INPUT);
    pinMode(TOUCH_PLATE_PIN_1 + 2*i + 1, INPUT);
  }
  
  touchStates = 0;
}

//-------------------------
void readTouchStates() {
  for (int i = 0; i < NUM_TOUCH_PLATES; i++) {
    bitWrite(touchStates, 2*i + 0, digitalRead(TOUCH_PLATE_PIN_1 + 2*i + 0));
    bitWrite(touchStates, 2*i + 1, digitalRead(TOUCH_PLATE_PIN_1 + 2*i + 1));
  }
}

//-------------------------
void doTouchNotes() {
  boolean state;
  int index;
  
  // only look at the top three touch plates for mapping to notes
  for (int plt = 0; plt < NUM_BUTTON_ROWS; plt++) {
    state = bitRead(touchStates, 2*plt + 0);
    
    if (touchControls[plt].pressed != state) {
      touchControls[plt].toggle();
      
      // trigger notes if necessary
      for (int brd = 0; brd < NUM_BUTTON_BOARDS; brd++) {
        for (int col = 0; col < NUM_BUTTON_COLS; col++) {
          index = brd*NUM_BUTTON_ROWS*NUM_BUTTON_COLS + col*NUM_BUTTON_ROWS + plt;  // plt == row
          
          // if the note is active...
          if (noteControls[index].pressed) {
            if (touchControls[plt].pressed) {
              // play the note
              noteControls[index].triggerOn();
            } else {
              // stop the note
              noteControls[index].triggerOff();
            }
          }  
        }
      }
    }
  }
}

//-------------------------
void doTouchChords() {
  boolean state;
  int index;
  
  for (int plt = 0; plt < NUM_TOUCH_PLATES; plt++) {
    state = bitRead(touchStates, 2*plt + 0);
    
    if (touchControls[plt].pressed != state) {
      touchControls[plt].toggle();
      
      // trigger chords if necessary
      for (int brd = 0; brd < (NUM_BUTTON_BOARDS-1); brd++) {
        for (int col = 0; col < NUM_BUTTON_COLS; col++) {
          for (int row = 0; row < NUM_BUTTON_ROWS-1; row++) {
            index = brd*(NUM_BUTTON_ROWS-1)*NUM_BUTTON_COLS + col*(NUM_BUTTON_ROWS-1) + row;
        
            // if the chord is active...
            if (chordControls[index].pressed) {
              if (touchControls[plt].pressed) {
                // play the specific note in the chord
                chordControls[index].triggerChordOn(plt);  
              } else {
                // stop the specific note in the chord
                chordControls[index].triggerChordOff(plt);
              }
            }
          }  
        }
      }
    }
  }
}

//-------------------------
void doTouchScales() {
  boolean state;
  int index;
  
  for (int plt = 0; plt < NUM_TOUCH_PLATES; plt++) {
    state = bitRead(touchStates, 2*plt + 0);
    
    if (touchControls[plt].pressed != state) {
      touchControls[plt].toggle();
      
      // trigger scales if necessary
      for (int brd = 0; brd < (NUM_BUTTON_BOARDS-1); brd++) {
        for (int col = 0; col < NUM_BUTTON_COLS; col++) {
          for (int row = 0; row < NUM_BUTTON_ROWS-1; row++) {
            index = brd*(NUM_BUTTON_ROWS-1)*NUM_BUTTON_COLS + col*(NUM_BUTTON_ROWS-1) + row;
        
            // if the chord is active...
            if (chordControls[index].pressed) {
              if (touchControls[plt].pressed) {
                // play the specific note in the scale
                chordControls[index].triggerScaleOn(plt);  
              } else {
                // stop the specific note in the chord
                chordControls[index].triggerScaleOff(plt);
              }
            }
          }  
        }
      }
    }
  }
}

