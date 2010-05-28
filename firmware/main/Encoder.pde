class EncoderContext
{
 public:
   EncoderContext(){
     id = -1;

     state = 0;
     prevstate = 0;
     count = 0;

     encoderPin1= 3;
     encoderPin2 = 4;

     int next[4] = { 2, 0, 3, 1 };
     int prev[4] = { 1, 3, 0, 2 };

     for (int i = 0; i < 4; ++i)
     {
        nextEncoderState[i] = next[i];
        prevEncoderState[i] = prev[i];
     }
 }

 void encoderSetup()
 {
   pinMode(encoderPin1, INPUT);
   pinMode(encoderPin2, INPUT);
   digitalWrite(encoderPin1, HIGH);
   digitalWrite(encoderPin2, HIGH);
 }

 void Read()
 {
     state = (digitalRead(encoderPin1) << 1) | digitalRead(encoderPin2);
     if (state != prevstate) {
       if (state == nextEncoderState[prevstate]) {
         count++;
        }
        else if (state == prevEncoderState[prevstate]) {
         count--;
        }

        memset(str, '\0', 20 * sizeof(char));
        sprintf(str, "encoder%d %d", id, count);
        Serial.println(str);
        prevstate = state;
     }
 }
 char str[20];
 int state;
 int prevstate;
 int count;
 int nextEncoderState[4];
 int prevEncoderState[4];

 int encoderPin1;
 int encoderPin2;

 int id;

};
