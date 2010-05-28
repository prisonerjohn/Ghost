//void SD_Read(){
//
//  Serial.println();
//  PgmPrintln("type any character to start");
//  while (!Serial.available());
//  Serial.println();
//  
//// initialize the SD card
//  if (!card.init()) error("card.init");
//  
//  // initialize a FAT16 volume
//  if (!Fat16::init(card)) error("Fat16::init");
//  
//  // open a file
//  if (file.open("lines.txt", O_READ)) {
//    PgmPrintln("Opened lines.txt");
//  }
//  else if (file.open("WRITE00.TXT", O_READ)) {
//    PgmPrintln("Opened WRITE00.TXT");    
//  }
//  else{
//    error("file.open");
//  }
//  Serial.println();
//  
//  // copy file to serial port
//  int16_t n;
//  uint8_t buf[7];// nothing special about 7, just a lucky number.
//  while ((n = file.read(buf, sizeof(buf))) > 0) {
//    for (uint8_t i = 0; i < n; i++) Serial.print(buf[i]);
//  }
//  /* easier way
//  int16_t c;
//  while ((c = file.read()) > 0) Serial.print((char)c);
//  */
//  PgmPrintln("\nDone");
//}
