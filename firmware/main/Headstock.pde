
boolean HDled1 = 62;
boolean HDled2 = 63;
boolean HDled3 = 64;
boolean HDled4 = 65;
boolean HDled5 = 66;
boolean HDled6 = 67;
boolean HDled7 = 68;
boolean HDled8 = 69;

void HDledSetup(){
 
  pinMode(HDled1, OUTPUT);
  pinMode(HDled2, OUTPUT);
  pinMode(HDled3, OUTPUT);
  pinMode(HDled4, OUTPUT);
  pinMode(HDled5, OUTPUT);
  pinMode(HDled6, OUTPUT);
  pinMode(HDled7, OUTPUT);
  pinMode(HDled8, OUTPUT);
}

void Headstock(){
if(currentTP1A == HIGH && currentTP1B == HIGH)   // LED 1
  {
    digitalWrite(HDled1, HIGH);
  }
  else{
    digitalWrite(HDled1, LOW);
  }


  if(currentTP2A == HIGH && currentTP2B == HIGH)   // lED 2
  {
    digitalWrite(HDled2, HIGH);
  }
  else{
    digitalWrite(HDled2, LOW);
  }


  if(currentTP3A == HIGH && currentTP3B == HIGH)    // LED 3
  {
    digitalWrite(HDled3, HIGH);
  }
  else{
    digitalWrite(HDled3, LOW);
  }


  if(currentTP4A == HIGH && currentTP4B == HIGH)    // LED 4
  {
    digitalWrite(HDled4, HIGH);
  }
  else{
    digitalWrite(HDled4, LOW);
  }


  if(currentTP5A == HIGH && currentTP5B == HIGH)   // LED 5
  {
    digitalWrite(HDled5, HIGH);
  }
  else{
    digitalWrite(HDled5, LOW);
  }


  if(currentTP6A == HIGH && currentTP6B == HIGH)   //  LED 6
  {
    digitalWrite(HDled6, HIGH);
  }
  else{
    digitalWrite(HDled6, LOW);
  }
  
  if(currentTP7A == HIGH && currentTP7B == HIGH)   //  LED 7
  {
    digitalWrite(HDled7, HIGH);
  }
  else{
    digitalWrite(HDled7, LOW);
  }
  
  if(currentTP8A == HIGH && currentTP8B == HIGH)   //  LED 8
  {
    digitalWrite(HDled8, HIGH);
  }
  else{
    digitalWrite(HDled8, LOW);
  }
}
