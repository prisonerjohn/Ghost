
void analogsSetup(){
 
 for (int thisXReading = 0; thisXReading < xReadings; thisXReading++)
    xArray[thisXReading] = 0;  
    
 for (int thisYReading = 0; thisYReading < yReadings; thisYReading++)
    yArray[thisYReading] = 0;  
    
}

void Analogs(){


//*************___X Axis___*******************//
  
//read analog values
//xVal = analogRead(xAxis);
//xVal = map(xVal,890, 1023, 127, 0);


  xTotal= xTotal - xArray[xIndex];      // subtract the last reading:    
  xArray[xIndex] = analogRead(xAxis);     // read from the sensor:  
  xTotal= xTotal + xArray[xIndex];         // add the reading to the total:
  xIndex = xIndex + 1;                      // advance to the next position in the array:  

if (xIndex >= xReadings)                // if we're at the end of the array...

    xIndex = 0;                               // ...wrap around to the beginning: 

  // calculate the average:
  xAverage = xTotal / xReadings;      
  //xAverage = map(xAverage,810,1023, 127, 0);
  // xAverage = map(xAverage,0,220, 0, 127);
   //xAverage = map(xAverage,0,400, 0, 127);
  // xAverage = map(xAverage,800,1023, 0, 115);   
   xAverage = map(xAverage,200,800, 0, 115);        

   //*********___Y Axis___******************//
  
//yVal = analogRead(yAxis);
//yVal = map(yVal, 920, 1023, 0, 127);

  yTotal= yTotal - yArray[yIndex];      // subtract the last reading:    
  yArray[yIndex] = analogRead(yAxis);     // read from the sensor:  
  yTotal= yTotal + yArray[yIndex];         // add the reading to the total:
  yIndex = yIndex + 1;                      // advance to the next position in the array:  

if (yIndex >= yReadings)                // if we're at the end of the array...

    yIndex = 0;                               // ...wrap around to the beginning: 

  // calculate the average:
  yAverage = yTotal / yReadings; 
  //yAverage = map(yAverage,810,1023, 0, 127); 
  //xAverage = map(xAverage,0,220, 0, 127);   
    //xAverage = map(xAverage,150,5500, 0, 127);   
      // yAverage = map(yAverage,750,1023, 0, 115);
    yAverage = map(yAverage,300,800, 0, 115);


//************___Whammy___*****************//

whamVal = analogRead(whammy);
whamVal = map(whamVal, 439, 549, 0, 127);

//************___ModStrip___***************//

modVal = analogRead(modStrip)/8;

//*************___Knobs_____***************//

k1Val = analogRead(k1)/8;
k2Val = analogRead(k2)/8;
k3Val = analogRead(k3)/8;
k4Val = analogRead(k4)/8;


//Debug vals
//Serial.print(xVal,DEC);
//Serial.print("    ");
//Serial.println(yVal,DEC);

//Serial.print(whamVal,DEC);
//Serial.print("    ");
//Serial.println(modVal, DEC);

//Serial.print(k1Val);
//Serial.print("    ");
//Serial.print(k2Val);
//Serial.print("    ");
//Serial.print(k3Val);
//Serial.print("    ");
//Serial.println(k4Val);

}//end Analogs
