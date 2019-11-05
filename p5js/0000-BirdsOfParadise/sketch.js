var canvas;

// stores point objects (think of points as particles.)
var points = []; 

// shouldAdd is a boolean that makes sure we don't keep adding points to our system.
var shouldAdd = false; 

// a global SIZE value to use. Used below to set the size of each Point. Set to 0 if you only want lines drawn.
const SIZE = 0;

// determine the most points we'll want in the system
const MAX_POINTS = 15;

/*
In this setup() function, we create our canvas, and
spawn some new points.
*/

function setup() {

    // set the canvas size to the size of the browser window
  canvas = createCanvas(windowWidth,windowHeight);

  /* Uncomment the two lines below this comment if you want the sketch to always load in fullscreen automatically: */

//   let fs = fullscreen();
//       fullscreen(!fs);

    // attach our canvas to a parent div (which was created in index.html document)
  canvas.parent("#sketch-parent");
  

  // set the thickness of the lines
  strokeWeight(0.05);

  colorMode(HSB, 100);

  // create new points. This creates 3 at the start of running the sketch
  for (let i = 0; i < 3; i++) {

    // create a new point with the size value we set above
    let p = new Point(SIZE);

    // push the new point into points[]
    points.push(p);
  }

  background(0);
}

// Resizes the window if the window size is changed (useful when going in and out of fullscreen)
function windowResized() {
    resizeCanvas(windowWidth, windowHeight);
    background(0);
}

function draw() {

    

  // OUTER LOOP: go through all the points in points[]  
  for (let i = 0; i < points.length; i++) {

    // create a variable to store the "current" Point's position. Makes it so I don't have to type "points[i].pos.x" all the time. Now I can just say "currPoint.x"
    let currPoint = points[i].pos;
    
    // draw an ellipse at each point's position (the points won't be visible if the SIZE we set to the top is 0)
    if(SIZE > 0) {
        ellipse(currPoint.x, currPoint.y, points[i].size, points[i].size);
    }

    // INNER LOOP: go through all the points in points[], and draw a line from each point to every other point
    for (let j = 0; j < points.length; j++) {

        // create a variable to store the "next" Point's position.
        let nextPoint = points[j].pos;
      
        // only draw a connecting line if the for-loops aren't referring to the same particle at the same time
        if (i != j) {
            // calculate the distance between the "current" Point and the "next Point" and store it in a variable called 'distance'
            let distance = dist(currPoint.x, currPoint.y, nextPoint.x, nextPoint.y)

            // set a hue value based on how far a two points are from each other. use map() with the dist() function to measure that distance
            let hue = map(distance, 0, windowWidth, 0, 100);

            // set an alpha, or "transparency" value that is also based on how far two points are from each other. In this implementation, the farther two points are from each other, the more transparent their connecting line is.
            let alpha = map(distance, 0, windowHeight, 0, 100);

            // set the line hue to the calculated hue value
            // set the line saturation to the a value based on the hue
            // set the brightness to 100
            // set the alpha to [a number] minus the calculated alpha
            stroke(color(92-hue, 100-hue, 100, 60-alpha));

            // draw the connecting line from the (x,y) position derived to the outer loop to the (x,y) position derived from the inner loop.
            line(currPoint.x, currPoint.y, nextPoint.x, nextPoint.y);
        }
    } // END INNER LOOP

    // update the position/age of each point. If shouldAdd is true (which occurs in the checkWalls() function below, then we can add another point to the system)
    points[i].update(shouldAdd);

    // if the age of a point has reached 0, delete it from points[]
    if(points[i].age < 0) {
      this.points.splice(i, 1);

        // if we get down to just 1 particle, delete the last one immediately. At this point, nothing more will be drawn until the sketch is reset.
        if(points.length == 1){
            this.points.splice(i, 1);

            // uncomment the "saveCanvas" line below to automatically download an image of your canvas (the image is generated automatically after all points have disappeared...which may never happen!)
            //saveCanvas(canvas, 'BOP', 'png');
        }
    }

    // set the "shouldAdd" variable based on how many points are currently drawing on the screen. MAX_POINTS was set at the top of our code, which limits how many points can be on the screen. If we're at MAX_POINTS, no new points will be added if any points hit a wall.
    if(points.length < MAX_POINTS) {
        shouldAdd = true;
    } else {
        shouldAdd = false;
    }
  }

  // draw instruction text at beginning
  if(frameCount < 500) {
    push();
        noStroke();
        colorMode(RGB, 255);
        fill(0);
        rect(0, 0, 240, 90);
        fill(480-frameCount);
        
        textSize(14);
        let txtY = 20;
        text("Mouse Press: toggle fullscreen", 20, 20+txtY);
        text("C: clear screen", 20, 40+txtY);
        text("S: save screen (downloads a PNG)", 20, 60+txtY);
    pop();
  }
  
} // END DRAW FUNCTION

