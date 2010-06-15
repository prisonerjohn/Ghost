//---------------------
void initHeadstock() {
  for (int i = 0; i < NUM_TOUCH_PLATES; i++) {
    // set the headstock pins as outputs
    pinMode(HEADSTOCK_PIN_1 + i, OUTPUT);
  }
}

//----------------------
void updateHeadstock() {
  for (int plt = 0; plt < NUM_TOUCH_PLATES; plt++) {
    if (bitRead(touchStates, 2*plt + 0)) {
      digitalWrite(HEADSTOCK_PIN_1 + plt, HIGH);  
    } else {
      digitalWrite(HEADSTOCK_PIN_1 + plt, LOW);  
    }
  }
}
