/*
Christopher Romo
CS4800 (T/R)
October 8th, 2024
Project - Elements of Art
*/

void setup() {
  size(500,500,P3D);
  surface.setLocation(200, 200);
  noStroke();
  
} // setup()

// variables for a rainbow cube
int red = 255;
int green = 0;
int blue = 0;
int cycle = 0;

void draw() {
  // uses default settings for light
  lights();
  
  // background color
  background(0);
  
  // cycles through hsv values to create a rainbow effect
  if(cycle == 0) {           // red 255, green++, blue 0
    green = green + 5;
    if(green == 255) {
      cycle += 1;
    }
  } else if(cycle == 1) {    // red--, green 255, blue 0
    red = red - 5;
    if(red == 0) {
      cycle += 1;
    }
  } else if(cycle == 2) {    // red 0, green 255, blue++
    blue = blue + 5;
    if(blue == 255) {
      cycle += 1;
    }
  } else if(cycle == 3) {    // red 0, green--, blue 255
    green = green - 5;
    if(green == 0) {
      cycle += 1;
    }
  } else if(cycle == 4) {    // red++, green 0, blue 255
    red = red + 5;
    if(red == 255) {
      cycle += 1;
    }
  } else {                   // red 255, green 0, blue--
    blue = blue - 5;
    if(blue == 0) {
      cycle = 0;
    }
  } // if
  
  // centers the cube in the canvas
  // also done by width/2, height/2
  translate(250, 250, 0);
  
  // inverted mouseY coordinate
  int invert = width - mouseY;
  
  // rotates the cube so that a face is always looking at mouse
  rotateY(map(mouseX, 0, width, 0, PI));
  rotateZ(map(invert, 0, height, 0, PI));
  
  // changes the color of the cube
  fill(red,green,blue);
  
  // draws the cube
  box(100);
  
} // draw()
