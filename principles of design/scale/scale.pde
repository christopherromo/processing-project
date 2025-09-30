/**
@christopherRomo
CS4800 (T/R)
December 9th, 2024
Project - Principles of Design
*/

void setup() {
  size(400,400,P3D);
  surface.setLocation(200, 200);
  noStroke();
  
} // setup()

// initialize variables
float red = 0;
float green = 0;
float blue = 255;

int cycle = 0;
int size1 = 75;
int size2 = 75;

void draw() {
  // uses default settings for light
  lights();
  
  // background color
  background(0);
  
  // if mouse is pressed
  if(mousePressed) {
    // if the cube 1 is not at full size
    if (size1 < 135) {
      size1 += 1;
      red += 4.25;
      blue -= 4.25;
    }
    
    // pushes the matrix onto the stack
    pushMatrix();
    
    // translate to upper right side
    translate(250, 150, 0);
  
    // inverted mouseY coordinate
    int invert = width - mouseY;
  
    // rotates the cube so that a face is always looking at mouse
    rotateY(map(mouseX, 0, width, 0, PI));
    rotateZ(map(invert, 0, height, 0, PI));
  
    // changes the color of the cube
    fill(red,0,blue);
  
    // draws the cube
    box(size1); 
    
    // pops the matrix off of the stack
    popMatrix();
    
  } else {
    // cube is at full size
    if (size1 > 75) {
      size1 -= 1;
      red -= 4.25;
      blue += 4.25;
    }
    
    // pushes the matrix onto the stack
    pushMatrix();
    
    // translate to upper right side
    translate(250, 150, 0);
  
    // inverted mouseY coordinate
    int invert = width - mouseY;
  
    // rotates the cube so that a face is always looking at mouse
    rotateY(map(mouseX, 0, width, 0, PI));
    rotateZ(map(invert, 0, height, 0, PI));
  
    // changes the color of the cube
    fill(red,0,blue);
  
    // draws the cube
    box(size1); 
    
    // pops the matrix off of the stack
    popMatrix();
    
  }
  
  // if mouse is pressed
  if(mousePressed) {
    // if the cube 2 is not at full size
    if (size2 > 15) {
      size2 -= 1;
      green += 4.25;
      blue -= 4.25;
    }
    
    // pushes the matrix onto the stack 
    pushMatrix();
    
    // translate to the lower left side
    translate(150, 250, 0);
  
    // inverted mouseY coordinate
    int invert = width - mouseY;
  
    // rotates the cube so that a face is always looking at mouse
    rotateY(map(mouseX, 0, width, 0, PI));
    rotateZ(map(invert, 0, height, 0, PI));
  
    // changes the color of the cube
    fill(0,green,blue);
  
    // draws the cube
    box(size2);
    
    // pops the matrix off of the stack
    popMatrix();
    
  } else {
    // cube is at full size
    if (size2 < 75) {
      size2 += 1;
      green -= 4.25;
      blue += 4.25;
    }
    
    // pushes the matrix onto the stack
    pushMatrix();
    
    // translate to lower left side
    translate(150, 250, 0);
  
    // inverted mouseY coordinate
    int invert = width - mouseY;
  
    // rotates the cube so that a face is always looking at mouse
    rotateY(map(mouseX, 0, width, 0, PI));
    rotateZ(map(invert, 0, height, 0, PI));
  
    // changes the color of the cube
    fill(0,green,blue);
  
    // draws the cube
    box(size2);
    
    // pops the matrix off of the stack
    popMatrix();
  }
  
} // draw()
