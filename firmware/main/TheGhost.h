#ifndef THE_GHOST
#define THE_GHOST

#include "WProgram.h"

#define NUM_BUTTON_BOARDS  4
#define NUM_BUTTON_ROWS    3
#define NUM_BUTTON_COLS    4

#define MAX_CHORD_MAPPINGS 8

//*************************
// SWITCH DEFINITIONS
//*************************

#define SWITCH_AUTO_CHORD   2
#define SWITCH_NOTE_CHORD   3
#define SWITCH_TOUCH_PLATE  4
#define SWITCH_DRUM_MACHINE 5

//*************************
// NOTE DEFINITIONS
//*************************

const char C_NEG_1       =   0;  // C6
const char C_SHARP_NEG_1 =   1;
const char D_NEG_1       =   2;
const char D_SHARP_NEG_1 =   3;
const char E_NEG_1       =   4;  // E
const char F_NEG_1       =   5;
const char F_SHARP_NEG_1 =   6;
const char G_NEG_1       =   7;  // G
const char G_SHARP_NEG_1 =   8;
const char A_NEG_1       =   9;
const char A_SHARP_NEG_1 =  10;
const char B_NEG_1       =  11;

const char C_0           =  12;  // C0
const char C_SHARP_0     =  13;
const char D_0           =  14;
const char D_SHARP_0     =  15;
const char E_0           =  16;  // E
const char F_0           =  17;
const char F_SHARP_0     =  18;
const char G_0           =  19;  // G
const char G_SHARP_0     =  20;
const char A_0           =  21;
const char A_SHARP_0     =  22;
const char B_0           =  23;

const char C_1           =  24;  // Middle C1
const char C_SHARP_1     =  25;
const char D_1           =  26;
const char D_SHARP_1     =  27;
const char E_1           =  28;  // E
const char F_1           =  29;
const char F_SHARP_1     =  30;
const char G_1           =  31;  // G
const char G_SHARP_1     =  32;
const char A_1           =  33;
const char A_SHARP_1     =  34;
const char B_1           =  35;

const char C_2           =  36;  // C2
const char C_SHARP_2     =  37;
const char D_2           =  38;
const char D_SHARP_2     =  39;
const char E_2           =  40;  // E
const char F_2           =  41;
const char F_SHARP_2     =  42;
const char G_2           =  43;  // G
const char G_SHARP_2     =  44;
const char A_2           =  45;
const char A_SHARP_2     =  46;
const char B_2           =  47;

const char C_3           =  48;  // C3
const char C_SHARP_3     =  49;
const char D_3           =  50;
const char D_SHARP_3     =  51;
const char E_3           =  52;  // E
const char F_3           =  53;
const char F_SHARP_3     =  54;
const char G_3           =  55;  // G
const char G_SHARP_3     =  56;
const char A_3           =  57;
const char A_SHARP_3     =  58;
const char B_3           =  59;

const char C_4           =  60;  // C4
const char C_SHARP_4     =  61;
const char D_4           =  62;
const char D_SHARP_4     =  63;
const char E_4           =  64;  // E
const char F_4           =  65;
const char F_SHARP_4     =  66;
const char G_4           =  67;  // G
const char G_SHARP_4     =  68;
const char A_4           =  69;
const char A_SHARP_4     =  70;
const char B_4           =  71;

const char C_5           =  72;  // C5
const char C_SHARP_5     =  73;
const char D_5           =  74;
const char D_SHARP_5     =  75;
const char E_5           =  76;  // E
const char F_5           =  77;
const char F_SHARP_5     =  78;
const char G_5           =  79;  // G
const char G_SHARP_5     =  80;
const char A_5           =  81;
const char A_SHARP_5     =  82;
const char B_5           =  83;

const char C_6           =  84;  // C6
const char C_SHARP_6     =  85;
const char D_6           =  86;
const char D_SHARP_6     =  87;
const char E_6           =  88;  // E
const char F_6           =  89;
const char F_SHARP_6     =  90;
const char G_6           =  91;  // G
const char G_SHARP_6     =  92;
const char A_6           =  93;
const char A_SHARP_6     =  94;
const char B_6           =  95;

