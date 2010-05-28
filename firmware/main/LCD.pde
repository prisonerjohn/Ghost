#include <LiquidCrystal.h>

// initialize the library with the numbers of the interface pins
LiquidCrystal lcd(49, 47, 46, 45, 44, 43);

//-------------------------
void initLCD() {
  pinMode(48, OUTPUT);
  
  // set up the LCD's number of columns and rows
  lcd.begin(16, 2);
  
  // Print a message to the LCD
  lcd.print("Welcome to");
  lcd.setCursor(0, 1);
  lcd.print("The Ghost");
}

//-------------------------
void doLCD() {
  digitalWrite(48, LOW);
  
  lcd.setCursor(0, 1);
  lcd.print("The Ghost");
}
