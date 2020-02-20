int w = 50;
int h = 50;

int dw = -1;
int dh = -1;

void setup()
{
 fullScreen();
 background(0);
}

void draw()
{
  fill(255);
  stroke(0);
  ellipse(mouseX, mouseY, w, h);
  
  if(w < 2)
  {
    dw = 1;
  }
}