const char C_7           =  96;  // C7
const char C_SHARP_7     =  97;
const char D_7           =  98;
const char D_SHARP_7     =  99;
const char E_7           = 100;  // E
const char F_7           = 101;
const char F_SHARP_7     = 102;
const char G_7           = 103;  // G
const char G_SHARP_7     = 104;
const char A_7           = 105;
const char A_SHARP_7     = 106;
const char B_7           = 107;

const char C_8           = 108;  // C8
const char C_SHARP_8     = 109;
const char D_8           = 110;
const char D_SHARP_8     = 111;
const char E_8           = 112;  // E
const char F_8           = 113;
const char F_SHARP_8     = 114;
const char G_8           = 115;  // G
const char G_SHARP_8     = 116;
const char A_8           = 117;
const char A_SHARP_8     = 118;
const char B_8           = 119;

const char C_9           = 120;  // C9
const char C_SHARP_9     = 121;
const char D_9           = 122;
const char D_SHARP_9     = 123;
const char E_9           = 124;  // E
const char F_9           = 125;
const char F_SHARP_9     = 126;
const char G_9           = 127;  // G

//*************************
// CHORD DEFINITIONS
//*************************

const char C_MAJOR[]     = { C_2, E_2, G_2, C_3, E_3, G_3, C_4, E_4 };                    // BTN 1
const char C_MAJOR_SCL[] = { C_3, D_3, E_3, F_3, G_3, A_3, B_3, C_4 };

const char G_MAJOR[]     = { G_2, B_2, D_2, G_3, B_3, D_3, G_4, B_4 };                    // BTN 4
const char G_MAJOR_SCL[] = { G_3, A_3, B_3, C_3, D_3, E_3, F_SHARP_3, G_4 };

const char D_MAJOR[]     = { D_2, F_SHARP_2, A_2, D_3, F_SHARP_3, A_3, D_4, F_SHARP_4 };  // BTN 7
const char D_MAJOR_SCL[] = { D_3, E_3, F_SHARP_3, G_3, A_3, B_3, C_SHARP_3, D_4 };

const char A_MAJOR[]     = { A_2, C_SHARP_2, E_2, A_3, C_SHARP_3, E_3, A_4, C_SHARP_4 };  // BTN 10
const char A_MAJOR_SCL[] = { A_3, B_3, C_SHARP_3, D_3, E_3, F_SHARP_3, G_SHARP_3, A_4 };


const char A_MINOR[] = {A_2, C_2, E_2, A_3, C_3, E_3, A_4, C_4};                          // BTN 2
const char A_MINOR_SCL[] = {A_3, B_3, C_3, D_3, E_3, F_3, G_3, A_4};

const char E_MINOR[] = {E_2, G_2, B_2, E_3, G_3, B_3, E_4, G_4};                          // BTN 5
const char E_MINOR_SCL[] = {E_3, F_SHARP_3, G_3, A_3, B_3, C_3, D_3, E_4};

const char B_MINOR[] = {B_2, D_2, F_SHARP_2, B_3, D_3, F_SHARP_3, B_4, D_4};              // BTN 8
const char B_MINOR_SCL[] = {B_3, C_SHARP_3, D_3, E_3, F_SHARP_3, G_3, A_3, B_4};

const char F_SHARP_MINOR[] = {F_SHARP_2, A_2, C_2, F_SHARP_3, A_3, C_3, F_SHARP_4, A_4};  // BTN 11
const char F_SHARP_MINOR_SCL[] = {F_SHARP_3, G_SHARP_3, A_3, B_3, C_SHARP_3, D_3, E_3, F_SHARP_4};

//*************************
// GLOBAL VARIABLES
//*************************

word buttonStates[NUM_BUTTON_BOARDS];
word chordFlags;

//*************************
// GLOBAL FUNCTIONS
//*************************

//-------------------------
void noteOn(char _chan, char _note, char _vel) {
  Serial.print(_chan, BYTE);
  Serial.print(_note, BYTE);
  Serial.print(_vel,  BYTE);
}

//*************************
// CLASS DEFINITIONS
//*************************

#include "Mappings.h"
#include "Controls.h"

#endif
