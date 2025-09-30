/**
@christopherRomo
CS4800 (T/R)
December 9th, 2024
Project Demo 1
*/

void setup() {
  size(1000,1000,P3D);
  noStroke();
  
} // setup()


// move variables
int movex1 = 500;
int movey1 = 100;
int movex2 = 900;
int movey2 = 500;
int movex3 = 500;
int movey3 = 900;
int movex4 = 100;
int movey4 = 500;

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
  sphere(50);
    
  // pops the matrix off of the stack
  popMatrix();
  
} // drawSphere()

void draw() {
  // uses default settings for light
  lights();
  
  // if mouse is pressed
  if(mousePressed) {            // mouse pressed
    if (movey1 < 340) {
      // adjust variables
      movey1 += 5;
      movex2 -= 5;
      movey3 -= 5;
      movex4 += 5;
      red += 6;
      green += 6;
      blue += 6;
      redb -= 6;
      greenb -= 6;
      blueb -= 6;
      
    }
    
    // background color
    background(redb,greenb,blueb);
    
    // draw sphere in the middle
    drawSphere(width/2,height/2,red,green,blue);
            
    // draw line of spheres
    drawSphere(movex1,movey1,red,green,blue);
    drawSphere(movex1,movey1-160,red,green,blue);
    drawSphere(movex1,movey1-310,red,green,blue);
    drawSphere(movex1,movey1-460,red,green,blue);
    drawSphere(movex2,movey2,red,green,blue);
    drawSphere(movex2+160,movey2,red,green,blue);
    drawSphere(movex2+310,movey2,red,green,blue);
    drawSphere(movex2+460,movey2,red,green,blue);
    drawSphere(movex3,movey3,red,green,blue);
    drawSphere(movex3,movey3+160,red,green,blue);
    drawSphere(movex3,movey3+310,red,green,blue);
    drawSphere(movex3,movey3+460,red,green,blue);
    drawSphere(movex4,movey4,red,green,blue);
    drawSphere(movex4-160,movey4,red,green,blue);
    drawSphere(movex4-310,movey4,red,green,blue);
    drawSphere(movex4-460,movey4,red,green,blue);
     
  } else {                      // mouse released
    if (movey1 > 100) {
      // adjust variables
      movey1 -= 5;
      movex2 += 5;
      movey3 += 5;
      movex4 -= 5;
      red -= 6;
      green -= 6;
      blue -= 6;
      redb += 6;
      greenb += 6;
      blueb += 6;
      
    }
    
    // background color
    background(redb,greenb,blueb);
    
    // draw sphere in the middle
    drawSphere(width/2,height/2,red,green,blue);
    
    // draw line of spheres
    drawSphere(movex1,movey1,red,green,blue);
    drawSphere(movex1,movey1-160,red,green,blue);
    drawSphere(movex1,movey1-310,red,green,blue);
    drawSphere(movex1,movey1-460,red,green,blue);
    drawSphere(movex2,movey2,red,green,blue);
    drawSphere(movex2+160,movey2,red,green,blue);
    drawSphere(movex2+310,movey2,red,green,blue);
    drawSphere(movex2+460,movey2,red,green,blue);
    drawSphere(movex3,movey3,red,green,blue);
    drawSphere(movex3,movey3+160,red,green,blue);
    drawSphere(movex3,movey3+310,red,green,blue);
    drawSphere(movex3,movey3+460,red,green,blue);
    drawSphere(movex4,movey4,red,green,blue);
    drawSphere(movex4-160,movey4,red,green,blue);
    drawSphere(movex4-310,movey4,red,green,blue);
    drawSphere(movex4-460,movey4,red,green,blue);
   
  }
} // draw()
