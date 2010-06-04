
//---------------------

void initHSLED(){
 
  pinMode(HSLED1, OUTPUT);
  pinMode(HSLED2, OUTPUT);
  pinMode(HSLED3, OUTPUT);
  pinMode(HSLED4, OUTPUT);
  pinMode(HSLED5, OUTPUT);
  pinMode(HSLED6, OUTPUT);
  pinMode(HSLED7, OUTPUT);
  pinMode(HSLED8, OUTPUT);
}

//----------------------

void Headstock(){
if(currentTP1A == HIGH )   // LED 1
  {
    digitalWrite(HSLED1, HIGH);
  }
  else{
    digitalWrite(HSLED1, LOW);
  }


  if(currentTP2A == HIGH)   // lED 2
  {
    digitalWrite(HSLED2, HIGH);
  }
  else{
    digitalWrite(HSLED2, LOW);
  }


  if(currentTP3A == HIGH)    // LED 3
  {
    digitalWrite(HSLED3, HIGH);
  }
  else{
    digitalWrite(HSLED3, LOW);
  }


  if(currentTP4A == HIGH)    // LED 4
  {
    digitalWrite(HSLED4, HIGH);
  }
  else{
    digitalWrite(HSLED4, LOW);
  }


  if(currentTP5A == HIGH)   // LED 5
  {
    digitalWrite(HSLED5, HIGH);
  }
  else{
    digitalWrite(HSLED5, LOW);
  }


  if(currentTP6A == HIGH)   //  LED 6
  {
    digitalWrite(HSLED6, HIGH);
  }
  else{
    digitalWrite(HSLED6, LOW);
  }
  
  if(currentTP7A == HIGH)   //  LED 7
  {
    digitalWrite(HSLED7, HIGH);
  }
  else{
    digitalWrite(HSLED7, LOW);
  }
  
  if(currentTP8A == HIGH)   //  LED 8
  {
    digitalWrite(HSLED8, HIGH);
  }
  else{
    digitalWrite(HSLED8, LOW);
  }
}
