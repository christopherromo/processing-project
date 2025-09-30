/**
@christopherRomo
CS4800 (T/R)
October 8th, 2024
Project - Elements of Art
*/

void setup() {
  size(500,500);
  surface.setLocation(100, 100);
  background(0);
  
} // setup()

// import random to generate random numbers
import java.util.Random;
Random rand = new Random();

void draw() {
  // save random numbers into variables
  int pos_x = rand.nextInt(500);
  int pos_y = rand.nextInt(500);
  int size = rand.nextInt(50);
  int red = rand.nextInt(255);
  int green = rand.nextInt(255);
  int blue = rand.nextInt(255);
  
  // use variables to create circles
  stroke(red,green,blue);
  fill(red,green,blue);
  ellipse(pos_x,pos_y,size,size);
  
} // draw ()

void mousePressed() {
  // resets the background
  background(0);
  
} // mousePressed()
