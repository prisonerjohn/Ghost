#include <Wire.h>

uint8_t buttons;
byte buttonsOne;
byte buttonsTwo;

int addressPin = 6;
int addressVal = 0;

int i2Cadd;

int LEDcol[4] = {
  14,15,16,17}; //pins used for LED cols
int LEDrow[3] = {
  4,3,2}; //pins used for LED rows

////////////////////////////////////////////////////////

int BTcol[4] = {
  5,6,7,8};  //pins for button cols
int BTrow[3] = {
  9,10,11}; //pins for buttons rows
  
byte thisBTRow;
byte thisBTCol;
byte BTarray[3][4];

int t = .5;
//******************************************************

void setup(){
  
  addressVal = analogRead(addressPin); //read address pin to get which board

    if(addressVal > 750 && addressVal <850)
     i2Cadd = 1;
      
    if(addressVal > 560 && addressVal <660)
     i2Cadd = 2;
      
    if(addressVal > 370 && addressVal <470)
     i2Cadd = 3;
    
    if(addressVal > 150 && addressVal <250)
     i2Cadd = 4;

 Wire.begin(i2Cadd);                // join i2c bus with addressVal

 Wire.onRequest(requestEvent); // register event


    for (int x = 0; x < 4; x++) {  //set LED col pin numbers 
    pinMode(LEDcol[x], OUTPUT);
    digitalWrite(LEDcol[x],LOW);  //set LED col pins LOW
  }

  for (int y = 0; y < 3; y++) {  //set LED row pin numbers
    pinMode(LEDrow[y], OUTPUT);
    digitalWrite(LEDrow[y],HIGH); //set LED row pins HIGH
  }

  //////////////////////////////////////////////////////

  for (int i = 0; i < 4; i++) {  //set button col pins
    pinMode(BTcol[i], INPUT);
  }

  for (int j = 0; j < 3; j++) {  //set button row pins
    pinMode(BTrow[j], OUTPUT);
    digitalWrite(BTrow[j], 0);
  }

for (int i=0; i < 8; i++){  //set the bits to zero
    
    bitWrite(buttonsOne,i,0);
    bitWrite(buttonsTwo,i,0);
    
    }
    
 
      
  Serial.begin(9600);

}//end setup

//****************************************************

