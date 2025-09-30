/**
@christopherRomo
CS4800 (T/R)
December 9th, 2024
Project - Principles of Design
*/

void setup() {
  size(1200, 720, P3D);
  noStroke();
  fill(204);
  sphereDetail(60);
  
} // setup()

void draw() {
  // background color
  background(20,0,0);
  
  // set the ambient lighting
  ambientLight(50,0,0);
  
  // light the bottom of the spheres
  directionalLight(139, 0, 0, 0, -1, 0);
  
  // push matrix onto the stack
  pushMatrix();
  
  // translate to the right of the screen
  translate(1000, height/2, 0);
  
  // draw sphere to the right
  sphere(50);
  
  // pop the matrix off of the stack
  popMatrix();
  
  // push matrix onto the stack
  pushMatrix();
  
  // translate to the left of the screen
  translate(200, height/2, 0);
  
  // draw sphere to the left
  sphere(50);
  
  // pop the matrix off of the stack
  popMatrix();
  
  // set the pointed light lighting
  pointLight(253, 222, 108, width/2, -200, 0);
  
  // moving spotlight that follows the mouse
  spotLight(255, 192, 203, mouseX, mouseY, 600, 0, 0, -1, PI/2, 600);

  // push matrix onto the stack
  pushMatrix();
  
  // translate to the middle of the screen
  translate(width/2, height/2, 0);
  
  // draw sphere in the middle
  sphere(200);
  
  // pop the matrix off of the stack
  popMatrix();
  
} // draw()
