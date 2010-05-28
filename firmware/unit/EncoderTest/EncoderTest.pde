#define ENCODER_A_PIN     13
#define ENCODER_B_PIN     12
#define ENCODER_PRESS_PIN 11

#define BPM_INCREMENT     10
#define BPM_MAX           250
#define BPM_MIN           1

//-------------------------
const int NEXT_ENCODER_STATE[4] = { 2, 0, 3, 1 };
const int PREV_ENCODER_STATE[4] = { 1, 3, 0, 2 };

int encoderCount;
int encoderPrevState;

//-------------------------
void initEncoder() {
  pinMode(ENCODER_A_PIN, INPUT);
  pinMode(ENCODER_B_PIN, INPUT);
  pinMode(ENCODER_PRESS_PIN, INPUT);
  
  digitalWrite(ENCODER_A_PIN, HIGH);
  digitalWrite(ENCODER_B_PIN, HIGH);
  digitalWrite(ENCODER_PRESS_PIN, HIGH);
}

//-------------------------
void readEncoderValues() {
  int currState = (digitalRead(ENCODER_A_PIN) << 1) | digitalRead(ENCODER_B_PIN);
  if (currState != encoderPrevState) {
    if (currState == NEXT_ENCODER_STATE[encoderPrevState]) encoderCount++;
    else if (currState == PREV_ENCODER_STATE[encoderPrevState]) encoderCount--;
    encoderPrevState = currState;
  }
}

//-------------------------
void setup() {
  Serial.begin(9600);
  initEncoder();
}

//-------------------------
void loop() {
  readEncoderValues();
  Serial.println(encoderCount / 4);
}
