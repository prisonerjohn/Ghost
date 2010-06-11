#define NUM_TOUCH_PLATES   8
#define TOUCH_PLATE_PIN_1   22

//-------------------------
byte touchStates;

//-------------------------
void initTouchPlate() {
  for (int i = 0; i < NUM_TOUCH_PLATES; i++) {
    // set the touch plate pins as inputs
    pinMode(TOUCH_PLATE_PIN_1 + 2*i + 0, INPUT);
    //pinMode(TOUCH_PLATE_PIN_1 + 2*i + 1, INPUT);
  }
}

//-------------------------
void readTouchStates() {
  for (int i = 0; i < NUM_TOUCH_PLATES; i++) {
    bitWrite(touchStates, i, digitalRead(TOUCH_PLATE_PIN_1 + 2*i + 0));
  }
}

//-------------------------
void setup() {
  Serial.begin(9600);
  initTouchPlate();
}

//-------------------------
void loop() {
  readTouchStates();
  Serial.println(touchStates, BIN);
}
