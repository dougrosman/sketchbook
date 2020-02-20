float rectWidth = 2;
float rectHeight = 2;

int r;
int g;
int b;

color rectColor;

color[] colors = {color(227, 25, 25), color(35, 185, 255), color(255, 246, 9),
                  color(84, 220, 73), color(241, 40, 177), color(255, 144, 45),
                  color(45, 255, 164), color(188, 64, 245), color(37, 52, 250)};

void setup()
{
  size(1440, 900);
  background(255);
  frameRate(60);
  
  rectColor = colors[(int)random(0, 8)];
  
  //r = (int)random(100, 255);
  //g = (int)random(100, 255);
  //b = (int)random(100, 255);
}

void draw()
{
  rectMode(CENTER);
  noStroke();
  
  rectMode(CENTER);
  //stroke(r, g, b, 25);
  
  strokeWeight(1);
  //fill(r, g, b, 2);
  fill(rectColor, 1);
  stroke(rectColor, 20);
  
  rect(mouseX, mouseY, rectWidth, rectHeight);
  
  rectWidth*=1.01;
  rectHeight*=1.01;
  
  if(rectWidth > width/16)
  {
    //r = (int)random(100, 200);
    //g = (int)random(100, 200);
    //b = (int)random(100, 200);
    
    rectColor = colors[(int)random(0, 8)];
    
    rectWidth = 2;
    rectHeight = 2;
  }
  
  if(mousePressed)
  {
    //r = (int)random(100, 200);
    //g = (int)random(100, 200);
    //b = (int)random(100, 200);
    
    rectColor = colors[(int)random(0, 8)];
    
    background(255);
    rectWidth = 2;
    rectHeight = 2;
  }
}