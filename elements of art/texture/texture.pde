/*
Christopher Romo
CS4800 (T/R)
October 8th, 2024
Project - Elements of Art
*/

void setup() {
  size(500,500);
  surface.setLocation(100, 100);
  background(152,255,152);
  
} // setup()

// import random to generate random numbers
import java.util.Random;
Random rand = new Random();

void draw() {
  // save random numbers into variables
  int offset_1 = rand.nextInt(100);
  int offset_2 = rand.nextInt(100);
  int offset_3 = rand.nextInt(100);
  int offset_4 = rand.nextInt(100);
  int green = rand.nextInt((255 - 100) + 1) + 100;
  
  // use variables to create lines
  stroke(50,green,50);
  line(mouseX + offset_1, mouseY + offset_2, mouseX + offset_3, mouseY + offset_4);
  line(mouseX + offset_2, mouseY + offset_1, mouseX + offset_4, mouseY + offset_3);
  line(mouseX + offset_3, mouseY + offset_4, mouseX + offset_1, mouseY + offset_2);
  line(mouseX + offset_4, mouseY + offset_3, mouseX + offset_2, mouseY + offset_1);
  
} // draw ()

void mousePressed() {
  // draws a flower
  
  // petals
  stroke(255,0,0);
  fill(225,0,0);
  ellipse(mouseX + 25,mouseY + 25,50,50);
  ellipse(mouseX - 25,mouseY - 25,50,50);
  ellipse(mouseX - 25,mouseY + 25,50,50);
  ellipse(mouseX + 25,mouseY - 25,50,50);
  ellipse(mouseX + 50,mouseY,50,50);
  ellipse(mouseX - 50,mouseY,50,50);
  ellipse(mouseX,mouseY + 50,50,50);
  ellipse(mouseX,mouseY - 50,50,50);
  
  // center
  stroke(255,255,0);
  fill(225,225,0);
  ellipse(mouseX,mouseY,50,50);
  
} // mousePressed()
