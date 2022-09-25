#include <Mouse.h>
#include <Keyboard.h>

int yPin = A0;
int xPin = A1;

int ShiftButtonPin = 7;
int RightButtonPin = 8;
int LeftButtonPin = 9;

const int adjust = 150;

const int adjustShift = 150;

int yPos,xPos;
int yIniPos,xIniPos;

int ShiftPos = 0;
int RPos = 0;

int SbuttonState,LbuttonState,RbuttonState;

long long Xcnt = 0,Ycnt = 0;;

void setup() {
  //Serial.begin(9600);
  Mouse.begin();
  Keyboard.begin();
  
  pinMode(yPin, INPUT);
  pinMode(xPin, INPUT);
  pinMode(ShiftButtonPin, INPUT);
  pinMode(LeftButtonPin, INPUT);
  pinMode(RightButtonPin, INPUT);
  
  delay(1000);

  yIniPos = analogRead(yPin);
  xIniPos = analogRead(xPin);
  
  for(int i = 0; i < 100; i++){
    yIniPos = (yIniPos + analogRead(yPin)) /2;
    xIniPos = (xIniPos + analogRead(xPin)) /2;
  }
}
 
void loop() {
  yPos = analogRead(yPin) - yIniPos;
  xPos = analogRead(xPin) - xIniPos;

  
  SbuttonState = digitalRead(ShiftButtonPin);
  LbuttonState = digitalRead(LeftButtonPin);
  RbuttonState = digitalRead(RightButtonPin);

  if (SbuttonState == LOW) {
     ShiftPos = 1;
  }else{
     ShiftPos = 0;
  }
  
  if (yPos != 0) {
    if(ShiftPos == 1){
      Mouse.move(0, 0,-yPos / adjustShift);
      delay(50);
    }
    else{
      if( 60 < abs(yPos) && abs(yPos) < adjust){
        Ycnt++;
        if(Ycnt > 50  || RbuttonState == LOW){
          Ycnt = 0;
          Mouse.move(0, (yPos > 0)?1 : -1, 0);
        }
      }else{
        Ycnt++;
        if(Ycnt > 6  || RbuttonState == LOW){
          Ycnt = 0;
          Mouse.move(0, yPos / adjust  , 0);
        }
      }
    }
  }else{
    Ycnt = 0;
  }

  if (xPos != 0) {
    if(ShiftPos == 1){
      Mouse.move(0, 0,-xPos / adjustShift);
      delay(50);
    }
    else{ 
      if( 60 < abs(xPos) && abs(xPos) < adjust){
        Xcnt++;
        if( Xcnt > 50 || RbuttonState == LOW){
          Xcnt = 0;
          Mouse.move((xPos > 0)?1 : -1,0, 0);
        }
      }else{
        Xcnt++;
        if( Xcnt > 6 || RbuttonState == LOW){
          Xcnt = 0;
          Mouse.move(xPos / adjust , 0, 0);
        }
      }
    }
  }else{
    Xcnt = 0;
  }

  if(abs(xPos) > 100 || abs(yPos) > 100){
    RPos = 2;
  }
  
  delay(1);

  //Serial.println(yPos);

  if(ShiftPos == 1){
    if (LbuttonState == LOW) {
      Keyboard.press(KEY_LEFT_ALT);
      Keyboard.press(KEY_LEFT_ARROW);
      delay(100);
      Keyboard.releaseAll();
    }

    if (RbuttonState == LOW) {
      Keyboard.press(KEY_LEFT_ALT);
      Keyboard.press(KEY_RIGHT_ARROW);
      delay(100);
      Keyboard.releaseAll();
    }
  }else{
    if (LbuttonState == LOW) {
      if(!Mouse.isPressed(MOUSE_LEFT)){
        Mouse.press(MOUSE_LEFT);
      }
    }else if(Mouse.isPressed(MOUSE_LEFT)){
       Mouse.release(MOUSE_LEFT);
    }

    /*
    if (RbuttonState == LOW) {
      if(!Mouse.isPressed(MOUSE_RIGHT)){
        Mouse.press(MOUSE_RIGHT);
      }
    }else if(Mouse.isPressed(MOUSE_RIGHT)){
      Mouse.release(MOUSE_RIGHT);
    }
    */
    if (RbuttonState == LOW) {
      if(RPos == 0)RPos = 1;
    }else{
      if(RPos == 1){
        RPos = 0;
        Mouse.press(MOUSE_RIGHT);
        Mouse.release(MOUSE_RIGHT);
      }else if(RPos == 2){
        RPos = 0;
      }
    }
    
  }
}
