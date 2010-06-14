#ifndef GHOST
#define GHOST

#include "WProgram.h"

#define NUM_BUTTON_BOARDS    4
#define NUM_BUTTON_ROWS      3
#define NUM_BUTTON_COLS      4

#define NUM_TOUCH_PLATES     8

#define NUM_STEPS            (NUM_BUTTON_BOARDS * NUM_BUTTON_COLS)
#define NUM_ARRAYS           NUM_STEPS

#define MAX_CHORD_MAPPINGS   8

#define NUM_NOTES_OCTAVE    12

//*************************
// SWITCH DEFINITIONS
//*************************

#define SWITCH_AUTO_CHORD    2
#define SWITCH_NOTE_CHORD    3
#define SWITCH_TOUCH_PLATE   4
#define SWITCH_DRUM_MACHINE  5

//*************************
// TOUCHPLATE DEFINITIONS
//*************************

#define TOUCH_PLATE_PIN_1   22

//*************************
// HEADSTOCK DEFINITIONS
//*************************

#define HEADSTOCK_PIN_1     62

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

const char C_MAJOR[]     = {C_3, E_3, G_3, C_4, E_4, G_4, C_5, E_5};                                              // BTN 1
const char C_MAJOR_SCL[] = {C_4, D_4, E_4, F_4, G_4, A_4, B_4, C_5};
const char C_SEVEN[] =     {C_3, E_3, G_3, A_SHARP_3, C_4, E_4, G_4, A_SHARP_4};                                //BTN 1+3
const char C_MAJOR_7[] =   {C_3, E_3, G_3, B_3, C_4, E_4, G_4, B_4};                                               //BTN 1+3+6
const char C_AUGMENTED[] = {C_3, E_3, G_SHARP_3, C_4, E_4, G_SHARP_4, C_5, E_5};                                    //BTN 1+6

const char G_MAJOR[]     = {G_3, B_3, D_4, G_4, B_4, D_5, G_5, B_5 };                                              // BTN 4
const char G_MAJOR_SCL[] = {G_4, A_4, B_4, C_5, D_5, E_5, F_SHARP_5, G_5 };
const char G_SEVEN[] =     {G_3, B_3, D_4, F_4, G_4, B_4, D_5, F_5};                                             //BTN 4+6
const char G_MAJOR_7[] =   {G_3, B_3, D_4, F_SHARP_4, G_4, B_4, D_5, F_SHARP_5};                                      //BTN 4+6+9
const char G_AUGMENTED[] = {G_3, B_3, D_SHARP_4, G_4, B_4, D_SHARP_5, G_5, B_5};                                    //BTN 4+9

const char D_MAJOR[]     = {D_3, F_SHARP_3, A_3, D_4, F_SHARP_4, A_4, D_5, F_SHARP_5};                            // BTN 7
const char D_MAJOR_SCL[] = {D_4, E_4, F_SHARP_4, G_4, A_4, B_4, C_SHARP_5, D_5};
const char D_SEVEN[] =     {D_3, F_SHARP_3, A_3, C_4, D_4, F_SHARP_4, A_4, C_5};                                            //BTN 7+9
const char D_MAJOR_7[] =   {D_3, F_SHARP_3, A_3, C_SHARP_4, D_4, F_SHARP_4, A_4, C_SHARP_5};                          //BTN 7+9+12
const char D_AUGMENTED[] = {D_3, F_SHARP_3, A_SHARP_3, D_4, F_SHARP_4, A_SHARP_4, D_5, F_SHARP_5};                  //BTN 7+12

const char A_MAJOR[]     = {A_3, C_SHARP_4, E_4, A_4, C_SHARP_5, E_5, A_5, C_SHARP_6};                            // BTN 10
const char A_MAJOR_SCL[] = {A_4, B_4, C_SHARP_5, D_5, E_5, F_SHARP_5, G_SHARP_5, A_5};
const char A_SEVEN[] =     {A_3, C_SHARP_4, E_4, G_4, A_4, C_SHARP_5, E_5, G_5};                                     //BTN 10+12
const char A_MAJOR_7[] =   {A_3, C_SHARP_4, E_4, G_SHARP_4, A_4, C_SHARP_5, E_5, G_SHARP_5};                          //BTN 10+12+15
const char A_AUGMENTED[] = {A_3, C_SHARP_4, F_4, A_4, C_SHARP_5, F_5, A_5, C_SHARP_6};                              //BTN 10+15

