//-------------------------
DigitalControl digiControls[NUM_BUTTON_COLS * NUM_BUTTON_ROWS];

//-------------------------
void initDigitals() {
  for (int col = 0; col < NUM_BUTTON_COLS; col++) {
    for (int row = 0; row < NUM_BUTTON_ROWS; row++) {
      digiControls[col*NUM_BUTTON_ROWS + row].set(col*NUM_BUTTON_ROWS + row, 0x90, NoteMapping(col*NUM_BUTTON_ROWS + row));
    }
  }
}

//-------------------------
void doDigitals() {
  // trigger digitals (notes) if necesary
  int brd = NUM_BUTTON_BOARDS-1;
  for (int col = 0; col < NUM_BUTTON_COLS; col++) {
    for (int row = 0; row < NUM_BUTTON_ROWS; row++) {
      boolean state = bitRead(buttonStates[brd], col*NUM_BUTTON_ROWS + row);
      if (digiControls[col*NUM_BUTTON_ROWS + row].pressed != state) {
        digiControls[col*NUM_BUTTON_ROWS + row].toggle();  
      }
    }  
  }
}
