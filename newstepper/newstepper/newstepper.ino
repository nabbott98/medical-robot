#include <Stepper.h>
int stepsPerRevolution=200;
Stepper motorX(stepsPerRevolution, 2, 3, 4, 5);
Stepper motorY(stepsPerRevolution, 6, 7, 8, 9);
Stepper motorZ(stepsPerRevolution, 10, 11, 12, 13);

String readString; //main captured String
String smotorNum; //data String
String sdir;
String srequiredSteps;

int motorNum; //data String
int dir;
int requiredSteps;

int ind1; // , locations
int ind2;
int ind3;
 
void setup() {
  Serial.begin(9600);
  pinMode(9, OUTPUT);
  pinMode(10, OUTPUT);
  pinMode(11, OUTPUT);
  pinMode(13,OUTPUT);

  //Serial.println('a'); char a = 'b'; while (a != 'a'){a = Serial.read();}
  motorX.setSpeed(30); motorY.setSpeed(60); motorZ.setSpeed(30);
  
}

void loop() {
  if (Serial.available())  {
    char c = Serial.read();  //gets one byte from serial buffer
    if (c == '*') {
      //do stuff
     
      Serial.println();
      Serial.print("captured String is : ");
      Serial.println(readString); //prints string to serial port out
     
      ind1 = readString.indexOf(',');  //finds location of first ,
      smotorNum = readString.substring(0, ind1);   //captures first data String
      ind2 = readString.indexOf(',', ind1+1 );   //finds location of second ,
      sdir = readString.substring(ind1+1, ind2+1);   //captures second data String
      ind3 = readString.indexOf(',', ind2+1 );
      srequiredSteps = readString.substring(ind2+1);

      motorNum=smotorNum.toInt(); dir=sdir.toInt(); requiredSteps=srequiredSteps.toInt(); 

      
     
      readString=""; smotorNum=""; sdir=""; srequiredSteps=""; //clears variable for new input

      switch(motorNum) {
      case 1: 
        //led(requiredSteps,9,dir);
        spin_motor(motorX, requiredSteps, dir);
        Serial.print("motorNum = ");        Serial.println(motorNum);
        Serial.print("dir = ");             Serial.println(dir);
        Serial.print("requiredSteps = ");   Serial.println(requiredSteps);
        Serial.println(); Serial.println();
        break;
      case 2:
       //led(requiredSteps,10,dir);
        spin_motor(motorY, requiredSteps, dir);
        Serial.print("motorNum = ");        Serial.println(motorNum);
        Serial.print("dir = ");             Serial.println(dir);
        Serial.print("requiredSteps = ");   Serial.println(requiredSteps);
        Serial.println(); Serial.println();
        break;
      case 3:
       //led(requiredSteps,11,dir);
        spin_motor(motorZ, requiredSteps, dir);
        delay(3000);
        if(dir==1){
          dir=2;
        }else{dir=1;
        }
        //led(requiredSteps,11,dir);
        spin_motor(motorZ, requiredSteps, dir);
        Serial.print("motorNum = ");        Serial.println(motorNum);
        Serial.print("dir = ");             Serial.println(dir);
        Serial.print("requiredSteps = ");   Serial.println(requiredSteps);
        Serial.println(); Serial.println();
        break;
      Serial.println(requiredSteps);
      delay(500);
      digitalWrite(LED_BUILTIN, LOW); 
      } 
    }else {     
      readString += c; //makes the string readString
    }
  }
}


void spin_motor(Stepper mot, int requiredSteps, short dir) {
  if (dir == 1)
    mot.step(requiredSteps);   
  if (dir == 2)
    mot.step(-(requiredSteps));
}

//void led(int requiredSteps,int pin,int dir){
  //if(dir==1){
        //analogWrite(pin, 1023);
        //digitalWrite(13,HIGH);
      //}else{
        //analogWrite(pin, 800);
        //digitalWrite(13,HIGH);
      //}
      //delay((requiredSteps * 60/(200 * 30))*1000);
      //analogWrite(pin,0);
      //digitalWrite(13,LOW);
//}
