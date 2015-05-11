import processing.serial.*;

import cc.arduino.*;

Arduino arduino;

color off = color(4, 79, 111);
color on = color(84, 145, 158);

void setup() {
  size(470, 280);
  arduino = new Arduino(this, Arduino.list()[0], 57600);
  
  for (int i = 0; i <= 13; i++)
    arduino.pinMode(i, Arduino.INPUT);
}

void draw() {
  background(255);
  noStroke();
  
  float val=arduino.analogRead(0);
  float siz =map(val,800, 200, 0,200);
  float col=map(val, 800, 200, 0, 255);
  col=constrain(col, 0,255);

  
  float val2=arduino.analogRead(1);
  float siz2 =map(val2,800, 200, 0,200);
  float col2=map(val2, 800, 200, 0, 255);
  col2=constrain(col2, 0,255);
  
  
  fill(col,127,255);
  ellipse(width/4,height/2,siz,siz);
  
  fill(255,col2,127);
  ellipse((width/4)*3,height/2,siz2,siz2);
  
  
}
