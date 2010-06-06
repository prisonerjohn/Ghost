//---------------------
void initHeadstock() {
  for (int i = 0; i < NUM_TOUCH_PLATES; i++) {
    // set the headstock pins as outputs
    pinMode(HEADSTOCK_PIN_1 + i, OUTPUT);
  }
}

//----------------------
void updateHeadstock() {
  for (int i = 0; i < NUM_TOUCH_PLATES; i++) {
    if (bitRead(touchStates, i)) {
      digitalWrite(HEADSTOCK_PIN_1 + i, HIGH);  
    } else {
      digitalWrite(HEADSTOCK_PIN_1 + i, LOW);  
    }
  }
}
