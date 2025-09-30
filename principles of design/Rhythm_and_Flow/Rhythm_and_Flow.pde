/**
@christopherRomo
CS4800 (T/R)
November 5th, 2024
Project Demo 2
*/

void setup() {
  size(500,500);
  noStroke();
  
} // setup()

void drawSTriangle(float x, float y) {
  triangle(x,y,x+25,y-25,x+50,y);
  
} // drawSTriangle()

void drawMTriangle(float x, float y) {
  triangle(x,y,x+50,y-50,x+100,y);
  
} // drawMTriangle()

void drawLTriangle(float x, float y) {
  triangle(x,y,x+75,y-75,x+150,y);
  
} // drawLTriangle()

// initialize variables
float move1 = 0;
float move2 = 0;
float move3 = 0;
float move4 = 191;
float move5 = 283;
float move6 = 375;

float movingS = 0;
float movingM = 0;
float movingL = 0;
float movingSV = 0;
float movingMV = 0;
float movingLV = 0;

void draw() {
  // background color
  background(135,206,250);  

  // draw a sun in the corner
  fill(252,235,74);
  ellipse(400,50,50,50);
  
  // use if statement to simulate small wave cycle (horizontal)
  if (movingS == 1) {
    move1 -= 0.5;
    if (move1 == 0) {
      movingS = 0;
    }
  }
  else {
    move1 += 0.5;
    if (move1 == 50) {
      movingS = 1;
    }
  }
  
  // use if statement to simulate medium wave cycle (horizontal)
  if (movingM == 1) {
    move2 -= 0.5;
    if (move2 == 0) {
      movingM = 0;
    }
  }
  else {
    move2 += 0.5;
    if (move2 == 100) {
      movingM = 1;
    }
  }
  
  // use if statement to simulate large wave cycle (horizontal)
  if (movingL == 1) {
    move3 -= 0.5;
    if (move3 == 0) {
      movingL = 0;
    }
  }
  else {
    move3 += 0.5;
    if (move3 == 150) {
      movingL = 1;
    }
  }
  
  // use if statement to simulate small wave cycle (vertical)
  if (movingSV == 1) {
    move4 -= 0.5;
    if (move4 == 175) {
      movingSV = 0;
    }
  }
  else {
    move4 += 0.5;
    if (move4 == 200) {
      movingSV = 1;
    }
  }
  
  // use if statement to simulate medium wave cycle (vertical)
  if (movingMV == 1) {
    move5 -= 0.5;
    if (move5 == 275) {
      movingMV = 0;
    }
  }
  else {
    move5 += 0.5;
    if (move5 == 300) {
      movingMV = 1;
    }
  }
  
  // use if statement to simulate large wave cycle (vertical)
  if (movingLV == 1) {
    move6 -= 0.5;
    if (move6 == 375) {
      movingLV = 0;
    }
  }
  else {
    move6 += 0.5;
    if (move6 == 400) {
      movingLV = 1;
    }
  }
   
  // draw small waves
  fill(32,178,170,90);
  drawSTriangle(move1-50,move4);
  drawSTriangle(move1,move4);
  drawSTriangle(move1+50,move4);
  drawSTriangle(move1+100,move4);
  drawSTriangle(move1+150,move4);
  drawSTriangle(move1+200,move4);
  drawSTriangle(move1+250,move4);
  drawSTriangle(move1+300,move4);
  drawSTriangle(move1+350,move4);
  drawSTriangle(move1+400,move4);
  drawSTriangle(move1+450,move4);
  drawSTriangle(move1+500,move4);
  drawSTriangle(move1+550,move4);
  rect(move1-50,move4,550,600);
  
  // draw medium waves
  drawMTriangle(move2-100,move5);
  drawMTriangle(move2,move5);
  drawMTriangle(move2+100,move5);
  drawMTriangle(move2+200,move5);
  drawMTriangle(move2+300,move5);
  drawMTriangle(move2+400,move5);
  drawMTriangle(move2+500,move5);
  rect(move2-100,move5,600,600);
   
  // draw large waves
  drawLTriangle(move3-150,move6);
  drawLTriangle(move3,move6);
  drawLTriangle(move3+150,move6);
  drawLTriangle(move3+300,move6);
  drawLTriangle(move3+450,move6);
  drawLTriangle(move3+600,move6);
  drawLTriangle(move3+750,move6);
  rect(move3-150,move6,750,600);
  
} // draw()
