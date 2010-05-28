/*
  -5               -4                -3             -2
C-5 = 0         C-4 = 12          C-3 = 24        C-2 = 36    
C#-5 = 1        C#-4 = 13         C#-3 = 25       C#-2 = 37
D-5 = 2         D-4 = 14          D-3 = 26        D-2 = 38
D#-5 = 3        D#-4 = 15         D#-3 = 27       D#-2 = 39
E-5 = 4         E-4 = 16          E-3 = 28        E-2 = 40
F-5 = 5         F-4 = 17          F-3 = 29        F-2 = 41
F#-5 = 6        F#-4 = 18         F#-3 = 30       F#-2 = 42
G-5 = 7         G-4 = 19          G-3 = 31        G-2 = 43
G#-5 = 8        G#-4 = 20         G#-3 = 32       G#-2 = 44
A-5 = 9         A-4 = 21          A-3 = 33        A-2 = 45
A#-5 = 10       A#-4 = 22         A#-3 = 34       A#-2 = 46
B-5 = 11        B-5 = 23          B-5 = 35        B-2 = 47 
*/


void Notes(){
  if (currentsw1State == 1 && sw1State == 0){      //Button 1
      noteOn(0x90, 65, 0x40);
     // noteOn(BT1mCH, BT1mNOTE, 0x40);
    }
    else if(currentsw1State == 0 && sw1State ==1){
      noteOn(0x90, 65, 0x00);
      //noteOn(BT1mCH, BT1mNOTE, 0x00);
    } 
   
    sw1State = currentsw1State;
    
  if (currentsw4State == 1 && sw4State == 0){      //Button 4

noteOn(0x90, 66, 0x40);
    }
    else if(currentsw4State == 0 && sw4State ==1){
      noteOn(0x90, 66, 0x00);
    } 
   
    sw4State = currentsw4State;  
    
    if (currentsw7State == 1 && sw7State == 0){      //Button 7

noteOn(0x90, 67, 0x40);
    }
    else if(currentsw7State == 0 && sw7State ==1){
      noteOn(0x90, 67, 0x00);
    } 
   
    sw7State = currentsw7State;
    
    if (currentsw10State == 1 && sw10State == 0){      //Button 10

noteOn(0x90, 68, 0x40);
    }
    else if(currentsw10State == 0 && sw10State ==1){
      noteOn(0x90, 68, 0x00);
    } 
   
    sw10State = currentsw10State;
    
    if (currentsw13State == 1 && sw13State == 0){      //Button 13

noteOn(0x90, 69, 0x40);
    }
    else if(currentsw13State == 0 && sw13State ==1){
      noteOn(0x90, 69, 0x00);
    } 
   
    sw13State = currentsw13State;
    
    if (currentsw16State == 1 && sw16State == 0){      //Button 16

noteOn(0x90, 70, 0x40);
    }
    else if(currentsw16State == 0 && sw16State ==1){
      noteOn(0x90, 70, 0x00);
    } 
   
    sw16State = currentsw16State;
    
    if (currentsw19State == 1 && sw19State == 0){      //Button 19

noteOn(0x90, 71, 0x40);
    }
    else if(currentsw19State == 0 && sw19State ==1){
      noteOn(0x90, 71, 0x00);
    } 
   
    sw19State = currentsw19State;
    
    if (currentsw22State == 1 && sw22State == 0){      //Button 22

noteOn(0x90, 72, 0x40);
    }
    else if(currentsw22State == 0 && sw22State ==1){
      noteOn(0x90, 72, 0x00);
    } 
   
    sw22State = currentsw22State;
    
    if (currentsw25State == 1 && sw25State == 0){      //Button 25

noteOn(0x90, 73, 0x40);
    }
    else if(currentsw25State == 0 && sw25State ==1){
      noteOn(0x90, 73, 0x00);
    } 
   
    sw25State = currentsw25State;
    
    if (currentsw28State == 1 && sw28State == 0){      //Button 28

noteOn(0x90, 74, 0x40);
    }
    else if(currentsw28State == 0 && sw28State ==1){
      noteOn(0x90, 74, 0x00);
    } 
   
    sw28State = currentsw28State;
    
    if (currentsw31State == 1 && sw31State == 0){      //Button 31

noteOn(0x90, 75, 0x40);
    }
    else if(currentsw31State == 0 && sw31State ==1){
      noteOn(0x90, 75, 0x00);
    } 
   
    sw31State = currentsw31State;
    
    if (currentsw34State == 1 && sw34State == 0){      //Button 34

noteOn(0x90, 76, 0x40);
    }
    else if(currentsw34State == 0 && sw34State ==1){
      noteOn(0x90, 76, 0x00);
    } 
   
    sw34State = currentsw34State;
    
    if (currentsw2State == 1 && sw2State == 0){      //Button 2

noteOn(0x90, 70, 0x40);
    }
    else if(currentsw2State == 0 && sw2State ==1){
      noteOn(0x90, 70, 0x00);
    } 
   
    sw2State = currentsw2State;
    
    if (currentsw5State == 1 && sw5State == 0){      //Button 5

noteOn(0x90, 71, 0x40);
    }
    else if(currentsw5State == 0 && sw5State ==1){
      noteOn(0x90, 71, 0x00);
    } 
   
    sw5State = currentsw5State;
    
    if (currentsw8State == 1 && sw8State == 0){      //Button 8

noteOn(0x90, 72, 0x40);
    }
    else if(currentsw8State == 0 && sw8State ==1){
      noteOn(0x90, 72, 0x00);
    } 
   
    sw8State = currentsw8State;
    
    if (currentsw11State == 1 && sw11State == 0){      //Button 11

noteOn(0x90, 73, 0x40);
    }
    else if(currentsw11State == 0 && sw11State ==1){
      noteOn(0x90, 73, 0x00);
    } 
   
    sw11State = currentsw11State;
    
    if (currentsw14State == 1 && sw14State == 0){      //Button 14

noteOn(0x90, 74, 0x40);
    }
    else if(currentsw14State == 0 && sw14State ==1){
      noteOn(0x90, 74, 0x00);
    } 
   
    sw14State = currentsw14State;
    
    if (currentsw17State == 1 && sw17State == 0){      //Button 17

noteOn(0x90, 75, 0x40);
    }
    else if(currentsw17State == 0 && sw17State ==1){
      noteOn(0x90, 75, 0x00);
    } 
   
    sw17State = currentsw17State;
    
    if (currentsw20State == 1 && sw20State == 0){      //Button 20

noteOn(0x90, 76, 0x40);
    }
    else if(currentsw20State == 0 && sw20State ==1){
      noteOn(0x90, 76, 0x00);
    } 
   
    sw20State = currentsw20State;
    
    if (currentsw23State == 1 && sw23State == 0){      //Button 23

noteOn(0x90, 77, 0x40);
    }
    else if(currentsw23State == 0 && sw23State ==1){
      noteOn(0x90, 77, 0x00);
    } 
   
    sw23State = currentsw23State;
    
    if (currentsw26State == 1 && sw26State == 0){      //Button 26

noteOn(0x90, 78, 0x40);
    }
    else if(currentsw26State == 0 && sw26State ==1){
      noteOn(0x90, 78, 0x00);
    } 
   
    sw26State = currentsw26State;
    
    if (currentsw29State == 1 && sw29State == 0){      //Button 29

noteOn(0x90, 79, 0x40);
    }
    else if(currentsw29State == 0 && sw29State ==1){
      noteOn(0x90, 79, 0x00);
    } 
   
    sw29State = currentsw29State;
    
    if (currentsw32State == 1 && sw32State == 0){      //Button 32

noteOn(0x90, 80, 0x40);
    }
    else if(currentsw32State == 0 && sw32State ==1){
      noteOn(0x90, 80, 0x00);
    } 
   
    sw32State = currentsw32State;
    
    if (currentsw35State == 1 && sw35State == 0){      //Button 35

noteOn(0x90, 81, 0x40);
    }
    else if(currentsw35State == 0 && sw35State ==1){
      noteOn(0x90, 81, 0x00);
    } 
   
    sw35State = currentsw35State;
    
    if (currentsw3State == 1 && sw3State == 0){      //Button 3

noteOn(0x90, 75, 0x40);
    }
    else if(currentsw3State == 0 && sw3State ==1){
      noteOn(0x90, 75, 0x00);
    } 
   
    sw3State = currentsw3State;
    
     if (currentsw6State == 1 && sw6State == 0){      //Button 6

noteOn(0x90, 76, 0x40);
    }
    else if(currentsw6State == 0 && sw6State ==1){
      noteOn(0x90, 76, 0x00);
    } 
   
    sw6State = currentsw6State;
    
     if (currentsw9State == 1 && sw9State == 0){      //Button 9

noteOn(0x90, 77, 0x40);
    }
    else if(currentsw9State == 0 && sw9State ==1){
      noteOn(0x90, 77, 0x00);
    } 
   
    sw9State = currentsw9State;
    
     if (currentsw12State == 1 && sw12State == 0){      //Button 12

noteOn(0x90, 78, 0x40);
    }
    else if(currentsw12State == 0 && sw12State ==1){
      noteOn(0x90, 78, 0x00);
    } 
   
    sw12State = currentsw12State;
    
     if (currentsw15State == 1 && sw15State == 0){      //Button 15

noteOn(0x90, 79, 0x40);
    }
    else if(currentsw15State == 0 && sw15State ==1){
      noteOn(0x90, 79, 0x00);
    } 
   
    sw15State = currentsw15State;
    
     if (currentsw18State == 1 && sw18State == 0){      //Button 18

noteOn(0x90, 80, 0x40);
    }
    else if(currentsw18State == 0 && sw18State ==1){
      noteOn(0x90, 80, 0x00);
    } 
   
    sw18State = currentsw18State;
    
     if (currentsw21State == 1 && sw21State == 0){      //Button 21

noteOn(0x90, 81, 0x40);
    }
    else if(currentsw21State == 0 && sw21State ==1){
      noteOn(0x90, 81, 0x00);
    } 
   
    sw21State = currentsw21State;
    
     if (currentsw24State == 1 && sw24State == 0){      //Button 24

noteOn(0x90, 82, 0x40);
    }
    else if(currentsw24State == 0 && sw24State ==1){
      noteOn(0x90, 82, 0x00);
    } 
   
    sw24State = currentsw24State;
    
     if (currentsw27State == 1 && sw27State == 0){      //Button 27

noteOn(0x90, 83, 0x40);
    }
    else if(currentsw27State == 0 && sw27State ==1){
      noteOn(0x90, 83, 0x00);
    } 
   
    sw27State = currentsw27State;
    
     if (currentsw30State == 1 && sw30State == 0){      //Button 30

noteOn(0x90, 84, 0x40);
    }
    else if(currentsw30State == 0 && sw30State ==1){
      noteOn(0x90, 84, 0x00);
    } 
   
    sw30State = currentsw30State;
    
     if (currentsw33State == 1 && sw33State == 0){      //Button 33

noteOn(0x90, 85, 0x40);
    }
    else if(currentsw33State == 0 && sw33State ==1){
      noteOn(0x90, 85, 0x00);
    } 
   
    sw33State = currentsw33State;
    
     if (currentsw36State == 1 && sw36State == 0){      //Button 36

noteOn(0x90, 86, 0x40);
    }
    else if(currentsw36State == 0 && sw36State ==1){
      noteOn(0x90, 86, 0x00);
    } 
   
    sw36State = currentsw36State;
    
    
    
    
    
    if (currentsw37State == 1 && sw37State == 0){      //Button 37

noteOn(0x90, 1, 0x40);
    }
    else if(currentsw37State == 0 && sw37State ==1){
      noteOn(0x90, 1, 0x00);
    } 
   
    sw37State = currentsw37State;
    
    if (currentsw38State == 1 && sw38State == 0){      //Button 38

noteOn(0x90, 5, 0x40);
    }
    else if(currentsw38State == 0 && sw38State ==1){
      noteOn(0x90, 5, 0x00);
    } 
   
    sw38State = currentsw38State;
    
       if (currentsw39State == 1 && sw39State == 0){      //Button 39

noteOn(0x90, 9, 0x40);
    }
    else if(currentsw39State == 0 && sw39State ==1){
      noteOn(0x90, 9, 0x00);
    } 
   
    sw39State = currentsw39State;
    
     if (currentsw40State == 1 && sw40State == 0){      //Button 40

noteOn(0x90, 2, 0x40);
    }
    else if(currentsw40State == 0 && sw40State ==1){
      noteOn(0x90, 2, 0x00);
    } 
   
    sw40State = currentsw40State;
    
      if (currentsw41State == 1 && sw41State == 0){      //Button 41

noteOn(0x90, 6, 0x40);
    }
    else if(currentsw41State == 0 && sw41State ==1){
      noteOn(0x90, 6, 0x00);
    } 
   
    sw41State = currentsw41State;
    
    if (currentsw42State == 1 && sw42State == 0){      //Button 42

noteOn(0x90, 10, 0x40);
    }
    else if(currentsw42State == 0 && sw42State ==1){
      noteOn(0x90, 10, 0x00);
    } 
   
    sw42State = currentsw42State;
    
     if (currentsw43State == 1 && sw43State == 0){      //Button 43

noteOn(0x90, 3, 0x40);
    }
    else if(currentsw43State == 0 && sw43State ==1){
      noteOn(0x90, 3, 0x00);
    } 
   
    sw43State = currentsw43State;
    
    if (currentsw44State == 1 && sw44State == 0){      //Button 44

noteOn(0x90, 7, 0x40);
    }
    else if(currentsw44State == 0 && sw44State ==1){
      noteOn(0x90, 7, 0x00);
    } 
   
    sw44State = currentsw44State;
    
    if (currentsw45State == 1 && sw45State == 0){      //Button 45

noteOn(0x90, 11, 0x40);
    }
    else if(currentsw45State == 0 && sw45State ==1){
      noteOn(0x90, 11, 0x00);
    } 
   
    sw45State = currentsw45State;
    
     if (currentsw46State == 1 && sw46State == 0){      //Button 46

noteOn(0x90, 4, 0x40);
    }
    else if(currentsw46State == 0 && sw46State ==1){
      noteOn(0x90, 4, 0x00);
    } 
   
    sw46State = currentsw46State;
    
    if (currentsw47State == 1 && sw47State == 0){      //Button 47

noteOn(0x90, 8, 0x40);
    }
    else if(currentsw47State == 0 && sw47State ==1){
      noteOn(0x90, 8, 0x00);
    } 
   
    sw47State = currentsw47State;
    
     if (currentsw48State == 1 && sw48State == 0){      //Button 48

noteOn(0x90, 12, 0x40);
    }
    else if(currentsw48State == 0 && sw48State ==1){
      noteOn(0x90, 12, 0x00);
    } 
   
    sw48State = currentsw48State;
    
}//end void notes
