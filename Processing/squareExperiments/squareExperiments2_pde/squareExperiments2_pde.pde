float rectWidth = 2;
float rectHeight = 2;
boolean startDrawing = false;
float angle;

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
  rectMode(CENTER);
  
  rectColor = colors[(int)random(0, 8)];
  
  //r = (int)random(100, 255);
  //g = (int)random(100, 255);
  //b = (int)random(100, 255);
}

void draw()
{
  rectMode(CENTER);
  noStroke();
  
  
  
  strokeWeight(1);
  fill(rectColor, 1);
  stroke(rectColor, 50);
  
  
  if(startDrawing)
  {
    angle = angle + radians(1);
    float c = cos(angle);
    translate(mouseX, mouseY);
    rotate(c);
    
    //rect(mouseX, mouseY, rectWidth, rectHeight);
    rectWidth*=1.005;
    rectHeight*=1.005;
    ellipse(0, 0, rectWidth, rectHeight);
    
  }
  
  if(rectWidth > width/4)
  {
    
    startDrawing = false;
    rectColor = colors[(int)random(0, 8)];
    rectWidth = 2;
    rectHeight = 2;
  }
  
  if(mousePressed)
  {
    startDrawing = true;    
  }
  
  
}

void keyPressed()
{
  background(255);
}