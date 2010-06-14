#ifndef GHOST_MAPPINGS
#define GHOST_MAPPINGS

//-------------------------
class Mapping {
  public:
    Mapping() {}
    
    virtual void on(char _chan, char _vel, int _octave);
    virtual void off(char _chan, int _octave);
};

//-------------------------
class NoteMapping : public Mapping {
  public: 
    NoteMapping(char _note = 0) : Mapping () {
      note = _note;
    }
    
    void on(char _chan, char _vel, int _octave) {
      noteOn(_chan, note + (NUM_NOTES_OCTAVE * _octave), _vel);
    }
    
    void off(char _chan, int _octave) {
      noteOn(_chan, note + (NUM_NOTES_OCTAVE * _octave), 0x00);
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
    
    void on(char _chan, char _vel, int _octave) {
      for (int i=0; i < numNotes; i++) {
        noteOn(_chan, notes[i] + (NUM_NOTES_OCTAVE * _octave), _vel);
      }
    }
    
    void off(char _chan, int _octave) {
      for (int i=0; i < numNotes; i++) {
        noteOn(_chan, notes[i] + (NUM_NOTES_OCTAVE * _octave), 0x00);
      }
    }
    
    void on(char _chan, char _vel, int _i, int _octave) {
      noteOn(_chan, notes[_i] + (NUM_NOTES_OCTAVE * _octave), _vel);
    }
    
    void off(char _chan, int _i, int _octave) {
      noteOn(_chan, notes[_i] + (NUM_NOTES_OCTAVE * _octave), 0x00);
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
