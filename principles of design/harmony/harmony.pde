/**
@christopherRomo
CS4800 (T/R)
December 9th, 2024
Project - Principles of Design
*/

import java.lang.*;
import java.util.Random;

void setup() {
  size(500,500,P3D);
  surface.setLocation(200, 200);
  noStroke();
  
} // setup()

void drawSphere(float x, float y, float frequency, int r, int g, int b, int gradient, int baseCase) {
  // pushes default language to stack
  if (baseCase <= 0) {
    return;
    
  } else {
    // pushes default language to stack
    pushMatrix();
  
    // translates the sphere to correct coordinates
    translate(x,y,0);
  
    // changes the color of the sphere
    fill(r,g,b);
  
    // draws the sphere
    sphere(25);
    
    // pops default matrix from stack
    popMatrix();
    
    // uses sin function to create curve
    x = x + sin(radians(y * frequency)) * 30;
    
    // recursive call depending on the gradient choice
    if (gradient == 0) {             // color -> white
      drawSphere(x,y+30,frequency,r+13,g+13,b+13,gradient,baseCase-1);
      
    } else if (gradient == 1) {      // color -> black
      drawSphere(x,y+30,frequency,r-13,g-13,b-13,gradient,baseCase-1);
      
    } else if (gradient == 2) {      // color, red++
      drawSphere(x,y+30,frequency,r+13,g,b,gradient,baseCase-1);
      
    } else if (gradient == 3) {      // color, green++
      drawSphere(x,y+30,frequency,r,g+13,b,gradient,baseCase-1);
      
    } else {                         // color, blue++
      drawSphere(x,y+30,frequency,r,g,b+13,gradient,baseCase-1);
      
    } 
  }
} // drawSphere()

// color variables
int red = 0;
int green = 0;
int blue = 0;

void draw() {
  // uses default settings for light
  lights();  
  
} // draw()

void mouseClicked() {
  // draw background
  background(0);
   
  // translate coordinate system to the point the mouse is at
  translate(mouseX,mouseY,0);
    
  // use Math.random to generate a frequency
  double randomFrequency = Math.random();
  float randomFloat = (float) randomFrequency;
    
  // generate number of curves
  Random rand = new Random();
  int numCurves = rand.nextInt(10 - 5 + 1) + 5;
  
  // generate random colors & gradient choice
  red = rand.nextInt(255);
  green = rand.nextInt(255);
  blue = rand.nextInt(255);
  int gradient = rand.nextInt(5);
  
  // for loop for each spiral
  for (int i = 0; i < numCurves; i++) {
      
    // pushes the matrix onto the stack
    pushMatrix();
      
    // rotate around the center
    rotate(TWO_PI / numCurves * i);
      
    // call the drawSphere function for an individual spiral
    drawSphere(0,0,randomFloat,red,green,blue,gradient,20);
      
    // pops the matrix off of the stack
    popMatrix();
    
  }
}
