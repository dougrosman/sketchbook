var buttons1;
var buttons2;
var buttons3;
var buttons4;
var b1;
var b2;
var x = 0;
var y = 0;
var rate = 100;
var num = 60;
var canvas;
function setup() {
  canvas = createCanvas(windowWidth,windowHeight);
  canvas.parent("sketch-parent")
  colorMode(HSB, 100);
  frameRate(60);
  
  // number of buttons, size of buttons
  buttons1 = generateButtons(num, Math.floor(random(60, 150)), 0, false, Math.random());
  buttons2 = generateButtons(num, Math.floor(random(60, 150)), 0, false, Math.random());
  buttons3 = generateButtons(num, Math.floor(random(60, 150)), 0, false, Math.random());
  
  
}

function windowResized() {
  resizeCanvas(windowWidth, windowHeight);
  background(0);
}

function draw() {
  background(0, 0, 0);
  
  
  b1 = buttons1[0];
  b2 = buttons2[0];
  
  
  
  let numCols = Math.floor((width)/(b1.w));
  let colWidth = (numCols*(b1.w+b1.m)) - b1.m;
  let translateX = Math.floor(((width-colWidth)/2)) - b1.w/72;
  let translateY = b1.m*2;
  
  let numCols2 = Math.floor((width)/(b2.w));
  let colWidth2 = (numCols2*(b2.w+b2.m)) - b2.m;
  let translateX2 = Math.floor(((width-colWidth2)/2)) - b2.w/72;
  let translateY2 = b2.m*2;
  
  let lerpAmount0 = map(sin(frameCount/rate), -1, 1, 0, 1);
  let transLerp = lerp(translateX, translateX2, lerpAmount0);
  
  push();
  translate(transLerp, -60);
  
  for(let i = 0; i < buttons1.length; i++) {
    
    let lerpAmount = map(sin((frameCount/rate)), -1, 1, 0, 1);
    
    let lerpedX = lerp(buttons1[i].x, buttons2[i].x, lerpAmount);
    let lerpedY = lerp(buttons1[i].y, buttons2[i].y, lerpAmount);
    let lerpedH = lerp(buttons1[i].h, buttons2[i].h, lerpAmount);
    let lerpedM = lerp(buttons1[i].m, buttons2[i].m, lerpAmount);
    let lerpedW = lerp(buttons1[i].w, buttons2[i].w, lerpAmount);
    let lerpedColor = lerpColor(buttons1[i].c, buttons2[i].c, lerpAmount);
    
    buttons3[i].x = lerpedX;
    buttons3[i].y = lerpedY;
    buttons3[i].h = lerpedH;
    buttons3[i].m = lerpedM;
    buttons3[i].w = lerpedW;
    buttons3[i].c = lerpedColor;
    
  }
  drawButtons(buttons3, b1.m, b1.w);
  pop();
  
  if(1 - lerpAmount0 < 0.0006) {
    
    buttons1 = generateButtons(num, Math.floor(random(100, 180)), 0, false, Math.random());
    //print("change1");
  }
  
  if(lerpAmount0 < 0.0006) {
    buttons2 = generateButtons(num, Math.floor(random(100, 180)), 0, false, Math.random());
    //print("change2");
  }
  
}

function generateButtons(num, size, _margin, _margin_setter, _color_setter) {
  let _buttons = [];
  
  for(let i = 0; i < num; i++) {
    let b = new Button(size, _margin, _margin_setter, _color_setter);
    _buttons.push(b);
    
  }
  return alignButtons(_buttons);
}

function alignButtons(_buttons) {
  let points = [];
  let rowCounter = 0;
  let x = 0;
  let y = 0;
  for(let i = 0; i < _buttons.length; i++) {
    // let rowAmount = Math.floor((width)/(_buttons[0].w + _buttons[0].m));
    let rowAmount = Math.floor((width)/(_buttons[0].w));

    
    if(i % rowAmount == 0 && i !== 0) {
      x = 0;
      y = 0;
      rowCounter++;
      
    }
    
    if(rowCounter > 0) {
       
      // grab the index of the above button
      let yIndex = i-rowAmount;
      
      // set y to the y value of above button + height of above button
      y = _buttons[yIndex].y+_buttons[yIndex].h + _buttons[0].m;
      _buttons[yIndex].y = y;
      
      _buttons[i].y = _buttons[yIndex].y;
      
      points.push(createVector(x, _buttons[i].y));
    } else {
      
      points.push(createVector(x, y));
    }
    
    x+=_buttons[0].w+_buttons[0].m;
    
  }
  
  for(let i = 0; i < _buttons.length; i++) {
    _buttons[i].x = points[i].x;
    _buttons[i].y = points[i].y;
    
  }
  
  return _buttons;
  
}


function drawButtons(_buttons) {
  
  for(let i = 0; i < _buttons.length; i++) {
    _buttons[i].draw(_buttons[i].x, _buttons[i].y);
  }
}


var Button = function(size, _margin, _margin_setter, _color_setter) {
  
  
  this.w = size;
  this.h = Math.floor(random(size, 3*size));
  if(_color_setter <= 0.5) {
    this.c = color((Math.floor(random(4))*9)+random(30), (Math.floor(random(4))*5)+random(20, 60), 100);
  } else {
    this.c = color((Math.floor(random(4))*9)+random(50, 80), (Math.floor(random(4))*5)+random(20, 60), 100);
  }
  this.x = 0;
  this.y = 0;
  
  if(_margin_setter){
    this.m = _margin;
  } else {
  this.m = size/4;
  }
  
  
};

Button.prototype.draw = function(_x, _y) {
  let space = this.w/15;
  fill(this.c);
  stroke(0, 0);
  strokeWeight(space*2);
  rect(_x, _y, this.w+(space/2), this.h+(space/2), space);
  
  //strokeCap(PROJECT);
  stroke(100, 0);
  strokeWeight(space);
  line(_x+space, _y+space, _x+this.w-space, _y+space);
  line(_x+space, _y+space, _x+space, _y+this.h-space);
  
};


function mousePressed() {
  let fs = fullscreen();
  fullscreen(!fs);
}