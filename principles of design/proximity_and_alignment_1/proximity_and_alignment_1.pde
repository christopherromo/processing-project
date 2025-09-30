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

// move variables
int movex1 = 250;
int movey1 = 50;
int movex2 = 450;
int movey2 = 250;
int movex3 = 250;
int movey3 = 450;
int movex4 = 50;
int movey4 = 250;

// color variables
float red = 0;
float green = 0;
float blue = 0;
float redb = 255;
float greenb = 255;
float blueb = 255;

void drawSphere(int x, int y, float r, float g, float b) {
  // pushes the matrix onto the stack
  pushMatrix();
    
  // translate to coordinates
  translate(x, y, 0);
    
  // fill the sphere
  fill(r,g,b);
    
  // draw the sphere
  sphere(25);
    
  // pops the matrix off of the stack
  popMatrix();
  
} // drawSphere()

void draw() {
  // uses default settings for light
  lights();
  
  // if mouse is pressed
  if(mousePressed) {            // mouse pressed
    if (movey1 < 170) {
      // adjust variables
      movey1 += 5;
      movex2 -= 5;
      movey3 -= 5;
      movex4 += 5;
      red += 12;
      green += 12;
      blue += 12;
      redb -= 12;
      greenb -= 12;
      blueb -= 12;
 
    } // if
    
    // background color
    background(redb,greenb,blueb);
    
    // draw sphere in the middle
    drawSphere(width/2,height/2,red,green,blue);
            
    // draw line of spheres
    drawSphere(movex1,movey1,red,green,blue);
    drawSphere(movex1,movey1-80,red,green,blue);
    drawSphere(movex1,movey1-155,red,green,blue);
    drawSphere(movex1,movey1-230,red,green,blue);
    drawSphere(movex2,movey2,red,green,blue);
    drawSphere(movex2+80,movey2,red,green,blue);
    drawSphere(movex2+155,movey2,red,green,blue);
    drawSphere(movex2+230,movey2,red,green,blue);
    drawSphere(movex3,movey3,red,green,blue);
    drawSphere(movex3,movey3+80,red,green,blue);
    drawSphere(movex3,movey3+155,red,green,blue);
    drawSphere(movex3,movey3+230,red,green,blue);
    drawSphere(movex4,movey4,red,green,blue);
    drawSphere(movex4-80,movey4,red,green,blue);
    drawSphere(movex4-155,movey4,red,green,blue);
    drawSphere(movex4-230,movey4,red,green,blue);
     
  } else {                      // mouse released
    if (movey1 > 50) {
      // adjust variables
      movey1 -= 5;
      movex2 += 5;
      movey3 += 5;
      movex4 -= 5;
      red -= 12;
      green -= 12;
      blue -= 12;
      redb += 12;
      greenb += 12;
      blueb += 12;
      
    } // if
    
    // background color
    background(redb,greenb,blueb);
    
    // draw sphere in the middle
    drawSphere(width/2,height/2,red,green,blue);
    
    // draw line of spheres
    drawSphere(movex1,movey1,red,green,blue);
    drawSphere(movex1,movey1-80,red,green,blue);
    drawSphere(movex1,movey1-155,red,green,blue);
    drawSphere(movex1,movey1-230,red,green,blue);
    drawSphere(movex2,movey2,red,green,blue);
    drawSphere(movex2+80,movey2,red,green,blue);
    drawSphere(movex2+155,movey2,red,green,blue);
    drawSphere(movex2+230,movey2,red,green,blue);
    drawSphere(movex3,movey3,red,green,blue);
    drawSphere(movex3,movey3+80,red,green,blue);
    drawSphere(movex3,movey3+155,red,green,blue);
    drawSphere(movex3,movey3+230,red,green,blue);
    drawSphere(movex4,movey4,red,green,blue);
    drawSphere(movex4-80,movey4,red,green,blue);
    drawSphere(movex4-155,movey4,red,green,blue);
    drawSphere(movex4-230,movey4,red,green,blue);
   
  } // if
} // draw()
