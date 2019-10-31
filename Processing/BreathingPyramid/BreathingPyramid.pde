void setup() {
  
  size(1000, 1000, P3D);
  pixelDensity(2);
  //noFill();
  rectMode(CENTER);
}

void draw() {
  float frames = frameCount;
  
  background(255);
  
  strokeWeight(.5);
  pushMatrix();
  
  translate(width/2, height/2, 0);
  for(int i = 0; i < width-100; i+=10)
  {
    pushMatrix();
    rotateX(radians(mouseY)/2);
      float zMap = map(i, 0, width, 7, 1);
      float transZMax = zMap*zMap*zMap;
      translate(0, 0, map(sin(frames/100.), -1, 1, transZMax, -transZMax));
      scale(.55);
      
      stroke(0, 127);
      //noStroke();
      noFill();
      //fill(map(i, 2, width-100, 255, 0), map(cos(frames/200.), -1, 1, 0, 255), map(sin(frames/100.), -1, 1, 0, 255), map(i, 2, width-140, 200, 10));
      rect(0, 0, i, i);
      
    popMatrix();
    
  }
  popMatrix();
}
