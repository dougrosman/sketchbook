import processing.pdf.*;

float x = 0;
float y = 0;
float w = 2;
float h = 2;
float r = 1;

float red = 255;
float green = 150;
float blue = 0;

void setup()
{
  size(800, 400);
  beginRecord(PDF, "imagesPDF/GenSquaresPDF-0014.pdf"); 
  background(255);
}
void draw()
{
  noFill();
  stroke(0);
  rectMode(CENTER);
  pushMatrix();
  translate(x, height/2);
  rotate(radians(r));
  rect(0, 0, w, h);
  popMatrix();
  r+=.3;
  x+=1.5;    
  w+=.6;
  h+=.6;
  
  if(x > width)
  {
    endRecord();
    exit();
  }
}