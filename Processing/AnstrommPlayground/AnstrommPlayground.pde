  
import processing.sound.*;

SoundFile file;

FFT fft;
int bands = 512;
float[] spectrum = new float[bands];

void setup() {
  size(1024, 600);
  background(255);
  //frameRate(15);
    
  // Create an Input stream which is routed into the Amplitude analyzer
  fft = new FFT(this, bands);
  file = new SoundFile(this, "anstrommfeck4.aiff");
  
  // start the Audio Input
  file.loop();
  
  // patch the AudioIn
  fft.input(file);
}      

void draw() { 
  background(255);
  file.rate(map(mouseX, 0, width, 0.01, 2.0));
  fft.analyze(spectrum);
  //noStroke();

  for(int i = 0; i < bands; i+=8){
  // The result of the FFT is normalized
  // draw the line for frequency band i scaling it up by 5 to get more amplitude.
  //line( i, height, i, height - spectrum[i]*height*100 );
  stroke(i/4);
  fill(bands-i, i/2, i/2);
  rect( i*2, height, 16, -spectrum[i/2]*height*20);
  } 
}