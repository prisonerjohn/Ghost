#ifndef THE_GHOST_CONTROLS
#define THE_GHOST_CONTROLS

//-------------------------
class Control {
  public:
    Control() {}
    
    void set(int _id, int _chan = 0) {
      id   = _id;
      chan = _chan;
    }
  
    int  id;
    char chan;
};

//-------------------------
class ButtonControl : public Control {
  public:
    ButtonControl() : Control() {
      pressed = false;  
    }
    
    virtual void press()   { pressed = true; }
    virtual void release() { pressed = false; }
    void toggle() {
      if (pressed) release();
      else press();  
    }
    
    boolean pressed;
};

//-------------------------
class NoteControl : public ButtonControl {
  public:
    NoteControl() : ButtonControl() {}
    
    void set(int _id, int _chan, NoteMapping _noteMap) {
      Control::set(_id, _chan);
      noteMap = _noteMap; 
    }
    
    void press() {
      ButtonControl::press();
      noteMap.on(chan, 0x40);
    }
    
    void release() {
      ButtonControl::release();
      noteMap.off(chan);
    }
    
    NoteMapping noteMap;
};

//-------------------------
class ChordControl : public ButtonControl {
  public:
    ChordControl() : ButtonControl() {
      numMappings = 0;
    }
    
    void set(int _id, int _chan, ChordMapping _chordMap) {
      Control::set(_id, _chan);
      chordMaps[0] = _chordMap;
      numMappings = 1;
    }
    
    void press() {
      ButtonControl::press();
      lastFlag = rowFlags[2];
      for (int i=0; i < numMappings; i++) {
        if (chordMaps[i].flag == rowFlags[2]) {
          chordMaps[i].on(chan, 0x40);
          return;
        }  
      }
      // no mapping was found, just play the first one
      chordMaps[0].on(chan, 0x40);
    }
    
    void release() {
      ButtonControl::release();
      for (int i=0; i < numMappings; i++) {
        chordMaps[i].off(chan);  
      }
    }
    
    void pressIndex(int _i) {
      ButtonControl::press();
      lastFlag = rowFlags[2];
      chordMaps[_i].on(chan, 0x40);
    }
    
    int mappingExists() {
      for (int i=0; i < numMappings; i++) {
        if (chordMaps[i].flag == rowFlags[2]) {
          return i;
        }  
      }
      return -1;
    }
    
    void addMapping(ChordMapping _chordMap) {
      if (numMappings < MAX_CHORD_MAPPINGS) {
        chordMaps[numMappings] = _chordMap;
        numMappings++;  
      }
    }
    
    ChordMapping chordMaps[MAX_CHORD_MAPPINGS];
    int numMappings;
    word lastFlag;
};

//-------------------------
class ContinuousControl : public Control {
  public:
    ContinuousControl() : Control() {
      val = 0;  
    }
    
    void set(int _id, int _chan, ControlMapping _ctrlMap) {
      Control::set(_id, _chan);
      ctrlMap = _ctrlMap; 
    }
    
    void update(int _val) {
      // do some smoothing
      if (abs(_val - val) > 1) {
        ctrlMap.send(chan, val);
        val = _val;  
      }
    }
    
    ControlMapping ctrlMap;
    
    char ctrl;
    char val;
};

//-------------------------
class DrumControl : public ButtonControl {
  public:
    DrumControl() : ButtonControl() {
      state = false;
    }
    
    void set(int _id, int _chan, NoteMapping _noteMap) {
      Control::set(_id, _chan);
      noteMap = _noteMap; 
    }
    
    void release() {
      ButtonControl::release();
      state = !state;  
    }
    
    void trigger() {
      noteMap.on(chan, 0x40);
      noteMap.off(chan);
    }
    
    NoteMapping noteMap;
    
    boolean state;
};

#endif
