import processing.pdf.*;

float x = 0;
float y = 0;
float w = 2;
float h = 2;
float r = 0;
float s = 0;
float t = 0;
float str = 0;

float red = 255;
float green = 150;
float blue = 0;

void setup()
{
  //size(800, 800);
  fullScreen();
  beginRecord(PDF, "imagesPDF/GenSquaresPDF-0013.pdf"); 
  background(255);
}
void draw()
{
  noFill();
  stroke(20, 255, 150, str);
  rectMode(CENTER);
  
  //top squares
  pushMatrix();
  translate(x, height/4);
  rotate(radians(r));
  rect(0, 0, w, h);
  popMatrix();
  
  //middles squares
  pushMatrix();
  translate(x, height/2);
  rotate(radians(s));
  rect(0, 0, w, h);
  popMatrix();
  
  //bottom squares
  pushMatrix();
  translate(x, 3*height/4);
  rotate(radians(t));
  rect(0, 0, w, h);
  popMatrix();
  
  r+=.1;
  s+=.2;
  t+=2;
  x+=1;    
  w+=.08;
  h+=.08;
  str+=.125;
  
  if(x > width + 60)
  {
    endRecord();
    exit();
  }
}