
void digitalsSetup(){
  
  pinMode(swAC, INPUT);
  pinMode(swCN, INPUT);
  pinMode(swPL, INPUT);
  pinMode(swDRM, INPUT);
  
}

void Digitals(){
  
   swACState = digitalRead(swAC);
   swCNState = digitalRead(swCN);
   swPLState = digitalRead(swPL);
   swDRMState = digitalRead(swDRM);
  

//  Serial.print(swACstate);
//  Serial.print("    ");
//  Serial.print(swCNstate);
//  Serial.print("    ");  
//  Serial.print(swPLstate);
//  Serial.print("    ");   
//  Serial.println(swDRMstate); 
}


