int i = 0;


void setup(){
  
  size(800, 800);
  
  
  
  
}

void draw(){
  
  smooth();
  strokeWeight(1);
  noFill();
  int time = millis();
  fill(0, 1);
  
  
    pushMatrix();
    translate(width/2, height/2);
    ellipse(sin(i)*width/4.1, cos(i)*height/40, 200, 200);
    popMatrix();
    i++;
    
    if(i > 48)
    {
      i = 0;
    }
  
}