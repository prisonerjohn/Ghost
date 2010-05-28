#include <Wire.h>
#define NUM_ENCODERS 1
#define ENCODER1_PIN_1 10
#define ENCODER1_PIN_2 9

//#include <Fat16.h>
//#include <Fat16util.h>
//
//SdCard card;
//Fat16 file;
//
//// store error strings in flash to save RAM
//#define error(s) error_P(PSTR(s))
//void error_P(const char *str)
//{
//  PgmPrint("error: ");
//  SerialPrintln_P(str);
//  if (card.errorCode) {
//    PgmPrint("SD error: ");
//    Serial.println(card.errorCode, HEX);
//  }
//  while(1);
//}

byte buttonsOne;
byte buttonsTwo;

//char mChan;
//char mCC;
//char mCCVal;

// general midi notes

char cNeg1 = 0; //C6
char cSharpNeg1 = 1;
char dNeg1 = 2;
char dSharpNeg1 = 3;
char eNeg1 = 4; //E
char fNeg1 = 5;
char fSharpNeg1 = 6;
char gNeg1 = 7; //G
char gSharpNeg1 = 8;
char aNeg1 = 9;
char aSharpNeg1 = 10;
char bNeg1 = 11;

char c0 = 12; // C0
char cSharp0 = 13;
char d0 = 14;
char dSharp0 = 15;
char e0 = 16; //E
char f0 = 17;
char fSharp0 = 18;
char g0 = 19; //G
char gSharp0 = 20;
char a0 = 21;
char aSharp0 = 22;
char b0 = 23;

char c1 = 24; //Middle C1
char cSharp1 = 25;
char d1 = 26;
char dSharp1 = 27;
char e1 = 28; //E
char f1 = 29;
char fSharp1 = 30;
char g1 = 31; //G
char gSharp1 = 32;
char a1 = 33;
char aSharp1 = 34;
char b1 = 35;

char c2 = 36; //C2
char cSharp2 = 37;
char d2 = 38;
char dSharp2 = 39;
char e2 = 40; //E
char f2 = 41;
char fSharp2 = 42;
char g2 = 43; //G
char aFlat2 = 44;
char a2 = 45;
char bFlat2 = 46;
char b2 = 47;

char c3 = 48; //C3
char dFlat3 = 49;
char d3 = 50;
char eFlat3 = 51;
char e3 = 52; //E
char f3 = 53;
char fSharp3 = 54;
char g3 = 55; //G
char aFlat3 = 56;
char a3 = 57;
char bFlat3 = 58;
char b3 = 59;

char c4 = 60; //C4
char dFlat4 = 61;
char d4 = 62;
char eFlat4 = 63;
char e4 = 64; //E
char f4 = 65;
char fSharp4 = 66;
char g4 = 67; //G
char aFlat4 = 68;
char a4 = 69;
char bFlat4 = 70;
char b4 = 71;

char c5 = 72; //C5
char cSharp5 = 73;
char d5 = 74;
char dSharp5 = 75;
char e5 = 76; //E
char f5 = 77;
char fSharp5 = 78;
char g5 = 79; //G
char gSharp5 = 80;
char a5 = 81;
char aSharp5 = 82;
char b5 = 83;

char c6 = 84; //C6
char cSharp6 = 85;
char d6 = 86;
char dSharp6 = 87;
char e6 = 88; //E
char f6 = 89;
char fSharp6 = 90;
char g6 = 91; //G
char gSharp6 = 92;
char a6 = 93;
char aSharp6 = 94;
char b6 = 95;

char c7 = 96; //C7
char cSharp7 = 97;
char d7 = 98;
char dSharp7 = 99;
char e7 = 100; //E
char f7 = 101;
char fSharp7 = 102;
char g7 = 103; //G
char gSharp7 = 104;
char a7 = 105;
char aSharp7 = 106;
char b7 = 107;

