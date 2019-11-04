var points = [];
var canvas;
var shouldAdd = false;
var _size = 0;

function setup() {
  canvas = createCanvas(windowWidth,windowHeight);
//   let fs = fullscreen();
//       fullscreen(!fs);
  canvas.parent("#sketch-parent");
  background(0);
  strokeWeight(0.05);
  colorMode(HSB, 100);

  for (let i = 0; i < 3; i++) {
    let p = new Point(_size);

    points.push(p);
  }
}

function windowResized() {
    resizeCanvas(windowWidth, windowHeight);
  }

function draw() {
  //background(0);
  
  
  for (let i = 0; i < points.length; i++) {
    
    ellipse(points[i].pos.x, points[i].pos.y, points[i].size, points[i].size);

    for (let j = 0; j < points.length; j++) {
      
      
      if (i != j) {
        let hue = map(dist(points[i].pos.x, points[i].pos.y, points[j].pos.x, points[j].pos.y), 0, windowWidth, 0, 100);

        let alpha = map(dist(points[i].pos.x, points[i].pos.y, points[j].pos.x, points[j].pos.y), 0, windowHeight, 0, 100);

        stroke(color(92-hue, 100-hue, 100, 60-alpha));
        line(points[i].pos.x, points[i].pos.y, points[j].pos.x, points[j].pos.y);
      }
    }
  }

  if(points.length < 15) {
      shouldAdd = true;
  } else {
      shouldAdd = false;
  }
  for (let i = 0; i < points.length; i++) {

    points[i].update(shouldAdd);
    if(points[i].age < 0) {
      this.points.splice(i, 1);
      if(points.length == 1){
        this.points.splice(i, 1);
        //saveCanvas(canvas, 'BOP', 'png');
      }
      console.log(points.length);
    }
  }
}

function mousePressed() {
    if (mousePressed) {
      let fs = fullscreen();
      fullscreen(!fs);
    }
}

let Point = function(size) {
  
  // this.pos = createVector(random(width / 2), random(height / 2));
  this.pos = createVector(width/2, height/2);
  this.pos = createVector(random(width), random(height));
  this.vel = createVector(random(-1.5, 1.5), random(-1.5, 1.5));
  this.accel = createVector(random(-5, 5), random(-5, 5));
  this.accel = createVector(0, 0);
  this.size = size;
  this.age = 1100;
  this.color = color(random(100), 100, 100, 100);
};

Point.prototype.update = function(_shouldAdd) {
  this.vel.add(this.accel);
  this.pos.add(this.vel);
  this.checkWalls(_shouldAdd);
  this.age--;
};

Point.prototype.checkWalls = function(_shouldAdd) {
  let wallTouched = false;
  let p = new Point(_size);
  if (this.pos.x > width - this.size / 2) {
    this.pos.x = width - this.size / 2;
    this.vel.x = -this.vel.x;
    wallTouched = !wallTouched;
  }
  if (this.pos.x < this.size / 2) {
    this.pos.x = this.size / 2;
    this.vel.x = -this.vel.x;
    wallTouched = !wallTouched;
  }
  if (this.pos.y > height - this.size / 2) {
    this.pos.y = height - this.size / 2;
    this.vel.y = -this.vel.y;
    wallTouched = !wallTouched;
  }
  if (this.pos.y < this.size / 2) {
    this.pos.y = this.size / 2;
    this.vel.y = -this.vel.y;
    wallTouched = !wallTouched;
  }
  
  if(wallTouched && _shouldAdd){
    points.push(p);
  }
};