void loop(){

  if(BTarray[0][0]){

    digitalWrite(LEDcol[0],HIGH); //Turn on "1"
    digitalWrite(LEDrow[2],LOW);
    delay(t);
    digitalWrite(LEDcol[0],LOW);
    digitalWrite(LEDrow[2],HIGH);
    
    bitWrite(buttonsOne, 0, 1);
  }
  else bitWrite(buttonsOne, 0, 0);
  

  if(BTarray[1][0]){

    digitalWrite(LEDcol[0],HIGH); //Turn on "2"
    digitalWrite(LEDrow[1],LOW);
    delay(t);
    digitalWrite(LEDcol[0],LOW);
    digitalWrite(LEDrow[1],HIGH);
    
    bitWrite(buttonsOne, 1, 1);
  }
  else bitWrite(buttonsOne, 1, 0); 
  

  if(BTarray[2][0]){

    digitalWrite(LEDcol[0],HIGH);//Turn on "3"
    digitalWrite(LEDrow[0],LOW);
    delay(t);
    digitalWrite(LEDcol[0],LOW); 
    digitalWrite(LEDrow[0],HIGH);
    
    bitWrite(buttonsOne, 2, 1);
  }
  else bitWrite(buttonsOne, 2, 0); 
  

  ////////////////////////////////////////////////////

  if(BTarray[0][1]){

    digitalWrite(LEDcol[1],HIGH);//Turn on "4"
    digitalWrite(LEDrow[2],LOW);
    delay(t); 
    digitalWrite(LEDcol[1],LOW);  
    digitalWrite(LEDrow[2],HIGH);
    
     bitWrite(buttonsOne, 3, 1);
  }
  else bitWrite(buttonsOne, 3, 0);  
  

  if(BTarray[1][1]){

    digitalWrite(LEDcol[1],HIGH);//Turn on "5"
    digitalWrite(LEDrow[1],LOW);
    delay(t);
    digitalWrite(LEDcol[1],LOW); 
    digitalWrite(LEDrow[1],HIGH);
    
     bitWrite(buttonsOne, 4, 1);
  }
  else bitWrite(buttonsOne, 4, 0);  
  

  if(BTarray[2][1]){

    digitalWrite(LEDcol[1],HIGH);
    digitalWrite(LEDrow[0],LOW);
    delay(t);
    digitalWrite(LEDcol[1],LOW);  //Turn on "6"
    digitalWrite(LEDrow[0],HIGH);
    
     bitWrite(buttonsOne, 5, 1);
  }
  else bitWrite(buttonsOne, 5, 0); 
  

  ///////////////////////////////////////////////////

  if(BTarray[0][2]){

    digitalWrite(LEDcol[2],HIGH);//Turn on "7"
    digitalWrite(LEDrow[2],LOW);
    delay(t);
    digitalWrite(LEDcol[2],LOW); 
    digitalWrite(LEDrow[2],HIGH);
    
     bitWrite(buttonsOne, 6, 1);
  }
  else bitWrite(buttonsOne, 6, 0); 
  

  if(BTarray[1][2]){

    digitalWrite(LEDcol[2],HIGH);//Turn on "8"
    digitalWrite(LEDrow[1],LOW);
    delay(t);
    digitalWrite(LEDcol[2],LOW); 
    digitalWrite(LEDrow[1],HIGH);
    
     bitWrite(buttonsOne, 7, 1);
  }
  else bitWrite(buttonsOne, 7, 0); 
  

  if(BTarray[2][2]){
    
    digitalWrite(LEDcol[2],HIGH);//Turn on "9"
    digitalWrite(LEDrow[0],LOW);
    delay(t);
    digitalWrite(LEDcol[2],LOW); 
    digitalWrite(LEDrow[0],HIGH);
    
      bitWrite(buttonsTwo, 0, 1);
  }
  else bitWrite(buttonsTwo, 0, 0);  
  

  ///////////////////////////////////////////////////

  if(BTarray[0][3]){

    digitalWrite(LEDcol[3],HIGH); //Turn on "10"
    digitalWrite(LEDrow[2],LOW);
    delay(t);
    digitalWrite(LEDcol[3],LOW); 
    digitalWrite(LEDrow[2],HIGH);
    
      bitWrite(buttonsTwo, 1, 1);
  }
  else bitWrite(buttonsTwo, 1, 0); 
  

  if(BTarray[1][3]){

    digitalWrite(LEDcol[3],HIGH); //Turn on "11"
    digitalWrite(LEDrow[1],LOW);
    delay(t);
    digitalWrite(LEDcol[3],LOW); 
    digitalWrite(LEDrow[1],HIGH);
    
    bitWrite(buttonsTwo, 2, 1);
  }
  else bitWrite(buttonsTwo, 2, 0); 


  if(BTarray[2][3]){

    digitalWrite(LEDcol[3],HIGH); //Turn on "12"
    digitalWrite(LEDrow[0],LOW);
    delay(t);
    digitalWrite(LEDcol[3],LOW); 
    digitalWrite(LEDrow[0],HIGH);

     bitWrite(buttonsTwo, 3, 1);
  }
  else bitWrite(buttonsTwo, 3, 0);
  


  //************** READ BUTTONS ***********************//

  // iterate over the rows (uC out):
  for (thisBTRow = 0; thisBTRow < 3; thisBTRow++) {


    //set rows HIGH
    digitalWrite(BTrow[thisBTRow], HIGH);

    //iterate over columns (uC in)
    for (thisBTCol = 0; thisBTCol < 4; thisBTCol++) {

      //read the columns, if HIGH, switch is closed:
      if(digitalRead(BTcol[thisBTCol]) == HIGH){

        //set array
        BTarray[thisBTRow][thisBTCol] = 1;

      }
      else{

        BTarray[thisBTRow][thisBTCol] = 0;
      }
      //   Serial.print(BTarray[thisBTRow][thisBTCol]);
    }
    // take the row pin low to turn off the whole column:
    digitalWrite(BTrow[thisBTRow], LOW);
  }//end button read
  
   buttons = (buttonsOne<<8) | buttonsTwo;  //bitshift into buttons

//Serial.print(buttonsOne,BIN);
//Serial.println(buttonsTwo,BIN);
//Serial.print(addressVal,DEC);
//Serial.print(" ");
//Serial.println(i2Cadd, DEC);

}//end loop

  //******************************************************


// function that executes whenever data is requested by master
// this function is registered as an event, see setup()
void requestEvent()
{
 Wire.send(&buttons, 2);
}





