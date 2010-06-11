#define ACC_X_AXIS_PIN 6
#define ACC_Y_AXIS_PIN 7
#define WHAMMY_PIN     0
#define MOD_STRIP_PIN  1
#define KNOB_1_PIN     2
#define KNOB_2_PIN     3
#define KNOB_3_PIN     4
#define KNOB_4_PIN     5

// analog input value holders
const int ACC_NUM_READINGS = 10;
int accIndex = 0;

int xArray[ACC_NUM_READINGS];    
int xTotal = 0;                 
int xAverage = 0;              

int yArray[ACC_NUM_READINGS];  
int yTotal = 0;                
int yAverage = 0; 

int whammyVal = 0;
int modStripVal = 0;

int knob1Val = 0;
int knob2Val = 0;
int knob3Val = 0;
int knob4Val = 0;

// continuous controls
const int CC_CHANNEL = 176;

ContinuousControl accX;
ContinuousControl accY;
ContinuousControl modStrip;
ContinuousControl whammyBar;
ContinuousControl knob1;
ContinuousControl knob2;
ContinuousControl knob3;
ContinuousControl knob4;

//-------------------------
void initAnalogs() {
  for (int i = 0; i < ACC_NUM_READINGS; i++) {
    xArray[i] = 0;
    yArray[i] = 0;
  } 
  
  accX.set(1, CC_CHANNEL, ControlMapping(26));
  accY.set(1, CC_CHANNEL, ControlMapping(27));
  modStrip.set(1, CC_CHANNEL, ControlMapping(20));
  whammyBar.set(1, CC_CHANNEL, ControlMapping(25));
  knob1.set(1, CC_CHANNEL, ControlMapping(21));
  knob2.set(1, CC_CHANNEL, ControlMapping(22));
  knob3.set(1, CC_CHANNEL, ControlMapping(23));
  knob4.set(1, CC_CHANNEL, ControlMapping(24));
}

//-------------------------
void readAnalogValues() {
  readAccelerometer();
  readWhammy();
  readModStrip();
  readKnobs();
}

//-------------------------
void readAccelerometer() {
  xTotal -= xArray[accIndex];  // subtract the last reading   
  xArray[accIndex] = analogRead(ACC_X_AXIS_PIN);
  xTotal += xArray[accIndex];  // add the reading to the total
  
  yTotal -= yArray[accIndex];  // subtract the last reading   
  yArray[accIndex] = analogRead(ACC_Y_AXIS_PIN);
  yTotal += yArray[accIndex];  // add the reading to the total
  
  // calculate the averages
  xAverage = map(xTotal / ACC_NUM_READINGS, 0, 190, 0, 127);   
  yAverage = map(yTotal / ACC_NUM_READINGS, 25, 275, 0, 127);  
  
  accIndex = (accIndex+1)%ACC_NUM_READINGS;
}

//-------------------------
void readWhammy() {
  whammyVal = map(analogRead(WHAMMY_PIN), 439, 549, 0, 127);
}

//-------------------------
void readModStrip() {
  modStripVal = analogRead(MOD_STRIP_PIN) / 8;
}

//-------------------------
void readKnobs() {
  knob1Val = analogRead(KNOB_1_PIN) / 8;
  knob2Val = analogRead(KNOB_2_PIN) / 8;
  knob3Val = analogRead(KNOB_3_PIN) / 8;
  knob4Val = analogRead(KNOB_4_PIN) / 8;
}

//-------------------------
void updateContinuousControls() {
  accX.update(xAverage);
  accY.update(yAverage);
  modStrip.update(modStripVal);
  whammyBar.update(whammyVal);
  knob1.update(knob1Val);
  knob2.update(knob2Val);
  knob3.update(knob3Val);
  knob4.update(knob4Val);
}


