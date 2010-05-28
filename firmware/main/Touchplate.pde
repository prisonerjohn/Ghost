  
void touchplateSetup(){

  pinMode(tp1A,INPUT);
  pinMode(tp1B,INPUT);
  pinMode(tp2A,INPUT);
  pinMode(tp2B,INPUT);
  pinMode(tp3A,INPUT);
  pinMode(tp3B,INPUT);
  pinMode(tp4A,INPUT);
  pinMode(tp4B,INPUT);
  pinMode(tp5A,INPUT);
  pinMode(tp5B,INPUT);
  pinMode(tp6A,INPUT);
  pinMode(tp6B,INPUT);
  pinMode(tp7A,INPUT);
  pinMode(tp7B,INPUT);
  pinMode(tp8A,INPUT);
  pinMode(tp8B,INPUT);
}

void Touchplate(){

 
  currentTP1A = digitalRead(tp1A);
  currentTP1B = digitalRead(tp1B);
  currentTP2A = digitalRead(tp2A);
  currentTP2B = digitalRead(tp2B);
  currentTP3A = digitalRead(tp3A);
  currentTP3B = digitalRead(tp3B);
  currentTP4A = digitalRead(tp4A);
  currentTP4B = digitalRead(tp4B);
  currentTP5A = digitalRead(tp5A);
  currentTP5B = digitalRead(tp5B);
  currentTP6A = digitalRead(tp6A);
  currentTP6B = digitalRead(tp6B);
  currentTP7A = digitalRead(tp7A);
  currentTP7B = digitalRead(tp7B);
  currentTP8A = digitalRead(tp8A);
  currentTP8B = digitalRead(tp8B);


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
  //Serial.println(currentTP7B,BIN);
//  Serial.print(currentTP8A,BIN);
//  Serial.println(currentTP8B,BIN);
  
  

}

