// TO DO: make the vertices and spacing dynamic

let vertices = [];
let verticesMax = [];


function setup() {
  // const dim = min(innerWidth, innerHeight);
  const dim = 1600;
  createCanvas(dim, dim, WEBGL);

  const stepSize = 80;
  for (let y = 0; y < height; y += stepSize) {
    for (let x = 0; x < width; x += stepSize) {
      const z = random(-60, 60);
      vertices.push(createVector(x, y, z));
      verticesMax.push(z);
    }
  }
  
}

function draw() {
  orbitControl();
  background(0);
  scale(0.75);
  translate(-width/2, -height/2);
  
  noFill();
  strokeWeight(2)
  // stroke(255, 0, 255);
  // beginShape(LINES);
  // for (let i = 0; i < vertices.length; i++) {
  //   vertex(vertices[i].x, vertices[i].y, vertices[i].z);
  // }
  // endShape();

  noFill();
  strokeWeight(1)
  stroke(255, 110, 255);
  beginShape(LINES);
  for (let y = 0; y < 19; y++) {
    for(let x = 0; x < 19; x++) {
      const i = x + y * 20;
      const j = (x+1) + y * 20;
      const k = (x+1) + (y+1) * 20;
      const l = x + (y+1) * 20;

      vertex(vertices[i].x, vertices[i].y, vertices[i].z);
      vertex(vertices[j].x, vertices[j].y, vertices[j].z);

      vertex(vertices[i].x, vertices[i].y, vertices[i].z);
      vertex(vertices[l].x, vertices[l].y, vertices[l].z);

      if(x == 18) {
        vertex(vertices[j].x, vertices[j].y, vertices[j].z);
        vertex(vertices[k].x, vertices[k].y, vertices[k].z);
      }

      if(y == 18) {
        vertex(vertices[l].x, vertices[l].y, vertices[l].z);
        vertex(vertices[k].x, vertices[k].y, vertices[k].z);
      }
    }
  }
  endShape();

  for(let i = 0; i < vertices.length; i++) {

    vertices[i].z = map(sin(frameCount/verticesMax[i]), -1, 1, 0, verticesMax[i])
  }
}

// POINTS, LINES, TRIANGLES, TRIANGLE_FAN TRIANGLE_STRIP, QUADS, QUAD_STRIP or TESS