const char E_MAJOR[] =     {E_3, G_SHARP_3, B_3, E_4, G_SHARP_4, B_4, E_5, G_SHARP_5};                                  //BTN 13
const char E_MAJOR_SCL[] = {E_4, F_SHARP_4, G_SHARP_4, A_4, B_4, C_SHARP_5, D_SHARP_5, E_5}; 
const char E_SEVEN[] =     {E_3, G_SHARP_3, B_3, D_4, E_4, G_SHARP_4, B_4, D_5};                                      //BTN 13+15
const char E_MAJOR_7[] =   {E_3, G_SHARP_3, B_3, D_SHARP_4, E_4, G_SHARP_4, B_4, D_SHARP_5};                          //BTN 13+15+18
const char E_AUGMENTED[] = {E_3, G_SHARP_3, C_4, E_4, G_SHARP_4, C_5, E_5, G_SHARP_5};                              //BTN 13+18

const char B_MAJOR[] =     {B_3, D_SHARP_4, F_SHARP_4, B_4, D_SHARP_5, F_SHARP_5, B_5, D_SHARP_6};                      //BTN 16
const char B_MAJOR_SCL[] = {B_4, C_SHARP_5, D_SHARP_5, E_5, F_SHARP_5, G_SHARP_5, A_SHARP_5, B_5}; 
const char B_SEVEN[] =     {B_3, D_SHARP_4, F_SHARP_4, A_4, B_4, D_SHARP_5, F_SHARP_5, A_5};                                //BTN 16+18
const char B_MAJOR_7[] =   {B_3, D_SHARP_4, F_SHARP_4, A_SHARP_4, B_4, D_SHARP_5, F_SHARP_5, A_SHARP_5};              //BTN 16+18+21
const char B_AUGMENTED[] = {B_3, D_SHARP_4, G_4, B_4, D_SHARP_5, G_5, B_5, D_SHARP_6};                              //BTN 16+21

const char F_SHARP_MAJOR[] =     {F_SHARP_3, A_SHARP_3, C_SHARP_4, F_SHARP_4, A_SHARP_4, C_SHARP_5, F_SHARP_5, A_SHARP_5};   //BTN 19
const char F_SHARP_MAJOR_SCL[] = {F_SHARP_4, G_SHARP_4, A_SHARP_4, B_4, C_SHARP_5, D_SHARP_5, F_5, F_SHARP_5};
const char F_SHARP_SEVEN[] =     {F_SHARP_3, A_SHARP_3, C_SHARP_4, E_4, F_SHARP_4, A_SHARP_4, C_SHARP_5, E_5};                 //BTN 19+21
const char F_SHARP_MAJOR_7[] =   {F_SHARP_3, A_SHARP_3, C_SHARP_4, F_4, F_SHARP_4, A_SHARP_4, C_SHARP_5, F_5};           //BTN 19+21+24
const char F_SHARP_AUGMENTED[] = {F_SHARP_3, A_SHARP_3, D_4, F_SHARP_4, A_SHARP_4, D_5, F_SHARP_5, A_SHARP_5};          //BTN 19+24

const char C_SHARP_MAJOR[] =     {C_SHARP_3, F_3, G_SHARP_3, C_SHARP_4, F_4, G_SHARP_4, C_SHARP_5, F_5};                     //BTN 22
const char C_SHARP_MAJOR_SCL[] = {C_SHARP_4, D_SHARP_4, F_4, F_SHARP_4, G_SHARP_4, A_SHARP_4, C_4, C_SHARP_5};
const char C_SHARP_SEVEN[] =     {C_SHARP_3, F_3, G_SHARP_3, B_3, C_SHARP_4, F_4, G_SHARP_4, B_4};                               //BTN 22+24
const char C_SHARP_MAJOR_7[] =   {C_SHARP_3, F_3, G_SHARP_3, C_3, C_SHARP_4, F_4, G_SHARP_4, C_4};                         //BTN 22+24+27
const char C_SHARP_AUGMENTED[] = {C_SHARP_3, F_3, A_3, C_SHARP_4, F_4, A_4, C_SHARP_5, F_5};                             //BTN 22+27

