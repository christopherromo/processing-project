/**
@christopherRomo
CS4800 (T/R)
December 9th, 2024
Project - Principles of Design
*/

void setup() {
  size(500,500,P3D);
  surface.setLocation(200, 200);
  noStroke();
  
} // setup()

void drawCube(int x, int y, int r, int g, int b) {  
  // pushes default language to stack
  pushMatrix();

  // translates the cube to correct coordinates
  translate(x, y, 0);
  
  // changes the color of the cube
  fill(r,g,b);
  
  // draws the cube
  box(75);
  
  // pops default matrix from stack
  popMatrix();  
  
} // drawCube()

void drawSphere(int x, int y, int r, int g, int b) {
  // pushes default language to stack
  pushMatrix();
  
  // translates the sphere to correct coordinates
  translate(x,y,0);
  
  // changes the color of the sphere
  fill(r,g,b);
  
  // draws the sphere
  sphere(50);
  
  // pops default matrix from stack
  popMatrix();
  
} // drawSphere()

// move variables
int move1 = 100;
int move2 = 250;
int move3 = 400;
int move4 = 550;
int move5 = 700;
int move6 = -50;

void draw() {
  // uses default settings for light
  lights();
  
  // background color
  background(0);  

  // if statement for incrementing move variables
  if (move1 == 700) {
    move1 = -200;
  }
  move1 += 1;
  if (move2 == 700) {
    move2 = -200;
  }
  move2 += 1;
  if (move3 == 700) {
    move3 = -200;
  }
  move3 += 1;
  if (move4 == 700) {
    move4 = -200;
  }
  move4 += 1;
  if (move5 == 700) {
    move5 = -200;
  }
  move5 += 1;
  if (move6 == 700) {
    move6 = -200;
  }
  move6 += 1;
   
  // call functions using the move variables
  
  // top row
  drawCube(move1,100,57,255,20);
  drawSphere(move2,100,255,0,255);
  drawCube(move3,100,57,255,20);
  drawSphere(move4,100,255,0,255);
  drawCube(move5,100,57,255,20);
  drawSphere(move6,100,255,0,255);
  
  // middle row
  drawSphere(move1,250,255,0,255);
  drawCube(move2,250,57,255,20);
  drawSphere(move3,250,255,0,255);
  drawCube(move4,250,57,255,20);
  drawSphere(move5,250,255,0,255);
  drawCube(move6,250,57,255,20);
  
  // bottom row
  drawCube(move1,400,57,255,20);
  drawSphere(move2,400,255,0,255);
  drawCube(move3,400,57,255,20);
  drawSphere(move4,400,255,0,255);
  drawCube(move5,400,57,255,20);
  drawSphere(move6,400,255,0,255);
   
} // draw()
