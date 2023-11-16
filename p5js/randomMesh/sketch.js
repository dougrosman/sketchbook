function setup() {
  const dim = min(innerWidth, innerHeight);
  createCanvas(dim, dim);
}

function draw() {
  background(0);

  const stepSize = 20;
  beginShape();
  for (let y = 0; y < height; y += stepSize) {
    for (let x = 0; x < width; x += stepSize) {
      vertex(x, y);
    }
  }
  endShape();
}
