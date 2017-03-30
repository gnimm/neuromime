#define BITS_IN_BYTE 8
#define TONE_DURATION 77
#define FREQ_MIN 20
#define FREQ_MAX 150

byte b;
byte bPrev;
const long interval = 10;
unsigned long previousMillis = 0;
int tonePin = 12;
int ledPin = 13;

//8 pins to sample 1 byte
int byte1Pins[]={3,4,5,6,7,8,9,10};

void setup() {                
  for (int i = 0; i < BITS_IN_BYTE; i++)
    pinMode(byte1Pins[i], INPUT);
  pinMode(ledPin, OUTPUT); 
  Serial.begin(9600);
}

void loop() {
  unsigned long currentMillis = millis();
  if (currentMillis - previousMillis >= interval) {
    previousMillis = currentMillis;
    
    //sample byte and store in b
    b = 0;
    for (int i = 0; i < BITS_IN_BYTE; i++)
      if(digitalRead(byte1Pins[i])) b |= 1 << i;
      else b &= ~(1 << i);

    //I recently found bitWrite() and bitRead() helper functions.
    //This code could be simplified / made  more user friendly.
    //For example, alternative sample byte code:
    //for (int i = 0; i < BITS_IN_BYTE; i++)
    //   bitWrite(b,i, digitalRead(byte1Pins[i]));
    
    //map byte (0-255) to freq range and play tone
    if (b>0 && b != bPrev){
      printBits(b);
      Serial.print(" Setting tone: ");
      Serial.println(map(b,0,255,FREQ_MIN,FREQ_MAX));
      tone(tonePin, map(b,0,255,FREQ_MIN,FREQ_MAX),TONE_DURATION);
      bPrev = b;
    }

    //toggle led
    digitalWrite(ledPin, !digitalRead(ledPin));
  }
}

void printBits(byte myByte){
  for(byte mask = 0x80; mask; mask >>= 1)
    if(mask  & myByte) Serial.print('1');
    else Serial.print('0');
  Serial.println(" ");
}







