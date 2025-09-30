/**
@christopherRomo
CS4800 (T/R)
November 27th, 2024
Project Demo 2
*/

PImage img;

void setup() {
  size(1400, 1399, P3D);
  noStroke();
  sphereDetail(60);
  img = loadImage("C:/Users/ferfe/Desktop/2024 UCCS projects fall/CS 4800 Computer Graphics/Assignments/Processing/Demo 2/Hierarchy/stars.jpg"); // Load the original image
  
} // setup()

int rotate = 360;
float current_step_mercury = 0;
float current_step_venus = 0;
float current_step_earth = 0;
float current_step_mars = 0;
float current_step_jupiter = 0;

void draw() {
  // background color
  background(0);
  
  image(img, 0, 0); // Displays the image from point (0,0)
  img.loadPixels();

  // mercury
  
  // push matrix onto the stack
  pushMatrix();
  
  // create the pointed light
  pointLight(200, 200, 200, width/2, height/2, 0);
  
  // translate to the middle of the screen
  translate(width/2, width/2, 0);
  
  // rotate matrix
  rotate(TWO_PI / rotate * current_step_mercury);
  
  // translate to position in solar system
  translate(0, 200, 0);
  
  // fill in the sphere
  fill(210,210,210);
  
  // draw sphere in the middle
  sphere(20);
  
  // pop the matrix off of the stack
  popMatrix();
  
  current_step_mercury += 0.5;
  
  // venus
  
  // push matrix onto the stack
  pushMatrix();
  
  // create the pointed light
  pointLight(200, 200, 200, width/2, height/2, 0);
  
  // translate to the middle of the screen
  translate(width/2, width/2, 0);
  
  // rotate matrix
  rotate(TWO_PI / rotate * current_step_venus);
  
  // translate to position in solar system
  translate(0, 275, 0);
  
  // fill in the sphere
  fill(210,180,140);
  
  // draw sphere in the middle
  sphere(30);
  
  // pop the matrix off of the stack
  popMatrix();
  
  current_step_venus += 0.4;
  
  // earth
  
  // push matrix onto the stack
  pushMatrix();
  
  // create the pointed light
  pointLight(200, 200, 200, width/2, height/2, 0);
  
  // translate to the middle of the screen
  translate(width/2, width/2, 0);
  
  // rotate matrix
  rotate(TWO_PI / rotate * current_step_earth);
  
  // translate to position in solar system
  translate(0, 350, 0);
  
  // fill in the sphere
  fill(0,157,196);
  
  // draw sphere in the middle
  sphere(35);
  
  // pop the matrix off of the stack
  popMatrix();
  
  current_step_earth += 0.3;
  
  // mars
  
  // push matrix onto the stack
  pushMatrix();
  
  // create the pointed light
  pointLight(200, 200, 200, width/2, height/2, 0);
  
  // translate to the middle of the screen
  translate(width/2, width/2, 0);
  
  // rotate matrix
  rotate(TWO_PI / rotate * current_step_mars);
  
  // translate to position in solar system
  translate(0, 425, 0);
  
  // fill in the sphere
  fill(185,72,78);
  
  // draw sphere in the middle
  sphere(25);
  
  // pop the matrix off of the stack
  popMatrix();
  
  current_step_mars += 0.2;
  
  // mars
  
  // push matrix onto the stack
  pushMatrix();
  
  // create the pointed light
  pointLight(200, 200, 200, width/2, height/2, 0);
  
  // translate to the middle of the screen
  translate(width/2, width/2, 0);
  
  // rotate matrix
  rotate(TWO_PI / rotate * current_step_jupiter);
  
  // translate to position in solar system
  translate(0, 525, 0);
  
  // fill in the sphere
  fill(255,140,0);
  
  // draw sphere in the middle
  sphere(50);
  
  // pop the matrix off of the stack
  popMatrix();
  
  current_step_jupiter += 0.1;
  
  // sun
  
  // push matrix onto the stack
  pushMatrix();
  
  // set default lights
  lights();
  
  // translate to the middle of the screen
  translate(width/2, height/2, 0);
  
  fill(255,255,0);
  
  // draw sphere in the middle
  sphere(100);
  
  // pop the matrix off of the stack
  popMatrix();
  
} // draw()
