#define NUM_TOUCH_PLATES   8
#define TOUCH_PLATE_PIN_1 22

//-------------------------
word touchStates;

//-------------------------
void initTouchPlate() {
  for (int i = 0; i < NUM_TOUCH_PLATES; i++) {
    // set the touch plate pins as inputs
    pinMode(TOUCH_PLATE_PIN_1 + 2*i + 0, INPUT);
    pinMode(TOUCH_PLATE_PIN_1 + 2*i + 1, INPUT);
  }
  
  touchStates = 0;
}

//-------------------------
void readTouchStates() {
  for (int i = 0; i < NUM_TOUCH_PLATES; i++) {
    bitWrite(touchStates, 2*i + 0, digitalRead(TOUCH_PLATE_PIN_1 + 2*i + 0));
    bitWrite(touchStates, 2*i + 1, digitalRead(TOUCH_PLATE_PIN_1 + 2*i + 1));
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
  //Serial.println(touchStates, BIN);
  
  for (int i = 0; i < NUM_TOUCH_PLATES; i++) {
    Serial.print(bitRead(touchStates, 2*i + 0), BIN);
    //Serial.print(bitRead(touchStates, 2*i + 1), BIN);
  }
  Serial.println();
}
