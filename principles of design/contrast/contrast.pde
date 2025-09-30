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

// turn variable
int turn = 1;

void drawStar(int x, int y, int size, int r, int g, int b) {
  // pushes default language to stack
  pushMatrix();
  
  // translate to right side of screen, opposite of mouseY vertically
  translate(x, y, 0);
  
  // rotate the cube
  rotateY(radians(turn));
  
  // changes the color of the cube
  fill(r,g,b);
    
  // draws the cube
  box(size);
    
  // pops default matrix from stack
  popMatrix();  
  
  // pushes default language to stack
  pushMatrix();
    
  // translate to right side of screen, opposite of mouseY vertically
  translate(x, y, 0);
  
  // rotate the cube
  rotateY(radians(turn));
  rotateZ(radians(45));
  rotateX(radians(45));
    
  // changes the color of the cube
  fill(r,g,b);
    
  // draws the cube
  box(size);
    
  // pops default matrix from stack
  popMatrix();
  
} // drawStar()

// color variables
int red = 255;
int green = 255;
int blue = 255;

// background color variables
int redb = 0;
int greenb = 0;
int blueb = 0;

// cycle variable
int cycle = 0;

void draw() {
  // uses default settings for light
  lights();
  
  // if statement that checks cycle and adjusts variables
  if (cycle == 0) {            // black and white (high)
    red = 255;
    green = 255;
    blue = 255;
    
    redb = 0;
    greenb = 0;
    blueb = 0;
  } else if (cycle == 1) {     // baby blue and icy white (low)
    red = 213;
    green = 255;
    blue = 255;
    
    redb = 240;
    greenb = 248;
    blueb = 254;
  } else if (cycle == 2) {     // orange and blue (high)
    red = 255;
    green = 95;
    blue = 31;
    
    redb = 125;
    greenb = 249;
    blueb = 255;
  } else if (cycle == 3) {     // maroon and violet (low)
    red = 48;
    green = 25;
    blue = 52;
    
    redb = 50;
    greenb = 0;
    blueb = 0;
  } else if (cycle == 4) {     // green and red (high)
    red = 255;
    green = 0;
    blue = 0;
    
    redb = 57;
    greenb = 255;
    blueb = 20;
  } else if (cycle == 5) {     // baby pink and lavender (low)
    red = 244;
    green = 194;
    blue = 194;
    
    redb = 211;
    greenb = 211;
    blueb = 255;
  } else if (cycle == 6) {     // yellow and purple (high)
    red = 191;
    green = 64;
    blue = 191;
    
    redb = 224;
    greenb = 231;
    blueb = 34;
  } else if (cycle == 7) {     // sage green and tan (low)
    red = 178;
    green = 172;
    blue = 136;
    
    redb = 210;
    greenb = 180;
    blueb = 140; 
  } // if
  
  // background color
  background(redb,greenb,blueb);
  
  // increment turn variable
  turn += 1;
  
  // draw five stars
  drawStar(250,250,100,red,green,blue);
  drawStar(125,375,50,red,green,blue);
  drawStar(375,375,50,red,green,blue);
  drawStar(125,125,50,red,green,blue);
  drawStar(375,125,50,red,green,blue);
  
} // draw()

void mouseClicked() {
  // if mouse is clicked, increment cycle, once cycle == 7, cycle = 0
  if (cycle == 7) {
    cycle = 0;
  } else {
    cycle += 1;
  } // if
  
} // mouseClicked()
