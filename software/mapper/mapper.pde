import controlP5.*;

ControlP5 controlP5;
ScrollList chord;
ScrollList note;
ScrollList cc;
ScrollList chan;

PImage MK2;
PFont font;

Ctrl btnList[] = new Ctrl[48];
Ctrl ccList[] = new Ctrl[8];
Ctrl currentCtrl;
Controller current;


// a button-controller with name buttonValue will change the
// value of this variable when pressed.
int buttonValue = 0;
int x = 277;  //button x placement
int y = 139;  //button y placement
int btW = 11; //button width
int btH = 11; //button height
int z = 13;   //button spacing

int myColor = color(0,0,0);


/////////////////////////////////////////////////////////////////////////////

void setup() {
  size(600,730);
  smooth();
  frameRate(30);
  MK2 = loadImage("TheGhost.png");
  //MK2.resize(350, 1000);
  
    font = loadFont("Futura-Medium-36.vlw");
    textFont(font, 36); 


  controlP5 = new ControlP5(this);
  controlP5.setControlFont(new ControlFont(createFont("Futura",20),14));
  controlP5.setColorForeground(color(120));
  controlP5.setColorBackground(color(200));
  controlP5.setColorLabel(color(230));//text color
  controlP5.setColorValue(color(0));//info box color
  controlP5.setColorActive(color(15)); //highlighting color



//****************___CHORDS___********************//

  controlP5.tab("default").activateEvent(true);
  controlP5.tab("default").setLabel("chord");
  controlP5.tab("default").setId(1);
  controlP5.tab("default").setWidth(60);

  chord = controlP5.addScrollList("chord",30,120,150,200);
  chord.setItemHeight(20);
  chord.setBarHeight(20);
  //chord. hideScrollbar();
  
  //chord.captionLabel().toUpperCase(false);
  chord.captionLabel().set("Set Chord");
  chord.captionLabel().style().marginTop = 4;
  
  controlP5.Button A = chord.addItem("A Major",50);
  controlP5.Button Am = chord.addItem("A Minor",51);
  controlP5.Button A7 = chord.addItem("A7",52);
  controlP5.Button Aa = chord.addItem("A Augmented",54);
  controlP5.Button Ad = chord.addItem("A Diminished",55);

  controlP5.Button Bb = chord.addItem("Bb Major",50);
  controlP5.Button Bbm = chord.addItem("Bb Minor",51);
  controlP5.Button Bb7 = chord.addItem("Bb7",52);
  controlP5.Button Bba = chord.addItem("Bb Augmented",54);
  controlP5.Button Bbd = chord.addItem("Bb Diminished",55);

  controlP5.Button B = chord.addItem("B Major",50);
  controlP5.Button Bm = chord.addItem("B Minor",51);
  controlP5.Button B7 = chord.addItem("B7",52);
  controlP5.Button Ba = chord.addItem("B Augmented",54);
  controlP5.Button Bd = chord.addItem("B Diminished",55);

  controlP5.Button C = chord.addItem("C Major",50);
  controlP5.Button Cm = chord.addItem("C Minor",51);
  controlP5.Button C7 = chord.addItem("C7",52);
  controlP5.Button Ca = chord.addItem("C Augmented",54);
  controlP5.Button Cd = chord.addItem("C Diminished",55);



//**********______NOTES______********************//

  controlP5.tab("note").setColorForeground(120);
  controlP5.tab("note").setColorBackground(160);
  
  note = controlP5.addScrollList("note",30,120,150,200);
  note.setItemHeight(20);
  note.setBarHeight(20);
  
  //note.captionLabel().toUpperCase(false);
  note.captionLabel().set("Set Note");
  note.captionLabel().style().marginTop = 4;
  
  controlP5.group("note").moveTo("note");
    
  // in case you want to receive a controlEvent when
  // a  tab is clicked, use activeEvent(true)
  controlP5.tab("note").activateEvent(true);
  controlP5.tab("note").setId(2);
  controlP5.tab("note").setWidth(50);
  
   for(int i=0;i<128;i++) {
    controlP5.Button n = note.addItem("MIDI Note "+i,i);
    n.setId(100 + i);
  }
  
  
  
  //***************____CC____**********************//
    
  cc = controlP5.addScrollList("cc",30,120,150,200);
  cc.setItemHeight(20);
  cc.setBarHeight(20);
  
  //cc.captionLabel().toUpperCase(false);
  cc.captionLabel().set("Set MIDI CC");
  cc.captionLabel().style().marginTop = 4;
  
  controlP5.group("cc").moveTo("cc");
  
  controlP5.tab("cc").activateEvent(true);
  controlP5.tab("cc").setId(3);
  controlP5.tab("cc").setWidth(50);
  
  for(int j=0;j<128;j++) {
    controlP5.Button c = cc.addItem("CC Value "+j,j);
    c.setId(200 + j);
  }
  
  
  
  
//**************____CHAN____**********************//
  chan = controlP5.addScrollList("chan",30,120,150,200);
  chan.setItemHeight(20);
  chan.setBarHeight(20);

  //chan.captionLabel().toUpperCase(false);
  chan.captionLabel().set("Set MIDI Channel");
  chan.captionLabel().style().marginTop = 4;

  controlP5.group("chan").moveTo("chan");

  controlP5.tab("chan").activateEvent(true);
  controlP5.tab("chan").setId(3);
  controlP5.tab("chan").setWidth(50);

 for(int k=0;k<17;k++) {
    controlP5.Button m = chan.addItem("MIDI Channel "+k,k);
    m.setId(300 + k);
  }




  //***********************--Create Toggles__*********************//  

//Toggle Rows 1-12
  for(int r=0; r<3;r++){                                          

    for(int c=0; c<12; c++){

      int b = 3*c+r;

      current = controlP5.addToggle("btn" + b,false,(x+r*z),(y+c*z),btW,btH);   
      current.moveTo("global");
      current.setLabel("");

    }

  }

//Toggle Rows 13-16
  for(int r=0; r<3;r++){                                          

    for(int c=12; c<16; c++){

      int b = 3*c+r;

      current = controlP5.addToggle("btn" + b,false,(x+r*z),(y+(c*z)+25),btW,btH);   
      current.moveTo("global");
      current.setLabel("");

    }

  }


//************---Create Control Objects for buttons and CCs___********************//

  for(int i=1; i<8; i++){    
    Ctrl cc = new ccCtrl();
    cc.id = i;
    ccList[i]=cc;
  }


  for(int i=1; i<48; i++){
    Ctrl btn = new btnCtrl();
    btn.id = i;
    btnList[i]=btn;
  }


}//end setup

