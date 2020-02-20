import processing.pdf.*;

float x = 20;
float y = 0;
float w = 0;
float h = 0;
float r = 1;

BSquare b = new BSquare(10);

float size = 80;
float dx = 60;

float dw = .25;
float dh = .25;

void setup()
{
  
  size(1500, 810);
  beginRecord(PDF, "imagesPDF/GenSquaresPDF-01.pdf"); 
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
  r+=1.25;
  
  // Draw inner triangle
  //stroke(255, 210, 240, str);
  stroke(0);
  strokeWeight(1);
  b.drawBSquare(w*size);
  //rect(0, 0, w*size, w*size);
  
  
  popMatrix();
  
  x+=dx;    
  w+=dw;
  h+=dh;
  
  //strInner-=.125;
  //strOuter+=.125;
  
  // Deal with drawing bug at the tail end
  if(w < 0)
  {
    w = 0;
    h = 0;
    dw = 0;
    dh = 0;
  }
  
  // At the halfway point, decrement square size
  if(x > (width/2) - 20)
  {
    dw = -.25;
    dh = -.25;
  }
  
  //saveFrame("saveframes3/GenSquares-####.png");
  
  // Stop the program when finished drawing
  if(x > width+w)
  {
    endRecord();
    exit();
  }
}