char c8 = 108; //C8
char cSharp8 = 109;
char d8 = 110;
char dSharp8 = 111;
char e8 = 112; //E
char f8 = 113;
char fSharp8 = 114;
char g8 = 115; //G
char gSharp8 = 116;
char a8 = 117;
char aSharp8 = 118;
char b8 = 119;

char c9 = 120; //C9
char cSharp9 = 121;
char d9 = 122;
char dSharp9 = 123;
char e9 = 124; //E
char f9 = 125;
char fSharp9 = 126;
char g9 = 127; //G

boolean currentsw1State = 0; //board 1
boolean currentsw2State = 0;
boolean currentsw3State = 0;
boolean currentsw4State = 0;
boolean currentsw5State = 0;
boolean currentsw6State = 0;
boolean currentsw7State = 0;
boolean currentsw8State = 0;
boolean currentsw9State =  0;
boolean currentsw10State = 0;
boolean currentsw11State = 0;
boolean currentsw12State = 0;
boolean sw1State = 0;
boolean sw2State = 0;
boolean sw3State = 0;
boolean sw4State = 0;
boolean sw5State = 0;
boolean sw6State = 0;
boolean sw7State = 0;
boolean sw8State = 0;
boolean sw9State =  0;
boolean sw10State = 0;
boolean sw11State = 0;
boolean sw12State = 0;

boolean currentsw13State = 0;  //board 2
boolean currentsw14State = 0;
boolean currentsw15State = 0;
boolean currentsw16State = 0;
boolean currentsw17State = 0;
boolean currentsw18State = 0;
boolean currentsw19State = 0;
boolean currentsw20State = 0;
boolean currentsw21State = 0;
boolean currentsw22State = 0;
boolean currentsw23State = 0;
boolean currentsw24State = 0;
boolean sw13State = 0;
boolean sw14State = 0;
boolean sw15State = 0;
boolean sw16State = 0;
boolean sw17State = 0;
boolean sw18State = 0;
boolean sw19State = 0;
boolean sw20State = 0;
boolean sw21State = 0;
boolean sw22State = 0;
boolean sw23State = 0;
boolean sw24State = 0;


boolean currentsw25State = 0;  //board 3
boolean currentsw26State = 0;
boolean currentsw27State = 0;
boolean currentsw28State = 0;
boolean currentsw29State = 0;
boolean currentsw30State = 0;
boolean currentsw31State = 0;
boolean currentsw32State = 0;
boolean currentsw33State = 0;
boolean currentsw34State = 0;
boolean currentsw35State = 0;
boolean currentsw36State = 0;
boolean sw25State = 0;
boolean sw26State = 0;
boolean sw27State = 0;
boolean sw28State = 0;
boolean sw29State = 0;
boolean sw30State = 0;
boolean sw31State = 0;
boolean sw32State = 0;
boolean sw33State = 0;
boolean sw34State = 0;
boolean sw35State = 0;
boolean sw36State = 0;


boolean sw37State = 0; //board 4
boolean sw38State = 0;
boolean sw39State = 0;
boolean sw40State = 0;
boolean sw41State = 0;
boolean sw42State = 0;
boolean sw43State = 0;
boolean sw44State = 0;
boolean sw45State = 0;
boolean sw46State = 0;
boolean sw47State = 0;
boolean sw48State = 0;
boolean currentsw37State = 0;
boolean currentsw38State = 0;
boolean currentsw39State = 0;
boolean currentsw40State = 0;
boolean currentsw41State = 0;
boolean currentsw42State = 0;
boolean currentsw43State = 0;
boolean currentsw44State = 0;
boolean currentsw45State = 0;
boolean currentsw46State = 0;
boolean currentsw47State = 0;
boolean currentsw48State = 0;

//Touchplate Variables
boolean tp1A = 22;
boolean tp1B = 23;
boolean tp2A = 24;
boolean tp2B = 25;
boolean tp3A = 26;
boolean tp3B = 27;
boolean tp4A = 28;
boolean tp4B = 29;
boolean tp5A = 30;
boolean tp5B = 31;
boolean tp6A = 32;
boolean tp6B = 33;
boolean tp7A = 34;
boolean tp7B = 35;
boolean tp8A = 36;
boolean tp8B = 37;

