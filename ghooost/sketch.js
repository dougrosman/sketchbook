let ghosts = [];

function setup() {
  createCanvas(400, 400);
  textAlign(CENTER, CENTER);
  textSize(48);
}

function draw() {
  background(255, 100, 0);

  // Randomly create ghosts
  if (random(1) < 1) {
    ghosts.push(new Ghost());
  }

  // Display all ghosts and remove faded ones
  for (let i = ghosts.length - 1; i >= 0; i--) {
    ghosts[i].update();
    ghosts[i].display();
    if (ghosts[i].alpha <= 0) {
      ghosts.splice(i, 1);
    }
  }
}

class Ghost {
  constructor() {
    this.x = random(width);
    this.y = random(height);
    this.alpha = 255;
    this.fadeSpeed = random(0.5, 3);
    this.size = random(10, 60);
  }

  update() {
    this.alpha -= this.fadeSpeed;
  }

  display() {
    textSize(this.size);
    fill(255, this.alpha);
    text('👻', this.x, this.y);
  }
}
``
