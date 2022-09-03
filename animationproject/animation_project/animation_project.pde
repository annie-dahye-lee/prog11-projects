// Annie Lee
// Feb 10 1-4B
// Animation Project

// --------------- variables ---------------

PImage img;

int cloud1X;
int cloud2X;
int cloud3X;

int bubbleX;
int bubbleY;

int bubble2X;
int bubble2Y;

int bubble3X;
int bubble3Y;

int bubble4X;
int bubble4Y;

int bubble5X;
int bubble5Y;

int bubble6X;
int bubble6Y;

void setup() { // ------------ start of setup ------------
  background(#000000);
  size(800, 800, FX2D); // graphics window
  img = loadImage("sky.jpeg"); // sky img
  cloud1X = -10;
  cloud2X = 300;
  cloud3X = 550;

  bubbleX = 0;
  bubbleY = -500;

  bubbleX = 0;
  bubbleY = -500;

  bubble3X = 0;
  bubble3Y = -500;

  bubble4X = 00;
  bubble4Y = 00;

  bubble5X = 0;
  bubble5Y = -500;

  bubble6X = 0;
  bubble6Y = -500;
} // ------------ end of setup ------------

void mousePressed() {
  text("x: " + mouseX + " y: " + mouseY, mouseX, mouseY );
} 

void draw() { // ------------ start of draw ------------
  println(mouseX, mouseY); // coordinates in console

  image(img, 30, 30); // sky

  cloud1(cloud1X, 100);
  cloud1X += 1;
  if (cloud1X > 760) {
    cloud1X = -200;
  }

  cloud2(cloud2X, -100);
  cloud2X = cloud2X + 1;
  if (cloud2X > 760) {
    cloud2X = -200;
  }

  cloud3(cloud3X, 230);
  cloud3X += 1;
  if (cloud3X > 760) {
    cloud3X = -200;
  }

  //sun
  sun(10, 50);

  // window  
  stroke(#C1C1C1);
  fill(#C1C1C1); 
  rect(0, 0, 40, 800);
  rect(760, 0, 40, 800);
  rect(0, 0, 800, 40);
  rect(0, 380, 800, 40);
  rect(365, 0, 40, 800); 

  cactus1();
  cactus2(400, 0);

  // window sill
  fill(#E2AF80);
  stroke(#E2AF80);
  rect(0, 700, 800, 100);

  bubble(bubbleX, bubbleY);
  bubbleX = bubbleX + 1;
  bubbleY = bubbleY + 4;

  if (bubbleY > 300) {
    bubbleY = -500;
    bubbleX = 0;
  } 


  bubble2(bubble2X, bubble2Y);
  bubble2X = bubble2X + 1;
  bubble2Y = bubble2Y  + 3;

  if (bubble2Y > 400) {
    bubble2Y = -550;
    bubble2X = 0;
  } 

  bubble3(bubble3X, bubble3Y);
  bubble3X = bubble3X - 1;
  bubble3Y = bubble3Y  + 4;

  if (bubble3Y > 400) {
    bubble3Y = -550;
    bubble3X = 0;
  } 

  bubble4(bubble4X, bubble4Y);
  bubble4X = bubble2X - 2;
  bubble4Y = bubble2Y  - 5;

  if (bubble4Y > 400) {
    bubble4Y = -550;
    bubble4X = 0;
  }
  
   bubble5(bubble5X, bubble5Y);
  bubble5Y = bubble5Y  - 2;

  if (bubble5Y > 400) {
    bubble5Y = -550;
    bubble5X = 0;
  }
  
   bubble6(bubble6X, bubble6Y);
  bubble6X = bubble6X + 1;
  bubble6Y = bubble6Y  - 5;

  if (bubble6Y > 400) {
    bubble6Y = -550;
    bubble6X = 0;
  }
} // ------------ end of draw ------------


//        Parameters
void sun(int x, int y) { // --------- start of sun ---------
  pushMatrix(); // start translation
  translate(x, y);

  stroke(#f9d71c);
  fill(#f9d71c);

  ellipse(600, 110, 130, 130); // sun

  triangle(539, 90, 490, 106, 535, 120); // west
  triangle(541, 139, 512, 170, 559, 160); // southwest
  triangle(586, 174, 595, 211, 615, 173); // south
  triangle(635, 165, 655, 130, 675, 188);// southeast
  triangle(600, 76, 660, 125, 709, 109);// east
  triangle(630, 55, 657, 79, 685, 49);// northeast
  triangle(601, 11, 582, 49, 618, 49);//north
  triangle(565, 56, 510, 40, 545, 75);// northwest

  popMatrix(); // end translation
}// --------- end of sun ---------


void cactus1() { // --------- start of cactus1 ---------
  //cactus
  fill(#63B27A);
  stroke(#63B27A);
  ellipse(165, 580, 99, 250);

  // left arm
  ellipse(105, 540, 50, 30); 
  ellipse(89, 520, 25, 60); 

  // right arm
  ellipse(200, 530, 100, 40); 
  ellipse(240, 490, 35, 100);

  stroke(#E5FFED);
  strokeWeight(2);
  line(124, 510, 124, 615);
  line(145, 480, 145, 615); 
  line(166, 458, 166, 615);
  line(196, 483, 196, 615);

  // mouth
  fill(#63B27A);
  stroke(#000000);
  ellipse(162, 515, 15, 15);
  stroke(#63B27A);
  strokeWeight(2);
  rect(150, 495, 30, 20);

  // eyes
  fill(#000000);
  ellipse(144, 507, 9, 9); // left 
  ellipse(180, 507, 9, 9); // right

  // pot
  fill(#ad5049);
  stroke(#ad5049);
  triangle(115, 635, 210, 635, 165, 800);
  rect(100, 615, 125, 22);

  //flower petals
  fill(255, 100, 0);
  ellipse(178, 457, 20, 20);
  ellipse(198, 457, 20, 20);
  ellipse(178, 477, 20, 20);
  ellipse(198, 477, 20, 20);

  // flower middle
  fill(255, 128, 0);
  ellipse(188, 467, 22, 22);
}// --------- end of cactus1 ---------


void cactus2(int x, int y) { // --------- start of cactus2 ---------
  pushMatrix();
  translate(x, y);

  //flowers
  fill(#E09695);
  stroke(#E09695);
  ellipse(150, 558, 15, 15);
  ellipse(165, 558, 15, 15);
  ellipse(180, 558, 15, 15);

  //cactus2
  fill(#63B27A);
  stroke(#63B27A);
  ellipse(165, 610, 100, 100);

  // pot
  fill(#ad5049);
  stroke(#ad5049);
  triangle(115, 635, 210, 635, 165, 800);
  rect(100, 615, 125, 22);

  // mouth
  fill(#63B27A);
  stroke(#000000);
  ellipse(162, 590, 15, 15);
  stroke(#63B27A);
  strokeWeight(2);
  rect(150, 570, 30, 20);

  // eyes
  fill(#000000);
  ellipse(144, 590, 9, 9); // left 
  ellipse(180, 590, 9, 9); // right

  popMatrix();
}// --------- end of cactus1 ---------

void cloud1(int x, int y) {
  pushMatrix();
  translate(x, y);

  fill(#FFFFFF);
  stroke(#FFFFFF);

  ellipse(200, 100, 120, 100);
  ellipse(86, 126, 120, 100);
  ellipse(200, 176, 120, 100);
  ellipse(120, 88, 100, 100);
  ellipse(125, 176, 100, 120);
  ellipse(240, 138, 120, 100);

  popMatrix();
}

void cloud2(int x, int y) {
  pushMatrix();
  translate(x, y);

  fill(#FFFFFF);
  stroke(#FFFFFF);

  // bottom 
  ellipse(200, 100, 120, 100);
  ellipse(86, 126, 120, 100);
  ellipse(200, 176, 120, 100);
  ellipse(120, 88, 100, 100);
  ellipse(125, 176, 100, 120);
  ellipse(240, 138, 120, 100);

  popMatrix();
}

void cloud3(int x, int y) {
  pushMatrix();
  translate(x, y);

  fill(#FFFFFF);
  stroke(#FFFFFF);

  // bottom 
  ellipse(200, 100, 120, 100);
  ellipse(86, 126, 120, 100);
  ellipse(200, 176, 120, 100);
  ellipse(120, 88, 100, 100);
  ellipse(125, 176, 100, 120);
  ellipse(240, 138, 120, 100);

  popMatrix();
}


void bubble(int x, int y) { // --------- start of bubble ---------
  pushMatrix();
  translate(x, y);
  stroke(#3FA8E8);
  strokeWeight(2.5);
  fill(#91D1F7);
  ellipse(167, 505, 60, 60);

  fill(#ffffff);
  stroke(#ffffff);
  ellipse(183, 495, 4, 5);
  popMatrix();
}// --------- end of bubble ---------

void bubble2(int x, int y) { // --------- start of bubble ---------
  pushMatrix();
  translate(x, y);
  stroke(#3FA8E8);
  strokeWeight(2.4);
  fill(#91D1F7);
  ellipse(555, 585, 80, 80);

  fill(#ffffff);
  stroke(#ffffff);
  ellipse(575, 570, 7, 8);
  popMatrix();
}// --------- end of bubble ---------

void bubble3(int x, int y) { // --------- start of bubble ---------
  pushMatrix();
  translate(x, y);
  stroke(#3FA8E8);
  strokeWeight(2.5);
  fill(#91D1F7);
  ellipse(167, 505, 100, 100);

  fill(#ffffff);
  stroke(#ffffff);
  ellipse(185, 485, 6, 7);
  popMatrix();
}// --------- end of bubble ---------

void bubble4(int x, int y) { // --------- start of bubble ---------
  pushMatrix();
  translate(x, y);
  stroke(#3FA8E8);
  strokeWeight(2.5);
  fill(#91D1F7);
  ellipse(167, 505, 40, 40);

  fill(#ffffff);
  stroke(#ffffff);
  ellipse(175, 499, 4, 5);
  popMatrix();
}// --------- end of bubble ---------

void bubble5(int x, int y) { // --------- start of bubble ---------
  pushMatrix();
  translate(x, y);
  stroke(#3FA8E8);
  strokeWeight(2.5);
  fill(#91D1F7);
  ellipse(167, 505, 100, 100);

  fill(#ffffff);
  stroke(#ffffff);
  ellipse(185, 485, 6, 7);
  popMatrix();
}// --------- end of bubble ---------

void bubble6(int x, int y) { // --------- start of bubble ---------
  pushMatrix();
  translate(x, y);
  stroke(#3FA8E8);
  strokeWeight(2.5);
  fill(#91D1F7);
  ellipse(167, 505, 30, 30);

  fill(#ffffff);
  stroke(#ffffff);
  ellipse(175, 499, 4, 5);
  popMatrix();
}// --------- end of bubble ---------
