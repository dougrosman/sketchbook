import processing.pdf.*;

float x = 20;
float y = 0;
float w = 0;
float h = 0;
float r = 1;
float rotVal = 1;

boolean shouldRecord = true;

int fileNum = 0;

float strInner = 255;
float strOuter = 0;
float str = 0;
float redSq = 0;
float greenSq = 0;
float blueSq = 0;
float redBg = 255;
float greenBg = 255;
float blueBg = 255;

float dx = 20;
float size = 10;
float dw = size;
float dh = size;
void setup()
{
  size(1350, 810);
  background(redBg, greenBg, blueBg);
}
void draw()
{
  if(shouldRecord)
  {
    beginRecord(PDF, "imagesPDF/BC02/BC-Spire_" + fileNum + ".pdf");
    fill(redBg, greenBg, blueBg);
    noStroke();
    rect(0, 0, width*2, height*2);
    shouldRecord = false;
  }
  noFill();
  //stroke(red, green, blue, 50);

  rectMode(CENTER);
  
  pushMatrix();
  translate(x, height/2);
  rotate(radians(r));
  r+=rotVal;
  
  // Draw inner rect
  //stroke(255, 210, 240, str);
  stroke(redSq, greenSq, blueSq);
  strokeWeight(3);
  rect(0, 0, w, h);
  
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
  if(x > (width/2) - 20)
  {
    dw = -size;
    dh = -size;
  }
  
  //saveFrame("saveframes3/GenSquares-####.png");
  
  // Stop the program when finished drawing
  if(x > width+w)
  {
    endRecord();
    x = 20;
    y = 0;
    w = 0;
    h = 0;
    r = 1;
    rotVal = random(.1, 3);
    shouldRecord = true;
    fileNum++;
    size = random(2, 22);
    dw = size;
    dh = size;
    dx = 2*size;
    redBg = random(255);
    greenBg = random(255);
    blueBg = random(255);
    
    redSq = random(255);
    greenSq = random(255);
    blueSq = random(255); 
  }
}