boolean currentTP1A = LOW;
boolean currentTP1B = LOW;
boolean currentTP2A = LOW;
boolean currentTP2B = LOW;
boolean currentTP3A = LOW;
boolean currentTP3B = LOW;
boolean currentTP4A = LOW;
boolean currentTP4B = LOW;
boolean currentTP5A = LOW;
boolean currentTP5B = LOW;
boolean currentTP6A = LOW;
boolean currentTP6B = LOW;
boolean currentTP7A = LOW;
boolean currentTP7B = LOW;
boolean currentTP8A = LOW;
boolean currentTP8B = LOW;

boolean lastTP1A = LOW;
boolean lastTP1B = LOW;
boolean lastTP2A = LOW;
boolean lastTP2B = LOW;
boolean lastTP3A = LOW;
boolean lastTP3B = LOW;
boolean lastTP4A = LOW;
boolean lastTP4B = LOW;
boolean lastTP5A = LOW;
boolean lastTP5B = LOW;
boolean lastTP6A = LOW;
boolean lastTP6B = LOW;
boolean lastTP7A = LOW;
boolean lastTP7B = LOW;
boolean lastTP8A = LOW;
boolean lastTP8B = LOW;

//Digital input variables
boolean swAC = 2;
boolean swCN = 3;
boolean swPL = 4;
boolean swDRM = 5;
boolean swACState = 0;
boolean swCNState = 0;
boolean swPLState = 0;
boolean swDRMState = 0;

//analog input variables  
int yAxis = 6;  
int xAxis = 7;
int whammy = 0;
int modStrip = 1;
int k1 = 2;
int k2 = 3;
int k3 = 4;
int k4 = 5;

//analog input value holders

int xVal = 0;
int xValState = 0;
const int xReadings = 10;
int xArray[xReadings];      // the readings from the analog input
int xIndex = 0;                  // the index of the current reading
int xTotal = 0;                  // the running total
int xAverage = 0;                // the average

int yVal = 0;
int yValState = 0;
const int yReadings = 10;
int yArray[yReadings];      // the readings from the analog input
int yIndex = 0;                  // the index of the current reading
int yTotal = 0;                  // the running total
int yAverage = 0;                // the average

int whamVal = 0;
int whamValState = 0;

int modVal = 0;
int modValState = 0;

int k1Val = 0;
int k1ValState = 0;
int k2Val = 0;
int k2ValState = 0;
int k3Val = 0;
int k3ValState = 0;
int k4Val = 0;
int k4ValState = 0;

char lastmNOTE = 0;
char lastmVEL = 0;


void setup() {

  Wire.begin(); // join i2c bus (address optional for master)

  Serial.begin(31250);
  //Serial.begin(9600);

 // SD_Read();
  analogsSetup();
  LCDsetup();
  digitalsSetup();
  touchplateSetup();
  HDledSetup();

}

void loop(){

  LCD();
  Buttons();
  Analogs();
  Digitals();
  Touchplate();
  Headstock();
  CC();
  
  if(swPLState == HIGH){
  Notes();
  }
  else{
  Chords();
  }
 
  
}//end loop

 void noteOn(char mCHAN, char mNOTE, char  mVEL) {
  
  if(mNOTE == lastmNOTE && mVEL == lastmVEL){
   delay(5); 
  }
  
  
  Serial.print(mCHAN, BYTE);
  Serial.print(mNOTE, BYTE);
  Serial.print(mVEL, BYTE);
 
 
 lastmNOTE = mNOTE;
 lastmVEL = mVEL;
}

void sendCC(char mCHAN, char mCC, char mCCVAL){
  
  Serial.print(mCHAN, BYTE);
  Serial.print(mCC, BYTE);
  Serial.print(mCCVAL, BYTE);
}