const char G_SHARP_MAJOR[] =     {G_SHARP_3, C_4, D_SHARP_4, G_SHARP_4, C_5, D_SHARP_5, G_SHARP_5, C_6};                     //BTN 25
const char G_SHARP_MAJOR_SCL[] = {G_SHARP_4, A_SHARP_4, C_5, C_SHARP_5, D_SHARP_5, F_5, G_5, G_SHARP_5};
const char G_SHARP_SEVEN[] =     {G_SHARP_3, C_4, D_SHARP_4, F_SHARP_4, G_SHARP_4, C_5, D_SHARP_5, F_SHARP_5};                   //BTN 25+27
const char G_SHARP_MAJOR_7[] =   {G_SHARP_3, C_4, D_SHARP_4, G_4, G_SHARP_4, C_5, D_SHARP_5, G_5};                         //BTN 25+27+30
const char G_SHARP_AUGMENTED[] = {G_SHARP_3, C_4, E_4, G_SHARP_4, C_5, E_5, G_SHARP_5, C_6};                            //BTN 25+30
 
const char D_SHARP_MAJOR[] =     {D_SHARP_3, G_3, A_SHARP_3, D_SHARP_4, G_4, A_SHARP_4, D_SHARP_5, G_5};                     //BTN 28
const char D_SHARP_MAJOR_SCL[] = {D_SHARP_4, F_4, G_4, G_SHARP_4, A_SHARP_4, C_5, D_5, D_SHARP_5};
const char D_SHARP_SEVEN[] =     {D_SHARP_3, G_3, A_SHARP_3, C_SHARP_4, D_SHARP_4, G_4, A_SHARP_4, C_SHARP_5};                   //BTN 28+30
const char D_SHARP_MAJOR_7[] =   {D_SHARP_3, G_3, A_SHARP_3, D_4, D_SHARP_4, G_4, A_SHARP_4, D_5};                         //BTN 28+30+33
const char D_SHARP_AUGMENTED[] = {D_SHARP_3, G_3, B_3, D_SHARP_4, G_4, B_4, D_SHARP_5, G_5};                             //BTN 28+33

const char A_SHARP_MAJOR[] =     {A_SHARP_3, D_4, F_3, A_SHARP_4, D_4, F_4, A_SHARP_5, D_5};                                 //BTN 31
const char A_SHARP_MAJOR_SCL[] = {A_SHARP_4, C_5, D_5, D_SHARP_5, F_5, G_5, A_5, A_SHARP_5};
const char A_SHARP_SEVEN[] =     {A_SHARP_3, D_4, F_4, G_SHARP_4, A_SHARP_4, D_5, F_5, G_SHARP_5};                               //BTN 31+33
const char A_SHARP_MAJOR_7[] =   {A_SHARP_3, D_4, F_4, G_SHARP_4, A_SHARP_4, D_5, F_5, G_SHARP_5};                         //BTN 31+33+36
const char A_SHARP_AUGMENTED[] = {A_SHARP_3, D_4, F_SHARP_4, A_SHARP_4, D_5, F_SHARP_5, A_SHARP_5, D_6};                 //BTN 31+36

const char F_MAJOR[] =     {F_3, A_3, C_4, F_4, A_4, C_5, F_5, A_5};                                                         //BTN 34
const char F_MAJOR_SCL[] = {F_4, G_4, A_4, A_SHARP_4, C_5, D_5, E_5, F_5};
const char F_SEVEN[] =     {F_3, A_3, C_4, D_SHARP_4, F_4, A_4, C_5, D_SHARP_5};                                                 //BTN 34+36
const char F_MAJOR_7[] =   {F_3, A_3, C_4, E_4, F_4, A_4, C_5, E_5};                                                      //BTN 34+36+33
const char F_AUGMENTED[] = {F_3, A_3, C_SHARP_4, F_4, A_4, C_SHARP_5, F_5, A_5};                                         //BTN 34+33





const char A_MINOR[] =      {A_3, C_4, E_4, A_4, C_5, E_5, A_5, C_6};                                                         //BTN 2
const char A_MINOR_SCL[] =  {A_4, B_4, C_5, D_5, E_5, F_5, G_5, A_5};
const char A_MINOR_7[] =    {A_3, C_4, E_4, G_4, A_4, C_5, E_5, G_5};                                                      //BTN 2+3
const char A_DIMINISHED[] = {A_3, C_4, D_SHARP_4, A_4, C_5, D_SHARP_5, A_5, C_6};                                      //BTN 2+6

