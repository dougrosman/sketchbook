
let particles = [];
var numParticles = 4.0;

function setup() {
  createCanvas(700, 700);
  background(0);
  colorMode(HSB, 100);
  noStroke();
  
  // fill up an array of particles
  for(let i = 0; i < numParticles; i++) {
    
    let p = new Particle();
    particles.push(p);
  }
 
  console.log(particles.length);
  //noFill();
  strokeWeight(0.25);
}

function draw() {
  //background(220);
  
  for(let i = 0; i < particles.length; i++) {
    
    stroke(0);
    fill(particles[i].color);
    rect(particles[i].pos.x, particles[i].pos.y, particles[i].size, particles[i].size);
    
    
    if(particles[i].pos.y < 0) {
      
      particles[i].pos.y = height;
      
    }
    particles[i].update();
    
  }
  

}

// Particle class (but it's a function in Javascript!)
class Particle {
  
  constructor() {

    this.pos = createVector(random(width), random(height));
    this.vel = createVector(random(-0.01, 0.01), random(-0.01, 0.01));
    this.accel = createVector(random(-0.00001, 0.00001), random(-0.00001, 0.00001));
    this.accel2 = createVector(random(-0.000001, 0.000001), random(-0.000001, 0.000001));

    this.size = max(abs(this.vel.x), abs(this.vel.y));
    this.color = color(random(100), 100, 100);
    
    this.osc = new p5.Oscillator();
    this.osc.setType('square');
    this.osc.freq(30);
    this.osc.amp(map(this.size, 0, 20, 0, 1.0/numParticles));
    this.osc.start();
  }


  update() {

    this.accel.add(this.accel2);
    this.vel.add(this.accel);
    this.pos.add(this.vel);
    
    this.osc.freq(map(this.pos.x/this.pos.y, 0, width/height, 40, 800));
    this.osc.amp(map(this.size, 0, 100, 0, 1.0/numParticles));
    this.checkWalls();
    this.size = max(abs(this.vel.x), abs(this.vel.y));

  }

  checkWalls() {
  
    if(this.pos.x > width-this.size/2) {
      this.pos.x = width-this.size/2;
      this.vel.x = -this.vel.x;
      this.accel.x = -this.accel.x;
      this.accel2.x = -this.accel2.x;
    }
    if(this.pos.x < this.size/2) {
      this.pos.x = this.size/2;
      this.vel.x = -this.vel.x;
      this.accel.x = -this.accel.x;
      this.accel2.x = -this.accel2.x;
    }
    if(this.pos.y > height-this.size/2) {
      this.pos.y = height-this.size/2;
      this.vel.y = -this.vel.y;
      this.accel.y = -this.accel.y;
      this.accel2.y = -this.accel2.y;
    }
    if(this.pos.y < this.size/2) {
      this.pos.y = this.size/2;
      this.vel.y = -this.vel.y;
      this.accel.y = -this.accel.y;
      this.accel2.y = -this.accel2.y;
    }
  }
  
}


function mousePressed() {
  let fs = fullscreen();
  fullscreen(!fs);
}