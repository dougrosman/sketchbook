var points = [];
var canvas;

function setup() {
  canvas = createCanvas(windowWidth, windowHeight);
  canvas.parent("#sketch-parent");
  background(0);
  strokeWeight(0.1);
  colorMode(HSB, 100);

  for (let i = 0; i < 5; i++) {
    let p = new Point(0);

    points.push(p);
  }
}


function draw() {
  //background(0);
  //resizeCanvas(windowWidth, windowHeight);
  
  for (let i = 0; i < points.length; i++) {
    
    //stroke(points[i].color);
    

    ellipse(points[i].pos.x, points[i].pos.y, points[i].size, points[i].size);

    for (let j = 0; j < points.length; j++) {
      
      
      if (i != j) {
        let hue = map(dist(points[i].pos.x, points[i].pos.y, points[j].pos.x, points[j].pos.y), 0, width, 0, 100);
        stroke(color(hue, 100, 100, 100-hue));
        line(points[i].pos.x, points[i].pos.y, points[j].pos.x, points[j].pos.y);
      }

      if (j == points.length - 1) {
        let hue = map(dist(points[i].pos.x, points[i].pos.y, points[0].pos.x, points[0].pos.y), 0, width, 0, 100);
        stroke(color(hue, 100, 100, 100-hue));
        line(points[i].pos.x, points[i].pos.y, points[0].pos.x, points[0].pos.y);
      }
      if (i == points.length - 1) {
        let hue = map(dist(points[0].pos.x, points[0].pos.y, points[0].pos.x, points[0].pos.y), 0, width, 0, 100);
        stroke(color(hue, 100, 100, 100-hue));
        line(points[0].pos.x, points[0].pos.y, points[j].pos.x, points[j].pos.y);
      }
    }
  }
  for (let i = 0; i < points.length; i++) {

    points[i].update();
    if(points[i].age < 0) {
      this.points.splice(i, 1);
      if(points.length ==1){
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
  this.vel = createVector(random(-0.5, 0.5), random(-0.5, 0.5));
  this.accel = createVector(random(-0.75, 0.75), random(-0.75, 0.75));
  this.accel = createVector(0, 0);
  this.size = size;
  this.age = 5000;
  this.color = color(random(100), 100, 100, 100);
};

Point.prototype.update = function() {
  this.vel.add(this.accel);
  this.pos.add(this.vel);
  this.checkWalls();
  this.age--;
};

Point.prototype.checkWalls = function() {
  let wallTouched = false;
  let p = new Point(0);
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
  
  if(wallTouched){
    //points.push(p);
  }
};
