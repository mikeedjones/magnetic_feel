#include <Adafruit_HMC5883_U.h>
#include <Adafruit_Sensor.h>
#include <SimpleTimerMAH.h>
#include "avr/interrupt.h";

int buzzerPin = 1;
int buttonPin = 4;
int direct=HIGH;
float offsetx=0;
float offsety=0;
float offsetz=0;
volatile bool switched = false;
float absB;
float scaleBabs=0.149;
float scaleBdir=0.258;
int presslen=2000;
int halfpress=500;
SimpleTimer presstime(presslen);
SimpleTimer hp_time(halfpress);

/* Assign a unique ID to this sensor at the same time */
Adafruit_HMC5883_Unified mag = Adafruit_HMC5883_Unified(5664);

void setup(void) {

  GIMSK = 0b00100000;    // turns on pin change interrupts
  PCMSK = 0b00010000;    // turn on interrupts on pin PB4
  sei();
  pinMode(buzzerPin, OUTPUT);
  
  /* Initialise the sensor*/
  if(!mag.begin())
  {
    /* There was a problem detecting the HMC5883 ... check your connections */
    analogWrite(buzzerPin,255);
  }

  mag.setMagGain(HMC5883_MAGGAIN_8_1);
  
  /* Display some basic information on this sensor */
}
void one_direction(void){
  analogWrite(buzzerPin,0);
  delay(250);
  analogWrite(buzzerPin,255);
  delay(250);
}

void absolute(void){
  analogWrite(buzzerPin,0);
  delay(250);
  analogWrite(buzzerPin,255);
  delay(250);
  analogWrite(buzzerPin,0);
  delay(250);
  analogWrite(buzzerPin,255);
  delay(250);
 }

void loop(void) 
{
  /* Get a new sensor event */ 
  sensors_event_t event; 
  mag.getEvent(&event);

  if(digitalRead(buttonPin)==HIGH && hp_time.timeout()==true && presstime.timedOut()==false && switched==false){
      direct=!direct;
      switched=true;
      if(direct==HIGH){absolute();}
      if(direct==LOW){one_direction();}
    }
    
  if(digitalRead(buttonPin)==HIGH && presstime.timedOut()==true && switched==false){
      offsetx=event.magnetic.x;
      offsety=event.magnetic.y;
      offsetz=event.magnetic.z;
      switched=true;
      absolute();
      one_direction();
      
    }
 
  /* measures the B feild and scales it to between 0 and 255  */
  if(direct==HIGH){  
    absB=sqrt(sq(event.magnetic.x-offsetx)+sq(event.magnetic.y-offsety)+sq(event.magnetic.z-offsetz));//*scaleBabs;
  }
  
  if(direct==LOW){  
    absB=constrain(event.magnetic.x-offsetx,0,800);//*scaleBdir;
  }
  
  analogWrite(buzzerPin,int(absB));

}

ISR(PCINT0_vect){

  
  if (digitalRead(buttonPin)==LOW){return;}

  presstime.reset();
  hp_time.reset();

  switched=false;
  
}


