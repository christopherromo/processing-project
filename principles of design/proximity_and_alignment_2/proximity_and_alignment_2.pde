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
int movex1 = 50;
int movey1 = 50;
int movex2 = 450;
int movey2 = 50;
int movex3 = 450;
int movey3 = 450;
int movex4 = 50;
int movey4 = 450;

// color variables
float red = 255;
float green = 255;
float blue = 255;
float redb = 0;
float greenb = 0;
float blueb = 0;

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
    if (movex1 < 175) {
      // adjust variables
      movex1 += 5;
      movey1 += 5;
      movex2 -= 5;
      movey2 += 5;
      movex3 -= 5;
      movey3 -= 5;
      movex4 += 5;
      movey4 -= 5;
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
            
    // draw diagonal spheres
    drawSphere(movex1,movey1,red,green,blue);
    drawSphere(movex1-75,movey1-75,red,green,blue);
    drawSphere(movex1-150,movey1-150,red,green,blue);
    drawSphere(movex1-225,movey1-225,red,green,blue);
    drawSphere(movex2,movey2,red,green,blue);
    drawSphere(movex2+75,movey2-75,red,green,blue);
    drawSphere(movex2+150,movey2-150,red,green,blue);
    drawSphere(movex2+225,movey2-225,red,green,blue);
    drawSphere(movex3,movey3,red,green,blue);
    drawSphere(movex3+75,movey3+75,red,green,blue);
    drawSphere(movex3+150,movey3+150,red,green,blue);
    drawSphere(movex3+225,movey3+225,red,green,blue);
    drawSphere(movex4,movey4,red,green,blue);
    drawSphere(movex4-75,movey4+75,red,green,blue);
    drawSphere(movex4-150,movey4+150,red,green,blue);
    drawSphere(movex4-225,movey4+225,red,green,blue);
     
  } else {                      // mouse released
    if (movex1 > 50) {
      // adjust variables
      movex1 -= 5;
      movey1 -= 5;
      movex2 += 5;
      movey2 -= 5;
      movex3 += 5;
      movey3 += 5;
      movex4 -= 5;
      movey4 += 5;
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
    
    // draw diagonal spheres
    drawSphere(movex1,movey1,red,green,blue);
    drawSphere(movex1-75,movey1-75,red,green,blue);
    drawSphere(movex1-150,movey1-150,red,green,blue);
    drawSphere(movex1-225,movey1-225,red,green,blue);
    drawSphere(movex2,movey2,red,green,blue);
    drawSphere(movex2+75,movey2-75,red,green,blue);
    drawSphere(movex2+150,movey2-150,red,green,blue);
    drawSphere(movex2+225,movey2-225,red,green,blue);
    drawSphere(movex3,movey3,red,green,blue);
    drawSphere(movex3+75,movey3+75,red,green,blue);
    drawSphere(movex3+150,movey3+150,red,green,blue);
    drawSphere(movex3+225,movey3+225,red,green,blue);
    drawSphere(movex4,movey4,red,green,blue);
    drawSphere(movex4-75,movey4+75,red,green,blue);
    drawSphere(movex4-150,movey4+150,red,green,blue);
    drawSphere(movex4-225,movey4+225,red,green,blue);
   
  } // if
} // draw()
