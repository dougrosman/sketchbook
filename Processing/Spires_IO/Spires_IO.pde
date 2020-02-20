import processing.pdf.*;

float x = 40;
float y = 0;
float w = 0;
float h = 0;
float r = 1;

float dx = 10;
float dw = 5;
float dh = 5;

float strInner = 255;
float strOuter = 0;
float str = 0;
float red = 255;
float green = 150;
float blue = 0;

void setup()
{
  
  size(320, 600);
  beginRecord(PDF, "imagesPDF/GenSquaresPDF-0000.pdf"); 
  background(255);
}
void draw()
{
  noFill();
  //stroke(red, green, blue, 50);

  rectMode(CENTER);
  
  pushMatrix();
  translate(x, height/2);
  rotate(radians(r));
  r+=3;
  
  // Draw inner triangle
  //stroke(255, 210, 240, str);
  //stroke(0, str/2);
  stroke(0);
  
  if(w == 0)
  {
    strokeWeight(0);
  }
  else
  {
  strokeWeight(1);
  }
  
  if(x < width -5)
  {
    
    rect(0, 0, w, h);
  }
  
  //// Draw outer triangle
  ////stroke(190, 220, 250, str/4);
  //stroke(0, str/4);
  //strokeWeight(1);
  //rect(0, 0, w*2, h*2);
  
  //// Draw outer triangle 2
  ////stroke(190, 220, 250, str/4);
  //stroke(0, str/8);
  //strokeWeight(1);
  //rect(0, 0, w*3, h*3);
  
  popMatrix();
  
  x+=dx;    
  w+=dw;
  h+=dh;
  str+=.0425;
  
  //strInner-=.125;
  //strOuter+=.125;
  
  // Deal with drawing bug at the tail end
  if(w < 0)
  {
    w = 0;
    h = 0;
    dw = 0;
    dh = 0;
    strInner = 0;
    strOuter = 0;
    str = 0;
  }
  
  // At the halfway point, decrement square size
  if(x > (width/2) )
  {
    dw = -5;
    dh = -5;
  }
  
  
  
  //saveFrame("saveframes3/GenSquares-####.png");
  
  // Stop the program when finished drawing
  if(x > width+w)
  {
    endRecord();
    exit();
  }
}
