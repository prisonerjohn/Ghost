
/*

 Here are some key CC message numbers.  If you want to map controls to specific parameters in your software.  Set the control to an Undefined CC (20-31) and map them in your DAW.
 
 CC1 is Modulation
 CC5 is Poratamento Time
 CC7 is Volume
 CC10 is Pan
 CC20-31 are Undefined
 CC64 is Sustain
 CC65 is Portamento
 CC123 is All Notes Off
 
 
 */

void CC(){
  
   //--------Accelerometer--------/// 
  //if (abs(xAverage - xValState) > 5) {   // X axis
    if (xAverage != xValState) {   // X axis  
    sendCC(176,26,xAverage);
  }
  xValState = xAverage;
  
 //if (abs(yAverage - yValState) > 5) {   //Y axis
 if (yAverage != yValState) {   //Y axis
   sendCC(176,27,yAverage);
  }
  yValState = yAverage;
  

  //--------ModStrip--------/// 
  if(modVal != modValState){

    sendCC(176,20,modVal);
  }
  modValState = modVal;
  
   //--------Whammy--------/// 
  if(whamVal != whamValState && whamVal != (whamVal+1) && whamVal != (whamVal-1)){

    sendCC(176,25,whamVal);
  }
  whamValState = whamVal;


  //-----------Knobs----------//

  if(k1Val != k1ValState && k1Val != (k1ValState+1) && k1Val != (k1ValState-1)){      //K1

      sendCC(176,21,k1Val);
    k1ValState = k1Val;
  }



  if(k2Val != k2ValState && k2Val != (k2ValState+1) && k2Val != (k2ValState-1)){      //K2

    sendCC(176,22,k2Val);
    k2ValState = k2Val;
  }



  if(k3Val != k3ValState && k3Val != (k3ValState+1) && k3Val != (k3ValState-1)){      //K3

    sendCC(176,23,k3Val);
    k3ValState = k3Val;
  }



  if(k4Val != k4ValState && k4Val != (k4ValState+1) && k4Val != (k4ValState-1)){      //K4

    sendCC(176,24,k4Val);
    k4ValState = k4Val;
  }




}//end CC

