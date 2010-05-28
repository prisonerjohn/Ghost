//-------------------------
int currStep;
int currArray;
DrumControl drumControls[NUM_ARRAYS][NUM_STEPS];
ButtonControl sequenceControls[NUM_ARRAYS];
ButtonControl arrayControls[NUM_ARRAYS];

//-------------------------
void initDrums() {
  currStep = 0;
  currArray = 0;
  
  MsTimer2::set(125, step);  // 500ms period
  MsTimer2::start();
  
  for (int a=0; a < NUM_ARRAYS; a++) {
    NoteMapping d(38 + a);
    for (int s=0; s < NUM_STEPS; s++) {
      drumControls[a][s].set(s, 0x90, d);
    } 
  }
}

//-------------------------
void step() {
  // advance to the next step
  currStep = (currStep+1)%NUM_STEPS;
  
  // trigger all notes turned on at this step
  for (int a=0; a < NUM_ARRAYS; a++) {
    if (drumControls[a][currStep].state) {
      drumControls[a][currStep].trigger();
    }
  }
}

//-------------------------
void doDrums() {
  // read the control buttons
  for (int i=0; i < NUM_STEPS; i++) {
    boolean state = bitRead(rowFlags[0], i);
    if (drumControls[currArray][i].pressed != state) {
      drumControls[currArray][i].toggle();  
    } 
  }
  
  // read the sequence buttons
  for (int i=0; i < NUM_STEPS; i++) {
    boolean state = bitRead(rowFlags[1], i);
    if (sequenceControls[i].pressed != state) {
      sequenceControls[i].toggle();
      if (sequenceControls[i].pressed) {
        // a press makes that control the selected one
        currStep = i;
      }
      break;
    } 
  }
  
  // read the array buttons
  for (int i=0; i < NUM_STEPS; i++) {
    boolean state = bitRead(rowFlags[2], i);
    if (arrayControls[i].pressed != state) {
      arrayControls[i].toggle();
      // any state change makes that control the selected one
      currArray = i;
      break;
    } 
  }
  
  // write the lights
  for (int i=0; i < NUM_BUTTON_BOARDS; i++) {
    writeLightStates(i);
  }
}

//-------------------------
void writeLightStates(int _id) {
  //word lights = (B10011111 << 8) | B01010101;
  word lights = 0;
  
  // set the control lights (1st row)
  for (int i=0; i < NUM_BUTTON_COLS; i++) {
    bitWrite(lights, NUM_BUTTON_ROWS * i + 0, drumControls[currArray][_id * NUM_BUTTON_COLS + i].state);  
  }
  
  // turn on the step light (2nd row)
  if (currStep/4 == _id) {
    int s = currStep % NUM_BUTTON_COLS;
    bitWrite(lights, NUM_BUTTON_ROWS * s + 1, 1);  
  }
  
  // turn on the array light
  if (currArray/4 == _id) {
    int a = currArray % NUM_BUTTON_COLS;
    bitWrite(lights, NUM_BUTTON_ROWS * a + 2, 1);  
  }
  
  Wire.beginTransmission(_id + 1); // transmit to device #4
  //Wire.send((B10011111 << 8) | B01010101);
  //Wire.send(B01010101);
  Wire.send(uint8_t((lights >> 8) & B11111111));  // bits 8-11
  Wire.send(uint8_t(lights & B11111111));         // bits 0-7
  Wire.endTransmission();    // stop transmitting
}
