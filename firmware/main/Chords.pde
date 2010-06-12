//-------------------------
ChordControl chordControls[(NUM_BUTTON_BOARDS-1) * NUM_BUTTON_COLS * (NUM_BUTTON_ROWS-1)];

//-------------------------
void initChords() {
  // top row
  chordControls[0].set(0, 0x90, ChordMapping(C_MAJOR, 8), ChordMapping(C_MAJOR_SCL, 8));
  chordControls[0].addMapping(ChordMapping(C_SEVEN, 8, B1));
  chordControls[0].addMapping(ChordMapping(C_MAJOR_7, 8, B11));
  chordControls[0].addMapping(ChordMapping(C_AUGMENTED, 8, B10));
  
  chordControls[2].set(0, 0x90, ChordMapping(G_MAJOR, 8), ChordMapping(G_MAJOR_SCL, 8));
  chordControls[2].addMapping(ChordMapping(G_SEVEN, 8, B10));
  chordControls[2].addMapping(ChordMapping(G_MAJOR_7, 8, B110));
  chordControls[2].addMapping(ChordMapping(G_AUGMENTED, 8, B100));
  
  chordControls[4].set(0, 0x90, ChordMapping(D_MAJOR, 8), ChordMapping(D_MAJOR_SCL, 8));
  chordControls[4].addMapping(ChordMapping(D_SEVEN, 8, B100));
  chordControls[4].addMapping(ChordMapping(D_MAJOR_7, 8, B1100));
  chordControls[4].addMapping(ChordMapping(D_AUGMENTED, 8, B1000));
  
  chordControls[6].set(0, 0x90, ChordMapping(A_MAJOR, 8), ChordMapping(A_MAJOR_SCL, 8));
  chordControls[6].addMapping(ChordMapping(A_SEVEN, 8, B1000));
  chordControls[6].addMapping(ChordMapping(A_MAJOR_7, 8, B11000));
  chordControls[6].addMapping(ChordMapping(A_AUGMENTED, 8, B10000));
  
  chordControls[8].set(0, 0x90, ChordMapping(E_MAJOR, 8), ChordMapping(E_MAJOR_SCL, 8));
  chordControls[8].addMapping(ChordMapping(E_SEVEN, 8, B10000));
  chordControls[8].addMapping(ChordMapping(E_MAJOR_7, 8, B110000));
  chordControls[8].addMapping(ChordMapping(E_AUGMENTED, 8, B100000));
  
  chordControls[10].set(0, 0x90, ChordMapping(B_MAJOR, 8), ChordMapping(B_MAJOR_SCL, 8));
  chordControls[10].addMapping(ChordMapping(B_SEVEN, 8, B100000));
  chordControls[10].addMapping(ChordMapping(B_MAJOR_7, 8, B1100000));
  chordControls[10].addMapping(ChordMapping(B_AUGMENTED, 8, B1000000));
  
  chordControls[12].set(0, 0x90, ChordMapping(F_SHARP_MAJOR, 8), ChordMapping(F_SHARP_MAJOR_SCL, 8));
  chordControls[12].addMapping(ChordMapping(F_SHARP_SEVEN, 8, B1000000));
  chordControls[12].addMapping(ChordMapping(F_SHARP_MAJOR_7, 8, B11000000));
  chordControls[12].addMapping(ChordMapping(F_SHARP_AUGMENTED, 8, B10000000));
  
  chordControls[14].set(0, 0x90, ChordMapping(C_SHARP_MAJOR, 8), ChordMapping(C_SHARP_MAJOR_SCL, 8));
  chordControls[14].addMapping(ChordMapping(C_SHARP_SEVEN, 8, B10000000));
  chordControls[14].addMapping(ChordMapping(C_SHARP_MAJOR_7, 8, (B1 << 8) | B10000000));
  chordControls[14].addMapping(ChordMapping(C_SHARP_AUGMENTED, 8, (B1 << 8)));
  
  chordControls[16].set(0, 0x90, ChordMapping(G_SHARP_MAJOR, 8), ChordMapping(G_SHARP_MAJOR_SCL, 8));
  chordControls[16].addMapping(ChordMapping(G_SHARP_SEVEN, 8, (B1 << 8)));
  chordControls[16].addMapping(ChordMapping(G_SHARP_MAJOR_7, 8, (B11 << 8)));
  chordControls[16].addMapping(ChordMapping(G_SHARP_AUGMENTED, 8, (B10 << 8)));
  
  chordControls[18].set(0, 0x90, ChordMapping(D_SHARP_MAJOR, 8), ChordMapping(D_SHARP_MAJOR_SCL, 8));
  chordControls[18].addMapping(ChordMapping(D_SHARP_SEVEN, 8, (B10 << 8)));
  chordControls[18].addMapping(ChordMapping(D_SHARP_MAJOR_7, 8, (B110 << 8)));
  chordControls[18].addMapping(ChordMapping(D_SHARP_AUGMENTED, 8, (B100 << 8)));
  
  chordControls[20].set(0, 0x90, ChordMapping(A_SHARP_MAJOR, 8), ChordMapping(A_SHARP_MAJOR_SCL, 8));
  chordControls[20].addMapping(ChordMapping(A_SHARP_SEVEN, 8, (B100 << 8)));
  chordControls[20].addMapping(ChordMapping(A_SHARP_MAJOR_7, 8, (B1100 << 8)));
  chordControls[20].addMapping(ChordMapping(A_SHARP_AUGMENTED, 8, (B1000 << 8)));
  
  chordControls[22].set(0, 0x90, ChordMapping(F_MAJOR, 8), ChordMapping(F_MAJOR_SCL, 8));
  chordControls[22].addMapping(ChordMapping(F_SEVEN, 8, (B1000 << 8)));
  chordControls[22].addMapping(ChordMapping(F_MAJOR_7, 8, (B1100 << 8)));
  chordControls[22].addMapping(ChordMapping(F_AUGMENTED, 8, (B100 << 8))); 
  
  // second row
  chordControls[1].set(0, 0x90, ChordMapping(A_MINOR, 8), ChordMapping(A_MINOR_SCL, 8));
  chordControls[1].addMapping(ChordMapping(A_MINOR_7, 8, B1));
  chordControls[1].addMapping(ChordMapping(A_DIMINISHED, 8, B10));
  
  chordControls[3].set(0, 0x90, ChordMapping(E_MINOR, 8), ChordMapping(E_MINOR_SCL, 8));
  chordControls[3].addMapping(ChordMapping(E_MINOR_7, 8, B10));
  chordControls[3].addMapping(ChordMapping(E_DIMINISHED, 8, B100));
  
  chordControls[5].set(0, 0x90, ChordMapping(B_MINOR, 8), ChordMapping(B_MINOR_SCL, 8));
  chordControls[5].addMapping(ChordMapping(B_MINOR_7, 8, B100));
  chordControls[5].addMapping(ChordMapping(B_DIMINISHED, 8, B1000));
  
  chordControls[7].set(0, 0x90, ChordMapping(F_SHARP_MINOR, 8), ChordMapping(F_SHARP_MINOR_SCL, 8));
  chordControls[7].addMapping(ChordMapping(F_SHARP_MINOR_7, 8, B1000));
  chordControls[7].addMapping(ChordMapping(F_SHARP_DIMINISHED, 8, B10000));
  
  chordControls[9].set(0, 0x90, ChordMapping(C_SHARP_MINOR, 8), ChordMapping(C_SHARP_MINOR_SCL, 8));
  chordControls[9].addMapping(ChordMapping(C_SHARP_MINOR_7, 8, B10000));
  chordControls[9].addMapping(ChordMapping(C_SHARP_DIMINISHED, 8, B100000));
  
  chordControls[11].set(0, 0x90, ChordMapping(G_SHARP_MINOR, 8), ChordMapping(G_SHARP_MINOR_SCL, 8));
  chordControls[11].addMapping(ChordMapping(G_SHARP_MINOR_7, 8, B100000));
  chordControls[11].addMapping(ChordMapping(G_SHARP_DIMINISHED, 8, B1000000));
  
  chordControls[13].set(0, 0x90, ChordMapping(D_SHARP_MINOR, 8), ChordMapping(D_SHARP_MINOR_SCL, 8));
  chordControls[13].addMapping(ChordMapping(D_SHARP_MINOR_7, 8, B1000000));
  chordControls[13].addMapping(ChordMapping(D_SHARP_DIMINISHED, 8, B10000000));
  
  chordControls[15].set(0, 0x90, ChordMapping(A_SHARP_MINOR, 8), ChordMapping(A_SHARP_MINOR_SCL, 8));
  chordControls[15].addMapping(ChordMapping(A_SHARP_MINOR_7, 8, B10000000));
  chordControls[15].addMapping(ChordMapping(A_SHARP_DIMINISHED, 8, (B1 << 8)));
  
  chordControls[17].set(0, 0x90, ChordMapping(F_MINOR, 8), ChordMapping(F_MINOR_SCL, 8));
  chordControls[17].addMapping(ChordMapping(F_MINOR_7, 8, (B1 << 8)));
  chordControls[17].addMapping(ChordMapping(F_DIMINISHED, 8, (B10 << 8)));
  
  chordControls[19].set(0, 0x90, ChordMapping(C_MINOR, 8), ChordMapping(C_MINOR_SCL, 8));
  chordControls[19].addMapping(ChordMapping(C_MINOR_7, 8, (B10 << 8)));
  chordControls[19].addMapping(ChordMapping(C_DIMINISHED, 8, (B100 << 8)));
  
  chordControls[21].set(0, 0x90, ChordMapping(G_MINOR, 8), ChordMapping(G_MINOR_SCL, 8));
  chordControls[21].addMapping(ChordMapping(G_MINOR_7, 8, (B100 << 8)));
  chordControls[21].addMapping(ChordMapping(G_DIMINISHED, 8, (B1000 << 8)));
  
  chordControls[23].set(0, 0x90, ChordMapping(D_MINOR, 8), ChordMapping(D_MINOR_SCL, 8));
  chordControls[23].addMapping(ChordMapping(D_MINOR_7, 8, (B1000 << 8)));
  chordControls[23].addMapping(ChordMapping(D_DIMINISHED, 8, (B100 << 8)));
}

//-------------------------
void doChords() {
  boolean state;
  int index;
  
  // trigger chords if necessary
  for (int brd = 0; brd < (NUM_BUTTON_BOARDS-1); brd++) {
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
        } else if (chordControls[index].pressed && chordControls[index].lastFlag != rowFlags[2]) {
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
