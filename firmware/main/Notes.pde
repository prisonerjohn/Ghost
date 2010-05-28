//-------------------------
void initNotes() {
  for (int col = 0; col < NUM_BUTTON_BOARDS * NUM_BUTTON_COLS; col++) {
    for (int row = 0; row < NUM_BUTTON_ROWS; row++) {
      noteControls[col*NUM_BUTTON_ROWS + row].set(col*NUM_BUTTON_ROWS + row, 0x90, NoteMapping(65 + 5*row + col));
    }
  }
}

//-------------------------
void doNotes() {
  // trigger notes if necesary
  for (int brd = 0; brd < NUM_BUTTON_BOARDS; brd++) {
    for (int col = 0; col < NUM_BUTTON_COLS; col++) {
      for (int row = 0; row < NUM_BUTTON_ROWS; row++) {
        boolean state = bitRead(buttonStates[brd], col*NUM_BUTTON_ROWS + row);
#ifdef DEBUG
        Serial.print(state, BIN);
#else
        if (noteControls[brd*NUM_BUTTON_ROWS*NUM_BUTTON_COLS + col*NUM_BUTTON_ROWS + row].pressed != state) {
          noteControls[brd*NUM_BUTTON_ROWS*NUM_BUTTON_COLS + col*NUM_BUTTON_ROWS + row].toggle();  
        }
#endif
      }  
    }
#ifdef DEBUG
    Serial.println();
#endif
  }
}
