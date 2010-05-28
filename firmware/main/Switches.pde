//-------------------------
void initSwitches() {
  pinMode(SWITCH_NOTE_CHORD, INPUT);
  pinMode(SWITCH_AUTO_CHORD, INPUT);
  pinMode(SWITCH_TOUCH_PLATE, INPUT);
  pinMode(SWITCH_DRUM_MACHINE, INPUT);
}

//-------------------------
void readSwitchStates() {
  noteChordSwitch = digitalRead(SWITCH_NOTE_CHORD);
  autoChordSwitch = digitalRead(SWITCH_AUTO_CHORD);
  touchPlateSwitch = digitalRead(SWITCH_TOUCH_PLATE);
  drumMachineSwitch = digitalRead(SWITCH_DRUM_MACHINE);
}
