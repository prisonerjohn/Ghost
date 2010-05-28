

void Buttons(){
  
  //Master Reader

  word buttons = 0;

  //Serial.print(buttonsOne,BIN);
  //Serial.print(" ");
  //Serial.println(buttonsTwo,BIN);

  ////////////Board One////////////////////////    
  Wire.requestFrom(1, 2);    // request 2 bytes from slave device #1

  int numBytes = Wire.available();
  if (numBytes == 2) {
    buttonsTwo = Wire.receive();
    buttonsOne = Wire.receive();

    currentsw1State = bitRead(buttonsOne, 0);
    currentsw2State = bitRead(buttonsOne, 1);
    currentsw3State = bitRead(buttonsOne, 2);
    currentsw4State = bitRead(buttonsOne, 3);
    currentsw5State = bitRead(buttonsOne, 4);
    currentsw6State = bitRead(buttonsOne, 5);
    currentsw7State = bitRead(buttonsOne, 6);
    currentsw8State = bitRead(buttonsOne, 7);
    currentsw9State = bitRead(buttonsTwo, 0);
    currentsw10State = bitRead(buttonsTwo, 1);
    currentsw11State = bitRead(buttonsTwo, 2);
    currentsw12State = bitRead(buttonsTwo, 3);
  }

  ////////////Board Two////////////////////////    
  Wire.requestFrom(2, 2);    // request 2 bytes from slave device #2

    int numBytes2 = Wire.available();
  if (numBytes2 == 2) {
    buttonsTwo = Wire.receive();
    buttonsOne = Wire.receive();

    currentsw13State = bitRead(buttonsOne, 0);
    currentsw14State = bitRead(buttonsOne, 1);
    currentsw15State = bitRead(buttonsOne, 2);
    currentsw16State = bitRead(buttonsOne, 3);
    currentsw17State = bitRead(buttonsOne, 4);
    currentsw18State = bitRead(buttonsOne, 5);
    currentsw19State = bitRead(buttonsOne, 6);
    currentsw20State = bitRead(buttonsOne, 7);
    currentsw21State = bitRead(buttonsTwo, 0);
    currentsw22State = bitRead(buttonsTwo, 1);
    currentsw23State = bitRead(buttonsTwo, 2);
    currentsw24State = bitRead(buttonsTwo, 3);
  }

  ////////////Board Three////////////////////////    
  Wire.requestFrom(3, 2);    // request 2 bytes from slave device #3

  int numBytes3 = Wire.available();
  if (numBytes3 == 2) {
    buttonsTwo = Wire.receive();
    buttonsOne = Wire.receive();


    currentsw25State = bitRead(buttonsOne, 0);
    currentsw26State = bitRead(buttonsOne, 1);
    currentsw27State = bitRead(buttonsOne, 2);
    currentsw28State = bitRead(buttonsOne, 3);
    currentsw29State = bitRead(buttonsOne, 4);
    currentsw30State = bitRead(buttonsOne, 5);
    currentsw31State = bitRead(buttonsOne, 6);
    currentsw32State = bitRead(buttonsOne, 7);
    currentsw33State = bitRead(buttonsTwo, 0);
    currentsw34State = bitRead(buttonsTwo, 1);
    currentsw35State = bitRead(buttonsTwo, 2);
    currentsw36State = bitRead(buttonsTwo, 3);
  }

  ////////////Board Four////////////////////////  
  Wire.requestFrom(4, 2);    // request 2 bytes from slave device #4

  int numBytes4 = Wire.available();
  if (numBytes4 == 2) {
    buttonsTwo = Wire.receive();
    buttonsOne = Wire.receive();

    currentsw37State = bitRead(buttonsOne, 0);
    currentsw38State = bitRead(buttonsOne, 1);
    currentsw39State = bitRead(buttonsOne, 2);
    currentsw40State = bitRead(buttonsOne, 3);
    currentsw41State = bitRead(buttonsOne, 4);
    currentsw42State = bitRead(buttonsOne, 5);
    currentsw43State = bitRead(buttonsOne, 6);
    currentsw44State = bitRead(buttonsOne, 7);
    currentsw45State = bitRead(buttonsTwo, 0);
    currentsw46State = bitRead(buttonsTwo, 1);
    currentsw47State = bitRead(buttonsTwo, 2);
    currentsw48State = bitRead(buttonsTwo, 3);
  }

/*
  //       //Serial.println("Board One"); 
         Serial.print(currentsw1State,BIN);
         Serial.print(currentsw2State,BIN);
         Serial.print(currentsw3State,BIN);
         Serial.print(currentsw4State,BIN);
         Serial.print(currentsw5State,BIN);
         Serial.print(currentsw6State,BIN);
         Serial.print(currentsw7State,BIN);
         Serial.print(currentsw8State,BIN);          
         Serial.print(currentsw9State,BIN);
         Serial.print(currentsw10State,BIN);
         Serial.print(currentsw11State,BIN);
         Serial.print(currentsw12State,BIN);
        Serial.print(" ");
         
         //Serial.println("Board Two"); 
         Serial.print(currentsw13State,BIN);
         Serial.print(currentsw14State,BIN);
         Serial.print(currentsw15State,BIN);
         Serial.print(currentsw16State,BIN);
         Serial.print(currentsw17State,BIN);
         Serial.print(currentsw18State,BIN);
         Serial.print(currentsw19State,BIN);
         Serial.print(currentsw20State,BIN);          
         Serial.print(currentsw21State,BIN);
         Serial.print(currentsw22State,BIN);
         Serial.print(currentsw23State,BIN);
         Serial.print(currentsw24State,BIN);
         Serial.print(" ");
         
         //Serial.println("Board Three"); 
         Serial.print(currentsw25State,BIN);
         Serial.print(currentsw26State,BIN);
         Serial.print(currentsw27State,BIN);
         Serial.print(currentsw28State,BIN);
         Serial.print(currentsw29State,BIN);
         Serial.print(currentsw30State,BIN);
         Serial.print(currentsw31State,BIN);
         Serial.print(currentsw32State,BIN);          
          Serial.print(currentsw33State,BIN);
          Serial.print(currentsw34State,BIN);
          Serial.print(currentsw35State,BIN);
          Serial.print(currentsw36State,BIN);
          Serial.print(" ");
         
         //Serial.println("Board Four"); 
         Serial.print(currentsw37State,BIN);
         Serial.print(currentsw38State,BIN);
         Serial.print(currentsw39State,BIN);
         Serial.print(currentsw40State,BIN);
         Serial.print(currentsw41State,BIN);
         Serial.print(currentsw42State,BIN);
         Serial.print(currentsw43State,BIN);
         Serial.print(currentsw44State,BIN);          
         Serial.print(currentsw45State,BIN);
         Serial.print(currentsw46State,BIN);
         Serial.print(currentsw47State,BIN);
         Serial.print(currentsw48State,BIN);
         Serial.println(" ");
         
         delay(50);
*/
}
