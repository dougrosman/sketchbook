void setup() {
  
  size(1000, 1000, P3D);
  pixelDensity(2);
  //noFill();
  rectMode(CENTER);
}

void draw() {
  float frames = frameCount;
  
  
  background(map(sin(frames/100.), -1, 1, 0, 255));
  push();
    fill(0, 500-frames);
    text("Move your mouse or trackpad horizontally", 30, 30);
  pop();
  

  strokeWeight(3);
  pushMatrix();
  translate(width/2, height/2, 0);
  
  float spacing = map(mouseX, 0, width, 10, 400);
  
  for(int i = 10; i < width-20; i+=spacing)
  {
    pushMatrix();
    
    rotateX(radians(map((frames/800.), -1, 1, 0, 360)));
      float zMap = map(i, 0, width, 7.5, 1);
      float transZMax = zMap*zMap*zMap;
      translate(0, 0, map(sin(frames/105.), -1, 1, transZMax, -transZMax));
      scale(.45);
      stroke(map(sin(frames/100.), -1, 1, 255, 0), map(i, 10, width-50, 255, 0));
      
      fill(map(i, 2, width-100, 255, 0), map(cos(frames/200.), -1, 1, 0, 255), map(sin(frames/100.), -1, 1, 0, 255), map(i, 2, width-140, 200, 10));
      ellipse(0, 0, i, i);
    popMatrix();
  }
  popMatrix();
 // fill(255, 0, 0);
 // text(frameRate, 20, 20);
}
