#ifndef THE_GHOST_MAPPINGS
#define THE_GHOST_MAPPINGS

//-------------------------
class Mapping {
  public:
    Mapping() {}
    
    virtual void on(char _chan, char _vel);
    virtual void off(char _chan);
};

//-------------------------
class NoteMapping : public Mapping {
  public: 
    NoteMapping(char _note = 0) : Mapping () {
      note = _note;
    }
    
    void on(char _chan, char _vel) {
      noteOn(_chan, note, _vel);
    }
    
    void off(char _chan) {
      noteOn(_chan, note, 0x00);
    }
    
    char note;
};

//-------------------------
class ChordMapping : public Mapping {
  public: 
    ChordMapping() : Mapping () {
      numNotes = 0;
    }
  
    ChordMapping(const char* _notes, int _numNotes, word _flag = 0) : Mapping () {
      notes    = _notes;
      numNotes = _numNotes;
      flag     = _flag;
    }
    
    void on(char _chan, char _vel) {
      for (int i=0; i < numNotes; i++) {
        noteOn(_chan, notes[i], _vel);
      }
    }
    
    void off(char _chan) {
      for (int i=0; i < numNotes; i++) {
        noteOn(_chan, notes[i], 0x00);
      }
    }
    
    void on(char _chan, char _vel, int _i) {
      noteOn(_chan, notes[_i], _vel);
    }
    
    void off(char _chan, int _i) {
      noteOn(_chan, notes[_i], 0x00);
    }
    
    const char* notes;
    int  numNotes;
    word flag;
};

//-------------------------
class ControlMapping {
  public: 
    ControlMapping(char _cc = 0) {
      cc = _cc;
    }
    
    void send(char _chan, char _val) {
      noteOn(_chan, cc, _val);
    }
    
    char cc;
};

#endif