const char E_MINOR[] =      {E_3, G_3, B_3, E_4, G_4, B_4, E_5, G_5};                                                        //BTN 5
const char E_MINOR_SCL[] =  {E_4, F_SHARP_4, G_4, A_4, B_4, C_5, D_5, E_5};
const char E_MINOR_7[] =    {E_3, G_3, B_3, D_4, E_4, G_4, B_4, D_5};                                                       //BTN 5+6
const char E_DIMINISHED[] = {E_3, G_3, A_SHARP_3, E_4, G_4, A_SHARP_4, E_5, G_5};                                         //BTN 5+9
  
const char B_MINOR[] =      {B_2, D_3, F_SHARP_3, B_3, D_4, F_SHARP_4, B_4, D_5};                                            //BTN 8
const char B_MINOR_SCL[] =  {B_4, C_SHARP_5, D_5, E_5, F_SHARP_5, G_5, A_5, B_5};
const char B_MINOR_7[] =    {B_2, D_3, F_SHARP_3, A_3, B_3, D_4, F_SHARP_4, A_4};                                          //BTN 8+9
const char B_DIMINISHED[] = {B_2, D_2, F_2, B_3, D_3, F_3, B_4, D_4};                                                  //BTN 8+12

const char F_SHARP_MINOR[] =      {F_SHARP_3, A_3, C_SHARP_4, F_SHARP_4, A_4, C_SHARP_5, F_SHARP_5, A_5};                   //BTN 11
const char F_SHARP_MINOR_SCL[] =  {F_SHARP_4, G_SHARP_4, A_4, B_4, C_SHARP_5, D_5, E_5, F_SHARP_5};
const char F_SHARP_MINOR_7[] =    {F_SHARP_3, A_3, C_SHARP_4, E_4, F_SHARP_4, A_4, C_SHARP_5, E_5};                       //BTN 11+12
const char F_SHARP_DIMINISHED[] = {F_SHARP_3, A_3, C_4, F_SHARP_4, A_4, C_5, F_SHARP_5, A_5};                          //BTN 11+15

const char  C_SHARP_MINOR[] =      {C_SHARP_3, E_3, G_SHARP_3, C_SHARP_4, E_4, G_SHARP_4, C_SHARP_5, E_5};                  //BTN 14
const char  C_SHARP_MINOR_SCL[] =  {C_SHARP_4, D_SHARP_4, E_4, F_SHARP_4, G_SHARP_4, A_4, B_4, C_SHARP_5};
const char  C_SHARP_MINOR_7[] =    {C_SHARP_3, E_3, G_SHARP_3, B_3, C_SHARP_4, E_4, G_SHARP_4, B_4};                      //BTN 14+15
const char  C_SHARP_DIMINISHED[] = {C_SHARP_3, E_3, G_3, C_SHARP_4, E_4, G_4, C_SHARP_5, E_5};                         //BTN 14+18

const char  G_SHARP_MINOR[] =      {G_SHARP_3, B_3, D_SHARP_4, G_SHARP_4, B_4, D_SHARP_5, G_SHARP_5, B_5};                    //BTN 17
const char  G_SHARP_MINOR_SCL[] =  {G_SHARP_4, A_SHARP_4, B_4, C_SHARP_5, D_SHARP_5, E_5, F_SHARP_5, G_SHARP_5};         
const char  G_SHARP_MINOR_7[] =    {G_SHARP_3, B_3, D_SHARP_4, F_SHARP_4, G_SHARP_4, B_4, D_SHARP_5, F_SHARP_5};             //BTN 17+18
const char  G_SHARP_DIMINISHED[] = {G_SHARP_3, B_3, D_4, G_SHARP_4, B_4, D_5, G_SHARP_5, B_5};                            //BTN 17+21

const char  D_SHARP_MINOR[] =      {D_SHARP_3, F_SHARP_3, A_SHARP_3, D_SHARP_4, F_SHARP_4, A_SHARP_4, D_SHARP_5, F_SHARP_5};         //BTN 20
const char  D_SHARP_MINOR_SCL[] =  {D_SHARP_4, F_4, F_SHARP_4, G_SHARP_4, A_SHARP_4, B_4, C_SHARP_5, D_SHARP_5};
const char  D_SHARP_MINOR_7[] =    {D_SHARP_3, F_SHARP_3, A_SHARP_3, C_SHARP_5, D_SHARP_5, F_SHARP_5, A_SHARP_5, C_SHARP_6};       //BTN 20+21
const char  D_SHARP_DIMINISHED[] = {D_SHARP_3, F_SHARP_3, A_3, D_SHARP_4, F_SHARP_4, A_4, D_SHARP_5, F_SHARP_5};                //BTN 20+24

