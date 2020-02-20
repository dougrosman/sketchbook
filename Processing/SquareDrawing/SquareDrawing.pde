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
  beginRecord(PDF, "imagesPDF/GenSquaresPDF-0010.pdf"); 
  background(255);
}
void draw()
{
  //smooth();
  noFill();
  //fill(255);
  //stroke(random(255), random(255), random(255));
  stroke(red, green, blue, 50);
  rectMode(CENTER);
  
  pushMatrix();
  translate(x, height/2);
  rotate(radians(r));
  r+=.3;
  rect(0, 0, w, h);
  popMatrix();
  
  x+=1;    
  w+=.25;
  h+=.25;
  
  red-=.125;
  green-=.125;
  blue+=.25;
  
  if(x > width+w)
  {
    //saveFrame("images/GenSquares-####.png");
    endRecord();
    exit();
  }
}