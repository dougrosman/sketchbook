void setup()
{
  size(800, 800);
  background(20);
  rectMode(CENTER);
}

void draw()
{
  float x = width;
  float y = height;
  float size = 200;
  
  stroke(0, 255, 0);
  strokeWeight(1);
  line(0, y/2, x, y/2);
  line(x/2, 0, x/2, y);
  
  
  
  
  pushMatrix();
  translate(x/2, y/2);
  pushStyle();
  fill(255, 0, 0);
  noStroke();
  
  // left line
  rect(-size, 0, 1, size*1.75);
  
  // top line
  rect(0, -size, size*1.75, 1);
  
  // right line
  rect(size, 0, 1, size*1.75);
  
  // bottom line
  rect(0, size, size*1.75, 1);
  popStyle();
  
  popMatrix();
}
