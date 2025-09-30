/**
@christopherRomo
CS4800 (T/R)
October 8th, 2024
Project - Elements of Art
*/

void setup() {
  size(400,400);
  surface.setLocation(100, 100);
  
} // setup()

void draw() {
  // draws the background
  background(130);
  
  // draws white polygons
  fill(255);
  quad(100,300,300,300,400,400,0,400);
  quad(0,0,100,100,100,300,0,400);
  quad(0,0,400,0,300,100,100,100);
  quad(300,100,400,0,400,400,300,300);
  
  // draws grey polygons
  fill(130);
  quad(100,100,300,100,250,150,150,150);
  quad(250,150,300,100,300,300,250,250);
  quad(100,300,150,250,250,250,300,300);
  quad(100,100,150,150,150,250,100,300);
  
  // draws dark grey square
  fill(75);
  rect(150,150,100,100);
  
  // red circle following mouse
  fill(255,0,0);
  
  // if statement that checks position of mouse and draws correct circle
  if (mouseX < 250 && mouseX > 150 && mouseY < 250 && mouseY > 150) {            // smallest circle
    ellipse(mouseX,mouseY,50,50);
  } else if (mouseX < 300 && mouseX > 100 && mouseY < 300 && mouseY > 100) {     // medium circle
    ellipse(mouseX,mouseY,75,75);
  } else {                                                                       // largest circle
    ellipse(mouseX,mouseY,100,100);
  } // if

} // draw()
