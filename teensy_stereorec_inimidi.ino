#include <Audio.h>
#include <Wire.h>
#include <SPI.h>
#include <SD.h>
#include <SerialFlash.h>

#include <TimeLib.h>

// GUItool: begin automatically generated code
AudioInputI2S            i2s2;           //xy=484.6000061035156,295
AudioAnalyzePeak         peak2;          //xy=669.1999969482422,350.1999969482422
AudioRecordQueue         queue1;         //xy=672.5999755859375,182
AudioAnalyzePeak         peak1;          //xy=675.5999755859375,227
AudioPlaySdRaw           playRaw1;       //xy=681.6000061035156,389
AudioRecordQueue         queue2;         //xy=698.1999969482422,307.1999969482422
AudioOutputI2S           i2s1;           //xy=849.6000061035156,352
AudioConnection          patchCord1(i2s2, 0, queue1, 0);
AudioConnection          patchCord2(i2s2, 0, peak1, 0);
AudioConnection          patchCord3(i2s2, 1, queue2, 0);
AudioConnection          patchCord4(i2s2, 1, peak2, 0);
AudioConnection          patchCord5(playRaw1, 0, i2s1, 0);
AudioConnection          patchCord6(playRaw1, 0, i2s1, 1);
// GUItool: end automatically generated code

AudioControlSGTL5000     sgtl5000_1;     //xy=265,212


// which input on the audio shield will be used?
const int myInput = AUDIO_INPUT_LINEIN;
//const int myInput = AUDIO_INPUT_MIC;


// Use these with the Teensy Audio Shield
#define SDCARD_CS_PIN    10
#define SDCARD_MOSI_PIN  7
#define SDCARD_SCK_PIN   14

// Use these with the Teensy 3.5 & 3.6 SD card
//#define SDCARD_CS_PIN    BUILTIN_SDCARD // 254?
//#define SDCARD_MOSI_PIN  11  // not actually used
//#define SDCARD_SCK_PIN   13  // not actually used

// Remember which mode we're doing
int mode = 1;  // 0=stopped, 1=recording, 2=playing
int startTime;
//int recLength=300000;
//int pauseLength=3600000;
int recordLength=300; // in seconds
int pauseLength=3600000; // in milliseconds

// The file where data is recorded
File frec;

char makePath(int year, int month, int day, int hour, int min, int sec) {
  static char wavname[18] = {'\0'};
  snprintf(wavname, sizeof(wavname), "%d%d%d%d%d%d.WAV", year, month, day, hour, min, sec);
  return wavname;
}

void setup() {
  setSyncProvider(getTeensy3Time); // Sync the time
  // Set callback
  FsDateTime::setCallback(dateTime);
  // record queue uses this memory to buffer incoming audio.
  AudioMemory(120); // 60

  // Enable the audio shield, select input, and enable output
  sgtl5000_1.enable();
  sgtl5000_1.inputSelect(myInput);
  sgtl5000_1.volume(0.5);



  // Initialize the SD card
  SPI.setMOSI(SDCARD_MOSI_PIN);
  SPI.setSCK(SDCARD_SCK_PIN);
  if (!(SD.begin(SDCARD_CS_PIN))) {
    // stop here if no SD card, but print a message
    while (1) {
      Serial.println("Unable to access the SD card");
      delay(500);
    }
  }

  startRecording();
}


void loop() {
  if (now()-startTime > recordLength && mode == 1) {
    stopRecording();
    delay(pauseLength);
    Serial.println("Starting Again...:");
    startRecording();
  }
  else {
    if (mode == 1) continueRecording();
  }
}

// Sets current program time from RTC
time_t getTeensy3Time(){
  return Teensy3Clock.get();
}
// Call back for file timestamps.  Only called for file create and sync().
void dateTime(uint16_t* date, uint16_t* time, uint8_t* ms10) {

  // Return date using FS_DATE macro to format fields.
  *date = FS_DATE(year(), month(), day());

  // Return time using FS_TIME macro to format fields.
  *time = FS_TIME(hour(), minute(), second());

  // Return low time bits in units of 10 ms.
  *ms10 = second() & 1 ? 100 : 0;
}

void startRecording() {

  startTime=now();
  static char fileName[18]= {'\0'};
  snprintf(fileName, sizeof(fileName), "%d%d%d%d%d%d.RAW", year(), month(), day(), hour(), minute(), second());
  
  Serial.print("fileName: ");
  Serial.println(fileName);
  
  
  Serial.println("StartRecording");
  if (SD.exists(fileName)) {
    SD.remove(fileName);
  }
  frec = SD.open(fileName, FILE_WRITE);
  if (frec) {
    Serial.println("File Open");
    queue1.begin();
    queue2.begin();
    mode = 1;
  }

}

void continueRecording() {
  if (queue1.available() >= 2 && queue2.available() >= 2) {
    byte buffer[512];
    byte bufferL[256];
    byte bufferR[256];
    memcpy(bufferL, queue1.readBuffer(), 256);
    memcpy(bufferR, queue2.readBuffer(), 256);
    queue1.freeBuffer();
    queue2.freeBuffer();
    for (int i = 0; i < 512; i += 4) {
      buffer[i] = bufferL[i];
      buffer[i + 1] = bufferL[i + 1];
      buffer[i + 2] = bufferR[i];
      buffer[i + 3] = bufferR[i + 1];
    }
    elapsedMicros usec = 0;
    frec.write(buffer, 256);  //256 or 512 (dudes code)
    Serial.print("SD write, us=");
    Serial.println(usec);
  }
}

void stopRecording() {
  Serial.println("StopRecording");
  queue1.end();
  queue2.end();
  // flush buffer
  while (queue1.available() > 0 && queue2.available() > 0) {
    queue1.readBuffer();
    queue1.freeBuffer();
    queue2.readBuffer();
    queue2.freeBuffer();
  }
  frec.close(); // close file
  
  mode = 4;
}
