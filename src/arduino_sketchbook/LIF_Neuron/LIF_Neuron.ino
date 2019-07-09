
/*
 * Simulation of leaky integrate-and-fire neuron
 * See: T. Trappenberg, "Fundamentals of Computational Neuroscience", Second Edition, Section 3.1.1 
 *
 * Note that inputs are "active low" in order to avoid external pulldown resistors.
 * Normal and inverted outputs are provided.
 */

//Parameters
const int numInput = 3;
float inverseTimeConstant = 0.1; 
float firingThreshold = 0.7; 
int spikeWidth = 3;

//IO pins
int spikeOutPin = 4;
int spikeInvertedOutPin = 5;
int membraneVoltageOutPin = 6;
int inputPins[] = {A0, A1, A2};


//Time dependent variables
float membraneVoltage = 0.0; 
float summedInputs;
int spikeTimer = 0;

void setup() { 
  Serial.begin(9600);  
  pinMode(spikeOutPin, OUTPUT);
  pinMode(spikeInvertedOutPin, OUTPUT);
  pinMode(membraneVoltageOutPin, OUTPUT);
  for (size_t i = 0; i < numInput; i++) pinMode(inputPins[i], INPUT_PULLUP);  
}

void loop() {
  
  //Sum inputs
  summedInputs = 0;
  for (size_t i = 0; i < numInput; i++) 
    summedInputs += digitalRead(inputPins[i]) == 0 ? 1 : 0; //inverted to avoid pulldowns
  
  //Spike (timer) logic
  if (spikeTimer > 0) 
    spikeTimer--;
  else if (membraneVoltage >= firingThreshold) {
      membraneVoltage = 0;
      spikeTimer = spikeWidth;
  }
  
  //Leaky integration
  membraneVoltage = (1 - inverseTimeConstant) * membraneVoltage + inverseTimeConstant * summedInputs;

  //Spike? 
  digitalWrite(spikeOutPin, spikeTimer > 0 ? HIGH : LOW);
  digitalWrite(spikeInvertedOutPin, spikeTimer > 0 ? LOW : HIGH);
  
  analogWrite(membraneVoltageOutPin, min(255, membraneVoltage / firingThreshold * 255));

  //Look at these with Tools -> Serial Plotter
  Serial.print(summedInputs);
  Serial.print(" ");
  Serial.print(membraneVoltage);
  Serial.print(" ");
  Serial.print(spikeTimer > 0 ? 2 : 0);
  Serial.print(" ");
  Serial.println(firingThreshold);

  delay(20);
}