function mousePressed() {
    let fs = fullscreen();
    fullscreen(!fs);
}

function keyPressed() {

    // reset the sketch
    if (key == 'c') {
        background(0);
        points = [];
        for (let i = 0; i < 3; i++) {
            // create a new point with the size value we set above
            let p = new Point(SIZE);
            // push the new point into points[]
            points.push(p);
        }
    }
    // take a screenshot
    else if (key == 's') {
      saveCanvas(canvas, 'BOP', 'png');
    }
}

// define the Point "class" which is a lot like a particle. Basically the same, really. The point constructor accepts '_size', which means, whenever we create a new Particle (like, in our setup() or draw() functions), it automatically sets things like position, velocity, etc., but we have to tell it the size manually at the point of creation.
let Point = function(_size) {
  
  // set the position randomly  
  this.pos = createVector(random(width), random(height));
  this.vel = createVector(random(-1.5, 1.5), random(-1.5, 1.5));
  this.accel = createVector(random(-.0001, .0001), random(-.0001, .0001));
  this.size = _size;
  this.age = 1000;
  this.color = color(random(100), 100, 100, 100);
};

// update function calculates the speed and velocity of a Point each new frame. It also tracks the age of a Point, and checks if a Point is touching a wall.
Point.prototype.update = function(_shouldAdd) {
  this.vel.add(this.accel);
  this.pos.add(this.vel);
  this.checkWalls(_shouldAdd);
  this.age--;
};

// checkWalls checks to see if a Point has come in contact with any of the 4 sides of the canvas. It accepts a boolean argument (_shouldAdd). If _shouldAdd is true, a new Point is added to points[]
Point.prototype.checkWalls = function(_shouldAdd) {
  
  // wallTouched is false by default (points are typically not touching a wall)
  let wallTouched = false;
  
  // check the right wall
  if (this.pos.x > width - this.size / 2) {
    
    // make sure location is reset correctly
    this.pos.x = width - this.size / 2; 
    
    // invert the velocity so it travels in the opposite direction after hitting the wall
    this.vel.x = -this.vel.x;

    // set the wallTouched boolean to 'true' briefly so that a new Point may be added to points[]
    wallTouched = !wallTouched;
  }

  // check the left wall
  if (this.pos.x < this.size / 2) {
    this.pos.x = this.size / 2;
    this.vel.x = -this.vel.x;
    wallTouched = !wallTouched;
  }

  // check the bottom
  if (this.pos.y > height - this.size / 2) {
    this.pos.y = height - this.size / 2;
    this.vel.y = -this.vel.y;
    wallTouched = !wallTouched;
  }

  // check the top
  if (this.pos.y < this.size / 2) {
    this.pos.y = this.size / 2;
    this.vel.y = -this.vel.y;
    wallTouched = !wallTouched;
  }
  
  // if a wall has been touch AND there aren't too many points already in the system (remember, _shouldAdd is a boolean, which is being passed in as an argument to the checkWalls function...which is being grabbed as an argument from the update() function...yeah, "_shouldAdd" goes back up the chain a bit...)
  if(wallTouched && _shouldAdd){

    // create a temporary new Point based on the global SIZE set at the top of the code
    let p = new Point(SIZE);

    // push the new Point into points.
    points.push(p);
  }
};
