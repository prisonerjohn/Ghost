//-------------------------
void initTouchplate(){
  pinMode(TP1A,INPUT);
 // pinMode(TP1B,INPUT);
  pinMode(TP2A,INPUT);
 // pinMode(TP2B,INPUT);
  pinMode(TP3A,INPUT);
 //  pinMode(TP3B,INPUT);
  pinMode(TP4A,INPUT);
 // pinMode(TP4B,INPUT);
  pinMode(TP5A,INPUT);
 // pinMode(TP5B,INPUT);
  pinMode(TP6A,INPUT);
 // pinMode(TP6B,INPUT);
  pinMode(TP7A,INPUT);
 // pinMode(TP7B,INPUT);
  pinMode(TP8A,INPUT);
 // pinMode(TP8B,INPUT);
}

///-------------------------

void readTouchStates(){
  currentTP1A = digitalRead(TP1A);
  //currentTP1B = digitalRead(TP1B);
  currentTP2A = digitalRead(TP2A);
  //currentTP2B = digitalRead(TP2B);
  currentTP3A = digitalRead(TP3A);
  //currentTP3B = digitalRead(TP3B);
  currentTP4A = digitalRead(TP4A);
  //currentTP4B = digitalRead(TP4B);
  currentTP5A = digitalRead(TP5A);
  //currentTP5B = digitalRead(TP5B);
  currentTP6A = digitalRead(TP6A);
  //currentTP6B = digitalRead(TP6B);
  currentTP7A = digitalRead(TP7A);
  //currentTP7B = digitalRead(TP7B);
  currentTP8A = digitalRead(TP8A);
  //currentTP8B = digitalRead(TP8B);


//if(currentTP1A == HIGH && lastTP1A == LOW)   //C
//Serial.println("TP1A ON");
//    
//    else if(currentTP1A == LOW && lastTP1A == HIGH)
//    Serial.println("TP1A OFF");
//    
//   lastTP1A = currentTP1A;


//  Serial.print(currentTP1A,BIN);
//  Serial.print(currentTP1B,BIN);
//  Serial.print(currentTP2A,BIN);
//  Serial.print(currentTP2B,BIN);
//  Serial.print(currentTP3A,BIN);
//  Serial.print(currentTP3B,BIN);
//  Serial.print(currentTP4A,BIN);
//  Serial.print(currentTP4B,BIN);          
//  Serial.print(currentTP5A,BIN);
//  Serial.print(currentTP5B,BIN);
//  Serial.print(currentTP6A,BIN);
//  Serial.print(currentTP6B,BIN);
//  Serial.print(currentTP7A,BIN);
  //Serial.print(currentTP7B,BIN);
//  Serial.print(currentTP8A,BIN);
//  Serial.println(currentTP8B,BIN);
  
  

}
