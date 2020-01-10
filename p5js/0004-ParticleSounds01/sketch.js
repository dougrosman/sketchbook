let particles = [];
var numParticles = 4.0;

function setup() {
  var canvas = createCanvas(windowWidth, windowHeight);
  canvas.parent("sketch-parent");
  
  colorMode(HSB, 100);
  background(100);
  //noStroke();
  rectMode(CENTER);
  
  // fill up an array of particles
  for(let i = 0; i < numParticles; i++) {
    
    let p = new Particle();
    particles.push(p);
  }
 
  console.log(particles.length);
  //noFill();
  strokeWeight(1);
}

///// FULLSCREEN UTILS

function windowResized() {
  resizeCanvas(windowWidth, windowHeight);
  background(100);
}


function mousePressed() {
  let fs = fullscreen();
  fullscreen(!fs);
}

function draw() {
  //background(220);
  
  for(let i = 0; i < particles.length; i++) {
    
    stroke(particles[i].stroke);
    fill(particles[i].color);
    rect(particles[i].pos.x, particles[i].pos.y, particles[i].size, particles[i].size);
    
    
    if(particles[i].pos.y < 0) {
      
      particles[i].pos.y = height;
      
    }
    particles[i].update();
    
  }
  

}

// Particle class
class Particle {
  
  constructor() {

    this.pos = createVector(random(width), random(height));
    this.vel = createVector(random(-0.01, 0.01), random(-0.01, 0.01));
    this.accel = createVector(random(-0.00001, 0.00001), random(-0.00001, 0.00001));
    this.accel2 = createVector(random(-0.0004, 0.0004), random(-0.0004, 0.0004));

    this.size = max(abs(this.vel.x), abs(this.vel.y));
    this.color = color(random(100), random(50, 100), 100);
    this.stroke = color(0);
    //this.color = color(0);
    
    this.osc = new p5.Oscillator();
    this.osc.setType('square');
    this.osc.freq(30);
    this.osc.amp(map(this.size, 0.0, 100.0, 0.0, 1.0/numParticles));
    this.osc.start();
  }


  update() {

    // this.accel.add(this.accel2);
    // this.vel.add(this.accel);
    // this.pos.add(this.vel);
    
    // this.osc.freq(map(this.pos.x+this.pos.y, 0.001, innerWidth+innerHeight, 30.0, 60.0));
    // this.osc.amp(map(this.size, 0, 100, 0, 1.0/numParticles));
    // this.checkWalls();
    // this.size = max(abs(this.vel.x), abs(this.vel.y));

    if (this.size > windowHeight) {
      this.osc.amp(0);
      this.color = (0, 0);
      this.stroke = (0, 0);

    } else {
      this.accel.add(this.accel2);
      this.vel.add(this.accel);
      this.pos.add(this.vel);
    
      this.osc.freq(map(this.pos.x+this.pos.y, 0.001, innerWidth+innerHeight, 40.0, 200.0));
      this.osc.amp(map(this.size*4, 0, windowHeight/4, 0, 1.0/numParticles));
      this.checkWalls();
      this.size = max(abs(this.vel.x), abs(this.vel.y));

    }

  }

  checkWalls() {
  
    if(this.pos.x > width-this.size/2) {
      this.pos.x = width-this.size/2;
      this.vel.x = -this.vel.x;
      this.accel.x = -this.accel.x;
      this.accel2.x = -this.accel2.x;
      //background(0);
    }
    if(this.pos.x < this.size/2) {
      this.pos.x = this.size/2;
      this.vel.x = -this.vel.x;
      this.accel.x = -this.accel.x;
      this.accel2.x = -this.accel2.x;
      //background(0);
    }
    if(this.pos.y > height-this.size/2) {
      this.pos.y = height-this.size/2;
      this.vel.y = -this.vel.y;
      this.accel.y = -this.accel.y;
      this.accel2.y = -this.accel2.y;
      //background(0);
    }
    if(this.pos.y < this.size/2) {
      this.pos.y = this.size/2;
      this.vel.y = -this.vel.y;
      this.accel.y = -this.accel.y;
      this.accel2.y = -this.accel2.y;
      //background(0);
    }
  }
  
}


