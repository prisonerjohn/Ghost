/*

 C major   
 C minor   
 C 7   
 C m7   
 C maj7   
 C 7b5   
 C 7#5   
 C m7b5   
 C 7b9   
 C 6   
 C m6   
 C 69   
 C 9   
 C m9   
 C maj9   
 C add9   
 C 11   
 C m11   
 C 13   
 C sus2   
 C sus4   
 C dim   
 C dim7   
 C aug   
 
 */

void Chords(){
  
   if (currentsw1State == 1 && sw1State == 0){      //Button 1  C Major
    noteOn(0x90, c2, 0x40);
    noteOn(0x90, c3, 0x40);
    noteOn(0x90, e3, 0x40);
    noteOn(0x90, g3, 0x40);

    // noteOn(BT1mCH, BT1mNOTE, 0x40);
  }
  else if(currentsw1State == 0 && sw1State ==1){
    noteOn(0x90, c2, 0x00);
    noteOn(0x90, c3, 0x00);
    noteOn(0x90, e3, 0x00);
    noteOn(0x90, g3, 0x00);

    //noteOn(BT1mCH, BT1mNOTE, 0x00);
  } 
    sw1State = currentsw1State;
  
  
   if (currentsw4State == 1 && sw4State == 0){      //Button 4  G Major
    noteOn(0x90, g2, 0x40);
    noteOn(0x90, g3, 0x40);
    noteOn(0x90, b3, 0x40);
    noteOn(0x90, d4, 0x40);

    // noteOn(BT1mCH, BT1mNOTE, 0x40);
  }
  else if(currentsw4State == 0 && sw4State ==1){
    noteOn(0x90, g2, 0x00);
    noteOn(0x90, g3, 0x00);
    noteOn(0x90, b3, 0x00);
    noteOn(0x90, d4, 0x00);

    //noteOn(BT1mCH, BT1mNOTE, 0x00);
  } 

  sw4State = currentsw4State;
  
  
  if (currentsw7State == 1 && sw7State == 0){      //Button 7  D Major
    noteOn(0x90, d2, 0x40);
    noteOn(0x90, d3, 0x40);
    noteOn(0x90, fSharp3, 0x40);
    noteOn(0x90, a4, 0x40);

    // noteOn(BT1mCH, BT1mNOTE, 0x40);
  }
  else if(currentsw7State == 0 && sw7State ==1){
    noteOn(0x90, d2, 0x00);
    noteOn(0x90, d3, 0x00);
    noteOn(0x90, fSharp3, 0x00);
    noteOn(0x90, a4, 0x00);

    //noteOn(BT1mCH, BT1mNOTE, 0x00);
  } 

  sw7State = currentsw7State;

  if (currentsw10State == 1 && sw10State == 0){      //Button 10  A Major
    noteOn(0x90, a2, 0x40);
    noteOn(0x90, a3, 0x40);
    noteOn(0x90, dFlat4, 0x40);
    noteOn(0x90, e4, 0x40);

    // noteOn(BT1mCH, BT1mNOTE, 0x40);
  }
  else if(currentsw10State == 0 && sw10State ==1){
    noteOn(0x90, a2, 0x00);
    noteOn(0x90, a3, 0x00);
    noteOn(0x90, dFlat4, 0x00);
    noteOn(0x90, e4, 0x00);

    //noteOn(BT1mCH, BT1mNOTE, 0x00);
  } 

  sw10State = currentsw10State;
  
  
  if (currentsw13State == 1 && sw13State == 0){      //Button 13  E Major
    noteOn(0x90, e2, 0x40);
    noteOn(0x90, e3, 0x40);
    noteOn(0x90, aFlat3, 0x40);
    noteOn(0x90, b3, 0x40);

    // noteOn(BT1mCH, BT1mNOTE, 0x40);
  }
  else if(currentsw13State == 0 && sw13State ==1){
    noteOn(0x90, e2, 0x00);
    noteOn(0x90, e3, 0x00);
    noteOn(0x90, aFlat3, 0x00);
    noteOn(0x90, b3, 0x00);

    //noteOn(BT1mCH, BT1mNOTE, 0x00);
  } 

  sw13State = currentsw13State;




  if ( currentsw12State == 1 && sw12State == 0){      //Buttons 10&12 A7

    noteOn(0x90, a2, 0x40);
    noteOn(0x90, a3, 0x40);
    noteOn(0x90, dFlat4, 0x40);
    noteOn(0x90, e4, 0x40);
    noteOn(0x90, g4, 0x40);


  }
  else if( currentsw12State == 0 && sw12State ==1){
    noteOn(0x90, a2, 0x00);
    noteOn(0x90, a3, 0x00);
    noteOn(0x90, dFlat4, 0x00);
    noteOn(0x90, e4, 0x00);
    noteOn(0x90, g4, 0x00);
  } 
  sw12State = currentsw12State;




  if ( currentsw15State == 1 && sw15State == 0){      //Buttons 10&15 A Aug

    noteOn(0x90, a2, 0x40);
    noteOn(0x90, a3, 0x40);
    noteOn(0x90, dFlat4, 0x40);
    noteOn(0x90, f4, 0x40);

  }
  else if(currentsw15State == 0 && sw15State ==1){
    noteOn(0x90, a2, 0x00);
    noteOn(0x90, a3, 0x00);
    noteOn(0x90, dFlat4, 0x00);
    noteOn(0x90, f4, 0x00);

  } 
sw15State = currentsw15State;

  

  if (currentsw2State == 1 && sw2State == 0){      //Button 2 A minor

    noteOn(0x90, a2, 0x40);
    noteOn(0x90, a3, 0x40);
    noteOn(0x90, c4, 0x40);
    noteOn(0x90, e4, 0x40);
  }
  else if(currentsw2State == 0 && sw2State ==1){
    noteOn(0x90, a2, 0x00);
    noteOn(0x90, a3, 0x00);
    noteOn(0x90, c4, 0x00);
    noteOn(0x90, e4, 0x00);
  } 

  sw2State = currentsw2State;
  
  
  
  if (currentsw3State == 1 && sw3State == 0){      //Buttons 2&3 A minor 7

    noteOn(0x90, a2, 0x40);
    noteOn(0x90, a3, 0x40);
    noteOn(0x90, c4, 0x40);
    noteOn(0x90, e4, 0x40);
    noteOn(0x90, g4, 0x40);
  }
  else if(currentsw3State == 0 && sw3State ==1){
    noteOn(0x90, a2, 0x00);
    noteOn(0x90, a3, 0x00);
    noteOn(0x90, c4, 0x00);
    noteOn(0x90, e4, 0x00);
    noteOn(0x90, g4, 0x00);
  } 

  sw3State = currentsw3State;
  
  
  
  if (currentsw6State == 1 && sw6State == 0){      //Buttons 2&6 A Diminished

    noteOn(0x90, a2, 0x40);
    noteOn(0x90, a3, 0x40);
    noteOn(0x90, c4, 0x40);
    noteOn(0x90, eFlat4, 0x40);
  }
  else if(currentsw6State == 0 && sw6State ==1){
    noteOn(0x90, a2, 0x00);
    noteOn(0x90, a3, 0x00);
    noteOn(0x90, c4, 0x00);
    noteOn(0x90, eFlat4, 0x00);
  } 

  sw6State = currentsw6State;

if (currentsw5State == 1 && sw5State == 0){      //Button 5  E minor
    noteOn(0x90, e2, 0x40);
    noteOn(0x90, e3, 0x40);
    noteOn(0x90, g3, 0x40);
    noteOn(0x90, b3, 0x40);

    // noteOn(BT1mCH, BT1mNOTE, 0x40);
  }
  else if(currentsw5State == 0 && sw5State ==1){
    noteOn(0x90, e2, 0x00);
    noteOn(0x90, e3, 0x00);
    noteOn(0x90, g3, 0x00);
    noteOn(0x90, b3, 0x00);

    //noteOn(BT1mCH, BT1mNOTE, 0x00);
  } 

  sw5State = currentsw5State;
  
  if (currentsw8State == 1 && sw8State == 0){      //Button 8  B minor
    noteOn(0x90, b2, 0x40);
    noteOn(0x90, b3, 0x40);
    noteOn(0x90, d4, 0x40);
    noteOn(0x90, fSharp4, 0x40);

    // noteOn(BT1mCH, BT1mNOTE, 0x40);
  }
  else if(currentsw8State == 0 && sw8State ==1){
    noteOn(0x90, b2, 0x00);
    noteOn(0x90, b3, 0x00);
    noteOn(0x90, d4, 0x00);
    noteOn(0x90, fSharp4, 0x00);

    //noteOn(BT1mCH, BT1mNOTE, 0x00);
  } 

  sw8State = currentsw8State;
  
  
  if (currentsw11State == 1 && sw11State == 0){      //Button 11  f# minor
    noteOn(0x90, fSharp2, 0x40);
    noteOn(0x90, fSharp3, 0x40);
    noteOn(0x90, a3, 0x40);
    noteOn(0x90, c4, 0x40);

    // noteOn(BT1mCH, BT1mNOTE, 0x40);
  }
  else if(currentsw11State == 0 && sw11State ==1){
    noteOn(0x90, fSharp2, 0x00);
    noteOn(0x90, fSharp3, 0x00);
    noteOn(0x90, a3, 0x00);
    noteOn(0x90, c4, 0x00);

    //noteOn(BT1mCH, BT1mNOTE, 0x00);
  } 

  sw11State = currentsw11State;


}//end chords

