/**
@christopherRomo
CS4800 (T/R)
October 8th, 2024
Project - Elements of Art
*/

void setup() {
  size(500,500);
  surface.setLocation(100, 100);
  
} // setup()

void draw() {
  // draws a scene based on the location of mouse
  if (mouseX < 300 && mouseX > 200 && mouseY < 200 && mouseY > 100) {  // directly overhead
    // clear canvas
    background(250);
    
    // draw sun
    fill(255);
    ellipse(mouseX,mouseY,50,50);
    
    // draw pyramids
    fill(255);
    quad(100,400,250,200,400,400,250,500);
    quad(0,400,100,300,200,400,100,500);
    quad(300,400,400,300,500,400,400,500);
    quad(0,400,500,400,500,500,0,500);
  } else if (mouseX < 400 && mouseX > 100 && mouseY < 300 && mouseY > 0) {
    // clear canvas
    background(175);
    
    // draw sun
    fill(255);
    ellipse(mouseX,mouseY,50,50);
    
    // draw pyramids
    fill(180);
    quad(100,400,250,200,400,400,250,500);
    quad(0,400,100,300,200,400,100,500);
    quad(300,400,400,300,500,400,400,500);
    quad(0,400,500,400,500,500,0,500);
  } else if (mouseX < 500 && mouseX > 0 && mouseY < 400 && mouseY > 0) {
    // clear canvas
    background(100);
    
    // draw sun
    fill(255);
    ellipse(mouseX,mouseY,50,50);
    
    // draw pyramids
    fill(105);
    quad(100,400,250,200,400,400,250,500);
    quad(0,400,100,300,200,400,100,500);
    quad(300,400,400,300,500,400,400,500);
    quad(0,400,500,400,500,500,0,500);
  } else {
    // clear canvas
    background(25);
    
    // draw sun
    fill(255);
    ellipse(mouseX,mouseY,50,50);
    
    // draw pyramids
    fill(30);
    quad(100,400,250,200,400,400,250,500);
    quad(0,400,100,300,200,400,100,500);
    quad(300,400,400,300,500,400,400,500);
    quad(0,400,500,400,500,500,0,500);
  }// if

} // draw()
