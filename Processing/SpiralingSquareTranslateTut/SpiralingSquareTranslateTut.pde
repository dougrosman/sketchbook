int i = 0;
int x;
int XSIZE;
int hueTop;
int hueBottom;

void setup()
{
  size(1080, 1080);
  background(255);
  rectMode(CENTER);
  colorMode(HSB, 255);
  pixelDensity(2);
  strokeWeight(.75);
  
  XSIZE=width/2;
  
  x=XSIZE;
}

void draw()
{
  smooth();
  //fill(192, 10);
  stroke(0, 0, 255);
  //noStroke();
  //rect(200, 200, 40, 40);

  pushMatrix();
  translate(width/2, height/2);
  rotate(radians(i));
  i+=59;
  //fill(random(255), random(255), random(255));
  
  if(newColor) {
    float hueTop = random(60, 255);
    float hueBot = hueTop-60;
    newColor=!newColor;
  }
  
  float hue = map(x, XSIZE, 0, hueTop, hueBot);
  float sat = map(x, XSIZE, 0, 255, 0);
  float bri = map(x, XSIZE, 0, 255, 200);
  
  fill(hue, sat, bri);
  
  if(x > 0)
  {
    rect(0, 0, x, x);
    x--;
  } else {
    x = 0;
  }
  
  popMatrix();
}
