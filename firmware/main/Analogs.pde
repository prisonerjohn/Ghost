
void Analogs(){

//analog input variables  
int yAxis = 6;  
int xAxis = 7;
int whammy = 0;
int modStrip = 1;

//analog input value holders
int yVal = 0;
int xVal = 0;
int whamVal = 0;
int modVal = 0;

//read analog values
xVal = analogRead(xAxis);
yVal = analogRead(yAxis);
whamVal = analogRead(whammy);
modVal = analogRead(modStrip);

//Debug vals
//Serial.print(xVal,DEC);
//Serial.print("    ");
//Serial.println(yVal,DEC);

//Serial.println(whamVal,DEC);
//Serial.println(modVal, DEC);


}//end Analogs
