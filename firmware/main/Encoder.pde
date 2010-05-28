#define ENCODER_A_PIN     13
#define ENCODER_B_PIN     12
#define ENCODER_PRESS_PIN 11

#define BPM_INCREMENT     10

//-------------------------
const int NEXT_ENCODER_STATE[4] = { 2, 0, 3, 1 };
const int PREV_ENCODER_STATE[4] = { 1, 3, 0, 2 };

int encoderCount;
int encoderPrevState;
int encoderPrevPress;

//-------------------------
void initEncoder() {
  pinMode(ENCODER_A_PIN, INPUT);
  pinMode(ENCODER_B_PIN, INPUT);
  pinMode(ENCODER_PRESS_PIN, INPUT);
  
  digitalWrite(ENCODER_A_PIN, HIGH);
  digitalWrite(ENCODER_B_PIN, HIGH);
  digitalWrite(ENCODER_PRESS_PIN, HIGH);
  
  encoderPrevPress = digitalRead(ENCODER_PRESS_PIN);
}

//-------------------------
void readEncoderValues() {
  int currState = (digitalRead(ENCODER_A_PIN) << 1) | digitalRead(ENCODER_B_PIN);
  if (currState != encoderPrevState) {
    if (currState == NEXT_ENCODER_STATE[encoderPrevState]) encoderCount++;
    else if (currState == PREV_ENCODER_STATE[encoderPrevState]) encoderCount--;
    
    encoderCount = min(max(encoderCount, -120), 120);
    bpm += (encoderCount / 4);
    bpm = min(max(bpm, 1), 320);
    
    resetDrums();
    doLCD(bpm);
    
    encoderPrevState = currState;
  }
  
  int currPress = digitalRead(ENCODER_PRESS_PIN);
  if (currPress != encoderPrevPress) {
    if (!currPress) {
      // toggle drums on release
      if (drumsRunning) stopDrums();
      else startDrums();
    }
    
    encoderPrevPress = currPress;
  }
}

////-------------------------
//void readEncoderValues() {
//  int currPos;
//  int currPress;
//  readEncoder(currPos, currPress);
//  
//  if (currPos != pos) {
//    boolean forward = ((pos == 0) && (currPos == 1)) ||
//                      ((pos == 1) && (currPos == 3)) ||
//                      ((pos == 3) && (currPos == 2)) ||
//                      ((pos == 2) && (currPos == 0));
//    if (forward) {
//      bpm = min(bpm + BPM_INCREMENT, BPM_MAX);
//    } else {
//      bpm -= max(bpm - BPM_INCREMENT, BPM_MIN);
//    }    
//    
//    resetDrums();
//    doLCD(bpm);
//  }
//  
//  if (currPress != press) {
//    Serial.println(press? "Press" : "Release");
//  }
//
//  pos = currPos;
//  press = currPress;
//}
