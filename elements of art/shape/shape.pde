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

// int variable for counting
int count = 0;

void draw() {
  // if statement that checks the count
  if (count == 0) {          // if the count is 0, display circle screen
    stroke(102,0,0);
    fill(255,153,153);
    ellipse(mouseX,mouseY,100,100);
  } else if (count == 1) {   // if the count is 1, display the square screen
    stroke(0,51,102);
    fill(153,204,255);
    rect(mouseX,mouseY,100,100);
  } else {                   // if the count is 2, display the triangle screen
    stroke(102,102,0);
    fill(255,255,153);
    triangle(mouseX,mouseY,(mouseX+100),(mouseY+100),(mouseX-100),(mouseY+100));
  } // if
    
} // draw()

void mousePressed() {
  // if the mouse is pressed, clear the screen by drawing appropriate background color
  if (count == 0) {
    background(255,204,153);
    count += 1;
  } else if (count == 1) {
    background(204,153,255);
    count += 1;
  } else {
    background(152,255,152);
    count = 0;
  } // if
  
} // mousePressed()