////////////////////////////////////////////////////////////////////////////////////////////

void controlEvent(ControlEvent theEvent) {
  // ScrollList is of type ControlGroup. when an item in a scrollList is activated, 2 controlEvents will be broadcasted.
  // the first one event is triggered from the ScrollList, the second one from the button that has been pressed inside the scrollList.
  // to avoid an error message from controlP5, you need to check what type of item did trigger the event, either a controller or a group.
  
  println(theEvent.controller().name());
  if(theEvent.isController()) {


    if(theEvent.controller().name().startsWith("btn")){

      for(int b = 0; b <48; b++){

        if(theEvent.controller().name().equals("btn" + b)){

          currentCtrl = btnList[b];
        }

      }
    }

    // an event from a controller e.g. button
    println(theEvent.controller().value()+" from "+theEvent.controller());

    println("LABEL: " + theEvent.controller().label());

    if(currentCtrl != null){

      for(int n = 0; n <128; n++){

        if(theEvent.controller().label().equals("MIDI Note" + n)){

          ((btnCtrl)currentCtrl).note = n;
        }
      }
    }
  } 

  else if (theEvent.isGroup()) {
    // an event from a group e.g. scrollList
    println(theEvent.group().value()+" from "+theEvent.group());
  }


}


void draw() {
  background(230);

  image(MK2, 172, 15);

  stroke(0);
  rect(375,100,170,225);
  fill(0);
  text("Current Controller:", 380, 120);
  text("Chord:", 400, 160);
  text("MIDI Note:", 400, 210);
  text("MIDI CC:", 400, 260);
  text("MIDI Channel:", 400, 310);


}//end draw








