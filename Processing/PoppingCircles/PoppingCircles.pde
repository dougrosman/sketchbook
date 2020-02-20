float y = 0;
int x = 0;
int range;
int fillColor = 0;
int strokeColor = 255;

void setup() {
  
  size(800, 800);
  
  range = height/2;
  
}

void draw() {
  
  rectMode(CENTER);
  
  
  strokeWeight(2);
  stroke(strokeColor);
  fill(fillColor);
  ellipse(x, y, 30, 30);
  
  y = random((width/2)-range, (width/2)+range);
  x+=2;
  range--;
  
  if(x % 4 == 0)
  {
    fillColor++;
    strokeColor--;
  }
  
}