#define ACC_X_AXIS_PIN 6
#define ACC_Y_AXIS_PIN 7
#define WHAMMY_PIN     0
#define MOD_STRIP_PIN  1
#define KNOB_1_PIN     2
#define KNOB_2_PIN     3
#define KNOB_3_PIN     4
#define KNOB_4_PIN     5

void setup() {
  Serial.begin(9600);
}

void loop() {
  Serial.print("WHAMMY: ");
  Serial.println(analogRead(WHAMMY_PIN));
  Serial.print("MODSTRIP: ");
  Serial.println(analogRead(MOD_STRIP_PIN));
  Serial.print("KNOB1: ");
  Serial.println(analogRead(KNOB_1_PIN));
  Serial.print("KNOB2: ");
  Serial.println(analogRead(KNOB_2_PIN));
  Serial.print("KNOB3: ");
  Serial.println(analogRead(KNOB_3_PIN));
  Serial.print("KNOB4: ");
  Serial.println(analogRead(KNOB_4_PIN));
  Serial.println("****************");
  delay(500);
}
