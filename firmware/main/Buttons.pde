//-------------------------
void readButtonStates() {
  for (int brd = 0; brd < NUM_BUTTON_BOARDS; brd++) {
    buttonStates[brd] = readButtonBoard(brd);
    for (int col = 0; col < NUM_BUTTON_COLS; col++) {
      bitWrite(chordFlags, brd*NUM_BUTTON_COLS + col, bitRead(buttonStates[brd], NUM_BUTTON_ROWS*col + 2));
    }
  }
}

//-------------------------
void printButtonStates() {
  Serial.println("*** BUTTON STATES ***");
  for (int i=0; i < NUM_BUTTON_BOARDS; i++) {
    Serial.print(i+1);
    Serial.print(": ");
    Serial.println(buttonStates[i], BIN);  
  }
  Serial.println("**** CHORD FLAGS ****");
  Serial.println(chordFlags, BIN);
  Serial.println("*********************");
}

//-------------------------
word readButtonBoard(int _id) {
  Wire.requestFrom(_id+1, 2);  // request 2 bytes from slave device
  //Wire.requestFrom(4, 2);  // request 2 bytes from slave device

  int numBytes = Wire.available();
  if (numBytes == 2) {
    byte buttonsTwo = Wire.receive();
    byte buttonsOne = Wire.receive();
    
    return (buttonsTwo << 8) | buttonsOne;
  }
  
  return 0;  // ERROR!
}
