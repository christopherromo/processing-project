/*
Christopher Romo
CS4800 (T/R)
October 8th, 2024
Project - Elements of Art
*/

// setup function happens only once
void setup() {
  // size function defines the canvas size
  size(500,500);
  
  // set the location on the desktop
  surface.setLocation(100, 100);
  
  // background function defines the canvas color
  background(153,255,255);

} //setup()

// draw function loops continuously
void draw() {
  // stroke function defines the color of line
  stroke(0,51,102);
  
  /* line function that starts at coordinates (250,250) and
  draws lines to the coordinates of the mouse */
  line(250,250,mouseX,mouseY);

} // draw()
