//-------------------------
void initChords() {
  chordControls[0].set(0, 0x90, ChordMapping(C_MAJOR, 8));
  chordControls[2].set(0, 0x90, ChordMapping(G_MAJOR, 8));
  chordControls[4].set(0, 0x90, ChordMapping(D_MAJOR, 8));
  chordControls[6].set(0, 0x90, ChordMapping(A_MAJOR, 8));
  
  chordControls[1].set(0, 0x90, ChordMapping(A_MINOR, 8));
  chordControls[3].set(0, 0x90, ChordMapping(E_MINOR, 8));
  chordControls[5].set(0, 0x90, ChordMapping(B_MINOR, 8));
  chordControls[7].set(0, 0x90, ChordMapping(F_SHARP_MINOR, 8));
  
  chordControls[0].addMapping(ChordMapping(G_MAJOR, 8, 1));
  
  //    chordControls[col*(NUM_BUTTON_ROWS-1) + row].addMapping(ChordMapping(G_MAJOR, sizeof(G_MAJOR) / sizeof(G_MAJOR[0]), 1));
  //    chordControls[col*(NUM_BUTTON_ROWS-1) + row].addMapping(ChordMapping(D_MAJOR, sizeof(D_MAJOR) / sizeof(D_MAJOR[0]), B11));
  //    chordControls[col*(NUM_BUTTON_ROWS-1) + row].addMapping(ChordMapping(A_MAJOR, sizeof(A_MAJOR) / sizeof(A_MAJOR[0]), B10));
}

//-------------------------
void doChords() {
  boolean state;
  int index;
  
  // trigger chords if necessary
  for (int brd = 0; brd < NUM_BUTTON_BOARDS; brd++) {
    for (int col = 0; col < NUM_BUTTON_COLS; col++) {
      for (int row = 0; row < NUM_BUTTON_ROWS-1; row++) {
        state = bitRead(buttonStates[brd], col*NUM_BUTTON_ROWS + row);
        index = brd*(NUM_BUTTON_ROWS-1)*NUM_BUTTON_COLS + col*(NUM_BUTTON_ROWS-1) + row;
        
#ifdef DEBUG
        Serial.print(state, BIN);
#else
        // if the button state changes...
        if (chordControls[index].pressed != state) {
          // ...toggle the control
          chordControls[index].toggle();
          
        // if the button is pressed and the chordFlags is different...
        } else if (chordControls[index].pressed && chordControls[index].lastFlag != chordFlags) {
            int i;
            // if the chord flag mapping exists
            if ((i = chordControls[index].mappingExists()) != -1) {
              // ...release the control
              chordControls[index].release();
              // ...press it back with the new value
              chordControls[index].pressIndex(i);
            }
        }
#endif
      }  
    }
#ifdef DEBUG
    Serial.println();
#endif
  }
}