const char  A_SHARP_MINOR[] =      {A_SHARP_3, C_SHARP_4, F_4, A_SHARP_5, C_SHARP_5, F_5, A_SHARP_6, C_SHARP_6};                    //BTN 23
const char  A_SHARP_MINOR_SCL[] =  {A_SHARP_4, C_5, C_SHARP_5, D_SHARP_5, F_5, F_SHARP_5, G_SHARP_5, A_SHARP_5};
const char  A_SHARP_MINOR_7[] =    {A_SHARP_3, C_SHARP_4, F_4, G_SHARP_4, A_SHARP_4, C_SHARP_5, F_5, G_SHARP_5};                  //BTN 23+24
const char  A_SHARP_DIMINISHED[] = {A_SHARP_3, C_SHARP_4, E_4, A_SHARP_4, C_SHARP_5, E_5, A_SHARP_5, C_SHARP_6};              //BTN 23+27

const char F_MINOR[] =      {F_3, G_SHARP_3, C_4, F_4, G_SHARP_4, C_5, F_5, G_SHARP_5};                                           //BTN 26
const char F_MINOR_SCL[] =  {F_4, G_4, G_SHARP_4, A_SHARP_4, C_5, C_SHARP_5, D_SHARP_5};
const char F_MINOR_7[] =    {F_3, G_SHARP_3, C_4, D_SHARP_4, F_4, G_SHARP_4, C_5, D_SHARP_5};                                  //BTN 26+27
const char F_DIMINISHED[] = {F_3, G_SHARP_3, B_3, F_4, G_SHARP_4, B_4, F_5, G_SHARP_5};                                     //BTN 26+30

const char C_MINOR[] =      {C_3, D_SHARP_3, G_3, C_4, D_SHARP_4, G_4, C_5, D_SHARP_5};                                          //BTN 29
const char C_MINOR_SCL[] =  {C_4, D_4, D_SHARP_4, F_4, G_4, A_4, B_4, C_5};
const char C_MINOR_7[] =    {C_3, D_SHARP_3, G_3, A_SHARP_3, C_4, D_SHARP_4, G_4, A_SHARP_4};                                 //BTN 29+30
const char C_DIMINISHED[] = {C_3, D_SHARP_3, F_SHARP_3, C_4, D_SHARP_4, G_4, C_5, D_SHARP_5};                               //BTN 29+33 

const char G_MINOR[] =      {G_3, A_SHARP_3, D_4, G_4, A_SHARP_4, D_5, G_5, A_SHARP_5};                                          //BTN 32
const char G_MINOR_SCL[] =  {G_4, A_4, A_SHARP_4, C_5, D_5, D_SHARP_5, F_5, G_5};
const char G_MINOR_7[] =    {G_3, A_SHARP_3, D_4, F_4, G_4, A_SHARP_4, D_5, F_5};                                              //BTN 32+33
const char G_DIMINISHED[] = {G_3, A_SHARP_3, C_SHARP_4, G_4, A_SHARP_4, C_SHARP_5, G_5, A_SHARP_5};                        //BTN 32+36

const char D_MINOR[] = {D_3, F_3, A_3, D_4, F_4, A_4, D_5, F_5};                                                           //BTN 35
const char D_MINOR_SCL[] = {D_4, E_4, F_4, G_4, A_4, A_SHARP_4, C_5, D_5};
const char D_MINOR_7[] = {D_3, F_3, A_3, C_4, D_4, F_4, A_4, C_5};                                                         //BTN 35+36
const char D_DIMINISHED[] = {D_3, F_3, G_SHARP_3, D_4, F_4, G_SHARP_4, D_5, F_5};                                          //BTN 35+33

//*************************
// GLOBAL VARIABLES
//*************************

boolean noteChordSwitch;
boolean autoChordSwitch;
boolean touchPlateSwitch;
boolean drumMachineSwitch;

word buttonStates[NUM_BUTTON_BOARDS];
word rowFlags[NUM_BUTTON_ROWS];
word touchStates;

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
