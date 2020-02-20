//import processing.pdf.*;

float x = 0;
float y = 0;
float descendAmount = random(.9, 2.1);
float w = 2;
float h = 2;
float r = 0;
float s = 0;
float t = 0;
float str = 255;
float turnAmount = random(0.1, 0.5);
color randColor = color(random(255), random(255), random(255));

float red = 255;
float green = 150;
float blue = 0;

void setup()
{
  //size(800, 800);
  fullScreen();
  //beginRecord(PDF, "imagesPDF/GenSquaresPDF-0013.pdf"); 
  background(255);
}
void draw()
{
  noFill();
  stroke(randColor, str);
  rectMode(CENTER);
  
  ////top squares
  //pushMatrix();
  //translate(x, height/4);
  //rotate(radians(r));
  //rect(0, 0, w, h);
  //popMatrix();
  
  //middles squares
  pushMatrix();
  translate(width/2, y + 100);
  rotate(radians(s));
  rect(0, 0, w, h);
  popMatrix();
  
  ////bottom squares
  //pushMatrix();
  //translate(x, 3*height/4);
  //rotate(radians(t));
  //rect(0, 0, w, h);
  //popMatrix();
  
  r+=.1;
  s+=turnAmount;
  t+=2;
  
  y+=descendAmount;
  
  w+=.08;
  h+=.08;
  str-=.25;
  
  if(y > height - 300)
  {
    background(255);
    //endRecord();
    y = 0;
    w = 0;
    h = 0;
    str = 255;
    turnAmount = random(0.1, 0.6);
    descendAmount = random(.9, 2.1);
    randColor = color(random(255), random(255), random(255)); 
    //exit();
  }
  
  println("t: " + turnAmount);
  println("d: " + descendAmount);
}